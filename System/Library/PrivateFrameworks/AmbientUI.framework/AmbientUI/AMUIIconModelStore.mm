@interface AMUIIconModelStore
- (AMUIIconModelStoreDelegate)iconModelStoreDelegate;
- (BOOL)saveCurrentIconState:(id)state error:(id *)error;
- (PRSPosterConfiguration)posterConfiguration;
- (id)loadCurrentIconState:(id *)state;
@end

@implementation AMUIIconModelStore

- (BOOL)saveCurrentIconState:(id)state error:(id *)error
{
  stateCopy = state;
  iconModelStoreDelegate = [(AMUIIconModelStore *)self iconModelStoreDelegate];
  v14 = 0;
  v8 = [iconModelStoreDelegate iconModelStore:self saveIconState:stateCopy toPosterConfigurationWithError:&v14];

  v9 = v14;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = v9;
    *error = v10;
    v12 = AMUILogInfograph(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AMUIIconModelStore saveCurrentIconState:v10 error:v12];
    }
  }

  return v8;
}

- (id)loadCurrentIconState:(id *)state
{
  iconModelStoreDelegate = [(AMUIIconModelStore *)self iconModelStoreDelegate];
  v12 = 0;
  v6 = [iconModelStoreDelegate iconModelStore:self loadIconStateFromPosterConfigurationWithError:&v12];
  v7 = v12;
  v8 = v7;
  if (!v6)
  {
    v9 = AMUILogInfograph(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AMUIIconModelStore *)v8 loadCurrentIconState:v9];
    }

    if (v8)
    {
      v10 = v8;
      *state = v8;
    }
  }

  return v6;
}

- (AMUIIconModelStoreDelegate)iconModelStoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconModelStoreDelegate);

  return WeakRetained;
}

- (PRSPosterConfiguration)posterConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_posterConfiguration);

  return WeakRetained;
}

- (void)saveCurrentIconState:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Failed to save icon state in poster configuration withError:%@", &v2, 0xCu);
}

- (void)loadCurrentIconState:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Received nil icon state from poster configuration with error:%@", &v2, 0xCu);
}

@end