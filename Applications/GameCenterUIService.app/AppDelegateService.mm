@interface AppDelegateService
- (AppDelegateService)init;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)setLocalPlayer:(id)player;
@end

@implementation AppDelegateService

- (AppDelegateService)init
{
  v5.receiver = self;
  v5.super_class = AppDelegateService;
  v2 = [(AppDelegateService *)&v5 init];
  if (v2)
  {
    GKUISetRemote();
    v3 = +[GKDaemonProxy daemonProxy];
    [v3 setDataUpdateDelegate:v2];
  }

  return v2;
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  if (type == 12)
  {
    v5 = [GKPreferences shared:*&type];
    [v5 synchronize];
  }
}

- (void)setLocalPlayer:(id)player
{
  if (player)
  {
    playerCopy = player;
    v4 = +[GKLocalPlayer localPlayer];
    [v4 updateFromLocalPlayer:playerCopy];
  }
}

@end