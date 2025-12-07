@interface TMLBlockSignalHandler
- (TMLBlockSignalHandler)initWithBlock:(id)block;
- (id)callWithArguments:(id)arguments;
@end

@implementation TMLBlockSignalHandler

- (TMLBlockSignalHandler)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = TMLBlockSignalHandler;
  v5 = [(TMLBlockSignalHandler *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x27438BB60](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)callWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  if ((atomic_fetch_or(&self->_flags, 0x40u) & 0x40) != 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nested signal triggered '%@'", @"<block>"];
    v9 = [v7 exceptionWithName:@"TMLRuntimeException" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v5 = argumentsCopy;
  (*(self->_block + 2))();
  atomic_fetch_and_explicit(&self->_flags, 0xBFu, memory_order_relaxed);

  return 0;
}

@end