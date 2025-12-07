@interface MSDGetContinuitySettingsRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDGetContinuitySettingsRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDGetContinuitySettingsRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  existingAccounts = [(MSDGetContinuitySettingsRequest *)self existingAccounts];
  v4 = existingAccounts != 0;

  return v4;
}

- (id)getPostData
{
  v9[0] = @"UniqueDeviceID";
  deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
  v10[0] = deviceUDID;
  v9[1] = @"IdentityServicesID";
  identityServicesID = [(MSDGetContinuitySettingsRequest *)self identityServicesID];
  v10[1] = identityServicesID;
  v9[2] = @"ExistingAccounts";
  existingAccounts = [(MSDGetContinuitySettingsRequest *)self existingAccounts];
  v10[2] = existingAccounts;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  convertToNSData = [v6 convertToNSData];

  return convertToNSData;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v47.receiver = self;
  v47.super_class = MSDGetContinuitySettingsRequest;
  v8 = [(MSDServerRequest *)&v47 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (!error)
  {
    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      getName = [(MSDServerRequest *)self getName];
      data = [v8 data];
      *buf = 138543618;
      v49 = getName;
      v50 = 2114;
      v51 = data;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: data from server: %{public}@", buf, 0x16u);
    }

    v14 = [payloadCopy objectForKey:@"statusCode"];
    if (!v14)
    {
      v17 = sub_100063A54(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        getName2 = [(MSDServerRequest *)self getName];
        sub_1000792B4();
        v51 = @"statusCode";
        sub_1000792C8(&_mh_execute_header, v38, v39, "%{public}@ response payload does not contain: %{public}@", v40, v41, v42, v43, v45, v46, v47.receiver, v47.super_class);
      }

      v15 = 0;
      goto LABEL_16;
    }

    v15 = v14;
    if ([(__CFString *)v14 intValue]== 200 || (v16 = [(__CFString *)v15 intValue], v16 == 202))
    {
      v17 = [payloadCopy objectForKey:@"retryAfter"];
      if ([(__CFString *)v15 intValue]== 202)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      [v8 setRetryAfter:v18];
      data2 = [v8 data];
      if (data2)
      {
        v20 = data2;
        data3 = [v8 data];
        v22 = [data3 length];

        if (v22)
        {
          data4 = [v8 data];
          v24 = [NSDictionary dictionaryFromJsonData:data4];

          if (v24)
          {
            [v8 setContinuityDict:v24];
          }

          else
          {
            v35 = sub_100063A54(v25);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              getName3 = [(MSDServerRequest *)self getName];
              *buf = 138543362;
              v49 = getName3;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@: failed to convert data to dict", buf, 0xCu);
            }

            v46 = errorCopy;
            sub_1000C1390(&v46, 3727744512, @"Unexpected server response.");
            v36 = v46;

            errorCopy = v36;
          }

          goto LABEL_16;
        }
      }

      getName4 = +[NSDictionary dictionary];
      [v8 setContinuityDict:getName4];
    }

    else
    {
      v17 = sub_100063A54(v16);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      getName4 = [(MSDServerRequest *)self getName];
      sub_1000792B4();
      v51 = v15;
      sub_1000792C8(&_mh_execute_header, v29, v30, "%{public}@: HTTP status code is %{public}@.", v31, v32, v33, v34, v45, v46, v47.receiver, v47.super_class);
    }

LABEL_16:
    goto LABEL_17;
  }

  v15 = 0;
LABEL_17:
  error2 = [v8 error];

  if (!error2)
  {
    [v8 setError:errorCopy];
  }

  return v8;
}

@end