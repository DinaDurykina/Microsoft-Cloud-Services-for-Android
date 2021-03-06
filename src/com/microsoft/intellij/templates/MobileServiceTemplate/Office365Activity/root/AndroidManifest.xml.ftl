<#assign parameters = customParameters?eval><?xml version="1.0"?><manifest xmlns:android="http://schemas.android.com/apk/res/android" >
<#if parameters.isOutlookServices || parameters.isFileServices || parameters.isSharepointLists>

    <uses-permission android:name="android.permission.INTERNET"/>
</#if>

    <application>
        <activity android:name="${relativePackage}.${activityClass}"
            <#if isNewProject>
            android:label="@string/app_name"
            <#else>
            android:label="@string/title_${activityToLayout(activityClass)}"
            </#if>
            >
            <#if isLauncher>
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
            </#if>
        </activity>
    </application>
</manifest>