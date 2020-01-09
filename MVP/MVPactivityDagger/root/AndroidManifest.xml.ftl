<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
        <#if isLauncher>
        <activity android:name="${packageName}.view.${activityClass}">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
        <#else>
        <activity android:name="${packageName}.view.${activityClass}"/>
        </#if>
    </application>

</manifest>
