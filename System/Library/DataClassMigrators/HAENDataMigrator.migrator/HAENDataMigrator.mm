id HAENDMLog(uint64_t a1)
{
  if (qword_80F0 != -1)
  {
    sub_E74();
  }

  v2 = qword_80F8;

  return v2;
}

void sub_B74(id a1)
{
  qword_80F8 = os_log_create("HAENDataMigrator", "ADAM");

  _objc_release_x1();
}

 CFPreferencesAppSynchronize(ADAFDeviceSpecificPreferenceDomain);
    v4 = CFPreferencesCopyAppValue(@"HAENDataMigratorSuccess", v3);
    v5 = [v4 BOOLValue];
    if (v5)
    {
      v6 = HAENDMLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "HAEN Data Migrator skipped", &v16, 2u);
      }
    }

    else
    {
      v7 = ADAFPreferenceDomain;
      CFPreferencesSetAppValue(@"HAENMigrationAlertSurfaced", 0, ADAFPreferenceDomain);
      CFPreferencesSetAppValue(@"HAENSampleTransient", 0, v7);
      CFPreferencesAppSynchronize(v7);
      CFPreferencesSetAppValue(@"HAENFeatureMandatory", 0, v3);
      CFPreferencesSetAppValue(@"HAENGeoLocationSource", 0, v3);
      v8 = DMGetUserDataDisposition();
      v9 = v8;
      v10 = HAENDMLog(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        LODWORD(v17) = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Data Migrator Disposition Flag: %u", &v16, 8u);
      }

      v11 = &ADAFDeviceDispositionKeyUpdate;
      if ((v9 & 2) == 0)
      {
        v11 = &ADAFDeviceDispositionKeyErase;
      }

      v6 = *v11;
      CFPreferencesSetAppValue(ADAFPreferenceKeyHAENDeviceDisposition, v6, v3);
      CFPreferencesSetAppValue(@"HAENDataMigratorSuccess", &off_41F8, v3);
      CFPreferencesAppSynchronize(v3);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, ADAFDarwinNotificationKeyDeviceDataDispositionDidChange, 0, 0, 1u);
      v14 = HAENDMLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "HAEN Data Migrator device install flag: %@", &v16, 0xCu);
      }
    }
  }

  else
  {
    v4 = HAENDMLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "HAEN Data Migrator did not run since feature flag is disabled", &v16, 2u);
    }
  }

  return 1;
}

@end