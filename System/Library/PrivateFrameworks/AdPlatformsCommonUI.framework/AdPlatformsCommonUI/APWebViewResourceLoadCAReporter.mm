@interface APWebViewResourceLoadCAReporter
+ (BOOL)_isHTTPOrHTTPSURL:(id)l;
+ (void)_parseResourceLoadResultForError:(id)error response:(id)response result:(int64_t *)result errorDomain:(id *)domain errorCode:(int64_t *)code;
@end

@implementation APWebViewResourceLoadCAReporter

+ (BOOL)_isHTTPOrHTTPSURL:(id)l
{
  v3 = objc_msgSend_scheme(l, a2, l);
  v5 = v3;
  if (v3)
  {
    if (objc_msgSend_caseInsensitiveCompare_(v3, v4, @"http"))
    {
      v7 = objc_msgSend_caseInsensitiveCompare_(v5, v6, @"https") == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_parseResourceLoadResultForError:(id)error response:(id)response result:(int64_t *)result errorDomain:(id *)domain errorCode:(int64_t *)code
{
  errorCopy = error;
  responseCopy = response;
  *result = 0;
  *domain = 0;
  *code = -1;
  if (errorCopy)
  {
    v14 = objc_msgSend_domain(errorCopy, v11, v12);

    if (v14)
    {
      v17 = objc_msgSend_domain(errorCopy, v15, v16);
      v20 = objc_msgSend_length(v17, v18, v19);

      if (v20)
      {
        v21 = objc_msgSend_domain(errorCopy, v15, v16);
        *domain = objc_msgSend_copy(v21, v22, v23);

LABEL_12:
        *code = objc_msgSend_code(errorCopy, v15, v16);
LABEL_13:
        v28 = 2;
LABEL_14:
        *result = v28;
        goto LABEL_15;
      }

      v27 = @"AdEmptyDomainErrors";
    }

    else
    {
      v27 = @"AdNilDomainErrors";
    }

    *domain = v27;
    goto LABEL_12;
  }

  if (!responseCopy)
  {
    *domain = @"AdWebViewErrors";
    *code = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *domain = @"AdWebViewErrors";
    *code = 0;
    goto LABEL_20;
  }

  v26 = objc_msgSend_statusCode(responseCopy, v24, v25);
  if ((v26 - 600) <= 0xFFFFFFFFFFFFFE0BLL)
  {
    *domain = @"AdWebViewErrors";
    *code = 2;
LABEL_20:
    v28 = 3;
    goto LABEL_14;
  }

  if ((v26 - 200) <= 0x63)
  {
    v28 = 1;
    goto LABEL_14;
  }

  *result = 3;
  *code = v26;
  *domain = @"AdHTTPErrors";
LABEL_15:
}

@end