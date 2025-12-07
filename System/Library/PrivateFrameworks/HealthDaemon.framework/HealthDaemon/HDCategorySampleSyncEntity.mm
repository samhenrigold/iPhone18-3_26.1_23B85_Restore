@interface HDCategorySampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_categoryTypesDerivedFromQuantitySamples;
+ (id)_objectWithCodable:(id)codable collection:(id)collection;
+ (id)_predicateForCategoryTypesToSync;
+ (id)_predicateForSyncSession:(id)session;
@end

@implementation HDCategorySampleSyncEntity

+ (id)_objectWithCodable:(id)codable collection:(id)collection
{
  v16 = *MEMORY[0x277D85DE8];
  codableCopy = codable;
  sample = [codableCopy sample];
  [sample dataType];

  if (_HKValidDataTypeCode())
  {
    v7 = [MEMORY[0x277CCD0B0] createWithCodable:codableCopy];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      sample2 = [codableCopy sample];
      v12 = 138543618;
      selfCopy = self;
      v14 = 2048;
      dataType = [sample2 dataType];
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignorning unknown data type code %lld", &v12, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  v70[23] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v56 = [MEMORY[0x277CCD8D8] dataTypeWithCode:95];
    v70[0] = v56;
    v54 = [MEMORY[0x277CCD8D8] dataTypeWithCode:96];
    v70[1] = v54;
    v52 = [MEMORY[0x277CCD8D8] dataTypeWithCode:91];
    v70[2] = v52;
    v51 = [MEMORY[0x277CCD8D8] dataTypeWithCode:97];
    v70[3] = v51;
    v50 = [MEMORY[0x277CCD8D8] dataTypeWithCode:90];
    v70[4] = v50;
    v49 = [MEMORY[0x277CCD8D8] dataTypeWithCode:92];
    v70[5] = v49;
    v48 = [MEMORY[0x277CCD8D8] dataTypeWithCode:243];
    v70[6] = v48;
    v47 = [MEMORY[0x277CCD8D8] dataTypeWithCode:244];
    v70[7] = v47;
    v46 = [MEMORY[0x277CCD8D8] dataTypeWithCode:157];
    v70[8] = v46;
    v45 = [MEMORY[0x277CCD8D8] dataTypeWithCode:158];
    v70[9] = v45;
    v44 = [MEMORY[0x277CCD8D8] dataTypeWithCode:159];
    v70[10] = v44;
    v43 = [MEMORY[0x277CCD8D8] dataTypeWithCode:160];
    v70[11] = v43;
    v42 = [MEMORY[0x277CCD8D8] dataTypeWithCode:161];
    v70[12] = v42;
    v41 = [MEMORY[0x277CCD8D8] dataTypeWithCode:162];
    v70[13] = v41;
    v9 = [MEMORY[0x277CCD8D8] dataTypeWithCode:163];
    v70[14] = v9;
    v10 = [MEMORY[0x277CCD8D8] dataTypeWithCode:164];
    v70[15] = v10;
    v11 = [MEMORY[0x277CCD8D8] dataTypeWithCode:165];
    v70[16] = v11;
    v12 = [MEMORY[0x277CCD8D8] dataTypeWithCode:166];
    v70[17] = v12;
    v13 = [MEMORY[0x277CCD8D8] dataTypeWithCode:167];
    v70[18] = v13;
    v14 = [MEMORY[0x277CCD8D8] dataTypeWithCode:168];
    v70[19] = v14;
    [MEMORY[0x277CCD8D8] dataTypeWithCode:169];
    v15 = v61 = dateCopy;
    v70[20] = v15;
    v16 = [MEMORY[0x277CCD8D8] dataTypeWithCode:170];
    v70[21] = v16;
    v17 = [MEMORY[0x277CCD8D8] dataTypeWithCode:171];
    v70[22] = v17;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:23];

    v18 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:63];
    v69 = v18;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];

    v19 = [MEMORY[0x277CCD8D8] dataTypeWithCode:178];
    v68[0] = v19;
    v20 = [MEMORY[0x277CCD8D8] dataTypeWithCode:199];
    v68[1] = v20;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];

    v21 = [MEMORY[0x277CCD8D8] dataTypeWithCode:192];
    v67[0] = v21;
    v22 = [MEMORY[0x277CCD8D8] dataTypeWithCode:191];
    v67[1] = v22;
    v23 = [MEMORY[0x277CCD8D8] dataTypeWithCode:193];
    v67[2] = v23;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__HDCategorySampleSyncEntity__basePruningPredicateForDate_profile___block_invoke;
    aBlock[3] = &unk_27862F0F0;
    v63 = currentCalendar;
    v26 = v61;
    v64 = v26;
    v65 = v24;
    v66 = v25;
    v27 = v25;
    v28 = v24;
    v59 = currentCalendar;
    v29 = _Block_copy(aBlock);
    v29[2](v29, v60, *MEMORY[0x277CCCF00]);
    v29[2](v29, v57, *MEMORY[0x277CCCF10]);
    v29[2](v29, v55, *MEMORY[0x277CCCEC8]);
    v30 = [MEMORY[0x277CCD8D8] dataTypeWithCode:190];
    [v27 addObject:v30];
    [v27 addObjectsFromArray:v53];
    v31 = [v59 hd_predicateForSamplesWithTypes:0 endingBeforeDate:v26 minusDays:*MEMORY[0x277CCCEE8]];
    v32 = MEMORY[0x277D10B20];
    v33 = HDSampleEntityPredicateForDataTypes(v27);
    v34 = [v32 negatedPredicate:v33];
    v35 = [v32 compoundPredicateWithPredicate:v31 otherPredicate:v34];

    [v28 addObject:v35];
    v36 = MEMORY[0x277D10B20];
    v37 = objc_msgSend_copy(v28);
    v38 = v36;
    dateCopy = v61;
    v39 = [v38 predicateMatchingAnyPredicates:v37];
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

void __67__HDCategorySampleSyncEntity__basePruningPredicateForDate_profile___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v5 hd_predicateForSamplesWithTypes:v7 endingBeforeDate:v6 minusDays:a3];
  [*(a1 + 48) addObject:v8];
  [*(a1 + 56) addObjectsFromArray:v7];
}

+ (id)_predicateForSyncSession:(id)session
{
  v4 = MEMORY[0x277D10B70];
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___HDCategorySampleSyncEntity;
  sessionCopy = session;
  v6 = objc_msgSendSuper2(&v15, sel__predicateForSyncSession_, sessionCopy);
  _predicateForCategoryTypesToSync = [self _predicateForCategoryTypesToSync];
  v8 = [v4 compoundPredicateWithPredicate:v6 otherPredicate:_predicateForCategoryTypesToSync];

  LODWORD(v4) = _isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession(sessionCopy);
  if (v4)
  {
    v9 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAE0]];
    v10 = MEMORY[0x277D10B20];
    v11 = HDSampleEntityPredicateForDataType(v9);
    v12 = [v10 negatedPredicate:v11];

    v13 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v8 otherPredicate:v12];

    v8 = v13;
  }

  return v8;
}

+ (id)_categoryTypesDerivedFromQuantitySamples
{
  v4[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9A0]];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)_predicateForCategoryTypesToSync
{
  v2 = MEMORY[0x277D10B20];
  v3 = +[(HDCategorySampleSyncEntity *)self];
  v4 = HDSampleEntityPredicateForDataTypes(v3);
  v5 = [v2 negatedPredicate:v4];

  return v5;
}

@end