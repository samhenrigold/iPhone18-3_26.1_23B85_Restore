@interface SFKeySearchFilter
- (NSArray)domains;
- (NSArray)specifiers;
- (SFKeySearchFilter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDomains:(id)domains;
- (void)setSpecifiers:(id)specifiers;
@end

@implementation SFKeySearchFilter

- (SFKeySearchFilter)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFKeySearchFilter;
  return [(SFKeySearchFilter *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSpecifiers:*(self->_keySearchFilterInternal + 1)];
  [v4 setDomains:*(self->_keySearchFilterInternal + 2)];
  return v4;
}

- (NSArray)specifiers
{
  v2 = [*(self->_keySearchFilterInternal + 1) copy];

  return v2;
}

- (void)setSpecifiers:(id)specifiers
{
  *(self->_keySearchFilterInternal + 1) = [specifiers copy];

  MEMORY[0x2821F96F8]();
}

- (NSArray)domains
{
  v2 = [*(self->_keySearchFilterInternal + 2) copy];

  return v2;
}

- (void)setDomains:(id)domains
{
  *(self->_keySearchFilterInternal + 2) = [domains copy];

  MEMORY[0x2821F96F8]();
}

@end