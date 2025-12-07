void sub_100000DD8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100000E60;
  block[3] = &unk_10000C3A8;
  block[4] = a1;
  if (qword_100010990 != -1)
  {
    dispatch_once(&qword_100010990, block);
  }
}

uint64_t sub_100000E60(uint64_t a1)
{
  v1 = os_log_create("com.apple.IPConfiguration", *(a1 + 32));

  return sub_100008294(v1);
}

void sub_100001750(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = sub_1000082A0();
    v11 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v12 = _sc_log <= 0 ? 2 : 3;
      v13 = os_log_type_enabled(v10, v11) ? v12 : 2;
      v67 = 138412290;
      v68 = v9;
      v14 = _os_log_send_and_compose_impl(v13, 0, &v71, 256, &_mh_execute_header, v10, v11, "failed NSURLSessionDataTask with error '%@'", &v67, 12);
      __SC_log_send2();
      if (v14 != &v71)
      {
        free(v14);
      }
    }

    v15 = [v9 domain];
    if (objc_msgSend_isEqualToString_(v15))
    {
      v16 = [v9 code];

      if (v16 == -1009)
      {
        v17 = sub_1000082A0();
        v18 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v19 = _sc_log <= 0 ? 2 : 3;
          v20 = os_log_type_enabled(v17, v18) ? v19 : 2;
          LOWORD(v67) = 0;
          v21 = _os_log_send_and_compose_impl(v20, 0, &v71, 256, &_mh_execute_header, v17, v18, "no internet connection currently", &v67, 2);
          __SC_log_send2();
          if (v21 != &v71)
          {
            free(v21);
          }
        }

        goto LABEL_50;
      }

LABEL_49:
      [*(a1 + 32) setValidFetch:0];
LABEL_50:
      v22 = 0;
LABEL_51:
      v25 = 0;
      v26 = 0;
      v24 = 0;
      goto LABEL_52;
    }

LABEL_48:

    goto LABEL_49;
  }

  if (!v8)
  {
    v15 = sub_1000082A0();
    v32 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v33 = _sc_log <= 0 ? 2 : 3;
      v34 = os_log_type_enabled(v15, v32) ? v33 : 2;
      LOWORD(v67) = 0;
      v35 = _os_log_send_and_compose_impl(v34, 0, &v71, 256, &_mh_execute_header, v15, v32, "got NULL NSURLResponse", &v67, 2);
      __SC_log_send2();
      if (v35 != &v71)
      {
        free(v35);
      }
    }

    goto LABEL_48;
  }

  v22 = v8;
  v23 = [v22 statusCode];
  if ((v23 - 200) >= 0xC8)
  {
    v38 = v23;
    v39 = sub_1000082A0();
    v40 = _SC_syslog_os_log_mapping();
    v41 = __SC_log_enabled();
    if (v38 >= 400)
    {
      if (!v41)
      {
        goto LABEL_85;
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v42 = _sc_log <= 0 ? 2 : 3;
      v43 = os_log_type_enabled(v39, v40) ? v42 : 2;
      v65 = v43;
      v44 = v39;
      v45 = [NSHTTPURLResponse localizedStringForStatusCode:v38];
      v67 = 134218242;
      v68 = v38;
      v69 = 2112;
      v70 = v45;
      v46 = _os_log_send_and_compose_impl(v65, 0, &v71, 256, &_mh_execute_header, v44, v40, "encountered HTTP error '%ld' (%@)", &v67, 22);

      __SC_log_send2();
      if (v46 == &v71)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    if (!v41)
    {
LABEL_85:

      [*(a1 + 32) setValidFetch:0];
      goto LABEL_51;
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    if (_sc_log <= 0)
    {
      v47 = 2;
    }

    else
    {
      v47 = 3;
    }

    if (os_log_type_enabled(v39, v40))
    {
      v48 = v47;
    }

    else
    {
      v48 = 2;
    }

    v67 = 134217984;
    v68 = v38;
    v49 = _os_log_send_and_compose_impl(v48, 0, &v71, 256, &_mh_execute_header, v39, v40, "unrecognized HTTP status code '%ld'", &v67, 12);
LABEL_83:
    v46 = v49;
    __SC_log_send2();
    if (v46 != &v71)
    {
LABEL_84:
      free(v46);
      goto LABEL_85;
    }

    goto LABEL_85;
  }

  if (!v7)
  {
    v39 = sub_1000082A0();
    v50 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_85;
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    if (_sc_log <= 0)
    {
      v51 = 2;
    }

    else
    {
      v51 = 3;
    }

    v52 = os_log_type_enabled(v39, v50);
    v53 = *(a1 + 40);
    if (v52)
    {
      v54 = v51;
    }

    else
    {
      v54 = 2;
    }

    v67 = 138412290;
    v68 = v53;
    v49 = _os_log_send_and_compose_impl(v54, 0, &v71, 256, &_mh_execute_header, v39, v50, "retrieved NULL data from URL '%@'", &v67, 12);
    goto LABEL_83;
  }

  v66 = 0;
  v24 = [NSJSONSerialization JSONObjectWithData:v7 options:16 error:&v66];
  v25 = v66;
  if (v25 || !v24)
  {
    v55 = sub_1000082A0();
    v56 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v57 = _sc_log <= 0 ? 2 : 3;
      v58 = os_log_type_enabled(v55, v56) ? v57 : 2;
      v67 = 138412290;
      v68 = v25;
      v59 = _os_log_send_and_compose_impl(v58, 0, &v71, 256, &_mh_execute_header, v55, v56, "failed JSON parsing with error '%@'", &v67, 12);
      __SC_log_send2();
      if (v59 != &v71)
      {
        free(v59);
      }
    }

    [*(a1 + 32) setValidFetch:0];
    goto LABEL_106;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v60 = sub_1000082A0();
    v61 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v62 = _sc_log <= 0 ? 2 : 3;
      v63 = os_log_type_enabled(v60, v61) ? v62 : 2;
      LOWORD(v67) = 0;
      v64 = _os_log_send_and_compose_impl(v63, 0, &v71, 256, &_mh_execute_header, v60, v61, "parsed JSON object isn't a well-formed NSDictionary", &v67, 2);
      __SC_log_send2();
      if (v64 != &v71)
      {
        free(v64);
      }
    }

    [*(a1 + 32) setValidFetch:0];
    v25 = 0;
LABEL_106:
    v26 = 0;
    goto LABEL_52;
  }

  v26 = v24;
  v27 = sub_1000082A0();
  v28 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v29 = _sc_log <= 0 ? 2 : 3;
    v30 = os_log_type_enabled(v27, v28) ? v29 : 2;
    v67 = 138412290;
    v68 = v26;
    v31 = _os_log_send_and_compose_impl(v30, 0, &v71, 256, &_mh_execute_header, v27, v28, "fetched PvD Additional Info JSON object:\n'%@'", &v67, 12);
    __SC_log_send2();
    if (v31 != &v71)
    {
      free(v31);
    }
  }

  v25 = 0;
  v24 = v26;
LABEL_52:
  v36 = [*(a1 + 32) validFetch];
  v37 = *(a1 + 32);
  if (v36 && v26)
  {
    [v37 scheduleParsingEventCompleteWithParsedJSON:v26 pvdID:*(a1 + 48) ipv6Prefixes:*(a1 + 56)];
  }

  else
  {
    [v37 scheduleParsingEventAbort];
  }
}

void sub_100002298(uint64_t a1)
{
  v20 = 0;
  v2 = [*(a1 + 32) urlSession];

  if (v2)
  {
    v3 = sub_1000082A0();
    v4 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = _sc_log <= 0 ? 2 : 3;
      v6 = os_log_type_enabled(v3, v4) ? v5 : 2;
      v19 = 0;
      v7 = _os_log_send_and_compose_impl(v6, 0, &v21, 256, &_mh_execute_header, v3, v4, "url fetch completed successfully", &v19, 2);
      __SC_log_send2();
      if (v7 != &v21)
      {
        free(v7);
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v9 = [*(a1 + 32) createValidPvDAdditionalInfoDict:*(a1 + 40) withID:*(a1 + 48) andPrefixes:*(a1 + 56)];
    v20 = v9;
    if (!v9)
    {
      [*(a1 + 32) setValidFetch:0];
    }

    v10 = [*(a1 + 32) validFetch];
    v11 = &kCFBooleanTrue;
    if (!v10)
    {
      v11 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"valid_fetch", *v11);
    if ([*(a1 + 32) validFetch] && v9)
    {
      v12 = sub_1000082A0();
      v13 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        if (_sc_log <= 0)
        {
          v14 = 2;
        }

        else
        {
          v14 = 3;
        }

        if (os_log_type_enabled(v12, v13))
        {
          v15 = v14;
        }

        else
        {
          v15 = 2;
        }

        v19 = 0;
        v16 = _os_log_send_and_compose_impl(v15, 0, &v21, 256, &_mh_execute_header, v12, v13, "fetched pvd info was validated", &v19, 2);
        __SC_log_send2();
        if (v16 != &v21)
        {
          free(v16);
        }
      }

      CFDictionarySetValue(Mutable, @"additional_information", v9);
    }

    v17 = [*(a1 + 32) urlSession];
    [v17 finishTasksAndInvalidate];

    [*(a1 + 32) setUrlSession:0];
    v18 = [*(a1 + 32) xpcClientCompletionHandler];
    (v18)[2](v18, Mutable);
  }

  sub_1000075DC(&v20);
}

void sub_100002654(uint64_t a1)
{
  v2 = [*(a1 + 32) urlSession];

  if (v2)
  {
    v3 = sub_1000082A0();
    v4 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v14, 0, sizeof(v14));
      v5 = _sc_log <= 0 ? 2 : 3;
      v6 = os_log_type_enabled(v3, v4) ? v5 : 2;
      v13[0] = 0;
      v7 = _os_log_send_and_compose_impl(v6, 0, v14, 256, &_mh_execute_header, v3, v4, "aborting parsing event due to a failed url fetch", v13, 2);
      __SC_log_send2();
      if (v7 != v14)
      {
        free(v7);
      }
    }

    v8 = [*(a1 + 32) urlSession];
    [v8 invalidateAndCancel];

    [*(a1 + 32) setUrlSession:0];
    Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v10 = [*(a1 + 32) validFetch];
    v11 = &kCFBooleanTrue;
    if (!v10)
    {
      v11 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"valid_fetch", *v11);
    v12 = [*(a1 + 32) xpcClientCompletionHandler];
    (v12)[2](v12, Mutable);
  }
}

BOOL sub_1000046E4(__CFDictionary *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v223 = a4;
  StringWithDate = 0;
  v247 = 0;
  v245 = 0;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v237 = [&off_10000C768 countByEnumeratingWithState:&v241 objects:v258 count:16];
  if (!v237)
  {
    v10 = 0;
    value = 0;
    v9 = 0;
    goto LABEL_221;
  }

  value = 0;
  v9 = 0;
  v10 = 0;
  v219 = 0;
  v238 = *v242;
  v231 = v8;
  v232 = v7;
  theDict = a1;
LABEL_3:
  v218 = v10;
  v11 = 0;
  while (1)
  {
    if (*v242 != v238)
    {
      objc_enumerationMutation(&off_10000C768);
    }

    v12 = *(*(&v241 + 1) + 8 * v11);
    v13 = objc_autoreleasePoolPush();
    v14 = [v7 valueForKey:v12];
    if (!v14)
    {
      v202 = sub_1000082A0();
      v150 = _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_322;
      }

      v151 = v13;
      v284 = 0u;
      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      if (_sc_log <= 0)
      {
        v152 = 2;
      }

      else
      {
        v152 = 3;
      }

      v269 = 0uLL;
      v270 = 0uLL;
      if (os_log_type_enabled(v202, v150))
      {
        v153 = v152;
      }

      else
      {
        v153 = 2;
      }

      v263 = 138412290;
      v264 = v12;
      v154 = _os_log_send_and_compose_impl(v153, 0, &v269, 256, &_mh_execute_header, v202, v150, "PvD Additional Info is missing necessary field '%@'", &v263, 12);
      __SC_log_send2();
      if (v154 != &v269)
      {
        v155 = v154;
        goto LABEL_319;
      }

LABEL_320:
      v7 = v232;
      v13 = v151;
      goto LABEL_322;
    }

    if (objc_msgSend_isEqualToString_(v12) && v9 == 0)
    {
      break;
    }

    if (objc_msgSend_isEqualToString_(v12))
    {
      v16 = value == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v230 = v9;
      v226 = v12;
      v85 = v14;
      v262[0] = 0;
      *&v252 = 0;
      *&v248 = 0;
      *v259 = 0;
      v86 = sub_1000082A0();
      v87 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v240 = v11;
        v88 = v8;
        v89 = v14;
        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v279 = 0u;
        v278 = 0u;
        v277 = 0u;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        if (_sc_log <= 0)
        {
          LODWORD(v90) = 2;
        }

        else
        {
          LODWORD(v90) = 3;
        }

        v269 = 0uLL;
        v270 = 0uLL;
        if (os_log_type_enabled(v86, v87))
        {
          v90 = v90;
        }

        else
        {
          v90 = 2;
        }

        v91 = v86;
        v92 = objc_opt_class();
        v263 = 138412802;
        v264 = v226;
        v265 = 2112;
        v266 = v85;
        v267 = 2112;
        v268 = v92;
        v93 = v92;
        v94 = _os_log_send_and_compose_impl(v90, 0, &v269, 256, &_mh_execute_header, v91, v87, "validating field '%@' with value '%@' of class '%@'", &v263, 32);

        __SC_log_send2();
        if (v94 != &v269)
        {
          free(v94);
        }

        v14 = v89;
        v8 = v88;
        v11 = v240;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v180 = sub_1000082A0();
        v181 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v236 = v14;
          v182 = v13;
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          if (_sc_log <= 0)
          {
            v183 = 2;
          }

          else
          {
            v183 = 3;
          }

          v269 = 0uLL;
          v270 = 0uLL;
          if (os_log_type_enabled(v180, v181))
          {
            v184 = v183;
          }

          else
          {
            v184 = 2;
          }

          v180 = v180;
          v185 = objc_opt_class();
          v263 = 138412290;
          v264 = v185;
          v186 = v185;
          v187 = _os_log_send_and_compose_impl(v184, 0, &v269, 256, &_mh_execute_header, v180, v181, "expected String element, got '%@'", &v263, 12);

          __SC_log_send2();
          if (v187 != &v269)
          {
            free(v187);
          }

          v13 = v182;
          v14 = v236;
        }

        goto LABEL_309;
      }

      v95 = CFLocaleCreate(0, @"en_US_POSIX");
      *&v252 = v95;
      if (!v95 || (v96 = CFDateFormatterCreate(0, v95, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle), (v262[0] = v96) == 0) || (v97 = v96, CFDateFormatterSetFormat(v96, @"yyyy-MM-dd'T'HH:mm:ss'Z'"), DateFromString = CFDateFormatterCreateDateFromString(0, v97, v85, 0), (*&v248 = DateFromString) == 0) || (v99 = DateFromString, Current = CFAbsoluteTimeGetCurrent(), v101 = CFDateCreate(0, Current), (*v259 = v101) == 0))
      {
LABEL_310:
        sub_1000075DC(&v252);
        sub_1000075DC(v262);
        sub_1000075DC(&v248);
        sub_1000075DC(v259);

        v202 = sub_1000082A0();
        v197 = _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          v7 = v232;
          goto LABEL_322;
        }

        v151 = v13;
        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v279 = 0u;
        v278 = 0u;
        v277 = 0u;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        if (_sc_log <= 0)
        {
          v198 = 2;
        }

        else
        {
          v198 = 3;
        }

        v269 = 0uLL;
        v270 = 0uLL;
        if (os_log_type_enabled(v202, v197))
        {
          v199 = v198;
        }

        else
        {
          v199 = 2;
        }

        v263 = 138412546;
        v264 = v226;
        v265 = 2112;
        v266 = v85;
        v200 = _os_log_send_and_compose_impl(v199, 0, &v269, 256, &_mh_execute_header, v202, v197, "failed to validate field '%@': %@", &v263, 22);
        __SC_log_send2();
        if (v200 != &v269)
        {
          v155 = v200;
LABEL_319:
          free(v155);
        }

        goto LABEL_320;
      }

      if (CFDateCompare(v99, v101, 0) == kCFCompareGreaterThan)
      {
        StringWithDate = CFDateFormatterCreateStringWithDate(0, v97, v99);
        value = StringWithDate;
        if (StringWithDate)
        {
          sub_1000075DC(&v252);
          sub_1000075DC(v262);
          sub_1000075DC(&v248);
          sub_1000075DC(v259);
          v9 = v230;
          goto LABEL_119;
        }

        v180 = sub_1000082A0();
        v193 = _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_309;
        }

        v189 = v13;
        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v279 = 0u;
        v278 = 0u;
        v277 = 0u;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        if (_sc_log <= 0)
        {
          v194 = 2;
        }

        else
        {
          v194 = 3;
        }

        v269 = 0uLL;
        v270 = 0uLL;
        if (os_log_type_enabled(v180, v193))
        {
          v195 = v194;
        }

        else
        {
          v195 = 2;
        }

        LOWORD(v263) = 0;
        v192 = _os_log_send_and_compose_impl(v195, 0, &v269, 256, &_mh_execute_header, v180, v193, "failed to create string from date formatter", &v263, 2);
      }

      else
      {
        v180 = sub_1000082A0();
        v188 = _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
LABEL_309:

          goto LABEL_310;
        }

        v189 = v13;
        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v279 = 0u;
        v278 = 0u;
        v277 = 0u;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        if (_sc_log <= 0)
        {
          v190 = 2;
        }

        else
        {
          v190 = 3;
        }

        v269 = 0uLL;
        v270 = 0uLL;
        if (os_log_type_enabled(v180, v188))
        {
          v191 = v190;
        }

        else
        {
          v191 = 2;
        }

        LOWORD(v263) = 0;
        v192 = _os_log_send_and_compose_impl(v191, 0, &v269, 256, &_mh_execute_header, v180, v188, "expiration date must be in the future", &v263, 2);
      }

      v196 = v192;
      __SC_log_send2();
      if (v196 != &v269)
      {
        free(v196);
      }

      v13 = v189;
      goto LABEL_309;
    }

    if (objc_msgSend_isEqualToString_(v12))
    {
      v17 = v219 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      goto LABEL_120;
    }

    v239 = v11;
    v224 = v12;
    v18 = v14;
    v215 = v223;
    v257 = 0;
    v19 = [(__CFString *)v18 count];
    v20 = v19;
    v21 = 10;
    if (v19 < 0xA)
    {
      v21 = v19;
    }

    v216 = v21;
    theArray = 0;
    v22 = sub_1000082A0();
    v23 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v227 = v9;
      v24 = v7;
      v284 = 0u;
      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      v25 = v18;
      if (_sc_log <= 0)
      {
        LODWORD(v26) = 2;
      }

      else
      {
        LODWORD(v26) = 3;
      }

      v269 = 0uLL;
      v270 = 0uLL;
      if (os_log_type_enabled(v22, v23))
      {
        v26 = v26;
      }

      else
      {
        v26 = 2;
      }

      v27 = v22;
      v28 = objc_opt_class();
      v263 = 138412802;
      v264 = v224;
      v265 = 2112;
      v29 = v25;
      v266 = v25;
      v267 = 2112;
      v268 = v28;
      v30 = v28;
      v31 = _os_log_send_and_compose_impl(v26, 0, &v269, 256, &_mh_execute_header, v27, v23, "validating field '%@' with value '%@' of class '%@'", &v263, 32);

      __SC_log_send2();
      if (v31 != &v269)
      {
        free(v31);
      }

      v7 = v24;
      v9 = v227;
      v18 = v29;
      v8 = v231;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v102 = sub_1000082A0();
      v103 = _SC_syslog_os_log_mapping();
      v35 = v224;
      if (__SC_log_enabled())
      {
        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v279 = 0u;
        v278 = 0u;
        v277 = 0u;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        if (_sc_log <= 0)
        {
          v104 = 2;
        }

        else
        {
          v104 = 3;
        }

        v269 = 0uLL;
        v270 = 0uLL;
        if (os_log_type_enabled(v102, v103))
        {
          v105 = v104;
        }

        else
        {
          v105 = 2;
        }

        LOWORD(v263) = 0;
        v106 = _os_log_send_and_compose_impl(v105, 0, &v269, 256, &_mh_execute_header, v102, v103, "expected JSON value of Array type", &v263, 2);
        __SC_log_send2();
        if (v106 != &v269)
        {
          free(v106);
        }

        v35 = v224;
      }

      goto LABEL_213;
    }

    v32 = +[NSMutableArray array];
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v34 = 0;
    v257 = Mutable;
    v35 = v224;
    v220 = v32;
    if (!v32 || !Mutable)
    {
      goto LABEL_85;
    }

    if (!v20)
    {
LABEL_50:
      sub_1000075DC(&theArray);
      v254 = 0u;
      v255 = 0u;
      v252 = 0u;
      v253 = 0u;
      obj = v215;
      v212 = [obj countByEnumeratingWithState:&v252 objects:&v263 count:16];
      if (v212)
      {
        v211 = *v253;
        v221 = v13;
        v234 = v14;
        v228 = v9;
        v209 = v18;
        while (2)
        {
          v48 = 0;
          while (2)
          {
            if (*v253 != v211)
            {
              objc_enumerationMutation(obj);
            }

            v214 = v48;
            v217 = [*(*(&v252 + 1) + 8 * v48) componentsSeparatedByString:@"::"];
            v49 = [v217 firstObject];
            v248 = 0u;
            v249 = 0u;
            v250 = 0u;
            v251 = 0u;
            v50 = v220;
            v51 = [v50 countByEnumeratingWithState:&v248 objects:v262 count:16];
            if (!v51)
            {
LABEL_133:

              v107 = sub_1000082A0();
              v108 = _SC_syslog_os_log_mapping();
              v8 = v231;
              v13 = v221;
              v14 = v234;
              if (__SC_log_enabled())
              {
                v284 = 0u;
                v283 = 0u;
                v282 = 0u;
                v281 = 0u;
                v280 = 0u;
                v279 = 0u;
                v278 = 0u;
                v277 = 0u;
                v275 = 0u;
                v276 = 0u;
                v273 = 0u;
                v274 = 0u;
                v271 = 0u;
                v272 = 0u;
                v109 = _sc_log <= 0 ? 2 : 3;
                v269 = 0uLL;
                v270 = 0uLL;
                v110 = os_log_type_enabled(v107, v108);
                *v259 = 138412546;
                v111 = v110 ? v109 : 2;
                *&v259[4] = v49;
                v260 = 2112;
                v261 = v50;
                v112 = _os_log_send_and_compose_impl(v111, 0, &v269, 256, &_mh_execute_header, v107, v108, "discrepancy found with prefix '%@', not contained by any of %@", v259, 22);
                __SC_log_send2();
                if (v112 != &v269)
                {
                  free(v112);
                }
              }

              v34 = 0;
              v7 = v232;
              v9 = v228;
              v35 = v224;
              v18 = v209;
              goto LABEL_214;
            }

            v52 = v51;
            v53 = *v249;
LABEL_57:
            v54 = 0;
            while (1)
            {
              if (*v249 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = [*(*(&v248 + 1) + 8 * v54) componentsSeparatedByString:@"::"];
              v56 = [v55 firstObject];
              v57 = [v49 lowercaseString];
              v58 = [v56 lowercaseString];
              v59 = [v57 containsString:v58];

              if (v59)
              {
                break;
              }

              if (v52 == ++v54)
              {
                v52 = [v50 countByEnumeratingWithState:&v248 objects:v262 count:16];
                if (v52)
                {
                  goto LABEL_57;
                }

                goto LABEL_133;
              }
            }

            v60 = sub_1000082A0();
            v61 = _SC_syslog_os_log_mapping();
            v8 = v231;
            v13 = v221;
            if (__SC_log_enabled())
            {
              v284 = 0u;
              v283 = 0u;
              v282 = 0u;
              v281 = 0u;
              v280 = 0u;
              v279 = 0u;
              v278 = 0u;
              v277 = 0u;
              v275 = 0u;
              v276 = 0u;
              v273 = 0u;
              v274 = 0u;
              v271 = 0u;
              v272 = 0u;
              v62 = _sc_log <= 0 ? 2 : 3;
              v269 = 0uLL;
              v270 = 0uLL;
              v63 = os_log_type_enabled(v60, v61);
              *v259 = 138412546;
              v64 = v63 ? v62 : 2;
              *&v259[4] = v49;
              v260 = 2112;
              v261 = v56;
              v65 = _os_log_send_and_compose_impl(v64, 0, &v269, 256, &_mh_execute_header, v60, v61, "RA PIO prefix '%@' found contained by PvD Additional Information prefix '%@'", v259, 22);
              __SC_log_send2();
              if (v65 != &v269)
              {
                free(v65);
              }
            }

            v48 = v214 + 1;
            if ((v214 + 1) != v212)
            {
              continue;
            }

            break;
          }

          v14 = v234;
          v9 = v228;
          v35 = v224;
          v18 = v209;
          v212 = [obj countByEnumeratingWithState:&v252 objects:&v263 count:16];
          if (v212)
          {
            continue;
          }

          break;
        }
      }

      v218 = v257;
      v245 = v257;
      v66 = sub_1000082A0();
      v67 = _SC_syslog_os_log_mapping();
      v7 = v232;
      if (__SC_log_enabled())
      {
        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v279 = 0u;
        v278 = 0u;
        v277 = 0u;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        v68 = _sc_log <= 0 ? 2 : 3;
        v269 = 0uLL;
        v270 = 0uLL;
        v69 = os_log_type_enabled(v66, v67) ? v68 : 2;
        *v259 = 138412290;
        *&v259[4] = v218;
        v70 = _os_log_send_and_compose_impl(v69, 0, &v269, 256, &_mh_execute_header, v66, v67, "successfully validated prefixes array %@", v259, 12);
        __SC_log_send2();
        if (v70 != &v269)
        {
          free(v70);
        }
      }

      v34 = 1;
LABEL_85:
      v50 = v220;
      goto LABEL_214;
    }

    v36 = 0;
    while (1)
    {
      v37 = objc_autoreleasePoolPush();
      v262[1] = 0;
      v262[0] = 0;
      LODWORD(v248) = 0;
      *&v252 = 0;
      v38 = [(__CFString *)v18 objectAtIndex:v36];
      TypeID = CFStringGetTypeID();
      if (!v38 || CFGetTypeID(v38) != TypeID)
      {
        v113 = v9;
        v114 = sub_1000082A0();
        v115 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v43 = v37;
          v44 = v18;
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          if (_sc_log <= 0)
          {
            LODWORD(v116) = 2;
          }

          else
          {
            LODWORD(v116) = 3;
          }

          v269 = 0uLL;
          v270 = 0uLL;
          if (os_log_type_enabled(v114, v115))
          {
            v116 = v116;
          }

          else
          {
            v116 = 2;
          }

          v114 = v114;
          v117 = CFStringGetTypeID();
          v118 = CFCopyTypeIDDescription(v117);
          v119 = CFGetTypeID(v38);
          v120 = CFCopyTypeIDDescription(v119);
          v263 = 138412546;
          v264 = v118;
          v265 = 2112;
          v266 = v120;
          v121 = _os_log_send_and_compose_impl(v116, 0, &v269, 256, &_mh_execute_header, v114, v115, "expected '%@' element, got '%@'", &v263, 22);

          __SC_log_send2();
          if (v121 != &v269)
          {
            free(v121);
          }

          v9 = v113;
          goto LABEL_198;
        }

        v9 = v113;
LABEL_200:
        v35 = v224;
        goto LABEL_201;
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v38, @"/");
      theArray = ArrayBySeparatingStrings;
      if (!ArrayBySeparatingStrings || CFArrayGetCount(ArrayBySeparatingStrings) != 2)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v42 = CFStringGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v42)
      {
        v114 = sub_1000082A0();
        v128 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v123 = v37;
          v124 = v18;
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          if (_sc_log <= 0)
          {
            v129 = 2;
          }

          else
          {
            v129 = 3;
          }

          v269 = 0uLL;
          v270 = 0uLL;
          if (os_log_type_enabled(v114, v128))
          {
            v130 = v129;
          }

          else
          {
            v130 = 2;
          }

          LOWORD(v263) = 0;
          v127 = _os_log_send_and_compose_impl(v130, 0, &v269, 256, &_mh_execute_header, v114, v128, "bad prefix addr type", &v263, 2);
          goto LABEL_185;
        }

        goto LABEL_200;
      }

      if ((sub_10000769C(ValueAtIndex, v262) & 1) == 0)
      {
        v114 = sub_1000082A0();
        v135 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v123 = v37;
          v124 = v18;
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          if (_sc_log <= 0)
          {
            v136 = 2;
          }

          else
          {
            v136 = 3;
          }

          v269 = 0uLL;
          v270 = 0uLL;
          if (os_log_type_enabled(v114, v135))
          {
            v137 = v136;
          }

          else
          {
            v137 = 2;
          }

          LOWORD(v263) = 0;
          v127 = _os_log_send_and_compose_impl(v137, 0, &v269, 256, &_mh_execute_header, v114, v135, "bad ipv6 address", &v263, 2);
          goto LABEL_185;
        }

        goto LABEL_200;
      }

      v43 = v37;
      v44 = v18;
      v45 = CFArrayGetValueAtIndex(theArray, 1);
      v46 = CFStringGetTypeID();
      if (!v45 || CFGetTypeID(v45) != v46)
      {
        v114 = sub_1000082A0();
        v131 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          if (_sc_log <= 0)
          {
            v132 = 2;
          }

          else
          {
            v132 = 3;
          }

          v269 = 0uLL;
          v270 = 0uLL;
          if (os_log_type_enabled(v114, v131))
          {
            v133 = v132;
          }

          else
          {
            v133 = 2;
          }

          LOWORD(v263) = 0;
          v134 = _os_log_send_and_compose_impl(v133, 0, &v269, 256, &_mh_execute_header, v114, v131, "bad prefix len type", &v263, 2);
LABEL_196:
          v142 = v134;
          __SC_log_send2();
          if (v142 != &v269)
          {
            free(v142);
          }
        }

LABEL_198:
        v35 = v224;
        v18 = v44;
        v37 = v43;
        v8 = v231;
        goto LABEL_201;
      }

      if (!sub_100007754(v45, &v248) || v248 >= 0x81)
      {
        v114 = sub_1000082A0();
        v139 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          if (_sc_log <= 0)
          {
            v140 = 2;
          }

          else
          {
            v140 = 3;
          }

          v269 = 0uLL;
          v270 = 0uLL;
          if (os_log_type_enabled(v114, v139))
          {
            v141 = v140;
          }

          else
          {
            v141 = 2;
          }

          LOWORD(v263) = 0;
          v134 = _os_log_send_and_compose_impl(v141, 0, &v269, 256, &_mh_execute_header, v114, v139, "bad prefix len value", &v263, 2);
          goto LABEL_196;
        }

        goto LABEL_198;
      }

      v47 = CFStringCreateWithFormat(0, 0, @"%@/%@", ValueAtIndex, v45);
      *&v252 = v47;
      v35 = v224;
      v37 = v43;
      v8 = v231;
      if (!v47)
      {
        goto LABEL_202;
      }

      CFArrayAppendValue(v257, v47);
      [v220 addObject:v38];
      sub_1000075DC(&theArray);
      sub_1000075DC(&v252);
      objc_autoreleasePoolPop(v37);
      if (v216 == ++v36)
      {
        goto LABEL_50;
      }
    }

    v114 = sub_1000082A0();
    v122 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_201;
    }

    v123 = v37;
    v124 = v18;
    v284 = 0u;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v278 = 0u;
    v277 = 0u;
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    if (_sc_log <= 0)
    {
      v125 = 2;
    }

    else
    {
      v125 = 3;
    }

    v269 = 0uLL;
    v270 = 0uLL;
    if (os_log_type_enabled(v114, v122))
    {
      v126 = v125;
    }

    else
    {
      v126 = 2;
    }

    LOWORD(v263) = 0;
    v127 = _os_log_send_and_compose_impl(v126, 0, &v269, 256, &_mh_execute_header, v114, v122, "couldn't split provided string", &v263, 2);
LABEL_185:
    v138 = v127;
    __SC_log_send2();
    if (v138 != &v269)
    {
      free(v138);
    }

    v35 = v224;
    v18 = v124;
    v37 = v123;
LABEL_201:

LABEL_202:
    objc_autoreleasePoolPop(v37);
    sub_1000075DC(&theArray);
    v143 = sub_1000082A0();
    v144 = _SC_syslog_os_log_mapping();
    v7 = v232;
    if (__SC_log_enabled())
    {
      v284 = 0u;
      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      if (_sc_log <= 0)
      {
        v145 = 2;
      }

      else
      {
        v145 = 3;
      }

      v269 = 0uLL;
      v270 = 0uLL;
      if (os_log_type_enabled(v143, v144))
      {
        v146 = v145;
      }

      else
      {
        v146 = 2;
      }

      LOWORD(v263) = 0;
      v147 = _os_log_send_and_compose_impl(v146, 0, &v269, 256, &_mh_execute_header, v143, v144, "failed to parse well-formed prefixes", &v263, 2);
      __SC_log_send2();
      if (v147 != &v269)
      {
        free(v147);
      }

      v35 = v224;
    }

    sub_1000075DC(&v257);
LABEL_213:
    v34 = 0;
    v50 = 0;
LABEL_214:
    if (!v218)
    {
      sub_1000075DC(&v257);
    }

    v219 = v218;
    v11 = v239;
    if ((v34 & 1) == 0)
    {
      v202 = sub_1000082A0();
      v203 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v279 = 0u;
        v278 = 0u;
        v277 = 0u;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        v205 = v18;
        if (_sc_log <= 0)
        {
          v206 = 2;
        }

        else
        {
          v206 = 3;
        }

        v269 = 0uLL;
        v270 = 0uLL;
        if (os_log_type_enabled(v202, v203))
        {
          v207 = v206;
        }

        else
        {
          v207 = 2;
        }

        v263 = 138412546;
        v264 = v35;
        v265 = 2112;
        v266 = v205;
        v208 = _os_log_send_and_compose_impl(v207, 0, &v269, 256, &_mh_execute_header, v202, v203, "failed to validate field '%@' : %@", &v263, 22);
        __SC_log_send2();
        if (v208 != &v269)
        {
          free(v208);
        }
      }

      goto LABEL_322;
    }

LABEL_120:

    objc_autoreleasePoolPop(v13);
    if (++v11 == v237)
    {
      v148 = [&off_10000C768 countByEnumeratingWithState:&v241 objects:v258 count:16];
      a1 = theDict;
      v10 = v218;
      v237 = v148;
      if (!v148)
      {
LABEL_221:
        CFDictionarySetValue(a1, @"identifier", v9);
        CFDictionarySetValue(a1, @"expires", value);
        CFDictionarySetValue(a1, @"prefixes", v10);
        v149 = CFDictionaryGetCount(a1) == 3;
        goto LABEL_323;
      }

      goto LABEL_3;
    }
  }

  v229 = v12;
  v235 = v14;
  v71 = v14;
  v72 = v8;
  v73 = sub_1000082A0();
  v74 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v225 = v72;
    v284 = 0u;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v278 = 0u;
    v277 = 0u;
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    if (_sc_log <= 0)
    {
      LODWORD(v75) = 2;
    }

    else
    {
      LODWORD(v75) = 3;
    }

    v269 = 0uLL;
    v270 = 0uLL;
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v75;
    }

    else
    {
      v75 = 2;
    }

    v76 = v73;
    v77 = objc_opt_class();
    v263 = 138412802;
    v264 = v229;
    v265 = 2112;
    v266 = v71;
    v267 = 2112;
    v268 = v77;
    v78 = v77;
    v79 = _os_log_send_and_compose_impl(v75, 0, &v269, 256, &_mh_execute_header, v76, v74, "validating field '%@' with value '%@' of class '%@'", &v263, 32);

    __SC_log_send2();
    if (v79 != &v269)
    {
      free(v79);
    }

    v72 = v225;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v222 = v13;
    v156 = sub_1000082A0();
    v157 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v284 = 0u;
      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      if (_sc_log <= 0)
      {
        v158 = 2;
      }

      else
      {
        v158 = 3;
      }

      v269 = 0uLL;
      v270 = 0uLL;
      if (os_log_type_enabled(v156, v157))
      {
        v159 = v158;
      }

      else
      {
        v159 = 2;
      }

      v156 = v156;
      v160 = objc_opt_class();
      v263 = 138412290;
      v264 = v160;
      v161 = v160;
      v162 = _os_log_send_and_compose_impl(v159, 0, &v269, 256, &_mh_execute_header, v156, v157, "expected String element, got '%@'", &v263, 12);

      __SC_log_send2();
      v163 = v229;
      if (v162 == &v269)
      {
        goto LABEL_269;
      }

      goto LABEL_256;
    }

    goto LABEL_268;
  }

  v80 = [(__CFString *)v71 lowercaseString];
  v81 = [v72 lowercaseString];
  v82 = objc_msgSend_isEqualToString_(v80);

  if (v82)
  {
    v83 = sub_100007FC8(v71);
    if (v83)
    {
      CFRelease(v83);
      Copy = CFStringCreateCopy(0, v71);
      v247 = Copy;
      if (Copy)
      {
        v9 = Copy;

        v14 = v235;
        v8 = v231;
LABEL_119:

        v7 = v232;
        goto LABEL_120;
      }

      v222 = v13;
      v156 = sub_1000082A0();
      v172 = _SC_syslog_os_log_mapping();
      v163 = v229;
      if (__SC_log_enabled())
      {
        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v279 = 0u;
        v278 = 0u;
        v277 = 0u;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        if (_sc_log <= 0)
        {
          v173 = 2;
        }

        else
        {
          v173 = 3;
        }

        v269 = 0uLL;
        v270 = 0uLL;
        if (os_log_type_enabled(v156, v172))
        {
          v174 = v173;
        }

        else
        {
          v174 = 2;
        }

        LOWORD(v263) = 0;
        v167 = _os_log_send_and_compose_impl(v174, 0, &v269, 256, &_mh_execute_header, v156, v172, "couldn't copy id string", &v263, 2);
        goto LABEL_265;
      }

      goto LABEL_269;
    }

    v222 = v13;
    v156 = sub_1000082A0();
    v168 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v284 = 0u;
      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      if (_sc_log <= 0)
      {
        v169 = 2;
      }

      else
      {
        v169 = 3;
      }

      v269 = 0uLL;
      v270 = 0uLL;
      if (os_log_type_enabled(v156, v168))
      {
        v170 = v169;
      }

      else
      {
        v170 = 2;
      }

      v263 = 138412290;
      v163 = v229;
      v264 = v229;
      v162 = _os_log_send_and_compose_impl(v170, 0, &v269, 256, &_mh_execute_header, v156, v168, "couldn't validate PvD '%@' as an FQDN", &v263, 12);
      __SC_log_send2();
      if (v162 == &v269)
      {
        goto LABEL_269;
      }

LABEL_256:
      v171 = v162;
LABEL_267:
      free(v171);
      goto LABEL_269;
    }

LABEL_268:
    v163 = v229;
    goto LABEL_269;
  }

  v222 = v13;
  v156 = sub_1000082A0();
  v164 = _SC_syslog_os_log_mapping();
  v163 = v229;
  if (__SC_log_enabled())
  {
    v284 = 0u;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v278 = 0u;
    v277 = 0u;
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    v165 = _sc_log <= 0 ? 2 : 3;
    v269 = 0uLL;
    v270 = 0uLL;
    v166 = os_log_type_enabled(v156, v164) ? v165 : 2;
    LOWORD(v263) = 0;
    v167 = _os_log_send_and_compose_impl(v166, 0, &v269, 256, &_mh_execute_header, v156, v164, "retrieved ID must be an equal string with RA's PvD ID", &v263, 2);
LABEL_265:
    v175 = v167;
    __SC_log_send2();
    if (v175 != &v269)
    {
      v171 = v175;
      goto LABEL_267;
    }
  }

LABEL_269:

  v202 = sub_1000082A0();
  v176 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v284 = 0u;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v278 = 0u;
    v277 = 0u;
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    if (_sc_log <= 0)
    {
      v177 = 2;
    }

    else
    {
      v177 = 3;
    }

    v269 = 0uLL;
    v270 = 0uLL;
    if (os_log_type_enabled(v202, v176))
    {
      v178 = v177;
    }

    else
    {
      v178 = 2;
    }

    v263 = 138412546;
    v264 = v163;
    v265 = 2112;
    v266 = v71;
    v179 = _os_log_send_and_compose_impl(v178, 0, &v269, 256, &_mh_execute_header, v202, v176, "failed to validate field '%@' : %@", &v263, 22);
    __SC_log_send2();
    v14 = v235;
    v8 = v231;
    if (v179 != &v269)
    {
      free(v179);
    }

    v7 = v232;
    v13 = v222;
  }

  else
  {
    v13 = v222;
    v14 = v235;
    v8 = v231;
    v7 = v232;
  }

LABEL_322:

  objc_autoreleasePoolPop(v13);
  v149 = 0;
LABEL_323:
  sub_1000075DC(&v247);
  sub_1000075DC(&StringWithDate);
  sub_1000075DC(&v245);

  return v149;
}

uint64_t sub_100006AE8(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || [v3 count] > 0xA)
  {
LABEL_46:
    v5 = sub_1000082A0();
    v27 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
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
      v49 = 0u;
      v50 = 0u;
      if (_sc_log <= 0)
      {
        v28 = 2;
      }

      else
      {
        v28 = 3;
      }

      v29 = os_log_type_enabled(v5, v27);
      v41 = 136315650;
      v42 = "enforce_proper_boundaries";
      if (v29)
      {
        v30 = v28;
      }

      else
      {
        v30 = 2;
      }

      v43 = 1024;
      v44 = a2;
      v45 = 2112;
      v46 = v4;
      v31 = _os_log_send_and_compose_impl(v30, 0, &v49, 256, &_mh_execute_header, v5, v27, "%s: failed boundary checks at nesting level %d for elements array %@", &v41, 28);
      __SC_log_send2();
      if (v31 != &v49)
      {
        free(v31);
      }
    }

    v10 = 0;
    goto LABEL_56;
  }

  if (a2 == 2)
  {
    v39 = 0uLL;
    v40 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v38;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (!sub_100006FF4(*(*(&v37 + 1) + 8 * v9)))
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v37 objects:v48 count:16];
          v10 = 1;
          if (v7)
          {
            goto LABEL_6;
          }

          goto LABEL_56;
        }
      }

LABEL_45:

      goto LABEL_46;
    }

LABEL_33:
    v10 = 1;
    goto LABEL_56;
  }

  v35 = 0uLL;
  v36 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  v5 = v4;
  v11 = [v5 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = v11;
  v13 = *v34;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v33 + 1) + 8 * i);
      if (sub_100006FF4(v15))
      {
        v16 = 0;
        goto LABEL_30;
      }

      v16 = v15;
      if (!v16 || (TypeID = CFArrayGetTypeID(), CFGetTypeID(v16) != TypeID) && (v18 = CFDictionaryGetTypeID(), CFGetTypeID(v16) != v18))
      {
        v22 = sub_1000082A0();
        v23 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
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
          v49 = 0u;
          v50 = 0u;
          v24 = _sc_log <= 0 ? 2 : 3;
          v25 = os_log_type_enabled(v22, v23) ? v24 : 2;
          v41 = 138412290;
          v42 = v16;
          v26 = _os_log_send_and_compose_impl(v25, 0, &v49, 256, &_mh_execute_header, v22, v23, "element is not a cfcollection: %@", &v41, 12);
          __SC_log_send2();
          if (v26 != &v49)
          {
            free(v26);
          }
        }

LABEL_44:
        goto LABEL_45;
      }

      v19 = CFArrayGetTypeID();
      if (CFGetTypeID(v16) == v19)
      {
        v20 = v16;
LABEL_27:
        v16 = v20;
        goto LABEL_29;
      }

      v21 = CFDictionaryGetTypeID();
      if (CFGetTypeID(v16) == v21)
      {
        v20 = [v16 allValues];
        goto LABEL_27;
      }

      v16 = 0;
LABEL_29:
      if (!sub_100006AE8(v16, a2 + 1))
      {
        goto LABEL_44;
      }

LABEL_30:
    }

    v12 = [v5 countByEnumeratingWithState:&v33 objects:v47 count:16];
    v10 = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_56:

  return v10;
}

uint64_t sub_100006FF4(void *a1)
{
  v1 = a1;
  if (v1 && ((TypeID = CFBooleanGetTypeID(), CFGetTypeID(v1) == TypeID) || (v3 = CFNumberGetTypeID(), CFGetTypeID(v1) == v3) || (v4 = CFStringGetTypeID(), CFGetTypeID(v1) == v4) || (v5 = CFDateGetTypeID(), CFGetTypeID(v1) == v5) || (v6 = CFDataGetTypeID(), CFGetTypeID(v1) == v6)))
  {
    v7 = 1;
  }

  else
  {
    v8 = sub_1000082A0();
    v9 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v16, 0, sizeof(v16));
      if (_sc_log <= 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }

      if (os_log_type_enabled(v8, v9))
      {
        v11 = v10;
      }

      else
      {
        v11 = 2;
      }

      v14 = 138412290;
      v15 = v1;
      v12 = _os_log_send_and_compose_impl(v11, 0, v16, 256, &_mh_execute_header, v8, v9, "element is not a cfprimitive: %@", &v14, 12);
      __SC_log_send2();
      if (v12 != v16)
      {
        free(v12);
      }
    }

    v7 = 0;
  }

  return v7;
}

int main(int argc, const char **argv, const char **envp)
{
  if (geteuid() || !seteuid(0xFFFFFFFE))
  {
    v3 = objc_opt_new();
    v4 = +[NSXPCListener serviceListener];
    [v4 setDelegate:v3];
    [v4 activate];
  }

  else
  {
    v3 = sub_1000082A0();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v11, 0, sizeof(v11));
      if (_sc_log <= 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      if (os_log_type_enabled(v3, v6))
      {
        v8 = v7;
      }

      else
      {
        v8 = 2;
      }

      v10[0] = 0;
      v9 = _os_log_send_and_compose_impl(v8, 0, v11, 256, &_mh_execute_header, v3, v6, "couldn't deescalate user before launching", v10, 2);
      __SC_log_send2();
      if (v9 != v11)
      {
        free(v9);
      }
    }
  }

  return 0;
}

void sub_1000075DC(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_100007614(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
{
  usedBufLen = 0;
  v11.length = CFStringGetLength(a1);
  v11.location = 0;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, a4, a2, a3 - 1, &usedBufLen);
  v8 = usedBufLen;
  if (a2)
  {
    a2[usedBufLen] = 0;
  }

  return (v8 + 1);
}

uint64_t sub_10000769C(const __CFString *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_pton(30, buffer, a2) == 1;
  }

  return result;
}

uint64_t sub_100007754(const __CFString *a1, _DWORD *a2)
{
  sub_100007614(a1, __str, 64, 0);
  v3 = strtoul(__str, 0, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  if (*__error() == 34)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

UInt8 *sub_1000077F4(const __CFString *a1, CFRange a2, CFStringEncoding a3)
{
  length = a2.length;
  location = a2.location;
  maxBufLen = 0;
  CFStringGetBytes(a1, a2, a3, 0, 0, 0, 0, &maxBufLen);
  if (!maxBufLen)
  {
    return 0;
  }

  v7 = malloc_type_malloc(maxBufLen + 1, 0x6F79A892uLL);
  v10.location = location;
  v10.length = length;
  CFStringGetBytes(a1, v10, a3, 0, 0, v7, maxBufLen, &maxBufLen);
  v7[maxBufLen] = 0;
  return v7;
}

UInt8 *sub_1000078AC(const __CFString *a1, CFStringEncoding a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return sub_1000077F4(a1, v4, a2);
}

void *sub_1000078F4(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, char a5, char a6)
{
  v6 = a4;
  v7 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

  v8 = a1;
  v9 = *a4;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (!a3)
  {
    *&v74 = 0;
    v73 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v9 = 128;
    v10 = &v65;
    v65 = 0uLL;
    v66 = 0uLL;
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_87;
  }

  v73 = 0uLL;
  *&v74 = 0;
  v71 = 0uLL;
  v72 = 0uLL;
  v69 = 0uLL;
  v70 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v10 = a3;
  LOBYTE(v73) = 1;
LABEL_7:
  *(&v73 + 1) = v10;
  DWORD1(v74) = v9;
  *(&v74 + 1) = 0;
  *&v75 = 0;
  BYTE8(v75) = a5;
  if (a2 >= 1)
  {
    v12 = 0;
    v57 = a2;
    while (1)
    {
      v13 = *(v8 + 8 * v12);
      v61 = v74;
      v14 = strlen(v13);
      v15 = malloc_type_malloc(v14 + 26, 0x10300409B68AA8EuLL);
      v16 = malloc_type_malloc(0x30uLL, 0x101004044458BAAuLL);
      if (v16)
      {
        *(v16 + 28) = 0u;
        *v16 = 0u;
        v16[1] = 0u;
        *(v16 + 11) = 8;
        *(v16 + 4) = v16;
      }

      *v15 = v16;
      *(v15 + 1) = v15 + 24;
      if ((v14 & 0x80000000) == 0)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = v14 & 0x7FFFFFFF;
        v23 = (v14 + 1);
        while (1)
        {
          if (v17 == v22 || (v24 = v13[v17], v24 == 46))
          {
            if (!v21)
            {
              goto LABEL_22;
            }

            if (v21 > 63)
            {
              v53 = (v8 + 8 * v12);
              fprintf(__stderrp, "label length %d > %d\n", v21, 63);
              sub_100008244(v15);
              free(v15);
              if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
              {
                fprintf(__stderrp, "trying to set used to %d\n", v61);
              }

              else
              {
                LODWORD(v74) = v61;
              }

              goto LABEL_82;
            }

            sub_1000080B8(*v15, v19);
            *(*(v15 + 1) + v19) = v21;
            v20 += v21 + 1;
            v25 = v17 + 1;
            v19 = v17 + 1;
            v21 = 0;
          }

          else
          {
            *(*(v15 + 1) + v17 + 1) = v24;
            ++v21;
            v25 = v17 + 1;
          }

          v18 = v17 >= v22;
          v17 = v25;
          if (v25 == v23)
          {
            goto LABEL_22;
          }
        }
      }

      v20 = 0;
      v18 = 1;
LABEL_22:
      v59 = v12;
      if ((a6 & 1) != 0 && ((a6 & 2) == 0 || v18))
      {
        *(v15 + 4) = v20;
      }

      else
      {
        *(v15 + 4) = v20 + 1;
        *(*(v15 + 1) + v20) = 0;
      }

      if (BYTE8(v75) == 1)
      {
        break;
      }

      if ((sub_100008154(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_68:
      sub_100008244(v15);
      free(v15);
      v8 = a1;
      v12 = v59 + 1;
      if (v59 + 1 == v57)
      {
        v11 = v74;
        v7 = a3;
        v6 = a4;
        goto LABEL_71;
      }
    }

    v63 = v75;
    if (v75 < 1)
    {
      v28 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v62 = *(&v74 + 1);
      v29 = *(&v73 + 1);
      do
      {
        v30 = *(v62 + 8 * v26);
        if (!v30)
        {
          break;
        }

        v31 = 0;
        v32 = *(v30 + 40);
        v33 = *v15;
        v34 = *(*v15 + 40);
        do
        {
          v35 = v31;
          if (v32 < 1)
          {
            break;
          }

          if (v34 < 1)
          {
            break;
          }

          v36 = (v29 + *(*(v30 + 32) + 4 * v32 - 4));
          v37 = *v36;
          v38 = (*(v15 + 1) + *(v33[4] + 4 * v34 - 4));
          if (v37 != *v38)
          {
            break;
          }

          v39 = memcmp(v36 + 1, v38 + 1, v37);
          v31 = v35 + 1;
          --v32;
          --v34;
        }

        while (!v39);
        v40 = v35 > v28;
        if (v35 > v28)
        {
          v28 = v35;
        }

        if (v40)
        {
          v27 = v30;
        }

        ++v26;
      }

      while (v26 != v63);
      if (v27)
      {
        v41 = 0;
        v42 = *(v27 + 40) - v28;
LABEL_47:
        v43 = *v15;
        v44 = *(*v15 + 40);
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = v44 - v28;
          do
          {
            if (v45 >= v46)
            {
              v49 = *(*(v27 + 32) + 4 * v42);
              if (v46 == v45)
              {
                __src = bswap32(v49 | 0xC000) >> 16;
                if (!sub_100008154(&v65, &__src, 2))
                {
                  goto LABEL_76;
                }
              }

              ++v42;
              v47 = *v15;
            }

            else
            {
              v47 = *v15;
              v48 = *(*(*v15 + 32) + 4 * v45);
              if ((v41 & 1) == 0)
              {
                if (!sub_100008154(&v65, (*(v15 + 1) + v48), *(*(v15 + 1) + v48) + 1))
                {
                  goto LABEL_76;
                }

                v47 = *v15;
              }

              v49 = v48 + v61;
            }

            if (v45 > *(v47 + 10))
            {
              fprintf(__stderrp, "attempt to set offset 0x%x at index %d\n", v49, v45);
            }

            *(v47[4] + 4 * v45++) = v49;
          }

          while (v44 != v45);
          v43 = *v15;
        }

        v50 = SDWORD1(v75);
        if (DWORD1(v75) == v75)
        {
          if (DWORD1(v75))
          {
            DWORD1(v75) *= 2;
            v51 = reallocf(*(&v74 + 1), 16 * v50);
          }

          else
          {
            DWORD1(v75) = 8;
            v51 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
          }

          *(&v74 + 1) = v51;
        }

        else
        {
          v51 = *(&v74 + 1);
        }

        v52 = v75;
        LODWORD(v75) = v75 + 1;
        v51[v52] = v43;
        *v15 = 0;
        goto LABEL_68;
      }
    }

    if ((sub_100008154(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
    {
LABEL_76:
      v53 = (a1 + 8 * v59);
      if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
      {
        fprintf(__stderrp, "trying to set used to %d\n", v61);
      }

      else
      {
        LODWORD(v74) = v61;
      }

      sub_100008244(v15);
      free(v15);
LABEL_82:
      v6 = a4;
      fprintf(__stderrp, "failed to add %s\n", *v53);
      if (a3)
      {
        v11 = v74;
      }

      else
      {
        v11 = 0;
      }

      v7 = 0;
      goto LABEL_86;
    }

    v27 = 0;
    v42 = 0;
    v41 = 1;
    goto LABEL_47;
  }

  v11 = 0;
LABEL_71:
  if (!v7)
  {
    v7 = malloc_type_malloc(v11, 0x7FF68011uLL);
    memcpy(v7, *(&v73 + 1), v11);
  }

LABEL_86:
  sub_10000800C(&v65);
LABEL_87:
  *v6 = v11;
  return v7;
}

UInt8 *sub_100007F58(uint64_t a1)
{
  *&length[1] = a1;
  length[0] = 0;
  result = sub_1000078F4(&length[1], 1u, 0, length, 0, 3);
  if (result)
  {
    v2 = result;
    v3 = CFDataCreate(0, result, length[0]);
    free(v2);
    return v3;
  }

  return result;
}

UInt8 *sub_100007FC8(const __CFString *a1)
{
  result = sub_1000078AC(a1, 0x8000100u);
  if (result)
  {
    v2 = result;
    v3 = sub_100007F58(result);
    free(v2);
    return v3;
  }

  return result;
}

void sub_10000800C(_OWORD *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v2 = *(a1 + 17);
    if (v2 && v2 != a1)
    {
      free(v2);
    }
  }

  *(a1 + 18) = 0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v5 = a1 + 19;
  v4 = *(a1 + 19);
  if (v4)
  {
    if (*(a1 + 40) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        sub_100008244((*(a1 + 19) + v6));
        ++v7;
        v6 += 8;
      }

      while (v7 < *(a1 + 40));
      v4 = *v5;
    }

    free(v4);
  }

  *v5 = 0;
  *(a1 + 20) = 0;
}

int *sub_1000080B8(int *result, size_t size)
{
  v2 = size;
  v3 = result;
  v4 = result[11];
  if (v4 == result[10])
  {
    result[11] = 2 * v4;
    v5 = *(result + 4);
    v6 = 8 * v4;
    if (v5 == v3)
    {
      v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
      *(v3 + 4) = v7;
      result = memmove(v7, v3, 4 * v3[10]);
    }

    else
    {
      result = reallocf(v5, v6);
      *(v3 + 4) = result;
    }
  }

  v8 = *(v3 + 4);
  v9 = v3[10];
  v3[10] = v9 + 1;
  *(v8 + 4 * v9) = v2;
  return result;
}

uint64_t sub_100008154(uint64_t a1, void *__src, int a3)
{
  v6 = *(a1 + 148);
  v7 = v6 - *(a1 + 144);
  if (v7 < a3)
  {
    if (*(a1 + 128) == 1)
    {
      fprintf(__stderrp, "user-supplied buffer failed to add data with length %d (> %d)\n", a3, v7);
      return 0;
    }

    if (a3 <= 128)
    {
      v9 = 128;
    }

    else
    {
      v9 = a3;
    }

    v10 = v6 + v9;
    *(a1 + 148) = v10;
    v11 = *(a1 + 136);
    if (v11 == a1)
    {
      v12 = malloc_type_malloc(v10, 0xDF09CD32uLL);
      *(a1 + 136) = v12;
      memcpy(v12, a1, *(a1 + 144));
    }

    else
    {
      *(a1 + 136) = reallocf(v11, v10);
    }
  }

  memcpy((*(a1 + 136) + *(a1 + 144)), __src, a3);
  *(a1 + 144) += a3;
  return 1;
}

void sub_100008244(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[4];
      if (v3)
      {
        v4 = v3 == v2;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        free(v3);
      }

      free(v2);
      *a1 = 0;
    }
  }
}