@interface MSDCDNSessionTaskInfo
- (BOOL)isValid;
- (id)getRequestForTimeout:(double)timeout;
@end

@implementation MSDCDNSessionTaskInfo

- (BOOL)isValid
{
  v9.receiver = self;
  v9.super_class = MSDCDNSessionTaskInfo;
  if (![(MSDSessionTaskInfo *)&v9 isValid])
  {
    return 0;
  }

  urlSchema = [(MSDCDNSessionTaskInfo *)self urlSchema];
  if (urlSchema)
  {
    fileHash = [(MSDCDNSessionTaskInfo *)self fileHash];
    if (fileHash)
    {
      serverType = [(MSDCDNSessionTaskInfo *)self serverType];
      if (serverType)
      {
        credentialHeaders = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
        v7 = credentialHeaders != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getRequestForTimeout:(double)timeout
{
  urlSchema = [(MSDCDNSessionTaskInfo *)self urlSchema];
  if (!urlSchema || (v6 = urlSchema, [(MSDCDNSessionTaskInfo *)self urlSchema], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) == 0))
  {
    v19 = sub_100063A54(urlSchema);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1480();
    }

    goto LABEL_24;
  }

  credentialHeaders = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
  if (!credentialHeaders || (v10 = credentialHeaders, [(MSDCDNSessionTaskInfo *)self credentialHeaders], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v12 = objc_opt_isKindOfClass(), v11, v10, (v12 & 1) == 0))
  {
    v19 = sub_100063A54(credentialHeaders);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1408();
    }

    goto LABEL_24;
  }

  urlSchema2 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v14 = [urlSchema2 rangeOfString:@"/<prefix-"];
  v16 = v15;

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = sub_100063A54(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1378(self);
    }

    goto LABEL_24;
  }

  urlSchema3 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v19 = [urlSchema3 substringFromIndex:&v14[v16]];

  integerValue = [v19 integerValue];
  fileHash = [(MSDCDNSessionTaskInfo *)self fileHash];
  v22 = [fileHash length];

  if (v22 <= integerValue)
  {
    sub_1000D119C(self);
LABEL_24:
    request3 = 0;
    goto LABEL_29;
  }

  fileHash2 = [(MSDCDNSessionTaskInfo *)self fileHash];
  v24 = [fileHash2 substringToIndex:integerValue];

  urlSchema4 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v26 = [urlSchema4 substringToIndex:v14];
  fileHash3 = [(MSDCDNSessionTaskInfo *)self fileHash];
  v28 = [NSString stringWithFormat:@"%@/%@/%@", v26, v24, fileHash3];

  v29 = [NSURL URLWithString:v28];
  v30 = [NSMutableURLRequest requestWithURL:v29 cachePolicy:1 timeoutInterval:timeout];
  [(MSDSessionTaskInfo *)self setRequest:v30];

  request = [(MSDSessionTaskInfo *)self request];

  if (!request)
  {
    sub_1000D12F4(v28, v24);
    goto LABEL_24;
  }

  v46 = v28;
  v47 = v24;
  v48 = v19;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  selfCopy = self;
  credentialHeaders2 = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
  v34 = [credentialHeaders2 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    while (2)
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(credentialHeaders2);
        }

        v38 = *(*(&v49 + 1) + 8 * i);
        v39 = [v38 objectForKey:@"name"];
        v40 = [v38 objectForKey:@"value"];
        v41 = v40;
        if (!v39 || (objc_opt_class(), v40 = objc_opt_isKindOfClass(), (v40 & 1) == 0) || !v41 || (objc_opt_class(), v40 = objc_opt_isKindOfClass(), (v40 & 1) == 0))
        {
          v44 = sub_100063A54(v40);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_1000D1280();
          }

          request3 = 0;
          goto LABEL_28;
        }

        request2 = [(MSDSessionTaskInfo *)selfCopy request];
        [request2 addValue:v41 forHTTPHeaderField:v39];
      }

      v35 = [credentialHeaders2 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  request3 = [(MSDSessionTaskInfo *)selfCopy request];

LABEL_28:
  v19 = v48;
LABEL_29:

  return request3;
}

@end