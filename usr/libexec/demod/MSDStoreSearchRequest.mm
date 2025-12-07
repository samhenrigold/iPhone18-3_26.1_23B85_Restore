@interface MSDStoreSearchRequest
- (id)getQueryItems;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDStoreSearchRequest

- (id)getQueryItems
{
  if ([(MSDDemoUnitServerRequest *)self isValid])
  {
    v3 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceLocaleCode = [v3 getCurrentDeviceLocaleCode];

    v5 = [NSMutableArray arrayWithCapacity:0];
    text = [(MSDStoreSearchRequest *)self text];
    v7 = [NSURLQueryItem queryItemWithName:@"text" value:text];

    [v5 addObject:v7];
    longitude = [(MSDStoreSearchRequest *)self longitude];
    if (longitude)
    {
      v9 = longitude;
      latitude = [(MSDStoreSearchRequest *)self latitude];

      if (latitude)
      {
        longitude2 = [(MSDStoreSearchRequest *)self longitude];
        stringValue = [longitude2 stringValue];
        v13 = [NSURLQueryItem queryItemWithName:@"longitude" value:stringValue];

        [v5 addObject:v13];
        latitude2 = [(MSDStoreSearchRequest *)self latitude];
        stringValue2 = [latitude2 stringValue];
        v7 = [NSURLQueryItem queryItemWithName:@"latitude" value:stringValue2];

        [v5 addObject:v7];
      }
    }

    v16 = [NSURLQueryItem queryItemWithName:@"locale_code" value:getCurrentDeviceLocaleCode];

    [v5 addObject:v16];
    v17 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceLanguage = [v17 getCurrentDeviceLanguage];
    v19 = [NSURLQueryItem queryItemWithName:@"language" value:getCurrentDeviceLanguage];

    [v5 addObject:v19];
    v20 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceRegion = [v20 getCurrentDeviceRegion];
    v22 = [NSURLQueryItem queryItemWithName:@"country" value:getCurrentDeviceRegion];

    [v5 addObject:v22];
    maxStoreResults = [(MSDStoreSearchRequest *)self maxStoreResults];

    if (maxStoreResults)
    {
      maxStoreResults2 = [(MSDStoreSearchRequest *)self maxStoreResults];
      stringValue3 = [maxStoreResults2 stringValue];
      v27 = [NSURLQueryItem queryItemWithName:@"max_store_results" value:stringValue3];

      v22 = v27;
    }

    v28 = sub_100063A54(v24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138543362;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Store search queries: %{public}@", &v30, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v26.receiver = self;
  v26.super_class = MSDStoreSearchRequest;
  v8 = [(MSDServerRequest *)&v26 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v13 = 0;
    v10 = 0;
  }

  else
  {
    v25 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v25];
    v11 = v25;

    if (v10)
    {
      v12 = [v10 objectForKey:@"store_results"];
      if (v12)
      {
        v13 = v12;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v24 = v11;
          v15 = [NSJSONSerialization dataWithJSONObject:v13 options:0 error:&v24];
          v16 = v24;

          [v8 setData:v15];
          data = [v8 data];

          if (data && !v16)
          {
            errorCopy = 0;
            goto LABEL_8;
          }

          v20 = sub_100063A54(v18);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1000D50FC(v16, v20);
          }

          v11 = v16;
        }

        else
        {
          v20 = sub_100063A54(isKindOfClass);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1000D5064(v13, v20);
          }
        }
      }

      else
      {
        v20 = sub_100063A54(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000D5174(v10, v20);
        }

        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    errorCopy = v11;
  }

  error2 = [v8 error];

  if (!error2)
  {
    v23 = errorCopy;
    sub_1000C1424(&v23, 3727744512, @"Unexpected server response.");
    v22 = v23;

    [v8 setError:v22];
    errorCopy = v22;
  }

LABEL_8:

  return v8;
}

@end