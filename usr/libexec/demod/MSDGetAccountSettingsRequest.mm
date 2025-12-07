@interface MSDGetAccountSettingsRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDGetAccountSettingsRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDGetAccountSettingsRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  existingAccounts = [(MSDGetAccountSettingsRequest *)self existingAccounts];
  v4 = existingAccounts != 0;

  return v4;
}

- (id)getPostData
{
  v8[0] = @"UniqueDeviceID";
  deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
  v8[1] = @"ExistingAccounts";
  v9[0] = deviceUDID;
  existingAccounts = [(MSDGetAccountSettingsRequest *)self existingAccounts];
  v9[1] = existingAccounts;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  convertToNSData = [v5 convertToNSData];

  return convertToNSData;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  v25.receiver = self;
  v25.super_class = MSDGetAccountSettingsRequest;
  v7 = [(MSDServerRequest *)&v25 parseResponseForError:errorCopy andPayload:payload];
  error = [v7 error];

  if (!error)
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      getName = [(MSDServerRequest *)self getName];
      data = [v7 data];
      *buf = 138543618;
      v27 = getName;
      v28 = 2114;
      v29 = data;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: data from server: %{public}@", buf, 0x16u);
    }

    data2 = [v7 data];
    if (data2 && (v14 = data2, [v7 data], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v14, v16))
    {
      data3 = [v7 data];
      v18 = [NSDictionary dictionaryFromJsonData:data3];

      if (!v18)
      {
        v20 = sub_100063A54(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          getName2 = [(MSDServerRequest *)self getName];
          *buf = 138543362;
          v27 = getName2;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@: failed to convert data to dict", buf, 0xCu);
        }

        v24 = errorCopy;
        sub_1000C1390(&v24, 3727744512, @"Unexpected server response.");
        v18 = errorCopy;
        errorCopy = v24;
        goto LABEL_12;
      }
    }

    else
    {
      v18 = +[NSDictionary dictionary];
    }

    [v7 setAccountSettings:v18];
LABEL_12:
  }

  error2 = [v7 error];

  if (!error2)
  {
    [v7 setError:errorCopy];
  }

  return v7;
}

@end