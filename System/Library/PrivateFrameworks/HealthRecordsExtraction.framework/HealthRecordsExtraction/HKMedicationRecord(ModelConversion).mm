@interface HKMedicationRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKMedicationRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v170 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v142 = objc_alloc_init(MEMORY[0x277CBEB18]);
  representedResource = [(__CFString *)v4 representedResource];
  identifier = [representedResource identifier];

  if (!identifier)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v165 = objc_opt_class();
      v7 = v165;
      _os_log_impl(&dword_251CC8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v142 addObject:v8];
  }

  v111 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:identifier];
  rulesVersion = [(__CFString *)v4 rulesVersion];
  integerValue = [rulesVersion integerValue];

  if (integerValue <= 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v165 = v11;
      v166 = 2114;
      v167 = v4;
      v12 = v11;
      _os_log_impl(&dword_251CC8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v142 addObject:v13];
  }

  v157 = 0;
  v125 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v157];
  v137 = v157;
  if (!v125 && v137)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543874;
      v165 = v15;
      v166 = 2114;
      v167 = @"locale";
      v168 = 2114;
      v169 = v137;
      v16 = v15;
      _os_log_impl(&dword_251CC8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v137];
  }

  country = [(__CFString *)v4 country];
  v156 = 0;
  v124 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v156];
  v136 = v156;
  if (!v124 && v136)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138543874;
      v165 = v18;
      v166 = 2114;
      v167 = @"note";
      v168 = 2114;
      v169 = v136;
      v19 = v18;
      _os_log_impl(&dword_251CC8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v136];
  }

  v155 = 0;
  v123 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v155];
  v135 = v155;
  if (!v123 && v135)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543874;
      v165 = v21;
      v166 = 2114;
      v167 = @"enteredInError";
      v168 = 2114;
      v169 = v135;
      v22 = v21;
      _os_log_impl(&dword_251CC8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v135];
  }

  representedResource2 = [(__CFString *)v4 representedResource];
  extractionHints = [representedResource2 extractionHints];

  v154 = 0;
  v24 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"medicationCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v154];
  v25 = v154;
  v114 = v25;
  if (v24 || !v25)
  {
    if (!v24)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueMedicationCodingCollection instance to avoid throwing exception"];
      v31 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v162[0] = @"propertyName";
      v162[1] = v32;
      v163[0] = @"medicationCodingCollection";
      v163[1] = v30;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:2];
      v34 = [v31 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v33];

      [v142 addObject:v34];
    }
  }

  else
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = objc_opt_class();
      *buf = 138543874;
      v165 = v28;
      v166 = 2114;
      v167 = @"medicationCodingCollection";
      v168 = 2114;
      v169 = v114;
      v29 = v28;
      _os_log_impl(&dword_251CC8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v114];
  }

  v115 = v24;
  v153 = 0;
  v139 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"assertionType" expectedClass:objc_opt_class() isArray:0 error:&v153];
  v134 = v153;
  if (!v139 && v134)
  {
    _HKInitializeLogging();
    v35 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      *buf = 138543874;
      v165 = v36;
      v166 = 2114;
      v167 = @"assertionType";
      v168 = 2114;
      v169 = v134;
      v37 = v36;
      _os_log_impl(&dword_251CC8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v134];
  }

  integerValue2 = [v139 integerValue];
  v152 = 0;
  v38 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"asserter" expectedClass:objc_opt_class() isArray:0 error:&v152];
  v133 = v152;
  if (!v38 && v133)
  {
    _HKInitializeLogging();
    v39 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      *buf = 138543874;
      v165 = v40;
      v166 = 2114;
      v167 = @"asserter";
      v168 = 2114;
      v169 = v133;
      v41 = v40;
      _os_log_impl(&dword_251CC8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v133];
  }

  v116 = v38;
  v151 = 0;
  v42 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"assertionDate" expectedClass:objc_opt_class() isArray:0 error:&v151];
  v132 = v151;
  if (!v42 && v132)
  {
    _HKInitializeLogging();
    v43 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      *buf = 138543874;
      v165 = v44;
      v166 = 2114;
      v167 = @"assertionDate";
      v168 = 2114;
      v169 = v132;
      v45 = v44;
      _os_log_impl(&dword_251CC8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v132];
  }

  v117 = v42;
  v150 = 0;
  v46 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v150];
  v47 = v150;
  v113 = v47;
  if (v46 || !v47)
  {
    if (!v46)
    {
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v53 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA450];
      v160[0] = @"propertyName";
      v160[1] = v54;
      v161[0] = @"statusCoding";
      v161[1] = v52;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];
      v56 = [v53 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v55];

      [v142 addObject:v56];
    }
  }

  else
  {
    _HKInitializeLogging();
    v48 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
      v50 = objc_opt_class();
      *buf = 138543874;
      v165 = v50;
      v166 = 2114;
      v167 = @"statusCoding";
      v168 = 2114;
      v169 = v113;
      v51 = v50;
      _os_log_impl(&dword_251CC8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v113];
  }

  v118 = v46;
  v149 = 0;
  v57 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"dosages" expectedClass:objc_opt_class() isArray:1 error:&v149];
  v131 = v149;
  if (!v57 && v131)
  {
    _HKInitializeLogging();
    v58 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = objc_opt_class();
      *buf = 138543874;
      v165 = v59;
      v166 = 2114;
      v167 = @"dosages";
      v168 = 2114;
      v169 = v131;
      v60 = v59;
      _os_log_impl(&dword_251CC8000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v131];
  }

  v119 = v57;
  v148 = 0;
  v61 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"earliestDosageDate" expectedClass:objc_opt_class() isArray:0 error:&v148];
  v130 = v148;
  if (!v61 && v130)
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_opt_class();
      *buf = 138543874;
      v165 = v63;
      v166 = 2114;
      v167 = @"earliestDosageDate";
      v168 = 2114;
      v169 = v130;
      v64 = v63;
      _os_log_impl(&dword_251CC8000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v130];
  }

  v120 = v61;
  v147 = 0;
  v65 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"reasonForUseCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v147];
  v129 = v147;
  if (!v65 && v129)
  {
    _HKInitializeLogging();
    v66 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = objc_opt_class();
      *buf = 138543874;
      v165 = v67;
      v166 = 2114;
      v167 = @"reasonForUseCodingCollections";
      v168 = 2114;
      v169 = v129;
      v68 = v67;
      _os_log_impl(&dword_251CC8000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v129];
  }

  v121 = v65;
  v146 = 0;
  v138 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"notTaken" expectedClass:objc_opt_class() isArray:0 error:&v146];
  v128 = v146;
  if (!v138 && v128)
  {
    _HKInitializeLogging();
    v69 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = objc_opt_class();
      *buf = 138543874;
      v165 = v70;
      v166 = 2114;
      v167 = @"notTaken";
      v168 = 2114;
      v169 = v128;
      v71 = v70;
      _os_log_impl(&dword_251CC8000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v128];
  }

  bOOLValue = [v138 BOOLValue];
  v145 = 0;
  v72 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"reasonsNotTakenCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v145];
  v127 = v145;
  if (!v72 && v127)
  {
    _HKInitializeLogging();
    v73 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = objc_opt_class();
      *buf = 138543874;
      v165 = v74;
      v166 = 2114;
      v167 = @"reasonsNotTakenCodingCollections";
      v168 = 2114;
      v169 = v127;
      v75 = v74;
      _os_log_impl(&dword_251CC8000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v127];
  }

  v122 = v72;
  v144 = 0;
  v76 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"effectiveStartDate" expectedClass:objc_opt_class() isArray:0 error:&v144];
  v126 = v144;
  if (!v76 && v126)
  {
    _HKInitializeLogging();
    v77 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = objc_opt_class();
      *buf = 138543874;
      v165 = v78;
      v166 = 2114;
      v167 = @"effectiveStartDate";
      v168 = 2114;
      v169 = v126;
      v79 = v78;
      _os_log_impl(&dword_251CC8000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v126];
  }

  v80 = v76;
  v143 = 0;
  v81 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"effectiveEndDate" expectedClass:objc_opt_class() isArray:0 error:&v143];
  v82 = v143;
  v83 = v82;
  if (!v81 && v82)
  {
    _HKInitializeLogging();
    v84 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = objc_opt_class();
      *buf = 138543874;
      v165 = v85;
      v166 = 2114;
      v167 = @"effectiveEndDate";
      v168 = 2114;
      v169 = v83;
      v86 = v85;
      _os_log_impl(&dword_251CC8000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v142 addObject:v83];
  }

  v87 = v81;
  if (![v142 count])
  {
    representedResource3 = [(__CFString *)v4 representedResource];
    receivedDate = [representedResource3 receivedDate];
    v96 = receivedDate;
    if (receivedDate)
    {
      date = receivedDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v98 = date;

    bOOLValue2 = [v123 BOOLValue];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    medicalRecordMetadata = [(__CFString *)v4 medicalRecordMetadata];
    medicationRecordType = [MEMORY[0x277CCD688] medicationRecordType];
    LOBYTE(v105) = bOOLValue;
    v141 = [MEMORY[0x277CCD680] medicationRecordWithType:medicationRecordType note:v124 enteredInError:bOOLValue2 modifiedDate:v98 originIdentifier:v111 locale:v125 extractionVersion:integerValue device:localDevice metadata:medicalRecordMetadata country:country state:(extractionHints >> 2) & 1 medicationCodingCollection:v115 assertionType:integerValue2 asserter:v116 assertionDate:v117 statusCoding:v118 dosages:v119 earliestDosageDate:v120 reasonForUseCodingCollections:v121 notTaken:v105 reasonsNotTakenCodingCollections:v122 effectiveStartDate:v80 effectiveEndDate:v87];
    representedResource4 = [(__CFString *)v4 representedResource];
    firstSeenDate = [representedResource4 firstSeenDate];
    [v141 _setCreationDate:firstSeenDate];

    goto LABEL_99;
  }

  v88 = MEMORY[0x277CCA9B8];
  v158 = @"conversionErrors";
  v159 = v142;
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
  v90 = [v88 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v89];

  v91 = v90;
  localDevice = v91;
  if (!v91)
  {
    goto LABEL_95;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_95:
    v141 = 0;
    goto LABEL_96;
  }

  v93 = v91;
  v141 = 0;
  *a4 = localDevice;
LABEL_96:
  v98 = localDevice;
LABEL_99:

  return v141;
}

@end