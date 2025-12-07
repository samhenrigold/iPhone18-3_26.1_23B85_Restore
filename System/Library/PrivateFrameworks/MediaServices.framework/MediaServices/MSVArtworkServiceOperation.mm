@interface MSVArtworkServiceOperation
- (MSVArtworkServiceOperation)initWithArtworkRequest:(id)request;
- (void)setDebugMessage:(id)message;
@end

@implementation MSVArtworkServiceOperation

- (void)setDebugMessage:(id)message
{
  self->_debugMessage = [message copy];

  MEMORY[0x1EEE66BB8]();
}

- (MSVArtworkServiceOperation)initWithArtworkRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MSVArtworkServiceOperation;
  v6 = [(MSVArtworkServiceOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

@end