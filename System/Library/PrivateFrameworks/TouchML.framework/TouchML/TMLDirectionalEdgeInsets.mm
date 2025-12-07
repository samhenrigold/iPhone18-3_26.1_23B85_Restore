@interface TMLDirectionalEdgeInsets
+ (void)initializeJSContext:(id)context;
- (NSDirectionalEdgeInsets)directionalEdgeInsets;
- (TMLDirectionalEdgeInsets)initWithDirectionalEdgeInsets:(NSDirectionalEdgeInsets)insets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TMLDirectionalEdgeInsets

- (TMLDirectionalEdgeInsets)initWithDirectionalEdgeInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  v8.receiver = self;
  v8.super_class = TMLDirectionalEdgeInsets;
  result = [(TMLDirectionalEdgeInsets *)&v8 init];
  if (result)
  {
    result->_directionalEdgeInsets.top = top;
    result->_directionalEdgeInsets.leading = leading;
    result->_directionalEdgeInsets.bottom = bottom;
    result->_directionalEdgeInsets.trailing = trailing;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  top = self->_directionalEdgeInsets.top;
  leading = self->_directionalEdgeInsets.leading;
  bottom = self->_directionalEdgeInsets.bottom;
  trailing = self->_directionalEdgeInsets.trailing;

  return [v4 initWithDirectionalEdgeInsets:{top, leading, bottom, trailing}];
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  v5 = [self alloc];
  v6 = [v5 initWithDirectionalEdgeInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  [contextCopy setObject:v6 forKeyedSubscript:@"NSDirectionalEdgeInsetsZero"];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F1A8880;
  v8[3] = &unk_279DC61A8;
  v8[4] = self;
  v7 = MEMORY[0x27438BB60](v8);
  [contextCopy setObject:v7 forKeyedSubscript:@"directionalEdgeInsets"];
  [contextCopy setObject:v7 forKeyedSubscript:@"NSDirectionalEdgeInsetsMake"];

  [contextCopy setObject:&unk_287F2BD10 forKeyedSubscript:@"NSDirectionalEdgeInsetsEqualToDirectionalEdgeInsets"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = TMLDirectionalEdgeInsets;
  v4 = [(TMLDirectionalEdgeInsets *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@{top: %.2f, leading: %.2f, bottom: %.2f, trailing: %.2f", v4, *&self->_directionalEdgeInsets.top, *&self->_directionalEdgeInsets.leading, *&self->_directionalEdgeInsets.bottom, *&self->_directionalEdgeInsets.trailing];

  return v5;
}

- (NSDirectionalEdgeInsets)directionalEdgeInsets
{
  top = self->_directionalEdgeInsets.top;
  leading = self->_directionalEdgeInsets.leading;
  bottom = self->_directionalEdgeInsets.bottom;
  trailing = self->_directionalEdgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end