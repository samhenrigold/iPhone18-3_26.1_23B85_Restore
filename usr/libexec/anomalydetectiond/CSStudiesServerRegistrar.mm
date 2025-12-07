@interface CSStudiesServerRegistrar
- (CSStudiesServerRegistrar)initWithEndpoint:(id)endpoint authorization:(id)authorization cellularAccess:(BOOL)access timeoutInSeconds:(unint64_t)seconds;
- (void)registerWithHandler:(id)handler;
@end

@implementation CSStudiesServerRegistrar

- (CSStudiesServerRegistrar)initWithEndpoint:(id)endpoint authorization:(id)authorization cellularAccess:(BOOL)access timeoutInSeconds:(unint64_t)seconds
{
  accessCopy = access;
  endpointCopy = endpoint;
  authorizationCopy = authorization;
  v17.receiver = self;
  v17.super_class = CSStudiesServerRegistrar;
  v13 = [(CSStudiesServerRegistrar *)&v17 init];
  if (v13)
  {
    v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    config = v13->_config;
    v13->_config = v14;

    [(NSURLSessionConfiguration *)v13->_config setAllowsCellularAccess:accessCopy];
    [(NSURLSessionConfiguration *)v13->_config setHTTPAdditionalHeaders:&off_10043F0E8];
    [(NSURLSessionConfiguration *)v13->_config setWaitsForConnectivity:0];
    [(NSURLSessionConfiguration *)v13->_config setTimeoutIntervalForResource:seconds];
    objc_storeStrong(&v13->_authorization, authorization);
    objc_storeStrong(&v13->_endpoint, endpoint);
  }

  return v13;
}

- (void)registerWithHandler:(id)handler
{
  handlerCopy = handler;
  endpoint = [(CSStudiesServerRegistrar *)self endpoint];
  v6 = [NSMutableURLRequest requestWithURL:endpoint];

  authorization = [(CSStudiesServerRegistrar *)self authorization];
  [v6 setValue:authorization forHTTPHeaderField:@"Authorization"];

  [v6 setHTTPMethod:@"POST"];
  config = [(CSStudiesServerRegistrar *)self config];
  v9 = [NSURLSession sessionWithConfiguration:config];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100015E08;
  v12[3] = &unk_100413140;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [v9 dataTaskWithRequest:v6 completionHandler:v12];
  [v11 resume];
}

@end