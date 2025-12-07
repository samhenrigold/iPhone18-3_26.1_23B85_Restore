uint64_t sub_100001CEC(uint64_t a1)
{
  if (!SOSCCIsSOSTrustAndSyncingEnabled())
  {
    return 0;
  }

  v1 = sub_100001EC8(3);
  v2 = [v1 mapWithBlock:&stru_10000C488];
  v3 = [v2 mutableCopy];

  v4 = sub_100001EC8(2);
  v5 = [v4 mapWithBlock:&stru_10000C4A8];
  v6 = [v5 mutableCopy];

  if ([v3 count])
  {
    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Process accept: %@", &v11, 0xCu);
    }

    v8 = SOSCCAcceptApplicants();
  }

  else
  {
    v8 = 1;
  }

  if ([v6 count])
  {
    v9 = secLogObjForScope();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Process reject: %@", &v11, 0xCu);
    }

    if (v8)
    {
      v8 = SOSCCRejectApplicants();
    }
  }

  return v8;
}

NSMutableArray *sub_100001EC8(int a1)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = objc_opt_new();
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [qword_1000106F0 objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 applicantUIState] == a1)
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

uint64_t start()
{
  if (OctagonPlatformSupportsSOS())
  {
    v140 = os_transaction_create();
    context = objc_autoreleasePoolPush();
    v0 = dispatch_get_global_queue(2, 0);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v0, &stru_10000C4E8);

    xpc_activity_register("com.apple.security.CircleJoinRequestedTick", XPC_ACTIVITY_CHECK_IN, &stru_10000C508);
    v1 = &OBJC_CATEGORY_NSArray___map;
    if (byte_100010702)
    {
LABEL_3:
      objc_autoreleasePoolPop(context);
      v2 = secLogObjForScope();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Done", buf, 2u);
      }

      v3 = v140;
      goto LABEL_8;
    }

    v5 = 0;
    v6 = &OBJC_CATEGORY_NSArray___map;
    v134 = kSecureBackupIsEnabledKey;
    v138 = SBUserNotificationDontDismissOnUnlock;
    v137 = SBUserNotificationDismissOnLock;
    v7 = &OBJC_CATEGORY_NSArray___map;
    while ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
    {
LABEL_203:
      ++v5;
LABEL_204:
      sub_100004C40(0);
      v132 = v7[37]._class;
      if (v132)
      {
        (v132->cache)();
        v133 = v7[37]._class;
        v7[37]._class = 0;
      }

      if (v5 > 1 || BYTE2(v1[37].inst_meths))
      {
        goto LABEL_3;
      }
    }

    inst_meths = v6[36].inst_meths;
    v6[36].inst_meths = @"processEvents A";

    err = 0;
    cf = 0;
    v9 = SOSCCThisDeviceIsInCircleNonCached();
    DepartureReason = SOSCCGetLastDepartureReason();
    if (sub_100003958(cf) && v9 == -1)
    {
      v11 = secLogObjForScope();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v162 = 138412290;
        *&v162[4] = cf;
        v12 = v11;
        v13 = "returning from processEvents due to error returned from securityd: %@";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (!DepartureReason)
    {
      if (err)
      {
        v14 = sSecXPCErrorDomain;
        Domain = CFErrorGetDomain(err);
        if (CFEqual(v14, Domain))
        {
          v11 = secLogObjForScope();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v162 = 138412290;
            *&v162[4] = err;
            v12 = v11;
            v13 = "XPC error while checking last departure reason: %@, not processing events";
LABEL_20:
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v162, 0xCu);
          }

LABEL_21:
          v6 = &OBJC_CATEGORY_NSArray___map;

LABEL_66:
          v55 = secLogObjForScope();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Processed events!!!", buf, 2u);
          }

          v5 = 0;
          v7 = &OBJC_CATEGORY_NSArray___map;
          goto LABEL_204;
        }
      }
    }

    v16 = +[NSDate date];
    v17 = +[PersistentState loadFromStorage];
    v18 = secLogObjForScope();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 lastCircleStatus];
      *v162 = 67109888;
      *&v162[4] = v19;
      *&v162[8] = 1024;
      *&v162[10] = v9;
      *&v162[14] = 1024;
      *&v162[16] = DepartureReason;
      *&v162[20] = 2048;
      *&v162[22] = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "CircleStatus %d -> %d{%d} (s=%p)", v162, 0x1Eu);
    }

    v142 = v17;
    v20 = [v17 pendingApplicationReminder];
    [v20 timeIntervalSinceDate:v16];
    v22 = v21;

    v23 = secLogObjForScope();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v17 pendingApplicationReminder];
      v25 = [v24 debugDescription];
      *v162 = 138412546;
      *&v162[4] = v25;
      *&v162[12] = 2048;
      *&v162[14] = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Time until pendingApplicationReminder (%@) %f", v162, 0x16u);

      v1 = &OBJC_CATEGORY_NSArray___map;
    }

    v141 = v16;
    if (v9 == 2)
    {
      if (v22 <= 0.0)
      {
        v26 = off_1000106D0;
        off_1000106D0 = @"reminderAlert";

        [v17 pendingApplicationReminderAlertInterval];
        v27 = v17;
        if (SOSCCIsSOSTrustAndSyncingEnabled())
        {
          MGGetSInt32Answer();
          v28 = SecFrameworkCopyLocalizedString();
          v29 = [[SecureBackup alloc] initWithUserActivityLabel:@"iCloudResetAvailable"];
          *out_token = 0;
          v30 = [v29 getAccountInfoWithInfo:0 results:out_token];
          v31 = *out_token;
          v32 = secLogObjForScope();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v162 = 138412546;
            *&v162[4] = v30;
            *&v162[12] = 2112;
            *&v162[14] = v31;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SecureBackup e=%@ r=%@", v162, 0x16u);
          }

          if (v30)
          {
            v33 = 0;
          }

          else
          {
            [v31 objectForKeyedSubscript:v134];
            v135 = v27;
            v35 = v34 = v28;
            v33 = [v35 isEqualToNumber:&__kCFBooleanTrue];

            v28 = v34;
            v27 = v135;
          }

          if (qword_100010708 != -1)
          {
            dispatch_once(&qword_100010708, &stru_10000C5A8);
          }

          if (byte_100010710 == 1)
          {
            [v27 defaultPendingApplicationReminderAlertInterval];
            [v27 pendingApplicationReminderAlertInterval];
          }

          *out_token = kCFUserNotificationAlertHeaderKey;
          v36 = SecFrameworkCopyLocalizedString();
          *v162 = v36;
          *&v162[8] = v28;
          v136 = v28;
          v156 = kCFUserNotificationAlertMessageKey;
          v157 = kCFUserNotificationDefaultButtonTitleKey;
          v37 = SecFrameworkCopyLocalizedString();
          *&v162[16] = v37;
          v158 = kCFUserNotificationAlternateButtonTitleKey;
          v38 = &stru_10000CC78;
          if (v33)
          {
            v38 = SecFrameworkCopyLocalizedString();
          }

          *&v162[24] = v38;
          v163 = &__kCFBooleanTrue;
          v164 = &__kCFBooleanTrue;
          v159 = kCFUserNotificationAlertTopMostKey;
          v160 = v138;
          v161 = v137;
          v165 = &__kCFBooleanFalse;
          v39 = [NSDictionary dictionaryWithObjects:v162 forKeys:out_token count:7];
          if (v33)
          {
          }

          error = 0;
          v40 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v39);
          qword_1000106E0 = v40;
          if (error)
          {
            v41 = secLogObjForScope();
            v1 = &OBJC_CATEGORY_NSArray___map;
            v42 = v136;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *v153 = 67109120;
              v154 = error;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Can't make pending notification err=%x", v153, 8u);
            }
          }

          else
          {
            byte_1000106E8 = 1;
            qword_1000106D8 = CFUserNotificationCreateRunLoopSource(0, v40, sub_100006288, 0);
            Current = CFRunLoopGetCurrent();
            CFRunLoopAddSource(Current, qword_1000106D8, kCFRunLoopDefaultMode);
            v1 = &OBJC_CATEGORY_NSArray___map;
            v42 = v136;
          }
        }
      }

      else
      {
        sub_100003A2C(vcvtpd_s64_f64(v22));
      }
    }

    if (SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v44 = +[ACAccountStore defaultStore];
      v45 = [v44 aa_primaryAppleAccount];
      v46 = [v45 accountProperties];
      v47 = [v46 objectForKeyedSubscript:@"personID"];

      if (v47)
      {
        v48 = [CDPAccount isICDPEnabledForDSID:v47];
        v49 = v48;
        NSLog(@"iCDP: PSKeychainSyncIsUsingICDP returning %{BOOL}d", v48);
      }

      else
      {
        NSLog(@"iCDP: no primary account");
        v49 = 0;
      }

      byte_100010701 = v49;
      v50 = secLogObjForScope();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *v162 = 67109120;
        *&v162[4] = byte_100010701;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "account is icdp: %{BOOL}d", v162, 8u);
      }
    }

    v51 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v51);
    }

    v52 = SOSCCThisDeviceIsInCircleNonCached();
    if (sub_100003958(cf) && v52 == -1)
    {
      v53 = secLogObjForScope();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *v162 = 138412290;
        *&v162[4] = cf;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "returning from processEvents due to error returned from securityd: %@", v162, 0xCu);
      }

      v6 = &OBJC_CATEGORY_NSArray___map;
      goto LABEL_64;
    }

    if (byte_100010701 == 1)
    {
      [v142 setLastCircleStatus:v52];
      [v142 writeToStorage];
      if (byte_100010700 == 1)
      {
        v56 = secLogObjForScope();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *v162 = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "followup not resolved", v162, 2u);
        }

        BYTE2(v1[37].inst_meths) = 1;
LABEL_74:
        v6 = &OBJC_CATEGORY_NSArray___map;
        v7 = &OBJC_CATEGORY_NSArray___map;
        v57 = v142;
LABEL_202:

        goto LABEL_203;
      }

      if (v52 <= 0)
      {
        if (v52 == -1)
        {
          v81 = secLogObjForScope();
          v6 = &OBJC_CATEGORY_NSArray___map;
          v57 = v142;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *v162 = 138412290;
            *&v162[4] = cf;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "error from SOSCCThisDeviceIsInCircle: %@", v162, 0xCu);
          }

          if (!SOSCCIsSOSTrustAndSyncingEnabled())
          {
            goto LABEL_152;
          }

          goto LABEL_134;
        }

        if (v52)
        {
          goto LABEL_135;
        }

        v79 = secLogObjForScope();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *v162 = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "follow up should be resolved", v162, 2u);
        }

        BYTE2(v1[37].inst_meths) = 1;
        byte_100010700 = 0;
      }

      else
      {
        if (v52 == 1)
        {
          goto LABEL_106;
        }

        if (v52 != 2)
        {
          if (v52 == 3)
          {
LABEL_106:
            v70 = secLogObjForScope();
            v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
            v6 = &OBJC_CATEGORY_NSArray___map;
            if (!DepartureReason)
            {
              v57 = v142;
              if (v71)
              {
                *v162 = 0;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "iCDP: We appear to not be associated with an iCloud account", v162, 2u);
              }

              goto LABEL_152;
            }

            v57 = v142;
            if (v71)
            {
              *v162 = 0;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "iCDP: We need to get back into the circle", v162, 2u);
            }

            if (!SOSCCIsSOSTrustAndSyncingEnabled())
            {
LABEL_152:
              BYTE2(v1[37].inst_meths) = 1;
LABEL_201:
              v7 = &OBJC_CATEGORY_NSArray___map;
              goto LABEL_202;
            }

LABEL_134:
            sub_100003B18(&stru_10000C5E8);
            goto LABEL_152;
          }

LABEL_135:
          v82 = secLogObjForScope();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *v162 = 67109120;
            *&v162[4] = v52;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Unknown circle status %d", v162, 8u);
          }

          goto LABEL_74;
        }
      }
    }

    else if (v52 == -1 && [v142 lastCircleStatus] != -1 && DepartureReason == 1)
    {
      v72 = secLogObjForScope();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *v162 = 138412290;
        *&v162[4] = cf;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "SA: error from SOSCCThisDeviceIsInCircle: %@", v162, 0xCu);
      }

      if (CFErrorGetCode(cf) == 2)
      {
        v73 = secLogObjForScope();
        v6 = &OBJC_CATEGORY_NSArray___map;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *v162 = 0;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "SA: We need the password to re-validate ourselves - it's changed on another device", v162, 2u);
        }

        sub_100003BD0(8);
        v54 = v142;
        [v142 setLastCircleStatus:0xFFFFFFFFLL];
        [v142 writeToStorage];
        goto LABEL_65;
      }
    }

    if (([v142 lastCircleStatus] || (v52 & 0xFFFFFFFD) != 1) && (objc_msgSend(v142, "lastCircleStatus") != 3 || v52 != 1 || (objc_msgSend(v142, "absentCircleWithNoReason") & 1) == 0))
    {
      v58 = [v142 debugShowLeftReason];

      if (!v58)
      {
LABEL_162:
        v6 = &OBJC_CATEGORY_NSArray___map;
        v93 = off_1000106D0;
        off_1000106D0 = @"processEvents C";

        v57 = v142;
        if (v52 != [v142 lastCircleStatus])
        {
          v94 = [v142 lastCircleStatus];
          [v142 setLastCircleStatus:v52];
          if (v94 == 2 || v52 != 2)
          {
            if (v94 == 2 && v52 != 2)
            {
              v97 = secLogObjForScope();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                *v162 = 0;
                _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Pending request completed", v162, 2u);
              }

              v98 = +[NSDate distantPast];
              [v142 setApplicationDate:v98];

              v99 = +[NSDate distantFuture];
              [v142 setPendingApplicationReminder:v99];
            }
          }

          else
          {
            v95 = secLogObjForScope();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              *v162 = 0;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Pending request started", v162, 2u);
            }

            [v142 setApplicationDate:v141];
            v96 = [v141 dateByAddingTimeInterval:{objc_msgSend(v142, "pendingApplicationReminderAlertInterval")}];
            [v142 setPendingApplicationReminder:v96];

            sub_100003A2C([v142 pendingApplicationReminderAlertInterval]);
          }

          [v142 writeToStorage];
        }

        if (v52)
        {
          if (v52 == 2)
          {
            v100 = qword_1000106E0;
            if (qword_1000106E0)
            {
              out_token[0] = 0;
              v101 = off_1000106D0;
              off_1000106D0 = @"processEvents D1";

              v102 = kSOSCCCircleChangedNotification;
              v103 = &_dispatch_main_q;
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_100004214;
              handler[3] = &unk_10000C528;
              handler[4] = v100;
              notify_register_dispatch(v102, out_token, &_dispatch_main_q, handler);

              v104 = off_1000106D0;
              off_1000106D0 = @"processEvents D2";

              v105 = secLogObjForScope();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                *v162 = 67109376;
                *&v162[4] = (byte_1000106E8 & 1) == 0;
                *&v162[8] = 1024;
                *&v162[10] = out_token[0];
                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "NOTE: currentAlertIsForApplicants %{BOOL}d, token %d", v162, 0xEu);
              }

              CFRunLoopRun();
LABEL_64:
              v54 = v142;
LABEL_65:

              goto LABEL_66;
            }
          }

          v127 = off_1000106D0;
          off_1000106D0 = @"processEvents D4";

          v128 = secLogObjForScope();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            *v162 = 67109120;
            *&v162[4] = v52;
            _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "SOSCCThisDeviceIsInCircle status %d, not checking applicants", v162, 8u);
          }
        }

        else
        {
          v106 = off_1000106D0;
          off_1000106D0 = @"processEvents E";

          v107 = objc_opt_new();
          v108 = qword_1000106F0;
          qword_1000106F0 = v107;

          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v109 = SOSCCCopyApplicantPeerInfo();
          v110 = [v109 countByEnumeratingWithState:&v143 objects:buf count:16];
          if (v110)
          {
            v111 = v110;
            v112 = *v144;
            do
            {
              for (i = 0; i != v111; i = i + 1)
              {
                if (*v144 != v112)
                {
                  objc_enumerationMutation(v109);
                }

                v114 = [[Applicant alloc] initWithPeerInfo:*(*(&v143 + 1) + 8 * i)];
                v115 = qword_1000106F0;
                v116 = [(Applicant *)v114 idString];
                [v115 setObject:v114 forKeyedSubscript:v116];
              }

              v111 = [v109 countByEnumeratingWithState:&v143 objects:buf count:16];
            }

            while (v111);
          }

          v117 = cf;
          if (cf)
          {
            cf = 0;
            CFRelease(v117);
          }

          out_token[0] = -42;
          v6 = &OBJC_CATEGORY_NSArray___map;
          v118 = off_1000106D0;
          off_1000106D0 = @"processEvents F";

          v119 = kSOSCCCircleChangedNotification;
          v120 = &_dispatch_main_q;
          v121 = notify_register_dispatch(v119, out_token, &_dispatch_main_q, &stru_10000C568);

          v122 = secLogObjForScope();
          v1 = &OBJC_CATEGORY_NSArray___map;
          v57 = v142;
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            *v162 = 67109376;
            *&v162[4] = out_token[0];
            *&v162[8] = 1024;
            *&v162[10] = v121;
            _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "ACC token %d, status %d", v162, 0xEu);
          }

          v123 = off_1000106D0;
          off_1000106D0 = @"processEvents F2";

          if ([qword_1000106F0 count])
          {
            v124 = off_1000106D0;
            off_1000106D0 = @"processEvents F3";

            sub_1000044BC(0);
            v125 = off_1000106D0;
            off_1000106D0 = @"processEvents F4";

            if (qword_1000106E0)
            {
              v126 = off_1000106D0;
              off_1000106D0 = @"processEvents F5";

              CFRunLoopRun();
            }
          }

          else
          {
            v129 = secLogObjForScope();
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              *v162 = 0;
              _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "No applicants", v162, 2u);
            }
          }

          v130 = off_1000106D0;
          off_1000106D0 = @"processEvents F6";

          notify_cancel(out_token[0]);
          v131 = off_1000106D0;
          off_1000106D0 = @"processEvents DONE";
        }

        goto LABEL_201;
      }
    }

    v59 = off_1000106D0;
    off_1000106D0 = @"processEvents B";

    v60 = [v142 debugShowLeftReason];

    if (v60)
    {
      v61 = secLogObjForScope();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = [v142 debugShowLeftReason];
        *v162 = 138412290;
        *&v162[4] = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "debugShowLeftReason: %@", v162, 0xCu);
      }

      v63 = [v142 debugShowLeftReason];
      DepartureReason = [v63 intValue];

      [v142 setDebugShowLeftReason:0];
      v64 = err;
      if (err)
      {
        err = 0;
        CFRelease(v64);
      }

      [v142 writeToStorage];
    }

    if (!DepartureReason)
    {
      v74 = secLogObjForScope();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *v162 = 138412290;
        *&v162[4] = err;
        v75 = v74;
        v76 = "Couldn't get last departure reason: %@";
        v77 = 12;
LABEL_160:
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, v76, v162, v77);
      }

LABEL_161:

      goto LABEL_162;
    }

    v66 = v52 == 3 && DepartureReason == 1;
    [v142 setAbsentCircleWithNoReason:v66];
    v67 = secLogObjForScope();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *v162 = 67109120;
      *&v162[4] = DepartureReason;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Depature reason %d", v162, 8u);
    }

    if ((byte_100010701 & 1) == 0)
    {
      v78 = secLogObjForScope();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *v162 = 0;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "posting revocation notification!", v162, 2u);
      }

      sub_100003BD0(DepartureReason);
      goto LABEL_157;
    }

    if (byte_100010700)
    {
      v68 = secLogObjForScope();
      v69 = v142;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *v162 = 0;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "still waiting for followup to resolve", v162, 2u);
      }

LABEL_158:
      v74 = secLogObjForScope();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v92 = [v69 lastCircleStatus];
        *v162 = 67109376;
        *&v162[4] = v52;
        *&v162[8] = 1024;
        *&v162[10] = v92;
        v75 = v74;
        v76 = "pKOA returned (cS %d lCS %d)";
        v77 = 14;
        goto LABEL_160;
      }

      goto LABEL_161;
    }

    v80 = objc_alloc_init(CDPFollowUpController);
    if (SOSCompatibilityModeEnabled())
    {
      +[CDPFollowUpContext contextForSOSCompatibilityMode];
    }

    else
    {
      +[CDPFollowUpContext contextForStateRepair];
    }
    v83 = ;
    v84 = SOSCompatibilityModeEnabled();
    v85 = secLogObjForScope();
    v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
    if (v84)
    {
      if (v86)
      {
        *v162 = 0;
        v87 = v85;
        v88 = "Posting a follow up (for SOS) of type SOS Compatibility Mode";
LABEL_144:
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, v88, v162, 2u);
      }
    }

    else if (v86)
    {
      *v162 = 0;
      v87 = v85;
      v88 = "Posting a follow up (for SOS) of type repair";
      goto LABEL_144;
    }

    v148 = 0;
    [v80 postFollowUpWithContext:v83 error:&v148];
    v89 = v148;
    v90 = secLogObjForScope();
    v91 = os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT);
    if (v89)
    {
      if (v91)
      {
        *v162 = 138412290;
        *&v162[4] = v89;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "request to CoreCDP to follow up failed: %@", v162, 0xCu);
      }
    }

    else
    {
      if (v91)
      {
        *v162 = 0;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "CoreCDP handling follow up", v162, 2u);
      }

      byte_100010700 = 1;
    }

LABEL_157:
    v69 = v142;
    goto LABEL_158;
  }

  v3 = secLogObjForScope();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CJR triggered even though SOS is turned off for this platform", buf, 2u);
  }

LABEL_8:

  return 0;
}

__CFError *sub_100003958(__CFError *result)
{
  if (result)
  {
    v1 = result;
    v2 = sSecXPCErrorDomain;
    Domain = CFErrorGetDomain(result);
    result = CFEqual(v2, Domain);
    if (result)
    {
      v4 = secLogObjForScope();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138412290;
        v6 = v1;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC error while checking circle status: %@, not processing events", &v5, 0xCu);
      }

      return 1;
    }
  }

  return result;
}

void sub_100003A2C(int a1)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(xdict, XPC_ACTIVITY_DELAY, a1);
  xpc_dictionary_set_uint64(xdict, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_activity_register("com.apple.security.CircleJoinRequestedTick", xdict, &stru_10000C5C8);
}

void sub_100003B18(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1000106F8)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100005FF8;
    v7[3] = &unk_10000C610;
    v8 = v1;
    v3 = objc_retainBlock(v7);
    v4 = qword_1000106F8;
    qword_1000106F8 = v3;

    v5 = v8;
  }

  else
  {
    v6 = objc_retainBlock(v1);
    v5 = qword_1000106F8;
    qword_1000106F8 = v6;
  }
}

void sub_100003BD0(uint64_t a1)
{
  v1 = a1;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = off_1000106D0;
    off_1000106D0 = @"pKOA A";

    v3 = secLogObjForScope();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v28) = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DepartureReason %d", buf, 8u);
    }

    if (v1 > 7 || ((1 << v1) & 0xE4) == 0)
    {
      v4 = SecFrameworkCopyLocalizedString();
      v5 = SecFrameworkCopyLocalizedString();
      if (qword_100010708 != -1)
      {
        dispatch_once(&qword_100010708, &stru_10000C5A8);
      }

      if (byte_100010710 == 1)
      {
        if (v1 >= 8)
        {
          v6 = 8;
        }

        else
        {
          v6 = v1;
        }

        v7 = SecFrameworkCopyLocalizedString();
        v8 = [NSString stringWithFormat:v7, off_10000C630[v6]];

        v9 = [v5 stringByAppendingString:v8];

        v5 = v9;
      }

      v31[0] = kCFUserNotificationAlertHeaderKey;
      v31[1] = kCFUserNotificationAlertMessageKey;
      v32[0] = v4;
      v32[1] = v5;
      v31[2] = kCFUserNotificationDefaultButtonTitleKey;
      v10 = SecFrameworkCopyLocalizedString();
      v32[2] = v10;
      v31[3] = kCFUserNotificationAlternateButtonTitleKey;
      v11 = SecFrameworkCopyLocalizedString();
      v32[3] = v11;
      v32[4] = &__kCFBooleanTrue;
      v31[4] = kCFUserNotificationAlertTopMostKey;
      v31[5] = SBUserNotificationDismissOnLock;
      v31[6] = SBUserNotificationDontDismissOnUnlock;
      v32[5] = &__kCFBooleanFalse;
      v32[6] = &__kCFBooleanTrue;
      v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:7];

      error = 0;
      v13 = off_1000106D0;
      if (byte_1000106E9 == 1)
      {
        off_1000106D0 = @"pKOA B";

        v14 = secLogObjForScope();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = qword_1000106E0;
          v29 = 2112;
          v30 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating existing alert %@ with %@", buf, 0x16u);
        }

        CFUserNotificationUpdate(qword_1000106E0, 0.0, 3uLL, v12);
      }

      else
      {
        off_1000106D0 = @"pKOA C";

        v15 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v12);
        v16 = error;
        if ((v15 == 0) == (error == 0))
        {
          v17 = secLogObjForScope();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v28 = @"Execution has encountered an unexpected state";
            v29 = 1024;
            LODWORD(v30) = 1405091854;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", buf, 0x12u);
          }

          getpid();
          SimulateCrash();
          v16 = error;
        }

        if (v16)
        {
          v18 = secLogObjForScope();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v28) = error;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Can't make kicked out notification err=%x", buf, 8u);
          }

          if (v15)
          {
            CFRelease(v15);
          }
        }

        else
        {
          byte_1000106E8 = 1;
          byte_1000106E9 = 1;
          qword_1000106E0 = v15;
          v19 = secLogObjForScope();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v28 = qword_1000106E0;
            v29 = 2112;
            v30 = v12;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "New ko alert %@ a=%@", buf, 0x16u);
          }

          qword_1000106D8 = CFUserNotificationCreateRunLoopSource(0, qword_1000106E0, sub_100005BA8, 0);
          Current = CFRunLoopGetCurrent();
          CFRunLoopAddSource(Current, qword_1000106D8, kCFRunLoopDefaultMode);
          *buf = -1431655766;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100005A88;
          handler[3] = &unk_10000C680;
          handler[4] = v15;
          v25 = v1;
          notify_register_dispatch("com.apple.EscrowSecurityAlert.reset", buf, &_dispatch_main_q, handler);
          v21 = off_1000106D0;
          off_1000106D0 = @"pKOA D";

          CFRunLoopRun();
          v22 = off_1000106D0;
          off_1000106D0 = @"pKOA E";

          notify_cancel(*buf);
        }
      }

      v23 = off_1000106D0;
      off_1000106D0 = @"pKOA Z";
    }
  }
}

void sub_100004214(uint64_t a1, int a2)
{
  if (*(a1 + 32) == qword_1000106E0)
  {
    v6 = SOSCCThisDeviceIsInCircle();
    if (sub_100003958(0))
    {
      v7 = v6 == -1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = secLogObjForScope();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "returning from processEvents due to error returned from securityd: %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    v8 = secLogObjForScope();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6 == 2)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Still pending...", buf, 2u);
      }

LABEL_15:

      return;
    }

    if (v6 == -1)
    {
      if (v9)
      {
        *buf = 67109634;
        *v14 = -1;
        *&v14[4] = 2112;
        *&v14[6] = qword_1000106E0;
        v15 = 2112;
        v16 = 0;
        v10 = "No longer pending (nCS=%d, alert=%@) error: %@";
        v11 = v8;
        v12 = 28;
        goto LABEL_21;
      }
    }

    else if (v9)
    {
      *buf = 67109378;
      *v14 = v6;
      *&v14[4] = 2112;
      *&v14[6] = qword_1000106E0;
      v10 = "No longer pending (nCS=%d, alert=%@)";
      v11 = v8;
      v12 = 18;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

    sub_100004C40(1);
    return;
  }

  v4 = secLogObjForScope();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 67109890;
    *v14 = (byte_1000106E8 & 1) == 0;
    *&v14[4] = 2048;
    *&v14[6] = v5;
    v15 = 2048;
    v16 = qword_1000106E0;
    v17 = 2112;
    v18 = qword_1000106E0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "-- CC after original alert gone (currentAlertIsForApplicants %{BOOL}d, pA %p, cA %p -- %@)", buf, 0x26u);
  }

  notify_cancel(a2);
}

void sub_1000044BC(uint64_t a1)
{
  v1 = a1;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = +[MCProfileConnection sharedConnection];
    v3 = [v2 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];

    if (v3 == 2)
    {
      v5 = secLogObjForScope();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Account modifications not allowed.", buf, 2u);
      }

      goto LABEL_31;
    }

    if (v1)
    {
      if (SOSCCIsSOSTrustAndSyncingEnabled())
      {
        v6 = SecFrameworkCopyLocalizedString();
        v7 = sub_100004CDC(v6);
        v8 = [NSString stringWithFormat:v6, v7];

        v9 = SecFrameworkCopyLocalizedString();
        *v42 = kCFUserNotificationAlertHeaderKey;
        v43 = kCFUserNotificationDefaultButtonTitleKey;
        *buf = v8;
        *&buf[8] = v9;
        v44 = kCFUserNotificationAlertTopMostKey;
        v45 = SBUserNotificationDontDismissOnUnlock;
        *&buf[16] = &__kCFBooleanTrue;
        v51 = &__kCFBooleanTrue;
        v46 = SBUserNotificationDismissOnLock;
        v52 = &__kCFBooleanFalse;
        v10 = [NSDictionary dictionaryWithObjects:buf forKeys:v42 count:5];
        responseFlags = 3;
        error = -1431655766;
        v11 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v10);
        if (v11)
        {
          v12 = v11;
          CFUserNotificationReceiveResponse(v11, 0.0, &responseFlags);
          CFRelease(v12);
        }
      }

      v4 = qword_1000106E0;
      if (!qword_1000106E0)
      {
LABEL_19:
        byte_1000106E8 = 0;
        v13 = sub_100004D58(v4);
        v14 = secLogObjForScope();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = qword_1000106F0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Asking about: %@ (of: %@)", buf, 0x16u);
        }

        v5 = v13;
        v15 = SOSCCIsSOSTrustAndSyncingEnabled();
        if (v5 && v15 && ([v5 name], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, [v5 deviceType], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
        {
          v19 = SecFrameworkCopyLocalizedString();
          v20 = [v5 name];
          v21 = [NSString stringWithFormat:v19, v20];

          v22 = [v5 deviceType];
          if (([v22 isEqualToString:@"iPhone"] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"iPod") & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"iPad") & 1) == 0)
          {
            [v22 isEqualToString:@"Mac"];
          }

          v24 = SecFrameworkCopyLocalizedString();

          v26 = sub_100004CDC(v25);
          v27 = [NSString stringWithFormat:v24, v26];

          *v42 = kCFUserNotificationAlertHeaderKey;
          v43 = kCFUserNotificationAlertMessageKey;
          *buf = v21;
          *&buf[8] = v27;
          v44 = kCFUserNotificationDefaultButtonTitleKey;
          v28 = SecFrameworkCopyLocalizedString();
          *&buf[16] = v28;
          v45 = kCFUserNotificationAlternateButtonTitleKey;
          v29 = SecFrameworkCopyLocalizedString();
          v51 = v29;
          v46 = kCFUserNotificationTextFieldTitlesKey;
          v30 = SecFrameworkCopyLocalizedString();
          v52 = v30;
          v53 = &__kCFBooleanTrue;
          v31 = SBUserNotificationDontDismissOnUnlock;
          v47 = kCFUserNotificationAlertTopMostKey;
          v48 = SBUserNotificationDontDismissOnUnlock;
          v54 = &__kCFBooleanTrue;
          v32 = SBUserNotificationDismissOnLock;
          v49 = SBUserNotificationDismissOnLock;
          v55 = &__kCFBooleanFalse;
          v33 = [NSDictionary dictionaryWithObjects:buf forKeys:v42 count:8];

          if (v33)
          {
            if (qword_1000106E0)
            {
              v34 = CFUserNotificationUpdate(qword_1000106E0, 0.0, 0x10003uLL, v33);
              if (v34)
              {
                v35 = v34;
                v36 = secLogObjForScope();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *&buf[4] = v35;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "CFUserNotificationUpdate err=%d", buf, 8u);
                }

                goto LABEL_48;
              }
            }

            else
            {
              v42[0] = 0;
              v37 = CFUserNotificationCreate(0, 0.0, 0x10003uLL, v42, v33);
              qword_1000106E0 = v37;
              if (v42[0])
              {
                v39 = secLogObjForScope();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v5;
                  *&buf[12] = 1024;
                  *&buf[14] = v42[0];
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Can't make notification for %@ err=%x", buf, 0x12u);
                }

LABEL_48:
                exit(0);
              }

              qword_1000106D8 = CFUserNotificationCreateRunLoopSource(0, v37, sub_100004ECC, 0);
              Current = CFRunLoopGetCurrent();
              CFRunLoopAddSource(Current, qword_1000106D8, kCFRunLoopDefaultMode);
            }

            [v5 setApplicantUIState:1];

LABEL_31:
            return;
          }
        }

        else
        {
        }

        v23 = secLogObjForScope();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NULL data for %@", buf, 0xCu);
        }

        sub_100004C40(1);
        goto LABEL_31;
      }

      if ((byte_1000106E8 & 1) == 0)
      {
LABEL_16:
        qword_1000106E0 = 0;
        CFRelease(v4);
LABEL_17:
        v4 = qword_1000106D8;
        if (qword_1000106D8)
        {
          qword_1000106D8 = 0;
          CFRelease(v4);
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (byte_1000106E8 != 1)
      {
        goto LABEL_19;
      }

      v4 = qword_1000106E0;
      if (!qword_1000106E0)
      {
        goto LABEL_19;
      }
    }

    CFUserNotificationCancel(v4);
    v4 = qword_1000106E0;
    if (!qword_1000106E0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }
}

void sub_100004C40(uint64_t a1)
{
  v1 = a1;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    if (qword_1000106D8)
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, qword_1000106D8, kCFRunLoopDefaultMode);
      v3 = qword_1000106D8;
      if (qword_1000106D8)
      {
        qword_1000106D8 = 0;
        CFRelease(v3);
      }
    }

    if (qword_1000106E0)
    {
      CFUserNotificationCancel(qword_1000106E0);
      v4 = qword_1000106E0;
      if (qword_1000106E0)
      {
        qword_1000106E0 = 0;
        CFRelease(v4);
      }
    }

    if (v1)
    {
      v5 = CFRunLoopGetCurrent();
      CFRunLoopStop(v5);
    }

    byte_1000106E8 = 1;
    byte_1000106E9 = 0;
  }
}

id sub_100004CDC(uint64_t a1)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v1 = +[ACAccountStore defaultStore];
    v2 = [v1 aa_primaryAppleAccount];
    v3 = [v2 username];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100004D58(uint64_t a1)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v1 = [qword_1000106F0 objectEnumerator];
    v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          if ([v7 applicantUIState] == 1)
          {
            v9 = v7;

            goto LABEL_17;
          }

          if (![v7 applicantUIState])
          {
            v8 = v7;

            v4 = v8;
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v4 = 0;
    }

    v4 = v4;
    v9 = v4;
LABEL_17:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100004ECC(__CFUserNotification *a1, __CFError *a2)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        v4 = 0;
        v5 = 3;
        goto LABEL_9;
      }

      v6 = secLogObjForScope();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v36 = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unexpected response %lu", buf, 0xCu);
      }
    }

    v5 = 2;
    v4 = 1;
LABEL_9:
    err = 0;
    v7 = sub_100001EC8(1);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000548C;
    v32[3] = &unk_10000C6E0;
    v33 = v5;
    [v7 enumerateObjectsUsingBlock:v32];
    if (v4)
    {
      v8 = sub_100001CEC(&err);
      v9 = secLogObjForScope();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 138412290;
          v36 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Didn't need password to process %@", buf, 0xCu);
        }

        sub_100004C40(1);
        goto LABEL_56;
      }

      if (v10)
      {
        *buf = 138412546;
        v36 = err;
        v37 = 2112;
        v38 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Couldn't process reject without password (e=%@) for %@ (will try with password next)", buf, 0x16u);
      }

      v11 = err;
      Code = CFErrorGetCode(err);
      if ((Code + 536870212) <= 0x26 && ((1 << (Code + 68)) & 0x4002000001) != 0)
      {
        Domain = CFErrorGetDomain(v11);
        if (Domain && kCFErrorDomainMach)
        {
          if (CFEqual(Domain, kCFErrorDomainMach))
          {
            goto LABEL_21;
          }
        }

        else if (Domain == kCFErrorDomainMach)
        {
LABEL_21:
          v14 = secLogObjForScope();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "system is locked, dismiss the notification", buf, 2u);
          }

LABEL_55:

LABEL_56:
          return;
        }
      }

      v15 = err;
      if (err)
      {
        err = 0;
        CFRelease(v15);
      }
    }

    v16 = CFUserNotificationGetResponseValue(a1, kCFUserNotificationTextFieldValuesKey, 0);
    v14 = v16;
    if (v16)
    {
      v17 = [v16 UTF8String];
      v18 = [NSData dataWithBytes:v17 length:strlen(v17)];
      v19 = 0;
      while ((SOSCCTryUserCredentials() & 1) != 0)
      {
        v20 = sub_100001CEC(&err);
        if ((v20 & 1) == 0)
        {
          v21 = secLogObjForScope();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v36 = err;
            v37 = 2112;
            v38 = v7;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Can't processRequests: %@ for %@", buf, 0x16u);
          }
        }

        v22 = err;
        if (err)
        {
          err = 0;
          CFRelease(v22);
        }

        v23 = v19++ >= 4;
        v24 = v20 ^ 1;
        if (v23)
        {
          v24 = 0;
        }

        if ((v24 & 1) == 0)
        {
          if (v20 && (sub_100004D58(v22), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
          {
            sub_100004C40(0);
            sub_1000044BC(0);
          }

          else
          {
            sub_100004C40(1);
          }

          goto LABEL_54;
        }
      }

      v27 = secLogObjForScope();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = err;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Try user credentials failed %@", buf, 0xCu);
      }

      if (err)
      {
        v28 = kSOSErrorDomain;
        v29 = CFErrorGetDomain(err);
        if (!CFEqual(v28, v29) || CFErrorGetCode(err) != 3)
        {
          exit(0);
        }
      }

      v30 = secLogObjForScope();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Calling askAboutAll again...", buf, 2u);
      }

      [v7 enumerateObjectsUsingBlock:&stru_10000C720];
      sub_1000044BC(1);
      v31 = err;
      if (err)
      {
        err = 0;
        CFRelease(v31);
      }

LABEL_54:
    }

    else
    {
      v26 = secLogObjForScope();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No password given, retry", buf, 2u);
      }

      sub_1000044BC(1);
    }

    goto LABEL_55;
  }
}

void sub_1000054A4(id a1, int a2)
{
  v2 = secLogObjForScope();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v49 = kSOSCCCircleChangedNotification;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notified: %s", buf, 0xCu);
  }

  cf = 0;
  v37 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = SOSCCCopyApplicantPeerInfo();
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v4)
  {
    v36 = 0;
    goto LABEL_20;
  }

  v6 = v4;
  v36 = 0;
  v7 = *v43;
  *&v5 = 138412546;
  v35 = v5;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v43 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [[Applicant alloc] initWithPeerInfo:*(*(&v42 + 1) + 8 * i)];
      v10 = [(Applicant *)v9 idString];
      [v37 addObject:v10];

      v11 = qword_1000106F0;
      v12 = [(Applicant *)v9 idString];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (!v13)
      {
        v16 = qword_1000106F0;
        v15 = [(Applicant *)v9 idString];
        [v16 setObject:v9 forKeyedSubscript:v15];
        v36 = 1;
        goto LABEL_16;
      }

      v14 = [v13 applicantUIState];
      if (v14 == 1)
      {
        [(Applicant *)v9 setApplicantUIState:1];
LABEL_15:
        v17 = qword_1000106F0;
        v15 = [(Applicant *)v9 idString];
        [v17 setObject:v9 forKeyedSubscript:v15];
        goto LABEL_16;
      }

      if (!v14)
      {
        goto LABEL_15;
      }

      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v35;
        *v49 = v13;
        *&v49[8] = 2112;
        *&v49[10] = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Update to %@ >> %@ with pending order, should work out ok though", buf, 0x16u);
      }

LABEL_16:
    }

    v6 = [v3 countByEnumeratingWithState:&v42 objects:v50 count:16];
  }

  while (v6);
LABEL_20:

  if (!cf)
  {
    v19 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = [qword_1000106F0 keyEnumerator];
    v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      v24 = v36;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v38 + 1) + 8 * j);
          if (([v37 containsObject:{v26, v35}] & 1) == 0)
          {
            [v19 addObject:v26];
            v24 = 1;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v22);
    }

    else
    {
      v24 = v36;
    }

    [qword_1000106F0 removeObjectsForKeys:v19];
    if (![v37 count])
    {
      v27 = secLogObjForScope();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "All applicants were handled elsewhere", buf, 2u);
      }

      sub_100004C40(1);
    }

    v28 = SOSCCThisDeviceIsInCircle();
    if (sub_100003958(0) && v28 == -1)
    {
      v29 = secLogObjForScope();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v49 = 0;
        v30 = "returning early due to error returned from securityd: %@";
        v31 = v29;
        v32 = 12;
LABEL_51:
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      }
    }

    else
    {
      if (v28)
      {
        v33 = secLogObjForScope();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v37 count];
          *buf = 67109376;
          *v49 = v28;
          *&v49[4] = 2048;
          *&v49[6] = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Left circle (%d), not handling remaining %lu applicants", buf, 0x12u);
        }

        sub_100004C40(1);
      }

      if (v24)
      {
        sub_1000044BC(0);
LABEL_53:

        goto LABEL_54;
      }

      v29 = secLogObjForScope();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v30 = "needsUpdate false, not updating alert";
        v31 = v29;
        v32 = 2;
        goto LABEL_51;
      }
    }

    goto LABEL_53;
  }

  v18 = secLogObjForScope();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v49 = cf;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not update peer info array: %@", buf, 0xCu);
  }

  CFRelease(cf);
LABEL_54:
}

void sub_100005A88(uint64_t a1)
{
  v2 = qword_1000106E0;
  v3 = *(a1 + 32);
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2 == v3)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = off_1000106D0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Backup state might have changed (dS=%@)", &v6, 0xCu);
    }

    sub_100003BD0(*(a1 + 40));
  }

  else
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = off_1000106D0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Backup state may have changed, but we don't care anymore (dS=%@)", &v6, 0xCu);
    }
  }
}

void sub_100005BA8(uint64_t a1, uint64_t a2)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = a1;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "kOC %@ %lu", &v6, 0x16u);
    }

    if (a2)
    {
      if (a2 != 1)
      {
LABEL_9:
        sub_100004C40(1);
        return;
      }

      v5 = &stru_10000C6C0;
    }

    else
    {
      v5 = &stru_10000C6A0;
    }

    sub_100003B18(v5);
    goto LABEL_9;
  }
}

void sub_100005CA0(id a1)
{
  if (byte_100010701)
  {
    v1 = @"prefs:root=APPLE_ACCOUNT&aaaction=CDP&command=rejoin";
  }

  else
  {
    v1 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.KeychainSync/ADVANCED";
  }

  v2 = [NSURL URLWithString:v1];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [v3 openSensitiveURL:v2 withOptions:0];

  v5 = secLogObjForScope();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    v8 = byte_100010701;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "kickOutChoice account is iCDP: %{BOOL}d", &v7, 8u);
  }

  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109378;
    v8 = v4;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ok=%{BOOL}d opening %@", &v7, 0x12u);
  }
}

void sub_100005E18(id a1)
{
  if (byte_100010701 != 1)
  {
    return;
  }

  v1 = objc_alloc_init(CDPFollowUpController);
  if (SOSCompatibilityModeEnabled())
  {
    +[CDPFollowUpContext contextForSOSCompatibilityMode];
  }

  else
  {
    +[CDPFollowUpContext contextForStateRepair];
  }
  v2 = ;
  v3 = SOSCompatibilityModeEnabled();
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      v6 = "Posting a follow up (for SOS) of type SOS Compatibility Mode";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "Posting a follow up (for SOS) of type repair";
    goto LABEL_10;
  }

  v10 = 0;
  [v1 postFollowUpWithContext:v2 error:&v10];
  v7 = v10;
  v8 = secLogObjForScope();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "request to CoreCDP to follow up failed: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreCDP handling follow up", buf, 2u);
    }

    byte_100010700 = 1;
  }
}

uint64_t sub_100005FF8(uint64_t a1)
{
  (*(qword_1000106F8 + 16))();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_100006048(id a1)
{
  v1 = objc_alloc_init(CDPFollowUpController);
  if (SOSCompatibilityModeEnabled())
  {
    +[CDPFollowUpContext contextForSOSCompatibilityMode];
  }

  else
  {
    +[CDPFollowUpContext contextForStateRepair];
  }
  v2 = ;
  v3 = SOSCompatibilityModeEnabled();
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v6 = "Posting a follow up (for SOS) of type SOS Compatibility Mode";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v6 = "Posting a follow up (for SOS) of type repair";
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
LABEL_10:

  v10 = 0;
  [v1 postFollowUpWithContext:v2 error:&v10];
  v7 = v10;
  v8 = secLogObjForScope();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "request to CoreCDP to follow up failed: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreCDP handling follow up", buf, 2u);
    }

    byte_100010700 = 1;
  }
}

void sub_100006218(id a1, OS_xpc_object *a2)
{
  v2 = secLogObjForScope();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "activity handler fired", v3, 2u);
  }
}

void sub_100006288(uint64_t a1, unint64_t a2)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    if (a2 <= 1)
    {
      v3 = +[PersistentState loadFromStorage];
      v4 = objc_opt_new();
      v5 = [v4 dateByAddingTimeInterval:{objc_msgSend(v3, "pendingApplicationReminderAlertInterval")}];
      [v3 setPendingApplicationReminder:v5];

      sub_100003A2C([v3 pendingApplicationReminderAlertInterval]);
      [v3 writeToStorage];
      if (a2 == 1)
      {
        v6 = +[LSApplicationWorkspace defaultWorkspace];
        v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.KeychainSync/ADVANCED"];
        v8 = [v6 openSensitiveURL:v7 withOptions:0];

        v9 = secLogObjForScope();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315650;
          v11 = "reminderChoice";
          v12 = 2112;
          v13 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.KeychainSync/ADVANCED";
          v14 = 1024;
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s iCSC: opening %@ ok=%{BOOL}d", &v10, 0x1Cu);
        }
      }
    }

    sub_100004C40(1);
  }
}

void sub_10000646C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v3 = xpc_copy_description(v2);
    string = xpc_dictionary_get_string(v2, "Notification");
    v5 = secLogObjForScope();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = string;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notification arrived: %s", &v9, 0xCu);
    }

    v6 = secLogObjForScope();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "for applicants";
      if (byte_1000106E8)
      {
        v7 = "!applicants";
      }

      v9 = 136316162;
      v10 = v3;
      v11 = 2048;
      v12 = qword_1000106E0;
      if (byte_1000106E9)
      {
        v8 = "KO";
      }

      else
      {
        v8 = "!KO";
      }

      v13 = 2080;
      v14 = v7;
      v15 = 2080;
      v16 = v8;
      v17 = 2112;
      v18 = off_1000106D0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notifyd event: %s\nAlert (%p) %s %s\ndebugState: %@", &v9, 0x34u);
    }

    free(v3);
  }
}