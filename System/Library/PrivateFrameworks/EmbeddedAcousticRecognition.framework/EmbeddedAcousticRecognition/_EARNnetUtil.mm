@interface _EARNnetUtil
+ (id)doBackPropWithNnetModelFile:(id)file inputFeatureVector:(id)vector inputTargetVector:(id)targetVector inputLearningRate:(float)rate inputFreezeComponents:(id)components inputNumLocalIterations:(int)iterations inputGradNormFactor:(float)factor inputGradNormType:(id)self0 inputBatchSize:(float)self1 inputObjectiveFunction:(id)self2 outTrainingLoss:(float *)self3 outModelLayersUpdated:(id *)self4;
+ (id)doBackPropWithNnetModelFile:(id)file inputFeatureVector:(id)vector inputTargetVector:(id)targetVector inputLearningRate:(float)rate inputFreezeComponents:(id)components inputNumLocalIterations:(int)iterations inputGradNormFactor:(float)factor inputGradNormType:(id)self0 inputBatchSize:(float)self1 inputObjectiveFunction:(id)self2 outTrainingLosses:(id *)self3 outModelLayersUpdated:(id *)self4;
+ (void)initialize;
@end

@implementation _EARNnetUtil

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

+ (id)doBackPropWithNnetModelFile:(id)file inputFeatureVector:(id)vector inputTargetVector:(id)targetVector inputLearningRate:(float)rate inputFreezeComponents:(id)components inputNumLocalIterations:(int)iterations inputGradNormFactor:(float)factor inputGradNormType:(id)self0 inputBatchSize:(float)self1 inputObjectiveFunction:(id)self2 outTrainingLoss:(float *)self3 outModelLayersUpdated:(id *)self4
{
  v19 = 0;
  v14 = [_EARNnetUtil doBackPropWithNnetModelFile:"doBackPropWithNnetModelFile:inputFeatureVector:inputTargetVector:inputLearningRate:inputFreezeComponents:inputNumLocalIterations:inputGradNormFactor:inputGradNormType:inputBatchSize:inputObjectiveFunction:outTrainingLosses:outModelLayersUpdated:" inputFeatureVector:file inputTargetVector:vector inputLearningRate:targetVector inputFreezeComponents:components inputNumLocalIterations:*&iterations inputGradNormFactor:type inputGradNormType:function inputBatchSize:&v19 inputObjectiveFunction:updated outTrainingLosses:? outModelLayersUpdated:?];
  v15 = v19;
  lastObject = [v15 lastObject];
  [lastObject floatValue];
  *loss = v17;

  return v14;
}

+ (id)doBackPropWithNnetModelFile:(id)file inputFeatureVector:(id)vector inputTargetVector:(id)targetVector inputLearningRate:(float)rate inputFreezeComponents:(id)components inputNumLocalIterations:(int)iterations inputGradNormFactor:(float)factor inputGradNormType:(id)self0 inputBatchSize:(float)self1 inputObjectiveFunction:(id)self2 outTrainingLosses:(id *)self3 outModelLayersUpdated:(id *)self4
{
  v125 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  vectorCopy = vector;
  targetVectorCopy = targetVector;
  componentsCopy = components;
  typeCopy = type;
  functionCopy = function;
  memset(v100, 0, sizeof(v100));
  memset(v99, 0, sizeof(v99));
  memset(v98, 0, sizeof(v98));
  v96 = 0;
  v97 = 0;
  v95 = 0;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = vectorCopy;
  v22 = [obj countByEnumeratingWithState:&v113 objects:v121 count:16];
  if (v22)
  {
    v79 = *v114;
    do
    {
      v23 = 0;
      v81 = v22;
      do
      {
        if (*v114 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v113 + 1) + 8 * v23);
        *&v110 = 0;
        __src[0] = 0;
        __src[1] = 0;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v117 objects:&v123 count:16];
        v83 = v23;
        if (v26)
        {
          v27 = *v118;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v118 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v117 + 1) + 8 * i);
              [v29 floatValue];
              v31 = __src[1];
              if (__src[1] >= v110)
              {
                v33 = __src[0];
                v34 = __src[1] - __src[0];
                v35 = (__src[1] - __src[0]) >> 2;
                v36 = v35 + 1;
                if ((v35 + 1) >> 62)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v37 = v110 - __src[0];
                if ((v110 - __src[0]) >> 1 > v36)
                {
                  v36 = v37 >> 1;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v38 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v38);
                }

                *(4 * v35) = v30;
                v32 = (4 * v35 + 4);
                memcpy(0, v33, v34);
                v39 = __src[0];
                __src[0] = 0;
                __src[1] = v32;
                *&v110 = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *__src[1] = v30;
                v32 = v31 + 4;
              }

              __src[1] = v32;
            }

            v26 = [v25 countByEnumeratingWithState:&v117 objects:&v123 count:16];
          }

          while (v26);
        }

        std::vector<std::vector<float>>::push_back[abi:ne200100](&v95, __src);
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v23 = v83 + 1;
      }

      while (v83 + 1 != v81);
      v22 = [obj countByEnumeratingWithState:&v113 objects:v121 count:16];
    }

    while (v22);
  }

  v40 = targetVectorCopy;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v76 = v40;
  v41 = [v76 countByEnumeratingWithState:&v102 objects:&v117 count:16];
  if (v41)
  {
    v68 = *v103;
    do
    {
      v42 = 0;
      v67 = v41;
      do
      {
        if (*v103 != v68)
        {
          objc_enumerationMutation(v76);
        }

        v70 = v42;
        v43 = *(*(&v102 + 1) + 8 * v42);
        memset(v101, 0, sizeof(v101));
        *__src = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v77 = v43;
        v44 = [v77 countByEnumeratingWithState:__src objects:v121 count:16];
        if (v44)
        {
          v80 = *v110;
          do
          {
            v45 = 0;
            v82 = v44;
            do
            {
              if (*v110 != v80)
              {
                objc_enumerationMutation(v77);
              }

              v46 = *(__src[1] + v45);
              v108 = 0;
              __p = 0;
              v107 = 0;
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v47 = v46;
              v48 = [v47 countByEnumeratingWithState:&v113 objects:&v123 count:16];
              v84 = v45;
              if (v48)
              {
                v49 = 0;
                v50 = *v114;
                do
                {
                  for (j = 0; j != v48; ++j)
                  {
                    if (*v114 != v50)
                    {
                      objc_enumerationMutation(v47);
                    }

                    v52 = *(*(&v113 + 1) + 8 * j);
                    [v52 floatValue];
                    v54 = v107;
                    if (v107 >= v108)
                    {
                      v56 = (v107 - __p) >> 3;
                      v57 = v56 + 1;
                      if ((v56 + 1) >> 61)
                      {
                        std::vector<int>::__throw_length_error[abi:ne200100]();
                      }

                      v58 = v108 - __p;
                      if ((v108 - __p) >> 2 > v57)
                      {
                        v57 = v58 >> 2;
                      }

                      if (v58 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v59 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v59 = v57;
                      }

                      if (v59)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v59);
                      }

                      v60 = (8 * v56);
                      *v60 = v49;
                      v60[1] = v53;
                      v55 = 8 * v56 + 8;
                      v61 = (8 * v56 - (v107 - __p));
                      memcpy(v60 - (v107 - __p), __p, v107 - __p);
                      v62 = __p;
                      __p = v61;
                      v107 = v55;
                      v108 = 0;
                      if (v62)
                      {
                        operator delete(v62);
                      }
                    }

                    else
                    {
                      *v107 = v49;
                      *(v54 + 1) = v53;
                      v55 = (v54 + 8);
                    }

                    v107 = v55;

                    ++v49;
                  }

                  v48 = [v47 countByEnumeratingWithState:&v113 objects:&v123 count:16];
                }

                while (v48);
              }

              std::vector<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc>>>::push_back[abi:ne200100](v101, &__p);
              if (__p)
              {
                v107 = __p;
                operator delete(__p);
              }

              v45 = v84 + 1;
            }

            while (v84 + 1 != v82);
            v44 = [v77 countByEnumeratingWithState:__src objects:v121 count:16];
          }

          while (v44);
        }

        std::vector<std::vector<std::vector<unsigned long>>>::push_back[abi:ne200100](&v92, v101);
        v123 = v101;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v123);

        v42 = v70 + 1;
      }

      while (v70 + 1 != v67);
      v41 = [v76 countByEnumeratingWithState:&v102 objects:&v117 count:16];
    }

    while (v41);
  }

  v123 = &unk_1F2D279F8;
  *v124 = xmmword_1B5AE0070;
  *&v124[16] = -1082130432;
  *&v124[20] = 0x100000003;
  *&v124[28] = 0;
  v124[30] = 0;
  kaldi::nnet1::GradientNormalizationParams::GradientNormalizationParams(&v117);
  *v124 = rate;
  v124[28] = 1;
  *&v117 = factor;
  if (typeCopy)
  {
    objc_msgSend_ear_toString(typeCopy);
  }

  else
  {
    v121[1] = 0;
    v121[0] = 0;
    v122 = 0;
  }

  kaldi::nnet1::Component::MarkerToGradientNormType(v121);
  DWORD1(v117) = v63;
  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121[0]);
  }

  BYTE9(v117) = 0;
  v90 = &unk_1F2D279F8;
  v91[0] = *v124;
  *(v91 + 15) = *&v124[15];
  v64 = v117;
  v65 = DWORD2(v117);
  if (functionCopy)
  {
    objc_msgSend_ear_toString(functionCopy);
    if (componentsCopy)
    {
LABEL_71:
      objc_msgSend_ear_toString(componentsCopy);
      goto LABEL_74;
    }
  }

  else
  {
    memset(v89, 0, sizeof(v89));
    if (componentsCopy)
    {
      goto LABEL_71;
    }
  }

  memset(v88, 0, sizeof(v88));
LABEL_74:
  memset(v87, 0, sizeof(v87));
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v87, v95, v96, 0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3));
  memset(v86, 0, sizeof(v86));
  std::vector<std::vector<std::vector<std::pair<int,float>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::pair<int,float>>>*,std::vector<std::vector<std::pair<int,float>>>*>(v86, v92, v93, 0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 3));
  if (fileCopy)
  {
    objc_msgSend_ear_toString(fileCopy);
  }

  else
  {
    memset(v85, 0, sizeof(v85));
  }

  kaldi::nnet1::DoBackProp(&v90, v64, v65, v89, v88, iterations, v87, v86, size, v85, v100, v98, v99);
}

@end