@interface PFStaticCloudKitContainerProvider
- (PFStaticCloudKitContainerProvider)initWithContainer:(id)container;
- (id)containerWithIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation PFStaticCloudKitContainerProvider

- (PFStaticCloudKitContainerProvider)initWithContainer:(id)container
{
  v6.receiver = self;
  v6.super_class = PFStaticCloudKitContainerProvider;
  v4 = [(PFStaticCloudKitContainerProvider *)&v6 init];
  if (v4)
  {
    v4->_container = container;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFStaticCloudKitContainerProvider;
  [(PFStaticCloudKitContainerProvider *)&v3 dealloc];
}

- (id)containerWithIdentifier:(id)identifier
{
  if (![(NSString *)[(CKContainer *)self->_container containerIdentifier] isEqualToString:identifier])
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{identifier, -[CKContainer containerIdentifier](self->_container, "containerIdentifier")), 0}];
    objc_exception_throw(v7);
  }

  v5 = self->_container;

  return v5;
}

@end