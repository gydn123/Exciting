<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdn01.jotfor.ms/static/prototype.forms.js?3.3.40722" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/static/jotform.forms.js?3.3.40722" type="text/javascript"></script>
<script src="https://cdn03.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.40722" type="text/javascript"></script>
<script defer src="https://cdn01.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.40722" type="text/javascript"></script>
<script defer src="https://cdn02.jotfor.ms/js/vendor/jquery.maskedinput.min.js?v=3.3.40722" type="text/javascript"></script>
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.js"></script>
<script src="https://cdn03.jotfor.ms/js/paypal.js?v=3.3.40722" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/s/umd/8a3ac3a2885/for-appointment-field.js?v=3.3.40722" type="text/javascript"></script>
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
    window.initializeAppointment({"text":{"text":"Question","value":"예약"},"labelAlign":{"text":"Label Align","value":"Top","dropdown":[["Auto","Auto"],["Left","Left"],["Right","Right"],["Top","Top"]]},"required":{"text":"Required","value":"No","dropdown":[["No","No"],["Yes","Yes"]]},"description":{"text":"Hover Text","value":"","textarea":true},"slotDuration":{"text":"Slot Duration","value":"240","dropdown":[[15,"15 min"],[30,"30 min"],[45,"45 min"],[60,"60 min"],["custom","Custom min"]],"hint":"Select how long each slot will be."},"startDate":{"text":"Start Date","value":""},"endDate":{"text":"End Date","value":""},"intervals":{"text":"Intervals","value":[{"from":"09:00","to":"22:00","days":["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]}],"hint":"The hours will be applied to the selected days and repeated."},"useBlockout":{"text":"Blockout Custom Dates","value":"No","dropdown":[["No","No"],["Yes","Yes"]],"hint":"Disable certain date(s) in the calendar."},"blockoutDates":{"text":"Blockout dates","value":[{"startDate":"","endDate":""}]},"useLunchBreak":{"text":"Lunch Time","value":"No","dropdown":[["No","No"],["Yes","Yes"]],"hint":"Enable lunchtime in the calendar."},"lunchBreak":{"text":"Lunchtime hours","value":[{"from":"12:00","to":"14:00"}]},"timezone":{"text":"Timezone","value":"Asia/Seoul (GMT+09:00)"},"timeFormat":{"text":"Time Format","value":"AM/PM","dropdown":[["24 Hour","24 Hour"],["AM/PM","AM/PM"]],"icon":"images/blank.gif","iconClassName":"toolbar-time_format_24"},"months":{"value":["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],"hidden":true},"days":{"value":["월요일","화요일","수요일","목요일","금요일","토요일","일요일"],"hidden":true},"startWeekOn":{"text":"Start Week On","value":"Sunday","dropdown":[["Monday","Monday"],["Sunday","Sunday"]],"toolbar":false},"rollingDays":{"text":"Rolling Days","value":"","toolbar":false},"prevMonthButtonText":{"text":"Previous month","value":""},"nextMonthButtonText":{"text":"Next month","value":""},"prevYearButtonText":{"text":"Previous year","value":""},"nextYearButtonText":{"text":"Next year","value":""},"prevDayButtonText":{"text":"Previous day","value":""},"nextDayButtonText":{"text":"Next day","value":""},"appointmentType":{"hidden":true,"value":"single"},"autoDetectTimezone":{"hidden":true,"value":"Yes"},"dateFormat":{"hidden":true,"value":"yyyy/mm/dd"},"maxAttendee":{"hidden":true,"value":"5"},"maxEvents":{"hidden":true,"value":""},"minScheduleNotice":{"hidden":true,"value":"3"},"name":{"hidden":true,"value":"input19"},"order":{"hidden":true,"value":"5"},"qid":{"toolbar":false,"value":"input_19"},"reminderEmails":{"hidden":true,"value":{"schedule":[{"value":"2","unit":"hour"}]}},"type":{"hidden":true,"value":"control_appointment"},"useReminderEmails":{"hidden":true,"value":"No"},"id":{"toolbar":false,"value":"19"},"qname":{"toolbar":false,"value":"q19_input19"},"cdnconfig":{"CDN":"https://cdn.jotfor.ms/"},"passive":false,"formProperties":{"products":[{"hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","name":"성인 종일권","options":[{"type":"quantity","name":"Quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","defaultQuantity":"","specialPricing":false,"expanded":false}],"order":"0","period":"Monthly","pid":"1001","price":"15","recurringtimes":"No Limit","required":"","selected":"","setupfee":"","trial":"None"},{"hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","name":"성인 오후권","options":[{"type":"quantity","name":"Quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","defaultQuantity":"","specialPricing":false,"expanded":false}],"order":"1","period":"Monthly","pid":"1002","price":"10","recurringtimes":"No Limit","required":"","selected":"","setupfee":"","trial":"None"},{"description":"","disabled":"show","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[]","name":"청소년 종일권","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"Quantity","defaultQuantity":"","specialPricing":false,"specialPrices":"","expanded":false}],"order":"2","pid":"1003","price":"0","required":"0","selected":"0"},{"description":"","disabled":"show","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[]","name":"청소년 오후권","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"Quantity","defaultQuantity":"","specialPricing":false,"specialPrices":"","expanded":false}],"order":"3","pid":"1004","price":"0","required":"0","selected":"0"},{"description":"","disabled":"show","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[]","name":"아동 종일권","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"Quantity","defaultQuantity":"","specialPricing":false,"specialPrices":"","expanded":false}],"order":"4","pid":"1005","price":"0","required":"0","selected":"0"},{"description":"","disabled":"show","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[]","name":"아동 오후권","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"Quantity","defaultQuantity":"","specialPricing":false,"specialPrices":"","expanded":false}],"order":"5","pid":"1006","price":"0","required":"0","selected":"0"}],"highlightLine":"Enabled","coupons":false,"useStripeCoupons":false,"taxes":false,"comparePaymentForm":"","paymentListSettings":false,"newPaymentUIForNewCreatedForms":false,"formBackground":"#fff","newAppointment":false},"formID":230938005000441,"isPaymentForm":false,"isOpenedInPortal":false,"isCheckoutForm":false,"themeVersion":"v2"});
        setTimeout(function() {
          $('input_5').hint('ex: myname@example.com');
       }, 20);
      productID = {"0":"input_7_1001","1":"input_7_1002","2":"input_7_1003","3":"input_7_1004","4":"input_7_1005","5":"input_7_1006"};
      paymentType = "product";
      JotForm.setCurrencyFormat('USD',true, 'point');
      JotForm.totalCounter({"input_7_1001":{"price":"15","quantityField":"input_7_quantity_1001_0"},"input_7_1002":{"price":"10","quantityField":"input_7_quantity_1002_0"},"input_7_1003":{"price":"0","quantityField":"input_7_quantity_1003_0"},"input_7_1004":{"price":"0","quantityField":"input_7_quantity_1004_0"},"input_7_1005":{"price":"0","quantityField":"input_7_quantity_1005_0"},"input_7_1006":{"price":"0","quantityField":"input_7_quantity_1006_0"}});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('blur', function(){isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value)})});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('focus', function(){this.value == 0 ? this.value = '' : this.value})});
      JotForm.handleProductLightbox();
	/*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"clickTo","qid":"1","text":"","type":"control_head"},null,{"name":"doubleclickTo","qid":"3","text":"Saturday, March 18, 2023 at 7:00pm in the Anytown University.\nCome early to browse the silent auction.  Doors open at 6:30pm for general seating.","type":"control_text"},{"name":"fullName4","qid":"4","text":"성함","type":"control_fullname"},{"name":"email5","qid":"5","subLabel":"example@example.com","text":"E-mail","type":"control_email"},null,{"name":"myProducts7","qid":"7","text":"내 구매상품","type":"control_paypal"},null,{"name":"submit","qid":"9","text":"Submit","type":"control_button"},null,{"description":"","name":"input11","qid":"11","text":"전화번호","type":"control_phone"},null,null,null,null,null,null,null,{"description":"","name":"input19","qid":"19","text":"예약","type":"control_appointment"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"clickTo","qid":"1","text":"","type":"control_head"},null,{"name":"doubleclickTo","qid":"3","text":"Saturday, March 18, 2023 at 7:00pm in the Anytown University.\nCome early to browse the silent auction.  Doors open at 6:30pm for general seating.","type":"control_text"},{"name":"fullName4","qid":"4","text":"성함","type":"control_fullname"},{"name":"email5","qid":"5","subLabel":"example@example.com","text":"E-mail","type":"control_email"},null,{"name":"myProducts7","qid":"7","text":"내 구매상품","type":"control_paypal"},null,{"name":"submit","qid":"9","text":"Submit","type":"control_button"},null,{"description":"","name":"input11","qid":"11","text":"전화번호","type":"control_phone"},null,null,null,null,null,null,null,{"description":"","name":"input19","qid":"19","text":"예약","type":"control_appointment"}]);}, 20); 
   
   function deleteOnPageChange() {
	   const order_id = document.getElementById('order_id').value;
	   
	   $.ajax({
		   type:'GET',
		   url:'/deleteorder_id',
		   data:{ order_id: order_id },
		   dataType:'json',
		   success:function(response){
			   location.reload;
		   }
	   });
	 }
   
   window.addEventListener('beforeunload', function(event) {
	   // Call the deleteOnPageChange method here
	   event.deleteOnPageChange();
	 });
	
   </script>
<style type="text/css">@media print{.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.40722&themeRevisionID=63e6805f64383509e31513f4"/>
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/payment/payment_styles.css?3.3.40722" />
<link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_feature.css?3.3.40722" />
<form class="jotform-form" action="https://submit.jotform.com/submit/230938005000441" method="post" name="form_230938005000441" id="230938005000441" accept-charset="utf-8" autocomplete="on"><input type="hidden" name="formID" value="230938005000441" /><input type="hidden" id="JWTContainer" value="" /><input type="hidden" id="cardinalOrderNumber" value="" />
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
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1001">성인 종일권</span>
                      <span class="form-product-description" id="product-name-description-input_7_1001"></span></div>
                      <span class="form-product-details"><b><span data-wrapper-react="true">₩<span id="input_7_1001_price">${data.ticket_adult_free }</span></span></b></span>
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
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1002">성인 오후권</span>
                      <span class="form-product-description" id="product-name-description-input_7_1002"></span></div>
                      <span class="form-product-details"><b><span data-wrapper-react="true">₩<span id="input_7_1002_price">${data.ticket_adult_afternoon }</span></span></b></span>
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
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1003">청소년 종일권</span><span class="form-product-description" id="product-name-description-input_7_1003"></span></div><span class="form-product-details"><b><span data-wrapper-react="true"><span class="freeCurr" style="display:none">₩</span><span id="input_7_1003_price"> Free</span><span class="freeCurr" style="display:none">  </span></span></b></span>
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
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1004">청소년 오후권</span><span class="form-product-description" id="product-name-description-input_7_1004"></span></div><span class="form-product-details"><b><span data-wrapper-react="true"><span class="freeCurr" style="display:none">₩</span><span id="input_7_1004_price"> Free</span><span class="freeCurr" style="display:none">  </span></span></b></span>
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
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1005">아동 종일권</span><span class="form-product-description" id="product-name-description-input_7_1005"></span></div><span class="form-product-details"><b><span data-wrapper-react="true"><span class="freeCurr" style="display:none">₩</span><span id="input_7_1005_price"> Free</span><span class="freeCurr" style="display:none">  </span></span></b></span>
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
                      <div class="title_description"><span class="form-product-name" id="product-name-input_7_1006">아동 오후권</span><span class="form-product-description" id="product-name-description-input_7_1006"></span></div><span class="form-product-details"><b><span data-wrapper-react="true"><span class="freeCurr" style="display:none">₩</span><span id="input_7_1006_price"> Free</span><span class="freeCurr" style="display:none">  </span></span></b></span>
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
                    <div class="form-payment-price"><span data-wrapper-react="true">₩<span id="payment_total">0.00</span></span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_9">
        <div id="cid_9" class="form-input-wide" data-layout="full">
          <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField"><button id="input_9" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="" onclick="deleteOnPageChange()">Submit</button></div>
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
    <div class="formFooter-wrapper formFooter-leftSide"><a href="index" target="_blank" class="formFooter-logoLink"><img class="formFooter-logo" src="https://play-lh.googleusercontent.com/W9AN3AyNH7rgBaGO7Jv2MEMk2piGUEerZTZN7hG-xNJFq6QW1Dzs4HLukka0-oKIsw" alt="Exciting Logo" style="height: 43px;"></a></div>
    <div class="formFooter-wrapper formFooter-rightSide"><span class="formFooter-text">구매해 주셔서 감사합니다! 더 보고싶으신게 있으신가요?</span><a class="formFooter-button" href="index" target="_blank">둘러보기</a></div>
  </div>
</form><script type="text/javascript">JotForm.ownerView=true;</script><script src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.40722"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.40722"></script>