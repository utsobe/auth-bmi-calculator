/**
 * Created by Haziq 23/04/22
 */

class EndpointConstant {
  // static final String autoLogin = "Shared/Auth/AutoLogin";
  // static final String register = "/register";

  // static final String listOuting = "Attendance/Outing/ListOuting?idserver=";
  // static final String downloadListOuting =
  //     "Asis/Outing/Outing/ListOutingv2?idserver=";
  // static final String applicationDetails =
  //     "Asis/Outing/Outing/ApplicationDetail";
  // static final String listApplication = "Asis/Outing/Outing/ListApplication";
  // static final String listStatus = "Asis/Outing/Outing/ListApplicationByStatus";
  // static final String listYear = "Shared/Listing/ListYear?idserver=";
  // static final String gender = "Shared/Listing/ListGender?idserver=";
  // static final String leaveType = "Shared/Listing/ListLeaveType?idserver=";
  // static final String level = "Shared/Listing/ListLevel?idserver=";
  // static final String classs = "Shared/Listing/ListClass";
  // static final String inoutDate =
  //     "Asis/Outing/Listing/InOutDate?app_name=AppOuting&idserver=";
  // static final String saveApproval = "Asis/Outing/Outing/ApproveApplication";
  // static final String extendOuting = "Asis/Outing/Outing/ExtendOuting";
  // static final String calendarReminder =
  //     "Shared/Listing/ListReminder?idserver=";
  // static final String calendarEvent = "Shared/Listing/ListEvent?idserver=";
  // static final String calendarColor = "Shared/Listing/CalendarColor?idserver=";

  // static final String outingExtend = "Asis/Outing/Outing/ExtendOuting";
  // static final String outingForceIn = "Asis/Outing/Outing/ForceIn";
  // static final String outingForceOut = "Asis/Outing/Outing/ForceOut";
  // static final String listNews = "Shared/Listing/ListNews?idserver=";

  // static final String scanQRUpload = "Asis/Outing/Outing/UploadOutingv2";

  // static final String getTerm = "Shared/Listing/TermAndCondition";
  // static final String getPolicy = "Shared/Listing/PrivacyPolicy";
  // static final String getSalaryLists = "Eboss/Hr/StaffSalary";
  // static final String getSalaryDetail = "Eboss/Hr/StaffSalaryDetail";
  // static final String onLeaveList = "Eboss/Hr/StaffLeave?idserver=";
  // static final String getStaffList = "Eboss/Hr/Staff/ListStaff?idserver=";
  // static final String getleaveTypeList = "Eboss/Hr/ListLeave";
  // static final String applyLeave = "Eboss/Hr/ApplyLeave";
  // static final String editLeave = "Eboss/Hr/EditLeave";
  // static final String getActiveApplication = "Eboss/Hr/LeaveStatus";
  // static final String getClaimList = "Eboss/Hr/AllListClaim";
  // static final String getListOfClaim = "Eboss/Hr/ListClaim";
  // static final String getClaimtypeList = "Eboss/Hr/ClaimType?idserver=";
  // static final String getProjectList = "Eboss/Hr/ListProject?idserver=";
  // static final String newClaim = "Eboss/Hr/AddClaim";
  // static final String getAttendanceList = "Eboss/Hr/AttendanceList";
  // static final String createAttendance = "Eboss/Hr/CreateAtt";
  // static final String editProfile = "Shared/Profile/EditProfile";
  // static final String getProfileData = "Shared/Profile/GetProfile?idserver=";
  // static final String getUpdatePassword = "Shared/Profile/EditPassword";
  // static final String getCalenderEvent = "Shared/Listing/ListEvent?idserver=";
  // static final String getNotificationList =
  //     "Shared/Notification/ListNotification?idserver=";
  // static final String testNotification = "Shared/Notification/SendNotification";
  // static final String approvalLeaveList = "Eboss/Hr/ListApplication";
  // static final String deleteLeave = "Eboss/Hr/DelLeave";
  // static final String approvalDetail = "Eboss/Hr/ListApplicationDetail";
  // static final String verifyResponse = "Eboss/Hr/VerifiedLeave";
  // static final String approveResponse = "Eboss/Hr/ApproveLeave";
  // static final String forgotPassword = "Shared/Auth/ForgetPassword?idserver=";

  // ********* WEB APIS *******************

  // APPCODE
  static final String appcode = "/api/v2/auth/appcode";

  // LOGIN & LOGOUT
  static final String login = "/api/v2/auth/sbd/asnaf/login";
  static final String logout = "/api/v2/auth/sbd/asnaf/logout";
  static final String regUser = "/api/v2/profile/sbd/asnaf";
  static final String passwordConfig = "/api/v2/auth/password/config";
  static final String updUser = "/api/v2/profile/sbd/asnaf";
  static final String profileUser = "/api/v2/profile/sbd/asnaf";
  static final String updPasswordUser = "/api/v2/auth/sbd/asnaf/password";


  // GL OLD APIS
  static final String glData = "https://emedicmaiwp.awfatech.com/app_zakatdialisisv2/asnaf.php";
  static final String notificationAlert = "https://emedicmaiwp.awfatech.com/app_zakatdialisisv2/client_alert.php";
  static final String notificationAlertUpdateRead = "https://emedicmaiwp.awfatech.com/app_zakatdialisisv2/client_alert_update.php";
  static final String ratingDownload = "https://emedicmaiwp.awfatech.com/app_zakatdialisisv2/app_rating/dload_rating.php";
  static final String ratingUpload = "https://emedicmaiwp.awfatech.com/app_zakatdialisisv2/app_rating/uload_rating.php";

  // SHARES GLOBAL APIS
  static final String gender = "/api/v2/list/gender";
  static final String race = "/api/v2/list/race";
  static final String state = "/api/v2/list/state";
  static final String district = "/api/v2/list/district?state=";
  static final String nationality = "/api/v2/list/nationality";


  // LISTING
  // static final systemLevel = "Shared/Listing/SystemLevel?idserver=";
  // static final branchList = "Shared/Listing/ListBranch?idserver=";
  // static final raceList = "Shared/Listing/ListRace?idserver=";
  // static final genderList = "Shared/Listing/ListGender?idserver=";
  // static final religionList = "Shared/Listing/ListReligion?idserver=";
  // static final nationalityList = "Shared/Listing/ListNationality?idserver=";
  // static final stateList = "Shared/Listing/ListState?idserver=";
  // static final qualificationList = "Shared/Listing/ListQulification?idserver=";
  // static final occupationList = "Shared/Listing/ListOccupation?idserver=";
  // static final divisionList = "Shared/Listing/ListDivision?idserver=";
  // static final statusList = "Shared/Listing/ListJobStatus?idserver=";

  // STAFF PROFILE
  //static final staff = "api/v2/staff";

  // STAFF INFORMATION
  //static final staffInfo = "Eboss/Hr/Staff/DetailStaff?idserver=";
}
