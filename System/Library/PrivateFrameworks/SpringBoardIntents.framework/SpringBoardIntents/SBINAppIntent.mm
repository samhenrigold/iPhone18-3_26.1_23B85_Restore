@interface SBINAppIntent
- (BOOL)isEqual:(id)equal;
- (SBINAppIntent)initWithIdentifier:(id)identifier systemContext:(id)context;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBINAppIntent

- (SBINAppIntent)initWithIdentifier:(id)identifier systemContext:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  if (!identifierCopy)
  {
    [SBINAppIntent initWithIdentifier:a2 systemContext:self];
  }

  v10 = contextCopy;
  if (!contextCopy)
  {
    [SBINAppIntent initWithIdentifier:a2 systemContext:self];
  }

  v14.receiver = self;
  v14.super_class = SBINAppIntent;
  v11 = [(SBINAppIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_systemContext, context);
  }

  return v12;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  [formatterCopy appendString:self->_identifier withName:@"identifier"];
  v4 = [formatterCopy appendObject:self->_systemContext withName:@"systemContext"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      if (BSEqualStrings())
      {
        v8 = BSEqualObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)initWithIdentifier:(const char *)a1 systemContext:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"systemContext != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"SBINAppIntent.m";
    v10 = 1024;
    v11 = 20;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_26B9E8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(const char *)a1 systemContext:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"SBINAppIntent.m";
    v10 = 1024;
    v11 = 19;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_26B9E8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end