@interface HKCoverageRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKCoverageRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v171 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v139 = objc_alloc_init(MEMORY[0x277CBEB18]);
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
      v166 = v7;
      _os_log_impl(&dword_251CC8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v139 addObject:v8];
  }

  v105 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:identifier];
  rulesVersion = [(__CFString *)v4 rulesVersion];
  integerValue = [rulesVersion integerValue];

  if (integerValue <= 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543618;
      v166 = v12;
      v167 = 2114;
      v168 = v4;
      _os_log_impl(&dword_251CC8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v139 addObject:v13];
  }

  v156 = 0;
  v123 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v156];
  v136 = v156;
  if (!v123 && v136)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543874;
      v166 = v15;
      v167 = 2114;
      v168 = @"locale";
      v169 = 2114;
      v170 = v136;
      _os_log_impl(&dword_251CC8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v136];
  }

  country = [(__CFString *)v4 country];
  v155 = 0;
  v122 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v155];
  v135 = v155;
  if (!v122 && v135)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138543874;
      v166 = v17;
      v167 = 2114;
      v168 = @"note";
      v169 = 2114;
      v170 = v135;
      _os_log_impl(&dword_251CC8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v135];
  }

  v154 = 0;
  v121 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v154];
  v134 = v154;
  if (!v121 && v134)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *buf = 138543874;
      v166 = v19;
      v167 = 2114;
      v168 = @"enteredInError";
      v169 = 2114;
      v170 = v134;
      _os_log_impl(&dword_251CC8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v134];
  }

  representedResource2 = [(__CFString *)v4 representedResource];
  extractionHints = [representedResource2 extractionHints];

  v153 = 0;
  v21 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v153];
  v22 = v153;
  v108 = v22;
  if (v21 || !v22)
  {
    if (!v21)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v163[0] = @"propertyName";
      v163[1] = v27;
      v164[0] = @"statusCoding";
      v164[1] = v25;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:2];
      v29 = [v26 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v28];

      [v139 addObject:v29];
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      *buf = 138543874;
      v166 = v24;
      v167 = 2114;
      v168 = @"statusCoding";
      v169 = 2114;
      v170 = v108;
      _os_log_impl(&dword_251CC8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v108];
  }

  v109 = v21;
  v152 = 0;
  v30 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"coverageTypeCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v152];
  v31 = v152;
  v107 = v31;
  if (v30 || !v31)
  {
    if (!v30)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueCoverageTypeCodingCollection instance to avoid throwing exception"];
      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v161[0] = @"propertyName";
      v161[1] = v36;
      v162[0] = @"coverageTypeCodingCollection";
      v162[1] = v34;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];
      v38 = [v35 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v37];

      [v139 addObject:v38];
    }
  }

  else
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      *buf = 138543874;
      v166 = v33;
      v167 = 2114;
      v168 = @"coverageTypeCodingCollection";
      v169 = 2114;
      v170 = v107;
      _os_log_impl(&dword_251CC8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v107];
  }

  v110 = v30;
  v151 = 0;
  v39 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"subscriber" expectedClass:objc_opt_class() isArray:0 error:&v151];
  v133 = v151;
  if (!v39 && v133)
  {
    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      *buf = 138543874;
      v166 = v41;
      v167 = 2114;
      v168 = @"subscriber";
      v169 = 2114;
      v170 = v133;
      _os_log_impl(&dword_251CC8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v133];
  }

  v111 = v39;
  v150 = 0;
  v42 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"subscriberId" expectedClass:objc_opt_class() isArray:0 error:&v150];
  v43 = v150;
  v106 = v43;
  if (v42 || !v43)
  {
    if (!v42)
    {
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueSubscriberId instance to avoid throwing exception"];
      v47 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v159[0] = @"propertyName";
      v159[1] = v48;
      v160[0] = @"subscriberId";
      v160[1] = v46;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:2];
      v50 = [v47 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v49];

      [v139 addObject:v50];
    }
  }

  else
  {
    _HKInitializeLogging();
    v44 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      *buf = 138543874;
      v166 = v45;
      v167 = 2114;
      v168 = @"subscriberId";
      v169 = 2114;
      v170 = v106;
      _os_log_impl(&dword_251CC8000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v106];
  }

  v112 = v42;
  v149 = 0;
  v51 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"beneficiary" expectedClass:objc_opt_class() isArray:0 error:&v149];
  v132 = v149;
  if (!v51 && v132)
  {
    _HKInitializeLogging();
    v52 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = objc_opt_class();
      *buf = 138543874;
      v166 = v53;
      v167 = 2114;
      v168 = @"beneficiary";
      v169 = 2114;
      v170 = v132;
      _os_log_impl(&dword_251CC8000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v132];
  }

  v113 = v51;
  v148 = 0;
  v54 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"policyHolder" expectedClass:objc_opt_class() isArray:0 error:&v148];
  v131 = v148;
  if (!v54 && v131)
  {
    _HKInitializeLogging();
    v55 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = objc_opt_class();
      *buf = 138543874;
      v166 = v56;
      v167 = 2114;
      v168 = @"policyHolder";
      v169 = 2114;
      v170 = v131;
      _os_log_impl(&dword_251CC8000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v131];
  }

  v114 = v54;
  v147 = 0;
  v57 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"payor" expectedClass:objc_opt_class() isArray:1 error:&v147];
  v130 = v147;
  if (!v57 && v130)
  {
    _HKInitializeLogging();
    v58 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = objc_opt_class();
      *buf = 138543874;
      v166 = v59;
      v167 = 2114;
      v168 = @"payor";
      v169 = 2114;
      v170 = v130;
      _os_log_impl(&dword_251CC8000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v130];
  }

  v115 = v57;
  v146 = 0;
  v60 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"relationshipCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v146];
  v129 = v146;
  if (!v60 && v129)
  {
    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = objc_opt_class();
      *buf = 138543874;
      v166 = v62;
      v167 = 2114;
      v168 = @"relationshipCodingCollection";
      v169 = 2114;
      v170 = v129;
      _os_log_impl(&dword_251CC8000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v129];
  }

  v116 = v60;
  v145 = 0;
  v63 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"classification" expectedClass:objc_opt_class() isArray:1 error:&v145];
  v128 = v145;
  if (!v63 && v128)
  {
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = objc_opt_class();
      *buf = 138543874;
      v166 = v65;
      v167 = 2114;
      v168 = @"classification";
      v169 = 2114;
      v170 = v128;
      _os_log_impl(&dword_251CC8000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v128];
  }

  v117 = v63;
  v144 = 0;
  v66 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"network" expectedClass:objc_opt_class() isArray:0 error:&v144];
  v127 = v144;
  if (!v66 && v127)
  {
    _HKInitializeLogging();
    v67 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = objc_opt_class();
      *buf = 138543874;
      v166 = v68;
      v167 = 2114;
      v168 = @"network";
      v169 = 2114;
      v170 = v127;
      _os_log_impl(&dword_251CC8000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v127];
  }

  v118 = v66;
  v143 = 0;
  v69 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"periodStartDate" expectedClass:objc_opt_class() isArray:0 error:&v143];
  v126 = v143;
  if (!v69 && v126)
  {
    _HKInitializeLogging();
    v70 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = objc_opt_class();
      *buf = 138543874;
      v166 = v71;
      v167 = 2114;
      v168 = @"periodStartDate";
      v169 = 2114;
      v170 = v126;
      _os_log_impl(&dword_251CC8000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v126];
  }

  v119 = v69;
  v142 = 0;
  v72 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"periodEndDate" expectedClass:objc_opt_class() isArray:0 error:&v142];
  v125 = v142;
  if (!v72 && v125)
  {
    _HKInitializeLogging();
    v73 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = objc_opt_class();
      *buf = 138543874;
      v166 = v74;
      v167 = 2114;
      v168 = @"periodEndDate";
      v169 = 2114;
      v170 = v125;
      _os_log_impl(&dword_251CC8000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v125];
  }

  v120 = v72;
  v141 = 0;
  v75 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"subscriberIdentifier" expectedClass:objc_opt_class() isArray:0 error:&v141];
  v124 = v141;
  if (!v75 && v124)
  {
    _HKInitializeLogging();
    v76 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = objc_opt_class();
      *buf = 138543874;
      v166 = v77;
      v167 = 2114;
      v168 = @"subscriberIdentifier";
      v169 = 2114;
      v170 = v124;
      _os_log_impl(&dword_251CC8000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v124];
  }

  v78 = v75;
  v140 = 0;
  v79 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"beneficiaryIdentifier" expectedClass:objc_opt_class() isArray:0 error:&v140];
  v80 = v140;
  v81 = v80;
  if (!v79 && v80)
  {
    _HKInitializeLogging();
    v82 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = objc_opt_class();
      *buf = 138543874;
      v166 = v83;
      v167 = 2114;
      v168 = @"beneficiaryIdentifier";
      v169 = 2114;
      v170 = v81;
      _os_log_impl(&dword_251CC8000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v139 addObject:v81];
  }

  v84 = v79;
  if (![v139 count])
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

    bOOLValue = [v121 BOOLValue];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    medicalRecordMetadata = [(__CFString *)v4 medicalRecordMetadata];
    coverageRecordType = [MEMORY[0x277CCD278] coverageRecordType];
    v98 = [MEMORY[0x277CCD270] coverageRecordWithType:coverageRecordType note:v122 enteredInError:bOOLValue modifiedDate:date originIdentifier:v105 locale:v123 extractionVersion:integerValue device:localDevice metadata:medicalRecordMetadata country:country state:(extractionHints >> 2) & 1 statusCoding:v109 coverageTypeCodingCollection:v110 subscriber:v111 subscriberId:v112 beneficiary:v113 policyHolder:v114 payor:v115 relationshipCodingCollection:v116 classification:v117 network:v118 periodStartDate:v119 periodEndDate:v120 subscriberIdentifier:v78 beneficiaryIdentifier:v84];
    representedResource4 = [(__CFString *)v4 representedResource];
    firstSeenDate = [representedResource4 firstSeenDate];
    [v98 _setCreationDate:firstSeenDate];

    v91 = v98;
    goto LABEL_111;
  }

  v85 = MEMORY[0x277CCA9B8];
  v157 = @"conversionErrors";
  v158 = v139;
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
  v87 = [v85 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v86];

  v88 = v87;
  localDevice = v88;
  if (!v88)
  {
    goto LABEL_107;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_107:
    v91 = 0;
    goto LABEL_108;
  }

  v90 = v88;
  v91 = 0;
  *a4 = localDevice;
LABEL_108:
  date = localDevice;
LABEL_111:

  return v91;
}

@end