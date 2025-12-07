@interface MarrsSiriNLUTypesConverter
+ (QRInteraction)toPluginInteraction:(QRInteraction *__return_ptr)retstr;
+ (QRRequest)toPluginRequestObj:(SEL)obj;
+ (QRToken)internalTokentoPluginToken:(QRToken *__return_ptr)retstr;
+ (QRToken)toPluginToken:(QRToken *__return_ptr)retstr;
+ (QRUtterance)toPluginUtterance:(QRUtterance *__return_ptr)retstr;
+ (Uuid)toPluginUuid:(id)uuid;
+ (basic_string<char,)NSString2StdString:(std::allocator<char>> *__return_ptr)retstr;
+ (id)StdVectorStdString2NSMutableArrayNSString:()vector<std:(std::allocator<std::string>> *)std :string;
+ (id)fromPluginHypothesis:(QRHypothesis *)hypothesis;
+ (id)fromPluginInteraction:(QRInteraction *)interaction;
+ (id)fromPluginResponseObj:(const void *)obj;
+ (id)fromPluginResponsePtr:(const void *)ptr;
+ (id)fromPluginToken:(QRToken *)token;
+ (id)fromPluginUtterance:(QRUtterance *)utterance;
+ (id)fromPluginUuid:(Uuid)uuid;
+ (id)internalTokenfromPluginToken:(QRToken *)token;
+ (id)stdString2NSString:()basic_string<char;
+ (int)fromPluginRepetitionType:(int)type;
+ (int)toPluginRequester:(int)requester;
+ (unique_ptr<marrs::qr::orchestration::QRRequest,)toPluginRequestPtr:(id)ptr;
+ (vector<std::string,)NSMutableArrayNSString2StdVectorStdString:(id)string;
@end

@implementation MarrsSiriNLUTypesConverter

+ (id)fromPluginResponseObj:(const void *)obj
{
  v4 = objc_opt_new();
  v5 = *(obj + 1);
  if (*obj != v5)
  {
    v6 = *obj + 16;
    do
    {
      v16 = *(v6 - 16);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *v6, *(v6 + 8));
      }

      else
      {
        v17 = *v6;
      }

      v7 = v6 - 16;
      v18 = *(v6 + 24);
      v19 = *(v6 + 32);
      v12 = v16;
      v8 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v17;
      }

      v14 = v18;
      v15 = v19;
      v9 = [MarrsSiriNLUTypesConverter fromPluginHypothesis:&v12];
      [v4 addObject:{v9, v12}];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v8 < 0)
        {
LABEL_14:
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }

      else if (v8 < 0)
      {
        goto LABEL_14;
      }

      v6 += 56;
    }

    while (v7 + 56 != v5);
  }

  v10 = objc_alloc_init(MEMORY[0x277D5DE50]);
  [v10 setRewriteHypotheses:v4];
  [v10 setRepetitionType:{+[MarrsSiriNLUTypesConverter fromPluginRepetitionType:](MarrsSiriNLUTypesConverter, "fromPluginRepetitionType:", *(obj + 6))}];

  return v10;
}

+ (id)fromPluginResponsePtr:(const void *)ptr
{
  v4 = objc_opt_new();
  v5 = **ptr;
  v6 = *(*ptr + 8);
  if (v5 != v6)
  {
    v7 = v5 + 16;
    do
    {
      v17 = *(v7 - 16);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *v7, *(v7 + 8));
      }

      else
      {
        v18 = *v7;
      }

      v8 = v7 - 16;
      v19 = *(v7 + 24);
      v20 = *(v7 + 32);
      v13 = v17;
      v9 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v18;
      }

      v15 = v19;
      v16 = v20;
      v10 = [MarrsSiriNLUTypesConverter fromPluginHypothesis:&v13];
      [v4 addObject:{v10, v13}];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v9 < 0)
        {
LABEL_14:
          operator delete(v18.__r_.__value_.__l.__data_);
        }
      }

      else if (v9 < 0)
      {
        goto LABEL_14;
      }

      v7 += 56;
    }

    while (v8 + 56 != v6);
  }

  v11 = objc_alloc_init(MEMORY[0x277D5DE50]);
  [v11 setRewriteHypotheses:v4];
  [v11 setRepetitionType:{+[MarrsSiriNLUTypesConverter fromPluginRepetitionType:](MarrsSiriNLUTypesConverter, "fromPluginRepetitionType:", *(*ptr + 24))}];

  return v11;
}

+ (QRRequest)toPluginRequestObj:(SEL)obj
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  originalInteractions = [v5 originalInteractions];
  std::vector<marrs::qr::orchestration::QRInteraction>::reserve(&v28, [originalInteractions count]);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  originalInteractions2 = [v5 originalInteractions];
  v8 = [originalInteractions2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(originalInteractions2);
        }

        objc_msgSend_toPluginInteraction_(MarrsSiriNLUTypesConverter, v15);
        v11 = v29;
        if (v29 >= v30)
        {
          v29 = std::vector<marrs::qr::orchestration::QRInteraction>::__emplace_back_slow_path<marrs::qr::orchestration::QRInteraction>(&v28, &v15);
          if (SHIBYTE(v22) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          *(v29 + 16) = 0;
          *(v11 + 24) = 0;
          *v11 = 0;
          *(v11 + 8) = 0;
          *v11 = v15;
          *(v11 + 16) = v16;
          v15 = 0uLL;
          v16 = 0;
          *(v11 + 32) = 0;
          *(v11 + 40) = 0;
          *(v11 + 24) = v17;
          v17 = 0uLL;
          *(v11 + 40) = v18;
          *(v11 + 48) = 0;
          v18 = 0;
          *(v11 + 56) = 0;
          *(v11 + 64) = 0;
          *(v11 + 48) = v19;
          *(v11 + 64) = v20;
          v19 = 0uLL;
          v20 = 0;
          v12 = __p;
          *(v11 + 88) = v22;
          *(v11 + 72) = v12;
          v22 = 0;
          __p = 0uLL;
          *(v11 + 96) = v23;
          v29 = v11 + 112;
        }

        v31 = &v19;
        std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v31);
        v31 = &v17;
        std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&v31);
        v31 = &v15;
        std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&v31);
        ++v10;
      }

      while (v8 != v10);
      v8 = [originalInteractions2 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  cdmRequestId = [v5 cdmRequestId];
  retstr->var0 = +[MarrsSiriNLUTypesConverter toPluginRequester:](MarrsSiriNLUTypesConverter, "toPluginRequester:", [cdmRequestId requester]);
  retstr->var1.var0 = 0;
  retstr->var1.var1 = 0;
  retstr->var1.var2 = 0;
  *&v15 = &retstr->var1;
  BYTE8(v15) = 0;
  if (v29 != v28)
  {
    std::vector<marrs::qr::orchestration::QRInteraction>::__vallocate[abi:ne200100](&retstr->var1, 0x6DB6DB6DB6DB6DB7 * ((v29 - v28) >> 4));
  }

  *&v15 = &v28;
  std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](&v15);

  return result;
}

+ (unique_ptr<marrs::qr::orchestration::QRRequest,)toPluginRequestPtr:(id)ptr
{
  v4 = *MEMORY[0x277D85DE8];
  ptrCopy = ptr;
  operator new();
}

+ (int)toPluginRequester:(int)requester
{
  if ((requester - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return requester;
  }
}

+ (id)fromPluginHypothesis:(QRHypothesis *)hypothesis
{
  v4 = objc_alloc_init(MEMORY[0x277D5DE58]);
  v5 = [MarrsSiriNLUTypesConverter fromPluginUuid:hypothesis->var0.var0, hypothesis->var0.var1];
  [v4 setAsrId:v5];

  if (*(&hypothesis->var1.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, hypothesis->var1.var0.var1.var0, hypothesis->var1.var0.var1.var1);
  }

  else
  {
    __p = hypothesis->var1;
  }

  v6 = [MarrsSiriNLUTypesConverter stdString2NSString:&__p];
  [v4 setUtterance:v6];

  if (*(&__p.var0.var1 + 23) < 0)
  {
    operator delete(__p.var0.var1.var0);
  }

  [v4 setConfidence:{*&hypothesis[1].var0.var0, *__p.var0.var0.var0, *(&__p.var0.var1 + 2)}];
  [v4 setRewriteType:{+[MarrsSiriNLUTypesConverter fromPluginRewriteType:](MarrsSiriNLUTypesConverter, "fromPluginRewriteType:", LODWORD(hypothesis[1].var0.var1))}];

  return v4;
}

+ (id)fromPluginInteraction:(QRInteraction *)interaction
{
  v4 = objc_opt_new();
  interactionCopy = interaction;
  var1 = interaction->var0.var1;
  v18 = v4;
  if (interaction->var0.var0 != var1)
  {
    p_var1 = &interaction->var0.var0->var1;
    do
    {
      v28 = *&p_var1[-1].var0.var1.var1;
      if (*(&p_var1->var0.var1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, p_var1->var0.var1.var0, p_var1->var0.var1.var1);
      }

      else
      {
        v6 = *p_var1->var0.var0.var0;
        v29.__r_.__value_.__r.__words[2] = *(&p_var1->var0.var1 + 2);
        *&v29.__r_.__value_.__l.__data_ = v6;
      }

      v7 = &p_var1[-1].var0.var0.var0[8];
      memset(&v30, 0, sizeof(v30));
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v30, p_var1[1].var0.var1.var0, p_var1[1].var0.var1.var1, 0xCCCCCCCCCCCCCCCDLL * ((p_var1[1].var0.var1.var1 - p_var1[1].var0.var1.var0) >> 5));
      memset(&v31, 0, sizeof(v31));
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v31, p_var1[2].var0.var1.var0, p_var1[2].var0.var1.var1, 0xCCCCCCCCCCCCCCCDLL * ((p_var1[2].var0.var1.var1 - p_var1[2].var0.var1.var0) >> 5));
      var0 = p_var1[3].var0.var1.var0;
      v37 = v28;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v38, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      }

      else
      {
        v38 = v29;
      }

      memset(&v39, 0, sizeof(v39));
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v39, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_, 0xCCCCCCCCCCCCCCCDLL * ((v30.__r_.__value_.__l.__size_ - v30.__r_.__value_.__r.__words[0]) >> 5));
      memset(&v40, 0, sizeof(v40));
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v40, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_, 0xCCCCCCCCCCCCCCCDLL * ((v31.__r_.__value_.__l.__size_ - v31.__r_.__value_.__r.__words[0]) >> 5));
      v41 = var0;
      v8 = [MarrsSiriNLUTypesConverter fromPluginUtterance:&v37];
      [v18 addObject:v8];

      v42[0] = &v40;
      std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v42);
      v42[0] = &v39;
      std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v42);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      v42[0] = &v31;
      std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v42);
      v42[0] = &v30;
      std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v42);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      p_var1 += 4;
    }

    while (v7 + 96 != var1);
  }

  v9 = objc_opt_new();
  v11 = interactionCopy->var2.var0;
  for (i = interactionCopy->var2.var1; v11 != i; v11 = (v11 + 160))
  {
    marrs::qr::orchestration::QRToken::QRToken(&v28, v11);
    marrs::qr::orchestration::QRToken::QRToken(&v20, &v28);
    v12 = [MarrsSiriNLUTypesConverter fromPluginToken:&v20];
    [v9 addObject:v12];

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    v42[0] = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    v42[0] = &v30.__r_.__value_.__l.__size_;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
    if (v30.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v29.__r_.__value_.__l.__size_);
    }

    if (v29.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v28);
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277D5DE60]);
  [v13 setOriginalUtterances:v18];
  [v13 setSiriResponses:v9];
  if (*(&interactionCopy->var3.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&var3, interactionCopy->var3.var0.var1.var0, interactionCopy->var3.var0.var1.var1);
  }

  else
  {
    var3 = interactionCopy->var3;
  }

  v14 = [MarrsSiriNLUTypesConverter stdString2NSString:&var3];
  [v13 setLocale:v14];

  if (SHIBYTE(var3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(var3.__r_.__value_.__l.__data_);
  }

  [v13 setTap2edit:LOBYTE(interactionCopy[1].var0.var0)];
  [v13 setStartTimestamp:interactionCopy[1].var0.var1];

  return v13;
}

+ (QRInteraction)toPluginInteraction:(QRInteraction *__return_ptr)retstr
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = v1;
  v55 = 0;
  v56 = 0uLL;
  originalUtterances = [v3 originalUtterances];
  v34 = v3;
  v5 = [originalUtterances count];
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      __p[2] = &v55;
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>>(v5);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  [v3 originalUtterances];
  obj = v33 = retstr;
  v6 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v6)
  {
    v7 = *v52;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(obj);
        }

        objc_msgSend_toPluginUtterance_(MarrsSiriNLUTypesConverter);
        v9 = v56;
        if (v56 >= *(&v56 + 1))
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 5);
          v13 = v12 + 1;
          if (v12 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((*(&v56 + 1) - v55) >> 5) > v13)
          {
            v13 = 0x5555555555555556 * ((*(&v56 + 1) - v55) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v56 + 1) - v55) >> 5) >= 0x155555555555555)
          {
            v14 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v14 = v13;
          }

          v61 = &v55;
          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>>(v14);
          }

          v15 = 32 * ((v56 - v55) >> 5);
          v58 = 0;
          v59 = v15;
          *(&v60 + 1) = 0;
          *v15 = *v37;
          v16 = *__p;
          *(v15 + 32) = __p[2];
          *(v15 + 16) = v16;
          memset(__p, 0, sizeof(__p));
          *(v15 + 40) = 0;
          *(v15 + 48) = 0;
          *(v15 + 56) = 0;
          *(v15 + 40) = *v39;
          *(v15 + 56) = *&v39[16];
          memset(v39, 0, sizeof(v39));
          *(v15 + 64) = 0;
          *(v15 + 72) = 0;
          *(v15 + 80) = 0;
          *(v15 + 64) = *v40;
          *(v15 + 80) = *&v40[16];
          memset(v40, 0, sizeof(v40));
          *(v15 + 88) = v41;
          *&v60 = 96 * v12 + 96;
          v17 = &v55[12 * v12] - v56;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>,marrs::qr::orchestration::QRUtterance*>(&v55, v55, v56, &v55[v15 / 8] - v56);
          v18 = v55;
          v19 = *(&v56 + 1);
          v55 = v17;
          v36 = v60;
          v56 = v60;
          *&v60 = v18;
          *(&v60 + 1) = v19;
          v58 = v18;
          v59 = v18;
          std::__split_buffer<marrs::qr::orchestration::QRUtterance>::~__split_buffer(&v58);
          v11 = v36;
        }

        else
        {
          *v56 = *v37;
          v10 = *__p;
          *(v9 + 32) = __p[2];
          *(v9 + 40) = 0;
          *(v9 + 16) = v10;
          memset(__p, 0, sizeof(__p));
          *(v9 + 48) = 0;
          *(v9 + 56) = 0;
          *(v9 + 40) = *v39;
          *v39 = 0uLL;
          *(v9 + 56) = *&v39[16];
          *(v9 + 64) = 0;
          *&v39[16] = 0;
          *(v9 + 72) = 0;
          *(v9 + 80) = 0;
          *(v9 + 64) = *v40;
          *(v9 + 80) = *&v40[16];
          memset(v40, 0, sizeof(v40));
          *(v9 + 88) = v41;
          v11 = v9 + 96;
        }

        *&v56 = v11;
        v58 = v40;
        std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = v39;
        std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v58);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v6);
  }

  v58 = 0;
  v59 = 0;
  *&v60 = 0;
  siriResponses = [v34 siriResponses];
  std::vector<marrs::qr::orchestration::QRToken>::reserve(&v58, [siriResponses count]);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  siriResponses2 = [v34 siriResponses];
  v22 = [siriResponses2 countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v22)
  {
    v23 = *v48;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(siriResponses2);
        }

        objc_msgSend_internalTokentoPluginToken_(MarrsSiriNLUTypesConverter);
        v25 = v59;
        if (v59 >= v60)
        {
          v59 = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken>(&v58, v37);
          if (SHIBYTE(v46) < 0)
          {
            operator delete(v45);
          }
        }

        else
        {
          v26 = *v37;
          v59[2] = __p[0];
          *v25 = v26;
          v37[1] = 0;
          __p[0] = 0;
          v37[0] = 0;
          v27 = *v39;
          *(v25 + 3) = *&__p[1];
          v25[5] = v27;
          v25[6] = 0;
          __p[2] = 0;
          *v39 = 0;
          __p[1] = 0;
          v25[7] = 0;
          v25[8] = 0;
          *(v25 + 3) = *&v39[8];
          v25[8] = *v40;
          *&v39[8] = 0;
          *&v39[16] = 0;
          *v40 = 0;
          v28 = *&v40[8];
          *(v25 + 11) = v41;
          *(v25 + 9) = v28;
          v29 = v42;
          v25[15] = v43;
          *(v25 + 13) = v29;
          v43 = 0;
          v42 = 0uLL;
          *(v25 + 128) = v44;
          v30 = v45;
          v25[19] = v46;
          *(v25 + 17) = v30;
          v46 = 0;
          v45 = 0uLL;
          v59 = v25 + 20;
        }

        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        v57 = &v39[8];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v57);
        if ((v39[7] & 0x80000000) != 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v37[0]);
        }
      }

      v22 = [siriResponses2 countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v22);
  }

  v33->var0.var0 = 0;
  v33->var0.var1 = 0;
  v33->var0.var2 = 0;
  std::vector<marrs::qr::orchestration::QRUtterance>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(v33, v55, v56, 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 5));
  *&v33->var1.var0 = 0u;
  *&v33->var1.var2 = 0u;
  *&v33->var2.var1 = 0u;
  std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v33->var2, v58, v59, 0xCCCCCCCCCCCCCCCDLL * ((v59 - v58) >> 5));
  locale = [v34 locale];
  objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
  LOBYTE(v33[1].var0.var0) = [v34 tap2edit];
  v33[1].var0.var1 = [v34 startTimestamp];

  v37[0] = &v58;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v37);
  v37[0] = &v55;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](v37);

  return result;
}

+ (id)fromPluginUtterance:(QRUtterance *)utterance
{
  v4 = objc_opt_new();
  var0 = utterance[1].var0.var0;
  for (i = utterance[1].var0.var1; var0 != i; var0 = (var0 + 160))
  {
    marrs::qr::orchestration::QRToken::QRToken(&v33, var0);
    marrs::qr::orchestration::QRToken::QRToken(&v25, &v33);
    v7 = [MarrsSiriNLUTypesConverter internalTokenfromPluginToken:&v25];
    [v4 addObject:v7];

    if (v32 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    v41 = &v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    v41 = v36;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  v8 = objc_opt_new();
  var1 = utterance[1].var1.var0.var1.var1;
  for (j = *(&utterance[1].var1.var0.var1 + 2); var1 != j; var1 = (var1 + 160))
  {
    marrs::qr::orchestration::QRToken::QRToken(&v33, var1);
    marrs::qr::orchestration::QRToken::QRToken(&v17, &v33);
    v11 = [MarrsSiriNLUTypesConverter fromPluginToken:&v17];
    [v8 addObject:v11];

    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    v41 = &v20;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    v41 = v36;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277D5DE70]);
  v13 = [MarrsSiriNLUTypesConverter fromPluginUuid:utterance->var0.var0, utterance->var0.var1];
  [v12 setAsrId:v13];

  if (*(&utterance->var1.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, utterance->var1.var0.var1.var0, utterance->var1.var0.var1.var1);
  }

  else
  {
    v16 = utterance->var1;
  }

  v14 = [MarrsSiriNLUTypesConverter stdString2NSString:&v16];
  [v12 setUtterance:v14];

  if (*(&v16.var0.var1 + 23) < 0)
  {
    operator delete(v16.var0.var1.var0);
  }

  [v12 setNluInternalTokens:{v4, *v16.var0.var0.var0, *(&v16.var0.var1 + 2)}];
  [v12 setAsrUtteranceTokens:v8];
  [v12 setConfidence:*&utterance[2].var0.var1];

  return v12;
}

+ (QRUtterance)toPluginUtterance:(QRUtterance *__return_ptr)retstr
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = v1;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  nluInternalTokens = [v3 nluInternalTokens];
  std::vector<marrs::qr::orchestration::QRToken>::reserve(&v55, [nluInternalTokens count]);

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  nluInternalTokens2 = [v3 nluInternalTokens];
  v6 = [nluInternalTokens2 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v6)
  {
    v7 = *v52;
    do
    {
      v8 = 0;
      do
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(nluInternalTokens2);
        }

        objc_msgSend_internalTokentoPluginToken_(MarrsSiriNLUTypesConverter);
        v9 = v56;
        if (v56 >= v57)
        {
          v56 = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken>(&v55, v38);
          if (SHIBYTE(v50) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          v10 = *v38;
          *(v56 + 2) = v39;
          *v9 = v10;
          v38[1] = 0;
          v39 = 0;
          v38[0] = 0;
          v11 = v41;
          *(v9 + 24) = v40;
          *(v9 + 5) = v11;
          *(v9 + 6) = 0;
          v41 = 0;
          v40 = 0uLL;
          *(v9 + 7) = 0;
          *(v9 + 8) = 0;
          *(v9 + 3) = v42;
          *(v9 + 8) = v43;
          v42 = 0uLL;
          v43 = 0;
          v12 = v44;
          *(v9 + 88) = v45;
          *(v9 + 72) = v12;
          v13 = v46;
          *(v9 + 15) = v47;
          *(v9 + 104) = v13;
          v47 = 0;
          v46 = 0uLL;
          *(v9 + 128) = v48;
          v14 = __p;
          *(v9 + 19) = v50;
          *(v9 + 136) = v14;
          v50 = 0;
          __p = 0uLL;
          v56 = (v9 + 160);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }

        v35 = &v42;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40);
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(v38[0]);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [nluInternalTokens2 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v6);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  asrUtteranceTokens = [v3 asrUtteranceTokens];
  std::vector<marrs::qr::orchestration::QRToken>::reserve(&v35, [asrUtteranceTokens count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  asrUtteranceTokens2 = [v3 asrUtteranceTokens];
  v17 = [asrUtteranceTokens2 countByEnumeratingWithState:&v31 objects:v59 count:16];
  if (v17)
  {
    v18 = *v32;
    do
    {
      v19 = 0;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(asrUtteranceTokens2);
        }

        objc_msgSend_toPluginToken_(MarrsSiriNLUTypesConverter);
        v20 = v36;
        if (v36 >= v37)
        {
          v36 = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken>(&v35, v38);
          if (SHIBYTE(v50) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          v21 = *v38;
          *(v36 + 2) = v39;
          *v20 = v21;
          v38[1] = 0;
          v39 = 0;
          v38[0] = 0;
          v22 = v41;
          *(v20 + 24) = v40;
          *(v20 + 5) = v22;
          *(v20 + 6) = 0;
          v41 = 0;
          v40 = 0uLL;
          *(v20 + 7) = 0;
          *(v20 + 8) = 0;
          *(v20 + 3) = v42;
          *(v20 + 8) = v43;
          v42 = 0uLL;
          v43 = 0;
          v23 = v44;
          *(v20 + 88) = v45;
          *(v20 + 72) = v23;
          v24 = v46;
          *(v20 + 15) = v47;
          *(v20 + 104) = v24;
          v47 = 0;
          v46 = 0uLL;
          *(v20 + 128) = v48;
          v25 = __p;
          *(v20 + 19) = v50;
          *(v20 + 136) = v25;
          v50 = 0;
          __p = 0uLL;
          v36 = (v20 + 160);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }

        v58 = &v42;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40);
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(v38[0]);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [asrUtteranceTokens2 countByEnumeratingWithState:&v31 objects:v59 count:16];
    }

    while (v17);
  }

  asrId = [v3 asrId];
  retstr->var0.var0 = [MarrsSiriNLUTypesConverter toPluginUuid:asrId];
  retstr->var0.var1 = v27;
  utterance = [v3 utterance];
  objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
  retstr[1].var0.var0 = 0;
  retstr[1].var0.var1 = 0;
  retstr[1].var1.var0.var1.var0 = 0;
  std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&retstr[1], v55, v56, 0xCCCCCCCCCCCCCCCDLL * ((v56 - v55) >> 5));
  retstr[1].var1.var0.var1.var1 = 0;
  *(&retstr[1].var1.var0.var1 + 2) = 0;
  retstr[2].var0.var0 = 0;
  std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&retstr[1].var1.var0.var1.var1, v35, v36, 0xCCCCCCCCCCCCCCCDLL * ((v36 - v35) >> 5));
  [v3 confidence];
  retstr[2].var0.var1 = v29;

  v38[0] = &v35;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v38);
  v38[0] = &v55;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v38);

  return result;
}

+ (id)internalTokenfromPluginToken:(QRToken *)token
{
  v4 = objc_alloc_init(MEMORY[0x277D5DED0]);
  if (*(&token->var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, token->var0.var0.var1.var0, token->var0.var0.var1.var1);
  }

  else
  {
    v11 = *token;
  }

  v5 = [MarrsSiriNLUTypesConverter stdString2NSString:&v11];
  [v4 setValue:v5];

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (*(&token[1].var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, token[1].var0.var0.var1.var0, token[1].var0.var0.var1.var1);
  }

  else
  {
    v10 = token[1];
  }

  v6 = [MarrsSiriNLUTypesConverter stdString2NSString:&v10];
  [v4 setCleanValue:v6];

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  memset(v9, 0, sizeof(v9));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v9, token[2].var0.var0.var1.var0, token[2].var0.var0.var1.var1, 0xAAAAAAAAAAAAAAABLL * ((token[2].var0.var0.var1.var1 - token[2].var0.var0.var1.var0) >> 3));
  v7 = [MarrsSiriNLUTypesConverter StdVectorStdString2NSMutableArrayNSString:v9];
  [v4 setNormalizedValues:v7];

  v12 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  [v4 setIsSignificant:token[3].var0.var0.var0.var0[0]];
  [v4 setIsWhitespace:token[3].var0.var0.var0.var0[1]];

  return v4;
}

+ (id)fromPluginToken:(QRToken *)token
{
  v4 = objc_alloc_init(MEMORY[0x277D5DE68]);
  if (*(&token->var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, token->var0.var0.var1.var0, token->var0.var0.var1.var1);
  }

  else
  {
    v9 = *token;
  }

  v5 = [MarrsSiriNLUTypesConverter stdString2NSString:&v9];
  [v4 setValue:v5];

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  [v4 setStartIndex:LODWORD(token[3].var0.var0.var1.var1)];
  [v4 setEndIndex:*(&token[3].var0.var0.var1 + 4)];
  [v4 setAsrConfidence:*&token[4].var0.var0.var1.var0];
  if (token[5].var0.var0.var0.var0[7] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, token[4].var0.var0.var1.var1, *(&token[4].var0.var0.var1 + 2));
  }

  else
  {
    __p = *(token + 104);
  }

  v6 = [MarrsSiriNLUTypesConverter stdString2NSString:&__p];
  [v4 setPhoneSequence:v6];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [v4 setRemoveSpaceAfter:{token[5].var0.var0.var0.var0[8], *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];

  return v4;
}

+ (QRToken)internalTokentoPluginToken:(QRToken *__return_ptr)retstr
{
  v3 = v1;
  value = [v3 value];
  objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
  cleanValue = [v3 cleanValue];
  objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
  normalizedValues = [v3 normalizedValues];
  objc_msgSend_NSMutableArrayNSString2StdVectorStdString_(MarrsSiriNLUTypesConverter);
  marrs::qr::orchestration::QRToken::QRToken(retstr, &v11, &__p, v8, [v3 isSignificant], objc_msgSend(v3, "isWhitespace"));
  v13 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  retstr[3].var0.var0.var1.var1 = [v3 begin];
  *(&retstr[3].var0.var0.var1 + 2) = [v3 end];
  retstr[4].var0.var0.var1.var0 = 0x408F400000000000;
  MEMORY[0x223DC1FB0](&retstr[4].var0.var0.var1.var1, "");
  retstr[5].var0.var0.var0.var0[8] = 0;

  return result;
}

+ (QRToken)toPluginToken:(QRToken *__return_ptr)retstr
{
  v3 = v1;
  value = [v3 value];
  objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
  marrs::qr::orchestration::QRToken::QRToken(retstr, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  retstr[3].var0.var0.var1.var1 = [v3 startIndex];
  *(&retstr[3].var0.var0.var1 + 2) = [v3 endIndex];
  [v3 asrConfidence];
  retstr[4].var0.var0.var1.var0 = v5;
  phoneSequence = [v3 phoneSequence];
  objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
  if (retstr[5].var0.var0.var0.var0[7] < 0)
  {
    operator delete(retstr[4].var0.var0.var1.var1);
  }

  *&retstr[4].var0.var0.var1.var1 = *__p;
  retstr[5].var0.var0.var1.var0 = v9;
  HIBYTE(v9) = 0;
  LOBYTE(__p[0]) = 0;

  retstr[5].var0.var0.var0.var0[8] = [v3 removeSpaceAfter];
  return result;
}

+ (id)fromPluginUuid:(Uuid)uuid
{
  var1 = uuid.var1;
  var0 = uuid.var0;
  v5 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v5 setLowInt:var1];
  [v5 setHighInt:var0];

  return v5;
}

+ (Uuid)toPluginUuid:(id)uuid
{
  uuidCopy = uuid;
  highInt = [uuidCopy highInt];
  lowInt = [uuidCopy lowInt];

  v6 = highInt;
  v7 = lowInt;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

+ (int)fromPluginRepetitionType:(int)type
{
  if (type >= 4)
  {
    return 1;
  }

  else
  {
    return type;
  }
}

+ (id)StdVectorStdString2NSMutableArrayNSString:()vector<std:(std::allocator<std::string>> *)std :string
{
  v4 = objc_opt_new();
  var0 = std->var0;
  var1 = std->var1;
  if (std->var0 != var1)
  {
    do
    {
      if (SHIBYTE(var0->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, var0->__r_.__value_.__l.__data_, var0->__r_.__value_.__l.__size_);
      }

      else
      {
        v11 = *var0;
      }

      v7 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v11;
      }

      v8 = [MarrsSiriNLUTypesConverter stdString2NSString:&__p];
      [v4 addObject:v8];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v7 < 0)
        {
LABEL_13:
          operator delete(v11.__r_.__value_.__l.__data_);
        }
      }

      else if (v7 < 0)
      {
        goto LABEL_13;
      }

      ++var0;
    }

    while (var0 != var1);
  }

  return v4;
}

+ (id)stdString2NSString:()basic_string<char
{
  if (*(&var0->var0.var1 + 23) < 0)
  {
    var0 = var0->var0.var1.var0;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:var0];
}

+ (vector<std::string,)NSMutableArrayNSString2StdVectorStdString:(id)string
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if (v5)
  {
    std::vector<std::string>::reserve(retstr, [v5 count]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = *v28;
      v9 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
          var1 = retstr->var1;
          var2 = retstr->var2;
          if (var1 >= var2)
          {
            v13 = 0xAAAAAAAAAAAAAAABLL * ((var1 - retstr->var0) >> 3);
            v14 = v13 + 1;
            if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v15 = 0xAAAAAAAAAAAAAAABLL * ((var2 - retstr->var0) >> 3);
            if (2 * v15 > v14)
            {
              v14 = 2 * v15;
            }

            if (v15 >= 0x555555555555555)
            {
              v16 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v16 = v14;
            }

            v31.__end_cap_.__value_ = retstr;
            if (v16)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v16);
            }

            v17 = 24 * v13;
            *(v17 + 16) = v26;
            *v17 = *__p;
            v26 = 0;
            *__p = 0uLL;
            v18 = (24 * v13 + 24);
            v19 = retstr->var1 - retstr->var0;
            v20 = (24 * v13 - v19);
            memcpy((v17 - v19), retstr->var0, v19);
            var0 = retstr->var0;
            retstr->var0 = v20;
            retstr->var1 = v18;
            v22 = retstr->var2;
            retstr->var2 = 0;
            v31.__end_ = var0;
            v31.__end_cap_.__value_ = v22;
            v31.__first_ = var0;
            v31.__begin_ = var0;
            std::__split_buffer<std::string>::~__split_buffer(&v31);
            retstr->var1 = v18;
            v6 = v9;
          }

          else
          {
            *(var1 + 2) = v26;
            *var1 = *__p;
            retstr->var1 = var1 + 24;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  return result;
}

+ (basic_string<char,)NSString2StdString:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v1;
  v5 = v3;
  if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(retstr, [v3 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(retstr, "");
  }

  return result;
}

@end