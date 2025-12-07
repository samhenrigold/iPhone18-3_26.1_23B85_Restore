@interface BEAccessibilityRemoteHostElement
- (BEAccessibilityRemoteHostElement)initWithIdentifier:(id)identifier remotePid:(int)pid;
- (id)accessibilityContainer;
@end

@implementation BEAccessibilityRemoteHostElement

- (BEAccessibilityRemoteHostElement)initWithIdentifier:(id)identifier remotePid:(int)pid
{
  v4 = *&pid;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = BEAccessibilityRemoteHostElement;
  v7 = [(BEAccessibilityRemoteHostElement *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E6988D80]) initWithUUID:identifierCopy andRemotePid:v4 andContextId:0];
    remoteElementBacking = v7->_remoteElementBacking;
    v7->_remoteElementBacking = v8;

    [(AXRemoteElement *)v7->_remoteElementBacking setOnClientSide:1];
  }

  return v7;
}

- (id)accessibilityContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityContainer);

  return WeakRetained;
}

@end