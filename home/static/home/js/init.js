/*FORM INPUT VALIDATION JS*/
function ValidateIt(obj){
	(obj.value == '' || obj.value == null) ? $(obj).addClass('BorderRed') : $(obj).removeClass('BorderRed');
}

// METERGRAPH	
function GaugeChart(div_id,title,title_color='#2C9B78',LeftLabel,RightLabel,graph_color="#0E68AA",TotalValue,PendingValue){
	
	var chart = AmCharts.makeChart(div_id, {
		"theme": "light",
		"type": "gauge",
		"titles": [{
			"text": title,
			"size": 13,
			"color":title_color
		}],
		// "color":0E68AA
		"allLabels": [{
			"text": LeftLabel,
			"bold": true,
			"x": 40,
			"y": 180
		},
		{
			"text": RightLabel,
			"bold": true,
			"x": 420,
			"y": 180
		},
		{
			"text": "",
			"bold": true,
			"color":graph_color,
			"x": 230,
			"y": 250,
			"size":20
		}
		],

		"axes": [{
			"topTextFontSize": 20,
			"topTextYOffset": 70,
			"axisColor": "#F68121",
			"axisThickness": 1,
			"endValue": TotalValue,
			"gridInside": true,
			"inside": true,
			"radius": "50%",
			"valueInterval": TotalValue,
			"tickColor": "#fff",
			"startAngle": -90,
			"endAngle": 90,
			"bandOutlineAlpha": 0,

			"bands": [{
				"labelText": "",
				"color": "#ffffff",
				"endValue":TotalValue,
				"innerRadius": "105%",
				"radius": "170%",
				"gradientRatio": [0.5, 0, -0.5],
				"startValue": TotalValue-PendingValue,
				"balloonText":"<b>Total Task</b> :"+TotalValue+ "<br><b>Pending</b> : "+ PendingValue
			}, 
			{
				"color": "#F68121",
				"endValue": TotalValue-PendingValue,
				"innerRadius": "105%",
				"radius": "170%",
				"gradientRatio": [0, 0, 0],
				"startValue": 0,
				"balloonText": "<b>Total Task</b> :"+TotalValue+ "<br><b>Task Started</b> : "+TotalValue-PendingValue
			}]
		}],
		"arrows": [{
			"alpha": 11,
			"innerRadius": "35%",
			"nailRadius": 0,
			"radius": "170%",
			"value":TotalValue-PendingValue,
		}]
	});
}

