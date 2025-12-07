id _LSAliasGetName(void *a1, uint64_t a2)
{
  v2 = _LSAliasGet(a1, a2);
  if (v2)
  {
    v3 = [FSNode nameForBookmarkData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _LSAliasGetPath(void *a1, uint64_t a2)
{
  v2 = _LSAliasGet(a1, a2);
  if (v2)
  {
    v3 = [FSNode pathForBookmarkData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _LSAliasGetVisualizationFunctions(id (**a1)(void **this, LSContext *a2, uint64_t a3)@<X8>)
{
  *a1 = LaunchServices::Aliases::getSummary;
  a1[1] = LaunchServices::Aliases::display;
  a1[2] = LaunchServices::Aliases::copyBindingForVisualization;
}

BOOL LaunchServices::Aliases::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v8 = _LSAliasGet(*this, a3);
  if (v8)
  {
    v9 = [FSNode pathForBookmarkData:v8 error:0];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v9 isDirectory:0];
      v11 = [v7 linkURL:v10 linkedText:v9];
      [v7 write:@"path" string:v11];

      [v7 writeSeparator];
    }

    v17 = 0;
    if ([v8 length] >= 5 && (objc_msgSend(v8, "getBytes:length:", &v17, 4), v12 = v17, v17 = bswap32(v17), v12 == 1802465122) && (v13 = MEMORY[0x1865D5C20](v8)) != 0)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13];
      v15 = [v14 length];
      [v14 addAttribute:*MEMORY[0x1E69991B8] value:MEMORY[0x1E695E118] range:{0, v15}];
      [v7 writeAttributedString:v14];
    }

    else
    {
      [(_LSDatabase *)*this store];
      [(_LSDatabase *)*this schema];
      v13 = _CSStoreCopyDebugDescriptionOfUnit();
      [v7 writeAttributedString:v13];
    }
  }

  return v8 != 0;
}

void sub_18168BB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18168C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&a11, a12);
  }

  _Unwind_Resume(a1);
}

void LaunchServices::EligibilityPredicateEvaluation::Predicate::parse_dictionary(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v36 = a1;
  if ((_NSIsNSDictionary() & 1) == 0)
  {
    if (a2)
    {
      v65 = *MEMORY[0x1E696A278];
      v66[0] = @"Predicate was not a dictionary";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
      *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "parse_dictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSEligibilityPredicateEvaluator.mm", 86);
    }

    goto LABEL_46;
  }

  v4 = objc_opt_class();
  v5 = [v36 objectForKey:@"Conditions"];
  v6 = v5;
  if (v4 && v5)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_44;
    }
  }

  else if (!v5)
  {
LABEL_44:
    if (a2)
    {
      v63 = *MEMORY[0x1E696A278];
      v64 = @"Predicate key Conditions was not a dictionary";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 79, v29, "parse_dictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSEligibilityPredicateEvaluator.mm", 92);
    }

LABEL_46:
    *a3 = 0;
    *(a3 + 24) = 0;
    goto LABEL_58;
  }

  v57 = 0;
  v58 = 0;
  v56 = &v57;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v8)
  {
    v37 = v8;
    v38 = *v53;
    v9 = 1;
    v10 = a3;
    while (2)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        if ((_NSIsNSString() & 1) == 0)
        {
          goto LABEL_51;
        }

        v51 = [v11 longLongValue];
        v12 = [obj objectForKey:v11];
        if ((_NSIsNSArray() & 1) == 0)
        {

LABEL_51:
LABEL_52:
          if (a2)
          {
            v59 = *MEMORY[0x1E696A278];
            v60 = @"Predicate conditions was not a stringifiedNumber->[number] map";
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 79, v33, "parse_dictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSEligibilityPredicateEvaluator.mm", 122);
          }

          *a3 = 0;
          *(a3 + 24) = 0;
          goto LABEL_57;
        }

        __src = 0;
        v49 = 0;
        v50 = 0;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v44 objects:v61 count:16];
        if (v14)
        {
          v34 = v9;
          v15 = *v45;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v45 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v44 + 1) + 8 * j);
              if ((_NSIsNSNumber() & 1) == 0)
              {
                v9 = 0;
                goto LABEL_38;
              }

              v18 = [v17 unsignedLongLongValue];
              v19 = v49;
              if (v49 >= v50)
              {
                v21 = __src;
                v22 = v49 - __src;
                v23 = (v49 - __src) >> 3;
                v24 = v23 + 1;
                if ((v23 + 1) >> 61)
                {
                  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
                }

                v25 = v50 - __src;
                if ((v50 - __src) >> 2 > v24)
                {
                  v24 = v25 >> 2;
                }

                v26 = v25 >= 0x7FFFFFFFFFFFFFF8;
                v27 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v26)
                {
                  v27 = v24;
                }

                if (v27)
                {
                  std::allocator<os_eligibility_answer_t>::allocate_at_least[abi:nn200100](&__src, v27);
                }

                *(8 * v23) = v18;
                v20 = 8 * v23 + 8;
                memcpy(0, v21, v22);
                v28 = __src;
                __src = 0;
                v49 = v20;
                v50 = 0;
                if (v28)
                {
                  operator delete(v28);
                }

                a3 = v10;
              }

              else
              {
                *v49 = v18;
                v20 = (v19 + 8);
              }

              v49 = v20;
            }

            v14 = [v13 countByEnumeratingWithState:&v44 objects:v61 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

          v9 = v34;
        }

LABEL_38:

        std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::__emplace_unique_key_args<os_eligibility_domain_t,os_eligibility_domain_t&,std::vector<os_eligibility_answer_t>>(&v56, &v51, &v51, &__src);
        if (__src)
        {
          v49 = __src;
          operator delete(__src);
        }
      }

      v37 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v31 = v56;
  v30 = v57;
  v32 = v58;
  v42 = v57;
  v43 = v58;
  if (v58)
  {
    v56 = &v57;
    v57 = 0;
    v58 = 0;
    v41 = &v42;
    v42 = 0;
    v43 = 0;
    *(a3 + 8) = v30;
    v30[2] = a3 + 8;
    v49 = 0;
    v50 = 0;
    v30 = 0;
  }

  else
  {
    v41 = &v42;
    v49 = v57;
    v50 = 0;
    *(a3 + 8) = v57;
    v31 = (a3 + 8);
  }

  __src = &v49;
  *(a3 + 16) = v32;
  *a3 = v31;
  *(a3 + 24) = 1;
  std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&__src, v30);
  std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&v41, v42);
LABEL_57:
  std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&v56, v57);

LABEL_58:
}

void sub_18168CC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&a41, a42);

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::DelayedInitable<LaunchServices::EligibilityPredicateEvaluation::Predicate>::emplace<LaunchServices::EligibilityPredicateEvaluation::Predicate>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LaunchServices::DelayedInitable<LaunchServices::Predicate>::emplace(Args &&...) [T = LaunchServices::Predicate, Args = <LaunchServices::Predicate>]"}];
    [v5 handleFailureInFunction:v6 file:@"LSObjCPlusPlusHelpers.hpp" lineNumber:34 description:@"can't re-emplace a DelayedInitable"];
  }

  return std::optional<LaunchServices::EligibilityPredicateEvaluation::Predicate>::emplace[abi:nn200100]<LaunchServices::EligibilityPredicateEvaluation::Predicate,void>(a1, a2);
}

uint64_t LaunchServices::EligibilityPredicateEvaluation::Predicate::evaluate(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 == v6)
  {
LABEL_14:
    v17 = 1;
    v18 = 1;
  }

  else
  {
    while (1)
    {
      v9 = [v5 eligibilityForDomain:v7[4] error:a3];
      v10 = v9;
      if (!v9)
      {
        v18 = 0;
        goto LABEL_17;
      }

      v11 = v7[5];
      v12 = v7[6];
      v13 = [v9 unsignedLongLongValue];
      if (v11 != v12)
      {
        while (*v11 != v13)
        {
          if (++v11 == v12)
          {
            v11 = v12;
            break;
          }
        }
      }

      if (v11 == v7[6])
      {
        break;
      }

      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      v7 = v15;
      if (v15 == v6)
      {
        goto LABEL_14;
      }
    }

    v18 = 1;
LABEL_17:

    v17 = 0;
  }

  return v17 | (v18 << 8);
}

void sub_18168D05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *LaunchServices::EligibilityPredicateEvaluation::Predicate::to_string@<X0>(uint64_t *__return_ptr a1@<X8>, LaunchServices::EligibilityPredicateEvaluation::Predicate *this@<X0>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v19);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, "EligibilityPredicate {", 22);
  v6 = *this;
  v4 = this + 8;
  v5 = v6;
  if (v6 != v4)
  {
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, ", ", 2);
      }

      MEMORY[0x1865D61A0](&v19, *(v5 + 4));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, ": [", 3);
      v8 = *(v5 + 5);
      v9 = *(v5 + 6);
      if (v8 != v9)
      {
        v10 = 1;
        do
        {
          v11 = *v8;
          if ((v10 & 1) == 0)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, ", ", 2);
          }

          MEMORY[0x1865D61A0](&v19, v11);
          v10 = 0;
          ++v8;
        }

        while (v8 != v9);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, "]", 1);
      v12 = *(v5 + 1);
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
          v13 = *(v5 + 2);
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v7 = 0;
      v5 = v13;
    }

    while (v13 != v4);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, "}", 1);
  if ((v26 & 0x10) != 0)
  {
    v16 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v16 = v22;
    }

    locale = v21[4].__locale_;
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v15 = 0;
      *(a1 + 23) = 0;
      goto LABEL_29;
    }

    locale = v21[1].__locale_;
    v16 = v21[3].__locale_;
  }

  v15 = v16 - locale;
  if ((v16 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v15;
  if (v15)
  {
    memmove(a1, locale, v15);
  }

LABEL_29:
  *(a1 + v15) = 0;
  v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1865D6220](&v27);
}

void sub_18168D38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1865D6220](va1);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::__emplace_unique_key_args<os_eligibility_domain_t,os_eligibility_domain_t&,std::vector<os_eligibility_answer_t>>(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

void std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::optional<LaunchServices::EligibilityPredicateEvaluation::Predicate>::emplace[abi:nn200100]<LaunchServices::EligibilityPredicateEvaluation::Predicate,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(a1, *(a1 + 8));
  }

  *a1 = *a2;
  v4 = a2 + 1;
  v5 = a2[1];
  *(a1 + 8) = v5;
  v6 = a1 + 8;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *a2 = v4;
    *v4 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v6;
  }

  *(a1 + 24) = 1;
  return a1;
}

void sub_18168DFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void LaunchServices::Database::Context::~Context(LaunchServices::Database::Context *this)
{
  v2 = *this;
  if (v2 && *(this + 16) == 1)
  {
    _LSContextDestroy(v2);
  }

  v3 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;

  *(this + 16) = 0;
  v4 = *(this + 3);
  *(this + 3) = 0;
}

void sub_18168E910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);

  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::~__hash_table(&a35);
  a35 = &a50;
  std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a35);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__emplace_back_slow_path<std::pair<unsigned int,NSUUID * {__strong}>>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v3 + 8) = v4;
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

void sub_18168F52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__emplace_back_slow_path<std::pair<unsigned int,NSUUID * {__strong}>>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>::allocate_at_least[abi:nn200100](a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = v9;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v9 + 8) = v10;
  v17 = (16 * v5 + 16);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>,std::pair<unsigned int,NSUUID * {__strong}>*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(&v15);
  return v14;
}

void sub_18168FA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>,std::pair<unsigned int,NSUUID * {__strong}>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 8) = v7;
      v6 += 16;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 16;
    }
  }
}

uint64_t std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,LSApplicationRecord * {__strong}>>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_18168FE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_181690430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  LaunchServices::Database::Context::~Context(&a17);

  _Unwind_Resume(a1);
}

void sub_181690DA8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

Class initUMUserPersonaAttributes(void)
{
  if (!UserManagementLibrary(void)::frameworkLibrary)
  {
    UserManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserPersonaAttributes");
  classUMUserPersonaAttributes = result;
  getUMUserPersonaAttributesClass = UMUserPersonaAttributesFunction;
  return result;
}

{
  if (!UserManagementLibrary(void)::frameworkLibrary)
  {
    UserManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserPersonaAttributes");
  classUMUserPersonaAttributes = result;
  getUMUserPersonaAttributesClass = UMUserPersonaAttributesFunction;
  return result;
}

id UMUserPersonaAttributesFunction(void)
{
  return classUMUserPersonaAttributes;
}

{
  return classUMUserPersonaAttributes;
}

void _LSAppsAnalyticsStartListening(uint64_t a1, uint64_t a2)
{
  _LSAssertRunningInServer("void _LSAppsAnalyticsStartListening()", a2);
  v4 = [__LSDefaultsGetSharedInstance(v2 v3)];
  if (v4 && (v4 = [__LSDefaultsGetSharedInstance(v4 v5)], (v4 & 1) == 0) && (CoreAnalyticsLibrary(void)::frameworkLibrary || (v4 = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2), (CoreAnalyticsLibrary(void)::frameworkLibrary = v4) != 0)))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    v7 = CFPreferencesCopyValue(@"LSDefaultAppsReportingInterval", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v7 && _NSIsNSNumber())
    {
      v8 = [v7 unsignedLongLongValue];
      v9 = *MEMORY[0x1E69E9CB0];
    }

    else
    {
      v9 = *MEMORY[0x1E69E9CB0];
      v8 = *MEMORY[0x1E69E9CF0];
    }

    xpc_dictionary_set_int64(xdict, v9, v8);
    xpc_activity_register("com.apple.launchservices.systemapps.analytics", xdict, &__block_literal_global_3);
  }

  else
  {
    v6 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "CoreAnalytics library is not available.", buf, 2u);
    }
  }
}

void _LSNoteSystemAppInstallOrUninstall(uint64_t a1, unsigned int a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.LaunchServices.systemAppRemoval.%@", a1];
  softLinkADClientAddValueForScalarKey(v3, a2);
}

BOOL ___ZN14LaunchServices13AppsAnalyticsL14handleActivityEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Capturing default apps analytics.", buf, 2u);
  }

  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Fetching current apps analytics state", buf, 2u);
  }

  v80 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = LaunchServices::Database::Context::_get(&v77, v4, 0);

  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = LaunchServices::AppsAnalytics::getBundleIdentifierToHandleURLScheme(v5, @"https", v8);
    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:{@"webbrowser", v9}];
    }

    else
    {
      v15 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:0, 0];
      if (v15)
      {
        [@"com.apple.mobilesafari" stringByAppendingString:@" - restricted"];
      }

      else
      {
        [@"com.apple.mobilesafari" stringByAppendingString:@" - deleted"];
      }
      v16 = ;
      [v7 setObject:v16 forKeyedSubscript:@"webbrowser"];
    }

    v17 = LaunchServices::AppsAnalytics::getBundleIdentifierToHandleURLScheme(v5, @"mailto", v10);
    v59 = v17;
    if (v17)
    {
      [v7 setObject:v17 forKeyedSubscript:@"mailclient"];
    }

    else
    {
      v18 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.mobilemail" allowPlaceholder:0 error:0];
      if (v18)
      {
        [@"com.apple.mobilemail" stringByAppendingString:@" - restricted"];
      }

      else
      {
        [@"com.apple.mobilemail" stringByAppendingString:@" - deleted"];
      }
      v19 = ;
      [v7 setObject:v19 forKeyedSubscript:@"mailclient"];
    }

    softLinkAnalyticsSendEvent(@"com.apple.LaunchServices.DefaultApps", v7);
    v62 = objc_alloc_init(MEMORY[0x1E695DF90]);

    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = ___ZN14LaunchServices13AppsAnalyticsL16sendCurrentStateEv_block_invoke;
    v76[3] = &__block_descriptor_40_e111_v24__0r__LSDefaultAppCategoryInfo_Q____CFString_____CFString_Q____LSDefaultAppCategorySubordinateClaim_QB_8_B16l;
    v76[4] = v5;
    LSEnumerateDefaultAppCategories(v76);
    *buf = 0;
    v20 = [LSMarketplacesPreferences currentPreferencesWithError:buf];
    v21 = *buf;
    if (v20)
    {
      v22 = [v20 preferredMarketplaces];
      v23 = [v22 firstObject];

      if (v23)
      {
        if ([v23 hasPrefix:@"com.apple."])
        {
          v24 = &unk_1EEF8E918;
        }

        else
        {
          v24 = &unk_1EEF8E930;
        }
      }

      else
      {
        v24 = &unk_1EEF8E960;
      }
    }

    else
    {
      v24 = &unk_1EEF8E948;
    }

    v81[0] = @"DefaultAppCategorization";
    v82[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:1];
    softLinkAnalyticsSendEvent(@"com.apple.LaunchServices.DefaultAppCategory.Marketplace", v25);

    v63 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v26 = [LSApplicationRecord enumeratorWithOptions:0];
    v27 = [v26 countByEnumeratingWithState:&v72 objects:buf count:16];
    if (v27)
    {
      v28 = *v73;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v73 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = [*(*(&v72 + 1) + 8 * i) bundleIdentifier];
          [v63 addObject:v30];
        }

        v27 = [v26 countByEnumeratingWithState:&v72 objects:buf count:16];
      }

      while (v27);
    }

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v32 = [LSApplicationRecord enumeratorWithOptions:64];
    v33 = [v32 countByEnumeratingWithState:&v68 objects:v82 count:16];
    if (v33)
    {
      v34 = *v69;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v69 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v68 + 1) + 8 * j);
          v37 = [v36 bundleIdentifier];
          [v31 setObject:v36 forKeyedSubscript:v37];
        }

        v33 = [v32 countByEnumeratingWithState:&v68 objects:v82 count:16];
      }

      while (v33);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = +[LSApplicationRecord systemPlaceholderEnumerator];
    v38 = [obj countByEnumeratingWithState:&v64 objects:v81 count:16];
    if (v38)
    {
      v39 = *v65;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v65 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v64 + 1) + 8 * k);
          v42 = [MEMORY[0x1E696AD98] numberWithInt:2];
          v43 = [v41 bundleIdentifier];
          if ([v63 containsObject:v43])
          {
            v44 = 1;
          }

          else
          {
            v45 = [v31 objectForKeyedSubscript:v43];
            v46 = v45 == 0;

            if (v46)
            {
              goto LABEL_54;
            }

            v47 = [v31 objectForKeyedSubscript:v43];
            v48 = [v47 applicationState];
            v49 = [v48 installType];

            if ((v49 - 7) >= 3)
            {
              goto LABEL_54;
            }

            v44 = dword_1817E8AD0[v49 - 7];
          }

          v50 = [MEMORY[0x1E696AD98] numberWithInt:v44];

          v42 = v50;
LABEL_54:
          v51 = [v43 componentsSeparatedByString:@"."];
          v52 = [v51 lastObject];
          v53 = [v52 isEqualToString:@"watchkitapp"];

          if (v53)
          {
            [v51 objectAtIndex:{objc_msgSend(v51, "count") - 2}];
          }

          else
          {
            [v51 lastObject];
          }
          v54 = ;
          [v62 setObject:v42 forKeyedSubscript:v54];
        }

        v38 = [obj countByEnumeratingWithState:&v64 objects:v81 count:16];
      }

      while (v38);
    }

    softLinkAnalyticsSendEvent(@"com.apple.LaunchServices.SystemApplicationInstallStatusV2", v62);
    v11 = v62;
  }

  else
  {
    v11 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = +[_LSDServiceDomain defaultServiceDomain];
      v13 = LaunchServices::Database::Context::_get(&v77, v12, 0);

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v80;
      }

      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_18162D000, v11, OS_LOG_TYPE_ERROR, "Error getting LS database during analytics: %@", buf, 0xCu);
    }
  }

  if (v77 && v79 == 1)
  {
    _LSContextDestroy(v77);
  }

  v55 = v78;
  v77 = 0;
  v78 = 0;

  v79 = 0;
  v56 = v80;
  v80 = 0;

  return xpc_activity_set_state(*(a1 + 32), 5);
}

void sub_181692D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

id LaunchServices::AppsAnalytics::getBundleIdentifierToHandleURLScheme(LSContext *this, LSContext *a2, NSString *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v5 = _LSGetBindingForNodeOrSchemeOrUTI(this, 0, v4, 0, 0, 14, 0, 0, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v11 == 0;
  }

  if (v6)
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "No default app found for scheme %@, not including in analytics.", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    [(_LSDatabase *)this->db store];
    v8 = _CSStringCopyCFString();
  }

  return v8;
}

void ___ZN14LaunchServices13AppsAnalyticsL16sendCurrentStateEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = (a2 + 8);
  LaunchServices::BindingEvaluator::CreateWithUTI(v21, *(a2 + 8), 0);
  v14 = 0;
  LaunchServices::BindingEvaluator::getBestBinding(v21, v3, &v14, &v16);
  v5 = v14;
  v6 = v5;
  if (v20 == 1)
  {
    if (v17 && (*(v17 + 164) & 1) != 0)
    {
      v7 = &unk_1EEF8E918;
    }

    else
    {
      v7 = &unk_1EEF8E930;
    }

    goto LABEL_13;
  }

  v8 = [v5 domain];
  if ([v8 isEqual:*MEMORY[0x1E696A768]])
  {
    v9 = [v6 code] == -10814;

    if (v9)
    {
      v7 = &unk_1EEF8E960;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = _LSDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    ___ZN14LaunchServices13AppsAnalyticsL16sendCurrentStateEv_block_invoke_cold_1(v4, v6, v11);
  }

  v7 = &unk_1EEF8E948;
LABEL_13:
  if (v20 == 1)
  {
  }

  v12 = *(a2 + 16);
  v15 = @"DefaultAppCategorization";
  v16 = v7;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  softLinkAnalyticsSendEvent(v12, v13);

  LaunchServices::BindingEvaluator::~BindingEvaluator(v21);
}

void sub_181693260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, char a19, ...)
{
  va_start(va, a19);
  if (a19 == 1)
  {
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void initAnalyticsSendEvent(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = CoreAnalyticsLibrary(void)::frameworkLibrary;
  if (!CoreAnalyticsLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
    CoreAnalyticsLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "AnalyticsSendEvent");
  softLinkAnalyticsSendEvent = v5;
  if (v5)
  {
    (v5)(v6, v3);
  }
}

{
  v6 = a1;
  v3 = a2;
  v4 = qword_1ED445300;
  if (!qword_1ED445300)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
    qword_1ED445300 = v4;
  }

  v5 = dlsym(v4, "AnalyticsSendEvent");
  softLinkAnalyticsSendEvent[0] = v5;
  if (v5)
  {
    (v5)(v6, v3);
  }
}

uint64_t initADClientAddValueForScalarKey(const __CFString *a1, uint64_t a2)
{
  v4 = AggregateDictionaryLibrary(void)::frameworkLibrary;
  if (!AggregateDictionaryLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 2);
    AggregateDictionaryLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "ADClientAddValueForScalarKey");
  softLinkADClientAddValueForScalarKey = v5;

  return v5(a1, a2);
}

void sub_181693858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181693EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

id init_ISPrimaryIconDataForApplicationProxy(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IconServicesLibrary_frameworkLibrary;
  if (!IconServicesLibrary_frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary = v6;
  }

  softLink_ISPrimaryIconDataForApplicationProxy = dlsym(v6, "_ISPrimaryIconDataForApplicationProxy");
  v7 = softLink_ISPrimaryIconDataForApplicationProxy(v5, a2, a3);

  return v7;
}

id init_ISIconDataForResourceProxy(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IconServicesLibrary_frameworkLibrary;
  if (!IconServicesLibrary_frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary = v6;
  }

  softLink_ISIconDataForResourceProxy = dlsym(v6, "_ISIconDataForResourceProxy");
  v7 = softLink_ISIconDataForResourceProxy(v5, a2, a3);

  return v7;
}

{
  v5 = a1;
  v6 = IconServicesLibrary(void)::frameworkLibrary;
  if (!IconServicesLibrary(void)::frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary(void)::frameworkLibrary = v6;
  }

  softLink_ISIconDataForResourceProxy = dlsym(v6, "_ISIconDataForResourceProxy");
  v7 = softLink_ISIconDataForResourceProxy(v5, a2, a3);

  return v7;
}

void LaunchServices::AppRecordEnumeration::VolumeContainerResolutionAdapter::resolve(LaunchServices::AppRecordEnumeration::VolumeContainerResolutionAdapter *this, LSContext *a2)
{
  v7[0] = a2;
  v7[1] = this;
  if (*(this + 2) == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    __60___LSApplicationRecordEnumerator__prepareWithContext_error___block_invoke(v4, v5, v6);
  }

  else
  {
    v2 = _ZNSt3__116__variant_detail12__visitation9__variant13__visit_valueB8nn200100IZN14LaunchServices20AppRecordEnumeration32VolumeContainerResolutionAdapter7resolveEP9LSContextEUlRKT_E_JRNS_7variantIJjU8__strongP5NSURLU8__strongP7NSErrorEEEEEEDcOS9_DpOT0_(v7, this);

    v3 = v2;
  }
}

BOOL LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(LaunchServices::AppRecordEnumeration *this, LSContext *a2, char a3, const LSBundleData *a4)
{
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  if (a2 && (BYTE4(a2[20].db) & 1) != 0)
  {
    return 1;
  }

  v6 = _LSEnumeratorLog;
  result = os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(this, v6, v7, v8, v9, v10, v11, v12);
    return 0;
  }

  return result;
}

void LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZN14LaunchServices20AppRecordEnumerationL32findAppByIdentifierForEnumeratorEP9LSContextP8NSStringj13LSBundleClassjyS4_U13block_pointerFbS2_jPK12LSBundleDataEPjPS8__block_invoke;
  v22[3] = &unk_1E6A19018;
  v23 = a3;
  v22[4] = a2;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a1;
  v12 = MEMORY[0x1865D71B0](v22);
  v13 = v12;
  if ((a4 & 0xC0) == 0x40)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*(v12 + 16))(v12, 128, a7, a8);
  }

  if ((a4 & 0x40) != 0 && (v14 & 1) == 0)
  {
    v14 = v13[2](v13, 1152, a7, a8);
  }

  if ((v14 & 1) == 0)
  {
    v15 = _LSEnumeratorLog;
    if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
    {
      LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(a2, v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__assign_alt[abi:nn200100]<1ul,NSURL * {__strong},NSURL * const {__strong}&>(uint64_t a1, id *location, id *a3)
{
  if (*(a1 + 8) == 1)
  {
    objc_storeStrong(location, *a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__emplace[abi:nn200100]<1ul,NSURL * const {__strong}&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__emplace[abi:nn200100]<1ul,NSURL * const {__strong}&>(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    (off_1EEF61DE0[v4])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a2;
  *(a1 + 8) = 1;
  return a1;
}

id _ZNSt3__116__variant_detail12__visitation9__variant13__visit_valueB8nn200100IZN14LaunchServices20AppRecordEnumeration32VolumeContainerResolutionAdapter7resolveEP9LSContextEUlRKT_E_JRNS_7variantIJjU8__strongP5NSURLU8__strongP7NSErrorEEEEEEDcOS9_DpOT0_(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v2 = *(a2 + 8);
  if (v2 == -1)
  {
    v2 = -1;
  }

  v3 = (off_1EEF61DF8[v2])(&v5);

  return v3;
}

uint64_t _ZNKSt3__116__variant_detail12__visitation9__variant15__value_visitorIZN14LaunchServices20AppRecordEnumeration32VolumeContainerResolutionAdapter7resolveEP9LSContextEUlRKT_E_EclB8nn200100IJRNS0_5__altILm1EU8__strongP5NSURLEEEEEDcDpOT_(uint64_t a1)
{
  v1 = *(*a1 + 8);
  v2 = v1[2];
  if (v2 == -1)
  {
    goto LABEL_5;
  }

  if (v2)
  {
    (off_1EEF61DE0[v2])(&v4, v1);
LABEL_5:
    *v1 = 0;
    v1[2] = 0;
    return 0;
  }

  *v1 = 0;
  return 0;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1EEF61DE0[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (off_1EEF61E10[v4])(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJjU8__strongP5NSURLU8__strongP7NSErrorEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJjSA_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 8);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    result = (off_1EEF61DE0[v5])(&v6, v4);
  }

  v4[2] = -1;
  *v4 = *a3;
  v4[2] = 0;
  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__assign_alt[abi:nn200100]<2ul,NSError * {__strong},NSError * const {__strong}&>(uint64_t a1, id *location, id *a3)
{
  if (*(a1 + 8) == 2)
  {
    objc_storeStrong(location, *a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__emplace[abi:nn200100]<2ul,NSError * const {__strong}&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__emplace[abi:nn200100]<2ul,NSError * const {__strong}&>(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    (off_1EEF61DE0[v4])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a2;
  *(a1 + 8) = 2;
  return a1;
}

uint64_t ___ZN14LaunchServices20AppRecordEnumerationL32findAppByIdentifierForEnumeratorEP9LSContextP8NSStringj13LSBundleClassjyS4_U13block_pointerFbS2_jPK12LSBundleDataEPjPS8__block_invoke(uint64_t a1, int a2, _DWORD *a3, void *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  return _LSBundleFindWithInfoAndNo_IOFilter(*(a1 + 56), 0, *(a1 + 32), 0, v5, *(a1 + 64), a2, *(a1 + 40), *(a1 + 48), a3, a4, 0);
}

void sub_18169A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__132(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18169A768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void sub_18169AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose(&a23, 8);
  LaunchServices::Database::Context::~Context(va);

  _Unwind_Resume(a1);
}

void sub_18169B25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_18169B654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18169B870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_18169C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_18169C4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_18169D1C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__688(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__689(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18169F6F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t _LSApplicationRecordPersistentIdentifierGetSequenceNumberInternal(void *a1)
{
  if ([a1 length] <= 0x23)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t _LSApplicationRecordPersistentIdentifierGetSequenceNumberInternal(const __strong LSPersistentIdentifier _Nonnull)"];
    [v3 handleFailureInFunction:v4 file:@"LSApplicationRecord.mm" lineNumber:2999 description:{@"persistent identifier of length %zu is too short to extract sequence number!", objc_msgSend(a1, "length")}];
  }

  return *([a1 bytes] + 28);
}

void sub_1816A094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v28 - 64), 8);
  _Unwind_Resume(a1);
}

id _LSGetApplicationExtensionDiagnosticDescriptionForBundle(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"plugins for bundle %llx:", a2];
  [(_LSDatabase *)*a1 store];
  v6 = v4;
  _CSArrayEnumerateAllValues();

  return v6;
}

void ___ZL11_LSIconsLogv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "icons");
  v1 = _LSIconsLog(void)::log;
  _LSIconsLog(void)::log = v0;
}

void std::allocator<std::pair<unsigned int,LSBundleData const*>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(int *a1, int *a2, int *a3, void ****a4)
{
  v8 = a2 + 2;
  v9 = (a1 + 2);
  v10 = _LSBundleCompareForActivityContinuationSuitability(***a4, *(a2 + 1), *(a1 + 1));
  result = _LSBundleCompareForActivityContinuationSuitability(***a4, *(a3 + 1), *v8);
  if (v10 == -1)
  {
    v15 = *a1;
    if (result == -1)
    {
      *a1 = *a3;
      *a3 = v15;
    }

    else
    {
      *a1 = *a2;
      *a2 = v15;
      v16 = *(a1 + 1);
      *(a1 + 1) = *(a2 + 1);
      *(a2 + 1) = v16;
      result = _LSBundleCompareForActivityContinuationSuitability(***a4, *(a3 + 1), v16);
      if (result != -1)
      {
        return result;
      }

      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      v9 = v8;
    }

    v8 = a3 + 2;
    goto LABEL_10;
  }

  if (result == -1)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v13;
    result = _LSBundleCompareForActivityContinuationSuitability(***a4, *(a2 + 1), *v9);
    if (result == -1)
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
LABEL_10:
      v18 = *v9;
      *v9 = *v8;
      *v8 = v18;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void ****a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, a2, a3, a5);
  result = _LSBundleCompareForActivityContinuationSuitability(***a5, *(a4 + 8), *(a3 + 8));
  if (result == -1)
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v12;
    result = _LSBundleCompareForActivityContinuationSuitability(***a5, *(a3 + 8), *(a2 + 8));
    if (result == -1)
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v14;
      result = _LSBundleCompareForActivityContinuationSuitability(***a5, *(a2 + 8), *(a1 + 8));
      if (result == -1)
      {
        v15 = *a1;
        *a1 = *a2;
        *a2 = v15;
        v16 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v16;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, void ****a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, a2, a3, a4, a6);
  result = _LSBundleCompareForActivityContinuationSuitability(***a6, *(a5 + 1), *(a4 + 1));
  if (result == -1)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *(a4 + 1);
    *(a4 + 1) = *(a5 + 1);
    *(a5 + 1) = v14;
    result = _LSBundleCompareForActivityContinuationSuitability(***a6, *(a4 + 1), *(a3 + 1));
    if (result == -1)
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      v16 = *(a3 + 1);
      *(a3 + 1) = *(a4 + 1);
      *(a4 + 1) = v16;
      result = _LSBundleCompareForActivityContinuationSuitability(***a6, *(a3 + 1), *(a2 + 1));
      if (result == -1)
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
        v18 = *(a2 + 1);
        *(a2 + 1) = *(a3 + 1);
        *(a3 + 1) = v18;
        result = _LSBundleCompareForActivityContinuationSuitability(***a6, *(a2 + 1), *(a1 + 1));
        if (result == -1)
        {
          v19 = *a1;
          *a1 = *a2;
          *a2 = v19;
          v20 = *(a1 + 1);
          *(a1 + 1) = *(a2 + 1);
          *(a2 + 1) = v20;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *>(uint64_t a1, int *a2, void ****a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        if (_LSBundleCompareForActivityContinuationSuitability(***a3, *(a2 - 1), *(a1 + 8)) == -1)
        {
          v7 = *a1;
          *a1 = *(a2 - 4);
          *(a2 - 4) = v7;
          v8 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          *(a2 - 1) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, (a1 + 16), a2 - 4, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, a1 + 16, a1 + 32, (a2 - 4), a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 4, a3);
      return 1;
  }

LABEL_11:
  v9 = (a1 + 32);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, (a1 + 16), (a1 + 32), a3);
  v10 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (_LSBundleCompareForActivityContinuationSuitability(***a3, *(v10 + 1), *(v9 + 1)) == -1)
    {
      v13 = *v10;
      v14 = *(v10 + 1);
      v15 = v11;
      while (1)
      {
        v16 = a1 + v15;
        *(v16 + 48) = *(a1 + v15 + 32);
        *(v16 + 56) = *(a1 + v15 + 40);
        if (v15 == -32)
        {
          break;
        }

        v15 -= 16;
        if (_LSBundleCompareForActivityContinuationSuitability(***a3, v14, *(v16 + 24)) != -1)
        {
          v17 = a1 + v15 + 48;
          goto LABEL_19;
        }
      }

      v17 = a1;
LABEL_19:
      *v17 = v13;
      *(v17 + 8) = v14;
      if (++v12 == 8)
      {
        return v10 + 4 == a2;
      }
    }

    v9 = v10;
    v11 += 16;
    v10 += 4;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t initMobileInstallationCopyAppMetadata(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = MobileInstallationLibrary(void)::frameworkLibrary;
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary(void)::frameworkLibrary = v4;
  }

  softLinkMobileInstallationCopyAppMetadata = dlsym(v4, "MobileInstallationCopyAppMetadata");
  v5 = softLinkMobileInstallationCopyAppMetadata(v3, a2);

  return v5;
}

void ___ZL56_LSGetApplicationExtensionDiagnosticDescriptionForBundleP9LSContextjPK12LSBundleDataPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendFormat:@"\nplugin unit %llx", a3];
  if (_LSGetPlugin(**(a1 + 40), a3))
  {
    [(_LSDatabase *)**(a1 + 40) store];
    v5 = _CSStringCopyCFString();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      [(_LSDatabase *)**(a1 + 40) store];
      v7 = _CSStringCopyCFString();
    }

    v10 = v7;

    [(_LSDatabase *)**(a1 + 40) store];
    v9 = _CSStringCopyCFString();
    [*(a1 + 32) appendFormat:@" with bundleID %@ is for EPID %@", v10, v9];
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 appendFormat:@" was not found in the database!"];
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::__emplace_unique_key_args<unsigned int,unsigned int &,LSApplicationRecordUpdateAvailability>(void *a1, unsigned int *a2, _DWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void LSNoteFirstBootForRestrictions(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Clearing important app restriction state for boot", buf, 2u);
  }

  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"LSLastSeenImportantAppRestrictionStateKey", 0, @"com.apple.lsd.restrictionhardening", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesSynchronize(@"com.apple.lsd.restrictionhardening", v2, v3);
  if (!v4)
  {
    v5 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "error synchronizing after clearing app restriction state!", v6, 2u);
    }
  }
}

void _applicationStateChangedCallback(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 _MCRestrictionManager];
  [v2 invalidateSettings];

  v3 = [v4 _MCRestrictionManager];
  [v3 invalidateRestrictions];

  [v4 clearAllValues];
}

id computeImportantBundleRestrictionState(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = @"com.apple.news";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:{1, 0}];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [MEMORY[0x1E696AD98] numberWithInt:{computeApplicationRestrictionReasonWithMCStateProvider(v1, v8, 1) != 0}];
        [v2 setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = MEMORY[0x1E696AD98];
  MCFeatureNewsTodayAllowed = getMCFeatureNewsTodayAllowed();
  v12 = [v10 numberWithInt:!isFeatureAllowed(MCFeatureNewsTodayAllowed)];
  [v2 setObject:v12 forKeyedSubscript:@"com.apple.news.widget"];

  return v2;
}

void saveImportantBundleRestrictionState(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _LSDefaultLog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v1;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "saving important bundle restriction state %{public}@", &v7, 0xCu);
  }

  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"LSLastSeenImportantAppRestrictionStateKey", v1, @"com.apple.lsd.restrictionhardening", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v5 = CFPreferencesSynchronize(@"com.apple.lsd.restrictionhardening", v3, v4);
  if (!v5)
  {
    v6 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "error synchronizing after setting app restriction state!", &v7, 2u);
    }
  }
}

void sub_1816A3078(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1816A373C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1816A3750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816A40E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1816A4300(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

uint64_t computeApplicationRestrictionReasonWithMCStateProvider(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    if (!ManagedConfigurationLibrary_frameworkLibrary)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_12;
    }
  }

  if ([v5 isAllowlistEnabled])
  {
    v7 = [v5 allowlistedBundleIDs];
    v8 = [v7 containsObject:v6];

    if (!v8)
    {
      v11 = 4;
      goto LABEL_12;
    }
  }

  v9 = [v5 restrictedBundleIDs];
  v10 = [v9 containsObject:v6];

  if ((v10 & 1) == 0)
  {
    if (a3)
    {
      if (_LSIsNewsBundleIdentifier(v6))
      {
        MCFeatureNewsAllowed = getMCFeatureNewsAllowed();
        if (!isFeatureAllowed(MCFeatureNewsAllowed))
        {
          v11 = 2;
          goto LABEL_12;
        }
      }
    }

    goto LABEL_10;
  }

  v11 = 3;
LABEL_12:

  return v11;
}

uint64_t _LSApplicationRestrictionsManagerReasonForApplicationRestriction(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a1 || (a3 & 0x40000000000) != 0)
  {
    return 0;
  }

  else
  {
    return computeApplicationRestrictionReasonWithMCStateProvider(a4, a2, 1);
  }
}

Class initMCRestrictionManager()
{
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  }

  result = objc_getClass("MCRestrictionManager");
  classMCRestrictionManager = result;
  getMCRestrictionManagerClass = MCRestrictionManagerFunction;
  return result;
}

uint64_t initMCFeatureRemovedSystemAppBundleIDs()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureRemovedSystemAppBundleIDs");
  constantMCFeatureRemovedSystemAppBundleIDs = result;
  getMCFeatureRemovedSystemAppBundleIDs[0] = MCFeatureRemovedSystemAppBundleIDsFunction;
  return result;
}

uint64_t initMCFeatureNewsAllowed()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureNewsAllowed");
  constantMCFeatureNewsAllowed = result;
  getMCFeatureNewsAllowed = MCFeatureNewsAllowedFunction;
  return result;
}

uint64_t initMCFeatureNewsTodayAllowed()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureNewsTodayAllowed");
  constantMCFeatureNewsTodayAllowed = result;
  getMCFeatureNewsTodayAllowed = MCFeatureNewsTodayAllowedFunction;
  return result;
}

uint64_t initMCFeatureIdentifierForAdvertisingAllowed()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureIdentifierForAdvertisingAllowed");
  constantMCFeatureIdentifierForAdvertisingAllowed = result;
  getMCFeatureIdentifierForAdvertisingAllowed[0] = MCFeatureIdentifierForAdvertisingAllowedFunction;
  return result;
}

uint64_t initMCFeatureLimitAdTrackingForced()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureLimitAdTrackingForced");
  constantMCFeatureLimitAdTrackingForced = result;
  getMCFeatureLimitAdTrackingForced[0] = MCFeatureLimitAdTrackingForcedFunction;
  return result;
}

void sub_1816A55B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  os_unfair_lock_unlock(v25 + 5);
  os_unfair_lock_unlock(v25 + 4);

  _Unwind_Resume(a1);
}

void sub_1816A58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14)
{
  os_unfair_lock_unlock(v15 + 5);

  a14 = &a11;
  std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::__destroy_vector::operator()[abi:nn200100](&a14);
  os_unfair_lock_unlock(v15 + 4);

  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::push_back[abi:nn200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<LaunchServices::PerThreadContext>>::allocate_at_least[abi:nn200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<LaunchServices::PerThreadContext>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_1816A5AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 5);
  os_unfair_lock_unlock(v10 + 4);

  _Unwind_Resume(a1);
}

void sub_1816A5C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 5);

  _Unwind_Resume(a1);
}

void std::allocator<std::shared_ptr<LaunchServices::PerThreadContext>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void **std::__split_buffer<std::shared_ptr<LaunchServices::PerThreadContext>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<LaunchServices::PerThreadContext>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<LaunchServices::PerThreadContext>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_emplace<LaunchServices::PerThreadContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EEF61FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865D6250);
}

void **std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void _LSServer_RefreshContentInFrameworkAtURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  _LSAssertRunningInServer("void _LSServer_RefreshContentInFrameworkAtURL(NSURL *__strong, void (^__strong)(NSError *__strong))", v5);
  v15 = 0;
  v6 = softLinkMobileInstallationCopyFrameworkInfoForLaunchServices(v3, 0, &v15);
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v9 = _LSServer_DatabaseExecutionContext();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___LSServer_RefreshContentInFrameworkAtURL_block_invoke;
    v11[3] = &unk_1E6A19860;
    v12 = v3;
    v13 = v6;
    v14 = v4;
    [(LSDBExecutionContext *)v9 syncWrite:v11];
  }

  else
  {
    v10 = _LSInstallLog(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _LSServer_RefreshContentInFrameworkAtURL_cold_1();
    }

    (*(v4 + 2))(v4, v8);
  }
}

id __copy_helper_block_e8_40n6_8_8_s0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void _registerMIPluginDictionary(void *a1, void *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  kdebug_trace();
  v5 = [v3 objectForKey:*MEMORY[0x1E695E4F0]];
  v6 = [v3 mutableCopy];
  v7 = [v3 objectForKey:@"Entitlements"];
  v8 = [v7 objectForKey:@"com.apple.developer.replace-plugin"];
  if (v8)
  {
    [v4 addObject:v8];
  }

  if ([v4 containsObject:v5])
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"LSHasOverride"];
  }

  v9 = objc_alloc(MEMORY[0x1E695DFF8]);
  v10 = [v3 objectForKey:@"Path"];
  v11 = [v9 initFileURLWithPath:v10 isDirectory:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LaunchServices: registering extension %@"];
  if (_LSLoggingQueue_onceToken != -1)
  {
    _registerMIPluginDictionary_cold_1();
  }

  v13 = _LSLoggingQueue_logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___LSSetCrashMessage_block_invoke;
  block[3] = &unk_1E6A195E0;
  v27 = v12;
  v14 = v12;
  dispatch_sync(v13, block);

  _LSLogStepStart(4, 0, v5, @"registering app extension", v15, v16, v17, v18, v5);
  v28 = v5;
  v29[0] = v6;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v20 = _LSRegisterPluginWithInfo(v11, v19);

  _LSLogStepFinished(4, v20 == 0, v5, @"registered app extension", v21, v22, v23, v24, v25);
  kdebug_trace();
}

BOOL _LSUnregisterAppByUnit(LSContext *a1, uint64_t a2, uint64_t a3, int *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 172) & 0x40000;
  v11 = *(a3 + 168);
  [(_LSDatabase *)a1->db store];
  v12 = _CSStringCopyCFString();
  v13 = v12;
  if (v11 == 14 || v12 == 0)
  {
    v15 = 0;
  }

  else
  {
    if (v10)
    {
      v16 = 128;
    }

    else
    {
      v16 = 1152;
    }

    memset(buf, 0, 32);
    v12 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, v12, 0, buf, 2, v16, 0, 0, 0, 0, 0);
    v15 = v12;
  }

  v17 = _LSDefaultLog(v12);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = v10 >> 18;
    *&buf[18] = 1024;
    *&buf[20] = v11 == 14;
    *&buf[24] = 1024;
    *&buf[26] = v15;
    _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Will unregister app by unit (0x%llx), removingPlaceholder: %d removingSystemPlaceholder: %d foundParallelBundle: %d", buf, 0x1Eu);
  }

  if (v15)
  {
    v20 = 10;
  }

  else
  {
    v20 = 9;
  }

  if (v15)
  {
    v21 = 5;
  }

  else
  {
    v21 = 8;
  }

  if (v10)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if ((v15 & 1) == 0)
  {
    [_LSDDeviceIdentifierService clearIdentifiersForUninstallationWithContext:a1 bundleUnit:a2 bundleData:a3];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = ___LSUnregisterAppByUnit_block_invoke;
    v29[3] = &unk_1E6A19888;
    v30 = v13;
    _LSHandlerPrefRemoveAllWithBundleID(v30, v29);
  }

  if (IconServicesLibrary_frameworkLibrary_0 || (v18 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_0 = v18) != 0))
  {
    if (![__LSDefaultsGetSharedInstance(v18 v19)])
    {
      if (v13)
      {
        v23 = softLink_ISInvalidateCacheEntriesForBundleIdentifier(v13);
        if ((v15 & 1) == 0)
        {
          if ([__LSDefaultsGetSharedInstance(v23 v24)])
          {
            v25 = +[LSAltIconManager sharedInstance];
            [v25 clearAlternateNameForBundleIdentifier:v13 validationDictionary:0];
          }
        }
      }
    }
  }

  v26 = _LSUnregisterBundle(&a1->db, a2, 0);
  v27 = v26;
  if (!a4 || v26)
  {
    if (a5 && v26)
    {
      *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v26, 0, "_LSUnregisterAppByUnit", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 628);
    }
  }

  else
  {
    *a4 = v22;
  }

  return v27 == 0;
}

uint64_t _LSUnregisterAppWithBundleIDUsingContext(void *a1, unsigned int a2, LSContext *a3, int *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = (a2 & 1) == 0;
  v8 = (a2 & 2) == 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  memset(buf, 0, sizeof(buf));
  v9 = _LSBundleFindWithInfoAndNo_IOFilter(a3, 0, a1, 0, buf, 2, 1152, 0, 0, &v46, &v44, 0);
  v10 = v9;
  v11 = _LSInstallLog(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v12 = @"Found";
    }

    else
    {
      v12 = @"No";
    }

    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = a1;
    _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "%@ placeholder to remove for %@", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  v13 = _LSBundleFindWithInfoAndNo_IOFilter(a3, 0, a1, 0, buf, 2, 128, 0, 0, &v46 + 1, &v45, 0);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    v13 = _LSBundleFindWithInfoAndNo_IOFilter(a3, 0, a1, 0, buf, 13, 128, 0, 0, &v46 + 1, &v45, 0);
    v14 = v13;
  }

  v15 = a2 & v8;
  v16 = _LSInstallLog(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v17 = @"Found";
    }

    else
    {
      v17 = @"No";
    }

    *buf = 138412546;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = a1;
    _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "%@ app to remove for %@", buf, 0x16u);
  }

  if ((v15 & v10 & v14) == 1)
  {
    v19 = _LSUnregisterBundle(&a3->db, v46, 0);
    v20 = _LSInstallLog(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInt:v19 == 0];
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "_LSUnregisterBundle(%@) returned %@ for placeholder only", buf, 0x16u);
    }

    v22 = 0;
    v23 = 10;
  }

  else if ((v14 | v10))
  {
    v24 = v7 & (a2 >> 1);
    if ((v24 & v10 & 1) == 0)
    {
      [_LSDDeviceIdentifierService clearIdentifiersForUninstallationWithContext:a3 bundleUnit:HIDWORD(v46) bundleData:v45];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = ___LSUnregisterAppWithBundleIDUsingContext_block_invoke;
      v43[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12l;
      v43[4] = a1;
      _LSHandlerPrefRemoveAllWithBundleID(a1, v43);
      v25 = objc_alloc_init(LSDefaultApplicationQueryServerDatastore);
      [(LSDefaultApplicationQueryServerDatastore *)v25 removeEntriesForBundleIdentifier:a1];
    }

    v22 = v24 & v10 ^ 1;
    if (((v24 | v10 ^ 1) & 1) != 0 || (a2 & 4) != 0)
    {
      v23 = 0;
    }

    else
    {
      v27 = _LSUnregisterBundle(&a3->db, v46, 0);
      v28 = v27;
      v29 = _LSInstallLog(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [MEMORY[0x1E696AD98] numberWithInt:v28 == 0];
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "_LSUnregisterBundle(%@) returned %@ for placeholder", buf, 0x16u);
      }

      v23 = 9;
    }

    if ((v15 | v14 ^ 1))
    {
      v31 = _LSInstallLog(v18);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413570;
        *&buf[4] = a1;
        *&buf[12] = 1024;
        *&buf[14] = v14;
        *&buf[18] = 1024;
        *&buf[20] = v10;
        *&buf[24] = 1024;
        *&buf[26] = v24;
        *&buf[30] = 1024;
        v48 = v15;
        v49 = 1024;
        v50 = (a2 >> 2) & 1;
        _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "no bundles to remove for %@ (found app: %d placeholder: %d app only: %d placeholder only: %d placeholder only if parallel: %d)", buf, 0x2Au);
      }

      v19 = 0;
    }

    else
    {
      v19 = _LSUnregisterBundle(&a3->db, HIDWORD(v46), 0);
      v32 = _LSInstallLog(v19);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [MEMORY[0x1E696AD98] numberWithInt:v19 == 0];
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v33;
        _os_log_impl(&dword_18162D000, v32, OS_LOG_TYPE_DEFAULT, "_LSUnregisterBundle(%@) returned %@ for app", buf, 0x16u);
      }

      if ((v24 & v10) != 0)
      {
        v23 = 5;
      }

      else
      {
        v23 = 8;
      }
    }
  }

  else
  {
    v26 = _LSInstallLog(v18);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEFAULT, "No bundles to remove for %@", buf, 0xCu);
    }

    v22 = 0;
    v19 = 0;
    v23 = 0;
  }

  v34 = objc_autoreleasePoolPush();
  v35 = _LSInstallLog(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a1;
    _os_log_impl(&dword_18162D000, v35, OS_LOG_TYPE_DEFAULT, "Clearing icon cache entries for %@", buf, 0xCu);
  }

  if (IconServicesLibrary_frameworkLibrary_0 || (v36 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_0 = v36) != 0))
  {
    if (([__LSDefaultsGetSharedInstance(v36 v37)] & 1) == 0)
    {
      v38 = softLink_ISInvalidateCacheEntriesForBundleIdentifier(a1);
      if (v22)
      {
        if ([__LSDefaultsGetSharedInstance(v38 v39)])
        {
          v40 = +[LSAltIconManager sharedInstance];
          [v40 clearAlternateNameForBundleIdentifier:a1 validationDictionary:0];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v34);
  if (a4)
  {
    *a4 = v23;
  }

  return v19;
}

uint64_t _LSUnregisterAppWithBundleID(LSContext *a1, void *a2, unsigned int a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = @" (placeholder only)";
  if ((a3 & 3) != 1)
  {
    v12 = &stru_1EEF65710;
  }

  v24 = 0;
  _LSLogStepStart(6, 0, a2, @"Beginning _LSUnregisterAppWithBundleID%@%@%@", a5, a6, a7, a8, v12);
  if (a1)
  {
    if (a2)
    {
LABEL_5:
      v13 = _LSUnregisterAppWithBundleIDUsingContext(a2, a3, a1, a4);
      v18 = v13;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = _LSContextInit(&v24);
    v18 = v13;
    if (v13)
    {
      goto LABEL_14;
    }

    a1 = &v24;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v19 = _LSDefaultLog(v13);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    _LSUnregisterAppWithBundleID_cold_1();
  }

  v18 = 4294967246;
LABEL_11:
  if (a1 == &v24)
  {
    v13 = _LSContextDestroy(&v24);
  }

  if (!v18)
  {
    v21 = 1;
    goto LABEL_18;
  }

LABEL_14:
  v20 = _LSDefaultLog(v13);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    _LSUnregisterAppWithBundleID_cold_2();
  }

  v21 = 0;
LABEL_18:
  _LSLogStepFinished(6, v21, a2, @"Finished _LSUnregisterAppWithBundleID", v14, v15, v16, v17, v23);

  return v18;
}

void _LSLogStepStart(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  if (a4)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = a4;
    a4 = [[v12 alloc] initWithFormat:v13 arguments:&a9];
  }

  [(objc_class *)getAITransactionLogClass() logStep:a1 byParty:5 phase:1 success:1 forBundleID:v11 description:a4];
}

void _LSLogStepFinished(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a3;
  if (a4)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = a4;
    a4 = [[v13 alloc] initWithFormat:v14 arguments:&a9];
  }

  [(objc_class *)getAITransactionLogClass() logStep:a1 byParty:5 phase:2 success:a2 forBundleID:v12 description:a4];
}

void sub_1816A7B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1816A8160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void LSApplicationWorkspaceNotificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (([a3 isEqualToString:{@"com.lsinstallprogress.appcontrols.cancel", a4}] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.lsinstallprogress.appcontrols.pause") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.lsinstallprogress.appcontrols.prioritize") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.lsinstallprogress.appcontrols.resume") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"com.lsinstallprogress.networkusagechanged"))
  {
    v8 = a5;
    v9 = a3;
    v10 = [a2 remoteObserver];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __LSApplicationWorkspaceObserverCallback_block_invoke;
    v21 = &unk_1E6A1A3C8;
    v22 = v9;
    v23 = v8;
    v24 = v10;
    v11 = v9;
    v12 = v8;
    v13 = v10;
    v14 = "com.apple.launchservices.LSApplicationWorkspaceObserverCallback";
LABEL_7:
    dispatchAsyncToCallbackQueueWithTransaction(v14, &v18);

    return;
  }

  if (([a3 isEqualToString:@"com.apple.LaunchServices.pluginsregistered"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.LaunchServices.pluginsunregistered") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"com.apple.LaunchServices.pluginswillberemoved"))
  {
    v15 = a5;
    v16 = a3;
    v17 = [a2 remoteObserver];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __LSApplicationWorkspacePluginsChangedCallback_block_invoke;
    v21 = &unk_1E6A1A3C8;
    v22 = v16;
    v23 = v15;
    v24 = v17;
    v11 = v16;
    v12 = v15;
    v13 = v17;
    v14 = "com.apple.launchservices.LSApplicationWorkspacePluginsChangedCallback";
    goto LABEL_7;
  }

  if ([a3 isEqualToString:@"com.apple.LaunchServices.applicationStateChanged"])
  {

    LSApplicationStateChangedCallback(a2, a3, a5);
  }
}

void unsubscribeFromLSAWDistributedNotification(const __CFString *a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __unsubscribeFromLSAWDistributedNotification_block_invoke;
  v1[3] = &__block_descriptor_40_e8_I12__0I8l;
  v1[4] = a1;
  mutateSubscriberCountForNotificationName(a1, v1);
}

void sub_1816A8F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816A91A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1816AA5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _LSCommonOpenApplicationWithBundleIdentifier(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if (!v10)
  {
    _LSCommonOpenApplicationWithBundleIdentifier_cold_1();
  }

  v13 = [v9 optionsFromOpenConfiguration:v11];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___LSCommonOpenApplicationWithBundleIdentifier_block_invoke;
  v19[3] = &unk_1E6A19A70;
  v14 = v12;
  v20 = v14;
  v15 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___LSCommonOpenApplicationWithBundleIdentifier_block_invoke_2;
  v17[3] = &unk_1E6A19E58;
  v18 = v14;
  v16 = v14;
  [v15 openApplicationWithIdentifier:v10 options:v13 useClientProcessHandle:a4 completionHandler:v17];
}

void sub_1816ABA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816ABE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

id serviceDomainForRequestContext(void *a1)
{
  v1 = a1;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = [v1 targetUserID];

  if (v3)
  {
    v4 = [v1 targetUserID];
    v5 = [v4 intValue];

    if (v5)
    {
      v6 = [[_LSDServiceDomain alloc] initWithUID:v5];
    }

    else
    {
      v6 = +[_LSDServiceDomain systemSessionDomain];
    }

    v7 = v6;

    v2 = v7;
  }

  return v2;
}

void handleSaveObserverBehavior(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  _LSContextInvalidate(v10, v11);
  if (v7)
  {
    if (v10)
    {
      [v7 operationWithUUID:v9 didFailToSaveWithError:v10];
    }

    else if (v8)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __handleSaveObserverBehavior_block_invoke;
      v21[3] = &unk_1E6A1A480;
      v13 = v7;
      v22 = v13;
      v14 = v9;
      v23 = v14;
      v15 = [v8 remoteObjectProxyWithErrorHandler:v21];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __handleSaveObserverBehavior_block_invoke_2;
      v18[3] = &unk_1E6A1A4A8;
      v19 = v13;
      v20 = v14;
      [v15 waitForResult:v18];
    }

    else
    {
      v16 = _LSInstallLog(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        handleSaveObserverBehavior_cold_1();
      }

      v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "handleSaveObserverBehavior", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 2573);
      [v7 operationWithUUID:v9 didFailToSaveWithError:v17];
    }
  }
}

void sub_1816AC6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1816ACA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1816ACE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1816AD130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1816AD810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t registerApplicationWithDictionary(void *a1, unsigned int a2)
{
  v3 = a1;
  kdebug_trace();
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v4 = [(FSNode *)v3 objectForKey:@"IsPlaceholder"];
  v5 = [v4 BOOLValue];

  v6 = [(FSNode *)v3 objectForKey:@"IsParallelPlaceholder"];
  v7 = [v6 BOOLValue];

  v8 = [(FSNode *)v3 objectForKey:*MEMORY[0x1E695E4F0]];
  v9 = [(FSNode *)v3 objectForKey:@"Path"];
  if (v9)
  {
    v10 = &stru_1EEF65710;
    if (v7)
    {
      v10 = @"(parallel)";
    }

    v11 = @"app bundle";
    if (v5)
    {
      v11 = @"placeholder";
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LaunchServices: registering %@%@ for %@", v10, v11, v8];
    if (_LSLoggingQueue_onceToken != -1)
    {
      _registerMIPluginDictionary_cold_1();
    }

    v13 = _LSLoggingQueue_logQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___LSSetCrashMessage_block_invoke;
    block[3] = &unk_1E6A195E0;
    v27 = v12;
    v14 = v12;
    dispatch_sync(v13, block);

    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v9 isDirectory:1];
    v16 = FSNodeCreateWithURL(v15, 0, &v24);

    if (!v16)
    {
      v16 = _LSContextInit(&v25);
      if (!v16)
      {
        v17 = _LSFindOrRegisterBundleNode(&v25, v24, 0, (((a2 >> 30) & 1) == 0) | a2 | 0x2000000, v3, &v23, &v22);
        v16 = v17;
        if (!v17)
        {
          if (([__LSDefaultsGetSharedInstance(v17 v18)] & 1) == 0)
          {
            v19 = [(FSNode *)v3 objectForKeyedSubscript:@"IsPlaceholder"];
            v20 = [v19 BOOLValue];

            if ((v20 & 1) == 0)
            {
              [_LSDDeviceIdentifierService generateIdentifiersForInstallationWithContext:&v25 bundleUnit:v23 bundleData:v22];
            }
          }

          if (_LSLoggingQueue_onceToken != -1)
          {
            registerApplicationWithDictionary_cold_2();
          }

          dispatch_sync(_LSLoggingQueue_logQueue, &__block_literal_global_1152);
        }

        _LSContextDestroy(&v25);
      }
    }
  }

  else
  {
    v16 = 4294967246;
  }

  kdebug_trace();

  return v16;
}

void sub_1816AE1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816AE4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816AE8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1816AED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1816AF2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816AF77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1816AFAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816AFDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t _updatePlaceholderInstallType(void *a1, void *a2, uint64_t a3, void *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (a3 && (softLinkMobileInstallationUpdatePlaceholderMetadata(v8, a3, 0, 0, 0), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = _LSInstallLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace updatePlaceholderMetadataForApp:installType:failure:underlyingError:source:outError:];
    }

    v17 = 0;
  }

  else
  {
    v26 = @"LSInstallType";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v27[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v20 = [MEMORY[0x1E696AFB0] UUID];
    v25 = 0;
    v17 = [v7 updateRecordForApp:v9 withSINF:0 iTunesMetadata:0 placeholderMetadata:v19 sendNotification:1 operationUUID:v20 outSaveToken:0 error:&v25];
    v11 = v25;

    _LSContextInvalidate(v21, v22);
  }

  _LSLogStepFinished(11, v17, v9, @"Updated Placeholder install type with error %@", v13, v14, v15, v16, v11);
  if (a4)
  {
    v23 = v11;
    *a4 = v11;
  }

  return v17;
}

uint64_t _LSUnregisterPluginsAtURL(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v22 = 0;
    v23 = 0;
    inited = _LSContextInitReturningError(&v23, &v22);
    v5 = v22;
    if (!inited)
    {
      v13 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v6 = _LSCopyPluginsWithURL(&v23, v3, 0);
    v7 = v6;
    if (v6)
    {
      if (![v6 count])
      {
        v13 = 1;
LABEL_21:
        _LSContextDestroy(&v23);

        goto LABEL_22;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [MEMORY[0x1E695DFD8] setWithArray:{v7, 0}];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v9)
      {
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = _LSUnregisterPlugin(&v23, [*(*(&v18 + 1) + 8 * i) unsignedLongLongValue]);
            if (v12)
            {
              v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "_LSUnregisterPluginsAtURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 506);

              v13 = 0;
              v5 = v15;
              goto LABEL_20;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          v13 = 1;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSUnregisterPluginsAtURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 513);
      v13 = 0;
      v5 = v8 = v5;
    }

LABEL_20:

    goto LABEL_21;
  }

  v24 = *MEMORY[0x1E696A278];
  v25 = @"invalid plugin URL";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "_LSUnregisterPluginsAtURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 520);

  v13 = 0;
LABEL_23:
  if (a2 && (v13 & 1) == 0)
  {
    v16 = v5;
    *a2 = v5;
  }

  return v13;
}

uint64_t _LSRegisterPluginWithInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v17 = 0;
  v18.db = 0;
  if (v3)
  {
    v6 = _LSContextInit(&v18.db);
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v7 = _LSCopyPluginsWithURL(&v18, v3, 0);
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectAtIndex:0];
        v10 = [v9 unsignedLongLongValue];
        CFRelease(v8);
      }

      else
      {
        v10 = 0;
      }

      v6 = FSNodeCreateWithURL(v3, 0, &v17);
      v11 = v17;
      if (!v6)
      {
        v16 = 0;
        v12 = _LSRegisterPluginNode(&v18, v17, v4, 0, v10, &v16);
        v13 = v16;
        v14 = v13;
        if (v12)
        {
          v6 = 0;
        }

        else
        {
          v6 = _LSGetOSStatusFromNSError(v13);
        }

        _LSContextDestroy(&v18.db);
        v11 = v17;
      }
    }
  }

  else
  {
    v11 = 0;
    v6 = 4294967246;
  }

  objc_autoreleasePoolPop(v5);
  return v6;
}

void sub_1816B0FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1816B12A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B1430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B16CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B1854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B1A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B1C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B2D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSServer_UpdateDatabaseWithInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v47 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v13 = @"sinfData";
  }

  else if (a3)
  {
    v13 = @"iTunesData";
  }

  else
  {
    v13 = @"placeholderMetadata";
    if (!a4)
    {
      v13 = @"bumping sequence number";
    }
  }

  _LSLogStepStart(11, 0, a1, @"Updating bundle record for app (%@)", a5, a6, a7, a8, v13);
  v14 = objc_autoreleasePoolPush();
  v15 = [[LSBundleRecordUpdater alloc] initWithBundleIdentifier:a1 preferPlaceholder:a4 != 0];
  if (v15)
  {
    v16 = v15;
    if (!v8)
    {
      v17 = [(LSBundleRecordUpdater *)v15 checkNeedsUpdateForiTunesMetadata:a3 SINFo:a2 placeholderMetadata:a4];
      if ((v17 & 1) == 0)
      {
        v32 = _LSDefaultLog(v17);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v40 = a2;
          v41 = 2112;
          v42 = a3;
          v43 = 2112;
          v44 = a4;
          v45 = 2112;
          v46 = a1;
          _os_log_impl(&dword_18162D000, v32, OS_LOG_TYPE_DEFAULT, "Updating database with %@ %@ %@ for %@: did not actually need an update, and it was not forced, so skipping", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v14);
        _LSLogStepFinished(11, 1, a1, @"Updated bundle record%@", v33, v34, v35, v36, @" (skipped)");
        return 0;
      }
    }

    [(LSBundleRecordUpdater *)v16 parseSINFDictionary:a2];
    [(LSBundleRecordUpdater *)v16 parseiTunesMetadata:a3];
    [(LSBundleRecordUpdater *)v16 parsePlaceholderMetadata:a4];
    v38 = 0;
    v18 = [(LSBundleRecordUpdater *)v16 updateBundleRecord:&v38];
    v19 = v38;

    objc_autoreleasePoolPop(v14);
    if (v18)
    {
      _LSArmSaveTimer(1);
      _LSLogStepFinished(11, 1, a1, @"Updated bundle record%@", v21, v22, v23, v24, &stru_1EEF65710);

      return 0;
    }
  }

  else
  {
    v25 = _LSDefaultLog(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      _LSServer_UpdateDatabaseWithInfo_cold_1();
    }

    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSServer_UpdateDatabaseWithInfo", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 6783);
    objc_autoreleasePoolPop(v14);
  }

  v26 = _LSDefaultLog(v20);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    _LSServer_UpdateDatabaseWithInfo_cold_2();
  }

  _LSLogStepFinished(11, 0, a1, @"Updated bundle record%@", v27, v28, v29, v30, &stru_1EEF65710);
  v31 = _LSGetOSStatusFromNSError(v19);

  return v31;
}

void _LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers(uint64_t a1, void *a2, void *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  _LSAssertRunningInServer("void _LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers(LSContext *, NSSet<NSString *> *__strong, __strong id<LSMCStateProvider>)", v7);
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v63 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v10 = v5;
  v65 = [v10 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v65)
  {
    v64 = *v78;
    v60 = v8;
    v61 = v6;
    v58 = v10;
    v59 = v9;
    v62 = a1;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v78 != v64)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        v13 = [LSApplicationRecord alloc];
        v76 = 0;
        v14 = [(LSApplicationRecord *)v13 _initWithNode:0 bundleIdentifier:v12 placeholderBehavior:1 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:a1 error:&v76];
        v15 = v76;
        v16 = v15;
        if (v14)
        {
          v67 = v15;
          v68 = i;
          v66 = [v14 applicationState];
          v17 = [v66 isRestrictedWithStateProvider:v6];
          v69 = v14;
          v18 = MEMORY[0x1E695E110];
          v83[0] = MEMORY[0x1E695E110];
          v82[0] = @"isRemoved";
          v82[1] = @"isRestricted";
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v17];
          v82[2] = @"isBlocked";
          v83[1] = v19;
          v83[2] = v18;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];
          [v8 setObject:v20 forKey:v12];

          v14 = v69;
          v70 = [v69 applicationExtensionRecords];
          if ([v70 count])
          {
            if (_LSIsNewsBundleIdentifier(v12))
            {
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v21 = v70;
              v22 = [v21 countByEnumeratingWithState:&v72 objects:v81 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v73;
                v25 = @" not";
                if (v17)
                {
                  v25 = &stru_1EEF65710;
                }

                v71 = v25;
                if (v17)
                {
                  v26 = v9;
                }

                else
                {
                  v26 = v63;
                }

                do
                {
                  for (j = 0; j != v23; ++j)
                  {
                    if (*v73 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v28 = *(*(&v72 + 1) + 8 * j);
                    v29 = [v28 effectiveBundleIdentifier];
                    if (!_LSIsNewsWidgetBundleIdentifier(v29))
                    {
                      goto LABEL_24;
                    }

                    v30 = +[LSApplicationRestrictionsManager sharedInstance];
                    v31 = [(LSApplicationRestrictionsManager *)v30 isAppExtensionRestricted:v29];

                    v33 = _LSInstallLog(v32);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v34 = @" not";
                      if (v31)
                      {
                        v34 = &stru_1EEF65710;
                      }

                      v85 = v71;
                      v86 = 2112;
                      v87 = v34;
                      _os_log_impl(&dword_18162D000, v33, OS_LOG_TYPE_DEFAULT, "Note: News is%@ restricted, news widget is%@ restricted", buf, 0x16u);
                    }

                    if (v17 == v31)
                    {
LABEL_24:
                      [v26 addObject:v28];
                    }
                  }

                  v23 = [v21 countByEnumeratingWithState:&v72 objects:v81 count:16];
                }

                while (v23);
                v8 = v60;
                v6 = v61;
                v10 = v58;
                v9 = v59;
                a1 = v62;
                v14 = v69;
              }

              else
              {
                a1 = v62;
              }
            }

            else
            {
              v21 = [v70 allObjects];
              if (v17)
              {
                v36 = v9;
              }

              else
              {
                v36 = v63;
              }

              [v36 addObjectsFromArray:v21];
            }
          }

          v16 = v67;
          i = v68;
          v35 = v66;
        }

        else
        {
          v35 = _LSInstallLog(v15);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v85 = "_LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers";
            v86 = 2112;
            v87 = v12;
            v88 = 2112;
            v89 = v16;
            _os_log_error_impl(&dword_18162D000, v35, OS_LOG_TYPE_ERROR, "%s: could not initialize record for bundleID %@: %@", buf, 0x20u);
          }
        }
      }

      v65 = [v10 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v65);
  }

  _LSLogStepAsync(7, 1, 0, @"Sending appStateChangedNotification with payload %@", v37, v38, v39, v40, v8);
  v42 = _LSInstallLog(v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v85 = v8;
    _os_log_impl(&dword_18162D000, v42, OS_LOG_TYPE_DEFAULT, "Sending appStateChangedNotification for %@", buf, 0xCu);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, @"com.apple.LaunchServices.applicationStateChanged", 0, v8, 1uLL);
  if ([v63 count])
  {
    _LSLogStepAsync(7, 1, 0, @"Sending installedNotifications for %@", v44, v45, v46, v47, v63);
    v49 = _LSInstallLog(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v85 = v63;
      _os_log_impl(&dword_18162D000, v49, OS_LOG_TYPE_DEFAULT, "Sending installedNotifications for %@", buf, 0xCu);
    }

    v50 = +[_LSInstallProgressService sharedInstance];
    [v50 detachAndSendNotification:@"com.apple.LaunchServices.pluginsregistered" forApplicationExtensionRecords:v63];
  }

  if ([v9 count])
  {
    _LSLogStepAsync(7, 1, 0, @"Sending uninstalledNotifications for %@", v51, v52, v53, v54, v9);
    v56 = _LSInstallLog(v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v85 = v9;
      _os_log_impl(&dword_18162D000, v56, OS_LOG_TYPE_DEFAULT, "Sending uninstalledNotifications for %@", buf, 0xCu);
    }

    v57 = +[_LSInstallProgressService sharedInstance];
    [v57 detachAndSendNotification:@"com.apple.LaunchServices.pluginsunregistered" forApplicationExtensionRecords:v9];
  }
}

void sub_1816B5E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

id bestRecordForScheme(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AF20];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:v4];

  v6 = [LSClaimBinding alloc];
  v7 = [v5 URL];
  v8 = [(LSClaimBinding *)v6 initWithURL:v7 error:a2];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [(LSClaimBinding *)v8 bundleRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(LSClaimBinding *)v8 bundleRecord];
    goto LABEL_7;
  }

  if (a2)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "bestRecordForScheme", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4855);
    *a2 = v11 = 0;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

LABEL_7:

  return v11;
}

void sub_1816B8440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B8640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1816B8C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 136), 8);
  _Unwind_Resume(a1);
}

void dispatchAsyncToCallbackQueueWithTransaction(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  v4 = +[LSApplicationWorkspace callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __dispatchAsyncToCallbackQueueWithTransaction_block_invoke;
  v7[3] = &unk_1E6A19E08;
  v8 = v3;
  v9 = v2;
  v5 = v3;
  v6 = v2;
  dispatch_async(v4, v7);
}

id filterProxiesForHelperPlaceholders(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 correspondingApplicationRecord];
        v10 = [v9 isWebAppPlaceholder];

        if (v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void _LSLogStepAsync(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a3;
  if (a4)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = a4;
    a4 = [[v13 alloc] initWithFormat:v14 arguments:&a9];
  }

  [(objc_class *)getAITransactionLogClass() logStep:a1 byParty:5 phase:3 success:a2 forBundleID:v12 description:a4];
}

void _LSServer_ExecuteSyncWithQuiescedInstallationActivity(void *a1)
{
  v1 = a1;
  RegisterInstallResultsLock = _LSDatabaseGetRegisterInstallResultsLock();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = ___LSServer_ExecuteSyncWithQuiescedInstallationActivity_block_invoke;
  v7 = &unk_1E6A1A370;
  v3 = v1;
  v8 = v3;
  v4 = v5;
  os_unfair_lock_lock(RegisterInstallResultsLock);
  (v6)(v4);
  os_unfair_lock_unlock(RegisterInstallResultsLock);
}

void sub_1816BC1FC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

BOOL _LSServer_PerformExternalRebuildRegistration(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = +[LSDatabaseRebuildContext currentRebuildContextIfExists];
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [(LSDatabaseRebuildContext *)v4 registerItems:v3];
      v9 = 0;
      if (!a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = _LSInstallLog(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _LSServer_PerformExternalRebuildRegistration_cold_1(v3);
      }

      v7 = *MEMORY[0x1E696A768];
      v13 = *MEMORY[0x1E696A278];
      v14[0] = @"bad registration input";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v9 = _LSMakeNSErrorImpl(v7, -50, v8, "_LSServer_PerformExternalRebuildRegistration", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5871);

      if (!a2)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    v11 = v9;
    *a2 = v9;
    goto LABEL_11;
  }

  v10 = _LSInstallLog(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    _LSServer_PerformExternalRebuildRegistration_cold_2();
  }

  v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 94, 0, "_LSServer_PerformExternalRebuildRegistration", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5875);
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v9 == 0;
}

void _LSServer_NoteMigratorRunningInMigration()
{
  v0 = +[LSDatabaseRebuildContext currentRebuildContextIfExists];
  v1 = v0;
  if (v0)
  {
    [(LSRebuildStatisticsGatherer *)*(v0 + 8) setMigratorRunning:?];
  }

  else
  {
    v2 = _LSInstallLog(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _LSServer_NoteMigratorRunningInMigration_cold_1();
    }
  }
}

uint64_t _LSServer_LSEnumerateAndRegisterAllCryptexContent()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v0 = objc_alloc_init(LSRebuildStatisticsGatherer);
  [(LSRebuildStatisticsGatherer *)v0 setOnlyCryptexContent:?];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___LSServer_LSEnumerateAndRegisterAllCryptexContent_block_invoke;
  v4[3] = &unk_1E6A1A168;
  v1 = v0;
  v5 = v1;
  v6 = &v7;
  [LSDatabaseRebuildContext withStatsGatherer:v1 runWithRebuildContext:v4];
  [(LSRebuildStatisticsGatherer *)v1 submitAnalytics];
  v2 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v2;
}

void sub_1816BC788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext(void *a1)
{
  v1 = a1;
  v2 = _LSInstallLog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "calling into InstalledContentLibrary to register cryptex content", buf, 2u);
  }

  v3 = [MEMORY[0x1E69A8D60] defaultWorkspace];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext_block_invoke;
  v11[3] = &unk_1E6A1A190;
  v4 = v1;
  v12 = v4;
  v10 = 0;
  v5 = [v3 enumerateCryptexContentWithBlock:v11 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v9 = _LSInstallLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext_cold_1();
    }

    [(LSDatabaseRebuildContext *)v4 noteRebuildError:v6];
  }

  v8 = _LSInstallLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "finished enumerating cryptex content.", buf, 2u);
  }
}

uint64_t _LSServer_LSEnumerateAndRegisterAllBundles(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = objc_opt_class();
  v5 = [v3 objectForKey:@"UserRequestedAppDBRebuild"];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  v8 = [v6 BOOLValue];

  v9 = objc_alloc_init(LSRebuildStatisticsGatherer);
  [(LSRebuildStatisticsGatherer *)v9 setIsUserRequested:v8];
  [(LSRebuildStatisticsGatherer *)v9 setRebuildReasonFlags:v2];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke;
  v13[3] = &unk_1E6A1A208;
  v10 = v9;
  v14 = v10;
  v15 = &v16;
  [(LSRebuildStatisticsGatherer *)v10 performRebuild:v13];
  [(LSRebuildStatisticsGatherer *)v10 submitAnalytics];
  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

void sub_1816BCBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816BD07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1816BD3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSServer_RebuildApplicationDatabases(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v64[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1865D7C40](a1, a2, a3);
  v7 = objc_autoreleasePoolPush();
  _LSLogStepStart(9, 0, 0, @"Force rebuilding LaunchServices database", v8, v9, v10, v11, v43[0]);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__4;
  v57[4] = __Block_byref_object_dispose__4;
  v58 = 0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = _LSServer_DatabaseExecutionContext();
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = ___LSServer_RebuildApplicationDatabases_block_invoke;
  v51[3] = &unk_1E6A1A258;
  v55 = a4;
  v53 = v57;
  v54 = &v59;
  v14 = v12;
  v52 = v14;
  v56 = a5;
  [(LSDBExecutionContext *)v13 syncWrite:v51];

  if (*(v60 + 24))
  {
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v63 = @"UserRequestedAppDBRebuild";
    v64[0] = MEMORY[0x1E695E118];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v24 = _LSServer_LSEnumerateAndRegisterAllBundles(v23, 0);
    v25 = v24;
    _LSLogStepFinished(9, v24 != 0, 0, @"Finished rebuilding LaunchServices database", v26, v27, v28, v29, v43[0]);
    v30 = _LSServer_DatabaseExecutionContext();
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = ___LSServer_RebuildApplicationDatabases_block_invoke_3;
    v43[3] = &unk_1E6A1A2A8;
    v49 = v57;
    v50 = v25;
    v44 = v14;
    v31 = v19;
    v45 = v31;
    v32 = v21;
    v46 = v32;
    v33 = v20;
    v47 = v33;
    v34 = v22;
    v48 = v34;
    [(LSDBExecutionContext *)v30 syncWrite:v43];
  }

  else
  {
    _LSLogStepFinished(9, 0, 0, @"Skipping rebuild", v15, v16, v17, v18, v43[0]);
  }

  v37 = _LSDatabaseGetSeedingGroup(v35, v36);
  dispatch_group_leave(v37);

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v59, 8);
  objc_autoreleasePoolPop(v7);
  MEMORY[0x1865D7C50](v38, v39, v40, v41);
  return 1;
}

void sub_1816BDCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

void enumeratePlaceholderAndInstalledApplicationRecords(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [LSApplicationRecord enumeratorWithOptions:64];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v1[2](v1, *(*(&v16 + 1) + 8 * v6), &v20);
      if (v20)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v20 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [LSApplicationRecord enumeratorWithOptions:0, 0];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_12:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v1[2](v1, *(*(&v12 + 1) + 8 * v11), &v20);
        if (v20)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v21 count:16];
          if (v9)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }
  }
}

id allAppexRecords()
{
  v0 = [LSApplicationExtensionRecord enumeratorWithOptions:0];
  v1 = [v0 allObjects];

  return v1;
}

void _LSServer_SyncWithMobileInstallation(void *a1)
{
  v1 = a1;
  v3 = _LSDatabaseGetMobileInstallSyncupGroup(v1, v2);
  dispatch_group_enter(v3);

  v4 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v4 assertNotActiveForThisThread];

  if ((atomic_fetch_or(&sMISyncFlag, 0x80u) & 0x80) == 0)
  {
    v7 = _LSInstallLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Syncing with MobileInstallation once in-flight installation activity is quiesced", buf, 2u);
    }

    MEMORY[0x1865D7C40]();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___LSServer_SyncWithMobileInstallation_block_invoke;
    v9[3] = &unk_1E6A1A370;
    v10 = v1;
    _LSServer_ExecuteSyncWithQuiescedInstallationActivity(v9);
  }

  v8 = _LSDatabaseGetMobileInstallSyncupGroup(v5, v6);
  dispatch_group_leave(v8);
}

void sub_1816BED18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1015(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1865D71B0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged(LSContext *a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v10 = _LSDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Checking if %@ needs to be registered at %@", buf, 0x16u);
  }

  v11 = FSNodeCreateWithURL(v8, 0, &v27);
  if (v11)
  {
    v12 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged_cold_1();
    }

    v13 = 0;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    HasChanged = _LSBundleFindWithNode(a1, v27, &v26, &v25);
    v15 = HasChanged;
    if (HasChanged || (HasChanged = _LSNodeHasChanged(v27, a1->db, v26, v25, 0), HasChanged))
    {
      v16 = _LSDefaultLog(HasChanged);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"missing";
        *buf = 138412802;
        v29 = v8;
        v30 = 2112;
        if (!v15)
        {
          v17 = @"stale";
        }

        v31 = v7;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "Registering %@ (%@) because its record is %@", buf, 0x20u);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = ___getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged_block_invoke;
      v21[3] = &unk_1E6A1A3C8;
      v22 = v8;
      v23 = v9;
      v24 = v7;
      v13 = MEMORY[0x1865D71B0](v21);

      v18 = v22;
    }

    else
    {
      v18 = _LSDefaultLog(HasChanged);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Skipping %@ because its record is up-to-date", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  v19 = MEMORY[0x1865D71B0](v13);

  return v19;
}

void sub_1816C015C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void _LSServer_NoteTerminationRequestForMISync(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = 128;
  atomic_compare_exchange_strong(&sMISyncFlag, &v1, v1);
  v2 = v1 == 128;
  v3 = _LSDefaultLog(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _LSServer_NoteTerminationRequestForMISync_cold_1();
    }

    _LSDatabaseSetSyncInterrupted(v5, v6);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = sMISyncFlag;
      _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "MI sync was not running, %d.", v7, 8u);
    }
  }
}

id initMobileInstallationCopyFrameworkInfoForLaunchServices(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = MobileInstallationLibrary_frameworkLibrary;
  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    v7 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary_frameworkLibrary = v7;
  }

  softLinkMobileInstallationCopyFrameworkInfoForLaunchServices = dlsym(v7, "MobileInstallationCopyFrameworkInfoForLaunchServices");
  v8 = softLinkMobileInstallationCopyFrameworkInfoForLaunchServices(v5, v6, a3);

  return v8;
}

void ___registerExtensionPointsFromMIFrameworkDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LaunchServices: registering extension point %@"];
  if (_LSLoggingQueue_onceToken != -1)
  {
    _registerMIPluginDictionary_cold_1();
  }

  v8 = _LSLoggingQueue_logQueue;
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 3221225472;
  *&block[16] = ___LSSetCrashMessage_block_invoke;
  *&v24 = &unk_1E6A195E0;
  *(&v24 + 1) = v7;
  v9 = v7;
  dispatch_sync(v8, block);

  _LSLogStepStart(4, 0, v5, @"registering extension point", v10, v11, v12, v13, v5);
  active_platform = dyld_get_active_platform();
  v15 = _LSExtensionsLog(active_platform);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    *block = 136316162;
    *&block[4] = "void _registerExtensionPointsFromMIFrameworkDictionary(NSDictionary<NSString *,id> *__strong)_block_invoke";
    *&block[12] = 2112;
    *&block[14] = v5;
    *&block[22] = 1024;
    LODWORD(v24) = active_platform;
    WORD2(v24) = 2112;
    *(&v24 + 6) = v21;
    HIWORD(v24) = 2112;
    v25 = v6;
    _os_log_debug_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEBUG, "%s Registering extension point with identifier '%@' platform: %d url '%@' SDK Dictionary: %@", block, 0x30u);
  }

  v16 = _LSRegisterExtensionPoint(0, 0, v5, active_platform, v6, *(a1 + 32)) == 0;
  _LSLogStepFinished(4, v16, v5, @"registered extension point", v17, v18, v19, v20, v22);
}

void init_ISInvalidateCacheEntriesForBundleIdentifier(void *a1)
{
  v2 = a1;
  v1 = IconServicesLibrary_frameworkLibrary_0;
  if (!IconServicesLibrary_frameworkLibrary_0)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary_0 = v1;
  }

  softLink_ISInvalidateCacheEntriesForBundleIdentifier = dlsym(v1, "_ISInvalidateCacheEntriesForBundleIdentifier");
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(v2);
}

Class initAITransactionLog()
{
  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    MobileInstallationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
  }

  result = objc_getClass("AITransactionLog");
  classAITransactionLog = result;
  getAITransactionLogClass = AITransactionLogFunction;
  return result;
}

void LSApplicationStateChangedCallback(void *a1, uint64_t a2, void *a3)
{
  v5 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LSApplicationStateChangedCallback_cold_1();
  }

  v6 = [a1 remoteObserver];
  v7 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __LSApplicationStateChangedCallback_block_invoke;
  v10[3] = &unk_1E6A18F50;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.LSApplicationStateChangedCallback", v10);
}

void __LSApplicationWorkspaceObserverCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  _LSContextInvalidate(a1, a2);
  v3 = [*(a1 + 32) isEqualToString:@"com.lsinstallprogress.networkusagechanged"];
  v4 = *(a1 + 40);
  if (!v3)
  {
    v5 = [v4 objectForKeyedSubscript:@"LSApplicationProxiesList"];
    if ([*(a1 + 32) isEqualToString:@"com.lsinstallprogress.appcontrols.cancel"])
    {
      v6 = &selRef_applicationInstallsDidCancel_;
    }

    else if ([*(a1 + 32) isEqualToString:@"com.lsinstallprogress.appcontrols.pause"])
    {
      v6 = &selRef_applicationInstallsDidPause_;
    }

    else if ([*(a1 + 32) isEqualToString:@"com.lsinstallprogress.appcontrols.prioritize"])
    {
      v6 = &selRef_applicationInstallsDidPrioritize_;
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:@"com.lsinstallprogress.appcontrols.resume"])
      {
LABEL_24:

        return;
      }

      v6 = &selRef_applicationInstallsDidResume_;
    }

    v7 = *v6;
    if (*v6 && [v5 count] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [LSApplicationProxy applicationProxyForIdentifier:*(*(&v16 + 1) + 8 * i) placeholder:1];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }

      [*(a1 + 48) v7];
    }

    goto LABEL_24;
  }

  v15 = [v4 objectForKeyedSubscript:@"usingNetwork"];
  [*(a1 + 48) networkUsageChanged:{objc_msgSend(v15, "BOOLValue")}];
}

void __LSApplicationWorkspacePluginsChangedCallback_block_invoke(id *a1, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  _LSContextInvalidate(a1, a2);
  v3 = 0x1E695D000uLL;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a1[4] isEqualToString:@"com.apple.LaunchServices.pluginsregistered"])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v5 = [a1[5] allKeys];
    v6 = [v5 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v65;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v65 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(*(&v64 + 1) + 8 * i)];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v7);
    }

    v63 = 0;
    v11 = v4;
    MayMapDatabase = _LSCurrentProcessMayMapDatabase();
    if (MayMapDatabase)
    {
      v76 = 0;
      v13 = [LSApplicationExtensionRecord applicationExtensionRecordsForUUIDs:v11 outContainingBundleRecords:&v63 error:&v76];
      v14 = v76;
      v15 = v14;
      if (v13)
      {
        v53 = v14;
        v54 = v11;
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v17 = v13;
        v18 = [v17 countByEnumeratingWithState:&v72 objects:v81 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v73;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v73 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v72 + 1) + 8 * j);
              v23 = [v22 compatibilityObject];
              if (v23)
              {
                [v16 addObject:v23];
              }

              else
              {
                v24 = _LSInstallLog(0);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v80 = v22;
                  _os_log_error_impl(&dword_18162D000, v24, OS_LOG_TYPE_ERROR, "Could not get a proxy for appex record %@; did it go away?", buf, 0xCu);
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v72 objects:v81 count:16];
          }

          while (v19);
        }

        v11 = v54;
        v3 = 0x1E695D000;
        if (v16)
        {
LABEL_47:

          v32 = [v63 mutableCopy];
          v31 = sel_pluginsDidInstall_;

          if (!sel_pluginsDidInstall_)
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }
      }

      else
      {
        v33 = _LSInstallLog(v14);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          __LSApplicationWorkspacePluginsChangedCallback_block_invoke_cold_1();
        }
      }
    }

    v34 = _LSInstallLog(MayMapDatabase);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      __LSApplicationWorkspacePluginsChangedCallback_block_invoke_cold_2();
    }

    v16 = objc_alloc_init(*(v3 + 3952));
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v35 = v11;
    v36 = [v35 countByEnumeratingWithState:&v68 objects:buf count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v69;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v69 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [LSPlugInKitProxy pluginKitProxyForUUID:*(*(&v68 + 1) + 8 * k)];
          if (v40)
          {
            [v16 addObject:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v68 objects:buf count:16];
      }

      while (v37);
    }

    goto LABEL_47;
  }

  if (([a1[4] isEqualToString:@"com.apple.LaunchServices.pluginsunregistered"] & 1) == 0 && !objc_msgSend(a1[4], "isEqualToString:", @"com.apple.LaunchServices.pluginswillberemoved"))
  {
    v16 = 0;
    v32 = 0;
    goto LABEL_51;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = a1[5];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __LSApplicationWorkspacePluginsChangedCallback_block_invoke_2;
  v60[3] = &unk_1E6A1A3F0;
  v61 = v4;
  v27 = v25;
  v62 = v27;
  [v26 enumerateKeysAndObjectsUsingBlock:v60];
  v28 = a1[4];
  v16 = v27;
  v29 = [v28 isEqualToString:@"com.apple.LaunchServices.pluginsunregistered"];
  v30 = &selRef_pluginsDidUninstall_;
  if (!v29)
  {
    v30 = &selRef_pluginsWillUninstall_;
  }

  v31 = *v30;

  v32 = 0;
  if (v31)
  {
LABEL_48:
    if ([v16 count] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [a1[6] v31];
    }
  }

LABEL_51:
  if ([v32 count])
  {
    do
    {
      v41 = objc_autoreleasePoolPush();
      v42 = [v32 lastObject];
      context = v41;
      if (objc_opt_respondsToSelector())
      {
        v43 = [v42 applicationExtensionRecords];
      }

      else
      {
        v43 = 0;
      }

      [v42 _resolveAllProperties];
      [v42 detach];
      v44 = v32;
      [v32 removeLastObject];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v45 = v43;
      v46 = [v45 countByEnumeratingWithState:&v56 objects:v77 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v57;
        do
        {
          for (m = 0; m != v47; ++m)
          {
            if (*v57 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v56 + 1) + 8 * m);
            v51 = [v50 uniqueIdentifier];
            v52 = [v4 containsObject:v51];

            if (v52)
            {
              [v50 _resolveAllProperties];
              [v50 detach];
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v56 objects:v77 count:16];
        }

        while (v47);
      }

      objc_autoreleasePoolPop(context);
      v32 = v44;
    }

    while ([v44 count]);
  }
}

void __LSApplicationWorkspacePluginsChangedCallback_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E696AFB0];
  v7 = a2;
  v8 = [[v6 alloc] initWithUUIDString:v7];

  [*(a1 + 32) addObject:v8];
  v19 = v5;
  v9 = [v19 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  v10 = [v19 objectForKeyedSubscript:@"NSExtensionIdentifier"];
  v11 = [v19 objectForKeyedSubscript:@"LSEffectiveIdentifier"];
  v12 = [v19 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
  v13 = [v19 objectForKeyedSubscript:@"_LSBundlePath"];
  v14 = v13;
  if (v8 && v13)
  {
    v15 = !v9 || v10 == 0;
    if (!v15 && v12 != 0)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v13 isDirectory:1];
      v18 = [LSPlugInKitProxy plugInKitProxyForUUID:v8 bundleIdentifier:v9 pluginIdentifier:v10 effectiveIdentifier:v11 version:v12 bundleURL:v17];
      if (v18)
      {
        [*(a1 + 40) addObject:v18];
      }
    }
  }
}

void __LSApplicationStateChangedCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  _LSContextInvalidate(a1, a2);
  v3 = [*(a1 + 32) allKeys];
  v4 = v3;
  if (v3 && [v3 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [LSApplicationProxy applicationProxyForIdentifier:*(*(&v14 + 1) + 8 * v10), v14];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = _LSDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "Preparing to call applicationStateDidChange: with %@", buf, 0xCu);
    }

    [*(a1 + 40) applicationStateDidChange:v5];
  }
}

uint64_t __unsubscribeFromLSAWDistributedNotification_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return (a2 - 1);
  }

  v3 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __unsubscribeFromLSAWDistributedNotification_block_invoke_cold_1();
  }

  return 0;
}

uint64_t initUISOpenApplicationOptionClickAttribution()
{
  v0 = UIKitServicesLibrary_frameworkLibrary_0;
  if (!UIKitServicesLibrary_frameworkLibrary_0)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
    UIKitServicesLibrary_frameworkLibrary_0 = v0;
  }

  result = *dlsym(v0, "UISOpenApplicationOptionClickAttribution");
  constantUISOpenApplicationOptionClickAttribution = result;
  getUISOpenApplicationOptionClickAttribution = UISOpenApplicationOptionClickAttributionFunction;
  return result;
}

uint64_t initUISOpenApplicationOptionPasteSharingToken()
{
  v0 = UIKitServicesLibrary_frameworkLibrary_0;
  if (!UIKitServicesLibrary_frameworkLibrary_0)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
    UIKitServicesLibrary_frameworkLibrary_0 = v0;
  }

  result = *dlsym(v0, "UISOpenApplicationOptionPasteSharingToken");
  constantUISOpenApplicationOptionPasteSharingToken = result;
  getUISOpenApplicationOptionPasteSharingToken = UISOpenApplicationOptionPasteSharingTokenFunction;
  return result;
}

uint64_t __handleSaveObserverBehavior_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    return [v5 operationWithUUIDWasSaved:{v6, a3}];
  }

  else
  {
    return [v5 operationWithUUID:v6 didFailToSaveWithError:a3];
  }
}

void _LSSetCrashReporterMessage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = strdup([v1 UTF8String]);
    v4 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      _LSSetCrashReporterMessage_cold_1();
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = _LSSetCrashReporterMessage_messagePtr;
  v6 = _LSSetCrashReporterMessage_messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage_messagePtr, &v6, v3, memory_order_relaxed, memory_order_relaxed);
  if (v6 == v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  qword_1ED444C70 = _LSSetCrashReporterMessage_messagePtr;
}

uint64_t initMobileInstallationUpdatePlaceholderMetadata(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a4;
  v11 = MobileInstallationLibrary_frameworkLibrary;
  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    v11 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary_frameworkLibrary = v11;
  }

  softLinkMobileInstallationUpdatePlaceholderMetadata = dlsym(v11, "MobileInstallationUpdatePlaceholderMetadata");
  updated = softLinkMobileInstallationUpdatePlaceholderMetadata(v9, a2, a3, v10, a5);

  return updated;
}

void __registerSingleMIDict_block_invoke(void **a1, uint64_t a2)
{
  v3 = _LSDatabaseGetSeedingGroup(a1, a2);
  dispatch_group_enter(v3);

  if (a1[4] && ([a1[5] isEqualToString:@"Framework"] & 1) == 0)
  {
    if ([a1[5] isEqualToString:@"PluginKitPlugin"])
    {
      _registerMIPluginDictionary(a1[4], a1[6]);
    }

    else if (([a1[5] isEqualToString:@"CoreServices"] & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"Internal") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"User") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"System") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"SystemAppPlaceholder") & 1) != 0 || objc_msgSend(a1[5], "isEqualToString:", @"VPNPlugin"))
    {
      v4 = objc_alloc(MEMORY[0x1E695DFF8]);
      v5 = [a1[4] objectForKey:@"Path"];
      v6 = [v4 initFileURLWithPath:v5 isDirectory:1];

      Unique = _CFBundleCreateUnique();
      _LSLogStepStart(4, 0, a1[7], @"registering app bundle", v8, v9, v10, v11, v31);
      v12 = registerApplicationWithDictionary(a1[4], 0x21u) == 0;
      _LSLogStepFinished(4, v12, a1[7], @"registered app bundle", v13, v14, v15, v16, v32);
      if (Unique)
      {
        CFRelease(Unique);
      }

      v17 = [a1[4] objectForKeyedSubscript:@"ParallelPlaceholderPath"];
      if (v17)
      {
        v18 = [a1[4] mutableCopy];
        v19 = MEMORY[0x1E695E118];
        [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
        [v18 setObject:v17 forKeyedSubscript:@"Path"];
        [v18 setObject:v19 forKeyedSubscript:@"IsParallelPlaceholder"];
        _LSLogStepStart(4, 0, a1[7], @"registering parallel placeholder", v20, v21, v22, v23, v33);
        v24 = registerApplicationWithDictionary(v18, 0x21u) == 0;
        _LSLogStepFinished(4, v24, a1[7], @"registered parallel placeholder", v25, v26, v27, v28, v34);
      }
    }
  }

  if (_LSLoggingQueue_onceToken != -1)
  {
    _registerMIPluginDictionary_cold_1();
  }

  dispatch_sync(_LSLoggingQueue_logQueue, &__block_literal_global_1152);
  v35 = _LSDatabaseGetSeedingGroup(v29, v30);
  dispatch_group_leave(v35);
}

uint64_t initMobileInstallationEnumerateAllInstalledItemDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MobileInstallationLibrary_frameworkLibrary;
  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    v5 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary_frameworkLibrary = v5;
  }

  softLinkMobileInstallationEnumerateAllInstalledItemDictionaries = dlsym(v5, "MobileInstallationEnumerateAllInstalledItemDictionaries");
  v6 = softLinkMobileInstallationEnumerateAllInstalledItemDictionaries(v3, v4);

  return v6;
}

{
  v3 = a1;
  v4 = a2;
  v5 = MobileInstallationLibrary(void)::frameworkLibrary;
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    v5 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary(void)::frameworkLibrary = v5;
  }

  softLinkMobileInstallationEnumerateAllInstalledItemDictionaries = dlsym(v5, "MobileInstallationEnumerateAllInstalledItemDictionaries");
  v6 = softLinkMobileInstallationEnumerateAllInstalledItemDictionaries(v3, v4);

  return v6;
}

void ___getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Unique = _CFBundleCreateUnique();
  v3 = registerApplicationWithDictionary(*(a1 + 40), 0x40000000u);
  if (v3)
  {
    v4 = v3;
    v5 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      *buf = 67109634;
      *v18 = v4;
      *&v18[4] = 2112;
      *&v18[6] = v12;
      *&v18[14] = 2112;
      *&v18[16] = v13;
      _os_log_error_impl(&dword_18162D000, v5, OS_LOG_TYPE_ERROR, "registerApplicationWithDictionary returned error %d for %@ (%@)", buf, 0x1Cu);
    }
  }

  v6 = [LSApplicationProxy applicationProxyForBundleURL:*(a1 + 32)];
  if ([v6 isInstalled])
  {
    v7 = 7;
  }

  else
  {
    v8 = [v6 isPlaceholder];
    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v9 = _LSProgressLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        *buf = 138412802;
        *v18 = v6;
        *&v18[8] = 2112;
        *&v18[10] = v14;
        *&v18[18] = 2112;
        *&v18[20] = v15;
        _os_log_error_impl(&dword_18162D000, v9, OS_LOG_TYPE_ERROR, "Got app proxy %@ for %@ (%@), not sending any notification", buf, 0x20u);
      }

      v7 = 0;
    }
  }

  v10 = +[_LSInstallProgressService sharedInstance];
  v16 = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v10 sendNotification:v7 forAppProxies:v11 Plugins:0 completion:0];

  if (Unique)
  {
    CFRelease(Unique);
  }
}

void ___getBlockToUpdatePluginRecordFromMIAndNotifyIfChanged_block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  Unique = _CFBundleCreateUnique();
  v5 = *(a1 + 40);
  v4 = a1 + 40;
  _LSLogStepStart(4, 0, v5, @"registering app extension", v6, v7, v8, v9, v24);
  v10 = *v2;
  v11 = *(v4 + 8);
  v30 = *v4;
  v31[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v13 = _LSRegisterPluginWithInfo(v10, v12);

  if (v13)
  {
    v15 = _LSDefaultLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *v2;
      v17 = *v4;
      LODWORD(v24) = 67109634;
      HIDWORD(v24) = v13;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_error_impl(&dword_18162D000, v15, OS_LOG_TYPE_ERROR, "_LSRegisterPluginWithInfo returned error %d for %@ (%@)", &v24, 0x1Cu);
    }
  }

  else
  {
    v15 = [LSPlugInKitProxy pluginKitProxyForURL:*v2];
    if (v15)
    {
      v18 = +[_LSInstallProgressService sharedInstance];
      v29 = v15;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      [v18 sendNotification:@"com.apple.LaunchServices.pluginsregistered" ForPlugins:v19];
    }

    else
    {
      v18 = _LSDefaultLog(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        ___getBlockToUpdatePluginRecordFromMIAndNotifyIfChanged_block_invoke_cold_1();
      }
    }
  }

  _LSLogStepFinished(4, v13 == 0, *v4, @"registered app extension", v20, v21, v22, v23, v24);
  if (Unique)
  {
    CFRelease(Unique);
  }
}

uint64_t __Block_byref_object_copy__1197(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___uninstallMIBundlesNotInSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 168);
  if (v4 == 13 || v4 == 2)
  {
    v9 = a1 + 48;
    [(_LSDatabase *)*(*(*(a1 + 48) + 8) + 48) store];
    v11 = _CSStringCopyCFString();
    v10 = [[_LSEnumeratedBundleInfo alloc] initWithBundleID:v11 isPlaceholder:(*(a3 + 172) >> 18) & 1];
    if (([*(v9 - 16) containsObject:v10] & 1) == 0)
    {
      ___uninstallMIBundlesNotInSet_block_invoke_cold_1(v9, a2, a3, a1);
    }
  }
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_15_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return [a10 countByEnumeratingWithState:&a13 objects:va count:{16, a6, a7, a8}];
}

void sub_1816C2F88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1816C4044(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1816C56EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id __copy_helper_atomic_property_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v6;
  return result;
}

void sub_1816C75E8(_Unwind_Exception *a1)
{
  std::optional<LSBinding>::~optional(v3);

  _Unwind_Resume(a1);
}

uint64_t std::optional<LSBinding>::operator=[abi:nn200100]<LSBinding,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  if (v4 == 1)
  {
    v6 = *(a2 + 32);
    *(a2 + 32) = 0;
    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    v8 = *(a2 + 40);
    *(a2 + 40) = 0;
    v9 = *(a1 + 40);
    *(a1 + 40) = v8;

    v10 = *(a2 + 48);
  }

  else
  {
    v11 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 32) = v11;
    v10 = *(a2 + 48);
    *(a1 + 56) = 1;
  }

  *(a1 + 48) = v10;
  return a1;
}

uint64_t std::optional<LSBinding>::~optional(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
  }

  return a1;
}

void sub_1816C7E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  _Block_object_dispose(&a27, 8);
  a36 = a10;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a36);

  _Unwind_Resume(a1);
}

void sub_1816C8094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(va);

  _Unwind_Resume(a1);
}

void sub_1816C84F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  _Block_object_dispose((v25 - 152), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 std::__optional_storage_base<LSBinding,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LSBinding,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      v5 = *(a2 + 32);
      *(a2 + 32) = 0;
      v6 = *(a1 + 32);
      *(a1 + 32) = v5;

      v7 = *(a2 + 40);
      *(a2 + 40) = 0;
      v8 = *(a1 + 40);
      *(a1 + 40) = v7;

      *(a1 + 48) = *(a2 + 48);
    }
  }

  else if (*(a1 + 56))
  {

    *(a1 + 56) = 0;
  }

  else
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    result = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = 1;
  }

  return result;
}

void std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _LSWriteApplicationPlaceholderToURL(void *a1, void *a2, uint64_t a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a1)
  {
    v8 = _CFURLIsFileURL();
    if (a2)
    {
      if (v8)
      {
        v9 = _CFURLIsFileURL();
        if (v7)
        {
          if (!a3 && v9)
          {
            v10 = a1;
            v11 = a2;
            if (_LSGetPlaceholderQueue(void)::once != -1)
            {
              _LSWriteApplicationPlaceholderToURL_cold_1();
            }

            v12 = _LSGetPlaceholderQueue(void)::result;
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = ___LSWriteApplicationPlaceholderToURL_block_invoke;
            v16[3] = &unk_1E6A193B8;
            v17 = v10;
            v18 = v11;
            v19 = v7;
            v13 = v11;
            v14 = v10;
            dispatch_async(v12, v16);

            goto LABEL_12;
          }
        }
      }
    }
  }

  if (v7)
  {
    v20 = *MEMORY[0x1E696A278];
    v21[0] = @"invalid input parameters";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "_LSWriteApplicationPlaceholderToURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSAppPlaceholders.mm", 69);
    (*(v7 + 2))(v7, 0, v15);
LABEL_12:
  }
}

uint64_t _LSWriteBundlePlaceholderToURLInternal(id *a1, NSURL *a2, NSURL *a3)
{
  v160 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v111 = v4;
  v112 = v5;
  if (v4)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v105 = [MEMORY[0x1E696AAA8] currentHandler];
    v106 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSWriteBundlePlaceholderToURLInternal(Context &, NSURL *__strong, NSURL *__strong)"}];
    [v105 handleFailureInFunction:v106 file:@"LSAppPlaceholders.mm" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"inSrcURL != nil"}];

    if (v112)
    {
      goto LABEL_3;
    }
  }

  v107 = [MEMORY[0x1E696AAA8] currentHandler];
  v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSWriteBundlePlaceholderToURLInternal(Context &, NSURL *__strong, NSURL *__strong)"}];
  [v107 handleFailureInFunction:v108 file:@"LSAppPlaceholders.mm" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"inDestURL != nil"}];

LABEL_3:
  v155 = 0;
  v6 = FSNodeCreateWithURL(v4, 1, &v155);
  if (!v6)
  {
    if (([v155 isDirectory] & 1) == 0)
    {
      v7 = 0;
      v6 = 4294965889;
      goto LABEL_9;
    }

    path.__pn_.__r_.__value_.__r.__words[0] = 0;
    v8 = [(NSURL *)v112 URLByDeletingLastPathComponent];
    v6 = FSNodeCreateWithURL(v8, 1, &path.__pn_.__r_.__value_.__l.__data_);

    if (v6)
    {

      goto LABEL_4;
    }

    v20 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v21 = [path.__pn_.__r_.__value_.__l.__data_ URL];
    v154 = 0;
    v22 = [v20 URLForDirectory:99 inDomain:1 appropriateForURL:v21 create:1 error:&v154];
    v23 = v154;

    if (v22)
    {
      v153 = v23;
      v114 = [[FSNode alloc] initWithURL:v22 flags:8 error:&v153];
      v24 = v153;

      if (v114)
      {
        v6 = 0;
        goto LABEL_104;
      }

      v23 = v24;
    }

    v6 = _LSGetOSStatusFromNSError(v23);
    v114 = 0;
    v24 = v23;
LABEL_104:

    if (v6)
    {
      v7 = v114;
      goto LABEL_9;
    }

    v78 = +[_LSDServiceDomain defaultServiceDomain];
    v79 = LaunchServices::Database::Context::_get(a1, v78, 0);

    if (v79 || (v92 = a1[3]) == 0)
    {
      v152 = 0;
      v151 = 0;
      v150 = 0;
    }

    else
    {
      v93 = v92;
      v6 = _LSGetOSStatusFromNSError(v92);

      v152 = 0;
      v151 = 0;
      v150 = 0;
      v7 = v114;
      if (v6)
      {
        goto LABEL_122;
      }
    }

    v80 = +[_LSDServiceDomain defaultServiceDomain];
    v81 = LaunchServices::Database::Context::_get(a1, v80, 0);

    v82 = v81;
    v7 = v114;
    v83 = _LSGetBundleClassForNode(v82, v155);
    if (v83 != 2)
    {
      if (v83 != 12)
      {
        v6 = 4294956485;
        goto LABEL_30;
      }

      v149 = 0;
      v84 = [v155 extensionWithError:&v149];
      v85 = v149;
      v86 = v85;
      if (v84)
      {
        v87 = [v84 caseInsensitiveCompare:@"appex"] == 0;

        if (!v87)
        {
          v6 = 4294956485;
          goto LABEL_29;
        }
      }

      else
      {
        v6 = _LSGetOSStatusFromNSError(v85);

        if (v6)
        {
          v109 = 0;
LABEL_130:
          v7 = v114;
          goto LABEL_10;
        }
      }

      v99 = +[_LSDServiceDomain defaultServiceDomain];
      v100 = LaunchServices::Database::Context::_get(a1, v99, 0);

      v101 = *v100;
      v148 = 0;
      v102 = _LSPluginFindWithInfo(v101, 0, 0, 0, v155, &v150, &v148);
      v103 = v148;
      v104 = v103;
      v109 = v102;
      if (v102)
      {
        v6 = 0;
      }

      else
      {
        v6 = _LSGetOSStatusFromNSError(v103);
      }

      goto LABEL_130;
    }

    v94 = +[_LSDServiceDomain defaultServiceDomain];
    v95 = LaunchServices::Database::Context::_get(a1, v94, 0);

    v96 = v95;
    v7 = v114;
    v97 = _LSFindOrRegisterBundleNode(v96, v155, 0, 0x2000000u, 0, &v152, &v151);
    v6 = v97;
    if (v97 == -9499)
    {
      v98 = _LSDefaultLog(v97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        LODWORD(path.__pn_.__r_.__value_.__l.__data_) = 138477827;
        *(path.__pn_.__r_.__value_.__r.__words + 4) = v155;
        _os_log_impl(&dword_18162D000, v98, OS_LOG_TYPE_INFO, "Unable to find or register bundle for node %{private}@, so returning kLSApplicationNotFoundErr.", &path, 0xCu);
      }

      v109 = 0;
      v6 = 4294956482;
      v7 = v114;
      goto LABEL_12;
    }

LABEL_122:
    v109 = 0;
    goto LABEL_10;
  }

LABEL_4:
  v7 = 0;
LABEL_9:
  v109 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
LABEL_10:
  if (v6 && v6 != -10814)
  {
    goto LABEL_30;
  }

LABEL_12:
  v147 = 0;
  v114 = v7;
  v9 = [v155 bundleInfoDictionaryWithError:&v147];
  v10 = v147;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 mutableCopy];
    v13 = v12;
    if (v12)
    {
      [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
      [v13 setObject:&unk_1EEF8E9C0 forKeyedSubscript:@"LSInstallType"];
      [v13 removeObjectForKey:@"CFBundleInfoPlistURL"];
      [v13 removeObjectForKey:@"CFBundleRawInfoPlistURL"];
      v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:200 options:0 error:0];
      if (v14)
      {
        v15 = [(FSNode *)v7 childNodeWithRelativePath:@"Info.plist" flags:0 error:0];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 URL];
          v146 = 0;
          v18 = [v14 writeToURL:v17 options:1 error:&v146];
          v19 = v146;

          if (v18)
          {
            v6 = 0;
          }

          else
          {
            v6 = _LSGetOSStatusFromNSError(v19);
          }
        }
      }
    }

    else
    {
      v6 = 4294967255;
    }
  }

  else
  {
    v6 = _LSGetOSStatusFromNSError(v10);
  }

  if (v6)
  {
    goto LABEL_29;
  }

  v26 = [v155 URL];
  v27 = [v26 URLByDeletingLastPathComponent];

  if (v27 && (v29 = _LSCopyiTunesMetadataDictionaryForAppContainerURL(v27), v29, v29))
  {
    v30 = [MEMORY[0x1E696AE40] dataWithPropertyList:v29 format:200 options:0 error:0];
    if (v30)
    {
      v31 = [(FSNode *)v114 childNodeWithRelativePath:@"iTunesMetadata.plist" flags:0 error:0];
      v32 = v31;
      if (v31)
      {
        v33 = [v31 URL];
        v145 = 0;
        v34 = [v30 writeToURL:v33 options:1 error:&v145];
        v35 = v145;

        if (v34)
        {
          v6 = 0;
        }

        else
        {
          v6 = _LSGetOSStatusFromNSError(v35);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v36 = _LSDefaultLog(v28);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      _LSWriteBundlePlaceholderToURLInternal(v111, v36);
    }
  }

  v37 = [v155 copyCFBundleWithError:0];
  if (v37)
  {
    cf = v37;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    obj = CFBundleCopyBundleLocalizations(v37);
    v38 = [(__CFArray *)obj countByEnumeratingWithState:&v141 objects:v159 count:16];
    if (v38)
    {
      v39 = *v142;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v142 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v141 + 1) + 8 * i);
          v42 = v114;
          v43 = [v41 stringByAppendingPathExtension:@"lproj"];
          v44 = _LSCreatePlaceholderSubfolder(v42, v43);

          if (v44)
          {
            v45 = [@"InfoPlist" stringByAppendingPathExtension:@"strings"];
            _LSCopyResourceFileToPlaceholder(cf, v44, v41, v45);
          }
        }

        v38 = [(__CFArray *)obj countByEnumeratingWithState:&v141 objects:v159 count:16];
      }

      while (v38);
    }

    if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
    {
      v46 = [MEMORY[0x1E695DFD8] setWithObjects:{@"CFBundlePrimaryIcon", @"CFBundleAlternateIcons", 0}];
      if (softLinkLICopyIconPathsFromBundleForStyles)
      {
        v47 = softLinkLICopyIconPathsFromBundleForStyles(cf, v46);
      }

      else
      {
        v47 = 0;
      }

      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v48 = v47;
      v49 = [(__CFSet *)v48 countByEnumeratingWithState:&v137 objects:v158 count:16];
      if (v49)
      {
        v50 = *v138;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v138 != v50)
            {
              objc_enumerationMutation(v48);
            }

            _LSCopyResourceURLToPlaceholder(cf, v114, *(*(&v137 + 1) + 8 * j));
          }

          v49 = [(__CFSet *)v48 countByEnumeratingWithState:&v137 objects:v158 count:16];
        }

        while (v49);
      }

      _LSCopyResourceFileToPlaceholder(cf, v114, 0, &cfstr_AssetsCar.isa);
    }

    else
    {
      if (!v151)
      {
        goto LABEL_68;
      }

      v88 = +[_LSDServiceDomain defaultServiceDomain];
      v89 = LaunchServices::Database::Context::_get(a1, v88, 0);

      v90 = *v89;
      v91 = v90;
      [(_LSDatabase *)v90 store];
      v130 = MEMORY[0x1E69E9820];
      v131 = 3321888768;
      v132 = ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke;
      v133 = &unk_1EEF62440;
      v46 = v90;
      v134 = v46;
      CFRetain(cf);
      v135 = v114;
      _CSArrayEnumerateAllValues();

      CFRelease(cf);
      v136 = 0;
      v48 = v46;
    }

LABEL_68:
    CFRelease(cf);
  }

  v52 = v151;
  if (v151)
  {
    if (!v151->libraryPath)
    {
      goto LABEL_73;
    }

    v53 = +[_LSDServiceDomain defaultServiceDomain];
    v54 = LaunchServices::Database::Context::_get(a1, v53, 0);

    v55 = *v54;
    path.__pn_.__r_.__value_.__r.__words[0] = 0;
    path.__pn_.__r_.__value_.__l.__size_ = &path;
    path.__pn_.__r_.__value_.__r.__words[2] = 0x2020000000;
    v157 = 0;
    v128[0] = 0;
    v128[1] = v128;
    v128[2] = 0x2020000000;
    v129 = 0;
    v56 = v55;
    [(_LSDatabase *)v55 store];
    v119 = MEMORY[0x1E69E9820];
    v120 = 3221225472;
    v121 = ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke_60;
    v122 = &unk_1E6A1A688;
    v123 = v55;
    p_path = &path;
    v126 = v128;
    v124 = v114;
    v127 = a1;
    _CSArrayEnumerateAllValues();

    _Block_object_dispose(v128, 8);
    _Block_object_dispose(&path, 8);

    v52 = v151;
  }

  if (!v52)
  {
LABEL_74:
    if (!v109 || !*(v109 + 140))
    {
      goto LABEL_87;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (!v52->base.entitlements)
  {
    goto LABEL_74;
  }

LABEL_76:
  v57 = +[_LSDServiceDomain defaultServiceDomain];
  v58 = LaunchServices::Database::Context::_get(a1, v57, 0);

  v59 = *v58;
  v61 = v59;
  if (v151 && (entitlements = v151->base.entitlements, entitlements) || v109 && (entitlements = *(v109 + 140), entitlements))
  {
    v63 = _LSPlistGetDictionary(v59, entitlements, v60);
    if (v63)
    {
      v64 = [MEMORY[0x1E696AE40] dataWithPropertyList:v63 format:200 options:0 error:0];
      if (v64)
      {
        v65 = [(FSNode *)v114 childNodeWithRelativePath:@"PlaceholderEntitlements.plist" flags:0 error:0];
        v66 = v65;
        if (v65)
        {
          v67 = [v65 URL];
          [v64 writeToURL:v67 atomically:1];
        }
      }
    }
  }

LABEL_87:
  path.__pn_.__r_.__value_.__r.__words[0] = 0;
  v68 = *MEMORY[0x1E695DB48];
  if ([v155 getResourceValue:&path forKey:*MEMORY[0x1E695DB48] options:1 error:0])
  {
    v69 = [(FSNode *)v114 URL];
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke_2;
    v117[3] = &unk_1E6A1A6B0;
    v118 = path.__pn_.__r_.__value_.__l.__data_;
    XCFURLEnumerate(v69, 1, 0, v117);

    [(FSNode *)v114 setResourceValue:path.__pn_.__r_.__value_.__r.__words[0] forKey:v68 options:3 error:0];
  }

  [(FSNode *)v114 setResourceValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695DBA0] options:3 error:0];
  v116 = 0;
  v70 = [(FSNode *)v114 getFileSystemRepresentation:&path error:&v116];
  v71 = v116;
  v72 = v71;
  if (!v70)
  {
    v6 = _LSGetOSStatusFromNSError(v71);

    if (!v6)
    {
      goto LABEL_92;
    }

LABEL_29:
    v7 = v114;
    goto LABEL_30;
  }

LABEL_92:
  v73 = v112;
  v7 = v114;
  v74 = [(NSURL *)v112 fileSystemRepresentation];
  rename(&path, v74, v75);
  if (!v76)
  {
    v6 = 0;
    goto LABEL_34;
  }

  v77 = __error();
  v6 = _LSGetOSStatusFromPOSIXErrorCode(*v77);
LABEL_30:
  if (v7 && v6 && [(FSNode *)v7 getFileSystemRepresentation:&path error:0])
  {
    removefile(&path, 0, 1u);
  }

LABEL_34:

  return v6;
}

void ___ZL22_LSGetPlaceholderQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.app-placeholders", v2);
  v1 = _LSGetPlaceholderQueue(void)::result;
  _LSGetPlaceholderQueue(void)::result = v0;
}

void _LSCopyResourceFileToPlaceholder(__CFBundle *a1, FSNode *a2, NSString *a3, NSString *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (a1 && v11 && v8)
  {
    if (v7)
    {
      v9 = CFBundleCopyResourceURLForLocalization(a1, v8, 0, 0, v7);
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = CFBundleCopyBundleURL(a1);
      v9 = [(__CFURL *)v10 URLByAppendingPathComponent:v8 isDirectory:0];

      if (!v9)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    _LSCopyResourceURLToPlaceholder(a1, v11, v9);
    goto LABEL_9;
  }

LABEL_10:
}

void _LSCopyResourceURLToPlaceholder(__CFBundle *a1, FSNode *a2, NSURL *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1 && v5 && v6)
  {
    v15 = 0;
    v8 = [(NSURL *)v6 getResourceValue:&v15 forKey:*MEMORY[0x1E695DBB8] error:0];
    v9 = v15;
    v10 = v9;
    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && [v9 BOOLValue])
    {
      v12 = [(NSURL *)v7 lastPathComponent];
      v13 = [(FSNode *)v5 childNodeWithRelativePath:v12 flags:0 error:0];

      if (v13 && [v13 getFileSystemRepresentation:to error:0])
      {
        v14 = v7;
        copyfile([(NSURL *)v7 fileSystemRepresentation], to, 0, 8u);
      }
    }
  }
}

void sub_1816CA218(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [(_LSDatabase *)*(a1 + 32) store];
  v4 = _CSStringCopyCFString();
  if (v4)
  {
    _LSCopyResourceFileToPlaceholder(*(a1 + 48), *(a1 + 40), 0, v4);
  }
}

CFTypeRef __copy_helper_block_ea8_48c31_ZTS10CFReleaserIP10__CFBundleE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_ea8_48c31_ZTS10CFReleaserIP10__CFBundleE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

void ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke_60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _LSGetPlugin(*(a1 + 32), a3);
  if (v4)
  {
    v5 = *v4;
    if (v5)
    {
      v6 = _LSAliasCopyResolvedNode(*(a1 + 32), v5, 0, 0, 0);
      if (v6)
      {
        v18 = v6;
        v7 = [v6 URL];
        v8 = [(NSURL *)v7 lastPathComponent];
        v9 = @"PlugIns";
        v10 = [v8 caseInsensitiveCompare:@"PlugIns"];

        v11 = 56;
        if (v10)
        {
          v9 = @"Extensions";
        }

        else
        {
          v11 = 48;
        }

        v12 = *(*(a1 + v11) + 8);
        v13 = *(v12 + 24);
        *(v12 + 24) = 1;
        if (!v13)
        {
          _LSCreatePlaceholderSubfolder(*(a1 + 40), &v9->isa);
        }

        v14 = [*(a1 + 40) URL];
        v15 = [v14 URLByAppendingPathComponent:v9 isDirectory:1];
        v16 = [(NSURL *)v7 lastPathComponent];
        v17 = [v15 URLByAppendingPathComponent:v16 isDirectory:1];

        if (v7 && v17)
        {
          _LSWriteBundlePlaceholderToURLInternal(*(a1 + 64), v7, v17);
        }

        v6 = v18;
      }
    }
  }
}

id _LSCreatePlaceholderSubfolder(FSNode *a1, NSString *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [(FSNode *)v3 childNodeWithRelativePath:v4 flags:8 error:0];
    v8 = v7;
    if (v7 && [v7 getFileSystemRepresentation:v10 error:0] && (!mkdir(v10, 0x1C0u) || *__error() == 17))
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [[FSNode alloc] initWithURL:a3 flags:0 error:0];
    if (v4)
    {
      [(FSNode *)v4 setResourceValue:*(a1 + 32) forKey:*MEMORY[0x1E695DB48] options:3 error:0];
    }
  }
}

uint64_t (*initLICopyIconPathsFromBundleForStyles(__CFBundle *a1, const __CFSet *a2))(__CFBundle *, const __CFSet *)
{
  v4 = MobileIconsLibrary(void)::frameworkLibrary;
  if (!MobileIconsLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/MobileIcons.framework/MobileIcons", 2);
    MobileIconsLibrary(void)::frameworkLibrary = v4;
  }

  result = dlsym(v4, "LICopyIconPathsFromBundleForStyles");
  softLinkLICopyIconPathsFromBundleForStyles = result;
  if (result)
  {

    return result(a1, a2);
  }

  return result;
}

id _LSAppRemovalServiceXPCInterface(uint64_t a1)
{
  if (_LSAppRemovalServiceXPCInterface_onceToken != -1)
  {
    _LSAppRemovalServiceXPCInterface_cold_1();
  }

  v2 = _LSAppRemovalServiceXPCInterface_interface;

  return v2;
}

void _LSServer_DisplayRemovedAppPrompt(LSContext *a1, void *a2, void *a3, void *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v53 = a4;
  v50 = v7;
  v51 = v8;
  _LSAssertRunningInServer("void _LSServer_DisplayRemovedAppPrompt(LSContext * _Nonnull, NSString *__strong _Nullable, NSURL *__strong _Nullable, void (^__strong _Nonnull)(BOOL, NSError *__strong))", v9);
  v63 = 0;
  v10 = v7;
  v11 = v8;
  v12 = v11;
  if (v10)
  {
    v13 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v10 error:&v63];
  }

  else
  {
    if ([v11 isFileURL])
    {
      v66[0] = *MEMORY[0x1E696A278];
      *&buf = @"The app restoration prompt is not available for file URLs.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v66 count:1];
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 138);
      goto LABEL_18;
    }

    if (!v12)
    {
      v66[0] = *MEMORY[0x1E696A278];
      *&buf = @"Either bundleID or resourceURL must be specified to present an app restoration prompt.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v66 count:1];
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 156);
      goto LABEL_18;
    }

    LODWORD(buf) = 0;
    *(&buf + 1) = 0;
    LODWORD(v68) = 0;
    v69 = 0u;
    v70 = 0u;
    LODWORD(v64) = 14;
    v26 = [v12 scheme];
    v27 = _LSGetBindingForNodeOrSchemeOrUTI(a1, 0, v26, 0, 0, -1, &v64, 0, &buf);

    if (v27)
    {
      v28 = *MEMORY[0x1E696A998];
      v65[0] = *MEMORY[0x1E696A278];
      v65[1] = v28;
      v66[0] = @"Failed to find an application that could open the specified URL.";
      v66[1] = v12;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      v63 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v27, v29, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 151);

      v13 = 0;
    }

    else
    {
      v49 = [LSApplicationRecord alloc];
      v13 = [(LSApplicationRecord *)v49 _initWithContext:a1 bundleID:buf bundleData:*(&buf + 1) error:&v63];
    }
  }

  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = +[LSApplicationRestrictionsManager sharedInstance];
  v15 = [(LSBundleRecord *)v13 bundleIdentifier];
  v16 = [(LSApplicationRestrictionsManager *)v14 isApplicationRestricted:v15];

  if (!v16)
  {
    v19 = [LSApplicationRecord alloc];
    v20 = [(LSBundleRecord *)v13 bundleIdentifier];
    v17 = [(LSApplicationRecord *)v19 initWithBundleIdentifier:v20 allowPlaceholder:1 error:0];

    if (v17)
    {
      v21 = [(LSApplicationRecord *)v17 applicationState];
      v22 = [v21 isDowngraded];

      if (v22)
      {
        v24 = _LSDefaultLog(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [(LSBundleRecord *)v13 bundleIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v25;
          _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_INFO, "Application %@ exists as an offloaded placeholder.", &buf, 0xCu);
        }
      }

      else
      {

        v64 = *MEMORY[0x1E696A278];
        *&buf = @"The specified application is currently installed or installing.";
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v64 count:1];
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v24, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 176);
        v63 = v13 = 0;
      }
    }

    goto LABEL_19;
  }

  v64 = *MEMORY[0x1E696A278];
  *&buf = @"The specified application is restricted, so the system cannot prompt to reinstall it.";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v64 count:1];
  v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v17, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 162);
LABEL_18:
  v13 = 0;
  v63 = v18;
LABEL_19:

LABEL_20:
  v30 = v63;
  if (v13)
  {
    v52 = [(LSBundleRecord *)v13 localizedName];
    v31 = [(LSBundleRecord *)v13 bundleIdentifier];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v68 = 0x2020000000;
    *&v69 = 0;
    v32 = v31;
    v33 = v32;
    if (v32)
    {
      v34 = v32;
      v35 = [v33 UTF8String];
      v36 = &LSVagueRemovedAppPrompts;
      v37 = 64;
      while (1)
      {
        v38 = strcmp(*v36, v35);
        if (!v38)
        {
          v39 = LaunchServices::EligibilityCache::shared(v38);
          if (!LaunchServices::EligibilityCache::eligibleForDomainFailingClosed(v39, v36[1]))
          {
            break;
          }
        }

        v36 += 4;
        v37 -= 32;
        if (!v37)
        {
          goto LABEL_26;
        }
      }

      v43 = 0;
      *(*(&buf + 1) + 24) = 2;
    }

    else
    {
LABEL_26:

      if (*(*(&buf + 1) + 24) || (v40 = -[LSApplicationRecord _initWithNode:bundleIdentifier:placeholderBehavior:systemPlaceholder:itemID:forceInBundleContainer:context:error:]([LSApplicationRecord alloc], "_initWithNode:bundleIdentifier:placeholderBehavior:systemPlaceholder:itemID:forceInBundleContainer:context:error:", 0, @"com.apple.AppStore", 0, 0, 0, 0, a1, 0, v50, v51), [v40 applicationState], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "isInstalled"), v41, v40, (v42 & 1) != 0))
      {
        v36 = 0;
        v43 = 0;
      }

      else
      {
        *(*(&buf + 1) + 24) = 1;
        v48 = [[LSApplicationRecord alloc] _initWithNode:0 bundleIdentifier:@"com.apple.AppStore" placeholderBehavior:0 systemPlaceholder:1 itemID:0 forceInBundleContainer:0 context:a1 error:0];
        v43 = [v48 localizedName];

        v36 = 0;
      }
    }

    if (_LSGetAppRemovalPromptQueue(void)::once != -1)
    {
      _LSServer_DisplayRemovedAppPrompt_cold_1();
    }

    v44 = _LSGetAppRemovalPromptQueue(void)::result;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = ___LSServer_DisplayRemovedAppPrompt_block_invoke;
    v54[3] = &unk_1E6A1A6D8;
    v45 = v52;
    v55 = v45;
    v56 = v10;
    v57 = v43;
    p_buf = &buf;
    v62 = v36;
    v46 = v33;
    v58 = v46;
    v59 = v12;
    v60 = v53;
    v47 = v43;
    _LSAskForScreenUnlock(v44, v54);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(v53 + 2))(v53, 0, v30);
  }
}

void sub_1816CC030(_Unwind_Exception *a1)
{
  CFRelease(v8);

  _Unwind_Resume(a1);
}

void ___ZL27_LSGetAppRemovalPromptQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS app removal prompt queue", v2);
  v1 = _LSGetAppRemovalPromptQueue(void)::result;
  _LSGetAppRemovalPromptQueue(void)::result = v0;
}

__CFString *_LSGetAppRemovalPromptStringForKey(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = _LSGetBundle(v4, v5);
  v7 = CFBundleCopyLocalizedString(v6, v4, v4, @"AppRemoval");
  if (!v7)
  {
    v7 = v3;
  }

  return v7;
}

void ___ZL26_LSDisplayRemovedAppPromptP20__CFUserNotificationP8NSStringP5NSURL18LSAppRestoreSourceU13block_pointerFvbP7NSErrorE_block_invoke(void *a1)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(_LSSpringBoardCall);
  [(_LSSpringBoardCall *)v2 setBundleIdentifier:a1[4]];
  v4[0] = getFBSOpenApplicationOptionKeyPayloadURL();
  v5[0] = a1[5];
  v4[1] = getFBSOpenApplicationOptionKeyIsSensitiveURL();
  v4[2] = @"__PayloadOptions";
  v5[1] = MEMORY[0x1E695E118];
  v5[2] = &unk_1EEF8F128;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  [(_LSSpringBoardCall *)v2 setLaunchOptions:v3];

  [(_LSSpringBoardCall *)v2 setClientXPCConnection:0];
  [(_LSSpringBoardCall *)v2 setCallCompletionHandlerWhenFullyComplete:1];
  [(_LSSpringBoardCall *)v2 callWithCompletionHandler:a1[6]];
}

uint64_t initFBSOpenApplicationOptionKeyPayloadURL(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadURL");
  constantFBSOpenApplicationOptionKeyPayloadURL = result;
  getFBSOpenApplicationOptionKeyPayloadURL = FBSOpenApplicationOptionKeyPayloadURLFunction;
  return result;
}

{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadURL");
  constantFBSOpenApplicationOptionKeyPayloadURL = result;
  getFBSOpenApplicationOptionKeyPayloadURL = FBSOpenApplicationOptionKeyPayloadURLFunction;
  return result;
}

{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadURL");
  constantFBSOpenApplicationOptionKeyPayloadURL = result;
  getFBSOpenApplicationOptionKeyPayloadURL = FBSOpenApplicationOptionKeyPayloadURLFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyIsSensitiveURL(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyIsSensitiveURL");
  constantFBSOpenApplicationOptionKeyIsSensitiveURL = result;
  getFBSOpenApplicationOptionKeyIsSensitiveURL = FBSOpenApplicationOptionKeyIsSensitiveURLFunction;
  return result;
}

Class initATTrackingEnforcementManager()
{
  if (!AppTrackingTransparencyLibrary_frameworkLibrary)
  {
    AppTrackingTransparencyLibrary_frameworkLibrary = dlopen("/System/Library/Frameworks/AppTrackingTransparency.framework/AppTrackingTransparency", 2);
  }

  result = objc_getClass("ATTrackingEnforcementManager");
  classATTrackingEnforcementManager = result;
  getATTrackingEnforcementManagerClass = ATTrackingEnforcementManagerFunction;
  return result;
}

uint64_t (*initAudioUnitURLOpen(const __CFURL *a1))(const __CFURL *)
{
  v2 = AudioToolboxLibrary(void)::frameworkLibrary;
  if (!AudioToolboxLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 2);
    AudioToolboxLibrary(void)::frameworkLibrary = v2;
  }

  result = dlsym(v2, "AudioUnitURLOpen");
  softLinkAudioUnitURLOpen = result;
  if (result)
  {

    return result(a1);
  }

  return result;
}

uint64_t _LSBindableComparePriority(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = a2 & 3;
  if (v7 == (a3 & 3))
  {
    if (v7 == 3)
    {
      if ((~a2 & 3) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = a2 & 0xFFFFFFFC;
      }

      v8 = _UTTypeGet(v5, v13);
      if ((~a3 & 3) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = a3 & 0xFFFFFFFC;
      }

      v15 = _UTTypeGet(v6, v14);
      v11 = v15;
      if (v8 && v15)
      {
LABEL_19:
        v12 = _UTTypeComparePriority(v6, v8, v6, v11);
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 3) != 0)
      {
        v12 = 0;
        goto LABEL_27;
      }

      v8 = _UTTypeGet(v5, a2 & 0xFFFFFFFC);
      if ((a3 & 3) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = a3 & 0xFFFFFFFC;
      }

      v10 = _UTTypeGet(v6, v9);
      v11 = v10;
      if (v8 && v10)
      {
        goto LABEL_19;
      }
    }

    if (v11)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = v16;
    }
  }

  else
  {
    v12 = v7 < (a3 & 3u);
  }

LABEL_27:

  return v12;
}

uint64_t _LSBindableActivate(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a2;
  v7 = a1;
  v8 = v7;
  v19 = v6;
  if (v6)
  {
    [(_LSDatabase *)v7 schema];
    [(_LSDatabase *)v8 store];
    if (_CSStringBindingGetBindings())
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = -1;
      [(_LSDatabase *)v8 store];
      v9 = v8;
      _CSArrayEnumerateAllValues();
      v10 = *(v16 + 6);
      v11 = v9;
      if (v10 == -1)
      {
        [(_LSDatabase *)v9 store];
        _CSArrayAppendValue();
      }

      else
      {
        [(_LSDatabase *)v9 store];
        if (_CSArrayGetValueAtIndex() != v6)
        {
          [(_LSDatabase *)v9 store];
          _CSArrayInsertValueAtIndex();
        }
      }

      _Block_object_dispose(&v15, 8);
      v12 = 0;
    }

    else
    {
      v15 = 0;
      [(_LSDatabase *)v8 store];
      if (_CSArrayCreate())
      {
        [(_LSDatabase *)v8 store];
        v13 = CSMapSetValue();
      }

      else
      {
        v13 = _LSGetOSStatusFromNSError(v15);
      }

      v12 = v13;
    }
  }

  else
  {
    v12 = 4294967246;
  }

  return v12;
}

void sub_1816CCA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSBindableSetGeneration(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = v5;
  if ((a2 & 3) != 0)
  {
    if ((a2 & 3) == 2)
    {
      _LSClaimSetGeneration(v5, a2 & 0xFFFFFFFC, v3);
    }
  }

  else
  {
    _UTTypeSetGeneration(v5, a2 & 0xFFFFFFFC, v3);
  }
}

uint64_t _LSBindableDeactivate(void *a1, int a2, unsigned int a3, uint64_t a4, int a5)
{
  v6 = a1;
  v7 = v6;
  if (a2)
  {
    [(_LSDatabase *)v6 schema];
    [(_LSDatabase *)v7 store];
    if (_CSStringBindingGetBindings())
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = -1;
      [(_LSDatabase *)v7 store];
      v8 = v7;
      _CSArrayEnumerateAllValues();
      if (*(v14 + 6) != -1)
      {
        [(_LSDatabase *)v8 store];
        Count = _CSArrayGetCount();
        v10 = v8;
        if (Count == 1)
        {
          [(_LSDatabase *)v8 store];
          v11 = CSMapRemoveValue();
          if (v11)
          {
LABEL_11:

            _Block_object_dispose(&v13, 8);
            goto LABEL_12;
          }

          [(_LSDatabase *)v8 store];
          _CSArrayDispose();
        }

        else
        {
          [(_LSDatabase *)v8 store];
          _CSArrayRemoveValueAtIndex();
        }
      }

      v11 = 0;
      goto LABEL_11;
    }

    v11 = 4294957797;
  }

  else
  {
    v11 = 4294967246;
  }

LABEL_12:

  return v11;
}

void sub_1816CCDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSBindingMapGetVisualizationFunctions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = LaunchServices::BindingMaps::display;
  a1[2] = 0;
}

BOOL LaunchServices::BindingMaps::display(char **this, LSContext *a2, unsigned int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v5 = a2;
  v7 = a4;
  BindingMapIndexWithTargetTable = _LSDatabaseFindBindingMapIndexWithTargetTable(*this, v5);
  if (BindingMapIndexWithTargetTable != -1)
  {
    [(_LSDatabase *)*this schema];
    _LSDatabaseFindBindingMapTargetTable(*this, BindingMapIndexWithTargetTable);
    [(_LSDatabase *)*this store];
    v10 = v7;
    _CSStringBindingEnumerateAllBindings();
  }

  return BindingMapIndexWithTargetTable != -1;
}

void ___ZN14LaunchServices11BindingMapsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  [(_LSDatabase *)**(a1 + 40) store];
  v5 = _CSStringCopyCFString();
  if (!v5)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown bindable key string (0x%llx):", v3];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  [(_LSDatabase *)**(a1 + 40) store];
  v7 = *(a1 + 32);
  v8 = v6;
  _CSArrayEnumerateAllValues();
  [*(a1 + 32) write:v5 array:v8];
}

void ___ZN14LaunchServices11BindingMapsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  if (v5 == *([(_LSDatabase *)**(a1 + 48) schema]+ 4))
  {
    v6 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 4) unit:a3];
    v7 = *(a1 + 40);
    v27 = v6;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v6, a3];
    [v7 addObject:v8];
    goto LABEL_24;
  }

  v9 = *(a1 + 56);
  if (v9 == *([(_LSDatabase *)**(a1 + 48) schema]+ 1588))
  {
    v10 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 1588) unit:a3];
    v11 = *(a1 + 40);
    v27 = v10;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v10, a3];
    [v11 addObject:v8];
    goto LABEL_24;
  }

  v12 = *(a1 + 56);
  if (v12 == *([(_LSDatabase *)**(a1 + 48) schema]+ 1592))
  {
    v13 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 1592) unit:a3];
    v14 = *(a1 + 40);
    v27 = v13;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v13, a3];
    [v14 addObject:v8];
    goto LABEL_24;
  }

  if ((a3 & 3u) > 1)
  {
    if ((a3 & 3) == 2)
    {
      v20 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 8) unit:a3 & 0xFFFFFFFC];
      v21 = *(a1 + 40);
      v27 = v20;
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v20, a3];
      [v21 addObject:v8];
      goto LABEL_24;
    }
  }

  else if ((a3 & 3) != 0)
  {
    v15 = *(a1 + 32);
    v16 = *([(_LSDatabase *)**(a1 + 48) schema]+ 1576);
    if ((a3 & 3) == 1)
    {
      v17 = a3 & 0xFFFFFFFC;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v15 link:v16 unit:v17];
    v19 = *(a1 + 40);
    v27 = v18;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handler pref %@ (0x%llx)", v18, a3];
    [v19 addObject:v8];
    goto LABEL_24;
  }

  v22 = a3 & 0xFFFFFFFC;
  if ((a3 & 3) != 3)
  {
    v22 = 0;
  }

  if ((a3 & 0xFFFFFFFC) != 0 && (a3 & 3) == 0)
  {
    v24 = a3 & 0xFFFFFFFC;
  }

  else
  {
    v24 = v22;
  }

  v25 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 16) unit:v24];
  v26 = *(a1 + 40);
  v27 = v25;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v25, a3];
  [v26 addObject:v8];
LABEL_24:
}

void LaunchServices::LSSandboxExtension::~LSSandboxExtension(LaunchServices::LSSandboxExtension *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*this != -1)
  {
    v2 = _LSDefaultLog(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *this;
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "releasing sandbox extension %ld", &v4, 0xCu);
    }

    sandbox_extension_release();
  }
}

void LaunchServices::LSSandboxExtension::consume(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[8] = 0;
  v6 = sandbox_extension_consume();
  v7 = _LSDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136315394;
    *&v9[4] = a1;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "consumed sandbox extension %s: %ld", v9, 0x16u);
  }

  if (v6 == -1)
  {
    if (a2)
    {
      v8 = __error();
      *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v8, 0, "consume", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSSandboxHelper.mm", 30);
    }
  }

  else
  {
    a3[8] = 1;
    *a3 = v6;
    *v9 = -1;
    LaunchServices::LSSandboxExtension::~LSSandboxExtension(v9);
  }
}

void LaunchServices::LSSandboxExtension::consume_shared(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  LaunchServices::LSSandboxExtension::consume(a1, a2, &v4);
  if (v5 == 1)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1816CD758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1)
  {
    LaunchServices::LSSandboxExtension::~LSSandboxExtension(&a9);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<LaunchServices::LSSandboxExtension>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EEF624E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865D6250);
}

void LaunchServices::BindingEvaluator::CreateWithURL(LaunchServices::BindingEvaluator *this@<X0>, FSNode **a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = LaunchServices::BindingEvaluator::BindingEvaluator(a2);
  v5 = _LSBindingLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v16 = this;
    v17 = 1024;
    v18 = [(LaunchServices::BindingEvaluator *)this isFileURL];
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "BindingEvaluator::CreateWithURL(%{private}@) isFileURL=%{BOOL}d", buf, 0x12u);
  }

  LaunchServices::BindingEvaluation::logToFile(@"Creating binding evaluator for URL %@", v6, this);
  if ([(LaunchServices::BindingEvaluator *)this isFileURL])
  {
    v7 = [[FSNode alloc] initWithURL:this flags:0 error:0];
    v8 = *a2;
    *a2 = v7;

    v9 = a2[1];
    a2[1] = @"file";

    v10 = [(FSNode *)*a2 nameWithError:0];
    v11 = a2[3];
    a2[3] = v10;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:this resolvingAgainstBaseURL:0];
    v11 = v12;
    if (v12)
    {
      v13 = [(FSNode *)v12 scheme];
      v14 = a2[1];
      a2[1] = v13;
    }
  }
}

void LaunchServices::BindingEvaluator::CreateWithNode(void *a1@<X0>, LaunchServices::BindingEvaluator *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = LaunchServices::BindingEvaluator::BindingEvaluator(a2);
  v5 = _LSBindingLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v11 = a1;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "BindingEvaluator::CreateWithNode(%{private}@)", buf, 0xCu);
  }

  LaunchServices::BindingEvaluation::logToFile(@"Creating binding evaluator for FSNode %@", v6, a1);
  objc_storeStrong(a2, a1);
  v7 = *(a2 + 1);
  *(a2 + 1) = @"file";

  v8 = [a1 nameWithError:0];
  v9 = *(a2 + 3);
  *(a2 + 3) = v8;
}

uint64_t LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(LSContext *this, LSContext *a2, NSString *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithUTI(v17, a2, 0);
  v18 = -1;
  v19 = 142;
  LaunchServices::BindingEvaluator::getBestBinding(v17, this, 0, 0, &v11);
  if (v16)
  {
    if (v13)
    {
      v6 = (*(v13 + 8) & 2) == 0;

      if (!v6)
      {
        v7 = _LSDefaultLog(v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138543362;
          v12 = a2;
          _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Override not allowed for content type %{public}@", &v11, 0xCu);
        }

        v8 = 0;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v7 = _LSDefaultLog(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(a2, v7);
  }

  v8 = 1;
LABEL_11:

  LaunchServices::BindingEvaluator::~BindingEvaluator(v17, v9);
  return v8;
}

void sub_1816CDC44(_Unwind_Exception *a1, NSString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va, a2);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::BindingEvaluator::PrepareMimicForBinding(void *a1, uint64_t a2)
{
  result = LaunchServices::TypeEvaluator::PrepareMimicForTypeEvaluation(a1, a2);
  if (result)
  {
    result = _LSPrepareMimicForBundleLookup(a1, a2);
    if (result)
    {
      result = [a1 populateSimpleSelector:sel_isSideFault error:a2];
      if (result)
      {
        v5 = [a1 mimic];
        v6 = [v5 isSideFault];

        if (v6)
        {
          return [a1 populateSimpleSelector:sel_sideFaultResourceValuesWithError_ error:a2];
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

id LaunchServices::BindingEvaluator::getCalculatedUTI(LaunchServices::BindingEvaluator *this, LSContext *a2)
{
  v4 = 0;
  LaunchServices::BindingEvaluation::calculateUTI(a2, this, &v4, 0, 0);
  v2 = v4;

  return v2;
}

void LaunchServices::BindingEvaluator::setFilter(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 136);
  *(a1 + 136) = v3;

  v5 = *(a1 + 144);
  *(a1 + 144) = 0;
}

void LaunchServices::BindingEvaluator::setFilter_NoIO(uint64_t a1, void *a2, void *a3)
{
  v5 = [a3 copy];
  v6 = *(a1 + 152);
  *(a1 + 152) = v5;

  v7 = [a2 copy];
  v8 = *(a1 + 160);
  *(a1 + 160) = v7;
}

void LaunchServices::BindingEvaluator::setResultFilter(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 168);
  *(a1 + 168) = v3;
}

void LaunchServices::BindingEvaluator::setAllPropertiesFromBindingEvaluator(LaunchServices::BindingEvaluator *this, const LaunchServices::BindingEvaluator *a2)
{
  *(this + 12) = *(a2 + 12);
  *(this + 13) = *(a2 + 13);
  if (this != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(this + 14, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  }

  v4 = MEMORY[0x1865D71B0](*(a2 + 17));
  v5 = *(this + 17);
  *(this + 17) = v4;

  objc_storeStrong(this + 18, *(a2 + 18));
  v6 = MEMORY[0x1865D71B0](*(a2 + 19));
  v7 = *(this + 19);
  *(this + 19) = v6;

  v8 = *(a2 + 20);

  objc_storeStrong(this + 20, v8);
}

id LaunchServices::BindingEvaluation::getReasonFromBinding(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v2 = "?";
    v3 = *(a1 + 80);
    if (v3 == 1)
    {
      v2 = "beat next";
    }

    if (v3 == 255)
    {
      v4 = "lost to prev";
    }

    else
    {
      v4 = v2;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%s because %@)", *(a1 + 40), v4, v1];
  }

  else
  {
    v5 = *(a1 + 40);
  }

  return v5;
}

void LaunchServices::BindingEvaluation::State::~State(id *this)
{
  v3 = this + 23;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v3);
  LaunchServices::BindingEvaluator::~BindingEvaluator(this + 1, v2);
}

unsigned int *LaunchServices::getLocalizedKindStringWithEvaluator(void **a1, void *a2, const LaunchServices::BindingEvaluator *a3, void *a4)
{
  v42[13] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v34 = a1;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v8 = +[_LSDServiceDomain defaultServiceDomain];
  v9 = LaunchServices::Database::Context::_get(&v34, v8, 0);

  if (v9)
  {
    LaunchServices::BindingEvaluation::State::State(&v38, v9, a3);
    v39[12] = 1;
    v41 |= 0x1508Au;
    v40 = 15;
    v33 = 0;
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v27, 0, sizeof(v27));
    KindStringFromState = LaunchServices::BindingEvaluation::getKindStringFromState(&v38, &v33, v27, v10);
    if (KindStringFromState)
    {
      if (!v7)
      {
        if (*a3)
        {
          v12 = [*a3 URL];
          v7 = [v12 ls_preferredLocalizations];
        }

        else
        {
          v7 = 0;
        }
      }

      if (v33 == 1)
      {
        v16 = LaunchServices::BindingEvaluation::getBoundDisplayNameConstructorsForKindString(&v38, v27, v7, 0);
        v18 = v16;
        if (v33 == 1)
        {
          if (v16)
          {
            v19 = LaunchServices::CanonicalString::Find(*v38, @"%@ Document", v17);
            if (v19)
            {
              KindStringFromState = LaunchServices::CanonicalString::getLocalizedString(v19);
            }
          }
        }

        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v22 = LaunchServices::LocalizedString::localizeUnsafely(KindStringFromState, *v38, v7);
      if (v22)
      {
        KindStringFromState = LaunchServices::BindingEvaluation::formatAndSanitizeKindString(&v38, v22, v20, v21);
      }

      else if (a4)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "getLocalizedKindStringWithEvaluator", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBindingEvaluator.mm", 1167);
        *a4 = KindStringFromState = 0;
      }

      else
      {
        KindStringFromState = 0;
      }
    }

    *&v27[0] = v42;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](v27);
    LaunchServices::BindingEvaluator::~BindingEvaluator(v39, v23);
  }

  else if (a4)
  {
    v13 = +[_LSDServiceDomain defaultServiceDomain];
    v14 = LaunchServices::Database::Context::_get(&v34, v13, 0);

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v37;
    }

    KindStringFromState = 0;
    *a4 = v15;
  }

  else
  {
    KindStringFromState = 0;
  }

  if (v34 && v36 == 1)
  {
    _LSContextDestroy(v34);
  }

  v24 = v35;
  v34 = 0;
  v35 = 0;

  v36 = 0;
  v25 = v37;
  v37 = 0;

  return KindStringFromState;
}

void sub_1816CE364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(&a9);
  LaunchServices::BindingEvaluation::State::~State(&a28);
  LaunchServices::Database::Context::~Context(&a23);

  _Unwind_Resume(a1);
}

id LaunchServices::BindingEvaluator::getLocalizedKindString(const LaunchServices::BindingEvaluator *a1, void **a2, void *a3, void *a4)
{
  v4 = LaunchServices::getLocalizedKindStringWithEvaluator(a2, a3, a1, a4);

  return v4;
}

id LaunchServices::BindingEvaluator::getLocalizedKindStringDictionary(const LaunchServices::BindingEvaluator *a1, void **a2, void *a3)
{
  v63[13] = *MEMORY[0x1E69E9840];
  v51 = a2;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&v51, v5, 0);

  if (v6)
  {
    v55 = 0;
    v56 = &v55;
    v57 = 0x15012000000;
    v58 = __Block_byref_object_copy__6;
    v59 = __Block_byref_object_dispose__6;
    v60 = " 5#0%4#02";
    LaunchServices::BindingEvaluation::State::State(&v61, v6, a1);
    v7 = v56;
    v56[19] = 1;
    v8 = *(v7 + 41) | 0x1508A;
    *(v7 + 40) = 15;
    *(v7 + 41) = v8;
    v50 = 0;
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *v43 = 0u;
    v44 = 0u;
    KindStringFromState = LaunchServices::BindingEvaluation::getKindStringFromState((v7 + 6), &v50, v43, v9);
    if (KindStringFromState)
    {
      if (v50 == 1)
      {
        v11 = LaunchServices::BindingEvaluation::getBoundDisplayNameConstructorsForKindString(v56 + 6, v43, 0, 1);
      }

      else
      {
        v11 = 0;
      }

      v16 = [v11 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
      v18 = [v11 allKeys];
      if (v50 == 1)
      {
        if (v16)
        {
          v19 = LaunchServices::CanonicalString::Find(*v56[6], @"%@ Document", v17);
          if (v19)
          {
            KindStringFromState = LaunchServices::CanonicalString::getLocalizedString(v19);
          }
        }
      }

      v20 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(KindStringFromState, *v56[6], 0, 0, 0);
      if (v20)
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x3032000000;
        v40 = __Block_byref_object_copy__31;
        v41 = __Block_byref_object_dispose__32;
        v42 = 0;
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = ___ZNK14LaunchServices16BindingEvaluator32getLocalizedKindStringDictionaryEP9LSContextPU15__autoreleasingP7NSError_block_invoke;
        v30 = &unk_1E6A1A7E0;
        v31 = v11;
        v32 = v18;
        v33 = v16;
        v35 = &v55;
        v36 = &v37;
        v15 = v20;
        v34 = v15;
        [v15 enumerateKeysAndObjectsUsingBlock:&v27];
        v21 = v38[5];
        if (v21)
        {
          v22 = [v21 copy];

          v15 = v22;
        }

        _Block_object_dispose(&v37, 8);
      }

      else if (a3)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "getLocalizedKindStringDictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBindingEvaluator.mm", 1266);
        *a3 = v15 = 0;
      }

      else
      {
        v15 = 0;
      }
    }

    else if (a3)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "getLocalizedKindStringDictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBindingEvaluator.mm", 1269);
      *a3 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v55, 8);
    *v43 = v63;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](v43);
    LaunchServices::BindingEvaluator::~BindingEvaluator(&v62, v23);
  }

  else if (a3)
  {
    v12 = +[_LSDServiceDomain defaultServiceDomain];
    v13 = LaunchServices::Database::Context::_get(&v51, v12, 0);

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v54;
    }

    v15 = 0;
    *a3 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v51 && v53 == 1)
  {
    _LSContextDestroy(v51);
  }

  v24 = v52;
  v51 = 0;
  v52 = 0;

  v53 = 0;
  v25 = v54;
  v54 = 0;

  return v15;
}

void sub_1816CE928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);

  _Block_object_dispose(&a19, 8);
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(&a25);
  _Block_object_dispose(va, 8);
  LaunchServices::BindingEvaluation::State::~State((v47 + 48));
  LaunchServices::Database::Context::~Context(&a39);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::BindingEvaluation::getKindStringFromState(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, BOOL *a3, LaunchServices::BindingEvaluation::ExtendedBinding *a4)
{
  v54 = 0;
  *v52 = 0u;
  *v53 = 0u;
  *obj = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  if (*(this + 96) == 1)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"const LocalizedString *LaunchServices::getKindStringFromState(State &, BOOL *, ExtendedBinding *)"}];
    [v45 handleFailureInFunction:v46 file:@"LSBindingEvaluator.mm" lineNumber:2178 description:@"Attempted to get a kind string when performing bundle lookup."];
  }

  if (!*(this + 56) && *(this + 240) != 1)
  {
    v9 = 0;
    goto LABEL_35;
  }

  TypeResolvable = _UTTypeGetTypeResolvable(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypeResolvable, @"com.apple.resolvable", v8))
  {
    v9 = @"Alias";
LABEL_35:

LABEL_36:
    v34 = 0;
    goto LABEL_37;
  }

  TypeVolume = _UTTypeGetTypeVolume(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypeVolume, @"public.volume", v11))
  {
    v9 = @"Volume";
    goto LABEL_35;
  }

  TypeApplication = _UTTypeGetTypeApplication(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypeApplication, @"com.apple.application", v13))
  {
    v14 = *(this + 1);
    v15 = @"Application";
    if (v14)
    {
      LODWORD(v55) = 0;
      v47[0] = 0;
      v16 = _LSBundleFindWithNode(*this, v14, &v55, v47);
      if (v47[0])
      {
        if ((*(v47[0] + 43) & 0x200000) != 0)
        {
          v15 = @"Beta Application";
        }
      }

      else
      {
        v35 = v16;
        v36 = _LSDefaultLog(v16);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          LaunchServices::BindingEvaluation::getKindStringFromState(v14, v35, v36);
        }

        v15 = @"Application";
      }
    }

    v9 = v15;
    goto LABEL_35;
  }

  TypePackage = _UTTypeGetTypePackage(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypePackage, @"com.apple.package", v18))
  {
    v9 = @"Package";
    goto LABEL_18;
  }

  TypeDirectory = _UTTypeGetTypeDirectory(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypeDirectory, @"public.directory", v27))
  {
    v9 = @"Folder";
    goto LABEL_35;
  }

  TypeUnixExecutable = _UTTypeGetTypeUnixExecutable(**this);
  v30 = LaunchServices::BindingEvaluation::conformsTo(this, TypeUnixExecutable, @"public.unix-executable", v29);
  v31 = v30;
  v9 = @"Document";
  if (v30)
  {
    v32 = @"Unix Executable File";
  }

  else
  {
    v32 = @"Document";
  }

  if ((v31 & 1) == 0)
  {
LABEL_18:
    LaunchServices::BindingEvaluation::runEvaluator(this, 0, v47);
    v19 = v47[0];
    if (v47[0] == v47[1])
    {
      v23 = 0;
    }

    else
    {
      v20 = *(v47[0] + 1);
      v48 = *v47[0];
      v49 = v20;
      obj[0] = *(v47[0] + 4);
      v21 = *(v19 + 5);
      v22 = *(v19 + 6);
      obj[1] = v21;
      *&v51 = v22;
      WORD4(v51) = *(v19 + 28);
      v52[0] = *(v19 + 8);
      v52[1] = *(v19 + 9);
      LOBYTE(v53[0]) = *(v19 + 80);
      v53[1] = *(v19 + 11);
      LODWORD(v54) = v19[24];
      v23 = *(&v49 + 1);
      if (v49)
      {
        if (*(&v49 + 1))
        {
          if (!_LSClaimFlagsAreWildcard(*(*(&v49 + 1) + 8)))
          {
            v24 = LaunchServices::LocalizedString::Get(**this, *(v23 + 20));
            if (v24)
            {
              v55 = v47;
              std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v55);
              goto LABEL_62;
            }
          }
        }
      }
    }

    v42 = *(this + 56);
    if (v42 && (v43 = *(this + 29)) != 0 && (*(v43 + 9) & 2) == 0 && v42 != _UTTypeGetTypeApplication(**this))
    {
      v44 = _UTGetLocalizedDescription(**this, *(this + 56));
      v24 = LaunchServices::LocalizedString::Get(**this, v44);
      v55 = v47;
      std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v55);
      if (v24)
      {
LABEL_62:
        v34 = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v55 = v47;
      std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v55);
    }

    if (*(&v48 + 1))
    {
      if (v23)
      {
        v34 = !_LSClaimFlagsAreWildcard(*(v23 + 8));
      }

      else
      {
        v34 = 1;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v34 = 0;
  v9 = @"Unix Executable File";
LABEL_37:
  v37 = LaunchServices::CanonicalString::Find(**this, v9, v33);
  if (v37)
  {
    LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v37);
    v24 = LocalizedString;
    if (!a2)
    {
      goto LABEL_44;
    }

LABEL_43:
    *a2 = v34;
    goto LABEL_44;
  }

  v38 = _LSDefaultLog(0);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::BindingEvaluation::getKindStringFromState(v9, v38);
  }

  v24 = 0;
  if (a2)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (a3)
  {
    v39 = v49;
    *a3 = v48;
    *(a3 + 1) = v39;
    objc_storeStrong(a3 + 4, obj[0]);
    objc_storeStrong(a3 + 5, obj[1]);
    *(a3 + 6) = v51;
    *(a3 + 28) = WORD4(v51);
    objc_storeStrong(a3 + 8, v52[0]);
    objc_storeStrong(a3 + 9, v52[1]);
    a3[80] = v53[0];
    objc_storeStrong(a3 + 11, v53[1]);
    *(a3 + 24) = v54;
  }

  if (!v24)
  {
    v40 = _LSDefaultLog(LocalizedString);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::BindingEvaluation::getKindStringFromState(v40);
    }
  }

  return v24;
}

void sub_1816CEF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(va);
  _Unwind_Resume(a1);
}

id LaunchServices::BindingEvaluation::getBoundDisplayNameConstructorsForKindString(void ***a1, unsigned int *a2, uint64_t a3, int a4)
{
  v8 = (a2 + 18);
  if (!*(a2 + 9))
  {
    obj = 0;
    _LSBundleCopyNode(**a1, *a2, 0, 0, &obj);
    objc_storeStrong(v8, obj);
  }

  v14 = *(*(a2 + 1) + 168);
  v9 = *a1;
  v10 = *a2;
  v11 = *(a2 + 9);
  if (a4)
  {
    [_LSDisplayNameConstructor displayNameConstructorsWithContext:v9 bundle:v10 bundleClass:&v14 node:v11 error:0];
  }

  else
  {
    [_LSDisplayNameConstructor displayNameConstructorWithContext:v9 bundle:v10 bundleClass:&v14 node:v11 preferredLocalizations:a3 error:0];
  }
  v12 = ;

  return v12;
}

void ___ZNK14LaunchServices16BindingEvaluator32getLocalizedKindStringDictionaryEP9LSContextPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, uint64_t a2, LaunchServices::BindingEvaluation::State *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:a2];
    if (v8)
    {
      goto LABEL_9;
    }

    if ([*(a1 + 32) count] >= 2)
    {
      v9 = *(a1 + 40);
      v18[0] = a2;
      v10 = CFBundleCopyLocalizationsForPreferences(v9, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1]);
      v11 = [(__CFArray *)v10 firstObject];
      if (v11)
      {
        v12 = [*(a1 + 32) objectForKeyedSubscript:v11];

        v8 = v12;
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }
  }

  v8 = *(a1 + 48);
LABEL_9:
  v13 = LaunchServices::BindingEvaluation::formatAndSanitizeKindString((*(*(a1 + 64) + 8) + 48), a3, v8, v7);
  if (v13 != a3)
  {
    v14 = *(*(*(a1 + 72) + 8) + 40);
    if (!v14)
    {
      v15 = [*(a1 + 56) mutableCopy];
      v16 = *(*(a1 + 72) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v14 = *(*(*(a1 + 72) + 8) + 40);
    }

    [v14 setObject:v13 forKeyedSubscript:a2];
  }
}

id LaunchServices::BindingEvaluation::formatAndSanitizeKindString(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, NSString *a3, _LSDisplayNameConstructor *a4)
{
  if (a3)
  {
    v5 = [(NSString *)a3 unlocalizedNameWithContext:*this, a4];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:a2, v5];

    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  v8 = _LSBalanceBiDiControlCharacters(v7);

  v9 = _LSReplaceForbiddenCharacters(v8, 0);

  return v9;
}

uint64_t LaunchServices::BindingEvaluator::compareBindings(LaunchServices::BindingEvaluator *this, LSContext *a2, const LSBinding *a3, const LSBinding *a4)
{
  v27[13] = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluation::State::State(v25, a2, this);
  v18 = 0u;
  v19 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  LODWORD(v19) = a3->claim;
  *(&v19 + 1) = a3->claimData;
  LODWORD(v18) = a3->bundle;
  *(&v18 + 1) = a3->bundleData;
  v11 = 0u;
  v12 = 0u;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  LODWORD(v12) = a4->claim;
  *(&v12 + 1) = a4->claimData;
  LODWORD(v11) = a4->bundle;
  *(&v11 + 1) = a4->bundleData;
  v8 = LaunchServices::BindingEvaluation::compareBindings(v25, &v18, &v11, v6, v7);

  *&v18 = v27;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v18);
  LaunchServices::BindingEvaluator::~BindingEvaluator(&v26, v9);
  return v8;
}

void sub_1816CF508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(&a9);
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(&a23);
  LaunchServices::BindingEvaluation::State::~State(&a36);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::BindingEvaluator::compareBundles(LaunchServices::BindingEvaluator *this, LSContext *a2, unsigned int a3, LSBundleData *a4, unsigned int a5, LSBundleData *a6)
{
  v8.claim = 0;
  memset(&v8.claimData, 0, 32);
  v8.bundle = a3;
  v8.bundleData = a4;
  v7.claim = 0;
  memset(&v7.claimData, 0, 32);
  v7.bundle = a5;
  v7.bundleData = a6;
  return LaunchServices::BindingEvaluator::compareBindings(this, a2, &v8, &v7);
}

uint64_t _LSGetBindingForNodeOrSchemeOrUTI(LSContext *a1, void *a2, LaunchServices::BindingEvaluator *this, LaunchServices::BindingEvaluator *a4, int a5, int a6, int *a7, int a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  LOBYTE(v35[0]) = 0;
  v40 = 0;
  if (a2)
  {
    LaunchServices::BindingEvaluator::CreateWithNode(a2, __p);
    std::optional<LaunchServices::BindingEvaluator>::operator=[abi:nn200100]<LaunchServices::BindingEvaluator,void>(v35, __p);
LABEL_7:
    LaunchServices::BindingEvaluator::~BindingEvaluator(__p, v14);
    v15 = 4294956486;
    goto LABEL_8;
  }

  if (this)
  {
    LaunchServices::BindingEvaluator::CreateWithURLScheme(this, __p);
    std::optional<LaunchServices::BindingEvaluator>::operator=[abi:nn200100]<LaunchServices::BindingEvaluator,void>(v35, __p);
    goto LABEL_7;
  }

  if (a4)
  {
    LaunchServices::BindingEvaluator::CreateWithUTI(__p, a4, 0);
    std::optional<LaunchServices::BindingEvaluator>::operator=[abi:nn200100]<LaunchServices::BindingEvaluator,void>(v35, __p);
    goto LABEL_7;
  }

  v15 = 4294967246;
LABEL_8:
  if (v40 == 1)
  {
    v36 = a6;
    if (a5)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = ___LSGetBindingForNodeOrSchemeOrUTI_block_invoke;
      v27[3] = &__block_descriptor_36_e61_B24__0__LSContext___8r__LSBinding_I__LSBundleData_I______Q_16l;
      v28 = a5;
      v16 = [v27 copy];
      v17 = v38;
      v38 = v16;

      v18 = [@"bundle unit" copy];
      v19 = v39;
      v39 = v18;
    }

    v37 = a8;
    if (a7)
    {
      v26 = *a7;
      std::vector<LSBundleClass>::vector[abi:nn200100](__p, &v26, 1uLL);
      LaunchServices::BindingEvaluator::setAllowedBundleClasses(v35, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    v25 = 0;
    LaunchServices::BindingEvaluator::getBestBinding(v35, a1, 0, &v25, __p);
    v20 = v25;
    v21 = v20;
    if (v34 == 1)
    {
      if (a9)
      {
        v22 = v30;
        *a9 = *__p;
        *(a9 + 16) = v22;
        objc_storeStrong((a9 + 32), obj);
        objc_storeStrong((a9 + 40), v32);
        v15 = 0;
        *(a9 + 48) = v33;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = _LSGetOSStatusFromNSError(v20);
    }

    if (v34 == 1)
    {
    }

    if (v40)
    {
      LaunchServices::BindingEvaluator::~BindingEvaluator(v35, v23);
    }
  }

  return v15;
}