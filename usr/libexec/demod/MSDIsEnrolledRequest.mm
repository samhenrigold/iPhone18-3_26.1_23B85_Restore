@interface MSDIsEnrolledRequest
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDIsEnrolledRequest

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v20.receiver = self;
  v20.super_class = MSDIsEnrolledRequest;
  v8 = [(MSDServerRequest *)&v20 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v12 = 0;
    v10 = 0;
    v11 = errorCopy;
  }

  else
  {
    v19 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = [v10 objectForKey:@"Result"];
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v12 BOOLValue];
          if (bOOLValue)
          {
            v14 = sub_100063A54(bOOLValue);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              sub_1000E0394(v14);
            }
          }

          [v8 setIsEnrolled:{objc_msgSend(v12, "BOOLValue")}];
          goto LABEL_10;
        }
      }

      sub_1000E03D8(self, v10);
    }

    else
    {
      v12 = 0;
    }
  }

  error2 = [v8 error];

  if (!error2)
  {
    v18 = v11;
    sub_1000C1390(&v18, 3727744512, @"Unexpected server response.");
    v17 = v18;

    [v8 setError:v17];
    v11 = v17;
  }

LABEL_10:

  return v8;
}

@end