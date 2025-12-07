@interface SBSMutableUserNotificationTextFieldDefinition
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTitle:(id)title;
- (void)setValue:(id)value;
@end

@implementation SBSMutableUserNotificationTextFieldDefinition

- (void)setTitle:(id)title
{
  if (self->super._title != title)
  {
    v5 = [title copy];
    self->super._title = v5;

    MEMORY[0x1EEE66BB8](v5);
  }
}

- (void)setValue:(id)value
{
  if (self->super._value != value)
  {
    v5 = [value copy];
    self->super._value = v5;

    MEMORY[0x1EEE66BB8](v5);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SBSUserNotificationTextFieldDefinition);
  [(SBSUserNotificationTextFieldDefinition *)self _copyPropertiesToDefinition:v4];
  return v4;
}

@end