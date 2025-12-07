@interface MBError
+ (BOOL)isCancelledError:(id)error;
+ (BOOL)isCancelledXPCActivityDeferredError:(id)error;
+ (BOOL)isError:(id)error withCode:(int64_t)code;
+ (BOOL)isError:(id)error withCodes:(int64_t)codes;
+ (BOOL)isRetryAfterError:(id)error retryAfterDate:(id *)date;
+ (BOOL)isTransientError:(id)error;
+ (BOOL)isUnexpectedErrorCode:(int64_t)code;
+ (id)_errorWithErrno:(int)errno code:(int64_t)code path:(id)path format:(id)format arguments:(char *)arguments;
+ (id)_formatErrors:(id)errors descriptionSelector:(SEL)selector;
+ (id)descriptionForError:(id)error paths:(BOOL)paths;
+ (id)dictionaryRepresentationForError:(id)error withMultiErrors:(BOOL)errors;
+ (id)errorForHTTPURLResponse:(id)response error:(id)error;
+ (id)errorForNSError:(id)error path:(id)path description:(id)description;
+ (id)errorWithCode:(int64_t)code format:(id)format;
+ (id)errorWithDictionaryRepresentation:(id)representation withMultiErrors:(BOOL)errors;
+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format;
+ (id)errorWithErrors:(id)errors;
+ (id)loggableDescriptionForError:(id)error;
+ (id)signatureForError:(id)error;
+ (int)codeForErrno:(int)errno;
+ (int)codeForNSError:(id)error;
+ (int)errnoForError:(id)error;
@end

@implementation MBError

+ (BOOL)isUnexpectedErrorCode:(int64_t)code
{
  if (code)
  {
    v3 = code == 207;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

+ (BOOL)isTransientError:(id)error
{
  v4 = [objc_msgSend(error "domain")];
  if (v4)
  {
    code = [error code];

    LOBYTE(v4) = MBIsTransientErrorCode(code);
  }

  return v4;
}

+ (BOOL)isCancelledError:(id)error
{
  if (error)
  {
    if ([objc_msgSend(error "domain")])
    {
      code = [error code];
      v5 = 0x7F8001u >> (code + 54);
      if ((code - 202) > 0x16)
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

+ (BOOL)isCancelledXPCActivityDeferredError:(id)error
{
  errorCopy = error;
  if ([self isError:error withCode:202])
  {
    errorCopy = [objc_msgSend(errorCopy "userInfo")];
  }

  return [self isError:errorCopy withCode:223];
}

+ (int)codeForErrno:(int)errno
{
  v3 = *&errno;
  if (errno <= 17)
  {
    if (errno <= 8)
    {
      if (errno == 1)
      {
        return 24;
      }

      if (errno == 2)
      {
        return 4;
      }
    }

    else
    {
      switch(errno)
      {
        case 9:
          return 1;
        case 16:
          return 14;
        case 17:
          return 3;
      }
    }
  }

  else if (errno > 27)
  {
    switch(errno)
    {
      case 28:
        return 105;
      case 62:
        return 7;
      case 93:
        return 8;
    }
  }

  else
  {
    switch(errno)
    {
      case 18:
        return 26;
      case 20:
        return 5;
      case 21:
        return 6;
    }
  }

  v5 = MBGetDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No code for POSIX error: %{errno}d", buf, 8u);
    _MBLog(@"Df", "No code for POSIX error: %{errno}d", v3);
  }

  return 100;
}

+ (int)errnoForError:(id)error
{
  code = [objc_msgSend(error "domain")];
  if (!code)
  {
    goto LABEL_19;
  }

  code = [error code];
  if (code <= 7)
  {
    if (code <= 4)
    {
      if (code != 3)
      {
        if (code == 4)
        {
          return 2;
        }

        goto LABEL_19;
      }

      return 17;
    }

    else if (code == 5)
    {
      return 20;
    }

    else if (code == 6)
    {
      return 21;
    }

    else
    {
      return 62;
    }
  }

  if (code > 25)
  {
    switch(code)
    {
      case 26:
        return 18;
      case 105:
        return 28;
      case 100:
        return 5;
    }

LABEL_19:
    v6 = MBGetDefaultLog(code);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      errorCopy = error;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No POSIX code for error: %@", buf, 0xCu);
      _MBLog(@"Df", "No POSIX code for error: %@", error);
    }

    return 5;
  }

  if (code != 8)
  {
    if (code != 9)
    {
      if (code == 14)
      {
        return 16;
      }

      goto LABEL_19;
    }

    return 5;
  }

  return 93;
}

+ (int)codeForNSError:(id)error
{
  if ([objc_msgSend(error "domain")])
  {
    if (([error code] | 0x100) == 0x104)
    {
      return 4;
    }

    v6 = [objc_msgSend(error "userInfo")];
    if (v6)
    {

      return [MBError codeForNSError:v6];
    }

    return 100;
  }

  if ([objc_msgSend(error "domain")])
  {
    if ([error code] == -999)
    {
      return 202;
    }

    else
    {
      return 300;
    }
  }

  if (![objc_msgSend(error "domain")])
  {
    if ([objc_msgSend(error "domain")])
    {
      return [error code];
    }

    return 100;
  }

  code = [error code];

  return [MBError codeForErrno:code];
}

+ (BOOL)isError:(id)error withCode:(int64_t)code
{
  if ([error code] != code)
  {
    return 0;
  }

  domain = [error domain];

  return [domain isEqualToString:@"MBErrorDomain"];
}

+ (BOOL)isError:(id)error withCodes:(int64_t)codes
{
  v6 = [objc_msgSend(error "domain")];
  if (v6)
  {
    if ([error code] == codes)
    {
LABEL_6:
      LOBYTE(v6) = 1;
    }

    else
    {
      v10 = &v11;
      while (1)
      {
        v7 = v10++;
        if (!*v7)
        {
          break;
        }

        v8 = *v7;
        if ([error code] == v8)
        {
          goto LABEL_6;
        }
      }

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

+ (BOOL)isRetryAfterError:(id)error retryAfterDate:(id *)date
{
  errorCopy = error;
  if (![MBError isError:error withCodes:304, 17, 0])
  {
    return 0;
  }

  while (1)
  {
    v6 = [objc_msgSend(errorCopy "userInfo")];
    if (v6)
    {
      break;
    }

    errorCopy = [objc_msgSend(errorCopy "userInfo")];
    if (!errorCopy)
    {
      return 0;
    }
  }

  v9 = v6;
  v10 = [MBHTTPDateFormatter(v6 v7)];
  if (v10)
  {
    if (!date)
    {
      return v10 != 0;
    }
  }

  else
  {
    integerValue = [v9 integerValue];
    if (integerValue < 1)
    {
      return 0;
    }

    v10 = [NSDate dateWithTimeIntervalSinceNow:integerValue];
    if (!date)
    {
      return v10 != 0;
    }
  }

  if (!v10)
  {
    return v10 != 0;
  }

  *date = v10;
  return 1;
}

+ (id)errorWithCode:(int64_t)code format:(id)format
{
  v6 = NSLocalizedDescriptionKey;
  v7 = [[NSString alloc] initWithFormat:format arguments:&v8];
  return [NSError errorWithDomain:@"MBErrorDomain" code:code userInfo:[NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1]];
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format
{
  v8 = NSLocalizedDescriptionKey;
  v9 = [[NSString alloc] initWithFormat:format arguments:&v10];
  return [NSError errorWithDomain:domain code:code userInfo:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1]];
}

+ (id)errorWithErrors:(id)errors
{
  if ([errors count] == 1)
  {

    return [errors objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = +[NSMutableArray array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [errors countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(errors);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (+[MBError isError:withCode:](MBError, "isError:withCode:", v10, 2) && (v11 = [objc_msgSend(v10 "userInfo")]) != 0)
          {
            [v5 addObjectsFromArray:v11];
          }

          else
          {
            [v5 addObject:v10];
          }
        }

        v7 = [errors countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }

    v16 = @"kMBUnderlyingErrorsKey";
    v17 = [v5 copy];
    return [NSError errorWithDomain:@"MBErrorDomain" code:2 userInfo:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]];
  }
}

+ (id)_errorWithErrno:(int)errno code:(int64_t)code path:(id)path format:(id)format arguments:(char *)arguments
{
  v9 = *&errno;
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: %s (%d)", [[NSString alloc] initWithFormat:format arguments:arguments], strerror(v9), v9);
  v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
  if (path)
  {
    v18[0] = NSLocalizedDescriptionKey;
    v18[1] = NSFilePathErrorKey;
    v19[0] = v10;
    v19[1] = path;
    v18[2] = NSUnderlyingErrorKey;
    v19[2] = v11;
    v12 = v19;
    v13 = v18;
    v14 = 3;
  }

  else
  {
    v16[0] = NSLocalizedDescriptionKey;
    v16[1] = NSUnderlyingErrorKey;
    v17[0] = v10;
    v17[1] = v11;
    v12 = v17;
    v13 = v16;
    v14 = 2;
  }

  return [NSError errorWithDomain:@"MBErrorDomain" code:code userInfo:[NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14]];
}

+ (id)errorForNSError:(id)error path:(id)path description:(id)description
{
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:description, NSLocalizedDescriptionKey, error, NSUnderlyingErrorKey, path, NSFilePathErrorKey, 0];
  v7 = [MBError codeForNSError:error];

  return [NSError errorWithDomain:@"MBErrorDomain" code:v7 userInfo:v6];
}

+ (id)errorForHTTPURLResponse:(id)response error:(id)error
{
  if (response)
  {
    if ([response statusCode] >= 200 && objc_msgSend(response, "statusCode") < 300)
    {
      return 0;
    }

    if ([response statusCode] >= 300 && objc_msgSend(response, "statusCode") <= 399)
    {
      statusCode = [response statusCode];
      v7 = [response URL];
      if (statusCode == 330)
      {
        v8 = @"Account Moved";
        v9 = 307;
        v10 = v7;
LABEL_38:

        return [MBError _errorWithCode:v9 URL:v10 format:v8];
      }

      goto LABEL_27;
    }

    if ([response statusCode] >= 400 && objc_msgSend(response, "statusCode") <= 499)
    {
      statusCode2 = [response statusCode];
      v14 = [response URL];
      if (statusCode2 <= 408)
      {
        if (statusCode2 == 401)
        {
          v8 = @"Unauthorized";
          v9 = 305;
          goto LABEL_37;
        }

        if (statusCode2 == 404)
        {
          v8 = @"Not Found";
          v9 = 4;
          goto LABEL_37;
        }
      }

      else
      {
        switch(statusCode2)
        {
          case 409:
            v8 = @"Conflict";
            v9 = 3;
            goto LABEL_37;
          case 423:
            v8 = @"Locked";
            v9 = 13;
            goto LABEL_37;
          case 424:
            v8 = @"Failed Dependency";
            v9 = 306;
LABEL_37:
            v10 = v14;
            goto LABEL_38;
        }
      }

      return +[MBError _errorWithCode:URL:format:](MBError, "_errorWithCode:URL:format:", 301, v14, @"Client error: %ld %@", [response statusCode], +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", objc_msgSend(response, "statusCode")));
    }

    if ([response statusCode] < 500 || objc_msgSend(response, "statusCode") > 599)
    {
      v7 = [response URL];
LABEL_27:
      statusCode3 = [response statusCode];
      v17 = @"Unexpected HTTP status code: %ld";
      return [MBError _errorWithCode:302 URL:v7 format:v17, statusCode3, v19];
    }

    statusCode4 = [response statusCode];
    if (statusCode4 == 507)
    {
      v10 = [response URL];
      v8 = @"Insufficient Storage";
      v9 = 303;
      goto LABEL_38;
    }

    if (statusCode4 != 503)
    {
      v7 = [response URL];
      statusCode3 = [response statusCode];
      v19 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [response statusCode]);
      v17 = @"Server error: %ld %@";
      return [MBError _errorWithCode:302 URL:v7 format:v17, statusCode3, v19];
    }

    v16 = +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"Service Unavailable", NSLocalizedDescriptionKey, [response URL], NSURLErrorKey, objc_msgSend(objc_msgSend(response, "allHeaderFields"), "objectForKey:", @"Retry-After"), @"RetryAfter", 0);

    return [NSError errorWithDomain:@"MBErrorDomain" code:304 userInfo:v16];
  }

  else
  {
    v12 = [MBError codeForNSError:error];

    return [MBError errorWithCode:v12 error:error format:@"HTTP connection error"];
  }
}

+ (id)signatureForError:(id)error
{
  v4 = +[NSMutableString string];
  if (error)
  {
    do
    {
      [v4 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/%@:%ld", objc_msgSend(error, "domain"), objc_msgSend(error, "code"))}];
      v5 = [objc_msgSend(error "userInfo")];
      userInfo = [error userInfo];
      if (v5)
      {
        v7 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
      }

      else
      {
        if (![userInfo objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"])
        {
          break;
        }

        v7 = [objc_msgSend(objc_msgSend(error "userInfo")];
      }

      error = v7;
    }

    while (v7);
  }

  v8 = [v4 copy];

  return v8;
}

+ (id)_formatErrors:(id)errors descriptionSelector:(SEL)selector
{
  if (!errors)
  {
    return 0;
  }

  v7 = [errors count];
  v8 = +[NSMutableArray array];
  if (v7 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v7;
  }

  if (v7)
  {
    v10 = 0;
    do
    {
      [v8 addObject:{objc_msgSend(self, "performSelector:withObject:", selector, objc_msgSend(errors, "objectAtIndexedSubscript:", v10++))}];
    }

    while (v9 != v10);
    if (v7 > 3)
    {
      [v8 addObject:@"..."];
    }
  }

  return MBStringWithArray(v8);
}

+ (id)loggableDescriptionForError:(id)error
{
  if (!error)
  {
    return @"(null)";
  }

  v5 = +[NSMutableString string];
  [v5 appendFormat:@"%@(%ld)", objc_msgSend(error, "domain"), objc_msgSend(error, "code")];
  v6 = [objc_msgSend(error "userInfo")];
  if (v6)
  {
    [v5 appendFormat:@" Underlying error: %@", +[MBError loggableDescriptionForError:](MBError, "loggableDescriptionForError:", v6)];
  }

  v7 = [self _formatErrors:objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMMCSErrorUnderlyingErrorArrayKey", "loggableDescriptionForError:"}];
  if (v7)
  {
    [v5 appendFormat:@" Underlying MMCS errors: %@", v7];
  }

  v8 = [self _formatErrors:objc_msgSend(objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"CKPartialErrors", "allValues"), "loggableDescriptionForError:"}];
  if (v8)
  {
    [v5 appendFormat:@" Underlying CloudKit errors: %@", v8];
  }

  v9 = [self _formatErrors:objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMBUnderlyingErrorsKey", "loggableDescriptionForError:"}];
  if (v9)
  {
    [v5 appendFormat:@" Underlying Backup errors: %@", v9];
  }

  return v5;
}

+ (id)descriptionForError:(id)error paths:(BOOL)paths
{
  if (!error)
  {
    return @"(null)";
  }

  pathsCopy = paths;
  v6 = +[NSMutableString string];
  localizedDescription = [error localizedDescription];
  if (localizedDescription)
  {
    v8 = localizedDescription;
  }

  else
  {
    v8 = @"Unknown error";
  }

  [v6 appendString:v8];
  if (pathsCopy)
  {
    v9 = [objc_msgSend(error "userInfo")];
    if (v9)
    {
      [v6 appendFormat:@" at path %@", v9];
    }

    v10 = [objc_msgSend(error "userInfo")];
    if (v10)
    {
      [v6 appendFormat:@" for URL %@", v10];
    }
  }

  [v6 appendFormat:@" (%@/%d)", objc_msgSend(error, "domain"), objc_msgSend(error, "code")];
  v11 = [objc_msgSend(error "userInfo")];
  if (v11)
  {
    [v6 appendFormat:@". Underlying error: %@.", +[MBError descriptionForError:](MBError, "descriptionForError:", v11)];
  }

  v12 = [objc_msgSend(error "userInfo")];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 count];
    v15 = +[NSMutableArray array];
    if (v14 >= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = v14;
    }

    if (v14)
    {
      v17 = 0;
      do
      {
        [v15 addObject:{+[MBError descriptionForError:](MBError, "descriptionForError:", objc_msgSend(v13, "objectAtIndexedSubscript:", v17++))}];
      }

      while (v16 != v17);
      if (v14 > 3)
      {
        [v15 addObject:@"..."];
      }
    }

    [v6 appendFormat:@". Underlying MMCS errors: %@.", MBStringWithArray(v15)];
  }

  return v6;
}

+ (id)dictionaryRepresentationForError:(id)error withMultiErrors:(BOOL)errors
{
  errorsCopy = errors;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setValue:objc_msgSend(error forKey:{"domain"), @"domain"}];
  [v7 setValue:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(error, "code")), @"code"}];
  localizedDescription = [error localizedDescription];
  if (localizedDescription)
  {
    [v7 setValue:localizedDescription forKey:@"localizedDescription"];
  }

  userInfo = [error userInfo];
  v10 = [userInfo objectForKeyedSubscript:NSFilePathErrorKey];
  if (v10)
  {
    [v7 setValue:v10 forKey:@"filePath"];
  }

  v11 = [userInfo objectForKeyedSubscript:NSURLErrorKey];
  if (v11)
  {
    [v7 setValue:objc_msgSend(v11 forKey:{"absoluteString"), @"URL"}];
  }

  v12 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
  if (v12)
  {
    [v7 setValue:objc_msgSend(self forKey:{"dictionaryRepresentationForError:withMultiErrors:", v12, errorsCopy), @"underlyingError"}];
  }

  if (errorsCopy)
  {
    v13 = [userInfo objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];
    if (v13)
    {
      v14 = v13;
      v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          v19 = 0;
          do
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v14);
            }

            -[NSMutableArray addObject:](v15, "addObject:", [self dictionaryRepresentationForError:*(*(&v23 + 1) + 8 * v19) withMultiErrors:1]);
            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      [v7 setObject:v15 forKey:@"underlyingErrors"];
    }
  }

  v20 = [userInfo valueForKey:@"kMBErrorDateKey"];
  if (v20)
  {
    [v7 setObject:v20 forKeyedSubscript:@"date"];
  }

  v21 = [userInfo valueForKey:@"BuildVersion"];
  if (v21)
  {
    [v7 setObject:v21 forKeyedSubscript:@"BuildVersion"];
  }

  return v7;
}

+ (id)errorWithDictionaryRepresentation:(id)representation withMultiErrors:(BOOL)errors
{
  if (!representation)
  {
    return 0;
  }

  errorsCopy = errors;
  result = [representation objectForKeyedSubscript:@"domain"];
  if (!result)
  {
    return result;
  }

  v8 = result;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [representation objectForKeyedSubscript:@"code"];
  if (!result)
  {
    return result;
  }

  v9 = result;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  integerValue = [v9 integerValue];
  v10 = [representation objectForKeyedSubscript:@"localizedDescription"];
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [representation objectForKeyedSubscript:@"filePath"];
  if (v13)
  {
    v14 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [representation objectForKeyedSubscript:@"URL"];
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = +[NSMutableDictionary dictionary];
  [v19 setValue:v12 forKey:NSLocalizedDescriptionKey];
  [v19 setValue:v15 forKey:NSFilePathErrorKey];
  if (v18)
  {
    [v19 setValue:+[NSURL URLWithString:](NSURL forKey:{"URLWithString:", v18), NSURLErrorKey}];
  }

  v20 = [representation objectForKeyedSubscript:@"underlyingError"];
  if (v20)
  {
    v21 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  [v19 setObject:+[MBError errorWithDictionaryRepresentation:withMultiErrors:](MBError forKeyedSubscript:{"errorWithDictionaryRepresentation:withMultiErrors:", v22, errorsCopy), NSUnderlyingErrorKey}];
  v23 = [representation objectForKeyedSubscript:@"underlyingErrors"];
  if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v23 count]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v39;
LABEL_35:
      v28 = 0;
      while (1)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v38 + 1) + 8 * v28);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        -[NSMutableArray addObject:](v24, "addObject:", [self errorWithDictionaryRepresentation:v29 withMultiErrors:1]);
        if (v26 == ++v28)
        {
          v26 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v26)
          {
            goto LABEL_35;
          }

          break;
        }
      }
    }

    v19 = v36;
    [v36 setObject:v24 forKeyedSubscript:@"kMBUnderlyingErrorsKey"];
  }

  v30 = [representation objectForKeyedSubscript:@"date"];
  if (v30)
  {
    v31 = v30;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  [v19 setObject:v32 forKeyedSubscript:@"kMBErrorDateKey"];
  v33 = [representation objectForKeyedSubscript:@"BuildVersion"];
  if (v33)
  {
    v34 = v33;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  [v19 setObject:v35 forKeyedSubscript:@"BuildVersion"];
  return [NSError errorWithDomain:v8 code:integerValue userInfo:v19];
}

@end