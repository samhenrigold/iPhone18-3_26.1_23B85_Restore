@interface APOdmlAppInfo
- (APOdmlAppInfo)initWithBundleID:(id)d adamID:(unint64_t)iD;
- (BOOL)isEqual:(id)equal;
@end

@implementation APOdmlAppInfo

- (APOdmlAppInfo)initWithBundleID:(id)d adamID:(unint64_t)iD
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = APOdmlAppInfo;
  v7 = [(APOdmlAppInfo *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(APOdmlAppInfo *)v7 setBundleID:dCopy];
    [(APOdmlAppInfo *)v8 setAdamID:iD];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    adamID = [(APOdmlAppInfo *)self adamID];
    v6 = adamID == [equalCopy adamID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end