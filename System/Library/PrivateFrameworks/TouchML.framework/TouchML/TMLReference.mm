@interface TMLReference
+ (id)referenceForTarget:(id)target;
+ (id)referenceWithBlock:(id)block;
- (NSString)description;
- (TMLReference)initWithTarget:(id)target block:(id)block;
- (id)value;
@end

@implementation TMLReference

- (TMLReference)initWithTarget:(id)target block:(id)block
{
  targetCopy = target;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = TMLReference;
  v9 = [(TMLReference *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_target, target);
    v11 = MEMORY[0x27438BB60](blockCopy);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

+ (id)referenceForTarget:(id)target
{
  targetCopy = target;
  v5 = [[self alloc] initWithTarget:targetCopy block:0];

  return v5;
}

+ (id)referenceWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithTarget:0 block:blockCopy];

  return v5;
}

- (id)value
{
  block = self->_block;
  if (block)
  {
    v4 = block[2](block, a2);
    target = self->_target;
    self->_target = v4;

    v6 = self->_block;
    self->_block = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = self->_target;
  if (isKindOfClass)
  {
    object = [v8 object];
  }

  else
  {
    object = v8;
  }

  return object;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  tmlIdentifier = [self->_target tmlIdentifier];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, tmlIdentifier];

  return v6;
}

@end