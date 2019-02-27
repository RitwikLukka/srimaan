<?php 
	
	require_once "..\config\init_functions.php";
	$FYID	= ($_SESSION['FY_ID'] == '(1,2)') ? 'financial_yr_id in (1,2)' : "financial_yr_id ='".$_SESSION['FY_ID']."'";
	
	$SELECTED_RDU	   = ($_SESSION['SELECTED_RDU'] != '') ? $_SESSION['SELECTED_RDU'] : FALSE;	
	$SELECTED_DU	   = ($_SESSION['SELECTED_DU'] != '') ? $_SESSION['SELECTED_DU'] : FALSE;	 
	$SELECTED_PROJECT  = ($_SESSION['SELECTED_PROJECT'] != '') ? $_SESSION['SELECTED_PROJECT'] : FALSE;
	

	
	// CHECK MULTI PRIVILEDGE IN LOGIN
	if (isset($_POST['func']) && $_POST['func'] == 'checkprivilege') {
		$email 			 = $fun->GetEmail($_POST['username']);
		$results		 = $DB->SELECTROWS(EMPLOYEE,array('sap_id'),"WHERE email='".$email."'",1);
		
		if(count($results) >= 1){
			$columns		 = array('a.sap_id', 'a.emp_name','b.role_id','c.role_name');
			$condition		 = "WHERE a.email='".$email."' AND  a.sap_id = b.sap_id AND b.role_id = c.role_id GROUP BY b.role_id";
			$emp_result 	 = $DB->SELECTROWS("emp_master a,mapped_details b,role_master c", $columns, $condition, 1);
			
			if(count($emp_result) > 1){
				echo '<select class="form-control input-sm" required onchange="checkAccess(this.value,'.$emp_result[0]['sap_id'].');" id="selectrole" name="selectrole">
						<option value="" selected hidden>Select ROLE</option>';
				foreach($emp_result as $access){echo '<option value="'.$access['role_id'].'">'.$access['role_name'].'</option>';}
				echo '</select><br>'; 
			}else{
				echo ($emp_result[0]['role_id'] != '' && $emp_result[0]['role_id'] != null) ? '<input hidden type="text" name="selectrole" id="selectrole" value="'.$emp_result[0]['role_id'].'"/>' : '';
				$fun->GetROLE($emp_result[0]['role_id'],$emp_result[0]['sap_id'],'finalmap');
			}
		}else{
			echo '<em class="small_emtag_r"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;Username Does not Exists<br></em>';
		}
	}
	
	// CHECK MULTI ACCESS IN LOGIN
	if (isset($_POST['func']) && $_POST['func'] == 'checkaccess') {
		$fun->GetROLE($_POST['role_id'],$_POST['sap_id'],'finalmap');
	}
	
	//POST LOGIN DU/PROJECT SEARCH
	if(isset($_POST['ListName'])){
		$role_id      = $DB->Escape($_POST['role_id']);
		$role_data_id = $DB->Escape($_POST['role_data_id']);
		$result 	  = $fun->SearchALL($role_id,$role_data_id);
		//RDU/DU/PROJECT SEARCH
		if($role_id == '4'){
			echo '<option value="" hidden>PROJECT</option>';
			foreach($result as $row){
				echo '<option value="'.$row['proj_id'].'">'.$row['proj_name'].'</option>';
			}
		}else{
			echo '<option value="" hidden>DU</option>';
			foreach($result as $row){
				echo '<option value="'.$row['du_id'].'">'.$row['du_name'].'</option>';
			}
		}			
	}
	
	//POST VERTICAL PROJECT SEARCH
	if(isset($_POST['vertical_id'])){
		$vertical_id      = $DB->Escape($_POST['vertical_id']);
		
		//RDU/DU/PROJECT SEARCH
		$result = $DB->SELECTROWS('proj_master', array('proj_id','proj_name'), "where vertical_id = $vertical_id", 1);
		
			echo '<option value="" hidden>PROJECT</option>';
			foreach($result as $row){
				echo '<option value="'.$row['proj_id'].'">'.$row['proj_name'].'</option>';
			}
	}
	
	
	//DELETE TASK
	if(isset($_POST['DeleteDeckID'])){
		$deckID 	= $DB->Escape($_POST['DeleteDeckID']);
		$isExists 	= $DB->SELECTROWS('deck_details',array('deck_id'),"WHERE deck_id = '".$deckID."'",1);
		if(count($isExists) > '0'){
			$column	   = array('active'=>'0');
			$condition = "WHERE deck_id = '".$deckID."'";
			if($DB->UPDATEROW('deck_details',$column,$condition)){
				$fun->LogData($_SESSION['sap_id'],$_SESSION['name'],'prabha');
				echo TRUE;
			}else{
				$fun->LogData($_SESSION['sap_id'],$_SESSION['name'],'Task Delete Failed with deckid '.$deckID.' for '.$fun->GetName('2',$_SESSION['proj_id'])['proj_name'].' account for '.$_SESSION['FY'].'');
				echo FALSE;
			}
		}else{
			echo FALSE;
		}
	}
	
//projectsearch
if (isset($_POST['func']) && $_POST['func'] == 'projectsearch') {
	
	$column    = array('proj_id', 'proj_name');
	$condition = "WHERE active='1'";
	$res = $DB->SELECTROWS(proj_master, $column, $condition, 1);

	foreach($res as $row){
		$json[] = $row['proj_name'];
	}
	echo json_encode($json);
}


//sorting NORAM WISE ACCOUNT BAR Chart
if(isset($_POST['query'])){
	($_POST['query'] == 'asc' ? $sort="ASC" : $sort="DESC");
	$projids = $_POST['projids'];
	if($_SESSION['role_id']=='8' && !$SELECTED_PROJECT && !$SELECTED_DU && !$SELECTED_RDU){
	$column			= array(
							"CONCAT(c.rdu_name,'(',round(sum(a.baselineftenumbers)),')') as rduName",
							"round(sum(a.AutomationAchieved)) as automation_lever",
							"round(sum(a.LeanAchieved)) as lean_lever",
							"round(sum(a.ProductivityAchieved)) as prod_lever"
						);
	$condition		= "WHERE a.proj_id = b.proj_id AND b.rdu_id = c.rdu_id AND b.active='1' AND a.$FYID GROUP by b.rdu_id Order by automation_lever $sort";
	$result_lever		= $DB->SELECTROWS('	hc_dump_test a,proj_master b,rdu_master c', $column, $condition, 1);
}else{
	
	$column			= array(
							"CONCAT(a.account,'(',round(sum(a.baselineftenumbers)),')') as rduName",
							"round(sum(a.AutomationAchieved)) as automation_lever",
							"round(sum(a.LeanAchieved)) as lean_lever",
							"round(sum(a.ProductivityAchieved)) as prod_lever"
						);
	$condition		= "WHERE a.proj_id = b.proj_id AND b.rdu_id = c.rdu_id AND b.active='1'  AND a.$FYID AND a.proj_id in ($projids) group by a.proj_id Order by automation_lever $sort ";
	
	$result_lever	= $DB->SELECTROWS('hc_dump_test a,proj_master b,rdu_master c', $column, $condition, 1);
	
}
	echo json_encode($result_lever);
//echo $result_lever;
// exit;
}


if(isset($_POST['query_3'])){
	($_POST['query_3'] == 'asc' ? $sort="ASC" : $sort="DESC");

	$column				= array('rdu_id','rdu_name');
	$condition			= "ORDER BY rdu_id ASC";
	$RDU_list			= $DB->SELECTROWS('rdu_master',$column,$condition,1);
	$noramwise_projs 	= array();
	
	foreach($RDU_list as $each_RDU){ 
		$column			= array("CONCAT(a.proj_name,' (',round(sum(b.workload_delta)),'%)') as Project",
								"round(sum(case when b.status_id = '1' then b.workload_delta Else 0 End)) as Dev",
								"round(sum(case when b.status_id = '5' then b.workload_delta Else 0 End)) as Prod",
								"round(sum(case when b.status_id = '2' then b.workload_delta Else 0 End)) as Test",
								"round(sum(case when b.status_id = '3' then b.workload_delta Else 0 End) + sum(case when b.status_id = '4' then b.workload_delta Else 0 End)) as ProductionReady",
								"round(sum(case when b.status_id = '0' then b.workload_delta Else 0 End)) as Pending");
		$condition		= "WHERE a.active='1' and b.active='1' and b.$FYID AND rdu_id = ".$each_RDU['rdu_id']." GROUP BY a.proj_id  ORDER BY Prod $sort";
		$eachRDU_result	= $DB->SELECTROWS('proj_master a join deck_details b on a.proj_id = b.proj_id ',$column,$condition,1);
		$noramwise_projs['noram'.$each_RDU['rdu_id'].''] = $eachRDU_result;
		$eachRDU_result=array();
	}
	
	//echo json_encode($noramwise_projs);
	echo json_encode($noramwise_projs);
		//echo json_encode($noramwise_projs['noram2']);
		//echo json_encode($noramwise_projs['noram3']);
		//echo json_encode($noramwise_projs['noram4']);
		//echo json_encode($noramwise_projs['noram5']);
		//echo json_encode($noramwise_projs['noram6']);
		//echo json_encode($noramwise_projs['noram7']);
		
	}
	if(isset($_POST['subscription_id'])){
		$column = array('status' => $_POST['status']);
		$condition = "WHERE subscription_id = ".$_POST['subscription_id']."";
		// echo "$column";
		if($DB->UPDATEROW('jobs_management',$column,$condition)){
			echo TRUE;
		}else{
			echo FALSE;
		}	
	} 


//SUBSCRIPTION
if(isset($_POST['subscription'])){
	$sap 		= $_POST['sapid'];
	$roleid 	= $_POST['role_id'];
	$assign		= $_POST['assigned'];
	$issub		= $_POST['yesno'];
	
	$sub_name 	= 'Noramalert';

	$column 		= array('sap_id');
	$condition 		= "WHERE sap_id='".$sap."' AND subscription_name ='".$sub_name."' ";
	$isExists 		= $DB->SELECTROWS('subscription_details',$column,$condition,1);
	// print_R($isExists);
	// echo count($isExists);
	if(count($isExists) > 0){
		$column  	= array('sap_id'=>$sap,'role_id'=>$roleid,'assigned_id'=>$assign,'subscription_name'=>$sub_name,'active'=>$issub);
		$condition 	= "WHERE sap_id ='".$sap."'";
		$result 	= $DB->UPDATEROW('subscription_details',$column,$condition,1);
		echo $result ? 'Updated Successfully' : 'Updation Failed';
	}else{
		$column  	= array('sub_id'=>null,'sap_id'=>$sap,'role_id'=>$roleid,'assigned_id'=>$assign,'subscription_name'=>$sub_name,'active'=>$issub);
		$result 	= $DB->INSERTROW('subscription_details',$column);
		echo $result ? 'Inserted Successfully' : 'Insertion Failed';
	}
}

//UPDATE FROM PMS
if(isset($_POST['updateTable'])){
	$col 		= $_POST['Col'];
	$value		= $_POST['Val'];
	$table		= $_POST['table'];
	$id 		= $_POST['ID'];
	$key 		= $_POST['Key'];
	// echo $table;
	$column 	= array($col=>$value);
	$condition  = "WHERE $key = '$id'";
	$result 	= $DB->UPDATEROW($table,$column,$condition);
	echo ($result) ? TRUE : FALSE;
}


if(isset($_POST['RDU_id'])){
	$condition = "WHERE a.rdu_id = '".$_POST['RDU_id']."' AND a.du_id = b.du_id";
	$result = $DB->SELECTROWS('proj_master a, du_master b', array('b.du_id', 'b.du_name'), $condition, 1);
	echo "<option value= '' hidden>Select DU Name</option>";
	foreach($result as $row){
		echo "<option value=".$row['du_id'].">".$row['du_name']."</option>";
	}
}

if(isset($_POST['Delid'])){
	if($DB->DELETEROW('available_mins_details',"WHERE avail_id = '".$_POST['Delid']."'")){
		echo 'Deleted successfully';
	}else{
		echo 'Problem in deleting!';
	}
}

if(isset($_POST['cid'])){
	if($DB->DELETEROW('complaince_table',"WHERE cid = '".$_POST['cid']."'")){
		echo 'Deleted successfully';
	}else{
		echo 'Problem in deleting!';
	}
}

//SURVEY UPDATION
if(isset($_POST['projtable'])){
	// $tablename = $DB->Escape($_POST['tablename']);
	// $ID		   =
	$column			= array('*');
	$condition 		= "WHERE ".$_POST['idcol']."='".$_POST['id']."'";
	$result			= $DB->SELECTROWS($_POST['table_name'],$column,$condition,1);
	// echo $condition;
	if(count($result)>0){
		$Ucolumn		= array(
						$_POST['col'] => $_POST['val']
					);
		$Ucondition 		= "WHERE ".$_POST['idcol']."='".$_POST['id']."'";
		$Fresult		= $DB->UPDATEROW($_POST['table_name'],$Ucolumn,$Ucondition);
		echo ($Fresult ? TRUE : FALSE);
	}else{
		$Icolumn		= array(
							$_POST['idcol']	=> "'".$_POST['id']."'",
							$_POST['col'] 	=> "'".$_POST['val']."'"
					);
		$Iresult		= $DB->INSERTROW($_POST['table_name'],$Icolumn);
		// print_r($Icolumn);
		echo ($Iresult ? TRUE : FALSE);
	}
}


//SURVEY UPDATION
if(isset($_POST['account_info'])){
	// $tablename = $DB->Escape($_POST['tablename']);
	// $ID		   =
	$column			= array('*');
	$condition 		= "WHERE ".$_POST['idcol']."='".$_POST['id']."'";
	$result			= $DB->SELECTROWS($_POST['table_name'],$column,$condition,1);
	// echo $condition;
	if(count($result)>0){
		$Ucolumn		= array(
						$_POST['col'] => $_POST['val'],
						'financial_yr_id'=>$_POST['FY']
					);
		$Ucondition 		= "WHERE ".$_POST['idcol']."='".$_POST['id']."'";
		$Fresult		= $DB->UPDATEROW($_POST['table_name'],$Ucolumn,$Ucondition);
		echo ($Fresult ? TRUE : FALSE);
		// print_r($Ucolumn);
	}else{
		$Icolumn		= array(
						$_POST['idcol'] => $_POST['id'],
						$_POST['col'] 	=> $_POST['val'],
						'financial_yr_id'=>$_POST['FY']
					);
		$Iresult		= $DB->INSERTROW($_POST['table_name'],$Icolumn);
		echo ($Iresult ? TRUE : FALSE);
	}
}
?>
