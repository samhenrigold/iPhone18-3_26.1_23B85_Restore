uint64_t start()
{
  v170 = objc_autoreleasePoolPush();
  puts("sysdiagnose keychain");
  qword_10000C3C8 = __stdoutp;
  *&err = 0;
  *&v194 = 0;
  *(&v194 + 1) = &v194;
  *&v195 = 0x2020000000;
  DWORD2(v195) = 0;
  v0 = SOSCCThisDeviceIsInCircle();
  if (v0 == -1)
  {
    if (CFErrorGetCode(err) == 1050)
    {
      v12 = qword_10000C3C8;
      v13 = @"SOS is not supported on this platform\n";
    }

    else
    {
      v36 = sSecXPCErrorDomain;
      Domain = CFErrorGetDomain(err);
      v38 = CFEqual(v36, Domain);
      v12 = qword_10000C3C8;
      if (v38)
      {
        v13 = @"SOS status is kSOSCCError due to XPC error\n";
      }

      else
      {
        v168 = err;
        v13 = @"SOS status is kSOSCCError (%@)\n";
      }
    }

    sub_100004198(v12, 0, v13, v7, v8, v9, v10, v11, v168);
    sub_100004198(qword_10000C3C8, 0, @"\n", v39, v40, v41, v42, v43);
  }

  else
  {
    if (v0 > 3)
    {
      v6 = "<unknown ccstatus>";
    }

    else
    {
      v6 = off_100008750[v0];
    }

    sub_100004198(qword_10000C3C8, 0, @"ccstatus: %s (%d)\n", v1, v2, v3, v4, v5, v6, v0);
    DepartureReason = SOSCCGetLastDepartureReason();
    if (DepartureReason > 8)
    {
      v20 = "Unknown";
    }

    else
    {
      v20 = off_100008770[DepartureReason];
    }

    sub_100004198(qword_10000C3C8, 0, @"LastDepartureReason: %s (%d)\n", v14, v15, v16, v17, v18, v20, DepartureReason);
    if (SOSCCValidateUserPublic())
    {
      v26 = @"Account user public is trusted\n";
    }

    else
    {
      v169 = err;
      v26 = @"Account user public is not trusted error:(%@)\n";
    }

    sub_100004198(qword_10000C3C8, 0, v26, v21, v22, v23, v24, v25, v169);
    v32 = SOSCCCopyGenerationPeerInfo();
    if (v32)
    {
      context = _NSConcreteStackBlock;
      v188 = 3221225472;
      v189 = sub_1000030A4;
      v190 = &unk_100008598;
      v191 = &v194;
      v33 = &context;
      v198.length = CFArrayGetCount(v32);
      v198.location = 0;
      CFArrayApplyFunction(v32, v198, sub_1000037AC, v33);

      CFRelease(v32);
    }

    else
    {
      sub_100004198(qword_10000C3C8, 0, @"No generation count: %@\n", v27, v28, v29, v30, v31, err);
    }

    v34 = SOSCCCopyMyPeerInfo();
    PeerID = SOSPeerInfoGetPeerID();
    sub_100003178("     Peers", PeerID, &stru_1000085D8);
    sub_100003178("   Invalid", PeerID, &stru_1000085F8);
    sub_100003178("   Retired", PeerID, &stru_100008618);
    sub_100003178("    Concur", PeerID, &stru_100008638);
    sub_100003178("Applicants", PeerID, &stru_100008658);
    if (v34)
    {
      CFRelease(v34);
    }
  }

  _Block_object_dispose(&v194, 8);
  context = 0;
  sub_100004198(qword_10000C3C8, 0, @"Engine state:\n", v44, v45, v46, v47, v48);
  if ((SOSCCForEachEngineStateAsString() & 1) == 0)
  {
    sub_100004198(qword_10000C3C8, 0, @"No engine state, got error: %@\n", v49, v50, v51, v52, v53, context);
  }

  [@"HomeKit keychain state:\n" writeToStdOut];
  *&v194 = kSecClass;
  *(&v194 + 1) = kSecAttrAccessGroup;
  context = kSecClassGenericPassword;
  v188 = @"com.apple.hap.pairing";
  *&v195 = kSecAttrSynchronizable;
  *(&v195 + 1) = kSecMatchLimit;
  v189 = kCFBooleanTrue;
  v190 = kSecMatchLimitAll;
  v196 = __PAIR128__(kSecReturnData, kSecReturnAttributes);
  v191 = &__kCFBooleanTrue;
  v192 = &__kCFBooleanFalse;
  *&v197 = kSecUseDataProtectionKeychain;
  v193 = &__kCFBooleanTrue;
  v54 = [NSDictionary dictionaryWithObjects:&context forKeys:&v194 count:7];
  v55 = [v54 mutableCopy];

  *&err = 0;
  if (!SecItemCopyMatching(v55, &err))
  {
    sub_1000029DC(@"HomeKit", err);
  }

  v56 = err;
  if (err)
  {
    *&err = 0;
    CFRelease(v56);
  }

  [(__CFDictionary *)v55 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];
  if (!SecItemCopyMatching(v55, &err))
  {
    sub_1000029DC(@"HomeKit", err);
  }

  v57 = err;
  if (err)
  {
    *&err = 0;
    CFRelease(v57);
  }

  [(__CFDictionary *)v55 setObject:@"com.apple.hap.metadata" forKeyedSubscript:kSecAttrAccessGroup];
  if (!SecItemCopyMatching(v55, &err))
  {
    sub_1000029DC(@"HomeKit", err);
  }

  v58 = err;
  if (err)
  {
    *&err = 0;
    CFRelease(v58);
  }

  [@"AutoUnlock keychain state:\n" writeToStdOut];
  *&v194 = kSecClass;
  *(&v194 + 1) = kSecAttrAccessGroup;
  context = kSecClassGenericPassword;
  v188 = @"com.apple.continuity.unlock";
  *&v195 = kSecAttrAccount;
  *(&v195 + 1) = kSecAttrSynchronizable;
  v189 = @"com.apple.continuity.auto-unlock.sync";
  v190 = kCFBooleanTrue;
  *&v196 = kSecMatchLimit;
  *(&v196 + 1) = kSecReturnAttributes;
  v191 = kSecMatchLimitAll;
  v192 = &__kCFBooleanTrue;
  v193 = &__kCFBooleanFalse;
  *&v197 = kSecReturnData;
  v59 = [NSDictionary dictionaryWithObjects:&context forKeys:&v194 count:7];
  *&err = 0;
  if (!SecItemCopyMatching(v59, &err))
  {
    sub_1000029DC(@"AutoUnlock", err);
  }

  v60 = err;
  if (err)
  {
    *&err = 0;
    CFRelease(v60);
  }

  [@"Rapport keychain state:\n" writeToStdOut];
  *&v194 = kSecClass;
  *(&v194 + 1) = kSecAttrAccessGroup;
  context = kSecClassGenericPassword;
  v188 = @"com.apple.rapport";
  *&v195 = kSecAttrSynchronizable;
  *(&v195 + 1) = kSecMatchLimit;
  v189 = kCFBooleanTrue;
  v190 = kSecMatchLimitAll;
  v196 = __PAIR128__(kSecReturnData, kSecReturnAttributes);
  v191 = &__kCFBooleanTrue;
  v192 = &__kCFBooleanFalse;
  v61 = [NSDictionary dictionaryWithObjects:&context forKeys:&v194 count:6];
  *&err = 0;
  if (!SecItemCopyMatching(v61, &err))
  {
    sub_1000029DC(@"rapport", err);
  }

  v62 = err;
  if (err)
  {
    *&err = 0;
    CFRelease(v62);
  }

  [@"Notes keychain state:\n" writeToStdOut];
  v181[0] = kSecClass;
  v181[1] = kSecAttrAccessGroup;
  *&err = kSecClassGenericPassword;
  *(&err + 1) = @"group.com.apple.notes";
  v181[2] = kSecAttrSynchronizable;
  v181[3] = kSecMatchLimit;
  v183 = kSecAttrSynchronizableAny;
  v184 = kSecMatchLimitAll;
  v181[4] = kSecReturnAttributes;
  v181[5] = kSecReturnData;
  v185 = &__kCFBooleanTrue;
  v186 = &__kCFBooleanFalse;
  query = [NSDictionary dictionaryWithObjects:&err forKeys:v181 count:6];
  result = 0;
  if (!SecItemCopyMatching(query, &result))
  {
    v63 = +[NSMutableArray array];
    v178 = +[NSMutableDictionary dictionary];
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v64 = result;
    v65 = [v64 countByEnumeratingWithState:&v194 objects:&context count:16];
    if (v65)
    {
      v66 = *v195;
      v67 = 1;
      do
      {
        for (i = 0; i != v65; i = i + 1)
        {
          if (*v195 != v66)
          {
            objc_enumerationMutation(v64);
          }

          v69 = [*(*(&v194 + 1) + 8 * i) mutableCopy];
          v70 = [v69 objectForKeyedSubscript:kSecAttrLabel];
          IsInternalRelease = SecIsInternalRelease();
          if (v70)
          {
            v72 = IsInternalRelease;
          }

          else
          {
            v72 = 1;
          }

          if ((v72 & 1) == 0 && ([v70 isEqual:@"local"] & 1) == 0)
          {
            v73 = [v178 objectForKeyedSubscript:v70];
            if (!v73)
            {
              v73 = [NSString stringWithFormat:@"<REDACTED-LABL-%llu>", v67];
              [v178 setObject:v73 forKeyedSubscript:v70];
              ++v67;
            }

            [v69 setObject:v73 forKeyedSubscript:kSecAttrLabel];
          }

          [v63 addObject:v69];
        }

        v65 = [v64 countByEnumeratingWithState:&v194 objects:&context count:16];
      }

      while (v65);
    }

    sub_1000029DC(@"notes", v63);
  }

  v74 = result;
  if (result)
  {
    result = 0;
    CFRelease(v74);
  }

  v75 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.securityuploadd" options:0];
  if (v75)
  {
    v76 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___supdProtocol];
    [v75 setRemoteObjectInterface:v76];

    [v75 resume];
    v77 = dispatch_semaphore_create(0);
    context = _NSConcreteStackBlock;
    v188 = 3221225472;
    v189 = sub_100002CA0;
    v190 = &unk_100008520;
    v78 = v77;
    v191 = v78;
    v79 = [v75 remoteObjectProxyWithErrorHandler:&context];
    *&v194 = _NSConcreteStackBlock;
    *(&v194 + 1) = 3221225472;
    *&v195 = sub_100002D04;
    *(&v195 + 1) = &unk_100008548;
    v80 = v78;
    *&v196 = v80;
    [v79 getSysdiagnoseDumpWithReply:&v194];

    v81 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v80, v81))
    {
      [@"\n\nError: timed out waiting for response\n" writeToStdErr];
    }
  }

  else
  {
    [@"failed to setup xpc connection for securityuploadd\n" writeToStdErr];
  }

  v82 = [NSString stringWithFormat:@"\n Keychain <access Group, #items> Information \n"];
  [v82 writeToStdOut];

  result = 0;
  v173 = SecKeychainCopyDatabasePath();
  v83 = result;
  if (result || !v173)
  {
    v134 = [NSString stringWithFormat:@"\nError: Failed to get Keychain DB Path %@ \n", result];
    [v134 writeToStdErr];
  }

  else
  {
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v174 = [&off_1000092E0 countByEnumeratingWithState:&v194 objects:&context count:16];
    if (v174)
    {
      v172 = *v195;
      do
      {
        v84 = 0;
        do
        {
          if (*v195 != v172)
          {
            v85 = v84;
            objc_enumerationMutation(&off_1000092E0);
            v84 = v85;
          }

          v175 = v84;
          v86 = *(*(&v194 + 1) + 8 * v84);
          v87 = [NSString stringWithFormat:@"\n -----------------------------------------------------------------\n"];
          [v87 writeToStdOut];

          v88 = [NSString stringWithFormat:@"\n Keychain <access Group, (#non-tombstone, #tombstone)> information for %@ item Class\n", v86];
          [v88 writeToStdOut];

          v89 = [NSString stringWithFormat:@"\n -----------------------------------------------------------------\n"];
          [v89 writeToStdOut];

          querya = [NSString stringWithFormat:@"SELECT agrp, SUM(CASE WHEN tomb = 0 THEN 1 ELSE 0 END) AS count_tomb_0, SUM(CASE WHEN tomb = 1 THEN 1 ELSE 0 END) AS count_tomb_1                                  FROM %@                                  GROUP BY agrp                                  ORDER BY (SUM(CASE WHEN tomb = 0 THEN 1 ELSE 0 END) + SUM(CASE WHEN tomb = 1 THEN 1 ELSE 0 END)) DESC", v86];
          v90 = [SQLiteManager executeQuery:querya onDatabaseAtPath:v173];
          if ([v90 count])
          {
            v179 = 0;
            v91 = 0;
            v92 = 0;
            v171 = 1;
            while (v92)
            {
              v93 = [v90 objectAtIndexedSubscript:v92];
              v94 = [v93 count] > 2;

              if (v94)
              {
                v95 = [v90 objectAtIndexedSubscript:v92];
                v96 = [v95 objectAtIndexedSubscript:1];
                v97 = [v96 intValue];

                v98 = [v90 objectAtIndexedSubscript:v92];
                v99 = [v98 objectAtIndexedSubscript:2];
                LODWORD(v96) = [v99 intValue];

                v179 += v97;
                v91 += v96;
              }

              v100 = [v90 objectAtIndexedSubscript:v92];
              if ([v100 count] < 3)
              {
                goto LABEL_88;
              }

              v101 = [v90 objectAtIndexedSubscript:v92];
              v102 = [v101 objectAtIndexedSubscript:1];
              v103 = [v102 intValue];
              v104 = [v90 objectAtIndexedSubscript:v92];
              v105 = [v104 objectAtIndexedSubscript:2];
              v106 = ([v105 intValue] + v103) > 14;

              if (v106)
              {
                v107 = [v90 objectAtIndexedSubscript:v92];
                v108 = [v107 firstObject];

                v100 = v108;
                *&err = 0;
                v109 = [NSRegularExpression regularExpressionWithPattern:@"^[0-9A-Z]{10}\\." options:1 error:&err];
                v110 = err;
                if (v110)
                {
                  v111 = v110;
                  v112 = [v110 localizedDescription];
                  v113 = [NSString stringWithFormat:@"\nError: %@ while creating second party regex \n", v112];
                  [v113 writeToStdErr];

                  goto LABEL_85;
                }

                v117 = [v100 length];
                v118 = [v109 firstMatchInString:v100 options:0 range:{0, v117}];
                if (v118)
                {
                  v181[0] = 0;
                  v119 = [NSRegularExpression regularExpressionWithPattern:@"\\b(iWork|freeform|Xcode)\\b" options:1 error:v181];
                  v120 = v181[0];
                  if (v120)
                  {
                    v121 = v120;
                    v122 = [v120 localizedDescription];
                    v123 = [NSString stringWithFormat:@"\nError: %@ while creating second party regex \n", v122];
                    [v123 writeToStdErr];

                    goto LABEL_85;
                  }

                  v124 = [v119 firstMatchInString:v100 options:0 range:{0, v117}];
                  v125 = v124 == 0;

                  if (v125)
                  {
                    v114 = [NSString stringWithFormat:@"<REDACTED-AGRP-%lu>", v171];
                    v126 = [v90 objectAtIndexedSubscript:v92];
                    v127 = [v126 count];

                    v128 = [v90 objectAtIndexedSubscript:v92];
                    v115 = [v128 subarrayWithRange:{1, v127 - 1}];

                    v129 = [v115 componentsJoinedByString:{@", "}];
                    v130 = [NSString stringWithFormat:@"\n%@, %@\n", v114, v129];
                    [v130 writeToStdOut];

                    ++v171;
                    goto LABEL_87;
                  }
                }

                else
                {
                }

LABEL_85:
                v114 = [v90 objectAtIndexedSubscript:v92];
                v115 = [v114 componentsJoinedByString:{@", "}];
                v116 = [NSString stringWithFormat:@"\n%@\n", v115];
                [v116 writeToStdOut];

LABEL_87:
LABEL_88:
              }

              if (++v92 >= [v90 count])
              {
                goto LABEL_98;
              }
            }

            v100 = [v90 objectAtIndexedSubscript:0];
            v114 = [v100 componentsJoinedByString:{@", "}];
            v115 = [NSString stringWithFormat:@"\n%@\n", v114];
            [v115 writeToStdOut];
            goto LABEL_87;
          }

          v91 = 0;
          v179 = 0;
LABEL_98:
          if ([v90 count])
          {
            v131 = [v90 count] - 1;
          }

          else
          {
            v131 = 0;
          }

          v132 = [NSString stringWithFormat:@"\n (Total agrps: %lu, Total Non-tombstone items: %lu, Total tombstone items: %lu)\n", v131, v179, v91, v170];
          [v132 writeToStdOut];

          v133 = [NSString stringWithFormat:@"\n -----------------------------------------------------------------\n"];
          [v133 writeToStdOut];

          v84 = v175 + 1;
        }

        while ((v175 + 1) != v174);
        v174 = [&off_1000092E0 countByEnumeratingWithState:&v194 objects:&context count:16];
      }

      while (v174);
    }
  }

  v135 = [NSString stringWithFormat:@"\n -----------------------------------------------------------------\n"];
  [v135 writeToStdOut];

  v136 = [NSString stringWithFormat:@"\n Keychain Database Table Size Information \n"];
  [v136 writeToStdOut];

  v137 = [NSString stringWithFormat:@"\n -----------------------------------------------------------------\n"];
  [v137 writeToStdOut];

  context = 0;
  v138 = SecKeychainCopyDatabasePath();
  v139 = v138;
  v140 = context;
  if (context || !v138)
  {
    v145 = [NSString stringWithFormat:@"\nError: Failed to get Keychain DB Path %@ \n", context];
    [v145 writeToStdErr];
  }

  else
  {
    v140 = [SQLiteManager executeQuery:@"SELECT name onDatabaseAtPath:CASE                            WHEN sum(pgsize) >= 1073741824 THEN ROUND(sum(pgsize)/1073741824.0, 2) || ' GB'                            WHEN sum(pgsize) >= 1048576 THEN ROUND(sum(pgsize)/1048576.0, 2) || ' MB'                            WHEN sum(pgsize) >= 1024 THEN ROUND(sum(pgsize)/1024.0, 2) || ' KB'                            ELSE sum(pgsize) || ' bytes'                        END AS size                        FROM dbstat                        GROUP BY name                        ORDER BY sum(pgsize) DESC", v138];
    if ([v140 count])
    {
      v141 = 0;
      do
      {
        v142 = [v140 objectAtIndexedSubscript:v141];
        v143 = [v142 componentsJoinedByString:{@", "}];
        v144 = [NSString stringWithFormat:@"\n%@\n", v143];
        [v144 writeToStdOut];

        ++v141;
      }

      while (v141 < [v140 count]);
    }

    v145 = [NSString stringWithFormat:@"\n -----------------------------------------------------------------\n"];
    [v145 writeToStdOut];
  }

  qword_10000C3C8 = __stdoutp;
  v146 = dispatch_queue_create("general", 0);
  v147 = dispatch_group_create();
  v148 = v146;
  v149 = v147;
  *&v194 = 0;
  *(&v194 + 1) = &v194;
  v195 = 0x2020000000uLL;
  v150 = dispatch_semaphore_create(0);
  v151 = dispatch_time(0, 30000000000);
  dispatch_group_enter(v149);
  context = _NSConcreteStackBlock;
  v188 = 3221225472;
  v189 = sub_1000037FC;
  v190 = &unk_1000086E0;
  v193 = &v194;
  v152 = v149;
  v191 = v152;
  v153 = v150;
  v192 = v153;
  v154 = objc_retainBlock(&context);
  SOSCloudKeychainGetAllObjectsFromCloud();
  dispatch_semaphore_wait(v153, v151);
  v155 = *(*(&v194 + 1) + 24);
  if (v155)
  {
    v156 = CFGetTypeID(v155);
    if (v156 == CFNullGetTypeID())
    {
      CFRelease(*(*(&v194 + 1) + 24));
      *(*(&v194 + 1) + 24) = 0;
    }
  }

  v157 = secLogObjForScope();
  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
  {
    v158 = *(*(&v194 + 1) + 24);
    LODWORD(err) = 138412290;
    *(&err + 4) = v158;
    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "returned: %@", &err, 0xCu);
  }

  v159 = *(*(&v194 + 1) + 24);
  _Block_object_dispose(&v194, 8);

  if (v159)
  {
    fwrite("\nAll values in decoded form...\n", 0x1FuLL, 1uLL, qword_10000C3C8);
    v160 = 0;
    *&v194 = 0;
    *(&v194 + 1) = &v194;
    *&v195 = 0x2020000000;
    BYTE8(v195) = 0;
    do
    {
      context = _NSConcreteStackBlock;
      v188 = 3221225472;
      v189 = sub_1000039B0;
      v190 = &unk_100008708;
      LODWORD(v192) = v160;
      v191 = &v194;
      CFDictionaryApplyFunction(v159, sub_100003E58, &context);
      v166 = *(&v194 + 1);
      if (*(*(&v194 + 1) + 24) == 1)
      {
        sub_100004198(qword_10000C3C8, 0, @"%@\n", v161, v162, v163, v164, v165, &stru_1000090A8);
        v166 = *(&v194 + 1);
      }

      *(v166 + 24) = 0;
      ++v160;
    }

    while (v160 != 11);
    _Block_object_dispose(&v194, 8);
  }

  fputc(10, qword_10000C3C8);

  objc_autoreleasePoolPop(v170);
  return 0;
}

void sub_1000029DC(void *a1, void *a2)
{
  v22 = a1;
  if (a2)
  {
    v3 = CFGetTypeID(a2);
    TypeID = CFArrayGetTypeID();
    v5 = a2;
    if (v3 == TypeID)
    {
      v6 = +[NSMutableArray array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v5 = v5;
      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v28;
        do
        {
          v11 = 0;
          v12 = v9;
          do
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v27 + 1) + 8 * v11);

            if (objc_opt_respondsToSelector())
            {
              v13 = [v9 asOneLineString];
              v14 = [NSString stringWithFormat:@"%@: %@\n", v22, v13];
              [v6 addObject:v14];
            }

            v11 = v11 + 1;
            v12 = v9;
          }

          while (v8 != v11);
          v8 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v8);
      }

      [v6 sortUsingSelector:"compare:"];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = v6;
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v23 + 1) + 8 * i) writeToStdOut];
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v17);
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v20 = [v5 asOneLineString];
      v21 = [NSString stringWithFormat:@"%@: %@\n", v22, v20];
      [v21 writeToStdOut];
    }
  }
}

intptr_t sub_100002CA0(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithFormat:@"Error talking with daemon: %@\n", a2];
  [v3 writeToStdErr];

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

intptr_t sub_100002D04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [NSString stringWithFormat:@"\nAnalytics sysdiagnose:\n\n%@\n", a2];
    [v3 writeToStdOut];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

const __CFData *sub_100002D6C(CFDataRef theData)
{
  v1 = theData;
  if (theData)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    BytePtr = CFDataGetBytePtr(theData);
    v3 = &BytePtr[CFDataGetLength(v1)];
    v33 = 0;
    ccder_decode_constructed_tl();
    v32 = 0;
    v4 = ccder_decode_tl();
    v31 = 0;
    v30 = 0;
    ccder_decode_uint64();
    ccder_decode_uint64();
    v34 = 0;
    v5 = ccder_decode_tl();
    if (CSSMOID_PKCS5_HMAC_SHA1.Length == v34 && (v6 = v5, !memcmp(CSSMOID_PKCS5_HMAC_SHA1.Data, v5, CSSMOID_PKCS5_HMAC_SHA1.Length)) && v6)
    {
      v9 = &v6[CSSMOID_PKCS5_HMAC_SHA1.Length];
      v7 = v31;
      v8 = v30;
    }

    else
    {
      v4 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
    }

    if (v9 == v3)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v21 = sub_100003048;
      v22 = &unk_100008570;
      v23 = &v26;
      v24 = v7;
      v25 = v8;
      v10 = v20;
      v11 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v4, 4, kCFAllocatorNull);
      v12 = v10;
      v13 = v12;
      if (v11)
      {
        Length = CFDataGetLength(v11);
        Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
        v16 = CFDataGetBytePtr(v11);
        v17 = CFDataGetLength(v11);
        if (v17 >= 1)
        {
          do
          {
            v18 = *v16++;
            CFStringAppendFormat(Mutable, 0, @"%02X", v18);
            --v17;
          }

          while (v17);
        }

        v21(v13, Mutable);
        CFRelease(Mutable);

        CFRelease(v11);
      }

      else
      {
        v21(v12, @"(null)");
        CFRelease(@"(null)");
      }

      v1 = v27[3];
    }

    else
    {
      v1 = 0;
    }

    _Block_object_dispose(&v26, 8);
  }

  return v1;
}

void sub_100003028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef sub_100003048(void *a1, uint64_t a2)
{
  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<Params: iter: %zd, size: %zd, salt: %@>", a1[5], a1[6], a2);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1000030A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  if (*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || (sub_100004198(qword_10000C3C8, 0, @"Circle name: %@, ", a4, a5, a6, a7, a8, a2), (*(*(*(a1 + 32) + 8) + 24)))
  {
    v14 = SOSGenerationCountCopyDescription();
    sub_100004198(qword_10000C3C8, 0, @"Generation Count: %@", v15, v16, v17, v18, v19, v14);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  sub_100004198(qword_10000C3C8, 0, @"%s\n", v9, v10, v11, v12, v13, "");
}

void sub_100003178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v5 = (*(a3 + 16))(a3, &v21);
  v11 = qword_10000C3C8;
  if (v5)
  {
    v12 = v5;
    Count = CFArrayGetCount(v5);
    sub_100004198(v11, 0, @"%s count: %ld\n", v14, v15, v16, v17, v18, a1, Count);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_1000032BC;
    context[3] = &unk_1000086B8;
    context[4] = a2;
    context[5] = a1;
    v22.length = CFArrayGetCount(v12);
    v22.location = 0;
    CFArrayApplyFunction(v12, v22, sub_1000037AC, context);
    CFRelease(v12);
  }

  else
  {
    sub_100004198(qword_10000C3C8, 0, @"No %s, error: %@\n", v6, v7, v8, v9, v10, a1, v21);
  }

  v19 = v21;
  if (v21)
  {
    v21 = 0;
    CFRelease(v19);
  }
}

void sub_1000032BC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  PeerName = SOSPeerInfoGetPeerName();
  PeerDeviceType = SOSPeerInfoGetPeerDeviceType();
  PeerID = SOSPeerInfoGetPeerID();
  v6 = SOSPeerInfoCopyPeerGestalt();
  v7 = v6;
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"OSVersion");
  }

  else
  {
    Value = @"Unknown";
  }

  v8 = &stru_1000090A8;
  if (SOSPeerInfoVersionHasV2Data())
  {
    v9 = *(a2 + 80);
    if (v9)
    {
      v10 = CFDictionaryGetValue(*(a2 + 80), @"TransportType");
      v8 = CFDictionaryGetValue(v9, @"DeviceID");
      v11 = CFDictionaryGetValue(v9, @"MachineIDKey");
    }

    else
    {
      v10 = @"KVS";
      v11 = &stru_1000090A8;
      v8 = &stru_1000090A8;
    }
  }

  else
  {
    v10 = @"KVS";
    v11 = &stru_1000090A8;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v12;
  v53 = v12;
  v50 = v12;
  v51 = v12;
  v48 = v12;
  v49 = v12;
  v46 = v12;
  v47 = v12;
  *__str = v12;
  v45 = v12;
  if (!PeerName)
  {
    v15 = strdup("");
    if (PeerDeviceType)
    {
      goto LABEL_14;
    }

LABEL_27:
    v18 = strdup("");
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_28:
    v21 = strdup("");
    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  CFRetain(PeerName);
  Length = CFStringGetLength(PeerName);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v15 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(PeerName, v15, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    *v15 = 0;
  }

  CFRelease(PeerName);
  if (!PeerDeviceType)
  {
    goto LABEL_27;
  }

LABEL_14:
  CFRetain(PeerDeviceType);
  v16 = CFStringGetLength(PeerDeviceType);
  v17 = CFStringGetMaximumSizeForEncoding(v16, 0x8000100u);
  v18 = malloc_type_malloc(v17 + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(PeerDeviceType, v18, v17 + 1, 0x8000100u))
  {
    *v18 = 0;
  }

  CFRelease(PeerDeviceType);
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_17:
  CFRetain(v10);
  v19 = CFStringGetLength(v10);
  v20 = CFStringGetMaximumSizeForEncoding(v19, 0x8000100u);
  v21 = malloc_type_malloc(v20 + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(v10, v21, v20 + 1, 0x8000100u))
  {
    *v21 = 0;
  }

  CFRelease(v10);
  if (v8)
  {
LABEL_20:
    CFRetain(v8);
    v22 = CFStringGetLength(v8);
    v23 = CFStringGetMaximumSizeForEncoding(v22, 0x8000100u);
    v24 = malloc_type_malloc(v23 + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(v8, v24, v23 + 1, 0x8000100u))
    {
      *v24 = 0;
    }

    CFRelease(v8);
    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

LABEL_29:
  v24 = strdup("");
  if (v11)
  {
LABEL_23:
    CFRetain(v11);
    v25 = CFStringGetLength(v11);
    v26 = CFStringGetMaximumSizeForEncoding(v25, 0x8000100u);
    v27 = malloc_type_malloc(v26 + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(v11, v27, v26 + 1, 0x8000100u))
    {
      *v27 = 0;
    }

    CFRelease(v11);
    goto LABEL_31;
  }

LABEL_30:
  v27 = strdup("");
LABEL_31:
  v28 = *(a1 + 32);
  if (PeerID && v28)
  {
    v29 = CFEqual(v28, PeerID) != 0;
  }

  else
  {
    v29 = v28 == PeerID;
  }

  if (v29)
  {
    v30 = "me>";
  }

  else
  {
    v30 = "   ";
  }

  snprintf(__str, 0xA0uLL, "%s %s: %-16s dev:%-16s trn:%-16s devid:%-36s mid: %-36s", v30, *(a1 + 40), v15, v18, v21, v24, v27);
  free(v15);
  free(v18);
  free(v21);
  free(v24);
  free(v27);
  v31 = CFStringCreateWithCString(0, __str, 0x8000100u);
  v32 = SOSPeerInfoGetPeerID();
  Version = SOSPeerInfoGetVersion();
  v34 = SOSPeerInfoSupportsCKKSForAll();
  v40 = @"SOS";
  if (v34)
  {
    v40 = @"c4a";
  }

  v41 = Value;
  if (!Value)
  {
    v41 = &stru_1000090A8;
  }

  sub_100004198(qword_10000C3C8, 0, @"%@ pid:%@ V%d %@ OS:%@\n", v35, v36, v37, v38, v39, v31, v32, Version, v40, v41);
  CFRelease(v31);
  if (v7)
  {
    CFRelease(v7);
  }
}

intptr_t sub_1000037FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = a2;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SOSCloudKeychainGetObjectsFromCloud returned: %@", &v12, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7)
  {
    CFRetain(v7);
  }

  if (a3)
  {
    v8 = secLogObjForScope();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SOSCloudKeychainGetObjectsFromCloud returned error: %@", &v12, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(*(*(a1 + 48) + 8) + 24);
    v12 = 138412290;
    v13 = v11;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SOSCloudKeychainGetObjectsFromCloud block exit: %@", &v12, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000039B0(uint64_t a1, uint64_t a2, const void *a3)
{
  KeyType = SOSKVSKeyGetKeyType();
  if (KeyType == *(a1 + 40))
  {
    if (KeyType > 3)
    {
      if (KeyType == 4)
      {
        goto LABEL_17;
      }

      if (KeyType == 8)
      {
        if (a3)
        {
          v54 = CFGetTypeID(a3);
          if (v54 == CFDataGetTypeID())
          {
            cf = 0;
            BytePtr = CFDataGetBytePtr(a3);
            v56 = CFDataCreate(kCFAllocatorDefault, BytePtr, 18);
            v57 = CFDataGetLength(a3) - 18;
            v58 = CFDataGetBytePtr(a3);
            v59 = CFDataCreate(kCFAllocatorDefault, v58 + 18, v57);
            v60 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v56, 0x8000100u);
            v61 = SOSCircleCreateFromData();
            if (v61)
            {
              valuePtr = 5;
              v62 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
              v70 = sub_100003E74(kCFAllocatorDefault, v63, v64, v65, v66, v67, v68, v69, @"SyncD", @"SyncD");
              sub_100004198(qword_10000C3C8, v70, @"%@: %@: %@\n", v71, v72, v73, v74, v75, a2, v60, v61, v62, 0);
              if (v62)
              {
                CFRelease(v62);
              }

              if (v70)
              {
                CFRelease(v70);
              }
            }

            else
            {
              v81 = qword_10000C3C8;
              v82 = sub_100003F68(v59);
              sub_100004198(v81, 0, @"%@: %@\n", v83, v84, v85, v86, v87, a2, v82);
            }

            if (v60)
            {
              CFRelease(v60);
            }

            if (v59)
            {
              CFRelease(v59);
            }

            if (v61)
            {
              CFRelease(v61);
            }

            if (v56)
            {
              CFRelease(v56);
            }

            v15 = cf;
            if (!cf)
            {
              goto LABEL_35;
            }

            cf = 0;
            goto LABEL_58;
          }

          goto LABEL_31;
        }

        goto LABEL_33;
      }

      if (KeyType != 9)
      {
        goto LABEL_31;
      }

      if (!a3)
      {
LABEL_33:
        v14 = qword_10000C3C8;
        v88 = 0;
        goto LABEL_34;
      }

      v16 = CFGetTypeID(a3);
      if (v16 != CFDataGetTypeID())
      {
        goto LABEL_31;
      }

      v17 = CFDataGetBytePtr(a3);
      v18 = CFDataCreate(kCFAllocatorDefault, v17, 18);
      v19 = CFDataGetLength(a3) - 18;
      v20 = CFDataGetBytePtr(a3);
      v21 = CFDataCreate(kCFAllocatorDefault, v20 + 18, v19);
      v22 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v18, 0x8000100u);
      v23 = sub_100002D6C(v21);
      v29 = v23;
      v30 = qword_10000C3C8;
      if (v23)
      {
        sub_100004198(qword_10000C3C8, 0, @"%@: %@: %@\n", v24, v25, v26, v27, v28, a2, v22, v23);
      }

      else
      {
        v89 = sub_100003F68(a3);
        sub_100004198(v30, 0, @"%@: %@\n", v76, v77, v78, v79, v80, a2, v89);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (v21)
      {
        v53 = v21;
        goto LABEL_42;
      }
    }

    else
    {
      if (KeyType)
      {
        if (KeyType != 1)
        {
          if (KeyType != 2)
          {
            goto LABEL_31;
          }

          if (a3)
          {
            v12 = CFGetTypeID(a3);
            if (v12 == CFDataGetTypeID())
            {
              v13 = sub_100002D6C(a3);
              v14 = qword_10000C3C8;
              if (v13)
              {
                sub_100004198(qword_10000C3C8, 0, @"%@: %@\n", v7, v8, v9, v10, v11, a2, v13);
                v15 = v13;
LABEL_58:
                CFRelease(v15);
                goto LABEL_35;
              }

              goto LABEL_32;
            }

LABEL_31:
            v14 = qword_10000C3C8;
LABEL_32:
            v88 = a3;
LABEL_34:
            sub_100004198(v14, 0, @"%@: %@\n", v7, v8, v9, v10, v11, a2, v88);
            goto LABEL_35;
          }

          goto LABEL_33;
        }

LABEL_17:
        if (a3)
        {
          v31 = CFGetTypeID(a3);
          if (v31 == CFDataGetTypeID())
          {
            v32 = SecOTRPacketTypeString();
            v33 = qword_10000C3C8;
            Length = CFDataGetLength(a3);
            sub_100004198(v33, 0, @"%@: %s: %ld\n", v34, v35, v36, v37, v38, a2, v32, Length);
LABEL_35:
            *(*(*(a1 + 32) + 8) + 24) = 1;
            return;
          }

          goto LABEL_31;
        }

        goto LABEL_33;
      }

      cf = 0;
      if (!a3)
      {
        goto LABEL_33;
      }

      v39 = CFGetTypeID(a3);
      if (v39 != CFDataGetTypeID())
      {
        goto LABEL_31;
      }

      valuePtr = 5;
      v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
      v29 = sub_100003E74(kCFAllocatorDefault, v40, v41, v42, v43, v44, v45, v46, @"SyncD", @"SyncD");
      v47 = SOSCircleCreateFromData();
      sub_100004198(qword_10000C3C8, v29, @"%@: %@\n", v48, v49, v50, v51, v52, a2, v47, @"idLength", v18, 0);
      if (v47)
      {
        v53 = v47;
LABEL_42:
        CFRelease(v53);
      }
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (!v29)
    {
      goto LABEL_35;
    }

    v15 = v29;
    goto LABEL_58;
  }
}

CFDictionaryRef sub_100003E74(CFAllocatorRef allocator, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v22 = &a10;
  v11 = 0;
  if (a9)
  {
    do
    {
      v11 += 2;
      v12 = v22;
      v22 += 2;
    }

    while (v12[1]);
  }

  v13 = v11 >> 1;
  v23 = &a9;
  Mutable = CFDictionaryCreateMutable(allocator, v11 >> 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  if (v11)
  {
    do
    {
      v16 = v23;
      v17 = *v23;
      v23 += 2;
      v18 = v16[1];
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = kCFNull;
      }

      CFDictionarySetValue(v15, v17, v19);
      --v13;
    }

    while (v13);
  }

  Copy = CFDictionaryCreateCopy(allocator, v15);
  CFRelease(v15);
  return Copy;
}

uint64_t sub_100003F68(const __CFData *a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_100004144;
  v17 = &unk_100008730;
  v18 = &v19;
  v4 = v15;
  v5 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, BytePtr, Length, kCFAllocatorNull);
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = CFDataGetLength(v5);
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * v8);
    v10 = CFDataGetBytePtr(v5);
    v11 = CFDataGetLength(v5);
    if (v11 >= 1)
    {
      do
      {
        v12 = *v10++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v12);
        --v11;
      }

      while (v11);
    }

    v16(v7, Mutable);
    CFRelease(Mutable);

    CFRelease(v5);
  }

  else
  {
    v16(v6, @"(null)");
    CFRelease(@"(null)");
  }

  v13 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v13;
}

void sub_100004128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef sub_100004144(uint64_t a1, uint64_t a2)
{
  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100004198(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  va_copy(&v14[5], va);
  v9 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, a2, a3, va);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_100004348;
  v14[3] = &unk_1000087B8;
  v14[4] = a1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v16 = sub_1000043D8;
  v17 = &unk_100008808;
  v18 = v14;
  CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
  if (CStringPtr)
  {
    v11 = CStringPtr;
    v12 = strlen(CStringPtr);
    (v16)(v15, v11, v12);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(v9);
    v22.location = 0;
    v22.length = Length;
    CFStringGetBytes(v9, v22, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 0x40000000;
    v19[2] = sub_100004358;
    v19[3] = &unk_1000087E0;
    v19[6] = 0;
    v19[7] = Length;
    v19[8] = usedBufLen;
    v19[4] = v15;
    v19[5] = v9;
    sub_1000043E8(usedBufLen + 1, v19);
  }

  CFRelease(v9);
}

uint64_t sub_100004358(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

void sub_1000043E8(size_t size, uint64_t a2)
{
  if (size)
  {
    if (size > 0x800)
    {
      v5 = malloc_type_malloc(size, 0x2B51245EuLL);
      (*(a2 + 16))(a2, size, v5);
      if (v5)
      {

        free(v5);
      }
    }

    else
    {
      __chkstk_darwin();
      memset(&v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, &v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
    }
  }

  else
  {
    v4 = *(a2 + 16);

    v4(a2, 0, 0);
  }
}