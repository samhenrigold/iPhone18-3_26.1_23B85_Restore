void sub_100000CA8()
{
  v0 = dispatch_time(0, 15000000000);

  dispatch_after(v0, &_dispatch_main_q, &stru_1000082C8);
}

CFTypeRef sub_100000D04()
{
  pthread_mutex_lock(&stru_10000C1B8);
  v0 = geteuid();
  if (!v0)
  {
    v0 = getuid();
  }

  if (qword_10000C1F8)
  {
    Value = CFDictionaryGetValue(qword_10000C1F8, v0);
    if (Value)
    {
      goto LABEL_13;
    }
  }

  else
  {
    qword_10000C1F8 = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
  }

  pw_dir = getenv("IPHONE_SHARED_RESOURCES_DIRECTORY");
  if (pw_dir || (v3 = getpwuid(v0)) != 0 && (pw_dir = v3->pw_dir) != 0)
  {
    Value = CFStringCreateWithFileSystemRepresentation(0, pw_dir);
    if (Value)
    {
      CFDictionarySetValue(qword_10000C1F8, v0, Value);
      CFRelease(Value);
    }
  }

  else
  {
    Value = 0;
  }

LABEL_13:
  pthread_mutex_unlock(&stru_10000C1B8);
  v4 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", Value, @"com.apple.MobileSMS");

  return CFAutorelease(v4);
}

id sub_100000E1C()
{
  result = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{0), "objectForKey:", @"automatic-deletion-disabled"}];
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

uint64_t start()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "IMAutomaticHistoryDeletionAgent launched!", v4, 2u);
    }
  }

  v1 = +[IMMetricsCollector sharedInstance];
  [(IMMetricsCollector *)v1 trackEvent:IMMetricsCollectorEventDeletionAgentLaunched];
  notify_post([IMCloudKitLogDailyMetricsNotification cStringUsingEncoding:4]);
  IMRegisterSADAwareXPCActivity();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100008350);
  v2 = objc_autoreleasePoolPush();
  [+[NSRunLoop currentRunLoop](NSRunLoop run];
  objc_autoreleasePoolPop(v2);
  return 0;
}

void sub_100000F84(id a1, OS_xpc_object *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Reached iOS automatic deletion daily setup method", buf, 2u);
    }
  }

  if (xpc_activity_get_state(a2))
  {
    if (xpc_activity_set_state(a2, 4))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001128;
      block[3] = &unk_100008330;
      block[4] = a2;
      dispatch_async(&_dispatch_main_q, block);
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "Failed to set the state of xpc_activity to continue.";
        goto LABEL_13;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Handler invoked in check in state";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    }
  }
}

void sub_100001128(uint64_t a1)
{
  sub_1000011C4(a1);
  v2 = dispatch_time(0, 15000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AA4;
  block[3] = &unk_100008330;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1000011C4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Reached iOS automatic deletion setup method", buf, 2u);
    }
  }

  if ([+[IMUnlockMonitor isUnderFirstDataProtectionLock] sharedInstance]
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Device under first data protection lock, returning early.", buf, 2u);
      }
    }

    return;
  }

  v3 = +[NSDate date];
  v4 = [[NSCalendar calendarWithIdentifier:?]fromDate:"components:fromDate:", 512, v3];
  v94 = [(NSDateComponents *)v4 weekday];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      v100 = v94;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Should we cleans orphaned attachments? (date=%@) (weekdayComponents:%@) (Day:%ld)", buf, 0x20u);
    }
  }

  v6 = sub_100000D04();
  keyExistsAndHasValidFormat[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"TargetAttachmentCleanupDate", v6, keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Changing target date based on defaults", buf, 2u);
      }
    }
  }

  else
  {
    AppIntegerValue = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = AppIntegerValue;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Target date: %ld", buf, 0xCu);
    }
  }

  v9 = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{0), "objectForKey:", @"automatic-deletion-disabled"}];
  if (v9 && ([v9 BOOLValue] & 1) != 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_162;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_162;
    }

    *buf = 0;
    v11 = "Server returned that deletion was disabled, not deleting anything.";
    goto LABEL_161;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Reached iOS deletion method", buf, 2u);
    }
  }

  if (sub_100000D04())
  {
    v13 = [+[IMSyncedSettingsManager sharedManager](IMSyncedSettingsManager "sharedManager")];
    v14 = [+[IMSyncedSettingsManager sharedManager](IMSyncedSettingsManager "sharedManager")];
    if (v13 && [v13 intValue] >= 1)
    {
      [IMDMessageAutomaticHistoryDeletion deleteMessagesAndAttachmentsAfterDays:v13];
      v15 = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      v15 = 1;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v13 longValue];
        *buf = 134217984;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "not deleting messages older than %ld days", buf, 0xCu);
      }
    }

    else
    {
      v15 = 1;
    }

    if ([v14 intValue] >= 1)
    {
      v19 = [v14 intValue];
      if (v19 < [v13 intValue])
      {
        [IMDMessageAutomaticHistoryDeletion deleteAttachmentsAfterDays:v14];
LABEL_45:
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Notifying agent so that it can reload the chats.", buf, 2u);
          }
        }

        notify_post("com.apple.automatichistorydeletion.deleted");
        goto LABEL_49;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v14 longValue];
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "not deleting attachments older than %ld days", buf, 0xCu);
      }
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Could not find sms domain", buf, 2u);
    }
  }

LABEL_49:
  v23 = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{1), "objectForKey:", @"recoverable-deletion-disabled"}];
  if (v23 && [v23 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Not deleting recoverable messages, disabled by server bag", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Deleting recoverable messages that have aged out of recovery window", buf, 2u);
      }
    }

    +[IMDMessageAutomaticHistoryDeletion deleteRecoverableMessagesEligibleForPermanentRemoval];
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Notifying daemon to reload chat registry", buf, 2u);
      }
    }

    notify_post("com.apple.automatichistorydeletion.deleted");
  }

  context = objc_autoreleasePoolPush();
  if (v94 == AppIntegerValue)
  {
    +[IMDMessageAutomaticHistoryDeletion cleanUpOrphanAttachments];
  }

  else if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Not the target date, bailing", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "deleting stale ChatKit previews", buf, 2u);
    }
  }

  *keyExistsAndHasValidFormat = [IMSafeTemporaryDirectory() path];
  v112 = @"CKAnimatedImageMediaObjectPreview";
  v29 = [NSURL fileURLWithPathComponents:[NSArray arrayWithObjects:keyExistsAndHasValidFormat count:2]];
  v30 = +[NSFileManager defaultManager];
  v105 = NSURLNameKey;
  v106 = NSURLIsDirectoryKey;
  v31 = [(NSFileManager *)v30 enumeratorAtURL:v29 includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 7, 0];
  for (i = [(NSDirectoryEnumerator *)v31 nextObject]; i; i = [(NSDirectoryEnumerator *)v31 nextObject])
  {
    v33 = objc_autoreleasePoolPush();
    v34 = [i path];
    v35 = [(NSDictionary *)[(NSFileManager *)v30 attributesOfItemAtPath:v34 error:0] objectForKey:NSFileCreationDate];
    v36 = v35;
    if (v35)
    {
      [v35 timeIntervalSinceNow];
      if (fabs(v37) > 3600.0)
      {
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v34;
            *&buf[12] = 2112;
            *&buf[14] = v36;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "ChatKit preview (%@) is too old (created %@), deleting.", buf, 0x16u);
          }
        }

        [(NSFileManager *)v30 removeItemAtPath:v34 error:0];
      }
    }

    objc_autoreleasePoolPop(v33);
  }

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "deleting stale ChatKit bubble plugin previews", buf, 2u);
    }
  }

  v40 = [NSURL fileURLWithPath:@"/var/mobile/Library/Caches/com.apple.MobileSMS/Plugins/Snapshots"];
  v41 = +[NSFileManager defaultManager];
  *keyExistsAndHasValidFormat = NSURLNameKey;
  v112 = NSURLIsDirectoryKey;
  v42 = [(NSFileManager *)v41 enumeratorAtURL:v40 includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 7, 0];
  for (j = [(NSDirectoryEnumerator *)v42 nextObject]; j; j = [(NSDirectoryEnumerator *)v42 nextObject])
  {
    v44 = objc_autoreleasePoolPush();
    v45 = [j path];
    v46 = [(NSDictionary *)[(NSFileManager *)v41 attributesOfItemAtPath:v45 error:0] objectForKey:NSFileCreationDate];
    v47 = v46;
    if (v46)
    {
      [v46 timeIntervalSinceNow];
      if (fabs(v48) > 3600.0)
      {
        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v45;
            *&buf[12] = 2112;
            *&buf[14] = v47;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "ChatKit preview (%@) is too old (created %@), deleting.", buf, 0x16u);
          }
        }

        [(NSFileManager *)v41 removeItemAtPath:v45 error:0];
      }
    }

    objc_autoreleasePoolPop(v44);
  }

  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Deleting previews older than last 200", buf, 2u);
    }
  }

  IMDAttachmentRecordDeleteAttachmentPreviewsOlderThan();
  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Finished previews older than last 200", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Cleansing orphaned sticker transfer user info", buf, 2u);
    }
  }

  [IMStickerTransferInfoDirectoryURL() path];
  IMSharedHelperDeleteOrphanedStickerMMCSDownloadTokens();
  if (IMOSLoggingEnabled())
  {
    v53 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Cleansing orphaned sticker attachments", buf, 2u);
    }
  }

  IMDCleanseOrphanedStickerAttachments();
  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Cleansing browser snapshot cache", buf, 2u);
    }
  }

  IMDCleanseBrowserSnapshots();
  objc_autoreleasePoolPop(context);
  v55 = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{0), "objectForKey:", @"junk-deletion-disabled"}];
  if (v55 && [v55 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v57 = "Not deleting junk messages, disabled by server bag";
LABEL_144:
        v80 = v56;
        v81 = 2;
        goto LABEL_145;
      }
    }

    goto LABEL_153;
  }

  if (![+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
  {
    *keyExistsAndHasValidFormat = 0;
    v112 = keyExistsAndHasValidFormat;
    v113 = 0x2020000000;
    LOBYTE(v114) = 0;
    v68 = [NSPredicate predicateWithFormat:@"%K == %ld AND %K == %@", IMChatPropertyIsFiltered, 2, IMChatPropertyServiceName, IMServiceNameiMessage];
    v69 = +[IMDDatabase synchronousDatabase];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002D74;
    v100 = &unk_100008398;
    v101 = keyExistsAndHasValidFormat;
    [v69 fetchChatRecordsFilteredUsingPredicate:v68 sortedUsingDescriptors:0 limit:1 completionHandler:buf];
    length_low = LOBYTE(v112->length);
    _Block_object_dispose(keyExistsAndHasValidFormat, 8);
    v71 = +[IMDeviceUtilities supportsiMessageJunk];
    v72 = IMOSLoggingEnabled();
    if (((v71 | length_low) & 1) == 0)
    {
      if (!v72)
      {
        goto LABEL_153;
      }

      v82 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        goto LABEL_153;
      }

      *buf = 138412546;
      *&buf[4] = @"NO";
      *&buf[12] = 2112;
      *&buf[14] = @"NO";
      v57 = "Not deleting junk messages, recipient is not Oscar eligible: %@ or junk chat exists: %@";
      v80 = v82;
      v81 = 22;
      goto LABEL_145;
    }

    if (!v72 || (v73 = OSLogHandleForIMFoundationCategory(), !os_log_type_enabled(v73, OS_LOG_TYPE_INFO)))
    {
LABEL_129:
      v76 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", @"startDeletingJunkMessagesFrom"];
      if (!v76)
      {
        [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:+[NSDate date], @"startDeletingJunkMessagesFrom"];
        goto LABEL_153;
      }

      v77 = [v76 compare:{+[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -9720000.0)}] == 1;
      v78 = IMOSLoggingEnabled();
      if (!v77)
      {
        if (v78)
        {
          v83 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "Deleting junk messages that have aged out of recovery window", buf, 2u);
          }
        }

        [IMDMessageAutomaticHistoryDeletion deleteJunkMessagesEligibleForPermanentRemovalOldThanDays:90];
        if (IMOSLoggingEnabled())
        {
          v84 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "Notifying daemon to reload chat registry", buf, 2u);
          }
        }

        notify_post("com.apple.automatichistorydeletion.deleted");
        goto LABEL_153;
      }

      if (!v78)
      {
        goto LABEL_153;
      }

      v79 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        goto LABEL_153;
      }

      *buf = 134217984;
      *&buf[4] = 90;
      v57 = "The feature has been enabled for less than %ld days";
      v80 = v79;
      v81 = 12;
LABEL_145:
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, v57, buf, v81);
      goto LABEL_153;
    }

    v74 = @"NO";
    if (v71)
    {
      v75 = @"YES";
    }

    else
    {
      v75 = @"NO";
    }

    if (length_low)
    {
      v74 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = v75;
    *&buf[12] = 2112;
    *&buf[14] = v74;
    v66 = "Eligible for deletion: %@ - has one junk iMessage: %@";
    v67 = v73;
LABEL_128:
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, v66, buf, 0x16u);
    goto LABEL_129;
  }

  *keyExistsAndHasValidFormat = 0;
  v112 = keyExistsAndHasValidFormat;
  v113 = 0x2020000000;
  LOBYTE(v114) = 0;
  v58 = [NSPredicate predicateWithFormat:@"%K == %ld", IMChatPropertyIsFiltered, 2];
  v59 = +[IMDDatabase synchronousDatabase];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100002CCC;
  v100 = &unk_100008398;
  v101 = keyExistsAndHasValidFormat;
  [v59 fetchChatRecordsFilteredUsingPredicate:v58 sortedUsingDescriptors:0 limit:1 completionHandler:buf];
  LOBYTE(v58) = v112->length;
  _Block_object_dispose(keyExistsAndHasValidFormat, 8);
  if (v58)
  {
    v60 = +[IMNotificationSettings isSpamFilteringEnabled];
    v61 = +[IMNotificationSettings isTextMessageExtensionEnabled];
    v62 = IMOSLoggingEnabled();
    if (((v60 | v61) & 1) == 0)
    {
      if (v62)
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v57 = "Not eligible for deletion, spam and text message filtering turned off";
          goto LABEL_144;
        }
      }

      goto LABEL_153;
    }

    if (!v62)
    {
      goto LABEL_129;
    }

    v63 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      goto LABEL_129;
    }

    v64 = @"NO";
    if (v60)
    {
      v65 = @"YES";
    }

    else
    {
      v65 = @"NO";
    }

    if (v61)
    {
      v64 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = v65;
    *&buf[12] = 2112;
    *&buf[14] = v64;
    v66 = "Eligible for deletion, spam %@ or text message filtering %@ turned on";
    v67 = v63;
    goto LABEL_128;
  }

  if (IMOSLoggingEnabled())
  {
    v56 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v57 = "Not deleting junk messages, no junk chat found";
      goto LABEL_144;
    }
  }

LABEL_153:
  v85 = [+[NSUserDefaults messagesAppDomain](NSUserDefaults "messagesAppDomain")];
  v86 = IMOSLoggingEnabled();
  if ((v94 == AppIntegerValue) | v85 & 1)
  {
    if (v86)
    {
      v87 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "Running Missing Messages Metric Collection", buf, 2u);
      }
    }

    *keyExistsAndHasValidFormat = 0;
    v112 = keyExistsAndHasValidFormat;
    v113 = 0x3052000000;
    v114 = sub_100002E1C;
    v115 = sub_100002E2C;
    v116 = objc_alloc_init(IMMessagesWithoutChatsContext);
    v88 = dispatch_group_create();
    dispatch_group_enter(v88);
    v98[0] = 0;
    v98[1] = v98;
    v98[2] = 0x2020000000;
    v98[3] = -1;
    v89 = +[IMDDatabase synchronousDatabase];
    v105 = _NSConcreteStackBlock;
    v106 = 3221225472;
    v107 = sub_100002E38;
    v108 = &unk_1000083C0;
    v109 = v88;
    v110 = v98;
    [v89 fetchTotalMessageCountWithCompletionHandler:&v105];
    dispatch_group_enter(v88);
    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x2020000000;
    v97[3] = -1;
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_100002E4C;
    v96[3] = &unk_1000083C0;
    v96[4] = v88;
    v96[5] = v97;
    [+[IMDDatabase synchronousDatabase](IMDDatabase "synchronousDatabase")];
    v90 = [+[IMCloudKitHooks sharedInstance](IMCloudKitHooks isEnabled];
    [v112[1].info setMicEnabled:v90];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002E60;
    v100 = &unk_1000083E8;
    v103 = v98;
    v104 = v97;
    v101 = v88;
    v102 = keyExistsAndHasValidFormat;
    dispatch_group_notify(v88, &_dispatch_main_q, buf);
    _Block_object_dispose(v97, 8);
    _Block_object_dispose(v98, 8);
    _Block_object_dispose(keyExistsAndHasValidFormat, 8);
    goto LABEL_162;
  }

  if (v86)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "Not Running Missing Messages Metric Collection";
LABEL_161:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
    }
  }

LABEL_162:
  v91 = objc_autoreleasePoolPush();
  if (IMOSLoggingEnabled())
  {
    v92 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "Cleaning database", buf, 2u);
    }
  }

  +[IMDMessageAutomaticHistoryDeletion cleanDatabase];
  objc_autoreleasePoolPop(v91);
}

void sub_100002AA4(uint64_t a1)
{
  v1 = xpc_activity_set_state(*(a1 + 32), 5);
  v2 = IMOSLoggingEnabled();
  if (v1)
  {
    if (v2)
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v6 = 0;
        v4 = "Marked xpc_activity to done.";
        v5 = &v6;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
      }
    }
  }

  else if (v2)
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "Failed to set the state of xpc_activity to done.";
      v5 = buf;
      goto LABEL_8;
    }
  }
}

void sub_100002B98(id a1, OS_xpc_object *a2)
{
  v2 = IMOSLoggingEnabled();
  if (v2)
  {
    v3 = OSLogHandleForIMFoundationCategory();
    v2 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v2)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received iOS keep messages pref change notif,.", v5, 2u);
    }
  }

  sub_1000011C4(v2);
  v4 = dispatch_time(0, 15000000000);
  dispatch_after(v4, &_dispatch_main_q, &stru_100008370);
}

void sub_100002C4C(id a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Exiting manually as we were launched as part of a darwin notification", v2, 2u);
    }
  }

  exit(0);
}

void sub_100002CCC(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found at least 1 junk chat", v4, 2u);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100002D74(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found at least 1 iMessage junk chat", v4, 2u);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100002E60(void *a1)
{
  [*(*(a1[5] + 8) + 40) setTotalMessagesCount:*(*(a1[6] + 8) + 24)];
  [*(*(a1[5] + 8) + 40) setMissingMessagesCount:*(*(a1[7] + 8) + 24)];
  [+[IMMetricsCollector sharedInstance](IMMetricsCollector trackMessagesWithoutChatsWithContext:"trackMessagesWithoutChatsWithContext:", *(*(a1[5] + 8) + 40)];

  *(*(a1[5] + 8) + 40) = 0;
  v2 = a1[4];

  dispatch_release(v2);
}