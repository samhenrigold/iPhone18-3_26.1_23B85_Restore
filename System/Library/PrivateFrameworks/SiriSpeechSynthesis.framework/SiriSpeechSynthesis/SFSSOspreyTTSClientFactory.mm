@interface SFSSOspreyTTSClientFactory
+ (id)sharedInstance;
- (SFSSOspreyTTSClientFactory)init;
- (id)getOspreyClientByUrl:(id)url;
- (id)getOspreyClientByUrl:(id)url useBlazar:(BOOL)blazar enableAuthentication:(BOOL)authentication;
@end

@implementation SFSSOspreyTTSClientFactory

- (id)getOspreyClientByUrl:(id)url useBlazar:(BOOL)blazar enableAuthentication:(BOOL)authentication
{
  authenticationCopy = authentication;
  blazarCopy = blazar;
  v20 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  allKeys = [(NSMutableDictionary *)self->_ospreyClientFactory allKeys];
  v10 = [allKeys containsObject:urlCopy];

  if (!v10)
  {
    v13 = urlCopy;
    if ([v13 containsString:@"c02"])
    {
      v14 = @"-c02";
    }

    else
    {
      v15 = v13;
      if (![v13 containsString:@"c03"])
      {
        goto LABEL_10;
      }

      v14 = @"-c03";
    }

    v15 = [v13 stringByReplacingOccurrencesOfString:v14 withString:&stru_2879AE8E0];

LABEL_10:
    v12 = [[SFSSOspreyTTSClient alloc] initWithURL:v15 useBlazar:blazarCopy enableAuthentication:authenticationCopy];
    if ([v13 containsString:@"c02"])
    {
      v16 = @"2";
    }

    else
    {
      if (![v13 containsString:@"c03"])
      {
LABEL_15:
        [(NSMutableDictionary *)self->_ospreyClientFactory setValue:v12 forKey:v13];

        goto LABEL_16;
      }

      v16 = @"3";
    }

    [(SFSSOspreyTTSClient *)v12 setCarryClusterId:v16];
    goto LABEL_15;
  }

  v11 = SFSSGetLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = urlCopy;
    _os_log_impl(&dword_269079000, v11, OS_LOG_TYPE_INFO, "Get TTS Osprey client with URL: %@", &v18, 0xCu);
  }

  v12 = [(NSMutableDictionary *)self->_ospreyClientFactory objectForKey:urlCopy];
LABEL_16:

  return v12;
}

- (id)getOspreyClientByUrl:(id)url
{
  v3 = [(SFSSOspreyTTSClientFactory *)self getOspreyClientByUrl:url useBlazar:1 enableAuthentication:1];

  return v3;
}

- (SFSSOspreyTTSClientFactory)init
{
  v6.receiver = self;
  v6.super_class = SFSSOspreyTTSClientFactory;
  v2 = [(SFSSOspreyTTSClientFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ospreyClientFactory = v2->_ospreyClientFactory;
    v2->_ospreyClientFactory = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (+[SFSSOspreyTTSClientFactory sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[SFSSOspreyTTSClientFactory sharedInstance]::onceToken, &__block_literal_global_83);
  }

  v3 = +[SFSSOspreyTTSClientFactory sharedInstance]::__sharedInstance;

  return v3;
}

uint64_t __44__SFSSOspreyTTSClientFactory_sharedInstance__block_invoke()
{
  +[SFSSOspreyTTSClientFactory sharedInstance]::__sharedInstance = objc_alloc_init(SFSSOspreyTTSClientFactory);

  return MEMORY[0x2821F96F8]();
}

@end