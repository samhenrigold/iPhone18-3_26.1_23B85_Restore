uint64_t _GLOBAL__sub_I_OrdinalFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [10],void>(&marrs::mrr::mr::assetSubDirectoryPath, "ruleBased");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::assetSubDirectoryPath, &dword_2227A9000);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AA9A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v8 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    memmove(v13 + size, __src, v6);
    v14[v6] = 0;
    v15 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v6);
    if ((v18 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(this, v11, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_2227AAB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [10],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AAB6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_CbRPredictorPlugin_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(LOGISTIC_PARAMS, "sys_comb_logistic_regression_params");
  v0 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], LOGISTIC_PARAMS, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(SYS_COMB_WEIGHT_1, "sys_comb_weight_1");
  __cxa_atexit(v0, SYS_COMB_WEIGHT_1, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(&SYS_COMB_WEIGHT_2, "sys_comb_weight_2");

  return __cxa_atexit(v0, &SYS_COMB_WEIGHT_2, &dword_2227A9000);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t _GLOBAL__sub_I_ModelBasedMR_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::configFileName, &dword_2227A9000);
  qword_280AC2B80 = 0;
  unk_280AC2B88 = 0;
  marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath, "modelBased", "");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath, &dword_2227A9000);
  qword_280AC2B98 = 0;
  unk_280AC2BA0 = 0;
  marrs::mrr::mr::ModelBasedMR::modelFolderName = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::mr::ModelBasedMR::modelFolderName, "converted_model.mlmodelc", "");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::ModelBasedMR::modelFolderName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&marrs::mrr::mr::ModelBasedMR::modelName, "model.espresso.net");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::ModelBasedMR::modelName, &dword_2227A9000);
}

void sub_2227AAE28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AAE88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_MentionKeywordFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
}

uint64_t _GLOBAL__sub_I_ProtocolFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
}

uint64_t _GLOBAL__sub_I_MRMatchingResult_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(marrs::mrr::mr::MRMatchingResult::entityDataSourceKey, "dataSource");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, marrs::mrr::mr::MRMatchingResult::entityDataSourceKey, &dword_2227A9000);
}

uint64_t _GLOBAL__sub_I_GazeBasedFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
}

void _GLOBAL__sub_I_MultimodalReferenceResolution_mm()
{
  v0 = objc_autoreleasePoolPush();
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::md::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::configFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::configFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);

  objc_autoreleasePoolPop(v0);
}

uint64_t _GLOBAL__sub_I_UtteranceKeywordFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
  qword_280AC2AA8 = 0;
  unk_280AC2AB0 = 0;
  marrs::mrr::mr::keywordFilename = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::mr::keywordFilename, "keywords.json", "");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::keywordFilename, &dword_2227A9000);
}

void sub_2227AB19C(_Unwind_Exception *exception_object)
{
  if (byte_280AC2AB7 < 0)
  {
    operator delete(marrs::mrr::mr::keywordFilename);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_RuleBasedMR_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::configFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [7],void>(&marrs::mrr::mr::RuleBasedMR::ordinalFilterAssetPath, "verbal");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::RuleBasedMR::ordinalFilterAssetPath, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(&marrs::mrr::mr::RuleBasedMR::verbKeywordsAssetPath, "verbKeywords");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::RuleBasedMR::verbKeywordsAssetPath, &dword_2227A9000);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [7],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AB2E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AB344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_MentionDetectorOverrides_cpp()
{
  marrs::mrr::md::MentionDetectorOverrides::OVERRIDES_FILE_NAME = 0;
  *algn_280AC2C28 = 0;
  qword_280AC2C30 = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::md::MentionDetectorOverrides::OVERRIDES_FILE_NAME, "overrides.json", "");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::MentionDetectorOverrides::OVERRIDES_FILE_NAME, &dword_2227A9000);
}

void sub_2227AB3CC(_Unwind_Exception *exception_object)
{
  if (SHIBYTE(qword_280AC2C30) < 0)
  {
    operator delete(marrs::mrr::md::MentionDetectorOverrides::OVERRIDES_FILE_NAME);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_QueryRewrite_mm()
{
  v0 = objc_autoreleasePoolPush();
  std::string::basic_string[abi:ne200100]<0>(LOGISTIC_PARAMS, "sys_comb_logistic_regression_params");
  v1 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], LOGISTIC_PARAMS, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(SYS_COMB_WEIGHT_1, "sys_comb_weight_1");
  __cxa_atexit(v1, SYS_COMB_WEIGHT_1, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(SYS_COMB_WEIGHT_2, "sys_comb_weight_2");
  __cxa_atexit(v1, SYS_COMB_WEIGHT_2, &dword_2227A9000);

  objc_autoreleasePoolPop(v0);
}

uint64_t _GLOBAL__sub_I_SpanTypeFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
}

uint64_t _GLOBAL__sub_I_MRRVisualAndScreenMentionDetector_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::md::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::configFileName, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(&marrs::mrr::md::MRRVisualAndScreenMentionDetector::WORD_PIECE_SUFFIX_SYMBOL, "##");
  __cxa_atexit(MEMORY[0x277D82640], &marrs::mrr::md::MRRVisualAndScreenMentionDetector::WORD_PIECE_SUFFIX_SYMBOL, &dword_2227A9000);
  qword_280AC2BF8 = 0;
  unk_280AC2C00 = 0;
  marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FOLDER_NAME = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FOLDER_NAME, "classifier_model.mlmodelc", "");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FOLDER_NAME, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FILE_NAME, "model.espresso.net");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FILE_NAME, &dword_2227A9000);
}

void sub_2227AB634(_Unwind_Exception *exception_object)
{
  if (byte_280AC2C07 < 0)
  {
    operator delete(marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FOLDER_NAME);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_MROrchestrator_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::configFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [7],void>(&marrs::mrr::mr::MROrchestrator::modelMRAssetPath, "visual");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::MROrchestrator::modelMRAssetPath, &dword_2227A9000);
}

void _GLOBAL__sub_I_MRREntity_cpp()
{
  v11[62] = *MEMORY[0x277D85DE8];
  memcpy(v11, &unk_2784B52F8, 0x1E0uLL);
  std::map<marrs::mrr::mr::EntityType,char const*>::map[abi:ne200100](&marrs::mrr::mr::MRREntity::EntityTypeStr, v11, 30);
  __cxa_atexit(std::map<marrs::mrr::mr::EntityType,char const*>::~map[abi:ne200100], &marrs::mrr::mr::MRREntity::EntityTypeStr, &dword_2227A9000);
  memcpy(v11, &unk_2784B54D8, 0x1F0uLL);
  std::map<marrs::mrr::mr::EntityType,char const*>::map[abi:ne200100](&marrs::mrr::mr::MRREntity::MatchingSpanLabelStr, v11, 31);
  __cxa_atexit(std::map<marrs::mrr::mr::EntityType,char const*>::~map[abi:ne200100], &marrs::mrr::mr::MRREntity::MatchingSpanLabelStr, &dword_2227A9000);
  v0 = 0;
  v1 = 0;
  qword_280AC2B10 = 0;
  qword_280AC2B08 = 0;
  v2 = &qword_280AC2B08;
  marrs::mrr::mr::MRREntity::EntitySourceToStrMap = &qword_280AC2B08;
  while (1)
  {
    if (v2 == &qword_280AC2B08)
    {
      v4 = &qword_280AC2B08;
    }

    else
    {
      v3 = v0;
      if (v0)
      {
        do
        {
          v4 = v3;
          v3 = v3[1];
        }

        while (v3);
      }

      else
      {
        v5 = &qword_280AC2B08;
        do
        {
          v4 = v5[2];
          v6 = *v4 == v5;
          v5 = v4;
        }

        while (v6);
      }

      v7 = xmmword_2784B56C8[v1];
      if (*(v4 + 8) >= v7)
      {
        if (v0)
        {
          v8 = &qword_280AC2B08;
          while (1)
          {
            while (1)
            {
              v9 = v0;
              v10 = *(v0 + 32);
              if (v7 >= v10)
              {
                break;
              }

              v0 = *v9;
              v8 = v9;
              if (!*v9)
              {
                goto LABEL_14;
              }
            }

            if (v10 >= v7)
            {
              break;
            }

            v8 = v9 + 1;
            v0 = v9[1];
            if (!v0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          v8 = &qword_280AC2B08;
        }

        goto LABEL_13;
      }
    }

    if (v0)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = &qword_280AC2B08;
    }

LABEL_13:
    if (!*v8)
    {
LABEL_14:
      operator new();
    }

    if (++v1 == 6)
    {
      __cxa_atexit(std::map<marrs::mrr::mr::EntitySource,char const*>::~map[abi:ne200100], &marrs::mrr::mr::MRREntity::EntitySourceToStrMap, &dword_2227A9000);
      std::string::basic_string[abi:ne200100]<0>(v11, "book");
      LODWORD(v11[3]) = 26;
      std::string::basic_string[abi:ne200100]<0>(&v11[4], "album");
      LODWORD(v11[7]) = 9;
      std::string::basic_string[abi:ne200100]<0>(&v11[8], "landmark");
      LODWORD(v11[11]) = 2;
      std::string::basic_string[abi:ne200100]<0>(&v11[12], "dogs");
      LODWORD(v11[15]) = 27;
      std::string::basic_string[abi:ne200100]<0>(&v11[16], "cats");
      LODWORD(v11[19]) = 27;
      std::string::basic_string[abi:ne200100]<0>(&v11[20], "nature");
      LODWORD(v11[23]) = 27;
      std::string::basic_string[abi:ne200100]<0>(&v11[24], "packagedProducts");
      LODWORD(v11[27]) = 28;
      std::string::basic_string[abi:ne200100]<0>(&v11[28], "art");
      LODWORD(v11[31]) = 29;
      qword_280AC2AE0 = 0;
      qword_280AC2AD8 = 0;
      marrs::mrr::mr::MRREntity::SearchObjectTypeToEntityTypeMap = &qword_280AC2AD8;
      operator new();
    }

    v2 = marrs::mrr::mr::MRREntity::EntitySourceToStrMap;
    v0 = qword_280AC2B08;
  }
}

void sub_2227ABCA8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *(v9 - 9);
    v9 -= 4;
    if (v11 < 0)
    {
      operator delete(*v9);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t **std::map<marrs::mrr::mr::EntityType,char const*>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = a1 + 1;
    while (1)
    {
      v6 = a1 + 1;
      if (v5 == a1 + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = a1 + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 8) < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : a1 + 1;
      }

      else
      {
        v11 = a1 + 1;
        if (v4)
        {
          v11 = a1 + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 8);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 4;
      if (v3 == &a2[4 * a3])
      {
        break;
      }

      v5 = *a1;
      v4 = a1[1];
    }
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

BOOL std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void _GLOBAL__sub_I_MRREntityNLUGraphParsingUtil_mm()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = siri::ontology::oname::graph::ontology_init::common_EmailAddress(v0);
  v25[0] = *(v1 + 9);
  v2 = siri::ontology::oname::graph::ontology_init::common_PhoneNumber(v1);
  v25[1] = *(v2 + 9);
  v3 = siri::ontology::oname::graph::ontology_init::common_Uri(v2);
  v25[2] = *(v3 + 9);
  v4 = siri::ontology::oname::graph::ontology_init::common_LocalisedString(v3);
  v25[3] = *(v4 + 9);
  v5 = siri::ontology::oname::graph::ontology_init::common_Group(v4);
  v25[4] = *(v5 + 9);
  v6 = siri::ontology::oname::graph::ontology_init::common_Person(v5);
  v25[5] = *(v6 + 9);
  v7 = siri::ontology::oname::graph::ontology_init::common_MediaItem(v6);
  v25[6] = *(v7 + 9);
  v8 = siri::ontology::oname::graph::ontology_init::common_SearchObject(v7);
  v25[7] = *(v8 + 9);
  v9 = siri::ontology::oname::graph::ontology_init::common_UserEntity(v8);
  v25[8] = *(v9 + 9);
  v10 = siri::ontology::oname::graph::ontology_init::common_App(v9);
  v25[9] = *(v10 + 9);
  v11 = siri::ontology::oname::graph::ontology_init::common_Window(v10);
  v25[10] = *(v11 + 9);
  v12 = siri::ontology::oname::graph::ontology_init::common_Setting(v11);
  v13 = 0;
  v14 = 0;
  v25[11] = *(v12 + 36);
  qword_280AC2CC0 = 0;
  qword_280AC2CB8 = 0;
  v15 = &qword_280AC2CB8;
  marrs::mrr::mr::directValueEntityTypes = &qword_280AC2CB8;
  while (1)
  {
    if (v15 == &qword_280AC2CB8)
    {
      v17 = &qword_280AC2CB8;
    }

    else
    {
      v16 = v13;
      if (v13)
      {
        do
        {
          v17 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        v18 = &qword_280AC2CB8;
        do
        {
          v17 = v18[2];
          v19 = *v17 == v18;
          v18 = v17;
        }

        while (v19);
      }

      v20 = v25[v14];
      if (*(v17 + 7) >= v20)
      {
        if (v13)
        {
          v21 = &qword_280AC2CB8;
          while (1)
          {
            while (1)
            {
              v22 = v13;
              v23 = *(v13 + 28);
              if (v20 >= v23)
              {
                break;
              }

              v13 = *v22;
              v21 = v22;
              if (!*v22)
              {
                goto LABEL_14;
              }
            }

            if (v23 >= v20)
            {
              break;
            }

            v21 = v22 + 1;
            v13 = v22[1];
            if (!v13)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          v21 = &qword_280AC2CB8;
        }

        goto LABEL_13;
      }
    }

    v21 = v13 ? v17 + 1 : &qword_280AC2CB8;
LABEL_13:
    if (!*v21)
    {
LABEL_14:
      operator new();
    }

    if (++v14 == 12)
    {
      break;
    }

    v15 = marrs::mrr::mr::directValueEntityTypes;
    v13 = qword_280AC2CB8;
  }

  __cxa_atexit(std::set<int>::~set[abi:ne200100], &marrs::mrr::mr::directValueEntityTypes, &dword_2227A9000);
  std::string::basic_string[abi:ne200100](&marrs::mrr::mr::homeKitEntityTypeString, [*MEMORY[0x277D5F528] UTF8String], objc_msgSend(*MEMORY[0x277D5F528], "lengthOfBytesUsingEncoding:", 4));
  v24 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], &marrs::mrr::mr::homeKitEntityTypeString, &dword_2227A9000);
  std::string::basic_string[abi:ne200100](&marrs::mrr::mr::homeAutomationRoomString, [*MEMORY[0x277D5F578] UTF8String], objc_msgSend(*MEMORY[0x277D5F578], "lengthOfBytesUsingEncoding:", 4));
  __cxa_atexit(v24, &marrs::mrr::mr::homeAutomationRoomString, &dword_2227A9000);
  std::string::basic_string[abi:ne200100](&marrs::mrr::mr::homeAutomationAccessoryNameString, [*MEMORY[0x277D5F570] UTF8String], objc_msgSend(*MEMORY[0x277D5F570], "lengthOfBytesUsingEncoding:", 4));
  __cxa_atexit(v24, &marrs::mrr::mr::homeAutomationAccessoryNameString, &dword_2227A9000);
  std::string::basic_string[abi:ne200100](&marrs::mrr::mr::homeAutomationServiceNameString, [*MEMORY[0x277D5F580] UTF8String], objc_msgSend(*MEMORY[0x277D5F580], "lengthOfBytesUsingEncoding:", 4));
  __cxa_atexit(v24, &marrs::mrr::mr::homeAutomationServiceNameString, &dword_2227A9000);

  objc_autoreleasePoolPop(v0);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(*a1);
    std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__fs::filesystem::path::~path[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id QRLoggerForCategory(int a1)
{
  if (QRLoggerForCategory::onceToken != -1)
  {
    dispatch_once(&QRLoggerForCategory::onceToken, &__block_literal_global_480);
  }

  v2 = QRLoggerForCategory::logObjects[a1];

  return v2;
}

id MRRLoggerForCategory(int a1)
{
  if (MRRLoggerForCategory::onceToken != -1)
  {
    dispatch_once(&MRRLoggerForCategory::onceToken, &__block_literal_global_1347);
  }

  v2 = MRRLoggerForCategory::logObjects[a1];

  return v2;
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x223DC2090](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_2227ACB10(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2227ACAD0);
  }

  __cxa_rethrow();
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2)
{
  a1[21] = 0;
  v4 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v5 = *(MEMORY[0x277D82820] + 16);
  v6 = *(MEMORY[0x277D82820] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82898] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[15] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, 8);
  return a1;
}

void sub_2227ACCF0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x223DC2270](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x223DC2220](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2227ACDC4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t RepetitionPredictorBase::readConfig(uint64_t a1, const void **a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v55.__loc_ = 0;
  v55.__vftable = &unk_2835DF150;
  v54.__sb_.__extbufnext_ = 0;
  std::ios_base::init(&v55, v54.__sb_.__extbuf_min_);
  v57 = -1;
  v56 = 0;
  MEMORY[0x223DC2070](v54.__sb_.__extbuf_min_);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  std::string::basic_string[abi:ne200100](&v34, v3 + 1);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v34;
  }

  else
  {
    v4 = v34.__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    memmove(v4, v5, v3);
  }

  *(&v4->__r_.__value_.__l.__data_ + v3) = 47;
  v6 = std::string::append(&v34, "uic.config");
  v8 = *&v6->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v8;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::fstream::open(&v54, &__s, v7);
  if (!*(&v54.__sb_.__st_._mbstateL + 9))
  {
    std::fstream::close(&v54);
    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "#Model failed to load config");
    std::string::basic_string[abi:ne200100]<0>(&buf, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, &v34, &buf, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/Common/Predictor/src/RepetitionPredictorBase.cpp", 20);
  }

  memset(&v42, 0, sizeof(v42));
  v9 = (&buf_4 + 4);
  v10 = &v47;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  memset(&__str, 0, sizeof(__str));
  v11 = &v34.__r_.__value_.__s.__data_[16];
  v33 = *MEMORY[0x277D82820];
  v32 = *(MEMORY[0x277D82820] + 24);
  while (1)
  {
    std::ios_base::getloc((&v54 + *(v54.__sb_.__extbuf_ - 3)));
    v12 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
    v13 = (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v34);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v54, &v42, v13);
    if ((v54.__sb_.__extbuf_min_[*(v54.__sb_.__extbuf_ - 3) + 8] & 5) != 0)
    {
      break;
    }

    MEMORY[0x223DC2220](&v38);
    v44 = 0x4000;
    std::locale::locale(&v45, &v38);
    buf = v44;
    std::locale::locale(v9, &v45);
    boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(&v42, &buf);
    std::locale::~locale(v9);
    LODWORD(v46) = v44;
    std::locale::locale(v10, &v45);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v42;
    }

    else
    {
      v14 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v42.__r_.__value_.__l.__size_;
    }

    LODWORD(v34.__r_.__value_.__l.__data_) = v46;
    std::locale::locale(&v34.__r_.__value_.__r.__words[1], v10);
    if (size)
    {
      v16 = v10;
      v17 = v9;
      v18 = v11;
      v19 = (v14 + size);
      v20 = v14;
      while (1)
      {
        v21 = v20->__r_.__value_.__s.__data_[0];
        v22 = std::locale::use_facet(&v34.__r_.__value_.__r.__words[1], MEMORY[0x277D82680]);
        if ((v21 & 0x80) != 0 || (*(&v22[1].~facet + v21) & v34.__r_.__value_.__l.__data_) == 0)
        {
          break;
        }

        v20 = (v20 + 1);
        if (!--size)
        {
          v20 = v19;
          break;
        }
      }

      v11 = v18;
      v9 = v17;
      v10 = v16;
    }

    else
    {
      v20 = v14;
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v42;
    }

    else
    {
      v23 = v42.__r_.__value_.__r.__words[0];
    }

    std::string::erase(&v42, v14 - v23, v20 - v14);
    std::locale::~locale(&v34.__r_.__value_.__r.__words[1]);
    std::locale::~locale(v10);
    std::locale::~locale(&v45);
    std::locale::~locale(&v38);
    v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v42.__r_.__value_.__l.__size_;
    }

    if (v24)
    {
      std::istringstream::basic_istringstream[abi:ne200100](&v34, &v42);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, v40);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, &__str);
      if ((*(&v35[1].__locale_ + *(v34.__r_.__value_.__r.__words[0] - 24)) & 5) == 0)
      {
        v25 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1 + 160, &v46, v40);
        if (!v25)
        {
          operator new();
        }

        std::string::operator=((v25 + 56), &__str);
        v26 = QRLoggerForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = v40;
          if (v41 < 0)
          {
            v27 = v40[0];
          }

          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          buf = 136315650;
          buf_4 = "readConfig";
          v50 = 2080;
          v51 = v27;
          v52 = 2080;
          v53 = p_str;
          _os_log_impl(&dword_2227A9000, v26, OS_LOG_TYPE_INFO, "%s #Model config: %s : %s", &buf, 0x20u);
        }
      }

      v34.__r_.__value_.__r.__words[0] = v33;
      *(v34.__r_.__value_.__r.__words + *(v33 - 24)) = v32;
      v34.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
      if (v36 < 0)
      {
        operator delete(v35[7].__locale_);
      }

      v34.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v35);
      std::istream::~istream();
      MEMORY[0x223DC2270](&v37);
    }
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((&v54 + *(v54.__sb_.__extbuf_ - 3)), *&v54.__sb_.__extbuf_min_[*(v54.__sb_.__extbuf_ - 3) + 8] | 4);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  MEMORY[0x223DC2080](v54.__sb_.__extbuf_min_);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC2270](&v55);
}

void sub_2227AD618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::locale a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    if ((v67 & 1) == 0)
    {
LABEL_8:
      if (a66 < 0)
      {
        operator delete(a65);
      }

      std::fstream::~fstream(&STACK[0x220]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v67)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v66);
  goto LABEL_8;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void std::fstream::open(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  v4 = std::filebuf::open();
  v5 = (this + *(this->__sb_.__extbuf_ - 3));
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5->__rdstate_ | 4;
  }

  std::ios_base::clear(v5, v6);
}

void boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(std::string *a1, const std::locale *a2)
{
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = (v4 + size);
  locale = a2->__locale_;
  std::locale::locale(&v15, a2 + 1);
  v16 = locale;
  std::locale::locale(&v17, &v15);
  v7 = MEMORY[0x277D82680];
  while (size)
  {
    v8 = size;
    v9 = v4->__r_.__value_.__s.__data_[size - 1];
    v10 = std::locale::use_facet(&v17, v7);
    if ((v9 & 0x80) != 0)
    {
      v4 = v6;
      break;
    }

    v6 = (v6 - 1);
    v11 = *(&v10[1].~facet + v9);
    size = v8 - 1;
    if ((v11 & v16) == 0)
    {
      v4 = (v4 + v8);
      break;
    }
  }

  std::locale::~locale(&v17);
  v12 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v12 & 0x80u) == 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = a1->__r_.__value_.__l.__size_;
  }

  std::string::erase(a1, v4 - v13, v13 + v12 - v4);
  std::locale::~locale(&v15);
}

std::string *std::__fs::filesystem::operator/[abi:ne200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {
    return std::string::operator=(this, &a3->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(this, v7, size);
}

void sub_2227ADA74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_2227ADAD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x223DC2090](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_2227ADD34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2227ADCF4);
  }

  __cxa_rethrow();
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t std::map<std::string,std::string>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v16.__end_cap_.__value_ = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v5);
  }

  begin = (24 * v2);
  v16.__first_ = 0;
  v16.__begin_ = (24 * v2);
  value = 0;
  v16.__end_ = (24 * v2);
  v16.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v16.__begin_;
    end = v16.__end_;
    value = v16.__end_cap_.__value_;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v8;
    end = (24 * v2);
  }

  v10 = end + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = begin - v11;
  memcpy(begin - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = value;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<std::string>::~__split_buffer(&v16);
  return v10;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

void *std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void SymbolMapper::set(int8x8_t *a1, void *a2, int a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = a1[5];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*&a1[4] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }
}

void RepetitionPredictorBase::loadCostMatrix(uint64_t a1, const void **a2)
{
  v146 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "cost_matrix_file");
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 160, &__p);
  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  if (a1 + 168 == v4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "#Model No cost matrix file specified");
    std::string::basic_string[abi:ne200100]<0>(v123, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, &__p, v123, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/Common/Predictor/src/RepetitionPredictorBase.cpp", 62);
  }

  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  std::string::basic_string[abi:ne200100](&__p, v5 + 1);
  if (SHIBYTE(__p.__sb_.__extbufend_) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__sb_.__extbuf_;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(p_p, v7, v5);
  }

  *&p_p[v5] = 47;
  std::string::basic_string[abi:ne200100]<0>(v123, "cost_matrix_file");
  v8 = std::map<std::string,std::string>::at(a1 + 160, &v123[0].__locale_);
  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  if (v9 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  v12 = std::string::append(&__p, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v124) < 0)
  {
    operator delete(v123[0].__locale_);
  }

  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  *v139 = 0u;
  *v140 = 0u;
  v141 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&v137, "");
  v143.__loc_ = 0;
  __p.__sb_.__extbuf_ = &unk_2835DF128;
  v143.__vftable = &unk_2835DF150;
  __p.__sb_.__extbufnext_ = 0;
  std::ios_base::init(&v143, __p.__sb_.__extbuf_min_);
  v145 = -1;
  v144 = 0;
  MEMORY[0x223DC2070](__p.__sb_.__extbuf_min_);
  if (*(a1 + 32))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__deallocate_node(*(a1 + 24));
    *(a1 + 24) = 0;
    v15 = *(a1 + 16);
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        *(*(a1 + 8) + 8 * i) = 0;
      }
    }

    *(a1 + 32) = 0;
  }

  if (*(a1 + 144))
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(*(a1 + 136));
    *(a1 + 136) = 0;
    v17 = *(a1 + 128);
    if (v17)
    {
      for (j = 0; j != v17; ++j)
      {
        *(*(a1 + 120) + 8 * j) = 0;
      }
    }

    *(a1 + 144) = 0;
  }

  std::fstream::open(&__p, &__s, v14);
  if (!*(&__p.__sb_.__st_._mbstateL + 9))
  {
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&__p + *(__p.__sb_.__extbuf_ - 3)), *&__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] | 4);
    }

    goto LABEL_204;
  }

  v19 = 0;
  memset(&v136, 0, sizeof(v136));
  v134[1] = 0;
  v134[0] = 0;
  v135 = 0;
  v132[1] = 0;
  v132[0] = 0;
  v133 = 0;
  v130[0] = 0;
  v130[1] = 0;
  v131 = 0;
  v129 = 0;
  v113 = *(MEMORY[0x277D82820] + 24);
  v114 = *MEMORY[0x277D82820];
  v116 = a1;
LABEL_37:
  std::ios_base::getloc((&__p + *(__p.__sb_.__extbuf_ - 3)));
  v20 = std::locale::use_facet(v123, MEMORY[0x277D82680]);
  v21 = (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(v123);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v136, v21);
  if ((__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] & 5) == 0)
  {
    std::istringstream::basic_istringstream[abi:ne200100](v123, &v136);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v123, v134);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v123, v134);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v123, v132);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v123, v130);
    v22 = MEMORY[0x223DC20B0](v123, &v129);
    if ((*(v22 + *(*v22 - 24) + 32) & 5) != 0)
    {
      goto LABEL_97;
    }

    if (!std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 120), v132))
    {
      SymbolMapper::set((a1 + 88), v132, v19);
      v19 = (v19 + 1);
    }

    if (!std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 120), v130))
    {
      SymbolMapper::set((a1 + 88), v130, v19);
      v19 = (v19 + 1);
    }

    v23 = v129;
    v24 = SymbolMapper::mapPhone(a1 + 88, v132);
    std::to_string(&v121, v24);
    v25 = std::string::append(&v121, ",");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v122.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v122.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = SymbolMapper::mapPhone(a1 + 88, v130);
    std::to_string(&v120, v27);
    v28 = v19;
    if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v120;
    }

    else
    {
      v29 = v120.__r_.__value_.__r.__words[0];
    }

    if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v120.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v120.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v122, v29, size);
    *v118 = *v31;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v32 = std::__string_hash<char>::operator()[abi:ne200100](v118);
    v33 = v32;
    v34 = v139[1];
    if (!v139[1])
    {
      goto LABEL_65;
    }

    v35 = vcnt_s8(v139[1]);
    v35.i16[0] = vaddlv_u8(v35);
    v36 = v35.u32[0];
    if (v35.u32[0] > 1uLL)
    {
      v37 = v32;
      if (v32 >= v139[1])
      {
        v37 = v32 % v139[1];
      }
    }

    else
    {
      v37 = (v139[1] - 1) & v32;
    }

    v38 = *(v139[0] + v37);
    if (!v38 || (v39 = *v38) == 0)
    {
LABEL_65:
      operator new();
    }

    while (1)
    {
      v40 = v39[1];
      if (v40 == v33)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v39 + 2, v118))
        {
          v58 = v118[23];
          *(v39 + 10) = v23;
          if (v58 < 0)
          {
            operator delete(*v118);
          }

          if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v120.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v122.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }

          v41 = std::__string_hash<char>::operator()[abi:ne200100](v132);
          v42 = *(v116 + 56);
          if (v42)
          {
            v43 = v41;
            v44 = vcnt_s8(v42);
            v44.i16[0] = vaddlv_u8(v44);
            v45 = v44.u32[0];
            if (v44.u32[0] > 1uLL)
            {
              v46 = v41;
              v47 = v116;
              if (v41 >= *&v42)
              {
                v46 = v41 % *&v42;
              }
            }

            else
            {
              v46 = (*&v42 - 1) & v41;
              v47 = v116;
            }

            v48 = *(*(v47 + 48) + 8 * v46);
            if (v48)
            {
              v49 = *v48;
              if (*v48)
              {
                do
                {
                  v50 = v49[1];
                  if (v50 == v43)
                  {
                    if (std::equal_to<std::string>::operator()[abi:ne200100](v49 + 2, v132))
                    {
                      goto LABEL_96;
                    }
                  }

                  else
                  {
                    if (v45 > 1)
                    {
                      if (v50 >= *&v42)
                      {
                        v50 %= *&v42;
                      }
                    }

                    else
                    {
                      v50 &= *&v42 - 1;
                    }

                    if (v50 != v46)
                    {
                      break;
                    }
                  }

                  v49 = *v49;
                }

                while (v49);
              }
            }
          }

          memset(v118, 0, sizeof(v118));
          v119 = 1065353216;
          v122.__r_.__value_.__r.__words[0] = v132;
          v51 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v116 + 48), v132, &v122);
          v52 = v51;
          if (v51[8])
          {
            std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(v51[7]);
            v52[7] = 0;
            v53 = v52[6];
            if (v53)
            {
              for (k = 0; k != v53; ++k)
              {
                *(v52[5] + 8 * k) = 0;
              }
            }

            v52[8] = 0;
          }

          *v118 = 0;
          v55 = v52[5];
          v52[5] = 0;
          if (v55)
          {
            operator delete(v55);
          }

          v52[6] = 0;
          v52[7] = 0;
          v52[8] = 0;
          *(v52 + 18) = 1065353216;
          std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(0);
LABEL_96:
          v56 = v129;
          *v118 = v132;
          a1 = v116;
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v116 + 48), v132, v118);
          v19 = v28;
          *v118 = v130;
          *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v57 + 5, v130, v118) + 10) = v56;
LABEL_97:
          v123[0].__locale_ = v114;
          *(&v123[0].__locale_ + *(v114 - 3)) = v113;
          *&v124 = MEMORY[0x277D82878] + 16;
          if (v127 < 0)
          {
            operator delete(v126);
          }

          *&v124 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v124 + 1);
          std::istream::~istream();
          MEMORY[0x223DC2270](&v128);
          goto LABEL_37;
        }
      }

      else
      {
        if (v36 > 1)
        {
          if (v40 >= v34)
          {
            v40 %= v34;
          }
        }

        else
        {
          v40 &= v34 - 1;
        }

        if (v40 != v37)
        {
          goto LABEL_65;
        }
      }

      v39 = *v39;
      if (!v39)
      {
        goto LABEL_65;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v123, "<eps>");
  std::string::operator=((a1 + 88), v123);
  v59 = std::__string_hash<char>::operator()[abi:ne200100](v123);
  v60 = *(a1 + 128);
  if (!*&v60)
  {
    goto LABEL_120;
  }

  v61 = v59;
  v62 = vcnt_s8(v60);
  v62.i16[0] = vaddlv_u8(v62);
  v63 = v62.u32[0];
  if (v62.u32[0] > 1uLL)
  {
    v64 = v59;
    if (v59 >= *&v60)
    {
      v64 = v59 % *&v60;
    }
  }

  else
  {
    v64 = (*&v60 - 1) & v59;
  }

  v65 = *(*(a1 + 120) + 8 * v64);
  if (!v65 || (v66 = *v65) == 0)
  {
LABEL_120:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (1)
  {
    v67 = v66[1];
    if (v67 == v61)
    {
      break;
    }

    if (v63 > 1)
    {
      if (v67 >= *&v60)
      {
        v67 %= *&v60;
      }
    }

    else
    {
      v67 &= *&v60 - 1;
    }

    if (v67 != v64)
    {
      goto LABEL_120;
    }

LABEL_119:
    v66 = *v66;
    if (!v66)
    {
      goto LABEL_120;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v66 + 2, v123))
  {
    goto LABEL_119;
  }

  *(a1 + 112) = *(v66 + 10);
  if (SBYTE7(v124) < 0)
  {
    operator delete(v123[0].__locale_);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((&__p + *(__p.__sb_.__extbuf_ - 3)), *&__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] | 4);
  }

  v115 = *(a1 + 144);
  if (v115 >= 1)
  {
    v68 = 0;
    do
    {
      *&v123[0].__locale_ = 0u;
      v124 = 0u;
      v125 = 1065353216;
      LODWORD(v122.__r_.__value_.__l.__data_) = v68;
      *v118 = &v122;
      v69 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v116 + 8), v68, v118);
      v70 = v69;
      if (v69[6])
      {
        v71 = v69[5];
        if (v71)
        {
          do
          {
            v72 = *v71;
            operator delete(v71);
            v71 = v72;
          }

          while (v72);
        }

        v70[5] = 0;
        v73 = v70[4];
        if (v73)
        {
          for (m = 0; m != v73; ++m)
          {
            *(v70[3] + 8 * m) = 0;
          }
        }

        v70[6] = 0;
      }

      locale = v123[0].__locale_;
      v123[0].__locale_ = 0;
      v76 = v70[3];
      v70[3] = locale;
      if (v76)
      {
        operator delete(v76);
      }

      v77 = v123[1].__locale_;
      v78 = v124;
      v70[5] = v124;
      v70[4] = v77;
      v123[1].__locale_ = 0;
      v79 = *(&v124 + 1);
      v70[6] = *(&v124 + 1);
      *(v70 + 14) = v125;
      if (v79)
      {
        v80 = *(v78 + 8);
        if ((v77 & (v77 - 1)) != 0)
        {
          if (v80 >= v77)
          {
            v80 %= v77;
          }
        }

        else
        {
          v80 &= v77 - 1;
        }

        *(v70[3] + 8 * v80) = v70 + 5;
        v124 = 0uLL;
      }

      std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(v123);
      ++v68;
    }

    while (v68 != v115);
    v81 = 0;
    do
    {
      v82 = 0;
      do
      {
        std::to_string(&v122, v81);
        v83 = std::string::append(&v122, ",");
        v84 = *&v83->__r_.__value_.__l.__data_;
        *&v118[16] = *(&v83->__r_.__value_.__l + 2);
        *v118 = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v121, v82);
        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = &v121;
        }

        else
        {
          v85 = v121.__r_.__value_.__r.__words[0];
        }

        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v86 = v121.__r_.__value_.__l.__size_;
        }

        v87 = std::string::append(v118, v85, v86);
        *&v123[0].__locale_ = *&v87->__r_.__value_.__l.__data_;
        *&v124 = *(&v87->__r_.__value_.__l + 2);
        v87->__r_.__value_.__l.__size_ = 0;
        v87->__r_.__value_.__r.__words[2] = 0;
        v87->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        if ((v118[23] & 0x80000000) != 0)
        {
          operator delete(*v118);
        }

        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        v88 = std::__string_hash<char>::operator()[abi:ne200100](v123);
        v89 = v139[1];
        if (v139[1])
        {
          v90 = v88;
          v91 = vcnt_s8(v139[1]);
          v91.i16[0] = vaddlv_u8(v91);
          v92 = v91.u32[0];
          if (v91.u32[0] > 1uLL)
          {
            v93 = v88;
            if (v88 >= v139[1])
            {
              v93 = v88 % v139[1];
            }
          }

          else
          {
            v93 = (v139[1] - 1) & v88;
          }

          v94 = *(v139[0] + v93);
          if (v94)
          {
            v95 = *v94;
            if (*v94)
            {
              do
              {
                v96 = v95[1];
                if (v90 == v96)
                {
                  if (std::equal_to<std::string>::operator()[abi:ne200100](v95 + 2, v123))
                  {
                    v97 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v139, v123);
                    if (!v97)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    v98 = *(v97 + 10);
                    LODWORD(v122.__r_.__value_.__l.__data_) = v81;
                    *v118 = &v122;
                    v99 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v116 + 8), v81, v118);
                    v100 = v99[4];
                    if (!*&v100)
                    {
                      goto LABEL_191;
                    }

                    v101 = vcnt_s8(v100);
                    v101.i16[0] = vaddlv_u8(v101);
                    if (v101.u32[0] > 1uLL)
                    {
                      v102 = v82;
                      if (*&v100 <= v82)
                      {
                        v102 = v82 % v100.i32[0];
                      }
                    }

                    else
                    {
                      v102 = (*&v100 + 0x7FFFFFFFLL) & v82;
                    }

                    v103 = *(v99[3] + 8 * v102);
                    if (!v103 || (v104 = *v103) == 0)
                    {
LABEL_191:
                      operator new();
                    }

                    while (1)
                    {
                      v105 = v104[1];
                      if (v105 == v82)
                      {
                        if (v82 == *(v104 + 4))
                        {
                          *(v104 + 5) = v98;
                          goto LABEL_192;
                        }
                      }

                      else
                      {
                        if (v101.u32[0] > 1uLL)
                        {
                          if (v105 >= *&v100)
                          {
                            v105 %= *&v100;
                          }
                        }

                        else
                        {
                          v105 &= *&v100 - 1;
                        }

                        if (v105 != v102)
                        {
                          goto LABEL_191;
                        }
                      }

                      v104 = *v104;
                      if (!v104)
                      {
                        goto LABEL_191;
                      }
                    }
                  }
                }

                else
                {
                  if (v92 > 1)
                  {
                    if (v96 >= v89)
                    {
                      v96 %= v89;
                    }
                  }

                  else
                  {
                    v96 &= v89 - 1;
                  }

                  if (v96 != v93)
                  {
                    break;
                  }
                }

                v95 = *v95;
              }

              while (v95);
            }
          }
        }

LABEL_192:
        if (SBYTE7(v124) < 0)
        {
          operator delete(v123[0].__locale_);
        }

        ++v82;
      }

      while (v82 != (v115 & 0x7FFFFFFF));
      ++v81;
    }

    while (v81 != v115);
  }

  if (SHIBYTE(v131) < 0)
  {
    operator delete(v130[0]);
  }

  if (SHIBYTE(v133) < 0)
  {
    operator delete(v132[0]);
  }

  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134[0]);
  }

  a1 = v116;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

LABEL_204:
  MEMORY[0x223DC2080](__p.__sb_.__extbuf_min_);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC2270](&v143);
  if (v138 < 0)
  {
    operator delete(v137);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(v140[0]);
  v106 = v139[0];
  v139[0] = 0;
  if (v106)
  {
    operator delete(v106);
  }

  if (!*(a1 + 32) || !*(a1 + 144))
  {
    v111 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "#Model Failed to load confMatrix file");
    std::string::basic_string[abi:ne200100]<0>(v123, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(v111, &__p, v123, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/Common/Predictor/src/RepetitionPredictorBase.cpp", 68);
  }

  v107 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
  {
    v108 = *(a1 + 144);
    LODWORD(__p.__sb_.__extbuf_) = 136315394;
    *(&__p.__sb_.__extbuf_ + 4) = "loadCostMatrix";
    WORD2(__p.__sb_.__extbufnext_) = 2048;
    *(&__p.__sb_.__extbufnext_ + 6) = v108;
    _os_log_impl(&dword_2227A9000, v107, OS_LOG_TYPE_INFO, "%s #Model symbol map size: %zu", &__p, 0x16u);
  }

  v109 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
  {
    v110 = *(a1 + 32);
    LODWORD(__p.__sb_.__extbuf_) = 136315394;
    *(&__p.__sb_.__extbuf_ + 4) = "loadCostMatrix";
    WORD2(__p.__sb_.__extbufnext_) = 2048;
    *(&__p.__sb_.__extbufnext_ + 6) = v110;
    _os_log_impl(&dword_2227A9000, v109, OS_LOG_TYPE_INFO, "%s #Model cost_matrix size: %lu", &__p, 0x16u);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_2227AFB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
    if ((v43 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v42);
  goto LABEL_8;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t SymbolMapper::mapPhone(uint64_t a1, void *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 32), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return *(v2 + 10);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, void *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2227B09CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t marrs::mrr::mr::ModelBasedMR::ModelBasedMR(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v153 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2835DF560;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  *a1 = &unk_2835DF538;
  v106 = (a1 + 32);
  v109 = a1;
  std::__fs::filesystem::operator/[abi:ne200100](&v130, a2, &marrs::mrr::mr::configFileName);
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = v130;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = SHIBYTE(v152.__r_.__value_.__r.__words[2]);
  v8 = v152.__r_.__value_.__r.__words[0];
  v9 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v7 >= 0)
  {
    v10 = &v152;
  }

  else
  {
    v10 = v8;
  }

  v113 = [v6 stringWithCString:v10 encoding:v9];
  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v113];
  memset(&__p, 0, sizeof(__p));
  memset(v134, 0, sizeof(v134));
  memset(&v141, 0, sizeof(v141));
  memset(v138, 0, sizeof(v138));
  memset(v136, 0, sizeof(v136));
  v116 = v11;
  v12 = [v11 objectForKey:@"version"];
  v13 = v12;
  std::string::basic_string[abi:ne200100]<0>(&__str, [v12 UTF8String]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __str;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;

  v111 = [v116 objectForKey:@"mrType"];
  v133 = [v111 isEqual:@"rule"] ^ 1;
  v14 = [v116 objectForKeyedSubscript:@"ruleConfig"];
  v15 = v14 == 0;

  if (!v15)
  {
    v16 = [v116 objectForKeyedSubscript:@"ruleConfig"];
    v17 = [v16 objectForKey:@"entityKeyWordPath"];
    v18 = v17;
    std::string::basic_string[abi:ne200100]<0>(&__str, [v17 UTF8String]);
    v19 = [v16 objectForKey:@"labelEmbeddingPath"];
    v20 = v19;
    std::string::basic_string[abi:ne200100]<0>(&v145, [v19 UTF8String]);
    v21 = [v16 objectForKeyedSubscript:@"cosineSimilarityThreshold"];
    [v21 floatValue];
    LODWORD(v146) = v22;
    v23 = [v16 objectForKeyedSubscript:@"scoreRelativeThreshold"];
    [v23 floatValue];
    HIDWORD(v146) = v24;
    v25 = [v16 objectForKey:@"owlEmbeddingsTaskId"];
    v26 = v25;
    std::string::basic_string[abi:ne200100]<0>(&v147, [v25 UTF8String]);

    std::string::operator=(v134, &__str);
    std::string::operator=(&v134[1], &v145);
    v135 = v146;
    std::string::operator=(v136, &v147);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v27 = [v116 objectForKeyedSubscript:@"modelConfig"];
  v28 = v27 == 0;

  if (!v28)
  {
    v29 = [v116 objectForKeyedSubscript:@"modelConfig"];
    memset(v126, 0, 24);
    v30 = [v29 objectForKey:@"categoryEmbeddingFileName"];
    v31 = v30 == 0;

    if (v31)
    {
      MEMORY[0x223DC1FB0](v126, "embedded_cats_192.json");
    }

    else
    {
      v32 = [v29 objectForKey:@"categoryEmbeddingFileName"];
      v33 = v32;
      std::string::basic_string[abi:ne200100]<0>(&__str, [v32 UTF8String]);
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }

      *v126 = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
    }

    v34 = [v29 objectForKey:@"owlEmbeddingDim"];
    v35 = v34 == 0;

    if (v35)
    {
      v37 = 192;
    }

    else
    {
      v36 = [v29 objectForKeyedSubscript:@"owlEmbeddingDim"];
      v37 = [v36 longValue];
    }

    v38 = [v29 objectForKey:@"scoreAbsoluteThreshold"];
    v39 = v38 == 0;

    if (v39)
    {
      [v29 objectForKeyedSubscript:@"scoreRelativeThreshold"];
    }

    else
    {
      [v29 objectForKeyedSubscript:@"scoreAbsoluteThreshold"];
    }
    v40 = ;
    [v40 floatValue];
    v42 = v41;

    v43 = [v29 objectForKey:@"useVisibleText"];
    LOBYTE(v40) = v43 == 0;

    if (v40)
    {
      goto LABEL_36;
    }

    v44 = [v29 objectForKey:@"useVisibleText"];
    v45 = v44;
    std::string::basic_string[abi:ne200100]<0>(&__str, [v44 UTF8String]);

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v46 = __str.__r_.__value_.__l.__size_ == 4 && *__str.__r_.__value_.__l.__data_ == 1702195796;
      operator delete(__str.__r_.__value_.__l.__data_);
      goto LABEL_41;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 4)
    {
LABEL_36:
      v46 = 0;
    }

    else
    {
      v46 = LODWORD(__str.__r_.__value_.__l.__data_) == 1702195796;
    }

LABEL_41:
    memset(&v131, 0, sizeof(v131));
    v47 = [v29 objectForKey:@"visTextMatchFileName"];
    v48 = v47 == 0;

    if (v48)
    {
      MEMORY[0x223DC1FB0](&v131, "");
    }

    else
    {
      v49 = [v29 objectForKey:@"visTextMatchFileName"];
      v50 = v49;
      std::string::basic_string[abi:ne200100]<0>(&__str, [v49 UTF8String]);
      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

      v131 = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
    }

    v51 = [v29 objectForKey:@"withinEntityScoreMargin"];
    v52 = v51 == 0;

    if (v52)
    {
      v55 = 0;
    }

    else
    {
      v53 = [v29 objectForKeyedSubscript:@"withinEntityScoreMargin"];
      [v53 floatValue];
      v55 = v54;
    }

    v56 = [v29 objectForKey:@"boltTaskId"];
    v57 = v56;
    std::string::basic_string[abi:ne200100]<0>(&__str, [v56 UTF8String]);
    LODWORD(v145.__r_.__value_.__l.__data_) = v42;
    v58 = [v29 objectForKey:@"owlEmbeddingsTaskId"];
    v59 = v58;
    std::string::basic_string[abi:ne200100]<0>(&v145.__r_.__value_.__l.__size_, [v58 UTF8String]);
    if ((v126[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v147, *v126, *&v126[8]);
    }

    else
    {
      v147 = *v126;
    }

    v148 = v37;
    v149 = v46;
    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v150, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
    }

    else
    {
      v150 = v131;
    }

    v151 = v55;

    std::string::operator=(&v136[1], &__str);
    data = v145.__r_.__value_.__l.__data_;
    std::string::operator=(v138, &v145.__r_.__value_.__r.__words[1]);
    std::string::operator=(&v138[1], &v147);
    v139 = v148;
    v140 = v149;
    std::string::operator=(&v141, &v150);
    v142 = v151;
    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }
  }

  *v106 = v136[1];
  *&v136[1].__r_.__value_.__l.__data_ = 0uLL;
  *(v109 + 56) = data;
  *(v109 + 64) = v138[0];
  memset(v138, 0, 24);
  *(v109 + 88) = *&v138[1].__r_.__value_.__l.__data_;
  v136[1].__r_.__value_.__r.__words[2] = 0;
  v138[1].__r_.__value_.__r.__words[0] = 0;
  *(v109 + 120) = v140;
  v60 = v138[1].__r_.__value_.__r.__words[2];
  v61 = v139;
  *&v138[1].__r_.__value_.__r.__words[1] = 0uLL;
  *(v109 + 104) = v60;
  *(v109 + 112) = v61;
  v62 = *&v141.__r_.__value_.__l.__data_;
  *(v109 + 144) = *(&v141.__r_.__value_.__l + 2);
  *(v109 + 128) = v62;
  memset(&v141, 0, sizeof(v141));
  *(v109 + 152) = v142;
  MRConfig::~MRConfig(&__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  *(v109 + 216) = 0;
  *(v109 + 208) = v109 + 216;
  *(v109 + 168) = 0;
  *(v109 + 160) = v109 + 168;
  v103 = (v109 + 160);
  *(v109 + 192) = 0;
  *(v109 + 176) = 0;
  *(v109 + 184) = v109 + 192;
  v104 = (v109 + 184);
  *(v109 + 200) = 0;
  v107 = (v109 + 208);
  *(v109 + 224) = 0;
  std::__fs::filesystem::operator/[abi:ne200100](&__str, a2, &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &__str, &marrs::mrr::mr::ModelBasedMR::modelFolderName);
  std::__fs::filesystem::operator/[abi:ne200100](&v131, &__p, &marrs::mrr::mr::ModelBasedMR::modelName);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v126, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    *v126 = v131;
  }

  std::__fs::filesystem::operator/[abi:ne200100](&__p, a2, &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath);
  std::__fs::filesystem::operator/[abi:ne200100](&v152, &__p, &marrs::mrr::mr::ModelBasedMR::modelFolderName);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v152.__r_.__value_.__l.__data_, v152.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v152;
  }

  marrs::inference_engine::EspressoModule::EspressoModule(v109 + 232, v126, 32);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if ((v126[23] & 0x80000000) != 0)
  {
    operator delete(*v126);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  *(v109 + 280) = 0;
  *(v109 + 288) = 0;
  *(v109 + 272) = v109 + 280;
  std::__fs::filesystem::operator/[abi:ne200100](&__str, a2, &marrs::mrr::mr::configFileName);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  std::ifstream::basic_ifstream(&__p, p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&v125, *(&v134[0].__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__r.__words[0] - 24)));
  v64 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = &v125;
    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v65 = v125.__r_.__value_.__r.__words[0];
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v65;
    _os_log_impl(&dword_2227A9000, v64, OS_LOG_TYPE_INFO, "Loaded MR Config - %s", &__str, 0xCu);
  }

  if (*(v109 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, *(v109 + 88), *(v109 + 96));
  }

  else
  {
    v124 = *(v109 + 88);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, *a2, *(a2 + 8));
  }

  else
  {
    v123 = *a2;
  }

  std::__fs::filesystem::operator/[abi:ne200100](v126, &v123, &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v131, &v124);
  std::__fs::filesystem::operator/[abi:ne200100](&__str, v126, &v131);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v122 = __str;
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if ((v126[23] & 0x80000000) != 0)
  {
    operator delete(*v126);
  }

  if (*(v109 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, *(v109 + 128), *(v109 + 136));
  }

  else
  {
    v121 = *(v109 + 128);
  }

  std::__fs::filesystem::operator/[abi:ne200100](v126, &v123, &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v131, &v121);
  std::__fs::filesystem::operator/[abi:ne200100](&__str, v126, &v131);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v120 = __str;
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if ((v126[23] & 0x80000000) != 0)
  {
    operator delete(*v126);
  }

  v66 = MEMORY[0x277CCACA8];
  v67 = SHIBYTE(v122.__r_.__value_.__r.__words[2]);
  v68 = v122.__r_.__value_.__r.__words[0];
  v69 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v67 >= 0)
  {
    v70 = &v122;
  }

  else
  {
    v70 = v68;
  }

  v108 = [v66 stringWithCString:v70 encoding:v69];
  v105 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v105 fileExistsAtPath:v108] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x223DC1F20](exception, &__str);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v114 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v108];
  v71 = [v114 allKeys];
  *&v152.__r_.__value_.__r.__words[1] = 0uLL;
  v152.__r_.__value_.__r.__words[0] = &v152.__r_.__value_.__l.__size_;
  memset(v126, 0, sizeof(v126));
  v127 = 0u;
  v128 = 0u;
  obj = v71;
  v72 = [obj countByEnumeratingWithState:v126 objects:&__str count:16];
  if (v72)
  {
    v112 = **&v126[16];
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (**&v126[16] != v112)
        {
          objc_enumerationMutation(obj);
        }

        v74 = *(*&v126[8] + 8 * i);
        v75 = [v114 objectForKey:v74];
        if ([v75 count])
        {
          [v75 objectAtIndex:0];
          [objc_claimAutoreleasedReturnValue() floatValue];
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
        }

        v76 = v74;
        std::string::basic_string[abi:ne200100]<0>(&v130, [v74 UTF8String]);
        v77 = *std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::__find_equal<std::string>(&v152, &v129, &v130);
        if (!v77)
        {
          operator new();
        }

        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v77 + 56), 0, 0, 0);
        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }
      }

      v72 = [obj countByEnumeratingWithState:v126 objects:&__str count:16];
    }

    while (v72);
  }

  v119[0] = 0;
  v119[1] = 0;
  v118 = v119;
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>(&v118, v152.__r_.__value_.__l.__data_, &v152.__r_.__value_.__l.__size_);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v152.__r_.__value_.__l.__size_);

  if ((v109 + 272) != &v118)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>((v109 + 272), v118, v119);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v119[0]);
  if (*(v109 + 120))
  {
    v78 = MEMORY[0x277CCACA8];
    v79 = SHIBYTE(v120.__r_.__value_.__r.__words[2]);
    v80 = v120.__r_.__value_.__r.__words[0];
    v81 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v79 >= 0)
    {
      v82 = &v120;
    }

    else
    {
      v82 = v80;
    }

    v83 = [v78 stringWithCString:v82 encoding:v81];
    v115 = v83;
    v117 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v117 fileExistsAtPath:v83] & 1) == 0)
    {
      v102 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      MEMORY[0x223DC1F20](v102, v126);
      __cxa_throw(v102, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v84 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v83];
    v85 = v84;
    v86 = [v84 objectForKey:@"start"];
    v87 = 0;
    *&v126[8] = 0;
    *&v126[16] = 0;
    *v126 = &v126[8];
    while (v87 < [v86 count])
    {
      v88 = [v86 objectAtIndexedSubscript:v87];
      v89 = v88;
      std::string::basic_string[abi:ne200100]<0>(&v131, [v88 UTF8String]);

      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v126, &v131, &v131);
      v84 = v85;
      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

      ++v87;
    }

    v90 = [v84 objectForKey:@"end"];
    v91 = 0;
    *&v131.__r_.__value_.__r.__words[1] = 0uLL;
    v131.__r_.__value_.__r.__words[0] = &v131.__r_.__value_.__l.__size_;
    while (v91 < [v90 count])
    {
      v92 = [v90 objectAtIndexedSubscript:v91];
      v93 = v92;
      std::string::basic_string[abi:ne200100]<0>(&v152, [v92 UTF8String]);

      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v131, &v152, &v152);
      v84 = v85;
      if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v152.__r_.__value_.__l.__data_);
      }

      ++v91;
    }

    v94 = [v84 objectForKey:@"stopwords"];
    v95 = 0;
    *&v152.__r_.__value_.__r.__words[1] = 0uLL;
    v152.__r_.__value_.__r.__words[0] = &v152.__r_.__value_.__l.__size_;
    while (v95 < [v94 count])
    {
      v96 = [v94 objectAtIndexedSubscript:v95];
      v97 = v96;
      std::string::basic_string[abi:ne200100]<0>(&v130, [v96 UTF8String]);

      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v152, &v130, &v130);
      if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v130.__r_.__value_.__l.__data_);
      }

      ++v95;
    }

    *&__str.__r_.__value_.__r.__words[1] = 0uLL;
    __str.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__l.__size_;
    *&v145.__r_.__value_.__r.__words[1] = 0uLL;
    v145.__r_.__value_.__r.__words[0] = &v145.__r_.__value_.__l.__size_;
    *&v147.__r_.__value_.__l.__data_ = 0uLL;
    v146 = &v147;
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&__str, *v126, &v126[8]);
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v145, v131.__r_.__value_.__l.__data_, &v131.__r_.__value_.__l.__size_);
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v146, v152.__r_.__value_.__l.__data_, &v152.__r_.__value_.__l.__size_);
    std::__tree<std::string>::destroy(v152.__r_.__value_.__l.__size_);

    std::__tree<std::string>::destroy(v131.__r_.__value_.__l.__size_);
    std::__tree<std::string>::destroy(*&v126[8]);

    if (v103 != &__str)
    {
      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v103, __str.__r_.__value_.__l.__data_, &__str.__r_.__value_.__l.__size_);
    }

    if (v104 != &v145)
    {
      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v104, v145.__r_.__value_.__l.__data_, &v145.__r_.__value_.__l.__size_);
    }

    if (v107 != &v146)
    {
      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v107, v146, &v147);
    }

    std::__tree<std::string>::destroy(v147.__r_.__value_.__l.__data_);
    std::__tree<std::string>::destroy(v145.__r_.__value_.__l.__size_);
    std::__tree<std::string>::destroy(__str.__r_.__value_.__l.__size_);
    v98 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      v99 = *(v109 + 176);
      LODWORD(__str.__r_.__value_.__l.__data_) = 134217984;
      *(__str.__r_.__value_.__r.__words + 4) = v99;
      _os_log_impl(&dword_2227A9000, v98, OS_LOG_TYPE_INFO, "start words used size = %lu", &__str, 0xCu);
    }
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC2080](&__p.__r_.__value_.__r.__words[2]);
  std::istream::~istream();
  MEMORY[0x223DC2270](&v143);
  return v109;
}

void sub_2227B2094(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char **a11, char **a12, char **a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a68 < 0)
  {
    operator delete(__p);
    if ((v71 & 1) == 0)
    {
LABEL_6:

      if (a2 == 2)
      {
        exception_ptr = __cxa_get_exception_ptr(a1);
        MEMORY[0x223DC1F30](&a69, exception_ptr);
        __cxa_begin_catch(a1);
        v75 = MRRLoggerForCategory(2);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x420]) = 136315138;
          STACK[0x424] = "Error parsing visible text matching keywrods json";
          _os_log_impl(&dword_2227A9000, v75, OS_LOG_TYPE_ERROR, "ConfigLoadingError - %s", &STACK[0x420], 0xCu);
        }

        exception = __cxa_allocate_exception(0x30uLL);
        std::string::basic_string[abi:ne200100]<0>(&STACK[0x420], "Error parsing visible text matching keywrods json");
        std::string::basic_string[abi:ne200100]<0>(&__p, "MultimodalReferenceResolution");
        ConfigLoadingError::ConfigLoadingError(exception, &STACK[0x420], &__p, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/ModelBasedMR/ModelBasedMR.cpp", 64);
      }

      if (a2 == 1)
      {
        __cxa_get_exception_ptr(a1);
        a69 = (MEMORY[0x277D82920] + 16);
        __cxa_begin_catch(a1);
        v77 = MRRLoggerForCategory(2);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x420]) = 136315138;
          STACK[0x424] = "Unknown exception thrown during loading of visible text matching keywords";
          _os_log_impl(&dword_2227A9000, v77, OS_LOG_TYPE_ERROR, "ConfigLoadingError - %s", &STACK[0x420], 0xCu);
        }

        v78 = __cxa_allocate_exception(0x30uLL);
        std::string::basic_string[abi:ne200100]<0>(&STACK[0x420], "Unknown exception thrown during loading of visible text matching keywords");
        std::string::basic_string[abi:ne200100]<0>(&__p, "MultimodalReferenceResolution");
        ConfigLoadingError::ConfigLoadingError(v78, &STACK[0x420], &__p, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/ModelBasedMR/ModelBasedMR.cpp", 67);
      }

      if (a36 < 0)
      {
        operator delete(a31);
      }

      if (a43 < 0)
      {
        operator delete(a38);
      }

      if (a50 < 0)
      {
        operator delete(a45);
      }

      if (a57 < 0)
      {
        operator delete(a52);
      }

      if (a64 < 0)
      {
        operator delete(a59);
      }

      if (a66 < 0)
      {
        operator delete(a65);
      }

      std::ifstream::~ifstream(&a70);
      MEMORY[0x223DC2270](&STACK[0x388]);
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a10);
      marrs::inference_engine::EspressoModule::~EspressoModule((a21 + 24));
      std::__tree<std::string>::destroy(*a12);
      std::__tree<std::string>::destroy(*a11);
      std::__tree<std::string>::destroy(*a13);
      MRModelConfig::~MRModelConfig(a20);
      *a23 = a14;
      if (*(a23 + 31) < 0)
      {
        operator delete(*a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v71)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v70);
  goto LABEL_6;
}

void sub_2227B2868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char **a11, char **a12, char **a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
    if ((v71 & 1) == 0)
    {
LABEL_8:
      std::exception::~exception(&a69);
      __cxa_end_catch();
      if (a36 < 0)
      {
        operator delete(a31);
      }

      if (a43 < 0)
      {
        operator delete(a38);
      }

      if (a50 < 0)
      {
        operator delete(a45);
      }

      if (a57 < 0)
      {
        operator delete(a52);
      }

      if (a64 < 0)
      {
        operator delete(a59);
      }

      if (a66 < 0)
      {
        operator delete(a65);
      }

      std::ifstream::~ifstream(&a70);
      MEMORY[0x223DC2270](&STACK[0x388]);
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a10);
      marrs::inference_engine::EspressoModule::~EspressoModule((a21 + 24));
      std::__tree<std::string>::destroy(*a12);
      std::__tree<std::string>::destroy(*a11);
      std::__tree<std::string>::destroy(*a13);
      MRModelConfig::~MRModelConfig(a20);
      *a23 = a14;
      if (*(a23 + 31) < 0)
      {
        operator delete(*a15);
      }

      JUMPOUT(0x2227B2DA8);
    }
  }

  else if (!v71)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v70);
  goto LABEL_8;
}

void sub_2227B2948(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](&a66);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (v66)
  {
    operator delete(v66);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(v68 - 136));
  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    MEMORY[0x223DC1F30](&a28, exception_ptr);
    __cxa_begin_catch(a1);
    v72 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *(v68 - 144) = 136315138;
      STACK[0x4A4] = "Error parsing category embeddings json";
      _os_log_impl(&dword_2227A9000, v72, OS_LOG_TYPE_ERROR, "ConfigLoadingError - %s", (v68 - 144), 0xCu);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>((v68 - 144), "Error parsing category embeddings json");
    std::string::basic_string[abi:ne200100]<0>(&__p, "MultimodalReferenceResolution");
    ConfigLoadingError::ConfigLoadingError(exception, v68 - 144, &__p, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/ModelBasedMR/ModelBasedMR.cpp", 50);
  }

  JUMPOUT(0x2227B2ADCLL);
}

void sub_2227B2988()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227B29BCLL);
}

void sub_2227B2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char **a11, char **a12, char **a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::exception a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  if (*(v71 - 121) < 0)
  {
    operator delete(*(v71 - 144));
    if ((v70 & 1) == 0)
    {
LABEL_8:
      std::exception::~exception(&a28);
      __cxa_end_catch();
      if (a36 < 0)
      {
        operator delete(a31);
      }

      if (a43 < 0)
      {
        operator delete(a38);
      }

      if (a50 < 0)
      {
        operator delete(a45);
      }

      if (a57 < 0)
      {
        operator delete(a52);
      }

      if (a64 < 0)
      {
        operator delete(a59);
      }

      if (a66 < 0)
      {
        operator delete(a65);
      }

      std::ifstream::~ifstream(&a69);
      MEMORY[0x223DC2270](&STACK[0x388]);
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a10);
      marrs::inference_engine::EspressoModule::~EspressoModule((a21 + 24));
      std::__tree<std::string>::destroy(*a12);
      std::__tree<std::string>::destroy(*a11);
      std::__tree<std::string>::destroy(*a13);
      MRModelConfig::~MRModelConfig(a20);
      *a23 = a14;
      if (*(a23 + 31) < 0)
      {
        operator delete(*a15);
      }

      JUMPOUT(0x2227B2DA8);
    }
  }

  else if (!v70)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v69);
  goto LABEL_8;
}

void sub_2227B2D94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t marrs::inference_engine::EspressoModule::EspressoModule(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 16)
  {
    v4 = 65552;
  }

  else
  {
    v4 = 65568;
  }

  *(a1 + 32) = v4;
  context = espresso_create_context();
  *a1 = context;
  if (!context)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x223DC1F10](exception, "Could not deserialise espresso context.");
    goto LABEL_10;
  }

  plan = espresso_create_plan();
  *(a1 + 8) = plan;
  if (!plan)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x223DC1F10](exception, "Could not create espresso plan.");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = espresso_plan_add_network();
  if (v7)
  {
    v10 = v7;
    v11 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v12 = std::string::append(&v19, " with error code");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v18, v10);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v20, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v22 = v16->__r_.__value_.__r.__words[2];
    v21 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x223DC1F20](v11, &v21);
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2227B2F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v26 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v27);
  goto LABEL_12;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin(marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin *this)
{
  *this = &unk_2835DEE00;
  *(this + 26) = &unk_2835DEE30;
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 240);
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  RepetitionPredictorBase::~RepetitionPredictorBase(this);
}

{
  marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin(this);

  JUMPOUT(0x223DC2360);
}

void non-virtual thunk tomarrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin(marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin *this)
{
  marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin((this - 208));

  JUMPOUT(0x223DC2360);
}

{
  marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin((this - 208));
}

void RepetitionPredictorBase::~RepetitionPredictorBase(RepetitionPredictorBase *this)
{
  *this = &unk_2835DEEA8;
  v7 = (this + 184);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 21));
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(*(this + 17));
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v3 = *(this + 8);
  if (v3)
  {
    do
    {
      v4 = *v3;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,float>>,0>((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__deallocate_node(*(this + 3));
  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

{
  RepetitionPredictorBase::~RepetitionPredictorBase(this);

  JUMPOUT(0x223DC2360);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,float>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void MRConfig::~MRConfig(void **this)
{
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,float>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t a2)
{
  a1[59] = 0;
  v3 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v4 = *(MEMORY[0x277D82808] + 16);
  v5 = *(MEMORY[0x277D82808] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, a1 + 2);
  v7 = MEMORY[0x277D82858] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  a1[53] = v3;
  MEMORY[0x223DC2070](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2227B3A54(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x223DC2270](v1);
  _Unwind_Resume(a1);
}

void std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *this, void *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (a2 && (a2[3] != a2[4] || (*(*a2 + 72))(a2) != -1))
  {
    v4 = a2[3];
    if (v4 == a2[4])
    {
      v5 = (*(*a2 + 72))(a2);
    }

    else
    {
      v5 = *v4;
    }

    std::string::push_back(this, v5);
    v6 = a2[3];
    if (v6 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v6 + 1;
    }
  }
}

void sub_2227B3B88(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2227B3FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void marrs::mrr::mr::MROrchestrator::~MROrchestrator(void **this)
{
  marrs::mrr::mr::MROrchestrator::~MROrchestrator(this);

  JUMPOUT(0x223DC2360);
}

{
  *this = &unk_2835DF4E8;
  if (*(this + 1391) < 0)
  {
    operator delete(this[171]);
  }

  marrs::mrr::mr::RuleBasedMR::~RuleBasedMR(this + 38);
  marrs::mrr::mr::ModelBasedMR::~ModelBasedMR((this + 1));
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<MDMentionOverride>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<MDMentionOverride>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MDMentionOverride>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<MDMentionOverride>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MDMentionOverride>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MDMentionOverride>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MDMentionOverride>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<MDMentionOverride>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void marrs::mrr::mr::RuleBasedMR::~RuleBasedMR(void **this)
{
  *this = &unk_2835DF5C0;
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 113);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 93);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 73);
  this[50] = &unk_2835DF620;
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(this[71]);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 50);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 30);
  this[4] = &unk_2835DF648;
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(this[28]);
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(this[25]);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 4);
  *this = &unk_2835DF560;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  marrs::mrr::mr::RuleBasedMR::~RuleBasedMR(this);

  JUMPOUT(0x223DC2360);
}

void marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(void **this)
{
  *this = &unk_2835DF5E8;
  morphun::util::ULocale::~ULocale((this + 4));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1[1]);
    std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100]((a1 + 4));

    operator delete(a1);
  }
}

void std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](uint64_t a1)
{
  std::__tree<std::string>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,0>((a1 + 4));

    operator delete(a1);
  }
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_2227B46D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<marrs::mrr::mr::VerbalPatternEntry>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 48)
  {
    std::__tree<std::string>::destroy(*(i - 16));
    std::__tree<std::string>::destroy(*(i - 40));
  }

  *(a1 + 8) = a2;
}

void std::vector<marrs::mrr::mr::VerbalPatternEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<marrs::mrr::mr::VerbalPatternEntry>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<marrs::mrr::mr::VerbalPatternEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void marrs::mrr::mr::ModelBasedMR::~ModelBasedMR(marrs::mrr::mr::ModelBasedMR *this)
{
  *this = &unk_2835DF538;
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(this + 35));
  marrs::inference_engine::EspressoModule::~EspressoModule((this + 232));
  std::__tree<std::string>::destroy(*(this + 27));
  std::__tree<std::string>::destroy(*(this + 24));
  std::__tree<std::string>::destroy(*(this + 21));
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  *this = &unk_2835DF560;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  marrs::mrr::mr::ModelBasedMR::~ModelBasedMR(this);

  JUMPOUT(0x223DC2360);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void marrs::mrr::md::MRRVisualAndScreenMentionDetector::~MRRVisualAndScreenMentionDetector(marrs::mrr::md::MRRVisualAndScreenMentionDetector *this)
{
  *this = &unk_2835DF470;
  std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(*(this + 18));
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    marrs::inference_engine::EspressoModule::~EspressoModule(v2);
    MEMORY[0x223DC2360]();
  }

  *this = &unk_2835DF4C0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  marrs::mrr::md::MRRVisualAndScreenMentionDetector::~MRRVisualAndScreenMentionDetector(this);

  JUMPOUT(0x223DC2360);
}

void *std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>(void *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = (result + 1);
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v16 = result;
    v17 = v9;
    v18 = v9;
    if (v9)
    {
      v17 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v9);
      if (a2 != a3)
      {
        v10 = a2;
        do
        {
          std::string::operator=((v9 + 4), (v10 + 4));
          if (v9 != v10)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v9 + 7, v10[7], v10[8], (v10[8] - v10[7]) >> 2);
          }

          v11 = *v8;
          v12 = (v5 + 1);
          v13 = (v5 + 1);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v12 = v11;
                if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v18 + 4, v11 + 4))
                {
                  break;
                }

                v11 = *v12;
                v13 = v12;
                if (!*v12)
                {
                  goto LABEL_16;
                }
              }

              v11 = v12[1];
            }

            while (v11);
            v13 = v12 + 1;
          }

LABEL_16:
          std::__tree<std::string>::__insert_node_at(v5, v12, v13, v18);
          v9 = v17;
          v18 = v17;
          if (v17)
          {
            v17 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v17);
          }

          v14 = v10[1];
          if (v14)
          {
            do
            {
              a2 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              a2 = v10[2];
              v15 = *a2 == v10;
              v10 = a2;
            }

            while (!v15);
          }

          if (!v9)
          {
            break;
          }

          v10 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v16);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

void sub_2227B50F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227B5190(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (!v5)
  {
LABEL_13:
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__construct_node<std::string const&>(v13, a1, a3);
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v5;
      v10 = v5[4];
      v8 = v5 + 4;
      v9 = v10;
      v11 = (*(v8 + 23) >= 0 ? v8 : v9);
      if ((strcasecmp(v6, v11) & 0x80000000) == 0)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }
    }

    result = strcasecmp(v11, v6);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_13;
    }
  }
}

void sub_2227B535C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

uint64_t ***std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t ***result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v17;
          leaf_high = std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__find_leaf_high(v5, &v14, (v17 + 4));
          std::__tree<std::string>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__construct_node<std::string const&>(&v15, v5, (a2 + 4));
  }

  return result;
}

void sub_2227B5514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v9 = v4[4];
        v7 = v4 + 4;
        v8 = v9;
        v10 = (*(v7 + 23) >= 0 ? v7 : v8);
        if ((strcasecmp(v6, v10) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_14;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_14:
  *a2 = v5;
  return result;
}

void *marrs::mrr::mr::OrdinalFilter::OrdinalFilter(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3;
  v215 = *MEMORY[0x277D85DE8];
  v5 = marrs::mrr::mr::MRFilterInterface::MRFilterInterface(a1, a3);
  *v5 = &unk_2835DF648;
  v5[21] = 0;
  v137 = v5 + 21;
  v5[20] = v5 + 21;
  v5[24] = 0;
  v5[25] = 0;
  v5[22] = 0;
  v5[23] = v5 + 24;
  v143 = v5;
  v138 = v5 + 24;
  v135 = v5 + 20;
  std::__fs::filesystem::operator/[abi:ne200100](__sz, a2, &marrs::mrr::mr::filterConfigFileName);
  if (SHIBYTE(__sz[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v214, __sz[0].__r_.__value_.__l.__data_, __sz[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *v214 = __sz[0];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = v214[23];
  v8 = *v214;
  v9 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v7 >= 0)
  {
    v10 = v214;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v6 stringWithCString:v10 encoding:v9];
  v12 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v11];
  memset(&v169, 0, sizeof(v169));
  v13 = [v12 objectForKey:@"version"];
  v14 = v13;
  std::string::basic_string[abi:ne200100]<0>(&__str, [v13 UTF8String]);
  v167 = __str;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;

  v15 = [v12 objectForKey:@"mrType"];
  v168 = [v15 isEqual:@"rule"] ^ 1;
  if ((v168 & 1) == 0)
  {
    v16 = [v12 objectForKeyedSubscript:@"ruleConfig"];
    v17 = v16 == 0;

    if (!v17)
    {
      v18 = [v12 objectForKeyedSubscript:@"ruleConfig"];
      v19 = [v18 objectForKey:@"ordinalAssetPath"];
      v20 = v19;
      std::string::basic_string[abi:ne200100]<0>(&__str, [v19 UTF8String]);

      std::string::operator=(&v169, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  if ((v214[23] & 0x80000000) != 0)
  {
    operator delete(*v214);
  }

  if (SHIBYTE(__sz[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__sz[0].__r_.__value_.__l.__data_);
  }

  v21 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    std::__fs::filesystem::operator/[abi:ne200100](v214, a2, &marrs::mrr::mr::assetSubDirectoryPath);
    if ((v214[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v214, *&v214[8]);
    }

    else
    {
      __str = *v214;
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    LODWORD(__sz[0].__r_.__value_.__l.__data_) = 136315394;
    *(__sz[0].__r_.__value_.__r.__words + 4) = v3;
    WORD2(__sz[0].__r_.__value_.__r.__words[1]) = 2080;
    *(&__sz[0].__r_.__value_.__r.__words[1] + 6) = p_str;
    _os_log_impl(&dword_2227A9000, v21, OS_LOG_TYPE_DEBUG, "[Verbal MR] Initializing Verbal rule based mention resolver for locale - %s, from path - %s", __sz, 0x16u);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if ((v214[23] & 0x80000000) != 0)
    {
      operator delete(*v214);
    }
  }

  std::__fs::filesystem::operator/[abi:ne200100](v214, a2, &marrs::mrr::mr::filterConfigFileName);
  if (v214[23] >= 0)
  {
    v23 = v214;
  }

  else
  {
    v23 = *v214;
  }

  std::ifstream::basic_ifstream(&__str, v23);
  if ((v214[23] & 0x80000000) != 0)
  {
    operator delete(*v214);
  }

  std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&v166, *(&__str + *(__str.__r_.__value_.__r.__words[0] - 24) + 40));
  v24 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = &v166;
    if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v166.__r_.__value_.__r.__words[0];
    }

    *v214 = 136315138;
    *&v214[4] = v25;
    _os_log_impl(&dword_2227A9000, v24, OS_LOG_TYPE_DEBUG, "[Verbal MR] Loaded MR Config - %s", v214, 0xCu);
  }

  v26 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = &v167;
    if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v167.__r_.__value_.__r.__words[0];
    }

    if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v169;
    }

    else
    {
      v28 = v169.__r_.__value_.__r.__words[0];
    }

    *v214 = 67109634;
    *&v214[4] = v168;
    *&v214[8] = 2080;
    *&v214[10] = v27;
    *&v214[18] = 2080;
    *&v214[20] = v28;
    _os_log_impl(&dword_2227A9000, v26, OS_LOG_TYPE_DEBUG, "[Verbal MR] Verbal MR Config Parameters - mrType: %u,version: %s, ordinalAssetPath: %s", v214, 0x1Cu);
  }

  std::__fs::filesystem::operator/[abi:ne200100](__sz, a2, &marrs::mrr::mr::assetSubDirectoryPath);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v169);
  std::__fs::filesystem::operator/[abi:ne200100](v214, __sz, &__p);
  if ((v214[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v165, *v214, *&v214[8]);
    if ((v214[23] & 0x80000000) != 0)
    {
      operator delete(*v214);
    }
  }

  else
  {
    v165 = *v214;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__sz[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__sz[0].__r_.__value_.__l.__data_);
  }

  v29 = MEMORY[0x277CCACA8];
  v30 = SHIBYTE(v165.__r_.__value_.__r.__words[2]);
  v31 = v165.__r_.__value_.__r.__words[0];
  v32 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v30 >= 0)
  {
    v33 = &v165;
  }

  else
  {
    v33 = v31;
  }

  v145 = [v29 stringWithCString:v33 encoding:v32];
  v141 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v141 fileExistsAtPath:v145] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x223DC1F20](exception, v214);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v34 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v145];
  v159 = &v160;
  v160 = 0;
  v163 = 0;
  v164 = 0;
  v161 = 0;
  v162 = &v163;
  v196[1] = 0;
  v196[0] = 0;
  v195 = v196;
  v194[1] = 0;
  v194[0] = 0;
  v193 = v194;
  v35 = v34;
  v140 = v34;
  v144 = [v34 objectForKey:@"ordinalKeywords"];
  v142 = [v35 objectForKey:@"ordinalPatternTemplateMap"];
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  obj = v144;
  v146 = [obj countByEnumeratingWithState:&v189 objects:v214 count:16];
  if (v146)
  {
    v148 = *v190;
    do
    {
      for (i = 0; i != v146; ++i)
      {
        if (*v190 != v148)
        {
          objc_enumerationMutation(obj);
        }

        v151 = *(*(&v189 + 1) + 8 * i);
        v36 = [obj objectForKey:?];
        memset(v182, 0, 24);
        v185 = 0u;
        v186 = 0u;
        v187 = 0u;
        v188 = 0u;
        v155 = v36;
        v37 = [v155 countByEnumeratingWithState:&v185 objects:__sz count:16];
        if (v37)
        {
          v38 = *v186;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v186 != v38)
              {
                objc_enumerationMutation(v155);
              }

              v40 = *(*(&v185 + 1) + 8 * j);
              v41 = [v40 objectForKey:@"synonyms"];
              v42 = 0;
              *(&v176 + 1) = 0;
              *&v177 = 0;
              *&v176 = &v176 + 8;
              while ([v41 count] > v42)
              {
                v43 = [v41 objectAtIndexedSubscript:v42];
                v44 = v43;
                std::string::basic_string[abi:ne200100]<0>(&__p, [v43 UTF8String]);

                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v176, &__p.__r_.__value_.__l.__data_, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                ++v42;
              }

              v45 = [v40 objectForKey:@"semantic"];
              v46 = v45;
              std::string::basic_string[abi:ne200100]<0>(&v170, [v45 UTF8String]);

              if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, v170.__r_.__value_.__l.__data_, v170.__r_.__value_.__l.__size_);
              }

              else
              {
                __p = v170;
              }

              std::set<std::string>::set[abi:ne200100](v211, &v176);
              v47 = [v40 objectForKey:@"index"];
              [v47 floatValue];
              v212 = v48;

              v49 = v182[1];
              if (v182[1] >= v182[2])
              {
                v51 = 0x6DB6DB6DB6DB6DB7 * ((v182[1] - v182[0]) >> 3);
                v52 = v51 + 1;
                if ((v51 + 1) > 0x492492492492492)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                if (0xDB6DB6DB6DB6DB6ELL * ((v182[2] - v182[0]) >> 3) > v52)
                {
                  v52 = 0xDB6DB6DB6DB6DB6ELL * ((v182[2] - v182[0]) >> 3);
                }

                if ((0x6DB6DB6DB6DB6DB7 * ((v182[2] - v182[0]) >> 3)) >= 0x249249249249249)
                {
                  v53 = 0x492492492492492;
                }

                else
                {
                  v53 = v52;
                }

                v209 = v182;
                if (v53)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>>(v53);
                }

                v55 = 8 * ((v182[1] - v182[0]) >> 3);
                v207[0] = 0;
                v207[1] = v55;
                v208 = v55;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external((8 * ((v182[1] - v182[0]) >> 3)), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v56 = *&__p.__r_.__value_.__l.__data_;
                  *(8 * ((v182[1] - v182[0]) >> 3) + 0x10) = *(&__p.__r_.__value_.__l + 2);
                  *v55 = v56;
                }

                std::set<std::string>::set[abi:ne200100]((v55 + 24), v211);
                *(56 * v51 + 0x30) = v212;
                *&v208 = v208 + 56;
                v57 = v182[1];
                v58 = v182[0];
                v59 = (v207[1] + v182[0] - v182[1]);
                if (v182[0] != v182[1])
                {
                  v60 = 0;
                  do
                  {
                    v61 = v59 + v60;
                    v62 = (v58 + v60);
                    v63 = *(&v58->__r_.__value_.__l.__data_ + v60);
                    *(v61 + 2) = *(&v58->__r_.__value_.__l + v60 + 16);
                    *v61 = v63;
                    v62[1] = 0;
                    v62[2] = 0;
                    *v62 = 0;
                    *(v61 + 3) = *(&v58[1].__r_.__value_.__l.__data_ + v60);
                    v64 = (&v58[1].__r_.__value_.__l.__size_ + v60);
                    v65 = *v64;
                    *(&v59[1].__r_.__value_.__l.__size_ + v60) = *v64;
                    v66 = &v59[1].__r_.__value_.__l.__size_ + v60;
                    v67 = v58[1].__r_.__value_.__r.__words[v60 / 8 + 2];
                    *(v61 + 5) = v67;
                    if (v67)
                    {
                      *(v65 + 16) = v66;
                      v62[3] = v64;
                      *v64 = 0;
                      v58[1].__r_.__value_.__r.__words[v60 / 8 + 2] = 0;
                    }

                    else
                    {
                      *(v61 + 3) = v66;
                    }

                    *(&v59[2].__r_.__value_.__l.__data_ + v60) = *(&v58[2].__r_.__value_.__l.__data_ + v60);
                    v60 += 56;
                  }

                  while ((v58 + v60) != v57);
                  do
                  {
                    std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v58);
                    v58 = (v58 + 56);
                  }

                  while (v58 != v57);
                }

                v68 = v182[0];
                v69 = v182[2];
                v182[0] = v59;
                v157 = v208;
                *&v182[1] = v208;
                *&v208 = v68;
                *(&v208 + 1) = v69;
                v207[1] = v68;
                v207[0] = v68;
                std::__split_buffer<marrs::mrr::mr::VerbalKeywordEntry>::~__split_buffer(v207);
                v54 = v157;
              }

              else
              {
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v182[1], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v50 = *&__p.__r_.__value_.__l.__data_;
                  v182[1]->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
                  *&v49->__r_.__value_.__l.__data_ = v50;
                }

                std::set<std::string>::set[abi:ne200100](v49[1].__r_.__value_.__r.__words, v211);
                LODWORD(v49[2].__r_.__value_.__l.__data_) = v212;
                v54 = (v49 + 56);
              }

              v182[1] = v54;
              std::__tree<std::string>::destroy(v211[1]);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v170.__r_.__value_.__l.__data_);
              }

              std::__tree<std::string>::destroy(*(&v176 + 1));
            }

            v37 = [v155 countByEnumeratingWithState:&v185 objects:__sz count:16];
          }

          while (v37);
        }

        v70 = v151;
        std::string::basic_string[abi:ne200100]<0>(v207, [v151 UTF8String]);
        v71 = v196[0];
        if (!v196[0])
        {
LABEL_110:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v72 = v71;
            if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v207, v71 + 4))
            {
              break;
            }

            v71 = *v72;
            if (!*v72)
            {
              goto LABEL_110;
            }
          }

          if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v72 + 4, v207))
          {
            break;
          }

          v71 = v72[1];
          if (!v71)
          {
            goto LABEL_110;
          }
        }

        if (v72 + 7 != v182)
        {
          std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(v72 + 7, v182[0], v182[1], 0x6DB6DB6DB6DB6DB7 * ((v182[1] - v182[0]) >> 3));
        }

        if (SBYTE7(v208) < 0)
        {
          operator delete(v207[0]);
        }

        __p.__r_.__value_.__r.__words[0] = v182;
        std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      v146 = [obj countByEnumeratingWithState:&v189 objects:v214 count:16];
    }

    while (v146);
  }

  v183 = 0u;
  v184 = 0u;
  memset(v182, 0, sizeof(v182));
  v149 = v142;
  v139 = [v149 countByEnumeratingWithState:v182 objects:&__p count:16];
  if (v139)
  {
    data = v182[2]->__r_.__value_.__l.__data_;
    do
    {
      for (k = 0; k != v139; ++k)
      {
        if (v182[2]->__r_.__value_.__l.__data_ != data)
        {
          objc_enumerationMutation(v149);
        }

        v152 = *(&v182[1]->__r_.__value_.__l.__data_ + k);
        v73 = [v149 objectForKey:?];
        v180 = 0;
        v181 = 0uLL;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v156 = v73;
        v74 = [v156 countByEnumeratingWithState:&v176 objects:v207 count:16];
        if (v74)
        {
          v75 = *v177;
          do
          {
            for (m = 0; m != v74; ++m)
            {
              if (*v177 != v75)
              {
                objc_enumerationMutation(v156);
              }

              v77 = *(*(&v176 + 1) + 8 * m);
              v78 = [v77 objectForKey:@"patterns"];
              v79 = 0;
              v175[0] = 0;
              v175[1] = 0;
              v174 = v175;
              while ([v78 count] > v79)
              {
                v80 = [v78 objectAtIndexedSubscript:v79];
                v81 = v80;
                std::string::basic_string[abi:ne200100]<0>(&v170, [v80 UTF8String]);

                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v174, &v170.__r_.__value_.__l.__data_, &v170);
                if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v170.__r_.__value_.__l.__data_);
                }

                ++v79;
              }

              v82 = [v77 objectForKey:@"entity_types"];
              v83 = 0;
              v173[0] = 0;
              v173[1] = 0;
              v172 = v173;
              while ([v82 count] > v83)
              {
                v84 = [v82 objectAtIndexedSubscript:v83];
                v85 = v84;
                std::string::basic_string[abi:ne200100]<0>(&v170, [v84 UTF8String]);

                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v172, &v170.__r_.__value_.__l.__data_, &v170);
                if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v170.__r_.__value_.__l.__data_);
                }

                ++v83;
              }

              std::set<std::string>::set[abi:ne200100](&v170, &v172);
              std::set<std::string>::set[abi:ne200100](v171, &v174);
              v86 = v181;
              if (v181 >= *(&v181 + 1))
              {
                v88 = 0xAAAAAAAAAAAAAAABLL * ((v181 - v180) >> 4) + 1;
                if (v88 > 0x555555555555555)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((*(&v181 + 1) - v180) >> 4) > v88)
                {
                  v88 = 0x5555555555555556 * ((*(&v181 + 1) - v180) >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v181 + 1) - v180) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v89 = 0x555555555555555;
                }

                else
                {
                  v89 = v88;
                }

                v200 = &v180;
                if (v89)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>>(v89);
                }

                v90 = (16 * ((v181 - v180) >> 4));
                __s = 0;
                v198 = v90;
                v199 = v90;
                std::set<std::string>::set[abi:ne200100](v90, &v170);
                std::set<std::string>::set[abi:ne200100](v90 + 3, v171);
                *&v199 = v199 + 48;
                v92 = v180;
                v91 = v181;
                v201[0] = &v180;
                v201[1] = &v203;
                v201[2] = &v204;
                v93 = v180;
                v94 = (v180 + v198 - v181);
                v204 = v94;
                v203 = v94;
                v95 = v94;
                if (v180 == v181)
                {
                  v202 = 1;
                }

                else
                {
                  do
                  {
                    *v95 = *v93;
                    v96 = v93 + 1;
                    v97 = v93[1];
                    v95[1] = v97;
                    v98 = v95 + 1;
                    v99 = v93[2];
                    v95[2] = v99;
                    if (v99)
                    {
                      *(v97 + 16) = v98;
                      *v93 = v96;
                      *v96 = 0;
                      v93[2] = 0;
                    }

                    else
                    {
                      *v95 = v98;
                    }

                    v95[3] = v93[3];
                    v100 = v93 + 4;
                    v101 = v93[4];
                    v95[4] = v101;
                    v102 = v95 + 4;
                    v103 = v93[5];
                    v95[5] = v103;
                    if (v103)
                    {
                      *(v101 + 16) = v102;
                      v93[3] = v100;
                      *v100 = 0;
                      v93[5] = 0;
                    }

                    else
                    {
                      v95[3] = v102;
                    }

                    v93 += 6;
                    v95 = v204 + 6;
                    v204 += 6;
                  }

                  while (v93 != v91);
                  v202 = 1;
                  do
                  {
                    std::__tree<std::string>::destroy(v92[4]);
                    std::__tree<std::string>::destroy(v92[1]);
                    v92 += 6;
                  }

                  while (v92 != v91);
                }

                std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*>>::~__exception_guard_exceptions[abi:ne200100](v201);
                v104 = v180;
                v105 = *(&v181 + 1);
                v180 = v94;
                v158 = v199;
                v181 = v199;
                *&v199 = v104;
                *(&v199 + 1) = v105;
                v198 = v104;
                __s = v104;
                std::__split_buffer<marrs::mrr::mr::VerbalPatternEntry>::~__split_buffer(&__s);
                v87 = v158;
              }

              else
              {
                std::set<std::string>::set[abi:ne200100](v181, &v170);
                std::set<std::string>::set[abi:ne200100]((v86 + 24), v171);
                v87 = v86 + 48;
              }

              *&v181 = v87;
              std::__tree<std::string>::destroy(v171[1]);
              std::__tree<std::string>::destroy(v170.__r_.__value_.__l.__size_);
              std::__tree<std::string>::destroy(v173[0]);

              std::__tree<std::string>::destroy(v175[0]);
            }

            v74 = [v156 countByEnumeratingWithState:&v176 objects:v207 count:16];
          }

          while (v74);
        }

        v106 = v152;
        std::string::basic_string[abi:ne200100]<0>(&__s, [v152 UTF8String]);
        v107 = v194[0];
        if (!v194[0])
        {
LABEL_168:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v108 = v107;
            if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(&__s, v107 + 4))
            {
              break;
            }

            v107 = *v108;
            if (!*v108)
            {
              goto LABEL_168;
            }
          }

          if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v108 + 4, &__s))
          {
            break;
          }

          v107 = v108[1];
          if (!v107)
          {
            goto LABEL_168;
          }
        }

        if (v108 + 7 != &v180)
        {
          std::vector<marrs::mrr::mr::VerbalPatternEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>(v108 + 7, v180, v181, 0xAAAAAAAAAAAAAAABLL * ((v181 - v180) >> 4));
        }

        if (SBYTE7(v199) < 0)
        {
          operator delete(__s);
        }

        v170.__r_.__value_.__r.__words[0] = &v180;
        std::vector<marrs::mrr::mr::VerbalPatternEntry>::__destroy_vector::operator()[abi:ne200100](&v170);
      }

      v139 = [v149 countByEnumeratingWithState:v182 objects:&__p count:16];
    }

    while (v139);
  }

  v109 = v195;
  if (v161)
  {
    v110 = v159;
    v159 = &v160;
    v160[2] = 0;
    v160 = 0;
    v161 = 0;
    if (v110[1])
    {
      v111 = v110[1];
    }

    else
    {
      v111 = v110;
    }

    v170.__r_.__value_.__r.__words[0] = &v159;
    v170.__r_.__value_.__l.__size_ = v111;
    v170.__r_.__value_.__r.__words[2] = v111;
    if (!v111 || (v170.__r_.__value_.__l.__size_ = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v111), v109 == v196))
    {
      v117 = v109;
    }

    else
    {
      do
      {
        std::string::operator=((v111 + 32), (v109 + 4));
        if (v111 != v109)
        {
          std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>((v111 + 56), v109[7], v109[8], 0x6DB6DB6DB6DB6DB7 * ((v109[8] - v109[7]) >> 3));
        }

        v112 = v170.__r_.__value_.__r.__words[2];
        v113 = v160;
        v114 = &v160;
        v115 = &v160;
        if (v160)
        {
          do
          {
            while (1)
            {
              v115 = v113;
              if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v112 + 4, v113 + 4))
              {
                break;
              }

              v113 = *v115;
              v114 = v115;
              if (!*v115)
              {
                goto LABEL_189;
              }
            }

            v113 = v115[1];
          }

          while (v113);
          v114 = v115 + 1;
        }

LABEL_189:
        *v112 = 0;
        v112[1] = 0;
        v112[2] = v115;
        *v114 = v112;
        if (*v159)
        {
          v159 = *v159;
          v112 = *v114;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v160, v112);
        ++v161;
        v170.__r_.__value_.__r.__words[2] = v170.__r_.__value_.__l.__size_;
        if (v170.__r_.__value_.__l.__size_)
        {
          v170.__r_.__value_.__l.__size_ = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v170.__r_.__value_.__l.__size_);
        }

        v116 = v109[1];
        if (v116)
        {
          do
          {
            v117 = v116;
            v116 = *v116;
          }

          while (v116);
        }

        else
        {
          do
          {
            v117 = v109[2];
            v118 = *v117 == v109;
            v109 = v117;
          }

          while (!v118);
        }

        v111 = v170.__r_.__value_.__r.__words[2];
        if (v170.__r_.__value_.__r.__words[2])
        {
          v118 = v117 == v196;
        }

        else
        {
          v118 = 1;
        }

        v109 = v117;
      }

      while (!v118);
    }

    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v170);
    v109 = v117;
  }

  if (v109 != v196)
  {
    operator new();
  }

  v119 = v193;
  if (v164)
  {
    v120 = v162;
    v162 = &v163;
    v163[2] = 0;
    v163 = 0;
    v164 = 0;
    if (v120[1])
    {
      v121 = v120[1];
    }

    else
    {
      v121 = v120;
    }

    v170.__r_.__value_.__r.__words[0] = &v162;
    v170.__r_.__value_.__l.__size_ = v121;
    v170.__r_.__value_.__r.__words[2] = v121;
    if (!v121 || (v170.__r_.__value_.__l.__size_ = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v121), v119 == v194))
    {
      v127 = v119;
    }

    else
    {
      do
      {
        std::string::operator=((v121 + 32), (v119 + 4));
        if (v121 != v119)
        {
          std::vector<marrs::mrr::mr::VerbalPatternEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>((v121 + 56), v119[7], v119[8], 0xAAAAAAAAAAAAAAABLL * ((v119[8] - v119[7]) >> 4));
        }

        v122 = v170.__r_.__value_.__r.__words[2];
        v123 = v163;
        v124 = &v163;
        v125 = &v163;
        if (v163)
        {
          do
          {
            while (1)
            {
              v125 = v123;
              if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v122 + 4, v123 + 4))
              {
                break;
              }

              v123 = *v125;
              v124 = v125;
              if (!*v125)
              {
                goto LABEL_222;
              }
            }

            v123 = v125[1];
          }

          while (v123);
          v124 = v125 + 1;
        }

LABEL_222:
        *v122 = 0;
        v122[1] = 0;
        v122[2] = v125;
        *v124 = v122;
        if (*v162)
        {
          v162 = *v162;
          v122 = *v124;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v163, v122);
        ++v164;
        v170.__r_.__value_.__r.__words[2] = v170.__r_.__value_.__l.__size_;
        if (v170.__r_.__value_.__l.__size_)
        {
          v170.__r_.__value_.__l.__size_ = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v170.__r_.__value_.__l.__size_);
        }

        v126 = v119[1];
        if (v126)
        {
          do
          {
            v127 = v126;
            v126 = *v126;
          }

          while (v126);
        }

        else
        {
          do
          {
            v127 = v119[2];
            v118 = *v127 == v119;
            v119 = v127;
          }

          while (!v118);
        }

        v121 = v170.__r_.__value_.__r.__words[2];
        if (v170.__r_.__value_.__r.__words[2])
        {
          v128 = v127 == v194;
        }

        else
        {
          v128 = 1;
        }

        v119 = v127;
      }

      while (!v128);
    }

    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v170);
    v119 = v127;
  }

  if (v119 != v194)
  {
    operator new();
  }

  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(v194[0]);
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(v196[0]);

  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(v143[21]);
  v129 = v160;
  v143[20] = v159;
  v143[21] = v129;
  v130 = v161;
  v143[22] = v161;
  if (v130)
  {
    v129[2] = v137;
    v159 = &v160;
    v160 = 0;
    v161 = 0;
  }

  else
  {
    *v136 = v137;
  }

  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(v143[24]);
  v131 = v163;
  v143[23] = v162;
  v143[24] = v131;
  v132 = v164;
  v143[25] = v164;
  if (v132)
  {
    v131[2] = v138;
    v131 = 0;
    v162 = &v163;
    v163 = 0;
    v164 = 0;
  }

  else
  {
    v143[23] = v138;
  }

  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(v131);
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(v160);
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v165.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
  *(__str.__r_.__value_.__r.__words + *(__str.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC2080](&__str.__r_.__value_.__r.__words[2]);
  std::istream::~istream();
  MEMORY[0x223DC2270](&v206);
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  return v143;
}

void sub_2227B7744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, VerbalMaps *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  VerbalMaps::~VerbalMaps(a9);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(a16);
  _Unwind_Resume(a1);
}

void sub_2227B7768(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t marrs::mrr::mr::MRFilterInterface::MRFilterInterface(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2835DF5E8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  morphun::util::ULocale::ULocale();
  return a1;
}

void sub_2227B7864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 + 31) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_2227B7934(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!*result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>(v6, a1, a3);
  }

  return result;
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void ***a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_8;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if (std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v7 + 4, v5 + 4))
      {
LABEL_8:
        if (!v6)
        {
          v16 = v3;
LABEL_14:
          std::__tree<std::string>::__construct_node<std::string const&>(v15, a1, (v5 + 4));
        }

        v16 = v7;
        v11 = v7 + 1;
      }

      else
      {
        v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v16, v5 + 4);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRHypothesis>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<marrs::mrr::mr::VerbalKeywordEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 56;
          std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x249249249249249)
      {
        v14 = 0x492492492492492;
      }

      else
      {
        v14 = v13;
      }

      std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1] - v9;
  if (0x6DB6DB6DB6DB6DB7 * (v15 >> 3) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *>(__str, a3, v9);
    for (i = a1[1]; i != v16; std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](i))
    {
      i -= 56;
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *>(__str, (__str + v15), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>,marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(a1, __str + v15, a3, a1[1]);
  }
}

void std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>,marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a4 + v7), *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      std::set<std::string>::set[abi:ne200100]((a4 + v7 + 24), (a2 + v7 + 24));
      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2227B7EB8(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 56;
    std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 48)
    {
      std::__tree<std::string>::destroy(*(v4 - 16));
      std::__tree<std::string>::destroy(*(v4 - 40));
    }
  }

  return a1;
}

uint64_t std::__split_buffer<marrs::mrr::mr::VerbalPatternEntry>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__tree<std::string>::destroy(*(i - 16));
    std::__tree<std::string>::destroy(*(i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<marrs::mrr::mr::VerbalPatternEntry>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::vector<marrs::mrr::mr::VerbalPatternEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>(uint64_t ****a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      std::vector<marrs::mrr::mr::VerbalPatternEntry>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x2AAAAAAAAAAAAAALL)
      {
        v12 = 0x555555555555555;
      }

      else
      {
        v12 = v11;
      }

      std::vector<marrs::mrr::mr::VerbalPatternEntry>::__vallocate[abi:ne200100](a1, v12);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 4) >= a4)
  {
    v14 = std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *>(a2, a3, v9);

    std::vector<marrs::mrr::mr::VerbalPatternEntry>::__base_destruct_at_end[abi:ne200100](a1, v14);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *>(a2, (a2 + v13), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>(a1, (a2 + v13), a3, a1[1]);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>(uint64_t a1, const void ***a2, const void ***a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::set<std::string>::set[abi:ne200100](v4, v6);
      std::set<std::string>::set[abi:ne200100](v4 + 3, v6 + 3);
      v6 += 6;
      v4 = (v11 + 48);
      v11 += 48;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__init_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227B8348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ***std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t ***result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v17;
          leaf_high = std::__tree<std::string>::__find_leaf_high(v5, &v14, v17 + 4);
          std::__tree<std::string>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    std::__tree<std::string>::__construct_node<std::string const&>(&v15, v5, (a2 + 4));
  }

  return result;
}

void sub_2227B8550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::string>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v11 = v4[4];
        v9 = v4 + 4;
        v10 = v11;
        v12 = *(v9 + 23);
        v13 = v12 >= 0 ? *(v9 + 23) : v9[1];
        v14 = v12 >= 0 ? v9 : v10;
        v15 = (v13 >= v7 ? v7 : v13);
        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_25;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_25:
  *a2 = v5;
  return result;
}

uint64_t sub_2227B86DC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_22282FEF4();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_2227C07C8(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2227C07C8((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2227B8898()
{
  v0 = sub_2228300E4();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  sub_222830174();
  sub_2227B8970(v6, v7, &v9);
  (*(v2 + 8))(v6, v0);
  return v9;
}

void sub_2227B8970(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v72 = a3;
  v73 = a2;
  v4 = sub_222830034();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v56 - v8;
  v9 = sub_222830064();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B750, &qword_2228320B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  __swift_storeEnumTagSinglePayload(&v56 - v19, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v4);
  v21 = sub_2228300B4();
  sub_2227BA108(v18);
  sub_2227BA108(v20);
  v22 = sub_2227BDAF8(v21);

  v23 = *(v22 + 16);
  if (v23)
  {
    v57 = v5;
    v58 = v4;
    v59 = a1;
    v24 = *(v11 + 48);
    v71 = *(v12 + 80);
    v25 = (v71 + 32) & ~v71;
    v56 = v22;
    v26 = v22 + v25;
    v65 = *(v73 + 16);
    v66 = v65 + 1;
    v27 = *(v12 + 72);
    v70 = xmmword_222832090;
    v28 = v11;
    v68 = v14;
    v69 = v11;
    v67 = v25;
    while (1)
    {
      sub_2227BA170(v26, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B758, &qword_2228320B8);
      v29 = swift_allocObject();
      *(v29 + 16) = v70;
      v30 = v29 + v25;
      v31 = *(v28 + 48);
      v32 = sub_222830014();
      (*(*(v32 - 8) + 32))(v30, v14, v32);
      v33 = sub_2228300E4();
      v34 = *(v33 - 8);
      v35 = *(v34 + 16);
      v74 = v33;
      v35(v30 + v31, &v14[v24]);
      v36 = v73;

      if (!swift_isUniquelyReferenced_nonNull_native() || (v37 = *(v36 + 24) >> 1, v38 = v36, v37 <= v65))
      {
        sub_2227BF9E8();
        v38 = v39;
        v37 = *(v39 + 24) >> 1;
      }

      if (v37 <= *(v38 + 16))
      {
        break;
      }

      v40 = v23;
      v41 = v67;
      v28 = v69;
      swift_arrayInitWithCopy();

      ++*(v38 + 16);
      v14 = v68;
      sub_2227B8970(&v68[v24], v38, v72);
      v25 = v41;

      (*(v34 + 8))(&v14[v24], v74);
      v26 += v27;
      v23 = v40 - 1;
      if (v40 == 1)
      {

        v42 = v73;
        v4 = v58;
        v5 = v57;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v42 = v73;
LABEL_10:
    v43 = v60;
    sub_2228300D4();
    v44 = v63;
    sub_222830044();
    (*(v61 + 8))(v43, v62);
    v45 = v64;
    sub_222830024();
    sub_2227BA1E0();
    LOBYTE(v43) = sub_222830284();
    v46 = *(v5 + 8);
    v46(v45, v4);
    v46(v44, v4);
    if ((v43 & 1) == 0)
    {
      v47 = sub_2228300A4();
      if (v48)
      {
        v49 = v47;
        v50 = v48;
        v51 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v51 = v47 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {

          v52 = v72;
          sub_2227B9EF8();
          v53 = *(*v52 + 16);
          sub_2227B9F44(v53);
          v54 = *v52;
          *(v54 + 16) = v53 + 1;
          v55 = (v54 + 24 * v53);
          v55[4] = v49;
          v55[5] = v50;
          v55[6] = v42;
          *v52 = v54;
        }

        else
        {
        }
      }
    }
  }
}

void sub_2227B8F74(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v32 = sub_2228300E4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_222830154();
  v10 = *(v9 + 16);
  if (v10)
  {
    v28 = v9;
    v29 = v2;
    v11 = v4 + 16;
    OUTLINED_FUNCTION_3();
    v14 = v12 + v13;
    v30 = *(v11 + 56);
    v31 = v15;
    v16 = (v11 - 8);
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      v18 = v11;
      v31(v8, v14, v32);
      v19 = sub_222830084();
      (*v16)(v8, v32);
      v20 = *(v19 + 16);
      v21 = *(v17 + 16);
      if (__OFADD__(v21, v20))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v21 + v20 > *(v17 + 24) >> 1)
      {
        sub_2227BFAB4();
        v17 = v22;
      }

      if (*(v19 + 16))
      {
        v23 = (*(v17 + 24) >> 1) - *(v17 + 16);
        sub_22282FEF4();
        if (v23 < v20)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        v11 = v18;
        if (v20)
        {
          v24 = *(v17 + 16);
          v25 = __OFADD__(v24, v20);
          v26 = v24 + v20;
          if (v25)
          {
            goto LABEL_20;
          }

          *(v17 + 16) = v26;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_18;
        }
      }

      v14 += v30;
      if (!--v10)
      {

        v2 = v29;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
LABEL_16:
    MEMORY[0x28223BE20](v27);
    *(&v28 - 2) = v2;
    sub_2227B86DC(sub_2227B9F84, (&v28 - 4), v17);

    OUTLINED_FUNCTION_2();
  }
}

uint64_t sub_2227B9204@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B740, &qword_2228320A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = sub_22282FED4();
  v10[2] = v7;
  v10[3] = v6;
  v10[1] = sub_22282FE74();
  sub_22282FEE4();
  sub_22282FE84();
  v8 = sub_22282FE94();
  (*(*(v8 - 8) + 16))(v5, a1, v8);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  sub_22282FE64();
  sub_22282FEA4();
  return sub_22282FEB4();
}

void sub_2227B9378(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v5 = v4;
  sub_22282FEF4();
  OUTLINED_FUNCTION_0();
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v56 = v8 - v7;
  v53 = sub_2228300E4();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *(sub_222830154() + 16);
  v48 = v5;
  v49 = v3;
  if (!v15)
  {

    v22 = MEMORY[0x277D84F90];
LABEL_16:
    v31 = *(v22 + 16);
    if (!v31)
    {
LABEL_31:

      OUTLINED_FUNCTION_2();
      return;
    }

    OUTLINED_FUNCTION_3();
    v33 = v22 + v32;
    v52 = *(v34 + 56);
    v54 = v35;
    v36 = (v34 - 8);
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      v54(v56, v33, v55);
      if (sub_22282FE74() == v5 && v38 == v3)
      {
        break;
      }

      v40 = sub_222830514();

      if (v40)
      {
        goto LABEL_25;
      }

      (*v36)(v56, v55);
LABEL_30:
      v33 += v52;
      if (!--v31)
      {
        goto LABEL_31;
      }
    }

LABEL_25:
    v41 = sub_22282FED4();
    v43 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2227BFB74();
      v37 = v46;
    }

    v44 = *(v37 + 16);
    if (v44 >= *(v37 + 24) >> 1)
    {
      sub_2227BFB74();
      v37 = v47;
    }

    (*v36)(v56, v55);
    *(v37 + 16) = v44 + 1;
    v45 = v37 + 16 * v44;
    *(v45 + 32) = v41;
    *(v45 + 40) = v43;
    v5 = v48;
    v3 = v49;
    goto LABEL_30;
  }

  v16 = v10 + 16;
  OUTLINED_FUNCTION_3();
  v19 = v17 + v18;
  v50 = *(v16 + 56);
  v51 = v20;
  v21 = (v16 - 8);
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v16;
    v51(v14, v19, v53);
    v24 = sub_222830084();
    (*v21)(v14, v53);
    v25 = *(v24 + 16);
    v26 = *(v22 + 16);
    if (__OFADD__(v26, v25))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v26 + v25 > *(v22 + 24) >> 1)
    {
      sub_2227BFAB4();
      v22 = v27;
    }

    if (*(v24 + 16))
    {
      if ((*(v22 + 24) >> 1) - *(v22 + 16) < v25)
      {
        goto LABEL_34;
      }

      swift_arrayInitWithCopy();

      v16 = v23;
      if (v25)
      {
        v28 = *(v22 + 16);
        v29 = __OFADD__(v28, v25);
        v30 = v28 + v25;
        if (v29)
        {
          goto LABEL_35;
        }

        *(v22 + 16) = v30;
      }
    }

    else
    {

      v16 = v23;
      if (v25)
      {
        goto LABEL_33;
      }
    }

    v19 += v50;
    if (!--v15)
    {

      v3 = v49;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_2227B979C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v2 = sub_2228300E4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = *(sub_222830154() + 16);
  if (v9)
  {
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v10 = v12;
    OUTLINED_FUNCTION_3();
    v15 = v13 + v14;
    v16 = *(v11 + 56);
    do
    {
      v10(v8, v15, v2);
      sub_222830094();
      sub_2228300A4();
      if (v17)
      {

        sub_222830094();

        sub_2228300C4();
      }

      (*(v11 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);

    OUTLINED_FUNCTION_2();
  }

  else
  {
    OUTLINED_FUNCTION_2();
  }
}

void sub_2227B990C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v49 = v3;
  v50 = v4;
  v5 = sub_222830064();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v53 = v10 - v9;
  v11 = sub_222830014();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v45 - v17;
  v19 = sub_2228300E4();
  OUTLINED_FUNCTION_0();
  v57 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  sub_222830194();
  swift_allocObject();
  v25 = sub_222830184();
  v51 = v2;
  v26 = sub_222830154();
  v27 = sub_2227B9CA4(1, v26);
  v31 = (v30 >> 1) - v29;
  v56 = v25;
  v54 = v5;
  v47 = v18;
  if (v30 >> 1 == v29)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if ((v30 >> 1) <= v29)
    {
      __break(1u);
      return;
    }

    v45[1] = v27;
    v46 = v11;
    v48 = v7;
    v55 = v13;
    v32 = v57 + 16;
    v57 = *(v57 + 16);
    v33 = *(v32 + 56);
    v34 = v28 + v29 * v33;
    do
    {
      (v57)(v24, v34, v19);
      sub_2227B9D3C(v24, v25);
      (*(v32 - 8))(v24, v19);
      v34 += v33;
      --v31;
    }

    while (v31);
    swift_unknownObjectRelease();
    v11 = v46;
    v13 = v55;
    v7 = v48;
  }

  v35 = *(sub_222830144() + 16);
  if (v35)
  {
    v36 = v13 + 16;
    OUTLINED_FUNCTION_3();
    v46 = v37;
    v39 = v37 + v38;
    v50 = *(v36 + 56);
    v51 = v40;
    v48 = v7 + 1;
    v49 = (v36 - 8);
    v41 = v47;
    v55 = v36;
    v42 = v52;
    do
    {
      v51(v41, v39, v11);
      v43 = v53;
      sub_22282FFE4();
      v57 = sub_222830004();
      sub_22282FFF4();
      sub_22282FFD4();
      v44 = *v49;
      (*v49)(v41, v11);
      sub_222830104();
      (*v48)(v43, v54);
      v44(v42, v11);
      v39 += v50;
      --v35;
    }

    while (v35);
  }

  OUTLINED_FUNCTION_2();
}

uint64_t sub_2227B9CA4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2227BA0BC(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_2227BA014(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_2227B9D3C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v2 = sub_222830064();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_2228300E4();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  sub_222830074();
  if (v16)
  {
    sub_2228300A4();
    if (v17)
    {

      sub_222830134();
    }

    else
    {
      sub_2228300D4();
      sub_222830114();
      (*(v4 + 8))(v8, v2);
    }
  }

  else
  {
    sub_222830124();
  }

  sub_222830084();
  sub_222830094();
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_2();
}

void sub_2227B9EF8()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2227BF8E8();
    *v0 = v3;
  }
}

void sub_2227B9F44(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_2227BF8E8();
    *v1 = v2;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2227BA014(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_2228300E4();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2227BA0BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2227BA108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B750, &qword_2228320B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2227BA170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2227BA1E0()
{
  result = qword_27D01B760;
  if (!qword_27D01B760)
  {
    sub_222830034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01B760);
  }

  return result;
}

uint64_t sub_2227BA298(__int128 *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B768, &qword_2228320C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v111 - v6;
  v8 = *(a1 + 1);
  v126 = *(a1 + 2);
  v127 = v8;
  v9 = *a1;
  v10 = *(a1 + 3);
  v124 = *(a1 + 4);
  v125 = v10;
  v11 = a1[1];
  v122 = *a1;
  *v123 = v11;
  *&v123[9] = *(a1 + 25);
  v114 = v9;

  sub_2227BAB74(&v126, v128, &qword_27D01B770, &qword_2228320D0);
  sub_2227BAB74(&v124, v128, &qword_27D01B770, &qword_2228320D0);
  sub_2227BAB74(&v127, v128, &qword_27D01B778, &qword_2228320D8);
  sub_2227BAB74(&v125, v128, &qword_27D01B780, &qword_2228320E0);
  v115 = a2;
  v116 = sub_2227C0DBC(a2);
  if (v12)
  {
    v13 = v12;
    LODWORD(v112) = *(a1 + 40);
    v14 = sub_2227C1DB8();
    v15 = *(v14 + 16);
    v111[1] = v14;
    if (v15)
    {
      v16 = v14;
      v113 = sub_22282FE24();
      v17 = (v16 + 48);
      v117 = MEMORY[0x277D84F90];
      do
      {
        v19 = *(v17 - 2);
        v18 = *(v17 - 1);
        v20 = *v17;
        *&v128[0] = v116;
        *(&v128[0] + 1) = v13;
        v120 = v19;
        v121 = v18;
        v21 = OUTLINED_FUNCTION_3_0();
        __swift_storeEnumTagSinglePayload(v21, v22, v23, v113);
        sub_2227BAC14();

        OUTLINED_FUNCTION_0_0();
        sub_222830434();
        OUTLINED_FUNCTION_4_0();
        v25 = v24;
        sub_2227BAC68(v7, &qword_27D01B768, &qword_2228320C8);
        if ((v25 & 1) != 0 || (v128 ^ v2) < 0x4000)
        {
        }

        else
        {
          v26 = sub_2227C11B8(v19, v18, v20);

          v27 = OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_5();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = v117;
          }

          else
          {
            OUTLINED_FUNCTION_1_0();
            v31 = isUniquelyReferenced_nonNull_native;
          }

          v33 = *(v31 + 16);
          v32 = *(v31 + 24);
          if (v33 >= v32 >> 1)
          {
            OUTLINED_FUNCTION_6(v32);
            sub_2227BFC64();
            v31 = isUniquelyReferenced_nonNull_native;
          }

          *(v31 + 16) = v33 + 1;
          OUTLINED_FUNCTION_2_0(isUniquelyReferenced_nonNull_native, v29, v30, v31);
          v36 = v34 + v33 * v35;
          *(v36 + 32) = v26;
          *(v36 + 40) = v27;
          *(v36 + 48) = v128;
          *(v36 + 56) = v2;
          *(v36 + 64) = 1;
          *(v36 + 65) = v112;
        }

        v17 += 3;
        --v15;
      }

      while (v15);
    }

    else
    {
      v117 = MEMORY[0x277D84F90];
    }

    v42 = v126;
    v43 = *(v126 + 16);
    v113 = v13;
    if (v43)
    {
      v44 = sub_22282FE24();
      v45 = (v42 + 40);
      do
      {
        v46 = *(v45 - 1);
        v47 = *v45;
        *&v128[0] = v116;
        *(&v128[0] + 1) = v13;
        v120 = v46;
        v121 = v47;
        v48 = OUTLINED_FUNCTION_3_0();
        __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
        sub_2227BAC14();

        OUTLINED_FUNCTION_0_0();
        sub_222830434();
        OUTLINED_FUNCTION_4_0();
        v52 = v51;
        sub_2227BAC68(v7, &qword_27D01B768, &qword_2228320C8);

        if ((v52 & 1) == 0 && (v128 ^ v2) >= 0x4000)
        {

          v53 = OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_5();
          v54 = swift_isUniquelyReferenced_nonNull_native();
          if (v54)
          {
            v57 = v117;
          }

          else
          {
            OUTLINED_FUNCTION_1_0();
            v57 = v54;
          }

          v59 = *(v57 + 16);
          v58 = *(v57 + 24);
          if (v59 >= v58 >> 1)
          {
            OUTLINED_FUNCTION_6(v58);
            sub_2227BFC64();
            v57 = v54;
          }

          *(v57 + 16) = v59 + 1;
          OUTLINED_FUNCTION_2_0(v54, v55, v56, v57);
          v62 = v60 + v59 * v61;
          *(v62 + 32) = v114;
          *(v62 + 40) = v53;
          *(v62 + 48) = v128;
          *(v62 + 56) = v2;
          *(v62 + 64) = 2;
          *(v62 + 65) = v112;
          v13 = v113;
        }

        v45 += 2;
        --v43;
      }

      while (v43);
    }

    v63 = sub_2227C1E10();
    v64 = *(v63 + 16);
    v112 = v63;
    if (v64)
    {
      v65 = v63;
      v66 = sub_22282FE24();
      v2 = v65 + 40;
      v114 = v66;
      do
      {
        v67 = *(v2 - 8);
        v68 = *v2;
        *&v128[0] = v116;
        *(&v128[0] + 1) = v13;
        v120 = v67;
        v121 = v68;
        v69 = OUTLINED_FUNCTION_3_0();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v66);
        sub_2227BAC14();

        OUTLINED_FUNCTION_0_0();
        v72 = sub_222830434();
        v74 = v73;
        v76 = v75;
        sub_2227BAC68(v7, &qword_27D01B768, &qword_2228320C8);

        if ((v76 & 1) == 0 && (v72 ^ v74) >= 0x4000)
        {
          v77 = v122;
          v78 = v123[24];
          v79 = OUTLINED_FUNCTION_7();

          OUTLINED_FUNCTION_5();
          v80 = swift_isUniquelyReferenced_nonNull_native();
          if (v80)
          {
            v83 = v117;
          }

          else
          {
            OUTLINED_FUNCTION_1_0();
            v83 = v80;
          }

          v85 = *(v83 + 16);
          v84 = *(v83 + 24);
          if (v85 >= v84 >> 1)
          {
            OUTLINED_FUNCTION_6(v84);
            sub_2227BFC64();
            v83 = v80;
          }

          *(v83 + 16) = v85 + 1;
          OUTLINED_FUNCTION_2_0(v80, v81, v82, v83);
          v88 = v86 + v85 * v87;
          *(v88 + 32) = v77;
          *(v88 + 40) = v79;
          *(v88 + 48) = v72;
          *(v88 + 56) = v74;
          *(v88 + 64) = 3;
          *(v88 + 65) = v78;
          v13 = v113;
          v66 = v114;
        }

        v2 += 16;
        --v64;
      }

      while (v64);
    }

    v89 = *&v123[16];
    v90 = *(*&v123[16] + 16);
    if (v90)
    {
      v114 = sub_22282FE24();

      v91 = (v89 + 40);
      v112 = v89;
      do
      {
        v92 = *(v91 - 1);
        v93 = *v91;
        v120 = v116;
        v121 = v13;
        v118 = v92;
        v119 = v93;
        v94 = OUTLINED_FUNCTION_3_0();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v114);
        sub_2227BAC14();

        OUTLINED_FUNCTION_0_0();
        sub_222830434();
        OUTLINED_FUNCTION_4_0();
        v98 = v97;
        sub_2227BAC68(v7, &qword_27D01B768, &qword_2228320C8);
        if ((v98 & 1) != 0 || (&v120 ^ v2) < 0x4000)
        {
        }

        else
        {
          v99 = v123[24];
          v128[0] = v122;
          v128[1] = *v123;
          v129 = v89;
          v130 = v123[24];
          v100 = sub_2227C18B8(v92, v93, v128);

          if (v100)
          {
            v113 = OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_5();
            v101 = swift_isUniquelyReferenced_nonNull_native();
            if (v101)
            {
              v104 = v117;
            }

            else
            {
              OUTLINED_FUNCTION_1_0();
              v104 = v101;
            }

            v106 = *(v104 + 16);
            v105 = *(v104 + 24);
            if (v106 >= v105 >> 1)
            {
              OUTLINED_FUNCTION_6(v105);
              sub_2227BFC64();
              v104 = v101;
            }

            *(v104 + 16) = v106 + 1;
            OUTLINED_FUNCTION_2_0(v101, v102, v103, v104);
            v109 = v107 + v106 * v108;
            v110 = v113;
            *(v109 + 32) = v100;
            *(v109 + 40) = v110;
            *(v109 + 48) = &v120;
            *(v109 + 56) = v2;
            *(v109 + 64) = 0;
            *(v109 + 65) = v99;
            v89 = v112;
          }
        }

        v91 += 2;
        --v90;
      }

      while (v90);
    }

    return OUTLINED_FUNCTION_5();
  }

  else
  {
    if (qword_27D01B728 != -1)
    {
      swift_once();
    }

    v37 = sub_222830274();
    __swift_project_value_buffer(v37, qword_27D01BC00);
    v38 = sub_222830254();
    v39 = sub_2228303A4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2227A9000, v38, v39, "Could not extract utterance from tokenChain, unable to generate matches", v40, 2u);
      MEMORY[0x223DC2B60](v40, -1, -1);
    }

    sub_2227BAC68(&v127, &qword_27D01B778, &qword_2228320D8);
    sub_2227BAC68(&v126, &qword_27D01B770, &qword_2228320D0);
    sub_2227BAC68(&v125, &qword_27D01B780, &qword_2228320E0);
    sub_2227BAC68(&v124, &qword_27D01B770, &qword_2228320D0);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2227BAB74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2227BAC14()
{
  result = qword_27D01B738;
  if (!qword_27D01B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01B738);
  }

  return result;
}

uint64_t sub_2227BAC68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OUTLINED_FUNCTION_1_0()
{

  sub_2227BFC64();
}

id OUTLINED_FUNCTION_7()
{
  v2 = *(v0 - 280);

  return v2;
}