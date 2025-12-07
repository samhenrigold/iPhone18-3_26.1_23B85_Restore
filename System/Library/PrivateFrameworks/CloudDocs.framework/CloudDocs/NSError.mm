@interface NSError
@end

@implementation NSError

void __61__NSError_BRFPAdditions___br_getFileProviderDomainErrorCode___block_invoke()
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18[0] = &unk_1F23E6400;
  v18[1] = &unk_1F23E6430;
  v19[0] = &unk_1F23E6418;
  v19[1] = &unk_1F23E6448;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v1 = _br_getFileProviderDomainErrorCode__cocoaErrorToFPError;
  _br_getFileProviderDomainErrorCode__cocoaErrorToFPError = v0;

  v16[0] = &unk_1F23E6460;
  v16[1] = &unk_1F23E6490;
  v17[0] = &unk_1F23E6478;
  v17[1] = &unk_1F23E64A8;
  v16[2] = &unk_1F23E64C0;
  v16[3] = &unk_1F23E64D8;
  v17[2] = &unk_1F23E64A8;
  v17[3] = &unk_1F23E64A8;
  v16[4] = &unk_1F23E64F0;
  v16[5] = &unk_1F23E6520;
  v17[4] = &unk_1F23E6508;
  v17[5] = &unk_1F23E6538;
  v16[6] = &unk_1F23E6550;
  v16[7] = &unk_1F23E6580;
  v17[6] = &unk_1F23E6568;
  v17[7] = &unk_1F23E6598;
  v16[8] = &unk_1F23E65B0;
  v16[9] = &unk_1F23E65E0;
  v17[8] = &unk_1F23E65C8;
  v17[9] = &unk_1F23E65F8;
  v16[10] = &unk_1F23E6610;
  v16[11] = &unk_1F23E6628;
  v17[10] = &unk_1F23E65F8;
  v17[11] = &unk_1F23E6418;
  v16[12] = &unk_1F23E6640;
  v16[13] = &unk_1F23E6670;
  v17[12] = &unk_1F23E6658;
  v17[13] = &unk_1F23E6688;
  v17[14] = &unk_1F23E6688;
  v16[14] = &unk_1F23E66A0;
  v16[15] = &unk_1F23E66B8;
  v2 = *MEMORY[0x1E69671E8];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69671E8]];
  v17[15] = v3;
  v16[16] = &unk_1F23E66D0;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  v17[16] = v4;
  v16[17] = &unk_1F23E66E8;
  v5 = *MEMORY[0x1E69671C0];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69671C0]];
  v17[17] = v6;
  v16[18] = &unk_1F23E6700;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v17[18] = v7;
  v17[19] = &unk_1F23E6418;
  v16[19] = &unk_1F23E6718;
  v16[20] = &unk_1F23E6730;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v17[20] = v8;
  v16[21] = &unk_1F23E6748;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v17[21] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:22];
  v11 = _br_getFileProviderDomainErrorCode__clouddocsErrorToFPError;
  _br_getFileProviderDomainErrorCode__clouddocsErrorToFPError = v10;

  v14[0] = &unk_1F23E6760;
  v14[1] = &unk_1F23E6778;
  v15[0] = &unk_1F23E6418;
  v15[1] = &unk_1F23E6418;
  v14[2] = &unk_1F23E6790;
  v14[3] = &unk_1F23E67A8;
  v15[2] = &unk_1F23E6418;
  v15[3] = &unk_1F23E6478;
  v14[4] = &unk_1F23E67C0;
  v14[5] = &unk_1F23E67D8;
  v15[4] = &unk_1F23E6478;
  v15[5] = &unk_1F23E64A8;
  v14[6] = &unk_1F23E6508;
  v14[7] = &unk_1F23E67F0;
  v15[6] = &unk_1F23E64A8;
  v15[7] = &unk_1F23E6448;
  v14[8] = &unk_1F23E6808;
  v14[9] = &unk_1F23E6820;
  v15[8] = &unk_1F23E6418;
  v15[9] = &unk_1F23E6418;
  v14[10] = &unk_1F23E6538;
  v14[11] = &unk_1F23E6838;
  v15[10] = &unk_1F23E6418;
  v15[11] = &unk_1F23E6418;
  v14[12] = &unk_1F23E6850;
  v15[12] = &unk_1F23E6418;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:13];
  v13 = _br_getFileProviderDomainErrorCode__cloudKitErrorToFPError;
  _br_getFileProviderDomainErrorCode__cloudKitErrorToFPError = v12;
}

void __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"BRUnderlyingItemKey";
  v10[1] = @"BRLocalizedDescriptionKey";
  v0 = *MEMORY[0x1E696A578];
  v11[0] = *MEMORY[0x1E69671A8];
  v11[1] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v2 = _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToFPUserInfoKey;
  _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToFPUserInfoKey = v1;

  v8 = @"BRUnderlyingItemIdentifierKey";
  v6 = &unk_1F23E6490;
  v7 = *MEMORY[0x1E69671B0];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToBRErrorCodeFPUserInfoKeyMap;
  _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToBRErrorCodeFPUserInfoKeyMap = v4;
}

void __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke_3(id *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [a1[4] objectForKey:a2];
  if (v5)
  {
    v6 = v9;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1[5], "code")}];
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      [a1[6] setObject:v5 forKeyedSubscript:v8];
    }
  }
}

@end