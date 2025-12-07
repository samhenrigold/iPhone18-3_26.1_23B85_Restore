@interface TMLJSValueProxy
- (TMLJSValueProxy)initWithTarget:(id)target keyPath:(id)path;
- (id)_;
- (void)set_:(id)set_;
@end

@implementation TMLJSValueProxy

- (TMLJSValueProxy)initWithTarget:(id)target keyPath:(id)path
{
  targetCopy = target;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = TMLJSValueProxy;
  v9 = [(TMLJSValueProxy *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_target, target);
    v11 = [pathCopy copy];
    keyPath = v10->_keyPath;
    v10->_keyPath = v11;
  }

  return v10;
}

- (id)_
{
  v2 = [self->_target tmlValueForKeyPath:self->_keyPath];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    currentContext = [MEMORY[0x277CD4640] currentContext];
    v4 = [TMLJSNil jsValueInContext:currentContext];
  }

  return v4;
}

- (void)set_:(id)set_
{
  v4 = [TMLJSNil unwrap:set_];
  [self->_target setTMLValue:? forKeyPath:?];
}

@end