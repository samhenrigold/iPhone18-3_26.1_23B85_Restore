@interface PPScoreInterpreter
+ (id)scoreInterpreterFromAsset:(id)asset;
+ (id)scoreInterpreterFromFactorName:(id)name namespaceName:(id)namespaceName;
- (PPScoreInterpreter)initWithBytecode:(id)bytecode scoreInputSet:(id)set;
- (PPScoreInterpreter)initWithParseRoot:(id)root scalarSubscoreCount:(unint64_t)count arraySubscoreCount:(unint64_t)subscoreCount objectSubscoreCount:(unint64_t)objectSubscoreCount;
- (id)evaluateWithScoreInputs:(id)inputs;
- (id)evaluateWithScoreInputs:(id)inputs previousSubscores:(id)subscores;
- (void)_runBytecode:(void *)bytecode context:;
- (void)_runOperator:(uint64_t)operator arity:(unint64_t)arity context:(void *)context;
- (void)evaluateScoresWithContext:(uint64_t)context;
- (void)evaluateWithPreviousStageSubscores:(id)subscores scoreInputInitializationBlock:(id)block scoreInputAssignmentBlock:(id)assignmentBlock outputBlock:(id)outputBlock;
@end

@implementation PPScoreInterpreter

- (id)evaluateWithScoreInputs:(id)inputs
{
  v3 = [(PPScoreInterpreter *)self evaluateWithScoreInputs:inputs previousSubscores:0];

  return v3;
}

- (id)evaluateWithScoreInputs:(id)inputs previousSubscores:(id)subscores
{
  v23 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  subscoresCopy = subscores;
  v8 = self->_bytecode->_bytecodeDataBySubscoreTypeAndIndex;
  v9 = [(NSArray *)v8 objectAtIndexedSubscript:0];
  v10 = [v9 count];

  v11 = [(NSArray *)v8 objectAtIndexedSubscript:1];
  v12 = [v11 count];

  v13 = [(NSArray *)v8 objectAtIndexedSubscript:2];
  v14 = [v13 count];

  v15 = [[PPScoreInterpreterCtx alloc] initWithScoreInputs:inputsCopy previousSubscores:subscoresCopy scalarSubscoreCount:v10 arraySubscoreCount:v12 objectSubscoreCount:v14];
  [(PPScoreInterpreter *)self evaluateScoresWithContext:v15];
  if (*(v15[1] + 1) != *v15[1])
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((*(v15[1] + 1) - *v15[1]) >> 3);
      v21 = 134217984;
      v22 = v20;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "%lu items left on score interpreter stack", &v21, 0xCu);
    }
  }

  v17 = v15[4];
  v18 = v17;

  return v17;
}

- (void)evaluateScoresWithContext:(uint64_t)context
{
  v38._subscores = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (context)
  {
    v5 = *(*(context + 8) + 8);
    v7 = *v5;
    v6 = v5[1];
    if (*v5 != v6)
    {
      *&v4 = 67109120;
      v28 = v4;
      do
      {
        v8 = *v7;
        v9 = *(v7 + 1);
        if (v8 == 2)
        {
          v23 = v3;
          v24 = [*(*(context + 8) + 16) objectAtIndexedSubscript:2];
          v25 = [v24 objectAtIndexedSubscript:v9];
          [(PPScoreInterpreter *)context _runBytecode:v25 context:v23];

          memset(&v38, 0, 24);
          pop(&v38, v23);
          v26 = PPScoreInterpreterValue::getObject(&v38);
          [v3[4] setObject:v26 forIndex:v9];
          PPScoreInterpreterValue::PPScoreInterpreterValue(v29, v26);

          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v38);
          v16 = v29;
        }

        else if (v8 == 1)
        {
          v17 = v3;
          v18 = [*(*(context + 8) + 16) objectAtIndexedSubscript:1];
          v19 = [v18 objectAtIndexedSubscript:v9];
          [(PPScoreInterpreter *)context _runBytecode:v19 context:v17];

          memset(&v38, 0, 24);
          pop(&v38, v17);
          *buf = 0;
          *&buf[8] = 0;
          PPScoreInterpreterValue::getFloatVector(buf, &v38);
          v20 = v3[4];
          v22 = *buf;
          v21 = *&buf[8];
          v35 = *buf;
          v36 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
          }

          [v20 setArraySharedPtr:&v35 forIndex:{v9, v28}];
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v30 = v22;
            v31 = v21;
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v32 = 1;
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          else
          {
            v30 = v22;
            v31 = 0;
            v32 = 1;
          }

          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v38);

          v16 = &v30;
        }

        else
        {
          if (*v7)
          {
            v27 = pp_default_log_handle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              v38.super.isa = __PAIR64__(v8, v28);
              _os_log_fault_impl(&dword_23224A000, v27, OS_LOG_TYPE_FAULT, "Invalid subscoreType of %d", &v38, 8u);
            }

            goto LABEL_25;
          }

          v10 = v3;
          v11 = [*(*(context + 8) + 16) objectAtIndexedSubscript:0];
          v12 = [v11 objectAtIndexedSubscript:v9];
          [(PPScoreInterpreter *)context _runBytecode:v12 context:v10];

          memset(&v38, 0, 24);
          pop(&v38, v10);
          Double = PPScoreInterpreterValue::getDouble(&v38);
          v14 = Double;
          if ((*&Double & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v15 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              *&buf[4] = v9;
              *&buf[12] = 2048;
              *&buf[14] = v14;
              _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_INFO, "Score for variable %tu returned Nan or Inf: %f", buf, 0x16u);
            }
          }

          *&Double = v14;
          [v3[4] setScalarValue:v9 forIndex:{Double, v28}];
          v33 = v14;
          v34 = 0;
          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v38);

          v16 = &v33;
        }

        PPScoreInterpreterValue::~PPScoreInterpreterValue(v16);
LABEL_25:
        v7 += 4;
      }

      while (v7 != v6);
    }
  }
}

- (void)_runBytecode:(void *)bytecode context:
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a2;
  bytecodeCopy = bytecode;
  bytes = [v5 bytes];
  v8 = [v5 length];
  __dst = 0;
  if (v8 >= 2)
  {
    v9 = bytes + v8;
    v10 = bytes + 1;
    v11 = 1;
    do
    {
      v12 = *bytes;
      if (*bytes > 0x190u)
      {
        if (*bytes <= 0xFFFAu)
        {
          if (*bytes > 0x192u)
          {
            if (v12 != 403)
            {
              if (v12 != 404)
              {
                goto LABEL_76;
              }

              goto LABEL_36;
            }

            HIDWORD(__dst) = 0;
            v13 = &v10[v11];
            if (&v10[v11] > v9)
            {
              break;
            }

            memcpy(&__dst + 4, v10, v11 * 2);
            v27 = [bytecodeCopy[3] objectForIndex:HIDWORD(__dst)];
            PPScoreInterpreterValue::PPScoreInterpreterValue(v48, v27);
            push(bytecodeCopy, v48);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v48);
          }

          else if (v12 == 401)
          {
            HIDWORD(__dst) = 0;
            v13 = &v10[v11];
            if (&v10[v11] > v9)
            {
              break;
            }

            memcpy(&__dst + 4, v10, v11 * 2);
            v26 = [bytecodeCopy[2] objectForIndex:HIDWORD(__dst)];
            PPScoreInterpreterValue::PPScoreInterpreterValue(v50, v26);
            push(bytecodeCopy, v50);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v50);
          }

          else
          {
            if (v12 != 402)
            {
              goto LABEL_76;
            }

            HIDWORD(__dst) = 0;
            v13 = &v10[v11];
            if (&v10[v11] > v9)
            {
              break;
            }

            memcpy(&__dst + 4, v10, v11 * 2);
            v16 = [bytecodeCopy[4] objectForIndex:HIDWORD(__dst)];
            PPScoreInterpreterValue::PPScoreInterpreterValue(v49, v16);
            push(bytecodeCopy, v49);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v49);
          }
        }

        else
        {
          if (*bytes > 0xFFFCu)
          {
            if (v12 != 65533)
            {
              if (v12 != 65534)
              {
                goto LABEL_95;
              }

              pop(&v78, bytecodeCopy);
              Double = PPScoreInterpreterValue::getDouble(&v78);
              PPScoreInterpreterValue::~PPScoreInterpreterValue(&v78);
              v29 = Double != -31338.0;
              if (Double == -31338.0)
              {
                v30 = -31337.0;
              }

              else
              {
                v30 = Double;
              }

              if ((*&Double & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v29 = 0;
              }

              if (v30 != -31337.0 && !v29)
              {
                *v76 = v30;
                v77 = 0;
                push(bytecodeCopy, v76);
                v31 = v76;
                goto LABEL_94;
              }

LABEL_101:
              v10 = (v10 + v11 * 2);
              if (v10 > v9)
              {
                break;
              }

              goto LABEL_102;
            }

            memset(&v78, 0, 24);
            pop(&v78, bytecodeCopy);
            if (LOBYTE(v78._scoreInputs))
            {
              if (LOBYTE(v78._scoreInputs) != 2)
              {
                v43 = pp_score_interpreter_log_handle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  scoreInputs_low = LOBYTE(v78._scoreInputs);
                  _os_log_error_impl(&dword_23224A000, v43, OS_LOG_TYPE_ERROR, "Attempted to compute IfThenElse with an invalid value type of %d in the if condition", buf, 8u);
                }

                PPScoreInterpreterValue::~PPScoreInterpreterValue(&v78);
                goto LABEL_101;
              }

              v38 = PPScoreInterpreterValue::getObject(&v78);
              v39 = v38 == 0;

              PPScoreInterpreterValue::~PPScoreInterpreterValue(&v78);
              if (v39)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v42 = PPScoreInterpreterValue::getDouble(&v78);
              if (v42 == -31337.0)
              {
                v31 = &v78;
LABEL_94:
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v31);
              }

              else
              {
                v44 = (*&v42 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
                v45 = ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
                if (v42 >= 0.0)
                {
                  v45 = 0;
                  v44 = 0;
                }

                if ((*&v42 & 0x7FFFFFFFFFFFFFFFLL) == 0)
                {
                  v44 = 1;
                }

                v46 = (*&v42 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v44;
                if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
                {
                  v46 = 1;
                }

                v47 = v46 | v45;
                PPScoreInterpreterValue::~PPScoreInterpreterValue(&v78);
                if ((v47 & 1) == 0)
                {
                  goto LABEL_101;
                }
              }
            }

LABEL_95:
            HIDWORD(__dst) = 0;
            if (&v10[v11] > v9)
            {
              break;
            }

            memcpy(&__dst + 4, v10, v11 * 2);
            v10 = (v10 + v11 * 2 + HIDWORD(__dst));
            if (v10 >= v9)
            {
              break;
            }

            goto LABEL_102;
          }

          if (v12 == 65531)
          {
            if (v11 != 1)
            {
              __assert_rtn("[PPScoreInterpreter _runBytecode:context:]", "PPScoreInterpreter.mm", 2025, "nextUIntArgumentSize == sizeof(uint16_t)");
            }

            v11 = 2;
            goto LABEL_103;
          }

          HIDWORD(__dst) = 0;
          v13 = &v10[v11];
          if (&v10[v11] > v9)
          {
            break;
          }

          memcpy(&__dst + 4, v10, v11 * 2);
          v25 = [*(*(self + 8) + 24) objectAtIndexedSubscript:HIDWORD(__dst)];
          PPScoreInterpreterValue::PPScoreInterpreterValue(&v78._previousSubscores, v25);
          push(bytecodeCopy, &v78._previousSubscores);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v78._previousSubscores);
        }

        goto LABEL_90;
      }

      if (*bytes > 0x12Cu)
      {
        if (*bytes > 0x12Eu)
        {
          if (v12 != 303)
          {
            if (v12 != 304)
            {
LABEL_76:
              objc_opt_self();
              if ((0xBE0009uLL >> v12))
              {
                HIDWORD(__dst) = 0;
                v41 = &v10[v11];
                if (&v10[v11] > v9)
                {
                  break;
                }

                memcpy(&__dst + 4, v10, v11 * 2);
                v40 = HIDWORD(__dst);
                v11 = 1;
                v10 = v41;
              }

              else
              {
                v40 = qword_232418600[v12 + 1];
              }

              [PPScoreInterpreter _runOperator:v12 arity:v40 context:bytecodeCopy];
              goto LABEL_103;
            }

LABEL_36:
            LODWORD(__dst) = 0;
            v18 = &v10[v11];
            if (&v10[v11] > v9)
            {
              break;
            }

            memcpy(&__dst, v10, v11 * 2);
            v19 = objc_alloc(MEMORY[0x277CBEB28]);
            v20 = __dst;
            v21 = [v19 initWithLength:__dst];
            v22 = v21;
            v10 = &v18[v20];
            if (&v18[v20] > v9)
            {

              break;
            }

            v23 = v21;
            memcpy([v22 mutableBytes], v18, v20);
            v52[0] = 0;
            v24 = [MEMORY[0x277D425D8] propertyListWithData:v22 error:v52];

            if (!v24)
            {
              __assert_rtn("[PPScoreInterpreter _runBytecode:context:]", "PPScoreInterpreter.mm", 2154, "plpObject");
            }

            PPScoreInterpreterValue::PPScoreInterpreterValue(v51, v24);
            push(bytecodeCopy, v51);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v51);

LABEL_102:
            v11 = 1;
            goto LABEL_103;
          }

          HIDWORD(__dst) = 0;
          v13 = &v10[v11];
          if (&v10[v11] > v9)
          {
            break;
          }

          memcpy(&__dst + 4, v10, v11 * 2);
          v36 = bytecodeCopy[3];
          if (!v36)
          {
            operator new();
          }

          objc_msgSend_arraySharedPtrForIndex_(v36);
          v54[0] = v52[1];
          v54[1] = v53;
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v55 = 1;
          push(bytecodeCopy, v54);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v54);
          v37 = v53;
          if (!v53)
          {
            goto LABEL_90;
          }
        }

        else if (v12 == 301)
        {
          HIDWORD(__dst) = 0;
          v13 = &v10[v11];
          if (&v10[v11] > v9)
          {
            break;
          }

          memcpy(&__dst + 4, v10, v11 * 2);
          v33 = bytecodeCopy[2];
          if (v33)
          {
            objc_msgSend_arraySharedPtrForIndex_(v33);
            v63 = v61;
            v64 = v62;
            if (v62)
            {
              atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = 0;
          }

          v65 = 1;
          push(bytecodeCopy, &v63);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v63);
          v37 = v62;
          if (!v62)
          {
            goto LABEL_90;
          }
        }

        else
        {
          HIDWORD(__dst) = 0;
          v13 = &v10[v11];
          if (&v10[v11] > v9)
          {
            break;
          }

          memcpy(&__dst + 4, v10, v11 * 2);
          v17 = bytecodeCopy[4];
          if (v17)
          {
            objc_msgSend_arraySharedPtrForIndex_(v17);
            v58 = v56;
            v59 = v57;
            if (v57)
            {
              atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
          }

          v60 = 1;
          push(bytecodeCopy, &v58);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v58);
          v37 = v57;
          if (!v57)
          {
            goto LABEL_90;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      else
      {
        if (*bytes > 0xCAu)
        {
          if (v12 != 203)
          {
            if (v12 != 204)
            {
              goto LABEL_76;
            }

            v13 = bytes + 5;
            if ((bytes + 5) > v9)
            {
              break;
            }

            v72[0] = *v10;
            v73 = 0;
            push(bytecodeCopy, v72);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v72);
            goto LABEL_91;
          }

          HIDWORD(__dst) = 0;
          v13 = &v10[v11];
          if (&v10[v11] > v9)
          {
            break;
          }

          memcpy(&__dst + 4, v10, v11 * 2);
          v34 = bytecodeCopy[3];
          if (v34)
          {
            [v34 scalarValueForIndex:HIDWORD(__dst)];
            v66[0] = v35;
            v67 = 0;
            push(bytecodeCopy, v66);
            v15 = v66;
          }

          else
          {
            v68[0] = 0xC0DE9A8000000000;
            v69 = 0;
            push(bytecodeCopy, v68);
            v15 = v68;
          }
        }

        else if (v12 == 201)
        {
          HIDWORD(__dst) = 0;
          v13 = &v10[v11];
          if (&v10[v11] > v9)
          {
            break;
          }

          memcpy(&__dst + 4, v10, v11 * 2);
          [bytecodeCopy[2] scalarValueForIndex:HIDWORD(__dst)];
          v74[0] = v32;
          v75 = 0;
          push(bytecodeCopy, v74);
          v15 = v74;
        }

        else
        {
          if (v12 != 202)
          {
            goto LABEL_76;
          }

          HIDWORD(__dst) = 0;
          v13 = &v10[v11];
          if (&v10[v11] > v9)
          {
            break;
          }

          memcpy(&__dst + 4, v10, v11 * 2);
          [bytecodeCopy[4] scalarValueForIndex:HIDWORD(__dst)];
          v70[0] = v14;
          v71 = 0;
          push(bytecodeCopy, v70);
          v15 = v70;
        }

        PPScoreInterpreterValue::~PPScoreInterpreterValue(v15);
      }

LABEL_90:
      v11 = 1;
LABEL_91:
      v10 = v13;
LABEL_103:
      bytes = v10;
      __dst = 0;
      ++v10;
    }

    while (v10 <= v9);
  }
}

- (void)_runOperator:(uint64_t)operator arity:(unint64_t)arity context:(void *)context
{
  v647 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = contextCopy;
  v7 = 0;
  v8 = 1;
  switch(operator)
  {
    case 0:
      if (shouldReturnUndefined(contextCopy, arity))
      {
        drop(v6, arity);
        v639[0] = 0xC0DE9A4000000000;
        v640 = 0;
        push(v6, v639);
        v9 = v639;
        goto LABEL_558;
      }

      if (!arity)
      {
        v243 = 0.0;
LABEL_407:
        *v635 = v243;
        v636 = 0;
        push(v6, v635);
        v9 = v635;
        goto LABEL_558;
      }

      v242 = 0;
      v243 = 0.0;
      while (2)
      {
        memset(buf, 0, 24);
        pop(buf, v6);
        if (!buf[16])
        {
          Double = PPScoreInterpreterValue::getDouble(buf);
          if (Double == -31338.0)
          {
            v245 = 0.0;
          }

          else
          {
            v245 = Double;
          }

          goto LABEL_345;
        }

        if (buf[16] == 1)
        {
          v645 = 0uLL;
          PPScoreInterpreterValue::getFloatVector(&v645, buf);
          v244 = *v645;
          v245 = 0.0;
          while (v244 != *(v645 + 8))
          {
            v246 = *v244++;
            v245 = v245 + v246;
          }

          if (*(&v645 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v645 + 1));
          }

LABEL_345:
          v243 = v243 + v245;
          PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
          if (++v242 == arity)
          {
            goto LABEL_407;
          }

          continue;
        }

        break;
      }

      v348 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v645) = 67109120;
        DWORD1(v645) = buf[16];
        _os_log_error_impl(&dword_23224A000, v348, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorSum", &v645, 8u);
      }

      v637[0] = 0xC0DE9A4000000000;
      v638 = 0;
      push(v6, v637);
      v305 = v637;
      goto LABEL_546;
    case 1:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v633[0] = 0xC0DE9A4000000000;
        v634 = 0;
        push(v6, v633);
        v9 = v633;
      }

      else
      {
        v186 = *v6->_stack.__ptr_;
        v187 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v186) >> 3);
        v188 = v187 - arity;
        if (v187 <= v187 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v189 = PPScoreInterpreterValue::getDouble((v186 + 24 * v188));
        v190 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v190) >> 3) <= v188 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v191 = v189;
        v192 = PPScoreInterpreterValue::getDouble((v190 + 24 * (v188 + 1)));
        drop(v6, arity);
        if (v191 == -31338.0)
        {
          v193 = 0.0;
        }

        else
        {
          v193 = v191;
        }

        if (v192 == -31338.0)
        {
          v194 = 0.0;
        }

        else
        {
          v194 = v192;
        }

        v631[0] = v193 - v194;
        v632 = 0;
        push(v6, v631);
        v9 = v631;
      }

      goto LABEL_558;
    case 2:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v629[0] = 0xC0DE9A4000000000;
        v630 = 0;
        push(v6, v629);
        v9 = v629;
        goto LABEL_558;
      }

      ptr = v6->_stack.__ptr_;
      v222 = 0xAAAAAAAAAAAAAAABLL * ((ptr[1] - *ptr) >> 3) - arity;
      memset(buf, 0, 24);
      v224 = ptr;
      v223 = *ptr;
      if (0xAAAAAAAAAAAAAAABLL * ((v224[1] - v223) >> 3) <= v222)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v223 + 24 * v222));
      drop(v6, arity);
      if (buf[16])
      {
        if (buf[16] == 1)
        {
          PPScoreInterpreterValue::getFloatVector(&v644, buf);
          v646 = 0;
          v645 = 0uLL;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v645, *v644, *(v644 + 8), (*(v644 + 8) - *v644) >> 2);
          if (*(&v644 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v644 + 1));
          }

          v225 = *(&v645 + 1);
          if (v645 != *(&v645 + 1))
          {
            v226 = v645;
            do
            {
              *v226 = -*v226;
              ++v226;
            }

            while (v226 != v225);
          }

          std::allocate_shared[abi:ne200100]<std::vector<float>,std::allocator<std::vector<float>>,std::vector<float> const&,0>(&v626, &v645);
        }

        v310 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 67109120;
          DWORD1(v645) = buf[16];
          _os_log_error_impl(&dword_23224A000, v310, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorNegate", &v645, 8u);
        }

        v624[0] = 0xC0DE9A4000000000;
        v625 = 0;
        push(v6, v624);
        v305 = v624;
      }

      else
      {
        v307 = PPScoreInterpreterValue::getDouble(buf);
        v308 = -v307;
        v303 = v307 == -31338.0;
        v309 = -0.0;
        if (!v303)
        {
          v309 = v308;
        }

        *v627 = v309;
        v628 = 0;
        push(v6, v627);
        v305 = v627;
      }

      goto LABEL_546;
    case 3:
      if (shouldReturnUndefined(contextCopy, arity))
      {
        drop(v6, arity);
        v622[0] = 0xC0DE9A4000000000;
        v623 = 0;
        push(v6, v622);
        v9 = v622;
        goto LABEL_558;
      }

      if (!arity)
      {
        v153 = 1.0;
LABEL_401:
        *v618 = v153;
        v619 = 0;
        push(v6, v618);
        v9 = v618;
        goto LABEL_558;
      }

      v152 = 0;
      v153 = 1.0;
      while (2)
      {
        memset(buf, 0, 24);
        pop(buf, v6);
        if (!buf[16])
        {
          v157 = PPScoreInterpreterValue::getDouble(buf);
          if (v157 == -31338.0)
          {
            v155 = 1.0;
          }

          else
          {
            v155 = v157;
          }

          goto LABEL_214;
        }

        if (buf[16] == 1)
        {
          v645 = 0uLL;
          PPScoreInterpreterValue::getFloatVector(&v645, buf);
          v154 = *v645;
          v155 = 1.0;
          while (v154 != *(v645 + 8))
          {
            v156 = *v154++;
            v155 = v155 * v156;
          }

          if (*(&v645 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v645 + 1));
          }

LABEL_214:
          v153 = v153 * v155;
          PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
          if (++v152 == arity)
          {
            goto LABEL_401;
          }

          continue;
        }

        break;
      }

      v347 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v645) = 67109120;
        DWORD1(v645) = buf[16];
        _os_log_error_impl(&dword_23224A000, v347, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorProduct", &v645, 8u);
      }

      v620[0] = 0xC0DE9A4000000000;
      v621 = 0;
      push(v6, v620);
      v305 = v620;
LABEL_546:
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v305);
      v9 = buf;
      goto LABEL_558;
    case 4:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v616[0] = 0xC0DE9A4000000000;
        v617 = 0;
        push(v6, v616);
        v9 = v616;
      }

      else
      {
        v210 = *v6->_stack.__ptr_;
        v211 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v210) >> 3);
        v212 = v211 - arity;
        if (v211 <= v211 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v213 = PPScoreInterpreterValue::getDouble((v210 + 24 * v212));
        v214 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v214) >> 3) <= v212 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v215 = v213;
        v216 = PPScoreInterpreterValue::getDouble((v214 + 24 * (v212 + 1)));
        drop(v6, arity);
        if (v215 == -31338.0)
        {
          v217 = 0.0;
        }

        else
        {
          v217 = v215;
        }

        if (v216 == -31338.0)
        {
          v218 = 0.0;
        }

        else
        {
          v218 = v216;
        }

        v219 = v217 < v218;
        v220 = 1.0;
        if (v219)
        {
          v220 = 0.0;
        }

        *v614 = v220;
        v615 = 0;
        push(v6, v614);
        v9 = v614;
      }

      goto LABEL_558;
    case 5:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v612[0] = 0xC0DE9A4000000000;
        v613 = 0;
        push(v6, v612);
        v9 = v612;
        goto LABEL_558;
      }

      v231 = *v6->_stack.__ptr_;
      v232 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v231) >> 3);
      v233 = v232 - arity;
      if (v232 <= v232 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v234 = PPScoreInterpreterValue::getDouble((v231 + 24 * v233));
      v235 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v235) >> 3) <= v233 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v236 = v234;
      v237 = PPScoreInterpreterValue::getDouble((v235 + 24 * (v233 + 1)));
      drop(v6, arity);
      if (v236 <= 0.0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v397 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
        [currentHandler handleFailureInFunction:v397 file:@"PPScoreInterpreter.mm" lineNumber:1206 description:{@"Invalid parameter not satisfying: %@", @"value > 0"}];
      }

      if (v237 <= 0.0)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v399 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
        [currentHandler2 handleFailureInFunction:v399 file:@"PPScoreInterpreter.mm" lineNumber:1207 description:{@"Invalid parameter not satisfying: %@", @"base > 0"}];
      }

      if (v236 <= 0.0)
      {
        v238 = pp_score_interpreter_log_handle();
        if (!os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_396;
        }

        *buf = 134217984;
        *&buf[4] = v236;
        v239 = "Attempted to compute log10 of non-positive number %f (value arg of Logarithm operator) --  output is NaN";
        v240 = v238;
        v241 = 12;
        goto LABEL_611;
      }

      if (v237 > 0.0)
      {
        goto LABEL_397;
      }

      v238 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v236;
        *&buf[12] = 2048;
        *&buf[14] = v237;
        v239 = "Attempted to compute log10 of number %f with negative base of %f -- output is NaN";
        v240 = v238;
        v241 = 22;
LABEL_611:
        _os_log_error_impl(&dword_23224A000, v240, OS_LOG_TYPE_ERROR, v239, buf, v241);
      }

LABEL_396:

LABEL_397:
      v295 = log2(v236);
      v610[0] = v295 / log2(v237);
      v611 = 0;
      push(v6, v610);
      v9 = v610;
      goto LABEL_558;
    case 6:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v608[0] = 0xC0DE9A4000000000;
        v609 = 0;
        push(v6, v608);
        v9 = v608;
      }

      else
      {
        v119 = *v6->_stack.__ptr_;
        v120 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v119) >> 3);
        v121 = v120 - arity;
        if (v120 <= v120 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v122 = PPScoreInterpreterValue::getDouble((v119 + 24 * v121));
        v123 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v123) >> 3) <= v121 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v124 = v122;
        v125 = PPScoreInterpreterValue::getDouble((v123 + 24 * (v121 + 1)));
        drop(v6, arity);
        if (v125 == 0.0)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          v394 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [currentHandler3 handleFailureInFunction:v394 file:@"PPScoreInterpreter.mm" lineNumber:1218 description:{@"Invalid parameter not satisfying: %@", @"denominator != 0"}];

          v395 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v395, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v124;
            *&buf[12] = 2048;
            *&buf[14] = v125;
            _os_log_error_impl(&dword_23224A000, v395, OS_LOG_TYPE_ERROR, "Divide by zero error (%f / %f) -- setting output to PPScoreNotSet", buf, 0x16u);
          }

          v606[0] = 0xC0DE9A4000000000;
          v607 = 0;
          push(v6, v606);
          v9 = v606;
        }

        else
        {
          v604[0] = v124 / v125;
          v605 = 0;
          push(v6, v604);
          v9 = v604;
        }
      }

      goto LABEL_558;
    case 7:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v602[0] = 0xC0DE9A4000000000;
        v603 = 0;
        push(v6, v602);
        v9 = v602;
      }

      else
      {
        v227 = *v6->_stack.__ptr_;
        v228 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v227) >> 3);
        if (v228 <= v228 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v229 = PPScoreInterpreterValue::getDouble((v227 + 24 * (v228 - arity)));
        drop(v6, arity);
        if (v229 <= 0.0)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          v390 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [currentHandler4 handleFailureInFunction:v390 file:@"PPScoreInterpreter.mm" lineNumber:1228 description:{@"Invalid parameter not satisfying: %@", @"value > 0"}];

          v230 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v229;
            _os_log_error_impl(&dword_23224A000, v230, OS_LOG_TYPE_ERROR, "Attempted to compute NatLog of non-positive number %f -- output is NaN", buf, 0xCu);
          }
        }

        v600[0] = log(v229);
        v601 = 0;
        push(v6, v600);
        v9 = v600;
      }

      goto LABEL_558;
    case 8:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v598[0] = 0xC0DE9A4000000000;
        v599 = 0;
        push(v6, v598);
        v9 = v598;
      }

      else
      {
        v126 = *v6->_stack.__ptr_;
        v127 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v126) >> 3);
        if (v127 <= v127 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v128 = PPScoreInterpreterValue::getDouble((v126 + 24 * (v127 - arity)));
        drop(v6, arity);
        v129 = 0.0;
        if (v128 != -31338.0)
        {
          v129 = v128;
        }

        v596[0] = exp(v129);
        v597 = 0;
        push(v6, v596);
        v9 = v596;
      }

      goto LABEL_558;
    case 9:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v594[0] = 0xC0DE9A4000000000;
        v595 = 0;
        push(v6, v594);
        v9 = v594;
      }

      else
      {
        v84 = *v6->_stack.__ptr_;
        v85 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v84) >> 3);
        v86 = v85 - arity;
        if (v85 <= v85 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v87 = PPScoreInterpreterValue::getDouble((v84 + 24 * v86));
        v88 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v88) >> 3) <= v86 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v89 = v87;
        v90 = PPScoreInterpreterValue::getDouble((v88 + 24 * (v86 + 1)));
        drop(v6, arity);
        if (v89 == -31338.0)
        {
          v89 = 0.0;
        }

        if (v90 == -31338.0)
        {
          v90 = 0.0;
        }

        if (v89 <= 0.0 && (v89 != 0.0 || v90 < 0.0) && v90 != v90)
        {
          currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
          v401 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [currentHandler5 handleFailureInFunction:v401 file:@"PPScoreInterpreter.mm" lineNumber:1247 description:{@"Attempted to compute pow(%f, %f)", *&v89, *&v90}];

          v402 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v402, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v89;
            *&buf[12] = 2048;
            *&buf[14] = v90;
            _os_log_error_impl(&dword_23224A000, v402, OS_LOG_TYPE_ERROR, "Attempted to compute pow(%f,%f) -- output is NaN", buf, 0x16u);
          }
        }

        v592[0] = pow(v89, v90);
        v593 = 0;
        push(v6, v592);
        v9 = v592;
      }

      goto LABEL_558;
    case 11:
      if (shouldReturnUndefined(contextCopy, 3uLL))
      {
        drop(v6, arity);
        v590[0] = 0xC0DE9A4000000000;
        v591 = 0;
        push(v6, v590);
        v9 = v590;
        goto LABEL_558;
      }

      v108 = *v6->_stack.__ptr_;
      v109 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v108) >> 3);
      v110 = v109 - arity;
      if (v109 <= v109 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v111 = PPScoreInterpreterValue::getDouble((v108 + 24 * v110));
      v112 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v112) >> 3) <= v110 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v113 = v111;
      v114 = PPScoreInterpreterValue::getDouble((v112 + 24 * (v110 + 1)));
      v115 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v115) >> 3) <= v110 + 2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v116 = v114;
      v117 = PPScoreInterpreterValue::getDouble((v115 + 24 * (v110 + 2)));
      drop(v6, arity);
      if (v113 < 0.0)
      {
        currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
        v406 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
        [currentHandler6 handleFailureInFunction:v406 file:@"PPScoreInterpreter.mm" lineNumber:1259 description:{@"Invalid parameter not satisfying: %@", @"age >= 0"}];
      }

      if (v116 <= 0.0)
      {
        currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
        v410 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
        [currentHandler7 handleFailureInFunction:v410 file:@"PPScoreInterpreter.mm" lineNumber:1260 description:{@"Invalid parameter not satisfying: %@", @"halflife > 0"}];
      }

      if (v113 < 0.0)
      {
        v118 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v113;
          _os_log_error_impl(&dword_23224A000, v118, OS_LOG_TYPE_ERROR, "Attempted to compute ExpDecay with negative age: %f  -- output is NaN", buf, 0xCu);
        }

        goto LABEL_399;
      }

      if (v116 > 0.0)
      {
LABEL_399:
        v586[0] = exp(v113 * (-0.693147181 / v116)) * v117;
        v587 = 0;
        push(v6, v586);
        v9 = v586;
        goto LABEL_558;
      }

      v334 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v334, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v116;
        _os_log_error_impl(&dword_23224A000, v334, OS_LOG_TYPE_ERROR, "Attempted to compute ExpDecay with non-positive half-life: %f -- forcing output to PPScoreNotSet", buf, 0xCu);
      }

      v588[0] = 0xC0DE9A4000000000;
      v589 = 0;
      push(v6, v588);
      v9 = v588;
      goto LABEL_558;
    case 12:
      if (shouldReturnUndefined(contextCopy, 3uLL))
      {
        drop(v6, arity);
        v584[0] = 0xC0DE9A4000000000;
        v585 = 0;
        push(v6, v584);
        v9 = v584;
      }

      else
      {
        v61 = *v6->_stack.__ptr_;
        v62 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v61) >> 3);
        v63 = v62 - arity;
        if (v62 <= v62 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v64 = PPScoreInterpreterValue::getDouble((v61 + 24 * v63));
        v65 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v65) >> 3) <= v63 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v66 = v64;
        v67 = PPScoreInterpreterValue::getDouble((v65 + 24 * (v63 + 1)));
        v68 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v68) >> 3) <= v63 + 2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v69 = v67;
        v70 = PPScoreInterpreterValue::getDouble((v68 + 24 * (v63 + 2)));
        drop(v6, arity);
        if (v70 == 1.0)
        {
          currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
          v404 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [currentHandler8 handleFailureInFunction:v404 file:@"PPScoreInterpreter.mm" lineNumber:1272 description:{@"Invalid parameter not satisfying: %@", @"ratio != 1"}];
        }

        if (v70 < 0.0)
        {
          currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
          v408 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [currentHandler9 handleFailureInFunction:v408 file:@"PPScoreInterpreter.mm" lineNumber:1273 description:{@"Invalid parameter not satisfying: %@", @"ratio >= 0"}];
        }

        if (v70 == 1.0)
        {
          v71 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23224A000, v71, OS_LOG_TYPE_ERROR, "Attempted to compute GeometricSum with a ratio of 1 -- setting output to PPScoreNotSet", buf, 2u);
          }

          v582[0] = 0xC0DE9A4000000000;
          v583 = 0;
          push(v6, v582);
          v9 = v582;
        }

        else
        {
          if (v70 < 0.0 && v66 != v66)
          {
            v300 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v70;
              *&buf[12] = 2048;
              *&buf[14] = v66;
              _os_log_error_impl(&dword_23224A000, v300, OS_LOG_TYPE_ERROR, "Attempted to compute GeometricSum with ratio of %f and terms of %f -- result will be NaN", buf, 0x16u);
            }
          }

          v580[0] = v69 * ((1.0 - pow(v70, v66)) / (1.0 - v70));
          v581 = 0;
          push(v6, v580);
          v9 = v580;
        }
      }

      goto LABEL_558;
    case 13:
      if (shouldReturnUndefined(contextCopy, 3uLL))
      {
        drop(v6, arity);
        v578[0] = 0xC0DE9A4000000000;
        v579 = 0;
        push(v6, v578);
        v9 = v578;
      }

      else
      {
        v98 = *v6->_stack.__ptr_;
        v99 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v98) >> 3);
        v100 = v99 - arity;
        if (v99 <= v99 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v101 = PPScoreInterpreterValue::getDouble((v98 + 24 * v100));
        v102 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v102) >> 3) <= v100 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v103 = v101;
        v104 = PPScoreInterpreterValue::getDouble((v102 + 24 * (v100 + 1)));
        v105 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v105) >> 3) <= v100 + 2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v106 = v104;
        v107 = PPScoreInterpreterValue::getDouble((v105 + 24 * (v100 + 2)));
        drop(v6, arity);
        v576[0] = v106 / (exp(-(v107 * v103)) + 1.0);
        v577 = 0;
        push(v6, v576);
        v9 = v576;
      }

      goto LABEL_558;
    case 15:
      if (shouldReturnUndefined(contextCopy, 4uLL))
      {
        drop(v6, arity);
        v574[0] = 0xC0DE9A4000000000;
        v575 = 0;
        push(v6, v574);
        v9 = v574;
      }

      else
      {
        v130 = *v6->_stack.__ptr_;
        v131 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v130) >> 3);
        v132 = v131 - arity;
        if (v131 <= v131 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v133 = PPScoreInterpreterValue::getDouble((v130 + 24 * v132));
        v134 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v134) >> 3) <= v132 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v135 = v133;
        v136 = PPScoreInterpreterValue::getDouble((v134 + 24 * (v132 + 1)));
        v137 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v137) >> 3) <= v132 + 2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v138 = v136;
        v139 = PPScoreInterpreterValue::getDouble((v137 + 24 * (v132 + 2)));
        v140 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v140) >> 3) <= v132 + 3)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v141 = v139;
        v142 = PPScoreInterpreterValue::getDouble((v140 + 24 * (v132 + 3)));
        drop(v6, arity);
        if (v138 > v142)
        {
          currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
          v412 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [currentHandler10 handleFailureInFunction:v412 file:@"PPScoreInterpreter.mm" lineNumber:1294 description:{@"ClampToRange: minVal (%f) must be <= defaultVal (%f) ", *&v138, *&v142}];
        }

        if (v142 > v141)
        {
          currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
          v414 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [currentHandler11 handleFailureInFunction:v414 file:@"PPScoreInterpreter.mm" lineNumber:1295 description:{@"ClampToRange: defaultVal (%f) must be <= maxVal (%f) ", *&v142, *&v141}];
        }

        v143 = v135;
        if (v135 < v138)
        {
          v143 = v138;
        }

        if (v143 >= v141)
        {
          v144 = v141;
        }

        else
        {
          v144 = v143;
        }

        if (v144 != v135)
        {
          v145 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
          {
            *buf = 134219008;
            *&buf[4] = v135;
            *&buf[12] = 2048;
            *&buf[14] = v138;
            *&buf[22] = 2048;
            *&buf[24] = v141;
            LOWORD(v642[0]) = 2048;
            *(v642 + 2) = v142;
            WORD1(v642[1]) = 2048;
            *(&v642[1] + 4) = v144;
            _os_log_impl(&dword_23224A000, v145, OS_LOG_TYPE_INFO, "ClampToRange(input=%f, min=%f, max=%f, default=%f): input coerced to %f", buf, 0x34u);
          }
        }

        *v572 = v144;
        v573 = 0;
        push(v6, v572);
        v9 = v572;
      }

      goto LABEL_558;
    case 16:
      pop(buf, contextCopy);
      v18 = PPScoreInterpreterValue::getDouble(buf);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
      pop(buf, v6);
      v19 = PPScoreInterpreterValue::getDouble(buf);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
      v20 = v18 != -31337.0 && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      v21 = 1.0;
      if (v20)
      {
        v21 = v18;
      }

      if (v19 >= 0.0)
      {
        v22 = v19 * v21;
      }

      else
      {
        v22 = v19 / fmax(v21, 0.0000001);
      }

      *v570 = v22;
      v571 = 0;
      push(v6, v570);
      v9 = v570;
      goto LABEL_558;
    case 17:
      if (shouldReturnUndefined(contextCopy, arity))
      {
        drop(v6, arity);
        v568[0] = 0xC0DE9A4000000000;
        v569 = 0;
        push(v6, v568);
        v9 = v568;
        goto LABEL_558;
      }

      if (!arity)
      {
        v174 = -INFINITY;
LABEL_405:
        *v559 = v174;
        v560 = 0;
        push(v6, v559);
        v9 = v559;
        goto LABEL_558;
      }

      v172 = 0;
      v173 = 0;
      v174 = -INFINITY;
      while (2)
      {
        memset(buf, 0, 24);
        pop(buf, v6);
        if (buf[16])
        {
          if (buf[16] != 1)
          {
            if (buf[16] == 2)
            {
              v175 = PPScoreInterpreterValue::getObject(buf);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v174 == -INFINITY)) != 0)
              {
                v176 = v175;
                v177 = v176;
                if (v172)
                {
                  if ([v176 compare:v172]== 1)
                  {
                    v178 = v177;
                  }

                  else
                  {
                    v178 = v172;
                  }

                  v179 = v178;

                  v172 = v179;
                }

                else
                {
                  v172 = v176;
                }
              }

              goto LABEL_273;
            }

            v355 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v645) = 67109120;
              DWORD1(v645) = buf[16];
              _os_log_error_impl(&dword_23224A000, v355, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMaximum", &v645, 8u);
            }

            v562[0] = 0xC0DE9A4000000000;
            v563 = 0;
            v356 = v562;
            push(v6, v562);
            break;
          }

          if (!v172)
          {
            v645 = 0uLL;
            PPScoreInterpreterValue::getFloatVector(&v645, buf);
            v180 = *v645;
            v181 = *(v645 + 8);
            if (*v645 == v181)
            {
              v184 = -INFINITY;
            }

            else
            {
              v182 = -INFINITY;
              do
              {
                v183 = *v180++;
                v182 = fmaxf(v182, v183);
              }

              while (v180 != v181);
              v184 = v182;
            }

            if (*(&v645 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v645 + 1));
            }

            v172 = 0;
            v174 = fmax(v174, v184);
            goto LABEL_273;
          }

          v358 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v358, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v645) = 67109120;
            DWORD1(v645) = buf[16];
            _os_log_error_impl(&dword_23224A000, v358, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMaximum", &v645, 8u);
          }

          v564[0] = 0xC0DE9A4000000000;
          v565 = 0;
          v356 = v564;
          push(v6, v564);
        }

        else
        {
          if (!v172)
          {
            v185 = PPScoreInterpreterValue::getDouble(buf);
            v172 = 0;
            if (v185 == -31338.0)
            {
              v185 = -INFINITY;
            }

            v174 = fmax(v174, v185);
LABEL_273:
            PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
            if (++v173 == arity)
            {
              if (v172)
              {
                PPScoreInterpreterValue::PPScoreInterpreterValue(v561, v172);
                push(v6, v561);
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v561);

                goto LABEL_559;
              }

              goto LABEL_405;
            }

            continue;
          }

          v360 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v360, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v645) = 67109120;
            DWORD1(v645) = buf[16];
            _os_log_error_impl(&dword_23224A000, v360, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMaximum", &v645, 8u);
          }

          v566[0] = 0xC0DE9A4000000000;
          v567 = 0;
          v356 = v566;
          push(v6, v566);
        }

        break;
      }

      PPScoreInterpreterValue::~PPScoreInterpreterValue(v356);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);

      goto LABEL_559;
    case 18:
      if (shouldReturnUndefined(contextCopy, arity))
      {
        drop(v6, arity);
        v557[0] = 0xC0DE9A4000000000;
        v558 = 0;
        push(v6, v557);
        v9 = v557;
        goto LABEL_558;
      }

      if (!arity)
      {
        v160 = INFINITY;
LABEL_403:
        *v548 = v160;
        v549 = 0;
        push(v6, v548);
        v9 = v548;
        goto LABEL_558;
      }

      v158 = 0;
      v159 = 0;
      v160 = INFINITY;
      while (2)
      {
        memset(buf, 0, 24);
        pop(buf, v6);
        if (buf[16])
        {
          if (buf[16] != 1)
          {
            if (buf[16] == 2)
            {
              v161 = PPScoreInterpreterValue::getObject(buf);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v160 == INFINITY)) != 0)
              {
                v162 = v161;
                v163 = v162;
                if (v158)
                {
                  if ([v162 compare:v158]== -1)
                  {
                    v164 = v163;
                  }

                  else
                  {
                    v164 = v158;
                  }

                  v165 = v164;

                  v158 = v165;
                }

                else
                {
                  v158 = v162;
                }
              }

              goto LABEL_243;
            }

            v353 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v353, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v645) = 67109120;
              DWORD1(v645) = buf[16];
              _os_log_error_impl(&dword_23224A000, v353, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMinimum", &v645, 8u);
            }

            v551[0] = 0xC0DE9A4000000000;
            v552 = 0;
            v354 = v551;
            push(v6, v551);
            break;
          }

          if (!v158)
          {
            v645 = 0uLL;
            PPScoreInterpreterValue::getFloatVector(&v645, buf);
            v166 = *v645;
            v167 = *(v645 + 8);
            if (*v645 == v167)
            {
              v170 = INFINITY;
            }

            else
            {
              v168 = INFINITY;
              do
              {
                v169 = *v166++;
                v168 = fminf(v168, v169);
              }

              while (v166 != v167);
              v170 = v168;
            }

            if (*(&v645 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v645 + 1));
            }

            v158 = 0;
            v160 = fmin(v160, v170);
            goto LABEL_243;
          }

          v357 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v357, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v645) = 67109120;
            DWORD1(v645) = buf[16];
            _os_log_error_impl(&dword_23224A000, v357, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMinimum", &v645, 8u);
          }

          v553[0] = 0xC0DE9A4000000000;
          v554 = 0;
          v354 = v553;
          push(v6, v553);
        }

        else
        {
          if (!v158)
          {
            v171 = PPScoreInterpreterValue::getDouble(buf);
            v158 = 0;
            if (v171 == -31338.0)
            {
              v171 = INFINITY;
            }

            v160 = fmin(v160, v171);
LABEL_243:
            PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
            if (++v159 == arity)
            {
              if (v158)
              {
                PPScoreInterpreterValue::PPScoreInterpreterValue(v550, v158);
                push(v6, v550);
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v550);

                goto LABEL_559;
              }

              goto LABEL_403;
            }

            continue;
          }

          v359 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v359, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v645) = 67109120;
            DWORD1(v645) = buf[16];
            _os_log_error_impl(&dword_23224A000, v359, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMinimum", &v645, 8u);
          }

          v555[0] = 0xC0DE9A4000000000;
          v556 = 0;
          v354 = v555;
          push(v6, v555);
        }

        break;
      }

      PPScoreInterpreterValue::~PPScoreInterpreterValue(v354);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);

      goto LABEL_559;
    case 19:
      drop(contextCopy, arity);
      v17 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "PPOperatorNeuralNet is not supported anymore", buf, 2u);
      }

      v546[0] = 0xC0DE9A4000000000;
      v547 = 0;
      push(v6, v546);
      v9 = v546;
      goto LABEL_558;
    case 21:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v544[0] = 0xC0DE9A4000000000;
        v545 = 0;
        push(v6, v544);
        v9 = v544;
        goto LABEL_558;
      }

      v255 = *v6->_stack.__ptr_;
      v256 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v255) >> 3);
      v257 = v256 - arity;
      if (v256 <= v256 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v258 = PPScoreInterpreterValue::getObject((v255 + 24 * v257));
      v259 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v259) >> 3) <= v257 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v260 = PPScoreInterpreterValue::getObject((v259 + 24 * (v257 + 1)));
      drop(v6, arity);
      v261 = v258;
      v262 = v260;
      [v261 length];
      v542[0] = [v262 containsObject:v261];
      v543 = 0;
      push(v6, v542);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v542);

      goto LABEL_559;
    case 22:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v540[0] = 0xC0DE9A4000000000;
        v541 = 0;
        push(v6, v540);
        v9 = v540;
      }

      else
      {
        v91 = *v6->_stack.__ptr_;
        v92 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v91) >> 3);
        v93 = v92 - arity;
        if (v92 <= v92 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v94 = PPScoreInterpreterValue::getDouble((v91 + 24 * v93));
        v95 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v95) >> 3) <= v93 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v96 = v94;
        v97 = PPScoreInterpreterValue::getDouble((v95 + 24 * (v93 + 1)));
        drop(v6, arity);
        if (v96 > v97)
        {
          currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
          v392 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [currentHandler12 handleFailureInFunction:v392 file:@"PPScoreInterpreter.mm" lineNumber:1463 description:{@"RandomUniform: start (%f) must be <= end (%f) ", *&v96, *&v97}];
        }

        v538[0] = v96 + (v97 - v96) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0);
        v539 = 0;
        push(v6, v538);
        v9 = v538;
      }

      goto LABEL_558;
    case 24:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v536[0] = 0xC0DE9A4000000000;
        v537 = 0;
        push(v6, v536);
        v9 = v536;
        goto LABEL_558;
      }

      v72 = v6->_stack.__ptr_;
      v73 = 0xAAAAAAAAAAAAAAABLL * ((v72[1] - *v72) >> 3) - arity;
      memset(buf, 0, 24);
      v75 = v72;
      v74 = *v72;
      if (0xAAAAAAAAAAAAAAABLL * ((v75[1] - v74) >> 3) <= v73)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v74 + 24 * v73));
      drop(v6, arity);
      if (buf[16])
      {
        if (buf[16] == 1)
        {
          PPScoreInterpreterValue::getFloatVector(&v644, buf);
          v646 = 0;
          v645 = 0uLL;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v645, *v644, *(v644 + 8), (*(v644 + 8) - *v644) >> 2);
          if (*(&v644 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v644 + 1));
          }

          v76 = *(&v645 + 1);
          if (v645 != *(&v645 + 1))
          {
            v77 = v645;
            do
            {
              v78 = *v77;
              if (*v77 < 0.0)
              {
                v78 = -*v77;
              }

              *v77++ = v78;
            }

            while (v77 != v76);
          }

          std::allocate_shared[abi:ne200100]<std::vector<float>,std::allocator<std::vector<float>>,std::vector<float> const&,0>(&v533, &v645);
        }

        v306 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 67109120;
          DWORD1(v645) = buf[16];
          _os_log_error_impl(&dword_23224A000, v306, OS_LOG_TYPE_ERROR, "Invalid value of type %d in argument to PPOperatorAbsVal", &v645, 8u);
        }

        v531[0] = 0xC0DE9A4000000000;
        v532 = 0;
        push(v6, v531);
        v305 = v531;
      }

      else
      {
        v301 = PPScoreInterpreterValue::getDouble(buf);
        v302 = fabs(v301);
        v303 = v301 == -31338.0;
        v304 = 0.0;
        if (!v303)
        {
          v304 = v302;
        }

        *v534 = v304;
        v535 = 0;
        push(v6, v534);
        v305 = v534;
      }

      goto LABEL_546;
    case 25:
      if (!shouldReturnUndefined(contextCopy, 2uLL))
      {
        v146 = *v6->_stack.__ptr_;
        v147 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v146) >> 3);
        v148 = v147 - arity;
        v645 = 0uLL;
        if (v147 > v147 - arity)
        {
          PPScoreInterpreterValue::getFloatVector(&v645, (v146 + 24 * v148));
          v149 = *v6->_stack.__ptr_;
          if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v149) >> 3) > v148 + 1)
          {
            v150 = PPScoreInterpreterValue::getDouble((v149 + 24 * (v148 + 1)));
            drop(v6, arity);
            memset(buf, 0, 24);
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(buf, *v645, *(v645 + 8), (*(v645 + 8) - *v645) >> 2);
            v151 = v150;
            *&v644 = v151;
            std::vector<float>::emplace_back<float>(buf, &v644);
            std::allocate_shared[abi:ne200100]<std::vector<float>,std::allocator<std::vector<float>>,std::vector<float> const&,0>(&v528, buf);
          }

          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      drop(v6, arity);
      v529[0] = 0xC0DE9A4000000000;
      v530 = 0;
      push(v6, v529);
      v9 = v529;
      goto LABEL_558;
    case 26:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v526[0] = 0xC0DE9A4000000000;
        v527 = 0;
        push(v6, v526);
        v9 = v526;
        goto LABEL_558;
      }

      v266 = *v6->_stack.__ptr_;
      v267 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v266) >> 3);
      *&buf[8] = 0;
      *buf = 0;
      if (v267 <= v267 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::getFloatVector(buf, (v266 + 24 * (v267 - arity)));
      drop(v6, arity);
      v268 = *(*buf + 8);
      v269 = 0.0;
      if (**buf != v268)
      {
        v270 = **buf;
        do
        {
          v271 = *v270++;
          v269 = v269 + v271;
        }

        while (v270 != v268);
        v269 = v269 / ((v268 - **buf) >> 2);
      }

      *v524 = v269;
      v525 = 0;
      push(v6, v524);
      v265 = v524;
      goto LABEL_410;
    case 27:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v522[0] = 0xC0DE9A4000000000;
        v523 = 0;
        push(v6, v522);
        v9 = v522;
LABEL_558:
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v9);
        goto LABEL_559;
      }

      v38 = *v6->_stack.__ptr_;
      v39 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v38) >> 3);
      v645 = 0uLL;
      if (v39 <= v39 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::getFloatVector(&v645, (v38 + 24 * (v39 - arity)));
      drop(v6, arity);
      memset(buf, 0, 24);
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(buf, *v645, *(v645 + 8), (*(v645 + 8) - *v645) >> 2);
      v40 = *buf;
      v41 = *&buf[8] - *buf;
      if (*&buf[8] == *buf)
      {
        v520[0] = 0xC0DE9A4000000000;
        v521 = 0;
        push(v6, v520);
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v520);
        if (!v40)
        {
LABEL_532:
          v296 = *(&v645 + 1);
          if (*(&v645 + 1))
          {
LABEL_533:
            std::__shared_weak_count::__release_shared[abi:ne200100](v296);
          }

          goto LABEL_559;
        }

LABEL_531:
        operator delete(v40);
        goto LABEL_532;
      }

      LOBYTE(v644) = 0;
      std::__sort<std::__less<float,float> &,float *>();
      v42 = v41 >> 2;
      v43 = vcvtd_n_f64_u64(v41 >> 2, 1uLL) + -1.0;
      v44 = v43;
      if (v43 == v43)
      {
        if (v42 > v44 && v42 > v44 + 1)
        {
          v45 = (*(v40 + v44) + *(v40 + v44 + 1)) * 0.5;
LABEL_530:
          *v518 = v45;
          v519 = 0;
          push(v6, v518);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v518);
          goto LABEL_531;
        }
      }

      else if (v42 > v44)
      {
        v45 = *(v40 + v44);
        goto LABEL_530;
      }

LABEL_643:
      std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
    case 28:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v516[0] = 0xC0DE9A4000000000;
        v517 = 0;
        push(v6, v516);
        v9 = v516;
        goto LABEL_558;
      }

      v263 = *v6->_stack.__ptr_;
      v264 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v263) >> 3);
      *&buf[8] = 0;
      *buf = 0;
      if (v264 <= v264 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::getFloatVector(buf, (v263 + 24 * (v264 - arity)));
      drop(v6, arity);
      v514[0] = ((*(*buf + 8) - **buf) >> 2);
      v515 = 0;
      push(v6, v514);
      v265 = v514;
      goto LABEL_410;
    case 29:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v512[0] = 0xC0DE9A4000000000;
        v513 = 0;
        push(v6, v512);
        v9 = v512;
        goto LABEL_558;
      }

      v278 = *v6->_stack.__ptr_;
      v279 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v278) >> 3);
      *&buf[8] = 0;
      *buf = 0;
      if (v279 <= v279 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::getFloatVector(buf, (v278 + 24 * (v279 - arity)));
      drop(v6, arity);
      v280 = *(*buf + 8);
      v281 = **buf;
      if (**buf == v280)
      {
        v510[0] = 0;
        v511 = 0;
        v289 = v510;
        push(v6, v510);
      }

      else
      {
        v282 = v280 - v281;
        v283 = 0.0;
        v284 = **buf;
        do
        {
          v285 = *v284++;
          v283 = v283 + v285;
        }

        while (v284 != v280);
        v286 = v283 / v282;
        v287 = 0.0;
        do
        {
          v288 = *v281++;
          v287 = v287 + (v288 - v286) * (v288 - v286);
        }

        while (v281 != v280);
        v508[0] = sqrt(v287 / v282);
        v509 = 0;
        v289 = v508;
        push(v6, v508);
      }

      v265 = v289;
LABEL_410:
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v265);
      v296 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_559;
      }

      goto LABEL_533;
    case 30:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v506[0] = 0xC0DE9A4000000000;
        v507 = 0;
        push(v6, v506);
        v9 = v506;
        goto LABEL_558;
      }

      v195 = *v6->_stack.__ptr_;
      v196 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v195) >> 3);
      v197 = v196 - arity;
      if (v196 <= v196 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v198 = PPScoreInterpreterValue::getObject((v195 + 24 * v197));
      memset(buf, 0, 24);
      v199 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v199) >> 3) <= v197 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v199 + 24 * (v197 + 1)));
      drop(v6, arity);
      if (!v198)
      {
        goto LABEL_449;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v200 = v198;
      }

      else
      {
        v314 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
        {
          v378 = objc_opt_class();
          v379 = NSStringFromClass(v378);
          LODWORD(v645) = 138412290;
          *(&v645 + 4) = v379;
          _os_log_error_impl(&dword_23224A000, v314, OS_LOG_TYPE_ERROR, "PPOperatorUpdateItemCounts was passed an existingCountsObj of the wrong type: %@", &v645, 0xCu);
        }

LABEL_449:
        v200 = objc_opt_new();
      }

      v315 = v200;
      if (buf[16] == 2)
      {
        v339 = PPScoreInterpreterValue::getObject(buf);
        if (v339)
        {
          [v315 addObject:v339];
        }

LABEL_509:

        goto LABEL_510;
      }

      if (buf[16] != 1)
      {
        if (!buf[16])
        {
          v316 = [MEMORY[0x277CCABB0] numberWithDouble:PPScoreInterpreterValue::getDouble(buf)];
          [v315 addObject:v316];

          goto LABEL_510;
        }

        v339 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v339, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 67109120;
          DWORD1(v645) = buf[16];
          _os_log_error_impl(&dword_23224A000, v339, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in argument to PPOperatorUpdateItemCounts", &v645, 8u);
        }

        goto LABEL_509;
      }

      v645 = 0uLL;
      PPScoreInterpreterValue::getFloatVector(&v645, buf);
      v336 = *v645;
      v337 = *(v645 + 8);
      if (*v645 != v337)
      {
        do
        {
          LODWORD(v335) = *v336;
          v338 = [MEMORY[0x277CCABB0] numberWithFloat:v335];
          [v315 addObject:v338];

          ++v336;
        }

        while (v336 != v337);
      }

      if (*(&v645 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v645 + 1));
      }

LABEL_510:
      PPScoreInterpreterValue::PPScoreInterpreterValue(v505, v315);
      push(v6, v505);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v505);

      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
      goto LABEL_559;
    case 31:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v503[0] = 0xC0DE9A4000000000;
        v504 = 0;
        push(v6, v503);
        v9 = v503;
        goto LABEL_558;
      }

      v272 = *v6->_stack.__ptr_;
      v273 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v272) >> 3);
      v274 = v273 - arity;
      if (v273 <= v273 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v275 = PPScoreInterpreterValue::getObject((v272 + 24 * v274));
      memset(buf, 0, 24);
      v276 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v276) >> 3) <= v274 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v276 + 24 * (v274 + 1)));
      drop(v6, arity);
      if (!v275)
      {
        goto LABEL_457;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v277 = v275;
      }

      else
      {
        v317 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
        {
          v380 = objc_opt_class();
          v381 = NSStringFromClass(v380);
          LODWORD(v645) = 138412290;
          *(&v645 + 4) = v381;
          _os_log_error_impl(&dword_23224A000, v317, OS_LOG_TYPE_ERROR, "PPOperatorUpdateCompactNumericItemCounts was passed an existingCountsObj of the wrong type: %@", &v645, 0xCu);
        }

LABEL_457:
        v277 = objc_opt_new();
      }

      v318 = v277;
      if (buf[16] == 1)
      {
        v645 = 0uLL;
        PPScoreInterpreterValue::getFloatVector(&v645, buf);
        v319 = *v645;
        v320 = *(v645 + 8);
        while (v319 != v320)
        {
          [v318 addValue:*v319++];
        }

        if (*(&v645 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v645 + 1));
        }
      }

      else if (buf[16])
      {
        v321 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 67109120;
          DWORD1(v645) = buf[16];
          _os_log_error_impl(&dword_23224A000, v321, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in argument to PPOperatorUpdateCompactNumericItemCounts", &v645, 8u);
        }
      }

      else
      {
        [v277 addValue:PPScoreInterpreterValue::getDouble(buf)];
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(v502, v318);
      push(v6, v502);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v502);

      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
      goto LABEL_559;
    case 32:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v500[0] = 0xC0DE9A4000000000;
        v501 = 0;
        push(v6, v500);
        v9 = v500;
        goto LABEL_558;
      }

      v248 = *v6->_stack.__ptr_;
      v249 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v248) >> 3);
      v250 = v249 - arity;
      if (v249 <= v249 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v251 = PPScoreInterpreterValue::getObject((v248 + 24 * v250));
      memset(buf, 0, 24);
      v252 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v252) >> 3) <= v250 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v252 + 24 * (v250 + 1)));
      drop(v6, arity);
      if (buf[16])
      {
        if (buf[16] != 2)
        {
          v313 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v645) = 67109120;
            DWORD1(v645) = buf[16];
            _os_log_error_impl(&dword_23224A000, v313, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in 2nd argument to PPOperatorCountsForItem", &v645, 8u);
          }

          v498[0] = 0xC0DE9A4000000000;
          v499 = 0;
          push(v6, v498);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v498);
          goto LABEL_609;
        }

        PPScoreInterpreterValue::getObject(buf);
        v254 = v253 = -31337.0;
      }

      else
      {
        v254 = 0;
        v253 = PPScoreInterpreterValue::getDouble(buf);
      }

      if (!v251)
      {
        v496[0] = 0;
        v497 = 0;
        push(v6, v496);
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v496);

        goto LABEL_609;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v311 = v251;
        if (v253 != -31337.0)
        {
          v364 = [MEMORY[0x277CCABB0] numberWithDouble:v253];
          v312 = [v311 countForObject:v364];

          goto LABEL_596;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v312 = [v311 countForObject:v254];
LABEL_596:

          v488[0] = v312;
          v489 = 0;
          push(v6, v488);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v488);

          goto LABEL_609;
        }

        v365 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v365, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 138412290;
          *(&v645 + 4) = v254;
          _os_log_error_impl(&dword_23224A000, v365, OS_LOG_TYPE_ERROR, "Invalid key passed to PPOperatorCountsForItem using NSCountedSet: %@", &v645, 0xCu);
        }

        v494[0] = 0xC0DE9A4000000000;
        v495 = 0;
        push(v6, v494);
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v494);

LABEL_609:
        PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);

        goto LABEL_559;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v361 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v361, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 138412290;
          *(&v645 + 4) = v251;
          _os_log_error_impl(&dword_23224A000, v361, OS_LOG_TYPE_ERROR, "Invalid counted set object passed to PPOperatorCountsForItem: %@", &v645, 0xCu);
        }

        v490[0] = 0xC0DE9A4000000000;
        v491 = 0;
        push(v6, v490);
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v490);

        goto LABEL_609;
      }

      v349 = v251;
      if (v253 == -31337.0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v372 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v372, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v645) = 138412290;
            *(&v645 + 4) = v254;
            _os_log_error_impl(&dword_23224A000, v372, OS_LOG_TYPE_ERROR, "Invalid key passed to PPOperatorCountsForItem using PPU16CountedSet: %@", &v645, 0xCu);
          }

          v492[0] = 0xC0DE9A4000000000;
          v493 = 0;
          push(v6, v492);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v492);

          goto LABEL_609;
        }

        [v254 doubleValue];
        v253 = v350;
      }

      v312 = [v349 countForValue:v253];
      goto LABEL_596;
    case 33:
      goto LABEL_65;
    case 34:
      v8 = 0;
LABEL_65:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v486[0] = 0xC0DE9A4000000000;
        v487 = 0;
        push(v6, v486);
        v9 = v486;
        goto LABEL_558;
      }

      v23 = v6->_stack.__ptr_;
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v23[1] - *v23) >> 3) - arity;
      v646 = 0;
      v645 = 0uLL;
      v26 = v23;
      v25 = *v23;
      if (0xAAAAAAAAAAAAAAABLL * ((v26[1] - v25) >> 3) <= v24)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(&v645, (v25 + 24 * v24));
      drop(v6, arity);
      if (v646)
      {
        if (v646 == 1)
        {
          PPScoreInterpreterValue::getFloatVector(buf, &v645);
          v292 = *buf;
          v28 = *&buf[8];
          if (v8)
          {
            if (*buf)
            {
              v642[0] = 0;
              memset(buf, 0, sizeof(buf));
              std::unordered_set<float>::unordered_set<std::__wrap_iter<float *>>(buf, *v292, v292[1]);
              v468[0] = *&buf[24];
              v469 = 0;
              push(v6, v468);
              PPScoreInterpreterValue::~PPScoreInterpreterValue(v468);
              std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::~__hash_table(buf);
              goto LABEL_555;
            }

            goto LABEL_552;
          }

          if (*buf)
          {
            v447[0] = ((*(*buf + 8) - **buf) >> 2);
            v448 = 0;
            push(v6, v447);
            v326 = v447;
LABEL_554:
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v326);
LABEL_555:
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            goto LABEL_557;
          }

LABEL_553:
          v449[0] = 0;
          v450 = 0;
          push(v6, v449);
          v326 = v449;
          goto LABEL_554;
        }

        if (v646 == 2)
        {
          v27 = PPScoreInterpreterValue::getObject(&v645);
          v28 = v27;
          if (v8)
          {
            if (v27)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = v28;
                v480[0] = [(std::__shared_weak_count *)v29 count];
                v481 = 0;
                push(v6, v480);
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v480);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v362 = v28;
                  v478[0] = [(std::__shared_weak_count *)v362 uniqueValueCount];
                  v479 = 0;
                  push(v6, v478);
                  PPScoreInterpreterValue::~PPScoreInterpreterValue(v478);
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v369 = v28;
                    v370 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v369];
                    v476[0] = [v370 count];
                    v477 = 0;
                    push(v6, v476);
                    PPScoreInterpreterValue::~PPScoreInterpreterValue(v476);
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v373 = v28;
                      v374 = objc_opt_new();
                      for (i = 0; i < [(std::__shared_weak_count *)v373 length]; ++i)
                      {
                        v376 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[std::__shared_weak_count characterAtIndex:](v373, "characterAtIndex:", i)}];
                        [v374 addObject:v376];
                      }

                      v474[0] = [v374 count];
                      v475 = 0;
                      push(v6, v474);
                      PPScoreInterpreterValue::~PPScoreInterpreterValue(v474);
                    }

                    else
                    {
                      v384 = pp_score_interpreter_log_handle();
                      if (os_log_type_enabled(v384, OS_LOG_TYPE_ERROR))
                      {
                        v387 = objc_opt_class();
                        v388 = NSStringFromClass(v387);
                        *buf = 138412290;
                        *&buf[4] = v388;
                        _os_log_error_impl(&dword_23224A000, v384, OS_LOG_TYPE_ERROR, "Unhandled object type of %@ encountered in PPOperator<Distinct/Total>ItemCount", buf, 0xCu);
                      }

                      v472[0] = 0xC0DE9A4000000000;
                      v473 = 0;
                      push(v6, v472);
                      PPScoreInterpreterValue::~PPScoreInterpreterValue(v472);
                    }
                  }
                }
              }

LABEL_557:
              v9 = &v645;
              goto LABEL_558;
            }

LABEL_552:
            v470[0] = 0;
            v471 = 0;
            push(v6, v470);
            v326 = v470;
            goto LABEL_554;
          }

          if (v27)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v327 = v28;
              [(std::__shared_weak_count *)v327 objectEnumerator];
              v466 = 0u;
              v467 = 0u;
              v464 = 0u;
              v328 = v465 = 0u;
              v329 = [v328 countByEnumeratingWithState:&v464 objects:v643 count:16];
              if (v329)
              {
                v330 = 0;
                v331 = *v465;
                do
                {
                  for (j = 0; j != v329; ++j)
                  {
                    if (*v465 != v331)
                    {
                      objc_enumerationMutation(v328);
                    }

                    v330 += [(std::__shared_weak_count *)v327 countForObject:*(*(&v464 + 1) + 8 * j)];
                  }

                  v329 = [v328 countByEnumeratingWithState:&v464 objects:v643 count:16];
                }

                while (v329);
                v333 = v330;
              }

              else
              {
                v333 = 0.0;
              }

              *v462 = v333;
              v463 = 0;
              push(v6, v462);
              PPScoreInterpreterValue::~PPScoreInterpreterValue(v462);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v363 = v28;
                v460[0] = [(std::__shared_weak_count *)v363 count];
                v461 = 0;
                push(v6, v460);
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v460);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v371 = v28;
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2020000000;
                  *&buf[24] = 0;
                  v459[0] = MEMORY[0x277D85DD0];
                  v459[1] = 3221225472;
                  v459[2] = __49__PPScoreInterpreter__runOperator_arity_context___block_invoke;
                  v459[3] = &unk_2789721B8;
                  v459[4] = buf;
                  [(std::__shared_weak_count *)v371 enumerateValuesAndCountsUsingBlock:v459];
                  v457[0] = *(*&buf[8] + 24);
                  v458 = 0;
                  push(v6, v457);
                  PPScoreInterpreterValue::~PPScoreInterpreterValue(v457);
                  _Block_object_dispose(buf, 8);
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v377 = v28;
                    v455[0] = [(std::__shared_weak_count *)v377 count];
                    v456 = 0;
                    push(v6, v455);
                    PPScoreInterpreterValue::~PPScoreInterpreterValue(v455);
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v385 = v28;
                      v453[0] = [(std::__shared_weak_count *)v385 length];
                      v454 = 0;
                      push(v6, v453);
                      PPScoreInterpreterValue::~PPScoreInterpreterValue(v453);
                    }

                    else
                    {
                      v386 = pp_score_interpreter_log_handle();
                      if (os_log_type_enabled(v386, OS_LOG_TYPE_ERROR))
                      {
                        v415 = objc_opt_class();
                        v416 = NSStringFromClass(v415);
                        *buf = 138412290;
                        *&buf[4] = v416;
                        _os_log_error_impl(&dword_23224A000, v386, OS_LOG_TYPE_ERROR, "Unhandled object type of %@ encountered in PPOperator<Distinct/Total>ItemCount", buf, 0xCu);
                      }

                      v451[0] = 0xC0DE9A4000000000;
                      v452 = 0;
                      push(v6, v451);
                      PPScoreInterpreterValue::~PPScoreInterpreterValue(v451);
                    }
                  }
                }
              }
            }

            goto LABEL_557;
          }

          goto LABEL_553;
        }

        v294 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v646;
          _os_log_error_impl(&dword_23224A000, v294, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in 2nd argument to PPOperator<Distinct/Total>ItemCount", buf, 8u);
        }

        v482[0] = 0xC0DE9A4000000000;
        v483 = 0;
        push(v6, v482);
        v293 = v482;
      }

      else
      {
        v484[0] = 0x3FF0000000000000;
        v485 = 0;
        push(v6, v484);
        v293 = v484;
      }

      PPScoreInterpreterValue::~PPScoreInterpreterValue(v293);
      goto LABEL_557;
    case 35:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v435[0] = 0xC0DE9A4000000000;
        v436 = 0;
        push(v6, v435);
        v9 = v435;
        goto LABEL_558;
      }

      v201 = *v6->_stack.__ptr_;
      v202 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v201) >> 3);
      v203 = v202 - arity;
      if (v202 <= v202 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v204 = PPScoreInterpreterValue::getObject((v201 + 24 * v203));
      v205 = v203 + 1;
      memset(buf, 0, 24);
      v206 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v206) >> 3) <= v203 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v207 = v203 + 2;
      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v206 + 24 * v205));
      v646 = 0;
      v645 = 0uLL;
      v208 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v208) >> 3) <= v207)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(&v645, (v208 + 24 * v207));
      drop(v6, arity);
      if (!v204)
      {
        goto LABEL_473;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v209 = v204;
      }

      else
      {
        v322 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
        {
          v382 = objc_opt_class();
          v383 = NSStringFromClass(v382);
          LODWORD(v644) = 138412290;
          *(&v644 + 4) = v383;
          _os_log_error_impl(&dword_23224A000, v322, OS_LOG_TYPE_ERROR, "PPOperatorAddToDictionary was passed an existingDictObj of the wrong type: %@", &v644, 0xCu);
        }

LABEL_473:
        v209 = objc_opt_new();
      }

      v323 = v209;
      if (v646 == 2)
      {
        v324 = PPScoreInterpreterValue::getObject(&v645);
      }

      else if (v646 == 1)
      {
        v324 = PPScoreInterpreterValue::getNumericArray(&v645);
      }

      else if (v646)
      {
        v340 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v340, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v644) = 67109120;
          DWORD1(v644) = v646;
          _os_log_error_impl(&dword_23224A000, v340, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in PPOperatorAddToDictionary", &v644, 8u);
        }

        v341 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v341, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v644) = 0;
          _os_log_error_impl(&dword_23224A000, v341, OS_LOG_TYPE_ERROR, "Attempted to store nil object value in PPOperatorAddToDictionary", &v644, 2u);
        }

        v324 = objc_opt_new();
      }

      else
      {
        v324 = [MEMORY[0x277CCABB0] numberWithDouble:PPScoreInterpreterValue::getDouble(&v645)];
      }

      v342 = v324;
      if (buf[16] != 2)
      {
        if (!buf[16])
        {
          v343 = [MEMORY[0x277CCABB0] numberWithDouble:PPScoreInterpreterValue::getDouble(buf)];
          goto LABEL_526;
        }

        v345 = pp_score_interpreter_log_handle();
        if (!os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_525;
        }

        LODWORD(v644) = 67109120;
        DWORD1(v644) = buf[16];
        v366 = "Attempted to store invalid key of type %d in PPOperatorAddToDictionary";
        v367 = v345;
        v368 = 8;
LABEL_615:
        _os_log_error_impl(&dword_23224A000, v367, OS_LOG_TYPE_ERROR, v366, &v644, v368);
        goto LABEL_525;
      }

      v344 = PPScoreInterpreterValue::getObject(buf);
      if (v344)
      {
        goto LABEL_527;
      }

      if ([objc_opt_class() conformsToProtocol:&unk_284788E50])
      {
        v344 = 0;
        goto LABEL_527;
      }

      v345 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v644) = 0;
        v366 = "Attempted to store nil object key in PPOperatorAddToDictionary";
        v367 = v345;
        v368 = 2;
        goto LABEL_615;
      }

LABEL_525:

      v343 = objc_opt_new();
LABEL_526:
      v344 = v343;
LABEL_527:
      [v323 setObject:v342 forKeyedSubscript:v344];
      PPScoreInterpreterValue::PPScoreInterpreterValue(v434, &v645);
      push(v6, v434);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v434);

      PPScoreInterpreterValue::~PPScoreInterpreterValue(&v645);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);

LABEL_559:
      return;
    case 36:
      goto LABEL_22;
    case 37:
      v7 = 1;
      goto LABEL_22;
    case 38:
      v7 = 2;
LABEL_22:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v445[0] = 0xC0DE9A4000000000;
        v446 = 0;
        push(v6, v445);
        v9 = v445;
        goto LABEL_558;
      }

      v10 = *v6->_stack.__ptr_;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v10) >> 3);
      v12 = v11 - arity;
      if (v11 <= v11 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = PPScoreInterpreterValue::getObject((v10 + 24 * v12));
      memset(buf, 0, 24);
      v14 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v14) >> 3) <= v12 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v14 + 24 * (v12 + 1)));
      drop(v6, arity);
      if (buf[16])
      {
        if (buf[16] != 2)
        {
          v290 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v645) = 67109120;
            DWORD1(v645) = buf[16];
            _os_log_error_impl(&dword_23224A000, v290, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in 2nd argument to PPOperator<Type>ForKey", &v645, 8u);
          }

          v16 = 0;
          goto LABEL_481;
        }

        PPScoreInterpreterValue::getObject(buf);
        v16 = v15 = -31337.0;
      }

      else
      {
        v15 = PPScoreInterpreterValue::getDouble(buf);
        v16 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v290 = v13;
        if (v15 != -31337.0)
        {
          v297 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          v291 = [v290 objectForKeyedSubscript:v297];

          goto LABEL_415;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v291 = [v290 objectForKeyedSubscript:v16];
LABEL_415:

          if (v7 != 1)
          {
            if (!v7)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v291 doubleValue];
                v443[0] = v298;
                v444 = 0;
                v299 = v443;
                push(v6, v443);
LABEL_564:
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v299);

                PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
                goto LABEL_559;
              }

              v351 = pp_score_interpreter_log_handle();
              if (os_log_type_enabled(v351, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v645) = 138412290;
                *(&v645 + 4) = v290;
                _os_log_error_impl(&dword_23224A000, v351, OS_LOG_TYPE_ERROR, "Invalid dictionary object (expected NSNumber) passed to PPOperator<Type>ForKey: %@", &v645, 0xCu);
              }

LABEL_563:
              v440[0] = 0xC0DE9A4000000000;
              v441 = 0;
              v299 = v440;
              push(v6, v440);
              goto LABEL_564;
            }

            v346 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v346, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v645) = 67109120;
              DWORD1(v645) = v7;
              _os_log_error_impl(&dword_23224A000, v346, OS_LOG_TYPE_ERROR, "Invalid type of %d requested from PPOperator<Type>ForKey", &v645, 8u);
            }

LABEL_539:
            v438 = 2;
            v437[0] = 0;
            v299 = v437;
            push(v6, v437);
            goto LABEL_564;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            PPScoreInterpreterValue::PPScoreInterpreterValue(v442, v291);
          }

          v352 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v352, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v645) = 138412290;
            *(&v645 + 4) = v290;
            _os_log_error_impl(&dword_23224A000, v352, OS_LOG_TYPE_ERROR, "Invalid dictionary object (expected NSArray) passed to PPOperator<Type>ForKey: %@", &v645, 0xCu);
          }

LABEL_483:
          PPScoreInterpreterValue::PPScoreInterpreterValue(v439, MEMORY[0x277CBEBF8]);
        }

        v325 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 138412290;
          *(&v645 + 4) = v16;
          _os_log_error_impl(&dword_23224A000, v325, OS_LOG_TYPE_ERROR, "Invalid key passed to PPOperator<Type>ForKey: %@", &v645, 0xCu);
        }
      }

      else
      {
        v290 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 138412290;
          *(&v645 + 4) = v13;
          _os_log_error_impl(&dword_23224A000, v290, OS_LOG_TYPE_ERROR, "Invalid dictionary object passed to PPOperator<Type>ForKey: %@", &v645, 0xCu);
        }
      }

LABEL_481:

      v291 = 0;
      if (v7 == 2)
      {
        goto LABEL_539;
      }

      if (v7 != 1)
      {
        goto LABEL_563;
      }

      goto LABEL_483;
    case 39:
      if (shouldReturnUndefined(contextCopy, 3uLL))
      {
        drop(v6, arity);
        v432[0] = 0xC0DE9A4000000000;
        v433 = 0;
        push(v6, v432);
        v9 = v432;
      }

      else
      {
        v46 = *v6->_stack.__ptr_;
        v47 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v46) >> 3);
        v48 = v47 - arity;
        if (v47 <= v47 - arity)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v49 = PPScoreInterpreterValue::getDouble((v46 + 24 * v48));
        v50 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v50) >> 3) <= v48 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v51 = v49;
        v52 = PPScoreInterpreterValue::getDouble((v50 + 24 * (v48 + 1)));
        v53 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v53) >> 3) <= v48 + 2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v54 = v52;
        v55 = PPScoreInterpreterValue::getDouble((v53 + 24 * (v48 + 2)));
        drop(v6, arity);
        v430[0] = v51 * exp(-fabs(v54 * v55));
        v431 = 0;
        push(v6, v430);
        v9 = v430;
      }

      goto LABEL_558;
    case 40:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v428[0] = 0xC0DE9A4000000000;
        v429 = 0;
        push(v6, v428);
        v9 = v428;
        goto LABEL_558;
      }

      v56 = *v6->_stack.__ptr_;
      v57 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v56) >> 3);
      if (v57 <= v57 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v58 = PPScoreInterpreterValue::getObject((v56 + 24 * (v57 - arity)));
      drop(v6, arity);
      v59 = v58;
      [v59 timeIntervalSince1970];
      v426[0] = v60;
      v427 = 0;
      push(v6, v426);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v426);

      goto LABEL_559;
    case 41:
      if (shouldReturnUndefined(contextCopy, 1uLL))
      {
        drop(v6, arity);
        v424[0] = 0xC0DE9A4000000000;
        v425 = 0;
        push(v6, v424);
        v9 = v424;
        goto LABEL_558;
      }

      v79 = *v6->_stack.__ptr_;
      v80 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v79) >> 3);
      if (v80 <= v80 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v81 = PPScoreInterpreterValue::getObject((v79 + 24 * (v80 - arity)));
      drop(v6, arity);
      v82 = v81;
      memset(v642, 0, sizeof(v642));
      memset(buf, 0, sizeof(buf));
      v83 = -1.0;
      if (v82 && ([MEMORY[0x277D3A578] localizedTimeStructForDate:v82 tm:buf] & 1) != 0)
      {
        v83 = (*&buf[24] + 1);
      }

      *v422 = v83;
      v423 = 0;
      push(v6, v422);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v422);

      goto LABEL_559;
    case 42:
      if (shouldReturnUndefined(contextCopy, 2uLL))
      {
        drop(v6, arity);
        v420[0] = 0xC0DE9A4000000000;
        v421 = 0;
        push(v6, v420);
        v9 = v420;
        goto LABEL_558;
      }

      v30 = *v6->_stack.__ptr_;
      v31 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v30) >> 3);
      v32 = v31 - arity;
      if (v31 <= v31 - arity)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v33 = PPScoreInterpreterValue::getObject((v30 + 24 * v32));
      v34 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v34) >> 3) <= v32 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v35 = PPScoreInterpreterValue::getDouble((v34 + 24 * (v32 + 1)));
      drop(v6, arity);
      v36 = v33;
      memset(v642, 0, sizeof(v642));
      memset(buf, 0, sizeof(buf));
      v37 = -1.0;
      if (v36 && ([MEMORY[0x277D3A578] localizedTimeStructForDate:v36 tm:buf] & 1) != 0)
      {
        v37 = ((3600 * *&buf[8] + 60 * *&buf[4] + *buf) / (86400 / v35));
      }

      *v418 = v37;
      v419 = 0;
      push(v6, v418);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v418);

      goto LABEL_559;
    default:
      v417 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v417, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = operator;
        _os_log_error_impl(&dword_23224A000, v417, OS_LOG_TYPE_ERROR, "Undefined operator of value %tu", buf, 0xCu);
      }

      __break(1u);
      goto LABEL_643;
  }
}

void __47__PPScoreInterpreter_cleanupReusableComponents__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
}

- (void)evaluateWithPreviousStageSubscores:(id)subscores scoreInputInitializationBlock:(id)block scoreInputAssignmentBlock:(id)assignmentBlock outputBlock:(id)outputBlock
{
  subscoresCopy = subscores;
  blockCopy = block;
  assignmentBlockCopy = assignmentBlock;
  outputBlockCopy = outputBlock;
  v14 = objc_autoreleasePoolPush();
  reusableContext = self->_reusableContext;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __125__PPScoreInterpreter_evaluateWithPreviousStageSubscores_scoreInputInitializationBlock_scoreInputAssignmentBlock_outputBlock___block_invoke;
  v20[3] = &unk_278972170;
  v20[4] = self;
  v16 = blockCopy;
  v22 = v16;
  v17 = subscoresCopy;
  v21 = v17;
  v18 = assignmentBlockCopy;
  v23 = v18;
  v19 = outputBlockCopy;
  v24 = v19;
  [(_PASLock *)reusableContext runWithLockAcquired:v20];

  objc_autoreleasePoolPop(v14);
}

void __125__PPScoreInterpreter_evaluateWithPreviousStageSubscores_scoreInputInitializationBlock_scoreInputAssignmentBlock_outputBlock___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    v5 = v4[4];
    v6 = v4[3];
    v4[3] = v5;
  }

  else
  {
    v6 = *(*(*(a1 + 32) + 8) + 16);
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 count];

    v9 = [v6 objectAtIndexedSubscript:1];
    v10 = [v9 count];

    v11 = [v6 objectAtIndexedSubscript:2];
    v12 = [v11 count];

    v13 = (*(*(a1 + 48) + 16))();
    v14 = [[PPScoreInterpreterCtx alloc] initWithScoreInputs:v13 previousSubscores:*(a1 + 40) scalarSubscoreCount:v8 arraySubscoreCount:v10 objectSubscoreCount:v12];
    v15 = v3[1];
    v3[1] = v14;
  }

  (*(*(a1 + 56) + 16))();
  [(PPScoreInterpreter *)*(a1 + 32) evaluateScoresWithContext:?];
  if (*(*(v3[1] + 1) + 8) != **(v3[1] + 1))
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((*(*(v3[1] + 1) + 8) - **(v3[1] + 1)) >> 3);
      v19 = 134217984;
      v20 = v18;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "%lu items left on score interpreter stack", &v19, 0xCu);
    }
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    (*(v17 + 16))(v17, *(v3[1] + 4));
  }
}

- (PPScoreInterpreter)initWithBytecode:(id)bytecode scoreInputSet:(id)set
{
  bytecodeCopy = bytecode;
  setCopy = set;
  v16.receiver = self;
  v16.super_class = PPScoreInterpreter;
  v9 = [(PPScoreInterpreter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bytecode, bytecode);
    objc_storeStrong(&v10->_scoreInputSet, set);
    v11 = objc_alloc(MEMORY[0x277D425F8]);
    v12 = objc_opt_new();
    v13 = [v11 initWithGuardedData:v12];
    reusableContext = v10->_reusableContext;
    v10->_reusableContext = v13;
  }

  return v10;
}

- (PPScoreInterpreter)initWithParseRoot:(id)root scalarSubscoreCount:(unint64_t)count arraySubscoreCount:(unint64_t)subscoreCount objectSubscoreCount:(unint64_t)objectSubscoreCount
{
  rootCopy = root;
  v11 = rootCopy;
  if (self)
  {
    if (!rootCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithParseRoot_scalarSubscoreCount_arraySubscoreCount_objectSubscoreCount_scoreInputSet_ object:self file:@"PPScoreInterpreter.mm" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"root"}];
    }

    v12 = [[PPScoreInterpreterBytecode alloc] initWithParseRoot:v11 scalarSubscoreCount:count arraySubscoreCount:subscoreCount objectSubscoreCount:objectSubscoreCount];
    self = [(PPScoreInterpreter *)self initWithBytecode:v12 scoreInputSet:0];
  }

  return self;
}

+ (id)scoreInterpreterFromFactorName:(id)name namespaceName:(id)namespaceName
{
  v5 = [PPScoreInterpreterBytecode bytecodeFromFactorName:name namespaceName:namespaceName];
  if (v5)
  {
    v6 = [[self alloc] initWithBytecode:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)scoreInterpreterFromAsset:(id)asset
{
  assetCopy = asset;
  v5 = [self alloc];
  v6 = [PPScoreInterpreterBytecode bytecodeFromAsset:assetCopy];
  v7 = [v5 initWithBytecode:v6];

  return v7;
}

@end