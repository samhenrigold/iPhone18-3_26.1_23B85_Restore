@interface NTLocalNewsPromotionTransformation
- (NTLocalNewsPromotionTransformation)init;
- (NTLocalNewsPromotionTransformation)initWithLocalNewsTagID:(id)d localNewsPromotionIndex:(unint64_t)index baseTransformation:(id)transformation;
- (id)transformFeedItems:(id)items;
@end

@implementation NTLocalNewsPromotionTransformation

- (NTLocalNewsPromotionTransformation)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTLocalNewsPromotionTransformation init]";
    v10 = 2080;
    v11 = "NTLocalNewsPromotionTransformation.m";
    v12 = 1024;
    v13 = 29;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTLocalNewsPromotionTransformation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTLocalNewsPromotionTransformation)initWithLocalNewsTagID:(id)d localNewsPromotionIndex:(unint64_t)index baseTransformation:(id)transformation
{
  dCopy = d;
  transformationCopy = transformation;
  if (!transformationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTLocalNewsPromotionTransformation initWithLocalNewsTagID:localNewsPromotionIndex:baseTransformation:];
  }

  v14.receiver = self;
  v14.super_class = NTLocalNewsPromotionTransformation;
  v10 = [(NTLocalNewsPromotionTransformation *)&v14 init];
  if (v10)
  {
    v11 = [dCopy copy];
    localNewsTagID = v10->_localNewsTagID;
    v10->_localNewsTagID = v11;

    v10->_localNewsPromotionIndex = index;
    objc_storeStrong(&v10->_baseTransformation, transformation);
  }

  return v10;
}

- (id)transformFeedItems:(id)items
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  baseTransformation = [(NTLocalNewsPromotionTransformation *)self baseTransformation];
  v6 = [baseTransformation transformFeedItems:itemsCopy];

  localNewsTagID = [(NTLocalNewsPromotionTransformation *)self localNewsTagID];
  v8 = localNewsTagID;
  if (localNewsTagID)
  {
    v9 = localNewsTagID;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke_14;
    v24[3] = &unk_279982D28;
    v10 = &v25;
    v25 = v9;
    v11 = [itemsCopy fc_firstObjectPassingTest:v24];
    if (v11)
    {
      v12 = [v6 mutableCopy];
      v13 = [v12 count];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke_16;
      v20[3] = &unk_279982D28;
      v14 = &v21;
      v15 = v11;
      v21 = v15;
      [v12 fc_removeObjectsPassingTest:v20];
      v16 = [v12 count];
      localNewsPromotionIndex = [(NTLocalNewsPromotionTransformation *)self localNewsPromotionIndex];
      if (v16 >= localNewsPromotionIndex)
      {
        v16 = localNewsPromotionIndex;
      }

      [v15 markAsLocal];
      [v12 insertObject:v15 atIndex:v16];
      v18 = NTSharedLog([v12 fc_trimToMaxCount:v13]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v29 = v16;
        _os_log_impl(&dword_25BF21000, v18, OS_LOG_TYPE_INFO, "inserting local news article into For You at position %ld", buf, 0xCu);
      }

      v10 = &v25;
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke_2;
      v22[3] = &unk_279983600;
      v14 = &v23;
      v23 = v6;
      v12 = __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke_2(v22);
    }
  }

  else
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke;
    v26[3] = &unk_279983600;
    v10 = &v27;
    v27 = v6;
    v12 = __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke(v26);
  }

  return v12;
}

id __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke(uint64_t a1)
{
  v2 = NTSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_25BF21000, v2, OS_LOG_TYPE_INFO, "returning For You without regard for local news because we have no tag ID", v5, 2u);
  }

  v3 = *(a1 + 32);

  return v3;
}

uint64_t __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = [a2 surfacedByChannelID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke_2(uint64_t a1)
{
  v2 = NTSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_25BF21000, v2, OS_LOG_TYPE_ERROR, "returning For You without regard for local news because we could not find any articles for the local news channel", v5, 2u);
  }

  v3 = *(a1 + 32);

  return v3;
}

uint64_t __57__NTLocalNewsPromotionTransformation_transformFeedItems___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)initWithLocalNewsTagID:localNewsPromotionIndex:baseTransformation:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "baseTransformation"];
  *buf = 136315906;
  v2 = "[NTLocalNewsPromotionTransformation initWithLocalNewsTagID:localNewsPromotionIndex:baseTransformation:]";
  v3 = 2080;
  v4 = "NTLocalNewsPromotionTransformation.m";
  v5 = 1024;
  v6 = 36;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

@end