@interface CNAutocompleteInfrequentRecentResult
+ (id)comparators;
+ (id)contactResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address dateCount:(unint64_t)count date:(id)date;
+ (id)groupResultWithDisplayName:(id)name dateCount:(unint64_t)count date:(id)date;
@end

@implementation CNAutocompleteInfrequentRecentResult

+ (id)contactResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address dateCount:(unint64_t)count date:(id)date
{
  result = [self contactResultWithDisplayName:name value:value lastSendingAddress:address date:date];
  *(result + 19) = count;
  return result;
}

+ (id)groupResultWithDisplayName:(id)name dateCount:(unint64_t)count date:(id)date
{
  result = [self groupResultWithDisplayName:name date:date];
  *(result + 19) = count;
  return result;
}

+ (id)comparators
{
  if (comparators_cn_once_token_15 != -1)
  {
    +[CNAutocompleteInfrequentRecentResult comparators];
  }

  v3 = comparators_cn_once_object_15;

  return v3;
}

void __51__CNAutocompleteInfrequentRecentResult_comparators__block_invoke()
{
  v12[8] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB70]);
  v1 = _Block_copy(sSortResultsByCategory);
  v12[0] = v1;
  v2 = _Block_copy(sSortRecentResultsByCompletingChosenGroup);
  v12[1] = v2;
  v3 = _Block_copy(sSortResultsByPreferredDomain);
  v12[2] = v3;
  v4 = _Block_copy(sSortRecentResultsByDateCount);
  v12[3] = v4;
  v5 = _Block_copy(sSortRecentResultsBySendingAddressMatch);
  v12[4] = v5;
  v6 = _Block_copy(sSortRecentResultsByDate);
  v12[5] = v6;
  v7 = _Block_copy(sSortResultsByDisplayName);
  v12[6] = v7;
  v8 = _Block_copy(sSortResultsByAddress);
  v12[7] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:8];
  v10 = [v0 initWithArray:v9];
  v11 = comparators_cn_once_object_15;
  comparators_cn_once_object_15 = v10;
}

@end