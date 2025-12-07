@interface LACUIPackagedViewStateTransition
- (LACUIPackagedViewStateTransition)initWithFromState:(id)state toState:(id)toState completion:(id)completion;
- (void)complete:(BOOL)complete;
- (void)dealloc;
@end

@implementation LACUIPackagedViewStateTransition

- (LACUIPackagedViewStateTransition)initWithFromState:(id)state toState:(id)toState completion:(id)completion
{
  stateCopy = state;
  toStateCopy = toState;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = LACUIPackagedViewStateTransition;
  v12 = [(LACUIPackagedViewStateTransition *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fromState, state);
    objc_storeStrong(&v13->_toState, toState);
    v14 = [completionCopy copy];
    handler = v13->_handler;
    v13->_handler = v14;
  }

  return v13;
}

- (void)dealloc
{
  [(LACUIPackagedViewStateTransition *)self complete:0];
  v3.receiver = self;
  v3.super_class = LACUIPackagedViewStateTransition;
  [(LACUIPackagedViewStateTransition *)&v3 dealloc];
}

- (void)complete:(BOOL)complete
{
  handler = self->_handler;
  if (handler)
  {
    completeCopy = complete;
    v7 = [handler copy];
    v6 = self->_handler;
    self->_handler = 0;

    v7[2](v7, completeCopy);
  }
}

@end