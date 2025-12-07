@interface CalDAVDBChangeTrackingHelper
- (BOOL)clearUnconsumedAndUnsavedChanges;
- (CalDAVDBChangeTrackingHelper)initWithDatabase:(CalDatabase *)database clientIdentifier:(id)identifier;
- (void)dealloc;
- (void)saveChange:(int)change forEntityType:(int)type;
@end

@implementation CalDAVDBChangeTrackingHelper

- (CalDAVDBChangeTrackingHelper)initWithDatabase:(CalDatabase *)database clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = CalDAVDBChangeTrackingHelper;
  v8 = [(CalDAVDBChangeTrackingHelper *)&v10 init];
  if (v8)
  {
    v8->_database = CFRetain(database);
    v8->_initialSequenceNumber = CalDatabaseGetSequenceNumber();
    objc_storeStrong(&v8->_clientIdentifier, identifier);
  }

  return v8;
}

- (void)dealloc
{
  CFRelease(self->_database);
  v3.receiver = self;
  v3.super_class = CalDAVDBChangeTrackingHelper;
  [(CalDAVDBChangeTrackingHelper *)&v3 dealloc];
}

- (void)saveChange:(int)change forEntityType:(int)type
{
  v4 = *&type;
  v5 = *&change;
  if (!self->_savedChanges)
  {
    v7 = objc_opt_new();
    savedChanges = self->_savedChanges;
    self->_savedChanges = v7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v9 = [(NSMutableDictionary *)self->_savedChanges objectForKeyedSubscript:?];
  if (!v9)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_savedChanges setObject:v9 forKeyedSubscript:v11];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  [v9 addObject:v10];
}

- (BOOL)clearUnconsumedAndUnsavedChanges
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  CalDatabaseEnumerateUnconsumedObjectChangesForClient();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __64__CalDAVDBChangeTrackingHelper_clearUnconsumedAndUnsavedChanges__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFArray *a5, const __CFArray *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = *(*(a1 + 32) + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{a2, a4}];
  v11 = [v9 objectForKeyedSubscript:v10];

  Count = CFArrayGetCount(a5);
  if (Count >= 1)
  {
    v13 = Count;
    Mutable = CFArrayCreateMutable(0, Count, 0);
    for (i = 0; i != v13; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a5, i);
      if (*(*(a1 + 32) + 24) >= CFArrayGetValueAtIndex(a6, i))
      {
        v17 = [MEMORY[0x277CCABB0] numberWithInt:ValueAtIndex];
        v18 = [v11 containsObject:v17];

        if ((v18 & 1) == 0)
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }

    v19 = CFArrayGetCount(Mutable);
    if (v19 > 0)
    {
      v20 = v19;
      v21 = DALoggingwithCategory();
      v22 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v21, v22))
      {
        Name = CalEntityTypeGetName();
        v24 = *(*(a1 + 32) + 16);
        *buf = 134218498;
        v26 = v20;
        v27 = 2114;
        v28 = Name;
        v29 = 2114;
        v30 = v24;
        _os_log_impl(&dword_2484B2000, v21, v22, "Clearing %li leftover changes of type %{public}@ for %{public}@.", buf, 0x20u);
      }

      CalDatabaseClearIndividualChangeRowIDsForClient();
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

@end