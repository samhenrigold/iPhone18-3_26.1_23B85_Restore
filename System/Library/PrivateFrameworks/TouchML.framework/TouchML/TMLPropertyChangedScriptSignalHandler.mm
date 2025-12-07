@interface TMLPropertyChangedScriptSignalHandler
- (TMLPropertyChangedScriptSignalHandler)initWithFunctionName:(id)name context:(id)context binding:(id)binding;
- (void)attach;
- (void)bindingValueChanged:(id)changed;
- (void)detach;
@end

@implementation TMLPropertyChangedScriptSignalHandler

- (TMLPropertyChangedScriptSignalHandler)initWithFunctionName:(id)name context:(id)context binding:(id)binding
{
  bindingCopy = binding;
  contextCopy = context;
  nameCopy = name;
  target = [bindingCopy target];
  v15.receiver = self;
  v15.super_class = TMLPropertyChangedScriptSignalHandler;
  v13 = [(TMLScriptSignalHandler *)&v15 initWithFunctionName:nameCopy returnType:1 target:target context:contextCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_binding, binding);
  }

  return v13;
}

- (void)attach
{
  v3.receiver = self;
  v3.super_class = TMLPropertyChangedScriptSignalHandler;
  [(TMLScriptSignalHandler *)&v3 attach];
  [(TMLBinding *)self->_binding bind:self];
}

- (void)detach
{
  [(TMLBinding *)self->_binding unbind:self];
  v3.receiver = self;
  v3.super_class = TMLPropertyChangedScriptSignalHandler;
  [(TMLScriptSignalHandler *)&v3 detach];
}

- (void)bindingValueChanged:(id)changed
{
  v7[1] = *MEMORY[0x277D85DE8];
  target = [changed target];
  v7[0] = target;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6 = [(TMLScriptSignalHandler *)self callWithArguments:v5];
}

@end