@interface CMDPResult
+ (vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>,)CMDPTokenSausageFromAFSpeechPhraseArray:(id)array;
+ (vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>,)CMDPTokenSausageFromCFTokenSausage:(id)sausage;
- (CMDPResult)initWithAFSpeechPhraseArray:(id)array forLocaleIdentifier:(id)identifier;
- (CMDPResult)initWithTokenSausage:(__CFArray *)sausage forLocaleIdentifier:(id)identifier;
- (CMDPResult)initWithTokenSausageVec:(void *)vec forLocaleIdentifier:(id)identifier;
- (id).cxx_construct;
- (id)createArrayFromNBestResults:(const void *)results withGrammarData:(id)data;
- (id)initWithTokenSausageVec:forLocaleIdentifier:;
- (id)matchWithGrammars:(id)grammars winningIndex:(int *)index winningDistance:(float *)distance;
- (uint64_t)initWithTokenSausageVec:forLocaleIdentifier:;
- (void)initWithTokenSausageVec:forLocaleIdentifier:;
@end

@implementation CMDPResult

- (CMDPResult)initWithTokenSausage:(__CFArray *)sausage forLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = CMDPResult;
  v6 = [(CMDPResult *)&v10 init];
  if (v6)
  {
    objc_msgSend_CMDPTokenSausageFromCFTokenSausage_(CMDPResult);
    v7 = [(CMDPResult *)v6 initWithTokenSausageVec:v9 forLocaleIdentifier:identifierCopy];
    v11 = v9;
    std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CMDPResult)initWithAFSpeechPhraseArray:(id)array forLocaleIdentifier:(id)identifier
{
  arrayCopy = array;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CMDPResult;
  v8 = [(CMDPResult *)&v11 init];
  if (v8)
  {
    objc_msgSend_CMDPTokenSausageFromAFSpeechPhraseArray_(CMDPResult);
    v8 = [(CMDPResult *)v8 initWithTokenSausageVec:v10 forLocaleIdentifier:identifierCopy];
    v12 = v10;
    std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  return v8;
}

- (CMDPResult)initWithTokenSausageVec:(void *)vec forLocaleIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = CMDPResult;
  if ([(CMDPResult *)&v8 init])
  {
    v6 = *MEMORY[0x277CBECE8];
    if (identifierCopy)
    {
      CFLocaleCreate(v6, identifierCopy);
      operator new();
    }

    CFLocaleCreate(v6, @"en_US");
    operator new();
  }

  return 0;
}

- (id)matchWithGrammars:(id)grammars winningIndex:(int *)index winningDistance:(float *)distance
{
  v23 = *MEMORY[0x277D85DE8];
  grammarsCopy = grammars;
  *index = -1;
  *distance = 3.4028e38;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = grammarsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        cmdp_fst_util::compose(self->_resultFst.__ptr_, [*(*(&v18 + 1) + 8 * i) grammarFst], v17);
        isEmpty = cmdp_fst_util::isEmpty(v17[0]);
        v15 = v17[0];
        if (!isEmpty)
        {
          cmdp_fst_util::shortestDistance(v17[0]);
        }

        v17[0] = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        ++v11;
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  else
  {
  }

  return 0;
}

- (id)createArrayFromNBestResults:(const void *)results withGrammarData:(id)data
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v46 = objc_opt_new();
  v48 = objc_opt_new();
  v5 = *results;
  if (*(results + 1) == *results)
  {
    std::vector<std::vector<std::pair<std::string,std::string>>>::__throw_out_of_range[abi:ne200100]();
  }

  v47 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = *v5;
  if (v5[1] == *v5)
  {
    goto LABEL_75;
  }

  v7 = 0;
  v8 = 0;
  v44 = 0;
  v9 = MEMORY[0x277D86220];
  while (2)
  {
    v10 = 48 * v7 + 95;
    while (1)
    {
      v11 = v6 + v10;
      v12 = strlen("<eps>");
      v13 = *(v6 + v10 - 48);
      if (v13 < 0)
      {
        break;
      }

      if (v12 != v13)
      {
        v15 = (v6 + v10 - 71);
        goto LABEL_19;
      }

      if (memcmp((v6 + v10 - 71), "<eps>", v12))
      {
        v15 = (v6 + 48 * v7 + 24);
LABEL_19:
        v16 = (v6 + v10 - 48);
        goto LABEL_20;
      }

LABEL_12:
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (v11 - 95);
        if (*(v6 + v10 - 72) < 0)
        {
          v14 = *v14;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v14;
        _os_log_impl(&dword_26B44D000, v9, OS_LOG_TYPE_DEFAULT, "Deleting Added Word %s", &buf, 0xCu);
      }

      ++v7;
      v6 = *v5;
      v10 += 48;
      v8 = 1;
      if (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4) <= v7)
      {
        goto LABEL_74;
      }
    }

    if (v12 == *(v11 - 63))
    {
      if (v12 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v15 = *(v6 + v10 - 71);
      if (memcmp(v15, "<eps>", v12))
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    v16 = (v6 + v10 - 48);
    v15 = *(v6 + v10 - 71);
LABEL_20:
    v50 = [dataCopy objectAtIndex:atoi(v15)];
    if (v44)
    {
LABEL_23:
      v44 = 1;
    }

    else
    {
      commandIdentifier = [v50 commandIdentifier];
      v18 = commandIdentifier == 0;

      if (!v18)
      {
        commandIdentifier2 = [v50 commandIdentifier];
        [v46 setObject:commandIdentifier2 forKey:kCMDPMatchedCommandIdentifier[0]];

        goto LABEL_23;
      }

      v44 = 0;
    }

    v20 = (v6 + v10 - 95);
    v21 = strlen("<eps>");
    v22 = *(v6 + v10 - 72);
    if (v22 < 0)
    {
      if (v21 != *(v6 + v10 - 87))
      {
        v20 = *v20;
        goto LABEL_37;
      }

      if (v21 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v20 = *v20;
    }

    else if (v21 != v22)
    {
LABEL_37:
      v24 = *(self->_resultNodes.__begin_ + atoi(v20));
      goto LABEL_38;
    }

    if (memcmp(v20, "<eps>", v21))
    {
      goto LABEL_37;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (v6 + v10 - 71);
      if (*v16 < 0)
      {
        v23 = *v23;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v23;
      _os_log_impl(&dword_26B44D000, v9, OS_LOG_TYPE_DEFAULT, "Adding Deleted Word %s", &buf, 0xCu);
      v24 = 0;
      v8 = 1;
    }

    else
    {
      v24 = 0;
      v8 = 1;
    }

LABEL_38:
    builtInLMIdentifier = [v50 builtInLMIdentifier];
    if (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4) <= ++v7)
    {
LABEL_47:
      builtInLMIdentifier2 = 0;
      goto LABEL_51;
    }

    v26 = (*v5 + v10);
    v27 = strlen("<eps>");
    v29 = v26 - 23;
    v28 = *v26;
    if (v28 < 0)
    {
      if (v27 != *(v26 - 15))
      {
        v29 = *v29;
        goto LABEL_50;
      }

      if (v27 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v29 = *v29;
      goto LABEL_46;
    }

    if (v27 == v28)
    {
LABEL_46:
      if (memcmp(v29, "<eps>", v27))
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

LABEL_50:
    v30 = [dataCopy objectAtIndex:atoi(v29)];
    builtInLMIdentifier2 = [v30 builtInLMIdentifier];

LABEL_51:
    word = [v50 word];
    v32 = word == 0;

    if (!v32)
    {
      word2 = [v50 word];
      goto LABEL_53;
    }

    if (v24)
    {
      v34 = MEMORY[0x277CCACA8];
      if (*(v24 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, *v24, *(v24 + 1));
      }

      else
      {
        v35 = *v24;
        buf.__r_.__value_.__r.__words[2] = *(v24 + 2);
        *&buf.__r_.__value_.__l.__data_ = v35;
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      word2 = [v34 stringWithUTF8String:p_buf];
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

LABEL_53:
      if (builtInLMIdentifier)
      {
        [v47 appendString:word2];
        if (builtInLMIdentifier2 && builtInLMIdentifier == builtInLMIdentifier2)
        {
          [v47 appendString:@" "];
        }

        else
        {
          v37 = MEMORY[0x277CBEAC0];
          v38 = [MEMORY[0x277CCACA8] stringWithString:v47];
          v39 = [v37 dictionaryWithObjectsAndKeys:{v38, kCMDPMatchedElementText[0], builtInLMIdentifier, kCMDPMatchedElementCategoryIdentifier, 0}];

          [v48 addObject:v39];
          [v47 setString:&stru_287C0A5E8];
        }
      }

      else
      {
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{word2, kCMDPMatchedElementText[0], 0}];
        [v48 addObject:v36];
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CMDPResult createArrayFromNBestResults:v52 withGrammarData:?];
      }

      word2 = 0;
    }

    v6 = *v5;
    if (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4) > v7)
    {
      continue;
    }

    break;
  }

  if (v8)
  {
LABEL_74:
    v41 = kCMDPClosestMatchedElements;
    goto LABEL_76;
  }

LABEL_75:
  v41 = kCMDPMatchedElements;
LABEL_76:
  [v46 setObject:v48 forKey:*v41];

  return v46;
}

+ (vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>,)CMDPTokenSausageFromCFTokenSausage:(id)sausage
{
  v4 = a4;
  v5 = 0;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  while (1)
  {
    result = CFArrayGetCount(v4);
    if (result <= v5)
    {
      break;
    }

    memset(v17, 0, sizeof(v17));
    v7 = v5;
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
    for (i = 0; i < CFArrayGetCount(ValueAtIndex); ++i)
    {
      v10 = CFArrayGetValueAtIndex(ValueAtIndex, i);
      memset(v16, 0, sizeof(v16));
      if (CFArrayGetCount(v10) > 0)
      {
        v11 = CFArrayGetValueAtIndex(v10, 0);
        v12 = MEMORY[0x26D678450]();
        cmdp_string::CreateCppStringFromCFString(__p, v12, 0);
        MEMORY[0x26D678440](v11);
        MEMORY[0x26D678420](v11);
        MEMORY[0x26D678430](v11);
        MEMORY[0x26D678410](v11);
        EARCSpeechRecognitionTokenHasSpaceAfter();
        operator new();
      }

      std::vector<std::vector<std::unique_ptr<CMDPToken>>>::push_back[abi:ne200100](v17, v16);
      v18.__r_.__value_.__r.__words[0] = v16;
      std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v18);
    }

    std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::push_back[abi:ne200100](&retstr->var0, v17);
    v18.__r_.__value_.__r.__words[0] = v17;
    std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v5 = v7 + 1;
    v4 = a4;
  }

  return result;
}

+ (vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>,)CMDPTokenSausageFromAFSpeechPhraseArray:(id)array
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v19 = retstr;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v6)
  {
    v20 = *v34;
    do
    {
      v22 = 0;
      v18 = v6;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * v22);
        memset(v32, 0, sizeof(v32));
        interpretations = [v7 interpretations];
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v23 = interpretations;
        v9 = [v23 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (v9)
        {
          v24 = *v29;
          do
          {
            v25 = v9;
            for (i = 0; i != v25; ++i)
            {
              if (*v29 != v24)
              {
                objc_enumerationMutation(v23);
              }

              v11 = *(*(&v28 + 1) + 8 * i);
              memset(v27, 0, sizeof(v27));
              tokens = [v11 tokens];
              memset(v26, 0, sizeof(v26));
              v13 = tokens;
              if ([v13 countByEnumeratingWithState:v26 objects:v38 count:16])
              {
                v14 = **(&v26[0] + 1);
                text = [v14 text];
                v16 = text;
                [text UTF8String];
                [v14 startTime];
                [v14 endTime];
                [v14 silenceStartTime];
                [v14 confidenceScore];
                [v14 removeSpaceAfter];
                [v14 removeSpaceBefore];
                std::make_unique[abi:ne200100]<CMDPToken,char const*,double,double,double,long,BOOL,BOOL,0>();
              }

              std::vector<std::vector<std::unique_ptr<CMDPToken>>>::push_back[abi:ne200100](v32, v27);
              v37 = v27;
              std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v37);
            }

            v9 = [v23 countByEnumeratingWithState:&v28 objects:v39 count:16];
          }

          while (v9);
        }

        std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::push_back[abi:ne200100](&v19->var0, v32);
        v27[0] = v32;
        std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](v27);
        ++v22;
      }

      while (v22 != v18);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v6);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 5) = 0;
  *(self + 6) = self + 56;
  return self;
}

- (void)initWithTokenSausageVec:forLocaleIdentifier:
{

  operator delete(self);
}

- (id)initWithTokenSausageVec:forLocaleIdentifier:
{
  *a2 = &unk_287BF10F8;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (uint64_t)initWithTokenSausageVec:forLocaleIdentifier:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end