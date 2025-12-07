@interface MSDCheckInRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)getUrl;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDCheckInRequest

- (BOOL)isValid
{
  v8.receiver = self;
  v8.super_class = MSDCheckInRequest;
  if (![(MSDDemoUnitServerRequest *)&v8 isValid])
  {
    return 0;
  }

  serialNumber = [(MSDCheckInRequest *)self serialNumber];
  if (serialNumber)
  {
    osVersion = [(MSDCheckInRequest *)self osVersion];
    if (osVersion)
    {
      language = [(MSDCheckInRequest *)self language];
      v6 = language != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getPostData
{
  v15[0] = @"serial_number";
  serialNumber = [(MSDCheckInRequest *)self serialNumber];
  v16[0] = serialNumber;
  v15[1] = @"os_version";
  osVersion = [(MSDCheckInRequest *)self osVersion];
  v16[1] = osVersion;
  v15[2] = @"language";
  language = [(MSDCheckInRequest *)self language];
  v16[2] = language;
  v15[3] = @"country";
  countryCode = [(MSDCheckInRequest *)self countryCode];
  v16[3] = countryCode;
  v15[4] = @"has_factory_content";
  v7 = [NSNumber numberWithBool:[(MSDCheckInRequest *)self hasFactoryContent]];
  v16[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

  v10 = sub_100063A54(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request dictionary to check_in: %{public}@", &v13, 0xCu);
  }

  convertToNSData = [v8 convertToNSData];

  return convertToNSData;
}

- (id)getUrl
{
  deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
  v3 = [NSString stringWithFormat:@"/api/device/1/%@/check_in", deviceUDID];

  return v3;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v22.receiver = self;
  v22.super_class = MSDCheckInRequest;
  v8 = [(MSDServerRequest *)&v22 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v14 = 0;
    v10 = 0;
    v11 = errorCopy;
  }

  else
  {
    v21 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v21];
    v11 = v21;

    if (v10)
    {
      v12 = [v10 objectForKey:@"eligible"];
      v13 = v12;
      if (v12 && (objc_opt_class(), v12 = objc_opt_isKindOfClass(), (v12 & 1) != 0))
      {
        [v8 setEligible:{objc_msgSend(v13, "BOOLValue")}];
        v14 = [v10 objectForKey:@"show_ui"];

        if (v14)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            [v8 setShowUI:{objc_msgSend(v14, "BOOLValue")}];
            goto LABEL_8;
          }
        }

        v17 = sub_100063A54(isKindOfClass);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000D78C4(self);
        }

        v13 = v14;
      }

      else
      {
        v17 = sub_100063A54(v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000D78C4(self);
        }
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  error2 = [v8 error];

  if (!error2)
  {
    v20 = v11;
    sub_1000C1390(&v20, 3727744512, @"Unexpected server response.");
    v19 = v20;

    [v8 setError:v19];
    v11 = v19;
  }

LABEL_8:

  return v8;
}

@end