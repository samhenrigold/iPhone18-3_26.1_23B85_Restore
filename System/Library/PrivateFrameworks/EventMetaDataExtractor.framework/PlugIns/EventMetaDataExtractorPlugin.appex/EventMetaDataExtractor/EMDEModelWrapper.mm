@interface EMDEModelWrapper
- (BOOL)prepareInputsForText:(id)text error:(id *)error;
- (__CFArray)runEncoderForInput:()vector<float;
- (basic_string<char,)allowedHelperWords;
- (basic_string<char,)inputStringLowercased;
- (basic_string<char,)inputStringLowercasedForTitles;
- (id).cxx_construct;
- (id)runBeamDecodingOnStates:(__CFArray *)states startPosition:(int)position beamWidth:(int)width lengthPenalty:(float)penalty maxDecoderLen:(int)len tokenThreshold:(int)threshold allowedWords:()basic_string<char;
- (id)runBeamInferenceForDate;
- (id)runBeamInferenceForTitle;
- (vector<float,)inputTokens;
- (void)dealloc;
- (void)loadConfigFromFile:(id)file assetFolderPath:(id)path error:(id *)error;
- (void)setInputTokens:()vector<float;
@end

@implementation EMDEModelWrapper

- (void)loadConfigFromFile:(id)file assetFolderPath:(id)path error:(id *)error
{
  fileCopy = file;
  pathCopy = path;
  v10 = pathCopy;
  if (fileCopy && pathCopy)
  {
    [EMDEUtils loadConfigFromFile:fileCopy assetFolderPath:pathCopy error:error];
    self->_lexicon = 0;
    v11 = +[EMDEUtils config];
    v12 = [v11 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
    if (v12)
    {
      v13 = +[EMDEUtils config];
      v14 = [v13 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];

      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kLXLexiconLocaleKey, @"en");
    v19 = LXLexiconCreate();
    self->_lexicon = v19;
    if (!v19)
    {
      v20 = CFErrorCopyDescription(0);
      v21 = extractionLogHandle(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10008BB28();
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    CFRelease(Mutable);
  }

  else
  {
    v15 = modelLogHandle(pathCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10008BB98();
    }

    if (error)
    {
      v22 = NSLocalizedDescriptionKey;
      v16 = [NSString stringWithFormat:@"Found nil in input parameters for loadConfigFromFile"];
      v23 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      *error = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v17];
    }
  }

LABEL_17:
}

- (BOOL)prepareInputsForText:(id)text error:(id *)error
{
  textCopy = text;
  v137 = textCopy;
  if (!textCopy)
  {
    v13 = modelLogHandle(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10008BC5C();
    }

    if (!error)
    {
      v16 = 0;
      goto LABEL_212;
    }

    v185 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"Found nil in input parameters for prepareInputsForText"];
    v186 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v185 count:1];

    [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v15];
    *error = v16 = 0;
    goto LABEL_211;
  }

  v7 = [EMDEUtils preProcessInputMessage:textCopy];
  v144 = [v7 mutableCopy];

  v8 = +[EMDEUtils config];
  v9 = [v8 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
  if (v9)
  {
    v10 = +[EMDEUtils config];
    v11 = [v10 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
    intValue = [v11 intValue];

    if (intValue != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [v144 insertString:@" " atIndex:0];
LABEL_11:
  objc_msgSend_tokenizeInputSequence_(EMDEUtils);
  begin = self->_inputTokens.__begin_;
  if (begin)
  {
    self->_inputTokens.__end_ = begin;
    operator delete(begin);
    self->_inputTokens.__begin_ = 0;
    self->_inputTokens.__end_ = 0;
    self->_inputTokens.__cap_ = 0;
  }

  v18 = *buf;
  self->_inputTokens.__begin_ = *buf;
  v19 = *&buf[8];
  *&self->_inputTokens.__end_ = *&buf[8];
  if (v19 != v18)
  {
    v20 = +[EMDEUtils config];
    v21 = [v20 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
    selfCopy = self;
    if (v21)
    {
      v22 = +[EMDEUtils config];
      v23 = [v22 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
      v24 = v23 == 0;

      if (!v24)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    v27 = [EMDEUtils profaneRangesForText:v144 usingLexicon:self->_lexicon];
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    reverseObjectEnumerator = [v27 reverseObjectEnumerator];
    v29 = [reverseObjectEnumerator countByEnumeratingWithState:&v168 objects:v182 count:16];
    if (v29)
    {
      v30 = *v169;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v169 != v30)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          rangeValue = [*(*(&v168 + 1) + 8 * i) rangeValue];
          [v144 replaceCharactersInRange:rangeValue withString:{v33, &stru_1000AF768}];
        }

        v29 = [reverseObjectEnumerator countByEnumeratingWithState:&v168 objects:v182 count:16];
      }

      while (v29);
    }

    self = selfCopy;
LABEL_31:
    lowercaseString = [v144 lowercaseString];
    v35 = lowercaseString;
    sub_100009A74(buf, [lowercaseString UTF8String]);
    if (*(&self->_inputStringLowercased.__rep_.__l + 23) < 0)
    {
      operator delete(self->_inputStringLowercased.__rep_.__l.__data_);
    }

    *self->_inputStringLowercased.__rep_.__s.__data_ = *buf;
    *(&self->_inputStringLowercased.__rep_.__l + 2) = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;

    __s = &self->_inputStringLowercasedForTitles;
    std::string::operator=(&self->_inputStringLowercasedForTitles, &self->_inputStringLowercased);
    v36 = +[EMDEUtils config];
    v37 = [v36 objectForKeyedSubscript:@"EMDE_DISCARD_TITLE_BEAMS_WITH_DATES"];
    v38 = v37 == 0;

    if (!v38)
    {
      v141 = objc_alloc_init(DDScannerHelper);
      v39 = +[NSLocale currentLocale];
      v142 = [(DDScannerHelper *)v141 runDataDetectorsOnBody:v144 locale:v39];

      v40 = [v142 objectForKeyedSubscript:@"error"];
      LODWORD(v39) = v40 == 0;

      if (v39)
      {
        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        v165 = 0u;
        v41 = [v142 objectForKeyedSubscript:@"extractions"];
        obj = [v41 reverseObjectEnumerator];

        v42 = [obj countByEnumeratingWithState:&v164 objects:v181 count:16];
        if (v42)
        {
          v43 = *v165;
          do
          {
            for (j = 0; j != v42; j = j + 1)
            {
              if (*v165 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v164 + 1) + 8 * j);
              v46 = [v45 objectForKeyedSubscript:@"type"];
              if ([v46 isEqualToString:@"NSTextCheckingTypeDate"])
              {
                v47 = [v45 objectForKeyedSubscript:@"containsContextualWords"];
                bOOLValue = [v47 BOOLValue];

                if ((bOOLValue & 1) == 0)
                {
                  v50 = modelLogHandle(v49);
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                  {
                    v51 = [v45 objectForKeyedSubscript:@"text"];
                    *buf = 138477827;
                    *&buf[4] = v51;
                    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "EMDEModelWrapper - Removing date for title validation: %{private}@", buf, 0xCu);
                  }

                  v52 = [v45 objectForKeyedSubscript:@"range"];
                  v53 = [v52 objectForKeyedSubscript:@"start"];
                  intValue2 = [v53 intValue];

                  v55 = [v45 objectForKeyedSubscript:@"range"];
                  v56 = [v55 objectForKeyedSubscript:@"end"];
                  LODWORD(v53) = [v56 intValue];

                  [v144 replaceCharactersInRange:intValue2 withString:{v53 - intValue2, &stru_1000AF768}];
                }
              }

              else
              {
              }
            }

            v42 = [obj countByEnumeratingWithState:&v164 objects:v181 count:16];
          }

          while (v42);
        }
      }

      lowercaseString2 = [v144 lowercaseString];
      v58 = lowercaseString2;
      sub_100009A74(buf, [lowercaseString2 UTF8String]);
      if (*(&self->_inputStringLowercasedForTitles.__rep_.__l + 23) < 0)
      {
        operator delete(__s->__rep_.__l.__data_);
      }

      *__s->__rep_.__s.__data_ = *buf;
      *(&self->_inputStringLowercasedForTitles.__rep_.__l + 2) = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    memset(&__str, 0, sizeof(__str));
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v59 = +[EMDEUtils config];
    v60 = [v59 objectForKeyedSubscript:@"EMDE_ALLOWED_KEYWORDS_SINGLE_EVENT"];
    v61 = v60;
    sub_100009A74(&__p, [v60 UTF8String]);
    sub_10000F0B8(buf, &__p, 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    while (1)
    {
      v62 = sub_10000F23C(buf, &v160);
      if ((*(v62 + *(*v62 - 24) + 32) & 5) != 0)
      {
        break;
      }

      sub_100009A74(&__dst, "");
      memset(&__p, 0, sizeof(__p));
      sub_10000CA74(&__p, &__dst, &v177, 1uLL);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v63 = +[EMDEUtils config];
      v64 = [v63 objectForKeyedSubscript:@"EMDE_VALIDATE_ONLY_ALLOWED_PREFIX"];
      v65 = v64 == 0;

      if (!v65)
      {
        objc_msgSend_allowedPrefixes(EMDEUtils);
        sub_10000CF24(&__p);
        __p = __dst;
        memset(&__dst, 0, sizeof(__dst));
        v174[0] = &__dst;
        sub_10000CCE0(v174);
      }

      size = __p.__r_.__value_.__l.__size_;
      for (k = __p.__r_.__value_.__r.__words[0]; k != size; k += 24)
      {
        if (*(k + 23) < 0)
        {
          sub_100019AD4(&__dst, *k, *(k + 8));
        }

        else
        {
          v68 = *k;
          __dst.__r_.__value_.__r.__words[2] = *(k + 16);
          *&__dst.__r_.__value_.__l.__data_ = v68;
        }

        sub_10000C4D4(&__dst.__r_.__value_.__l.__data_, &v160, v174);
        v69 = *(&selfCopy->_inputStringLowercasedForTitles.__rep_.__l + 23);
        if (v69 < 0)
        {
          data = selfCopy->_inputStringLowercasedForTitles.__rep_.__l.__data_;
          v69 = selfCopy->_inputStringLowercasedForTitles.__rep_.__l.__size_;
        }

        else
        {
          data = __s;
        }

        v71 = SHIBYTE(v175);
        v72 = v174[0];
        if (v175 >= 0)
        {
          v73 = v174;
        }

        else
        {
          v73 = v174[0];
        }

        if (v175 >= 0)
        {
          v74 = HIBYTE(v175);
        }

        else
        {
          v74 = v174[1];
        }

        if (!v74)
        {
          v77 = 0;
          if ((SHIBYTE(v175) & 0x80000000) == 0)
          {
            goto LABEL_93;
          }

LABEL_92:
          operator delete(v72);
          goto LABEL_93;
        }

        v75 = &data->__rep_.__s.__data_[v69];
        if (v69 >= v74)
        {
          v78 = *v73;
          v79 = data;
          do
          {
            v80 = v69 - v74;
            if (v80 == -1)
            {
              break;
            }

            v81 = memchr(v79, v78, v80 + 1);
            if (!v81)
            {
              break;
            }

            v76 = v81;
            if (!memcmp(v81, v73, v74))
            {
              goto LABEL_85;
            }

            v79 = (v76 + 1);
            v69 = v75 - (v76 + 1);
          }

          while (v69 >= v74);
          v76 = v75;
        }

        else
        {
          v76 = &data->__rep_.__s.__data_[v69];
        }

LABEL_85:
        v77 = v76 == v75 || v76 - data == -1;
        if (v71 < 0)
        {
          goto LABEL_92;
        }

LABEL_93:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (!v77)
        {
          goto LABEL_118;
        }
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v83 = __str.__r_.__value_.__l.__size_;
      }

      sub_10000D358(&__dst, v83 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v83)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(p_dst, p_str, v83);
      }

      *(&p_dst->__r_.__value_.__l.__data_ + v83) = 32;
      if (v162 >= 0)
      {
        v86 = &v160;
      }

      else
      {
        v86 = v160;
      }

      if (v162 >= 0)
      {
        v87 = HIBYTE(v162);
      }

      else
      {
        v87 = v161;
      }

      v88 = std::string::append(&__dst, v86, v87);
      v89 = v88->__r_.__value_.__r.__words[0];
      v174[0] = v88->__r_.__value_.__l.__size_;
      *(v174 + 7) = *(&v88->__r_.__value_.__r.__words[1] + 7);
      v90 = HIBYTE(v88->__r_.__value_.__r.__words[2]);
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v89;
      __str.__r_.__value_.__l.__size_ = v174[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v174 + 7);
      *(&__str.__r_.__value_.__s + 23) = v90;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

LABEL_118:
      __dst.__r_.__value_.__r.__words[0] = &__p;
      sub_10000CCE0(&__dst);
      self = selfCopy;
    }

    std::string::operator=(&self->_allowedHelperWords, &__str);
    v91 = +[EMDEUtils config];
    v92 = [v91 objectForKeyedSubscript:@"EMDE_ALLOWED_KEYWORDS_DUAL_EVENT"];
    v93 = v92 == 0;

    if (!v93)
    {
      sub_100009A74(&__dst, " ");
      v94 = +[EMDEUtils config];
      v95 = [v94 objectForKeyedSubscript:@"EMDE_ALLOWED_KEYWORDS_DUAL_EVENT"];
      v96 = v95;
      v97 = std::string::append(&__dst, [v95 UTF8String]);
      v98 = *&v97->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v98;
      v97->__r_.__value_.__l.__size_ = 0;
      v97->__r_.__value_.__r.__words[2] = 0;
      v97->__r_.__value_.__r.__words[0] = 0;

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      sub_10000C4D4(&__p.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, &__dst);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = &__dst;
      }

      else
      {
        v99 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v100 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(&self->_allowedHelperWords, v99, v100);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v101 = +[EMDEUtils config];
    v102 = [v101 objectForKeyedSubscript:@"EMDE_ALLOWED_KEYWORDS_CONDITIONAL"];

    if (v102)
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v143 = v102;
      v103 = [v143 countByEnumeratingWithState:&v155 objects:v173 count:16];
      if (!v103)
      {
        goto LABEL_203;
      }

      v138 = v102;
      v139 = *v156;
      while (1)
      {
        v104 = 0;
        v140 = v103;
        do
        {
          if (*v156 != v139)
          {
            objc_enumerationMutation(v143);
          }

          v105 = *(*(&v155 + 1) + 8 * v104);
          sub_100009A74(&__dst, "");
          memset(&__p, 0, sizeof(__p));
          sub_10000CA74(&__p, &__dst, &v177, 1uLL);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v106 = +[EMDEUtils config];
          v107 = [v106 objectForKeyedSubscript:@"EMDE_VALIDATE_ONLY_ALLOWED_PREFIX"];
          v145 = v104;
          v108 = v107 == 0;

          if (!v108)
          {
            objc_msgSend_allowedPrefixes(EMDEUtils);
            sub_10000CF24(&__p);
            __p = __dst;
            memset(&__dst, 0, sizeof(__dst));
            v174[0] = &__dst;
            sub_10000CCE0(v174);
          }

          v109 = v105;
          sub_100009A74(&__dst, [v105 UTF8String]);
          obja = v105;
          v111 = __p.__r_.__value_.__l.__size_;
          for (m = __p.__r_.__value_.__r.__words[0]; m != v111; m += 24)
          {
            if (*(m + 23) < 0)
            {
              sub_100019AD4(v174, *m, *(m + 8));
            }

            else
            {
              v112 = *m;
              v175 = *(m + 16);
              *v174 = v112;
            }

            sub_10000C4D4(v174, &__dst.__r_.__value_.__l.__data_, &v154);
            v113 = *(&selfCopy->_inputStringLowercasedForTitles.__rep_.__l + 23);
            if (v113 < 0)
            {
              v114 = selfCopy->_inputStringLowercasedForTitles.__rep_.__l.__data_;
              v113 = selfCopy->_inputStringLowercasedForTitles.__rep_.__l.__size_;
            }

            else
            {
              v114 = __s;
            }

            v115 = SHIBYTE(v154.__r_.__value_.__r.__words[2]);
            v116 = *&v154.__r_.__value_.__l.__data_;
            if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v117 = &v154;
            }

            else
            {
              v117 = v154.__r_.__value_.__r.__words[0];
            }

            if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v118 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v118 = v154.__r_.__value_.__l.__size_;
            }

            if (v118)
            {
              v119 = &v114->__rep_.__s.__data_[v113];
              if (v113 >= v118)
              {
                v123 = v117->__r_.__value_.__s.__data_[0];
                v124 = v114;
                do
                {
                  v125 = v113 - v118;
                  if (v125 == -1)
                  {
                    break;
                  }

                  v126 = memchr(v124, v123, v125 + 1);
                  if (!v126)
                  {
                    break;
                  }

                  v120 = v126;
                  if (!memcmp(v126, v117, v118))
                  {
                    goto LABEL_159;
                  }

                  v124 = (v120 + 1);
                  v113 = v119 - (v120 + 1);
                }

                while (v113 >= v118);
              }

              v120 = v119;
LABEL_159:
              v122 = v120 == v119 || v120 - v114 == -1;
              if (v115 < 0)
              {
LABEL_166:
                operator delete(v116);
              }
            }

            else
            {
              v122 = 0;
              if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_166;
              }
            }

            if (SHIBYTE(v175) < 0)
            {
              operator delete(v174[0]);
            }

            if (!v122)
            {
              goto LABEL_199;
            }
          }

          v127 = [v143 objectForKeyedSubscript:obja];
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v128 = v127;
          v129 = [v128 countByEnumeratingWithState:&v150 objects:v172 count:16];
          if (v129)
          {
            v130 = *v151;
            while (2)
            {
              for (n = 0; n != v129; n = n + 1)
              {
                if (*v151 != v130)
                {
                  objc_enumerationMutation(v128);
                }

                if ([v144 rangeOfString:*(*(&v150 + 1) + 8 * n) options:1] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  sub_100009A74(&v154, [obja UTF8String]);
                  v132 = std::string::insert(&v154, 0, " ");
                  v133 = *&v132->__r_.__value_.__l.__data_;
                  v175 = v132->__r_.__value_.__r.__words[2];
                  *v174 = v133;
                  v132->__r_.__value_.__l.__size_ = 0;
                  v132->__r_.__value_.__r.__words[2] = 0;
                  v132->__r_.__value_.__r.__words[0] = 0;
                  if (v175 >= 0)
                  {
                    v134 = v174;
                  }

                  else
                  {
                    v134 = v174[0];
                  }

                  if (v175 >= 0)
                  {
                    v135 = HIBYTE(v175);
                  }

                  else
                  {
                    v135 = v174[1];
                  }

                  std::string::append(&selfCopy->_allowedHelperWords, v134, v135);
                  if (SHIBYTE(v175) < 0)
                  {
                    operator delete(v174[0]);
                  }

                  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v154.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_198;
                }
              }

              v129 = [v128 countByEnumeratingWithState:&v150 objects:v172 count:16];
              if (v129)
              {
                continue;
              }

              break;
            }
          }

LABEL_198:

LABEL_199:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = &__p;
          sub_10000CCE0(&__dst);
          v104 = v145 + 1;
          v102 = v138;
        }

        while ((v145 + 1) != v140);
        v103 = [v143 countByEnumeratingWithState:&v155 objects:v173 count:16];
        if (!v103)
        {
LABEL_203:

          break;
        }
      }
    }

    if (v180 < 0)
    {
      operator delete(v179[7].__locale_);
    }

    std::locale::~locale(v179);
    std::istream::~istream();
    std::ios::~ios();
    v15 = v144;
    if (SHIBYTE(v162) < 0)
    {
      operator delete(v160);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v16 = 1;
    goto LABEL_211;
  }

  v25 = modelLogHandle(begin);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10008BC1C();
  }

  if (error)
  {
    v183 = NSLocalizedDescriptionKey;
    v184 = @"Tokenisation failed.";
    v26 = [NSDictionary dictionaryWithObjects:&v184 forKeys:&v183 count:1];
    *error = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v26];
  }

  v16 = 0;
  v15 = v144;
LABEL_211:

LABEL_212:
  return v16;
}

- (id)runBeamInferenceForDate
{
  v3 = modelLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "EMDEModelWrapper - Beginning to run inference for date generation", buf, 2u);
  }

  *buf = 0;
  v66 = 0;
  v67 = 0;
  sub_100011160(buf, self->_inputTokens.__begin_, self->_inputTokens.__end_, self->_inputTokens.__end_ - self->_inputTokens.__begin_);
  v4 = +[EMDEUtils config];
  v5 = [v4 objectForKeyedSubscript:@"EMDE_DATE_TRIGGER_TOKEN_ID"];
  v6 = v5 == 0;

  if (!v6)
  {
    v7 = +[EMDEUtils config];
    v8 = [v7 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
    if (v8)
    {
      v9 = +[EMDEUtils config];
      v10 = [v9 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
      v11 = [v10 intValue] > 1;

      if (v11)
      {
        v12 = *buf;
        v13 = +[EMDEUtils config];
        v14 = [v13 objectForKeyedSubscript:@"EMDE_DATE_TRIGGER_TOKEN_ID"];
        [v14 floatValue];
        LODWORD(__src.__r_.__value_.__l.__data_) = v15;
        sub_1000114E4(buf, v12 + 4, &__src, &__src.__r_.__value_.__s.__data_[4], 1);

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = *buf;
    v17 = +[EMDEUtils config];
    v18 = [v17 objectForKeyedSubscript:@"EMDE_DATE_TRIGGER_TOKEN_ID"];
    [v18 floatValue];
    LODWORD(__src.__r_.__value_.__l.__data_) = v19;
    v20 = +[EMDEUtils config];
    v21 = [v20 objectForKeyedSubscript:@"EMDE_COLON_TOKEN_ID"];
    [v21 floatValue];
    HIDWORD(__src.__r_.__value_.__r.__words[0]) = v22;
    sub_1000114E4(buf, v16 + 4, &__src, &__src.__r_.__value_.__s.__data_[8], 2);
  }

LABEL_9:
  v23 = +[EMDEUtils config];
  v24 = [v23 objectForKeyedSubscript:@"EMDE_MAX_INPUT_LEN"];
  intValue = [v24 intValue];
  v26 = +[EMDEUtils config];
  v27 = [v26 objectForKeyedSubscript:@"EMDE_DATE_DECODER_LEN"];
  intValue2 = [v27 intValue];

  v30 = v66;
  v31 = &v66[-*buf] >> 2;
  if (v31 > (intValue - intValue2))
  {
    v29 = intValue - intValue2;
    if ((*buf + 4 * (intValue - intValue2)) != v66)
    {
      v30 = *buf + 4 * v29;
      v66 = v30;
      v31 = (4 * v29) >> 2;
    }
  }

  __p = 0;
  v63 = 0;
  v64 = 0;
  sub_100011160(&__p, *buf, v30, v31);
  v32 = [(EMDEModelWrapper *)self runEncoderForInput:&__p];
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = *buf;
    v34 = v66;
    v59 = +[EMDEUtils config];
    v56 = [v59 objectForKeyedSubscript:@"EMDE_BEAM_WIDTH"];
    intValue3 = [v56 intValue];
    v58 = +[EMDEUtils config];
    v57 = [v58 objectForKeyedSubscript:@"EMDE_DATE_LENGTH_PENALTY"];
    [v57 floatValue];
    v37 = v36;
    v54 = +[EMDEUtils config];
    [v54 objectForKeyedSubscript:@"EMDE_DATE_DECODER_LEN"];
    v55 = v38 = intValue3;
    intValue4 = [v55 intValue];
    v40 = +[EMDEUtils config];
    v41 = [v40 objectForKeyedSubscript:@"EMDE_DEFAULT_TOKEN_THRESHOLD"];
    [v41 floatValue];
    v43 = v42;
    if (*(&self->_allowedHelperWords.__rep_.__l + 23) >= 0)
    {
      size = *(&self->_allowedHelperWords.__rep_.__l + 23);
    }

    else
    {
      size = self->_allowedHelperWords.__rep_.__l.__size_;
    }

    p_src = &__src;
    sub_10000D358(&__src, size + 1);
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (*(&self->_allowedHelperWords.__rep_.__l + 23) >= 0)
      {
        p_allowedHelperWords = &self->_allowedHelperWords;
      }

      else
      {
        p_allowedHelperWords = self->_allowedHelperWords.__rep_.__l.__data_;
      }

      memmove(p_src, p_allowedHelperWords, size);
    }

    *(&p_src->__r_.__value_.__l.__data_ + size) = 32;
    v47 = *(&self->_inputStringLowercased.__rep_.__l + 23);
    if (v47 >= 0)
    {
      p_inputStringLowercased = &self->_inputStringLowercased;
    }

    else
    {
      p_inputStringLowercased = self->_inputStringLowercased.__rep_.__l.__data_;
    }

    if (v47 >= 0)
    {
      v49 = *(&self->_inputStringLowercased.__rep_.__l + 23);
    }

    else
    {
      v49 = self->_inputStringLowercased.__rep_.__l.__size_;
    }

    v50 = std::string::append(&__src, p_inputStringLowercased->__rep_.__s.__data_, v49);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v61 = v50->__r_.__value_.__r.__words[2];
    *v60 = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    LODWORD(v51) = v37;
    v52 = [(EMDEModelWrapper *)self runBeamDecodingOnStates:v32 startPosition:(v34 - v33) >> 2 beamWidth:v38 lengthPenalty:intValue4 maxDecoderLen:v43 tokenThreshold:v60 allowedWords:*&v51];
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60[0]);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v52 = 0;
  }

  if (*buf)
  {
    v66 = *buf;
    operator delete(*buf);
  }

  return v52;
}

- (id)runBeamInferenceForTitle
{
  v3 = modelLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "EMDEModelWrapper - Beginning to run inference for title generation", buf, 2u);
  }

  *buf = 0;
  v75 = 0;
  v76 = 0;
  sub_100011160(buf, self->_inputTokens.__begin_, self->_inputTokens.__end_, self->_inputTokens.__end_ - self->_inputTokens.__begin_);
  v4 = +[EMDEUtils config];
  v5 = [v4 objectForKeyedSubscript:@"EMDE_TITLE_TRIGGER_TOKEN_ID"];
  v6 = v5 == 0;

  if (!v6)
  {
    v7 = +[EMDEUtils config];
    v8 = [v7 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
    if (v8)
    {
      v9 = +[EMDEUtils config];
      v10 = [v9 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
      v11 = [v10 intValue] > 1;

      if (v11)
      {
        v12 = *buf;
        v13 = +[EMDEUtils config];
        v14 = [v13 objectForKeyedSubscript:@"EMDE_TITLE_TRIGGER_TOKEN_ID"];
        [v14 floatValue];
        LODWORD(__src.__r_.__value_.__l.__data_) = v15;
        sub_1000114E4(buf, v12 + 4, &__src, &__src.__r_.__value_.__s.__data_[4], 1);

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = *buf;
    v17 = +[EMDEUtils config];
    v18 = [v17 objectForKeyedSubscript:@"EMDE_TITLE_TRIGGER_TOKEN_ID"];
    [v18 floatValue];
    LODWORD(__src.__r_.__value_.__l.__data_) = v19;
    v20 = +[EMDEUtils config];
    v21 = [v20 objectForKeyedSubscript:@"EMDE_COLON_TOKEN_ID"];
    [v21 floatValue];
    HIDWORD(__src.__r_.__value_.__r.__words[0]) = v22;
    sub_1000114E4(buf, v16 + 4, &__src, &__src.__r_.__value_.__s.__data_[8], 2);
  }

LABEL_9:
  v23 = +[EMDEUtils config];
  v24 = [v23 objectForKeyedSubscript:@"EMDE_MAX_INPUT_LEN"];
  intValue = [v24 intValue];
  v26 = +[EMDEUtils config];
  v27 = [v26 objectForKeyedSubscript:@"EMDE_TITLE_DECODER_LEN"];
  intValue2 = [v27 intValue];

  v30 = v75;
  v31 = &v75[-*buf] >> 2;
  if (v31 > (intValue - intValue2))
  {
    v29 = intValue - intValue2;
    if ((*buf + 4 * (intValue - intValue2)) != v75)
    {
      v30 = *buf + 4 * v29;
      v75 = v30;
      v31 = (4 * v29) >> 2;
    }
  }

  __p = 0;
  v72 = 0;
  v73 = 0;
  sub_100011160(&__p, *buf, v30, v31);
  v32 = [(EMDEModelWrapper *)self runEncoderForInput:&__p];
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = *buf;
    v34 = v75;
    v68 = +[EMDEUtils config];
    v65 = [v68 objectForKeyedSubscript:@"EMDE_BEAM_WIDTH"];
    intValue3 = [v65 intValue];
    v67 = +[EMDEUtils config];
    v64 = [v67 objectForKeyedSubscript:@"EMDE_TITLE_LENGTH_PENALTY"];
    [v64 floatValue];
    v37 = v36;
    v66 = +[EMDEUtils config];
    v63 = [v66 objectForKeyedSubscript:@"EMDE_TITLE_DECODER_LEN"];
    intValue4 = [v63 intValue];
    v39 = +[EMDEUtils config];
    v40 = [v39 objectForKeyedSubscript:@"EMDE_DEFAULT_TOKEN_THRESHOLD"];
    [v40 floatValue];
    v42 = v41;
    if (*(&self->_allowedHelperWords.__rep_.__l + 23) >= 0)
    {
      size = *(&self->_allowedHelperWords.__rep_.__l + 23);
    }

    else
    {
      size = self->_allowedHelperWords.__rep_.__l.__size_;
    }

    p_src = &__src;
    sub_10000D358(&__src, size + 1);
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (*(&self->_allowedHelperWords.__rep_.__l + 23) >= 0)
      {
        p_allowedHelperWords = &self->_allowedHelperWords;
      }

      else
      {
        p_allowedHelperWords = self->_allowedHelperWords.__rep_.__l.__data_;
      }

      memmove(p_src, p_allowedHelperWords, size);
    }

    *(&p_src->__r_.__value_.__l.__data_ + size) = 32;
    v46 = *(&self->_inputStringLowercasedForTitles.__rep_.__l + 23);
    if (v46 >= 0)
    {
      p_inputStringLowercasedForTitles = &self->_inputStringLowercasedForTitles;
    }

    else
    {
      p_inputStringLowercasedForTitles = self->_inputStringLowercasedForTitles.__rep_.__l.__data_;
    }

    if (v46 >= 0)
    {
      v48 = *(&self->_inputStringLowercasedForTitles.__rep_.__l + 23);
    }

    else
    {
      v48 = self->_inputStringLowercasedForTitles.__rep_.__l.__size_;
    }

    v49 = std::string::append(&__src, p_inputStringLowercasedForTitles->__rep_.__s.__data_, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v70 = v49->__r_.__value_.__r.__words[2];
    *v69 = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    LODWORD(v50) = v37;
    v51 = [(EMDEModelWrapper *)self runBeamDecodingOnStates:v32 startPosition:(v34 - v33) >> 2 beamWidth:intValue3 lengthPenalty:intValue4 maxDecoderLen:v42 tokenThreshold:v69 allowedWords:*&v50];
    if (SHIBYTE(v70) < 0)
    {
      operator delete(v69[0]);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v52 = +[EMDEUtils config];
    v53 = [v52 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
    if (v53)
    {
      v54 = +[EMDEUtils config];
      v55 = [v54 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
      v56 = v55 == 0;
    }

    else
    {
      v56 = 1;
    }

    if (v51)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v57)
    {
      v58 = [v51 objectForKey:@"prediction"];
      v59 = [EMDEUtils profaneRangesForText:v58 usingLexicon:self->_lexicon];
      v60 = [v59 count];
      if (v60)
      {
        v61 = extractionLogHandle(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          LOWORD(__src.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Title predicted contains OVS language. Ignoring prediction.", &__src, 2u);
        }

        v51 = 0;
      }
    }
  }

  else
  {
    v51 = 0;
  }

  if (*buf)
  {
    v75 = *buf;
    operator delete(*buf);
  }

  return v51;
}

- (__CFArray)runEncoderForInput:()vector<float
{
  v38 = 0;
  objc_msgSend_loadExtractionModelWithError_(EMDEUtils, a2, &v38);
  v4 = v38;
  v5 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  if (v6)
  {
    v7 = modelLogHandle(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BC9C();
    }

    v8 = 0;
  }

  else
  {
    v9 = a3->__end_ - a3->__begin_;
    LODWORD(v34) = 0;
    sub_1000116E4(&v36, (v9 >> 2), &v34);
    if (v36 != v37)
    {
      v10 = 0;
      v11 = (v37 - v36 - 4) >> 2;
      v12 = vdupq_n_s64(v11);
      v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v14 = (v36 + 8);
      do
      {
        v15 = vdupq_n_s64(v10);
        v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_100090CA0)));
        if (vuzp1_s16(v16, *v12.i8).u8[0])
        {
          *(v14 - 2) = v10;
        }

        if (vuzp1_s16(v16, *&v12).i8[2])
        {
          *(v14 - 1) = (v10 + 1);
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_100090C90)))).i32[1])
        {
          *v14 = (v10 + 2);
          v14[1] = (v10 + 3);
        }

        v10 += 4;
        v14 += 4;
      }

      while (v13 != v10);
    }

    LODWORD(__p) = 0;
    sub_1000116E4(&v34, (v9 >> 2), &__p);
    v30 = 1065353216;
    v32 = 0;
    v33 = 0;
    __p = 0;
    sub_1000040DC(&__p, &v30, &__p, 1uLL);
    v17 = kMRLNeuralNetworkTensorInfoInputDimensionKey;
    v42[0] = kMRLNeuralNetworkTensorInfoInputDimensionKey;
    v18 = [NSNumber numberWithInt:1];
    v19 = kMRLNeuralNetworkTensorInfoSequenceLengthKey;
    v42[1] = kMRLNeuralNetworkTensorInfoSequenceLengthKey;
    v43[0] = v18;
    v20 = [NSNumber numberWithInt:v9 >> 2];
    v43[1] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

    v40[0] = v17;
    v22 = [NSNumber numberWithInt:1];
    v40[1] = v19;
    v41[0] = v22;
    v23 = [NSNumber numberWithInt:1];
    v41[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

    v25 = MRLNeuralNetworkTensorCreate();
    v26 = MRLNeuralNetworkTensorCreate();
    v27 = MRLNeuralNetworkTensorCreate();
    v28 = MRLNeuralNetworkTensorCreate();
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkSetInputTensor();
    MRLNeuralNetworkSetInputTensor();
    MRLNeuralNetworkSetInputTensor();
    MRLNeuralNetworkSetInputTensor();
    MRLNeuralNetworkPredict();
    v8 = MRLNeuralNetworkCopyStates();
    MRLNeuralNetworkClear();
    CFRelease(v25);
    CFRelease(v26);
    CFRelease(v27);
    CFRelease(v28);
    a3->__end_ = a3->__begin_;
    v37 = v36;
    v35 = v34;
    v32 = __p;

    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

- (id)runBeamDecodingOnStates:(__CFArray *)states startPosition:(int)position beamWidth:(int)width lengthPenalty:(float)penalty maxDecoderLen:(int)len tokenThreshold:(int)threshold allowedWords:()basic_string<char
{
  if (states)
  {
    v11 = *&len;
    v13 = *&width;
    v14 = *&position;
    v39 = 0;
    objc_msgSend_loadExtractionModelWithError_(EMDEUtils, a2, &v39);
    v16 = v39;
    v17 = v16;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = cf == 0;
    }

    if (v18)
    {
      v19 = modelLogHandle(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10008BD0C();
      }

      v20 = 0;
    }

    else
    {
      v21 = [EMDEBeamSearchHandler alloc];
      *&v23 = penalty;
      *&v22 = threshold;
      v19 = [(EMDEBeamSearchHandler *)v21 initWithModel:&cf beamWidth:v13 timeSteps:v11 lengthPenalty:v23 tokenThreshold:v22];
      if (*(&a9->__rep_.__l + 23) < 0)
      {
        sub_100019AD4(__p, a9->__rep_.__l.__data_, a9->__rep_.__l.__size_);
      }

      else
      {
        *__p = *a9->__rep_.__s.__data_;
        v38 = *(&a9->__rep_.__l + 2);
      }

      v24 = [v19 getTopBeamWithModelState:states startPosition:v14 allowedWords:__p];
      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p[0]);
      }

      v25 = MRLNeuralNetworkClear();
      if (v24)
      {
        objc_msgSend_currentPrediction(v24);
        if (v36 >= 0)
        {
          v26 = &v34;
        }

        else
        {
          v26 = v34;
        }

        v27 = [NSString stringWithUTF8String:v26];
        if (v36 < 0)
        {
          operator delete(v34);
        }

        v42[0] = v27;
        v41[0] = @"prediction";
        v41[1] = @"score";
        [v24 score];
        v29 = v28;
        objc_msgSend_tokens(v24);
        *&v30 = v29 / (((v35 - v34) >> 2) - 1);
        v31 = [NSNumber numberWithFloat:v30];
        v42[1] = v31;
        v41[2] = @"scoreWithPenalty";
        [v24 averageScore];
        v32 = [NSNumber numberWithFloat:?];
        v42[2] = v32;
        v20 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }
      }

      else
      {
        v27 = modelLogHandle(v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LOWORD(v34) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "EMDEModelWrapper - No Beam generated.", &v34, 2u);
        }

        v20 = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v17 = modelLogHandle(self);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10008BD7C();
    }

    v20 = 0;
  }

  return v20;
}

- (void)dealloc
{
  lexicon = self->_lexicon;
  if (lexicon)
  {
    CFRelease(lexicon);
  }

  v4.receiver = self;
  v4.super_class = EMDEModelWrapper;
  [(EMDEModelWrapper *)&v4 dealloc];
}

- (vector<float,)inputTokens
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_100011160(retstr, self->_inputTokens.__begin_, self->_inputTokens.__end_, self->_inputTokens.__end_ - self->_inputTokens.__begin_);
}

- (void)setInputTokens:()vector<float
{
  p_inputTokens = &self->_inputTokens;
  if (p_inputTokens != a3)
  {
    sub_1000111DC(p_inputTokens, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (basic_string<char,)inputStringLowercased
{
  if (*(&result[2].__rep_.__l + 23) < 0)
  {
    return sub_100019AD4(retstr, result[2].__rep_.__l.__data_, result[2].__rep_.__l.__size_);
  }

  *retstr = result[2];
  return result;
}

- (basic_string<char,)inputStringLowercasedForTitles
{
  if (*(&result[3].__rep_.__l + 23) < 0)
  {
    return sub_100019AD4(retstr, result[3].__rep_.__l.__data_, result[3].__rep_.__l.__size_);
  }

  *retstr = result[3];
  return result;
}

- (basic_string<char,)allowedHelperWords
{
  if (*(&result[4].__rep_.__l + 23) < 0)
  {
    return sub_100019AD4(retstr, result[4].__rep_.__l.__data_, result[4].__rep_.__l.__size_);
  }

  *retstr = result[4];
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  return self;
}

@end