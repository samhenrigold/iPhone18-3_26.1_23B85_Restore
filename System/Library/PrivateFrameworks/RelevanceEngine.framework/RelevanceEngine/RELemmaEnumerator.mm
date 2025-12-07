@interface RELemmaEnumerator
- (BOOL)enumerateLemmasInString:(id)string withBlock:(id)block;
- (RELemmaEnumerator)init;
- (uint64_t)init;
@end

@implementation RELemmaEnumerator

- (RELemmaEnumerator)init
{
  v24[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = RELemmaEnumerator;
  v2 = [(RELemmaEnumerator *)&v14 init];
  if (v2 && NaturalLanguageLibraryCore(0))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v3 = getNLTagSchemeLanguageSymbolLoc_ptr;
    v23 = getNLTagSchemeLanguageSymbolLoc_ptr;
    if (!getNLTagSchemeLanguageSymbolLoc_ptr)
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __getNLTagSchemeLanguageSymbolLoc_block_invoke;
      v18 = &unk_2785F9BC0;
      v19 = &v20;
      v4 = NaturalLanguageLibrary();
      v5 = dlsym(v4, "NLTagSchemeLanguage");
      *(v19[1] + 24) = v5;
      getNLTagSchemeLanguageSymbolLoc_ptr = *(v19[1] + 24);
      v3 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v3)
    {
      [RELemmaEnumerator init];
      __break(1u);
    }

    v24[0] = *v3;
    v6 = v24[0];
    v7 = getNLTagSchemeLemma();
    v24[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v9 = getNLTaggerClass_softClass;
    v23 = getNLTaggerClass_softClass;
    if (!getNLTaggerClass_softClass)
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __getNLTaggerClass_block_invoke;
      v18 = &unk_2785F9BC0;
      v19 = &v20;
      __getNLTaggerClass_block_invoke(&v15);
      v9 = v21[3];
    }

    v10 = v9;
    _Block_object_dispose(&v20, 8);
    v11 = [[v9 alloc] initWithTagSchemes:v8];
    tagger = v2->_tagger;
    v2->_tagger = v11;
  }

  return v2;
}

- (BOOL)enumerateLemmasInString:(id)string withBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  if (blockCopy)
  {
    tagger = self->_tagger;
    if (tagger)
    {
      [(NLTagger *)tagger setString:stringCopy];
      dominantLanguage = [(NLTagger *)self->_tagger dominantLanguage];
      v10 = dominantLanguage;
      if (dominantLanguage && ([dominantLanguage isEqualToString:@"und"] & 1) == 0)
      {
        v12 = self->_tagger;
        v13 = [stringCopy length];
        v14 = getNLTagSchemeLemma();
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __55__RELemmaEnumerator_enumerateLemmasInString_withBlock___block_invoke;
        v16[3] = &unk_2785F9B80;
        v17 = stringCopy;
        v18 = blockCopy;
        [(NLTagger *)v12 enumerateTagsInRange:0 unit:v13 scheme:0 options:v14 usingBlock:14, v16];

        v11 = 1;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void __55__RELemmaEnumerator_enumerateLemmasInString_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v10 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [*(a1 + 32) substringWithRange:{a3, a4}];
  }

  v9 = v8;
  (*(*(a1 + 40) + 16))();
}

- (uint64_t)init
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return __getNLTaggerClass_block_invoke_cold_1();
}

@end