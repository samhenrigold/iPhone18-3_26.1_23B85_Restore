@interface _HDAchievementProgressLocalJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDAchievementProgressLocalJournalEntry)initWithCoder:(id)coder;
@end

@implementation _HDAchievementProgressLocalJournalEntry

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

- (_HDAchievementProgressLocalJournalEntry)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _HDAchievementProgressLocalJournalEntry;
  return [(_HDAchievementProgressLocalJournalEntry *)&v4 init];
}

@end