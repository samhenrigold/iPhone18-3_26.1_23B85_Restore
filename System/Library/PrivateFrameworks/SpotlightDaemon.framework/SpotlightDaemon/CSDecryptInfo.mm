@interface CSDecryptInfo
- (CSDecryptInfo)initWithPlistObject:(id *)object externalID:(id)d;
@end

@implementation CSDecryptInfo

- (CSDecryptInfo)initWithPlistObject:(id *)object externalID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CSDecryptInfo;
  v7 = [(CSDecryptInfo *)&v12 init];
  if (v7 && (v8 = _MDPlistContainerCopyObject(), decryptInfo = v7->_decryptInfo, v7->_decryptInfo = v8, decryptInfo, objc_storeStrong(&v7->_externalID, d), v7->_decryptInfo) && v7->_externalID)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end