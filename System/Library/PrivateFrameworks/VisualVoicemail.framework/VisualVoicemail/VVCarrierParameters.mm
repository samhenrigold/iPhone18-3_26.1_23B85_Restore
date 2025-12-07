@interface VVCarrierParameters
- (VVCarrierParameters)initWithService:(id)service;
- (id)parameterValueForKey:(id)key;
- (void)dealloc;
@end

@implementation VVCarrierParameters

- (VVCarrierParameters)initWithService:(id)service
{
  serviceCopy = service;
  v85.receiver = self;
  v85.super_class = VVCarrierParameters;
  v5 = [(VVCarrierParameters *)&v85 init];
  v71 = v5;
  if (v5)
  {
    v70 = serviceCopy;
    contextInfo = [serviceCopy contextInfo];
    telephonyClient = [serviceCopy telephonyClient];
    v6 = +[NSMutableDictionary dictionary];
    v5->mambaID = [serviceCopy getServiceObjLogPrefix];
    p_mambaID = &v5->mambaID;
    context = [contextInfo context];
    v97 = @"com.apple.voicemail.imap";
    v9 = [NSArray arrayWithObjects:&v97 count:1];
    v84 = 0;
    v10 = [telephonyClient context:context getCarrierBundleValue:v9 error:&v84];
    v11 = v84;

    if (v11)
    {
      v13 = sub_1000090B8(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8();
      }
    }

    else if (v10)
    {
      [v6 addEntriesFromDictionary:v10];
    }

    v96[0] = @"com.apple.voicemail.imap";
    v96[1] = @"AllowedIMAPServers";
    v14 = [NSArray arrayWithObjects:v96 count:2];
    context2 = [contextInfo context];
    v83 = v11;
    v16 = [telephonyClient context:context2 getCarrierBundleValue:v14 error:&v83];
    v17 = v83;

    if (v17)
    {
      v19 = sub_1000090B8(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8();
      }
    }

    else if (v16)
    {
      [v6 addEntriesFromDictionary:v16];
    }

    context3 = [contextInfo context];
    v95 = @"VVMIgnoresIntlDataRoaming";
    v21 = [NSArray arrayWithObjects:&v95 count:1];
    v82 = v17;
    v22 = [telephonyClient context:context3 getCarrierBundleValue:v21 error:&v82];
    v23 = v82;

    if (v23)
    {
      v25 = sub_1000090B8(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8();
      }
    }

    else if (v22)
    {
      [v6 setObject:v22 forKey:@"VVMIgnoresIntlDataRoaming"];
    }

    context4 = [contextInfo context];
    v94 = @"VVMRetryIntervals";
    v27 = [NSArray arrayWithObjects:&v94 count:1];
    v81 = v23;
    v28 = [telephonyClient context:context4 getCarrierBundleValue:v27 error:&v81];
    v29 = v81;

    if (v29)
    {
      v31 = sub_1000090B8(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8();
      }
    }

    else if (v28)
    {
      [v6 setObject:v28 forKey:@"VVMRetryIntervals"];
    }

    context5 = [contextInfo context];
    v93 = @"VVMDetachedStorageDisabled";
    v33 = [NSArray arrayWithObjects:&v93 count:1];
    v80 = v29;
    v34 = [telephonyClient context:context5 getCarrierBundleValue:v33 error:&v80];
    v35 = v80;

    if (v35)
    {
      v37 = sub_1000090B8(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8();
      }
    }

    else if (v34)
    {
      [v6 setObject:v34 forKey:@"VVMDetachedStorageDisabled"];
    }

    context6 = [contextInfo context];
    v92 = @"VVMNotificationFallbackTimeout";
    v39 = [NSArray arrayWithObjects:&v92 count:1];
    v79 = v35;
    v40 = [telephonyClient context:context6 getCarrierBundleValue:v39 error:&v79];
    v69 = v79;

    if (v69)
    {
      v42 = sub_1000090B8(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8();
      }
    }

    else if (v40)
    {
      [v6 setObject:v40 forKey:@"VVMNotificationFallbackTimeout"];
    }

    v43 = [telephonyClient carrierBundle:contextInfo];
    v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v43 isGreetingChangeSupportedForSubscription]);
    [v6 setObject:v44 forKey:@"GreetingChangeSupported"];

    v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v43 isPasswordChangeSupportedForSubscription]);
    [v6 setObject:v45 forKey:@"PasswordChangeSupported"];

    v68 = [NSBundle bundleForClass:objc_opt_class()];
    v46 = [v68 pathForResource:@"CarrierParameters-Default" ofType:@"plist"];
    if (v46)
    {
      v47 = [[NSDictionary alloc] initWithContentsOfFile:v46];
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      allKeys = [v47 allKeys];
      v49 = [allKeys countByEnumeratingWithState:&v75 objects:v91 count:16];
      if (v49)
      {
        v50 = *v76;
        do
        {
          for (i = 0; i != v49; i = i + 1)
          {
            if (*v76 != v50)
            {
              objc_enumerationMutation(allKeys);
            }

            v52 = *(*(&v75 + 1) + 8 * i);
            v53 = [v6 objectForKeyedSubscript:v52];
            v54 = v53 == 0;

            if (v54)
            {
              v55 = [v47 objectForKeyedSubscript:v52];
              [v6 setObject:v55 forKeyedSubscript:v52];
            }
          }

          v49 = [allKeys countByEnumeratingWithState:&v75 objects:v91 count:16];
        }

        while (v49);
      }
    }

    else
    {
      v47 = sub_1000090B8(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *p_mambaID;
        *buf = 136315394;
        *&buf[4] = v56;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s%sdefaultPath not found", buf, 0x16u);
      }
    }

    v57 = *p_mambaID;
    v74 = *p_mambaID;
    v59 = sub_1000090B8(v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      contextInfo2 = [v70 contextInfo];
      *buf = 136315650;
      *&buf[4] = v57;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v87 = 2112;
      v88 = contextInfo2;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s%sInitialized CarrierParameters for context %@:", buf, 0x20u);
    }

    *buf = off_1000ED750;
    *&buf[8] = &v74;
    v88 = buf;
    logger::CFTypeRefLogger();
    sub_100009514(buf);
    v61 = [v6 copy];
    [(VVCarrierParameters *)v71 setParameterValues:v61];

    v63 = sub_1000090B8(v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v71->mambaID;
      v65 = objc_opt_class();
      *buf = 136315906;
      *&buf[4] = mambaID;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v87 = 2112;
      v88 = v65;
      v89 = 2048;
      v90 = v71;
      v66 = v65;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Created", buf, 0x2Au);
    }

    serviceCopy = v70;
  }

  return v71;
}

- (void)dealloc
{
  v3 = sub_1000090B8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v8 = mambaID;
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2048;
    selfCopy = self;
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Deleted", buf, 0x2Au);
  }

  v6.receiver = self;
  v6.super_class = VVCarrierParameters;
  [(VVCarrierParameters *)&v6 dealloc];
}

- (id)parameterValueForKey:(id)key
{
  v3 = [(NSDictionary *)self->_parameterValues objectForKeyedSubscript:key];

  return v3;
}

@end