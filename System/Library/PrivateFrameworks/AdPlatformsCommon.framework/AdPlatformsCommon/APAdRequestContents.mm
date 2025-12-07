@interface APAdRequestContents
- (APAdRequestContents)initWithContext:(id)context contentTypes:(id)types deliverEntireBatch:(BOOL)batch;
@end

@implementation APAdRequestContents

- (APAdRequestContents)initWithContext:(id)context contentTypes:(id)types deliverEntireBatch:(BOOL)batch
{
  contextCopy = context;
  typesCopy = types;
  v18.receiver = self;
  v18.super_class = APAdRequestContents;
  v11 = [(APAdRequestContents *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_apContext, context);
    objc_storeStrong(&v12->_contentTypes, types);
    v12->_deliverEntireBatch = batch;
    v15 = objc_msgSend_activeClientInfo(MEMORY[0x1E6986190], v13, v14);
    clientInfo = v12->_clientInfo;
    v12->_clientInfo = v15;
  }

  return v12;
}

@end