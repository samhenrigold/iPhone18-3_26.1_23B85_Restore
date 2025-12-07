@interface CNContactStore(CASAdditions)
- (id)contactWithIdentifier:()CASAdditions keysToFetch:error:;
@end

@implementation CNContactStore(CASAdditions)

- (id)contactWithIdentifier:()CASAdditions keysToFetch:error:
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v10 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v9];
  [v10 setUnifyResults:0];
  v11 = MEMORY[0x277CBDA58];
  v23[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v13 = [v11 predicateForContactsWithIdentifiers:v12];
  [v10 setPredicate:v13];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__CNContactStore_CASAdditions__contactWithIdentifier_keysToFetch_error___block_invoke;
  v16[3] = &unk_278E05218;
  v16[4] = &v17;
  [self enumerateContactsWithFetchRequest:v10 error:a5 usingBlock:v16];
  v14 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v14;
}

@end