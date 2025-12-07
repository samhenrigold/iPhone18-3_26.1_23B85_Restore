@interface HKMedicalCoding
+ (HDCodableMedicalCodingList)_codeableRepresentationForMedicalCodings:(uint64_t)codings;
+ (id)_medicalCodingsWithCodable:(uint64_t)codable;
@end

@implementation HKMedicalCoding

+ (id)_medicalCodingsWithCodable:(uint64_t)codable
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    items = [v4 items];
    v7 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(items);
          }

          v11 = [v3 createWithCodable:*(*(&v15 + 1) + 8 * i)];
          if (!v11)
          {

            v13 = 0;
            goto LABEL_13;
          }

          v12 = v11;
          [v5 addObject:v11];
        }

        v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = objc_msgSend_copy(v5);
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (HDCodableMedicalCodingList)_codeableRepresentationForMedicalCodings:(uint64_t)codings
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(HDCodableMedicalCodingList);
  v4 = [v2 hk_map:&__block_literal_global_67];

  v5 = [v4 mutableCopy];
  [(HDCodableMedicalCodingList *)v3 setItems:v5];

  return v3;
}

@end