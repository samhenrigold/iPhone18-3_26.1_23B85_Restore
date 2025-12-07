void sub_100002488(id a1)
{
  v1 = RXOSLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC initialized", v2, 2u);
  }
}

void sub_100002E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002E74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = RXOSLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Attached transcriber to SpeechAnalyzer", &v9, 2u);
    }

    [*(a1 + 32) setCurrentTask:*(a1 + 40)];
    v6 = RXOSLog([*(a1 + 32) startRecognition:v3]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC recognition started with task %@", &v9, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC recognition failed with task %@", &v9, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000031C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003218(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = RXOSLog(WeakRetained);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 56);
      v11 = 67109120;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Attached transcriber to SpeechAnalyzer for recognition replacements %d", &v11, 8u);
    }

    [WeakRetained setUseRecognitionReplacements:*(a1 + 56)];
    v8 = RXOSLog([WeakRetained startRecognition:v3]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v11 = 67109120;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC recognition started for recognition replacements %d", &v11, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v11 = 67109120;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC recognition failed for recognition replacements %d", &v11, 8u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id RDEARCSpeechRecognizerCreate(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = CFPreferencesGetAppBooleanValue(@"UseAssetSupportForEmojiNameRecogition", @"com.apple.SpeechRecognitionCore", 0) != 0;
    v4 = [_EARSpeechRecognizer alloc];
    v5 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
    LOBYTE(v10) = 1;
    BYTE1(v9) = v3;
    LOBYTE(v9) = 0;
    v6 = [v4 initWithConfiguration:a1 overrides:0 overrideConfigFiles:0 language:0 activeConfiguration:v5 modelLoadingOptions:0 enableSpeakerCodeTraining:v9 supportEmojiRecognition:0 voiceCommandActiveSet:0 modelContextDelegate:v10 enableItn:?];

    return v6;
  }

  else
  {
    v8 = [_EARSpeechRecognizer alloc];

    return [v8 initWithConfiguration:a1];
  }
}

CFTypeRef RDEARCSpeechRecognizerCopyUserProfileData(void *a1)
{
  v1 = [a1 userProfileData];

  return CFRetain(v1);
}

CFTypeRef RDEARCSpeechRecognizerCopyJitProfileData(void *a1)
{
  v1 = [a1 jitProfileData];

  return CFRetain(v1);
}

uint64_t RDEARCSpeechRecognizerCreateRecognitionBuffer(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v9 = [[RDEARCSpeechRecognitionResultStreamGlue alloc] initWithStream:a5];
  if (CFPreferencesGetAppBooleanValue(@"UseAssetSupportForEmojiNameRecogition", @"com.apple.SpeechRecognitionCore", 0))
  {
    [a1 setRecognizeEmoji:1];
  }

  v10 = [a1 runRecognitionWithResultStream:v9 language:a2 task:a3 samplingRate:a4];

  return v10;
}

void sub_100003B9C()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_100003DA4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CSSoundInput;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_10000409C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = RXOSLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error while starting CS engine %@", &v9, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  *(*(a1 + 32) + 8) = v7;
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000434C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = RXOSLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error while stopping CS engine %@", &v8, 0xCu);
    }
  }

  else
  {
    *(*(a1 + 32) + 8) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

id sub_100004600(uint64_t a1)
{
  v2 = 3;
  while (1)
  {
    result = [*(a1 + 32) startRecording];
    if (result)
    {
      break;
    }

    usleep(0xC350u);
    if (!--v2)
    {

      return [AudioNotification sendLiveRecordingOffNotificationWithInterrupt:1];
    }
  }

  return result;
}

void RDQSRSoundSource::CreateFileSource(RDQSRSoundSource *this, const __CFURL *a2, void (*a3)(RDQSRSoundSource *, const __int16 *, uint64_t), void (*a4)(RDQSRSoundSource *, const __int16 *, uint64_t))
{
  v4 = RXLogSound();
  if (v4)
  {
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "QSR : CreateFileSource\n", v6, 2u);
    }
  }

  operator new();
}

void RDQSRSoundSource::CreateMixedSource(RDQSRSoundSource *this, void (*a2)(RDQSRSoundSource *), void (*a3)(RDQSRSoundSource *), uint64_t a4)
{
  v4 = RXLogSound();
  if (v4)
  {
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "QSR : CreateMixedSource\n", v6, 2u);
    }
  }

  operator new();
}

void RDQSRSoundSource::CreateCannedSource(void *a1)
{
  v1 = a1;
  v2 = RXLogSound();
  if (v2)
  {
    v3 = RXOSLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "QSR : CreateCannedSource\n", v4, 2u);
    }
  }

  operator new();
}

void RDQSRSoundSource::CreateLiveSource(RDQSRSoundSource *this, RDAudioObject *a2, void (*a3)(RDQSRSoundSource *, const __int16 *, uint64_t), uint64_t a4)
{
  v4 = RXLogSound();
  if (v4)
  {
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "QSR : CreateLiveSource\n", v6, 2u);
    }
  }

  operator new();
}

void sub_100004F10(id a1)
{
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  if (!v1)
  {
    sub_1000C8D7C();
  }

  v4 = v1;
  v2 = dispatch_queue_create("RDAudioQueue", v1);
  v3 = qword_10010E420;
  qword_10010E420 = v2;
}

void RDQSRSoundSource::~RDQSRSoundSource(RDQSRSoundSource *this)
{
  *this = off_1000FDD58;
  *(this + 2) = 0;
}

{
  *this = off_1000FDD58;
  *(this + 2) = 0;
  operator delete();
}

void RDQSRSoundSource::EndOfUtterance(RDQSRSoundSource *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = RXLogSound();
  if (v4)
  {
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SoundSource: EndOfUtterance", v6, 2u);
    }
  }
}

uint64_t RDQSRCannedSoundSource::RDQSRCannedSoundSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1000FDD58;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (qword_10010E428 != -1)
  {
    sub_1000C8DA8();
  }

  *a1 = off_1000FDDC8;
  return a1;
}

void RDQSRMixedSoundSource::RDQSRMixedSoundSource(RDQSRMixedSoundSource *this, void (*a2)(RDQSRSoundSource *, const __int16 *, uint64_t), void (*a3)(RDQSRSoundSource *), char a4)
{
  *this = off_1000FDD58;
  *(this + 8) = 0;
  *(this + 2) = a2;
  if (qword_10010E428 != -1)
  {
    sub_1000C8DA8();
  }

  *this = off_1000FDE18;
  *(this + 24) = 0;
  *(this + 7) = a3;
  *(this + 32) = 257;
  *(this + 66) = a4;
  if ((a4 & 1) == 0)
  {
    atomic_store(0, this + 64);
  }

  v7 = RDCopyCacheURL();
  if (v7)
  {
    *(this + 9) = CFURLCreateCopyAppendingPathComponent(0, v7, @"synthesizedText.caf", 0);
    CFRelease(v7);
  }
}

void sub_1000051BC(_Unwind_Exception *a1)
{
  *v1 = v2;
  v1[2] = 0;
  _Unwind_Resume(a1);
}

void RDQSRMixedSoundSource::SynthesizeText(RDQSRMixedSoundSource *this, const __CFString *a2, const __CFString *a3)
{
  if (*(this + 80) == 1)
  {
    RDString::RDString(__p, a2, 0);
    v7 = RXOSLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Synthesizing text %s", &buf, 0xCu);
    }

    *&buf = this;
    *(&buf + 1) = RDQSRMixedSoundSource::DidFinishSpeakingCallback;
    MutableCopy = CFStringCreateMutableCopy(0, 0, a3);
    v13.length = CFStringGetLength(MutableCopy);
    v13.location = 0;
    CFStringFindAndReplace(MutableCopy, @"_", @"-", v13, 0);
    RDSpeakStringToURL(a2, MutableCopy, *(this + 9), &buf);
    CFRelease(MutableCopy);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100005320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RDQSRMixedSoundSource::DidFinishSpeakingCallback(CFURLRef *this, void *a2)
{
  v3 = RXOSLog(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished Synthesizing, sending the audio samples", v4, 2u);
  }

  RDQSRMixedSoundSource::DidFinishSpeaking(this, this[9]);
}

void RDQSRMixedSoundSource::ReadAudioFile(RDQSRMixedSoundSource *this, const __CFString *a2)
{
  v4 = RDCopyCacheURL();
  if (v4)
  {
    v5 = v4;
    v6 = CFURLCreateCopyAppendingPathComponent(0, v4, a2, 0);
    if (v6)
    {
      v7 = v6;
      v8 = RXOSLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = a2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reading audio file %@", &v9, 0xCu);
      }

      RDQSRMixedSoundSource::DidFinishSpeaking(this, v7);
      CFRelease(v7);
    }

    CFRelease(v5);
  }
}

void RDQSRMixedSoundSource::DidFinishSpeaking(RDQSRMixedSoundSource *this, CFURLRef inURL)
{
  if (ExtAudioFileOpenURL(inURL, this + 3))
  {
    atomic_store(0, this + 48);
  }

  else
  {
    v3[0] = xmmword_1000D07E0;
    v3[1] = unk_1000D07F0;
    v4 = 16;
    ExtAudioFileSetProperty(*(this + 3), 0x63666D74u, 0x28u, v3);
    atomic_store(1u, this + 65);
    atomic_store(1u, this + 48);
    *(this + 4) = 0;
    RDQSRMixedSoundSource::ReadAudio(this);
  }
}

void RDQSRMixedSoundSource::ReadAudio(RDQSRMixedSoundSource *this)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000059D8;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_async(v2, block);
}

void RDQSRMixedSoundSource::SendNoise(RDQSRMixedSoundSource *this)
{
  v2 = dispatch_time(0, 100000000);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005698;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_after(v2, v3, block);
}

void sub_100005698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = atomic_load(v3 + 65);
  if (v4)
  {
    atomic_store(0, v3 + 64);
  }

  else
  {
    __chkstk_darwin(a1, a2, a3);
    v5 = sub_1000058C0(&v17);
    v6 = std::random_device::operator()(v5);
    v15[0] = v6;
    for (i = 1; i != 624; ++i)
    {
      v6 = i + 1812433253 * (v6 ^ (v6 >> 30));
      v15[i] = v6;
    }

    v8 = 0;
    v16 = 0;
    v13 = xmmword_1000D07D0;
    v14 = 0;
    do
    {
      *&v11[v8] = (sub_100006BA0(&v13, v15, &v13) * 32765.0);
      v8 += 2;
    }

    while (v8 != 3200);
    if (RXLogSound())
    {
      v9 = RXVeryVerbose();
      if (v9)
      {
        v10 = RXOSLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v19 = 1600;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Queueing %zu frames\n", buf, 0xCu);
        }
      }
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005948;
    v12[3] = &unk_1000FDE58;
    v12[4] = v3;
    v12[5] = v11;
    v12[6] = 1600;
    dispatch_sync(qword_10010E420, v12);
    RDQSRMixedSoundSource::SendNoise(v3);
    std::random_device::~random_device(&v17);
  }
}

std::random_device *sub_1000058C0(std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_10000592C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100005948(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16))
  {
    v2 = result;
    v3 = RXOSLog(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "noise samples", v4, 2u);
    }

    return (*(v1 + 16))(v1, *(v2 + 40), *(v2 + 48));
  }

  return result;
}

void sub_1000059D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(__chkstk_darwin(a1, a2, a3) + 32);
  ioNumberFrames = 2048;
  *(&ioData.mNumberBuffers + 1) = 0;
  ioData.mNumberBuffers = 1;
  *&ioData.mBuffers[0].mNumberChannels = 0x100000000001;
  ioData.mBuffers[0].mData = v25;
  v4 = atomic_load((v3 + 49));
  if ((v4 & 1) != 0 || ExtAudioFileRead(*(v3 + 24), &ioNumberFrames, &ioData))
  {
    ioNumberFrames = 0;
  }

  if (RXLogSound())
  {
    v5 = RXVeryVerbose();
    if (v5)
    {
      v6 = RXOSLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v22 = v3;
        v23 = 1024;
        v24 = ioNumberFrames;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p Queueing %u frames\n", buf, 0x12u);
      }
    }
  }

  if (ioNumberFrames)
  {
    v7 = *(v3 + 32);
    if (v7)
    {
      v8 = *(v3 + 40);
    }

    else
    {
      v14 = +[VCSignposts shared];
      [v14 synthesizedAudioInputFirstSample];

      v8 = dispatch_time(0, 0);
      *(v3 + 40) = v8;
      v7 = *(v3 + 32);
    }

    v15 = dispatch_time(v8, 62500 * v7);
    v16 = ioNumberFrames;
    *(v3 + 32) += ioNumberFrames;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005C88;
    v17[3] = &unk_1000FDE78;
    v17[4] = v3;
    v17[5] = v15;
    v17[6] = v25;
    v18 = v16;
    dispatch_sync(qword_10010E420, v17);
    RDQSRMixedSoundSource::ReadAudio(v3);
  }

  else
  {
    v9 = atomic_load((v3 + 48));
    if (v9)
    {
      v10 = *(v3 + 24);
      if (v10)
      {
        ExtAudioFileDispose(v10);
        *(v3 + 24) = 0;
      }

      atomic_store(0, (v3 + 48));
      if ((*(v3 + 66) & 1) == 0)
      {
        v11 = *(v3 + 56);
        if (v11)
        {
          v11(v3);
        }
      }

      v12 = +[VCSignposts shared];
      [v12 synthesizedAudioInputLastSample];
    }

    if (*(v3 + 66) == 1)
    {
      atomic_store(0, (v3 + 65));
      v13 = atomic_load((v3 + 64));
      if ((v13 & 1) == 0)
      {
        atomic_store(1u, (v3 + 64));
        RDQSRMixedSoundSource::SendNoise(v3);
      }
    }
  }
}

void sub_100005C88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_semaphore_wait(v3, *(a1 + 40));
  if (*(v2 + 16))
  {
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "audio samples", v6, 2u);
    }

    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 56));
  }
}

void RDQSRMixedSoundSource::SetMicOn(RDQSRMixedSoundSource *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = RXLogSound();
  if (v5)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Mixed : SetMicOn\n", v8, 2u);
    }
  }

  *(this + 80) = 1;
  v7 = atomic_load(this + 48);
  if ((v7 & 1) == 0)
  {
    atomic_store(0, this + 49);
    if (*(this + 66) == 1)
    {
      atomic_store(0, this + 65);
      RDQSRMixedSoundSource::SendNoise(this);
    }
  }
}

void RDQSRMixedSoundSource::SetMicOff(RDQSRMixedSoundSource *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = RXLogSound();
  if (v5)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Mixed : SetMicOff\n", v7, 2u);
    }
  }

  if (*(this + 80) == 1)
  {
    atomic_store(1u, this + 65);
    atomic_store(1u, this + 49);
    *(this + 80) = 0;
  }
}

void RDQSRMixedSoundSource::~RDQSRMixedSoundSource(RDQSRMixedSoundSource *this)
{
  *this = off_1000FDE18;
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  do
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006060;
    block[3] = &unk_1000FDEA0;
    block[4] = &v6;
    block[5] = this;
    dispatch_sync(qword_10010E420, block);
    if (v7[3])
    {
      break;
    }

    usleep(0x1388u);
  }

  while ((v7[3] & 1) == 0);
  _Block_object_dispose(&v6, 8);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  do
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10000608C;
    v4[3] = &unk_1000FDEA0;
    v4[4] = &v6;
    v4[5] = this;
    dispatch_sync(qword_10010E420, v4);
    if (v7[3])
    {
      break;
    }

    usleep(0x1388u);
  }

  while ((v7[3] & 1) == 0);
  _Block_object_dispose(&v6, 8);
  v3 = *(this + 3);
  if (v3)
  {
    ExtAudioFileDispose(v3);
    *(this + 3) = 0;
  }

  *this = off_1000FDD58;
  *(this + 2) = 0;
}

{
  RDQSRMixedSoundSource::~RDQSRMixedSoundSource(this);

  operator delete();
}

uint64_t sub_100006060(uint64_t result)
{
  v1 = *(result + 40);
  atomic_store(1u, (v1 + 65));
  LOBYTE(v1) = atomic_load((v1 + 64));
  if ((v1 & 1) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_10000608C(uint64_t result)
{
  v1 = *(result + 40);
  atomic_store(1u, (v1 + 49));
  LOBYTE(v1) = atomic_load((v1 + 48));
  if ((v1 & 1) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void RDQSRFileSoundSource::RDQSRFileSoundSource(RDQSRFileSoundSource *this, CFURLRef inURL, void (*a3)(RDQSRSoundSource *), void (*a4)(RDQSRSoundSource *, const __int16 *, uint64_t))
{
  *this = off_1000FDD58;
  *(this + 8) = 0;
  *(this + 2) = a4;
  if (qword_10010E428 != -1)
  {
    sub_1000C8DA8();
  }

  *this = off_1000FDED0;
  *(this + 20) = 1;
  *(this + 6) = a3;
  if (ExtAudioFileOpenURL(inURL, this + 3))
  {
    *(this + 40) = 0;
  }

  else
  {
    v7[0] = xmmword_1000D07E0;
    v7[1] = unk_1000D07F0;
    v8 = 16;
    ExtAudioFileSetProperty(*(this + 3), 0x63666D74u, 0x28u, v7);
    *(this + 4) = 0;
  }
}

void sub_1000061E4(_Unwind_Exception *a1)
{
  *v1 = v2;
  v1[2] = 0;
  _Unwind_Resume(a1);
}

void RDQSRFileSoundSource::~RDQSRFileSoundSource(RDQSRFileSoundSource *this)
{
  *this = off_1000FDED0;
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  do
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10000631C;
    v2[3] = &unk_1000FDEA0;
    v2[4] = &v3;
    v2[5] = this;
    dispatch_sync(qword_10010E420, v2);
    if (v4[3])
    {
      break;
    }

    usleep(0x1388u);
  }

  while ((v4[3] & 1) == 0);
  _Block_object_dispose(&v3, 8);
  *this = off_1000FDD58;
  *(this + 2) = 0;
}

{
  RDQSRFileSoundSource::~RDQSRFileSoundSource(this);

  operator delete();
}

uint64_t sub_10000631C(uint64_t result)
{
  v1 = *(result + 40);
  *(v1 + 41) = 1;
  if ((*(v1 + 40) & 1) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void RDQSRFileSoundSource::SetMicOn(RDQSRFileSoundSource *this)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000641C;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_async(v2, block);
}

void sub_10000641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  ioNumberFrames = 2048;
  *(&ioData.mNumberBuffers + 1) = 0;
  ioData.mNumberBuffers = 1;
  *&ioData.mBuffers[0].mNumberChannels = 0x100000000001;
  ioData.mBuffers[0].mData = v20;
  if ((*(v4 + 41) & 1) != 0 || ExtAudioFileRead(*(v4 + 24), &ioNumberFrames, &ioData))
  {
    ioNumberFrames = 0;
  }

  if (RXLogSound())
  {
    v5 = RXVeryVerbose();
    if (v5)
    {
      v6 = RXOSLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v17 = v4;
        v18 = 1024;
        v19 = ioNumberFrames;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p Queueing %u frames\n", buf, 0x12u);
      }
    }
  }

  v7 = ioNumberFrames;
  if (ioNumberFrames)
  {
    v8 = *(v4 + 32);
    if (!v8)
    {
      v9 = +[VCSignposts shared];
      [v9 synthesizedAudioInputFirstSample];

      v7 = ioNumberFrames;
      v8 = *(v4 + 32);
    }

    *(v4 + 32) = v8 + v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006674;
    block[3] = &unk_1000FDF10;
    block[4] = v4;
    block[5] = v20;
    v13 = v7;
    dispatch_sync(qword_10010E420, block);
    (**v4)(v4);
  }

  else if (*(v4 + 40) == 1)
  {
    ExtAudioFileDispose(*(v4 + 24));
    v10 = *(v4 + 48);
    if (v10)
    {
      v10(v4);
    }

    *(v4 + 40) = 0;
    v11 = +[VCSignposts shared];
    [v11 synthesizedAudioInputLastSample];
  }
}

uint64_t sub_100006674(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(result + 16);
  if (v2)
  {
    return v2();
  }

  return result;
}

void RDQSRFileSoundSource::SetMicOff(RDQSRFileSoundSource *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = RXLogSound();
  if (v4)
  {
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AudioFile : SetMicOff", v6, 2u);
    }
  }
}

void RDQSRLiveSoundSource::RDQSRLiveSoundSource(RDQSRLiveSoundSource *this, RDAudioObject *a2, void (*a3)(RDQSRSoundSource *, const __int16 *, uint64_t))
{
  *this = off_1000FDD58;
  *(this + 8) = 0;
  *(this + 2) = a3;
  if (qword_10010E428 != -1)
  {
    sub_1000C8DA8();
  }

  *this = off_1000FDF40;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006838;
  v8[3] = &unk_1000FDF80;
  v8[4] = this;
  v5 = objc_retainBlock(v8);
  v6[0] = xmmword_1000D07E0;
  v6[1] = unk_1000D07F0;
  v7 = 16;
  RDSoundInput::CreateSoundInput(a2, 1, v6, v5);
}

void sub_100006820(_Unwind_Exception *a1)
{
  *v1 = v2;
  v1[2] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_100006838(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(result + 16);
  if (v2)
  {
    return v2();
  }

  return result;
}

void RDQSRLiveSoundSource::~RDQSRLiveSoundSource(RDQSRLiveSoundSource *this)
{
  *this = off_1000FDF40;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = off_1000FDD58;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

{
  RDQSRLiveSoundSource::~RDQSRLiveSoundSource(this);

  operator delete();
}

uint64_t RDQSRLiveSoundSource::SetMicOn(RDQSRLiveSoundSource *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = RXLogSound();
  if (v5)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Live : SetMicOn", v8, 2u);
    }
  }

  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 32))(result);
    if ((result & 1) == 0)
    {
      result = (*(**(this + 3) + 16))(*(this + 3));
      *(this + 32) = result;
    }
  }

  return result;
}

uint64_t RDQSRLiveSoundSource::SetMicOff(RDQSRLiveSoundSource *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = RXLogSound();
  if (v5)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Live : SetMicOff", v8, 2u);
    }
  }

  result = (*(**(this + 3) + 32))(*(this + 3));
  if (result)
  {
    return (*(**(this + 3) + 24))(*(this + 3));
  }

  return result;
}

uint64_t RDQSRLiveSoundSource::EndOfUtterance(RDQSRLiveSoundSource *this)
{
  result = (*(**(this + 3) + 32))(*(this + 3));
  if (result)
  {
    v3 = *(**(this + 3) + 24);

    return v3();
  }

  return result;
}

void *sub_100006B48(void *result)
{
  *result = off_1000FDD58;
  result[2] = 0;
  return result;
}

void sub_100006B6C(void *a1)
{
  *a1 = off_1000FDD58;
  a1[2] = 0;
  operator delete();
}

double sub_100006BA0(uint64_t a1, uint64_t a2, double *a3)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    v5 = *(a1 + 16);
  }

  else
  {
    do
    {
      do
      {
        v7 = sub_100006CB4(a2);
        v8 = (v7 + sub_100006CB4(a2) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v9 = sub_100006CB4(a2);
        v10 = (v9 + sub_100006CB4(a2) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v11 = v10 * v10 + v8 * v8;
      }

      while (v11 > 1.0);
    }

    while (v11 == 0.0);
    v12 = sqrt(log(v10 * v10 + v8 * v8) * -2.0 / v11);
    *(a1 + 16) = v10 * v12;
    *(a1 + 24) = 1;
    v5 = v8 * v12;
  }

  return *a3 + v5 * a3[1];
}

uint64_t sub_100006CB4(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t RDAudioObject::RDAudioObject(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void RDAudioObject::~RDAudioObject(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t RDSoundInput::RDSoundInput(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v7 = *a2;
  *a1 = off_1000FE020;
  *(a1 + 8) = v7;
  *(a1 + 16) = *(a2 + 8);
  if (v7)
  {
    CFRetain(v7);
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  return a1;
}

void sub_100006F84(id a1)
{
  qword_10010E438 = objc_alloc_init(RDSpeechSynthesis);

  _objc_release_x1();
}

void sub_1000071E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100007234(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000724C(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = v3;
  if (v3)
  {
    if ([v3 frameLength])
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      if (!v4)
      {
        v5 = [AVAudioFile alloc];
        v6 = *(a1 + 32);
        v7 = [v15 format];
        v8 = [v7 settings];
        v9 = [v15 format];
        v10 = [v9 commonFormat];
        v11 = [v15 format];
        v12 = [v5 initForWriting:v6 settings:v8 commonFormat:v10 interleaved:objc_msgSend(v11 error:"isInterleaved"), 0];
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v4 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v4 writeFromBuffer:v15 error:0];
    }
  }

  else
  {
    NSLog(@"TTS Error initializing buffer");
  }
}

void RDSpeakStringToURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[RDSpeechSynthesis sharedManager];
  [v8 speakString:a1 toURL:a3 withLanguageCode:a2 withCallback:a4];
}

void sub_100007544(id a1)
{
  qword_10010E440 = objc_alloc_init(CARSessionStatus);

  _objc_release_x1();
}

void sub_1000076C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000076DC(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10010E458)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100007808;
    v3[4] = &unk_1000FDCD8;
    v3[5] = v3;
    v4 = off_1000FE0E8;
    v5 = 0;
    qword_10010E458 = _sl_dlopen();
  }

  if (!qword_10010E458)
  {
    sub_1000C8E68(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AXSystemAppServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C8DEC();
  }

  qword_10010E450 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007808(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10010E458 = result;
  return result;
}

void sub_10000854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(location, a15);
  objc_destroyWeak(location);
  _Unwind_Resume(a1);
}

void sub_100008604(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000086D4;
    v7[3] = &unk_1000FE130;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    dispatch_async(v6, v7);

    objc_destroyWeak(&v9);
  }
}

void sub_1000086D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _appendPCMBuffer:*(a1 + 32)];
}

void sub_100008E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100008E40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = 0;
    *a3 = 1;
  }

  else
  {
    *(v4 + 24) = 1;
    *a3 = 0;
    v5 = *(a1 + 32);
  }

  return v5;
}

void sub_100009390(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_10000A1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(location, a15);

  objc_destroyWeak(location);
  _Unwind_Resume(a1);
}

void sub_10000A280(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000A350;
    v7[3] = &unk_1000FE208;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    dispatch_async(v6, v7);

    objc_destroyWeak(&v9);
  }
}

void sub_10000A350(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _appendPCMBuffer:*(a1 + 32)];
}

void sub_10000A710(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = AVSoundInput;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_10000A744(id a1)
{
  v1 = RXOSLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "wait for the async blocks", v2, 2u);
  }
}

void sub_10000ABA8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000AC3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = 0;
    *a3 = 1;
  }

  else
  {
    *(v4 + 24) = 1;
    *a3 = 0;
    v5 = *(a1 + 32);
  }

  return v5;
}

void sub_10000B1F0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFPreferencesAssistantEnabled();
    v4 = v3;
    v5 = RXOSLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Disabled";
      if (v4)
      {
        v6 = @"Enabled";
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Siri Enabled = %{public}@", &v7, 0xCu);
    }

    [v2 _didReceiveSiriSettingChanged:v4 != 0];
  }
}

id sub_10000BA50(uint64_t a1)
{
  [*(a1 + 32) stopRecording];

  return [AudioNotification sendLiveRecordingOffNotificationWithInterrupt:1];
}

id sub_10000BA88(uint64_t a1)
{
  [*(a1 + 32) startRecording:0];

  return +[AudioNotification sendLiveRecordingOnNotification];
}

id sub_10000BD34(uint64_t a1)
{
  result = [*(a1 + 32) isRecording];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopRecording];
  }

  return result;
}

id sub_10000C24C(uint64_t a1)
{
  v2 = RXOSLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No one listening, start AV", v4, 2u);
  }

  result = [*(a1 + 32) startRecording:0];
  if ((result & 1) == 0)
  {
    return [AudioNotification sendLiveRecordingOffNotificationWithInterrupt:1];
  }

  return result;
}

uint64_t RDQSRAudioFileLogger::openAudioFile(ExtAudioFileRef *outExtAudioFile, CFURLRef inURL, AudioStreamBasicDescription *a3, AudioFileTypeID inFileType)
{
  v7 = ExtAudioFileCreateWithURL(inURL, inFileType, a3, 0, 1u, outExtAudioFile);
  v8 = v7;
  if (v7 << 16)
  {
    v9 = RXOSLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543618;
      v12 = inURL;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error creating output file %{public}@, err: %{errno}d", &v11, 0x12u);
    }
  }

  else
  {
    ExtAudioFileSetProperty(*outExtAudioFile, 0x63666D74u, 0x28u, a3);
    CFURLSetResourcePropertyForKey(inURL, kCFURLFileProtectionKey, kCFURLFileProtectionCompleteUntilFirstUserAuthentication, 0);
  }

  return v8;
}

uint64_t RDQSRAudioFileLogger::addSamples(ExtAudioFileRef *this, __int16 *a2, uint64_t inNumberFrames)
{
  if (inNumberFrames < 1)
  {
    LOWORD(v4) = 0;
  }

  else
  {
    *(&ioData.mNumberBuffers + 1) = 0;
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = 1;
    ioData.mBuffers[0].mDataByteSize = 2 * inNumberFrames;
    ioData.mBuffers[0].mData = a2;
    v3 = ExtAudioFileWrite(*this, inNumberFrames, &ioData);
    v4 = v3;
    if (v3)
    {
      v5 = RXOSLog(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "RDQSRAudioFileLogger::addSamples Error writing to output wav file,err: %d", buf, 8u);
      }
    }
  }

  return v4;
}

void RDQSRAudioFileLogger::~RDQSRAudioFileLogger(OpaqueExtAudioFile **this)
{
  v1 = *this;
  if (v1)
  {
    ExtAudioFileDispose(v1);
  }
}

id RDQSRAudioFileLogger::audioFileLoggerQueue(RDQSRAudioFileLogger *this)
{
  if (qword_10010E460 != -1)
  {
    sub_1000C8FC0();
  }

  v2 = qword_10010E468;

  return v2;
}

void sub_10000C604(id a1)
{
  qword_10010E468 = dispatch_queue_create("RDQSRLoggerQueue", 0);

  _objc_release_x1();
}

CFURLRef RDQSRAudioFileLogger::createCacheURLWithFilename(const __CFString *this, const __CFString *a2)
{
  result = RDCopyCacheURL();
  if (result)
  {
    v4 = result;
    v5 = CFURLCreateCopyAppendingPathComponent(0, result, this, 1u);
    CFRelease(v4);
    return v5;
  }

  return result;
}

double RDQSRAudioFileLogger::wavFormat@<D0>(uint64_t a1@<X8>)
{
  result = 16000.0;
  *a1 = xmmword_1000D08B8;
  *(a1 + 16) = unk_1000D08C8;
  *(a1 + 32) = 16;
  return result;
}

void *RDQSRCircularBuffer<short>::write(uint64_t a1, char *__src, unsigned int a3)
{
  v4 = __src;
  v6 = 2 * a3;
  v7 = *(a1 + 12);
  v8 = *(a1 + 8) - v7;
  if (v8 >= a3)
  {
    v10 = (*a1 + 2 * v7);
  }

  else
  {
    v9 = v6 - 2 * v8;
    memcpy((*a1 + 2 * v7), __src, 2 * v8);
    v10 = *a1;
    __src = &v4[2 * v8];
    v6 = v9;
  }

  result = memcpy(v10, __src, v6);
  *(a1 + 24) += a3;
  v12 = (*(a1 + 12) + a3) % *(a1 + 8);
  *(a1 + 12) = v12;
  *(a1 + 16) = v12;
  return result;
}

{
  return RDQSRCircularBuffer<short>::write(a1, __src, a3);
}

unint64_t RDQSRCircularBuffer<short>::read(uint64_t a1, unint64_t a2, char *__dst)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if ((v5 - *(a1 + 20)) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = (v5 - *(a1 + 20));
  }

  v8 = (2 * v7);
  v9 = (v5 - v6);
  if (v7 <= v9)
  {
    v12 = (*a1 + 2 * v6);
    v11 = __dst;
  }

  else
  {
    v10 = (v8 - 2 * v9);
    memcpy(__dst, (*a1 + 2 * v6), (2 * v9));
    v11 = &__dst[2 * v9];
    v12 = *a1;
    v8 = v10;
  }

  memcpy(v11, v12, v8);
  v13 = *(a1 + 8);
  v14 = *(a1 + 20) + v7;
  if (v14 >= v13)
  {
    v14 = 0;
  }

  *(a1 + 16) = (v7 + *(a1 + 16)) % v13;
  *(a1 + 20) = v14;
  return v7;
}

{
  return RDQSRCircularBuffer<short>::read(a1, a2, __dst);
}

uint64_t RDQSRCircularBuffer<short>::totalFramesWritten(uint64_t a1)
{
  return *(a1 + 24);
}

{
  return RDQSRCircularBuffer<short>::totalFramesWritten(a1);
}

uint64_t RDQSRCircularBuffer<short>::seekBack(uint64_t result, unint64_t a2)
{
  *(result + 16) = ((*(result + 16) + *(result + 8)) + a2 / *(result + 8) * *(result + 8) - a2) % *(result + 8);
  return result;
}

{
  return RDQSRCircularBuffer<short>::seekBack(result, a2);
}

RDSAPIObjCSpeechAnalyzer *RDSAPICSpeechAnalyzerCreate(uint64_t a1)
{
  v1 = [[RDSAPIObjCSpeechAnalyzer alloc] initWithLocale:a1];
  v2 = RXOSLog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerC initialized", v4, 2u);
  }

  return v1;
}

id RDSAPICSpeechAnalyzerCreateRecognitionBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = [a1 createRecognitionBufferWithDelegate:a5 task:a3];
  v6 = RXOSLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerC AudioBuffer initialized", v8, 2u);
  }

  return v5;
}

CFTypeRef RDSAPICSpeechAnalyzerCopyUserProfileData(void *a1)
{
  v1 = [a1 getUserProfileData];

  return CFRetain(v1);
}

CFTypeRef RDSAPICSpeechAnalyzerCopyJitProfileData(void *a1)
{
  v1 = [a1 getJitProfileData];

  return CFRetain(v1);
}

id sub_10000DEE4(uint64_t a1)
{
  v2 = RXOSLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Some client active did change  = %@", &v5, 0xCu);
  }

  return [*(a1 + 40) startRecording:0];
}

id sub_10000E1AC(uint64_t a1)
{
  v2 = RXOSLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl:Call started ringing = %@", &v5, 0xCu);
  }

  return [*(a1 + 40) startRecording:1];
}

id sub_10000E260(uint64_t a1)
{
  v2 = RXOSLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl:Call disconnected = %@", &v5, 0xCu);
  }

  return [*(a1 + 40) startRecording:0];
}

void sub_10000E498(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL rd_userprofile_util::doesSupportCategory(void *__s)
{
  v1 = __s;
  v2 = *(__s + 23);
  if (v2 < 0)
  {
    v2 = __s[1];
    if (!v2)
    {
      return 0;
    }

    v1 = *__s;
  }

  else if (!*(__s + 23))
  {
    return 0;
  }

  if (v2 >= 10)
  {
    v3 = v1 + v2;
    v4 = v1;
    do
    {
      v5 = memchr(v4, 66, v2 - 9);
      if (!v5)
      {
        break;
      }

      if (*v5 == 0x4C6E49746C697542 && *(v5 + 4) == 11853)
      {
        return v5 != v3 && v5 - v1 != -1;
      }

      v4 = v5 + 1;
      v2 = v3 - v4;
    }

    while (v3 - v4 >= 10);
  }

  return 0;
}

BOOL rd_userprofile_util::doesSupportProfile(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  if ((v1 & 0x80000000) == 0 || v2 != 31)
  {
    if (v1 < 0)
    {
      if (v2 != 20)
      {
        goto LABEL_22;
      }

      v7 = *a1;
    }

    else
    {
      v7 = a1;
      if (v1 != 20)
      {
        return 0;
      }
    }

    v8 = *v7 ^ 0x4C6E49746C697542 | v7[1] ^ 0x776F646E69572E4DLL | *(v7 + 4) ^ 0x6D657449;
    v6 = v8 == 0;
    if (!v8 || (v1 & 0x80000000) == 0)
    {
      return v6;
    }

LABEL_22:
    if (v2 == 23)
    {
      return **a1 == 0x4C6E49746C697542 && *(*a1 + 8) == 0x6D6F747375432E4DLL && *(*a1 + 15) == 0x646E616D6D6F436DLL;
    }

    return 0;
  }

  return **a1 == 0x4C6E49746C697542 && *(*a1 + 8) == 0x6863746977532E4DLL && *(*a1 + 16) == 0x6C707041656C6261 && *(*a1 + 23) == 0x6E6F69746163696CLL;
}

__CFString *rd_userprofile_util::nonTerminalForProfile(unint64_t **a1)
{
  v1 = *(a1 + 23);
  v2 = a1[1];
  if (v1 < 0 && v2 == 31)
  {
    if (**a1 ^ 0x4C6E49746C697542 | (*a1)[1] ^ 0x6863746977532E4DLL | (*a1)[2] ^ 0x6C707041656C6261 | *(*a1 + 23) ^ 0x6E6F69746163696CLL)
    {
      return 0;
    }

    else
    {
      return kRDProfileNonTerminalAppName[0];
    }
  }

  if ((v1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (v1 != 20)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (v2 == 20)
  {
    v4 = *a1;
LABEL_11:
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 4);
    if (v5 == 0x4C6E49746C697542 && v6 == 0x776F646E69572E4DLL && v7 == 1835365449)
    {
      return kRDProfileNonTerminalInline[0];
    }
  }

  v3 = 0;
  if (v1 < 0 && v2 == 23)
  {
    v10 = *a1;
    v11 = 0x4275696C74496E4CLL;
    v12 = bswap64(**a1);
    if (v12 == 0x4275696C74496E4CLL && (v11 = 0x4D2E437573746F6DLL, v12 = bswap64(v10[1]), v12 == 0x4D2E437573746F6DLL) && (v11 = 0x6D436F6D6D616E64, v12 = bswap64(*(v10 + 15)), v12 == 0x6D436F6D6D616E64))
    {
      v13 = 0;
    }

    else if (v12 < v11)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return kRDProfileNonTerminalUnknown[0];
    }
  }

  return v3;
}

__CFString *rd_userprofile_util::wordTagForProfile(unint64_t **a1)
{
  v1 = *(a1 + 23);
  v2 = a1[1];
  if (v1 < 0 && v2 == 31)
  {
    if (**a1 ^ 0x4C6E49746C697542 | (*a1)[1] ^ 0x6863746977532E4DLL | (*a1)[2] ^ 0x6C707041656C6261 | *(*a1 + 23) ^ 0x6E6F69746163696CLL)
    {
      return 0;
    }

    else
    {
      return kRDProfileWordTagAppName[0];
    }
  }

  if ((v1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (v1 != 20)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (v2 == 20)
  {
    v4 = *a1;
LABEL_11:
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 4);
    if (v5 == 0x4C6E49746C697542 && v6 == 0x776F646E69572E4DLL && v7 == 1835365449)
    {
      return kRDProfileWordTagJustInTime[0];
    }
  }

  v3 = 0;
  if (v1 < 0 && v2 == 23)
  {
    v10 = *a1;
    v11 = 0x4275696C74496E4CLL;
    v12 = bswap64(**a1);
    if (v12 == 0x4275696C74496E4CLL && (v11 = 0x4D2E437573746F6DLL, v12 = bswap64(v10[1]), v12 == 0x4D2E437573746F6DLL) && (v11 = 0x6D436F6D6D616E64, v12 = bswap64(*(v10 + 15)), v12 == 0x6D436F6D6D616E64))
    {
      v13 = 0;
    }

    else if (v12 < v11)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return kRDProfileWordTagUnknownFirst;
    }
  }

  return v3;
}

uint64_t RDQSRResultObject::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  return a1;
}

uint64_t RDQSRResult::RDQSRResult(uint64_t a1, uint64_t a2, CFStringRef theString, int a4, uint64_t a5, CFLocaleRef *a6)
{
  *a1 = off_1000FE330;
  *(a1 + 8) = 0;
  Copy = CFStringCreateCopy(0, theString);
  *(a1 + 32) = 0u;
  *(a1 + 24) = Copy;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a6;
  *(a1 + 104) = a5;
  if (a4 >= 15)
  {
    v13 = 15;
  }

  else
  {
    v13 = a4;
  }

  *(a1 + 112) = v13;
  *(a1 + 120) = a2;
  RDQSRResult::tokenSausageVecFromCFString(theString, a6, v27);
  if (RXLogServerResults())
  {
    sub_1000C1D0C(v27, v14);
  }

  RXIsLocaleWithNoSpaceInPostITN();
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v28[0] = off_1000FE390;
  v28[1] = a1;
  v28[3] = v28;
  sub_1000C297C(v27, &v24);
  v15 = v24;
  v24 = 0;
  v16 = *(a1 + 56);
  *(a1 + 56) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
    v17 = v24;
    v24 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  sub_100017A48(v28);
  sub_10006F7E4(&v25, &v24);
  sub_100075AE4(*(a1 + 56), v24, &v23);
  v18 = v23;
  v23 = 0;
  v19 = *(a1 + 64);
  *(a1 + 64) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = v23;
    v23 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  if (RXLogServerGrammar())
  {
    sub_10007815C(*(a1 + 56), "result.fst");
  }

  v21 = v24;
  v24 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_100017598(&v25, v26[0]);
  v25 = v27;
  sub_100017524(&v25);
  return a1;
}

void sub_10000F1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, char *a13, uint64_t a14, uint64_t a15)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_100017598(&a12, a13);
  a12 = &a15;
  sub_100017524(&a12);
  a15 = v16 + 40;
  sub_1000174D0(&a15);
  v18 = *(v15 + 64);
  *(v15 + 64) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v15 + 56);
  *(v15 + 56) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  a15 = v16;
  sub_1000174D0(&a15);
  _Unwind_Resume(a1);
}

void RDQSRResult::tokenSausageVecFromCFString(const __CFString *a2@<X1>, CFLocaleRef *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (RXIsLocaleWithNoSpaceInPostITN())
  {
    v6 = sub_1000C0F54(a3, a2);
  }

  else
  {
    v6 = sub_1000C0D88(a3, a2);
  }

  v7 = v6;
  if (CFArrayGetCount(v6) > 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
    sub_1000B9AE4(ValueAtIndex, 0, v9);
    operator new();
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t RDQSRResult::RDQSRResult(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  *a1 = off_1000FE330;
  *(a1 + 8) = a4;
  *(a1 + 72) = 0u;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = a8;
  *(a1 + 104) = a7;
  if (a6 >= 15)
  {
    v10 = 15;
  }

  else
  {
    v10 = a6;
  }

  *(a1 + 112) = v10;
  *(a1 + 120) = a2;
  RDQSRResult::tokenSausageVecFromCFTokenSausage(a3, a9, v24);
  if (RXLogServerResults())
  {
    sub_1000C1D0C(v24, v11);
  }

  RXIsLocaleWithNoSpaceInPostITN();
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v25[0] = off_1000FE420;
  v25[1] = a1;
  v25[3] = v25;
  sub_1000C297C(v24, &v21);
  v12 = v21;
  v21 = 0;
  v13 = *(a1 + 56);
  *(a1 + 56) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  sub_100017A48(v25);
  sub_10006F7E4(&v22, &v21);
  sub_100075AE4(*(a1 + 56), v21, &v20);
  v15 = v20;
  v20 = 0;
  v16 = *(a1 + 64);
  *(a1 + 64) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
    v17 = v20;
    v20 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  if (RXLogServerGrammar())
  {
    sub_10007815C(*(a1 + 56), "result.fst");
    sub_10007815C(*(a1 + 64), "result_edit.fst");
  }

  v18 = v21;
  v21 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sub_100017598(&v22, v23[0]);
  v22 = v24;
  sub_100017524(&v22);
  return a1;
}

void sub_10000F808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, char *a13, uint64_t a14, uint64_t a15)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_100017598(&a12, a13);
  a12 = &a15;
  sub_100017524(&a12);
  sub_1000174D0(&a15);
  v17 = *(v15 + 64);
  *(v15 + 64) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(v15 + 56);
  *(v15 + 56) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  a15 = v15 + 32;
  sub_1000174D0(&a15);
  _Unwind_Resume(a1);
}

CFIndex RDQSRResult::tokenSausageVecFromCFTokenSausage@<X0>(const __CFArray *a2@<X1>, int a3@<W3>, void **a4@<X8>)
{
  idx = 0;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  while (1)
  {
    result = CFArrayGetCount(a2);
    if (result <= idx)
    {
      return result;
    }

    memset(v33, 0, sizeof(v33));
    ValueAtIndex = CFArrayGetValueAtIndex(a2, idx);
    Count = CFArrayGetCount(ValueAtIndex);
    if (Count >= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = Count;
    }

    if (!a3)
    {
      v6 = Count;
    }

    v23 = v6;
    if (v6 >= 1)
    {
      v7 = 0;
      do
      {
        v25 = v7;
        v26 = CFArrayGetValueAtIndex(ValueAtIndex, v7);
        v8 = 0;
        memset(v32, 0, sizeof(v32));
        while (v8 < CFArrayGetCount(v26))
        {
          v9 = CFArrayGetValueAtIndex(v26, v8);
          TokenName = RDASRWSpeechRecognitionTokenGetTokenName(v9);
          sub_1000B9AE4(TokenName, 0, &v31);
          v11 = RXLocalizedStringForSpacebar();
          if (v11 && !v8 && CFStringCompare(TokenName, v11, 0) == kCFCompareEqualTo)
          {
            std::string::assign(&v31, " ");
          }

          if ((RXIsLocaleWithNoSpaceInPostITN() & 1) == 0)
          {
            RDASRWSpeechRecognitionTokenHasSpaceAfter(v9);
          }

          if (!RXIsLocaleWithNoSpaceInPostITN())
          {
            RDASRWSpeechRecognitionTokenGetStart(v9);
            RDASRWSpeechRecognitionTokenGetEnd(v9);
            RDASRWSpeechRecognitionTokenGetSilenceStart(v9);
            RDASRWSpeechRecognitionTokenGetConfidence(v9);
            operator new();
          }

          v12 = RDASRWSpeechRecognitionTokenGetTokenName(v9);
          sub_1000B9AE4(v12, 0, __p);
          v13 = sub_1000C1200(__p);
          v14 = v13;
          if (v30 < 0)
          {
            operator delete(__p[0]);
            if (v14)
            {
LABEL_21:
              RDASRWSpeechRecognitionTokenGetStart(v9);
              RDASRWSpeechRecognitionTokenGetEnd(v9);
              RDASRWSpeechRecognitionTokenGetSilenceStart(v9);
              RDASRWSpeechRecognitionTokenGetConfidence(v9);
              operator new();
            }
          }

          else if (v13)
          {
            goto LABEL_21;
          }

          RDASRWSpeechRecognitionTokenGetEnd(v9);
          RDASRWSpeechRecognitionTokenGetStart(v9);
          if (CFStringGetLength(v12) > 0)
          {
            RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v12, 0);
            v15 = CFStringCreateWithSubstring(0, v12, RangeOfComposedCharactersAtIndex);
            sub_1000B9AE4(v15, 0, v27);
            v16 = RXVeryVerbose();
            if (v16)
            {
              v17 = RXOSLog(v16);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v18 = v27;
                if (v28 < 0)
                {
                  v18 = v27[0];
                }

                *buf = 136315138;
                *&buf[4] = v18;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "result phrase tokens = %s", buf, 0xCu);
              }
            }

            RDASRWSpeechRecognitionTokenGetStart(v9);
            CFStringGetLength(v12);
            RDASRWSpeechRecognitionTokenGetEnd(v9);
            CFStringGetLength(v12);
            CFStringGetLength(v12);
            RDASRWSpeechRecognitionTokenGetSilenceStart(v9);
            RDASRWSpeechRecognitionTokenGetConfidence(v9);
            operator new();
          }

          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          ++v8;
        }

        LOBYTE(v27[0]) = 0;
        memset(buf, 0, sizeof(buf));
        v35 = 0;
        if (RXIsLocaleWithSpecialHyphenHandling())
        {
          RDQSRResult::fillAlternativeTokenVec(v32, buf, v27);
        }

        sub_100010500(v33, v32);
        if (LOBYTE(v27[0]) == 1)
        {
          sub_100010500(v33, buf);
        }

        v31.__r_.__value_.__r.__words[0] = buf;
        sub_1000174D0(&v31);
        *buf = v32;
        sub_1000174D0(buf);
        v7 = v25 + 1;
      }

      while (v25 + 1 != v23);
    }

    sub_100010640(a4, v33);
    *buf = v33;
    sub_100017D7C(buf);
    ++idx;
  }
}

void sub_100010020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t *a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  a40 = &a43;
  sub_100017D7C(&a40);
  a43 = a10;
  sub_100017524(&a43);
  _Unwind_Resume(a1);
}

void RDQSRResult::~RDQSRResult(RDQSRResult *this)
{
  *this = off_1000FE330;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v5 = (this + 72);
  sub_1000174D0(&v5);
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = (this + 32);
  sub_1000174D0(&v5);
}

{
  RDQSRResult::~RDQSRResult(this);

  operator delete();
}

uint64_t RDQSRResult::GetResultToken(uint64_t a1, const void **a2, int a3)
{
  v6 = strlen("<eps>");
  v7 = v6;
  v8 = *(a2 + 23);
  if (v8 < 0)
  {
    if (v6 != a2[1])
    {
      if (a3 == 2)
      {
        v10 = (a1 + 32);
      }

      else
      {
        v10 = (a1 + 72);
      }

      goto LABEL_19;
    }

    if (v6 == -1)
    {
      sub_100016F2C();
    }

    v9 = *a2;
  }

  else
  {
    v9 = a2;
    if (v7 != v8)
    {
      if (a3 == 2)
      {
        v10 = (a1 + 32);
      }

      else
      {
        v10 = (a1 + 72);
      }

      return *(*v10 + 8 * atoi(a2));
    }
  }

  if (!memcmp(v9, "<eps>", v7))
  {
    return 0;
  }

  if (a3 == 2)
  {
    v10 = (a1 + 32);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_19:
      a2 = *a2;
    }
  }

  else
  {
    v10 = (a1 + 72);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }
  }

  return *(*v10 + 8 * atoi(a2));
}

uint64_t *sub_100010400(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_100017658();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      sub_100017670(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1000176B8(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void **sub_100010500(void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100017658();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_100017DF0(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_100017E48(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void **sub_100010640(void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100017658();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_100017DF0(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_100017ED0(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void RDQSRResult::fillAlternativeTokenVec(__int128 ***a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = *v3;
    if (*(*v3 + 23) < 0)
    {
      sub_1000732A4(__dst, *v5, *(v5 + 1));
    }

    else
    {
      v6 = *v5;
      v13 = *(v5 + 2);
      *__dst = v6;
    }

    if (v13 >= 0)
    {
      v7 = __dst;
    }

    else
    {
      v7 = __dst[0];
    }

    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
    CFStringCreateMutableCopy(0, 0, v8);
    v11 = 0;
    v9 = RXReplaceHyphensWithSpace();
    sub_1000B9AE4(v9, 0, v10);
    if (v11 >= 1)
    {
      *a3 = 1;
    }

    operator new();
  }
}

void RDQSRResult::PrefixMatch(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(byte_10010E480, memory_order_acquire) & 1) == 0)
  {
    sub_1000C8FFC();
  }

  operator new();
}

void sub_100010FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_10001866C(v39 - 128);
  sub_100017F58((v39 - 176));
  _Unwind_Resume(a1);
}

uint64_t RDQSRResult::isAdlibOnly(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (a2[1] == *a2)
  {
LABEL_32:
    v18 = 0;
    return v18 & 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    sub_100016D94(__s1, (v3 + v6));
    v10 = strlen("<eps>");
    v11 = v10;
    if ((v23 & 0x8000000000000000) != 0)
    {
      if (v10 != __s1[1])
      {
        goto LABEL_10;
      }

      if (v10 == -1)
      {
        sub_100016F2C();
      }

      v12 = __s1[0];
    }

    else
    {
      if (v10 != v23)
      {
        goto LABEL_10;
      }

      v12 = __s1;
    }

    if (!memcmp(v12, "<eps>", v11))
    {
      goto LABEL_24;
    }

LABEL_10:
    if ((v25 & 0x8000000000000000) != 0)
    {
      if (v11 == __p[1])
      {
        if (v11 == -1)
        {
          sub_100016F2C();
        }

        v14 = __p[0];
        if (!memcmp(__p[0], "<eps>", v11))
        {
LABEL_24:
          v17 = 0;
          goto LABEL_25;
        }

        v13 = *(a3 + 16);
      }

      else
      {
        v13 = *(a3 + 16);
        v14 = __p[0];
      }
    }

    else
    {
      if (v11 == v25 && !memcmp(__p, "<eps>", v11))
      {
        goto LABEL_24;
      }

      v13 = *(a3 + 16);
      v14 = __p;
    }

    sub_1000113AC(&__str, v14);
    v21 = std::stoull(&__str, 0, 10);
    v26 = &v21;
    v15 = sub_100018774(v13, &v21, &unk_1000D0933, &v26)[5];
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (xpc_get_type(v15) == &_xpc_type_dictionary)
    {
      int64 = xpc_dictionary_get_int64(v15, kRDKeyObjectType);
      v7 |= int64 != 13;
      v8 |= int64 == 13;
    }

    v17 = 1;
LABEL_25:
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(__s1[0]);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_32;
    }

    ++v9;
    v3 = *a2;
    v6 += 48;
  }

  while (v9 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  v18 = (v7 ^ 1) & v8;
  return v18 & 1;
}

void *sub_1000113AC(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100016CB8();
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

void RDQSRResult::Match()
{
  if ((atomic_load_explicit(byte_10010E488, memory_order_acquire) & 1) == 0)
  {
    sub_1000C9054();
  }

  operator new();
}

void sub_10001200C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  *(v39 - 216) = v38;
  sub_100016FD4((v39 - 216));
  *(v39 - 208) = &a31;
  sub_100016FD4((v39 - 208));
  sub_100018CD4(&a34, 0);
  a31 = &a35;
  sub_100016FD4(&a31);
  a35 = a13;
  sub_1000186EC(&a35);
  sub_100017F58(va);
  _Unwind_Resume(a1);
}

uint64_t RDQSRResult::calculateMode(uint64_t a1, size_t *a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = *a2;
  if (*(a3 + 24) != 1)
  {
    v47 = 2;
    goto LABEL_104;
  }

  v64 = a2;
  v68 = a2[1];
  if (v6 == v68)
  {
    LOBYTE(v8) = 0;
    v66 = 2;
    v65 = 1;
    goto LABEL_101;
  }

  v8 = 0;
  v9 = 0;
  v65 = 1;
  v66 = 2;
  while (1)
  {
    v8 &= v9 ^ 1;
    v10 = strlen("<eps>");
    v11 = v10;
    v12 = *(v6 + 23);
    if (v12 < 0)
    {
      if (v10 != *(v6 + 8))
      {
        goto LABEL_11;
      }

      if (v10 == -1)
      {
        sub_100016F2C();
      }

      v13 = *v6;
    }

    else
    {
      v13 = v6;
      if (v11 != v12)
      {
        goto LABEL_11;
      }
    }

    if (!memcmp(v13, "<eps>", v11))
    {
      v48 = a4;
      goto LABEL_100;
    }

LABEL_11:
    v14 = (v6 + 24);
    v15 = *(v6 + 47);
    if (v15 < 0)
    {
      break;
    }

    v16 = (v6 + 24);
    if (v11 == v15)
    {
      goto LABEL_17;
    }

LABEL_18:
    v17 = v6;
    if ((v12 & 0x80000000) != 0)
    {
      v17 = *v6;
    }

    v18 = atoi(v17);
    if ((v15 & 0x80000000) != 0)
    {
      v14 = *v14;
    }

    v19 = *(*(a1 + 72) + 8 * v18);
    v20 = *(a3 + 16);
    v21 = sub_1000113AC(buf, v14);
    __dst[0] = std::stoull(v21, 0, 10);
    *__p = __dst;
    v22 = sub_100018774(v20, __dst, &unk_1000D0933, __p)[5];
    if (SHIBYTE(v73) < 0)
    {
      operator delete(*buf);
    }

    type = xpc_get_type(v22);
    v24 = type;
    if (type != &_xpc_type_dictionary)
    {
      v25 = RXOSLog(type);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        if (*(v19 + 23) < 0)
        {
          sub_1000732A4(buf, *v19, *(v19 + 1));
        }

        else
        {
          v26 = *v19;
          v73 = *(v19 + 2);
          *buf = v26;
        }

        v33 = buf;
        if (v73 < 0)
        {
          v33 = *buf;
        }

        *__p = 136315394;
        *&__p[4] = v33;
        *&__p[12] = 2112;
        *&__p[14] = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "API misuse for token %s : XPC_TYPE_DICTIONARY expected, passed %@ ", __p, 0x16u);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_94;
    }

    int64 = xpc_dictionary_get_int64(v22, kRDKeyObjectType);
    if (int64 != 12)
    {
      if (*(a3 + 25) == 1 && int64 == 13)
      {
        if (*(v19 + 23) < 0)
        {
          sub_1000732A4(buf, *v19, *(v19 + 1));
        }

        else
        {
          v32 = *v19;
          v73 = *(v19 + 2);
          *buf = v32;
        }

        if (sub_1000C1120(buf))
        {
          v45 = 1;
        }

        else
        {
          if (*(v19 + 23) < 0)
          {
            sub_1000732A4(__p, *v19, *(v19 + 1));
          }

          else
          {
            v46 = *v19;
            *&__p[16] = *(v19 + 2);
            *__p = v46;
          }

          v45 = sub_1000C1190(__p);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(*buf);
        }

        v9 = 0;
        v65 = 0;
        v8 |= v45;
      }

      goto LABEL_94;
    }

    v28 = *(a1 + 96);
    string = xpc_dictionary_get_string(v22, kRDKeyText);
    sub_1000113AC(__p, string);
    sub_1000B98F8(v28, __p, buf);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v30 = *(a1 + 96);
    if (*(v19 + 23) < 0)
    {
      sub_1000732A4(__dst, *v19, *(v19 + 1));
    }

    else
    {
      v31 = *v19;
      v70 = *(v19 + 2);
      *__dst = v31;
    }

    sub_1000B98F8(v30, __dst, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v73 >= 0)
    {
      v34 = HIBYTE(v73);
    }

    else
    {
      v34 = *&buf[8];
    }

    v35 = __p[23];
    if (__p[23] < 0)
    {
      v35 = *&__p[8];
    }

    if (v34 == v35)
    {
      v36 = v73 >= 0 ? buf : *buf;
      v37 = __p[23] >= 0 ? __p : *__p;
      if (!memcmp(v36, v37, v34))
      {
        goto LABEL_76;
      }
    }

    sub_1000B9C30(*(a1 + 96), __p, v34);
    if (v73 >= 0)
    {
      v38 = HIBYTE(v73);
    }

    else
    {
      v38 = *&buf[8];
    }

    v39 = HIBYTE(v70);
    v40 = SHIBYTE(v70);
    if (v70 < 0)
    {
      v39 = __dst[1];
    }

    if (v38 == v39)
    {
      if (v73 >= 0)
      {
        v41 = buf;
      }

      else
      {
        v41 = *buf;
      }

      if (v70 >= 0)
      {
        v42 = __dst;
      }

      else
      {
        v42 = __dst[0];
      }

      v43 = memcmp(v41, v42, v38) != 0;
      if ((v40 & 0x80000000) == 0)
      {
LABEL_72:
        if (v43)
        {
          goto LABEL_73;
        }

        goto LABEL_76;
      }
    }

    else
    {
      v43 = 1;
      if ((SHIBYTE(v70) & 0x80000000) == 0)
      {
        goto LABEL_72;
      }
    }

    operator delete(__dst[0]);
    if (v43)
    {
LABEL_73:
      v44 = 1;
      v66 = 1;
      goto LABEL_77;
    }

LABEL_76:
    v44 = 0;
    v9 = 1;
LABEL_77:
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(*buf);
    }

    if (v44)
    {

      goto LABEL_101;
    }

LABEL_94:

    v6 += 48;
    if (v6 == v68)
    {
      goto LABEL_101;
    }
  }

  if (v11 != *(v6 + 32))
  {
    goto LABEL_18;
  }

  if (v11 == -1)
  {
    sub_100016F2C();
  }

  v16 = *v14;
LABEL_17:
  if (memcmp(v16, "<eps>", v11))
  {
    goto LABEL_18;
  }

  v48 = a5;
LABEL_100:
  ++*v48;
  v66 = 1;
LABEL_101:
  result = 1;
  if (v65 & 1 | ((*(a3 + 25) & 1) == 0) | v8 & 1)
  {
    v47 = v66;
    if (v66 != 1)
    {
      a2 = v64;
      v6 = *v64;
LABEL_104:
      v50 = a2[1];
      if (v6 == v50)
      {
        return v47;
      }

      v67 = v47;
      v51 = (v6 + 24);
      while (2)
      {
        v52 = strlen("<eps>");
        v53 = v51[23];
        if ((v53 & 0x8000000000000000) == 0)
        {
          if (v52 != v53 || memcmp(v51, "<eps>", v52))
          {
            v54 = *(a3 + 16);
            v55 = v51;
            goto LABEL_115;
          }

LABEL_123:
          v61 = v51 + 24;
          v51 += 48;
          if (v61 == v50)
          {
            return v67;
          }

          continue;
        }

        break;
      }

      if (v52 == *(v51 + 1))
      {
        if (v52 == -1)
        {
          sub_100016F2C();
        }

        v55 = *v51;
        if (!memcmp(*v51, "<eps>", v52))
        {
          goto LABEL_123;
        }

        v54 = *(a3 + 16);
      }

      else
      {
        v54 = *(a3 + 16);
        v55 = *v51;
      }

LABEL_115:
      v56 = sub_1000113AC(buf, v55);
      __dst[0] = std::stoull(v56, 0, 10);
      *__p = __dst;
      v57 = sub_100018774(v54, __dst, &unk_1000D0933, __p)[5];
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*buf);
      }

      v58 = xpc_get_type(v57);
      v59 = v58;
      if (v58 == &_xpc_type_dictionary)
      {
        if (xpc_dictionary_get_int64(v57, kRDKeyObjectType) != 13)
        {

          return 0;
        }
      }

      else
      {
        v60 = RXOSLog(v58);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          *&buf[4] = v59;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "API misuse while calculating mode: XPC_TYPE_DICTIONARY expected, passed %@ ", buf, 0xCu);
        }
      }

      goto LABEL_123;
    }
  }

  return result;
}

void sub_100012A34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    sub_100003DD0(a1);
  }

  _Unwind_Resume(v31);
}

void sub_100012ADC()
{
  if (*(v0 - 105) < 0)
  {
    operator delete(*(v0 - 128));
  }

  _Unwind_Resume(v1);
}

id RDQSRResultModelBuilder::buildResult(RDQSRResultModelBuilder *this, int a2)
{
  v4 = xpc_array_create(0, 0);
  *(this + 58) = 0;
  if (a2 < 1)
  {
LABEL_4:
    v8 = xpc_dictionary_create(0, 0, 0);
    v9 = v8;
    if (*(this + 12) == 1)
    {
      v10 = 15;
    }

    else
    {
      v10 = 14;
    }

    xpc_dictionary_set_int64(v8, kRDKeyObjectType, v10);
    xpc_dictionary_set_uint64(v9, kRDKeyResultID, v4);
    xpc_dictionary_set_value(v9, kRDKeyChildren, v4);
  }

  else
  {
    while (1)
    {
      *(this + 56) = 0;
      v5 = *(this + 9);
      *(this + 9) = 0;

      sub_10001A964(this + 80, *(this + 10));
      std::string::assign((this + 104), "");
      std::string::assign((this + 128), "");
      *(this + 20) = *(this + 19);
      *(this + 23) = *(this + 22);
      sub_100017598(this + 200, *(this + 26));
      *(this + 25) = this + 208;
      *(this + 26) = 0;
      *(this + 27) = 0;
      *(this + 28) = 0;
      sub_10001A8C4(this + 8, 0);
      RDQSRResultModelBuilder::AddResultNodeForCurrentResult(this);
      v6 = *(this + 9);
      if (!v6)
      {
        break;
      }

      xpc_array_append_value(v4, v6);
      v7 = *(this + 58) + 1;
      *(this + 58) = v7;
      if (v7 >= a2)
      {
        goto LABEL_4;
      }
    }

    v9 = 0;
  }

  return v9;
}

RDQSRResultModelBuilder **sub_100012C90(RDQSRResultModelBuilder **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    RDQSRResultModelBuilder::~RDQSRResultModelBuilder(v2);
    operator delete();
  }

  return a1;
}

uint64_t RDQSRResult::CopyMatchedCommandPriority(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v16 = v5;
    v6 = xpc_dictionary_get_value(v5, kRDKeyChildren);
    v7 = v6;
    if (v6 && (count = xpc_array_get_count(v6)) != 0)
    {
      v9 = 0;
      while (1)
      {
        v10 = xpc_array_get_value(v7, v9);
        uint64 = xpc_dictionary_get_uint64(v10, kRDKeyObjectID);
        p_uint64 = &uint64;
        v11 = sub_100018774(a3, &uint64, &unk_1000D0933, &p_uint64)[5];
        v12 = v11;
        if (v11)
        {
          v13 = xpc_dictionary_get_value(v11, kRDKeyCommandPriority);

          if (v13)
          {
            break;
          }
        }

        if (v10)
        {
          sub_100018FF0(v17, a3);
          v14 = RDQSRResult::CopyMatchedCommandPriority(a1, v10, v17);
          sub_100019334(v17, v17[1]);
          goto LABEL_13;
        }

        if (count == ++v9)
        {
          goto LABEL_9;
        }
      }

      v14 = xpc_dictionary_get_uint64(v12, kRDKeyCommandPriority);
LABEL_13:
    }

    else
    {
LABEL_9:
      v14 = 0;
    }

    v5 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100012E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  sub_100019334(&a11, a12);

  _Unwind_Resume(a1);
}

void RDQSRResult::constructPathVectorFromNBestForAdlib(uint64_t result@<X0>, __int128 ***a2@<X1>, void **a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    *a3 = v5;
    a3[1] = v4;
    a3[2] = a2[2];
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v7 = sub_100019D20(&v35, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
  memset(&v34, 0, sizeof(v34));
  v8 = v36;
  if (v35 == v36)
  {
    size = 0;
    v11 = 0;
  }

  else
  {
    v9 = v35 + 48;
    do
    {
      std::string::operator=(&v34, (v9 - 24));
      v7 = strlen("<eps>");
      v10 = v7;
      v11 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v7 != v34.__r_.__value_.__l.__size_)
        {
          break;
        }

        if (v7 == -1)
        {
          sub_100016F2C();
        }

        v12 = v34.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v7 != SHIBYTE(v34.__r_.__value_.__r.__words[2]))
        {
          break;
        }

        v12 = &v34;
      }

      v7 = memcmp(v12, "<eps>", v10);
      if (v7)
      {
        break;
      }

      v13 = v9 == v8;
      v9 += 48;
    }

    while (!v13);
    size = v34.__r_.__value_.__l.__size_;
  }

  if (v11 >= 0)
  {
    v15 = v11;
  }

  else
  {
    v15 = size;
  }

  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = strlen("<eps>");
  v17 = v16;
  if (v11 < 0)
  {
    if (v16 != size)
    {
      goto LABEL_27;
    }

    if (size == -1)
    {
      sub_100016F2C();
    }

    v18 = v34.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v16 != v11)
    {
      goto LABEL_27;
    }

    v18 = &v34;
  }

  v7 = memcmp(v18, "<eps>", v17);
  if (!v7)
  {
LABEL_30:
    v21 = RXOSLog(v7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "constructPathVectorFromNBestForAdlib: <eps> grammar found for adlib", __p, 2u);
    }

    *a3 = *a2;
    a3[2] = a2[2];
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    goto LABEL_43;
  }

LABEL_27:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (RXAutomationModeResult())
  {
    v19 = sub_1000C0D88(*(result + 96), *(result + 24));
    v31 = 0;
    v32 = 0;
    v33 = 0;
    if (CFArrayGetCount(v19) > 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
      sub_1000B9AE4(ValueAtIndex, 0, v30);
      CFArrayGetCount(v19);
      operator new();
    }

    sub_1000138D4(a3, &v31);
    if (v19)
    {
      CFRelease(v19);
    }

    __p[0] = &v31;
    sub_100019DA8(__p);
  }

  else
  {
    for (i = 0; i < CFArrayGetCount(*(result + 8)); ++i)
    {
      v23 = CFArrayGetValueAtIndex(*(result + 8), i);
      if (v23)
      {
        RDASRWSpeechRecognitionGetTokens(v23);
        v25 = v24;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        if (CFArrayGetCount(v24) > 0)
        {
          v26 = CFArrayGetValueAtIndex(v25, 0);
          TokenName = RDASRWSpeechRecognitionTokenGetTokenName(v26);
          sub_1000B9AE4(TokenName, 0, v30);
          RDASRWSpeechRecognitionTokenGetStart(v26);
          RDASRWSpeechRecognitionTokenGetEnd(v26);
          RDASRWSpeechRecognitionTokenGetSilenceStart(v26);
          RDASRWSpeechRecognitionTokenGetConfidence(v26);
          RDASRWSpeechRecognitionTokenHasSpaceAfter(v26);
          operator new();
        }

        sub_1000138D4(a3, &v31);
        __p[0] = &v31;
        sub_100019DA8(__p);
      }
    }
  }

LABEL_43:
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  __p[0] = &v35;
  sub_100019DA8(__p);
}

void sub_100013704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  a33 = a10;
  sub_100016FD4(&a33);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  __p = &a42;
  sub_100019DA8(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_100013890(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_1000138D4(void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100017658();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_100017DF0(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_100019EAC(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

uint64_t RDQSRResultLMNodeBuilder::RDQSRResultLMNodeBuilder(uint64_t a1, std::string::size_type *a2, uint64_t a3, void *a4)
{
  xdict = a4;
  sub_100019F34(a1, 1uLL);
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1;
  *(a1 + 128) = a3;
  *(a1 + 136) = a2;
  *(a1 + 148) = 0;
  v7 = *a1;
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  **a1 = 10;
  v8 = xpc_array_create(0, 0);
  v9 = *(*a1 + 32);
  *(*a1 + 32) = v8;

  uint64 = xpc_dictionary_get_uint64(xdict, kRDKeyObjectID);
  v11 = xpc_uint64_create(uint64);
  xpc_array_append_value(*(*a1 + 32), v11);
  ++*(*a1 + 4);
  buf.__r_.__value_.__r.__words[0] = 0;
  sub_100013E6C(a1 + 24, &buf);
  v31 = v11;
  *(a1 + 144) = 0;
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = 1;
    v15 = 1;
    while (1)
    {
      v16 = (v12 + 24);
      v17 = strlen("<eps>");
      v18 = *(v12 + 47);
      if (v18 < 0)
      {
        if (v17 != *(v12 + 32))
        {
          v16 = *v16;
          goto LABEL_16;
        }

        if (v17 == -1)
        {
          sub_100016F2C();
        }

        v16 = *v16;
      }

      else if (v17 != v18)
      {
        goto LABEL_16;
      }

      v19 = memcmp(v16, "<eps>", v17);
      if (!v19)
      {
        v20 = RXOSLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = v12;
          if (*(v12 + 23) < 0)
          {
            v21 = *v12;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Word Inserted : %s", &buf, 0xCu);
        }

        goto LABEL_29;
      }

LABEL_16:
      sub_1000113AC(&buf, v16);
      *(a1 + 88) = std::stoull(&buf, 0, 10);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        if ((v15 & 1) == 0)
        {
LABEL_20:
          v22 = *(a1 + 32) - *(a1 + 24);
          v23 = v22 >> 3;
          if (v14 >= (v22 >> 3))
          {
            v15 = 0;
          }

          else
          {
            v24 = (v22 >> 3);
            v25 = 8 * v14;
            do
            {
              *(a1 + 144) = v14;
              RDQSRResultLMNodeBuilder::EvaluateNextLMNode(a1, *(*(a1 + 24) + v25));
              if (v24 == (*(a1 + 32) - *(a1 + 24)) >> 3)
              {
                v27 = RXOSLog(v26);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Search failed!", &buf, 2u);
                }
              }

              ++v14;
              v25 += 8;
            }

            while (v23 != v14);
            v15 = 0;
            v14 = v23;
          }

          goto LABEL_29;
        }
      }

      else if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }

      RDQSRResultLMNodeBuilder::EvaluateLMNode(a1, 0);
      v15 = 0;
      *(a1 + 144) = 0;
LABEL_29:
      v12 += 48;
      if (v12 == v13)
      {
        goto LABEL_32;
      }
    }
  }

  v14 = 1;
LABEL_32:
  v28 = v14;
  for (i = *(a1 + 24); v14 < ((*(a1 + 32) - i) >> 3); v28 = v14)
  {
    if (RDQSRResultLMNodeBuilder::LMNodeIsTerminal(a1, *(i + 8 * v28)))
    {
      *(a1 + 148) = v14;
    }

    i = *(a1 + 24);
    ++v14;
  }

  return a1;
}

void sub_100013DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_10001A178(a9, *a10);
  sub_10001A12C((v22 + 6));
  v25 = *a12;
  if (*a12)
  {
    v22[4] = v25;
    operator delete(v25);
  }

  __p = v22;
  sub_10001A07C(&__p);

  _Unwind_Resume(a1);
}

void sub_100013E6C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100017658();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10001A1CC(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void RDQSRResultLMNodeBuilder::EvaluateLMNode(RDQSRResultLMNodeBuilder *this, uint64_t a2)
{
  v2 = a2;
  v4 = *this + 48 * a2;
  *v13 = *v4;
  v14 = *(v4 + 16);
  v15 = *(v4 + 24);
  v5 = *(v4 + 32);
  v16 = v5;
  v17 = *(v4 + 40);
  if (LOBYTE(v13[0]) > 0xBu)
  {
    if (LOBYTE(v13[0]) != 12)
    {
      if (LOBYTE(v13[0]) != 13)
      {
        goto LABEL_19;
      }

      if (!sub_10001A810(this + 6, &v14))
      {
        v18 = &v14;
        *(sub_100017048(this + 12, &v14, &unk_1000D0933, &v18) + 6) = v2;
      }
    }

    if (*(this + 11) == v14)
    {
      v18 = __PAIR64__(*(this + 36), v2);
      sub_100013E6C(this + 24, &v18);
    }
  }

  else
  {
    v6 = v5;
    if (LOBYTE(v13[0]) == 10)
    {
      if (!v5)
      {
LABEL_20:
        RDQSRResultLMNodeBuilder::EvaluateParentLMNode(this, *&v13[4], v13[3]);
        goto LABEL_21;
      }

      if (v13[2])
      {
        v10 = 0;
        do
        {
          uint64 = xpc_array_get_uint64(v6, v10);
          LMNode = RDQSRResultLMNodeBuilder::FindLMNode(this, v2, v10, 0, 0, uint64);
          RDQSRResultLMNodeBuilder::EvaluateLMNode(this, LMNode);
          ++v10;
        }

        while (v10 < v13[2]);
      }
    }

    else if (LOBYTE(v13[0]) == 11)
    {
      if (v5)
      {
        v7 = v13[2] == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        goto LABEL_20;
      }

      v8 = xpc_array_get_uint64(v5, 0);
      v9 = RDQSRResultLMNodeBuilder::FindLMNode(this, v2, 0, 0, 0, v8);
      RDQSRResultLMNodeBuilder::EvaluateLMNode(this, v9);
    }
  }

LABEL_19:
  if ((v13[0] & 0x400) != 0)
  {
    goto LABEL_20;
  }

LABEL_21:
}

void RDQSRResultLMNodeBuilder::EvaluateNextLMNode(RDQSRResultLMNodeBuilder *this, unsigned int a2)
{
  v3 = (*this + 48 * a2);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 1);
  v7 = *(v3 + 3);
  v8 = *(v3 + 2);
  v12 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = (v5 >> 3) & 1;
  if (v6 == 0xFFFF)
  {
    v10 = 0;
  }

  if (v4 == 13)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v4 == 12 && (v10 & 1) != 0)
  {
LABEL_8:
    LMNode = RDQSRResultLMNodeBuilder::FindLMNode(this, v8, v7, v6 + 1, v12, 0);
    RDQSRResultLMNodeBuilder::EvaluateLMNode(this, LMNode);
  }

LABEL_9:
  RDQSRResultLMNodeBuilder::EvaluateParentLMNode(this, v8, v7);
}

uint64_t RDQSRResultLMNodeBuilder::LMNodeIsTerminal(RDQSRResultLMNodeBuilder *this, unsigned int a2)
{
  v3 = (*this + 48 * a2);
  v4 = *v3;
  v5 = *(v3 + 3);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  if (v6)
  {
    v9 = (*this + 48 * v6);
    v10 = *v9;
    v11 = *(v9 + 2);
    v12 = v9[3];
    v13 = v9[4];
    if (v10 != 10)
    {
      if (v10 == 11)
      {
        v14 = v5 + 1;
        while (v14 < v11)
        {
          uint64 = xpc_array_get_uint64(v13, v14);
          LMNode = RDQSRResultLMNodeBuilder::FindLMNode(this, v6, v14++, 0, 0, uint64);
          if ((RDQSRResultLMNodeBuilder::LMNodeIsOptional(this, LMNode) & 1) == 0)
          {
            IsTerminal = 0;
            goto LABEL_11;
          }
        }
      }

      else
      {
        __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Daemon/RDQSRResult.mm", 1487, 0, @"LMNodeIsTerminal unexpected parent node type %d\n", v4);
      }
    }

    IsTerminal = RDQSRResultLMNodeBuilder::LMNodeIsTerminal(this, v6);
LABEL_11:
  }

  else
  {
    IsTerminal = 1;
  }

  return IsTerminal;
}

uint64_t RDQSRResultLMNodeBuilder::FindLMNode(uint64_t *a1, unsigned int a2, __int16 a3, __int16 a4, void *a5, uint64_t a6)
{
  v11 = a5;
  v26 = a6;
  v12 = *a1;
  *(v12 + 8) = a2;
  *(v12 + 6) = a3;
  *(v12 + 2) = a4;
  LODWORD(v21) = 0;
  v13 = sub_10001A214((a1 + 12), &v21);
  if (a1 + 13 == v13)
  {
    v23 = 0;
    v24 = 0;
    if (a2)
    {
      v15 = (*a1 + 48 * a2 + 40);
    }

    else
    {
      v15 = a1 + 16;
    }

    v16 = *v15;
    v25 = *v15;
    if (v11)
    {
      v17 = v11;
      v23 = v17;
    }

    else
    {
      v27 = &v26;
      v18 = sub_100018774(v16, &v26, &unk_1000D0933, &v27)[5];
      v17 = v18;
      v23 = v18;
      if (!v18)
      {
        LOWORD(v21) = 11;
        v24 = 0;
LABEL_13:
        WORD2(v21) = v18;
        DWORD2(v21) = a2;
        WORD3(v21) = a3;
        WORD1(v21) = a4;
        LODWORD(v27) = -1431655765 * ((a1[1] - *a1) >> 4);
        sub_100014600(a1, &v21);
        sub_10001A6E0(a1 + 12, &v27, &v27);
        v14 = v27;

        goto LABEL_14;
      }
    }

    LOBYTE(v21) = xpc_dictionary_get_int64(v17, kRDKeyObjectType);
    BYTE1(v21) = xpc_dictionary_get_uint64(v17, kRDKeyOptions);
    v19 = xpc_dictionary_get_value(v17, kRDKeyChildren);
    v24 = v19;
    uint64 = xpc_dictionary_get_uint64(v17, kRDKeyObjectID);
    if (v19)
    {
      LOWORD(v18) = xpc_array_get_count(v19);
    }

    else
    {
      LOWORD(v18) = 0;
    }

    goto LABEL_13;
  }

  v14 = *(v13 + 28);
LABEL_14:

  return v14;
}

uint64_t sub_100014600(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10001A368(a1, a2);
  }

  else
  {
    sub_10001A304(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void RDQSRResultLMNodeBuilder::EvaluateParentLMNode(RDQSRResultLMNodeBuilder *this, unsigned int a2, __int16 a3)
{
  if (!a2)
  {
    return;
  }

  v6 = (*this + 48 * a2);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  v11 = *(v6 + 3);
  v12 = *(v6 + 2);
  v20 = *(v6 + 3);
  v13 = *(v6 + 4);
  v14 = v13;
  v15 = (v8 >> 3) & 1;
  if (v9 == 0xFFFF)
  {
    v15 = 0;
  }

  if (v7 == 10)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v7 != 11)
  {
    __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Daemon/RDQSRResult.mm", 1463, 0, @"EvaluateParentLMNode unexpected node type %d\n", v7);
    goto LABEL_15;
  }

  v16 = a3 + 1;
  if (v10 <= v16)
  {
    if ((v15 & 1) == 0)
    {
LABEL_14:
      RDQSRResultLMNodeBuilder::EvaluateParentLMNode(this, v12, v11);
      goto LABEL_15;
    }

LABEL_13:
    LMNode = RDQSRResultLMNodeBuilder::FindLMNode(this, v12, v11, v9 + 1, v20, 0);
    RDQSRResultLMNodeBuilder::EvaluateLMNode(this, LMNode);
    goto LABEL_14;
  }

  uint64 = xpc_array_get_uint64(v13, v16);
  v18 = RDQSRResultLMNodeBuilder::FindLMNode(this, a2, v16, v9, 0, uint64);
  RDQSRResultLMNodeBuilder::EvaluateLMNode(this, v18);
LABEL_15:
}

uint64_t RDQSRResultLMNodeBuilder::LMNodeIsOptional(RDQSRResultLMNodeBuilder *this, unsigned int a2)
{
  v4 = (*this + 48 * a2);
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v8 = v4[3];
  v9 = v4[4];
  if ((v6 & 4) != 0)
  {
    goto LABEL_17;
  }

  if (v5 != 10)
  {
    if (v5 != 11)
    {
      IsOptional = 0;
      goto LABEL_19;
    }

    if (v7)
    {
      v10 = 0;
      v11 = v7 - 1;
      do
      {
        uint64 = xpc_array_get_uint64(v9, v10);
        LMNode = RDQSRResultLMNodeBuilder::FindLMNode(this, a2, v10, 0, 0, uint64);
        IsOptional = RDQSRResultLMNodeBuilder::LMNodeIsOptional(this, LMNode);
        if (!IsOptional)
        {
          break;
        }

        v15 = v11 == v10++;
      }

      while (!v15);
      goto LABEL_19;
    }

LABEL_17:
    IsOptional = 1;
    goto LABEL_19;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  v16 = 0;
  v17 = v7 - 1;
  do
  {
    v18 = xpc_array_get_uint64(v9, v16);
    v19 = RDQSRResultLMNodeBuilder::FindLMNode(this, a2, v16, 0, 0, v18);
    v20 = RDQSRResultLMNodeBuilder::LMNodeIsOptional(this, v19);
    IsOptional = v20;
    v15 = v17 == v16++;
    if (v15)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }
  }

  while (v21 != 1);
LABEL_19:

  return IsOptional;
}

void RDQSRResultLMNodeBuilder::~RDQSRResultLMNodeBuilder(RDQSRResultLMNodeBuilder *this)
{
  sub_10001A178(this + 96, *(this + 13));
  sub_10001A12C(this + 48);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  sub_10001A07C(&v3);
}

uint64_t RDQSRResultModelBuilder::RDQSRResultModelBuilder(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, int a6)
{
  v11 = *a3;
  v12 = a3[1];
  *a1 = a2;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  v13 = *(a3 + 23);
  v14 = a3[2];
  *(a1 + 64) = 0u;
  *(a1 + 24) = v14;
  *(a1 + 31) = v13;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 52) = a6;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_1000113AC((a1 + 128), "");
  *(a1 + 216) = 0;
  *(a1 + 208) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = a1 + 208;
  *(a1 + 232) = 0;
  return a1;
}

void sub_100014A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 127) < 0)
  {
    operator delete(*(v10 + 104));
  }

  a10 = v10 + 80;
  sub_10001A910(&a10);

  sub_10001A8C4(v11, 0);
  _Unwind_Resume(a1);
}

void RDQSRResultModelBuilder::AddResultNodeForCurrentResult(RDQSRResultModelBuilder *this)
{
  v1 = *(this + 58);
  if (v1 < 1 || *(this + 12) == 1)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 5) + 8) - **(this + 5)) >> 3) > v1)
    {
      operator new();
    }

    sub_100018FD8();
  }

  v2 = RXOSLog(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "ERROR: More than 1 result only allowed for close match results", v3, 2u);
  }
}

uint64_t RDQSRResultModelBuilder::GetResulTokenForIndex(RDQSRResultModelBuilder *this, unsigned int a2)
{
  v2 = *(this + 5);
  v3 = *(this + 58);
  if (0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 3) <= v3)
  {
    sub_100018FD8();
  }

  v4 = (*v2 + 24 * v3);
  if (0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 4) <= a2)
  {
    sub_100018FD8();
  }

  v5 = (*v4 + 48 * a2);
  v6 = *(this + 12);
  v7 = *this;

  return RDQSRResult::GetResultToken(v7, v5, v6);
}

void RDQSRResultModelBuilder::AddResultNode(RDQSRResultModelBuilder *a1, unsigned int *a2, unsigned int a3)
{
  v6 = a2[1];
  if (v6)
  {
    RDQSRResultModelBuilder::AddResultNode(a1, (*(*(a1 + 8) + 24) + 8 * v6), a3 - 1);
  }

  v7 = *a2;
  ResulTokenForIndex = RDQSRResultModelBuilder::GetResulTokenForIndex(a1, a3);

  RDQSRResultModelBuilder::AddResultNode(a1, v7, ResulTokenForIndex);
}

void RDQSRResultModelBuilder::EndOfResult(RDQSRResultModelBuilder *this)
{
  if (*(this + 56) == 1)
  {
    RDQSRResultModelBuilder::ProcessCurrentAdlib(this);
  }

  RDQSRResultModelBuilder::PropagateTimestamps(this, 0);
}

void RDQSRResultModelBuilder::AddResultNode(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v32 = a2;
  v5 = **(a1 + 64) + 48 * a2;
  if (*(a1 + 56) != 1 || *v5 != 13 || *(v5 + 2) == 0)
  {
    v8 = *(v5 + 8);
    if (v8)
    {
      v9 = *(a1 + 88);
      if (*(a1 + 80) == v9)
      {
        RDQSRResultModelBuilder::AddResultNode(a1, v8, 0);
      }

      else
      {
        if (*(a1 + 56))
        {
          RDQSRResultModelBuilder::ProcessCurrentAdlib(a1);
        }

        if (*(v9 - 24) != v8)
        {
          RDQSRResultModelBuilder::PushAncestors(a1, v8);
        }
      }
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    xdict[0] = xpc_dictionary_create(0, 0, 0);
    v10 = kRDKeyObjectType;
    int64 = xpc_dictionary_get_int64(*(v5 + 24), kRDKeyObjectType);
    xpc_dictionary_set_int64(xdict[0], v10, int64);
    v12 = kRDKeyObjectID;
    uint64 = xpc_dictionary_get_uint64(*(v5 + 24), kRDKeyObjectID);
    xpc_dictionary_set_uint64(xdict[0], v12, uint64);
    if (a3)
    {
      xpc_dictionary_set_uint64(xdict[0], kRDKeyStartTime, *(*a1 + 104) + (*(a3 + 24) * 1000.0));
      xpc_dictionary_set_uint64(xdict[0], kRDKeyEndTime, *(*a1 + 104) + (*(a3 + 32) * 1000.0));
    }

    v31 = 0;
    if ((*v5 & 0xFE) == 0xA)
    {
      v14 = xpc_array_create(0, 0);
      v15 = v31;
      v31 = v14;

      xpc_dictionary_set_value(xdict[0], kRDKeyChildren, v14);
    }

    if (*(v5 + 8))
    {
      xpc_array_append_value(*(*(a1 + 88) - 8), xdict[0]);
    }

    else
    {
      objc_storeStrong((a1 + 72), xdict[0]);
    }

    if (v31)
    {
      v16 = *(a1 + 88);
      if (v16 < *(a1 + 96))
      {
LABEL_36:
        v18 = xdict[0];
        v19 = v31;
        *v16 = v32;
        *(v16 + 8) = v18;
        *(v16 + 16) = v19;
        v17 = v16 + 24;
        goto LABEL_37;
      }
    }

    else
    {
      if (*v5 != 13)
      {
        goto LABEL_38;
      }

      *(a1 + 56) = 1;
      if (*(a1 + 127) < 0)
      {
        **(a1 + 104) = 0;
        *(a1 + 112) = 0;
      }

      else
      {
        *(a1 + 104) = 0;
        *(a1 + 127) = 0;
      }

      *(a1 + 224) = 0;
      if (*(a1 + 151) < 0)
      {
        **(a1 + 128) = 0;
        *(a1 + 136) = 0;
      }

      else
      {
        *(a1 + 128) = 0;
        *(a1 + 151) = 0;
      }

      *(a1 + 160) = *(a1 + 152);
      *(a1 + 184) = *(a1 + 176);
      v16 = *(a1 + 88);
      if (v16 < *(a1 + 96))
      {
        goto LABEL_36;
      }
    }

    v17 = sub_10001A9C0((a1 + 80), &v32, xdict, &v31);
LABEL_37:
    *(a1 + 88) = v17;
LABEL_38:

    if ((*(a1 + 56) & 1) == 0)
    {
      return;
    }
  }

  if (a3)
  {
    if (*(a3 + 23) < 0)
    {
      sub_1000732A4(xdict, *a3, *(a3 + 8));
    }

    else
    {
      *xdict = *a3;
      v30 = *(a3 + 16);
    }

    if (v30 >= 0)
    {
      v21 = xdict;
    }

    else
    {
      v21 = xdict[0];
    }

    if (v30 >= 0)
    {
      v22 = HIBYTE(v30);
    }

    else
    {
      v22 = xdict[1];
    }

    std::string::append((a1 + 104), v21, v22);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(xdict[0]);
    }

    if (*(a3 + 23) < 0)
    {
      sub_1000732A4(xdict, *a3, *(a3 + 8));
    }

    else
    {
      *xdict = *a3;
      v30 = *(a3 + 16);
    }

    if (v30 >= 0)
    {
      v23 = xdict;
    }

    else
    {
      v23 = xdict[0];
    }

    if (v30 >= 0)
    {
      v24 = HIBYTE(v30);
    }

    else
    {
      v24 = xdict[1];
    }

    v25 = std::string::append((a1 + 128), v23, v24);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(xdict[0]);
    }

    if (*(a3 + 56) == 1)
    {
      v25 = RXIsLocaleWithNoSpaceInPostITN();
      if ((v25 & 1) == 0)
      {
        std::string::push_back((a1 + 128), 32);
      }
    }

    v26 = *(a1 + 224);
    v27 = *(v5 + 16);
    if (!v26 || v26 == v27)
    {
      *(a1 + 224) = v27;
    }

    else
    {
      v28 = RXOSLog(v25);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(xdict[0]) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Multiple adlib IDs, some data will be lost", xdict, 2u);
      }
    }

    std::string::push_back((a1 + 104), 0);
    xdict[0] = (*(*a1 + 104) + (*(a3 + 24) * 1000.0));
    sub_100015764((a1 + 152), xdict);
    xdict[0] = (*(*a1 + 104) + (*(a3 + 32) * 1000.0));
    sub_100015764((a1 + 176), xdict);
  }

  else
  {
    v20 = RXOSLog(a1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(xdict[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "TokenPtr is NULL for adlib mode!", xdict, 2u);
    }
  }
}

void sub_1000152C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001561C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v23 - 56) = v22;
  sub_100017524((v23 - 56));
  __p = &a9;
  sub_100017524(&__p);
  _Unwind_Resume(a1);
}

void RDQSRResultModelBuilder::PushAncestors(RDQSRResultModelBuilder *this, unsigned int a2)
{
  v4 = *(this + 10);
  v5 = (this + 80);
  v6 = *(this + 11) - v4;
  if (v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = -v7;
    v9 = 1;
    while (1)
    {
      v10 = *v4;
      v4 += 6;
      if (v10 == a2)
      {
        break;
      }

      ++v9;
      if (v8 + v9 == 1)
      {
        goto LABEL_7;
      }
    }

    RDQSRResultModelBuilder::PropagateTimestamps(this, v9);

    sub_1000159DC(v5, v9);
  }

  else
  {
LABEL_7:
    RDQSRResultModelBuilder::PushAncestors(this, *(**(this + 8) + 48 * a2 + 8));

    RDQSRResultModelBuilder::AddResultNode(this, a2, 0);
  }
}

void sub_100015764(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100017658();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10001A1CC(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void RDQSRResultModelBuilder::PropagateTimestamps(RDQSRResultModelBuilder *this, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 3);
  if (v2 > a2)
  {
    v5 = 8 * ((*(this + 11) - *(this + 10)) >> 3);
    do
    {
      v6 = *(*(this + 10) + v5 - 8);
      v7 = v6;
      if (v6)
      {
        count = xpc_array_get_count(v6);
        if (count)
        {
          v9 = *(*(this + 10) + v5 - 16);
          if (!xpc_dictionary_get_uint64(v9, kRDKeyStartTime))
          {
            v10 = kRDKeyStartTime;
            v11 = xpc_array_get_value(v7, 0);
            uint64 = xpc_dictionary_get_uint64(v11, kRDKeyStartTime);
            xpc_dictionary_set_uint64(v9, v10, uint64);
          }

          if (!xpc_dictionary_get_uint64(v9, kRDKeyEndTime))
          {
            v13 = kRDKeyEndTime;
            v14 = xpc_array_get_value(v7, count - 1);
            v15 = xpc_dictionary_get_uint64(v14, kRDKeyEndTime);
            xpc_dictionary_set_uint64(v9, v13, v15);
          }
        }
      }

      --v2;

      v5 -= 24;
    }

    while (v2 > a2);
  }
}

void sub_1000159DC(uint64_t *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10001ADC0(result, v4);
  }

  else if (!v3)
  {
    sub_10001A964(result, *result + 24 * a2);
  }
}

id RDQSRResultModelBuilder::xpcObjectFromTokenSausageVec(_DWORD *a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = xpc_array_create(0, 0);
    v5 = *a2;
    if (a2[1] != *a2)
    {
      v29 = v4;
      v6 = 0;
      v28 = a2;
      do
      {
        v37[0] = 0;
        v37[1] = 0;
        v36 = v37;
        v31 = xpc_dictionary_create(0, 0, 0);
        xarray = xpc_array_create(0, 0);
        v30 = v6;
        v7 = (v5 + 24 * v6);
        v8 = *v7;
        if (v7[1] == *v7)
        {
          v11 = 0;
          v10 = 0;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          do
          {
            sub_1000113AC(&v35, "");
            v12 = (v8 + 24 * v9);
            v13 = *v12;
            if (v12[1] != *v12)
            {
              v14 = 0;
              do
              {
                v15 = *(v13 + 8 * v14);
                if (*(v15 + 23) < 0)
                {
                  sub_1000732A4(__p, *v15, *(v15 + 1));
                }

                else
                {
                  v16 = *v15;
                  v34 = *(v15 + 2);
                  *__p = v16;
                }

                if (v34 >= 0)
                {
                  v17 = __p;
                }

                else
                {
                  v17 = __p[0];
                }

                if (v34 >= 0)
                {
                  v18 = HIBYTE(v34);
                }

                else
                {
                  v18 = __p[1];
                }

                std::string::append(&v35, v17, v18);
                if (SHIBYTE(v34) < 0)
                {
                  operator delete(__p[0]);
                }

                if ((*(*(v13 + 8 * v14) + 56) & 1) != 0 && (a1[12] || v14 != ((v12[1] - *v12) >> 3) - 1) && (RXIsLocaleWithNoSpaceInPostITN() & 1) == 0)
                {
                  std::string::append(&v35, " ");
                }

                if (!v9)
                {
                  if (!v14)
                  {
                    v10 = *(*a1 + 104) + (*(*v13 + 24) * 1000.0);
                  }

                  if (v14 == 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3) - 1)
                  {
                    v11 = *(*a1 + 104) + (*(*(v13 + 8 * v14) + 32) * 1000.0);
                  }
                }

                ++v14;
                v13 = *v12;
              }

              while (v14 < (v12[1] - *v12) >> 3);
            }

            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v35.__r_.__value_.__l.__size_;
            }

            if (size && v37 == sub_10001AF2C(&v36, &v35.__r_.__value_.__l.__data_))
            {
              sub_1000C327C(&v36, &v35.__r_.__value_.__l.__data_, &v35);
              if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v20 = &v35;
              }

              else
              {
                v20 = v35.__r_.__value_.__r.__words[0];
              }

              v21 = xpc_string_create(v20);
              xpc_array_append_value(xarray, v21);
              sub_1000B9C30(*(*a1 + 96), &v35, v22);
              v23 = HIBYTE(v34);
              v24 = HIBYTE(v34);
              if (v34 < 0)
              {
                v23 = __p[1];
              }

              if (v23)
              {
                sub_1000C327C(&v36, __p, __p);
                if (v34 >= 0)
                {
                  v25 = __p;
                }

                else
                {
                  v25 = __p[0];
                }

                v26 = xpc_string_create(v25);
                xpc_array_append_value(xarray, v26);

                v24 = HIBYTE(v34);
              }

              if (v24 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            ++v9;
            v8 = *v7;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3) > v9);
        }

        xpc_dictionary_set_value(v31, kRDKeyText, xarray);
        xpc_dictionary_set_uint64(v31, kRDKeyStartTime, v10);
        xpc_dictionary_set_uint64(v31, kRDKeyEndTime, v11);
        xpc_array_append_value(v29, v31);

        sub_100017598(&v36, v37[0]);
        v6 = v30 + 1;
        v5 = *v28;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v28[1] - *v28) >> 3) > v30 + 1);
      v4 = v29;
    }
  }

  return v4;
}

void sub_100015E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char *a29)
{
  sub_100017598(&a28, a29);

  _Unwind_Resume(a1);
}

void RDQSRResultModelBuilder::tokenSausageVecFromNBestListForCurrentAdlib(void **__return_ptr a1@<X8>, RDQSRResultModelBuilder *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v2 = *(this + 5);
  v3 = *v2;
  v25 = *(v2 + 8);
  if (*v2 == v25)
  {
    goto LABEL_40;
  }

  do
  {
    __src = 0;
    v28 = 0;
    v29 = 0;
    v5 = v3[1];
    v26 = v3;
    if (*v3 == v5)
    {
      goto LABEL_35;
    }

    v6 = (*v3 + 24);
    while (1)
    {
      v7 = strlen("<eps>");
      v8 = *(v6 + 23);
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v7 == v8)
        {
          v9 = memcmp(v6, "<eps>", v7);
          if (!v9)
          {
            break;
          }
        }

        v10 = v6;
        goto LABEL_13;
      }

      if (v7 != v6[1])
      {
        v10 = *v6;
        goto LABEL_13;
      }

      if (v7 == -1)
      {
        sub_100016F2C();
      }

      v10 = *v6;
      v9 = memcmp(*v6, "<eps>", v7);
      if (!v9)
      {
        break;
      }

LABEL_13:
      sub_1000113AC(&__str, v10);
      v11 = std::stoll(&__str, 0, 10);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v11 == *(this + 28))
      {
        v12 = *(this + 8);
        v33 = v11;
        __str.__r_.__value_.__r.__words[0] = &v33;
        v13 = (**(this + 8) + 48 * *(sub_100017048((v12 + 48), &v33, &unk_1000D0933, &__str) + 6));
        v14 = *v13;
        v15 = v13[3];
        v16 = v13[4];
        v17 = v16;
        if (v14 == 13)
        {
          if (RDQSRResult::GetResultToken(*this, v6 - 3, *(this + 12)))
          {
            operator new();
          }

          v20 = __src;
          if (v28 != __src)
          {
            v21 = v28 - 1;
            do
            {
              v22 = *v21;
              *v21 = 0;
              if (v22)
              {
                sub_1000175FC(v21, v22);
              }
            }

            while (v21-- != v20);
            v28 = v20;
          }
        }

        else
        {
          v19 = RXOSLog(v16);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__str.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "getAlternativesForAdlibs: Non-adlib found in alternatives", &__str, 2u);
          }
        }

        goto LABEL_34;
      }

      v18 = v6 + 3;
      v6 += 6;
      if (v18 == v5)
      {
        goto LABEL_35;
      }
    }

    v15 = RXOSLog(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "getAlternativesForAdlibs: <eps> grammar found", &__str, 2u);
    }

LABEL_34:

LABEL_35:
    if (__src != v28)
    {
      sub_100010500(&v30, &__src);
    }

    __str.__r_.__value_.__r.__words[0] = &__src;
    sub_1000174D0(&__str);
    v3 = v26 + 3;
  }

  while (v26 + 3 != v25);
  if (v30 != v31)
  {
    sub_100010640(a1, &v30);
  }

LABEL_40:
  __str.__r_.__value_.__r.__words[0] = &v30;
  sub_100017D7C(&__str);
}

void RDQSRResultModelBuilder::spellTokenSausageVecFromNBestListForCurrentAdlib(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v3 = *(a1 + 40);
  v4 = *v3;
  v35 = *(v3 + 8);
  if (*v3 != v35)
  {
    v7 = 0;
    do
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v8 = v4[1];
      if (*v4 != v8)
      {
        v9 = *v4 + 24;
        while (1)
        {
          v10 = v9;
          if (*(v9 + 23) < 0)
          {
            v10 = *v9;
          }

          sub_1000113AC(&__str, v10);
          v11 = std::stoll(&__str, 0, 10);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (v11 == *(a1 + 224))
          {
            break;
          }

          v26 = v9 + 24;
          v9 += 48;
          if (v26 == v8)
          {
            goto LABEL_60;
          }
        }

        v12 = *(a1 + 64);
        __p.__r_.__value_.__r.__words[0] = v11;
        __str.__r_.__value_.__r.__words[0] = &__p;
        v13 = (**(a1 + 64) + 48 * *(sub_100017048((v12 + 48), &__p, &unk_1000D0933, &__str) + 6));
        v14 = *v13;
        v15 = v13[3];
        v16 = v13[4];
        v17 = v16;
        if (v14 == 13)
        {
          ResultToken = RDQSRResult::GetResultToken(*a1, (v9 - 24), *(a1 + 48));
          v19 = RXLocalizedStringForSpacebar();
          sub_1000B9AE4(v19, 0, v39);
          sub_1000113AC(&__p, "");
          if (ResultToken)
          {
            if (*(ResultToken + 23) < 0)
            {
              sub_1000732A4(__dst, *ResultToken, *(ResultToken + 8));
            }

            else
            {
              v20 = *ResultToken;
              v37 = *(ResultToken + 16);
              *__dst = v20;
            }

            if (v37 >= 0)
            {
              v21 = HIBYTE(v37);
            }

            else
            {
              v21 = __dst[1];
            }

            v22 = v40;
            if ((v40 & 0x80u) != 0)
            {
              v22 = v39[1];
            }

            if (v21 == v22 && (v37 >= 0 ? (v23 = __dst) : (v23 = __dst[0]), (v40 & 0x80u) == 0 ? (v24 = v39) : (v24 = v39[0]), !memcmp(v23, v24, v21)))
            {
              sub_1000113AC(&__str, " ");
            }

            else if (*(ResultToken + 23) < 0)
            {
              sub_1000732A4(&__str, *ResultToken, *(ResultToken + 8));
            }

            else
            {
              v25 = *ResultToken;
              __str.__r_.__value_.__r.__words[2] = *(ResultToken + 16);
              *&__str.__r_.__value_.__l.__data_ = v25;
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = __str;
            *(&__str.__r_.__value_.__s + 23) = 0;
            __str.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v37) < 0)
            {
              operator delete(__dst[0]);
            }

            if (!*(a1 + 52) && (sub_1000C1120(&__p) & 1) != 0 || (sub_1000C1190(&__p) & 1) != 0)
            {
              operator new();
            }
          }

          if ((v7 & 1) == 0)
          {
            if (*(a2 + 23) < 0)
            {
              **a2 = 0;
              *(a2 + 8) = 0;
            }

            else
            {
              *a2 = 0;
              *(a2 + 23) = 0;
            }
          }

          v28 = v41;
          if (v42 != v41)
          {
            v29 = v42 - 1;
            do
            {
              v30 = *v29;
              *v29 = 0;
              if (v30)
              {
                sub_1000175FC(v29, v30);
              }
            }

            while (v29-- != v28);
          }

          v42 = v28;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }
        }

        else
        {
          v27 = RXOSLog(v16);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__str.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "getAlternativesForAdlibs: Non-adlib found in alternatives", &__str, 2u);
          }
        }
      }

LABEL_60:
      v32 = *(a2 + 23);
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(a2 + 8);
      }

      v33 = v32 != 0;
      if (v41 != v42)
      {
        sub_100010500(&v44, &v41);
      }

      v7 |= v33;
      __str.__r_.__value_.__r.__words[0] = &v41;
      sub_1000174D0(&__str);
      v4 += 3;
    }

    while (v4 != v35);
    if (v44 != v45)
    {
      sub_100010640(a3, &v44);
    }
  }

  __str.__r_.__value_.__r.__words[0] = &v44;
  sub_100017D7C(&__str);
}

void sub_1000169EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v28 = a11;
  a11 = 0;
  if (v28)
  {
    sub_1000175FC(&a11, v28);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  JUMPOUT(0x100016A30);
}

void sub_100016A64(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_100016EC0(locale);
  }

  std::locale::~locale(this);
}

void RDQSRResultModelBuilder::~RDQSRResultModelBuilder(RDQSRResultModelBuilder *this)
{
  sub_100017598(this + 200, *(this + 26));
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v4 = (this + 80);
  sub_10001A910(&v4);

  sub_10001A8C4(this + 8, 0);
}

void RDQSRResultMatcher::Create()
{
  operator new();
}

{
  operator new();
}

void sub_100016CD0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100016D2C(exception, a1);
}

std::logic_error *sub_100016D2C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100016D60()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

_OWORD *sub_100016D94(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000732A4(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_100016E0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_100016E28(_OWORD *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000732A4(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_100016EA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100016EC0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_100016F44(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100016FA0(exception, a1);
}

std::logic_error *sub_100016FA0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100016FD4(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_100019DA8(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *sub_100017048(float *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_10001727C(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10001736C(result, prime);
    }
  }
}

void sub_10001736C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100016D60();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1000174D0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10001B08C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100017524(void *****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_100017D7C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_100017598(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100017598(a1, *a2);
    sub_100017598(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1000175FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

void sub_100017670(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_1000176B8(uint64_t a1)
{
  sub_1000176F0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000176F0(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      sub_1000175FC(result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

uint64_t sub_1000177B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1000FE390;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000179A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000179F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_100017A48(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100017B38(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1000FE420;
  a2[1] = v2;
  return result;
}

uint64_t sub_100017D30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100017D7C(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_1000174D0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_100017DF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100016D60();
}

void **sub_100017E48(void **a1)
{
  sub_100017E7C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100017E7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1000174D0(&v5);
  }
}

void **sub_100017ED0(void **a1)
{
  sub_100017F04(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100017F04(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_100017D7C(&v5);
  }
}

void **sub_100017F58(void **a1)
{
  sub_100017F94(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100017F94(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

__n128 sub_10001807C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1000FE4A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1000180B4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = RDQSRGrammarBuilder::grammarFST(*(**(a1 + 8) + 32 * v4));
  sub_10006F844(&v3, v2);
}

void sub_100018250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::mutex::unlock(&stru_10010D670);
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100018350(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10001839C(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1000185E8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10001866C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1000186EC(void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_100018774(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t *sub_100018860(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_100018904(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_1000188B8(uint64_t a1)
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

uint64_t *sub_100018904(uint64_t *result, uint64_t *a2)
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

__n128 sub_100018B1C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1000FE530;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100018B54(uint64_t a1, unint64_t *a2)
{
  v11 = *a2;
  v3 = *(a1 + 24);
  v4 = **(a1 + 8) + 32 * v11;
  if (*(v4 + 24) == 1)
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = *(v3 + 56);
  }

  v6 = RDQSRGrammarBuilder::grammarFST(*v4);
  sub_100075AE4(v5, v6, &v12);
  v7 = v12;
  std::mutex::lock(&stru_10010D6B0);
  v8 = *(a1 + 16);
  v12 = &v11;
  v9 = sub_10001839C(v8, &v11, &unk_1000D0933, &v12);
  v10 = v9[3];
  v9[3] = v7;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  std::mutex::unlock(&stru_10010D6B0);
}

void sub_100018C3C(_Unwind_Exception *a1)
{
  std::mutex::unlock(&stru_10010D6B0);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100018C88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100018CD4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    operator delete();
  }

  return result;
}

uint64_t sub_100018D34(uint64_t *a1, int *a2, id *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_100017658();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v21 = a1;
  if (v8)
  {
    sub_100018E4C(a1, v8);
  }

  v9 = 16 * v3;
  v18 = 0;
  v19 = v9;
  *(&v20 + 1) = 0;
  v10 = *a2;
  v11 = *a3;
  *v9 = v10;
  *(v9 + 8) = v11;
  *&v20 = v9 + 16;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  sub_100018E94(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_100018F10(&v18);
  return v17;
}

void sub_100018E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100018F10(va);
  _Unwind_Resume(a1);
}

void sub_100018E4C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100016D60();
}

void sub_100018E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 8);
      v7 += 16;
      a4 += 16;
    }

    while (v7 != a3);
    while (v6 != a3)
    {

      v6 += 16;
    }
  }
}

uint64_t sub_100018F10(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100018F64(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        sub_100019DA8(&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_100018FF0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100019048(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100019048(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000190D0(v5, (v5 + 8), v4 + 4, v4 + 4);
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

void *sub_1000190D0(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v4 = *sub_10001918C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_10001918C(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
        v9 = v9[1];
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

    v15 = *a5;
    if (v10[4] < *a5)
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
          v18 = v16[4];
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
      v17 = a1 + 1;
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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
      v21 = a1 + 1;
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

void sub_100019334(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100019334(a1, *a2);
    sub_100019334(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_100019390(uint64_t a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_100018F64(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_100019500(a1, v10);
    }

    sub_100017658();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_100019690(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        sub_100019DA8(&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100019690(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = sub_10001954C(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void sub_100019500(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100017DF0(a1, a2);
  }

  sub_100017658();
}

uint64_t *sub_10001954C(uint64_t a1, __int128 **a2, __int128 **a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100019D20(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * (v6[1] - *v6));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10001960C(v8);
  return v4;
}

uint64_t sub_10001960C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100019644(a1);
  }

  return a1;
}

void sub_100019644(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_100019DA8(&v3);
  }
}

std::string **sub_100019690(int a1, std::string **a2, std::string **a3, std::string **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_10001970C(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10001970C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_10001987C(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_1000198E8(a1, v10);
    }

    sub_100017658();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_100019ABC(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_100019A64(a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100019ABC(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_100019934(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_10001987C(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_100019A64(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1000198E8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_100019B2C(a1, a2);
  }

  sub_100017658();
}

_OWORD *sub_100019934(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100016D94(v4, v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1000199D8(v8);
  return v4;
}

uint64_t sub_1000199D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100019A10(a1);
  }

  return a1;
}

void sub_100019A10(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 48;
      sub_100019A64(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_100019A64(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

std::string *sub_100019ABC(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

void sub_100019B2C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t *sub_100019B84(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100019500(result, a4);
  }

  return result;
}

void sub_100019BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100016FD4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100019C0C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100017658();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_100018E4C(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *&v17 = v8 + 16;
  v9 = a1[1];
  v10 = v8 + *a1 - v9;
  sub_100018E94(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100018F10(&v15);
  return v14;
}

void sub_100019D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100018F10(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100019D20(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000198E8(result, a4);
  }

  return result;
}

void sub_100019D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_100019DA8(&a9);
  _Unwind_Resume(a1);
}

void sub_100019DA8(void ***a1)
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
        v4 -= 48;
        sub_100019A64(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **sub_100019E30(void **a1)
{
  sub_100019E64(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100019E64(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_100019A64(v4, i - 48);
  }
}

void **sub_100019EAC(void **a1)
{
  sub_100019EE0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100019EE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_100019DA8(&v5);
  }
}

uint64_t *sub_100019F34(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100019FD8(a1, a2);
  }

  return a1;
}

void sub_100019FD8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_10001A024(a1, a2);
  }

  sub_100017658();
}

void sub_10001A024(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100016D60();
}

void sub_10001A07C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10001A0D0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10001A0D0(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 48)
  {
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10001A12C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_10001A178(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10001A178(a1, *a2);
    sub_10001A178(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10001A1CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10001A214(uint64_t a1, unsigned int *a2)
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
    v7 = sub_10001A2A4((a1 + 24), *(v3 + 28), *a2);
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
  if (v6 == v2 || sub_10001A2A4((a1 + 24), *a2, *(v6 + 28)))
  {
    return v2;
  }

  return v6;
}

BOOL sub_10001A2A4(uint64_t **a1, unsigned int a2, unsigned int a3)
{
  v3 = **a1;
  v4 = v3 + 48 * a2;
  v5 = v3 + 48 * a3;
  v6 = *(v4 + 8);
  v7 = *(v5 + 8);
  if (v6 < v7)
  {
    return 1;
  }

  if (v6 > v7)
  {
    return 0;
  }

  v9 = *(v4 + 6);
  v10 = *(v5 + 6);
  if (v9 < v10)
  {
    return 1;
  }

  return v9 <= v10 && *(v4 + 2) < *(v5 + 2);
}

id sub_10001A304(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(v4 + 24) = *(a2 + 3);
  result = *(a2 + 4);
  v7 = *(a2 + 5);
  *(v4 + 32) = result;
  *(v4 + 40) = v7;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_10001A368(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100017658();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_10001A024(a1, v6);
  }

  v7 = 48 * v2;
  v19 = 0;
  v20 = v7;
  *(&v21 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(v7 + 24) = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  *&v21 = v7 + 48;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_10001A4B4(a1, *a1, v11, v12, v13, v14);
  v15 = *a1;
  *a1 = v12;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_10001A64C(&v19);
  return v18;
}

void sub_10001A4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001A64C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A4B4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(v6 + 3) = 0;
      *(v6 + 4) = 0;
      *(a4 + 24) = v8;
      *(a4 + 40) = *(v6 + 5);
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
  }

  v11 = 1;
  sub_10001A55C(a1, a2, a3);
  return sub_10001A5A8(v10);
}

void sub_10001A55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v4 += 48;
    }

    while (v4 != a3);
  }
}

uint64_t sub_10001A5A8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10001A5F4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_10001A5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v6 -= 48;
    }

    while (v6 != a5);
  }
}

uint64_t sub_10001A64C(uint64_t a1)
{
  sub_10001A684(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001A684(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
  }
}

uint64_t sub_10001A6E0(uint64_t **a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *sub_10001A774(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10001A774(uint64_t a1, void *a2, unsigned int *a3)
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
        if (!sub_10001A2A4((a1 + 24), *a3, *(v4 + 7)))
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

      if (!sub_10001A2A4((a1 + 24), *(v8 + 7), *a3))
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

void *sub_10001A810(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

RDQSRResultLMNodeBuilder *sub_10001A8C4(RDQSRResultLMNodeBuilder **a1, RDQSRResultLMNodeBuilder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    RDQSRResultLMNodeBuilder::~RDQSRResultLMNodeBuilder(result);

    operator delete();
  }

  return result;
}

void sub_10001A910(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10001A964(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10001A964(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10001A9C0(unint64_t *a1, int *a2, void **a3, void **a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100017658();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v5;
  }

  v23 = a1;
  if (v8)
  {
    sub_10001AB10(a1, v8);
  }

  v9 = 24 * v4;
  v20 = 0;
  v21 = v9;
  *(&v22 + 1) = 0;
  v10 = *a2;
  v11 = *a4;
  v12 = *a3;
  v13 = v11;
  *v9 = v10;
  *(v9 + 8) = v12;
  *(v9 + 16) = v13;
  *&v22 = v9 + 24;
  v14 = a1[1];
  v15 = v9 + *a1 - v14;
  sub_10001AB68(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_10001AD2C(&v20);
  return v19;
}

void sub_10001AAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001AD2C(va);
  _Unwind_Resume(a1);
}

void sub_10001AB10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10001AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = v14;
    v9 = a2;
    do
    {
      *v7 = *v9;
      *(v7 + 8) = *(v9 + 8);
      *(v7 + 16) = *(v9 + 16);
      v9 += 24;
      v8 += 24;
      v7 = v8;
    }

    while (v9 != a3);
    v14 = v8;
  }

  v12 = 1;
  sub_10001AC3C(a1, a2, a3);
  return sub_10001AC88(v11);
}

void sub_10001AC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v4 += 24;
    }

    while (v4 != a3);
  }
}

uint64_t sub_10001AC88(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10001ACD4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_10001ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v6 -= 24;
    }

    while (v6 != a5);
  }
}

uint64_t sub_10001AD2C(uint64_t a1)
{
  sub_10001AD64(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001AD64(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }
}

uint64_t *sub_10001ADC0(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100017658();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      sub_10001AB10(result, v9);
    }

    v11 = 24 * v6;
    v17 = 0;
    v18 = 24 * v6;
    *(&v19 + 1) = 0;
    v12 = 24 * v6;
    do
    {
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      v12 += 24;
    }

    while (v12 != 24 * v6 + 24 * a2);
    *&v19 = v11 + 24 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    sub_10001AB68(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_10001AD2C(&v17);
  }

  return result;
}

void sub_10001AF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001AD2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001AF2C(uint64_t a1, const void **a2)
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
    v7 = sub_10001AFBC(a1, (v3 + 32), a2);
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
  if (v6 == v2 || sub_10001AFBC(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL sub_10001AFBC(uint64_t a1, const void **a2, const void **a3)
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

void sub_10001B028(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_10001B08C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_1000175FC(v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void sub_10001B0F0(std::locale *a1, char *a2, int a3)
{
  v6 = sub_10001B188(a1);
  LODWORD(v6[3].__locale_) = a3;
  *(&v6[3].__locale_ + 4) = 0u;
  *(&v6[5].__locale_ + 4) = 0u;
  HIDWORD(v6[7].__locale_) = 0;
  v7 = strlen(a2);
  sub_10001B1E8(a1, a2, &a2[v7]);
}

void sub_10001B168(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_100016EC0(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::locale *sub_10001B188(std::locale *a1)
{
  v2 = std::locale::locale(a1);
  a1[1].__locale_ = std::locale::use_facet(v2, &std::ctype<char>::id);
  a1[2].__locale_ = std::locale::use_facet(a1, &std::collate<char>::id);
  return a1;
}

void sub_10001B3DC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *sub_10001B47C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_10001BED4(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_10001BED4(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_10001BDD4(a1, v6, v9);
  }

  return v7;
}

unsigned __int8 *sub_10001B5EC(_BYTE *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_10001C6D8(a1);
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_100022B90(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_10001C75C(a1);
      }
    }

    if (v3 != a3)
    {
      sub_100022B38();
    }
  }

  return v3;
}

unsigned __int8 *sub_10001B6A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_100023248(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_100022B38();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_100023248(a1, result + 1, a3) != result + 1)
    {
      sub_10001BDD4(a1, v6, v8);
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_10001B740(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_10001B5EC(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_10001B5EC(a1, v8, v10);
      sub_10001BDD4(a1, v6, v11);
    }

    operator new();
  }

  return v8;
}

unsigned __int8 *sub_10001B8B0(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_10001B6A0(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_10001B6A0(a1, v8, v10);
      sub_10001BDD4(a1, v6, v11);
    }

    operator new();
  }

  return v8;
}

void sub_10001BA20()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_10001BB0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1000C90AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001BB28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10001BB60(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10001BB90(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10001BBD0(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10001BC3C(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10001BCC8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10001BCDC(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10001BD48(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned __int8 *sub_10001BED4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_10001BF7C(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_10001C18C(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_10001C3D4(a1, v9, a3, v7, (v8 + 1), v10);
    }
  }

  return result;
}

unsigned __int8 *sub_10001BF7C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v13 = a2[1];
          if (v13 == 66)
          {
            v14 = 1;
          }

          else
          {
            if (v13 != 98)
            {
              return a2;
            }

            v14 = 0;
          }

          sub_10001C7E0(a1, v14);
        }
      }

      else if (v6 == 94)
      {
        sub_10001C6D8(a1);
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_10001C75C(a1);
      }

      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            sub_10001B188(v15);
            v16 = 0u;
            v18 = 0;
            v17 = 0u;
            LODWORD(v16) = *(a1 + 24);
            sub_10001B1E8(v15, a2 + 3, a3);
            sub_10001C874(a1, v15, 1, *(a1 + 28));
          }

          if (v11 == 61)
          {
            sub_10001B188(v15);
            v16 = 0u;
            v18 = 0;
            v17 = 0u;
            LODWORD(v16) = *(a1 + 24);
            sub_10001B1E8(v15, a2 + 3, a3);
            sub_10001C874(a1, v15, 0, *(a1 + 28));
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_10001C18C(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      sub_10001E588();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        v8 = a1 + 36;
        ++*(a1 + 9);
        v9 = sub_10001B47C(a1, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      sub_10001E480(a1);
      v11 = *(a1 + 7);
      v8 = a1 + 36;
      ++*(a1 + 9);
      v12 = sub_10001B47C(a1, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          sub_10001E508(a1, v11);
LABEL_25:
          --*v8;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    sub_10001C914();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return sub_10001E364(a1, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return sub_10001E5E0(a1, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return sub_10001E2BC(a1, a2, a3);
}

unsigned __int8 *sub_10001C3D4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v22 = a2 + 1;
      if (v11)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == a3;
      }

      if (!v23 && *v22 == 63)
      {
        v14 = 0;
        v19 = 1;
        goto LABEL_33;
      }

      v14 = 0;
      v19 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = sub_1000226CC(a1, a2 + 1, a3, &v31);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v18 = v16 + 1;
            if (!v11 && v18 != a3 && *v18 == 63)
            {
              v14 = v31;
              LODWORD(a5) = v7;
              LODWORD(a6) = v6;
              a1 = v10;
              v19 = v31;
LABEL_33:
              v24 = a4;
              v25 = 0;
              goto LABEL_46;
            }

            v14 = v31;
            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            v19 = v31;
            goto LABEL_45;
          }

          goto LABEL_56;
        }

        v26 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_56;
        }

        if (*v26 == 125)
        {
          v27 = v16 + 2;
          if (!v11 && v27 != a3 && *v27 == 63)
          {
            v14 = v31;
            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = v31;
          LODWORD(a5) = v7;
          LODWORD(a6) = v6;
          a1 = v10;
LABEL_36:
          v19 = -1;
LABEL_45:
          v24 = a4;
          v25 = 1;
          goto LABEL_46;
        }

        v30 = -1;
        v29 = sub_1000226CC(v10, v26, a3, &v30);
        if (v29 != v26 && v29 != a3 && *v29 == 125)
        {
          v19 = v30;
          v14 = v31;
          if (v30 >= v31)
          {
            v25 = 1;
            if (!v11 && v29 + 1 != a3)
            {
              v25 = v29[1] != 63;
            }

            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            v24 = a4;
LABEL_46:
            sub_10002253C(a1, v14, v19, v24, a5, a6, v25);
          }

          goto LABEL_56;
        }
      }

      sub_1000227C0();
    }

LABEL_56:
    sub_100022768();
  }

  if (v12 == 42)
  {
    v20 = a2 + 1;
    if (v11)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (!v21 && *v20 == 63)
    {
      v14 = 0;
      goto LABEL_26;
    }

    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v14 = 1;
LABEL_26:
      v19 = -1;
      goto LABEL_33;
    }

    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void sub_10001C914()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *sub_10001C96C(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10001C9D8(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10001CA64(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}