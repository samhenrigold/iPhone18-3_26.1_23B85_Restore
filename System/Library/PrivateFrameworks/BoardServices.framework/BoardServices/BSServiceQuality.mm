@interface BSServiceQuality
+ (id)main;
+ (void)_serviceWithClass:(uint64_t)class relativePriority:(uint64_t)priority main:;
- (BOOL)isEqual:(id)equal;
- (BSServiceQuality)init;
- (id)description;
- (void)_initWithClass:(void *)class name:(int)name relativePriority:(char)priority singleton:(char)singleton main:;
- (void)dealloc;
@end

@implementation BSServiceQuality

+ (id)main
{
  v2 = qos_class_main();

  return [BSServiceQuality _serviceWithClass:v2 relativePriority:0 main:1];
}

- (BSServiceQuality)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceQuality"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSServiceQuality.m";
    v18 = 1024;
    v19 = 27;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_initWithClass:(void *)class name:(int)name relativePriority:(char)priority singleton:(char)singleton main:
{
  v35 = *MEMORY[0x1E69E9840];
  classCopy = class;
  if (self)
  {
    v12 = objc_opt_class();
    if (v12 != objc_opt_class())
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceQuality is not intended to be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(sel__initWithClass_name_relativePriority_singleton_main_);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        v24 = v18;
        v25 = 2114;
        v26 = v20;
        v27 = 2048;
        selfCopy = self;
        v29 = 2114;
        v30 = @"BSServiceQuality.m";
        v31 = 1024;
        v32 = 32;
        v33 = 2114;
        v34 = v17;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v21 = v17;
      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86A894);
    }

    v22.receiver = self;
    v22.super_class = BSServiceQuality;
    v13 = objc_msgSendSuper2(&v22, sel_init);
    if (v13)
    {
      v14 = [classCopy copy];
      v15 = v13[1];
      v13[1] = v14;

      *(v13 + 5) = a2;
      *(v13 + 6) = name;
      *(v13 + 16) = priority;
      *(v13 + 17) = singleton;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)_serviceWithClass:(uint64_t)class relativePriority:(uint64_t)priority main:
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  HIDWORD(v9) = a2 - 9;
  LODWORD(v9) = a2 - 9;
  v8 = v9 >> 2;
  if (v8 >= 7 || ((0x5Du >> v8) & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown qos=%u", a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(sel__serviceWithClass_relativePriority_main_);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v34 = v19;
      v35 = 2114;
      v36 = v21;
      v37 = 2048;
      v38 = v7;
      v39 = 2114;
      v40 = @"BSServiceQuality.m";
      v41 = 1024;
      v42 = 58;
      v43 = 2114;
      v44 = v18;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86ABE8);
  }

  v10 = off_1E7521090[v8];
  if (class)
  {
    if (priority)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot ask for main with relative priority : qos=%u rp=%i", a2, class];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel__serviceWithClass_relativePriority_main_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v34 = v29;
        v35 = 2114;
        v36 = v31;
        v37 = 2048;
        v38 = v7;
        v39 = 2114;
        v40 = @"BSServiceQuality.m";
        v41 = 1024;
        v42 = 89;
        v43 = 2114;
        v44 = v28;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = v28;
      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86ADE4);
    }

    v11 = [[BSServiceQuality alloc] _initWithClass:a2 name:v10 relativePriority:class singleton:0 main:0];
  }

  else
  {
    os_unfair_lock_lock(&_MergedGlobals_15);
    if (priority)
    {
      v12 = qword_1ED4A7CC8;
      if (!qword_1ED4A7CC8)
      {
        v12 = [[BSServiceQuality alloc] _initWithClass:a2 name:v10 relativePriority:0 singleton:1 main:1];
        v13 = qword_1ED4A7CC8;
        qword_1ED4A7CC8 = v12;
      }

      v11 = v12;
    }

    else
    {
      v11 = [qword_1ED4A7CD0 objectForKey:a2];
      if (!v11)
      {
        v11 = [[BSServiceQuality alloc] _initWithClass:a2 name:v10 relativePriority:0 singleton:1 main:0];
        v14 = qword_1ED4A7CD0;
        if (!qword_1ED4A7CD0)
        {
          v15 = objc_alloc_init(MEMORY[0x1E698E6E0]);
          v16 = qword_1ED4A7CD0;
          qword_1ED4A7CD0 = v15;

          v14 = qword_1ED4A7CD0;
        }

        [v14 setObject:v11 forKey:a2];
      }
    }

    os_unfair_lock_unlock(&_MergedGlobals_15);
    if (*(v11 + 5) != a2 || *(v11 + 6) || *(v11 + 16) != 1 || *(v11 + 17) != priority)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cached properties aren't consistent : qos=%u main=%i cached=%@", a2, priority, v11];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel__serviceWithClass_relativePriority_main_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v34 = v24;
        v35 = 2114;
        v36 = v26;
        v37 = 2048;
        v38 = v7;
        v39 = 2114;
        v40 = @"BSServiceQuality.m";
        v41 = 1024;
        v42 = 85;
        v43 = 2114;
        v44 = v23;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86ACE8);
    }
  }

  return v11;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_singleton)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can not deallocate a singleton BSServiceQuality : %@", self];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BSServiceQuality.m";
      v18 = 1024;
      v19 = 95;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86AFC8);
  }

  v9.receiver = self;
  v9.super_class = BSServiceQuality;
  [(BSServiceQuality *)&v9 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_serviceClass == equalCopy->_serviceClass && self->_relativePriority == equalCopy->_relativePriority;
  }

  return v6;
}

- (id)description
{
  serviceClassName = self->_serviceClassName;
  if (serviceClassName)
  {
    v4 = serviceClassName;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%x>", self->_serviceClass];
  }

  v5 = v4;
  if (self->_main)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"main(%@)", v4];

    v5 = v6;
  }

  relativePriority = self->_relativePriority;
  if (relativePriority)
  {
    relativePriority = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%+i", v5, relativePriority];

    v5 = relativePriority;
  }

  if (self->_singleton)
  {
    v9 = @"<BSServiceQuality:(%p) %@>";
  }

  else
  {
    v9 = @"<BSServiceQuality:%p %@>";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, self, v5];

  return v10;
}

@end