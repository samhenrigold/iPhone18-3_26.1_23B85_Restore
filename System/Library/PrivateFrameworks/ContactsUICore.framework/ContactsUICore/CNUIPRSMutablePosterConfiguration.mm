@interface CNUIPRSMutablePosterConfiguration
- (CNUIPRSMutablePosterConfiguration)init;
@end

@implementation CNUIPRSMutablePosterConfiguration

- (CNUIPRSMutablePosterConfiguration)init
{
  v17.receiver = self;
  v17.super_class = CNUIPRSMutablePosterConfiguration;
  v2 = [(CNUIPRSMutablePosterConfiguration *)&v17 init];
  if (v2)
  {
    getPRSMutablePosterConfigurationClass();
    objc_opt_class();
    v3 = objc_opt_respondsToSelector();
    PRSMutablePosterConfigurationClass = getPRSMutablePosterConfigurationClass();
    v5 = PRSMutablePosterConfigurationClass;
    if (v3)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v6 = getPRSPosterRoleIncomingCallSymbolLoc_ptr_0;
      v26 = getPRSPosterRoleIncomingCallSymbolLoc_ptr_0;
      if (!getPRSPosterRoleIncomingCallSymbolLoc_ptr_0)
      {
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __getPRSPosterRoleIncomingCallSymbolLoc_block_invoke_0;
        v21 = &unk_1E76E79E0;
        v22 = &v23;
        v7 = PosterBoardServicesLibrary_0();
        v8 = dlsym(v7, "PRSPosterRoleIncomingCall");
        *(v22[1] + 24) = v8;
        getPRSPosterRoleIncomingCallSymbolLoc_ptr_0 = *(v22[1] + 24);
        v6 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (!v6)
      {
        +[CNUIIDSRequest IDSServiceForService:];
        v16 = v15;
        _Block_object_dispose(&v23, 8);
        _Unwind_Resume(v16);
      }

      v9 = *v6;
      v10 = [v5 mutableConfigurationWithRole:v9];
      wrappedMutablePosterConfiguration = v2->_wrappedMutablePosterConfiguration;
      v2->_wrappedMutablePosterConfiguration = v10;
    }

    else
    {
      mutableConfiguration = [PRSMutablePosterConfigurationClass mutableConfiguration];
      v9 = v2->_wrappedMutablePosterConfiguration;
      v2->_wrappedMutablePosterConfiguration = mutableConfiguration;
    }

    v13 = v2;
  }

  return v2;
}

@end