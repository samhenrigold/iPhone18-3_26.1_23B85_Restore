@interface MSDFMHSessionTaskInfo
- (BOOL)addAuthHeader;
@end

@implementation MSDFMHSessionTaskInfo

- (BOOL)addAuthHeader
{
  selfCopy = self;
  if (![(MSDFMHSessionTaskInfo *)self useBAAAuthentication])
  {
    v10.receiver = selfCopy;
    v10.super_class = MSDFMHSessionTaskInfo;
    LOBYTE(selfCopy) = [(MSDHubSessionTaskInfo *)&v10 addAuthHeader];
    return selfCopy;
  }

  v3 = +[MSDBAAInterface sharedInstance];
  v4 = [v3 generateBAACertficate:0];
  if ((v4 & 1) == 0)
  {
    v7 = sub_100063A54(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D14BC();
    }

    LOBYTE(selfCopy) = 0;
    goto LABEL_13;
  }

  request = [(MSDSessionTaskInfo *)selfCopy request];
  postData = [(MSDSessionTaskInfo *)selfCopy postData];
  v9 = 0;
  LODWORD(selfCopy) = [v3 addBAAAuthenticationHeadersToRequest:request withBody:postData error:&v9];
  v7 = v9;

  if (!selfCopy || v7)
  {
    sub_1000D14F8(v7);
LABEL_13:

    goto LABEL_6;
  }

  LOBYTE(selfCopy) = 1;
LABEL_6:

  return selfCopy;
}

@end