@interface _ATXScoreInterpreter
+ (id)_bytecodeInstructionForOp:(void *)op unsignedIntegerArgument:(void *)argument doubleArgument:;
+ (uint64_t)operatorFromFunctionName:(uint64_t)name;
+ (void)_expectedArity:(uint64_t)arity;
- (NSSet)subscoreNames;
- (_ATXScoreInterpreter)initWithParseRoot:(id)root;
- (double)_evalVariable:(void *)variable withCtx:;
- (id)_compileToBytecode:(id *)bytecode;
- (id)evaluateWithInputScoreDict:(id)dict intentType:(id)type;
- (id)evaluateWithInputScores:(id)scores intentType:(id)type;
- (id)retainBytecodeDependencyObject:(id *)object;
- (void)_compileBytecode:(uint64_t)bytecode;
- (void)_runBytecode:(void *)bytecode context:;
- (void)_runOperator:(unint64_t)operator arity:(void *)arity context:;
@end

@implementation _ATXScoreInterpreter

- (NSSet)subscoreNames
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  allKeys = [(NSDictionary *)self->_bytecode allKeys];
  v5 = [v3 initWithArray:allKeys];

  return v5;
}

- (_ATXScoreInterpreter)initWithParseRoot:(id)root
{
  rootCopy = root;
  v9.receiver = self;
  v9.super_class = _ATXScoreInterpreter;
  v5 = [(_ATXScoreInterpreter *)&v9 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    bytecodeDependencies = v5->_bytecodeDependencies;
    v5->_bytecodeDependencies = array;

    [(_ATXScoreInterpreter *)v5 _compileBytecode:rootCopy];
  }

  return v5;
}

+ (uint64_t)operatorFromFunctionName:(uint64_t)name
{
  v2 = a2;
  objc_opt_self();
  v3 = [&unk_283A58DD0 objectForKeyedSubscript:v2];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

+ (void)_expectedArity:(uint64_t)arity
{
  v3 = objc_opt_self();
  if ((a2 + 1) >= 0x14)
  {
    v4 = __atxlog_handle_default(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[_ATXScoreInterpreter _expectedArity:];
    }

    __break(1u);
  }
}

- (void)_runOperator:(unint64_t)operator arity:(void *)arity context:
{
  v88 = *MEMORY[0x277D85DE8];
  arityCopy = arity;
  v8 = arityCopy;
  if (self)
  {
    switch(a2)
    {
      case 0:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) != 0)
        {
          [_ATXScoreInterpreter _runOperator:operator arity:v8 context:?];
        }

        break;
      case 1:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) != 0)
        {
          [_ATXScoreInterpreter _runOperator:operator arity:v8 context:?];
        }

        break;
      case 2:
        [_ATXScoreInterpreter _runOperator:arity:context:];
        break;
      case 3:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) == 0)
        {
          break;
        }

        v34 = &v8[v8[1] - operator];
        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        drop(v8, operator);
        if (v36 <= 0.0)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        if (v35 <= 0.0)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        if (v36 <= 0.0)
        {
          v38 = __atxlog_handle_default(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [_ATXScoreInterpreter _runOperator:arity:context:];
          }
        }

        else
        {
          if (v35 > 0.0)
          {
            goto LABEL_97;
          }

          v38 = __atxlog_handle_default(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [_ATXScoreInterpreter _runOperator:arity:context:];
          }
        }

LABEL_97:
        v64 = log10(v36);
        v9 = v64 / log10(v35);
        goto LABEL_12;
      case 4:
        if (([(_ATXScoreInterpreter *)arityCopy _runOperator:operator arity:&v77 context:buf]& 1) == 0)
        {
          [_ATXScoreInterpreter _runOperator:v8 arity:? context:?];
        }

        break;
      case 5:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) == 0)
        {
          break;
        }

        v39 = *&v8[v8[1] - operator + 2];
        drop(v8, operator);
        if (v39 <= 0.0)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
          v41 = __atxlog_handle_default(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [_ATXScoreInterpreter _runOperator:arity:context:];
          }
        }

        v9 = log(v39);
        goto LABEL_12;
      case 6:
        if (shouldReturnUndefined(arityCopy, 2uLL))
        {
          drop(v8, operator);
          goto LABEL_5;
        }

        v10 = &v8[v8[1] - operator];
        v11 = *(v10 + 2);
        v12 = *(v10 + 3);
        drop(v8, operator);
        if (v11 <= 0.0 && (v11 != 0.0 || v12 <= 0.0) && v12 != v12)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        v9 = pow(v11, v12);
        goto LABEL_12;
      case 8:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) == 0)
        {
          break;
        }

        v42 = &v8[v8[1] - operator];
        v44 = v42[2];
        v43 = v42[3];
        v25 = v42[4];
        drop(v8, operator);
        if (v44 < 0.0)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        if (v43 <= 0.0)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        if (v44 < 0.0)
        {
          v46 = __atxlog_handle_default(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [_ATXScoreInterpreter _runOperator:arity:context:];
          }

          goto LABEL_99;
        }

        if (v43 > 0.0)
        {
LABEL_99:
          v65 = exp(v44 * (-0.693147181 / v43));
          goto LABEL_106;
        }

        v28 = __atxlog_handle_default(v45);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

LABEL_109:

LABEL_5:
        v9 = -31337.0;
LABEL_12:
        v13 = v8;
LABEL_13:
        push(v13, v9);
        break;
      case 9:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) == 0)
        {
          break;
        }

        v23 = &v8[v8[1] - operator];
        v24 = v23[2];
        v25 = v23[3];
        v26 = v23[4];
        drop(v8, operator);
        if (v26 == 1.0)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        if (v26 < 0.0)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        if (v26 == 1.0)
        {
          v28 = __atxlog_handle_default(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [_ATXScoreInterpreter _runOperator:v28 arity:? context:?];
          }

          goto LABEL_109;
        }

        if (v26 < 0.0 && v24 != v24)
        {
          v66 = __atxlog_handle_default(v27);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            [(_ATXScoreInterpreter *)v66 _runOperator:v26 arity:v24 context:v67, v68];
          }
        }

        v65 = (1.0 - pow(v26, v24)) / (1.0 - v26);
LABEL_106:
        v9 = v25 * v65;
        goto LABEL_12;
      case 10:
        [_ATXScoreInterpreter _runOperator:arity:context:];
        break;
      case 12:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) == 0)
        {
          break;
        }

        v14 = &v8[v8[1] - operator];
        v16 = v14[2];
        v15 = v14[3];
        v18 = v14[4];
        v17 = v14[5];
        drop(v8, operator);
        if (v15 > v17)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        if (v17 > v18)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        v20 = v16;
        if (v16 < v15)
        {
          v20 = v15;
        }

        if (v20 >= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        if (v21 != v16)
        {
          v22 = __atxlog_handle_default(v19);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134219008;
            *&buf[4] = v16;
            v80 = 2048;
            v81 = v15;
            v82 = 2048;
            v83 = v18;
            v84 = 2048;
            v85 = v17;
            v86 = 2048;
            v87 = v21;
            _os_log_debug_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEBUG, "ClampToRange(input=%f, min=%f, max=%f, default=%f): input coerced to %f", buf, 0x34u);
          }
        }

        v13 = v8;
        v9 = v21;
        goto LABEL_13;
      case 13:
        [_ATXScoreInterpreter _runOperator:arityCopy arity:? context:?];
        break;
      case 14:
        [_ATXScoreInterpreter _runOperator:arity:context:];
        break;
      case 15:
        [_ATXScoreInterpreter _runOperator:arityCopy arity:operator context:self];
        break;
      case 16:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) == 0)
        {
          break;
        }

        v29 = [*(self + 16) objectAtIndexedSubscript:*&v8[v8[1] - operator + 2]];
        if ([v29 hasOutputIndexedSubscript])
        {
          v30 = pop(v8);
        }

        else
        {
          v30 = -1;
        }

        v72 = v30;
        v47 = objc_opt_new();
        numberOfFeatures = [v29 numberOfFeatures];
        if (!numberOfFeatures)
        {
          goto LABEL_93;
        }

        v49 = numberOfFeatures;
        v50 = 0;
        v73 = v29;
        v74 = v47;
        while (2)
        {
          v51 = [v29 featureAtIndex:v49 + ~v50];
          featureName = [v51 featureName];
          if ([v51 featureType] == 2)
          {
            v53 = [MEMORY[0x277CCABB0] numberWithDouble:pop(v8)];
            goto LABEL_92;
          }

          featureType = [v51 featureType];
          if (featureType == 5)
          {
            v75 = featureName;
            multiArraySize = [v51 multiArraySize];
            v56 = objc_alloc(MEMORY[0x277CBFF48]);
            v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:multiArraySize];
            v78 = v57;
            v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
            v76 = 0;
            v53 = [v56 initWithShape:v58 dataType:65600 error:&v76];
            v59 = v76;

            if (!v59)
            {
              if (multiArraySize)
              {
                v61 = multiArraySize - 1;
                do
                {
                  v62 = [MEMORY[0x277CCABB0] numberWithDouble:pop(v8)];
                  [v53 setObject:v62 atIndexedSubscript:v61];

                  --v61;
                }

                while (v61 != -1);
              }

              v29 = v73;
              v47 = v74;
              featureName = v75;
LABEL_92:
              [v47 setObject:v53 forKeyedSubscript:featureName];

              if (++v50 == v49)
              {
LABEL_93:
                drop(v8, 1uLL);
                [v29 predictionForEvaluatedFeatures:v47 withOutputIndexedSubscript:v72];
                push(v8, v63);
                goto LABEL_117;
              }

              continue;
            }

            v70 = __atxlog_handle_default(v60);
            featureName = v75;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              [_ATXScoreInterpreter _runOperator:arity:context:];
            }

            push(v8, -31337.0);
            v29 = v73;
            v47 = v74;
          }

          else
          {
            v69 = __atxlog_handle_default(featureType);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              [_ATXScoreInterpreter _runOperator:arity:context:];
            }

            push(v8, -31337.0);
          }

          break;
        }

LABEL_117:
        break;
      case 17:
        [_ATXScoreInterpreter _runOperator:arity:context:];
        break;
      case 18:
        if (([_ATXScoreInterpreter _runOperator:arity:context:]& 1) == 0)
        {
          break;
        }

        v31 = &v8[v8[1] - operator];
        v32 = v31[2];
        v33 = v31[3];
        drop(v8, operator);
        if (v32 > v33)
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        v9 = v32 + (v33 - v32) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0);
        goto LABEL_12;
      default:
        v71 = __atxlog_handle_default(arityCopy);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          [_ATXScoreInterpreter _runOperator:arity:context:];
        }

        __break(1u);
        return;
    }
  }
}

- (void)_runBytecode:(void *)bytecode context:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  bytecodeCopy = bytecode;
  if (self)
  {
    bytes = [v5 bytes];
    v8 = [v5 length];
    if (v8 >= 1)
    {
      v9 = bytes + v8;
      v10 = (bytes + 1);
      v11 = 2;
      do
      {
        v12 = *bytes;
        if (*bytes > 0xFCu)
        {
          switch(v12)
          {
            case 0xFD:
              v19 = pop(bytecodeCopy);
              if (v19 != -31337.0)
              {
                v20 = *&v19 <= -1 || ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
                if (!v20 || (*&v19 - 1) < 0xFFFFFFFFFFFFFLL)
                {
LABEL_38:
                  v16 = (v10 + v11);
                  if (v10 + v11 > v9)
                  {
                    goto LABEL_49;
                  }

                  __memcpy_chk();
LABEL_40:
                  v11 = 2;
LABEL_41:
                  v10 = v16;
                  goto LABEL_42;
                }
              }

              break;
            case 0xFE:
              v22 = pop(bytecodeCopy);
              if (v22 == -31337.0 || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_38;
              }

              push(bytecodeCopy, v22);
              break;
            case 0xFF:
              break;
            default:
LABEL_13:
              [_ATXScoreInterpreter _expectedArity:?];
              if (v13 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v14 = (v10 + v11);
                if (v10 + v11 > v9)
                {
                  goto LABEL_49;
                }

                __memcpy_chk();
                v15 = 0;
                v11 = 2;
                v10 = v14;
              }

              else
              {
                v15 = v13;
              }

              v23 = bytecodeCopy[1];
              [(_ATXScoreInterpreter *)self _runOperator:v12 arity:v15 context:bytecodeCopy];
              if (bytecodeCopy[1] > v23)
              {
                v25 = __atxlog_handle_default(v24);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
                {
                  v26 = (bytecodeCopy[1] - v23);
                  *buf = 134217984;
                  v28 = v26;
                  _os_log_fault_impl(&dword_2263AA000, v25, OS_LOG_TYPE_FAULT, "Stack size after op > old stack size! This is an issue. Diff = %lu", buf, 0xCu);
                }
              }

              goto LABEL_42;
          }

          if (v10 + v11 > v9)
          {
            break;
          }

          __memcpy_chk();
          v10 = (v10 + v11);
          if (v10 >= v9)
          {
            break;
          }

          v11 = 2;
        }

        else
        {
          if (v12 == 201)
          {
            v16 = (v10 + v11);
            if (v10 + v11 > v9)
            {
              break;
            }

            __memcpy_chk();
            v17 = [*(self + 16) objectAtIndexedSubscript:0];
            buf[0] = 0;
            [bytecodeCopy[502] scoreForKey:v17 found:buf];
            if ((buf[0] & 1) == 0)
            {
              [bytecodeCopy[503] scoreForKey:v17 found:buf];
              if ((buf[0] & 1) == 0)
              {
                v18 = [(_ATXScoreInterpreter *)self _evalVariable:v17 withCtx:bytecodeCopy];
              }
            }

            push(bytecodeCopy, v18);

            goto LABEL_40;
          }

          if (v12 == 202)
          {
            v16 = (bytes + 9);
            if (bytes + 9 > v9)
            {
              break;
            }

            push(bytecodeCopy, *v10);
            goto LABEL_41;
          }

          if (v12 != 252)
          {
            goto LABEL_13;
          }

          if (v11 != 2)
          {
            [_ATXScoreInterpreter _runBytecode:context:];
          }

          v11 = 4;
        }

LABEL_42:
        bytes = v10;
        v10 = (v10 + 1);
      }

      while (v10 <= v9);
    }
  }

LABEL_49:
}

- (id)_compileToBytecode:(id *)bytecode
{
  v3 = a2;
  if (bytecode)
  {
    v4 = objc_autoreleasePoolPush();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      data = [_ATXScoreInterpreter _bytecodeInstructionForOp:0 unsignedIntegerArgument:v3 doubleArgument:?];
LABEL_16:
      v15 = data;
LABEL_42:
      objc_autoreleasePoolPop(v4);
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_ATXScoreInterpreter *)bytecode _compileToBytecode:v3, &v62];
      v15 = v62;
      goto LABEL_42;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      data = [MEMORY[0x277CBEA90] data];
      goto LABEL_16;
    }

    if ([v3 count] != 1)
    {
      [_ATXScoreInterpreter _compileToBytecode:v3];
    }

    v50 = v4;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__14;
    v66 = __Block_byref_object_dispose__14;
    v67 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__14;
    v60 = __Block_byref_object_dispose__14;
    v61 = 0;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __43___ATXScoreInterpreter__compileToBytecode___block_invoke;
    v55[3] = &unk_278598A28;
    v55[4] = &v62;
    v55[5] = &v56;
    [v3 enumerateKeysAndObjectsUsingBlock:v55];
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x3032000000;
    v53[3] = __Block_byref_object_copy__14;
    v53[4] = __Block_byref_object_dispose__14;
    v54 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __43___ATXScoreInterpreter__compileToBytecode___block_invoke_2;
    aBlock[3] = &unk_278598A50;
    aBlock[4] = v53;
    aBlock[5] = &v56;
    v6 = _Block_copy(aBlock);
    v7 = [_ATXScoreInterpreter operatorFromFunctionName:?];
    v8 = v7;
    v51 = v6;
    if (v7 > 14)
    {
      switch(v7)
      {
        case 15:
          if ([v57[5] count] <= 1)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:sel__compileToBytecode_ object:bytecode file:@"_ATXScoreInterpreter.m" lineNumber:890 description:{@"Invalid parameter not satisfying: %@", @"argArray.count >= 2"}];
          }

          v22 = [_ATXNeuralNetwork alloc];
          v23 = [v57[5] objectAtIndexedSubscript:0];
          v10 = [(_ATXNeuralNetwork *)v22 initWithData:v23];

          v12 = [(_ATXScoreInterpreter *)bytecode retainBytecodeDependencyObject:v10];
          v14 = v6[2]();
          [v14 setObject:v12 atIndexedSubscript:0];
          break;
        case 16:
          v10 = [v57[5] objectAtIndexedSubscript:0];
          v12 = [v57[5] objectAtIndexedSubscript:1];
          v24 = v6;
          v14 = [v57[5] objectAtIndexedSubscript:2];
          v25 = [[_ATXScoreInterpreterCoreMLModel alloc] initWithModelName:v10 features:v12 outputSpecification:v14];
          v26 = [(_ATXScoreInterpreterCoreMLModel *)v25 getArgumentsToEvaluateByInitializingInstanceVariablesFromFeatures:v12 outputSpecification:v14];
          v27 = v57[5];
          v57[5] = v26;

          v28 = (v24[2])(v24);
          v29 = [(_ATXScoreInterpreter *)bytecode retainBytecodeDependencyObject:v25];
          [v28 insertObject:v29 atIndex:0];

          v8 = 16;
          break;
        case 17:
          if ([v57[5] count] <= 1)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:sel__compileToBytecode_ object:bytecode file:@"_ATXScoreInterpreter.m" lineNumber:880 description:{@"Invalid parameter not satisfying: %@", @"argArray.count >= 2"}];
          }

          v9 = objc_alloc(MEMORY[0x277CBEB98]);
          v10 = [v9 initWithArray:v57[5]];
          v11 = MEMORY[0x277CBEA60];
          v12 = [(_ATXScoreInterpreter *)bytecode retainBytecodeDependencyObject:v10];
          v13 = [v11 arrayWithObject:v12];
          v14 = v57[5];
          v57[5] = v13;
          break;
        default:
          goto LABEL_27;
      }

LABEL_27:
      [_ATXScoreInterpreter _expectedArity:v8];
      v31 = v30;
      if (v30 != 0x7FFFFFFFFFFFFFFFLL && [v57[5] count] != v30)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:sel__compileToBytecode_ object:bytecode file:@"_ATXScoreInterpreter.m" lineNumber:922 description:{@"expected argArray.count (%tu) == expected count (%tu) for operator %hu", objc_msgSend(v57[5], "count"), v31, v8}];
      }

      v15 = objc_opt_new();
      for (i = 0; i < [v57[5] count]; ++i)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = [v57[5] objectAtIndexedSubscript:i];
        v35 = [(_ATXScoreInterpreter *)bytecode _compileToBytecode:v34];
        [v15 appendData:v35];

        objc_autoreleasePoolPop(v33);
      }

      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v51;
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v57[5], "count")}];
        v17 = [_ATXScoreInterpreter _bytecodeInstructionForOp:v8 unsignedIntegerArgument:v36 doubleArgument:0];
      }

      else
      {
        [_ATXScoreInterpreter _bytecodeInstructionForOp:v8 unsignedIntegerArgument:0 doubleArgument:0];
        v17 = v6 = v51;
      }

      [v15 appendData:v17];
      goto LABEL_41;
    }

    if (v7 == 7)
    {
      if ([v57[5] count] != 3)
      {
        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler4 handleFailureInMethod:sel__compileToBytecode_ object:bytecode file:@"_ATXScoreInterpreter.m" lineNumber:834 description:{@"Invalid parameter not satisfying: %@", @"argArray.count == 3"}];
      }

      v37 = [v57[5] objectAtIndexedSubscript:1];
      v17 = [(_ATXScoreInterpreter *)bytecode _compileToBytecode:v37];

      v38 = [v57[5] objectAtIndexedSubscript:2];
      v19 = [(_ATXScoreInterpreter *)bytecode _compileToBytecode:v38];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "length")}];
      v21 = [_ATXScoreInterpreter _bytecodeInstructionForOp:v39 unsignedIntegerArgument:0 doubleArgument:?];

      v40 = [v57[5] objectAtIndexedSubscript:0];
      v41 = [(_ATXScoreInterpreter *)bytecode _compileToBytecode:v40];

      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "length") + objc_msgSend(v17, "length")}];
      v43 = [_ATXScoreInterpreter _bytecodeInstructionForOp:v42 unsignedIntegerArgument:0 doubleArgument:?];

      v15 = [v41 mutableCopy];
      [v15 appendData:v43];
      [v15 appendData:v17];
      [v15 appendData:v21];
      [v15 appendData:v19];

      v6 = v51;
    }

    else
    {
      if (v7 != 11)
      {
        goto LABEL_27;
      }

      if ([v57[5] count] != 2)
      {
        currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler5 handleFailureInMethod:sel__compileToBytecode_ object:bytecode file:@"_ATXScoreInterpreter.m" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"argArray.count == 2"}];
      }

      v16 = [v57[5] objectAtIndexedSubscript:1];
      v17 = [(_ATXScoreInterpreter *)bytecode _compileToBytecode:v16];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "length")}];
      v19 = [_ATXScoreInterpreter _bytecodeInstructionForOp:v18 unsignedIntegerArgument:0 doubleArgument:?];

      v20 = [v57[5] objectAtIndexedSubscript:0];
      v21 = [(_ATXScoreInterpreter *)bytecode _compileToBytecode:v20];

      v15 = [v21 mutableCopy];
      [v15 appendData:v19];
      [v15 appendData:v17];
    }

LABEL_41:
    _Block_object_dispose(v53, 8);

    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v62, 8);

    v4 = v50;
    goto LABEL_42;
  }

  v15 = 0;
LABEL_43:

  return v15;
}

+ (id)_bytecodeInstructionForOp:(void *)op unsignedIntegerArgument:(void *)argument doubleArgument:
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = a2;
  opCopy = op;
  argumentCopy = argument;
  objc_opt_self();
  if (opCopy && argumentCopy)
  {
    +[_ATXScoreInterpreter _bytecodeInstructionForOp:unsignedIntegerArgument:doubleArgument:];
  }

  if (opCopy | argumentCopy)
  {
    if (opCopy)
    {
      unsignedIntValue = [opCopy unsignedIntValue];
      if (HIWORD(unsignedIntValue))
      {
        v16 = -4;
        LOBYTE(v17) = a2;
        *(&v17 + 1) = unsignedIntValue;
        v8 = objc_alloc(MEMORY[0x277CBEA90]);
        v9 = &v16;
        v10 = 6;
      }

      else
      {
        v16 = a2;
        LOWORD(v17) = unsignedIntValue;
        v8 = objc_alloc(MEMORY[0x277CBEA90]);
        v9 = &v16;
        v10 = 3;
      }
    }

    else
    {
      v16 = a2;
      [argumentCopy doubleValue];
      v17 = v12;
      v8 = objc_alloc(MEMORY[0x277CBEA90]);
      v9 = &v16;
      v10 = 9;
    }
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CBEA90]);
    v9 = &v15;
    v10 = 1;
  }

  v13 = [v8 initWithBytes:v9 length:v10];

  return v13;
}

- (id)evaluateWithInputScores:(id)scores intentType:(id)type
{
  v24 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  typeCopy = type;
  v8 = [_ATXScoreInterpreterCtx alloc];
  v9 = [ATXScoreDict scoreDictFromDictionary:scoresCopy];
  v10 = [(_ATXScoreInterpreterCtx *)v8 initWithInputScores:v9 intentType:typeCopy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_bytecode;
  v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(_ATXScoreInterpreter *)self _evalVariable:v10 withCtx:?];
      }

      v13 = [(NSDictionary *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16, v16];
    }

    while (v13);
  }

  toDictionary = [v10[503] toDictionary];

  return toDictionary;
}

- (id)evaluateWithInputScoreDict:(id)dict intentType:(id)type
{
  v23 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  typeCopy = type;
  v8 = [[_ATXScoreInterpreterCtx alloc] initWithInputScores:dictCopy intentType:typeCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_bytecode;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(_ATXScoreInterpreter *)self _evalVariable:v8 withCtx:?];
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16, v14];
    }

    while (v11);
  }

  subscores = v8->subscores;
  v16 = subscores;

  return subscores;
}

- (void)_compileBytecode:(uint64_t)bytecode
{
  if (bytecode)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = a2;
    v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41___ATXScoreInterpreter__compileBytecode___block_invoke;
    v9[3] = &unk_278598A78;
    v9[4] = bytecode;
    v6 = v5;
    v10 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];

    v7 = *(bytecode + 8);
    *(bytecode + 8) = v6;
    v8 = v6;
  }
}

- (double)_evalVariable:(void *)variable withCtx:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  variableCopy = variable;
  if (self)
  {
    if (!v5)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _evalVariable:withCtx:]"];
      [currentHandler handleFailureInFunction:v14 file:@"_ATXScoreInterpreter.m" lineNumber:1040 description:{@"Invalid parameter not satisfying: %@", @"varName"}];
    }

    v7 = [*(self + 8) objectForKeyedSubscript:v5];
    [(_ATXScoreInterpreter *)self _runBytecode:v7 context:variableCopy];

    v9 = pop(variableCopy);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v10 = __atxlog_handle_default(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412546;
        v16 = v5;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_12(&dword_2263AA000, v10, v12, "Score for variable %@ returned Nan or Inf: %f", &v15);
      }
    }

    [variableCopy[503] setScore:v5 forKey:v9];
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (id)retainBytecodeDependencyObject:(id *)object
{
  if (object)
  {
    objectCopy = object;
    [object[2] addObject:a2];
    object = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objectCopy[2], "count") - 1}];
    v2 = vars8;
  }

  return object;
}

- (void)_runOperator:arity:context:.cold.3()
{
  OUTLINED_FUNCTION_9();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_7(v0 v1];
}

- (void)_runOperator:arity:context:.cold.4()
{
  OUTLINED_FUNCTION_9();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_7(v0 v1];
}

- (void)_runOperator:arity:context:.cold.5()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

- (void)_runOperator:arity:context:.cold.6()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

- (void)_runOperator:(double)a3 arity:(uint64_t)a4 context:(uint64_t)a5 .cold.7(NSObject *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = a2;
  v7 = 2048;
  v8 = a3;
  OUTLINED_FUNCTION_12(&dword_2263AA000, a1, a5, "Attempted to compute GeometricSum with ratio of %f and terms of %f -- result will be NaN", &v5);
}

- (void)_runOperator:arity:context:.cold.9()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

- (void)_runOperator:arity:context:.cold.10()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

- (void)_runOperator:arity:context:.cold.13()
{
  OUTLINED_FUNCTION_9();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_7(v0 v1];
}

- (void)_runOperator:arity:context:.cold.14()
{
  OUTLINED_FUNCTION_9();
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [v2 handleFailureInFunction:v3 file:@"_ATXScoreInterpreter.m" lineNumber:450 description:@"Attempted to compute pow(%f, %f)", v1, v0];

  v5 = __atxlog_handle_default(v4);
  if (OUTLINED_FUNCTION_10(v5))
  {
    v7 = 134218240;
    v8 = v1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12(&dword_2263AA000, v2, v6, "Attempted to compute pow(%f,%f) -- output is NaN", &v7);
  }
}

- (void)_runOperator:arity:context:.cold.15()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

- (void)_runOperator:(void *)a1 arity:context:.cold.17(void *a1)
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [v3 handleFailureInFunction:v4 file:@"_ATXScoreInterpreter.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"denominator != 0"}];

  v6 = __atxlog_handle_default(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 134218240;
    v9 = v1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12(&dword_2263AA000, v6, v7, "Divide by zero error (%f / %f) -- setting output to _ATXScoreNotSet", &v8);
  }

  push(a1, -31337.0);
}

- (void)_runOperator:arity:context:.cold.18()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

- (void)_runOperator:arity:context:.cold.19()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _runOperator:arity:context:]"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

- (void)_runOperator:(uint64_t)a1 arity:(void *)a2 context:.cold.23(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 0.0;
    do
    {
      v4 = v4 + pop(a2);
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0.0;
  }

  push(a2, v4);
}

- (void)_runOperator:(uint64_t)a1 arity:(void *)a2 context:.cold.24(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1.0;
    do
    {
      v4 = v4 * pop(a2);
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 1.0;
  }

  push(a2, v4);
}

- (void)_runOperator:(void *)a1 arity:context:.cold.25(void *a1)
{
  v2 = pop(a1);
  v3 = pop(a1);
  v4 = v2 != -31337.0 && (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v5 = 1.0;
  if (v4)
  {
    v5 = v2;
  }

  if (v3 >= 0.0)
  {
    v6 = v3 * v5;
  }

  else
  {
    v6 = v3 / fmax(v5, 0.0000001);
  }

  push(a1, v6);
}

- (void)_runOperator:arity:context:.cold.26()
{
  OUTLINED_FUNCTION_1_7();
  v3 = [*(v1 + 16) objectAtIndexedSubscript:pop(v2)];
  v5 = v3;
  if (v0[504])
  {
    v4 = [v3 containsObject:?];
  }

  else
  {
    v4 = 0.0;
  }

  push(v0, v4);
}

- (uint64_t)_runOperator:arity:context:.cold.27()
{
  OUTLINED_FUNCTION_1_7();
  if (!shouldReturnUndefined(v1, v2))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_3();
  push(v0, -31337.0);
  return 0;
}

- (void)_runOperator:arity:context:.cold.29()
{
  OUTLINED_FUNCTION_1_7();
  if (shouldReturnUndefined(v1, 2uLL))
  {
    OUTLINED_FUNCTION_4_3();
    v2 = -31337.0;
  }

  else
  {
    OUTLINED_FUNCTION_5();
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    OUTLINED_FUNCTION_4_3();
    v2 = 0.0;
    if (v4 >= v5)
    {
      v2 = 1.0;
    }
  }

  push(v0, v2);
}

- (uint64_t)_runOperator:arity:context:.cold.30()
{
  OUTLINED_FUNCTION_1_7();
  if (!shouldReturnUndefined(v1, 2uLL))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_3();
  push(v0, -31337.0);
  return 0;
}

- (uint64_t)_runOperator:(double *)a3 arity:(double *)a4 context:.cold.31(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  OUTLINED_FUNCTION_1_7();
  if (shouldReturnUndefined(v7, 2uLL))
  {
    OUTLINED_FUNCTION_4_3();
    v8 = -31337.0;
LABEL_5:
    push(v4, v8);
    return 1;
  }

  OUTLINED_FUNCTION_5();
  v10 = *(v9 + 16);
  *a3 = v10;
  v11 = *(v9 + 24);
  *a4 = v11;
  OUTLINED_FUNCTION_4_3();
  if (v11 != 0.0)
  {
    v8 = v10 / v11;
    goto LABEL_5;
  }

  return 0;
}

- (uint64_t)_runOperator:arity:context:.cold.32()
{
  OUTLINED_FUNCTION_1_7();
  v1 = 1;
  if (shouldReturnUndefined(v2, 1uLL))
  {
    OUTLINED_FUNCTION_4_3();
    push(v0, -31337.0);
    return 0;
  }

  return v1;
}

- (uint64_t)_runOperator:arity:context:.cold.33()
{
  OUTLINED_FUNCTION_1_7();
  if (!shouldReturnUndefined(v1, 3uLL))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_3();
  push(v0, -31337.0);
  return 0;
}

- (void)_runOperator:arity:context:.cold.35()
{
  OUTLINED_FUNCTION_1_7();
  if (shouldReturnUndefined(v1, 3uLL))
  {
    OUTLINED_FUNCTION_4_3();
    v2 = -31337.0;
  }

  else
  {
    OUTLINED_FUNCTION_5();
    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[4];
    OUTLINED_FUNCTION_4_3();
    v2 = v5 / (exp(-(v6 * v4)) + 1.0);
  }

  push(v0, v2);
}

- (uint64_t)_runOperator:arity:context:.cold.36()
{
  OUTLINED_FUNCTION_1_7();
  if (!shouldReturnUndefined(v1, 4uLL))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_3();
  push(v0, -31337.0);
  return 0;
}

- (void)_runOperator:arity:context:.cold.37()
{
  OUTLINED_FUNCTION_1_7();
  if (shouldReturnUndefined(v2, v3))
  {
    OUTLINED_FUNCTION_4_3();
    v4 = -31337.0;
  }

  else
  {
    v4 = *&v0[v0[1] - v1 + 3 + *&v0[v0[1] - v1 + 2]];
    OUTLINED_FUNCTION_4_3();
  }

  push(v0, v4);
}

- (void)_runOperator:(uint64_t)a1 arity:(uint64_t)a2 context:(uint64_t)a3 .cold.38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_7();
  if (shouldReturnUndefined(v6, v7))
  {
    OUTLINED_FUNCTION_4_3();

    push(v3, -31337.0);
  }

  else
  {
    v10 = [*(a3 + 16) objectAtIndexedSubscript:*&v3[v3[1] - v4 + 2]];
    v8 = (v3[1] - (v4 - 1));
    OUTLINED_FUNCTION_4_3();
    [v10 predict:&v3[v8 + 2]];
    push(v3, v9);
  }
}

- (void)_compileToBytecode:(void *)a1 .cold.1(void *a1)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXScoreInterpreter _compileToBytecode:]"];
  [v3 handleFailureInFunction:v2 file:@"_ATXScoreInterpreter.m" lineNumber:810 description:{@"Dictionary must be of size 1, not %lu", objc_msgSend(a1, "count")}];
}

- (void)_compileToBytecode:(uint64_t *)a3 .cold.2(id *a1, uint64_t a2, uint64_t *a3)
{
  v4 = [(_ATXScoreInterpreter *)a1 retainBytecodeDependencyObject:a2];
  *a3 = [_ATXScoreInterpreter _bytecodeInstructionForOp:v4 unsignedIntegerArgument:0 doubleArgument:?];
}

@end