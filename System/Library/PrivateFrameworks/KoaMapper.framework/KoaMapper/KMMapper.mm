@interface KMMapper
@end

@implementation KMMapper

void __63__KMMapper_INVocabularyItem__fieldTypeNumberForIntentSlotName___block_invoke()
{
  v22[19] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277CD3900];
  v20 = KVFieldTypeToNumber();
  v22[0] = v20;
  v21[1] = *MEMORY[0x277CD38F8];
  v19 = KVFieldTypeToNumber();
  v22[1] = v19;
  v21[2] = *MEMORY[0x277CD3948];
  v18 = KVFieldTypeToNumber();
  v22[2] = v18;
  v21[3] = *MEMORY[0x277CD3938];
  v17 = KVFieldTypeToNumber();
  v22[3] = v17;
  v21[4] = *MEMORY[0x277CD38D0];
  v16 = KVFieldTypeToNumber();
  v22[4] = v16;
  v21[5] = *MEMORY[0x277CD38F0];
  v15 = KVFieldTypeToNumber();
  v22[5] = v15;
  v21[6] = *MEMORY[0x277CD38E8];
  v14 = KVFieldTypeToNumber();
  v22[6] = v14;
  v21[7] = *MEMORY[0x277CD3930];
  v13 = KVFieldTypeToNumber();
  v22[7] = v13;
  v21[8] = *MEMORY[0x277CD3928];
  v12 = KVFieldTypeToNumber();
  v22[8] = v12;
  v21[9] = *MEMORY[0x277CD3920];
  v0 = KVFieldTypeToNumber();
  v22[9] = v0;
  v21[10] = *MEMORY[0x277CD3918];
  v1 = KVFieldTypeToNumber();
  v22[10] = v1;
  v21[11] = *MEMORY[0x277CD3950];
  v2 = KVFieldTypeToNumber();
  v22[11] = v2;
  v21[12] = *MEMORY[0x277CD3910];
  v3 = KVFieldTypeToNumber();
  v22[12] = v3;
  v21[13] = *MEMORY[0x277CD38E0];
  v4 = KVFieldTypeToNumber();
  v22[13] = v4;
  v21[14] = *MEMORY[0x277CD38D8];
  v5 = KVFieldTypeToNumber();
  v22[14] = v5;
  v21[15] = *MEMORY[0x277CD3958];
  v6 = KVFieldTypeToNumber();
  v22[15] = v6;
  v21[16] = *MEMORY[0x277CD3960];
  v7 = KVFieldTypeToNumber();
  v22[16] = v7;
  v21[17] = *MEMORY[0x277CD3940];
  v8 = KVFieldTypeToNumber();
  v22[17] = v8;
  v21[18] = *MEMORY[0x277CD3908];
  v9 = KVFieldTypeToNumber();
  v22[18] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:19];
  v11 = _fieldTypeNumberForIntentSlotName__intentSlotToFieldTypeMap;
  _fieldTypeNumberForIntentSlotName__intentSlotToFieldTypeMap = v10;
}

void __73__KMMapper_LSApplicationRecord_addAlternativeNamesFor_forLanguage_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 valueForKey:@"INAlternativeAppName"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v8 = objc_alloc(MEMORY[0x277CCA8D8]);
        v9 = [*(a1 + 32) URL];
        v10 = [v8 initWithURL:v9];
        v11 = *(*(a1 + 56) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

      v13 = [MEMORY[0x277CEF2D8] sharedInstance];
      v14 = [v13 localizedStringForKey:v7 table:@"InfoPlist" bundle:*(*(*(a1 + 56) + 8) + 40) languageCode:*(a1 + 40)];

      if (![v14 length])
      {
        v15 = v7;

        v14 = v15;
      }

      v16 = *(*(a1 + 48) + 8);
      v17 = *(*(a1 + 64) + 8);
      obj = *(v17 + 40);
      v18 = [v16 addFieldWithType:104 value:v14 error:&obj];
      objc_storeStrong((v17 + 40), obj);

      if (!v18)
      {
        *a4 = 1;
      }
    }
  }
}

@end