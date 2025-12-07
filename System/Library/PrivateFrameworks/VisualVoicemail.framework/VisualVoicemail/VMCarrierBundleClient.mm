@interface VMCarrierBundleClient
- (BOOL)isGreetingChangeSupportedForSubscription;
- (BOOL)isPasswordChangeSupportedForSubscription;
- (BOOL)isServiceSupportedForSubscription;
- (BOOL)isServiceSupportedOnInternetForSubscription;
- (VMCarrierBundleClient)initWithTelephonyClient:(id)client context:(id)context;
- (id)cbValueForDomain:(id)domain key:(id)key;
- (id)cbValueForKey:(id)key;
- (id)serviceNameForSubscription;
- (unint64_t)maximumGreetingDurationForSubscription;
- (void)dealloc;
@end

@implementation VMCarrierBundleClient

- (VMCarrierBundleClient)initWithTelephonyClient:(id)client context:(id)context
{
  clientCopy = client;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = VMCarrierBundleClient;
  v8 = [(VMCarrierBundleClient *)&v16 init];
  if (v8)
  {
    [contextCopy slotID];
    v8->instanceID = ++qword_10010D788;
    v8->mambaID = calculateLogPrefix();
    [(VMCarrierBundleClient *)v8 setTelephonyClient:clientCopy];
    v9 = objc_opt_new();
    [(VMCarrierBundleClient *)v8 setValues:v9];

    v10 = [(VMCarrierBundleClient *)v8 setContext:contextCopy];
    v8->_accessorLock._os_unfair_lock_opaque = 0;
    v11 = sub_100002630(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v8->mambaID;
      v13 = objc_opt_class();
      *buf = 136316162;
      v18 = mambaID;
      v19 = 2080;
      v20 = " ";
      v21 = 2112;
      v22 = v13;
      v23 = 2048;
      v24 = v8;
      v25 = 2112;
      v26 = contextCopy;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Created for subscription %@", buf, 0x34u);
    }
  }

  return v8;
}

- (void)dealloc
{
  telephonyClient = [(VMCarrierBundleClient *)self telephonyClient];
  [telephonyClient removeDelegate:self];

  v5 = sub_100002630(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v10 = mambaID;
    v11 = 2080;
    v12 = " ";
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2048;
    selfCopy = self;
    v7 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Deleted", buf, 0x2Au);
  }

  v8.receiver = self;
  v8.super_class = VMCarrierBundleClient;
  [(VMCarrierBundleClient *)&v8 dealloc];
}

- (BOOL)isGreetingChangeSupportedForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForKey:@"VVMGreetingChangesSupported"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (unint64_t)maximumGreetingDurationForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForDomain:@"com.apple.voicemail.imap" key:@"MaxGreetingDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (BOOL)isPasswordChangeSupportedForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForKey:@"VVMPasswordChangesSupported"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)serviceNameForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForKey:@"VisualVoicemailServiceName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isServiceSupportedForSubscription
{
  v3 = [(VMCarrierBundleClient *)self cbValueForKey:@"SupportsVoicemail"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v3 BOOLValue])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = [(VMCarrierBundleClient *)self cbValueForKey:@"ShouldHideAllVoicemailUI"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }

    v3 = v4;
  }

  return v5;
}

- (BOOL)isServiceSupportedOnInternetForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForKey:@"AllowedServicesTypeMaskOnInternet"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = ([v2 unsignedIntValue] >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)cbValueForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  context = [(VMCarrierBundleClient *)self context];
  v5Context = [context context];

  values = [(VMCarrierBundleClient *)self values];
  v8 = [values objectForKey:keyCopy];
  if (!v8)
  {
    telephonyClient = [(VMCarrierBundleClient *)self telephonyClient];
    v31 = keyCopy;
    v10 = [NSArray arrayWithObjects:&v31 count:1];
    v20 = 0;
    v8 = [telephonyClient context:v5Context getCarrierBundleValue:v10 error:&v20];
    v11 = v20;

    if (v11)
    {
      v13 = sub_100002630(v12);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_12;
      }

      mambaID = self->mambaID;
      context2 = [(VMCarrierBundleClient *)self context];
      *buf = 136316162;
      v22 = mambaID;
      v23 = 2080;
      v24 = " ";
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = context2;
      v29 = 2112;
      v30 = v11;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#E %s%sCould not retrieve carrier bundle key %@ value for subscription %@ with error %@", buf, 0x34u);
    }

    else
    {
      if (v8)
      {
        v16 = [values setObject:v8 forKey:keyCopy];
      }

      else
      {
        v17 = +[NSNull null];
        [values setObject:v17 forKey:keyCopy];
      }

      v13 = sub_100002630(v16);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v18 = self->mambaID;
      context2 = [(VMCarrierBundleClient *)self context];
      *buf = 136316162;
      v22 = v18;
      v23 = 2080;
      v24 = " ";
      v25 = 2112;
      v26 = keyCopy;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = context2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved carrier bundle key %@ value %@ for subscription %@", buf, 0x34u);
    }

    goto LABEL_11;
  }

LABEL_12:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return v8;
}

- (id)cbValueForDomain:(id)domain key:(id)key
{
  domainCopy = domain;
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  context = [(VMCarrierBundleClient *)self context];
  v8Context = [context context];

  values = [(VMCarrierBundleClient *)self values];
  v11 = [values objectForKey:domainCopy];
  if (!v11)
  {
    v11 = objc_opt_new();
  }

  v12 = [v11 objectForKey:keyCopy];
  if (!v12)
  {
    telephonyClient = [(VMCarrierBundleClient *)self telephonyClient];
    v39[0] = domainCopy;
    v39[1] = keyCopy;
    v14 = [NSArray arrayWithObjects:v39 count:2];
    v26 = 0;
    v12 = [telephonyClient context:v8Context getCarrierBundleValue:v14 error:&v26];
    v15 = v26;

    if (v15)
    {
      v17 = sub_100002630(v16);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      mambaID = self->mambaID;
      context2 = [(VMCarrierBundleClient *)self context];
      *buf = 136316418;
      v28 = mambaID;
      v29 = 2080;
      v30 = " ";
      v31 = 2112;
      v32 = keyCopy;
      v33 = 2112;
      v34 = domainCopy;
      v35 = 2112;
      v36 = context2;
      v20 = context2;
      v37 = 2112;
      v38 = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#E %s%sCould not retrieve carrier bundle key %@ domain %@ value for subscription %@ with error %@", buf, 0x3Eu);
    }

    else
    {
      if (v12)
      {
        v21 = [v11 setObject:v12 forKey:keyCopy];
      }

      else
      {
        v22 = +[NSNull null];
        [v11 setObject:v22 forKey:keyCopy];
      }

      v17 = sub_100002630(v21);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v23 = self->mambaID;
      context3 = [(VMCarrierBundleClient *)self context];
      *buf = 136316418;
      v28 = v23;
      v29 = 2080;
      v30 = " ";
      v31 = 2112;
      v32 = keyCopy;
      v33 = 2112;
      v34 = domainCopy;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = context3;
      v20 = context3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved carrier bundle key %@ domain %@ value %@ for subscription %@", buf, 0x3Eu);
    }

    goto LABEL_13;
  }

LABEL_14:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return v12;
}

@end