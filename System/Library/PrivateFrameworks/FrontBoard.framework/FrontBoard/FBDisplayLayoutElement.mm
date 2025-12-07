@interface FBDisplayLayoutElement
- (FBDisplayLayoutElement)initWithDisplayType:(int64_t)type identifier:(id)identifier elementClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)activateWithBuilder:(id)builder;
- (void)deactivate;
- (void)dealloc;
- (void)updateWithBuilder:(id)builder;
@end

@implementation FBDisplayLayoutElement

- (FBDisplayLayoutElement)initWithDisplayType:(int64_t)type identifier:(id)identifier elementClass:(Class)class
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [FBDisplayLayoutElement initWithDisplayType:a2 identifier:self elementClass:?];
  }

  v10 = identifierCopy;
  v21.receiver = self;
  v21.super_class = FBDisplayLayoutElement;
  v11 = [(FBDisplayLayoutElement *)&v21 init];
  if (v11)
  {
    if (type)
    {
      v12 = 0;
    }

    else
    {
      v12 = +[FBMainDisplayLayoutPublisher sharedInstance];
    }

    publisher = v11->_publisher;
    v11->_publisher = v12;

    v11->_displayType = type;
    v14 = [v10 copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBDisplayLayoutElement:%p %@", v11, v11->_identifier];
    key = v11->_key;
    v11->_key = v16;

    v11->_elementClass = class;
    v18 = [[class alloc] initWithIdentifier:v11->_identifier];
    element = v11->_element;
    v11->_element = v18;
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_activeAssertion == ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(self);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"FBDisplayLayoutElement.m";
    v10 = 1024;
    v11 = 46;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithBuilder:(id)builder
{
  builderCopy = builder;
  v7 = builderCopy;
  if (builderCopy)
  {
    (*(builderCopy + 2))(builderCopy, self->_element);
    builderCopy = v7;
  }

  if (!self->_activeAssertion)
  {
    v5 = [(FBMainDisplayLayoutPublisher *)self->_publisher _addElement:self->_element forKey:self->_key];
    activeAssertion = self->_activeAssertion;
    self->_activeAssertion = v5;

    builderCopy = v7;
  }
}

- (void)updateWithBuilder:(id)builder
{
  builderCopy = builder;
  v8 = builderCopy;
  if (builderCopy)
  {
    (*(builderCopy + 2))(builderCopy, self->_element);
    builderCopy = v8;
  }

  if (self->_activeAssertion)
  {
    v5 = [(FBMainDisplayLayoutPublisher *)self->_publisher transitionAssertionWithReason:0];
    [(BSInvalidatable *)self->_activeAssertion invalidate];
    v6 = [(FBMainDisplayLayoutPublisher *)self->_publisher _addElement:self->_element forKey:self->_key];
    activeAssertion = self->_activeAssertion;
    self->_activeAssertion = v6;

    [v5 invalidate];
    builderCopy = v8;
  }
}

- (void)deactivate
{
  activeAssertion = self->_activeAssertion;
  if (activeAssertion)
  {
    [(BSInvalidatable *)activeAssertion invalidate];
    v4 = self->_activeAssertion;
    self->_activeAssertion = 0;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBDisplayLayoutElement *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = FBSDisplayTypeDescription();
  v5 = [v3 appendObject:v4 withName:@"displayType"];

  v6 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v7 = NSStringFromClass(self->_elementClass);
  v8 = [v3 appendObject:v7 withName:@"class"];

  v9 = [v3 appendBool:self->_activeAssertion != 0 withName:@"activated"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBDisplayLayoutElement *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBDisplayLayoutElement *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__FBDisplayLayoutElement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E783B240;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (void)initWithDisplayType:(const char *)a1 identifier:(uint64_t)a2 elementClass:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"FBDisplayLayoutElement.m";
    v10 = 1024;
    v11 = 33;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end