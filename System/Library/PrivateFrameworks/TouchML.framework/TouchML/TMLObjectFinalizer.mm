@interface TMLObjectFinalizer
+ (void)runBlock:(id)block onFinalize:(id)finalize;
- (TMLObjectFinalizer)initWithBlock:(id)block;
- (void)dealloc;
@end

@implementation TMLObjectFinalizer

- (TMLObjectFinalizer)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = TMLObjectFinalizer;
  v5 = [(TMLObjectFinalizer *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x27438BB60](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)dealloc
{
  block = self->_block;
  if (block)
  {
    block[2](block, a2);
  }

  v4.receiver = self;
  v4.super_class = TMLObjectFinalizer;
  [(TMLObjectFinalizer *)&v4 dealloc];
}

+ (void)runBlock:(id)block onFinalize:(id)finalize
{
  object = finalize;
  blockCopy = block;
  v6 = objc_getAssociatedObject(object, &unk_26F208C14);
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    objc_setAssociatedObject(object, &unk_26F208C14, v6, 1);
  }

  v7 = [[TMLObjectFinalizer alloc] initWithBlock:blockCopy];

  [v6 addObject:v7];
}

@end