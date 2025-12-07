NSMutableDictionary *sub_1004BC060(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v220 = a3;
  v218 = v6;
  v219 = a4;
  v7 = RTBuddyCrashlogDecode();
  if (v7)
  {
    theDict = v7;
    if (!CFDictionaryGetCount(v7))
    {
      v8 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v220;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: processCrashLogForAnalytics: Empty dictionary returned for %@", buf, 0xCu);
      }
    }

    v221 = objc_opt_new();
    v232[0] = @"mailboxes";
    v9 = objc_opt_new();
    v233[0] = v9;
    v232[1] = @"panic";
    v10 = +[NSNull null];
    v233[1] = v10;
    v232[2] = @"crashlog-version";
    v11 = +[NSNull null];
    v233[2] = v11;
    v232[3] = @"exception";
    v12 = +[NSNull null];
    v233[3] = v12;
    v232[4] = @"uuid";
    v13 = +[NSNull null];
    v233[4] = v13;
    v232[5] = @"call-stack";
    v14 = +[NSNull null];
    v233[5] = v14;
    v232[6] = @"tasks";
    v15 = +[NSNull null];
    v233[6] = v15;
    v232[7] = @"registers";
    v16 = +[NSNull null];
    v233[7] = v16;
    v232[8] = @"scenario";
    v17 = +[NSNull null];
    v233[8] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v233 forKeys:v232 count:9];
    [v221 setDictionary:v18];

    Value = CFDictionaryGetValue(theDict, @"panic");
    v20 = Value;
    if (Value)
    {
      v21 = CFGetTypeID(Value);
      if (v21 == CFStringGetTypeID())
      {
        [v221 setObject:v20 forKey:@"panic"];
      }
    }

    v22 = CFDictionaryGetValue(theDict, @"crashlog-version");
    v23 = v22;
    if (v22)
    {
      v24 = CFGetTypeID(v22);
      if (v24 == CFStringGetTypeID())
      {
        [v221 setObject:v23 forKey:@"crashlog-version"];
      }
    }

    v25 = CFDictionaryGetValue(theDict, @"exception");
    v26 = v25;
    if (v25)
    {
      v27 = CFGetTypeID(v25);
      if (v27 == CFStringGetTypeID())
      {
        [v221 setObject:v26 forKey:@"exception"];
      }
    }

    v28 = CFDictionaryGetValue(theDict, @"sections");
    v29 = v28;
    if (v28)
    {
      v30 = CFGetTypeID(v28);
      if (v30 == CFArrayGetTypeID())
      {
        for (i = 0; ; ++i)
        {
          if (i >= CFArrayGetCount(v29))
          {
            goto LABEL_251;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v29, i);
          v33 = ValueAtIndex;
          if (!ValueAtIndex || (v34 = CFGetTypeID(ValueAtIndex), v34 != CFDictionaryGetTypeID()))
          {
            v61 = qword_100BCE8C8;
            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            *buf = 138412290;
            *&buf[4] = v220;
            v62 = v61;
            v63 = "processCrashLogForAnalytics: Invalid crash log section in %@";
            goto LABEL_63;
          }

          v35 = CFDictionaryGetValue(v33, @"section-name");
          v36 = v35;
          if (!v35 || (v37 = CFGetTypeID(v35), v37 != CFStringGetTypeID()))
          {
            v64 = qword_100BCE8C8;
            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            *buf = 138412290;
            *&buf[4] = v220;
            v62 = v64;
            v63 = "processCrashLogForAnalytics: Invalid crash log section name in %@";
LABEL_63:
            v65 = 12;
            goto LABEL_64;
          }

          CStringPtr = CFStringGetCStringPtr(v36, 0x8000100u);
          if (CStringPtr)
          {
            v39 = CFDictionaryGetValue(v33, @"section-signature");
            v40 = v39;
            if (v39 && (v41 = CFGetTypeID(v39), v41 == CFStringGetTypeID()))
            {
              v42 = CFStringGetCStringPtr(v40, 0x8000100u);
              if (v42)
              {
                if (!strcmp(CStringPtr, "Version Section") && !strcmp(v42, "Cver"))
                {
                  v69 = CFDictionaryGetValue(v33, @"uuid");
                  v70 = v69;
                  if (v69 && (v71 = CFGetTypeID(v69), v71 == CFStringGetTypeID()))
                  {
                    [v221 setObject:v70 forKey:@"uuid"];
                  }

                  else
                  {
                    v99 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v99;
                      v63 = "processCrashLogForAnalytics: Invalid UUID in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(CStringPtr, "Callstack Section") && !strcmp(v42, "Ccst"))
                {
                  v84 = CFDictionaryGetValue(v33, @"stack");
                  v85 = v215;
                  v86 = v84;
                  if (!v84 || (v87 = CFGetTypeID(v84), v87 != CFArrayGetTypeID()))
                  {
                    v88 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid stack in %@", buf, 0xCu);
                    }

                    v86 = 0;
                  }

                  v89 = CFDictionaryGetValue(v33, @"stack-description");
                  v90 = v89;
                  if (!v89 || (v91 = CFGetTypeID(v89), v91 != CFStringGetTypeID()))
                  {
                    v92 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid stack description in %@", buf, 0xCu);
                    }

                    v90 = 0;
                  }

                  v230[0] = @"stack";
                  v93 = v86;
                  if (!v86)
                  {
                    v213 = +[NSNull null];
                    v93 = v213;
                  }

                  v231[0] = v93;
                  v230[1] = @"stack-description";
                  v94 = v90;
                  if (!v90)
                  {
                    v85 = +[NSNull null];
                    v94 = v85;
                  }

                  v231[1] = v94;
                  v215 = v85;
                  v95 = [NSDictionary dictionaryWithObjects:v231 forKeys:v230 count:2];
                  [v221 setObject:v95 forKey:@"call-stack"];

                  if (!v90)
                  {
                  }

                  if (!v86)
                  {
                  }
                }

                else if (!strcmp(CStringPtr, "Task List Section") && !strcmp(v42, "Crtk"))
                {
                  v96 = CFDictionaryGetValue(v33, @"tasks");
                  v97 = v96;
                  if (v96 && (v98 = CFGetTypeID(v96), v98 == CFArrayGetTypeID()))
                  {
                    [v221 setObject:v97 forKey:@"tasks"];
                  }

                  else
                  {
                    v125 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v125;
                      v63 = "processCrashLogForAnalytics: Invalid tasks in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(CStringPtr, "Mailbox Section") && !strcmp(v42, "Cmbx"))
                {
                  cfa = CFDictionaryGetValue(v33, @"registers");
                  v100 = v214;
                  if (!cfa || (v101 = CFGetTypeID(cfa), v101 != CFDictionaryGetTypeID()))
                  {
                    v102 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid mailbox registers in %@", buf, 0xCu);
                    }

                    cfa = 0;
                  }

                  v103 = CFDictionaryGetValue(v33, @"mailbox-error");
                  v104 = v103;
                  if (!v103 || (v105 = CFGetTypeID(v103), v105 != CFStringGetTypeID()))
                  {
                    v106 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid mailbox error in %@", buf, 0xCu);
                    }

                    v104 = 0;
                  }

                  v107 = CFDictionaryGetValue(v33, @"route-number");
                  v108 = v107;
                  if (!v107 || (v109 = CFGetTypeID(v107), v109 != CFStringGetTypeID()))
                  {
                    v110 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid route number in %@", buf, 0xCu);
                    }

                    v108 = 0;
                  }

                  v111 = CFDictionaryGetValue(v33, @"log");
                  v112 = v111;
                  if (!v111 || (v113 = CFGetTypeID(v111), v113 != CFStringGetTypeID()))
                  {
                    v114 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid log in %@", buf, 0xCu);
                    }

                    v112 = 0;
                  }

                  v115 = [v221 objectForKey:@"mailboxes"];
                  v228[0] = @"registers";
                  v116 = cfa;
                  if (!cfa)
                  {
                    v100 = +[NSNull null];
                    v116 = v100;
                  }

                  v229[0] = v116;
                  v228[1] = @"mailbox-error";
                  v117 = v104;
                  v214 = v100;
                  if (!v104)
                  {
                    v212 = +[NSNull null];
                    v117 = v212;
                  }

                  v229[1] = v117;
                  v228[2] = @"route-number";
                  v118 = v108;
                  if (!v108)
                  {
                    v210 = +[NSNull null];
                    v118 = v210;
                  }

                  v229[2] = v118;
                  v228[3] = @"log";
                  v119 = v112;
                  if (!v112)
                  {
                    v211 = +[NSNull null];
                    v119 = v211;
                  }

                  v229[3] = v119;
                  v120 = [NSDictionary dictionaryWithObjects:v229 forKeys:v228 count:4];
                  [v115 addObject:v120];

                  if (!v112)
                  {
                  }

                  if (!v108)
                  {
                  }

                  if (!v104)
                  {
                  }

                  if (!cfa)
                  {
                  }
                }

                else if (!strcmp(CStringPtr, "Register Frame Section") && !strcmp(v42, "CrgM"))
                {
                  v122 = CFDictionaryGetValue(v33, @"registers");
                  v123 = v122;
                  if (v122 && (v124 = CFGetTypeID(v122), v124 == CFStringGetTypeID()))
                  {
                    [v221 setObject:v123 forKey:@"registers"];
                  }

                  else
                  {
                    v135 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v135;
                      v63 = "processCrashLogForAnalytics: Invalid registers in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(CStringPtr, "Product Version Section") && !strcmp(v42, "CPvr"))
                {
                  v126 = CFDictionaryGetValue(v33, @"Machine");
                  v127 = v126;
                  if (v126 && (v128 = CFGetTypeID(v126), v128 == CFStringGetTypeID()))
                  {
                    [v219 setObject:v127 forKey:@"accessory_machine_config"];
                  }

                  else
                  {
                    v136 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid Machine in %@", buf, 0xCu);
                    }
                  }

                  v137 = CFDictionaryGetValue(v33, @"Build");
                  v138 = v137;
                  if (v137 && (v139 = CFGetTypeID(v137), v139 == CFStringGetTypeID()))
                  {
                    [v219 setObject:v138 forKey:@"accessory_release_type"];
                  }

                  else
                  {
                    v140 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid Build in %@", buf, 0xCu);
                    }
                  }

                  v141 = CFDictionaryGetValue(v33, @"OS version");
                  v142 = v141;
                  if (v141 && (v143 = CFGetTypeID(v141), v143 == CFStringGetTypeID()))
                  {
                    v144 = v142;
                    [v219 setObject:v144 forKey:@"accessory_os_version"];
                    v145 = [v144 componentsSeparatedByString:@"."];
                    v146 = v145;
                    if (v145 && [v145 count])
                    {
                      v147 = [v146 objectAtIndexedSubscript:0];
                      v148 = [@"RTKitOS " stringByAppendingString:v147];
                      [v219 setObject:v148 forKey:@"accessory_os_train"];
                    }

                    else
                    {
                      v153 = qword_100BCE8C8;
                      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        *&buf[4] = v144;
                        *&buf[12] = 2112;
                        *&buf[14] = v220;
                        _os_log_error_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Could not determine OS train for version '%@' for %@", buf, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v149 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v149;
                      v63 = "processCrashLogForAnalytics: Invalid OS version in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(CStringPtr, "String Section") && !strcmp(v42, "Cstr"))
                {
                  v129 = CFDictionaryGetValue(v33, @"contents");
                  v130 = v129;
                  if (v129 && (v131 = CFGetTypeID(v129), v131 == CFStringGetTypeID()))
                  {
                    v132 = v130;
                    if ([v132 hasPrefix:@"CrashReporterKey:"])
                    {
                      v133 = [v132 substringFromIndex:{objc_msgSend(@"CrashReporterKey:", "length")}];
                      [v219 setObject:v133 forKey:@"accessory_crashreporter_key"];
                    }
                  }

                  else
                  {
                    v150 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v150;
                      v63 = "processCrashLogForAnalytics: Invalid string section contents in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(v42, "MTBF"))
                {
                  LODWORD(v223) = 0;
                  *v226 = 0;
                  v72 = CFDictionaryGetValue(v33, @"section-offset");
                  v73 = v72;
                  if (v72 && (v74 = CFGetTypeID(v72), v74 == CFNumberGetTypeID()))
                  {
                    if (CFNumberGetValue(v73, kCFNumberIntType, &v223))
                    {
                      v75 = CFDictionaryGetValue(v33, @"section-size");
                      v76 = v75;
                      if (v75 && (v77 = CFGetTypeID(v75), v77 == CFNumberGetTypeID()))
                      {
                        if (CFNumberGetValue(v76, kCFNumberIntType, v226))
                        {
                          v78 = *v226;
                          if (*v226 < 1 || (v79 = v223, (v223 & 0x80000000) != 0) || [v218 length] <= (v79 + v78))
                          {
                            v156 = qword_100BCE8C8;
                            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                            {
                              continue;
                            }

                            *buf = 67109634;
                            *&buf[4] = v223;
                            *&buf[8] = 1024;
                            *&buf[10] = *v226;
                            *&buf[14] = 2112;
                            *&buf[16] = v220;
                            v62 = v156;
                            v63 = "processCrashLogForAnalytics: Invalid mtbf section offset (%d) and size (%d) in %@";
LABEL_199:
                            v65 = 24;
LABEL_64:
                            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, v63, buf, v65);
                            continue;
                          }

                          v80 = v218;
                          v81 = [v218 bytes];
                          v82 = *v226;
                          if (*v226 <= 0x1Bu)
                          {
                            v83 = qword_100BCE8C8;
                            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                            {
                              continue;
                            }

                            *buf = 67109634;
                            *&buf[4] = v82;
                            *&buf[8] = 2048;
                            *&buf[10] = 28;
                            *&buf[18] = 2112;
                            *&buf[20] = v220;
                            v62 = v83;
                            v63 = "processCrashLogForAnalytics: mtbf section size too small (%d < %zu) in %@";
                            v65 = 28;
                            goto LABEL_64;
                          }

                          v160 = &v81[v223];
                          v161 = [NSNumber numberWithUnsignedInt:*(v160 + 6)];
                          [v219 setObject:v161 forKey:@"usage_since_last_crash"];

                          if (*v226 >= 0x25u)
                          {
                            v162 = "unknown";
                            if (v160[36] - 1 <= 2)
                            {
                              v162 = (&off_100AF9640)[(v160[36] - 1)];
                            }

                            v163 = [NSString stringWithCString:v162 encoding:4];
                            [v219 setObject:v163 forKey:@"accessory_fusing"];

                            if (*(v160 + 7) != -1)
                            {
                              v164 = [NSNumber numberWithUnsignedInt:?];
                              [v219 setObject:v164 forKey:@"usage_since_last_crash_user_facing"];
                            }

                            if (*(v160 + 8) != -1)
                            {
                              v165 = [NSNumber numberWithUnsignedInt:?];
                              [v219 setObject:v165 forKey:@"usage_since_last_crash_in_ear"];
                            }
                          }
                        }

                        else
                        {
                          v157 = qword_100BCE8C8;
                          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            *&buf[4] = v220;
                            v62 = v157;
                            v63 = "processCrashLogForAnalytics: Unable to convert mtbf section size in %@";
                            goto LABEL_63;
                          }
                        }
                      }

                      else
                      {
                        v151 = qword_100BCE8C8;
                        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          *&buf[4] = v220;
                          v62 = v151;
                          v63 = "processCrashLogForAnalytics: Invalid mtbf section size in %@";
                          goto LABEL_63;
                        }
                      }
                    }

                    else
                    {
                      v152 = qword_100BCE8C8;
                      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v220;
                        v62 = v152;
                        v63 = "processCrashLogForAnalytics: Unable to convert mtbf section offset in %@";
                        goto LABEL_63;
                      }
                    }
                  }

                  else
                  {
                    v121 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v121;
                      v63 = "processCrashLogForAnalytics: Invalid mtbf section offset in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else
                {
                  if (strcmp(v42, "Csif"))
                  {
                    continue;
                  }

                  valuePtr = 0;
                  v43 = CFDictionaryGetValue(v33, @"section-offset");
                  v44 = v43;
                  if (v43 && (v45 = CFGetTypeID(v43), v45 == CFNumberGetTypeID()))
                  {
                    if (CFNumberGetValue(v44, kCFNumberIntType, &valuePtr + 4))
                    {
                      v46 = CFDictionaryGetValue(v33, @"section-size");
                      v47 = v46;
                      if (v46 && (v48 = CFGetTypeID(v46), v48 == CFNumberGetTypeID()))
                      {
                        if (CFNumberGetValue(v47, kCFNumberIntType, &valuePtr))
                        {
                          v49 = valuePtr;
                          if (valuePtr >= 0x1C)
                          {
                            v50 = HIDWORD(valuePtr);
                            if ((valuePtr & 0x8000000000000000) == 0 && [v218 length] > v50 + v49)
                            {
                              v205 = objc_opt_new();
                              v51 = v218;
                              v52 = [v218 bytes];
                              cf = &v52[SHIDWORD(valuePtr)];
                              v53 = *(cf + 2);
                              v209 = objc_opt_new();
                              v54 = 0;
                              v55 = cf;
                              do
                              {
                                if ((*v55 & (1 << v54)) != 0)
                                {
                                  v56 = [NSString stringWithUTF8String:off_100B54480[v54]];
                                  [v209 addObject:v56];

                                  v55 = cf;
                                }

                                ++v54;
                              }

                              while (v54 != 25);
                              [v205 setValue:v209 forKey:@"active_scenarios"];
                              v57 = [NSNumber numberWithUnsignedLongLong:v53];
                              [v205 setValue:v57 forKey:@"time_since_last_transition"];

                              v58 = valuePtr;
                              v59 = *(cf + 6);
                              if (valuePtr < 4 * (v59 & 0x3FFu) + 28)
                              {
                                v60 = qword_100BCE8C8;
                                if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 67109634;
                                  *&buf[4] = v59 & 0x3FF;
                                  *&buf[8] = 1024;
                                  *&buf[10] = v58;
                                  *&buf[14] = 2112;
                                  *&buf[16] = v220;
                                  _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Scenario information range (%u) too large for section size (%d) in %@", buf, 0x18u);
                                }

                                v206 = +[NSNull null];
                                [v205 setValue:v206 forKey:@"event_history"];
                                goto LABEL_248;
                              }

                              v206 = objc_opt_new();
                              v166 = cf + 28;
                              v167 = *(cf + 6);
                              v168 = (v167 >> 20) & 0x3FF;
                              v169 = (v167 >> 10) & 0x3FF;
                              if (v168 == v169)
                              {
LABEL_210:
                                [v205 setValue:v206 forKey:@"event_history"];
                                v170 = *(cf + 6);
                                if (v170 < 0)
                                {
                                  v171 = v170 & 0x3FF;
                                  v172 = valuePtr;
                                  v173 = 4 * (*(cf + 6) & 0x3FFu) + 28;
                                  if ((v173 | 2uLL) > valuePtr)
                                  {
                                    v174 = qword_100BCE8C8;
                                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 67109634;
                                      *&buf[4] = v171;
                                      *&buf[8] = 1024;
                                      *&buf[10] = v172;
                                      *&buf[14] = 2112;
                                      *&buf[16] = v220;
                                      _os_log_error_impl(&_mh_execute_header, v174, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Scenario information with range (%u) indicates trailer present but not enough space in section size (%d) in %@", buf, 0x18u);
                                    }

                                    goto LABEL_243;
                                  }

                                  v195 = &v166[4 * v171];
                                  v196 = *v195;
                                  if (v196 + v173 > valuePtr)
                                  {
                                    v197 = qword_100BCE8C8;
                                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 67109890;
                                      *&buf[4] = v171;
                                      *&buf[8] = 1024;
                                      *&buf[10] = v196;
                                      *&buf[14] = 1024;
                                      *&buf[16] = v172;
                                      *&buf[20] = 2112;
                                      *&buf[22] = v220;
                                      _os_log_error_impl(&_mh_execute_header, v197, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Scenario information range (%u) and trailer length (%u) too large for section size (%d) in %@", buf, 0x1Eu);
                                    }

                                    goto LABEL_243;
                                  }

                                  if (v196 > 9)
                                  {
                                    v199 = objc_opt_new();
                                    v200 = [NSNumber numberWithUnsignedShort:*(v195 + 1) & 1];
                                    [v199 setObject:v200 forKey:@"connected"];

                                    if (*(v195 + 1))
                                    {
                                      v201 = [NSNumber numberWithUnsignedShort:*(v195 + 2)];
                                      [v199 setObject:v201 forKey:@"vid"];

                                      v202 = [NSNumber numberWithUnsignedShort:*(v195 + 3)];
                                      [v199 setObject:v202 forKey:@"pid"];

                                      v203 = [NSNumber numberWithUnsignedShort:*(v195 + 4)];
                                      [v199 setObject:v203 forKey:@"sw_ver"];
                                    }

                                    [v205 setObject:v199 forKey:@"routed_to_source"];
                                  }

                                  else
                                  {
                                    v198 = qword_100BCE8C8;
                                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 67109634;
                                      *&buf[4] = v196;
                                      *&buf[8] = 2048;
                                      *&buf[10] = 10;
                                      *&buf[18] = 2112;
                                      *&buf[20] = v220;
                                      _os_log_error_impl(&_mh_execute_header, v198, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Scenario information trailer length too small (%u < %zu) in %@", buf, 0x1Cu);
                                    }

LABEL_243:
                                    v199 = +[NSNull null];
                                    [v205 setObject:v199 forKey:@"routed_to_source"];
                                  }
                                }

LABEL_248:

                                [v221 setObject:v205 forKey:@"scenario"];
                                continue;
                              }

                              v175 = &v166[4 * v168];
                              v176 = v167 & 0x3FF;
                              v177 = v175;
                              do
                              {
                                v178 = *v175;
                                v179 = ((&v175[4 * ((v178 >> 24) & 7)] - v166 + 8) >> 2) % v176;
                                v175 = &v166[4 * v179];
                                v53 += v178 & 0xFFFFFF;
                              }

                              while (v179 != v169);
                              v208 = v53;
                              v180 = cf;
                              while (2)
                              {
                                v181 = v208 - (*v177 & 0xFFFFFF);
                                v223 = 0;
                                memset(buf, 0, 28);
                                sub_1004BE45C(v180, v177, &v223, buf);
                                v182 = v223 >> 27;
                                v207 = v177;
                                v208 = v181;
                                if (v182)
                                {
                                  v186 = sub_10000E92C();
                                  if ((*(*v186 + 8))(v186))
                                  {
                                    v187 = [NSMutableString stringWithFormat:@"%04x ", HIWORD(v223)];
                                    for (j = 0; j != 28; j += 4)
                                    {
                                      [v187 appendFormat:@"%02x%02x%02x%02x", *&buf[j], BYTE1(*&buf[j]), BYTE2(*&buf[j]), HIBYTE(*&buf[j])];
                                    }

                                    v189 = [NSNumber numberWithUnsignedLongLong:v181];
                                    v190 = [NSNumber numberWithUnsignedInt:v182];
                                    v191 = [NSNumber numberWithUnsignedChar:BYTE4(v223)];
                                    v185 = [NSDictionary dictionaryWithObjectsAndKeys:v189, @"timestamp", v190, @"source", v191, @"event_number", v187, @"data", 0];

                                    goto LABEL_231;
                                  }

                                  v185 = 0;
                                }

                                else
                                {
                                  v183 = BYTE4(v223);
                                  if (BYTE4(v223) >= 0x19u)
                                  {
                                    v184 = qword_100BCE8C8;
                                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                    {
                                      *v226 = 67109120;
                                      v227 = v183;
                                      _os_log_error_impl(&_mh_execute_header, v184, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid scenarioType %d", v226, 8u);
                                    }

                                    v185 = 0;
LABEL_234:

                                    v180 = cf;
                                    v193 = *(cf + 6);
                                    v194 = ((&v207[4 * (v207[3] & 7)] - v166 + 8) >> 2) % (v193 & 0x3FF);
                                    v177 = &v166[4 * v194];
                                    if (v194 == ((v193 >> 10) & 0x3FF))
                                    {
                                      goto LABEL_210;
                                    }

                                    continue;
                                  }

                                  v187 = [NSNumber numberWithUnsignedLongLong:v181];
                                  v189 = [NSString stringWithUTF8String:off_100B54480[v183]];
                                  if ((v223 & 0x1000000000000) != 0)
                                  {
                                    v192 = "ON";
                                  }

                                  else
                                  {
                                    v192 = "OFF";
                                  }

                                  v190 = [NSString stringWithUTF8String:v192];
                                  v185 = [NSDictionary dictionaryWithObjectsAndKeys:v187, @"timestamp", v189, @"scenario", v190, @"state", 0];
LABEL_231:
                                }

                                break;
                              }

                              [v206 addObject:v185];
                              goto LABEL_234;
                            }
                          }

                          v158 = qword_100BCE8C8;
                          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 67109634;
                            *&buf[4] = HIDWORD(valuePtr);
                            *&buf[8] = 1024;
                            *&buf[10] = valuePtr;
                            *&buf[14] = 2112;
                            *&buf[16] = v220;
                            v62 = v158;
                            v63 = "processCrashLogForAnalytics: Invalid scenario information section offset (%d) and size (%d) in %@";
                            goto LABEL_199;
                          }
                        }

                        else
                        {
                          v159 = qword_100BCE8C8;
                          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            *&buf[4] = v220;
                            v62 = v159;
                            v63 = "processCrashLogForAnalytics: Unable to convert scenario information section size in %@";
                            goto LABEL_63;
                          }
                        }
                      }

                      else
                      {
                        v154 = qword_100BCE8C8;
                        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          *&buf[4] = v220;
                          v62 = v154;
                          v63 = "processCrashLogForAnalytics: Invalid scenario information section size in %@";
                          goto LABEL_63;
                        }
                      }
                    }

                    else
                    {
                      v155 = qword_100BCE8C8;
                      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v220;
                        v62 = v155;
                        v63 = "processCrashLogForAnalytics: Unable to convert scenario information section offset in %@";
                        goto LABEL_63;
                      }
                    }
                  }

                  else
                  {
                    v134 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v134;
                      v63 = "processCrashLogForAnalytics: Invalid scenario information section offset in %@";
                      goto LABEL_63;
                    }
                  }
                }
              }

              else
              {
                v68 = qword_100BCE8C8;
                if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v220;
                  v62 = v68;
                  v63 = "processCrashLogForAnalytics: Could not convert crash log section signature in %@";
                  goto LABEL_63;
                }
              }
            }

            else
            {
              v66 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v220;
                v62 = v66;
                v63 = "processCrashLogForAnalytics: Invalid crash log section signature in %@";
                goto LABEL_63;
              }
            }
          }

          else
          {
            v67 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v220;
              v62 = v67;
              v63 = "processCrashLogForAnalytics: Could not convert crash log section name in %@";
              goto LABEL_63;
            }
          }
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835E84();
    }

LABEL_251:
    CFRelease(theDict);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835EF4();
    }

    v221 = 0;
  }

  return v221;
}

uint64_t sub_1004BE45C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(result + 24) & 0x3FF;
  v6 = result + 28;
  v7 = (a2 - (result + 28)) >> 2;
  v8 = 1;
  do
  {
    *(a3 + 4 * v4) = *(v6 + 4 * v7);
    v9 = v8;
    v7 = (v7 + 1) % v5;
    v4 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  if ((*(a2 + 3) & 7) != 0)
  {
    v10 = 0;
    do
    {
      *(a4 + 4 * v10) = *(v6 + 4 * v7);
      v7 = (v7 + 1) % v5;
      ++v10;
    }

    while (v10 < (*(a2 + 3) & 7u));
  }

  return result;
}

void sub_1004BE4D8(id a1)
{
  if (qword_100B51308 != -1)
  {
    sub_100834760();
  }

  v2 = qword_100B51300;

  sub_1004BE51C(v2);
}

uint64_t sub_1004BE51C(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 64);
  v2 = *(a1 + 48);
  while (v2 != *(a1 + 40))
  {
    v4 = *(v2 - 8);
    v2 -= 8;
    v3 = v4;
    v5 = *(v4 + 24) - 8194;
    v6 = v5 > 0xE;
    v7 = (1 << v5) & 0x409B;
    if (!v6 && v7 != 0)
    {
      goto LABEL_7;
    }
  }

  v3 = 0;
LABEL_7:
  v9 = sub_10000E92C();
  v10 = (*(*v9 + 8))(v9);
  if (v10 && (v12 = sub_10000C798(v10, v11), ((*(*v12 + 352))(v12) & 1) != 0))
  {
    if (*(a1 + 448))
    {
      v13 = qword_100BCE8C8;
      if (v3)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v3 + 8);
          *buf = 138543362;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "triggerW1AWDDiagnosticsEvent: Requesting AWD metrics from device %{public}@", buf, 0xCu);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        if (sub_100189034((v3 + 16), 0x20u, 0, 0) && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100835FDC();
        }

        sub_100022214(buf);
        sub_10002249C(buf);
      }

      else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083604C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835FA0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100835F64();
  }

  return sub_1000088CC(v16);
}

uint64_t sub_1004BE78C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, v1 + 64);
  v2 = *(v1 + 48);
  while (v2 != *(v1 + 40))
  {
    v3 = *(v2 - 8);
    v2 -= 8;
    v4 = *(v3 + 24) - 8194;
    v5 = v4 > 0xE;
    v6 = (1 << v4) & 0x409B;
    if (!v5 && v6 != 0)
    {
      v8 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = BYTE1(dword_100B6EA30);
        v10 = *(v1 + 415);
        v11 = sub_100304810(v1 + 409);
        *buf = 67109634;
        v16 = v9;
        v17 = 1024;
        v18 = v10;
        v19 = 2080;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "retransBuddyCMD: Buddy CMD type -> %d, numOfBuddyRetrans -> %d, Remote addr -> addr %s ", buf, 0x18u);
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v12 = sub_100189034((v1 + 409), 4u, byte_100B6EA39, &dword_100B6EA30);
      sub_100022214(buf);
      if (v12 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100836088();
      }

      ++*(v1 + 415);
      sub_10002249C(buf);
      return sub_1000088CC(v14);
    }
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008360F8();
  }

  return sub_1000088CC(v14);
}

void sub_1004BE980(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = 0;
  __src = 0;
  if (*(result + 448) == 1)
  {
    v7 = a7;
    v8 = a6;
    v9 = a5;
    v10 = a4;
    if (qword_100B508F0 != -1)
    {
      sub_100834D24();
    }

    v20 = *a2;
    LOWORD(v21) = *(a2 + 4);
    v14 = sub_1000E6554(off_100B508E8, &v20, 1);
    v15 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67110144;
      v21 = a3;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v9;
      v26 = 1024;
      v27 = v8;
      v28 = 1024;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "syncCrashLogWithBuddyComamnd, Command Type %d, side %d , offset %d , len %d, logType %d", &v20, 0x20u);
    }

    if (sub_1000C0348(v14))
    {
      v16 = sub_1004BEBD8(result, &__src, a3, v10, v9, v8, v7);
      if (!v16 || (v17 = v16, LOBYTE(v20) = 0, sub_1000216B4(&v20), v18 = sub_100189034(a2, 4u, v17, &__src), memcpy(&dword_100B6EA30, &__src, v17), byte_100B6EA39 = v17, v19 = *(a2 + 4), *(result + 409) = *a2, *(result + 413) = v19, *(result + 415) = 0, sub_100022214(&v20), sub_10002249C(&v20), v18))
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100834FA0();
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100836134();
    }
  }
}

void sub_1004BEBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004BEBD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int16 a5, __int16 a6, char a7)
{
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        word_100B54631 = bswap32(*(a1 + 139)) >> 16;
        byte_100B54633 = *(a1 + 141);
        v13 = dword_100B5462D;
        *(a2 + 3) = *(&dword_100B5462D + 3);
        *a2 = v13;
        result = 7;
        goto LABEL_22;
      }

      if (a3 == 7)
      {
        dword_100B5463C = bswap32(*(a1 + 142));
        *a2 = unk_100B54638;
        result = 8;
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (a3 == 4)
    {
      v9 = 50364928;
    }

    else
    {
      v9 = 50365440;
    }

LABEL_18:
    *a2 = v9;
    result = 4;
    goto LABEL_22;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      byte_100B54628 = a7;
      byte_100B54629 = HIBYTE(a5);
      byte_100B5462A = a5;
      byte_100B5462B = HIBYTE(a6);
      byte_100B5462C = a6;
      v10 = unk_100B54624;
      *(a2 + 8) = a6;
      *a2 = v10;
      result = 9;
      goto LABEL_22;
    }

    v9 = 50364416;
    goto LABEL_18;
  }

  if (!a3)
  {
    v12 = dword_100B54550;
    *(a2 + 4) = byte_100B54554;
    *a2 = v12;
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    *(a2 + 4) = 0;
    *a2 = 67139584;
LABEL_15:
    result = 5;
    goto LABEL_22;
  }

LABEL_20:
  result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100836170();
    result = 0;
  }

LABEL_22:
  *a2 = a4;
  return result;
}

void sub_1004BED8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1004B1ED8(a1, a3);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if ((atomic_load_explicit(&qword_100B6EF48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6EF48))
  {
    v14 = +[NSCharacterSet alphanumericCharacterSet];
    qword_100B6EF40 = [v14 invertedSet];

    __cxa_guard_release(&qword_100B6EF48);
  }

  v8 = [*v7 componentsSeparatedByCharactersInSet:qword_100B6EF40];
  v15 = [v8 componentsJoinedByString:&stru_100B0F9E0];

  v9 = [v15 length];
  if (v9 >= 0x101)
  {
    v10 = [v15 substringToIndex:256];

    v15 = v10;
  }

  v11 = sub_1004BF088(v9, a4);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  v12 = *(v7 + 40);
  if (v12 == 8)
  {
    sprintf(a2, "/private/var/mobile/Library/Logs/Bluetooth/Accessory_Trace_%s_%s_%c_%d_%d_%d_%d_%d_%d.bin", [v15 UTF8String], v11);
    goto LABEL_10;
  }

  v13 = v15;
  if (v12 == 7)
  {
    sprintf(a2, "/private/var/mobile/Library/Logs/Bluetooth/Accessory_Crash_%s_%s_%c_%d_%d_%d_%d_%d_%d.bin", [v15 UTF8String], v11);
LABEL_10:
    v13 = v15;
  }
}

void sub_1004BEFFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 424);
    v3 = [NSString stringWithCString:a2 encoding:4];
    [v2 addObject:?];
  }
}

const char *sub_1004BF088(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 1;
  if (a2 - 1) < 9 && ((0x187u >> v2))
  {
    return (&off_100AF9658)[v2];
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008361E0();
  }

  return "Unknown";
}

void sub_1004BF104(uint64_t a1, void *a2)
{
  v15 = a2;
  if (qword_100B50950 != -1)
  {
    sub_100834920();
  }

  v3 = sub_10033E9DC(off_100B50948);
  if (*(a1 + 24))
  {
    v14 = v3;
    __p = 0;
    v21 = 0;
    v22 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v15;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = v8;
          v10 = [v8 UTF8String];
          v11 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v24 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendLogCompleteCallback: Sending filename %s", buf, 0xCu);
          }

          v12 = strlen(v10);
          sub_1004BF7F8(buf, v10, &v10[v12 + 1], &__p);
        }

        v5 = [v4 countByEnumeratingWithState:&v16 objects:v25 count:16];
      }

      while (v5);
    }

    if (v21 == __p)
    {
      v13 = "";
    }

    else
    {
      v13 = __p;
    }

    sub_100348258(v14, *(a1 + 24), 64, v13, v21 - __p);
    *(a1 + 24) = 0;
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100836250();
  }
}

void sub_1004BF340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004BF394(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = *(a2 + 128);
  *(a1 + 20) = *(a2 + 132);
  *(a1 + 16) = v5;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1000C23E0(a2, __p);
  if (v18 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = *a1;
  *a1 = v7;

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000E5A58(a2, __p);
  if (v18 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = [NSString stringWithUTF8String:v9];
  v11 = *(a1 + 8);
  *(a1 + 8) = v10;

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = objc_opt_new();
  v13 = *(a1 + 80);
  *(a1 + 80) = v12;

  v14 = objc_opt_new();
  v15 = *(a1 + 104);
  *(a1 + 104) = v14;

  sub_1004B8880(a1);
  return a1;
}

void sub_1004BF4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004BF53C(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 64);
  if (v2)
  {
    fclose(v2);
  }

  return a1;
}

_BYTE *sub_1004BF7F8(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = &v7[-*a4];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          sub_1000C7698();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v7[-*a4];
        *v10 = *v5;
        v7 = v10 + 1;
        memcpy(0, v9, v14);
        *a4 = 0;
        *(a4 + 8) = v10 + 1;
        *(a4 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1004BF93C(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = 1752392040;
  *(a2 + 12) = 2081;
  *(a2 + 14) = result;
  return result;
}

id sub_1004BF95C(uint64_t a1)
{
  v2 = *(a1 + 8);

  return v2;
}

uint64_t sub_1004BF974()
{
  v0 = _CFCopySystemVersionDictionary();
  if (!v0)
  {
    return 288;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, _kCFSystemVersionProductVersionKey);
  if (Value)
  {
    v3 = Value;
    v4 = CFDictionaryGetValue(v1, _kCFSystemVersionProductVersionExtraKey);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = @"0";
    }

    IntValue = CFStringGetIntValue(v3);
    v7 = (CFStringGetDoubleValue(v3) * 10.0) % 10;
    v8 = CFStringGetIntValue(v5) | (IntValue << 8) | (16 * v7);
  }

  else
  {
    v8 = 288;
  }

  CFRelease(v1);
  return v8;
}

void sub_1004BFA4C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(byte_100B6EF68, memory_order_acquire) & 1) == 0)
  {
    sub_10083628C();
  }

  if (qword_100B6EF60 != -1)
  {
    sub_100836304();
  }

  if (byte_100B6EF87 < 0)
  {
    v2 = xmmword_100B6EF70;

    sub_100008904(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_100B6EF70;
    *(a1 + 16) = unk_100B6EF80;
  }
}

void sub_1004BFAEC(id a1)
{
  v11 = 0uLL;
  v12 = 0;
  v13 = xmmword_1008A9678;
  LODWORD(v14) = 1899561076;
  if (MGIsDeviceOfType())
  {
    v12 = 1899561076;
    v11 = xmmword_1008A9678;
  }

  LODWORD(v14) = 1425254930;
  v13 = xmmword_1008A968C;
  if (MGIsDeviceOfType())
  {
    v12 = 1425254930;
    v11 = xmmword_1008A968C;
  }

  LODWORD(v14) = -584398440;
  v13 = xmmword_1008A96A0;
  if (MGIsDeviceOfType())
  {
    v12 = -584398440;
    v11 = xmmword_1008A96A0;
  }

  LODWORD(v14) = -879476163;
  v13 = xmmword_1008A96B4;
  if (MGIsDeviceOfType())
  {
    v12 = -879476163;
    v11 = xmmword_1008A96B4;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  sub_100007AD0(&v13);
  v1 = 0;
  v2 = 1;
  do
  {
    v3 = v14;
    v4 = v14;
    *(&v14 + *(v14 - 24) + 8) = *(&v14 + *(v14 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(&v14 + *(v4 - 24) + 8) |= 0x4000u;
    v5 = (&v15[-1] + *(v4 - 24));
    if (v5[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v5);
      v6 = std::locale::use_facet(v9, &std::ctype<char>::id);
      (v6->__vftable[2].~facet_0)(v6, 32);
      std::locale::~locale(v9);
      v3 = v14;
    }

    v5[1].__fmtflags_ = 48;
    *(v15 + *(v3 - 24) + 8) = 2;
    v7 = *(&v11 + v1);
    std::ostream::operator<<();
    v2 &= v7 == 0;
    ++v1;
  }

  while (v1 != 20);
  if ((v2 & 1) == 0)
  {
    std::stringbuf::str();
    if (byte_100B6EF87 < 0)
    {
      operator delete(xmmword_100B6EF70);
    }

    xmmword_100B6EF70 = *&v9[0].__locale_;
    unk_100B6EF80 = v10;
  }

  *&v14 = v8;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(*(&v16 + 1));
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  std::ios::~ios();
}

void sub_1004BFF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::locale a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1004C000C(id a1)
{
  v1 = objc_alloc_init(BTVCLinkAgent);
  v2 = qword_100BCE5A8;
  qword_100BCE5A8 = v1;
}

_BYTE *sub_1004C0288(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result _activate];
  }

  return result;
}

void sub_1004C0608(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_1004C0688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained[17];
    if (v7)
    {
      (*(v7 + 16))(v7, a2, a3, a4);
    }
  }
}

void sub_1004C071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained[18];
    if (v7)
    {
      (*(v7 + 16))(v7, a2, a3, a4);
    }
  }
}

void sub_1004C07B0(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 19);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

void sub_1004C0838(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 20);
    if (v7)
    {
      (*(v7 + 16))(v7, a2, v8);
    }
  }
}

void sub_1004C2D94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1004C2DBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent]  _bleBTVCLinkAdvertiser.connectionHandler\n", v9, 2u);
    }

    [WeakRetained _handleConnection:v5 parameters:v6];
  }
}

void sub_1004C2E88(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: [BTVCLinkAgent] ### Start BTVCLink advertiser failed: %@\n", &v4, 0xCu);
    }
  }
}

void sub_1004C3138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1004C3160(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent] Receive ADV data %@ from %@\n", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _receivedAdvReport:a2 withData:v9 fromPeer:v10 peerInfo:v11];
  }
}

void sub_1004C32A0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: #[BTVCLinkAgent] ## Start BTVCLink scanner failed: %@\n", &v4, 0xCu);
    }
  }
}

double sub_1004C4B20(uint64_t a1)
{
  *a1 = off_100AF97A0;
  *(a1 + 8) = off_100AF97E0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 1;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  return result;
}

void sub_1004C4B98(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100836638();
  }

  v2 = off_100B50A98 + 64;

  sub_100312650(v2, a1);
}

void sub_1004C4BF0(uint64_t a1)
{
  v2 = qword_100BCE970;
  v3 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack did start", buf, 2u);
  }

  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004C4CF4;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a1;
  sub_10000D334(v5, v7);
  v6 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initialized L2CAPChannel.", buf, 2u);
  }
}

_BYTE *sub_1004C4CF4(_BYTE *result)
{
  v1 = *(result + 4);
  *(v1 + 16) = 1;
  v2 = *(v1 + 24);
  v3 = (v1 + 32);
  if (v2 != (v1 + 32))
  {
    do
    {
      v4 = v2[5];
      v5 = *(v4 + 8);
      while (v5 != *(v4 + 16))
      {
        v6 = *v5;
        if (*(*v5 + 4))
        {
          ++v5;
        }

        else
        {
          v21 = 0;
          sub_1000216B4(&v21);
          v7 = *(v6 + 56);
          if (v7 == 1)
          {
            if ((sub_1002D359C() & 1) == 0)
            {
              return sub_10002249C(&v21);
            }

            v7 = *(v6 + 56);
          }

          v8 = *(v6 + 2);
          if (v7)
          {
            v9 = sub_100296978(v8, sub_1004C5074);
          }

          else
          {
            v9 = sub_1002967FC(v8, sub_1004C4F58);
          }

          v10 = v9;
          if (v9)
          {
            v11 = qword_100BCE970;
            if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
            {
              v14 = *(v6 + 2);
              sub_100018384(v2[4], __p);
              v15 = __p;
              if (v20 < 0)
              {
                v15 = __p[0];
              }

              *buf = 67109634;
              v23 = v14;
              v24 = 2082;
              v25 = v15;
              v26 = 1024;
              v27 = v10;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to re-register endpoint with psm 0x%04x after power cycle, for session %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x18u);
              if (v20 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v12 = *(v4 + 16);
            v13 = v12 - (v5 + 1);
            if (v12 != v5 + 1)
            {
              memmove(v5, v5 + 1, v12 - (v5 + 1));
            }

            *(v4 + 16) = v5 + v13;
          }

          else
          {
            ++v5;
          }

          result = sub_10002249C(&v21);
        }
      }

      v16 = v2[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v2[2];
          v18 = *v17 == v2;
          v2 = v17;
        }

        while (!v18);
      }

      v2 = v17;
    }

    while (v17 != v3);
  }

  return result;
}

void sub_1004C4F58(int a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE970;
  v7 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 67109376;
    v14 = a1;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "l2capConnectInd for PSM: 0x%0x, CID: 0x%x", buf, 0xEu);
  }

  v9 = sub_100007EE8(v7, v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004CB218;
  v10[3] = &unk_100ADF940;
  v11 = a1;
  v10[4] = a2;
  v12 = a3;
  sub_10000CA94(v9, v10);
}

void sub_1004C5074(__int16 a1, uint64_t a2, _DWORD *a3, int a4, int a5, uint64_t a6)
{
  v12 = qword_100BCE970;
  v13 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    v15 = "";
    if (a5)
    {
      v15 = ", wakeUpEvent";
    }

    LODWORD(buf) = 67109378;
    HIDWORD(buf) = a4;
    v23 = 2080;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Queueing initial data on channel 0x%04x as the L2CAP Channel hasn't finished registration%s", &buf, 0x12u);
  }

  LODWORD(buf) = *a3;
  *(&buf + 3) = *(a3 + 3);
  v16 = sub_100007EE8(v13, v14);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1004C92C8;
  v17[3] = &unk_100AF6B90;
  v18 = a1;
  *v20 = buf;
  *&v20[3] = *(&buf + 3);
  v19 = a4;
  v21 = a5;
  v17[4] = a2;
  v17[5] = a6;
  sub_10000CA94(v16, v17);
}

void sub_1004C51E8(uint64_t a1)
{
  v2 = qword_100BCE970;
  v3 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "L2CAPChannelManager::stackWillStop enter", buf, 2u);
  }

  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004C52EC;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a1;
  sub_10000D334(v5, v7);
  v6 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "L2CAPChannelManager::stackWillStop exit", buf, 2u);
  }
}

_BYTE *sub_1004C52EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v30 = 0;
  v2 = sub_1000216B4(&v30);
  v4 = *(v1 + 24);
  *(v1 + 16) = 0;
  v5 = (v1 + 32);
  if (v4 != (v1 + 32))
  {
    v26 = v1;
    v27 = (v1 + 32);
    v25 = (v1 + 24);
    do
    {
      v6 = v4[5];
      for (i = *(v6 + 8); i != *(v6 + 16); ++i)
      {
        v8 = *i;
        v10 = *(*i + 120);
        v9 = *(*i + 128);
        if (v10 != v9)
        {
          do
          {
            if (*(v10 + 18) == 1)
            {
              v11 = sub_1000B4EFC(v2, v3);
              sub_100373ADC(v11, *v10);
              v9 = *(v8 + 128);
            }

            v10 += 26;
          }

          while (v10 != v9);
          v10 = *(v8 + 120);
        }

        *(v8 + 128) = v10;
        if (*(v8 + 4))
        {
          v12 = qword_100BCE970;
          if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(v8 + 2);
            sub_100018384(v4[4], __p);
            v14 = __p;
            if (v29 < 0)
            {
              v14 = __p[0];
            }

            *buf = 67109378;
            v32 = v13;
            v33 = 2082;
            v34 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Clearing out outgoing connections to PSM 0x%04x for session %{public}s", buf, 0x12u);
            if (v29 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v15 = *(v6 + 16);
          v16 = v15 - (i + 1);
          if (v15 != i + 1)
          {
            memmove(i, i + 1, v15 - (i + 1));
          }

          *(v6 + 16) = i + v16;
          v17 = *(v8 + 120);
          if (v17)
          {
            *(v8 + 128) = v17;
            operator delete(v17);
          }

          operator delete();
        }
      }

      v18 = v4[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v4[2];
          v20 = *v19 == v4;
          v4 = v19;
        }

        while (!v20);
      }

      v4 = v19;
    }

    while (v19 != v27);
    v1 = v26;
    v4 = *v25;
    v5 = v27;
  }

  if (v4 != v5)
  {
    do
    {
      v21 = v4[5];
      if (*(v21 + 32) == 1)
      {
        sub_1004CDAE0(v21);
        operator delete();
      }

      v22 = v4[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v4[2];
          v20 = *v23 == v4;
          v4 = v23;
        }

        while (!v20);
      }

      v4 = v23;
    }

    while (v23 != v5);
  }

  *(v1 + 56) = *(v1 + 48);
  *(v1 + 80) = *(v1 + 72);
  return sub_10002249C(&v30);
}

void sub_1004C562C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned __int16 a5, int a6, char a7, int a8, unsigned __int16 a9, unsigned __int16 a10, unsigned __int16 a11, unsigned __int8 a12, int a13)
{
  v96 = a2;
  v95 = a5;
  if (!a2 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_100836674();
  }

  if (!a3 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_1008366A8();
  }

  if (!a4 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_1008366DC();
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    v47 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT) && ((sub_100018384(v96, &__p), v111 >= 0) ? (p_p = &__p) : (p_p = __p), v49 = *(a1 + 16), *buf = 67109890, *&buf[4] = v95, v98 = 2082, *v99 = p_p, *&v99[8] = 1024, *v100 = v49, *&v100[4] = 1024, *v101 = a13, _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Registering L2CAP Channel with PSM 0x%04x for session %{public}s failed , fStarted=%d priority:%d", buf, 0x1Eu), v111 < 0))
    {
      operator delete(__p);
      if (!a3)
      {
        return;
      }
    }

    else if (!a3)
    {
      return;
    }

    (*(*a3 + 16))(a3, v95, 111);
    return;
  }

  if (v95)
  {
LABEL_12:
    v18 = a11;
    v19 = a10;
    if (a8)
    {
      v20 = a8;
    }

    else
    {
      v20 = 1024;
    }

    if (a9)
    {
      v21 = a9;
    }

    else
    {
      v21 = 1024;
    }

    if (a8)
    {
      v22 = a9 == 0;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v21 = a8;
    }

    v90 = v21;
    v91 = v20;
    if (!(a11 | a10))
    {
      v18 = 30000;
      v19 = -1;
    }

    if (!v18)
    {
      v18 = 30000;
    }

    v88 = v18;
    v89 = v19;
    v23 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v95;
      sub_100018384(v96, &__p);
      v25 = v111 >= 0 ? &__p : __p;
      *buf = 67110914;
      *&buf[4] = v24;
      v98 = 1024;
      *v99 = v91;
      *&v99[4] = 1024;
      *&v99[6] = v90;
      *v100 = 1024;
      *&v100[2] = v89;
      *v101 = 1024;
      *&v101[2] = v88;
      v102 = 1024;
      v103 = a13;
      v104 = 1024;
      v105 = a6;
      v106 = 2082;
      v107 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "trying to publish psm:%d inMTU:%d inMPS:%d initialCredits:%d creditAckDelta:%d priority:%d packetBased:%d for session session %{public}s", buf, 0x36u);
      if (v111 < 0)
      {
        operator delete(__p);
      }
    }

    v27 = (a1 + 32);
    v26 = *(a1 + 32);
    v92 = (a1 + 24);
    if (!v26)
    {
      goto LABEL_42;
    }

    v28 = (a1 + 32);
    v29 = *(a1 + 32);
    do
    {
      v30 = *(v29 + 32);
      v31 = v30 >= v96;
      v32 = v30 < v96;
      if (v31)
      {
        v28 = v29;
      }

      v29 = *(v29 + 8 * v32);
    }

    while (v29);
    if (v28 == v27 || v96 < v28[4])
    {
LABEL_42:
      v28 = (a1 + 32);
    }

    if (!v26)
    {
      goto LABEL_51;
    }

    v33 = (a1 + 32);
    do
    {
      v34 = v26[4];
      v31 = v34 >= v96;
      v35 = v34 < v96;
      if (v31)
      {
        v33 = v26;
      }

      v26 = v26[v35];
    }

    while (v26);
    if (v33 == v27 || v96 < v33[4])
    {
LABEL_51:
      v36 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v96, buf);
        if (v100[3] >= 0)
        {
          v37 = buf;
        }

        else
        {
          v37 = *buf;
        }

        LODWORD(__p) = 67109378;
        HIDWORD(__p) = a12;
        v109 = 2082;
        v110 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Creating a new session %d for %{public}s", &__p, 0x12u);
        if ((v100[3] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      operator new();
    }

    v38 = v28[5];
    v39 = *(v38 + 8);
    v40 = *(v38 + 16);
    if (v39 == v40)
    {
LABEL_63:
      v43 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v95;
        sub_100018384(v96, buf);
        v45 = v100[3] >= 0 ? buf : *buf;
        LODWORD(__p) = 67109378;
        HIDWORD(__p) = v44;
        v109 = 2082;
        v110 = v45;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Registering L2CAP Channel with PSM 0x%04x for session %{public}s", &__p, 0x12u);
        if ((v100[3] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      v94 = 0;
      sub_1000216B4(&v94);
      if (a12)
      {
        v46 = sub_100296978(v95, sub_1004C5074);
      }

      else
      {
        v46 = sub_1002967FC(v95, sub_1004C4F58);
      }

      v54 = v46;
      sub_100022214(&v94);
      if (!v54)
      {
          ;
        }

        operator new();
      }

      v55 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
      {
        v76 = v95;
        sub_100018384(v96, &__p);
        v77 = v111 >= 0 ? &__p : __p;
        *buf = 67109634;
        *&buf[4] = v76;
        v98 = 2082;
        *v99 = v77;
        *&v99[8] = 1024;
        *v100 = v54;
        _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to register L2CAP Channel with PSM 0x%04x for session %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x18u);
        if (v111 < 0)
        {
          operator delete(__p);
        }
      }

      v56 = sub_1004C6454(v54);
      v57 = v28[5];
      if (v57)
      {
        sub_1004CDAE0(v57);
        operator delete();
      }

      sub_10002717C(v92, v28);
      operator delete(v28);
      sub_10002249C(&v94);
LABEL_114:
      if (a3)
      {
        (*(*a3 + 16))(a3, v95, v56);
      }

      return;
    }

    v41 = v95;
    while (1)
    {
      v42 = *v39;
      if (*(*v39 + 2) == v95 && !v42[4])
      {
        break;
      }

      v39 += 8;
      if (v39 == v40)
      {
        goto LABEL_63;
      }
    }

    if (*v42 == 1)
    {
      v59 = *(a1 + 48);
      v60 = (a1 + 48);
      while (v59 != *(a1 + 56))
      {
        if (v95 == *(v59 + 8))
        {
          v66 = qword_100BCE970;
          if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
          {
            sub_100018384(*v59, buf);
            if (v100[3] >= 0)
            {
              v87 = buf;
            }

            else
            {
              v87 = *buf;
            }

            LODWORD(__p) = 67109378;
            HIDWORD(__p) = v41;
            v109 = 2082;
            v110 = v87;
            _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to register L2CAP Channel PSM 0x%04x as it is already pending registration by session %{public}s", &__p, 0x12u);
            if ((v100[3] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v41 = v95;
          }

          break;
        }

        v59 += 48;
      }

      v67 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_INFO))
      {
        sub_100018384(v28[4], buf);
        if (v100[3] >= 0)
        {
          v68 = buf;
        }

        else
        {
          v68 = *buf;
        }

        LODWORD(__p) = 67109378;
        HIDWORD(__p) = v41;
        v109 = 2082;
        v110 = v68;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Delaying registration of L2CAP PSM 0x%04x as it is currently being unregistered by session %{public}s", &__p, 0x12u);
        if ((v100[3] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        LOWORD(v41) = v95;
      }

      v69 = *(a1 + 56);
      v70 = *(a1 + 64);
      if (v69 >= v70)
      {
        v72 = 0xAAAAAAAAAAAAAAABLL * ((v69 - *v60) >> 4);
        v73 = v72 + 1;
        if (v72 + 1 > 0x555555555555555)
        {
          sub_1000C7698();
        }

        v74 = 0xAAAAAAAAAAAAAAABLL * ((v70 - *v60) >> 4);
        if (2 * v74 > v73)
        {
          v73 = 2 * v74;
        }

        if (v74 >= 0x2AAAAAAAAAAAAAALL)
        {
          v75 = 0x555555555555555;
        }

        else
        {
          v75 = v73;
        }

        if (v75)
        {
          sub_1004CDDE0(a1 + 48, v75);
        }

        v78 = 48 * v72;
        *v78 = v96;
        *(v78 + 8) = v41;
        *(v78 + 16) = a3;
        *(v78 + 24) = a7;
        *(v78 + 28) = a4;
        *(v78 + 32) = v91;
        *(v78 + 34) = v90;
        *(v78 + 36) = v89;
        *(v78 + 38) = v88;
        *(v78 + 40) = a12;
        *(v78 + 44) = a13;
        v71 = 48 * v72 + 48;
        v79 = *(a1 + 48);
        v80 = *(a1 + 56) - v79;
        v81 = (48 * v72 - v80);
        memcpy(v81, v79, v80);
        v82 = *(a1 + 48);
        *(a1 + 48) = v81;
        *(a1 + 56) = v71;
        *(a1 + 64) = 0;
        if (v82)
        {
          operator delete(v82);
        }
      }

      else
      {
        *v69 = v96;
        *(v69 + 8) = v41;
        *(v69 + 16) = a3;
        *(v69 + 24) = a7;
        *(v69 + 28) = a4;
        *(v69 + 32) = v91;
        *(v69 + 34) = v90;
        *(v69 + 36) = v89;
        *(v69 + 38) = v88;
        *(v69 + 40) = a12;
        v71 = v69 + 48;
        *(v69 + 44) = a13;
      }

      *(a1 + 56) = v71;
      v56 = 10;
      goto LABEL_143;
    }

    v65 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(v28[4], buf);
      if (v100[3] >= 0)
      {
        v86 = buf;
      }

      else
      {
        v86 = *buf;
      }

      LODWORD(__p) = 67109378;
      HIDWORD(__p) = v41;
      v109 = 2082;
      v110 = v86;
      _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to register L2CAP Channel with PSM 0x%04x as it is already registered by session %{public}s", &__p, 0x12u);
      if ((v100[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v38 = v28[5];
      if (v38)
      {
LABEL_112:
        sub_1004CDAE0(v38);
        operator delete();
      }
    }

    else if (v38)
    {
      goto LABEL_112;
    }

    sub_10002717C(v92, v28);
    operator delete(v28);
    v56 = 103;
LABEL_143:
    v83 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
    {
      v84 = v95;
      sub_100018384(v96, &__p);
      v85 = v111 >= 0 ? &__p : __p;
      *buf = 67109634;
      *&buf[4] = v84;
      v98 = 2082;
      *v99 = v85;
      *&v99[8] = 1024;
      *v100 = v56;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Registering L2CAP Channel with PSM 0x%04x for session %{public}s failed with error %d", buf, 0x18u);
      if (v111 < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_114;
  }

  if (a12)
  {
    v50 = sub_100296718(&v95);
    v51 = qword_100BCE970;
    if (!v50)
    {
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v95;
        sub_100018384(v96, buf);
        v64 = v100[3] >= 0 ? buf : *buf;
        LODWORD(__p) = 67109378;
        HIDWORD(__p) = v63;
        v109 = 2082;
        v110 = v64;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Automatically selected psm:%d for session session %{public}s", &__p, 0x12u);
        if ((v100[3] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      sub_100836710();
    }

    if (a3)
    {
      v52 = v95;
      v53 = sub_1004C6454(v50);
      (*(*a3 + 16))(a3, v52, v53);
    }
  }

  else if (a3)
  {
    v61 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Invalid Classic PSM: %d", buf, 8u);
      v62 = v95;
    }

    else
    {
      v62 = 0;
    }

    (*(*a3 + 16))(a3, v62, 1800);
  }
}

uint64_t sub_1004C6454(uint64_t result)
{
  if (result <= 151)
  {
    switch(result)
    {
      case 0:
        return result;
      case 0x65:
        return 3;
      case 0x68:
        return 1802;
    }
  }

  else if (result > 471)
  {
    if (result == 472)
    {
      return 1807;
    }

    if (result == 482)
    {
      return 1800;
    }
  }

  else
  {
    if (result == 152)
    {
      return 11;
    }

    if (result == 402)
    {
      return 1801;
    }
  }

  return 1849;
}

void sub_1004C64D0(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE970;
  if (!a2 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Session cannot be NULL", __p, 2u);
    v6 = qword_100BCE970;
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "psm cannot be 0", __p, 2u);
    v6 = qword_100BCE970;
  }

LABEL_6:
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    v7 = v34 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v36 = a3;
    v37 = 2082;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "trying to unpublish psm:%d for session %{public}s", buf, 0x12u);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = a1[4];
  if (v8)
  {
    v9 = a1 + 4;
    do
    {
      v10 = v8[4];
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = v8[v12];
    }

    while (v8);
    if (v9 != a1 + 4 && v9[4] <= a2)
    {
      v13 = v9[5];
      v14 = a1[6];
      v15 = a1[7];
      if (v14 != v15)
      {
        v16 = 0;
        while (*&v14[v16] != a2 || *&v14[v16 + 8] != a3)
        {
          v16 += 48;
          if (&v14[v16] == v15)
          {
            goto LABEL_25;
          }
        }

        v24 = qword_100BCE970;
        if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(a2, __p);
          if (v34 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          *buf = 67109378;
          v36 = a3;
          v37 = 2082;
          v38 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unregistering pending L2CAP Channel 0x%04x for session %{public}s", buf, 0x12u);
          if (v34 < 0)
          {
            operator delete(__p[0]);
          }

          v15 = a1[7];
        }

        v26 = &v14[v16 + 48];
        v27 = (v15 - v14 - v16);
        v28 = v27 - 48;
        if (v26 != v15)
        {
          memmove(&v14[v16], v26, (v27 - 48));
        }

        v21 = 0;
        a1[7] = &v14[v16 + v28];
        goto LABEL_54;
      }

LABEL_25:
      v17 = v13[1];
      v18 = v13[2];
      if (v17 == v18)
      {
LABEL_29:
        v21 = 0;
LABEL_54:
        (*(**v13 + 24))(*v13, a3, v21);
        return;
      }

      v19 = (v17 + 1);
      while (1)
      {
        v20 = *v17;
        if (*(*v17 + 2) == a3)
        {
          break;
        }

        ++v17;
        v19 += 8;
        if (v17 == v18)
        {
          goto LABEL_29;
        }
      }

      if ((*v20 & 1) == 0)
      {
        v29 = sub_1004C6904(a1, v20);
        if (v29 == 10)
        {
          return;
        }

        v21 = v29;
        if (!v29)
        {
          v30 = v13[2];
          v31 = v30 - v19;
          if (v30 != v19)
          {
            memmove(v19 - 8, v19, v30 - v19);
          }

          v13[2] = &v19[v31 - 8];
          v32 = *(v20 + 120);
          if (v32)
          {
            *(v20 + 128) = v32;
            operator delete(v32);
          }

          operator delete();
        }

        goto LABEL_54;
      }

      v22 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(a2, __p);
        if (v34 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *buf = 67109378;
        v36 = a3;
        v37 = 2082;
        v38 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "L2CAP Channel 0x%04x for session %{public}s is already being unregistered", buf, 0x12u);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

uint64_t sub_1004C6904(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a2 + 120) != *(a2 + 128))
    {
      result = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      sub_100836778();
    }

    return 0;
  }

  if (v3 == 1)
  {
    v19 = 0;
    sub_1000216B4(&v19);
    v4 = sub_100296B2C(*(a2 + 2), 0);
    sub_100022214(&v19);
    if (v4)
    {
      v5 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "LE_L2CAP_SetIncomingConnectionsState failed, we could not block incoming connections", buf, 2u);
        v5 = qword_100BCE970;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100836804((a2 + 2), v4, v5);
      }
    }

    sub_10002249C(&v19);
  }

  *a2 = 1;
  v6 = *(a2 + 120);
  if (v6 == *(a2 + 128))
  {
    goto LABEL_25;
  }

  do
  {
    v19 = 0;
    sub_1000216B4(&v19);
    v7 = *v6;
    if (v3)
    {
      v8 = sub_10029135C(v7);
    }

    else
    {
      v8 = sub_10029104C(v7, 436);
    }

    v9 = v8;
    sub_100022214(&v19);
    if (v9)
    {
      v10 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
      {
        v11 = *v6;
        *buf = 67109632;
        v21 = v11;
        v22 = 1024;
        v23 = v3;
        v24 = 1024;
        v25 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to disconnect channel %x for session type %d status=%d", buf, 0x14u);
      }
    }

    sub_10002249C(&v19);
    v6 += 13;
  }

  while (v6 != *(a2 + 128));
  if (v6 == *(a2 + 120))
  {
LABEL_25:
    v19 = 0;
    sub_1000216B4(&v19);
    v14 = *(a2 + 2);
    if (v3)
    {
      v15 = sub_100296B24(v14);
    }

    else
    {
      v15 = sub_1002969F8(v14);
    }

    v16 = v15;
    sub_100022214(&v19);
    if (v16)
    {
      v17 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
      {
        v18 = *(a2 + 2);
        *buf = 67109632;
        v21 = v3;
        v22 = 1024;
        v23 = v18;
        v24 = 1024;
        v25 = v16;
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Couldn't unregister valid L2CAP Channel 0x%04x for session type %d with result %{bluetooth:OI_STATUS}u", buf, 0x14u);
      }
    }

    sub_10002249C(&v19);
    return 0;
  }

  v13 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "We are still waiting for some channels to disconnect, we'll complete the unpublishing when disconnection complete.", buf, 2u);
  }

  return 10;
}

void sub_1004C6C6C(uint64_t a1, unint64_t a2, void (***a3)(void, void *, uint64_t, uint64_t, void, void, void, void), int a4, uint64_t a5, unsigned int a6, int a7, int a8, __int16 a9, __int16 a10, unsigned __int8 *uu, char a12, int a13)
{
  v95 = a2;
  if (!a2 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_100836674();
  }

  if (!a3 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_1008366A8();
  }

  if (!a5 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_10083689C();
  }

  if (!a4 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_1008366DC();
  }

  is_null = uuid_is_null(uu);
  v20 = qword_100BCE970;
  if (is_null && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "device cannot be empty", buf, 2u);
    v20 = qword_100BCE970;
  }

  if (a7)
  {
    v21 = a7;
  }

  else
  {
    v21 = 1024;
  }

  v88 = v21;
  if (a8)
  {
    v22 = a8;
  }

  else
  {
    v22 = 1024;
  }

  if (a7)
  {
    v23 = a8 == 0;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v22 = a7;
  }

  v87 = v22;
  if (a10 | a9)
  {
    v24 = a10;
  }

  else
  {
    v24 = 30000;
  }

  if (a10 | a9)
  {
    v25 = a9;
  }

  else
  {
    v25 = -1;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 30000;
  }

  v85 = v26;
  v86 = v25;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v96;
    sub_100018384(v95, v96);
    if (v97 < 0)
    {
      v27 = v96[0];
    }

    memset(out, 0, sizeof(out));
    uuid_unparse_upper(uu, out);
    sub_100007E30(__p, out);
    if (v94 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    *buf = 136448258;
    *&buf[4] = v27;
    *&buf[12] = 2082;
    *&buf[14] = v28;
    *&buf[22] = 1024;
    *&buf[24] = a5;
    *&buf[28] = 1024;
    *&buf[30] = v88;
    *&buf[34] = 1024;
    *&buf[36] = v87;
    v100 = 1024;
    v101 = v86;
    v102 = 1024;
    v103 = v85;
    v104 = 1024;
    v105 = a13;
    v106 = 1024;
    v107 = a6;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Session %{public}s trying to connect to device %{public}s on PSM:0x%04x inMTU:%d inMPS:%d initialCredits:%d creditAckDelta:%d priority:%d packetBased:%d", buf, 0x40u);
    if (v94 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v97) < 0)
    {
      operator delete(v96[0]);
    }
  }

  v92 = 0;
  if (a12)
  {
    if (qword_100B508B0 != -1)
    {
      sub_1008368D0();
    }

    if (!sub_1000C4FCC(off_100B508A8, uu, &v92))
    {
      v50 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT) && ((memset(buf, 0, 37), uuid_unparse_upper(uu, buf), sub_100007E30(out, buf), out[23] >= 0) ? (v51 = out) : (v51 = *out), *buf = 136446466, *&buf[4] = v51, *&buf[12] = 1024, *&buf[14] = a5, _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "could not connect to device %{public}s on PSM:0x%04x", buf, 0x12u), out[23] < 0))
      {
        operator delete(*out);
        if (!a3)
        {
          return;
        }
      }

      else if (!a3)
      {
        return;
      }

      v52 = sub_10004DF60(uu);
      (**a3)(a3, v52, 1804, a5, 0, 0, 0, 0);

      return;
    }

    v29 = 0;
    v30 = 0;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008368F8();
    }

    v31 = off_100B508C8;
    v32 = sub_10004DF60(uu);
    v30 = sub_100046458(v31, v32, 0);

    if (qword_100B508F0 != -1)
    {
      sub_100836920();
    }

    v29 = sub_1000504C8(off_100B508E8, v30, 0);
    if (!v29 || (*(v29 + 1396) & 1) == 0)
    {
      v53 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT) && ((memset(buf, 0, 37), uuid_unparse_upper(uu, buf), sub_100007E30(out, buf), out[23] >= 0) ? (v54 = out) : (v54 = *out), *buf = 136446466, *&buf[4] = v54, *&buf[12] = 1024, *&buf[14] = a5, _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "could not connect to device %{public}s on PSM:0x%04x", buf, 0x12u), out[23] < 0))
      {
        operator delete(*out);
        if (!a3)
        {
          return;
        }
      }

      else if (!a3)
      {
        return;
      }

      v55 = sub_10004DF60(uu);
      (**a3)(a3, v55, 1804, a5, 0, 0, 0, 0);

      return;
    }
  }

  v84 = v29;
  v35 = *(a1 + 32);
  v34 = a1 + 32;
  v33 = v35;
  if (!v35)
  {
    goto LABEL_66;
  }

  v36 = v34;
  v37 = v33;
  do
  {
    v38 = *(v37 + 32);
    v39 = v38 >= v95;
    v40 = v38 < v95;
    if (v39)
    {
      v36 = v37;
    }

    v37 = *(v37 + 8 * v40);
  }

  while (v37);
  if (v36 == v34 || v95 < *(v36 + 32))
  {
LABEL_66:
    v36 = v34;
  }

  if (!v33)
  {
    goto LABEL_75;
  }

  v41 = v34;
  do
  {
    v42 = *(v33 + 32);
    v39 = v42 >= v95;
    v43 = v42 < v95;
    if (v39)
    {
      v41 = v33;
    }

    v33 = *(v33 + 8 * v43);
  }

  while (v33);
  if (v41 == v34 || v95 < *(v41 + 32))
  {
LABEL_75:
    operator new();
  }

  v44 = *(v36 + 40);
  v91 = 0;
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  while (1)
  {
    if (v45 == v46)
    {
      operator new();
    }

    v47 = *v45;
    v91 = v47;
    if (*(v47 + 2) == a5 && *(v47 + 4) == 1)
    {
      break;
    }

    v91 = 0;
    ++v45;
  }

  v65 = *(v47 + 120);
  for (i = *(v47 + 128); v65 != i; i = *(v91 + 128))
  {
    if (!uuid_compare((v65 + 2), uu))
    {
      v74 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
      {
        sub_100836948(uu, v74);
      }

      v75 = *v44;
      v76 = sub_10004DF60(uu);
      (**v75)(v75, v76, 1803, a5, 0, 0, 0, 0);

      return;
    }

    v65 += 26;
  }

  v96[0] = 0;
  v96[1] = 0;
  v98 = 0;
  v97 = 0;
  uuid_copy(v96 + 2, uu);
  BYTE2(v97) = 0;
  HIDWORD(v97) = 0;
  LOBYTE(v98) = 0;
  v90 = 0;
  sub_1000216B4(&v90);
  if (a12 == 1)
  {
    v48 = v91;
    if ((*(v91 + 116) & 1) == 0)
    {
      v49 = sub_1004C7A58(v92);
      v48 = v91;
      *(v91 + 8) = v49 + v49 * (0x400 / v49);
    }

    if ((*(v48 + 117) & 1) == 0)
    {
      *(v48 + 10) = *(v48 + 8);
    }

    goto LABEL_102;
  }

  if (a12)
  {
LABEL_102:
    v56 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
    {
      memset(buf, 0, 37);
      uuid_unparse_upper(uu, buf);
      sub_100007E30(__p, buf);
      v57 = v94 >= 0 ? __p : __p[0];
      v58 = *(v91 + 8);
      v59 = *(v91 + 10);
      *out = 67109890;
      *&out[4] = a5;
      *&out[8] = 2082;
      *&out[10] = v57;
      *&out[18] = 1024;
      *&out[20] = v58;
      *&out[24] = 1024;
      *&out[26] = v59;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Connecting LE PSM:0x%04x device %{public}s inMTU=%d inMPS=%d", out, 0x1Eu);
      if (v94 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v60 = sub_10028FDB8(sub_1004C7FF4, sub_1004C8118, sub_1004C819C, a5, v92, (v91 + 8), v96);
    goto LABEL_109;
  }

  v66 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    memset(buf, 0, 37);
    uuid_unparse_upper(uu, buf);
    sub_100007E30(__p, buf);
    v67 = v94 >= 0 ? __p : __p[0];
    v68 = *(v91 + 24);
    *out = 67109634;
    *&out[4] = a5;
    *&out[8] = 2082;
    *&out[10] = v67;
    *&out[18] = 1024;
    *&out[20] = v68;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Connecting Classic PSM:0x%04x device %{public}s inMTU=%d", out, 0x18u);
    if (v94 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!v84)
  {
    v77 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      v78 = sub_10004DF60(uu);
      sub_100836A6C(v78, buf, v77);
    }

    v60 = 105;
    goto LABEL_109;
  }

  v69 = sub_10054D198(v84, a5);
  if (!v69)
  {
    *buf = -1;
    v69 = [NSData dataWithBytes:buf length:2];
    if (!v69)
    {
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
      {
        sub_100836A00();
      }

      v60 = 482;
      goto LABEL_109;
    }
  }

  if ([v69 length] == 2)
  {
    v70 = v69;
    v71 = *[v69 bytes];
    v72 = v91;
    *(v91 + 64) = 3;
    *(v72 + 66) = 2;
    v73 = bswap32(v71) >> 16;
  }

  else
  {
    if ([v69 length] != 4)
    {
      v81 = v91;
      *(v91 + 64) = 3;
      *(v81 + 66) = 16;
      v82 = v69;
      v83 = [v69 bytes];
      v72 = v91;
      *(v91 + 72) = v83;
      goto LABEL_143;
    }

    v79 = v69;
    v80 = *[v69 bytes];
    v72 = v91;
    *(v91 + 64) = 3;
    *(v72 + 66) = 4;
    v73 = bswap32(v80);
  }

  *(v72 + 72) = v73;
LABEL_143:
  buf[0] = BYTE5(v30);
  buf[1] = BYTE4(v30);
  buf[2] = BYTE3(v30);
  buf[3] = BYTE2(v30);
  buf[4] = BYTE1(v30);
  buf[5] = v30;
  v60 = sub_10028F454(sub_1004C7C5C, sub_1004C7DBC, sub_1004C7ED0, a5, buf, v72 + 24, v96, v72 + 64);

LABEL_109:
  sub_100022214(&v90);
  if (v60)
  {
    v61 = *v44;
    v62 = sub_10004DF60(uu);
    v63 = sub_1004C6454(v60);
    (**v61)(v61, v62, v63, a5, 0, 0, 0, 0);
  }

  else
  {
    sub_1004C8210((v91 + 120), v96);
  }

  sub_10002249C(&v90);
}

uint64_t sub_1004C7A58(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 86))
    {
      v2 = 625 * *(a1 + 86);
    }

    else
    {
      v2 = 7500;
    }

    if (!*(a1 + 70))
    {
      v8 = sub_1002C0F90(*(a1 + 108), *(a1 + 104), v2, *(a1 + 144), *(a1 + 148));
      if (v8)
      {
        v3 = v8 - 4;
        goto LABEL_11;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Calculated MTU is zero for rx %d, tx %d, and CE %d us, probe %d", *(a1 + 108), *(a1 + 104), v2, *(a1 + 136));
        v12 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10081463C(v12);
        }
      }
    }

    v3 = 1024;
LABEL_11:
    if (sub_10000C240())
    {
      v9 = "peripheral";
      if (!*(a1 + 70))
      {
        v9 = "central";
      }

      sub_10000AF54("L2CAP %s MTU %d: for rx %d bytes, tx %d bytes, ce %d us, probestate %d", v9, v3, *(a1 + 108), *(a1 + 104), v2, *(a1 + 136));
      v10 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v14 = sub_10000C0FC();
        v5 = " %{public}s";
        v6 = v10;
        v7 = 12;
        goto LABEL_16;
      }
    }

    return v3;
  }

  v4 = qword_100BCE970;
  v3 = 672;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v14) = 672;
    v5 = "Default MTU %d for classic Handle";
    v6 = v4;
    v7 = 8;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
  }

  return v3;
}

void sub_1004C7C5C(uint64_t a1, int a2, int a3, int a4)
{
  v7 = a1;
  v8 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v18 = v7;
    v19 = 1024;
    v20 = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "l2capConnected for CID: 0x%0x, inMTU: 0x%x, outMTU: 0x%x, result: 0x%x", buf, 0x1Au);
  }

  if (qword_100B53FD8 != -1)
  {
    sub_100836AC4();
  }

  sub_1004C9AB0(qword_100B53FD0, v7);
  v11 = sub_100007EE8(v9, v10);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004CB760;
  v12[3] = &unk_100AEB940;
  v14 = v7;
  v15 = a2;
  v16 = a3;
  v13 = a4;
  sub_10000CA94(v11, v12);
}

void sub_1004C7DBC(int a1, int a2)
{
  v4 = qword_100BCE970;
  v5 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 67109376;
    v12 = a1;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "l2capDisconnected for CID: 0x%0x, reson: 0x%x", buf, 0xEu);
  }

  v7 = sub_100007EE8(v5, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004CBE9C;
  v8[3] = &unk_100AE0ED8;
  v10 = a1;
  v9 = a2;
  sub_10000CA94(v7, v8);
}

void sub_1004C7ED0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "No";
    v10[0] = 67109634;
    v10[1] = a1;
    if (v4)
    {
      v9 = "Yes";
    }

    v11 = 1024;
    v12 = v5;
    v13 = 2082;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "l2capDataInd for CID: 0x%0x, len: 0x%x wakeUpEvent: %{public}s", v10, 0x18u);
  }

  if (qword_100B53FD8 != -1)
  {
    sub_100836AC4();
  }

  sub_1004CC4A4(qword_100B53FD0, a1, a2, v5, v4);
}

void sub_1004C7FF4(uint64_t a1, __int16 a2, unsigned int a3, int a4)
{
  v7 = a1;
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v19 = 0;
  sub_1004C9AB0(qword_100B53FD0, v7);
  LOWORD(v10) = a3;
  if (!a4)
  {
    if (!sub_1000ABC7C(v7, &v19) || (v8 = sub_1000B12AC(v19), LOWORD(v10) = a3, !v8))
    {
      v12 = sub_1000B12AC(v19);
      v8 = sub_1004C7A58(*v12);
      LOWORD(v10) = a3;
      if (v8 < a3)
      {
        v10 = a3 / v8 * v8;
      }
    }
  }

  v11 = sub_100007EE8(v8, v9);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004C9C14;
  v13[3] = &unk_100ADF940;
  v15 = v7;
  v16 = a2;
  v17 = a3;
  v18 = v10;
  v14 = a4;
  sub_10000CA94(v11, v13);
}

void sub_1004C8118(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004CA3E8;
  v5[3] = &unk_100AE0ED8;
  v7 = v3;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

void sub_1004C819C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a1;
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v8 = qword_100B53FD0;

  sub_1004CAABC(v8, v7, a2, v5, v4);
}

uint64_t sub_1004C8210(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1004CDF70(a1, a2);
  }

  else
  {
    *v4 = *a2;
    uuid_copy((v4 + 2), (a2 + 2));
    v5 = *(a2 + 18);
    *(v4 + 21) = *(a2 + 21);
    *(v4 + 18) = v5;
    result = v4 + 26;
    a1[1] = v4 + 26;
  }

  a1[1] = result;
  return result;
}

void sub_1004C8290(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *uu)
{
  if (!a2 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_100836674();
  }

  if (!a3 && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    sub_10083689C();
  }

  is_null = uuid_is_null(uu);
  v9 = qword_100BCE970;
  if (is_null && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
  {
    *out = 0;
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "device cannot be empty", out, 2u);
    v9 = qword_100BCE970;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v31;
    sub_100018384(a2, v31);
    if (v32 < 0)
    {
      v10 = v31[0];
    }

    memset(out, 0, 37);
    uuid_unparse_upper(uu, out);
    sub_100007E30(__p, out);
    if (v30 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136446722;
    v34 = v10;
    v35 = 2082;
    v36 = v11;
    v37 = 1024;
    v38 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %{public}s trying to disconnect device %{public}s on PSM:0x%04x", buf, 0x1Cu);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }
  }

  v14 = *(a1 + 32);
  v13 = a1 + 32;
  v12 = v14;
  if (v14)
  {
    v15 = v13;
    do
    {
      v16 = *(v12 + 32);
      v17 = v16 >= a2;
      v18 = v16 < a2;
      if (v17)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * v18);
    }

    while (v12);
    if (v15 != v13 && *(v15 + 32) <= a2)
    {
      v19 = *(v15 + 40);
      v21 = v19[1];
      v20 = v19[2];
      while (1)
      {
        if (v21 == v20)
        {
          v27 = *v19;
          v28 = sub_10004DF60(uu);
          (*(*v27 + 8))(v27, v28, 1804, a3, 0);

          return;
        }

        v22 = *v21;
        v23 = *(*v21 + 120);
        if (v23 != *(*v21 + 128))
        {
          break;
        }

LABEL_39:
        ++v21;
      }

      while (1)
      {
        if (*(v23 + 18) == 1 && !uuid_compare(v23 + 2, uu))
        {
          out[0] = 0;
          sub_1000216B4(out);
          v24 = *v23;
          v25 = *(v22 + 56) ? sub_10029135C(v24) : sub_10029104C(v24, 1818);
          v26 = v25;
          sub_100022214(out);
          sub_10002249C(out);
          if (!v26)
          {
            break;
          }
        }

        v23 += 13;
        if (v23 == *(v22 + 128))
        {
          v20 = v19[2];
          goto LABEL_39;
        }
      }
    }
  }
}

void sub_1004C85D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v7 = qword_100B53FD0;

  sub_1004C8640(v7, a1, v5, v4);
}

void sub_1004C8640(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  v6 = a2;
  v8 = sub_100007EE8(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004C86DC;
  v9[3] = &unk_100AE0860;
  v9[4] = a1;
  v11 = v6;
  v12 = a3;
  v10 = a4;
  sub_10000CA94(v8, v9);
}

void sub_1004C86DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 128);
  v2 = v1 + 128;
  v3 = v4;
  v5 = (a1 + 44);
  if (!v4)
  {
    goto LABEL_14;
  }

  v7 = v2 - 8;
  v8 = *v5;
  v9 = v2;
  do
  {
    v10 = *(v3 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v3;
    }

    v3 = *(v3 + 8 * v12);
  }

  while (v3);
  if (v9 != v2 && v8 >= *(v9 + 32))
  {
    v18 = (a1 + 44);
    v13 = sub_1004CE2CC(v7, v5, &unk_1008A9BD0, &v18);
    v14 = objc_retainBlock(v13[5]);
    sub_1004CE3BC(v7, v5);
    v15 = *(a1 + 44);
    v16 = *(a1 + 46);
    v17 = sub_1004C6454(*(a1 + 40));
    v14[2](v14, v15, v16, v17);
  }

  else
  {
LABEL_14:
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      sub_100836B00();
    }
  }
}

void sub_1004C87F8(uint64_t a1, unint64_t a2, int a3, const unsigned __int8 *a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    if (v11 && [v11 length])
    {
      v13 = *(a1 + 32);
      if (!v13)
      {
        goto LABEL_12;
      }

      v14 = a1 + 32;
      do
      {
        v15 = *(v13 + 32);
        v16 = v15 >= a2;
        v17 = v15 < a2;
        if (v16)
        {
          v14 = v13;
        }

        v13 = *(v13 + 8 * v17);
      }

      while (v13);
      if (v14 != a1 + 32 && *(v14 + 32) <= a2)
      {
        v56 = *(v14 + 40);
        v25 = *(v56 + 8);
        if (v25 == *(v56 + 16))
        {
          v27 = 101;
        }

        else
        {
          v26 = (a1 + 128);
          v27 = 101;
          do
          {
            v28 = *v25;
            if (*(*v25 + 2) == a3)
            {
              for (i = *(v28 + 120); i != *(v28 + 128); i += 13)
              {
                if (*(i + 18) == 1 && !uuid_compare(i + 2, a4))
                {
                  v30 = *i;
                  v74 = *i;
                  v31 = *v26;
                  if (*v26)
                  {
                    v32 = a1 + 128;
                    do
                    {
                      v33 = *(v31 + 32);
                      v16 = v33 >= v30;
                      v34 = v33 < v30;
                      if (v16)
                      {
                        v32 = v31;
                      }

                      v31 = *(v31 + 8 * v34);
                    }

                    while (v31);
                    if (v32 != v26 && v30 >= *(v32 + 32))
                    {
                      v51 = qword_100BCE970;
                      v52 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR);
                      if (v52)
                      {
                        *buf = 0u;
                        memset(v88, 0, sizeof(v88));
                        uuid_unparse_upper(a4, buf);
                        sub_100007E30(__p, buf);
                        v55 = v73 >= 0 ? __p : __p[0];
                        *v81 = 136446722;
                        v82 = v55;
                        v83 = 1024;
                        v84 = a3;
                        v85 = 1024;
                        v86 = v74;
                        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "L2CAPChannelManager::sendData data already pending for %{public}s psm:%d cid:%d, ignoring request, wait for the callback", v81, 0x18u);
                        if (v73 < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      v54 = sub_100007EE8(v52, v53);
                      v68[0] = _NSConcreteStackBlock;
                      v68[1] = 3221225472;
                      v69[0] = sub_1004C9064;
                      v69[1] = &unk_100AF97F8;
                      v70 = v12;
                      v71 = 410;
                      sub_10000CA94(v54, v68);

                      goto LABEL_22;
                    }
                  }

                  if (*(v28 + 56) == 1)
                  {
                    v38 = [v11 length];
                    if (v38 <= i[11])
                    {
                      v41 = objc_retainBlock(v12);
                      *buf = &v74;
                      v42 = sub_1004CE2CC(a1 + 120, &v74, &unk_1008A9BD0, buf);
                      v43 = v42[5];
                      v42[5] = v41;

                      v81[0] = 0;
                      sub_1000216B4(v81);
                      v44 = v74;
                      v45 = v11;
                      v46 = sub_10028E1F0(sub_1004C85D4, v44, 0, [v11 bytes], objc_msgSend(v11, "length"));
                      sub_100022214(v81);
                      if (v46)
                      {
                        sub_1004CE3BC(a1 + 120, &v74);
                        v47 = qword_100BCE970;
                        v48 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR);
                        if (v48)
                        {
                          *buf = 67109120;
                          *&buf[4] = v46;
                          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "OI_L2CAP_Write failed with result %d", buf, 8u);
                        }

                        v50 = sub_100007EE8(v48, v49);
                        v60[0] = _NSConcreteStackBlock;
                        v60[1] = 3221225472;
                        v61[0] = sub_1004C9104;
                        v61[1] = &unk_100AF97F8;
                        v62 = v12;
                        v63 = v46;
                        sub_10000CA94(v50, v60);
                      }

                      sub_10002249C(v81);
                    }

                    else
                    {
                      v40 = sub_100007EE8(v38, v39);
                      v64[0] = _NSConcreteStackBlock;
                      v64[1] = 3221225472;
                      v65[0] = sub_1004C90B4;
                      v65[1] = &unk_100AF97F8;
                      v66 = v12;
                      v67 = 472;
                      sub_10000CA94(v40, v64);
                    }

                    goto LABEL_22;
                  }

                  v27 = 152;
                }
              }
            }

            ++v25;
          }

          while (v25 != *(v56 + 16));
        }

        v35 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR);
        if (v35)
        {
          sub_100836B6C();
        }

        v37 = sub_100007EE8(v35, v36);
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_1004C9154;
        v57[3] = &unk_100AF97F8;
        v58 = v12;
        v59 = v27;
        sub_10000CA94(v37, v57);
      }

      else
      {
LABEL_12:
        v18 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR);
        if (v18)
        {
          sub_100836BA8();
        }

        v20 = sub_100007EE8(v18, v19);
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_1004C9014;
        v75[3] = &unk_100AF97F8;
        v76 = v12;
        v77 = 101;
        sub_10000CA94(v20, v75);
      }
    }

    else
    {
      v21 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        sub_100836BE4();
      }

      v23 = sub_100007EE8(v21, v22);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_1004C8FC4;
      v78[3] = &unk_100AF97F8;
      v79 = v12;
      v80 = 101;
      sub_10000CA94(v23, v78);
    }
  }

  else
  {
    v24 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Invalid sendDataDone block", buf, 2u);
      v24 = qword_100BCE970;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100836C20();
    }
  }

LABEL_22:
}

void sub_1004C8F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_10002249C((v25 - 176));

  _Unwind_Resume(a1);
}

uint64_t sub_1004C8FC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1004C6454(*(a1 + 40));
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

uint64_t sub_1004C9014(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1004C6454(*(a1 + 40));
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

uint64_t sub_1004C9064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1004C6454(*(a1 + 40));
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

uint64_t sub_1004C90B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1004C6454(*(a1 + 40));
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

uint64_t sub_1004C9104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1004C6454(*(a1 + 40));
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

uint64_t sub_1004C9154(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1004C6454(*(a1 + 40));
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

void sub_1004C91A4(uint64_t a1, unint64_t a2, unsigned __int8 *uu2)
{
  v3 = *(a1 + 24);
  v4 = (a1 + 32);
  if (v3 != (a1 + 32))
  {
    do
    {
      v8 = v3[5];
      if (!*(v8 + 40))
      {
        v13 = *(v8 + 8);
        v12 = *(v8 + 16);
        while (v13 != v12)
        {
          v14 = *v13;
          v15 = *(*v13 + 120);
          if (v15 != *(*v13 + 128))
          {
            while (uuid_compare((v15 + 2), uu2))
            {
              v15 += 26;
              if (v15 == *(v14 + 128))
              {
                v12 = *(v8 + 16);
                goto LABEL_16;
              }
            }

            v16 = *(v14 + 2);

            sub_1004C8290(a1, a2, v16, (v15 + 2));
            return;
          }

LABEL_16:
          ++v13;
        }
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }
}

void sub_1004C92C8(uint64_t a1)
{
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v2 = qword_100B53FD0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 52) | ((*(a1 + 56) | (*(a1 + 58) << 16)) << 32);
  v6 = *(a1 + 50);
  v7 = *(a1 + 59);

  sub_1004C933C(v2, v3, v4, v5, v6, v7);
}

void sub_1004C933C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v42 = a4;
  v44 = BYTE6(a4);
  v43 = WORD2(a4);
  v9 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *&buf[4] = a2;
    *&buf[8] = 1040;
    *&buf[10] = 6;
    *&buf[14] = 2096;
    *&buf[16] = &v42 + 1;
    *&buf[24] = 1024;
    v52 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connection Indication PSM:0x%04x Address: %{bluetooth:BD_ADDR}.6P) cid:%d", buf, 0x1Eu);
  }

  __p[0] = 0;
  __p[1] = 0;
  v41 = 0;
  sub_100007E30(__p, "");
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v10 = *(a1 + 24);
  if (v10 == (a1 + 32))
  {
    goto LABEL_40;
  }

  do
  {
    v11 = v10[5];
    if (*(v11 + 40) != 1 || (v12 = *(v11 + 8), v12 == *(v11 + 16)))
    {
LABEL_18:
      v14 = 0;
      goto LABEL_19;
    }

    v13 = 0;
    v36 = v10[4];
    while (1)
    {
      v14 = *v12;
      if (!*(*v12 + 4))
      {
        break;
      }

LABEL_17:
      if (++v12 == *(v11 + 16))
      {
        goto LABEL_18;
      }
    }

    ++v13;
    if (*(v14 + 2) != a2)
    {
      if (v13)
      {
        goto LABEL_18;
      }

      v13 = 0;
      goto LABEL_17;
    }

    if (qword_100B508B0 != -1)
    {
      sub_1008368D0();
    }

    if (!sub_100748908(off_100B508A8, a3, uu) || uuid_is_null(uu))
    {
      v15 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Connection manager wasn't tracking a connection handle %p!", buf, 0xCu);
      }

      goto LABEL_17;
    }

    sub_100614BB8(v36, buf);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v41 = *&buf[16];
LABEL_19:
    v16 = v10[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v10[2];
        v18 = *v17 == v10;
        v10 = v17;
      }

      while (!v18);
    }

    if (v17 == (a1 + 32))
    {
      break;
    }

    v10 = v17;
  }

  while (!v14);
  if (v14)
  {
    v39 = 0;
    sub_1000216B4(&v39);
    if ((*(v14 + 116) & 1) == 0)
    {
      v19 = sub_1004C7A58(a3);
      *(v14 + 8) = v19 + v19 * (0x400 / v19);
    }

    if ((*(v14 + 117) & 1) == 0)
    {
      *(v14 + 10) = *(v14 + 8);
    }

    v20 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v14 + 2);
      v22 = *(v14 + 8);
      v23 = *(v14 + 10);
      *buf = 67110402;
      *&buf[4] = v21;
      *&buf[8] = 1040;
      *&buf[10] = 6;
      *&buf[14] = 2096;
      *&buf[16] = &v42 + 1;
      *&buf[24] = 1024;
      v52 = a5;
      v53 = 1024;
      v54 = v22;
      v55 = 1024;
      v56 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Accepting connection for PSM:0x%04x Address: %{bluetooth:BD_ADDR}.6P) cid:%d inMTU=%d inMPS=%d", buf, 0x2Au);
    }

    if (sub_100290AA8(sub_1004C7FF4, sub_1004C8118, sub_1004C819C, a5, (v14 + 8), 1))
    {
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
      {
        sub_100836C5C();
      }
    }

    else
    {
      memset(&buf[2], 0, 24);
      *buf = a5;
      uuid_copy(&buf[2], uu);
      buf[18] = 0;
      *&buf[20] = 0;
      buf[24] = 0;
      sub_1004C8210((v14 + 120), buf);
      if (!*(v14 + 16))
      {
        v26 = sub_10028A830(a5, *(v14 + 14));
        if (v26)
        {
          v27 = qword_100BCE970;
          if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
          {
            v33 = *(v14 + 14);
            *v45 = 67109632;
            v46 = a5;
            v47 = 1024;
            v48 = v33;
            v49 = 1024;
            v50 = v26;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "LE_L2CAP_SendChannelCredits cid=%d credits=%d failed with status %d", v45, 0x14u);
          }
        }
      }
    }

    v28 = sub_100022214(&v39);
    if (a6)
    {
      *buf = &off_100AE0A78;
      *&buf[8] = 0;
      v30 = sub_100432718(v28, v29);
      if (v41 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      v32 = sub_10004DF60(uu);
      v37 = &off_100AE0A78;
      v38 = *&buf[8];
      if (*&buf[8])
      {
        sub_10000C69C(*&buf[8]);
      }

      (*(*v30 + 40))(v30, 3, v31, v32, &v37);
      v37 = &off_100AE0A78;
      if (v38)
      {
        sub_10000C808(v38);
      }

      *buf = &off_100AE0A78;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }
    }

    v25 = &v39;
    goto LABEL_61;
  }

LABEL_40:
  v24 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *&buf[4] = a2;
    *&buf[8] = 1040;
    *&buf[10] = 6;
    *&buf[14] = 2096;
    *&buf[16] = &v42 + 1;
    *&buf[24] = 1024;
    v52 = a5;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Rejecting connection for PSM:0x%04x (Could not find a session, endpoint or pipe) Address: %{bluetooth:BD_ADDR}.6P) cid:%d", buf, 0x1Eu);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100290AA8(sub_1004C7FF4, sub_1004C8118, sub_1004C819C, a5, 0, 0) && os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
  {
    sub_100836C5C();
  }

  v25 = buf;
LABEL_61:
  sub_10002249C(v25);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004C9A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, atomic_uint *a34)
{
  if (a34)
  {
    sub_10000C808(a34);
  }

  sub_10002249C(&a21);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004C9AB0(void *a1, int a2)
{
  v4 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109120;
    v19[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cid:0x%04x", v19, 8u);
  }

  v6 = a1[10];
  v5 = a1[11];
  if (v6 >= v5)
  {
    v8 = a1[9];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 1;
    if (v10 <= -2)
    {
      sub_1000C7698();
    }

    v11 = v5 - v8;
    if (v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v11 >= 0x7FFFFFFFFFFFFFFELL;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1003705C4((a1 + 9), v14);
    }

    v15 = (v6 - v8) >> 1;
    v16 = (2 * v10);
    v17 = (2 * v10 - 2 * v15);
    *v16 = a2;
    v7 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = a1[9];
    a1[9] = v17;
    a1[10] = v7;
    a1[11] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = a2;
    v7 = v6 + 2;
  }

  a1[10] = v7;
}

void sub_1004C9C14(uint64_t a1)
{
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v2 = qword_100B53FD0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 38);
  v5 = *(a1 + 40);
  v6 = *(a1 + 42);
  v7 = *(a1 + 32);

  sub_1004C9C78(v2, v3, v4, v5, v6, v7);
}

void sub_1004C9C78(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v12 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    *&buf[14] = 1024;
    *&buf[16] = a4;
    *&buf[20] = 1024;
    *&buf[22] = a5;
    *&buf[26] = 1024;
    *&buf[28] = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "connectedCB cid:0x%04x inMTU:%d outMTU:%d calculatedOutMTU:%d result:%d", buf, 0x20u);
  }

  v52 = a5;
  v53 = a3;
  v60 = -1;
  v59 = 0;
  v13 = *(a1 + 24);
  v55 = (a1 + 32);
  if (v13 == (a1 + 32))
  {
LABEL_34:
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      sub_100836CC4();
    }

    sub_1004CCA78(a1, a2);
    return;
  }

  v54 = a6 != 0;
  v51 = a4 - 6;
  v56 = a1;
  v50 = a4;
LABEL_5:
  v14 = v13[5];
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  while (1)
  {
    if (v16 == v15)
    {
      v25 = v13[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v13[2];
          v27 = *v26 == v13;
          v13 = v26;
        }

        while (!v27);
      }

      v13 = v26;
      a1 = v56;
      if (v26 == v55)
      {
        goto LABEL_34;
      }

      goto LABEL_5;
    }

    v17 = *v16;
    v18 = *(*v16 + 120);
    if (v18 != *(*v16 + 128))
    {
      break;
    }

LABEL_27:
    ++v16;
  }

  while (*v18 != a2)
  {
    v18 += 13;
LABEL_21:
    if (v18 == *(v17 + 128))
    {
      v15 = *(v14 + 16);
      goto LABEL_27;
    }
  }

  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, v18 + 2);
  if (a6)
  {
    v28 = (v17 + 2);
    v29 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a6;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "L2CAP Channel connect failure %d", buf, 8u);
    }

    goto LABEL_54;
  }

  if (qword_100B508B0 != -1)
  {
    sub_1008368D0();
  }

  if (!sub_1000C4FCC(off_100B508A8, v18 + 2, &v59))
  {
    v19 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      memset(buf, 0, 37);
      uuid_unparse_upper(v18 + 2, buf);
      sub_100007E30(__p, buf);
      v24 = __p;
      if (v58 < 0)
      {
        v24 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Connection manager wasn't tracking %{public}s !", buf, 0xCu);
      if (v58 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = *(v17 + 128);
    if (v18 + 13 == v20)
    {
      v22 = v18;
    }

    else
    {
      v21 = v18;
      do
      {
        *v21 = v21[13];
        uuid_copy(v21 + 2, v21 + 28);
        *(v21 + 9) = *(v21 + 11);
        *(v21 + 21) = *(v21 + 47);
        v22 = v21 + 13;
        v23 = v21 + 26;
        v21 += 13;
      }

      while (v23 != v20);
    }

    *(v17 + 128) = v22;
    goto LABEL_21;
  }

  v18[10] = v53;
  v30 = *(v14 + 41);
  if (*(v14 + 41))
  {
    v31 = v51;
  }

  else
  {
    v31 = v52;
  }

  v18[11] = v31;
  *(v18 + 18) = 1;
  v32 = qword_100BCE970;
  v33 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
  if (!v33)
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  v35 = "";
  v36 = *(v17 + 112);
  *buf = 136316162;
  if (v30)
  {
    v35 = "Packet ";
  }

  *&buf[4] = v35;
  *&buf[12] = 1024;
  *&buf[14] = a2;
  *&buf[18] = 1024;
  *&buf[20] = v53;
  *&buf[24] = 1024;
  *&buf[26] = v31;
  *&buf[30] = 1024;
  *&buf[32] = v36;
  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Registering %sL2CAP pipe cid:0x%04x inMTU:%d outMTU:%d priority:%d", buf, 0x24u);
  if (*(v14 + 41))
  {
LABEL_48:
    v39 = sub_1000B4EFC(v33, v34);
    v38 = sub_100371BD4(v39, v59, a2, *(v14 + 36), v50, v56 + 8);
    goto LABEL_49;
  }

LABEL_46:
  v37 = sub_1000B4EFC(v33, v34);
  v38 = sub_100371A40(v37, v59, a2, *(v14 + 36), v50, &v60, *(v17 + 112));
LABEL_49:
  v28 = (v17 + 2);
  if (v38)
  {
    v40 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
    {
      memset(buf, 0, 37);
      uuid_unparse_upper(dst, buf);
      sub_100007E30(__p, buf);
      v48 = v58 >= 0 ? __p : __p[0];
      *buf = 67109378;
      *&buf[4] = a2;
      *&buf[8] = 2082;
      *&buf[10] = v48;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to register a socket for channel 0x%04x on device %{public}s", buf, 0x12u);
      if (v58 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (*(v17 + 56))
    {
      sub_10029135C(a2);
    }

    else
    {
      sub_10029104C(a2, 436);
    }

    sub_10002249C(buf);
    sub_1004CCA78(v56, a2);
    v54 = 1;
    a6 = 1805;
    goto LABEL_63;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  sub_1000CD5B8(v59);
  sub_10002249C(buf);
LABEL_54:
  sub_1004CCA78(v56, a2);
  if (!a6)
  {
    if (!*(v17 + 16))
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v41 = sub_10028A830(a2, *(v17 + 14));
      sub_100022214(__p);
      if (v41)
      {
        v42 = qword_100BCE970;
        if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
        {
          v49 = *(v17 + 14);
          *buf = 67109632;
          *&buf[4] = a2;
          *&buf[8] = 1024;
          *&buf[10] = v49;
          *&buf[14] = 1024;
          *&buf[16] = v41;
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "LE_L2CAP_SendChannelCredits cid=%d credits=%d failed with status %d", buf, 0x14u);
        }
      }

      sub_10002249C(__p);
    }

    a6 = 0;
  }

LABEL_63:
  v43 = *v14;
  v44 = sub_10004DF60(dst);
  (**v43)(v43, v44, a6, *v28, a2, 0, v60, v18[11]);

  if (v54)
  {
    v45 = *(v17 + 128);
    if (v18 + 13 == v45)
    {
      v46 = v18;
    }

    else
    {
      do
      {
        *v18 = v18[13];
        uuid_copy(v18 + 2, v18 + 28);
        *(v18 + 9) = *(v18 + 11);
        *(v18 + 21) = *(v18 + 47);
        v46 = v18 + 13;
        v47 = v18 + 26;
        v18 += 13;
      }

      while (v47 != v45);
    }

    *(v17 + 128) = v46;
  }
}

void sub_1004CA3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1004CA3E8(uint64_t a1)
{
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v2 = qword_100B53FD0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  sub_1004CA440(v2, v3, v4);
}

void sub_1004CA440(void *a1, int a2, unsigned int a3)
{
  v63 = a2;
  v6 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "disconnectedCB cid:%d reason:%d", buf, 0xEu);
  }

  v7 = a1[3];
  v58 = a1 + 4;
  v59 = a1;
  if (v7 != a1 + 4)
  {
    v57 = a1 + 16;
    while (2)
    {
      v8 = v7[5];
      v9 = v8[1];
      v60 = v8;
      while (v9 != v8[2])
      {
        v10 = *v9;
        v11 = *(*v9 + 120);
        if (v11 != *(*v9 + 128))
        {
          v12 = -v11;
          while (1)
          {
            memset(dst, 0, sizeof(dst));
            uuid_copy(dst, v11 + 2);
            v13 = qword_100BCE970;
            v14 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_INFO);
            if (v14)
            {
              memset(buf, 0, 37);
              uuid_unparse_upper(dst, buf);
              sub_100007E30(__p, buf);
              v16 = __p;
              if (v62 < 0)
              {
                v16 = __p[0];
              }

              v17 = *v11;
              *buf = 136446466;
              *&buf[4] = v16;
              *&buf[12] = 1024;
              *&buf[14] = v17;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "device=%{public}s cid=%x", buf, 0x12u);
              if (v62 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (*v11 == v63)
            {
              break;
            }

            v11 += 13;
            v12 -= 26;
            if (v11 == *(v10 + 128))
            {
              goto LABEL_16;
            }
          }

          v28 = sub_1000B4EFC(v14, v15);
          sub_100373ADC(v28, *v11);
          if (*(v60 + 41) == 1)
          {
            v29 = *v57;
            if (*v57)
            {
              v30 = v57;
              do
              {
                v31 = *(v29 + 32);
                v32 = v31 >= v63;
                v33 = v31 < v63;
                if (v32)
                {
                  v30 = v29;
                }

                v29 = *(v29 + 8 * v33);
              }

              while (v29);
              if (v30 != v57 && v63 >= *(v30 + 16))
              {
                *buf = &v63;
                v34 = sub_1004CE2CC((v59 + 15), &v63, &unk_1008A9BD0, buf);
                v35 = objc_retainBlock(v34[5]);
                sub_1004CE3BC((v59 + 15), &v63);
                (*(v35 + 2))(v35, v63, 0, 1804);
              }
            }
          }

          if ((v60[4] & 1) == 0)
          {
            v36 = *v60;
            v37 = sub_10004DF60(dst);
            (*(*v36 + 8))(v36, v37, a3, *(v10 + 2), v63);
          }

          v38 = *(v10 + 128);
          if (26 - v12 == v38)
          {
            v42 = -v12;
          }

          else
          {
            v39 = *(v10 + 120);
            v40 = v39 - v12;
            do
            {
              v41 = (v40 - v39);
              *(v40 - v39) = *(v40 - v39 + 26);
              uuid_copy((v40 - v39 + 2), (v40 - v39 + 28));
              *(v41 + 18) = v41[11];
              *(v41 + 21) = *(v41 + 47);
              v40 += 26;
            }

            while (v40 - v39 + 26 != v38);
            v42 = v40 - v39;
          }

          *(v10 + 128) = v42;
          if (*v10 == 1)
          {
            if (!*(v10 + 4) && v42 == *(v10 + 120))
            {
              v43 = sub_1004C6904(v59, v10);
              if (v43 != 10 && (v60[4] & 1) == 0)
              {
                (*(**v60 + 24))(*v60, *(v10 + 2), v43);
              }
            }

            v44 = *(v10 + 120);
            if (*(v10 + 128) == v44)
            {
              v45 = v60[2];
              v46 = v45 - (v9 + 1);
              if (v45 != v9 + 1)
              {
                memmove(v9, v9 + 1, v45 - (v9 + 1));
                v44 = *(v10 + 120);
              }

              v60[2] = v9 + v46;
              if (v44)
              {
                *(v10 + 128) = v44;
                operator delete(v44);
              }

              operator delete();
            }

            if (*(v60 + 32) == 1 && v60[2] == v60[1])
            {
              sub_1004CDAE0(v60);
              operator delete();
            }
          }

          return;
        }

LABEL_16:
        ++v9;
        v8 = v60;
      }

      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      v7 = v19;
      a1 = v59;
      if (v19 != v58)
      {
        continue;
      }

      break;
    }
  }

  v22 = a1[12];
  v21 = a1[13];
  while (v22 != v21)
  {
    v23 = *v22;
    v24 = *(*v22 + 120);
    if (v24 != *(*v22 + 128))
    {
      v25 = -v24;
      while (1)
      {
        *buf = 0;
        *&buf[8] = 0;
        uuid_copy(buf, v24 + 2);
        if (*v24 == v63)
        {
          break;
        }

        v24 += 13;
        v25 -= 26;
        if (v24 == *(v23 + 128))
        {
          v21 = v59[13];
          goto LABEL_30;
        }
      }

      v47 = sub_1000B4EFC(v26, v27);
      sub_100373ADC(v47, *v24);
      v48 = *(v23 + 120);
      v49 = *(v23 + 128);
      if (26 - v25 == v49)
      {
        v52 = -v25;
      }

      else
      {
        v50 = v48 - v25;
        do
        {
          v51 = (v50 - v48);
          *(v50 - v48) = *(v50 - v48 + 26);
          uuid_copy((v50 - v48 + 2), (v50 - v48 + 28));
          *(v51 + 18) = v51[11];
          *(v51 + 21) = *(v51 + 47);
          v50 += 26;
        }

        while (v50 - v48 + 26 != v49);
        v52 = v50 - v48;
        v48 = *(v23 + 120);
      }

      *(v23 + 128) = v52;
      v53 = v59;
      if (v52 == v48)
      {
        if (!*(v23 + 4))
        {
          sub_1004C6904(v59, v23);
          v53 = v59;
        }

        v54 = v53[13];
        v55 = v54 - (v22 + 1);
        if (v54 != v22 + 1)
        {
          memmove(v22, v22 + 1, v54 - (v22 + 1));
        }

        v53[13] = v22 + v55;
        v56 = *(v23 + 120);
        if (v56)
        {
          *(v23 + 128) = v56;
          operator delete(v56);
        }

        operator delete();
      }

      return;
    }

LABEL_30:
    ++v22;
  }
}

void sub_1004CAABC(void *a1, int a2, const void *a3, unsigned int a4, int a5)
{
  v10 = a1[9];
  v11 = a1[10];
  if (v10 != v11)
  {
    while (*v10 != a2)
    {
      if (++v10 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  if (v10 != v11)
  {
    v12 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Queueing initial data on channel 0x%04x as the L2CAP Channel hasn't finished registration", buf, 8u);
    }

    operator new();
  }

LABEL_9:
  v13 = qword_100BCE970;
  v14 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_INFO);
  if (v14)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "L2CAPChannelManager::leL2CAPDataIndCb", buf, 2u);
  }

  v16 = sub_1000B4EFC(v14, v15);
  sub_10037416C(v16, a2, a3, a4, 1, a5);
  if (a5)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    *v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    memset(v48, 0, sizeof(v48));
    *buf = 0u;
    sub_100007AD0(buf);
    v17 = a1[3];
    v18 = a1 + 4;
    if (v17 == a1 + 4)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0;
      do
      {
        v20 = v17[5];
        v21 = *(v20 + 8);
        v22 = *(v20 + 16);
LABEL_15:
        if (v21 == v22)
        {
          v27 = 0;
        }

        else
        {
          for (i = *(*v21 + 120); ; i += 26)
          {
            if (i == *(*v21 + 128))
            {
              v21 += 8;
              goto LABEL_15;
            }

            if (*i == a2)
            {
              break;
            }
          }

          v24 = sub_10004DF60(i + 2);

          sub_100614BB8(v17[4], &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = __p.__r_.__value_.__r.__words[1];
          }

          sub_100007774(&v47, p_p, v26);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v27 = 1;
          v19 = v24;
        }

        v28 = v17[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v17[2];
            v30 = *v29 == v17;
            v17 = v29;
          }

          while (!v30);
        }

        if (v29 == v18)
        {
          v27 = 1;
        }

        v17 = v29;
      }

      while ((v27 & 1) == 0);
    }

    v43 = 0;
    v44 = 0;
    v31 = sub_10000C704(&v43, a3, a4);
    v33 = sub_100432718(v31, v32);
    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &__p;
    }

    else
    {
      v34 = __p.__r_.__value_.__r.__words[0];
    }

    v41 = &off_100AE0A78;
    v42 = v44;
    if (v44)
    {
      sub_10000C69C(v44);
    }

    (*(*v33 + 40))(v33, 4, v34, v19, &v41);
    v41 = &off_100AE0A78;
    v36 = v42;
    if (v42)
    {
      sub_10000C808(v42);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v37 = sub_10000F034(v36, v35);
    std::stringbuf::str();
    (*(*v37 + 784))(v37, &v39);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v43 = &off_100AE0A78;
    if (v44)
    {
      sub_10000C808(v44);
    }

    *&v47 = v38;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[1]);
    }

    std::locale::~locale(v48);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }
}

void sub_1004CB054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_10000C808(a18);
  }

  sub_1007FC91C(&a31);
  _Unwind_Resume(a1);
}

void sub_1004CB12C(uint64_t a1)
{
  v2 = qword_100BCE970;
  v3 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_INFO);
  if (v3)
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "L2CAPChannelManager::leL2CAPDataIndCb", v11, 2u);
  }

  v5 = sub_1000B4EFC(v3, v4);
  v6 = *(a1 + 40);
  v7 = sub_10000C5F8(*(a1 + 32));
  v8 = sub_10000C5E0(*(a1 + 32));
  sub_10037416C(v5, v6, v7, v8, 1, *(a1 + 42));
  v9 = *(a1 + 32);
  if (v9)
  {
    *v9 = &off_100AE0A78;
    v10 = v9[1];
    if (v10)
    {
      sub_10000C808(v10);
    }

    operator delete(v9);
  }
}

void sub_1004CB218(uint64_t a1)
{
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v2 = qword_100B53FD0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 42);

  sub_1004CB274(v2, v3, v4, v5);
}

void sub_1004CB274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *&buf[4] = v6;
    *&buf[8] = 1040;
    LODWORD(v35) = 6;
    WORD2(v35) = 2096;
    *(&v35 + 6) = a3;
    HIWORD(v35) = 1024;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "l2capConnectIndCb PSM:0x%04x Address: %{bluetooth:BD_ADDR}.6P) cid:%d", buf, 0x1Eu);
  }

  v9 = *(a1 + 24);
  if (v9 != (a1 + 32))
  {
    while (2)
    {
      v10 = v9[5];
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      while (v11 != v12)
      {
        v13 = *v11;
        if (*(*v11 + 2) == v6 && !*(v13 + 4))
        {
          if (qword_100B508F0 != -1)
          {
            sub_100836920();
          }

          *buf = *a3;
          *&buf[4] = *(a3 + 4);
          v17 = sub_1000E6554(off_100B508E8, buf, 1);
          v18 = v17;
          if (v17 && (*(v17 + 1396) & 1) != 0)
          {
            v19 = qword_100BCE970;
            if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(v13 + 24);
              *buf = 67110146;
              *&buf[4] = v6;
              *&buf[8] = 1040;
              LODWORD(v35) = 6;
              WORD2(v35) = 2096;
              *(&v35 + 6) = a3;
              HIWORD(v35) = 1024;
              v36 = v4;
              v37 = 1024;
              v38 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Accepting connection for PSM:0x%04x Address: %{bluetooth:BD_ADDR}.6P) cid:%d inMTU=%d", buf, 0x24u);
            }

            v21 = sub_10054D198(v18, v6);
            v22 = v21;
            if (v21)
            {
              if ([v21 length] == 2)
              {
                v23 = v22;
                v24 = *[v22 bytes];
                *(v13 + 64) = 3;
                *(v13 + 66) = 2;
                v25 = bswap32(v24) >> 16;
                goto LABEL_32;
              }

              if ([v22 length] == 4)
              {
                v27 = v22;
                v28 = *[v22 bytes];
                *(v13 + 64) = 3;
                *(v13 + 66) = 4;
                v25 = bswap32(v28);
LABEL_32:
                *(v13 + 72) = v25;
              }

              else
              {
                *(v13 + 64) = 3;
                *(v13 + 66) = 16;
                v29 = v22;
                *(v13 + 72) = [v22 bytes];
              }

              v31 = 0;
              sub_1000216B4(&v31);
              v30 = sub_100290164(sub_1004C7C5C, sub_1004C7DBC, sub_1004C7ED0, v4, v13 + 24, 1, v13 + 64);
              sub_100022214(&v31);
              if (v30)
              {
                if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
                {
                  sub_100836C5C();
                }
              }

              else
              {
                *src = 0;
                v33 = 0;
                if (qword_100B508D0 != -1)
                {
                  sub_1008368F8();
                }

                sub_1000498D4(off_100B508C8, (v18[128] << 40) | (v18[129] << 32) | (v18[130] << 24) | (v18[131] << 16) | (v18[132] << 8) | v18[133], 1u, 0, 0, 0, src);
                v35 = 0uLL;
                *&buf[2] = 0;
                *buf = v4;
                uuid_copy(&buf[2], src);
                BYTE8(v35) = 0;
                *(&v35 + 10) = 0;
                BYTE14(v35) = 1;
                sub_1004C8210((v13 + 120), buf);
              }

              sub_10002249C(&v31);
            }

            else if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
            {
              sub_100836D30();
            }

            return;
          }

          v26 = qword_100BCE970;
          if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "l2capConnectIndCb - Device is not connected", buf, 2u);
          }

          return;
        }

        ++v11;
      }

      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v9[2];
          v16 = *v15 == v9;
          v9 = v15;
        }

        while (!v16);
      }

      v9 = v15;
      if (v15 != (a1 + 32))
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
  {
    sub_100836D98();
  }
}

void sub_1004CB760(uint64_t a1)
{
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v2 = qword_100B53FD0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 38);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);

  sub_1004CB7C0(v2, v3, v4, v5, v6);
}

void sub_1004CB7C0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    *&buf[14] = 1024;
    *&buf[16] = a4;
    *&buf[20] = 1024;
    *&buf[22] = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "connectedCB cid:0x%04x inMTU:%d outMTU:%d result:%d", buf, 0x1Au);
  }

  v56 = -1;
  v11 = *(a1 + 24);
  if (v11 != (a1 + 32))
  {
    while (2)
    {
      v12 = v11[5];
      for (i = *(v12 + 8); i != *(v12 + 16); ++i)
      {
        v14 = *i;
        v16 = *(*i + 120);
        v15 = *(*i + 128);
        if (v16 != v15)
        {
          v17 = 0;
          while (*(v16 + v17) != a2)
          {
            v17 += 26;
            if (v16 + v17 == v15)
            {
              goto LABEL_10;
            }
          }

          v52 = a4;
          v21 = v16 + v17;
          memset(dst, 0, sizeof(dst));
          uuid_copy(dst, (v16 + v17 + 2));
          if (a5)
          {
            v22 = qword_100BCE970;
            if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = a5;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "L2CAP Channel connect failure %d", buf, 8u);
            }

            v23 = 1;
          }

          else
          {
            *(v21 + 20) = a3;
            *(v21 + 22) = v52;
            *(v16 + v17 + 18) = 1;
            if (qword_100B508D0 != -1)
            {
              sub_1008368F8();
            }

            v24 = off_100B508C8;
            v25 = sub_10004DF60((v21 + 2));
            v26 = sub_100046458(v24, v25, 0);

            if (qword_100B508F0 != -1)
            {
              sub_100836920();
            }

            v27 = sub_1000504C8(off_100B508E8, v26, 0);
            if (v27 && (*(v27 + 1396) & 1) != 0)
            {
              v53[0] = BYTE5(v26);
              v53[1] = BYTE4(v26);
              v53[2] = BYTE3(v26);
              v53[3] = BYTE2(v26);
              v53[4] = BYTE1(v26);
              v53[5] = v26;
              v28 = sub_1000E1FE8(v53);
              v29 = *(v12 + 41);
              v30 = qword_100BCE970;
              v31 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
              if (v29 == 1)
              {
                if (v31)
                {
                  v33 = *(v21 + 20);
                  v34 = *(v21 + 22);
                  *buf = 67109632;
                  *&buf[4] = a2;
                  *&buf[8] = 1024;
                  *&buf[10] = v33;
                  *&buf[14] = 1024;
                  *&buf[16] = v34;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Registering Packet L2CAP pipe cid:0x%04x inMTU:%d outMTU:%d", buf, 0x14u);
                }

                v35 = sub_1000B4EFC(v31, v32);
                v36 = sub_100371BD4(v35, v28, a2, *(v12 + 36), v52, a1 + 8);
              }

              else
              {
                if (v31)
                {
                  v38 = *(v21 + 20);
                  v39 = *(v21 + 22);
                  v40 = *(v14 + 112);
                  *buf = 67109888;
                  *&buf[4] = a2;
                  *&buf[8] = 1024;
                  *&buf[10] = v38;
                  *&buf[14] = 1024;
                  *&buf[16] = v39;
                  *&buf[20] = 1024;
                  *&buf[22] = v40;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Registering L2CAP pipe cid:0x%04x inMTU:%d outMTU:%d priority:%d", buf, 0x1Au);
                }

                v41 = sub_1000B4EFC(v31, v32);
                v36 = sub_100371A40(v41, v28, a2, *(v12 + 36), v52, &v56, *(v14 + 112));
              }

              v23 = v36 != 0;
              if (v36)
              {
                v42 = qword_100BCE970;
                if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
                {
                  memset(buf, 0, 37);
                  uuid_unparse_upper(dst, buf);
                  sub_100007E30(__p, buf);
                  v51 = v55 >= 0 ? __p : __p[0];
                  *buf = 67109378;
                  *&buf[4] = a2;
                  *&buf[8] = 2082;
                  *&buf[10] = v51;
                  _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to register a socket for channel 0x%04x on device %{public}s", buf, 0x12u);
                  if (v55 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                buf[0] = 0;
                sub_1000216B4(buf);
                if (*(v14 + 56))
                {
                  sub_10029135C(a2);
                }

                else
                {
                  sub_10029104C(a2, 436);
                }

                sub_10002249C(buf);
                a5 = 1805;
              }

              else
              {
                buf[0] = 0;
                sub_1000216B4(buf);
                sub_1000CD5B8(v28);
                sub_10002249C(buf);
                a5 = 0;
              }
            }

            else
            {
              v37 = qword_100BCE970;
              if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
              {
                memset(buf, 0, 37);
                uuid_unparse_upper((v21 + 2), buf);
                sub_100007E30(__p, buf);
                v50 = v55 >= 0 ? __p : __p[0];
                *buf = 136446210;
                *&buf[4] = v50;
                _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Device is not connected %{public}s !", buf, 0xCu);
                if (v55 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v23 = 0;
              a5 = 1804;
            }
          }

          sub_1004CCA78(a1, a2);
          v43 = *v12;
          v44 = sub_10004DF60(dst);
          (**v43)(v43, v44, a5, *(v14 + 2), a2, *(v21 + 24), v56, *(v21 + 22));

          if (v23)
          {
            v45 = v16 + v17;
            v46 = *(v14 + 128);
            if (v16 + v17 + 26 != v46)
            {
              v47 = *(v14 + 120);
              v48 = v47 + v16 + v17;
              do
              {
                v49 = (v48 - v47);
                *(v48 - v47) = *(v48 - v47 + 26);
                uuid_copy((v48 - v47 + 2), (v48 - v47 + 28));
                *(v49 + 18) = v49[11];
                *(v49 + 21) = *(v49 + 47);
                v48 += 26;
              }

              while (v48 - v47 + 26 != v46);
              v45 = v48 - v47;
            }

            *(v14 + 128) = v45;
          }

          return;
        }

LABEL_10:
        ;
      }

      v18 = v11[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v11[2];
          v20 = *v19 == v11;
          v11 = v19;
        }

        while (!v20);
      }

      v11 = v19;
      if (v19 != (a1 + 32))
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_ERROR))
  {
    sub_100836CC4();
  }

  sub_1004CCA78(a1, a2);
}

void sub_1004CBE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1004CBE9C(uint64_t a1)
{
  if (qword_100B53FD8 != -1)
  {
    sub_100836AEC();
  }

  v2 = qword_100B53FD0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  sub_1004CBEF4(v2, v3, v4);
}

void sub_1004CBEF4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "disconnectedCB cid:%d reason:%d", buf, 0xEu);
  }

  v49 = a3;
  v51 = a1;
  v7 = *(a1 + 24);
  v50 = (a1 + 32);
  if (v7 != (a1 + 32))
  {
    while (2)
    {
      v8 = v7[5];
      v9 = v8[1];
      v52 = v8;
      while (v9 != v8[2])
      {
        v10 = *v9;
        v11 = *(*v9 + 120);
        if (v11 != *(*v9 + 128))
        {
          v12 = -v11;
          while (1)
          {
            memset(dst, 0, sizeof(dst));
            uuid_copy(dst, v11 + 2);
            v13 = qword_100BCE970;
            v14 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_INFO);
            if (v14)
            {
              memset(buf, 0, 37);
              uuid_unparse_upper(dst, buf);
              sub_100007E30(__p, buf);
              v16 = __p;
              if (v54 < 0)
              {
                v16 = __p[0];
              }

              v17 = *v11;
              *buf = 136446466;
              *&buf[4] = v16;
              *&buf[12] = 1024;
              *&buf[14] = v17;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "device=%{public}s cid=%x", buf, 0x12u);
              if (v54 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (*v11 == a2)
            {
              break;
            }

            v11 += 13;
            v12 -= 26;
            if (v11 == *(v10 + 128))
            {
              goto LABEL_15;
            }
          }

          v28 = sub_1000B4EFC(v14, v15);
          sub_100373ADC(v28, *v11);
          if ((v52[4] & 1) == 0)
          {
            v29 = *v52;
            v30 = sub_10004DF60(dst);
            (*(*v29 + 8))(v29, v30, v49, *(v10 + 2), a2);
          }

          v31 = *(v10 + 128);
          if (26 - v12 == v31)
          {
            v35 = -v12;
          }

          else
          {
            v32 = *(v10 + 120);
            v33 = v32 - v12;
            do
            {
              v34 = (v33 - v32);
              *(v33 - v32) = *(v33 - v32 + 26);
              uuid_copy((v33 - v32 + 2), (v33 - v32 + 28));
              *(v34 + 18) = v34[11];
              *(v34 + 21) = *(v34 + 47);
              v33 += 26;
            }

            while (v33 - v32 + 26 != v31);
            v35 = v33 - v32;
          }

          *(v10 + 128) = v35;
          if (*v10 == 1)
          {
            if (!*(v10 + 4) && v35 == *(v10 + 120))
            {
              v36 = sub_1004C6904(v51, v10);
              if (v36 != 10 && (v52[4] & 1) == 0)
              {
                (*(**v52 + 24))(*v52, *(v10 + 2), v36);
              }
            }

            v37 = *(v10 + 120);
            if (*(v10 + 128) == v37)
            {
              v38 = v52[2];
              v39 = v38 - (v9 + 1);
              if (v38 != v9 + 1)
              {
                memmove(v9, v9 + 1, v38 - (v9 + 1));
                v37 = *(v10 + 120);
              }

              v52[2] = v9 + v39;
              if (v37)
              {
                *(v10 + 128) = v37;
                operator delete(v37);
              }

              operator delete();
            }

            if (*(v52 + 32) == 1 && v52[2] == v52[1])
            {
              sub_1004CDAE0(v52);
              operator delete();
            }
          }

          return;
        }

LABEL_15:
        ++v9;
        v8 = v52;
      }

      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      v7 = v19;
      if (v19 != v50)
      {
        continue;
      }

      break;
    }
  }

  v22 = *(v51 + 96);
  v21 = *(v51 + 104);
  while (v22 != v21)
  {
    v23 = *v22;
    v24 = *(*v22 + 120);
    if (v24 != *(*v22 + 128))
    {
      v25 = -v24;
      while (1)
      {
        *buf = 0;
        *&buf[8] = 0;
        uuid_copy(buf, v24 + 2);
        if (*v24 == a2)
        {
          break;
        }

        v24 += 13;
        v25 -= 26;
        if (v24 == *(v23 + 128))
        {
          v21 = *(v51 + 104);
          goto LABEL_29;
        }
      }

      v40 = sub_1000B4EFC(v26, v27);
      sub_100373ADC(v40, *v24);
      v41 = *(v23 + 120);
      v42 = *(v23 + 128);
      if (26 - v25 == v42)
      {
        v45 = -v25;
      }

      else
      {
        v43 = v41 - v25;
        do
        {
          v44 = (v43 - v41);
          *(v43 - v41) = *(v43 - v41 + 26);
          uuid_copy((v43 - v41 + 2), (v43 - v41 + 28));
          *(v44 + 18) = v44[11];
          *(v44 + 21) = *(v44 + 47);
          v43 += 26;
        }

        while (v43 - v41 + 26 != v42);
        v45 = v43 - v41;
        v41 = *(v23 + 120);
      }

      *(v23 + 128) = v45;
      if (v45 == v41)
      {
        if (!*(v23 + 4))
        {
          sub_1004C6904(v51, v23);
        }

        v46 = *(v51 + 104);
        v47 = v46 - (v22 + 1);
        if (v46 != v22 + 1)
        {
          memmove(v22, v22 + 1, v46 - (v22 + 1));
        }

        *(v51 + 104) = v22 + v47;
        v48 = *(v23 + 120);
        if (v48)
        {
          *(v23 + 128) = v48;
          operator delete(v48);
        }

        operator delete();
      }

      return;
    }

LABEL_29:
    ++v22;
  }
}

void sub_1004CC4A4(void *a1, uint64_t a2, const void *a3, unsigned int a4, int a5)
{
  v8 = a2;
  v10 = a1[9];
  v11 = a1[10];
  if (v10 != v11)
  {
    while (*v10 != a2)
    {
      if (++v10 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  if (v10 != v11)
  {
    v12 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "l2capDataIndCb for CID: 0x%x, Len: 0x%x", buf, 0xEu);
    }

    operator new();
  }

LABEL_9:
  v13 = sub_1000B4EFC(a1, a2);
  sub_10037416C(v13, v8, a3, a4, 1, a5);
  if (a5)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    memset(v40, 0, sizeof(v40));
    *buf = 0u;
    v39 = 0u;
    sub_100007AD0(buf);
    v14 = a1[3];
    v15 = a1 + 4;
    if (v14 == a1 + 4)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      do
      {
        v17 = v14[5];
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
LABEL_13:
        if (v18 == v19)
        {
          v24 = 0;
        }

        else
        {
          for (i = *(*v18 + 120); ; i += 26)
          {
            if (i == *(*v18 + 128))
            {
              v18 += 8;
              goto LABEL_13;
            }

            if (*i == v8)
            {
              break;
            }
          }

          v21 = sub_10004DF60(i + 2);

          sub_100614BB8(v14[4], &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = __p.__r_.__value_.__r.__words[1];
          }

          sub_100007774(&v39, p_p, v23);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v24 = 1;
          v16 = v21;
        }

        v25 = v14[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v14[2];
            v27 = *v26 == v14;
            v14 = v26;
          }

          while (!v27);
        }

        if (v26 == v15)
        {
          v24 = 1;
        }

        v14 = v26;
      }

      while ((v24 & 1) == 0);
    }

    v35 = 0;
    v36 = 0;
    v28 = sub_10000C704(&v35, a3, a4);
    v30 = sub_100432718(v28, v29);
    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &__p;
    }

    else
    {
      v31 = __p.__r_.__value_.__r.__words[0];
    }

    v33 = &off_100AE0A78;
    v34 = v36;
    if (v36)
    {
      sub_10000C69C(v36);
    }

    (*(*v30 + 40))(v30, 4, v31, v16, &v33);
    v33 = &off_100AE0A78;
    if (v34)
    {
      sub_10000C808(v34);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v35 = &off_100AE0A78;
    if (v36)
    {
      sub_10000C808(v36);
    }

    *&v39 = v32;
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*(&v41 + 1));
    }

    std::locale::~locale(v40);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }
}

void sub_1004CC9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_10000C808(a13);
  }

  sub_1007FC91C(&a26);
  _Unwind_Resume(a1);
}

_BYTE *sub_1004CCA78(uint64_t a1, int a2)
{
  v4 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cid:0x%04x", v9, 8u);
  }

  LOBYTE(v9[0]) = 0;
  sub_1000216B4(v9);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  if (v6 != v5)
  {
    v7 = v5 - v6 - 2;
    while (*v6 != a2)
    {
      ++v6;
      v7 -= 2;
      if (v6 == v5)
      {
        return sub_10002249C(v9);
      }
    }

    if (v6 + 1 != v5)
    {
      memmove(v6, v6 + 1, v7);
    }

    *(a1 + 80) = v6 + v7;
  }

  return sub_10002249C(v9);
}

void sub_1004CCB94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000B4EFC(a1, a2);
  v4 = *(a1 + 40);
  v5 = sub_10000C5F8(*(a1 + 32));
  v6 = sub_10000C5E0(*(a1 + 32));
  sub_10037416C(v3, v4, v5, v6, 1, *(a1 + 42));
  v7 = *(a1 + 32);
  if (v7)
  {
    *v7 = &off_100AE0A78;
    v8 = v7[1];
    if (v8)
    {
      sub_10000C808(v8);
    }

    operator delete(v7);
  }
}

void sub_1004CCC50(uint64_t a1, __int16 a2, void *a3)
{
  v5 = a3;
  v7 = sub_100007EE8(v5, v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004CCD24;
  v9[3] = &unk_100AF9820;
  v11 = a1;
  v12 = a2;
  v8 = v5;
  v10 = v8;
  sub_10000CA94(v7, v9);
}

void sub_1004CCD24(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 24);
  v3 = (v1 + 32);
  if (v2 != (v1 + 32))
  {
    do
    {
      v5 = v2[5];
      if (*(v5 + 41) == 1)
      {
        v7 = v5[1];
        v6 = v5[2];
        while (v7 != v6)
        {
          v8 = *v7;
          v9 = *(*v7 + 120);
          v10 = *(*v7 + 128);
          if (v9 != v10)
          {
            while (*v9 != *(a1 + 48))
            {
              v9 += 26;
              if (v9 == v10)
              {
                goto LABEL_10;
              }
            }

            memset(dst, 0, sizeof(dst));
            uuid_copy(dst, v9 + 2);
            v11 = *(v8 + 2);
            v12 = *v5;
            v13 = sub_10004DF60(dst);
            (*(*v12 + 32))(v12, v13, 0, v11, *(a1 + 48), *(a1 + 32));

            v6 = v5[2];
          }

LABEL_10:
          ++v7;
        }
      }

      v14 = v2[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v2[2];
          v16 = *v15 == v2;
          v2 = v15;
        }

        while (!v16);
      }

      v2 = v15;
    }

    while (v15 != v3);
  }
}

void sub_1004CCEC0(void *a1)
{
  v1 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ LE L2CAP Channels -------------------", buf, 2u);
    v1 = qword_100BCE970;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Registered Sessions:", buf, 2u);
  }

  v2 = a1[3];
  if (v2 != a1 + 4)
  {
    do
    {
      v65 = v2;
      v3 = v2[5];
      v4 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
      {
        v5 = "LE";
        if (!*(v3 + 40))
        {
          v5 = "Classic";
        }

        *buf = 136446210;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: --------- Session: %{public}s ---------", buf, 0xCu);
        v4 = qword_100BCE970;
      }

      v67 = v3;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v65[4], buf);
        v6 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          v6 = *buf;
        }

        v7 = *(v65[5] + 36);
        *v68 = 136446466;
        *&v68[4] = v6;
        v69 = 1024;
        v70 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s pid:%d", v68, 0x12u);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        v4 = qword_100BCE970;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "No";
        if (*(v3 + 32))
        {
          v8 = "Yes";
        }

        *buf = 136446210;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:    Zombied: %{public}s", buf, 0xCu);
        v4 = qword_100BCE970;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:    Endpoints:", buf, 2u);
      }

      v10 = *(v3 + 8);
      for (i = *(v3 + 16); v10 != i; i = *(v67 + 16))
      {
        v11 = *v10;
        v12 = qword_100BCE970;
        if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
        {
          v13 = "LE";
          if (!*(v11 + 56))
          {
            v13 = "Classic";
          }

          *buf = 136446210;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: --------- Endpoint type: %{public}s ---------", buf, 0xCu);
          v12 = qword_100BCE970;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = "Client for";
          if (!*(v11 + 4))
          {
            v14 = "Listener for";
          }

          v15 = *(v11 + 2);
          v16 = "No";
          if (*v11)
          {
            v16 = "Yes";
          }

          *buf = 136446722;
          *&buf[4] = v14;
          *&buf[12] = 1024;
          *&buf[14] = v15;
          *&buf[18] = 2082;
          *&buf[20] = v16;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:          %{public}s PSM:0x%04x Zombied:%{public}s", buf, 0x1Cu);
          v12 = qword_100BCE970;
        }

        if (*(v11 + 56) == 1)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:          Params:", buf, 2u);
            v12 = qword_100BCE970;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(v11 + 14);
            *buf = 67109120;
            *&buf[4] = v17;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:              creditSignalDelta:%d", buf, 8u);
            v12 = qword_100BCE970;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v11 + 16);
            *buf = 67109120;
            *&buf[4] = v18;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:              initialCredits:%d", buf, 8u);
            v12 = qword_100BCE970;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(v11 + 10);
            *buf = 67109120;
            *&buf[4] = v19;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:              inMPS:%d", buf, 8u);
            v12 = qword_100BCE970;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(v11 + 8);
            *buf = 67109120;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:              inMTU:%d", buf, 8u);
            v12 = qword_100BCE970;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(v11 + 12);
            *buf = 67109120;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:              requiresAuth:%d", buf, 8u);
            v12 = qword_100BCE970;
          }
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:          Connected devices:", buf, 2u);
        }

        v22 = *(v11 + 120);
        v23 = *(v11 + 128);
        while (v22 != v23)
        {
          v24 = qword_100BCE970;
          if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
          {
            memset(buf, 0, 37);
            uuid_unparse_upper(v22 + 2, buf);
            sub_100007E30(v68, buf);
            if (v71 >= 0)
            {
              v25 = v68;
            }

            else
            {
              v25 = *v68;
            }

            v26 = *v22;
            v27 = *(v22 + 10);
            v28 = *(v22 + 11);
            v29 = v22[18];
            *buf = 136447234;
            *&buf[4] = v25;
            *&buf[12] = 1024;
            *&buf[14] = v26;
            *&buf[18] = 1024;
            *&buf[20] = v27;
            *&buf[24] = 1024;
            *&buf[26] = v28;
            *&buf[30] = 1024;
            *&buf[32] = v29;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "statedump:             %{public}s (0x%04x) intMTU:%d outMTU:%d state:%d", buf, 0x24u);
            if (v71 < 0)
            {
              operator delete(*v68);
            }

            v23 = *(v11 + 128);
          }

          v22 += 26;
        }

        ++v10;
      }

      v30 = qword_100BCE970;
      if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "statedump: Registered Sessions:", buf, 2u);
      }

      v31 = a1[6];
      v32 = a1[7];
      while (v31 != v32)
      {
        v33 = qword_100BCE970;
        if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(*v31, v68);
          if (v71 >= 0)
          {
            v34 = v68;
          }

          else
          {
            v34 = *v68;
          }

          v35 = *(v31 + 8);
          v36 = "NO";
          if (*(v31 + 24))
          {
            v36 = "YES";
          }

          v37 = *(v31 + 28);
          *buf = 136446978;
          *&buf[4] = v34;
          *&buf[12] = 1024;
          *&buf[14] = v35;
          *&buf[18] = 2082;
          *&buf[20] = v36;
          *&buf[28] = 1024;
          *&buf[30] = v37;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s psm:0z%0x requiresEncryption:%{public}s pid:%d", buf, 0x22u);
          if (v71 < 0)
          {
            operator delete(*v68);
          }

          v32 = a1[7];
        }

        v31 += 48;
      }

      v38 = v65;
      v39 = v65[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v38[2];
          v41 = *v40 == v38;
          v38 = v40;
        }

        while (!v41);
      }

      v2 = v40;
    }

    while (v40 != a1 + 4);
  }

  v42 = qword_100BCE970;
  v43 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
  if (v43)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "statedump: Zombied listeners", buf, 2u);
  }

  for (j = a1[12]; j != a1[13]; ++j)
  {
    v46 = *j;
    v47 = qword_100BCE970;
    if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
    {
      v48 = "LE";
      if (!*(v46 + 56))
      {
        v48 = "Classic";
      }

      *buf = 136446210;
      *&buf[4] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump: --------- Endpoint type: %{public}s ---------", buf, 0xCu);
      v47 = qword_100BCE970;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v49 = "Client for";
      if (!*(v46 + 4))
      {
        v49 = "Listener for";
      }

      v50 = *(v46 + 2);
      v51 = "No";
      if (*v46)
      {
        v51 = "Yes";
      }

      *buf = 136446722;
      *&buf[4] = v49;
      *&buf[12] = 1024;
      *&buf[14] = v50;
      *&buf[18] = 2082;
      *&buf[20] = v51;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:          %{public}s PSM:0x%04x Zombied:%{public}s", buf, 0x1Cu);
      v47 = qword_100BCE970;
    }

    if (*(v46 + 56) == 1)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:          Params:", buf, 2u);
        v47 = qword_100BCE970;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v52 = *(v46 + 14);
        *buf = 67109120;
        *&buf[4] = v52;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:              creditSignalDelta:%d", buf, 8u);
        v47 = qword_100BCE970;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(v46 + 16);
        *buf = 67109120;
        *&buf[4] = v53;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:              initialCredits:%d", buf, 8u);
        v47 = qword_100BCE970;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *(v46 + 10);
        *buf = 67109120;
        *&buf[4] = v54;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:              inMPS:%d", buf, 8u);
        v47 = qword_100BCE970;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v55 = *(v46 + 8);
        *buf = 67109120;
        *&buf[4] = v55;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:              inMTU:%d", buf, 8u);
        v47 = qword_100BCE970;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(v46 + 12);
        *buf = 67109120;
        *&buf[4] = v56;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:              requiresAuth:%d", buf, 8u);
        v47 = qword_100BCE970;
      }
    }

    v43 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
    if (v43)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:          Connected devices:", buf, 2u);
    }

    v57 = *(v46 + 120);
    v58 = *(v46 + 128);
    while (v57 != v58)
    {
      v59 = qword_100BCE970;
      v43 = os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT);
      if (v43)
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v57 + 2, buf);
        sub_100007E30(v68, buf);
        if (v71 >= 0)
        {
          v60 = v68;
        }

        else
        {
          v60 = *v68;
        }

        v61 = *v57;
        v62 = *(v57 + 10);
        v63 = *(v57 + 11);
        v64 = v57[18];
        *buf = 136447234;
        *&buf[4] = v60;
        *&buf[12] = 1024;
        *&buf[14] = v61;
        *&buf[18] = 1024;
        *&buf[20] = v62;
        *&buf[24] = 1024;
        *&buf[26] = v63;
        *&buf[30] = 1024;
        *&buf[32] = v64;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "statedump:             %{public}s (0x%04x) intMTU:%d outMTU:%d state:%d", buf, 0x24u);
        if (v71 < 0)
        {
          operator delete(*v68);
        }

        v58 = *(v46 + 128);
      }

      v57 += 26;
    }
  }

  sub_1000B4EFC(v43, v44);
  nullsub_21();
}

uint64_t sub_1004CDAE0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v4 + 120);
        if (v5)
        {
          *(v4 + 128) = v5;
          operator delete(v5);
        }

        operator delete();
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 8);
  }

  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1004CDB70(uint64_t a1, int a2, __int16 a3, char a4, int a5, int a6, char a7, int a8, char a9, unsigned __int16 a10, unsigned __int16 a11, char a12, int a13)
{
  *a1 = 0;
  *(a1 + 2) = a3;
  *(a1 + 4) = a4;
  *(a1 + 56) = a12;
  *(a1 + 112) = a13;
  *(a1 + 116) = a7;
  *(a1 + 117) = a9;
  *(a1 + 118) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = a6;
  *(a1 + 10) = a8;
  *(a1 + 12) = a5;
  *(a1 + 13) = 0;
  *(a1 + 14) = a11;
  *(a1 + 16) = a10;
  *(a1 + 20) = -1;
  v18 = qword_100BCE970;
  if (os_log_type_enabled(qword_100BCE970, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67110912;
    v20[1] = a2;
    v21 = 1024;
    v22 = a6;
    v23 = 1024;
    v24 = a8;
    v25 = 1024;
    v26 = a5;
    v27 = 1024;
    v28 = a11;
    v29 = 1024;
    v30 = a10;
    v31 = 1024;
    v32 = -1;
    v33 = 1024;
    v34 = a13;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "New Endpoint created packetBased:%d inMTU=%d inMPS=%d requiresAuth=%d creditSignalDelta=%d initialCredits=%d maxLatencyinMS=%d priority:%d", v20, 0x32u);
  }

  *(a1 + 24) = -64512;
  *(a1 + 28) = 5000;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  if (!a12)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  return a1;
}

void sub_1004CDDE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_1004CDF70(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 1);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x9D89D89D89D89D8)
  {
    sub_1000C7698();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 1) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 1);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 1)) >= 0x4EC4EC4EC4EC4ECLL)
  {
    v6 = 0x9D89D89D89D89D8;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_1004CE1C8(a1, v6);
  }

  v7 = 26 * v2;
  __p = 0;
  v12 = v7;
  v13 = v7;
  v14 = 0;
  *v7 = *a2;
  uuid_copy((v7 + 2), (a2 + 2));
  v8 = *(a2 + 18);
  *(v7 + 21) = *(a2 + 21);
  *(v7 + 18) = v8;
  v13 += 26;
  sub_1004CE10C(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = v13 - 26 * ((v13 - v12 - 26) / 0x1A) - 26;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1004CE0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004CE10C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = a2[1] + *a1 - v5;
    do
    {
      *v7 = *v4;
      uuid_copy((v7 + 2), (v4 + 2));
      v8 = *(v4 + 18);
      *(v7 + 21) = *(v4 + 21);
      *(v7 + 18) = v8;
      v4 += 26;
      v7 += 26;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_1004CE1C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x9D89D89D89D89D9)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t *sub_1004CE2CC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1004CE3BC(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1004CE42C(a1, v4);
  return 1;
}

uint64_t *sub_1004CE42C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t sub_1004CE468(uint64_t a1)
{
  v2 = sub_10032F49C(a1, 9);
  *v2 = off_100AF9910;
  v2[32] = off_100AF9A48;
  v2[33] = off_100AF9B18;
  v2[34] = off_100AF9B40;
  sub_10050D254((v2 + 35));
  *(a1 + 432) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = a1 + 512;
  *(a1 + 536) = 0u;
  *(a1 + 528) = a1 + 536;
  sub_100044BBC((a1 + 552));
  sub_100044BBC((a1 + 632));
  sub_100364534((a1 + 696));
  *(a1 + 616) = 0;
  mach_timebase_info((a1 + 620));
  atomic_store(0, (a1 + 744));
  atomic_store(0, (a1 + 752));
  atomic_store(0, (a1 + 760));
  *(a1 + 768) = mach_absolute_time();
  return a1;
}

void sub_1004CE594(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 632);
  sub_10007A068(v1 + 552);
  sub_10000CEDC(v1 + 528, *(v1 + 536));
  sub_10000CEDC(v1 + 504, *(v1 + 512));

  v3 = *(v1 + 472);
  if (v3)
  {
    *(v1 + 480) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 440);
  if (v4)
  {
    *(v1 + 448) = v4;
    operator delete(v4);
  }

  sub_10050D344(v1 + 280);
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004CE62C(uint64_t a1)
{
  *a1 = off_100AF9910;
  *(a1 + 256) = off_100AF9A48;
  *(a1 + 264) = off_100AF9B18;
  *(a1 + 272) = off_100AF9B40;
  sub_1003645A0((a1 + 696));
  sub_10007A068(a1 + 632);
  sub_10007A068(a1 + 552);
  sub_10000CEDC(a1 + 528, *(a1 + 536));
  sub_10000CEDC(a1 + 504, *(a1 + 512));

  v2 = *(a1 + 472);
  if (v2)
  {
    *(a1 + 480) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 440);
  if (v3)
  {
    *(a1 + 448) = v3;
    operator delete(v3);
  }

  sub_10050D344(a1 + 280);

  return sub_10032F580(a1);
}

void sub_1004CE748(uint64_t a1)
{
  sub_1004CE62C(a1);

  operator delete();
}

void sub_1004CE780(uint64_t a1)
{
  sub_1004CE62C(a1 - 264);

  operator delete();
}

uint64_t sub_1004CE7BC(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_100836E24();
  }

  sub_1000F0D9C(off_100B508E8 + 240, a1 + 272);
  *(a1 + 780) = 0;
  v2 = sub_10000E92C();
  if ((*(*v2 + 8))(v2))
  {
    v3 = sub_10000E92C();
    sub_100007E30(v7, "BTAudioHALPlugin");
    sub_100007E30(__p, "BTAudioHALEnableAudioLogging");
    (*(*v3 + 72))(v3, v7, __p, a1 + 780);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  return 0;
}

void sub_1004CE8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CE8F4(uint64_t a1)
{
  sub_10050D348(a1 + 280);
  v19 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "mediaFlushTimeoutMs");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v19);
  v5 = v3;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else if (!v5)
  {
    goto LABEL_10;
  }

  v6 = qword_100BCE8B8;
  v3 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 67109120;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined media flush timeout to %d ms", buf, 8u);
  }

  word_100B5464A = v19;
LABEL_10:
  v7 = sub_10000C798(v3, v4);
  v8 = (*(*v7 + 752))(v7);
  if (v8)
  {
    v10 = qword_100BCE8B8;
    v11 = 10;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 10;
      v12 = "Warning: Legacy iPad overwriting SW Queue to %d";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 8u);
    }
  }

  else
  {
    v13 = sub_10000C798(v8, v9);
    if (!(*(*v13 + 760))(v13))
    {
      goto LABEL_18;
    }

    v10 = qword_100BCE8B8;
    v11 = 20;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 20;
      v12 = "Warning: Legacy HW that does not support EPA/Stats overwriting SW Queue to %d";
      goto LABEL_16;
    }
  }

  byte_100B5464E = v11;
LABEL_18:
  buf[0] = 0;
  sub_1000216B4(buf);
  v14 = sub_1001F4880(off_100AF9B60, 0, xmmword_1008A9BB0, &unk_100B54648);
  sub_100022214(buf);
  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100836E38();
    }

    v15 = 1;
  }

  else
  {
    sub_10050DA84(a1 + 280);
    v15 = 0;
  }

  sub_10002249C(buf);
  return v15;
}

void sub_1004CEBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CEC20(uint64_t a1)
{
  sub_10050DBA4(a1 + 280);
  v4 = 0;
  sub_1000216B4(&v4);
  if (sub_1001F537C())
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100836EA8();
    }

    v2 = 1;
  }

  else
  {
    sub_10050D2D4(a1 + 280);
    v2 = 0;
  }

  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1004CECC8(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_100836E24();
  }

  sub_10007A3F0(off_100B508E8 + 240, a1 + 272);
  return 0;
}

void sub_1004CED18(os_unfair_lock_s *a1, _BYTE *a2, int a3, __int16 a4)
{
  v8 = sub_100702ABC(a2);
  v9 = v8;
  v10 = sub_1004CEE18(a1, v8);
  if (a3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  sub_1003A3604(a2, v11);
  v12 = 0;
  if (a2[704] == 1 && (a2[723] & 1) == 0)
  {
    v12 = a2[706] ^ 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004CEF90;
  v13[3] = &unk_100AF9C48;
  v13[4] = a1;
  v13[5] = v10;
  v14 = v9;
  v16 = a3;
  v17 = v12 & 1;
  v15 = a4;
  v13[6] = a2;
  sub_1004CEEC4(a1 + 108, v13);
}

uint64_t *sub_1004CEE18(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 512);
  if (v2)
  {
    v3 = a1 + 512;
    do
    {
      v4 = *(v2 + 32);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != a1 + 512 && *(v3 + 32) <= a2)
    {
      return *sub_1004D0684(a1 + 504, &v8);
    }
  }

  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100836F18();
  }

  return 0;
}

void sub_1004CEEC4(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_1004CEF90(uint64_t a1, void (***a2)(void, void, void, void, void, void, void))
{
  v3 = *(a1 + 32);
  (**a2)(a2, *(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 61), *(a1 + 58), *(*(a1 + 48) + 708));
  if (*(a1 + 61) == 1)
  {
    v4 = *(a1 + 48);
    if (*(a1 + 60) == 1)
    {
      v5 = 1000 * *(v4 + 708);
      v6 = *(a1 + 48);

      sub_1007036D8(v6, v5);
    }

    else
    {
      if (*(v4 + 705) == 1)
      {
        *(v4 + 705) = 0;
        sub_1004CF0E0(v3, v4, 0);
        v4 = *(a1 + 48);
      }

      if (*(v4 + 710) == 1)
      {
        *(v4 + 710) = 0;
        v7 = *(a1 + 56);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1004CF890;
        v8[3] = &unk_100AF9CA8;
        v9 = v7;
        v10 = 1;
        sub_1004CEEC4(v3 + 108, v8);
      }
    }
  }
}

void sub_1004CF0E0(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  if (a2)
  {
    if (*(a2 + 704) == 1)
    {
      sub_1007036D8(a2, 1000 * *(a2 + 708));
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004CF8C4;
    v6[3] = &unk_100AF9CA8;
    v7 = sub_100702ABC(a2);
    v8 = a3;
    sub_1004CEEC4(a1 + 108, v6);
  }
}

void sub_1004CF1A0(os_unfair_lock_s *a1, uint64_t a2, __int16 a3)
{
  if (*(a2 + 711) == 1)
  {
    v13 = v3;
    v14 = v4;
    v8 = sub_1005095A4(a2 + 400);
    v9 = sub_100702ABC(a2);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1004CF264;
    v10[3] = &unk_100AF9C68;
    v10[4] = sub_1004CEE18(a1, v9);
    v12 = a3;
    v11 = v8;
    sub_1004CEEC4(a1 + 108, v10);
  }
}

void sub_1004CF29C(os_unfair_lock_s *a1, uint64_t a2)
{
  if (*(a2 + 711) == 1)
  {
    v6[7] = v2;
    v6[8] = v3;
    v5 = sub_100702ABC(a2);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004CF33C;
    v6[3] = &unk_100AF9C88;
    v6[4] = sub_1004CEE18(a1, v5);
    sub_1004CEEC4(a1 + 108, v6);
  }
}

void sub_1004CF36C(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  if (*(a2 + 704) == 1)
  {
    v10 = v3;
    v11 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004CF408;
    v7[3] = &unk_100AF9CA8;
    v8 = sub_100702ABC(a2);
    v9 = a3;
    sub_1004CEEC4(a1 + 108, v7);
  }
}

void sub_1004CF43C(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  if (*(a2 + 704) == 1)
  {
    v10 = v3;
    v11 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004CF4D8;
    v7[3] = &unk_100AF9CA8;
    v8 = sub_100702ABC(a2);
    v9 = a3;
    sub_1004CEEC4(a1 + 108, v7);
  }
}

void sub_1004CF50C(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  v6 = sub_100702ABC(a2);
  *(a2 + 706) = a3;
  if (*(a2 + 704) == 1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004CF5B4;
    v7[3] = &unk_100AF9CA8;
    v8 = v6;
    v9 = a3;
    sub_1004CEEC4(a1 + 108, v7);
  }
}

void sub_1004CF5E8(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  if (*(a2 + 704) == 1)
  {
    v10 = v3;
    v11 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004CF684;
    v7[3] = &unk_100AF9CA8;
    v8 = sub_100702ABC(a2);
    v9 = a3;
    sub_1004CEEC4(a1 + 108, v7);
  }
}

void sub_1004CF6B8(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  if (*(a2 + 704) == 1)
  {
    v10 = v3;
    v11 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004CF754;
    v7[3] = &unk_100AF9CA8;
    v8 = sub_100702ABC(a2);
    v9 = a3;
    sub_1004CEEC4(a1 + 108, v7);
  }
}

void sub_1004CF788(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  if (*(a2 + 704) == 1)
  {
    v10 = v3;
    v11 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004CF824;
    v7[3] = &unk_100AF9CA8;
    v8 = sub_100702ABC(a2);
    v9 = a3;
    sub_1004CEEC4(a1 + 108, v7);
  }
}

void sub_1004CF8F8(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004CF984;
  v5[3] = &unk_100AF9CE8;
  v6 = sub_100702ABC(a2);
  v5[4] = a3;
  sub_1004CEEC4(a1 + 108, v5);
}

void sub_1004CF9B8(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  v6 = sub_100702ABC(a2);
  v7 = *(a2 + 608);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004CFA58;
  v8[3] = &unk_100AF9CC8;
  v8[4] = v7;
  v9 = v6;
  v10 = a3;
  sub_1004CEEC4(a1 + 108, v8);
}

void sub_1004CFAB8(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_1004CFC14(uint64_t a1, uint64_t a2)
{
  v7 = xmmword_1008A9C00;
  *(a1 + 616) = 1;
  if (sub_10053A020(a2, &v7, 4u))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v3 = sub_1001F629C((a2 + 128));
    if (v3)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837040();
      }

      v3 = 1;
    }

    sub_10002249C(&v6);
  }

  else
  {
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100836F88(a2, v4);
    }

    return 305;
  }

  return v3;
}

uint64_t sub_1004CFD08(void *a1, uint64_t a2)
{
  v3 = sub_1000E04A4(a1, a2);
  v4 = v3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = sub_1000DAB84(v3, v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004CFDE0;
  v9[3] = &unk_100AF9D70;
  v9[4] = &v11;
  v9[5] = a1;
  v10 = v4;
  sub_10000D334(v6, v9);
  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1004CFDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004CFDE0(uint64_t a1)
{
  result = sub_1004CFE18(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1004CFE18(os_unfair_lock_s *a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, &a1[138]);
  v4 = sub_1004D03D4(a1, a2);
  v5 = sub_1004CEE18(a1, a2);
  if (v5)
  {
    v6 = sub_100508ED0((v4 + 50));
    if (v6)
    {
      if ((*(v4 + 182) - 4) <= 2)
      {
        sub_1004D0FAC(a1, a2);
      }

      *(v4 + 182) = 7;
      v7 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Closing media channel for handle %d", buf, 8u);
      }

      if (*(v4 + 723) == 1)
      {
        if (*(v5 + 1016) == 1)
        {
          *(v5 + 259) = 1;
        }

        sub_1005484E8(v5, 0);
        sub_1004D4440(a1);
      }

      LOBYTE(v13[0]) = 0;
      sub_1000216B4(v13);
      v8 = sub_1001F7D30(v6, 0);
      sub_100022214(v13);
      if (v8 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v5, buf);
        sub_1008370B0();
      }

      sub_10002249C(v13);
    }

    else
    {
      v10 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting A2DP when no AVDTP stream has been established yet", buf, 2u);
      }
    }

    v14 = 0;
    sub_1000216B4(&v14);
    v11 = sub_1001F68C0(a2);
    sub_100022214(&v14);
    v9 = 0;
    if (v11 && v11 != 122)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v5, v13);
        sub_100837104();
      }

      v9 = 1;
      sub_10057E710(a1, v5, 1, 122);
    }

    sub_10002249C(&v14);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100837158();
    }

    v9 = 0;
  }

  sub_1000088CC(v15);
  return v9;
}

void sub_1004D00E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10002249C(&a15);
  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_1004D0144(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  if (v4)
  {
    v6 = v4;
    v7 = sub_1000DAB84(v4, v5);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004D01DC;
    v8[3] = &unk_100AE0EF8;
    v9 = v6;
    v8[4] = a1;
    v8[5] = a2;
    sub_10000CA94(v7, v8);
  }
}

void sub_1004D01DC(uint64_t a1)
{
  v2 = sub_1004D03D4(*(a1 + 32), *(a1 + 48));
  if (v2)
  {
    v3 = v2;
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8((*(a1 + 40) + 128), v13);
      v5 = v14;
      v6 = v13[0];
      sub_1000C23E0(*(a1 + 40), __p);
      v7 = v13;
      if (v5 < 0)
      {
        v7 = v6;
      }

      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136446723;
      *&buf[4] = v7;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s name changed to %{private, mask.hash}s", buf, 0x20u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    sub_1000C23E0(*(a1 + 40), v13);
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v13[0];
    }

    sub_100007E30(buf, v9);
    sub_1003A2AF0(v3, buf);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    v10 = sub_100509234(v3 + 400);
    sub_10069BD7C(v3, v10);
  }
}

void sub_1004D0394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004D03D4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 536);
  if (v2)
  {
    v3 = a1 + 536;
    do
    {
      v4 = *(v2 + 32);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != a1 + 536 && *(v3 + 32) <= a2)
    {
      return *sub_1004D0684(a1 + 528, &v8);
    }
  }

  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100837194();
  }

  return 0;
}

uint64_t sub_1004D0488(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v16 = xmmword_1008A9C00;
  __p = 0;
  v14 = 0;
  v15 = 0;
  if (sub_10053BFB4(a2, &v16, 4u, &__p))
  {
    v5 = __p;
    v4 = v14;
    if (__p != v14)
    {
      v6 = __p;
      do
      {
        v7 = *(v6 + 1);
        if ((v7 & 1) == 0 && *(v6 + 1))
        {
          v8 = 0;
          v9 = (*(v6 + 1) + 24);
          do
          {
            if (*(v9 - 4) == 25)
            {
              *a3 = *v9;
            }

            v9 += 8;
            v8 += 2;
          }

          while (v8 < v7);
        }

        ++v6;
      }

      while (v6 != v4);
      while (v5 != v4)
      {
        v12 = *v5;
        sub_10037D4F4(&v12);
        ++v5;
        v4 = v14;
      }
    }

    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100837204();
    }

    v10 = 305;
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1004D05A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D05C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 528);
  v4 = (a1 + 536);
  if (v3 == (a1 + 536))
  {
    goto LABEL_11;
  }

  while (!sub_100508EEC(v3[5] + 400, v2))
  {
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v3[2];
        v7 = *v6 == v3;
        v3 = v6;
      }

      while (!v7);
    }

    v3 = v6;
    if (v6 == v4)
    {
      goto LABEL_11;
    }
  }

  result = *(v3 + 16);
  if (!*(v3 + 16))
  {
LABEL_11:
    result = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100837240();
      return 0;
    }
  }

  return result;
}

uint64_t **sub_1004D0684(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    abort();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 16);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1004D06D4(void *a1, int a2)
{
  v21 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "WirelessSplitter");
  (*(*v4 + 72))(v4, buf, __p, &v21);
  if (v25 < 0)
  {
    operator delete(*__p);
  }

  if (v27 < 0)
  {
    operator delete(*buf);
  }

  v5 = a1[63];
  if (v5 == a1 + 64)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v5 + 16);
    v8 = v5[5];
    v9 = sub_1000E2140(v8, 0x1Bu);
    ++v6;
    if (v7 == a2 || !v9)
    {
      break;
    }

    v11 = a1[65];
    v12 = v11 < 2 || v11 == v6;
    if (v12 || !sub_1000E356C(v8))
    {
      return v7;
    }

    if (qword_100B508E0 != -1)
    {
      sub_1008372B0();
    }

    if (!off_100B508D8)
    {
      return v7;
    }

    v19 = 0;
    v20 = 0;
    sub_100519E34(off_100B508D8, v8, &v20, &v19);
    if (!v20 || !v19)
    {
      v16 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(v8, buf);
        if (v27 >= 0)
        {
          v17 = buf;
        }

        else
        {
          v17 = *buf;
        }

        *__p = 141558275;
        *&__p[4] = 1752392040;
        v23 = 2081;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: Found another device which is in-ear %{private, mask.hash}s", __p, 0x16u);
        if (v27 < 0)
        {
          operator delete(*buf);
        }
      }

      return v7;
    }

LABEL_24:
    v13 = v5[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v5[2];
        v12 = *v14 == v5;
        v5 = v14;
      }

      while (!v12);
    }

    v5 = v14;
    if (v14 == a1 + 64)
    {
      return 0;
    }
  }

  if (v21 != 1 || !sub_1000E2140(v8, 0xCu) || v7 == a2)
  {
    goto LABEL_24;
  }

  v18 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Wireless Splitter enabled using defaults writes with device with handle=%d", buf, 8u);
  }

  return v7;
}

void sub_1004D09D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D0A0C(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = sub_1004D03D4(a1, a2);
  v5 = sub_100508ED0((v4 + 50));
  v6 = sub_1004CEE18(a1, a2);
  *(v4 + 360) = 0;
  if (v5)
  {
    v7 = v6;
    v8 = qword_100BCE8B8;
    if (v6)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v7, __p);
        v9 = v23 >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting A2DP audio streaming to device %{public}s", buf, 0xCu);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v4 + 182) = 5;
      sub_1003A3254(v4);
      v10 = sub_1005095A4((v4 + 50));
      v11 = v10;
      v12 = *(v4 + 164);
      if (*(v4 + 723) == 1)
      {
        if (v10 == 2)
        {
          LOWORD(v12) = 244;
        }

        else if (v10 == 33023)
        {
          LOWORD(v12) = 174;
        }
      }

      v14 = sub_10054F768(v7);
      if (qword_100B50910 != -1)
      {
        sub_1008373C4();
      }

      sub_1005BBF04(off_100B50908, 1, (*(v7 + 128) << 40) | (*(v7 + 129) << 32) | (*(v7 + 130) << 24) | (*(v7 + 131) << 16) | (*(v7 + 132) << 8) | *(v7 + 133), v14);
      sub_1004CED18(a1, v4, 1, v12);
      *(v7 + 1384) |= 0x10u;
      if (v11 == 33023 || v11 == 2)
      {
        v17 = sub_10000C7D0(v15, v16);
        if (sub_10041074C(v17, v18))
        {
          *(v4 + 711) = 1;
          sub_1004CF1A0(a1, v4, v12);
        }
      }

      if (*(v4 + 723) == 1 && sub_1000E2140(v7, 0x1Bu))
      {
        v19 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Wireless Splitter sending BT_ACCESSORY_WS_SESSION_START", __p, 2u);
        }

        if (qword_100B50950 != -1)
        {
          sub_1008373EC();
        }

        sub_1003349D4(off_100B50948, v7, 1, 1);
        *(v4 + 724) = 1;
      }

      v20 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
      {
        sub_1000E5A58(v7, __p);
        if (v23 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Reporting A2DP audio is connected and streaming for %{public}s", buf, 0xCu);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10057E984(a1, v7, 201, 0);
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083748C();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008374C8();
  }

  return 1;
}

void sub_1004D0F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D0FAC(os_unfair_lock_s *a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, &a1[138]);
  v4 = sub_1004D03D4(a1, a2);
  v5 = sub_100508ED0((v4 + 50));
  if (!v5)
  {
    v10 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = a2;
      v11 = "Stop streaming issued when there is no active stream handle for a2dp handle %d";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, __p, 8u);
    }

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  v7 = sub_1004CEE18(a1, a2);
  if (!v7)
  {
    v14 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v5;
      v11 = "Unable to find device for handle %d";
      v12 = v14;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ((*(v4 + 182) - 4) <= 2)
  {
    if (*(v4 + 183) == 1)
    {
      *(v4 + 183) = 0;
    }

    if (qword_100B50940 != -1)
    {
      sub_100837504();
    }

    if ((sub_100639D40(off_100B50938, v6) & 1) == 0)
    {
      LODWORD(__p[0]) = 0;
      *buf = 0;
      v20 = 0;
      sub_1000C2364(v7, __p, buf, &v20 + 1, &v20);
      *(v4 + 354) = 150;
    }

    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v7, __p);
      if (v22 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136446210;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reporting media channel has closed for device %{public}s", buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10057E984(a1, v7, 202, 0);
  }

  v17 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v7, __p);
    v18 = v22 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device %{public}s was not streaming and there is no sendthread to stop", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v15 = 1;
LABEL_23:
  sub_1000088CC(v19);
  return v15;
}

void sub_1004D146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D14B4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = 0;
  sub_1000C2364(a2, &v6 + 1, &v6, &v5 + 1, &v5);
  if ((a3 - 1) > 9)
  {
    return 150;
  }

  else
  {
    return word_1008A9BD2[a3 - 1];
  }
}

uint64_t sub_1004D1518(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_1004CEE18(a1, a2);
  if (result)
  {
    v6 = result;
    v7 = sub_10000C798(result, v5);
    result = (*(*v7 + 104))(v7);
    if ((result & 1) == 0)
    {
      if (a3)
      {
        v8 = -4580;
      }

      else
      {
        v8 = -13288;
      }

      v9 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "Unlimited";
        if (a3)
        {
          v10 = "Limited to 2Mbps";
        }

        *buf = 136446210;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dynamic Packet Type Supported EDR packet types: %{public}s", buf, 0xCu);
      }

      *buf = 0;
      v17 = 0;
      sub_1000216B4(&v17);
      if (!sub_10023DB58(v6 + 128, buf) && *buf && (*(*buf + 278) & 1) == 0)
      {
        sub_10024DD74(*buf, v8, v11, v12, v13, v14, v15, v16);
      }

      sub_100022214(&v17);
      return sub_10002249C(&v17);
    }
  }

  return result;
}