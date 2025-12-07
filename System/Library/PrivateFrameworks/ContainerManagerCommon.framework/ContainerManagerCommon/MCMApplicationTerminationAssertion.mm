@interface MCMApplicationTerminationAssertion
- (MCMApplicationTerminationAssertion)initWithBundleIdentifier:(id)identifier reason:(id)reason;
- (void)dealloc;
- (void)invalidate;
- (void)setTermAssertion:(id)assertion;
@end

@implementation MCMApplicationTerminationAssertion

- (void)setTermAssertion:(id)assertion
{
  p_termAssertion = &self->_termAssertion;

  objc_storeStrong(p_termAssertion, assertion);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(MCMApplicationTerminationAssertion *)self termAssertion];
  if (objc_claimAutoreleasedReturnValue())
  {
    __assert_rtn("[MCMApplicationTerminationAssertion dealloc]", "MCMApplicationTerminationAssertion.m", 93, "nil == self.termAssertion");
  }

  v3.receiver = self;
  v3.super_class = MCMApplicationTerminationAssertion;
  [(MCMApplicationTerminationAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  termAssertion = [(MCMApplicationTerminationAssertion *)self termAssertion];
  if (termAssertion)
  {
    v4 = termAssertion;
    [termAssertion invalidate];
    [(MCMApplicationTerminationAssertion *)self setTermAssertion:0];
    termAssertion = v4;
  }
}

- (MCMApplicationTerminationAssertion)initWithBundleIdentifier:(id)identifier reason:(id)reason
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  reasonCopy = reason;
  v23.receiver = self;
  v23.super_class = MCMApplicationTerminationAssertion;
  v8 = [(MCMApplicationTerminationAssertion *)&v23 init];
  if (!v8 || !NSClassFromString(@"RBSProcessPredicate"))
  {
LABEL_21:
    v20 = v8;
    goto LABEL_22;
  }

  v9 = [MEMORY[0x1E69C7608] predicateMatchingBundleIdentifier:identifierCopy];
  if (!v9)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Failed to generate predicate for termination assertion for [%@]", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E69C7658]) initWithExplanation:reasonCopy];
  if (!v11)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to generate context for termination assertion for [%@]", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v12 = v11;
  [v11 setExceptionCode:3735933956];
  v13 = [objc_alloc(MEMORY[0x1E69C7670]) initWithPredicate:v10 context:v12];
  if (!v13)
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to init termination assertion for [%@]", buf, 0xCu);
    }

LABEL_15:
LABEL_16:

    goto LABEL_17;
  }

  v14 = v13;
  v22 = 0;
  v15 = [v13 acquireWithError:&v22];
  v16 = v22;
  if (v15)
  {
    v17 = v14;
    termAssertion = v8->_termAssertion;
    v8->_termAssertion = v17;
  }

  else
  {
    termAssertion = container_log_handle_for_category();
    if (os_log_type_enabled(termAssertion, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = v16;
      _os_log_error_impl(&dword_1DF2C3000, termAssertion, OS_LOG_TYPE_ERROR, "Failed to acquire termination assertion for [%@]: %@", buf, 0x16u);
    }
  }

  if (v15)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = 0;
LABEL_22:

  return v20;
}

@end