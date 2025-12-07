@interface KMCalendarEventBridge
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMCalendarEventBridge)init;
@end

@implementation KMCalendarEventBridge

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = blockCopy;
  if (self->_eventStore)
  {
    v18 = blockCopy;
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v9 setWeekOfYear:-2];
    v10 = [v8 dateByAddingComponents:v9 toDate:date options:0];
    [v9 setWeekOfYear:0];
    [v9 setMonth:3];
    v11 = [v8 dateByAddingComponents:v9 toDate:date options:0];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__221;
    v30 = __Block_byref_object_dispose__222;
    v31 = 0;
    v12 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:v10 endDate:v11 calendars:0];
    eventStore = self->_eventStore;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__KMCalendarEventBridge_enumerateItemsWithError_usingBlock___block_invoke;
    v19[3] = &unk_279805B58;
    v19[4] = self;
    p_buf = &buf;
    v22 = &v23;
    v20 = v18;
    [(EKEventStore *)eventStore enumerateEventsMatchingPredicate:v12 usingBlock:v19];
    v14 = *(v24 + 24);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v23, 8);

    v15 = v14 ^ 1;
    v6 = v18;
  }

  else
  {
    v16 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[KMCalendarEventBridge enumerateItemsWithError:usingBlock:]";
      _os_log_error_impl(&dword_2559DF000, v16, OS_LOG_TYPE_ERROR, "%s Unable to get an instance of EKEventStore.", &buf, 0xCu);
    }

    v15 = 0;
  }

  return v15 & 1;
}

void __60__KMCalendarEventBridge_enumerateItemsWithError_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1[4] + 8);
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v6 mapObject:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = objc_autoreleasePoolPush();
          if (((*(a1[5] + 16))(a1[5]) & 1) == 0)
          {
            *a3 = 1;
            *(*(a1[7] + 8) + 24) = 1;
            objc_autoreleasePoolPop(v14);
            goto LABEL_12;
          }

          objc_autoreleasePoolPop(v14);
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    *a3 = 1;
    *(*(a1[7] + 8) + 24) = 1;
  }
}

- (KMCalendarEventBridge)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = KMCalendarEventBridge;
  v2 = [(KMCalendarEventBridge *)&v12 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v11 = 0;
  v3 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v11];
  v4 = v11;
  itemMapper = v2->_itemMapper;
  v2->_itemMapper = v3;

  v6 = objc_alloc_init(MEMORY[0x277CC5A40]);
  eventStore = v2->_eventStore;
  v2->_eventStore = v6;

  if (v2->_itemMapper)
  {

LABEL_4:
    v8 = v2;
    goto LABEL_8;
  }

  v9 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "[KMCalendarEventBridge init]";
    v15 = 2112;
    v16 = v4;
    _os_log_error_impl(&dword_2559DF000, v9, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end