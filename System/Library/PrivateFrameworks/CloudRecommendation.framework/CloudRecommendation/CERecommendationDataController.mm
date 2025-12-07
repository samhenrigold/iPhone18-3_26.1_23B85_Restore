@interface CERecommendationDataController
- (CERecommendationDataController)initWithAccount:(id)account;
- (void)fetchCompletedRecommendations:(id)recommendations completion:(id)completion;
- (void)fetchCompletedRecommendations:(id)recommendations recommendationInfo:(id)info completion:(id)completion;
- (void)fetchRecommendationsRulesetWithCompletion:(id)completion;
- (void)fetchRecommendationsRulesetWithInfo:(id)info completion:(id)completion;
- (void)fetchRecommendationsWithCompletion:(id)completion;
- (void)fetchRecommendationsWithInfo:(id)info completion:(id)completion;
- (void)sendRecommendationStatus:(id)status configuration:(id)configuration recommendationIdentifiers:(id)identifiers storageRecovered:(id)recovered context:(id)context completion:(id)completion;
@end

@implementation CERecommendationDataController

- (CERecommendationDataController)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = CERecommendationDataController;
  v6 = [(CERecommendationDataController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (void)fetchRecommendationsWithCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v6 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  aa_isManagedAppleID = [(ACAccount *)self->_account aa_isManagedAppleID];
  v8 = aa_isManagedAppleID;
  v9 = _CELogSystem(aa_isManagedAppleID);
  v10 = v9;
  if (aa_altDSID)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v8 == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsWithCompletion:];
    }

    v15 = _CESignpostLogSystem(v14);
    v16 = objc_opt_new();
    v17 = _CESignpostCreateWithObject(v15, v16);
    v19 = v18;

    v21 = _CESignpostLogSystem(v20);
    v22 = v21;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v17, "RecommendationsRequest", "", buf, 2u);
    }

    v24 = _CESignpostLogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsWithCompletion:];
    }

    v13 = objc_alloc_init(getINDaemonConnectionClass());
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke;
    v31[3] = &unk_278DE0370;
    v33 = v17;
    v34 = v19;
    v25 = completionCopy;
    v32 = v25;
    v26 = [v13 daemonWithErrorHandler:v31];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1;
    v27[3] = &unk_278DE0398;
    v29 = v17;
    v30 = v19;
    v28 = v25;
    [v26 fetchRecommendationsForAltDSID:aa_altDSID completion:v27];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v36 = aa_altDSID;
      v37 = 1024;
      v38 = v6;
      v39 = 1024;
      v40 = v8;
      _os_log_error_impl(&dword_2439E1000, v10, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v13 = CECreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_1();
  }

  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _CESignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RecommendationsRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v8 = _CESignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[5];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RecommendationsRequest", "", v16, 2u);
  }

  v12 = _CESignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2();
  }

  if (v5)
  {
    v14 = *(a1[4] + 16);
  }

  else
  {
    v15 = _CELogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1_cold_2();
    }

    v14 = *(a1[4] + 16);
  }

  v14();
}

- (void)fetchRecommendationsWithInfo:(id)info completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v9 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  aa_isManagedAppleID = [(ACAccount *)self->_account aa_isManagedAppleID];
  v11 = aa_isManagedAppleID;
  v12 = _CELogSystem(aa_isManagedAppleID);
  v13 = v12;
  if (aa_altDSID)
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v11 == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsWithCompletion:];
    }

    v18 = _CESignpostLogSystem(v17);
    v19 = objc_opt_new();
    v20 = _CESignpostCreateWithObject(v18, v19);
    v22 = v21;

    v24 = _CESignpostLogSystem(v23);
    v25 = v24;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v20, "RecommendationsRequest", "", buf, 2u);
    }

    v27 = _CESignpostLogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsWithCompletion:];
    }

    v16 = objc_alloc_init(getINDaemonConnectionClass());
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __74__CERecommendationDataController_fetchRecommendationsWithInfo_completion___block_invoke;
    v36[3] = &unk_278DE0370;
    v38 = v20;
    v39 = v22;
    v28 = completionCopy;
    v37 = v28;
    v29 = [v16 synchronousDaemonWithErrorHandler:v36];
    v30 = objc_opt_respondsToSelector();
    if (v30)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __74__CERecommendationDataController_fetchRecommendationsWithInfo_completion___block_invoke_5;
      v32[3] = &unk_278DE0398;
      v34 = v20;
      v35 = v22;
      v33 = v28;
      [v29 fetchRecommendationsForAltDSID:aa_altDSID recommendationInfo:infoCopy completion:v32];
      v31 = v33;
    }

    else
    {
      v31 = _CELogSystem(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationDataController fetchRecommendationsWithInfo:completion:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v41 = aa_altDSID;
      v42 = 1024;
      v43 = v9;
      v44 = 1024;
      v45 = v11;
      _os_log_error_impl(&dword_2439E1000, v13, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v16 = CECreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }
}

void __74__CERecommendationDataController_fetchRecommendationsWithInfo_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_1();
  }

  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _CESignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RecommendationsRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __74__CERecommendationDataController_fetchRecommendationsWithInfo_completion___block_invoke_5(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v8 = _CESignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[5];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RecommendationsRequest", "", v16, 2u);
  }

  v12 = _CESignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2();
  }

  if (v5)
  {
    v14 = *(a1[4] + 16);
  }

  else
  {
    v15 = _CELogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1_cold_2();
    }

    v14 = *(a1[4] + 16);
  }

  v14();
}

- (void)fetchRecommendationsRulesetWithCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v6 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  aa_isManagedAppleID = [(ACAccount *)self->_account aa_isManagedAppleID];
  v8 = aa_isManagedAppleID;
  v9 = _CELogSystem(aa_isManagedAppleID);
  v10 = v9;
  if (aa_altDSID)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v8 == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsRulesetWithCompletion:];
    }

    v15 = _CESignpostLogSystem(v14);
    v16 = objc_opt_new();
    v17 = _CESignpostCreateWithObject(v15, v16);
    v19 = v18;

    v21 = _CESignpostLogSystem(v20);
    v22 = v21;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v17, "RecommendationsRulesetRequest", "", buf, 2u);
    }

    v24 = _CESignpostLogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsRulesetWithCompletion:];
    }

    v13 = objc_alloc_init(getINDaemonConnectionClass());
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke;
    v31[3] = &unk_278DE0370;
    v33 = v17;
    v34 = v19;
    v25 = completionCopy;
    v32 = v25;
    v26 = [v13 daemonWithErrorHandler:v31];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6;
    v27[3] = &unk_278DE03C0;
    v29 = v17;
    v30 = v19;
    v28 = v25;
    [v26 fetchRecommendationsRulesetForAltDSID:aa_altDSID completion:v27];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v36 = aa_altDSID;
      v37 = 1024;
      v38 = v6;
      v39 = 1024;
      v40 = v8;
      _os_log_error_impl(&dword_2439E1000, v10, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v13 = CECreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_1();
  }

  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _CESignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RecommendationsRulesetRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v8 = _CESignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[5];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RecommendationsRulesetRequest", "", v16, 2u);
  }

  v12 = _CESignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2();
  }

  if (v5)
  {
    v14 = *(a1[4] + 16);
  }

  else
  {
    v15 = _CELogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6_cold_2();
    }

    v14 = *(a1[4] + 16);
  }

  v14();
}

- (void)fetchRecommendationsRulesetWithInfo:(id)info completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v9 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  aa_isManagedAppleID = [(ACAccount *)self->_account aa_isManagedAppleID];
  v11 = aa_isManagedAppleID;
  v12 = _CELogSystem(aa_isManagedAppleID);
  v13 = v12;
  if (aa_altDSID)
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v11 == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsRulesetWithCompletion:];
    }

    v18 = _CESignpostLogSystem(v17);
    v19 = objc_opt_new();
    v20 = _CESignpostCreateWithObject(v18, v19);
    v22 = v21;

    v24 = _CESignpostLogSystem(v23);
    v25 = v24;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v20, "RecommendationsRulesetRequest", "", buf, 2u);
    }

    v27 = _CESignpostLogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsRulesetWithCompletion:];
    }

    v16 = objc_alloc_init(getINDaemonConnectionClass());
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __81__CERecommendationDataController_fetchRecommendationsRulesetWithInfo_completion___block_invoke;
    v36[3] = &unk_278DE0370;
    v38 = v20;
    v39 = v22;
    v28 = completionCopy;
    v37 = v28;
    v29 = [v16 synchronousDaemonWithErrorHandler:v36];
    v30 = objc_opt_respondsToSelector();
    if (v30)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __81__CERecommendationDataController_fetchRecommendationsRulesetWithInfo_completion___block_invoke_10;
      v32[3] = &unk_278DE03C0;
      v34 = v20;
      v35 = v22;
      v33 = v28;
      [v29 fetchRecommendationsRulesetForAltDSID:aa_altDSID recommendationInfo:infoCopy completion:v32];
      v31 = v33;
    }

    else
    {
      v31 = _CELogSystem(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationDataController fetchRecommendationsRulesetWithInfo:completion:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v41 = aa_altDSID;
      v42 = 1024;
      v43 = v9;
      v44 = 1024;
      v45 = v11;
      _os_log_error_impl(&dword_2439E1000, v13, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v16 = CECreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }
}

void __81__CERecommendationDataController_fetchRecommendationsRulesetWithInfo_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_1();
  }

  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _CESignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RecommendationsRulesetRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __81__CERecommendationDataController_fetchRecommendationsRulesetWithInfo_completion___block_invoke_10(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v8 = _CESignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[5];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RecommendationsRulesetRequest", "", v16, 2u);
  }

  v12 = _CESignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2();
  }

  if (v5)
  {
    v14 = *(a1[4] + 16);
  }

  else
  {
    v15 = _CELogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6_cold_2();
    }

    v14 = *(a1[4] + 16);
  }

  v14();
}

- (void)fetchCompletedRecommendations:(id)recommendations completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  recommendationsCopy = recommendations;
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v9 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  aa_isManagedAppleID = [(ACAccount *)self->_account aa_isManagedAppleID];
  v11 = aa_isManagedAppleID;
  v12 = _CELogSystem(aa_isManagedAppleID);
  v13 = v12;
  if (aa_altDSID)
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v11 == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchCompletedRecommendations:completion:];
    }

    v18 = _CESignpostLogSystem(v17);
    v19 = objc_opt_new();
    v20 = _CESignpostCreateWithObject(v18, v19);
    v22 = v21;

    v24 = _CESignpostLogSystem(v23);
    v25 = v24;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v20, "CompletedRecommendationsRequest", "", buf, 2u);
    }

    v27 = _CESignpostLogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchCompletedRecommendations:completion:];
    }

    v16 = objc_alloc_init(getINDaemonConnectionClass());
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke;
    v34[3] = &unk_278DE0370;
    v36 = v20;
    v37 = v22;
    v28 = completionCopy;
    v35 = v28;
    v29 = [v16 daemonWithErrorHandler:v34];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11;
    v30[3] = &unk_278DE0398;
    v32 = v20;
    v33 = v22;
    v31 = v28;
    [v29 fetchCompletedAndDismissedRecommendationsForAltDSID:aa_altDSID configuration:recommendationsCopy completion:v30];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v39 = aa_altDSID;
      v40 = 1024;
      v41 = v9;
      v42 = 1024;
      v43 = v11;
      _os_log_error_impl(&dword_2439E1000, v13, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v16 = CECreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_1();
  }

  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _CESignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v7, OS_SIGNPOST_INTERVAL_END, v8, "CompletedRecommendationsRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v8 = _CESignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[5];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CompletedRecommendationsRequest", "", v16, 2u);
  }

  v12 = _CESignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2();
  }

  if (v5)
  {
    v14 = *(a1[4] + 16);
  }

  else
  {
    v15 = _CELogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11_cold_2();
    }

    v14 = *(a1[4] + 16);
  }

  v14();
}

- (void)fetchCompletedRecommendations:(id)recommendations recommendationInfo:(id)info completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v10 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  aa_isManagedAppleID = [(ACAccount *)self->_account aa_isManagedAppleID];
  v12 = aa_isManagedAppleID;
  v13 = _CELogSystem(aa_isManagedAppleID);
  v14 = v13;
  if (aa_altDSID)
  {
    v15 = v10 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && v12 == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchCompletedRecommendations:completion:];
    }

    v19 = _CESignpostLogSystem(v18);
    v20 = objc_opt_new();
    v21 = _CESignpostCreateWithObject(v19, v20);
    v23 = v22;

    v25 = _CESignpostLogSystem(v24);
    v26 = v25;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CompletedRecommendationsRequest", "", buf, 2u);
    }

    v28 = _CESignpostLogSystem(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchCompletedRecommendations:completion:];
    }

    v17 = objc_alloc_init(getINDaemonConnectionClass());
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __94__CERecommendationDataController_fetchCompletedRecommendations_recommendationInfo_completion___block_invoke;
    v37[3] = &unk_278DE0370;
    v39 = v21;
    v40 = v23;
    v29 = completionCopy;
    v38 = v29;
    v30 = [v17 synchronousDaemonWithErrorHandler:v37];
    v31 = objc_opt_respondsToSelector();
    if (v31)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __94__CERecommendationDataController_fetchCompletedRecommendations_recommendationInfo_completion___block_invoke_14;
      v33[3] = &unk_278DE0398;
      v35 = v21;
      v36 = v23;
      v34 = v29;
      [v30 fetchCompletedAndDismissedRecommendationsForAltDSID:aa_altDSID recommendationInfo:infoCopy completion:v33];
      v32 = v34;
    }

    else
    {
      v32 = _CELogSystem(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationDataController fetchCompletedRecommendations:recommendationInfo:completion:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v42 = aa_altDSID;
      v43 = 1024;
      v44 = v10;
      v45 = 1024;
      v46 = v12;
      _os_log_error_impl(&dword_2439E1000, v14, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v17 = CECreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }
}

void __94__CERecommendationDataController_fetchCompletedRecommendations_recommendationInfo_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_1();
  }

  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _CESignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v7, OS_SIGNPOST_INTERVAL_END, v8, "CompletedRecommendationsRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __94__CERecommendationDataController_fetchCompletedRecommendations_recommendationInfo_completion___block_invoke_14(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v8 = _CESignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[5];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CompletedRecommendationsRequest", "", v16, 2u);
  }

  v12 = _CESignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2();
  }

  if (v5)
  {
    v14 = *(a1[4] + 16);
  }

  else
  {
    v15 = _CELogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11_cold_2();
    }

    v14 = *(a1[4] + 16);
  }

  v14();
}

- (void)sendRecommendationStatus:(id)status configuration:(id)configuration recommendationIdentifiers:(id)identifiers storageRecovered:(id)recovered context:(id)context completion:(id)completion
{
  v63 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  configurationCopy = configuration;
  identifiersCopy = identifiers;
  recoveredCopy = recovered;
  contextCopy = context;
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v19 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  aa_isManagedAppleID = [(ACAccount *)self->_account aa_isManagedAppleID];
  v21 = aa_isManagedAppleID;
  v22 = _CELogSystem(aa_isManagedAppleID);
  v23 = v22;
  if (aa_altDSID && (v19 ? (v24 = v21 == 0) : (v24 = 0), v24))
  {
    v46 = identifiersCopy;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController sendRecommendationStatus:configuration:recommendationIdentifiers:storageRecovered:context:completion:];
    }

    v26 = _CESignpostLogSystem(v25);
    v27 = objc_opt_new();
    v28 = _CESignpostCreateWithObject(v26, v27);
    v30 = v29;

    v32 = _CESignpostLogSystem(v31);
    v33 = v32;
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v28, "RecommendationStatusRequest", "", buf, 2u);
    }

    v35 = _CESignpostLogSystem(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController sendRecommendationStatus:configuration:recommendationIdentifiers:storageRecovered:context:completion:];
    }

    v36 = objc_alloc_init(getINDaemonConnectionClass());
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke;
    v53[3] = &unk_278DE0370;
    v55 = v28;
    v56 = v30;
    v45 = completionCopy;
    v37 = completionCopy;
    v38 = v30;
    v39 = v37;
    v54 = v37;
    v40 = [v36 daemonWithErrorHandler:v53];
    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v41 setObject:v46 forKeyedSubscript:@"recommendations"];
    if (contextCopy)
    {
      v42 = contextCopy;
    }

    else
    {
      v42 = @"main";
    }

    [v41 setObject:v42 forKeyedSubscript:@"context"];
    [v41 setObject:recoveredCopy forKeyedSubscript:@"storageRecovered"];
    [v41 setObject:statusCopy forKeyedSubscript:@"action"];
    if (objc_opt_respondsToSelector())
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_31;
      v51[3] = &unk_278DE0370;
      v52[1] = v28;
      v52[2] = v38;
      v43 = v52;
      v52[0] = v39;
      v44 = configurationCopy;
      [v40 sendStatusForRecommendationsWithAltDSID:aa_altDSID configuration:configurationCopy params:v41 completion:v51];
    }

    else
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_32;
      v49[3] = &unk_278DE0370;
      v50[1] = v28;
      v50[2] = v38;
      v43 = v50;
      v50[0] = v39;
      v44 = configurationCopy;
      [v40 sendStatusForRecommendationsWithAltDSID:aa_altDSID configuration:configurationCopy status:statusCopy recommendationIdentifiers:v46 storageRecovered:recoveredCopy completion:v49];
    }

    completionCopy = v45;
    identifiersCopy = v46;
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v58 = aa_altDSID;
      v59 = 1024;
      v60 = v19;
      v61 = 1024;
      v62 = v21;
      _os_log_error_impl(&dword_2439E1000, v23, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v36 = CECreateError(12);
    (*(completionCopy + 2))(completionCopy, v36);
    v44 = configurationCopy;
  }
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_1();
  }

  Nanoseconds = _CESignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _CESignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RecommendationStatusRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_31(void *a1, void *a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v3 = a1 + 5;
  v6 = a2;
  Nanoseconds = _CESignpostGetNanoseconds(v4, v5);
  v8 = _CESignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = *v3;
  if (*v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RecommendationStatusRequest", "", v13, 2u);
  }

  v12 = _CESignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_32(void *a1, void *a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v3 = a1 + 5;
  v6 = a2;
  Nanoseconds = _CESignpostGetNanoseconds(v4, v5);
  v8 = _CESignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = *v3;
  if (*v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RecommendationStatusRequest", "", v13, 2u);
  }

  v12 = _CESignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

- (void)fetchRecommendationsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchRecommendationsWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchRecommendationsWithInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchRecommendationsRulesetWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchRecommendationsRulesetWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchRecommendationsRulesetWithInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchCompletedRecommendations:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchCompletedRecommendations:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchCompletedRecommendations:recommendationInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendRecommendationStatus:configuration:recommendationIdentifiers:storageRecovered:context:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendRecommendationStatus:configuration:recommendationIdentifiers:storageRecovered:context:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end