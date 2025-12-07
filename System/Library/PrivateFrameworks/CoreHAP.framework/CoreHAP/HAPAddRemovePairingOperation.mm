@interface HAPAddRemovePairingOperation
- (HAPAddRemovePairingOperation)initWith:(int64_t)with identifier:(id)identifier publicKey:(id)key admin:(BOOL)admin queue:(id)queue completion:(id)completion;
@end

@implementation HAPAddRemovePairingOperation

- (HAPAddRemovePairingOperation)initWith:(int64_t)with identifier:(id)identifier publicKey:(id)key admin:(BOOL)admin queue:(id)queue completion:(id)completion
{
  adminCopy = admin;
  completionCopy = completion;
  queueCopy = queue;
  keyCopy = key;
  identifierCopy = identifier;
  [(HAPAddRemovePairingOperation *)self setOperation:with];
  [(HAPAddRemovePairingOperation *)self setIdentifier:identifierCopy];

  [(HAPAddRemovePairingOperation *)self setPublicKey:keyCopy];
  [(HAPAddRemovePairingOperation *)self setAdmin:adminCopy];
  [(HAPAddRemovePairingOperation *)self setQueue:queueCopy];

  [(HAPAddRemovePairingOperation *)self setCompletionHandler:completionCopy];
  [(HAPAddRemovePairingOperation *)self setOperationExecuting:0];
  return self;
}

@end