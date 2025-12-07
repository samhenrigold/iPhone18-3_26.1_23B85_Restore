@interface TSIDSSubscriptionSelector
+ (id)activeIMessageSlots;
+ (void)activeIMessageSlots;
+ (void)doRegistrationForIMessage:(id)message;
+ (void)registerSlotsForIMessage:(id)message;
@end

@implementation TSIDSSubscriptionSelector

+ (id)activeIMessageSlots
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v25 = 0;
  v3 = [v2 selectedSubscriptionsWithError:&v25];
  v4 = v25;
  v5 = v4;
  if (v4)
  {
    v6 = _TSLogDomain(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[TSIDSSubscriptionSelector activeIMessageSlots];
    }

    array = 0;
    goto LABEL_24;
  }

  v20 = v2;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v3;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v9;
  v11 = *v22;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      subscriptionSlot = [*(*(&v21 + 1) + 8 * i) subscriptionSlot];
      if (subscriptionSlot)
      {
        if (subscriptionSlot == 2)
        {
          v14 = array;
          v15 = &unk_287583D48;
        }

        else
        {
          if (subscriptionSlot != 1)
          {
            continue;
          }

          v14 = array;
          v15 = &unk_287583D30;
        }

        [v14 addObject:v15];
      }

      else
      {
        v16 = _TSLogDomain(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[(TSIDSSubscriptionSelector *)buf];
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
  }

  while (v10);
LABEL_21:

  v6 = _TSLogDomain(v17);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[TSIDSSubscriptionSelector activeIMessageSlots];
  }

  v3 = v19;
  v2 = v20;
LABEL_24:

  return array;
}

+ (void)registerSlotsForIMessage:(id)message
{
  v10 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy count])
  {
    v4 = dispatch_queue_create("iMessage Background", 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__TSIDSSubscriptionSelector_registerSlotsForIMessage___block_invoke;
    block[3] = &unk_279B44578;
    v7 = messageCopy;
    dispatch_async(v4, block);

    v5 = v7;
  }

  else
  {
    v5 = _TSLogDomain(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "+[TSIDSSubscriptionSelector registerSlotsForIMessage:]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "Empty input @%s", buf, 0xCu);
    }
  }
}

+ (void)doRegistrationForIMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v17 = objc_opt_new();
  v4 = [v17 selectedSubscriptionsWithError:0];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = messageCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        integerValue = [*(*(&v18 + 1) + 8 * v10) integerValue];
        if ((integerValue - 1) >= 2)
        {
          v13 = _TSLogDomain(integerValue);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(TSIDSSubscriptionSelector *)v26 doRegistrationForIMessage:v13];
          }
        }

        else
        {
          v12 = integerValue;
          v13 = [MEMORY[0x277D18750] phoneSubscriptionWithSubscriptionSlot:integerValue];
          if (v13)
          {
            [v5 addObject:v13];
          }

          else
          {
            v14 = _TSLogDomain(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v23 = v12;
              v24 = 2080;
              v25 = "+[TSIDSSubscriptionSelector doRegistrationForIMessage:]";
              _os_log_error_impl(&dword_262AA8000, v14, OS_LOG_TYPE_ERROR, "[E]Skipping slot %lu @%s", buf, 0x16u);
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
  }

  v15 = [v5 count];
  if (v15)
  {
    v16 = _TSLogDomain(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[TSIDSSubscriptionSelector doRegistrationForIMessage:];
    }

    [v17 setSelectedSubscriptions:v5 withCompletion:&__block_literal_global_21];
  }
}

void __55__TSIDSSubscriptionSelector_doRegistrationForIMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _TSLogDomain(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __55__TSIDSSubscriptionSelector_doRegistrationForIMessage___block_invoke_cold_1(v4, v5, v6);
  }
}

+ (void)activeIMessageSlots
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "+[TSIDSSubscriptionSelector activeIMessageSlots]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v1, 0x16u);
}

+ (void)doRegistrationForIMessage:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "+[TSIDSSubscriptionSelector doRegistrationForIMessage:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Invalid slot - skipping @%s", buf, 0xCu);
}

+ (void)doRegistrationForIMessage:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "+[TSIDSSubscriptionSelector doRegistrationForIMessage:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db]  %@ @%s", v1, 0x16u);
}

void __55__TSIDSSubscriptionSelector_doRegistrationForIMessage___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  v7 = 2080;
  v8 = "+[TSIDSSubscriptionSelector doRegistrationForIMessage:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Selection %@, Error %@ @%s", &v3, 0x20u);
}

@end