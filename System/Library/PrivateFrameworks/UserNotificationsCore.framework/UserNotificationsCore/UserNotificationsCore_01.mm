uint64_t __SpotlightReceiverLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpotlightReceiverLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

UNCContactRecord *UNNotificationContactToUNCContactRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(UNCContactRecord);
  v4 = [v2 handle];
  [(UNCContactRecord *)v3 setHandle:v4];

  -[UNCContactRecord setHandleType:](v3, "setHandleType:", [v2 handleType]);
  v5 = [v2 serviceName];
  [(UNCContactRecord *)v3 setServiceName:v5];

  v6 = [v2 displayName];
  [(UNCContactRecord *)v3 setDisplayName:v6];

  -[UNCContactRecord setDisplayNameSuggested:](v3, "setDisplayNameSuggested:", [v2 isDisplayNameSuggested]);
  v7 = [v2 customIdentifier];
  [(UNCContactRecord *)v3 setCustomIdentifier:v7];

  v8 = [v2 cnContactIdentifier];
  [(UNCContactRecord *)v3 setCnContactIdentifier:v8];

  v9 = [v2 cnContactFullname];
  [(UNCContactRecord *)v3 setCnContactFullname:v9];

  v10 = [v2 isCNContactIdentifierSuggested];
  [(UNCContactRecord *)v3 setCnContactIdentifierSuggested:v10];

  return v3;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7D1948(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

__CFString *_UNCAPSTopicListDebugString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E85D7180[a1];
  }
}

void sub_1DA7D99EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7DD820(void *a1, int a2)
{
  v4 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    [(UNCBundleLibrarian *)v4 _queue_dictionaryAtPath:v2];
    JUMPOUT(0x1DA7DD7D4);
  }

  objc_exception_rethrow();
}

id _UNCNilArgumentError(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Argument %@ is missing for %s", a2, a1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:@"UNCErrorDomain" code:2 userInfo:v4];

  return v5;
}

id _UNCNilRemoteTargetError(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recmote target is missing for %s", a1, *MEMORY[0x1E696A578]];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v1 errorWithDomain:@"UNCErrorDomain" code:3 userInfo:v3];

  return v4;
}

id _UNCNilDelegateError(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Delegate is nil in %s", a1, *MEMORY[0x1E696A578]];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v1 errorWithDomain:@"UNCErrorDomain" code:3 userInfo:v3];

  return v4;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7E4360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA7E44D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7E654C(void *a1, int a2)
{
  v4 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    [(UNCKeyedDictionaryRepository *)v4 _dictionaryAtPath:v2];
    JUMPOUT(0x1DA7E64F8);
  }

  objc_exception_rethrow();
}

void sub_1DA7EC298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

__CFString *UNCStringFromUNCContentPreviewSetting(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D7598[a1];
  }
}

__CFString *UNCStringFromUNCAnnounceSetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D7600[a1 + 1];
  }
}

__CFString *UNCStringFromUNCAnnounceCarPlaySetting(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D75B8[a1 + 1];
  }
}

__CFString *UNCStringFromUNCScheduledDeliverySetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D75E0[a1 + 1];
  }
}

__CFString *UNCStringFromUNCSystemSetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D7600[a1 + 1];
  }
}

__CFString *UNCStringFromBool(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

__CFString *UNCStringFromUNCNotificationListDisplayStyleSetting(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D7620[a1];
  }
}

unint64_t UNCSpokenNotificationSettingForAnnounceSetting(unint64_t result)
{
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

unint64_t UNCAnnounceSettingForSpokenNotificationSetting(unint64_t result)
{
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

uint64_t UNCIsEntitledConnection(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 valueForEntitlement:v5];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      UNCIsEntitledConnection_cold_1(v5, v6, v11);
    }

    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  if (!v8)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v8 containsObject:v6];

LABEL_8:
  return v10;
}

id UNSNotificationRecordDictionaryMigration_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v68 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_54;
  }

  v5 = [v4 objectForKey:@"SchemaVersion"];
  v6 = [v5 unsignedIntegerValue];

  if (v6 >= 0xB)
  {
    v7 = v4;
    goto LABEL_54;
  }

  v7 = [v4 mutableCopy];
  v8 = 0x1E696A000uLL;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:11];
  [v7 setObject:v9 forKey:@"SchemaVersion"];

  v61 = v7;
  v62 = v4;
  if (v6 <= 2)
  {
    v10 = [v4 objectForKey:@"AudioVolume"];
    v11 = v10;
    if (v10)
    {
      [v10 floatValue];
      if (UNFloatIsZero())
      {
        [v7 removeObjectForKey:@"AudioVolume"];
      }
    }

    goto LABEL_11;
  }

  if (v6 <= 4)
  {
LABEL_11:
    v12 = [v4 objectForKey:@"SoundShouldRepeat"];

    if (v12)
    {
      [v7 removeObjectForKey:@"SoundShouldRepeat"];
    }

    v13 = [v4 objectForKey:@"ToneAlertType"];
    v14 = [v13 integerValue];

    if (v14 == 13)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:17];
      [v7 unc_safeSetObject:v15 forKey:@"ToneAlertType"];
    }

    goto LABEL_16;
  }

  if (v6 != 5)
  {
    if (v6 > 6)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

LABEL_16:
  v16 = [v4 objectForKey:@"AppNotificationIdentifier"];
  v17 = [v16 length];

  if (!v17)
  {
    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];
    [v7 setObject:v19 forKey:@"AppNotificationIdentifier"];
  }

LABEL_18:
  v20 = [v4 objectForKey:@"AppNotificationAttachments"];
  if ([v20 count])
  {
    v60 = v6;
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v20, "count")}];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v59 = v20;
    obj = v20;
    v22 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v84;
      v25 = @"PushStore";
      v63 = *v84;
      v64 = v21;
      do
      {
        v26 = 0;
        v65 = v23;
        do
        {
          if (*v84 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v83 + 1) + 8 * v26);
          v28 = [v27 mutableCopy];
          v29 = [v27 objectForKey:@"AttachmentURL"];
          v30 = [v29 pathComponents];
          v31 = [v30 containsObject:v25];

          if (v31)
          {
            v69 = [v29 lastPathComponent];
            v77 = [v29 URLByDeletingLastPathComponent];
            v71 = [v77 lastPathComponent];
            v75 = [v77 URLByDeletingLastPathComponent];
            v73 = [v75 URLByDeletingLastPathComponent];
            v32 = [v73 URLByDeletingLastPathComponent];
            v33 = [v32 URLByDeletingLastPathComponent];
            v34 = [v33 URLByAppendingPathComponent:@"UserNotifications" isDirectory:1];
            v35 = [v34 URLByAppendingPathComponent:v71 isDirectory:1];
            v36 = [v35 URLByAppendingPathComponent:@"Attachments" isDirectory:1];
            [v36 URLByAppendingPathComponent:v69 isDirectory:0];
            v38 = v37 = v25;
            [v28 setObject:v38 forKey:@"AttachmentURL"];

            v25 = v37;
            v21 = v64;

            v24 = v63;
            v23 = v65;
          }

          [v21 addObject:v28];

          ++v26;
        }

        while (v23 != v26);
        v23 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
      }

      while (v23);
    }

    v7 = v61;
    [v61 setObject:v21 forKey:@"AppNotificationAttachments"];

    v4 = v62;
    v8 = 0x1E696A000;
    v20 = v59;
    v6 = v60;
  }

LABEL_30:
  if (v6 <= 7)
  {
    v39 = [v4 objectForKey:@"UNNotificationDefaultDestinations"];

    if (!v39)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationDefaultDestinations"];
    }

    v40 = [v4 objectForKey:{@"UNNotificationAlertDestination", v59}];

    if (!v40)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationAlertDestination"];
    }

    v41 = [v4 objectForKey:@"UNNotificationCarPlayDestination"];

    if (!v41)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationCarPlayDestination"];
    }

    goto LABEL_39;
  }

  if (v6 != 10)
  {
    if (v6 != 8)
    {
LABEL_43:
      v44 = [v4 objectForKey:{@"AppNotificationAttachments", v59}];
      if ([v44 count])
      {
        v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v44, "count")}];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        obja = v44;
        v70 = v44;
        v76 = [v70 countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v76)
        {
          v72 = *v80;
          do
          {
            for (i = 0; i != v76; ++i)
            {
              if (*v80 != v72)
              {
                objc_enumerationMutation(v70);
              }

              v46 = *(*(&v79 + 1) + 8 * i);
              v47 = [v46 mutableCopy];
              v48 = [v46 objectForKey:@"AttachmentURL"];
              v78 = [v48 lastPathComponent];
              v49 = [v48 URLByDeletingLastPathComponent];
              v50 = [v49 URLByDeletingLastPathComponent];

              v51 = [v50 lastPathComponent];
              v52 = [v50 URLByDeletingLastPathComponent];
              v53 = [v68 uniqueIdentifierForBundleIdentifier:v51];
              v54 = [v52 URLByAppendingPathComponent:v53 isDirectory:1];
              v55 = [v54 URLByAppendingPathComponent:@"Attachments" isDirectory:1];
              v56 = [v55 URLByAppendingPathComponent:v78 isDirectory:0];
              [v47 setObject:v56 forKey:@"AttachmentURL"];
              [v74 addObject:v47];
            }

            v76 = [v70 countByEnumeratingWithState:&v79 objects:v87 count:16];
          }

          while (v76);
        }

        v7 = v61;
        [v61 setObject:v74 forKey:@"AppNotificationAttachments"];

        v4 = v62;
        v8 = 0x1E696A000uLL;
        v44 = obja;
      }

      goto LABEL_53;
    }

LABEL_39:
    v42 = [v4 objectForKey:{@"UNNotificationLockScreenDestination", v59}];

    if (!v42)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationLockScreenDestination"];
    }

    v43 = [v4 objectForKey:@"UNNotificationNotificationCenterDestination"];

    if (!v43)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationNotificationCenterDestination"];
    }

    goto LABEL_43;
  }

LABEL_53:
  v57 = [*(v8 + 3480) numberWithUnsignedInteger:{7, v59}];
  [v7 unc_safeSetObject:v57 forKey:@"PresentationOptions"];

LABEL_54:

  return v7;
}

BOOL UNSNotificationRecordDictionaryValidation_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (UNSNotificationRecordDictionaryValidation_block_invoke_4_onceToken != -1)
  {
    UNSNotificationRecordDictionaryValidation_block_invoke_4_cold_1();
  }

  v3 = *&UNSNotificationRecordDictionaryValidation_block_invoke_4___overrideDataRetentionAge;
  v4 = [v2 objectForKey:@"AppNotificationCreationDate"];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  [v4 timeIntervalSinceNow];
  v7 = -v3;
  if (v3 <= 0.0)
  {
    v7 = -259200.0;
  }

  if (v6 >= v7)
  {
    v9 = [v2 objectForKey:@"AppNotificationIdentifier"];
    v8 = [v9 length] != 0;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  return v8;
}

void UNSNotificationRecordDictionaryValidation_block_invoke_5()
{
  v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.usernotifications"];
  [v1 doubleForKey:@"overrideDataRetentionAge"];
  UNSNotificationRecordDictionaryValidation_block_invoke_4___overrideDataRetentionAge = v0;
}

__CFString *UNSStringFromPipelineState(uint64_t a1)
{
  v1 = @"pending";
  if (a1 == 1)
  {
    v1 = @"completed";
  }

  if (a1 == 2)
  {
    return @"failed";
  }

  else
  {
    return v1;
  }
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7FE5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UNCPushSettingsDescription(char a1)
{
  if ((a1 & 4) != 0)
  {
    v2 = 65;
  }

  else
  {
    v2 = 45;
  }

  if ((a1 & 2) != 0)
  {
    v3 = 83;
  }

  else
  {
    v3 = 45;
  }

  if (a1)
  {
    v4 = 66;
  }

  else
  {
    v4 = 45;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[s:%c%c%c]", v4, v3, v2];
  if ((a1 & 0x20) != 0)
  {
    v6 = 65;
  }

  else
  {
    v6 = 45;
  }

  if ((a1 & 0x10) != 0)
  {
    v7 = 83;
  }

  else
  {
    v7 = 45;
  }

  if ((a1 & 8) != 0)
  {
    v8 = 66;
  }

  else
  {
    v8 = 45;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[e:%c%c%c]", v8, v7, v6];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v5, v9];

  return v10;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA805DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

UNCAttachmentRecord *UNNotificationAttachmentToUNCAttachmentRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(UNCAttachmentRecord);
  v4 = [v2 identifier];
  [(UNCAttachmentRecord *)v3 setIdentifier:v4];

  v5 = [v2 URL];
  [(UNCAttachmentRecord *)v3 setURL:v5];

  v6 = [v2 type];
  [(UNCAttachmentRecord *)v3 setType:v6];

  v7 = [v2 options];

  v8 = [v7 displayLocation];
  if (v8 == 1)
  {
    [(UNCAttachmentRecord *)v3 setHiddenFromDefaultExpandedView:1];
  }

  else if (v8 == 2)
  {
    [(UNCAttachmentRecord *)v3 setThumbnailHidden:1];
  }

  v9 = [v7 thumbnailGeneratorUserInfo];
  v10 = [v9 bs_safeDictionaryForKey:*MEMORY[0x1E69833C8]];
  [(UNCAttachmentRecord *)v3 setThumbnailClippingRect:v10];

  v11 = [v7 thumbnailGeneratorUserInfo];
  v12 = *MEMORY[0x1E69833D0];
  v13 = [v11 bs_safeNumberForKey:*MEMORY[0x1E69833D0]];
  [(UNCAttachmentRecord *)v3 setThumbnailFrameNumber:v13];

  v14 = [v7 thumbnailGeneratorUserInfo];
  v15 = [v14 bs_safeDictionaryForKey:v12];
  [(UNCAttachmentRecord *)v3 setThumbnailTimestamp:v15];

  return v3;
}

void sub_1DA8061A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA808E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v44 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

UNCNotificationSchedule *UNSDictionaryToUNCNotificationSchedule_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCNotificationSchedule alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA80A9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v27)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCRPairedVehicleManagerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85D7E48;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (CarKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CRPairedVehicleManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_1();
  }

  getCRPairedVehicleManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA812EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA81329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id UNNotificationToNotificationRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 request];
  v4 = (*(UNNotificationRequestToNotificationRecord + 2))(UNNotificationRequestToNotificationRecord, v3);
  v5 = [v2 date];

  [v4 setDate:v5];

  return v4;
}

UNSNotificationRecord *UNNotificationRequestToNotificationRecord_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 content];
  v4 = [v3 sound];
  v5 = [v3 icon];
  v6 = [v3 communicationContext];
  v7 = objc_alloc_init(UNSNotificationRecord);
  v8 = [v3 contentType];
  [(UNSNotificationRecord *)v7 setContentType:v8];

  v9 = [v6 identifier];
  [(UNSNotificationRecord *)v7 setCommunicationContextIdentifier:v9];

  v10 = [v6 associatedObjectUri];
  [(UNSNotificationRecord *)v7 setCommunicationContextAssociatedObjectUri:v10];

  v11 = [v6 bundleIdentifier];
  [(UNSNotificationRecord *)v7 setCommunicationContextBundleIdentifier:v11];

  v12 = [v6 displayName];
  [(UNSNotificationRecord *)v7 setCommunicationContextDisplayName:v12];

  v13 = [v6 recipients];
  v14 = [v13 bs_map:UNNotificationContactToUNCContactRecord];
  [(UNSNotificationRecord *)v7 setCommunicationContextRecipients:v14];

  v15 = [v6 sender];

  if (v15)
  {
    v16 = UNNotificationContactToUNCContactRecord;
    v17 = [v6 sender];
    v18 = v16[2](v16, v17);
    [(UNSNotificationRecord *)v7 setCommunicationContextSender:v18];
  }

  v19 = [v6 contentURL];
  [(UNSNotificationRecord *)v7 setCommunicationContextContentURL:v19];

  v20 = [v6 imageName];
  [(UNSNotificationRecord *)v7 setCommunicationContextImageName:v20];

  -[UNSNotificationRecord setCommunicationContextSystemImage:](v7, "setCommunicationContextSystemImage:", [v6 isSystemImage]);
  -[UNSNotificationRecord setCommunicationContextMentionsCurrentUser:](v7, "setCommunicationContextMentionsCurrentUser:", [v6 mentionsCurrentUser]);
  -[UNSNotificationRecord setCommunicationContextNotifyRecipientAnyway:](v7, "setCommunicationContextNotifyRecipientAnyway:", [v6 notifyRecipientAnyway]);
  -[UNSNotificationRecord setCommunicationContextReplyToCurrentUser:](v7, "setCommunicationContextReplyToCurrentUser:", [v6 isReplyToCurrentUser]);
  -[UNSNotificationRecord setCommunicationContextRecipientCount:](v7, "setCommunicationContextRecipientCount:", [v6 recipientCount]);
  -[UNSNotificationRecord setCommunicationContextCapabilities:](v7, "setCommunicationContextCapabilities:", [v6 capabilities]);
  -[UNSNotificationRecord setCommunicationContextBusinessCorrespondence:](v7, "setCommunicationContextBusinessCorrespondence:", [v6 isBusinessCorrespondence]);
  v21 = [v3 attachments];
  v22 = [v21 bs_map:UNNotificationAttachmentToUNCAttachmentRecord];
  [(UNSNotificationRecord *)v7 setAttachments:v22];

  v23 = [v3 badge];
  [(UNSNotificationRecord *)v7 setBadge:v23];

  v24 = [v3 body];
  objc_opt_class();
  LOBYTE(v22) = objc_opt_isKindOfClass();

  v25 = [v3 body];
  v26 = v25;
  if (v22)
  {
    v27 = [v25 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setBodyLocalizationKey:v27];

    v28 = [v3 body];
    v29 = [v28 un_localizedStringArguments];
    [(UNSNotificationRecord *)v7 setBodyLocalizationArguments:v29];

    v26 = [v3 body];
    v30 = [v26 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setBody:v30];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setBody:v25];
  }

  v31 = [v3 attributedBody];
  v32 = [v31 _un_attributedStringByKeepingOnlyAttachmentAttributes];
  [(UNSNotificationRecord *)v7 setAttributedBody:v32];

  v33 = [v3 categoryIdentifier];
  [(UNSNotificationRecord *)v7 setCategoryIdentifier:v33];

  v34 = [v3 threadIdentifier];
  [(UNSNotificationRecord *)v7 setThreadIdentifier:v34];

  v35 = [v3 date];
  [(UNSNotificationRecord *)v7 setContentDate:v35];

  -[UNSNotificationRecord setInterruptionLevel:](v7, "setInterruptionLevel:", [v3 interruptionLevel]);
  v36 = [v3 defaultActionTitle];
  objc_opt_class();
  LOBYTE(v32) = objc_opt_isKindOfClass();

  v37 = [v3 defaultActionTitle];
  v38 = v37;
  if (v32)
  {
    v39 = [v37 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setDefaultActionTitleLocalizationKey:v39];

    v38 = [v3 defaultActionTitle];
    v40 = [v38 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setDefaultActionTitle:v40];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setDefaultActionTitle:v37];
  }

  -[UNSNotificationRecord setHasDefaultAction:](v7, "setHasDefaultAction:", [v3 hasDefaultAction]);
  v41 = [v3 defaultActionURL];
  [(UNSNotificationRecord *)v7 setDefaultActionURL:v41];

  v42 = [v3 defaultActionBundleIdentifier];
  [(UNSNotificationRecord *)v7 setDefaultActionBundleIdentifier:v42];

  v43 = [v3 expirationDate];
  [(UNSNotificationRecord *)v7 setExpirationDate:v43];

  v44 = [v3 header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v46 = [v3 header];
  v47 = v46;
  if (isKindOfClass)
  {
    v48 = [v46 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setHeaderLocalizationKey:v48];

    v47 = [v3 header];
    v49 = [v47 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setHeader:v49];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setHeader:v46];
  }

  v50 = [v3 footer];
  objc_opt_class();
  v51 = objc_opt_isKindOfClass();

  v52 = [v3 footer];
  v53 = v52;
  if (v51)
  {
    v54 = [v52 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setFooterLocalizationKey:v54];

    v53 = [v3 footer];
    v55 = [v53 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setFooter:v55];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setFooter:v52];
  }

  v56 = [v2 identifier];
  [(UNSNotificationRecord *)v7 setIdentifier:v56];

  v57 = [v3 launchImageName];
  [(UNSNotificationRecord *)v7 setLaunchImageName:v57];

  -[UNSNotificationRecord setShouldHideDate:](v7, "setShouldHideDate:", [v3 shouldHideDate]);
  -[UNSNotificationRecord setShouldHideTime:](v7, "setShouldHideTime:", [v3 shouldHideTime]);
  -[UNSNotificationRecord setShouldIgnoreDoNotDisturb:](v7, "setShouldIgnoreDoNotDisturb:", [v3 shouldIgnoreDoNotDisturb]);
  -[UNSNotificationRecord setShouldIgnoreDowntime:](v7, "setShouldIgnoreDowntime:", [v3 shouldIgnoreDowntime]);
  -[UNSNotificationRecord setShouldSuppressScreenLightUp:](v7, "setShouldSuppressScreenLightUp:", [v3 shouldSuppressScreenLightUp]);
  -[UNSNotificationRecord setShouldAuthenticateDefaultAction:](v7, "setShouldAuthenticateDefaultAction:", [v3 shouldAuthenticateDefaultAction]);
  -[UNSNotificationRecord setShouldBackgroundDefaultAction:](v7, "setShouldBackgroundDefaultAction:", [v3 shouldBackgroundDefaultAction]);
  -[UNSNotificationRecord setShouldPreventNotificationDismissalAfterDefaultAction:](v7, "setShouldPreventNotificationDismissalAfterDefaultAction:", [v3 shouldPreventNotificationDismissalAfterDefaultAction]);
  -[UNSNotificationRecord setShouldShowSubordinateIcon:](v7, "setShouldShowSubordinateIcon:", [v3 shouldShowSubordinateIcon]);
  -[UNSNotificationRecord setShouldSuppressSyncDismissalWhenRemoved:](v7, "setShouldSuppressSyncDismissalWhenRemoved:", [v3 shouldSuppressSyncDismissalWhenRemoved]);
  -[UNSNotificationRecord setShouldUseRequestIdentifierForDismissalSync:](v7, "setShouldUseRequestIdentifierForDismissalSync:", [v3 shouldUseRequestIdentifierForDismissalSync]);
  -[UNSNotificationRecord setShouldPreemptPresentedNotification:](v7, "setShouldPreemptPresentedNotification:", [v3 shouldPreemptPresentedNotification]);
  -[UNSNotificationRecord setShouldDisplayActionsInline:](v7, "setShouldDisplayActionsInline:", [v3 shouldDisplayActionsInline]);
  v58 = [v3 subtitle];
  objc_opt_class();
  v59 = objc_opt_isKindOfClass();

  v60 = [v3 subtitle];
  v61 = v60;
  if (v59)
  {
    v62 = [v60 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setSubtitleLocalizationKey:v62];

    v63 = [v3 subtitle];
    v64 = [v63 un_localizedStringArguments];
    [(UNSNotificationRecord *)v7 setSubtitleLocalizationArguments:v64];

    v61 = [v3 subtitle];
    v65 = [v61 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setSubtitle:v65];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setSubtitle:v60];
  }

  v66 = [v3 title];
  objc_opt_class();
  v67 = objc_opt_isKindOfClass();

  v68 = [v3 title];
  v69 = v68;
  if (v67)
  {
    v70 = [v68 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setTitleLocalizationKey:v70];

    v71 = [v3 title];
    v72 = [v71 un_localizedStringArguments];
    [(UNSNotificationRecord *)v7 setTitleLocalizationArguments:v72];

    v69 = [v3 title];
    v73 = [v69 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setTitle:v73];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setTitle:v68];
  }

  v74 = [v3 summaryArgument];
  [(UNSNotificationRecord *)v7 setSummaryArgument:v74];

  -[UNSNotificationRecord setSummaryArgumentCount:](v7, "setSummaryArgumentCount:", [v3 summaryArgumentCount]);
  v75 = [v3 targetContentIdentifier];
  [(UNSNotificationRecord *)v7 setTargetContentIdentifier:v75];

  v76 = [v3 topicIdentifiers];
  [(UNSNotificationRecord *)v7 setTopicIdentifiers:v76];

  -[UNSNotificationRecord setRealertCount:](v7, "setRealertCount:", [v3 realertCount]);
  v77 = [v3 userInfo];
  [(UNSNotificationRecord *)v7 setUserInfo:v77];

  [v3 relevanceScore];
  [(UNSNotificationRecord *)v7 setRelevanceScore:?];
  v78 = [v3 filterCriteria];
  [(UNSNotificationRecord *)v7 setFilterCriteria:v78];

  -[UNSNotificationRecord setScreenCaptureProhibited:](v7, "setScreenCaptureProhibited:", [v3 screenCaptureProhibited]);
  v79 = [v3 speechLanguage];
  [(UNSNotificationRecord *)v7 setSpeechLanguage:v79];

  v80 = [v5 applicationIdentifier];
  [(UNSNotificationRecord *)v7 setIconApplicationIdentifier:v80];

  v81 = [v5 name];
  [(UNSNotificationRecord *)v7 setIconName:v81];

  v82 = [v5 path];
  [(UNSNotificationRecord *)v7 setIconPath:v82];

  v83 = [v5 systemImageName];
  [(UNSNotificationRecord *)v7 setIconSystemImageName:v83];

  v84 = [v5 uti];
  [(UNSNotificationRecord *)v7 setIconUTI:v84];

  v85 = [v5 dateComponents];
  [(UNSNotificationRecord *)v7 setIconDateComponents:v85];

  -[UNSNotificationRecord setIconShouldSuppressMask:](v7, "setIconShouldSuppressMask:", [v5 shouldSuppressMask]);
  v86 = [v3 accessoryImageName];
  [(UNSNotificationRecord *)v7 setAccessoryImageName:v86];

  v87 = [v3 interruptionLevel];
  v88 = v87;
  if (!v4 && v87 == 3)
  {
    v4 = [MEMORY[0x1E69832B8] defaultCriticalSound];
  }

  v89 = [v4 audioCategory];
  [(UNSNotificationRecord *)v7 setAudioCategory:v89];

  v90 = [v4 audioVolume];
  [(UNSNotificationRecord *)v7 setAudioVolume:v90];

  v91 = [v4 isCritical];
  if (v88 == 3)
  {
    v92 = 1;
  }

  else
  {
    v92 = v91;
  }

  [(UNSNotificationRecord *)v7 setHasCriticalAlertSound:v92];
  -[UNSNotificationRecord setShouldIgnoreAccessibilityDisabledVibrationSetting:](v7, "setShouldIgnoreAccessibilityDisabledVibrationSetting:", [v4 shouldIgnoreAccessibilityDisabledVibrationSetting]);
  -[UNSNotificationRecord setShouldIgnoreRingerSwitch:](v7, "setShouldIgnoreRingerSwitch:", [v4 shouldIgnoreRingerSwitch]);
  -[UNSNotificationRecord setShouldSoundRepeat:](v7, "setShouldSoundRepeat:", [v4 shouldRepeat]);
  [v4 maximumDuration];
  [(UNSNotificationRecord *)v7 setSoundMaximumDuration:?];
  -[UNSNotificationRecord setToneAlertType:](v7, "setToneAlertType:", [v4 alertType]);
  v93 = [v4 alertTopic];
  [(UNSNotificationRecord *)v7 setToneAlertTopic:v93];

  v94 = [v4 toneFileName];
  [(UNSNotificationRecord *)v7 setToneFileName:v94];

  v95 = [v4 toneFileURL];
  [(UNSNotificationRecord *)v7 setToneFileURL:v95];

  v96 = [v4 toneIdentifier];
  [(UNSNotificationRecord *)v7 setToneIdentifier:v96];

  -[UNSNotificationRecord setToneMediaLibraryItemIdentifier:](v7, "setToneMediaLibraryItemIdentifier:", [v4 toneMediaLibraryItemIdentifier]);
  v97 = [v4 vibrationIdentifier];
  [(UNSNotificationRecord *)v7 setVibrationIdentifier:v97];

  v98 = [v4 vibrationPatternFileURL];
  [(UNSNotificationRecord *)v7 setVibrationPatternFileURL:v98];

  v99 = [v2 trigger];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v100 = [v99 dateComponents];
    [(UNSNotificationRecord *)v7 setTriggerDateComponents:v100];

    -[UNSNotificationRecord setTriggerRepeats:](v7, "setTriggerRepeats:", [v99 repeats]);
    v101 = kUNNotificationTriggerTypeCalendar;
LABEL_33:
    [(UNSNotificationRecord *)v7 setTriggerType:*v101];
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v102 = [v99 date];
    [(UNSNotificationRecord *)v7 setTriggerDate:v102];

    v103 = [v99 timeZone];
    [(UNSNotificationRecord *)v7 setTriggerTimeZone:v103];

    v104 = [v99 repeatCalendar];
    v105 = [v104 calendarIdentifier];
    [(UNSNotificationRecord *)v7 setTriggerRepeatCalendarIdentifier:v105];

    -[UNSNotificationRecord setTriggerRepeatInterval:](v7, "setTriggerRepeatInterval:", [v99 repeatInterval]);
    -[UNSNotificationRecord setTriggerRepeats:](v7, "setTriggerRepeats:", [v99 repeats]);
    v101 = kUNNotificationTriggerTypeLocal;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v106 = [v99 region];
    [(UNSNotificationRecord *)v7 setTriggerRegion:v106];

    -[UNSNotificationRecord setTriggerRepeats:](v7, "setTriggerRepeats:", [v99 repeats]);
    v101 = kUNNotificationTriggerTypeLocation;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNSNotificationRecord *)v7 setTriggerType:@"Push"];
    v112 = &unk_1F5663668;
    if ([v99 isContentAvailable])
    {
      v113 = &unk_1F5663650;
    }

    else
    {
      v113 = &unk_1F5663668;
    }

    if ([v99 isMutableContent])
    {
      v112 = &unk_1F5663650;
    }

    [(UNSNotificationRecord *)v7 setContentAvailable:v113];
    [(UNSNotificationRecord *)v7 setMutableContent:v112];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v99 timeInterval];
      [(UNSNotificationRecord *)v7 setTriggerTimeInterval:?];
      -[UNSNotificationRecord setTriggerRepeats:](v7, "setTriggerRepeats:", [v99 repeats]);
      v101 = kUNNotificationTriggerTypeTimeInterval;
      goto LABEL_33;
    }
  }

LABEL_34:
  -[UNSNotificationRecord setAllowsDefaultDestinations:](v7, "setAllowsDefaultDestinations:", [v2 destinations] == 15);
  v107 = ([v2 destinations] & 2) != 0 || -[UNSNotificationRecord allowsDefaultDestinations](v7, "allowsDefaultDestinations");
  [(UNSNotificationRecord *)v7 setAllowsLockScreenDestination:v107];
  v108 = ([v2 destinations] & 4) != 0 || -[UNSNotificationRecord allowsDefaultDestinations](v7, "allowsDefaultDestinations");
  [(UNSNotificationRecord *)v7 setAllowsNotificationCenterDestination:v108];
  v109 = ([v2 destinations] & 1) != 0 || -[UNSNotificationRecord allowsDefaultDestinations](v7, "allowsDefaultDestinations");
  [(UNSNotificationRecord *)v7 setAllowsAlertDestination:v109];
  v110 = ([v2 destinations] & 8) != 0 || -[UNSNotificationRecord allowsDefaultDestinations](v7, "allowsDefaultDestinations");
  [(UNSNotificationRecord *)v7 setAllowsCarPlayDestination:v110];

  return v7;
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t _handleBKEnrollmentChange(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a2 _updateHasEnrolledPearlIdentities];
  }

  return result;
}

uint64_t sub_1DA819C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for UserNotificationsVendorTransaction(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA819CFC, 0, 0);
}

void sub_1DA819CFC()
{
  v31 = *(*(v0 + 16) + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_repository);
  v1 = [v31 allBundleIdentifiers];
  v2 = sub_1DA940BE4();

  v30 = *(v2 + 16);
  if (!v30)
  {
LABEL_16:

    v17 = v32[3];
    v18 = v32[4];
    v19 = v32[2];
    v20 = OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_continuationUUID;
    v21 = sub_1DA93FB24();
    (*(*(v21 - 8) + 16))(v18, v19 + v20, v21);
    type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
    swift_storeEnumTagMultiPayload();
    v22 = MEMORY[0x1E69E7CC0];
    v23 = sub_1DA847D80(MEMORY[0x1E69E7CC0]);
    v24 = v17[9];
    v25 = sub_1DA93FE74();
    (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
    v26 = (v18 + v17[5]);
    *v26 = 0;
    v26[1] = 0xE000000000000000;
    *(v18 + v17[6]) = v23;
    *(v18 + v17[7]) = v22;
    *(v18 + v17[8]) = 0;
    __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint), *(v19 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint + 24));
    sub_1DA90EE38(v18);
    sub_1DA81AA6C(v18, type metadata accessor for UserNotificationsVendorTransaction);

    v27 = v32[1];

    v27();
    return;
  }

  v3 = 0;
  v28 = v2;
  v29 = v2 + 32;
  while (v3 < *(v2 + 16))
  {
    v5 = (v29 + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    v8 = sub_1DA940A04();
    v9 = [v31 notificationRecordsForBundleIdentifier_];

    sub_1DA81AA20();
    v10 = sub_1DA940BE4();

    if (v10 >> 62)
    {
      v11 = sub_1DA941264();
      if (!v11)
      {
LABEL_15:

        v4 = MEMORY[0x1E69E7CC0];
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v33 = MEMORY[0x1E69E7CC0];
    sub_1DA941404();
    if (v11 < 0)
    {
      goto LABEL_20;
    }

    v12 = objc_opt_self();
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E1272460](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      v16 = [v12 updateWithNotificationRecord:v14 shouldSync:1];

      sub_1DA9413E4();
      sub_1DA941414();
      sub_1DA941424();
      sub_1DA9413F4();
    }

    while (v11 != v13);

    v4 = v33;
    v2 = v28;
LABEL_4:
    ++v3;
    sub_1DA81A0D0(v7, v6, v4);

    if (v3 == v30)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DA81A0D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a3;
  v7 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v10 = MEMORY[0x1EEE9AC00](v46);
  v44 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  v16 = OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_continuationUUID;
  v17 = sub_1DA93FB24();
  (*(*(v17 - 8) + 16))(v9, v3 + v16, v17);
  swift_storeEnumTagMultiPayload();
  v18 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_categoryRepositoryAggregator);
  v48 = v3;
  v19 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_settingsProvider + 8);
  sub_1DA93FE84();
  v50 = sub_1DA847D80(MEMORY[0x1E69E7CC0]);

  sub_1DA8F6BEC(a3, v18, a1, a2, &v50);

  sub_1DA81AACC(v9, v15, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v20 = v50;
  ObjectType = swift_getObjectType();
  v22 = *(v19 + 8);

  v23 = v22(a1, a2, ObjectType, v19);
  v24 = v46;
  v25 = v23;
  sub_1DA81AA6C(v9, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v26 = &v15[v24[5]];
  *v26 = a1;
  *(v26 + 1) = a2;
  *&v15[v24[6]] = v20;
  v27 = v24[7];

  v28 = v45;

  *&v15[v27] = v28;
  *&v15[v24[8]] = v25;
  if (qword_1ECBD46D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1DA9405A4();
  __swift_project_value_buffer(v29, qword_1ECBD46D8);
  v30 = v47;
  sub_1DA81AACC(v15, v47, type metadata accessor for UserNotificationsVendorTransaction);
  v31 = v48;

  v32 = sub_1DA940584();
  v33 = sub_1DA940EF4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50 = v35;
    *v34 = 136315394;
    v49 = v31;
    type metadata accessor for HistoricalNotificationsRequestProcessor(0);

    v36 = sub_1DA940A74();
    v38 = sub_1DA7AE6E8(v36, v37, &v50);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    sub_1DA81AACC(v30, v44, type metadata accessor for UserNotificationsVendorTransaction);
    v39 = sub_1DA940A74();
    v41 = v40;
    sub_1DA81AA6C(v30, type metadata accessor for UserNotificationsVendorTransaction);
    v42 = sub_1DA7AE6E8(v39, v41, &v50);

    *(v34 + 14) = v42;
    _os_log_impl(&dword_1DA7A9000, v32, v33, "%s sending: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v35, -1, -1);
    MEMORY[0x1E12739F0](v34, -1, -1);
  }

  else
  {

    sub_1DA81AA6C(v30, type metadata accessor for UserNotificationsVendorTransaction);
  }

  __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint), *(v31 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint + 24));
  sub_1DA90EE38(v15);
  return sub_1DA81AA6C(v15, type metadata accessor for UserNotificationsVendorTransaction);
}

uint64_t sub_1DA81A5F8()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_continuationUUID;
  v2 = sub_1DA93FB24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HistoricalNotificationsRequestProcessor(uint64_t a1)
{
  result = qword_1ECBD48F8;
  if (!qword_1ECBD48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA81A728(uint64_t a1)
{
  result = sub_1DA93FB24();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA81A8B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA81A8D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_1DA81A914(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1DA81A960()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD46D8);
  __swift_project_value_buffer(v0, qword_1ECBD46D8);
  return sub_1DA940594();
}

uint64_t sub_1DA81A9E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA940A14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DA81AA20()
{
  result = qword_1ECBD4C00;
  if (!qword_1ECBD4C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBD4C00);
  }

  return result;
}

uint64_t sub_1DA81AA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA81AACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t timeout<A, B>(until:tolerance:clock:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v12;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  v9 = sub_1DA9417D4();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA81AE00, 0, 0);
}

uint64_t sub_1DA81AE00()
{
  v1 = *(v0 + 88);
  v2 = swift_allocObject();
  *(v0 + 128) = v2;
  *(v2 + 16) = *(v0 + 72);
  *(v2 + 32) = v1;
  *(v2 + 40) = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1DA81AEF8;
  v4 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  return sub_1DA81B33C(v4, &unk_1DA958268, v2, v9, v7, v8, v6, v5);
}

uint64_t sub_1DA81AEF8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA81AFF4, 0, 0);
}

void sub_1DA81AFF4()
{
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[12];
    v3 = v0[3];
    (*(v0[13] + 16))(v0[14], v0[15], v2);
    sub_1DA81C9A8(v2, (v0 + 2), v3);
    (*(v0[13] + 8))(v0[15], v0[12]);

    v4 = v0[1];

    v4();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA81B168(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA7B7470;

  return v6(a1);
}

uint64_t sub_1DA81B260(uint64_t a1)
{
  v4 = *(v1 + 40);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7470;

  return sub_1DA81B168(a1, v4);
}

uint64_t sub_1DA81B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA81B374, 0, 0);
}

uint64_t sub_1DA81B374()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  v13 = *(v0 + 72);
  v5 = type metadata accessor for TimeoutState(0, *(v0 + 72), v3, v4);
  v6 = sub_1DA9417D4();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  *(v7 + 16) = v1;
  *(v7 + 24) = v13;
  *(v7 + 40) = v8;
  *(v7 + 56) = v9;
  *(v7 + 72) = v2;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_1DA81B4D4;
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DBF8](v11, v5, v6, 0, 0, &unk_1DA958300, v7, v5);
}

uint64_t sub_1DA81B4D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA81B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v19;
  v8[11] = v20;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v10 = type metadata accessor for TimeoutState(0, v19, a3, a4);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  sub_1DA941134();
  v8[15] = swift_task_alloc();
  v11 = sub_1DA940CB4();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = *(a8 - 8);
  v8[19] = v12;
  v8[20] = *(v12 + 64);
  v8[21] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v13 = sub_1DA941134();
  v8[22] = v13;
  v14 = *(v13 - 8);
  v8[23] = v14;
  v8[24] = *(v14 + 64);
  v8[25] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[26] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v8[27] = v16;
  v8[28] = *(v16 + 64);
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA81B8F8, 0, 0);
}

uint64_t sub_1DA81B8F8()
{
  v1 = v0[30];
  v19 = v0[29];
  v26 = v0[28];
  v28 = v0[27];
  v31 = v0[26];
  v22 = v0[25];
  v27 = v0[24];
  v29 = v0[23];
  v21 = v0[22];
  v25 = v0[21];
  v30 = v0[19];
  v2 = v0[11];
  v4 = v0[9];
  v3 = v0[10];
  v20 = v0[8];
  v18 = v0[7];
  v5 = v0[5];
  v17 = v0[6];
  v23 = v0[4];
  v6 = sub_1DA940D34();
  v16 = *(*(v6 - 8) + 56);
  v16(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v7[7] = v23;
  v7[8] = v5;
  v24 = sub_1DA940CD4();

  sub_1DA81C4AC(v1, &unk_1DA958318, v7, v24);
  sub_1DA81D190(v1);
  v16(v1, 1, 1, v6);
  (*(v28 + 16))(v19, v17, v31);
  (*(v29 + 16))(v22, v18, v21);
  (*(v30 + 16))(v25, v20, v4);
  v8 = (*(v28 + 80) + 56) & ~*(v28 + 80);
  v9 = (v26 + *(v29 + 80) + v8) & ~*(v29 + 80);
  v10 = (v27 + *(v30 + 80) + v9) & ~*(v30 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v4;
  *(v11 + 5) = v3;
  *(v11 + 6) = v2;
  (*(v28 + 32))(&v11[v8], v19, v31);
  (*(v29 + 32))(&v11[v9], v22, v21);
  (*(v30 + 32))(&v11[v10], v25, v4);
  sub_1DA81C4AC(v1, &unk_1DA958328, v11, v24);
  sub_1DA81D190(v1);
  sub_1DA940C94();
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_1DA81BCA0;
  v13 = v0[15];
  v14 = v0[16];

  return MEMORY[0x1EEE6D8A8](v13, 0, 0, v14);
}

uint64_t sub_1DA81BCA0()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA81BD9C, 0, 0);
}

uint64_t sub_1DA81BD9C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = (*(v3 + 48))(v1, 1, v2);
  if (v4 == 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8A8](v4, v5, v6, v7);
  }

  (*(v3 + 32))(v0[14], v1, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v0[14];
    v9 = *v8;
    if (v8[1])
    {
      v10 = v0[2];
      (*(v0[17] + 8))(v0[18], v0[16]);
      *v10 = v9;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
      sub_1DA9417D4();
      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

    if ((v9 & 1) == 0)
    {
      v17 = v0[2];
      (*(v0[17] + 8))(v0[18], v0[16]);
      sub_1DA81D404();
      *v17 = swift_allocError();
      goto LABEL_11;
    }

    v16 = swift_task_alloc();
    v0[31] = v16;
    *v16 = v0;
    v16[1] = sub_1DA81BCA0;
    v4 = v0[15];
    v7 = v0[16];
    v5 = 0;
    v6 = 0;

    return MEMORY[0x1EEE6D8A8](v4, v5, v6, v7);
  }

  v11 = v0[14];
  v12 = v0[2];
  (*(v0[17] + 8))(v0[18], v0[16]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  v13 = sub_1DA9417D4();
  (*(*(v13 - 8) + 32))(v12, v11, v13);
LABEL_12:
  type metadata accessor for TimeoutState(0, v0[10], v14, v15);
  sub_1DA940CC4();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1DA81C0A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a7;
  v7[4] = *(a7 - 8);
  v9 = swift_task_alloc();
  v7[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_1DA81C1FC;

  return v12(v9);
}

uint64_t sub_1DA81C1FC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1DA81C3E8;
  }

  else
  {
    v2 = sub_1DA81C310;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA81C310()
{
  v1 = v0[3];
  (*(v0[4] + 32))(v0[2], v0[5], v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  sub_1DA9417D4();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TimeoutState(0, v1, v2, v3);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DA81C3E8()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  sub_1DA9417D4();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TimeoutState(0, v1, v2, v3);
  swift_storeEnumTagMultiPayload();

  v4 = *(v0 + 8);

  return v4();
}

double sub_1DA81C4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - v11;
  sub_1DA81D458(a1, v22 - v11);
  v13 = sub_1DA940D34();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DA81D190(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1DA940C34();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DA940D24();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();

  return result;
}

uint64_t sub_1DA81C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a8;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1DA81C77C;

  return MEMORY[0x1EEE6DA68](a4, a5, a6, a7);
}

uint64_t sub_1DA81C77C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DA81C90C;
  }

  else
  {
    v2 = sub_1DA81C890;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA81C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v5 = v4[3];
  *v6 = 0;
  *(v6 + 8) = 0;
  type metadata accessor for TimeoutState(0, v5, a3, a4);
  swift_storeEnumTagMultiPayload();
  v7 = v4[1];

  return v7();
}

uint64_t sub_1DA81C90C()
{
  v3 = sub_1DA940E04();
  v4 = v0[5];
  if (v3)
  {

    v4 = 1;
  }

  v6 = v0[2];
  v5 = v0[3];
  *v6 = v4;
  *(v6 + 8) = (v3 & 1) == 0;
  type metadata accessor for TimeoutState(0, v5, v1, v2);
  swift_storeEnumTagMultiPayload();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1DA81C9A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t timeout<A>(until:tolerance:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a4;
  *(v8 + 72) = a6;
  *(v8 + 33) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  v9 = sub_1DA941474();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA81CB48, 0, 0);
}

uint64_t sub_1DA81CB48()
{
  v1 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1 & 1;
  sub_1DA941464();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  sub_1DA81CE28();
  *v2 = v0;
  v2[1] = sub_1DA81CC1C;
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 48);
  v9 = *(v0 + 40);

  return timeout<A, B>(until:tolerance:clock:operation:)(v9, v8, v0 + 16, v3, v6, v7, v4, v5);
}

uint64_t sub_1DA81CC1C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v5 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA81CDC4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1DA81CDC4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DA81CE28()
{
  result = qword_1ECBD4D30;
  if (!qword_1ECBD4D30)
  {
    sub_1DA941474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeadlineExceededError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeadlineExceededError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1DA81CF78(uint64_t a1, uint64_t a2)
{
  v13 = v2[2];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v9 = v2[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DA7B7660;

  return sub_1DA81B5E4(a1, a2, v6, v7, v8, v10, v9, v13);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA81D0B4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DA7B7660;

  return sub_1DA81C0A8(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t sub_1DA81D190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA81D1F8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v17 = v1[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  swift_getAssociatedTypeWitness();
  v9 = *(sub_1DA941134() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (v10 + *(v9 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DA7B7470;

  return sub_1DA81C6AC(a1, v12, v13, v1 + v7, v1 + v10, v1 + v11, v5, v17);
}

unint64_t sub_1DA81D404()
{
  result = qword_1ECBD4D38[0];
  if (!qword_1ECBD4D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBD4D38);
  }

  return result;
}

uint64_t sub_1DA81D458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA81D4C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA7B7568;

  return v6(a1);
}

uint64_t sub_1DA81D5C0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7660;

  return sub_1DA81D4C8(a1, v4);
}

void sub_1DA81D690(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  sub_1DA9417D4();
  if (v1 <= 0x3F)
  {
    sub_1DA81DA20(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1DA81D72C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 9;
  if (v3 + 1 > 9)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DA81D854(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 9)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 9;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_1DA81DA20(uint64_t a1)
{
  if (!qword_1ECBD4DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
    v1 = sub_1DA9417D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBD4DC0);
    }
  }
}

uint64_t sub_1DA81DAC4()
{
  v1 = sub_1DA93F834();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1DA9401F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NotificationPipelineAnalytics.Item(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA822E78(v0, v17, type metadata accessor for NotificationPipelineAnalytics.Item);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    return 0;
  }

  v28 = v2;
  (*(v12 + 32))(v14, v17, v11);
  sub_1DA940044();
  v19 = sub_1DA940004();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v21 = &qword_1ECBD4E08;
    v22 = &qword_1DA958750;
    v23 = v7;
  }

  else
  {
    sub_1DA93FFF4();
    (*(v20 + 8))(v7, v19);
    v24 = sub_1DA93F844();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v10, 1, v24) != 1)
    {
      sub_1DA93F814();
      (*(v25 + 8))(v10, v24);
      v26 = sub_1DA93F824();
      (*(v28 + 8))(v4, v1);
      (*(v12 + 8))(v14, v11);
      return v26;
    }

    (*(v12 + 8))(v14, v11);
    v21 = &qword_1ECBD4E10;
    v22 = &unk_1DA958758;
    v23 = v10;
  }

  sub_1DA7BA120(v23, v21, v22);
  return 0;
}

uint64_t sub_1DA81DF08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_1DA9401F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationPipelineAnalytics.Item(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA822E78(v0, v10, type metadata accessor for NotificationPipelineAnalytics.Item);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return 2;
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1DA940044();
  v11 = sub_1DA940004();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1DA7BA120(v3, &qword_1ECBD4E08, &qword_1DA958750);
    return 2;
  }

  v14 = sub_1DA93FFA4();
  (*(v5 + 8))(v7, v4);
  (*(v12 + 8))(v3, v11);
  return v14;
}

unint64_t sub_1DA81E190@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA82238C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA81E1BC(int a1)
{
  v2 = v1;
  v60 = a1;
  v56 = sub_1DA940534();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA9404F4();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E00, &unk_1DA958720);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - v7;
  v9 = type metadata accessor for LogSignpost(0);
  v63 = *(v9 - 1);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v14 = sub_1DA93FAF4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  v21 = OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_startDate;
  swift_beginAccess();
  sub_1DA822F48(v2 + v21, v13, &unk_1ECBD6530, &unk_1DA958820);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DA7BA120(v13, &unk_1ECBD6530, &unk_1DA958820);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD000000000000050, 0x80000001DA950C40);
    LOBYTE(v66) = *(v2 + 16);
    v22 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v22);

    sub_1DA84AB4C(v68, v69);

    v24 = 7;
    v25 = v2;
LABEL_19:
    *(v25 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_status) = v24;
    return result;
  }

  (*(v15 + 32))(v20, v13, v14);
  sub_1DA93FAE4();
  sub_1DA93F9D4();
  v27 = v26;
  v28 = *(v15 + 8);
  v28(v18, v14);
  sub_1DA93F9D4();
  v30 = v2 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration;
  *v30 = v27 - v29;
  *(v30 + 8) = 0;
  v31 = OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_signpost;
  swift_beginAccess();
  sub_1DA822F48(v2 + v31, v8, &qword_1ECBD4E00, &unk_1DA958720);
  v25 = v2;
  if (v63[6](v8, 1, v64) == 1)
  {
    sub_1DA7BA120(v8, &qword_1ECBD4E00, &unk_1DA958720);
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD00000000000004FLL, 0x80000001DA950CA0);
    v65[15] = *(v2 + 16);
    v32 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v32);

    sub_1DA84AB4C(v66, v67);

    result = (v28)(v20, v14);
    v24 = 7;
    goto LABEL_19;
  }

  v63 = v28;
  v33 = v61;
  sub_1DA822EE0(v8, v61, type metadata accessor for LogSignpost);
  v64 = *v33;
  v34 = *(v33 + 16);
  v35 = sub_1DA940514();
  v36 = v62;
  sub_1DA940544();
  v54 = sub_1DA941074();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {

    (*(v58 + 8))(v36, v59);
    (v63)(v20, v14);
    v38 = v33;
LABEL_18:
    result = sub_1DA822D50(v38, type metadata accessor for LogSignpost);
    v24 = v60;
    goto LABEL_19;
  }

  if ((v34 & 1) == 0)
  {
    if (v64)
    {
      v37 = v57;
LABEL_14:

      sub_1DA940574();

      v39 = v55;
      v40 = v56;
      v41 = (*(v55 + 88))(v37, v56) == *MEMORY[0x1E69E93E8];
      v53 = v20;
      if (v41)
      {
        v44 = 0;
        v43 = 0;
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v39 + 8))(v37, v40);
        v42 = "%s";
        v43 = 2;
        v44 = 1;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66 = v46;
      *v45 = v43;
      *(v45 + 1) = v44;
      *(v45 + 2) = 2080;
      v47 = sub_1DA941374();
      v49 = sub_1DA7AE6E8(v47, v48, &v66);

      *(v45 + 4) = v49;
      v50 = v62;
      v51 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v35, v54, v51, v64, v42, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1E12739F0](v46, -1, -1);
      MEMORY[0x1E12739F0](v45, -1, -1);

      (*(v58 + 8))(v50, v59);
      (v63)(v53, v14);
      v38 = v61;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v64 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v57;
  if ((v64 & 0xFFFFF800) != 0xD800)
  {
    if (v64 >> 16 <= 0x10)
    {
      v64 = v65;
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1DA81EA1C()
{
  sub_1DA7BA120(v0 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_signpost, &qword_1ECBD4E00, &unk_1DA958720);
  sub_1DA7BA120(v0 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_startDate, &unk_1ECBD6530, &unk_1DA958820);
  sub_1DA822D50(v0 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_logger, type metadata accessor for NotificationPipelineRequestLogger);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA81EAD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logged;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logged));
  if ((*(v5 + 4) & 1) == 0)
  {
    sub_1DA84AB4C(0xD000000000000048, 0x80000001DA950E30);
    v6 = sub_1DA940D34();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 1;
    sub_1DA8DB00C(0, 0, v4, &unk_1DA95D1A0, v7);
  }

  os_unfair_lock_unlock(v5);
  sub_1DA822D50(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_item, type metadata accessor for NotificationPipelineAnalytics.Item);
  v8 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_startDate;
  v9 = sub_1DA93FAF4();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  sub_1DA822D50(v1 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_signpost, type metadata accessor for LogSignpost);

  sub_1DA822D50(v1 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logger, type metadata accessor for NotificationPipelineRequestLogger);
  return v1;
}

uint64_t sub_1DA81ECFC()
{
  sub_1DA81EAD4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA81ED7C(uint64_t a1)
{
  result = type metadata accessor for NotificationPipelineAnalytics.Item(319);
  if (v2 <= 0x3F)
  {
    result = sub_1DA93FAF4();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LogSignpost(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for NotificationPipelineRequestLogger(319);
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_1DA81EF2C(uint64_t a1)
{
  sub_1DA81F088(319, qword_1EE113B80, type metadata accessor for LogSignpost);
  if (v1 <= 0x3F)
  {
    sub_1DA81F088(319, &qword_1EE114C80, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NotificationPipelineRequestLogger(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1DA81F088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DA941134();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DA81F0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1096) = a5;
  *(v5 + 800) = a4;
  v6 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  *(v5 + 808) = v6;
  *(v5 + 816) = *(v6 - 8);
  *(v5 + 824) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DF8, &qword_1DA965280);
  *(v5 + 832) = swift_task_alloc();
  *(v5 + 840) = swift_task_alloc();
  v7 = sub_1DA9401F4();
  *(v5 + 848) = v7;
  *(v5 + 856) = *(v7 - 8);
  *(v5 + 864) = swift_task_alloc();
  *(v5 + 872) = swift_task_alloc();
  *(v5 + 880) = swift_task_alloc();
  *(v5 + 888) = swift_task_alloc();
  type metadata accessor for NotificationPipelineAnalytics.Item(0);
  *(v5 + 896) = swift_task_alloc();
  *(v5 + 904) = swift_task_alloc();
  *(v5 + 912) = swift_task_alloc();
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = swift_task_alloc();
  *(v5 + 936) = swift_task_alloc();
  v8 = sub_1DA93FAF4();
  *(v5 + 944) = v8;
  *(v5 + 952) = *(v8 - 8);
  *(v5 + 960) = swift_task_alloc();
  v9 = sub_1DA940534();
  *(v5 + 968) = v9;
  *(v5 + 976) = *(v9 - 8);
  *(v5 + 984) = swift_task_alloc();
  v10 = sub_1DA9404F4();
  *(v5 + 992) = v10;
  *(v5 + 1000) = *(v10 - 8);
  *(v5 + 1008) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  *(v5 + 1016) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA81F418, 0, 0);
}

uint64_t sub_1DA81F418()
{
  v56 = v0;
  v1 = v0[100] + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logged;
  os_unfair_lock_lock(v1);
  if (*(v1 + 4) == 1)
  {
    v2 = v0[127];
    sub_1DA84AB4C(0xD000000000000032, 0x80000001DA9511F0);
    v3 = sub_1DA940D34();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0;
    sub_1DA8DB00C(0, 0, v2, &unk_1DA958748, v4);
  }

  else
  {
    *(v1 + 4) = 1;
  }

  v5 = v0[100];
  os_unfair_lock_unlock(v1);
  v6 = v5 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_signpost;
  type metadata accessor for LogSignpost(0);
  v7 = *v6;
  v8 = *(v6 + 16);
  v9 = sub_1DA940514();
  sub_1DA940544();
  v10 = sub_1DA941074();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v54 = v10;
  if (v8)
  {
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 99);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v7)
  {
LABEL_13:
    v15 = v0[123];
    v16 = v0[122];
    v17 = v0[121];

    sub_1DA940574();

    if ((*(v16 + 88))(v15, v17) == *MEMORY[0x1E69E93E8])
    {
      v18 = 0;
      v19 = 0;
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[122] + 8))(v0[123], v0[121]);
      v20 = "%s";
      v19 = 2;
      v18 = 1;
    }

    v21 = v0[126];
    v22 = v0[125];
    v53 = v0[124];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v55 = v24;
    *v23 = v19;
    *(v23 + 1) = v18;
    *(v23 + 2) = 2080;
    v25 = sub_1DA941374();
    v27 = sub_1DA7AE6E8(v25, v26, &v55);

    *(v23 + 4) = v27;
    v28 = sub_1DA9404D4();
    _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v9, v54, v28, v7, v20, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12739F0](v24, -1, -1);
    MEMORY[0x1E12739F0](v23, -1, -1);

    (*(v22 + 8))(v21, v53);
    goto LABEL_17;
  }

  __break(1u);
LABEL_8:
  v12 = v0[126];
  v13 = v0[125];
  v14 = v0[124];

  (*(v13 + 8))(v12, v14);
LABEL_17:
  v29 = v0[120];
  v30 = v0[119];
  v31 = v0[118];
  v32 = v0[117];
  v33 = v0[107];
  v34 = v0[106];
  v35 = v0[100];
  sub_1DA93FAE4();
  sub_1DA93F9D4();
  v37 = v36;
  (*(v30 + 8))(v29, v31);
  sub_1DA93F9D4();
  v39 = v37 - v38;
  v0[128] = sub_1DA940A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE0, &qword_1DA9586F0);
  inited = swift_initStackObject();
  v0[129] = inited;
  *(inited + 16) = xmmword_1DA958360;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 56) = 1684957547;
  *(inited + 64) = 0xE400000000000000;
  v41 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_item;
  v0[130] = OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_item;
  sub_1DA822E78(v35 + v41, v32, type metadata accessor for NotificationPipelineAnalytics.Item);
  v42 = *(v33 + 48);
  v0[131] = v42;
  v0[132] = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v43 = 1;
  if (v42(v32, 1, v34) != 1)
  {
    sub_1DA822D50(v0[117], type metadata accessor for NotificationPipelineAnalytics.Item);
    v43 = 0;
  }

  v44 = v0[116];
  v45 = v0[106];
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 80) = 0x6449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  sub_1DA822E78(v35 + v41, v44, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v42(v44, 1, v45) == 1)
  {
    v46 = 0xEF4445544E454D45;
    v47 = 0x4C504D4920544F4ELL;
  }

  else
  {
    v48 = v0[111];
    v49 = v0[107];
    v50 = v0[106];
    (*(v49 + 32))(v48, v0[116], v50);
    v47 = sub_1DA940014();
    v46 = v51;
    (*(v49 + 8))(v48, v50);
  }

  v0[133] = v46;
  v52 = swift_task_alloc();
  v0[134] = v52;
  *v52 = v0;
  v52[1] = sub_1DA81FA78;

  return sub_1DA820D9C(v47, v46);
}

uint64_t sub_1DA81FA78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1080) = a1;
  *(v3 + 1088) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DA81FB9C, 0, 0);
}

uint64_t sub_1DA81FB9C()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 920);
  v5 = *(v0 + 848);
  v6 = *(v0 + 800);
  v7 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v8 = sub_1DA940A04();

  v9 = [v7 initWithString_];

  v3[12] = v9;
  v3[13] = 0x6874706564;
  v3[14] = 0xE500000000000000;
  sub_1DA822E78(v6 + v2, v4, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v1(v4, 1, v5) == 1)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    sub_1DA822D50(*(v0 + 920), type metadata accessor for NotificationPipelineAnalytics.Item);
    v10 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  v11 = *(v0 + 1048);
  v12 = *(v0 + 1040);
  v13 = *(v0 + 1032);
  v14 = *(v0 + 912);
  v15 = *(v0 + 848);
  v16 = *(v0 + 800);
  v13[15] = v10;
  v13[16] = 0x656C7469546D7573;
  v13[17] = 0xEF736874676E654CLL;
  sub_1DA822E78(v16 + v12, v14, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v11(v14, 1, v15) == 1)
  {
    v17 = 0;
  }

  else
  {
    (*(*(v0 + 856) + 32))(*(v0 + 880), *(v0 + 912), *(v0 + 848));
    sub_1DA940144();
    if (v18)
    {
      v17 = sub_1DA940AC4();
    }

    else
    {
      v17 = 0;
    }

    (*(*(v0 + 856) + 8))(*(v0 + 880), *(v0 + 848));
  }

  v19 = *(v0 + 1048);
  v20 = *(v0 + 1040);
  v21 = *(v0 + 1032);
  v22 = *(v0 + 904);
  v23 = *(v0 + 848);
  v24 = *(v0 + 800);
  v21[18] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v21[19] = 0xD000000000000012;
  v21[20] = 0x80000001DA950EA0;
  sub_1DA822E78(v24 + v20, v22, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v19(v22, 1, v23) == 1)
  {
    v25 = 0;
  }

  else
  {
    (*(*(v0 + 856) + 32))(*(v0 + 872), *(v0 + 904), *(v0 + 848));
    sub_1DA9401E4();
    if (v26)
    {
      v25 = sub_1DA940AC4();
    }

    else
    {
      v25 = 0;
    }

    (*(*(v0 + 856) + 8))(*(v0 + 872), *(v0 + 848));
  }

  v27 = *(v0 + 1048);
  v28 = *(v0 + 1040);
  v29 = *(v0 + 1032);
  v30 = *(v0 + 896);
  v31 = *(v0 + 848);
  v32 = *(v0 + 800);
  *(v29 + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((v29 + 176), "sumBodyLengths");
  *(v29 + 191) = -18;
  sub_1DA822E78(v32 + v28, v30, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v27(v30, 1, v31) == 1)
  {
    v33 = 0;
    v34 = &selRef_bulletinGroupingSetting;
    v35 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
    v36 = 0x1E695D000;
    v37 = 0x1E696A000;
  }

  else
  {
    (*(*(v0 + 856) + 32))(*(v0 + 864), *(v0 + 896), *(v0 + 848));
    sub_1DA940134();
    v34 = &selRef_bulletinGroupingSetting;
    v36 = 0x1E695D000uLL;
    if (v38)
    {
      v33 = sub_1DA940AC4();
    }

    else
    {
      v33 = 0;
    }

    v35 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
    v37 = 0x1E696A000uLL;
    (*(*(v0 + 856) + 8))(*(v0 + 864), *(v0 + 848));
  }

  v39 = *(v0 + 1032);
  v39[24] = [objc_allocWithZone(*(v37 + 3480)) v35[396]];
  v39[25] = 0xD000000000000014;
  v39[26] = 0x80000001DA950A90;
  v40 = sub_1DA81DAC4();
  if (v41)
  {
    v42 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  else
  {
    v42 = [objc_allocWithZone(*(v37 + 3480)) v35[396]];
  }

  v43 = *(v0 + 1032);
  v43[27] = v42;
  v43[28] = 0x746E656772557369;
  v43[29] = 0xE800000000000000;
  v44 = sub_1DA81DF08();
  if (v44 == 2)
  {
    v45 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  else
  {
    v45 = [objc_allocWithZone(*(v37 + 3480)) initWithBool_];
  }

  v46 = *(v0 + 1032);
  v47 = *(v0 + 1096);
  v48 = *(v0 + 800);
  v46[30] = v45;
  v46[31] = 0x737574617473;
  v46[32] = 0xE600000000000000;
  v46[33] = [objc_allocWithZone(*(v37 + 3480)) v35[396]];
  v46[34] = 0x6E6F69746361;
  v46[35] = 0xE600000000000000;
  v46[36] = [objc_allocWithZone(*(v37 + 3480)) v35[396]];
  v46[37] = 0xD00000000000001ALL;
  v46[38] = 0x80000001DA950EC0;
  v49 = *(v48 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_steps);
  if (*(v49 + 16) && (v50 = sub_1DA7BB33C(0), (v51 & 1) != 0) && (v52 = *(*(v49 + 56) + 8 * v50) + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration, (*(v52 + 8) & 1) == 0))
  {
    v53 = [objc_allocWithZone(*(v37 + 3480)) initWithDouble_];
  }

  else
  {
    v53 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v54 = *(v0 + 1032);
  v54[39] = v53;
  v54[40] = 0xD000000000000018;
  v54[41] = 0x80000001DA950EE0;
  if (*(v49 + 16) && (v55 = sub_1DA7BB33C(0), (v56 & 1) != 0))
  {
    v57 = [objc_allocWithZone(*(v37 + 3480)) v35[396]];
  }

  else
  {
    v57 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v58 = *(v0 + 1032);
  v58[42] = v57;
  v58[43] = 0xD00000000000001ALL;
  v58[44] = 0x80000001DA950F00;
  if (*(v49 + 16) && (v59 = sub_1DA7BB33C(1), (v60 & 1) != 0) && (v61 = *(*(v49 + 56) + 8 * v59) + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration, (*(v61 + 8) & 1) == 0))
  {
    v62 = [objc_allocWithZone(*(v37 + 3480)) initWithDouble_];
  }

  else
  {
    v62 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v63 = *(v0 + 1032);
  v63[45] = v62;
  v63[46] = 0xD000000000000018;
  v63[47] = 0x80000001DA950F20;
  if (*(v49 + 16) && (v64 = sub_1DA7BB33C(1), (v65 & 1) != 0))
  {
    v66 = [objc_allocWithZone(*(v37 + 3480)) v35[396]];
  }

  else
  {
    v66 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v67 = *(v0 + 1032);
  v67[48] = v66;
  v67[49] = 0xD00000000000001CLL;
  v67[50] = 0x80000001DA950F40;
  if (*(v49 + 16) && (v68 = sub_1DA7BB33C(2), (v69 & 1) != 0) && (v70 = *(*(v49 + 56) + 8 * v68) + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration, (*(v70 + 8) & 1) == 0))
  {
    v71 = [objc_allocWithZone(*(v37 + 3480)) initWithDouble_];
  }

  else
  {
    v71 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v72 = *(v0 + 1032);
  v72[51] = v71;
  v72[52] = 0xD00000000000001ALL;
  v72[53] = 0x80000001DA950F60;
  if (*(v49 + 16) && (v73 = sub_1DA7BB33C(2), (v74 & 1) != 0))
  {
    v75 = [objc_allocWithZone(*(v37 + 3480)) v35[396]];
  }

  else
  {
    v75 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v76 = *(v0 + 1032);
  v77 = *(v0 + 800);
  v76[54] = v75;
  v76[55] = 0xD000000000000023;
  v76[56] = 0x80000001DA950F80;
  v78 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics;
  v79 = *(v77 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics);
  if (v79)
  {
    v80 = *(v0 + 840);
    v81 = *(v0 + 816);
    v82 = *(v0 + 808);
    v83 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval;
    swift_beginAccess();
    sub_1DA822F48(v79 + v83, v80, &qword_1ECBD4DF8, &qword_1DA965280);
    v84 = (*(v81 + 48))(v80, 1, v82);
    v85 = *(v0 + 840);
    if (!v84)
    {
      v87 = *(v0 + 824);
      v88 = *(v0 + 840);
      sub_1DA822E78(v85, v87, type metadata accessor for IntelligenceServiceAnalytics.Interval);
      sub_1DA7BA120(v88, &qword_1ECBD4DF8, &qword_1DA965280);
      sub_1DA93F9D4();
      v90 = v89;
      sub_1DA93F9D4();
      v92 = v91;
      sub_1DA822D50(v87, type metadata accessor for IntelligenceServiceAnalytics.Interval);
      v86 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v36 = 0x1E695D000uLL;
      goto LABEL_57;
    }

    sub_1DA7BA120(v85, &qword_1ECBD4DF8, &qword_1DA965280);
    v36 = 0x1E695D000uLL;
  }

  v86 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
LABEL_57:
  v93 = *(v0 + 1032);
  v93[57] = v86;
  v93[58] = 0xD000000000000026;
  v93[59] = 0x80000001DA950FB0;
  v94 = *(v77 + v78);
  if (v94 && *(v94 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorDomain + 8))
  {
    v95 = objc_allocWithZone(MEMORY[0x1E696AEC0]);

    v96 = sub_1DA940A04();
    v97 = [v95 initWithString_];
  }

  else
  {
    v97 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v98 = *(v0 + 1032);
  v98[60] = v97;
  v98[61] = 0xD000000000000025;
  v98[62] = 0x80000001DA950FE0;
  v99 = *(v77 + v78);
  if (v99 && *(v99 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorClass + 8))
  {
    v100 = objc_allocWithZone(MEMORY[0x1E696AEC0]);

    v101 = sub_1DA940A04();
    v102 = [v100 initWithString_];
  }

  else
  {
    v102 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v103 = *(v0 + 1032);
  v103[63] = v102;
  v103[64] = 0xD000000000000024;
  v103[65] = 0x80000001DA951010;
  v104 = *(v77 + v78);
  if (v104 && *(v104 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorCode + 8))
  {
    v105 = objc_allocWithZone(MEMORY[0x1E696AEC0]);

    v106 = sub_1DA940A04();
    v107 = [v105 initWithString_];
  }

  else
  {
    v107 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v108 = *(v0 + 1032);
  v108[66] = v107;
  v108[67] = 0xD00000000000002BLL;
  v108[68] = 0x80000001DA951040;
  v109 = *(v77 + v78);
  if (v109)
  {
    v110 = *(v0 + 832);
    v111 = *(v0 + 816);
    v112 = *(v0 + 808);
    v113 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval;
    swift_beginAccess();
    sub_1DA822F48(v109 + v113, v110, &qword_1ECBD4DF8, &qword_1DA965280);
    v114 = (*(v111 + 48))(v110, 1, v112);
    v115 = *(v0 + 832);
    if (!v114)
    {
      v117 = *(v0 + 824);
      v118 = *(v0 + 832);
      sub_1DA822E78(v115, v117, type metadata accessor for IntelligenceServiceAnalytics.Interval);
      sub_1DA7BA120(v118, &qword_1ECBD4DF8, &qword_1DA965280);
      sub_1DA93F9D4();
      v120 = v119;
      sub_1DA93F9D4();
      v122 = v121;
      sub_1DA822D50(v117, type metadata accessor for IntelligenceServiceAnalytics.Interval);
      v116 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v36 = 0x1E695D000uLL;
      goto LABEL_74;
    }

    sub_1DA7BA120(v115, &qword_1ECBD4DF8, &qword_1DA965280);
    v36 = 0x1E695D000uLL;
  }

  v116 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
LABEL_74:
  v123 = *(v0 + 1032);
  v123[69] = v116;
  v123[70] = 0xD000000000000033;
  v123[71] = 0x80000001DA951070;
  v123[72] = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  v123[73] = 0xD000000000000032;
  v123[74] = 0x80000001DA9510B0;
  v124 = *(v77 + v78);
  if (v124 && (v125 = (v124 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryStatus), (v125[1] & 1) == 0))
  {
    v126 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v35[396]];
  }

  else
  {
    v126 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v127 = *(v0 + 1032);
  v127[75] = v126;
  v127[76] = 0xD00000000000002CLL;
  v127[77] = 0x80000001DA9510F0;
  v128 = *(v77 + v78);
  if (v128 && (v129 = (v128 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_urgencyStatus), (v129[1] & 1) == 0))
  {
    v130 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v35[396]];
  }

  else
  {
    v130 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v131 = *(v0 + 1032);
  v131[78] = v130;
  v131[79] = 0xD000000000000027;
  v131[80] = 0x80000001DA951120;
  v132 = *(v77 + v78);
  if (v132 && (v133 = v132 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryTopLineLength, (*(v133 + 8) & 1) == 0))
  {
    v134 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v35[396]];
  }

  else
  {
    v134 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v135 = *(v0 + 1032);
  v135[81] = v134;
  v135[82] = 0xD00000000000001ELL;
  v135[83] = 0x80000001DA951150;
  v136 = *(v77 + v78);
  if (v136 && (v137 = *(v136 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_isHighlight), v137 != 2))
  {
    v138 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  else
  {
    v138 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v139 = *(v0 + 1032);
  v139[84] = v138;
  v139[85] = 0xD000000000000042;
  v139[86] = 0x80000001DA951170;
  v140 = *(v77 + v78);
  if (v140 && (v141 = *(v140 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_notWaitingForResultBecauseImportantNotification), v141 != 2))
  {
    v142 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  else
  {
    v142 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v143 = *(v0 + 1032);
  v143[87] = v142;
  v143[88] = 0xD000000000000026;
  v143[89] = 0x80000001DA9511C0;
  v144 = *(v77 + v78);
  if (v144 && (v145 = *(v144 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexSkippingReason), v145 != 9))
  {
    v146 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v35[396]];
  }

  else
  {
    v146 = [objc_allocWithZone(*(v36 + 4016)) v34[296]];
  }

  v147 = *(v0 + 1032);
  v148 = *(v0 + 1024);
  *(v147 + 720) = v146;
  sub_1DA847D94(v147);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE8, &qword_1DA9586F8);
  swift_arrayDestroy();
  sub_1DA822D04();
  v149 = sub_1DA940964();

  AnalyticsSendEvent();

  v150 = *(v0 + 8);

  return v150();
}

uint64_t sub_1DA820D9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA820DBC, 0, 0);
}

uint64_t sub_1DA820DBC()
{
  sub_1DA9404A4();
  v0[4] = sub_1DA940494();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DA820E6C;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x1EEE2EF60](v3, v2);
}

uint64_t sub_1DA820E6C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA820FD8, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1DA820FD8()
{

  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE11AD90);
  v3 = v1;
  v4 = sub_1DA940584();
  v5 = sub_1DA940F14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "Failed to get redacted bundleId. %@", v7, 0xCu);
    sub_1DA7BA120(v8, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v8, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12(0xD000000000000013, 0x80000001DA950C20);
}

uint64_t sub_1DA821190(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x46654D6863746163;
    v5 = 1935764835;
    if (a1 != 2)
    {
      v5 = 0x6C61636974697263;
    }

    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    if (a1 != 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000012;
    if (a1 != 4)
    {
      v2 = 0x437472656C416F6ELL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DA8212CC()
{
  v1 = *v0;
  sub_1DA941764();
  MEMORY[0x1E1272850](v1);
  return sub_1DA941794();
}

uint64_t sub_1DA821314(uint64_t a1)
{
  v2 = *v1;
  sub_1DA941764();
  MEMORY[0x1E1272850](v2);
  return sub_1DA941794();
}

unint64_t sub_1DA821358@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA822CF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA82138C()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval;
  v2 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryTopLineLength;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_isHighlight) = 2;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_notWaitingForResultBecauseImportantNotification) = 2;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexSkippingReason) = 9;
  v5 = v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryStatus;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_urgencyStatus;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorDomain);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorClass);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorCode);
  *v9 = 0;
  v9[1] = 0;
  return v0;
}

uint64_t sub_1DA8214C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DA93F8B4();
  v4 = [v3 domain];
  v5 = sub_1DA940A14();
  v7 = v6;

  v8 = (v2 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorDomain);
  *v8 = v5;
  v8[1] = v7;

  [v3 code];
  v9 = sub_1DA941614();
  v10 = (v2 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorCode);
  *v10 = v9;
  v10[1] = v11;

  swift_getErrorValue();
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DF0, &unk_1DA958710);
  v12 = sub_1DA940A74();
  v14 = v13;

  v15 = (v2 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorClass);
  *v15 = v12;
  v15[1] = v14;
}

uint64_t sub_1DA8215FC()
{
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval, &qword_1ECBD4DF8, &qword_1DA965280);
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval, &qword_1ECBD4DF8, &qword_1DA965280);

  return swift_deallocClassInstance();
}

void sub_1DA821704(uint64_t a1)
{
  sub_1DA81F088(319, qword_1EE111A38, type metadata accessor for IntelligenceServiceAnalytics.Interval);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DA82180C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceServiceAnalytics.IndexSkippingReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceServiceAnalytics.IndexSkippingReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DA8219BC(uint64_t a1)
{
  result = sub_1DA93FAF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationPipelineAnalytics.StepAnalytics.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationPipelineAnalytics.StepAnalytics.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationPipelineAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationPipelineAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DA821CF0(uint64_t a1)
{
  v1 = sub_1DA9401F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1DA821D4C()
{
  result = qword_1EE111580;
  if (!qword_1EE111580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111580);
  }

  return result;
}

unint64_t sub_1DA821DA4()
{
  result = qword_1ECBD4DD0;
  if (!qword_1ECBD4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4DD0);
  }

  return result;
}

unint64_t sub_1DA821DFC()
{
  result = qword_1ECBD4DD8;
  if (!qword_1ECBD4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4DD8);
  }

  return result;
}

uint64_t sub_1DA821E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 136) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DA821E74, 0, 0);
}

uint64_t sub_1DA821E74()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_1DA82208C;
    v3 = *(v0 + 96);

    return sub_1DA820D9C(v3, v1);
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = sub_1DA940A04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE0, &qword_1DA9586F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA958370;
    *(inited + 32) = 0x6575737369;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 56) = 0x6449656C646E7562;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    sub_1DA847D94(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE8, &qword_1DA9586F8);
    swift_arrayDestroy();
    sub_1DA822D04();
    v8 = sub_1DA940964();

    AnalyticsSendEvent();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1DA82208C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DA82218C, 0, 0);
}

uint64_t sub_1DA82218C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = sub_1DA940A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE0, &qword_1DA9586F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA958370;
  *(inited + 32) = 0x6575737369;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0x6449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  if (v1)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v6 = sub_1DA940A04();
    v7 = [v5 initWithString_];
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(inited + 72) = v7;
  sub_1DA847D94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE8, &qword_1DA9586F8);
  swift_arrayDestroy();
  sub_1DA822D04();
  v8 = sub_1DA940964();

  AnalyticsSendEvent();

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1DA82238C(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t sub_1DA82239C(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v72 = a4;
  v68 = a2;
  v65 = a1;
  v74 = sub_1DA93FAF4();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NotificationPipelineAnalytics.Item(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationPipelineRequestLogger(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA9404F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - v15;
  v17 = sub_1DA9405A4();
  isUniquelyReferenced_nonNull_native = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DA940524();
  v71 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for LogSignpost(0);
  v63 = *(v75 - 8);
  v24 = MEMORY[0x1EEE9AC00](v75);
  v64 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v70 = (&v61 - v26);
  if (qword_1EE110E38 != -1)
  {
LABEL_25:
    swift_once();
  }

  v27 = __swift_project_value_buffer(v17, qword_1EE11AD78);
  (*(isUniquelyReferenced_nonNull_native + 16))(v20, v27, v17);
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v28 = sub_1DA940514();
  v29 = sub_1DA941084();
  if (sub_1DA941124())
  {
    v30 = swift_slowAlloc();
    v62 = v11;
    v31 = v21;
    v32 = v14;
    v33 = a3;
    v34 = v10;
    v35 = v30;
    *v30 = 0;
    v36 = sub_1DA9404D4();
    _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v28, v29, v36, "NotificationPipeline", "", v35, 2u);
    v37 = v35;
    v10 = v34;
    a3 = v33;
    v14 = v32;
    v21 = v31;
    v11 = v62;
    MEMORY[0x1E12739F0](v37, -1, -1);
  }

  (*(v11 + 16))(v14, v16, v10);
  sub_1DA940564();
  swift_allocObject();
  v38 = sub_1DA940554();
  (*(v11 + 8))(v16, v10);
  v39 = v70;
  v40 = v71;
  *v70 = "NotificationPipeline";
  v39[1] = 20;
  *(v39 + 16) = 2;
  v39[3] = v38;
  (v40[4])(v39 + *(v75 + 24), v23, v21);
  v11 = *(a3 + 16);
  if (v11)
  {
    v20 = (a3 + 32);
    v71 = (v63 + 56);
    v21 = (v69 + 56);
    v23 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      sub_1DA7BABAC(v20, v77);
      __swift_project_boxed_opaque_existential_1(v77, v77[3]);
      swift_getDynamicType();
      v41 = (*(v77[4] + 8))();
      if (v41 == 4)
      {
        goto LABEL_7;
      }

      v16 = v41;
      v42 = v73;
      sub_1DA822E78(v72, v73, type metadata accessor for NotificationPipelineRequestLogger);
      type metadata accessor for NotificationPipelineAnalytics.StepAnalytics(0);
      v14 = swift_allocObject();
      (*v71)(&v14[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_signpost], 1, 1, v75);
      (*v21)(&v14[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_startDate], 1, 1, v74);
      v43 = &v14[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration];
      *v43 = 0;
      v43[8] = 1;
      v14[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_status] = 5;
      v14[16] = v16;
      sub_1DA822EE0(v42, &v14[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_logger], type metadata accessor for NotificationPipelineRequestLogger);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v23;
      v17 = v23;
      a3 = sub_1DA7BB33C(v16);
      v45 = v23[2];
      v46 = (v44 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = v44;
      if (v23[3] >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v23 = v76;
          if (v44)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v17 = &v76;
          sub_1DA85FBB8();
          v23 = v76;
          if (v10)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_1DA85B10C(v47, isUniquelyReferenced_nonNull_native);
        v17 = v76;
        v48 = sub_1DA7BB33C(v16);
        if ((v10 & 1) != (v49 & 1))
        {
          result = sub_1DA9416E4();
          __break(1u);
          return result;
        }

        a3 = v48;
        v23 = v76;
        if (v10)
        {
LABEL_6:
          *(v23[7] + 8 * a3) = v14;

LABEL_7:
          __swift_destroy_boxed_opaque_existential_1(v77);
          goto LABEL_8;
        }
      }

      v23[(a3 >> 6) + 8] |= 1 << a3;
      *(v23[6] + a3) = v16;
      *(v23[7] + 8 * a3) = v14;
      __swift_destroy_boxed_opaque_existential_1(v77);
      v50 = v23[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_24;
      }

      v23[2] = v52;
LABEL_8:
      v20 += 40;
      if (!--v11)
      {
        goto LABEL_22;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC8];
LABEL_22:
  v53 = v66;
  sub_1DA822E78(v65, v66, type metadata accessor for NotificationPipelineAnalytics.Item);
  v54 = v67;
  sub_1DA93FAE4();
  v55 = v70;
  v56 = v64;
  sub_1DA822E78(v70, v64, type metadata accessor for LogSignpost);
  v57 = v73;
  sub_1DA822E78(v72, v73, type metadata accessor for NotificationPipelineRequestLogger);
  type metadata accessor for NotificationPipelineAnalytics(0);
  v58 = swift_allocObject();
  *(v58 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics) = 0;
  v59 = v58 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logged;
  *v59 = 0;
  *(v59 + 4) = 0;
  sub_1DA822D50(v55, type metadata accessor for LogSignpost);
  sub_1DA822EE0(v53, v58 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_item, type metadata accessor for NotificationPipelineAnalytics.Item);
  *(v58 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_steps) = v23;
  (*(v69 + 32))(v58 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_startDate, v54, v74);
  sub_1DA822EE0(v56, v58 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_signpost, type metadata accessor for LogSignpost);
  *(v58 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_action) = v68;
  sub_1DA822EE0(v57, v58 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logger, type metadata accessor for NotificationPipelineRequestLogger);
  return v58;
}

unint64_t sub_1DA822CF4(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_1DA822D04()
{
  result = qword_1EE110B70;
  if (!qword_1EE110B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE110B70);
  }

  return result;
}

uint64_t sub_1DA822D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA822DB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7660;

  return sub_1DA821E50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DA822E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA822EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA822F48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DA822FF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA821E50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DA8230D4()
{
  v1 = v0;
  v13 = sub_1DA940FC4();
  v2 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DA7AC344();
  v12[0] = "queue_migrations";
  v12[1] = v7;
  sub_1DA940824();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  *(v0 + 16) = sub_1DA941004();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_nextTimerFireDate;
  v9 = sub_1DA93FAF4();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer) = 0;
  v10 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  *(v1 + v10) = sub_1DA847DA8(MEMORY[0x1E69E7CC0]);
  return v1;
}

uint64_t sub_1DA8233A4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
  sub_1DA940FE4();

  sub_1DA7C5714(v1 + 24);
  sub_1DA823670(v1 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_nextTimerFireDate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationMigrationScheduler(uint64_t a1)
{
  result = qword_1ECBD4E30;
  if (!qword_1ECBD4E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA8234E8(uint64_t a1)
{
  sub_1DA8235A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA8235A8(uint64_t a1)
{
  if (!qword_1EE114C80)
  {
    sub_1DA93FAF4();
    v1 = sub_1DA941134();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE114C80);
    }
  }
}

id sub_1DA823614@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1DA823670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1DA8236E4(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v4 = sub_1DA9407F4();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940854();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v17[1] = *(v2 + 16);
  (*(v11 + 16))(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17[0];
  *(v14 + 24) = v2;
  (*(v11 + 32))(v14 + v13, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1DA82447C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  sub_1DA940824();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v6, v15);
  _Block_release(v15);
  (*(v20 + 8))(v6, v4);
  (*(v18 + 8))(v9, v19);

  return result;
}

uint64_t sub_1DA823A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DA93FAF4();
  v88 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v79 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v91 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - v11;
  v13 = sub_1DA93FEC4();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v80 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v93 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v21 = *(a1 + 16);
  if (!v21)
  {
    return sub_1DA82424C();
  }

  v96 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  v23 = *(v18 + 16);
  v22 = v18 + 16;
  v94 = v23;
  v24 = (a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64)));
  v89 = (v88 + 16);
  v78 = (v88 + 8);
  v86 = v6;
  v87 = (v22 - 8);
  v95 = v22;
  v92 = *(v22 + 56);
  v81 = (v88 + 40);
  v82 = (v88 + 32);
  v84 = a2;
  v85 = a3;
  v83 = v12;
  v23(v20, v24, v13);
  while (1)
  {
    v25 = v96;
    swift_beginAccess();
    v26 = *(a2 + v25);
    if (!*(v26 + 16))
    {
      break;
    }

    v27 = sub_1DA85A4CC(v20);
    if ((v28 & 1) == 0)
    {
      break;
    }

    v29 = v6;
    v30 = *(v88 + 72);
    v31 = *(v26 + 56) + v30 * v27;
    v32 = *(v88 + 16);
    v33 = v83;
    v32(v83, v31, v29);
    swift_endAccess();
    if ((sub_1DA93FA64() & 1) == 0)
    {
      (*v78)(v33, v29);
      (*v87)(v20, v13);
      v6 = v29;
      goto LABEL_4;
    }

    v90 = v30;
    v34 = v80;
    v94(v80, v20, v13);
    v35 = a3;
    v36 = v96;
    swift_beginAccess();
    v32(v79, v35, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(a2 + v36);
    v38 = v97;
    *(a2 + v36) = 0x8000000000000000;
    v39 = sub_1DA85A4CC(v34);
    v41 = v38[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_35;
    }

    v45 = v40;
    if (v38[3] < v44)
    {
      sub_1DA85B39C(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_1DA85A4CC(v80);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_38;
      }

LABEL_26:
      v71 = v97;
      if ((v45 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_26;
    }

    v72 = v39;
    sub_1DA85FD14();
    v39 = v72;
    v71 = v97;
    if ((v45 & 1) == 0)
    {
LABEL_29:
      v71[(v39 >> 6) + 8] |= 1 << v39;
      v73 = v39;
      v74 = v80;
      v94(v71[6] + v39 * v92, v80, v13);
      v6 = v86;
      (*v82)(v71[7] + v73 * v90, v79, v86);
      v67 = *v87;
      (*v87)(v74, v13);
      v75 = v71[2];
      v43 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v43)
      {
        goto LABEL_36;
      }

      v71[2] = v76;
      goto LABEL_31;
    }

LABEL_27:
    v6 = v86;
    (*v81)(v71[7] + v39 * v90, v79, v86);
    v67 = *v87;
    (*v87)(v80, v13);
LABEL_31:
    *(a2 + v96) = v71;

    swift_endAccess();
    (*v78)(v83, v6);
LABEL_24:
    v67(v20, v13);
    a3 = v85;
LABEL_4:
    v24 += v92;
    if (!--v21)
    {
      return sub_1DA82424C();
    }

    v94(v20, v24, v13);
  }

  v47 = v89;
  v90 = v21;
  swift_endAccess();
  v48 = v20;
  v49 = v93;
  v50 = v13;
  v51 = v48;
  v52 = v50;
  (v94)(v93);
  v53 = a3;
  v54 = v96;
  swift_beginAccess();
  (*v47)(v91, v53, v6);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(a2 + v54);
  v56 = v97;
  *(a2 + v54) = 0x8000000000000000;
  v58 = sub_1DA85A4CC(v49);
  v59 = v56[2];
  v60 = (v57 & 1) == 0;
  v61 = v59 + v60;
  if (!__OFADD__(v59, v60))
  {
    v62 = v57;
    if (v56[3] >= v61)
    {
      v20 = v51;
      if ((v55 & 1) == 0)
      {
        sub_1DA85FD14();
      }
    }

    else
    {
      sub_1DA85B39C(v61, v55);
      v63 = sub_1DA85A4CC(v93);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_37;
      }

      v58 = v63;
      v20 = v51;
    }

    v13 = v52;
    v65 = v97;
    v21 = v90;
    v66 = v87;
    if (v62)
    {
      v6 = v86;
      (*(v88 + 40))(v97[7] + *(v88 + 72) * v58, v91, v86);
      v67 = *v66;
      (*v66)(v93, v13);
      a2 = v84;
    }

    else
    {
      v97[(v58 >> 6) + 8] |= 1 << v58;
      v68 = v93;
      v94(v65[6] + v58 * v92, v93, v13);
      v6 = v86;
      (*(v88 + 32))(v65[7] + *(v88 + 72) * v58, v91, v86);
      v67 = *v66;
      (*v66)(v68, v13);
      v69 = v65[2];
      v43 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      a2 = v84;
      if (v43)
      {
        goto LABEL_34;
      }

      v65[2] = v70;
    }

    *(a2 + v96) = v65;

    swift_endAccess();
    goto LABEL_24;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1DA9416E4();
  __break(1u);
LABEL_38:
  result = sub_1DA9416E4();
  __break(1u);
  return result;
}

uint64_t sub_1DA82424C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1DA93FAF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA824808();
  if (*(v7 + 2) && swift_unknownObjectWeakLoadStrong())
  {
    sub_1DA8747B0(v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1DA825164();
  sub_1DA82527C(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1DA823670(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_1DA8259A4(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DA824418@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

uint64_t sub_1DA82447C()
{
  v1 = *(sub_1DA93FAF4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DA823A74(v2, v3, v4);
}

double sub_1DA8244E0(uint64_t a1)
{
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA940854();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1DA825DBC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_14;
  v11 = _Block_copy(aBlock);

  sub_1DA940824();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);

  return result;
}

uint64_t sub_1DA82479C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  swift_beginAccess();
  *(a1 + v4) = a2;

  return sub_1DA82424C();
}

char *sub_1DA824808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v86 = &v78 - v2;
  v3 = sub_1DA93FAF4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v78 - v8;
  v9 = sub_1DA93FEC4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v80 = &v78 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E40, &qword_1DA958830);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  v25 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  swift_beginAccess();
  v79 = v0;
  v84 = v25;
  v26 = *(v0 + v25);
  v27 = v17;
  v28 = v3;
  v29 = *(v26 + 64);
  v82 = v26 + 64;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v99 = (v10 + 16);
  v87 = v4 + 16;
  v103 = (v4 + 32);
  v98 = v4;
  v95 = v10;
  v96 = (v4 + 8);
  v100 = (v10 + 32);
  v101 = (v10 + 8);
  v94 = v26;

  v35 = 0;
  v81 = MEMORY[0x1E69E7CC0];
  v102 = v9;
  v92 = v7;
  v93 = v22;
  v90 = v27;
  v88 = v24;
  v97 = v33;
LABEL_4:
  v36 = v35;
  if (v32)
  {
    while (1)
    {
      v37 = v36;
LABEL_13:
      v39 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v40 = v39 | (v37 << 6);
      v41 = v94;
      v42 = v95;
      v43 = v89;
      (*(v95 + 16))(v89, *(v94 + 48) + *(v95 + 72) * v40, v9);
      v44 = v9;
      v45 = v98;
      v46 = *(v41 + 56) + *(v98 + 72) * v40;
      v47 = v91;
      (*(v98 + 16))(v91, v46, v28);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
      v49 = *(v48 + 48);
      v50 = *(v42 + 32);
      v22 = v93;
      v50(v93, v43, v44);
      (*(v45 + 32))(&v22[v49], v47, v28);
      (*(*(v48 - 8) + 56))(v22, 0, 1, v48);
      v35 = v37;
      v7 = v92;
      v27 = v90;
      v24 = v88;
LABEL_14:
      sub_1DA825CDC(v22, v24);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
      if ((*(*(v51 - 8) + 48))(v24, 1, v51) == 1)
      {
        break;
      }

      v52 = *(v51 + 48);
      v53 = *v100;
      v9 = v102;
      (*v100)(v27, v24, v102);
      (*v103)(v7, &v24[v52], v28);
      sub_1DA93FA84();
      if (v54 <= 0.0)
      {
        (*v99)(v80, v27, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1DA885D20(0, *(v81 + 2) + 1, 1, v81);
        }

        v57 = *(v81 + 2);
        v56 = *(v81 + 3);
        v78 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v81 = sub_1DA885D20((v56 > 1), v57 + 1, 1, v81);
        }

        (*v96)(v7, v28);
        v58 = v95;
        (*(v95 + 8))(v27, v9);
        v59 = v81;
        *(v81 + 2) = v78;
        result = v53(&v59[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57], v80, v9);
        v22 = v93;
        v33 = v97;
        goto LABEL_4;
      }

      (*v96)(v7, v28);
      result = (*v101)(v27, v9);
      v36 = v35;
      v33 = v97;
      if (!v32)
      {
        goto LABEL_6;
      }
    }

    v60 = *(v81 + 2);
    v61 = v79;
    if (v60)
    {
      v62 = &v81[(*(v95 + 80) + 32) & ~*(v95 + 80)];
      v63 = *(v95 + 72);
      v64 = *(v95 + 16);
      v96 = (v98 + 56);
      v97 = v64;
      v83 = v28;
      v100 = v63;
      v65 = v84;
      do
      {
        v70 = v85;
        v71 = v102;
        v97(v85, v62, v102);
        swift_beginAccess();
        v72 = sub_1DA85A4CC(v70);
        v74 = v73;
        v75 = *v101;
        (*v101)(v70, v71);
        if (v74)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = *(v61 + v65);
          v104 = v77;
          *(v61 + v65) = 0x8000000000000000;
          v69 = v100;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1DA85FD14();
            v77 = v104;
          }

          v75((*(v77 + 48) + v72 * v69), v102);
          v67 = v86;
          v68 = v83;
          (*(v98 + 32))(v86, *(v77 + 56) + *(v98 + 72) * v72, v83);
          sub_1DA8F4DE0(v72, v77);
          *(v61 + v65) = v77;

          v66 = 0;
        }

        else
        {
          v66 = 1;
          v67 = v86;
          v68 = v83;
          v69 = v100;
        }

        (*v96)(v67, v66, 1, v68);
        swift_endAccess();
        sub_1DA823670(v67);
        v62 = v69 + v62;
        --v60;
      }

      while (v60);
    }

    return v81;
  }

  else
  {
LABEL_6:
    if (v33 <= v36 + 1)
    {
      v38 = v36 + 1;
    }

    else
    {
      v38 = v33;
    }

    v35 = v38 - 1;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v33)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
        (*(*(v55 - 8) + 56))(v22, 1, 1, v55);
        v32 = 0;
        goto LABEL_14;
      }

      v32 = *(v82 + 8 * v37);
      ++v36;
      if (v32)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1DA825164()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_1DA93FAF4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_nextTimerFireDate;
  swift_beginAccess();
  sub_1DA825C64(v3, v0 + v5);
  swift_endAccess();
  v6 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer;
  v7 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v0 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(v0 + v6) = 0;
}

void sub_1DA82527C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v84 = &v62 - v4;
  v5 = sub_1DA93FAF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v80 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v62 - v11;
  v83 = sub_1DA93FEC4();
  v12 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v72 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E40, &qword_1DA958830);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - v17;
  v19 = *(v6 + 56);
  v82 = a1;
  v85 = v5;
  v66 = v6 + 56;
  v65 = v19;
  v19(a1, 1, 1, v5);
  v20 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = v18;
  v23 = v21 + 64;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v21 + 64);
  v62 = (v24 + 63) >> 6;
  v69 = v6 + 16;
  v70 = v12 + 16;
  v68 = v12 + 32;
  v27 = (v6 + 32);
  v78 = (v6 + 48);
  v75 = v6;
  v63 = (v6 + 8);
  v73 = v12;
  v76 = v21;
  v77 = (v12 + 8);

  v28 = 0;
  v71 = v18;
  v79 = v23;
  v67 = v27;
  while (v26)
  {
    v32 = v28;
LABEL_16:
    v36 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v37 = v36 | (v32 << 6);
    v38 = v76;
    v39 = v72;
    v40 = v73;
    v41 = v83;
    (*(v73 + 16))(v72, *(v76 + 48) + *(v73 + 72) * v37, v83);
    v42 = v74;
    v43 = v75;
    v44 = v85;
    (*(v75 + 16))(v74, *(v38 + 56) + *(v75 + 72) * v37, v85);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
    v46 = *(v45 + 48);
    v47 = *(v40 + 32);
    v35 = v81;
    v47(v81, v39, v41);
    v27 = v67;
    (*(v43 + 32))(v35 + v46, v42, v44);
    (*(*(v45 - 8) + 56))(v35, 0, 1, v45);
    v22 = v71;
LABEL_17:
    sub_1DA825CDC(v35, v22);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
    if ((*(*(v48 - 8) + 48))(v22, 1, v48) == 1)
    {

      return;
    }

    v49 = *v27;
    v50 = v22 + *(v48 + 48);
    v51 = v80;
    v52 = v85;
    (*v27)(v80, v50, v85);
    v53 = v84;
    sub_1DA825D4C(v82, v84);
    if ((*v78)(v53, 1, v52) == 1)
    {
      v29 = v82;
      sub_1DA823670(v82);
      sub_1DA823670(v84);
      v30 = v51;
      v31 = v85;
      v49(v29, v30, v85);
      v65(v29, 0, 1, v31);
      v23 = v79;
    }

    else
    {
      v54 = v85;
      v55 = v64;
      v49(v64, v84, v85);
      v56 = v51;
      v57 = sub_1DA93FA64();
      v58 = *v63;
      (*v63)(v55, v54);
      if (v57)
      {
        v59 = v82;
        sub_1DA823670(v82);
        v60 = v85;
        v49(v59, v56, v85);
        v65(v59, 0, 1, v60);
      }

      else
      {
        v58(v56, v85);
      }

      v23 = v79;
    }

    (*v77)(v22, v83);
  }

  if (v62 <= v28 + 1)
  {
    v33 = v28 + 1;
  }

  else
  {
    v33 = v62;
  }

  v34 = v33 - 1;
  v35 = v81;
  while (1)
  {
    v32 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v32 >= v62)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
      (*(*(v61 - 8) + 56))(v35, 1, 1, v61);
      v26 = 0;
      v28 = v34;
      goto LABEL_17;
    }

    v26 = *(v23 + 8 * v32);
    ++v28;
    if (v26)
    {
      v28 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1DA8259A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_1DA93FAF4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_nextTimerFireDate;
  swift_beginAccess();
  sub_1DA825C64(v6, v2 + v9);
  swift_endAccess();
  v10 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
  v11 = sub_1DA940A04();
  v12 = [v10 initWithIdentifier_];

  v13 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer;
  v14 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer);
  *(v2 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer) = v12;

  v15 = *(v2 + v13);
  if (v15)
  {
    v16 = v15;
    v17 = sub_1DA93FA44();
    v18 = *(v2 + 16);
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1DA825CD4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B00D0;
    aBlock[3] = &block_descriptor_8;
    v20 = _Block_copy(aBlock);

    [v16 scheduleForDate:v17 leewayInterval:v18 queue:v20 handler:0.5];
    _Block_release(v20);
  }
}

double sub_1DA825C0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA82424C();
  }

  return result;
}

uint64_t sub_1DA825C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA825CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E40, &qword_1DA958830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA825D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA825DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA825E30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA825E78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA825ED4()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA825F84(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA826020(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

unint64_t sub_1DA8260CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA8262B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DA8260FC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = "ionActionRecord8";
  v5 = "OptOutOfCoordinationForwardOnly";
  if (v3 == 2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 2)
  {
    v5 = "DenyListedCategories";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
    v4 = "OptOutOfCoordination";
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v2 = v6;
    v7 = v5;
  }

  *a1 = v2;
  a1[1] = v7 | 0x8000000000000000;
}

unint64_t sub_1DA82616C()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  if (v2 == 2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DA8261D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA8262B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA82620C(uint64_t a1)
{
  v2 = sub_1DA826598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA826248(uint64_t a1)
{
  v2 = sub_1DA826598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA826284@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA826300(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1DA8262B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA9414F4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA826300(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E50, &unk_1DA958900);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1DA826598();
  sub_1DA941804();
  if (!v1)
  {
    LOBYTE(v11) = 0;
    v9[2] = sub_1DA941534();
    LOBYTE(v11) = 1;
    v9[1] = sub_1DA941534();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    v10 = 2;
    sub_1DA8265EC();
    sub_1DA941544();
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v10 = 3;
    sub_1DA941544();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DA826598()
{
  result = qword_1EE110F18[0];
  if (!qword_1EE110F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE110F18);
  }

  return result;
}

unint64_t sub_1DA8265EC()
{
  result = qword_1EE110CC0;
  if (!qword_1EE110CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110CC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertCoordinationSystemFilterSectionConfiguration.CoordinationBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertCoordinationSystemFilterSectionConfiguration.CoordinationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA8267CC()
{
  result = qword_1ECBD4E58;
  if (!qword_1ECBD4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4E58);
  }

  return result;
}

unint64_t sub_1DA826824()
{
  result = qword_1ECBD4E60;
  if (!qword_1ECBD4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4E60);
  }

  return result;
}

unint64_t sub_1DA82687C()
{
  result = qword_1EE110F08;
  if (!qword_1EE110F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110F08);
  }

  return result;
}

unint64_t sub_1DA8268D4()
{
  result = qword_1EE110F10;
  if (!qword_1EE110F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110F10);
  }

  return result;
}

uint64_t sub_1DA826928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93F8E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1DA93F964();
  v8 = *(v45 - 8);
  v9 = MEMORY[0x1EEE9AC00](v45);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v42 = a1;
  v46[0] = a1;
  v46[1] = a2;
  v16 = a2;

  MEMORY[0x1E1271BD0](0xD000000000000010, 0x80000001DA951380);
  (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
  sub_1DA8282D0();
  sub_1DA93F944();
  (*(v5 + 8))(v7, v4);

  v17 = sub_1DA93F974();
  v19 = v18;
  v20 = v18 >> 62;
  v21 = v45;
  v22 = v8;
  if ((v18 >> 62) > 1)
  {
    v23 = v15;
    if (v20 != 2 || *(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v23 = v15;
  if (!v20)
  {
    if ((v18 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v24 = v17;
    sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
    sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
    v39 = sub_1DA940F44();
    (*(v22 + 8))(v23, v21);
    sub_1DA828324(v24, v19);
    return v39;
  }

  if (v17 != v17 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v43 = v17;
  if (qword_1EE110D30 != -1)
  {
    swift_once();
  }

  v25 = sub_1DA9405A4();
  __swift_project_value_buffer(v25, qword_1EE110D38);
  (*(v22 + 16))(v13, v23, v21);

  v26 = sub_1DA940584();
  v27 = sub_1DA940F14();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v44 = v23;
    v29 = v22;
    v30 = v28;
    v41 = swift_slowAlloc();
    v46[0] = v41;
    *v30 = 136315394;
    sub_1DA828278();
    v31 = sub_1DA941614();
    v33 = v32;
    v34 = *(v29 + 8);
    v34(v13, v21);
    v35 = sub_1DA7AE6E8(v31, v33, v46);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1DA7AE6E8(v42, v16, v46);
    _os_log_impl(&dword_1DA7A9000, v26, v27, "Failed to read sectionURL: %s for: %s", v30, 0x16u);
    v36 = v41;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v36, -1, -1);
    MEMORY[0x1E12739F0](v30, -1, -1);

    v37 = sub_1DA828324(v43, v19);
    (v34)(v44, v21, v37);
  }

  else
  {

    sub_1DA828324(v43, v19);
    v38 = *(v22 + 8);
    v38(v13, v21);
    v38(v23, v21);
  }

  return 0;
}

void sub_1DA8270B8(void *a1, NSObject *a2, void *a3)
{
  v153 = a1;
  v154 = a2;
  v157[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1DA93F8E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA93F964();
  v155 = *(v8 - 8);
  v156 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v152 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v149 = &v145 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v147 = &v145 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v151 = &v145 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v145 - v17;
  v150 = objc_opt_self();
  v19 = [v150 defaultManager];
  v20 = OBJC_IVAR____TtC21UserNotificationsCore23StorageSettingsProvider_location;
  v21 = sub_1DA93F904();
  v157[0] = 0;
  v22 = [v19 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v157];

  v23 = v157[0];
  if (v22)
  {
    v157[0] = v154;
    v157[1] = a3;
    v148 = a3;

    v24 = v23;
    MEMORY[0x1E1271BD0](0xD000000000000010, 0x80000001DA951380);
    (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
    sub_1DA8282D0();
    sub_1DA93F944();
    (*(v5 + 8))(v7, v4);

    v25 = v18;
    if (v153)
    {
      v26 = qword_1EE110D30;
      v27 = v153;
      v29 = v155;
      v28 = v156;
      if (v26 != -1)
      {
        swift_once();
      }

      v30 = sub_1DA9405A4();
      v31 = __swift_project_value_buffer(v30, qword_1EE110D38);
      v32 = *(v29 + 2);
      v33 = v151;
      v149 = v29 + 16;
      v146 = v32;
      v32(v151, v18, v28);
      v34 = v148;

      v35 = v27;
      v150 = v31;
      v36 = v35;
      v37 = sub_1DA940584();
      v38 = sub_1DA940F34();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v157[0] = v145;
        *v39 = 136315650;
        *(v39 + 4) = sub_1DA7AE6E8(v154, v34, v157);
        *(v39 + 12) = 2080;
        sub_1DA828278();
        v41 = v36;
        v42 = sub_1DA941614();
        v43 = v25;
        v45 = v44;
        v151 = *(v29 + 1);
        (v151)(v33, v156);
        v46 = sub_1DA7AE6E8(v42, v45, v157);
        v25 = v43;
        v34 = v148;

        *(v39 + 14) = v46;
        v36 = v41;
        *(v39 + 22) = 2112;
        *(v39 + 24) = v41;
        *v40 = v153;
        v47 = v41;
        _os_log_impl(&dword_1DA7A9000, v37, v38, "Writing %s to: %s with data: %@", v39, 0x20u);
        sub_1DA828378(v40);
        v48 = v40;
        v28 = v156;
        MEMORY[0x1E12739F0](v48, -1, -1);
        v49 = v145;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v49, -1, -1);
        MEMORY[0x1E12739F0](v39, -1, -1);
      }

      else
      {

        v151 = *(v29 + 1);
        (v151)(v33, v28);
      }

      v79 = v152;
      v80 = objc_opt_self();
      v157[0] = 0;
      v81 = [v80 archivedDataWithRootObject:v36 requiringSecureCoding:1 error:v157];
      v82 = v157[0];
      if (v81)
      {
        v83 = sub_1DA93F9A4();
        v85 = v84;

        sub_1DA93F9B4();
        v126 = v147;
        v146(v147, v25, v28);

        v127 = v36;
        v128 = sub_1DA940584();
        v129 = sub_1DA940F34();

        if (os_log_type_enabled(v128, v129))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v150 = v85;
          v133 = v132;
          v149 = swift_slowAlloc();
          v157[0] = v149;
          *v131 = 136315650;
          *(v131 + 4) = sub_1DA7AE6E8(v154, v34, v157);
          *(v131 + 12) = 2080;
          sub_1DA828278();
          v154 = v128;
          v134 = sub_1DA941614();
          v152 = v25;
          v135 = v28;
          v137 = v136;
          v155 = (v155 + 8);
          v138 = v126;
          v139 = v151;
          (v151)(v138, v28);
          v140 = sub_1DA7AE6E8(v134, v137, v157);

          *(v131 + 14) = v140;
          *(v131 + 22) = 2112;
          *(v131 + 24) = v127;
          *v133 = v153;
          v141 = v127;
          v142 = v154;
          _os_log_impl(&dword_1DA7A9000, v154, v129, "Successfully wrote %s to: %s with data: %@", v131, 0x20u);
          sub_1DA828378(v133);
          MEMORY[0x1E12739F0](v133, -1, -1);
          v143 = v149;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v143, -1, -1);
          MEMORY[0x1E12739F0](v131, -1, -1);
          sub_1DA828324(v83, v150);

          v139(v152, v135);
          return;
        }

        sub_1DA828324(v83, v85);

        v110 = v126;
      }

      else
      {
        v86 = v82;
        v87 = sub_1DA93F8C4();

        swift_willThrow();
        (v146)(v79, v25, v28, v88);

        v89 = v36;
        v90 = v87;
        v91 = sub_1DA940584();
        v92 = sub_1DA940F14();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v152 = v25;
          v94 = v79;
          v95 = v93;
          v96 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v157[0] = v150;
          *v95 = 136315906;
          *(v95 + 4) = sub_1DA7AE6E8(v154, v34, v157);
          *(v95 + 12) = 2112;
          v97 = v87;
          v98 = _swift_stdlib_bridgeErrorToNSError();
          *(v95 + 14) = v98;
          *v96 = v98;
          *(v95 + 22) = 2080;
          sub_1DA828278();
          v154 = v91;
          v99 = sub_1DA941614();
          v101 = v100;
          v102 = v94;
          v103 = v28;
          v104 = v28;
          v105 = v151;
          (v151)(v102, v103);
          v106 = sub_1DA7AE6E8(v99, v101, v157);

          *(v95 + 24) = v106;
          *(v95 + 32) = 2112;
          *(v95 + 34) = v89;
          v96[1] = v153;
          v107 = v89;
          v108 = v154;
          _os_log_impl(&dword_1DA7A9000, v154, v92, "Failed to write %s error: %@ to: %s with data: %@", v95, 0x2Au);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v96, -1, -1);
          v109 = v150;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v109, -1, -1);
          MEMORY[0x1E12739F0](v95, -1, -1);

          v105(v152, v104);
          return;
        }

        v110 = v79;
      }

      v144 = v151;
      (v151)(v110, v28);
      v144(v25, v28);
    }

    else
    {
      v153 = v20;
      v61 = v155;
      v60 = v156;
      if (qword_1EE110D30 != -1)
      {
        swift_once();
      }

      v62 = sub_1DA9405A4();
      __swift_project_value_buffer(v62, qword_1EE110D38);
      v63 = v149;
      v61[2](v149, v25, v60);
      v64 = v148;

      v65 = sub_1DA940584();
      v66 = sub_1DA940F34();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = v63;
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v152 = v25;
        v70 = v69;
        v157[0] = v69;
        *v68 = 136315394;
        *(v68 + 4) = sub_1DA7AE6E8(v154, v64, v157);
        *(v68 + 12) = 2080;
        sub_1DA828278();
        v71 = sub_1DA941614();
        v73 = v72;
        v74 = *(v155 + 1);
        v74(v67, v156);
        v75 = sub_1DA7AE6E8(v71, v73, v157);
        v60 = v156;

        *(v68 + 14) = v75;
        v76 = v66;
        v77 = v74;
        _os_log_impl(&dword_1DA7A9000, v65, v76, "Nil settings set for %s. Remooving: %s", v68, 0x16u);
        swift_arrayDestroy();
        v78 = v70;
        v25 = v152;
        MEMORY[0x1E12739F0](v78, -1, -1);
        MEMORY[0x1E12739F0](v68, -1, -1);
      }

      else
      {

        v77 = v61[1];
        (v77)(v63, v60);
      }

      v111 = [v150 defaultManager];
      v112 = sub_1DA93F904();
      v157[0] = 0;
      v113 = [v111 removeItemAtURL:v112 error:v157];

      if (v113)
      {
        v114 = v157[0];
        (v77)(v25, v60);
      }

      else
      {
        v115 = v157[0];
        v116 = sub_1DA93F8C4();

        swift_willThrow();

        v117 = sub_1DA940584();
        v118 = sub_1DA940F14();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = v60;
          v121 = swift_slowAlloc();
          v157[0] = v121;
          *v119 = 136315138;
          sub_1DA828278();
          v122 = sub_1DA941614();
          v124 = sub_1DA7AE6E8(v122, v123, v157);
          v155 = v77;
          v125 = v124;

          *(v119 + 4) = v125;
          _os_log_impl(&dword_1DA7A9000, v117, v118, "Failed to remove settings for: %s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v121);
          MEMORY[0x1E12739F0](v121, -1, -1);
          MEMORY[0x1E12739F0](v119, -1, -1);

          (v155)(v25, v120);
        }

        else
        {

          (v77)(v25, v60);
        }
      }
    }
  }

  else
  {
    v50 = v157[0];
    v51 = sub_1DA93F8C4();

    swift_willThrow();
    if (qword_1EE110D30 != -1)
    {
      swift_once();
    }

    v52 = sub_1DA9405A4();
    __swift_project_value_buffer(v52, qword_1EE110D38);

    v53 = sub_1DA940584();
    v54 = sub_1DA940F14();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v157[0] = v56;
      *v55 = 136315138;
      sub_1DA828278();
      v57 = sub_1DA941614();
      v59 = sub_1DA7AE6E8(v57, v58, v157);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_1DA7A9000, v53, v54, "Failed to create storage directory: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1E12739F0](v56, -1, -1);
      MEMORY[0x1E12739F0](v55, -1, -1);
    }
  }
}

uint64_t sub_1DA828070()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore23StorageSettingsProvider_location;
  v2 = sub_1DA93F964();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageSettingsProvider(uint64_t a1)
{
  result = qword_1EE1124C0;
  if (!qword_1EE1124C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA828160(uint64_t a1)
{
  result = sub_1DA93F964();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA8281F8()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110D38);
  __swift_project_value_buffer(v0, qword_1EE110D38);
  return sub_1DA940594();
}

unint64_t sub_1DA828278()
{
  result = qword_1EE114CB0;
  if (!qword_1EE114CB0)
  {
    sub_1DA93F964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114CB0);
  }

  return result;
}

unint64_t sub_1DA8282D0()
{
  result = qword_1EE110D00;
  if (!qword_1EE110D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110D00);
  }

  return result;
}

double sub_1DA828324(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1DA828378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA8283F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  v5 = sub_1DA93FEC4();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = sub_1DA9401F4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = sub_1DA93FE74();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8285D8, 0, 0);
}

uint64_t sub_1DA8285D8()
{
  v75 = v0;
  v2 = v0[29];
  v3 = v0[24];
  v4 = v0[25];
  sub_1DA940074();
  v5 = *(v4 + 48);
  v6 = v5(v2, 1, v3);
  sub_1DA82905C(v2);
  if (v6 == 1)
  {
    v7 = v0[15];
    v8 = __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
    sub_1DA940014();

    sub_1DA9400A4();

    v9 = *v8;
    swift_getKeyPath();
    v0[12] = v9;
    sub_1DA829118(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
    sub_1DA93FB74();

    v10 = *(v9 + 56);
    if (v10 >> 62)
    {
      if (sub_1DA941264())
      {
        goto LABEL_4;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v10 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1E1272460](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      v11 = v0[28];
      v12 = v0[24];
      sub_1DA8A6064(v11);

      if (v5(v11, 1, v12) != 1)
      {
        v13 = v0[23];
        v14 = v0[19];
        v15 = v0[20];
        v16 = v0[14];
        (*(v0[25] + 32))(v0[26], v0[28], v0[24]);
        v1 = *(v15 + 16);
        v1(v13, v16, v14);
        if (qword_1ECBD46F8 == -1)
        {
LABEL_9:
          v17 = v0[22];
          v18 = v0[19];
          v19 = v0[14];
          v20 = sub_1DA9405A4();
          __swift_project_value_buffer(v20, qword_1ECBD4E68);
          v1(v17, v19, v18);

          v21 = sub_1DA940584();
          v22 = sub_1DA940F34();

          v23 = os_log_type_enabled(v21, v22);
          v24 = v0[22];
          v26 = v0[19];
          v25 = v0[20];
          if (v23)
          {
            v73 = v22;
            v27 = v0[17];
            v28 = v0[18];
            v29 = v0[16];
            v70 = v0[19];
            v30 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v74 = v72;
            *v30 = 136315394;
            log = v21;
            sub_1DA940124();
            sub_1DA829118(&qword_1EE110EE0, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0F8]);
            v31 = sub_1DA941614();
            v33 = v32;
            (*(v27 + 8))(v28, v29);
            (*(v25 + 8))(v24, v70);
            v34 = sub_1DA7AE6E8(v31, v33, &v74);

            *(v30 + 4) = v34;
            *(v30 + 12) = 2080;
            sub_1DA7BABAC(v7 + 16, (v0 + 7));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EA0, &qword_1DA958C40);
            v35 = sub_1DA940A74();
            v37 = sub_1DA7AE6E8(v35, v36, &v74);

            *(v30 + 14) = v37;
            _os_log_impl(&dword_1DA7A9000, log, v73, "Fetching settings for notification %s from: %s", v30, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12739F0](v72, -1, -1);
            MEMORY[0x1E12739F0](v30, -1, -1);
          }

          else
          {

            (*(v25 + 8))(v24, v26);
          }

          v39 = v0[26];
          v40 = v0[27];
          v41 = v0[24];
          v42 = v0[25];
          v43 = v0[23];
          v44 = v0[19];
          v45 = v0[20];
          v46 = v0[13];
          (*(v42 + 16))(v40, v39, v41);
          (*(v42 + 56))(v40, 0, 1, v41);
          sub_1DA940084();
          (*(v42 + 8))(v39, v41);
          (*(v45 + 32))(v46, v43, v44);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
          goto LABEL_23;
        }

LABEL_28:
        swift_once();
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    (*(v0[25] + 56))(v0[28], 1, 1, v0[24]);
LABEL_16:
    sub_1DA82905C(v0[28]);
    if (qword_1ECBD46F8 != -1)
    {
      swift_once();
    }

    v48 = v0[20];
    v47 = v0[21];
    v49 = v0[19];
    v50 = v0[14];
    v51 = sub_1DA9405A4();
    __swift_project_value_buffer(v51, qword_1ECBD4E68);
    (*(v48 + 16))(v47, v50, v49);

    v52 = sub_1DA940584();
    v53 = sub_1DA940F34();

    v54 = os_log_type_enabled(v52, v53);
    v56 = v0[20];
    v55 = v0[21];
    v57 = v0[19];
    if (v54)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74 = v59;
      *v58 = 136315394;
      sub_1DA7BABAC(v7 + 16, (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EA0, &qword_1DA958C40);
      v60 = sub_1DA940A74();
      v62 = sub_1DA7AE6E8(v60, v61, &v74);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      sub_1DA829118(&qword_1EE114E70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A8]);
      v63 = sub_1DA941614();
      v65 = v64;
      (*(v56 + 8))(v55, v57);
      v66 = sub_1DA7AE6E8(v63, v65, &v74);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_1DA7A9000, v52, v53, "Provider: %s didn't provide a UTType for: %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v59, -1, -1);
      MEMORY[0x1E12739F0](v58, -1, -1);
    }

    else
    {

      (*(v56 + 8))(v55, v57);
    }

    v67 = v0[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
    *(v67 + 24) = &type metadata for SourceDeviceTypeFetchActor.ActorError;
    *(v67 + 32) = sub_1DA8290C4();
    *v67 = 1;
    goto LABEL_22;
  }

  v38 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
  *(v38 + 24) = &type metadata for SourceDeviceTypeFetchActor.ActorError;
  *(v38 + 32) = sub_1DA8290C4();
  *v38 = 0;
LABEL_22:
  sub_1DA93FF14();
  sub_1DA93FF34();
  type metadata accessor for StepFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
LABEL_23:
  swift_storeEnumTagMultiPayload();

  v68 = v0[1];

  return v68();
}

uint64_t sub_1DA828EB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA828F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7470;

  return sub_1DA8283F4(a1, v6, a3);
}

uint64_t sub_1DA828FD8()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD4E68);
  __swift_project_value_buffer(v0, qword_1ECBD4E68);
  return sub_1DA940594();
}

uint64_t sub_1DA82905C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA8290C4()
{
  result = qword_1ECBD4E90;
  if (!qword_1ECBD4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4E90);
  }

  return result;
}

uint64_t sub_1DA829118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SourceDeviceTypeFetchActor.ActorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SourceDeviceTypeFetchActor.ActorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA8292B4()
{
  result = qword_1ECBD4EA8;
  if (!qword_1ECBD4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4EA8);
  }

  return result;
}

unint64_t sub_1DA829308(uint64_t a1)
{
  *(a1 + 8) = sub_1DA8292B4();
  result = sub_1DA829338();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA829338()
{
  result = qword_1ECBD4EB0;
  if (!qword_1ECBD4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4EB0);
  }

  return result;
}

uint64_t sub_1DA8293E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA829524();
  sub_1DA93FB74();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1DA82949C()
{
  swift_getKeyPath();
  sub_1DA829524();
  sub_1DA93FB74();

  swift_beginAccess();
}

unint64_t sub_1DA829524()
{
  result = qword_1ECBD4EC0;
  if (!qword_1ECBD4EC0)
  {
    type metadata accessor for NotificationSourceProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4EC0);
  }

  return result;
}

uint64_t type metadata accessor for NotificationSourceProvider(uint64_t a1)
{
  result = qword_1ECBD4EC8;
  if (!qword_1ECBD4EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA8295C8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1DA82A28C(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA829524();
    sub_1DA93FB64();
  }
}

uint64_t sub_1DA8296E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*sub_1DA829748(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21UserNotificationsCore26NotificationSourceProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1DA829524();
  sub_1DA93FB74();

  *v4 = v1;
  swift_getKeyPath();
  sub_1DA93FB94();

  v4[7] = sub_1DA82938C(v4);
  return sub_1DA829850;
}

void sub_1DA829850(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1DA93FB84();

  free(v1);
}

uint64_t sub_1DA8298E4()
{
  v0 = type metadata accessor for NotificationSource(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA829C94(v18);
  v4 = v19;
  v5 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v6 = (*(v5 + 8))(0, 0, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v7 = *(v6 + 16);
  if (v7)
  {
    v18[0] = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, v7, 0);
    v8 = v18[0];
    v9 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    do
    {
      sub_1DA82A798(v9, v3);
      v12 = *(v3 + 2);
      v11 = *(v3 + 3);

      sub_1DA82A7FC(v3);
      v18[0] = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DA82A778((v13 > 1), v14 + 1, 1);
        v8 = v18[0];
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1DA829AD0(uint64_t a1, uint64_t a2)
{
  sub_1DA829C94(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 8))(a1, a2, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DA829B6C(uint64_t a1, uint64_t a2)
{
  sub_1DA829C94(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 16))(a1, a2, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DA829BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DA829C94(v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 24))(a1, a2, a3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1DA829C94@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_1DA82B0B4(v1 + 24, &v6);
  if (v7)
  {
    return sub_1DA7B9FAC(&v6, a1);
  }

  sub_1DA82A858(&v6);
  v4 = type metadata accessor for XPCSettingsProvider();
  swift_allocObject();
  v5 = XPCSettingsProvider.init()();
  a1[3] = v4;
  a1[4] = &protocol witness table for XPCSettingsProvider;
  *a1 = v5;
  sub_1DA7BABAC(a1, &v6);
  swift_beginAccess();
  sub_1DA82B124(&v6, v1 + 24);
  return swift_endAccess();
}

uint64_t NotificationSourceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  sub_1DA93FBA4();
  sub_1DA829C94(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = sub_1DA8E787C(0, 0, v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_1DA8295C8(v3);
  return v0;
}

uint64_t NotificationSourceProvider.init()()
{
  v1 = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  sub_1DA93FBA4();
  sub_1DA829C94(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = sub_1DA8E787C(0, 0, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1DA8295C8(v4);
  return v1;
}

uint64_t NotificationSourceProvider.deinit()
{

  sub_1DA82A858(v0 + 24);
  v1 = OBJC_IVAR____TtC21UserNotificationsCore26NotificationSourceProvider___observationRegistrar;
  v2 = sub_1DA93FBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NotificationSourceProvider.__deallocating_deinit()
{

  sub_1DA82A858(v0 + 24);
  v1 = OBJC_IVAR____TtC21UserNotificationsCore26NotificationSourceProvider___observationRegistrar;
  v2 = sub_1DA93FBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA82A02C(uint64_t a1, uint64_t a2)
{
  sub_1DA829C94(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 8))(a1, a2, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DA82A0CC(uint64_t a1, uint64_t a2)
{
  sub_1DA829C94(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 16))(a1, a2, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DA82A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DA829C94(v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 24))(a1, a2, a3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1DA82A1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DA941684() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DA82A28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1DA82A798(v13, v10);
        sub_1DA82A798(v14, v7);
        v16 = *(v10 + 1);
        v17 = *(v7 + 1);
        if (v16)
        {
          if (!v17 || (*v10 != *v7 || v16 != v17) && (sub_1DA941684() & 1) == 0)
          {
LABEL_20:
            sub_1DA82A7FC(v7);
            sub_1DA82A7FC(v10);
            v19 = 0;
            return v19 & 1;
          }
        }

        else if (v17)
        {
          goto LABEL_20;
        }

        if ((*(v10 + 2) != *(v7 + 2) || *(v10 + 3) != *(v7 + 3)) && (sub_1DA941684() & 1) == 0)
        {
          goto LABEL_20;
        }

        v18 = v10[48] ^ v7[48];
        sub_1DA82A7FC(v7);
        sub_1DA82A7FC(v10);
        if ((v18 & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v19 = v18 ^ 1;
        return v19 & 1;
      }
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1DA82A494(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v28)
  {
    if (a2 >> 62)
    {
      v29 = v3;
      result = sub_1DA941264();
      v3 = v29;
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v30 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      break;
    }

    v34 = a2 & 0xC000000000000001;
    v35 = v3 & 0xC000000000000001;
    v11 = 4;
    v12 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
    v32 = v3;
    v33 = a2;
    while (1)
    {
      v14 = v11 - 4;
      v4 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if (v35)
      {
        v15 = MEMORY[0x1E1272460](v11 - 4);
      }

      else
      {
        if (v14 >= *(v31 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(v3 + 8 * v11);
      }

      v36 = v11 - 3;
      if (v34)
      {
        v16 = MEMORY[0x1E1272460](v11 - 4, a2);
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 8 * v11);
      }

      result = [*(v15 + 16) v12[402]];
      if (!result)
      {
        goto LABEL_41;
      }

      v17 = result;
      v18 = i;
      v19 = sub_1DA940A14();
      v21 = v20;

      v22 = v12;
      result = [*(v16 + 16) v12[402]];
      if (!result)
      {
        goto LABEL_42;
      }

      v23 = result;
      v24 = sub_1DA940A14();
      v26 = v25;

      if (v19 == v24 && v21 == v26)
      {
      }

      else
      {
        v13 = sub_1DA941684();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      ++v11;
      i = v18;
      v3 = v32;
      a2 = v33;
      v12 = v22;
      if (v36 == v18)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v27 = v3;
    v28 = sub_1DA941264();
    v3 = v27;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void *sub_1DA82A734(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA82AED8(a1, a2, a3, *v3, &qword_1ECBD4ED8, &unk_1DA95FBD0, type metadata accessor for NotificationSource);
  *v3 = result;
  return result;
}

char *sub_1DA82A778(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA82AB68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DA82A798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA82A7FC(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA82A858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6520, &qword_1DA958D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA82A8C8(uint64_t a1)
{
  result = sub_1DA93FBB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1DA82AAAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA82AED8(a1, a2, a3, *v3, &qword_1ECBD4F00, qword_1DA958E20, MEMORY[0x1E69DF180]);
  *v3 = result;
  return result;
}

char *sub_1DA82AAF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA82AC74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA82AB10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA82AD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA82AB30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA82AED8(a1, a2, a3, *v3, &qword_1ECBD4EF8, &qword_1DA958E18, MEMORY[0x1EEE91018]);
  *v3 = result;
  return result;
}

char *sub_1DA82AB68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DA82AC74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EF0, &qword_1DA958E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA82AD90(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EE0, &qword_1DA958E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EE8, &qword_1DA958E08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA82AED8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1DA82B0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6520, &qword_1DA958D48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA82B124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6520, &qword_1DA958D48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1DA82B1E4(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v12 = sub_1DA940FC4();
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1DA7AC344();
  sub_1DA940824();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DA82B600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA82B658();
  sub_1DA9411D4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v12);
  v8 = sub_1DA941004();
  v10 = v13;
  v9 = v14;
  v2[2] = v8;
  v2[3] = v10;
  v2[4] = v9;
  return v2;
}

void sub_1DA82B3FC()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DA82B5F0;
  *(v2 + 24) = v0;
  v4[4] = sub_1DA82B5F8;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DA7B8000;
  v4[3] = &block_descriptor_0;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {

    sub_1DA7B5220(*(v0 + 24), *(v0 + 32));
    swift_deallocClassInstance();
  }
}

uint64_t sub_1DA82B574(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 32);
  *(result + 24) = 0;
  *(result + 32) = 0;
  if (v1)
  {
    v3 = result;

    v1(v3);
    sub_1DA7B5220(v1, v2);

    return sub_1DA7B5220(v1, v2);
  }

  return result;
}

unint64_t sub_1DA82B600()
{
  result = qword_1EE115A60;
  if (!qword_1EE115A60)
  {
    sub_1DA940F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115A60);
  }

  return result;
}

unint64_t sub_1DA82B658()
{
  result = qword_1EE115A70;
  if (!qword_1EE115A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD5D90, &unk_1DA958840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115A70);
  }

  return result;
}

uint64_t sub_1DA82B6BC()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore43UserNotificationsRemoteDeviceStorageHandler_location;
  v2 = sub_1DA93F964();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserNotificationsRemoteDeviceStorageHandler(uint64_t a1)
{
  result = qword_1ECBD4F08;
  if (!qword_1ECBD4F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DA82B7AC()
{
  sub_1DA941364();

  MEMORY[0x1E1271BD0](v0[2], v0[3]);
  v1 = MEMORY[0x1E1271BD0](0x3A6574617473203BLL, 0xE800000000000000);
  v2 = v0[4];
  if (v2 == 4)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64656C62616E65;
  }

  else
  {
    if (v2 == 3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      v5 = NotificationSource.State.OverrideReason.description.getter(v1);
      v6 = v7;
    }

    MEMORY[0x1E1271BD0](v5, v6);

    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    v4 = 0x64656C6261736964;
    v3 = 0xE900000000000028;
  }

  MEMORY[0x1E1271BD0](v4, v3);

  return 0xD000000000000011;
}

uint64_t sub_1DA82B8D8()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DA82B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2 || (sub_1DA941684() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DA941684();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DA82B9F8(uint64_t a1)
{
  v2 = sub_1DA8303F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA82BA34(uint64_t a1)
{
  v2 = sub_1DA8303F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA82BA70()
{

  sub_1DA830524(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA82BAB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F98, &qword_1DA959188);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8303F8();
  sub_1DA941834();
  v13 = 0;
  sub_1DA9415D4();
  if (!v2)
  {
    v12 = *(v3 + 32);
    v11[15] = 1;
    sub_1DA8304A0(v12);
    sub_1DA8304D0();
    sub_1DA941604();
    v9.n128_f64[0] = sub_1DA830524(v12);
  }

  return (*(v6 + 8))(v8, v5, v9);
}

uint64_t *sub_1DA82BC38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F90, &qword_1DA959180);
  v10[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8303F8();
  sub_1DA941804();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v10[0];
    v12 = 0;
    v1[2] = sub_1DA941554();
    v1[3] = v8;
    v11 = 1;
    sub_1DA83044C();
    sub_1DA941584();
    (*(v7 + 8))(v6, v4);
    v1[4] = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t *sub_1DA82BE68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1DA82BC38(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DA82BEE4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

id sub_1DA82C06C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_opt_self() currentNotificationSettingsCenter];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1DA82C0E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_1DA85A4B4(a2, a3);
    if (v6)
    {
      v7 = *(*(v5 + 56) + 8 * result);
      *a4 = v7;
      return sub_1DA8304A0(v7);
    }

    else
    {
      *a4 = 5;
    }
  }

  else
  {
    *a4 = 5;
  }

  return result;
}

uint64_t sub_1DA82C154(char *a1)
{
  v2 = *a1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v3 = sub_1DA847FC8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FF0, &qword_1DA9591E8);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = 0;
  *(v1 + 64) = v2;
  return v1;
}

void sub_1DA82C1D8()
{
  v0[5] = 0;

  v0[4] = 0;

  v0[10] = 0;

  v1 = v0[7];
  v0[7] = 0;
}

void sub_1DA82C228()
{
  sub_1DA82C334();
  if (*(v0 + 64))
  {

    sub_1DA82DFE8();
  }

  else
  {
    sub_1DA82D030();
    v1 = sub_1DA82C06C();
    v2 = type metadata accessor for SettingsCenterListener();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC21UserNotificationsCore22SettingsCenterListener_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v7.receiver = v3;
    v7.super_class = v2;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    [v1 addObserver_];

    v5 = *(v0 + 56);
    *(v0 + 56) = v4;
    v6 = v4;

    *&v6[OBJC_IVAR____TtC21UserNotificationsCore22SettingsCenterListener_delegate + 8] = &off_1F56325F0;
    swift_unknownObjectWeakAssign();
  }
}

double sub_1DA82C334()
{
  if (MEMORY[0x1E69C7440])
  {
    v1 = MEMORY[0x1E69C7428] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || MEMORY[0x1E69C7448] == 0 || MEMORY[0x1E69C7430] == 0 || MEMORY[0x1E69C7438] == 0 || MEMORY[0x1E69C73F0] == 0 || MEMORY[0x1E69C73E8] == 0 || MEMORY[0x1E69C73E0] == 0 || MEMORY[0x1E69C73B0] == 0 || MEMORY[0x1E69C73A0] == 0 || MEMORY[0x1E69C7398] == 0 || MEMORY[0x1E69C7390] == 0 || MEMORY[0x1E69C73A8] == 0 || MEMORY[0x1E69C7378] == 0 || MEMORY[0x1E69C7380] == 0 || MEMORY[0x1E69C7388] == 0 || MEMORY[0x1E69C74E8] == 0 || MEMORY[0x1E69C74F0] == 0 || MEMORY[0x1E69C74F8] == 0 || MEMORY[0x1E69C74D0] == 0 || MEMORY[0x1E69C74D8] == 0 || MEMORY[0x1E69C74E0] == 0)
  {
    if (qword_1EE110E70 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1EE110E80);
    v52 = sub_1DA940584();
    v23 = sub_1DA940F14();
    if (os_log_type_enabled(v52, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DA7A9000, v52, v23, "Replicator is not available on this device.", v24, 2u);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }
  }

  else
  {
    v46[0] = v0;
    v25 = sub_1DA93FC44();
    v51 = v46;
    v52 = *(v25 - 8);
    isa = v52[8].isa;
    MEMORY[0x1EEE9AC00](v25);
    v27 = v46 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1DA93FC34();
    v28 = sub_1DA93FDE4();
    v49 = v46;
    v48 = v28;
    v47 = *(v28 - 8);
    v29 = *(v47 + 64);
    MEMORY[0x1EEE9AC00](v28);
    v30 = sub_1DA93FDF4();
    v46[1] = v46;
    MEMORY[0x1EEE9AC00](v30);
    (*(v32 + 104))(v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C7500]);
    v33 = sub_1DA93FE04();
    MEMORY[0x1EEE9AC00](v33);
    v36 = (*(v35 + 104))(v46 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C7508]);
    MEMORY[0x1EEE9AC00](v36);
    v37 = v52[2].isa;
    v50 = v25;
    v37(v27, v27, v25);
    sub_1DA93FDD4();
    v38 = sub_1DA93FCE4();
    swift_allocObject();
    v39 = sub_1DA93FCC4();

    sub_1DA93FCD4();
    v40 = v46[0];
    *(v46[0] + 32) = v39;

    v58 = MEMORY[0x1E69C7418];
    v59 = MEMORY[0x1E69C7420];
    v60 = MEMORY[0x1E69C7410];
    v61 = MEMORY[0x1E69C73F8];
    v62 = MEMORY[0x1E69C7400];
    v63 = MEMORY[0x1E69C7408];
    v57 = v38;
    v56 = v39;
    MEMORY[0x1EEE9AC00](v41);
    v42 = v47;
    v43 = v48;
    (*(v47 + 16))(v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v48);
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FE0, &qword_1DA9591E0);
    swift_allocObject();
    v44 = sub_1DA93FC64();

    (*(v42 + 8))(v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
    (v52[1].isa)(v27, v50);
    *(v40 + 40) = v44;
  }

  return result;
}

uint64_t sub_1DA82CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1DA93FD84();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1DA830728(a6, &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1EEE91030]);

  return sub_1DA93FD74();
}

uint64_t sub_1DA82CDF0(uint64_t *a1)
{
  type metadata accessor for MinimalSource();
  sub_1DA830790(&unk_1EE1138F0, v1, type metadata accessor for MinimalSource, &unk_1DA9590C0);
  return sub_1DA93FD64();
}

uint64_t sub_1DA82CE78@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  v10 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15[3] = v10;
  type metadata accessor for MinimalSource();
  sub_1DA830790(&qword_1EE1138E8, v11, type metadata accessor for MinimalSource, &unk_1DA9590E8);
  sub_1DA830790(&unk_1EE1138F0, v12, type metadata accessor for MinimalSource, &unk_1DA9590C0);
  result = sub_1DA93FDB4();
  if (!v4)
  {
    v14 = sub_1DA93F964();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    return sub_1DA93FDA4();
  }

  return result;
}

uint64_t sub_1DA82D030()
{
  if (*(v0 + 64))
  {
    v1 = sub_1DA941684();

    if (v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v2 = sub_1DA82C06C();
  v3 = [v2 allNotificationSources];

  sub_1DA830554();
  sub_1DA830790(&qword_1EE110C00, 255, sub_1DA830554, MEMORY[0x1E69E81B8]);
  v4 = sub_1DA940E94();

  sub_1DA82D140(v4);
}

void sub_1DA82D140(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      sub_1DA941224();
      sub_1DA830554();
      sub_1DA830790(&qword_1EE110C00, 255, sub_1DA830554, MEMORY[0x1E69E81B8]);
      sub_1DA940EC4();
      v3 = v19;
      v4 = v20;
      v5 = v21;
      v6 = v22;
      v7 = v23;
    }

    else
    {
      v8 = -1 << *(a1 + 32);
      v4 = a1 + 56;
      v5 = ~v8;
      v9 = -v8;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v7 = v10 & *(a1 + 56);

      v6 = 0;
    }

    v11 = (v5 + 64) >> 6;
    if (v3 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v12 = v6;
      v13 = v7;
      v14 = v6;
      if (!v7)
      {
        break;
      }

LABEL_13:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
      if (!v16)
      {
LABEL_19:
        sub_1DA830720(v3);

        return;
      }

      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        sub_1DA82D378(v16, v2);
        objc_autoreleasePoolPop(v17);

        v6 = v14;
        v7 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_1DA941294())
        {
          sub_1DA830554();
          swift_dynamicCast();
          v16 = v18;
          v14 = v6;
          v15 = v7;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}