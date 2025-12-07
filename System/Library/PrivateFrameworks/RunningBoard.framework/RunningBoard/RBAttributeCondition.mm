@interface RBAttributeCondition
- (id)description;
@end

@implementation RBAttributeCondition

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  if (self->_value)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v7 = [v3 initWithFormat:@"<%@| name:%@ value:%@>", v4, self->_name, v6];

  return v7;
}

@end