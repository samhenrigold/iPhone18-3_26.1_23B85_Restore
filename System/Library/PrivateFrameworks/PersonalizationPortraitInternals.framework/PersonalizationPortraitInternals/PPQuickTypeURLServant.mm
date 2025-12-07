@interface PPQuickTypeURLServant
- (PPQuickTypeURLServant)init;
- (PPQuickTypeURLServant)initWithConversationManager:(id)manager;
- (id)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit explanationSet:(id)set;
- (void)registerFeedback:(id)feedback;
@end

@implementation PPQuickTypeURLServant

- (void)registerFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPQuickTypeURLServant: registerFeedback called.", buf, 2u);
  }

  dataLock = self->_dataLock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PPQuickTypeURLServant_registerFeedback___block_invoke;
  v8[3] = &unk_278974700;
  v9 = feedbackCopy;
  selfCopy = self;
  v7 = feedbackCopy;
  [(_PASLock *)dataLock runWithLockAcquired:v8];
}

void __42__PPQuickTypeURLServant_registerFeedback___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3[1])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [*(a1 + 32) feedbackItems];
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          if ([v9 itemFeedbackType] == 1)
          {
            v10 = [v9 itemString];
            v11 = [v3[1] value];
            v12 = [v10 isEqualToString:v11];

            if (v12)
            {
              v13 = pp_quicktype_log_handle();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = v3[3];
                *buf = 138412290;
                v31 = v14;
                _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPQuickTypeURLServant: URL engaged in app '%@'", buf, 0xCu);
              }

              v15 = pp_quicktype_log_handle();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v22 = [v3[1] value];
                v23 = v3[3];
                *buf = 138740227;
                v31 = v22;
                v32 = 2112;
                v33 = v23;
                _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "PPQuickTypeURLServant: '%{sensitive}@' engaged in app '%@'", buf, 0x16u);
              }

              if (v3[2])
              {
                v16 = dispatch_semaphore_create(0);
                v17 = *(*(a1 + 40) + 8);
                v18 = v3[2];
                v24[0] = MEMORY[0x277D85DD0];
                v24[1] = 3221225472;
                v24[2] = __42__PPQuickTypeURLServant_registerFeedback___block_invoke_31;
                v24[3] = &unk_2789746D8;
                v19 = v16;
                v25 = v19;
                [v17 activateLink:v18 completionHandler:v24];
                [MEMORY[0x277D425A0] waitForSemaphore:v19];
                v20 = pp_quicktype_log_handle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPQuickTypeURLServant: activateLink completed.", buf, 2u);
                }

                [v3 reset];
              }

              else
              {
                v21 = pp_quicktype_log_handle();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_23224A000, v21, OS_LOG_TYPE_ERROR, "PPQuickTypeURLServant: _tuConversationLink is unexpectedly nil.", buf, 2u);
                }

                [v3 reset];
              }

              goto LABEL_23;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
  }
}

void __42__PPQuickTypeURLServant_registerFeedback___block_invoke_31(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPQuickTypeURLServant: activateLink error: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit explanationSet:(id)set
{
  v46 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  setCopy = set;
  if ([queryCopy type] != 5)
  {
    goto LABEL_12;
  }

  v9 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPQuickTypeURLServant: quickTypeItemsWithQuery", &buf, 2u);
  }

  if ([queryCopy subtype] == 13)
  {
    v10 = +[PPSettings sharedInstance];
    v11 = *MEMORY[0x277D3A610];
    v12 = [v10 bundleIdentifierIsEnabledForDonation:*MEMORY[0x277D3A610]];

    v13 = pp_quicktype_log_handle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPQuickTypeURLServant: queried for %@ URL.", &buf, 0xCu);
      }

      v13 = [PPQuickTypeFormatter formatterWithQuery:queryCopy];
      v15 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__10914;
      v44 = __Block_byref_object_dispose__10915;
      v45 = 0;
      conversationManager = self->_conversationManager;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __70__PPQuickTypeURLServant_quickTypeItemsWithQuery_limit_explanationSet___block_invoke;
      v35[3] = &unk_278974688;
      p_buf = &buf;
      v17 = v15;
      v36 = v17;
      [(TUConversationManager *)conversationManager getInactiveLinkWithCompletionHandler:v35];
      [MEMORY[0x277D425A0] waitForSemaphore:v17];
      v18 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPQuickTypeURLServant: getInactiveLinkWithCompletionHandler completed.", v39, 2u);
      }

      v19 = [*(*(&buf + 1) + 40) URL];
      absoluteString = [v19 absoluteString];

      if ([absoluteString length])
      {
        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        inviteLinkLabel = [v13 inviteLinkLabel];
        v23 = [v21 initWithFormat:@"🔗 %@", inviteLinkLabel];

        BYTE2(v30) = 10;
        LOWORD(v30) = 1024;
        v24 = [objc_alloc(MEMORY[0x277D3A478]) initWithLabel:&stru_284759D38 value:absoluteString name:v23 date:0 fields:0x2000000 originatingBundleID:0 originatingWebsiteURL:1.0 predictionAge:0 shouldAggregate:0 flags:v30 score:0 source:? sourceIdentifier:?];
        dataLock = self->_dataLock;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __70__PPQuickTypeURLServant_quickTypeItemsWithQuery_limit_explanationSet___block_invoke_28;
        v31[3] = &unk_2789746B0;
        v34 = &buf;
        v26 = v24;
        v32 = v26;
        v33 = queryCopy;
        [(_PASLock *)dataLock runWithLockAcquired:v31];
        v38 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      }

      else
      {
        v23 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v29 = *(*(&buf + 1) + 40);
          *v39 = 138412290;
          v40 = v29;
          _os_log_error_impl(&dword_23224A000, v23, OS_LOG_TYPE_ERROR, "PPQuickTypeURLServant: link URL was empty or nil: %@", v39, 0xCu);
        }

        v27 = 0;
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (v14)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPQuickTypeURLServant: ignoring request for %@ URL due to settings.", &buf, 0xCu);
      }

      v27 = 0;
    }
  }

  else
  {
LABEL_12:
    v27 = 0;
  }

  return v27;
}

void __70__PPQuickTypeURLServant_quickTypeItemsWithQuery_limit_explanationSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (!v6)
  {
    v8 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPQuickTypeURLServant: getInactiveLinkWithCompletionHandler error: %@", &v9, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__PPQuickTypeURLServant_quickTypeItemsWithQuery_limit_explanationSet___block_invoke_28(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 2, *(*(*(a1 + 48) + 8) + 40));
  v4 = a2;
  v5 = [*(a1 + 32) copy];
  v6 = v4[1];
  v4[1] = v5;

  v9 = [*(a1 + 40) bundleIdentifier];
  v7 = [v9 copy];
  v8 = v4[3];
  v4[3] = v7;
}

- (PPQuickTypeURLServant)init
{
  v3 = objc_opt_new();
  v4 = [(PPQuickTypeURLServant *)self initWithConversationManager:v3];

  return v4;
}

- (PPQuickTypeURLServant)initWithConversationManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PPQuickTypeURLServant;
  v6 = [(PPQuickTypeURLServant *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversationManager, manager);
    v8 = objc_alloc(MEMORY[0x277D425F8]);
    v9 = objc_opt_new();
    v10 = [v8 initWithGuardedData:v9];
    dataLock = v7->_dataLock;
    v7->_dataLock = v10;
  }

  return v7;
}

@end