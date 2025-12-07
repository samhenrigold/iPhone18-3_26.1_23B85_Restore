@interface IPHPvDInfoRequestServer
- (IPHPvDInfoRequestServer)init;
- (__CFDictionary)createValidPvDAdditionalInfoDict:(id)dict withID:(id)d andPrefixes:(id)prefixes;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)cancelRequest;
- (void)fetchPvDAdditionalInformationWithPvDID:(id)d prefixesArray:(id)array bindToInterface:(id)interface andCompletionHandler:(id)handler;
- (void)scheduleParsingEventAbort;
- (void)scheduleParsingEventCompleteWithParsedJSON:(id)n pvdID:(id)d ipv6Prefixes:(id)prefixes;
@end

@implementation IPHPvDInfoRequestServer

- (IPHPvDInfoRequestServer)init
{
  v4.receiver = self;
  v4.super_class = IPHPvDInfoRequestServer;
  v2 = [(IPHPvDInfoRequestServer *)&v4 init];
  if (v2)
  {
    sub_100000DD8("Helper");
    [(IPHPvDInfoRequestServer *)v2 setValidFetch:1];
  }

  return v2;
}

- (void)cancelRequest
{
  urlSession = [(IPHPvDInfoRequestServer *)self urlSession];

  if (urlSession)
  {
    v4 = sub_1000082A0();
    v5 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v11, 0, sizeof(v11));
      if (_sc_log <= 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      if (os_log_type_enabled(v4, v5))
      {
        v7 = v6;
      }

      else
      {
        v7 = 2;
      }

      v10[0] = 0;
      v8 = _os_log_send_and_compose_impl(v7, 0, v11, 256, &_mh_execute_header, v4, v5, "cancelling in-flight URLSession and tasks", v10, 2);
      __SC_log_send2();
      if (v8 != v11)
      {
        free(v8);
      }
    }

    urlSession2 = [(IPHPvDInfoRequestServer *)self urlSession];
    [urlSession2 invalidateAndCancel];

    [(IPHPvDInfoRequestServer *)self setUrlSession:0];
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_1000082A0();
  v8 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = _sc_log <= 0 ? 2 : 3;
    v18 = 0uLL;
    v19 = 0uLL;
    v10 = os_log_type_enabled(v7, v8) ? v9 : 2;
    v17[0] = 0;
    v11 = _os_log_send_and_compose_impl(v10, 0, &v18, 256, &_mh_execute_header, v7, v8, "entered authentication challenge callback", v17, 2);
    __SC_log_send2();
    if (v11 != &v18)
    {
      free(v11);
    }
  }

  handlerCopy[2](handlerCopy, 1, 0);
  v12 = sub_1000082A0();
  v13 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    if (_sc_log <= 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    v18 = 0uLL;
    v19 = 0uLL;
    if (os_log_type_enabled(v12, v13))
    {
      v15 = v14;
    }

    else
    {
      v15 = 2;
    }

    v17[0] = 0;
    v16 = _os_log_send_and_compose_impl(v15, 0, &v18, 256, &_mh_execute_header, v12, v13, "finished authentication challenge callback", v17, 2);
    __SC_log_send2();
    if (v16 != &v18)
    {
      free(v16);
    }
  }
}

- (void)fetchPvDAdditionalInformationWithPvDID:(id)d prefixesArray:(id)array bindToInterface:(id)interface andCompletionHandler:(id)handler
{
  dCopy = d;
  arrayCopy = array;
  interfaceCopy = interface;
  [(IPHPvDInfoRequestServer *)self setXpcClientCompletionHandler:handler];
  v13 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v14 = [NSURLSession sessionWithConfiguration:v13 delegate:self delegateQueue:0];
  [(IPHPvDInfoRequestServer *)self setUrlSession:v14];

  urlSession = [(IPHPvDInfoRequestServer *)self urlSession];

  if (urlSession)
  {
    v16 = [NSString stringWithFormat:@"%s%@%s", "https://", dCopy, "/.well-known/pvd"];
    v17 = [NSURL URLWithString:v16];
    v18 = [[NSMutableURLRequest alloc] initWithURL:v17];
    [v18 setHTTPMethod:@"GET"];
    [v18 setValue:@"application/pvd+json" forHTTPHeaderField:@"Content-Type"];
    [v18 setValue:@"application/pvd+json" forHTTPHeaderField:@"Accept"];
    [v18 setBoundInterfaceIdentifier:interfaceCopy];
    urlSession2 = [(IPHPvDInfoRequestServer *)self urlSession];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100001750;
    v35[3] = &unk_10000C3D0;
    v35[4] = self;
    v20 = v16;
    v36 = v20;
    v37 = dCopy;
    v38 = arrayCopy;
    v21 = [urlSession2 dataTaskWithRequest:v18 completionHandler:v35];

    v22 = sub_1000082A0();
    v23 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v34 = v17;
      v24 = dCopy;
      v25 = interfaceCopy;
      v26 = arrayCopy;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
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
      if (_sc_log <= 0)
      {
        v27 = 2;
      }

      else
      {
        v27 = 3;
      }

      if (os_log_type_enabled(v22, v23))
      {
        v28 = v27;
      }

      else
      {
        v28 = 2;
      }

      v39 = 138412290;
      v40 = v20;
      v29 = _os_log_send_and_compose_impl(v28, 0, &v41, 256, &_mh_execute_header, v22, v23, "fetching PvD Additional Info from URL %@", &v39, 12);
      __SC_log_send2();
      if (v29 != &v41)
      {
        free(v29);
      }

      arrayCopy = v26;
      interfaceCopy = v25;
      dCopy = v24;
      v17 = v34;
    }

    [v21 resume];
  }

  else
  {
    v20 = sub_1000082A0();
    v30 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
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
      v31 = _sc_log <= 0 ? 2 : 3;
      v32 = os_log_type_enabled(v20, v30) ? v31 : 2;
      LOWORD(v39) = 0;
      v33 = _os_log_send_and_compose_impl(v32, 0, &v41, 256, &_mh_execute_header, v20, v30, "failed to create an NSURLSession", &v39, 2);
      __SC_log_send2();
      if (v33 != &v41)
      {
        free(v33);
      }
    }
  }
}

- (void)scheduleParsingEventCompleteWithParsedJSON:(id)n pvdID:(id)d ipv6Prefixes:(id)prefixes
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002298;
  v10[3] = &unk_10000C3F8;
  v10[4] = self;
  nCopy = n;
  dCopy = d;
  prefixesCopy = prefixes;
  v7 = prefixesCopy;
  v8 = dCopy;
  v9 = nCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)scheduleParsingEventAbort
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002654;
  block[3] = &unk_10000C420;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (__CFDictionary)createValidPvDAdditionalInfoDict:(id)dict withID:(id)d andPrefixes:(id)prefixes
{
  dictCopy = dict;
  dCopy = d;
  v186 = dictCopy;
  prefixesCopy = prefixes;
  if (!dictCopy)
  {
    v163 = sub_1000082A0();
    v164 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v233 = 0u;
      v234 = 0u;
      if (_sc_log <= 0)
      {
        v165 = 2;
      }

      else
      {
        v165 = 3;
      }

      if (os_log_type_enabled(v163, v164))
      {
        v166 = v165;
      }

      else
      {
        v166 = 2;
      }

      LOWORD(v224) = 0;
      v167 = _os_log_send_and_compose_impl(v166, 0, &v233, 256, &_mh_execute_header, v163, v164, "can't create valid info dict from empty JSON", &v224, 2);
LABEL_284:
      v171 = v167;
      __SC_log_send2();
      if (v171 != &v233)
      {
        free(v171);
      }
    }

LABEL_286:

    theDict = 0;
    goto LABEL_287;
  }

  Mutable = CFDictionaryCreateMutable(0, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v163 = sub_1000082A0();
    v168 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v233 = 0u;
      v234 = 0u;
      if (_sc_log <= 0)
      {
        v169 = 2;
      }

      else
      {
        v169 = 3;
      }

      if (os_log_type_enabled(v163, v168))
      {
        v170 = v169;
      }

      else
      {
        v170 = 2;
      }

      LOWORD(v224) = 0;
      v167 = _os_log_send_and_compose_impl(v170, 0, &v233, 256, &_mh_execute_header, v163, v168, "failed to create additional info CFDictionary", &v224, 2);
      goto LABEL_284;
    }

    goto LABEL_286;
  }

  theDict = Mutable;
  if (!sub_1000046E4(Mutable, dictCopy, dCopy, prefixesCopy))
  {
LABEL_287:
    allValues = 0;
LABEL_288:
    v172 = sub_1000082A0();
    v173 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      selfCopy = self;
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v233 = 0u;
      v234 = 0u;
      if (_sc_log <= 0)
      {
        v175 = 2;
      }

      else
      {
        v175 = 3;
      }

      v176 = v172;
      if (os_log_type_enabled(v176, v173))
      {
        v177 = v175;
      }

      else
      {
        v177 = 2;
      }

      LOWORD(v224) = 0;
      v178 = _os_log_send_and_compose_impl(v177, 0, &v233, 256, &_mh_execute_header, v176, v173, "validation failed, couldn't create PvD Additional Info dictionary", &v224, 2);

      __SC_log_send2();
      if (v178 != &v233)
      {
        free(v178);
      }

      self = selfCopy;
    }

    [(IPHPvDInfoRequestServer *)self setValidFetch:0];
    goto LABEL_299;
  }

  v10 = dictCopy;
  v216 = 0;
  v211 = 0;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v11 = [&off_10000C780 countByEnumeratingWithState:&v220 objects:&v224 count:16];
  selfCopy2 = self;
  if (!v11)
  {
    goto LABEL_146;
  }

  v12 = v11;
  value = 0;
  v13 = 0;
  v14 = *v221;
  v199 = v10;
  v201 = *v221;
  do
  {
    v15 = 0;
    v203 = v12;
    do
    {
      if (*v221 != v14)
      {
        objc_enumerationMutation(&off_10000C780);
      }

      v16 = *(*(&v220 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      v18 = [v10 valueForKey:v16];
      if (v18)
      {
        if (objc_msgSend_isEqualToString_(v16))
        {
          v19 = v13 == 0;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v33 = v16;
          v34 = v18;
          *&v212 = 0;
          theArraya = v17;
          if ([v34 count] > 9)
          {
            v35 = 10;
          }

          else
          {
            v35 = [v34 count];
          }

          v36 = sub_1000082A0();
          v37 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            LODWORD(v38) = _sc_log <= 0 ? 2 : 3;
            v233 = 0uLL;
            v234 = 0uLL;
            v38 = os_log_type_enabled(v36, v37) ? v38 : 2;
            v39 = v36;
            v40 = objc_opt_class();
            LODWORD(v230[0]) = 138412802;
            *(v230 + 4) = v33;
            WORD2(v230[1]) = 2112;
            *(&v230[1] + 6) = v34;
            HIWORD(v230[2]) = 2112;
            v230[3] = v40;
            v41 = v40;
            v42 = _os_log_send_and_compose_impl(v38, 0, &v233, 256, &_mh_execute_header, v39, v37, "validating field '%@' with value '%@' of class '%@'", v230, 32);

            __SC_log_send2();
            if (v42 != &v233)
            {
              free(v42);
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v54 = sub_1000082A0();
            v55 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v247 = 0u;
              v248 = 0u;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v241 = 0u;
              v242 = 0u;
              v239 = 0u;
              v240 = 0u;
              v237 = 0u;
              v238 = 0u;
              v235 = 0u;
              v236 = 0u;
              v56 = _sc_log <= 0 ? 2 : 3;
              v233 = 0uLL;
              v234 = 0uLL;
              v57 = os_log_type_enabled(v54, v55) ? v56 : 2;
              LOWORD(v230[0]) = 0;
              v58 = _os_log_send_and_compose_impl(v57, 0, &v233, 256, &_mh_execute_header, v54, v55, "expected JSON value of Array type", v230, 2);
              __SC_log_send2();
              if (v58 != &v233)
              {
                free(v58);
              }
            }

            v13 = 0;
            v43 = 0;
            goto LABEL_115;
          }

          v43 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
          *&v212 = v43;
          if (v35)
          {
            v44 = 0;
            while (1)
            {
              v45 = objc_autoreleasePoolPush();
              *v217 = 0;
              v249 = 0;
              v46 = [v34 objectAtIndex:v44];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v72 = sub_1000082A0();
                v73 = _SC_syslog_os_log_mapping();
                if (!__SC_log_enabled())
                {
                  goto LABEL_113;
                }

                v247 = 0u;
                v248 = 0u;
                v245 = 0u;
                v246 = 0u;
                v243 = 0u;
                v244 = 0u;
                v241 = 0u;
                v242 = 0u;
                v239 = 0u;
                v240 = 0u;
                v237 = 0u;
                v238 = 0u;
                v235 = 0u;
                v236 = 0u;
                if (_sc_log <= 0)
                {
                  LODWORD(v74) = 2;
                }

                else
                {
                  LODWORD(v74) = 3;
                }

                v233 = 0uLL;
                v234 = 0uLL;
                if (os_log_type_enabled(v72, v73))
                {
                  v74 = v74;
                }

                else
                {
                  v74 = 2;
                }

                v72 = v72;
                v75 = objc_opt_class();
                LODWORD(v230[0]) = 138412290;
                *(v230 + 4) = v75;
                v192 = v75;
                v76 = _os_log_send_and_compose_impl(v74, 0, &v233, 256, &_mh_execute_header, v72, v73, "expected String element, got '%@'", v230, 12);

                goto LABEL_111;
              }

              *v217 = sub_100007FC8(v46);
              if (!*v217)
              {
                break;
              }

              sub_1000075DC(v217);
              Copy = CFStringCreateCopy(0, v46);
              v249 = Copy;
              if (!Copy)
              {
                goto LABEL_114;
              }

              CFArrayAppendValue(v43, Copy);
              sub_1000075DC(&v249);

              objc_autoreleasePoolPop(v45);
              if (v35 == ++v44)
              {
                goto LABEL_52;
              }
            }

            v72 = sub_1000082A0();
            v77 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_113;
            }

            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            if (_sc_log <= 0)
            {
              v78 = 2;
            }

            else
            {
              v78 = 3;
            }

            v197 = v78;
            v233 = 0uLL;
            v234 = 0uLL;
            if (os_log_type_enabled(v72, v77))
            {
              v79 = v197;
            }

            else
            {
              v79 = 2;
            }

            LODWORD(v230[0]) = 138412290;
            *(v230 + 4) = v46;
            v76 = _os_log_send_and_compose_impl(v79, 0, &v233, 256, &_mh_execute_header, v72, v77, "couldn't validate DNS Zone '%@' as an FQDN", v230, 12);
LABEL_111:
            __SC_log_send2();
            if (v76 != &v233)
            {
              free(v76);
            }

LABEL_113:

LABEL_114:
            objc_autoreleasePoolPop(v45);
            v13 = 0;
LABEL_115:
            v53 = 0;
          }

          else
          {
LABEL_52:
            v216 = v43;
            v48 = sub_1000082A0();
            v49 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v247 = 0u;
              v248 = 0u;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v241 = 0u;
              v242 = 0u;
              v239 = 0u;
              v240 = 0u;
              v237 = 0u;
              v238 = 0u;
              v235 = 0u;
              v236 = 0u;
              v50 = _sc_log <= 0 ? 2 : 3;
              v233 = 0uLL;
              v234 = 0uLL;
              v51 = os_log_type_enabled(v48, v49) ? v50 : 2;
              LODWORD(v230[0]) = 138412290;
              *(v230 + 4) = v43;
              v52 = _os_log_send_and_compose_impl(v51, 0, &v233, 256, &_mh_execute_header, v48, v49, "successfully validated DNS Zones array %@", v230, 12);
              __SC_log_send2();
              if (v52 != &v233)
              {
                free(v52);
              }
            }

            v53 = 1;
            value = v43;
            v13 = v43;
          }

          v80 = sub_1000082A0();
          v81 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            v82 = _sc_log <= 0 ? 2 : 3;
            v233 = 0uLL;
            v234 = 0uLL;
            v83 = os_log_type_enabled(v80, v81) ? v82 : 2;
            LODWORD(v230[0]) = 138412290;
            *(v230 + 4) = v33;
            v84 = _os_log_send_and_compose_impl(v83, 0, &v233, 256, &_mh_execute_header, v80, v81, "failed to validate field '%@'", v230, 12);
            __SC_log_send2();
            if (v84 != &v233)
            {
              free(v84);
            }
          }

          if (!v43)
          {
            sub_1000075DC(&v212);
          }

          v17 = theArraya;
          if (v53)
          {
            v10 = v199;
            v14 = v201;
            v12 = v203;
            goto LABEL_142;
          }

          v21 = sub_1000082A0();
          v85 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v196 = v13;
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            if (_sc_log <= 0)
            {
              v86 = 2;
            }

            else
            {
              v86 = 3;
            }

            v233 = 0uLL;
            v234 = 0uLL;
            v87 = os_log_type_enabled(v21, v85);
            LODWORD(v230[0]) = 138412546;
            if (v87)
            {
              v88 = v86;
            }

            else
            {
              v88 = 2;
            }

            *(v230 + 4) = v33;
            WORD2(v230[1]) = 2112;
            *(&v230[1] + 6) = v34;
            v89 = _os_log_send_and_compose_impl(v88, 0, &v233, 256, &_mh_execute_header, v21, v85, "failed to validate field '%@' : %@", v230, 22);
            __SC_log_send2();
            if (v89 != &v233)
            {
              free(v89);
            }

            v10 = v199;
            v14 = v201;
            v12 = v203;
            v17 = theArraya;
LABEL_139:
            v13 = v196;
          }

          else
          {
            v10 = v199;
            v14 = v201;
            v12 = v203;
          }

LABEL_141:

          goto LABEL_142;
        }

        if (objc_msgSend_isEqualToString_(v16) && v211 == 0)
        {
          theArray = v17;
          v21 = v16;
          v22 = v18;
          v23 = sub_1000082A0();
          v24 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            if (_sc_log <= 0)
            {
              LODWORD(v25) = 2;
            }

            else
            {
              LODWORD(v25) = 3;
            }

            v233 = 0uLL;
            v234 = 0uLL;
            if (os_log_type_enabled(v23, v24))
            {
              v25 = v25;
            }

            else
            {
              v25 = 2;
            }

            v26 = v23;
            v27 = objc_opt_class();
            LODWORD(v230[0]) = 138412802;
            *(v230 + 4) = v21;
            WORD2(v230[1]) = 2112;
            *(&v230[1] + 6) = v22;
            HIWORD(v230[2]) = 2112;
            v230[3] = v27;
            v28 = v27;
            v29 = _os_log_send_and_compose_impl(v25, 0, &v233, 256, &_mh_execute_header, v26, v24, "validating field '%@' with value '%@' of class '%@'", v230, 32);

            __SC_log_send2();
            if (v29 != &v233)
            {
              free(v29);
            }

            v10 = v199;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = objc_msgSend_isEqualToString_(v22);
            v31 = &kCFBooleanTrue;
            if ((v30 & 1) != 0 || (v32 = objc_msgSend_isEqualToString_(v22), v31 = &kCFBooleanFalse, v32))
            {
              v211 = *v31;

LABEL_94:
              v14 = v201;
              v12 = v203;
              v17 = theArray;
              goto LABEL_141;
            }
          }

          else
          {
            v59 = sub_1000082A0();
            v60 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v247 = 0u;
              v248 = 0u;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v241 = 0u;
              v242 = 0u;
              v239 = 0u;
              v240 = 0u;
              v237 = 0u;
              v238 = 0u;
              v235 = 0u;
              v236 = 0u;
              if (_sc_log <= 0)
              {
                LODWORD(v61) = 2;
              }

              else
              {
                LODWORD(v61) = 3;
              }

              v233 = 0uLL;
              v234 = 0uLL;
              if (os_log_type_enabled(v59, v60))
              {
                v61 = v61;
              }

              else
              {
                v61 = 2;
              }

              v62 = v59;
              v63 = objc_opt_class();
              LODWORD(v230[0]) = 138412290;
              *(v230 + 4) = v63;
              v64 = v63;
              v65 = _os_log_send_and_compose_impl(v61, 0, &v233, 256, &_mh_execute_header, v62, v60, "expected String element, got '%@'", v230, 12);

              __SC_log_send2();
              if (v65 != &v233)
              {
                free(v65);
              }

              v10 = v199;
            }
          }

          v66 = sub_1000082A0();
          v67 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v196 = v13;
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            if (_sc_log <= 0)
            {
              v68 = 2;
            }

            else
            {
              v68 = 3;
            }

            v233 = 0uLL;
            v234 = 0uLL;
            v69 = os_log_type_enabled(v66, v67);
            LODWORD(v230[0]) = 138412546;
            if (v69)
            {
              v70 = v68;
            }

            else
            {
              v70 = 2;
            }

            *(v230 + 4) = v21;
            WORD2(v230[1]) = 2112;
            *(&v230[1] + 6) = v22;
            v71 = _os_log_send_and_compose_impl(v70, 0, &v233, 256, &_mh_execute_header, v66, v67, "failed to validate field '%@' : %@", v230, 22);
            __SC_log_send2();
            if (v71 != &v233)
            {
              free(v71);
            }

            v21 = v66;
            v14 = v201;
            v12 = v203;
            v17 = theArray;
            goto LABEL_139;
          }

          v21 = v66;
          goto LABEL_94;
        }
      }

LABEL_142:

      objc_autoreleasePoolPop(v17);
      v15 = v15 + 1;
    }

    while (v15 != v12);
    v12 = [&off_10000C780 countByEnumeratingWithState:&v220 objects:&v224 count:16];
  }

  while (v12);
  if (value)
  {
    CFDictionarySetValue(theDict, @"dnsZones", value);
    sub_1000075DC(&v216);
  }

LABEL_146:
  if (v211)
  {
    CFDictionarySetValue(theDict, @"noInternet", v211);
    sub_1000075DC(&v211);
  }

  v90 = v10;
  v216 = 0;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v91 = [&off_10000C798 countByEnumeratingWithState:&v212 objects:&v220 count:16];
  v191 = v90;
  if (v91)
  {
    v92 = v91;
    v93 = 0;
    v94 = 0;
    v95 = *v213;
    while (1)
    {
      v96 = 0;
      v193 = v92;
      do
      {
        if (*v213 != v95)
        {
          objc_enumerationMutation(&off_10000C798);
        }

        v97 = *(*(&v212 + 1) + 8 * v96);
        v98 = objc_autoreleasePoolPush();
        v99 = [v90 valueForKey:v97];
        if (!v99)
        {
          goto LABEL_226;
        }

        if (!objc_msgSend_isEqualToString_(v97) || v94 != 0)
        {
          goto LABEL_226;
        }

        v198 = v97;
        v101 = v99;
        v249 = 0;
        if ([v101 count] > 9)
        {
          v102 = 10;
        }

        else
        {
          v102 = [v101 count];
        }

        v103 = sub_1000082A0();
        v104 = _SC_syslog_os_log_mapping();
        v205 = v99;
        v202 = v102;
        if (__SC_log_enabled())
        {
          v247 = 0u;
          v248 = 0u;
          v245 = 0u;
          v246 = 0u;
          v243 = 0u;
          v244 = 0u;
          v241 = 0u;
          v242 = 0u;
          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          v235 = 0u;
          v236 = 0u;
          if (_sc_log <= 0)
          {
            LODWORD(v105) = 2;
          }

          else
          {
            LODWORD(v105) = 3;
          }

          v233 = 0uLL;
          v234 = 0uLL;
          if (os_log_type_enabled(v103, v104))
          {
            v105 = v105;
          }

          else
          {
            v105 = 2;
          }

          v106 = v103;
          v107 = objc_opt_class();
          v224 = 138412802;
          v225 = v198;
          v226 = 2112;
          v227 = v101;
          v228 = 2112;
          v229 = v107;
          v108 = v107;
          v109 = _os_log_send_and_compose_impl(v105, 0, &v233, 256, &_mh_execute_header, v106, v104, "validating field '%@' with value '%@' of class '%@'", &v224, 32);

          __SC_log_send2();
          if (v109 != &v233)
          {
            free(v109);
          }

          v90 = v191;
          v99 = v205;
          v102 = v202;
        }

        objc_opt_class();
        v200 = v101;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v127 = sub_1000082A0();
          v128 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            v129 = _sc_log <= 0 ? 2 : 3;
            v233 = 0uLL;
            v234 = 0uLL;
            v130 = os_log_type_enabled(v127, v128) ? v129 : 2;
            LOWORD(v224) = 0;
            v131 = _os_log_send_and_compose_impl(v130, 0, &v233, 256, &_mh_execute_header, v127, v128, "expected JSON value of Array type", &v224, 2);
            __SC_log_send2();
            if (v131 != &v233)
            {
              free(v131);
            }
          }

LABEL_210:
          v126 = 0;
          goto LABEL_211;
        }

        v249 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        theArrayb = v249;
        if (!v249)
        {
          goto LABEL_210;
        }

        if (!v102)
        {
LABEL_189:
          v93 = theArrayb;
          v216 = theArrayb;
          v121 = sub_1000082A0();
          v122 = _SC_syslog_os_log_mapping();
          v90 = v191;
          if (__SC_log_enabled())
          {
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            if (_sc_log <= 0)
            {
              v123 = 2;
            }

            else
            {
              v123 = 3;
            }

            v233 = 0uLL;
            v234 = 0uLL;
            if (os_log_type_enabled(v121, v122))
            {
              v124 = v123;
            }

            else
            {
              v124 = 2;
            }

            *v217 = 138412290;
            *&v217[4] = theArrayb;
            v125 = _os_log_send_and_compose_impl(v124, 0, &v233, 256, &_mh_execute_header, v121, v122, "got proxies array:\n%@", v217, 12);
            __SC_log_send2();
            if (v125 != &v233)
            {
              free(v125);
            }

            v101 = v200;
          }

          v126 = 1;
          goto LABEL_211;
        }

        v110 = 0;
        v195 = v98;
        v194 = v93;
        while (1)
        {
          v111 = objc_autoreleasePoolPush();
          v112 = [v101 objectAtIndex:v110];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            CFArrayAppendValue(theArrayb, v112);
            goto LABEL_188;
          }

          objc_opt_class();
          v204 = v111;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          *&v233 = 0;
          *&v233 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!v233)
          {
            goto LABEL_239;
          }

          v113 = v95;
          v231 = 0u;
          v232 = 0u;
          memset(v230, 0, sizeof(v230));
          v114 = v112;
          v115 = [v114 countByEnumeratingWithState:v230 objects:&v224 count:16];
          if (v115)
          {
            v116 = v115;
            v117 = *v230[2];
            do
            {
              for (i = 0; i != v116; i = i + 1)
              {
                if (*v230[2] != v117)
                {
                  objc_enumerationMutation(v114);
                }

                v119 = *(v230[1] + 8 * i);
                v120 = [v114 objectForKey:v119];
                CFDictionaryAddValue(v233, v119, v120);
              }

              v116 = [v114 countByEnumeratingWithState:v230 objects:&v224 count:16];
            }

            while (v116);
          }

          CFArrayAppendValue(theArrayb, v233);
          sub_1000075DC(&v233);
          v95 = v113;
          v93 = v194;
          v98 = v195;
          v99 = v205;
          v101 = v200;
          v102 = v202;
          v111 = v204;
LABEL_188:

          objc_autoreleasePoolPop(v111);
          if (++v110 == v102)
          {
            goto LABEL_189;
          }
        }

        v138 = sub_1000082A0();
        v139 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v247 = 0u;
          v248 = 0u;
          v245 = 0u;
          v246 = 0u;
          v243 = 0u;
          v244 = 0u;
          v241 = 0u;
          v242 = 0u;
          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          v235 = 0u;
          v236 = 0u;
          if (_sc_log <= 0)
          {
            LODWORD(v140) = 2;
          }

          else
          {
            LODWORD(v140) = 3;
          }

          v233 = 0uLL;
          v234 = 0uLL;
          if (os_log_type_enabled(v138, v139))
          {
            v140 = v140;
          }

          else
          {
            v140 = 2;
          }

          v141 = v138;
          v142 = objc_opt_class();
          *v217 = 138412290;
          *&v217[4] = v142;
          v143 = v142;
          v144 = _os_log_send_and_compose_impl(v140, 0, &v233, 256, &_mh_execute_header, v141, v139, "expected String or Dictionary element, got '%@'", v217, 12);

          __SC_log_send2();
          if (v144 != &v233)
          {
            free(v144);
          }

          v99 = v205;
          v101 = v200;
        }

        v98 = v195;
LABEL_239:

        objc_autoreleasePoolPop(v111);
        v126 = 0;
        v90 = v191;
LABEL_211:
        v92 = v193;
        if (!v93)
        {
          sub_1000075DC(&v249);
        }

        if ((v126 & 1) == 0)
        {
          v132 = sub_1000082A0();
          v133 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            if (_sc_log <= 0)
            {
              v134 = 2;
            }

            else
            {
              v134 = 3;
            }

            v233 = 0uLL;
            v234 = 0uLL;
            v135 = os_log_type_enabled(v132, v133);
            v224 = 138412546;
            if (v135)
            {
              v136 = v134;
            }

            else
            {
              v136 = 2;
            }

            v225 = v198;
            v226 = 2112;
            v227 = v101;
            v137 = _os_log_send_and_compose_impl(v136, 0, &v233, 256, &_mh_execute_header, v132, v133, "failed to validate field '%@' : %@", &v224, 22);
            __SC_log_send2();
            if (v137 != &v233)
            {
              free(v137);
            }

            v92 = v193;
            v90 = v191;
          }
        }

        v94 = v93;
LABEL_226:

        objc_autoreleasePoolPop(v98);
        v96 = v96 + 1;
      }

      while (v96 != v92);
      v145 = [&off_10000C798 countByEnumeratingWithState:&v212 objects:&v220 count:16];
      v92 = v145;
      if (!v145)
      {
        if (v93)
        {
          CFDictionarySetValue(theDict, @"proxies", v93);
          sub_1000075DC(&v216);
        }

        break;
      }
    }
  }

  allKeys = [(__CFDictionary *)theDict allKeys];
  v147 = [allKeys count];
  memset(v230, 0, sizeof(v230));
  v231 = 0u;
  v232 = 0u;
  theArrayc = [v90 allKeys];
  v148 = [(__CFArray *)theArrayc countByEnumeratingWithState:v230 objects:&v224 count:16];
  if (v148)
  {
    v149 = v148;
    v150 = *v230[2];
    v206 = allKeys;
LABEL_245:
    v151 = 0;
    while (1)
    {
      if (*v230[2] != v150)
      {
        objc_enumerationMutation(theArrayc);
      }

      if (v147 > 9)
      {
        break;
      }

      v152 = *(v230[1] + 8 * v151);
      if (([allKeys containsObject:v152] & 1) == 0)
      {
        v153 = [v90 valueForKey:v152];
        v249 = v153;
        v154 = [NSArray arrayWithObjects:&v249 count:1];
        v155 = sub_100006AE8(v154, 0);

        if (v155)
        {
          CFDictionarySetValue(theDict, v152, v153);
          ++v147;
        }

        else
        {
          v156 = sub_1000082A0();
          v157 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            if (_sc_log <= 0)
            {
              v158 = 2;
            }

            else
            {
              v158 = 3;
            }

            v233 = 0uLL;
            v234 = 0uLL;
            v159 = os_log_type_enabled(v156, v157);
            *v217 = 138412546;
            if (v159)
            {
              v160 = v158;
            }

            else
            {
              v160 = 2;
            }

            *&v217[4] = v152;
            v218 = 2112;
            v219 = v153;
            v161 = _os_log_send_and_compose_impl(v160, 0, &v233, 256, &_mh_execute_header, v156, v157, "failed to validate field '%@' : %@", v217, 22);
            __SC_log_send2();
            if (v161 != &v233)
            {
              free(v161);
            }

            v90 = v191;
            allKeys = v206;
          }
        }
      }

      if (v149 == ++v151)
      {
        v149 = [(__CFArray *)theArrayc countByEnumeratingWithState:v230 objects:&v224 count:16];
        if (v149)
        {
          goto LABEL_245;
        }

        break;
      }
    }
  }

  if (CFDictionaryGetCount(theDict) < 3)
  {
    allValues = 0;
    self = selfCopy2;
    goto LABEL_288;
  }

  allValues = [(__CFDictionary *)theDict allValues];
  self = selfCopy2;
  if ((sub_100006AE8(allValues, 0) & 1) == 0)
  {
    goto LABEL_288;
  }

  v180 = sub_1000082A0();
  v181 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v182 = _sc_log <= 0 ? 2 : 3;
    v183 = os_log_type_enabled(v180, v181) ? v182 : 2;
    v224 = 138412290;
    v225 = theDict;
    v184 = _os_log_send_and_compose_impl(v183, 0, &v233, 256, &_mh_execute_header, v180, v181, "validation succeeded, got PvD Additional Info dict:\n%@", &v224, 12);
    __SC_log_send2();
    if (v184 != &v233)
    {
      free(v184);
    }
  }

LABEL_299:
  return theDict;
}

@end