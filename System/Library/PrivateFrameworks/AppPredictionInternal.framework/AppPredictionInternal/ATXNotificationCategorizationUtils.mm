@interface ATXNotificationCategorizationUtils
+ (id)megadomeEntityIDFromNotification:(id)notification;
+ (id)megadomePersonRelationshipFromEntityID:(id)d;
@end

@implementation ATXNotificationCategorizationUtils

+ (id)megadomeEntityIDFromNotification:(id)notification
{
  notificationCopy = notification;
  v4 = objc_alloc_init(ATXMegadomeContextualPersonRelationships);
  title = [notificationCopy title];
  v21 = 0;
  v6 = [(ATXMegadomeContextualPersonRelationships *)v4 megadomePersonIDFromName:title error:&v21];
  v7 = v21;

  if (![v6 length])
  {
    contactIDs = [notificationCopy contactIDs];
    firstObject = [contactIDs firstObject];
    v20 = v7;
    v10 = [(ATXMegadomeContextualPersonRelationships *)v4 megadomePersonIDFromContactID:firstObject error:&v20];
    v11 = v20;

    v6 = v10;
    v7 = v11;
  }

  v12 = [v6 length];
  if (!v12)
  {
    threadID = [notificationCopy threadID];
    v19 = v7;
    v16 = [(ATXMegadomeContextualPersonRelationships *)v4 megadomePersonIDFromPhoneNumber:threadID error:&v19];
    v17 = v19;

    v6 = v16;
    v7 = v17;
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_9:
    v14 = v6;
    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v13 = __atxlog_handle_notification_categorization(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(ATXNotificationCategorizationUtils *)v7 megadomeEntityIDFromNotification:v13];
  }

  v14 = 0;
LABEL_10:

  return v14;
}

+ (id)megadomePersonRelationshipFromEntityID:(id)d
{
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__62;
  v25 = __Block_byref_object_dispose__62;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__62;
  v19 = __Block_byref_object_dispose__62;
  v20 = 0;
  v4 = objc_alloc_init(ATXMegadomeContextualPersonRelationships);
  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ATXNotificationCategorizationUtils_megadomePersonRelationshipFromEntityID___block_invoke;
  v11[3] = &unk_27859E3B0;
  v13 = &v15;
  v14 = &v21;
  v6 = v5;
  v12 = v6;
  [(ATXMegadomeContextualPersonRelationships *)v4 entityRelationshipsFrom:dCopy completionHandler:v11];
  v7 = v6;
  v8 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v7, v8);

  v9 = 0;
  if (!v16[5])
  {
    v9 = v22[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __77__ATXNotificationCategorizationUtils_megadomePersonRelationshipFromEntityID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_notification_categorization(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__ATXNotificationCategorizationUtils_megadomePersonRelationshipFromEntityID___block_invoke_cold_1(v7, v8);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)megadomeEntityIDFromNotification:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXNotificationCategorizationUtils: Error getting megadomeEntityID from Name, contactID or phone number: %@", &v2, 0xCu);
}

void __77__ATXNotificationCategorizationUtils_megadomePersonRelationshipFromEntityID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXNotificationCategorizationUtils: Error getting Megadome relationships: %@", &v2, 0xCu);
}

@end