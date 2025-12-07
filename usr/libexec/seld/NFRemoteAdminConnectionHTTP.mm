@interface NFRemoteAdminConnectionHTTP
- (NFRemoteAdminConnectionHTTP)initWithURL:(id)l SEID:(id)d;
- (NFRemoteAdminConnectionHTTP)initWithURL:(id)l SEID:(id)d showProprietaryHeaders:(BOOL)headers disableEVTrustValidation:(BOOL)validation;
- (unsigned)disconnect;
- (unsigned)performRequest:(id)request body:(id)body header:(id)header response:(id)response responseHeader:(id)responseHeader httpStatus:(int64_t *)status duration:(double *)duration sessionError:(id *)self0;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation NFRemoteAdminConnectionHTTP

- (NFRemoteAdminConnectionHTTP)initWithURL:(id)l SEID:(id)d
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i API is deprecated!!", v11, ClassName, Name, 95);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v18 = v14;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 95;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i API is deprecated!!", buf, 0x22u);
  }

  return 0;
}

- (NFRemoteAdminConnectionHTTP)initWithURL:(id)l SEID:(id)d showProprietaryHeaders:(BOOL)headers disableEVTrustValidation:(BOOL)validation
{
  lCopy = l;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = NFRemoteAdminConnectionHTTP;
  v12 = [(NFRemoteAdminConnectionHTTP *)&v18 init];
  if (v12)
  {
    v13 = dispatch_semaphore_create(0);
    sem = v12->_sem;
    v12->_sem = v13;

    if ([dCopy length])
    {
      v15 = [lCopy URLByAppendingPathComponent:dCopy];
    }

    else
    {
      v15 = lCopy;
    }

    baseURL = v12->_baseURL;
    v12->_baseURL = v15;

    if (os_variant_has_internal_content())
    {
      v12->_disableEVTrustValidation = validation;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038E88;
    block[3] = &unk_100054A40;
    block[4] = v12;
    block[5] = "_getSessionWithProprietaryHeaders";
    if (qword_10005BAA0 != -1)
    {
      dispatch_once(&qword_10005BAA0, block);
    }

    objc_storeStrong(&v12->_netSession, qword_10005BAA8);
    v12->_proprietaryHeaders = headers;
  }

  return v12;
}

- (unsigned)disconnect
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSURLSessionTask *)selfCopy->_netSessionTask cancel];
  objc_sync_exit(selfCopy);

  return 0;
}

- (unsigned)performRequest:(id)request body:(id)body header:(id)header response:(id)response responseHeader:(id)responseHeader httpStatus:(int64_t *)status duration:(double *)duration sessionError:(id *)self0
{
  requestCopy = request;
  bodyCopy = body;
  headerCopy = header;
  responseCopy = response;
  responseHeaderCopy = responseHeader;
  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 6;
  v128 = 0;
  v129 = &v128;
  v130 = 0x3032000000;
  v131 = sub_100039F6C;
  v132 = sub_100039F7C;
  v133 = 0;
  v115 = objc_autoreleasePoolPush();
  *v142 = 0;
  *v143 = v142;
  *&v143[8] = 0x3032000000;
  *&v143[16] = sub_100039F6C;
  *&v143[24] = sub_100039F7C;
  *&v143[32] = 0;
  v19 = [requestCopy length];
  baseURL = self->_baseURL;
  if (v19)
  {
    v21 = [(NSURL *)baseURL URLByAppendingPathComponent:requestCopy];
  }

  else
  {
    v21 = [(NSURL *)baseURL copy];
  }

  url = self->_url;
  self->_url = v21;

  objc_storeStrong((*v143 + 40), self->_url);
  if (!bodyCopy)
  {
    v114 = 0;
    goto LABEL_9;
  }

  if (![NSJSONSerialization isValidJSONObject:bodyCopy])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v31 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v34 = 45;
      if (isMetaClass)
      {
        v34 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i JSON serialization failed, invalid body: %{public}@", v34, ClassName, Name, 277, bodyCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(self);
      v38 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v36;
      *v139 = 2082;
      *&v139[2] = v37;
      *&v139[10] = 2082;
      *&v139[12] = v38;
      *&v139[20] = 1024;
      *&v139[22] = 277;
      v140 = 2114;
      v141 = bodyCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i JSON serialization failed, invalid body: %{public}@", buf, 0x2Cu);
    }

    goto LABEL_67;
  }

  v127 = 0;
  v23 = [NSJSONSerialization dataWithJSONObject:bodyCopy options:0 error:&v127];
  v24 = v127;
  v25 = v24;
  v114 = v23;
  if (!v23)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v85 = NFLogGetLogger();
    if (v85)
    {
      v86 = v85;
      v87 = object_getClass(self);
      v88 = class_isMetaClass(v87);
      v98 = object_getClassName(self);
      v101 = sel_getName(a2);
      v89 = 45;
      if (v88)
      {
        v89 = 43;
      }

      v86(3, "%c[%{public}s %{public}s]:%i JSON serialization failed: %{public}@", v89, v98, v101, 273, v25);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v90 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v91 = object_getClass(self);
      if (class_isMetaClass(v91))
      {
        v92 = 43;
      }

      else
      {
        v92 = 45;
      }

      v93 = object_getClassName(self);
      v94 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v92;
      *v139 = 2082;
      *&v139[2] = v93;
      *&v139[10] = 2082;
      *&v139[12] = v94;
      *&v139[20] = 1024;
      *&v139[22] = 273;
      v140 = 2114;
      v141 = v25;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i JSON serialization failed: %{public}@", buf, 0x2Cu);
    }

LABEL_67:
    _Block_object_dispose(v142, 8);

    objc_autoreleasePoolPop(v115);
    v84 = 22;
    goto LABEL_68;
  }

LABEL_9:
  v26 = [NSMutableURLRequest requestWithURL:*(*v143 + 40) cachePolicy:1 timeoutInterval:30.0];
  [v26 setHTTPMethod:@"POST"];
  v27 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"application/json", @"Content-Type", 0}];
  v28 = v27;
  if (headerCopy)
  {
    [v27 addEntriesFromDictionary:headerCopy];
  }

  v111 = headerCopy;
  v112 = responseCopy;
  if (self->_proprietaryHeaders)
  {
    context = objc_autoreleasePoolPush();
    v109 = bodyCopy;
    v110 = requestCopy;
    v108 = v28;
    if (NFIsSimulator())
    {
      v29 = @"Simulator";
    }

    else
    {
      v29 = MGCopyAnswer();
    }

    v105 = v29;
    v106 = MGCopyAnswer();
    v104 = MGCopyAnswer();
    v103 = NFBuildVersion();
    v102 = [[NSString alloc] initWithFormat:@"%@", v29];
    v103 = [[NSString alloc] initWithFormat:@"%@;%@;%@", v106, v104, v103];
    v40 = [NSBundle bundleForClass:objc_opt_class()];
    infoDictionary = [v40 infoDictionary];
    v42 = [infoDictionary objectForKey:kCFBundleVersionKey];

    v43 = +[NSBundle mainBundle];
    infoDictionary2 = [v43 infoDictionary];
    v45 = [infoDictionary2 objectForKey:kCFBundleVersionKey];

    v46 = [NSString alloc];
    bundleIdentifier = [v40 bundleIdentifier];
    bundleIdentifier2 = [v43 bundleIdentifier];
    v49 = [v46 initWithFormat:@"%@/%@ (%@/%@)", bundleIdentifier, v42, bundleIdentifier2, v45];

    v50 = [[NSString alloc] initWithFormat:@"<%@> <%@> <%@>", v102, v103, v49];
    objc_autoreleasePoolPop(context);
    v28 = v108;
    [v108 setObject:v50 forKey:@"X-Apple-Client-Info"];

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    bodyCopy = v109;
    requestCopy = v110;
    responseCopy = v112;
  }

  [v26 setAllHTTPHeaderFields:v28];
  [v26 setHTTPBody:v114];
  if (byte_10005BAB0 == 1)
  {
    v51 = v28;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = object_getClass(self);
      v55 = class_isMetaClass(v54);
      v97 = object_getClassName(self);
      v100 = sel_getName(a2);
      v56 = 45;
      if (v55)
      {
        v56 = 43;
      }

      v53(6, "%c[%{public}s %{public}s]:%i [TSM] Request Header: %@", v56, v97, v100, 300, v51);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = object_getClass(self);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(self);
      v61 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v59;
      *v139 = 2082;
      *&v139[2] = v60;
      *&v139[10] = 2082;
      *&v139[12] = v61;
      *&v139[20] = 1024;
      *&v139[22] = 300;
      v140 = 2112;
      v141 = v51;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Request Header: %@", buf, 0x2Cu);
    }

    responseCopy = v112;
    v28 = v51;
    sub_10002D188("[TSM] Request Body: ", bodyCopy);
  }

  v62 = v28;
  *buf = 0;
  *v139 = buf;
  *&v139[8] = 0x2020000000;
  *&v139[16] = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  netSession = selfCopy->_netSession;
  v118[0] = _NSConcreteStackBlock;
  v118[1] = 3221225472;
  v118[2] = sub_100039F84;
  v118[3] = &unk_100055078;
  v118[4] = selfCopy;
  v125 = a2;
  v119 = responseHeaderCopy;
  v121 = buf;
  v122 = &v128;
  v123 = v142;
  statusCopy = status;
  v124 = &v134;
  v65 = responseCopy;
  v120 = v65;
  v66 = [(NSURLSession *)netSession dataTaskWithRequest:v26 completionHandler:v118];
  netSessionTask = selfCopy->_netSessionTask;
  selfCopy->_netSessionTask = v66;

  mach_continuous_time();
  [(NSURLSessionTask *)selfCopy->_netSessionTask resume];

  objc_sync_exit(selfCopy);
  if (selfCopy->_netSessionTask)
  {
    dispatch_semaphore_wait(selfCopy->_sem, 0xFFFFFFFFFFFFFFFFLL);
  }

  v68 = selfCopy;
  objc_sync_enter(v68);
  v69 = selfCopy->_netSessionTask;
  selfCopy->_netSessionTask = 0;

  [(NSURLSession *)selfCopy->_netSession flushWithCompletionHandler:&stru_100055098];
  objc_sync_exit(v68);

  if (duration)
  {
    *duration = GetElapsedTimeInMillisecondsFromMachTime() / 1000.0;
  }

  if (byte_10005BAB0 == 1 && [v65 count])
  {
    sub_10002D188("[TSM] Response Body: ", v65);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v142, 8);
  objc_autoreleasePoolPop(v115);
  headerCopy = v111;
  if (error)
  {
    *error = v129[5];
  }

  if (v129[5])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v70 = NFLogGetLogger();
    if (v70)
    {
      v71 = v70;
      v72 = object_getClass(v68);
      v73 = class_isMetaClass(v72);
      v74 = object_getClassName(v68);
      v75 = sel_getName(a2);
      v76 = [v129[5] description];
      v77 = 45;
      if (v73)
      {
        v77 = 43;
      }

      v71(3, "%c[%{public}s %{public}s]:%i NetSessionError=%{public}@", v77, v74, v75, 447, v76);

      headerCopy = v111;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v78 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v79 = object_getClass(v68);
      if (class_isMetaClass(v79))
      {
        v80 = 43;
      }

      else
      {
        v80 = 45;
      }

      v81 = object_getClassName(v68);
      v82 = sel_getName(a2);
      v83 = [v129[5] description];
      *v142 = 67110146;
      *&v142[4] = v80;
      headerCopy = v111;
      *v143 = 2082;
      *&v143[2] = v81;
      *&v143[10] = 2082;
      *&v143[12] = v82;
      *&v143[20] = 1024;
      *&v143[22] = 447;
      *&v143[26] = 2114;
      *&v143[28] = v83;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NetSessionError=%{public}@", v142, 0x2Cu);
    }
  }

  v84 = *(v135 + 6);
  responseCopy = v112;
LABEL_68:
  _Block_object_dispose(&v128, 8);

  _Block_object_dispose(&v134, 8);
  return v84;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    delegateQueue = [sessionCopy delegateQueue];
    underlyingQueue = [delegateQueue underlyingQueue];

    if (!underlyingQueue)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v35 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v39 = 45;
        if (isMetaClass)
        {
          v39 = 43;
        }

        v35(3, "%c[%{public}s %{public}s]:%i session delegate queue is nil", v39, ClassName, Name, 542);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = object_getClass(self);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        LODWORD(result) = 67109890;
        HIDWORD(result) = v42;
        *v65 = 2082;
        *&v65[2] = object_getClassName(self);
        *&v65[10] = 2082;
        *&v65[12] = sel_getName(a2);
        *&v65[20] = 1024;
        *&v65[22] = 542;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i session delegate queue is nil", &result, 0x22u);
      }

      NFSimulateCrash();
      exit(-1);
    }

    serverTrust = [protectionSpace serverTrust];
    delegateQueue2 = [sessionCopy delegateQueue];
    underlyingQueue2 = [delegateQueue2 underlyingQueue];
    v49[1] = 3221225472;
    v49[0] = _NSConcreteStackBlock;
    v50 = sub_10003BB64;
    v51 = &unk_1000550E8;
    v53 = handlerCopy;
    v52 = protectionSpace;
    v19 = underlyingQueue2;
    v20 = v49;
    v21 = v20;
    if (self)
    {
      if (serverTrust)
      {
        result = _NSConcreteStackBlock;
        *v65 = 3221225472;
        *&v65[8] = sub_10003AFFC;
        *&v65[16] = &unk_1000550C0;
        *&v65[24] = self;
        v67 = "_trustPassesExtendedValidation:queue:completionHandler:";
        v48 = v20;
        v66 = v48;
        v22 = SecTrustEvaluateAsyncWithError(serverTrust, v19, &result);
        if (v22)
        {
          v23 = v22;
          v47 = delegateQueue2;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFLogGetLogger();
          if (v24)
          {
            v25 = v24;
            v26 = object_getClass(self);
            v44 = class_isMetaClass(v26);
            v45 = object_getClassName(self);
            v27 = sel_getName("_trustPassesExtendedValidation:queue:completionHandler:");
            v28 = 45;
            if (v44)
            {
              v28 = 43;
            }

            v25(3, "%c[%{public}s %{public}s]:%i Trust eval error: %d", v28, v45, v27, 529, v23);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v29 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = object_getClass(self);
            if (class_isMetaClass(v30))
            {
              v31 = 43;
            }

            else
            {
              v31 = 45;
            }

            v46 = v31;
            v32 = object_getClassName(self);
            v33 = sel_getName("_trustPassesExtendedValidation:queue:completionHandler:");
            *buf = 67110146;
            v55 = v46;
            v56 = 2082;
            v57 = v32;
            v58 = 2082;
            v59 = v33;
            v60 = 1024;
            v61 = 529;
            v62 = 1024;
            v63 = v23;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Trust eval error: %d", buf, 0x28u);
          }

          v50(v48, 0);
          delegateQueue2 = v47;
        }
      }

      else
      {
        v50(v20, 0);
      }
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

@end