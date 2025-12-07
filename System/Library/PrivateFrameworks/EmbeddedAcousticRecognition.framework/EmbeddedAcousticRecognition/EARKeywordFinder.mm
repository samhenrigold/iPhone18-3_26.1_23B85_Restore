@interface EARKeywordFinder
+ (void)initialize;
- (EARKeywordFinder)initWithConfiguration:(id)configuration;
- (id)correctedResultWithKeyword:(id)keyword tokenizedKeyword:(id)tokenizedKeyword preItnSausage:(id)sausage preItnOneBest:(id)best preItnOneBestIndices:(id)indices nbestSize:(int64_t)size;
@end

@implementation EARKeywordFinder

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (EARKeywordFinder)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7.receiver = self;
  v7.super_class = EARKeywordFinder;
  if ([(EARKeywordFinder *)&v7 init])
  {
    [configurationCopy fileSystemRepresentation];
    std::make_unique[abi:ne200100]<quasar::KeywordFinder,char const*,0>();
  }

  v5 = 0;

  return v5;
}

- (id)correctedResultWithKeyword:(id)keyword tokenizedKeyword:(id)tokenizedKeyword preItnSausage:(id)sausage preItnOneBest:(id)best preItnOneBestIndices:(id)indices nbestSize:(int64_t)size
{
  v91 = *MEMORY[0x1E69E9840];
  keywordCopy = keyword;
  tokenizedKeywordCopy = tokenizedKeyword;
  sausageCopy = sausage;
  bestCopy = best;
  indicesCopy = indices;
  ptr = self->_kwf.__ptr_;
  v52 = keywordCopy;
  if (keywordCopy)
  {
    objc_msgSend_ear_toString(keywordCopy);
  }

  else
  {
    memset(&v67, 0, sizeof(v67));
  }

  v53 = ptr;
  sizeCopy = size;
  v17 = tokenizedKeywordCopy;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v76 objects:&v80 count:16];
  if (v18)
  {
    v19 = *v77;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v77 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v76 + 1) + 8 * i);
        v22 = v21;
        if (v21)
        {
          objc_msgSend__quasarProns(v21);
        }

        else
        {
          v75 = 0;
          v74 = 0u;
          *__p = 0u;
          memset(v73, 0, sizeof(v73));
        }

        v23 = v65;
        if (v65 >= v66)
        {
          v25 = std::vector<quasar::G2P::TokenProns>::__emplace_back_slow_path<quasar::G2P::TokenProns>(&v64, __p);
        }

        else
        {
          v24 = *__p;
          *(v65 + 16) = *&v73[0];
          *(v23 + 24) = 0;
          *v23 = v24;
          __p[1] = 0;
          *&v73[0] = 0;
          __p[0] = 0;
          *(v23 + 32) = 0;
          *(v23 + 40) = 0;
          *(v23 + 24) = *(v73 + 8);
          *(&v73[0] + 1) = 0;
          *&v73[1] = 0;
          *(v23 + 40) = *(&v73[1] + 1);
          *(v23 + 48) = 0;
          *(&v73[1] + 1) = 0;
          *(v23 + 56) = 0;
          *(v23 + 64) = 0;
          *(v23 + 48) = v74;
          *(v23 + 64) = v75;
          v74 = 0uLL;
          v75 = 0;
          v25 = v23 + 72;
        }

        v65 = v25;
        v63.__r_.__value_.__r.__words[0] = &v74;
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v63);
        v63.__r_.__value_.__r.__words[0] = v73 + 8;
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v63);
        if (SBYTE7(v73[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v76 objects:&v80 count:16];
    }

    while (v18);
  }

  EARHelpers::ArrayToVector2<std::vector<quasar::Token>,std::vector<quasar::Token> (*)(NSArray<_EARSpeechRecognitionToken *> *)>(sausageCopy, &v76, EARHelpers::QuasarResultFromEARSpeechRecognitionTokens);
  EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(bestCopy, &v63);
  v26 = indicesCopy;
  v61 = 0;
  v62 = 0;
  __src = 0;
  *__p = 0u;
  memset(v73, 0, sizeof(v73));
  v74 = 0u;
  v58 = v26;
  v27 = [v58 countByEnumeratingWithState:__p objects:&v80 count:16];
  if (v27)
  {
    v28 = **&v73[0];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (**&v73[0] != v28)
        {
          objc_enumerationMutation(v58);
        }

        v30 = *(__p[1] + j);
        intValue = [v30 intValue];
        v32 = v61;
        if (v61 >= v62)
        {
          v34 = __src;
          v35 = v61 - __src;
          v36 = (v61 - __src) >> 2;
          v37 = v36 + 1;
          if ((v36 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v38 = v62 - __src;
          if ((v62 - __src) >> 1 > v37)
          {
            v37 = v38 >> 1;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v39 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v39);
          }

          *(4 * v36) = intValue;
          v33 = 4 * v36 + 4;
          memcpy(0, v34, v35);
          v40 = __src;
          __src = 0;
          v61 = v33;
          v62 = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v61 = intValue;
          v33 = (v32 + 4);
        }

        v61 = v33;
      }

      v27 = [v58 countByEnumeratingWithState:__p objects:&v80 count:16];
    }

    while (v27);
  }

  quasar::KeywordFinder::correctResultWithKeyword(v53, &v67, &v64, &v76, &v63, sizeCopy, &v68);
  v80.__r_.__value_.__r.__words[0] = &v63;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v76;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v64;
  std::vector<quasar::G2P::TokenProns>::__destroy_vector::operator()[abi:ne200100](&v80);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  array = [MEMORY[0x1E695DF70] array];
  v42 = v68;
  if (v68 != *(&v68 + 1))
  {
    v43 = *(&v68 + 1);
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v73[0] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(__p, *v42, *(v42 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v42 + 8) - *v42) >> 5));
      array2 = [MEMORY[0x1E695DF70] array];
      v46 = __p[0];
      v45 = __p[1];
      while (v46 != v45)
      {
        quasar::Token::Token(&v80, v46);
        v47 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:&v80];
        [array2 addObject:v47];

        if (v90 < 0)
        {
          operator delete(v89);
        }

        if (v88 < 0)
        {
          operator delete(v87);
        }

        *&v76 = &v86;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v76);
        if (v85 < 0)
        {
          operator delete(v84);
        }

        *&v76 = &v83;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v76);
        if (v82 < 0)
        {
          operator delete(v81);
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        v46 = (v46 + 224);
      }

      v48 = [array2 copy];

      [array addObject:v48];
      v80.__r_.__value_.__r.__words[0] = __p;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v80);
      v42 += 24;
    }

    while (v42 != v43);
  }

  v49 = [array copy];

  v50 = [[EARKeywordFinderResult alloc] _initWithCorrectedUtterances:v49];
  v80.__r_.__value_.__r.__words[0] = &v71;
  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v70;
  std::vector<quasar::KeywordFinder::KeywordLoggingStats>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v69;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v68;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v80);

  return v50;
}

@end