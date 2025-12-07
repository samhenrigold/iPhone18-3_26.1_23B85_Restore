@interface RMErrorUtilities
+ (BOOL)convertSwiftErrorReference:(id *)reference;
+ (id)_englishDescriptionFormatWithKey:(id)key;
+ (id)_localizedDescriptionFormatWithKey:(id)key;
+ (id)_populateDescriptionInUserInfo:(id)info descriptionKey:(id)key;
+ (id)_populateDescriptionInUserInfo:(id)info descriptionKey:(id)key arguments:(char *)arguments;
+ (id)convertSwiftError:(id)error;
+ (id)createAssetCannotBeDownloadedErrorWithUnderlyingError:(id)error;
+ (id)createAssetCannotProcessFileErrorWithUnderlyingError:(id)error;
+ (id)createAssetInvalidURLError:(id)error;
+ (id)createCMSDecodeErrorWithStatusCode:(int)code reason:(id)reason;
+ (id)createCannotChangeValueErrorForPropertyNamed:(id)named onObject:(id)object;
+ (id)createCouldNotInstallAppWithUnderlyingError:(id)error;
+ (id)createErrorWithCode:(int64_t)code userInfo:(id)info descriptionKey:(id)key;
+ (id)createHTTPErrorWithStatusCode:(int64_t)code reason:(id)reason;
+ (id)createInternalErrorWithUnderlyingError:(id)error;
+ (id)createMismatchedValuesErrorForPropertyNamed:(id)named onObject:(id)object expected:(id)expected actual:(id)actual;
+ (id)createMissingMandatoryPropertyErrorWithPropertyNamed:(id)named onObject:(id)object;
+ (id)createMobileKeyBagErrorWithCode:(int64_t)code;
+ (id)createMultipleErrorOrReturnTheSingleErrorWithErrors:(id)errors;
+ (id)createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:(id)errors;
+ (id)createProfileInvalidErrorWithUnderlyingError:(id)error;
+ (id)createUnverifiedDownloadHashErrorWithURL:(id)l;
+ (id)createUnverifiedDownloadSizeErrorWithURL:(id)l;
@end

@implementation RMErrorUtilities

+ (id)createErrorWithCode:(int64_t)code userInfo:(id)info descriptionKey:(id)key
{
  v6 = [self _populateDescriptionInUserInfo:info descriptionKey:key arguments:&v10];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"RMErrorDomain" code:code userInfo:v6];

  return v7;
}

+ (id)_populateDescriptionInUserInfo:(id)info descriptionKey:(id)key
{
  v4 = [self _populateDescriptionInUserInfo:info descriptionKey:key arguments:&v7];

  return v4;
}

+ (id)_populateDescriptionInUserInfo:(id)info descriptionKey:(id)key arguments:(char *)arguments
{
  v30[3] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  keyCopy = key;
  argumentsCopy = arguments;
  v10 = [self _localizedDescriptionFormatWithKey:keyCopy];
  v11 = [self _englishDescriptionFormatWithKey:keyCopy];
  v12 = MEMORY[0x1E696AEC0];
  v13 = v10;
  v14 = [v12 alloc];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v16 = [v14 initWithFormat:v13 locale:currentLocale arguments:argumentsCopy];

  v17 = getEnglishDescription_onceToken;
  v18 = v11;
  if (v17 != -1)
  {
    +[RMErrorUtilities _populateDescriptionInUserInfo:descriptionKey:arguments:];
  }

  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20 = [v19 initWithFormat:v18 locale:getEnglishDescription_enUSPosixLocale arguments:argumentsCopy];

  v21 = [keyCopy stringByReplacingOccurrencesOfString:@"_%@" withString:&stru_1F5C08D00];
  v22 = MEMORY[0x1E695DF90];
  v23 = *MEMORY[0x1E696A278];
  v29[0] = *MEMORY[0x1E696A578];
  v29[1] = v23;
  v30[0] = v16;
  v30[1] = v20;
  v29[2] = @"RMErrorUserInfoKeyDescriptionKey";
  v30[2] = v21;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v25 = [v22 dictionaryWithDictionary:v24];

  if (infoCopy)
  {
    [v25 setValuesForKeysWithDictionary:infoCopy];
  }

  v26 = [v25 copy];

  return v26;
}

+ (id)_localizedDescriptionFormatWithKey:(id)key
{
  keyCopy = key;
  v4 = +[RMBundle remoteManagementBundle];
  v5 = [v4 localizedStringForKey:keyCopy value:&stru_1F5C08D00 table:0];

  return v5;
}

+ (id)_englishDescriptionFormatWithKey:(id)key
{
  keyCopy = key;
  v4 = +[RMBundle remoteManagementBundle];
  v5 = [v4 localizedStringForKey:keyCopy value:&stru_1F5C08D00 table:0 localization:@"en"];

  return v5;
}

+ (id)createAssetCannotBeDownloadedErrorWithUnderlyingError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = errorCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [self createErrorWithCode:2200 userInfo:v6 descriptionKey:@"Error.AssetCannotBeDownloaded"];
  }

  else
  {
    v7 = [self createErrorWithCode:2200 userInfo:0 descriptionKey:@"Error.AssetCannotBeDownloaded"];
  }

  return v7;
}

+ (id)createAssetCannotProcessFileErrorWithUnderlyingError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = errorCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [self createErrorWithCode:2204 userInfo:v6 descriptionKey:@"Error.AssetCannotProcessFile"];
  }

  else
  {
    v7 = [self createErrorWithCode:2204 userInfo:0 descriptionKey:@"Error.AssetCannotProcessFile"];
  }

  return v7;
}

+ (id)createAssetInvalidURLError:(id)error
{
  absoluteString = [error absoluteString];
  v5 = [self createErrorWithCode:2206 userInfo:0 descriptionKey:{@"Error.AssetInvalidURL_%@", absoluteString}];

  return v5;
}

+ (id)createCannotChangeValueErrorForPropertyNamed:(id)named onObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A250];
  v15 = *MEMORY[0x1E695D4E0];
  objectCopy = object;
  v8 = MEMORY[0x1E695DF20];
  objectCopy2 = object;
  namedCopy = named;
  v11 = [v8 dictionaryWithObjects:&objectCopy forKeys:&v15 count:1];
  v12 = [self _populateDescriptionInUserInfo:v11 descriptionKey:{@"Error.CannotChangeValue_%@", namedCopy, v15, objectCopy, v17}];

  v13 = [v6 errorWithDomain:v7 code:1550 userInfo:v12];

  return v13;
}

+ (id)createCMSDecodeErrorWithStatusCode:(int)code reason:(id)reason
{
  v4 = *&code;
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"RMCMSDecodeStatusCodeKey";
  v6 = MEMORY[0x1E696AD98];
  reasonCopy = reason;
  v8 = [v6 numberWithInt:v4];
  v13[1] = *MEMORY[0x1E696A588];
  v14[0] = v8;
  v14[1] = reasonCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v4];

  v11 = [self createErrorWithCode:102 userInfo:v9 descriptionKey:{@"Error.CMSDecodeError_%@", v10, v13[0]}];

  return v11;
}

+ (id)createCouldNotInstallAppWithUnderlyingError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = errorCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [self createErrorWithCode:3000 userInfo:v6 descriptionKey:@"Error.CouldNotInstallApp"];
  }

  else
  {
    v7 = [self createErrorWithCode:3000 userInfo:0 descriptionKey:@"Error.CouldNotInstallApp"];
  }

  return v7;
}

+ (id)createHTTPErrorWithStatusCode:(int64_t)code reason:(id)reason
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"RMHTTPStatusCodeKey";
  v6 = MEMORY[0x1E696AD98];
  reasonCopy = reason;
  v8 = [v6 numberWithInteger:code];
  v13[1] = *MEMORY[0x1E696A588];
  v14[0] = v8;
  v14[1] = reasonCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:code];

  v11 = [self createErrorWithCode:1000 userInfo:v9 descriptionKey:{@"Error.HTTPStatus_%@", v10, v13[0]}];

  return v11;
}

+ (id)createInternalErrorWithUnderlyingError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = errorCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [self createErrorWithCode:0 userInfo:v6 descriptionKey:@"Error.Internal"];
  }

  else
  {
    v7 = [self createErrorWithCode:0 userInfo:0 descriptionKey:@"Error.Internal"];
  }

  return v7;
}

+ (id)createMismatchedValuesErrorForPropertyNamed:(id)named onObject:(id)object expected:(id)expected actual:(id)actual
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E695D4D8];
  v22 = *MEMORY[0x1E695D4E0];
  v23 = v10;
  objectCopy = object;
  namedCopy = named;
  v24 = *MEMORY[0x1E695D4E8];
  expectedCopy = expected;
  v11 = MEMORY[0x1E695DF20];
  actualCopy = actual;
  expectedCopy2 = expected;
  objectCopy2 = object;
  namedCopy2 = named;
  v16 = [v11 dictionaryWithObjects:&objectCopy forKeys:&v22 count:3];
  v17 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A250];
  v19 = [self _populateDescriptionInUserInfo:v16 descriptionKey:{@"Error.MismatchedValues_%@_%@_%@", namedCopy2, expectedCopy2, actualCopy, v22, v23, v24, objectCopy, namedCopy, expectedCopy, v28}];

  v20 = [v17 errorWithDomain:v18 code:1550 userInfo:v19];

  return v20;
}

+ (id)createMissingMandatoryPropertyErrorWithPropertyNamed:(id)named onObject:(id)object
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695D4D8];
  v16 = *MEMORY[0x1E695D4E0];
  v17 = v6;
  objectCopy = object;
  namedCopy = named;
  v7 = MEMORY[0x1E695DF20];
  objectCopy2 = object;
  namedCopy2 = named;
  v10 = [v7 dictionaryWithObjects:&objectCopy forKeys:&v16 count:2];
  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A250];
  v13 = [self _populateDescriptionInUserInfo:v10 descriptionKey:{@"Error.MissingMandatoryProperty_%@", namedCopy2, v16, v17, objectCopy, namedCopy, v20}];
  v14 = [v11 errorWithDomain:v12 code:1570 userInfo:v13];

  return v14;
}

+ (id)createMobileKeyBagErrorWithCode:(int64_t)code
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"RMMobileKeyBagErrorCodeKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  v8 = [self createErrorWithCode:101 userInfo:v6 descriptionKey:{@"Error.MobileKeyBagError_%@", v7}];

  return v8;
}

+ (id)createMultipleErrorOrReturnTheSingleErrorWithErrors:(id)errors
{
  v10[1] = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if ([errorsCopy count] > 1)
  {
    v9 = *MEMORY[0x1E695D300];
    v6 = [errorsCopy copy];

    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    firstObject = [self createErrorWithCode:3 userInfo:v7 descriptionKey:@"Error.Multiple"];
  }

  else
  {
    firstObject = [errorsCopy firstObject];
  }

  return firstObject;
}

+ (id)createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:(id)errors
{
  v13[2] = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if ([errorsCopy count] > 1)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A250];
    v7 = *MEMORY[0x1E696A278];
    v13[0] = @"Multiple validation errors occurred.";
    v8 = *MEMORY[0x1E695D300];
    v12[0] = v7;
    v12[1] = v8;
    v9 = [errorsCopy copy];

    v13[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    firstObject = [v5 errorWithDomain:v6 code:1560 userInfo:v10];
  }

  else
  {
    firstObject = [errorsCopy firstObject];
  }

  return firstObject;
}

+ (id)createProfileInvalidErrorWithUnderlyingError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = errorCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [self createErrorWithCode:1200 userInfo:v6 descriptionKey:@"Error.ProfileInvalid"];
  }

  else
  {
    v7 = [self createErrorWithCode:1200 userInfo:0 descriptionKey:@"Error.ProfileInvalid"];
  }

  return v7;
}

+ (id)createUnverifiedDownloadHashErrorWithURL:(id)l
{
  absoluteString = [l absoluteString];
  v5 = [self createErrorWithCode:1004 userInfo:0 descriptionKey:{@"Error.UnverifiedDownloadHash_%@", absoluteString}];

  return v5;
}

+ (id)createUnverifiedDownloadSizeErrorWithURL:(id)l
{
  absoluteString = [l absoluteString];
  v5 = [self createErrorWithCode:1005 userInfo:0 descriptionKey:{@"Error.UnverifiedDownloadSize_%@", absoluteString}];

  return v5;
}

+ (id)convertSwiftError:(id)error
{
  errorCopy = error;
  v4 = objc_opt_new();
  localizedDescription = [errorCopy localizedDescription];
  [v4 setObject:localizedDescription forKeyedSubscript:*MEMORY[0x1E696A578]];

  v6 = MEMORY[0x1E696ABC0];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v9 = [v6 errorWithDomain:domain code:code userInfo:v4];

  return v9;
}

+ (BOOL)convertSwiftErrorReference:(id *)reference
{
  if (reference && *reference)
  {
    *reference = [RMErrorUtilities convertSwiftError:?];
  }

  return 1;
}

@end