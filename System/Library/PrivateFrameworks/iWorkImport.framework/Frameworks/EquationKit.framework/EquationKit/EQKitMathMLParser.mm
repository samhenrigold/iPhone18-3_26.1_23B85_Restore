@interface EQKitMathMLParser
- (BOOL)isElement:(int)element allowedInState:(int)state;
- (EQKitMathMLParser)initWithDocument:(_xmlDoc *)document node:(_xmlNode *)node source:(id)source environment:(id)environment;
- (id).cxx_construct;
- (id)parse;
- (id)parseChildrenAsArrayFromXMLNode:(_xmlNode *)node;
- (id)parseChildrenAsNodeFromXMLNode:(_xmlNode *)node;
- (id)parseChildrenAsTokenContentFromXMLNode:(_xmlNode *)node;
- (id)parseNode:(_xmlNode *)node;
- (int)state;
- (void)dealloc;
- (void)parseAttributesForNode:(id)node withXMLNode:(_xmlNode *)lNode;
- (void)popState;
- (void)reportError:(int64_t)error withNode:(_xmlNode *)node;
@end

@implementation EQKitMathMLParser

- (EQKitMathMLParser)initWithDocument:(_xmlDoc *)document node:(_xmlNode *)node source:(id)source environment:(id)environment
{
  RootElement = node;
  if (document && !node)
  {
    RootElement = xmlDocGetRootElement(document);
  }

  v14.receiver = self;
  v14.super_class = EQKitMathMLParser;
  v11 = [(EQKitMathMLParser *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->mRootNode = RootElement;
    v11->mNS = xmlSearchNsByHref(document, RootElement, "http://www.w3.org/1998/Math/MathML");
    v12->mEnvironment = environment;
    v12->mSource = source;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLParser;
  [(EQKitMathMLParser *)&v3 dealloc];
}

- (void)reportError:(int64_t)error withNode:(_xmlNode *)node
{
  if (!self->mError)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    name = "";
    if (node && node->name)
    {
      name = node->name;
    }

    v9 = [v7 initWithUTF8String:name];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    if (error <= 6 && (v11 = [mainBundle localizedStringForKey:off_27A680ED8[error] value:&stru_2884CC9F8 table:0]) != 0)
    {
      v12 = MEMORY[0x277CBEAC0];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v9];
      v14 = [v12 dictionaryWithObjectsAndKeys:{v13, *MEMORY[0x277CCA450], 0}];
    }

    else
    {
      v14 = 0;
    }

    self->mError = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"EQKitErrorDomain" code:error userInfo:v14];
  }
}

- (id)parse
{
  if (sub_275CB5AF8(self->mRootNode, self->mNS, "math"))
  {
    v3 = [[EQKitMathMLMath alloc] initFromXMLNode:self->mRootNode parser:self];
    [(EQKitMathMLParser *)self parseAttributesForNode:v3 withXMLNode:self->mRootNode];
    if (v3 && !self->mError)
    {
      v4 = [[EQKitEquation alloc] initWithRoot:v3 source:self->mSource];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    [(EQKitMathMLParser *)self reportError:1 withNode:self->mRootNode];
    return 0;
  }

  return v4;
}

- (id)parseChildrenAsArrayFromXMLNode:(_xmlNode *)node
{
  array = [MEMORY[0x277CBEB18] array];
  if (node)
  {
    for (i = node->children; i; i = i->next)
    {
      if (sub_275CB5B80(i))
      {
        v7 = [(EQKitMathMLParser *)self parseNode:i];
        if (!v7)
        {
          return 0;
        }

        [array addObject:v7];
      }
    }
  }

  return array;
}

- (id)parseChildrenAsNodeFromXMLNode:(_xmlNode *)node
{
  result = [(EQKitMathMLParser *)self parseChildrenAsArrayFromXMLNode:node];
  if (result)
  {
    v4 = result;
    if ([result count] == 1)
    {
      v5 = [v4 objectAtIndex:0];
    }

    else
    {
      v5 = [[EQKitMathMLMRow alloc] initWithChildren:v4];
    }

    return v5;
  }

  return result;
}

- (void)parseAttributesForNode:(id)node withXMLNode:(_xmlNode *)lNode
{
  mathMLAttributes = [node mathMLAttributes];
  properties = lNode->properties;
  if (properties)
  {
    v9 = mathMLAttributes;
    v10 = (mathMLAttributes + 8);
    v86 = *(MEMORY[0x277D82820] + 24);
    v87 = *MEMORY[0x277D82820];
    do
    {
      ns = properties->ns;
      if (ns)
      {
        v12 = ns == lNode->ns;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 || !self->mAttributeCollection)
      {
        goto LABEL_79;
      }

      sub_275CA6274(__p, properties->name);
      v13 = sub_275C95E94(__p, 0);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 != 1 || !v9)
      {
        goto LABEL_29;
      }

      v14 = *v10;
      if (!*v10)
      {
        goto LABEL_79;
      }

      v15 = v10;
      do
      {
        if (v14[7] >= 2)
        {
          v15 = v14;
        }

        v14 = *&v14[2 * (v14[7] < 2)];
      }

      while (v14);
      if (v15 != v10 && v15[7] < 3)
      {
        v13 = 2;
      }

      else
      {
        if (v13 != 10 || !v9)
        {
          goto LABEL_39;
        }

LABEL_29:
        v16 = *v10;
        if (!*v10)
        {
          goto LABEL_79;
        }

        v17 = v10;
        do
        {
          if (v16[7] >= 32)
          {
            v17 = v16;
          }

          v16 = *&v16[2 * (v16[7] < 32)];
        }

        while (v16);
        if (v17 != v10 && v17[7] < 33)
        {
          v13 = 32;
        }

        else
        {
          if (v13 != 26 || !v9)
          {
            goto LABEL_49;
          }

LABEL_39:
          v18 = *v10;
          if (!*v10)
          {
            goto LABEL_79;
          }

          v19 = v10;
          do
          {
            if (v18[7] >= 29)
            {
              v19 = v18;
            }

            v18 = *&v18[2 * (v18[7] < 29)];
          }

          while (v18);
          if (v19 != v10 && v19[7] < 30)
          {
            v13 = 29;
          }

          else
          {
            if (v13 != 27 || !v9)
            {
              goto LABEL_52;
            }

LABEL_49:
            v20 = *v10;
            if (!*v10)
            {
              goto LABEL_79;
            }

            v21 = v10;
            do
            {
              if (v20[7] >= 30)
              {
                v21 = v20;
              }

              v20 = *&v20[2 * (v20[7] < 30)];
            }

            while (v20);
            if (v21 != v10 && v21[7] < 31)
            {
              v13 = 30;
            }

            else
            {
LABEL_52:
              if (v13 == 28 && v9)
              {
                v22 = *v10;
                if (!*v10)
                {
                  goto LABEL_79;
                }

                v23 = v10;
                do
                {
                  if (v22[7] >= 31)
                  {
                    v23 = v22;
                  }

                  v22 = *&v22[2 * (v22[7] < 31)];
                }

                while (v22);
                if (v23 == v10)
                {
                  v13 = 28;
                  goto LABEL_63;
                }

                if (v23[7] <= 31)
                {
                  v13 = 31;
                }

                else
                {
                  v13 = 28;
                }
              }

              if (!v9)
              {
                goto LABEL_70;
              }
            }
          }
        }
      }

LABEL_63:
      v24 = *v10;
      if (*v10)
      {
        v25 = v10;
        do
        {
          if (v24[7] >= v13)
          {
            v25 = v24;
          }

          v24 = *&v24[2 * (v24[7] < v13)];
        }

        while (v24);
        if (v25 != v10 && v13 >= v25[7])
        {
          sub_275CB5D70(lNode, properties, &__str);
          switch(v13)
          {
            case 1:
            case 24:
            case 25:
              v34 = sub_275C95C18(&__str, 0);
              if (!v34)
              {
                goto LABEL_77;
              }

              mAttributeCollection = self->mAttributeCollection;
              __p[0] = node;
              LODWORD(__p[1]) = v13;
              *&v96 = __p;
              v36 = sub_275CD6E20(mAttributeCollection + 16, __p, &std::piecewise_construct, &v96);
              goto LABEL_90;
            case 2:
              v52 = sub_275C95CEC(&__str, 0);
              if (!v52)
              {
                goto LABEL_77;
              }

              v61 = self->mAttributeCollection;
              __p[0] = node;
              LODWORD(__p[1]) = 2;
              *&v96 = __p;
              v54 = sub_275CD6E20(v61 + 19, __p, &std::piecewise_construct, &v96);
              goto LABEL_158;
            case 3:
              sub_275C961BC(&__str, __p);
              v57 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_149;
              }

              v62 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = 3;
              sub_275CD72B0(v62, v62 + 31, __p, &v96);
              goto LABEL_148;
            case 4:
              sub_275C95F68(&__str, __p);
              v57 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_149;
              }

              v63 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = 4;
              sub_275CD72B0(v63, v63 + 34, __p, &v96);
              goto LABEL_148;
            case 5:
            case 6:
            case 8:
            case 14:
            case 16:
            case 39:
            case 45:
              v34 = sub_275C95DC0(&__str, 0);
              if (!v34)
              {
                goto LABEL_77;
              }

              v35 = self->mAttributeCollection;
              __p[0] = node;
              LODWORD(__p[1]) = v13;
              *&v96 = __p;
              v36 = sub_275CD6E20(v35 + 1, __p, &std::piecewise_construct, &v96);
LABEL_90:
              *(v36 + 48) = v34;
              goto LABEL_77;
            case 7:
              v52 = sub_275C9599C(&__str, 0);
              if (!v52)
              {
                goto LABEL_77;
              }

              v60 = self->mAttributeCollection;
              __p[0] = node;
              LODWORD(__p[1]) = 7;
              *&v96 = __p;
              v54 = sub_275CD6E20(v60 + 40, __p, &std::piecewise_construct, &v96);
              goto LABEL_158;
            case 9:
              *&v96 = 0;
              BYTE8(v96) = 1;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_275CAF534(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __dst = __str;
              }

              v75 = sub_275C9523C(&__dst, &v96);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if (v75)
              {
                v76 = self->mAttributeCollection;
                __p[0] = node;
                LODWORD(__p[1]) = 9;
                v97[0] = __p;
                v77 = sub_275CD6F24(v76 + 37, __p, &std::piecewise_construct, v97);
                *(v77 + 48) = v96;
                *(v77 + 56) = BYTE8(v96);
              }

              goto LABEL_77;
            case 10:
            case 11:
            case 26:
            case 27:
            case 28:
            case 40:
            case 41:
            case 43:
              sub_275CBB09C(&v96, &__str, 0);
              if (v96)
              {
                v32 = self->mAttributeCollection;
                __p[0] = node;
                LODWORD(__p[1]) = v13;
                v97[0] = __p;
                v33 = sub_275CD6FC8(v32 + 4, __p, &std::piecewise_construct, v97);
                *(v33 + 48) = v96;
                goto LABEL_77;
              }

              if (v13 != 41)
              {
                goto LABEL_77;
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__str.__r_.__value_.__l.__size_ != 8)
                {
                  goto LABEL_77;
                }

                p_str = __str.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
                {
                  goto LABEL_77;
                }

                p_str = &__str;
              }

              if (p_str->__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
              {
                v71 = self->mAttributeCollection;
                __p[0] = node;
                LODWORD(__p[1]) = 41;
                v97[0] = __p;
                v72 = sub_275CD6FC8(v71 + 4, __p, &std::piecewise_construct, v97);
                *(v72 + 48) = 1;
                *(v72 + 56) = 0x7FEFFFFFFFFFFFFFLL;
              }

              goto LABEL_77;
            case 12:
            case 13:
            case 18:
            case 19:
              sub_275CD5CEC(self->mAttributeCollection, &__str, v13, node);
              goto LABEL_77;
            case 15:
              v52 = sub_275C95B44(&__str, 0);
              if (!v52)
              {
                goto LABEL_77;
              }

              v53 = self->mAttributeCollection;
              __p[0] = node;
              LODWORD(__p[1]) = 15;
              *&v96 = __p;
              v54 = sub_275CD6E20(v53 + 43, __p, &std::piecewise_construct, &v96);
              goto LABEL_158;
            case 17:
              v52 = sub_275C95A70(&__str, 0);
              if (!v52)
              {
                goto LABEL_77;
              }

              v55 = self->mAttributeCollection;
              __p[0] = node;
              LODWORD(__p[1]) = 17;
              *&v96 = __p;
              v54 = sub_275CD6E20(v55 + 46, __p, &std::piecewise_construct, &v96);
              goto LABEL_158;
            case 20:
              sub_275C96410(&__str, __p);
              v50 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = 20;
              sub_275CD73B8(v50, v50 + 13, __p, &v96);
              *&v96 = __p;
              sub_275C97BF0(&v96);
              goto LABEL_77;
            case 21:
            case 22:
              LOBYTE(v88) = 0;
              v39 = sub_275C967DC(&__str, &v88);
              if (LOBYTE(v88) == 1)
              {
                v40 = self->mAttributeCollection;
                __p[0] = node;
                LODWORD(__p[1]) = v13;
                *&v96 = __p;
                *(sub_275CD7174(v40 + 49, __p, &std::piecewise_construct, &v96) + 48) = v39;
              }

              goto LABEL_77;
            case 23:
              LOBYTE(v88) = 0;
              v68 = sub_275C96A90(&__str, &v88);
              if (LOBYTE(v88) == 1)
              {
                v69 = self->mAttributeCollection;
                __p[0] = node;
                LODWORD(__p[1]) = 23;
                *&v96 = __p;
                *(sub_275CD7174(v69 + 52, __p, &std::piecewise_construct, &v96) + 48) = v68;
              }

              goto LABEL_77;
            case 29:
              sub_275CB705C(__p, &__str);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_77;
              }

              v65 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = 29;
              v97[0] = &v96;
              v42 = sub_275CD742C(v65 + 58, &v96, &std::piecewise_construct, v97);
              goto LABEL_153;
            case 30:
              sub_275CB705C(__p, &__str);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_77;
              }

              v64 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = 30;
              v97[0] = &v96;
              v42 = sub_275CD742C(v64 + 58, &v96, &std::piecewise_construct, v97);
              goto LABEL_153;
            case 31:
              sub_275CB705C(__p, &__str);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_77;
              }

              v67 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = 31;
              v97[0] = &v96;
              v42 = sub_275CD742C(v67 + 58, &v96, &std::piecewise_construct, v97);
              goto LABEL_153;
            case 32:
            case 33:
              sub_275CB705C(__p, &__str);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_77;
              }

              v41 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = v13;
              v97[0] = &v96;
              v42 = sub_275CD742C(v41 + 58, &v96, &std::piecewise_construct, v97);
LABEL_153:
              *(v42 + 48) = *__p;
              *(v42 + 64) = v90;
              goto LABEL_77;
            case 34:
              sub_275C96CF8(&__str, __p);
              v57 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_149;
              }

              v58 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = 34;
              sub_275CD72B0(v58, v58 + 25, __p, &v96);
              goto LABEL_148;
            case 35:
              v45 = objc_alloc(MEMORY[0x277CCACA8]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v46 = &__str;
              }

              else
              {
                v46 = __str.__r_.__value_.__r.__words[0];
              }

              v47 = [v45 initWithUTF8String:{v46, v85}];
              if ([v47 length] == 1)
              {
                v48 = [v47 characterAtIndex:0];
                if (([objc_msgSend(MEMORY[0x277CCA900] "whitespaceAndNewlineCharacterSet")] & 1) == 0)
                {
                  v49 = self->mAttributeCollection;
                  __p[0] = node;
                  LODWORD(__p[1]) = 35;
                  *&v96 = __p;
                  *(sub_275CD74D0(v49 + 61, __p, &std::piecewise_construct, &v96) + 48) = v48;
                }
              }

              goto LABEL_77;
            case 36:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__str.__r_.__value_.__l.__size_ == 4 && *__str.__r_.__value_.__l.__data_ == 1852401780)
                {
LABEL_185:
                  *&v31 = 0x500000005;
                  v85 = v31;
                  v81 = 0.5;
                  goto LABEL_189;
                }

                if (__str.__r_.__value_.__l.__size_ == 6 && *__str.__r_.__value_.__l.__data_ == 1768187245 && *(__str.__r_.__value_.__r.__words[0] + 4) == 28021)
                {
                  goto LABEL_188;
                }

                if (__str.__r_.__value_.__l.__size_ != 5)
                {
LABEL_186:
                  sub_275CBB09C(__p, &__str, 5);
                  *&v82 = __p[0];
                  if (!LODWORD(__p[0]))
                  {
                    goto LABEL_77;
                  }

                  v85 = v82;
                  v81 = *&__p[1];
                  goto LABEL_189;
                }

                v74 = __str.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 4)
                {
                  if (LODWORD(__str.__r_.__value_.__l.__data_) == 1852401780)
                  {
                    goto LABEL_185;
                  }

                  goto LABEL_186;
                }

                if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 5)
                {
                  if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 6)
                  {
                    goto LABEL_186;
                  }

                  if (LODWORD(__str.__r_.__value_.__l.__data_) != 1768187245 || WORD2(__str.__r_.__value_.__r.__words[0]) != 28021)
                  {
                    goto LABEL_186;
                  }

LABEL_188:
                  *&v31 = 0x500000005;
                  v85 = v31;
                  v81 = 1.0;
LABEL_189:
                  v83 = self->mAttributeCollection;
                  __p[0] = node;
                  LODWORD(__p[1]) = 36;
                  *&v96 = __p;
                  v84 = sub_275CD6FC8(v83 + 4, __p, &std::piecewise_construct, &v96);
                  *(v84 + 48) = v85;
                  *(v84 + 56) = v81;
LABEL_77:
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_79;
                }

                v74 = &__str;
              }

              data = v74->__r_.__value_.__l.__data_;
              v79 = v74->__r_.__value_.__s.__data_[4];
              if (data == 1667852404 && v79 == 107)
              {
                *&v31 = 0x500000005;
                v85 = v31;
                v81 = 2.0;
                goto LABEL_189;
              }

              goto LABEL_186;
            case 37:
              v52 = sub_275C9726C(&__str, 0);
              if (!v52)
              {
                goto LABEL_77;
              }

              v59 = self->mAttributeCollection;
              __p[0] = node;
              LODWORD(__p[1]) = 37;
              *&v96 = __p;
              v54 = sub_275CD6E20(v59 + 22, __p, &std::piecewise_construct, &v96);
              goto LABEL_158;
            case 38:
              v52 = sub_275C97340(&__str, 0);
              if (!v52)
              {
                goto LABEL_77;
              }

              v70 = self->mAttributeCollection;
              __p[0] = node;
              LODWORD(__p[1]) = 38;
              *&v96 = __p;
              v54 = sub_275CD6E20(v70 + 64, __p, &std::piecewise_construct, &v96);
LABEL_158:
              *(v54 + 48) = v52;
              goto LABEL_77;
            case 42:
              sub_275C95420(__p, &__str, 8);
              v88 = 0.0;
              MEMORY[0x277C8CE40](__p, &v88);
              if ((*(&v91[1].__locale_ + *(__p[0] - 3)) & 7) == 2)
              {
                v43 = self->mAttributeCollection;
                v44 = v88;
                *&v96 = node;
                DWORD2(v96) = 42;
                v97[0] = &v96;
                *(sub_275CD7174(v43 + 55, &v96, &std::piecewise_construct, v97) + 48) = v44;
              }

              __p[0] = v87;
              *(__p + *(v87 - 3)) = v86;
              v90 = MEMORY[0x277D82878] + 16;
              if (v92 < 0)
              {
                operator delete(v91[7].__locale_);
              }

              v90 = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v91);
              std::istream::~istream();
              MEMORY[0x277C8CF70](&v93);
              goto LABEL_77;
            case 44:
              goto LABEL_72;
            case 46:
              __p[0] = 0;
              __p[1] = 0;
              v90 = 0;
              if (sub_275CBB1A8(&__str, __p))
              {
                v56 = self->mAttributeCollection;
                *&v96 = node;
                DWORD2(v96) = 46;
                sub_275CD706C(v56, v56 + 7, __p, &v96);
              }

              goto LABEL_148;
            case 47:
              sub_275C9701C(&__str, __p);
              v57 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_149;
              }

              v66 = self->mAttributeCollection;
              *&v96 = node;
              DWORD2(v96) = 47;
              sub_275CD72B0(v66, v66 + 28, __p, &v96);
LABEL_148:
              v57 = __p[0];
LABEL_149:
              if (v57)
              {
                __p[1] = v57;
                operator delete(v57);
              }

              goto LABEL_77;
            default:
              goto LABEL_77;
          }
        }
      }

LABEL_70:
      if (v13 == 44)
      {
        sub_275CB5D70(lNode, properties, &__str);
LABEL_72:
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v27 = sub_275CD5D4C(&__str);
          v28 = v27;
          if (v27)
          {
            v97[0] = CFRetain(v27);
            v29 = self->mAttributeCollection;
            __p[0] = node;
            LODWORD(__p[1]) = 44;
            *&v96 = __p;
            v30 = sub_275CD756C(v29 + 67, __p, &std::piecewise_construct, &v96);
            sub_275CB85F0((v30 + 48), v97);
            CGColorRelease(v28);
            sub_275CB42BC(v97);
          }
        }

        goto LABEL_77;
      }

LABEL_79:
      properties = properties->next;
    }

    while (properties);
  }
}

- (id)parseChildrenAsTokenContentFromXMLNode:(_xmlNode *)node
{
  nodeCopy = node;
  v18 = 0;
  memset(&__str, 0, sizeof(__str));
  v16 = 0;
  v15 = 1;
  if (!node)
  {
    goto LABEL_20;
  }

  children = node->children;
  if (!children)
  {
LABEL_18:
    LODWORD(nodeCopy) = 0;
    goto LABEL_20;
  }

  while (1)
  {
    if (!sub_275CB5B80(children))
    {
      if (xmlNodeIsText(children))
      {
        v16 = 1;
        sub_275CB5B94(children, 0, &__p);
        v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::string::append(&__str, v8, v9);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_17;
    }

    sub_275CD610C(&v18, &__str, &v16, &v15, 0);
    [(EQKitMathMLParser *)self pushState:1];
    v6 = [(EQKitMathMLParser *)self parseNode:nodeCopy];
    [(EQKitMathMLParser *)self popState];
    if (!v6)
    {
      break;
    }

    v7 = v18;
    if (!v18)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = v7;
    }

    [v7 addObject:v6];

LABEL_17:
    children = children->next;
    if (!children)
    {
      goto LABEL_18;
    }
  }

  LODWORD(nodeCopy) = 1;
LABEL_20:
  sub_275CD610C(&v18, &__str, &v16, &v15, 1);
  if (nodeCopy)
  {
    v10 = 0;
    v11 = v18;
  }

  else
  {
    v12 = [EQKitMathMLTokenContent alloc];
    v11 = v18;
    v10 = [(EQKitMathMLTokenContent *)v12 initWithChildren:v18];
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v10;
}

- (id)parseNode:(_xmlNode *)node
{
  if (!sub_275CB5B58(node, self->mNS))
  {
    goto LABEL_10;
  }

  name = node->name;
  if (!name)
  {
    goto LABEL_10;
  }

  sub_275CA6274(__p, name);
  v6 = sub_275C958B4(__p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (![(EQKitMathMLParser *)self isElement:v6 allowedInState:[(EQKitMathMLParser *)self state]])
  {
    v7 = 3;
    goto LABEL_9;
  }

  if ((v6 - 40) < 0x88)
  {
    v7 = 6;
LABEL_9:
    [(EQKitMathMLParser *)self reportError:v7 withNode:node];
    goto LABEL_10;
  }

  v10 = off_27A675780;
  switch(v6)
  {
    case 1:
      break;
    case 2:
      v10 = off_27A675798;
      break;
    case 3:
      v10 = off_27A6757A0;
      break;
    case 4:
      v10 = off_27A6757C8;
      break;
    case 5:
      v10 = &off_27A675870;
      break;
    case 6:
      v10 = off_27A675748;
      break;
    case 7:
      v10 = off_27A675778;
      break;
    case 8:
      v10 = off_27A6757B8;
      break;
    case 9:
      v10 = off_27A675820;
      break;
    case 10:
      v10 = off_27A675830;
      break;
    case 11:
      v10 = off_27A675828;
      break;
    case 12:
      v10 = off_27A675770;
      break;
    case 13:
      v10 = off_27A675818;
      break;
    case 14:
      v10 = off_27A675858;
      break;
    case 15:
      v10 = off_27A6757A8;
      break;
    case 16:
      v10 = off_27A675860;
      break;
    case 17:
      v10 = off_27A6757E0;
      break;
    case 18:
      v10 = off_27A6757F8;
      break;
    case 19:
      v10 = off_27A675808;
      break;
    case 20:
      v10 = off_27A675800;
      break;
    case 21:
      v10 = off_27A6757E8;
      break;
    case 22:
      v10 = off_27A6757F0;
      break;
    case 23:
      v10 = off_27A675790;
      break;
    case 24:
      v10 = off_27A675838;
      break;
    case 25:
      v10 = off_27A675850;
      break;
    case 26:
      v10 = off_27A675788;
      break;
    case 27:
      v10 = off_27A675840;
      break;
    case 28:
      v10 = off_27A6757C0;
      break;
    case 29:
      v10 = off_27A6757D8;
      break;
    case 30:
      v10 = off_27A675868;
      break;
    case 32:
      v10 = off_27A675810;
      break;
    case 33:
      v10 = off_27A675848;
      break;
    case 34:
      v10 = off_27A675750;
      break;
    case 35:
      v10 = off_27A6757D0;
      break;
    case 36:
      v10 = off_27A675768;
      break;
    case 37:
      v10 = off_27A6757B0;
      break;
    case 38:
      v10 = off_27A675758;
      break;
    case 39:
      v10 = off_27A675760;
      break;
    default:
      v7 = 2;
      goto LABEL_9;
  }

  v11 = [objc_alloc(*v10) initFromXMLNode:node parser:self];
  if (v11)
  {
    v8 = v11;
    [(EQKitMathMLParser *)self parseAttributesForNode:v11 withXMLNode:node];
    return v8;
  }

LABEL_10:
  [(EQKitMathMLParser *)self reportError:4 withNode:node];
  return 0;
}

- (void)popState
{
  size = self->mState.c.__size_;
  if (size)
  {
    self->mState.c.__size_ = size - 1;
    sub_275CD7C38(&self->mState.c.__map_.__first_, 1);
  }
}

- (int)state
{
  size = self->mState.c.__size_;
  if (size)
  {
    return (*(self->mState.c.__map_.__begin_ + (((size + self->mState.c.__start_ - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(size + self->mState.c.__start_ - 1) & 0x3FF];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isElement:(int)element allowedInState:(int)state
{
  v4 = (element - 25) < 2;
  v5 = element == 27;
  if (state != 3)
  {
    v5 = 1;
  }

  if (state != 2)
  {
    v4 = v5;
  }

  v7 = element == 31 || element == 39;
  v8 = state != 1 || v7;
  if (!state)
  {
    v8 = (element - 28) < 0xFFFFFFFD;
  }

  if (state <= 1)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 3) = 0u;
  return self;
}

@end