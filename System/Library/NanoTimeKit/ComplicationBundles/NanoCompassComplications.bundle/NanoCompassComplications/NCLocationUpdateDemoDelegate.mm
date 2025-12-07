@interface NCLocationUpdateDemoDelegate
- (id)startLocationUpdatesWithHandler:(id)handler;
@end

@implementation NCLocationUpdateDemoDelegate

- (id)startLocationUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_msgSend_tokenWithValue_(NCManagerLocationToken, v5, self->_locationToken);
  ++self->_locationToken;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BD3CEBC;
  v9[3] = &unk_278B94398;
  v9[4] = self;
  v10 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  return v6;
}

@end