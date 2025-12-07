@interface _HDUserDefaultRemovedJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDUserDefaultRemovedJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDUserDefaultRemovedJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v7 = 138543362;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Unsupported journal entry %{public}@", &v7, 0xCu);
  }
}

- (_HDUserDefaultRemovedJournalEntry)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _HDUserDefaultRemovedJournalEntry;
  return [(HDJournalEntry *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v6 = 138543362;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: encoding is not supported", &v6, 0xCu);
  }
}

@end