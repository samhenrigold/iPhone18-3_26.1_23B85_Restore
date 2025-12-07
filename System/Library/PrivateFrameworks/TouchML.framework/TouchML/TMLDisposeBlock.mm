@interface TMLDisposeBlock
- (TMLDisposeBlock)initWithBlock:(id)block;
- (void)tmlDispose;
@end

@implementation TMLDisposeBlock

- (TMLDisposeBlock)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = TMLDisposeBlock;
  v5 = [(TMLDisposeBlock *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x27438BB60](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)tmlDispose
{
  block = self->_block;
  if (block)
  {
    block[2](block, a2);
    block = self->_block;
  }

  self->_block = 0;
}

@end