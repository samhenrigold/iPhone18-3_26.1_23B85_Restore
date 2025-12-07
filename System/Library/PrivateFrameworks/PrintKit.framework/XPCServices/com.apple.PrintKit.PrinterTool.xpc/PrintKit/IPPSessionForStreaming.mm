@interface IPPSessionForStreaming
- (IPPSessionForStreaming)initWithBundleIdentifier:(id)identifier clientID:(int)d;
- (void)dealloc;
@end

@implementation IPPSessionForStreaming

- (IPPSessionForStreaming)initWithBundleIdentifier:(id)identifier clientID:(int)d
{
  v4 = *&d;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IPPSessionForStreaming;
  v7 = [(IPPSession *)&v11 _initWithBundleIdentifier:identifierCopy clientID:v4 completeConfiguraton:&stru_100095330];
  if (v7)
  {
    v8 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v8;
  }

  return v7;
}

- (void)dealloc
{
  transaction = self->_transaction;
  self->_transaction = 0;

  v4.receiver = self;
  v4.super_class = IPPSessionForStreaming;
  [(IPPSession *)&v4 dealloc];
}

@end