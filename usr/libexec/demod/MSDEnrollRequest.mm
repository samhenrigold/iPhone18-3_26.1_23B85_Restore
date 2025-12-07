@interface MSDEnrollRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDEnrollRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDEnrollRequest;
  if ([(MSDCommandServerRequest *)&v6 isValid])
  {
    registrationInfo = [(MSDEnrollRequest *)self registrationInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)getPostData
{
  if ([(MSDEnrollRequest *)self isValid])
  {
    registrationInfo = [(MSDEnrollRequest *)self registrationInfo];
    v4 = [registrationInfo mutableCopy];

    v5 = +[NSTimeZone defaultTimeZone];
    name = [v5 name];
    [v4 setObject:name forKey:@"MSDTimeZone"];

    deviceName = [(MSDEnrollRequest *)self deviceName];

    if (deviceName)
    {
      deviceName2 = [(MSDEnrollRequest *)self deviceName];
      [v4 setObject:deviceName2 forKey:@"DeviceName"];
    }

    pairingCredentials = [(MSDEnrollRequest *)self pairingCredentials];

    if (pairingCredentials)
    {
      pairingCredentials2 = [(MSDEnrollRequest *)self pairingCredentials];
      [v4 setObject:pairingCredentials2 forKey:@"PairingCredential"];
    }

    v12 = sub_100063A54(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E58C0(v4, v12);
    }

    convertToNSData = [v4 convertToNSData];
  }

  else
  {
    convertToNSData = 0;
  }

  return convertToNSData;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v28.receiver = self;
  v28.super_class = MSDEnrollRequest;
  v8 = [(MSDServerRequest *)&v28 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v10 = 0;
    v13 = 0;
    goto LABEL_27;
  }

  v27 = errorCopy;
  v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v27];
  v11 = v27;

  if (!v10)
  {
    v13 = 0;
LABEL_26:
    errorCopy = v11;
LABEL_27:
    error2 = [v8 error];

    if (error2)
    {
      v11 = errorCopy;
    }

    else
    {
      v25 = errorCopy;
      sub_1000C1390(&v25, 3727744512, @"Unexpected server response.");
      v11 = v25;

      [v8 setError:v11];
    }

    goto LABEL_14;
  }

  isKindOfClass = [v10 objectForKey:@"Credential"];
  v13 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v19 = sub_100063A54(isKindOfClass);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5938(self);
    }

    v20 = [v10 objectForKey:@"Error"];
    v21 = v20;
    if (v20)
    {
      v22 = sub_100063A54(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E59C8(self);
      }

      v26 = v11;
      sub_1000C1390(&v26, 3727744512, v21);
      v23 = v26;

      v11 = v23;
    }

    goto LABEL_26;
  }

  [v8 setCredential:v13];
  v14 = [v10 objectForKey:@"Settings"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setSettingsDict:v14];
    }
  }

  v15 = [payloadCopy objectForKey:@"protocolVersion"];
  v16 = v15;
  if (v15)
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      v15 = [v8 setHubProtocolVersion:v16];
    }
  }

  v17 = sub_100063A54(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Enroll succeeded with response: %{public}@", buf, 0xCu);
  }

LABEL_14:

  return v8;
}

@end