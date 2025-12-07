@interface TMLBlockReactiveValue
- (TMLBlockReactiveValue)initWithBlock:(id)block bindings:(id)bindings valueType:(unint64_t)type;
- (id)value;
@end

@implementation TMLBlockReactiveValue

- (TMLBlockReactiveValue)initWithBlock:(id)block bindings:(id)bindings valueType:(unint64_t)type
{
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = TMLBlockReactiveValue;
  v9 = [(TMLReactiveValue *)&v13 initWithBindings:bindings valueType:type];
  if (v9)
  {
    v10 = MEMORY[0x27438BB60](blockCopy);
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

- (id)value
{
  block = self->_block;
  if (block)
  {
    bindings = [(TMLReactiveValue *)self bindings];
    block = (block)[2](block, bindings);
  }

  return block;
}

@end