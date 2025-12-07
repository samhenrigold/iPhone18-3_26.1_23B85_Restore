@interface NFRemoteAdminSession
- (BOOL)_openSessionWithTimeout:(unint64_t)timeout;
- (BOOL)performRequest;
- (NFRemoteAdminSession)init;
- (unint64_t)run;
- (unsigned)_deactiveAllAppletsOnSE:(id)e;
- (void)_postProcessNotification:(id)notification executionStatus:(BOOL)status regionIdentifier:(id)identifier;
- (void)_preprocessNotification:(id)notification withTaskID:(id)d;
- (void)abort:(int64_t)abort;
- (void)processAppletChanged:(id)changed regionIdentifier:(id)identifier;
- (void)processAppletsDeleted:(id)deleted regionIdentifier:(id)identifier;
@end

@implementation NFRemoteAdminSession

- (NFRemoteAdminSession)init
{
  v6.receiver = self;
  v6.super_class = NFRemoteAdminSession;
  v2 = [(NFRemoteAdminSession *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    endMetric = v2->_endMetric;
    v2->_endMetric = v3;

    v2->_allocateSESession = 1;
  }

  return v2;
}

- (void)abort:(int64_t)abort
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(selfCopy);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(selfCopy);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Aborting (%u)...", v10, ClassName, Name, 88, abort);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(selfCopy);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67110146;
    v17 = v13;
    v18 = 2082;
    v19 = object_getClassName(selfCopy);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 88;
    v24 = 1024;
    abortCopy = abort;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborting (%u)...", buf, 0x28u);
  }

  selfCopy->_abort = abort;
  [(NFRemoteAdminConnection *)selfCopy->_connection disconnect];
  objc_sync_exit(selfCopy);
}

- (void)_preprocessNotification:(id)notification withTaskID:(id)d
{
  notificationCopy = notification;
  dCopy = d;
  v273 = [notificationCopy NF_arrayForKey:@"mfdListPreExecution"];
  if ([(__CFString *)v273 count])
  {
    v5 = objc_opt_new();
    if (byte_10005BAB0 == 1)
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
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i [TSM] MFD list: %@", v10, ClassName, Name, 110, v273);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(self);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67110146;
        v309 = v13;
        v310 = 2082;
        v311 = object_getClassName(self);
        v312 = 2082;
        v313 = sel_getName(a2);
        v314 = 1024;
        v315 = 110;
        v316 = 2112;
        v317 = v273;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] MFD list: %@", buf, 0x2Cu);
      }
    }

    v282 = v5;
    v303 = 0u;
    v304 = 0u;
    v301 = 0u;
    v302 = 0u;
    v14 = v273;
    v15 = [(__CFString *)v14 countByEnumeratingWithState:&v301 objects:v320 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v302;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v302 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v301 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [(NFSecureElementManagerSession *)self->_seSession appletWithIdentifier:v19];
            if (v20)
            {
              [v282 addObject:v20];
              if (byte_10005BAB0 == 1)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v21 = NFLogGetLogger();
                if (v21)
                {
                  v22 = v21;
                  v23 = object_getClass(self);
                  v24 = class_isMetaClass(v23);
                  v250 = object_getClassName(self);
                  v256 = sel_getName(a2);
                  v25 = 45;
                  if (v24)
                  {
                    v25 = 43;
                  }

                  v22(6, "%c[%{public}s %{public}s]:%i [TSM] Deleting applet: %@", v25, v250, v256, 120, v19);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v26 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = object_getClass(self);
                  if (class_isMetaClass(v27))
                  {
                    v28 = 43;
                  }

                  else
                  {
                    v28 = 45;
                  }

                  v29 = object_getClassName(self);
                  v30 = sel_getName(a2);
                  *buf = 67110146;
                  v309 = v28;
                  v310 = 2082;
                  v311 = v29;
                  v312 = 2082;
                  v313 = v30;
                  v314 = 1024;
                  v315 = 120;
                  v316 = 2112;
                  v317 = v19;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Deleting applet: %@", buf, 0x2Cu);
                }
              }
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v31 = NFLogGetLogger();
            if (v31)
            {
              v32 = v31;
              v33 = object_getClass(self);
              v34 = class_isMetaClass(v33);
              v35 = object_getClassName(self);
              v36 = sel_getName(a2);
              v267 = objc_opt_class();
              v37 = 45;
              if (v34)
              {
                v37 = 43;
              }

              v32(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", v37, v35, v36, 114, @"mfdListPreExecution", v267);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v20 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v38 = object_getClass(self);
              if (class_isMetaClass(v38))
              {
                v39 = 43;
              }

              else
              {
                v39 = 45;
              }

              v40 = object_getClassName(self);
              v41 = sel_getName(a2);
              v42 = objc_opt_class();
              *buf = 67110402;
              v309 = v39;
              v310 = 2082;
              v311 = v40;
              v312 = 2082;
              v313 = v41;
              v314 = 1024;
              v315 = 114;
              v316 = 2114;
              v317 = @"mfdListPreExecution";
              v318 = 2114;
              v319 = v42;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", buf, 0x36u);
            }
          }
        }

        v16 = [(__CFString *)v14 countByEnumeratingWithState:&v301 objects:v320 count:16];
      }

      while (v16);
    }

    if ([v282 count])
    {
      [(NFSecureElementManagerSession *)self->_seSession deleteApplets:v282 queueServerConnection:0];
    }
  }

  v43 = [notificationCopy NF_arrayForKey:@"PTDeleteKeyIdsPreExecution"];
  if ([(__CFString *)v43 count]&& byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(self);
      v47 = class_isMetaClass(v46);
      v251 = object_getClassName(self);
      v257 = sel_getName(a2);
      v48 = 45;
      if (v47)
      {
        v48 = 43;
      }

      v45(6, "%c[%{public}s %{public}s]:%i [TSM] PT Keys to delete: %@", v48, v251, v257, 131, v43);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = object_getClass(self);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(self);
      v53 = sel_getName(a2);
      *buf = 67110146;
      v309 = v51;
      v310 = 2082;
      v311 = v52;
      v312 = 2082;
      v313 = v53;
      v314 = 1024;
      v315 = 131;
      v316 = 2112;
      v317 = v43;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] PT Keys to delete: %@", buf, 0x2Cu);
    }
  }

  v299 = 0u;
  v300 = 0u;
  v297 = 0u;
  v298 = 0u;
  obj = v43;
  v54 = [(__CFString *)obj countByEnumeratingWithState:&v297 objects:v307 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v298;
    do
    {
      for (j = 0; j != v55; j = j + 1)
      {
        if (*v298 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v297 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v59 = self->_targetSEID;
          v296 = 0;
          v60 = SESEndPointDeleteWithSession();
          v61 = 0;

          v62 = 0;
          if (v60)
          {
            v63 = v61 == 0;
          }

          else
          {
            v63 = 0;
          }

          if (!v63)
          {
            if (byte_10005BAB0 == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v64 = NFLogGetLogger();
              if (v64)
              {
                v65 = v64;
                v66 = object_getClass(self);
                v67 = class_isMetaClass(v66);
                v68 = object_getClassName(self);
                v258 = sel_getName(a2);
                if (v67)
                {
                  v69 = 43;
                }

                else
                {
                  v69 = 45;
                }

                v65(6, "%c[%{public}s %{public}s]:%i [TSM] Failed to delete key with identifier %@ : %@", v69, v68, v258, 140, v58, v61);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v70 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                v71 = object_getClass(self);
                if (class_isMetaClass(v71))
                {
                  v72 = 43;
                }

                else
                {
                  v72 = 45;
                }

                v73 = object_getClassName(self);
                v74 = sel_getName(a2);
                *buf = 67110402;
                v309 = v72;
                v310 = 2082;
                v311 = v73;
                v312 = 2082;
                v313 = v74;
                v314 = 1024;
                v315 = 140;
                v316 = 2112;
                v317 = v58;
                v318 = 2112;
                v319 = v61;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Failed to delete key with identifier %@ : %@", buf, 0x36u);
              }
            }

            v62 = v61;
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v75 = NFLogGetLogger();
          if (v75)
          {
            v76 = v75;
            v77 = object_getClass(self);
            v78 = class_isMetaClass(v77);
            v79 = object_getClassName(self);
            v80 = sel_getName(a2);
            v268 = objc_opt_class();
            if (v78)
            {
              v81 = 43;
            }

            else
            {
              v81 = 45;
            }

            v76(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", v81, v79, v80, 134, @"PTDeleteKeyIdsPreExecution", v268);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v82 = object_getClass(self);
            if (class_isMetaClass(v82))
            {
              v83 = 43;
            }

            else
            {
              v83 = 45;
            }

            v84 = object_getClassName(self);
            v85 = sel_getName(a2);
            v86 = objc_opt_class();
            *buf = 67110402;
            v309 = v83;
            v310 = 2082;
            v311 = v84;
            v312 = 2082;
            v313 = v85;
            v314 = 1024;
            v315 = 134;
            v316 = 2114;
            v317 = @"PTDeleteKeyIdsPreExecution";
            v318 = 2114;
            v319 = v86;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", buf, 0x36u);
          }
        }
      }

      v55 = [(__CFString *)obj countByEnumeratingWithState:&v297 objects:v307 count:16];
    }

    while (v55);
  }

  v87 = [notificationCopy NF_arrayForKey:@"PTTerminateKeyIdsPreExecution"];
  if ([(__CFString *)v87 count]&& byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v88 = NFLogGetLogger();
    if (v88)
    {
      v89 = v88;
      v90 = object_getClass(self);
      v91 = class_isMetaClass(v90);
      v252 = object_getClassName(self);
      v259 = sel_getName(a2);
      v92 = 45;
      if (v91)
      {
        v92 = 43;
      }

      v89(6, "%c[%{public}s %{public}s]:%i [TSM] PT Keys to terminate: %@", v92, v252, v259, 145, v87);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v93 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      v94 = object_getClass(self);
      if (class_isMetaClass(v94))
      {
        v95 = 43;
      }

      else
      {
        v95 = 45;
      }

      v96 = object_getClassName(self);
      v97 = sel_getName(a2);
      *buf = 67110146;
      v309 = v95;
      v310 = 2082;
      v311 = v96;
      v312 = 2082;
      v313 = v97;
      v314 = 1024;
      v315 = 145;
      v316 = 2112;
      v317 = v87;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] PT Keys to terminate: %@", buf, 0x2Cu);
    }
  }

  v295 = 0u;
  v293 = 0u;
  v294 = 0u;
  v292 = 0u;
  v98 = v87;
  v99 = [(__CFString *)v98 countByEnumeratingWithState:&v292 objects:v306 count:16];
  v276 = v98;
  if (v99)
  {
    v100 = v99;
    v101 = *v293;
    do
    {
      for (k = 0; k != v100; k = k + 1)
      {
        if (*v293 != v101)
        {
          objc_enumerationMutation(v98);
        }

        v103 = *(*(&v292 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v104 = [v103 objectForKeyedSubscript:@"keyId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v105 = [v103 NF_stringForKey:@"remoteTerminationRequest"];
            v106 = [v103 objectForKey:@"remoteTerminationRequest"];

            if (v106)
            {
              v107 = v105 == 0;
            }

            else
            {
              v107 = 0;
            }

            if (v107)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v145 = NFLogGetLogger();
              if (v145)
              {
                v146 = v145;
                v147 = object_getClass(self);
                v148 = class_isMetaClass(v147);
                v149 = object_getClassName(self);
                v150 = sel_getName(a2);
                v271 = objc_opt_class();
                v261 = v150;
                v98 = v276;
                v151 = 45;
                if (v148)
                {
                  v151 = 43;
                }

                v146(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", v151, v149, v261, 162, @"remoteTerminationRequest", v271);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v109 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                v152 = object_getClass(self);
                if (class_isMetaClass(v152))
                {
                  v153 = 43;
                }

                else
                {
                  v153 = 45;
                }

                v154 = object_getClassName(self);
                v155 = sel_getName(a2);
                v156 = objc_opt_class();
                *buf = 67110402;
                v309 = v153;
                v310 = 2082;
                v311 = v154;
                v312 = 2082;
                v313 = v155;
                v314 = 1024;
                v315 = 162;
                v316 = 2114;
                v317 = @"remoteTerminationRequest";
                v318 = 2114;
                v319 = v156;
                _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", buf, 0x36u);
              }
            }

            else
            {
              v108 = [NSData NF_dataWithHexString:v105];
              v109 = v108;
              if (!v105 || v108)
              {
                targetSEID = self->_targetSEID;
                v291 = 0;
                v158 = targetSEID;
                v159 = SESEndPointRemoteTerminationRequestFromTSM();
                v160 = 0;

                if (!v159 || (v116 = 0, v160))
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v161 = NFLogGetLogger();
                  if (v161)
                  {
                    v162 = v161;
                    v163 = object_getClass(self);
                    v164 = class_isMetaClass(v163);
                    v165 = object_getClassName(self);
                    v262 = sel_getName(a2);
                    v166 = 45;
                    if (v164)
                    {
                      v166 = 43;
                    }

                    v162(3, "%c[%{public}s %{public}s]:%i Failed to terminate key with identifier %{public}@ : %{public}@", v166, v165, v262, 179, v104, v160);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v167 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
                  {
                    v168 = object_getClass(self);
                    if (class_isMetaClass(v168))
                    {
                      v169 = 43;
                    }

                    else
                    {
                      v169 = 45;
                    }

                    v170 = object_getClassName(self);
                    v171 = sel_getName(a2);
                    *buf = 67110402;
                    v309 = v169;
                    v310 = 2082;
                    v311 = v170;
                    v312 = 2082;
                    v313 = v171;
                    v314 = 1024;
                    v315 = 179;
                    v316 = 2114;
                    v317 = v104;
                    v318 = 2114;
                    v319 = v160;
                    _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to terminate key with identifier %{public}@ : %{public}@", buf, 0x36u);
                  }

                  v116 = v160;
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v110 = NFLogGetLogger();
                if (v110)
                {
                  v111 = v110;
                  v112 = object_getClass(self);
                  v113 = class_isMetaClass(v112);
                  v114 = object_getClassName(self);
                  v260 = sel_getName(a2);
                  v115 = 45;
                  if (v113)
                  {
                    v115 = 43;
                  }

                  v111(3, "%c[%{public}s %{public}s]:%i %{public}@ Got non-nil RTR but it wasn't hex-encoded : %{public}@", v115, v114, v260, 167, @"remoteTerminationRequest", v105);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v116 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                {
                  v117 = object_getClass(self);
                  if (class_isMetaClass(v117))
                  {
                    v118 = 43;
                  }

                  else
                  {
                    v118 = 45;
                  }

                  v119 = object_getClassName(self);
                  v120 = sel_getName(a2);
                  *buf = 67110402;
                  v309 = v118;
                  v310 = 2082;
                  v311 = v119;
                  v312 = 2082;
                  v313 = v120;
                  v314 = 1024;
                  v315 = 167;
                  v316 = 2114;
                  v317 = @"remoteTerminationRequest";
                  v318 = 2114;
                  v319 = v105;
                  _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Got non-nil RTR but it wasn't hex-encoded : %{public}@", buf, 0x36u);
                }
              }

              v98 = v276;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v133 = NFLogGetLogger();
            if (v133)
            {
              v134 = v133;
              v135 = object_getClass(self);
              v136 = class_isMetaClass(v135);
              v137 = object_getClassName(self);
              v138 = sel_getName(a2);
              v270 = objc_opt_class();
              v139 = 45;
              if (v136)
              {
                v139 = 43;
              }

              v134(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", v139, v137, v138, 154, @"keyId", v270);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v105 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              v140 = object_getClass(self);
              if (class_isMetaClass(v140))
              {
                v141 = 43;
              }

              else
              {
                v141 = 45;
              }

              v142 = object_getClassName(self);
              v143 = sel_getName(a2);
              v144 = objc_opt_class();
              *buf = 67110402;
              v309 = v141;
              v310 = 2082;
              v311 = v142;
              v312 = 2082;
              v313 = v143;
              v314 = 1024;
              v315 = 154;
              v316 = 2114;
              v317 = @"keyId";
              v318 = 2114;
              v319 = v144;
              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", buf, 0x36u);
            }
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v121 = NFLogGetLogger();
          if (v121)
          {
            v122 = v121;
            v123 = object_getClass(self);
            v124 = class_isMetaClass(v123);
            v125 = object_getClassName(self);
            v126 = sel_getName(a2);
            v269 = objc_opt_class();
            v127 = 45;
            if (v124)
            {
              v127 = 43;
            }

            v122(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected Dictionary, got %{public}@", v127, v125, v126, 148, @"PTTerminateKeyIdsPreExecution", v269);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v104 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            v128 = object_getClass(self);
            if (class_isMetaClass(v128))
            {
              v129 = 43;
            }

            else
            {
              v129 = 45;
            }

            v130 = object_getClassName(self);
            v131 = sel_getName(a2);
            v132 = objc_opt_class();
            *buf = 67110402;
            v309 = v129;
            v310 = 2082;
            v311 = v130;
            v312 = 2082;
            v313 = v131;
            v314 = 1024;
            v315 = 148;
            v316 = 2114;
            v317 = @"PTTerminateKeyIdsPreExecution";
            v318 = 2114;
            v319 = v132;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected Dictionary, got %{public}@", buf, 0x36u);
          }
        }
      }

      v100 = [(__CFString *)v98 countByEnumeratingWithState:&v292 objects:v306 count:16];
    }

    while (v100);
  }

  v172 = [notificationCopy NF_arrayForKey:@"FiDOKeyRevokeList"];
  if ([(__CFString *)v172 count]&& byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v173 = NFLogGetLogger();
    if (v173)
    {
      v174 = v173;
      v175 = object_getClass(self);
      v176 = class_isMetaClass(v175);
      v253 = object_getClassName(self);
      v263 = sel_getName(a2);
      v177 = 45;
      if (v176)
      {
        v177 = 43;
      }

      v174(6, "%c[%{public}s %{public}s]:%i [TSM] Revoking FiDO Keys %@", v177, v253, v263, 186, v172);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v178 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
    {
      v179 = object_getClass(self);
      if (class_isMetaClass(v179))
      {
        v180 = 43;
      }

      else
      {
        v180 = 45;
      }

      v181 = object_getClassName(self);
      v182 = sel_getName(a2);
      *buf = 67110146;
      v309 = v180;
      v310 = 2082;
      v311 = v181;
      v312 = 2082;
      v313 = v182;
      v314 = 1024;
      v315 = 186;
      v316 = 2112;
      v317 = v172;
      _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Revoking FiDO Keys %@", buf, 0x2Cu);
    }
  }

  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v183 = v172;
  v283 = [(__CFString *)v183 countByEnumeratingWithState:&v287 objects:v305 count:16];
  if (v283)
  {
    v184 = *v288;
    v277 = v183;
    v280 = *v288;
    do
    {
      for (m = 0; m != v283; m = m + 1)
      {
        if (*v288 != v184)
        {
          objc_enumerationMutation(v183);
        }

        v186 = *(*(&v287 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v187 = [(__CFString *)v186 NF_stringForKey:@"relyingParty"];
          v188 = [(__CFString *)v186 NF_stringForKey:@"rpAccountHash"];
          v189 = [(__CFString *)v186 NF_stringForKey:@"keyHash"];
          v190 = [NSData NF_dataWithHexString:v189];
          v191 = v190;
          if (v187)
          {
            v192 = v188 == 0;
          }

          else
          {
            v192 = 1;
          }

          if (v192 || v190 == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v194 = NFLogGetLogger();
            if (v194)
            {
              v195 = v194;
              v196 = object_getClass(self);
              v278 = v191;
              v197 = v188;
              v198 = v183;
              v199 = v189;
              v200 = class_isMetaClass(v196);
              v254 = object_getClassName(self);
              v264 = sel_getName(a2);
              v63 = !v200;
              v189 = v199;
              v183 = v198;
              v188 = v197;
              v191 = v278;
              v201 = 45;
              if (!v63)
              {
                v201 = 43;
              }

              v195(3, "%c[%{public}s %{public}s]:%i Invalid FiDO Key Revoke directive %{public}@", v201, v254, v264, 198, v186);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v218 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
            {
              v202 = object_getClass(self);
              if (class_isMetaClass(v202))
              {
                v203 = 43;
              }

              else
              {
                v203 = 45;
              }

              v204 = object_getClassName(self);
              v205 = sel_getName(a2);
              *buf = 67110146;
              v309 = v203;
              v310 = 2082;
              v311 = v204;
              v312 = 2082;
              v313 = v205;
              v314 = 1024;
              v315 = 198;
              v316 = 2114;
              v317 = v186;
              _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid FiDO Key Revoke directive %{public}@", buf, 0x2Cu);
            }
          }

          else
          {
            v279 = v189;
            v218 = [SEFidoKeySearchParameters withRelyingParty:v187 relyingPartyAccountHash:v188 fidoKeyHash:v190];
            v219 = +[SEFidoKeyService shared];
            seSession = self->_seSession;
            v221 = self->_targetSEID;
            v286 = 0;
            v222 = [v219 deleteFidoKeyFor:v218 usingSession:seSession withSessionSEID:v221 error:&v286];
            v223 = v286;

            if (v222)
            {
              v224 = v223 == 0;
            }

            else
            {
              v224 = 0;
            }

            if (!v224)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v225 = NFLogGetLogger();
              if (v225)
              {
                v226 = v225;
                v227 = object_getClass(self);
                v228 = class_isMetaClass(v227);
                v229 = object_getClassName(self);
                v265 = sel_getName(a2);
                v230 = 45;
                if (v228)
                {
                  v230 = 43;
                }

                v226(3, "%c[%{public}s %{public}s]:%i Failed to revoke FiDO Key %{public}@ : %{public}@", v230, v229, v265, 211, v186, v223);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v231 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
              {
                v232 = object_getClass(self);
                if (class_isMetaClass(v232))
                {
                  v233 = 43;
                }

                else
                {
                  v233 = 45;
                }

                v234 = object_getClassName(self);
                v235 = sel_getName(a2);
                *buf = 67110402;
                v309 = v233;
                v310 = 2082;
                v311 = v234;
                v312 = 2082;
                v313 = v235;
                v314 = 1024;
                v315 = 211;
                v316 = 2114;
                v317 = v186;
                v318 = 2114;
                v319 = v223;
                _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to revoke FiDO Key %{public}@ : %{public}@", buf, 0x36u);
              }
            }

            v183 = v277;
            v189 = v279;
          }

          v184 = v280;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v206 = NFLogGetLogger();
          if (v206)
          {
            v207 = v206;
            v208 = object_getClass(self);
            v209 = class_isMetaClass(v208);
            v210 = object_getClassName(self);
            v211 = sel_getName(a2);
            v272 = objc_opt_class();
            v212 = 45;
            if (v209)
            {
              v212 = 43;
            }

            v207(3, "%c[%{public}s %{public}s]:%i Element in %{public}@ Expected Dictionary, got %{public}@", v212, v210, v211, 189, @"FiDOKeyRevokeList", v272);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v187 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            v213 = object_getClass(self);
            if (class_isMetaClass(v213))
            {
              v214 = 43;
            }

            else
            {
              v214 = 45;
            }

            v215 = object_getClassName(self);
            v216 = sel_getName(a2);
            v217 = objc_opt_class();
            *buf = 67110402;
            v309 = v214;
            v310 = 2082;
            v311 = v215;
            v312 = 2082;
            v313 = v216;
            v314 = 1024;
            v315 = 189;
            v316 = 2114;
            v317 = @"FiDOKeyRevokeList";
            v318 = 2114;
            v319 = v217;
            _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Element in %{public}@ Expected Dictionary, got %{public}@", buf, 0x36u);
          }
        }
      }

      v283 = [(__CFString *)v183 countByEnumeratingWithState:&v287 objects:v305 count:16];
    }

    while (v283);
  }

  v236 = [notificationCopy NF_numberForKey:@"spManagedStart"];
  if (v236)
  {
    if (byte_10005BAB0 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v237 = NFLogGetLogger();
      if (v237)
      {
        v238 = v237;
        v239 = object_getClass(self);
        v240 = class_isMetaClass(v239);
        v241 = object_getClassName(self);
        v266 = sel_getName(a2);
        v242 = 45;
        if (v240)
        {
          v242 = 43;
        }

        v238(6, "%c[%{public}s %{public}s]:%i [TSM] SP managed script start", v242, v241, v266, 218);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v243 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
      {
        v244 = object_getClass(self);
        if (class_isMetaClass(v244))
        {
          v245 = 43;
        }

        else
        {
          v245 = 45;
        }

        v246 = object_getClassName(self);
        v247 = sel_getName(a2);
        *buf = 67109890;
        v309 = v245;
        v310 = 2082;
        v311 = v246;
        v312 = 2082;
        v313 = v247;
        v314 = 1024;
        v315 = 218;
        _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] SP managed script start", buf, 0x22u);
      }
    }

    bOOLValue = [v236 BOOLValue];
    self->_spManagedScript = bOOLValue;
    if (bOOLValue)
    {
      self->_notifySPInstallScriptStart = 1;
    }
  }
}

- (void)_postProcessNotification:(id)notification executionStatus:(BOOL)status regionIdentifier:(id)identifier
{
  statusCopy = status;
  notificationCopy = notification;
  identifierCopy = identifier;
  v10 = [notificationCopy NF_stringForKey:@"type"];
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:@"restrictedModeExited"] && statusCopy)
    {
      [(NFSecureElementManagerSession *)self->_seSession didExitRestrictedMode:self->_targetSEID];
      [(NSMutableDictionary *)self->_endMetric setObject:&__kCFBooleanTrue forKeyedSubscript:@"restrictedModeExit"];
    }

    else if ([v11 isEqualToString:@"cleanupPerformed"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i CleanupPerformed", v26, ClassName, Name, 242);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(self);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        *buf = 67109890;
        v87 = v29;
        v88 = 2082;
        v89 = object_getClassName(self);
        v90 = 2082;
        v91 = sel_getName(a2);
        v92 = 1024;
        v93 = 242;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CleanupPerformed", buf, 0x22u);
      }

      v30 = SESEndPointAppletCleanup();
      if (v30)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v32 = v31;
          v33 = object_getClass(self);
          v34 = class_isMetaClass(v33);
          v71 = object_getClassName(self);
          v74 = sel_getName(a2);
          v35 = 45;
          if (v34)
          {
            v35 = 43;
          }

          v32(3, "%c[%{public}s %{public}s]:%i SESEndPointAppletCleanup failed: %@", v35, v71, v74, 245, v30);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = object_getClass(self);
          if (class_isMetaClass(v37))
          {
            v38 = 43;
          }

          else
          {
            v38 = 45;
          }

          v39 = object_getClassName(self);
          v40 = sel_getName(a2);
          *buf = 67110146;
          v87 = v38;
          v88 = 2082;
          v89 = v39;
          v90 = 2082;
          v91 = v40;
          v92 = 1024;
          v93 = 245;
          v94 = 2112;
          v95 = v30;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SESEndPointAppletCleanup failed: %@", buf, 0x2Cu);
        }
      }
    }

    else if ([v11 isEqualToString:@"appletChanged"])
    {
      v18 = [notificationCopy NF_stringForKey:@"aid"];
      if ([v18 length])
      {
        v41 = [NSData NF_dataWithHexString:v18];
        if (v41)
        {
          [(NSMutableDictionary *)self->_endMetric setObject:v41 forKeyedSubscript:@"aid"];
        }

        if (statusCopy)
        {
          [(NFRemoteAdminSession *)self processAppletChanged:v18 regionIdentifier:identifierCopy];
        }
      }

      v77 = identifierCopy;
      v78 = notificationCopy;
      v42 = [notificationCopy NF_arrayForKey:@"aids"];
      v43 = objc_opt_new();
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = v42;
      v44 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v82;
        while (2)
        {
          for (i = 0; i != v45; i = i + 1)
          {
            if (*v82 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v81 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v60 = NFLogGetLogger();
              if (v60)
              {
                v61 = v60;
                v62 = object_getClass(self);
                v63 = class_isMetaClass(v62);
                v64 = object_getClassName(self);
                v76 = sel_getName(a2);
                v65 = 45;
                if (v63)
                {
                  v65 = 43;
                }

                v61(3, "%c[%{public}s %{public}s]:%i target AID is not NSString!", v65, v64, v76, 268);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v66 = NFSharedLogGetLogger();
              notificationCopy = v78;
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                v67 = object_getClass(self);
                if (class_isMetaClass(v67))
                {
                  v68 = 43;
                }

                else
                {
                  v68 = 45;
                }

                v69 = object_getClassName(self);
                v70 = sel_getName(a2);
                *buf = 67109890;
                v87 = v68;
                v88 = 2082;
                v89 = v69;
                v90 = 2082;
                v91 = v70;
                v92 = 1024;
                v93 = 268;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i target AID is not NSString!", buf, 0x22u);
              }

              identifierCopy = v77;
              goto LABEL_68;
            }

            [v43 addObject:v48];
          }

          v45 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

      identifierCopy = v77;
      if ([v43 count] && statusCopy)
      {
        [(NFRemoteAdminSession *)self processAppletsDeleted:v43 regionIdentifier:v77];
      }

      notificationCopy = v78;
    }

    v18 = [notificationCopy NF_numberForKey:@"mfdAllPostExecution"];
    if ([v18 BOOLValue])
    {
      if (byte_10005BAB0 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v50 = v49;
          v51 = object_getClass(self);
          v52 = class_isMetaClass(v51);
          v53 = object_getClassName(self);
          v75 = sel_getName(a2);
          v54 = 45;
          if (v52)
          {
            v54 = 43;
          }

          v50(6, "%c[%{public}s %{public}s]:%i [TSM] Deleting all applets", v54, v53, v75, 282);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v55 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = object_getClass(self);
          if (class_isMetaClass(v56))
          {
            v57 = 43;
          }

          else
          {
            v57 = 45;
          }

          v58 = object_getClassName(self);
          v59 = sel_getName(a2);
          *buf = 67109890;
          v87 = v57;
          v88 = 2082;
          v89 = v58;
          v90 = 2082;
          v91 = v59;
          v92 = 1024;
          v93 = 282;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Deleting all applets", buf, 0x22u);
        }
      }

      [(NFSecureElementManagerSession *)self->_seSession deleteAllApplets:0];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v13 = v12;
      v14 = object_getClass(self);
      v15 = class_isMetaClass(v14);
      v16 = object_getClassName(self);
      v72 = sel_getName(a2);
      v17 = 45;
      if (v15)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Missing notification type", v17, v16, v72, 231);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67109890;
      v87 = v20;
      v88 = 2082;
      v89 = object_getClassName(self);
      v90 = 2082;
      v91 = sel_getName(a2);
      v92 = 1024;
      v93 = 231;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing notification type", buf, 0x22u);
    }
  }

LABEL_68:
}

- (void)processAppletChanged:(id)changed regionIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  v9 = sub_100033310();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    v30 = identifierCopy;
    Class = object_getClass(self);
    if (class_isMetaClass(Class))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    ClassName = object_getClassName(self);
    v15 = a2;
    Name = sel_getName(a2);
    v17 = v9;
    if (self)
    {
      serverState = self->_serverState;
    }

    else
    {
      serverState = 0;
    }

    v19 = serverState;
    serverIdentifier = [(NFRemoteAdminState *)v19 serverIdentifier];
    v11(6, "%c[%{public}s %{public}s]:%i updating aid %{public}@ with topic %{public}@", v13, ClassName, Name, 292, changedCopy, serverIdentifier);

    v9 = v17;
    identifierCopy = v30;
    a2 = v15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    if (self)
    {
      v26 = self->_serverState;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    serverIdentifier2 = [(NFRemoteAdminState *)v27 serverIdentifier];
    *buf = 67110402;
    v32 = v23;
    v33 = 2082;
    v34 = v24;
    v35 = 2082;
    v36 = v25;
    v37 = 1024;
    v38 = 292;
    v39 = 2114;
    v40 = changedCopy;
    v41 = 2114;
    v42 = serverIdentifier2;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i updating aid %{public}@ with topic %{public}@", buf, 0x36u);
  }

  sub_1000369D4(v9, identifierCopy, changedCopy);
  if (self)
  {
    delegate = self->_delegate;
  }

  else
  {
    delegate = 0;
  }

  [(NFRemoteAdminSessionDelegate *)delegate handleAppletStateChange:changedCopy];
}

- (void)processAppletsDeleted:(id)deleted regionIdentifier:(id)identifier
{
  deletedCopy = deleted;
  identifierCopy = identifier;
  v32 = sub_100033310();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = deletedCopy;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v31 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v12 = Logger;
          Class = object_getClass(self);
          if (class_isMetaClass(Class))
          {
            v14 = 43;
          }

          else
          {
            v14 = 45;
          }

          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          if (self)
          {
            serverState = self->_serverState;
          }

          else
          {
            serverState = 0;
          }

          v18 = serverState;
          serverIdentifier = [(NFRemoteAdminState *)v18 serverIdentifier];
          v12(6, "%c[%{public}s %{public}s]:%i updating aid %{public}@ with topic %{public}@", v14, ClassName, Name, 304, v10, serverIdentifier);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v20 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = object_getClass(self);
          if (class_isMetaClass(v21))
          {
            v22 = 43;
          }

          else
          {
            v22 = 45;
          }

          v23 = object_getClassName(self);
          v24 = sel_getName(a2);
          if (self)
          {
            v25 = self->_serverState;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;
          serverIdentifier2 = [(NFRemoteAdminState *)v26 serverIdentifier];
          *buf = 67110402;
          v40 = v22;
          v41 = 2082;
          v42 = v23;
          v43 = 2082;
          v44 = v24;
          v45 = 1024;
          v46 = 304;
          v47 = 2114;
          v48 = v10;
          v49 = 2114;
          v50 = serverIdentifier2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i updating aid %{public}@ with topic %{public}@", buf, 0x36u);
        }

        sub_1000369D4(v32, identifierCopy, v10);
        v9 = v9 + 1;
      }

      while (v8 != v9);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
      v8 = v28;
    }

    while (v28);
  }

  if (self)
  {
    delegate = self->_delegate;
  }

  else
  {
    delegate = 0;
  }

  [(NFRemoteAdminSessionDelegate *)delegate handleAppletsDeleted:obj];
}

- (BOOL)performRequest
{
  v3 = sub_100033310();
  if (self)
  {
    serverState = self->_serverState;
  }

  else
  {
    serverState = 0;
  }

  v5 = serverState;
  serverIdentifier = [(NFRemoteAdminState *)v5 serverIdentifier];
  v7 = sub_100037C1C(v3, serverIdentifier, self->_seSession);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v9 = Logger;
  if (v7)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i Performing request", v13, ClassName, Name, 321);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(self);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      v312 = v16;
      v313 = 2082;
      v314 = object_getClassName(self);
      v315 = 2082;
      v316 = sel_getName(a2);
      v317 = 1024;
      v318 = 321;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing request", buf, 0x22u);
    }

    v17 = objc_opt_new();
    v18 = objc_opt_new();
    connection = self->_connection;
    v20 = self->_serverState;
    httpHeaderInfo = [(NFRemoteAdminState *)v20 httpHeaderInfo];
    v22 = [(NFRemoteAdminConnection *)connection performRequest:@"get_pending_commands" body:v7 header:httpHeaderInfo response:v17 responseHeader:v18 httpStatus:0 duration:0 sessionError:0];

    if ((v22 | 8) == 0x19 || ([(NFRemoteAdminState *)self->_serverState setHttpHeaderInfo:v18], v22 == 18))
    {
      [NFExceptionsCALogger postAnalyticsTSMConnectivityException:v22];
    }

    abort = self->_abort;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    v25 = v24;
    if (abort)
    {
      if (v24)
      {
        v26 = object_getClass(self);
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(self);
        v269 = sel_getName(a2);
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i Aborted...", v29, v28, v269, 344);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = object_getClass(self);
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(self);
        v34 = sel_getName(a2);
        *buf = 67109890;
        v312 = v32;
        v313 = 2082;
        v314 = v33;
        v315 = 2082;
        v316 = v34;
        v317 = 1024;
        v318 = 344;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborted...", buf, 0x22u);
      }

      v35 = 0;
      v36 = 1;
    }

    else
    {
      if (!v22)
      {
        if (v24)
        {
          v54 = object_getClass(self);
          v55 = class_isMetaClass(v54);
          v56 = object_getClassName(self);
          v272 = sel_getName(a2);
          v57 = 45;
          if (v55)
          {
            v57 = 43;
          }

          v25(6, "%c[%{public}s %{public}s]:%i Request sent success", v57, v56, v272, 380);
        }

        v296 = v17;
        v297 = v18;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v58 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = object_getClass(self);
          if (class_isMetaClass(v59))
          {
            v60 = 43;
          }

          else
          {
            v60 = 45;
          }

          v61 = object_getClassName(self);
          v62 = sel_getName(a2);
          *buf = 67109890;
          v312 = v60;
          v313 = 2082;
          v314 = v61;
          v315 = 2082;
          v316 = v62;
          v317 = 1024;
          v318 = 380;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Request sent success", buf, 0x22u);
        }

        selfCopy = self;
        [(NFRemoteAdminState *)self->_serverState setUnsentScriptResponse:0];
        v295 = v7;
        [v7 objectForKeyedSubscript:@"SEStateInformation"];
        obj = v298 = v3;
        if (obj)
        {
          v307 = 0u;
          v308 = 0u;
          v305 = 0u;
          v306 = 0u;
          v63 = [obj countByEnumeratingWithState:&v305 objects:v310 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v306;
            do
            {
              for (i = 0; i != v64; i = i + 1)
              {
                if (*v306 != v65)
                {
                  objc_enumerationMutation(obj);
                }

                v67 = *(*(&v305 + 1) + 8 * i);
                v68 = [v67 objectForKeyedSubscript:@"secureElementType"];
                v69 = [v67 objectForKeyedSubscript:@"osUpdateInfo"];

                if (v69 && [v68 isEqualToString:@"JCOP"])
                {
                  if (byte_10005BAB0 == 1)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v70 = NFLogGetLogger();
                    if (v70)
                    {
                      v71 = v70;
                      v72 = object_getClass(selfCopy);
                      v73 = class_isMetaClass(v72);
                      v74 = object_getClassName(selfCopy);
                      v273 = sel_getName(a2);
                      v75 = 45;
                      if (v73)
                      {
                        v75 = 43;
                      }

                      v264 = v74;
                      v3 = v298;
                      v71(6, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", v75, v264, v273, 391);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v76 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                    {
                      v77 = object_getClass(selfCopy);
                      if (class_isMetaClass(v77))
                      {
                        v78 = 43;
                      }

                      else
                      {
                        v78 = 45;
                      }

                      v79 = object_getClassName(selfCopy);
                      v80 = sel_getName(a2);
                      *buf = 67109890;
                      v312 = v78;
                      v3 = v298;
                      v313 = 2082;
                      v314 = v79;
                      v315 = 2082;
                      v316 = v80;
                      v317 = 1024;
                      v318 = 391;
                      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", buf, 0x22u);
                    }
                  }

                  sub_100036DA0(v3, 0);
                }

                v81 = [v67 objectForKeyedSubscript:@"jsblCounterChanged"];

                if (v81)
                {
                  if (byte_10005BAB0 == 1)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v82 = NFLogGetLogger();
                    if (v82)
                    {
                      v83 = v82;
                      v84 = object_getClass(selfCopy);
                      v85 = class_isMetaClass(v84);
                      v86 = object_getClassName(selfCopy);
                      v274 = sel_getName(a2);
                      v87 = 45;
                      if (v85)
                      {
                        v87 = 43;
                      }

                      v83(6, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", v87, v86, v274, 397);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v88 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                    {
                      v89 = object_getClass(selfCopy);
                      if (class_isMetaClass(v89))
                      {
                        v90 = 43;
                      }

                      else
                      {
                        v90 = 45;
                      }

                      v91 = object_getClassName(selfCopy);
                      v92 = sel_getName(a2);
                      *buf = 67109890;
                      v312 = v90;
                      v313 = 2082;
                      v314 = v91;
                      v315 = 2082;
                      v316 = v92;
                      v317 = 1024;
                      v318 = 397;
                      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", buf, 0x22u);
                    }
                  }

                  sub_100036DA0(v3, 0);
                }
              }

              v64 = [obj countByEnumeratingWithState:&v305 objects:v310 count:16];
            }

            while (v64);
          }
        }

        v7 = v295;
        v93 = [v295 objectForKeyedSubscript:@"jsblCounterChanged"];

        v94 = selfCopy;
        if (v93)
        {
          if (byte_10005BAB0 == 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v95 = NFLogGetLogger();
            if (v95)
            {
              v96 = v95;
              v97 = object_getClass(selfCopy);
              v98 = class_isMetaClass(v97);
              v99 = object_getClassName(selfCopy);
              v275 = sel_getName(a2);
              v100 = 45;
              if (v98)
              {
                v100 = 43;
              }

              v96(6, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", v100, v99, v275, 404);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v101 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              v102 = object_getClass(selfCopy);
              if (class_isMetaClass(v102))
              {
                v103 = 43;
              }

              else
              {
                v103 = 45;
              }

              v104 = object_getClassName(selfCopy);
              v105 = sel_getName(a2);
              *buf = 67109890;
              v312 = v103;
              v313 = 2082;
              v314 = v104;
              v315 = 2082;
              v316 = v105;
              v317 = 1024;
              v318 = 404;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", buf, 0x22u);
            }
          }

          sub_100036DA0(v3, 0);
        }

        sub_10003707C(v3, 0);
        sub_1000377D4(v3);
        v18 = v297;
        if (selfCopy)
        {
          [(NFRemoteAdminState *)selfCopy->_serverState save];
          v106 = v17;
          v107 = v295;
          v108 = v3;
          if ([v106 count])
          {
            v289 = v108;
            v291 = [v106 NF_dictionaryForKey:@"kNotification"];
            v109 = [v106 objectForKeyedSubscript:@"kStartNewSession"];
            bOOLValue = [v109 BOOLValue];

            v294 = [v106 NF_stringForKey:@"kTaskId"];
            sela = [v106 NF_stringForKey:@"targetSEID"];
            v110 = [v106 objectForKeyedSubscript:@"kVersion"];
            integerValue = [v110 integerValue];

            v112 = [v107 objectForKeyedSubscript:@"kVersion"];
            integerValue2 = [v112 integerValue];

            if (integerValue != integerValue2)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v114 = NFLogGetLogger();
              if (v114)
              {
                v115 = v114;
                v116 = object_getClass(selfCopy);
                v117 = class_isMetaClass(v116);
                v118 = object_getClassName(selfCopy);
                v119 = sel_getName("_processServerResponse:originalRequest:storage:");
                v120 = [NSNumber numberWithInteger:integerValue2];
                v121 = [NSNumber numberWithInteger:integerValue];
                v276 = v119;
                v18 = v297;
                v122 = 45;
                if (v117)
                {
                  v122 = 43;
                }

                v115(4, "%c[%{public}s %{public}s]:%i Protocol version mismatch, expected=%{public}@, rcv=%{public}@", v122, v118, v276, 492, v120, v121);

                v3 = v298;
                v7 = v295;
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v123 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                v124 = object_getClass(selfCopy);
                if (class_isMetaClass(v124))
                {
                  v125 = 43;
                }

                else
                {
                  v125 = 45;
                }

                v126 = object_getClassName(selfCopy);
                v127 = sel_getName("_processServerResponse:originalRequest:storage:");
                v128 = [NSNumber numberWithInteger:integerValue2];
                v129 = [NSNumber numberWithInteger:integerValue];
                *buf = 67110402;
                v312 = v125;
                v18 = v297;
                v313 = 2082;
                v314 = v126;
                v315 = 2082;
                v316 = v127;
                v317 = 1024;
                v318 = 492;
                v319 = 2114;
                v320 = v128;
                v321 = 2114;
                *v322 = v129;
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Protocol version mismatch, expected=%{public}@, rcv=%{public}@", buf, 0x36u);
              }

              v94 = selfCopy;
            }

            v130 = sela;
            v131 = [NSData NF_dataWithHexString:sela];

            if (!v131)
            {

              v130 = 0;
            }

            v132 = v291;
            selb = v130;
            if ((v130 != 0) | bOOLValue & 1)
            {
              objc_storeStrong(&v94->_targetSEID, v130);
              if (v291 && v294)
              {
                [(NFRemoteAdminSession *)v94 _preprocessNotification:v291 withTaskID:v294];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v179 = NFLogGetLogger();
                if (v179)
                {
                  v180 = v179;
                  v181 = object_getClass(v94);
                  v182 = class_isMetaClass(v181);
                  v183 = object_getClassName(v94);
                  v280 = sel_getName("_processServerResponse:originalRequest:storage:");
                  v243 = !v182;
                  v130 = selb;
                  v184 = 45;
                  if (!v243)
                  {
                    v184 = 43;
                  }

                  v180(4, "%c[%{public}s %{public}s]:%i Invalid notification and task id", v184, v183, v280, 513);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v185 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
                {
                  v186 = object_getClass(v94);
                  if (class_isMetaClass(v186))
                  {
                    v187 = 43;
                  }

                  else
                  {
                    v187 = 45;
                  }

                  v188 = object_getClassName(v94);
                  v189 = sel_getName("_processServerResponse:originalRequest:storage:");
                  *buf = 67109890;
                  v312 = v187;
                  v313 = 2082;
                  v314 = v188;
                  v130 = selb;
                  v315 = 2082;
                  v316 = v189;
                  v317 = 1024;
                  v318 = 513;
                  _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid notification and task id", buf, 0x22u);
                }
              }

              if (bOOLValue)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v190 = NFLogGetLogger();
                if (v190)
                {
                  v191 = v190;
                  v192 = object_getClass(v94);
                  v193 = class_isMetaClass(v192);
                  v194 = object_getClassName(v94);
                  v281 = sel_getName("_processServerResponse:originalRequest:storage:");
                  v243 = !v193;
                  v130 = selb;
                  v195 = 45;
                  if (!v243)
                  {
                    v195 = 43;
                  }

                  v191(6, "%c[%{public}s %{public}s]:%i New session requested", v195, v194, v281, 518);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v196 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                {
                  v197 = object_getClass(v94);
                  if (class_isMetaClass(v197))
                  {
                    v198 = 43;
                  }

                  else
                  {
                    v198 = 45;
                  }

                  v199 = object_getClassName(v94);
                  v200 = sel_getName("_processServerResponse:originalRequest:storage:");
                  *buf = 67109890;
                  v312 = v198;
                  v313 = 2082;
                  v314 = v199;
                  v130 = selb;
                  v315 = 2082;
                  v316 = v200;
                  v317 = 1024;
                  v318 = 518;
                  _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New session requested", buf, 0x22u);
                }

                v94->_spManagedScript = 0;
                v35 = 1;
              }

              else
              {
                v293 = [v106 NF_dictionaryForKey:@"redirectRequest"];
                if ([v293 count])
                {
                  v201 = sub_1000389D0(v289, v294);
                  if (v201)
                  {
                    v202 = v201;
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v203 = NFLogGetLogger();
                    if (v203)
                    {
                      v204 = v203;
                      v205 = object_getClass(v94);
                      v206 = class_isMetaClass(v205);
                      v207 = object_getClassName(v94);
                      v282 = sel_getName("_processServerResponse:originalRequest:storage:");
                      v208 = 45;
                      if (v206)
                      {
                        v208 = 43;
                      }

                      v266 = v207;
                      v132 = v291;
                      v204(6, "%c[%{public}s %{public}s]:%i Redirect request is aready in queue", v208, v266, v282, 530);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v209 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
                    {
                      v210 = object_getClass(v94);
                      if (class_isMetaClass(v210))
                      {
                        v211 = 43;
                      }

                      else
                      {
                        v211 = 45;
                      }

                      v212 = object_getClassName(v94);
                      v213 = sel_getName("_processServerResponse:originalRequest:storage:");
                      *buf = 67109890;
                      v312 = v211;
                      v132 = v291;
                      v313 = 2082;
                      v314 = v212;
                      v315 = 2082;
                      v316 = v213;
                      v317 = 1024;
                      v318 = 530;
                      _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Redirect request is aready in queue", buf, 0x22u);
                    }

                    [(NFRemoteAdminState *)v202 setPendingImmediateRetry:1];
                    [(NFRemoteAdminRedirectState *)v202 save];
                  }

                  else
                  {
                    v300 = [NFRemoteAdminRedirectState alloc];
                    urlString = [(NFRemoteAdminConnection *)v94->_connection urlString];
                    serverIdentifier2 = [(NFRemoteAdminState *)v94->_serverState serverIdentifier];
                    v202 = [(NFRemoteAdminRedirectState *)v300 initWithDictionary:v106 sourceURL:urlString originator:serverIdentifier2];

                    httpHeaderInfo2 = [(NFRemoteAdminState *)v94->_serverState httpHeaderInfo];
                    [(NFRemoteAdminState *)v202 setHttpHeaderInfo:httpHeaderInfo2];

                    sub_1000388F0(v289, v202);
                  }

                  v94->_returnCode = 11;

                  v35 = 0;
                }

                else
                {
                  v214 = [NFSecureElement embeddedSecureElementWithError:0];
                  serialNumber = [v214 serialNumber];
                  v216 = [serialNumber caseInsensitiveCompare:v94->_targetSEID];

                  if (!v216)
                  {
                    [(NFRemoteAdminSession *)v94 _deactiveAllAppletsOnSE:v94->_targetSEID];
                  }

                  v217 = v106;
                  v218 = [v217 NF_dictionaryForKey:@"kNotification"];
                  v219 = [v217 NF_stringForKey:@"kBatchId"];
                  v220 = [v217 NF_stringForKey:@"kTaskId"];
                  v221 = objc_opt_new();
                  [v221 setSeid:v94->_targetSEID];
                  [v221 setIncludeAPDUDuration:1];
                  [v221 setDisableCompletionNotification:v94->_spManagedScript];
                  v222 = objc_opt_new();
                  v223 = [NSNumber numberWithInteger:2];
                  [v222 setObject:v223 forKeyedSubscript:@"kVersion"];

                  if (v219)
                  {
                    [v222 setObject:v219 forKeyedSubscript:@"kBatchId"];
                  }

                  if (v220)
                  {
                    [v222 setObject:v220 forKeyedSubscript:@"kTaskId"];
                  }

                  v287 = v219;
                  targetSEID = selfCopy->_targetSEID;
                  if (targetSEID)
                  {
                    [v222 setObject:targetSEID forKeyedSubscript:@"targetSEID"];
                  }

                  v225 = objc_opt_new();
                  [v222 setObject:v225 forKeyedSubscript:@"kCommandsResponse"];

                  [v222 setObject:@"UnexpectedInterruption" forKeyedSubscript:@"clientIncompleteReason"];
                  v226 = [NSNumber numberWithBool:1];
                  [v222 setObject:v226 forKeyedSubscript:@"incompletedExecution"];

                  [(NFRemoteAdminState *)selfCopy->_serverState setUnsentScriptResponse:v222];
                  v288 = v218;
                  v227 = [v218 NF_stringForKey:@"type"];
                  [v221 setToSystemOS:{objc_msgSend(v227, "isEqualToString:", @"restrictedModeExited"}];
                  seSession = selfCopy->_seSession;
                  v309 = 0;
                  v290 = [(NFSecureElementManagerSession *)seSession runScript:v217 parameters:v221 outputResults:&v309];
                  v229 = v309;
                  [(NFRemoteAdminState *)selfCopy->_serverState setUnsentScriptResponse:v229];
                  [(NFRemoteAdminState *)selfCopy->_serverState save];
                  outFinalSWStatus = [v221 outFinalSWStatus];
                  v231 = [NSNumber numberWithUnsignedInteger:outFinalSWStatus];
                  [(NSMutableDictionary *)selfCopy->_endMetric setObject:v231 forKeyedSubscript:@"status"];

                  v7 = v295;
                  if (byte_10005BAB0 == 1)
                  {
                    v286 = v220;
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v232 = NFLogGetLogger();
                    if (v232)
                    {
                      v233 = v232;
                      v234 = object_getClass(selfCopy);
                      v235 = class_isMetaClass(v234);
                      v236 = object_getClassName(selfCopy);
                      v283 = sel_getName("_executeScript:");
                      v237 = 45;
                      if (v235)
                      {
                        v237 = 43;
                      }

                      v267 = v236;
                      v7 = v295;
                      v233(6, "%c[%{public}s %{public}s]:%i [TSM] Execution result=%ld, lastAPDUStatus=0x%lx", v237, v267, v283, 467, v290, outFinalSWStatus);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v238 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                    {
                      v239 = object_getClass(selfCopy);
                      if (class_isMetaClass(v239))
                      {
                        v240 = 43;
                      }

                      else
                      {
                        v240 = 45;
                      }

                      v241 = object_getClassName(selfCopy);
                      v242 = sel_getName("_executeScript:");
                      *buf = 67110402;
                      v312 = v240;
                      v7 = v295;
                      v313 = 2082;
                      v314 = v241;
                      v315 = 2082;
                      v316 = v242;
                      v317 = 1024;
                      v318 = 467;
                      v319 = 2048;
                      v320 = v290;
                      v321 = 2048;
                      *v322 = outFinalSWStatus;
                      _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Execution result=%ld, lastAPDUStatus=0x%lx", buf, 0x36u);
                    }

                    v220 = v286;
                  }

                  if (v291)
                  {
                    if (v290)
                    {
                      v243 = 0;
                    }

                    else
                    {
                      v243 = outFinalSWStatus == 36864;
                    }

                    v244 = v243;
                    serverIdentifier3 = [(NFRemoteAdminState *)selfCopy->_serverState serverIdentifier];
                    [(NFRemoteAdminSession *)selfCopy _postProcessNotification:v291 executionStatus:v244 regionIdentifier:serverIdentifier3];
                  }

                  unsentScriptResponse = [(NFRemoteAdminState *)selfCopy->_serverState unsentScriptResponse];

                  v18 = v297;
                  v3 = v298;
                  v17 = v296;
                  if (unsentScriptResponse)
                  {
                    [(NFSecureElementManagerSession *)selfCopy->_seSession refreshSecureElement:selfCopy->_targetSEID];
                    v35 = 1;
                  }

                  else
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v250 = NFLogGetLogger();
                    if (v250)
                    {
                      v251 = v250;
                      v252 = object_getClass(selfCopy);
                      v253 = class_isMetaClass(v252);
                      v254 = object_getClassName(selfCopy);
                      v284 = sel_getName("_processServerResponse:originalRequest:storage:");
                      v255 = 45;
                      if (v253)
                      {
                        v255 = 43;
                      }

                      v251(3, "%c[%{public}s %{public}s]:%i C-APDU execution failure", v255, v254, v284, 560);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v256 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
                    {
                      v257 = object_getClass(selfCopy);
                      if (class_isMetaClass(v257))
                      {
                        v258 = 43;
                      }

                      else
                      {
                        v258 = 45;
                      }

                      v259 = object_getClassName(selfCopy);
                      v260 = sel_getName("_processServerResponse:originalRequest:storage:");
                      *buf = 67109890;
                      v312 = v258;
                      v313 = 2082;
                      v314 = v259;
                      v315 = 2082;
                      v316 = v260;
                      v317 = 1024;
                      v318 = 560;
                      _os_log_impl(&_mh_execute_header, v256, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i C-APDU execution failure", buf, 0x22u);
                    }

                    v35 = 0;
                    selfCopy->_returnCode = 4;
                  }

                  v132 = v291;
                }

                v130 = selb;
              }
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v168 = NFLogGetLogger();
              if (v168)
              {
                v169 = v168;
                v170 = object_getClass(v94);
                v171 = class_isMetaClass(v170);
                v172 = object_getClassName(v94);
                v279 = sel_getName("_processServerResponse:originalRequest:storage:");
                v243 = !v171;
                v130 = selb;
                v173 = 45;
                if (!v243)
                {
                  v173 = 43;
                }

                v169(3, "%c[%{public}s %{public}s]:%i Missing target SEID.  Halt TSM script execution", v173, v172, v279, 501);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v174 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
              {
                v175 = object_getClass(v94);
                if (class_isMetaClass(v175))
                {
                  v176 = 43;
                }

                else
                {
                  v176 = 45;
                }

                v177 = object_getClassName(v94);
                v178 = sel_getName("_processServerResponse:originalRequest:storage:");
                *buf = 67109890;
                v312 = v176;
                v313 = 2082;
                v314 = v177;
                v130 = selb;
                v315 = 2082;
                v316 = v178;
                v317 = 1024;
                v318 = 501;
                _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing target SEID.  Halt TSM script execution", buf, 0x22u);
              }

              v35 = 0;
              v94->_returnCode = 4;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v157 = NFLogGetLogger();
            if (v157)
            {
              v158 = v157;
              v159 = object_getClass(selfCopy);
              v160 = class_isMetaClass(v159);
              v161 = object_getClassName(selfCopy);
              v278 = sel_getName("_processServerResponse:originalRequest:storage:");
              v162 = 45;
              if (v160)
              {
                v162 = 43;
              }

              v158(6, "%c[%{public}s %{public}s]:%i no further action required", v162, v161, v278, 477);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v163 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
            {
              v164 = object_getClass(selfCopy);
              if (class_isMetaClass(v164))
              {
                v165 = 43;
              }

              else
              {
                v165 = 45;
              }

              v166 = object_getClassName(selfCopy);
              v167 = sel_getName("_processServerResponse:originalRequest:storage:");
              *buf = 67109890;
              v312 = v165;
              v313 = 2082;
              v314 = v166;
              v315 = 2082;
              v316 = v167;
              v317 = 1024;
              v318 = 477;
              _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i no further action required", buf, 0x22u);
            }

            v35 = 0;
            selfCopy->_returnCode = 0;
          }
        }

        else
        {
          [0 save];
          v261 = v17;
          v262 = v295;
          v263 = v3;
          v35 = 0;
        }

        goto LABEL_27;
      }

      if (v22 == 3)
      {
        if (v24)
        {
          v45 = object_getClass(self);
          v46 = class_isMetaClass(v45);
          v47 = object_getClassName(self);
          v271 = sel_getName(a2);
          v48 = 45;
          if (v46)
          {
            v48 = 43;
          }

          v25(6, "%c[%{public}s %{public}s]:%i Session abort", v48, v47, v271, 351);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = object_getClass(self);
          if (class_isMetaClass(v50))
          {
            v51 = 43;
          }

          else
          {
            v51 = 45;
          }

          v52 = object_getClassName(self);
          v53 = sel_getName(a2);
          *buf = 67109890;
          v312 = v51;
          v313 = 2082;
          v314 = v52;
          v315 = 2082;
          v316 = v53;
          v317 = 1024;
          v318 = 351;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session abort", buf, 0x22u);
        }

        [(NFRemoteAdminState *)self->_serverState setUnsentScriptResponse:0];
        [(NFRemoteAdminState *)self->_serverState save];
        v35 = 1;
        goto LABEL_27;
      }

      if (v24)
      {
        v133 = object_getClass(self);
        v134 = class_isMetaClass(v133);
        v265 = object_getClassName(self);
        v277 = sel_getName(a2);
        v135 = 45;
        if (v134)
        {
          v135 = 43;
        }

        v25(4, "%c[%{public}s %{public}s]:%i Request sent failed, status=%d", v135, v265, v277, 363, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v136 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        v137 = object_getClass(self);
        if (class_isMetaClass(v137))
        {
          v138 = 43;
        }

        else
        {
          v138 = 45;
        }

        v139 = object_getClassName(self);
        v140 = sel_getName(a2);
        *buf = 67110146;
        v312 = v138;
        v313 = 2082;
        v314 = v139;
        v315 = 2082;
        v316 = v140;
        v317 = 1024;
        v318 = 363;
        v319 = 1024;
        LODWORD(v320) = v22;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Request sent failed, status=%d", buf, 0x28u);
      }

      if (v22 != 25)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v141 = NFLogGetLogger();
        if (v141)
        {
          v142 = v141;
          v143 = object_getClass(self);
          v144 = class_isMetaClass(v143);
          v145 = object_getClassName(self);
          v146 = sel_getName(a2);
          if (v22 >= 0x4C)
          {
            v147 = 76;
          }

          else
          {
            v147 = v22;
          }

          v285 = off_100054D30[v147];
          v148 = 43;
          if (!v144)
          {
            v148 = 45;
          }

          v142(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v148, v145, v146, 365, @"Returned", v22, v285);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v149 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          v150 = object_getClass(self);
          if (class_isMetaClass(v150))
          {
            v151 = 43;
          }

          else
          {
            v151 = 45;
          }

          v152 = object_getClassName(self);
          v153 = sel_getName(a2);
          if (v22 >= 0x4C)
          {
            v154 = 76;
          }

          else
          {
            v154 = v22;
          }

          v155 = off_100054D30[v154];
          *buf = 67110658;
          v312 = v151;
          v313 = 2082;
          v314 = v152;
          v315 = 2082;
          v316 = v153;
          v317 = 1024;
          v318 = 365;
          v319 = 2112;
          v320 = @"Returned";
          v321 = 1024;
          *v322 = v22;
          *&v322[4] = 2080;
          *&v322[6] = v155;
          _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }

        v35 = 0;
        if ((v22 - 19) > 1)
        {
          v156 = 4;
        }

        else
        {
          v156 = 3;
        }

        self->_returnCode = v156;
        goto LABEL_27;
      }

      v35 = 0;
      v36 = 2;
    }

    self->_returnCode = v36;
LABEL_27:

    goto LABEL_38;
  }

  if (Logger)
  {
    v37 = object_getClass(self);
    v38 = class_isMetaClass(v37);
    v39 = object_getClassName(self);
    v270 = sel_getName(a2);
    v40 = 45;
    if (v38)
    {
      v40 = 43;
    }

    v9(3, "%c[%{public}s %{public}s]:%i Failed to get next request", v40, v39, v270, 316);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v41 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = object_getClass(self);
    if (class_isMetaClass(v42))
    {
      v43 = 43;
    }

    else
    {
      v43 = 45;
    }

    *buf = 67109890;
    v312 = v43;
    v313 = 2082;
    v314 = object_getClassName(self);
    v315 = 2082;
    v316 = sel_getName(a2);
    v317 = 1024;
    v318 = 316;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get next request", buf, 0x22u);
  }

  v35 = 0;
  self->_returnCode = 4;
LABEL_38:

  return v35;
}

- (BOOL)_openSessionWithTimeout:(unint64_t)timeout
{
  if (self->_allocateSESession)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_1000325E0;
    v44 = sub_1000325F0;
    v45 = &stru_100055408;
    v6 = sub_100016628();
    sub_10001B3A4(v6);

    v7 = dispatch_semaphore_create(0);
    v8 = +[NFHardwareManager sharedHardwareManager];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000325F8;
    v35[3] = &unk_100054FA0;
    v37 = &v40;
    v38 = &v46;
    v35[4] = self;
    v39 = a2;
    v9 = v7;
    v36 = v9;
    v10 = [v8 startSecureElementManagerSessionWithPriority:v35];

    v11 = 60 * timeout;
    if (60 * timeout <= 1)
    {
      v11 = 1;
    }

    if (timeout == -1)
    {
      v12 = -1;
    }

    else
    {
      v12 = v11;
    }

    v13 = 119;
    do
    {
      v14 = v12 - v13;
      if (v12 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
      }

      if (v12 < v13)
      {
        v14 = 0;
      }

      if (v12 == -1)
      {
        v12 = -1;
      }

      else
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = dispatch_time(0, 1000000000 * v13);
      v17 = dispatch_semaphore_wait(v9, v16);
      v18 = sub_100016628();
      sub_10001B3FC(v18);
    }

    while (v12 && v17);
    v19 = v41[5];
    objc_sync_enter(v19);
    if (v17)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v21 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v21(4, "%c[%{public}s %{public}s]:%i Timeout waiting for nfcd session to start", v25, ClassName, Name, 628);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = object_getClass(self);
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        v29 = object_getClassName(self);
        v30 = sel_getName(a2);
        *buf = 67109890;
        v51 = v28;
        v52 = 2082;
        v53 = v29;
        v54 = 2082;
        v55 = v30;
        v56 = 1024;
        v57 = 628;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Timeout waiting for nfcd session to start", buf, 0x22u);
      }

      *(v47 + 24) = 1;
      [v10 endSessionWithCompletion:&stru_100054FC0];
      seSession = self->_seSession;
      self->_seSession = 0;
    }

    objc_sync_exit(v19);

    v32 = sub_100016628();
    sub_10001B350(v32);

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v46, 8);
  }

  return self->_seSession != 0;
}

- (unsigned)_deactiveAllAppletsOnSE:(id)e
{
  eCopy = e;
  v6 = objc_opt_new();
  [v6 setSeid:eCopy];

  [v6 setDeactivateAllApps:1];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    seid = [v6 seid];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i Deactivating all applets on SEID:%{public}@", v14, ClassName, Name, 646, seid);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(self);
    v19 = sel_getName(a2);
    seid2 = [v6 seid];
    *buf = 67110146;
    v25 = v17;
    v26 = 2082;
    v27 = v18;
    v28 = 2082;
    v29 = v19;
    v30 = 1024;
    v31 = 646;
    v32 = 2114;
    v33 = seid2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deactivating all applets on SEID:%{public}@", buf, 0x2Cu);
  }

  seSession = self->_seSession;
  v22 = objc_opt_new();
  LODWORD(seSession) = [(NFSecureElementManagerSession *)seSession runScript:v22 parameters:v6 outputResults:0];

  return seSession;
}

- (unint64_t)run
{
  if (!self->_serverURL)
  {
    return 5;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_abort)
  {
    objc_sync_exit(selfCopy);

    return 1;
  }

  v82 = 0;
  v6 = [NFSecureElement embeddedSecureElementWithError:&v82];
  v7 = v82;
  if (!v6 || ([v6 available] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(a2);
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i eSE unavailable, aborting.  Error = %{public}@", v20, ClassName, Name, 667, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(selfCopy);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(selfCopy);
      v24 = sel_getName(a2);
      *buf = 67110146;
      v84 = v22;
      v85 = 2082;
      v86 = v23;
      v87 = 2082;
      v88 = v24;
      v89 = 1024;
      v90 = 667;
      v91 = 2114;
      v92 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i eSE unavailable, aborting.  Error = %{public}@", buf, 0x2Cu);
    }

    v5 = 1;
    goto LABEL_41;
  }

  serialNumber = [v6 serialNumber];
  objc_storeStrong(&selfCopy->_targetSEID, serialNumber);

  if (!selfCopy->_targetSEID)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(selfCopy);
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(selfCopy);
      v78 = sel_getName(a2);
      v30 = 45;
      if (v28)
      {
        v30 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Missing SEID", v30, v29, v78, 673);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v31 = object_getClass(selfCopy);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(selfCopy);
    v34 = sel_getName(a2);
    *buf = 67109890;
    v84 = v32;
    v85 = 2082;
    v86 = v33;
    v87 = 2082;
    v88 = v34;
    v89 = 1024;
    v90 = 673;
    v35 = "%c[%{public}s %{public}s]:%i Missing SEID";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v35, buf, 0x22u);
    goto LABEL_40;
  }

  v5 = [NFRemoteAdminConnectionHTTP alloc];
  v9 = [(NSURL *)self->_serverURL URLByAppendingPathComponent:@"v2"];
  v10 = selfCopy->_targetSEID;
  v11 = [NFSecureElement embeddedSecureElementWithError:0];
  v12 = [v5 initWithURL:v9 SEID:v10 showProprietaryHeaders:1 disableEVTrustValidation:{objc_msgSend(v11, "isProductionSigned") ^ 1}];
  connection = selfCopy->_connection;
  selfCopy->_connection = v12;

  v14 = selfCopy->_connection;
  if (!v14)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(selfCopy);
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(selfCopy);
      v79 = sel_getName(a2);
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Failed to create connection", v41, v40, v79, 683);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v42 = object_getClass(selfCopy);
    if (class_isMetaClass(v42))
    {
      v43 = 43;
    }

    else
    {
      v43 = 45;
    }

    v44 = object_getClassName(selfCopy);
    v45 = sel_getName(a2);
    *buf = 67109890;
    v84 = v43;
    v85 = 2082;
    v86 = v44;
    v87 = 2082;
    v88 = v45;
    v89 = 1024;
    v90 = 683;
    v35 = "%c[%{public}s %{public}s]:%i Failed to create connection";
    goto LABEL_39;
  }

  if ([(NFRemoteAdminConnection *)v14 connect])
  {
    v15 = selfCopy->_connection;
    selfCopy->_connection = 0;
LABEL_40:
    v5 = 4;
LABEL_41:

    v46 = 0;
    goto LABEL_42;
  }

  v46 = 1;
LABEL_42:

  objc_sync_exit(selfCopy);
  if (v46)
  {
    if ([(NFRemoteAdminSession *)selfCopy _openSessionWithTimeout:-1]&& selfCopy->_seSession)
    {
      *&selfCopy->_spManagedScript = 0;
      v47 = 201;
      while (1)
      {
        v48 = objc_autoreleasePoolPush();
        if (selfCopy->_abort)
        {
          break;
        }

        if (![(NFRemoteAdminSession *)selfCopy performRequest])
        {
          goto LABEL_70;
        }

        objc_autoreleasePoolPop(v48);
        if (--v47 <= 1)
        {
          goto LABEL_71;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFLogGetLogger();
      if (v60)
      {
        v61 = v60;
        v62 = object_getClass(selfCopy);
        v63 = class_isMetaClass(v62);
        v64 = object_getClassName(selfCopy);
        v81 = sel_getName(a2);
        v65 = 45;
        if (v63)
        {
          v65 = 43;
        }

        v61(5, "%c[%{public}s %{public}s]:%i Aborted: system shutting down", v65, v64, v81, 712);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = object_getClass(selfCopy);
        if (class_isMetaClass(v67))
        {
          v68 = 43;
        }

        else
        {
          v68 = 45;
        }

        v69 = object_getClassName(selfCopy);
        v70 = sel_getName(a2);
        *buf = 67109890;
        v84 = v68;
        v85 = 2082;
        v86 = v69;
        v87 = 2082;
        v88 = v70;
        v89 = 1024;
        v90 = 712;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborted: system shutting down", buf, 0x22u);
      }

      selfCopy->_returnCode = 1;
LABEL_70:
      objc_autoreleasePoolPop(v48);
LABEL_71:
      if (selfCopy->_allocateSESession)
      {
        [(NFSecureElementManagerSession *)selfCopy->_seSession endSessionWithCompletion:&stru_100054FE0];
      }

      [(NFRemoteAdminConnection *)selfCopy->_connection disconnect];
      if (selfCopy->_notifySPInstallScriptStart)
      {
        v71 = sub_100016628();
        v72 = v71;
        if (v71)
        {
          v73 = *(v71 + 224);
        }

        else
        {
          v73 = 0;
        }

        v74 = v73;
        [v74 sendXpcNotificationEventWithDictionary:&off_1000575E8];
      }

      return selfCopy->_returnCode;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(selfCopy);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(selfCopy);
        v80 = sel_getName(a2);
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v50(3, "%c[%{public}s %{public}s]:%i Failed to open SE session", v54, v53, v80, 699);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = object_getClass(selfCopy);
        if (class_isMetaClass(v56))
        {
          v57 = 43;
        }

        else
        {
          v57 = 45;
        }

        v58 = object_getClassName(selfCopy);
        v59 = sel_getName(a2);
        *buf = 67109890;
        v84 = v57;
        v85 = 2082;
        v86 = v58;
        v87 = 2082;
        v88 = v59;
        v89 = 1024;
        v90 = 699;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open SE session", buf, 0x22u);
      }

      [(NFRemoteAdminConnection *)selfCopy->_connection disconnect];
      return 4;
    }
  }

  return v5;
}

@end