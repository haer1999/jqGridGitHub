<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My First Grid</title>
 
<link rel="stylesheet" type="text/css" media="screen" href="css/ui-lightness/jquery-ui.css" />
<link rel="stylesheet" type="text/css" media="screen" href="css/ui.jqgrid.css" />
 
<style>
html, body {
    margin: 0;
    padding: 0;
    font-size: 75%;
}
</style> 
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/i18n/grid.locale-en.js" type="text/javascript"></script>
<script src="js/jquery.jqGrid.min.js" type="text/javascript"></script>
 
 
<script type="text/javascript">
$(document).ready(
   function() {
   jQuery("#list4").jqGrid({
    datatype: "local",
    height: 250,
    colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
    colModel:[
    {name:'id',index:'id', width:60, sorttype:"int"},
    {name:'invdate',index:'invdate', width:90, sorttype:"date"},
    {name:'name',index:'name', width:100},
    {name:'amount',index:'amount', width:80, align:"right",sorttype:"float"},
    {name:'tax',index:'tax', width:80, align:"right",sorttype:"float"},
    {name:'total',index:'total', width:80,align:"right",sorttype:"float"},
    {name:'note',index:'note', width:150, sortable:false}
    ],
    multiselect: true,
    caption: "Manipulating Array Data"
  });
var mydata = [
{id:"1",invdate:"2007-10-01",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
{id:"2",invdate:"2007-10-02",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
{id:"3",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
{id:"4",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
{id:"5",invdate:"2007-10-05",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
{id:"6",invdate:"2007-09-06",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
{id:"7",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
{id:"8",invdate:"2007-10-03",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
{id:"9",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"}
];
for(var i=0;i<=mydata.length;i++)
jQuery("#list4").jqGrid('addRowData',i+1,mydata[i]);
});
</script>
</head>
<body>
<table id="list4"></table>
</body>
</html>