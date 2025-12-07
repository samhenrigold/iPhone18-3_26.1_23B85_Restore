@interface FLFollowUpController
@end

@implementation FLFollowUpController

void __65__FLFollowUpController_ICQUI__icq_dismissFollowUpWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    v8 = "Successfully cleared lockscreen notification for followup item ID %@";
    *&v5 = 138412546;
    v22 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          v13 = *(a1 + 40);
          v23 = 0;
          v14 = [v13 clearNotificationForItem:v10 error:&v23];
          v15 = v23;
          v16 = _ICQGetLogSystem();
          v17 = v16;
          if (v14)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(a1 + 32);
              *buf = 138412290;
              v29 = v18;
              _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = v8;
            v20 = *(a1 + 32);
            v21 = [v15 localizedDescription];
            *buf = v22;
            v29 = v20;
            v8 = v19;
            v30 = 2112;
            v31 = v21;
            _os_log_error_impl(&dword_275572000, v17, OS_LOG_TYPE_ERROR, "Unable to clear lockscreen notification for followup item ID %@, error: %@", buf, 0x16u);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }
}

@end