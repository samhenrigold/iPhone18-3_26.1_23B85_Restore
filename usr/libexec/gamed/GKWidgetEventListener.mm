@interface GKWidgetEventListener
- (BOOL)isActionDefined:(id)defined;
- (BOOL)isKnownScheme:(id)scheme;
- (id)makeDeepLinkDictionaryFrom:(id)from;
- (void)activateListener;
- (void)eventServiceListener:(id)listener didReceiveOpenEventWithURL:(id)l;
@end

@implementation GKWidgetEventListener

- (void)activateListener
{
  v3 = [[CHSWidgetEventServiceListener alloc] initWithServiceDomain:@"com.apple.chrono.event-service.gamed" delegate:self];
  [(GKWidgetEventListener *)self setListener:v3];

  listener = [(GKWidgetEventListener *)self listener];
  [listener activate];

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Activating CHSWidgetEventServiceListener listener", v7, 2u);
  }
}

- (BOOL)isKnownScheme:(id)scheme
{
  v3 = qword_1003B94A0[0];
  schemeCopy = scheme;
  if (v3 != -1)
  {
    sub_1002968AC();
  }

  v5 = [qword_1003B9498 containsObject:schemeCopy];

  return v5;
}

- (BOOL)isActionDefined:(id)defined
{
  definedCopy = defined;
  if ([definedCopy isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentPlayer] & 1) != 0 || (objc_msgSend(definedCopy, "isEqualToString:", GKActivityFeedMarkdownURLFormulationPathComponentLeaderboard) & 1) != 0 || (objc_msgSend(definedCopy, "isEqualToString:", GKActivityFeedMarkdownURLFormulationPathComponentAchievement) & 1) != 0 || (objc_msgSend(definedCopy, "isEqualToString:", GKActivityFeedMarkdownURLFormulationPathComponentGame))
  {
    v4 = 1;
  }

  else
  {
    v4 = [definedCopy isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentDashboard];
  }

  return v4;
}

- (id)makeDeepLinkDictionaryFrom:(id)from
{
  fromCopy = from;
  host = [fromCopy host];
  v4 = host;
  if (host)
  {
    v38 = host;
    *buf = 0;
    v91 = buf;
    v92 = 0x3032000000;
    v93 = sub_1001A3E94;
    v94 = sub_1001A3EA4;
    v95 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = sub_1001A3E94;
    v88 = sub_1001A3EA4;
    v89 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = sub_1001A3E94;
    v82 = sub_1001A3EA4;
    v83 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_1001A3E94;
    v76 = sub_1001A3EA4;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_1001A3E94;
    v70 = sub_1001A3EA4;
    v71 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = sub_1001A3E94;
    v64 = sub_1001A3EA4;
    v65 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_1001A3E94;
    v58 = sub_1001A3EA4;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_1001A3E94;
    v52 = sub_1001A3EA4;
    v53 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_1001A3E94;
    v46 = sub_1001A3EA4;
    v47 = 0;
    queryItems = [fromCopy queryItems];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001A3EAC;
    v41[3] = &unk_10036A618;
    v41[4] = buf;
    v41[5] = &v84;
    v41[6] = &v78;
    v41[7] = &v72;
    v41[8] = &v66;
    v41[9] = &v60;
    v41[10] = &v54;
    v41[11] = &v42;
    v41[12] = &v48;
    [queryItems enumerateObjectsUsingBlock:v41];

    if ([v38 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentDashboard])
    {
      if ([v61[5] length])
      {
        v132 = GKRemoteAlertDeeplinkActionKey;
        v133 = GKRemoteAlertDeeplinkActionIdentifierKey;
        v6 = v61[5];
        if (!v6)
        {
          v6 = &stru_100374F10;
        }

        v138 = GKRemoteAlertDeeplinkActionActivityIdValue;
        v139 = v6;
        v7 = v43[5];
        if (!v7)
        {
          v7 = &stru_100374F10;
        }

        v134 = GKRemoteAlertDeeplinkActionWidgetFamilyKey;
        v135 = GKRemoteAlertDeeplinkActionActivityTypeKey;
        v8 = v55[5];
        if (!v8)
        {
          v8 = &stru_100374F10;
        }

        v140 = v7;
        v141 = v8;
        v9 = v49[5];
        if (!v9)
        {
          v9 = &stru_100374F10;
        }

        v136 = GKRemoteAlertDeeplinkActionWidgetIdKey;
        v137 = GKRemoteAlertDeeplinkGameAdamIdKey;
        v10 = v85[5];
        if (!v10)
        {
          v10 = &stru_100374F10;
        }

        v142 = v9;
        v143 = v10;
      }

      else
      {
        v20 = v43[5];
        if (!v20)
        {
          v20 = &stru_100374F10;
        }

        v144 = GKRemoteAlertDeeplinkActionWidgetFamilyKey;
        v145 = GKRemoteAlertDeeplinkActionWidgetIdKey;
        v21 = v49[5];
        if (!v21)
        {
          v21 = &stru_100374F10;
        }

        v146 = v20;
        v147 = v21;
      }

      goto LABEL_36;
    }

    if ([v38 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentPlayer])
    {
      if ([v73[5] length])
      {
        v128 = GKRemoteAlertDeeplinkActionKey;
        v129 = GKRemoteAlertDeeplinkPlayerIdentifierKey;
        v14 = v73[5];
        v130 = GKRemoteAlertDeeplinkActionPlayerProfileValue;
        v131 = v14;
LABEL_36:
        v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
LABEL_72:
        v4 = v38;
LABEL_73:
        _Block_object_dispose(&v42, 8);

        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v54, 8);

        _Block_object_dispose(&v60, 8);
        _Block_object_dispose(&v66, 8);

        _Block_object_dispose(&v72, 8);
        _Block_object_dispose(&v78, 8);

        _Block_object_dispose(&v84, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_74;
      }

      if (!os_log_GKGeneral)
      {
        v28 = GKOSLoggers();
      }

      v29 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *v40 = 0;
        v30 = "GKWidgetEventListener: Received malformed player data";
LABEL_70:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v30, v40, 2u);
      }
    }

    else
    {
      if ([v38 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentLeaderboard])
      {
        [*(v91 + 5) firstObject];
        v15 = v4 = v38;
        if ([v15 length] && objc_msgSend(v67[5], "length") && objc_msgSend(v73[5], "length") && objc_msgSend(v79[5], "length"))
        {
          v116 = GKRemoteAlertDeeplinkActionKey;
          v117 = GKRemoteAlertDeeplinkActionIdentifierKey;
          v16 = v79[5];
          v118 = GKRemoteAlertDeeplinkGameBundleIdentifierKey;
          v119 = GKRemoteAlertDeeplinkPlayerIdentifierKey;
          v17 = v73[5];
          v124 = v16;
          v125 = v17;
          v18 = v67[5];
          v120 = GKRemoteAlertDeeplinkActionNameKey;
          v121 = GKRemoteAlertDeeplinkGameAdamIdKey;
          v19 = v85[5];
          if (!v19)
          {
            v19 = &stru_100374F10;
          }

          v122 = GKRemoteAlertDeeplinkActionLeaderboardValue;
          v123 = v15;
          v126 = v18;
          v127 = v19;
          v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v26 = GKOSLoggers();
          }

          v27 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Received malformed leaderboard data", v40, 2u);
          }

          v13 = 0;
        }

        goto LABEL_73;
      }

      if ([v38 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentAchievement])
      {
        if ([v79[5] length] && objc_msgSend(v73[5], "length") && objc_msgSend(v67[5], "length"))
        {
          v110 = GKRemoteAlertDeeplinkActionAchievementsValue;
          v104 = GKRemoteAlertDeeplinkActionKey;
          v105 = GKRemoteAlertDeeplinkAchievementsIdsKey;
          v22 = [*(v91 + 5) componentsJoinedByString:{@", "}];
          v23 = v79[5];
          v111 = v22;
          v112 = v23;
          v106 = GKRemoteAlertDeeplinkGameBundleIdentifierKey;
          v107 = GKRemoteAlertDeeplinkPlayerIdentifierKey;
          v24 = v67[5];
          v113 = v73[5];
          v114 = v24;
          v108 = GKRemoteAlertDeeplinkActionNameKey;
          v109 = GKRemoteAlertDeeplinkGameAdamIdKey;
          v25 = v85[5];
          if (!v25)
          {
            v25 = &stru_100374F10;
          }

          v115 = v25;
          v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);

          v4 = v38;
          goto LABEL_73;
        }

        if (!os_log_GKGeneral)
        {
          v35 = GKOSLoggers();
        }

        v29 = os_log_GKDaemon;
        if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          goto LABEL_71;
        }

        *v40 = 0;
        v30 = "GKWidgetEventListener: Received malformed achievement data";
        goto LABEL_70;
      }

      if ([v38 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentGame])
      {
        if ([v79[5] length] && objc_msgSend(v85[5], "length"))
        {
          v31 = v79[5];
          v96 = GKRemoteAlertDeeplinkGameBundleIdentifierKey;
          v97 = GKRemoteAlertDeeplinkGameAdamIdKey;
          v32 = v85[5];
          v100 = v31;
          v101 = v32;
          v33 = v43[5];
          if (!v33)
          {
            v33 = &stru_100374F10;
          }

          v98 = GKRemoteAlertDeeplinkActionWidgetFamilyKey;
          v99 = GKRemoteAlertDeeplinkActionWidgetIdKey;
          v34 = v49[5];
          if (!v34)
          {
            v34 = &stru_100374F10;
          }

          v102 = v33;
          v103 = v34;
          goto LABEL_36;
        }

        if (!os_log_GKGeneral)
        {
          v36 = GKOSLoggers();
        }

        v29 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *v40 = 0;
          v30 = "GKWidgetEventListener: Received malformed achievement data";
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v13 = 0;
    goto LABEL_72;
  }

  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Missing host from recived url", buf, 2u);
  }

  v13 = 0;
LABEL_74:

  return v13;
}

- (void)eventServiceListener:(id)listener didReceiveOpenEventWithURL:(id)l
{
  listenerCopy = listener;
  lCopy = l;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    absoluteString = [lCopy absoluteString];
    *buf = 138412290;
    v143 = absoluteString;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Received url %@", buf, 0xCu);
  }

  v12 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  if (v12)
  {
    if (_os_feature_enabled_impl())
    {
      scheme = [v12 scheme];
      v14 = [scheme isEqualToString:@"game-overlay-ui"];

      if (v14)
      {
        if (!os_log_GKGeneral)
        {
          v15 = GKOSLoggers();
        }

        v16 = os_log_GKDaemon;
        if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    scheme2 = [v12 scheme];
    v18 = [scheme2 isEqualToString:@"GCActivityFeedLockup"];

    if (v18)
    {
      v19 = +[GKClientProxy gameCenterClient];
      v20 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v19 credential:0];

      host = [v12 host];
      if ([(__CFString *)host isEqualToString:GKMarkdownURLFormulationPathComponentASCLaunchTrampoline])
      {
        v22 = objc_opt_new();
        queryItems = [v12 queryItems];
        v118[0] = _NSConcreteStackBlock;
        v118[1] = 3221225472;
        v118[2] = sub_1001A4FAC;
        v118[3] = &unk_10036A640;
        v24 = v22;
        v119 = v24;
        [queryItems enumerateObjectsUsingBlock:v118];

        v103 = [(__CFString *)v24 objectForKeyedSubscript:GKActivityFeedMarkdownURLFormulationQueryAdamId];
        v101 = [(__CFString *)v24 objectForKeyedSubscript:GKActivityFeedMarkdownURLFormulationQueryBundleId];
        v25 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryWidgetId];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &stru_100374F10;
        }

        v98 = v27;

        v28 = GKMarkdownURLFormulationQueryWidgetSize;
        v29 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryWidgetSize];

        if (v29)
        {
          v30 = [(__CFString *)v24 objectForKeyedSubscript:v28];
        }

        else
        {
          v30 = &off_100382CA0;
        }

        v56 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryLocalizedName];
        v57 = v56;
        if (v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = &stru_100374F10;
        }

        v96 = v58;

        v106 = v20;
        if (v103)
        {
          v100 = listenerCopy;
          v59 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryOpenInGamesUI];
          v60 = v59;
          v61 = @"false";
          if (v59)
          {
            v61 = v59;
          }

          v62 = v61;

          v63 = [(__CFString *)v62 isEqual:@"true"];
          intValue = [v30 intValue];
          v65 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryTopic];
          v66 = v65;
          if (v65)
          {
            v67 = v65;
          }

          else
          {
            v67 = &stru_100374F10;
          }

          if (v63)
          {
            v68 = v103;
            v69 = v98;
            v70 = intValue;
            v71 = v96;
            [ASCAppLaunchTrampolineURL gamesURLWithAdamId:v103 bundleId:v101 widgetId:v98 widgetSize:v70 deepLinkUrl:0 localizedName:v96 sourceApplication:@"com.apple.gamecenter.widgets.extension" topic:v67];
          }

          else
          {
            v68 = v103;
            v69 = v98;
            v74 = intValue;
            v71 = v96;
            [ASCAppLaunchTrampolineURL URLWithAdamId:v103 bundleId:v101 widgetId:v98 widgetSize:v74 localizedName:v96 sourceApplication:@"com.apple.gamecenter.widgets.extension" topic:v67];
          }
          v75 = ;

          v112[0] = _NSConcreteStackBlock;
          v112[1] = 3221225472;
          v112[2] = sub_1001A5048;
          v112[3] = &unk_10036A668;
          v113 = v69;
          v114 = v30;
          v115 = v71;
          v116 = v68;
          v117 = v106;
          [v117 invokeASCAppLaunchTrampolineWithURL:v75 handler:v112];

          listenerCopy = v100;
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v72 = GKOSLoggers();
          }

          v73 = os_log_GKDaemon;
          v68 = 0;
          v71 = v96;
          v69 = v98;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v143 = v98;
            v144 = 2112;
            v145 = v30;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Unexpected nil value returned in adamId for widgetId: %@, size: %@", buf, 0x16u);
          }
        }

        v20 = v106;
      }

      else if ([(GKWidgetEventListener *)self isActionDefined:host])
      {
        v105 = v20;
        v99 = listenerCopy;
        v39 = [(GKWidgetEventListener *)self makeDeepLinkDictionaryFrom:v12];
        v40 = v39;
        v41 = &__NSDictionary0__struct;
        if (v39)
        {
          v41 = v39;
        }

        v24 = v41;

        v42 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkActionWidgetIdKey];
        v43 = v42;
        v44 = &stru_100374F10;
        if (v42)
        {
          v44 = v42;
        }

        v104 = v44;

        v45 = GKRemoteAlertDeeplinkActionWidgetFamilyKey;
        v46 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkActionWidgetFamilyKey];
        if (v46)
        {
          v47 = v46;
          v48 = [(__CFString *)v24 objectForKeyedSubscript:v45];
          v49 = [&off_100383320 objectForKeyedSubscript:v48];

          if (v49)
          {
            v50 = [(__CFString *)v24 objectForKeyedSubscript:v45];
            v102 = [&off_100383320 objectForKeyedSubscript:v50];
          }

          else
          {
            v102 = &off_100382CA0;
          }

          v20 = v105;
        }

        else
        {
          v102 = &off_100382CA0;
          v20 = v105;
        }

        if ([(__CFString *)host isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentGame])
        {
          v76 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkGameAdamIdKey];
          v77 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkGameBundleIdentifierKey];
          if (v76)
          {
            intValue2 = [v102 intValue];
            [ASCAppLaunchTrampolineURL URLWithAdamId:v76 bundleId:v77 widgetId:v104 widgetSize:intValue2 localizedName:&stru_100374F10 sourceApplication:@"com.apple.gamecenter.widgets.extension" topic:GKReporterCSTopic];
            v80 = v79 = v77;
            v107[0] = _NSConcreteStackBlock;
            v107[1] = 3221225472;
            v107[2] = sub_1001A5390;
            v107[3] = &unk_10036A690;
            v108 = v104;
            v109 = v102;
            v110 = v76;
            v111 = v20;
            [v111 invokeASCAppLaunchTrampolineWithURL:v80 handler:v107];

            listenerCopy = v99;
          }

          else
          {
            if (!os_log_GKGeneral)
            {
              v94 = GKOSLoggers();
            }

            v95 = os_log_GKDaemon;
            listenerCopy = v99;
            v79 = v77;
            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v143 = v104;
              v144 = 2112;
              v145 = v102;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Unexpected nil value returned in adamId for widgetId: %@, size: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v81 = GKOSLoggers();
          }

          v82 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v143 = v24;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Opening remote dashboard with deepLink %@", buf, 0xCu);
          }

          v83 = +[GKPlayerActivityItemInternal typeToConstantMapMetrics];
          v84 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkActionActivityTypeKey];
          integerValue = [v84 integerValue];

          v86 = [NSNumber numberWithInteger:integerValue];
          v87 = [v83 objectForKeyedSubscript:v86];
          v88 = v87;
          v89 = @"dashboard";
          if (v87)
          {
            v89 = v87;
          }

          v90 = v89;

          v97 = [NSMutableDictionary alloc];
          v124 = @"eventType";
          v125 = @"actionType";
          v133 = @"click";
          v134 = @"navigate";
          v135 = v104;
          v126 = @"pageType";
          v127 = @"widgetContext";
          v120 = @"widgetId";
          v121 = @"size";
          v122 = v104;
          v123 = v102;
          v136 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
          v137 = v104;
          v128 = @"widgetId";
          v129 = @"size";
          v138 = v102;
          v139 = @"dashboard";
          v130 = @"targetId";
          v131 = @"targetType";
          v132 = @"location";
          v140 = v90;
          v141 = &off_1003834C0;
          v91 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);

          v92 = [v97 initWithDictionary:v91];
          v93 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkGameAdamIdKey];
          if (v93)
          {
            [v92 setObject:v93 forKeyedSubscript:@"subjectId"];
          }

          v20 = v105;
          [v105 reportMetricsEventWithTopic:GKReporterCSTopic shouldFlush:&__kCFBooleanFalse metricsFields:v92];

          v76 = +[GKGameInternal createGamedGameInternal];
          [v105 openDashboardAsRemoteAlertForGame:v76 hostPID:getpid() deeplink:v24 launchContext:GKDashboardLaunchContextWidget];
          listenerCopy = v99;
        }
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v54 = GKOSLoggers();
        }

        v55 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v143 = host;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "GKWidgetEventListener: No action defined for %@", buf, 0xCu);
        }

        v24 = +[GKGameInternal createGamedGameInternal];
        [v20 openDashboardAsRemoteAlertForGame:v24 hostPID:getpid() deeplink:&__NSDictionary0__struct launchContext:GKDashboardLaunchContextWidget];
      }
    }

    else
    {
      scheme3 = [v12 scheme];
      v34 = [(GKWidgetEventListener *)self isKnownScheme:scheme3];

      if (v34)
      {
        if (!os_log_GKGeneral)
        {
          v35 = GKOSLoggers();
        }

        v16 = os_log_GKDaemon;
        if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

LABEL_27:
        v36 = v16;
        scheme4 = [v12 scheme];
        *buf = 138412290;
        v143 = scheme4;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Received a known scheme %@ and will open the URL", buf, 0xCu);

LABEL_28:
        v38 = +[GKApplicationWorkspace defaultWorkspace];
        [v38 openURL:lCopy];
LABEL_29:

        goto LABEL_88;
      }

      if (!os_log_GKGeneral)
      {
        v51 = GKOSLoggers();
      }

      v52 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v38 = v52;
        scheme5 = [v12 scheme];
        *buf = 138412290;
        v143 = scheme5;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Received an unknown scheme %@", buf, 0xCu);

        goto LABEL_29;
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v31 = GKOSLoggers();
    }

    v32 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Unable to parse url", buf, 2u);
    }
  }

LABEL_88:
}

@end