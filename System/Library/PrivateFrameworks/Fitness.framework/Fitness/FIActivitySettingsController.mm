@interface FIActivitySettingsController
- (BOOL)_commitValue:(id)value forPropertyKey:(id)key error:(id *)error;
- (BOOL)_hasDirtyPropertyForPropertyKey:(id)key;
- (BOOL)_logAndNilError:(id *)error operationDescription:(id)description;
- (BOOL)commmitWithError:(id *)error;
- (FIActivitySettingsController)init;
- (FIActivitySettingsController)initWithHealthStore:(id)store;
- (HKQuantity)leanBodyMass;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)experienceType;
- (void)_setUncommitedValue:(id)value forPropertyKey:(id)key;
- (void)populateExistingCharacteristics;
- (void)setBiologicalSex:(int64_t)sex;
- (void)setDateOfBirth:(id)birth;
- (void)setHeight:(id)height;
- (void)setWeight:(id)weight;
- (void)setWheelchairUse:(int64_t)use;
@end

@implementation FIActivitySettingsController

- (FIActivitySettingsController)init
{
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = [(FIActivitySettingsController *)self initWithHealthStore:v3];

  return v4;
}

- (FIActivitySettingsController)initWithHealthStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = FIActivitySettingsController;
  v6 = [(FIActivitySettingsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_opt_new();
    dirtyPropertiesMap = v7->_dirtyPropertiesMap;
    v7->_dirtyPropertiesMap = v8;
  }

  return v7;
}

- (void)setDateOfBirth:(id)birth
{
  objc_storeStrong(&self->_dateOfBirth, birth);
  birthCopy = birth;
  [(FIActivitySettingsController *)self _setUncommitedValue:birthCopy forPropertyKey:@"dateOfBirth"];
}

- (void)setHeight:(id)height
{
  objc_storeStrong(&self->_height, height);
  heightCopy = height;
  [(FIActivitySettingsController *)self _setUncommitedValue:heightCopy forPropertyKey:@"height"];
}

- (void)setWeight:(id)weight
{
  objc_storeStrong(&self->_weight, weight);
  weightCopy = weight;
  [(FIActivitySettingsController *)self _setUncommitedValue:self->_weight forPropertyKey:@"weight"];
}

- (void)setBiologicalSex:(int64_t)sex
{
  self->_biologicalSex = sex;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(FIActivitySettingsController *)self _setUncommitedValue:v4 forPropertyKey:@"biologicalSexObject"];
}

- (void)setWheelchairUse:(int64_t)use
{
  self->_wheelchairUse = use;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(FIActivitySettingsController *)self _setUncommitedValue:v4 forPropertyKey:@"wheelchairUse"];
}

- (BOOL)_hasDirtyPropertyForPropertyKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_dirtyPropertiesMap objectForKeyedSubscript:key];
  v4 = v3 != 0;

  return v4;
}

- (void)_setUncommitedValue:(id)value forPropertyKey:(id)key
{
  [(NSMutableDictionary *)self->_dirtyPropertiesMap setObject:value forKeyedSubscript:key];
  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    v6 = *(updateHandler + 2);

    v6();
  }
}

- (BOOL)_commitValue:(id)value forPropertyKey:(id)key error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = keyCopy;
    _os_log_impl(&dword_24B35E000, v9, OS_LOG_TYPE_DEFAULT, "Storing property %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__4;
  v49 = __Block_byref_object_dispose__4;
  v50 = 0;
  v44[0] = @"height";
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke;
  aBlock[3] = &unk_279004ED8;
  aBlock[4] = self;
  v10 = valueCopy;
  v42 = v10;
  p_buf = &buf;
  v11 = _Block_copy(aBlock);
  v45[0] = v11;
  v44[1] = @"weight";
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_2;
  v38[3] = &unk_279004ED8;
  v38[4] = self;
  v12 = v10;
  v39 = v12;
  v40 = &buf;
  v13 = _Block_copy(v38);
  v45[1] = v13;
  v44[2] = @"dateOfBirth";
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_3;
  v34[3] = &unk_279004ED8;
  v14 = v12;
  v35 = v14;
  selfCopy = self;
  v37 = &buf;
  v15 = _Block_copy(v34);
  v45[2] = v15;
  v44[3] = @"biologicalSexObject";
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_4;
  v30[3] = &unk_279004ED8;
  v16 = v14;
  v31 = v16;
  selfCopy2 = self;
  v33 = &buf;
  v17 = _Block_copy(v30);
  v45[3] = v17;
  v44[4] = @"wheelchairUse";
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_5;
  v26[3] = &unk_279004ED8;
  v18 = v16;
  v27 = v18;
  selfCopy3 = self;
  v29 = &buf;
  v19 = _Block_copy(v26);
  v45[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];

  v21 = [v20 objectForKeyedSubscript:keyCopy];
  v22 = v21;
  if (!v21)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"No action defined for unknown property key %@", keyCopy}];
    goto LABEL_10;
  }

  (*(v21 + 16))(v21);
  if (!*(*(&buf + 1) + 40))
  {
LABEL_10:
    v23 = 1;
    goto LABEL_11;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
  {
    [FIActivitySettingsController _commitValue:forPropertyKey:error:];
  }

  v23 = 0;
  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

LABEL_11:

  _Block_object_dispose(&buf, 8);
  return v23;
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _setHeightCharacteristicQuantity:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_2(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _setBodyMassCharacteristicQuantity:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x277CBEA80] hk_canonicalDateOfBirthDateComponentsWithDate:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  [v3 _setDateOfBirthComponents:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  [v3 _setBiologicalSex:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  [v3 _setWheelchairUse:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (void)populateExistingCharacteristics
{
  healthStore = self->_healthStore;
  v37 = 0;
  v4 = [(HKHealthStore *)healthStore dateOfBirthComponentsWithError:&v37];
  v5 = v37;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    v7 = [v6 dateFromComponents:v4];
    dateOfBirth = self->_dateOfBirth;
    self->_dateOfBirth = v7;
  }

  v36 = v5;
  [(FIActivitySettingsController *)self _logAndNilError:&v36 operationDescription:@"fetch birth date"];
  v9 = v36;

  v10 = self->_healthStore;
  v35 = v9;
  v11 = [(HKHealthStore *)v10 _heightCharacteristicQuantityWithError:&v35];
  v12 = v35;

  height = self->_height;
  self->_height = v11;

  v34 = v12;
  [(FIActivitySettingsController *)self _logAndNilError:&v34 operationDescription:@"fetch height"];
  v14 = v34;

  v15 = self->_healthStore;
  v33 = v14;
  v16 = [(HKHealthStore *)v15 _bodyMassCharacteristicQuantityWithError:&v33];
  v17 = v33;

  weight = self->_weight;
  self->_weight = v16;

  v32 = v17;
  [(FIActivitySettingsController *)self _logAndNilError:&v32 operationDescription:@"fetch weight"];
  v19 = v32;

  v20 = self->_healthStore;
  v31 = v19;
  v21 = [(HKHealthStore *)v20 biologicalSexWithError:&v31];
  v22 = v31;

  self->_biologicalSex = [v21 biologicalSex];
  v30 = v22;
  [(FIActivitySettingsController *)self _logAndNilError:&v30 operationDescription:@"fetch sex"];
  v23 = v30;

  v24 = self->_healthStore;
  v29 = v23;
  v25 = [(HKHealthStore *)v24 wheelchairUseWithError:&v29];
  v26 = v29;

  self->_wheelchairUse = [v25 wheelchairUse];
  v28 = v26;
  [(FIActivitySettingsController *)self _logAndNilError:&v28 operationDescription:@"fetch wheelchair use"];
  v27 = v28;

  [(NSMutableDictionary *)self->_dirtyPropertiesMap removeAllObjects];
  if (!self->_wheelchairUse)
  {
    [(FIActivitySettingsController *)self setWheelchairUse:1];
  }
}

- (BOOL)_logAndNilError:(id *)error operationDescription:(id)description
{
  descriptionCopy = description;
  if (error)
  {
    v6 = *error == 0;
    if (*error)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
      {
        [FIActivitySettingsController _logAndNilError:operationDescription:];
      }
    }

    *error = 0;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      [FIActivitySettingsController _logAndNilError:descriptionCopy operationDescription:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)commmitWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSMutableDictionary *)self->_dirtyPropertiesMap allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v18 + 1) + 8 * v10);
        v13 = [(NSMutableDictionary *)self->_dirtyPropertiesMap objectForKeyedSubscript:v12];
        v17 = v11;
        [(FIActivitySettingsController *)self _commitValue:v13 forPropertyKey:v12 error:&v17];
        v8 = v17;

        if (error && v8)
        {
          v14 = v8;
          *error = v8;

          v15 = 0;
          goto LABEL_14;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableDictionary *)self->_dirtyPropertiesMap removeAllObjects];
  v15 = 1;
LABEL_14:

  return v15;
}

- (unint64_t)experienceType
{
  result = FIExperienceTypeWithHealthStore(self->_healthStore);
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (HKQuantity)leanBodyMass
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCBC8]];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:0];
  v5 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v6 = objc_alloc(MEMORY[0x277CCD8D0]);
  v26[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __44__FIActivitySettingsController_leanBodyMass__block_invoke;
  v17 = &unk_279004F00;
  v19 = &v20;
  v8 = v5;
  v18 = v8;
  v9 = [v6 initWithSampleType:v3 predicate:0 limit:1 sortDescriptors:v7 resultsHandler:&v14];

  [(HKHealthStore *)self->_healthStore executeQuery:v9, v14, v15, v16, v17];
  v10 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      [(FIActivitySettingsController *)v11 leanBodyMass];
    }
  }

  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
}

intptr_t __44__FIActivitySettingsController_leanBodyMass__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 lastObject];
  v5 = [v4 quantity];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FIActivitySettingsController alloc] initWithHealthStore:self->_healthStore];
  objc_storeStrong(&v4->_dateOfBirth, self->_dateOfBirth);
  objc_storeStrong(&v4->_height, self->_height);
  objc_storeStrong(&v4->_weight, self->_weight);
  v4->_biologicalSex = self->_biologicalSex;
  v4->_wheelchairUse = self->_wheelchairUse;
  v5 = [(NSMutableDictionary *)self->_dirtyPropertiesMap mutableCopy];
  dirtyPropertiesMap = v4->_dirtyPropertiesMap;
  v4->_dirtyPropertiesMap = v5;

  v7 = _Block_copy(self->_updateHandler);
  updateHandler = v4->_updateHandler;
  v4->_updateHandler = v7;

  return v4;
}

- (void)_logAndNilError:(uint64_t)a1 operationDescription:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "[HealthSettings] Internal error: no error argument passed for operation %{public}@, assuming the worst", &v2, 0xCu);
}

@end