void RunBlockWithSandboxExtension(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v5)
  {
    [v5 bytes];
    v4 = sandbox_extension_consume();
    v3[2](v3);
    if (v4)
    {
      sandbox_extension_release();
    }
  }

  else
  {
    v3[2](v3);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id sub_100001378(void *a1)
{
  v1 = a1;
  v2 = GSFontCopyUserFontsDirectoryURL();
  v3 = v2;
  if (v1)
  {
    v4 = v1;
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 dictionaryForKey:@"hash"];
    v7 = [v6 objectForKey:v4];
    if (!v7)
    {
      if (v6)
      {
        v8 = [v6 mutableCopy];
      }

      else
      {
        v8 = [NSMutableDictionary dictionaryWithCapacity:1];
      }

      v10 = v8;
      v11 = +[NSUUID UUID];
      v7 = [v11 UUIDString];

      [v10 setObject:v7 forKey:v4];
      [v5 setObject:v10 forKey:@"hash"];
      [v5 synchronize];
      CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
    }

    v12 = [v3 URLByAppendingPathComponent:@"FontFiles"];
    v9 = [v12 URLByAppendingPathComponent:v7];
  }

  else
  {
    v9 = v2;
  }

  return v9;
}

void sub_100001A70(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) gsFontUserFontsCacheInfo];
  (*(v1 + 16))(v1, v2);
}

void sub_100001B60(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) gsFontProfileFontsCacheInfo];
  (*(v1 + 16))(v1, v2);
}

id sub_100001C30(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"hash"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100004184;
  v14 = sub_100004194;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008EE8;
  v7[3] = &unk_100010618;
  v4 = v1;
  v8 = v4;
  v9 = &v10;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_100001D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001F90(uint64_t a1)
{
  v1 = [*(a1 + 32) gsFontUserFontsCacheInfo];
  if (v1)
  {
    v2 = GSFontCopyUserFontsDirectoryURL();
    v3 = [v2 URLByAppendingPathComponent:@"FontFiles"];
    v4 = [v3 path];

    v5 = [v1 allKeys];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 hasPrefix:v4])
          {
            [v1 removeObjectForKey:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = GSFontCopyUserFontsCacheInfoFileURL();
    v12 = [NSOutputStream outputStreamWithURL:v11 append:0];
    [v12 open];
    v14 = 0;
    [NSPropertyListSerialization writePropertyList:v1 toStream:v12 format:200 options:0 error:&v14];
    v13 = v14;
    [v12 close];
    if (v13)
    {
      FSLog();
    }
  }
}

void sub_100002258(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) recordLastAccessTime:*(a1 + 40)];
  }

  v2 = sub_100001378(*(a1 + 40));
  v3 = [v2 path];
  v4 = objc_opt_new();
  v5 = [[FontRegistrationInfo alloc] initWithTargetDirectoryURL:v2];
  v6 = [*(a1 + 32) gsFontUserFontsCacheInfo];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000023B0;
  v12[3] = &unk_100010398;
  v16 = *(a1 + 57);
  v13 = v3;
  v14 = v5;
  v15 = v4;
  v7 = v4;
  v8 = v5;
  v9 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v7, v10, v11);
}

void sub_1000023B0(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  if ([v20 hasPrefix:*(a1 + 32)])
  {
    v6 = [v5 objectForKey:@"disabled"];
    v7 = [v6 BOOLValue];
    v8 = *(a1 + 56);

    if (v8 != v7)
    {
      v9 = [v5 mutableCopy];
      [v9 setObject:v20 forKey:@"actualPath"];
      v10 = [v20 lastPathComponent];
      v11 = [v20 stringByDeletingLastPathComponent];
      v12 = [v11 lastPathComponent];

      v13 = sub_100001C30(v12);
      if (v13)
      {
        [v9 setObject:v13 forKey:@"identifier"];
      }

      v14 = [*(a1 + 40) fontInfoForUUID:v10];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 objectForKey:@"NSCTFontFileURLAttribute"];

        if (!v16)
        {
          v17 = [v15 mutableCopy];
          v18 = [NSURL fileURLWithPath:v20 isDirectory:0];
          if (v18)
          {
            [v17 setObject:v18 forKey:@"NSCTFontFileURLAttribute"];
            v19 = v17;

            v15 = v19;
          }
        }

        [v9 setObject:v15 forKey:@"providedInfo"];
      }

      [*(a1 + 48) addObject:v9];
    }
  }
}

void sub_1000026E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 32) fontNamesFromFontInfoDict:{*(*(&v14 + 1) + 8 * v9), v14}];
        [v4 unionSet:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 40);
  v12 = [v4 allObjects];
  v13 = [v12 sortedArrayUsingSelector:"compare:"];
  (*(v11 + 16))(v11, v13);
}

void sub_100002904(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 32) familyNamesFromFontInfoDict:{*(*(&v14 + 1) + 8 * v9), v14}];
        [v4 unionSet:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 40);
  v12 = [v4 allObjects];
  v13 = [v12 sortedArrayUsingSelector:"compare:"];
  (*(v11 + 16))(v11, v13);
}

void sub_100002F44(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (!v6 || [v6 containsObject:v10])
  {
    v7 = *(a1 + 40);
    v8 = [v5 objectForKey:@"familyName"];
    v9 = [v8 allValues];
    [v7 addObjectsFromArray:v9];
  }
}

void sub_100003130(uint64_t a1)
{
  v1 = (a1 + 40);
  [*(a1 + 32) recordLastAccessTime:*(a1 + 40)];
  v107 = objc_opt_new();
  v94 = objc_opt_new();
  v92 = objc_opt_new();
  v106 = [NSMutableDictionary dictionaryWithCapacity:0];
  v95 = sub_100001378(*v1);
  v105 = [[FontRegistrationInfo alloc] initWithTargetDirectoryURL:v95];
  v96 = +[NSFileManager defaultManager];
  v150 = 0;
  LODWORD(v1) = [v96 createDirectoryAtURL:v95 withIntermediateDirectories:1 attributes:0 error:&v150];
  v91 = v150;
  if (!v1)
  {
    v32 = [v95 path];
    v33 = *(a1 + 40);
    v34 = [v91 domain];
    v90 = [v91 code];
    v83 = v32;
    FSLog_Error();

    v2 = objc_opt_new();
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v35 = *(a1 + 48);
    v36 = [v35 countByEnumeratingWithState:&v124 objects:v156 count:{16, v83, v33, v34, v90}];
    if (v36)
    {
      v37 = *v125;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v125 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = [*(*(&v124 + 1) + 8 * i) objectForKeyedSubscript:@"parameterIndexes"];
          [v2 addObjectsFromArray:v39];
        }

        v36 = [v35 countByEnumeratingWithState:&v124 objects:v156 count:16];
      }

      while (v36);
    }

    v154 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
    v155 = v2;
    v40 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
    v41 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:2 userInfo:v40];

    [v107 addObject:v41];
    goto LABEL_36;
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v2 = *(a1 + 48);
  v101 = [v2 countByEnumeratingWithState:&v146 objects:v163 count:16];
  if (!v101)
  {
LABEL_36:
    v97 = 0;
    goto LABEL_37;
  }

  v97 = 0;
  v99 = *v147;
  v93 = v2;
  do
  {
    for (j = 0; j != v101; j = j + 1)
    {
      if (*v147 != v99)
      {
        objc_enumerationMutation(v2);
      }

      v4 = *(*(&v146 + 1) + 8 * j);
      v5 = [v4 objectForKey:{@"NSCTFontFileURLAttribute", v81}];
      if (v5)
      {
        v6 = [v4 objectForKey:@"CTFontIgnoreURLLocationAttribute"];
        v7 = [v6 BOOLValue];

        if (v7)
        {
          v8 = [v4 objectForKey:@"CTFontRegistrationUserInfoAttribute"];
          if ([(FontRegistrationInfo *)v105 isKnownUserSpecifiedInfo:v8])
          {
            FSLog_Error();
            v161 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
            v9 = [v4 objectForKeyedSubscript:{@"parameterIndexes", v8}];
            v162 = v9;
            v10 = [NSDictionary dictionaryWithObjects:&v162 forKeys:&v161 count:1];
            v11 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:4 userInfo:v10];

            [v107 addObject:v11];
LABEL_24:

            goto LABEL_25;
          }
        }

        v145 = 0;
        v12 = [(FontRegistrationInfo *)v105 isKnownSourceFileURL:v5 uuid:&v145];
        v8 = v145;
        if (v12)
        {
          v11 = [v95 URLByAppendingPathComponent:v8];
          if (!v97)
          {
            v97 = [*(a1 + 32) gsFontUserFontsCacheInfo];
            if (!v97)
            {
              FSLog_Error();
              v97 = 0;
            }
          }

          v13 = [v11 path];
          v14 = [v97 objectForKey:v13];

          v15 = [v14 objectForKey:@"disabled"];
          v16 = *(a1 + 64) == [v15 BOOLValue];

          if (v16)
          {
            [v92 addObject:v11];
            v17 = [v5 lastPathComponent];
            v81 = v17;
            FSLog();
          }

          else
          {
            v82 = [v5 lastPathComponent];
            FSLog_Error();

            v157 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
            v26 = [v4 objectForKeyedSubscript:{@"parameterIndexes", v82}];
            v158 = v26;
            v27 = [NSDictionary dictionaryWithObjects:&v158 forKeys:&v157 count:1];
            v17 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:4 userInfo:v27];

            [v107 addObject:v17];
          }
        }

        else
        {
          v11 = [(FontRegistrationInfo *)v105 uuidNameForFontInfo:v4];
          v18 = [v95 URLByAppendingPathComponent:v11];
          v19 = [v4 objectForKeyedSubscript:@"parameterIndexes"];
          [v106 setObject:v19 forKey:v18];

          cf = 0;
          p_cf = &cf;
          v141 = 0x3032000000;
          v142 = sub_100004184;
          v143 = sub_100004194;
          v144 = 0;
          v135 = 0;
          v136 = &v135;
          v137 = 0x2020000000;
          v138 = 0;
          v20 = [v4 objectForKey:@"CTFontAssetDataAttribute"];
          v21 = [v4 objectForKey:@"sandbox"];
          v128[0] = _NSConcreteStackBlock;
          v128[1] = 3221225472;
          v128[2] = sub_10000419C;
          v128[3] = &unk_100010438;
          v22 = v20;
          v129 = v22;
          v133 = &v135;
          v130 = v96;
          v23 = v5;
          v131 = v23;
          v24 = v18;
          v132 = v24;
          v134 = &cf;
          RunBlockWithSandboxExtension(v21, v128);

          if (*(v136 + 24) == 1)
          {
            [v94 addObject:v24];
            v25 = [v23 lastPathComponent];
            v81 = v25;
            FSLog();
          }

          else
          {
            v28 = [p_cf[5] domain];
            v86 = [p_cf[5] code];
            FSLog_Error();

            v159[0] = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
            v29 = [v4 objectForKeyedSubscript:{@"parameterIndexes", v28, v86}];
            v159[1] = NSUnderlyingErrorKey;
            v30 = p_cf[5];
            v160[0] = v29;
            v160[1] = v30;
            v31 = [NSDictionary dictionaryWithObjects:v160 forKeys:v159 count:2];
            v25 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:3 userInfo:v31];

            [v107 addObject:v25];
          }

          v2 = v93;
          _Block_object_dispose(&v135, 8);
          _Block_object_dispose(&cf, 8);
        }

        goto LABEL_24;
      }

LABEL_25:
    }

    v101 = [v2 countByEnumeratingWithState:&v146 objects:v163 count:16];
  }

  while (v101);
LABEL_37:

  if ([v94 count])
  {
    cf = 0;
    v102 = GSFontRegisterPersistentURLsWithEnableStatus2();
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v42 = cf;
    v43 = [v42 countByEnumeratingWithState:&v120 objects:v153 count:16];
    if (v43)
    {
      v44 = *v121;
      do
      {
        for (k = 0; k != v43; k = k + 1)
        {
          if (*v121 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v120 + 1) + 8 * k);
          v47 = [v46 objectForKey:{@"result", v81}];
          v48 = [v47 intValue] == 0;

          if (!v48)
          {
            v49 = [v46 objectForKey:@"url"];
            v50 = *(a1 + 32);
            v51 = [v106 objectForKeyedSubscript:v49];
            v52 = [v50 errorForGSError:v46 withParamIndexes:v51];

            [v107 addObject:v52];
            v53 = [v46 objectForKey:@"faces"];
            v54 = [v53 count] == 0;

            if (v54)
            {
              v55 = [v49 lastPathComponent];
              [v96 removeItemAtURL:v49 error:0];
              [(FontRegistrationInfo *)v105 removeUUIDName:v55];
              v56 = [v49 path];
              if (v49)
              {
                [v94 removeObject:v56];
              }
            }
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v120 objects:v153 count:16];
      }

      while (v43);
    }

    v81 = v102;
    v85 = cf;
    FSLog();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if ([v92 count])
  {
    cf = 0;
    GSFontEnableOrDisablePersistentURLs2();
    if (cf)
    {
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v57 = v92;
      v58 = [v57 countByEnumeratingWithState:&v116 objects:v152 count:16];
      if (v58)
      {
        v59 = *v117;
        do
        {
          for (m = 0; m != v58; m = m + 1)
          {
            if (*v117 != v59)
            {
              objc_enumerationMutation(v57);
            }

            v61 = *(*(&v116 + 1) + 8 * m);
            v62 = [NSMutableDictionary dictionaryWithCapacity:0];
            v63 = [v106 objectForKeyedSubscript:v61];
            if (v63)
            {
              [v62 setObject:v63 forKey:@"FontProviderErrorUserInfoFontInfoParameterIndexesKey"];
            }

            v64 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:6 userInfo:v62];
            [v107 addObject:v64];
          }

          v58 = [v57 countByEnumeratingWithState:&v116 objects:v152 count:16];
        }

        while (v58);
      }

      CFRelease(cf);
    }
  }

  [(FontRegistrationInfo *)v105 update];
  if (![(FontRegistrationInfo *)v105 count])
  {
    v115 = 0;
    v65 = [v96 removeItemAtURL:v95 error:&v115];
    v66 = v115;
    if (v65)
    {
      [*(a1 + 32) forgetFontProvider:*(a1 + 40)];
    }

    else
    {
      v67 = [v95 path];
      v68 = *(a1 + 40);
      v88 = [v66 domain];
      v89 = [v66 code];
      v84 = v67;
      v87 = v68;
      FSLog_Error();
    }
  }

  v103 = objc_opt_new();
  v98 = [*(a1 + 32) filePathsFromFileURLs:v94];
  v100 = [v98 mutableCopy];
  v69 = [*(a1 + 32) filePathsFromFileURLs:v92];
  [v100 unionSet:v69];

  v70 = [*(a1 + 32) gsFontUserFontsCacheInfo];

  if (*(a1 + 64) == 1)
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v71 = v100;
    v72 = [v71 countByEnumeratingWithState:&v111 objects:v151 count:16];
    if (v72)
    {
      v73 = *v112;
      do
      {
        for (n = 0; n != v72; n = n + 1)
        {
          if (*v112 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v75 = *(*(&v111 + 1) + 8 * n);
          v76 = [v70 objectForKey:{v75, v84, v87, v88, v89}];
          v77 = v76;
          if (v76)
          {
            v78 = [v76 objectForKey:@"disabled"];
            v79 = [v78 BOOLValue];

            if ((v79 & 1) == 0)
            {
              [v103 setObject:v77 forKey:v75];
            }
          }
        }

        v72 = [v71 countByEnumeratingWithState:&v111 objects:v151 count:16];
      }

      while (v72);
    }
  }

  else
  {
    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_100004244;
    v108[3] = &unk_100010410;
    v109 = v100;
    v110 = v103;
    [v70 enumerateKeysAndObjectsUsingBlock:v108];

    v71 = v109;
  }

  (*(*(a1 + 56) + 16))();
  v80 = [*(a1 + 32) familyNamesForFilePaths:v98 inFontInfo:v70];
  [*(a1 + 32) recordInstalledFontFamiliesCount:{objc_msgSend(v80, "count")}];
}

void sub_100004154(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004184(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000419C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[7];
    v4 = *(a1[9] + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    v16 = v6;
    v7 = [v2 writeToURL:v3 options:2 error:&v16];
    v8 = v16;
  }

  else
  {
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v12 = *(a1[9] + 8);
    v13 = *(v12 + 40);
    v5 = (v12 + 40);
    v17 = v13;
    v7 = [v9 copyItemAtURL:v10 toURL:v11 error:&v17];
    v8 = v17;
  }

  v14 = v8;
  v15 = *v5;
  *v5 = v14;

  *(*(a1[8] + 8) + 24) = v7;
}

void sub_100004244(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (![*(a1 + 32) containsObject:v8] || (objc_msgSend(v5, "objectForKey:", @"disabled"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v7))
  {
    [*(a1 + 40) setObject:&__NSDictionary0__struct forKey:v8];
  }
}

uint64_t sub_100004378(uint64_t a1, void *a2)
{
  [a2 objectForKey:kFSFontAssetFontInfoKey];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = v38 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    v28 = v3;
    v29 = kFSFontAssetPostScriptFontNameKey;
    v24 = *v36;
    v25 = a1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = *(a1 + 32);
        v9 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v32;
          v26 = i;
          v27 = v5;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v32 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v31 + 1) + 8 * j);
              v14 = [v13 objectForKey:{@"NSFontNameAttribute", v24, v25}];
              if (v14)
              {
                v15 = [v8 objectForKey:v29];
                v16 = [v15 isEqualToString:v14];

                if (v16)
                {
                  goto LABEL_25;
                }
              }

              v17 = [v13 objectForKey:@"NSFontFamilyAttribute"];
              if (v17)
              {
                v18 = v17;
                v19 = [v8 objectForKey:@"FontFamilyName"];
                if ([v19 isEqualToString:v18])
                {

LABEL_25:
LABEL_26:

                  v22 = 1;
                  v3 = v28;
                  goto LABEL_27;
                }

                v20 = [v8 objectForKey:@"PreferredFamilyName"];
                v21 = [v20 isEqualToString:v18];

                if (v21)
                {
                  goto LABEL_26;
                }
              }

              else
              {
              }
            }

            v10 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
            v5 = v27;
            v3 = v28;
            v6 = v24;
            a1 = v25;
            i = v26;
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v35 objects:v40 count:16];
      v22 = 0;
    }

    while (v5);
  }

  else
  {
    v22 = 0;
  }

LABEL_27:

  return v22;
}

void sub_1000047B4(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) recordLastAccessTime:*(a1 + 40)];
  v66 = objc_opt_new();
  v80 = objc_opt_new();
  v2 = [NSMutableDictionary dictionaryWithCapacity:0];
  v81 = sub_100001378(v1[1]);
  v68 = [[FontRegistrationInfo alloc] initWithTargetDirectoryURL:v81];
  v63 = [*v1 gsFontUserFontsCacheInfo];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = *(a1 + 48);
  v70 = [obj countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (v70)
  {
    v69 = *v112;
    do
    {
      v3 = 0;
      do
      {
        if (*v112 != v69)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v73 = v3;
        v5 = *(*(&v111 + 1) + 8 * v3);
        v75 = [v5 objectForKey:{@"actualPath", v61}];
        if (!v75)
        {
          v77 = [v5 objectForKey:@"NSFontNameAttribute"];
          v72 = [v5 objectForKey:@"NSFontFamilyAttribute"];
          v71 = [v5 objectForKey:@"CTFontRegistrationUserInfoAttribute"];
          if (v77 | v72)
          {
            v8 = [v81 path];
            cf = 0;
            p_cf = &cf;
            v109 = 0x2020000000;
            v110 = 0;
            v96[0] = _NSConcreteStackBlock;
            v96[1] = 3221225472;
            v96[2] = sub_1000053DC;
            v96[3] = &unk_1000104B0;
            v9 = v8;
            v97 = v9;
            v10 = v77;
            v11 = *(a1 + 32);
            v98 = v10;
            v99 = v11;
            v100 = v72;
            v101 = v68;
            v102 = v71;
            v103 = v2;
            v104 = v80;
            v105 = v5;
            v106 = &cf;
            [v63 enumerateKeysAndObjectsUsingBlock:v96];
            if ((p_cf[3] & 1) == 0)
            {
              v122 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
              v12 = [v5 objectForKeyedSubscript:@"parameterIndexes"];
              v123 = v12;
              v13 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
              v14 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:5 userInfo:v13];

              [v66 addObject:v14];
            }

            _Block_object_dispose(&cf, 8);
LABEL_15:
            v15 = v9;
            goto LABEL_34;
          }

          if (v71)
          {
            v64 = [(FontRegistrationInfo *)v68 uuidsForUserInfo:?];
            if ([v64 count])
            {
              v94 = 0u;
              v95 = 0u;
              v92 = 0u;
              v93 = 0u;
              v16 = v64;
              v17 = [v16 countByEnumeratingWithState:&v92 objects:v121 count:16];
              if (v17)
              {
                v18 = *v93;
                do
                {
                  for (i = 0; i != v17; i = i + 1)
                  {
                    if (*v93 != v18)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v20 = [v81 URLByAppendingPathComponent:*(*(&v92 + 1) + 8 * i)];
                    v21 = [v2 objectForKey:v20];
                    if (!v21)
                    {
                      [v80 addObject:v20];
                      v21 = objc_opt_new();
                      [v2 setObject:v21 forKey:v20];
                    }

                    v22 = [v5 objectForKeyedSubscript:@"parameterIndexes"];
                    [v21 addObjectsFromArray:v22];
                  }

                  v17 = [v16 countByEnumeratingWithState:&v92 objects:v121 count:16];
                }

                while (v17);
              }
            }

            else
            {
              v119 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
              v27 = [v5 objectForKeyedSubscript:@"parameterIndexes"];
              v120 = v27;
              v28 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
              v16 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:5 userInfo:v28];

              [v66 addObject:v16];
            }

            v15 = v64;
            goto LABEL_34;
          }

          v9 = [v5 objectForKey:@"NSCTFontFileURLAttribute"];
          v15 = v9;
          if (!v9)
          {
LABEL_34:

            goto LABEL_35;
          }

          v91 = 0;
          v23 = [(FontRegistrationInfo *)v68 isKnownSourceFileURL:v9 uuid:&v91];
          v24 = v91;
          v25 = v24;
          if (v23)
          {
            v26 = v24;
            goto LABEL_38;
          }

          v90 = v24;
          v29 = [(FontRegistrationInfo *)v68 isKnownDestinationFileURL:v9 uuid:&v90];
          v26 = v90;

          if (v29)
          {
LABEL_38:
            v30 = [v81 URLByAppendingPathComponent:v26];
            v31 = [v2 objectForKey:v30];
            if (!v31)
            {
              [v80 addObject:v30];
              v31 = objc_opt_new();
              [v2 setObject:v31 forKey:v30];
            }

            v32 = [v5 objectForKeyedSubscript:@"parameterIndexes"];
            [v31 addObjectsFromArray:v32];
          }

          else
          {
            v117 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
            v33 = [v5 objectForKeyedSubscript:@"parameterIndexes"];
            v118 = v33;
            v34 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
            v30 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:5 userInfo:v34];

            [v66 addObject:v30];
          }

          goto LABEL_15;
        }

        v77 = [NSURL fileURLWithPath:?];
        if (v77)
        {
          v6 = [v2 objectForKey:?];
          if (!v6)
          {
            [v80 addObject:v77];
            v6 = objc_opt_new();
            [v2 setObject:v6 forKey:v77];
          }

          v7 = [v5 objectForKeyedSubscript:@"parameterIndexes"];
          [v6 addObjectsFromArray:v7];
        }

        else
        {
          v61 = v75;
          FSLog_Error();
        }

LABEL_35:

        v3 = v73 + 1;
      }

      while ((v73 + 1) != v70);
      v35 = [obj countByEnumeratingWithState:&v111 objects:v124 count:16];
      v70 = v35;
    }

    while (v35);
  }

  if ([v80 count])
  {
    v36 = *(a1 + 32);
    v37 = [v36 filePathsFromFileURLs:v80];
    v76 = [v36 familyNamesForFilePaths:v37 inFontInfo:v63];

    cf = 0;
    v74 = GSFontUnregisterUserFontsURLs();
    v78 = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v38 = cf;
    v39 = [v38 countByEnumeratingWithState:&v86 objects:v116 count:16];
    if (v39)
    {
      v40 = *v87;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v87 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v86 + 1) + 8 * j);
          v43 = [v42 objectForKey:{@"url", v61}];
          v44 = [v42 objectForKey:@"result"];
          v45 = [v44 intValue] == 0;

          if (v45)
          {
            v48 = [v43 lastPathComponent];
            v49 = [v43 path];
            [v78 addObject:v49];

            [(FontRegistrationInfo *)v68 removeUUIDName:v48];
          }

          else
          {
            v46 = *(a1 + 32);
            v47 = [v2 objectForKeyedSubscript:v43];
            v48 = [v46 errorForGSError:v42 withParamIndexes:v47];

            [v66 addObject:v48];
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v86 objects:v116 count:16];
      }

      while (v39);
    }

    if ([v78 count])
    {
      v50 = +[FontServicesDaemonManager sharedManager];
      [v50 scheduleFontFilesDeletion:v78];
    }

    v61 = v74;
    v62 = cf;
    FSLog();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v76 = 0;
  }

  [(FontRegistrationInfo *)v68 update:v61];
  if (![(FontRegistrationInfo *)v68 count])
  {
    [*(a1 + 32) forgetFontProvider:*(a1 + 40)];
  }

  v51 = [*(a1 + 32) gsFontUserFontsCacheInfo];

  v79 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v52 = v80;
  v53 = [v52 countByEnumeratingWithState:&v82 objects:v115 count:16];
  if (v53)
  {
    v54 = *v83;
    do
    {
      for (k = 0; k != v53; k = k + 1)
      {
        if (*v83 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = [*(*(&v82 + 1) + 8 * k) path];
        if (v56)
        {
          v57 = [v51 objectForKey:v56];
          v58 = v57;
          if (!v57 || ([v57 objectForKey:@"disabled"], v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v59, "BOOLValue"), v59, v60))
          {
            [v79 setObject:&__NSDictionary0__struct forKey:v56];
          }
        }
      }

      v53 = [v52 countByEnumeratingWithState:&v82 objects:v115 count:16];
    }

    while (v53);
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) recordUninstalledFontFamiliesCount:{objc_msgSend(v76, "count")}];
}

void sub_1000053DC(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v6 = a3;
  if ([v17 hasPrefix:*(a1 + 32)])
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v3 = [*(a1 + 48) fontNamesFromFontInfoDict:v6];
      if ([v3 containsObject:*(a1 + 40)])
      {

        goto LABEL_12;
      }

      if (!*(a1 + 56))
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else if (!*(a1 + 56))
    {
      goto LABEL_19;
    }

    v8 = [*(a1 + 48) familyNamesFromFontInfoDict:v6];
    v9 = [v8 containsObject:*(a1 + 56)];

    if (!v7)
    {
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v9)
    {
LABEL_12:
      v3 = [NSURL fileURLWithPath:v17];
      v10 = *(a1 + 64);
      v11 = [v3 lastPathComponent];
      v12 = [v10 fontInfoForUUID:v11];
      v13 = [v12 objectForKey:@"CTFontRegistrationUserInfoAttribute"];

      v14 = *(a1 + 72);
      if (!v14 || [v14 isEqualToString:v13])
      {
        v15 = [*(a1 + 80) objectForKey:v3];
        if (!v15)
        {
          [*(a1 + 88) addObject:v3];
          v15 = objc_opt_new();
          [*(a1 + 80) setObject:v15 forKey:v3];
        }

        v16 = [*(a1 + 96) objectForKeyedSubscript:@"parameterIndexes"];
        [v15 addObjectsFromArray:v16];

        *(*(*(a1 + 104) + 8) + 24) = 1;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
}

void sub_100005738(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) gsFontUserFontsCacheInfo];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v45 = 0u;
  v3 = [v33 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        if ([v8 hasPrefix:*(a1 + 40)])
        {
          v9 = [NSURL fileURLWithPath:v8];
          if (v9)
          {
            [v2 addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v5);
  }

  v29 = [*(a1 + 48) lastPathComponent];
  v31 = [v2 count];
  FSLog_Debug();

  cf = 0;
  v10 = GSFontUnregisterUserFontsURLs();
  v32 = [v2 count] - v10;
  FSLog_Debug();
  [*(a1 + 32) forgetFontProvider:{*(a1 + 56), v10, v32}];
  v34 = v2;
  v11 = [v2 count];
  v35 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = 0;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v38;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v37 + 1) + 8 * j);
        v19 = [v18 objectForKey:@"result"];
        v20 = [v19 intValue];

        if (v20)
        {
          if (!v15)
          {
            v15 = [v18 objectForKey:@"error"];
          }
        }

        else
        {
          v21 = [v18 objectForKey:@"url"];
          v22 = [v21 path];
          [v35 addObject:v22];

          --v11;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    v23 = [*(a1 + 48) lastPathComponent];
    v24 = [v15 domain];
    [v15 code];
    FSLog_Error();
  }

  else
  {
    v30 = *(a1 + 56);
    FSLog_Debug();
    v23 = [FontRegistrationInfo dictionaryFileURLForTargetDirectoryURL:*(a1 + 48), v30];
    v24 = +[NSFileManager defaultManager];
    v36 = v15;
    [v24 removeItemAtURL:v23 error:&v36];
    v25 = v36;

    v15 = v25;
  }

  if ([v35 count])
  {
    v28 = +[FontServicesDaemonManager sharedManager];
    [v28 scheduleFontFilesDeletion:v35];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v15, v26, v27);
}

void sub_100006238(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 hasPrefix:*(a1 + 32)])
  {
    v6 = [v5 objectForKey:@"disabled"];
    v7 = [v6 BOOLValue];

    if (v7 == *(a1 + 48))
    {
      v8 = [NSURL fileURLWithPath:v9];
      if (v8)
      {
        [*(a1 + 40) addObject:v8];
      }
    }
  }
}

void sub_1000063F8(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"suspended"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:*(a1 + 32)];

    if (v5)
    {
      goto LABEL_7;
    }

    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  if (v6)
  {
    v8 = +[NSDate now];
    [v7 setObject:v8 forKey:*(a1 + 32)];

    [v2 setObject:v7 forKey:@"suspended"];
    [v2 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }

LABEL_7:
  v9 = [*(a1 + 40) fontFilesForFontProvider:*(a1 + 32) suspended:0];
  if ([v9 count])
  {
    FSLog();
    GSFontEnableOrDisablePersistentURLs2();
  }
}

uint64_t sub_100006E50(uint64_t a1)
{
  FSLog_Debug();
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006EF8;
  v4[3] = &unk_100010370;
  v4[4] = v2;
  [v2 updateUserInstalledFonts:v4];
  return (*(*(a1 + 40) + 16))();
}

void sub_100006EF8(uint64_t a1)
{
  v1 = [*(a1 + 32) gsFontUserFontsCacheInfo];
  v2 = objc_opt_new();
  v91 = objc_opt_new();
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v75 = v1;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v122 objects:v132 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v123;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v123 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v122 + 1) + 8 * i);
        if (IsPathRegisteredFontAssetFontFile(v8))
        {
          v9 = [v8 stringByDeletingLastPathComponent];
          v10 = [v9 lastPathComponent];

          [v2 addObject:v10];
          [v91 setObject:v8 forKey:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v122 objects:v132 count:16];
    }

    while (v5);
  }

  v11 = +[NSFileManager defaultManager];
  v12 = FontAssetDirectoryPath();
  v13 = [NSURL fileURLWithPath:v12 isDirectory:1];
  v131 = NSURLIsDirectoryKey;
  v14 = [NSArray arrayWithObjects:&v131 count:1];
  v121 = 0;
  v85 = v11;
  v15 = [v11 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v14 options:20 error:&v121];
  v16 = v121;

  if (v16)
  {
    v70 = [v16 domain];
    v72 = [v16 code];
    FSLog_Error();
  }

  v74 = v16;
  v17 = objc_opt_new();
  v81 = objc_opt_new();
  v18 = objc_opt_new();
  v76 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v19 = v15;
  v82 = v17;
  v80 = v19;
  v20 = NSURLIsDirectoryKey;
  v92 = [v19 countByEnumeratingWithState:&v117 objects:v130 count:16];
  if (v92)
  {
    v21 = *v118;
    v78 = v2;
    v83 = *v118;
    do
    {
      for (j = 0; j != v92; j = j + 1)
      {
        if (*v118 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v117 + 1) + 8 * j);
        v116 = 0;
        v24 = [v23 getResourceValue:&v116 forKey:v20 error:{0, v70, v72}];
        v25 = v116;
        v26 = v25;
        if (v24 && [v25 BOOLValue])
        {
          v27 = [v23 URLByAppendingPathComponent:@"AssetData" isDirectory:1];
          v115 = 0;
          v89 = v27;
          v28 = [v85 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
          v29 = v115;
          v30 = v29;
          if (v29)
          {
            v70 = [v29 domain];
            v72 = [v30 code];
            FSLog_Error();
          }

          if ([v28 count])
          {
            v31 = [v23 lastPathComponent];
            [v17 addObject:v31];
            if (([v2 containsObject:v31] & 1) == 0)
            {
              [v76 setObject:v28 forKey:v31];
            }

            obj = v31;
            [v81 addObjectsFromArray:v28];
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v32 = v28;
            v33 = [v32 countByEnumeratingWithState:&v111 objects:v129 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v112;
              do
              {
                for (k = 0; k != v34; k = k + 1)
                {
                  if (*v112 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = [*(*(&v111 + 1) + 8 * k) path];
                  [v18 addObject:v37];
                }

                v34 = [v32 countByEnumeratingWithState:&v111 objects:v129 count:16];
              }

              while (v34);
            }

            v17 = v82;
            v2 = v78;
            v19 = v80;
          }

          v21 = v83;
          v20 = NSURLIsDirectoryKey;
        }
      }

      v92 = [v19 countByEnumeratingWithState:&v117 objects:v130 count:16];
    }

    while (v92);
  }

  v90 = objc_opt_new();
  v93 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v38 = v2;
  v39 = [v38 countByEnumeratingWithState:&v107 objects:v128 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v108;
    do
    {
      for (m = 0; m != v40; m = m + 1)
      {
        if (*v108 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v107 + 1) + 8 * m);
        if (([v17 containsObject:{v43, v70, v72}] & 1) == 0)
        {
          v44 = [v91 objectForKey:v43];
          [v90 addObject:v43];
          v45 = [NSURL fileURLWithPath:v44];
          [v93 addObject:v45];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v107 objects:v128 count:16];
    }

    while (v40);
  }

  v46 = RegisteredFontAssetFileDirectoryURL();
  v47 = objc_opt_new();
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_1000078FC;
  v103[3] = &unk_100010578;
  v77 = v46;
  v104 = v77;
  v79 = v85;
  v105 = v79;
  v48 = v47;
  v106 = v48;
  [v76 enumerateKeysAndObjectsUsingBlock:v103];
  v84 = v38;
  if ([v48 count])
  {
    cf = 0;
    GSFontRegisterPersistentURLsWithEnableStatus2();
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v49 = 0;
    v50 = [v49 countByEnumeratingWithState:&v98 objects:v127 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v99;
      do
      {
        for (n = 0; n != v51; n = n + 1)
        {
          if (*v99 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v98 + 1) + 8 * n);
          v55 = [v54 objectForKey:{@"result", v70, v72}];
          v56 = [v55 intValue];

          if (v56)
          {
            v57 = [v54 objectForKey:@"url"];
            [v57 lastPathComponent];
            v72 = v70 = v56;
            FSLog_Debug();
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v98 objects:v127 count:16];
      }

      while (v51);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v17 = v82;
    v38 = v84;
  }

  v58 = v93;
  if ([v93 count])
  {
    cf = 0;
    GSFontUnregisterUserFontsURLs();
    v86 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obja = cf;
    v59 = [obja countByEnumeratingWithState:&v94 objects:v126 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v95;
      do
      {
        for (ii = 0; ii != v60; ii = ii + 1)
        {
          if (*v95 != v61)
          {
            objc_enumerationMutation(obja);
          }

          v63 = *(*(&v94 + 1) + 8 * ii);
          v64 = [v63 objectForKey:{@"result", v71, v73}];
          v65 = [v64 intValue];

          v66 = [v63 objectForKey:@"url"];
          v67 = v66;
          if (v65)
          {
            v68 = [v66 lastPathComponent];
            v71 = v65;
            v73 = v68;
            FSLog_Debug();
          }

          else
          {
            v68 = [v66 path];
            [v86 addObject:v68];
          }
        }

        v60 = [obja countByEnumeratingWithState:&v94 objects:v126 count:16];
      }

      while (v60);
    }

    if ([v86 count])
    {
      v69 = +[FontServicesDaemonManager sharedManager];
      [v69 scheduleFontFilesDeletion:v86];
    }

    v17 = v82;
    v38 = v84;
    if (cf)
    {
      CFRelease(cf);
    }

    v58 = v93;
  }
}

void sub_1000078FC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] URLByAppendingPathComponent:v5];
  v8 = a1[5];
  v34 = 0;
  LODWORD(a3) = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v34];
  v9 = v34;
  v10 = v9;
  if (a3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v26 = v10;
      v27 = v6;
      v28 = v5;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v16 lastPathComponent];
          v18 = [v7 URLByAppendingPathComponent:v17];

          [a1[5] removeItemAtURL:v18 error:0];
          v19 = a1[5];
          v29 = 0;
          v20 = [v19 copyItemAtURL:v16 toURL:v18 error:&v29];
          v21 = v29;
          if (v20)
          {
            [a1[6] addObject:v18];
          }

          else
          {
            v22 = [v16 lastPathComponent];
            v24 = [v21 domain];
            v25 = [v21 code];
            v23 = v22;
            FSLog_Error();
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v13);
      v6 = v27;
      v5 = v28;
      v10 = v26;
    }
  }

  else
  {
    v11 = [v9 domain];
    [v10 code];
    FSLog_Error();
  }
}

uint64_t sub_100007C30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = GSFontSynchronizeProfileFonts();
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_10000848C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKey:@"CTFontRegistrationUserInfoAttribute"];
  if ([*(a1 + 32) isEqualToString:v5])
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_1000086F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100008714(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [a3 objectForKey:@"NSCTFontFileURLAttribute"];
  if (v8)
  {
    v9 = [*(a1 + 32) subpathForAppBundlePath:v8];
    if ([v9 isEqualToString:*(a1 + 40)])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_1000089F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008A10(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 objectForKey:@"CTFontRegistrationUserInfoAttribute"];
  *(*(*(a1 + 40) + 8) + 24) = [v6 isEqualToString:*(a1 + 32)];

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

void sub_100008D88(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v8])
  {
    v6 = [v5 objectForKey:@"parameterIndexes"];

    if (v6)
    {
      v7 = [v5 mutableCopy];
      [v7 removeObjectForKey:@"parameterIndexes"];

      v5 = v7;
    }

    [*(a1 + 40) setObject:v5 forKey:v8];
  }
}

void sub_100008EE8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) isEqualToString:a3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

id IsPathRegisteredFontAssetFontFile(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"/private/"])
  {
    v2 = [v1 substringFromIndex:8];

    v1 = v2;
  }

  v3 = [v1 hasPrefix:@"/var/mobile/Library/UserFonts/FontAssets/"];

  return v3;
}

void StartAccessingFontAssetsWithHandler(void *a1)
{
  v1 = a1;
  v3 = v1;
  if (byte_100014CE9)
  {
    v1[2](v1);
  }

  else
  {
    sub_1000097C4(v2);
    v5 = [objc_alloc(*(v4 + 512)) initWithType:@"com.apple.MobileAsset.Font8"];
    [v5 setDoNotBlockBeforeFirstUnlock:1];
    [v5 setDoNotBlockOnNetworkStatus:1];
    [v5 returnTypes:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000090F8;
    v7[3] = &unk_100010680;
    v8 = v5;
    v9 = v3;
    v6 = v5;
    [v6 queryMetaDataWithError:v7];
  }
}

uint64_t sub_1000090F8(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  [v2 enumerateObjectsUsingBlock:&stru_100010658];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100009154(id a1, MAAsset *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  if ([(MAAsset *)v6 state]== 2)
  {
    v5 = [(MAAsset *)v6 getLocalFileUrl];

    if (v5)
    {
      byte_100014CE9 = 1;
      *a4 = 1;
    }
  }
}

void PurgeFontAssetsWithHandler(void *a1)
{
  v1 = a1;
  sub_1000097C4(v2);
  v4 = [objc_alloc(*(v3 + 512)) initWithType:@"com.apple.MobileAsset.Font8"];
  [v4 setDoNotBlockBeforeFirstUnlock:1];
  [v4 setDoNotBlockOnNetworkStatus:1];
  [v4 returnTypes:2];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000092AC;
  v7[3] = &unk_100010680;
  v8 = v4;
  v9 = v1;
  v5 = v1;
  v6 = v4;
  [v6 queryMetaDataWithError:v7];
}

void sub_1000092AC(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000934C;
  v3[3] = &unk_1000106E8;
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
}

void sub_10000934C(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 state] == 2)
  {
    v3 = *(a1 + 32);
    v4 = [v5 attributes];
    LODWORD(v3) = (*(v3 + 16))(v3, v4);

    if (v3)
    {
      [v5 purge:&stru_1000106C0];
    }
  }
}

double sub_1000097C4(double result)
{
  if (!atomic_load(&unk_100014CD8))
  {
    return sub_1000097E8(result);
  }

  return result;
}

double sub_1000097E8(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MobileAsset.framework/MobileAsset", 0);
  atomic_store(1u, &unk_100014CD8);
  return a1;
}