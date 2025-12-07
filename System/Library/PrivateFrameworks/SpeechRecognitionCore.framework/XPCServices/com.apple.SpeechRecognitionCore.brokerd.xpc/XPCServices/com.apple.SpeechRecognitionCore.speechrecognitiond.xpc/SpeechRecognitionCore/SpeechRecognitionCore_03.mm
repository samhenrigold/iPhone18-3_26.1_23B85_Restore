id RDASRWSpeechRecognizerSetUserProfileData(void *a1, uint64_t a2)
{
  v4 = RXIsSpeechSPIEnabled();
  v5 = [a1 recognizer];
  if (v4)
  {

    return RDSAPICSpeechAnalyzerSetUserProfileData(v5, a2);
  }

  else
  {

    return RDEARCSpeechRecognizerSetUserProfileData(v5, a2);
  }
}

CFTypeRef RDASRWSpeechRecognizerCopyJitProfileData(void *a1)
{
  v2 = RXIsSpeechSPIEnabled();
  v3 = [a1 recognizer];
  if (v2)
  {

    return RDSAPICSpeechAnalyzerCopyJitProfileData(v3);
  }

  else
  {

    return RDEARCSpeechRecognizerCopyJitProfileData(v3);
  }
}

id RDASRWSpeechRecognizerUpdateJitProfileData(void *a1, uint64_t a2)
{
  v4 = RXIsSpeechSPIEnabled();
  v5 = [a1 recognizer];
  if (v4)
  {

    return RDSAPICSpeechAnalyzerUpdateJitProfileData(v5, a2);
  }

  else
  {

    return RDEARCSpeechRecognizerUpdateJitProfileData(v5, a2);
  }
}

id RDASRWSpeechRecognizerSetRecognitionReplacements(void *a1, const __CFDictionary *a2)
{
  if (RXIsSpeechSPIEnabled())
  {
    if (a2 && CFDictionaryGetCount(a2) >= 1)
    {
      v4 = [a1 recognizer];
      v5 = 1;
    }

    else
    {
      v4 = [a1 recognizer];
      v5 = 0;
    }

    return RDSAPICSpeechAnalyzerSetRecognitionReplacements(v4, v5);
  }

  else
  {
    v6 = [a1 recognizer];

    return RDEARCSpeechRecognizerSetRecognitionReplacements(v6, a2);
  }
}

id RDASRWSpeechRecognitionTokenGetTokenName(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetTokenName(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetTokenName(a1);
  }
}

id RDASRWSpeechRecognitionTokenGetStart(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetStart(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetStart(a1);
  }
}

id RDASRWSpeechRecognitionTokenGetEnd(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetEnd(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetEnd(a1);
  }
}

id RDASRWSpeechRecognitionTokenGetSilenceStart(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetSilenceStart(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetSilenceStart(a1);
  }
}

id RDASRWSpeechRecognitionTokenGetConfidence(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetConfidence(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetConfidence(a1);
  }
}

id RDASRWSpeechRecognitionTokenHasSpaceAfter(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenHasSpaceAfter(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenHasSpaceAfter(a1);
  }
}

void RDASRWSpeechRecognitionGetTokens(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    RDSAPICSpeechAnalyzerSpeechRecognitionGetTokens();
  }

  else
  {

    RDEARCSpeechRecognitionGetTokens(a1);
  }
}

uint64_t RDPeer::RDPeer(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = off_1000FF400;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void RDPeer::~RDPeer(RDPeer *this)
{
  *this = off_1000FF400;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = [v2 connection];
    [v3 invalidate];

    v4 = *(this + 1);
    *(this + 1) = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 4) = 0;

    v5 = *(this + 4);
  }
}

{
  RDPeer::~RDPeer(this);

  operator delete();
}

CFTypeRef RDPeer::ClientHello(RDPeer *this, CFTypeRef cf)
{
  result = CFRetain(cf);
  *(this + 3) = cf;
  return result;
}

uint64_t RDPeer::ClientUpdate(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 24))
    {
      v5 = RXOSLog(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 24);
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client Hello %@", &v11, 0xCu);
      }
    }

    v7 = xpc_copy_description(v4);
    v8 = RXOSLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client Update %s", &v11, 0xCu);
    }

    free(v7);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 24) = 0;
  }

  return 0;
}

void RDPeer::GetAudio(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 16) == 1)
  {
    length = 0;
    data = xpc_dictionary_get_data(v6, kRDKeyAudioData, &length);
    v9 = RXOSLog(data);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uint64 = xpc_dictionary_get_uint64(v5, kRDKeyResultID);
      v11 = xpc_dictionary_get_uint64(v5, kRDKeyStartTime);
      v12 = xpc_dictionary_get_uint64(v5, kRDKeyEndTime);
      *buf = 134218752;
      v15 = uint64;
      v16 = 2048;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      v20 = 2048;
      v21 = length;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get Audio %llx[%llu, %llu] -> %lu samples\n", buf, 0x2Au);
    }
  }
}

void RDPeer::ReleaseResult(RDPeer *this, uint64_t a2)
{
  if (*(this + 16) == 1)
  {
    v3 = RXOSLog(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Release Result %llx\n", &v4, 0xCu);
    }
  }
}

void RDPeer::SetSecureFieldFocused(RDPeer *this, int a2)
{
  if (*(this + 16) == 1)
  {
    v3 = RXOSLog(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"NO";
      if (a2)
      {
        v4 = @"YES";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Focus on secure field %@", &v5, 0xCu);
    }
  }
}

void RDPeer::AddLeadingContext(RDPeer *this, NSString *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(this + 16) == 1)
  {
    v5 = RXOSLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Leading context %@", &v6, 0xCu);
    }
  }
}

void RDPeer::AddOtherContext(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 16) == 1)
  {
    v5 = RXOSLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Other context %@", &v6, 0xCu);
    }
  }
}

void RDPeer::ResetRecognition(RDPeer *this)
{
  if (*(this + 16) == 1)
  {
    v5 = v1;
    v6 = v2;
    v3 = RXOSLog(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting recogition", v4, 2u);
    }
  }
}

void RDPeer::SetResetRecognitionMode(RDPeer *this)
{
  if (*(this + 16) == 1)
  {
    v5 = v1;
    v6 = v2;
    v3 = RXOSLog(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting recognition reset mode", v4, 2u);
    }
  }
}

void RDPeer::SaveUserProfileToFile(RDPeer *this, const char *a2)
{
  if (*(this + 16) == 1)
  {
    v6 = v2;
    v7 = v3;
    v4 = RXOSLog(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saving user profile to file", v5, 2u);
    }
  }
}

NSArray *RDPeer::PhoneticNeighborsForText(RDPeer *this, NSString *a2)
{
  v2 = objc_opt_new();

  return v2;
}

void RDPeer::ServerIsRunning(RDPeer *this, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (a2)
  {
    v6 = 204;
  }

  else
  {
    v6 = 203;
  }

  xpc_dictionary_set_int64(v4, kRDKeyMessage, v6);
  if (*(this + 16) == 1)
  {
    v7 = xpc_copy_description(v5);
    v8 = RXOSLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Server Response %s", &v9, 0xCu);
    }

    free(v7);
  }

  RDPeer::SendClientMessage(this, v5);
}

void RDPeer::SendClientMessage(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = [v3 proxy];
      v5 = xpc_wrap_uint64s_in_object(v7);
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      [v4 legacyClientEventWithMessage:v6];
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }
}

void RDPeer::CreatePeer(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a1;
  if (qword_10010E530)
  {
    v10 = CFStringCompare(qword_10010E530, a2, 0);
    if (v10)
    {
      v11 = RXOSLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "A client attempted to configure the service with a different locale than the service was initially configured for.", &v18, 2u);
      }

      exit(0);
    }
  }

  else
  {
    v10 = CFRetain(a2);
    qword_10010E530 = v10;
  }

  v12 = RXOSLog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138413058;
    v19 = v9;
    v20 = 2112;
    v21 = a2;
    v22 = 2048;
    v23 = a3;
    v24 = 2048;
    v25 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CreatePeer, %@, %@, %llx, %p", &v18, 0x2Au);
  }

  if (a4)
  {
    v14 = a2;
    v15 = [(__CFString *)a2 UTF8String];
    RDKeyword::SetLocale(v15, v16);
  }

  v17 = RXOSLog(v13);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Creating QSR peer", &v18, 2u);
  }

  *a5 = 1;
  RDCreateQSRPeer(v9, a2, a3, a4);
}

uint64_t sub_10003E974(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10003E9EC(id a1)
{
  qword_10010E540 = objc_alloc_init(RDAssetManager2);

  _objc_release_x1();
}

uint64_t sub_10003F370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003F388(void *a1)
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

void sub_10003F5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10003F60C(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

intptr_t sub_10003FE08(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_1000402D0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  [v2 _cancelDownloadForLanguageWithError:v3 withError:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_1000407FC(uint64_t a1)
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

void sub_100040BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_100040BD4(void *a1)
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

void sub_100041158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100041180(uint64_t a1, void *a2, void *a3)
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

void sub_10004170C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000417DC;
  v10[3] = &unk_1000FF600;
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

void sub_1000417DC(uint64_t a1)
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

void sub_100041AFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041BE8;
  block[3] = &unk_1000FF650;
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

void sub_100041BE8(uint64_t a1)
{
  v2 = [*(a1 + 32) _isActiveDownloadForLanguage:*(a1 + 40) downloadId:*(a1 + 64)];
  if (v2)
  {
    [*(a1 + 32) _endAllDownloadsForLanguage:*(a1 + 40)];
    v3 = *(a1 + 48);
    if ([*(a1 + 56) length])
    {
      v4 = sub_10004274C(*(a1 + 56), 0, @"DictationCC");
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

id sub_10004274C(void *a1, void *a2, void *a3)
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

void sub_100043308(id a1)
{
  qword_10010E550 = objc_alloc_init(RDAssetManager);

  _objc_release_x1();
}

void sub_10004349C(uint64_t a1)
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

      v10 = sub_1000436DC(*(a1 + 40));
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100043740;
      v11[3] = &unk_1000FF6E8;
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

id sub_1000436DC(int a1)
{
  v2 = objc_alloc_init(MADownloadOptions);
  [v2 setAllowsCellularAccess:0];
  [v2 setDiscretionary:a1 ^ 1u];
  [v2 setRequiresPowerPluggedIn:0];

  return v2;
}

void sub_100043740(uint64_t a1, uint64_t a2)
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
          v21[2] = sub_1000439C4;
          v21[3] = &unk_1000FF6C0;
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

uint64_t sub_100043B14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100043B2C(void *a1)
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

id sub_100044290(void *a1)
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

void sub_100044A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100044A38(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  [v2 _cancelDownloadForLangaugeWithError:v3 withError:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_100045048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_100045074(uint64_t a1)
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

void sub_100045358(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100045408;
  v6[3] = &unk_1000FF760;
  v10 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  dispatch_async(v3, v6);
}

void sub_100045408(uint64_t a1)
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

void sub_1000467E4(uint64_t a1, void *a2)
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

void sub_1000469F4(uint64_t a1, uint64_t a2)
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

void sub_100046BAC(uint64_t a1, uint64_t a2)
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

void *sub_100046CDC(void *a1, void *a2)
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

void sub_1000470A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000470BC(uint64_t a1, void *a2, _BYTE *a3)
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

RDSpeechDonation *RDSpeechDonationInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [[NSLocale alloc] initWithLocaleIdentifier:a3];
  v8 = [[RDSpeechDonation alloc] initWithBundleID:a1 donorReferenceID:a2 locale:v7 taskHint:a4];

  return v8;
}

uint64_t RDQSRPeer::RDQSRPeer(uint64_t a1, void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  RDPeer::RDPeer(a1, v9);
  *a1 = off_1000FFAF8;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  *(a1 + 160) = a5;
  *(a1 + 200) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 201) = a5 != 0;
  *(a1 + 202) = 256;
  *(a1 + 208) = a3;
  *(a1 + 216) = 0;
  CFRetain(a3);
  v10 = gRDServerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047EEC;
  block[3] = &unk_1000FFB70;
  v15 = a1;
  v16 = a4;
  v14 = v9;
  v11 = v9;
  dispatch_async(v10, block);
  if ((a4 & 8) != 0)
  {
    *(a1 + 205) = 1;
  }

  return a1;
}

void sub_100047E90(_Unwind_Exception *a1)
{
  sub_10001A178(v7, *(v1 + 18));
  sub_10001A178(v6, *(v1 + 15));
  sub_100019334(v5, *(v1 + 12));
  sub_10004B29C(v4, *(v1 + 9));
  sub_10001A178(v3, *(v1 + 6));
  RDPeer::~RDPeer(v1);

  _Unwind_Resume(a1);
}

void sub_100047EEC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (RDQSREngine::Instantiate(*(v2 + 208), *(a1 + 48)))
  {
    RDPeer::ServerIsRunning(v2, 1);
    if ((*(a1 + 48) & 8) != 0)
    {
      v3 = RDQSREngine::fullModelDir(RDQSREngine::sInstance);
      if (v3)
      {
        v4 = v3;
        if (!CFStringGetCStringPtr(v3, 0x8000100u))
        {
          Length = CFStringGetLength(v4);
          CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          operator new[]();
        }
      }

      [*(v2 + 208) UTF8String];
      *(v2 + 216) = SRSSPhoneticCheckerCreate();
    }
  }

  else
  {
    RDPeer::ServerIsRunning(v2, 0);
    v6 = [*(a1 + 32) connection];
    [v6 invalidate];
  }
}

void RDQSRPeer::Terminate(id *this)
{
  v2 = [this[1] connection];
  [v2 invalidate];

  v3 = this[1];
  this[1] = 0;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048134;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_async(gRDServerQueue, block);
}

uint64_t sub_100048134(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void RDQSRPeer::~RDQSRPeer(CFTypeRef *this)
{
  *this = off_1000FFAF8;
  CFRelease(this[26]);
  v2 = RDQSREngine::sInstance;
  v3 = this[5];
  if (v3 != this + 6)
  {
    do
    {
      RDQSREngine::RemoveGrammar(v2, *(v3[4] + 2));
      v4 = v3[4];
      if (v4)
      {

        v5 = v4[5];
        v4[5] = 0;
        if (v5)
        {
          v13 = (v5 + 32);
          sub_10002A0F4(&v13);
          v6 = *(v5 + 3);
          *(v5 + 3) = 0;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }

          v7 = *(v5 + 2);
          *(v5 + 2) = 0;
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }

          operator delete();
        }

        operator delete();
      }

      v8 = v3[1];
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
          v9 = v3[2];
          v11 = *v9 == v3;
          v3 = v9;
        }

        while (!v11);
      }

      v3 = v9;
    }

    while (v9 != this + 6);
  }

  v10 = this[20];
  if (v10)
  {
    RDAudioObject::~RDAudioObject(v10);
    operator delete();
  }

  v11 = *(this + 205) != 1 || v2 == 0;
  if (!v11)
  {
    RDQSREngine::removeLogAudioFile(v2);
  }

  v12 = this[27];
  if (v12)
  {
    CFRelease(v12);
    this[27] = 0;
  }

  if (*(this + 200) == 1)
  {
    RDQSREngine::RemovePeer(v2, this);
  }

  sub_10001A178((this + 17), this[18]);
  sub_10001A178((this + 14), this[15]);
  sub_100019334((this + 11), this[12]);
  sub_10004B29C((this + 8), this[9]);
  sub_10001A178((this + 5), this[6]);
  RDPeer::~RDPeer(this);
}

{
  RDQSRPeer::~RDQSRPeer(this);

  operator delete();
}

uint64_t sub_1000483AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    v6 = (v2 + 32);
    sub_10002A0F4(&v6);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete();
  }

  return a1;
}

void RDQSRPeer::UpdateOrReleaseObject(uint64_t a1, unint64_t a2, void *a3)
{
  v66 = a2;
  v6 = a3;
  if (!*(a1 + 8))
  {
    goto LABEL_65;
  }

  v7 = *(a1 + 96);
  v8 = (a1 + 88);
  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = a1 + 96;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 != a1 + 96 && *(v9 + 32) <= a2 && (v14 = (v9 + 40), (v13 = *(v9 + 40)) != 0))
  {
    type = xpc_get_type(v13);
    v16 = type;
    if (type != &_xpc_type_dictionary)
    {
      v17 = RXOSLog(type);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "API misuse while updating objects : XPC_TYPE_DICTIONARY expected, passed %@ ", buf, 0xCu);
      }

      goto LABEL_65;
    }

    if (xpc_dictionary_get_int64(*v14, kRDKeyObjectType) == 1)
    {
      if (v6)
      {
        v31 = xpc_dictionary_get_BOOL(v6, kRDKeyIsListening);
        if (v31)
        {
          v32 = RXOSLog(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v66;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Activating recognizer %llu", buf, 0xCu);
          }
        }

        goto LABEL_73;
      }

      sub_10002FD0C((a1 + 112), &v66);
    }

    else if (xpc_dictionary_get_BOOL(*v14, kRDKeyTopLevelLM))
    {
      *buf = v66;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      v71 = 1;
      v72 = 0;
      v65 = buf;
      v44 = sub_10004B2FC(a1 + 40, &v65);
      v45 = v44;
      if (a1 + 48 == v44)
      {
        if (v6)
        {
          operator new();
        }
      }

      else
      {
        if (v6)
        {
          *(*(v44 + 32) + 48) = 1;
          sub_1000483AC(buf);
LABEL_73:
          objc_storeStrong((v9 + 40), a3);
          goto LABEL_65;
        }

        RDQSREngine::RemoveGrammar(RDQSREngine::sInstance, *(*(v44 + 32) + 16));
        v57 = v45[4];
        if (v57)
        {
          sub_1000483AC(v57);
          operator delete();
        }

        sub_10002FD90((a1 + 40), v45);
        operator delete(v45);
      }

      sub_1000483AC(buf);
    }

    else if (v6)
    {
      int64 = xpc_dictionary_get_int64(v6, kRDKeyObjectType);
      if (int64 <= 0xD && ((1 << int64) & 0x2C00) != 0)
      {
        RDQSRPeer::checkAndUpdateLMCache(a1, v6);
      }

      goto LABEL_73;
    }

    v60 = *(a1 + 72);
    v59 = a1 + 72;
    v58 = v60;
    if (v60)
    {
      v61 = v59;
      do
      {
        v62 = *(v58 + 32);
        v11 = v62 >= v66;
        v63 = v62 < v66;
        if (v11)
        {
          v61 = v58;
        }

        v58 = *(v58 + 8 * v63);
      }

      while (v58);
      if (v61 != v59 && v66 >= *(v61 + 32))
      {
        sub_10004B53C((v59 - 8), v61);
      }
    }

    sub_10004B57C(v8, v9);
  }

  else
  {
LABEL_15:
    if (v6)
    {
      v18 = xpc_dictionary_get_int64(v6, kRDKeyObjectType);
      if (v18)
      {
        *buf = v66;
        v19 = v6;
        *&buf[8] = v19;
        sub_10004B5B8(a1 + 88, buf, buf);

        if (v18 == 1)
        {
          v21 = RXOSLog(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v66;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Adding new recognizer %llu", buf, 0xCu);
          }

          sub_10004B6A4(a1 + 112, &v66, &v66);
        }

        else if (xpc_dictionary_get_BOOL(v19, kRDKeyTopLevelLM))
        {
          operator new();
        }
      }

      else
      {
        v22 = xpc_dictionary_get_value(v6, kRDKeyURL);
        v23 = v22;
        if (v22)
        {
          bytes_ptr = xpc_data_get_bytes_ptr(v22);
          length = xpc_data_get_length(v23);
          v26 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, bytes_ptr, length, kCFAllocatorNull);
          if (v26)
          {
            v29 = CFURLCreateByResolvingBookmarkData(kCFAllocatorDefault, v26, 0x100uLL, 0, 0, 0, 0);
            if (v29)
            {
              RDQSREngine::UseFileAudio(RDQSREngine::sInstance, v29, v27, v28);
            }

            CFRelease(v26);
          }
        }

        else
        {
          v30 = xpc_dictionary_get_value(v6, kRDKeyAudioData);
          if (v30)
          {
            RDQSREngine::UseCannedAudio(RDQSREngine::sInstance, v30);
          }

          if (*(a1 + 160))
          {
            if (RXAutomationModeResult() || RXAutomationModeSynthesis() || RXAutomationModeFileName())
            {
              v35 = RDQSREngine::sInstance;
              v36 = RXAutomationSimulateOpenMic();
              RDQSREngine::UseMixedAudio(v35, v36, v37, v38);
            }

            else
            {
              RDQSREngine::UseLiveAudio(RDQSREngine::sInstance, *(a1 + 160), v33, v34);
            }
          }
        }

        v39 = xpc_dictionary_get_value(v6, kRDKeyTextToBeRecognized);
        v40 = v39;
        if (v39)
        {
          string_ptr = xpc_string_get_string_ptr(v39);
          v42 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
          if (RXAutomationModeResult())
          {
            RDQSREngine::RecognizeText(RDQSREngine::sInstance, v42);
          }

          else if (RXAutomationModeSynthesis())
          {
            RDQSREngine::SynthesizeText(RDQSREngine::sInstance, v42);
          }

          else
          {
            v43 = RXAutomationModeFileName();
            if (v43)
            {
              RDQSREngine::RecognizeAudioFile(RDQSREngine::sInstance, v42);
            }

            else
            {
              v46 = RXOSLog(v43);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Unknown Audio mode specified", buf, 2u);
              }
            }
          }

          if (v42)
          {
            CFRelease(v42);
          }
        }

        v47 = xpc_dictionary_get_value(v6, kRDKeyFilterProfanity);
        v48 = v47;
        if (v47)
        {
          v49 = *(a1 + 204);
          if (v49 != xpc_BOOL_get_value(v47))
          {
            v50 = (*(a1 + 204) & 1) == 0;
            *(a1 + 204) = v50;
            RDQSREngine::FilterProfanity(RDQSREngine::sInstance, v50);
          }
        }

        v51 = xpc_dictionary_get_value(v6, kRDKeyIsListening);
        v52 = v51;
        if (v51)
        {
          *(a1 + 202) = 1;
          v53 = *(a1 + 203);
          if (v53 != xpc_BOOL_get_value(v51))
          {
            v54 = (*(a1 + 203) & 1) == 0;
            *(a1 + 203) = v54;
            RDQSREngine::CanListen(RDQSREngine::sInstance, a1, v54);
            v55 = dispatch_time(0, 1000000000);
            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_10004955C;
            v64[3] = &unk_1000FDCD8;
            v64[4] = a1;
            dispatch_after(v55, gRDServerQueue, v64);
          }
        }

        *(a1 + 184) = xpc_dictionary_get_uint64(v6, kRDKeyObjectID);
        *(a1 + 192) = xpc_dictionary_get_uint64(v6, kRDKeyCallbacks);
      }
    }
  }

LABEL_65:
}

void sub_100048D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void *);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_10001A178(va, v17);
  sub_1000483AC(va1);

  _Unwind_Resume(a1);
}

void RDQSRPeer::updateLMCache(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  type = xpc_get_type(v5);
  v7 = type;
  if (type != &_xpc_type_dictionary)
  {
    v8 = RXOSLog(type);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "API misuse while updating LM : XPC_TYPE_DICTIONARY expected, passed %@ ", buf, 0xCu);
    }

    goto LABEL_4;
  }

  if ((xpc_dictionary_get_int64(v5, kRDKeyObjectType) & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    goto LABEL_5;
  }

  v8 = xpc_dictionary_get_value(v5, kRDKeyChildren);
  count = xpc_array_get_count(v8);
  if (count)
  {
    v10 = 0;
    v11 = (a1 + 72);
    do
    {
      uint64 = xpc_array_get_uint64(v8, v10);
      *buf = &uint64;
      v12 = sub_100018774(a1 + 88, &uint64, &unk_1000D174B, buf)[5];
      v13 = *v11;
      if (*v11)
      {
        v14 = (a1 + 72);
        do
        {
          v15 = v13[4];
          v16 = v15 >= uint64;
          v17 = v15 < uint64;
          if (v16)
          {
            v14 = v13;
          }

          v13 = v13[v17];
        }

        while (v13);
        if (v14 != v11 && uint64 >= v14[4] && v14[7] == a3[2])
        {
          v19 = v14[5];
          v20 = v14 + 6;
          if (v19 == v20)
          {
            goto LABEL_18;
          }

          v21 = *a3;
          while (v19[4] == v21[4])
          {
            v22 = v19[1];
            v23 = v19;
            if (v22)
            {
              do
              {
                v19 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v19 = v23[2];
                v24 = *v19 == v23;
                v23 = v19;
              }

              while (!v24);
            }

            v25 = v21[1];
            if (v25)
            {
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v26 = v21[2];
                v24 = *v26 == v21;
                v21 = v26;
              }

              while (!v24);
            }

            v21 = v26;
            if (v19 == v20)
            {
              goto LABEL_18;
            }
          }
        }
      }

      *buf = &uint64;
      v18 = sub_10004B770(a1 + 64, &uint64, &unk_1000D174B, buf);
      sub_1000499C4(v18 + 5, *a3, a3 + 1);
      RDQSRPeer::updateLMCache(a1, v12, a3);
LABEL_18:

      ++v10;
    }

    while (v10 != count);
  }

LABEL_4:

LABEL_5:
}

void RDQSRPeer::checkAndUpdateLMCache(uint64_t a1, void *a2)
{
  xdict = a2;
  uint64 = xpc_dictionary_get_uint64(xdict, kRDKeyObjectID);
  v5 = uint64;
  v28 = uint64;
  v6 = *(a1 + 72);
  if (v6)
  {
    uint64 = a1 + 64;
    v7 = a1 + 72;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != a1 + 72 && v5 >= *(v7 + 32))
    {
      *buf = &v28;
      v12 = sub_10004B770(uint64, &v28, &unk_1000D174B, buf);
      string = xpc_dictionary_get_string(xdict, kRDKeyCategoryID);
      v14 = v12[5];
      if (v14 == v12 + 6)
      {
LABEL_38:
        RDQSRPeer::updateLMCache(a1, xdict, v12 + 5);
        goto LABEL_12;
      }

      v15 = string;
      while (1)
      {
        *buf = v14[4];
        v33 = 0;
        v34 = 0;
        v32 = 0;
        v35 = 1;
        v36 = 0;
        *__s = buf;
        v16 = sub_10004B2FC(a1 + 40, __s);
        if (a1 + 48 != v16)
        {
          if (v15)
          {
            sub_1000113AC(__s, v15);
            doesSupportCategory = rd_userprofile_util::doesSupportCategory(__s);
            v18 = doesSupportCategory;
            if (v30 < 0)
            {
              operator delete(*__s);
              if (v18)
              {
LABEL_19:
                v19 = RXLogServerGrammar();
                if (v19)
                {
                  v20 = RXOSLog(v19);
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *__s = 136315138;
                    *&__s[4] = v15;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating category -> %s", __s, 0xCu);
                  }
                }

                objc_storeStrong((*(v16 + 32) + 64), a2);
                goto LABEL_26;
              }
            }

            else if (doesSupportCategory)
            {
              goto LABEL_19;
            }
          }

          *(*(v16 + 32) + 48) = 1;
        }

LABEL_26:

        v21 = v34;
        v34 = 0;
        if (v21)
        {
          *__s = v21 + 32;
          sub_10002A0F4(__s);
          v22 = *(v21 + 24);
          *(v21 + 24) = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          v23 = *(v21 + 16);
          *(v21 + 16) = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          operator delete();
        }

        v24 = v14[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v14[2];
            v26 = *v25 == v14;
            v14 = v25;
          }

          while (!v26);
        }

        v14 = v25;
        if (v25 == v12 + 6)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v11 = RXOSLog(uint64);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "LMCache: Language ID %llu was not stored in cache and is updated", buf, 0xCu);
  }

LABEL_12:
}

void sub_10004955C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (RDQSREngine::PeerExists(RDQSREngine::sInstance, v1) && (*(RDQSREngine::sInstance + 85) & 1) == 0)
  {

    RDQSRPeer::EndUtt(v1);
  }
}

void RDQSRPeer::EndUtt(RDQSRPeer *this)
{
  if (*(this + 202) == 1 && (*(this + 203) & 1) == 0)
  {
    v2 = RDQSREngine::sInstance;
    v3 = *(this + 17);
    v27 = this + 136;
    v4 = this + 144;
    if (v3 != this + 144)
    {
      v5 = this + 48;
      do
      {
        v28[0] = *(v3 + 4);
        v28[1] = 0;
        v29 = 0;
        v30 = 0;
        v28[3] = 0;
        v31 = 1;
        v32 = 0;
        *__p = v28;
        string = sub_10004B2FC(this + 40, __p);
        v7 = string;
        if (v5 != string)
        {
          string = xpc_dictionary_get_string(*(*(string + 32) + 32), kRDKeyCommandID);
          if (string)
          {
            v8 = xpc_dictionary_get_string(*(*(v7 + 32) + 32), kRDKeyCommandID);
            v9 = sub_1000113AC(__p, v8);
            v10 = RXOSLog(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v11 = __p;
              if (v35[9] < 0)
              {
                v11 = *__p;
              }

              *buf = 136315138;
              v38 = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Deactivate Grammar after End of utterance: CommandID -> %s", buf, 0xCu);
            }

            if ((v35[9] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }

        v12 = RXOSLog(string);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(*(v7 + 32) + 16);
          v14 = *(this + 202);
          v15 = *(this + 203);
          *__p = 134218496;
          *&__p[4] = v13;
          v34 = 1024;
          *v35 = v14;
          *&v35[4] = 1024;
          *&v35[6] = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deactivating Grammar after end of utterance -> %zu, fClientActivated = %d, fCanListen = %d", __p, 0x18u);
        }

        v16 = RDQSRPeer::CopyCommandsInGrammar(this, *(*(v7 + 32) + 32));
        v17 = RXOSLog(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(v7 + 32);
          v19 = *v18;
          v20 = v18[2];
          *__p = 134218498;
          *&__p[4] = v19;
          v34 = 2048;
          *v35 = v20;
          *&v35[8] = 2112;
          v36 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Deactivating Grammar after end of utterance -> lmid = %llu, grammarID = %zu, %@", __p, 0x20u);
        }

        CFRelease(v16);
        RDQSREngine::GrammarIsLive(v2, *(*(v7 + 32) + 16), 0);

        v21 = v30;
        v30 = 0;
        if (v21)
        {
          *__p = v21 + 32;
          sub_10002A0F4(__p);
          v22 = *(v21 + 24);
          *(v21 + 24) = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          v23 = *(v21 + 16);
          *(v21 + 16) = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          operator delete();
        }

        v24 = *(v3 + 1);
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = *(v3 + 2);
            v26 = *v25 == v3;
            v3 = v25;
          }

          while (!v26);
        }

        v3 = v25;
      }

      while (v25 != v4);
    }

    sub_10001A178(v27, *(this + 18));
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = v4;
    RDQSREngine::BuildCombinedGrammar(v2, 0);
  }
}

void sub_10004997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1000483AC(&a18);
  _Unwind_Resume(a1);
}

void *sub_1000499C4(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10004B4A4(v5, (v5 + 8), v4 + 4, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t RDQSRPeer::EngineIsRunning(RDQSRPeer *this)
{
  if (RDQSREngine::sInstance && *(RDQSREngine::sInstance + 16))
  {
    if ((*(this + 200) & 1) == 0)
    {
      RDQSREngine::AddPeer(RDQSREngine::sInstance, this);
      *(this + 200) = 1;
    }

    v2 = RXVeryVerbose();
    if (!v2)
    {
      return 1;
    }

    v3 = RXOSLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Engine is running", v7, 2u);
    }

    v4 = 1;
  }

  else
  {
    v5 = RXVeryVerbose();
    if (!v5)
    {
      return 0;
    }

    v3 = RXOSLog(v5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Engine is not running", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t RDQSRPeer::ClientUpdate(RDQSRPeer *a1, void *a2)
{
  v3 = a2;
  if (RDQSRPeer::EngineIsRunning(a1))
  {
    RDPeer::ClientUpdate(a1, v3);
    *(a1 + 22) = xpc_dictionary_get_uint64(v3, kRDKeyEpoch);
    v4 = xpc_dictionary_get_value(v3, kRDKeyObjects);
    v5 = v4;
    if (v4)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_100049CEC;
      applier[3] = &unk_1000FFB90;
      applier[4] = a1;
      xpc_array_apply(v4, applier);
    }

    v6 = xpc_dictionary_get_value(v3, kRDKeyDead);
    v7 = v6;
    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100049D50;
      v10[3] = &unk_1000FFB90;
      v10[4] = a1;
      xpc_array_apply(v6, v10);
    }

    v8 = RDQSRPeer::ScanRecognizers(a1);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100049CEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  uint64 = xpc_dictionary_get_uint64(v4, kRDKeyObjectID);
  RDQSRPeer::UpdateOrReleaseObject(v5, uint64, v4);

  return 1;
}

uint64_t sub_100049D50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  value = xpc_uint64_get_value(v4);
  RDQSRPeer::UpdateOrReleaseObject(v5, value, 0);

  return 1;
}

uint64_t RDQSRPeer::ScanRecognizers(RDQSRPeer *this)
{
  *(this + 103) = 0;
  v48 = RDQSREngine::sInstance;
  v58[0] = 0;
  v58[1] = 0;
  v57 = v58;
  v2 = *(this + 14);
  v3 = this + 120;
  v46 = v2 != this + 120;
  if (v2 == this + 120)
  {
LABEL_31:
    v25 = *(this + 17);
    if (v25 != (this + 144))
    {
      do
      {
        v26 = v58[0];
        v27 = *(v25 + 4);
        if (!v58[0])
        {
          goto LABEL_40;
        }

        v28 = v58;
        do
        {
          v29 = v26[4];
          v30 = v29 >= v27;
          v31 = v29 < v27;
          if (v30)
          {
            v28 = v26;
          }

          v26 = v26[v31];
        }

        while (v26);
        if (v28 == v58 || v27 < v28[4])
        {
LABEL_40:
          v49 = *(v25 + 4);
          v50 = 0;
          v52 = 0;
          v53 = 0;
          v51 = 0;
          v54 = 1;
          v55 = 0;
          *buf = &v49;
          v32 = sub_10004B2FC(this + 40, buf);
          v33 = v32;
          if ((this + 48) != v32)
          {
            v34 = RDQSRPeer::CopyCommandsInGrammar(this, *(v32[4] + 32));
            v35 = RXOSLog(v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = v33[4];
              v37 = *v36;
              v38 = v36[2];
              *buf = 134218498;
              *&buf[4] = v37;
              v60 = 2048;
              v61 = v38;
              v62 = 2112;
              v63 = v34;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Deactivating Grammar  -> lmid = %llu, grammarID = %zu, %@", buf, 0x20u);
            }

            CFRelease(v34);
            RDQSREngine::GrammarIsLive(v48, *(v33[4] + 16), 0);
          }

          v39 = v53;
          v53 = 0;
          if (v39)
          {
            *buf = v39 + 32;
            sub_10002A0F4(buf);
            v40 = *(v39 + 24);
            *(v39 + 24) = 0;
            if (v40)
            {
              (*(*v40 + 8))(v40);
            }

            v41 = *(v39 + 16);
            *(v39 + 16) = 0;
            if (v41)
            {
              (*(*v41 + 8))(v41);
            }

            operator delete();
          }
        }

        v42 = *(v25 + 1);
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = *(v25 + 2);
            v24 = *v43 == v25;
            v25 = v43;
          }

          while (!v24);
        }

        v25 = v43;
      }

      while (v43 != (this + 144));
    }

    sub_10004B84C(this + 17, &v57);
    RDQSREngine::BuildCombinedGrammar(v48, 0);
    v44 = v46;
  }

  else
  {
    v47 = this + 48;
    while (*(this + 203) == 1)
    {
      v49 = v2 + 32;
      v4 = sub_100018774(this + 88, v2 + 4, &unk_1000D174B, &v49)[5];
      v5 = v4;
      if (v4)
      {
        if (xpc_dictionary_get_BOOL(v4, kRDKeyIsListening))
        {
          uint64 = xpc_dictionary_get_uint64(v5, kRDKeyLanguageModel);
          v56 = uint64;
          if (uint64)
          {
            v49 = uint64;
            v50 = 0;
            v52 = 0;
            v53 = 0;
            v51 = 0;
            v54 = 1;
            v55 = 0;
            *buf = &v49;
            v7 = sub_10004B2FC(this + 40, buf);
            v8 = v7;
            if (v47 == v7)
            {
              v18 = RXOSLog(v7);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = v56;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "ScanRecognizers:: Gram entry not found for lmID %llu", buf, 0xCu);
              }
            }

            else
            {
              *buf = &v56;
              v9 = sub_100018774(this + 88, &v56, &unk_1000D174B, buf);
              objc_storeStrong((*(v8 + 32) + 32), v9[5]);
              *(*(v8 + 32) + 8) = xpc_dictionary_get_uint64(v5, kRDKeyObjectID);
              *(*(v8 + 32) + 56) = xpc_dictionary_get_uint64(v5, kRDKeyMaxResults);
              *(*(v8 + 32) + 49) = xpc_dictionary_get_BOOL(v5, kRDKeyUseStreaming);
              *(*(v8 + 32) + 50) = xpc_dictionary_get_BOOL(v5, kRDKeyAllowCloseMatch);
              *(*(v8 + 32) + 51) = xpc_dictionary_get_BOOL(v5, kRDKeySpellingMode);
              v10 = xpc_dictionary_get_BOOL(v5, kRDKeyNumberMode);
              v11 = *(v8 + 32);
              *(v11 + 52) = v10;
              v12 = RDQSRPeer::CopyCommandsInGrammar(this, *(v11 + 32));
              v13 = RXOSLog(v12);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = *(v8 + 32);
                v15 = *v14;
                v16 = v14[2];
                *buf = 134218498;
                *&buf[4] = v15;
                v60 = 2048;
                v61 = v16;
                v62 = 2112;
                v63 = v12;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Activating Grammar  -> lmid = %llu, grammarID = %zu, %@", buf, 0x20u);
              }

              CFRelease(v12);
              RDQSREngine::GrammarIsLive(v48, *(*(v8 + 32) + 16), 1);
              v17 = *(v8 + 32);
              if (*(v17 + 51) == 1)
              {
                *(this + 206) = 1;
              }

              if (*(v17 + 52) == 1)
              {
                *(this + 207) = 1;
              }

              sub_10004B6A4(&v57, &v56, &v56);
            }

            v19 = v53;
            v53 = 0;
            if (v19)
            {
              *buf = v19 + 32;
              sub_10002A0F4(buf);
              v20 = *(v19 + 24);
              *(v19 + 24) = 0;
              if (v20)
              {
                (*(*v20 + 8))(v20);
              }

              v21 = *(v19 + 16);
              *(v19 + 16) = 0;
              if (v21)
              {
                (*(*v21 + 8))(v21);
              }

              operator delete();
            }
          }
        }
      }

      v22 = *(v2 + 1);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *(v2 + 2);
          v24 = *v23 == v2;
          v2 = v23;
        }

        while (!v24);
      }

      v2 = v23;
      if (v23 == v3)
      {
        goto LABEL_31;
      }
    }

    v44 = 1;
  }

  sub_10001A178(&v57, v58[0]);
  return v44;
}

uint64_t RDQSRPeer::SetSecureFieldFocused(RDQSRPeer *this, char a2)
{
  result = RDQSRPeer::EngineIsRunning(this);
  if (result)
  {
    v4 = RDQSREngine::sInstance;

    return RDQSREngine::SetSecureFieldFocused(v4, a2);
  }

  return result;
}

void RDQSRPeer::AddLeadingContext(RDQSRPeer *this, NSString *a2)
{
  v3 = a2;
  if (RDQSRPeer::EngineIsRunning(this))
  {
    RDQSREngine::AddLeadingContextData(RDQSREngine::sInstance, v3);
  }
}

void RDQSRPeer::AddOtherContext(RDQSRPeer *a1, void *a2)
{
  v3 = a2;
  if (RDQSRPeer::EngineIsRunning(a1))
  {
    RDQSREngine::AddOtherContextData(RDQSREngine::sInstance, v3);
  }
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep RDQSRPeer::ResetRecognition(RDQSRPeer *this)
{
  result = RDQSRPeer::EngineIsRunning(this);
  if (result)
  {
    v2 = RDQSREngine::sInstance;

    return RDQSREngine::ResetRecognition(v2);
  }

  return result;
}

void RDQSRPeer::SetResetRecognitionMode(RDQSRPeer *this, unsigned __int8 a2)
{
  if (RDQSRPeer::EngineIsRunning(this))
  {
    v3 = RDQSREngine::sInstance;

    RDQSREngine::SetResetRecognitionMode(v3, a2);
  }
}

void RDQSRPeer::SaveUserProfileToFile(RDQSRPeer *this, const char *a2)
{
  if (RDQSRPeer::EngineIsRunning(this))
  {
    v3 = RDQSREngine::sInstance;

    RDQSREngine::SaveUserProfileToFile(v3, a2);
  }
}

NSMutableArray *RDQSRPeer::PhoneticNeighborsForText(RDQSRPeer *this, NSString *a2)
{
  v3 = a2;
  if (RDQSRPeer::EngineIsRunning(this) && *(this + 27))
  {
    [(NSString *)v3 UTF8String];
    v4 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = SRSSPhoneticCheckerCopyGuesses();
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 text];
          v11 = v10 == 0;

          if (!v11)
          {
            v12 = [v9 text];
            [v4 addObject:v12];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

CFMutableArrayRef RDQSRPeer::CopyCommandsInGrammar(uint64_t a1, void *a2)
{
  v3 = a2;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  RDQSRPeer::GetCommandsInGrammar(a1, v3, Mutable);

  return Mutable;
}

void RDQSRPeer::GetCommandsInGrammar(uint64_t a1, void *a2, __CFArray *a3)
{
  v5 = a2;
  if (v5)
  {
    v14 = v5;
    v6 = xpc_dictionary_get_value(v5, kRDKeyChildren);
    v7 = v6;
    if (v6)
    {
      count = xpc_array_get_count(v6);
      if (count)
      {
        v9 = 0;
        do
        {
          v10 = xpc_array_get_value(v7, v9);
          value = 0;
          value = xpc_uint64_get_value(v10);
          p_value = &value;
          v11 = sub_100018774(a1 + 88, &value, &unk_1000D174B, &p_value)[5];
          v12 = v11;
          if (v11)
          {
            if (xpc_dictionary_get_string(v11, kRDKeyCommandID))
            {
              string = xpc_dictionary_get_string(v12, kRDKeyCommandID);
              if (string)
              {
                CFArrayAppendValue(a3, [NSString stringWithUTF8String:string]);
              }
            }
          }

          if (v10)
          {
            RDQSRPeer::GetCommandsInGrammar(a1, v10, a3);
          }

          ++v9;
        }

        while (count != v9);
      }
    }

    v5 = v14;
  }
}

void RDQSRPeer::LogMatchedCommandID(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v15 = v3;
    v5 = xpc_dictionary_get_value(v3, kRDKeyChildren);
    v6 = v5;
    if (v5)
    {
      count = xpc_array_get_count(v5);
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v9 = xpc_array_get_value(v6, i);
          uint64 = xpc_dictionary_get_uint64(v9, kRDKeyObjectID);
          *buf = &uint64;
          v10 = sub_100018774(a1 + 88, &uint64, &unk_1000D174B, buf)[5];
          v11 = v10;
          if (v10 && xpc_dictionary_get_string(v10, kRDKeyCommandID))
          {
            string = xpc_dictionary_get_string(v11, kRDKeyCommandID);
            v13 = RXOSLog(string);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = "";
              if (string)
              {
                v14 = string;
              }

              *buf = 136446210;
              *&buf[4] = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Matched Grammar: CommandID -> %{public}s", buf, 0xCu);
            }

            v4 = v15;
          }

          if (v9)
          {
            RDQSRPeer::LogMatchedCommandID(a1, v9);
          }
        }
      }
    }
  }
}

void RDQSRPeer::ServerResponse(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(RDQSREngine::sInstance + 48);
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, kRDKeyMessage, 200);
  xpc_dictionary_set_uint64(v10, kRDKeyEpoch, *(a1 + 176));
  if (v7)
  {
    xpc_dictionary_set_uint64(v7, kRDKeyUtteranceID, *(RDQSREngine::sInstance + 168));
  }

  if (a3)
  {
    *buf = a3 + 8;
    v11 = sub_100018774(a1 + 88, (a3 + 8), &unk_1000D174B, buf);
    v12 = xpc_copy(v11[5]);
    xpc_dictionary_set_value(v12, kRDKeyLanguageModel, v7);
    if (v7)
    {
      if (*(a1 + 160))
      {
        RDPeer::KeepSystemAwake(a1);
      }

      v9 = 1;
    }

    xpc_dictionary_set_value(v10, kRDKeyRecognizer, v12);
  }

  if (*(a1 + 16) == 1)
  {
    v13 = xpc_copy_description(v10);
    v14 = RXOSLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Server Response %s", buf, 0xCu);
    }

    free(v13);
  }

  if (((v7 != 0) & v9) == 1 && v10 != 0)
  {
    v16 = *(a1 + 8);
    if (v16)
    {
      v17 = [v16 proxy];
      v18 = xpc_wrap_uint64s_in_object(v10);
      v19 = _CFXPCCreateCFObjectFromXPCObject();
      [v17 recognizedEventWithLegacyMessage:v19 result:v8];
      if (v19)
      {
        CFRelease(v19);
      }
    }
  }
}

void RDQSRPeer::EndPhrase(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v8 = a5;
  RDQSRPeer::LogMatchedCommandID(a1, v9);
  RDQSRPeer::ServerResponse(a1, v9, a3, v8);
}

void RDQSRPeer::ReachedEndofAudioFile(RDQSRPeer *this)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, kRDKeyMessage, 205);
  xpc_dictionary_set_uint64(xdict, kRDKeyCallbacks, 2uLL);
  xpc_dictionary_set_uint64(xdict, kRDKeyObjectID, *(this + 23));
  RDPeer::SendClientMessage(this, xdict);
}

void RDQSRPeer::BeginUtt(RDQSRPeer *this)
{
  if (*(this + 192))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(xdict, kRDKeyMessage, 205);
    xpc_dictionary_set_uint64(xdict, kRDKeyUtteranceID, *(RDQSREngine::sInstance + 168));
    xpc_dictionary_set_uint64(xdict, kRDKeyCallbacks, 1uLL);
    xpc_dictionary_set_uint64(xdict, kRDKeyObjectID, *(this + 23));
    RDPeer::SendClientMessage(this, xdict);
  }
}

void sub_10004B29C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10004B29C(a1, *a2);
    sub_10004B29C(a1, a2[1]);
    sub_10001A178((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_10004B2FC(uint64_t a1, unint64_t **a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = **a2;
  v6 = v2;
  do
  {
    v7 = **(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < **(v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_10004B350(uint64_t a1, unint64_t **a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = **a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = **(v3 + 32);
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

uint64_t **sub_10004B424(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_10004B4A4(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_10004B4A4(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v4 = *sub_10001918C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10004B53C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002FD90(a1, a2);
  sub_10001A178(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t *sub_10004B57C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002FD90(a1, a2);

  operator delete(a2);
  return v3;
}

void *sub_10004B5B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *sub_10004B6A4(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_10004B770(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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

uint64_t **sub_10004B84C(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = (result + 1);
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

void RDKeyword::SetLocale(RDKeyword *this, const char *a2)
{
  v3 = sub_10004B92C(this);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B970;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_sync(v3, block);
}

id sub_10004B92C(uint64_t a1)
{
  if (qword_10010E578 != -1)
  {
    sub_1000C93AC();
  }

  v2 = qword_10010E570;

  return v2;
}

CFStringRef sub_10004B970(CFStringRef result)
{
  if (!qword_10010E560)
  {
    result = CFStringCreateWithCString(0, result[1].isa, 0x8000100u);
    qword_10010E560 = result;
  }

  return result;
}

void sub_10004B9B0(id a1)
{
  v1 = dispatch_queue_create("RDKeyword", 0);
  v2 = qword_10010E570;
  qword_10010E570 = v1;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10004BA1C, @"com.apple.speech.recognition.AppleSpeechRecognition.KeywordChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_10004BA1C(uint64_t a1)
{
  v1 = sub_10004B92C(a1);
  dispatch_sync(v1, &stru_1000FFBE8);

  RDPeer::KeywordChanged(v2);
}

void sub_10004BA64(id a1)
{
  free(qword_10010E568);
  qword_10010E568 = 0;
  byte_10010E580 = 0;

  CFPreferencesAppSynchronize(@"com.apple.speech.recognition.AppleSpeechRecognition.prefs");
}

void sub_10004BEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_10004BEC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained != 0;

  return v2;
}

void sub_10004BEF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gRDServerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004BFC0;
  v8[3] = &unk_1000FFC38;
  v12 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_10004BFC0(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0 && qword_10010E588 && (v2 = [qword_10010E588 isEqual:*(a1 + 32)], v2))
  {
    v3 = RXOSLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 40) + 16);
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping profile update for %@ because user data has not actually changed", &v13, 0xCu);
    }
  }

  else
  {
    objc_storeStrong(&qword_10010E588, *(a1 + 32));
    v5 = +[NSProcessInfo processInfo];
    [v5 systemUptime];
    v7 = v6;

    [*(a1 + 40) adaptUserProfileWithUserData:*(a1 + 32)];
    v8 = +[NSProcessInfo processInfo];
    [v8 systemUptime];
    v10 = v9;

    v12 = RXOSLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = (v10 - v7) * 1000.0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Contacts added to profile in %.2fms", &v13, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id sub_10004C874(void *a1, void *a2)
{
  v3 = a1;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 stringByAppendingPathComponent:@"/SpeechRecognitionCore"];
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:a2];

    if (v8)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v10 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      v11 = [v6 stringByAppendingPathComponent:@"SpeechProfile"];
      v12 = [v11 stringByAppendingString:@"_"];
      v13 = [v12 stringByAppendingString:v10];

      v3 = v10;
    }
  }

  else if (a2)
  {
    [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    *a2 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_10004CE08(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [_EARWordPart alloc];
  v8 = +[NSSet set];
  v9 = sub_10004CECC(v6);

  v10 = [v7 initWithOrthography:v5 pronunciations:v8 tag:v9];
  [*(a1 + 32) addObject:v10];
}

id sub_10004CECC(void *a1)
{
  v1 = qword_10010E598;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1000C93C0();
  }

  v3 = [qword_10010E590 objectForKeyedSubscript:v2];

  v4 = [v3 integerValue];
  return v4;
}

void sub_10004D36C(id a1)
{
  v1 = qword_10010E590;
  qword_10010E590 = &off_100106A50;
}

RDVAVisionKWSSpotter *RDKeywordSpotterInit(uint64_t a1, uint64_t a2)
{
  v4 = RXAutomationSaveKeywordsAudio();
  v5 = RXIsVoiceActionsVisionKWSEnabled();
  v6 = v5;
  v7 = RXOSLog(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using VisionKWS", buf, 2u);
    }

    v9 = [[RDVAVisionKWSSpotterDelegateImpl alloc] initWithDelegate:a2];
    v10 = [[RDVAVisionKWSSpotter alloc] initWithDelegate:v9];
    [(RDVAVisionKWSSpotter *)v10 start:a1 saveRuntimeAudio:v4];
  }

  else
  {
    if (v8)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using FSTSpotter", v12, 2u);
    }

    v9 = [[RDVAFSTSpotterDelegate alloc] initWithDelegate:a2];
    v10 = [[VATKeywordSpotter alloc] init:a1 delegate:v9 silenceLookback:0 silenceExpect:0 batchDecode:0 enableAudioDebugging:v4];
    [(RDVAVisionKWSSpotterDelegateImpl *)v9 setMaxFrameSizeForKeywords:100];
  }

  return v10;
}

id RDKeywordSpotterAddAudioSamples(void *a1, uint64_t a2, uint64_t a3)
{
  RXIsVoiceActionsVisionKWSEnabled();

  return [a1 addAudioSamples:a2 count:a3];
}

uint64_t multithread_forloop(size_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1)
  {
    v6 = RXOSLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "multithread_forloop: 0 threads are specified, defaulting to 1", v9, 2u);
    }

    v5 = 1;
  }

  v7 = vcvtps_u32_f32(a2 / v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10004D6B0;
  block[3] = &unk_1000FFCC8;
  if (v7 >= a2)
  {
    v7 = a2;
  }

  block[4] = v7;
  block[5] = a2;
  sub_10004D780(v11, a3);
  dispatch_apply(v5, 0, block);
  return sub_10001866C(v11);
}

uint64_t sub_10004D6B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = v2 * a2;
  v4 = v2 * a2 + v2;
  if (*(result + 40) >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(result + 40);
  }

  if (v3 < v5)
  {
    v7 = result;
    do
    {
      result = sub_10004D714(v7 + 48, v3++, a2);
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_10004D714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100003B9C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_10004D780(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

id sub_10004D8EC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) endAudio];
  v2 = *(a1 + 32);

  return [v2 createCaesuraSPG];
}

void sub_10004DAD0(uint64_t a1)
{
  v2 = [NSData dataWithBytes:*(a1 + 40) length:2 * *(a1 + 48)];
  [*(*(a1 + 32) + 32) addAudio:v2 numSamples:*(a1 + 48)];
}

EARCaesuraSPGHelper *RDOSDInit(uint64_t a1)
{
  v2 = [EARCaesuraSPGHelper alloc];

  return [(EARCaesuraSPGHelper *)v2 initWithDelegate:a1];
}

int main(int argc, const char **argv, const char **envp)
{
  byte_10010E5A0 = 1;
  qword_10010E5A8 = 0xEE006E6F69746365;
  speechrecognitiond_intialize_queue();
  qword_10010E818 = [objc_allocWithZone(type metadata accessor for ServiceDelegate(0)) init];
  qword_10010E820 = [objc_opt_self() serviceListener];
  [qword_10010E820 setDelegate:qword_10010E818];
  [qword_10010E820 resume];
  return 0;
}

void sub_10004DEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000C9AF4();
  (*(a3 + 16))(a3);
}

uint64_t sub_10004E01C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = sub_1000C9A84();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7, v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C9AA4();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12, v13, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = sub_1000C96A4();
  v19 = sub_1000C9CC4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "PeerConnection: received legacy message %@", v20, 0xCu);
    sub_100052E5C(v21);
  }

  [v17 copy];
  sub_1000C9DA4();
  result = swift_unknownObjectRelease();
  v24 = gRDServerQueue;
  if (gRDServerQueue)
  {
    sub_100052DFC(v36, v35);
    v25 = swift_allocObject();
    *(v25 + 16) = v4;
    sub_100053464(v35, (v25 + 24));
    *(v25 + 56) = v29;
    *(v25 + 64) = a3;
    aBlock[4] = sub_100053474;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100360;
    v26 = _Block_copy(aBlock);
    v27 = v24;
    v28 = v4;

    sub_1000C9A94();
    v33 = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v26);

    (*(v32 + 8))(v11, v7);
    (*(v30 + 8))(v16, v31);
    sub_100052DB0(v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E46C(void *a1)
{
  v2 = v1;
  v4 = sub_1000C9A84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C9AA4();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10, v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = sub_1000C96A4();
  v17 = sub_1000C9CC4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v14;
    v20 = v9;
    v21 = v2;
    v22 = v4;
    v23 = v10;
    v24 = v5;
    v25 = v19;
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "PeerConnection: received client update : %@", v18, 0xCu);
    sub_100052E5C(v25);
    v5 = v24;
    v10 = v23;
    v4 = v22;
    v2 = v21;
    v9 = v20;
    v14 = v35;
  }

  result = _CFXPCCreateXPCObjectFromCFObject();
  v28 = result;
  if (result)
  {
    v29 = gRDServerQueue;
    if (gRDServerQueue)
    {
      v30 = swift_allocObject();
      *(v30 + 16) = v2;
      *(v30 + 24) = v28;
      aBlock[4] = sub_100053390;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100054990;
      aBlock[3] = &unk_100100310;
      v31 = _Block_copy(aBlock);
      v32 = v29;
      v33 = v2;
      swift_unknownObjectRetain();
      sub_1000C9A94();
      v37 = _swiftEmptyArrayStorage;
      sub_100052C64();
      sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
      sub_100052D04();
      sub_1000C9DB4();
      sub_1000C9D34();
      _Block_release(v31);
      swift_unknownObjectRelease();

      (*(v5 + 8))(v9, v4);
      (*(v36 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10004E878()
{
  v1 = sub_1000C9A84();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C9AA4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0;
  v14 = sub_1000C96A4();
  v15 = sub_1000C9CE4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = [*(*(&v13->isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];

    _os_log_impl(&_mh_execute_header, v14, v15, "PeerConnection: received connectionLostHandler() for pid %d", v16, 8u);
  }

  else
  {

    v14 = v13;
  }

  v17 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    aBlock[4] = sub_100053298;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_1001002C0;
    v19 = _Block_copy(aBlock);
    v20 = v13;
    v21 = v17;
    sub_1000C9A94();
    v22[1] = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v19);

    (*(v2 + 8))(v6, v1);
    (*(v8 + 8))(v12, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004EBC4(char a1)
{
  v2 = v1;
  v4 = sub_1000C9A84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C9AA4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C96A4();
  v17 = sub_1000C9CC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24[0] = v2;
    *v18 = 67109120;
    *(v18 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "PeerConnection: received setSecureFieldFocused: %{BOOL}d", v18, 8u);
    v2 = v24[0];
  }

  v19 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = a1 & 1;
    aBlock[4] = sub_100053264;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100270;
    v21 = _Block_copy(aBlock);
    v22 = v19;
    v23 = v2;
    sub_1000C9A94();
    v24[1] = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v21);

    (*(v5 + 8))(v9, v4);
    (*(v11 + 8))(v15, v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004EF5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C9A84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C9AA4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C96A4();
  v17 = sub_1000C9CC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24[0] = v2;
    *v18 = 134217984;
    *(v18 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v16, v17, "PeerConnection: received releaseResult: %llu", v18, 0xCu);
    v2 = v24[0];
  }

  v19 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = a1;
    aBlock[4] = sub_1000531F8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100220;
    v21 = _Block_copy(aBlock);
    v22 = v19;
    v23 = v2;
    sub_1000C9A94();
    v24[1] = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v21);

    (*(v5 + 8))(v9, v4);
    (*(v11 + 8))(v15, v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004F2E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000C9A84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C9AA4();
  v28 = *(v12 - 8);
  v29 = v12;
  __chkstk_darwin(v12, v13, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_1000C96A4();
  v18 = sub_1000C9CC4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100050ED0(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "PeerConnection: received addLeadingContext: %s", v20, 0xCu);
    sub_100052DB0(v21);

    v7 = v27;
  }

  v22 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v23 = swift_allocObject();
    v23[2] = v3;
    v23[3] = a1;
    v23[4] = a2;
    aBlock[4] = sub_100053180;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_1001001D0;
    v24 = _Block_copy(aBlock);

    v25 = v22;
    v26 = v3;
    sub_1000C9A94();
    v30 = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v24);

    (*(v7 + 8))(v11, v6);
    (*(v28 + 8))(v16, v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004F670(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C9A84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C9AA4();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10, v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_1000C96A4();
  v16 = sub_1000C9CC4();

  v17 = os_log_type_enabled(v15, v16);
  v38 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v37 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v36 = v10;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    v22 = sub_1000C9B84();
    v24 = v14;
    v25 = v9;
    v26 = v4;
    v27 = v2;
    v28 = sub_100050ED0(v22, v23, aBlock);

    *(v19 + 4) = v28;
    v2 = v27;
    v4 = v26;
    v9 = v25;
    v14 = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "PeerConnection: received addOtherContext: %s", v19, 0xCu);
    sub_100052DB0(v21);
    v10 = v36;

    v5 = v37;
  }

  v29 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v30 = swift_allocObject();
    v31 = v38;
    *(v30 + 16) = v2;
    *(v30 + 24) = v31;
    aBlock[4] = sub_1000530C0;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100180;
    v32 = _Block_copy(aBlock);

    v33 = v29;
    v34 = v2;
    sub_1000C9A94();
    v40 = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v32);

    (*(v5 + 8))(v9, v4);
    (*(v39 + 8))(v14, v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004FB34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v30 = a2;
  v31 = a3;
  v8 = v5;
  v33 = a1;
  v9 = sub_1000C9A84();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000C9AA4();
  v15 = *(v32 - 8);
  __chkstk_darwin(v32, v16, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C96A4();
  v21 = sub_1000C9CE4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = v9;
    *v22 = 134217984;
    *(v22 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, v30, v22, 0xCu);
    v9 = v29;
  }

  v23 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v24 = swift_allocObject();
    v25 = v33;
    *(v24 + 16) = v8;
    *(v24 + 24) = v25;
    aBlock[4] = a4;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = a5;
    v26 = _Block_copy(aBlock);
    v27 = v23;
    v28 = v8;
    sub_1000C9A94();
    v34 = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v26);

    (*(v10 + 8))(v14, v9);
    (*(v15 + 8))(v19, v32);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004FEB4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000C9A84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C9AA4();
  v28 = *(v12 - 8);
  v29 = v12;
  __chkstk_darwin(v12, v13, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_1000C96A4();
  v18 = sub_1000C9CE4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100050ED0(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "PeerConnection: received saveUserProfileToFile %s", v20, 0xCu);
    sub_100052DB0(v21);

    v7 = v27;
  }

  v22 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v23 = swift_allocObject();
    v23[2] = v3;
    v23[3] = a1;
    v23[4] = a2;
    aBlock[4] = sub_100052FCC;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100090;
    v24 = _Block_copy(aBlock);

    v25 = v22;
    v26 = v3;
    sub_1000C9A94();
    v30 = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v24);

    (*(v7 + 8))(v11, v6);
    (*(v28 + 8))(v16, v29);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005023C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1000C9B04();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_10005040C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v6 = v4;
  v7 = sub_1000C9A84();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C9AA4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C96A4();
  v20 = sub_1000C9CE4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v28 = v6;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, v29, v21, 2u);
    v6 = v28;
  }

  v22 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v6;
    aBlock[4] = v31;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = a4;
    v24 = _Block_copy(aBlock);
    v25 = v22;
    v26 = v6;
    sub_1000C9A94();
    v32 = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v24);

    (*(v8 + 8))(v12, v7);
    (*(v14 + 8))(v18, v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_100050774(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v8 = sub_1000C9A84();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C9AA4();
  v38 = *(v14 - 8);
  v39 = v14;
  __chkstk_darwin(v14, v15, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v36 = v4;
  v19 = sub_1000C96A4();
  v20 = sub_1000C9CC4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v34 = v9;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    v25 = a1;
    *(v22 + 4) = sub_100050ED0(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v20, "PeerConnection: received phoneticNeighbors for %s", v22, 0xCu);
    sub_100052DB0(v24);
    v9 = v34;

    a4 = v35;
  }

  else
  {
    v25 = a1;
  }

  v26 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v27 = swift_allocObject();
    v29 = v36;
    v28 = v37;
    v27[2] = v36;
    v27[3] = v25;
    v27[4] = a2;
    v27[5] = v28;
    v27[6] = a4;
    aBlock[4] = sub_100052A48;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_1000FFFA0;
    v30 = _Block_copy(aBlock);

    v31 = v26;
    v32 = v29;

    sub_1000C9A94();
    v40 = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v30);

    (*(v9 + 8))(v13, v8);
    (*(v38 + 8))(v18, v39);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100050CAC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100050E20(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100050ED0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100050F9C(v11, 0, 0, 1, a1, a2);
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
    sub_100052DFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100052DB0(v11);
  return v7;
}

unint64_t sub_100050F9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000510A8(a5, a6);
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
    result = sub_1000C9E34();
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

void *sub_1000510A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000510F4(a1, a2);
  sub_100051224(&off_1000FFD20);
  return v3;
}

void *sub_1000510F4(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100051310(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000C9E34();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000C9B34();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100051310(v10, 0);
        result = sub_1000C9E04();
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

uint64_t sub_100051224(uint64_t result)
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

  result = sub_100051384(result, v11, 1, v3);
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

void *sub_100051310(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100052CBC(&unk_10010DA40, &unk_1000D1BF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100051384(char *result, int64_t a2, char a3, char *a4)
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
    sub_100052CBC(&unk_10010DA40, &unk_1000D1BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

id sub_10005147C(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000C96D4();
  v6 = *(v5 - 8);
  v9 = __chkstk_darwin(v5, v7, v8);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11, v12);
  v14 = &v36 - v13;
  v15 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer__logger;
  sub_10005F190();

  sub_1000C96B4();
  *&v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_audioDevice] = 0;
  *&v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext] = 0;
  *&v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext] = 0;
  v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_isQuasar] = 1;
  v38 = v15;
  v39 = v6;
  v16 = *(v6 + 16);
  v41 = v5;
  v16(v14, &v3[v15], v5);
  v17 = a1;
  v18 = sub_1000C96A4();
  v19 = sub_1000C9CE4();
  if (os_log_type_enabled(v18, v19))
  {
    v37 = v16;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412546;
    *(v20 + 4) = v17;
    *v21 = v17;
    *(v20 + 12) = 1024;
    *(v20 + 14) = [v17 processIdentifier];
    _os_log_impl(&_mh_execute_header, v18, v19, "PeerConnection: creating peer connection for %@ [%d]", v20, 0x12u);
    sub_100052E5C(v21);

    v22 = v39;
    v23 = v40;
    v16 = v37;
  }

  else
  {

    v18 = v17;
    v22 = v39;
    v23 = v40;
  }

  v24 = *(v22 + 8);
  v25 = v41;
  v24(v14, v41);
  type metadata accessor for RDServiceClientConnection(0);
  v26 = v17;
  *&v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection] = sub_10005E9D0(v26);
  v27 = [objc_opt_self() anonymousListener];
  v28 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceListener;
  *&v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceListener] = v27;
  [v27 setDelegate:qword_10010E818];
  [*&v3[v28] resume];
  v16(v23, &v3[v38], v25);
  v29 = v26;
  v30 = sub_1000C96A4();
  v31 = sub_1000C9CE4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412546;
    *(v32 + 4) = v29;
    *v33 = v29;
    *(v32 + 12) = 1024;
    *(v32 + 14) = [v29 processIdentifier];
    _os_log_impl(&_mh_execute_header, v30, v31, "PeerConnection: finished creating peer connection for %@ [%d]", v32, 0x12u);
    sub_100052E5C(v33);

    v25 = v41;
  }

  else
  {

    v30 = v29;
  }

  v24(v23, v25);
  v34 = type metadata accessor for SRDPeer(0);
  v42.receiver = v3;
  v42.super_class = v34;
  return objc_msgSendSuper2(&v42, "init");
}

uint64_t sub_1000518D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v30 = a2;
  v31 = a4;
  v11 = sub_1000C9A84();
  v35 = *(v11 - 8);
  __chkstk_darwin(v11, v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000C9AA4();
  v16 = *(v34 - 8);
  result = __chkstk_darwin(v34, v17, v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v23 = swift_allocObject();
    v24 = v33;
    *(v23 + 16) = v33;
    *(v23 + 24) = a1 & 1;
    v25 = v31;
    *(v23 + 32) = v30;
    *(v23 + 40) = a3;
    *(v23 + 48) = v25;
    *(v23 + 56) = a5;
    *(v23 + 64) = v32;
    *(v23 + 72) = sub_1000537C4;
    *(v23 + 80) = a7;
    aBlock[4] = sub_10005381C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_1001004F0;
    v26 = _Block_copy(aBlock);

    v27 = v22;
    v28 = v24;
    sub_1000C9A94();
    v36 = _swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v26);

    (*(v35 + 8))(v15, v11);
    (*(v16 + 8))(v21, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100051BBC(void (*a1)(void))
{
  v3 = v1;
  v4 = sub_1000C96A4();
  v5 = sub_1000C9CE4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = [*(*(&v3->isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];

    _os_log_impl(&_mh_execute_header, v4, v5, "PeerConnection: Broker introduced itself: %d", v6, 8u);
  }

  else
  {

    v4 = v3;
  }

  if (a1)
  {
    v7 = [*(&v3->isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceListener) endpoint];
    a1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100051D0C(void *a1)
{
  v2 = sub_1000C9AF4();
  v3 = [a1 valueForEntitlement:v2];

  if (!v3)
  {
    return 0;
  }

  sub_1000C9DA4();
  swift_unknownObjectRelease();
  sub_100053464(&aBlock, &v40);
  v4 = swift_dynamicCast();
  result = 0;
  if (v4 && (v39 & 1) != 0)
  {
    v6 = a1;
    v7 = sub_1000C96A4();
    v8 = sub_1000C9CE4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = [v6 processIdentifier];

      _os_log_impl(&_mh_execute_header, v7, v8, "PeerConnection: listener callback %d", v9, 8u);
    }

    else
    {

      v7 = v6;
    }

    v10 = objc_opt_self();
    v11 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21SpeechRecognitionCore11SRDProtocol_];
    [v6 setExportedInterface:v11];

    v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL___SRDInternalClientProtocol];
    [v6 setRemoteObjectInterface:v12];

    sub_100052CBC(&qword_10010DB18, &qword_1000D1838);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000D1770;
    v14 = sub_100053C64(0, &qword_10010DB20, NSArray_ptr);
    *(v13 + 56) = sub_100052CBC(&qword_10010DB28, &qword_1000D1840);
    *(v13 + 32) = v14;
    v15 = sub_100053C64(0, &qword_10010DB30, NSNumber_ptr);
    *(v13 + 88) = sub_100052CBC(&qword_10010DB38, &qword_1000D1848);
    *(v13 + 64) = v15;
    v16 = sub_100053C64(0, &qword_10010DB40, NSString_ptr);
    *(v13 + 120) = sub_100052CBC(&qword_10010DB48, &qword_1000D1850);
    *(v13 + 96) = v16;
    v17 = sub_100053C64(0, &qword_10010DB50, SRDTranscriptionToken_ptr);
    *(v13 + 152) = sub_100052CBC(&qword_10010DB58, &qword_1000D1858);
    *(v13 + 128) = v17;
    v18 = objc_allocWithZone(NSSet);
    isa = sub_1000C9B64().super.isa;

    v20 = [v18 initWithArray:isa];

    *&aBlock = 0;
    sub_1000C9CA4();

    if (aBlock)
    {
      v21 = [v6 remoteObjectInterface];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1000C9C94().super.isa;

        [v22 setClasses:v23 forSelector:"recognizedEventWithLegacyMessage:result:" argumentIndex:1 ofReply:0];
      }

      else
      {
      }
    }

    v24 = objc_allocWithZone(type metadata accessor for SRDPeer(0));
    v25 = v6;
    v27 = sub_10005147C(v25, v26);

    [v25 setExportedObject:v27];
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v37 = sub_100053CE4;
    v38 = v28;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v35 = sub_100054990;
    v36 = &unk_100100540;
    v29 = _Block_copy(&aBlock);
    v30 = v27;

    [v25 setInvalidationHandler:v29];
    _Block_release(v29);
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    v37 = sub_1000549E4;
    v38 = v31;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v35 = sub_100054990;
    v36 = &unk_100100590;
    v32 = _Block_copy(&aBlock);
    v33 = v30;

    [v25 setInterruptionHandler:v32];
    _Block_release(v32);
    [v25 resume];

    return 1;
  }

  return result;
}

uint64_t sub_100052314(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005234C(uint64_t a1, uint64_t a2)
{
  result = sub_1000C96D4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100052410(uint64_t a1, uint64_t a2)
{
  result = sub_1000C96D4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000524F4(uint64_t a1, CFTypeRef *a2)
{
  sub_1000524A0();
  RDQSRPeer::~RDQSRPeer(a2);
  return a1;
}

CFTypeRef *sub_10005252C(CFTypeRef *a1, CFTypeRef *a2)
{
  RDQSRPeer::~RDQSRPeer(a1);
  sub_1000524A0();
  RDQSRPeer::~RDQSRPeer(a2);
  return a1;
}

uint64_t sub_10005256C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 208);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000525C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 208) = a2;
    }
  }

  return result;
}

uint64_t sub_100052668(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_100052698(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = off_1000FF400;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_1000526FC(RDPeer *a1, uint64_t a2)
{
  RDPeer::~RDPeer(a1);

  return sub_100052698(v3, a2);
}

uint64_t sub_100052734(uint64_t a1, RDPeer *a2)
{
  sub_100052698(a1, a2);
  RDPeer::~RDPeer(a2);
  return a1;
}

RDPeer *sub_100052768(RDPeer *a1, RDPeer *a2)
{
  RDPeer::~RDPeer(a1);
  sub_100052698(v4, a2);
  RDPeer::~RDPeer(a2);
  return a1;
}

uint64_t sub_1000527A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000527EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100052848(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1000528C8(uint64_t a1, const void **a2)
{
  RDAudioObject::RDAudioObject(a1, a2);
  RDAudioObject::~RDAudioObject(a2);
  return a1;
}

const void **sub_100052900(const void **a1, const void **a2)
{
  RDAudioObject::~RDAudioObject(a1);
  RDAudioObject::RDAudioObject(v4, a2);
  RDAudioObject::~RDAudioObject(a2);
  return a1;
}

uint64_t sub_100052940(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10005299C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100052A00()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100052A48()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = [objc_allocWithZone(NSArray) init];
  v6 = *(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v6)
  {
    v7 = sub_1000C9AF4();
    v8 = RDQSRPeer::PhoneticNeighborsForText(v6, v7);

    if (!v8)
    {
      __break(1u);
      return;
    }

    v5 = v8;
  }

  v15 = v5;
  v9 = sub_1000C96A4();
  v10 = sub_1000C9CC4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100050ED0(v1, v3, &v16);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v15;
    *v12 = v15;
    v14 = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "PeerConnection: returning phoneticNeighbors for %s as %@", v11, 0x16u);
    sub_100052E5C(v12);

    sub_100052DB0(v13);
  }

  v4(v15);
}

uint64_t sub_100052C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100052C64()
{
  result = qword_10010DA28;
  if (!qword_10010DA28)
  {
    sub_1000C9A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010DA28);
  }

  return result;
}

uint64_t sub_100052CBC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100052D04()
{
  result = qword_10010DA38;
  if (!qword_10010DA38)
  {
    sub_100052D68(&qword_10010DA30, &unk_1000D1810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010DA38);
  }

  return result;
}

uint64_t sub_100052D68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100052DB0(void *a1)
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

uint64_t sub_100052DFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100052E5C(uint64_t a1)
{
  v2 = sub_100052CBC(&unk_10010DF10, &unk_1000D1820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100052EC4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    empty = xpc_dictionary_create_empty();
    sub_100052F30(v1, empty);

    swift_unknownObjectRelease();
  }
}

void sub_100052F30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  v2 = a2;
}

uint64_t sub_100052F70()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (result)
  {
    return sub_100052FA4(result);
  }

  return result;
}

void sub_100052FCC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    v2 = sub_1000C9AF4();
    v3 = [v2 UTF8String];
    v4 = v2;
    if (v3)
    {
      RDQSRPeer::SaveUserProfileToFile(v1, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100053044()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    RDQSRPeer::SetResetRecognitionMode(v1, *(v0 + 24));
  }
}

RDQSRPeer *sub_100053078()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (result)
  {
    return RDQSRPeer::ResetRecognition(result);
  }

  return result;
}

void sub_1000530C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    isa = sub_1000C9B64().super.isa;
    RDQSRPeer::AddOtherContext(v1, isa);
  }
}

uint64_t sub_100053140()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100053180()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    v2 = sub_1000C9AF4();
    RDQSRPeer::AddLeadingContext(v1, v2);
  }
}

void sub_1000531F8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    RDQSRPeer::ReleaseResult(v1, *(v0 + 24));
  }
}

uint64_t sub_10005322C()
{

  return _swift_deallocObject(v0, 25, 7);
}

RDQSRPeer *sub_100053264()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (result)
  {
    return RDQSRPeer::SetSecureFieldFocused(result, *(v0 + 24));
  }

  return result;
}

void sub_100053298()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext;
  v3 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext);
  if (v3)
  {
    speechrecognitiond_peer_is_dead([*(*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier], v3);
    v4 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext;
    v5 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
    if (v5)
    {
      RDQSRPeer::Terminate(v5);
    }

    *(v1 + v2) = 0;
    *(v1 + v4) = 0;
  }
}

uint64_t sub_100053340(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_100053390()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = [*(*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];
    v5 = v4;
    speechrecognitiond_peer_client_update(v4, v2, v3);
    speechrecognitiond_peer_is_alive(v5, v2);
  }
}

uint64_t sub_10005341C()
{
  sub_100052DB0((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

_OWORD *sub_100053464(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100053474()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext);
  if (v2)
  {
    v3 = *(v0 + 56);
    sub_100052DFC(v0 + 24, v7);
    sub_100052CBC(&qword_10010DAB0, &qword_1000D1830);
    swift_dynamicCast();
    isa = sub_1000C9AB4().super.isa;

    v5 = speechrecognitiond_peer_legacy_msg_handler(isa, [*(*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier], v2);

    if (v5)
    {
      sub_1000C9AC4();

      v6 = sub_1000C9AB4().super.isa;

      v3(v6);
    }
  }
}

void sub_1000535E8()
{
  v1 = *(v0 + 16);
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CE4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = [*(*&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection] + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];

    _os_log_impl(&_mh_execute_header, v2, v3, "peer(%d) killed me", v4, 8u);

    abort();
  }

  abort();
}

uint64_t sub_1000536D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005374C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053784(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000537CC()
{

  return _swift_deallocObject(v0, 88, 7);
}

void sub_10005381C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v17 = *(v0 + 40);
  v3 = *(v0 + 64);
  v18 = 0;
  v4 = v1;
  v5 = sub_1000C96A4();
  v6 = sub_1000C9CE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [*(*&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection] + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];

    _os_log_impl(&_mh_execute_header, v5, v6, "Hello from %d", v7, 8u);

    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {

    if (!v2)
    {
LABEL_3:
      v8 = *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection];
      v9 = sub_1000C9AF4();
      RDPeer::CreatePeer(v8, v9, v3, 0, &v18);
    }
  }

  v10 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_audioDevice;
  if (!*&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_audioDevice])
  {
    if (v17)
    {
      v11 = sub_1000C9AF4();
      RDAudioObject::CreateRDAudioObject(v11, v12);
    }

    v13 = sub_1000C9AF4();
    RDAudioObject::CreateRDAudioObject(v13, v14);
  }

  v15 = *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection];
  v16 = sub_1000C9AF4();
  RDPeer::CreatePeer(v15, v16, v3, *&v4[v10], &v18);
}

uint64_t sub_100053C64(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100053CAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100053D88(void *a1, void *a2)
{
  sub_100054124(a1, a2);
  sub_100053D10(a2);
  return a1;
}

void *sub_100053DD4(void *a1, void *a2, uint64_t a3, void (*a4)(void))
{
  (a4)(a1, a2, a3);
  sub_100054124(a1, a2);
  (a4)(a2);
  return a1;
}

uint64_t sub_100053E28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100053E48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void *sub_100053F08(void *a1, void *a2)
{
  sub_100054124(a1, a2);
  sub_100053E90(a2);
  return a1;
}

void *sub_100053FE8(void *a1, void *a2)
{
  sub_100054124(a1, a2);
  sub_100053F70(a2);
  return a1;
}

void *sub_1000540F0(void *a1, void *a2)
{
  sub_100054124(a1, a2);
  sub_100054078(a2);
  return a1;
}

void *sub_100054124(void *result, void *a2)
{
  *result = *a2;
  v2 = a2 + 1;
  v3 = a2[1];
  result[1] = v3;
  v4 = result + 1;
  v5 = a2[2];
  result[2] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    *result = v4;
  }

  return result;
}

void sub_10005418C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000541D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = off_1000FF400;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  *a1 = off_1000FFAF8;
  v6 = v4;
  v7 = v5;
  sub_1000545C4((a1 + 40), a2 + 40);
  sub_100054364((a1 + 64), a2 + 64);
  sub_100018FF0((a1 + 88), a2 + 88);
  sub_10005430C((a1 + 112), a2 + 112);
  sub_10005430C((a1 + 136), a2 + 136);
  v8 = *(a2 + 160);
  v9 = *(a2 + 176);
  v10 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v10;
  *(a1 + 160) = v8;
  *(a1 + 176) = v9;
  return a1;
}

void sub_1000542A8(_Unwind_Exception *a1)
{
  sub_10001A178(v1 + 112, *(v1 + 15));
  sub_100019334(v1 + 88, *(v1 + 12));
  sub_10004B29C(v1 + 64, *(v1 + 9));
  sub_10001A178(v1 + 40, *(v1 + 6));
  RDPeer::~RDPeer(v1);
  _Unwind_Resume(a1);
}

void *sub_10005430C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000499C4(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100054364(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000543BC(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1000543BC(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100054444(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100054444(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  result = *sub_10001918C(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1000544C8();
  }

  return result;
}

void sub_100054548(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100054564(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100054564(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10001A178((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1000545C4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10005461C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100054634(uint64_t result, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, void *, void *))
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    do
    {
      result = a4(v7, v7 + 8, v6 + 4, v6 + 4);
      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != a3);
  }

  return result;
}

void *sub_1000546C4(uint64_t **a1, uint64_t *a2, unint64_t **a3, void *a4)
{
  v4 = *sub_10005475C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10005475C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unint64_t **a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = **a5, v7 = *a2[4], v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = **a5;
    if (*v10[4] < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = **(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = **(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t variable initialization expression of RDSwiftSpeechDonation.logger(uint64_t a1, uint64_t a2)
{
  sub_10005F190();

  return sub_1000C96B4();
}

id RDSwiftSpeechDonation.__allocating_init(donorBundleID:donorReferenceID:recordingDate:locale:taskHint:transcription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = objc_allocWithZone(v10);
  v18 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_taskHint];
  *v18 = 0;
  v38 = v18;
  v18[8] = 1;
  *&v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioFormat] = 0;
  *&v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_file] = 0;
  sub_10005F190();

  v19 = a5;
  v20 = a6;
  v21 = a8;
  sub_1000C96B4();
  v22 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorReferenceID];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorBundleID];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_recordingDate;
  v25 = sub_1000C9514();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v17[v24], v19, v25);
  v27 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_locale;
  v28 = sub_1000C9564();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v17[v27], v20, v28);
  v30 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_transcription];
  *v30 = a9;
  *(v30 + 1) = a10;
  v31 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioPath];
  *v31 = 0xD000000000000015;
  *(v31 + 1) = 0x80000001000E7170;
  if (a7 == 0x6F69746174636944 && v21 == 0xEB0000000043436ELL || (sub_1000C9EB4() & 1) != 0)
  {

    v32 = 1005;
  }

  else if (a7 == 0x43436C6C657053 && v21 == 0xE700000000000000)
  {

    v32 = 1006;
  }

  else
  {
    v35 = sub_1000C9EB4();

    v32 = 1005;
    if (v35)
    {
      v32 = 1006;
    }
  }

  *v38 = v32;
  v38[8] = 0;
  v40.receiver = v17;
  v40.super_class = v39;
  v33 = objc_msgSendSuper2(&v40, "init", a2);
  (*(v29 + 8))(v20, v28);
  (*(v26 + 8))(v19, v25);
  return v33;
}

id RDSwiftSpeechDonation.init(donorBundleID:donorReferenceID:recordingDate:locale:taskHint:transcription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_taskHint];
  *v17 = 0;
  v34 = v17;
  v17[8] = 1;
  *&v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioFormat] = 0;
  *&v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_file] = 0;
  sub_10005F190();

  sub_1000C96B4();
  v18 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorReferenceID];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorBundleID];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_recordingDate;
  v21 = sub_1000C9514();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v10[v20], a5, v21);
  v23 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_locale;
  v24 = sub_1000C9564();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v10[v23], a6, v24);
  v26 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_transcription];
  *v26 = a9;
  *(v26 + 1) = a10;
  v27 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioPath];
  *v27 = 0xD000000000000015;
  *(v27 + 1) = 0x80000001000E7170;
  if (a7 == 0x6F69746174636944 && a8 == 0xEB0000000043436ELL || (sub_1000C9EB4() & 1) != 0)
  {

    v28 = 1005;
  }

  else if (a7 == 0x43436C6C657053 && a8 == 0xE700000000000000)
  {

    v28 = 1006;
  }

  else
  {
    v31 = sub_1000C9EB4();

    v28 = 1005;
    if (v31)
    {
      v28 = 1006;
    }
  }

  *v34 = v28;
  v34[8] = 0;
  v35.receiver = v10;
  v35.super_class = type metadata accessor for RDSwiftSpeechDonation(0);
  v29 = objc_msgSendSuper2(&v35, "init");
  (*(v25 + 8))(a6, v24);
  (*(v22 + 8))(a5, v21);
  return v29;
}

Swift::Void __swiftcall RDSwiftSpeechDonation.donate(audioBuffers:logAudioFile:)(Swift::OpaquePointer audioBuffers, Swift::Bool logAudioFile)
{
  v58 = logAudioFile;
  rawValue = audioBuffers._rawValue;
  v3 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v3 - 8, v4, v5);
  v57 = v51 - v6;
  v7 = sub_100052CBC(&qword_10010DCC8, &qword_1000D1B28);
  __chkstk_darwin(v7 - 8, v8, v9);
  v55 = v51 - v10;
  v11 = sub_100052CBC(&qword_10010DCD0, &qword_1000D1B30);
  __chkstk_darwin(v11 - 8, v12, v13);
  v59 = v51 - v14;
  v15 = sub_1000C9564();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17, v18);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[2] = v20;
  v21 = sub_1000C9514();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21, v23, v24);
  v26 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000C9784();
  v52 = *(v54 - 8);
  v27 = *(v52 + 64);
  v30 = __chkstk_darwin(v54, v28, v29);
  v53 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31, v32);
  v34 = v51 - v33;
  v51[3] = *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorBundleID];
  (*(v22 + 16))(v26, &v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_recordingDate], v21);
  (*(v16 + 16))(v20, &v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_locale], v15);
  v51[1] = *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_transcription];
  v35 = sub_1000C9764();
  (*(*(v35 - 8) + 56))(v59, 1, 1, v35);
  v36 = sub_1000C9744();
  (*(*(v36 - 8) + 56))(v55, 1, 1, v36);

  v37 = rawValue;

  v38 = v52;
  sub_1000C9754();
  v39 = sub_1000C9C34();
  v40 = v57;
  (*(*(v39 - 8) + 56))(v57, 1, 1, v39);
  v41 = *(v38 + 16);
  v42 = v53;
  v59 = v34;
  v43 = v34;
  v44 = v54;
  v41(v53, v43, v54);
  v45 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  (*(v38 + 32))(v46 + v45, v42, v44);
  v47 = v46 + ((v45 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v47 = v2;
  *(v47 + 8) = v58;
  *(v46 + ((v45 + v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;

  v2;
  sub_100055D64(0, 0, v40, &unk_1000D1B40, v46);

  v48 = sub_1000C96A4();
  v49 = sub_1000C9CC4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "donated speech buffers", v50, 2u);
  }

  (*(v38 + 8))(v59, v44);
}

uint64_t sub_10005582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 16) = a5;
  *(v7 + 24) = a7;
  sub_100052CBC(&qword_10010DD10, &qword_1000D1BE8);
  *(v7 + 32) = swift_task_alloc();
  *(v7 + 40) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v7 + 48) = v8;
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *v9 = v7;
  v9[1] = sub_100055924;

  return SpeechDonation.donate()(v8);
}

uint64_t sub_100055924()
{

  return _swift_task_switch(sub_100055A20, 0, 0);
}

uint64_t sub_100055A20()
{
  v24 = v0;
  v1 = *(v0 + 48);
  v2 = sub_1000C9534();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = sub_1000C96A4();
    v6 = sub_1000C9CE4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "VoiceControl::SpeechDonation::DonationID is nil", v7, 2u);
    }
  }

  else
  {
    sub_100057274(v1, *(v0 + 40), &qword_10010DD10, &qword_1000D1BE8);
    v8 = sub_1000C96A4();
    v9 = sub_1000C9CE4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 40);
    if (v10)
    {
      v12 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v13 = 136315138;
      sub_100057274(v11, v12, &qword_10010DD10, &qword_1000D1BE8);
      result = v4(v12, 1, v2);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v15 = *(v0 + 32);
      v16 = *(v0 + 40);
      v17 = sub_1000C9524();
      v19 = v18;
      sub_100057214(v16, &qword_10010DD10, &qword_1000D1BE8);
      (*(v3 + 8))(v15, v2);
      v20 = sub_100050ED0(v17, v19, &v23);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "VoiceControl::SpeechDonation::DonationID=%s", v13, 0xCu);
      sub_100052DB0(v22);
    }

    else
    {

      sub_100057214(v11, &qword_10010DD10, &qword_1000D1BE8);
    }

    if (*(v0 + 64) == 1)
    {
      sub_1000560D8(*(v0 + 24));
    }
  }

  sub_100057214(*(v0 + 48), &qword_10010DD10, &qword_1000D1BE8);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100055D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = v27 - v12;
  sub_100057274(a3, v27 - v12, &qword_10010DCC0, &qword_1000D1B20);
  v14 = sub_1000C9C34();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100057214(v13, &qword_10010DCC0, &qword_1000D1B20);
  }

  else
  {
    sub_1000C9C24();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000C9BF4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000C9B14() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_1000560D8(uint64_t a1)
{
  v2 = v1;
  v56 = 0;
  v4 = sub_1000C94D4();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, a1, v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10, v11);
  v14 = &v53 - v13;
  v58 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_file;
  v59 = v12;
  if (!*(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_file))
  {

    sub_1000C94A4();

    sub_1000C9494();
    v15 = *(v5 + 8);
    v57 = v5 + 8;
    v55 = v15;
    v15(v9, v4);
    v16 = v59 & 0xC000000000000001;
    if ((v59 & 0xC000000000000001) != 0)
    {
      v17 = sub_1000C9E24();
    }

    else
    {
      if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v17 = *(v59 + 32);
    }

    v18 = v17;
    v19 = [v17 format];

    v20 = [v19 settings];
    sub_1000C9AC4();

    if (v16)
    {
      v21 = sub_1000C9E24();
    }

    else
    {
      v21 = *(v59 + 32);
    }

    v22 = v21;
    v23 = [v21 format];

    v54 = [v23 commonFormat];
    if (v16)
    {
      v24 = sub_1000C9E24();
    }

    else
    {
      v24 = *(v59 + 32);
    }

    v25 = v24;
    v26 = [v24 format];

    v27 = [v26 isInterleaved];
    v28 = objc_allocWithZone(AVAudioFile);
    sub_1000C94B4(v29);
    v31 = v30;
    isa = sub_1000C9AB4().super.isa;

    v60 = 0;
    v33 = [v28 initForWriting:v31 settings:isa commonFormat:v54 interleaved:v27 error:&v60];

    v34 = v60;
    if (v33)
    {
      v55(v14, v4);
      v35 = *(v2 + v58);
      *(v2 + v58) = v33;
    }

    else
    {
      v36 = v34;
      sub_1000C9484();

      swift_willThrow();
      v37 = sub_1000C96A4();
      v38 = sub_1000C9CE4();
      v56 = 0;
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "VoiceControl::SpeechDonation::DonationID, error opening file", v39, 2u);
      }

      v55(v14, v4);
    }

    v12 = v59;
  }

  if (v12 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v59)
  {
    v41 = 0;
    v42 = v12 & 0xC000000000000001;
    v57 = v12 & 0xFFFFFFFFFFFFFF8;
    v55 = i;
    while (1)
    {
      if (v42)
      {
        v43 = sub_1000C9E24();
      }

      else
      {
        if (v41 >= *(v57 + 16))
        {
          goto LABEL_34;
        }

        v43 = *(v12 + 8 * v41 + 32);
      }

      v44 = v43;
      v45 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v46 = *(v2 + v58);
      if (v46)
      {
        v60 = 0;
        if ([v46 writeFromBuffer:v44 error:&v60])
        {
          v47 = v60;
        }

        else
        {
          v48 = v60;
          sub_1000C9484();

          swift_willThrow();
          v49 = sub_1000C96A4();
          v50 = sub_1000C9CE4();
          v56 = 0;
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&_mh_execute_header, v49, v50, "VoiceControl::SpeechDonation::DonationID, error writing to file", v51, 2u);
            i = v55;
          }

          v44 = v49;
        }
      }

      ++v41;
      v12 = v59;
      if (v45 == i)
      {
        return [*(v2 + v58) close];
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    i = sub_1000C9E64();
  }

  return [*(v2 + v58) close];
}

void sub_1000566E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x1000566ECLL);
  }

  _Unwind_Resume(a1);
}

id RDSwiftSpeechDonation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSwiftSpeechDonation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RDSwiftSpeechDonation(uint64_t a1)
{
  result = qword_10010E648;
  if (!qword_10010E648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000569A8()
{
  v1 = sub_1000C9784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_100056A98()
{
  v2 = *(sub_1000C9784() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100056BBC;

  return sub_10005582C(v9, v10, v11, v0 + v3, v6, v7, v8);
}

uint64_t sub_100056BBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100056CB8(uint64_t a1)
{
  result = sub_1000C9514();
  if (v2 <= 0x3F)
  {
    result = sub_1000C9564();
    if (v3 <= 0x3F)
    {
      result = sub_1000C96D4();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void type metadata accessor for SFSpeechRecognitionTaskHint()
{
  if (!qword_10010DD00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10010DD00);
    }
  }
}

unint64_t sub_100056E30()
{
  result = qword_10010DD08;
  if (!qword_10010DD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10010DD08);
  }

  return result;
}

uint64_t sub_100056E7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100056F74;

  return v6(a1);
}

uint64_t sub_100056F74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005706C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000570A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000572E0;

  return sub_100056E7C(a1, v4);
}

uint64_t sub_10005715C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100056BBC;

  return sub_100056E7C(a1, v4);
}

uint64_t sub_100057214(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100052CBC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100057274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100052CBC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10005731C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10005742C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1000C96C4();
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

void *sub_1000574A4()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    sub_1000C9664();
    v3 = sub_1000C9AF4();

    sub_1000C9654();
    v5 = v4;
    v6 = sub_1000C9624();
    v7 = sub_1000C9644();
    v8 = sub_1000C9634();
    LODWORD(v9) = v5;
    [v2 didDetectKeywordWithKeyword:v3 score:v6 & 1 silenceAfter:v7 & 1 silenceBefore:v8 & 1 speechDuring:v9];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000576D8()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond33RDVASwiftVisionKWSSpotterDelegate_logger;
  v2 = sub_1000C96D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000577C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_listeningTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000578C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_swiftDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10005798C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_1000C96D4();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_100057A1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1000C96D4();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

id sub_100057B08(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1000583C4(a1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100057B90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C95F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C95E4();

  sub_1000C95D4();
  sub_1000C95B4();
  sub_1000C95A4();
  sub_1000C95C4();
  v9 = sub_1000C9584();
  (*((swift_isaMask & *v2) + 0x78))(v9);
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_100057DD0()
{
  result = (*((swift_isaMask & *v0) + 0x70))();
  if (result)
  {
    sub_100052CBC(&qword_10010DD30, &qword_1000D1C20);
    sub_1000C9C74();
  }

  return result;
}

void sub_100057F38()
{
  v1 = (*((swift_isaMask & *v0) + 0xD8))();
  mach_absolute_time();
  sub_1000C9594();
}

void *sub_10005816C(uint64_t a1)
{
  v9 = 0x40CF400000000000;
  v10 = xmmword_1000D1C00;
  v11 = xmmword_1000D1C10;
  v2 = [objc_allocWithZone(AVAudioFormat) initWithStreamDescription:&v9];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 16);
  if (HIDWORD(v3))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v4 = objc_allocWithZone(AVAudioPCMBuffer);
  v5 = [v4 initWithPCMFormat:v2 frameCapacity:v3, v9, v10, v11];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = [v5 int16ChannelData];
  if (v7)
  {
    v7 = *v7;
  }

  memcpy(v7, (a1 + 32), 2 * v3);
  [v6 setFrameLength:v3];

  return v6;
}

void sub_100058294(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005829CLL);
  }

  _Unwind_Resume(a1);
}

id sub_1000582EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDVASwiftVisionKWSSpotter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000583C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C9574();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_listeningTask] = 0;
  sub_1000C96C4();
  type metadata accessor for RDVASwiftVisionKWSSpotterDelegate(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  swift_unknownObjectRetain();
  sub_1000C96C4();
  swift_beginAccess();
  *(v10 + 16) = a1;
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_swiftDelegate] = v10;
  sub_1000C9614();
  (*(v5 + 104))(v9, enum case for VAComputeUnits.cpuAndNeuralEngine(_:), v4);

  v11 = sub_1000C9604();

  (*(v5 + 8))(v9, v4);
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_spotter] = v11;
  v12 = type metadata accessor for RDVASwiftVisionKWSSpotter(0);
  v14.receiver = v2;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_10005866C(uint64_t a1, uint64_t a2)
{
  result = sub_1000C96D4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100058710(uint64_t a1, uint64_t a2)
{
  result = sub_1000C96D4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t variable initialization expression of RDSoundInputImpl_iOS_AV_Coexist._logger(uint64_t a1, uint64_t a2)
{
  sub_10005F190();

  return sub_1000C96B4();
}

uint64_t variable initialization expression of RDSoundInputImpl_iOS_AV_Coexist.RDSoundInputImpl_iOS_AV_CoexistKey()
{
  sub_100052CBC(&qword_10010DE40, &qword_1000D1CA0);
  swift_allocObject();
  return sub_1000C9A74();
}

char *RDSoundInputImpl_iOS_AV_Coexist.init(expectedFormat:deliverSamples:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v64 = a1;
  v65 = a2;
  v5 = sub_1000C96D4();
  v6 = *(v5 - 8);
  v66 = v5;
  v67 = v6;
  v9 = __chkstk_darwin(v5, v7, v8);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11, v12);
  v59 = &v56 - v13;
  v14 = sub_1000C9D24();
  v62 = *(v14 - 8);
  v63 = v14;
  __chkstk_darwin(v14, v15, v16);
  v61 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C9CF4();
  __chkstk_darwin(v18, v19, v20);
  v21 = sub_1000C9AA4();
  __chkstk_darwin(v21 - 8, v22, v23);
  v24 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist__logger;
  sub_10005F190();

  v58 = v24;
  sub_1000C96B4();
  v25 = &v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples];
  *v25 = 0;
  v25[1] = 0;
  *&v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter] = 0;
  v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_onceInitialized] = 0;
  v26 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_RDSoundInputImpl_iOS_AV_CoexistKey;
  sub_100052CBC(&qword_10010DE40, &qword_1000D1CA0);
  swift_allocObject();
  *&v3[v26] = sub_1000C9A74();
  v60 = sub_100053C64(0, &qword_10010DE48, OS_dispatch_queue_ptr);
  sub_1000C9A94();
  v70 = _swiftEmptyArrayStorage;
  sub_10005C248(&qword_10010DE50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100052CBC(&qword_10010DE58, &qword_1000D1CA8);
  sub_10005C290(&qword_10010DE60, &qword_10010DE58, &qword_1000D1CA8);
  sub_1000C9DB4();
  (*(v62 + 104))(v61, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v63);
  *&v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue] = sub_1000C9D44();
  v27 = v64;
  *&v3[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat] = v64;
  v28 = *v25;
  v29 = v25[1];
  v30 = v68;
  *v25 = v65;
  v25[1] = v30;
  v31 = v27;

  sub_100053784(v28, v29);
  v32 = [objc_allocWithZone(AVAudioEngine) init];
  *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine] = v32;
  v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionSetupCompleted] = 0;
  v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated] = 0;
  v33 = [objc_allocWithZone(AVAudioSessionRouteControl) init];
  v34 = [objc_allocWithZone(AVAudioSession) initSessionForIndependentInputRoute];
  v35 = v59;
  *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession] = v34;
  v36 = sub_1000C9AF4();
  v37 = kCFBooleanTrue;
  v38 = sub_1000C9AF4();
  CFPreferencesSetAppValue(v36, v37, v38);
  v64 = v33;
  v65 = v31;

  v39 = v66;
  v40 = *(v67 + 16);
  v40(v35, &v4[v58], v66);
  v41 = sub_1000C96A4();
  v42 = sub_1000C9CE4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Device supports input audio coexistence", v43, 2u);
    v39 = v66;
  }

  v44 = *(v67 + 8);
  v44(v35, v39);
  v45 = type metadata accessor for RDSoundInputImpl_iOS_AV_Coexist(0);
  v69.receiver = v4;
  v69.super_class = v45;
  v46 = objc_msgSendSuper2(&v69, "init");
  v47 = *(v46 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue);
  v70 = v46;
  v48 = v47;

  sub_1000C9D14();

  v49 = sub_1000590C4();
  *(v46 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionSetupCompleted) = v49 & 1;
  if (v49)
  {
  }

  else
  {
    v50 = v57;
    v51 = v66;
    v40(v57, v46 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist__logger, v66);
    v52 = sub_1000C96A4();
    v53 = sub_1000C9CD4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "AVC: ERROR in setting up the coexisting audio session", v54, 2u);
    }

    else
    {
    }

    v44(v50, v51);
    return 0;
  }

  return v46;
}

uint64_t type metadata accessor for RDSoundInputImpl_iOS_AV_Coexist(uint64_t a1)
{
  result = qword_10010E6C8;
  if (!qword_10010E6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000590C4()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession;
  [*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine) setAudioSession:*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession)];
  v2 = *(v0 + v1);
  v27 = 0;
  v3 = [v2 setCategory:AVAudioSessionCategoryRecord withOptions:131073 error:&v27];
  v4 = v27;
  if (v3)
  {
    v5 = *(v0 + v1);
    v27 = 0;
    v6 = v4;
    v7 = [v5 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v27];
    v4 = v27;
    if (v7)
    {
      v8 = *(v0 + v1);
      v9 = v27;
      v10 = v8;
      v11 = sub_1000C9AF4();
      isa = sub_1000C9BE4().super.super.isa;
      v27 = 0;
      v13 = [v10 setMXSessionProperty:v11 value:isa error:&v27];

      if (v13)
      {
        v14 = v27;
        return 1;
      }

      v22 = v27;
      sub_1000C9484();

      swift_willThrow();
      swift_errorRetain();
      v17 = sub_1000C96A4();
      v23 = sub_1000C9CD4();

      if (os_log_type_enabled(v17, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v17, v23, "AVC:Error setting MX property for non-interruption. %@", v24, 0xCu);
        sub_100052E5C(v25);

        return 0;
      }

      goto LABEL_7;
    }
  }

  v16 = v4;
  sub_1000C9484();

  swift_willThrow();
  swift_errorRetain();
  v17 = sub_1000C96A4();
  v18 = sub_1000C9CD4();

  if (!os_log_type_enabled(v17, v18))
  {
LABEL_7:

    return 0;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  *v19 = 138412290;
  swift_errorRetain();
  v21 = _swift_stdlib_bridgeErrorToNSError();
  *(v19 + 4) = v21;
  *v20 = v21;
  _os_log_impl(&_mh_execute_header, v17, v18, "AVC: ERROr setting up echo cancelled independent route. %@", v19, 0xCu);
  sub_100052E5C(v20);

  return 0;
}

void sub_100059440(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100059448);
  }

  _Unwind_Resume(a1);
}

void sub_100059464(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000C96A4();
  v4 = sub_1000C9CC4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AVC: AV activateNotifications", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v2 selector:"handleConfigurationChangeNotificationWithNote:" name:AVAudioEngineConfigurationChangeNotification object:*(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine)];
}

void sub_10005957C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000C96A4();
  v4 = sub_1000C9CE4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AVC: AV deactivateNotifications", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v2 name:AVAudioEngineConfigurationChangeNotification object:*(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine)];
}

void sub_10005968C(void *a1)
{
  v2 = sub_1000C9A84();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2, v3, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C9AA4();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7, v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = sub_1000C96A4();
  v14 = sub_1000C9CE4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "AVC: Audio configuration changed = %@", v15, 0xCu);
    sub_100052E5C(v16);
  }

  v18 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10005C53C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100A28;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    sub_1000C9A94();
    v25 = _swiftEmptyArrayStorage;
    sub_10005C248(&qword_10010DA28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_10005C290(&qword_10010DA38, &qword_10010DA30, &unk_1000D1810);
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v20);

    (*(v24 + 8))(v6, v2);
    (*(v22 + 8))(v11, v23);
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall RDSoundInputImpl_iOS_AV_Coexist.startRecording()()
{
  v0 = sub_1000C96A4();
  v1 = sub_1000C9CE4();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "AVC: startRecording", v2, 2u);
  }

  v3 = [objc_opt_self() isSystemSleeping];
  if (v3)
  {
    v4 = sub_1000C96A4();
    v5 = sub_1000C9CE4();
    if (!os_log_type_enabled(v4, v5))
    {
      v10 = 0;
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "AVC: System is sleeping, so don't strat recording";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    v10 = v3 ^ 1;

LABEL_13:

    return v10;
  }

  v8 = sub_100059CC0();
  v9 = objc_opt_self();
  if (v8)
  {
    [v9 sendLiveRecordingOnNotification];
    v4 = sub_1000C96A4();
    v5 = sub_1000C9CE4();
    if (!os_log_type_enabled(v4, v5))
    {
      v10 = 1;
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "AVC:startedRecording";
    goto LABEL_9;
  }

  [v9 sendLiveRecordingOffNotificationWithInterrupt:1];
  return 0;
}

uint64_t sub_100059CC0()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine) isRunning];
  if (!v2)
  {
    if (*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionSetupCompleted) == 1)
    {
      v7 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated;
      if ((*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated) & 1) == 0)
      {
        v8 = *(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession);
        v32 = 0;
        if (![v8 setActive:1 error:&v32])
        {
          v21 = v32;
          sub_1000C9484();

          swift_willThrow();
          swift_errorRetain();
          v22 = sub_1000C96A4();
          v23 = sub_1000C9CD4();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            *v24 = 138412290;
            swift_errorRetain();
            v26 = _swift_stdlib_bridgeErrorToNSError();
            *(v24 + 4) = v26;
            *v25 = v26;
            _os_log_impl(&_mh_execute_header, v22, v23, "AVC: Audio session could not be activated: %@", v24, 0xCu);
            sub_100052E5C(v25);

            return 0;
          }

LABEL_26:

          return 0;
        }

        v9 = v32;
        v10 = sub_1000C96A4();
        v11 = sub_1000C9CE4();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "AVC: Audio Session activated", v12, 2u);
        }

        *(v1 + v7) = 1;
      }
    }

    sub_100059464(v2);
    if (sub_10005A214())
    {
      return 1;
    }

    v13 = sub_1000C96A4();
    v14 = sub_1000C9CE4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "AVC: Could not start recording from AV, deactivating audio session", v15, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated) != 1)
    {
      return 0;
    }

    v16 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession);
    v32 = 0;
    if ([v16 setActive:0 error:&v32])
    {
      v17 = v32;
      v18 = sub_1000C96A4();
      v19 = sub_1000C9CE4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "AVC:Could not start recording from AV, Audio Session deactivated", v20, 2u);
      }

      return 0;
    }

    v27 = v32;
    sub_1000C9484();

    swift_willThrow();
    swift_errorRetain();
    v22 = sub_1000C96A4();
    v28 = sub_1000C9CD4();

    if (os_log_type_enabled(v22, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v22, v28, "AVC: Could not deavtivate audio session: %@", v29, 0xCu);
      sub_100052E5C(v30);

      return 0;
    }

    goto LABEL_26;
  }

  v3 = sub_1000C96A4();
  v4 = sub_1000C9CE4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AVC: AV is already running", v5, 2u);
  }

  return 1;
}

void sub_10005A1F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005A200);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005A214()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine;
  v2 = [*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine) inputNode];
  v3 = [v2 inputFormatForBus:0];
  if ([v3 channelCount])
  {
    [v2 removeTapOnBus:0];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10005C4CC;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005A904;
    aBlock[3] = &unk_1001009B0;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    [v2 installTapOnBus:0 bufferSize:1024 format:v6 block:v5];
    _Block_release(v5);

    v7 = *(v0 + v1);
    aBlock[0] = 0;
    if ([v7 startAndReturnError:aBlock])
    {
      v8 = *(v0 + v1);
      v9 = *(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession);
      v10 = aBlock[0];
      v11 = v8;
      v12 = v9;
      [v11 setAudioSession:v12];

      return 1;
    }

    v17 = aBlock[0];
    sub_1000C9484();

    swift_willThrow();
    swift_errorRetain();
    v18 = sub_1000C96A4();
    v19 = sub_1000C9CD4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "AVI:Error Starting engine: %@", v20, 0xCu);
      sub_100052E5C(v21);
    }

    else
    {
    }
  }

  else
  {
    v14 = sub_1000C96A4();
    v15 = sub_1000C9CD4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "AVC:No audio input available, channel count 0", v16, 2u);
    }
  }

  return 0;
}

void sub_10005A5BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005A5C4);
  }

  _Unwind_Resume(a1);
}

char *sub_10005A5F8(void *a1, uint64_t a2)
{
  v3 = sub_1000C9A84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C9AA4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = v4;
    v25 = v9;
    v16 = *&result[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue];
    v17 = result;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    aBlock[4] = sub_10005C514;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100A00;
    v19 = _Block_copy(aBlock);
    v20 = v16;
    v23 = v17;
    v21 = a1;
    sub_1000C9A94();
    v26 = _swiftEmptyArrayStorage;
    sub_10005C248(&qword_10010DA28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_10005C290(&qword_10010DA38, &qword_10010DA30, &unk_1000D1810);
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v19);

    (*(v24 + 8))(v8, v3);
    (*(v10 + 8))(v14, v25);
  }

  return result;
}

void sub_10005A904(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

id sub_10005A988()
{
  v1 = v0;
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CE4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AVC:stopRunningAudioEngine", v4, 2u);
  }

  v5 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine;
  v6 = [*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine) inputNode];
  [v6 removeTapOnBus:0];

  return [*(v1 + v5) stop];
}

Swift::Void __swiftcall RDSoundInputImpl_iOS_AV_Coexist.stopRecording()()
{
  v1 = v0;
  v2 = sub_1000C9A84();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2, v3, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C9AA4();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7, v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist__logger;
  v12 = sub_1000C96A4();
  v13 = sub_1000C9CE4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "AVC:StopRecording from AV", v14, 2u);
  }

  sub_10005957C(v15);
  sub_10005A988();
  v16 = *&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue];
  v17 = swift_allocObject();
  v17[2] = v1;
  aBlock[4] = sub_10005C20C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100054990;
  aBlock[3] = &unk_100100898;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v33 = v1;
  sub_1000C9A94();
  v37 = _swiftEmptyArrayStorage;
  sub_10005C248(&qword_10010DA28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
  sub_10005C290(&qword_10010DA38, &qword_10010DA30, &unk_1000D1810);
  sub_1000C9DB4();
  sub_1000C9D34();
  _Block_release(v18);

  (*(v36 + 8))(v6, v2);
  (*(v34 + 8))(v11, v35);

  v20 = v33;
  v21 = *&v33[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession];
  aBlock[0] = 0;
  v22 = [v21 setActive:0 error:aBlock];
  v23 = aBlock[0];
  if (v22)
  {
    v20[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated] = 0;
    v24 = objc_opt_self();
    v25 = v23;
    [v24 sendLiveRecordingOffNotificationWithInterrupt:0];
  }

  else
  {
    v26 = aBlock[0];
    sub_1000C9484();

    swift_willThrow();
    swift_errorRetain();
    v27 = sub_1000C96A4();
    v28 = sub_1000C9CD4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "AVC:stopRecording : error stopping AVAudioSession:%@", v29, 0xCu);
      sub_100052E5C(v30);
    }

    else
    {
    }
  }
}

void sub_10005AF70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005AF78);
  }

  _Unwind_Resume(a1);
}

uint64_t RDSoundInputImpl_iOS_AV_Coexist.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000C96D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v3 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist__logger, v4);
  v10 = sub_1000C96A4();
  v11 = sub_1000C9CE4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AVC:Deinitializing AV Coexist", v12, 2u);
  }

  v13 = (*(v5 + 8))(v9, v4);
  v14 = (*((swift_isaMask & *v3) + 0x1F0))(v13);
  if (v14)
  {
    v14 = (*((swift_isaMask & *v3) + 0x1E8))();
  }

  sub_10005957C(v14);
  v15 = (v3 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples);
  v16 = *(v3 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples);
  if (v16)
  {
    v17 = v15[1];
    *v15 = 0;
    v15[1] = 0;
    sub_100053784(v16, v17);
  }

  v18 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue;
  v19 = *(v3 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue);

  sub_1000C9D04();

  if (aBlock[0] && aBlock[0] == v3 || (v20 = *(v3 + v18), aBlock[4] = nullsub_25, aBlock[5] = 0, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_10005B39C, aBlock[3] = &unk_1001008C0, v21 = _Block_copy(aBlock), v22 = v20, , dispatch_sync(v22, v21), v22, _Block_release(v21), result = swift_isEscapingClosureAtFileLocation(), (result & 1) == 0))
  {
    v24 = *(v3 + v18);
    aBlock[0] = 0;
    v25 = v24;

    sub_1000C9D14();

    v26 = type metadata accessor for RDSoundInputImpl_iOS_AV_Coexist(0);
    v27.receiver = v3;
    v27.super_class = v26;
    return objc_msgSendSuper2(&v27, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10005B4CC(void *a1)
{
  v2 = v1;
  sub_100053C64(0, &qword_10010DE98, NSObject_ptr);
  v4 = [a1 format];
  v5 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat);
  v6 = sub_1000C9D54();

  if (v6)
  {
    sub_10005BD84();
    v7 = [a1 int16ChannelData];
    if (v7)
    {
      v8 = *v7;
      v9 = [a1 frameLength];
      v10 = v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples;
      v11 = *(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples);
      if (v11)
      {
        v12 = *(v10 + 8);
        v13 = v9;

        v11(v8, v13);

        sub_100053784(v11, v12);
      }
    }

    else
    {
      oslog = sub_1000C96A4();
      v14 = sub_1000C9CD4();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v14, "AVC: Invalid audio format", v15, 2u);
      }
    }
  }

  else
  {

    sub_10005B6DC(a1);
  }
}

void sub_10005B6DC(void *a1)
{
  v2 = v1;
  v45 = [a1 format];
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat;
  v4 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat);
  v48 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter;
  v5 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter);
  if (!v5)
  {
    v11 = v4;
LABEL_6:
    sub_10005BD84();
    v12 = [objc_allocWithZone(AVAudioConverter) initFromFormat:v45 toFormat:v4];
    v13 = *(v2 + v48);
    *(v2 + v48) = v12;

    goto LABEL_7;
  }

  v6 = v4;
  v7 = [v5 inputFormat];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  sub_100053C64(0, &qword_10010DE90, AVAudioFormat_ptr);
  v9 = v45;
  v10 = sub_1000C9D54();

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14 = *(v2 + v48);
  if (v14)
  {
    [v14 setSampleRateConverterQuality:127];
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:*(v2 + v3) frameCapacity:8000];
  v17 = v16;
  if (!v16)
  {
    __break(1u);
  }

  v44 = v4;
  [v16 setFrameLength:8000];
  v18 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = a1;
  v20 = *(v2 + v48);
  if (v20)
  {
    v21 = v19;
    v22 = v2 + v18;
    v46 = v2 + v18;
    while (1)
    {
      aBlock[4] = sub_10005C410;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10005BD18;
      aBlock[3] = &unk_100100960;
      v23 = _Block_copy(aBlock);

      v49 = a1;
      v24 = v20;

      aBlock[0] = 0;
      v25 = [v24 convertToBuffer:v17 error:aBlock withInputFromBlock:v23];
      _Block_release(v23);

      v20 = aBlock[0];
      if (v25 == 2)
      {

        return;
      }

      if (v25 == 3)
      {
        goto LABEL_21;
      }

      v26 = [v17 int16ChannelData];
      if (!v26)
      {
        break;
      }

      v27 = v15;
      v28 = v2;
      v29 = *v26;
      v30 = [v17 frameLength];
      v31 = *v22;
      if (*v22)
      {
        v32 = *(v22 + 8);
        v33 = v30;

        v22 = v46;
        v31(v29, v33);
        v2 = v28;
        v15 = v27;

        sub_100053784(v31, v32);
        if (v25 == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {

        v2 = v28;
        v15 = v27;
        if (v25 == 1)
        {
LABEL_28:

          return;
        }
      }

      v21 = swift_allocObject();
      v21[2] = v15;
      v21[3] = v49;
      v20 = *(v2 + v48);
      if (!v20)
      {
        goto LABEL_20;
      }
    }

    v40 = v20;
    v41 = sub_1000C96A4();
    v42 = sub_1000C9CD4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "AVC: Invalid audio format while converting", v43, 2u);
    }
  }

  else
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v34 = v20;
    v35 = sub_1000C96A4();
    v36 = sub_1000C9CD4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "AVC:Could not run audio converter %@", v37, 0xCu);
      sub_100052E5C(v38);
    }
  }
}

void sub_10005BCCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005BCD4);
  }

  _Unwind_Resume(a1);
}

id sub_10005BD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

void sub_10005BD84()
{
  v26 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter;
  if (*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter))
  {
    v1 = v0;
    v2 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat) frameCapacity:8000];
    v3 = v2;
    if (v2)
    {
      [v2 setFrameLength:8000];
      v4 = *(v0 + v26);
      if (v4)
      {
        v5 = v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples;
        while (1)
        {
          aBlock[4] = sub_10005C15C;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10005BD18;
          aBlock[3] = &unk_1001008E8;
          v6 = _Block_copy(aBlock);
          v7 = v4;

          aBlock[0] = 0;
          v8 = [v7 convertToBuffer:v3 error:aBlock withInputFromBlock:v6];
          _Block_release(v6);

          v4 = aBlock[0];
          if (v8 == 2)
          {
            goto LABEL_13;
          }

          if (v8 == 3)
          {
            break;
          }

          v9 = [v3 int16ChannelData];
          if (!v9)
          {
            v17 = sub_1000C96A4();
            v23 = sub_1000C9CD4();
            if (os_log_type_enabled(v17, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&_mh_execute_header, v17, v23, "AVC: Invalid audio format while draining", v24, 2u);
              v18 = v4;
LABEL_18:
            }

            else
            {
              v18 = v4;
            }

            goto LABEL_21;
          }

          v10 = *v9;
          v11 = [v3 frameLength];
          v12 = *v5;
          if (*v5)
          {
            v13 = *(v5 + 8);
            v14 = v1;
            v15 = v11;

            v16 = v15;
            v1 = v14;
            v12(v10, v16);
            sub_100053784(v12, v13);
          }

          if (v8 == 1)
          {
            goto LABEL_23;
          }

          v4 = *(v1 + v26);
          if (!v4)
          {
            goto LABEL_12;
          }
        }

        v18 = sub_1000C96A4();
        v19 = sub_1000C9CD4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v4;
          *v21 = v4;
          v22 = v4;
          _os_log_impl(&_mh_execute_header, v18, v19, "AVC:Could not drain converter %@", v20, 0xCu);
          sub_100052E5C(v21);

          v17 = v3;
          v3 = v4;
          goto LABEL_18;
        }

        v17 = v3;
        v3 = v4;
LABEL_21:

        goto LABEL_22;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      v17 = v4;
LABEL_22:

LABEL_23:
      v25 = *(v1 + v26);
      *(v1 + v26) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10005C130(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005C138);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005C1D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005C248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005C290(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100052D68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005C2EC(uint64_t a1, uint64_t a2)
{
  result = sub_1000C96D4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005C3D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10005C410(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();
  v6 = 1;
  if (*(v5 + 16))
  {
    v4 = 0;
  }

  else
  {
    swift_beginAccess();
    *(v5 + 16) = 1;
    v7 = v4;
    v6 = 0;
  }

  *a2 = v6;
  return v4;
}

uint64_t sub_10005C494()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C4D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10005C53C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (((*((swift_isaMask & *Strong) + 0x1C0))() & 1) == 0)
    {
      v2 = sub_1000C96A4();
      v3 = sub_1000C9CD4();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "AVC: Could not start recording after Configuration change", v4, 2u);
      }
    }
  }
}

uint64_t sub_10005C64C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10005C6E4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000C9434();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6, v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9424();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = v6;
  v12 = v11;
  sub_10005CCBC(a1, 0x4E544974736F70, 0xE700000000000000, a3 & 1);
  sub_100052CBC(&qword_10010DEA0, &qword_1000D1D20);
  isa = sub_1000C9B64().super.isa;

  [v12 setTokenSausage:isa];

  sub_10005DCB4();
  sub_100052CBC(&qword_10010DEA8, &qword_1000D1D28);
  v14 = sub_1000C9B64().super.isa;

  [v12 setNBestResults:v14];

  sub_10005E2F8(a1, 0x4E544974736F70, 0xE700000000000000, a3 & 1);
  v15 = sub_1000C9AF4();

  [v12 setFirstBestResult:v15];

  sub_10005CCBC(a2, 0x4E5449657270, 0xE600000000000000, a3 & 1);
  v16 = sub_1000C9B64().super.isa;

  [v12 setPreITN_tokenSausage:v16];

  sub_10005DCB4();
  v17 = sub_1000C9B64().super.isa;

  [v12 setPreITN_nBestResults:v17];

  sub_10005E2F8(a2, 0x4E5449657270, 0xE600000000000000, a3 & 1);
  v18 = sub_1000C9AF4();

  [v12 setPreITN_firstBestResult:v18];

  [v12 setIsPartialResult:a3 & 1];
  v19 = sub_1000C9834();
  v20 = *(*(v19 - 8) + 8);
  v20(a2, v19);
  v20(a1, v19);
  (*(v23 + 8))(v10, v22);
  return v12;
}

void *sub_10005CA54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100052CBC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100052CBC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}