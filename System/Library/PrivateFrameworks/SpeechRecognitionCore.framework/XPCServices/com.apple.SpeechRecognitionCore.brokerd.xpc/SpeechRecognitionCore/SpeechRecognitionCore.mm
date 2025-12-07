id RXOSLog(uint64_t a1)
{
  if (qword_100020DE8 != -1)
  {
    sub_100012674();
  }

  v2 = qword_100020DE0;

  return v2;
}

void sub_100001864(id a1)
{
  qword_100020DE0 = os_log_create("com.apple.SpeechRecognitionCore", "SRCLogs");

  _objc_release_x1();
}

CFMutableStringRef RDLanguageAssets::createLanguageFromLocaleID(CFStringRef theString, const __CFString *a2)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"_", @"-", v4, 0);
  return MutableCopy;
}

CFMutableStringRef RDLanguageAssets::createLocaleIDFromLanguage(CFStringRef theString, const __CFString *a2)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"-", @"_", v4, 0);
  return MutableCopy;
}

const __CFDictionary *RDLanguageAssets::CopyInstallationStatus(RDLanguageAssets *this)
{
  v9 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  v1 = [qword_100020DF0 copyInstallationStatusForLangaugesWithError:&v9];
  v2 = RXOSLog(v1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 138412290;
    v11 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "InstallationStatus resultStatus=%@", buf, 0xCu);
  }

  if (v9)
  {
    v4 = RXOSLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "InstallationStatus failed with: %@", buf, 0xCu);
    }
  }

  if (!v1)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v1);
  v6 = RXGetAssetFallbackLocales();
  if (v6)
  {
    RDLanguageAssets::addAliasLocalesToResultStatus(v6, MutableCopy, v7);
  }

  CFRelease(v1);
  return MutableCopy;
}

void RDLanguageAssets::addAliasLocalesToResultStatus(RDLanguageAssets *this, const __CFDictionary *a2, __CFDictionary *a3)
{
  Count = CFDictionaryGetCount(this);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(this, v7, 0);
    for (i = 0; i != v6; ++i)
    {
      LanguageFromLocaleID = RDLanguageAssets::createLanguageFromLocaleID(v7[i], v8);
      Value = CFDictionaryGetValue(this, v7[i]);
      if (Value)
      {
        v13 = RDLanguageAssets::createLanguageFromLocaleID(Value, v12);
        v14 = CFDictionaryGetValue(a2, v13);
        if (v14)
        {
          v15 = v14;
          if (!CFDictionaryGetValue(a2, LanguageFromLocaleID))
          {
            CFDictionaryAddValue(a2, LanguageFromLocaleID, v15);
          }
        }

        CFRelease(v13);
      }

      CFRelease(LanguageFromLocaleID);
    }

    free(v7);
  }
}

CFTypeRef RDLanguageAssets::InstallAndCopyQuasarModelPathForLanguage(const __CFString *this, const __CFString *a2)
{
  LocaleIDFromLanguage = RDLanguageAssets::createLocaleIDFromLanguage(this, a2);
  v4 = RXGetAssetFallbackLocaleIdentifier();
  CFRelease(LocaleIDFromLanguage);
  v11 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = this;
  }

  v6 = [qword_100020DF0 copyInstalledQuasarModelPathForLanguage:v5 error:&v11];
  v7 = RXOSLog(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v8)
  {
    *buf = 138412546;
    v13 = this;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "InstallAndCopyQuasarModelPathForLanguage language=%@ resultPath=%@", buf, 0x16u);
  }

  if (v11)
  {
    v9 = RXOSLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "InstallAndCopyQuasarModelPathForLanguage failed with: %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    return CFRetain(v6);
  }

  else
  {
    return 0;
  }
}

CFTypeRef RDLanguageAssets::CopyInstalledAssetPathForLanguage(const __CFString *this, const __CFString *a2)
{
  LocaleIDFromLanguage = RDLanguageAssets::createLocaleIDFromLanguage(this, a2);
  v3 = RXGetAssetFallbackLocaleIdentifier();
  if (v3)
  {
    v5 = CFRetain(v3);
    if (LocaleIDFromLanguage)
    {
      CFRelease(LocaleIDFromLanguage);
    }
  }

  else
  {
    v5 = LocaleIDFromLanguage;
  }

  LanguageFromLocaleID = RDLanguageAssets::createLanguageFromLocaleID(v5, v4);
  v11 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  v7 = [qword_100020DF0 copyInstalledAssetPathForLangaugeWithError:LanguageFromLocaleID error:&v11];
  if (v7)
  {
    v7 = CFRetain(v7);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    v9 = RXOSLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "CopyAssetPath failed with: %@", buf, 0xCu);
    }
  }

  if (LanguageFromLocaleID)
  {
    CFRelease(LanguageFromLocaleID);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

CFTypeRef RDLanguageAssets::CopySupportedLanguagesForVoiceControl(RDLanguageAssets *this)
{
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  result = [qword_100020DF0 supportedLanguagesForVoiceControl];
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef RDLanguageAssets::CopyInstalledAssetSupportedTasksForLanguage(const __CFString *this, const __CFString *a2)
{
  LocaleIDFromLanguage = RDLanguageAssets::createLocaleIDFromLanguage(this, a2);
  v3 = RXGetAssetFallbackLocaleIdentifier();
  if (v3)
  {
    v5 = CFRetain(v3);
    if (LocaleIDFromLanguage)
    {
      CFRelease(LocaleIDFromLanguage);
    }
  }

  else
  {
    v5 = LocaleIDFromLanguage;
  }

  LanguageFromLocaleID = RDLanguageAssets::createLanguageFromLocaleID(v5, v4);
  v12 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  v7 = [qword_100020DF0 copyInstalledAssetSupportedTasksForLangaugeWithError:LanguageFromLocaleID error:&v12];
  v8 = v7;
  if (v12)
  {
    v9 = RXOSLog(v7);
    v7 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      *buf = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "CopyAssetSupportedTasks failed with: %@", buf, 0xCu);
    }
  }

  if (LanguageFromLocaleID)
  {
    CFRelease(LanguageFromLocaleID);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v10 = RXOSLog(v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "RDLanguageAssets: supportedTasks:%@", buf, 0xCu);
  }

  if (v8)
  {
    return CFRetain(v8);
  }

  else
  {
    return 0;
  }
}

void RDLanguageAssets::CancelDownloadForLanguage(RDLanguageAssets *this, const __CFString *a2)
{
  v3 = RXOSLog(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = this;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CancelDownloadForLanguage language=%@", buf, 0xCu);
  }

  v6 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_10001269C();
  }

  v4 = [qword_100020DF0 cancelDownloadForLanguage:this error:&v6];
  if (v6)
  {
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CancelDownloadForLanguage failed with: %@", buf, 0xCu);
    }
  }
}

id RDLanguageAssets::PurgeInstalledQuasarAssets(RDLanguageAssets *this)
{
  v6 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  v1 = [qword_100020DF0 purgeInstalledAssetsWithError:&v6];
  v2 = RXOSLog(v1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 138412290;
    v8 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Assets purged %@", buf, 0xCu);
  }

  if (v6)
  {
    v4 = RXOSLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "PurgeInstalledQuasarAssets failed with: %@", buf, 0xCu);
    }
  }

  return [v1 intValue];
}

void RDLanguageAssets::SetPurgeabilityForLanguages(RDLanguageAssets *this, const __CFArray *a2)
{
  v4 = RXOSLog(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v9 = this;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SetPurgeabilityForLanguages languages=%@%d", buf, 0x12u);
  }

  v7 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_10001269C();
  }

  v5 = [qword_100020DF0 setPurgeabilityForLanguages:this withPurgeability:a2 error:&v7];
  if (v7)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SetPurgeabilityForLanguages failed with: %@", buf, 0xCu);
    }
  }
}

id RDLanguageAssets::RemovePeerForProgressCallback(_xpc_connection_s *a1)
{
  v2 = RXOSLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = xpc_connection_get_pid(a1);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing Peer %d for callback", v4, 8u);
  }

  if (qword_100020DF8 != -1)
  {
    sub_10001269C();
  }

  return [qword_100020DF0 removePeerFromCallback:a1];
}

id RDLanguageAssets::AddPeerForProgressCallback(_xpc_connection_s *a1)
{
  v2 = RXOSLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = xpc_connection_get_pid(a1);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Adding Peer %d for callback", v4, 8u);
  }

  if (qword_100020DF8 != -1)
  {
    sub_10001269C();
  }

  return [qword_100020DF0 addPeerForCallback:a1];
}

void sub_100002580(id a1)
{
  v1 = RXOSLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Using RDAssetManager2", v2, 2u);
  }

  qword_100020DF0 = +[RDAssetManager2 sharedInstance];
}

void sub_100002D44(id a1)
{
  qword_100020E00 = objc_alloc_init(RDAssetManager);

  _objc_release_x1();
}

void sub_100002ED8(uint64_t a1)
{
  v2 = RXOSLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"with";
    }

    else
    {
      v3 = @"without";
    }

    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Kicking off catalog download %@ urgency", buf, 0xCu);
  }

  if (([*(a1 + 32) catalogDownloadInProgress] & 1) == 0)
  {
    if (*(a1 + 40) == 1)
    {
      v4 = *(a1 + 32);
LABEL_13:
      v9 = RXOSLog([v4 setCatalogDownloadInProgress:1]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Downloading EmbeddedSpeech catalog", buf, 2u);
      }

      v10 = sub_100003118(*(a1 + 40));
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000317C;
      v11[3] = &unk_10001C9B0;
      v11[4] = *(a1 + 32);
      [MAAsset startCatalogDownload:@"com.apple.MobileAsset.EmbeddedSpeech" options:v10 then:v11];

      return;
    }

    v5 = +[NSDate date];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v4 = *(a1 + 32);
    if (v7 - v4[1] >= 86400.0)
    {
      goto LABEL_13;
    }

    v8 = RXOSLog(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Too early since last catalog download. Returning.", buf, 2u);
    }
  }
}

id sub_100003118(int a1)
{
  v2 = objc_alloc_init(MADownloadOptions);
  [v2 setAllowsCellularAccess:0];
  [v2 setDiscretionary:a1 ^ 1u];
  [v2 setRequiresPowerPluggedIn:0];

  return v2;
}

void sub_10000317C(uint64_t a1, uint64_t a2)
{
  v4 = RXOSLog([*(a1 + 32) setCatalogDownloadInProgress:0]);
  v5 = v4;
  if (!a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sucessfully downloaded the catalog", buf, 2u);
    }

    v12 = +[NSDate date];
    [v12 timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 8) = v13;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [*(a1 + 32) requestedLanguagesForDownload];
    v14 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v8);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = *(a1 + 32);
          v20 = *(v19 + 24);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100003400;
          v21[3] = &unk_10001C988;
          v21[4] = v19;
          v21[5] = v18;
          dispatch_async(v20, v21);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v15);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) _errorStringForDownloadResult:a2];
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "The MobileAsset catalog download failed: error = %@", buf, 0xCu);
  }

  if ([*(a1 + 32) sendCallback])
  {
    v7 = *(a1 + 32);
    v8 = [v7 _errorStringForDownloadResult:a2];
    LODWORD(v9) = -1.0;
    LODWORD(v10) = -1.0;
    LODWORD(v11) = -1.0;
    [v7 _sendDownloadCallbackDictionaryWithLanguage:0 downloadPhase:@"DownloadFailed" timeRemaining:v8 bytesWritten:v9 bytesTotal:v10 error:v11];
LABEL_15:
  }
}

uint64_t sub_100003550(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003568(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 queryAndCopyInstallationStatusForLangaugesWithError:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *(*(a1[5] + 8) + 40);
  if (!v8 || ![v8 count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

id sub_100003CCC(void *a1)
{
  v1 = [a1 stringByAppendingPathComponent:@"mini.json"];
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:v1];
  if (v3)
  {
    v4 = [NSData dataWithContentsOfFile:v1];
    if (!v4)
    {
      v7 = RXOSLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "could not read contents from : %@", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_19;
    }

    v12 = 0;
    v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v12];
    v6 = v12;
    v7 = v6;
    if (v6)
    {
      v8 = RXOSLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ : not a valid json", buf, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
        goto LABEL_18;
      }

      v8 = [v5 objectForKey:@"model-info"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 objectForKey:@"tasks"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v10 containsObject:@"DictationCC"];
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_17;
      }
    }

    v9 = 0;
LABEL_17:

LABEL_18:
LABEL_19:

    goto LABEL_20;
  }

  v4 = RXOSLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = @"mini.json";
    v15 = 2112;
    v16 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ does not exist at: %@ ", buf, 0x16u);
  }

  v9 = 0;
LABEL_20:

  return v9;
}

void sub_100004454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004474(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  [v2 _cancelDownloadForLangaugeWithError:v3 withError:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_100004A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100004AB0(uint64_t a1)
{
  v2 = [*(a1 + 32) catalogDownloadInProgress];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 requestedLanguagesForDownload];
    v5 = [v4 containsObject:*(a1 + 40)];

    if (v5)
    {
      return;
    }

    v7 = RXOSLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Catalog download is in progress, caching %@", buf, 0xCu);
    }

    v9 = [*(a1 + 32) requestedLanguagesForDownload];
    [v9 addObject:*(a1 + 40)];

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    v24 = NSLocalizedFailureReasonErrorKey;
    v25 = @"Catalog download in progress";
    v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
    goto LABEL_8;
  }

  v16 = *(a1 + 40);
  v23 = 0;
  v17 = [v3 _installedAssetForLanguage:v16 error:&v23];
  v12 = v23;
  v18 = [v17 _es_quasarModelPath];
  v19 = [v18 copy];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v22 = *(*(a1 + 56) + 8);
    v12 = v12;
    v15 = *(v22 + 40);
    *(v22 + 40) = v12;
LABEL_8:
  }
}

void sub_100004D94(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004E44;
  v6[3] = &unk_10001CA78;
  v10 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  dispatch_async(v3, v6);
}

void sub_100004E44(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    v4 = [*(a1 + 32) results];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10 = 0;
    v7 = [v5 _installedAssetFromFoundAssets:v4 language:v6 error:&v10];
    v8 = v10;
    v2 = v8;
    if (!v7)
    {
      v9 = RXOSLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote fetch asset fetch got assets but none have been installed yet: %@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  v2 = RXOSLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _errorStringForQueryResult:*(a1 + 56)];
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Async asset query failed for query=%@, error=%@", buf, 0x16u);
LABEL_9:
  }
}

void sub_100006220(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isStalled];
  v5 = v4;
  v6 = RXOSLog(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v24 = 134218240;
      v25 = COERCE_DOUBLE([v3 totalWritten]);
      v26 = 2048;
      v27 = [v3 totalExpected];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asset Download Progress stalled at %lld of %lld bytes", &v24, 0x16u);
    }

    if ([*(a1 + 32) sendCallback])
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) _es_language];
      v10 = [v3 totalWritten];
      *&v11 = [v3 totalExpected];
      v12 = @"Stalled";
      LODWORD(v13) = -1.0;
      v14 = v8;
      v15 = v9;
      *&v16 = v10;
LABEL_10:
      [v14 _sendDownloadCallbackDictionaryWithLanguage:v15 downloadPhase:v12 timeRemaining:0 bytesWritten:v13 bytesTotal:v16 error:v11];
    }
  }

  else
  {
    if (v7)
    {
      v17 = [v3 totalWritten];
      v18 = (v17 / [v3 totalExpected]);
      [v3 expectedTimeRemaining];
      v24 = 134218240;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asset Download progress: %.2f percent , ~%.2f seconds remaining", &v24, 0x16u);
    }

    if ([*(a1 + 32) sendCallback])
    {
      v20 = *(a1 + 32);
      v9 = [*(a1 + 40) _es_language];
      [v3 expectedTimeRemaining];
      v22 = v21;
      v23 = [v3 totalWritten];
      *&v11 = [v3 totalExpected];
      v12 = @"Downloading";
      v14 = v20;
      v15 = v9;
      *&v13 = v22;
      *&v16 = v23;
      goto LABEL_10;
    }
  }
}

void sub_100006430(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) sendCallback];
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) _es_language];
      v7 = [*(a1 + 32) _errorStringForDownloadResult:a2];
      LODWORD(v8) = -1.0;
      LODWORD(v9) = -1.0;
      LODWORD(v10) = -1.0;
      [v5 _sendDownloadCallbackDictionaryWithLanguage:v6 downloadPhase:@"DownloadFailed" timeRemaining:v7 bytesWritten:v8 bytesTotal:v9 error:v10];
    }

    v11 = RXOSLog(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) _errorStringForDownloadResult:a2];
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Asset download failed: %@", &v18, 0xCu);
    }

    goto LABEL_10;
  }

  v13 = RXOSLog(a1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asset download successful", &v18, 2u);
  }

  if ([*(a1 + 32) sendCallback])
  {
    v14 = *(a1 + 32);
    v11 = [*(a1 + 40) _es_language];
    LODWORD(v15) = -1.0;
    LODWORD(v16) = -1.0;
    LODWORD(v17) = -1.0;
    [v14 _sendDownloadCallbackDictionaryWithLanguage:v11 downloadPhase:@"Downloaded" timeRemaining:0 bytesWritten:v15 bytesTotal:v16 error:v17];
LABEL_10:
  }
}

void sub_1000065E8(uint64_t a1, uint64_t a2)
{
  v4 = RXOSLog(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) _errorStringForPurgeResult:a2];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to purge %@: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Purged %@", &v9, 0xCu);
  }
}

void *sub_100006718(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  v5 = [v4 queryMetaDataSync];
  if (!v5)
  {
    v20 = v4;
    [v4 results];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v24 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v22;
      v14 = ASAttributeUnarchivedSize;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 _es_isInstalled])
          {
            buf[0] = 0;
            v3[2](v3, v16, buf);
            if (buf[0] == 1)
            {
              goto LABEL_18;
            }

            v17 = [v16 attributes];
            v18 = [v17 objectForKey:v14];
            v12 += [v18 longLongValue];
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

LABEL_18:

    a1 = [NSNumber numberWithLongLong:v12];
    v4 = v20;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = RXOSLog(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MobileAsset is sad: %ld", buf, 0xCu);
  }

  if (a1)
  {
    v26 = @"MAQueryResult";
    v8 = [NSNumber numberWithInteger:v6];
    v27 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *a1 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v9];

    a1 = 0;
LABEL_19:
  }

  return a1;
}

void sub_100006AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006AF8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = RXOSLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Purging asset for CacheDelete: %@", buf, 0xCu);
  }

  v7 = [v5 purgeSync];
  if (v7)
  {
    v8 = [NSNumber numberWithInteger:v7, @"MAPurgeResult"];
    v17 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:102 userInfo:v9];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v14 = RXOSLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Purging failed: %@", buf, 0xCu);
    }

    *a3 = 1;
  }
}

void sub_1000076E8(id a1)
{
  qword_100020E10 = objc_alloc_init(RDAssetManager2);

  _objc_release_x1();
}

uint64_t sub_10000806C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008084(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 _queryAndCopyInstallationStatusForLanguagesWithError:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *(*(a1[5] + 8) + 40);
  if (!v8 || ![v8 count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

void sub_1000082E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100008308(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

intptr_t sub_100008B04(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_100008FCC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  [v2 _cancelDownloadForLanguageWithError:v3 withError:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_1000094F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v10 = 0;
  [SFSpeechAssetManager setAssetsPurgeability:v2 forLanguages:v3 error:&v10];
  v4 = v10;
  v5 = RXOSLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    *buf = 138412802;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setPurgeabilityForLanguages, languages=%@  purgeability= %d error=%@", buf, 0x1Cu);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v4;
}

void sub_1000098A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000098D0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 _installedAssetForLanguage:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = [v4 copy];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void sub_100009E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100009E7C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000A408(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A4D8;
  v10[3] = &unk_10001CF30;
  v10[4] = v7;
  v9 = v6;
  v14 = *(a1 + 56);
  v11 = v9;
  v13 = a2;
  v12 = *(a1 + 48);
  v15 = *(a1 + 60);
  v16 = a3;
  dispatch_async(v8, v10);
}

void sub_10000A4D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _isActiveDownloadForLanguage:*(a1 + 40) downloadId:*(a1 + 64)];
  if (v2)
  {
    v3 = fmin(*(a1 + 56) / 100.0, 1.0);
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:*(a1 + 48)];
    v6 = v5;

    v7 = -1.0;
    if (v3 > 0.0)
    {
      v8 = 0.0;
      if (v6 >= 0.0)
      {
        v8 = v6;
      }

      v9 = v8;
      v7 = (1.0 - v3) * v9 / v3;
    }

    v10 = *(a1 + 68) * v3;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (*(a1 + 72))
    {
      v13 = RXOSLog([v11 _stalledDownloadForLanguage:v12]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (v10 / *(a1 + 68));
        v15 = *(a1 + 64);
        v16 = [*(a1 + 32) _downloadStatusDescription];
        v31 = 134218754;
        *v32 = v14;
        *&v32[8] = 2048;
        *&v32[10] = v7;
        v33 = 1024;
        v34 = v15;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asset Download Progress stalled at : %.2f ratio , ~%.2f seconds remaining, downloadId=%d, %@", &v31, 0x26u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        LODWORD(v19) = *(a1 + 68);
        v22 = @"Stalled";
        LODWORD(v17) = -1.0;
LABEL_20:
        *&v18 = v10;
        [v20 _sendDownloadCallbackDictionaryWithLanguage:v21 downloadPhase:v22 timeRemaining:0 bytesWritten:v17 bytesTotal:v18 error:v19];
      }
    }

    else
    {
      v26 = [v11 _isDownloadingStalledForLanguage:v12];
      if (v26)
      {
        v26 = [*(a1 + 32) _resumeStalledDownloadForLanguage:*(a1 + 40)];
      }

      v27 = RXOSLog(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = (v10 / *(a1 + 68));
        v29 = *(a1 + 64);
        v30 = [*(a1 + 32) _downloadStatusDescription];
        v31 = 134218754;
        *v32 = v28;
        *&v32[8] = 2048;
        *&v32[10] = v7;
        v33 = 1024;
        v34 = v29;
        v35 = 2112;
        v36 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Asset Download progress: %.2f ratio , ~%.2f seconds remaining, downloadId=%d, %@", &v31, 0x26u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        LODWORD(v19) = *(a1 + 68);
        v22 = @"Downloading";
        *&v17 = v7;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v23 = RXOSLog(v2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 64);
      v25 = [*(a1 + 32) _downloadStatusDescription];
      v31 = 67109378;
      *v32 = v24;
      *&v32[4] = 2112;
      *&v32[6] = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Ignoring non-active asset download progress downloadId=%d, %@", &v31, 0x12u);
    }
  }
}

void sub_10000A7F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A8E4;
  block[3] = &unk_10001CF80;
  block[4] = v8;
  v10 = v7;
  v17 = *(a1 + 48);
  v14 = v10;
  v15 = v6;
  v16 = v5;
  v18 = *(a1 + 52);
  v11 = v5;
  v12 = v6;
  dispatch_async(v9, block);
}

void sub_10000A8E4(uint64_t a1)
{
  v2 = [*(a1 + 32) _isActiveDownloadForLanguage:*(a1 + 40) downloadId:*(a1 + 64)];
  if (v2)
  {
    [*(a1 + 32) _endAllDownloadsForLanguage:*(a1 + 40)];
    v3 = *(a1 + 48);
    if ([*(a1 + 56) length])
    {
      v4 = sub_10000B448(*(a1 + 56), 0, @"DictationCC");
    }

    else
    {
      v4 = 0;
    }

    v7 = [*(a1 + 56) length];
    if (v7 && (v4 & 1) == 0)
    {
      v36 = NSLocalizedFailureReasonErrorKey;
      v37 = @"Asset is incompatible";
      v8 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v9 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v8];

      v3 = v9;
    }

    v10 = RXOSLog(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = [*(a1 + 32) _downloadStatusDescription];
      v28 = 138413314;
      *v29 = v11;
      *&v29[8] = 2112;
      *&v29[10] = v3;
      v30 = 1024;
      v31 = v4;
      v32 = 1024;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Asset downloaded, assetPath=%@, error=%@, isCompatibleAsset=%d, downloadId=%d, %@", &v28, 0x2Cu);
    }

    v15 = RXOSLog(v14);
    v16 = v15;
    if (v4)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Asset download successful", &v28, 2u);
      }

      v17 = *(a1 + 68);
      if ([*(a1 + 32) _sendCallback])
      {
        LODWORD(v19) = *(a1 + 68);
        LODWORD(v18) = v17;
        [*(a1 + 32) _sendDownloadCallbackDictionaryWithLanguage:*(a1 + 40) downloadPhase:@"Downloading" timeRemaining:0 bytesWritten:0.0 bytesTotal:v18 error:v19];
        LODWORD(v20) = *(a1 + 68);
        LODWORD(v21) = v17;
        [*(a1 + 32) _sendDownloadCallbackDictionaryWithLanguage:*(a1 + 40) downloadPhase:@"Downloaded" timeRemaining:0 bytesWritten:0.0 bytesTotal:v21 error:v20];
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Asset download failed", &v28, 2u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v23 = *(a1 + 32);
        v22 = *(a1 + 40);
        v24 = [v3 description];
        LODWORD(v25) = -1.0;
        LODWORD(v26) = -1.0;
        LODWORD(v27) = -1.0;
        [v23 _sendDownloadCallbackDictionaryWithLanguage:v22 downloadPhase:@"DownloadFailed" timeRemaining:v24 bytesWritten:v25 bytesTotal:v26 error:v27];
      }
    }
  }

  else
  {
    v3 = RXOSLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 64);
      v6 = [*(a1 + 32) _downloadStatusDescription];
      v28 = 67109378;
      *v29 = v5;
      *&v29[4] = 2112;
      *&v29[6] = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring non-active asset download downloadId=%d, %@", &v28, 0x12u);
    }
  }
}

id sub_10000B448(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 length])
  {
    v7 = [v5 stringByAppendingPathComponent:@"mini.json"];
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:v7];
    if ((v9 & 1) == 0)
    {
      v10 = RXOSLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = @"mini.json";
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ does not exist at: %@ ", buf, 0x16u);
      }

      v15 = 0;
      goto LABEL_26;
    }

    v10 = [NSData dataWithContentsOfFile:v7];
    if (!v10)
    {
      v13 = RXOSLog(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "could not read contents from : %@", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_25;
    }

    v32 = 0;
    v11 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:&v32];
    v12 = v32;
    v13 = v12;
    if (v12)
    {
      v14 = RXOSLog(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ : not a valid json", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = 0;
        goto LABEL_24;
      }

      v14 = v11;
      v16 = +[_EARSpeechRecognizer minimumSupportedConfigurationVersion];
      [v16 floatValue];
      v18 = v17;

      v19 = +[_EARSpeechRecognizer maximumSupportedConfigurationVersion];
      [v19 floatValue];
      v21 = v20;

      v22 = [v14 objectForKey:@"version-major"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v22 floatValue], v23 >= v18) && (objc_msgSend(v22, "floatValue"), v24 <= v21))
      {
        v31 = [v14 objectForKey:@"model-info"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v31;
          v30 = [v29 objectForKey:@"version"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (a2 && (isKindOfClass & 1) != 0)
          {
            *a2 = v30;
          }

          v27 = [v29 objectForKey:@"tasks"];
          v28 = v27;
          if ([v30 length] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v15 = [v27 containsObject:v6];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

LABEL_24:
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v7 = RXOSLog(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "empty quasarModelPath", buf, 2u);
  }

  v15 = 0;
LABEL_27:

  return v15;
}

void RDMinions::LockReader(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  sub_10000DE44(a1 + 120, &v17, &v17);
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BA10;
  block[3] = &unk_10001CFF8;
  v16 = a1;
  v13 = v17;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void sub_10000BA10(uint64_t a1)
{
  v2 = *(a1 + 56);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  do
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000BBA4;
    v3[3] = &unk_10001CFD0;
    v7 = v2;
    v4 = *(a1 + 32);
    v5 = &v8;
    v6 = v12;
    dispatch_sync(&_dispatch_main_q, v3);
    if ((v9[3] & 1) == 0)
    {
      pthread_mutex_lock(&stru_100020E38);
      pthread_cond_wait(&stru_100020E78, &stru_100020E38);
      pthread_mutex_unlock(&stru_100020E38);
    }
  }

  while ((v9[3] & 1) == 0);
  _Block_object_dispose(&v8, 8);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 48));
  _Block_object_dispose(v12, 8);
}

void sub_10000BB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BBA4(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 128);
  if (!v3)
  {
LABEL_7:
    v6 = RXOSLog(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "daemon died while waiting for read lock", buf, 2u);
    }

    goto LABEL_10;
  }

  v4 = a1[4];
  while (1)
  {
    v5 = v3[4];
    if (v4 >= v5)
    {
      break;
    }

LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_6;
  }

  if (!*(v2 + 168))
  {
    sub_10000E404(v2 + 120, a1 + 4);
    sub_10000DE44(v2 + 144, a1 + 4, a1 + 4);
LABEL_10:
    v7 = a1 + 5;
    v8 = 1;
    goto LABEL_11;
  }

  v7 = a1 + 6;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v9 = RXOSLog(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "daemon waiting for read lock", v10, 2u);
    }

    v8 = 0;
LABEL_11:
    *(*(*v7 + 8) + 24) = v8;
  }
}

id RDMinions::Summon(RDMinions *this)
{
  val = 0;
  if (*(this + 11))
  {
    val = *(*(this + 9) + 32);
    v2 = sub_10000E404(this + 72, &val);
    v3 = RXOSLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [val processIdentifier];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "minion(%d) recycled.", &buf, 8u);
    }
  }

  else
  {
    memset(out, 0, sizeof(out));
    uuid_generate(out);
    v5 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.SpeechRecognitionCore.speechrecognitiond"];
    v6 = val;
    val = v5;

    if (val)
    {
      v8 = [[NSUUID alloc] initWithUUIDBytes:out];
      [val _setUUID:v8];

      v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRDBrokerProtocol];
      [val setRemoteObjectInterface:v9];

      objc_initWeak(&location, val);
      v10 = val;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000C14C;
      v22[3] = &unk_10001D020;
      objc_copyWeak(&v23, &location);
      [v10 setInvalidationHandler:v22];
      [val resume];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v28 = 0x3032000000;
      v29 = sub_10000C474;
      v30 = sub_10000C484;
      v31 = 0;
      v11 = [val synchronousRemoteObjectProxyWithErrorHandler:&stru_10001D060];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000C490;
      v21[3] = &unk_10001D088;
      v21[4] = &buf;
      [v11 brokerIntro:@"Hello" reply:v21];
      v12 = os_transaction_create();
      p_val = &val;
      v13 = sub_10000F208(this + 96, &val, &unk_100014EE0, &p_val);
      v14 = v13[5];
      v13[5] = v12;

      _Block_object_dispose(&buf, 8);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = RXOSLog(v7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = out;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to create new minion instance %s", &buf, 0xCu);
      }
    }

    v17 = RXOSLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [val processIdentifier];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "minion(%d) created.", &buf, 8u);
    }
  }

  v19 = val;

  return v19;
}

void sub_10000C14C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10000C1A8(WeakRetained);
}

void sub_10000C1A8(void *a1)
{
  v1 = a1;
  v19 = v1;
  v2 = RXOSLog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21[0] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Releasing minion %p\n", buf, 0xCu);
  }

  v3 = sMinions;
  if (sMinions != &qword_100020EE0)
  {
    while (1)
    {
      v4 = *(v3 + 80);
      if (v4 != (v3 + 88))
      {
        break;
      }

LABEL_12:
      if (sub_10000E404(v3 + 104, &v19))
      {
        v16 = sub_10000DE44(v3 + 128, &v19, &v19);
        v12 = RXOSLog(v16);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v19 processIdentifier];
          v18 = (v3 + 32);
          if (*(v3 + 55) < 0)
          {
            v18 = *v18;
          }

          *buf = 67109378;
          LODWORD(v21[0]) = v17;
          WORD2(v21[0]) = 2080;
          *(v21 + 6) = v18;
          v15 = "daemon(%d) [%s] is now idle (was batch).";
          goto LABEL_25;
        }

LABEL_26:

        goto LABEL_27;
      }

      v8 = *(v3 + 8);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 16);
          v7 = *v9 == v3;
          v3 = v9;
        }

        while (!v7);
      }

      v3 = v9;
      if (v9 == &qword_100020EE0)
      {
        goto LABEL_27;
      }
    }

    while (v4[8] != v19)
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
      if (v6 == (v3 + 88))
      {
        goto LABEL_12;
      }
    }

    v10 = v4[7] - 1;
    v4[7] = v10;
    if (!v10)
    {
      sub_10000F11C((v3 + 80), v4 + 4);
      v11 = sub_10000DE44(v3 + 128, &v19, &v19);
      v12 = RXOSLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v19 processIdentifier];
        v14 = (v3 + 32);
        if (*(v3 + 55) < 0)
        {
          v14 = *v14;
        }

        *buf = 67109378;
        LODWORD(v21[0]) = v13;
        WORD2(v21[0]) = 2080;
        *(v21 + 6) = v14;
        v15 = "daemon(%d) [%s] is now idle (was live).";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0x12u);
      }

      goto LABEL_26;
    }
  }

LABEL_27:
}

uint64_t sub_10000C474(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void **sub_10000C4CC(void **a1)
{
  v3 = a1;
  sub_10000F338(&v3);
  return a1;
}

void RDRecognizers::RDRecognizers(RDRecognizers *this)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  v1 = 0;
  out_token = 0;
  notify_register_dispatch("com.apple.sessionagent.screenIsLocked", &out_token, &_dispatch_main_q, &stru_10001D0C8);
  notify_register_dispatch("com.apple.sessionagent.screenIsUnlocked", &v1, &_dispatch_main_q, &stru_10001D0E8);
}

void sub_10000C590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_10000F338(va);
  _Unwind_Resume(a1);
}

unint64_t RDRecognizers::UpdateRecognizer(uint64_t *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  int64 = xpc_dictionary_get_int64(v7, kRDKeyRecognizerID[0]);
  v16 = xpc_dictionary_get_value(v7, kRDKeyWantFeedback[0]);
  if (v16)
  {
    if ((int64 & 0x8000000000000000) != 0 || (v17 = *a1, int64 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3)))
    {
      v19 = a1[4];
      if (v19)
      {
        a1[4] = v19 - 1;
        v17 = *a1;
        v20 = 40 * int64 + 40;
        do
        {
          ++int64;
          v21 = *(v17 + v20);
          v20 += 40;
        }

        while (v21);
      }

      else
      {
        v25 = a1[1];
        int64 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - *a1) >> 3);
        v26 = a1[2];
        if (v25 >= v26)
        {
          if (int64 + 1 > 0x666666666666666)
          {
            sub_10000F480();
          }

          v28 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - *a1) >> 3);
          v29 = 2 * v28;
          if (2 * v28 <= int64 + 1)
          {
            v29 = int64 + 1;
          }

          if (v28 >= 0x333333333333333)
          {
            v30 = 0x666666666666666;
          }

          else
          {
            v30 = v29;
          }

          v39[4] = a1;
          if (v30)
          {
            sub_10000F498(a1, v30);
          }

          v31 = 40 * int64;
          v39[0] = 0;
          v39[1] = v31;
          v39[3] = 0;
          *v31 = 0;
          *(v31 + 32) = 0;
          v39[2] = 40 * int64 + 40;
          sub_10000F3B8(a1, v39);
          v27 = a1[1];
          sub_10000F4F0(v39);
        }

        else
        {
          *v25 = 0;
          v25[4] = 0;
          v27 = (v25 + 5);
        }

        a1[1] = v27;
        v17 = *a1;
      }

      v32 = *(a1 + 6);
      *(a1 + 6) = v32 + 1;
      *(v17 + 40 * int64 + 16) = v32;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v33 = v17 + 40 * int64;
    objc_storeStrong(v33, a2);
    *(v33 + 8) = xpc_dictionary_get_uint64(v7, kRDKeyActivityMode[0]);
    *(v33 + 20) = xpc_BOOL_get_value(v16);
    if (v18)
    {
      *(v33 + 22) = 0;
    }

    v34 = xpc_dictionary_get_int64(v7, kRDKeyClientPID[0]);
    *(v33 + 24) = v34;
    if (!v34)
    {
      *(v33 + 24) = xpc_connection_get_pid(v6);
    }

    v35 = xpc_dictionary_get_value(v7, kRDKeyCommandInfo[0]);
    if (v35)
    {
      v36 = *(v33 + 32);
      if (v36)
      {
        CFRelease(v36);
      }

      if (xpc_get_type(v35) == &_xpc_type_array)
      {
        v37 = _CFXPCCreateCFObjectFromXPCObject();
      }

      else
      {
        v37 = 0;
      }

      *(v33 + 32) = v37;
    }

LABEL_40:
    goto LABEL_41;
  }

  if ((int64 & 0x8000000000000000) == 0 && int64 < 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3))
  {
    v22 = *a1 + 40 * int64;
    v23 = *(v22 + 32);
    if (v23)
    {
      CFRelease(v23);
      *(v22 + 32) = 0;
    }

    v24 = *v22;
    *v22 = 0;

    ++a1[4];
    goto LABEL_40;
  }

  sub_10000C938(0, v9, v10, v11, v12, v13, v14, v15, int64);
  int64 = -1;
LABEL_41:

  return int64;
}

void sub_10000C938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8 = CFStringCreateWithFormatAndArguments(0, 0, @"Received invalid recognizer ID in UpdateRecognizer %lld", va);
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v8, 0x8000100u, 0);
  CFRelease(v8);
  v11 = RXOSLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 68157954;
    Length = CFDataGetLength(ExternalRepresentation);
    v14 = 2080;
    BytePtr = CFDataGetBytePtr(ExternalRepresentation);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%.*s", buf, 0x12u);
  }

  CFRelease(ExternalRepresentation);
}

void RDRecognizers::RemovePeer(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v8 = v3;
    do
    {
      v6 = *v4;
      if (*v4 == v3)
      {
        v7 = *(v4 + 32);
        if (v7)
        {
          CFRelease(v7);
          *(v4 + 32) = 0;
          v6 = *v4;
        }

        *v4 = 0;

        ++a1[4];
        v3 = v8;
      }

      v4 += 40;
    }

    while (v4 != v5);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  pthread_mutex_init(&stru_100020E38, 0);
  pthread_cond_init(&stru_100020E78, 0);
  xpc_track_activity();
  xpc_main(sub_10000CB58);
}

void sub_10000CB58(void *a1)
{
  v1 = a1;
  v4 = v1;
  v2 = RXOSLog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BrokerConnection: got event handler, adding peer", buf, 2u);
  }

  xpc_connection_set_target_queue(v1, &_dispatch_main_q);
  operator new();
}

void sub_10000CCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v93 = v4;
  xdict = v3;
  type = xpc_get_type(xdict);
  if (type != &_xpc_type_error)
  {
    if (type != &_xpc_type_dictionary)
    {
      __assert_rtn("brokerd_peer_event_handler", "RDBroker.mm", 750, "type == XPC_TYPE_DICTIONARY");
    }

    int64 = xpc_dictionary_get_int64(xdict, kRDKeyMessage[0]);
    v7 = int64;
    reply = 0;
    switch(int64)
    {
      case 0x1F4uLL:
        reply = xpc_dictionary_create_reply(xdict);
        v9 = kRDKeyRecognizerID[0];
        updated = RDRecognizers::UpdateRecognizer(qword_100020EA8, v4, xdict);
        xpc_dictionary_set_int64(reply, v9, updated);
        goto LABEL_64;
      case 0x1F5uLL:
        reply = xpc_dictionary_create_reply(xdict);
        goto LABEL_64;
      case 0x1F6uLL:
        reply = xpc_dictionary_create_reply(xdict);
        v41 = xpc_dictionary_get_value(xdict, kRDKeyLocale[0]);
        v42 = _CFXPCCreateCFObjectFromXPCObject();

        if (v42)
        {
          CFRelease(v42);
        }

        goto LABEL_64;
      case 0x1F7uLL:
        goto LABEL_96;
      case 0x1F8uLL:
        v32 = RDLanguageAssets::CopyInstallationStatus(int64);
        reply = xpc_dictionary_create_reply(xdict);
        if (!v32)
        {
          goto LABEL_64;
        }

        v33 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, kRDKeyAssetStatus[0], v33);
        CFRelease(v32);
        goto LABEL_63;
      case 0x1F9uLL:
        string = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        v44 = CFStringCreateWithCStringNoCopy(0, string, 0x8000100u, kCFAllocatorNull);
        v46 = RDLanguageAssets::InstallAndCopyQuasarModelPathForLanguage(v44, v45);
        if (v46)
        {
          CFRelease(v46);
        }

        goto LABEL_95;
      case 0x1FAuLL:
        v47 = RDLanguageAssets::PurgeInstalledQuasarAssets(int64);
        reply = xpc_dictionary_create_reply(xdict);
        xpc_dictionary_set_int64(reply, kRDKeyPurgeStatus[0], v47);
        goto LABEL_64;
      case 0x1FBuLL:
        if (xpc_dictionary_get_BOOL(xdict, kRDKeyDownloadProgress))
        {
          RDLanguageAssets::AddPeerForProgressCallback(v4);
          reply = 0;
          byte_100020ED0 = 1;
          goto LABEL_96;
        }

        RDLanguageAssets::RemovePeerForProgressCallback(v4);
        goto LABEL_95;
      case 0x1FCuLL:
        v52 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        v53 = CFStringCreateWithCStringNoCopy(0, v52, 0x8000100u, kCFAllocatorNull);
        RDLanguageAssets::CancelDownloadForLanguage(v53, v54);
        goto LABEL_95;
      case 0x1FDuLL:
        v35 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        v36 = CFStringCreateWithCStringNoCopy(0, v35, 0x8000100u, kCFAllocatorNull);
        v38 = RDLanguageAssets::CopyInstalledAssetPathForLanguage(v36, v37);
        if (!v38)
        {
          goto LABEL_95;
        }

        reply = xpc_dictionary_create_reply(xdict);
        v33 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, kRDKeyInstalledAssetPath[0], v33);
        CFRelease(v38);
        goto LABEL_63;
      case 0x1FEuLL:
        v48 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        v49 = CFStringCreateWithCStringNoCopy(0, v48, 0x8000100u, kCFAllocatorNull);
        v51 = RDLanguageAssets::CopyInstalledAssetSupportedTasksForLanguage(v49, v50);
        if (!v51)
        {
          goto LABEL_95;
        }

        reply = xpc_dictionary_create_reply(xdict);
        v33 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, kRDKeyInstalledAssetSupportedTasks[0], v33);
        CFRelease(v51);
        goto LABEL_63;
      case 0x1FFuLL:
        v22 = xpc_dictionary_get_array(xdict, kRDKeyLocales[0]);
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        for (i = 0; ; ++i)
        {
          count = xpc_array_get_count(v22);
          if (i >= count)
          {
            break;
          }

          v26 = xpc_array_get_string(v22, i);
          v27 = CFStringCreateWithCStringNoCopy(0, v26, 0x8000100u, kCFAllocatorNull);
          MutableCopy = CFStringCreateMutableCopy(0, 0, v27);
          v101.length = CFStringGetLength(v27);
          v101.location = 0;
          CFStringFindAndReplace(MutableCopy, @"_", @"-", v101, 0);
          if (RXEngineTypeForLocaleIdentifier() == 1)
          {
            CFArrayAppendValue(Mutable, MutableCopy);
          }

          CFRelease(MutableCopy);
          v29 = CFStringCreateMutableCopy(0, 0, v27);
          v102.length = CFStringGetLength(v27);
          v102.location = 0;
          CFStringFindAndReplace(v29, @"-", @"_", v102, 0);
          CFRelease(v27);
          v30 = RXGetAssetFallbackLocaleIdentifier();
          CFRelease(v29);
          if (v30)
          {
            v31 = CFStringCreateMutableCopy(0, 0, v30);
            v103.length = CFStringGetLength(v30);
            v103.location = 0;
            CFStringFindAndReplace(v31, @"_", @"-", v103, 0);
            if (RXEngineTypeForLocaleIdentifier() == 1)
            {
              CFArrayAppendValue(Mutable, v31);
            }

            CFRelease(v31);
          }
        }

        v55 = RDLanguageAssets::CopyInstallationStatus(count);
        v56 = CFGetTypeID(v55);
        if (v56 == CFDictionaryGetTypeID())
        {
          CFDictionaryGetCount(v55);
          operator new[]();
        }

        RDLanguageAssets::SetPurgeabilityForLanguages(Mutable, 0);
        CFRelease(Mutable);
        CFRelease(v55);

        goto LABEL_95;
      case 0x200uLL:
        v34 = RDLanguageAssets::CopySupportedLanguagesForVoiceControl(int64);
        if (!v34)
        {
          goto LABEL_95;
        }

        reply = xpc_dictionary_create_reply(xdict);
        v33 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, kRDKeySupportedLanguagesForVoiceControl[0], v33);
        CFRelease(v34);
LABEL_63:

        goto LABEL_64;
      case 0x201uLL:
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync listenForExternalChanges];
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync sync];
        reply = 0;
        goto LABEL_96;
      case 0x202uLL:
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync listenForExternalChanges];
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync removeAllVocabularyEntriesFromCloud];
        reply = 0;
        goto LABEL_96;
      default:
        if (int64 != 101)
        {
          if (int64 == 999)
          {
            v83 = RXOSLog(999);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              pid = xpc_connection_get_pid(v4);
              sub_1000126EC(buf, pid, v83);
            }

            abort();
          }

          v21 = RXOSLog(int64);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = xpc_connection_get_pid(v4);
            *&buf[8] = 2048;
            *&buf[10] = v7;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "peer(%d) unknown or unimplemented message %lld", buf, 0x12u);
          }

LABEL_95:
          reply = 0;
LABEL_96:

          goto LABEL_97;
        }

        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync listenForExternalChanges];
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync sync];
        reply = xpc_dictionary_create_reply(xdict);
        v39 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        sub_10000E1A4(&v92, v39);
        if ((xpc_dictionary_get_uint64(xdict, kRDKeyOptions[0]) & 0x400000) != 0)
        {
          v40 = ".q";
        }

        else
        {
          if ((xpc_dictionary_get_uint64(xdict, kRDKeyOptions[0]) & 0x800000) == 0)
          {
            goto LABEL_72;
          }

          v40 = ".n";
        }

        std::string::append(&v92, v40);
LABEL_72:
        if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v92;
        }

        else
        {
          v57 = v92.__r_.__value_.__r.__words[0];
        }

        sub_10000E1A4(buf, v57);
        __p[0] = buf;
        v58 = sub_10000E9A8(&sMinions, buf, &unk_100014EE0, __p);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v59 = (v58 + 56);
        v91 = 0;
        v60 = *(v58 + 79);
        if (v60 < 0)
        {
          v60 = *(v58 + 64);
        }

        if (!v60)
        {
          v61 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
          std::string::assign((v58 + 56), v61);
        }

        if (!xpc_dictionary_get_BOOL(xdict, kRDKeyLiveAudio[0]))
        {
          v91 = RDMinions::Summon((v58 + 56));
          if (!v91)
          {
            goto LABEL_107;
          }

          v73 = sub_10000DE44(v58 + 104, &v91, &v91);
          v74 = RXOSLog(v73);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            *&buf[4] = v91;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "BrokerConnection: Summoning new batch minion %p", buf, 0xCu);
          }

          v75 = v91;
LABEL_105:
          if (v75)
          {
            __p[0] = 0;
            __p[1] = __p;
            v87 = 0x3032000000;
            v88 = sub_10000C474;
            v89 = sub_10000C484;
            v90 = 0;
            v81 = [v75 remoteObjectProxy];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10000E25C;
            *&buf[24] = &unk_10001D138;
            v99 = __p;
            v82 = reply;
            v96 = v82;
            v97 = v91;
            v98 = v4;
            v100 = v59;
            [v81 brokerIntro:@"Hello" reply:buf];

            _Block_object_dispose(__p, 8);
            reply = 0;
          }

LABEL_107:
          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

LABEL_64:
          if (reply)
          {
            xpc_connection_send_message(v4, reply);
          }

          goto LABEL_96;
        }

        v62 = xpc_dictionary_get_string(xdict, kRDKeyAudioDevice[0]);
        if (v62)
        {
          v63 = v62;
        }

        else
        {
          v63 = "?";
        }

        sub_10000E1A4(__p, v63);
        *buf = __p;
        v64 = sub_10000EDF4((v58 + 80), __p, &unk_100014EE0, buf, &v94);
        v65 = v64;
        if (v64[8])
        {
          v66 = RXOSLog(v64);
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_103;
          }

          v67 = v65[8];
          v68 = [v67 processIdentifier];
          v69 = __p;
          if (v87 < 0)
          {
            v69 = __p[0];
          }

          *buf = 134218498;
          *&buf[4] = v67;
          *&buf[12] = 1024;
          *&buf[14] = v68;
          *&buf[18] = 2080;
          *&buf[20] = v69;
          v70 = "BrokerConnection: Using existing live minion %p[%d] for audio device %s";
          v71 = v66;
          v72 = 28;
        }

        else
        {
          v76 = RDMinions::Summon(v59);
          v77 = v65[8];
          v65[8] = v76;

          v66 = RXOSLog(v78);
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_103;
          }

          v79 = v65[8];
          v80 = __p;
          if (v87 < 0)
          {
            v80 = __p[0];
          }

          *buf = 134218242;
          *&buf[4] = v79;
          *&buf[12] = 2080;
          *&buf[14] = v80;
          v70 = "BrokerConnection: Summoning new live minion %p for audio device %s";
          v71 = v66;
          v72 = 22;
        }

        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, v70, buf, v72);
LABEL_103:

        v75 = v65[8];
        v91 = v75;
        ++v65[7];
        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_105;
    }
  }

  v11 = xdict == &_xpc_error_connection_invalid || xdict == &_xpc_error_connection_interrupted;
  if (v11)
  {
    v12 = RXOSLog(type);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = xpc_connection_get_pid(v4);
      v14 = "INTERRUPTED";
      if (xdict == &_xpc_error_connection_invalid)
      {
        v14 = "INVALID";
      }

      *buf = 67109378;
      *&buf[4] = v13;
      *&buf[8] = 2080;
      *&buf[10] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "peer(%d) XPC_ERROR_CONNECTION_%s", buf, 0x12u);
    }

    context = xpc_connection_get_context(v4);
    v16 = *context;
    if (*context != context + 1)
    {
      do
      {
        v17 = v16[4];
        sub_10000C1A8(v17);

        v18 = v16[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v16[2];
            v11 = *v19 == v16;
            v16 = v19;
          }

          while (!v11);
        }

        v16 = v19;
      }

      while (v19 != context + 1);
    }

    RDRecognizers::RemovePeer(qword_100020EA8, v4);
    if (byte_100020ED0 == 1)
    {
      RDLanguageAssets::RemovePeerForProgressCallback(v4);
    }

    sub_10000E404(&qword_100020E20, &v93);
    sub_10000E8A4(context, context[1]);
    operator delete();
  }

  if (xdict == &_xpc_error_termination_imminent)
  {
    v20 = RXOSLog(type);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v4);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "peer(%d) XPC_ERROR_TERMINATION_IMMINENT", buf, 8u);
    }
  }

LABEL_97:
}

void *sub_10000DE44(uint64_t a1, unint64_t *a2, id *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_10000DF30(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_10000E008(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_10000DF88(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10000DFD4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t *sub_10000E008(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_10000E1A4(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000E900();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_10000E25C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v5 = [*(*(*(a1 + 56) + 8) + 40) _endpoint];
  v6 = RXOSLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BrokerConnection: endpoint %@", buf, 0xCu);
  }

  xpc_dictionary_set_int64(*(a1 + 32), kRDKeyMessage[0], 201);
  xpc_dictionary_set_value(*(a1 + 32), kRDKeyConnection[0], v5);
  xpc_dictionary_set_uint64(*(a1 + 32), kRDKeyObjectID[0], *(a1 + 40));
  context = xpc_connection_get_context(*(a1 + 48));
  *buf = a1 + 40;
  v8 = sub_10000F02C(context, (a1 + 40), &unk_100014EE0, buf);
  ++v8[5];
  RDMinions::LockReader(*(a1 + 64), *(a1 + 40), *(a1 + 48), *(a1 + 32));
}

uint64_t sub_10000E404(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10000E474(a1, v4);
  return 1;
}

uint64_t *sub_10000E474(uint64_t **a1, id *a2)
{
  v3 = sub_10000E4B0(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *sub_10000E4B0(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_10000E524(v6, a2);
  return v3;
}

uint64_t *sub_10000E524(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_10000E8A4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000E8A4(a1, *a2);
    sub_10000E8A4(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10000E918(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000E974(exception, a1);
}

std::logic_error *sub_10000E974(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_10000E9A8(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_10000EABC(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10000EABC(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_10000EBA4(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10000EBA4(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

char **sub_10000EB58(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10000EC10(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_10000EBA4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void sub_10000EC10(uint64_t a1)
{
  sub_10000EC60(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10000EC60(uint64_t a1)
{
  sub_10000E8A4(a1 + 144, *(a1 + 152));
  sub_10000E8A4(a1 + 120, *(a1 + 128));
  sub_10000ECE4(a1 + 96, *(a1 + 104));
  sub_10000E8A4(a1 + 72, *(a1 + 80));
  sub_10000E8A4(a1 + 48, *(a1 + 56));
  sub_10000ED48(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000ECE4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000ECE4(a1, *a2);
    sub_10000ECE4(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10000ED48(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000ED48(a1, *a2);
    sub_10000ED48(a1, a2[1]);
    sub_10000EDA4((a2 + 4));

    operator delete(a2);
  }
}

void sub_10000EDA4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *sub_10000EDF4(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_10000EABC(a1, &v7, a2);
  if (!v5)
  {
    sub_10000EE9C();
  }

  return v5;
}

uint64_t sub_10000EF3C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10000EDA4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10000EF88(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000E900();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_10000F02C(uint64_t a1, unint64_t *a2, uint64_t a3, id **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10000F11C(uint64_t **a1, const void **a2)
{
  v3 = sub_10000F178(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10000E4B0(a1, v3);
  sub_10000EDA4((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_10000F178(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_10000EBA4(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_10000EBA4(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void *sub_10000F208(uint64_t a1, unint64_t *a2, uint64_t a3, id **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_10000F2DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000F2DC(a1, *a2);
    sub_10000F2DC(a1, a2[1]);
    sub_10000EC10((a2 + 4));

    operator delete(a2);
  }
}

void sub_10000F338(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 5);
        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10000F3B8(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 24) = *(v7 + 3);
      *(v8 + 8) = v10;
      v7 += 5;
      v8 += 40;
    }

    while (v7 != v4);
    do
    {
      v11 = *v5;
      v5 += 5;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

void sub_10000F498(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_10000DFD4();
}

uint64_t sub_10000F4F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000F544()
{
  v0 = objc_autoreleasePoolPush();
  qword_100020E30 = 0;
  qword_100020E28 = 0;
  qword_100020E20 = &qword_100020E28;
  __cxa_atexit(sub_10000B8B4, &qword_100020E20, &_mh_execute_header);
  qword_100020EE8 = 0;
  qword_100020EE0 = 0;
  sMinions = &qword_100020EE0;
  __cxa_atexit(sub_10000C4A0, &sMinions, &_mh_execute_header);
  RDRecognizers::RDRecognizers(qword_100020EA8);
  __cxa_atexit(sub_10000C4CC, qword_100020EA8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t static VCVocabularySync.listenForExternalChanges()()
{
  v1 = sub_1000128A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000128C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((byte_100020EF0 & 1) == 0)
  {
    v17 = v5;
    v10 = [objc_opt_self() defaultCenter];
    v18 = v0;
    sub_10000F908(&qword_100020D60, &unk_100014F00);
    v11 = sub_100012984();
    v12 = [objc_opt_self() defaultStore];
    [v10 addObserver:v11 selector:"ubiquitousKeyValueStoreDidChange:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v12];

    swift_unknownObjectRelease();
    (*(v2 + 104))(v4, enum case for VCLogging.Category.vocabulary(_:), v1);
    sub_100012894();
    (*(v2 + 8))(v4, v1);
    v13 = sub_1000128B4();
    v14 = sub_100012924();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "VCVocabularySync.listenForExternalChanges() New observer added.", v15, 2u);
    }

    result = (*(v6 + 8))(v8, v17);
    byte_100020EF0 = 1;
  }

  return result;
}

uint64_t sub_10000F908(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id VCVocabularySync.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VCVocabularySync.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCVocabularySync();
  return objc_msgSendSuper2(&v2, "init");
}

id VCVocabularySync.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VCVocabularySync();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10000FB3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FC08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100012564(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001244C(v11);
  return v7;
}

unint64_t sub_10000FC08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000FD14(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100012974();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000FD14(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000FD60(a1, a2);
  sub_10000FE90(&off_10001D158);
  return v3;
}

char *sub_10000FD60(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000FF7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100012974();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000128F4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FF7C(v10, 0);
        result = sub_100012964();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000FE90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000FFF0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000FF7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000F908(&qword_100020DD8, qword_100014F78);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FFF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000F908(&qword_100020DD8, qword_100014F78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1000100E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100012934(*(v2 + 40));

  return sub_100010128(a1, v4);
}

unint64_t sub_100010128(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012618(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100012944();
      sub_1000125C4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t _s39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySyncC4syncyyFZ_0()
{
  v0 = sub_100012814();
  v181 = *(v0 - 8);
  v182 = v0;
  __chkstk_darwin(v0);
  v180 = v167 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000F908(&qword_100020DB0, &qword_100014F68);
  __chkstk_darwin(v2 - 8);
  v183 = (v167 - v3);
  v4 = sub_10000F908(&qword_100020DB8, &qword_100014F70);
  v5 = *(v4 - 8);
  v193 = v4;
  v194 = v5;
  v6 = __chkstk_darwin(v4);
  v177 = (v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v176 = (v167 - v9);
  v10 = __chkstk_darwin(v8);
  v175 = v167 - v11;
  v12 = __chkstk_darwin(v10);
  v192 = v167 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v167 - v15;
  __chkstk_darwin(v14);
  v179 = v167 - v17;
  v18 = sub_1000128A4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1000128C4();
  v22 = *(v195 - 8);
  v23 = __chkstk_darwin(v195);
  v172 = v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v174 = v167 - v26;
  v27 = __chkstk_darwin(v25);
  v171 = v167 - v28;
  v29 = __chkstk_darwin(v27);
  v173 = v167 - v30;
  v31 = __chkstk_darwin(v29);
  v178 = v167 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = v167 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = v167 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = v167 - v40;
  __chkstk_darwin(v39);
  v43 = v167 - v42;
  v44 = *(v19 + 104);
  v184 = enum case for VCLogging.Category.vocabulary(_:);
  v185 = v44;
  v186 = v19 + 104;
  v44(v21);
  sub_100012894();
  v45 = *(v19 + 8);
  v188 = v19 + 8;
  v189 = v18;
  v187 = v45;
  v45(v21, v18);
  v46 = sub_1000128B4();
  v47 = sub_100012924();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "VCVocabularySync.sync() ###", v48, 2u);
  }

  v190 = *(v22 + 8);
  v191 = v22 + 8;
  v190(v43, v195);
  sub_100012864();
  v49 = sub_100012854();
  v50 = sub_100012834();
  v51 = sub_100012854();
  v52 = sub_100012824();

  if (v52)
  {
    v179 = v49;
    v53 = objc_opt_self();
    v54 = [v53 defaultStore];
    [v54 synchronize];

    v168 = v53;
    v55 = [v53 defaultStore];
    v167[1] = "atus";
    v56 = sub_1000128D4();
    v57 = [v55 dataForKey:v56];

    v58 = v194;
    v170 = v50;
    if (v57)
    {
      v59 = sub_1000127E4();
      v61 = v60;

      isa = sub_1000127D4().super.isa;
      v196 = 0;
      v63 = [(objc_class *)isa decompressedDataUsingAlgorithm:0 error:&v196];

      v64 = v196;
      v65 = v178;
      if (v63)
      {
        v66 = sub_1000127E4();
        v68 = v67;

        sub_100012754();
        swift_allocObject();
        sub_100012744();
        sub_10000F908(&qword_100020D90, "lA");
        sub_100012498(&qword_100020DC8, &qword_100020DD0, &protocol conformance descriptor for VCVocabularyEntry, &protocol conformance descriptor for <A> [A]);
        sub_100012734();
        v169 = 0;
        sub_100012350(v59, v61);

        sub_100012350(v66, v68);
      }

      else
      {
        v100 = v64;
        sub_1000127C4();

        swift_willThrow();
        v101 = v189;
        v185(v21, v184, v189);
        sub_100012894();
        v187(v21, v101);
        swift_errorRetain();
        v102 = sub_1000128B4();
        v103 = sub_100012914();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *v104 = 138543362;
          swift_errorRetain();
          v106 = _swift_stdlib_bridgeErrorToNSError();
          *(v104 + 4) = v106;
          *v105 = v106;
          _os_log_impl(&_mh_execute_header, v102, v103, "VCVocabularySync.sync(): Failed to decompress or decode cloudData. %{public}@", v104, 0xCu);
          sub_1000123EC(v105, &qword_100020DA8, "nA");

          v65 = v178;

          sub_100012350(v59, v61);
        }

        else
        {
          sub_100012350(v59, v61);
        }

        v58 = v194;
        v169 = 0;
        v190(v174, v195);
      }

      v97 = v175;
    }

    else
    {
      v93 = v189;
      v185(v21, v184, v189);
      sub_100012894();
      v187(v21, v93);
      v94 = sub_1000128B4();
      v95 = sub_100012924();
      v96 = os_log_type_enabled(v94, v95);
      v97 = v175;
      v65 = v178;
      if (v96)
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v94, v95, "VCVocabularySync.sync(): cloudData is nil", v98, 2u);
      }

      v190(v35, v195);
      v169 = 0;
    }

    v107 = v180;
    sub_100012804();
    v108 = v183;
    sub_1000127F4();
    v109 = v181;
    v110 = v107;
    v111 = v182;
    (*(v181 + 8))(v110, v182);
    (*(v109 + 56))(v108, 0, 1, v111);
    sub_100012874();
    sub_100012520(&qword_100020DC0, &protocol conformance descriptor for VCVocabularyEntry);
    v112 = v192;
    sub_100012904();

    sub_1000123EC(v108, &qword_100020DB0, &qword_100014F68);
    v113 = v189;
    v185(v21, v184, v189);
    sub_100012894();
    v187(v21, v113);
    v114 = v58[2];
    v115 = v112;
    v116 = v193;
    v114(v97, v115, v193);
    v117 = sub_1000128B4();
    v118 = sub_100012924();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v196 = v120;
      *v119 = 136315138;
      v121 = sub_100012884();
      v123 = v122;
      v124 = v97;
      v125 = *(v194 + 8);
      v125(v124, v193);
      v126 = sub_10000FB3C(v121, v123, &v196);
      v58 = v194;

      *(v119 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v117, v118, "VCVocabularySync.sync() mergeResult: %s", v119, 0xCu);
      sub_10001244C(v120);

      v116 = v193;

      v127 = v178;
    }

    else
    {

      v128 = v97;
      v125 = v58[1];
      v125(v128, v116);
      v127 = v65;
    }

    v190(v127, v195);
    v129 = v176;
    v114(v176, v192, v116);
    v130 = v58[11];
    v131 = v130(v129, v116);
    v132 = enum case for VCArrayMergeResult.bothNeedUpdates<A>(_:);
    if (v131 == enum case for VCArrayMergeResult.onlySelfNeedsUpdates<A>(_:) || v131 == enum case for VCArrayMergeResult.bothNeedUpdates<A>(_:))
    {
      v183 = v125;
      (*(v194 + 96))(v129, v116);
      v134._rawValue = *v129;
      sub_100012844(v134);

      v135 = v189;
      v185(v21, v184, v189);
      v136 = v173;
      sub_100012894();
      v187(v21, v135);
      v137 = sub_1000128B4();
      v138 = sub_100012924();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&_mh_execute_header, v137, v138, "VCVocabularySync.sync(): Local data set", v139, 2u);
        v116 = v193;
      }

      v190(v136, v195);
      v133 = v177;
      v125 = v183;
    }

    else
    {
      v125(v129, v116);
      v133 = v177;
    }

    v114(v133, v192, v116);
    v140 = v130(v133, v116);
    if (v140 != enum case for VCArrayMergeResult.onlyOtherNeedsUpdates<A>(_:) && v140 != v132)
    {
      v125(v192, v116);

      return (v125)(v133, v116);
    }

    (*(v194 + 96))(v133, v116);
    v141 = *v133;
    sub_100012784();
    swift_allocObject();
    sub_100012774();
    v196 = v141;
    sub_10000F908(&qword_100020D90, "lA");
    sub_100012498(&qword_100020D98, &qword_100020DA0, &protocol conformance descriptor for VCVocabularyEntry, &protocol conformance descriptor for <A> [A]);
    v142 = v169;
    v143 = sub_100012764();
    if (v142)
    {

LABEL_37:
      v145 = v189;
      v185(v21, v184, v189);
      v146 = v172;
      sub_100012894();
      v187(v21, v145);
      swift_errorRetain();
      v147 = sub_1000128B4();
      v148 = sub_100012914();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *v149 = 138412290;
        swift_errorRetain();
        v151 = _swift_stdlib_bridgeErrorToNSError();
        *(v149 + 4) = v151;
        *v150 = v151;
        _os_log_impl(&_mh_execute_header, v147, v148, "VCVocabularySync.sync(): Failed to update cloud %@", v149, 0xCu);
        sub_1000123EC(v150, &qword_100020DA8, "nA");
      }

      v190(v146, v195);
      return (v125)(v192, v193);
    }

    v152 = v143;
    v153 = v144;

    v154 = sub_1000127D4().super.isa;
    v196 = 0;
    v155 = [(objc_class *)v154 compressedDataUsingAlgorithm:0 error:&v196];

    if (!v155)
    {
      v166 = v196;
      sub_1000127C4();

      swift_willThrow();
      sub_100012350(v152, v153);
      goto LABEL_37;
    }

    v156 = v125;
    v157 = v196;
    v158 = [v168 defaultStore];
    v159 = v155;
    v160 = sub_1000128D4();
    [v158 setObject:v159 forKey:v160];

    v161 = v189;
    v185(v21, v184, v189);
    v162 = v171;
    sub_100012894();
    v187(v21, v161);
    v163 = sub_1000128B4();
    v164 = sub_100012924();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&_mh_execute_header, v163, v164, "VCVocabularySync.sync(): Cloud data set", v165, 2u);
    }

    sub_100012350(v152, v153);
    v190(v162, v195);
    return v156(v192, v193);
  }

  else
  {
    v69 = v180;
    sub_100012804();
    v70 = v183;
    sub_1000127F4();
    v71 = v50;
    v72 = v181;
    v73 = v69;
    v74 = v182;
    (*(v181 + 8))(v73, v182);
    (*(v72 + 56))(v70, 0, 1, v74);
    v75 = v71;
    sub_100012874();
    sub_100012520(&qword_100020DC0, &protocol conformance descriptor for VCVocabularyEntry);
    v76 = v179;
    sub_100012904();
    sub_1000123EC(v70, &qword_100020DB0, &qword_100014F68);
    v77 = v194;
    v78 = v76;
    v79 = v193;
    (*(v194 + 16))(v16, v78, v193);
    if ((*(v77 + 88))(v16, v79) == enum case for VCArrayMergeResult.bothNeedUpdates<A>(_:))
    {
      (*(v77 + 96))(v16, v79);
      v80 = *v16;
      v81 = v189;
      v185(v21, v184, v189);
      sub_100012894();
      v187(v21, v81);

      v82 = sub_1000128B4();
      v83 = v75;
      v84 = sub_100012924();
      if (os_log_type_enabled(v82, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 134349312;
        v86 = *(v83 + 16);

        *(v85 + 4) = v86;

        *(v85 + 12) = 2050;
        *(v85 + 14) = v80[2];

        _os_log_impl(&_mh_execute_header, v82, v84, "VCVocabularySync.sync(): syncVocabularyEntries is false. mergeResult == .bothNeedUpdates. oldEntriesCount: %{public}ld, newEntriesCount: %{public}ld", v85, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v190(v41, v195);
      v99._rawValue = v80;
      sub_100012844(v99);

      return (*(v77 + 8))(v179, v193);
    }

    else
    {

      v87 = *(v77 + 8);
      v87(v16, v79);
      v88 = v189;
      v185(v21, v184, v189);
      sub_100012894();
      v187(v21, v88);
      v89 = sub_1000128B4();
      v90 = sub_100012924();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&_mh_execute_header, v89, v90, "VCVocabularySync.sync(): syncVocabularyEntries is false. No change.", v91, 2u);
      }

      v190(v38, v195);
      return v87(v179, v79);
    }
  }
}

uint64_t sub_1000118F4()
{
  v0 = sub_1000128A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000128C4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - v13;
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = sub_1000127A4();
  if (v17)
  {
    v18 = v17;
    v38 = sub_1000128E4();
    v39 = v19;
    sub_100012954();
    if (*(v18 + 16) && (v20 = sub_1000100E4(v40), (v21 & 1) != 0))
    {
      sub_100012564(*(v18 + 56) + 32 * v20, v41);
      sub_1000125C4(v40);

      if (swift_dynamicCast())
      {
        v22 = v38;
        (*(v1 + 104))(v3, enum case for VCLogging.Category.vocabulary(_:), v0);
        v23 = (v1 + 8);
        if (v22 == 2)
        {
          sub_100012894();
          (*v23)(v3, v0);
          v24 = sub_1000128B4();
          v25 = sub_100012914();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v24, v25, "VCVocabularySync.ubiquitousKeyValueStoreDidChange quota violation.", v26, 2u);
          }

          return (*(v5 + 8))(v16, v4);
        }

        else
        {
          sub_100012894();
          (*v23)(v3, v0);
          v34 = sub_1000128B4();
          v35 = sub_100012924();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v34, v35, "VCVocabularySync.ubiquitousKeyValueStoreDidChange", v36, 2u);
          }

          (*(v5 + 8))(v14, v4);
          return _s39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySyncC4syncyyFZ_0();
        }
      }
    }

    else
    {

      sub_1000125C4(v40);
    }

    (*(v1 + 104))(v3, enum case for VCLogging.Category.vocabulary(_:), v0);
    sub_100012894();
    (*(v1 + 8))(v3, v0);
    v28 = sub_1000128B4();
    v29 = sub_100012914();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "VCVocabularySync.ubiquitousKeyValueStoreDidChange reasonForChange is nil.", v30, 2u);
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    (*(v1 + 104))(v3, enum case for VCLogging.Category.vocabulary(_:), v0);
    sub_100012894();
    (*(v1 + 8))(v3, v0);
    v31 = sub_1000128B4();
    v32 = sub_100012914();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "VCVocabularySync.ubiquitousKeyValueStoreDidChange userInfo is nil.", v33, 2u);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t _s39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySyncC35removeAllVocabularyEntriesFromCloudyyFZ_0()
{
  v0 = sub_1000128A4();
  __chkstk_darwin(v0);
  v1 = sub_1000128C4();
  __chkstk_darwin(v1);
  sub_100012784();
  swift_allocObject();
  sub_100012774();
  sub_10000F908(&qword_100020D90, "lA");
  sub_100012498(&qword_100020D98, &qword_100020DA0, &protocol conformance descriptor for VCVocabularyEntry, &protocol conformance descriptor for <A> [A]);
  v2 = sub_100012764();
  v4 = v3;

  v5 = [objc_opt_self() defaultStore];
  isa = sub_1000127D4().super.isa;
  v7 = sub_1000128D4();
  [v5 setData:isa forKey:v7];

  return sub_100012350(v2, v4);
}

uint64_t sub_100012350(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000123A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000123EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000F908(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001244C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100012498(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000123A4(&qword_100020D90, "lA");
    sub_100012520(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100012874();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000126EC(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "peer(%d) killed me (the bastard!)", buf, 8u);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}