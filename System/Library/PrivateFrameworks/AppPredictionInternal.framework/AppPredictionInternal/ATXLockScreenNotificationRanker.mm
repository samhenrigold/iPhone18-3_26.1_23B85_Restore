@interface ATXLockScreenNotificationRanker
+ (id)rankNewNotificationIntoNotificationArrays:(id)arrays newNotification:(id)notification notificationArrayIndex:(unint64_t)index error:(id *)error;
+ (id)rankNewNotificationIntoNotificationArrays:(id)arrays newNotificationArray:(id)array newNotification:(id)notification error:(id *)error;
+ (id)rankNotificationArrays:(id)arrays error:(id *)error;
@end

@implementation ATXLockScreenNotificationRanker

+ (id)rankNotificationArrays:(id)arrays error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  arraysCopy = arrays;
  v7 = __atxlog_handle_notification_management(arraysCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXLockScreenNotificationRanker rankNotificationArrays:self error:?];
  }

  if (arraysCopy || !error)
  {
    v12 = [arraysCopy _pas_mappedArrayWithTransform:&__block_literal_global_57_1];
    v10 = [v12 sortedArrayUsingComparator:&__block_literal_global_61_1];

    v11 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_64_1];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA5B8];
    v14 = *MEMORY[0x277CCA068];
    v15[0] = @"Missing notificationArrays argument";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v8 errorWithDomain:v9 code:22 userInfo:v10];
    *error = v11 = 0;
  }

  return v11;
}

ATXUserNotificationGroup *__64__ATXLockScreenNotificationRanker_rankNotificationArrays_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationGroup alloc] initWithNotifications:v2];

  return v3;
}

+ (id)rankNewNotificationIntoNotificationArrays:(id)arrays newNotification:(id)notification notificationArrayIndex:(unint64_t)index error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  arraysCopy = arrays;
  notificationCopy = notification;
  if (arraysCopy)
  {
    if ([arraysCopy count] > index)
    {
      v12 = [arraysCopy objectAtIndexedSubscript:index];
      v13 = [arraysCopy mutableCopy];
      [v13 removeObjectAtIndex:index];
      error = [self rankNewNotificationIntoNotificationArrays:v13 newNotificationArray:v12 newNotification:notificationCopy error:error];

      goto LABEL_10;
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"notificationArrayIndex=%ld is out of bounds for notificationArrays length=%ld", index, objc_msgSend(arraysCopy, "count")];
    v18 = v17;
    if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA5B8];
      v23 = *MEMORY[0x277CCA068];
      v24 = v17;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *error = [v19 errorWithDomain:v20 code:22 userInfo:v21];
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    v25 = *MEMORY[0x277CCA068];
    v26[0] = @"Missing notificationArrays argument";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *error = [v14 errorWithDomain:v15 code:22 userInfo:v16];
  }

  error = 0;
LABEL_10:

  return error;
}

+ (id)rankNewNotificationIntoNotificationArrays:(id)arrays newNotificationArray:(id)array newNotification:(id)notification error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  arraysCopy = arrays;
  arrayCopy = array;
  notificationCopy = notification;
  v13 = __atxlog_handle_notification_management(notificationCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ATXLockScreenNotificationRanker rankNewNotificationIntoNotificationArrays:self newNotificationArray:? newNotification:? error:?];
  }

  if (arraysCopy || !error)
  {
    if (notificationCopy || !error)
    {
      if (arrayCopy || !error)
      {
        v24 = [arrayCopy arrayByAddingObject:notificationCopy];

        v25 = [[ATXUserNotificationGroup alloc] initWithNotifications:v24];
        v26 = [arraysCopy _pas_mappedArrayWithTransform:&__block_literal_global_76_2];
        v27 = [v26 arrayByAddingObject:v25];
        v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_78];

        v29 = MEMORY[0x277D42648];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "indexOfObject:", v25)}];
        v31 = MEMORY[0x277CCABB0];
        notifications = [(ATXUserNotificationGroup *)v25 notifications];
        v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(notifications, "indexOfObject:", notificationCopy)}];
        v20 = [v29 tupleWithFirst:v30 second:v33];

        arrayCopy = v24;
      }

      else
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA5B8];
        v34 = *MEMORY[0x277CCA068];
        v35 = @"Missing newNotificationArray argument";
        arrayCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        [v22 errorWithDomain:v23 code:22 userInfo:arrayCopy];
        *error = v20 = 0;
      }

      goto LABEL_10;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    v36 = *MEMORY[0x277CCA068];
    v37 = @"Missing newNotification argument";
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v37;
    v18 = &v36;
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    v38 = *MEMORY[0x277CCA068];
    v39[0] = @"Missing notificationArrays argument";
    v16 = MEMORY[0x277CBEAC0];
    v17 = v39;
    v18 = &v38;
  }

  v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
  *error = [v14 errorWithDomain:v15 code:22 userInfo:v19];

  v20 = 0;
LABEL_10:

  return v20;
}

ATXUserNotificationGroup *__120__ATXLockScreenNotificationRanker_rankNewNotificationIntoNotificationArrays_newNotificationArray_newNotification_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationGroup alloc] initWithNotifications:v2];

  return v3;
}

+ (void)rankNotificationArrays:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "[%@] Generating lock screen notification ranking", v4, v5, v6, v7, v8, DWORD2(v8));
}

+ (void)rankNewNotificationIntoNotificationArrays:(uint64_t)a1 newNotificationArray:newNotification:error:.cold.1(uint64_t a1)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "[%@] Sorting newNotification into notificationArray", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end