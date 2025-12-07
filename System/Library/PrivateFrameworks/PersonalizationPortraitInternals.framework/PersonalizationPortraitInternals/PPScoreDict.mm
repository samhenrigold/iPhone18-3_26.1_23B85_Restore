@interface PPScoreDict
- (NSSet)featureNames;
- (PPScoreDict)initWithScoreInputSet:(id)set;
- (float)scalarValueForIndex:(unint64_t)index;
- (id).cxx_construct;
- (id)arrayValueDictionary;
- (id)arrayValueForIndex:(unint64_t)index;
- (id)description;
- (id)featureValueForName:(id)name;
- (id)initWithScalarValueCount:(unint64_t)count arrayValueCount:(uint64_t)valueCount objectCount:(void *)objectCount scoreInputSet:;
- (id)objectDictionary;
- (id)objectForIndex:(unint64_t)index;
- (id)scalarValueDictionary;
- (shared_ptr<std::vector<float>>)arraySharedPtrForIndex:(unint64_t)index;
- (unint64_t)arrayValueCount;
- (unint64_t)objectCount;
- (unint64_t)scalarValueCount;
- (void)setArraySharedPtr:(shared_ptr<std:(unint64_t)ptr :vector<float>>)a3 forIndex:;
- (void)setObject:(id)object forIndex:(unint64_t)index;
- (void)setScalarValue:(float)value forIndex:(unint64_t)index;
@end

@implementation PPScoreDict

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_scoreInputSet)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    scalarValueDictionary = [(PPScoreDict *)self scalarValueDictionary];
    arrayValueDictionary = [(PPScoreDict *)self arrayValueDictionary];
    objectDictionary = [(PPScoreDict *)self objectDictionary];
    v7 = [v3 initWithFormat:@"PPScoreDict: %@\n%@\n%@\n", scalarValueDictionary, arrayValueDictionary, objectDictionary];
  }

  else
  {
    v8 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    featureNames = [(PPScoreDict *)self featureNames];
    v10 = [featureNames countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(featureNames);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [(PPScoreDict *)self featureValueForName:v13];
          [v8 setObject:v14 forKeyedSubscript:v13];
        }

        v10 = [featureNames countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PPScoreDict: %@\n", v8];
  }

  return v7;
}

- (id)objectDictionary
{
  v3 = objc_opt_new();
  if ([(PPBaseScoreInputSet *)self->_scoreInputSet objectScoreIndexUpperBound])
  {
    for (i = [(PPBaseScoreInputSet *)self->_scoreInputSet minObjectScoreIndex]; i < [(PPBaseScoreInputSet *)self->_scoreInputSet objectScoreIndexUpperBound]; ++i)
    {
      v5 = [(PPScoreDict *)self objectForIndex:i];
      v6 = [(PPBaseScoreInputSet *)self->_scoreInputSet nameForObjectScoreIndex:i];
      [v3 setObject:v5 forKeyedSubscript:v6];
    }
  }

  v7 = [v3 copy];

  return v7;
}

- (id)arrayValueDictionary
{
  v3 = objc_opt_new();
  if ([(PPBaseScoreInputSet *)self->_scoreInputSet arrayScoreIndexUpperBound])
  {
    for (i = [(PPBaseScoreInputSet *)self->_scoreInputSet minArrayScoreIndex]; i < [(PPBaseScoreInputSet *)self->_scoreInputSet arrayScoreIndexUpperBound]; ++i)
    {
      v5 = [(PPScoreDict *)self arrayValueForIndex:i];
      v6 = [(PPBaseScoreInputSet *)self->_scoreInputSet nameForArrayScoreIndex:i];
      [v3 setObject:v5 forKeyedSubscript:v6];
    }
  }

  v7 = [v3 copy];

  return v7;
}

- (id)scalarValueDictionary
{
  v3 = objc_opt_new();
  if ([(PPBaseScoreInputSet *)self->_scoreInputSet scalarScoreIndexUpperBound])
  {
    for (i = [(PPBaseScoreInputSet *)self->_scoreInputSet minScalarScoreIndex]; i < [(PPBaseScoreInputSet *)self->_scoreInputSet scalarScoreIndexUpperBound]; ++i)
    {
      v5 = MEMORY[0x277CCABB0];
      [(PPScoreDict *)self scalarValueForIndex:i];
      v6 = [v5 numberWithFloat:?];
      v7 = [(PPBaseScoreInputSet *)self->_scoreInputSet nameForScalarScoreIndex:i];
      [v3 setObject:v6 forKeyedSubscript:v7];
    }
  }

  v8 = [v3 copy];

  return v8;
}

- (id)featureValueForName:(id)name
{
  v66 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  context = objc_autoreleasePoolPush();
  v5 = [nameCopy componentsSeparatedByString:@"_"];
  if ([v5 count] <= 1)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPScoreDict: invalid feature name passed.", buf, 2u);
    }

    goto LABEL_5;
  }

  v8 = [v5 objectAtIndexedSubscript:1];
  integerValue = [v8 integerValue];

  if ([nameCopy hasPrefix:@"scalar_"])
  {
    v10 = MEMORY[0x277CCABB0];
    [(PPScoreDict *)self scalarValueForIndex:integerValue];
    v11 = [v10 numberWithFloat:?];
    v12 = [PPCoreMLUtils multiArrayFeatureValueForNumber:v11];
LABEL_11:
    v7 = v12;

    goto LABEL_12;
  }

  if ([nameCopy hasPrefix:@"array_"])
  {
    v13 = [(PPScoreDict *)self arrayValueForIndex:integerValue];
    v11 = [PPCoreMLUtils multiArrayForArray:v13];

    if (v11)
    {
      v12 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v11];
      goto LABEL_11;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_12;
  }

  if (![nameCopy hasPrefix:@"object_"])
  {
    goto LABEL_5;
  }

  v48 = [(PPScoreDict *)self objectForIndex:integerValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v48;
      v17 = objc_opt_new();
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v15 = v47;
      v18 = [v15 countByEnumeratingWithState:&v54 objects:v59 count:16, v47];
      if (v18)
      {
        v19 = *v55;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v55 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v54 + 1) + 8 * i);
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject countForObject:](v15, "countForObject:", v21)}];
            [v17 setObject:v22 forKeyedSubscript:v21];
          }

          v18 = [v15 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v18);
      }

      v53 = 0;
      v7 = [MEMORY[0x277CBFEF8] featureValueWithDictionary:v17 error:&v53];
      v23 = v53;
      if (!v7)
      {
        v24 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = v38;
          v40 = &stru_284759D38;
          *buf = 138412802;
          if (v23)
          {
            v40 = v23;
          }

          v61 = v38;
          v62 = 2112;
          v63 = nameCopy;
          v64 = 2112;
          v65 = v40;
          _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "Failed to log %@ value for %@: %@", buf, 0x20u);
        }
      }

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v48;
      v25 = objc_opt_new();
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __35__PPScoreDict_featureValueForName___block_invoke;
      v51[3] = &unk_278973CD8;
      v26 = v25;
      v52 = v26;
      [v15 enumerateValuesAndCountsUsingBlock:v51];
      v50 = 0;
      v7 = [MEMORY[0x277CBFEF8] featureValueWithDictionary:v26 error:&v50];
      v27 = v50;
      if (!v7)
      {
        v28 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v43 = v42;
          v44 = &stru_284759D38;
          *buf = 138412802;
          if (v27)
          {
            v44 = v27;
          }

          v61 = v42;
          v62 = 2112;
          v63 = nameCopy;
          v64 = 2112;
          v65 = v44;
          _os_log_error_impl(&dword_23224A000, v28, OS_LOG_TYPE_ERROR, "Failed to log %@ value for %@: %@", buf, 0x20u);
        }
      }

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v48;
      if (![v15 length])
      {
        v29 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v61 = nameCopy;
          _os_log_error_impl(&dword_23224A000, v29, OS_LOG_TYPE_ERROR, "Encountered nil or empty NSString for %@", buf, 0xCu);
        }

        goto LABEL_49;
      }

      v7 = [MEMORY[0x277CBFEF8] featureValueWithString:v15];
      if (v7)
      {
        goto LABEL_38;
      }

      v29 = pp_score_interpreter_log_handle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 0;
          goto LABEL_39;
        }

        v15 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138412546;
          v61 = v32;
          v62 = 2112;
          v63 = nameCopy;
          _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "Unrecognized object type of %@ in feature %@", buf, 0x16u);
        }

        goto LABEL_20;
      }

      v15 = v48;
      v30 = MEMORY[0x277CBFEF8];
      [v15 timeIntervalSince1970];
      v7 = [v30 featureValueWithDouble:?];
      if (v7)
      {
        goto LABEL_38;
      }

      v29 = pp_score_interpreter_log_handle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }
    }

    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    *buf = 138412802;
    v61 = v46;
    v62 = 2112;
    v63 = nameCopy;
    v64 = 2112;
    v65 = &stru_284759D38;
    _os_log_error_impl(&dword_23224A000, v29, OS_LOG_TYPE_ERROR, "Failed to log %@ value for %@: %@", buf, 0x20u);

LABEL_49:
LABEL_20:
    v7 = 0;
    goto LABEL_38;
  }

  v58 = 0;
  v7 = [MEMORY[0x277CBFEF8] featureValueWithDictionary:v48 error:&v58];
  v15 = v58;
  if (!v7)
  {
    v16 = pp_score_interpreter_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = v34;
      v36 = &stru_284759D38;
      *buf = 138412802;
      if (v15)
      {
        v36 = v15;
      }

      v61 = v34;
      v62 = 2112;
      v63 = nameCopy;
      v64 = 2112;
      v65 = v36;
      _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "Failed to log %@ value for %@: %@", buf, 0x20u);
    }

    goto LABEL_20;
  }

LABEL_38:

LABEL_39:
LABEL_12:

  objc_autoreleasePoolPop(context);

  return v7;
}

void __35__PPScoreDict_featureValueForName___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:?];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (NSSet)featureNames
{
  v3 = objc_opt_new();
  for (i = 0; i < [(PPScoreDict *)self scalarValueCount]; ++i)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"scalar_%tu", i];
    [v3 addObject:v5];
  }

  for (j = 0; j < [(PPScoreDict *)self arrayValueCount]; ++j)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"array_%tu", j];
    [v3 addObject:v7];
  }

  for (k = 0; k < [(PPScoreDict *)self objectCount]; ++k)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"object_%tu", k];
    [v3 addObject:v9];
  }

  v10 = [v3 copy];

  return v10;
}

- (unint64_t)objectCount
{
  result = self->_objectStorage;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (unint64_t)arrayValueCount
{
  ptr = self->_arrayValueStorage.__ptr_;
  if (ptr)
  {
    return (ptr[1] - *ptr) >> 4;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)scalarValueCount
{
  ptr = self->_scalarValueStorage.__ptr_;
  if (ptr)
  {
    return (ptr[1] - *ptr) >> 2;
  }

  else
  {
    return 0;
  }
}

- (void)setObject:(id)object forIndex:(unint64_t)index
{
  objectCopy = object;
  v8 = objectCopy;
  if (!objectCopy)
  {
    objectCopy = [MEMORY[0x277CBEB68] null];
  }

  [(NSMutableArray *)self->_objectStorage setObject:objectCopy atIndexedSubscript:index];
  v7 = v8;
  if (!v8)
  {

    v7 = 0;
  }
}

- (id)objectForIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_objectStorage objectAtIndexedSubscript:index];
  null = [MEMORY[0x277CBEB68] null];

  if (v3 == null)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)setArraySharedPtr:(shared_ptr<std:(unint64_t)ptr :vector<float>>)a3 forIndex:
{
  v5 = *self->_arrayValueStorage.__ptr_;
  if (a3.var1 >= ((*(self->_arrayValueStorage.__ptr_ + 1) - v5) >> 4))
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = (v5 + 16 * a3.var1);
  v8 = *a3.var0;
  v7 = *(a3.var0 + 1);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[1];
  *v6 = v8;
  v6[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

- (shared_ptr<std::vector<float>>)arraySharedPtrForIndex:(unint64_t)index
{
  v4 = *self->_arrayValueStorage.__ptr_;
  if (index >= (*(self->_arrayValueStorage.__ptr_ + 1) - v4) >> 4)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(v4 + 16 * index);
  *v3 = v5;
  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (id)arrayValueForIndex:(unint64_t)index
{
  v3 = *self->_arrayValueStorage.__ptr_;
  if (index >= (*(self->_arrayValueStorage.__ptr_ + 1) - v3) >> 4)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = v3 + 16 * index;
  v6 = *v4;
  v5 = *(v4 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(v6[1] - *v6) >> 2];
  v9 = *v6;
  v10 = v6[1];
  if (*v6 != v10)
  {
    do
    {
      LODWORD(v8) = *v9;
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      [v7 addObject:v11];

      ++v9;
    }

    while (v9 != v10);
  }

  v12 = [v7 copy];

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v12;
}

- (void)setScalarValue:(float)value forIndex:(unint64_t)index
{
  v4 = *self->_scalarValueStorage.__ptr_;
  if (index >= (*(self->_scalarValueStorage.__ptr_ + 1) - v4) >> 2)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v4 + 4 * index) = value;
}

- (float)scalarValueForIndex:(unint64_t)index
{
  v3 = *self->_scalarValueStorage.__ptr_;
  if (index >= (*(self->_scalarValueStorage.__ptr_ + 1) - v3) >> 2)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v3 + 4 * index);
}

- (PPScoreDict)initWithScoreInputSet:(id)set
{
  setCopy = set;
  v5 = -[PPScoreDict initWithScalarValueCount:arrayValueCount:objectCount:scoreInputSet:](self, [setCopy scalarScoreIndexUpperBound] - objc_msgSend(setCopy, "minScalarScoreIndex"), objc_msgSend(setCopy, "arrayScoreIndexUpperBound") - objc_msgSend(setCopy, "minArrayScoreIndex"), objc_msgSend(setCopy, "objectScoreIndexUpperBound") - objc_msgSend(setCopy, "minObjectScoreIndex"), setCopy);

  return v5;
}

- (id)initWithScalarValueCount:(unint64_t)count arrayValueCount:(uint64_t)valueCount objectCount:(void *)objectCount scoreInputSet:
{
  objectCountCopy = objectCount;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = PPScoreDict;
    v11 = objc_msgSendSuper2(&v19, sel_init);
    self = v11;
    if (v11)
    {
      if (a2)
      {
        operator new();
      }

      v16 = v11[2];
      *(self + 2) = 0;
      if (v16)
      {
        std::default_delete<std::vector<float>>::operator()[abi:ne200100](v16);
      }

      if (count)
      {
        operator new();
      }

      std::unique_ptr<std::vector<std::shared_ptr<std::vector<float>>>>::reset[abi:ne200100](self + 3, 0);
      if (valueCount)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:valueCount];
        v13 = *(self + 4);
        *(self + 4) = v12;

        do
        {
          v14 = *(self + 4);
          null = [MEMORY[0x277CBEB68] null];
          [v14 addObject:null];

          --valueCount;
        }

        while (valueCount);
      }

      else
      {
        v17 = *(self + 4);
        *(self + 4) = 0;
      }

      objc_storeStrong(self + 1, objectCount);
    }
  }

  return self;
}

@end