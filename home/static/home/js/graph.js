
//PIE CHART
function PIECHART(div_id,dataVal){
	var chart = AmCharts.makeChart(div_id, {
		"type": "pie",
		"theme": "light",
		"colors":["#4CAF50","#F68121", "#08B2E6" ,"#F2D70C", "#D5D5D5"],
		"dataProvider": dataVal,
		"legend": {
			"align": "center",
			"position": "right",
			// "marginRight": 0,
			"markerType": "circle",
			// "right": 0,
			"labelText": "[[title]]",
			"valueText": " [[value]] ",
			"valueWidth": 10,
			"textClickEnabled": true
		},
		"valueField": "value",
		"titleField": "country",
		"outlineAlpha": 0.3,
		"depth3D": 15,
		"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
		"angle": 30,
		"export": {
			"enabled": true
		}
	});
}

