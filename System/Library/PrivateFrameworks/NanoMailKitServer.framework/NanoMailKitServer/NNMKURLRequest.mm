@interface NNMKURLRequest
+ (id)_buildNumber;
+ (id)_hardwareModel;
+ (id)_methodNameForType:(unint64_t)type;
+ (id)_osName;
+ (id)_osVersion;
+ (id)_systemVersionDictionary;
+ (id)mailNotificationURL;
+ (id)serverFriendlyDescription;
+ (void)_formBodyRequestWithBaseURLString:(id)string path:(id)path body:(id)body method:(id)method token:(id)token errorParser:(id)parser completion:(id)completion;
+ (void)_getRequestWithBaseURLString:(id)string path:(id)path params:(id)params token:(id)token errorParser:(id)parser completion:(id)completion;
+ (void)_handleRequest:(id)request errorParser:(id)parser completion:(id)completion;
+ (void)_jsonBodyRequestWithBaseURLString:(id)string path:(id)path body:(id)body method:(id)method token:(id)token needsBAA:(BOOL)a errorParser:(id)parser completion:(id)self0;
+ (void)requestWithType:(unint64_t)type baseURLString:(id)string path:(id)path body:(id)body token:(id)token needsBAA:(BOOL)a errorParser:(id)parser completion:(id)self0;
@end

@implementation NNMKURLRequest

+ (id)mailNotificationURL
{
  nnmk_setupLoggingSubsystems(self, a2);
  if (!os_variant_has_internal_ui() || (v2 = CFPreferencesCopyAppValue(@"NanoMailCloudNotificationStagingServer", @"com.apple.NanoMail")) == 0)
  {
    v2 = @"https://mailnotifications.apple.com";
  }

  return v2;
}

+ (void)requestWithType:(unint64_t)type baseURLString:(id)string path:(id)path body:(id)body token:(id)token needsBAA:(BOOL)a errorParser:(id)parser completion:(id)self0
{
  aCopy = a;
  stringCopy = string;
  pathCopy = path;
  bodyCopy = body;
  tokenCopy = token;
  parserCopy = parser;
  completionCopy = completion;
  if (type > 2)
  {
    if (type - 3 >= 2)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  switch(type)
  {
    case 0uLL:
      [self _getRequestWithBaseURLString:stringCopy path:pathCopy params:bodyCopy token:tokenCopy errorParser:parserCopy completion:completionCopy];
      break;
    case 1uLL:
LABEL_7:
      v22 = [self _methodNameForType:type];
      [self _jsonBodyRequestWithBaseURLString:stringCopy path:pathCopy body:bodyCopy method:v22 token:tokenCopy needsBAA:aCopy errorParser:parserCopy completion:completionCopy];

      break;
    case 2uLL:
      v21 = [self _methodNameForType:2];
      [self _formBodyRequestWithBaseURLString:stringCopy path:pathCopy body:bodyCopy method:v21 token:tokenCopy errorParser:parserCopy completion:completionCopy];

      break;
  }

LABEL_9:
}

+ (void)_getRequestWithBaseURLString:(id)string path:(id)path params:(id)params token:(id)token errorParser:(id)parser completion:(id)completion
{
  paramsCopy = params;
  tokenCopy = token;
  v16 = MEMORY[0x277CCACE0];
  completionCopy = completion;
  parserCopy = parser;
  pathCopy = path;
  stringCopy = string;
  v21 = [[v16 alloc] initWithString:stringCopy];

  [v21 setPath:pathCopy];
  if ([paramsCopy count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(paramsCopy, "count")}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __88__NNMKURLRequest__getRequestWithBaseURLString_path_params_token_errorParser_completion___block_invoke;
    v28[3] = &unk_279935D70;
    v29 = v22;
    v23 = v22;
    [paramsCopy enumerateKeysAndObjectsUsingBlock:v28];
    [v21 setQueryItems:v23];
  }

  v24 = MEMORY[0x277CCAB70];
  v25 = [v21 URL];
  v26 = [v24 requestWithURL:v25];

  if (tokenCopy)
  {
    tokenCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", tokenCopy];
    [v26 addValue:tokenCopy forHTTPHeaderField:@"Authorization"];
  }

  [v26 setHTTPMethod:@"GET"];
  [self _handleRequest:v26 errorParser:parserCopy completion:completionCopy];
}

void __88__NNMKURLRequest__getRequestWithBaseURLString_path_params_token_errorParser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCAD18];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithName:v7 value:v6];

  [v4 addObject:v8];
}

+ (void)_jsonBodyRequestWithBaseURLString:(id)string path:(id)path body:(id)body method:(id)method token:(id)token needsBAA:(BOOL)a errorParser:(id)parser completion:(id)self0
{
  aCopy = a;
  pathCopy = path;
  bodyCopy = body;
  tokenCopy = token;
  parserCopy = parser;
  completionCopy = completion;
  v19 = MEMORY[0x277CBEBC0];
  methodCopy = method;
  v21 = [v19 URLWithString:string];
  v22 = v21;
  if (pathCopy)
  {
    v23 = [v21 URLByAppendingPathComponent:pathCopy];
  }

  else
  {
    v23 = v21;
  }

  v24 = v23;
  v25 = [MEMORY[0x277CCAB70] requestWithURL:v23];
  if (tokenCopy)
  {
    tokenCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", tokenCopy];
    [v25 addValue:tokenCopy forHTTPHeaderField:@"Authorization"];
  }

  [v25 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v25 setHTTPMethod:methodCopy];

  if (aCopy)
  {
    v27 = +[NNMKURLRequest serverFriendlyDescription];
    [v25 addValue:v27 forHTTPHeaderField:@"X-MMe-Client-Info"];
  }

  if (bodyCopy)
  {
    v28 = bodyCopy;
  }

  else
  {
    v28 = MEMORY[0x277CBEC10];
  }

  v39 = 0;
  v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28 options:0 error:&v39];
  v30 = v39;
  [v25 setHTTPBody:v29];
  if (v30)
  {
    completionCopy[2](completionCopy, 0, v30);
    v31 = parserCopy;
  }

  else if (aCopy)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __107__NNMKURLRequest__jsonBodyRequestWithBaseURLString_path_body_method_token_needsBAA_errorParser_completion___block_invoke;
    v34[3] = &unk_279935D98;
    v36 = completionCopy;
    v35 = v25;
    v31 = parserCopy;
    selfCopy = self;
    v37 = parserCopy;
    [NNMKBAAManager appleAuthHeaderFrom:v29 completion:v34];
  }

  else
  {
    v31 = parserCopy;
    [self _handleRequest:v25 errorParser:parserCopy completion:completionCopy];
  }
}

uint64_t __107__NNMKURLRequest__jsonBodyRequestWithBaseURLString_path_body_method_token_needsBAA_errorParser_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    [*(a1 + 32) addValue:a2 forHTTPHeaderField:@"X-Apple-Authentication"];
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    return [v6 _handleRequest:v8 errorParser:v7 completion:v9];
  }
}

+ (void)_formBodyRequestWithBaseURLString:(id)string path:(id)path body:(id)body method:(id)method token:(id)token errorParser:(id)parser completion:(id)completion
{
  pathCopy = path;
  methodCopy = method;
  tokenCopy = token;
  v17 = MEMORY[0x277CBEBC0];
  completionCopy = completion;
  parserCopy = parser;
  bodyCopy = body;
  v20 = [v17 URLWithString:string];
  v21 = v20;
  v34 = pathCopy;
  if (pathCopy)
  {
    v22 = [v20 URLByAppendingPathComponent:pathCopy];
  }

  else
  {
    v22 = v20;
  }

  v23 = v22;
  v24 = [MEMORY[0x277CCAB70] requestWithURL:v22];
  if (tokenCopy)
  {
    tokenCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", tokenCopy];
    [v24 addValue:tokenCopy forHTTPHeaderField:@"Authorization"];
  }

  [v24 setHTTPMethod:methodCopy];
  v26 = objc_opt_new();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __98__NNMKURLRequest__formBodyRequestWithBaseURLString_path_body_method_token_errorParser_completion___block_invoke;
  v35[3] = &unk_279935DC0;
  v36 = v26;
  v27 = v26;
  [bodyCopy enumerateKeysAndObjectsUsingBlock:v35];

  v28 = [v27 dataUsingEncoding:1];
  [v24 setHTTPBody:v28];
  [v24 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v29 = methodCopy;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "length")}];
  stringValue = [v30 stringValue];
  [v24 setValue:stringValue forHTTPHeaderField:@"Content-Length"];

  [self _handleRequest:v24 errorParser:parserCopy completion:completionCopy];
}

void __98__NNMKURLRequest__formBodyRequestWithBaseURLString_path_body_method_token_errorParser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  if ([v5 length])
  {
    v7 = @"&%@=%@";
  }

  else
  {
    v7 = @"%@=%@";
  }

  [*(a1 + 32) appendFormat:v7, v8, v6];
}

+ (void)_handleRequest:(id)request errorParser:(id)parser completion:(id)completion
{
  requestCopy = request;
  parserCopy = parser;
  completionCopy = completion;
  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__NNMKURLRequest__handleRequest_errorParser_completion___block_invoke;
  v15[3] = &unk_279935DE8;
  v16 = requestCopy;
  v17 = completionCopy;
  v18 = parserCopy;
  v11 = parserCopy;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = [mEMORY[0x277CCAD30] dataTaskWithRequest:v13 completionHandler:v15];

  [v14 resume];
}

void __56__NNMKURLRequest__handleRequest_errorParser_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 statusCode];
    if (v9)
    {
LABEL_3:
      v11 = MEMORY[0x277CCACA8];
      v12 = [*(a1 + 32) URL];
      v13 = [v12 absoluteString];
      v14 = [v9 localizedDescription];
      v15 = [v11 stringWithFormat:@"%@: %@", v13, v14];

      v16 = *(a1 + 40);
      v17 = MEMORY[0x277CCA9B8];
      v18 = [v9 domain];
      v19 = [v9 code];
      v38 = *MEMORY[0x277CCA450];
      v39[0] = v15;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v21 = [v17 errorWithDomain:v18 code:v19 userInfo:v20];
      (*(v16 + 16))(v16, 0, v21);

      goto LABEL_24;
    }
  }

  else
  {
    v10 = -1;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (!v7 || (v10 - 200) > 0x63)
  {
    if ([v7 length])
    {
      v36 = 0;
      v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v36];
      v24 = *(a1 + 48);
      if (v24)
      {
        if (v9)
        {
          v25 = (*(v24 + 16))(v24, v9);
          if (v25)
          {
            v26 = v25;
            v27 = MEMORY[0x277CCACA8];
            v28 = [*(a1 + 32) URL];
            v29 = [v28 absoluteString];
            v30 = [v27 stringWithFormat:@"%@: %@", v29, v26];

            v31 = [MEMORY[0x277CCA9B8] httpErrorWithCode:v10 message:v30];

            v32 = *(a1 + 40);
            if (v31)
            {
              (*(v32 + 16))(*(a1 + 40), v9, v31);
LABEL_21:

              goto LABEL_24;
            }

LABEL_20:
            v33 = MEMORY[0x277CCA9B8];
            v31 = [*(a1 + 32) URL];
            v34 = [v31 absoluteString];
            v35 = [v33 httpErrorWithCode:v10 message:v34];
            (*(v32 + 16))(v32, v9, v35);

            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = *(a1 + 40);
    goto LABEL_20;
  }

  if ([v7 length])
  {
    v37 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v37];
    v22 = v37;
    if (v22)
    {
      v23 = __logCategories;
      if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_ERROR))
      {
        __56__NNMKURLRequest__handleRequest_errorParser_completion___block_invoke_cold_1(v23, v22);
      }
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  (*(*(a1 + 40) + 16))();
LABEL_24:
}

+ (id)_methodNameForType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return @"GET";
  }

  else
  {
    return off_279935E28[type - 1];
  }
}

+ (id)serverFriendlyDescription
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NNMKURLRequest_serverFriendlyDescription__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (serverFriendlyDescription_onceToken != -1)
  {
    dispatch_once(&serverFriendlyDescription_onceToken, block);
  }

  v2 = serverFriendlyDescription__serverFriendlyDescription;

  return v2;
}

void __43__NNMKURLRequest_serverFriendlyDescription__block_invoke(uint64_t a1)
{
  v21 = +[NNMKURLRequest _hardwareModel];
  v1 = MEMORY[0x277CCACA8];
  v2 = +[NNMKURLRequest _osName];
  v3 = +[NNMKURLRequest _osVersion];
  v4 = +[NNMKURLRequest _buildNumber];
  v5 = [v1 stringWithFormat:@"%@%@;%@", v2, v3, v4];;

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 infoDictionary];
  v8 = *MEMORY[0x277CBED58];
  v9 = [v7 objectForKey:*MEMORY[0x277CBED58]];

  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 infoDictionary];
  v12 = [v11 objectForKey:v8];

  v13 = MEMORY[0x277CCACA8];
  v14 = [v6 bundleIdentifier];
  v15 = [v10 bundleIdentifier];
  v16 = v15;
  v17 = @"1.0";
  if (v12)
  {
    v17 = v12;
  }

  v18 = [v13 stringWithFormat:@"%@/%@ (%@/%@)", v14, v9, v15, v17];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@> <%@> <%@>", v21, v5, v18];
  v20 = serverFriendlyDescription__serverFriendlyDescription;
  serverFriendlyDescription__serverFriendlyDescription = v19;
}

+ (id)_systemVersionDictionary
{
  if (_systemVersionDictionary_onceToken != -1)
  {
    +[NNMKURLRequest _systemVersionDictionary];
  }

  v3 = _systemVersionDictionary_platformDictionary;

  return v3;
}

uint64_t __42__NNMKURLRequest__systemVersionDictionary__block_invoke()
{
  _systemVersionDictionary_platformDictionary = _CFCopySystemVersionDictionary();

  return MEMORY[0x2821F96F8]();
}

+ (id)_osName
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

+ (id)_osVersion
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

+ (id)_buildNumber
{
  _systemVersionDictionary = [self _systemVersionDictionary];
  v3 = [_systemVersionDictionary objectForKey:*MEMORY[0x277CBEC70]];

  return v3;
}

+ (id)_hardwareModel
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

void __56__NNMKURLRequest__handleRequest_errorParser_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "Unable to parse JSON response: %{public}@", &v5, 0xCu);
}

@end