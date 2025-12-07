@interface RKEventIdentifier
- (RKEventIdentifier)init;
- (RKEventIdentifier)initWithLanguageID:(id)d;
- (id)_identifyOwnedTokenSequences:(id)sequences;
- (id)_identifyStrings:(id)strings otherDateCount:(unint64_t)count otherDates:(RKEventIdentifierRange *)dates;
- (id)identifyMessage:(id)message;
- (id)identifyStrings:(id)strings;
- (id)identifyText:(id)text;
- (unint64_t)_identifyStrings:(uint64_t)strings otherDateCount:(char)count otherDates:;
- (void)_identifyStrings:(uint64_t)strings otherDateCount:(__int128 *)count otherDates:;
- (void)resetEventIdentifierModel;
@end

@implementation RKEventIdentifier

- (RKEventIdentifier)init
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [preferredLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v8 = [(RKEventIdentifier *)selfCopy initWithLanguageID:*(*(&v11 + 1) + 8 * i)];
        if (v8)
        {
          self = v8;
          selfCopy2 = self;
          goto LABEL_12;
        }

        selfCopy = 0;
      }

      v4 = [preferredLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
      selfCopy = 0;
      self = 0;
      selfCopy2 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

LABEL_12:

  return selfCopy2;
}

- (RKEventIdentifier)initWithLanguageID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = RKEventIdentifier;
  v5 = [(RKEventIdentifier *)&v12 init];
  if (v5 && (v6 = [[RKNLEventTokenizer alloc] initWithLanguageID:dCopy], tokenizer = v5->_tokenizer, v5->_tokenizer = v6, tokenizer, [RKMontrealModel modelForLanguage:dCopy], v8 = objc_claimAutoreleasedReturnValue(), model = v5->_model, v5->_model = v8, model, !v5->_model))
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (void)resetEventIdentifierModel
{
  model = self->_model;
  if (model)
  {
    [(RKMontrealModel *)model reset];
  }
}

- (id)_identifyOwnedTokenSequences:(id)sequences
{
  v27 = *MEMORY[0x277D85DE8];
  sequencesCopy = sequences;
  model = [(RKMontrealModel *)self->_model model];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = sequencesCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (!v6)
  {

LABEL_16:
    v14 = 0;
    v13 = v5;
    goto LABEL_17;
  }

  v7 = 0;
  v8 = *v22;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v21 + 1) + 8 * i) count];
      v11 = kMaxSequenceLength;
      if (v10 < kMaxSequenceLength)
      {
        v11 = v10;
      }

      v7 += v11;
    }

    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  }

  while (v6);

  if (!v7)
  {
    goto LABEL_16;
  }

  v17 = malloc_type_calloc(v7, 0x14uLL, 0x100004052888210uLL);
  v12 = weak_MRLModelStateCreate(model);
  if (!v12)
  {
    __assert_rtn("[RKEventIdentifier _identifyOwnedTokenSequences:]", "RKEventIdentifier.mm", 266, "modelState");
  }

  v16 = v12;
  memset(v20, 0, sizeof(v20));
  v18 = v5;
  if ([v18 countByEnumeratingWithState:v20 objects:&v25 count:16])
  {
    [**(&v20[0] + 1) count];
    operator new[]();
  }

  weak_MRLModelStateRelease(model, v16);
  v13 = v5;
  v14 = [[RKEventIdentification alloc] initWithOwnedTokenSequences:v18 probabilities:v17];
LABEL_17:

  return v14;
}

- (id)_identifyStrings:(id)strings otherDateCount:(unint64_t)count otherDates:(RKEventIdentifierRange *)dates
{
  v92 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_ioMappings)
  {
    if ([(RKMontrealModel *)selfCopy->_model model])
    {
      v14 = (weak_MRLModelGetIOMappings)([(RKMontrealModel *)selfCopy->_model model]);
      selfCopy->_ioMappings = v14;
      if (v14)
      {
        v15 = 0;
        __src = 0;
        v89 = 0;
        v90 = 0;
        do
        {
          ioMappings = selfCopy->_ioMappings;
          LODWORD(v85) = kOutputMappingCodesForEventIds[v15];
          v17 = *std::map<int,int>::at(ioMappings + 48, &v85);
          v18 = v89;
          if (v89 >= v90)
          {
            v20 = __src;
            v21 = v89 - __src;
            v22 = (v89 - __src) >> 3;
            v23 = v22 + 1;
            if ((v22 + 1) >> 61)
            {
              std::vector<std::pair<int,int>>::__throw_length_error[abi:ne200100]();
            }

            v24 = v90 - __src;
            if ((v90 - __src) >> 2 > v23)
            {
              v23 = v24 >> 2;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFF8)
            {
              v25 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(&__src, v25);
            }

            v26 = (8 * v22);
            *v26 = v17;
            v26[1] = v15;
            v19 = (8 * v22 + 8);
            memcpy(0, v20, v21);
            v27 = __src;
            __src = 0;
            v89 = v19;
            v90 = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v89 = v17;
            *(v18 + 1) = v15;
            v19 = v18 + 8;
          }

          v89 = v19;
          ++v15;
        }

        while (v15 != 5);
        v28 = 126 - 2 * __clz((v19 - __src) >> 3);
        if (v19 == __src)
        {
          v29 = 0;
        }

        else
        {
          v29 = v28;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(__src, v19, &v85, v29, 1);
        v30 = __src;
        outputPermutation = selfCopy->_outputPermutation;
        for (i = 4; i != 44; i += 8)
        {
          *outputPermutation++ = *&v30[i];
        }

        v89 = v30;
        operator delete(v30);
      }
    }
  }

  objc_sync_exit(selfCopy);

  if (selfCopy->_ioMappings)
  {
    __src = 0;
    v89 = 0;
    v90 = 0;
    if (dates)
    {
      v85 = 0;
      v86 = 0;
      v87 = 0;
      if (count)
      {
        p_length = &dates->var1.length;
        do
        {
          v11 = *(p_length - 1);
          v12 = *p_length;
          *&v83 = *(p_length - 2);
          v10 = v83;
          *(&v83 + 1) = v11;
          LOBYTE(v84) = 1;
          std::vector<-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta>::push_back[abi:ne200100](&v85, &v83);
          *&v83 = v10;
          *(&v83 + 1) = v12 + v11;
          LOBYTE(v84) = 0;
          std::vector<-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta>::push_back[abi:ne200100](&v85, &v83);
          p_length += 3;
          --count;
        }

        while (count);
        v13 = v85;
        count = v86;
      }

      else
      {
        v13 = 0;
      }

      v34 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((count - v13) >> 3));
      if (count == v13)
      {
        v35 = 0;
      }

      else
      {
        v35 = v34;
      }

      std::__introsort<std::_ClassicAlgPolicy,[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,false>(v13, count, v35, 1);
      if (count != v13)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = v13;
        do
        {
          if (*(v39 + 16) == 1)
          {
            if (v36)
            {
              ++v36;
            }

            else
            {
              v37 = *v39;
              v38 = v39[1];
              v36 = 1;
            }
          }

          else if (!--v36)
          {
            if (v37 == *v39)
            {
              *&v83 = v37;
              *(&v83 + 1) = v38;
              v84 = v39[1] - v38;
              std::vector<RKEventIdentifierRange>::push_back[abi:ne200100](&__src, &v83);
            }

            v36 = 0;
          }

          v39 += 3;
        }

        while (v39 != count);
      }

      if (v13)
      {
        operator delete(v13);
      }
    }

    v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = stringsCopy;
    v40 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
    if (v40)
    {
      v41 = 0;
      v71 = 0;
      v73 = *v80;
      do
      {
        v42 = 0;
        v78 = v71;
        v71 += v40;
        v75 = v40;
        do
        {
          if (*v80 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v77 = v42;
          v43 = *(*(&v79 + 1) + 8 * v42);
          context = objc_autoreleasePoolPush();
          v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v45 = __src;
          if (v41 >= 0xAAAAAAAAAAAAAAABLL * ((v89 - __src) >> 3))
          {
            v46 = 0;
          }

          else
          {
            v46 = 0;
            v47 = 24 * v41;
            do
            {
              if (*&v45[v47] != v78)
              {
                break;
              }

              v48 = &v45[v47];
              v50 = *(v48 + 1);
              v49 = *(v48 + 2);
              v51 = [v43 substringWithRange:{v46, v50 - v46}];
              v52 = [(RKNLEventTokenizer *)selfCopy->_tokenizer buildTokenSquence:v51 withOffset:v46];
              if ([v52 count])
              {
                [v44 addObjectsFromArray:v52];
              }

              v53 = [[RKNLEventToken alloc] initWithString:@"DATE_TIME" location:v50 length:v49];
              [(RKNLEventToken *)v53 setTokenID:IOMappings::lookupInput(selfCopy->_ioMappings, "DATE_TIME", 9uLL)];
              [v44 addObject:v53];

              v46 = v49 + v50;
              ++v41;
              v45 = __src;
              v47 += 24;
            }

            while (v41 < 0xAAAAAAAAAAAAAAABLL * ((v89 - __src) >> 3));
          }

          if (v46 < [v43 length])
          {
            v54 = [v43 substringWithRange:{v46, objc_msgSend(v43, "length") - v46}];
            v55 = [(RKNLEventTokenizer *)selfCopy->_tokenizer buildTokenSquence:v54 withOffset:v46];
            if ([v55 count])
            {
              [v44 addObjectsFromArray:v55];
            }
          }

          for (j = 0; [v44 count] > j; ++j)
          {
            v57 = [v44 objectAtIndexedSubscript:j];
            string = [v57 string];
            v59 = [RKNLEventTokenizer isSpecialToken:string];

            v60 = [v44 objectAtIndexedSubscript:j];
            string2 = [v60 string];
            if (v59)
            {
              v62 = string2;
              uTF8String = [string2 UTF8String];
            }

            else
            {
              lowercaseString = [string2 lowercaseString];
              v68 = lowercaseString;
              uTF8String = [lowercaseString UTF8String];
            }

            v64 = strlen(uTF8String);
            v65 = IOMappings::lookupInput(selfCopy->_ioMappings, uTF8String, v64);
            v66 = [v44 objectAtIndexedSubscript:j];
            [v66 setTokenID:v65];
          }

          [v74 addObject:v44];

          objc_autoreleasePoolPop(context);
          ++v78;
          v42 = v77 + 1;
        }

        while (v77 + 1 != v75);
        v40 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
      }

      while (v40);
    }

    v33 = [(RKEventIdentifier *)selfCopy _identifyOwnedTokenSequences:v74];

    if (__src)
    {
      v89 = __src;
      operator delete(__src);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)_identifyStrings:(uint64_t)strings otherDateCount:(__int128 *)count otherDates:
{
  v3 = *(strings + 8);
  v4 = *(strings + 16);
  if (v3 >= v4)
  {
    v7 = *strings;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *strings) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<int,int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 8 * ((v3 - *strings) >> 3);
    *v12 = *count;
    *(v12 + 16) = *(count + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *strings = v13;
    *(strings + 8) = v6;
    *(strings + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *count;
    *(v3 + 16) = *(count + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(strings + 8) = v6;
}

- (id)identifyStrings:(id)strings
{
  v3 = [(RKEventIdentifier *)self _identifyStrings:strings otherDateCount:0 otherDates:0];

  return v3;
}

- (id)identifyText:(id)text
{
  v33 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v17 = objc_opt_new();
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__51;
  v27 = __Block_byref_object_dispose__52;
  v28 = "";
  v30 = 0;
  v31 = 0;
  __p = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = textCopy;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v32 count:{16, textCopy}];
  if (v3)
  {
    v4 = 0;
    v5 = *v20;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        string = [v7 string];
        [v17 addObject:string];
        v9 = [string length];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __34__RKEventIdentifier_identifyText___block_invoke;
        v18[3] = &unk_279B10A38;
        v18[4] = &v23;
        v18[5] = v4;
        [v7 enumerateAnnotationsInRange:0 usingBlock:{v9, v18}];

        ++v4;
      }

      v3 = [obj countByEnumeratingWithState:&v19 objects:v32 count:16];
    }

    while (v3);
  }

  v10 = v24[7] - v24[6];
  if (v10)
  {
    v11 = v24[6];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(RKEventIdentifier *)self _identifyStrings:v17 otherDateCount:0xAAAAAAAAAAAAAAABLL * (v10 >> 3) otherDates:v11];
  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return v12;
}

void __34__RKEventIdentifier_identifyText___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - 1) <= 1)
  {
    v9 = v4;
    v10 = v5;
    v6 = *(*(a1 + 32) + 8);
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = a3;
    v8 = a4;
    std::vector<RKEventIdentifierRange>::push_back[abi:ne200100](v6 + 48, &v7);
  }
}

- (id)identifyMessage:(id)message
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v20 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = __Block_byref_object_copy__51;
  v30 = __Block_byref_object_dispose__52;
  v31 = "";
  v33 = 0;
  v34 = 0;
  __p = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = messageCopy;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v35 count:{16, messageCopy}];
  if (v3)
  {
    v4 = 0;
    v5 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        title = [v7 title];
        string = [v7 string];
        v10 = [title stringByAppendingString:@" "];
        v11 = [v10 stringByAppendingString:string];

        [v20 addObject:v11];
        v12 = [v11 length];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __37__RKEventIdentifier_identifyMessage___block_invoke;
        v21[3] = &unk_279B10A38;
        v21[4] = &v26;
        v21[5] = v4;
        [v7 enumerateAnnotationsInRange:0 usingBlock:{v12, v21}];

        ++v4;
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v35 count:16];
    }

    while (v3);
  }

  v13 = v27[7] - v27[6];
  if (v13)
  {
    v14 = v27[6];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(RKEventIdentifier *)self _identifyStrings:v20 otherDateCount:0xAAAAAAAAAAAAAAABLL * (v13 >> 3) otherDates:v14];
  _Block_object_dispose(&v26, 8);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  return v15;
}

void __37__RKEventIdentifier_identifyMessage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - 1) <= 1)
  {
    v9 = v4;
    v10 = v5;
    v6 = *(*(a1 + 32) + 8);
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = a3;
    v8 = a4;
    std::vector<RKEventIdentifierRange>::push_back[abi:ne200100](v6 + 48, &v7);
  }
}

- (unint64_t)_identifyStrings:(uint64_t)strings otherDateCount:(char)count otherDates:
{
  v7 = result;
LABEL_2:
  v8 = a2 - 3;
  j = v7;
  while (1)
  {
    v7 = j;
    v10 = a2 - j;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - j) >> 3);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(j, (j + 24), (a2 - 24));
        case 4:
          result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(j, (j + 24), (j + 48));
          v66 = (a2 - 24);
          v67 = *(a2 - 3);
          v68 = *(j + 48);
          if (v67 < v68 || v67 <= v68 && ((v135 = *(a2 - 2), v136 = *(j + 56), v135 < v136) || v135 <= v136 && *(a2 - 8) < *(j + 64)))
          {
            v69 = *(j + 48);
            v70 = *(j + 64);
            v71 = *(a2 - 1);
            *(j + 48) = *v66;
            *(j + 64) = v71;
            *(a2 - 1) = v70;
            *v66 = v69;
            v72 = *(j + 48);
            v73 = *(j + 24);
            if (v72 < v73 || v72 <= v73 && ((v146 = *(j + 56), v147 = *(j + 32), v146 < v147) || v146 <= v147 && *(j + 64) < *(j + 40)))
            {
              v74 = *(j + 40);
              v75 = *(j + 24);
              *(j + 24) = *(j + 48);
              *(j + 40) = *(j + 64);
              *(j + 48) = v75;
              *(j + 64) = v74;
              v76 = *(j + 24);
              if (v76 < *j || v76 <= *j && ((v148 = *(j + 32), v149 = *(j + 8), v148 < v149) || v148 <= v149 && *(j + 40) < *(j + 16)))
              {
                v166 = *(j + 16);
                v157 = *j;
                *j = *(j + 24);
                *(j + 16) = *(j + 40);
                *(j + 24) = v157;
                *(j + 40) = v166;
              }
            }
          }

          return result;
        case 5:

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(j, (j + 24), j + 48, (j + 72), (a2 - 24));
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v63 = (a2 - 24);
        v64 = *(a2 - 3);
        if (v64 < *j || v64 <= *j && ((v133 = *(a2 - 2), v134 = *(j + 8), v133 < v134) || v133 <= v134 && *(a2 - 8) < *(j + 16)))
        {
          v165 = *(j + 16);
          v156 = *j;
          v65 = *v63;
          *(j + 16) = *(a2 - 1);
          *j = v65;
          *(a2 - 1) = v165;
          *v63 = v156;
        }

        return result;
      }
    }

    if (v10 <= 575)
    {
      break;
    }

    if (!strings)
    {
      if (j == a2)
      {
        return result;
      }

      v92 = (v11 - 2) >> 1;
      v93 = v92;
      while (1)
      {
        v94 = v93;
        if (v92 >= v93)
        {
          v95 = (2 * v93) | 1;
          v96 = j + 24 * v95;
          if (2 * v94 + 2 < v11)
          {
            v97 = *(v96 + 24);
            if (*v96 < v97 || *v96 <= v97 && ((v109 = *(v96 + 8), v110 = *(v96 + 32), v109 < v110) || v109 <= v110 && *(v96 + 16) < *(v96 + 40)))
            {
              v96 += 24;
              v95 = 2 * v94 + 2;
            }
          }

          result = j + 24 * v94;
          v98 = *result;
          if (*v96 >= *result)
          {
            if (*v96 > *result)
            {
              v99 = *(result + 8);
LABEL_165:
              v100 = *(result + 16);
              *&v159[3] = *(result + 20);
              *v159 = *(result + 17);
              while (1)
              {
                v101 = *v96;
                *(result + 16) = *(v96 + 16);
                *result = v101;
                if (v92 < v95)
                {
                  goto LABEL_190;
                }

                result = v96;
                v102 = 2 * v95;
                v95 = (2 * v95) | 1;
                v96 = j + 24 * v95;
                v103 = v102 + 2;
                if (v103 < v11)
                {
                  v104 = *(v96 + 24);
                  if (*v96 < v104 || *v96 <= v104 && ((v106 = *(v96 + 8), v107 = *(v96 + 32), v106 < v107) || v106 <= v107 && *(v96 + 16) < *(v96 + 40)))
                  {
                    v96 += 24;
                    v95 = v103;
                  }
                }

                if (*v96 < v98)
                {
                  break;
                }

                if (*v96 <= v98)
                {
                  v105 = *(v96 + 8);
                  if (v105 < v99 || v105 <= v99 && *(v96 + 16) < v100)
                  {
                    break;
                  }
                }
              }

              v96 = result;
LABEL_190:
              *v96 = v98;
              *(v96 + 8) = v99;
              *(v96 + 16) = v100;
              *(v96 + 17) = *v159;
              *(v96 + 20) = *&v159[3];
              goto LABEL_191;
            }

            v108 = *(v96 + 8);
            v99 = *(result + 8);
            if (v108 >= v99 && (v108 > v99 || *(v96 + 16) >= *(result + 16)))
            {
              goto LABEL_165;
            }
          }
        }

LABEL_191:
        v93 = v94 - 1;
        if (!v94)
        {
          v111 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
          while (1)
          {
            v112 = 0;
            v167 = *(j + 16);
            v160 = *j;
            v113 = j;
            do
            {
              v114 = v113;
              v115 = v113 + 24 * v112;
              v113 = v115 + 24;
              v116 = 2 * v112;
              v112 = (2 * v112) | 1;
              v117 = v116 + 2;
              if (v117 < v111)
              {
                result = *(v115 + 48);
                v118 = *(v115 + 24);
                if (v118 < result || v118 <= result && ((result = *(v115 + 32), v120 = *(v115 + 56), result < v120) || result <= v120 && (result = *(v115 + 40), result < *(v115 + 64))))
                {
                  v113 = v115 + 48;
                  v112 = v117;
                }
              }

              v119 = *v113;
              *(v114 + 16) = *(v113 + 16);
              *v114 = v119;
            }

            while (v112 <= ((v111 - 2) >> 1));
            a2 = (a2 - 24);
            if (v113 == a2)
            {
              *(v113 + 16) = v167;
              *v113 = v160;
            }

            else
            {
              v121 = *a2;
              *(v113 + 16) = *(a2 + 2);
              *v113 = v121;
              *(a2 + 2) = v167;
              *a2 = v160;
              v122 = v113 - j + 24;
              if (v122 >= 25)
              {
                v123 = 0xAAAAAAAAAAAAAAABLL * (v122 >> 3) - 2;
                v124 = v123 >> 1;
                v125 = j + 24 * (v123 >> 1);
                v126 = *v113;
                if (*v125 < *v113)
                {
                  v127 = *(v113 + 8);
LABEL_208:
                  v128 = *(v113 + 16);
                  *v152 = *(v113 + 17);
                  *&v152[3] = *(v113 + 20);
                  result = *(v125 + 16);
                  *v113 = *v125;
                  *(v113 + 16) = result;
                  if (v123 >= 2)
                  {
                    while (1)
                    {
                      v129 = v125;
                      v130 = v124 - 1;
                      v124 = (v124 - 1) >> 1;
                      v125 = j + 24 * v124;
                      result = *v125;
                      if (*v125 >= v126)
                      {
                        if (*v125 > v126)
                        {
                          break;
                        }

                        result = *(v125 + 8);
                        if (result >= v127)
                        {
                          if (result > v127)
                          {
                            break;
                          }

                          result = *(v125 + 16);
                          if (result >= v128)
                          {
                            break;
                          }
                        }
                      }

                      v131 = *v125;
                      result = *(v125 + 16);
                      *(v129 + 16) = result;
                      *v129 = v131;
                      if (v130 <= 1)
                      {
                        goto LABEL_223;
                      }
                    }

                    v125 = v129;
                  }

LABEL_223:
                  *v125 = v126;
                  *(v125 + 8) = v127;
                  *(v125 + 16) = v128;
                  *(v125 + 17) = *v152;
                  *(v125 + 20) = *&v152[3];
                  goto LABEL_224;
                }

                if (*v125 <= *v113)
                {
                  v132 = *(v125 + 8);
                  v127 = *(v113 + 8);
                  if (v132 < v127)
                  {
                    goto LABEL_208;
                  }

                  if (v132 <= v127)
                  {
                    result = *(v113 + 16);
                    if (*(v125 + 16) < result)
                    {
                      goto LABEL_208;
                    }
                  }
                }
              }
            }

LABEL_224:
            v38 = v111-- <= 2;
            if (v38)
            {
              return result;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = (j + 24 * (v11 >> 1));
    if (v10 < 0xC01)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>((v7 + 24 * v12), v7, (a2 - 24));
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(v7, (v7 + 24 * v12), (a2 - 24));
      v14 = 3 * v12;
      v15 = (v7 + 24 * v12 - 24);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>((v7 + 24), v15, a2 - 3);
      v16 = (v7 + 24 + 8 * v14);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>((v7 + 48), v16, (a2 - 72));
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(v15, v13, v16);
      v162 = *(v7 + 16);
      v153 = *v7;
      v17 = v13[2];
      *v7 = *v13;
      *(v7 + 16) = v17;
      v13[2] = v162;
      *v13 = v153;
    }

    --strings;
    v18 = *v7;
    if ((count & 1) != 0 || (v19 = *(v7 - 24), v19 < v18))
    {
LABEL_21:
      v22 = 0;
      v23 = *(v7 + 8);
      v24 = *(v7 + 16);
      *v150 = *(v7 + 17);
      *&v150[3] = *(v7 + 20);
      while (1)
      {
        v25 = *(v7 + v22 + 24);
        if (v25 >= v18)
        {
          if (v25 > v18)
          {
            break;
          }

          v26 = *(v7 + v22 + 32);
          if (v26 >= v23 && (v26 > v23 || *(v7 + v22 + 40) >= v24))
          {
            break;
          }
        }

        v22 += 24;
      }

      v27 = v7 + v22 + 24;
      if (v22)
      {
        v28 = *v8;
        for (i = a2 - 24; v28 >= v18; i -= 24)
        {
          if (v28 <= v18)
          {
            v30 = *(i + 8);
            if (v30 < v23 || v30 <= v23 && *(i + 16) < v24)
            {
              break;
            }
          }

          v31 = *(i - 24);
          v28 = v31;
        }
      }

      else
      {
        i = a2;
        if (v27 < a2)
        {
          v32 = *v8;
          i = a2 - 24;
          if (*v8 >= v18)
          {
            i = a2 - 24;
            do
            {
              if (v32 > v18)
              {
                goto LABEL_42;
              }

              v33 = *(i + 8);
              if (v33 < v23)
              {
                break;
              }

              if (v33 <= v23)
              {
                if (v27 >= i || *(i + 16) < v24)
                {
                  break;
                }
              }

              else
              {
LABEL_42:
                if (v27 >= i)
                {
                  break;
                }
              }

              v34 = *(i - 24);
              i -= 24;
              v32 = v34;
            }

            while (v34 >= v18);
          }
        }
      }

      j = v27;
      if (v27 < i)
      {
        v35 = i;
        do
        {
          v163 = *(j + 16);
          v154 = *j;
          v36 = *v35;
          *(j + 16) = *(v35 + 16);
          *j = v36;
          *(v35 + 16) = v163;
          *v35 = v154;
          do
          {
            do
            {
              v37 = *(j + 24);
              j += 24;
              v38 = v37 > v18;
            }

            while (v37 < v18);
            if (v38)
            {
              break;
            }

            v39 = *(j + 8);
          }

          while (v39 < v23 || v39 <= v23 && *(j + 16) < v24);
          while (1)
          {
            v41 = *(v35 - 24);
            v35 -= 24;
            v40 = v41;
            if (v41 < v18)
            {
              break;
            }

            if (v40 <= v18)
            {
              v42 = *(v35 + 8);
              if (v42 < v23 || v42 <= v23 && *(v35 + 16) < v24)
              {
                break;
              }
            }
          }
        }

        while (j < v35);
      }

      if (j - 24 != v7)
      {
        v43 = *(j - 24);
        *(v7 + 16) = *(j - 8);
        *v7 = v43;
      }

      *(j - 24) = v18;
      *(j - 16) = v23;
      *(j - 8) = v24;
      *(j - 7) = *v150;
      *(j - 4) = *&v150[3];
      if (v27 < i)
      {
LABEL_66:
        result = std::__introsort<std::_ClassicAlgPolicy,[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,false>(v7, j - 24, strings, count & 1);
        count = 0;
      }

      else
      {
        v44 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *>(v7, j - 24);
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *>(j, a2);
        if (result)
        {
          a2 = (j - 24);
          if (v44)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v44)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
      if (v19 > v18)
      {
        v21 = *(v7 + 8);
      }

      else
      {
        v20 = *(v7 - 16);
        v21 = *(v7 + 8);
        if (v20 < v21 || v20 <= v21 && *(v7 - 8) < *(v7 + 16))
        {
          goto LABEL_21;
        }
      }

      v45 = *(v7 + 16);
      *v151 = *(v7 + 17);
      *&v151[3] = *(v7 + 20);
      v46 = *v8;
      if (v18 < *v8 || v18 <= *v8 && ((v62 = *(a2 - 2), v21 < v62) || v21 <= v62 && v45 < *(a2 - 8)))
      {
        j = v7;
        while (1)
        {
          v48 = *(j + 24);
          j += 24;
          v47 = v48;
          if (v18 < v48)
          {
            break;
          }

          if (v18 <= v47)
          {
            v49 = *(j + 8);
            if (v21 < v49 || v21 <= v49 && v45 < *(j + 16))
            {
              break;
            }
          }
        }
      }

      else
      {
        for (j = v7 + 24; j < a2; j += 24)
        {
          if (v18 < *j)
          {
            break;
          }

          if (v18 <= *j)
          {
            v61 = *(j + 8);
            if (v21 < v61 || v21 <= v61 && v45 < *(j + 16))
            {
              break;
            }
          }
        }
      }

      k = a2;
      if (j < a2)
      {
        for (k = a2 - 24; ; k -= 24)
        {
          if (v18 >= v46)
          {
            if (v18 > v46)
            {
              break;
            }

            v51 = *(k + 8);
            if (v21 >= v51 && (v21 > v51 || v45 >= *(k + 16)))
            {
              break;
            }
          }

          v52 = *(k - 24);
          v46 = v52;
        }
      }

      while (j < k)
      {
        v164 = *(j + 16);
        v155 = *j;
        v53 = *k;
        *(j + 16) = *(k + 16);
        *j = v53;
        *(k + 16) = v164;
        *k = v155;
        while (1)
        {
          v55 = *(j + 24);
          j += 24;
          v54 = v55;
          if (v18 < v55)
          {
            break;
          }

          if (v18 <= v54)
          {
            v56 = *(j + 8);
            if (v21 < v56 || v21 <= v56 && v45 < *(j + 16))
            {
              break;
            }
          }
        }

        do
        {
          do
          {
            v57 = *(k - 24);
            k -= 24;
            v58 = v18 > v57;
          }

          while (v18 < v57);
          if (v58)
          {
            break;
          }

          v59 = *(k + 8);
        }

        while (v21 < v59 || v21 <= v59 && v45 < *(k + 16));
      }

      if (j - 24 != v7)
      {
        v60 = *(j - 24);
        *(v7 + 16) = *(j - 8);
        *v7 = v60;
      }

      count = 0;
      *(j - 24) = v18;
      *(j - 16) = v21;
      *(j - 8) = v45;
      *(j - 7) = *v151;
      *(j - 4) = *&v151[3];
    }
  }

  v77 = j + 24;
  v79 = j == a2 || v77 == a2;
  if ((count & 1) == 0)
  {
    if (v79)
    {
      return result;
    }

    while (1)
    {
      v137 = v7;
      v7 = v77;
      v138 = *(v137 + 24);
      if (v138 < *v137)
      {
        break;
      }

      if (v138 <= *v137)
      {
        v139 = *(v137 + 32);
        v145 = *(v137 + 8);
        if (v139 < v145 || v139 <= v145 && *(v137 + 40) < *(v137 + 16))
        {
          goto LABEL_240;
        }
      }

LABEL_248:
      v77 = v7 + 24;
      if ((v7 + 24) == a2)
      {
        return result;
      }
    }

    v139 = *(v137 + 32);
LABEL_240:
    v140 = *(v137 + 40);
    *v161 = *(v137 + 41);
    *&v161[3] = *(v137 + 44);
    do
    {
      do
      {
        v141 = v137;
        *(v137 + 24) = *v137;
        *(v137 + 40) = *(v137 + 16);
        v142 = *(v137 - 24);
        v137 -= 24;
        v143 = v138 > v142;
      }

      while (v138 < v142);
      if (v143)
      {
        break;
      }

      v144 = *(v141 - 16);
    }

    while (v139 < v144 || v139 <= v144 && v140 < *(v141 - 8));
    *v141 = v138;
    *(v141 + 8) = v139;
    *(v141 + 16) = v140;
    *(v141 + 17) = *v161;
    *(v141 + 20) = *&v161[3];
    goto LABEL_248;
  }

  if (v79)
  {
    return result;
  }

  v80 = 0;
  v81 = j;
  while (2)
  {
    v82 = v81;
    v81 = v77;
    v83 = *(v82 + 24);
    if (v83 >= *v82)
    {
      if (v83 > *v82)
      {
        goto LABEL_153;
      }

      v84 = *(v82 + 32);
      v91 = *(v82 + 8);
      if (v84 >= v91 && (v84 > v91 || *(v82 + 40) >= *(v82 + 16)))
      {
        goto LABEL_153;
      }
    }

    else
    {
      v84 = *(v82 + 32);
    }

    v85 = *(v82 + 40);
    *v158 = *(v82 + 41);
    *&v158[3] = *(v82 + 44);
    *v81 = *v82;
    *(v81 + 16) = *(v82 + 16);
    v86 = j;
    if (v82 == j)
    {
      goto LABEL_152;
    }

    v87 = v80;
    while (2)
    {
      v88 = j + v87;
      v89 = *(j + v87 - 24);
      if (v83 < v89)
      {
        goto LABEL_143;
      }

      if (v83 > v89)
      {
        goto LABEL_150;
      }

      v90 = *(j + v87 - 16);
      if (v84 < v90)
      {
LABEL_143:
        v82 -= 24;
        *v88 = *(j + v87 - 24);
        *(v88 + 16) = *(j + v87 - 8);
        v87 -= 24;
        if (!v87)
        {
          v86 = j;
          goto LABEL_152;
        }

        continue;
      }

      break;
    }

    if (v84 <= v90)
    {
      if (v85 >= *(j + v87 - 8))
      {
LABEL_150:
        v86 = v82;
        goto LABEL_152;
      }

      goto LABEL_143;
    }

    v86 = j + v87;
LABEL_152:
    *v86 = v83;
    *(v86 + 8) = v84;
    *(v86 + 16) = v85;
    *(v86 + 17) = *v158;
    *(v86 + 20) = *&v158[3];
LABEL_153:
    v77 = v81 + 24;
    v80 += 24;
    if ((v81 + 24) != a2)
    {
      continue;
    }

    return result;
  }
}

@end