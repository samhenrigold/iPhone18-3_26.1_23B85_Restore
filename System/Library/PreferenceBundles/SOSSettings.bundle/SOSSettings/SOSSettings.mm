id SOSServerInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SOSInternalServerProtocol];
  v1 = [NSSet setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:"mostRecentLocationSentWithCompletion:" argumentIndex:0 ofReply:1];

  return v0;
}

id SOSClientInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SOSInternalClientProtocol];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v1, v2, objc_opt_class(), 0];
  [v0 setClasses:v3 forSelector:"didUpdateSOSStatus:" argumentIndex:0 ofReply:0];

  return v0;
}

void sub_21DC(id a1, BOOL a2)
{
  if (a2)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v2 = [NSURL URLWithString:SOSSettingsURLBaseString];
    [v4 openSensitiveURL:v2 withOptions:0];
  }

  else
  {
    v3 = sub_8EF4(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,SOSKappaThirdPartySettingsController,disableKappaThirdPartyAppForSpecifier,failed", buf, 2u);
    }
  }
}

void sub_2730(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1 + 32) + 120), a2);
  [*(a1 + 32) setUpConstraints];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(a1 + 32) + 120));
  }
}

id sub_28AC(uint64_t a1)
{
  [*(*(a1 + 32) + 120) removeFromSuperview];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_293C;
  v4[3] = &unk_20E30;
  v4[4] = v2;
  return [v2 loadTriggerImageViewWithCompletion:v4];
}

id sub_293C(uint64_t a1, void *a2)
{
  [a2 setAlpha:0.0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_29D0;
  v4[3] = &unk_20E08;
  v4[4] = *(a1 + 32);
  return [UIView animateWithDuration:v4 animations:0.25];
}

void sub_3900(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (!*(v2 + 128))
  {
    v3 = 1.0;
  }

  [*(v2 + 136) setAlpha:v3];
  [*(*(a1 + 32) + 128) coordinate];
  v5 = v4;
  v7 = v6;
  v10 = objc_alloc_init(MKPointAnnotation);
  [*(*(a1 + 32) + 128) coordinate];
  [v10 setCoordinate:?];
  v8 = *(*(a1 + 32) + 120);
  v9 = [v8 annotations];
  [v8 removeAnnotations:v9];

  [*(*(a1 + 32) + 120) addAnnotation:v10];
  [*(*(a1 + 32) + 120) setRegion:*(*(a1 + 32) + 128) != 0 animated:{v5, v7, 0.005, 0.005}];
}

void sub_3F20(uint64_t a1, uint64_t a2)
{
  v3 = sub_8EF4(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "SOSSettingsController, handleKappaStateChanged", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8EEC;
  block[3] = &unk_21030;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_4730(uint64_t a1, uint64_t a2)
{
  v4 = sub_8F7C(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "SOSSettingsController, callback called: approved,%d", v8, 8u);
  }

  v5 = objc_opt_new();
  [v5 sendFeedbackConsent:a2 andUUID:*(a1 + 32)];
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = [v6[47] getFeedbackViewController];
    [v6 presentViewController:v7 animated:1 completion:&stru_20EC0];
  }
}

void sub_483C(id a1)
{
  v1 = sub_8F7C(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showFeedbackAssistant,presented feedback assistant questionnaire", v2, 2u);
  }
}

void sub_4A68(id a1)
{
  v1 = sub_8F7C(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showFeedbackAssistant,presented feedback assistant questionnaire", v2, 2u);
  }
}

void sub_4F80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 coreTelephonyClient];
  [v1 updateAutoCallSpecifierEnabled:{+[SOSUtilities shouldForceDisableAutoCallForClient:](SOSUtilities, "shouldForceDisableAutoCallForClient:", v2) ^ 1}];
}

void sub_5D08(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = v2[26];
  v8[1] = v2[28];
  v8[2] = v2[27];
  v4 = [NSArray arrayWithObjects:v8 count:3];
  [v3 removeObjectsInArray:v4];

  v5 = *(a1 + 40);
  v7[0] = v5[26];
  v7[1] = v5[28];
  v7[2] = v5[27];
  v6 = [NSArray arrayWithObjects:v7 count:3];
  [v5 removeContiguousSpecifiers:v6 animated:0];
}

void sub_5E1C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = *(v2 + 176);
  v8[1] = *(v2 + 184);
  v4 = [NSArray arrayWithObjects:v8 count:2];
  [v3 removeObjectsInArray:v4];

  v5 = *(a1 + 40);
  v7[0] = v5[22];
  v7[1] = v5[23];
  v6 = [NSArray arrayWithObjects:v7 count:2];
  [v5 removeContiguousSpecifiers:v6 animated:0];
}

void sub_65A4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6648;
  block[3] = &unk_20F58;
  block[4] = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_6648(uint64_t a1)
{
  result = [*(*(a1 + 32) + 152) isEqualToArray:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
    [*(*(a1 + 32) + 160) removeAllObjects];
    v3 = *(a1 + 32);
    v4 = v3[36];
    if (!v4)
    {
      v5 = [*(a1 + 32) specifierForID:@"EMERGENCY_CONTACTS"];
      v6 = *(a1 + 32);
      v7 = *(v6 + 288);
      *(v6 + 288) = v5;

      v3 = *(a1 + 32);
      v4 = v3[36];
    }

    v45 = 0;
    v8 = [v4 identifier];
    [v3 getGroup:&v45 row:0 ofSpecifierID:v8];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = [*(a1 + 32) specifiersInGroup:v45];
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [*(*(a1 + 32) + 288) identifier];
          v17 = v16;
          if (v15 == v16)
          {
          }

          else
          {
            v18 = [v14 identifier];
            v19 = [*(*(a1 + 32) + 296) identifier];

            if (v18 != v19)
            {
              [*(a1 + 32) removeSpecifier:v14 animated:*(a1 + 48)];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v11);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = *(a1 + 40);
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v37 + 1) + 8 * j);
          v26 = [v25 name];
          v27 = [v25 phoneNumber];
          v28 = v27;
          if (v26)
          {
            v29 = v27 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            [*(*(a1 + 32) + 160) addObject:v27];
            v30 = *(a1 + 32);
            v31 = [v30[37] identifier];
            v32 = [v30 indexOfSpecifierID:v31];

            if (v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v34 = sub_8EF4(v33);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = *(*(a1 + 32) + 296);
                *buf = 138412290;
                v47 = v35;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Can't find index of openHealthButton specifier: %@", buf, 0xCu);
              }
            }

            else
            {
              v34 = [PSSpecifier preferenceSpecifierNamed:v26 target:*(a1 + 32) set:0 get:"contactNumberForContactSpecifier:" detail:0 cell:4 edit:0];
              [v34 setProperty:v28 forKey:@"kPhoneNumberKey"];
              [*(a1 + 32) insertSpecifier:v34 atIndex:v32 animated:*(a1 + 48)];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v22);
    }

    v36 = +[SOSUtilities emergencyContactsSectionDescription];
    [*(*(a1 + 32) + 288) setName:v36];

    [*(a1 + 32) reloadHealthButtonLabelWithContacts:*(a1 + 48)];
    return [*(a1 + 32) reloadPrivacyFooterWithContacts:*(a1 + 48)];
  }

  return result;
}

id sub_7624(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 submitSOSNotificationSettingsChangedMetric:@"sideButtonPress" withValue:*(a1 + 40)];
  }

  else
  {
    v4 = v3[25];
    v5 = [NSNumber numberWithBool:0];
    [v4 setProperty:v5 forKey:PSValueKey];

    [*(a1 + 32) reloadSpecifier:v4 animated:1];
  }

  v6 = *(a1 + 32);

  return [v6 reloadAlarmSoundAnimated:1];
}

void sub_8064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8138;
  v8[3] = &unk_20FA8;
  v9 = a3;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v6 = v5;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_8138(uint64_t a1)
{
  if (!*(a1 + 32) && [*(a1 + 40) status] && +[SOSUtilities isStewieVisible](SOSUtilities, "isStewieVisible") && (objc_msgSend(*(a1 + 48), "_canLaunchDemoFlow") & 1) != 0)
  {
    *(*(a1 + 48) + 320) = 1;
    v2 = +[SOSUtilities stewieGroupTitle];
    [*(*(a1 + 48) + 328) setName:v2];

    v15 = +[SOSUtilities stewieFooterLinkTitle];
    v3 = +[SOSUtilities stewieFooterDescription];
    v4 = [v3 rangeOfString:v15 options:5];
    v6 = v5;
    [*(*(a1 + 48) + 336) setProperty:objc_opt_class() forKey:PSCellClassKey];
    [*(*(a1 + 48) + 328) setProperty:v3 forKey:PSFooterHyperlinkViewTitleKey];
    v7 = *(*(a1 + 48) + 328);
    v17.location = v4;
    v17.length = v6;
    v8 = NSStringFromRange(v17);
    [v7 setProperty:v8 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v9 = *(*(a1 + 48) + 328);
    v10 = [NSValue valueWithNonretainedObject:?];
    [v9 setProperty:v10 forKey:PSFooterHyperlinkViewTargetKey];

    v11 = *(*(a1 + 48) + 328);
    v12 = NSStringFromSelector("openStewieLearnMore");
    [v11 setProperty:v12 forKey:PSFooterHyperlinkViewActionKey];

    [*(a1 + 48) reloadSpecifier:*(*(a1 + 48) + 328) animated:*(a1 + 56)];
    [*(a1 + 48) reloadSpecifier:*(*(a1 + 48) + 336) animated:*(a1 + 56)];
    [*(a1 + 48) refreshStewieAssetSpecifier:*(a1 + 56)];
    [*(a1 + 48) refreshTipSpecifier:*(a1 + 56)];
  }

  else
  {
    *(*(a1 + 48) + 320) = 0;
    [*(a1 + 48) refreshTipSpecifier:*(a1 + 56)];
    [*(a1 + 48) removeSpecifier:*(*(a1 + 48) + 328)];
    v13 = *(a1 + 48);
    v14 = v13[42];

    [v13 removeSpecifier:v14];
  }
}

void sub_889C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 32) BOOLValue];
    v5 = *(*(a1 + 40) + 352);
    if (v4)
    {
      v6 = [NSNumber numberWithBool:0];
      [v5 setProperty:v6 forKey:PSValueKey];

      v8 = sub_8EF4(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v9 = "SOSSettingsController,setCrashDetectionEnabled,failed, animating back to off state";
        v10 = &v15;
LABEL_10:
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }

    else
    {
      v11 = [NSNumber numberWithBool:1];
      [v5 setProperty:v11 forKey:PSValueKey];

      v8 = sub_8EF4(v12);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "SOSSettingsController,setCrashDetectionEnabled,failed, animating back to on state";
        v10 = buf;
        goto LABEL_10;
      }
    }

    [*(a1 + 40) reloadSpecifier:*(*(a1 + 40) + 352) animated:1];
    return;
  }

  v2 = sub_8EF4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,setCrashDetectionEnabled,successful", v13, 2u);
  }
}

id sub_8EF4(uint64_t a1)
{
  if (qword_271A8 != -1)
  {
    sub_1408C();
  }

  v2 = qword_271A0;

  return v2;
}

void sub_8F38(id a1)
{
  qword_271A0 = os_log_create("com.apple.calls.sos", "default");

  _objc_release_x1();
}

id sub_8F7C(uint64_t a1)
{
  if (qword_271B8 != -1)
  {
    sub_140A0();
  }

  v2 = qword_271B0;

  return v2;
}

void sub_8FC0(id a1)
{
  qword_271B0 = os_log_create("com.apple.calls.sos", "feedback");

  _objc_release_x1();
}

uint64_t sub_919C()
{
  _s14SosTipUserInfoCMa();
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_271C8 = result;
  return result;
}

uint64_t sub_91CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_9204(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_14134();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_92C4, 0, 0);
}

uint64_t sub_92C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    sub_141C4();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_93C0;

    return static TPTipsHelper.shared.getter();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_93C0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_94C0, 0, 0);
}

uint64_t sub_94C0()
{
  sub_14734();
  *(v0 + 96) = sub_14724();
  v2 = sub_14704();

  return _swift_task_switch(sub_9554, v2, v1);
}

uint64_t sub_9554()
{
  v1 = *(v0 + 88);

  sub_14184();

  return _swift_task_switch(sub_95C4, 0, 0);
}

uint64_t sub_95C4()
{
  v1 = v0[9];
  sub_14124();
  v2 = swift_allocObject();
  v0[13] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_96A8;
  v5 = v0[8];

  return sub_9DA4(v5, sub_C8A0, v2);
}

uint64_t sub_96A8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_981C, 0, 0);
}

uint64_t sub_981C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9884(void *a1)
{
  v2 = sub_BD98(&qword_26CC8, &qword_1CB78);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_14754();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_14734();
  v6 = a1;
  v7 = sub_14724();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_9AB4(0, 0, v4, &unk_1CBD8, v8);
}

uint64_t sub_99AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_14734();
  *(v4 + 24) = sub_14724();
  v6 = sub_14704();

  return _swift_task_switch(sub_9A44, v6, v5);
}

uint64_t sub_9A44()
{
  v1 = *(v0 + 16);

  [v1 openTrialDialog];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_9AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_BD98(&qword_26CC8, &qword_1CB78);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_CC84(a3, v25 - v10);
  v12 = sub_14754();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_CF2C(v11, &qword_26CC8, &qword_1CB78);
  }

  else
  {
    sub_14744();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_14704();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_146E4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_CF2C(a3, &qword_26CC8, &qword_1CB78);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_CF2C(a3, &qword_26CC8, &qword_1CB78);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_9DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_14154();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_14164();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_14134();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v4[19] = *(v8 + 64);
  v4[20] = swift_task_alloc();
  sub_BD98(&qword_26CC8, &qword_1CB78);
  v4[21] = swift_task_alloc();
  v4[22] = sub_14734();
  v4[23] = sub_14724();
  v10 = sub_14704();
  v4[24] = v10;
  v4[25] = v9;

  return _swift_task_switch(sub_9F98, v10, v9);
}

uint64_t sub_9F98()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[18];
  v20 = v0[19];
  v21 = v1;
  v4 = v0[17];
  v19 = v4;
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = sub_14754();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = *(v3 + 16);
  v0[26] = v10;
  v0[27] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v6, v4);

  v11 = v7;
  sub_C8A8(v7, v5);
  v12 = sub_14724();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = (v20 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  (*(v3 + 32))(v15 + v13, v2, v19);
  *(v15 + v14) = v9;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v11;
  v16[1] = v5;

  v0[28] = sub_9AB4(0, 0, v21, &unk_1CB88, v15);
  sub_141C4();
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_A1D0;

  return static TPTipsHelper.shared.getter();
}

uint64_t sub_A1D0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 240) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return _swift_task_switch(sub_A2F8, v4, v3);
}

uint64_t sub_A2F8()
{
  v1 = v0[30];
  v12 = v0[26];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v13 = v0[14];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[7];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.sosSettings(_:), v7);
  v0[5] = v3;
  v0[6] = sub_CBC8();
  v9 = sub_CC20(v0 + 2);
  v12(v9, v8, v3);

  sub_14174();
  sub_141A4();

  (*(v4 + 8))(v2, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_A510()
{
  v1 = sub_14154();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_141C4();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_A608;

  return static TPTipsHelper.shared.getter();
}

uint64_t sub_A608(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_A708, 0, 0);
}

uint64_t sub_A708()
{
  (*(v0[3] + 104))(v0[4], enum case for TPTipsHelper.Entry.Kind.sosSettings(_:), v0[2]);
  v0[7] = sub_14734();
  v0[8] = sub_14724();
  v2 = sub_14704();

  return _swift_task_switch(sub_A7C4, v2, v1);
}

uint64_t sub_A7C4()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_14144();

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_A864, 0, 0);
}

uint64_t sub_A864(uint64_t a1)
{
  *(v1 + 72) = sub_14724();
  v3 = sub_14704();

  return _swift_task_switch(sub_A8F0, v3, v2);
}

uint64_t sub_A8F0()
{

  if (qword_271C0 != -1)
  {
    swift_once();
  }

  _s14SosTipUserInfoCMa();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  qword_271C8 = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_AA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  sub_BD98(&qword_26CD8, &qword_1CBA8);
  v7[34] = swift_task_alloc();
  v8 = sub_14294();
  v7[35] = v8;
  v7[36] = *(v8 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = sub_BD98(&qword_26CE0, &qword_1CBB0);
  v7[39] = swift_task_alloc();
  v7[40] = sub_BD98(&qword_26CE8, &qword_1CBB8);
  v7[41] = swift_task_alloc();
  v9 = sub_BD98(&qword_26CF0, &qword_1CBC0);
  v7[42] = v9;
  v7[43] = *(v9 - 8);
  v7[44] = swift_task_alloc();
  v10 = sub_BD98(&qword_26CF8, &qword_1CBC8);
  v7[45] = v10;
  v7[46] = *(v10 - 8);
  v7[47] = swift_task_alloc();
  v7[48] = sub_14734();
  v7[49] = sub_14724();
  v12 = sub_14704();
  v7[50] = v12;
  v7[51] = v11;

  return _swift_task_switch(sub_AC94, v12, v11);
}

uint64_t sub_AC94()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v0[52] = sub_14134();
  v0[53] = sub_CBC8();
  sub_14254();
  sub_147B4();
  sub_CEE4(&qword_26D00, &qword_26CE0, &qword_1CBB0, &protocol conformance descriptor for AsyncStream<A>);
  sub_14764();
  sub_147F4();
  (*(v2 + 8))(v1, v3);
  sub_147E4();
  swift_beginAccess();
  v4 = sub_14724();
  v0[54] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_14704();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[55] = v5;
  v0[56] = v7;

  return _swift_task_switch(sub_AE4C, v5, v7);
}

uint64_t sub_AE4C()
{
  v1 = v0[54];
  v0[57] = sub_147C4();
  sub_CEE4(&qword_26D08, &qword_26CE8, &qword_1CBB8, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[58] = v2;
  *v2 = v0;
  v2[1] = sub_AF50;
  v3 = v0[34];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_AF50()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 440);
    v4 = *(v2 + 448);
    v5 = sub_B238;
  }

  else
  {
    (*(v2 + 456))();
    v3 = *(v2 + 440);
    v4 = *(v2 + 448);
    v5 = sub_B078;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_B078()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_CF2C(v3, &qword_26CD8, &qword_1CBA8);
    v4 = v0[50];
    v5 = v0[51];

    return _swift_task_switch(sub_B980, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[37], v3, v1);
    v6 = sub_147D4();
    v0[59] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[60] = v8;
    *v8 = v0;
    v8[1] = sub_B250;
    v9 = v0[37];

    return (v11)(v0 + 61, v9);
  }
}

uint64_t sub_B250()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 280);

  (*(v3 + 8))(v2, v4);
  *(v1 + 489) = *(v1 + 488);
  v5 = *(v1 + 448);
  v6 = *(v1 + 440);

  return _swift_task_switch(sub_B3FC, v6, v5);
}

uint64_t sub_B3FC()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_B460, v1, v2);
}

uint64_t sub_B460()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

LABEL_15:

    v13 = *(v0 + 8);

    return v13();
  }

  v2 = Strong;
  if ((*(v0 + 489) & 1) == 0)
  {

    v6 = sub_BA54();
    if (v6)
    {

      v7 = [v2 tipKitEntrySpecifier];
      if (v7)
      {
        v8 = v7;
        v9 = sub_146C4();
        [v8 removePropertyForKey:v9];
      }

      v11 = *(v0 + 368);
      v10 = *(v0 + 376);
      v12 = *(v0 + 360);
      [v2 refreshTipSpecifier:0];
    }

    else
    {
      v11 = *(v0 + 368);
      v10 = *(v0 + 376);
      v12 = *(v0 + 360);
    }

    goto LABEL_14;
  }

  v3 = [Strong tipKitEntrySpecifier];
  if (!v3)
  {
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
LABEL_22:
    sub_CF2C(v0 + 128, &qword_26CB0, &qword_1CB60);
    goto LABEL_23;
  }

  v4 = v3;
  *(v0 + 216) = 0x746E6F4373706954;
  *(v0 + 224) = 0xEB00000000746E65;
  v5 = [v3 objectForKeyedSubscript:sub_14804()];

  swift_unknownObjectRelease();
  if (v5)
  {
    sub_147A4();
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
  }

  v15 = *(v0 + 176);
  *(v0 + 128) = *(v0 + 160);
  *(v0 + 144) = v15;
  if (!*(v0 + 152))
  {
    goto LABEL_22;
  }

  sub_CF8C(0, &qword_26D10, UIView_ptr);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 368);
    v10 = *(v0 + 376);
    v12 = *(v0 + 360);
    v16 = *(v0 + 232);

LABEL_14:
    (*(v11 + 8))(v10, v12);
    goto LABEL_15;
  }

LABEL_23:
  v18 = *(v0 + 416);
  v17 = *(v0 + 424);
  if (*(v0 + 256))
  {
    v19 = *(v0 + 240);
    *(v0 + 80) = v18;
    *(v0 + 88) = v17;
    v20 = sub_CC20((v0 + 56));
    (*(*(v18 - 8) + 16))(v20, v19, v18);
    objc_allocWithZone(sub_14274());
  }

  else
  {
    v21 = *(v0 + 240);
    *(v0 + 40) = v18;
    *(v0 + 48) = v17;
    v22 = sub_CC20((v0 + 16));
    (*(*(v18 - 8) + 16))(v22, v21, v18);
    v23 = objc_allocWithZone(sub_14274());
  }

  v24 = sub_14284();
  v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_14264();
  v26 = v24;
  v27 = sub_BA54();
  if (v27)
  {
    v28 = v27;

    v2 = v28;
  }

  else
  {
    v29 = [v2 tipKitEntrySpecifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_146C4();
      [v30 setProperty:v26 forKey:v31];
    }

    [v2 refreshTipSpecifier:0];
  }

  v32 = sub_14724();
  *(v0 + 432) = v32;
  if (v32)
  {
    swift_getObjectType();
    v33 = sub_14704();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  *(v0 + 440) = v33;
  *(v0 + 448) = v35;

  return _swift_task_switch(sub_AE4C, v33, v35);
}

uint64_t sub_B980()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_BA54()
{
  v1 = [v0 tipKitEntrySpecifier];
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_9:
    sub_CF2C(&v7, &qword_26CB0, &qword_1CB60);
    return 0;
  }

  v2 = v1;
  *&v7 = 0x746E6F4373706954;
  *(&v7 + 1) = 0xEB00000000746E65;
  v3 = [v1 objectForKeyedSubscript:sub_14804()];
  swift_unknownObjectRelease();

  if (v3)
  {
    sub_147A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_9;
  }

  sub_CF8C(0, &qword_26D10, UIView_ptr);
  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

uint64_t sub_BBA0()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_BC7C()
{
  v1 = [objc_allocWithZone(PSSpecifier) initWithName:0 target:v0 set:0 get:0 detail:0 cell:-1 edit:0];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TipCell();
    sub_BD98(&qword_26BC0, &qword_1CB20);
    [v2 setProperty:sub_14804() forKey:PSCellClassKey];
    swift_unknownObjectRelease();
    if (qword_271C0 != -1)
    {
      swift_once();
    }

    v3 = *(qword_271C8 + 16);
    *(qword_271C8 + 16) = v2;
  }
}

uint64_t sub_BD98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_BF10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView] = 0;
  if (a3)
  {
    v7 = sub_146C4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for TipCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_C158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_C19C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_C294;

  return v6(a1);
}

uint64_t sub_C294()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_C390()
{
  v1 = [v0 specifier];
  v27.receiver = v0;
  v27.super_class = type metadata accessor for TipCell();
  objc_msgSendSuper2(&v27, "refreshCellContentsWithSpecifier:", v1);

  [v0 setUserInteractionEnabled:1];
  v2 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v2];

  v3 = [v0 specifier];
  if (v3)
  {
    v4 = v3;
    *&v24 = 0x746E6F4373706954;
    *(&v24 + 1) = 0xEB00000000746E65;
    v5 = [v3 objectForKeyedSubscript:sub_14804()];
    swift_unknownObjectRelease();

    if (v5)
    {
      sub_147A4();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_14274();
      if (swift_dynamicCast())
      {
        v6 = v23;
        v7 = OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView;
        if (!*&v0[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView])
        {
          v8 = [v0 contentView];
          [v8 addSubview:v23];

          sub_BD98(&qword_26CB8, &qword_1CB68);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1CB00;
          v10 = [v0 contentView];
          v11 = objc_opt_self();
          v12 = [v11 constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v23 attribute:5 multiplier:1.0 constant:0.0];

          *(v9 + 32) = v12;
          v13 = [v0 contentView];
          v14 = [v11 constraintWithItem:v13 attribute:6 relatedBy:0 toItem:v23 attribute:6 multiplier:1.0 constant:0.0];

          *(v9 + 40) = v14;
          v15 = [v0 contentView];
          v16 = [v11 constraintWithItem:v15 attribute:3 relatedBy:0 toItem:v23 attribute:3 multiplier:1.0 constant:0.0];

          *(v9 + 48) = v16;
          v17 = [v0 contentView];
          v18 = [v11 constraintWithItem:v17 attribute:4 relatedBy:0 toItem:v23 attribute:4 multiplier:1.0 constant:0.0];

          *(v9 + 56) = v18;
          sub_CF8C(0, &qword_26CC0, NSLayoutConstraint_ptr);
          isa = sub_146F4().super.isa;

          [v11 activateConstraints:isa];

          v20 = *&v0[v7];
          *&v0[v7] = v23;
          v6 = v20;
        }

LABEL_14:

        return;
      }
    }

    else
    {
      sub_CF2C(v26, &qword_26CB0, &qword_1CB60);
    }

    v21 = OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView;
    v22 = *&v0[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView];
    if (v22)
    {
      [v22 removeFromSuperview];
      v6 = *&v0[v21];
    }

    else
    {
      v6 = 0;
    }

    *&v0[v21] = 0;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_C7D8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_D0AC;

  return sub_9204(v0);
}

uint64_t sub_C868()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C8A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C8B8()
{
  v1 = sub_14134();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_C9B4()
{
  v2 = *(sub_14134() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_CAD4;

  return sub_AA18(v9, v10, v11, v0 + v3, v5, v7, v8);
}

uint64_t sub_CAD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_CBC8()
{
  result = qword_26CD0;
  if (!qword_26CD0)
  {
    sub_14134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26CD0);
  }

  return result;
}

uint64_t *sub_CC20(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_CC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD98(&qword_26CC8, &qword_1CB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CCF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CD2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_D0AC;

  return sub_C19C(a1, v4);
}

uint64_t sub_CDE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_CAD4;

  return sub_C19C(a1, v4);
}

uint64_t sub_CE9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_CEE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_CE9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CF2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_BD98(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_CF8C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_CFD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D014()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_D0AC;

  return sub_99AC(v3, v4, v5, v2);
}

uint64_t sub_D0D0(uint64_t a1)
{
  v2 = sub_14214();
  __chkstk_darwin(v2 - 8);
  v3 = sub_141F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CF8C(0, &qword_26DF0, &off_20728);
  v7 = [objc_allocWithZone(PSSpecifier) init];
  [v7 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_14204();
  sub_141E4();
  sub_14394();
  sub_CF8C(0, &qword_26DF8, NSBundle_ptr);
  if (!sub_14784())
  {
    v8 = [objc_opt_self() mainBundle];
  }

  v9 = sub_14474();
  v11 = v10;
  v13 = v12;
  sub_D3C0();
  sub_144C4();
  sub_DF4C(v9, v11, v13 & 1);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_D380()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_D3C0()
{
  result = qword_26D28;
  if (!qword_26D28)
  {
    sub_141F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26D28);
  }

  return result;
}

uint64_t sub_D418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_14304();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_14114();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  sub_BD98(&qword_26DD8, &qword_1CCC0);
  v3[16] = swift_task_alloc();
  v6 = sub_140E4();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  sub_14734();
  v3[20] = sub_14724();
  v8 = sub_14704();

  return _swift_task_switch(sub_D60C, v8, v7);
}

uint64_t sub_D60C()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];

  sub_14694();
  sub_140B4();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    sub_DD60(v0[16]);
    sub_14684();
    sub_146A4();
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    sub_14684();
    v0[2] = sub_140C4();
    v0[3] = v10;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_DDC8();
    v11 = sub_14794();

    v13 = 0;
    v14 = *(v11 + 16);
LABEL_4:
    v15 = (v11 + 40 + 16 * v13);
    while (v14 != v13)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = *(v15 - 1);
      v16 = *v15;
      v15 += 2;
      ++v13;
      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_DE1C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          result = sub_DE1C((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v17;
        v21[5] = v16;
        goto LABEL_4;
      }
    }

    v22 = _swiftEmptyArrayStorage[2];

    if (!v22)
    {
      sub_140D4();
      if (v23)
      {
        v24 = v0[8];
        v25 = sub_146C4();

        [v24 setSpecifierIdentifierToScrollAndHighlight:v25];
      }
    }

    v27 = v0[18];
    v26 = v0[19];
    v28 = v0[17];
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[9];
    sub_146A4();
    (*(v30 + 8))(v29, v31);
    (*(v27 + 8))(v26, v28);
  }

  v32 = v0[1];

  return v32();
}

unint64_t sub_D93C()
{
  result = qword_26D30;
  if (!qword_26D30)
  {
    sub_CE9C(&qword_26D18, &qword_1CBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26D30);
  }

  return result;
}

unint64_t sub_D9A4()
{
  result = qword_26D38;
  if (!qword_26D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26D38);
  }

  return result;
}

uint64_t sub_DA14()
{
  v1 = sub_BD98(&qword_26D18, &qword_1CBE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_BD98(&qword_26D20, &qword_1CBE8);
  v7 = sub_141F4();
  v8 = sub_D3C0();
  v11[0] = v7;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_146B4();
  *(swift_allocObject() + 16) = v6;
  sub_D93C();
  v9 = v6;
  sub_14674();
  return (*(v2 + 8))(v4, v1);
}

id sub_DBDC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_DC4C()
{
  sub_CE9C(&qword_26D18, &qword_1CBE0);
  sub_D93C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_DCB0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_CAD4;

  return sub_D418(a1, a2, v6);
}

uint64_t sub_DD60(uint64_t a1)
{
  v2 = sub_BD98(&qword_26DD8, &qword_1CCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_DDC8()
{
  result = qword_26DE0;
  if (!qword_26DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26DE0);
  }

  return result;
}

char *sub_DE1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_DE3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_DE3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD98(&qword_26DE8, qword_1CCC8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_DF4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_DF68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_14364();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD98(&qword_26E00, &qword_1CCF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_12A18(v2, &v14 - v9, &qword_26E00, &qword_1CCF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_142F4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_14774();
    v13 = sub_143E4();
    sub_14244();

    sub_14354();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t property wrapper backing initializer of SOSKappaConsentUI.savedBlock(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_BD98(&qword_26E08, &qword_1CD28);
  sub_14504();
  return v6;
}

uint64_t sub_E21C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t (*SOSKappaConsentUI.savedBlock.getter())()
{
  type metadata accessor for SOSKappaConsentUI(0);
  sub_BD98(&qword_26E10, &qword_1CD30);
  sub_14514();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_E34C;
}

uint64_t SOSKappaConsentUI.savedBlock.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SOSKappaConsentUI(0);
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_BD98(&qword_26E10, &qword_1CD30);
  return sub_14524();
}

void (*SOSKappaConsentUI.savedBlock.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SOSKappaConsentUI(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v8 = v5[2];
  v4[14] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  sub_C8A8(v6, v7);

  v4[15] = sub_BD98(&qword_26E10, &qword_1CD30);
  sub_14514();
  v9 = v4[8];
  if (v9)
  {
    v10 = v4[9];
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_12AB4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v4[6] = v12;
  v4[7] = v11;
  return sub_E50C;
}

void sub_E50C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v2[3] = v3;
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[14];
  v2[4] = v4;
  v2[5] = v7;
  if (a2)
  {
    if (v5)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v6;
      v9 = sub_12AB0;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v2[10] = v9;
    v2[11] = v8;
    sub_C8A8(v5, v6);
    sub_14524();
    sub_E650(v3, v4);

    sub_E650(v2[6], v2[7]);
  }

  else
  {
    if (v5)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      *(v10 + 24) = v6;
      v11 = sub_12AB0;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v2[10] = v11;
    v2[11] = v10;
    sub_14524();
    sub_E650(v3, v4);
  }

  free(v2);
}

uint64_t sub_E650(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_E660(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t SOSKappaConsentUI.$savedBlock.getter()
{
  type metadata accessor for SOSKappaConsentUI(0);
  sub_BD98(&qword_26E10, &qword_1CD30);
  sub_14534();
  return v1;
}

uint64_t property wrapper backing initializer of SOSKappaConsentUI.bundle(uint64_t a1)
{
  sub_BD98(&qword_26E18, &qword_1CD38);
  sub_14504();
  return v2;
}

uint64_t SOSKappaConsentUI.bundle.getter()
{
  type metadata accessor for SOSKappaConsentUI(0);
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  return v1;
}

uint64_t SOSKappaConsentUI.bundle.setter(uint64_t a1)
{
  type metadata accessor for SOSKappaConsentUI(0);
  sub_BD98(&qword_26E20, &qword_1CD40);
  return sub_14524();
}

void (*SOSKappaConsentUI.bundle.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for SOSKappaConsentUI(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v8 = v7;
  v4[8] = sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  return sub_E8CC;
}

void sub_E8CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  *(v2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 40) = v5;
  *(v2 + 24) = v3;
  if (a2)
  {
    v6 = v5;
    sub_14524();
  }

  else
  {
    sub_14524();
  }

  free(v2);
}

uint64_t SOSKappaConsentUI.$bundle.getter()
{
  type metadata accessor for SOSKappaConsentUI(0);
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14534();
  return v1;
}

__n128 SOSKappaConsentUI.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_BD98(&qword_26E28, &qword_1CD48);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  *v5 = sub_143A4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_BD98(&qword_26E30, &qword_1CD50);
  sub_EB74(v1);
  sub_14574();
  sub_14314();
  sub_126E4(v5, a1, &qword_26E28, &qword_1CD48);
  v6 = a1 + *(sub_BD98(&qword_26E38, &qword_1CD58) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_EB74(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v145 = v2;
  v3 = sub_BD98(&qword_26F38, &qword_1CED0);
  v4 = __chkstk_darwin(v3 - 8);
  v153 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v152 = (&v140 - v6);
  v194 = sub_14384();
  LOBYTE(v271[0]) = 1;
  sub_104B8(v1, &v226);
  v288 = v227[3];
  v289 = v227[4];
  v290 = *&v227[5];
  v284 = v226;
  v285 = v227[0];
  v287 = v227[2];
  v286 = v227[1];
  v291[1] = v227[0];
  v291[0] = v226;
  v291[2] = v227[1];
  v291[3] = v227[2];
  v291[4] = v227[3];
  v291[5] = v227[4];
  v292 = *&v227[5];
  sub_12A18(&v284, v209, &qword_26F40, &qword_1CED8);
  sub_CF2C(v291, &qword_26F40, &qword_1CED8);
  *(&v280[6] + 7) = v287;
  *(&v280[8] + 7) = v288;
  *(&v280[10] + 7) = v289;
  *(v280 + 7) = v284;
  *(&v280[2] + 7) = v285;
  *(&v280[12] + 7) = v290;
  *(&v280[4] + 7) = v286;
  v188 = LOBYTE(v271[0]);
  v193 = sub_143F4();
  sub_142A4();
  v191 = v8;
  v192 = v7;
  v189 = v10;
  v190 = v9;
  v151 = 0xD000000000000013;
  sub_14394();
  v195 = type metadata accessor for SOSKappaConsentUI(0);
  v196 = v1;
  v11 = (v1 + *(v195 + 24));
  v12 = *v11;
  v149 = v11[1];
  v150 = v12;
  *&v226 = v12;
  *(&v226 + 1) = v149;
  v148 = sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v13 = sub_14474();
  v185 = v14;
  v186 = v13;
  v16 = v15;
  v187 = v17;
  v147 = sub_BD98(&qword_26F48, &qword_1CEE0);
  v18 = swift_allocObject();
  v146 = xmmword_1CCE0;
  *(v18 + 16) = xmmword_1CCE0;
  v19 = sub_14424();
  *(v18 + 32) = v19;
  v20 = sub_14404();
  *(v18 + 33) = v20;
  v21 = sub_14414();
  sub_14414();
  if (sub_14414() != v19)
  {
    v21 = sub_14414();
  }

  sub_14414();
  if (sub_14414() == v20)
  {
    v184 = v21;
  }

  else
  {
    v184 = sub_14414();
  }

  sub_142A4();
  v182 = v23;
  v183 = v22;
  v180 = v25;
  v181 = v24;
  v174 = v16 & 1;
  v275 = v16 & 1;
  v272 = 0;
  v179 = sub_143F4();
  sub_142A4();
  v177 = v27;
  v178 = v26;
  v175 = v29;
  v176 = v28;
  v276 = 0;
  sub_14584();
  sub_142D4();
  *&v279[7] = *&v280[15];
  *&v279[23] = *&v280[17];
  *&v279[39] = *&v280[19];
  v173 = sub_143A4();
  v268 = 1;
  v144 = sub_14374();
  v270[0] = 1;
  sub_14394();
  v30 = sub_14474();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_14394();
  v226 = *(v196 + *(v195 + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v37 = sub_14474();
  v166 = v37;
  v39 = v38;
  v172 = v38;
  v168 = v32;
  v169 = v40;
  v143 = v34 & 1;
  LOBYTE(v271[0]) = v34 & 1;
  LOBYTE(v226) = v34 & 1;
  v42 = v41 & 1;
  LOBYTE(v209[0]) = v41 & 1;
  LODWORD(v171) = v41 & 1;
  v142 = v30;
  sub_12A80(v30, v32, v143);
  v170 = v36;

  sub_12A80(v37, v39, v42);

  sub_DF4C(v37, v39, v42);

  sub_DF4C(v30, v32, v271[0]);

  v141 = v270[0];
  sub_14564();
  sub_142D4();
  LODWORD(v167) = sub_143F4();
  sub_142A4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v226) = 0;
  v165 = sub_14374();
  v270[0] = 1;
  sub_14394();
  v51 = sub_14474();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_14394();
  v226 = *(v196 + *(v195 + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v58 = sub_14474();
  v161 = v59;
  v162 = v58;
  v60 = v59;
  v163 = v61;
  v164 = v55 & 1;
  LOBYTE(v271[0]) = v55 & 1;
  LOBYTE(v226) = v55 & 1;
  v63 = v62 & 1;
  LOBYTE(v209[0]) = v62 & 1;
  LODWORD(v160) = v62 & 1;
  v157 = v53;
  v158 = v51;
  sub_12A80(v51, v53, v164);
  v159 = v57;

  sub_12A80(v58, v60, v63);

  sub_DF4C(v58, v60, v63);

  sub_DF4C(v51, v53, v271[0]);

  v155 = v270[0];
  sub_14564();
  sub_142D4();
  v156 = sub_143F4();
  sub_142A4();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  LOBYTE(v226) = 0;
  v140 = sub_14374();
  v270[0] = 1;
  sub_14394();
  v72 = sub_14474();
  v74 = v73;
  LOBYTE(v58) = v75;
  v154 = v76;
  sub_14394();
  v226 = *(v196 + *(v195 + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v77 = sub_14474();
  v79 = v78;
  v81 = v80;
  LOBYTE(v58) = v58 & 1;
  LOBYTE(v271[0]) = v58;
  LOBYTE(v226) = v58;
  LOBYTE(v53) = v82 & 1;
  LOBYTE(v209[0]) = v82 & 1;
  sub_12A80(v72, v74, v58);

  sub_12A80(v77, v79, v53);

  sub_DF4C(v77, v79, v53);

  v83 = v72;
  sub_DF4C(v72, v74, v271[0]);

  LOBYTE(v72) = v270[0];
  sub_14564();
  sub_142D4();
  *&v270[17] = v281;
  *&v270[20] = *(&v281 + 3);
  *&v270[41] = v303[0];
  *&v270[44] = *(v303 + 3);
  *&v270[76] = *(v302 + 3);
  *&v270[73] = v302[0];
  *&v270[137] = v197[0];
  *&v270[140] = *(v197 + 3);
  v271[0] = v165;
  LOBYTE(v271[1]) = v155;
  *(&v271[1] + 1) = v300[0];
  DWORD1(v271[1]) = *(v300 + 3);
  *(&v271[1] + 1) = v158;
  *&v271[2] = v157;
  BYTE8(v271[2]) = v164;
  *(&v271[2] + 9) = v299[0];
  HIDWORD(v271[2]) = *(v299 + 3);
  *&v271[3] = v159;
  *(&v271[3] + 1) = v162;
  *&v271[4] = v161;
  BYTE8(v271[4]) = v160;
  HIDWORD(v271[4]) = *(v298 + 3);
  *(&v271[4] + 9) = v298[0];
  *&v271[5] = v163;
  *(&v271[5] + 8) = v210;
  *(&v271[6] + 8) = v211;
  *(&v271[7] + 8) = v212;
  BYTE8(v271[8]) = v156;
  *(&v271[8] + 9) = v301[0];
  HIDWORD(v271[8]) = *(v301 + 3);
  *&v271[9] = v65;
  *(&v271[9] + 1) = v67;
  *&v271[10] = v69;
  *(&v271[10] + 1) = v71;
  *(&v294[20] + 8) = v271[9];
  *(&v294[21] + 8) = v271[10];
  *(&v294[16] + 8) = v271[5];
  *(&v294[17] + 8) = v271[6];
  *(&v294[18] + 8) = v271[7];
  *(&v294[19] + 8) = v271[8];
  *(&v220 + 1) = v297[0];
  DWORD1(v220) = *(v297 + 3);
  *(&v221 + 9) = v296[0];
  HIDWORD(v221) = *(v296 + 3);
  HIDWORD(v223) = *(v295 + 3);
  *(&v223 + 9) = v295[0];
  *&v224[8] = v252;
  *&v224[24] = *v253;
  *&v224[40] = *&v253[16];
  *&v294[31] = *&v253[24];
  v218 = v140;
  v235 = v140;
  LOBYTE(v220) = v72;
  v237 = v72;
  *v238 = v297[0];
  *&v238[3] = *(v297 + 3);
  v239 = v83;
  *(&v220 + 1) = v83;
  *&v221 = v74;
  v240 = v74;
  BYTE8(v221) = v58;
  LOBYTE(v241) = v58;
  *(&v241 + 1) = v296[0];
  HIDWORD(v241) = *(v296 + 3);
  v242 = v154;
  *&v222 = v154;
  *(&v222 + 1) = v77;
  v243 = v77;
  *&v223 = v79;
  v244 = v79;
  BYTE8(v223) = v53;
  v245 = v53;
  *&v246[3] = *(v295 + 3);
  *v246 = v295[0];
  *v224 = v81;
  v247 = v81;
  v84 = v144;
  *v270 = v144;
  *&v270[8] = 0;
  LOBYTE(v53) = v141;
  v270[16] = v141;
  v85 = v142;
  *&v270[24] = v142;
  *&v270[32] = v168;
  LOBYTE(v77) = v143;
  v270[40] = v143;
  *&v270[48] = v170;
  *&v270[56] = v166;
  *&v270[64] = v172;
  v270[72] = v171;
  *&v270[80] = v169;
  *&v270[88] = v201;
  *&v270[104] = v202;
  *&v270[120] = v203;
  v270[136] = v167;
  *&v270[144] = v44;
  *&v270[152] = v46;
  v294[9] = *&v270[144];
  v294[8] = *&v270[128];
  v294[4] = *&v270[64];
  v294[5] = *&v270[80];
  v294[6] = *&v270[96];
  v294[7] = *&v270[112];
  v294[0] = v144;
  v294[1] = *&v270[16];
  v294[2] = *&v270[32];
  v294[3] = *&v270[48];
  *(&v294[15] + 8) = v271[4];
  *&v270[160] = v48;
  *&v270[168] = v50;
  *(&v294[11] + 8) = v165;
  *(&v294[12] + 8) = v271[1];
  *(&v294[13] + 8) = v271[2];
  *(&v294[14] + 8) = v271[3];
  v219 = 0;
  v294[25] = v221;
  v294[24] = v220;
  v294[10] = *&v270[160];
  v294[23] = v140;
  v294[26] = v222;
  v294[27] = v223;
  v294[28] = *v224;
  v294[29] = *&v224[16];
  v294[30] = *&v224[32];
  v248 = v252;
  v249 = *v253;
  v270[176] = 0;
  LOBYTE(v294[11]) = 0;
  LOBYTE(v271[11]) = 0;
  BYTE8(v294[22]) = 0;
  v236 = 0;
  *v250 = *&v253[16];
  sub_12A18(v270, &v226, &qword_26FF8, &qword_1CF98);
  sub_12A18(v271, &v226, &qword_26FF8, &qword_1CF98);
  sub_12A18(&v218, &v226, &qword_27000, &qword_1CFA0);
  sub_CF2C(&v235, &qword_27000, &qword_1CFA0);
  *&v209[11] = v210;
  v209[0] = v165;
  v209[1] = 0;
  LOBYTE(v209[2]) = v155;
  *(&v209[2] + 1) = v300[0];
  HIDWORD(v209[2]) = *(v300 + 3);
  v209[3] = v158;
  v209[4] = v157;
  LOBYTE(v209[5]) = v164;
  *(&v209[5] + 1) = v299[0];
  HIDWORD(v209[5]) = *(v299 + 3);
  v209[6] = v159;
  v209[7] = v162;
  v209[8] = v161;
  LOBYTE(v209[9]) = v160;
  HIDWORD(v209[9]) = *(v298 + 3);
  *(&v209[9] + 1) = v298[0];
  v209[10] = v163;
  *&v209[13] = v211;
  *&v209[15] = v212;
  LOBYTE(v209[17]) = v156;
  *(&v209[17] + 1) = v301[0];
  HIDWORD(v209[17]) = *(v301 + 3);
  v209[18] = v65;
  v209[19] = v67;
  v209[20] = v69;
  v209[21] = v71;
  LOBYTE(v209[22]) = 0;
  sub_CF2C(v209, &qword_26FF8, &qword_1CF98);
  *(&v227[4] + 8) = v201;
  v226 = v84;
  LOBYTE(v227[0]) = v53;
  *(v227 + 1) = v281;
  DWORD1(v227[0]) = *(&v281 + 3);
  *(&v227[0] + 1) = v85;
  *&v227[1] = v168;
  BYTE8(v227[1]) = v77;
  *(&v227[1] + 9) = v303[0];
  HIDWORD(v227[1]) = *(v303 + 3);
  *&v227[2] = v170;
  *(&v227[2] + 1) = v166;
  *&v227[3] = v172;
  BYTE8(v227[3]) = v171;
  HIDWORD(v227[3]) = *(v302 + 3);
  *(&v227[3] + 9) = v302[0];
  *&v227[4] = v169;
  *(&v227[5] + 8) = v202;
  *(&v227[6] + 8) = v203;
  BYTE8(v227[7]) = v167;
  *(&v227[7] + 9) = v197[0];
  HIDWORD(v227[7]) = *(v197 + 3);
  *&v227[8] = v44;
  *(&v227[8] + 1) = v46;
  *&v227[9] = v48;
  *(&v227[9] + 1) = v50;
  LOBYTE(v227[10]) = 0;
  sub_CF2C(&v226, &qword_26FF8, &qword_1CF98);
  memcpy(v270, v294, sizeof(v270));
  memcpy(v271, v294, 0x1F8uLL);
  sub_12A18(v270, &v226, &qword_26F50, &qword_1CEE8);
  sub_CF2C(v271, &qword_26F50, &qword_1CEE8);
  memcpy(&v267[7], v270, 0x1F8uLL);
  LODWORD(v169) = v268;
  LODWORD(v163) = sub_143F4();
  sub_142A4();
  v195 = v86;
  v171 = v88;
  v172 = v87;
  v170 = v89;
  sub_14394();
  *&v226 = v150;
  *(&v226 + 1) = v149;
  sub_14514();
  v165 = sub_14474();
  v167 = v90;
  v168 = v91;
  v93 = v92;
  v94 = swift_allocObject();
  *(v94 + 16) = v146;
  LOBYTE(v84) = sub_14424();
  *(v94 + 32) = v84;
  v95 = sub_14404();
  *(v94 + 33) = v95;
  v96 = sub_14414();
  sub_14414();
  if (sub_14414() != v84)
  {
    v96 = sub_14414();
  }

  sub_14414();
  if (sub_14414() != v95)
  {
    v96 = sub_14414();
  }

  LODWORD(v166) = v96;
  sub_142A4();
  v161 = v98;
  v162 = v97;
  v159 = v100;
  v160 = v99;
  v164 = v93 & 1;
  LOBYTE(v302[0]) = v93 & 1;
  LOBYTE(v301[0]) = 0;
  v101 = sub_143F4();
  v102 = sub_14414();
  sub_14414();
  if (sub_14414() != v101)
  {
    v102 = sub_14414();
  }

  sub_142A4();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  LOBYTE(v303[0]) = 0;
  sub_14584();
  sub_142D4();
  *&v266[7] = v281;
  *&v266[23] = v282;
  *&v266[39] = v283;
  v111 = sub_143A4();
  v112 = v152;
  *v152 = v111;
  *(v112 + 8) = 0;
  *(v112 + 16) = 1;
  v113 = sub_BD98(&qword_26F58, &qword_1CEF0);
  sub_108C4(v196, v112 + *(v113 + 44));
  v114 = v153;
  sub_12A18(v112, v153, &qword_26F38, &qword_1CED0);
  v197[0] = v194;
  v197[1] = 0;
  LOBYTE(v198[0]) = v188;
  *(&v198[3] + 1) = *&v280[6];
  *(&v198[4] + 1) = *&v280[8];
  *(&v198[5] + 1) = *&v280[10];
  v198[6] = *(&v280[11] + 7);
  *(v198 + 1) = *v280;
  *(&v198[1] + 1) = *&v280[2];
  *(&v198[2] + 1) = *&v280[4];
  LOBYTE(v199) = v193;
  DWORD1(v199) = *&v293[3];
  *(&v199 + 1) = *v293;
  *(&v199 + 1) = v192;
  *&v200[0] = v191;
  *(&v200[0] + 1) = v190;
  *&v200[1] = v189;
  BYTE8(v200[1]) = 0;
  v115 = v198[0];
  v116 = v145;
  *v145 = v194;
  v116[1] = v115;
  v117 = v198[6];
  v116[6] = v198[5];
  v116[7] = v117;
  v118 = v198[4];
  v116[4] = v198[3];
  v116[5] = v118;
  v119 = v198[2];
  v116[2] = v198[1];
  v116[3] = v119;
  v120 = *(v200 + 9);
  v121 = v200[0];
  v116[8] = v199;
  v116[9] = v121;
  *(v116 + 153) = v120;
  *&v201 = v186;
  *(&v201 + 1) = v185;
  LOBYTE(v202) = v174;
  *(&v202 + 1) = *v274;
  DWORD1(v202) = *&v274[3];
  *(&v202 + 1) = v187;
  LOBYTE(v203) = v184;
  *(&v203 + 1) = *v273;
  DWORD1(v203) = *&v273[3];
  *(&v203 + 1) = v183;
  *&v204 = v182;
  *(&v204 + 1) = v181;
  *&v205 = v180;
  BYTE8(v205) = 0;
  HIDWORD(v205) = *&v278[3];
  *(&v205 + 9) = *v278;
  LOBYTE(v206) = v179;
  DWORD1(v206) = *&v277[3];
  *(&v206 + 1) = *v277;
  *(&v206 + 1) = v178;
  *&v207 = v177;
  *(&v207 + 1) = v176;
  *&v208[0] = v175;
  BYTE8(v208[0]) = 0;
  *(v208 + 9) = *v279;
  *(&v208[3] + 1) = *&v279[47];
  *(&v208[2] + 9) = *&v279[32];
  *(&v208[1] + 9) = *&v279[16];
  v122 = v208[0];
  v116[17] = v207;
  v116[18] = v122;
  v123 = v208[2];
  v116[19] = v208[1];
  v116[20] = v123;
  v116[21] = v208[3];
  v124 = v206;
  v116[15] = v205;
  v116[16] = v124;
  v125 = v202;
  v116[11] = v201;
  v116[12] = v125;
  v126 = v204;
  v116[13] = v203;
  v116[14] = v126;
  v209[0] = v173;
  v209[1] = 0;
  LOBYTE(v209[2]) = v169;
  memcpy(&v209[2] + 1, v267, 0x1FFuLL);
  v127 = v163;
  LOBYTE(v209[66]) = v163;
  *(&v209[66] + 1) = *v269;
  HIDWORD(v209[66]) = *&v269[3];
  v209[67] = v195;
  v209[68] = v172;
  v209[69] = v171;
  v209[70] = v170;
  LOBYTE(v209[71]) = 0;
  memcpy(v116 + 22, v209, 0x239uLL);
  LODWORD(v158) = v102;
  *&v210 = v165;
  *(&v210 + 1) = v167;
  LOBYTE(v211) = v164;
  *(&v211 + 1) = *v263;
  DWORD1(v211) = *&v263[3];
  *(&v211 + 1) = v168;
  LOBYTE(v212) = v166;
  *(&v212 + 1) = *v262;
  DWORD1(v212) = *&v262[3];
  v129 = v161;
  v128 = v162;
  *(&v212 + 1) = v162;
  *&v213 = v161;
  v131 = v159;
  v130 = v160;
  *(&v213 + 1) = v160;
  *&v214 = v159;
  BYTE8(v214) = 0;
  HIDWORD(v214) = *&v265[3];
  *(&v214 + 9) = *v265;
  LOBYTE(v215) = v102;
  DWORD1(v215) = *&v264[3];
  *(&v215 + 1) = *v264;
  *(&v215 + 1) = v104;
  *&v216 = v106;
  *(&v216 + 1) = v108;
  *&v217[0] = v110;
  BYTE8(v217[0]) = 0;
  *(&v217[3] + 1) = *&v266[47];
  *(&v217[2] + 9) = *&v266[32];
  *(&v217[1] + 9) = *&v266[16];
  *(v217 + 9) = *v266;
  v132 = v216;
  v133 = v217[0];
  v134 = v214;
  v116[63] = v215;
  v116[64] = v132;
  v135 = v211;
  v116[58] = v210;
  v116[59] = v135;
  v136 = v213;
  v116[60] = v212;
  v116[61] = v136;
  v116[62] = v134;
  v116[68] = v217[3];
  v137 = v217[1];
  v116[67] = v217[2];
  v116[66] = v137;
  v116[65] = v133;
  v138 = sub_BD98(&qword_26F60, &qword_1CEF8);
  sub_12A18(v114, v116 + *(v138 + 96), &qword_26F38, &qword_1CED0);
  sub_12A18(v197, &v226, &qword_26F68, &qword_1CF00);
  sub_12A18(&v201, &v226, &qword_26F70, &qword_1CF08);
  sub_12A18(v209, &v226, &qword_26F78, &qword_1CF10);
  sub_12A18(&v210, &v226, &qword_26F70, &qword_1CF08);
  sub_CF2C(v112, &qword_26F38, &qword_1CED0);
  sub_CF2C(v114, &qword_26F38, &qword_1CED0);
  v218 = v165;
  v219 = v167;
  LOBYTE(v220) = v164;
  *(&v220 + 1) = *v263;
  DWORD1(v220) = *&v263[3];
  *(&v220 + 1) = v168;
  LOBYTE(v221) = v166;
  *(&v221 + 1) = *v262;
  DWORD1(v221) = *&v262[3];
  *(&v221 + 1) = v128;
  *&v222 = v129;
  *(&v222 + 1) = v130;
  *&v223 = v131;
  BYTE8(v223) = 0;
  HIDWORD(v223) = *&v265[3];
  *(&v223 + 9) = *v265;
  v224[0] = v158;
  *&v224[4] = *&v264[3];
  *&v224[1] = *v264;
  *&v224[8] = v104;
  *&v224[16] = v106;
  *&v224[24] = v108;
  *&v224[32] = v110;
  v224[40] = 0;
  *&v225[15] = *&v266[47];
  *v225 = *&v266[32];
  *&v224[57] = *&v266[16];
  *&v224[41] = *v266;
  sub_CF2C(&v218, &qword_26F70, &qword_1CF08);
  v226 = v173;
  LOBYTE(v227[0]) = v169;
  memcpy(v227 + 1, v267, 0x1FFuLL);
  v228 = v127;
  *v229 = *v269;
  *&v229[3] = *&v269[3];
  v230 = v195;
  v231 = v172;
  v232 = v171;
  v233 = v170;
  v234 = 0;
  sub_CF2C(&v226, &qword_26F78, &qword_1CF10);
  v235 = v186;
  v236 = v185;
  v237 = v174;
  *v238 = *v274;
  *&v238[3] = *&v274[3];
  v239 = v187;
  LOBYTE(v240) = v184;
  *(&v240 + 1) = *v273;
  HIDWORD(v240) = *&v273[3];
  v241 = v183;
  v242 = v182;
  v243 = v181;
  v244 = v180;
  v245 = 0;
  *&v246[3] = *&v278[3];
  *v246 = *v278;
  LOBYTE(v247) = v179;
  HIDWORD(v247) = *&v277[3];
  *(&v247 + 1) = *v277;
  *&v248 = v178;
  *(&v248 + 1) = v177;
  *&v249 = v176;
  *(&v249 + 1) = v175;
  v250[0] = 0;
  *&v251[15] = *&v279[47];
  *v251 = *&v279[32];
  *&v250[17] = *&v279[16];
  *&v250[1] = *v279;
  sub_CF2C(&v235, &qword_26F70, &qword_1CF08);
  v252 = v194;
  v253[0] = v188;
  *&v253[49] = *&v280[6];
  *&v253[65] = *&v280[8];
  *v254 = *&v280[10];
  *&v254[15] = *(&v280[11] + 7);
  *&v253[1] = *v280;
  *&v253[17] = *&v280[2];
  *&v253[33] = *&v280[4];
  v255 = v193;
  *&v256[3] = *&v293[3];
  *v256 = *v293;
  v257 = v192;
  v258 = v191;
  v259 = v190;
  v260 = v189;
  v261 = 0;
  return sub_CF2C(&v252, &qword_26F68, &qword_1CF00);
}

uint64_t sub_104B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_144D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14664();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_144F4();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v31 = sub_144E4();

  (*(v4 + 8))(v6, v3);
  sub_14574();
  sub_142D4();
  LOBYTE(v37) = 1;
  *&v34[3] = *&v34[27];
  *&v34[11] = *&v34[35];
  *&v34[19] = *&v34[43];
  sub_14394();
  v37 = *(a1 + *(type metadata accessor for SOSKappaConsentUI(0) + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v9 = sub_14474();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_14444();
  v13 = sub_14454();
  v15 = v14;
  v17 = v16;
  sub_DF4C(v9, v11, v6 & 1);

  sub_14434();
  v18 = sub_14464();
  v20 = v19;
  LOBYTE(v4) = v21;
  v23 = v22;

  sub_DF4C(v13, v15, v17 & 1);

  v24 = v31;
  v35[0] = v31;
  v35[1] = 0;
  *v36 = 1;
  *&v36[2] = *v34;
  *&v36[18] = *&v34[8];
  *&v36[34] = *&v34[16];
  v25 = *&v34[23];
  *&v36[48] = *&v34[23];
  LOBYTE(v4) = v4 & 1;
  v33 = v4;
  v26 = v31;
  v27 = *v36;
  v28 = *&v36[32];
  v29 = v32;
  *(v32 + 32) = *&v36[16];
  *(v29 + 48) = v28;
  *v29 = v26;
  *(v29 + 16) = v27;
  *(v29 + 64) = v25;
  *(v29 + 72) = v18;
  *(v29 + 80) = v20;
  *(v29 + 88) = v4;
  *(v29 + 96) = v23;
  sub_12A18(v35, &v37, &qword_27008, &qword_1CFA8);
  sub_12A80(v18, v20, v4);

  sub_DF4C(v18, v20, v4);

  v37 = v24;
  v38 = 1;
  v39 = *v34;
  v40 = *&v34[8];
  *v41 = *&v34[16];
  *&v41[14] = *&v34[23];
  return sub_CF2C(&v37, &qword_27008, &qword_1CFA8);
}

uint64_t sub_108C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v100 = sub_BD98(&qword_26F80, &qword_1CF18);
  __chkstk_darwin(v100);
  v102 = &v83 - v3;
  v101 = sub_BD98(&qword_26F88, &qword_1CF20);
  v4 = __chkstk_darwin(v101);
  v105 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v103 = &v83 - v7;
  __chkstk_darwin(v6);
  v104 = &v83 - v8;
  v84 = sub_143D4();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SOSKappaConsentUI(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD98(&qword_26F90, &qword_1CF28);
  __chkstk_darwin(v16);
  v18 = &v83 - v17;
  v91 = sub_BD98(&qword_26F98, &qword_1CF30);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v20 = &v83 - v19;
  v85 = sub_BD98(&qword_26FA0, &qword_1CF38);
  __chkstk_darwin(v85);
  v94 = &v83 - v21;
  v93 = sub_BD98(&qword_26FA8, &qword_1CF40);
  v22 = __chkstk_darwin(v93);
  v98 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v83 - v25;
  __chkstk_darwin(v24);
  v97 = &v83 - v27;
  sub_12364(a1, v15);
  v28 = *(v13 + 80);
  v95 = v14;
  v29 = (v28 + 16) & ~v28;
  v92 = v28;
  v30 = swift_allocObject();
  v96 = v15;
  sub_12300(v15, v30 + v29);
  v99 = a1;
  v107 = a1;
  sub_BD98(&qword_26FB0, &qword_1CF48);
  sub_12534();
  sub_14554();
  v31 = &v18[*(v16 + 36)];
  v89 = sub_BD98(&qword_26FC0, &qword_1CF50);
  v32 = *(v89 + 28);
  v33 = enum case for ControlSize.regular(_:);
  v34 = sub_142B4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 104);
  v37 = v31 + v32;
  v38 = v33;
  v39 = v20;
  v88 = v34;
  v87 = v36;
  v86 = v35 + 104;
  (v36)(v37, v38);
  *v31 = swift_getKeyPath();
  sub_143C4();
  sub_125B8();
  sub_1269C(&qword_26FE8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v40 = v84;
  sub_144A4();
  (*(v9 + 8))(v11, v40);
  sub_CF2C(v18, &qword_26F90, &qword_1CF28);
  sub_BD98(&qword_26F48, &qword_1CEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CCE0;
  LOBYTE(v20) = sub_14404();
  *(inited + 32) = v20;
  v42 = sub_14424();
  *(inited + 33) = v42;
  v43 = sub_14414();
  sub_14414();
  if (sub_14414() != v20)
  {
    v43 = sub_14414();
  }

  sub_14414();
  if (sub_14414() != v42)
  {
    v43 = sub_14414();
  }

  v44 = v94;
  sub_142A4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  (*(v90 + 32))(v44, v39, v91);
  v53 = v44 + *(v85 + 36);
  *v53 = v43;
  *(v53 + 8) = v46;
  *(v53 + 16) = v48;
  *(v53 + 24) = v50;
  *(v53 + 32) = v52;
  *(v53 + 40) = 0;
  v54 = sub_143F4();
  v55 = sub_14414();
  sub_14414();
  if (sub_14414() != v54)
  {
    v55 = sub_14414();
  }

  sub_142A4();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_126E4(v44, v26, &qword_26FA0, &qword_1CF38);
  v64 = &v26[*(v93 + 36)];
  *v64 = v55;
  *(v64 + 1) = v57;
  *(v64 + 2) = v59;
  *(v64 + 3) = v61;
  *(v64 + 4) = v63;
  v64[40] = 0;
  v65 = v97;
  sub_126E4(v26, v97, &qword_26FA8, &qword_1CF40);
  v66 = v96;
  sub_12364(v99, v96);
  v67 = swift_allocObject();
  v68 = sub_12300(v66, v67 + v29);
  __chkstk_darwin(v68);
  v69 = v102;
  sub_14554();
  v70 = &v69[*(v100 + 36)];
  v87(v70 + *(v89 + 28), v38, v88);
  *v70 = swift_getKeyPath();
  sub_14574();
  sub_14314();
  v71 = v69;
  v72 = v103;
  sub_126E4(v71, v103, &qword_26F80, &qword_1CF18);
  v73 = (v72 + *(v101 + 36));
  v74 = v113;
  v73[4] = v112;
  v73[5] = v74;
  v73[6] = v114;
  v75 = v109;
  *v73 = v108;
  v73[1] = v75;
  v76 = v111;
  v73[2] = v110;
  v73[3] = v76;
  v77 = v104;
  sub_126E4(v72, v104, &qword_26F88, &qword_1CF20);
  v78 = v98;
  sub_12A18(v65, v98, &qword_26FA8, &qword_1CF40);
  v79 = v105;
  sub_12A18(v77, v105, &qword_26F88, &qword_1CF20);
  v80 = v106;
  sub_12A18(v78, v106, &qword_26FA8, &qword_1CF40);
  v81 = sub_BD98(&qword_26FF0, &qword_1CF90);
  sub_12A18(v79, v80 + *(v81 + 48), &qword_26F88, &qword_1CF20);
  sub_CF2C(v77, &qword_26F88, &qword_1CF20);
  sub_CF2C(v65, &qword_26FA8, &qword_1CF40);
  sub_CF2C(v79, &qword_26F88, &qword_1CF20);
  return sub_CF2C(v78, &qword_26FA8, &qword_1CF40);
}

void *sub_11384(uint64_t a1, char a2)
{
  v4 = sub_142F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DF68(v7);
  sub_142E4();
  (*(v5 + 8))(v7, v4);
  v8 = (a1 + *(type metadata accessor for SOSKappaConsentUI(0) + 20));
  v9 = *(v8 + 2);
  v14 = *v8;
  v15 = v9;
  sub_BD98(&qword_26E10, &qword_1CD30);
  result = sub_14514();
  v11 = v13[0];
  if (v13[0])
  {
    v12 = v13[1];
    LOBYTE(v14) = a2;
    (v13[0])(&v14);
    return sub_E650(v11, v12);
  }

  return result;
}

double sub_114CC@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_BD98(&qword_26E00, &qword_1CCF0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SOSKappaConsentUI(0);
  v3 = a1 + v2[5];
  sub_BD98(&qword_26E08, &qword_1CD28);
  sub_14504();
  *v3 = v8;
  *(v3 + 2) = v9;
  v4 = v2[6];
  sub_BD98(&qword_26E18, &qword_1CD38);
  sub_14504();
  result = *&v8;
  *(a1 + v4) = v8;
  v6 = (a1 + v2[7]);
  *v6 = 0xD000000000000068;
  v6[1] = 0x8000000000018380;
  v7 = (a1 + v2[8]);
  *v7 = 0xD000000000000143;
  v7[1] = 0x80000000000183F0;
  return result;
}

uint64_t sub_115F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_BD98(&qword_26E00, &qword_1CCF0);

  return swift_storeEnumTagMultiPayload();
}

double sub_11680@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SOSKappaConsentUI(0);
  a1[4] = sub_1269C(&qword_26F30, type metadata accessor for SOSKappaConsentUI, &protocol conformance descriptor for SOSKappaConsentUI);
  v2 = sub_CC20(a1);
  return sub_114CC(v2);
}

id sub_11774(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_11A1C(a1, a2);
  sub_E650(a1, a2);
  return v6;
}

id sub_118AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SOSKappaFeedbackConsent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11954(uint64_t a1)
{
  v2 = sub_142B4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_14334();
}

id sub_11A1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD98(&qword_26E40, &qword_1CD60);
  __chkstk_darwin(v6 - 8);
  v8 = (&v30 - v7);
  v9 = type metadata accessor for SOSKappaConsentUI(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *v8 = swift_getKeyPath();
  sub_BD98(&qword_26E00, &qword_1CCF0);
  swift_storeEnumTagMultiPayload();
  sub_126E4(v8, v14, &qword_26E40, &qword_1CD60);
  if (a1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = sub_12AB0;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = &v14[v9[5]];
  v31 = v18;
  v32 = v17;
  v20 = v16;
  sub_C8A8(a1, a2);
  sub_BD98(&qword_26E08, &qword_1CD28);
  sub_14504();
  v21 = v34;
  *v19 = v33;
  *(v19 + 2) = v21;
  v22 = v9[6];
  v31 = v16;
  sub_BD98(&qword_26E18, &qword_1CD38);
  sub_14504();
  *&v14[v22] = v33;
  v23 = &v14[v9[7]];
  *v23 = 0xD000000000000068;
  *(v23 + 1) = 0x8000000000018380;
  v24 = &v14[v9[8]];
  *v24 = 0xD000000000000143;
  *(v24 + 1) = 0x80000000000183F0;
  v25 = OBJC_IVAR____TtC11SOSSettings23SOSKappaFeedbackConsent__view;
  sub_12300(v14, &v3[OBJC_IVAR____TtC11SOSSettings23SOSKappaFeedbackConsent__view]);
  sub_12364(&v3[v25], v12);
  v26 = objc_allocWithZone(sub_BD98(&qword_26F28, "J\a"));
  *&v3[OBJC_IVAR____TtC11SOSSettings23SOSKappaFeedbackConsent__hostingController] = sub_143B4();
  v27 = type metadata accessor for SOSKappaFeedbackConsent(0);
  v30.receiver = v3;
  v30.super_class = v27;
  v28 = objc_msgSendSuper2(&v30, "init");

  return v28;
}

uint64_t sub_11D4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11D84(uint64_t a1)
{
  v2 = type metadata accessor for SOSKappaConsentUI(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BD98(&qword_26E40, &qword_1CD60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_11EF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_BD98(&qword_26E40, &qword_1CD60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_11FB8(uint64_t a1)
{
  sub_12094(319);
  if (v1 <= 0x3F)
  {
    sub_120EC(319, &qword_26EA8, &qword_26E08, &qword_1CD28);
    if (v2 <= 0x3F)
    {
      sub_120EC(319, &unk_26EB0, &qword_26E18, &qword_1CD38);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_12094(uint64_t a1)
{
  if (!qword_26EA0)
  {
    sub_142F4();
    v1 = sub_142C4();
    if (!v2)
    {
      atomic_store(v1, &qword_26EA0);
    }
  }
}

void sub_120EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_CE9C(a3, a4);
    v5 = sub_14544();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_12158(uint64_t a1)
{
  result = type metadata accessor for SOSKappaConsentUI(319);
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

unint64_t sub_121F8()
{
  result = qword_26F18;
  if (!qword_26F18)
  {
    sub_CE9C(&qword_26E38, &qword_1CD58);
    sub_CEE4(&qword_26F20, &qword_26E28, &qword_1CD48, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26F18);
  }

  return result;
}

uint64_t sub_122B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SOSKappaConsentUI(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SOSKappaConsentUI(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_123D4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_14394();
  v12 = *(v3 + *(type metadata accessor for SOSKappaConsentUI(0) + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v4 = sub_14474();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_14574();
  sub_14314();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v16;
  *(a1 + 112) = v17;
  *(a1 + 128) = v18;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  result = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  return result;
}

unint64_t sub_12534()
{
  result = qword_26FB8;
  if (!qword_26FB8)
  {
    sub_CE9C(&qword_26FB0, &qword_1CF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26FB8);
  }

  return result;
}

unint64_t sub_125B8()
{
  result = qword_26FC8;
  if (!qword_26FC8)
  {
    sub_CE9C(&qword_26F90, &qword_1CF28);
    sub_CEE4(&qword_26FD0, &qword_26FD8, &qword_1CF88, &protocol conformance descriptor for Button<A>);
    sub_CEE4(&qword_26FE0, &qword_26FC0, &qword_1CF50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26FC8);
  }

  return result;
}

uint64_t sub_1269C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_126E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BD98(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1274C()
{
  v1 = type metadata accessor for SOSKappaConsentUI(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_BD98(&qword_26E00, &qword_1CCF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_142F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 20)))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1292C@<X0>(uint64_t a1@<X8>)
{
  sub_14394();
  type metadata accessor for SOSKappaConsentUI(0);
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  result = sub_14474();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_12A18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BD98(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_12A80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

char *SOSFeedbackController.__allocating_init(delegate:legalText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_13C04(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

char *SOSFeedbackController.init(delegate:legalText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_13C04(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

UIViewController __swiftcall SOSFeedbackController.getFeedbackViewController()()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController) + 184);

  v3.super.super.isa = v1(v2);

  return v3;
}

void *sub_12CC4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result feedbackControllerDidCancel:v0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_12D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_140F4(v6);
    v9 = v8;
    v10 = sub_146C4();
    [v7 feedbackController:v4 didFailToAttachURL:v9 error:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_12DEC(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_146C4();
    [v6 *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

id SOSFeedbackController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_13088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_145B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v11 = objc_allocWithZone(sub_14624());
  v12 = sub_145A4();
  *(v5 + 16) = v12;
  (*(v8 + 104))(v10, enum case for FBKFeedbackForm.AuthenticationMethod.none(_:), v7);
  v13 = v12;
  sub_145C4();

  if (a4)
  {
    v14 = *(v5 + 16);
    sub_145F4();
  }

  v15 = *(v5 + 16);
  v16 = objc_allocWithZone(sub_14664());
  v17 = v15;
  v18 = sub_14644();
  *(v5 + 24) = v18;
  v19 = v18;

  sub_14654();

  return v5;
}

uint64_t sub_13230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a2, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_13370(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 40);
    swift_getObjectType();
    v5 = sub_14594();
    (*(v4 + 16))(v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_134C0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_135CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    v8 = sub_14634();
    (*(v6 + 32))(a2, v8, v9, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_137E4(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v7 = [a2 description];
    v8 = sub_146D4();
    v10 = v9;

    (*(v5 + 40))(v8, v10, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_139C4()
{
  sub_13D14(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

char *SOSCrashDetectionFeedbackController.__allocating_init(delegate:legalText:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_13D3C(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v12;
}

char *SOSCrashDetectionFeedbackController.init(delegate:legalText:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_13D3C(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

id sub_13BCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_13C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for SOSFeedbackViewController();
  v7 = swift_allocObject();
  sub_13088(0xD00000000000001ALL, 0x80000000000188D0, a2, a3);
  *&v4[OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController] = v7;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SOSFeedbackController();
  v8 = objc_msgSendSuper2(&v10, "init");
  *(*&v8[OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController] + 40) = &off_21478;
  swift_unknownObjectWeakAssign();
  return v8;
}

char *sub_13D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a4;
  v23 = a1;
  v10 = sub_14614();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SOSFeedbackViewController();
  v14 = swift_allocObject();

  sub_13088(0xD000000000000020, 0x8000000000018880, a2, a3);
  if (a5)
  {
    v15 = *(v14 + 16);
    *v13 = 0xD000000000000014;
    v13[1] = 0x80000000000188B0;
    (*(v11 + 104))(v13, enum case for FBKFeedbackForm.Question.custom(_:), v10);
    v16 = v15;

    sub_14604();

    (*(v11 + 8))(v13, v10);
  }

  else
  {
  }

  v17 = *(v14 + 16);
  sub_145E4();

  v18 = *(v14 + 16);
  sub_145D4();

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController] = v14;
  v19 = type metadata accessor for SOSFeedbackController();
  v24.receiver = v6;
  v24.super_class = v19;
  v20 = objc_msgSendSuper2(&v24, "init", v22, v23);
  *(*&v20[OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController] + 40) = &off_21478;
  swift_unknownObjectWeakAssign();
  return v20;
}