@interface HKDiagnosticTestResult(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKDiagnosticTestResult(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v185 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v150 = objc_alloc_init(MEMORY[0x277CBEB18]);
  representedResource = [(__CFString *)v4 representedResource];
  identifier = [representedResource identifier];

  if (!identifier)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543362;
      v180 = v7;
      _os_log_impl(&dword_251CC8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v150 addObject:v8];
  }

  v113 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:identifier];
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
      v180 = v11;
      v181 = 2114;
      v182 = v4;
      _os_log_impl(&dword_251CC8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v150 addObject:v12];
  }

  v168 = 0;
  v134 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v168];
  v147 = v168;
  if (!v134 && v147)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543874;
      v180 = v14;
      v181 = 2114;
      v182 = @"locale";
      v183 = 2114;
      v184 = v147;
      _os_log_impl(&dword_251CC8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v147];
  }

  country = [(__CFString *)v4 country];
  v167 = 0;
  v133 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v167];
  v146 = v167;
  if (!v133 && v146)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      *buf = 138543874;
      v180 = v16;
      v181 = 2114;
      v182 = @"note";
      v183 = 2114;
      v184 = v146;
      _os_log_impl(&dword_251CC8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v146];
  }

  v166 = 0;
  v132 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v166];
  v145 = v166;
  if (!v132 && v145)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138543874;
      v180 = v18;
      v181 = 2114;
      v182 = @"enteredInError";
      v183 = 2114;
      v184 = v145;
      _os_log_impl(&dword_251CC8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v145];
  }

  representedResource2 = [(__CFString *)v4 representedResource];
  extractionHints = [representedResource2 extractionHints];

  v165 = 0;
  v20 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"diagnosticTestCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v165];
  v21 = v165;
  v118 = v21;
  if (v20 || !v21)
  {
    if (!v20)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueDiagnosticTestCodingCollection instance to avoid throwing exception"];
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      v177[0] = @"propertyName";
      v177[1] = v26;
      v178[0] = @"diagnosticTestCodingCollection";
      v178[1] = v24;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:2];
      v28 = [v25 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v27];

      [v150 addObject:v28];
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *buf = 138543874;
      v180 = v23;
      v181 = 2114;
      v182 = @"diagnosticTestCodingCollection";
      v183 = 2114;
      v184 = v118;
      _os_log_impl(&dword_251CC8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v118];
  }

  v119 = v20;
  v164 = 0;
  v29 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"value" expectedClass:objc_opt_class() isArray:0 error:&v164];
  v144 = v164;
  if (!v29 && v144)
  {
    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      *buf = 138543874;
      v180 = v31;
      v181 = 2114;
      v182 = @"value";
      v183 = 2114;
      v184 = v144;
      _os_log_impl(&dword_251CC8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v144];
  }

  v120 = v29;
  v163 = 0;
  v32 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"referenceRanges" expectedClass:objc_opt_class() isArray:1 error:&v163];
  v143 = v163;
  if (!v32 && v143)
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      *buf = 138543874;
      v180 = v34;
      v181 = 2114;
      v182 = @"referenceRanges";
      v183 = 2114;
      v184 = v143;
      _os_log_impl(&dword_251CC8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v143];
  }

  v121 = v32;
  v162 = 0;
  v35 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"effectiveStartDate" expectedClass:objc_opt_class() isArray:0 error:&v162];
  v142 = v162;
  if (!v35 && v142)
  {
    _HKInitializeLogging();
    v36 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      *buf = 138543874;
      v180 = v37;
      v181 = 2114;
      v182 = @"effectiveStartDate";
      v183 = 2114;
      v184 = v142;
      _os_log_impl(&dword_251CC8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v142];
  }

  v122 = v35;
  v161 = 0;
  v38 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"category" expectedClass:objc_opt_class() isArray:0 error:&v161];
  v39 = v161;
  v117 = v39;
  if (v38 || !v39)
  {
    if (!v38)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueCategory instance to avoid throwing exception"];
      v43 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v175[0] = @"propertyName";
      v175[1] = v44;
      v176[0] = @"category";
      v176[1] = v42;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];
      v46 = [v43 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v45];

      [v150 addObject:v46];
    }
  }

  else
  {
    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      *buf = 138543874;
      v180 = v41;
      v181 = 2114;
      v182 = @"category";
      v183 = 2114;
      v184 = v117;
      _os_log_impl(&dword_251CC8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v117];
  }

  v123 = v38;
  v160 = 0;
  v47 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"categoriesCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v160];
  v48 = v160;
  v116 = v48;
  if (v47 || !v48)
  {
    if (!v47)
    {
      v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueCategoriesCodingCollections instance to avoid throwing exception"];
      v52 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA450];
      v173[0] = @"propertyName";
      v173[1] = v53;
      v174[0] = @"categoriesCodingCollections";
      v174[1] = v51;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:2];
      v55 = [v52 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v54];

      [v150 addObject:v55];
    }
  }

  else
  {
    _HKInitializeLogging();
    v49 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = objc_opt_class();
      *buf = 138543874;
      v180 = v50;
      v181 = 2114;
      v182 = @"categoriesCodingCollections";
      v183 = 2114;
      v184 = v116;
      _os_log_impl(&dword_251CC8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v116];
  }

  v124 = v47;
  v159 = 0;
  v56 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"issueDate" expectedClass:objc_opt_class() isArray:0 error:&v159];
  v141 = v159;
  if (!v56 && v141)
  {
    _HKInitializeLogging();
    v57 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = objc_opt_class();
      *buf = 138543874;
      v180 = v58;
      v181 = 2114;
      v182 = @"issueDate";
      v183 = 2114;
      v184 = v141;
      _os_log_impl(&dword_251CC8000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v141];
  }

  v125 = v56;
  v158 = 0;
  v59 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"effectiveEndDate" expectedClass:objc_opt_class() isArray:0 error:&v158];
  v140 = v158;
  if (!v59 && v140)
  {
    _HKInitializeLogging();
    v60 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = objc_opt_class();
      *buf = 138543874;
      v180 = v61;
      v181 = 2114;
      v182 = @"effectiveEndDate";
      v183 = 2114;
      v184 = v140;
      _os_log_impl(&dword_251CC8000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v140];
  }

  v126 = v59;
  v157 = 0;
  v62 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v157];
  v63 = v157;
  v115 = v63;
  if (v62 || !v63)
  {
    if (!v62)
    {
      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v67 = MEMORY[0x277CCA9B8];
      v68 = *MEMORY[0x277CCA450];
      v171[0] = @"propertyName";
      v171[1] = v68;
      v172[0] = @"statusCoding";
      v172[1] = v66;
      v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:2];
      v70 = [v67 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v69];

      [v150 addObject:v70];
    }
  }

  else
  {
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = objc_opt_class();
      *buf = 138543874;
      v180 = v65;
      v181 = 2114;
      v182 = @"statusCoding";
      v183 = 2114;
      v184 = v115;
      _os_log_impl(&dword_251CC8000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v115];
  }

  v127 = v62;
  v156 = 0;
  v71 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"interpretationCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v156];
  v139 = v156;
  if (!v71 && v139)
  {
    _HKInitializeLogging();
    v72 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = objc_opt_class();
      *buf = 138543874;
      v180 = v73;
      v181 = 2114;
      v182 = @"interpretationCodingCollections";
      v183 = 2114;
      v184 = v139;
      _os_log_impl(&dword_251CC8000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v139];
  }

  v128 = v71;
  v155 = 0;
  v74 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"comments" expectedClass:objc_opt_class() isArray:0 error:&v155];
  v138 = v155;
  if (!v74 && v138)
  {
    _HKInitializeLogging();
    v75 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = objc_opt_class();
      *buf = 138543874;
      v180 = v76;
      v181 = 2114;
      v182 = @"comments";
      v183 = 2114;
      v184 = v138;
      _os_log_impl(&dword_251CC8000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v138];
  }

  v129 = v74;
  v154 = 0;
  v77 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"bodySiteCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v154];
  v137 = v154;
  if (!v77 && v137)
  {
    _HKInitializeLogging();
    v78 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v79 = objc_opt_class();
      *buf = 138543874;
      v180 = v79;
      v181 = 2114;
      v182 = @"bodySiteCodingCollection";
      v183 = 2114;
      v184 = v137;
      _os_log_impl(&dword_251CC8000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v137];
  }

  v130 = v77;
  v153 = 0;
  v80 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"methodCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v153];
  v136 = v153;
  if (!v80 && v136)
  {
    _HKInitializeLogging();
    v81 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = objc_opt_class();
      *buf = 138543874;
      v180 = v82;
      v181 = 2114;
      v182 = @"methodCodingCollection";
      v183 = 2114;
      v184 = v136;
      _os_log_impl(&dword_251CC8000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v136];
  }

  v131 = v80;
  v152 = 0;
  v83 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"performers" expectedClass:objc_opt_class() isArray:1 error:&v152];
  v135 = v152;
  if (!v83 && v135)
  {
    _HKInitializeLogging();
    v84 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = objc_opt_class();
      *buf = 138543874;
      v180 = v85;
      v181 = 2114;
      v182 = @"performers";
      v183 = 2114;
      v184 = v135;
      _os_log_impl(&dword_251CC8000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v135];
  }

  v86 = v83;
  v151 = 0;
  v87 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"referenceRangeStatus" expectedClass:objc_opt_class() isArray:0 error:&v151];
  v88 = v151;
  v89 = v88;
  if (!v87 && v88)
  {
    _HKInitializeLogging();
    v90 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = objc_opt_class();
      *buf = 138543874;
      v180 = v91;
      v181 = 2114;
      v182 = @"referenceRangeStatus";
      v183 = 2114;
      v184 = v89;
      _os_log_impl(&dword_251CC8000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v150 addObject:v89];
  }

  integerValue2 = [v87 integerValue];
  if (![v150 count])
  {
    representedResource3 = [(__CFString *)v4 representedResource];
    receivedDate = [representedResource3 receivedDate];
    v102 = receivedDate;
    if (receivedDate)
    {
      date = receivedDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    bOOLValue = [v132 BOOLValue];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    medicalRecordMetadata = [(__CFString *)v4 medicalRecordMetadata];
    diagnosticTestResultType = [MEMORY[0x277CCD350] diagnosticTestResultType];
    v106 = [MEMORY[0x277CCD348] diagnosticTestResultWithType:diagnosticTestResultType note:v133 enteredInError:bOOLValue modifiedDate:date originIdentifier:v113 locale:v134 extractionVersion:integerValue device:localDevice metadata:medicalRecordMetadata country:country state:(extractionHints >> 2) & 1 diagnosticTestCodingCollection:v119 value:v120 referenceRanges:v121 effectiveStartDate:v122 category:v123 categoriesCodingCollections:v124 issueDate:v125 effectiveEndDate:v126 statusCoding:v127 interpretationCodingCollections:v128 comments:v129 bodySiteCodingCollection:v130 methodCodingCollection:v131 performers:v86 referenceRangeStatus:integerValue2];
    representedResource4 = [(__CFString *)v4 representedResource];
    firstSeenDate = [representedResource4 firstSeenDate];
    [v106 _setCreationDate:firstSeenDate];

    v99 = v106;
    goto LABEL_118;
  }

  v93 = MEMORY[0x277CCA9B8];
  v169 = @"conversionErrors";
  v170 = v150;
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
  v95 = [v93 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v94];

  v96 = v95;
  localDevice = v96;
  if (!v96)
  {
    goto LABEL_114;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_114:
    v99 = 0;
    goto LABEL_115;
  }

  v98 = v96;
  v99 = 0;
  *a4 = localDevice;
LABEL_115:
  date = localDevice;
LABEL_118:

  return v99;
}

@end