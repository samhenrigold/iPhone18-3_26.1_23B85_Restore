@interface TMLInsets
+ (void)initializeJSContext:(id)context;
- (TMLInsets)initWithInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)UIEdgeInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TMLInsets

- (TMLInsets)initWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8.receiver = self;
  v8.super_class = TMLInsets;
  result = [(TMLInsets *)&v8 init];
  if (result)
  {
    result->_insets.top = top;
    result->_insets.left = left;
    result->_insets.bottom = bottom;
    result->_insets.right = right;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;

  return [v4 initWithInsets:{top, left, bottom, right}];
}

- (UIEdgeInsets)UIEdgeInsets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (void)initializeJSContext:(id)context
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F1BABF4;
  v5[3] = &unk_279DC67D0;
  v5[4] = self;
  contextCopy = context;
  v4 = MEMORY[0x27438BB60](v5);
  [contextCopy setObject:v4 forKeyedSubscript:@"insets"];
  [contextCopy setObject:v4 forKeyedSubscript:@"UIEdgeInsetsMake"];

  [contextCopy setObject:&unk_287F2BEF0 forKeyedSubscript:@"UIEdgeInsetsEqualToEdgeInsets"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = TMLInsets;
  v4 = [(TMLInsets *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@{top: %.2f, left: %.2f, bottom: %.2f, right: %.2f", v4, *&self->_insets.top, *&self->_insets.left, *&self->_insets.bottom, *&self->_insets.right];

  return v5;
}

@end