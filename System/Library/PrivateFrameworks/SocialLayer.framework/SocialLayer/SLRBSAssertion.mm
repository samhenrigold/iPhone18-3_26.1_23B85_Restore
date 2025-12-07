@interface SLRBSAssertion
+ (id)assertionNameForType:(int64_t)type;
+ (id)assertionWithType:(int64_t)type pid:(int)pid error:(id *)error;
- (BOOL)isValid;
- (SLRBSAssertion)initWithType:(int64_t)type pid:(int)pid error:(id *)error;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SLRBSAssertion

+ (id)assertionNameForType:(int64_t)type
{
  if (type)
  {
    return 0;
  }

  else
  {
    return @"CollaborationHandshake";
  }
}

+ (id)assertionWithType:(int64_t)type pid:(int)pid error:(id *)error
{
  v5 = [objc_alloc(objc_opt_class()) initWithType:type pid:*&pid error:error];

  return v5;
}

- (SLRBSAssertion)initWithType:(int64_t)type pid:(int)pid error:(id *)error
{
  v6 = *&pid;
  v39[1] = *MEMORY[0x277D85DE8];
  v8 = [SLRBSAssertion assertionNameForType:type];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SLRBSAssertion for pid: %i", v6];
    v10 = [MEMORY[0x277D47008] targetWithPid:v6];
    v11 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.sociallayer" name:v8];
    v12 = objc_alloc(MEMORY[0x277D46DB8]);
    v37 = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v14 = [v12 initWithExplanation:v9 target:v10 attributes:v13];

    v15 = [v14 acquireWithError:error];
    if (v15)
    {
      v26.receiver = self;
      v26.super_class = SLRBSAssertion;
      v16 = [(SLRBSAssertion *)&v26 init];
      if (v16)
      {
        p_isa = &v16->super.isa;
        v18 = SLDaemonLogHandle(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v30 = "[SLRBSAssertion initWithType:pid:error:]";
          v31 = 2048;
          v32 = v14;
          v33 = 2112;
          v34 = v8;
          v35 = 1024;
          v36 = v6;
          _os_log_impl(&dword_231772000, v18, OS_LOG_TYPE_DEFAULT, "%s acquired assertion: <RBSAssertion: %p> name: '%@' for pid: %i", buf, 0x26u);
        }

        objc_storeStrong(p_isa + 1, v14);
        self = p_isa;
        selfCopy = self;
        goto LABEL_17;
      }

      if (error)
      {
        v22 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA068];
        v28 = @"SLRBSAssertion init failed";
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        *error = [v22 errorWithDomain:@"com.apple.sociallayerd.SLRBSAssertion" code:0 userInfo:v23];
      }

      v24 = SLDaemonLogHandle(v16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [SLRBSAssertion initWithType:v24 pid:? error:?];
      }

      [v14 invalidate];
      self = 0;
    }

    else
    {
      v21 = SLDaemonLogHandle(v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SLRBSAssertion initWithType:error pid:v6 error:v21];
      }
    }

    selfCopy = 0;
LABEL_17:

    goto LABEL_18;
  }

  v20 = MEMORY[0x277CCA9B8];
  v38 = *MEMORY[0x277CCA068];
  v39[0] = @"SLRBSAssertion: invalid assertion type";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  [v20 errorWithDomain:@"com.apple.sociallayerd.SLRBSAssertion" code:0 userInfo:v9];
  *error = selfCopy = 0;
LABEL_18:

  return selfCopy;
}

- (BOOL)isValid
{
  assertion = [(SLRBSAssertion *)self assertion];
  isValid = [assertion isValid];

  return isValid;
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  isValid = [(SLRBSAssertion *)self isValid];
  if (isValid)
  {
    v4 = SLDaemonLogHandle(isValid);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      assertion = [(SLRBSAssertion *)self assertion];
      v7 = 136315394;
      v8 = "[SLRBSAssertion invalidate]";
      v9 = 2048;
      v10 = assertion;
      _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "%s invalidating assertion: <RBSAssertion: %p>", &v7, 0x16u);
    }

    assertion2 = [(SLRBSAssertion *)self assertion];
    [assertion2 invalidate];
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  isValid = [(SLRBSAssertion *)self isValid];
  if (isValid)
  {
    v4 = SLDaemonLogHandle(isValid);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      assertion = [(SLRBSAssertion *)self assertion];
      *buf = 136315394;
      v9 = "[SLRBSAssertion dealloc]";
      v10 = 2048;
      v11 = assertion;
      _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "%s invalidating assertion: <RBSAssertion: %p>", buf, 0x16u);
    }

    assertion2 = [(SLRBSAssertion *)self assertion];
    [assertion2 invalidate];
  }

  v7.receiver = self;
  v7.super_class = SLRBSAssertion;
  [(SLRBSAssertion *)&v7 dealloc];
}

- (void)initWithType:(uint64_t *)a1 pid:(int)a2 error:(os_log_t)log .cold.1(uint64_t *a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 136315650;
  v5 = "[SLRBSAssertion initWithType:pid:error:]";
  v6 = 1024;
  v7 = a2;
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "%s Unable to acquire assertion for pid: %i error: %@", &v4, 0x1Cu);
}

- (void)initWithType:(os_log_t)log pid:error:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SLRBSAssertion initWithType:pid:error:]";
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "%s initialization failed, but we acquired the assertion. Invalidating it and returning nil", &v1, 0xCu);
}

@end