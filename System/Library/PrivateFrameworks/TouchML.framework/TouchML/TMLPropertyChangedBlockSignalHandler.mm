@interface TMLPropertyChangedBlockSignalHandler
- (TMLPropertyChangedBlockSignalHandler)initWithBlock:(id)block binding:(id)binding;
- (void)attach;
- (void)bindingValueChanged:(id)changed;
- (void)detach;
@end

@implementation TMLPropertyChangedBlockSignalHandler

- (TMLPropertyChangedBlockSignalHandler)initWithBlock:(id)block binding:(id)binding
{
  bindingCopy = binding;
  v11.receiver = self;
  v11.super_class = TMLPropertyChangedBlockSignalHandler;
  v8 = [(TMLBlockSignalHandler *)&v11 initWithBlock:block];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_binding, binding);
  }

  return v9;
}

- (void)attach
{
  v3.receiver = self;
  v3.super_class = TMLPropertyChangedBlockSignalHandler;
  [(TMLBlockSignalHandler *)&v3 attach];
  [(TMLBinding *)self->_binding bind:self];
}

- (void)detach
{
  [(TMLBinding *)self->_binding unbind:self];
  v3.receiver = self;
  v3.super_class = TMLPropertyChangedBlockSignalHandler;
  [(TMLBlockSignalHandler *)&v3 detach];
}

- (void)bindingValueChanged:(id)changed
{
  v7[1] = *MEMORY[0x277D85DE8];
  target = [changed target];
  v7[0] = target;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6 = [(TMLBlockSignalHandler *)self callWithArguments:v5];
}

@end