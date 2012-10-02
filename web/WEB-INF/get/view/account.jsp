<%-- 
    Document   : account
    Created on : Oct 1, 2012, 1:06:57 PM
    Author     : Luis Salazar <bp.lusv@gmail.com>
--%>

<form id="acChangePassForm" action="/post/changePassword" method="POST">
    <h3 id="acChangePassAd"><fmt:message key="change password" /></h3>
    <div class="acChangePassField">
        <label id="acCurrentPasswordLabel" for="acCurrentPassword"><fmt:message key="current password" /></label>
        <input id="acCurrentPassword" name="currentPassword" type="password" maxlength="255" autofocus />
    </div>
    <div class="acChangePassField">
        <label id="acNewPasswordLabel" for="acNewPassword"><fmt:message key="new password" /></label>
        <input id="acNewPassword" name="newPassword" type="password" maxlength="255" />
        <label id="acNewPasswordStrength"></label>
        <div id="acNewPasswordStrengthBar"></div>
    </div>
    <div class="acChangePassField">
        <label id="acConfirmNewPasswordLabel" for="acConfirmNewPassword"><fmt:message key="confirm new password" /></label>
        <input id="acConfirmNewPassword" name="confirmNewPassword" type="password" maxlength="255" />
    </div>
    <input id="acChangePassSave" type="submit" class="button" value="<fmt:message key="save" />" />
</form>
<div id="acMessages">
    <span class="very_secure"><fmt:message key="very secure" /></span>
    <span class="secure"><fmt:message key="secure" /></span>
    <span class="very_strong"><fmt:message key="very strong" /></span>
    <span class="strong"><fmt:message key="strong" /></span>
    <span class="average"><fmt:message key="average" /></span>
    <span class="weak"><fmt:message key="weak" /></span>
    <span class="very_weak"><fmt:message key="very weak" /></span>
</div>