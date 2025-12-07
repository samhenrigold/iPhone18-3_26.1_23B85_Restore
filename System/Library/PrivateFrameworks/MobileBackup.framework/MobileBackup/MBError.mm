@interface MBError
+ (BOOL)isCancelledError:(id)error;
+ (BOOL)isCancelledXPCActivityDeferredError:(id)error;
+ (BOOL)isError:(id)error withCode:(int64_t)code;
+ (BOOL)isError:(id)error withCodes:(int64_t)codes;
+ (BOOL)isRetryAfterError:(id)error retryAfterDate:(id *)date;
+ (BOOL)isTransientError:(id)error;
+ (BOOL)isUnexpectedErrorCode:(int64_t)code;
+ (id)_errorWithCode:(int64_t)code URL:(id)l format:(id)format;
+ (id)_errorWithErrno:(int)errno code:(int64_t)code path:(id)path format:(id)format arguments:(char *)arguments;
+ (id)_formatErrors:(id)errors descriptionSelector:(SEL)selector;
+ (id)descriptionForError:(id)error paths:(BOOL)paths;
+ (id)dictionaryRepresentationForError:(id)error withMultiErrors:(BOOL)errors;
+ (id)errorForHTTPURLResponse:(id)response error:(id)error;
+ (id)errorForNSError:(id)error path:(id)path description:(id)description;
+ (id)errorForNSError:(id)error path:(id)path format:(id)format;
+ (id)errorWithCode:(int64_t)code error:(id)error URL:(id)l format:(id)format;
+ (id)errorWithCode:(int64_t)code error:(id)error format:(id)format;
+ (id)errorWithCode:(int64_t)code error:(id)error path:(id)path format:(id)format;
+ (id)errorWithCode:(int64_t)code format:(id)format;
+ (id)errorWithCode:(int64_t)code path:(id)path format:(id)format;
+ (id)errorWithDictionaryRepresentation:(id)representation withMultiErrors:(BOOL)errors;
+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code path:(id)path format:(id)format;
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
    userInfo = [errorCopy userInfo];
    errorCopy = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  return [self isError:errorCopy withCode:223];
}

+ (int)codeForErrno:(int)errno
{
  v3 = *&errno;
  v8 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_DEFAULT, "No code for POSIX error: %{errno}d", buf, 8u);
    _MBLog(@"Df", "No code for POSIX error: %{errno}d", v3);
  }

  return 100;
}

+ (int)errnoForError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
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
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "No POSIX code for error: %@", buf, 0xCu);
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
  domain = [error domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    if (([error code] | 0x100) == 0x104)
    {
      return 4;
    }

    userInfo = [error userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    if (v10)
    {

      return [MBError codeForNSError:v10];
    }

    return 100;
  }

  domain2 = [error domain];
  if ([domain2 isEqualToString:*MEMORY[0x1E696A978]])
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

  domain3 = [error domain];
  if (![domain3 isEqualToString:*MEMORY[0x1E696A798]])
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

  v6 = *MEMORY[0x1E696AA08];
  while (1)
  {
    v7 = [objc_msgSend(errorCopy "userInfo")];
    if (v7)
    {
      break;
    }

    errorCopy = [objc_msgSend(errorCopy "userInfo")];
    if (!errorCopy)
    {
      return 0;
    }
  }

  v10 = v7;
  v11 = [MBHTTPDateFormatter(v7 v8)];
  if (v11)
  {
    if (!date)
    {
      return v11 != 0;
    }
  }

  else
  {
    integerValue = [v10 integerValue];
    if (integerValue < 1)
    {
      return 0;
    }

    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:integerValue];
    if (!date)
    {
      return v11 != 0;
    }
  }

  if (!v11)
  {
    return v11 != 0;
  }

  *date = v11;
  return 1;
}

+ (id)errorWithCode:(int64_t)code format:(id)format
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v9];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = v5;
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:code userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
}

+ (id)errorWithCode:(int64_t)code error:(id)error format:(id)format
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v10];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:code userInfo:v8];
}

+ (id)errorWithCode:(int64_t)code path:(id)path format:(id)format
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v10];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], path, *MEMORY[0x1E696A368], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:code userInfo:v8];
}

+ (id)_errorWithCode:(int64_t)code URL:(id)l format:(id)format
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v10];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], l, *MEMORY[0x1E696A998], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:code userInfo:v8];
}

+ (id)errorWithCode:(int64_t)code error:(id)error path:(id)path format:(id)format
{
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v12];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], path, *MEMORY[0x1E696A368], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:code userInfo:v10];
}

+ (id)errorWithCode:(int64_t)code error:(id)error URL:(id)l format:(id)format
{
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v12];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], l, *MEMORY[0x1E696A998], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:code userInfo:v10];
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format
{
  v10[1] = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v11];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v7;
  return [MEMORY[0x1E696ABC0] errorWithDomain:domain code:code userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code path:(id)path format:(id)format
{
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v12];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E696A578], path, *MEMORY[0x1E696A368], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:domain code:code userInfo:v10];
}

+ (id)errorWithErrors:(id)errors
{
  v22 = *MEMORY[0x1E69E9840];
  if ([errors count] == 1)
  {

    return [errors objectAtIndexedSubscript:0];
  }

  else
  {
    if (![errors count])
    {
      [(MBError *)a2 errorWithErrors:self];
    }

    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [errors countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(errors);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (+[MBError isError:withCode:](MBError, "isError:withCode:", v12, 2) && (v13 = [objc_msgSend(v12 "userInfo")]) != 0)
          {
            [array addObjectsFromArray:v13];
          }

          else
          {
            [array addObject:v12];
          }
        }

        v9 = [errors countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v9);
    }

    v19 = @"kMBUnderlyingErrorsKey";
    v20 = [array copy];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:2 userInfo:v14];
  }
}

+ (id)_errorWithErrno:(int)errno code:(int64_t)code path:(id)path format:(id)format arguments:(char *)arguments
{
  v9 = *&errno;
  v24[3] = *MEMORY[0x1E69E9840];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:arguments];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s (%d)", v10, strerror(v9), v9];
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v9 userInfo:0];
  if (path)
  {
    v13 = *MEMORY[0x1E696A368];
    v23[0] = *MEMORY[0x1E696A578];
    v23[1] = v13;
    v24[0] = v11;
    v24[1] = path;
    v23[2] = *MEMORY[0x1E696AA08];
    v24[2] = v12;
    v14 = MEMORY[0x1E695DF20];
    v15 = v24;
    v16 = v23;
    v17 = 3;
  }

  else
  {
    v18 = *MEMORY[0x1E696AA08];
    v21[0] = *MEMORY[0x1E696A578];
    v21[1] = v18;
    v22[0] = v11;
    v22[1] = v12;
    v14 = MEMORY[0x1E695DF20];
    v15 = v22;
    v16 = v21;
    v17 = 2;
  }

  v19 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:code userInfo:v19];
}

+ (id)errorForNSError:(id)error path:(id)path format:(id)format
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v10];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], path, *MEMORY[0x1E696A368], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:+[MBError codeForNSError:](MBError userInfo:{"codeForNSError:", error), v8}];
}

+ (id)errorForNSError:(id)error path:(id)path description:(id)description
{
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{description, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], path, *MEMORY[0x1E696A368], 0}];
  v7 = MEMORY[0x1E696ABC0];
  v8 = [MBError codeForNSError:error];

  return [v7 errorWithDomain:@"MBErrorDomain" code:v8 userInfo:v6];
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
LABEL_40:

        return [MBError _errorWithCode:v9 URL:v10 format:v8];
      }

      goto LABEL_29;
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
          goto LABEL_39;
        }

        if (statusCode2 == 404)
        {
          v8 = @"Not Found";
          v9 = 4;
          goto LABEL_39;
        }
      }

      else
      {
        switch(statusCode2)
        {
          case 409:
            v8 = @"Conflict";
            v9 = 3;
            goto LABEL_39;
          case 423:
            v8 = @"Locked";
            v9 = 13;
            goto LABEL_39;
          case 424:
            v8 = @"Failed Dependency";
            v9 = 306;
LABEL_39:
            v10 = v14;
            goto LABEL_40;
        }
      }

      statusCode3 = [response statusCode];
      return +[MBError _errorWithCode:URL:format:](MBError, "_errorWithCode:URL:format:", 301, v14, @"Client error: %ld %@", statusCode3, [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(response, "statusCode")}]);
    }

    if ([response statusCode] < 500 || objc_msgSend(response, "statusCode") > 599)
    {
      v7 = [response URL];
LABEL_29:
      statusCode4 = [response statusCode];
      v22 = @"Unexpected HTTP status code: %ld";
      return [MBError _errorWithCode:302 URL:v7 format:v22, statusCode4, v25];
    }

    statusCode5 = [response statusCode];
    if (statusCode5 == 507)
    {
      v10 = [response URL];
      v8 = @"Insufficient Storage";
      v9 = 303;
      goto LABEL_40;
    }

    if (statusCode5 != 503)
    {
      v7 = [response URL];
      statusCode4 = [response statusCode];
      v25 = [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(response, "statusCode")}];
      v22 = @"Server error: %ld %@";
      return [MBError _errorWithCode:302 URL:v7 format:v22, statusCode4, v25];
    }

    v16 = [objc_msgSend(response "allHeaderFields")];
    v17 = MEMORY[0x1E695DF20];
    v18 = *MEMORY[0x1E696A578];
    v19 = [response URL];
    v20 = [v17 dictionaryWithObjectsAndKeys:{@"Service Unavailable", v18, v19, *MEMORY[0x1E696A998], v16, @"RetryAfter", 0}];
    v21 = MEMORY[0x1E696ABC0];

    return [v21 errorWithDomain:@"MBErrorDomain" code:304 userInfo:v20];
  }

  else
  {
    if (!error)
    {
      [MBError errorForHTTPURLResponse:a2 error:self];
    }

    v12 = [MBError codeForNSError:error];

    return [MBError errorWithCode:v12 error:error format:@"HTTP connection error"];
  }
}

+ (id)signatureForError:(id)error
{
  string = [MEMORY[0x1E696AD60] string];
  if (error)
  {
    v5 = *MEMORY[0x1E696AA08];
    do
    {
      [string appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"/%@:%ld", objc_msgSend(error, "domain"), objc_msgSend(error, "code"))}];
      v6 = [objc_msgSend(error "userInfo")];
      userInfo = [error userInfo];
      if (v6)
      {
        v8 = [userInfo objectForKeyedSubscript:v5];
      }

      else
      {
        if (![userInfo objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"])
        {
          break;
        }

        v8 = [objc_msgSend(objc_msgSend(error "userInfo")];
      }

      error = v8;
    }

    while (v8);
  }

  v9 = [string copy];

  return v9;
}

+ (id)_formatErrors:(id)errors descriptionSelector:(SEL)selector
{
  if (!errors)
  {
    return 0;
  }

  v7 = [errors count];
  array = [MEMORY[0x1E695DF70] array];
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
      [array addObject:{objc_msgSend(self, "performSelector:withObject:", selector, objc_msgSend(errors, "objectAtIndexedSubscript:", v10++))}];
    }

    while (v9 != v10);
    if (v7 > 3)
    {
      [array addObject:@"..."];
    }
  }

  return MBStringWithArray(array);
}

+ (id)loggableDescriptionForError:(id)error
{
  if (!error)
  {
    return @"(null)";
  }

  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"%@(%ld)", objc_msgSend(error, "domain"), objc_msgSend(error, "code")];
  userInfo = [error userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (v7)
  {
    [string appendFormat:@" Underlying error: %@", +[MBError loggableDescriptionForError:](MBError, "loggableDescriptionForError:", v7)];
  }

  v8 = [self _formatErrors:objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMMCSErrorUnderlyingErrorArrayKey", sel_loggableDescriptionForError_}];
  if (v8)
  {
    [string appendFormat:@" Underlying MMCS errors: %@", v8];
  }

  v9 = [self _formatErrors:objc_msgSend(objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"CKPartialErrors", "allValues"), sel_loggableDescriptionForError_}];
  if (v9)
  {
    [string appendFormat:@" Underlying CloudKit errors: %@", v9];
  }

  v10 = [self _formatErrors:objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMBUnderlyingErrorsKey", sel_loggableDescriptionForError_}];
  if (v10)
  {
    [string appendFormat:@" Underlying Backup errors: %@", v10];
  }

  return string;
}

+ (id)descriptionForError:(id)error paths:(BOOL)paths
{
  if (!error)
  {
    return @"(null)";
  }

  pathsCopy = paths;
  string = [MEMORY[0x1E696AD60] string];
  localizedDescription = [error localizedDescription];
  if (localizedDescription)
  {
    v8 = localizedDescription;
  }

  else
  {
    v8 = @"Unknown error";
  }

  [string appendString:v8];
  if (pathsCopy)
  {
    userInfo = [error userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A368]];
    if (v10)
    {
      [string appendFormat:@" at path %@", v10];
    }

    userInfo2 = [error userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A998]];
    if (v12)
    {
      [string appendFormat:@" for URL %@", v12];
    }
  }

  [string appendFormat:@" (%@/%d)", objc_msgSend(error, "domain"), objc_msgSend(error, "code")];
  userInfo3 = [error userInfo];
  v14 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (v14)
  {
    [string appendFormat:@". Underlying error: %@.", +[MBError descriptionForError:](MBError, "descriptionForError:", v14)];
  }

  v15 = [objc_msgSend(error "userInfo")];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 count];
    array = [MEMORY[0x1E695DF70] array];
    if (v17 >= 3)
    {
      v19 = 3;
    }

    else
    {
      v19 = v17;
    }

    if (v17)
    {
      v20 = 0;
      do
      {
        [array addObject:{+[MBError descriptionForError:](MBError, "descriptionForError:", objc_msgSend(v16, "objectAtIndexedSubscript:", v20++))}];
      }

      while (v19 != v20);
      if (v17 > 3)
      {
        [array addObject:@"..."];
      }
    }

    [string appendFormat:@". Underlying MMCS errors: %@.", MBStringWithArray(array)];
  }

  return string;
}

+ (id)dictionaryRepresentationForError:(id)error withMultiErrors:(BOOL)errors
{
  errorsCopy = errors;
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:objc_msgSend(error forKey:{"domain"), @"domain"}];
  [dictionary setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", objc_msgSend(error, "code")), @"code"}];
  localizedDescription = [error localizedDescription];
  if (localizedDescription)
  {
    [dictionary setValue:localizedDescription forKey:@"localizedDescription"];
  }

  userInfo = [error userInfo];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A368]];
  if (v10)
  {
    [dictionary setValue:v10 forKey:@"filePath"];
  }

  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A998]];
  if (v11)
  {
    [dictionary setValue:objc_msgSend(v11 forKey:{"absoluteString"), @"URL"}];
  }

  v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (v12)
  {
    [dictionary setValue:objc_msgSend(self forKey:{"dictionaryRepresentationForError:withMultiErrors:", v12, errorsCopy), @"underlyingError"}];
  }

  if (errorsCopy)
  {
    v13 = [userInfo objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];
    if (v13)
    {
      v14 = v13;
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
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

            [v15 addObject:{objc_msgSend(self, "dictionaryRepresentationForError:withMultiErrors:", *(*(&v23 + 1) + 8 * v19++), 1)}];
          }

          while (v17 != v19);
          v17 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      [dictionary setObject:v15 forKey:@"underlyingErrors"];
    }
  }

  v20 = [userInfo valueForKey:@"kMBErrorDateKey"];
  if (v20)
  {
    [dictionary setObject:v20 forKeyedSubscript:@"date"];
  }

  v21 = [userInfo valueForKey:@"BuildVersion"];
  if (v21)
  {
    [dictionary setObject:v21 forKeyedSubscript:@"BuildVersion"];
  }

  return dictionary;
}

+ (id)errorWithDictionaryRepresentation:(id)representation withMultiErrors:(BOOL)errors
{
  v45 = *MEMORY[0x1E69E9840];
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

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:v12 forKey:*MEMORY[0x1E696A578]];
  [dictionary setValue:v15 forKey:*MEMORY[0x1E696A368]];
  if (v18)
  {
    v20 = [MEMORY[0x1E695DFF8] URLWithString:v18];
    [dictionary setValue:v20 forKey:*MEMORY[0x1E696A998]];
  }

  v21 = [representation objectForKeyedSubscript:@"underlyingError"];
  if (v21)
  {
    v22 = v21;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = [MBError errorWithDictionaryRepresentation:v23 withMultiErrors:errorsCopy];
  [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v25 = [representation objectForKeyedSubscript:@"underlyingErrors"];
  if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count", dictionary)}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
LABEL_35:
      v30 = 0;
      while (1)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v40 + 1) + 8 * v30);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        [v26 addObject:{objc_msgSend(self, "errorWithDictionaryRepresentation:withMultiErrors:", v31, 1)}];
        if (v28 == ++v30)
        {
          v28 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v28)
          {
            goto LABEL_35;
          }

          break;
        }
      }
    }

    dictionary = v38;
    [v38 setObject:v26 forKeyedSubscript:@"kMBUnderlyingErrorsKey"];
  }

  v32 = [representation objectForKeyedSubscript:@"date"];
  if (v32)
  {
    v33 = v32;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  [dictionary setObject:v34 forKeyedSubscript:@"kMBErrorDateKey"];
  v35 = [representation objectForKeyedSubscript:@"BuildVersion"];
  if (v35)
  {
    v36 = v35;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  [dictionary setObject:v37 forKeyedSubscript:@"BuildVersion"];
  return [MEMORY[0x1E696ABC0] errorWithDomain:v8 code:integerValue userInfo:dictionary];
}

+ (uint64_t)errorWithErrors:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"MBError.m" lineNumber:378 description:@"Expected at least one underlying error"];
}

+ (uint64_t)errorForHTTPURLResponse:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"MBError.m" lineNumber:540 description:@"No response or error"];
}

@end