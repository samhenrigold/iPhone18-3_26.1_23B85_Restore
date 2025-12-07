@interface BEAccessibilityRemoteElement
- (BEAccessibilityRemoteElement)initWithIdentifier:(id)identifier hostPid:(int)pid;
@end

@implementation BEAccessibilityRemoteElement

- (BEAccessibilityRemoteElement)initWithIdentifier:(id)identifier hostPid:(int)pid
{
  v4 = *&pid;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = BEAccessibilityRemoteElement;
  v7 = [(BEAccessibilityRemoteElement *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E6988D80]) initWithUUID:identifierCopy andRemotePid:v4 andContextId:0];
    remoteElementBacking = v7->_remoteElementBacking;
    v7->_remoteElementBacking = v8;

    [(AXRemoteElement *)v7->_remoteElementBacking setRemoteChildrenDelegate:v7];
  }

  return v7;
}

@end