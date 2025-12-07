@interface LSClaimRecord(IconServicesAdditions)
- (id)_IS_iconProvideingRecord;
@end

@implementation LSClaimRecord(IconServicesAdditions)

- (id)_IS_iconProvideingRecord
{
  v24 = *MEMORY[0x1E69E9840];
  typeIdentifiers = [self typeIdentifiers];
  claimingBundleRecord = [self claimingBundleRecord];
  exportedTypeRecords = [claimingBundleRecord exportedTypeRecords];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = typeIdentifiers;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __64__LSClaimRecord_IconServicesAdditions___IS_iconProvideingRecord__block_invoke;
        v18[3] = &unk_1E77C6560;
        v18[4] = v9;
        v10 = [exportedTypeRecords objectsPassingTest:v18];
        anyObject = [v10 anyObject];

        if (anyObject)
        {

          v14 = anyObject;
          v13 = v14;
          v12 = claimingBundleRecord;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = claimingBundleRecord;
  v13 = claimingBundleRecord;
  v14 = 0;
LABEL_11:
  v15 = v13;

  return v13;
}

@end