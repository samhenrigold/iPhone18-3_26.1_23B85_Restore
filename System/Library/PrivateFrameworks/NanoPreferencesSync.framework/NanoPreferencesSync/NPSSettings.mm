@interface NPSSettings
+ (BOOL)domainShouldSyncFirst:(id)first key:(id)key;
+ (id)bbAppsSettings;
+ (id)preprocessItemSyncGroups:(id)groups forDomain:(id)domain key:(id)key;
- (id)_settingBundlesInDirectories:(id)directories;
- (void)loadSettingsBundles;
@end

@implementation NPSSettings

- (void)loadSettingsBundles
{
  v3 = objc_opt_new();
  syncedUserDefaults = self->_syncedUserDefaults;
  self->_syncedUserDefaults = v3;

  v5 = objc_opt_new();
  permittedUserDefaults = self->_permittedUserDefaults;
  self->_permittedUserDefaults = v5;

  v7 = [@"/" stringByAppendingPathComponent:@"System/Library/PreferencesSyncBundles"];
  v221[0] = v7;
  v221[1] = @"/System/Cryptexes/App/System/Library/PreferencesSyncBundles";
  v8 = &MKBDeviceUnlockedSinceBoot_ptr;
  v9 = [NSArray arrayWithObjects:v221 count:2];

  v10 = [(NPSSettings *)self _settingBundlesInDirectories:v9];
  if ([v10 count])
  {
    v114 = v10;
    selfCopy = self;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v200 objects:v220 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v201;
      v14 = &MKBDeviceUnlockedSinceBoot_ptr;
      v118 = *v201;
      do
      {
        v15 = 0;
        v119 = v12;
        do
        {
          if (*v201 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v200 + 1) + 8 * v15);
          v17 = [objc_alloc(v14[198]) initWithPath:v16];
          v18 = v17;
          if (v17)
          {
            v19 = [(__CFString *)v17 objectForInfoDictionaryKey:@"NPSDomains"];
            v20 = v8;
            if (!v19 || (v21 = objc_opt_class(), sub_100002640(v18, @"NPSDomains", 0, v19, v21)))
            {
              v121 = v19;
              v122 = v15;
              v199 = 0u;
              v197 = 0u;
              v198 = 0u;
              v196 = 0u;
              v22 = v19;
              v143 = [v22 countByEnumeratingWithState:&v196 objects:v219 count:16];
              if (!v143)
              {
                goto LABEL_126;
              }

              v142 = *v197;
              v139 = v22;
              while (1)
              {
                v23 = 0;
                do
                {
                  if (*v197 != v142)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v24 = *(*(&v196 + 1) + 8 * v23);
                  v25 = objc_opt_class();
                  if (sub_100002640(v18, @"NPSDomains", 1, v24, v25))
                  {
                    v26 = [v24 objectForKey:@"NPSDefaultsDomain"];
                    v27 = objc_opt_class();
                    v141 = v26;
                    if (!sub_100002640(v18, @"NPSDefaultsDomain", 0, v26, v27))
                    {
                      goto LABEL_101;
                    }

                    v28 = [v24 objectForKey:@"NPSDefaultsKeys"];
                    if (v28)
                    {
                      v29 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSDefaultsKeys", 0, v28, v29))
                      {
                        goto LABEL_100;
                      }
                    }

                    v30 = [v24 objectForKey:{@"NPSDefaultsKeyPrefixes", v114}];
                    if (v30)
                    {
                      v31 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSDefaultsKeyPrefixes", 0, v30, v31))
                      {
                        goto LABEL_99;
                      }
                    }

                    v140 = v30;
                    if (![v28 count] && !objc_msgSend(v30, "count"))
                    {
                      v41 = nps_daemon_log;
                      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412802;
                        v211 = @"NPSDefaultsKeys";
                        v212 = 2112;
                        v213 = @"NPSDefaultsKeyPrefixes";
                        v214 = 2112;
                        v215 = v18;
                        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Missing %@ or %@ entry for bundle: %@.", buf, 0x20u);
                      }

                      goto LABEL_99;
                    }

                    v32 = [v24 objectForKey:@"NPSAction"];
                    v33 = objc_opt_class();
                    if (!sub_100002640(v18, @"NPSAction", 0, v32, v33))
                    {
                      goto LABEL_98;
                    }

                    v34 = [v24 objectForKey:@"NPSContainer"];
                    if (v34)
                    {
                      v35 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSContainer", 0, v34, v35))
                      {
                        goto LABEL_97;
                      }
                    }

                    v36 = [v24 objectForKey:@"NPSAppGroupContainer"];
                    if (v36)
                    {
                      v37 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSAppGroupContainer", 0, v36, v37))
                      {
                        goto LABEL_96;
                      }
                    }

                    v135 = v36;
                    v136 = v34;
                    v137 = v32;
                    v38 = [v24 objectForKey:@"NPSChangeNotificationName"];
                    v39 = +[NSMutableSet set];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v40 = [NSArray arrayWithObject:v38];
                    }

                    else
                    {
                      v40 = v38;
                    }

                    v42 = v40;
                    v138 = v40;
                    v134 = v38;
                    if (!v40)
                    {
                      goto LABEL_45;
                    }

                    v43 = objc_opt_class();
                    if (!sub_100002640(v18, @"NPSChangeNotificationName", 0, v42, v43))
                    {
                      goto LABEL_95;
                    }

                    v129 = v28;
                    v194 = 0u;
                    v195 = 0u;
                    v192 = 0u;
                    v193 = 0u;
                    v44 = v42;
                    v45 = [v44 countByEnumeratingWithState:&v192 objects:v218 count:16];
                    if (v45)
                    {
                      v46 = v45;
                      v47 = *v193;
                      do
                      {
                        for (i = 0; i != v46; i = i + 1)
                        {
                          if (*v193 != v47)
                          {
                            objc_enumerationMutation(v44);
                          }

                          v49 = *(*(&v192 + 1) + 8 * i);
                          v50 = objc_opt_class();
                          if (sub_100002640(v18, @"NPSChangeNotificationName", 1, v49, v50))
                          {
                            [v39 addObject:v49];
                          }
                        }

                        v46 = [v44 countByEnumeratingWithState:&v192 objects:v218 count:16];
                      }

                      while (v46);
                    }

                    v28 = v129;
LABEL_45:
                    v51 = [v24 objectForKey:@"NPSCloudEnabled"];
                    if (v51)
                    {
                      v52 = objc_opt_class();
                      v42 = v138;
                      if (sub_100002640(v18, @"NPSCloudEnabled", 0, v51, v52))
                      {
                        v132 = v51;
                        bOOLValue = [v51 BOOLValue];
                        goto LABEL_49;
                      }

LABEL_94:

                      v38 = v134;
LABEL_95:

                      v34 = v136;
                      v32 = v137;
                      v36 = v135;
LABEL_96:

                      v20 = 0x10003C000;
LABEL_97:

LABEL_98:
                      v30 = v140;
LABEL_99:

                      v22 = v139;
LABEL_100:

LABEL_101:
                      goto LABEL_102;
                    }

                    v132 = 0;
                    bOOLValue = 0;
LABEL_49:
                    v53 = [v24 objectForKey:@"NPSSyncGroups"];
                    v131 = v53;
                    if (v53)
                    {
                      v133 = [NSSet setWithArray:v53];
                    }

                    else
                    {
                      v133 = 0;
                    }

                    v54 = [v24 objectForKey:@"NPSPerGizmo"];
                    if (!v54)
                    {
                      v128 = 0;
                      bOOLValue2 = 0;
                      v42 = v138;
                      goto LABEL_56;
                    }

                    v55 = objc_opt_class();
                    v42 = v138;
                    if (!sub_100002640(v18, @"NPSPerGizmo", 0, v54, v55))
                    {
                      goto LABEL_93;
                    }

                    v128 = v54;
                    bOOLValue2 = [v54 BOOLValue];
LABEL_56:
                    v56 = [v24 objectForKey:@"NPSMirrorableBBDomain"];
                    if (v56)
                    {
                      v57 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSMirrorableBBDomain", 0, v56, v57))
                      {
                        goto LABEL_92;
                      }
                    }

                    v127 = v56;
                    v58 = [v24 objectForKey:@"NPSMirrorableDomain"];
                    if (v58)
                    {
                      v59 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSMirrorableDomain", 0, v58, v59))
                      {
                        goto LABEL_91;
                      }
                    }

                    v124 = v58;
                    v60 = [v24 objectForKey:@"NPSMirrorableKey"];
                    if (v60)
                    {
                      v61 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSMirrorableKey", 0, v60, v61))
                      {
                        goto LABEL_90;
                      }
                    }

                    if (v127 && v124 | v60)
                    {
                      v62 = nps_daemon_log;
                      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138413058;
                        v211 = @"NPSMirrorableBBDomain";
                        v212 = 2112;
                        v213 = @"NPSMirrorableDomain";
                        v214 = 2112;
                        v215 = @"NPSMirrorableKey";
                        v216 = 2112;
                        v217 = v18;
                        v63 = v62;
                        v64 = "Key %@ mutually exclusive with keys %@ and %@ in bundle %@";
                        v65 = 42;
                        goto LABEL_69;
                      }

LABEL_90:

                      v42 = v138;
                      v58 = v124;
LABEL_91:

                      v56 = v127;
LABEL_92:

                      v54 = v128;
LABEL_93:

                      v51 = v132;
                      goto LABEL_94;
                    }

                    if ((v124 != 0) != (v60 != 0))
                    {
                      v66 = nps_daemon_log;
                      if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_90;
                      }

                      *buf = 138412802;
                      v211 = @"NPSMirrorableDomain";
                      v212 = 2112;
                      v213 = @"NPSMirrorableKey";
                      v214 = 2112;
                      v215 = v18;
                      v63 = v66;
                      v64 = "Keys %@ and %@ must go together in bundle %@";
                      v65 = 32;
                      goto LABEL_69;
                    }

                    v130 = v28;
                    v117 = v60;
                    if (([(__CFString *)v137 isEqualToString:@"OneWaySync"]& 1) != 0 || [(__CFString *)v137 isEqualToString:@"TwoWaySync"])
                    {
                      v67 = [(__CFString *)v137 isEqualToString:@"TwoWaySync"];
                      v68 = [(NSMutableDictionary *)selfCopy->_syncedUserDefaults objectForKey:v141];
                      v69 = v127;
                      if (!v68)
                      {
                        v68 = objc_opt_new();
                        [v68 setDomain:v141];
                        v70 = v60;
                        v71 = objc_opt_new();
                        [v68 setKeyArrays:v71];

                        v72 = objc_opt_new();
                        [v68 setKeyPrefixArrays:v72];

                        v60 = v70;
                        v69 = v127;
                        [(NSMutableDictionary *)selfCopy->_syncedUserDefaults setObject:v68 forKey:v141];
                      }

                      v177[0] = _NSConcreteStackBlock;
                      v177[1] = 3221225472;
                      v177[2] = sub_1000027CC;
                      v177[3] = &unk_10003D360;
                      v178 = v18;
                      v116 = v68;
                      v179 = v116;
                      v189 = v67;
                      v180 = v136;
                      v181 = v135;
                      v190 = bOOLValue;
                      v182 = v133;
                      v183 = v141;
                      v191 = bOOLValue2;
                      v184 = v69;
                      v185 = v124;
                      v186 = v60;
                      v187 = selfCopy;
                      v188 = v39;
                      v73 = objc_retainBlock(v177);
                      v173 = 0u;
                      v174 = 0u;
                      v175 = 0u;
                      v176 = 0u;
                      v74 = v28;
                      v75 = [v74 countByEnumeratingWithState:&v173 objects:v209 count:16];
                      if (v75)
                      {
                        v76 = v75;
                        v77 = *v174;
                        do
                        {
                          for (j = 0; j != v76; j = j + 1)
                          {
                            if (*v174 != v77)
                            {
                              objc_enumerationMutation(v74);
                            }

                            (v73[2])(v73, *(*(&v173 + 1) + 8 * j), 0, @"NPSDefaultsKeys");
                          }

                          v76 = [v74 countByEnumeratingWithState:&v173 objects:v209 count:16];
                        }

                        while (v76);
                      }

                      v171 = 0u;
                      v172 = 0u;
                      v169 = 0u;
                      v170 = 0u;
                      v79 = v140;
                      v80 = [v79 countByEnumeratingWithState:&v169 objects:v208 count:16];
                      if (v80)
                      {
                        v81 = v80;
                        v82 = *v170;
                        do
                        {
                          for (k = 0; k != v81; k = k + 1)
                          {
                            if (*v170 != v82)
                            {
                              objc_enumerationMutation(v79);
                            }

                            (v73[2])(v73, *(*(&v169 + 1) + 8 * k), 1, @"NPSDefaultsKeyPrefixes");
                          }

                          v81 = [v79 countByEnumeratingWithState:&v169 objects:v208 count:16];
                        }

                        while (v81);
                      }

                      v84 = v116;
                    }

                    else
                    {
                      if (([(__CFString *)v137 isEqualToString:@"Whitelist"]& 1) == 0 && ![(__CFString *)v137 isEqualToString:@"Permitlist"])
                      {
                        v99 = nps_daemon_log;
                        if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_90;
                        }

                        *buf = 138412546;
                        v211 = v137;
                        v212 = 2112;
                        v213 = v18;
                        v63 = v99;
                        v64 = "Action %@ not supported in bundle (%@).";
                        v65 = 22;
LABEL_69:
                        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, v64, buf, v65);
                        goto LABEL_90;
                      }

                      v85 = [(NSMutableDictionary *)selfCopy->_permittedUserDefaults objectForKey:v141];
                      if (!v85)
                      {
                        v85 = objc_opt_new();
                        [v85 setDomain:v141];
                        v86 = objc_opt_new();
                        [v85 setKeys:v86];

                        v87 = objc_opt_new();
                        [v85 setKeyPrefixes:v87];

                        [(NSMutableDictionary *)selfCopy->_permittedUserDefaults setObject:v85 forKey:v141];
                      }

                      v160[0] = _NSConcreteStackBlock;
                      v160[1] = 3221225472;
                      v160[2] = sub_100002CEC;
                      v160[3] = &unk_10003D388;
                      v161 = v18;
                      v126 = v85;
                      v162 = v126;
                      v163 = v136;
                      v164 = v141;
                      v168 = bOOLValue2;
                      v165 = v135;
                      v166 = v133;
                      v167 = v39;
                      v88 = objc_retainBlock(v160);
                      v156 = 0u;
                      v157 = 0u;
                      v158 = 0u;
                      v159 = 0u;
                      v89 = v28;
                      v90 = [v89 countByEnumeratingWithState:&v156 objects:v207 count:16];
                      if (v90)
                      {
                        v91 = v90;
                        v92 = *v157;
                        do
                        {
                          for (m = 0; m != v91; m = m + 1)
                          {
                            if (*v157 != v92)
                            {
                              objc_enumerationMutation(v89);
                            }

                            (v88[2])(v88, *(*(&v156 + 1) + 8 * m), 0, @"NPSDefaultsKeys");
                          }

                          v91 = [v89 countByEnumeratingWithState:&v156 objects:v207 count:16];
                        }

                        while (v91);
                      }

                      v154 = 0u;
                      v155 = 0u;
                      v152 = 0u;
                      v153 = 0u;
                      v94 = v140;
                      v95 = [v94 countByEnumeratingWithState:&v152 objects:v206 count:16];
                      if (v95)
                      {
                        v96 = v95;
                        v97 = *v153;
                        do
                        {
                          for (n = 0; n != v96; n = n + 1)
                          {
                            if (*v153 != v97)
                            {
                              objc_enumerationMutation(v94);
                            }

                            (v88[2])(v88, *(*(&v152 + 1) + 8 * n), 1, @"NPSDefaultsKeyPrefixes");
                          }

                          v96 = [v94 countByEnumeratingWithState:&v152 objects:v206 count:16];
                        }

                        while (v96);
                      }

                      v84 = v126;
                    }

                    v28 = v130;
                    v60 = v117;
                    goto LABEL_90;
                  }

LABEL_102:
                  v23 = v23 + 1;
                }

                while (v23 != v143);
                v100 = [v22 countByEnumeratingWithState:&v196 objects:v219 count:16];
                v143 = v100;
                if (!v100)
                {
LABEL_126:

                  v13 = v118;
                  v12 = v119;
                  v14 = &MKBDeviceUnlockedSinceBoot_ptr;
                  v19 = v121;
                  v15 = v122;
                  break;
                }
              }
            }

            v8 = v20;
          }

          else
          {
            v101 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v211 = v16;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Unable to read bundle: %@", buf, 0xCu);
            }
          }

          v15 = v15 + 1;
        }

        while (v15 != v12);
        v12 = [obj countByEnumeratingWithState:&v200 objects:v220 count:16];
      }

      while (v12);
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v102 = selfCopy->_syncedUserDefaults;
    v103 = [(NSMutableDictionary *)v102 countByEnumeratingWithState:&v148 objects:v205 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v149;
      do
      {
        for (ii = 0; ii != v104; ii = ii + 1)
        {
          if (*v149 != v105)
          {
            objc_enumerationMutation(v102);
          }

          v114 = [(NSMutableDictionary *)selfCopy->_syncedUserDefaults objectForKeyedSubscript:*(*(&v148 + 1) + 8 * ii), v114];
          [v114 log];
        }

        v104 = [(NSMutableDictionary *)v102 countByEnumeratingWithState:&v148 objects:v205 count:16];
      }

      while (v104);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v108 = selfCopy->_permittedUserDefaults;
    v109 = [(NSMutableDictionary *)v108 countByEnumeratingWithState:&v144 objects:v204 count:16];
    if (v109)
    {
      v110 = v109;
      v111 = *v145;
      do
      {
        for (jj = 0; jj != v110; jj = jj + 1)
        {
          if (*v145 != v111)
          {
            objc_enumerationMutation(v108);
          }

          v1142 = [(NSMutableDictionary *)selfCopy->_permittedUserDefaults objectForKeyedSubscript:*(*(&v144 + 1) + 8 * jj), v114];
          [v1142 log];
        }

        v110 = [(NSMutableDictionary *)v108 countByEnumeratingWithState:&v144 objects:v204 count:16];
      }

      while (v110);
    }

    v10 = v114;
  }
}

+ (BOOL)domainShouldSyncFirst:(id)first key:(id)key
{
  v5 = qword_100045720;
  keyCopy = key;
  firstCopy = first;
  if (v5 != -1)
  {
    sub_100026E5C();
  }

  v8 = [qword_100045718 objectForKeyedSubscript:firstCopy];

  v9 = [v8 containsObject:keyCopy];
  return v9;
}

+ (id)preprocessItemSyncGroups:(id)groups forDomain:(id)domain key:(id)key
{
  keyCopy = key;
  domainCopy = domain;
  v9 = [groups mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSMutableSet set];
  }

  v12 = v11;

  v13 = [NPSSettings domainShouldSyncFirst:domainCopy key:keyCopy];
  if (v13)
  {
    [v12 addObject:@"First"];
    if (groups)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v12 removeObject:@"First"];
    if (groups)
    {
      goto LABEL_9;
    }
  }

  [v12 addObject:@"Local"];
LABEL_9:

  return v12;
}

- (id)_settingBundlesInDirectories:(id)directories
{
  directoriesCopy = directories;
  v4 = objc_alloc_init(NSMutableDictionary);
  v28 = [NSPredicate predicateWithFormat:@"self ENDSWITH '.bundle'"];
  v5 = +[NSFileManager defaultManager];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = directoriesCopy;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = *v37;
    *&v7 = 138412546;
    v25 = v7;
    v26 = *v37;
    v27 = v5;
    do
    {
      v12 = 0;
      v29 = v8;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);

        v35 = 0;
        v14 = [v5 contentsOfDirectoryAtPath:v13 error:&v35];
        v10 = v35;

        if (v10)
        {
          v15 = nps_daemon_log;
          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v42 = v13;
            v43 = 2112;
            v44 = v10;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to list contents of %@: %@", buf, 0x16u);
          }

          v9 = v14;
        }

        else
        {
          v16 = [v14 filteredArrayUsingPredicate:v28];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v9 = v16;
          v17 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v32;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(v9);
                }

                v21 = *(*(&v31 + 1) + 8 * i);
                v22 = [v13 stringByAppendingPathComponent:{v21, v25}];
                [v4 setObject:v22 forKeyedSubscript:v21];
              }

              v18 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
            }

            while (v18);
          }

          v11 = v26;
          v5 = v27;
          v8 = v29;
        }

        v12 = v12 + 1;
      }

      while (v12 != v8);
      v8 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v8);
  }

  allValues = [v4 allValues];

  return allValues;
}

+ (id)bbAppsSettings
{
  if (qword_100045730 != -1)
  {
    sub_100026E70();
  }

  v3 = qword_100045728;

  return v3;
}

@end