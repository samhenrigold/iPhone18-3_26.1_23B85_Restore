void start()
{
  v0 = objc_autoreleasePoolPush();
  MainBundle = CFBundleGetMainBundle();
  [(__CFString *)CFBundleGetIdentifier(MainBundle) fileSystemRepresentation];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"int main(int, const char * _Nonnull *)"];
    [v7 handleFailureInFunction:v8 file:@"main.m" lineNumber:38 description:@"Failed to set the user directory suffix"];
  }

  if (!confstr(65537, 0, 0))
  {
    v9 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"int main(int, const char * _Nonnull *)"];
    [v9 handleFailureInFunction:v10 file:@"main.m" lineNumber:39 description:@"User temporary directory has no length"];
  }

  v2 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    +[_TtC18UsageTrackingAgent15SyncCoordinator startSyncing];
  }

  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:USMachServiceNameUsageTracking];
  [v4 setDelegate:v2];
  [v4 resume];
  v5 = [NSXPCListener alloc];
  v6 = [v5 initWithMachServiceName:USMachServiceNameUsageTrackingPrivate];
  [v6 setDelegate:v2];
  [v6 resume];
  +[USBudgetTracker startTracking];
  +[_TtC18UsageTrackingAgent23DeviceActivityCollector startCollecting];
  +[USUncategorizedUsageReporter startReporting];
  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_100002444(id a1)
{
  qword_100091C30 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000027C4(id a1, NSPersistentStoreDescription *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006391C();
  }
}

void sub_100002ADC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = +[USRegisteredBudget fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v350[0] = @"schedule";
  v350[1] = @"budgetedCategories";
  v350[2] = @"budgetedApplications";
  v350[3] = @"exemptApplications";
  v350[4] = @"budgetedWebDomains";
  v350[5] = @"notificationTimes";
  v3 = [NSArray arrayWithObjects:v350 count:6];
  v231 = v2;
  [v2 setRelationshipKeyPathsForPrefetching:v3];

  v243 = v1;
  v239 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(v1 + 32), "count")}];
  v271 = 0u;
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v229 = (v1 + 32);
  obj = *(v1 + 32);
  v4 = [obj countByEnumeratingWithState:&v271 objects:v349 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v272;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v272 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v228 = [*(*(&v271 + 1) + 8 * i) identifier];
        v227 = @"clientIdentifier";
        v8 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)"];
        [v239 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v271 objects:v349 count:16];
    }

    while (v5);
  }

  v9 = [[NSCompoundPredicate alloc] initWithType:2 subpredicates:v239];
  [v231 setPredicate:v9];

  v270 = 0;
  v10 = [v231 execute:&v270];
  v230 = v270;
  v236 = v10;
  if (v10)
  {
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    v232 = *v229;
    v11 = v1;
    v237 = [v232 countByEnumeratingWithState:&v266 objects:v348 count:16];
    if (v237)
    {
      v235 = *v267;
      do
      {
        v12 = 0;
        do
        {
          if (*v267 != v235)
          {
            objc_enumerationMutation(v232);
          }

          v240 = v12;
          v13 = *(*(&v266 + 1) + 8 * v12);
          v14 = [v13 identifier];
          v262 = 0u;
          v263 = 0u;
          v264 = 0u;
          v265 = 0u;
          v15 = v236;
          v16 = [v15 countByEnumeratingWithState:&v262 objects:v347 count:16];
          v242 = v14;
          if (!v16)
          {
LABEL_25:

LABEL_39:
            v42 = v243[5];
            v43 = v243[6];
            v44 = v243[7];
            v45 = v243[8];
            v46 = v13;
            v47 = v42;
            objb = v43;
            v48 = v44;
            v49 = v45;
            v50 = [[USRegisteredBudget alloc] initWithContext:v49];
            v51 = [v46 identifier];
            [(USRegisteredBudget *)v50 setIdentifier:v51];

            v255 = v47;
            [(USRegisteredBudget *)v50 setClientIdentifier:v47];
            v52 = [v46 calendarIdentifier];
            [(USRegisteredBudget *)v50 setCalendarIdentifier:v52];

            v53 = [v46 schedule];
            v357[0] = _NSConcreteStackBlock;
            v357[1] = 3221225472;
            v357[2] = sub_10000E4AC;
            v357[3] = &unk_100086110;
            v54 = v49;
            v358 = v54;
            v55 = v50;
            v359 = v55;
            [v53 enumerateKeysAndObjectsUsingBlock:v357];

            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = 0u;
            v56 = [v46 categoryIdentifiers];
            v57 = [v56 countByEnumeratingWithState:&v376 objects:v384 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = *v377;
              do
              {
                for (j = 0; j != v58; j = j + 1)
                {
                  if (*v377 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v61 = *(*(&v376 + 1) + 8 * j);
                  v62 = [[USBudgetedCategory alloc] initWithContext:v54];
                  [(USBudgetedCategory *)v62 setCategoryIdentifier:v61];
                  [(USRegisteredBudget *)v55 addBudgetedCategoriesObject:v62];
                }

                v58 = [v56 countByEnumeratingWithState:&v376 objects:v384 count:16];
              }

              while (v58);
            }

            v375 = 0u;
            v374 = 0u;
            v373 = 0u;
            v372 = 0u;
            v63 = [v46 bundleIdentifiers];
            v64 = [v63 countByEnumeratingWithState:&v372 objects:v383 count:16];
            if (v64)
            {
              v65 = v64;
              v66 = *v373;
              do
              {
                for (k = 0; k != v65; k = k + 1)
                {
                  if (*v373 != v66)
                  {
                    objc_enumerationMutation(v63);
                  }

                  v68 = *(*(&v372 + 1) + 8 * k);
                  v69 = [[USBudgetedApplication alloc] initWithContext:v54];
                  [(USBudgetedApplication *)v69 setBundleIdentifier:v68];
                  [(USRegisteredBudget *)v55 addBudgetedApplicationsObject:v69];
                }

                v65 = [v63 countByEnumeratingWithState:&v372 objects:v383 count:16];
              }

              while (v65);
            }

            v371 = 0u;
            v370 = 0u;
            v369 = 0u;
            v368 = 0u;
            v70 = [v46 webDomains];
            v71 = [v70 countByEnumeratingWithState:&v368 objects:v382 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v369;
              do
              {
                for (m = 0; m != v72; m = m + 1)
                {
                  if (*v369 != v73)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v75 = *(*(&v368 + 1) + 8 * m);
                  v76 = [[USBudgetedWebDomain alloc] initWithContext:v54];
                  [(USBudgetedWebDomain *)v76 setWebDomain:v75];
                  [(USRegisteredBudget *)v55 addBudgetedWebDomainsObject:v76];
                }

                v72 = [v70 countByEnumeratingWithState:&v368 objects:v382 count:16];
              }

              while (v72);
            }

            v367 = 0u;
            v366 = 0u;
            v365 = 0u;
            v364 = 0u;
            v77 = [v46 exemptBundleIdentifiers];
            v78 = [v77 countByEnumeratingWithState:&v364 objects:v381 count:16];
            if (v78)
            {
              v79 = v78;
              v80 = *v365;
              do
              {
                for (n = 0; n != v79; n = n + 1)
                {
                  if (*v365 != v80)
                  {
                    objc_enumerationMutation(v77);
                  }

                  v82 = *(*(&v364 + 1) + 8 * n);
                  v83 = [[USExemptApplication alloc] initWithContext:v54];
                  [(USExemptApplication *)v83 setBundleIdentifier:v82];
                  [(USRegisteredBudget *)v55 addExemptApplicationsObject:v83];
                }

                v79 = [v77 countByEnumeratingWithState:&v364 objects:v381 count:16];
              }

              while (v79);
            }

            [(USRegisteredBudget *)v55 setDarwinNotificationName:objb];
            v363 = 0u;
            v362 = 0u;
            v361 = 0u;
            v360 = 0u;
            v84 = v48;
            v85 = [v84 countByEnumeratingWithState:&v360 objects:v380 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v361;
              v88 = 1;
              do
              {
                for (ii = 0; ii != v86; ii = ii + 1)
                {
                  if (*v361 != v87)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v90 = *(*(&v360 + 1) + 8 * ii);
                  v91 = [[USNotificationTime alloc] initWithContext:v54];
                  [v90 doubleValue];
                  v93 = v92;
                  [(USNotificationTime *)v91 setRemainingTime:?];
                  v88 &= v93 != 0.0;
                  [(USRegisteredBudget *)v55 addNotificationTimesObject:v91];
                }

                v86 = [v84 countByEnumeratingWithState:&v360 objects:v380 count:16];
              }

              while (v86);

              if ((v88 & 1) == 0)
              {
                goto LABEL_78;
              }
            }

            else
            {
            }

            v94 = [[USNotificationTime alloc] initWithContext:v54];
            [(USNotificationTime *)v94 setRemainingTime:0.0];
            [(USRegisteredBudget *)v55 addNotificationTimesObject:v94];

LABEL_78:
            v11 = v243;
            goto LABEL_225;
          }

          v17 = v16;
          v18 = *v263;
LABEL_16:
          v19 = 0;
          while (1)
          {
            if (*v263 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v262 + 1) + 8 * v19);
            v21 = [v20 identifier];
            if (([v21 isEqualToString:v14] & 1) == 0)
            {

              goto LABEL_23;
            }

            v22 = [v20 clientIdentifier];
            v23 = [v22 isEqualToString:v243[5]];

            v14 = v242;
            if (v23)
            {
              break;
            }

LABEL_23:
            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v262 objects:v347 count:16];
              if (v17)
              {
                goto LABEL_16;
              }

              goto LABEL_25;
            }
          }

          v24 = v20;

          if (!v24)
          {
            goto LABEL_39;
          }

          v25 = v243[5];
          v26 = v243[6];
          v27 = v243[7];
          v28 = v243[8];
          v29 = v24;
          v30 = v13;
          v234 = v25;
          v238 = v26;
          v248 = v27;
          v31 = v28;
          v32 = [v30 calendarIdentifier];
          [v29 setCalendarIdentifier:v32];

          v241 = v30;
          v249 = [v30 schedule];
          v33 = [v29 schedule];
          v343 = 0u;
          v344 = 0u;
          v345 = 0u;
          v346 = 0u;
          v34 = v33;
          v35 = [v34 countByEnumeratingWithState:&v343 objects:v384 count:16];
          if (v35)
          {
            v36 = v35;
            obja = 0;
            v37 = *v344;
            do
            {
              for (jj = 0; jj != v36; jj = jj + 1)
              {
                if (*v344 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v343 + 1) + 8 * jj);
                v40 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v39 weekday]);
                v41 = [v249 objectForKeyedSubscript:v40];

                if (!v41)
                {
                  if (obja)
                  {
                    [obja addObject:v39];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v39];
                  }
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v343 objects:v384 count:16];
            }

            while (v36);
          }

          else
          {
            obja = 0;
          }

          v339[0] = _NSConcreteStackBlock;
          v339[1] = 3221225472;
          v339[2] = sub_10000E56C;
          v339[3] = &unk_100086138;
          v233 = v34;
          v340 = v233;
          v256 = v31;
          v341 = v256;
          v95 = v29;
          v342 = v95;
          [v249 enumerateKeysAndObjectsUsingBlock:v339];
          v96 = [v241 categoryIdentifiers];
          v254 = v95;
          v97 = [v95 budgetedCategories];
          v335 = 0u;
          v336 = 0u;
          v337 = 0u;
          v338 = 0u;
          v253 = v97;
          v98 = [v253 countByEnumeratingWithState:&v335 objects:v383 count:16];
          if (v98)
          {
            v99 = v98;
            v100 = *v336;
            do
            {
              for (kk = 0; kk != v99; kk = kk + 1)
              {
                if (*v336 != v100)
                {
                  objc_enumerationMutation(v253);
                }

                v102 = *(*(&v335 + 1) + 8 * kk);
                v103 = [v102 categoryIdentifier];
                v104 = [v96 containsObject:v103];

                if ((v104 & 1) == 0)
                {
                  if (obja)
                  {
                    [obja addObject:v102];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v102];
                  }
                }
              }

              v99 = [v253 countByEnumeratingWithState:&v335 objects:v383 count:16];
            }

            while (v99);
          }

          v334 = 0u;
          v333 = 0u;
          v332 = 0u;
          v331 = 0u;
          v247 = v96;
          v105 = [v247 countByEnumeratingWithState:&v331 objects:v382 count:16];
          if (v105)
          {
            v106 = v105;
            v107 = *v332;
            do
            {
              for (mm = 0; mm != v106; mm = mm + 1)
              {
                if (*v332 != v107)
                {
                  objc_enumerationMutation(v247);
                }

                v109 = *(*(&v331 + 1) + 8 * mm);
                v327 = 0u;
                v328 = 0u;
                v329 = 0u;
                v330 = 0u;
                v110 = v253;
                v111 = [(USBudgetedCategory *)v110 countByEnumeratingWithState:&v327 objects:v381 count:16];
                if (v111)
                {
                  v112 = v111;
                  v113 = *v328;
LABEL_98:
                  v114 = 0;
                  while (1)
                  {
                    if (*v328 != v113)
                    {
                      objc_enumerationMutation(v110);
                    }

                    v115 = [*(*(&v327 + 1) + 8 * v114) categoryIdentifier];
                    v116 = [v115 isEqualToString:v109];

                    if (v116)
                    {
                      break;
                    }

                    if (v112 == ++v114)
                    {
                      v112 = [(USBudgetedCategory *)v110 countByEnumeratingWithState:&v327 objects:v381 count:16];
                      if (v112)
                      {
                        goto LABEL_98;
                      }

                      goto LABEL_104;
                    }
                  }
                }

                else
                {
LABEL_104:

                  v110 = [[USBudgetedCategory alloc] initWithContext:v256];
                  [(USBudgetedCategory *)v110 setCategoryIdentifier:v109];
                  [v254 addBudgetedCategoriesObject:v110];
                }
              }

              v106 = [v247 countByEnumeratingWithState:&v331 objects:v382 count:16];
            }

            while (v106);
          }

          v117 = [v241 bundleIdentifiers];
          v118 = [v254 budgetedApplications];
          v323 = 0u;
          v324 = 0u;
          v325 = 0u;
          v326 = 0u;
          v252 = v118;
          v119 = [v252 countByEnumeratingWithState:&v323 objects:v380 count:16];
          if (v119)
          {
            v120 = v119;
            v121 = *v324;
            do
            {
              for (nn = 0; nn != v120; nn = nn + 1)
              {
                if (*v324 != v121)
                {
                  objc_enumerationMutation(v252);
                }

                v123 = *(*(&v323 + 1) + 8 * nn);
                v124 = [v123 bundleIdentifier];
                v125 = [v117 containsObject:v124];

                if ((v125 & 1) == 0)
                {
                  if (obja)
                  {
                    [obja addObject:v123];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v123];
                  }
                }
              }

              v120 = [v252 countByEnumeratingWithState:&v323 objects:v380 count:16];
            }

            while (v120);
          }

          v322 = 0u;
          v321 = 0u;
          v320 = 0u;
          v319 = 0u;
          v246 = v117;
          v126 = [v246 countByEnumeratingWithState:&v319 objects:&v376 count:16];
          if (v126)
          {
            v127 = v126;
            v128 = *v320;
            do
            {
              for (i1 = 0; i1 != v127; i1 = i1 + 1)
              {
                if (*v320 != v128)
                {
                  objc_enumerationMutation(v246);
                }

                v130 = *(*(&v319 + 1) + 8 * i1);
                v315 = 0u;
                v316 = 0u;
                v317 = 0u;
                v318 = 0u;
                v131 = v252;
                v132 = [(USBudgetedApplication *)v131 countByEnumeratingWithState:&v315 objects:&v372 count:16];
                if (v132)
                {
                  v133 = v132;
                  v134 = *v316;
LABEL_125:
                  v135 = 0;
                  while (1)
                  {
                    if (*v316 != v134)
                    {
                      objc_enumerationMutation(v131);
                    }

                    v136 = [*(*(&v315 + 1) + 8 * v135) bundleIdentifier];
                    v137 = [v136 isEqualToString:v130];

                    if (v137)
                    {
                      break;
                    }

                    if (v133 == ++v135)
                    {
                      v133 = [(USBudgetedApplication *)v131 countByEnumeratingWithState:&v315 objects:&v372 count:16];
                      if (v133)
                      {
                        goto LABEL_125;
                      }

                      goto LABEL_131;
                    }
                  }
                }

                else
                {
LABEL_131:

                  v131 = [[USBudgetedApplication alloc] initWithContext:v256];
                  [(USBudgetedApplication *)v131 setBundleIdentifier:v130];
                  [v254 addBudgetedApplicationsObject:v131];
                }
              }

              v127 = [v246 countByEnumeratingWithState:&v319 objects:&v376 count:16];
            }

            while (v127);
          }

          v138 = [v241 webDomains];
          v139 = [v254 budgetedWebDomains];
          v311 = 0u;
          v312 = 0u;
          v313 = 0u;
          v314 = 0u;
          v251 = v139;
          v140 = [v251 countByEnumeratingWithState:&v311 objects:&v368 count:16];
          if (v140)
          {
            v141 = v140;
            v142 = *v312;
            do
            {
              for (i2 = 0; i2 != v141; i2 = i2 + 1)
              {
                if (*v312 != v142)
                {
                  objc_enumerationMutation(v251);
                }

                v144 = *(*(&v311 + 1) + 8 * i2);
                v145 = [v144 webDomain];
                v146 = [v138 containsObject:v145];

                if ((v146 & 1) == 0)
                {
                  if (obja)
                  {
                    [obja addObject:v144];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v144];
                  }
                }
              }

              v141 = [v251 countByEnumeratingWithState:&v311 objects:&v368 count:16];
            }

            while (v141);
          }

          v310 = 0u;
          v309 = 0u;
          v308 = 0u;
          v307 = 0u;
          v245 = v138;
          v147 = [v245 countByEnumeratingWithState:&v307 objects:&v364 count:16];
          if (v147)
          {
            v148 = v147;
            v149 = *v308;
            do
            {
              for (i3 = 0; i3 != v148; i3 = i3 + 1)
              {
                if (*v308 != v149)
                {
                  objc_enumerationMutation(v245);
                }

                v151 = *(*(&v307 + 1) + 8 * i3);
                v303 = 0u;
                v304 = 0u;
                v305 = 0u;
                v306 = 0u;
                v152 = v251;
                v153 = [(USBudgetedWebDomain *)v152 countByEnumeratingWithState:&v303 objects:&v360 count:16];
                if (v153)
                {
                  v154 = v153;
                  v155 = *v304;
LABEL_152:
                  v156 = 0;
                  while (1)
                  {
                    if (*v304 != v155)
                    {
                      objc_enumerationMutation(v152);
                    }

                    v157 = [*(*(&v303 + 1) + 8 * v156) webDomain];
                    v158 = [v157 isEqualToString:v151];

                    if (v158)
                    {
                      break;
                    }

                    if (v154 == ++v156)
                    {
                      v154 = [(USBudgetedWebDomain *)v152 countByEnumeratingWithState:&v303 objects:&v360 count:16];
                      if (v154)
                      {
                        goto LABEL_152;
                      }

                      goto LABEL_158;
                    }
                  }
                }

                else
                {
LABEL_158:

                  v152 = [[USBudgetedWebDomain alloc] initWithContext:v256];
                  [(USBudgetedWebDomain *)v152 setWebDomain:v151];
                  [v254 addBudgetedWebDomainsObject:v152];
                }
              }

              v148 = [v245 countByEnumeratingWithState:&v307 objects:&v364 count:16];
            }

            while (v148);
          }

          v159 = [v241 exemptBundleIdentifiers];
          v160 = [v254 exemptApplications];
          v299 = 0u;
          v300 = 0u;
          v301 = 0u;
          v302 = 0u;
          v250 = v160;
          v161 = [v250 countByEnumeratingWithState:&v299 objects:v357 count:16];
          if (v161)
          {
            v162 = v161;
            v163 = *v300;
            do
            {
              for (i4 = 0; i4 != v162; i4 = i4 + 1)
              {
                if (*v300 != v163)
                {
                  objc_enumerationMutation(v250);
                }

                v165 = *(*(&v299 + 1) + 8 * i4);
                v166 = [v165 bundleIdentifier];
                v167 = [v159 containsObject:v166];

                if ((v167 & 1) == 0)
                {
                  if (obja)
                  {
                    [obja addObject:v165];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v165];
                  }
                }
              }

              v162 = [v250 countByEnumeratingWithState:&v299 objects:v357 count:16];
            }

            while (v162);
          }

          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v244 = v159;
          v168 = [v244 countByEnumeratingWithState:&v295 objects:v356 count:16];
          if (v168)
          {
            v169 = v168;
            v170 = *v296;
            do
            {
              for (i5 = 0; i5 != v169; i5 = i5 + 1)
              {
                if (*v296 != v170)
                {
                  objc_enumerationMutation(v244);
                }

                v172 = *(*(&v295 + 1) + 8 * i5);
                v291 = 0u;
                v292 = 0u;
                v293 = 0u;
                v294 = 0u;
                v173 = v250;
                v174 = [(USExemptApplication *)v173 countByEnumeratingWithState:&v291 objects:v355 count:16];
                if (v174)
                {
                  v175 = v174;
                  v176 = *v292;
LABEL_179:
                  v177 = 0;
                  while (1)
                  {
                    if (*v292 != v176)
                    {
                      objc_enumerationMutation(v173);
                    }

                    v178 = [*(*(&v291 + 1) + 8 * v177) bundleIdentifier];
                    v179 = [v178 isEqualToString:v172];

                    if (v179)
                    {
                      break;
                    }

                    if (v175 == ++v177)
                    {
                      v175 = [(USExemptApplication *)v173 countByEnumeratingWithState:&v291 objects:v355 count:16];
                      if (v175)
                      {
                        goto LABEL_179;
                      }

                      goto LABEL_185;
                    }
                  }
                }

                else
                {
LABEL_185:

                  v173 = [[USExemptApplication alloc] initWithContext:v256];
                  [(USExemptApplication *)v173 setBundleIdentifier:v172];
                  [v254 addExemptApplicationsObject:v173];
                }
              }

              v169 = [v244 countByEnumeratingWithState:&v295 objects:v356 count:16];
            }

            while (v169);
          }

          [v254 setDarwinNotificationName:v238];
          v180 = [v254 notificationTimes];
          v287 = 0u;
          v288 = 0u;
          v289 = 0u;
          v290 = 0u;
          v181 = v180;
          v182 = [v181 countByEnumeratingWithState:&v287 objects:v354 count:16];
          if (v182)
          {
            v183 = v182;
            v184 = *v288;
            do
            {
              for (i6 = 0; i6 != v183; i6 = i6 + 1)
              {
                if (*v288 != v184)
                {
                  objc_enumerationMutation(v181);
                }

                v186 = *(*(&v287 + 1) + 8 * i6);
                [v186 remainingTime];
                if (v187 == 0.0 || (+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), v188 = objc_claimAutoreleasedReturnValue(), v189 = [v248 containsObject:v188], v188, v189))
                {
                  [v186 setNotificationWasPosted:0];
                }

                else if (obja)
                {
                  [obja addObject:v186];
                }

                else
                {
                  v227 = 0;
                  obja = [[NSMutableArray alloc] initWithObjects:v186];
                }
              }

              v183 = [v181 countByEnumeratingWithState:&v287 objects:v354 count:16];
            }

            while (v183);
          }

          v285 = 0u;
          v286 = 0u;
          v283 = 0u;
          v284 = 0u;
          v190 = v248;
          v191 = [v190 countByEnumeratingWithState:&v283 objects:v353 count:16];
          v11 = v243;
          if (v191)
          {
            v192 = v191;
            v193 = *v284;
            do
            {
              for (i7 = 0; i7 != v192; i7 = i7 + 1)
              {
                if (*v284 != v193)
                {
                  objc_enumerationMutation(v190);
                }

                [*(*(&v283 + 1) + 8 * i7) doubleValue];
                v196 = v195;
                v279 = 0u;
                v280 = 0u;
                v281 = 0u;
                v282 = 0u;
                v197 = v181;
                v198 = [(USNotificationTime *)v197 countByEnumeratingWithState:&v279 objects:v352 count:16];
                if (v198)
                {
                  v199 = v198;
                  v200 = *v280;
LABEL_208:
                  v201 = 0;
                  while (1)
                  {
                    if (*v280 != v200)
                    {
                      objc_enumerationMutation(v197);
                    }

                    [*(*(&v279 + 1) + 8 * v201) remainingTime];
                    if (v202 == v196)
                    {
                      break;
                    }

                    if (v199 == ++v201)
                    {
                      v199 = [(USNotificationTime *)v197 countByEnumeratingWithState:&v279 objects:v352 count:16];
                      if (v199)
                      {
                        goto LABEL_208;
                      }

                      goto LABEL_214;
                    }
                  }
                }

                else
                {
LABEL_214:

                  v197 = [[USNotificationTime alloc] initWithContext:v256];
                  [(USNotificationTime *)v197 setRemainingTime:v196];
                  [v254 addNotificationTimesObject:v197];
                }
              }

              v192 = [v190 countByEnumeratingWithState:&v283 objects:v353 count:16];
            }

            while (v192);
          }

          v277 = 0u;
          v278 = 0u;
          v275 = 0u;
          v276 = 0u;
          v203 = obja;
          v204 = [v203 countByEnumeratingWithState:&v275 objects:v351 count:16];
          if (v204)
          {
            v205 = v204;
            v206 = *v276;
            do
            {
              for (i8 = 0; i8 != v205; i8 = i8 + 1)
              {
                if (*v276 != v206)
                {
                  objc_enumerationMutation(v203);
                }

                [v256 deleteObject:*(*(&v275 + 1) + 8 * i8)];
              }

              v205 = [v203 countByEnumeratingWithState:&v275 objects:v351 count:16];
            }

            while (v205);
          }

          [v254 setTimeRemainingBeforeUsageDeletion:0.0];
          [v254 setDeletedTime:0.0];

LABEL_225:
          v12 = v240 + 1;
        }

        while ((v240 + 1) != v237);
        v237 = [v232 countByEnumeratingWithState:&v266 objects:v348 count:16];
      }

      while (v237);
    }

    v208 = v11[8];
    v261 = v230;
    v209 = [v208 save:&v261];
    v210 = v261;

    if (v209)
    {
      (*(v11[10] + 16))();
      v211 = [v11[9] notificationPostingQueue];
      v260[0] = _NSConcreteStackBlock;
      v260[1] = 3221225472;
      v260[2] = sub_1000045E8;
      v260[3] = &unk_100085D00;
      v260[4] = v11[9];
      [v211 addOperationWithBlock:v260];
    }

    else
    {
      v219 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100063998();
      }

      v220 = v11[10];
      v226 = sub_100004648(100, @"PersistBudgetError", @"SeeSystemLog", v221, v222, v223, v224, v225, v227);
      (*(v220 + 16))(v220, v226);
    }
  }

  else
  {
    v11 = v1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063A14(v1, v229);
    }

    v217 = *(v1 + 80);
    v218 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v212, v213, v214, v215, v216, v227);
    (*(v217 + 16))(v217, v218);

    v210 = v230;
  }

  [v11[8] reset];
}

void sub_1000045E8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RegisteredBudgetsDidChange" object:*(a1 + 32)];
}

id sub_100004648(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = a2;
  v13 = +[USUsageTrackingBundle usageTrackingBundle];
  v14 = [NSString alloc];
  v15 = [v13 localizedStringForKey:v12 value:&stru_100088840 table:0];

  v16 = +[NSLocale currentLocale];
  v17 = [v14 initWithFormat:v15 locale:v16 arguments:&a9];

  if (v11)
  {
    v18 = [v13 localizedStringForKey:v11 value:&stru_100088840 table:0];
    v25[0] = NSLocalizedDescriptionKey;
    v25[1] = NSLocalizedRecoverySuggestionErrorKey;
    v26[0] = v17;
    v26[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  else
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = v17;
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  }

  v20 = [NSError alloc];
  v21 = [v20 initWithDomain:USErrorDomain code:a1 userInfo:v19];

  return v21;
}

void sub_100004D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004DD8(uint64_t a1)
{
  v288 = @"events";
  v2 = [NSArray arrayWithObjects:&v288 count:1];
  v3 = +[USDeviceActivityBudget fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  if (v2)
  {
    [v3 setRelationshipKeyPathsForPrefetching:v2];
  }

  v4 = v3;

  v185 = @"clientIdentifier";
  v5 = [NSPredicate predicateWithFormat:@"%K == %@"];
  [v4 setPredicate:v5];

  v193 = a1 + 80;
  v6 = *(*(a1 + 80) + 8);
  obj = *(v6 + 40);
  [v4 execute:&obj];
  v8 = v7 = a1;
  objc_storeStrong((v6 + 40), obj);
  v194 = v7;
  if (v8)
  {
    v222[0] = _NSConcreteStackBlock;
    v222[1] = 3221225472;
    v222[2] = sub_1000063D4;
    v222[3] = &unk_100085D50;
    v191 = (v7 + 40);
    v223 = *(v7 + 40);
    v9 = [v8 indexOfObjectPassingTest:v222];
    v190 = v4;
    v192 = v8;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v8 objectAtIndex:v9];
    }

    v19 = [v10 name];
    v20 = [v19 isEqualToString:*v191];

    if (v20)
    {
      v21 = [v10 events];
      v186 = [v21 count];

      v22 = *(v7 + 48);
      v23 = *(v7 + 56);
      v24 = *(v7 + 64);
      v25 = *(v7 + 72);
      v26 = v10;
      v27 = v24;
      v28 = v22;
      v198 = v23;
      v214 = v25;
      v189 = v27;
      [v26 setExtensionIdentifier:v27];
      v29 = [v28 intervalStart];
      [v26 setIntervalStart:v29];

      v30 = [v28 intervalEnd];
      [v26 setIntervalEnd:v30];

      [v26 setRepeats:{objc_msgSend(v28, "repeats")}];
      v188 = v28;
      v31 = [v28 warningTime];
      [v26 setWarningTime:v31];

      v283 = 0u;
      v284 = 0u;
      v281 = 0u;
      v282 = 0u;
      v187 = v26;
      v195 = [v26 events];
      v199 = [v195 countByEnumeratingWithState:&v281 objects:&buf count:16];
      if (v199)
      {
        v216 = 0;
        v196 = 0;
        v197 = *v282;
        do
        {
          v32 = 0;
          do
          {
            if (*v282 != v197)
            {
              objc_enumerationMutation(v195);
            }

            v215 = *(*(&v281 + 1) + 8 * v32);
            v33 = [v215 name];
            v202 = [v198 objectForKeyedSubscript:v33];
            if (v202)
            {
              if (v196)
              {
                [v196 addObject:v33];
              }

              else
              {
                v185 = 0;
                v196 = [[NSMutableSet alloc] initWithObjects:v33];
              }

              v34 = [v202 threshold];
              [v215 setThreshold:v34];

              [v215 setIncludesPastActivity:{objc_msgSend(v202, "includesPastActivity")}];
              if ([v202 isUntokenized])
              {
                [v215 setIsUntokenized:1];
                v210 = [v202 bundleIdentifiers];
                v208 = [v202 exemptBundleIdentifiers];
                v35 = [v202 categoryIdentifiers];
                v203 = [v202 webDomains];
              }

              else
              {
                [v215 setIsUntokenized:0];
                v36 = objc_opt_new();
                v37 = [v202 applicationTokens];
                v210 = [v36 decodeApplications:v37];

                v38 = [v202 exemptApplicationTokens];
                v208 = [v36 decodeApplications:v38];

                v39 = [v202 categoryTokens];
                v35 = [v36 decodeCategories:v39];

                v40 = [v202 webDomainTokens];
                v203 = [v36 decodeWebDomains:v40];
              }

              v200 = v33;
              v201 = v32;
              v41 = [v215 budgetedCategories];
              v277 = 0u;
              v278 = 0u;
              v279 = 0u;
              v280 = 0u;
              v213 = v41;
              v42 = [v213 countByEnumeratingWithState:&v277 objects:v301 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v278;
                do
                {
                  for (i = 0; i != v43; i = i + 1)
                  {
                    if (*v278 != v44)
                    {
                      objc_enumerationMutation(v213);
                    }

                    v46 = *(*(&v277 + 1) + 8 * i);
                    v47 = [v46 categoryIdentifier];
                    v48 = [v35 containsObject:v47];

                    if ((v48 & 1) == 0)
                    {
                      if (v216)
                      {
                        [v216 addObject:v46];
                      }

                      else
                      {
                        v185 = 0;
                        v216 = [[NSMutableArray alloc] initWithObjects:v46];
                      }
                    }
                  }

                  v43 = [v213 countByEnumeratingWithState:&v277 objects:v301 count:16];
                }

                while (v43);
              }

              v275 = 0u;
              v276 = 0u;
              v273 = 0u;
              v274 = 0u;
              v207 = v35;
              v49 = [v207 countByEnumeratingWithState:&v273 objects:v300 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v274;
                do
                {
                  for (j = 0; j != v50; j = j + 1)
                  {
                    if (*v274 != v51)
                    {
                      objc_enumerationMutation(v207);
                    }

                    v53 = *(*(&v273 + 1) + 8 * j);
                    v269 = 0u;
                    v270 = 0u;
                    v271 = 0u;
                    v272 = 0u;
                    v54 = v213;
                    v55 = [(USBudgetedCategory *)v54 countByEnumeratingWithState:&v269 objects:v299 count:16];
                    if (v55)
                    {
                      v56 = v55;
                      v57 = *v270;
LABEL_43:
                      v58 = 0;
                      while (1)
                      {
                        if (*v270 != v57)
                        {
                          objc_enumerationMutation(v54);
                        }

                        v59 = [*(*(&v269 + 1) + 8 * v58) categoryIdentifier];
                        v60 = [v59 isEqualToString:v53];

                        if (v60)
                        {
                          break;
                        }

                        if (v56 == ++v58)
                        {
                          v56 = [(USBudgetedCategory *)v54 countByEnumeratingWithState:&v269 objects:v299 count:16];
                          if (v56)
                          {
                            goto LABEL_43;
                          }

                          goto LABEL_49;
                        }
                      }
                    }

                    else
                    {
LABEL_49:

                      v54 = [[USBudgetedCategory alloc] initWithContext:v214];
                      [(USBudgetedCategory *)v54 setCategoryIdentifier:v53];
                      [v215 addBudgetedCategoriesObject:v54];
                    }
                  }

                  v50 = [v207 countByEnumeratingWithState:&v273 objects:v300 count:16];
                }

                while (v50);
              }

              v61 = [v215 budgetedApplications];
              v265 = 0u;
              v266 = 0u;
              v267 = 0u;
              v268 = 0u;
              v212 = v61;
              v62 = [v212 countByEnumeratingWithState:&v265 objects:v298 count:16];
              if (v62)
              {
                v63 = v62;
                v64 = *v266;
                v65 = v210;
                do
                {
                  for (k = 0; k != v63; k = k + 1)
                  {
                    if (*v266 != v64)
                    {
                      objc_enumerationMutation(v212);
                    }

                    v67 = *(*(&v265 + 1) + 8 * k);
                    v68 = [v67 bundleIdentifier];
                    v69 = [v210 containsObject:v68];

                    if ((v69 & 1) == 0)
                    {
                      if (v216)
                      {
                        [v216 addObject:v67];
                      }

                      else
                      {
                        v185 = 0;
                        v216 = [[NSMutableArray alloc] initWithObjects:v67];
                      }
                    }
                  }

                  v63 = [v212 countByEnumeratingWithState:&v265 objects:v298 count:16];
                }

                while (v63);
              }

              else
              {
                v65 = v210;
              }

              v263 = 0u;
              v264 = 0u;
              v261 = 0u;
              v262 = 0u;
              v206 = v65;
              v70 = [v206 countByEnumeratingWithState:&v261 objects:v297 count:16];
              if (v70)
              {
                v71 = v70;
                v72 = *v262;
                do
                {
                  for (m = 0; m != v71; m = m + 1)
                  {
                    if (*v262 != v72)
                    {
                      objc_enumerationMutation(v206);
                    }

                    v74 = *(*(&v261 + 1) + 8 * m);
                    v257 = 0u;
                    v258 = 0u;
                    v259 = 0u;
                    v260 = 0u;
                    v75 = v212;
                    v76 = [(USBudgetedApplication *)v75 countByEnumeratingWithState:&v257 objects:v296 count:16];
                    if (v76)
                    {
                      v77 = v76;
                      v78 = *v258;
LABEL_72:
                      v79 = 0;
                      while (1)
                      {
                        if (*v258 != v78)
                        {
                          objc_enumerationMutation(v75);
                        }

                        v80 = [*(*(&v257 + 1) + 8 * v79) bundleIdentifier];
                        v81 = [v80 isEqualToString:v74];

                        if (v81)
                        {
                          break;
                        }

                        if (v77 == ++v79)
                        {
                          v77 = [(USBudgetedApplication *)v75 countByEnumeratingWithState:&v257 objects:v296 count:16];
                          if (v77)
                          {
                            goto LABEL_72;
                          }

                          goto LABEL_78;
                        }
                      }
                    }

                    else
                    {
LABEL_78:

                      v75 = [[USBudgetedApplication alloc] initWithContext:v214];
                      [(USBudgetedApplication *)v75 setBundleIdentifier:v74];
                      [v215 addBudgetedApplicationsObject:v75];
                    }
                  }

                  v71 = [v206 countByEnumeratingWithState:&v261 objects:v297 count:16];
                }

                while (v71);
              }

              v82 = v215;
              v83 = [v215 exemptApplications];
              v253 = 0u;
              v254 = 0u;
              v255 = 0u;
              v256 = 0u;
              v211 = v83;
              v84 = [v211 countByEnumeratingWithState:&v253 objects:v295 count:16];
              if (v84)
              {
                v85 = v84;
                v86 = *v254;
                do
                {
                  for (n = 0; n != v85; n = n + 1)
                  {
                    if (*v254 != v86)
                    {
                      objc_enumerationMutation(v211);
                    }

                    v88 = *(*(&v253 + 1) + 8 * n);
                    v89 = [v88 bundleIdentifier];
                    v90 = [v208 containsObject:v89];

                    if ((v90 & 1) == 0)
                    {
                      if (v216)
                      {
                        [v216 addObject:v88];
                      }

                      else
                      {
                        v185 = 0;
                        v216 = [[NSMutableArray alloc] initWithObjects:v88];
                      }
                    }
                  }

                  v85 = [v211 countByEnumeratingWithState:&v253 objects:v295 count:16];
                }

                while (v85);
              }

              v251 = 0u;
              v252 = 0u;
              v249 = 0u;
              v250 = 0u;
              v205 = v208;
              v91 = [v205 countByEnumeratingWithState:&v249 objects:v294 count:16];
              if (v91)
              {
                v92 = v91;
                v93 = *v250;
                do
                {
                  for (ii = 0; ii != v92; ii = ii + 1)
                  {
                    if (*v250 != v93)
                    {
                      objc_enumerationMutation(v205);
                    }

                    v95 = *(*(&v249 + 1) + 8 * ii);
                    v245 = 0u;
                    v246 = 0u;
                    v247 = 0u;
                    v248 = 0u;
                    v96 = v211;
                    v97 = [(USExemptApplication *)v96 countByEnumeratingWithState:&v245 objects:v293 count:16];
                    if (v97)
                    {
                      v98 = v97;
                      v99 = *v246;
                      while (2)
                      {
                        for (jj = 0; jj != v98; jj = jj + 1)
                        {
                          if (*v246 != v99)
                          {
                            objc_enumerationMutation(v96);
                          }

                          v101 = [*(*(&v245 + 1) + 8 * jj) bundleIdentifier];
                          v102 = [v101 isEqualToString:v95];

                          if (v102)
                          {
                            v82 = v215;
                            goto LABEL_107;
                          }
                        }

                        v98 = [(USExemptApplication *)v96 countByEnumeratingWithState:&v245 objects:v293 count:16];
                        if (v98)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v96 = [[USExemptApplication alloc] initWithContext:v214];
                    [(USExemptApplication *)v96 setBundleIdentifier:v95];
                    v82 = v215;
                    [v215 addExemptApplicationsObject:v96];
LABEL_107:
                  }

                  v92 = [v205 countByEnumeratingWithState:&v249 objects:v294 count:16];
                }

                while (v92);
              }

              v103 = [v82 budgetedWebDomains];
              v241 = 0u;
              v242 = 0u;
              v243 = 0u;
              v244 = 0u;
              v209 = v103;
              v104 = [v209 countByEnumeratingWithState:&v241 objects:v292 count:16];
              if (v104)
              {
                v105 = v104;
                v106 = *v242;
                v107 = v203;
                do
                {
                  for (kk = 0; kk != v105; kk = kk + 1)
                  {
                    if (*v242 != v106)
                    {
                      objc_enumerationMutation(v209);
                    }

                    v109 = *(*(&v241 + 1) + 8 * kk);
                    v110 = [v109 webDomain];
                    v111 = [v203 containsObject:v110];

                    if ((v111 & 1) == 0)
                    {
                      if (v216)
                      {
                        [v216 addObject:v109];
                      }

                      else
                      {
                        v185 = 0;
                        v216 = [[NSMutableArray alloc] initWithObjects:v109];
                      }
                    }
                  }

                  v105 = [v209 countByEnumeratingWithState:&v241 objects:v292 count:16];
                }

                while (v105);
              }

              else
              {
                v107 = v203;
              }

              v239 = 0u;
              v240 = 0u;
              v237 = 0u;
              v238 = 0u;
              v204 = v107;
              v112 = [v204 countByEnumeratingWithState:&v237 objects:v291 count:16];
              if (v112)
              {
                v113 = v112;
                v114 = *v238;
                do
                {
                  for (mm = 0; mm != v113; mm = mm + 1)
                  {
                    if (*v238 != v114)
                    {
                      objc_enumerationMutation(v204);
                    }

                    v116 = *(*(&v237 + 1) + 8 * mm);
                    v233 = 0u;
                    v234 = 0u;
                    v235 = 0u;
                    v236 = 0u;
                    v117 = v209;
                    v118 = [(USBudgetedWebDomain *)v117 countByEnumeratingWithState:&v233 objects:v290 count:16];
                    if (v118)
                    {
                      v119 = v118;
                      v120 = *v234;
LABEL_129:
                      v121 = 0;
                      while (1)
                      {
                        if (*v234 != v120)
                        {
                          objc_enumerationMutation(v117);
                        }

                        v122 = [*(*(&v233 + 1) + 8 * v121) webDomain];
                        v123 = [v122 isEqualToString:v116];

                        if (v123)
                        {
                          break;
                        }

                        if (v119 == ++v121)
                        {
                          v119 = [(USBudgetedWebDomain *)v117 countByEnumeratingWithState:&v233 objects:v290 count:16];
                          if (v119)
                          {
                            goto LABEL_129;
                          }

                          goto LABEL_135;
                        }
                      }
                    }

                    else
                    {
LABEL_135:

                      v117 = [[USBudgetedWebDomain alloc] initWithContext:v214];
                      [(USBudgetedWebDomain *)v117 setWebDomain:v116];
                      [v215 addBudgetedWebDomainsObject:v117];
                    }
                  }

                  v113 = [v204 countByEnumeratingWithState:&v237 objects:v291 count:16];
                }

                while (v113);
              }

              [v215 setDidReachThreshold:0];
              [v215 setDidWarnForThreshold:0];
              [v215 setThresholdAdjustmentTime:0.0];
              [v215 setTimeRemainingBeforeUsageDeletion:0.0];
              [v215 setDeletedTime:0.0];

              v33 = v200;
              v32 = v201;
            }

            else if (v216)
            {
              [v216 addObject:v215];
            }

            else
            {
              v185 = 0;
              v216 = [[NSMutableArray alloc] initWithObjects:v215];
            }

            v32 = v32 + 1;
          }

          while (v32 != v199);
          v124 = [v195 countByEnumeratingWithState:&v281 objects:&buf count:16];
          v199 = v124;
        }

        while (v124);
      }

      else
      {
        v196 = 0;
        v216 = 0;
      }

      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v152 = v216;
      v153 = [v152 countByEnumeratingWithState:&v229 objects:v289 count:16];
      if (v153)
      {
        v154 = v153;
        v155 = *v230;
        do
        {
          for (nn = 0; nn != v154; nn = nn + 1)
          {
            if (*v230 != v155)
            {
              objc_enumerationMutation(v152);
            }

            [v214 deleteObject:*(*(&v229 + 1) + 8 * nn)];
          }

          v154 = [v152 countByEnumeratingWithState:&v229 objects:v289 count:16];
        }

        while (v154);
      }

      v225[0] = _NSConcreteStackBlock;
      v225[1] = 3221225472;
      v225[2] = sub_10000EC0C;
      v225[3] = &unk_100086188;
      v157 = v196;
      v226 = v157;
      v151 = v187;
      v227 = v151;
      v158 = v214;
      v228 = v158;
      [v198 enumerateKeysAndObjectsUsingBlock:v225];

      if (([(USDeviceActivityBudget *)v151 hasPersistentChangedValues]& 1) != 0)
      {
        goto LABEL_172;
      }

      v159 = [(USDeviceActivityBudget *)v151 events];
      v160 = [v159 count];

      if (v186 != v160)
      {
        goto LABEL_172;
      }

      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v10 = [(USDeviceActivityBudget *)v151 events];
      v161 = [v10 countByEnumeratingWithState:&v218 objects:v287 count:16];
      if (!v161)
      {
LABEL_169:

        v166 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v167 = *v191;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v167;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@ has not changed; skipping all callbacks and event processing", &buf, 0xCu);
        }

        *(*(*(v194 + 88) + 8) + 24) = 1;
        goto LABEL_174;
      }

      v162 = v161;
      v163 = *v219;
LABEL_161:
      v164 = 0;
      while (1)
      {
        if (*v219 != v163)
        {
          objc_enumerationMutation(v10);
        }

        v165 = *(*(&v218 + 1) + 8 * v164);
        if ([v165 isInserted] & 1) != 0 || (objc_msgSend(v165, "isDeleted") & 1) != 0 || (objc_msgSend(v165, "hasPersistentChangedValues"))
        {
          break;
        }

        if (v162 == ++v164)
        {
          v162 = [v10 countByEnumeratingWithState:&v218 objects:v287 count:16];
          if (v162)
          {
            goto LABEL_161;
          }

          goto LABEL_169;
        }
      }

LABEL_148:

LABEL_172:
      v168 = *(v194 + 72);
      v169 = *(*(v194 + 80) + 8);
      v217 = *(v169 + 40);
      v170 = [v168 save:&v217];
      objc_storeStrong((v169 + 40), v217);
      *(*(*(v194 + 88) + 8) + 24) = v170;
      if (*(*(*(v194 + 88) + 8) + 24) != 1)
      {
        v176 = &_os_log_default;
        v4 = v190;
        v8 = v192;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063B94();
        }

        v182 = sub_100004648(100, @"PersistBudgetError", @"SeeSystemLog", v177, v178, v179, v180, v181, v185);
        v183 = *(*v193 + 8);
        v184 = *(v183 + 40);
        *(v183 + 40) = v182;

        goto LABEL_178;
      }

      v285[0] = @"BudgetID";
      v171 = [(USDeviceActivityBudget *)v151 objectID];
      v285[1] = @"ClientIdentifier";
      v172 = *(v194 + 32);
      v286[0] = v171;
      v286[1] = v172;
      v173 = [NSDictionary dictionaryWithObjects:v286 forKeys:v285 count:2];
      v174 = *(*(v194 + 96) + 8);
      v175 = *(v174 + 40);
      *(v174 + 40) = v173;

LABEL_174:
      v4 = v190;
      v8 = v192;
LABEL_178:

      v18 = v223;
      goto LABEL_179;
    }

    if ((*(v7 + 104) & 1) != 0 || [v192 count] < 0x14)
    {
      v134 = *(v7 + 48);
      v133 = *(v7 + 56);
      v136 = *(v194 + 32);
      v135 = *(v194 + 40);
      v137 = *(v194 + 64);
      v138 = *(v194 + 72);
      v139 = v137;
      v140 = v136;
      v141 = v133;
      v142 = v134;
      v143 = v135;
      v144 = [[USDeviceActivityBudget alloc] initWithContext:v138];
      [(USDeviceActivityBudget *)v144 setName:v143];
      [(USDeviceActivityBudget *)v144 setClientIdentifier:v140];
      [(USDeviceActivityBudget *)v144 setExtensionIdentifier:v139];
      v145 = [v142 intervalStart];
      [(USDeviceActivityBudget *)v144 setIntervalStart:v145];

      v146 = [v142 intervalEnd];
      [(USDeviceActivityBudget *)v144 setIntervalEnd:v146];

      -[USDeviceActivityBudget setRepeats:](v144, "setRepeats:", [v142 repeats]);
      v147 = [v142 warningTime];
      [(USDeviceActivityBudget *)v144 setWarningTime:v147];

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v303 = sub_10000E6E8;
      v304 = &unk_100086160;
      v148 = v144;
      v305 = v148;
      v306 = v138;
      v149 = v138;
      [v141 enumerateKeysAndObjectsUsingBlock:&buf];
      v150 = v306;
      v151 = v148;

      goto LABEL_148;
    }

    *(*(*(v7 + 88) + 8) + 24) = 0;
    v130 = sub_100004648(103, @"ExcessiveActivitiesError", @"MonitorFewerActivities", v125, v126, v127, v128, v129, @"clientIdentifier");
    v131 = *(*(v7 + 80) + 8);
    v132 = *(v131 + 40);
    *(v131 + 40) = v130;

    v18 = v223;
    v4 = v190;
    v8 = v192;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063C0C();
    }

    v16 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v11, v12, v13, v14, v15, @"clientIdentifier");
    v17 = *(*v193 + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

LABEL_179:
}

id sub_1000063D4(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100006B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006B3C(void *a1)
{
  v2 = +[USDeviceActivityBudget fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v4 = a1[4];
  v3 = a1[5];
  if (v4)
  {
    [NSPredicate predicateWithFormat:@"(%K == %@) && (%K IN %@)", @"clientIdentifier", v3, @"name", v4];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"%K == %@", @"clientIdentifier", v3, v42, v43];
  }
  v5 = ;
  [v2 setPredicate:v5];

  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v2 execute:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v44 = a1 + 7;
    v46 = v7;
    v47 = v2;
    v45 = a1;
    v8 = a1[6];
    v9 = v7;
    v49 = v8;
    v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v48 = v9;
    v11 = [v48 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v53;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v53 != v13)
          {
            objc_enumerationMutation(v48);
          }

          v15 = *(*(&v52 + 1) + 8 * i);
          v16 = [USDeviceActivityBudgetMetadata alloc];
          v17 = [v15 name];
          v18 = [v15 objectID];
          v19 = [v15 clientIdentifier];
          v20 = [v15 extensionIdentifier];
          v21 = -[USDeviceActivityBudgetMetadata initWithActivity:budgetID:clientIdentifier:extensionIdentifier:intervalDidStart:](v16, "initWithActivity:budgetID:clientIdentifier:extensionIdentifier:intervalDidStart:", v17, v18, v19, v20, [v15 intervalDidStart]);

          [v10 addObject:v21];
          [v49 deleteObject:v15];
        }

        v12 = [v48 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v12);
    }

    v22 = v45[6];
    v23 = *(v45[7] + 8);
    v50 = *(v23 + 40);
    v24 = [v22 save:&v50];
    objc_storeStrong((v23 + 40), v50);
    *(*(v45[8] + 8) + 24) = v24;
    if (*(*(v45[8] + 8) + 24) == 1)
    {
      v56 = @"BudgetMetadata";
      v57 = v10;
      v25 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v26 = v45 + 9;
      v2 = v47;
    }

    else
    {
      v2 = v47;
      v26 = v44;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100063CA0();
      }

      v25 = sub_100004648(102, @"DeleteBudgetError", @"SeeSystemLog", v34, v35, v36, v37, v38, v41);
    }

    v7 = v46;
    v39 = *(*v26 + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v25;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063D18();
    }

    v32 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v27, v28, v29, v30, v31, v41);
    v33 = *(a1[7] + 8);
    v10 = *(v33 + 40);
    *(v33 + 40) = v32;
  }
}

void sub_100007010(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[USRegisteredBudget fetchRequest];
  [v4 setPredicate:*(a1 + 32)];
  [v4 setReturnsObjectsAsFaults:0];
  v33 = 0;
  v5 = [v4 execute:&v33];
  v6 = v33;
  if (v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v3 deleteObject:*(*(&v29 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    v28 = 0;
    v12 = [v3 save:&v28];
    v13 = v28;
    if (v12)
    {
      (*(*(a1 + 48) + 16))();
      v14 = [*(a1 + 40) notificationPostingQueue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000072E0;
      v27[3] = &unk_100085D00;
      v27[4] = *(a1 + 40);
      [v14 addOperationWithBlock:v27];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100063D90();
      }

      v26 = *(a1 + 48);
      v14 = sub_100004648(102, @"DeleteBudgetError", @"SeeSystemLog", v21, v22, v23, v24, v25, v27[0]);
      (*(v26 + 16))(v26, v14);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063E0C();
    }

    v20 = *(a1 + 48);
    v13 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v15, v16, v17, v18, v19, v27[0]);
    (*(v20 + 16))(v20, v13);
  }
}

void sub_1000072E0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RegisteredBudgetsDidChange" object:*(a1 + 32)];
}

void sub_100007438(void *a1)
{
  v2 = +[USRegisteredBudget fetchRequest];
  v4 = a1[4];
  v3 = a1[5];
  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v69 = @"clientIdentifier";
    v70 = a1[5];
    goto LABEL_7;
  }

  if (!v3)
  {
    v69 = @"identifier";
    v70 = a1[4];
LABEL_7:
    [NSPredicate predicateWithFormat:@"%K == %@", v69, v70, v71, v72];
    goto LABEL_8;
  }

  [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)", @"clientIdentifier", v3, @"identifier", v4];
  v5 = LABEL_8:;
  [v2 setPredicate:v5];

LABEL_9:
  [v2 setReturnsObjectsAsFaults:0];
  v122[0] = @"schedule";
  v122[1] = @"budgetedCategories";
  v122[2] = @"budgetedApplications";
  v122[3] = @"exemptApplications";
  v122[4] = @"budgetedWebDomains";
  v122[5] = @"notificationTimes";
  v6 = [NSArray arrayWithObjects:v122 count:6];
  [v2 setRelationshipKeyPathsForPrefetching:v6];

  v113 = 0;
  v7 = [v2 execute:&v113];
  v8 = v113;
  v9 = v8;
  if (v7)
  {
    v73 = v8;
    v75 = a1;
    v76 = v2;
    v10 = &swift_defaultActor_destroy_ptr;
    v79 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v74 = v7;
    obj = v7;
    v80 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
    if (v80)
    {
      v78 = *v110;
      v11 = &swift_defaultActor_destroy_ptr;
      v12 = &swift_defaultActor_destroy_ptr;
      do
      {
        v13 = 0;
        do
        {
          if (*v110 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v85 = v13;
          v86 = *(*(&v109 + 1) + 8 * v13);
          v14 = [v86 schedule];
          v88 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v87 = v14;
          v15 = [v87 countByEnumeratingWithState:&v105 objects:v120 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v106;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v106 != v17)
                {
                  objc_enumerationMutation(v87);
                }

                v19 = *(*(&v105 + 1) + 8 * i);
                v20 = [objc_alloc(v12[117]) initWithFormat:@"%lld", objc_msgSend(v19, "weekday")];
                v21 = v11[114];
                [v19 timeLimit];
                v22 = [v21 numberWithDouble:?];
                [v88 setObject:v22 forKeyedSubscript:v20];
              }

              v16 = [v87 countByEnumeratingWithState:&v105 objects:v120 count:16];
            }

            while (v16);
          }

          v23 = [v86 budgetedCategories];
          v24 = [objc_alloc(v10[186]) initWithCapacity:{objc_msgSend(v23, "count")}];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v25 = v23;
          v26 = [v25 countByEnumeratingWithState:&v101 objects:v119 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v102;
            do
            {
              for (j = 0; j != v27; j = j + 1)
              {
                if (*v102 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = [*(*(&v101 + 1) + 8 * j) categoryIdentifier];
                [v24 addObject:v30];
              }

              v27 = [v25 countByEnumeratingWithState:&v101 objects:v119 count:16];
            }

            while (v27);
          }

          v84 = v25;

          v31 = [v86 budgetedApplications];
          v32 = [objc_alloc(v10[186]) initWithCapacity:{objc_msgSend(v31, "count")}];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v33 = v31;
          v34 = [v33 countByEnumeratingWithState:&v97 objects:v118 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v98;
            do
            {
              for (k = 0; k != v35; k = k + 1)
              {
                if (*v98 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = [*(*(&v97 + 1) + 8 * k) bundleIdentifier];
                [v32 addObject:v38];
              }

              v35 = [v33 countByEnumeratingWithState:&v97 objects:v118 count:16];
            }

            while (v35);
          }

          v83 = v33;

          v39 = [v86 budgetedWebDomains];
          v40 = [objc_alloc(v10[186]) initWithCapacity:{objc_msgSend(v39, "count")}];
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v41 = v39;
          v42 = [v41 countByEnumeratingWithState:&v93 objects:v117 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v94;
            do
            {
              for (m = 0; m != v43; m = m + 1)
              {
                if (*v94 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = [*(*(&v93 + 1) + 8 * m) webDomain];
                [v40 addObject:v46];
              }

              v43 = [v41 countByEnumeratingWithState:&v93 objects:v117 count:16];
            }

            while (v43);
          }

          v82 = v41;

          v47 = [v86 notificationTimes];
          v48 = [objc_alloc(v10[186]) initWithCapacity:{objc_msgSend(v47, "count") - 1}];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v49 = v47;
          v50 = [v49 countByEnumeratingWithState:&v89 objects:v116 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v90;
            do
            {
              for (n = 0; n != v51; n = n + 1)
              {
                if (*v90 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                v54 = *(*(&v89 + 1) + 8 * n);
                [v54 remainingTime];
                if (v55 != 0.0)
                {
                  [v54 remainingTime];
                  v56 = [NSNumber numberWithDouble:?];
                  [v48 addObject:v56];
                }
              }

              v51 = [v49 countByEnumeratingWithState:&v89 objects:v116 count:16];
            }

            while (v51);
          }

          v114[0] = @"identifier";
          v81 = [v86 identifier];
          v115[0] = v81;
          v114[1] = @"clientIdentifier";
          v57 = [v86 clientIdentifier];
          v115[1] = v57;
          v114[2] = @"calendarIdentifier";
          v58 = [v86 calendarIdentifier];
          v115[2] = v58;
          v115[3] = v88;
          v114[3] = @"schedule";
          v114[4] = @"budgetedCategories";
          v115[4] = v24;
          v115[5] = v32;
          v114[5] = @"budgetedApplications";
          v114[6] = @"budgetedWebDomains";
          v115[6] = v40;
          v114[7] = @"darwinNotificationName";
          v59 = [v86 darwinNotificationName];
          v114[8] = @"notificationTimes";
          v115[7] = v59;
          v115[8] = v48;
          v60 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:9];
          [v79 addObject:v60];

          v13 = v85 + 1;
          v10 = &swift_defaultActor_destroy_ptr;
          v11 = &swift_defaultActor_destroy_ptr;
          v12 = &swift_defaultActor_destroy_ptr;
        }

        while ((v85 + 1) != v80);
        v80 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
      }

      while (v80);
    }

    v61 = v79;
    (*(v75[6] + 16))();
    v2 = v76;
    v9 = v73;
    v7 = v74;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063E88(v2);
    }

    v67 = a1[6];
    v61 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v62, v63, v64, v65, v66, v68);
    (*(v67 + 16))(v67, 0, v61);
  }
}

void sub_100008034(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndexedSubscript:a3];
  v7 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)", @"clientIdentifier", v8, @"identifier", v6];

  [v4 addObject:v7];
}

void sub_1000081C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[USRegisteredBudget fetchRequest];
  [v5 setPredicate:*(a1 + 32)];
  [v5 setReturnsObjectsAsFaults:0];
  v10[0] = @"schedule";
  v10[1] = @"budgetedCategories";
  v10[2] = @"budgetedApplications";
  v10[3] = @"exemptApplications";
  v10[4] = @"budgetedWebDomains";
  v6 = [NSArray arrayWithObjects:v10 count:5];
  [v5 setRelationshipKeyPathsForPrefetching:v6];

  v9 = 0;
  v7 = [v5 execute:&v9];
  v8 = v9;
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v4);
}

void sub_1000083E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[USNotificationTime fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"((%K == YES) || (%K.%K > 0.0)) && (%K.%K == %@)", @"notificationWasPosted", @"budget", @"deletedTime", @"budget", @"calendarIdentifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v28 = @"budget";
  v6 = [NSArray arrayWithObjects:&v28 count:1];
  [v4 setRelationshipKeyPathsForPrefetching:v6];

  v26 = 0;
  v7 = [v4 execute:&v26];
  v8 = v26;
  if (v7)
  {
    v19 = a1;
    v20 = v3;
    v9 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 notificationWasPosted])
          {
            [v9 addObject:v15];
            [v15 setNotificationWasPosted:0];
          }

          v16 = [v15 budget];
          [v16 setTimeRemainingBeforeUsageDeletion:0.0];

          v17 = [v15 budget];
          [v17 setDeletedTime:0.0];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v21 = v8;
    v3 = v20;
    [v20 save:&v21];
    v18 = v21;

    (*(*(v19 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v18 = v8;
  }
}

void sub_100008A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008AA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008BC0;
    v10[3] = &unk_100085E68;
    v10[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  [*(a1 + 32) unlockWithCondition:{objc_msgSend(*(a1 + 32), "condition") - 1}];
}

void sub_100008BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 equivalentBundleIdentifiers];
  if ([v4 count] >= 2)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:v4];
  }
}

void sub_100008C2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008D4C;
    v10[3] = &unk_100085E68;
    v10[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  [*(a1 + 32) unlockWithCondition:{objc_msgSend(*(a1 + 32), "condition") - 1}];
}

void sub_100008D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 equivalentBundleIdentifiers];
  if ([v8 count])
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    if (v4)
    {
      [v4 addObjectsFromArray:v8];
    }

    else
    {
      v5 = [[NSMutableOrderedSet alloc] initWithArray:v8];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }
}

void sub_1000091FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100009250(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_100004DC0;
    v14[4] = sub_100004DD0;
    v15 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000093A8;
    v9[3] = &unk_100085EB8;
    v11 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    v10 = v7;
    v12 = v8;
    v13 = v14;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];

    _Block_object_dispose(v14, 8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:*(a1 + 80)];
}

void sub_100009390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000093A8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1[5] + 8) + 40);
  if (v8)
  {
    v9 = [v6 identifier];
    [v8 addObject:v9];
  }

  else
  {
    v10 = [NSMutableSet alloc];
    v9 = [v7 identifier];
    v11 = [v10 initWithObjects:{v9, 0}];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = [v7 equivalentBundleIdentifiers];
  if ([v14 count] >= 2)
  {
    v15 = *(*(a1[6] + 8) + 40);
    if (!v15)
    {
      v16 = [[NSMutableSet alloc] initWithArray:a1[4]];
      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v15 = *(*(a1[6] + 8) + 40);
    }

    [v15 addObjectsFromArray:v14];
  }

  v19 = [v7 webDomains];
  if ([v19 count])
  {
    v33 = v5;
    if (!*(*(a1[7] + 8) + 40))
    {
      v20 = objc_opt_new();
      v21 = *(a1[7] + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = objc_opt_new();
      v24 = *(a1[8] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v19;
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        v30 = 0;
        do
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(a1[7] + 8) + 40);
          v32 = [*(*(a1[8] + 8) + 40) normalizeDomainName:*(*(&v34 + 1) + 8 * v30)];
          [v31 addObject:v32];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v28);
    }

    v5 = v33;
  }
}

void sub_100009AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009BC4;
    v10[3] = &unk_100085F08;
    v11 = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  [*(a1 + 32) unlockWithCondition:{objc_msgSend(*(a1 + 32), "condition") - 1}];
}

void sub_100009BC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 webDomains];
  if ([v4 count] >= 2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = *(*(*(a1 + 32) + 8) + 40);
          if (!v11)
          {
            v12 = objc_opt_new();
            v13 = *(*(a1 + 32) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v12;

            v11 = *(*(*(a1 + 32) + 8) + 40);
          }

          v15 = *(*(*(a1 + 40) + 8) + 40);
          v16 = [v11 normalizeDomainName:{v10, v17}];
          [v15 addObject:v16];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

void sub_100009D44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009E64;
    v10[3] = &unk_100085F08;
    v11 = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  [*(a1 + 32) unlockWithCondition:{objc_msgSend(*(a1 + 32), "condition") - 1}];
}

void sub_100009E64(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [a3 webDomains];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = *(*(*(a1 + 32) + 8) + 40);
        if (!v10)
        {
          v11 = objc_opt_new();
          v12 = *(*(a1 + 32) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          v10 = *(*(*(a1 + 32) + 8) + 40);
        }

        v14 = [v10 normalizeDomainName:v9];
        v15 = *(*(*(a1 + 40) + 8) + 40);
        if (v15)
        {
          [v15 addObject:v14];
        }

        else
        {
          v16 = [[NSMutableOrderedSet alloc] initWithObject:v14];
          v17 = *(*(a1 + 40) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

void sub_10000A414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10000A468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_100004DC0;
    v12[4] = sub_100004DD0;
    v13 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000A5C4;
    v7[3] = &unk_100085F58;
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v8 = *(a1 + 32);
    v11 = v12;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];

    _Block_object_dispose(v12, 8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:*(a1 + 80)];
}

void sub_10000A5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A5C4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1[5] + 8) + 40);
  if (v8)
  {
    v9 = [v6 identifier];
    [v8 addObject:v9];
  }

  else
  {
    v10 = [NSMutableSet alloc];
    v9 = [v7 identifier];
    v11 = [v10 initWithObjects:{v9, 0}];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = [v7 equivalentBundleIdentifiers];
  if ([v14 count])
  {
    v15 = *(*(a1[6] + 8) + 40);
    if (v15)
    {
      [v15 addObjectsFromArray:v14];
    }

    else
    {
      v16 = [[NSMutableSet alloc] initWithArray:v14];
      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  v19 = [v7 webDomains];
  if ([v19 count] >= 2)
  {
    v33 = v5;
    if (!*(*(a1[7] + 8) + 40))
    {
      v20 = [[NSMutableSet alloc] initWithArray:a1[4]];
      v21 = *(a1[7] + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = objc_opt_new();
      v24 = *(a1[8] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v19;
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        v30 = 0;
        do
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(a1[7] + 8) + 40);
          v32 = [*(*(a1[8] + 8) + 40) normalizeDomainName:*(*(&v34 + 1) + 8 * v30)];
          [v31 addObject:v32];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v28);
    }

    v5 = v33;
  }
}

void sub_10000AB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10000AB64(void *a1)
{
  v2 = +[USBudgetedCategory fetchRequest];
  [v2 setResultType:4];
  v3 = [NSPredicate predicateWithFormat:@"(%K != nil) || (%K.%K.%K == YES)", @"budget", @"event", @"budget", @"intervalDidStart"];
  if (a1[4])
  {
    v4 = [NSCompoundPredicate alloc];
    v19[0] = a1[4];
    v19[1] = v3;
    v5 = [NSArray arrayWithObjects:v19 count:2];
    v6 = [v4 initWithType:1 subpredicates:v5];
    [v2 setPredicate:v6];
  }

  else
  {
    [v2 setPredicate:v3];
  }

  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = [v2 execute:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = [v8 firstObject];

  if (v9)
  {
    if ([v9 BOOLValue])
    {
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = &__kCFBooleanTrue;
    }

    else
    {
      v11 = +[USRegisteredDeviceActivityEvent fetchRequest];
      [v11 setResultType:4];
      v12 = [NSPredicate predicateWithFormat:@"(%K.@count <= 0) && (%K.@count <= 0) && (%K.@count <= 0)", @"budgetedCategories", @"budgetedApplications", @"budgetedWebDomains"];
      [v11 setPredicate:v12];

      v13 = *(a1[5] + 8);
      v17 = *(v13 + 40);
      v14 = [v11 execute:&v17];
      objc_storeStrong((v13 + 40), v17);
      v15 = [v14 firstObject];

      if (v15)
      {
        v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 BOOLValue]);
      }

      else
      {
        v16 = 0;
      }

      objc_storeStrong((*(a1[6] + 8) + 40), v16);
      if (v15)
      {
      }
    }
  }
}

void sub_10000B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 144), 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10000B06C(void *a1)
{
  v2 = [NSPredicate predicateWithFormat:@"(%K != nil) || (%K.%K.%K == YES)", @"budget", @"event", @"budget", @"intervalDidStart"];
  v3 = +[USBudgetedApplication fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  [v3 setPredicate:v2];
  v4 = *(a1[4] + 8);
  obj = *(v4 + 40);
  v5 = [v3 execute:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = +[USBudgetedWebDomain fetchRequest];
    [v6 setReturnsObjectsAsFaults:0];
    [v6 setPredicate:v2];
    v7 = *(a1[4] + 8);
    v43 = *(v7 + 40);
    v8 = [v6 execute:&v43];
    objc_storeStrong((v7 + 40), v43);
    *(*(a1[5] + 8) + 24) = v8 != 0;
  }

  else
  {
    v8 = 0;
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v33 = v5;
    v34 = v2;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        v13 = 0;
        do
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * v13);
          v15 = *(*(a1[6] + 8) + 40);
          if (v15)
          {
            v16 = [*(*(&v39 + 1) + 8 * v13) bundleIdentifier];
            [v15 addObject:v16];
          }

          else
          {
            v17 = [NSMutableOrderedSet alloc];
            v16 = [v14 bundleIdentifier];
            v18 = [v17 initWithObject:v16];
            v19 = *(a1[6] + 8);
            v20 = *(v19 + 40);
            *(v19 + 40) = v18;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v11);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = v8;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        v25 = 0;
        do
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v35 + 1) + 8 * v25);
          v27 = *(*(a1[7] + 8) + 40);
          if (v27)
          {
            v28 = [*(*(&v35 + 1) + 8 * v25) webDomain];
            [v27 addObject:v28];
          }

          else
          {
            v29 = [NSMutableOrderedSet alloc];
            v28 = [v26 webDomain];
            v30 = [v29 initWithObject:v28];
            v31 = *(a1[7] + 8);
            v32 = *(v31 + 40);
            *(v31 + 40) = v30;
          }

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v23);
    }

    v5 = v33;
    v2 = v34;
  }
}

void sub_10000B4D8(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = +[USRegisteredBudget fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"ANY %K.%K == YES", @"notificationTimes", @"notificationWasPosted"];
  [v2 setPredicate:v3];

  [v2 setReturnsObjectsAsFaults:0];
  v20[0] = @"schedule";
  v20[1] = @"budgetedCategories";
  v20[2] = @"budgetedApplications";
  v20[3] = @"exemptApplications";
  v20[4] = @"budgetedWebDomains";
  v20[5] = @"notificationTimes";
  v4 = [NSArray arrayWithObjects:v20 count:6];
  [v2 setRelationshipKeyPathsForPrefetching:v4];

  v18 = 0;
  v5 = [v2 execute:&v18];
  v6 = v18;
  if (v5)
  {
    v14 = v1;
    v7 = +[USRegisteredDeviceActivityEvent fetchRequest];
    v8 = [NSPredicate predicateWithFormat:@"%K == YES", @"didReachThreshold"];
    [v7 setPredicate:v8];

    [v7 setReturnsObjectsAsFaults:0];
    v19[0] = @"budget";
    v19[1] = @"budgetedCategories";
    v19[2] = @"budgetedApplications";
    v19[3] = @"exemptApplications";
    v19[4] = @"budgetedWebDomains";
    v9 = [NSArray arrayWithObjects:v19 count:5];
    [v7 setRelationshipKeyPathsForPrefetching:v9];

    v17 = v6;
    v10 = [v7 execute:&v17];
    v11 = v17;

    if ((*(*(a1 + 40) + 16))())
    {
      v12 = *(a1 + 32);
      v16 = v11;
      v13 = [v12 save:&v16];
      v6 = v16;

      if ((v13 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100064118();
      }
    }

    else
    {
      v6 = v11;
    }

    v1 = v14;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10000B8A8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[USRegisteredBudget fetchRequest];
  [v3 setPredicate:a1[4]];
  [v3 setReturnsObjectsAsFaults:0];
  v29[0] = @"schedule";
  v29[1] = @"budgetedCategories";
  v29[2] = @"budgetedApplications";
  v29[3] = @"exemptApplications";
  v29[4] = @"budgetedWebDomains";
  v29[5] = @"notificationTimes";
  v4 = [NSArray arrayWithObjects:v29 count:6];
  [v3 setRelationshipKeyPathsForPrefetching:v4];

  v25 = 0;
  v5 = [v3 execute:&v25];
  v6 = v25;
  if (v5)
  {
    v22 = v2;
    v7 = +[USRegisteredDeviceActivityEvent fetchRequest];
    [v7 setReturnsObjectsAsFaults:0];
    v28[0] = @"budget";
    v28[1] = @"budgetedCategories";
    v28[2] = @"budgetedApplications";
    v28[3] = @"exemptApplications";
    v28[4] = @"budgetedWebDomains";
    v8 = [NSArray arrayWithObjects:v28 count:5];
    [v7 setRelationshipKeyPathsForPrefetching:v8];

    v9 = [NSPredicate predicateWithFormat:@"%K.%K == YES", @"budget", @"intervalDidStart"];
    if (a1[4])
    {
      v10 = [NSPredicate predicateWithFormat:@"(%K.@count <= 0) && (%K.@count <= 0) && (%K.@count <= 0)", @"budgetedCategories", @"budgetedApplications", @"budgetedWebDomains"];
      v11 = [NSCompoundPredicate alloc];
      v27[0] = a1[4];
      v27[1] = v10;
      v12 = [NSArray arrayWithObjects:v27 count:2];
      v13 = [v11 initWithType:2 subpredicates:v12];

      v14 = [NSCompoundPredicate alloc];
      v26[0] = v13;
      v26[1] = v9;
      v15 = [NSArray arrayWithObjects:v26 count:2];
      v16 = [v14 initWithType:1 subpredicates:v15];
      [v7 setPredicate:v16];
    }

    else
    {
      [v7 setPredicate:v9];
    }

    v17 = v9;
    v24 = v6;
    v18 = [v7 execute:&v24];
    v19 = v24;

    if ((*(a1[6] + 16))())
    {
      v20 = a1[5];
      v23 = v19;
      v21 = [v20 save:&v23];
      v6 = v23;

      if ((v21 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000641A8();
      }
    }

    else
    {
      v6 = v19;
    }

    v2 = v22;
  }

  else
  {
    (*(a1[6] + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10000C080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C0AC(uint64_t a1)
{
  v2 = +[USDeviceActivityBudget fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = [NSPredicate predicateWithFormat:@"%K == %@"];
  [v2 setPredicate:v3];

  v4 = a1 + 40;
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v2 execute:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = [v6 valueForKeyPath:@"name"];
    v4 = a1 + 48;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064220();
    }

    v7 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v8, v9, v10, v11, v12, @"clientIdentifier");
  }

  v13 = *(*v4 + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v7;
}

void sub_10000C664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_10000C690(uint64_t a1)
{
  v2 = +[USDeviceActivityBudget fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)"];
  [v2 setPredicate:v3];

  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 execute:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];
  if (v6)
  {
    v7 = [USDeviceActivitySchedule alloc];
    v8 = [v6 intervalStart];
    v9 = [v6 intervalEnd];
    v10 = [v6 repeats];
    v11 = [v6 warningTime];
    v12 = [v7 initWithIntervalStart:v8 intervalEnd:v9 repeats:v10 warningTime:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    if (v5)
    {
      goto LABEL_5;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064220();
    }

    v20 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v15, v16, v17, v18, v19, @"clientIdentifier");
    v21 = *(*(a1 + 48) + 8);
    v8 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

LABEL_5:
}

void sub_10000CCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_10000CD18(uint64_t a1)
{
  v150 = @"events";
  v2 = [NSArray arrayWithObjects:&v150 count:1];
  v3 = +[USDeviceActivityBudget fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  if (v2)
  {
    [v3 setRelationshipKeyPathsForPrefetching:v2];
  }

  v4 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)"];
  [v3 setPredicate:v4];

  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 execute:&obj];
  objc_storeStrong((v5 + 40), obj);
  v92 = v3;
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = objc_opt_new();
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v91 = v6;
    v11 = [v6 firstObject];
    v12 = [v11 events];

    v93 = v12;
    v97 = [v12 countByEnumeratingWithState:&v136 objects:v149 count:16];
    if (v97)
    {
      v95 = *v137;
      v96 = a1;
      do
      {
        v13 = 0;
        do
        {
          if (*v137 != v95)
          {
            objc_enumerationMutation(v93);
          }

          v14 = *(*(&v136 + 1) + 8 * v13);
          v15 = [v14 budgetedApplications];
          v16 = [v14 exemptApplications];
          v103 = [v14 budgetedCategories];
          v102 = [v14 budgetedWebDomains];
          v98 = v14;
          v17 = [v14 isUntokenized];
          v18 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
          v100 = v15;
          v101 = v13;
          v99 = v16;
          if (v17)
          {
            v134 = 0uLL;
            v135 = 0uLL;
            v132 = 0uLL;
            v133 = 0uLL;
            v19 = v15;
            v20 = [v19 countByEnumeratingWithState:&v132 objects:v148 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v133;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v133 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = [*(*(&v132 + 1) + 8 * i) bundleIdentifier];
                  [v18 addObject:v24];
                }

                v21 = [v19 countByEnumeratingWithState:&v132 objects:v148 count:16];
              }

              while (v21);
            }

            v25 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            v131 = 0u;
            v26 = v16;
            v27 = [v26 countByEnumeratingWithState:&v128 objects:v147 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v129;
              do
              {
                for (j = 0; j != v28; j = j + 1)
                {
                  if (*v129 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = [*(*(&v128 + 1) + 8 * j) bundleIdentifier];
                  [v25 addObject:v31];
                }

                v28 = [v26 countByEnumeratingWithState:&v128 objects:v147 count:16];
              }

              while (v28);
            }

            v32 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v103, "count")}];
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v33 = v103;
            v34 = [v33 countByEnumeratingWithState:&v124 objects:v146 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v125;
              do
              {
                for (k = 0; k != v35; k = k + 1)
                {
                  if (*v125 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = [*(*(&v124 + 1) + 8 * k) categoryIdentifier];
                  [v32 addObject:v38];
                }

                v35 = [v33 countByEnumeratingWithState:&v124 objects:v146 count:16];
              }

              while (v35);
            }

            v39 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v102, "count")}];
            v120 = 0u;
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v40 = v102;
            v41 = [v40 countByEnumeratingWithState:&v120 objects:v145 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v121;
              do
              {
                for (m = 0; m != v42; m = m + 1)
                {
                  if (*v121 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = [*(*(&v120 + 1) + 8 * m) webDomain];
                  [v39 addObject:v45];
                }

                v42 = [v40 countByEnumeratingWithState:&v120 objects:v145 count:16];
              }

              while (v42);
            }

            v46 = [USDeviceActivityEvent alloc];
            v47 = v98;
            v48 = [v98 threshold];
            v49 = [v46 initWithBundleIdentifiers:v18 exemptBundleIdentifiers:v25 categoryIdentifiers:v32 webDomains:v39 threshold:v48 includesPastActivity:{objc_msgSend(v98, "includesPastActivity")}];
          }

          else
          {
            v118 = 0uLL;
            v119 = 0uLL;
            v116 = 0uLL;
            v117 = 0uLL;
            v50 = v15;
            v51 = [v50 countByEnumeratingWithState:&v116 objects:v144 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = *v117;
              do
              {
                for (n = 0; n != v52; n = n + 1)
                {
                  if (*v117 != v53)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v55 = [*(*(&v116 + 1) + 8 * n) bundleIdentifier];
                  v56 = [v10 encodeApplication:v55];

                  if (v56)
                  {
                    [v18 addObject:v56];
                  }
                }

                v52 = [v50 countByEnumeratingWithState:&v116 objects:v144 count:16];
              }

              while (v52);
            }

            v25 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v57 = v16;
            v58 = [v57 countByEnumeratingWithState:&v112 objects:v143 count:16];
            if (v58)
            {
              v59 = v58;
              v60 = *v113;
              do
              {
                for (ii = 0; ii != v59; ii = ii + 1)
                {
                  if (*v113 != v60)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v62 = [*(*(&v112 + 1) + 8 * ii) bundleIdentifier];
                  v63 = [v10 encodeApplication:v62];

                  if (v63)
                  {
                    [v25 addObject:v63];
                  }
                }

                v59 = [v57 countByEnumeratingWithState:&v112 objects:v143 count:16];
              }

              while (v59);
            }

            v94 = v18;

            v32 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v103, "count")}];
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v64 = v103;
            v65 = [v64 countByEnumeratingWithState:&v108 objects:v142 count:16];
            if (v65)
            {
              v66 = v65;
              v67 = *v109;
              do
              {
                for (jj = 0; jj != v66; jj = jj + 1)
                {
                  if (*v109 != v67)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v69 = [*(*(&v108 + 1) + 8 * jj) categoryIdentifier];
                  v70 = [v10 encodeCategory:v69];

                  if (v70)
                  {
                    [v32 addObject:v70];
                  }
                }

                v66 = [v64 countByEnumeratingWithState:&v108 objects:v142 count:16];
              }

              while (v66);
            }

            v39 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v102, "count")}];
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v71 = v102;
            v72 = [v71 countByEnumeratingWithState:&v104 objects:v141 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v105;
              do
              {
                for (kk = 0; kk != v73; kk = kk + 1)
                {
                  if (*v105 != v74)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v76 = [*(*(&v104 + 1) + 8 * kk) webDomain];
                  v77 = [v10 encodeWebDomain:v76];

                  if (v77)
                  {
                    [v39 addObject:v77];
                  }
                }

                v73 = [v71 countByEnumeratingWithState:&v104 objects:v141 count:16];
              }

              while (v73);
            }

            v78 = [USDeviceActivityEvent alloc];
            v48 = [v98 threshold];
            v79 = [v98 includesPastActivity];
            v80 = v78;
            v47 = v98;
            v18 = v94;
            v49 = [v80 initWithApplicationTokens:v94 exemptApplicationTokens:v25 categoryTokens:v32 webDomainTokens:v39 threshold:v48 includesPastActivity:v79];
          }

          v81 = v49;

          v82 = *(*(*(v96 + 56) + 8) + 40);
          v83 = [v47 name];
          [v82 setObject:v81 forKeyedSubscript:v83];

          v13 = v101 + 1;
        }

        while ((v101 + 1) != v97);
        v97 = [v93 countByEnumeratingWithState:&v136 objects:v149 count:16];
      }

      while (v97);
    }

    v6 = v91;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064220();
    }

    v89 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v84, v85, v86, v87, v88, @"clientIdentifier");
    v90 = *(*(a1 + 48) + 8);
    v10 = *(v90 + 40);
    *(v90 + 40) = v89;
  }
}

void sub_10000D93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D958(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectIDForURIRepresentation:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    v10 = 0;
    v5 = [v4 existingObjectWithID:v3 error:&v10];
    v6 = v10;
    v7 = [v5 clientIdentifier];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100064298();
  }
}

void sub_10000DB60(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectIDForURIRepresentation:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    v11 = 0;
    v5 = [v4 existingObjectWithID:v3 error:&v11];
    v6 = v11;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100064298();
    }

    v6 = 0;
    v5 = 0;
  }

  if ((*(*(a1 + 56) + 16))())
  {
    v7 = *(a1 + 48);
    v10 = v6;
    v8 = [v7 save:&v10];
    v9 = v10;

    if ((v8 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064318();
    }
  }

  else
  {
    v9 = v6;
  }
}

void sub_10000DD60(uint64_t a1)
{
  v11 = @"events";
  v2 = [NSArray arrayWithObjects:&v11 count:1];
  v3 = +[USDeviceActivityBudget fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  if (v2)
  {
    [v3 setRelationshipKeyPathsForPrefetching:v2];
  }

  v10 = 0;
  v4 = [v3 execute:&v10];
  v5 = v10;
  if ((*(*(a1 + 40) + 16))())
  {
    v6 = *(a1 + 32);
    v9 = v5;
    v7 = [v6 save:&v9];
    v8 = v9;

    if ((v7 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064394();
    }
  }

  else
  {
    v8 = v5;
  }
}

void sub_10000DFD0(void *a1)
{
  v46 = @"events";
  v2 = [NSArray arrayWithObjects:&v46 count:1];
  v3 = +[USDeviceActivityBudget fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  if (v2)
  {
    [v3 setRelationshipKeyPathsForPrefetching:v2];
  }

  v41 = 0;
  v4 = [v3 execute:&v41];
  v5 = v41;
  v6 = v5;
  if (v4)
  {
    v30 = v5;
    v31 = v4;
    v32 = a1;
    v33 = v3;
    v7 = a1[4];
    v8 = a1[5];
    v9 = v4;
    v10 = v7;
    v35 = v8;
    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v36 = *v43;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v43 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          if (v10)
          {
            v16 = [*(*(&v42 + 1) + 8 * i) clientIdentifier];
            v17 = [v10 containsObject:v16];

            if (v17)
            {
              continue;
            }
          }

          v18 = [USDeviceActivityBudgetMetadata alloc];
          v19 = [v15 name];
          v20 = [v15 objectID];
          v21 = [v15 clientIdentifier];
          [v15 extensionIdentifier];
          v23 = v22 = v11;
          v24 = -[USDeviceActivityBudgetMetadata initWithActivity:budgetID:clientIdentifier:extensionIdentifier:intervalDidStart:](v18, "initWithActivity:budgetID:clientIdentifier:extensionIdentifier:intervalDidStart:", v19, v20, v21, v23, [v15 intervalDidStart]);

          v11 = v22;
          [v22 addObject:v24];
          [v35 deleteObject:v15];
        }

        v13 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v13);
    }

    v25 = v32[5];
    v40 = v30;
    v26 = [v25 save:&v40];
    v6 = v40;

    (*(v32[7] + 16))();
    if (v26)
    {
      v27 = [v32[6] notificationPostingQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000E388;
      v37[3] = &unk_1000860C0;
      v28 = v11;
      v29 = v32[6];
      v38 = v28;
      v39 = v29;
      [v27 addOperationWithBlock:v37];
    }

    v3 = v33;
    v4 = v31;
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void sub_10000E388(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = @"BudgetMetadata";
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"DeviceActivityBudgetsWereRemoved" object:*(a1 + 40) userInfo:v3];
}

void sub_10000E4AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = [[USDailyLimit alloc] initWithContext:*(a1 + 32)];
  v7 = [v6 integerValue];

  [(USDailyLimit *)v10 setWeekday:v7];
  [v5 doubleValue];
  v9 = v8;

  [(USDailyLimit *)v10 setTimeLimit:v9];
  [*(a1 + 40) addScheduleObject:v10];
}

void sub_10000E56C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v14 + 1) + 8 * v11);
      if ([v12 weekday] == v6)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v13 = [[USDailyLimit alloc] initWithContext:*(a1 + 40)];
  [(USDailyLimit *)v13 setWeekday:v6];
  [*(a1 + 48) addScheduleObject:v13];
LABEL_12:
  [v5 doubleValue];
  [(USDailyLimit *)v13 setTimeLimit:?];
}

void sub_10000E6E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [[USRegisteredDeviceActivityEvent alloc] initWithContext:v8];
  [(USRegisteredDeviceActivityEvent *)v9 setName:v5];
  v10 = [v6 threshold];
  [(USRegisteredDeviceActivityEvent *)v9 setThreshold:v10];

  -[USRegisteredDeviceActivityEvent setIncludesPastActivity:](v9, "setIncludesPastActivity:", [v6 includesPastActivity]);
  v49 = v6;
  v50 = v5;
  v48 = v7;
  if ([v6 isUntokenized])
  {
    [(USRegisteredDeviceActivityEvent *)v9 setIsUntokenized:1];
    v11 = [v6 bundleIdentifiers];
    v12 = [v6 exemptBundleIdentifiers];
    v13 = [v6 categoryIdentifiers];
    v47 = [v6 webDomains];
  }

  else
  {
    [(USRegisteredDeviceActivityEvent *)v9 setIsUntokenized:0];
    v14 = objc_opt_new();
    v15 = [v6 applicationTokens];
    v11 = [v14 decodeApplications:v15];

    v16 = [v6 exemptApplicationTokens];
    v12 = [v14 decodeApplications:v16];

    v17 = [v6 categoryTokens];
    v13 = [v14 decodeCategories:v17];

    v18 = [v6 webDomainTokens];
    v47 = [v14 decodeWebDomains:v18];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v13;
  v19 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v65;
    do
    {
      v22 = 0;
      do
      {
        if (*v65 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v64 + 1) + 8 * v22);
        v24 = [[USBudgetedCategory alloc] initWithContext:v8];
        [(USBudgetedCategory *)v24 setCategoryIdentifier:v23];
        [(USRegisteredDeviceActivityEvent *)v9 addBudgetedCategoriesObject:v24];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v20);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v61;
    do
    {
      v29 = 0;
      do
      {
        if (*v61 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v60 + 1) + 8 * v29);
        v31 = [[USBudgetedApplication alloc] initWithContext:v8];
        [(USBudgetedApplication *)v31 setBundleIdentifier:v30];
        [(USRegisteredDeviceActivityEvent *)v9 addBudgetedApplicationsObject:v31];

        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v27);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v32 = v12;
  v33 = [v32 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v57;
    do
    {
      v36 = 0;
      do
      {
        if (*v57 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v56 + 1) + 8 * v36);
        v38 = [[USExemptApplication alloc] initWithContext:v8];
        [(USExemptApplication *)v38 setBundleIdentifier:v37];
        [(USRegisteredDeviceActivityEvent *)v9 addExemptApplicationsObject:v38];

        v36 = v36 + 1;
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v34);
  }

  v46 = v25;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = v47;
  v40 = [v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v53;
    do
    {
      v43 = 0;
      do
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v52 + 1) + 8 * v43);
        v45 = [[USBudgetedWebDomain alloc] initWithContext:v8, v46];
        [(USBudgetedWebDomain *)v45 setWebDomain:v44];
        [(USRegisteredDeviceActivityEvent *)v9 addBudgetedWebDomainsObject:v45];

        v43 = v43 + 1;
      }

      while (v41 != v43);
      v41 = [v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v41);
  }

  [v48 addEventsObject:v9];
}

void sub_10000EC0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = [[USRegisteredDeviceActivityEvent alloc] initWithContext:v11];
    [(USRegisteredDeviceActivityEvent *)v12 setName:v9];
    v13 = [v10 threshold];
    [(USRegisteredDeviceActivityEvent *)v12 setThreshold:v13];

    -[USRegisteredDeviceActivityEvent setIncludesPastActivity:](v12, "setIncludesPastActivity:", [v10 includesPastActivity]);
    v57 = v6;
    v58 = v5;
    v55 = v9;
    v56 = v8;
    v54 = v10;
    if ([v10 isUntokenized])
    {
      [(USRegisteredDeviceActivityEvent *)v12 setIsUntokenized:1];
      v14 = [v10 bundleIdentifiers];
      v50 = [v10 exemptBundleIdentifiers];
      v15 = [v10 categoryIdentifiers];
      v52 = [v10 webDomains];
    }

    else
    {
      [(USRegisteredDeviceActivityEvent *)v12 setIsUntokenized:0];
      v16 = objc_opt_new();
      v17 = [v10 applicationTokens];
      v14 = [v16 decodeApplications:v17];

      v18 = [v10 exemptApplicationTokens];
      v50 = [v16 decodeApplications:v18];

      [v10 categoryTokens];
      v20 = v19 = v10;
      v15 = [v16 decodeCategories:v20];

      v21 = [v19 webDomainTokens];
      v52 = [v16 decodeWebDomains:v21];
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v72;
      do
      {
        v26 = 0;
        do
        {
          if (*v72 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v71 + 1) + 8 * v26);
          v28 = [[USBudgetedCategory alloc] initWithContext:v11];
          [(USBudgetedCategory *)v28 setCategoryIdentifier:v27];
          [(USRegisteredDeviceActivityEvent *)v12 addBudgetedCategoriesObject:v28];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v24);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v29 = v14;
    v30 = [v29 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v68;
      do
      {
        v33 = 0;
        do
        {
          if (*v68 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v67 + 1) + 8 * v33);
          v35 = [[USBudgetedApplication alloc] initWithContext:v11];
          [(USBudgetedApplication *)v35 setBundleIdentifier:v34];
          [(USRegisteredDeviceActivityEvent *)v12 addBudgetedApplicationsObject:v35];

          v33 = v33 + 1;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v31);
    }

    v53 = v22;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = v50;
    v37 = [v36 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v64;
      do
      {
        v40 = 0;
        do
        {
          if (*v64 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v63 + 1) + 8 * v40);
          v42 = [[USExemptApplication alloc] initWithContext:v11];
          [(USExemptApplication *)v42 setBundleIdentifier:v41];
          [(USRegisteredDeviceActivityEvent *)v12 addExemptApplicationsObject:v42];

          v40 = v40 + 1;
        }

        while (v38 != v40);
        v38 = [v36 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v38);
    }

    v51 = v29;

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = v52;
    v44 = [v43 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v60;
      do
      {
        v47 = 0;
        do
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v59 + 1) + 8 * v47);
          v49 = [[USBudgetedWebDomain alloc] initWithContext:v11, v51];
          [(USBudgetedWebDomain *)v49 setWebDomain:v48];
          [(USRegisteredDeviceActivityEvent *)v12 addBudgetedWebDomainsObject:v49];

          v47 = v47 + 1;
        }

        while (v45 != v47);
        v45 = [v43 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v45);
    }

    [v56 addEventsObject:v12];
    v6 = v57;
    v5 = v58;
  }
}

void sub_10000F1E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t sub_10000F1F8(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

void sub_10000F248(id a1)
{
  qword_100091C40 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000F414(id a1)
{
  qword_100091C50 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000F788(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = os_transaction_create();
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);

  if (!strcmp(string, "com.apple.UsageTrackingAgent.alarm.application"))
  {
    [*(a1 + 32) _applicationAlarmDidFire];
    goto LABEL_23;
  }

  if (!strcmp(string, "com.apple.UsageTrackingAgent.alarm.web-domain"))
  {
    [*(a1 + 32) _webDomainAlarmDidFire];
    goto LABEL_23;
  }

  if (!strcmp(string, "com.apple.UsageTrackingAgent.alarm.now-playing"))
  {
    [*(a1 + 32) _nowPlayingAlarmDidFire];
    goto LABEL_23;
  }

  if (!strcmp(string, "com.apple.UsageTrackingAgent.alarm.video"))
  {
    [*(a1 + 32) _videoAlarmDidFire];
    goto LABEL_23;
  }

  if (!strncmp(string, "com.apple.UsageTrackingAgent.alarm.budgets-reset-", 0x31uLL))
  {
    v10 = *(a1 + 32);
    v11 = [NSString stringWithUTF8String:string];
    [v10 _budgetsResetAlarmDidFire:v11];

    goto LABEL_23;
  }

  if (!strncmp(string, "com.apple.UsageTrackingAgent.alarm.start-warning-", 0x31uLL))
  {
    v12 = *(a1 + 32);
    v13 = string;
    v14 = 1;
  }

  else
  {
    if (strncmp(string, "com.apple.UsageTrackingAgent.alarm.start-", 0x29uLL))
    {
      if (!strncmp(string, "com.apple.UsageTrackingAgent.end-warning-", 0x29uLL))
      {
        v12 = *(a1 + 32);
        v13 = string;
        v14 = 1;
      }

      else
      {
        if (strncmp(string, "com.apple.UsageTrackingAgent.alarm.end-", 0x27uLL))
        {
          v5 = +[NSAssertionHandler currentHandler];
          v8 = a1 + 32;
          v6 = *(a1 + 32);
          v7 = *(v8 + 8);
          v9 = [NSString stringWithUTF8String:string];
          [v5 handleFailureInMethod:v7 object:v6 file:@"USBudgetTracker.m" lineNumber:220 description:{@"Unknown event name: %@", v9}];

          goto LABEL_23;
        }

        v12 = *(a1 + 32);
        v13 = string;
        v14 = 0;
      }

      v15 = 1;
      goto LABEL_22;
    }

    v12 = *(a1 + 32);
    v13 = string;
    v14 = 0;
  }

  v15 = 0;
LABEL_22:
  [v12 _budgetIntervalAlarmDidFire:v13 isWarning:v14 isEndOfInterval:v15];
LABEL_23:
}

void sub_10000F9D4(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-sync-coordinator-did-idle"))
  {
    v9 = *(a1 + 32);

    [v9 _duetSyncCoordinatorDidIdle];
  }

  else if (!strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-application-usage-did-tombstone") || !strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-web-domain-usage-did-tombstone") || !strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-now-playing-usage-did-tombstone") || !strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-video-usage-did-tombstone"))
  {
    v8 = *(a1 + 32);

    [v8 _tombstoneEventDidFire:?];
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    v6 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(v6 + 8);
    v7 = [NSString stringWithUTF8String:string];
    [v10 handleFailureInMethod:v5 object:v4 file:@"USBudgetTracker.m" lineNumber:237 description:{@"Unknown event name: %@", v7}];
  }
}

void sub_10000FB44(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (strcmp(string, "SignificantTimeChangeNotification"))
  {
    if (!strcmp(string, "com.apple.mobile.keybagd.first_unlock"))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received first-unlock notification; registering for usage and handling missed significant time change.", v7, 2u);
      }

      [*(a1 + 32) _registerForAllUsage];
      [*(a1 + 32) _systemTimeDidChange];
      xpc_set_event();
    }

    return;
  }

  v4 = MKBUserUnlockedSinceBoot();
  if (v4 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064438();
    }
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 32);

    [v5 _systemTimeDidChange];
    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received significant time change notification prior to first-unlock. Pending all work until after the device is unlocked.", buf, 2u);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "Notification", "com.apple.mobile.keybagd.first_unlock");
  xpc_set_event();
}

void sub_10000FCF4(id a1, NSString *a2, NSSet *a3)
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = MOEffectiveSettingsGroupDeviceActivity;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v13 + 1) + 8 * v8) isEqualToString:v7])
        {
          v9 = +[_TtC18UsageTrackingAgent29USDeviceActivityAuthorization authorizedClientIdentifiers];
          if (_os_feature_enabled_impl())
          {
            if ([v9 count])
            {
              if (!+[_TtC18UsageTrackingAgent29USDeviceActivityAuthorization sharingEnabled])
              {
                v12 = 0;
                [_TtC18UsageTrackingAgent15SyncCoordinator deleteLocalDataAndReturnError:&v12];
                v10 = v12;
                if (v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_1000644B4(buf, v10, &buf[4]);
                }
              }

              [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:1 shouldSync:1 completionHandler:&stru_100086278];
            }

            else
            {
              [_TtC18UsageTrackingAgent23DeviceActivityCollector deleteLocalActivityWithCompletionHandler:&stru_100086298];
            }

            +[_TtC18UsageTrackingAgent15SyncCoordinator resetSharingPermissions];
          }

          v11 = +[USBudgetRegistration sharedRegistration];
          [v11 removeDeviceActivityBudgetsNotMatchingClients:v9 completionHandler:&stru_1000862D8];
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }
}

void sub_10000FF0C(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished refreshing local device activity due to effective settings change.", v1, 2u);
  }
}

void sub_10000FF68(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished deleting local activity because there are no more allowed clients.", v1, 2u);
  }
}

void sub_10000FFC4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064500();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully removed all Device Activity budgets because Device Activity is no longer authorized", v3, 2u);
  }
}

void sub_100010058(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Resetting all Device Activity alarms.", v4, 2u);
  }

  [*(a1 + 32) _resetDeviceActivityAlarms];
  v3[2](v3, 1);
}

void sub_1000103EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001040C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 events];
  *(*(*(a1 + 48) + 8) + 24) = [v7 count] != 0;

  if (v5)
  {
    v8 = *(a1 + 32);
    v17 = v5;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v10 = (*(a1 + 56) & 1) == 0;
    v11 = [v8 _setAlarmsOrNotifyExtensionsForDeviceActivityBudgets:v9 notifyForIntervalEnd:v10 isEndOfInterval:v10];

    if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1 && [v5 intervalDidStart])
    {
      v12 = [*(a1 + 32) _cacheThresholdAdjustmentTimeForBudget:v5];
      v13 = *(a1 + 32);
      v14 = [v5 events];
      v15 = [v14 allObjects];
      v11 = (v11 | v12 | [v13 _notifyForBudgets:&__NSArray0__struct events:v15 nextNotificationEventName:0 syncForImpendingBudgets:0]);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064578();
    }

    v11 = 0;
  }

  return v11;
}

id sub_1000109FC(uint64_t a1)
{
  [*(a1 + 32) _subscribeForApplicationUsage];
  [*(a1 + 32) _subscribeForWebDomainUsage];
  [*(a1 + 32) _subscribeForNowPlayingUsage];
  v2 = *(a1 + 32);

  return [v2 _subscribeForVideoUsage];
}

id sub_100011590(uint64_t a1, void *a2)
{
  if (([a2 isEqualToString:@"com.apple.UsageTrackingAgent.registration.application"] & 1) == 0)
  {
    sub_1000647D4(a1);
  }

  v3 = *(a1 + 32);

  return [v3 _applicationRegistrationDidFire];
}

id sub_100011F38(uint64_t a1, void *a2)
{
  if (([a2 isEqualToString:@"com.apple.UsageTrackingAgent.registration.web-domain"] & 1) == 0)
  {
    sub_100064A28(a1);
  }

  v3 = *(a1 + 32);

  return [v3 _webDomainRegistrationDidFire];
}

id sub_100012598(uint64_t a1, void *a2)
{
  if (([a2 isEqualToString:@"com.apple.UsageTrackingAgent.registration.now-playing"] & 1) == 0)
  {
    sub_100064B8C(a1);
  }

  v3 = *(a1 + 32);

  return [v3 _nowPlayingRegistrationDidFire];
}

id sub_100013304(uint64_t a1, void *a2)
{
  if (([a2 isEqualToString:@"com.apple.UsageTrackingAgent.registration.video"] & 1) == 0)
  {
    sub_100064ED0(a1);
  }

  v3 = *(a1 + 32);

  return [v3 _videoRegistrationDidFire];
}

id sub_1000150A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:0 syncForImpendingBudgets:0];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064FEC();
    }

    v10 = 0;
  }

  return v10;
}

void sub_1000152E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v30 = v6;
    v31 = a1;
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v38 + 1) + 8 * i) budget];
          [v9 addObject:v14];
          v15 = v8;
          v16 = [v14 darwinNotificationName];
          if ([v15 containsObject:v16])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v43 = v16;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Already posted darwin notification %{public}@, skipping", buf, 0xCu);
            }
          }

          else
          {
            v17 = notify_post([v16 UTF8String]);
            if (v17)
            {
              v18 = v17;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v43 = v16;
                v44 = 1024;
                LODWORD(v45) = v18;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to post darwin notification %{public}@: %u", buf, 0x12u);
              }
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v43 = v16;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posted darwin notification %{public}@", buf, 0xCu);
              }

              [v15 addObject:v16];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v11);
    }

    v19 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v9;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      v24 = @"%@/%@";
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v34 + 1) + 8 * j);
          v27 = [v26 clientIdentifier];
          v28 = [v26 identifier];
          [v19 appendFormat:v24, v27, v28];

          v24 = @", %@/%@";
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
        v24 = @", %@/%@";
      }

      while (v22);
    }

    a1 = v31;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v31 + 32);
      *buf = 138543618;
      v43 = v29;
      v44 = 2114;
      v45 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unregistered alarm for today in %{public}@ and reset budgets: %{public}@", buf, 0x16u);
    }

    v5 = v32;
    v7 = v30;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065064();
  }

  [*(a1 + 40) UTF8String];
  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  [*(a1 + 48) _checkBudgetStatusForAllCurrentUsage];
}

void sub_100015A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100015A30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 56) == 1)
    {
      v7 = *(a1 + 57) ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v9 = *(a1 + 32);
    v13 = v5;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v8 = [v9 _setAlarmsOrNotifyExtensionsForDeviceActivityBudgets:v10 notifyForIntervalEnd:v7 & 1 isEndOfInterval:v7 & 1];

    v11 = [v5 events];
    *(*(*(a1 + 40) + 8) + 24) = [v11 count] != 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006516C();
    }

    v8 = 0;
  }

  return v8;
}

id sub_100015CB0(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished refreshing local device activity due to Duet tombstone event.", v3, 2u);
  }

  return [*(a1 + 32) _calculateDeletedTimeForBudgetsAndEventsAfterUsageDataDeletion:*(a1 + 40)];
}

BOOL sub_100015DD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v53 = 0;
  v41 = v5;
  v9 = [v7 _getRemainingTimeForBudgets:v5 referenceDate:v8 error:&v53];
  v42 = v53;
  v43 = v6;
  v40 = v9;
  if (v9)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v50;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          v16 = [v10 objectForKey:v15];
          [v16 doubleValue];
          v18 = v17;

          [v15 setTimeRemainingBeforeUsageDeletion:v18];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v15 identifier];
            *buf = 138543618;
            v56 = v19;
            v57 = 2048;
            v58 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Caching time remaining for budget %{public}@: %g", buf, 0x16u);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v12);
    }

    v6 = v43;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000651EC();
  }

  v20 = objc_opt_class();
  v21 = *(a1 + 40);
  v48 = 0;
  v22 = [v20 _getRemainingTimeForEvents:v6 referenceDate:v21 error:&v48];
  v23 = v48;
  v24 = v23;
  if (v22)
  {
    v38 = v23;
    v39 = v22;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = v22;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v45;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v44 + 1) + 8 * j);
          v31 = [v25 objectForKey:{v30, v38}];
          [v31 doubleValue];
          v33 = v32;

          [v30 setTimeRemainingBeforeUsageDeletion:v33];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v30 budget];
            v35 = [v34 name];
            *buf = 138543618;
            v56 = v35;
            v57 = 2048;
            v58 = v33;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Caching time remaining for event %{public}@: %g", buf, 0x16u);
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v27);
    }

    v6 = v43;
    v24 = v38;
    v22 = v39;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065264();
  }

  if ([v40 count])
  {
    v36 = 1;
  }

  else
  {
    v36 = [v22 count] != 0;
  }

  return v36;
}

BOOL sub_1000162A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v59 = 0;
  v48 = v5;
  v9 = [v7 _getRemainingTimeForBudgets:v5 referenceDate:v8 error:&v59];
  v49 = v59;
  v47 = v9;
  if (v9)
  {
    v45 = a1;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v56;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          [v15 timeRemainingBeforeUsageDeletion];
          v17 = v16;
          v18 = [v10 objectForKey:v15];
          [v18 doubleValue];
          v20 = v19;

          v21 = fmax(v20 - v17, 0.0);
          [v15 setDeletedTime:v21];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v15 identifier];
            *buf = 138543618;
            v62 = v22;
            v63 = 2048;
            v64 = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Calculated deleted time for budget %{public}@: %g", buf, 0x16u);
          }

          [v15 setTimeRemainingBeforeUsageDeletion:0.0];
        }

        v12 = [v10 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v12);
    }

    a1 = v45;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000651EC();
  }

  v23 = objc_opt_class();
  v24 = *(a1 + 40);
  v54 = 0;
  v25 = [v23 _getRemainingTimeForEvents:v6 referenceDate:v24 error:&v54];
  v26 = v54;
  v27 = v26;
  if (v25)
  {
    v44 = v26;
    v46 = v25;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v28 = v25;
    v29 = [v28 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v51;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v50 + 1) + 8 * j);
          [v33 timeRemainingBeforeUsageDeletion];
          v35 = v34;
          v36 = [v28 objectForKey:v33];
          [v36 doubleValue];
          v38 = v37;

          v39 = fmax(v38 - v35, 0.0);
          [v33 setDeletedTime:v39];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v33 budget];
            v41 = [v40 name];
            *buf = 138543618;
            v62 = v41;
            v63 = 2048;
            v64 = v39;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Calculated deleted time for event %{public}@: %g", buf, 0x16u);
          }

          [v33 setTimeRemainingBeforeUsageDeletion:0.0];
        }

        v30 = [v28 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v30);
    }

    v27 = v44;
    v25 = v46;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065264();
  }

  if ([v47 count])
  {
    v42 = 1;
  }

  else
  {
    v42 = [v25 count] != 0;
  }

  return v42;
}

uint64_t sub_1000167A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v74 = objc_opt_new();
  if (v6 && v7)
  {
    v9 = objc_opt_new();
    v88 = 0;
    v10 = [objc_opt_class() _getRemainingTimeForBudgets:v6 referenceDate:v9 error:&v88];
    v60 = v88;
    v61 = v10;
    v64 = v7;
    v65 = v6;
    v62 = v9;
    v63 = v8;
    if (v10)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v84 objects:v99 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v85;
        v66 = *v85;
        v67 = v11;
        do
        {
          v15 = 0;
          v69 = v13;
          do
          {
            if (*v85 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v84 + 1) + 8 * v15);
            v17 = [v11 objectForKey:v16];
            [v17 doubleValue];
            v19 = v18;

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v16 clientIdentifier];
              v21 = [v16 identifier];
              *buf = 138543874;
              v90 = v20;
              v91 = 2114;
              v92 = v21;
              v93 = 2048;
              v94 = v19;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@ has %g seconds remaining", buf, 0x20u);
            }

            if (v19 > 0.0)
            {
              v70 = v15;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v22 = [v16 notificationTimes];
              v23 = [v22 countByEnumeratingWithState:&v80 objects:v98 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v81;
                do
                {
                  for (i = 0; i != v24; i = i + 1)
                  {
                    if (*v81 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v80 + 1) + 8 * i);
                    if ([v27 notificationWasPosted])
                    {
                      [v27 remainingTime];
                      if (v19 > v28)
                      {
                        v29 = v28;
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                        {
                          v30 = [v16 clientIdentifier];
                          v31 = [v16 identifier];
                          *buf = 138543874;
                          v90 = v30;
                          v91 = 2114;
                          v92 = v31;
                          v93 = 2048;
                          v94 = v29;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@ cleared posted notification for %g seconds", buf, 0x20u);
                        }

                        v32 = v16;
                        v33 = v74;
                        v34 = [v32 darwinNotificationName];
                        if ([v33 containsObject:v34])
                        {
                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138543362;
                            v90 = v34;
                            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Already posted darwin notification %{public}@, skipping", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v35 = notify_post([v34 UTF8String]);
                          if (v35)
                          {
                            v36 = v35;
                            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138543618;
                              v90 = v34;
                              v91 = 1024;
                              LODWORD(v92) = v36;
                              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to post darwin notification %{public}@: %u", buf, 0x12u);
                            }
                          }

                          else
                          {
                            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138543362;
                              v90 = v34;
                              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posted darwin notification %{public}@", buf, 0xCu);
                            }

                            [v33 addObject:v34];
                          }
                        }

                        [v27 setNotificationWasPosted:0];
                      }
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v80 objects:v98 count:16];
                }

                while (v24);
              }

              v14 = v66;
              v11 = v67;
              v13 = v69;
              v15 = v70;
            }

            v15 = v15 + 1;
          }

          while (v15 != v13);
          v13 = [v11 countByEnumeratingWithState:&v84 objects:v99 count:16];
        }

        while (v13);
      }

      v7 = v64;
      v6 = v65;
      v9 = v62;
      v8 = v63;
      v10 = v61;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000651EC();
    }

    v79 = 0;
    v38 = [objc_opt_class() _getRemainingTimeForEvents:v7 referenceDate:v9 error:&v79];
    v39 = v79;
    v40 = v39;
    if (v38)
    {
      v71 = v39;
      v72 = v38;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v41 = v38;
      v42 = [v41 countByEnumeratingWithState:&v75 objects:v97 count:16];
      if (v42)
      {
        v43 = v42;
        v37 = 0;
        v44 = *v76;
        v73 = v41;
        do
        {
          for (j = 0; j != v43; j = j + 1)
          {
            if (*v76 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v75 + 1) + 8 * j);
            v47 = [v41 objectForKey:v46];
            [v47 doubleValue];
            v49 = v48;

            v50 = [v46 name];
            v51 = [v46 budget];
            v52 = [v51 name];
            v53 = [v51 clientIdentifier];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              v90 = v50;
              v91 = 2114;
              v92 = v52;
              v93 = 2114;
              v94 = *&v53;
              v95 = 2048;
              v96 = v49;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@/%{public}@ has %g seconds remaining", buf, 0x2Au);
            }

            if (v49 > 0.0)
            {
              v54 = v44;
              v55 = *(a1 + 32);
              [v51 extensionIdentifier];
              v57 = v56 = v43;
              LODWORD(v55) = [v55 _notifyExtensionThatEventDidUnreachThreshold:v50 activity:v52 clientIdentifier:v53 extensionIdentifier:v57];

              v43 = v56;
              v37 |= v55;
              v44 = v54;
              v41 = v73;
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v75 objects:v97 count:16];
        }

        while (v43);
      }

      else
      {
        v37 = 0;
      }

      v7 = v64;
      v6 = v65;
      v9 = v62;
      v8 = v63;
      v10 = v61;
      v40 = v71;
      v38 = v72;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100065264();
      }

      v37 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000652DC();
    }

    v37 = 0;
  }

  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  v58 = [v74 count] != 0;

  return (v58 | v37) & 1;
}

id sub_100017194(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _setAlarmsOrNotifyExtensionsForDeviceActivityBudgets:v5 notifyForIntervalEnd:1 isEndOfInterval:0];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065354();
    }

    v7 = 0;
  }

  return v7;
}

id sub_100017940(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.application" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000653CC();
    }

    v10 = 0;
  }

  return v10;
}

id sub_100017B54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.web-domain" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065448();
    }

    v10 = 0;
  }

  return v10;
}

id sub_100017D68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.now-playing" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000654C4();
    }

    v10 = 0;
  }

  return v10;
}

id sub_100017F7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.video" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065540();
    }

    v10 = 0;
  }

  return v10;
}

id sub_100018190(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.video" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000655BC();
    }

    v10 = 0;
  }

  return v10;
}

void sub_10001A5C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      v7 = 138543362;
      v8 = v3;
      v5 = "Failed to upload DeviceActivity data %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v7, 0xCu);
    }
  }

  else if (v4)
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    v5 = "Successfully uploaded DeviceActivity data for budgets and events %{public}@";
    goto LABEL_6;
  }
}

void sub_10001A6A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000656B4();
    }

    [*(a1 + 32) setLastSyncDate:0];
  }
}

void sub_10001B960(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065970();
  }
}

void sub_10001B9B0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000659EC();
  }
}

void sub_10001BCDC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065A68();
  }
}

void sub_10001BD2C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065AE4();
  }
}

void sub_10001C0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C0C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065B60();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10001C12C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065BE0();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10001C3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C3E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065C60();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10001D0D8(id a1)
{
  qword_100091C60 = objc_opt_new();

  _objc_release_x1();
}

void sub_10001D214(id a1, id a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [[NSDate alloc] initWithTimeInterval:v3 sinceDate:-86400.0];
  v5 = [[NSDateInterval alloc] initWithStartDate:v4 endDate:v3];
  v6 = objc_opt_new();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D324;
  v8[3] = &unk_1000865B8;
  v9 = v2;
  v7 = v2;
  [v6 queryForUncategorizedLocalWebUsageDuringInterval:v5 completionHandler:v8];
}

void sub_10001D324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0x404E000000000000;
    v12 = 0;
    v13[0] = &v12;
    v13[1] = 0x3032000000;
    v13[2] = sub_10001D564;
    v13[3] = sub_10001D574;
    v14 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001D57C;
    v11[3] = &unk_100086590;
    v11[4] = v15;
    v11[5] = &v12;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
    v7 = *(v13[0] + 40);
    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v8)
      {
        sub_100065F28(v13);
      }

      v9 = [[_DPStringRecorder alloc] initWithKey:@"com.apple.screentime.usagetracking.UnknownDomain"];
      v16 = *(v13[0] + 40);
      v10 = [NSArray arrayWithObjects:&v16 count:1];
      [v9 record:v10];
    }

    else if (v8)
    {
      sub_100065FB0();
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(v15, 8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065FF8(v6);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001D534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001D57C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  [a3 doubleValue];
  v7 = *(*(a1 + 32) + 8);
  if (v6 >= *(v7 + 24))
  {
    *(v7 + 24) = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

uint64_t sub_10001EC30(uint64_t a1)
{
  *(a1 + 8) = sub_10001ECB4(&qword_100090D68, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
  result = sub_10001ECB4(&qword_100090D70, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001ECB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001ED24(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090DF8, type metadata accessor for CKError, &unk_10006CD58);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10001ED90(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090DF8, type metadata accessor for CKError, &unk_10006CD58);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10001EE00(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError, &unk_10006CD9C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10001EE80(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10001EEFC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10001EF80@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10001EFC8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10001F008(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10001F060(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10001F0E4(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError, &unk_10006CD9C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10001F150(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError, &unk_10006CD9C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10001F1BC(void *a1, uint64_t a2)
{
  v4 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError, &unk_10006CD9C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10001F270(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError, &unk_10006CD9C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10001F2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_10001F34C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001F36C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10001F3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError, &unk_10006CD9C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_10001F688()
{
  result = qword_100090E20;
  if (!qword_100090E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090E20);
  }

  return result;
}

uint64_t sub_10001F780(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090EB0, type metadata accessor for Identifier, &unk_10006CF64);
  v3 = sub_10001ECB4(&qword_100090EB8, type metadata accessor for Identifier, &unk_10006CF0C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10001F918@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10001F960@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_10001F9DC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10001FA28(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090F00, type metadata accessor for URLResourceKey, &unk_10006D1E8);
  v3 = sub_10001ECB4(&qword_100090F08, type metadata accessor for URLResourceKey, &unk_10006D188);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_10001FBF0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

uint64_t sub_10001FC78(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = sub_10001FD8C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10004ED48;
  v8[3] = &unk_100086858;
  v6 = _Block_copy(v8);

  [v2 scheduleWithBlock:v6];
  _Block_release(v6);
}

uint64_t sub_10001FD54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FDB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FDD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_10001FDFC, 0, 0);
}

uint64_t sub_10001FDFC()
{
  v1 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001FF38;
  v3 = swift_continuation_init();
  v0[17] = sub_100020818(&qword_100090FC0, qword_10006D398);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002009C;
  v0[13] = &unk_100086948;
  v0[14] = v3;
  [v1 categoriesForBundleIDs:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001FF38()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 168);
  if (*(v1 + 48))
  {
    swift_willThrow();

    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 144);

    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_10002009C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100020908((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100020818(&qword_100091370, &qword_10006D390);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000207CC();
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10002018C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_1000201B0, 0, 0);
}

uint64_t sub_1000201B0()
{
  v1 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100020978;
  v3 = swift_continuation_init();
  v0[17] = sub_100020818(&qword_100090FC0, qword_10006D398);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002009C;
  v0[13] = &unk_100086920;
  v0[14] = v3;
  [v1 categoriesForDomainNames:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000202EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100020310, 0, 0);
}

uint64_t sub_100020310()
{
  v1 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100020978;
  v3 = swift_continuation_init();
  v0[17] = sub_100020818(&qword_100090FB8, &qword_10006D388);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002044C;
  v0[13] = &unk_1000868F8;
  v0[14] = v3;
  [v1 unCategorizedDomainsFromDomains:isa withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002044C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100020908((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100020818(&qword_100091370, &qword_10006D390);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10002053C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000207CC();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1000205F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = *v7;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16[4] = a2;
  v16[5] = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10002053C;
  v16[3] = a6;
  v14 = _Block_copy(v16);

  [v12 *a7];
  _Block_release(v14);
}

uint64_t sub_1000206EC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_10002075C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1000207B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000207CC()
{
  result = qword_100090FB0;
  if (!qword_100090FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100090FB0);
  }

  return result;
}

uint64_t sub_100020818(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100020860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000208BC(void *a1)
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

void *sub_100020908(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_100020980(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v7 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100020CC4(a1, a2);
  v8 = sub_100020C04();
  [v8 setRequiresSecureCoding:1];
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:v8];
  sub_100020D64(a1, a2);
  sub_100020D64(a1, a2);

  if (!v9)
  {
    return 0;
  }

  return v9;
}

id sub_100020C04()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100020CC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100020CD8(a1, a2);
  }

  return a1;
}

uint64_t sub_100020CD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100020D2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100020D64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100020D78(a1, a2);
  }

  return a1;
}

uint64_t sub_100020D78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100020DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v12[-v8 - 8];
  sub_100020F40(a1, v12);
  sub_100020818(&qword_100091018, qword_10006D470);
  swift_dynamicCast();
  (*(a3 + 64))(v9, a2, a3);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_100020F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100020FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v12[-v8 - 8];
  sub_100020F40(a1, v12);
  sub_100020818(&qword_100091018, qword_10006D470);
  swift_dynamicCast();
  (*(a3 + 32))(v9, a2, a3);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1000210EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10004EBCC;
  v8[3] = &unk_100086998;
  v6 = _Block_copy(v8);

  [v5 saveRecordZone:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_1000211A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10004EBCC;
  v8[3] = &unk_100086970;
  v6 = _Block_copy(v8);

  [v5 deleteRecordWithID:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_100021264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100021290@<X0>(uint64_t *a1@<X8>)
{
  result = related decl 'e' for CKErrorCode.clientRecord.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000212BC@<X0>(uint64_t *a1@<X8>)
{
  result = related decl 'e' for CKErrorCode.serverRecord.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000212E8(uint64_t a1)
{
  sub_100021388(&qword_100090E30, &unk_10006CD9C);
  _BridgedStoredNSError.code.getter();
  return v2;
}

uint64_t sub_100021344(uint64_t a1)
{
  result = sub_100021388(&qword_100090DF0, &unk_10006CFEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100021388(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000213E0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_10002141C(uint64_t (*a1)(), uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  return CKModifyRecordsOperation.perRecordSaveBlock.setter();
}

void sub_10002148C(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    sub_100021848(0, &qword_1000917B0, CKRecord_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setRecordsToSave:isa];
}

uint64_t sub_10002154C(uint64_t (*a1)(), uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  return CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter();
}

void sub_1000215E0(void *a3@<X8>)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100021848(0, &qword_100091150, CKDeviceToDeviceShareInvitationToken_ptr);
  sub_1000217AC();
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithShareURLs:isa invitationTokensByShareURL:v6];

  *a3 = v7;
}

void sub_1000216F4(unint64_t *a2@<X3>, void *a3@<X4>, SEL *a4@<X5>, void *a5@<X8>)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100021848(0, a2, a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 *a4];

  *a5 = v11;
}

unint64_t sub_1000217AC()
{
  result = qword_100091158;
  if (!qword_100091158)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091158);
  }

  return result;
}

uint64_t sub_100021804()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021848(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_100021894()
{
  v1 = [*v0 recordID];

  return v1;
}

uint64_t sub_1000218CC()
{
  v1 = [*v0 participants];
  sub_100021A44();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100021924@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 URL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1000219C8(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecordZoneID:a1];

  *a2 = v4;
}

unint64_t sub_100021A44()
{
  result = qword_100091860;
  if (!qword_100091860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100091860);
  }

  return result;
}

id sub_100021A90()
{
  v1 = [*v0 lookupInfo];

  return v1;
}

id sub_100021AE4@<X0>(void *a1@<X8>)
{
  result = [*v1 userIdentity];
  *a1 = result;
  return result;
}

id sub_100021B20()
{
  v1 = [*v0 invitationToken];

  return v1;
}

id sub_100021B68()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

uint64_t sub_100021BB0()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dataForKey:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

double sub_100021C30@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_100021E78(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for USDeviceActivityAuthorization();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100021ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Calendar();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 2)
  {
    v26 = v16;
    if (a1)
    {
      v28[0] = a1;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }

    else
    {
      static Calendar.current.getter();
      static Date.now.getter();
      Calendar.startOfDay(for:)();
      v24 = *(v8 + 8);
      v24(v11, v7);
      (*(v4 + 104))(v6, enum case for Calendar.Component.day(_:), v3);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v4 + 8))(v6, v3);
      v24(v13, v7);
      return (*(v15 + 8))(v18, v26);
    }
  }

  else
  {
    if (qword_100090CB8 != -1)
    {
      swift_once();
    }

    sub_100020F40(&qword_100092D88, v28);
    v19 = v29;
    v20 = v30;
    sub_100020908(v28, v29);
    (*(v20 + 24))(v31, 0x726665527473616CLL, 0xEF65746144687365, v19, v20);
    if (v31[3])
    {
      v21 = v27;
      v22 = swift_dynamicCast();
      (*(v8 + 56))(v21, v22 ^ 1u, 1, v7);
      return sub_1000208BC(v28);
    }

    else
    {
      sub_1000208BC(v28);
      sub_100028FF4(v31, &qword_100091360, &unk_10006D960);
      return (*(v8 + 56))(v27, 1, 1, v7);
    }
  }

  return result;
}

Swift::Int sub_1000222C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100022334(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *sub_100022378@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
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

id sub_100022394()
{
  result = [objc_allocWithZone(type metadata accessor for DeviceActivityCollector()) init];
  qword_100091210 = result;
  return result;
}

uint64_t sub_1000223C4()
{
  result = sub_100021848(0, &qword_1000913E0, NSBackgroundActivityScheduler_ptr);
  qword_100092D70 = result;
  *algn_100092D78 = &off_100086800;
  return result;
}

id sub_100022404()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_backgroundActivity];
  if (qword_100090CA8 != -1)
  {
    swift_once();
  }

  v3 = *algn_100092D78;
  *v2 = (*(*algn_100092D78 + 8))(0xD000000000000040, 0x800000010006FAC0);
  *(v2 + 1) = v3;
  v4 = OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector;
  type metadata accessor for _DeviceActivityCollector();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  if (qword_100090CC0 != -1)
  {
    swift_once();
  }

  v6 = qword_100092DB0;
  v7 = *algn_100092DB8;
  v8 = *(*algn_100092DB8 + 16);
  v5[17] = qword_100092DB0;
  v5[18] = v7;
  sub_1000283C4(v5 + 14);
  v8(v6, v7);
  v5[19] = 0;
  *&v1[v4] = v5;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for DeviceActivityCollector();
  v9 = objc_msgSendSuper2(&v14, "init");
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:"localeDidChangeWithNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
  [v12 addObserver:v11 selector:"timeZoneDidChangeWithNotification:" name:NSSystemTimeZoneDidChangeNotification object:0];

  return v11;
}

uint64_t sub_10002266C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100022698, v1, 0);
}

uint64_t sub_100022698()
{
  sub_100024088(1, *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022748(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100020D2C(v11, qword_100092E98);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 2u);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v7;
  v17 = v7;
  sub_100035B98(0, 0, v10, a4, v16);
}

uint64_t sub_100022928()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100022954, v1, 0);
}

uint64_t sub_100022954()
{
  sub_100024740(2, *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000229DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100022AC8()
{
  v1 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v4 = qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_backgroundActivity;
  v5 = *(qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_backgroundActivity + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  swift_unknownObjectRetain();
  v7(1, ObjectType, v5);
  swift_unknownObjectRelease();
  v8 = *(v4 + 8);
  v9 = swift_getObjectType();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = *(v8 + 40);
  swift_unknownObjectRetain();
  v11(sub_10002C574, v10, v9, v8);
  swift_unknownObjectRelease();

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v0;
  sub_100035B98(0, 0, v3, &unk_10006DA30, v13);
}

uint64_t sub_100022CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100020D2C(v9, qword_100092E98);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting background activity to collect device activity.", v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100035B98(0, 0, v8, &unk_10006DA50, v14);
}

uint64_t sub_100022EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_100022ED0, 0, 0);
}

uint64_t sub_100022ED0()
{
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v1 = qword_100091210;
  v2 = OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector;
  v0[4] = qword_100091210;
  v0[5] = v2;
  v3 = *(v1 + v2);
  v0[6] = v3;

  return _swift_task_switch(sub_100022F88, v3, 0);
}

uint64_t sub_100022F88()
{
  sub_100029F04();

  return _swift_task_switch(sub_100022FF8, 0, 0);
}

uint64_t sub_100022FF8()
{
  v1 = *(v0[4] + v0[5]);
  v0[7] = v1;

  v0[8] = static _SegmentInterval.allCases.getter();

  return _swift_task_switch(sub_10002307C, v1, 0);
}

uint64_t sub_10002307C()
{
  sub_10002A72C(1, *(v0 + 64), 1, *(v0 + 56), *(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023114(uint64_t (*a1)(uint64_t))
{
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092E98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished background activity to collect device activity.", v5, 2u);
  }

  return a1(1);
}

uint64_t sub_100023228()
{
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v1 = qword_100091210;
  v2 = OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector;
  v0[2] = qword_100091210;
  v0[3] = v2;
  v3 = *(v1 + v2);
  v0[4] = v3;

  return _swift_task_switch(sub_1000232E0, v3, 0);
}

uint64_t sub_1000232E0()
{
  sub_100029F04();

  return _swift_task_switch(sub_100023350, 0, 0);
}

uint64_t sub_100023350()
{
  v1 = *(v0[2] + v0[3]);
  v0[5] = v1;

  return _swift_task_switch(sub_1000233C8, v1, 0);
}

uint64_t sub_1000233C8()
{
  sub_100024DF8(3, *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

void sub_100023444(const char *a1)
{
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092E98);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10002355C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = os_transaction_create();
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100020D2C(v14, qword_100092E98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Collecting local device activity data", v17, 2u);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v5;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2 & 1;
  *(v19 + 56) = a3;
  *(v19 + 64) = a4;
  *(v19 + 72) = v13;
  sub_100029DB4(a3, a4);
  sub_100035B98(0, 0, v12, &unk_10006DA18, v19);
}

uint64_t sub_100023768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 40) = v10;
  *(v8 + 64) = a6;
  *(v8 + 16) = a5;
  *(v8 + 24) = a7;
  return _swift_task_switch(sub_100023798, 0, 0);
}

uint64_t sub_100023798()
{
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[3];
  v3 = *(qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector);
  v0[6] = v3;
  sub_100029DB4(v2, v1);
  swift_unknownObjectRetain();

  v0[7] = static _SegmentInterval.allCases.getter();

  return _swift_task_switch(sub_100023864, v3, 0);
}

uint64_t sub_100023864()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  sub_10002B694(*(v0 + 16), *(v0 + 56), *(v0 + 64), *(v0 + 48), v2, v1, *(v0 + 40));

  sub_100029B58(v2, v1);
  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000239D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100020D2C(v9, qword_100092E98);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Deleting local device activity data", v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;
  sub_100029DB4(a1, a2);
  sub_100035B98(0, 0, v8, &unk_10006DA00, v14);
}

uint64_t sub_100023BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_100023BD4, 0, 0);
}

uint64_t sub_100023BD4()
{
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector);
  *(v0 + 32) = v1;

  *(v0 + 40) = static _SegmentInterval.allCases.getter();

  return _swift_task_switch(sub_100023C8C, v1, 0);
}

uint64_t sub_100023C8C()
{
  sub_100028A0C(1, *(v0 + 40));

  return _swift_task_switch(sub_100023D0C, 0, 0);
}

uint64_t sub_100023D0C()
{
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100020D2C(v1, qword_100092E98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished deleting local device activity data", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    (*(v0 + 16))();
  }

  v6 = *(v0 + 8);

  return v6();
}

id sub_100023ED8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeviceActivityCollector();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100023F7C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for DeviceActivityAuthorization();
  qword_100092D80 = result;
  return result;
}

uint64_t sub_100023FA0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  result = sub_100021848(0, &qword_100091380, NSUserDefaults_ptr);
  qword_100092DA0 = result;
  unk_100092DA8 = &off_100086AB0;
  qword_100092D88 = v0;
  return result;
}

uint64_t sub_100024010()
{
  result = type metadata accessor for DeviceActivityDataSource();
  qword_100092DB0 = result;
  *algn_100092DB8 = &off_100086DA8;
  return result;
}

double sub_100024040()
{
  qword_100092DE0 = 0;
  result = 0.0;
  xmmword_100092DC0 = 0u;
  *algn_100092DD0 = 0u;
  return result;
}

uint64_t sub_100024058()
{
  result = type metadata accessor for SyncCoordinator();
  qword_100092DE8 = result;
  unk_100092DF0 = &off_100087198;
  return result;
}

void sub_100024088(char a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for Date();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100020818(&qword_1000913C0, &qword_10006D9B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_100020818(&qword_1000913A0, &unk_10006D990);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  if (a1)
  {
    v46 = v9;
    v21 = sub_100028540();
    v20 = v21;
    if ((a1 & 2) == 0)
    {
      if (v21)
      {
LABEL_12:
        sub_100020818(&qword_1000913C8, &qword_10006D9B8);
        v29 = type metadata accessor for _SegmentInterval();
        v30 = *(v29 - 8);
        v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_10006D8A0;
        (*(v30 + 104))(v32 + v31, enum case for _SegmentInterval.weekly(_:), v29);
LABEL_13:
        sub_100028A0C(0, v32);
        sub_100026020(0, v32, 1, v49, &unk_100086B90, sub_1000226FC, &unk_10006D9F0, sub_1000226FC);

        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_19;
    }

    v46 = v9;
    v20 = 0;
  }

  sub_1000254B0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v22 = &qword_1000913C0;
    v23 = &qword_10006D9B0;
    v24 = v12;
    goto LABEL_11;
  }

  sub_100029830(v12, v19, &qword_1000913A0, &unk_10006D990);
  sub_1000297C4(v19, v17, &qword_1000913A0, &unk_10006D990);
  v25 = *(v13 + 48);
  v26 = v7;
  v27 = *(v7 + 48);
  v28 = v6;
  if (v27(v17, 1, v6) == 1)
  {
    sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
    (*(v26 + 8))(&v17[v25], v6);
    v22 = &qword_100091390;
    v23 = &unk_10006D980;
    v24 = v17;
LABEL_11:
    sub_100028FF4(v24, v22, v23);
    if (v20)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v33 = v46;
  (*(v26 + 32))(v46, v17, v28);
  v45 = *(v26 + 8);
  v45(&v17[v25], v28);
  Date.init()();
  v46 = v33;
  v34 = TimeZone.secondsFromGMT(for:)();
  v35 = v48;
  v36 = *(v47 + 8);
  v36(v5, v48);
  Date.init()();
  v37 = TimeZone.secondsFromGMT(for:)();
  v36(v5, v35);
  v38 = v34 - v37;
  if (__OFSUB__(v34, v37))
  {
    __break(1u);
    return;
  }

  if (v38)
  {
    if (__ROR8__(0xFEDCBA987654321 * v38 + 0x91A2B3C4D5E6F0, 4) < 0x123456789ABCDFuLL)
    {
      sub_100020818(&qword_1000913C8, &qword_10006D9B8);
      v39 = type metadata accessor for _SegmentInterval();
      v40 = *(v39 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10006D890;
      v43 = *(v40 + 104);
      v43(v32 + v42, enum case for _SegmentInterval.daily(_:), v39);
      v43(v32 + v42 + v41, enum case for _SegmentInterval.weekly(_:), v39);
    }

    else
    {
      v32 = static _SegmentInterval.allCases.getter();
    }

    v45(v46, v28);
    sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
    goto LABEL_13;
  }

  v45(v46, v28);
  sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
LABEL_19:
  sub_1000226FC();
}

void sub_100024740(char a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for Date();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100020818(&qword_1000913C0, &qword_10006D9B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_100020818(&qword_1000913A0, &unk_10006D990);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  if (a1)
  {
    v46 = v9;
    v21 = sub_100028540();
    v20 = v21;
    if ((a1 & 2) == 0)
    {
      if (v21)
      {
LABEL_12:
        sub_100020818(&qword_1000913C8, &qword_10006D9B8);
        v29 = type metadata accessor for _SegmentInterval();
        v30 = *(v29 - 8);
        v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_10006D8A0;
        (*(v30 + 104))(v32 + v31, enum case for _SegmentInterval.weekly(_:), v29);
LABEL_13:
        sub_100028A0C(0, v32);
        sub_100026020(0, v32, 1, v49, &unk_100086B40, sub_1000229B8, &unk_10006D9D0, sub_1000229B8);

        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_19;
    }

    v46 = v9;
    v20 = 0;
  }

  sub_1000254B0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v22 = &qword_1000913C0;
    v23 = &qword_10006D9B0;
    v24 = v12;
    goto LABEL_11;
  }

  sub_100029830(v12, v19, &qword_1000913A0, &unk_10006D990);
  sub_1000297C4(v19, v17, &qword_1000913A0, &unk_10006D990);
  v25 = *(v13 + 48);
  v26 = v7;
  v27 = *(v7 + 48);
  v28 = v6;
  if (v27(v17, 1, v6) == 1)
  {
    sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
    (*(v26 + 8))(&v17[v25], v6);
    v22 = &qword_100091390;
    v23 = &unk_10006D980;
    v24 = v17;
LABEL_11:
    sub_100028FF4(v24, v22, v23);
    if (v20)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v33 = v46;
  (*(v26 + 32))(v46, v17, v28);
  v45 = *(v26 + 8);
  v45(&v17[v25], v28);
  Date.init()();
  v46 = v33;
  v34 = TimeZone.secondsFromGMT(for:)();
  v35 = v48;
  v36 = *(v47 + 8);
  v36(v5, v48);
  Date.init()();
  v37 = TimeZone.secondsFromGMT(for:)();
  v36(v5, v35);
  v38 = v34 - v37;
  if (__OFSUB__(v34, v37))
  {
    __break(1u);
    return;
  }

  if (v38)
  {
    if (__ROR8__(0xFEDCBA987654321 * v38 + 0x91A2B3C4D5E6F0, 4) < 0x123456789ABCDFuLL)
    {
      sub_100020818(&qword_1000913C8, &qword_10006D9B8);
      v39 = type metadata accessor for _SegmentInterval();
      v40 = *(v39 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10006D890;
      v43 = *(v40 + 104);
      v43(v32 + v42, enum case for _SegmentInterval.daily(_:), v39);
      v43(v32 + v42 + v41, enum case for _SegmentInterval.weekly(_:), v39);
    }

    else
    {
      v32 = static _SegmentInterval.allCases.getter();
    }

    v45(v46, v28);
    sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
    goto LABEL_13;
  }

  v45(v46, v28);
  sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
LABEL_19:
  sub_1000229B8();
}

void sub_100024DF8(char a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for Date();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100020818(&qword_1000913C0, &qword_10006D9B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_100020818(&qword_1000913A0, &unk_10006D990);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  if (a1)
  {
    v46 = v9;
    v21 = sub_100028540();
    v20 = v21;
    if ((a1 & 2) == 0)
    {
      if (v21)
      {
LABEL_12:
        sub_100020818(&qword_1000913C8, &qword_10006D9B8);
        v29 = type metadata accessor for _SegmentInterval();
        v30 = *(v29 - 8);
        v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_10006D8A0;
        (*(v30 + 104))(v32 + v31, enum case for _SegmentInterval.weekly(_:), v29);
LABEL_13:
        sub_100028A0C(0, v32);
        sub_100026020(0, v32, 1, v49, &unk_100086CF8, sub_100023438, &unk_10006DA38, sub_100023438);

        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_19;
    }

    v46 = v9;
    v20 = 0;
  }

  sub_1000254B0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v22 = &qword_1000913C0;
    v23 = &qword_10006D9B0;
    v24 = v12;
    goto LABEL_11;
  }

  sub_100029830(v12, v19, &qword_1000913A0, &unk_10006D990);
  sub_1000297C4(v19, v17, &qword_1000913A0, &unk_10006D990);
  v25 = *(v13 + 48);
  v26 = v7;
  v27 = *(v7 + 48);
  v28 = v6;
  if (v27(v17, 1, v6) == 1)
  {
    sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
    (*(v26 + 8))(&v17[v25], v6);
    v22 = &qword_100091390;
    v23 = &unk_10006D980;
    v24 = v17;
LABEL_11:
    sub_100028FF4(v24, v22, v23);
    if (v20)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v33 = v46;
  (*(v26 + 32))(v46, v17, v28);
  v45 = *(v26 + 8);
  v45(&v17[v25], v28);
  Date.init()();
  v46 = v33;
  v34 = TimeZone.secondsFromGMT(for:)();
  v35 = v48;
  v36 = *(v47 + 8);
  v36(v5, v48);
  Date.init()();
  v37 = TimeZone.secondsFromGMT(for:)();
  v36(v5, v35);
  v38 = v34 - v37;
  if (__OFSUB__(v34, v37))
  {
    __break(1u);
    return;
  }

  if (v38)
  {
    if (__ROR8__(0xFEDCBA987654321 * v38 + 0x91A2B3C4D5E6F0, 4) < 0x123456789ABCDFuLL)
    {
      sub_100020818(&qword_1000913C8, &qword_10006D9B8);
      v39 = type metadata accessor for _SegmentInterval();
      v40 = *(v39 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10006D890;
      v43 = *(v40 + 104);
      v43(v32 + v42, enum case for _SegmentInterval.daily(_:), v39);
      v43(v32 + v42 + v41, enum case for _SegmentInterval.weekly(_:), v39);
    }

    else
    {
      v32 = static _SegmentInterval.allCases.getter();
    }

    v45(v46, v28);
    sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
    goto LABEL_13;
  }

  v45(v46, v28);
  sub_100028FF4(v19, &qword_1000913A0, &unk_10006D990);
LABEL_19:
  sub_100023438();
}

uint64_t sub_1000254B0@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = sub_100020818(&qword_100091388, &qword_10006D978);
  __chkstk_darwin(v1);
  v3 = &v56[-v2];
  v62 = sub_100020818(&qword_100091390, &unk_10006D980);
  v4 = __chkstk_darwin(v62);
  v61 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v8 = &v56[-v7];
  v9 = __chkstk_darwin(v6);
  v11 = &v56[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v56[-v13];
  __chkstk_darwin(v12);
  v16 = &v56[-v15];
  v17 = type metadata accessor for TimeZone();
  v67 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v23 = &v56[-v22];
  __chkstk_darwin(v21);
  v68 = &v56[-v24];
  static TimeZone.current.getter();
  if (qword_100090CC8 != -1)
  {
    swift_once();
  }

  sub_1000297C4(&xmmword_100092DC0, &v69, &qword_100091398, &unk_10006DC00);
  v63 = v20;
  v64 = v8;
  v65 = v11;
  if (v70)
  {
    sub_100028428(&v69, v71);
  }

  else
  {
    v72 = type metadata accessor for DeviceActivityDataStore();
    v73 = &protocol witness table for DeviceActivityDataStore;
    sub_1000283C4(v71);
    DeviceActivityDataStore.init()();
    if (v70)
    {
      sub_100028FF4(&v69, &qword_100091398, &unk_10006DC00);
    }
  }

  sub_100020908(v71, v72);
  dispatch thunk of DeviceActivityDataStoring.localTimeZone()();
  sub_1000208BC(v71);
  v25 = v67;
  v26 = *(v67 + 16);
  v59 = v67 + 16;
  v58 = v26;
  v26(v14, v68, v17);
  (*(v25 + 56))(v14, 0, 1, v17);
  v27 = *(v1 + 48);
  sub_1000297C4(v14, v3, &qword_100091390, &unk_10006D980);
  v60 = v16;
  sub_1000297C4(v16, &v3[v27], &qword_100091390, &unk_10006D980);
  v28 = *(v25 + 48);
  if (v28(v3, 1, v17) == 1)
  {
    sub_100028FF4(v14, &qword_100091390, &unk_10006D980);
    v29 = v28(&v3[v27], 1, v17);
    v30 = v67;
    if (v29 == 1)
    {
      sub_100028FF4(v3, &qword_100091390, &unk_10006D980);
LABEL_16:
      sub_100028FF4(v60, &qword_100091390, &unk_10006D980);
      (*(v30 + 8))(v68, v17);
      v35 = sub_100020818(&qword_1000913A0, &unk_10006D990);
      return (*(*(v35 - 8) + 56))(v66, 1, 1, v35);
    }

    goto LABEL_12;
  }

  v31 = v65;
  sub_1000297C4(v3, v65, &qword_100091390, &unk_10006D980);
  if (v28(&v3[v27], 1, v17) == 1)
  {
    sub_100028FF4(v14, &qword_100091390, &unk_10006D980);
    v30 = v67;
    (*(v67 + 8))(v31, v17);
LABEL_12:
    sub_100028FF4(v3, &qword_100091388, &qword_10006D978);
    goto LABEL_13;
  }

  v32 = v67;
  (*(v67 + 32))(v23, &v3[v27], v17);
  sub_100028440(&qword_1000913B0, 255, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v32 + 8);
  v33(v23, v17);
  v34 = v14;
  v30 = v32;
  sub_100028FF4(v34, &qword_100091390, &unk_10006D980);
  v33(v31, v17);
  sub_100028FF4(v3, &qword_100091390, &unk_10006D980);
  if (v57)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_1000297C4(&xmmword_100092DC0, &v69, &qword_100091398, &unk_10006DC00);
  if (v70)
  {
    sub_100028428(&v69, v71);
  }

  else
  {
    v72 = type metadata accessor for DeviceActivityDataStore();
    v73 = &protocol witness table for DeviceActivityDataStore;
    sub_1000283C4(v71);
    DeviceActivityDataStore.init()();
    if (v70)
    {
      sub_100028FF4(&v69, &qword_100091398, &unk_10006DC00);
    }
  }

  sub_100020908(v71, v72);
  dispatch thunk of DeviceActivityDataStoring.write(localTimeZone:)();
  sub_1000208BC(v71);
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100020D2C(v37, qword_100092E98);
  v38 = v60;
  v39 = v64;
  sub_1000297C4(v60, v64, &qword_100091390, &unk_10006D980);
  v40 = v63;
  v58(v63, v68, v17);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v71[0] = v67;
    *v43 = 136446466;
    LODWORD(v65) = v42;
    sub_1000297C4(v39, v61, &qword_100091390, &unk_10006D980);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    sub_100028FF4(v39, &qword_100091390, &unk_10006D980);
    v47 = sub_100033140(v44, v46, v71);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    sub_100028440(&qword_1000913A8, 255, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v30 + 8))(v40, v17);
    v51 = sub_100033140(v48, v50, v71);

    *(v43 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v41, v65, "Local time zone changed from %{public}s to %{public}s", v43, 0x16u);
    swift_arrayDestroy();

    v38 = v60;
  }

  else
  {

    (*(v30 + 8))(v40, v17);
    sub_100028FF4(v39, &qword_100091390, &unk_10006D980);
  }

  v52 = sub_100020818(&qword_1000913A0, &unk_10006D990);
  v53 = *(v52 + 48);
  v54 = v38;
  v55 = v66;
  sub_100029830(v54, v66, &qword_100091390, &unk_10006D980);
  (*(v30 + 32))(v55 + v53, v68, v17);
  return (*(*(v52 - 8) + 56))(v55, 0, 1, v52);
}

uint64_t sub_100026020(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v96 = a8;
  v97 = a1;
  v91 = a6;
  v92 = a7;
  v89 = a5;
  v90 = a3;
  v93 = a2;
  v9 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v9 - 8);
  v94 = &v80 - v10;
  v11 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v87 = *(v11 - 8);
  v12 = *(v87 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v88 = &v80 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v80 - v18;
  __chkstk_darwin(v17);
  v21 = &v80 - v20;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v86 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v95 = &v80 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v80 - v29;
  __chkstk_darwin(v28);
  v32 = &v80 - v31;
  if (qword_100090CB0 != -1)
  {
    swift_once();
  }

  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100020D2C(v33, qword_100092E98);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_17;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Device Activity is not authorized, skipping device activity collection";
    goto LABEL_16;
  }

  if (v97 != 2)
  {
    goto LABEL_8;
  }

  if (qword_100090D00 != -1)
  {
    swift_once();
  }

  if (byte_100092E70)
  {
LABEL_8:
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v98, &qword_100091398, &unk_10006DC00);
    v85 = v22;
    v83 = v23;
    v84 = v19;
    v82 = a4;
    if (v99)
    {
      sub_100028428(&v98, v100);
    }

    else
    {
      v101 = type metadata accessor for DeviceActivityDataStore();
      v102 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v100);
      DeviceActivityDataStore.init()();
      if (v99)
      {
        sub_100028FF4(&v98, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v100, v101);
    dispatch thunk of DeviceActivityDataStoring.localStartDate()();
    v40 = v83;
    v41 = v85;
    if ((*(v83 + 48))(v21, 1, v85) == 1)
    {
      sub_100028FF4(v21, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v100);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100020D2C(v42, qword_100092E98);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v95;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Saving device activity collection start date", v47, 2u);
      }

      sub_1000297C4(&xmmword_100092DC0, &v98, &qword_100091398, &unk_10006DC00);
      if (v99)
      {
        sub_100028428(&v98, v100);
      }

      else
      {
        v101 = type metadata accessor for DeviceActivityDataStore();
        v102 = &protocol witness table for DeviceActivityDataStore;
        sub_1000283C4(v100);
        DeviceActivityDataStore.init()();
        if (v99)
        {
          sub_100028FF4(&v98, &qword_100091398, &unk_10006DC00);
        }
      }

      sub_100020908(v100, v101);
      static Date.now.getter();
      (*(v40 + 56))(v14, 0, 1, v85);
      dispatch thunk of DeviceActivityDataStoring.write(localStartDate:)();
      sub_100028FF4(v14, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v100);
      v79 = v84;
    }

    else
    {
      (*(v40 + 32))(v32, v21, v41);
      sub_1000208BC(v100);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100020D2C(v70, qword_100092E98);
      (*(v40 + 16))(v30, v32, v41);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v100[0] = v80;
        *v73 = 136446210;
        v74 = Date.debugDescription.getter();
        v76 = v75;
        v81 = *(v83 + 8);
        v81(v30);
        v77 = sub_100033140(v74, v76, v100);
        v40 = v83;

        *(v73 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v71, v72, "Device activity collection has already started on %{public}s", v73, 0xCu);
        sub_1000208BC(v80);

        (v81)(v32, v41);
      }

      else
      {

        v78 = *(v40 + 8);
        v78(v30, v41);
        v78(v32, v41);
      }

      v79 = v84;
      v46 = v95;
    }

    v48 = v97;
    sub_100021ED0(v97, v79);
    static Date.now.getter();
    v49 = sub_100029054(v48, v93, v79, v46);
    if (v49)
    {
      v97 = v49;
      v50 = type metadata accessor for TaskPriority();
      (*(*(v50 - 8) + 56))(v94, 1, 1, v50);
      v51 = v82;
      v96 = *(v82 + 152);
      v52 = v88;
      sub_1000297C4(v79, v88, &qword_1000913D0, &qword_10006D9C0);
      v53 = v86;
      (*(v40 + 16))(v86, v46, v85);
      v55 = sub_100028440(&qword_100091368, v54, type metadata accessor for _DeviceActivityCollector, &unk_10006D938);
      v56 = v40;
      v57 = (*(v87 + 80) + 48) & ~*(v87 + 80);
      v58 = (v12 + *(v56 + 80) + v57) & ~*(v56 + 80);
      v59 = swift_allocObject();
      *(v59 + 2) = v51;
      *(v59 + 3) = v55;
      *(v59 + 4) = v96;
      *(v59 + 5) = v51;
      sub_100029830(v52, &v59[v57], &qword_1000913D0, &qword_10006D9C0);
      v60 = v53;
      v61 = v85;
      (*(v56 + 32))(&v59[v58], v60, v85);
      v62 = &v59[(v58 + v24 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v62 = v97;
      v62[8] = v90 & 1;
      v63 = &v59[(v58 + v24 + 23) & 0xFFFFFFFFFFFFFFF8];
      *v63 = v91;
      v63[1] = 0;

      swift_retain_n();
      v64 = sub_100035B98(0, 0, v94, v92, v59);
      (*(v56 + 8))(v95, v61);
      sub_100028FF4(v84, &qword_1000913D0, &qword_10006D9C0);
      *(v51 + 152) = v64;
    }

    else
    {
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100020D2C(v65, qword_100092E98);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "No segment intervals need to be refreshed.", v68, 2u);
      }

      v96();
      (*(v40 + 8))(v46, v85);
      return sub_100028FF4(v79, &qword_1000913D0, &qword_10006D9C0);
    }
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_100020D2C(v69, qword_100092E98);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Not refreshing local device activity data for budget tracking";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v34, v35, v37, v36, 2u);
  }

LABEL_17:

  v38 = v96;

  return v38();
}

uint64_t sub_100026E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v18;
  *(v8 + 56) = v19;
  *(v8 + 88) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  if (a4)
  {
    v9 = swift_task_alloc();
    *(v8 + 64) = v9;
    *v9 = v8;
    v9[1] = sub_100026FAC;

    return (Task<>.value.getter)();
  }

  else
  {
    *(v8 + 72) = a5;
    v10 = swift_task_alloc();
    *(v8 + 80) = v10;
    *v10 = v8;
    v10[1] = sub_100027160;
    v11 = *(v8 + 88);
    v12 = *(v8 + 32);
    v13 = *(v8 + 40);
    v14 = *(v8 + 24);

    return sub_1000272D4(v14, v12, v13, v11);
  }
}

uint64_t sub_100026FAC()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000270BC, v1, 0);
}

uint64_t sub_1000270BC()
{
  *(v0 + 72) = *(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100027160;
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);

  return sub_1000272D4(v5, v3, v4, v2);
}

uint64_t sub_100027160()
{
  v1 = *v0;

  v2 = *(v1 + 72);

  return _swift_task_switch(sub_100027270, v2, 0);
}

uint64_t sub_100027270()
{
  (*(v0 + 48))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000272D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 152) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return _swift_task_switch(sub_1000272FC, v4, 0);
}

uint64_t sub_1000272FC()
{
  sub_100020908((v0[15] + 112), *(v0[15] + 136));
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1000273AC;
  v2 = v0[14];
  v3 = v0[12];

  return DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(v3, v2);
}

uint64_t sub_1000273AC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_100027898;
  }

  else
  {
    v4 = sub_1000274D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000274D8()
{
  if (qword_100090CB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  sub_100020F40(&qword_100092D88, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100020908((v0 + 16), v2);
  v4 = type metadata accessor for Date();
  *(v0 + 80) = v4;
  v5 = sub_1000283C4((v0 + 56));
  (*(*(v4 - 8) + 16))(v5, v1, v4);
  (*(v3 + 40))(v0 + 56, 0x726665527473616CLL, 0xEF65746144687365, v2, v3);
  sub_100028FF4(v0 + 56, &qword_100091360, &unk_10006D960);
  sub_1000208BC((v0 + 16));
  type metadata accessor for Feature();
  if ((static Feature.isDeviceActivityUIEnabled.getter() & 1) == 0)
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100020D2C(v8, qword_100092E98);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Device Activity UI is not enabled, skipping sync";
    goto LABEL_16;
  }

  if (*(v0 + 152) == 1)
  {
    sub_100028440(&qword_100091368, v6, type metadata accessor for _DeviceActivityCollector, &unk_10006D938);
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_100027DC4;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100020D2C(v13, qword_100092E98);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Skipping sync after device activity collection.";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);
  }

LABEL_17:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100027898()
{
  v25 = v0;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100020D2C(v1, qword_100092E98);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    *(v0 + 88) = v5;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v8 = String.init<A>(describing:)();
    v10 = sub_100033140(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh local activity: %{public}s", v6, 0xCu);
    sub_1000208BC(v7);
  }

  else
  {
  }

  if (qword_100090CB8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 104);
  sub_100020F40(&qword_100092D88, v0 + 16);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_100020908((v0 + 16), v12);
  v14 = type metadata accessor for Date();
  *(v0 + 80) = v14;
  v15 = sub_1000283C4((v0 + 56));
  (*(*(v14 - 8) + 16))(v15, v11, v14);
  (*(v13 + 40))(v0 + 56, 0x726665527473616CLL, 0xEF65746144687365, v12, v13);
  sub_100028FF4(v0 + 56, &qword_100091360, &unk_10006D960);
  sub_1000208BC((v0 + 16));
  type metadata accessor for Feature();
  if ((static Feature.isDeviceActivityUIEnabled.getter() & 1) == 0)
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    sub_100020D2C(v1, qword_100092E98);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_22;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Device Activity UI is not enabled, skipping sync";
    goto LABEL_21;
  }

  if (*(v0 + 152) == 1)
  {
    sub_100028440(&qword_100091368, v16, type metadata accessor for _DeviceActivityCollector, &unk_10006D938);
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_100027DC4;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  sub_100020D2C(v1, qword_100092E98);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Skipping sync after device activity collection.";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);
  }

LABEL_22:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100027DC4()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100027ED4, v1, 0);
}

uint64_t sub_100027EE8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100020D2C(v1, qword_100092E98);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v6 = String.init<A>(describing:)();
      v8 = sub_100033140(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to upload local activity: %{public}s", v4, 0xCu);
      sub_1000208BC(v5);
    }

    else
    {
    }
  }

  sub_100020818(&qword_100091378, &qword_10006D970);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000280A8()
{
  sub_1000208BC((v0 + 112));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}