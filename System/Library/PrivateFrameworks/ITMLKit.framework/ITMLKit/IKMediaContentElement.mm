@interface IKMediaContentElement
+ (id)supportedFeatures;
- (IKMediaContentElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation IKMediaContentElement

+ (id)supportedFeatures
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Player";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (IKMediaContentElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v11.receiver = self;
  v11.super_class = IKMediaContentElement;
  v5 = [(IKViewElement *)&v11 initWithDOMElement:element parent:parent elementFactory:factory];
  v6 = v5;
  if (v5)
  {
    features = [(IKViewElement *)v5 features];
    firstObject = [features firstObject];
    playerBridge = v6->_playerBridge;
    v6->_playerBridge = firstObject;
  }

  return v6;
}

@end