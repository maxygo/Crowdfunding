
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>Crowdfunding</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
      integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
      integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-animate.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-aria.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-messages.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
        integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
        crossorigin="anonymous"></script>

<link href="<c:url value="/resources/css/textAngular/textAngular.css" />" rel="stylesheet" type="text/css">
<script src="<c:url value="/resources/angular/lib/textAngular/textAngular-rangy.min.js" />"></script>
<script src="<c:url value="/resources/angular/lib/textAngular/textAngular-sanitize.min.js" />"></script>
<script src="<c:url value="/resources/angular/lib/textAngular/textAngular.min.js" />"></script>

<script src="<c:url value="/resources/angular/lib/xeditable.min.js" />"></script>
<link href="<c:url value="/resources/css/xeditable.min.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/input.css" />" rel="stylesheet" type="text/css">


<link href="<c:url value="/resources/css/admin.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/dropdown.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet" type="text/css">

<script src="<c:url value="/resources/angular/lib/ui-bootstrap-tpls-1.3.2.min.js" />"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jasmine/1.3.1/jasmine.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jasmine/1.3.1/jasmine-html.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/jasmine/1.3.1/jasmine.css" rel="stylesheet" />
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-mocks.js"></script>
<script src="<c:url value="/resources/js/test/angular/createProjectControllerRegExpTest.js" />"></script>

<script src="<c:url value="/resources/js/test/angular/approveDonateMethodTest.js" />"></script>

<script src="<c:url value="/resources/angular/project/project.module.js" />"></script>

<script src="<c:url value="/resources/angular/controllers.js" />"></script>

<script src="<c:url value="/resources/angular/simplePagination.js" />"></script>
<script src="<c:url value="/resources/angular/project/donatelist/project_donates_service.js" />"></script>
<script src="<c:url value="/resources/angular/project/project_details_controller.js" />"></script>

<script src="<c:url value="/resources/angular/project/newproject/create_project_controller.js" />"></script>

<script src="<c:url value="/resources/angular/registration/registration.module.js" />"></script>

<script src="<c:url value="/resources/angular/registration/registration_controller.js" />"></script>

<script src="<c:url value="/resources/angular/registration/registration_service.js" />"></script>

<script src="<c:url value="/resources/angular/control/control.module.js" />"></script>

<script src="<c:url value="/resources/angular/control/controlProjectsCtrl.js" />"></script>

<script src="<c:url value="/resources/angular/control/controlDonateCtrl.js" />"></script>

<script src="<c:url value="/resources/angular/control/settings/change_password_controller.js" />"></script>

<script src="<c:url value="/resources/angular/control/settings/settings_service.js" />"></script>

<script src="<c:url value="/resources/js/test/angular/changePasswordInSettingsServiceTest.js" />"></script>

<script src="<c:url value="/resources/angular/project/donatelist/clickApproveDirective.js" />"></script>

<script src="<c:url value="/resources/js/test/angular/deleteProjectTest.js" />"></script>

<script src="<c:url value="/resources/angular/control/controlProjectsService.js" />"></script>

<script src="<c:url value="/resources/angular/control/controlDonatesService.js" />"></script>

<script src="<c:url value="/resources/js/test/angular/deleteDonateServiceTest.js" />"></script>

<script src="<c:url value="/resources/js/app.js" />"></script>

<div class="row">
    <script>
        var jasmineEnv = jasmine.getEnv();
        jasmineEnv.addReporter(new jasmine.HtmlReporter());
        jasmineEnv.execute();
    </script>
</div>
