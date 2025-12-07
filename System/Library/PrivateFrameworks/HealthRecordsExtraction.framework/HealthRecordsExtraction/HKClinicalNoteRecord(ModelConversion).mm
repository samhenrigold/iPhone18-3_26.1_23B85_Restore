@interface HKClinicalNoteRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKClinicalNoteRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v152 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v127 = objc_alloc_init(MEMORY[0x277CBEB18]);
  representedResource = [(__CFString *)v4 representedResource];
  identifier = [representedResource identifier];

  if (!identifier)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 138543362;
      v147 = objc_opt_class();
      v8 = v147;
      _os_log_impl(&dword_251CC8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v127 addObject:v9];
  }

  v106 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:identifier];
  rulesVersion = [(__CFString *)v4 rulesVersion];
  integerValue = [rulesVersion integerValue];

  if (integerValue <= 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      *buf = 138543618;
      v147 = v13;
      v148 = 2114;
      v149 = v4;
      v14 = v13;
      _os_log_impl(&dword_251CC8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v127 addObject:v15];
  }

  v137 = 0;
  v119 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v137];
  v125 = v137;
  if (!v119 && v125)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = objc_opt_class();
      *buf = 138543874;
      v147 = v18;
      v148 = 2114;
      v149 = @"locale";
      v150 = 2114;
      v151 = v125;
      v19 = v18;
      _os_log_impl(&dword_251CC8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v125];
  }

  country = [(__CFString *)v4 country];
  v136 = 0;
  v118 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v136];
  v124 = v136;
  if (!v118 && v124)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = objc_opt_class();
      *buf = 138543874;
      v147 = v22;
      v148 = 2114;
      v149 = @"note";
      v150 = 2114;
      v151 = v124;
      v23 = v22;
      _os_log_impl(&dword_251CC8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v124];
  }

  v135 = 0;
  v117 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v135];
  v123 = v135;
  if (!v117 && v123)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = objc_opt_class();
      *buf = 138543874;
      v147 = v26;
      v148 = 2114;
      v149 = @"enteredInError";
      v150 = 2114;
      v151 = v123;
      v27 = v26;
      _os_log_impl(&dword_251CC8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v123];
  }

  representedResource2 = [(__CFString *)v4 representedResource];
  extractionHints = [representedResource2 extractionHints];

  v134 = 0;
  v29 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v134];
  v30 = v134;
  v110 = v30;
  if (v29 || !v30)
  {
    if (!v29)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v144[0] = @"propertyName";
      v144[1] = v37;
      v145[0] = @"statusCoding";
      v145[1] = v35;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];
      v39 = [v36 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v38];

      [v127 addObject:v39];
    }
  }

  else
  {
    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = objc_opt_class();
      *buf = 138543874;
      v147 = v33;
      v148 = 2114;
      v149 = @"statusCoding";
      v150 = 2114;
      v151 = v110;
      v34 = v33;
      _os_log_impl(&dword_251CC8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v110];
  }

  v111 = v29;
  v133 = 0;
  v40 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"documentTypeCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v133];
  v41 = v133;
  v109 = v41;
  if (v40 || !v41)
  {
    if (!v40)
    {
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueDocumentTypeCodingCollection instance to avoid throwing exception"];
      v47 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v142[0] = @"propertyName";
      v142[1] = v48;
      v143[0] = @"documentTypeCodingCollection";
      v143[1] = v46;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];
      v50 = [v47 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v49];

      [v127 addObject:v50];
    }
  }

  else
  {
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v44 = objc_opt_class();
      *buf = 138543874;
      v147 = v44;
      v148 = 2114;
      v149 = @"documentTypeCodingCollection";
      v150 = 2114;
      v151 = v109;
      v45 = v44;
      _os_log_impl(&dword_251CC8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v109];
  }

  v112 = v40;
  v132 = 0;
  v51 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"noteCreationDate" expectedClass:objc_opt_class() isArray:0 error:&v132];
  v122 = v132;
  if (!v51 && v122)
  {
    _HKInitializeLogging();
    v52 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v53 = v52;
      v54 = objc_opt_class();
      *buf = 138543874;
      v147 = v54;
      v148 = 2114;
      v149 = @"noteCreationDate";
      v150 = 2114;
      v151 = v122;
      v55 = v54;
      _os_log_impl(&dword_251CC8000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v122];
  }

  v113 = v51;
  v131 = 0;
  v56 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"categoriesCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v131];
  v57 = v131;
  v108 = v57;
  if (v56 || !v57)
  {
    if (!v56)
    {
      v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueCategoriesCodingCollections instance to avoid throwing exception"];
      v63 = MEMORY[0x277CCA9B8];
      v64 = *MEMORY[0x277CCA450];
      v140[0] = @"propertyName";
      v140[1] = v64;
      v141[0] = @"categoriesCodingCollections";
      v141[1] = v62;
      v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:2];
      v66 = [v63 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v65];

      [v127 addObject:v66];
    }
  }

  else
  {
    _HKInitializeLogging();
    v58 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
      v60 = objc_opt_class();
      *buf = 138543874;
      v147 = v60;
      v148 = 2114;
      v149 = @"categoriesCodingCollections";
      v150 = 2114;
      v151 = v108;
      v61 = v60;
      _os_log_impl(&dword_251CC8000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v108];
  }

  v114 = v56;
  v130 = 0;
  v67 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"relevantStartDate" expectedClass:objc_opt_class() isArray:0 error:&v130];
  v121 = v130;
  if (!v67 && v121)
  {
    _HKInitializeLogging();
    v68 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v69 = v68;
      v70 = objc_opt_class();
      *buf = 138543874;
      v147 = v70;
      v148 = 2114;
      v149 = @"relevantStartDate";
      v150 = 2114;
      v151 = v121;
      v71 = v70;
      _os_log_impl(&dword_251CC8000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v121];
  }

  v115 = v67;
  v129 = 0;
  v72 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"relevantEndDate" expectedClass:objc_opt_class() isArray:0 error:&v129];
  v120 = v129;
  if (!v72 && v120)
  {
    _HKInitializeLogging();
    v73 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v74 = v73;
      v75 = objc_opt_class();
      *buf = 138543874;
      v147 = v75;
      v148 = 2114;
      v149 = @"relevantEndDate";
      v150 = 2114;
      v151 = v120;
      v76 = v75;
      _os_log_impl(&dword_251CC8000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v120];
  }

  v116 = v72;
  v128 = 0;
  v77 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"authors" expectedClass:objc_opt_class() isArray:1 error:&v128];
  v78 = v128;
  v79 = v78;
  if (!v77 && v78)
  {
    _HKInitializeLogging();
    v80 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v81 = v80;
      v82 = objc_opt_class();
      *buf = 138543874;
      v147 = v82;
      v148 = 2114;
      v149 = @"authors";
      v150 = 2114;
      v151 = v79;
      v83 = v82;
      _os_log_impl(&dword_251CC8000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v127 addObject:v79];
  }

  v84 = v77;
  if (![v127 count])
  {
    representedResource3 = [(__CFString *)v4 representedResource];
    receivedDate = [representedResource3 receivedDate];
    v94 = receivedDate;
    if (receivedDate)
    {
      date = receivedDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v96 = date;

    bOOLValue = [v117 BOOLValue];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    medicalRecordMetadata = [(__CFString *)v4 medicalRecordMetadata];
    clinicalNoteRecordType = [MEMORY[0x277CCD108] clinicalNoteRecordType];
    v91 = [MEMORY[0x277CCD100] clinicalNoteRecordWithType:clinicalNoteRecordType note:v118 enteredInError:bOOLValue modifiedDate:v96 originIdentifier:v106 locale:v119 extractionVersion:integerValue device:localDevice metadata:medicalRecordMetadata country:country state:(extractionHints >> 2) & 1 statusCoding:v111 documentTypeCodingCollection:v112 noteCreationDate:v113 categoriesCodingCollections:v114 relevantStartDate:v115 relevantEndDate:v116 authors:v84];
    representedResource4 = [(__CFString *)v4 representedResource];
    firstSeenDate = [representedResource4 firstSeenDate];
    [v91 _setCreationDate:firstSeenDate];

    goto LABEL_76;
  }

  v85 = MEMORY[0x277CCA9B8];
  v138 = @"conversionErrors";
  v139 = v127;
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
  v87 = [v85 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v86];

  v88 = v87;
  localDevice = v88;
  if (!v88)
  {
    goto LABEL_72;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_72:
    v91 = 0;
    goto LABEL_73;
  }

  v90 = v88;
  v91 = 0;
  *a4 = localDevice;
LABEL_73:
  v96 = localDevice;
LABEL_76:

  return v91;
}

@end