@interface SCLMutableContact
- (void)setContactIdentifier:(id)identifier;
- (void)setValue:(id)value;
@end

@implementation SCLMutableContact

- (void)setContactIdentifier:(id)identifier
{
  self->super._contactIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setValue:(id)value
{
  self->super._value = [value copy];

  MEMORY[0x2821F96F8]();
}

@end