@interface MSDKVStoreRequest
- (BOOL)isValid;
- (id)getEndpoint;
- (id)getPostData;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDKVStoreRequest

- (BOOL)isValid
{
  v10.receiver = self;
  v10.super_class = MSDKVStoreRequest;
  isValid = [(MSDCommandServerRequest *)&v10 isValid];
  isPost = [(MSDKVStoreRequest *)self isPost];
  v5 = [(MSDKVStoreRequest *)self key];
  v6 = v5;
  if (isPost)
  {
    if (v5)
    {
      value = [(MSDKVStoreRequest *)self value];
      if (value)
      {
        v8 = isValid;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v5)
  {
    v8 = isValid;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getPostData
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  value = [(MSDKVStoreRequest *)self value];
  [v3 setObject:value forKey:@"value"];

  v5 = [(MSDKVStoreRequest *)self ttl];

  if (v5)
  {
    v6 = [(MSDKVStoreRequest *)self ttl];
    [v3 setObject:v6 forKey:@"ttl"];
  }

  convertToNSData = [v3 convertToNSData];

  return convertToNSData;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v52.receiver = self;
  v52.super_class = MSDKVStoreRequest;
  v8 = [(MSDServerRequest *)&v52 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v10 = 0;
    v11 = errorCopy;
LABEL_31:
    error2 = [v8 error];

    if (!error2)
    {
      v50 = v11;
      sub_1000C1390(&v50, 3727744512, @"Unexpected server response.");
      v49 = v50;

      [v8 setError:v49];
      v11 = v49;
    }

    goto LABEL_26;
  }

  if ([(MSDKVStoreRequest *)self isPost])
  {
    goto LABEL_27;
  }

  v51 = errorCopy;
  v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v51];
  v11 = v51;

  if (!v10)
  {
    goto LABEL_31;
  }

  v12 = [v10 objectForKeyedSubscript:@"value"];
  [v8 setValue:v12];

  value = [v8 value];
  if (!value || (v14 = value, [v8 value], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, v14, (isKindOfClass & 1) == 0))
  {
    sub_1000CA478(self);
    goto LABEL_31;
  }

  v17 = [v10 objectForKeyedSubscript:@"creationDate"];
  [v8 setCreationDate:v17];

  creationDate = [v8 creationDate];
  if (creationDate)
  {
    v19 = creationDate;
    creationDate2 = [v8 creationDate];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      v23 = sub_100063A54(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA1F8();
      }

      [v8 setCreationDate:0];
    }
  }

  v24 = [v10 objectForKeyedSubscript:@"setBy"];
  v25 = [v24 objectForKeyedSubscript:@"serial"];
  [v8 setCreatorSN:v25];

  creatorSN = [v8 creatorSN];
  if (creatorSN)
  {
    v27 = creatorSN;
    creationDate3 = [v8 creationDate];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if ((v29 & 1) == 0)
    {
      v31 = sub_100063A54(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA298();
      }

      [v8 setCreatorSN:0];
    }
  }

  v32 = [v10 objectForKeyedSubscript:@"setBy"];
  v33 = [v32 objectForKeyedSubscript:@"udid"];
  [v8 setCreatorUDID:v33];

  creatorUDID = [v8 creatorUDID];
  if (creatorUDID)
  {
    v35 = creatorUDID;
    creationDate4 = [v8 creationDate];
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    if ((v37 & 1) == 0)
    {
      v39 = sub_100063A54(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA338();
      }

      [v8 setCreatorUDID:0];
    }
  }

  v40 = [v10 objectForKeyedSubscript:@"modificationDate"];
  [v8 setModificationDate:v40];

  modificationDate = [v8 modificationDate];
  if (modificationDate)
  {
    v42 = modificationDate;
    modificationDate2 = [v8 modificationDate];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();

    if ((v44 & 1) == 0)
    {
      v46 = sub_100063A54(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA3D8();
      }

      [v8 setModificationDate:0];
    }
  }

LABEL_26:

  errorCopy = v11;
LABEL_27:

  return v8;
}

- (id)getEndpoint
{
  v2 = [(MSDKVStoreRequest *)self key];
  v3 = [NSString stringWithFormat:@"%@/%@", @"/KVStore", v2];

  return v3;
}

@end