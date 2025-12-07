@interface CalendarBaseRequest
- (CalendarBaseRequest)initWithURLString:(id)string accountStore:(id)store appleAccount:(id)account httpRequestType:(id)type requestBody:(id)body httpHeader:(id)header;
- (id)_errorDictionaryFromServerResponse:(id)response;
- (id)urlRequest;
- (void)_performRequestWithHandler:(id)handler renewToken:(BOOL)token;
@end

@implementation CalendarBaseRequest

- (CalendarBaseRequest)initWithURLString:(id)string accountStore:(id)store appleAccount:(id)account httpRequestType:(id)type requestBody:(id)body httpHeader:(id)header
{
  stringCopy = string;
  storeCopy = store;
  obj = account;
  accountCopy = account;
  typeCopy = type;
  bodyCopy = body;
  headerCopy = header;
  v34.receiver = self;
  v34.super_class = CalendarBaseRequest;
  v18 = [(CalendarBaseRequest *)&v34 initWithURLString:stringCopy];
  if (v18)
  {
    storeCopy2 = store;
    aida_accountForPrimaryiCloudAccount = [storeCopy aida_accountForPrimaryiCloudAccount];
    v19 = _CalLogSystem(aida_accountForPrimaryiCloudAccount);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [aida_accountForPrimaryiCloudAccount accountType];
      v20 = v27 = stringCopy;
      accountType = [accountCopy accountType];
      *buf = 138412546;
      v36 = v20;
      v37 = 2112;
      v38 = accountType;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "adding aida account type %@ and apple account type %@", buf, 0x16u);

      stringCopy = v27;
    }

    v22 = [AAGrandSlamSigner alloc];
    v23 = [storeCopy aida_accountForiCloudAccount:accountCopy];
    v24 = [v22 initWithAccountStore:storeCopy grandSlamAccount:v23 appTokenID:AAGrandSlamAppTokenIDiCloudSettings];
    v25 = _grandSlamSigner;
    _grandSlamSigner = v24;

    objc_storeStrong(&_requestType, type);
    objc_storeStrong(&_requestUrl, string);
    objc_storeStrong(&_headers, header);
    objc_storeStrong(&v18->_requestBody, body);
    objc_storeStrong(&v18->_iCloudAppleAccount, obj);
    objc_storeStrong(&_accountStore, storeCopy2);
  }

  return v18;
}

- (id)urlRequest
{
  v19.receiver = self;
  v19.super_class = CalendarBaseRequest;
  urlRequest = [(CalendarBaseRequest *)&v19 urlRequest];
  v4 = [urlRequest mutableCopy];

  [_grandSlamSigner setUseAltDSID:1];
  v5 = [_grandSlamSigner signURLRequest:v4 isUserInitiated:1];
  if ((v5 & 1) == 0)
  {
    v6 = _CalLogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_B3A0(v6);
    }
  }

  bodyDictionary = [(CalendarBaseRequest *)self bodyDictionary];
  if (bodyDictionary)
  {
    v18 = 0;
    v8 = [NSJSONSerialization dataWithJSONObject:bodyDictionary options:1 error:&v18];
    [v4 setHTTPBody:v8];
  }

  [v4 setHTTPMethod:_requestType];
  [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_iCloudAppleAccount preferUsingPassword:0];
  v9 = +[AADeviceInfo udid];
  [v4 setValue:v9 forHTTPHeaderField:@"X-Client-UDID"];

  v10 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v11 = +[NSBundle mainBundle];
  infoDictionary = [v11 infoDictionary];

  v13 = [v10 objectForKey:@"ProductVersion"];
  v14 = [infoDictionary objectForKey:@"CFBundleName"];
  v15 = [infoDictionary objectForKey:@"CFBundleVersion"];
  v16 = [NSString stringWithFormat:@"%@/%@ iOS/%@", v14, v15, v13];
  [v4 setValue:v16 forHTTPHeaderField:@"User-agent"];

  return v4;
}

- (void)_performRequestWithHandler:(id)handler renewToken:(BOOL)token
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4EC0;
  v6[3] = &unk_14780;
  tokenCopy = token;
  selfCopy = self;
  handlerCopy = handler;
  v5.receiver = selfCopy;
  v5.super_class = CalendarBaseRequest;
  v4 = handlerCopy;
  [(CalendarBaseRequest *)&v5 performRequestWithHandler:v6];
}

- (id)_errorDictionaryFromServerResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(NSMutableDictionary);
  calError = [responseCopy calError];
  if (calError)
  {
    v6 = calError;
    calError2 = [responseCopy calError];
    errorTitle = [calError2 errorTitle];

    if (errorTitle)
    {
      calError3 = [responseCopy calError];
      errorTitle2 = [calError3 errorTitle];
      [v4 setObject:errorTitle2 forKey:@"errorTitle"];
    }
  }

  calError4 = [responseCopy calError];
  if (calError4 && (v12 = calError4, [responseCopy calError], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "errorMessage"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v14))
  {
    calError5 = [responseCopy calError];
    errorMessage = [calError5 errorMessage];
  }

  else
  {
    calError5 = [NSBundle bundleForClass:objc_opt_class()];
    errorMessage = [calError5 localizedStringForKey:@"CALENDAR_GENERIC_ERROR_MESSAGE" value:&stru_14AB8 table:@"calendarSettings"];
  }

  v17 = errorMessage;
  [v4 setObject:errorMessage forKey:@"errorDescription"];

  return v4;
}

@end