@interface HKMedicationDispenseRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKMedicationDispenseRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v144 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v122 = objc_alloc_init(MEMORY[0x277CBEB18]);
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
      v139 = objc_opt_class();
      v8 = v139;
      _os_log_impl(&dword_251CC8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v122 addObject:v9];
  }

  v100 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:identifier];
  rulesVersion = [(__CFString *)v4 rulesVersion];
  integerValue = [rulesVersion integerValue];

  if (integerValue <= 0)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      *buf = 138543618;
      v139 = v14;
      v140 = 2114;
      v141 = v4;
      v15 = v14;
      _os_log_impl(&dword_251CC8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v122 addObject:v16];
  }

  v133 = 0;
  v111 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v133];
  v120 = v133;
  if (!v111 && v120)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = objc_opt_class();
      *buf = 138543874;
      v139 = v19;
      v140 = 2114;
      v141 = @"locale";
      v142 = 2114;
      v143 = v120;
      v20 = v19;
      _os_log_impl(&dword_251CC8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v120];
  }

  country = [(__CFString *)v4 country];
  v132 = 0;
  v110 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v132];
  v119 = v132;
  if (!v110 && v119)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = objc_opt_class();
      *buf = 138543874;
      v139 = v23;
      v140 = 2114;
      v141 = @"note";
      v142 = 2114;
      v143 = v119;
      v24 = v23;
      _os_log_impl(&dword_251CC8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v119];
  }

  v131 = 0;
  v109 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v131];
  v118 = v131;
  if (!v109 && v118)
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = objc_opt_class();
      *buf = 138543874;
      v139 = v27;
      v140 = 2114;
      v141 = @"enteredInError";
      v142 = 2114;
      v143 = v118;
      v28 = v27;
      _os_log_impl(&dword_251CC8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v118];
  }

  representedResource2 = [(__CFString *)v4 representedResource];
  extractionHints = [representedResource2 extractionHints];

  v130 = 0;
  v30 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"medicationCodings" expectedClass:objc_opt_class() isArray:1 error:&v130];
  v31 = v130;
  v101 = v31;
  if (v30 || !v31)
  {
    if (!v30)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueMedicationCodings instance to avoid throwing exception"];
      v37 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA450];
      v136[0] = @"propertyName";
      v136[1] = v38;
      v137[0] = @"medicationCodings";
      v137[1] = v36;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:2];
      v40 = [v37 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v39];

      [v122 addObject:v40];
    }
  }

  else
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = objc_opt_class();
      *buf = 138543874;
      v139 = v34;
      v140 = 2114;
      v141 = @"medicationCodings";
      v142 = 2114;
      v143 = v101;
      v35 = v34;
      _os_log_impl(&dword_251CC8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v101];
  }

  v102 = v30;
  v129 = 0;
  v41 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"quantityDispensed" expectedClass:objc_opt_class() isArray:0 error:&v129];
  v117 = v129;
  if (!v41 && v117)
  {
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v44 = objc_opt_class();
      *buf = 138543874;
      v139 = v44;
      v140 = 2114;
      v141 = @"quantityDispensed";
      v142 = 2114;
      v143 = v117;
      v45 = v44;
      _os_log_impl(&dword_251CC8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v117];
  }

  v103 = v41;
  v128 = 0;
  v46 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"preparationDate" expectedClass:objc_opt_class() isArray:0 error:&v128];
  v116 = v128;
  if (!v46 && v116)
  {
    _HKInitializeLogging();
    v47 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      v49 = objc_opt_class();
      *buf = 138543874;
      v139 = v49;
      v140 = 2114;
      v141 = @"preparationDate";
      v142 = 2114;
      v143 = v116;
      v50 = v49;
      _os_log_impl(&dword_251CC8000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v116];
  }

  v104 = v46;
  v127 = 0;
  v51 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"handOverDate" expectedClass:objc_opt_class() isArray:0 error:&v127];
  v115 = v127;
  if (!v51 && v115)
  {
    _HKInitializeLogging();
    v52 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v53 = v52;
      v54 = objc_opt_class();
      *buf = 138543874;
      v139 = v54;
      v140 = 2114;
      v141 = @"handOverDate";
      v142 = 2114;
      v143 = v115;
      v55 = v54;
      _os_log_impl(&dword_251CC8000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v115];
  }

  v105 = v51;
  v126 = 0;
  v56 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"dosages" expectedClass:objc_opt_class() isArray:1 error:&v126];
  v114 = v126;
  if (!v56 && v114)
  {
    _HKInitializeLogging();
    v57 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      v59 = objc_opt_class();
      *buf = 138543874;
      v139 = v59;
      v140 = 2114;
      v141 = @"dosages";
      v142 = 2114;
      v143 = v114;
      v60 = v59;
      _os_log_impl(&dword_251CC8000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v114];
  }

  v106 = v56;
  v125 = 0;
  v61 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"earliestDosageDate" expectedClass:objc_opt_class() isArray:0 error:&v125];
  v113 = v125;
  if (!v61 && v113)
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v63 = v62;
      v64 = objc_opt_class();
      *buf = 138543874;
      v139 = v64;
      v140 = 2114;
      v141 = @"earliestDosageDate";
      v142 = 2114;
      v143 = v113;
      v65 = v64;
      _os_log_impl(&dword_251CC8000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v113];
  }

  v107 = v61;
  v124 = 0;
  v66 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v124];
  v112 = v124;
  if (!v66 && v112)
  {
    _HKInitializeLogging();
    v67 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v68 = v67;
      v69 = objc_opt_class();
      *buf = 138543874;
      v139 = v69;
      v140 = 2114;
      v141 = @"statusCoding";
      v142 = 2114;
      v143 = v112;
      v70 = v69;
      _os_log_impl(&dword_251CC8000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v112];
  }

  v108 = v66;
  v123 = 0;
  v71 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"daysSupplyQuantity" expectedClass:objc_opt_class() isArray:0 error:&v123];
  v72 = v123;
  v73 = v72;
  if (!v71 && v72)
  {
    _HKInitializeLogging();
    v74 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v75 = v74;
      v76 = objc_opt_class();
      *buf = 138543874;
      v139 = v76;
      v140 = 2114;
      v141 = @"daysSupplyQuantity";
      v142 = 2114;
      v143 = v73;
      v77 = v76;
      _os_log_impl(&dword_251CC8000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v122 addObject:v73];
  }

  v78 = v71;
  if (![v122 count])
  {
    representedResource3 = [(__CFString *)v4 representedResource];
    receivedDate = [representedResource3 receivedDate];
    v88 = receivedDate;
    if (receivedDate)
    {
      date = receivedDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v90 = date;

    bOOLValue = [v109 BOOLValue];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    medicalRecordMetadata = [(__CFString *)v4 medicalRecordMetadata];
    medicationDispenseRecordType = [MEMORY[0x277CCD638] medicationDispenseRecordType];
    v85 = [MEMORY[0x277CCD630] medicationDispenseRecordWithType:medicationDispenseRecordType note:v110 enteredInError:bOOLValue modifiedDate:v90 originIdentifier:v100 locale:v111 extractionVersion:integerValue device:localDevice metadata:medicalRecordMetadata country:country state:(extractionHints >> 2) & 1 medicationCodings:v102 quantityDispensed:v103 preparationDate:v104 handOverDate:v105 dosages:v106 earliestDosageDate:v107 statusCoding:v108 daysSupplyQuantity:v78];
    representedResource4 = [(__CFString *)v4 representedResource];
    firstSeenDate = [representedResource4 firstSeenDate];
    [v85 _setCreationDate:firstSeenDate];

    goto LABEL_77;
  }

  v79 = MEMORY[0x277CCA9B8];
  v134 = @"conversionErrors";
  v135 = v122;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
  v81 = [v79 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v80];

  v82 = v81;
  localDevice = v82;
  if (!v82)
  {
    goto LABEL_73;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_73:
    v85 = 0;
    goto LABEL_74;
  }

  v84 = v82;
  v85 = 0;
  *a4 = localDevice;
LABEL_74:
  v90 = localDevice;
LABEL_77:

  return v85;
}

@end