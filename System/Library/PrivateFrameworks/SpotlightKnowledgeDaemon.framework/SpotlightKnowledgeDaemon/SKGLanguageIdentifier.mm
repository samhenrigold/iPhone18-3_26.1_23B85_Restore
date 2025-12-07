@interface SKGLanguageIdentifier
+ (id)sharedIdentifier;
- (id)languageFromString:(id)string normalizedChunkBlock:(id)block;
@end

@implementation SKGLanguageIdentifier

+ (id)sharedIdentifier
{
  if (sharedIdentifier_onceToken != -1)
  {
    +[SKGLanguageIdentifier sharedIdentifier];
  }

  v3 = sharedIdentifier_gIdentifier;

  return v3;
}

void __41__SKGLanguageIdentifier_sharedIdentifier__block_invoke()
{
  v0 = objc_alloc_init(SKGLanguageIdentifier);
  v1 = sharedIdentifier_gIdentifier;
  sharedIdentifier_gIdentifier = v0;
}

- (id)languageFromString:(id)string normalizedChunkBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  blockCopy = block;
  memset(v25, 0, 240);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = v25;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v7 = [stringCopy length];
  v8 = v7;
  if (v7 - 16 > 0x53)
  {
    if (v7 >= 0x65)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __65__SKGLanguageIdentifier_languageFromString_normalizedChunkBlock___block_invoke;
      v16[3] = &unk_27893EE28;
      v17 = blockCopy;
      v18 = &v21;
      v19 = v20;
      [stringCopy enumerateSubstringsInRange:0 options:v8 usingBlock:{1, v16}];
    }
  }

  else
  {
    v9 = SILanguagesGuessLanguageInString();
    ++*(v22[3] + 4 * v9);
  }

  v10 = 0;
  v11 = 1;
  for (i = 2; i != 59; ++i)
  {
    if (v25[i] > v10)
    {
      v11 = i;
      v10 = v25[i];
    }
  }

  if (v11 <= 1)
  {
    Language = 0;
  }

  else
  {
    Language = SILanguagesGetLanguage();
  }

  v14 = Language;
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);

  return v14;
}

void __65__SKGLanguageIdentifier_languageFromString_normalizedChunkBlock___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  if (v10 && a4)
  {
    v15 = v10;
    v11 = (*(a1[4] + 16))();
    v12 = v11;
    if (v11)
    {
      [v11 length];
      v13 = SILanguagesGuessLanguageInString();
      v14 = *(*(a1[5] + 8) + 24);
      ++*(v14 + 4 * v13);
      ++*(*(a1[6] + 8) + 24);
    }

    v10 = v15;
  }

  if (*(*(a1[6] + 8) + 24) >= 0xAuLL)
  {
    *a7 = 1;
  }
}

@end