@interface MobileCalDAVDelegateUserInfo
+ (id)infoFromCalDAVDetails:(id)details allowWrite:(BOOL)write;
- (MobileCalDAVDelegateUserInfo)initWithPrincipalPath:(id)path displayName:(id)name allowWrite:(BOOL)write;
@end

@implementation MobileCalDAVDelegateUserInfo

- (MobileCalDAVDelegateUserInfo)initWithPrincipalPath:(id)path displayName:(id)name allowWrite:(BOOL)write
{
  writeCopy = write;
  pathCopy = path;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = MobileCalDAVDelegateUserInfo;
  v10 = [(MobileCalDAVDelegateUserInfo *)&v14 init];
  if (v10)
  {
    da_appendSlashIfNeeded = [pathCopy da_appendSlashIfNeeded];
    [(MobileCalDAVDelegateUserInfo *)v10 setPrincipalPath:da_appendSlashIfNeeded];

    if ([nameCopy length])
    {
      v12 = nameCopy;
    }

    else
    {
      v12 = pathCopy;
    }

    [(MobileCalDAVDelegateUserInfo *)v10 setDisplayName:v12];
    [(MobileCalDAVDelegateUserInfo *)v10 setAllowWrite:writeCopy];
  }

  return v10;
}

+ (id)infoFromCalDAVDetails:(id)details allowWrite:(BOOL)write
{
  writeCopy = write;
  detailsCopy = details;
  v6 = [MobileCalDAVDelegateUserInfo alloc];
  principalURL = [detailsCopy principalURL];
  relativePath = [principalURL relativePath];
  displayName = [detailsCopy displayName];

  v10 = [(MobileCalDAVDelegateUserInfo *)v6 initWithPrincipalPath:relativePath displayName:displayName allowWrite:writeCopy];

  return v10;
}

@end