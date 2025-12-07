@interface ASTimeZone
+ (BOOL)_dateIsValidTransitionDate:(id)date inYear:(int)year withTimeZone:(id)zone;
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)_curTZDataVersion;
+ (id)_tzCachePathCreateIfMissing:(BOOL)missing;
+ (id)gmt;
+ (void)_cacheTimeZoneInfo;
+ (void)_fillOutCurrentTimeZoneInfo;
- ($31FC2A3E460831F3E4E0FB7CDAAFBC8B)mallocTZIForDate:(id)date;
- (ASTimeZone)initWithASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict lengthUntilEndOfTerminator:(int)terminator;
- (ASTimeZone)initWithCodingDict:(id)dict;
- (ASTimeZone)initWithName:(id)name;
- (ASTimeZone)initWithName:(id)name data:(id)data;
- (ASTimeZone)initWithTZNameFromCalDB:(id)b;
- (BOOL)_dateIsValidTransitionDate:(id)date inYear:(int64_t)year outDaylightBias:(int64_t *)bias;
- (BOOL)isDaylightSavingTimeForDate:(id)date;
- (_SYSTEMTIME)_ruleForDate:(id)date;
- (double)daylightSavingTimeOffsetForDate:(id)date;
- (id)_bestGuessAtOlsonTimeZoneForOffsetInMinutes:(int)minutes daylightBiasInMinutes:(int)inMinutes standardTransitionDate:(_SYSTEMTIME *)date daylightTransitionDate:(_SYSTEMTIME *)transitionDate;
- (id)dateForRule:(_SYSTEMTIME *)rule inYear:(int64_t)year;
- (id)description;
- (id)dictForCoding;
- (int64_t)secondsFromGMTForDate:(id)date;
- (void)dealloc;
@end

@implementation ASTimeZone

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_6 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_6 = v2;
    acceptsTopLevelLeaves___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_6 == 1)
  {
    v2 = parsingLeafNode___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_6 = v2;
    parsingLeafNode___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_6 == 1)
  {
    v2 = parsingWithSubItems___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_6 = v2;
    parsingWithSubItems___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_6 == 1)
  {
    v2 = frontingBasicTypes___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_6 = v2;
    frontingBasicTypes___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_6 == 1)
  {
    v2 = notifyOfUnknownTokens___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_6 = v2;
    notifyOfUnknownTokens___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (id)gmt
{
  v2 = gmt_gmtTZ;
  if (!gmt_gmtTZ)
  {
    v3 = [MEMORY[0x277CBEBB0] gmt];
    v4 = gmt_gmtTZ;
    gmt_gmtTZ = v3;

    v2 = gmt_gmtTZ;
  }

  return v2;
}

- (ASTimeZone)initWithTZNameFromCalDB:(id)b
{
  bCopy = b;
  v11.receiver = self;
  v11.super_class = ASTimeZone;
  v5 = [(ASTimeZone *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:bCopy];
    wrappedTimeZone = v5->_wrappedTimeZone;
    v5->_wrappedTimeZone = v6;

    if (!v5->_wrappedTimeZone)
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
      v9 = v5->_wrappedTimeZone;
      v5->_wrappedTimeZone = defaultTimeZone;
    }
  }

  return v5;
}

+ (BOOL)_dateIsValidTransitionDate:(id)date inYear:(int)year withTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if (dateCopy && ([dateCopy timeIntervalSinceReferenceDate], v9 != 0.0) && objc_msgSend(dateCopy, "yearOfCommonEra") == year)
  {
    v10 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v12 = [v10 initWithTimeIntervalSinceReferenceDate:v11 + -86400.0];
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v15 = [v13 initWithTimeIntervalSinceReferenceDate:v14 + 86400.0];
    LODWORD(v13) = [zoneCopy isDaylightSavingTimeForDate:v12];
    v16 = v13 ^ [zoneCopy isDaylightSavingTimeForDate:v15];
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

+ (void)_fillOutCurrentTimeZoneInfo
{
  v194 = *MEMORY[0x277D85DE8];
  v107 = objc_opt_new();
  v105 = objc_opt_new();
  v106 = objc_opt_new();
  v104 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateWithCalendarFormat:0 timeZone:0];
  yearOfCommonEra = [v4 yearOfCommonEra];

  v6 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:yearOfCommonEra month:2 day:1 hour:0 minute:0 second:0 timeZone:0];
  v173 = 0;
  v174 = &v173;
  v175 = 0x3032000000;
  v176 = __Block_byref_object_copy__0;
  v177 = __Block_byref_object_dispose__0;
  v178 = 0;
  v167 = 0;
  v168 = &v167;
  v169 = 0x3032000000;
  v170 = __Block_byref_object_copy__0;
  v171 = __Block_byref_object_dispose__0;
  v172 = 0;
  v163 = 0;
  v164 = &v163;
  v165 = 0x2020000000;
  v166 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __41__ASTimeZone__fillOutCurrentTimeZoneInfo__block_invoke;
  v151[3] = &unk_278FC7B90;
  v153 = &v173;
  v154 = &v167;
  v155 = &v163;
  v156 = &v159;
  v89 = v6;
  v152 = v89;
  selfCopy = self;
  v158 = yearOfCommonEra;
  v120 = MEMORY[0x24C2119B0](v151);
  v109 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"America/Anchorage", @"America/Campo_Grande", @"America/Chicago", @"America/Chihuahua", @"America/Denver", @"America/Halifax", @"America/Los_Angeles", @"America/Mexico_City", @"America/New_York", @"America/Santiago", @"America/Sao_Paulo", @"Atlantic/Azores", @"Australia/Adelaide", @"Australia/Sydney", @"Europe/Athens", @"Europe/Berlin", @"Europe/London", @"Pacific/Auckland", 0}];
  allObjects = [v109 allObjects];
  v8 = [allObjects mutableCopy];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  knownTimeZoneNames = [MEMORY[0x277CBEBB0] knownTimeZoneNames];
  v10 = [knownTimeZoneNames countByEnumeratingWithState:&v147 objects:v193 count:16];
  if (v10)
  {
    v11 = *v148;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v148 != v11)
        {
          objc_enumerationMutation(knownTimeZoneNames);
        }

        v13 = *(*(&v147 + 1) + 8 * i);
        if (([v109 containsObject:v13] & 1) == 0)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [knownTimeZoneNames countByEnumeratingWithState:&v147 objects:v193 count:16];
    }

    while (v10);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v143 objects:v192 count:16];
  if (v14)
  {
    v115 = *v144;
    do
    {
      v117 = v14;
      for (j = 0; j != v117; ++j)
      {
        if (*v144 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v143 + 1) + 8 * j);
        v17 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v16];
        (v120)[2](v120, v17);
        if (v174[5])
        {
          if (v168[5])
          {
            v18 = v164[3];
            v19 = v160[3];
            v20 = objc_alloc(MEMORY[0x277CBEAA8]);
            [v174[5] timeIntervalSinceReferenceDate];
            v123 = [v20 initWithTimeIntervalSinceReferenceDate:v21 + -86400.0];
            v22 = [v17 isDaylightSavingTimeForDate:?];
            v23 = v123;
            if (v22)
            {
              v24 = objc_alloc(MEMORY[0x277CBEAA8]);
              [v174[5] timeIntervalSinceReferenceDate];
              v26 = [v24 initWithTimeIntervalSinceReferenceDate:v25 + 86400.0];

              v23 = v26;
            }

            v119 = v23;
            v27 = [v17 secondsFromGMTForDate:?];
            v125 = [MEMORY[0x277CCABB0] numberWithInteger:v27 / 60];
            v28 = v107;
            v29 = v106;
            if (v18 < v19)
            {
              v30 = v105;

              v31 = v104;
              v29 = v31;
              v28 = v30;
            }

            v121 = v28;
            v32 = [v28 objectForKeyedSubscript:v125];
            if (!v32)
            {
              v32 = objc_opt_new();
              [v28 setObject:v32 forKeyedSubscript:v125];
            }

            v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v174[5], "monthOfYear")}];
            v34 = [v32 objectForKeyedSubscript:v33];
            if (!v34)
            {
              v34 = objc_opt_new();
              [v32 setObject:v34 forKeyedSubscript:v33];
            }

            [v34 addObject:v16];
            v35 = [v29 objectForKeyedSubscript:v125];
            if (!v35)
            {
              v35 = objc_opt_new();
              [v29 setObject:v35 forKeyedSubscript:v125];
            }

            v36 = v16;
            v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v168[5], "monthOfYear")}];
            v38 = [v35 objectForKeyedSubscript:v37];
            if (!v38)
            {
              v38 = objc_opt_new();
              [v35 setObject:v38 forKeyedSubscript:v37];
            }

            [v38 addObject:v36];
          }

          else
          {
            v39 = objc_alloc(MEMORY[0x277CBEAA8]);
            [v174[5] timeIntervalSinceReferenceDate];
            v123 = [v39 initWithTimeIntervalSinceReferenceDate:v40 + -86400.0];
            v41 = [v17 isDaylightSavingTimeForDate:?];
            v42 = v123;
            if (v41)
            {
              v43 = objc_alloc(MEMORY[0x277CBEAA8]);
              [v174[5] timeIntervalSinceReferenceDate];
              v45 = [v43 initWithTimeIntervalSinceReferenceDate:v44 + 86400.0];

              v42 = v45;
            }

            v119 = v42;
            v46 = [v17 secondsFromGMTForDate:?];
            v125 = [MEMORY[0x277CCABB0] numberWithInteger:v46 / 60];
            v47 = [v17 isDaylightSavingTimeForDate:v123];
            v48 = v174[5];
            if (v47)
            {
              monthOfYear = [v48 monthOfYear];
              v50 = v105;
              if (monthOfYear >= 7)
              {
                v50 = v106;
              }
            }

            else
            {
              monthOfYear2 = [v48 monthOfYear];
              v50 = v107;
              if (monthOfYear2 > 6)
              {
                v50 = v104;
              }
            }

            v121 = v50;
            v29 = [v121 objectForKeyedSubscript:v125];
            if (!v29)
            {
              v29 = objc_opt_new();
              [v121 setObject:v29 forKeyedSubscript:v125];
            }

            v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v174[5], "monthOfYear")}];
            v33 = [v29 objectForKeyedSubscript:v32];
            if (!v33)
            {
              v33 = objc_opt_new();
              [v29 setObject:v33 forKeyedSubscript:v32];
            }

            [v33 addObject:v16];
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v143 objects:v192 count:16];
    }

    while (v14);
  }

  v191[0] = v107;
  v191[1] = v106;
  v191[2] = v105;
  v191[3] = v104;
  [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:4];
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v95 = v140 = 0u;
  v52 = [v95 countByEnumeratingWithState:&v139 objects:v190 count:16];
  v53 = MEMORY[0x277D03988];
  v88 = v52;
  if (v52)
  {
    v91 = *v140;
    type = *(MEMORY[0x277D03988] + 7);
    do
    {
      v96 = 0;
      do
      {
        if (*v140 != v91)
        {
          objc_enumerationMutation(v95);
        }

        v54 = *(*(&v139 + 1) + 8 * v96);
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v94 = v54;
        allKeys = [v54 allKeys];
        v90 = [allKeys countByEnumeratingWithState:&v135 objects:v189 count:16];
        if (v90)
        {
          v92 = *v136;
          do
          {
            for (k = 0; k != v90; ++k)
            {
              if (*v136 != v92)
              {
                objc_enumerationMutation(allKeys);
              }

              v55 = [v94 objectForKeyedSubscript:*(*(&v135 + 1) + 8 * k)];
              v133 = 0u;
              v134 = 0u;
              v131 = 0u;
              v132 = 0u;
              v102 = v55;
              allKeys2 = [v55 allKeys];
              v100 = [allKeys2 countByEnumeratingWithState:&v131 objects:v188 count:16];
              if (v100)
              {
                v99 = *v132;
                do
                {
                  for (m = 0; m != v100; ++m)
                  {
                    if (*v132 != v99)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v56 = *(*(&v131 + 1) + 8 * m);
                    v57 = [v102 objectForKeyedSubscript:v56];
                    v101 = v56;
                    v58 = [v102 objectForKeyedSubscript:v56];
                    v112 = [v58 mutableCopy];

                    v126 = objc_opt_new();
                    v118 = objc_opt_new();
                    v122 = objc_opt_new();
                    v116 = objc_opt_new();
                    v113 = objc_opt_new();
                    v129 = 0u;
                    v130 = 0u;
                    v127 = 0u;
                    v128 = 0u;
                    v114 = v57;
                    v59 = [v114 countByEnumeratingWithState:&v127 objects:v187 count:16];
                    if (v59)
                    {
                      v60 = *v128;
                      do
                      {
                        for (n = 0; n != v59; ++n)
                        {
                          if (*v128 != v60)
                          {
                            objc_enumerationMutation(v114);
                          }

                          v62 = *(*(&v127 + 1) + 8 * n);
                          v63 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v62];
                          (v120)[2](v120, v63);
                          if (v174[5] && v168[5])
                          {
                            [v126 addObject:?];
                            v64 = [MEMORY[0x277CCABB0] numberWithInteger:v164[3]];
                            [v118 addObject:v64];

                            [v122 addObject:v168[5]];
                            v65 = [MEMORY[0x277CCABB0] numberWithInteger:v160[3]];
                            [v116 addObject:v65];

                            [v113 addObject:v62];
                          }
                        }

                        v59 = [v114 countByEnumeratingWithState:&v127 objects:v187 count:16];
                      }

                      while (v59);
                    }

                    if ([v126 count])
                    {
                      for (ii = 0; ; ii = v111)
                      {
                        v67 = [v126 count];
                        v68 = ii;
                        if (v67 - 1 <= ii)
                        {
                          break;
                        }

                        v124 = ii;
                        v69 = ii + 1;
                        v111 = v68 + 1;
                        while (1)
                        {
                          v70 = v69;
                          if ([v126 count] <= v69)
                          {
                            break;
                          }

                          v71 = [v126 objectAtIndexedSubscript:v124];
                          v72 = [v126 objectAtIndexedSubscript:v69];
                          if (([v71 isEqual:v72]& 1) != 0)
                          {
                            v73 = [v122 objectAtIndexedSubscript:v124];
                            v74 = [v122 objectAtIndexedSubscript:v69];
                            if ([v73 isEqual:v74])
                            {
                              v75 = [v118 objectAtIndexedSubscript:v124];
                              v76 = [v118 objectAtIndexedSubscript:v69];
                              if ([v75 isEqual:v76])
                              {
                                v77 = [v116 objectAtIndexedSubscript:v124];
                                v78 = [v116 objectAtIndexedSubscript:v70];
                                v79 = [v77 isEqual:v78];

                                if (!v79)
                                {
                                  goto LABEL_88;
                                }

                                v71 = [v113 objectAtIndexedSubscript:v124];
                                if ([v112 containsObject:v71])
                                {
                                  v80 = [v113 objectAtIndexedSubscript:v70];
                                  v81 = [v112 containsObject:v80];

                                  if (!v81)
                                  {
                                    goto LABEL_88;
                                  }

                                  v82 = [v113 objectAtIndexedSubscript:v70];
                                  [v112 removeObject:v82];

                                  v71 = DALoggingwithCategory();
                                  if (os_log_type_enabled(v71, type))
                                  {
                                    v83 = [v113 objectAtIndexedSubscript:v70];
                                    v84 = [v113 objectAtIndexedSubscript:v124];
                                    *buf = 138412546;
                                    v180 = v83;
                                    v181 = 2112;
                                    v182 = v84;
                                    _os_log_impl(&dword_24A0AC000, v71, type, "removing duplicate tz %@ (dupe of %@)", buf, 0x16u);
                                  }
                                }
                              }

                              else
                              {
                              }
                            }

                            else
                            {
                            }
                          }

                          else
                          {
                          }

LABEL_88:
                          v69 = v70 + 1;
                        }
                      }
                    }

                    [v102 setObject:v112 forKeyedSubscript:v101];
                  }

                  v100 = [allKeys2 countByEnumeratingWithState:&v131 objects:v188 count:16];
                }

                while (v100);
              }
            }

            v90 = [allKeys countByEnumeratingWithState:&v135 objects:v189 count:16];
          }

          while (v90);
        }

        ++v96;
      }

      while (v96 != v88);
      v85 = [v95 countByEnumeratingWithState:&v139 objects:v190 count:16];
      v53 = MEMORY[0x277D03988];
      v88 = v85;
    }

    while (v85);
  }

  objc_storeStrong(&__northTZByOffsetFirstTransition, v107);
  objc_storeStrong(&__northTZByOffsetSecondTransition, v106);
  objc_storeStrong(&__southTZByOffsetFirstTransition, v105);
  objc_storeStrong(&__southTZByOffsetSecondTransition, v104);
  v86 = DALoggingwithCategory();
  v87 = *(v53 + 7);
  if (os_log_type_enabled(v86, v87))
  {
    *buf = 138413058;
    v180 = v107;
    v181 = 2112;
    v182 = v106;
    v183 = 2112;
    v184 = v105;
    v185 = 2112;
    v186 = v104;
    _os_log_impl(&dword_24A0AC000, v86, v87, "\nnorthTZByOffsetFirstTransition %@\nnorthTZByOffsetSecondTransition %@\nsouthTZByOffsetFirstTransition %@\nsouthTZByOffsetSecondTransition %@\n", buf, 0x2Au);
  }

  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v167, 8);

  _Block_object_dispose(&v173, 8);
}

void __41__ASTimeZone__fillOutCurrentTimeZoneInfo__block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  *(*(*(a1 + 56) + 8) + 24) = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v7 = [v20 nextDaylightSavingTimeTransitionAfterDate:*(a1 + 32)];
  v8 = [v7 dateWithCalendarFormat:0 timeZone:v20];

  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v8 timeIntervalSinceReferenceDate];
  v11 = [v9 initWithTimeIntervalSinceReferenceDate:v10 + 86400.0];
  v12 = [v20 nextDaylightSavingTimeTransitionAfterDate:v11];
  v13 = [v12 dateWithCalendarFormat:0 timeZone:v20];

  if ([*(a1 + 72) _dateIsValidTransitionDate:v8 inYear:*(a1 + 80) withTimeZone:v20])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    *(*(*(a1 + 56) + 8) + 24) = [v20 secondsFromGMTForDate:*(*(*(a1 + 40) + 8) + 40)];
    v14 = [*(a1 + 72) _dateIsValidTransitionDate:v13 inYear:*(a1 + 80) withTimeZone:v20];
    v15 = *(*(a1 + 48) + 8);
    if (v14)
    {
      objc_storeStrong((v15 + 40), v13);
      *(*(*(a1 + 64) + 8) + 24) = [v20 secondsFromGMTForDate:*(*(*(a1 + 48) + 8) + 40)];
      goto LABEL_7;
    }

    v19 = *(v15 + 40);
    *(v15 + 40) = 0;
  }

  else
  {
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }

LABEL_7:
}

+ (id)_tzCachePathCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  v4 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Caches/DataAccess"];
  if (missingCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v6 = [v4 stringByAppendingPathComponent:@"EASTimeZone.data"];

  return v6;
}

+ (id)_curTZDataVersion
{
  if (_curTZDataVersion_onceToken != -1)
  {
    +[ASTimeZone _curTZDataVersion];
  }

  v3 = _curTZDataVersion_tzDataVersionString;

  return v3;
}

void __31__ASTimeZone__curTZDataVersion__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v0 = MEMORY[0x24C211C90](&v5);
  if (v5)
  {
    v1 = DALoggingwithCategory();
    v2 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v1, v2))
    {
      *buf = 67109120;
      v7 = v5;
      _os_log_impl(&dword_24A0AC000, v1, v2, "Couldn't get current tz data version, status %d", buf, 8u);
    }
  }

  if (v0)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v0];
    v4 = _curTZDataVersion_tzDataVersionString;
    _curTZDataVersion_tzDataVersionString = v3;
  }
}

+ (void)_cacheTimeZoneInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ASTimeZone__cacheTimeZoneInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_cacheTimeZoneInfo_onceToken != -1)
  {
    dispatch_once(&_cacheTimeZoneInfo_onceToken, block);
  }
}

- (id)_bestGuessAtOlsonTimeZoneForOffsetInMinutes:(int)minutes daylightBiasInMinutes:(int)inMinutes standardTransitionDate:(_SYSTEMTIME *)date daylightTransitionDate:(_SYSTEMTIME *)transitionDate
{
  v7 = *&minutes;
  v78 = *MEMORY[0x277D85DE8];
  var1 = date->var1;
  if (var1 != 12)
  {
    if (var1 != 1)
    {
      goto LABEL_8;
    }

    if (date->var3 != 1)
    {
      var1 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (date->var3 >= 4)
  {
LABEL_6:
    var1 = 0;
    *&date->var0 = 0;
    *&date->var4 = 0;
    goto LABEL_8;
  }

  var1 = 12;
LABEL_8:
  v10 = transitionDate->var1;
  if (v10 == 12)
  {
    if (transitionDate->var3 < 4)
    {
      v10 = 12;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v10 == 1)
  {
    if (transitionDate->var3 != 1)
    {
      v10 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v10 = 0;
    *&transitionDate->var0 = 0;
    *&transitionDate->var4 = 0;
    var1 = date->var1;
  }

LABEL_15:
  v11 = var1;
  if (!var1 && !date->var2 && !date->var3)
  {
    var4 = date->var4;
    if (!date->var4)
    {
      goto LABEL_21;
    }
  }

  var4 = transitionDate->var0;
  if (date->var0)
  {
    if (!transitionDate->var0)
    {
LABEL_21:
      v13 = 0;
      goto LABEL_25;
    }
  }

  else if (transitionDate->var0)
  {
    v13 = 0;
    var4 = 0;
    goto LABEL_25;
  }

  v13 = v11 < 7;
  var4 = 1;
LABEL_25:
  v14 = v10;
  if ((v10 || transitionDate->var2 || transitionDate->var3 || transitionDate->var4) && (date->var0 == 0) == (transitionDate->var0 == 0))
  {
    if (v10 > 6)
    {
      v13 = 1;
    }
  }

  else if (!var4)
  {
    goto LABEL_93;
  }

  [objc_opt_class() _cacheTimeZoneInfo];
  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  v17 = &__southTZByOffsetFirstTransition;
  if (v13)
  {
    v18 = &__southTZByOffsetSecondTransition;
  }

  else
  {
    v17 = &__northTZByOffsetFirstTransition;
    v18 = &__northTZByOffsetSecondTransition;
  }

  v19 = [*v17 objectForInt:v7];
  v20 = [v19 objectForInt:v15];

  v21 = [*v18 objectForInt:v7];
  v22 = [v21 objectForInt:v16];

  if (v20 && v22)
  {
    v57 = v7;
    v23 = objc_alloc(MEMORY[0x277CBEA80]);
    v24 = [v23 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    date = [MEMORY[0x277CBEAA8] date];
    v26 = [v24 component:4 fromDate:date];

    v56 = [(ASTimeZone *)self dateForRule:date inYear:v26];
    v27 = [v56 dateByAddingTimeInterval:-86400.0];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v28 = v20;
    v29 = [v28 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v68;
LABEL_47:
      v32 = 0;
      while (1)
      {
        if (*v68 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v7 = *(*(&v67 + 1) + 8 * v32);
        if ([v22 containsObject:v7])
        {
          v33 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v7];
          [v33 daylightSavingTimeOffsetForDate:v27];
          if ((v34 / 60.0) == inMinutes)
          {
            v42 = v7;

            LODWORD(v7) = v57;
            v35 = v56;
            if (v42)
            {
              goto LABEL_70;
            }

            goto LABEL_67;
          }
        }

        if (v30 == ++v32)
        {
          v30 = [v28 countByEnumeratingWithState:&v67 objects:v77 count:16];
          if (v30)
          {
            goto LABEL_47;
          }

          break;
        }
      }
    }

    LODWORD(v7) = v57;
    v35 = v56;
LABEL_67:
    v43 = DALoggingwithCategory();
    v44 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v43, v44))
    {
      *buf = 138543618;
      v74 = v28;
      v75 = 2114;
      v76 = v22;
      _os_log_impl(&dword_24A0AC000, v43, v44, "Unable to match timezone from firstTransitionNames %{public}@, and secondTransitionNames %{public}@", buf, 0x16u);
    }

    v42 = 0;
LABEL_70:

    if (!v42)
    {
      goto LABEL_93;
    }

LABEL_87:
    v54 = [MEMORY[0x277CBEBB0] timeZoneWithName:v42];

    goto LABEL_94;
  }

  if (v20)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = v20;
    v37 = [v36 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v64;
LABEL_59:
      v40 = 0;
      while (1)
      {
        if (*v64 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v63 + 1) + 8 * v40);
        if (![v22 containsObject:v41])
        {
          break;
        }

        if (v38 == ++v40)
        {
          v38 = [v36 countByEnumeratingWithState:&v63 objects:v72 count:16];
          if (v38)
          {
            goto LABEL_59;
          }

          goto LABEL_65;
        }
      }

      v42 = v41;

      if (v42)
      {
        goto LABEL_86;
      }
    }

    else
    {
LABEL_65:
    }

    v45 = DALoggingwithCategory();
    v46 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_91;
    }

    *buf = 138543362;
    v74 = v36;
    v47 = "Unable to match timezone from firstTransitionNames %{public}@";
LABEL_90:
    _os_log_impl(&dword_24A0AC000, v45, v46, v47, buf, 0xCu);
LABEL_91:

    goto LABEL_92;
  }

  if (v22)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v48 = v22;
    v49 = [v48 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v60;
LABEL_78:
      v52 = 0;
      while (1)
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v59 + 1) + 8 * v52);
        if (![0 containsObject:v53])
        {
          break;
        }

        if (v50 == ++v52)
        {
          v50 = [v48 countByEnumeratingWithState:&v59 objects:v71 count:16];
          if (v50)
          {
            goto LABEL_78;
          }

          goto LABEL_84;
        }
      }

      v42 = v53;

      if (!v42)
      {
        goto LABEL_88;
      }

LABEL_86:

      goto LABEL_87;
    }

LABEL_84:

LABEL_88:
    v45 = DALoggingwithCategory();
    v46 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_91;
    }

    *buf = 138543362;
    v74 = v48;
    v47 = "Unable to match timezone from secondTransitionNames %{public}@";
    goto LABEL_90;
  }

LABEL_92:

LABEL_93:
  v54 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:60 * v7];
LABEL_94:

  return v54;
}

- (ASTimeZone)initWithASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict lengthUntilEndOfTerminator:(int)terminator
{
  v8 = *&terminator;
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  rootCopy = root;
  parentCopy = parent;
  dictCopy = dict;
  callbackDictCopy = callbackDict;
  v30.receiver = self;
  v30.super_class = ASTimeZone;
  v19 = [(ASTimeZone *)&v30 init];
  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithASParseContext:contextCopy root:rootCopy parent:parentCopy callbackDict:dictCopy streamCallbackDict:callbackDictCopy lengthUntilEndOfTerminator:v8];
    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v20 options:0];
    v22 = malloc_type_malloc(0xACuLL, 0x10000402F7E722EuLL);
    [v21 getBytes:v22 length:172];
    defaultTimeZone = [(ASTimeZone *)v19 _bestGuessAtOlsonTimeZoneForOffsetInMinutes:-*v22 daylightBiasInMinutes:-*(v22 + 42) standardTransitionDate:v22 + 68 daylightTransitionDate:v22 + 152];
    if (!defaultTimeZone)
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    }

    wrappedTimeZone = v19->_wrappedTimeZone;
    v19->_wrappedTimeZone = defaultTimeZone;

    v19->_gmtOffset = *v22;
    v19->_dstOffset = *(v22 + 42);
    v25 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v19->_standardDate = v25;
    *v25 = *(v22 + 68);
    v26 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v19->_daylightDate = v26;
    *v26 = *(v22 + 152);
    free(v22);
  }

  v27 = DALoggingwithCategory();
  v28 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v27, v28))
  {
    *buf = 138412290;
    v32 = v19;
    _os_log_impl(&dword_24A0AC000, v27, v28, "in initWithASParseContext:, self is %@", buf, 0xCu);
  }

  v20 = v19;
LABEL_9:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(ASTimeZone *)self name];
  abbreviation = [(ASTimeZone *)self abbreviation];
  secondsFromGMT = [(ASTimeZone *)self secondsFromGMT];
  isDaylightSavingTime = [(ASTimeZone *)self isDaylightSavingTime];
  v8 = &stru_285D39BD0;
  if (isDaylightSavingTime)
  {
    v8 = @" (Daylight)";
  }

  v9 = [v3 stringWithFormat:@"%@ (%@) offset %ld%@", name, abbreviation, secondsFromGMT, v8];

  return v9;
}

- (void)dealloc
{
  standardDate = self->_standardDate;
  if (standardDate)
  {
    free(standardDate);
  }

  daylightDate = self->_daylightDate;
  if (daylightDate)
  {
    free(daylightDate);
  }

  v5.receiver = self;
  v5.super_class = ASTimeZone;
  [(ASTimeZone *)&v5 dealloc];
}

- (id)dateForRule:(_SYSTEMTIME *)rule inYear:(int64_t)year
{
  if (*&rule->var1 || rule->var3 || rule->var4)
  {
    v6 = objc_opt_new();
    [v6 setYear:year];
    [v6 setMonth:rule->var1];
    [v6 setWeekday:rule->var2 + 1];
    if (rule->var3 == 5)
    {
      var3 = -1;
    }

    else
    {
      var3 = rule->var3;
    }

    [v6 setWeekdayOrdinal:var3];
    [v6 setHour:rule->var4];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = +[ASTimeZone gmt];
    [currentCalendar setTimeZone:v9];

    distantPast = [currentCalendar dateFromComponents:v6];
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  return distantPast;
}

- (int64_t)secondsFromGMTForDate:(id)date
{
  dateCopy = date;
  if (self->_dstOffset)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[ASTimeZone gmt];
    v7 = [dateCopy dateWithCalendarFormat:0 timeZone:v6];

    yearOfCommonEra = [v7 yearOfCommonEra];
    v9 = [(ASTimeZone *)self dateForRule:self->_daylightDate inYear:yearOfCommonEra];
    v10 = [(ASTimeZone *)self dateForRule:self->_standardDate inYear:yearOfCommonEra];
    if ([v9 compare:v10] == 1)
    {
      if ([dateCopy compare:v9] == -1)
      {
        v16 = [(ASTimeZone *)self dateForRule:self->_daylightDate inYear:yearOfCommonEra - 1];
        v12 = v9;
        v9 = v16;
      }

      else
      {
        v11 = [(ASTimeZone *)self dateForRule:self->_standardDate inYear:yearOfCommonEra + 1];
        v12 = v10;
        v10 = v11;
      }
    }

    if ([dateCopy compare:v9] == -1 || objc_msgSend(dateCopy, "compare:", v10) == 1)
    {
      gmtOffset = self->_gmtOffset;
    }

    else
    {
      gmtOffset = self->_dstOffset + self->_gmtOffset;
    }

    v15 = -60 * gmtOffset;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v14 = [v13 initWithTimeIntervalSinceReferenceDate:?];
    v15 = [(NSTimeZone *)self->_wrappedTimeZone secondsFromGMTForDate:v14];
  }

  return v15;
}

- (BOOL)isDaylightSavingTimeForDate:(id)date
{
  dateCopy = date;
  if (self->_dstOffset)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[ASTimeZone gmt];
    v7 = [dateCopy dateWithCalendarFormat:0 timeZone:v6];

    yearOfCommonEra = [v7 yearOfCommonEra];
    v9 = [(ASTimeZone *)self dateForRule:self->_daylightDate inYear:yearOfCommonEra];
    v10 = [(ASTimeZone *)self dateForRule:self->_standardDate inYear:yearOfCommonEra];
    if ([v9 compare:v10] == 1)
    {
      if ([dateCopy compare:v9] == -1)
      {
        v16 = [(ASTimeZone *)self dateForRule:self->_daylightDate inYear:yearOfCommonEra - 1];
        v12 = v9;
        v9 = v16;
      }

      else
      {
        v11 = [(ASTimeZone *)self dateForRule:self->_standardDate inYear:yearOfCommonEra + 1];
        v12 = v10;
        v10 = v11;
      }
    }

    v15 = [dateCopy compare:v9] != -1 && objc_msgSend(dateCopy, "compare:", v10) != 1;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v14 = [v13 initWithTimeIntervalSinceReferenceDate:?];
    v15 = [(NSTimeZone *)self->_wrappedTimeZone isDaylightSavingTimeForDate:v14];
  }

  return v15;
}

- (double)daylightSavingTimeOffsetForDate:(id)date
{
  dateCopy = date;
  if (self->_dstOffset)
  {
    v5 = 0.0;
    if ([(ASTimeZone *)self isDaylightSavingTimeForDate:dateCopy])
    {
      v5 = (-60 * self->_dstOffset);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    [(NSTimeZone *)self->_wrappedTimeZone daylightSavingTimeOffsetForDate:v7];
    v5 = v8;
  }

  return v5;
}

- (BOOL)_dateIsValidTransitionDate:(id)date inYear:(int64_t)year outDaylightBias:(int64_t *)bias
{
  dateCopy = date;
  v9 = dateCopy;
  if (dateCopy && ([dateCopy timeIntervalSinceReferenceDate], v10 != 0.0) && objc_msgSend(v9, "yearOfCommonEra") == year)
  {
    v11 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v9 timeIntervalSinceReferenceDate];
    v13 = [v11 initWithTimeIntervalSinceReferenceDate:v12 + -86400.0];
    v14 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v9 timeIntervalSinceReferenceDate];
    v16 = [v14 initWithTimeIntervalSinceReferenceDate:v15 + 86400.0];
    v17 = [(ASTimeZone *)self isDaylightSavingTimeForDate:v13];
    v18 = v17 ^ [(ASTimeZone *)self isDaylightSavingTimeForDate:v16];
    if (bias)
    {
      v19 = [(ASTimeZone *)self secondsFromGMTForDate:v13];
      v20 = [(ASTimeZone *)self secondsFromGMTForDate:v16];
      v21 = v19 - v20;
      if (v17)
      {
        v21 = v20 - v19;
      }

      *bias = v21 / 60;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (_SYSTEMTIME)_ruleForDate:(id)date
{
  dateCopy = date;
  v4 = +[ASTimeZone gmt];
  v5 = [dateCopy dateWithCalendarFormat:0 timeZone:v4];

  yearOfCommonEra = [v5 yearOfCommonEra];
  v7 = objc_opt_new();
  [v7 setDay:{objc_msgSend(v5, "dayOfMonth")}];
  [v7 setMonth:{objc_msgSend(v5, "monthOfYear")}];
  [v7 setYear:yearOfCommonEra];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = +[ASTimeZone gmt];
  [currentCalendar setTimeZone:v9];

  v10 = [currentCalendar dateFromComponents:v7];
  v11 = [currentCalendar components:1024 fromDate:v10];
  weekdayOrdinal = [v11 weekdayOrdinal];
  if (weekdayOrdinal < 4)
  {
    v17 = weekdayOrdinal;
  }

  else
  {
    v13 = objc_opt_new();

    [v13 setDay:{objc_msgSend(v5, "dayOfMonth") + 7}];
    [v13 setMonth:{objc_msgSend(v5, "monthOfYear")}];
    [v13 setYear:yearOfCommonEra];
    v14 = [currentCalendar dateFromComponents:v13];

    v15 = [currentCalendar components:24 fromDate:v14];
    month = [v15 month];
    if (month == [v5 monthOfYear])
    {
      v17 = 4;
    }

    else
    {
      v17 = 5;
    }

    v7 = v13;
    v10 = v14;
  }

  monthOfYear = [v5 monthOfYear];
  dayOfWeek = [v5 dayOfWeek];
  hourOfDay = [v5 hourOfDay];

  v21 = (v17 << 48) | (dayOfWeek << 32) | (monthOfYear << 16);
  v22 = hourOfDay;
  result.var4 = v22;
  result.var5 = WORD1(v22);
  result.var6 = WORD2(v22);
  result.var7 = HIWORD(v22);
  result.var0 = v21;
  result.var1 = WORD1(v21);
  result.var2 = WORD2(v21);
  result.var3 = HIWORD(v21);
  return result;
}

- ($31FC2A3E460831F3E4E0FB7CDAAFBC8B)mallocTZIForDate:(id)date
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = [date dateWithCalendarFormat:0 timeZone:self];
  yearOfCommonEra = [v4 yearOfCommonEra];
  v6 = malloc_type_calloc(0xACuLL, 1uLL, 0x10000402F7E722EuLL);
  v54 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:yearOfCommonEra month:1 day:1 hour:0 minute:0 second:0 timeZone:self];
  v7 = [(ASTimeZone *)self nextDaylightSavingTimeTransitionAfterDate:?];
  v8 = [v7 dateWithCalendarFormat:0 timeZone:self];

  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v8 timeIntervalSinceReferenceDate];
  v11 = [v9 initWithTimeIntervalSinceReferenceDate:v10 + -86400.0];
  v12 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v8 timeIntervalSinceReferenceDate];
  v14 = [v12 initWithTimeIntervalSinceReferenceDate:v13 + 86400.0];
  v15 = [(ASTimeZone *)self nextDaylightSavingTimeTransitionAfterDate:v14];
  v16 = [v15 dateWithCalendarFormat:0 timeZone:self];

  v55 = 0;
  if ([(ASTimeZone *)self _dateIsValidTransitionDate:v8 inYear:yearOfCommonEra outDaylightBias:&v55])
  {
    if ([(ASTimeZone *)self _dateIsValidTransitionDate:v16 inYear:yearOfCommonEra outDaylightBias:0])
    {
      v52 = v4;
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v17, v18))
      {
        v51 = [v8 dateWithCalendarFormat:0 timeZone:self];
        v19 = [v16 dateWithCalendarFormat:0 timeZone:self];
        *buf = 134218754;
        v57 = yearOfCommonEra;
        v58 = 2112;
        v59 = v54;
        v60 = 2112;
        v61 = v51;
        v62 = 2112;
        v63 = v19;
        _os_log_impl(&dword_24A0AC000, v17, v18, "_tziDataWithOpenConnectionForYear. year is %ld, firstOfTheYear is %@, firstTransitionDate is %@, secondTransitionDate is %@", buf, 0x2Au);
      }

      *(v6 + 42) = v55;
      if ([(ASTimeZone *)self isDaylightSavingTimeForDate:v11])
      {
        v20 = [(ASTimeZone *)self secondsFromGMTForDate:v14];
        v21 = ((v20 * 0x7777777777777777) >> 64) - v20;
        *v6 = (v21 >> 5) + (v21 >> 63);
        v22 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:(v20 - 60 * v55)];
        *(v6 + 68) = [(ASTimeZone *)self _ruleForDate:v22];
        *(v6 + 76) = v23;

        v24 = MEMORY[0x277CBEAA8];
        v25 = v20;
        v26 = v16;
      }

      else
      {
        v37 = [(ASTimeZone *)self secondsFromGMTForDate:v11];
        v38 = ((v37 * 0x7777777777777777) >> 64) - v37;
        *v6 = (v38 >> 5) + (v38 >> 63);
        v39 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v16 sinceDate:(v37 - 60 * v55)];
        *(v6 + 68) = [(ASTimeZone *)self _ruleForDate:v39];
        *(v6 + 76) = v40;

        v24 = MEMORY[0x277CBEAA8];
        v25 = v37;
        v26 = v8;
      }

      v41 = [v24 dateWithTimeInterval:v26 sinceDate:v25];
      *(v6 + 19) = [(ASTimeZone *)self _ruleForDate:v41];
      *(v6 + 20) = v42;

      v4 = v52;
    }

    else
    {
      *(v6 + 42) = v55;
      if ([(ASTimeZone *)self isDaylightSavingTimeForDate:v11])
      {
        v31 = [(ASTimeZone *)self secondsFromGMTForDate:v14];
        v32 = ((v31 * 0x7777777777777777) >> 64) - v31;
        *v6 = (v32 >> 5) + (v32 >> 63);
        v33 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:(v31 - 60 * v55)];
        *(v6 + 68) = [(ASTimeZone *)self _ruleForDate:v33];
        *(v6 + 76) = v34;

        v35 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v54 sinceDate:0.0];
        *(v6 + 19) = [(ASTimeZone *)self _ruleForDate:v35];
        *(v6 + 20) = v36;
      }

      else
      {
        v53 = v4;
        v43 = [(ASTimeZone *)self secondsFromGMTForDate:v11];
        v44 = ((v43 * 0x7777777777777777) >> 64) - v43;
        *v6 = (v44 >> 5) + (v44 >> 63);
        v35 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:yearOfCommonEra month:12 day:31 hour:23 minute:59 second:59 timeZone:self];
        v45 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v35 sinceDate:0.0];
        *(v6 + 68) = [(ASTimeZone *)self _ruleForDate:v45];
        *(v6 + 76) = v46;

        v47 = v43;
        v4 = v53;
        v48 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:v47];
        *(v6 + 19) = [(ASTimeZone *)self _ruleForDate:v48];
        *(v6 + 20) = v49;
      }
    }
  }

  else
  {
    secondsFromGMT = [(ASTimeZone *)self secondsFromGMT];
    isDaylightSavingTime = [(ASTimeZone *)self isDaylightSavingTime];
    v29 = secondsFromGMT - 3600;
    if (!isDaylightSavingTime)
    {
      v29 = secondsFromGMT;
    }

    v30 = ((v29 * 0x7777777777777777) >> 64) - v29;
    *v6 = (v30 >> 5) + (v30 >> 63);
    *(v6 + 42) = -60;
  }

  return v6;
}

- (ASTimeZone)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = ASTimeZone;
  return [(ASTimeZone *)&v4 init];
}

- (ASTimeZone)initWithName:(id)name data:(id)data
{
  v5.receiver = self;
  v5.super_class = ASTimeZone;
  return [(ASTimeZone *)&v5 init:name];
}

- (ASTimeZone)initWithCodingDict:(id)dict
{
  dictCopy = dict;
  v16.receiver = self;
  v16.super_class = ASTimeZone;
  v5 = [(ASTimeZone *)&v16 init];
  if (v5)
  {
    v6 = [dictCopy objectForKeyedSubscript:@"gmtOffset"];
    v5->_gmtOffset = [v6 intValue];

    v7 = [dictCopy objectForKeyedSubscript:@"dstOffset"];
    v5->_dstOffset = [v7 intValue];

    v8 = [dictCopy objectForKeyedSubscript:@"standardDate"];
    if ([v8 length])
    {
      v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      v5->_standardDate = v9;
      [v8 getBytes:v9 length:16];
    }

    v10 = [dictCopy objectForKeyedSubscript:@"daylightDate"];
    if ([v10 length])
    {
      v11 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      v5->_daylightDate = v11;
      [v10 getBytes:v11 length:16];
    }

    v12 = [dictCopy objectForKeyedSubscript:@"wrappedTZName"];
    if (v12)
    {
      defaultTimeZone = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v12];
    }

    else
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    }

    wrappedTimeZone = v5->_wrappedTimeZone;
    v5->_wrappedTimeZone = defaultTimeZone;
  }

  return v5;
}

- (id)dictForCoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_gmtOffset];
  [dictionary setObject:v4 forKeyedSubscript:@"gmtOffset"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_dstOffset];
  [dictionary setObject:v5 forKeyedSubscript:@"dstOffset"];

  standardDate = self->_standardDate;
  if (standardDate)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:standardDate length:16];
    [dictionary setObject:v7 forKeyedSubscript:@"standardDate"];
  }

  daylightDate = self->_daylightDate;
  if (daylightDate)
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:daylightDate length:16];
    [dictionary setObject:v9 forKeyedSubscript:@"daylightDate"];
  }

  name = [(NSTimeZone *)self->_wrappedTimeZone name];
  if (name)
  {
    [dictionary setObject:name forKeyedSubscript:@"wrappedTZName"];
  }

  return dictionary;
}

@end