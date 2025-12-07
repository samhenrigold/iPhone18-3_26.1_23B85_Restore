@interface CalculateResult
+ (CalculateResult)resultWithResultTree:(TreeObject *)tree parseTree:(TreeObject *)parseTree locales:(id)locales numberFormatter:(id)formatter unitsInfo:(id)info unitType:(int)type unitExponent:(int)exponent expression:(id)self0 isTrivial:(BOOL)self1 isPartialExpression:(BOOL)self2 variableLookups:(id)self3 variableResultTrees:(TreeObject *)self4 variableResultTreesCount:(int)self5 resolvedUnitFormats:(id *)self6 forceResult:(BOOL)self7 assumeDegrees:(BOOL)self8 localizeUnit:(BOOL)self9 unitFormat:(unint64_t)format matchLocale:(BOOL)locale numberingSystem:(id)system autoScientificNotation:(BOOL)notation scientificNotationFormat:(unint64_t)notationFormat flexibleFractionDigits:(BOOL)digits isSimpleVerticalMath:(BOOL)math minimumFractionDigits:(int)fractionDigits hasStaleCurrencyData:(BOOL)data;
+ (id)decimalNumberWithDecimal128:(id)decimal128;
+ (id)defaultNumberFormatter:(id)formatter;
+ (void)preferMeasurementSystemsForLocale:(id)locale preferred:(unint64_t *)preferred fallback:(unint64_t *)fallback;
- ($786B50094F6E1A5F953E25B90648E2E3)resolvedUnitFormats;
- (BOOL)isAcceptableConversion:(TreeObject *)conversion;
- (BOOL)isEqual:(id)equal;
- (CalculateResult)init;
- (CalculateResult)initWithDouble:(double)double;
- (CalculateResult)parent;
- (NSString)formattedResult;
- (TreeObject)convertedTree:(id)tree from:(id)from needsUpdate:(BOOL *)update;
- (id)availableConversions;
- (id)bestConversion;
- (id)conversionsForMetric:(BOOL)metric US:(BOOL)s UK:(BOOL)k;
- (id)convertedTo:(id)to from:(id)from;
- (id)description;
- (id)graphableFunction2DFor:(id)for;
- (id)graphableFunction3D;
- (id)ignoringNaN;
- (id)localizedConversions;
- (id)newUnit:(id)unit;
- (id)updateVariables:(id)variables;
- (int64_t)compare:(id)compare;
- (void)_setConversions:(id)conversions;
- (void)_setInputValueAndUnit:(id)unit;
- (void)_setTerms:(id)terms;
- (void)dealloc;
- (void)enableMeasurementSystemsForLocale:(id)locale metric:(BOOL *)metric US:(BOOL *)s UK:(BOOL *)k;
- (void)setResolvedUnitFormats:(id *)formats;
@end

@implementation CalculateResult

- (void)setResolvedUnitFormats:(id *)formats
{
  *self->_resolvedUnitFormats.formats = *formats->var0;
  v3 = *&formats->var0[2];
  v4 = *&formats->var0[4];
  v5 = *&formats->var0[8];
  *&self->_resolvedUnitFormats.formats[6] = *&formats->var0[6];
  *&self->_resolvedUnitFormats.formats[8] = v5;
  *&self->_resolvedUnitFormats.formats[2] = v3;
  *&self->_resolvedUnitFormats.formats[4] = v4;
  v6 = *&formats->var0[10];
  v7 = *&formats->var0[12];
  v8 = *&formats->var0[14];
  self->_resolvedUnitFormats.formats[16] = formats->var0[16];
  *&self->_resolvedUnitFormats.formats[12] = v7;
  *&self->_resolvedUnitFormats.formats[14] = v8;
  *&self->_resolvedUnitFormats.formats[10] = v6;
}

- ($786B50094F6E1A5F953E25B90648E2E3)resolvedUnitFormats
{
  v3 = *&self[2].var0[2];
  *&retstr->var0[12] = *self[2].var0;
  *&retstr->var0[14] = v3;
  retstr->var0[16] = self[2].var0[4];
  v4 = *&self[1].var0[11];
  *&retstr->var0[4] = *&self[1].var0[9];
  *&retstr->var0[6] = v4;
  v5 = *&self[1].var0[15];
  *&retstr->var0[8] = *&self[1].var0[13];
  *&retstr->var0[10] = v5;
  v6 = *&self[1].var0[7];
  *retstr->var0 = *&self[1].var0[5];
  *&retstr->var0[2] = v6;
  return self;
}

- (CalculateResult)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (CalculateResult)initWithDouble:(double)double
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CalculateResult;
  v4 = [(CalculateResult *)&v15 init];
  if (v4)
  {
    v14 = 0;
    v5 = __binary64_to_bid128(4, &v14, double);
    v7 = v6;
    v4->_resultTree = newDecimalNode(v5, v6);
    expression = v4->_expression;
    v4->_expression = &stru_1F418FCD8;

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:double];
    v10 = [CalculateTerm termWithValue:v9 units:0 result:v4];

    [v10 setDecimalValue:{v5, v7}];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    terms = v4->_terms;
    v4->_terms = v11;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  formattedExpression = [(CalculateResult *)self formattedExpression];
  formattedResult = [(CalculateResult *)self formattedResult];
  v6 = [v3 stringWithFormat:@"%@ = %@", formattedExpression, formattedResult];

  return v6;
}

- (id)ignoringNaN
{
  if ((~self->_resultTree->var6 & 0x7C00000000000000) != 0)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)graphableFunction3D
{
  v3 = [(NSMutableDictionary *)self->_variableLookups objectForKeyedSubscript:@"x"];
  v4 = [(NSMutableDictionary *)self->_variableLookups objectForKeyedSubscript:@"y"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3)
    {
      integerValue = [v3 integerValue];
      if (!self->_variableResultTrees[integerValue])
      {
        if (my_rnd_mode)
        {
          v8 = 4;
        }

        else
        {
          v8 = 0;
        }

        v9 = __bid128_from_string("0", v8, my_fpsf);
        self->_variableResultTrees[integerValue] = newDecimalNode(v9, v10);
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __38__CalculateResult_graphableFunction3D__block_invoke_2;
      v37[3] = &unk_1E815C408;
      v37[4] = self;
      v38 = integerValue;
      v11 = v37;
    }

    else if (v4)
    {
      integerValue2 = [v4 integerValue];
      if (!self->_variableResultTrees[integerValue2])
      {
        if (my_rnd_mode)
        {
          v24 = 4;
        }

        else
        {
          v24 = 0;
        }

        v25 = __bid128_from_string("0", v24, my_fpsf);
        self->_variableResultTrees[integerValue2] = newDecimalNode(v25, v26);
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __38__CalculateResult_graphableFunction3D__block_invoke_3;
      v35[3] = &unk_1E815C408;
      v35[4] = self;
      v36 = integerValue2;
      v11 = v35;
    }

    else
    {
      resultTree = self->_resultTree;
      var0 = resultTree->var0;
      if (resultTree->var0 == 1)
      {
        var4 = resultTree->var4;
      }

      else if (var0 == 2)
      {
        if (my_rnd_mode)
        {
          v33 = 4;
        }

        else
        {
          v33 = 0;
        }

        var4 = __bid128_to_binary64(resultTree->var5.var0[1], resultTree->var6, v33, my_fpsf);
      }

      else
      {
        var4 = 0.0;
        if (var0 == 4)
        {
          v30 = resultTree->var7[0];
          v31 = rint(1.79769313e308);
          v32 = rint(2.22507386e-308) < v30 && v31 > v30;
          var4 = v30;
          if (!v32)
          {
            var4 = NAN;
          }
        }
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __38__CalculateResult_graphableFunction3D__block_invoke_4;
      v34[3] = &__block_descriptor_40_e11_d24__0d8d16l;
      *&v34[4] = var4;
      v11 = v34;
    }
  }

  else
  {
    integerValue3 = [v3 integerValue];
    v13 = integerValue3;
    if (!self->_variableResultTrees[integerValue3])
    {
      if (my_rnd_mode)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      v15 = __bid128_from_string("0", v14, my_fpsf);
      self->_variableResultTrees[v13] = newDecimalNode(v15, v16);
    }

    integerValue4 = [v5 integerValue];
    if (!self->_variableResultTrees[integerValue4])
    {
      if (my_rnd_mode)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      v19 = __bid128_from_string("1", v18, my_fpsf);
      self->_variableResultTrees[integerValue4] = newDecimalNode(v19, v20);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__CalculateResult_graphableFunction3D__block_invoke;
    aBlock[3] = &unk_1E815C3E0;
    aBlock[4] = self;
    v40 = v13;
    v41 = integerValue4;
    v11 = aBlock;
  }

  v21 = _Block_copy(v11);

  return v21;
}

double __38__CalculateResult_graphableFunction3D__block_invoke(uint64_t a1, double a2, double a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 160);
  v4 = *(v3 + 8 * *(a1 + 40));
  v5 = *(v3 + 8 * *(a1 + 44));
  *v4 = 1;
  *(v4 + 32) = a2;
  *(v4 + 204) = 0;
  *v5 = 1;
  *(v5 + 32) = a3;
  *(v5 + 204) = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v6 = *(a1 + 32);
  [Calculate _lock:0];
  g_variableResultTrees = *(v6 + 20);
  g_variableResultTreesCount = *(v6 + 8);
  g_forceResult = 1;
  g_assumeDegrees = *(v6 + 11);
  g_PreferredType = 2;
  g_ErrorCode = 0;
  LODWORD(v11[0]) = 2;
  HIDWORD(v22) = 0;
  evaluateTree(*(v6 + 15), v11);

  +[Calculate _unlock];
  if (LODWORD(v11[0]) == 1)
  {
    return *&v12;
  }

  if (LODWORD(v11[0]) == 2)
  {
    if (my_rnd_mode)
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    return __bid128_to_binary64(v13, *(&v13 + 1), v10, my_fpsf);
  }

  else
  {
    result = 0.0;
    if (LODWORD(v11[0]) == 4)
    {
      v8 = rint(1.79769313e308);
      v9 = rint(2.22507386e-308) < v14 && v8 > v14;
      result = v14;
      if (!v9)
      {
        return NAN;
      }
    }
  }

  return result;
}

double __38__CalculateResult_graphableFunction3D__block_invoke_2(uint64_t a1, double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 160) + 8 * *(a1 + 40));
  *v2 = 1;
  *(v2 + 32) = a2;
  *(v2 + 204) = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v3 = *(a1 + 32);
  [Calculate _lock:0];
  g_variableResultTrees = *(v3 + 20);
  g_variableResultTreesCount = *(v3 + 8);
  g_forceResult = 1;
  g_assumeDegrees = *(v3 + 11);
  g_PreferredType = 2;
  g_ErrorCode = 0;
  LODWORD(v8[0]) = 2;
  HIDWORD(v19) = 0;
  evaluateTree(*(v3 + 15), v8);

  +[Calculate _unlock];
  if (LODWORD(v8[0]) == 1)
  {
    return *&v9;
  }

  if (LODWORD(v8[0]) == 2)
  {
    if (my_rnd_mode)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    return __bid128_to_binary64(v10, *(&v10 + 1), v7, my_fpsf);
  }

  else
  {
    result = 0.0;
    if (LODWORD(v8[0]) == 4)
    {
      v5 = rint(1.79769313e308);
      v6 = rint(2.22507386e-308) < v11 && v5 > v11;
      result = v11;
      if (!v6)
      {
        return NAN;
      }
    }
  }

  return result;
}

double __38__CalculateResult_graphableFunction3D__block_invoke_3(uint64_t a1, double a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 32) + 160) + 8 * *(a1 + 40));
  *v3 = 1;
  *(v3 + 32) = a3;
  *(v3 + 204) = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = *(a1 + 32);
  [Calculate _lock:0];
  g_variableResultTrees = *(v4 + 20);
  g_variableResultTreesCount = *(v4 + 8);
  g_forceResult = 1;
  g_assumeDegrees = *(v4 + 11);
  g_PreferredType = 2;
  g_ErrorCode = 0;
  LODWORD(v9[0]) = 2;
  HIDWORD(v20) = 0;
  evaluateTree(*(v4 + 15), v9);

  +[Calculate _unlock];
  if (LODWORD(v9[0]) == 1)
  {
    return *&v10;
  }

  if (LODWORD(v9[0]) == 2)
  {
    if (my_rnd_mode)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    return __bid128_to_binary64(v11, *(&v11 + 1), v8, my_fpsf);
  }

  else
  {
    result = 0.0;
    if (LODWORD(v9[0]) == 4)
    {
      v6 = rint(1.79769313e308);
      v7 = rint(2.22507386e-308) < v12 && v6 > v12;
      result = v12;
      if (!v7)
      {
        return NAN;
      }
    }
  }

  return result;
}

- (id)graphableFunction2DFor:(id)for
{
  variableLookups = self->_variableLookups;
  lowercaseString = [for lowercaseString];
  v6 = [(NSMutableDictionary *)variableLookups objectForKeyedSubscript:lowercaseString];

  if (v6)
  {
    integerValue = [v6 integerValue];
    if (!self->_variableResultTrees[integerValue])
    {
      if (my_rnd_mode)
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }

      v9 = __bid128_from_string("0", v8, my_fpsf);
      self->_variableResultTrees[integerValue] = newDecimalNode(v9, v10);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42__CalculateResult_graphableFunction2DFor___block_invoke_2;
    v21[3] = &unk_1E815C3B8;
    v21[4] = self;
    v22 = integerValue;
    v11 = v21;
  }

  else
  {
    resultTree = self->_resultTree;
    var0 = resultTree->var0;
    if (resultTree->var0 == 1)
    {
      var4 = resultTree->var4;
    }

    else if (var0 == 2)
    {
      if (my_rnd_mode)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      var4 = __bid128_to_binary64(resultTree->var5.var0[1], resultTree->var6, v18, my_fpsf);
    }

    else
    {
      var4 = 0.0;
      if (var0 == 4)
      {
        v15 = resultTree->var7[0];
        v16 = rint(1.79769313e308);
        v17 = rint(2.22507386e-308) < v15 && v16 > v15;
        var4 = v15;
        if (!v17)
        {
          var4 = NAN;
        }
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__CalculateResult_graphableFunction2DFor___block_invoke;
    aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
    *&aBlock[4] = var4;
    v11 = aBlock;
  }

  v19 = _Block_copy(v11);

  return v19;
}

double __42__CalculateResult_graphableFunction2DFor___block_invoke_2(uint64_t a1, double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 160) + 8 * *(a1 + 40));
  *v2 = 1;
  *(v2 + 32) = a2;
  *(v2 + 204) = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v3 = *(a1 + 32);
  [Calculate _lock:0];
  g_variableResultTrees = *(v3 + 20);
  g_variableResultTreesCount = *(v3 + 8);
  g_forceResult = 1;
  g_assumeDegrees = *(v3 + 11);
  g_PreferredType = 2;
  g_ErrorCode = 0;
  LODWORD(v8[0]) = 2;
  HIDWORD(v19) = 0;
  evaluateTree(*(v3 + 15), v8);

  +[Calculate _unlock];
  if (LODWORD(v8[0]) == 1)
  {
    return *&v9;
  }

  if (LODWORD(v8[0]) == 2)
  {
    if (my_rnd_mode)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    return __bid128_to_binary64(v10, *(&v10 + 1), v7, my_fpsf);
  }

  else
  {
    result = 0.0;
    if (LODWORD(v8[0]) == 4)
    {
      v5 = rint(1.79769313e308);
      v6 = rint(2.22507386e-308) < v11 && v5 > v11;
      result = v11;
      if (!v6)
      {
        return NAN;
      }
    }
  }

  return result;
}

- (id)updateVariables:(id)variables
{
  v57 = *MEMORY[0x1E69E9840];
  variablesCopy = variables;
  if ([(NSArray *)self->_terms count]== 1)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = variablesCopy;
    v5 = variablesCopy;
    v6 = [v5 countByEnumeratingWithState:&v39 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v40;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v39 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_variableLookups objectForKeyedSubscript:v10];
          if (v11)
          {
            v12 = [v5 objectForKeyedSubscript:v10];
            null = [MEMORY[0x1E695DFB0] null];

            if (v12 == null)
            {
              resultTree = 0;
            }

            else
            {
              v14 = [v5 objectForKeyedSubscript:v10];
              resultTree = [v14 resultTree];
            }

            v16 = copyTree(resultTree);
            variableResultTrees = self->_variableResultTrees;
            variableResultTrees[[v11 integerValue]] = v16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v39 objects:v56 count:16];
      }

      while (v7);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    selfCopy = self;
    +[Calculate _lock];
    g_variableResultTrees = selfCopy->_variableResultTrees;
    g_variableResultTreesCount = selfCopy->_variableResultTreesCount;
    g_forceResult = 1;
    g_assumeDegrees = selfCopy->_assumeDegrees;
    g_PreferredType = 2;
    g_ErrorCode = 0;
    LODWORD(v43) = 2;
    HIDWORD(v55) = 0;
    evaluateTree(&selfCopy->_parseTree->var0, &v43);
    v19 = HIDWORD(v55);
    +[Calculate _unlock];

    if (v19)
    {
      v20 = [CalculateError errorWithResultError:v19];
    }

    else
    {
      v20 = 0;
    }

    variablesCopy = v38;
    if (v43 == 1)
    {
      if (my_rnd_mode)
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }

      v21 = __binary64_to_bid128(v23, my_fpsf, *&v45);
      v22 = v24;
    }

    else if (v43 == 2)
    {
      v22 = v46.var0[1];
      v21 = v46.var0[0];
    }

    else
    {
      if (v43 == 4)
      {
        v21 = v47;
      }

      else
      {
        v21 = 0;
      }

      v22 = 0x3040000000000000;
    }

    v25 = [CalculateResult decimalNumberWithDecimal128:v21, v22];
    resultTree = selfCopy->_resultTree;
    v27 = v44;
    v28 = v45;
    v29 = v47;
    *(&resultTree->var5 + 8) = v46;
    *&resultTree->var7[0].unitID = v29;
    *&resultTree->var2 = v27;
    *&resultTree->var4 = v28;
    v30 = v48;
    v31 = v49;
    v32 = v51;
    *&resultTree->var7[6].unitID = v50;
    *&resultTree->var7[8].unitID = v32;
    *&resultTree->var7[2].unitID = v30;
    *&resultTree->var7[4].unitID = v31;
    v33 = v52;
    v34 = v53;
    v35 = v55;
    *&resultTree->var7[14].unitID = v54;
    *&resultTree->var8 = v35;
    *&resultTree->var7[10].unitID = v33;
    *&resultTree->var7[12].unitID = v34;
    *&resultTree->var0 = v43;
    firstObject = [(NSArray *)self->_terms firstObject];
    [firstObject setValue:v25];
    [firstObject setDecimalValue:{v21, v22}];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)convertedTo:(id)to from:(id)from
{
  toCopy = to;
  fromCopy = from;
  if (!-[CalculateResult resultTree](self, "resultTree") || ((v8 = -[CalculateResult unitType](self, "unitType"), !fromCopy) ? (v9 = [toCopy unitType]) : (v9 = 0), v8 != v9))
  {
    v13 = 0;
    goto LABEL_23;
  }

  if ([(CalculateResult *)self synchronous]&& [(CalculateResult *)self unitType]== 16)
  {
    if (+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
    {
      v10 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
      needsRefresh = [v10 needsRefresh];

      if (!needsRefresh)
      {
        goto LABEL_14;
      }

      v12 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
      [v12 refreshSynchronouslyWithTimeout:6.0];
    }

    else
    {
      v14 = +[CalculateCurrencyCache shared];
      [v14 setTimeout:6.0];

      v12 = +[CalculateCurrencyCache shared];
      [v12 refreshIfNeeded];
    }
  }

LABEL_14:
  v88[0] = 0;
  v15 = [(CalculateResult *)self convertedTree:toCopy from:fromCopy needsUpdate:v88];
  if (v15)
  {
    v16 = v15;
    v17 = copyTree([(CalculateResult *)self resultTree]);
    if (v17)
    {
      v18 = v17;
      unitInfo = [toCopy unitInfo];
      unitType = [unitInfo unitType];

      numberFormatter = self->_numberFormatter;
      locales = self->_locales;
      unitsInfo = [(CalculateResult *)self unitsInfo];
      isPartialExpression = self->_isPartialExpression;
      assumeDegrees = self->_assumeDegrees;
      localizeUnit = self->_localizeUnit;
      matchLocale = self->_matchLocale;
      numberingSystem = self->_numberingSystem;
      autoScientificNotation = self->_autoScientificNotation;
      scientificNotationFormat = self->_scientificNotationFormat;
      unitFormat = self->_unitFormat;
      flexibleFractionDigits = self->_flexibleFractionDigits;
      isSimpleVerticalMath = self->_isSimpleVerticalMath;
      minimumFractionDigits = self->_minimumFractionDigits;
      unitExponent = self->_unitExponent;
      v36 = *&self->_resolvedUnitFormats.formats[14];
      v85 = *&self->_resolvedUnitFormats.formats[12];
      v86 = v36;
      v87 = self->_resolvedUnitFormats.formats[16];
      v37 = *&self->_resolvedUnitFormats.formats[6];
      v81 = *&self->_resolvedUnitFormats.formats[4];
      v82 = v37;
      v38 = *&self->_resolvedUnitFormats.formats[10];
      v83 = *&self->_resolvedUnitFormats.formats[8];
      v84 = v38;
      v39 = *&self->_resolvedUnitFormats.formats[2];
      v79 = *self->_resolvedUnitFormats.formats;
      v80 = v39;
      LOBYTE(v77) = v88[0];
      HIDWORD(v75) = minimumFractionDigits;
      BYTE1(v75) = isSimpleVerticalMath;
      LOBYTE(v75) = flexibleFractionDigits;
      LOBYTE(v73) = autoScientificNotation;
      LOBYTE(v71) = matchLocale;
      BYTE2(v69) = localizeUnit;
      BYTE1(v69) = assumeDegrees;
      LOBYTE(v69) = 0;
      LODWORD(v67) = 0;
      BYTE1(v65) = isPartialExpression;
      LOBYTE(v65) = 0;
      LODWORD(v63) = unitExponent;
      v13 = [CalculateResult resultWithResultTree:"resultWithResultTree:parseTree:locales:numberFormatter:unitsInfo:unitType:unitExponent:expression:isTrivial:isPartialExpression:variableLookups:variableResultTrees:variableResultTreesCount:resolvedUnitFormats:forceResult:assumeDegrees:localizeUnit:unitFormat:matchLocale:numberingSystem:autoScientificNotation:scientificNotationFormat:flexibleFractionDigits:isSimpleVerticalMath:minimumFractionDigits:hasStaleCurrencyData:" parseTree:v16 locales:0 numberFormatter:locales unitsInfo:numberFormatter unitType:unitsInfo unitExponent:unitType expression:v63 isTrivial:&stru_1F418FCD8 isPartialExpression:v65 variableLookups:0 variableResultTrees:0 variableResultTreesCount:v67 resolvedUnitFormats:&v79 forceResult:v69 assumeDegrees:unitFormat localizeUnit:v71 unitFormat:numberingSystem matchLocale:v73 numberingSystem:scientificNotationFormat autoScientificNotation:v75 scientificNotationFormat:v77 flexibleFractionDigits:? isSimpleVerticalMath:? minimumFractionDigits:? hasStaleCurrencyData:?];

      if (v13)
      {
        v41 = self->_numberFormatter;
        v40 = self->_locales;
        unitsInfo = self->_unitsInfo;
        v43 = *&self->_isTrivial;
        v44 = self->_assumeDegrees;
        v45 = self->_localizeUnit;
        v46 = self->_matchLocale;
        v47 = self->_numberingSystem;
        v48 = self->_autoScientificNotation;
        v50 = self->_scientificNotationFormat;
        v49 = self->_unitFormat;
        v51 = self->_flexibleFractionDigits;
        v52 = self->_isSimpleVerticalMath;
        v54 = self->_minimumFractionDigits;
        v53 = self->_unitExponent;
        v55 = *&self->_resolvedUnitFormats.formats[14];
        v85 = *&self->_resolvedUnitFormats.formats[12];
        v86 = v55;
        v87 = self->_resolvedUnitFormats.formats[16];
        v56 = *&self->_resolvedUnitFormats.formats[6];
        v81 = *&self->_resolvedUnitFormats.formats[4];
        v82 = v56;
        v57 = *&self->_resolvedUnitFormats.formats[10];
        v83 = *&self->_resolvedUnitFormats.formats[8];
        v84 = v57;
        v58 = *&self->_resolvedUnitFormats.formats[2];
        v79 = *self->_resolvedUnitFormats.formats;
        v80 = v58;
        LOBYTE(v78) = v88[0];
        HIDWORD(v76) = v54;
        BYTE1(v76) = v52;
        LOBYTE(v76) = v51;
        LOBYTE(v74) = v48;
        LOBYTE(v72) = v46;
        BYTE2(v70) = v45;
        BYTE1(v70) = v44;
        LOBYTE(v70) = 0;
        LODWORD(v68) = 0;
        LOWORD(v66) = v43;
        LODWORD(v64) = v53;
        v59 = [CalculateResult resultWithResultTree:"resultWithResultTree:parseTree:locales:numberFormatter:unitsInfo:unitType:unitExponent:expression:isTrivial:isPartialExpression:variableLookups:variableResultTrees:variableResultTreesCount:resolvedUnitFormats:forceResult:assumeDegrees:localizeUnit:unitFormat:matchLocale:numberingSystem:autoScientificNotation:scientificNotationFormat:flexibleFractionDigits:isSimpleVerticalMath:minimumFractionDigits:hasStaleCurrencyData:" parseTree:v18 locales:0 numberFormatter:v40 unitsInfo:v41 unitType:unitsInfo unitExponent:unitType expression:v64 isTrivial:&stru_1F418FCD8 isPartialExpression:v66 variableLookups:0 variableResultTrees:0 variableResultTreesCount:v68 resolvedUnitFormats:&v79 forceResult:v70 assumeDegrees:v49 localizeUnit:v72 unitFormat:v47 matchLocale:v74 numberingSystem:v50 autoScientificNotation:v76 scientificNotationFormat:v78 flexibleFractionDigits:? isSimpleVerticalMath:? minimumFractionDigits:? hasStaleCurrencyData:?];
        v60 = v59;
        if (v59)
        {
          [v59 setParent:v13];
          [v13 _setInputValueAndUnit:v60];
          [v13 setParent:self];
          formattedResult = [v60 formattedResult];
          [v13 _setExpression:formattedResult];
        }

        else
        {

          freeTree(v18);
          v13 = 0;
        }

        goto LABEL_22;
      }

      freeTree(v18);
    }

    freeTree(v16);
  }

  v13 = 0;
  v60 = 0;
LABEL_22:

LABEL_23:

  return v13;
}

- (TreeObject)convertedTree:(id)tree from:(id)from needsUpdate:(BOOL *)update
{
  v33 = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  fromCopy = from;
  if (update)
  {
    *update = 0;
  }

  if ([(CalculateResult *)self resultTree])
  {
    unitType = [(CalculateResult *)self unitType];
    v11 = fromCopy ? 0 : [treeCopy unitType];
    if (unitType == v11)
    {
      +[Calculate _lock];
      unitInfo = [treeCopy unitInfo];
      v13 = newUnitIDNode([unitInfo unitID]);

      if (v13)
      {
        if ([treeCopy exponent] == 1)
        {
          v14 = v13;
        }

        else
        {
          snprintf(__str, 0x28uLL, "%d", [treeCopy exponent]);
          if (my_rnd_mode)
          {
            v15 = 4;
          }

          else
          {
            v15 = 0;
          }

          v16 = __bid128_from_string(__str, v15, my_fpsf);
          v18 = newDecimalNode(v16, v17);
          if (!v18)
          {
LABEL_26:
            v14 = 0;
            goto LABEL_39;
          }

          v19 = v18;
          v14 = newTreeObject(functionPow, v13, v18);
          if (!v14)
          {
            freeTree(v19);
            goto LABEL_39;
          }
        }

        resultTree = [(CalculateResult *)self resultTree];
        v21 = resultTree;
        if (fromCopy)
        {
          v22 = 76;
          while (!*(&resultTree->var0 + v22))
          {
            v22 += 8;
            if (v22 == 204)
            {
              unitInfo2 = [fromCopy unitInfo];
              unitType2 = [unitInfo2 unitType];

              if (unitType2 <= 0xF)
              {
                v25 = copyTree(v21);
                if (v25)
                {
                  v13 = v25;
                  *(v25 + 201) = 1;
                  unitInfo3 = [fromCopy unitInfo];
                  v27 = &v13[unitType2];
                  *(v27 + 18) = [unitInfo3 unitID];

                  *(v27 + 19) = [fromCopy exponent];
                  v21 = v13;
                  goto LABEL_28;
                }
              }

              break;
            }
          }

          v13 = v14;
          goto LABEL_26;
        }

        v13 = 0;
LABEL_28:
        v28 = newTreeObject(functionConvert, v21, v14);
        if (v28)
        {
          v29 = v28;
          v30 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
          if (v30)
          {
            v14 = v30;
            evaluateTree(v29, v30);
            *(v29 + 2) = 0;
            freeTree(v29);
            if (update && g_currencyNeedsRefresh == 1)
            {
              *update = g_currencyNeedsRefresh;
            }

            if (!*(v14 + 51))
            {
              if (!fromCopy)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          else
          {
            v14 = v29;
          }
        }

        freeTree(v14);
        v14 = 0;
        if (v13)
        {
LABEL_39:
          freeTree(v13);
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_40:
      +[Calculate _unlock];
      goto LABEL_41;
    }
  }

  v14 = 0;
LABEL_41:

  return v14;
}

- (id)localizedConversions
{
  selfCopy = self;
  v85 = *MEMORY[0x1E69E9840];
  typeInfo = [(CalculateResult *)self typeInfo];
  if (typeInfo && (v4 = typeInfo, -[CalculateResult typeInfo](selfCopy, "typeInfo"), v5 = objc_claimAutoreleasedReturnValue(), [v5 units], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    locales = [(CalculateResult *)selfCopy locales];
    v8 = locales;
    if (!locales || ![locales count])
    {
      v9 = +[Localize systemLocales];

      v8 = v9;
    }

    locale = [(NSNumberFormatter *)selfCopy->_numberFormatter locale];
    v11 = [Localize locales:v8 withDefault:locale];

    if ([(CalculateResult *)selfCopy unitType]== 16)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__CalculateResult_localizedConversions__block_invoke;
      block[3] = &unk_1E815C940;
      block[4] = selfCopy;
      if (localizedConversions_onceToken != -1)
      {
        dispatch_once(&localizedConversions_onceToken, block);
      }

      v12 = objc_opt_new();
      v13 = objc_opt_new();
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __39__CalculateResult_localizedConversions__block_invoke_2;
      aBlock[3] = &unk_1E815C370;
      v55 = v12;
      v78 = v55;
      v54 = v13;
      v79 = v54;
      v14 = _Block_copy(aBlock);
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v56 = v11;
      obj = v11;
      v15 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v74;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v74 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v73 + 1) + 8 * i);
            unitsInfo = [(CalculateResult *)selfCopy unitsInfo];
            currencyCode = [v19 currencyCode];
            v22 = [unitsInfo objectForKeyedSubscript:currencyCode];

            if (v22)
            {
              currencyCode2 = [v19 currencyCode];
              v14[2](v14, currencyCode2);
            }
          }

          v16 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
        }

        while (v16);
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v24 = [&unk_1F419A0A8 countByEnumeratingWithState:&v69 objects:v83 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v70;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v70 != v26)
            {
              objc_enumerationMutation(&unk_1F419A0A8);
            }

            v14[2](v14, *(*(&v69 + 1) + 8 * j));
          }

          v25 = [&unk_1F419A0A8 countByEnumeratingWithState:&v69 objects:v83 count:16];
        }

        while (v25);
      }

      v57 = objc_opt_new();
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v28 = v54;
      v29 = [v28 countByEnumeratingWithState:&v65 objects:v82 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v66;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v66 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v65 + 1) + 8 * k);
            unitsInfo2 = [(CalculateResult *)selfCopy unitsInfo];
            v35 = [unitsInfo2 objectForKeyedSubscript:v33];

            if (v35)
            {
              unitID = [v35 unitID];
              if (unitID != [(CalculateResult *)selfCopy singleUnitID])
              {
                inputValueAndUnit = [(CalculateResult *)selfCopy inputValueAndUnit];
                if (!inputValueAndUnit || (v38 = inputValueAndUnit, obja = [v35 unitID], -[CalculateResult inputValueAndUnit](selfCopy, "inputValueAndUnit"), v39 = v14, v40 = v30, v41 = selfCopy, v42 = v31, v43 = v28, v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "singleUnitID"), v44, v28 = v43, v31 = v42, selfCopy = v41, v30 = v40, v14 = v39, v38, obja != v45))
                {
                  v46 = [(CalculateResult *)selfCopy newUnit:v35];
                  [v57 addObject:v46];
                }
              }
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v65 objects:v82 count:16];
        }

        while (v30);
      }

      v11 = v56;
    }

    else
    {
      v64 = 0;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v47 = v11;
      v48 = [v47 countByEnumeratingWithState:&v60 objects:v81 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v61;
        do
        {
          for (m = 0; m != v49; ++m)
          {
            if (*v61 != v50)
            {
              objc_enumerationMutation(v47);
            }

            [(CalculateResult *)selfCopy enableMeasurementSystemsForLocale:*(*(&v60 + 1) + 8 * m) metric:0 US:&v64 + 1 UK:&v64];
          }

          v49 = [v47 countByEnumeratingWithState:&v60 objects:v81 count:16];
        }

        while (v49);
      }

      v52 = [(CalculateResult *)selfCopy conversionsForMetric:1 US:HIBYTE(v64) UK:v64];
      v57 = [v52 copy];
    }
  }

  else
  {
    v57 = MEMORY[0x1E695E0F0];
  }

  return v57;
}

void __39__CalculateResult_localizedConversions__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = localizedConversions_allCurrencies;
  localizedConversions_allCurrencies = v2;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) typeInfo];
  v5 = [v4 units];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = localizedConversions_allCurrencies;
        v11 = [*(*(&v12 + 1) + 8 * v9) name];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void __39__CalculateResult_localizedConversions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) addObject:v3];
  }
}

- (id)availableConversions
{
  typeInfo = [(CalculateResult *)self typeInfo];
  if (typeInfo && (v4 = typeInfo, -[CalculateResult typeInfo](self, "typeInfo"), v5 = objc_claimAutoreleasedReturnValue(), [v5 units], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = [(CalculateResult *)self conversionsForMetric:1 US:1 UK:1];
    v8 = [v7 copy];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)bestConversion
{
  selfCopy = self;
  v164 = *MEMORY[0x1E69E9840];
  if (!-[CalculateResult resultTree](self, "resultTree") || (-[CalculateResult typeInfo](selfCopy, "typeInfo"), v3 = objc_claimAutoreleasedReturnValue(), [v3 units], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v6 = 0;
    goto LABEL_6;
  }

  if ([(CalculateResult *)selfCopy unitType]== 16)
  {
    localizedConversions = [(CalculateResult *)selfCopy localizedConversions];
    v6 = [localizedConversions objectAtIndexedSubscript:0];

    goto LABEL_6;
  }

  if ([(CalculateResult *)selfCopy singleUnitID])
  {
    unitsInfo = [(CalculateResult *)selfCopy unitsInfo];
    v9 = [unitsInfo objectAtIndexedSubscript:{-[CalculateResult singleUnitID](selfCopy, "singleUnitID")}];
    bestEquivalent = [v9 bestEquivalent];

    if (bestEquivalent)
    {
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      obj = [(CalculateResult *)selfCopy localizedConversions];
      v11 = [obj countByEnumeratingWithState:&v156 objects:v163 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v157;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v157 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v156 + 1) + 8 * i);
            unitInfo = [v15 unitInfo];
            unitID = [unitInfo unitID];
            unitID2 = [bestEquivalent unitID];

            if (unitID == unitID2)
            {
              v6 = v15;

              goto LABEL_6;
            }
          }

          v12 = [obj countByEnumeratingWithState:&v156 objects:v163 count:16];
        }

        while (v12);
      }
    }
  }

  locales = [(CalculateResult *)selfCopy locales];
  v20 = locales;
  if (!locales || ![locales count])
  {
    v21 = +[Localize systemLocales];

    v20 = v21;
  }

  locale = [(NSNumberFormatter *)selfCopy->_numberFormatter locale];
  v23 = [Localize locales:v20 withDefault:locale];

  v155 = 0;
  v154 = 0;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v150 objects:v162 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v151;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v151 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(CalculateResult *)selfCopy enableMeasurementSystemsForLocale:*(*(&v150 + 1) + 8 * j) metric:&v155 + 1 US:&v155 UK:&v154];
      }

      v26 = [v24 countByEnumeratingWithState:&v150 objects:v162 count:16];
    }

    while (v26);
  }

  [(CalculateResult *)selfCopy conversionsForMetric:HIBYTE(v155) US:v155 UK:v154];
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v29 = v149 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v146 objects:v161 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v147;
    while (2)
    {
      for (k = 0; k != v31; ++k)
      {
        v34 = v24;
        if (*v147 != v32)
        {
          objc_enumerationMutation(v29);
        }

        unitInfo2 = [*(*(&v146 + 1) + 8 * k) unitInfo];
        doNotSuggest = [unitInfo2 doNotSuggest];

        if (!doNotSuggest)
        {
          v37 = 0;
          v24 = v34;
          goto LABEL_41;
        }

        v24 = v34;
      }

      v31 = [v29 countByEnumeratingWithState:&v146 objects:v161 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v37 = 1;
LABEL_41:

  resultTree = [(CalculateResult *)selfCopy resultTree];
  v39 = *resultTree;
  if (*resultTree == 1)
  {
    v40 = *(resultTree + 32);
    if (my_rnd_mode)
    {
      v41 = 4;
    }

    else
    {
      v41 = 0;
    }

    v42 = __binary64_to_bid128(v41, my_fpsf, v40);
    v133 = v43;
    v134 = v42;
  }

  else if (v39 == 2)
  {
    v133 = *(resultTree + 56);
    v134 = *(resultTree + 48);
  }

  else
  {
    if (v39 == 4)
    {
      v134 = *(resultTree + 64);
    }

    else
    {
      v134 = 0;
    }

    v133 = 0x3040000000000000;
  }

  v144 = 0;
  v145 = 0;
  firstObject = [v24 firstObject];
  [CalculateResult preferMeasurementSystemsForLocale:firstObject preferred:&v145 fallback:&v144];

  inputValueAndUnit = [(CalculateResult *)selfCopy inputValueAndUnit];
  if (inputValueAndUnit)
  {
    inputValueAndUnit2 = [(CalculateResult *)selfCopy inputValueAndUnit];
    singleUnitID = [inputValueAndUnit2 singleUnitID];
  }

  else
  {
    singleUnitID = [(CalculateResult *)selfCopy singleUnitID];
  }

  if (singleUnitID)
  {
    unitsInfo2 = [(CalculateResult *)selfCopy unitsInfo];
    v49 = [unitsInfo2 objectAtIndexedSubscript:singleUnitID];
    measurementSystem = [v49 measurementSystem];

    v136 = v145 != measurementSystem;
    if (v144)
    {
      v51 = v144 == measurementSystem;
    }

    else
    {
      v51 = 0;
    }

    v52 = !v51;
  }

  else
  {
    v52 = 1;
    v136 = 1;
  }

  v135 = v52;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v53 = v29;
  v54 = [v53 countByEnumeratingWithState:&v140 objects:v160 count:16];
  if (!v54)
  {

    v107 = 0;
    goto LABEL_130;
  }

  v55 = v54;
  v108 = v24;
  v125 = 0;
  v126 = 0;
  v111 = 0;
  v112 = 0;
  v119 = 0;
  v120 = 0;
  v132 = 0;
  v115 = 0;
  v116 = 0;
  v127 = 0;
  v128 = 0;
  v113 = 0;
  v114 = 0;
  v121 = 0;
  v122 = 0;
  v56 = *v141;
  v123 = 0x3040000000000000;
  v124 = 0x3040000000000000;
  v109 = 0x3040000000000000;
  v110 = 0x3040000000000000;
  v117 = 0x3040000000000000;
  v118 = 0x3040000000000000;
  v131 = v37;
  v129 = *v141;
  v130 = v53;
  do
  {
    v57 = 0;
    obja = v55;
    do
    {
      if (*v141 != v56)
      {
        objc_enumerationMutation(v53);
      }

      v58 = *(*(&v140 + 1) + 8 * v57);
      if ((v37 & 1) != 0 || ([*(*(&v140 + 1) + 8 * v57) unitInfo], v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v59, "doNotSuggest"), v59, (v60 & 1) == 0))
      {
        v108 = [(CalculateResult *)selfCopy convertedTree:v58 needsUpdate:0, v108];
        if (v108)
        {
          v62 = v108;
          v139 = 0;
          v63 = *v108;
          if (*v108 == 1)
          {
            v66 = *(v108 + 32);
            if (my_rnd_mode)
            {
              v67 = 4;
            }

            else
            {
              v67 = 0;
            }

            v64 = __binary64_to_bid128(v67, my_fpsf, v66);
            v65 = v68;
          }

          else if (v63 == 2)
          {
            v64 = *(v108 + 48);
            v65 = *(v108 + 56);
          }

          else
          {
            if (v63 == 4)
            {
              v64 = *(v108 + 64);
            }

            else
            {
              v64 = 0;
            }

            v65 = 0x3040000000000000;
          }

          v69 = __bid128_sub(v134, v133, v64, v65, 4, &v139);
          v71 = v70 & 0x7FFFFFFFFFFFFFFFLL;
          if ([(CalculateResult *)selfCopy isAcceptableConversion:v62])
          {
            if ((v132 & 0x100000000) == 0 || __bid128_quiet_less(v69, v71, v126, v124, &v139))
            {
              v72 = v58;

              v126 = v69;
              v127 = v72;
              v124 = v71;
            }

            if (v136)
            {
              unitInfo3 = [v58 unitInfo];
              measurementSystem2 = [unitInfo3 measurementSystem];
              v75 = v145;

              if (measurementSystem2 == v75)
              {
                if ((v116 & 0x100000000) != 0 && !__bid128_quiet_less(v69, v71, v112, v110, &v139))
                {
                  BYTE4(v116) = 1;
                }

                else
                {
                  v76 = v58;

                  BYTE4(v116) = 1;
                  v112 = v69;
                  v113 = v76;
                  v110 = v71;
                }
              }
            }

            if (v144)
            {
              v77 = v135;
            }

            else
            {
              v77 = 0;
            }

            if (v77 == 1 && ([v58 unitInfo], v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "measurementSystem"), v80 = v144, v78, v79 == v80))
            {
              if ((v115 & 0x100000000) != 0)
              {
                v81 = __bid128_quiet_less(v69, v71, v120, v118, &v139);
                BYTE4(v132) = 1;
                v83 = v121;
                v82 = v122;
                v84 = v69;
                v85 = v71;
                v69 = v119;
                v71 = v117;
                BYTE4(v115) = 1;
                v86 = v58;
                if (!v81)
                {
                  goto LABEL_121;
                }
              }

              else
              {
                BYTE4(v132) = 1;
                v83 = v121;
                v82 = v122;
                v84 = v69;
                v85 = v71;
                v69 = v119;
                v71 = v117;
                BYTE4(v115) = 1;
                v86 = v58;
              }

LABEL_120:
              v122 = v82;
              v97 = selfCopy;
              v98 = v85;
              v99 = v58;

              v119 = v69;
              v120 = v84;
              v117 = v71;
              v118 = v98;
              selfCopy = v97;
              v121 = v86;
            }

            else
            {
              BYTE4(v132) = 1;
            }
          }

          else
          {
            if ((v132 & 1) == 0 || __bid128_quiet_less(v69, v71, v125, v123, &v139))
            {
              v87 = v58;

              v125 = v69;
              v123 = v71;
              v128 = v87;
            }

            if (v136)
            {
              unitInfo4 = [v58 unitInfo];
              measurementSystem3 = [unitInfo4 measurementSystem];
              v90 = v145;

              if (measurementSystem3 == v90)
              {
                if ((v116 & 1) != 0 && !__bid128_quiet_less(v69, v71, v111, v109, &v139))
                {
                  LOBYTE(v116) = 1;
                }

                else
                {
                  v91 = v58;

                  LOBYTE(v116) = 1;
                  v111 = v69;
                  v109 = v71;
                  v114 = v91;
                }
              }
            }

            if (v144)
            {
              v92 = v135;
            }

            else
            {
              v92 = 0;
            }

            if (v92 == 1)
            {
              unitInfo5 = [v58 unitInfo];
              measurementSystem4 = [unitInfo5 measurementSystem];
              v95 = v144;

              if (measurementSystem4 == v95)
              {
                if (v115)
                {
                  v96 = __bid128_quiet_less(v69, v71, v119, v117, &v139);
                  LOBYTE(v132) = 1;
                  v86 = v121;
                  v83 = v122;
                  v84 = v120;
                  v85 = v118;
                  LOBYTE(v115) = 1;
                  v82 = v58;
                  if (!v96)
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  LOBYTE(v132) = 1;
                  v86 = v121;
                  v83 = v122;
                  v84 = v120;
                  v85 = v118;
                  LOBYTE(v115) = 1;
                  v82 = v58;
                }

                goto LABEL_120;
              }
            }

            LOBYTE(v132) = 1;
          }

LABEL_121:
          freeTree(v62);
          v37 = v131;
          v56 = v129;
          v53 = v130;
          v55 = obja;
        }
      }

      v57 = v57 + 1;
    }

    while (v55 != v57);
    v100 = [v53 countByEnumeratingWithState:&v140 objects:v160 count:16];
    v55 = v100;
  }

  while (v100);

  if (v113)
  {
    v101 = v113;

    v102 = v101;
    v24 = v108;
    v103 = v128;
    v104 = v114;
    v106 = v121;
    v105 = v122;
    goto LABEL_137;
  }

  v24 = v108;
  if (v121)
  {
    v106 = v121;

    v101 = 0;
    v102 = v106;
    goto LABEL_135;
  }

  v102 = v127;
  if (!v127)
  {
    if (v114)
    {
      v104 = v114;
      v101 = 0;
      v106 = 0;
      v102 = v104;
      v103 = v128;
      goto LABEL_136;
    }

    if (v122)
    {
      v105 = v122;
      v101 = 0;
      v106 = 0;
      v104 = 0;
      v102 = v105;
      v103 = v128;
      goto LABEL_137;
    }

    v107 = v128;
LABEL_130:
    v103 = v107;
    v101 = 0;
    v106 = 0;
    v104 = 0;
    v105 = 0;
    v102 = v103;
    goto LABEL_137;
  }

  v101 = 0;
  v106 = 0;
LABEL_135:
  v103 = v128;
  v104 = v114;
LABEL_136:
  v105 = v122;
LABEL_137:
  v6 = v102;

LABEL_6:

  return v6;
}

- (BOOL)isAcceptableConversion:(TreeObject *)conversion
{
  if ([(CalculateResult *)self unitType]!= 12)
  {
    v18 = 0;
    v6 = 0x3040000000000000;
    v7 = __bid128_div(5uLL, 0x3040000000000000uLL, 0x64uLL, 0x3040000000000000uLL, 4, &v18);
    v9 = v8;
    var0 = conversion->var0;
    if (conversion->var0 == 1)
    {
      if (my_rnd_mode)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      v11 = __binary64_to_bid128(v13, my_fpsf, conversion->var4);
      v6 = v14;
    }

    else if (var0 == 2)
    {
      v12 = &conversion->var5.var0[1];
      v11 = conversion->var5.var0[1];
      v6 = v12[1];
    }

    else if (var0 == 4)
    {
      v11 = conversion->var7[0];
    }

    else
    {
      v11 = 0;
    }

    if ([(CalculateResult *)self unitType]== 7)
    {
      v15 = __bid128_div(1uLL, 0x3040000000000000uLL, 0x400uLL, 0x3040000000000000uLL, 4, &v18);
      v5 = __bid128_quiet_greater_equal(v11, v6 & 0x7FFFFFFFFFFFFFFFLL, v15, v16, &v18);
      if (!v5)
      {
        return v5;
      }

      v5 = __bid128_quiet_less(v11, v6 & 0x7FFFFFFFFFFFFFFFLL, 0x100000uLL, 0x3040000000000000uLL, &v18);
    }

    else
    {
      v5 = __bid128_quiet_greater_equal(v11, v6 & 0x7FFFFFFFFFFFFFFFLL, v7, v9, &v18);
    }

    LOBYTE(v5) = v5 != 0;
    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (id)conversionsForMetric:(BOOL)metric US:(BOOL)s UK:(BOOL)k
{
  metricCopy = metric;
  v35 = *MEMORY[0x1E69E9840];
  v29 = objc_opt_new();
  v28 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  typeInfo = [(CalculateResult *)self typeInfo];
  units = [typeInfo units];

  v8 = [units countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(units);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        unitID = [v12 unitID];
        if (unitID != [(CalculateResult *)self singleUnitID])
        {
          inputValueAndUnit = [(CalculateResult *)self inputValueAndUnit];
          if (!inputValueAndUnit || (v15 = inputValueAndUnit, v16 = [v12 unitID], -[CalculateResult inputValueAndUnit](self, "inputValueAndUnit"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "singleUnitID"), v17, v15, v16 != v18))
          {
            typeInfo2 = [v12 typeInfo];
            isTemperature = [typeInfo2 isTemperature];

            if ((isTemperature & 1) == 0)
            {
              if ([v12 measurementSystem] == 2)
              {
                if (!s)
                {
                  goto LABEL_14;
                }
              }

              else if ([v12 measurementSystem] == 3)
              {
                if (!k)
                {
                  goto LABEL_14;
                }
              }

              else if ([v12 measurementSystem] == 1 && !metricCopy)
              {
                goto LABEL_14;
              }
            }

            v21 = [(CalculateResult *)self newUnit:v12];
            if ([v12 doNotSuggest])
            {
              v22 = v28;
            }

            else
            {
              v22 = v29;
            }

            [v22 addObject:v21];
          }
        }

LABEL_14:
        ++v11;
      }

      while (v9 != v11);
      v23 = [units countByEnumeratingWithState:&v30 objects:v34 count:16];
      v9 = v23;
    }

    while (v23);
  }

  [v29 addObjectsFromArray:v28];
  if ([(CalculateResult *)self unitType]== 7)
  {
    [v29 sortUsingComparator:&__block_literal_global_675];
  }

  return v29;
}

uint64_t __46__CalculateResult_conversionsForMetric_US_UK___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v22 = 0;
  v6 = [v4 unitInfo];
  v7 = [v6 baseNumerator];
  v9 = v8;
  v10 = [v5 unitInfo];
  v11 = [v10 baseNumerator];
  LODWORD(v7) = __bid128_quiet_less(v7, v9, v11, v12, &v22);

  if (v7)
  {
    v13 = -1;
  }

  else
  {
    v14 = [v5 unitInfo];
    v15 = [v14 baseNumerator];
    v17 = v16;
    v18 = [v4 unitInfo];
    v19 = [v18 baseNumerator];
    LODWORD(v15) = __bid128_quiet_less(v15, v17, v19, v20, &v22);

    v13 = v15;
  }

  return v13;
}

- (id)newUnit:(id)unit
{
  unitID = [unit unitID];
  unitsInfo = [(CalculateResult *)self unitsInfo];
  v6 = [CalculateUnit unitWithID:unitID unitsInfo:unitsInfo exponent:[(CalculateResult *)self unitExponent]];

  return v6;
}

- (void)enableMeasurementSystemsForLocale:(id)locale metric:(BOOL *)metric US:(BOOL *)s UK:(BOOL *)k
{
  v10 = [locale objectForKey:*MEMORY[0x1E695D9B8]];
  if (v10)
  {
    v15 = v10;
    if ([v10 isEqualToString:*MEMORY[0x1E695D9D0]])
    {
      v10 = v15;
      if (s)
      {
        *s = 1;
      }

      goto LABEL_13;
    }

    if ([v15 isEqualToString:*MEMORY[0x1E695D9C8]])
    {
      if (k)
      {
        *k = 1;
      }

      if (s)
      {
        if ([(CalculateResult *)self singleUnitID])
        {
          unitsInfo = [(CalculateResult *)self unitsInfo];
          v12 = [unitsInfo objectAtIndexedSubscript:{-[CalculateResult singleUnitID](self, "singleUnitID")}];
          typeInfo = [v12 typeInfo];
          isVolume = [typeInfo isVolume];

          if ((isVolume & 1) == 0)
          {
            *s = 1;
          }
        }
      }

      v10 = v15;
LABEL_13:
      if (!metric)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (metric)
    {
      *metric = 1;
    }

    metric = s;
    v10 = v15;
    if (s)
    {
LABEL_14:
      *metric = 1;
    }
  }

LABEL_15:
}

- (NSString)formattedResult
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  terms = [(CalculateResult *)self terms];
  v5 = [terms countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(terms);
        }

        formattedResult = [*(*(&v12 + 1) + 8 * i) formattedResult];
        [v3 addObject:formattedResult];
      }

      v6 = [terms countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:@" "];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CalculateResult *)self compare:equalCopy]== 0;

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  terms = [(CalculateResult *)self terms];
  v6 = [terms objectAtIndexedSubscript:0];
  terms2 = [compareCopy terms];
  v8 = [terms2 objectAtIndexedSubscript:0];
  v9 = [v6 compare:v8];

  if (!v9)
  {
    terms3 = [(CalculateResult *)self terms];
    v11 = [terms3 count];
    terms4 = [compareCopy terms];
    v13 = [terms4 count];
    v9 = v11 < v13 ? -1 : v11 > v13;

    if (!v9)
    {
      terms5 = [(CalculateResult *)self terms];
      v15 = [terms5 count];

      if (v15 < 2)
      {
LABEL_10:
        v9 = 0;
      }

      else
      {
        v16 = 1;
        while (1)
        {
          terms6 = [(CalculateResult *)self terms];
          v18 = [terms6 objectAtIndexedSubscript:v16];
          terms7 = [compareCopy terms];
          v20 = [terms7 objectAtIndexedSubscript:v16];
          v9 = [v18 compare:v20];

          if (v9)
          {
            break;
          }

          ++v16;
          terms8 = [(CalculateResult *)self terms];
          v22 = [terms8 count];

          if (v16 >= v22)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  parseTree = self->_parseTree;
  if (parseTree)
  {
    freeTree(parseTree);
    self->_parseTree = 0;
  }

  resultTree = self->_resultTree;
  if (resultTree)
  {
    freeTree(resultTree);
    self->_resultTree = 0;
  }

  variableResultTrees = self->_variableResultTrees;
  if (variableResultTrees)
  {
    if (self->_variableResultTreesCount >= 1)
    {
      v6 = 0;
      do
      {
        freeTree(&self->_variableResultTrees[v6++]->var0);
      }

      while (v6 < self->_variableResultTreesCount);
      variableResultTrees = self->_variableResultTrees;
    }

    free(variableResultTrees);
    self->_variableResultTrees = 0;
  }

  v7.receiver = self;
  v7.super_class = CalculateResult;
  [(CalculateResult *)&v7 dealloc];
}

- (CalculateResult)init
{
  v6.receiver = self;
  v6.super_class = CalculateResult;
  v2 = [(CalculateResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CalculateResult *)v2 setParseTree:0];
    [(CalculateResult *)v3 setResultTree:0];
    conversions = v3->_conversions;
    v3->_conversions = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)_setTerms:(id)terms
{
  termsCopy = terms;
  objc_storeStrong(&self->_terms, terms);
  if ([termsCopy count] == 1 && (objc_msgSend(termsCopy, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "units"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7 == 1))
  {
    v8 = [termsCopy objectAtIndexedSubscript:0];
    units = [v8 units];
    v10 = [units objectAtIndexedSubscript:0];
    unitInfo = [v10 unitInfo];
    self->_singleUnitID = [unitInfo unitID];
  }

  else
  {
    self->_singleUnitID = 0;
  }
}

- (void)_setInputValueAndUnit:(id)unit
{
  unitCopy = unit;
  objc_storeStrong(&self->_inputValueAndUnit, unit);
  if (unitCopy)
  {
    self->_hasStaleCurrencyData |= unitCopy[14];
  }
}

- (void)_setConversions:(id)conversions
{
  v16 = *MEMORY[0x1E69E9840];
  conversionsCopy = conversions;
  objc_storeStrong(&self->_conversions, conversions);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = conversionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        self->_hasStaleCurrencyData |= *(*(*(&v11 + 1) + 8 * i) + 14);
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (void)preferMeasurementSystemsForLocale:(id)locale preferred:(unint64_t *)preferred fallback:(unint64_t *)fallback
{
  if (preferred)
  {
    *preferred = 2;
  }

  if (fallback)
  {
    *fallback = 1;
  }

  v8 = [locale objectForKey:*MEMORY[0x1E695D9B8]];
  if ([v8 isEqualToString:*MEMORY[0x1E695D9C8]])
  {
    if (preferred)
    {
      *preferred = 3;
    }

    if (fallback)
    {
      v7 = 1;
LABEL_15:
      *fallback = v7;
    }
  }

  else if ([v8 isEqualToString:*MEMORY[0x1E695D9C0]])
  {
    if (preferred)
    {
      *preferred = 1;
    }

    if (fallback)
    {
      v7 = 2;
      goto LABEL_15;
    }
  }

  MEMORY[0x1EEE66BB8]();
}

+ (CalculateResult)resultWithResultTree:(TreeObject *)tree parseTree:(TreeObject *)parseTree locales:(id)locales numberFormatter:(id)formatter unitsInfo:(id)info unitType:(int)type unitExponent:(int)exponent expression:(id)self0 isTrivial:(BOOL)self1 isPartialExpression:(BOOL)self2 variableLookups:(id)self3 variableResultTrees:(TreeObject *)self4 variableResultTreesCount:(int)self5 resolvedUnitFormats:(id *)self6 forceResult:(BOOL)self7 assumeDegrees:(BOOL)self8 localizeUnit:(BOOL)self9 unitFormat:(unint64_t)format matchLocale:(BOOL)locale numberingSystem:(id)system autoScientificNotation:(BOOL)notation scientificNotationFormat:(unint64_t)notationFormat flexibleFractionDigits:(BOOL)digits isSimpleVerticalMath:(BOOL)math minimumFractionDigits:(int)fractionDigits hasStaleCurrencyData:(BOOL)data
{
  v80[1] = *MEMORY[0x1E69E9840];
  localesCopy = locales;
  formatterCopy = formatter;
  obj = info;
  infoCopy = info;
  expressionCopy = expression;
  lookupsCopy = lookups;
  systemCopy = system;
  var0 = tree->var0;
  if (tree->var0 == 1)
  {
    if (my_rnd_mode)
    {
      v36 = 4;
    }

    else
    {
      v36 = 0;
    }

    v34 = __binary64_to_bid128(v36, my_fpsf, tree->var4);
  }

  else if (var0 == 2)
  {
    v34 = tree->var5.var0[1];
    var6 = tree->var6;
  }

  else
  {
    if (var0 == 4)
    {
      v34 = tree->var7[0];
    }

    else
    {
      v34 = 0;
    }

    var6 = 0x3040000000000000;
  }

  v71 = var6;
  v72 = v34;
  var6 = [CalculateResult decimalNumberWithDecimal128:v34, var6];
  if (!result)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v38 = [var6 isEqual:notANumber];

    if (v38)
    {
      v39 = 0;
      v40 = var6;
      goto LABEL_39;
    }
  }

  v39 = objc_opt_new();
  objc_storeStrong((v39 + 56), locales);
  objc_storeStrong((v39 + 48), formatter);
  *(v39 + 120) = parseTree;
  *(v39 + 128) = tree;
  objc_storeStrong((v39 + 40), expression);
  *(v39 + 12) = trivial;
  *(v39 + 13) = partialExpression;
  *(v39 + 11) = degrees;
  *(v39 + 16) = unit;
  *(v39 + 72) = format;
  *(v39 + 9) = locale;
  objc_storeStrong((v39 + 168), system);
  *(v39 + 8) = notation;
  *(v39 + 64) = notationFormat;
  *(v39 + 10) = digits;
  *(v39 + 17) = math;
  *(v39 + 20) = fractionDigits;
  *(v39 + 14) = data;
  objc_storeStrong((v39 + 136), obj);
  if (infoCopy)
  {
    typeCopy2 = type;
    v42 = [infoCopy infoForUnitType:type];
  }

  else
  {
    v42 = 0;
    typeCopy2 = type;
  }

  v43 = *(v39 + 144);
  *(v39 + 144) = v42;

  v44 = 0;
  v45 = 0;
  v46 = 0;
  p_exponent = &tree->var7[1].exponent;
  while (1)
  {
    v48 = *p_exponent;
    p_exponent += 2;
    if (v48)
    {
      break;
    }

LABEL_22:
    if (++v44 == 16)
    {
      goto LABEL_25;
    }
  }

  if (v46 <= 0)
  {
    v46 = 1;
    v45 = v44;
    goto LABEL_22;
  }

  v45 = 0;
LABEL_25:
  if (typeCopy2 < 1)
  {
    unitID = 0;
  }

  else
  {
    unitID = tree->var7[v45 + 1].unitID;
  }

  *(v39 + 28) = unitID;
  objc_storeStrong((v39 + 152), lookups);
  *(v39 + 160) = trees;
  *(v39 + 32) = count;
  *(v39 + 176) = *formats->var0;
  v50 = *&formats->var0[2];
  v51 = *&formats->var0[4];
  v52 = *&formats->var0[8];
  *(v39 + 224) = *&formats->var0[6];
  *(v39 + 240) = v52;
  *(v39 + 192) = v50;
  *(v39 + 208) = v51;
  v53 = *&formats->var0[10];
  v54 = *&formats->var0[12];
  v55 = *&formats->var0[14];
  *(v39 + 304) = formats->var0[16];
  *(v39 + 272) = v54;
  *(v39 + 288) = v55;
  *(v39 + 256) = v53;
  v56 = objc_opt_new();
  v57 = &tree->var7[1].exponent;
  v58 = 16;
  v40 = var6;
  do
  {
    if (*v57)
    {
      v59 = [CalculateUnit unitWithID:*(v57 - 1) unitsInfo:infoCopy exponent:?];
      [v56 addObject:v59];
    }

    v57 += 2;
    --v58;
  }

  while (v58);
  v60 = [v56 copy];
  v61 = [CalculateTerm termWithValue:var6 units:v60 result:v39];

  [v61 setDecimalValue:{v72, v71}];
  v80[0] = v61;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
  v63 = *(v39 + 88);
  *(v39 + 88) = v62;

  if ([v56 count])
  {
    v64 = [infoCopy infoForUnitType:typeCopy2];
    name = [v64 name];
    v66 = [&unk_1F419A730 objectForKeyedSubscript:name];

    if (v66)
    {
      intValue = [v66 intValue];
    }

    else
    {
      intValue = 1;
    }

    *(v39 + 80) = intValue;
    *(v39 + 24) = exponent;
  }

  else
  {
    *(v39 + 80) = 0;
    *(v39 + 24) = 0;
  }

LABEL_39:

  return v39;
}

+ (id)decimalNumberWithDecimal128:(id)decimal128
{
  v8 = *MEMORY[0x1E69E9840];
  __bid128_to_string(v7, decimal128.var0[0], decimal128.var0[1]);
  v3 = MEMORY[0x1E696AB90];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  v5 = [v3 decimalNumberWithString:v4];

  return v5;
}

+ (id)defaultNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (defaultNumberFormatter__onceToken != -1)
  {
    dispatch_once(&defaultNumberFormatter__onceToken, &__block_literal_global_663);
  }

  v4 = MEMORY[0x1E696AEC0];
  localeIdentifier = [formatterCopy localeIdentifier];
  groupingSeparator = [formatterCopy groupingSeparator];
  decimalSeparator = [formatterCopy decimalSeparator];
  v8 = [v4 stringWithFormat:@"%@%@%@", localeIdentifier, groupingSeparator, decimalSeparator];

  v9 = [defaultNumberFormatter__numberFormatters objectForKey:v8];
  if (!v9)
  {
    v9 = objc_opt_new();
    [v9 setUsesGroupingSeparator:1];
    [v9 setMaximumIntegerDigits:10];
    [v9 setMaximumFractionDigits:3];
    [v9 setNumberStyle:1];
    [v9 setRoundingMode:6];
    [v9 setLocale:formatterCopy];
    [defaultNumberFormatter__numberFormatters setObject:v9 forKey:v8];
  }

  return v9;
}

uint64_t __42__CalculateResult_defaultNumberFormatter___block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultNumberFormatter__numberFormatters;
  defaultNumberFormatter__numberFormatters = v0;

  v2 = defaultNumberFormatter__numberFormatters;

  return [v2 setCountLimit:20];
}

@end