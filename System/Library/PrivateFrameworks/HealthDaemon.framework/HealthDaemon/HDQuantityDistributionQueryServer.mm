@interface HDQuantityDistributionQueryServer
- (BOOL)_walkSampleValuesWithPredicate:(uint64_t)predicate errorOut:(void *)out handler:;
- (HDQuantityDistributionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_categoryPredicateWithTypeCode:(void *)code matchingValue:(uint64_t)value errorOut:;
- (id)_sqlitePredicateForObjectType:(uint64_t)type errorOut:;
- (id)_walkSampleDatesWithPredicate:(uint64_t)predicate entityClass:(char)class includeUUID:(uint64_t)d errorOut:;
- (id)_walkSampleDatesWithPredicate:(uint64_t)predicate entityClass:(uint64_t)class errorOut:(__n128)out;
- (void)_addAttenuatedSamplesUsingAttenuateSamples:(uint64_t)samples sampleCount:(void *)count distributionCalculator:(int)calculator computeAverageAndDuration:(void *)duration calculatorForAverageAndDuration:(void *)andDuration attenuationEngine:;
- (void)_addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:(void *)calculator distributionCalculator:(int)distributionCalculator computeAverageAndDuration:(void *)duration calculatorForAverageAndDuration:(double)andDuration dataFactor:;
- (void)_queue_start;
@end

@implementation HDQuantityDistributionQueryServer

- (HDQuantityDistributionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = HDQuantityDistributionQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    overlapProcessor = v11->_overlapProcessor;
    v11->_overlapProcessor = v12;

    v14 = objc_msgSend_copy(configurationCopy);
    quantityDistributionQueryServerConfiguration = v11->_quantityDistributionQueryServerConfiguration;
    v11->_quantityDistributionQueryServerConfiguration = v14;
  }

  return v11;
}

- (void)_queue_start
{
  p_isa = &self->super.super.isa;
  v254 = *MEMORY[0x277D85DE8];
  v232.receiver = self;
  v232.super_class = HDQuantityDistributionQueryServer;
  [(HDQueryServer *)&v232 _queue_start];
  clientProxy = [p_isa clientProxy];
  sampleType = [p_isa sampleType];
  v231 = 0;
  v5 = [p_isa authorizationStatusRecordForType:sampleType error:&v231];
  v206 = v231;
  if (!v5)
  {
    queryUUID = [p_isa queryUUID];
    [clientProxy client_deliverError:v206 forQuery:queryUUID];
  }

  v207 = p_isa;
  v205 = v5;
  if (![v5 canRead])
  {
    p_isa = MEMORY[0x277CBEBF8];
    v15 = v206;
    goto LABEL_126;
  }

  v202 = sampleType;
  if (p_isa)
  {
    histogramBucketSize = [p_isa[26] histogramBucketSize];
    _unit = [histogramBucketSize _unit];

    quantityType = [p_isa quantityType];
    canonicalUnit = [quantityType canonicalUnit];
    [canonicalUnit _valueByConvertingValue:_unit toUnit:1.0];
    v10 = v9;
    histogramAnchor = [p_isa[26] histogramAnchor];

    if (histogramAnchor)
    {
      histogramAnchor2 = [p_isa[26] histogramAnchor];
      [histogramAnchor2 doubleValueForUnit:_unit];
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    histogramBucketSize2 = [p_isa[26] histogramBucketSize];
    [histogramBucketSize2 doubleValueForUnit:_unit];
    v18 = v17;

    v19 = [HDQuantityDistributionCalculator alloc];
    startDate = [p_isa[26] startDate];
    endDate = [p_isa[26] endDate];
    anchorDate = [p_isa[26] anchorDate];
    intervalComponents = [p_isa[26] intervalComponents];
    v204 = [(HDQuantityDistributionCalculator *)v19 initWithStartDate:startDate endDate:endDate anchorDate:anchorDate intervalComponents:intervalComponents histogramBucketAnchor:v14 histogramBucketSize:v18];

    v24 = v207;
    options = [v207[26] options];
    if (options)
    {
      intervalComponents2 = [v207[26] intervalComponents];
      v27 = objc_msgSend_copy(intervalComponents2);

      calendar = [v27 calendar];

      if (!calendar)
      {
        currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
        [v27 setCalendar:currentCalendar];
      }

      v30 = objc_alloc(MEMORY[0x277CCDD78]);
      anchorDate2 = [v207[26] anchorDate];
      v32 = [v30 initWithAnchorDate:anchorDate2 intervalComponents:v27];

      v33 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
      profile = [v207 profile];
      quantityType2 = [v207 quantityType];
      v36 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v33 initWithProfile:profile quantityType:quantityType2];

      quantityType3 = [v207 quantityType];
      v38 = [HDStatisticsCollectionCalculator calculatorForQuantityType:quantityType3 intervalCollection:v32 options:66 mergeStrategy:0];

      v24 = v207;
      [v38 setSourceOrderProvider:v36];

      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v236[0] = MEMORY[0x277D85DD0];
      v236[1] = 3221225472;
      v236[2] = __72__HDQuantityDistributionQueryServer__queue_fetchHistogramDataWithError___block_invoke;
      v236[3] = &unk_278614AE0;
      v201 = v39;
      v237 = v201;
      [v38 setStatisticsHandler:v236];
      v203 = v38;
      [v38 reset];
    }

    else
    {
      v201 = 0;
      v203 = 0;
    }

    options2 = [v24[26] options];
    contextStyle = [v24[26] contextStyle];
    v42 = 0;
    v235 = 0;
    v209 = _unit;
    v228 = options;
    if (contextStyle > 3)
    {
      if (contextStyle <= 5)
      {
        v43 = (options2 >> 1) & 1;
        if (contextStyle == 4)
        {
          v44 = v24;
          v45 = 147;
        }

        else
        {
          v44 = v24;
          v45 = 178;
        }

        goto LABEL_27;
      }

      if (contextStyle == 6)
      {
        v64 = _HKCategoryValueSleepAnalysisAsleepValues();
        v67 = [MEMORY[0x277CCD0C0] dataTypeWithCode:63];
        v68 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:v67 errorOut:&v235];

        if (v64)
        {
          v69 = HDCategorySampleEntityPredicateEqualToValues(v64);
          v70 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v68 otherPredicate:v69];

          v68 = v70;
        }

        v71 = objc_opt_class();
        v46 = [(HDQuantityDistributionQueryServer *)v24 _walkSampleDatesWithPredicate:v68 entityClass:v71 errorOut:&v235, v72];

        goto LABEL_35;
      }

      v46 = 0;
      if (contextStyle == 7)
      {
        v43 = (options2 >> 1) & 1;
        v47 = &unk_283CB3EE8;
        v44 = v24;
        v45 = 199;
LABEL_28:
        v64 = [(HDQuantityDistributionQueryServer *)v44 _categoryPredicateWithTypeCode:v45 matchingValue:v47 errorOut:&v235];
        v65 = objc_opt_class();
        v66 = [(HDQuantityDistributionQueryServer *)v24 _walkSampleDatesWithPredicate:v64 entityClass:v65 includeUUID:v43 errorOut:&v235];
LABEL_34:
        v46 = v66;
LABEL_35:

        v42 = v235;
        goto LABEL_36;
      }

      goto LABEL_36;
    }

    if (contextStyle == 1)
    {
      v48 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
      v224 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:v48 errorOut:&v235];

      v222 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
      profile2 = [v24 profile];
      metadataManager = [profile2 metadataManager];
      v51 = *MEMORY[0x277CCE060];
      v52 = [metadataManager predicateWithMetadataKey:*MEMORY[0x277CCE060] exists:0];

      v53 = MEMORY[0x277D10B20];
      aBlock = v222;
      v239 = v52;
      [MEMORY[0x277CBEA60] arrayWithObjects:&aBlock count:2];
      v55 = v54 = options2;
      v56 = [v53 predicateMatchingAllPredicates:v55];

      profile3 = [v207 profile];
      metadataManager2 = [profile3 metadataManager];
      [MEMORY[0x277CBEB98] setWithObject:&unk_283CB3F00];
      v60 = v59 = clientProxy;
      v61 = [metadataManager2 predicateWithMetadataKey:v51 allowedValues:v60];

      clientProxy = v59;
      v62 = MEMORY[0x277D10B20];
      *&v250 = v56;
      *(&v250 + 1) = v61;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v250 count:2];
      options2 = [v62 predicateMatchingAnyPredicates:v63];

      v64 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v224 otherPredicate:options2];

      LOBYTE(options2) = v54;
      _unit = v209;

      v24 = v207;
    }

    else
    {
      if (contextStyle != 2)
      {
        v46 = 0;
        if (contextStyle == 3)
        {
          v43 = (options2 >> 1) & 1;
          v44 = v24;
          v45 = 140;
LABEL_27:
          v47 = 0;
          goto LABEL_28;
        }

LABEL_36:
        v76 = v42;
        if (!v46 && v76)
        {
          p_isa = 0;
          v77 = v76;
          v78 = v77;
LABEL_124:

          goto LABEL_125;
        }

        v225 = options2;
        v197 = v76;
        objectType = [v24[26] objectType];
        v234 = 0;
        v80 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:objectType errorOut:&v234];
        v81 = v234;
        v198 = v80;
        v196 = v81;
        if (!v80)
        {
          v104 = v81;
          if (v104)
          {
            v78 = v104;
            p_isa = 0;
            v105 = v104;
          }

          else
          {
            v105 = 0;
            p_isa = 0;
            v78 = v206;
          }

          goto LABEL_123;
        }

        v208 = v46;
        v220 = v228 & 1;
        v82 = *MEMORY[0x277CCCB58];
        v83 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB58]];
        v84 = [objectType isEqual:v83];

        options3 = [v24[26] options];
        v86 = [MEMORY[0x277CCD830] _quantityTypeWithCode:272];
        v87 = [HDQuantitySampleAttenuationProvider alloc];
        profile4 = [v24 profile];
        v194 = v86;
        v89 = [(HDQuantitySampleAttenuationProvider *)v87 initWithQuantityType:v86 profile:profile4];

        v193 = v89;
        v90 = [[HDQuantitySampleAttenuationEngine alloc] initWithAttenuationEngineDelegate:v89];
        v223 = objectType;
        v192 = v90;
        if (v84 && (options3 & 4) != 0)
        {
          v91 = v90;
          v92 = v46;
          v93 = v198;
          v94 = v204;
          v95 = v203;
          v96 = v91;
          aBlock = MEMORY[0x277D85DD0];
          v239 = 3221225472;
          v240 = __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke;
          v241 = &unk_27862B228;
          v242 = v207;
          v97 = v93;
          v243 = v97;
          v98 = v92;
          v244 = v98;
          v248 = v10;
          v99 = v94;
          v245 = v99;
          v100 = v228 & 1;
          v249 = v228 & 1;
          v101 = v95;
          v246 = v101;
          v102 = v96;
          v247 = v102;
          v195 = _Block_copy(&aBlock);

          sampleType = v202;
          if (v228)
          {
LABEL_43:
            v233 = 0;
            v103 = [v203 performInitialStatisticsTransaction:v195 error:&v233];
            goto LABEL_51;
          }
        }

        else
        {
          quantityType4 = [v207 quantityType];
          v107 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v82];
          v108 = [quantityType4 isEqual:v107];

          sampleType = v202;
          if (v108)
          {
            v109 = 1;
          }

          else
          {
            quantityType5 = [v207 quantityType];
            v111 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB88]];
            v109 = [quantityType5 isEqual:v111];
          }

          v112 = v46;
          v113 = v198;
          v114 = v204;
          v115 = v203;
          aBlock = MEMORY[0x277D85DD0];
          v239 = 3221225472;
          v240 = __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke;
          v241 = &unk_27862B1B0;
          v242 = v207;
          v116 = v113;
          v243 = v116;
          v117 = v112;
          v244 = v117;
          v247 = v10;
          LOBYTE(v248) = v109;
          v118 = v114;
          v245 = v118;
          v100 = v228 & 1;
          BYTE1(v248) = v228 & 1;
          v119 = v115;
          v246 = v119;
          v195 = _Block_copy(&aBlock);

          objectType = v223;
          if (v228)
          {
            goto LABEL_43;
          }
        }

        v233 = 0;
        v103 = v195[2](v195, &v233);
LABEL_51:
        v120 = v103;
        v121 = v233;
        if (v120)
        {
          v187 = v121;
          v218 = [(HDQuantityDistributionCalculator *)v204 quantityDistributionsWithUnit:_unit];
          v188 = clientProxy;
          if ((v225 & 2) != 0 && v46)
          {
            v122 = v218;
            v123 = v46;
            v124 = *(v123 + 5);
            if (v124 && [v124 count])
            {
              v125 = [*(v123 + 5) objectAtIndexedSubscript:0];
              v126 = 0;
              v127 = 0;
              if (v125)
              {
                v127 = v125[1];
              }

              *(v123 + 1) = v127;

              v128 = [*(v123 + 5) objectAtIndexedSubscript:0];
              if (v128)
              {
                v126 = v128[2];
              }

              *(v123 + 2) = v126;

              *(v123 + 3) = 0;
            }

            v218 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v250 = 0u;
            v251 = 0u;
            v252 = 0u;
            v253 = 0u;
            obj = v122;
            v226 = [obj countByEnumeratingWithState:&v250 objects:&aBlock count:16];
            if (v226)
            {
              v216 = *v251;
              do
              {
                v129 = 0;
                do
                {
                  if (*v251 != v216)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v130 = *(*(&v250 + 1) + 8 * v129);
                  startDate2 = [v130 startDate];
                  [startDate2 timeIntervalSinceReferenceDate];
                  v133 = v132;
                  endDate2 = [v130 endDate];
                  [endDate2 timeIntervalSinceReferenceDate];
                  v136 = *(v123 + 5);
                  if (!v136)
                  {
                    goto LABEL_94;
                  }

                  if (!*(v123 + 32))
                  {
                    goto LABEL_94;
                  }

                  v137 = v135;
                  if (*(v123 + 1) > v135)
                  {
                    goto LABEL_94;
                  }

                  v138 = *(v123 + 3);
                  if (v138 >= [v136 count])
                  {
                    goto LABEL_94;
                  }

                  while (*(v123 + 2) < v133)
                  {
                    v139 = *(v123 + 3);
                    if (v139 >= [*(v123 + 5) count] - 1)
                    {
                      break;
                    }

                    ++*(v123 + 3);
                    v140 = [*(v123 + 5) objectAtIndexedSubscript:?];
                    v141 = 0;
                    v142 = 0;
                    if (v140)
                    {
                      v142 = v140[1];
                    }

                    *(v123 + 1) = v142;

                    v143 = [*(v123 + 5) objectAtIndexedSubscript:*(v123 + 3)];
                    if (v143)
                    {
                      v141 = v143[2];
                    }

                    *(v123 + 2) = v141;
                  }

                  if (*(v123 + 1) < v137)
                  {
                    v144 = 0;
                    while (1)
                    {
                      v145 = [*(v123 + 5) objectAtIndexedSubscript:*(v123 + 3)];
                      v146 = v145;
                      if (v145)
                      {
                        v147 = *(v145 + 24);
                      }

                      else
                      {
                        v147 = 0;
                      }

                      v148 = v147;

                      if (v148)
                      {
                        if (!v144)
                        {
                          v144 = objc_alloc_init(MEMORY[0x277CBEB18]);
                        }

                        [v144 addObject:v148];
                      }

                      if (*(v123 + 2) > v137)
                      {
                        break;
                      }

                      v149 = *(v123 + 3) + 1;
                      *(v123 + 3) = v149;
                      if (v149 >= [*(v123 + 5) count])
                      {
                        break;
                      }

                      v150 = [*(v123 + 5) objectAtIndexedSubscript:*(v123 + 3)];
                      v151 = 0;
                      v152 = 0;
                      if (v150)
                      {
                        v152 = v150[1];
                      }

                      *(v123 + 1) = v152;

                      v153 = [*(v123 + 5) objectAtIndexedSubscript:*(v123 + 3)];
                      if (v153)
                      {
                        v151 = v153[2];
                      }

                      *(v123 + 2) = v151;

                      if (*(v123 + 1) >= v137)
                      {
                        goto LABEL_95;
                      }
                    }
                  }

                  else
                  {
LABEL_94:
                    v144 = 0;
                  }

LABEL_95:

                  if (v144 && [v144 count])
                  {
                    v214 = objc_alloc(MEMORY[0x277CCDE20]);
                    startDate3 = [v130 startDate];
                    endDate3 = [v130 endDate];
                    minimumBucketValue = [v130 minimumBucketValue];
                    [v130 minimumValue];
                    v156 = v229 = v144;
                    maximumValue = [v130 maximumValue];
                    averageValue = [v130 averageValue];
                    duration = [v130 duration];
                    histogramCounts = [v130 histogramCounts];
                    v161 = [v214 initWithStartDate:startDate3 endDate:endDate3 minimumBucketValue:minimumBucketValue minimumValue:v156 maximumValue:maximumValue averageValue:averageValue duration:duration histogramCounts:histogramCounts contextIdentifiers:v229];

                    v46 = v208;
                    _unit = v209;

                    v144 = v229;
                    [v218 addObject:v161];
                  }

                  else
                  {
                    [v218 addObject:v130];
                  }

                  ++v129;
                  objectType = v223;
                  v100 = v220;
                }

                while (v129 != v226);
                v162 = [obj countByEnumeratingWithState:&v250 objects:&aBlock count:16];
                v226 = v162;
              }

              while (v162);
            }

            clientProxy = v188;
            sampleType = v202;
          }

          v230 = v218;
          if (v100)
          {
            v165 = v201;
            v191 = _unit;
            p_isa = objc_alloc_init(MEMORY[0x277CBEB18]);
            if ([v230 count])
            {
              v166 = 0;
              v167 = 0;
              v189 = p_isa;
              v190 = v165;
              do
              {
                if (v167 >= [v165 count])
                {
                  break;
                }

                v168 = [v230 objectAtIndexedSubscript:v166];
                v169 = [v165 objectAtIndexedSubscript:v167];
                startDate4 = [v168 startDate];
                startDate5 = [v169 startDate];
                v227 = startDate5;
                if ([startDate4 isEqual:startDate5])
                {
                  averageQuantity = [v169 averageQuantity];
                  v217 = v166;
                  [averageQuantity doubleValueForUnit:v191];
                  v174 = v173;

                  v221 = [MEMORY[0x277CCD7E8] quantityWithUnit:v191 doubleValue:v174];
                  v215 = objc_alloc(MEMORY[0x277CCDE20]);
                  startDate6 = [v168 startDate];
                  obja = [v168 endDate];
                  minimumBucketValue2 = [v168 minimumBucketValue];
                  minimumValue = [v168 minimumValue];
                  maximumValue2 = [v168 maximumValue];
                  duration2 = [v169 duration];
                  histogramCounts2 = [v168 histogramCounts];
                  [v168 contextIdentifiers];
                  v213 = v169;
                  v180 = startDate4;
                  v182 = v181 = v167;
                  v183 = minimumValue;
                  v184 = [v215 initWithStartDate:startDate6 endDate:obja minimumBucketValue:minimumBucketValue2 minimumValue:minimumValue maximumValue:maximumValue2 averageValue:v221 duration:duration2 histogramCounts:histogramCounts2 contextIdentifiers:v182];

                  v185 = v181;
                  startDate4 = v180;
                  v169 = v213;

                  v165 = v190;
                  sampleType = v202;

                  p_isa = v189;
                  [v189 addObject:v184];
                  v166 = v217 + 1;
                  v167 = v185 + 1;

                  objectType = v223;
                }

                else if ([startDate4 hk_isBeforeDate:startDate5])
                {
                  [p_isa addObject:v168];
                  ++v166;
                }

                else
                {
                  ++v167;
                }
              }

              while (v166 < [v230 count]);
            }

            v78 = v206;
            clientProxy = v188;
            v46 = v208;
            _unit = v209;
          }

          else
          {
            v78 = v206;
            p_isa = v230;
          }

          v164 = v187;
        }

        else
        {
          v163 = v121;
          if (v163)
          {
            v78 = v163;
            p_isa = 0;
            v164 = v163;

LABEL_122:
            v105 = v195;
LABEL_123:

            v77 = v197;
            goto LABEL_124;
          }

          v230 = 0;
          v164 = 0;
          p_isa = 0;
          v78 = v206;
        }

        goto LABEL_122;
      }

      workoutType = [MEMORY[0x277CCD720] workoutType];
      v64 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:workoutType errorOut:&v235];
    }

    v74 = objc_opt_class();
    v66 = [(HDQuantityDistributionQueryServer *)v24 _walkSampleDatesWithPredicate:v64 entityClass:v74 errorOut:&v235, v75];
    goto LABEL_34;
  }

  v78 = v206;
LABEL_125:
  v15 = v78;

  if (!p_isa)
  {
    p_isa = [v207 queryUUID];
    [clientProxy client_deliverError:v15 forQuery:p_isa];
    goto LABEL_127;
  }

LABEL_126:
  queryUUID2 = [v207 queryUUID];
  [clientProxy client_deliverDistributionCollection:p_isa forQuery:queryUUID2];

LABEL_127:
}

- (id)_sqlitePredicateForObjectType:(uint64_t)type errorOut:
{
  v5 = a2;
  v6 = HDSampleEntityPredicateForDataType(v5);
  filter = [self filter];

  if (!filter)
  {
    v15 = v6;
    goto LABEL_7;
  }

  filter2 = [self filter];
  v9 = objc_opt_respondsToSelector();

  filter3 = [self filter];
  if (v9)
  {
    v11 = [MEMORY[0x277CBEB98] setWithObject:v5];
    v12 = [filter3 builder_filterWithDataTypes:v11];

    filter3 = v12;
  }

  profile = [self profile];
  v14 = [filter3 predicateWithProfile:profile];

  if (v14)
  {
    v15 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v14 otherPredicate:v6];

LABEL_7:
    v16 = v15;
    goto LABEL_9;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:type code:100 format:@"Error building predicate for query"];
  v16 = 0;
LABEL_9:

  return v16;
}

uint64_t __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke(uint64_t a1, void *a2)
{
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v35 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_2;
  v26[3] = &unk_27862B188;
  v6 = *(a1 + 48);
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  v7 = *(a1 + 32);
  v27 = v6;
  v28 = v7;
  v31 = v36;
  v29 = *(a1 + 56);
  v34 = *(a1 + 81);
  v30 = *(a1 + 64);
  LOBYTE(v4) = [(HDQuantityDistributionQueryServer *)v4 _walkSampleValuesWithPredicate:v5 errorOut:&v35 handler:v26];
  v8 = v35;
  v9 = v8;
  if (v4)
  {
    if (*(a1 + 80) == 1)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 216);
      v25 = v8;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_4;
      v20[3] = &unk_27862B160;
      v20[4] = v10;
      v21 = *(a1 + 56);
      v24 = *(a1 + 81);
      v22 = *(a1 + 64);
      v23 = *(a1 + 72);
      v12 = [v11 fetchFinalOverlapSamplesWithErrorOut:&v25 handler:v20];
      v13 = v25;

      if ((v12 & 1) == 0)
      {
        v14 = v13;
        v15 = v14;
        if (v14)
        {
          if (a2)
          {
            v16 = v14;
            *a2 = v15;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      v12 = 1;
      v13 = v8;
    }
  }

  else
  {
    v17 = v8;
    v13 = v17;
    if (v17)
    {
      if (a2)
      {
        v18 = v17;
        *a2 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
  }

  _Block_object_dispose(v36, 8);
  return v12;
}

uint64_t __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = *(a1 + 32);
  if (v12 && ([(_HDQuantityDateIntervals *)v12 insideRanges:a5]& 1) == 0 && ![(_HDQuantityDateIntervals *)*(a1 + 32) insideRanges:a6])
  {
    return 1;
  }

  v13 = *(a1 + 72);
  v14 = v13 * a4;
  v15 = *(a1 + 40);
  if (*(a1 + 80) == 1)
  {
    v16 = *(v15 + 216);
    v17 = *(*(*(a1 + 64) + 8) + 24);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_3;
    v30[3] = &unk_27862B160;
    v30[4] = v15;
    v31 = *(a1 + 48);
    v34 = *(a1 + 81);
    v32 = *(a1 + 56);
    v33 = *(a1 + 72);
    v24 = a5;
    v25 = a6;
    v26 = v14;
    v27 = 1;
    memset(v28, 0, sizeof(v28));
    v29 = a2;
    v18 = [v16 fetchOverlapProcessSamplesFrom:&v24 setAnchorTime:v17 errorOut:a3 handler:v30];
    v19 = *(*(a1 + 64) + 8);
    if (*(v19 + 24) == 1)
    {
      *(v19 + 24) = 0;
    }
  }

  else
  {
    v20 = *(a1 + 81);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v24 = a5;
    v25 = a6;
    v26 = v14;
    v18 = 1;
    v27 = 1;
    memset(v28, 0, sizeof(v28));
    v29 = a2;
    [(HDQuantityDistributionQueryServer *)v15 _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:v21 distributionCalculator:v20 computeAverageAndDuration:v22 calculatorForAverageAndDuration:v13 dataFactor:?];
  }

  return v18;
}

uint64_t __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v12 = v3;
    v13 = v4;
    v6 = a2;
    do
    {
      v8 = *(a3 + 16);
      v10[0] = *a3;
      v10[1] = v8;
      v11 = *(a3 + 32);
      [(HDQuantityDistributionQueryServer *)*(a1 + 32) _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:v10 distributionCalculator:*(a1 + 40) computeAverageAndDuration:*(a1 + 64) calculatorForAverageAndDuration:*(a1 + 48) dataFactor:*(a1 + 56)];
      a3 += 40;
      --v6;
    }

    while (v6);
  }

  return 1;
}

- (void)_addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:(void *)calculator distributionCalculator:(int)distributionCalculator computeAverageAndDuration:(void *)duration calculatorForAverageAndDuration:(double)andDuration dataFactor:
{
  calculatorCopy = calculator;
  durationCopy = duration;
  if (self)
  {
    [calculatorCopy addDataPoint:a2[2] startTime:*a2 endTime:a2[1]];
    if (distributionCalculator)
    {
      [durationCopy addSampleValue:*(a2 + 4) startTime:0 endTime:a2[2] / andDuration sourceID:*a2 error:a2[1]];
    }
  }
}

- (BOOL)_walkSampleValuesWithPredicate:(uint64_t)predicate errorOut:(void *)out handler:
{
  outCopy = out;
  if (self)
  {
    v8 = a2;
    profile = [self profile];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__HDQuantityDistributionQueryServer__walkSampleValuesWithPredicate_errorOut_handler___block_invoke;
    v12[3] = &unk_27862B250;
    v13 = outCopy;
    v10 = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v8 profile:profile options:4 error:predicate handler:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v12 = v3;
    v13 = v4;
    v6 = a2;
    do
    {
      v8 = *(a3 + 16);
      v10[0] = *a3;
      v10[1] = v8;
      v11 = *(a3 + 32);
      [(HDQuantityDistributionQueryServer *)*(a1 + 32) _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:v10 distributionCalculator:*(a1 + 40) computeAverageAndDuration:*(a1 + 64) calculatorForAverageAndDuration:*(a1 + 48) dataFactor:*(a1 + 56)];
      a3 += 40;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v44 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke_2;
  v35[3] = &unk_27862B200;
  v6 = *(a1 + 48);
  v42 = *(a1 + 80);
  v7 = *(a1 + 32);
  v36 = v6;
  v37 = v7;
  v41 = v45;
  v38 = *(a1 + 56);
  v43 = *(a1 + 88);
  v39 = *(a1 + 64);
  v40 = *(a1 + 72);
  LOBYTE(v4) = [(HDQuantityDistributionQueryServer *)v4 _walkSampleValuesWithPredicate:v5 errorOut:&v44 handler:v35];
  v8 = v44;
  v9 = v8;
  if (v4)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 216);
    v34 = v8;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke_4;
    v29[3] = &unk_27862B1D8;
    v29[4] = v10;
    v30 = *(a1 + 56);
    v33 = *(a1 + 88);
    v31 = *(a1 + 64);
    v32 = *(a1 + 72);
    v12 = [v11 fetchFinalOverlapSamplesWithErrorOut:&v34 handler:v29];
    v13 = v34;

    if (v12)
    {
      v14 = *(a1 + 72);
      v28 = 0;
      v15 = [v14 delegateLoadingWasSuccessful:&v28];
      v16 = v28;
      v17 = v16;
      if ((v15 & 1) == 0)
      {
        v18 = v16;
        v19 = v18;
        if (v18)
        {
          if (a2)
          {
            v20 = v18;
            *a2 = v19;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      v23 = v13;
      v24 = v23;
      if (v23)
      {
        if (a2)
        {
          v25 = v23;
          *a2 = v24;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v48 = v24;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Unable to fetch hearing protection samples: %{public}@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v21 = v8;
    v13 = v21;
    if (v21)
    {
      if (a2)
      {
        v22 = v21;
        *a2 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v15 = 0;
  }

  _Block_object_dispose(v45, 8);
  return v15;
}

uint64_t __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = *(a1 + 32);
  if (v12 && ([(_HDQuantityDateIntervals *)v12 insideRanges:a5]& 1) == 0 && ![(_HDQuantityDateIntervals *)*(a1 + 32) insideRanges:a6])
  {
    return 1;
  }

  v13 = *(*(*(a1 + 72) + 8) + 24);
  v23 = *(a1 + 40);
  v14 = *(v23 + 216);
  v15 = *(a1 + 80) * a4;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke_3;
  v28[3] = &unk_27862B1D8;
  v16 = *(&v23 + 1);
  v31 = *(a1 + 88);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v29 = v23;
  v30 = v19;
  *v24 = a5;
  *&v24[1] = a6;
  *&v24[2] = v15;
  v25 = 1;
  memset(v26, 0, sizeof(v26));
  v27 = a2;
  v20 = [v14 fetchOverlapProcessSamplesFrom:v24 setAnchorTime:v13 errorOut:a3 handler:v28];
  v21 = *(*(a1 + 72) + 8);
  if (*(v21 + 24) == 1)
  {
    *(v21 + 24) = 0;
  }

  return v20;
}

- (void)_addAttenuatedSamplesUsingAttenuateSamples:(uint64_t)samples sampleCount:(void *)count distributionCalculator:(int)calculator computeAverageAndDuration:(void *)duration calculatorForAverageAndDuration:(void *)andDuration attenuationEngine:
{
  countCopy = count;
  durationCopy = duration;
  andDurationCopy = andDuration;
  if (self && samples >= 1)
  {
    v16 = 0;
    do
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      if (andDurationCopy)
      {
        v17 = (a2 + 40 * v16);
        v18 = v17[1];
        v19 = *v17;
        v20 = v18;
        v21 = *(v17 + 4);
        objc_msgSend_attenuateSample_(andDurationCopy);
        while (*(&v22 + 1) - *&v22 > 0.000001)
        {
          v19 = v22;
          v20 = v23;
          v21 = v24;
          [(HDQuantityDistributionQueryServer *)self _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:countCopy distributionCalculator:calculator computeAverageAndDuration:durationCopy calculatorForAverageAndDuration:1.0 dataFactor:?];
          if (*(v17 + 1) - *(&v22 + 1) <= 0.000001)
          {
            break;
          }

          objc_msgSend_attenuateSample_(andDurationCopy);
          v22 = v19;
          v23 = v20;
          v24 = v21;
        }
      }

      ++v16;
    }

    while (v16 != samples);
  }
}

- (id)_walkSampleDatesWithPredicate:(uint64_t)predicate entityClass:(uint64_t)class errorOut:(__n128)out
{
  v5 = [(HDQuantityDistributionQueryServer *)self _walkSampleDatesWithPredicate:a2 entityClass:predicate includeUUID:0 errorOut:class];

  return v5;
}

- (id)_categoryPredicateWithTypeCode:(void *)code matchingValue:(uint64_t)value errorOut:
{
  codeCopy = code;
  v8 = [MEMORY[0x277CCD0C0] dataTypeWithCode:a2];
  v9 = [(HDQuantityDistributionQueryServer *)self _sqlitePredicateForObjectType:v8 errorOut:value];

  if (codeCopy)
  {
    v10 = HDCategorySampleEntityPredicateForValue(1, codeCopy);
    v11 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v9 otherPredicate:v10];

    v9 = v11;
  }

  return v9;
}

- (id)_walkSampleDatesWithPredicate:(uint64_t)predicate entityClass:(char)class includeUUID:(uint64_t)d errorOut:
{
  v9 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__173;
  v24 = __Block_byref_object_dispose__173;
  v25 = objc_alloc_init(_HDQuantityDateIntervals);
  profile = [self profile];
  database = [profile database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke;
  v15[3] = &unk_27862B2A0;
  predicateCopy = predicate;
  v12 = v9;
  classCopy = class;
  v16 = v12;
  v17 = &v20;
  LODWORD(d) = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database error:d block:v15];

  if (d)
  {
    v13 = v21[5];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v13;
}

uint64_t __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B80];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  [v7 setEntityClass:*(a1 + 48)];
  v8 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
  v27[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v7 setOrderingTerms:v9];

  [v7 setPredicate:*(a1 + 32)];
  v10 = objc_alloc(MEMORY[0x277D10B78]);
  v11 = [v6 databaseForEntityClass:objc_opt_class()];

  v12 = [v10 initWithDatabase:v11 descriptor:v7];
  v13 = MEMORY[0x277CBEB18];
  v26[0] = @"start_date";
  v26[1] = @"end_date";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v15 = [v13 arrayWithArray:v14];

  v16 = *(a1 + 56);
  if (v16 == 1)
  {
    [v15 addObject:@"uuid"];
    LOBYTE(v16) = *(a1 + 56);
  }

  v25 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke_2;
  v23[3] = &unk_27862B278;
  v24 = v16;
  v23[4] = *(a1 + 40);
  v17 = [v12 enumerateProperties:v15 error:&v25 enumerationHandler:v23];
  v18 = v25;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    v20 = v18;
    if (v20)
    {
      if (a3)
      {
        v21 = v20;
        *a3 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v17;
}

uint64_t __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C50](a3, 0);
  v6 = MEMORY[0x22AAC6C50](a3, 1);
  v7 = 0;
  if (*(a1 + 40) == 1)
  {
    v7 = MEMORY[0x22AAC6CA0](a3, 2);
  }

  v8 = *(*(*(a1 + 32) + 8) + 40);
  v9 = v7;
  if (v8)
  {
    v10 = *(v8 + 40);
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = *(v8 + 40);
      *(v8 + 40) = v11;
    }

    v13 = [_HDQuantityIntervalPair alloc];
    v14 = v9;
    if (v13)
    {
      v17.receiver = v13;
      v17.super_class = _HDQuantityIntervalPair;
      v15 = objc_msgSendSuper2(&v17, sel_init);
      v13 = v15;
      if (v15)
      {
        v15->_startInterval = v5;
        v15->_endInterval = v6;
        objc_storeStrong(&v15->_uuid, v7);
      }
    }

    [*(v8 + 40) addObject:v13];
    if (!v10)
    {
      *(v8 + 8) = v5;
      *(v8 + 16) = v6;
      *(v8 + 24) = 0;
    }

    if (v14 && (*(v8 + 32) & 1) == 0)
    {
      *(v8 + 32) = 1;
    }
  }

  return 1;
}

@end