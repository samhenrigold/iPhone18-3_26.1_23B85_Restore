@interface NETransparentProxyProviderProtocol
- (NETransparentProxyProviderProtocol)init;
- (NETransparentProxyProviderProtocol)initWithCoder:(id)coder;
- (NETransparentProxyProviderProtocol)initWithPluginType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NETransparentProxyProviderProtocol

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = objc_alloc(MEMORY[0x1E696AD60]);
  v11.receiver = self;
  v11.super_class = NETransparentProxyProviderProtocol;
  v8 = [(NETunnelProviderProtocol *)&v11 descriptionWithIndent:v5 options:options];
  v9 = [v7 initWithString:v8];

  [v9 appendPrettyInt:-[NETransparentProxyProviderProtocol order](self withName:"order") andIndent:@"order" options:{v5, options & 0xFFFFFFFFFFFFFFF7}];

  return v9;
}

- (NETransparentProxyProviderProtocol)initWithPluginType:(id)type
{
  v6.receiver = self;
  v6.super_class = NETransparentProxyProviderProtocol;
  v3 = [(NETunnelProviderProtocol *)&v6 initWithPluginType:type];
  v4 = v3;
  if (v3)
  {
    [(NETransparentProxyProviderProtocol *)v3 setOrder:0x7FFFFFFFLL];
  }

  return v4;
}

- (NETransparentProxyProviderProtocol)init
{
  v5.receiver = self;
  v5.super_class = NETransparentProxyProviderProtocol;
  v2 = [(NETunnelProviderProtocol *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NETransparentProxyProviderProtocol *)v2 setOrder:0x7FFFFFFFLL];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NETransparentProxyProviderProtocol;
  v4 = [(NETunnelProviderProtocol *)&v6 copyWithZone:zone];
  if (v4)
  {
    [v4 setOrder:{-[NETransparentProxyProviderProtocol order](self, "order")}];
  }

  return v4;
}

- (NETransparentProxyProviderProtocol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NETransparentProxyProviderProtocol;
  v5 = [(NETunnelProviderProtocol *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_order = [coderCopy decodeIntegerForKey:@"Order"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NETransparentProxyProviderProtocol;
  coderCopy = coder;
  [(NETunnelProviderProtocol *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[NETransparentProxyProviderProtocol order](self forKey:{"order", v5.receiver, v5.super_class), @"Order"}];
}

@end