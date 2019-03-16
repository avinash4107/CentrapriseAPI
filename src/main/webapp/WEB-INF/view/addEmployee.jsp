<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" href="/images/logo.gif">
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" />
<link href="/styles.css" rel="stylesheet">

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet" />
<script src="/javascript/2.1.1.jquery.min.js"></script>

<!-- Custom Theme Style -->
<link href="/css/styles.css" rel="stylesheet">

<script>
	var stateObject = {
		"India" : {
			"Andhrapradesh" : [ "Anantapur", "Chittur", "East Godavari",
					"Guntur", "Krishna", "Kurnool", "Prakasam", "Srikakulam",
					"Nellore", "Visakapatnam", "Vijayanagaram",
					"West Godavari", "Cudappah" ],
			"Arunachal Pradesh" : [ "Anjaw", "Changlang", "Dibang Valley",
					"East Kameng", "East Siang", "Kamle", "Kra Daadi",
					"Kurung Kumey", "Lepa Rada", "Lohit", "Longding",
					"Lower Dibang Valley", "Lower Siang", "Lower Subansiri",
					"Namsai", "Pakke Kessang", "Papum Pare", "Shi Yomi",
					"Siang", "Tawang", "Tirap", "Upper Siang",
					"Upper Subansiri", "West Kameng", "West Siang" ],
			"Assam" : [ "Baksa", "Barpeta", "Biswanath", "Bongaigaon",
					"Cachar", "Charaideo", "Chirang", "Darrang", "Dhemaji",
					"Dhubri", "Dibrugarh", "Dima Hasao (North Cachar Hills)",
					"Goalpara", "Golaghat", "Hailakandi", "Hojai", "Jorhat",
					"Kamrup", "Kamrup Metropolitan", "Karbi Anglong",
					"Karimganj", "Kokrajhar", "Lakhimpur", "Majuli",
					"Morigaon", "Nagaon", "Nalbari", "Sivasagar", "Sonitpur",
					"South Salamara-Mankachar", "Tinsukia", "Udalguri",
					"West Karbi Anglong" ],
			"Bihar" : [ "Araria", "Arwal", "Aurangabad", "Banka", "Begusarai",
					"Bhabhua", "Bhagalpur", "Bhojpur", "Buxar", "Darbhanga",
					"East Champaran", "Gaya", "Gopalganj", "Jamui",
					"Jehanabad", "Katihar", "Khagaria", "Kishanganj",
					"Lakhisarai", "Madhepura", "Madhubani", "Monghyr",
					"Muzaffarpur", "Nalanda", "Nawada", "Patna", "Purnea",
					"Rohtas", "Saharsa", "Samastipur", "Saran", "Sheikhpura",
					"Sheohar", "Sitamarhi", "Siwan", "Supaul", "Vaishali",
					"West Champaran" ],
			"chhattisgarh" : [ "Bastar", "Bemetara", 'Bijapur', "Bilaspur",
					"Dantewada (South Bastar)", "Dhamtari", "Durg",
					"Gariyaband", "Janjgir-Champa", "Jashpur",
					"Kabirdham (Kawardha)", "Kanker (North Bastar)",
					"Kondagaon", "Korba", "Korea (Koriya)", "Mahasamund",
					"Mungeli", "Narayanpur", "Raigarh", "Raipur",
					"Rajnandgaon", "Sukma", "Surajpur", "Surguja" ],
			"Dadra and Nagar Haweli" : [ "Amal", "Silvassa" ],
			"Daman and Diu" : [ "Daman", "Diu" ],
			"Delhi" : [ "new Delhi", "North Delhi", "Noida", "Patparganj",
					"Sonabarsa", "Tughlakabad" ],
			"Goa" : [ "North Goa", "South Goa" ],
			"Gujarat" : [ "Ahmedabad", "Amreli", "Anand", "Aravalli",
					"Banaskantha", "Bharuch", "Bhavnagar", "Botad",
					"Chhota Udaipur", "Dahod", "Dang", "Devbhoomi Dwarka",
					"Gandhinagar", "Gir Somnath", "	Jamnagar", "Junagadh",
					"Kutch", "Kheda", "Mahisagar", "Mehsana", "Morbi",
					"Narmada", "Navsari", "Panchmahal", "Patan", "Porbandar",
					"Rajkot", "Sabarkantha", "Surat", "Surendranagar", "Tapi",
					"Vadodara", "Valsad" ],
			"Haryana" : [ "Ambala", "Bhiwani", "Charkhi Dadri", "Faridabad",
					"Fatehabad", "Gurugram", "Hisar", "Jhajjar", "Jind",
					"Kaithal", "Karnal", "Kurukshetra", "Mahendragarh", "Nuh",
					"Palwal", "Panchkula", "Panipat", "Rewari", "Rohtak",
					"Sirsa", "Sonipat", "Yamunanagar" ],
			"Himachal Pradesh" : [ "Bilaspur", "Chamba", "Hamirpur", "Kangra",
					"Kinnaur", "Kullu", "Lahaul and Spiti", "Mandi", "Shimla",
					"Sirmaur", "Solan", "Una" ],
			"Jammu and Kashmir" : [ "Jammu", "Leh", "Rajouri", "Srinagar" ],
			"Jharkhand" : [ "Garhwa", "Palamu", "Latehar.", "Chatra",
					"Hazaribagh", "Koderma", "Giridih", "Ramgarh", "Bokaro",
					"Dhanbad district", "Lohardaga", "Gumla", "Simdega",
					"Ranchi", "Khunti", "West Singhbhum",
					"Saraikela Kharsawan", "East Singhbhum", "Jamtara",
					"Deoghar", "Dumka", "Pakur", "Godda", "Sahebganj" ],
			"Karnataka" : [ "Bagalkot", "Ballari (Bellary)",
					"Belagavi (Belgaum)", "Bengaluru ",
					"Bengaluru (Bangalore) Urban", "Bidar", "Chamarajanagar",
					"Chikballapur", "Chikkamagaluru (Chikmagalur)",
					"Chitradurga", "Dakshina Kannada", "Davangere", "Dharwad",
					"Gadag", "Hassan", "Haveri", "Kalaburagi (Gulbarga)",
					"Kodagu", "Kolar", "Koppal", "Mandya", "Mysuru (Mysore)",
					"Raichur", "Ramanagara", "Shivamogga (Shimoga)",
					"Tumakuru (Tumkur)", "Udupi", "Uttara Kannada (Karwar)",
					"Vijayapura (Bijapur)", "Yadgir" ],

			"Kerala" : [ "Alappuza", "Ernakulam", "Idukki", "Kannur",
					"Kasaragod", "Kollam", "Kottayam", "Kozikkode",
					"Malappuram", "Palakkad", "Patanamthitta", "Trissur",
					"Thiruvananthapuram", "Wayanad" ],
			"Madhya Pradesh" : [ "Agar Malwa", "Alirajpur", "Anuppur",
					"Ashoknagar", "Balaghat", "Barwani", "Betul", "Bhind",
					"Bhopal", "Burhanpur", "Chhatarpur", "Chhindwara", "Damoh",
					"Datia", "Dewas", "Dhar", "Dindori", "Guna", "Gwalior",
					"Harda", "Hoshangabad", "Indore", "Jabalpur", "Jhabua",
					"Katni", "Khandwa", "Khargone", "Mandla", "Mandsaur",
					"Morena", "Narsinghpur", "Neemuch", "Panna", "Raisen",
					"Rajgarh", "Ratlam", "Rewa", "Sagar", "Satna", "Sehore",
					"Seoni", "Shahdol", "Shajapur", "Sheopur", "Shivpuri",
					"Sidhi", "Singrauli", "Tikamgarh", "Ujjain", "Umaria",
					"Vidisha" ],
			"Sikkim" : [ "Chamurci", "Gangtok" ],
			"Tamilnadu" : [ "Ariyalur", "Chennai", "Coimbatore", "Cuddalore",
					"Dharmapuri", "Dindigul", "Erode", "Kancheepuram", "Karur",
					"Krishnagiri", "Madurai", "Nagapattinam", "Kanyakumari",
					"Namakkal", "Perambalur", "Pudukottai", "Ramanathapuram",
					"Salem", "Sivagangai", "Thanjavur", "Theni", "Thiruvallur",
					"Thiruvarur", "Tuticorin", "Trichirappalli",
					"Thirunelveli", "Tiruppur", "Thiruvannamalai",
					"The Nilgiris", "Vellore", "Viluppuram", "Virudhunagar" ],
			"Telangana" : [ "Hyderabad", "Karimnagar", "Medak", "Nalgonda",
					"Nizamabad", "Rangareddy", "Warangal" ],
			"Tripura" : [ "Dhalai", "Gomati", "Khowai", "North Tripura",
					"Sepahijala", "South Tripura", "Unakoti", "West Tripura" ],
			"Uttar Pradesh" : [ "Agra", "Aligarh", "Allahabad",
					"Ambedkar Nagar", "Amethi", "Amroha", "Auraiya",
					"Azamgarh", "Baghpat", "Bahraich", "Ballia", "Balrampur",
					"Banda", "Barabanki", "Bareilly", "Basti", "Bijnor",
					"Budaun", "Bulandshahr", "Chandauli", "	Chitrakoot",
					"Deoria", "Etah", "Etawah", "Faizabad", "Farrukhabad",
					"Fatehpur", "Firozabad", "Gautam Buddha Nagar",
					"Ghaziabad", "Ghazipur", "Gonda", "Gorakhpur", "Hamirpur",
					"Hardoi", "Hathras", "Jalaun", "Jaunpur", "Jhansi",
					"Jyotiba Phule Nagar", "Kannauj", "Kanpur Dehat",
					"Kanpur Nagar", "Kanshiram Nagar", "Kaushambi", "Kheri",
					"	Kushinagar", "Lalitpur", "Lucknow", "Maharajganj",
					"Mahoba", "Mainpuri", "Mathura", "Mau", "Meerut", "Meerut",
					"Moradabad", "Muzaffarnagar", "Pilibhit", "Pratapgarh",
					"RaeBareli", "Rampur", "Saharanpur",
					"Sambhal (Bhim Nagar)", "Sant Kabir Nagar", "Shahjahanpur",
					"Shamali (Prabuddh Nagar)", "Shravasti", "Siddharth Nagar",
					"Sitapur", "Sonbhadra", "Sultanpur", "Unnao", "Varanasi" ],
			"Uttarakhand" : [ "Almora", "Bageshwar", "Chamoli", "Champawat",
					"Dehradun", "Haridwar", "Nainital", "Pauri Garhwal",
					"Pithoragarh", "Rudraprayag", "Tehri Garhwal",
					"Udham Singh Nagar", "Uttarkashi" ],

		},
		"Australia" : {
			"South Australia" : [ "Dunstan", "Mitchell" ],
			"Victoria" : [ "Altona", "Euroa" ]
		},
		"Canada" : {
			"Alberta" : [ "Acadia", "Bighorn" ],
			"Columbia" : [ "Washington", "" ]
		},
		"United States (US)" : {
			"Texas" : [ "Northern", "Southern", "Eastern", "Western" ],
			"Virginia" : [ "Eastern", "Western" ]
		},
	}
	window.onload = function() {
		var countySel = document.getElementById("countySel"), stateSel = document
				.getElementById("stateSel"), districtSel = document
				.getElementById("districtSel");
		for ( var country in stateObject) {
			countySel.options[countySel.options.length] = new Option(country,
					country);
		}
		countySel.onchange = function() {
			stateSel.length = 1; // remove all options bar first
			districtSel.length = 1; // remove all options bar first
			if (this.selectedIndex < 1)
				return; // done 
			for ( var state in stateObject[this.value]) {
				stateSel.options[stateSel.options.length] = new Option(state,
						state);
			}
		}
		countySel.onchange(); // reset in case page is reloaded
		stateSel.onchange = function() {
			districtSel.length = 1; // remove all options bar first
			if (this.selectedIndex < 1)
				return; // done 
			var district = stateObject[countySel.value][this.value];
			for (var i = 0; i < district.length; i++) {
				districtSel.options[districtSel.options.length] = new Option(
						district[i], district[i]);
			}
		}
	}
</script>
</head>
<body>
<body lang="en">
	<!-- script to check empty fields and valid input on form submission  -->

	<!--For for adding user -->
	<div class="container">
		<div class="wrapper">
			<div class="row row-offcanvas row-offcanvas-left">
				<!-- sidebar -->

				<?php include ('admin_sidebar.php');?>

				<!-- sidebar -->

				<div class="add-group" id="user_list">
					<div class="user-table">
                      <div class="text-left-grp">Employee Details</div>
                                         
                    <div class="form-fields">
                                <form  enctype="multipart/form-data" name="validation" role="form" action="" method="post" onsubmit="return validate();">
                                <div class="sidehead">Personal Information</div>                    
                                  
                                  <div class="form-group">
                                      <div>
                                          <label class="lable-name">Employee Number * </label>
                                          <input type="text" class="input-name" id="employee-number" name="employee-number" value="" required="" />
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <div>
						<label class="lable-name">Employee Name * </label>
                                          <input  type="text" class="input-name" id="name" name="name" value="" required="" />
                                      	 
                                      </div>
                                  </div>
                                  
                                    <div class="form-group">
                                      <div>
                                          <label class="lable-name">Sex * </label>
                                          Men: <input type="radio" name="sex" />
	                                      Woomen: <input type="radio" name="sex" />
	                                      Transgender: <input type="radio" name="sex" />
                                      </div>
                                  </div>
                                  
                                   <div class="form-group">
                                      <div>
                                          <label class="lable-name">Date of Birth * </label>
                                          <input type="date" class="input-name" name="bday">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div>
                                          <label class="lable-name">PAN Number * </label>
                                          <input type="text" class="input-name" id="pan" name="pan" value="" required="" />
                                      </div>
                                  </div>
                                    <div class="form-group">
                                      <div>
                                          <label class="lable-name">Marital Status * </label>
	                                      Married: <input type="radio" name="maritalstatus" />
	                                      Single: <input type="radio" name="maritalstatus" />
                                      </div>
                                  </div>
					 
					<div class="form-group">
                                      <div>
                                           <label class="lable-name">Email Address * </label>
                                          <input type="text" class="input-name" id="email" name="email" value="" required="" />
                                      </div>
                                  </div>
                    <div class="form-group">
                                      <div >
                                          <label class="lable-name">Phone Number * </label>
                                          <input type="text" class="input-name" id="phone" name="phone" value="" required="" />
                                      </div>
                                  </div>
                    <div class="form-group">
                                      <div>
                                          <label class="lable-name">Password * </label>
                                          <input type="password" class="input-name" id="password1" name="password1" value="" required="" />
                                      </div>
                                  </div>
                                  
                  <div class="sidehead">Addresss</div>
                  
                  <div class="form-group">
                                      <div>
                                          <label class="lable-name">Flat/Door/Block Num * </label>
                                          <input type="text" class="input-name" id="door num" name="door num" value="" required="" />
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div>
                                          <label class="lable-name">Village * </label>
                                          <input  type="text" class="input-name" id="vlg" name="vlg" value="" required="" />
                                      	 
                                      </div>
                                  </div>
                                   <div class="form-group">
                                      <div>
                                          <label class="lable-name">Mandal * </label>
                                          <input  type="text" class="input-name" id="mandal" name="mandal" value="" required="" />
                                      	 
                                      </div>
                                  </div>
                                  
                                    <div class="form-group">
                                      <div>
                                          <label class="lable-name">Country * </label>
                                          <select class="input-name" name="state" id="countySel" size="1">
                                           <option value="" selected="selected">Select Country</option>
                                          </select>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <div>
                                        <label class="lable-name">State * </label>  
                                        <select class="input-name" name="countrya" id="stateSel" size="1">
                                         <option value="" selected="selected">Please select Country first</option>
                                        </select>
                                      </div>
                                      </div>
                                  <div class="form-group">
                                     <div>
                                       <label class="lable-name">District * </label> 
                                       <select class="input-name" name="district" id="districtSel" size="1">
                                        <option value="" selected="selected">Please select State first</option>
                                       </select>
                                     </div>
                                </div>
                            <div class="form-group">
                                      <div>
                                          <label class="lable-name">Pincode * </label>
                                          <input type="text" class="input-name" id="pin" name="pin" value="" required="" />
                                      </div>
                                  </div> 
                                  
   <div class="sidehead">Assignment Information</div>
   
                             <div class="form-group">
                                      <div>
                                          <label class="lable-name">Asignment Start Date * </label>
                                          <input type="date" class="input-name" name="start date">
                                      </div>
                                </div>
                                
                                 <div class="form-group">
                                      <div>
                                          <label class="lable-name">Asignment End Date * </label>
                                          <input type="date" class="input-name" name="end date">
                                      </div>
                                </div>
                                 <div class="form-group">
                                      <div>
                                          <label class="lable-name">Jon (Designation) * </label>
                                          <input  type="text" class="input-name" id="job" name="job" value="" required=""/>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <div>
                                          <label class="lable-name">Date of Joining * </label>
                                          <input type="date" class="input-name" name="join date">
                                      </div>
                                </div>
                                   <div class="form-group">
                                      <div>
                                          <label class="lable-name">Years of Serice * </label>
                                          <input  type="text" class="input-name" id="service" name="service" value="" required=""/>
                                      </div>
                                  </div>
                                   <div class="form-group">
                                      <div>
                                          <label class="lable-name">Manager * </label>
                                          <input  type="text" class="input-name" id="manager" name="manager" value="" required=""/>
                                      </div>
                                  </div>
 <div class="sidehead">Bank Information:</div>
                               <div class="form-group">
                                      <div>
                                          <label class="lable-name">Bank Name * </label>
                                          <input  type="text" class="input-name" id="bank name" name="bank name" value="" required=""/>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div >
                                          <label class="lable-name">Account Number * </label>
                                          <input type="text" class="input-name" id="account-number" name="account-number" value="" required="" />
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div >
                                          <label class="lable-name">IFSC Code * </label>
                                          <input type="text" class="input-name" id="ifsc" name="ifsc" value="" required="" />
                                      </div>
                                  </div>
<div class="sidehead">Provident Fund Information:</div>
                                  <div class="form-group">
                                      <div >
                                          <label class="lable-name">UAN * </label>
                                          <input type="text" class="input-name" id="uan" name="uan" value="" required="" />
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div >
                                          <label class="lable-name">Adhar Number * </label>
                                          <input type="text" class="input-name" id="adhar" name="adhar" value="" required="" />
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div >
                                          <label class="lable-name">Previous Employer * </label>
                                          <input type="text" class="input-name" id="previous-emp" name="previous-emp" value="" required="" />
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div>
                                          <label class="lable-name">Date of Previous Employee Leaving * </label>
                                          <input type="date" class="input-name" name="previous-emp-leaving-date">
                                      </div>
                                </div>
                                <div class="form-group">
                                      <div>
                                          <label class="lable-name">Start Date* </label>
                                          <input type="date" class="input-name" name="previous-emp-start-date">
                                      </div>
                                </div>
                                 <div class="form-group">
                                      <div>
                                          <label class="lable-name">End Date* </label>
                                          <input type="date" class="input-name" name="previous-emp-end-date">
                                      </div>
                                </div>
					<div class="ln_solid"></div>
                                        <div class="buttons col-md-6 col-md-offset-3">        				
                		           <input class="btn btn-info" id="submit" name="submit" type="submit" value="Add Employee"> 
                                           <input class="btn btn-cancel" id="submit" name="submit" value="Cancel" onclick="window.location.href='employee.html'">
              	                     </div>              
                              </form>
                            
                 <div class="footer">
                 <p>Copyright &copy; <script>
																		document
																				.write(new Date()
																						.getFullYear())
																	</script> Centraprise, LLC. All Rights Reserved.</p>
                </div>
                    </div>
                      </div>
                  </div>
		</div>
	</div>
</body>
</body>
</html>