@interface TLTransliterator
- (TLTransliterator)initWithLocale:(id)locale;
- (TLTransliterator)initWithParameters:(id)parameters;
- (id)generateCandidatesForInputWord:(id)word candidateContext:(id)context maxCandidatesCount:(int64_t)count;
- (id)generateCandidatesForInputWord:(id)word candidateContextStrings:(id)strings maxCandidatesCount:(int64_t)count;
@end

@implementation TLTransliterator

- (TLTransliterator)initWithLocale:(id)locale
{
  localeCopy = locale;
  v5 = [[TLTransliteratorInitParameters alloc] initWithLocale:localeCopy];
  v6 = [(TLTransliterator *)self initWithParameters:v5];

  return v6;
}

- (TLTransliterator)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v6.receiver = self;
  v6.super_class = TLTransliterator;
  if ([(TLTransliterator *)&v6 init])
  {
    [parametersCopy locale];
    objc_claimAutoreleasedReturnValue();
    [parametersCopy modelURL];
    objc_claimAutoreleasedReturnValue();
    [parametersCopy useLanguageModel];
    [parametersCopy useSeq2SeqModel];
    operator new();
  }

  return 0;
}

- (id)generateCandidatesForInputWord:(id)word candidateContext:(id)context maxCandidatesCount:(int64_t)count
{
  v25 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  contextCopy = context;
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  candidates = [contextCopy candidates];
  v12 = [v10 initWithCapacity:{objc_msgSend(candidates, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  candidates2 = [contextCopy candidates];
  v14 = [candidates2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(candidates2);
        }

        transliteratedWord = [*(*(&v20 + 1) + 8 * i) transliteratedWord];
        [v12 addObject:transliteratedWord];
      }

      v14 = [candidates2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [(TLTransliterator *)self generateCandidatesForInputWord:wordCopy candidateContextStrings:v12 maxCandidatesCount:count];

  return v18;
}

- (id)generateCandidatesForInputWord:(id)word candidateContextStrings:(id)strings maxCandidatesCount:(int64_t)count
{
  v42 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = strings;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v33 + 1) + 8 * i) UTF8String]);
        v9 = v38;
        if (v38 >= v39)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3);
          v12 = v11 + 1;
          if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v39 - v37) >> 3) > v12)
          {
            v12 = 0x5555555555555556 * ((v39 - v37) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v39 - v37) >> 3) >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v12;
          }

          v40.__end_cap_.__value_ = &v37;
          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v37, v13);
          }

          v14 = 8 * ((v38 - v37) >> 3);
          v15 = *__p;
          *(v14 + 16) = v32;
          *v14 = v15;
          __p[1] = 0;
          v32 = 0;
          __p[0] = 0;
          v16 = 24 * v11 + 24;
          v17 = (24 * v11 - (v38 - v37));
          memcpy((v14 - (v38 - v37)), v37, v38 - v37);
          v18 = v37;
          v19 = v39;
          v37 = v17;
          v38 = v16;
          v39 = 0;
          v40.__first_ = v18;
          v40.__end_ = v18;
          v40.__end_cap_.__value_ = v19;
          v40.__begin_ = v18;
          std::__split_buffer<std::string>::~__split_buffer(&v40);
          v38 = v16;
          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v10 = *__p;
          *(v38 + 2) = v32;
          *v9 = v10;
          v38 = v9 + 24;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v6);
  }

  ptr = self->_compositeTransliterator.__ptr_;
  v21 = wordCopy;
  std::string::basic_string[abi:ne200100]<0>(__p, [wordCopy UTF8String]);
  TLCompositeTransliterator::getTransliterationCandidates(ptr, &v37, __p, count, &v40);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  array = [MEMORY[0x277CBEB18] array];
  first = v40.__first_;
  for (j = v40.__begin_; first != j; first = (first + 80))
  {
    v25 = [TLTransliteratorCandidate createWithCompositeTransliteratorCandidate:first];
    [array addObject:v25];
  }

  __p[0] = &v40;
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](__p);
  v40.__first_ = &v37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);

  return array;
}

@end