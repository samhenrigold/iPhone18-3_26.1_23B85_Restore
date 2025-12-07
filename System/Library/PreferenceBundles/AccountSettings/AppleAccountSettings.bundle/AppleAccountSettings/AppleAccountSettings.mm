void sub_3FDC(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  y = CGPointZero.y;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = [UIBezierPath bezierPathWithOvalInRect:CGPointZero.x, y, v5, v6];
  v7 = v8;
  CGContextAddPath(v3, [v8 CGPath]);
  CGContextClip(v3);
  [*(a1 + 32) drawInRect:{CGPointZero.x, y, v5, v6}];
}

id sub_4284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  [*(a1 + 32) setFill];
  [v3 fillRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];

  v5 = *(a1 + 80);
  v7.b = 0.0;
  v7.c = 0.0;
  v7.a = 1.0;
  *&v7.d = xmmword_402E0;
  v7.ty = v5;
  CGContextConcatCTM(v4, &v7);
  return [*(a1 + 40) drawInRect:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
}

void sub_431C(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSaveGState(v3);
  v4 = [UIBezierPath bezierPathWithRoundedRect:*(a1 + 40) cornerRadius:*(a1 + 48), *(a1 + 56), *(a1 + 64), 5.0];
  v5 = [v4 CGPath];

  CGContextAddPath(v3, v5);
  CGContextClip(v3);
  [*(a1 + 32) drawInRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  CGContextRestoreGState(v3);
}

void sub_4F6C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setImageData:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_514C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = qword_6A170;
  v13 = qword_6A170;
  if (!qword_6A170)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_53B0;
    v9[3] = &unk_59380;
    v9[4] = &v10;
    sub_53B0(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [*(a1 + 32) firstName];
  v7 = [*(a1 + 32) lastName];
  v8 = [v4 profilePictureForContact:0 serverImageData:v3 firstName:v6 lastName:v7 diameter:*(a1 + 48)];

  (*(*(a1 + 40) + 16))();
}

void sub_5284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_53B0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_6A178)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_54F4;
    v4[4] = &unk_593B8;
    v4[5] = v4;
    v5 = off_593A0;
    v6 = 0;
    qword_6A178 = _sl_dlopen();
    v2 = v4[0];
    if (qword_6A178)
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
  result = objc_getClass("FAProfilePictureStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_3315C();
  }

  qword_6A170 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_54F4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_6A178 = result;
  return result;
}

id _AAUILogSystem(uint64_t a1)
{
  if (qword_6A188 != -1)
  {
    sub_33184();
  }

  v2 = qword_6A180;

  return v2;
}

void sub_55AC(id a1)
{
  qword_6A180 = os_log_create("com.apple.appleaccount", "ui");

  _objc_release_x1();
}

id _AAUISignpostLogSystem(uint64_t a1)
{
  if (qword_6A198 != -1)
  {
    sub_33198();
  }

  v2 = qword_6A190;

  return v2;
}

void sub_5634(id a1)
{
  qword_6A190 = os_log_create("com.apple.appleaccount", "ui.signpost");

  _objc_release_x1();
}

id _AAUIPPSLogSystem(uint64_t a1)
{
  if (qword_6A1A8 != -1)
  {
    sub_331AC();
  }

  v2 = qword_6A1A0;

  return v2;
}

void sub_56BC(id a1)
{
  qword_6A1A0 = os_log_create("com.apple.appleaccount", "ui.pps");

  _objc_release_x1();
}

id _AAUISignOutLogSystem(uint64_t a1)
{
  if (qword_6A1B8 != -1)
  {
    sub_331C0();
  }

  v2 = qword_6A1B0;

  return v2;
}

void sub_5744(id a1)
{
  qword_6A1B0 = os_log_create("com.apple.appleaccount", "signout");

  _objc_release_x1();
}

void sub_578C(void *a1, uint64_t a2)
{
  v2 = a1;
  v5 = +[NSBundle mainBundle];
  v3 = [v5 bundleIdentifier];
  [v3 UTF8String];
  ct_green_tea_logger_create();
  v4 = getCTGreenTeaOsLogHandle();
  [v2 UTF8String];

  os_log_with_args();
  ct_green_tea_logger_destroy();
}

void _AAUILogGreenTeaTransmittingPhotosOrVideos()
{
  v11 = +[NSBundle mainBundle];
  v0 = [v11 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 processName];

  v3 = +[NSDate now];
  _AAUILogGreenTeaWithFormat(@"%@ <%@>[Settings][%@] : Transmitting photos or videos", v4, v5, v6, v7, v8, v9, v10, v3);
}

os_signpost_id_t _AAUISignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

unint64_t _AAUISignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (qword_6A1C8 != -1)
  {
    sub_331D4();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = dword_6A1C0;
  LODWORD(v5) = *algn_6A1C4;
  return (v4 / v5 * (v3 - a2));
}

void sub_5A4C(void *a1)
{
  v1 = a1;
  v2 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v6 = [v2 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v7 = v1[1];
  v1[1] = v6;

  [v1[1] setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [[AAUILabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = v1[2];
  v1[2] = v8;

  v10 = v1[2];
  v11 = [UIColor colorWithWhite:0.0 alpha:0.959999979];
  [v10 setBackgroundColor:v11];

  [v1[2] setTextAlignment:1];
  v12 = v1[2];
  v13 = +[UIColor whiteColor];
  [v12 setTextColor:v13];

  [v1[2] setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v15 = v1[3];
  v1[3] = v14;

  v16 = v1[3];
  v17 = [UIColor colorWithWhite:0.0 alpha:0.300000012];
  [v16 setBackgroundColor:v17];

  [v1[3] setHidden:{objc_msgSend(v1, "isHighlighted") ^ 1}];
  [v1[3] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v1[1]];
  [v1 addSubview:v1[2]];
  [v1 addSubview:v1[3]];
  v51 = [v1[1] topAnchor];
  v50 = [v1 topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v52[0] = v49;
  v48 = [v1[1] bottomAnchor];
  v47 = [v1 bottomAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v52[1] = v46;
  v45 = [v1[1] leadingAnchor];
  v44 = [v1 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v52[2] = v43;
  v42 = [v1[1] trailingAnchor];
  v41 = [v1 trailingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v52[3] = v40;
  v39 = [v1[2] bottomAnchor];
  v38 = [v1 bottomAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v52[4] = v37;
  v36 = [v1[2] leadingAnchor];
  v35 = [v1 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v52[5] = v34;
  v33 = [v1[2] trailingAnchor];
  v32 = [v1 trailingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v52[6] = v31;
  v30 = [v1[3] topAnchor];
  v29 = [v1 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v52[7] = v28;
  v27 = [v1[3] bottomAnchor];
  v18 = [v1 bottomAnchor];
  v19 = [v27 constraintEqualToAnchor:v18];
  v52[8] = v19;
  v20 = [v1[3] leadingAnchor];
  v21 = [v1 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v52[9] = v22;
  v23 = [v1[3] trailingAnchor];
  v24 = [v1 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v52[10] = v25;
  v26 = [NSArray arrayWithObjects:v52 count:11];
  [NSLayoutConstraint activateConstraints:v26];

  [v1 _updateLabelVisibility];
  [v1 _updateOverlayViewVisibility];
}

void sub_6D6C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 reloadSpecifiersForProvider:*(a1 + 32) oldSpecifiers:*(a1 + 40) animated:1];
}

void sub_6FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7000(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || a3)
    {
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v16 localizedStringForKey:@"APPLE_CARE_ERROR_ALERT_TITLE" value:&stru_5A5F0 table:@"Localizable"];
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"APPLE_CARE_ERROR_ALERT_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
      v8 = [UIAlertController alertWithTitle:v10 message:v12 buttonTitle:v14];

      v15 = [v7 delegate];
      [v15 specifierProvider:v7 showViewController:v8];
    }

    else
    {
      v8 = [WeakRetained delegate];
      [v8 specifierProvider:v7 showViewController:v5];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = _AAUILogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_331E8(v9);
    }
  }
}

void sub_7AD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[12] aaui_showViewController:*(*(a1 + 32) + 72) sender:0];
  v2 = WeakRetained;
  if (*(WeakRetained + 88) == 1)
  {
    if (*(WeakRetained + 89) == 1)
    {
      [WeakRetained _postAdpUpsellCFUFamilyCustodianAddedEvent];
    }

    else
    {
      [WeakRetained _postAdpUpsellCFUCustodianInviteSentEvent];
    }

    v2 = WeakRetained;
  }
}

void sub_7EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7EDC(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    v5 = [*(*(a1 + 32) + 64) primaryButton];
    [v5 hidesBusyIndicator];
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    [v6 _sendTelemetryEventWithSuccess:v7 didSucceed:1 error:0];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _showInvitationSent];
  }

  else
  {
    [v6 _sendTelemetryEventWithSuccess:v7 didSucceed:0 error:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _cancelMessageInvitationFlow];
  }
}

void sub_81A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[12] dismissViewControllerAnimated:1 completion:0];
}

void sub_8328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[12] dismissViewControllerAnimated:1 completion:0];
}

void sub_859C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_85C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v22 = _AAUILogSystem(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_3332C(v22);
    }

    goto LABEL_22;
  }

  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    v8 = [WeakRetained[8] primaryButton];
    [v8 hidesBusyIndicator];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    v22 = _AAUILogSystem(v9);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_332B4(v6, v22);
    }

    goto LABEL_22;
  }

  v9 = [WeakRetained _hideActivitySpinnerInNavigationBar];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ([*(a1 + 32) uiVersion] == &dword_0 + 1)
  {
    v10 = [v5 bubbleMetadata];
    v33 = [objc_alloc(sub_89DC()) initWithLinkMetadata:v10];
    v11 = [objc_alloc(sub_8ABC()) initWithAlternateLayout:v33];
    [v11 setRequiredCapabilities:&off_5C508];
    v12 = objc_alloc(sub_8B9C());
    v13 = objc_alloc_init(sub_8C7C());
    v14 = [v12 initWithSession:v13];

    [v14 setLayout:v11];
    v15 = [*(*(a1 + 32) + 16) messageURL];
    [v14 setURL:v15];

    v16 = [v10 title];
    [v14 setSummaryText:v16];

    v17 = [v14 _pluginPayloadWithAppIconData:0 appName:@"CustodianInviteMessageExtension" allowDataPayloads:1];
    v18 = [v17 data];
    v37 = WeakRetained[3];
    v19 = [NSArray arrayWithObjects:&v37 count:1];
    v20 = IMSPISendMSMessagePayloadReturningGUID();

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = +[AAUIFeatureFlags isLCMessageExtensionEnabled];
    if (v23)
    {
      v21 = [WeakRetained _sendLCLiveMessage:v5];
      if ((v21 & 1) == 0)
      {
LABEL_20:
        v22 = _AAUILogSystem(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_33270(v22);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v24 = _AAUILogSystem(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v5;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Sending message with linkmetadata: %@", buf, 0xCu);
      }

      v25 = objc_alloc_init(LPMessagesPayload);
      v26 = [v5 bubbleMetadata];
      [v25 setMetadata:v26];

      v34 = 0;
      v27 = [v25 dataRepresentationWithOutOfLineAttachments:&v34];
      v28 = v34;
      v29 = [WeakRetained[2] inviteURL];
      v30 = IMSPISendRichLink();

      v31 = [WeakRetained[2] messageBody];
      v32 = IMSPISendMessageWithAttachments();

      if (!v30 || !v32)
      {
        goto LABEL_20;
      }
    }
  }

  [WeakRetained _invitationWasSent];
LABEL_23:
}

id sub_89DC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_6A1D0;
  v7 = qword_6A1D0;
  if (!qword_6A1D0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_96B8;
    v3[3] = &unk_59380;
    v3[4] = &v4;
    sub_96B8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_8AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_8ABC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_6A1E0;
  v7 = qword_6A1E0;
  if (!qword_6A1E0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_9880;
    v3[3] = &unk_59380;
    v3[4] = &v4;
    sub_9880(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_8B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_8B9C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_6A1E8;
  v7 = qword_6A1E8;
  if (!qword_6A1E8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_98D8;
    v3[3] = &unk_59380;
    v3[4] = &v4;
    sub_98D8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_8C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_8C7C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_6A1F0;
  v7 = qword_6A1F0;
  if (!qword_6A1F0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_9930;
    v3[3] = &unk_59380;
    v3[4] = &v4;
    sub_9930(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_8D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8D5C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = _AAUILogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Sent message GUID: %@", &v4, 0xCu);
  }
}

void sub_8FC8(id a1, NSString *a2)
{
  v2 = a2;
  v3 = _AAUILogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Sent message GUID: %@", &v4, 0xCu);
  }
}

void sub_96B8(uint64_t a1)
{
  sub_9710();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MSMessageRichLinkLayout");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_6A1D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_333F4();
    sub_9710();
  }
}

void sub_9710()
{
  v1[0] = 0;
  if (!qword_6A1D8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_980C;
    v1[4] = &unk_593B8;
    v1[5] = v1;
    v2 = off_595E8;
    v3 = 0;
    qword_6A1D8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_6A1D8)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_980C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_6A1D8 = result;
  return result;
}

Class sub_9880(uint64_t a1)
{
  sub_9710();
  result = objc_getClass("MSMessageLiveLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_6A1E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_3341C();
    return sub_98D8(v3);
  }

  return result;
}

Class sub_98D8(uint64_t a1)
{
  sub_9710();
  result = objc_getClass("MSMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_6A1E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_33444();
    return sub_9930(v3);
  }

  return result;
}

AAUIBaseDetailViewController *sub_9930(uint64_t a1)
{
  sub_9710();
  result = objc_getClass("MSSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_6A1F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_3346C();
    return [(AAUIBaseDetailViewController *)v3 init];
  }

  return result;
}

void sub_A02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v17 - 88));
  _Unwind_Resume(a1);
}

void sub_A05C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained fetchIDSStatusForRecipient:*(a1 + 32)];
}

void sub_A0AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _isHandleReachable:*(a1 + 32)];
}

void sub_AD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_AD84(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AE3C;
  block[3] = &unk_59630;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  v8 = a2;
  dispatch_async(v4, block);

  objc_destroyWeak(&v7);
}

void sub_AE3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  v4 = [WeakRetained _idsReachabilityDictionaryForRecipient:*(a1 + 32)];
  v5 = [*(a1 + 32) address];
  [v4 setObject:v3 forKeyedSubscript:v5];

  if (*(a1 + 48) == 1 && *(a1 + 32))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_AF68;
    v6[3] = &unk_594A0;
    v7 = WeakRetained;
    v8 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_AF68(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = +[UIColor tintColor];
  [v2 setTintColor:v3 forRecipient:*(a1 + 40)];
}

id sub_BF20(uint64_t a1)
{
  v2 = [*(a1 + 32) findMyAppLaunchButton];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  [*(*(a1 + 32) + 40) removeFromSuperview];
  [*(a1 + 32) insertSubview:*(*(a1 + 32) + 56) belowSubview:*(*(a1 + 32) + 32)];
  [NSLayoutConstraint deactivateConstraints:*(*(a1 + 32) + 80)];
  v5 = [*(*(a1 + 32) + 56) centerXAnchor];
  v6 = [*(*(a1 + 32) + 56) superview];
  v7 = [v6 centerXAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v18[0] = v8;
  v9 = [*(*(a1 + 32) + 56) topAnchor];
  v10 = [*(*(a1 + 32) + 32) bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];
  v18[1] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:2];
  v13 = *(a1 + 32);
  v14 = *(v13 + 80);
  *(v13 + 80) = v12;

  [NSLayoutConstraint activateConstraints:*(*(a1 + 32) + 80)];
  v15 = *(a1 + 32);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  return [*(a1 + 32) setNeedsDisplay];
}

id sub_C100(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeFromSuperview];
  v2 = [*(a1 + 32) _deviceTypeLabel];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) insertSubview:*(*(a1 + 32) + 40) belowSubview:*(*(a1 + 32) + 32)];
  [NSLayoutConstraint deactivateConstraints:*(*(a1 + 32) + 80)];
  v5 = [*(*(a1 + 32) + 40) centerXAnchor];
  v6 = [*(*(a1 + 32) + 40) superview];
  v7 = [v6 centerXAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v18[0] = v8;
  v9 = [*(*(a1 + 32) + 40) topAnchor];
  v10 = [*(*(a1 + 32) + 32) bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];
  v18[1] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:2];
  v13 = *(a1 + 32);
  v14 = *(v13 + 80);
  *(v13 + 80) = v12;

  [NSLayoutConstraint activateConstraints:*(*(a1 + 32) + 80)];
  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = 0;

  return [*(a1 + 32) setNeedsDisplay];
}

void sub_CD84(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = _AAUILogSystem(v7);
  v9 = v8;
  if (!v6 || v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_33870(v7, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Fetched device header image!", buf, 2u);
    }

    v10 = [UIImage imageWithData:v6];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_CEC8;
    v11[3] = &unk_594A0;
    v11[4] = *(a1 + 32);
    v12 = v10;
    v9 = v10;
    dispatch_async(&_dispatch_main_q, v11);
  }
}

void sub_CEC8(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setImage:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

void sub_D660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_D678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_D690(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AAUILogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationController done with iForgot! Error: %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_D9B8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_DA78;
  v8[3] = &unk_596F8;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_DA78(uint64_t a1)
{
  v2 = [*(a1 + 32) hideBusyUI];
  v3 = *(a1 + 56);
  v4 = _AAUILogSystem(v2);
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Succesfully signed in to iCloud, error: %{public}@", &v9, 0xCu);
    }

    v7 = +[ACAccountStore defaultStore];
    v8 = [*(a1 + 48) objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
    v5 = [v7 aa_appleAccountWithAltDSID:v8];

    [*(a1 + 32) didCompleteSigningInWithAccount:v5];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_33978(a1, v5);
  }
}

void sub_E604(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_ED70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setActivityIndicatorVisible:0];
  [*(a1 + 40) updateDetailLabelWithBackup:v4];
}

void sub_F350(uint64_t a1)
{
  v2 = objc_alloc_init(MBManager);
  v3 = [*(*(a1 + 32) + 40) backupUUID];
  v14 = 0;
  v4 = [v2 getBackupListWithError:&v14];
  v5 = v14;
  v6 = _AAUILogSystem(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_33B48(v5, v7);
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_33BC0(v7);
    }

    v8 = [*(a1 + 32) backupForUDID:v3 backupList:v4];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F4C8;
  block[3] = &unk_59308;
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10CBC(id a1)
{
  v4.height = 40.0;
  v4.width = 29.0;
  UIGraphicsBeginImageContextWithOptions(v4, 0, 0.0);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v2 = qword_6A1F8;
  qword_6A1F8 = v1;
}

void sub_13068(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1308C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAUILogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_33D44();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13170;
  block[3] = &unk_597F8;
  objc_copyWeak(&v10, (a1 + 40));
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v10);
}

void sub_13170(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 80, a1[4]);
    v4 = [v3 _activeAccount];
    v5 = [AAUIAppleAccountHeaderViewFactory createAppleAccountHeaderViewFromContact:v3[80] account:v4 showAccountDetails:1 showChangeButton:0];
    v6 = a1[5];
    v7 = v6[81];
    v6[81] = v5;

    v8 = [v3 _headerViewController];
    [v3 addChildViewController:v8];

    v9 = [v3 table];
    v10 = [v3 _headerViewController];
    v11 = [v10 view];
    [v9 setTableHeaderView:v11];

    [v3 _layoutHeader];
    v12 = _AAUILogSystem([*(a1[5] + 81) didMoveToParentViewController:v3]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_33D80();
    }
  }

  else
  {
    v4 = _AAUILogSystem(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_33DBC();
    }
  }

  v14 = _AAUILogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_33DF8();
  }

  [a1[5] _forgetSpecifiers];
  [a1[5] reloadSpecifiers];
}

void sub_136D0(uint64_t a1)
{
  v2 = [*(a1 + 32) table];
  [v2 beginUpdates];

  v3 = [*(a1 + 32) table];
  [v3 endUpdates];
}

void sub_13DE0(uint64_t a1)
{
  v2 = [*(a1 + 32) _appleAccount];

  if (v2)
  {
    v4 = _AAUILogSystem(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Fetching grandslam account from apple account", buf, 2u);
    }

    v5 = [*(a1 + 32) _accountStore];
    v6 = [*(a1 + 32) _appleAccount];
    v7 = [v5 aida_accountForiCloudAccount:v6];
LABEL_9:
    v14 = *(a1 + 32);
    v15 = *(v14 + 480);
    *(v14 + 480) = v7;

    goto LABEL_10;
  }

  v8 = [*(a1 + 32) _storeAccount];

  if (v8)
  {
    v10 = _AAUILogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Fetching grandslam account from store account", v18, 2u);
    }

    v11 = *(a1 + 32);
    v12 = v11[56];
    v13 = [v11 _storeAccount];
    v5 = [v12 altDSIDForAccount:v13 service:AIDAServiceTypeStore];

    v6 = [*(a1 + 32) _accountStore];
    v7 = [v6 aida_accountForAltDSID:v5];
    goto LABEL_9;
  }

LABEL_10:
  if (!*(*(a1 + 32) + 480))
  {
    v16 = _AAUILogSystem(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Could not fetch GrandSlam Account, we're destined for failure!", v17, 2u);
    }
  }
}

void sub_146F8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:NSKeyValueChangeNewKey];

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [*(a1 + 32) viewIfLoaded];
    v10 = [v9 window];

    if (v10)
    {
      [v11 _handleResourcesDictionaryDidChange:v8];
    }
  }
}

void sub_15724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15740(uint64_t a1)
{
  v2 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Followups changed. Lets reload specifiers", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_167EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_16804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1681C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAUILogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User's total iCloudStorage: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 760);
  *(v5 + 760) = v3;
  v7 = v3;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16974;
  block[3] = &unk_59680;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  *(*(a1 + 32) + 768) = 0;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_16CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_177E4(id a1, TUCall *a2)
{
  v2 = [(TUCall *)a2 provider];
  v3 = [v2 isFaceTimeProvider];

  return v3;
}

void sub_179EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17A24(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 name];
    [WeakRetained _reloadSignoutGroupSpecifiersForName:v4];
  }
}

void sub_17A9C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 name];
    [WeakRetained _reloadSignoutGroupSpecifiersForName:v4];
  }
}

void sub_17CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_opt_new();
  v4 = [v8 hooksFor:3 accountManager:*(*(a1 + 32) + 456)];
  v5 = [[AAUIServerUIHookHandler alloc] initWithRemoteUIController:v3 hooks:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 416);
  *(v6 + 416) = v5;
}

void sub_17E14(uint64_t a1)
{
  v2 = +[AKNetworkObserver sharedNetworkObserver];
  v3 = [v2 isNetworkReachable];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_17EC4;
  v4[3] = &unk_59990;
  v5 = v3;
  v4[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_17EC4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [AAPasswordSecurityUIRequest alloc];
    v3 = [*(a1 + 32) _grandSlamAccount];
    v4 = [*(a1 + 32) _accountStore];
    v5 = [v2 initWithGrandSlamAccount:v3 accountStore:v4];

    v6 = [*(a1 + 32) _appleAccount];
    LODWORD(v4) = [v6 aa_isAccountClass:AAAccountClassPrimary];

    if (v4)
    {
      [v5 setSpyglassOptionMask:AASpyGlassOptionPrimaryAccount];
    }

    v7 = *(a1 + 32);
    v8 = [v5 urlRequest];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1805C;
    v13[3] = &unk_59968;
    v13[4] = *(a1 + 32);
    v9 = [v7 _loadRemoteRequest:v8 withIdentifier:@"_AAUIRemotePageIdentifierSecurity" preparation:v13 completion:0];
    v10 = *(a1 + 32);
    v11 = *(v10 + 360);
    *(v10 + 360) = v9;
  }

  else
  {
    [*(a1 + 32) _showAccountDetailsUnavailableAlert];
    v12 = *(a1 + 32);

    [v12 _stopSpinnerInActiveSpecifier];
  }
}

void sub_1805C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_opt_new();
  v4 = [v8 hooksFor:1 accountManager:*(*(a1 + 32) + 456)];
  v5 = [[AAUIServerUIHookHandler alloc] initWithRemoteUIController:v3 hooks:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 416);
  *(v6 + 416) = v5;
}

void sub_18514(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem([*(*(a1 + 32) + 424) stopNavigationBarSpinner]);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController: CDP enrollement finished.", &v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController: CDP flow failed with error. %@", &v8, 0xCu);
    }

    [*(a1 + 32) _postCDPRepairFollowUp];
  }
}

void sub_187AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_188A4;
    v10[3] = &unk_59A08;
    v11 = v7;
    v12 = *(a1 + 48);
    [v11 loadRequest:v8 completion:v10];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }
}

void sub_188A4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v16 = v7;
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ done loading request with success %d. Error: %@", buf, 0x1Cu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_18A10;
  v10[3] = &unk_599E0;
  v8 = *(a1 + 40);
  v14 = a2;
  v13 = v8;
  v11 = v5;
  v12 = *(a1 + 32);
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

uint64_t sub_18A10(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

id sub_18D04(uint64_t a1)
{
  [*(a1 + 32) _stopSpinnerInActiveSpecifier];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 showController:v3 animate:1];
}

void sub_19008(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Sign in preflight came back with success: %{public}@, error: %{public}@", buf, 0x16u);
  }

  if (!a2)
  {
    if ([v5 ak_isAuthenticationErrorWithCode:-7005])
    {
LABEL_8:
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"SIGN_IN_ERROR_UNREACHABLE_TITLE" value:&stru_5A5F0 table:@"Localizable"];
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"SIGN_IN_ERROR_UNREACHABLE_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
      v12 = [UIAlertController alertWithTitle:v9 message:v11];

      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
      v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
      [v12 addAction:v15];

      v16 = *(a1 + 32);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_19310;
      v19[3] = &unk_59680;
      v19[4] = v16;
      [v16 presentViewController:v12 animated:1 completion:v19];

      goto LABEL_14;
    }

    v17 = [v5 domain];
    if ([v17 isEqualToString:AASignInErrorDomain])
    {
      v18 = [v5 code];

      if (v18 == -8009)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    [*(a1 + 32) _stopSpinnerInActiveSpecifier];
    goto LABEL_14;
  }

  [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
LABEL_14:
}

void sub_19F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  objc_destroyWeak(&a49);
  _Block_object_dispose((v49 - 232), 8);
  objc_destroyWeak((v49 - 184));
  os_activity_scope_leave((v49 - 176));
  _Unwind_Resume(a1);
}

void sub_19FE8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUISignOutLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Account sign out completed with success: %@, error: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A13C;
  block[3] = &unk_59A58;
  objc_copyWeak(&v9, (a1 + 40));
  v10 = a2;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v9);
}

void sub_1A13C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48) == 1)
    {
      [WeakRetained popRecursivelyToRootController];
      v4 = +[UIDevice currentDevice];
      v5 = [v4 userInterfaceIdiom];

      if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v6 = [NSURL URLWithString:@"prefs:root=General"];
        v7 = +[LSApplicationWorkspace defaultWorkspace];
        [v7 openSensitiveURL:v6 withOptions:0];
      }
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1A298;
      v10[3] = &unk_59680;
      v10[4] = WeakRetained;
      [WeakRetained dismissViewControllerAnimated:1 completion:v10];
    }

    v9 = *(*(a1 + 32) + 8);
    v8 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    v8 = _AAUISignOutLogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_34908();
    }
  }
}

void sub_1A2A0(id *a1, int a2, int a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v7 = WeakRetained;
  if (a2 && a3)
  {
    [WeakRetained _setSignOutInProgressForAppleAccount:a1[4]];
    v8 = v7[56];
    v9 = AIDAServiceTypeCloud;
    v10 = [a1[5] copy];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1A604;
    v27[3] = &unk_59AF8;
    v28 = v7;
    v29 = a1[4];
    v33 = a1[8];
    objc_copyWeak(&v34, a1 + 9);
    v30 = a1[6];
    v31 = a1[5];
    v32 = a1[7];
    [v8 signOutService:v9 withContext:v10 completion:v27];

    objc_destroyWeak(&v34);
    v11 = v28;
  }

  else if (a2)
  {
    [WeakRetained _setSignOutInProgressForAppleAccount:a1[4]];
    v12 = v7[56];
    v13 = AIDAServiceTypeCloud;
    v14 = [a1[5] copy];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1ABD8;
    v23[3] = &unk_59B20;
    v24 = v7;
    v25 = a1[4];
    v26 = a1[8];
    [v12 signOutService:v13 withContext:v14 completion:v23];

    v11 = v24;
  }

  else if (a3)
  {
    v15 = WeakRetained[56];
    v16 = AIDAServiceTypeStore;
    v17 = [a1[5] copy];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1ACF8;
    v21[3] = &unk_59B48;
    v22 = a1[8];
    [v15 signOutService:v16 withContext:v17 completion:v21];

    v11 = v22;
  }

  else
  {
    v18 = _AAUISignOutLogSystem(WeakRetained);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Not signing out of any accounts...", v20, 2u);
    }

    v19 = a1[8];
    v11 = [NSError aa_errorWithCode:-1];
    v19[2](v19, 0, v11);
  }
}

void sub_1A604(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v7 = _AAUISignOutLogSystem(WeakRetained);
    v8 = v7;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Signing out store account %@ now...", buf, 0xCu);
      }

      v10 = WeakRetained[56];
      v11 = [*(a1 + 56) copy];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1A880;
      v14[3] = &unk_59AD0;
      objc_copyWeak(&v19, (a1 + 80));
      v12 = AIDAServiceTypeStore;
      v18 = *(a1 + 72);
      v20 = a2;
      v15 = v5;
      v16 = *(a1 + 64);
      v17 = *(a1 + 56);
      [v10 signOutService:v12 withContext:v11 completion:v14];

      objc_destroyWeak(&v19);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_349B4();
      }

      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v13 = _AAUISignOutLogSystem([*(a1 + 32) _setSignOutNotInProgressForAppleAccount:*(a1 + 40)]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_34944();
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_1A880(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = _AAUISignOutLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_34944();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = _AAUISignOutLogSystem(WeakRetained);
  v10 = v9;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (a2)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Store sign out completed with success %@, error: %@", buf, 0x16u);
    }

    v12 = objc_alloc_init(AAUISignOutUtilities);
    v13 = WeakRetained[56];
    v14 = [*(a1 + 40) aa_altDSID];
    v15 = [*(a1 + 40) aa_personID];
    v16 = [*(a1 + 48) copy];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1AAE0;
    v18[3] = &unk_59AA8;
    v21 = *(a1 + 56);
    v22 = *(a1 + 72);
    v19 = *(a1 + 32);
    v20 = v12;
    v17 = v12;
    [v17 signOutServiceAccountsWithServiceOwnersManager:v13 forAltDSID:v14 DSID:v15 context:v16 completion:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_349B4();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1AAE0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUISignOutLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Service accounts sign out completed with success %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1ABD8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _AAUISignOutLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = @"YES";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Sign out of apple account completed with success: %@, error: %@", &v8, 0x16u);
    }
  }

  else
  {
    v7 = _AAUISignOutLogSystem([*(a1 + 32) _setSignOutNotInProgressForAppleAccount:*(a1 + 40)]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_34944();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1ACF8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _AAUISignOutLogSystem(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = @"YES";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Sign out of store account completed with success: %@, error: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_34A34();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1AE04(uint64_t a1)
{
  v2 = [*(a1 + 32) accountOperationsHelper];
  [v2 removeAccount:*(a1 + 40)];
}

void sub_1AE58(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = _AAUISignOutLogSystem(WeakRetained);
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Signing out of service accounts.", buf, 2u);
    }

    v9 = objc_alloc_init(AAUISignOutUtilities);
    v10 = WeakRetained[56];
    v11 = [*(a1 + 40) aa_altDSID];
    v12 = [*(a1 + 40) aa_personID];
    v13 = [*(a1 + 48) copy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1B03C;
    v15[3] = &unk_59AA8;
    v18 = *(a1 + 56);
    v19 = a2;
    v16 = v5;
    v17 = v9;
    v14 = v9;
    [v14 signOutServiceAccountsWithServiceOwnersManager:v10 forAltDSID:v11 DSID:v12 context:v13 completion:v15];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_34944();
    }

    [WeakRetained _setSignOutNotInProgressForAppleAccount:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1B03C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUISignOutLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Service accounts sign out completed with success %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1B134(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _AAUISignOutLogSystem(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = @"YES";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Sign out of store account completed with success: %@, error: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_34A34();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1B2E8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _AAUISignOutLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_34AE0();
    }
  }

  if (v3)
  {
    v7 = _AAUISignOutLogSystem(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_34B50();
    }
  }
}

void sub_1B420(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _AAUISignOutLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_34BC8();
    }
  }

  if (v3)
  {
    v7 = _AAUISignOutLogSystem(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_34C38();
    }
  }
}

uint64_t sub_1BAA4(uint64_t a1)
{
  v2 = _AAUISignOutLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User opted to sign out of both accounts.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1BB28(uint64_t a1)
{
  v2 = _AAUISignOutLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User opted to sign out of apple account.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1BBAC(uint64_t a1)
{
  v2 = _AAUISignOutLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User opted to sign out of store account.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1BC30(uint64_t a1)
{
  v2 = _AAUISignOutLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User opted to cancel sign out!", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_1BE44(uint64_t a1)
{
  v2 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Subscription Specifier loaded", v4, 2u);
  }

  [*(a1 + 32) _stopSpinnerInActiveSpecifier];
  return [*(a1 + 32) showController:*(a1 + 40) animate:1];
}

void sub_1C1EC(uint64_t a1)
{
  v2 = [AAPaymentSummaryRequest alloc];
  v3 = [*(a1 + 32) _grandSlamAccount];
  v4 = [*(a1 + 32) _accountStore];
  v5 = [v2 initWithGrandSlamAccount:v3 accountStore:v4];

  v6 = *(a1 + 32);
  if (v6[66])
  {
    [v5 setSecondaryAuthToken:?];
    v6 = *(a1 + 32);
  }

  v7 = [v6 _grandSlamAccount];
  v8 = [v7 aida_tokenForService:@"com.apple.gs.idms.hb"];

  [v5 setHeartbeatToken:v8];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1C398;
  v15[3] = &unk_59C70;
  v15[4] = *(a1 + 32);
  v9 = objc_retainBlock(v15);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1C490;
  v12[3] = &unk_59C98;
  v12[4] = *(a1 + 32);
  v13 = v5;
  v14 = v9;
  v10 = v9;
  v11 = v5;
  dispatch_async(&_dispatch_main_q, v12);
}

void sub_1C398(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1C434;
  v5[3] = &unk_594A0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_1C434(uint64_t a1)
{
  if (([*(*(a1 + 32) + 440) isCanceled] & 1) == 0)
  {
    [*(a1 + 32) _handlePaymentMethodSummaryResponse:*(a1 + 40)];
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 440);
  *(v2 + 440) = 0;
}

id sub_1C490(void *a1)
{
  v2 = [[AARequester alloc] initWithRequest:a1[5] handler:a1[6]];
  v3 = a1[4];
  v4 = *(v3 + 440);
  *(v3 + 440) = v2;

  v5 = a1[4];
  v6 = *(v5 + 720);
  v7 = *(v5 + 440);

  return [v6 addOperation:v7];
}

void sub_1C7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = _AAUILogSystem(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_34CB0(a1, v4);
    }
  }
}

void sub_1D760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D784(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 objectForKeyedSubscript:AKActionKey];
    v8 = [v7 isEqualToString:AKActionCancel];

    if (v8)
    {
      if (*(a1 + 40) == 1)
      {
        v10 = [WeakRetained dismissObjectModelsAnimated:1 completion:0];
      }

      else
      {
        v11 = _AAUILogSystem(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Cancel action received for a non-modal flow", v12, 2u);
        }
      }
    }
  }
}

id sub_1DAEC(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1DB5C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _AAUILogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Updated account information with success: %@, error: %@", &v7, 0x16u);
  }
}

void sub_1EA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1EA94(uint64_t a1, int a2)
{
  v4 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "401 handling completed with success: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a2)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1EBD4;
    v10[3] = &unk_599B8;
    v10[4] = WeakRetained;
    [WeakRetained _retryRequest:v8 inRemoteUIController:v9 completion:v10];
  }

  else
  {
    [WeakRetained _stopSpinnerInActiveSpecifier];
  }
}

void sub_1EF30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Retry request completed with success: %@, error: %@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

void sub_1F47C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = _AAUILogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Error! Unable to get AKAppleIDServerResourceLoadDelegate. %@", buf, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1F5D4;
  v13[3] = &unk_59D58;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v5;
  v15 = v9;
  v16 = v7;
  v17 = v10;
  v11 = v7;
  v12 = v5;
  dispatch_async(&_dispatch_main_q, v13);
}

uint64_t sub_1F5D4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((a1[5] + 408), v2);
  }

  result = a1[7];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1F7F4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      v8 = "Successfully passed on auth response to AuthKit.";
      v9 = v6;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    v11 = 138412290;
    v12 = v5;
    v8 = "Failed to inform AuhtKit of auth response! Error: %@.";
    v9 = v6;
    v10 = 12;
    goto LABEL_6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1F9CC(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v6 = a2;
    v7 = _AAUILogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Updating profile picture for account owner...", v8, 2u);
    }

    [*(*(a1 + 32) + 496) setProfilePictureForAccountOwner:v6 cropRect:v5];
  }
}

void sub_1FB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1FBB4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _profilePictureStoreDidChange:v5];
  }
}

void sub_20228(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_202EC;
  v6[3] = &unk_59E18;
  v10 = a2;
  v7 = a3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_202EC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    v6 = _AAUILogSystem(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "renewCredentialsForAccount succeeded for AAGrandSlamAppTokenIDAppleIDSettings.", buf, 2u);
    }

    v7 = [*(a1 + 40) _accountStore];
    v8 = [*(a1 + 40) _grandSlamAccount];
    v9 = [v7 credentialForAccount:v8 serviceID:AAGrandSlamAppTokenIDAppleIDSettings];

    v10 = [v9 token];
    v11 = _AAUILogSystem(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Obtained new AppleID token from GS.", buf, 2u);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_20684;
      v18[3] = &unk_59DF0;
      v13 = *(a1 + 40);
      v19 = *(a1 + 48);
      [v13 _requestSecondaryAuthenticationIfNecessaryWithGSToken:v10 completion:v18];

      goto LABEL_20;
    }

    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "No AppleID token despite renewCredentialsForAccount reporting success!", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
LABEL_19:
    v14 = *(a1 + 40);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v9 localizedStringForKey:@"SERVER_NO_CREDENTIALS_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"SERVER_NO_CREDENTIALS_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
    [v14 _showAlertWithTitle:v15 message:v17];

LABEL_20:
    return;
  }

  if (v2 != 1)
  {
    if (v2 != 2)
    {
      return;
    }

    v3 = _AAUILogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Failed to get new AppleID token. Error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_19;
  }

  v5 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Failed to get new AppleID token because the user rejected the requests.", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_20814(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_208D8;
  v7[3] = &unk_59E68;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_20B70(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_3;
  block[3] = &unk_59680;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id *sub_20E48(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _generateLoginCode];
  }

  return result;
}

id sub_217BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APPLEID_TITLE_REBRAND" value:&stru_5A5F0 table:@"Localizable"];
  [v2 stopValidationWithPrompt:v4 showButtons:0];

  v5 = *(a1 + 32);

  return [v5 _accountEmailBecameVerified];
}

void sub_21BF0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_21C68;
  block[3] = &unk_59680;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_21EB8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_21F40;
  v2[3] = &unk_594A0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_21F40(uint64_t a1)
{
  v2 = +[FMDFMIPManager sharedInstance];
  [v2 userNotifiedOfActivationLockForAllPairedDevices];

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v6 localizedStringForKey:@"ENABLE_DEVICE_LOCATOR_MESSAGE_WATCH_REBRAND" value:&stru_5A5F0 table:@"Localizable"];
  [v4 _issueFindMyiPhonePromptWithTitle:v3 andMessage:v5];
}

void sub_22100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22124(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _AAUILogSystem(WeakRetained);
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_34E08();
    }

    [WeakRetained _deviceLocatorStateDidChange:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_34E44();
    }
  }
}

id sub_222B4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 576) isChangingState];
  v3 = [*(*(a1 + 32) + 576) isStateKnown];
  v4 = *(a1 + 32);
  v5 = *(v4 + 592);
  if (v5 && (v2 & 1) == 0)
  {
    if (v3 && (v6 = [*(v4 + 576) isEnabled], v5 = *(*(a1 + 32) + 592), v6))
    {
      v7 = *(v5 + 16);
    }

    else
    {
      v7 = *(v5 + 16);
    }

    v7();
    v8 = *(a1 + 32);
    v9 = *(v8 + 592);
    *(v8 + 592) = 0;

    v4 = *(a1 + 32);
  }

  v10 = *(v4 + 176);
  *(v4 + 176) = 0;

  v11 = _AAUILogSystem([*(a1 + 32) reloadSpecifiers]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Account FMIP dataclass has changed", v13, 2u);
  }

  return [*(a1 + 32) refreshDetailTextForTableCellWithTag:1001];
}

void sub_22580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained presentCustodianSetupFlow:v3];
  }

  else
  {
    v6 = _AAUILogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_34E80();
    }
  }
}

void sub_22794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_227B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _forgetSpecifiers];
    [v2 reloadSpecifiers];
  }

  else
  {
    v3 = _AAUILogSystem(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_34EBC();
    }
  }
}

id sub_22980(uint64_t a1)
{
  [*(a1 + 32) _forgetSpecifiers];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_22AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[541] = 0;
    v2 = WeakRetained;
    [WeakRetained _checkNetworkReachabilityAndValidateAccount];
    WeakRetained = v2;
  }
}

void sub_22C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22C7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSignoutGroupSpecifiersForName:@"Backup"];
}

id sub_22F78(uint64_t a1)
{
  [*(a1 + 32) tryLock];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

void sub_23600(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = v4;
  if (!a2)
  {
    v6 = _AAUILogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Failed to save ACAccount after registration request succeeded. Error: %@", &v7, 0xCu);
    }
  }
}

id sub_236B4(uint64_t a1)
{
  [*(a1 + 32) _forgetSpecifiers];
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _presentFirstAlertIfNecessary];
}

void sub_236F8(uint64_t a1)
{
  [*(*(a1 + 32) + 544) unlock];
  v2 = [*(a1 + 40) code];
  v3 = *(a1 + 40);
  if (v2 == &stru_158.reloff + 3)
  {
    v4 = [v3 userInfo];
    v11 = [v4 objectForKey:kAAProtocolErrorKey];

    v5 = [v11 isEqualToString:kAAProtocolErrorMobileMeAccountMissingInfo];
    v6 = *(a1 + 32);
    if (v5)
    {
      [*(a1 + 32) _updateAccountTermsInformation];
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = [v6 _appleAccount];
      [v6 _presentValidationErrorAlert:v9 account:v10];
    }
  }

  else
  {
    if (![v3 code])
    {
      return;
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = [v8 _appleAccount];
    [v8 _presentValidationErrorAlert:v7 account:v11];
  }
}

void sub_23A78(uint64_t a1)
{
  v2 = [*(a1 + 32) _isPasswordRequiredToValidateAppleAccount:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _accountStore];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_23B60;
    v7[3] = &unk_59F50;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [v4 renewCredentialsForAccount:v8 force:1 reason:0 completion:v7];
  }

  else
  {
    v6 = *(a1 + 48);

    [v3 _beginValidationForAccount:v6];
  }
}

void sub_23B60(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1)
  {
    v8 = _AAUILogSystem(v5);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v12 = 0;
    v9 = "Account revalidation aborted because the user canceled the password prompt.";
    v10 = &v12;
LABEL_8:
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_9;
  }

  if (a2)
  {
    v8 = _AAUILogSystem(v5);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v11 = 0;
    v9 = "Account revalidation aborted because the user's password could not be obtained!";
    v10 = &v11;
    goto LABEL_8;
  }

  [*(a1 + 32) _clearCachedSpecifierValues];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) copy];
  [v7 _beginValidationForAccount:v8];
LABEL_9:
}

void sub_23EA0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _accountStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_23F78;
  v9[3] = &unk_59FA0;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v12 = a2;
  v10 = v7;
  v11 = v5;
  v8 = v5;
  [v6 saveVerifiedAccount:v10 withCompletionHandler:v9];
}

void sub_23F78(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_24028;
  v3[3] = &unk_596F8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_24464(uint64_t a1)
{
  v2 = [*(a1 + 32) _accountStore];
  v3 = _AAUILogSystem(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Will attempt to save because validation is done...", buf, 2u);
    }

    [v2 saveVerifiedAccount:*(a1 + 40) withCompletionHandler:0];
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "I don't have a store to save for some reason. This is wrong.", v5, 2u);
    }
  }
}

void sub_24534(void *a1)
{
  [*(a1[4] + 544) unlock];
  if ([a1[5] code] == &stru_158.reloff + 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
LABEL_3:

    [v2 _presentValidationErrorAlert:v3 account:v4];
    return;
  }

  v5 = [a1[5] code];
  v6 = a1[5];
  if (v5 != &stru_158.reloff + 3)
  {
    if ([v6 code] == -1)
    {
      *(a1[4] + 568) = 1;
      return;
    }

    if (![a1[5] code])
    {
      return;
    }

    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[7];
    goto LABEL_3;
  }

  v7 = [v6 userInfo];
  v9 = [v7 objectForKeyedSubscript:kAAProtocolErrorKey];

  if ([v9 isEqualToString:kAAProtocolErrorMobileMeAccountMissingInfo])
  {
    v8 = a1[4];
    if ((v8[664] & 1) == 0)
    {
      if (v8[569] == 1)
      {
        [v8 _updateAccountTermsInformation];
      }

      else
      {
        [v8 _presentValidationErrorAlert:a1[5] account:a1[6]];
      }
    }
  }
}

void sub_24898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248B0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) provisionedDataclasses];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = +[AADataclassManager sharedManager];
        if ([v8 canAutoEnableDataclass:v7 forAccount:*(a1 + 32)])
        {
          v9 = [*(a1 + 32) isEnabledForDataclass:v7];

          if ((v9 & 1) == 0)
          {
            [*(a1 + 32) setEnabled:1 forDataclass:v7];
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }
        }

        else
        {
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_24D7C(uint64_t a1)
{
  v3 = [*(a1 + 32) _accountStore];
  v2 = [*(a1 + 32) _appleAccount];
  [v3 saveAccount:v2 withCompletionHandler:&stru_5A010];
}

void sub_24DF0(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _AAUILogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Did save, did it work? %@, error is: %@", &v7, 0x16u);
  }
}

void sub_2528C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _appleAccount];
    v4 = [v3 aa_isPrimaryEmailVerified];

    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_25340;
      block[3] = &unk_59680;
      block[4] = *(a1 + 32);
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_256BC(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_25734;
  v2[3] = &unk_5A038;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

id *sub_25734(id *result)
{
  if (!result[5])
  {
    return [result[4] reload];
  }

  return result;
}

id *sub_25748(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] _updateAccountTermsInformation];
  }

  return result;
}

void sub_26260(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_26300;
  v6[3] = &unk_5A088;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v2 performDeviceToDeviceEncryptionStateRepairWithCompletion:v6];
}

void sub_26300(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem([*(a1 + 40) dismissViewControllerAnimated:1 completion:0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "_handleUpgradeSecurityLevelActionURL completed with didRepair: %@ (Error: %@)", &v9, 0x16u);
  }

  if (a2 && *(a1 + 48))
  {
    v8 = +[LSApplicationWorkspace defaultWorkspace];
    [v8 openApplicationWithBundleID:*(a1 + 48)];
  }
}

void sub_265B0(id a1, BOOL a2, NSError *a3)
{
  if (a2)
  {
    v3 = _AAUILogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Successfully completed displaying authkit server ui", v4, 2u);
    }
  }
}

void sub_2678C(uint64_t a1)
{
  v2 = +[PSNavBarSpinnerManager sharedSpinnerManager];
  [v2 stopAnimatingForIdentifier:@"cdpAction"];

  v3 = [*(a1 + 32) view];
  [v3 setUserInteractionEnabled:1];
}

void sub_26910(id a1, NSDictionary *a2, NSError *a3)
{
  v3 = a3;
  v4 = _AAUILogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationController done with iForgot! Error: %@", &v5, 0xCu);
  }
}

void sub_26ABC(id a1, NSDictionary *a2, NSError *a3)
{
  v3 = a3;
  v4 = _AAUILogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationController done with change password! Error: %@", &v5, 0xCu);
  }
}

void sub_26C64(id a1, NSDictionary *a2, NSError *a3)
{
  v3 = a3;
  v4 = _AAUILogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationController done! Error: %@", &v5, 0xCu);
  }
}

void sub_26FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 64));
  _Unwind_Resume(a1);
}

void sub_27014(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = objc_loadWeakRetained((a1 + 64));
  v8 = _AAUILogSystem(v7);
  v9 = v8;
  if (WeakRetained && a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_35174();
    }

    v10 = [*(a1 + 40) objectForKey:@"highlight"];

    if (v10)
    {
      v11 = [*(a1 + 40) objectForKey:@"highlight"];
      v12 = _AAUILogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_35058();
      }

      v13 = [AAUILegacyContactsViewFactory createViewModelWithAccountManager:*(*(a1 + 48) + 456)];

      v9 = [[AAUIAccountBeneficiaryViewController alloc] initWithAccountManager:WeakRetained[57] highlightRowIdentifier:v11];
      v7 = v13;
    }

    else
    {
      v11 = objc_loadWeakRetained((a1 + 64));
      v9 = [AAUILegacyContactsViewFactory createWithViewModel:v11];
    }

    [WeakRetained aaui_showViewController:v9 sender:WeakRetained];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_350C8((a1 + 56), v5, v9);
  }
}

void sub_28098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_280B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _AAUILogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController account store did change.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[91];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_281D8;
    block[3] = &unk_59F78;
    block[4] = WeakRetained;
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

void sub_281D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _reloadOptionsForChangesFromAccounts:*(a1 + 40) toAccounts:*(a1 + 48)];
  v3 = _AAUILogSystem(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Account has changed, will reload specifiers.", buf, 2u);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_282F0;
    v5[3] = &unk_5A038;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    dispatch_async(&_dispatch_main_q, v5);
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "No significant account change. Not reloading specifiers.", buf, 2u);
    }
  }
}

id *sub_282F0(id *result)
{
  v1 = result;
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    [v1[4] _forgetSpecifiers];
    result = [v1[4] reloadSpecifiers];
    if ((v1[5] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = [result[4] _setupHeader];
  v2 = v1[5];
  if ((v2 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v2 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v3 = v1[4];

  return [v3 refreshDetailTextForTableCellWithTag:1002];
}

void sub_285B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_285DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _AAUILogSystem(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = objc_opt_class();
    v7 = 2112;
    v8 = ICQQuotaDidChangeNotification;
    v3 = v6;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[%@] Received notification: %@", &v5, 0x16u);
  }

  if (WeakRetained)
  {
    WeakRetained[769] = 0;
    v4 = *(WeakRetained + 95);
    *(WeakRetained + 95) = 0;
  }
}

Class sub_28CC4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_6A210)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_28E08;
    v4[4] = &unk_593B8;
    v4[5] = v4;
    v5 = off_5A198;
    v6 = 0;
    qword_6A210 = _sl_dlopen();
    v2 = v4[0];
    if (qword_6A210)
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
  result = objc_getClass("TUIOptInSpecifierProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_35290();
  }

  qword_6A208 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_28E08(uint64_t a1)
{
  result = _sl_dlopen();
  qword_6A210 = result;
  return result;
}

Class sub_28E7C(uint64_t a1)
{
  if (!qword_6A220)
  {
    qword_6A220 = _sl_dlopen();
  }

  result = objc_getClass("AMSUIPaymentSpecifierProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_6A218 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_28F7C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_6A220 = result;
  return result;
}

Class sub_28FF0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_6A230)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_29134;
    v4[4] = &unk_593B8;
    v4[5] = v4;
    v5 = off_5A1C8;
    v6 = 0;
    qword_6A230 = _sl_dlopen();
    v2 = v4[0];
    if (qword_6A230)
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
  result = objc_getClass("FASettingsSpecifierProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_352B8();
  }

  qword_6A228 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29134(uint64_t a1)
{
  result = _sl_dlopen();
  qword_6A230 = result;
  return result;
}

uint64_t sub_29610(uint64_t a1, void *a2)
{
  sub_296B0();
  v4 = sub_35660();
  v8._countAndFlagsBits = a2;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  v5.super.isa = v4;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v6 = sub_35350(v9, v10, v5, v11, a1, v8);

  return v6;
}

unint64_t sub_296B0()
{
  result = qword_69DD0;
  if (!qword_69DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_69DD0);
  }

  return result;
}

uint64_t sub_296FC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_296B0();
  v5 = sub_35660();
  v9._countAndFlagsBits = a3;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_35350(v10, v11, v6, v12, a2, v9);

  v7 = sub_35590();

  return v7;
}

uint64_t sub_297FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_298DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_35420();
  sub_29A9C(v5, a2);
  sub_297FC(v5, a2);

  return sub_35410();
}

uint64_t sub_2998C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_35420();

  return sub_297FC(v3, a2);
}

uint64_t sub_29A04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_35420();
  v6 = sub_297FC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_29A9C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_29BE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_35420();
  sub_29A9C(v5, a2);
  sub_297FC(v5, a2);
  return sub_35410();
}

id sub_29CE0()
{
  v0 = objc_allocWithZone(AAUIAppleAccountDeferredURL);

  return [v0 init];
}

id sub_29D20()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

id sub_29D60()
{
  v1 = [objc_allocWithZone(PSSpecifier) init];
  [v1 setProperty:v0[1] forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  [v1 setProperty:*v0 forKey:AAUIAppleAccountDeferredURLKey];
  return v1;
}

double sub_29DDC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_29DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E68(&qword_69DD8, &qword_403F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_29EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E68(&qword_69DD8, &qword_403F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29F4C()
{
  v1 = sub_29E68(&qword_69DE0, &qword_403F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - v3;
  sub_2A444(v0, &v14);
  v5 = swift_allocObject();
  v6 = v15;
  *(v5 + 16) = v14;
  *(v5 + 32) = v6;
  *(v5 + 48) = v16;
  *(v5 + 64) = v17;
  sub_29E68(&qword_69DE8, &qword_40400);
  v7 = sub_35380();
  v8 = sub_2E010(&qword_69DF0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v9 = sub_2A488();
  v13[1] = v7;
  v13[2] = &type metadata for String;
  v13[3] = v8;
  v13[4] = v9;
  swift_getOpaqueTypeConformance2();
  sub_35540();
  sub_2A444(v0, &v14);
  v10 = swift_allocObject();
  v11 = v15;
  *(v10 + 16) = v14;
  *(v10 + 32) = v11;
  *(v10 + 48) = v16;
  *(v10 + 64) = v17;
  sub_2AFA4();
  sub_354D0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2A198(void *a1)
{
  v2 = sub_35680();
  __chkstk_darwin(v2 - 8);
  v3 = sub_353A0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_35380();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(PSSpecifier) init];
  [v8 setProperty:a1[1] forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  [v8 setProperty:*a1 forKey:AAUIAppleAccountDeferredURLKey];
  sub_35670();
  sub_35390();
  sub_35370();
  v11[0] = sub_29610(0xD000000000000015, 0x80000000000420F0);
  v11[1] = v9;
  sub_2E010(&qword_69DF0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_2A488();
  sub_35440();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2A488()
{
  result = qword_69DF8;
  if (!qword_69DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_69DF8);
  }

  return result;
}

uint64_t sub_2A4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_29E68(&qword_69F80, &qword_405C8);
  v3[5] = swift_task_alloc();
  v4 = sub_35430();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_29E68(&qword_69F88, &qword_405D0);
  v3[10] = swift_task_alloc();
  v5 = sub_35340();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_35360();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_35500();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = sub_35420();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_35610();
  v3[24] = sub_35600();
  v10 = sub_355F0();

  return _swift_task_switch(sub_2A7CC, v10, v9);
}

uint64_t sub_2A7CC()
{
  v72 = v0;
  v1 = v0[23];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[3];

  v67 = sub_297D8();
  v66 = *(v2 + 16);
  v66(v1);
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_35400();
  v8 = sub_35620();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[20];
  v12 = v0[21];
  v13 = v0[18];
  v14 = v0[19];
  v69 = v0[17];
  if (v9)
  {
    v63 = v8;
    v65 = v0[20];
    v15 = v0[15];
    v16 = v0[16];
    v17 = v0[14];
    buf = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v71 = v62;
    *buf = 136315138;
    v64 = v10;
    sub_354F0();
    sub_2E010(&qword_69F90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v18 = sub_35770();
    v20 = v19;
    (*(v15 + 8))(v16, v17);
    (*(v13 + 8))(v14, v69);
    v21 = sub_2C9DC(v18, v20, &v71);

    *(buf + 4) = v21;
    _os_log_impl(&dword_0, v7, v63, "The input URL is %s", buf, 0xCu);
    sub_2DB0C(v62);

    v22 = *(v12 + 8);
    v22(v64, v65);
  }

  else
  {

    (*(v13 + 8))(v14, v69);
    v22 = *(v12 + 8);
    v22(v10, v11);
  }

  v24 = v0[15];
  v23 = v0[16];
  v25 = v0[14];
  v26 = v0[11];
  v27 = v0[12];
  v28 = v0[10];
  sub_354F0();
  sub_35320();
  (*(v24 + 8))(v23, v25);
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    v29 = v0[9];
    v30 = v0[6];
    v31 = v0[7];
    sub_2DFB0(v0[10], &qword_69F88, &qword_405D0);
    sub_354E0();
    sub_35520();
    (*(v31 + 8))(v29, v30);
  }

  else
  {
    v32 = v0[22];
    v33 = v0[20];
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    sub_354E0();
    v34 = sub_2B050();
    (v66)(v32, v67, v33);
    v35 = sub_35400();
    v36 = sub_35620();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[22];
    v39 = v0[20];
    if (v37)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v71 = v41;
      *v40 = 136315138;
      v42 = sub_35570();
      v68 = v22;
      v44 = sub_2C9DC(v42, v43, &v71);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_0, v35, v36, "The resource dictionary is %s", v40, 0xCu);
      sub_2DB0C(v41);

      v68(v38, v39);
    }

    else
    {

      v22(v38, v39);
    }

    v45 = v0[5];
    sub_2B784(v34, v0[8], v45);
    v46 = sub_35530();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 48))(v45, 1, v46);
    v49 = v0[12];
    v70 = v0[13];
    v50 = v0[11];
    v51 = v0[7];
    v52 = v0[8];
    v54 = v0[5];
    v53 = v0[6];
    if (v48 == 1)
    {
      v55 = v0[4];
      sub_2DFB0(v0[5], &qword_69F80, &qword_405C8);
      v56 = *v55;
      sub_2B498(v34);

      isa = sub_35550().super.isa;

      [v56 setResourcesDictionary:isa];

      sub_35520();
      (*(v51 + 8))(v52, v53);
      (*(v49 + 8))(v70, v50);
    }

    else
    {
      v58 = v0[2];

      (*(v51 + 8))(v52, v53);
      (*(v49 + 8))(v70, v50);
      (*(v47 + 32))(v58, v54, v46);
    }
  }

  v59 = v0[1];

  return v59();
}

uint64_t sub_2AEA8()
{
  if (*(v0 + 56))
  {
    sub_2DB0C((v0 + 32));
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2AEF8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2E070;

  return sub_2A4DC(a1, a2, v2 + 16);
}

unint64_t sub_2AFA4()
{
  result = qword_69E00;
  if (!qword_69E00)
  {
    sub_2B008(&qword_69DE0, &qword_403F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_69E00);
  }

  return result;
}

uint64_t sub_2B008(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_2B050()
{
  v0 = sub_35300();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_35310();
  if (!v4)
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  v46 = v4[2];
  if (!v46)
  {

    return &_swiftEmptyDictionarySingleton;
  }

  v5 = 0;
  v45 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v44 = v1 + 16;
  v6 = &_swiftEmptyDictionarySingleton;
  v42 = v4;
  v43 = (v1 + 8);
  v41 = v1;
  while (v5 < v4[2])
  {
    (*(v1 + 16))(v3, &v45[*(v1 + 72) * v5], v0);
    v7 = sub_352E0();
    v9 = v8;
    v10 = sub_352F0();
    if (!v11 || (*&v51 = v10, *(&v51 + 1) = v11, sub_2A488(), v12 = sub_356C0(), v14 = v13, , !v14))
    {
      v25 = sub_2CF84(v7, v9);
      v27 = v26;

      if (v27)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v48 = v6;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2D66C();
          v6 = v48;
        }

        v29 = v6[7] + 40 * v25;
        v30 = *(v29 + 32);
        v31 = *(v29 + 16);
        v51 = *v29;
        v52 = v31;
        v53 = v30;
        sub_2D4B0(v25, v6);
        (*v43)(v3, v0);
      }

      else
      {
        (*v43)(v3, v0);
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
      }

      sub_2DFB0(&v51, &qword_69E08, qword_40418);
      goto LABEL_7;
    }

    v15 = v0;
    *&v48 = v12;
    *(&v48 + 1) = v14;
    sub_35700();
    v48 = v51;
    v49 = v52;
    v50 = v53;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v6;
    v18 = sub_2CF84(v7, v9);
    v19 = v6[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_30;
    }

    v22 = v17;
    if (v6[3] >= v21)
    {
      if (v16)
      {
        if (v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_2D66C();
        if (v22)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_2D1E0(v21, v16);
      v23 = sub_2CF84(v7, v9);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_32;
      }

      v18 = v23;
      if (v22)
      {
LABEL_22:

        v6 = v47;
        sub_2D820(&v48, v47[7] + 40 * v18);
        v0 = v15;
        (*v43)(v3, v15);
        v1 = v41;
        goto LABEL_7;
      }
    }

    v6 = v47;
    v47[(v18 >> 6) + 8] |= 1 << v18;
    v32 = (v6[6] + 16 * v18);
    *v32 = v7;
    v32[1] = v9;
    v33 = v6[7] + 40 * v18;
    v34 = v50;
    v35 = v49;
    *v33 = v48;
    *(v33 + 16) = v35;
    *(v33 + 32) = v34;
    v0 = v15;
    (*v43)(v3, v15);
    v36 = v6[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_31;
    }

    v6[2] = v38;
    v1 = v41;
LABEL_7:
    ++v5;
    v4 = v42;
    if (v46 == v5)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_357A0();
  __break(1u);
  return result;
}

uint64_t sub_2B498(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29E68(&qword_69F60, &unk_405A0);
    v2 = sub_35760();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2DEE4(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_2DF40(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_2DF40(v35, v24);
    result = sub_356F0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_2DF40(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2B784@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_35420();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v88 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v87 = &v86 - v12;
  __chkstk_darwin(v11);
  v92 = &v86 - v13;
  sub_29DF8((v3 + 2), &v101);
  v95 = a3;
  v91 = a2;
  v90 = a1;
  v89 = v3;
  v94 = v7;
  v93 = v8;
  if (v102)
  {
    sub_2DB58(&v101, v98);
  }

  else
  {
    v14 = type metadata accessor for PathComponentHandler();
    v15 = swift_allocObject();
    v99 = v14;
    v100 = &off_5A378;
    v98[0] = v15;
  }

  *&v101 = sub_35330();
  *(&v101 + 1) = v16;
  v96 = (&stru_20 + 15);
  v97 = 0xE100000000000000;
  sub_2A488();
  v17 = sub_356B0();

  v19 = 0;
  v20 = *(v17 + 16);
  v21 = &_swiftEmptyArrayStorage;
LABEL_5:
  v22 = (v17 + 40 + 16 * v19);
  while (v20 != v19)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    ++v19;
    v23 = *(v22 - 1);
    v24 = *v22;
    v22 += 2;
    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v101 = v21;
      if ((result & 1) == 0)
      {
        result = sub_2D0B4(0, *(v21 + 2) + 1, 1);
        v21 = v101;
      }

      v27 = *(v21 + 2);
      v26 = *(v21 + 3);
      if (v27 >= v26 >> 1)
      {
        result = sub_2D0B4((v26 > 1), v27 + 1, 1);
        v21 = v101;
      }

      *(v21 + 2) = v27 + 1;
      v28 = &v21[16 * v27];
      *(v28 + 4) = v23;
      *(v28 + 5) = v24;
      goto LABEL_5;
    }
  }

  v29 = *(v21 + 2);
  if (v29)
  {
    v30 = *(v21 + 4);
    v31 = *(v21 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v21;
    if (!isUniquelyReferenced_nonNull_native || (v29 - 1) > *(v21 + 3) >> 1)
    {
      v96 = sub_2C8D0(isUniquelyReferenced_nonNull_native, v29, 1, v21);
    }

    v33 = v94;
    v34 = v93;
    v35 = v92;
    sub_2DA08(0, 1, 0);

    v36 = sub_297D8();
    v37 = *(v34 + 16);
    v92 = v36;
    v37(v35);

    v38 = sub_35400();
    v39 = sub_35620();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v86 = v37;
      v41 = v35;
      v42 = v33;
      v43 = v40;
      v44 = v34;
      v45 = swift_slowAlloc();
      *&v101 = v45;
      *v43 = 136315138;
      *(v43 + 4) = sub_2C9DC(v30, v31, &v101);
      _os_log_impl(&dword_0, v38, v39, "Path component: %s", v43, 0xCu);
      sub_2DB0C(v45);

      v46 = *(v44 + 8);
      v47 = v41;
      v37 = v86;
      v46(v47, v42);
    }

    else
    {

      v46 = *(v34 + 8);
      v46(v35, v33);
    }

    if (v30 == 0x535F44554F4C4349 && v31 == 0xEE00454349565245 || (sub_35790() & 1) != 0)
    {

      v50 = v99;
      v51 = v100;
      sub_2DAC8(v98, v99);
      v49 = v95;
      (v51[1])(v91, v50, v51);
    }

    else
    {
      sub_29E68(&qword_69F68, &qword_405B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_403E0;
      *(inited + 32) = sub_355A0();
      *(inited + 40) = v53;
      *(inited + 48) = sub_355A0();
      *(inited + 56) = v54;
      *(inited + 64) = sub_355A0();
      *(inited + 72) = v55;
      *(inited + 80) = sub_355A0();
      *(inited + 88) = v56;
      *(inited + 96) = sub_355A0();
      *(inited + 104) = v57;
      *(inited + 112) = sub_355A0();
      *(inited + 120) = v58;
      *(inited + 128) = sub_355A0();
      *(inited + 136) = v59;
      v60 = sub_2D8A0(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v86 = v30;
      LOBYTE(inited) = sub_2C1B8(v30, v31, v60);

      if (inited)
      {
        v61 = v87;
        v62 = v94;
        (v37)(v87, v92, v94);

        v63 = sub_35400();
        v64 = sub_35620();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v101 = v66;
          *v65 = 136315138;
          v67 = v86;
          *(v65 + 4) = sub_2C9DC(v86, v31, &v101);
          _os_log_impl(&dword_0, v63, v64, "Path component: %s is a group specifier ID.", v65, 0xCu);
          sub_2DB0C(v66);

          v46(v61, v62);
          v49 = v95;
          v68 = v91;
          v69 = v90;
          v70 = v89;
        }

        else
        {

          v46(v61, v62);
          v49 = v95;
          v68 = v91;
          v69 = v90;
          v70 = v89;
          v67 = v86;
        }

        v81 = v99;
        v82 = v100;
        sub_2DAC8(v98, v99);
        (v82[3])(v67, v31, v69, v68, v70[1], *v70, v81, v82);
      }

      else
      {
        v71 = v88;
        v72 = v94;
        (v37)(v88, v92, v94);

        v73 = sub_35400();
        v74 = sub_35620();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *&v101 = v76;
          *v75 = 136315138;
          v77 = v86;
          *(v75 + 4) = sub_2C9DC(v86, v31, &v101);
          _os_log_impl(&dword_0, v73, v74, "Path component: %s is a specifier ID.", v75, 0xCu);
          sub_2DB0C(v76);

          v46(v71, v72);
          v49 = v95;
          v78 = v91;
          v79 = v90;
          v80 = v89;
        }

        else
        {

          v46(v71, v72);
          v49 = v95;
          v78 = v91;
          v79 = v90;
          v80 = v89;
          v77 = v86;
        }

        v83 = v99;
        v84 = v100;
        sub_2DAC8(v98, v99);
        (v84[2])(v77, v31, v79, v78, v80[1], *v80, v83, v84);
      }
    }

    v48 = 0;
  }

  else
  {

    v48 = 1;
    v49 = v95;
  }

  v85 = sub_35530();
  (*(*(v85 - 8) + 56))(v49, v48, 1, v85);
  return sub_2DB0C(v98);
}

uint64_t sub_2C1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_357C0();
  sub_355C0();
  v6 = sub_357D0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_35790() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

double sub_2C2B0@<D0>(uint64_t a1@<X8>)
{
  *a1 = [objc_allocWithZone(AAUIAppleAccountDeferredURL) init];
  *(a1 + 8) = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

__n128 sub_2C310@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = [objc_allocWithZone(AAUIAppleAccountDeferredURL) init];
  *(a2 + 8) = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v5;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

uint64_t sub_2C380()
{
  v1 = sub_29E68(&qword_69DE0, &qword_403F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - v3;
  sub_2A444(v0, &v14);
  v5 = swift_allocObject();
  v6 = v15;
  *(v5 + 16) = v14;
  *(v5 + 32) = v6;
  *(v5 + 48) = v16;
  *(v5 + 64) = v17;
  sub_29E68(&qword_69DE8, &qword_40400);
  v7 = sub_35380();
  v8 = sub_2E010(&qword_69DF0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v9 = sub_2A488();
  v13[1] = v7;
  v13[2] = &type metadata for String;
  v13[3] = v8;
  v13[4] = v9;
  swift_getOpaqueTypeConformance2();
  sub_35540();
  sub_2A444(v0, &v14);
  v10 = swift_allocObject();
  v11 = v15;
  *(v10 + 16) = v14;
  *(v10 + 32) = v11;
  *(v10 + 48) = v16;
  *(v10 + 64) = v17;
  sub_2AFA4();
  sub_354D0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2C5CC(uint64_t a1)
{
  v1 = sub_356A0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_35460();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35690();
  sub_35450();
  sub_35510();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2C734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, SEL *a7)
{
  v11 = sub_35580();
  [a5 *a7];

  sub_2B498(a3);
  isa = sub_35550().super.isa;

  [a6 setResourcesDictionary:isa];

  return sub_35520();
}

char *sub_2C8D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E68(&qword_69F68, &qword_405B0);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_2C9DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2CAA8(v11, 0, 0, 1, a1, a2);
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
    sub_2DF50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2DB0C(v11);
  return v7;
}

unint64_t sub_2CAA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2CBB4(a5, a6);
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
    result = sub_35730();
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

char *sub_2CBB4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2CC00(a1, a2);
  sub_2CD30(&off_5A300);
  return v3;
}

char *sub_2CC00(uint64_t a1, unint64_t a2)
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

  v6 = sub_2CE1C(v5, 0);
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

  result = sub_35730();
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
        v10 = sub_355D0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2CE1C(v10, 0);
        result = sub_35720();
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

uint64_t sub_2CD30(uint64_t result)
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

  result = sub_2CE90(result, v11, 1, v3);
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

void *sub_2CE1C(uint64_t a1, uint64_t a2)
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

  sub_29E68(&unk_6A060, &qword_406A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2CE90(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E68(&unk_6A060, &qword_406A0);
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

unint64_t sub_2CF84(uint64_t a1, uint64_t a2)
{
  sub_357C0();
  sub_355C0();
  v4 = sub_357D0();

  return sub_2CFFC(a1, a2, v4);
}

unint64_t sub_2CFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_35790())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2D0B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2D0D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2D0D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E68(&qword_69F68, &qword_405B0);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_2D1E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29E68(&qword_69F78, &qword_405C0);
  v38 = v4;
  result = sub_35750();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_2DEE4(v27, &v39);
      }

      sub_357C0();
      sub_355C0();
      result = sub_357D0();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2D4B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_356E0() + 1) & ~v5;
    do
    {
      sub_357C0();

      sub_355C0();
      v11 = sub_357D0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2D66C()
{
  v1 = v0;
  sub_29E68(&qword_69F78, &qword_405C0);
  v2 = *v0;
  v3 = sub_35740();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2DEE4(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

Swift::Int sub_2D8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E68(&qword_69F70, &qword_405B8);
    v3 = sub_35710();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_357C0();

      sub_355C0();
      result = sub_357D0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_35790();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_2DA08(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_2DAC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2DB0C(void *a1)
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

uint64_t sub_2DB58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2DB74()
{
  result = qword_69E10;
  if (!qword_69E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_69E10);
  }

  return result;
}

uint64_t sub_2DC08(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_2DC20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2DC3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2DC84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2DCE0()
{
  sub_2B008(&qword_69DE0, &qword_403F8);
  sub_2AFA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2DD44(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2DDF0;

  return sub_2A4DC(a1, a2, v2 + 16);
}

uint64_t sub_2DDF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_OWORD *sub_2DF40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2DF50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2DFB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29E68(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2E010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2E078@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_354C0();
  a1[4] = &off_5A4B0;
  sub_2E0BC(a1);
  return sub_35650();
}

uint64_t *sub_2E0BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2E144@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_354C0();
  a1[4] = &off_5A4B0;
  sub_2E0BC(a1);
  return sub_35650();
}

uint64_t sub_2E1B4(uint64_t a1)
{
  v3 = sub_353B0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  sub_2FBC8(a1, &v21, &qword_69F98, &qword_405E0);
  if (v22)
  {
    sub_2DB58(&v21, v24);
  }

  else
  {
    v10 = [v1 traitCollection];
    v25 = sub_2E484();
    v26 = &off_5A498;
    v24[0] = v10;
    if (v22)
    {
      sub_2DFB0(&v21, &qword_69F98, &qword_405E0);
    }
  }

  v11 = v25;
  v12 = v26;
  sub_2DAC8(v24, v25);
  (v12[1])(v11, v12);
  v13 = v25;
  v14 = v26;
  sub_2DAC8(v24, v25);
  (v14[2])(&v21, v13, v14);
  v15 = v22;
  v16 = v23;
  sub_2DAC8(&v21, v22);
  LODWORD(v15) = (*(v16 + 8))(v15, v16);
  sub_2DB0C(&v21);
  (*(v4 + 104))(v7, enum case for SettingsAppPrimaryNavigationMode.stateDriven(_:), v3);
  sub_2FB80(&qword_69FA8, &type metadata accessor for SettingsAppPrimaryNavigationMode, &protocol conformance descriptor for SettingsAppPrimaryNavigationMode);
  sub_355E0();
  sub_355E0();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v17(v9, v3);
  v18 = v21 == v20[1];
  sub_2DB0C(v24);
  return v18 & v15;
}

unint64_t sub_2E484()
{
  result = qword_69FA0;
  if (!qword_69FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_69FA0);
  }

  return result;
}

uint64_t sub_2E4D0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v32 = a5;
  v33 = sub_35420();
  v11 = *(v33 - 8);
  v12 = __chkstk_darwin(v33);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = sub_2E1B4(a7);
  v18 = sub_297D8();
  v19 = *(v11 + 16);
  if (v17)
  {
    v19(v16, v18, v33);

    v20 = sub_35400();
    v21 = sub_35620();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2C9DC(v32, a6, &v34);
      _os_log_impl(&dword_0, v20, v21, "SettingsNavigationProxy available for %s. Using state-driven navigation.", v22, 0xCu);
      sub_2DB0C(v23);
    }

    v24 = (*(v11 + 8))(v16, v33);
    return a1(v24);
  }

  else
  {
    v19(v14, v18, v33);

    v26 = sub_35400();
    v27 = sub_35620();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_2C9DC(v32, a6, &v34);
      _os_log_impl(&dword_0, v26, v27, "SettingsNavigationProxy not available for %s. Falling back to UIKit navigation.", v28, 0xCu);
      sub_2DB0C(v29);
    }

    v30 = (*(v11 + 8))(v14, v33);
    return a3(v30);
  }
}

uint64_t UIViewController.aaui_showViewController(_:sender:)(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_2E834(a1, a2, v3);
  return sub_2DFB0(v3, &qword_69F98, &qword_405E0);
}

uint64_t sub_2E834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2FBC8(a3, &v12, &qword_69F98, &qword_405E0);
  if (v13)
  {
    v6 = sub_2DB58(&v12, v14);
  }

  else
  {
    v7 = [v3 traitCollection];
    v6 = sub_2E484();
    v14[3] = v6;
    v14[4] = &off_5A498;
    v14[0] = v7;
    if (v13)
    {
      v6 = sub_2DFB0(&v12, &qword_69F98, &qword_405E0);
    }
  }

  v8 = __chkstk_darwin(v6);
  v11[2] = a1;
  v11[3] = v14;
  __chkstk_darwin(v8);
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  sub_2FB1C(v14, &v12);
  sub_2E4D0(sub_2FAE8, v11, sub_2FAF0, v10, 0xD000000000000012, 0x8000000000042110, &v12);
  sub_2DFB0(&v12, &qword_69F98, &qword_405E0);
  return sub_2DB0C(v14);
}

uint64_t sub_2EA94(void *a1, void *a2)
{
  v4 = sub_353C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_353D0();
  v9 = a2[3];
  v10 = a2[4];
  sub_2DAC8(a2, v9);
  (*(v10 + 16))(v17, v9, v10);
  v11 = v18;
  v12 = v19;
  sub_2DAC8(v17, v18);
  v13 = *(v12 + 16);
  v14 = sub_2FB80(&qword_69FB0, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe, &protocol conformance descriptor for SettingsAnyPlatformViewControllerRecipe);
  v13(v7, v4, v14, v11, v12);
  (*(v5 + 8))(v7, v4);
  return sub_2DB0C(v17);
}

uint64_t sub_2EC20(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_35420();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v11 = v3;
LABEL_4:
    sub_2FBC8(a2, v34, &qword_69FB8, &qword_40698);
    v12 = v35;
    if (v35)
    {
      v13 = sub_2DAC8(v34, v35);
      v14 = *(v12 - 8);
      __chkstk_darwin(v13);
      v16 = &v34[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v16);
      v17 = sub_35780();
      (*(v14 + 8))(v16, v12);
      sub_2DB0C(v34);
    }

    else
    {
      v17 = 0;
    }

    [v11 showViewController:a1 sender:v17];

    return swift_unknownObjectRelease();
  }

  v11 = [v3 navigationController];
  if (v11)
  {
    goto LABEL_4;
  }

  v19 = sub_297D8();
  (*(v8 + 16))(v10, v19, v7);
  v20 = a1;
  v21 = sub_35400();
  v22 = sub_35630();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = ObjectType;
    v36 = v33;
    *v23 = 136315394;
    swift_getMetatypeMetadata();
    v24 = sub_355B0();
    v26 = sub_2C9DC(v24, v25, &v36);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = v20;
    v28 = [v27 description];
    v29 = sub_355A0();
    v31 = v30;

    v32 = sub_2C9DC(v29, v31, &v36);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_0, v21, v22, "%s: navigation controller was nil, unable to show view controller %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v8 + 8))(v10, v7);
}

Swift::Void __swiftcall UINavigationController.aaui_pushViewController(_:animated:)(UIViewController _, Swift::Bool animated)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  sub_2F030(_.super.super.isa, animated, v2);
  sub_2DFB0(v2, &qword_69F98, &qword_405E0);
}

uint64_t sub_2F030(void *a1, char a2, uint64_t a3)
{
  v7 = sub_353C0();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_35420();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  sub_2FBC8(a3, &v46, &qword_69F98, &qword_405E0);
  if (v47)
  {
    sub_2DB58(&v46, v48);
  }

  else
  {
    v17 = [v3 traitCollection];
    v49 = sub_2E484();
    v50 = &off_5A498;
    v48[0] = v17;
    if (v47)
    {
      sub_2DFB0(&v46, &qword_69F98, &qword_405E0);
    }
  }

  v41 = "showViewController";
  sub_2FB1C(v48, &v46);
  v18 = v3;
  v19 = a1;
  v20 = sub_2E1B4(&v46);
  v21 = sub_297D8();
  v22 = *(v11 + 16);
  if (v20)
  {
    v22(v16, v21, v10);
    v23 = sub_35400();
    v24 = sub_35620();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v10;
      v27 = v26;
      v43[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2C9DC(0xD000000000000012, v41 | 0x8000000000000000, v43);
      _os_log_impl(&dword_0, v23, v24, "SettingsNavigationProxy available for %s. Using state-driven navigation.", v25, 0xCu);
      sub_2DB0C(v27);

      (*(v11 + 8))(v16, v40);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v32 = v19;
    sub_353D0();
    v33 = v49;
    v34 = v50;
    sub_2DAC8(v48, v49);
    (v34[2])(v43, v33, v34);
    v35 = v44;
    v36 = v45;
    sub_2DAC8(v43, v44);
    v37 = *(v36 + 16);
    v38 = sub_2FB80(&qword_69FB0, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe, &protocol conformance descriptor for SettingsAnyPlatformViewControllerRecipe);
    v37(v9, v7, v38, v35, v36);
    (*(v42 + 8))(v9, v7);
    sub_2DB0C(v43);
  }

  else
  {
    v22(v14, v21, v10);
    v28 = sub_35400();
    v29 = sub_35620();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_2C9DC(0xD000000000000012, v41 | 0x8000000000000000, v43);
      _os_log_impl(&dword_0, v28, v29, "SettingsNavigationProxy not available for %s. Falling back to UIKit navigation.", v30, 0xCu);
      sub_2DB0C(v31);
    }

    (*(v11 + 8))(v14, v10);
    [v18 pushViewController:v19 animated:a2 & 1];
  }

  sub_2DFB0(&v46, &qword_69F98, &qword_405E0);
  return sub_2DB0C(v48);
}

Swift::Void __swiftcall UINavigationController.removeLastViewControllerAnimated(_:)(Swift::Bool a1)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  sub_2F644(a1, v1);
  sub_2DFB0(v1, &qword_69F98, &qword_405E0);
}

uint64_t sub_2F644(char a1, uint64_t a2)
{
  v5 = sub_35420();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32[-1] - v10;
  sub_2FBC8(a2, &v35, &qword_69F98, &qword_405E0);
  if (v36)
  {
    sub_2DB58(&v35, v37);
  }

  else
  {
    v12 = [v2 traitCollection];
    v38 = sub_2E484();
    v39 = &off_5A498;
    v37[0] = v12;
    if (v36)
    {
      sub_2DFB0(&v35, &qword_69F98, &qword_405E0);
    }
  }

  sub_2FB1C(v37, &v35);
  v13 = v2;
  v14 = sub_2E1B4(&v35);
  v15 = sub_297D8();
  v16 = *(v6 + 16);
  if (v14)
  {
    v16(v11, v15, v5);
    v17 = sub_35400();
    v18 = sub_35620();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2C9DC(0xD000000000000014, 0x8000000000042150, v32);
      _os_log_impl(&dword_0, v17, v18, "SettingsNavigationProxy available for %s. Using state-driven navigation.", v19, 0xCu);
      sub_2DB0C(v20);
    }

    (*(v6 + 8))(v11, v5);
    v21 = v38;
    v22 = v39;
    sub_2DAC8(v37, v38);
    (v22[2])(v32, v21, v22);
    v23 = v33;
    v24 = v34;
    sub_2DAC8(v32, v33);
    (*(v24 + 24))(1, v23, v24);
    sub_2DB0C(v32);
  }

  else
  {
    v16(v9, v15, v5);
    v25 = sub_35400();
    v26 = sub_35620();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2C9DC(0xD000000000000014, 0x8000000000042150, v32);
      _os_log_impl(&dword_0, v25, v26, "SettingsNavigationProxy not available for %s. Falling back to UIKit navigation.", v27, 0xCu);
      sub_2DB0C(v28);
    }

    (*(v6 + 8))(v9, v5);
    v29 = [v13 popViewControllerAnimated:a1 & 1];
  }

  sub_2DFB0(&v35, &qword_69F98, &qword_405E0);
  return sub_2DB0C(v37);
}

uint64_t sub_2FB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2FB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2FBC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_29E68(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_2FC38()
{
  v1 = OBJC_IVAR___AAUIAuthKitURLHandler_authContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2FC84(uint64_t a1)
{
  v3 = OBJC_IVAR___AAUIAuthKitURLHandler_authContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_2FD40()
{
  v1 = OBJC_IVAR___AAUIAuthKitURLHandler_authController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2FD8C(uint64_t a1)
{
  v3 = OBJC_IVAR___AAUIAuthKitURLHandler_authController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall AuthKitURLHandler.handleAuthKitURLWithResourceDictionary(_:presentingViewController:)(Swift::OpaquePointer _, UIViewController presentingViewController)
{
  isa = presentingViewController.super.super.isa;
  v4 = sub_35420();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v71 = &v65 - v9;
  v10 = __chkstk_darwin(v8);
  v67 = &v65 - v11;
  v12 = __chkstk_darwin(v10);
  v68 = &v65 - v13;
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  v16 = sub_297D8();
  v17 = *(v5 + 2);
  v73 = v16;
  (v17)(v15);

  v18 = sub_35400();
  v19 = sub_35620();

  v20 = os_log_type_enabled(v18, v19);
  v70 = v2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v66 = v4;
    v22 = v21;
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v22 = 136315138;
    v23 = sub_35570();
    rawValue = _._rawValue;
    v26 = sub_2C9DC(v23, v24, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v18, v19, "AAUIAuthKitURLHandler: resource dictionary: %s", v22, 0xCu);
    sub_2DB0C(v65);

    v4 = v66;

    v27 = v5;
  }

  else
  {

    v27 = v5;
    rawValue = _._rawValue;
  }

  v28 = *(v27 + 1);
  v28(v15, v4);
  if (rawValue[2])
  {
    v29 = sub_2CF84(0x7541796669746F6ELL, 0xED000074694B6874);
    if (v30)
    {
      sub_2DF50(rawValue[7] + 32 * v29, v77);
      sub_2DF50(v77, aBlock);
      if (swift_dynamicCast())
      {
        if (v75 == 1702195828 && v76 == 0xE400000000000000)
        {

LABEL_11:
          if (rawValue[2] && (v32 = sub_2CF84(0xD000000000000010, 0x8000000000042190), (v33 & 1) != 0) && (sub_2DF50(rawValue[7] + 32 * v32, aBlock), (swift_dynamicCast() & 1) != 0))
          {
            v71 = v17;
            v72 = v5;
            v34 = v75;
            v35 = v76;
            v36 = v70;
            v37 = (*(&stru_20.nsects + (swift_isaMask & *v70)))();
            if (v37)
            {
              v38 = v37;

LABEL_30:
              v51 = [v38 setPresentingViewController:isa];
              v52 = (*&stru_68.segname[swift_isaMask & *v36])(v51);
              if (v52)
              {
                v53 = v52;
LABEL_33:
                aBlock[4] = sub_306FC;
                aBlock[5] = 0;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_309C4;
                aBlock[3] = &unk_5A508;
                v54 = _Block_copy(aBlock);
                v55 = v38;
                [v53 authenticateWithContext:v55 completion:v54];
                _Block_release(v54);

                goto LABEL_27;
              }

              v53 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
              if (v53)
              {
                goto LABEL_33;
              }

              (v71)(v68, v73, v4);
              v62 = sub_35400();
              v63 = sub_35630();
              if (os_log_type_enabled(v62, v63))
              {
                v64 = swift_slowAlloc();
                *v64 = 0;
                _os_log_impl(&dword_0, v62, v63, "Unable to create authentication controller.", v64, 2u);
              }

              v47 = v68;
              goto LABEL_25;
            }

            v49 = objc_allocWithZone(AKAppleIDAuthenticationUISurrogateContext);
            v50 = sub_35580();
            v38 = [v49 initWithSurrogateID:v50];

            if (v38)
            {

              v36 = v70;
              goto LABEL_30;
            }

            v43 = v67;
            (v71)(v67, v73, v4);

            v56 = sub_35400();
            v57 = sub_35630();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = v4;
              v60 = swift_slowAlloc();
              aBlock[0] = v60;
              *v58 = 136315138;
              v61 = sub_2C9DC(v34, v35, aBlock);

              *(v58 + 4) = v61;
              _os_log_impl(&dword_0, v56, v57, "Unable to create surrogate context for authKitContextID '%s", v58, 0xCu);
              sub_2DB0C(v60);

              v47 = v43;
              v48 = v59;
              goto LABEL_26;
            }
          }

          else
          {
            v43 = v71;
            (v17)(v71, v73, v4);
            v44 = sub_35400();
            v45 = sub_35630();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&dword_0, v44, v45, "No authKitContextID parameter found in resource dictionary", v46, 2u);
            }
          }

          v47 = v43;
LABEL_25:
          v48 = v4;
LABEL_26:
          v28(v47, v48);
LABEL_27:
          sub_2DB0C(v77);
          return;
        }

        v31 = sub_35790();

        if (v31)
        {
          goto LABEL_11;
        }
      }

      sub_2DB0C(v77);
    }
  }

  v39 = v72;
  (v17)(v72, v73, v4);
  v40 = sub_35400();
  v41 = sub_35620();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "NotifyAuthKit key not present in resource dictionary.", v42, 2u);
  }

  v28(v39, v4);
}

uint64_t sub_306FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_35420();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  if (a2)
  {
    swift_errorRetain();
    v10 = sub_297D8();
    (*(v4 + 16))(v7, v10, v3);
    swift_errorRetain();
    v11 = sub_35400();
    v12 = sub_35630();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_357B0();
      v17 = sub_2C9DC(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "Failed to authenticate with error: %s", v13, 0xCu);
      sub_2DB0C(v14);
    }

    else
    {
    }

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v18 = sub_297D8();
    (*(v4 + 16))(v9, v18, v3);
    v19 = sub_35400();
    v20 = sub_35620();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Authenticaion succeeded.", v21, 2u);
    }

    return (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_309C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29E68(&qword_6A058, qword_406F8);
    v4 = sub_35560();
  }

  v6 = a3;
  v5(v4, a3);
}

id AuthKitURLHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AuthKitURLHandler.init()()
{
  *&v0[OBJC_IVAR___AAUIAuthKitURLHandler_authContext] = 0;
  *&v0[OBJC_IVAR___AAUIAuthKitURLHandler_authController] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthKitURLHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id AuthKitURLHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthKitURLHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_30C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_30C9C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_6A378 = result;
  return result;
}

uint64_t sub_30CF0()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A548);
  sub_297FC(v0, qword_6A548);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_30DE0()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A560);
  sub_297FC(v0, qword_6A560);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_30ED0()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A578);
  sub_297FC(v0, qword_6A578);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_3102C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A5A8);
  sub_297FC(v0, qword_6A5A8);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_3111C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A5C0);
  sub_297FC(v0, qword_6A5C0);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_3120C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A5D8);
  sub_297FC(v0, qword_6A5D8);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_312FC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A5F0);
  sub_297FC(v0, qword_6A5F0);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_313EC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A608);
  sub_297FC(v0, qword_6A608);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_314DC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A620);
  sub_297FC(v0, qword_6A620);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_315CC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A638);
  sub_297FC(v0, qword_6A638);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_316BC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A650);
  sub_297FC(v0, qword_6A650);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_317AC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A668);
  sub_297FC(v0, qword_6A668);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_3189C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A680);
  sub_297FC(v0, qword_6A680);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_3198C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A698);
  sub_297FC(v0, qword_6A698);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_31A7C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A6B0);
  sub_297FC(v0, qword_6A6B0);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_31B6C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A6C8);
  sub_297FC(v0, qword_6A6C8);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_31C5C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A6E0);
  sub_297FC(v0, qword_6A6E0);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_31D4C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A6F8);
  sub_297FC(v0, qword_6A6F8);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_31E3C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A710);
  sub_297FC(v0, qword_6A710);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_31F90()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A740);
  sub_297FC(v0, qword_6A740);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32080()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A758);
  sub_297FC(v0, qword_6A758);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_321DC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A788);
  sub_297FC(v0, qword_6A788);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_322CC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A7A0);
  sub_297FC(v0, qword_6A7A0);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_323BC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A7B8);
  sub_297FC(v0, qword_6A7B8);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_324AC()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A7D0);
  sub_297FC(v0, qword_6A7D0);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_3259C()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A7E8);
  sub_297FC(v0, qword_6A7E8);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_326B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_353F0();
  sub_29A9C(v5, a2);
  sub_297FC(v5, a2);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v6 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_327A4()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A818);
  sub_297FC(v0, qword_6A818);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32894()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A830);
  sub_297FC(v0, qword_6A830);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32984()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A848);
  sub_297FC(v0, qword_6A848);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32A74()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A860);
  sub_297FC(v0, qword_6A860);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32B64()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A878);
  sub_297FC(v0, qword_6A878);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32C54()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A890);
  sub_297FC(v0, qword_6A890);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32D44()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A8A8);
  sub_297FC(v0, qword_6A8A8);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32E34()
{
  v0 = sub_353F0();
  sub_29A9C(v0, qword_6A8C0);
  sub_297FC(v0, qword_6A8C0);
  if (qword_6A370 != -1)
  {
    swift_once();
  }

  v1 = qword_6A378;
  return sub_353E0();
}

uint64_t sub_32F00(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_353F0();

  return sub_297FC(v4, a2);
}

uint64_t sub_32F78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_353F0();
  v7 = sub_297FC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void sub_33054(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[UIImage(AppleAccountUI) circularImageFromCGImage:size:scale:]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s Couldn't create circular image", &v1, 0xCu);
}

void sub_330D8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 160);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "AAUIBaseDataclassDetailViewController: PSAppSettingsBundleIDKey is %@", &v3, 0xCu);
}

void sub_332B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to fetch metadata for message with error %@", &v2, 0xCu);
}

void sub_3332C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AAUIInviteMessageFlowController _sendDefaultMessage]_block_invoke";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s failed to acquire strong ref.", &v1, 0xCu);
}

void sub_33494(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "AAUIBaseDetailViewController: Loading AAUIBaseDataclassDetailViewController with bundleID: %@ and account: %@", &v3, 0x16u);
}

void sub_33560(void *a1, char a2, NSObject *a3)
{
  v5 = [a1 address];
  v6 = 138478083;
  v7 = v5;
  v8 = 1024;
  v9 = a2 & 1;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "%{private}@ _isHandleReachable %d", &v6, 0x12u);
}

void sub_33614(void *a1, NSObject *a2)
{
  v3 = [a1 address];
  v4 = 138477827;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%{private}@ Missing AA SPI, skipping reachability check", &v4, 0xCu);
}

void sub_336B0(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 address];
  v7 = 138478339;
  v8 = v6;
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "%{private}@ mismatch in tintColorForRecipient incoming %@ existing %@", &v7, 0x20u);
}

void sub_33770(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "flowManager %@", &v2, 0xCu);
}

void sub_33870(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to fetch device header image with error %@", &v2, 0xCu);
}

void sub_338E8(char a1, NSObject *a2)
{
  v2 = @"YES";
  if (a1)
  {
    v2 = @"NO";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "iCloudLogoutPolicy restricted: %@", &v3, 0xCu);
}

void sub_33978(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to sign in to iCloud with error: %{public}@", &v3, 0xCu);
}

void sub_33A90(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Received specifier with bundleID: %@", &v2, 0xCu);
}

void sub_33B48(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error fetching backup list: %@", &v2, 0xCu);
}

void sub_33C04(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Updating backup detail label as %@", &v2, 0xCu);
}

void sub_33C90()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33CCC()
{
  sub_E5F8();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33D08()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33D44()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33D80()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33DBC()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33DF8()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33E34()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33E70()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33EAC()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33EE8()
{
  sub_291B4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Failed to compare appleAltDSID (%@) with storeAltDSID (%@)!", v2, 0x16u);
}

void sub_33F6C()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33FA8()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_33FE4()
{
  sub_291B4();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34054()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34090()
{
  sub_291B4();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34100()
{
  sub_291B4();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34170()
{
  sub_291B4();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_341E0()
{
  sub_291B4();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34250(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"notifyAuthKit"];
  sub_291B4();
  sub_291D8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_342E4()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34398()
{
  sub_E5F8();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_343D4()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34490()
{
  sub_291CC();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34518()
{
  sub_291CC();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_345A0()
{
  sub_291CC();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34628()
{
  sub_291CC();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_346B0()
{
  sub_291CC();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34738()
{
  sub_291CC();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_347C0(uint64_t a1)
{
  [*(a1 + 328) length];
  [*(a1 + 320) length];
  sub_291D8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_3487C(void *a1)
{
  v1 = [a1 context];
  sub_291B4();
  sub_291D8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_34908()
{
  sub_E5F8();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34944()
{
  sub_291B4();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34A34()
{
  sub_291B4();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34AA4()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34AE0()
{
  sub_291B4();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34B50()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34B8C()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34BC8()
{
  sub_291B4();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34C38()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34C74()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34CB0(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) URL];
  sub_291B4();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "AAUIAppleAccountViewController shouldLoadRequest failed to open URL: %@", v4, 0xCu);
}

void sub_34D48()
{
  sub_E5F8();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34D84()
{
  sub_291B4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "AAUI NameComponent change: %@/%@ (old/new)", v2, 0x16u);
}

void sub_34E08()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34E44()
{
  sub_E5F8();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34E80()
{
  sub_E5F8();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34EBC()
{
  sub_E5F8();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34EF8()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34F34()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_34F70()
{
  sub_291B4();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_34FE0()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_3501C()
{
  sub_E5F8();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_35058()
{
  sub_291B4();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_350C8(id *a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained(a1);
  objc_opt_class();
  sub_291B4();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "%@ - Unable to validate CDP state. Stopping beneficary flow with error %@", v6, 0x16u);
}

void sub_35174()
{
  sub_E5F8();
  sub_291A8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_351B0()
{
  sub_291B4();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_35220()
{
  sub_291B4();
  sub_291C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}