@interface _EMRemoteInterfaceDistantObjectReattempt
+ (id)recordedAttemptWithOriginalInvocation:(id)invocation target:(id)target error:(id)error;
- (_EMRemoteInterfaceDistantObjectReattempt)initWithOriginalInvocation:(id)invocation target:(id)target error:(id)error;
- (void)perform;
@end

@implementation _EMRemoteInterfaceDistantObjectReattempt

+ (id)recordedAttemptWithOriginalInvocation:(id)invocation target:(id)target error:(id)error
{
  invocationCopy = invocation;
  targetCopy = target;
  errorCopy = error;
  v11 = [[self alloc] initWithOriginalInvocation:invocationCopy target:targetCopy error:errorCopy];

  return v11;
}

- (_EMRemoteInterfaceDistantObjectReattempt)initWithOriginalInvocation:(id)invocation target:(id)target error:(id)error
{
  invocationCopy = invocation;
  targetCopy = target;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = _EMRemoteInterfaceDistantObjectReattempt;
  v12 = [(_EMRemoteInterfaceDistantObjectReattempt *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_invocation, invocation);
    [(NSInvocation *)v13->_invocation setTarget:targetCopy];
    [(NSInvocation *)v13->_invocation retainArguments];
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

- (void)perform
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = +[EMRemoteConnection log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    invocation = self->_invocation;
    v5 = NSStringFromSelector([(NSInvocation *)invocation selector]);
    target = [(NSInvocation *)self->_invocation target];
    v7 = 138544130;
    selfCopy = self;
    v9 = 2114;
    v10 = invocation;
    v11 = 2114;
    v12 = v5;
    v13 = 2048;
    v14 = target;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: reattempting invocation: %{public}@, selector: %{public}@, target: %p", &v7, 0x2Au);
  }

  [(NSInvocation *)self->_invocation invoke];
}

@end