@interface HDWorkoutBuilderStatisticsCalculators
- (HDWorkoutBuilderStatisticsCalculators)init;
- (HDWorkoutBuilderStatisticsCalculators)initWithCoder:(id)coder;
- (id)calculatorForQuantityType:(id)type activityUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateCalculatorsForActivityUUID:(id)d handler:(id)handler;
- (void)enumerateCalculatorsForQuantityType:(id)type handler:(id)handler;
- (void)enumerateCalculatorsWithHandler:(id)handler;
- (void)setCalculator:(id)calculator forQuantityType:(id)type activityUUID:(id)d;
@end

@implementation HDWorkoutBuilderStatisticsCalculators

- (HDWorkoutBuilderStatisticsCalculators)init
{
  v6.receiver = self;
  v6.super_class = HDWorkoutBuilderStatisticsCalculators;
  v2 = [(HDWorkoutBuilderStatisticsCalculators *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    calculatorsByTypeAndActivityUUID = v2->_calculatorsByTypeAndActivityUUID;
    v2->_calculatorsByTypeAndActivityUUID = v3;
  }

  return v2;
}

- (id)calculatorForQuantityType:(id)type activityUUID:(id)d
{
  calculatorsByTypeAndActivityUUID = self->_calculatorsByTypeAndActivityUUID;
  dCopy = d;
  v7 = [(NSMutableDictionary *)calculatorsByTypeAndActivityUUID objectForKeyedSubscript:type];
  v8 = [v7 objectForKeyedSubscript:dCopy];

  return v8;
}

- (void)setCalculator:(id)calculator forQuantityType:(id)type activityUUID:(id)d
{
  typeCopy = type;
  calculatorsByTypeAndActivityUUID = self->_calculatorsByTypeAndActivityUUID;
  dCopy = d;
  calculatorCopy = calculator;
  v11 = [(NSMutableDictionary *)calculatorsByTypeAndActivityUUID objectForKeyedSubscript:typeCopy];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID setObject:v12 forKeyedSubscript:typeCopy];
  }

  v13 = [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:typeCopy];
  [v13 setObject:calculatorCopy forKeyedSubscript:dCopy];
}

- (void)enumerateCalculatorsWithHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  v5 = self->_calculatorsByTypeAndActivityUUID;
  v18 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v6 = *v27;
    v20 = v5;
    v17 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v19 = v7;
        v8 = *(*(&v26 + 1) + 8 * v7);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [(NSMutableDictionary *)selfCopy->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:v8];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v22 + 1) + 8 * i);
              v15 = [(NSMutableDictionary *)selfCopy->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:v8];
              v16 = [v15 objectForKeyedSubscript:v14];
              LODWORD(v14) = handlerCopy[2](handlerCopy, v16, v8, v14);

              if (!v14)
              {

                v5 = v20;
                goto LABEL_18;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v19 + 1;
        v5 = v20;
        v6 = v17;
      }

      while (v19 + 1 != v18);
      v18 = [(NSMutableDictionary *)v20 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

LABEL_18:
}

- (void)enumerateCalculatorsForQuantityType:(id)type handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:typeCopy];
  v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v13 = [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:typeCopy];
      v14 = [v13 objectForKeyedSubscript:v12];
      LODWORD(v12) = handlerCopy[2](handlerCopy, v14, v12);

      if (!v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateCalculatorsForActivityUUID:(id)d handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_calculatorsByTypeAndActivityUUID;
  v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:v12];
        v14 = [v13 objectForKeyedSubscript:dCopy];

        if (v14 && !handlerCopy[2](handlerCopy, v14, v12))
        {

          goto LABEL_12;
        }
      }

      v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)encodeWithCoder:(id)coder
{
  calculatorsByTypeAndActivityUUID = self->_calculatorsByTypeAndActivityUUID;
  coderCopy = coder;
  v5 = [(NSMutableDictionary *)calculatorsByTypeAndActivityUUID hk_map:&__block_literal_global_205];
  [coderCopy encodeObject:v5 forKey:@"calculators"];
}

void __57__HDWorkoutBuilderStatisticsCalculators_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDWorkoutBuilderStatisticsCalculators_encodeWithCoder___block_invoke_2;
  v10[3] = &unk_27862A890;
  v11 = v6;
  v7 = v6;
  v8 = a4;
  v9 = [a3 hk_map:v10];
  v8[2](v8, v7, v9);
}

void __57__HDWorkoutBuilderStatisticsCalculators_encodeWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v13 = 0;
  v9 = [a3 archivedRepresentationWithError:&v13];
  v10 = v13;
  if (v9)
  {
    v8[2](v8, v7, v9);
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543874;
      v15 = v12;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v10;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to archive statistics calculator for type %{public}@ and activity %{public}@, %{public}@", buf, 0x20u);
    }
  }
}

- (HDWorkoutBuilderStatisticsCalculators)initWithCoder:(id)coder
{
  v59[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = HDWorkoutBuilderStatisticsCalculators;
  v5 = [(HDWorkoutBuilderStatisticsCalculators *)&v48 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v59[0] = objc_opt_class();
    v59[1] = objc_opt_class();
    v59[2] = objc_opt_class();
    v59[3] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
    v8 = [v6 setWithArray:v7];

    v36 = v8;
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"calculators"];
    v10 = 0x277CBE000uLL;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    calculatorsByTypeAndActivityUUID = v5->_calculatorsByTypeAndActivityUUID;
    v5->_calculatorsByTypeAndActivityUUID = v11;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v9;
    v32 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v32)
    {
      v13 = *v45;
      v34 = v5;
      v35 = coderCopy;
      v31 = *v45;
      do
      {
        v14 = 0;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v14;
          v15 = *(*(&v44 + 1) + 8 * v14);
          v16 = objc_alloc_init(*(v10 + 2872));
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v37 = [obj objectForKeyedSubscript:v15];
          v17 = [v37 countByEnumeratingWithState:&v40 objects:v57 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v41;
            while (2)
            {
              v20 = 0;
              do
              {
                if (*v41 != v19)
                {
                  objc_enumerationMutation(v37);
                }

                v21 = *(*(&v40 + 1) + 8 * v20);
                v22 = [obj objectForKeyedSubscript:v15];
                v23 = [v22 objectForKeyedSubscript:v21];
                v39 = 0;
                v24 = [HDStatisticsCollectionCalculator calculatorForArchivedRepresentation:v23 error:&v39];
                v25 = v39;

                if (!v24)
                {
                  _HKInitializeLogging();
                  v27 = *MEMORY[0x277CCC330];
                  v5 = v34;
                  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                  {
                    v29 = v27;
                    v30 = objc_opt_class();
                    *buf = 138544130;
                    v50 = v30;
                    v51 = 2114;
                    v52 = v15;
                    v53 = 2114;
                    v54 = v21;
                    v55 = 2114;
                    v56 = v25;
                    _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Unable to unarchive calculator for type %{public}@ and activity %{public}@: %{public}@", buf, 0x2Au);
                  }

                  v26 = 0;
                  coderCopy = v35;
                  goto LABEL_22;
                }

                [v16 setObject:v24 forKeyedSubscript:v21];

                ++v20;
              }

              while (v18 != v20);
              v18 = [v37 countByEnumeratingWithState:&v40 objects:v57 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v5 = v34;
          [(NSMutableDictionary *)v34->_calculatorsByTypeAndActivityUUID setObject:v16 forKeyedSubscript:v15];

          v14 = v33 + 1;
          coderCopy = v35;
          v10 = 0x277CBE000;
          v13 = v31;
        }

        while (v33 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v32);
    }
  }

  v26 = v5;
LABEL_22:

  return v26;
}

@end