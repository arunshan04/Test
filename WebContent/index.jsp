<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="description" content="Bootstrap Admin App + Ruby on Rails">
   <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
   <title>GDLM BI/DWH Dashboard</title>
   <!-- =============== VENDOR STYLES ===============-->
   <link rel="stylesheet" media="screen" href="assets/base.css" />
   <!-- =============== VIEW VENDOR STYLES ===============-->
   <link rel="stylesheet" media="screen" href="assets/dashboard.css" />
   <!-- =============== APP STYLES ===============-->
   <link rel="stylesheet" media="all" href="assets/application.css" id="maincss" />
   <meta name="csrf-param" content="authenticity_token" />
   
           <script type="text/ecmascript" src="js/jquery.min.js"></script>
        <!-- This is the Javascript file of jqGrid -->
        <script type="text/ecmascript" src="js/trirand/jquery.jqGrid.min.js"></script>
        <script type="text/ecmascript" src="js/trirand/src/jquery.jqGrid.js"></script>
        
        <!-- This is the localization file of the grid controlling messages, labels, etc.
    <!-- We support more than 40 localizations -->
        <script type="text/ecmascript" src="js/trirand/i18n/grid.locale-en.js"></script>
        <!-- The link to the CSS that the grid needs -->
        <link rel="stylesheet" type="text/css" media="screen" href="css/trirand/ui.jqgrid-bootstrap.css" />
        	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> 
        
        <script src="https://cdn.jsdelivr.net/npm/alasql@0.4"></script>
        
        <meta charset="utf-8" />
        <title>MY Dashboard</title>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
		$.jgrid.defaults.width = 780;
		$.jgrid.defaults.responsive = false;
		$.jgrid.defaults.styleUI = 'Bootstrap';
        </script>
        		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script type="text/ecmascript" src="js/bootstrap-datepicker.js"></script> 
    <script type="text/ecmascript" src="js/bootstrap3-typeahead.js"></script> 
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap-datepicker.css" />

    <meta charset="utf-8" />
   
</head>

<body>
   <div class="wrapper">

      <aside class="aside">
         <!-- START Sidebar (left)-->
<div class="aside-inner">
   <nav class="sidebar" data-sidebar-anyclick-close="">
      <!-- START sidebar nav-->
      <ul class="nav">
         <!-- Iterates over all sidebar items-->
         <li class="nav-heading">
            <span>Main Navigation</span>
         </li>
         <li class="active">
            <a href="#dashboard" title="Dashboard" data-toggle="collapse">
               <div class="label label-info pull-right">3</div>
               <em class="icon-speedometer"></em>
               <span data-localize="sidebar.nav.DASHBOARD">Dashboard</span>
            </a>
            <ul id="dashboard" class="nav sidebar-subnav collapse">
               <li class="sidebar-subnav-header">Dashboard</li>
               <li class="active">
                  <a href="/dashboard/dashboard_v1" title="Dashboard v1">
                     <span>Dashboard v1</span>
                  </a>
               </li>
               <li class="">
                  <a href="/dashboard/dashboard_v2" title="Dashboard v2">
                     <span>Dashboard v2</span>
                  </a>
               </li>
               <li class="">
                  <a href="/dashboard/dashboard_v3" title="Dashboard v3">
                     <span>Dashboard v3</span>
                  </a>
               </li>
            </ul>
         </li>
         <li class="">
            <a href="/widgets" title="Widgets">
               <div class="label label-success pull-right">30</div>
               <em class="icon-grid"></em>
               <span data-localize="sidebar.nav.WIDGETS">Widgets</span>
            </a>
         </li>
      </ul>
      <!-- END sidebar nav-->
   </nav>
</div>
<!-- END Sidebar (left)-->
      </aside>
      <!-- offsidebar-->
      <aside class="offsidebar hide">
         <!-- START Off Sidebar (right)-->
<!-- END Off Sidebar (right)-->
      </aside>
      <!-- Main section-->
      <section>
         <!-- Page content-->
         <div class="content-wrapper">
            <div class="content-heading">
   GDLM BI/DWH UAT Batch Dashboard
   <small data-localize="dashboard.WELCOME"></small>
</div>

<div class="row">
   <!-- START dashboard main content-->
   <div class="col-lg-11" >
      <!-- START chart-->
      <div class="row">
         <div class="jqgrid-responsive mb-lg">
			<table id="list1"></table>
			<div id="pager1"></div>
         </div>
      </div>
      <!-- END chart-->
   </div>
   <!-- END dashboard main content-->
</div>

<!-- START widgets box-->
<div class="row">
   <div class="col-lg-3 col-sm-6">
      <!-- START widget-->
         <div class="row row-table">
               <div id="piechartDri" style="width: 400; height: 250px; "></div>
      </div>
   </div>
      <div class="col-lg-3 col-sm-6">
      <!-- START widget-->
         <div class="row row-table">
               <div id="piechartOrp" style="width: 400; height: 250px; "></div>
      </div>
   </div>
      <div class="col-lg-3 col-sm-6">
      <!-- START widget-->
         <div class="row row-table">
               <div id="piechartBank" style="width: 400; height: 250px; "></div>
      </div>
   </div>
      <div class="col-lg-3 col-sm-6">
      <!-- START widget-->
         <div class="row row-table">
               <div id="piechartCards" style="width: 400; height: 250px; "></div>
            </div>
   </div>
</div>
<!-- END widgets box-->

</br>


			<table id="list1"></table>
			<div id="pager1"></div>
			
<div class="row">
   <!-- START dashboard main content-->
   <div class="col-lg-11" >
      <!-- START chart-->
      <div class="row">
         <div class="jqgrid-responsive mb-lg">

         </div>
      </div>
      <!-- END chart-->
   </div>
   <!-- END dashboard main content-->
</div>

<div class="row">
         <div class="col-lg-6">
            <!-- START widget-->
            <div class="panel widget">
               <div class="panel-body">
                  <div class="clearfix">
                     <h3 class="pull-left text-muted mt0">DRI Loading </h3>
                  </div>
					<table id="dri" float:left;width:50%;></table><div id="dripager"></div>

               </div>
            </div>
            <!-- END widget-->
         </div>
         <div class="col-lg-6">
            <!-- START widget-->
            <div class="panel widget">
               <div class="panel-body">
                  <div class="clearfix">
                     <h3 class="pull-left text-muted mt0">ORP Loading </h3>
                  </div>
					<table id="orp" float:left;width:50%;></table><div id="orppager"></div>

               </div>
            </div>
            <!-- END widget-->
         </div>
</div>

<div class="row">
         <div class="col-lg-6">
            <!-- START widget-->
            <div class="panel widget">
               <div class="panel-body">
                  <div class="clearfix">
                     <h3 class="pull-left text-muted mt0">BANK Loading </h3>
                  </div>
					<table id="bank" float:left;width:50%;></table><div id="bankpager"></div>

               </div>
            </div>
            <!-- END widget-->
         </div>
         <div class="col-lg-6">
            <!-- START widget-->
            <div class="panel widget">
               <div class="panel-body">
                  <div class="clearfix">
                     <h3 class="pull-left text-muted mt0">CARDS Loading </h3>
                  </div>
					<table id="cards" float:left;width:50%;></table><div id="cardspager"></div>

               </div>
            </div>
            <!-- END widget-->
         </div>
</div>

         </div>
      </section>
      <!-- Page footer-->
      <footer>
         <span>&copy; 2017 - Angle</span>
      </footer>
   </div>

        <script type="text/javascript">
        
	    drawCharts(100,0,0,'DRI Summary Grid','piechartDri');
	    drawCharts(100,0,0,'ORP Summary Grid','piechartOrp');
	    drawCharts(100,0,0,'BANK Summary Grid','piechartBank');
	    drawCharts(100,0,0,'CARDS Summary Grid','piechartCards');
	    
	    
            var country_code = function(countryname) {
                switch (countryname) {
                    case 'AU':return '036';case 'CN':return '156';case 'HK':return '344';case 'MA':return '446';case 'MY':return '458';case 'PH':return '680';case 'SG':return '702';case 'TH':return '764';case 'VN':return '704';default:return '000';
                }
            }
            var batch_type = function(batchtype) {
                if (batchtype.includes("M")) {
                    return 'M';
                } else {
                    return 'D';
                }
            }
            var options = {includeLabels: true,includeGroupHeader: true,includeFooter: true,fileName: "jqGridExport.xlsx",mimetype: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",maxlength: 40,onBeforeExport: null,replaceStr: null}
            var gradientNumberFormat = function(cellvalue) {
                var cvalue = cellvalue.split("|"); 
                if (parseInt(cvalue[0]) == 100) {
                    return '<div class="cellDiv"><div class="gradient2" style="width:' + succ + '%;"></div><div class="cellTextRight" >100 % </div></div>';
                }
                var TotalJobs = parseInt(cvalue[0]) + parseInt(cvalue[1]) + parseInt(cvalue[2]) + parseInt(cvalue[3]);
                var succ = Math.round((parseInt(cvalue[0]) / TotalJobs) * 100);var Fail = Math.round((parseInt(cvalue[1]) / TotalJobs) * 100);var runn = Math.round((parseInt(cvalue[2]) / TotalJobs) * 100);var pend = Math.round((parseInt(cvalue[3]) / TotalJobs) * 100);
                return '<div class="cellDiv"><div class="gradient2" style="width:' + succ + '%;"></div><div class="cellTextRight" >' + succ + '% </div></div>';};
                
            jQuery().ready(function() {
                $("#list1").jqGrid({
                    url: "getdata?table=batchmon1",datatype: "json",mtype: 'POST',
                    colNames: ['Region', 'Batch_date', 'Country', 'Cycle_no', 'Batch type', 'BizDate', 'Progress'],
                    colModel: [{name: 'REGION',index: 'REGION',width: 100,align: 'center'},
                    	{name: 'BATCH_DATE',index: 'BATCH_DATE',width: 100,editable: false,align: 'center',sortable: true,sorttype: 'text'},
                    	{name: 'COUNTRY',index: 'COUNTRY',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                    	{name: 'CYCLE_NO',index: 'CYCLE_NO',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                    	{name: 'BATCH_TYPE',index: 'Batch_type',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                    	{name: 'BIZDATE',index: 'BizDate',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                    	{name: 'PROGRESS',index: 'PROGRESS',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text',formatter: function(cellvalue) 
                    	{    return gradientNumberFormat(cellvalue);}}
                    ],
                    pager: jQuery('#pager1'),
                    rownumbers: true, // show row numbers
                    rownumWidth: 25, // the width of the row numbers columns
                    viewrecords: !0,
                    autowidth: !0,
                    shrinkToFit: !0,
                    height: 240,
                    rowNum: 10,
                    rowList: [10, 20, 30],
                    loadonce: !0,
                    hidegrid: !0,
                    caption: 'DWH/BI Batch Status',
                    jsonReader: {
                        repeatitems: false
                    },
                    gridComplete: function () {
                        var idarray = jQuery('#list1').jqGrid('getDataIDs');
                      if (idarray.length > 0) {
                      var firstid = jQuery('#list1').jqGrid('getDataIDs')[0];
                              $("#list1").setSelection(firstid);    
                          }
                  },
                    onSelectRow: function(ids) {
                        if (ids != null) {
                            var selRowArr = $("#list1").jqGrid('getGridParam', 'selrow');
                            jQuery("#dri").jqGrid("clearGridData");
                            jQuery("#orp").jqGrid("clearGridData");
                            jQuery("#bank").jqGrid("clearGridData");
                            jQuery("#cards").jqGrid("clearGridData");
                            query = "select a.module,a.s_seg_cde,v_mis_dte_exp,b.v_pgm_cde,d_prcs_date,f_status,d_start_time,d_end_time from afw_applicability_master a left join (select * from pert_master_status where v_mis_dte_exp='"+$('#list1').jqGrid('getCell', selRowArr, 'BIZDATE')+"' and s_cntry_cde="+country_code($('#list1').jqGrid('getCell', selRowArr, 'COUNTRY'))+"   ) b  on a.s_cntry_cde=b.s_cntry_cde and a.s_seg_cde=b.s_seg_cde and a.v_pgm_cde=b.v_pgm_cde  where a.s_cntry_cde="+country_code($('#list1').jqGrid('getCell', selRowArr, 'COUNTRY'))+"  and a.s_applicability in ('B','" + batch_type($('#list1').jqGrid('getCell', selRowArr, 'BATCH_TYPE')) +"') and a.module not in('BANK_ECR','DRI_CP','BANK_JFP','DRI_JFP','DRI_COPS','BANK_COPS','ORP_COPS','BANK_Citi Planner') order by 1"
                             url="getdata?query=" + query;
                            
                            $.get(url, function(Input, textStatus) {
                            	summarizeData(Input);
                            }, "html");
                            
                        }
                    }
                });
                jQuery("#list1").jqGrid('navGrid', '#pager1', {
                    refresh: true,
                    edit: false,
                    add: false,
                    del: false,
                    search: true
                });
                $("#list1").setSelection(1);
                
            });
         
            var summarizeData=function(gridData){
            	//var allRowsInGrid = $('#tableLoadList').getGridParam('data');
            	//data=JSON.stringify(allRowsInGrid);
            	gridData=JSON.parse(gridData).rows;
            	prev_m="";prev_b="";
            	prev_start="";prev_end="";
            	success=0;failiure=0;pending=0;
            	DRI= [];BANK=[];CARDS=[];D=[];OTHERS=[];ORP=[];
            	DRI_P=[];dri_total=0;dri_failiure=0;dri_success=0;dri_pending=0;
            		if(gridData)
            		{
            			for (var i=0;i<gridData.length;i++){
            				var module=gridData[i]['MODULE'];
            				var status=gridData[i]['F_STATUS'];
            				var module=module.split("_");
            				var start=gridData[i]['D_START_TIME'];
            				var end=gridData[i]['D_START_TIME'];
            				
        					
            				if ((((module[1]!=[prev_m]  ) && (prev_m != "")) || ( (module[0]!=prev_b) && (prev_b !="")))){
            					switch (prev_b){
            					case 'DRI':
            						DRI.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});
            						break;
            					case 'D':D.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
            					case 'CARDS':CARDS.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
            					case 'BANK':BANK.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
            					case 'ORP':ORP.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
            					default:OTHERS.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
            					};
            					
            					success=0;failiure=0;pending=0;start="";end="";prev_start="";prev_end="";
            				}
            				
            				switch (status){
            					case 'S': success+=1;break;
            					case 'F': failiure+=1;break;
            					default: pending+=1;break;
            				};
            				
            				if ((start < prev_start) || (prev_start=="")){
            					prev_start=start;
            				};
            				
            				if ((end < prev_end) || (prev_end=="")){
            					prev_end=end;
            				}
            				
            				prev_m=module[1];
            				prev_b=module[0];
            			}
            			
            			if (prev_b!=""){
        					switch (prev_b){
        					case 'DRI':DRI.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
        					case 'D':D.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
        					case 'CARDS':CARDS.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
        					case 'BANK':BANK.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
        					case 'ORP':ORP.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
        					default:OTHERS.push({ "MODULE": prev_m, "Success": success,"Failiure":failiure,"Pending":pending,"Start":start,"End":end});break;
        					};
        				

            			}
            			

            			
            		}
            		
    				var dri_data = {"page": "1","total":Math.ceil(DRI.length/10),"records":DRI.length ,"rows": DRI};
				    var orp_data = {"page": "1","total":Math.ceil(ORP.length/10),"records":DRI.length ,"rows": ORP};
				    var bank_data = {"page": "1","total":Math.ceil(BANK.length/10),"records":BANK.length ,"rows": BANK};
				    var cards_data = {"page": "1","total":Math.ceil(CARDS.length/10),"records":CARDS.length ,"rows": CARDS};
				    
				    
				    var dri_percent = alasql('SELECT  sum(Success) AS Success, sum(Pending) as Pending,sum(Failiure) as Failiure FROM ?',[DRI]);
				    var orp_percent = alasql('SELECT  sum(Success) AS Success, sum(Pending) as Pending,sum(Failiure) as Failiure FROM ?',[ORP]);
				    var bank_percent = alasql('SELECT  sum(Success) AS Success, sum(Pending) as Pending,sum(Failiure) as Failiure FROM ?',[BANK]);
				    var cards_percent = alasql('SELECT  sum(Success) AS Success, sum(Pending) as Pending,sum(Failiure) as Failiure FROM ?',[CARDS]);

				    drawCharts(dri_percent[0]["Success"],dri_percent[0]["Failiure"],dri_percent[0]["Pending"],'DRI Summary Grid','piechartDri');
				    drawCharts(orp_percent[0]["Success"],orp_percent[0]["Failiure"],orp_percent[0]["Pending"],'ORP Summary Grid','piechartOrp');
				    drawCharts(bank_percent[0]["Success"],bank_percent[0]["Failiure"],bank_percent[0]["Pending"],'BANK Summary Grid','piechartBank');
				    drawCharts(cards_percent[0]["Success"],cards_percent[0]["Failiure"],cards_percent[0]["Pending"],'CARDS Summary Grid','piechartCards');


				    
					CreateJQGrid(dri_data,orp_data,bank_data,cards_data);
					$('#dri').setGridParam({ datastr: dri_data, datatype:'jsonstring', rowNum: dri_data.length }).trigger('reloadGrid');
					$('#orp').setGridParam({ datastr: dri_data, datatype:'jsonstring', rowNum: dri_data.length }).trigger('reloadGrid');
					$('#bank').setGridParam({ datastr: dri_data, datatype:'jsonstring', rowNum: dri_data.length }).trigger('reloadGrid');
					$('#cards').setGridParam({ datastr: dri_data, datatype:'jsonstring', rowNum: dri_data.length }).trigger('reloadGrid');



					

            		
            	};
            
            	function CreateJQGrid(dridata,orpdata,bankdata,cardsdata){
            		            		
                    $("#dri").jqGrid({
                        datatype: "jsonstring",
                        datastr:dridata,
                        colNames: ['Module', 'Failiure', 'Pending', 'Success','Start Time','End Time','Status'],
                        colModel: [{name: 'MODULE',index: 'MODULE',width: 100,align: 'center'},
                            {name: 'Failiure',index: 'Failiure',width: 100,editable: false,align: 'center',sortable: true,sorttype: 'text',summaryTpl: "{0}",summaryType: "sum"},
                            {name: 'Pending',index: 'Pending',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Success',index: 'Success',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Start',index: 'Start',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'End',index: 'End',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Success',index: 'Success',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'}],
                        pager: jQuery('#dripager'),
                        rowNum: 15,
                        height:'auto',
                        rowList: [10, 20, 30],
                        viewrecords: true,
                        sortname: 'MODULE',
                        sortorder: 'desc',
                        rownumbers: true, // show row numbers
                        rownumWidth: 25, // the width of the row numbers columns
                        multiselect: false,
                        multiboxonly: false
                    }).jqGrid('navGrid', '#dripager', {refresh: true,edit: false,add: false,del: false,search: true});
                    
                    
                    $("#orp").jqGrid({
                        datatype: "jsonstring",
                        datastr:orpdata,
                        colNames: ['Module', 'Failiure', 'Pending', 'Success','Start Time','End Time','Status'],
                        colModel: [{name: 'MODULE',index: 'MODULE',width: 100,align: 'center'},
                            {name: 'Failiure',index: 'Failiure',width: 100,editable: false,align: 'center',sortable: true,sorttype: 'text'},
                            {name: 'Pending',index: 'Pending',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Success',index: 'Success',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Start',index: 'Start',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'End',index: 'End',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Success',index: 'Success',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'}],
                        pager: jQuery('#orppager'),
                        loadonce: true,
                        rowNum: 10,
                        height: '255',
                        rowList: [10, 20, 30],
                        sortname: 'MODULE',
                        sortorder: 'desc',
                        caption:'ORP Grid Summary',
                        viewrecords: true,
                        gridview: true,
                        rownumbers: true, // show row numbers
                        rownumWidth: 25, // the width of the row numbers columns
                        sortable: true
                    }).jqGrid('navGrid', '#orppager', {refresh: true,edit: false,add: false,del: false,search: true});
                    
                    
                    $("#bank").jqGrid({
                        datatype: "jsonstring",
                        datastr:bankdata,
                        colNames: ['Module', 'Failiure', 'Pending', 'Success','Start Time','End Time','Status'],
                        colModel: [{name: 'MODULE',index: 'MODULE',width: 100,align: 'center'},
                            {name: 'Failiure',index: 'Failiure',width: 100,editable: false,align: 'center',sortable: true,sorttype: 'text'},
                            {name: 'Pending',index: 'Pending',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Success',index: 'Success',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Start',index: 'Start',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'End',index: 'End',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Success',index: 'Success',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'}],
                        pager: jQuery('#bankpager'),
                        loadonce: true,
                        rowNum: 13,
                        rowList: [10, 20, 30],
                        sortname: 'MODULE',
                        sortorder: 'desc',
                        caption:'Banks Grid Summary',
                        viewrecords: true,
                        gridview: true,
                        rownumbers: true, // show row numbers
                        rownumWidth: 25, // the width of the row numbers columns
                        sortable: true
                    }).jqGrid('navGrid', '#bankpager', {refresh: true,edit: false,add: false,del: false,search: true});
                    
                    
                    $("#cards").jqGrid({
                        datatype: "jsonstring",
                        datastr:cardsdata,
                        colNames: ['Module', 'Failiure', 'Pending', 'Success','Start Time','End Time','Status'],
                        colModel: [{name: 'MODULE',index: 'MODULE',width: 100,align: 'center'},
                            {name: 'Failiure',index: 'Failiure',width: 100,editable: false,align: 'center',sortable: true,sorttype: 'text'},
                            {name: 'Pending',index: 'Pending',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Success',index: 'Success',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Start',index: 'Start',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'End',index: 'End',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'},
                            {name: 'Success',index: 'Success',width: 100,editable: false,sortable: true,align: 'center',sorttype: 'text'}],
                        pager: jQuery('#cardspager'),
                        loadonce: true,
                        rowNum: 10,
                        height:'auto',
                        rowList: [10, 20, 30],
                        sortname: 'MODULE',
                        sortorder: 'desc',
                        caption:'Cards Grid Summary',
                        viewrecords: true,
                        gridview: true,
                        rownumbers: true, // show row numbers
                        rownumWidth: 25, // the width of the row numbers columns
                        sortable: true
                    }).jqGrid('navGrid', '#cardspager', {refresh: true,edit: false,add: false,del: false,search: true});
            		
            	};
            	
            	function drawCharts(completed,failiure,pending,myTitle,elementId){
            	      google.charts.load('current', {'packages':['corechart']});
            	      google.charts.setOnLoadCallback(drawChart);
            	      function drawChart() {
            	        var data = google.visualization.arrayToDataTable([
            	          ['Progress ', 'Completion %'],
            	          ['Completed',     completed],
            	          ['Failiure',      failiure],
            	          ['Pending',  pending]
            	        ]);
            	        var options = {title: myTitle};
            	        var chart = new google.visualization.PieChart(document.getElementById(elementId));
            	        chart.draw(data, options);
            	      }
            	}
            	
            	
        </script>
    

</body>

</html>