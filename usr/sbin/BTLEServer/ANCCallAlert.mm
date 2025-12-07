@interface ANCCallAlert
- (ANCCallAlert)initWithCall:(id)call callCenter:(id)center categoryID:(unsigned __int8)d;
- (id)appIdentifier;
- (id)subtitle;
- (id)title;
@end

@implementation ANCCallAlert

- (ANCCallAlert)initWithCall:(id)call callCenter:(id)center categoryID:(unsigned __int8)d
{
  dCopy = d;
  callCopy = call;
  centerCopy = center;
  v16.receiver = self;
  v16.super_class = ANCCallAlert;
  v11 = [(ANCAlert *)&v16 initWithCategoryID:dCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 2, call);
    objc_storeStrong(&v12->_call, center);
    v13 = +[NSDate date];
    callCenter = v12->_callCenter;
    v12->_callCenter = v13;

    *(&v12->super._silent + 1) = dCopy;
  }

  return v12;
}

- (id)appIdentifier
{
  call = [(ANCCallAlert *)self call];
  provider = [call provider];
  v5 = [(ANCAlert *)self _appIdentifierForTUCallProvider:provider];

  return v5;
}

- (id)title
{
  call = [(ANCCallAlert *)self call];
  displayName = [call displayName];

  if ([displayName length] >= 3 && objc_msgSend(displayName, "characterAtIndex:", 0) == 8234 && objc_msgSend(displayName, "characterAtIndex:", objc_msgSend(displayName, "length") - 1) == 8236)
  {
    v4 = [displayName substringWithRange:{1, objc_msgSend(displayName, "length") - 2}];

    displayName = v4;
  }

  return displayName;
}

- (id)subtitle
{
  call = [(ANCCallAlert *)self call];
  localizedLabel = [call localizedLabel];

  return localizedLabel;
}

@end