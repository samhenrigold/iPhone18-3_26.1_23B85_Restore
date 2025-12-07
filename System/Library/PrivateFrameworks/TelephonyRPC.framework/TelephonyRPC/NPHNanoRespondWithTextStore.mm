@interface NPHNanoRespondWithTextStore
- (NPHNanoRespondWithTextStore)init;
- (id)cannedRepliesForLanguage:(id)language;
- (id)customReplies;
- (id)defaultRepliesForLanguage:(id)language;
- (unint64_t)count;
@end

@implementation NPHNanoRespondWithTextStore

- (NPHNanoRespondWithTextStore)init
{
  v6.receiver = self;
  v6.super_class = NPHNanoRespondWithTextStore;
  v2 = [(NPHNanoRespondWithTextStore *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mobilephone"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

- (unint64_t)count
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = nph_general_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[NPHNanoRespondWithTextStore count]";
    _os_log_impl(&dword_26D269000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return 3;
}

- (id)defaultRepliesForLanguage:(id)language
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[NPHNanoRespondWithTextStore defaultRepliesForLanguage:]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Sorry value:I can’t talk right now." table:{&stru_287EA4AF8, 0}];
  v12[0] = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"I’m on my way." value:&stru_287EA4AF8 table:0];
  v12[1] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Can I call you later?" value:&stru_287EA4AF8 table:0];
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

- (id)customReplies
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[NPHNanoRespondWithTextStore customReplies]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  array = [(NSUserDefaults *)self->_userDefaults objectForKey:@"TUReplyWithMessageStoreReplyArray"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v5 = [array count];
  if (v5 < [(NPHNanoRespondWithTextStore *)self count])
  {
    do
    {
      [array addObject:&stru_287EA4AF8];
      v6 = [array count];
    }

    while (v6 < [(NPHNanoRespondWithTextStore *)self count]);
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v7;
}

- (id)cannedRepliesForLanguage:(id)language
{
  v17 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = nph_general_log(languageCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[NPHNanoRespondWithTextStore cannedRepliesForLanguage:]";
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = MEMORY[0x277CBEB18];
  v7 = [(NPHNanoRespondWithTextStore *)self defaultRepliesForLanguage:languageCopy];

  v8 = [v6 arrayWithArray:v7];

  customReplies = [(NPHNanoRespondWithTextStore *)self customReplies];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__NPHNanoRespondWithTextStore_cannedRepliesForLanguage___block_invoke;
  v13[3] = &unk_279D96060;
  v14 = v8;
  v10 = v8;
  [customReplies enumerateObjectsUsingBlock:v13];
  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v10];

  return v11;
}

void __56__NPHNanoRespondWithTextStore_cannedRepliesForLanguage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 isEqualToString:&stru_287EA4AF8] & 1) == 0)
  {
    [*(a1 + 32) replaceObjectAtIndex:a3 withObject:v5];
  }
}

@end