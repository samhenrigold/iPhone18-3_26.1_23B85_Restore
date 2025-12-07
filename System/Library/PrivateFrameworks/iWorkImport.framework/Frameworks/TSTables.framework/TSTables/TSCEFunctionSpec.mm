@interface TSCEFunctionSpec
+ (BOOL)functionIndexUsesThunks:(unsigned __int16)thunks;
+ (BOOL)hasAnyDateArgumentsToFunction:(unsigned __int16)function;
+ (BOOL)isModeEnabled:(unsigned __int16)enabled functionIndex:(unsigned __int16)index;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs functionOperator:(int64_t)operator fanoutOptions:(unsigned int)options shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)self0 functionIndex:(unsigned __int16)self1;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size fanoutOptions:(unsigned int)options shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size nonRepeatingArgsAtEnd:(unsigned __int16)end fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)self0 arguments:(const void *)self1 functionIndex:(unsigned __int16)self2;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index;
+ (id)englishFunctionNameFromFunctionIndex:(unsigned __int16)index;
+ (id)functionSpecForFunctionIndex:(unsigned __int16)index;
+ (id)functionSpecForFunctionName:(id)name;
+ (id)functionSpecForOperator:(int64_t)operator arguments:(int)arguments;
+ (id)unsupportedFunctionNameForLocale:(id)locale;
+ (void)loadSpecDictionary;
- (BOOL)acceptsFunctorAtIndex:(unint64_t)index numArgs:(unint64_t)args;
- (TSCEFunctionSpec)initWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size nonRepeatingArgsAtEnd:(unsigned __int16)end functionOperator:(int64_t)operator fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)self0 shipVersion:(int)self1 arguments:(const void *)self2 functionIndex:(unsigned __int16)self3;
- (char)preferredTypeForArgumentIndex:(unint64_t)index;
- (id).cxx_construct;
- (id)argumentSpecForIndex:(unint64_t)index;
- (id)argumentSpecForIndex:(unint64_t)index numArgs:(unint64_t)args;
- (id)displayStringForLocale:(id)locale;
- (id)localizedFunctionNameForLocale:(id)locale;
- (id)localizedToolTipStringForLocale:(id)locale;
- (id)nativeSyntaxStringForArgument:(int)argument;
- (int)accessorModeForArgumentIndex:(unint64_t)index;
- (int64_t)modeNumberForLocalizedString:(id)string argumentSpecIndex:(unint64_t)index attributeMax:(int64_t)max locale:(id)locale;
- (void)loadRepeatingArguments;
@end

@implementation TSCEFunctionSpec

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs functionOperator:(int64_t)operator fanoutOptions:(unsigned int)options shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0
{
  nameCopy = name;
  v16 = [TSCEFunctionSpec alloc];
  versionCopy = version;
  BYTE4(v20) = 0;
  LODWORD(v20) = options;
  HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex = objc_msgSend_initWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_functionOperator_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(v16, v17, nameCopy, args, maxArgs, 0, 0, operator, v20, versionCopy, arguments, index);

  return HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index
{
  v11 = 0;
  v9 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, size, 0, 0, v11, arguments, index);

  return v9;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index
{
  v10 = 0;
  v8 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, 0, 0, 0, v10, arguments, index);

  return v8;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index
{
  v9 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, 0, 0, 0, intersection, arguments, index);

  return v9;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0
{
  v10 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, 0, 0, *&options, intersection, arguments, index);

  return v10;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size fanoutOptions:(unsigned int)options shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0
{
  v12 = 0;
  v10 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, size, 0, *&options, v12, arguments, index);

  return v10;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)self0 functionIndex:(unsigned __int16)self1
{
  v11 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, size, 0, *&options, intersection, arguments, index);

  return v11;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size nonRepeatingArgsAtEnd:(unsigned __int16)end fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)self0 arguments:(const void *)self1 functionIndex:(unsigned __int16)self2
{
  endCopy = end;
  sizeCopy = size;
  nameCopy = name;
  v18 = [TSCEFunctionSpec alloc];
  BYTE4(v22) = intersection;
  LODWORD(v22) = options;
  HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex = objc_msgSend_initWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_functionOperator_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(v18, v19, nameCopy, args, maxArgs, sizeCopy, endCopy, 0, v22, version, arguments, index);

  return HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex;
}

+ (void)loadSpecDictionary
{
  if (qword_27CFB5628 != -1)
  {
    sub_2216F7C70();
  }
}

+ (id)functionSpecForFunctionIndex:(unsigned __int16)index
{
  if (index)
  {
    indexCopy = index;
    objc_msgSend_loadSpecDictionary(self, a2, index, v3);
    if (indexCopy >= ((*(qword_27CFB5630 + 8) - *qword_27CFB5630) >> 3))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(*qword_27CFB5630 + 8 * indexCopy);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)englishFunctionNameFromFunctionIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, index, v3);
  v8 = objc_msgSend_functionName(v4, v5, v6, v7);

  return v8;
}

+ (id)functionSpecForFunctionName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    objc_msgSend_loadSpecDictionary(self, v4, v5, v6);
    v13 = objc_msgSend_objectForKeyedSubscript_(qword_27CFB5610, v8, nameCopy, v9);
    if (!v13)
    {
      v14 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v10, v11, v12);
      v17 = objc_msgSend_functionNameForLocalizedString_(v14, v15, nameCopy, v16);
      v13 = objc_msgSend_objectForKeyedSubscript_(qword_27CFB5610, v18, v17, v19);
      if (v13)
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSCEFunctionSpec functionSpecForFunctionName:]", v21);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 307, 0, "functionSpecForFunctionName: expects US function names, but %@ (US is %@) was passed in.", nameCopy, v17);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)functionSpecForOperator:(int64_t)operator arguments:(int)arguments
{
  if (!operator)
  {
    goto LABEL_5;
  }

  objc_msgSend_loadSpecDictionary(self, a2, operator, *&arguments);
  if (arguments == 2)
  {
    v14 = qword_27CFB5620;
    v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v6, operator, v7);
    v12 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v9, v16);
    goto LABEL_7;
  }

  if (arguments != 1)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = qword_27CFB5618;
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v6, operator, v7);
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v10, v9, v11);
LABEL_7:
  v13 = v12;

LABEL_8:

  return v13;
}

+ (BOOL)isModeEnabled:(unsigned __int16)enabled functionIndex:(unsigned __int16)index
{
  v4 = (enabled - 11) != 65534 && (enabled - 11) != 0xFFFF;
  v5 = index != 300 || v4;
  if (index == 298)
  {
    return ((enabled - 13) & 0xFFFA) != 0;
  }

  else
  {
    return v5;
  }
}

- (TSCEFunctionSpec)initWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size nonRepeatingArgsAtEnd:(unsigned __int16)end functionOperator:(int64_t)operator fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)self0 shipVersion:(int)self1 arguments:(const void *)self2 functionIndex:(unsigned __int16)self3
{
  nameCopy = name;
  v42.receiver = self;
  v42.super_class = TSCEFunctionSpec;
  v21 = [(TSCEFunctionSpec *)&v42 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_functionName, name);
    v22->_minArguments = args;
    v22->_maxArguments = maxArgs;
    v22->_repeatingGroupSize = size;
    v22->_nonRepeatingArgsAtEnd = end;
    v22->_functionOperator = operator;
    p_arguments = &v22->_arguments;
    if (&v22->_arguments != arguments)
    {
      sub_22116CF34(&v22->_arguments, *arguments, *(arguments + 1), (*(arguments + 1) - *arguments) >> 3);
    }

    v22->_shipVersion = version;
    v22->_fanoutOptions = options;
    v22->_mayHaveBeenImplicitIntersection = intersection;
    v27 = *p_arguments;
    var0 = v22->_arguments.var0;
    if (*p_arguments != var0)
    {
      v29 = 0;
      do
      {
        v30 = *v27;
        objc_msgSend_setIndex_(v30, v31, v29, v32);
        objc_msgSend_setFunctionSpec_(v30, v33, v22, v34);
        objc_msgSend_setupArgAccessor(v30, v35, v36, v37);
        ++v29;

        ++v27;
      }

      while (v27 != var0);
    }

    v22->_functionIndex = index;
    objc_msgSend_loadRepeatingArguments(v22, v23, v24, v25);
    objc_msgSend_markAsPermanent(v22, v38, v39, v40);
  }

  return v22;
}

+ (BOOL)functionIndexUsesThunks:(unsigned __int16)thunks
{
  result = 0;
  if (thunks <= 312)
  {
    if (thunks != 19 && thunks != 62)
    {
      return result;
    }

    return 1;
  }

  if (thunks == 336 || thunks == 313)
  {
    return 1;
  }

  return result;
}

- (id)localizedFunctionNameForLocale:(id)locale
{
  v4 = objc_msgSend_localizedNameForFunction_(locale, a2, self->_functionName, v3);

  return v4;
}

+ (id)unsupportedFunctionNameForLocale:(id)locale
{
  localeCopy = locale;
  if (!localeCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCEFunctionSpec unsupportedFunctionNameForLocale:]", v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 490, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = objc_msgSend_localizedStringForKey_value_table_(localeCopy, v3, @"Unsupported", &stru_2834BADA0, @"TSCalculationEngine");

  return v15;
}

- (id)localizedToolTipStringForLocale:(id)locale
{
  v4 = objc_msgSend_localizedToolTipForFunction_(locale, a2, self->_functionName, v3);

  return v4;
}

- (id)displayStringForLocale:(id)locale
{
  v7 = objc_msgSend_localizedFunctionNameForLocale_(self, a2, locale, v3);
  if (!v7)
  {
    v7 = self->_functionName;
  }

  if (objc_msgSend_isEqualToString_(v7, v5, @"/", v6))
  {
    v10 = TSUOperatorStringDivision();
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v7, v8, @"*", v9))
    {
      goto LABEL_8;
    }

    v10 = TSUOperatorStringMultiplication();
  }

  v11 = v10;

  v7 = v11;
LABEL_8:

  return v7;
}

- (void)loadRepeatingArguments
{
  v3 = 40;
  if (self->_repeatingGroupSize >= 1 && self->_repeatingArguments.__begin_ == self->_repeatingArguments.var0)
  {
    p_repeatingArguments = &self->_repeatingArguments;
    repeatingGroupSize = self->_repeatingGroupSize;
    p_arguments = &self->_arguments;
    begin = self->_arguments.__begin_;
    var0 = self->_arguments.var0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v9 = 0x277CCA000uLL;
    if (repeatingGroupSize >= 9)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFunctionSpec loadRepeatingArguments]", v2);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 533, 0, "I don't think we ever use higher than 2, actually, certainly not repeatingGroupSize: %hd", self->_repeatingGroupSize);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
      LOWORD(repeatingGroupSize) = self->_repeatingGroupSize;
    }

    sub_22146688C(&v65, repeatingGroupSize);
    v21 = var0 - begin;
    v22 = self->_repeatingGroupSize;
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = v21 - (self->_nonRepeatingArgsAtEnd + v22);
      do
      {
        if (v24 >= v21)
        {
          v25 = MEMORY[0x277D81150];
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEFunctionSpec loadRepeatingArguments]", v20);
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v28);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 542, 0, "origArgIndex out of bounds: %lu", v24);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
          v9 = 0x277CCA000uLL;
        }

        if (v24 >= self->_arguments.var0 - self->_arguments.__begin_)
        {
          sub_2211E631C();
        }

        v34 = p_arguments->__begin_[v24];
        v68 = objc_msgSend_copy(v34, v35, v36, v37);
        objc_msgSend_setIndex_(v68, v38, (v22 + v24), v39);
        objc_msgSend_setupArgAccessor(v68, v40, v41, v42);
        sub_22146691C(&v65, &v68);

        ++v23;
        LOWORD(v22) = self->_repeatingGroupSize;
        ++v24;
      }

      while (v23 < v22);
    }

    nonRepeatingArgsAtEnd = self->_nonRepeatingArgsAtEnd;
    if (self->_nonRepeatingArgsAtEnd)
    {
      v44 = 0;
      do
      {
        v45 = v3;
        v46 = v21 + v44 - nonRepeatingArgsAtEnd;
        if (v46 >= v21)
        {
          v47 = MEMORY[0x277D81150];
          v48 = objc_msgSend_stringWithUTF8String_(*(v9 + 3240), v19, "[TSCEFunctionSpec loadRepeatingArguments]", v20);
          v51 = objc_msgSend_stringWithUTF8String_(*(v9 + 3240), v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v50);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v48, v51, 555, 0, "origArgIndex out of bounds: %lu", v21 + v44 - nonRepeatingArgsAtEnd);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
          v9 = 0x277CCA000;
        }

        if (v46 >= self->_arguments.var0 - self->_arguments.__begin_)
        {
          sub_2211E631C();
        }

        v56 = *(&p_arguments->__begin_[v21] + v44 - nonRepeatingArgsAtEnd);
        v3 = v45;
        v57 = *(&self->super.super.isa + v45);
        v61 = objc_msgSend_index(v56, v58, v59, v60);
        objc_msgSend_setIndex_(v56, v62, (v61 + v57), v63);

        ++v44;
        nonRepeatingArgsAtEnd = self->_nonRepeatingArgsAtEnd;
      }

      while (v44 < nonRepeatingArgsAtEnd);
    }

    if (p_repeatingArguments != &v65)
    {
      sub_22116CF34(p_repeatingArguments, v65, v66, v66 - v65);
    }

    v68 = &v65;
    sub_22107C2C0(&v68);
  }
}

- (id)argumentSpecForIndex:(unint64_t)index
{
  begin = self->_arguments.__begin_;
  v5 = self->_arguments.var0 - begin;
  v6 = v5 - self->_nonRepeatingArgsAtEnd;
  if (!v6)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v8 = index - v6;
  if (index >= v6)
  {
    repeatingGroupSize = self->_repeatingGroupSize;
    if (repeatingGroupSize < 1)
    {
      v24 = v6 - 1;
      if (v5 > v24)
      {
        v9 = &begin[v24];
        goto LABEL_13;
      }
    }

    else
    {
      v11 = v8 % repeatingGroupSize;
      p_repeatingArguments = &self->_repeatingArguments;
      v13 = self->_repeatingArguments.__begin_;
      v14 = self->_repeatingArguments.var0 - v13;
      if (v8 % repeatingGroupSize >= v14 >> 3)
      {
        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFunctionSpec argumentSpecForIndex:]", v3);
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v18);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 578, 0, "translatedIndex out of bounds: %lu", v11);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
        v13 = p_repeatingArguments->__begin_;
        v14 = p_repeatingArguments->var0 - p_repeatingArguments->__begin_;
      }

      if (v14 >> 3 > v11)
      {
        v9 = &v13[v11];
        goto LABEL_13;
      }
    }

LABEL_17:
    sub_2211E631C();
  }

  if (v5 <= index)
  {
    goto LABEL_17;
  }

  v9 = &begin[index];
LABEL_13:
  v7 = *v9;
LABEL_14:

  return v7;
}

- (id)argumentSpecForIndex:(unint64_t)index numArgs:(unint64_t)args
{
  v4 = args - self->_nonRepeatingArgsAtEnd;
  if (v4 <= index)
  {
    p_arguments = &self->_arguments;
    begin = self->_arguments.__begin_;
    v8 = self->_arguments.var0 - begin;
    v9 = v4 + ~index;
    v10 = v9 + (v8 >> 3);
    if (__CFADD__(v9, v8 >> 3))
    {
      v20 = v8 >> 3;
    }

    else
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFunctionSpec argumentSpecForIndex:numArgs:]", args);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 602, 0, "Expected to be within _arguments bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
      begin = p_arguments->__begin_;
      v20 = p_arguments->var0 - p_arguments->__begin_;
    }

    if (v20 <= v10)
    {
      sub_2211E631C();
    }

    v5 = begin[v10];
  }

  else
  {
    v5 = objc_msgSend_argumentSpecForIndex_(self, a2, index, args);
  }

  return v5;
}

- (BOOL)acceptsFunctorAtIndex:(unint64_t)index numArgs:(unint64_t)args
{
  functionIndex = self->_functionIndex;
  if ((functionIndex - 364) < 7)
  {
    return index + 1 == args;
  }

  if (functionIndex == 363)
  {
    return 1;
  }

  if (functionIndex == 372)
  {
    return index + 1 == args;
  }

  return objc_msgSend_functionIndexUsesThunks_(TSCEFunctionSpec, a2, functionIndex, args);
}

- (int)accessorModeForArgumentIndex:(unint64_t)index
{
  v4 = objc_msgSend_argumentSpecForIndex_(self, a2, index, v3);
  if (!v4)
  {
    return 1;
  }

  return objc_msgSend_accessorMode(v4, v5, v6, v7);
}

- (char)preferredTypeForArgumentIndex:(unint64_t)index
{
  v4 = objc_msgSend_argumentSpecForIndex_(self, a2, index, v3);
  if (v4)
  {

    LOBYTE(v4) = objc_msgSend_argumentType(v4, v5, v6, v7);
  }

  return v4;
}

- (id)nativeSyntaxStringForArgument:(int)argument
{
  v4 = objc_msgSend_argumentSpecForIndex_(self, a2, argument, v3);
  if (v4)
  {
    v4 = objc_msgSend_nativeSyntaxString(v4, v5, v6, v7);
  }

  return v4;
}

- (int64_t)modeNumberForLocalizedString:(id)string argumentSpecIndex:(unint64_t)index attributeMax:(int64_t)max locale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v16 = objc_msgSend_argumentSpecForIndex_(self, v12, index, v13);
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v16 && (max & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = objc_msgSend_indexForModeNumber_locale_(v16, v14, localeCopy, v15, v18);
      v21 = objc_msgSend_localizedModeNameForModeIndex_locale_(v16, v20, v19, localeCopy);
      v24 = objc_msgSend_caseInsensitiveCompare_(stringCopy, v22, v21, v23);

      if (!v24)
      {
        break;
      }

      v17 = ++v18;
      if (v18 > max)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }
  }

  return v17;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  return self;
}

+ (BOOL)hasAnyDateArgumentsToFunction:(unsigned __int16)function
{
  result = 1;
  if (function <= 165)
  {
    if (function > 0x3Cu || ((1 << function) & 0x1000A33C0000000CLL) == 0)
    {
      if ((function - 90) > 0x2A)
      {
        return 0;
      }

      v4 = 1 << (function - 90);
      v5 = 0x40000380011;
      goto LABEL_10;
    }
  }

  else if ((function - 166) > 0x30 || ((1 << (function + 90)) & 0x101663E000003) == 0)
  {
    if ((function - 260) > 0x34)
    {
      return 0;
    }

    v4 = 1 << (function - 4);
    v5 = 0x18028000000003;
LABEL_10:
    if ((v4 & v5) != 0)
    {
      return result;
    }

    return 0;
  }

  return result;
}

@end