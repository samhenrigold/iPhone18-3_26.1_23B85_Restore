@interface SFIdentityAttributes
- (NSString)identityName;
- (NSString)localizedDescription;
- (NSString)localizedLabel;
- (SFIdentityAttributes)initWithCoder:(id)coder;
- (_SFKeySpecifier)keySpecifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIdentityName:(id)name;
- (void)setKeySpecifier:(id)specifier;
- (void)setLocalizedDescription:(id)description;
- (void)setLocalizedLabel:(id)label;
@end

@implementation SFIdentityAttributes

- (SFIdentityAttributes)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFIdentityAttributes;
  return [(SFIdentityAttributes *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLocalizedLabel:*(self->_identityAttributesInternal + 1)];
  [v4 setLocalizedDescription:*(self->_identityAttributesInternal + 2)];
  [v4 setKeySpecifier:*(self->_identityAttributesInternal + 3)];
  [v4 setIdentityName:*(self->_identityAttributesInternal + 4)];
  return v4;
}

- (NSString)localizedLabel
{
  v2 = [*(self->_identityAttributesInternal + 1) copy];

  return v2;
}

- (void)setLocalizedLabel:(id)label
{
  *(self->_identityAttributesInternal + 1) = [label copy];

  MEMORY[0x2821F96F8]();
}

- (NSString)localizedDescription
{
  v2 = [*(self->_identityAttributesInternal + 2) copy];

  return v2;
}

- (void)setLocalizedDescription:(id)description
{
  *(self->_identityAttributesInternal + 2) = [description copy];

  MEMORY[0x2821F96F8]();
}

- (_SFKeySpecifier)keySpecifier
{
  v2 = [*(self->_identityAttributesInternal + 3) copy];

  return v2;
}

- (void)setKeySpecifier:(id)specifier
{
  *(self->_identityAttributesInternal + 3) = [specifier copy];

  MEMORY[0x2821F96F8]();
}

- (NSString)identityName
{
  v2 = [*(self->_identityAttributesInternal + 4) copy];

  return v2;
}

- (void)setIdentityName:(id)name
{
  *(self->_identityAttributesInternal + 4) = [name copy];

  MEMORY[0x2821F96F8]();
}

@end