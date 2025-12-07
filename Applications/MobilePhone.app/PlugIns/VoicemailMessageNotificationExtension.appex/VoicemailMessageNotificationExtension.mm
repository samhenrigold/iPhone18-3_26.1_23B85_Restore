id PHDefaultLog(uint64_t a1)
{
  if (qword_10009A728 != -1)
  {
    sub_10005FB54();
  }

  v2 = qword_10009A720;

  return v2;
}

void sub_1000038DC(id a1)
{
  qword_10009A720 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id RTTUIUtilitiesClass(uint64_t a1)
{
  if (qword_10009A738 != -1)
  {
    sub_10005FB68();
  }

  v2 = qword_10009A730;

  return v2;
}

void sub_100003964(id a1)
{
  qword_10009A730 = CUTWeakLinkClass();
  if (!qword_10009A730)
  {
    v1 = PHDefaultLog(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTUIUtilities; RTTUI.framework may have failed to link.", v2, 2u);
    }
  }
}

void sub_10000406C(uint64_t a1, int a2)
{
  if (a2 && (*(a1 + 40) & 1) == 0)
  {
    v3 = [*(a1 + 32) contentUnavailableView];
    [v3 setHidden:1];
    [v3 removeFromSuperview];
  }
}

void sub_1000040CC(uint64_t a1)
{
  v4 = [*(a1 + 32) contentUnavailableView];
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) view];
    [v2 addSubview:v4];

    v3 = [*(a1 + 32) view];
    [v3 bringSubviewToFront:v4];

    [v4 setAlpha:1.0];
    [v4 setHidden:0];
  }

  else
  {
    [v4 setAlpha:0.0];
  }
}

void sub_100004D28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100004D4C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  v5 = [*(a1 + 32) listener];
  if (v3 | v5)
  {
  }

  else
  {
    v6 = [*(a1 + 32) loadingMessage];

    if (!v6)
    {
      v7 = PHDefaultLog([*(a1 + 32) setLoadingMessage:*(a1 + 40)]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to retrieve voicemail message with id  (%@).", buf, 0xCu);
      }

      v9 = *(a1 + 32);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100004FE0;
      v22[3] = &unk_1000897B8;
      objc_copyWeak(&v23, (a1 + 48));
      v22[4] = *(a1 + 32);
      v10 = [v9 listenForVoicemailChangesWithBlock:v22];
      v11 = *(a1 + 32);
      v12 = *(v11 + 160);
      *(v11 + 160) = v10;

      objc_destroyWeak(&v23);
      goto LABEL_11;
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 160);
  *(v13 + 160) = 0;

  v16 = PHDefaultLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retrieved voicemail message (%@).", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005090;
  block[3] = &unk_1000897E0;
  block[4] = WeakRetained;
  v17 = v3;
  v18 = *(a1 + 32);
  v20 = v17;
  v21 = v18;
  dispatch_async(&_dispatch_main_q, block);

LABEL_11:
}

void sub_100004FE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) loadingMessage];

    if (v3)
    {
      v4 = [v6 voicemailMessage];

      WeakRetained = v6;
      if (v4)
      {
        goto LABEL_7;
      }

      v5 = [*(a1 + 32) loadingMessage];
      [v6 setPlaybackMessageWithID:v5];
    }

    else
    {
      [*(a1 + 32) setListener:0];
    }

    WeakRetained = v6;
  }

LABEL_7:
}

id sub_100005090(uint64_t a1)
{
  [*(a1 + 32) setVoicemailMessage:*(a1 + 40)];
  [*(a1 + 32) reloadData];
  v2 = *(a1 + 48);

  return [v2 setLoadingMessage:0];
}

uint64_t sub_100007100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained shouldHandleVoicemailChanges])
    {
      [v3 handleVoicemailManagerVoicemailsDidChange];
    }
  }

  return _objc_release_x1();
}

void sub_100007770(uint64_t a1)
{
  v2 = [*(a1 + 32) voicemailMessage];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 voicemailMessage];
    v6 = [v3 localizedSubtitleForMessage:v4];

    v5 = [*(a1 + 32) messageView];
    [v5 setLocalizedSubheadline:v6];
  }
}

void sub_100008054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008078(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setVoicemailMessage:v5];
  }
}

float PHVoicemailLowQualityConfidenceThresholdForTranscript()
{
  v0 = PHPreferencesGetValue();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0.6878;
  }

  return v3;
}

float PHVoicemailConfidenceThresholdForTranscript()
{
  v0 = PHPreferencesGetValue();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0.45096;
  }

  return v3;
}

id PHVoicemailTranscriptAttributedPrefix(uint64_t a1)
{
  if (qword_10009A748 != -1)
  {
    sub_10005FF1C();
  }

  v2 = qword_10009A740;

  return v2;
}

void sub_1000093AC(id a1)
{
  v1 = [UIApp userInterfaceLayoutDirection];
  v2 = +[NSBundle mainBundle];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_SUFFIX";
  }

  else
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_PREFIX";
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_10008C168 table:@"General"];

  v6 = [NSAttributedString alloc];
  v12[0] = NSForegroundColorAttributeName;
  v7 = [UIColor colorWithRed:0.572549045 green:0.572549045 blue:0.572549045 alpha:1.0];
  v13[0] = v7;
  v12[1] = NSFontAttributeName;
  v8 = [UIFont phPreferredTightLeadingFontForTextStyle:UIFontTextStyleBody];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:v5 attributes:v9];
  v11 = qword_10009A740;
  qword_10009A740 = v10;
}

id PHVoicemailTranscriptAttributedSuffix(uint64_t a1)
{
  if (qword_10009A758 != -1)
  {
    sub_10005FF30();
  }

  v2 = qword_10009A750;

  return v2;
}

void sub_100009580(id a1)
{
  v1 = [UIApp userInterfaceLayoutDirection];
  v2 = +[NSBundle mainBundle];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_PREFIX";
  }

  else
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_SUFFIX";
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_10008C168 table:@"General"];

  v6 = [NSAttributedString alloc];
  v12[0] = NSForegroundColorAttributeName;
  v7 = [UIColor colorWithRed:0.572549045 green:0.572549045 blue:0.572549045 alpha:1.0];
  v13[0] = v7;
  v12[1] = NSFontAttributeName;
  v8 = [UIFont phPreferredTightLeadingFontForTextStyle:UIFontTextStyleBody];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:v5 attributes:v9];
  v11 = qword_10009A750;
  qword_10009A750 = v10;
}

void sub_100011B5C(id a1)
{
  qword_10009A760 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0x8000 options:0];

  _objc_release_x1();
}

void sub_100011BF4(id a1)
{
  qword_10009A770 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 addingSymbolicTraits:0x8000 options:0];

  _objc_release_x1();
}

void sub_100011E54(id *a1)
{
  objc_copyWeak(&to, a1 + 5);
  v2 = objc_loadWeakRetained(&to);

  if (v2)
  {
    v4 = [a1[6] sharedUtilityProvider];
    v5 = [a1[4] UUIDString];
    v6 = [v4 conversationForCallUID:v5];

    if (v6)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011FDC;
      block[3] = &unk_100089950;
      objc_copyWeak(&v10, a1 + 5);
      v6 = v6;
      v8 = v6;
      v9 = a1[4];
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v10);
    }
  }

  else
  {
    v6 = PHDefaultLog(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated before starting", buf, 2u);
    }
  }

  objc_destroyWeak(&to);
}

void sub_100011FDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = PHDefaultLog([WeakRetained setConversation:*(a1 + 32)]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully finished fetchRTTConversationForCallUUID", v8, 2u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    v9 = @"MPVoicemailRTTTranscriptDidLoadCallIDKey";
    v6 = [*(a1 + 40) UUIDString];
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v5 postNotificationName:@"MPVoicemailRTTTranscriptDidLoadNotification" object:0 userInfo:v7];
  }

  else
  {
    v5 = PHDefaultLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated when trying to write conversation", v8, 2u);
    }
  }
}

void sub_100012468(id a1)
{
  qword_10009A788 = dispatch_queue_create("VMPlayerControllerAudioSessionQueue", 0);

  _objc_release_x1();
}

void sub_100012900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001292C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 delegate];
      objc_msgSend_currentTime(v5);
      [v4 playerController:v5 didChangeToCurrentTime:?];

      WeakRetained = v5;
    }
  }
}

void sub_100013024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100013048(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained isAudioSessionActive])
    {
      v2 = [v4 player];
      [v2 play];
    }
  }

  return _objc_release_x1();
}

void sub_10001398C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100013A14;
  v2[3] = &unk_1000899F0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_100013B8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = +[AVAudioSession sharedInstance];
    v6 = v5;
    if (v5)
    {
      -[NSObject setAudioSessionState:](v4, "setAudioSessionState:", [v5 deactivateVoicemailAudioSession]);
      [v4 updateAudioSessionNotifications];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100013CD8;
      v8[3] = &unk_1000897B8;
      objc_copyWeak(&v9, (a1 + 40));
      v8[4] = *(a1 + 32);
      dispatch_sync(&_dispatch_main_q, v8);
      objc_destroyWeak(&v9);
    }

    else
    {
      v7 = PHDefaultLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10005FFF4();
      }
    }
  }

  else
  {
    v4 = PHDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100060034();
    }
  }
}

void sub_100013CD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v4 = *(a1 + 32);

    [v4 updateProximityMonitoring];
  }

  else
  {
    v5 = PHDefaultLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100060074();
    }
  }
}

void sub_1000143C0(uint64_t a1, uint64_t a2)
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v12, 0x16u);
  }

  v6 = [*(a1 + 40) userInfo];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 unsignedIntegerValue];
      if (v9 == 1)
      {
        [*(a1 + 32) pause];
        [*(a1 + 32) deactivateAudioSession];
      }

      else if (!v9)
      {
        v10 = [v7 objectForKeyedSubscript:AVAudioSessionInterruptionOptionKey];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 unsignedIntegerValue];

          if (v11 == 1)
          {
            [*(a1 + 32) play];
          }
        }

        else
        {
        }
      }
    }
  }
}

void sub_1000145EC(uint64_t a1, uint64_t a2)
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  v6 = [*(a1 + 40) userInfo];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 unsignedIntegerValue] - 1 <= 3)
    {
      [*(a1 + 32) updateProximityMonitoring];
    }
  }
}

id sub_1000147A8(uint64_t a1, uint64_t a2)
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v7, 0x16u);
  }

  return [*(a1 + 32) stop];
}

void sub_1000148F4(uint64_t a1, uint64_t a2)
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  v6 = [*(a1 + 32) delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 playerControllerDidReset:*(a1 + 32)];
  }
}

void sub_100014A84(uint64_t a1, uint64_t a2)
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  v6 = [*(a1 + 40) object];
  if (v6)
  {
    v7 = [*(a1 + 32) player];
    v8 = [v7 currentItem];

    if (v6 == v8)
    {
      [*(a1 + 32) stop];
    }
  }
}

id sub_100014C1C(uint64_t a1, uint64_t a2)
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  result = [*(a1 + 32) isAudioSessionActive];
  if (result)
  {
    v7 = +[UIDevice currentDevice];
    v8 = [v7 proximityState];

    result = [*(a1 + 32) timeControlStatus];
    if (result >= 2)
    {
      if (result == 2 && (v8 & 1) == 0)
      {
        return [*(a1 + 32) pause];
      }
    }

    else if (v8)
    {
      return [*(a1 + 32) play];
    }
  }

  return result;
}

void sub_100014DC4(uint64_t a1, uint64_t a2)
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v14 = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v14, 0x16u);
  }

  v6 = [*(a1 + 40) object];
  if (v6)
  {
    v7 = [*(a1 + 32) player];
    v8 = [v7 currentItem];

    if (v6 == v8)
    {
      v9 = [*(a1 + 40) userInfo];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 objectForKeyedSubscript:AVPlayerItemFailedToPlayToEndTimeErrorKey];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          if (v12)
          {
            v13 = vm_ui_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              sub_1000600B4();
            }
          }
        }
      }

      [*(a1 + 32) stop];
    }
  }
}

void sub_1000165E8(id a1)
{
  qword_10009A790 = [UIImage tpImageForSymbolType:26 textStyle:UIFontTextStyleBody scale:3 isStaticSize:0];

  _objc_release_x1();
}

void sub_100016684(id a1)
{
  qword_10009A7A0 = [UIImage tpImageForSymbolType:25 textStyle:UIFontTextStyleBody scale:3 isStaticSize:0];

  _objc_release_x1();
}

void sub_100016720(id a1)
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v1 = [v3 withCaseSensitiveAttribute];
  v2 = qword_10009A7B0;
  qword_10009A7B0 = v1;
}

void sub_1000167CC(id a1)
{
  v3 = +[UIFontDescriptor voicemailHeadlineShortFontDescriptor];
  v1 = [UIFont fontWithDescriptor:v3 size:0.0];
  v2 = qword_10009A7C0;
  qword_10009A7C0 = v1;
}

void sub_100016888(id a1)
{
  v4 = +[UIFontDescriptor voicemailCaptionRegularFontDescriptor];
  v1 = [UIFont fontWithDescriptor:v4 size:0.0];
  v2 = [v1 withCaseSensitiveAttribute];
  v3 = qword_10009A7D0;
  qword_10009A7D0 = v2;
}

uint64_t sub_100016A70()
{
  v0 = sub_100060A6C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100060A8C();
  __chkstk_darwin(v5, v6);
  v7 = sub_1000607BC();
  __chkstk_darwin(v7 - 8, v8);
  sub_1000174A4();
  sub_1000607AC();
  v10[1] = _swiftEmptyArrayStorage;
  sub_1000174F0(&qword_100099548, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100017538(&qword_100099550, &qword_1000790D0);
  sub_100017580();
  sub_100060B2C();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100060A9C();
  qword_100099388 = result;
  return result;
}

uint64_t sub_100016CE0()
{
  if (qword_100099380 != -1)
  {
    swift_once();
  }

  return sub_100060AAC();
}

id sub_100016D50()
{
  result = [objc_allocWithZone(type metadata accessor for ApplicationServices()) init];
  qword_10009BDF0 = result;
  return result;
}

void *sub_100016EE0()
{
  v1 = v0;
  v2 = type metadata accessor for VoicemailAccountManagerComposer(0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___NotificationApplicationServices____lazy_storage___accountManager;
  if (*(v1 + OBJC_IVAR___NotificationApplicationServices____lazy_storage___accountManager))
  {
    v7 = *(v1 + OBJC_IVAR___NotificationApplicationServices____lazy_storage___accountManager);
  }

  else
  {
    if (qword_100099408 != -1)
    {
      swift_once();
    }

    v8 = sub_10006074C();
    v9 = sub_10001762C(v8, qword_10009BED0);
    (*(*(v8 - 8) + 16))(v5, v9, v8);
    v10 = sub_100053E08();
    sub_1000186BC(v5);
    *(v1 + v6) = v10;
    v7 = v10;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v7;
}

id sub_10001711C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10006074C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___NotificationApplicationServices____lazy_storage___accountManager] = 0;
  v8 = OBJC_IVAR___NotificationApplicationServices_voicemailManager;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v9 = &v1[v8];
  v10 = sub_10001762C(v3, qword_10009BED0);
  (*(v4 + 16))(v7, v10, v3);
  v11 = sub_10006068C();
  v12 = sub_10006067C();
  v23 = v11;
  v24 = &off_10008AA40;
  v22[0] = v12;
  v13 = objc_allocWithZone(type metadata accessor for FaceTimeVoicemailManager(0));
  v14 = sub_100017664(v22, v23);
  __chkstk_darwin(v14, v14);
  v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_100017DA0(v7, *v16, v13);
  sub_100018230(v22);
  *v9 = v18;
  v9[1] = &off_10008AA98;
  *&v1[OBJC_IVAR___NotificationApplicationServices_voicemailListener] = 0;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_100017390()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000174A4()
{
  result = qword_100099540;
  if (!qword_100099540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100099540);
  }

  return result;
}

uint64_t sub_1000174F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100017538(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100017580()
{
  result = qword_100099558;
  if (!qword_100099558)
  {
    sub_1000175E4(&qword_100099550, &qword_1000790D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099558);
  }

  return result;
}

uint64_t sub_1000175E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001762C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100017664(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000176BC(uint64_t a1, id *a2)
{
  result = sub_1000607FC();
  *a2 = 0;
  return result;
}

uint64_t sub_100017734(uint64_t a1, id *a2)
{
  v3 = sub_10006080C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000177B4@<X0>(uint64_t *a1@<X8>)
{
  sub_10006081C();
  v2 = sub_1000607EC();

  *a1 = v2;
  return result;
}

uint64_t sub_1000177F8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000607EC();

  *a2 = v3;
  return result;
}

uint64_t sub_100017840@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006081C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001786C(uint64_t a1)
{
  v2 = sub_1000174F0(&qword_100099610, 255, type metadata accessor for Name, &unk_100078FA0);
  v3 = sub_1000174F0(&qword_100099618, 255, type metadata accessor for Name, &unk_100078F40);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100017930()
{
  sub_10006081C();
  v0 = sub_10006088C();

  return v0;
}

uint64_t sub_10001796C(uint64_t a1)
{
  sub_10006081C();
  sub_10006085C();
}

Swift::Int sub_1000179C0(uint64_t a1)
{
  sub_10006081C();
  sub_100060EBC();
  sub_10006085C();
  v1 = sub_100060EDC();

  return v1;
}

uint64_t sub_100017A34(void *a1, uint64_t *a2)
{
  v2 = sub_10006081C();
  v4 = v3;
  if (v2 == sub_10006081C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100060E1C();
  }

  return v7 & 1;
}

uint64_t sub_100017AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10[3] = a2;
  v10[2] = a1;
  type metadata accessor for ApplicationServicesActor();
  sub_1000174F0(&qword_1000995E0, v5, type metadata accessor for ApplicationServicesActor, &unk_100078DF0);
  sub_100060B8C();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100018620;
  *(v6 + 24) = v10;
  sub_100018678(&v11);
  if (!v3)
  {
    v7 = v11;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *a3 = v7;
      return result;
    }

    __break(1u);
  }

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

uint64_t sub_100017C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v11 = a1;
  v12 = a2;
  type metadata accessor for ApplicationServicesActor();
  sub_1000174F0(&qword_1000995E0, v5, type metadata accessor for ApplicationServicesActor, &unk_100078DF0);
  sub_100060B8C();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100018544;
  *(v6 + 24) = &v10;
  sub_100018594(&v13);
  if (!v3)
  {
    v9 = v13;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *a3 = v9;
      return result;
    }

    __break(1u);
  }

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

char *sub_100017DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = sub_100017538(&unk_1000995C0, &unk_100078E60);
  __chkstk_darwin(v5 - 8, v6);
  v31 = &v30 - v7;
  v8 = sub_10006074C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10006099C();
  v13 = *(v30 - 8);
  __chkstk_darwin(v30, v14);
  v34 = sub_10006068C();
  v35 = &off_10008AA40;
  v33[0] = a2;
  v15 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_analyticsReporter;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v16 = sub_10001762C(v8, qword_10009BED0);
  v17 = *(v9 + 16);
  v17(a3 + v15, v16, v8);
  *(a3 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_providers) = &off_100089C18;
  *(a3 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageTypes) = &off_100089C48;
  v18 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messagesChangedPublisher;
  sub_100017538(&unk_10009A6F0, &qword_10007A1D0);
  swift_allocObject();
  *(a3 + v18) = sub_10006078C();
  v19 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_operationQueue;
  sub_1000603AC();
  sub_10006097C();
  *(a3 + v19) = sub_10006038C();
  v20 = v32;
  v17(a3 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger, v32, v8);
  v21 = (a3 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_onVoicemailsChanged);
  *v21 = 0;
  v21[1] = 0;
  sub_10001827C(v33, a3 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController);
  v17(v12, v20, v8);
  type metadata accessor for MessageStoreDelegate(0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtensionP33_8025293584B3B4CB1E2F1298DE5F5F7E20MessageStoreDelegate_logger, v12, v8);
  *(a3 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreDelegate) = v22;
  v23 = sub_100028D14(1397576774, 0xE400000000000000);
  v24 = v31;
  (*(v13 + 56))(v31, 1, 1, v30);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v26 = sub_1000174F0(&qword_1000995D0, 255, type metadata accessor for VoicemailActor, &unk_1000790A8);
  v27 = swift_allocObject();
  v27[2] = inited;
  v27[3] = v26;
  v27[4] = v23;
  v28 = v23;
  sub_100037558(0, 0, v24, &unk_100078E70, v27);

  sub_1000184C8(v33, v34);

  sub_10006062C();

  (*(v9 + 8))(v20, v8);
  sub_100018230(v33);
  return v28;
}

uint64_t sub_100018230(void *a1)
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

uint64_t sub_10001827C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000182E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100018320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000183D4;

  return sub_10003852C(a1, v4, v5, v6);
}

uint64_t sub_1000183D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1000184C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_100018544@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

double sub_100018594@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

void *sub_1000185D8@<X0>(void *a1@<X8>)
{
  result = sub_100016EE0();
  *a1 = result;
  return result;
}

void *sub_100018620@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

void *sub_100018678@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1000186BC(uint64_t a1)
{
  v2 = type metadata accessor for VoicemailAccountManagerComposer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001872C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100018860()
{
  v0 = sub_100060A6C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100060A8C();
  __chkstk_darwin(v5, v6);
  v7 = sub_1000607BC();
  __chkstk_darwin(v7 - 8, v8);
  sub_1000174A4();
  sub_1000607AC();
  v10[1] = _swiftEmptyArrayStorage;
  sub_100018D1C(&qword_100099548, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100017538(&qword_100099550, &qword_1000790D0);
  sub_100017580();
  sub_100060B2C();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100060A9C();
  qword_10009BDF8 = result;
  return result;
}

uint64_t sub_100018AE4()
{
  if (qword_100099398 != -1)
  {
    swift_once();
  }

  return sub_100060AAC();
}

id sub_100018B8C()
{
  if (qword_100099398 != -1)
  {
    swift_once();
  }

  v1 = qword_10009BDF8;
  qword_10009BE00 = qword_10009BDF8;

  return v1;
}

id sub_100018C14(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id sub_100018C78(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VoicemailQueueManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100018D1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100018DD4()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 40))(ObjectType, v1);
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v4 = sub_10006074C();
  sub_10001762C(v4, qword_10009BED0);
  v5 = v0;
  v6 = sub_10006072C();
  v7 = sub_100060A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    swift_unknownObjectRetain();
    sub_100017538(&qword_1000998C0, &unk_1000791B0);
    v10 = sub_10006083C();
    v12 = sub_100046270(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "VMD(%s) online: %{BOOL}d", v8, 0x12u);
    sub_100018230(v9);
  }

  return v3 & 1;
}

uint64_t sub_100018FD8(const char *a1, ...)
{
  v3 = *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(ObjectType, v3);
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v6 = sub_10006074C();
  sub_10001762C(v6, qword_10009BED0);
  v7 = v1;
  v8 = sub_10006072C();
  v9 = sub_100060A4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    swift_unknownObjectRetain();
    sub_100017538(&qword_1000998C0, &unk_1000791B0);
    v12 = sub_10006083C();
    v14 = sub_100046270(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 0x12u);
    sub_100018230(v11);
  }

  return v5 & 1;
}

uint64_t sub_1000191D4()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 56))(ObjectType, v1);
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v4 = sub_10006074C();
  sub_10001762C(v4, qword_10009BED0);
  v5 = v0;
  v6 = sub_10006072C();
  v7 = sub_100060A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    swift_unknownObjectRetain();
    sub_100017538(&qword_1000998C0, &unk_1000791B0);
    v10 = sub_10006083C();
    v12 = sub_100046270(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v6, v7, "VMD(%s) storageUsage: %lu", v8, 0x16u);
    sub_100018230(v9);
  }

  return v3;
}

uint64_t sub_1000193CC()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 64))(ObjectType, v1);
  if (v3 >> 62)
  {
    v4 = sub_100060CFC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v5 = sub_10006074C();
  sub_10001762C(v5, qword_10009BED0);
  v6 = v0;
  v7 = sub_10006072C();
  v8 = sub_100060A4C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    swift_unknownObjectRetain();
    sub_100017538(&qword_1000998C0, &unk_1000791B0);
    v11 = sub_10006083C();
    v13 = sub_100046270(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) estimatedAccountCount: %ld", v9, 0x16u);
    sub_100018230(v10);
  }

  return v4;
}

void *sub_100019628()
{
  v57 = sub_10006036C();
  v1 = *(v57 - 8);
  __chkstk_darwin(v57, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd;
  v7 = *(v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd);
  v6 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v9 = v6[8];
  v55 = ObjectType;
  v56 = v7;
  v58 = v6;
  v10 = v9(ObjectType, v6);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  v42 = v10;
  v11 = sub_100060CFC();
  v10 = v42;
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = v10;
  v63 = _swiftEmptyArrayStorage;
  result = sub_100060C5C();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    v15 = v58[11];
    v16 = v58[12];
    v50 = v58 + 12;
    v51 = v15;
    v52 = v58 + 11;
    v53 = v11;
    v17 = v58[13];
    v48 = v58 + 13;
    v49 = v16;
    v18 = v12;
    v46 = v12 & 0xC000000000000001;
    v47 = v17;
    v44 = (v1 + 32);
    v45 = (v1 + 8);
    v54 = v12;
    do
    {
      v59 = v14;
      if (v46)
      {
        v19 = sub_100060C0C();
      }

      else
      {
        v19 = *(v18 + 8 * v14 + 32);
      }

      v20 = v19;
      v21 = [v19 UUID];
      sub_10006035C();

      v22 = v55;
      v23 = v58;
      v61 = v51(v4, v55, v58);
      v24 = *v45;
      v25 = v57;
      (*v45)(v4, v57);
      v26 = [v20 UUID];
      sub_10006035C();

      v60 = v49(v4, v22, v23);
      v24(v4, v25);
      v27 = [v20 UUID];
      sub_10006035C();

      v28 = v47(v4, v22, v23);
      v24(v4, v25);
      v29 = type metadata accessor for VoicemailAccount(0);
      v30 = objc_allocWithZone(v29);
      v31 = [v20 UUID];
      sub_10006035C();

      (*v44)(&v30[OBJC_IVAR___MPVoicemailAccount_uuid], v4, v25);
      v32 = [v20 accountDescription];
      if (v32)
      {
        v33 = v32;
        v34 = sub_10006081C();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = &v30[OBJC_IVAR___MPVoicemailAccount_accountDescription];
      *v37 = v34;
      v37[1] = v36;
      v30[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = v61 & 1;
      v30[OBJC_IVAR___MPVoicemailAccount_subscribed] = v60 & 1;
      v30[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = v28 & 1;
      v38 = [v20 isProvisioned];
      v30[OBJC_IVAR___MPVoicemailAccount_provisioned] = v38;
      v39 = [v20 handle];
      v40 = v39;
      v41 = v59;
      if (v39)
      {
      }

      v14 = v41 + 1;
      v30[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v40 != 0;
      v62.receiver = v30;
      v62.super_class = v29;
      objc_msgSendSuper2(&v62, "init");

      sub_100060C3C();
      sub_100060C6C();
      sub_100060C7C();
      sub_100060C4C();
      v18 = v54;
    }

    while (v53 != v14);

    return v63;
  }

  return result;
}

uint64_t sub_100019BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_100017538(&qword_1000998B0, &qword_100079190);
  v4 = swift_task_alloc();
  v5 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  v3[6] = v4;
  v3[7] = v5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v7 = sub_10006091C();

  return _swift_task_switch(sub_100019CB0, v7, v6);
}

uint64_t sub_100019CDC()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  sub_10001BD14(v2, v1 + v4);
  v5 = v3;
  sub_10006077C();
  sub_10001BD84(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001AAFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100017538(&unk_1000995C0, &unk_100078E60);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_10006099C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v12 = sub_10001B6F0();
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = v2;
  v13[5] = v9;
  v14 = v2;

  sub_100037848(0, 0, v8, &unk_100079180, v13);
  sub_10006075C();
  swift_allocObject();
  v15 = sub_10006076C();

  return v15;
}

uint64_t sub_10001AC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v7 = sub_10006091C();

  return _swift_task_switch(sub_10001AD38, v7, v6);
}

uint64_t sub_10001AD38()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher);

  sub_100017538(&qword_1000998A0, &qword_10007AB00);
  sub_10001B89C();
  v2 = sub_10006079C();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10001AE24(char *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(sub_100017538(&qword_1000998B0, &qword_100079190) + 48);

  v4(v5, &a1[v6]);
}

uint64_t sub_10001AFE0(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t sub_10001B080()
{
  v1 = [v0 accounts];
  sub_10001BE04();
  v2 = sub_1000608CC();

  return v2;
}

id sub_10001B0FC()
{
  v1 = [v0 transcriptionProgress];

  return v1;
}

id sub_10001B134()
{
  v1 = v0;
  isa = sub_10006032C().super.isa;
  v3 = [v1 isCallVoicemailSupportedForAccountUUID:isa];

  return v3;
}

id sub_10001B180()
{
  v1 = v0;
  isa = sub_10006032C().super.isa;
  v3 = [v1 isAccountSubscribed:isa];

  return v3;
}

id sub_10001B1CC()
{
  v1 = v0;
  isa = sub_10006032C().super.isa;
  v3 = [v1 isGreetingChangeSupportedForAccountUUID:isa];

  return v3;
}

id sub_10001B218()
{
  v1 = v0;
  isa = sub_10006032C().super.isa;
  v3 = [v1 isPasscodeChangeSupportedForAccountUUID:isa];

  return v3;
}

id sub_10001B264()
{
  v1 = v0;
  isa = sub_10006032C().super.isa;
  v3 = [v1 maximumPasscodeLengthForAccountUUID:isa];

  return v3;
}

id sub_10001B2B0()
{
  v1 = v0;
  isa = sub_10006032C().super.isa;
  v3 = [v1 minimumPasscodeLengthForAccountUUID:isa];

  return v3;
}

uint64_t sub_10001B2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_1000607EC();
  isa = sub_10006032C().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10001B3E0;
  v13[3] = &unk_100089F98;
  v11 = _Block_copy(v13);

  [v6 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

void sub_10001B3E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

double sub_10001B458()
{
  v1 = v0;
  isa = sub_10006032C().super.isa;
  [v1 maximumGreetingDurationForAccountUUID:isa];
  v4 = v3;

  return v4;
}

uint64_t sub_10001B4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isa = sub_10006032C().super.isa;
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10004AC30;
  v10[3] = &unk_100089F70;
  v8 = _Block_copy(v10);

  [v4 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

uint64_t sub_10001B578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = sub_10006032C().super.isa;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001B3E0;
  v12[3] = &unk_100089F48;
  v10 = _Block_copy(v12);

  [v5 setGreeting:a1 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t sub_10001B678()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B6B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001B6F0()
{
  result = qword_1000995D0;
  if (!qword_1000995D0)
  {
    type metadata accessor for VoicemailActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000995D0);
  }

  return result;
}

uint64_t sub_10001B748()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001B790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10001AC9C(a1, v4, v5, v7, v6);
}

void sub_10001B850()
{
  sub_10006075C();

  sub_1000609BC();
}

unint64_t sub_10001B89C()
{
  result = qword_1000998A8;
  if (!qword_1000998A8)
  {
    sub_1000175E4(&qword_1000998A0, &qword_10007AB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000998A8);
  }

  return result;
}

char *sub_10001B910(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  sub_100017538(&qword_1000998A0, &qword_10007AB00);
  swift_allocObject();
  *&v1[v4] = sub_10006078C();
  *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  *v5 = a1;
  *(v5 + 1) = &off_100089D88;
  v32.receiver = v1;
  v32.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v32, "init");
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for VoicemailDelegateDecorator(0);
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_queue;
  sub_1000603AC();
  v12 = v7;
  *&v10[v11] = sub_10006039C();
  v13 = &v10[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_lastTask];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_logger;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v15 = sub_10006074C();
  v16 = sub_10001762C(v15, qword_10009BED0);
  (*(*(v15 - 8) + 16))(&v10[v14], v16, v15);
  v17 = &v10[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate];
  *v17 = &unk_1000791A0;
  *(v17 + 1) = v8;
  v31.receiver = v10;
  v31.super_class = v9;
  v18 = objc_msgSendSuper2(&v31, "init");
  v19 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  v20 = swift_getObjectType();
  v21 = *(v19 + 16);
  swift_unknownObjectRetain();
  v22 = v18;
  v21(v18, v20, v19);
  swift_unknownObjectRelease();
  v30 = v9;
  *&v29 = v22;
  v23 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables;
  swift_beginAccess();
  v24 = *&v12[v23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[v23] = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_100051318(0, *(v24 + 2) + 1, 1, v24);
    *&v12[v23] = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_100051318((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  sub_10001BD04(&v29, &v24[32 * v27 + 32]);
  *&v12[v23] = v24;
  swift_endAccess();

  return v12;
}

uint64_t sub_10001BC20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BC58(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000183D4;

  return sub_100019BD0(a1, a2, v6);
}

_OWORD *sub_10001BD04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001BD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017538(&qword_1000998B8, &qword_100079720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BD84(uint64_t a1)
{
  v2 = sub_100017538(&qword_1000998B0, &qword_100079190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001BE04()
{
  result = qword_1000998C8;
  if (!qword_1000998C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000998C8);
  }

  return result;
}

id sub_10001BEB8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(sub_1000603CC()) init];
  sub_1000603BC();

  v3 = [*(v1 + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript) transcriptionString];
  if (!v3)
  {
    sub_10006081C();
    v3 = sub_1000607EC();
  }

  v4 = [objc_allocWithZone(NSAttributedString) initWithString:v3];

  return v4;
}

id sub_10001C370(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___MPVisualMessage_vmMessage];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_10006081C();

    v8 = sub_1000607EC();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

id sub_10001C8B0(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a4] = a3;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = a3;
  return objc_msgSendSuper2(&v10, "init");
}

char *sub_10001C92C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100060CFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_100046818(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100060C0C();
        sub_100017538(&unk_100099930, &qword_1000791F8);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100046818((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_10001BD04(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_100017538(&unk_100099930, &qword_1000791F8);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_100046818((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_10001BD04(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CD4C(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10001CD68(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10001CD7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001CDC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001CE0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_10001CE34(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_100060BFC(43);

      v2 = 0xD000000000000028;
      goto LABEL_7;
    }

LABEL_5:
    sub_100060BFC(42);

    v2 = 0xD000000000000027;
LABEL_7:
    v4 = v2;
    type metadata accessor for MessageID(0);
    v5._countAndFlagsBits = sub_1000608DC();
    sub_10006086C(v5);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    sub_10006086C(v6);
    return v4;
  }

  if (a2 == 2)
  {
    goto LABEL_5;
  }

  return 0xD000000000000025;
}

Swift::Int sub_10001D394()
{
  v1 = *v0;
  sub_100060EBC();
  sub_100060ECC(v1);
  return sub_100060EDC();
}

Swift::Int sub_10001D408(uint64_t a1)
{
  v2 = *v1;
  sub_100060EBC();
  sub_100060ECC(v2);
  return sub_100060EDC();
}

uint64_t sub_10001D44C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000016;
    if (v1 != 1)
    {
      v5 = 0x6269726373627573;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1684632949;
    }
  }

  else
  {
    v2 = 0x6C646E6148736168;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0x6F697369766F7270;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10001D540@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001E5A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001D580(uint64_t a1)
{
  v2 = sub_10001E270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D5BC(uint64_t a1)
{
  v2 = sub_10001E270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for VoicemailAccount(uint64_t a1)
{
  result = qword_100099968;
  if (!qword_100099968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001D6CC(uint64_t a1)
{
  result = sub_10006036C();
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

uint64_t sub_10001D778(void *a1)
{
  v3 = sub_100017538(&qword_100099990, &unk_100079400);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_1000184C8(a1, a1[3]);
  sub_10001E270();
  sub_100060EFC();
  v9[15] = 0;
  sub_10006036C();
  sub_10001E914(&qword_100099998, &protocol conformance descriptor for UUID);
  sub_100060DCC();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  sub_100060DAC();
  v9[13] = 2;
  sub_100060DAC();
  v9[12] = 3;
  sub_100060DAC();
  v9[11] = 4;
  sub_100060DAC();
  v9[10] = 5;
  sub_100060DAC();
  v9[9] = 6;
  sub_100060D9C();
  return (*(v4 + 8))(v7, v3);
}

void *sub_10001DA08(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_10006036C();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100017538(&qword_100099978, &qword_1000793F8);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22, v8);
  v10 = &v20 - v9;
  sub_1000184C8(a1, a1[3]);
  sub_10001E270();
  v23 = v10;
  sub_100060EEC();
  if (v1)
  {
    sub_100018230(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v7;
    v20 = a1;
    v12 = v21;
    v27 = 0;
    sub_10001E914(&qword_100099988, &protocol conformance descriptor for UUID);
    v13 = v22;
    sub_100060D8C();
    v15 = *(v12 + 32);
    v16 = v24;
    v15(&v24[OBJC_IVAR___MPVoicemailAccount_uuid], v6, v3);
    v27 = 1;
    v16[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = sub_100060D6C() & 1;
    v27 = 2;
    v16[OBJC_IVAR___MPVoicemailAccount_subscribed] = sub_100060D6C() & 1;
    v27 = 3;
    v16[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = sub_100060D6C() & 1;
    v27 = 4;
    v16[OBJC_IVAR___MPVoicemailAccount_provisioned] = sub_100060D6C() & 1;
    v27 = 5;
    v16[OBJC_IVAR___MPVoicemailAccount_hasHandle] = sub_100060D6C() & 1;
    v27 = 6;
    v17 = sub_100060D5C();
    v18 = &v16[OBJC_IVAR___MPVoicemailAccount_accountDescription];
    *v18 = v17;
    v18[1] = v19;
    v26.receiver = v16;
    v26.super_class = ObjectType;
    a1 = objc_msgSendSuper2(&v26, "init");
    (*(v11 + 8))(v23, v13);
    sub_100018230(v20);
  }

  return a1;
}

void *sub_10001DE68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_10001DA08(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10001DF44()
{
  sub_100060BFC(119);
  v8._countAndFlagsBits = 0xD000000000000017;
  v8._object = 0x80000001000757D0;
  sub_10006086C(v8);
  sub_10006036C();
  sub_10001E914(&qword_1000999A8, &protocol conformance descriptor for UUID);
  v9._countAndFlagsBits = sub_100060DFC();
  sub_10006086C(v9);

  v10._object = 0x80000001000757F0;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  sub_10006086C(v10);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_10006086C(v1);

  v11._countAndFlagsBits = 0x6972637362757320;
  v11._object = 0xED0000203A646562;
  sub_10006086C(v11);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_10006086C(v3);

  v12._object = 0x8000000100075810;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  sub_10006086C(v12);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_10006086C(v5);

  v13._countAndFlagsBits = 0xD000000000000015;
  v13._object = 0x8000000100075830;
  sub_10006086C(v13);

  sub_100017538(&qword_100099E50, &qword_100079410);
  v14._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v14);

  return 0;
}

unint64_t sub_10001E270()
{
  result = qword_100099980;
  if (!qword_100099980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099980);
  }

  return result;
}

uint64_t sub_10001E2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017538(&qword_1000999A0, &unk_1000799F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E334(uint64_t a1)
{
  v2 = sub_100017538(&qword_1000999A0, &unk_1000799F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10001E39C(void *a1, char a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10006036C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 UUID];
  sub_10006035C();

  (*(v11 + 32))(&v4[OBJC_IVAR___MPVoicemailAccount_uuid], v14, v10);
  v16 = [a1 accountDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_10006081C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v4[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v21 = v18;
  v21[1] = v20;
  v4[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2 & 1;
  v4[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3 & 1;
  v4[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4 & 1;
  v22 = [a1 isProvisioned];
  v4[OBJC_IVAR___MPVoicemailAccount_provisioned] = v22;
  v23 = [a1 handle];
  v24 = v23;
  if (v23)
  {
  }

  v4[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v24 != 0;
  v26.receiver = v4;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, "init");
}

uint64_t sub_10001E5A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_100060E1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100075660 == a2 || (sub_100060E1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_100060E1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100075690 == a2 || (sub_100060E1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F697369766F7270 && a2 == 0xEB0000000064656ELL || (sub_100060E1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C646E6148736168 && a2 == 0xE900000000000065 || (sub_100060E1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000756C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_100060E1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10001E80C(uint64_t a1, uint64_t a2)
{
  if ((sub_10006034C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  v5 = *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription) == *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription) && v4 == v5;
    if (!v6 && (sub_100060E1C() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    goto LABEL_15;
  }

  if (*(a1 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) == *(a2 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) && *(a1 + OBJC_IVAR___MPVoicemailAccount_subscribed) == *(a2 + OBJC_IVAR___MPVoicemailAccount_subscribed) && *(a1 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) == *(a2 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) && *(a1 + OBJC_IVAR___MPVoicemailAccount_provisioned) == *(a2 + OBJC_IVAR___MPVoicemailAccount_provisioned))
  {
    v7 = *(a1 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ *(a2 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ 1;
    return v7 & 1;
  }

LABEL_15:
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_10001E914(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10006036C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailAccount.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailAccount.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001EACC()
{
  result = qword_1000999B0;
  if (!qword_1000999B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000999B0);
  }

  return result;
}

unint64_t sub_10001EB24()
{
  result = qword_1000999B8;
  if (!qword_1000999B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000999B8);
  }

  return result;
}

unint64_t sub_10001EB7C()
{
  result = qword_1000999C0;
  if (!qword_1000999C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000999C0);
  }

  return result;
}

unint64_t sub_10001EBD0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100020840(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int sub_10001EC1C()
{
  v1 = *v0;
  sub_100060EBC();
  sub_100060ECC(v1);
  return sub_100060EDC();
}

Swift::Int sub_10001EC94(uint64_t a1)
{
  v2 = *v1;
  sub_100060EBC();
  sub_100060ECC(v2);
  return sub_100060EDC();
}

unint64_t *sub_10001ECD8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Int sub_10001ED00()
{
  v1 = v0;
  v2 = sub_10006036C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v7, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100060EBC();
  sub_100020780(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_100060ECC(1uLL);
    sub_10001FD50(&qword_100099AC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000607DC();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    sub_100060ECC(0);
    sub_100060ECC(v11);
  }

  return sub_100060EDC();
}

void sub_10001EF3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10006036C();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100020780(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v11, v3);
    sub_100060ECC(1uLL);
    sub_10001FD50(&qword_100099AC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000607DC();
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v12 = *v11;
    sub_100060ECC(0);
    sub_100060ECC(v12);
  }
}

Swift::Int sub_10001F0F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100060EBC();
  sub_100020780(v3, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v12, v4);
    sub_100060ECC(1uLL);
    sub_10001FD50(&qword_100099AC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000607DC();
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v13 = *v12;
    sub_100060ECC(0);
    sub_100060ECC(v13);
  }

  return sub_100060EDC();
}

uint64_t sub_10001F2D8()
{
  v1 = sub_10006036C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v6, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100020780(v0 + OBJC_IVAR___MPMessageID_value, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    v10 = sub_10006031C();
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  else
  {
    v12[1] = *v9;
    return sub_100060DFC();
  }
}

id sub_10001F64C(void *a1)
{
  v1 = a1;
  sub_10001F2D8();

  v2 = sub_1000607EC();

  return v2;
}

uint64_t sub_10001F8CC(uint64_t a1)
{
  result = type metadata accessor for MessageID.Value(319);
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

uint64_t sub_10001F97C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001FA00(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E2C4(a1, v12);
  if (!v13)
  {
    sub_100020850(v12, &qword_1000999A0, &unk_1000799F0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v7 = v11;
  sub_100020780(v11 + OBJC_IVAR___MPMessageID_value, v6);
  v8 = sub_10001FE08(v6, v1 + OBJC_IVAR___MPMessageID_value);

  sub_1000207E4(v6);
  return v8 & 1;
}

uint64_t sub_10001FBFC(uint64_t a1)
{
  result = sub_10006036C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10001FCB4()
{
  result = qword_100099AB0;
  if (!qword_100099AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099AB0);
  }

  return result;
}

uint64_t sub_10001FD50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001FE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessageID.Value(0);
  v11 = __chkstk_darwin(v9, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = (&v26 - v15);
  v17 = sub_100017538(&qword_100099AC0, &unk_100079710);
  v19 = __chkstk_darwin(v17 - 8, v18);
  v21 = &v26 - v20;
  v22 = *(v19 + 56);
  sub_100020780(a1, &v26 - v20);
  sub_100020780(a2, &v21[v22]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100020780(v21, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *v16 == *&v21[v22];
      goto LABEL_6;
    }

LABEL_8:
    sub_100020850(v21, &qword_100099AC0, &unk_100079710);
    v23 = 0;
    return v23 & 1;
  }

  sub_100020780(v21, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v21[v22], v4);
  v23 = sub_10006034C();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v13, v4);
LABEL_6:
  sub_1000207E4(v21);
  return v23 & 1;
}

uint64_t sub_1000200A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006036C();
  v48 = *(v4 - 8);
  v49 = v4;
  v6 = __chkstk_darwin(v4, v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v47 = &v45 - v9;
  v10 = type metadata accessor for MessageID.Value(0);
  v12 = __chkstk_darwin(v10, v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v45 - v17;
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v45 - v21;
  __chkstk_darwin(v20, v23);
  v25 = (&v45 - v24);
  v26 = sub_100017538(&qword_100099AC0, &unk_100079710);
  v28 = __chkstk_darwin(v26 - 8, v27);
  v30 = &v45 - v29;
  v31 = *(v28 + 56);
  sub_100020780(a1, &v45 - v29);
  v50 = a2;
  sub_100020780(a2, &v30[v31]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100020780(v30, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v47;
      v32 = v48;
      v34 = *(v48 + 32);
      v35 = v49;
      v34(v47, v22, v49);
      v36 = v46;
      v34(v46, &v30[v31], v35);
      if (sub_10006034C())
      {
        v37 = *(v32 + 8);
        v37(v36, v35);
        v37(v33, v35);
LABEL_7:
        sub_1000207E4(v30);
        v40 = 0;
        return v40 & 1;
      }

      v40 = sub_10006033C();
      v43 = *(v32 + 8);
      v43(v36, v35);
      v43(v33, v35);
LABEL_18:
      sub_1000207E4(v30);
      return v40 & 1;
    }

    (*(v48 + 8))(v22, v49);
  }

  else
  {
    sub_100020780(v30, v25);
    v38 = *v25;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = *&v30[v31];
      if (v38 == v39)
      {
        goto LABEL_7;
      }

      v40 = v38 < v39;
      goto LABEL_18;
    }
  }

  sub_100020780(a1, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000207E4(v18);
    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

  sub_100020780(v50, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000207E4(v14);
    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  v40 = v41 < v42;
  sub_100020850(v30, &qword_100099AC0, &unk_100079710);
  return v40 & 1;
}

uint64_t sub_100020494(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_10006036C();
  v31 = *(v3 - 8);
  v5 = __chkstk_darwin(v3, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for MessageID.Value(0);
  v13 = __chkstk_darwin(v11, v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v16);
  v18 = &v31 - v17;
  v19 = sub_100017538(&qword_100099AC0, &unk_100079710);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v23 = &v31 - v22;
  v24 = OBJC_IVAR___MPMessageID_value;
  v25 = *(v21 + 56);
  sub_100020780(a1 + OBJC_IVAR___MPMessageID_value, &v31 - v22);
  sub_100020780(v32 + v24, &v23[v25]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100020780(v23, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v31;
      v27 = *(v31 + 32);
      v27(v10, v18, v3);
      v27(v7, &v23[v25], v3);
      v28 = sub_10006033C();
      v29 = *(v26 + 8);
      v29(v7, v3);
      v29(v10, v3);
    }

    else
    {
      (*(v31 + 8))(v18, v3);
      sub_1000207E4(&v23[v25]);
      v28 = 1;
    }
  }

  else
  {
    sub_100020780(v23, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000207E4(&v23[v25]);
      v28 = 0;
    }

    else
    {
      v28 = *v15 < *&v23[v25];
    }
  }

  sub_1000207E4(v23);
  return v28 & 1;
}

uint64_t sub_100020780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageID.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000207E4(uint64_t a1)
{
  v2 = type metadata accessor for MessageID.Value(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100020840(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100020850(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100017538(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000208C4()
{
  result = qword_100099AD0;
  if (!qword_100099AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099AD0);
  }

  return result;
}

id sub_100020954()
{
  sub_100017538(&qword_100099B38, &qword_1000799E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000797E0;
  if (qword_1000993B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10009BE50;
  *(v0 + 32) = qword_10009BE50;
  v2 = qword_1000993B8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_10009BE58;
  *(v0 + 40) = qword_10009BE58;
  v5 = qword_1000993C0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_10009BE60;
  *(v0 + 48) = qword_10009BE60;
  v8 = qword_1000993C8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_10009BE68;
  *(v0 + 56) = qword_10009BE68;
  v11 = qword_1000993D0;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_10009BE70;
  *(v0 + 64) = qword_10009BE70;
  v14 = qword_1000993D8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_10009BE78;
  *(v0 + 72) = qword_10009BE78;
  v17 = qword_1000993E0;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_10009BE80;
  *(v0 + 80) = qword_10009BE80;
  v20 = qword_1000993E8;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_10009BE88;
  *(v0 + 88) = qword_10009BE88;
  v23 = qword_1000993F0;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_10009BE90;
  *(v0 + 96) = qword_10009BE90;
  qword_10009BE48 = v0;

  return v25;
}

id sub_100020E54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *a3 = result;
  return result;
}

BOOL sub_100020EDC(uint64_t a1)
{
  swift_getObjectType();
  sub_10001E2C4(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      v4 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      return v3 == v4;
    }
  }

  else
  {
    sub_10001E334(v7);
  }

  return 0;
}

uint64_t *sub_100021050@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, "init");
  *a2 = result;
  return result;
}

uint64_t sub_1000210B0@<X0>(void *a2@<X8>)
{
  if (qword_1000993A8 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  *a2 = qword_10009BE48;
}

void *sub_100021120@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  *a1 = result;
  return result;
}

void sub_100021198(Class a1@<X1>, char **a2@<X0>, objc_class **a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *(v10 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v12 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] | v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_10002125C(Class a1@<X1>, uint64_t *a2@<X0>, objc_class **a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *(v10 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v12 = *(v6 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_10002131C(Class a1@<X1>, char **a2@<X0>, objc_class **a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *(v10 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v12 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] ^ v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

BOOL sub_1000213E0(char ***a1, char **a2)
{
  v2 = *a2;
  v3 = sub_100021414(a1, *a2);

  return v3;
}

BOOL sub_100021414(char ***a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v7 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v8 = type metadata accessor for VoicemailAccountManagerUpdate();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v7;
  v23.receiver = v9;
  v23.super_class = v8;
  v10 = objc_msgSendSuper2(&v23, "init");
  v11 = *(v10 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v12 = *&a2[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12 & v11;
  v22.receiver = v13;
  v22.super_class = v8;
  v14 = objc_msgSendSuper2(&v22, "init");
  v15 = sub_100060ADC();
  if ((v15 & 1) == 0)
  {

    v16 = *&v5[v6];
    v14 = a2;

    v17 = objc_allocWithZone(v8);
    *&v17[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v16 | v12;
    v21.receiver = v17;
    v21.super_class = v8;
    v18 = objc_msgSendSuper2(&v21, "init");

    *v3 = v18;
  }

  *a1 = v14;
  return (v15 & 1) == 0;
}

id sub_100021540@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002156C(*a1);
  *a2 = result;
  return result;
}

id sub_10002156C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v6 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v7 = type metadata accessor for VoicemailAccountManagerUpdate();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v33.receiver = v8;
  v33.super_class = v7;
  v9 = objc_msgSendSuper2(&v33, "init");
  v10 = *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v11 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v12 = objc_allocWithZone(v7);
  *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v11 & v10;
  v32.receiver = v12;
  v32.super_class = v7;
  v13 = objc_msgSendSuper2(&v32, "init");
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v31.receiver = v14;
  v31.super_class = v7;
  v15 = objc_msgSendSuper2(&v31, "init");
  v16 = sub_100060ADC();

  if (v16)
  {

    return 0;
  }

  else
  {
    v17 = *&v4[v5];
    v18 = objc_allocWithZone(v7);
    *&v18[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v17;
    v30.receiver = v18;
    v30.super_class = v7;
    v19 = objc_msgSendSuper2(&v30, "init");
    v20 = *&v19[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

    v21 = objc_allocWithZone(v7);
    *&v21[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v20 ^ v11;
    v29.receiver = v21;
    v29.super_class = v7;
    v22 = objc_msgSendSuper2(&v29, "init");
    v23 = *&v4[v5];

    v24 = *(v22 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v23;
    v25 = objc_allocWithZone(v7);
    *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v24;
    v28.receiver = v25;
    v28.super_class = v7;
    v26 = objc_msgSendSuper2(&v28, "init");

    *v2 = v26;
  }

  return v13;
}

void sub_100021710(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_100021750(*a1);

  *a2 = v4;
}

id sub_100021750(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v5 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = type metadata accessor for VoicemailAccountManagerUpdate();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, "init");
  v9 = *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v10 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10 & v9;
  v20.receiver = v11;
  v20.super_class = v6;
  v12 = objc_msgSendSuper2(&v20, "init");
  v13 = *&v3[v4];

  v14 = objc_allocWithZone(v6);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v13 | v10;
  v19.receiver = v14;
  v19.super_class = v6;
  *v1 = objc_msgSendSuper2(&v19, "init");
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v18.receiver = v15;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, "init");
  LOBYTE(v6) = sub_100060ADC();

  if (v6)
  {

    return 0;
  }

  return v12;
}

void sub_100021888(char **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] | v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, "init");

  *v2 = v8;
}

uint64_t *sub_100021914(uint64_t *a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  result = objc_msgSendSuper2(&v9, "init");
  *v2 = result;
  return result;
}

void sub_100021998(char **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] ^ v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, "init");

  *v2 = v8;
}

void sub_100021A24(Class a1@<X1>, uint64_t *a2@<X0>, objc_class **a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v9 = *(*v3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v10 = objc_allocWithZone(a1);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v26.receiver = v10;
  v26.super_class = a1;
  v11 = [(objc_class *)&v26 init];
  v12 = *(v11 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v13 = *(v6 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v12;
  v14 = objc_allocWithZone(a1);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v13;
  v25.receiver = v14;
  v25.super_class = a1;
  v15 = [(objc_class *)&v25 init];
  v16 = *&v7[v8];
  v17 = objc_allocWithZone(a1);
  *&v17[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v16;
  v24.receiver = v17;
  v24.super_class = a1;
  v18 = [(objc_class *)&v24 init];
  v19 = *(v18 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v20 = *(v15 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v19;
  v21 = objc_allocWithZone(a1);
  *&v21[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v20;
  v23.receiver = v21;
  v23.super_class = a1;
  v22 = [(objc_class *)&v23 init];

  *a3 = v22;
}

uint64_t sub_100021B48(uint64_t *a1, Class a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = *(v7 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v9 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  LOBYTE(v3) = sub_100060ADC();

  return v3 & 1;
}

uint64_t sub_100021C38(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v17, "init");
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v9 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(ObjectType);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v16.receiver = v10;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = objc_allocWithZone(ObjectType);
  *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v15.receiver = v12;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");
  LOBYTE(ObjectType) = sub_100060ADC();

  return ObjectType & 1;
}

uint64_t sub_100021D28(uint64_t *a1, Class a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = *(*a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = *(v7 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v9 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  LOBYTE(v3) = sub_100060ADC();

  return v3 & 1;
}

uint64_t sub_100021DEC(objc_class *a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(a1);
  *&v2[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = [(objc_class *)&v5 init];
  LOBYTE(v1) = sub_100060ADC();

  return v1 & 1;
}

void sub_100021E80(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v5 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = type metadata accessor for VoicemailAccountManagerUpdate();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v19.receiver = v7;
  v19.super_class = v6;
  v8 = objc_msgSendSuper2(&v19, "init");
  v9 = *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v10 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v9;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
  v18.receiver = v11;
  v18.super_class = v6;
  v12 = objc_msgSendSuper2(&v18, "init");
  v13 = *&v3[v4];

  v14 = *(v12 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v14;
  v17.receiver = v15;
  v17.super_class = v6;
  v16 = objc_msgSendSuper2(&v17, "init");

  *v1 = v16;
}

uint64_t sub_100021F8C@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = sub_100022610(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1000220A0()
{
  result = qword_100099B18;
  if (!qword_100099B18)
  {
    sub_1000175E4(&qword_100099B20, qword_100079970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099B18);
  }

  return result;
}

uint64_t sub_10002216C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccountManagerUpdate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000221AC()
{
  swift_getObjectType();
  if (qword_1000993B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10009BE50;
  v1 = sub_100060ADC();

  if (v1)
  {
    return 0x7453656E696C6E6FLL;
  }

  if (qword_1000993B8 != -1)
  {
    swift_once();
  }

  v3 = qword_10009BE58;
  v4 = sub_100060ADC();

  if (v4)
  {
    return 0x696C696261706163;
  }

  if (qword_1000993C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10009BE60;
  v6 = sub_100060ADC();

  if (v6)
  {
    return 0xD000000000000012;
  }

  if (qword_1000993C8 != -1)
  {
    swift_once();
  }

  v7 = qword_10009BE68;
  v8 = sub_100060ADC();

  if (v8)
  {
    return 0x72506E49636E7973;
  }

  if (qword_1000993D0 != -1)
  {
    swift_once();
  }

  v9 = qword_10009BE70;
  v10 = sub_100060ADC();

  if (v10)
  {
    return 0xD000000000000013;
  }

  if (qword_1000993D8 != -1)
  {
    swift_once();
  }

  v11 = qword_10009BE78;
  v12 = sub_100060ADC();

  if (v12)
  {
    return 0xD000000000000012;
  }

  if (qword_1000993E0 != -1)
  {
    swift_once();
  }

  v13 = qword_10009BE80;
  v14 = sub_100060ADC();

  if (v14)
  {
    return 0x73746E756F636361;
  }

  if (qword_1000993E8 != -1)
  {
    swift_once();
  }

  v15 = qword_10009BE88;
  v16 = sub_100060ADC();

  if (v16)
  {
    return 0x676E697465657267;
  }

  if (qword_1000993F0 != -1)
  {
    swift_once();
  }

  v17 = qword_10009BE90;
  v18 = sub_100060ADC();

  if (v18)
  {
    return 0x69616D6563696F56;
  }

  sub_100022818();
  return sub_10006089C();
}

char *sub_100022610(unint64_t a1)
{
  v2 = type metadata accessor for VoicemailAccountManagerUpdate();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, "init");
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100060CFC())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_100060C0C();
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v10 = *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, "init");
      v13 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      v14 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v15 = *(v7 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, "init");
      v18 = sub_100060ADC();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, "init");

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

unint64_t sub_100022818()
{
  result = qword_100099B40[0];
  if (!qword_100099B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100099B40);
  }

  return result;
}

uint64_t sub_10002286C(void *a1, uint64_t a2)
{
  v3 = v2;
  v54 = *(a2 - 8);
  __chkstk_darwin(a1, a2);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10006029C();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v48 - v15;
  sub_10006020C();
  swift_allocObject();
  v17 = sub_1000601FC();
  v55 = a1;
  v18 = v17;
  v50 = sub_1000601EC();
  v51 = v19;
  v52 = v18;
  v53 = v9;
  v49 = v7;
  sub_10006023C();
  v20 = [objc_opt_self() defaultManager];
  sub_10006026C();
  sub_10006028C();
  v21 = sub_1000607EC();

  LOBYTE(v18) = [v20 directoryExistsAtPath:v21];

  if (v18)
  {
    goto LABEL_4;
  }

  sub_10006024C(v22);
  v24 = v23;
  v55 = 0;
  v25 = [v20 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v55];

  if (v25)
  {
    v26 = v55;
LABEL_4:
    v28 = v50;
    v27 = v51;
    sub_1000602CC();

    sub_100022E10(v28, v27);

    v29 = v53[1];
    v29(v13, v8);
    v29(v16, v8);
    return 0;
  }

  v31 = v55;
  v32 = sub_10006022C();

  swift_willThrow();
  v33 = v32;

  sub_100022E10(v50, v51);

  v34 = a2;
  v35 = v53[1];
  v35(v13, v8);
  v35(v16, v8);
  v36 = v34;
  v37 = v49;
  (*(v54 + 16))(v49, v3, v34);
  swift_errorRetain();
  v38 = sub_10006072C();
  v39 = sub_100060A2C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v52 = v33;
    v41 = v40;
    v42 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = v53;
    *v41 = 136315394;
    v43 = *v37;
    v44 = v37[1];
    v45 = *(v54 + 8);

    v45(v37, v36);
    v46 = sub_100046270(v43, v44, &v55);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2112;
    swift_errorRetain();
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v47;
    *v42 = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to write to %s: %@", v41, 0x16u);
    sub_100022DA8(v42);

    sub_100018230(v53);
  }

  else
  {

    (*(v54 + 8))(v37, v36);
  }

  return 1;
}

uint64_t sub_100022DA8(uint64_t a1)
{
  v2 = sub_100017538(&unk_10009A710, &unk_100079A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022E10(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100022E6C(uint64_t a1)
{
  result = sub_10006074C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100022EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10006074C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100022FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10006074C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FTTranscriptionMessage(uint64_t a1)
{
  result = qword_100099C20;
  if (!qword_100099C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000232CC(uint64_t a1, uint64_t a2)
{
  result = sub_1000606EC();
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

uint64_t sub_100023734()
{
  LOWORD(result) = sub_10006050C();
  if (result < 3u)
  {
    return result;
  }

  sub_100060BFC(23);

  sub_10006050C();
  sub_1000605EC();
  v1._countAndFlagsBits = sub_10006083C();
  sub_10006086C(v1);

  result = sub_100060CDC();
  __break(1u);
  return result;
}

uint64_t sub_100023900()
{
  if (sub_10006051C())
  {
    return 0;
  }

  sub_10006053C();
  v0 = objc_opt_self();
  v1 = sub_1000607EC();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 normalizedValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10006081C();

    return v5;
  }

  if (sub_10006051C())
  {

    return 0;
  }

  v7 = sub_10006053C();

  return v7;
}

id sub_100023A24(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1000607EC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100023AA4()
{
  if ((sub_10006051C() & 1) == 0)
  {
    sub_10006053C();
    v0 = objc_opt_self();
    v1 = sub_1000607EC();

    v2 = [v0 normalizedHandleWithDestinationID:v1];

    if (v2)
    {
      v3 = [v2 isoCountryCode];
      if (v3)
      {
        v4 = v3;
        v5 = sub_10006081C();

        return v5;
      }
    }
  }

  return 0;
}

id sub_100023B90(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_100023C1C(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_1000607EC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100023C1C(SEL *a1)
{
  sub_1000605AC();
  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = sub_1000607EC();

  v5 = [v3 normalizedHandleWithDestinationID:v4];

  if (v5)
  {
    v6 = [v5 *a1];
    if (v6)
    {
      v7 = v6;
      v8 = sub_10006081C();

      return v8;
    }
  }

  return 0;
}

uint64_t sub_100023DC4()
{
  v1 = v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v1);
  if (v3 == 1)
  {
    v4 = sub_1000604FC();
    v5 = 1;
    if (v4 == 2)
    {
      v5 = 2;
    }

    if (v4 == 1)
    {
      return 3;
    }

    else
    {
      return v5;
    }
  }

  return v2;
}

id sub_100023FC0(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = (a3)(0, a2);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v16 - v11;
  v13 = a1;
  a4();

  v14 = a5();
  (*(v9 + 8))(v12, v8);

  return v14;
}

void sub_100024110()
{
  v1 = sub_100017538(&qword_100099E18, &unk_10007AB70);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v21 - v3;
  v5 = sub_100017538(&unk_100099E20, &unk_100079BC0);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v9 = &v21 - v8;
  v10 = sub_1000243CC(v7);
  if (v10 == 2 && (v10 = sub_10006054C(), (v10 & 1) != 0) && (v10 = TUCallScreeningRTTEnabled(), v10))
  {
    v11 = atomic_load((v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_didLoadTranscript));
    if ((v11 & 1) != 0 && sub_100024688())
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = [v12 conversation];
        swift_unknownObjectRelease();
        if (v13)
        {
          v14 = [v13 utterances];

          if (v14)
          {
            [v14 count];
          }

          else
          {
            __break(1u);
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v15 = sub_1000243CC(v10);
    if (v15)
    {
      if (v15 == 1)
      {
        return;
      }

      sub_100024710(v9);
      v20 = sub_1000606EC();
      (*(*(v20 - 8) + 48))(v9, 1, v20);
      v17 = &unk_100099E20;
      v18 = &unk_100079BC0;
      v19 = v9;
    }

    else
    {
      sub_10002488C(v4);
      v16 = sub_10006029C();
      (*(*(v16 - 8) + 48))(v4, 1, v16);
      v17 = &qword_100099E18;
      v18 = &unk_10007AB70;
      v19 = v4;
    }

    sub_100020850(v19, v17, v18);
  }
}

uint64_t sub_1000243CC(uint64_t a1)
{
  v2 = sub_10006050C();
  if (v2 < 3u)
  {
    return 0x10002u >> (8 * v2);
  }

  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v4 = sub_10006074C();
  sub_10001762C(v4, qword_10009BED0);
  v5 = v1;
  v6 = sub_10006072C();
  v7 = sub_100060A3C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    sub_10006050C();
    v10 = sub_10006082C();
    v12 = sub_100046270(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected Message type %{public}s", v8, 0xCu);
    sub_100018230(v9);
  }

  return 0;
}

void (*sub_100024688())(void *__return_ptr)
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  v2 = *(v0 + 24);
  if ((*(v0 + 40) & 1) == 0)
  {
    v3 = *(v0 + 32);
    v2(&v5);
    sub_100027E34(v2, v3, 0);
    v2 = v5;
    *(v1 + 24) = v5;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 16));
  return v2;
}

void sub_100024710(uint64_t a1@<X8>)
{
  v3 = sub_100017538(&qword_100099DD0, &qword_100079B70);
  __chkstk_darwin(v3, v4);
  v6 = (&v10 - v5);
  v7 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v7);
  v8 = *(sub_100017538(&qword_100099E08, &qword_100079BA8) + 28);
  sub_100027E8C(v7 + v8, v6, &qword_100099DD0, &qword_100079B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100027EF4(v6, a1, &unk_100099E20, &unk_100079BC0);
  }

  else
  {
    v9 = sub_100020850(v7 + v8, &qword_100099DD0, &qword_100079B70);
    (*v6)(v9);

    sub_100027E8C(a1, v7 + v8, &unk_100099E20, &unk_100079BC0);
    swift_storeEnumTagMultiPayload();
  }

  os_unfair_lock_unlock(v7);
}

void sub_10002488C(uint64_t a1@<X8>)
{
  v3 = sub_100017538(&qword_100099DD8, &qword_100079B78);
  __chkstk_darwin(v3, v4);
  v6 = (&v10 - v5);
  v7 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v7);
  v8 = *(sub_100017538(&qword_100099DF0, &qword_100079B90) + 28);
  sub_100027E8C(v7 + v8, v6, &qword_100099DD8, &qword_100079B78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100027EF4(v6, a1, &qword_100099E18, &unk_10007AB70);
  }

  else
  {
    v9 = sub_100020850(v7 + v8, &qword_100099DD8, &qword_100079B78);
    (*v6)(v9);

    sub_100027E8C(a1, v7 + v8, &qword_100099E18, &unk_10007AB70);
    swift_storeEnumTagMultiPayload();
  }

  os_unfair_lock_unlock(v7);
}

uint64_t sub_100024A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FTMessage.Lazy.State(255, *(*v4 + 80), a3, a4);
  sub_1000603DC();
  v5 = sub_1000603EC();
  sub_1000517C4(v5);
  return v4;
}

uint64_t sub_100024A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100024A08(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return _swift_deallocClassInstance(v4, v5, v6);
}

id sub_100024B04(void *a1)
{
  v2 = sub_100017538(&qword_100099E18, &unk_10007AB70);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = a1;
  sub_10002488C(v5);

  v7 = sub_10006029C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    sub_10006024C(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

id sub_100024CAC()
{
  v0 = sub_100017538(&qword_100099E18, &unk_10007AB70);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v13 - v2;
  v4 = sub_10006029C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002488C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100020850(v3, &qword_100099E18, &unk_10007AB70);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = [objc_opt_self() defaultManager];
    sub_10006028C();
    v11 = sub_1000607EC();

    v12 = [v10 fileExistsAtPath:v11];

    (*(v5 + 8))(v8, v4);
    return v12;
  }
}

char *sub_100024EF0(void *a1)
{
  ObjectType = swift_getObjectType();
  v50 = sub_100017538(&qword_100099DD0, &qword_100079B70);
  __chkstk_darwin(v50, v3);
  v49 = (&v46 - v4);
  v48 = sub_100017538(&qword_100099DD8, &qword_100079B78);
  __chkstk_darwin(v48, v5);
  v7 = (&v46 - v6);
  v8 = &v1[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v1[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyRead];
  *v9 = 0;
  v9[4] = 2;
  v1[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyIsDeleted] = 0;
  v10 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage__transcript;
  sub_100017538(&qword_100099DE0, &qword_100079B80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = sub_100024E98;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *&v1[v10] = v11;
  v1[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_didLoadTranscript] = 0;
  v1[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_isDirty] = 0;
  *&v1[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_ftMessage] = a1;
  v12 = v1;
  v46 = v1;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  sub_100017538(&qword_100099DE8, &qword_100079B88);
  v14 = swift_allocObject();
  *v7 = sub_100027D28;
  v7[1] = v13;
  swift_storeEnumTagMultiPayload();
  v15 = (v14 + *(*v14 + 88));
  *v15 = 0;
  v16 = a1;

  v17 = sub_100017538(&qword_100099DF0, &qword_100079B90);
  v18 = *(v17 + 28);
  v19 = *(*(sub_100017538(&qword_100099DF8, &qword_100079B98) - 8) + 64);
  v47 = v19;
  bzero(v15 + v18, v19);
  sub_100027EF4(v7, v15 + v18, &qword_100099DD8, &qword_100079B78);

  *&v12[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage__dataURL] = v14;
  v20 = swift_allocObject();
  v21 = v16;
  *(v20 + 16) = v16;
  v22 = swift_allocObject();
  *v7 = sub_100027D30;
  v7[1] = v20;
  swift_storeEnumTagMultiPayload();
  v23 = (v22 + *(*v22 + 88));
  *v23 = 0;
  v24 = *(v17 + 28);
  bzero(v23 + v24, v19);
  v25 = v21;

  sub_100027EF4(v7, v23 + v24, &qword_100099DD8, &qword_100079B78);

  v26 = v46;
  *&v46[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage__thumbnailURL] = v22;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = swift_allocObject();
  *v7 = sub_100027D60;
  v7[1] = v27;
  swift_storeEnumTagMultiPayload();
  v29 = (v28 + *(*v28 + 88));
  *v29 = 0;
  v30 = *(v17 + 28);
  bzero(v29 + v30, v47);
  v31 = v25;

  sub_100027EF4(v7, v29 + v30, &qword_100099DD8, &qword_100079B78);

  *&v26[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage__transcriptURL] = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  sub_100017538(&qword_100099E00, &qword_100079BA0);
  v33 = swift_allocObject();
  v34 = v49;
  *v49 = sub_100027D90;
  *(v34 + 8) = v32;
  swift_storeEnumTagMultiPayload();
  v35 = (v33 + *(*v33 + 88));
  *v35 = 0;
  v36 = v31;

  v37 = *(sub_100017538(&qword_100099E08, &qword_100079BA8) + 28);
  v38 = sub_100017538(&qword_100099E10, &unk_100079BB0);
  bzero(v35 + v37, *(*(v38 - 8) + 64));
  sub_100027EF4(v34, v35 + v37, &qword_100099DD0, &qword_100079B70);

  *&v26[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage__transcriptData] = v33;
  v52.receiver = v26;
  v52.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v52, "init");
  v40 = *&v39[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage__transcript];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v36;
  v43 = v36;
  v44 = v39;

  os_unfair_lock_lock((v40 + 16));
  sub_100027E34(*(v40 + 24), *(v40 + 32), *(v40 + 40));
  *(v40 + 24) = sub_100027E2C;
  *(v40 + 32) = v42;
  *(v40 + 40) = 0;

  os_unfair_lock_unlock((v40 + 16));

  return v44;
}

uint64_t sub_100025530@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100017538(&qword_100099E18, &unk_10007AB70);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_1000604AC();
  v7 = sub_10006070C();

  if (v7)
  {
    v8 = sub_10006029C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    v10(v5, 1, 1, v8);
    sub_100027F5C(&unk_100099E40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_100060D4C();

    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      v11 = a1;
      v12 = 1;
    }

    else
    {
      (*(v9 + 32))(a1, v5, v8);
      v11 = a1;
      v12 = 0;
    }

    return (v10)(v11, v12, 1, v8);
  }

  else
  {
    v13 = sub_10006029C();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_100025760@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100017538(&qword_100099E18, &unk_10007AB70);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v20 - v7;
  v9 = a1(v6);
  if (v9 && (v10 = v9, v11 = sub_10006070C(), v10, v11))
  {
    v12 = sub_10006029C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    v14(v8, 1, 1, v12);
    sub_100027F5C(&unk_100099E40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_100060D4C();

    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      v15 = a2;
      v16 = 1;
    }

    else
    {
      (*(v13 + 32))(a2, v8, v12);
      v15 = a2;
      v16 = 0;
    }

    return (v14)(v15, v16, 1, v12);
  }

  else
  {
    v17 = sub_10006029C();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

void sub_1000259A0(uint64_t a2@<X1>, void *a3@<X8>)
{
  v56 = a2;
  v55 = sub_100017538(&qword_100099E18, &unk_10007AB70);
  v5 = __chkstk_darwin(v55, v4);
  v54[1] = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = v54 - v8;
  v10 = sub_10006029C();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10, v11);
  v57 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100017538(&unk_100099E20, &unk_100079BC0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = v54 - v15;
  v17 = sub_1000606EC();
  v58 = *(v17 - 8);
  v19 = __chkstk_darwin(v17, v18);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = v54 - v23;
  v25 = sub_10006036C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25, v27);
  v29 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *a3 = 0;
    return;
  }

  v61 = a3;
  v31 = Strong;
  v32 = sub_1000243CC(Strong);
  if (v32)
  {
    if (v32 != 1)
    {
      if ((sub_10006054C() & 1) != 0 && TUCallScreeningRTTEnabled())
      {
        sub_10006056C();
        v35 = objc_allocWithZone(MPRTTTranscriptionMessage);
        isa = sub_10006032C().super.isa;
        v37 = [v35 initWithCallUUID:isa];

        (*(v26 + 8))(v29, v25);
        *v61 = v37;
      }

      else
      {
        sub_100024710(v16);
        v38 = v58;
        if ((*(v58 + 48))(v16, 1, v17) == 1)
        {
          sub_100020850(v16, &unk_100099E20, &unk_100079BC0);
          *v61 = 0;
        }

        else
        {
          (*(v38 + 32))(v24, v16, v17);
          v40 = *(v38 + 16);
          v40(v21, v24, v17);
          v41 = type metadata accessor for FTTranscriptionMessage(0);
          v42 = objc_allocWithZone(v41);
          *&v42[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22FTTranscriptionMessage_confidenceRating] = 0;
          *&v42[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22FTTranscriptionMessage_confidence] = 0x3FF0000000000000;
          v40(&v42[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22FTTranscriptionMessage_transcriptData], v21, v17);
          v62.receiver = v42;
          v62.super_class = v41;
          v43 = objc_msgSendSuper2(&v62, "init");
          v44 = *(v38 + 8);
          v44(v21, v17);
          v44(v24, v17);
          *v61 = v43;
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_10002488C(v9);
    v34 = v59;
    v33 = v60;
    if ((*(v59 + 48))(v9, 1, v60) == 1)
    {
      sub_100020850(v9, &qword_100099E18, &unk_10007AB70);
      *v61 = 0;
      atomic_store(1u, &v31[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_didLoadTranscript]);

      return;
    }

    v39 = v57;
    (*(v34 + 32))(v57, v9, v33);
    v45 = sub_1000602AC();
    v47 = v46;
    sub_100027E44(0, &qword_100099E30, NSKeyedUnarchiver_ptr);
    sub_100027E44(0, &qword_100099E38, VMVoicemailTranscript_ptr);
    v48 = sub_100060A5C();
    if (v48)
    {
      v49 = v48;
      v50 = type metadata accessor for VisualTranscriptionMessage();
      v51 = objc_allocWithZone(v50);
      *&v51[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v49;
      v63.receiver = v51;
      v63.super_class = v50;
      v52 = v49;
      v53 = objc_msgSendSuper2(&v63, "init");
      sub_100022E10(v45, v47);

      (*(v34 + 8))(v39, v33);
      *v61 = v53;
      goto LABEL_15;
    }

    (*(v34 + 8))(v39, v33);
    sub_100022E10(v45, v47);
  }

  *v61 = 0;
LABEL_15:
  atomic_store(1u, &v31[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_didLoadTranscript]);
}

char *sub_100026328()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&qword_100099CB0, &qword_100079B08);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100026358()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&qword_100099CB8, &qword_100079B10);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100026388()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(qword_100099CC0, &unk_100079B18);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000263BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FTMessage.Lazy.State(255, *(a1 + 80), a3, a4);
  result = sub_1000603DC();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10002648C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for FTMessage.Lazy.State(255, *a1, a3, a4);
  return sub_1000603DC();
}

BOOL sub_1000264D8(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyRead;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 4);
  os_unfair_lock_unlock(v3);
  if (v4 == 2)
  {
    if (sub_10006055C())
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (a1 > 5.0)
  {
    return 1;
  }

  sub_10006057C();
  return v6 / 3.0 < a1;
}

id sub_1000265CC(void *a1, uint64_t a2)
{
  if (sub_10006051C())
  {
    return 0;
  }

  sub_10006053C();
  v3 = objc_opt_self();
  v4 = sub_1000607EC();

  v5 = [v3 normalizedHandleWithDestinationID:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 normalizedValue];
  if (v6)
  {
    v7 = v6;
    v8 = sub_10006081C();
    v10 = v9;

    v5 = v7;
  }

  else
  {
    if (sub_10006051C())
    {

      return 0;
    }

    v8 = sub_10006053C();
    v10 = v11;
  }

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    sub_10006053C();
    v13 = sub_1000607EC();

    sub_100017538(&unk_100099930, &qword_1000791F8);
    isa = sub_1000608BC().super.isa;
    v15 = [a1 contactForDestinationId:v13 keysToFetch:isa];

    return v15;
  }

  return 0;
}

uint64_t sub_1000267F8(void *a1)
{
  v2 = sub_10006053C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_100017538(&qword_100099B38, &qword_1000799E8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100079AA0;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 descriptorForRequiredKeysForStyle:0];
    v8 = sub_1000265CC(a1, v6);

    if (!v8)
    {
      return sub_100026970();
    }

    if ([v8 isSuggested])
    {
      v9 = sub_100026970();

      return v9;
    }

    v11 = [v7 stringFromContact:v8 style:0];
    if (v11)
    {
      v12 = v11;
      v13 = sub_10006081C();

      return v13;
    }
  }

  return 0;
}

uint64_t sub_100026970()
{
  v0 = objc_opt_self();
  sub_10006053C();
  v1 = sub_1000607EC();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (v2)
  {
    v3 = [v2 normalizedValue];
    v4 = [v2 isoCountryCode];
    v5 = TUFormattedPhoneNumber();

    if (v5)
    {
      v6 = sub_10006081C();

      return v6;
    }
  }

  return 0;
}

uint64_t sub_100026B0C()
{
  v93 = sub_100017538(&qword_100099E18, &unk_10007AB70);
  __chkstk_darwin(v93, v1);
  v92 = &v86 - v2;
  v3 = sub_10006030C();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3, v4);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100017538(&qword_1000998B8, &qword_100079720);
  __chkstk_darwin(v88, v6);
  v87 = &v86 - v7;
  v8 = sub_10006036C();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v86 - v15;
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_100060BFC(699);
  v99._countAndFlagsBits = 0xD00000000000001ALL;
  v99._object = 0x8000000100075D60;
  sub_10006086C(v99);
  v17 = [*(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_ftMessage) description];
  v18 = sub_10006081C();
  v20 = v19;

  v100._countAndFlagsBits = v18;
  v100._object = v20;
  sub_10006086C(v100);

  v101._countAndFlagsBits = 0x3A6469202020200ALL;
  v101._object = 0xE900000000000020;
  sub_10006086C(v101);
  sub_1000604BC();
  v21 = *(v9 + 16);
  v21(v13, v16, v8);
  v22 = type metadata accessor for MessageID(0);
  v23 = objc_allocWithZone(v22);
  v21(&v23[OBJC_IVAR___MPMessageID_value], v13, v8);
  v24 = v86;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v96.receiver = v23;
  v96.super_class = v22;
  v25 = objc_msgSendSuper2(&v96, "init");
  v26 = *(v9 + 8);
  v26(v13, v8);
  v26(v16, v8);
  v27 = [v25 description];
  v28 = sub_10006081C();
  v30 = v29;

  v102._countAndFlagsBits = v28;
  v102._object = v30;
  sub_10006086C(v102);

  v103._countAndFlagsBits = 0x6F7270202020200ALL;
  v103._object = 0xEF203A7265646976;
  sub_10006086C(v103);
  v104._countAndFlagsBits = sub_10006059C();
  sub_10006086C(v104);

  v105._countAndFlagsBits = 0x6C6163202020200ALL;
  v105._object = 0xEF203A444955556CLL;
  sub_10006086C(v105);
  v31 = v87;
  sub_10006056C();
  (*(v9 + 56))(v31, 0, 1, v8);
  v106._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v106);

  v107._countAndFlagsBits = 0xD000000000000012;
  v107._object = 0x8000000100075D80;
  sub_10006086C(v107);
  v94 = sub_100023734();
  sub_100060CCC();
  v108._countAndFlagsBits = 0xD00000000000001ALL;
  v108._object = 0x8000000100075DA0;
  sub_10006086C(v108);
  v94 = sub_100023900();
  v95 = v32;
  sub_100017538(&qword_100099E50, &qword_100079410);
  v109._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v109);

  v110._countAndFlagsBits = 0xD00000000000001BLL;
  v110._object = 0x8000000100075DC0;
  sub_10006086C(v110);
  v94 = sub_100023AA4();
  v95 = v33;
  v111._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v111);

  v112._countAndFlagsBits = 0xD00000000000001CLL;
  v112._object = 0x8000000100075DE0;
  sub_10006086C(v112);
  v94 = sub_100023C1C(&selRef_normalizedValue);
  v95 = v34;
  v113._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v113);

  v114._countAndFlagsBits = 0xD00000000000001DLL;
  v114._object = 0x8000000100075E00;
  sub_10006086C(v114);
  v94 = sub_100023C1C(&selRef_isoCountryCode);
  v95 = v35;
  v115._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v115);

  v116._countAndFlagsBits = 0xD00000000000001CLL;
  v116._object = 0x8000000100075E20;
  sub_10006086C(v116);
  v36 = sub_10006051C();
  v37 = 0;
  v38 = 0;
  if ((v36 & 1) == 0)
  {
    v37 = sub_10006053C();
  }

  v94 = v37;
  v95 = v38;
  v117._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v117);

  v118._countAndFlagsBits = 0xD000000000000012;
  v118._object = 0x8000000100075E40;
  sub_10006086C(v118);
  v39 = v24 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v24 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder));
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);
  os_unfair_lock_unlock(v39);
  v94 = v40;
  LOBYTE(v95) = v41;
  sub_100017538(&qword_100099E58, &qword_100079BD0);
  v119._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v119);

  v120._countAndFlagsBits = 0x6C6F66202020200ALL;
  v120._object = 0xED0000203A726564;
  sub_10006086C(v120);
  v94 = sub_100023DC4();
  sub_100060CCC();
  v121._object = 0x8000000100075E60;
  v121._countAndFlagsBits = 0xD000000000000010;
  sub_10006086C(v121);
  v42 = v24 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyRead;
  os_unfair_lock_lock((v24 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyRead));
  LOBYTE(v40) = *(v42 + 4);
  os_unfair_lock_unlock(v42);
  LOBYTE(v94) = v40;
  sub_100017538(&qword_100099E60, &qword_100079BD8);
  v122._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v122);

  v123._countAndFlagsBits = 0x616572202020200ALL;
  v123._object = 0xEB00000000203A64;
  sub_10006086C(v123);
  os_unfair_lock_lock(v42);
  v43 = *(v42 + 4);
  os_unfair_lock_unlock(v42);
  if (v43 == 2)
  {
    LOBYTE(v43) = sub_10006055C();
  }

  if (v43)
  {
    v44._countAndFlagsBits = 1702195828;
  }

  else
  {
    v44._countAndFlagsBits = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE400000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  v44._object = v45;
  sub_10006086C(v44);

  v124._countAndFlagsBits = 0x746164202020200ALL;
  v124._object = 0xEB00000000203A65;
  sub_10006086C(v124);
  v46 = v89;
  sub_1000604DC();
  sub_100027F5C(&qword_100099E68, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v47 = v91;
  v125._countAndFlagsBits = sub_100060DFC();
  sub_10006086C(v125);

  (*(v90 + 8))(v46, v47);
  v126._countAndFlagsBits = 0xD00000000000001FLL;
  v126._object = 0x8000000100075E80;
  sub_10006086C(v126);
  sub_100024110();
  v49 = (v48 & 1) == 0;
  if (v48)
  {
    v50._countAndFlagsBits = 1702195828;
  }

  else
  {
    v50._countAndFlagsBits = 0x65736C6166;
  }

  if (v49)
  {
    v51 = 0xE500000000000000;
  }

  else
  {
    v51 = 0xE400000000000000;
  }

  v50._object = v51;
  sub_10006086C(v50);

  v127._countAndFlagsBits = 0x727564202020200ALL;
  v127._object = 0xEF203A6E6F697461;
  sub_10006086C(v127);
  sub_10006057C();
  sub_1000609EC();
  v128._countAndFlagsBits = 0xD00000000000001BLL;
  v128._object = 0x8000000100075EA0;
  sub_10006086C(v128);
  v129._countAndFlagsBits = 0x65736C6166;
  v129._object = 0xE500000000000000;
  sub_10006086C(v129);
  v130._countAndFlagsBits = 0xD000000000000015;
  v130._object = 0x8000000100075EC0;
  sub_10006086C(v130);
  v131._countAndFlagsBits = 0x65736C6166;
  v131._object = 0xE500000000000000;
  sub_10006086C(v131);
  v132._countAndFlagsBits = 0xD00000000000001DLL;
  v132._object = 0x8000000100075EE0;
  sub_10006086C(v132);
  sub_10006052C();
  v52 = sub_10006071C();
  v53 = sub_10006071C();
  v54 = v52 == v53;
  if (v52 == v53)
  {
    v55._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v55._countAndFlagsBits = 1702195828;
  }

  if (v54)
  {
    v56 = 0xE500000000000000;
  }

  else
  {
    v56 = 0xE400000000000000;
  }

  v55._object = v56;
  sub_10006086C(v55);

  v133._object = 0x8000000100075F00;
  v133._countAndFlagsBits = 0xD000000000000010;
  sub_10006086C(v133);
  sub_1000604FC();
  v57 = sub_1000606FC();
  v58 = sub_1000606FC();
  v59 = v57 == v58;
  if (v57 == v58)
  {
    v60._countAndFlagsBits = 1702195828;
  }

  else
  {
    v60._countAndFlagsBits = 0x65736C6166;
  }

  if (v59)
  {
    v61 = 0xE400000000000000;
  }

  else
  {
    v61 = 0xE500000000000000;
  }

  v60._object = v61;
  sub_10006086C(v60);

  v134._object = 0x8000000100075F20;
  v134._countAndFlagsBits = 0xD000000000000010;
  sub_10006086C(v134);
  v62 = atomic_load((v24 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyIsDeleted));
  if (v62)
  {
    v63._countAndFlagsBits = 1702195828;
  }

  else
  {
    v63._countAndFlagsBits = 0x65736C6166;
  }

  if (v62)
  {
    v64 = 0xE400000000000000;
  }

  else
  {
    v64 = 0xE500000000000000;
  }

  v63._object = v64;
  sub_10006086C(v63);

  v135._countAndFlagsBits = 0xD000000000000012;
  v135._object = 0x8000000100075F40;
  sub_10006086C(v135);
  v65 = sub_1000604EC();
  v66 = (v65 & 1) == 0;
  if (v65)
  {
    v67._countAndFlagsBits = 1702195828;
  }

  else
  {
    v67._countAndFlagsBits = 0x65736C6166;
  }

  if (v66)
  {
    v68 = 0xE500000000000000;
  }

  else
  {
    v68 = 0xE400000000000000;
  }

  v67._object = v68;
  sub_10006086C(v67);

  v136._object = 0xEE00203A4C525561;
  v136._countAndFlagsBits = 0x746164202020200ALL;
  sub_10006086C(v136);
  v69 = v92;
  sub_10002488C(v92);
  v137._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v137);

  v138._countAndFlagsBits = 0xD000000000000013;
  v138._object = 0x8000000100075F60;
  sub_10006086C(v138);
  sub_10002488C(v69);
  v139._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v139);

  v140._countAndFlagsBits = 0xD000000000000014;
  v140._object = 0x8000000100075F80;
  sub_10006086C(v140);
  sub_10002488C(v69);
  v141._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v141);

  v142._countAndFlagsBits = 0x527369202020200ALL;
  v142._object = 0xEC000000203A5454;
  sub_10006086C(v142);
  v70 = sub_10006054C();
  v71 = (v70 & 1) == 0;
  if (v70)
  {
    v72._countAndFlagsBits = 1702195828;
  }

  else
  {
    v72._countAndFlagsBits = 0x65736C6166;
  }

  if (v71)
  {
    v73 = 0xE500000000000000;
  }

  else
  {
    v73 = 0xE400000000000000;
  }

  v72._object = v73;
  sub_10006086C(v72);

  v143._countAndFlagsBits = 0xD000000000000016;
  v143._object = 0x8000000100075FA0;
  sub_10006086C(v143);
  v74 = sub_100024CAC();
  v75 = (v74 & 1) == 0;
  if (v74)
  {
    v76._countAndFlagsBits = 1702195828;
  }

  else
  {
    v76._countAndFlagsBits = 0x65736C6166;
  }

  if (v75)
  {
    v77 = 0xE500000000000000;
  }

  else
  {
    v77 = 0xE400000000000000;
  }

  v76._object = v77;
  sub_10006086C(v76);

  v144._countAndFlagsBits = 0xD000000000000011;
  v144._object = 0x8000000100075FC0;
  sub_10006086C(v144);
  v94 = sub_100024688();
  sub_100017538(&qword_100099E70, &unk_100079BE0);
  v145._countAndFlagsBits = sub_10006082C();
  sub_10006086C(v145);

  v146._countAndFlagsBits = 0xD000000000000018;
  v146._object = 0x8000000100075FE0;
  sub_10006086C(v146);
  v78 = atomic_load((v24 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_didLoadTranscript));
  if (v78)
  {
    v79._countAndFlagsBits = 1702195828;
  }

  else
  {
    v79._countAndFlagsBits = 0x65736C6166;
  }

  if (v78)
  {
    v80 = 0xE400000000000000;
  }

  else
  {
    v80 = 0xE500000000000000;
  }

  v79._object = v80;
  sub_10006086C(v79);

  v147._countAndFlagsBits = 0x447369202020200ALL;
  v147._object = 0xEE00203A79747269;
  sub_10006086C(v147);
  v81 = atomic_load((v24 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_isDirty));
  if (v81)
  {
    v82._countAndFlagsBits = 1702195828;
  }

  else
  {
    v82._countAndFlagsBits = 0x65736C6166;
  }

  if (v81)
  {
    v83 = 0xE400000000000000;
  }

  else
  {
    v83 = 0xE500000000000000;
  }

  v82._object = v83;
  sub_10006086C(v82);

  v148._countAndFlagsBits = 0xD000000000000014;
  v148._object = 0x8000000100076000;
  sub_10006086C(v148);
  LOBYTE(v94) = sub_1000243CC(v84);
  sub_100060CCC();
  v149._countAndFlagsBits = 0x202020202020200ALL;
  v149._object = 0xEA00000000002920;
  sub_10006086C(v149);
  return v97;
}

id sub_1000278E8(void *a1)
{
  v1 = a1;
  sub_100026B0C();

  v2 = sub_1000607EC();

  return v2;
}

uint64_t sub_100027958(uint64_t a1)
{
  result = sub_100027CA0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000279D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
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
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
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
    goto LABEL_25;
  }

LABEL_14:
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

void sub_100027AE8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_100027CA0()
{
  result = qword_100099DC8;
  if (!qword_100099DC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100099DC8);
  }

  return result;
}

uint64_t sub_100027CF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027DB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027DEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027E34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100027E44(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100027E8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100017538(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100027EF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100017538(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100027F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for FTMessageSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FTMessageSource(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000280F8()
{
  result = qword_100099E78;
  if (!qword_100099E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099E78);
  }

  return result;
}

uint64_t sub_100028160()
{
  v0 = sub_10006074C();
  sub_10002FE90(v0, qword_100099E80);
  v1 = sub_10001762C(v0, qword_100099E80);
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v2 = sub_10001762C(v0, qword_10009BED0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100028238(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100060CFC();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10002BC8C(v3, 0);
  sub_10004A57C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1000282CC(uint64_t a1, void *a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 + 32;
  v8 = *(v5 + 16);
  if (*v2)
  {

    v9 = sub_100046E2C(a2, v7, v8, (v6 + 16), v6 + 32);
    v8 = v10;
    v7 = v11;

    if (v8)
    {
LABEL_11:
      sub_10002BE7C(a2, v7);
      swift_unknownObjectRetain();
      sub_100060C3C();
      sub_100060C6C();
      sub_100060C7C();
LABEL_17:
      sub_100060C4C();
      return;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (!v8)
  {
    v7 = 0;
    goto LABEL_11;
  }

  type metadata accessor for MessageID(0);
  v9 = 0;
  while (1)
  {
    v12 = *(v7 + 8 * v9);
    v13 = sub_100060ADC();

    if (v13)
    {
      break;
    }

    if (v8 == ++v9)
    {
      v7 = 0;
      goto LABEL_11;
    }
  }

LABEL_12:
  v16 = v2[2];
  v14 = v2 + 2;
  v15 = v16;
  if (v9 >= *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_10002C9A4(v15);
      *v14 = v15;
    }

    if (v9 < *(v15 + 16))
    {
      *(v15 + 8 * v9 + 32) = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100028474(uint64_t a1, id *a2, uint64_t a3, void **a4)
{
  v6 = sub_10006030C();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v20 - v13;
  v15 = *a4;
  v16 = [*a2 date];
  sub_1000602FC();

  v17 = [v15 date];
  sub_1000602FC();

  LOBYTE(v17) = sub_1000602EC();
  v18 = *(v7 + 8);
  v18(v11, v6);
  v18(v14, v6);
  return v17 & 1;
}

unint64_t sub_1000285E4(unint64_t result, char a2)
{
  v3 = v2;
  v24 = result;
  if (result >> 62)
  {
    goto LABEL_29;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v6 = v24 & 0xC000000000000001;
      v28 = v24 + 32;
      v29 = v24 & 0xFFFFFFFFFFFFFF8;
      v26 = v24 & 0xC000000000000001;
      v27 = v4;
      while (v6)
      {
        v7 = sub_100060C0C();
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_25;
        }

LABEL_9:
        v9 = [v7 identifier];
        swift_beginAccess();
        v11 = v3[2];
        v10 = v3[3];
        v12 = v10 + 32;
        v13 = *(v10 + 16);
        if (v11)
        {
          swift_unknownObjectRetain();

          v14 = sub_100046E2C(v9, v12, v13, (v11 + 16), v11 + 32);
          v16 = v15;
          v13 = v17;

          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          swift_unknownObjectRetain();
          if (!v13)
          {
LABEL_4:
            sub_10002BE7C(v9, v13);

            swift_unknownObjectRetain();
            sub_100060C3C();
            sub_100060C6C();
            sub_100060C7C();
            sub_100060C4C();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }

          type metadata accessor for MessageID(0);
          v14 = 0;
          while (1)
          {
            v18 = *(v12 + 8 * v14);
            v19 = sub_100060ADC();

            if (v19)
            {
              break;
            }

            if (v13 == ++v14)
            {
              v13 = 0;
              v6 = v26;
              v4 = v27;
              goto LABEL_4;
            }
          }

          v6 = v26;
          v4 = v27;
        }

        v20 = v3[4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[4] = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_10002C9A4(v20);
          v3[4] = v20;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v14 >= *(v20 + 16))
        {
          goto LABEL_28;
        }

        *(v20 + 8 * v14 + 32) = v7;
        swift_unknownObjectRelease();
        sub_100060C4C();
LABEL_5:
        swift_endAccess();
        result = swift_unknownObjectRelease();
        if (v5 == v4)
        {
          goto LABEL_30;
        }
      }

      if (v5 >= *(v29 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v28 + 8 * v5);
      swift_unknownObjectRetain();
      v8 = __OFADD__(v5++, 1);
      if (!v8)
      {
        goto LABEL_9;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_100060CFC();
      v4 = result;
    }

    while (result);
  }

LABEL_30:
  if (a2)
  {
    swift_beginAccess();
    v22 = v3[4];
    v30 = sub_10002F1F0(v3[3], v22);
    sub_10002FD10(&v30, sub_100028474);
    v23 = v30[2];
    if (v23 == *(v22 + 16))
    {
      sub_10002CFDC((v30 + 4), v23, v3 + 2);

      return swift_endAccess();
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002890C()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_100028A10(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager__estimatedCount;
  os_unfair_lock_lock(v3);
  *(v3 + 8) = a1;
  os_unfair_lock_unlock(v3);
  v4 = [objc_allocWithZone(NSUserDefaults) init];
  os_unfair_lock_lock(v3);
  v5 = *(v3 + 8);
  os_unfair_lock_unlock(v3);
  sub_100060BFC(26);

  v8._object = 0x8000000100076230;
  v8._countAndFlagsBits = 0xD000000000000018;
  sub_10006086C(v8);
  v6 = sub_1000607EC();

  [v4 setInteger:v5 forKey:v6];
}

uint64_t sub_100028B30()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100030EDC(&qword_1000995D0, type metadata accessor for VoicemailActor, &unk_1000790A8);
  v1 = sub_10006091C();

  return _swift_task_switch(sub_100028BF4, v1, v0);
}

uint64_t sub_100028BF4()
{
  if (qword_100099400 != -1)
  {
    swift_once();
  }

  v1 = sub_10006074C();
  sub_10001762C(v1, qword_100099E80);
  v2 = sub_10006072C();
  v3 = sub_100060A3C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "This must be overriden, its a misuse to use this directly without overriding this property", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(_swiftEmptyArrayStorage);
}

char *sub_100028D14(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state] = 0x8000000000000000;
  *&v2[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_deferredOperationsQueue] = _swiftEmptyArrayStorage;
  v3 = &v2[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager__estimatedCount];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v2[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_serviceName];
  *v4 = a1;
  *(v4 + 1) = a2;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CachedVoicemailManager();
  v5 = objc_msgSendSuper2(&v14, "init");
  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = v5;
  v8 = [v6 init];
  sub_100060BFC(26);

  v12 = *&v7[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_serviceName];
  v13 = *&v7[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_serviceName + 8];

  v15._object = 0x8000000100076230;
  v15._countAndFlagsBits = 0xD000000000000018;
  sub_10006086C(v15);
  v9 = sub_1000607EC();

  v10 = [v8 integerForKey:{v9, v12, v13}];

  sub_100028A10(v10);
  return v7;
}

uint64_t sub_100028E68()
{
  v1[10] = v0;
  sub_100017538(&unk_1000995C0, &unk_100078E60);
  v1[11] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  v1[12] = swift_initStaticObject();
  v1[13] = sub_100030EDC(&qword_1000995D0, type metadata accessor for VoicemailActor, &unk_1000790A8);
  v3 = sub_10006091C();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_100028F70, v3, v2);
}

uint64_t sub_100028F70()
{
  v36 = v0;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v1 = sub_10006074C();
  v0[16] = sub_10001762C(v1, qword_10009BED0);
  v2 = sub_10006072C();
  v3 = sub_100060A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100046270(0x73654D6863746566, 0xEF29287365676173, &v35);
    _os_log_impl(&_mh_execute_header, v2, v3, "CachedVoicemailManager: %s", v4, 0xCu);
    sub_100018230(v5);
  }

  v6 = v0[10];
  v7 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state;
  v8 = *(v6 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state);
  v0[17] = v8;
  if (v8 >> 62)
  {
    if (v8 >> 62 == 1)
    {
      v9 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
      v10 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_deferredOperationsQueue;

      swift_beginAccess();
      v11 = *(v6 + v10);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = v11 + 40;
        do
        {
          v14 = *(v13 - 8);
          v35 = (v8 & 0x3FFFFFFFFFFFFFFFLL);

          v14(&v35);

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      *(v6 + v10) = _swiftEmptyArrayStorage;

      v15 = sub_10006072C();
      v16 = sub_100060A4C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100046270(0x73654D6863746566, 0xEF29287365676173, &v35);
        _os_log_impl(&_mh_execute_header, v15, v16, "CachedVoicemailManager: %s returning voicemails", v17, 0xCu);
        sub_100018230(v18);
      }

      swift_beginAccess();
      v19 = v9[2];
      v20 = v9[3];
      v21 = v9[4];

      v22 = sub_10002BD14(v19, v20, v21);

      v23 = v0[1];

      return v23(v22);
    }

    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];
    v31 = sub_10006099C();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v28;
    v33[4] = v32;
    v8 = sub_100037B44(0, 0, v30, &unk_100079D78, v33);
    v0[19] = v8;
    *(v6 + v7) = v8;

    v34 = swift_task_alloc();
    v0[20] = v34;
    v26 = type metadata accessor for CachedVoicemailManager.Cache();
    *v34 = v0;
    v34[1] = sub_100029838;
    v27 = v0 + 9;
  }

  else
  {

    v25 = swift_task_alloc();
    v0[18] = v25;
    v26 = type metadata accessor for CachedVoicemailManager.Cache();
    *v25 = v0;
    v25[1] = sub_1000294C0;
    v27 = v0 + 8;
  }

  return Task<>.value.getter(v27, v8, v26);
}

uint64_t sub_1000294C0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1000295E0, v3, v2);
}

uint64_t sub_1000295E0()
{
  v19 = v0;

  v1 = v0[8];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_deferredOperationsQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v18 = v1;

      v7(&v18);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = sub_10006072C();
  v9 = sub_100060A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100046270(0x73654D6863746566, 0xEF29287365676173, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning voicemails", v10, 0xCu);
    sub_100018230(v11);
  }

  swift_beginAccess();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];

  v15 = sub_10002BD14(v12, v13, v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_100029838()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100029958, v3, v2);
}

uint64_t sub_100029958()
{
  v19 = v0;

  v1 = v0[9];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_deferredOperationsQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v18 = v1;

      v7(&v18);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = sub_10006072C();
  v9 = sub_100060A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100046270(0x73654D6863746566, 0xEF29287365676173, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning voicemails", v10, 0xCu);
    sub_100018230(v11);
  }

  swift_beginAccess();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];

  v15 = sub_10002BD14(v12, v13, v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_100029BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100030EDC(&qword_1000995D0, type metadata accessor for VoicemailActor, &unk_1000790A8);
  v6 = sub_10006091C();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_100029C70, v6, v5);
}

uint64_t sub_100029C70()
{
  v16 = v0;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v1 = sub_10006074C();
  *(v0 + 96) = sub_10001762C(v1, qword_10009BED0);
  v2 = sub_10006072C();
  v3 = sub_100060A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100046270(0x73654D6863746566, 0xEF29287365676173, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "CachedVoicemailManager: %s inside of a task", v4, 0xCu);
    sub_100018230(v5);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v14 = (*((swift_isaMask & *Strong) + 0xC0) + **((swift_isaMask & *Strong) + 0xC0));
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_100029F4C;

    return v14();
  }

  else
  {
    type metadata accessor for CachedVoicemailManager.Cache();
    v9 = swift_allocObject();
    sub_10002EEB8(_swiftEmptyArrayStorage);
    v9[2] = v10;
    v9[3] = v11;
    v9[4] = v12;
    **(v0 + 64) = v9;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100029F4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10002A294;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10002A074;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10002A074()
{
  v17 = v0;
  v1 = *(v0 + 104);
  v2 = sub_10002FEF4(*(v0 + 128), 1);
  *(v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state) = v2 | 0x4000000000000000;
  swift_retain_n();

  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);

  v6 = sub_10002BD14(v3, v4, v5);

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v7 = sub_100060CFC();
  }

  else
  {
    v7 = *(v6 + 2);
  }

  sub_100028A10(v7);

  v8 = sub_10006072C();
  v9 = sub_100060A4C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100046270(0x73654D6863746566, 0xEF29287365676173, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning cache from a task", v12, 0xCu);
    sub_100018230(v13);
  }

  **(v0 + 64) = v2;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10002A294()
{
  v1 = *(v0 + 104);
  type metadata accessor for CachedVoicemailManager.Cache();
  v2 = swift_allocObject();
  sub_10002EEB8(_swiftEmptyArrayStorage);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v2[2] = v4;
  v2[3] = v6;
  v2[4] = v8;
  **(v0 + 64) = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10002A4C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100030EDC(&qword_1000995D0, type metadata accessor for VoicemailActor, &unk_1000790A8);
  v4 = sub_10006091C();

  return _swift_task_switch(sub_10002A58C, v4, v3);
}

uint64_t sub_10002A58C()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10002A630;

  return sub_100028E68();
}

uint64_t sub_10002A630(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v7 = *v1;

  sub_100017538(&qword_10009A700, &qword_10007AC40);
  isa = sub_1000608BC().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10002A7A8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100030EDC(&qword_1000995D0, type metadata accessor for VoicemailActor, &unk_1000790A8);
  v4 = sub_10006091C();
  v2[11] = v4;
  v2[12] = v3;

  return _swift_task_switch(sub_10002A870, v4, v3);
}

uint64_t sub_10002A870()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state);
  v0[13] = v1;
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = v0[9];
      v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
      swift_beginAccess();
      v4 = v3[2];
      v5 = v3[3];
      v6 = v3[4];

      sub_100037E40(v2, v4, v5, v6);
      v8 = v7;

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v12 = v0[1];

    return v12(v9);
  }

  else
  {

    v10 = swift_task_alloc();
    v0[14] = v10;
    v11 = type metadata accessor for CachedVoicemailManager.Cache();
    *v10 = v0;
    v10[1] = sub_10002AA18;

    return Task<>.value.getter(v0 + 8, v1, v11);
  }
}

uint64_t sub_10002AA18()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10002AB38, v3, v2);
}

uint64_t sub_10002AB38()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_100037E40(v2, v3, v4, v5);
  v7 = v6;

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10002ADA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100030EDC(&qword_1000995D0, type metadata accessor for VoicemailActor, &unk_1000790A8);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10002AE74, v5, v4);
}

uint64_t sub_10002AE74()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10002AF30;
  v6 = *(v0 + 16);

  return sub_10002A7A8(v6);
}

uint64_t sub_10002AF30(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  swift_unknownObjectRelease();
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10002B0C4(unint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state);
  if (!(v4 >> 62))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v16 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v17 = *(v1 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_100051690(0, v17[2] + 1, 1, v17);
      *(v1 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_100051690((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_100030ED4;
    v21[5] = v15;
    *(v1 + v16) = v17;
    swift_endAccess();
    v14 = 1;
    v24 = 1;
    sub_10002FE3C();
    swift_willThrowTypedImpl();
    return v14;
  }

  if (v4 >> 62 != 1)
  {
    v24 = 0;
    sub_10002FE3C();
    swift_willThrowTypedImpl();
    return 0;
  }

  v5 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  v25 = _swiftEmptyArrayStorage;
  swift_retain_n();
  sub_100030B40(a1, v5, &v25);

  swift_beginAccess();
  v6 = v5[4];
  v23 = sub_10002F1F0(v5[3], v6);
  sub_10002FD10(&v23, sub_100028474);
  if (!v2)
  {
    v7 = v23[2];
    if (v7 == *(v6 + 16))
    {
      sub_10002CFDC((v23 + 4), v7, v5 + 2);

      swift_endAccess();
      v8 = v25;

      v10 = sub_100030D74(v9);

      if ((v10 & 0xC000000000000001) != 0)
      {
        if (v10 < 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v12 = sub_100060B5C();
        v10 = sub_10002D8DC(v11, v12);
      }

      v13 = sub_10002DABC(v8, v10);
      v14 = v13;
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (sub_100060B5C())
        {
LABEL_12:

          v24 = v14;
          sub_10002FE3C();
          swift_willThrowTypedImpl();

          return v14;
        }
      }

      else if (*(v13 + 16))
      {
        goto LABEL_12;
      }

      v14 = sub_100028238(v8);

      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B3D0(uint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  v8 = _swiftEmptyArrayStorage;

  sub_100030B40(a2, v3, &v8);

  swift_beginAccess();
  v4 = v3[4];
  v7 = sub_10002F1F0(v3[3], v4);
  sub_10002FD10(&v7, sub_100028474);
  v5 = v7[2];
  if (v5 == *(v4 + 16))
  {
    sub_10002CFDC((v7 + 4), v5, v3 + 2);

    swift_endAccess();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_10002B4C8(unint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state);
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1)
    {

      sub_10002B6C8((v4 & 0x3FFFFFFFFFFFFFFFLL), a1, v5);
    }

    else
    {
      sub_10002FE3C();

      swift_willThrowTypedImpl();

      return 0;
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10002FDD0;
    *(v6 + 24) = v3;
    v7 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v8 = *(v1 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100051690(0, v8[2] + 1, 1, v8);
      *(v1 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100051690((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_10002FE10;
    v12[5] = v6;
    *(v1 + v7) = v8;
    swift_endAccess();
    v1 = 1;
    sub_10002FE3C();
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t sub_10002B6C8(uint64_t *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100060CFC())
  {
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    a3.n128_u64[0] = 136315138;
    v27 = a3;
    v28 = i;
    v29 = v3 & 0xC000000000000001;
    while (v7)
    {
      v9 = sub_100060C0C();
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v11 = [v9 identifier];
      swift_beginAccess();
      sub_1000282CC(v9, v11);
      v13 = v12;
      swift_endAccess();

      if (v13)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_100099400 != -1)
        {
          swift_once();
        }

        v14 = sub_10006074C();
        sub_10001762C(v14, qword_100099E80);
        swift_unknownObjectRetain();
        v15 = sub_10006072C();
        v16 = sub_100060A2C();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = v9;
          v33[0] = v31;
          *v17 = v27.n128_u32[0];
          swift_unknownObjectRetain();
          sub_100017538(&qword_10009A700, &qword_10007AC40);
          v18 = sub_10006083C();
          log = v15;
          v20 = v8;
          v21 = a1;
          v22 = v3;
          v23 = sub_100046270(v18, v19, v33);
          i = v28;

          *(v17 + 4) = v23;
          v3 = v22;
          a1 = v21;
          v8 = v20;
          _os_log_impl(&_mh_execute_header, log, v16, "CachedVoicemailmanager: Told to update message but no message was found with id: %s", v17, 0xCu);
          sub_100018230(v31);

          v7 = v29;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      ++v6;
      if (v10 == i)
      {
        goto LABEL_20;
      }
    }

    if (v6 >= *(v8 + 16))
    {
      goto LABEL_18;
    }

    v9 = *(v3 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  swift_beginAccess();
  v24 = a1[4];
  v32 = sub_10002F1F0(a1[3], v24);
  sub_10002FD10(&v32, sub_100028474);
  v25 = v32[2];
  if (v25 == *(v24 + 16))
  {
    sub_10002CFDC((v32 + 4), v25, a1 + 2);

    return swift_endAccess();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

id sub_10002BA5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedVoicemailManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10002BB18()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&qword_100099EE0, &qword_100079CA0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

unint64_t sub_10002BB6C(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10002BB94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10002BBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10002BC50(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void *sub_10002BC8C(uint64_t a1, uint64_t a2)
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

  sub_100017538(&qword_100099B38, &qword_1000799E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_10002BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = sub_10002BC8C(*(a3 + 16), 0);
  v8 = sub_10002EB20(&v10, (v7 + 4), v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v7;
}

char *sub_10002BDE0(unint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_100060CFC();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_10002BC8C(v5, 0);
  a2(v7 + 32, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10002BE7C(void *a1, uint64_t a2)
{
  v3 = a1;
  sub_100060C3C();
  sub_100060C6C();
  sub_100060C7C();
  result = sub_100060C4C();
  v5 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (sub_10006045C() >= v5)
    {
      result = swift_isUniquelyReferenced_native();
      v6 = *v2;
      if ((result & 1) == 0)
      {
        if (!v6)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v7 = sub_10006047C();

        *v2 = v7;
        v6 = v7;
      }

      if (v6)
      {
        return sub_10006041C();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v5 < 0x10)
  {
    return result;
  }

  return sub_10002BFB4();
}

uint64_t sub_10002BFB4()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_10006048C();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_10002C054(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_10002C054(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_10006048C();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_10006049C();
    sub_10002C0D4(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

Swift::Int sub_10002C124(Swift::Int result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v10 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *a3;
        v8 = *(v10 + 8 * v6);
        result = sub_100060ACC(v7);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v9 = sub_1000603FC();

        if (v9)
        {
          while (1)
          {
            sub_10006044C();
          }
        }

        result = sub_10006043C();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002C230(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  sub_100060C5C();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = sub_10006048C();
    v8 = v7;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v7 = v8;
      v8 = *(v5 + 24) & 0x3FLL;
    }
  }

  else
  {
    v7 = sub_10006048C();
    v6 = 0;
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v3[1];
  if (v6 < v7)
  {
    if (v8 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

LABEL_23:
    v13 = sub_10002C054(v9, v10, 0, v8);

    *v3 = v13;
    return result;
  }

  if (v8 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  result = sub_10006048C();
  if (result <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  if (v12 < v6)
  {
    if (v8 <= v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_23;
  }

  if (!v5 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v14 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v8)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v14 = sub_10006047C();

  *v3 = v14;
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v14 + 24) & 0x3FLL) != v8)
  {
    *(v14 + 24) = *(v14 + 24) & 0xFFFFFFFFFFFFFFC0 | v8 & 0x3F;
  }

  return result;
}

uint64_t sub_10002C3D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100017538(&qword_10009A028, &qword_100079D88);
  result = sub_100060D1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_100060ACC(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_10002C640()
{
  v1 = v0;
  sub_100017538(&qword_10009A028, &qword_100079D88);
  v2 = *v0;
  v3 = sub_100060D0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_10002C7A4(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_10002C904(a1);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_10006046C())
  {
LABEL_16:
    sub_10002C904(a1);
    sub_10002BFB4();
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_10006047C();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    sub_10002C9B8(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_10002CB98(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_10002C904(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_10002C9A4(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    sub_100060C4C();
    return v8;
  }

  return result;
}

void sub_10002C9B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v19 = sub_1000603FC();
  sub_10006044C();
  if (v19)
  {
    v7 = sub_10006040C();
    while (1)
    {
      v8 = sub_10006042C();
      if (v9)
      {
LABEL_25:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(a4 + 8);
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_23;
      }

      v11 = *a2;
      v12 = *(v10 + 8 * v8 + 32);
      v13 = sub_100060ACC(v11);

      v14 = 1 << *a2;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_24;
      }

      v15 = (v14 - 1) & v13;
      if (v6 >= v7)
      {
        if (v15 >= v7 && v6 >= v15)
        {
LABEL_18:
          sub_10006042C();
          v6 = a1;
          sub_10006041C();
        }
      }

      else if (v15 >= v7 || v6 >= v15)
      {
        goto LABEL_18;
      }

      sub_10006044C();
    }
  }

  sub_10006041C();
}

void sub_10002CB98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v10 = *(a3 + 16);
    if (result < (v10 - v6) / 2)
    {
      if (sub_10006045C() / 3 > result)
      {
        if (result < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v10 < result)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v11 = a3;

        if (result)
        {
          v12 = 0;
          while (1)
          {
            v13 = *a4;
            v14 = *(v11 + 32 + 8 * v12);
            sub_100060ACC(v13);
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1000603FC())
            {
              while (1)
              {
                v15 = sub_10006042C();
                if ((v16 & 1) == 0 && v15 == v12)
                {
                  break;
                }

                sub_10006044C();
              }
            }

            if (__OFADD__(v12, v6))
            {
              goto LABEL_55;
            }

            ++v12;
            sub_10006043C();

            if (v12 == result)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1000603FC();
      v22 = sub_10006042C();
      if ((v23 & 1) != 0 || v22 >= result)
      {
LABEL_33:
        sub_10006044C();
LABEL_18:
        v17 = a4[1];
        if (__OFSUB__(v17 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v18 = 1 << *a4;
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v19)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v21 = (v20 & (((v17 >> 6) - v6) >> 63)) + (v17 >> 6) - v6;
        if (v21 < v20)
        {
          v20 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v21 - v20) << 6);
        return;
      }

      if (!__OFADD__(v22, v6))
      {
        sub_10006043C();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1000603FC();
      v24 = sub_10006042C();
      if ((v25 & 1) == 0 && v24 >= v5)
      {
        if (__OFSUB__(v24, v6))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_10006043C();
      }

      sub_10006044C();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v10 - a2) >= sub_10006045C() / 3)
    {
      goto LABEL_39;
    }

    if (v10 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v10 != v5)
    {
      do
      {
        v26 = *a4;
        v27 = *(a3 + 32 + 8 * v5);
        sub_100060ACC(v26);
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1000603FC())
        {
          while (1)
          {
            v28 = sub_10006042C();
            if ((v29 & 1) == 0 && v28 == v5)
            {
              break;
            }

            sub_10006044C();
          }
        }

        sub_10006043C();
      }

      while (++v5 != v10);
    }
  }
}

uint64_t sub_10002CFDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10002EC00(a1, a2, sub_10002EBE8);
  v7 = v6;
  v8 = sub_10002D0B4();
  v9 = sub_10002C054(v7, 0, 1, v8);
  if (*(v7 + 16) <= 0xFuLL)
  {

    v9 = 0;
  }

  *a3 = v9;
  a3[1] = v7;

  sub_10002EC00(a1, a2, sub_10002EBF4);
  a3[2] = v10;
}

uint64_t sub_10002D0BC(char *__dst, char *__src, char *a3, unint64_t a4, uint64_t (*a5)(void **, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 < v14 >> 4)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v62 = (v16 + 16 * v12);
    if (v10 < 16)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v59 = v9;
      v19 = v7;
      v20 = *v8;
      v21 = *(v8 + 1);
      v22 = v8;
      v23 = *v16;
      v24 = *(v16 + 8);
      v25 = v16;
      v67 = v20;
      v65 = v23;
      v66 = v21;
      v64 = v24;
      v26 = v20;
      swift_unknownObjectRetain();
      v27 = v23;
      swift_unknownObjectRetain();
      v28 = a5(&v67, &v66, &v65, &v64);
      if (v5)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v51 = v62 - v25 + 15;
        if (v62 - v25 >= 0)
        {
          v51 = v62 - v25;
        }

        v49 = v59;
        if (v59 < v25 || v59 >= &v25[v51 & 0xFFFFFFFFFFFFFFF0] || v59 != v25)
        {
          v52 = 16 * (v51 >> 4);
          v50 = v25;
          goto LABEL_57;
        }

        return 1;
      }

      v29 = v28;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v29)
      {
        break;
      }

      v17 = v25;
      v16 = (v25 + 16);
      v8 = v22;
      v18 = v59;
      v7 = v19;
      if (v59 != v25)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 = v18 + 16;
      if (v16 >= v62)
      {
        goto LABEL_10;
      }
    }

    v30 = v22;
    v17 = v22;
    v8 = v22 + 16;
    v18 = v59;
    v7 = v19;
    v16 = v25;
    if (v59 == v30)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v18 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v15] <= a4)
  {
    v31 = a4;
    memmove(a4, __src, 16 * v15);
    a4 = v31;
  }

  v62 = (a4 + 16 * v15);
  v32 = v13 < 16;
  v16 = a4;
  if (v32 || v8 <= v9)
  {
LABEL_51:
    v53 = &v62[-v16 + 15];
    if (&v62[-v16] >= 0)
    {
      v53 = &v62[-v16];
    }

    if (v8 < v16 || v8 >= v16 + (v53 & 0xFFFFFFFFFFFFFFF0) || v8 != v16)
    {
      v52 = 16 * (v53 >> 4);
      v49 = v8;
      v50 = v16;
LABEL_57:
      memmove(v49, v50, v52);
      return 1;
    }

    return 1;
  }

  v33 = -a4;
  v57 = a4;
  v60 = v9;
  v55 = -a4;
LABEL_25:
  v63 = v6;
  v56 = v8 - 16;
  v34 = v62;
  v35 = &v62[v33];
  v36 = v7 - 16;
  v58 = v8;
  while (1)
  {
    v37 = v36;
    v38 = *(v34 - 2);
    v39 = *(v34 - 1);
    v34 -= 16;
    v40 = *(v8 - 2);
    v41 = *(v8 - 1);
    v67 = v38;
    v65 = v40;
    v66 = v39;
    v64 = v41;
    v42 = v38;
    swift_unknownObjectRetain();
    v43 = v40;
    swift_unknownObjectRetain();
    v44 = a5(&v67, &v66, &v65, &v64);
    if (v63)
    {
      break;
    }

    v45 = v44;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v7 = v37;
    v46 = v37 + 16;
    if (v45)
    {
      if (v46 != v58)
      {
        *v37 = *v56;
      }

      v16 = v57;
      v6 = 0;
      if (v62 <= v57 || (v8 = v56, v33 = v55, v56 <= v60))
      {
        v8 = v56;
        goto LABEL_51;
      }

      goto LABEL_25;
    }

    v8 = v58;
    if (v46 != v62)
    {
      *v37 = *v34;
    }

    v35 -= 16;
    v36 = v37 - 16;
    v62 = v34;
    if (v34 <= v57)
    {
      v62 = v34;
      v16 = v57;
      goto LABEL_51;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v35 >= 0)
  {
    v47 = v35;
  }

  else
  {
    v47 = v35 + 15;
  }

  v48 = v47 >> 4;
  v50 = v57;
  v49 = v58;
  if (v58 < v57 || v58 >= &v57[v47 & 0xFFFFFFFFFFFFFFF0])
  {
    v52 = 16 * v48;
    goto LABEL_57;
  }

  if (v58 != v57)
  {
    memmove(v58, v57, 16 * v48);
  }

  return 1;
}

uint64_t sub_10002D520(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002D5AC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10002D5C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017538(&qword_100099FF8, &unk_10007A8C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10002D6C4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100060B6C();

    if (v9)
    {

      type metadata accessor for MessageID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_100060B5C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10002D8DC(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10002DF8C(v20 + 1);
    }

    v18 = v8;
    sub_10002E1B4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for MessageID(0);
  v11 = sub_100060ACC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10002E65C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100060ADC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}