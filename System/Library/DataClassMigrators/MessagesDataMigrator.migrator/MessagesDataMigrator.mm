void sub_23396FF84(uint64_t a1)
{
  IMDSMSRecordStoreSave();
  IMDSystemMigrationSetHasMigrated();
  [*(a1 + 32) setiCloudBackupsAndRestoresEnabledForSMSDirectory];
  [*(a1 + 32) saveDeviceState:1 isMigrating:0];
  [*(a1 + 32) clearMOCDefaultsForRestoreFromBackupIfNeeded];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_23396F000, v2, OS_LOG_TYPE_INFO, "Finished iMessage data migration", v3, 2u);
    }
  }
}

void sub_23397010C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233970124(uint64_t a1, uint64_t a2)
{
  v3 = IMDSMSRecordStoreCopySMSDBPath();
  if (v3)
  {
    v4 = v3;
    Length = CFStringGetLength(v3);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    *&usedBufLen.st_dev = 0;
    v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    v10.location = 0;
    v10.length = Length;
    CFStringGetBytes(v4, v10, 0x8000100u, 0, 0, v7, MaximumSizeForEncoding, &usedBufLen.st_dev);
    v7[*&usedBufLen.st_dev] = 0;
    memset(&usedBufLen, 0, sizeof(usedBufLen));
    if (!stat(v7, &usedBufLen))
    {
      v8 = usedBufLen.st_size * 0.000114746094;
      *(*(*(a1 + 32) + 8) + 24) = v8;
    }

    free(v7);
    CFRelease(v4);
  }
}

 0;
      _os_log_impl(&dword_23396F000, v3, OS_LOG_TYPE_INFO, "Beginning iMessage data migration", buf, 2u);
    }
  }

  [(MessagesDataMigrator *)self saveDeviceState:0 isMigrating:1];
  IMDPersistencePerformBlock();
  return 1;
}

- (float)estimatedDuration
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  IMDPersistencePerformBlock();
  v2 = v5[6] / 10.0;
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)saveDeviceState:(BOOL)a3 isMigrating:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(DataClassMigrator *)self didUpgrade];
  v8 = [(DataClassMigrator *)self didRestoreFromBackup];
  v9 = [(DataClassMigrator *)self didMigrateBackupFromDifferentDevice];
  v10 = [(DataClassMigrator *)self didRestoreFromCloudBackup];

  MEMORY[0x282173478](v7, v8, v9, v10, v5, v4);
}

- (void)_printCriticalDefaultsWithMessage:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v19 = [(MessagesDataMigrator *)self _cloudKitEnabled];
  v3 = *MEMORY[0x277D19A50];
  v4 = *MEMORY[0x277D19A68];
  v17 = IMGetDomainBoolForKey();
  v5 = *MEMORY[0x277D19A60];
  v16 = IMGetDomainBoolForKey();
  v6 = *MEMORY[0x277D19AA8];
  v15 = IMGetDomainBoolForKey();
  v7 = *MEMORY[0x277D19A20];
  v8 = *MEMORY[0x277D19B20];
  v14 = IMGetDomainBoolForKey();
  v9 = *MEMORY[0x277D19A08];
  v10 = *MEMORY[0x277D199F8];
  v11 = IMGetDomainBoolForKey();
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *MEMORY[0x277D19AD0];
      v20 = 138416898;
      v21 = a3;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v13;
      v26 = 1024;
      v27 = v19;
      v28 = 2112;
      v29 = v3;
      v30 = 2112;
      v31 = v4;
      v32 = 1024;
      v33 = v17;
      v34 = 2112;
      v35 = v3;
      v36 = 2112;
      v37 = v5;
      v38 = 1024;
      v39 = v16;
      v40 = 2112;
      v41 = v3;
      v42 = 2112;
      v43 = v6;
      v44 = 1024;
      v45 = v15;
      v46 = 2112;
      v47 = v7;
      v48 = 2112;
      v49 = v8;
      v50 = 1024;
      v51 = v14;
      v52 = 2112;
      v53 = v9;
      v54 = 2112;
      v55 = v10;
      v56 = 1024;
      v57 = v11;
      _os_log_impl(&dword_23396F000, v12, OS_LOG_TYPE_INFO, "%@:\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}", &v20, 0xA8u);
    }
  }
}

- (void)clearMOCDefaultsForRestoreFromBackupIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(DataClassMigrator *)self didRestoreFromBackup];
  v4 = [(DataClassMigrator *)self didRestoreFromCloudBackup];
  v5 = [(MessagesDataMigrator *)self _didRestoreFromDeviceToDevice];
  v6 = [(DataClassMigrator *)self didUpgrade];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67110144;
      v9[1] = v3;
      v10 = 1024;
      v11 = v4;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v6;
      v16 = 1024;
      v17 = [(DataClassMigrator *)self userDataDisposition];
      _os_log_impl(&dword_23396F000, v7, OS_LOG_TYPE_INFO, "clearMOCDefaultsForRestoreFromBackupIfNeeded {didRestoreFromBackUp: %{BOOL}d, didRestoreFromCloudBackUp: %{BOOL}d, didRestoreFromDeviceToDevice: %{BOOL}d, didUpgrade: %{BOOL}d, disposition: %d}", v9, 0x20u);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_23396F000, v8, OS_LOG_TYPE_INFO, "We are upgrade installing, so no need to update the MOC defaults", v9, 2u);
      }
    }

    IMSetDomainBoolForKey();
  }

  else if (v3)
  {
    IMSetDomainBoolForKey();
    [(MessagesDataMigrator *)self _printCriticalDefaultsWithMessage:@"We are restoring a device from backup ---- clearing defaults"];
    IMSetDomainBoolForKey();
    IMSetDomainBoolForKey();
    IMSetDomainBoolForKey();
    IMSetDomainBoolForKey();
    IMSetDomainBoolForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    IMSetDomainValueForKey();
    if ([(MessagesDataMigrator *)self _cloudKitEnabled])
    {
      IMSetDomainValueForKey();
      if (v5)
      {
        IMSetDomainBoolForKey();
      }
    }

    [(MessagesDataMigrator *)self _printCriticalDefaultsWithMessage:@"Finished clearing with new values"];
    IMClearDidPerformInitialChatVocabularyUpdate();
  }

  else if (IMGetDomainBoolForKey())
  {
    IMSetDomainValueForKey();
  }
}

@end