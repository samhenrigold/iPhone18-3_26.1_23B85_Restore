@interface TMLJSScope
- (void)addVar:(id)var;
@end

@implementation TMLJSScope

- (void)addVar:(id)var
{
  varCopy = var;
  vars = self->_vars;
  v8 = varCopy;
  if (!vars)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:4];
    v7 = self->_vars;
    self->_vars = v6;

    varCopy = v8;
    vars = self->_vars;
  }

  [(NSMutableSet *)vars addObject:varCopy];
}

@end