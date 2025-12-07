@interface CoreAccessoriesAccountNotificationPlugin
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation CoreAccessoriesAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  if (!account && type == 3 && [oldAccount aa_isAccountClass:{AAAccountClassPrimary, *&type, store}])
  {
    v6 = MFi4AuthFeatureGroup();

    _DeleteAllSynchronizableFeatureKeysForFeature(0, v6, 0);
  }
}

@end