uint64_t start()
{
  v178 = objc_autoreleasePoolPush();
  v0 = _ACLogSystem();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);

  if (v1)
  {
    v176 = objc_alloc_init(ACAccountStore);
    v177 = [v176 accounts];
    if ([v177 count])
    {
      sub_100001224(@"=======================================", v9, v10, v11, v12, v13, v14, v15, v175[0]);
      sub_100001224(@"Accounts Summary:", v16, v17, v18, v19, v20, v21, v22, v175[0]);
      sub_100001224(@"=======================================", v23, v24, v25, v26, v27, v28, v29, v175[0]);
      sub_100001224(&stru_100004210, v30, v31, v32, v33, v34, v35, v36, v175[0]);
      v175[1] = v175;
      __chkstk_darwin(v37);
      v208[0] = _NSConcreteStackBlock;
      v208[1] = 3221225472;
      v208[2] = sub_1000012AC;
      v208[3] = &unk_100004170;
      v208[4] = &v174;
      v209 = 10;
      v180 = objc_retainBlock(v208);
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v38 = v177;
      v39 = [v38 countByEnumeratingWithState:&v204 objects:v214 count:16];
      if (v39)
      {
        v40 = *v205;
        do
        {
          for (i = 0; i != v39; i = i + 1)
          {
            if (*v205 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v204 + 1) + 8 * i);
            v43 = [v42 parentAccountIdentifier];
            v44 = v43 == 0;

            if (v44)
            {
              LOBYTE(v174) = 0;
              v45 = objc_retainBlock(v180);
              (v180[2])(v180, v42, 0, v45);
            }
          }

          v39 = [v38 countByEnumeratingWithState:&v204 objects:v214 count:16];
        }

        while (v39);
      }

      sub_100001224(&stru_100004210, v46, v47, v48, v49, v50, v51, v52, v174);
      sub_100001224(&stru_100004210, v53, v54, v55, v56, v57, v58, v59, v174);
      sub_100001224(@"=======================================", v60, v61, v62, v63, v64, v65, v66, v174);
      sub_100001224(@"Accounts Configuration:", v67, v68, v69, v70, v71, v72, v73, v174);
      sub_100001224(@"=======================================", v74, v75, v76, v77, v78, v79, v80, v174);
      sub_100001224(&stru_100004210, v81, v82, v83, v84, v85, v86, v87, v174);
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v179 = v38;
      v182 = [v179 countByEnumeratingWithState:&v200 objects:v213 count:16];
      if (v182)
      {
        v181 = *v201;
        do
        {
          for (j = 0; j != v182; j = j + 1)
          {
            if (*v201 != v181)
            {
              objc_enumerationMutation(v179);
            }

            v88 = *(*(&v200 + 1) + 8 * j);
            v89 = [v88 objectForKeyedSubscript:@"AccountDelegate"];
            v195 = [v89 mutableCopy];

            [v195 removeObjectForKey:@"tokens"];
            [v88 setObject:v195 forKeyedSubscript:@"AccountDelegate"];
            [v88 setObject:0 forKeyedSubscript:@"pushDeviceToken"];
            v192 = [v88 objectForKeyedSubscript:@"kCalDAVPrincipalsKey"];
            v185 = [v88 objectForKeyedSubscript:@"kCalDAVMainPrincipalUIDKey"];
            v194 = [v192 objectForKeyedSubscript:?];
            if (v194)
            {
              v211 = v185;
              v212 = v194;
              v90 = [NSDictionary dictionaryWithObjects:&v212 forKeys:&v211 count:1];
              [v88 setObject:v90 forKeyedSubscript:@"kCalDAVPrincipalsKey"];
            }

            v91 = [v88 fullDescription];
            v92 = v91;
            v93 = [v91 UTF8String];
            sub_100001224(@"%s", v94, v95, v96, v97, v98, v99, v100, v93);

            v191 = [v88 credential];
            v190 = [v191 password];
            v101 = [v190 length];
            v102 = @"Yes";
            if (!v101)
            {
              v102 = @"No";
            }

            v184 = v102;
            v189 = [v88 credential];
            v188 = [v189 token];
            v103 = [v188 length];
            v104 = @"Yes";
            if (!v103)
            {
              v104 = @"No";
            }

            v183 = v104;
            v187 = [v88 credential];
            v186 = [v187 oauthToken];
            [v186 length];
            v105 = [v88 credential];
            v106 = [v105 oauthRefreshToken];
            [v106 length];
            v107 = [v88 credential];
            v108 = [v107 oauthTokenSecret];
            [v108 length];
            v109 = [v88 credential];
            v173 = [v109 expiryDate];
            sub_100001224(@"credential: Password:%@ Token:%@ OAuthToken:%@ RefreshToken:%@ TokenSecret:%@ ExpirationDate:%@\n\n", v110, v111, v112, v113, v114, v115, v116, v184);
          }

          v182 = [v179 countByEnumeratingWithState:&v200 objects:v213 count:16];
        }

        while (v182);
      }
    }

    else
    {
      sub_100001224(@"No accounts.", v9, v10, v11, v12, v13, v14, v15, v175[0]);
    }

    sub_100001224(&stru_100004210, v117, v118, v119, v120, v121, v122, v123, v175[0]);
    sub_100001224(&stru_100004210, v124, v125, v126, v127, v128, v129, v130, v175[0]);
    sub_100001224(@"=======================================", v131, v132, v133, v134, v135, v136, v137, v175[0]);
    sub_100001224(@"Accounts Types:", v138, v139, v140, v141, v142, v143, v144, v175[0]);
    sub_100001224(@"=======================================", v145, v146, v147, v148, v149, v150, v151, v175[0]);
    sub_100001224(&stru_100004210, v152, v153, v154, v155, v156, v157, v158, v175[0]);
    v159 = [v176 allAccountTypes];
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v160 = v159;
    v161 = [v160 countByEnumeratingWithState:&v196 objects:v210 count:16];
    if (v161)
    {
      v162 = *v197;
      do
      {
        for (k = 0; k != v161; k = k + 1)
        {
          if (*v197 != v162)
          {
            objc_enumerationMutation(v160);
          }

          v164 = [*(*(&v196 + 1) + 8 * k) fullDescription];
          sub_100001224(@"%@\n\n", v165, v166, v167, v168, v169, v170, v171, v164);
        }

        v161 = [v160 countByEnumeratingWithState:&v196 objects:v210 count:16];
      }

      while (v161);
    }
  }

  else
  {
    sub_100001224(@"Accounts summary disabled. It can be enabled by installing the Accounts profile from https://developer.apple.com/bug-reporting/profiles-and-logs/", v2, v3, v4, v5, v6, v7, v8, v175[0]);
  }

  objc_autoreleasePoolPop(v178);
  return 0;
}

void sub_100001224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  fprintf(__stdoutp, "%s\n", [v10 UTF8String]);
}

void sub_1000012AC(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      strcpy((*(a1 + 32) + v9), "    ");
      v9 += 4;
    }

    while (4 * a3 != v9);
  }

  v35 = a3;
  v36 = *(a1 + 32);
  v37 = [v7 accountType];
  v10 = [v37 identifier];
  v11 = [v7 accountType];
  v12 = [v11 objectID];
  v13 = [v7 username];
  v14 = [v7 username];
  v15 = ACHashedString();
  v34 = [v7 identifier];
  sub_100001224(@"%s%@(%@) %@ (%@) %@", v16, v17, v18, v19, v20, v21, v22, v36);

  v23 = objc_retainBlock(v8);
  v24 = [v7 childAccounts];
  v25 = [NSArray arrayWithArray:v24];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v39;
    v30 = v35 + 1;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(a1 + 40);
        if (v30 >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v30;
        }

        v23[2](v23, *(*(&v38 + 1) + 8 * i), v33, v8);
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v28);
  }
}