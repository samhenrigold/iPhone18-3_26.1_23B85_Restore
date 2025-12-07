@interface PRSDirectivesManager
+ (void)initialize;
- (PRSDirectivesManager)init;
- (unint64_t)getDirectiveTypeFromString:(id)string;
- (void)cleanup;
- (void)dealloc;
- (void)getAllDirectivesArraysForTesting:(void *)testing;
- (void)processDirectives:(id)directives;
- (void)processL2FeatureVector:(id)vector populatingValues:(float *)values scoreValue:(char *)value count:(int)count;
- (void)processResultSetValuesWithMap:(id)map serverFeatures:(id)features;
@end

@implementation PRSDirectivesManager

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = sLocalRSFeatureNameToBundleFeatureMappings;
    sLocalRSFeatureNameToBundleFeatureMappings = &unk_1F55B7880;
  }
}

- (PRSDirectivesManager)init
{
  if (init_onceToken != -1)
  {
    [PRSDirectivesManager init];
  }

  return self;
}

uint64_t __28__PRSDirectivesManager_init__block_invoke()
{
  featuresInOrder = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  if (self->indexOfIdMapping >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      directive_id_mapping = self->directive_id_mapping;
      var3 = directive_id_mapping[v3].var3;
      if (var3)
      {
        free(var3);
        self->directive_id_mapping[v3].var3 = 0;
        directive_id_mapping = self->directive_id_mapping;
      }

      var0 = directive_id_mapping[v3].var2.var0;
      if (var0)
      {
        CFRelease(var0);
        self->directive_id_mapping[v3].var2.var0 = 0;
      }

      ++v4;
      ++v3;
    }

    while (v4 < self->indexOfIdMapping);
  }

  if (self->indexOfResultSetIdMapping >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      directive_resultset_id_mapping = self->directive_resultset_id_mapping;
      v11 = directive_resultset_id_mapping[v8].var3;
      if (v11)
      {
        free(v11);
        self->directive_resultset_id_mapping[v8].var3 = 0;
        directive_resultset_id_mapping = self->directive_resultset_id_mapping;
      }

      v12 = directive_resultset_id_mapping[v8].var2.var0;
      if (v12)
      {
        CFRelease(v12);
        self->directive_resultset_id_mapping[v8].var2.var0 = 0;
        directive_resultset_id_mapping = self->directive_resultset_id_mapping;
      }

      var4 = directive_resultset_id_mapping[v8].var4;
      if (var4)
      {
        free(var4);
        self->directive_resultset_id_mapping[v8].var4 = 0;
      }

      ++v9;
      ++v8;
    }

    while (v9 < self->indexOfResultSetIdMapping);
  }

  if (self->indexOfResultSetIdScoreMapping >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 40;
    do
    {
      directive_resultset_id_score_mapping = self->directive_resultset_id_score_mapping;
      v18 = directive_resultset_id_score_mapping[v14].var4;
      if (v18)
      {
        free(v18);
        *(&self->directive_resultset_id_mapping->var0 + v16) = 0;
        directive_resultset_id_score_mapping = self->directive_resultset_id_score_mapping;
      }

      v19 = directive_resultset_id_score_mapping[v14].var2.var0;
      if (v19)
      {
        CFRelease(v19);
        self->directive_resultset_id_score_mapping[v14].var2.var0 = 0;
        directive_resultset_id_score_mapping = self->directive_resultset_id_score_mapping;
      }

      v20 = directive_resultset_id_score_mapping[v14].var3;
      if (v20)
      {
        CFRelease(v20);
        self->directive_resultset_id_score_mapping[v14].var3 = 0;
        directive_resultset_id_score_mapping = self->directive_resultset_id_score_mapping;
      }

      var5 = directive_resultset_id_score_mapping[v14].var5;
      if (var5)
      {
        free(var5);
        self->directive_resultset_id_score_mapping[v14].var5 = 0;
      }

      ++v15;
      ++v14;
      v16 += 56;
    }

    while (v15 < self->indexOfResultSetIdScoreMapping);
  }

  indexOfQuantize = self->indexOfQuantize;
  if (indexOfQuantize >= 1)
  {
    v23 = 0;
    v24 = 16;
    do
    {
      v25 = *(&self->directive_quantize->var0 + v24);
      if (v25)
      {
        free(v25);
        *(&self->directive_quantize->var0 + v24) = 0;
        indexOfQuantize = self->indexOfQuantize;
      }

      ++v23;
      v24 += 32;
    }

    while (v23 < indexOfQuantize);
  }

  mapping = self->directive_local_resultset_id_values_mapping.mapping;
  if (mapping)
  {
    CFRelease(mapping);
  }

  v27 = self->directive_parsec_resultset_id_values_mapping.mapping;
  if (v27)
  {
    CFRelease(v27);
  }

  score_vector = self->directive_local_resultset_id_values_mapping.score_vector;
  if (score_vector)
  {
    free(score_vector);
  }

  v29 = self->directive_parsec_resultset_id_values_mapping.score_vector;
  if (v29)
  {
    free(v29);
  }

  PRSRankingBundleFeatureOrder = self->directive_local_resultset_id_values_mapping.PRSRankingBundleFeatureOrder;
  if (PRSRankingBundleFeatureOrder)
  {
    free(PRSRankingBundleFeatureOrder);
  }

  free(self->directive_replace_if);
  free(self->directive_as_is);
  free(self->directive_as_is_range);
  free(self->directive_id_mapping);
  free(self->directive_is_populated);
  free(self->directive_replace_then_min);
  free(self->directive_value_if_not_exist);
  free(self->directive_resultset_id_mapping);
  free(self->directive_resultset_id_score_mapping);
  free(self->directive_quantize);
  v31.receiver = self;
  v31.super_class = PRSDirectivesManager;
  [(PRSDirectivesManager *)&v31 dealloc];
}

- (unint64_t)getDirectiveTypeFromString:(id)string
{
  v3 = getDirectiveTypeFromString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    [PRSDirectivesManager getDirectiveTypeFromString:];
  }

  v5 = [directiveStringToEnumMapping objectForKey:stringCopy];

  integerValue = [v5 integerValue];
  return integerValue;
}

void __51__PRSDirectivesManager_getDirectiveTypeFromString___block_invoke()
{
  v0 = directiveStringToEnumMapping;
  directiveStringToEnumMapping = &unk_1F55B78A8;
}

- (void)getAllDirectivesArraysForTesting:(void *)testing
{
  v3 = *&self->directive_replace_if;
  v4 = *&self->directive_value_if_not_exist;
  v5 = *&self->directive_id_mapping;
  v6 = *&self->directive_resultset_id_score_mapping;
  directive_quantize = self->directive_quantize;
  *testing = *&self->directive_as_is;
  *(testing + 1) = v3;
  *(testing + 2) = v4;
  *(testing + 3) = v5;
  *(testing + 4) = v6;
  *(testing + 10) = directive_quantize;
}

- (void)processDirectives:(id)directives
{
  v353 = *MEMORY[0x1E69E9840];
  directivesCopy = directives;
  disabledFeatureIndices = self->disabledFeatureIndices;
  self->disabledFeatureIndices = 0;

  v6 = objc_opt_new();
  mapInflatedIndexToSize = self->mapInflatedIndexToSize;
  selfCopy = self;
  self->mapInflatedIndexToSize = v6;

  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v8 = directivesCopy;
  v9 = [v8 countByEnumeratingWithState:&v340 objects:v352 count:16];
  v10 = &sLocaleSpecificMatchingLock.__opaque[56];
  v11 = &sLocaleSpecificMatchingLock.__opaque[56];
  if (!v9)
  {
    v287 = 0;
    goto LABEL_176;
  }

  v12 = v9;
  v287 = 0;
  v288 = v8;
  v290 = *v341;
  do
  {
    v13 = 0;
    v289 = v12;
    do
    {
      if (*v341 != v290)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v340 + 1) + 8 * v13);
      v15 = [v14 objectForKey:@"names"];
      v16 = [v14 objectForKey:@"name"];
      v17 = v16;
      if (v15)
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 == 0;
      }

      if (v18)
      {
        v295 = v15;
LABEL_12:
        v19 = 0;
        goto LABEL_18;
      }

      v20 = [v16 isEqualToString:@"output"];
      if (v20)
      {
        v19 = 1;
      }

      else
      {
        if (([v17 isEqualToString:@"model_weights"] & 1) == 0)
        {
          v351 = v17;
          v295 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v351 count:1];
          goto LABEL_12;
        }

        v19 = 0;
      }

      v295 = MEMORY[0x1E695E0F0];
LABEL_18:
      v21 = [v14 objectForKey:@"type"];
      v306 = objc_msgSend_count(*(v10 + 343));
      v294 = v17;
      v297 = v21;
      if (v19)
      {
        if (v21)
        {
          [(PRSDirectivesManager *)selfCopy getDirectiveTypeFromString:v21];
        }

        v22 = 0x7FFFFFFFLL;
        v23 = v295;
      }

      else
      {
        v22 = *(v11 + 285) + objc_msgSend_count(*(v10 + 343));
        v23 = v295;
        [*(v10 + 343) addObjectsFromArray:v295];
      }

      v293 = [v14 objectForKey:@"excluded_values"];
      v24 = [v14 objectForKey:@"values"];
      v25 = [v14 objectForKey:@"value"];
      v26 = v24;
      v296 = v25;
      if (v26)
      {
        v27 = 1;
      }

      else
      {
        v27 = v25 == 0;
      }

      v28 = v26;
      if (!v27)
      {
        v26 = v296;
      }

      v29 = v294;
      if (v297)
      {
        v292 = v26;
        v291 = v13;
        switch([(PRSDirectivesManager *)selfCopy getDirectiveTypeFromString:?])
        {
          case 0uLL:
            sizeOfAsIs = selfCopy->sizeOfAsIs;
            indexOfAsIs = selfCopy->indexOfAsIs;
            directive_as_is = selfCopy->directive_as_is;
            if (sizeOfAsIs == indexOfAsIs)
            {
              v33 = sizeOfAsIs | (sizeOfAsIs >> 1) | ((sizeOfAsIs | (sizeOfAsIs >> 1)) >> 2);
              v34 = v33 | (v33 >> 4) | ((v33 | (v33 >> 4)) >> 8);
              v35 = (v34 | HIWORD(v34)) + 1;
              selfCopy->sizeOfAsIs = v35;
              directive_as_is = malloc_type_realloc(directive_as_is, 16 * v35, 0x1000040451B5BE8uLL);
              selfCopy->directive_as_is = directive_as_is;
              indexOfAsIs = selfCopy->indexOfAsIs;
            }

            directive_as_is[indexOfAsIs].var0 = v22;
            v36 = objc_msgSend_count(v23);
            v37 = selfCopy->indexOfAsIs;
            selfCopy->directive_as_is[v37].var1 = v36 + v22;
            selfCopy->indexOfAsIs = v37 + 1;
            goto LABEL_164;
          case 1uLL:
            sizeOfAsIsRange = selfCopy->sizeOfAsIsRange;
            if (sizeOfAsIsRange == selfCopy->indexOfAsIsRange)
            {
              v119 = sizeOfAsIsRange | (sizeOfAsIsRange >> 1) | ((sizeOfAsIsRange | (sizeOfAsIsRange >> 1)) >> 2);
              v120 = v119 | (v119 >> 4) | ((v119 | (v119 >> 4)) >> 8);
              v121 = (v120 | HIWORD(v120)) + 1;
              selfCopy->sizeOfAsIsRange = v121;
              selfCopy->directive_as_is_range = malloc_type_realloc(selfCopy->directive_as_is_range, 24 * v121, 0x1000040504FFAC1uLL);
            }

            v122 = [v292 objectForKey:@"count"];
            selfCopy->directive_as_is_range[selfCopy->indexOfAsIsRange].var0 = v22;
            selfCopy->directive_as_is_range[selfCopy->indexOfAsIsRange].var1 = objc_msgSend_count(v295) + v22;
            integerValue = [v122 integerValue];
            indexOfAsIsRange = selfCopy->indexOfAsIsRange;
            selfCopy->directive_as_is_range[indexOfAsIsRange].var2 = integerValue;
            selfCopy->indexOfAsIsRange = indexOfAsIsRange + 1;

            v26 = v292;
            v23 = v295;
            v29 = v294;
            v11 = (&sLocaleSpecificMatchingLock + 64);
            break;
          case 2uLL:
            sizeOfReplaceIf = selfCopy->sizeOfReplaceIf;
            indexOfReplaceIf = selfCopy->indexOfReplaceIf;
            directive_replace_if = selfCopy->directive_replace_if;
            if (sizeOfReplaceIf == indexOfReplaceIf)
            {
              v83 = sizeOfReplaceIf | (sizeOfReplaceIf >> 1) | ((sizeOfReplaceIf | (sizeOfReplaceIf >> 1)) >> 2);
              v84 = v83 | (v83 >> 4) | ((v83 | (v83 >> 4)) >> 8);
              v85 = (v84 | HIWORD(v84)) + 1;
              selfCopy->sizeOfReplaceIf = v85;
              directive_replace_if = malloc_type_realloc(directive_replace_if, 40 * v85, 0x10000400A747E1EuLL);
              selfCopy->directive_replace_if = directive_replace_if;
              indexOfReplaceIf = selfCopy->indexOfReplaceIf;
            }

            directive_replace_if[indexOfReplaceIf].var0 = v22;
            v216 = objc_msgSend_count(v295);
            v217 = selfCopy->directive_replace_if;
            v218 = selfCopy->indexOfReplaceIf;
            v217[v218].var1 = v216 + v22;
            if (v28)
            {
              v338 = 0u;
              v339 = 0u;
              v336 = 0u;
              v337 = 0u;
              allKeys = [v28 allKeys];
              v219 = [allKeys countByEnumeratingWithState:&v336 objects:v350 count:16];
              if (v219)
              {
                v220 = v219;
                v221 = 0;
                v222 = 0;
                objc = *v337;
                v309 = v28;
                do
                {
                  v223 = 0;
                  v224 = v221;
                  v225 = v222 << 32;
                  v226 = v222;
                  do
                  {
                    if (*v337 != objc)
                    {
                      objc_enumerationMutation(allKeys);
                    }

                    v227 = *(*(&v336 + 1) + 8 * v223);
                    [v227 floatValue];
                    v222 = v226 + 1;
                    selfCopy->directive_replace_if[selfCopy->indexOfReplaceIf].var2[v226] = v228;
                    v229 = [v309 objectForKey:v227];
                    [v229 floatValue];
                    v221 = v224 + 1;
                    selfCopy->directive_replace_if[selfCopy->indexOfReplaceIf].var3[v224] = v230;

                    ++v223;
                    v225 += 0x100000000;
                    ++v226;
                    ++v224;
                  }

                  while (v220 != v223);
                  v220 = [allKeys countByEnumeratingWithState:&v336 objects:v350 count:16];
                }

                while (v220);
                v231 = v225 >> 32;
                v8 = v288;
                v12 = v289;
                v10 = (&sLocaleSpecificMatchingLock + 64);
                v11 = (&sLocaleSpecificMatchingLock + 64);
                v29 = v294;
                v28 = v309;
              }

              else
              {
                v231 = 0;
              }

              v217 = selfCopy->directive_replace_if;
              v218 = selfCopy->indexOfReplaceIf;
              v248 = v218;
            }

            else
            {
              v231 = 0;
              v248 = v218;
            }

            v217[v248].var4 = v231;
            selfCopy->indexOfReplaceIf = v218 + 1;
            goto LABEL_163;
          case 3uLL:
            sizeOfReplaceThenMin = selfCopy->sizeOfReplaceThenMin;
            indexOfReplaceThenMin = selfCopy->indexOfReplaceThenMin;
            directive_replace_then_min = selfCopy->directive_replace_then_min;
            if (sizeOfReplaceThenMin == indexOfReplaceThenMin)
            {
              v97 = sizeOfReplaceThenMin | (sizeOfReplaceThenMin >> 1) | ((sizeOfReplaceThenMin | (sizeOfReplaceThenMin >> 1)) >> 2);
              v98 = v97 | (v97 >> 4) | ((v97 | (v97 >> 4)) >> 8);
              v99 = (v98 | HIWORD(v98)) + 1;
              selfCopy->sizeOfReplaceThenMin = v99;
              directive_replace_then_min = malloc_type_realloc(directive_replace_then_min, 72 * v99, 0x1000040811A10F9uLL);
              selfCopy->directive_replace_then_min = directive_replace_then_min;
              indexOfReplaceThenMin = selfCopy->indexOfReplaceThenMin;
            }

            directive_replace_then_min[indexOfReplaceThenMin].var0 = v22;
            selfCopy->directive_replace_then_min[selfCopy->indexOfReplaceThenMin].var1 = objc_msgSend_count(v23) + v22;
            v232 = [v292 objectForKey:@"replace"];
            v233 = [v292 objectForKey:@"min"];
            v328 = 0u;
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            objd = [v232 allKeys];
            v234 = [objd countByEnumeratingWithState:&v328 objects:v348 count:16];
            if (v234)
            {
              v235 = v234;
              v286 = v233;
              v300 = v232;
              v310 = v28;
              v236 = 0;
              v237 = 0;
              v238 = *v329;
              do
              {
                v239 = 0;
                v240 = v236;
                v241 = v237 << 32;
                v242 = v237;
                do
                {
                  if (*v329 != v238)
                  {
                    objc_enumerationMutation(objd);
                  }

                  v243 = *(*(&v328 + 1) + 8 * v239);
                  [v243 floatValue];
                  v237 = v242 + 1;
                  selfCopy->directive_replace_then_min[selfCopy->indexOfReplaceThenMin].var2[v242] = v244;
                  v245 = [v310 objectForKey:v243];
                  [v245 floatValue];
                  v236 = v240 + 1;
                  selfCopy->directive_replace_then_min[selfCopy->indexOfReplaceThenMin].var3[v240] = v246;

                  ++v239;
                  v241 += 0x100000000;
                  ++v242;
                  ++v240;
                }

                while (v235 != v239);
                v235 = [objd countByEnumeratingWithState:&v328 objects:v348 count:16];
              }

              while (v235);
              v247 = v241 >> 32;
              v8 = v288;
              v10 = (&sLocaleSpecificMatchingLock + 64);
              v11 = (&sLocaleSpecificMatchingLock + 64);
              v28 = v310;
              v232 = v300;
              v233 = v286;
            }

            else
            {
              v247 = 0;
            }

            selfCopy->directive_replace_then_min[selfCopy->indexOfReplaceThenMin].var5 = v247;
            [v233 floatValue];
            v249 = selfCopy->indexOfReplaceThenMin;
            selfCopy->directive_replace_then_min[v249].var4 = v250;
            selfCopy->indexOfReplaceThenMin = v249 + 1;

            v12 = v289;
            v29 = v294;
            goto LABEL_163;
          case 4uLL:
            sizeOfValueIfNotExist = selfCopy->sizeOfValueIfNotExist;
            indexOfValueIfNotExist = selfCopy->indexOfValueIfNotExist;
            directive_value_if_not_exist = selfCopy->directive_value_if_not_exist;
            if (sizeOfValueIfNotExist == indexOfValueIfNotExist)
            {
              v54 = sizeOfValueIfNotExist | (sizeOfValueIfNotExist >> 1) | ((sizeOfValueIfNotExist | (sizeOfValueIfNotExist >> 1)) >> 2);
              v55 = v54 | (v54 >> 4) | ((v54 | (v54 >> 4)) >> 8);
              v56 = (v55 | HIWORD(v55)) + 1;
              selfCopy->sizeOfValueIfNotExist = v56;
              directive_value_if_not_exist = malloc_type_realloc(directive_value_if_not_exist, 24 * v56, 0x10000400CE834B2uLL);
              selfCopy->directive_value_if_not_exist = directive_value_if_not_exist;
              indexOfValueIfNotExist = selfCopy->indexOfValueIfNotExist;
            }

            directive_value_if_not_exist[indexOfValueIfNotExist].var0 = v22;
            selfCopy->directive_value_if_not_exist[selfCopy->indexOfValueIfNotExist].var1 = objc_msgSend_count(v23) + v22;
            [v296 floatValue];
            v214 = selfCopy->indexOfValueIfNotExist;
            v23 = v295;
            selfCopy->directive_value_if_not_exist[v214].var2 = v215;
            selfCopy->indexOfValueIfNotExist = v214 + 1;
            goto LABEL_164;
          case 5uLL:
            sizeOfIsPopulated = selfCopy->sizeOfIsPopulated;
            indexOfIsPopulated = selfCopy->indexOfIsPopulated;
            directive_is_populated = selfCopy->directive_is_populated;
            if (sizeOfIsPopulated == indexOfIsPopulated)
            {
              v128 = sizeOfIsPopulated | (sizeOfIsPopulated >> 1) | ((sizeOfIsPopulated | (sizeOfIsPopulated >> 1)) >> 2);
              v129 = v128 | (v128 >> 4) | ((v128 | (v128 >> 4)) >> 8);
              v130 = (v129 | HIWORD(v129)) + 1;
              selfCopy->sizeOfIsPopulated = v130;
              directive_is_populated = malloc_type_realloc(directive_is_populated, v130 << 6, 0x1000040FA0F61DDuLL);
              selfCopy->directive_is_populated = directive_is_populated;
              indexOfIsPopulated = selfCopy->indexOfIsPopulated;
            }

            directive_is_populated[indexOfIsPopulated].var0 = v22;
            v131 = objc_msgSend_count(v23);
            v132 = selfCopy->directive_is_populated;
            v133 = selfCopy->indexOfIsPopulated;
            v134 = v133;
            v132[v133].var1 = v131 + v22;
            if (v28)
            {
              v334 = 0u;
              v335 = 0u;
              v332 = 0u;
              v333 = 0u;
              obja = [v28 allKeys];
              v135 = [obja countByEnumeratingWithState:&v332 objects:v349 count:16];
              if (v135)
              {
                v136 = v135;
                v308 = v28;
                v137 = 0;
                v138 = 0;
                v139 = *v333;
                do
                {
                  v140 = 0;
                  v141 = v137;
                  v142 = v138 << 32;
                  v143 = v138;
                  do
                  {
                    if (*v333 != v139)
                    {
                      objc_enumerationMutation(obja);
                    }

                    v144 = *(*(&v332 + 1) + 8 * v140);
                    v138 = v143 + 1;
                    selfCopy->directive_is_populated[selfCopy->indexOfIsPopulated].var2[v143] = [v144 BOOLValue];
                    v145 = [v308 objectForKey:v144];
                    [v145 floatValue];
                    v137 = v141 + 1;
                    selfCopy->directive_is_populated[selfCopy->indexOfIsPopulated].var3[v141] = v146;

                    ++v140;
                    v142 += 0x100000000;
                    ++v143;
                    ++v141;
                  }

                  while (v136 != v140);
                  v136 = [obja countByEnumeratingWithState:&v332 objects:v349 count:16];
                }

                while (v136);
                v147 = v142 >> 32;
                v8 = v288;
                v12 = v289;
                v10 = (&sLocaleSpecificMatchingLock + 64);
                v11 = (&sLocaleSpecificMatchingLock + 64);
                v29 = v294;
                v28 = v308;
              }

              else
              {
                v147 = 0;
              }

              v132 = selfCopy->directive_is_populated;
              v133 = selfCopy->indexOfIsPopulated;
              v134 = v133;
            }

            else
            {
              v147 = 0;
            }

            v132[v134].var4 = v147;
            selfCopy->indexOfIsPopulated = v133 + 1;
            goto LABEL_163;
          case 6uLL:
            sizeOfIdMapping = selfCopy->sizeOfIdMapping;
            indexOfIdMapping = selfCopy->indexOfIdMapping;
            if (sizeOfIdMapping == indexOfIdMapping)
            {
              v169 = sizeOfIdMapping | (sizeOfIdMapping >> 1) | ((sizeOfIdMapping | (sizeOfIdMapping >> 1)) >> 2);
              v170 = v169 | (v169 >> 4) | ((v169 | (v169 >> 4)) >> 8);
              v171 = (v170 | HIWORD(v170)) + 1;
              selfCopy->sizeOfIdMapping = v171;
              selfCopy->directive_id_mapping = malloc_type_realloc(selfCopy->directive_id_mapping, 48 * v171, 0x1072040C780C59AuLL);
              indexOfIdMapping = selfCopy->indexOfIdMapping;
            }

            if (v28)
            {
              selfCopy->directive_id_mapping[indexOfIdMapping].var0 = v22;
              selfCopy->directive_id_mapping[selfCopy->indexOfIdMapping].var1 = objc_msgSend_count(v28) + v22;
              *(v11 + 285) = objc_msgSend_count(v28) + *(v11 + 285) - 1;
              firstObject = [v295 firstObject];
              uTF8String = [firstObject UTF8String];

              v174 = strdup(uTF8String);
              v175 = selfCopy->indexOfIdMapping;
              selfCopy->directive_id_mapping[selfCopy->indexOfIdMapping].var3 = v174;
              selfCopy->directive_id_mapping[v175].var2.var0 = 0;
              v176 = &selfCopy->directive_id_mapping[selfCopy->indexOfIdMapping];
              *(v176 + 16) = 0;
              *(v176 + 24) = 0;
              *(v176 + 32) = 0;
              allKeys2 = [v28 allKeys];
              v178 = [allKeys2 objectAtIndexedSubscript:0];
              integerValue2 = [v178 integerValue];

              if (integerValue2)
              {
                v326 = 0u;
                v327 = 0u;
                v324 = 0u;
                v325 = 0u;
                allKeys3 = [v28 allKeys];
                v181 = [allKeys3 countByEnumeratingWithState:&v324 objects:v347 count:16];
                if (v181)
                {
                  v182 = v181;
                  v183 = v28;
                  v184 = 0;
                  v185 = *v325;
                  do
                  {
                    v186 = 0;
                    v187 = v184;
                    do
                    {
                      if (*v325 != v185)
                      {
                        objc_enumerationMutation(allKeys3);
                      }

                      v184 = v187 + 1;
                      selfCopy->directive_id_mapping[selfCopy->indexOfIdMapping].var2.var1[v187++] = [*(*(&v324 + 1) + 8 * v186++) intValue];
                    }

                    while (v182 != v186);
                    v182 = [allKeys3 countByEnumeratingWithState:&v324 objects:v347 count:16];
                  }

                  while (v182);
                  v29 = v294;
                  v28 = v183;
                  v8 = v288;
                }
              }

              else
              {
                v258 = MEMORY[0x1E695D608];
                v259 = lowercase_keys(v28);
                v260 = [v258 dictionaryWithDictionary:v259];

                allKeys3 = v260;
                selfCopy->directive_id_mapping[selfCopy->indexOfIdMapping].var2.var0 = allKeys3;
              }

              v261 = selfCopy->mapInflatedIndexToSize;
              v262 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:objc_msgSend_count(v28) - 1];
              v263 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
              [(NSMutableDictionary *)v261 setObject:v262 forKey:v263];

              indexOfIdMapping = selfCopy->indexOfIdMapping;
              v11 = (&sLocaleSpecificMatchingLock + 64);
              v12 = v289;
            }

            selfCopy->indexOfIdMapping = indexOfIdMapping + 1;
            goto LABEL_163;
          case 7uLL:
            sizeOfResultSetIdMapping = selfCopy->sizeOfResultSetIdMapping;
            indexOfResultSetIdMapping = selfCopy->indexOfResultSetIdMapping;
            if (sizeOfResultSetIdMapping == indexOfResultSetIdMapping)
            {
              v102 = sizeOfResultSetIdMapping | (sizeOfResultSetIdMapping >> 1) | ((sizeOfResultSetIdMapping | (sizeOfResultSetIdMapping >> 1)) >> 2);
              v103 = v102 | (v102 >> 4) | ((v102 | (v102 >> 4)) >> 8);
              v104 = (v103 | HIWORD(v103)) + 1;
              selfCopy->sizeOfResultSetIdMapping = v104;
              selfCopy->directive_resultset_id_mapping = malloc_type_realloc(selfCopy->directive_resultset_id_mapping, 56 * v104, 0x10F20409CFFA869uLL);
              indexOfResultSetIdMapping = selfCopy->indexOfResultSetIdMapping;
            }

            if (v28)
            {
              selfCopy->directive_resultset_id_mapping[indexOfResultSetIdMapping].var0 = v22;
              selfCopy->directive_resultset_id_mapping[selfCopy->indexOfResultSetIdMapping].var1 = objc_msgSend_count(v28) + v22;
              *(v11 + 285) = objc_msgSend_count(v28) + *(v11 + 285) - 1;
              firstObject2 = [v295 firstObject];
              uTF8String2 = [firstObject2 UTF8String];

              selfCopy->directive_resultset_id_mapping[selfCopy->indexOfResultSetIdMapping].var3 = strdup(uTF8String2);
              allKeys4 = [v28 allKeys];
              v108 = [allKeys4 objectAtIndexedSubscript:0];
              integerValue3 = [v108 integerValue];

              if (integerValue3)
              {
                v322 = 0u;
                v323 = 0u;
                v320 = 0u;
                v321 = 0u;
                v110 = v28;
                allKeys5 = [v28 allKeys];
                v112 = [allKeys5 countByEnumeratingWithState:&v320 objects:v346 count:16];
                if (v112)
                {
                  v113 = v112;
                  v114 = 0;
                  v115 = *v321;
                  do
                  {
                    v116 = 0;
                    v117 = v114;
                    do
                    {
                      if (*v321 != v115)
                      {
                        objc_enumerationMutation(allKeys5);
                      }

                      v114 = v117 + 1;
                      selfCopy->directive_resultset_id_mapping[selfCopy->indexOfResultSetIdMapping].var2.var1[v117++] = [*(*(&v320 + 1) + 8 * v116++) intValue];
                    }

                    while (v113 != v116);
                    v113 = [allKeys5 countByEnumeratingWithState:&v320 objects:v346 count:16];
                  }

                  while (v113);
                }

                selfCopy->directive_resultset_id_mapping[selfCopy->indexOfResultSetIdMapping].var2.var0 = 0;
                v29 = v294;
                v28 = v110;
                v8 = v288;
              }

              else
              {
                v251 = MEMORY[0x1E695D608];
                v252 = lowercase_keys(v28);
                v253 = [v251 dictionaryWithDictionary:v252];

                v254 = v253;
                selfCopy->directive_resultset_id_mapping[selfCopy->indexOfResultSetIdMapping].var2.var0 = v254;
              }

              selfCopy->directive_resultset_id_mapping[selfCopy->indexOfResultSetIdMapping].var4 = 0;
              v255 = selfCopy->mapInflatedIndexToSize;
              v256 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:objc_msgSend_count(v28) - 1];
              v257 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
              [(NSMutableDictionary *)v255 setObject:v256 forKey:v257];

              indexOfResultSetIdMapping = selfCopy->indexOfResultSetIdMapping;
              v11 = (&sLocaleSpecificMatchingLock + 64);
              v12 = v289;
            }

            selfCopy->indexOfResultSetIdMapping = indexOfResultSetIdMapping + 1;
            goto LABEL_163;
          case 8uLL:
            sizeOfResultSetIdScoreMapping = selfCopy->sizeOfResultSetIdScoreMapping;
            indexOfResultSetIdScoreMapping = selfCopy->indexOfResultSetIdScoreMapping;
            if (sizeOfResultSetIdScoreMapping == indexOfResultSetIdScoreMapping)
            {
              v198 = sizeOfResultSetIdScoreMapping | (sizeOfResultSetIdScoreMapping >> 1) | ((sizeOfResultSetIdScoreMapping | (sizeOfResultSetIdScoreMapping >> 1)) >> 2);
              v199 = v198 | (v198 >> 4) | ((v198 | (v198 >> 4)) >> 8);
              v200 = (v199 | HIWORD(v199)) + 1;
              selfCopy->sizeOfResultSetIdScoreMapping = v200;
              selfCopy->directive_resultset_id_score_mapping = malloc_type_realloc(selfCopy->directive_resultset_id_score_mapping, v200 << 6, 0x10F2040D14D0496uLL);
              indexOfResultSetIdScoreMapping = selfCopy->indexOfResultSetIdScoreMapping;
            }

            if (v28)
            {
              selfCopy->directive_resultset_id_score_mapping[indexOfResultSetIdScoreMapping].var0 = v22;
              selfCopy->directive_resultset_id_score_mapping[selfCopy->indexOfResultSetIdScoreMapping].var1 = objc_msgSend_count(v28) + v22;
              *(v11 + 285) = objc_msgSend_count(v28) + *(v11 + 285) - 1;
              firstObject3 = [v23 firstObject];
              uTF8String3 = [firstObject3 UTF8String];

              selfCopy->directive_resultset_id_score_mapping[selfCopy->indexOfResultSetIdScoreMapping].var4 = strdup(uTF8String3);
              allKeys6 = [v28 allKeys];
              v204 = [allKeys6 objectAtIndexedSubscript:0];
              integerValue4 = [v204 integerValue];

              if (integerValue4)
              {
                v318 = 0u;
                v319 = 0u;
                v316 = 0u;
                v317 = 0u;
                v206 = v28;
                allKeys7 = [v28 allKeys];
                v208 = [allKeys7 countByEnumeratingWithState:&v316 objects:v345 count:16];
                if (v208)
                {
                  v209 = v208;
                  v210 = 0;
                  v211 = *v317;
                  do
                  {
                    v212 = 0;
                    v213 = v210;
                    do
                    {
                      if (*v317 != v211)
                      {
                        objc_enumerationMutation(allKeys7);
                      }

                      v210 = v213 + 1;
                      selfCopy->directive_resultset_id_score_mapping[selfCopy->indexOfResultSetIdScoreMapping].var2.var1[v213++] = [*(*(&v316 + 1) + 8 * v212++) intValue];
                    }

                    while (v209 != v212);
                    v209 = [allKeys7 countByEnumeratingWithState:&v316 objects:v345 count:16];
                  }

                  while (v209);
                }

                selfCopy->directive_resultset_id_score_mapping[selfCopy->indexOfResultSetIdScoreMapping].var2.var0 = 0;
                v29 = v294;
                v28 = v206;
              }

              else
              {
                v264 = MEMORY[0x1E695D608];
                v265 = lowercase_keys(v28);
                v266 = [v264 dictionaryWithDictionary:v265];

                v267 = v266;
                selfCopy->directive_resultset_id_score_mapping[selfCopy->indexOfResultSetIdScoreMapping].var2.var0 = v267;
              }

              v11 = (&sLocaleSpecificMatchingLock + 64);
              if (v293)
              {
                v268 = MEMORY[0x1E695D608];
                v269 = lowercase_keys(v293);
                v270 = [v268 dictionaryWithDictionary:v269];

                v271 = v270;
                selfCopy->directive_resultset_id_score_mapping[selfCopy->indexOfResultSetIdScoreMapping].var3 = v271;

                v272 = selfCopy->indexOfResultSetIdScoreMapping;
              }

              else
              {
                v272 = selfCopy->indexOfResultSetIdScoreMapping;
                selfCopy->directive_resultset_id_score_mapping[v272].var3 = 0;
              }

              selfCopy->directive_resultset_id_score_mapping[v272].var5 = 0;
              v273 = selfCopy->mapInflatedIndexToSize;
              v274 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:objc_msgSend_count(v28) - 1];
              v275 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
              [(NSMutableDictionary *)v273 setObject:v274 forKey:v275];

              indexOfResultSetIdScoreMapping = selfCopy->indexOfResultSetIdScoreMapping;
              v12 = v289;
              v13 = v291;
              v23 = v295;
            }

            selfCopy->indexOfResultSetIdScoreMapping = indexOfResultSetIdScoreMapping + 1;
            goto LABEL_164;
          case 9uLL:
            v79 = v23;

            v287 = v79;
            goto LABEL_163;
          case 10uLL:
            sizeOfOneSidedInverse = selfCopy->sizeOfOneSidedInverse;
            indexOfOneSidedInverse = selfCopy->indexOfOneSidedInverse;
            directive_one_sided_inverse = selfCopy->directive_one_sided_inverse;
            if (sizeOfOneSidedInverse == indexOfOneSidedInverse)
            {
              v191 = sizeOfOneSidedInverse | (sizeOfOneSidedInverse >> 1) | ((sizeOfOneSidedInverse | (sizeOfOneSidedInverse >> 1)) >> 2);
              v192 = v191 | (v191 >> 4) | ((v191 | (v191 >> 4)) >> 8);
              v193 = (v192 | HIWORD(v192)) + 1;
              selfCopy->sizeOfOneSidedInverse = v193;
              directive_one_sided_inverse = malloc_type_realloc(directive_one_sided_inverse, 16 * v193, 0x1000040451B5BE8uLL);
              selfCopy->directive_one_sided_inverse = directive_one_sided_inverse;
              indexOfOneSidedInverse = selfCopy->indexOfOneSidedInverse;
            }

            directive_one_sided_inverse[indexOfOneSidedInverse].var0 = v22;
            v194 = objc_msgSend_count(v23);
            v195 = selfCopy->indexOfOneSidedInverse;
            selfCopy->directive_one_sided_inverse[v195].var1 = v194 + v22;
            selfCopy->indexOfOneSidedInverse = v195 + 1;
            goto LABEL_164;
          case 11uLL:
            sizeOfQuantize = selfCopy->sizeOfQuantize;
            if (sizeOfQuantize == selfCopy->indexOfQuantize)
            {
              v41 = sizeOfQuantize | (sizeOfQuantize >> 1) | ((sizeOfQuantize | (sizeOfQuantize >> 1)) >> 2);
              v42 = v41 | (v41 >> 4) | ((v41 | (v41 >> 4)) >> 8);
              v43 = (v42 | HIWORD(v42)) + 1;
              selfCopy->sizeOfQuantize = v43;
              selfCopy->directive_quantize = malloc_type_realloc(selfCopy->directive_quantize, 32 * v43, 0x10800403A84FC25uLL);
            }

            if (!v28)
            {
              goto LABEL_164;
            }

            v44 = [v28 objectForKey:@"bins"];
            v38 = v44;
            if (v44 && objc_msgSend_count(v44))
            {
              v45 = objc_msgSend_count(v38);
              selfCopy->directive_quantize[selfCopy->indexOfQuantize].var3 = v45;
              selfCopy->directive_quantize[selfCopy->indexOfQuantize].var2 = malloc_type_calloc(v45, 4uLL, 0x100004052888210uLL);
              if (objc_msgSend_count(v38))
              {
                v46 = 0;
                do
                {
                  v47 = [v38 objectAtIndex:v46];
                  [v47 floatValue];
                  selfCopy->directive_quantize[selfCopy->indexOfQuantize].var2[v46] = v48;

                  ++v46;
                }

                while (objc_msgSend_count(v38) > v46);
              }

              selfCopy->directive_quantize[selfCopy->indexOfQuantize].var0 = v22;
              selfCopy->directive_quantize[selfCopy->indexOfQuantize].var1 = objc_msgSend_count(v295) + v22;
              v49 = objc_msgSend_count(v38);
              indexOfQuantize = selfCopy->indexOfQuantize;
              selfCopy->directive_quantize[indexOfQuantize].var3 = v49;
              selfCopy->indexOfQuantize = indexOfQuantize + 1;
              v12 = v289;
            }

            goto LABEL_45;
          case 12uLL:
            if (!v28)
            {
              goto LABEL_164;
            }

            v57 = [v14 objectForKey:@"features"];
            v58 = objc_msgSend_count(v57);
            v59 = objc_msgSend_count(v28);
            selfCopy->directive_local_resultset_id_values_mapping.start_idx = v22;
            selfCopy->directive_local_resultset_id_values_mapping.end_idx = v59 * v58 + v22;
            v60 = v59 * v58 - 1;
            *(v11 + 285) += v60;
            v61 = MEMORY[0x1E695D608];
            v62 = lowercase_keys(v28);
            v63 = [v61 dictionaryWithDictionary:v62];

            obj = v63;
            selfCopy->directive_local_resultset_id_values_mapping.mapping = obj;
            v64 = selfCopy->mapInflatedIndexToSize;
            v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v60];
            v29 = v294;
            v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
            [(NSMutableDictionary *)v64 setObject:v65 forKey:v66];

            v307 = v58;
            v67 = 8 * v58;
            v8 = v288;
            selfCopy->directive_local_resultset_id_values_mapping.PRSRankingBundleFeatureOrder = malloc_type_malloc(v67, 0x100004000313F17uLL);
            v68 = objc_msgSend_count(v57);
            selfCopy->directive_local_resultset_id_values_mapping.PRSRankingBundleFeaturePickers = malloc_type_malloc(8 * v68, 0x80040B8603338uLL);
            if (objc_msgSend_count(v57))
            {
              v69 = 0;
              do
              {
                v70 = [v57 objectAtIndexedSubscript:v69];
                v71 = objc_msgSend_count(v70);

                if (v71 >= 4)
                {
                  v72 = [v57 objectAtIndexedSubscript:v69];
                  v73 = [v72 objectAtIndexedSubscript:3];

                  v74 = [v57 objectAtIndexedSubscript:v69];
                  v75 = [v74 objectAtIndexedSubscript:4];

                  v76 = [sLocalRSFeatureNameToBundleFeatureMappings objectForKeyedSubscript:v73];
                  selfCopy->directive_local_resultset_id_values_mapping.PRSRankingBundleFeatureOrder[v69] = [v76 unsignedIntegerValue];

                  v77 = [v75 isEqualToString:@"min"];
                  v13 = v291;
                  v78 = &sMinPicker;
                  if (!v77)
                  {
                    v78 = &sMaxPicker;
                  }

                  selfCopy->directive_local_resultset_id_values_mapping.PRSRankingBundleFeaturePickers[v69] = *v78;
                }

                ++v69;
              }

              while (v69 < objc_msgSend_count(v57));
            }

            selfCopy->directive_local_resultset_id_values_mapping.numPRSRankingBundleFeatures = v307;
            selfCopy->directive_local_resultset_id_values_mapping.mapSize = 0;

            v11 = (&sLocaleSpecificMatchingLock + 64);
            v12 = v289;
            goto LABEL_163;
          case 13uLL:
            if (!v28)
            {
              goto LABEL_164;
            }

            v148 = [v14 objectForKey:@"features"];
            v149 = v11;
            v150 = objc_msgSend_count(v148);
            v151 = objc_msgSend_count(v28);
            selfCopy->directive_parsec_resultset_id_values_mapping.start_idx = v22;
            selfCopy->directive_parsec_resultset_id_values_mapping.end_idx = v151 * v150 + v22;
            objb = v151 * v150;
            v152 = v151 * v150 - 1;
            *(v149 + 285) += v152;
            v153 = MEMORY[0x1E695D608];
            v154 = lowercase_keys(v28);
            v155 = [v153 dictionaryWithDictionary:v154];

            v298 = v155;
            selfCopy->directive_parsec_resultset_id_values_mapping.mapping = v298;
            v156 = selfCopy->mapInflatedIndexToSize;
            v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v152];
            v158 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
            [(NSMutableDictionary *)v156 setObject:v157 forKey:v158];

            selfCopy->directive_parsec_resultset_id_values_mapping.numFeatures = v150;
            selfCopy->directive_parsec_resultset_id_values_mapping.PRSRankingBundleFeaturePickers = malloc_type_malloc(8 * v150, 0x80040B8603338uLL);
            if (objc_msgSend_count(v148))
            {
              v159 = 0;
              do
              {
                v160 = [v148 objectAtIndexedSubscript:v159];
                v161 = objc_msgSend_count(v160);

                if (v161 >= 4)
                {
                  v162 = [v148 objectAtIndexedSubscript:v159];
                  v163 = [v162 objectAtIndexedSubscript:4];

                  v164 = [v163 isEqualToString:@"min"];
                  v165 = &sMinPicker;
                  if (!v164)
                  {
                    v165 = &sMaxPicker;
                  }

                  selfCopy->directive_parsec_resultset_id_values_mapping.PRSRankingBundleFeaturePickers[v159] = *v165;
                }

                ++v159;
              }

              while (v159 < objc_msgSend_count(v148));
            }

            v166 = malloc_type_malloc(4 * objb, 0x100004052888210uLL);
            selfCopy->directive_parsec_resultset_id_values_mapping.score_vector = v166;
            selfCopy->directive_parsec_resultset_id_values_mapping.mapSize = 4 * objb;
            v12 = v289;
            v29 = v294;
            if (objb)
            {
              memset_pattern16(v166, &unk_1DA0D53C0, 4 * objb);
            }

            v11 = (&sLocaleSpecificMatchingLock + 64);
            goto LABEL_163;
          case 14uLL:
            if (!objc_msgSend_count(v28))
            {
              goto LABEL_164;
            }

            v38 = [v28 objectForKey:@"model_weight_x"];
            v39 = [v28 objectForKey:@"model_weight_y"];
            [v38 doubleValue];
            [(PRSDirectivesManager *)selfCopy setWeightX:?];
            [v39 doubleValue];
            [(PRSDirectivesManager *)selfCopy setWeightY:?];

LABEL_45:
LABEL_163:
            v23 = v295;
LABEL_164:
            v26 = v292;
            break;
          case 15uLL:
            sizeOfFanOutValue = selfCopy->sizeOfFanOutValue;
            indexOfFanOutValue = selfCopy->indexOfFanOutValue;
            directive_fan_out = selfCopy->directive_fan_out;
            if (sizeOfFanOutValue == indexOfFanOutValue)
            {
              v89 = sizeOfFanOutValue | (sizeOfFanOutValue >> 1) | ((sizeOfFanOutValue | (sizeOfFanOutValue >> 1)) >> 2);
              v90 = v89 | (v89 >> 4) | ((v89 | (v89 >> 4)) >> 8);
              v91 = (v90 | HIWORD(v90)) + 1;
              selfCopy->sizeOfFanOutValue = v91;
              directive_fan_out = malloc_type_realloc(directive_fan_out, 16 * v91, 0x1000040451B5BE8uLL);
              selfCopy->directive_fan_out = directive_fan_out;
              indexOfFanOutValue = selfCopy->indexOfFanOutValue;
            }

            directive_fan_out[indexOfFanOutValue].var0 = v22;
            v92 = objc_msgSend_count(v23);
            v93 = selfCopy->indexOfFanOutValue;
            selfCopy->directive_fan_out[v93].var1 = v92 + v22;
            *(v11 + 285) += 95;
            selfCopy->indexOfFanOutValue = v93 + 1;
            goto LABEL_164;
          default:
            goto LABEL_164;
        }
      }

      ++v13;
    }

    while (v13 != v12);
    v276 = [v8 countByEnumeratingWithState:&v340 objects:v352 count:16];
    v12 = v276;
  }

  while (v276);
LABEL_176:

  if (objc_msgSend_count(*(v10 + 343)))
  {
    v277 = [PRSL2FeatureVector contextWithFeatureOrder:*(v10 + 343) withInflation:*(v11 + 285) withInflatedIndexToSize:selfCopy->mapInflatedIndexToSize];
    [(PRSDirectivesManager *)selfCopy setProcessingContext:v277];
  }

  if (v287)
  {
    v278 = objc_opt_new();
    v279 = selfCopy->disabledFeatureIndices;
    selfCopy->disabledFeatureIndices = v278;

    v314 = 0u;
    v315 = 0u;
    v312 = 0u;
    v313 = 0u;
    v280 = v287;
    v281 = [v280 countByEnumeratingWithState:&v312 objects:v344 count:16];
    if (v281)
    {
      v282 = v281;
      v283 = *v313;
      do
      {
        for (i = 0; i != v282; ++i)
        {
          if (*v313 != v283)
          {
            objc_enumerationMutation(v280);
          }

          v285 = [*(v10 + 343) indexOfObject:*(*(&v312 + 1) + 8 * i)];
          if (v285 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableIndexSet *)selfCopy->disabledFeatureIndices addIndex:v285];
          }
        }

        v282 = [v280 countByEnumeratingWithState:&v312 objects:v344 count:16];
      }

      while (v282);
    }

    v11 = &sLocaleSpecificMatchingLock.__opaque[56];
  }

  *(v11 + 285) = 0;
  [*(v10 + 343) removeAllObjects];
}

- (void)processResultSetValuesWithMap:(id)map serverFeatures:(id)features
{
  v178 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  featuresCopy = features;
  v131 = mapCopy;
  v142 = [mapCopy copy];
  indexOfResultSetIdScoreMapping = self->indexOfResultSetIdScoreMapping;
  selfCopy = self;
  if (indexOfResultSetIdScoreMapping >= 1)
  {
    v8 = 0;
    do
    {
      v9 = self->directive_resultset_id_score_mapping[v8].var2.var0;
      v10 = self->directive_resultset_id_score_mapping[v8].var3;
      allKeys = [(__CFDictionary *)v9 allKeys];
      v12 = objc_msgSend_count(allKeys);
      v13 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);

      allKeys2 = [(__CFDictionary *)v9 allKeys];
      v15 = objc_msgSend_count(allKeys2);

      if (v15)
      {
        memset_pattern16(v13, &unk_1DA0D53C0, 4 * v15);
      }

      self->directive_resultset_id_score_mapping[v8].var5 = v13;
      if ((objc_msgSend_count(v142) || objc_msgSend_count(featuresCopy)) && !strcmp("resultset_bundle_id_score", self->directive_resultset_id_score_mapping[v8].var4))
      {
        v139 = v13;
        v137 = v8;
        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        keyEnumerator = [v142 keyEnumerator];
        v16 = [keyEnumerator countByEnumeratingWithState:&v167 objects:v177 count:16];
        v140 = v10;
        if (v16)
        {
          v17 = v16;
          v18 = *v168;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v168 != v18)
              {
                objc_enumerationMutation(keyEnumerator);
              }

              v20 = *(*(&v167 + 1) + 8 * i);
              lowercaseString = [v20 lowercaseString];
              v22 = [(__CFDictionary *)v9 objectForKey:lowercaseString];
              v23 = [v142 objectForKey:v20];
              v24 = [v23 objectAtIndexedSubscript:0];

              v25 = [(__CFDictionary *)v10 objectForKey:lowercaseString];

              if (!v25)
              {
                if (v22)
                {
                  unsignedIntegerValue = [v22 unsignedIntegerValue];
                }

                else
                {
                  v27 = [(__CFDictionary *)v9 objectForKey:@"__none_of_the_above__"];
                  unsignedIntegerValue = [v27 unsignedIntegerValue];
                }

                allKeys3 = [(__CFDictionary *)v9 allKeys];
                if (unsignedIntegerValue >= objc_msgSend_count(allKeys3))
                {
                  [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
                }

                [v24 floatValue];
                v10 = v140;
                *&v139[4 * unsignedIntegerValue] = v29;
              }
            }

            v17 = [keyEnumerator countByEnumeratingWithState:&v167 objects:v177 count:16];
          }

          while (v17);
        }

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        keyEnumerator = [featuresCopy keyEnumerator];
        v30 = [keyEnumerator countByEnumeratingWithState:&v163 objects:v176 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v164;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v164 != v32)
              {
                objc_enumerationMutation(keyEnumerator);
              }

              v34 = *(*(&v163 + 1) + 8 * j);
              lowercaseString2 = [v34 lowercaseString];
              v36 = [(__CFDictionary *)v9 objectForKey:lowercaseString2];
              v37 = [featuresCopy objectForKey:v34];
              maxScore = [v37 maxScore];

              v39 = [(__CFDictionary *)v10 objectForKey:lowercaseString2];

              if (!v39)
              {
                if (v36)
                {
                  unsignedIntegerValue2 = [v36 unsignedIntegerValue];
                }

                else
                {
                  v41 = [(__CFDictionary *)v9 objectForKey:@"__none_of_the_above__"];
                  unsignedIntegerValue2 = [v41 unsignedIntegerValue];
                }

                allKeys4 = [(__CFDictionary *)v9 allKeys];
                if (unsignedIntegerValue2 >= objc_msgSend_count(allKeys4))
                {
                  [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
                }

                [maxScore floatValue];
                v10 = v140;
                *&v139[4 * unsignedIntegerValue2] = v43;
              }
            }

            v31 = [keyEnumerator countByEnumeratingWithState:&v163 objects:v176 count:16];
          }

          while (v31);
        }

        self = selfCopy;
        v8 = v137;
      }

      v8 = (v8 + 1);
    }

    while (v8 < self->indexOfResultSetIdScoreMapping);
  }

  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(v142)];
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  keyEnumerator2 = [v142 keyEnumerator];
  v46 = [keyEnumerator2 countByEnumeratingWithState:&v159 objects:v175 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v160;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v160 != v48)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        [v44 addObject:*(*(&v159 + 1) + 8 * k)];
      }

      v47 = [keyEnumerator2 countByEnumeratingWithState:&v159 objects:v175 count:16];
    }

    while (v47);
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  keyEnumerator3 = [featuresCopy keyEnumerator];
  v51 = [keyEnumerator3 countByEnumeratingWithState:&v155 objects:v174 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v156;
    do
    {
      for (m = 0; m != v52; ++m)
      {
        if (*v156 != v53)
        {
          objc_enumerationMutation(keyEnumerator3);
        }

        [v44 addObject:*(*(&v155 + 1) + 8 * m)];
      }

      v52 = [keyEnumerator3 countByEnumeratingWithState:&v155 objects:v174 count:16];
    }

    while (v52);
  }

  indexOfResultSetIdMapping = self->indexOfResultSetIdMapping;
  v132 = v44;
  if (indexOfResultSetIdMapping >= 1)
  {
    v56 = 0;
    do
    {
      v57 = self->directive_resultset_id_mapping[v56].var2.var0;
      allKeys5 = [(__CFDictionary *)v57 allKeys];
      v59 = objc_msgSend_count(allKeys5);
      v60 = malloc_type_calloc(v59, 4uLL, 0x100004052888210uLL);

      self->directive_resultset_id_mapping[v56].var4 = v60;
      if (objc_msgSend_count(v44) && !strcmp("resultset_bundle_id", self->directive_resultset_id_mapping[v56].var3))
      {
        v139 = v56;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v140 = v44;
        v61 = [(__CFDictionary *)v140 countByEnumeratingWithState:&v151 objects:v173 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v152;
          do
          {
            for (n = 0; n != v62; ++n)
            {
              if (*v152 != v63)
              {
                objc_enumerationMutation(v140);
              }

              lowercaseString3 = [*(*(&v151 + 1) + 8 * n) lowercaseString];
              v66 = [(__CFDictionary *)v57 objectForKey:lowercaseString3];
              if (v66)
              {
                v67 = [(__CFDictionary *)v57 objectForKey:lowercaseString3];
                unsignedIntegerValue3 = [v67 unsignedIntegerValue];
              }

              else
              {
                v67 = [(__CFDictionary *)v57 objectForKey:@"__none_of_the_above__"];
                unsignedIntegerValue3 = [v67 integerValue];
              }

              v69 = unsignedIntegerValue3;

              allKeys6 = [(__CFDictionary *)v57 allKeys];
              if (v69 >= objc_msgSend_count(allKeys6))
              {
                [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
              }

              v60[v69] = 1.0;
            }

            v62 = [(__CFDictionary *)v140 countByEnumeratingWithState:&v151 objects:v173 count:16];
          }

          while (v62);
        }

        self = selfCopy;
        v44 = v132;
        v56 = v139;
      }

      ++v56;
    }

    while (v56 < self->indexOfResultSetIdMapping);
  }

  if (objc_msgSend_count(v142))
  {
    mapping = self->directive_local_resultset_id_values_mapping.mapping;
    if (mapping)
    {
      v72 = mapping;
      v73 = objc_msgSend_count(v72);
      numPRSRankingBundleFeatures = self->directive_local_resultset_id_values_mapping.numPRSRankingBundleFeatures;
      v130 = v73;
      v139 = (4 * v73 * numPRSRankingBundleFeatures);
      if (self->directive_local_resultset_id_values_mapping.mapSize < v139)
      {
        v75 = v139;
        self->directive_local_resultset_id_values_mapping.score_vector = malloc_type_realloc(self->directive_local_resultset_id_values_mapping.score_vector, v139, 0xC98E2CF4uLL);
        self->directive_local_resultset_id_values_mapping.mapSize = v75;
        numPRSRankingBundleFeatures = self->directive_local_resultset_id_values_mapping.numPRSRankingBundleFeatures;
      }

      score_vector = self->directive_local_resultset_id_values_mapping.score_vector;
      if (numPRSRankingBundleFeatures * v130)
      {
        memset_pattern16(self->directive_local_resultset_id_values_mapping.score_vector, &unk_1DA0D53C0, 4 * numPRSRankingBundleFeatures * v130);
      }

      if (v139 < 4 * (self->directive_local_resultset_id_values_mapping.end_idx - self->directive_local_resultset_id_values_mapping.start_idx))
      {
        [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
      }

      if (numPRSRankingBundleFeatures)
      {
        v77 = 0;
        do
        {
          PRSRankingBundleFeatureOrder = self->directive_local_resultset_id_values_mapping.PRSRankingBundleFeatureOrder;
          v134 = v77;
          v140 = PRSRankingBundleFeatureOrder[v77];
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          keyEnumerator4 = [v142 keyEnumerator];
          v79 = [keyEnumerator4 countByEnumeratingWithState:&v147 objects:v172 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v148;
            v137 = (v134 * v130);
            keyEnumerator = v81;
            v133 = &score_vector[v134 * v130];
            do
            {
              for (ii = 0; ii != v80; ++ii)
              {
                if (*v148 != keyEnumerator)
                {
                  objc_enumerationMutation(keyEnumerator4);
                }

                v83 = score_vector;
                v84 = *(*(&v147 + 1) + 8 * ii);
                v85 = [v142 objectForKey:v84];
                lowercaseString4 = [v84 lowercaseString];
                v87 = [(__CFDictionary *)v72 objectForKey:lowercaseString4];

                if (v87)
                {
                  v88 = [(__CFDictionary *)v72 objectForKey:lowercaseString4];
                  unsignedIntegerValue4 = [v88 unsignedIntegerValue];

                  v90 = [v85 objectAtIndexedSubscript:v140];
                  [v90 floatValue];
                }

                else
                {
                  v92 = [(__CFDictionary *)v72 objectForKey:@"__none_of_the_above__"];
                  unsignedIntegerValue4 = [v92 integerValue];

                  v93 = selfCopy->directive_local_resultset_id_values_mapping.PRSRankingBundleFeaturePickers[v134];
                  v90 = [v85 objectAtIndexedSubscript:v140];
                  [v90 floatValue];
                  v91 = v93[2](v93);
                }

                v94 = v91;

                if (v137 + unsignedIntegerValue4 >= v139)
                {
                  [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
                }

                score_vector = v83;
                v83[v137 + unsignedIntegerValue4] = v94;
              }

              v80 = [keyEnumerator4 countByEnumeratingWithState:&v147 objects:v172 count:16];
            }

            while (v80);
          }

          v77 = v134 + 1;
          self = selfCopy;
        }

        while ((v134 + 1) < selfCopy->directive_local_resultset_id_values_mapping.numPRSRankingBundleFeatures);
      }

      v44 = v132;
    }
  }

  if (objc_msgSend_count(featuresCopy))
  {
    v95 = self->directive_parsec_resultset_id_values_mapping.mapping;
    v96 = objc_msgSend_count(v95);
    numFeatures = self->directive_parsec_resultset_id_values_mapping.numFeatures;
    v130 = v96;
    v104 = numFeatures * v96;
    v140 = (4 * numFeatures * v96);
    if (self->directive_parsec_resultset_id_values_mapping.mapSize < v140)
    {
      v105 = v140;
      v96 = malloc_type_realloc(self->directive_parsec_resultset_id_values_mapping.score_vector, v140, 0x4D77FA24uLL);
      self->directive_parsec_resultset_id_values_mapping.score_vector = v96;
      self->directive_parsec_resultset_id_values_mapping.mapSize = v105;
    }

    v106 = self->directive_parsec_resultset_id_values_mapping.score_vector;
    if (v104)
    {
      memset_pattern16(self->directive_parsec_resultset_id_values_mapping.score_vector, &unk_1DA0D53C0, v140);
    }

    if (processResultSetValuesWithMap_serverFeatures__onceToken != -1)
    {
      [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
    }

    v129 = &v129;
    MEMORY[0x1EEE9AC00](v96, 8 * numFeatures, v97, v98, v99, v100, v101, v102);
    v139 = &v129 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v139, v107);
    if (numFeatures)
    {
      keyEnumerator = v106;
      v108 = 0;
      v109 = v139;
      do
      {
        v110 = [processResultSetValuesWithMap_serverFeatures__parsecFeatureSelectors objectAtIndexedSubscript:v108];
        *&v109[8 * v108] = NSSelectorFromString(v110);

        ++v108;
      }

      while (numFeatures != v108);
      v111 = 0;
      v137 = v95;
      v112 = keyEnumerator;
      v133 = numFeatures;
      do
      {
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        keyEnumerator4 = [featuresCopy keyEnumerator];
        v113 = [keyEnumerator4 countByEnumeratingWithState:&v143 objects:v171 count:16];
        if (v113)
        {
          v114 = v113;
          v115 = *v144;
          v116 = v111 * v130;
          v134 = &v112[4 * v111 * v130];
          do
          {
            for (jj = 0; jj != v114; ++jj)
            {
              if (*v144 != v115)
              {
                objc_enumerationMutation(keyEnumerator4);
              }

              v118 = *(*(&v143 + 1) + 8 * jj);
              v119 = [featuresCopy objectForKey:v118];
              [objc_msgSend(v119 performSelector:{*&v139[8 * v111]), "floatValue"}];
              v121 = v120;
              lowercaseString5 = [v118 lowercaseString];
              v123 = [(__CFDictionary *)v95 objectForKey:lowercaseString5];

              if (v123)
              {
                v124 = [(__CFDictionary *)v95 objectForKey:lowercaseString5];
                unsignedIntegerValue5 = [v124 unsignedIntegerValue];
              }

              else
              {
                v126 = [(__CFDictionary *)v95 objectForKey:@"__none_of_the_above__"];
                unsignedIntegerValue5 = [v126 integerValue];

                v121 = (*(selfCopy->directive_local_resultset_id_values_mapping.PRSRankingBundleFeaturePickers[v111] + 2))(v121, *&v134[4 * unsignedIntegerValue5]);
              }

              v127 = unsignedIntegerValue5 + v116;
              if (unsignedIntegerValue5 + v116 >= v140)
              {
                [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
              }

              v112 = keyEnumerator;
              *&keyEnumerator[4 * v127] = v121;

              v95 = v137;
            }

            v114 = [keyEnumerator4 countByEnumeratingWithState:&v143 objects:v171 count:16];
          }

          while (v114);
        }

        v111 = (v111 + 1);
      }

      while (v111 != v133);
    }

    v44 = v132;
LABEL_119:

    goto LABEL_120;
  }

  if (self->directive_parsec_resultset_id_values_mapping.mapSize)
  {
    v95 = self->directive_parsec_resultset_id_values_mapping.mapping;
    v128 = self->directive_parsec_resultset_id_values_mapping.numFeatures * objc_msgSend_count(v95);
    if (v128)
    {
      memset_pattern16(self->directive_parsec_resultset_id_values_mapping.score_vector, &unk_1DA0D53C0, 4 * v128);
    }

    goto LABEL_119;
  }

LABEL_120:
}

void __69__PRSDirectivesManager_processResultSetValuesWithMap_serverFeatures___block_invoke()
{
  v13[11] = *MEMORY[0x1E69E9840];
  v12 = NSStringFromSelector(sel_numResults);
  v13[0] = v12;
  v0 = NSStringFromSelector(sel_maxScoreAbsRank);
  v13[1] = v0;
  v1 = NSStringFromSelector(sel_maxScoreRelRank);
  v13[2] = v1;
  v2 = NSStringFromSelector(sel_originalOrderAbsRank);
  v13[3] = v2;
  v3 = NSStringFromSelector(sel_originalOrderRelRank);
  v13[4] = v3;
  v4 = NSStringFromSelector(sel_maxCEPAbsRank);
  v13[5] = v4;
  v5 = NSStringFromSelector(sel_maxCEPRelRank);
  v13[6] = v5;
  v6 = NSStringFromSelector("cep");
  v13[7] = v6;
  v7 = NSStringFromSelector(sel_cepMaxRatio);
  v13[8] = v7;
  v8 = NSStringFromSelector(sel_cepAllMaxRatio);
  v13[9] = v8;
  v9 = NSStringFromSelector(sel_blockIdValue);
  v13[10] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:11];
  v11 = processResultSetValuesWithMap_serverFeatures__parsecFeatureSelectors;
  processResultSetValuesWithMap_serverFeatures__parsecFeatureSelectors = v10;
}

- (void)cleanup
{
  indexOfResultSetIdMapping = self->indexOfResultSetIdMapping;
  if (indexOfResultSetIdMapping >= 1)
  {
    v4 = 0;
    v5 = 48;
    do
    {
      v6 = *(&self->directive_resultset_id_mapping->var0 + v5);
      if (v6)
      {
        free(v6);
        *(&self->directive_resultset_id_mapping->var0 + v5) = 0;
        indexOfResultSetIdMapping = self->indexOfResultSetIdMapping;
      }

      ++v4;
      v5 += 56;
    }

    while (v4 < indexOfResultSetIdMapping);
  }

  indexOfResultSetIdScoreMapping = self->indexOfResultSetIdScoreMapping;
  if (indexOfResultSetIdScoreMapping >= 1)
  {
    v8 = 0;
    v9 = 56;
    do
    {
      v10 = *(&self->directive_resultset_id_score_mapping->var0 + v9);
      if (v10)
      {
        free(v10);
        *(&self->directive_resultset_id_score_mapping->var0 + v9) = 0;
        indexOfResultSetIdScoreMapping = self->indexOfResultSetIdScoreMapping;
      }

      ++v8;
      v9 += 64;
    }

    while (v8 < indexOfResultSetIdScoreMapping);
  }
}

- (void)processL2FeatureVector:(id)vector populatingValues:(float *)values scoreValue:(char *)value count:(int)count
{
  v6 = (MEMORY[0x1EEE9AC00])(self, a2, vector, values, value, *&count);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v6;
  v151 = *MEMORY[0x1E69E9840];
  v15 = v14;
  processingContext = [v13 processingContext];
  expandedFeatureExecutionOrder = [processingContext expandedFeatureExecutionOrder];

  bzero(v150, 0x328CuLL);
  v18 = [v15 getAllScores:v150];
  v19 = v18;
  v148 = v13;
  v20 = *(v13 + 8);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *(v13 + 104);
    do
    {
      v23 = *(v22 + 16 * v21 + 8);
      v24 = *(v22 + 16 * v21);
      v25 = v23 > v24;
      v26 = v23 - v24;
      if (v25)
      {
        v27 = (v12 + 4 * v24);
        v28 = (expandedFeatureExecutionOrder + 2 * v24);
        do
        {
          v29 = *v28++;
          *v27++ = *(v18 + 4 * v29);
          --v26;
        }

        while (v26);
      }

      ++v21;
    }

    while (v21 != v20);
  }

  v30 = *(v13 + 16);
  if (v30 >= 1)
  {
    v31 = 0;
    v32 = *(v13 + 120);
    v33 = (v32 + 24);
    do
    {
      v34 = (v32 + 40 * v31);
      v35 = *v34;
      v36 = v34[1];
      if (*v34 < v36)
      {
        v37 = v34[4];
        do
        {
          if (v37)
          {
            v38 = *(v18 + 4 * *(expandedFeatureExecutionOrder + 2 * v35));
            v39 = v37;
            v40 = v33;
            do
            {
              v41 = v38;
              if (v38 == *(v40 - 2))
              {
                v41 = *v40;
              }

              *(v12 + 4 * v35) = v41;
              ++v40;
              --v39;
            }

            while (v39);
          }

          ++v35;
        }

        while (v35 != v36);
      }

      ++v31;
      v33 += 10;
    }

    while (v31 != v30);
  }

  v42 = *(v13 + 52);
  if (v42 >= 1)
  {
    v43 = 0;
    v44 = *(v13 + 192);
    do
    {
      v45 = *(v44 + 16 * v43 + 8);
      v46 = *(v44 + 16 * v43);
      if (v46 < v45)
      {
        v47 = (v12 + 4 * v46);
        do
        {
          v48 = v8;
          v49 = v47;
          v50 = v10;
          if (v8 >= 1)
          {
            do
            {
              v51 = *v50++;
              *v49++ = v51;
              --v48;
            }

            while (v48);
          }

          ++v46;
          ++v47;
        }

        while (v46 != v45);
      }

      ++v43;
    }

    while (v43 != v42);
  }

  v52 = v13;
  v53 = *(v13 + 20);
  if (v53)
  {
    v54 = 0;
    v55 = *(v13 + 128);
    v56 = (v55 + 36);
    do
    {
      v57 = (v55 + 72 * v54);
      v58 = *v57;
      v59 = v57[1];
      if (*v57 < v59)
      {
        v60 = v57[8];
        v61 = (v55 + 72 * v54 + 56);
        do
        {
          if (v60)
          {
            v62 = *(v19 + 4 * *(expandedFeatureExecutionOrder + 2 * v58));
            v63 = v60;
            v64 = v56;
            do
            {
              v65 = v62;
              if (v62 == *(v64 - 5))
              {
                v65 = *v64;
              }

              if (v65 < *v61)
              {
                v65 = *v61;
              }

              *(v12 + 4 * v58) = v65;
              ++v64;
              --v63;
            }

            while (v63);
          }

          ++v58;
        }

        while (v58 != v59);
      }

      ++v54;
      v56 += 18;
    }

    while (v54 != v53);
  }

  v145 = v15;
  if (*(v13 + 28) >= 1)
  {
    v66 = 0;
    v67 = 0;
    v144 = @"com.apple.CoreSuggestions";
    do
    {
      v68 = (*(v52 + 152) + v66);
      v69 = (v12 + 4 * *v68);
      bzero(v69, 4 * (v68[1] - *v68));
      v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(v52 + 152) + v66 + 40)];
      v147 = v70;
      if ([v70 isEqualToString:@"bundle_id"])
      {
        v146 = v69;
        v71 = *(*(v52 + 152) + v66 + 16);
        bundleID = [v15 bundleID];
        lowercaseString = [bundleID lowercaseString];

        v74 = [v71 objectForKey:lowercaseString];
        if (!v74 || (v75 = v74, [v71 objectForKey:lowercaseString], v76 = objc_claimAutoreleasedReturnValue(), integerValue = objc_msgSend(v76, "integerValue"), v76, v15 = v145, v75, integerValue == 0x7FFFFFFFFFFFFFFFLL))
        {
          [v15 scoreForFeature:{372, v144}];
          v79 = v78;
          lowercaseString2 = [(__CFString *)v144 lowercaseString];
          v81 = [lowercaseString isEqualToString:lowercaseString2];

          v82 = @"__third_party_none_of_the_above__";
          if ((v81 & 1) == 0)
          {
            if (v79 == 0.0 && ([lowercaseString hasPrefix:@"com.apple.parsec"] & 1) == 0)
            {
              if ([lowercaseString hasPrefix:@"com.apple."])
              {
                v82 = 0;
              }

              else
              {
                v82 = @"__third_party_none_of_the_above__";
              }
            }

            else
            {
              v82 = @"__parsec_none_of_the_above__";
            }
          }

          v83 = [v71 objectForKey:v82];
          if (!v83 || (v84 = v83, [v71 objectForKey:v82], v85 = objc_claimAutoreleasedReturnValue(), integerValue = objc_msgSend(v85, "integerValue"), v85, v15 = v145, v84, integerValue == 0x7FFFFFFFFFFFFFFFLL))
          {
            v86 = [v71 objectForKey:@"__none_of_the_above__"];
            integerValue = [v86 integerValue];
          }

          if (!integerValue)
          {
            [PRSDirectivesManager processL2FeatureVector:populatingValues:scoreValue:count:];
          }
        }

        v52 = v148;
        v69 = v146;
      }

      else if ([v70 isEqualToString:@"device_type"])
      {
        v87 = *(*(v52 + 152) + v66 + 16);
        [v15 device_type];
        v89 = v88 = v69;
        v90 = [v87 objectForKey:v89];

        integerValue = [v90 unsignedIntegerValue];
        v52 = v148;

        v69 = v88;
        v15 = v145;
      }

      else if ([v70 isEqualToString:@"query_terms"])
      {
        integerValue = *(*(v52 + 152) + 4 * *(v19 + 1452) + v66 + 16);
      }

      else
      {
        integerValue = 0;
      }

      *(v69 + integerValue) = 1065353216;

      ++v67;
      v66 += 48;
    }

    while (v67 < *(v52 + 28));
  }

  if (*(v52 + 32) >= 1)
  {
    v91 = 0;
    v92 = 0;
    do
    {
      v93 = (*(v52 + 160) + v91);
      v94 = *v93;
      v95 = v93[1];
      v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v93[5], v144}];
      v97 = *(*(v52 + 160) + v91 + 48);
      if ([v96 isEqualToString:@"resultset_bundle_id"])
      {
        v98 = v97 == 0;
      }

      else
      {
        v98 = 1;
      }

      if (!v98)
      {
        memcpy((v12 + 4 * v94), v97, 4 * (v95 - v94));
      }

      ++v92;
      v52 = v148;
      v91 += 56;
    }

    while (v92 < *(v148 + 32));
  }

  v99 = *(v52 + 248);
  if (v99)
  {
    memcpy((v12 + 4 * *(v52 + 200)), v99, 4 * (*(v52 + 208) - *(v52 + 200)));
  }

  v100 = *(v52 + 304);
  if (v100)
  {
    memcpy((v12 + 4 * *(v52 + 264)), v100, 4 * (*(v52 + 272) - *(v52 + 264)));
  }

  if (*(v52 + 36) >= 1)
  {
    v101 = 0;
    v102 = 0;
    do
    {
      v103 = (*(v52 + 168) + v101);
      v104 = *v103;
      v105 = v103[1];
      v106 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v103[6], v144}];
      v107 = *(*(v52 + 168) + v101 + 56);
      if ([v106 isEqualToString:@"resultset_bundle_id_score"])
      {
        v108 = v107 == 0;
      }

      else
      {
        v108 = 1;
      }

      if (!v108)
      {
        memcpy((v12 + 4 * v104), v107, 4 * (v105 - v104));
      }

      ++v102;
      v52 = v148;
      v101 += 64;
    }

    while (v102 < *(v148 + 36));
  }

  v109 = *(v52 + 24);
  if (v109 >= 1)
  {
    v110 = 0;
    v111 = *(v52 + 144);
    v112 = (v111 + 36);
    do
    {
      v113 = (v111 + (v110 << 6));
      v114 = *v113;
      v115 = v113[1];
      if (*v113 < v115)
      {
        v116 = v113[7];
        do
        {
          if (v116)
          {
            v117 = *(v19 + 4 * *(expandedFeatureExecutionOrder + 2 * v114));
            v118 = v116;
            v119 = v112;
            do
            {
              v120 = v117;
              if (v117 == *(v119 - 5))
              {
                v120 = *v119;
              }

              *(v12 + 4 * v114) = v120;
              ++v119;
              --v118;
            }

            while (v118);
          }

          ++v114;
        }

        while (v114 != v115);
      }

      ++v110;
      v112 += 16;
    }

    while (v110 != v109);
  }

  v121 = *(v52 + 40);
  if (v121 >= 1)
  {
    v122 = 0;
    v123 = *(v52 + 136);
    do
    {
      v124 = (v123 + 24 * v122);
      v126 = *v124;
      v125 = *(v124 + 1);
      v25 = v125 > *v124;
      v127 = v125 - *v124;
      if (v25)
      {
        v128 = (v12 + 4 * v126);
        v129 = (expandedFeatureExecutionOrder + 2 * v126);
        do
        {
          v130 = *v129++;
          v131 = *(v19 + 4 * v130);
          if (v131 == -1.0)
          {
            v131 = v124[4];
          }

          *v128++ = v131;
          --v127;
        }

        while (v127);
      }

      ++v122;
    }

    while (v122 != v121);
  }

  v132 = *(v52 + 320);
  if (v132)
  {
    v149[0] = MEMORY[0x1E69E9820];
    v149[1] = 3221225472;
    v149[2] = __81__PRSDirectivesManager_processL2FeatureVector_populatingValues_scoreValue_count___block_invoke;
    v149[3] = &__block_descriptor_40_e12_v24__0Q8_B16l;
    v149[4] = v12;
    [v132 enumerateIndexesUsingBlock:v149];
  }

  v133 = *(v52 + 44);
  if (v133 >= 1)
  {
    v134 = 0;
    v135 = *(v52 + 176);
    do
    {
      v136 = *(v135 + 16 * v134 + 8);
      v137 = *(v135 + 16 * v134);
      v25 = v136 > v137;
      v138 = v136 - v137;
      if (v25)
      {
        v139 = (v12 + 4 * v137);
        v140 = (expandedFeatureExecutionOrder + 2 * v137);
        do
        {
          v141 = *v140++;
          v142 = *(v19 + 4 * v141);
          if (v142 <= 0.0)
          {
            v143 = 0.0;
          }

          else
          {
            v143 = 1.0 / v142;
          }

          *v139++ = v143;
          --v138;
        }

        while (v138);
      }

      ++v134;
    }

    while (v134 != v133);
  }

  if (processL2FeatureVector_populatingValues_scoreValue_count__onceToken != -1)
  {
    [PRSDirectivesManager processL2FeatureVector:populatingValues:scoreValue:count:];
  }
}

uint64_t __81__PRSDirectivesManager_processL2FeatureVector_populatingValues_scoreValue_count___block_invoke_2()
{
  [@"com.apple.searchd" UTF8String];

  return os_variant_has_internal_diagnostics();
}

@end