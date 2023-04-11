<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdn01.jotfor.ms/static/prototype.forms.js?3.3.40728" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/static/jotform.forms.js?3.3.40728" type="text/javascript"></script>
<script src="https://cdn03.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.40728" type="text/javascript"></script>
<script defer src="https://cdn01.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.40728" type="text/javascript"></script>
<script defer src="https://cdn02.jotfor.ms/js/vendor/jquery.maskedinput.min.js?v=3.3.40728" type="text/javascript"></script>
<script src="https://cdn03.jotfor.ms/js/vendor/imageinfo.js?v=3.3.40728" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/file-uploader/fileuploader.js?v=3.3.40728"></script>
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.js"></script>
<script src="https://cdn02.jotfor.ms/js/paypal.js?v=3.3.40728" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/s/umd/cd0c63f5e83/for-appointment-field.js?v=3.3.40728" type="text/javascript"></script>
<script type="text/javascript">	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.singleProduct = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
	JotForm.newPaymentUI = true;
	JotForm.clearFieldOnHide="disable";
	JotForm.submitError="jumpToFirstError";

	JotForm.init(function(){
	/*INIT-START*/
      JotForm.setPhoneMaskingValidator( 'input_11_full', '(###) ###-####' );

    JotForm.calendarMonths = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];
    JotForm.appointmentCalendarDays = ["월요일","화요일","수요일","목요일","금요일","토요일","일요일"];
    JotForm.calendarOther = "Today";
    window.initializeAppointment({"text":{"text":"Question","value":"예약"},"labelAlign":{"text":"Label Align","value":"Top","dropdown":[["Auto","Auto"],["Left","Left"],["Right","Right"],["Top","Top"]]},"required":{"text":"Required","value":"No","dropdown":[["No","No"],["Yes","Yes"]]},"description":{"text":"Hover Text","value":"","textarea":true},"slotDuration":{"text":"Slot Duration","value":"240","dropdown":[[15,"15 min"],[30,"30 min"],[45,"45 min"],[60,"60 min"],["custom","Custom min"]],"hint":"Select how long each slot will be."},"startDate":{"text":"Start Date","value":""},"endDate":{"text":"End Date","value":""},"intervals":{"text":"Intervals","value":[{"from":"09:00","to":"22:00","days":["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]}],"hint":"The hours will be applied to the selected days and repeated."},"useBlockout":{"text":"Blockout Custom Dates","value":"No","dropdown":[["No","No"],["Yes","Yes"]],"hint":"Disable certain date(s) in the calendar."},"blockoutDates":{"text":"Blockout dates","value":[{"startDate":"","endDate":""}]},"useLunchBreak":{"text":"Lunch Time","value":"No","dropdown":[["No","No"],["Yes","Yes"]],"hint":"Enable lunchtime in the calendar."},"lunchBreak":{"text":"Lunchtime hours","value":[{"from":"12:00","to":"14:00"}]},"timezone":{"text":"Timezone","value":"Asia/Seoul (GMT+09:00)"},"timeFormat":{"text":"Time Format","value":"AM/PM","dropdown":[["24 Hour","24 Hour"],["AM/PM","AM/PM"]],"icon":"images/blank.gif","iconClassName":"toolbar-time_format_24"},"months":{"value":["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],"hidden":true},"days":{"value":["월요일","화요일","수요일","목요일","금요일","토요일","일요일"],"hidden":true},"startWeekOn":{"text":"Start Week On","value":"Sunday","dropdown":[["Monday","Monday"],["Sunday","Sunday"]],"toolbar":false},"rollingDays":{"text":"Rolling Days","value":"","toolbar":false},"prevMonthButtonText":{"text":"Previous month","value":""},"nextMonthButtonText":{"text":"Next month","value":""},"prevYearButtonText":{"text":"Previous year","value":""},"nextYearButtonText":{"text":"Next year","value":""},"prevDayButtonText":{"text":"Previous day","value":""},"nextDayButtonText":{"text":"Next day","value":""},"appointmentType":{"hidden":true,"value":"single"},"autoDetectTimezone":{"hidden":true,"value":"Yes"},"dateFormat":{"hidden":true,"value":"yyyy/mm/dd"},"maxAttendee":{"hidden":true,"value":"5"},"maxEvents":{"hidden":true,"value":""},"minScheduleNotice":{"hidden":true,"value":"3"},"name":{"hidden":true,"value":"input19"},"order":{"hidden":true,"value":"6"},"qid":{"toolbar":false,"value":"input_19"},"reminderEmails":{"hidden":true,"value":{"schedule":[{"value":"2","unit":"hour"}]}},"type":{"hidden":true,"value":"control_appointment"},"useReminderEmails":{"hidden":true,"value":"No"},"id":{"toolbar":false,"value":"19"},"qname":{"toolbar":false,"value":"q19_input19"},"cdnconfig":{"CDN":"https://cdn.jotfor.ms/"},"passive":false,"formProperties":{"products":[{"hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","name":"성인 종일권","options":[{"type":"quantity","name":"Quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","defaultQuantity":"","specialPricing":false,"expanded":false}],"order":"0","period":"Monthly","pid":"1001","price":"15","recurringtimes":"No Limit","required":"","selected":"","setupfee":"","trial":"None"},{"hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","name":"성인 오후권","options":[{"type":"quantity","name":"Quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","defaultQuantity":"","specialPricing":false,"expanded":false}],"order":"1","period":"Monthly","pid":"1002","price":"10","recurringtimes":"No Limit","required":"","selected":"","setupfee":"","trial":"None"},{"description":"","disabled":"show","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[]","name":"청소년 종일권","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"Quantity","defaultQuantity":"","specialPricing":false,"specialPrices":"","expanded":false}],"order":"2","pid":"1003","price":"0","required":"0","selected":"0"},{"description":"","disabled":"show","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[]","name":"청소년 오후권","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"Quantity","defaultQuantity":"","specialPricing":false,"specialPrices":"","expanded":false}],"order":"3","pid":"1004","price":"0","required":"0","selected":"0"},{"description":"","disabled":"show","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[]","name":"아동 종일권","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"Quantity","defaultQuantity":"","specialPricing":false,"specialPrices":"","expanded":false}],"order":"4","pid":"1005","price":"0","required":"0","selected":"0"},{"description":"","disabled":"show","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[]","name":"아동 오후권","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"Quantity","defaultQuantity":"","specialPricing":false,"specialPrices":"","expanded":false}],"order":"5","pid":"1006","price":"0","required":"0","selected":"0"}],"highlightLine":"Enabled","coupons":false,"useStripeCoupons":false,"taxes":false,"comparePaymentForm":"","paymentListSettings":false,"newPaymentUIForNewCreatedForms":false,"formBackground":"#fff","newAppointment":false},"formID":230938005000441,"isPaymentForm":false,"isOpenedInPortal":false,"isCheckoutForm":false,"themeVersion":"v2"});
        setTimeout(function() {
          $('input_5').hint('ex: myname@example.com');
       }, 20);

 JotForm.calendarMonths = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];
 JotForm.calendarDays = ["일요일","월요일","화요일","수요일","목요일","금요일","토요일","일요일"];
 JotForm.calendarOther = {"today":"오늘"};
 var languageOptions = document.querySelectorAll('#langList li'); 
 for(var langIndex = 0; langIndex < languageOptions.length; langIndex++) { 
   languageOptions[langIndex].on('click', function(e) { setTimeout(function(){ JotForm.setCalendar("23", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""}); }, 0); });
 } 
 JotForm.onTranslationsFetch(function() { JotForm.setCalendar("23", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""}); });
      productID = {"0":"input_7_1001","1":"input_7_1002","2":"input_7_1003","3":"input_7_1004","4":"input_7_1005","5":"input_7_1006"};
      paymentType = "product";
      JotForm.setCurrencyFormat('USD',true, 'point');
      JotForm.totalCounter({"input_7_1001":{"price":"15","quantityField":"input_7_quantity_1001_0"},"input_7_1002":{"price":"10","quantityField":"input_7_quantity_1002_0"},"input_7_1003":{"price":"0","quantityField":"input_7_quantity_1003_0"},"input_7_1004":{"price":"0","quantityField":"input_7_quantity_1004_0"},"input_7_1005":{"price":"0","quantityField":"input_7_quantity_1005_0"},"input_7_1006":{"price":"0","quantityField":"input_7_quantity_1006_0"}});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('blur', function(){isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value)})});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('focus', function(){this.value == 0 ? this.value = '' : this.value})});
      JotForm.handleProductLightbox();
      setTimeout(function() {
          JotForm.initMultipleUploads();
      }, 2);
	/*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"clickTo","qid":"1","text":"","type":"control_head"},null,{"name":"doubleclickTo","qid":"3","text":"Saturday, March 18, 2023 at 7:00pm in the Anytown University.\nCome early to browse the silent auction.  Doors open at 6:30pm for general seating.","type":"control_text"},{"name":"fullName4","qid":"4","text":"성함","type":"control_fullname"},{"name":"email5","qid":"5","subLabel":"example@example.com","text":"E-mail","type":"control_email"},null,{"name":"myProducts7","qid":"7","text":"내 구매상품","type":"control_paypal"},null,{"name":"submit","qid":"9","text":"Submit","type":"control_button"},null,{"description":"","name":"input11","qid":"11","text":"전화번호","type":"control_phone"},null,null,null,null,null,null,null,{"description":"","name":"input19","qid":"19","text":"예약","type":"control_appointment"},null,{"description":"","name":"input21","qid":"21","subLabel":"","text":"파일 업로드","type":"control_fileupload"},null,{"description":"","name":"input23","qid":"23","text":"날짜","type":"control_datetime"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"clickTo","qid":"1","text":"","type":"control_head"},null,{"name":"doubleclickTo","qid":"3","text":"Saturday, March 18, 2023 at 7:00pm in the Anytown University.\nCome early to browse the silent auction.  Doors open at 6:30pm for general seating.","type":"control_text"},{"name":"fullName4","qid":"4","text":"성함","type":"control_fullname"},{"name":"email5","qid":"5","subLabel":"example@example.com","text":"E-mail","type":"control_email"},null,{"name":"myProducts7","qid":"7","text":"내 구매상품","type":"control_paypal"},null,{"name":"submit","qid":"9","text":"Submit","type":"control_button"},null,{"description":"","name":"input11","qid":"11","text":"전화번호","type":"control_phone"},null,null,null,null,null,null,null,{"description":"","name":"input19","qid":"19","text":"예약","type":"control_appointment"},null,{"description":"","name":"input21","qid":"21","subLabel":"","text":"파일 업로드","type":"control_fileupload"},null,{"description":"","name":"input23","qid":"23","text":"날짜","type":"control_datetime"}]);}, 20); 
	function Loading() {
		var maskHeight = Math.max($(document).height(), $(window).height());
		var maskWidth = $(window).width();

		var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#ffffff; display:none; left:0; top:0; width:100%; height:100%;'></div>";
		var loadingImg = '';

		loadingImg += " <div id='loadingImg'>";
		loadingImg += " <img src='/resources/img/icons8-ferris-wheel.gif' style='position:absolute; z-index:9500; display:block; margin:auto; top:50%; left:50%; transform:translate(-50%, -50%);'/>";
		loadingImg += "</div>";

		$('body').append(mask).append(loadingImg);

		$('#mask').css({
			'opacity' : '0.5'
		});

		$('#mask').show();
		$('#loadingImg').show();
	}

	function closeLoading() {
		$('#mask, #loadingImg').hide();
		$('#mask, #loadingImg').remove();
	}

	$(function() {

		Loading();
		setTimeout("closeLoading()", 1000);

	});
   
   </script>
<style type="text/css">@media print{.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.40728&themeRevisionID=63e6805f64383509e31513f4"/>
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/payment/payment_styles.css?3.3.40728" />
<link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_feature.css?3.3.40728" />
<form class="jotform-form" action="https://submit.jotform.com/submit/230938005000441" method="post" enctype="multipart/form-data" name="form_230938005000441" id="230938005000441" accept-charset="utf-8" autocomplete="on"><input type="hidden" name="formID" value="230938005000441" /><input type="hidden" id="JWTContainer" value="" /><input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httac htvam">
            <h1 id="header_1" class="form-header" data-component="header"></h1>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_text" id="id_3">
        <div id="cid_3" class="form-input-wide" data-layout="full">
          <div id="text_3" class="form-html" data-component="text" tabindex="0">
            <p style="text-align:left;">Saturday, March 18, 2023 at 7:00pm in the Anytown University.</p>
            <p style="text-align:left;">Come early to browse the silent auction.  Doors open at 6:30pm for general seating.</p>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_fullname" id="id_4"><label class="form-label form-label-top form-label-auto" id="label_4" for="first_4"> 성함<span class="form-required">*</span> </label>
        <div id="cid_4" class="form-input-wide jf-required" data-layout="full">
          <div data-wrapper-react="true"><span class="form-sub-label-container" style="vertical-align:top" data-input-type="first"><input type="text" id="first_4" name="q4_fullName4[first]" class="form-textbox validate[required]" data-defaultvalue="" autoComplete="section-input_4 given-name" size="10" value="" data-component="first" aria-labelledby="label_4 sublabel_4_first" required="" /><label class="form-sub-label" for="first_4" id="sublabel_4_first" style="min-height:13px" aria-hidden="false">First Name</label></span><span class="form-sub-label-container" style="vertical-align:top" data-input-type="last"><input type="text" id="last_4" name="q4_fullName4[last]" class="form-textbox validate[required]" data-defaultvalue="" autoComplete="section-input_4 family-name" size="15" value="" data-component="last" aria-labelledby="label_4 sublabel_4_last" required="" /><label class="form-sub-label" for="last_4" id="sublabel_4_last" style="min-height:13px" aria-hidden="false">Last Name</label></span></div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_phone" id="id_11"><label class="form-label form-label-top form-label-auto" id="label_11" for="input_11_full"> 전화번호<span class="form-required">*</span> </label>
        <div id="cid_11" class="form-input-wide jf-required" data-layout="half"> <span class="form-sub-label-container" style="vertical-align:top"><input type="tel" id="input_11_full" name="q11_input11[full]" data-type="mask-number" class="mask-phone-number form-textbox validate[required, Fill Mask]" data-defaultvalue="" autoComplete="section-input_11 tel-national" style="width:310px" data-masked="true" value="" placeholder="(000) 000-0000" data-component="phone" aria-labelledby="label_11 sublabel_11_masked" required="" /><label class="form-sub-label" for="input_11_full" id="sublabel_11_masked" style="min-height:13px" aria-hidden="false">유효한 전화번호를 입력하십시오.</label></span> </div>
      </li>
      <li class="form-line" data-type="control_fileupload" id="id_21"><label class="form-label form-label-top form-label-auto" id="label_21" for="input_21"> 파일 업로드 </label>
        <div id="cid_21" class="form-input-wide" data-layout="full">
          <div class="jfQuestion-fields" data-wrapper-react="true">
            <div class="jfField isFilled">
              <div class="jfUpload-wrapper">
                <div class="jfUpload-container">
                  <div class="jfUpload-text-container">
                    <div class="jfUpload-icon forDesktop"><span class="iconSvg  dhtupload ">function SvgDhtupload2(props) {
                        return /* @__PURE__ */ react.createElement("svg", dhtupload_svg_extends({
                        width: 54,
                        height: 47,
                        xmlns: "http://www.w3.org/2000/svg"
                        }, props), dhtupload_svg_path || (dhtupload_svg_path = /* @__PURE__ */ react.createElement("path", {
                        d: "M40.213 10.172c1.897.21 3.68.738 5.35 1.58a15.748 15.748 0 0 1 4.374 3.242 15.065 15.065 0 0 1 2.951 4.533c.72 1.704 1.08 3.522 1.08 5.455 0 1.827-.28 3.654-.843 5.48-.562 1.828-1.379 3.47-2.45 4.929A13.39 13.39 0 0 1 46.669 39c-1.599.948-3.452 1.458-5.56 1.528H37.26a1.62 1.62 0 0 1-1.185-.5 1.62 1.62 0 0 1-.501-1.186c0-.457.167-.852.5-1.186.334-.334.73-.5 1.186-.5h3.848c1.44 0 2.75-.37 3.926-1.108a10.851 10.851 0 0 0 3.03-2.846 13.53 13.53 0 0 0 1.95-3.9 14.23 14.23 0 0 0 .686-4.321c0-1.582-.316-3.066-.949-4.454a11.623 11.623 0 0 0-2.582-3.636 12.857 12.857 0 0 0-3.742-2.478 11.054 11.054 0 0 0-4.48-.922l-1.212-.053-.37-1.159c-.878-2.81-2.292-4.998-4.242-6.562-1.95-1.563-4.594-2.345-7.932-2.345-2.108 0-4.005.36-5.692 1.08-1.686.72-3.136 1.722-4.348 3.005-1.212 1.282-2.143 2.81-2.793 4.585-.65 1.774-.975 3.68-.975 5.718h.053l.105 1.581-1.528.264c-1.863.316-3.444 1.317-4.744 3.004-1.3 1.686-1.95 3.584-1.95 5.692 0 2.39.8 4.462 2.398 6.219 1.599 1.757 3.488 2.635 5.666 2.635h4.849c.492 0 .896.167 1.212.5.316.335.474.73.474 1.187 0 .456-.158.852-.474 1.185-.316.334-.72.501-1.212.501h-4.849a10.08 10.08 0 0 1-4.374-.975 11.673 11.673 0 0 1-3.61-2.661 13.173 13.173 0 0 1-2.478-3.9A12.073 12.073 0 0 1 0 28.301c0-2.706.755-5.148 2.266-7.326 1.511-2.178 3.444-3.636 5.798-4.374.14-2.354.658-4.542 1.554-6.562.896-2.02 2.091-3.777 3.584-5.27 1.494-1.494 3.25-2.662 5.27-3.505C20.493.422 22.733 0 25.193 0c1.898 0 3.637.237 5.218.711 1.581.475 3.004 1.151 4.269 2.03a13.518 13.518 0 0 1 3.268 3.215 18.628 18.628 0 0 1 2.266 4.216Zm-11.964 13.44 6.22 6.85c.245.247.368.537.368.87 0 .334-.123.642-.369.923l-.421.263c-.211.246-.484.343-.817.29a1.544 1.544 0 0 1-.87-.448l-3.69-4.11v16.97c0 .492-.166.896-.5 1.212-.334.316-.729.474-1.186.474-.492 0-.896-.158-1.212-.474-.316-.316-.474-.72-.474-1.212V28.25l-3.584 4.005a1.544 1.544 0 0 1-.87.448.959.959 0 0 1-.87-.29l-.42-.264c-.247-.28-.37-.588-.37-.922 0-.334.123-.624.37-.87l6.113-6.746v-.052l.421-.422a.804.804 0 0 1 .396-.29c.158-.053.307-.079.448-.079.175 0 .333.026.474.079.14.053.281.15.422.29l.421.422v.052Z",
                        fill: "none"
                        })));
                        }</span></div>
                  </div>
                  <div class="jfUpload-button-container">
                    <div class="jfUpload-button" aria-hidden="true" tabindex="0" style="display:none" data-version="v2">파일 둘러보기<div class="jfUpload-heading forDesktop">Drag and drop files here</div>
                      <div class="jfUpload-heading forMobile">Choose a file</div>
                    </div>
                  </div>
                </div>
                <div class="jfUpload-files-container">
                  <div class="validate[multipleUpload]"><input type="file" id="input_21" name="q21_input21[]" multiple="" class="form-upload-multiple" data-imagevalidate="yes" data-file-accept="pdf, doc, docx, xls, xlsx, csv, txt, rtf, html, zip, mp3, wma, mpg, flv, avi, jpg, jpeg, png, gif" data-file-maxsize="10854" data-file-minsize="0" data-file-limit="" data-component="fileupload" aria-label="파일 둘러보기" /></div>
                </div>
              </div>
              <div data-wrapper-react="true"></div>
            </div><span style="display:none" class="cancelText">Cancel</span><span style="display:none" class="ofText">of</span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_appointment" id="id_19"><label class="form-label form-label-top" id="label_19" for="input_19"> 예약 </label>
        <div id="cid_19" class="form-input-wide" data-layout="full">
          <div id="input_19" class="appointmentFieldWrapper jfQuestion-fields"><input class="appointmentFieldInput" name="q19_input19[implementation]" value="new" id="input_19implementation" /><input class="appointmentFieldInput " name="q19_input19[date]" id="input_19_date" data-timeformat="AM/PM" /><input class="appointmentFieldInput" name="q19_input19[duration]" value="240" id="input_19_duration" /><input class="appointmentFieldInput" name="q19_input19[timezone]" value="Asia/Seoul (GMT+09:00)" id="input_19_timezone" />
            <div class="appointmentField"></div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_email" id="id_5"><label class="form-label form-label-top form-label-auto" id="label_5" for="input_5"> E-mail </label>
        <div id="cid_5" class="form-input-wide" data-layout="half"> <span class="form-sub-label-container" style="vertical-align:top"><input type="email" id="input_5" name="q5_email5" class="form-textbox validate[Email]" data-defaultvalue="" style="width:310px" size="310" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_5 sublabel_input_5" /><label class="form-sub-label" for="input_5" id="sublabel_input_5" style="min-height:13px" aria-hidden="false">example@example.com</label></span> </div>
      </li>
      <li class="form-line" data-type="control_datetime" id="id_23"><label class="form-label form-label-top form-label-auto" id="label_23" for="lite_mode_23"> 날짜 </label>
        <div id="cid_23" class="form-input-wide" data-layout="half">
          <div data-wrapper-react="true">
            <div style="display:none"><span class="form-sub-label-container" style="vertical-align:top"><input type="tel" class="form-textbox validate[limitDate]" id="month_23" name="q23_input23[month]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="off" aria-labelledby="label_23 sublabel_23_month" /><span class="date-separate" aria-hidden="true"> -</span><label class="form-sub-label" for="month_23" id="sublabel_23_month" style="min-height:13px" aria-hidden="false">월</label></span><span class="form-sub-label-container" style="vertical-align:top"><input type="tel" class="form-textbox validate[limitDate]" id="day_23" name="q23_input23[day]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="off" aria-labelledby="label_23 sublabel_23_day" /><span class="date-separate" aria-hidden="true"> -</span><label class="form-sub-label" for="day_23" id="sublabel_23_day" style="min-height:13px" aria-hidden="false">일</label></span><span class="form-sub-label-container" style="vertical-align:top"><input type="tel" class="form-textbox validate[limitDate]" id="year_23" name="q23_input23[year]" size="4" data-maxlength="4" data-age="" maxLength="4" value="" autoComplete="off" aria-labelledby="label_23 sublabel_23_year" /><label class="form-sub-label" for="year_23" id="sublabel_23_year" style="min-height:13px" aria-hidden="false">년</label></span></div><span class="form-sub-label-container" style="vertical-align:top"><input type="text" class="form-textbox validate[limitDate, validateLiteDate]" id="lite_mode_23" size="12" data-maxlength="12" maxLength="12" data-age="" value="" data-format="mmddyyyy" data-seperator="-" placeholder="MM-DD-YYYY" autoComplete="off" aria-labelledby="label_23 sublabel_23_litemode" /><img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_23_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="No" data-version="v2" /><label class="form-sub-label" for="lite_mode_23" id="sublabel_23_litemode" style="min-height:13px" aria-hidden="false">날짜</label></span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_paypal" id="id_7" data-payment="true"><label class="form-label form-label-top" id="label_7" for="input_7"> 내 구매상품 </label>
        <div id="cid_7" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true" class="product-container-wrapper">
            <div class="filter-container"></div><input type="hidden" name="simple_fpc" data-payment_type="paypal" data-component="payment1" value="7" /><input type="hidden" name="payment_transaction_uuid" id="paymentTransactionId" /><input type="hidden" name="payment_total_checksum" id="payment_total_checksum" data-component="payment2" />
            <div id="image-overlay" class="overlay-content" style="display:none"><img id="current-image" /><span class="lb-prev-button">prev</span><span class="lb-next-button">next</span><span class="lb-close-button">( X )</span><span class="image-overlay-product-container">
                <ul class="form-overlay-item" pid="1001" hasicon="false" hasimages="false" iconvalue=""></ul>
                <ul class="form-overlay-item" pid="1002" hasicon="false" hasimages="false" iconvalue=""></ul>
                <ul class="form-overlay-item" pid="1003" hasicon="false" hasimages="false" iconvalue=""></ul>
                <ul class="form-overlay-item" pid="1004" hasicon="false" hasimages="false" iconvalue=""></ul>
                <ul class="form-overlay-item" pid="1005" hasicon="false" hasimages="false" iconvalue=""></ul>
                <ul class="form-overlay-item" pid="1006" hasicon="false" hasimages="false" iconvalue=""></ul>
              </span></div>
            <div data-wrapper-react="true"><span class="form-product-item hover-product-item  show_option new_ui" categories="non-categorized" pid="1001" aria-labelledby="label_7">
                <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                  <div class="p_col">
                    <div class="p_checkbox"><input type="checkbox" class="form-checkbox  form-product-input" id="input_7_1001" name="q7_myProducts7[][id]" value="1001" aria-label="Select Product: 성인 종일권" />
                      <div class="checked"></div>
                      <div class="select_border"></div>
                    </div>
                  </div>
                  <div class="p_image">
                    <div class="image_area "></div>
                  </div>
                  <div for="input_7_1001" class="form-product-container"><span data-wrapper-react="true">
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1001">성인 종일권</span><span class="form-product-description" id="product-name-description-input_7_1001"></span></div><span class="form-product-details"><b><span data-wrapper-react="true">$<span id="input_7_1001_price">15.00</span></span></b></span>
                    </span><span class="form-sub-label-container" style="vertical-align:top"><label class="form-sub-label" for="input_7_quantity_1001_0" style="min-height:13px" aria-hidden="false">Quantity</label><span class="select_cont"><select class="form-dropdown" name="q7_myProducts7[special_1001][item_0]" id="input_7_quantity_1001_0" aria-label="Select Quantity">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select></span></span></div>
                  <div class="focus_action_button_container"><a class="btn-inline-product-delete"> </a><a class="btn-inline-product-settings"> </a></div>
                </div>
              </span>
              <div class="p_item_separator "></div><span class="form-product-item hover-product-item  show_option new_ui" categories="non-categorized" pid="1002" aria-labelledby="label_7">
                <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                  <div class="p_col">
                    <div class="p_checkbox"><input type="checkbox" class="form-checkbox  form-product-input" id="input_7_1002" name="q7_myProducts7[][id]" value="1002" aria-label="Select Product: 성인 오후권" />
                      <div class="checked"></div>
                      <div class="select_border"></div>
                    </div>
                  </div>
                  <div class="p_image">
                    <div class="image_area "></div>
                  </div>
                  <div for="input_7_1002" class="form-product-container"><span data-wrapper-react="true">
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1002">성인 오후권</span><span class="form-product-description" id="product-name-description-input_7_1002"></span></div><span class="form-product-details"><b><span data-wrapper-react="true">$<span id="input_7_1002_price">10.00</span></span></b></span>
                    </span><span class="form-sub-label-container" style="vertical-align:top"><label class="form-sub-label" for="input_7_quantity_1002_0" style="min-height:13px" aria-hidden="false">Quantity</label><span class="select_cont"><select class="form-dropdown" name="q7_myProducts7[special_1002][item_0]" id="input_7_quantity_1002_0" aria-label="Select Quantity">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select></span></span></div>
                  <div class="focus_action_button_container"><a class="btn-inline-product-delete"> </a><a class="btn-inline-product-settings"> </a></div>
                </div>
              </span>
              <div class="p_item_separator "></div><span class="form-product-item hover-product-item  show_option new_ui" categories="non-categorized" pid="1003" aria-labelledby="label_7">
                <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                  <div class="p_col">
                    <div class="p_checkbox"><input type="checkbox" class="form-checkbox  form-product-input" id="input_7_1003" name="q7_myProducts7[][id]" value="1003" aria-label="Select Product: 청소년 종일권" />
                      <div class="checked"></div>
                      <div class="select_border"></div>
                    </div>
                  </div>
                  <div class="p_image">
                    <div class="image_area "></div>
                  </div>
                  <div for="input_7_1003" class="form-product-container"><span data-wrapper-react="true">
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1003">청소년 종일권</span><span class="form-product-description" id="product-name-description-input_7_1003"></span></div><span class="form-product-details"><b><span data-wrapper-react="true"><span class="freeCurr" style="display:none"> $</span><span id="input_7_1003_price"> Free</span><span class="freeCurr" style="display:none">  </span></span></b></span>
                    </span><span class="form-sub-label-container" style="vertical-align:top"><label class="form-sub-label" for="input_7_quantity_1003_0" style="min-height:13px" aria-hidden="false">Quantity</label><span class="select_cont"><select class="form-dropdown" name="q7_myProducts7[special_1003][item_0]" id="input_7_quantity_1003_0" aria-label="Select Quantity">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select></span></span></div>
                  <div class="focus_action_button_container"><a class="btn-inline-product-delete"> </a><a class="btn-inline-product-settings"> </a></div>
                </div>
              </span>
              <div class="p_item_separator "></div><span class="form-product-item hover-product-item  show_option new_ui" categories="non-categorized" pid="1004" aria-labelledby="label_7">
                <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                  <div class="p_col">
                    <div class="p_checkbox"><input type="checkbox" class="form-checkbox  form-product-input" id="input_7_1004" name="q7_myProducts7[][id]" value="1004" aria-label="Select Product: 청소년 오후권" />
                      <div class="checked"></div>
                      <div class="select_border"></div>
                    </div>
                  </div>
                  <div class="p_image">
                    <div class="image_area "></div>
                  </div>
                  <div for="input_7_1004" class="form-product-container"><span data-wrapper-react="true">
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1004">청소년 오후권</span><span class="form-product-description" id="product-name-description-input_7_1004"></span></div><span class="form-product-details"><b><span data-wrapper-react="true"><span class="freeCurr" style="display:none"> $</span><span id="input_7_1004_price"> Free</span><span class="freeCurr" style="display:none">  </span></span></b></span>
                    </span><span class="form-sub-label-container" style="vertical-align:top"><label class="form-sub-label" for="input_7_quantity_1004_0" style="min-height:13px" aria-hidden="false">Quantity</label><span class="select_cont"><select class="form-dropdown" name="q7_myProducts7[special_1004][item_0]" id="input_7_quantity_1004_0" aria-label="Select Quantity">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select></span></span></div>
                  <div class="focus_action_button_container"><a class="btn-inline-product-delete"> </a><a class="btn-inline-product-settings"> </a></div>
                </div>
              </span>
              <div class="p_item_separator "></div><span class="form-product-item hover-product-item  show_option new_ui" categories="non-categorized" pid="1005" aria-labelledby="label_7">
                <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                  <div class="p_col">
                    <div class="p_checkbox"><input type="checkbox" class="form-checkbox  form-product-input" id="input_7_1005" name="q7_myProducts7[][id]" value="1005" aria-label="Select Product: 아동 종일권" />
                      <div class="checked"></div>
                      <div class="select_border"></div>
                    </div>
                  </div>
                  <div class="p_image">
                    <div class="image_area "></div>
                  </div>
                  <div for="input_7_1005" class="form-product-container"><span data-wrapper-react="true">
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1005">아동 종일권</span><span class="form-product-description" id="product-name-description-input_7_1005"></span></div><span class="form-product-details"><b><span data-wrapper-react="true"><span class="freeCurr" style="display:none"> $</span><span id="input_7_1005_price"> Free</span><span class="freeCurr" style="display:none">  </span></span></b></span>
                    </span><span class="form-sub-label-container" style="vertical-align:top"><label class="form-sub-label" for="input_7_quantity_1005_0" style="min-height:13px" aria-hidden="false">Quantity</label><span class="select_cont"><select class="form-dropdown" name="q7_myProducts7[special_1005][item_0]" id="input_7_quantity_1005_0" aria-label="Select Quantity">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select></span></span></div>
                  <div class="focus_action_button_container"><a class="btn-inline-product-delete"> </a><a class="btn-inline-product-settings"> </a></div>
                </div>
              </span>
              <div class="p_item_separator "></div><span class="form-product-item hover-product-item  show_option new_ui" categories="non-categorized" pid="1006" aria-labelledby="label_7">
                <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                  <div class="p_col">
                    <div class="p_checkbox"><input type="checkbox" class="form-checkbox  form-product-input" id="input_7_1006" name="q7_myProducts7[][id]" value="1006" aria-label="Select Product: 아동 오후권" />
                      <div class="checked"></div>
                      <div class="select_border"></div>
                    </div>
                  </div>
                  <div class="p_image">
                    <div class="image_area "></div>
                  </div>
                  <div for="input_7_1006" class="form-product-container"><span data-wrapper-react="true">
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1006">아동 오후권</span><span class="form-product-description" id="product-name-description-input_7_1006"></span></div><span class="form-product-details"><b><span data-wrapper-react="true"><span class="freeCurr" style="display:none"> $</span><span id="input_7_1006_price"> Free</span><span class="freeCurr" style="display:none">  </span></span></b></span>
                    </span><span class="form-sub-label-container" style="vertical-align:top"><label class="form-sub-label" for="input_7_quantity_1006_0" style="min-height:13px" aria-hidden="false">Quantity</label><span class="select_cont"><select class="form-dropdown" name="q7_myProducts7[special_1006][item_0]" id="input_7_quantity_1006_0" aria-label="Select Quantity">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select></span></span></div>
                  <div class="focus_action_button_container"><a class="btn-inline-product-delete"> </a><a class="btn-inline-product-settings"> </a></div>
                </div>
              </span>
              <div class="payment_footer new_ui ">
                <div class="total_area">
                  <div class="form-payment-total">
                    <div id="total-text">Total</div>
                    <div class="form-payment-price"><span data-wrapper-react="true">$<span id="payment_total">0.00</span></span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_9">
        <div id="cid_9" class="form-input-wide" data-layout="full">
          <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField"><button id="input_9" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">Submit</button></div>
        </div>
      </li>
      <li style="display:none">Should be Empty: <input type="text" name="website" value="" /></li>
    </ul>
  </div>
  <script>
    JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
    JotForm.poweredByText = "Powered by Jotform";
  </script><input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="230938005000441" />
  <script type="text/javascript">
    var all_spc = document.querySelectorAll("form[id='230938005000441'] .si" + "mple" + "_spc");
    for (var i = 0; i < all_spc.length; i++)
    {
      all_spc[i].value = "230938005000441-230938005000441";
    }
  </script>
  <div class="formFooter-heightMask"></div>
  <div class="formFooter f6 branding21">
    <div class="formFooter-wrapper formFooter-leftSide"><a href="https://www.jotform.com/?utm_source=formfooter&utm_medium=banner&utm_term=230938005000441&utm_content=jotform_logo&utm_campaign=powered_by_jotform_le" target="_blank" class="formFooter-logoLink"><img class="formFooter-logo" src="https://cdn.jotfor.ms/assets/img/logo2021/jotform-logo-white.svg" alt="Jotform Logo" style="height: 44px;"></a></div>
    <div class="formFooter-wrapper formFooter-rightSide"><span class="formFooter-text">Now create your own Jotform - It's free!</span><a class="formFooter-button" href="https://www.jotform.com/?utm_source=formfooter&utm_medium=banner&utm_term=230938005000441&utm_content=jotform_button&utm_campaign=powered_by_jotform_le" target="_blank">Create your own Jotform</a></div>
  </div>
</form><script type="text/javascript">JotForm.ownerView=true;</script><script src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.40728"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.40728"></script>