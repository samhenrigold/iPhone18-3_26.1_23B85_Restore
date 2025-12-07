@interface HDCodableObjectCollection
- (BOOL)isEqual:(id)equal;
- (BOOL)unitTest_isEquivalentToObjectCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedObjects;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)count;
- (unint64_t)hash;
- (void)addActivityCaches:(id)caches;
- (void)addActivityGoalSchedules:(id)schedules;
- (void)addBinarySamples:(id)samples;
- (void)addCategorySamples:(id)samples;
- (void)addCdaDocumentSamples:(id)samples;
- (void)addCorrelations:(id)correlations;
- (void)addDeletedSamples:(id)samples;
- (void)addEcgSamples:(id)samples;
- (void)addFitnessFriendAchievements:(id)achievements;
- (void)addFitnessFriendActivitySnapshots:(id)snapshots;
- (void)addFitnessFriendWorkouts:(id)workouts;
- (void)addLocationSeries:(id)series;
- (void)addMedicationDoseEvent:(id)event;
- (void)addPauseRingsSchedules:(id)schedules;
- (void)addQuantitySamples:(id)samples;
- (void)addScoredAssessmentSamples:(id)samples;
- (void)addSleepSchedules:(id)schedules;
- (void)addStateOfMindLogs:(id)logs;
- (void)addVisionSamples:(id)samples;
- (void)addWorkoutZones:(id)zones;
- (void)addWorkouts:(id)workouts;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableObjectCollection

- (unint64_t)count
{
  v3 = [(NSMutableArray *)self->_categorySamples count];
  v4 = [(NSMutableArray *)self->_quantitySamples count]+ v3;
  v5 = [(NSMutableArray *)self->_workouts count];
  v6 = v4 + v5 + [(NSMutableArray *)self->_correlations count];
  v7 = [(NSMutableArray *)self->_activityCaches count];
  v8 = v7 + [(NSMutableArray *)self->_activityGoalSchedules count];
  v9 = v6 + v8 + [(NSMutableArray *)self->_pauseRingsSchedules count];
  v10 = [(NSMutableArray *)self->_binarySamples count];
  v11 = v10 + [(NSMutableArray *)self->_deletedSamples count];
  v12 = v11 + [(NSMutableArray *)self->_locationSeries count];
  v13 = v9 + v12 + [(NSMutableArray *)self->_cdaDocumentSamples count];
  v14 = [(NSMutableArray *)self->_fitnessFriendAchievements count];
  v15 = v14 + [(NSMutableArray *)self->_fitnessFriendActivitySnapshots count];
  v16 = v15 + [(NSMutableArray *)self->_fitnessFriendWorkouts count];
  v17 = v16 + [(NSMutableArray *)self->_ecgSamples count];
  v18 = v13 + v17 + [(HDCodableGeneratedObjectCollection *)self->_generatedObjectCollection count];
  v19 = [(NSMutableArray *)self->_sleepSchedules count];
  v20 = v19 + [(NSMutableArray *)self->_visionSamples count];
  v21 = v20 + [(NSMutableArray *)self->_stateOfMindLogs count];
  v22 = v21 + [(NSMutableArray *)self->_scoredAssessmentSamples count];
  return v18 + v22 + [(NSMutableArray *)self->_workoutZones count];
}

- (id)decodedObjects
{
  v258 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HDCodableObjectCollection_HDCodingSupport__decodedObjects__block_invoke;
  aBlock[3] = &unk_27861FAD0;
  v160 = v3;
  v238 = v160;
  v4 = _Block_copy(aBlock);
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  categorySamples = [(HDCodableObjectCollection *)self categorySamples];
  v6 = [categorySamples countByEnumeratingWithState:&v233 objects:v257 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v234;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v234 != v8)
        {
          objc_enumerationMutation(categorySamples);
        }

        v10 = *(*(&v233 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [MEMORY[0x277CCD0B0] createWithCodable:v10];
        v4[2](v4, v12);

        objc_autoreleasePoolPop(v11);
      }

      v7 = [categorySamples countByEnumeratingWithState:&v233 objects:v257 count:16];
    }

    while (v7);
  }

  v232 = 0u;
  v231 = 0u;
  v230 = 0u;
  v229 = 0u;
  quantitySamples = [(HDCodableObjectCollection *)self quantitySamples];
  v14 = [quantitySamples countByEnumeratingWithState:&v229 objects:v256 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v230;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v230 != v16)
        {
          objc_enumerationMutation(quantitySamples);
        }

        v18 = *(*(&v229 + 1) + 8 * j);
        v19 = objc_autoreleasePoolPush();
        v20 = [MEMORY[0x277CCD800] createWithCodable:v18];
        if (!v20)
        {
          v20 = [MEMORY[0x277CCD800] migrateCodableObject:v18];
        }

        v4[2](v4, v20);

        objc_autoreleasePoolPop(v19);
      }

      v15 = [quantitySamples countByEnumeratingWithState:&v229 objects:v256 count:16];
    }

    while (v15);
  }

  v228 = 0u;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  workouts = [(HDCodableObjectCollection *)self workouts];
  v22 = [workouts countByEnumeratingWithState:&v225 objects:v255 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v226;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v226 != v24)
        {
          objc_enumerationMutation(workouts);
        }

        v26 = *(*(&v225 + 1) + 8 * k);
        v27 = objc_autoreleasePoolPush();
        v28 = [MEMORY[0x277CCDBE8] createWithCodable:v26];
        v4[2](v4, v28);

        objc_autoreleasePoolPop(v27);
      }

      v23 = [workouts countByEnumeratingWithState:&v225 objects:v255 count:16];
    }

    while (v23);
  }

  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  correlations = [(HDCodableObjectCollection *)self correlations];
  v30 = [correlations countByEnumeratingWithState:&v221 objects:v254 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v222;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v222 != v32)
        {
          objc_enumerationMutation(correlations);
        }

        v34 = *(*(&v221 + 1) + 8 * m);
        v35 = objc_autoreleasePoolPush();
        v36 = [MEMORY[0x277CCD240] createWithCodable:v34];
        v4[2](v4, v36);

        objc_autoreleasePoolPop(v35);
      }

      v31 = [correlations countByEnumeratingWithState:&v221 objects:v254 count:16];
    }

    while (v31);
  }

  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  activityCaches = [(HDCodableObjectCollection *)self activityCaches];
  v38 = [activityCaches countByEnumeratingWithState:&v217 objects:v253 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v218;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v218 != v40)
        {
          objc_enumerationMutation(activityCaches);
        }

        v42 = *(*(&v217 + 1) + 8 * n);
        v43 = objc_autoreleasePoolPush();
        v44 = [MEMORY[0x277CCCFA0] createWithCodable:v42];
        v4[2](v4, v44);

        objc_autoreleasePoolPop(v43);
      }

      v39 = [activityCaches countByEnumeratingWithState:&v217 objects:v253 count:16];
    }

    while (v39);
  }

  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  activityGoalSchedules = [(HDCodableObjectCollection *)self activityGoalSchedules];
  v46 = [activityGoalSchedules countByEnumeratingWithState:&v213 objects:v252 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v214;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v214 != v48)
        {
          objc_enumerationMutation(activityGoalSchedules);
        }

        v50 = *(*(&v213 + 1) + 8 * ii);
        v51 = objc_autoreleasePoolPush();
        v52 = [MEMORY[0x277CCCFA8] createWithCodable:v50];
        v4[2](v4, v52);

        objc_autoreleasePoolPop(v51);
      }

      v47 = [activityGoalSchedules countByEnumeratingWithState:&v213 objects:v252 count:16];
    }

    while (v47);
  }

  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  pauseRingsSchedules = [(HDCodableObjectCollection *)self pauseRingsSchedules];
  v54 = [pauseRingsSchedules countByEnumeratingWithState:&v209 objects:v251 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v210;
    do
    {
      for (jj = 0; jj != v55; ++jj)
      {
        if (*v210 != v56)
        {
          objc_enumerationMutation(pauseRingsSchedules);
        }

        v58 = *(*(&v209 + 1) + 8 * jj);
        v59 = objc_autoreleasePoolPush();
        v60 = [MEMORY[0x277CCD788] createWithCodable:v58];
        v4[2](v4, v60);

        objc_autoreleasePoolPop(v59);
      }

      v55 = [pauseRingsSchedules countByEnumeratingWithState:&v209 objects:v251 count:16];
    }

    while (v55);
  }

  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  binarySamples = [(HDCodableObjectCollection *)self binarySamples];
  v62 = [binarySamples countByEnumeratingWithState:&v205 objects:v250 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v206;
    do
    {
      for (kk = 0; kk != v63; ++kk)
      {
        if (*v206 != v64)
        {
          objc_enumerationMutation(binarySamples);
        }

        v66 = *(*(&v205 + 1) + 8 * kk);
        v67 = objc_autoreleasePoolPush();
        v68 = [MEMORY[0x277CCD8A8] createWithCodable:v66];
        v4[2](v4, v68);

        objc_autoreleasePoolPop(v67);
      }

      v63 = [binarySamples countByEnumeratingWithState:&v205 objects:v250 count:16];
    }

    while (v63);
  }

  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  ecgSamples = [(HDCodableObjectCollection *)self ecgSamples];
  v70 = [ecgSamples countByEnumeratingWithState:&v201 objects:v249 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v202;
    do
    {
      for (mm = 0; mm != v71; ++mm)
      {
        if (*v202 != v72)
        {
          objc_enumerationMutation(ecgSamples);
        }

        v74 = *(*(&v201 + 1) + 8 * mm);
        v75 = objc_autoreleasePoolPush();
        v76 = [MEMORY[0x277CCD378] createWithCodable:v74];
        v4[2](v4, v76);

        objc_autoreleasePoolPop(v75);
      }

      v71 = [ecgSamples countByEnumeratingWithState:&v201 objects:v249 count:16];
    }

    while (v71);
  }

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  locationSeries = [(HDCodableObjectCollection *)self locationSeries];
  v78 = [locationSeries countByEnumeratingWithState:&v197 objects:v248 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v198;
    do
    {
      for (nn = 0; nn != v79; ++nn)
      {
        if (*v198 != v80)
        {
          objc_enumerationMutation(locationSeries);
        }

        v82 = *(*(&v197 + 1) + 8 * nn);
        v83 = objc_autoreleasePoolPush();
        v84 = [MEMORY[0x277CCDC70] createWithCodable:v82];
        v4[2](v4, v84);

        objc_autoreleasePoolPop(v83);
      }

      v79 = [locationSeries countByEnumeratingWithState:&v197 objects:v248 count:16];
    }

    while (v79);
  }

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  cdaDocumentSamples = [(HDCodableObjectCollection *)self cdaDocumentSamples];
  v86 = [cdaDocumentSamples countByEnumeratingWithState:&v193 objects:v247 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v194;
    do
    {
      for (i1 = 0; i1 != v87; ++i1)
      {
        if (*v194 != v88)
        {
          objc_enumerationMutation(cdaDocumentSamples);
        }

        v90 = *(*(&v193 + 1) + 8 * i1);
        v91 = objc_autoreleasePoolPush();
        v92 = [MEMORY[0x277CCD098] createWithCodable:v90];
        v4[2](v4, v92);

        objc_autoreleasePoolPop(v91);
      }

      v87 = [cdaDocumentSamples countByEnumeratingWithState:&v193 objects:v247 count:16];
    }

    while (v87);
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  fitnessFriendAchievements = [(HDCodableObjectCollection *)self fitnessFriendAchievements];
  v94 = [fitnessFriendAchievements countByEnumeratingWithState:&v189 objects:v246 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v190;
    do
    {
      for (i2 = 0; i2 != v95; ++i2)
      {
        if (*v190 != v96)
        {
          objc_enumerationMutation(fitnessFriendAchievements);
        }

        v98 = *(*(&v189 + 1) + 8 * i2);
        v99 = objc_autoreleasePoolPush();
        v100 = [MEMORY[0x277CCDDC0] createWithCodable:v98];
        v4[2](v4, v100);

        objc_autoreleasePoolPop(v99);
      }

      v95 = [fitnessFriendAchievements countByEnumeratingWithState:&v189 objects:v246 count:16];
    }

    while (v95);
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  fitnessFriendActivitySnapshots = [(HDCodableObjectCollection *)self fitnessFriendActivitySnapshots];
  v102 = [fitnessFriendActivitySnapshots countByEnumeratingWithState:&v185 objects:v245 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v186;
    do
    {
      for (i3 = 0; i3 != v103; ++i3)
      {
        if (*v186 != v104)
        {
          objc_enumerationMutation(fitnessFriendActivitySnapshots);
        }

        v106 = *(*(&v185 + 1) + 8 * i3);
        v107 = objc_autoreleasePoolPush();
        v108 = [MEMORY[0x277CCDDC8] createWithCodable:v106];
        v4[2](v4, v108);

        objc_autoreleasePoolPop(v107);
      }

      v103 = [fitnessFriendActivitySnapshots countByEnumeratingWithState:&v185 objects:v245 count:16];
    }

    while (v103);
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  fitnessFriendWorkouts = [(HDCodableObjectCollection *)self fitnessFriendWorkouts];
  v110 = [fitnessFriendWorkouts countByEnumeratingWithState:&v181 objects:v244 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v182;
    do
    {
      for (i4 = 0; i4 != v111; ++i4)
      {
        if (*v182 != v112)
        {
          objc_enumerationMutation(fitnessFriendWorkouts);
        }

        v114 = *(*(&v181 + 1) + 8 * i4);
        v115 = objc_autoreleasePoolPush();
        v116 = [MEMORY[0x277CCDDD0] createWithCodable:v114];
        v4[2](v4, v116);

        objc_autoreleasePoolPop(v115);
      }

      v111 = [fitnessFriendWorkouts countByEnumeratingWithState:&v181 objects:v244 count:16];
    }

    while (v111);
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  sleepSchedules = [(HDCodableObjectCollection *)self sleepSchedules];
  v118 = [sleepSchedules countByEnumeratingWithState:&v177 objects:v243 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v178;
    do
    {
      for (i5 = 0; i5 != v119; ++i5)
      {
        if (*v178 != v120)
        {
          objc_enumerationMutation(sleepSchedules);
        }

        v122 = *(*(&v177 + 1) + 8 * i5);
        v123 = objc_autoreleasePoolPush();
        v124 = [MEMORY[0x277CCD9E8] createWithCodable:v122];
        v4[2](v4, v124);

        objc_autoreleasePoolPop(v123);
      }

      v119 = [sleepSchedules countByEnumeratingWithState:&v177 objects:v243 count:16];
    }

    while (v119);
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  visionSamples = [(HDCodableObjectCollection *)self visionSamples];
  v126 = [visionSamples countByEnumeratingWithState:&v173 objects:v242 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v174;
    do
    {
      for (i6 = 0; i6 != v127; ++i6)
      {
        if (*v174 != v128)
        {
          objc_enumerationMutation(visionSamples);
        }

        v130 = *(*(&v173 + 1) + 8 * i6);
        v131 = objc_autoreleasePoolPush();
        v132 = [MEMORY[0x277CCDBC8] createWithCodable:v130];
        v4[2](v4, v132);

        objc_autoreleasePoolPop(v131);
      }

      v127 = [visionSamples countByEnumeratingWithState:&v173 objects:v242 count:16];
    }

    while (v127);
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  stateOfMindLogs = [(HDCodableObjectCollection *)self stateOfMindLogs];
  v134 = [stateOfMindLogs countByEnumeratingWithState:&v169 objects:v241 count:16];
  if (v134)
  {
    v135 = v134;
    v136 = *v170;
    do
    {
      for (i7 = 0; i7 != v135; ++i7)
      {
        if (*v170 != v136)
        {
          objc_enumerationMutation(stateOfMindLogs);
        }

        v138 = *(*(&v169 + 1) + 8 * i7);
        v139 = objc_autoreleasePoolPush();
        v140 = [MEMORY[0x277CCDA30] createWithCodable:v138];
        v4[2](v4, v140);

        objc_autoreleasePoolPop(v139);
      }

      v135 = [stateOfMindLogs countByEnumeratingWithState:&v169 objects:v241 count:16];
    }

    while (v135);
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  scoredAssessmentSamples = [(HDCodableObjectCollection *)self scoredAssessmentSamples];
  v142 = [scoredAssessmentSamples countByEnumeratingWithState:&v165 objects:v240 count:16];
  if (v142)
  {
    v143 = v142;
    v144 = *v166;
    do
    {
      for (i8 = 0; i8 != v143; ++i8)
      {
        if (*v166 != v144)
        {
          objc_enumerationMutation(scoredAssessmentSamples);
        }

        v146 = *(*(&v165 + 1) + 8 * i8);
        v147 = objc_autoreleasePoolPush();
        v148 = [MEMORY[0x277CCD8E8] createWithCodable:v146];
        v4[2](v4, v148);

        objc_autoreleasePoolPop(v147);
      }

      v143 = [scoredAssessmentSamples countByEnumeratingWithState:&v165 objects:v240 count:16];
    }

    while (v143);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  workoutZones = [(HDCodableObjectCollection *)self workoutZones];
  v150 = [workoutZones countByEnumeratingWithState:&v161 objects:v239 count:16];
  if (v150)
  {
    v151 = v150;
    v152 = *v162;
    do
    {
      for (i9 = 0; i9 != v151; ++i9)
      {
        if (*v162 != v152)
        {
          objc_enumerationMutation(workoutZones);
        }

        v154 = *(*(&v161 + 1) + 8 * i9);
        v155 = objc_autoreleasePoolPush();
        v156 = [MEMORY[0x277CCDCE8] createWithCodable:v154];
        v4[2](v4, v156);

        objc_autoreleasePoolPop(v155);
      }

      v151 = [workoutZones countByEnumeratingWithState:&v161 objects:v239 count:16];
    }

    while (v151);
  }

  decodedObjects = [(HDCodableGeneratedObjectCollection *)self->_generatedObjectCollection decodedObjects];
  [v160 addObjectsFromArray:decodedObjects];

  v158 = v160;
  return v160;
}

id *__60__HDCodableObjectCollection_HDCodingSupport__decodedObjects__block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

- (void)addCategorySamples:(id)samples
{
  samplesCopy = samples;
  categorySamples = self->_categorySamples;
  v8 = samplesCopy;
  if (!categorySamples)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_categorySamples;
    self->_categorySamples = v6;

    samplesCopy = v8;
    categorySamples = self->_categorySamples;
  }

  [(NSMutableArray *)categorySamples addObject:samplesCopy];
}

- (void)addQuantitySamples:(id)samples
{
  samplesCopy = samples;
  quantitySamples = self->_quantitySamples;
  v8 = samplesCopy;
  if (!quantitySamples)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_quantitySamples;
    self->_quantitySamples = v6;

    samplesCopy = v8;
    quantitySamples = self->_quantitySamples;
  }

  [(NSMutableArray *)quantitySamples addObject:samplesCopy];
}

- (void)addWorkouts:(id)workouts
{
  workoutsCopy = workouts;
  workouts = self->_workouts;
  v8 = workoutsCopy;
  if (!workouts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_workouts;
    self->_workouts = v6;

    workoutsCopy = v8;
    workouts = self->_workouts;
  }

  [(NSMutableArray *)workouts addObject:workoutsCopy];
}

- (void)addCorrelations:(id)correlations
{
  correlationsCopy = correlations;
  correlations = self->_correlations;
  v8 = correlationsCopy;
  if (!correlations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_correlations;
    self->_correlations = v6;

    correlationsCopy = v8;
    correlations = self->_correlations;
  }

  [(NSMutableArray *)correlations addObject:correlationsCopy];
}

- (void)addActivityCaches:(id)caches
{
  cachesCopy = caches;
  activityCaches = self->_activityCaches;
  v8 = cachesCopy;
  if (!activityCaches)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_activityCaches;
    self->_activityCaches = v6;

    cachesCopy = v8;
    activityCaches = self->_activityCaches;
  }

  [(NSMutableArray *)activityCaches addObject:cachesCopy];
}

- (void)addBinarySamples:(id)samples
{
  samplesCopy = samples;
  binarySamples = self->_binarySamples;
  v8 = samplesCopy;
  if (!binarySamples)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_binarySamples;
    self->_binarySamples = v6;

    samplesCopy = v8;
    binarySamples = self->_binarySamples;
  }

  [(NSMutableArray *)binarySamples addObject:samplesCopy];
}

- (void)addDeletedSamples:(id)samples
{
  samplesCopy = samples;
  deletedSamples = self->_deletedSamples;
  v8 = samplesCopy;
  if (!deletedSamples)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deletedSamples;
    self->_deletedSamples = v6;

    samplesCopy = v8;
    deletedSamples = self->_deletedSamples;
  }

  [(NSMutableArray *)deletedSamples addObject:samplesCopy];
}

- (void)addLocationSeries:(id)series
{
  seriesCopy = series;
  locationSeries = self->_locationSeries;
  v8 = seriesCopy;
  if (!locationSeries)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_locationSeries;
    self->_locationSeries = v6;

    seriesCopy = v8;
    locationSeries = self->_locationSeries;
  }

  [(NSMutableArray *)locationSeries addObject:seriesCopy];
}

- (void)addCdaDocumentSamples:(id)samples
{
  samplesCopy = samples;
  cdaDocumentSamples = self->_cdaDocumentSamples;
  v8 = samplesCopy;
  if (!cdaDocumentSamples)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cdaDocumentSamples;
    self->_cdaDocumentSamples = v6;

    samplesCopy = v8;
    cdaDocumentSamples = self->_cdaDocumentSamples;
  }

  [(NSMutableArray *)cdaDocumentSamples addObject:samplesCopy];
}

- (void)addFitnessFriendActivitySnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  fitnessFriendActivitySnapshots = self->_fitnessFriendActivitySnapshots;
  v8 = snapshotsCopy;
  if (!fitnessFriendActivitySnapshots)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fitnessFriendActivitySnapshots;
    self->_fitnessFriendActivitySnapshots = v6;

    snapshotsCopy = v8;
    fitnessFriendActivitySnapshots = self->_fitnessFriendActivitySnapshots;
  }

  [(NSMutableArray *)fitnessFriendActivitySnapshots addObject:snapshotsCopy];
}

- (void)addFitnessFriendAchievements:(id)achievements
{
  achievementsCopy = achievements;
  fitnessFriendAchievements = self->_fitnessFriendAchievements;
  v8 = achievementsCopy;
  if (!fitnessFriendAchievements)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fitnessFriendAchievements;
    self->_fitnessFriendAchievements = v6;

    achievementsCopy = v8;
    fitnessFriendAchievements = self->_fitnessFriendAchievements;
  }

  [(NSMutableArray *)fitnessFriendAchievements addObject:achievementsCopy];
}

- (void)addFitnessFriendWorkouts:(id)workouts
{
  workoutsCopy = workouts;
  fitnessFriendWorkouts = self->_fitnessFriendWorkouts;
  v8 = workoutsCopy;
  if (!fitnessFriendWorkouts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fitnessFriendWorkouts;
    self->_fitnessFriendWorkouts = v6;

    workoutsCopy = v8;
    fitnessFriendWorkouts = self->_fitnessFriendWorkouts;
  }

  [(NSMutableArray *)fitnessFriendWorkouts addObject:workoutsCopy];
}

- (void)addSleepSchedules:(id)schedules
{
  schedulesCopy = schedules;
  sleepSchedules = self->_sleepSchedules;
  v8 = schedulesCopy;
  if (!sleepSchedules)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sleepSchedules;
    self->_sleepSchedules = v6;

    schedulesCopy = v8;
    sleepSchedules = self->_sleepSchedules;
  }

  [(NSMutableArray *)sleepSchedules addObject:schedulesCopy];
}

- (void)addEcgSamples:(id)samples
{
  samplesCopy = samples;
  ecgSamples = self->_ecgSamples;
  v8 = samplesCopy;
  if (!ecgSamples)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ecgSamples;
    self->_ecgSamples = v6;

    samplesCopy = v8;
    ecgSamples = self->_ecgSamples;
  }

  [(NSMutableArray *)ecgSamples addObject:samplesCopy];
}

- (void)addVisionSamples:(id)samples
{
  samplesCopy = samples;
  visionSamples = self->_visionSamples;
  v8 = samplesCopy;
  if (!visionSamples)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_visionSamples;
    self->_visionSamples = v6;

    samplesCopy = v8;
    visionSamples = self->_visionSamples;
  }

  [(NSMutableArray *)visionSamples addObject:samplesCopy];
}

- (void)addStateOfMindLogs:(id)logs
{
  logsCopy = logs;
  stateOfMindLogs = self->_stateOfMindLogs;
  v8 = logsCopy;
  if (!stateOfMindLogs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stateOfMindLogs;
    self->_stateOfMindLogs = v6;

    logsCopy = v8;
    stateOfMindLogs = self->_stateOfMindLogs;
  }

  [(NSMutableArray *)stateOfMindLogs addObject:logsCopy];
}

- (void)addScoredAssessmentSamples:(id)samples
{
  samplesCopy = samples;
  scoredAssessmentSamples = self->_scoredAssessmentSamples;
  v8 = samplesCopy;
  if (!scoredAssessmentSamples)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_scoredAssessmentSamples;
    self->_scoredAssessmentSamples = v6;

    samplesCopy = v8;
    scoredAssessmentSamples = self->_scoredAssessmentSamples;
  }

  [(NSMutableArray *)scoredAssessmentSamples addObject:samplesCopy];
}

- (void)addWorkoutZones:(id)zones
{
  zonesCopy = zones;
  workoutZones = self->_workoutZones;
  v8 = zonesCopy;
  if (!workoutZones)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_workoutZones;
    self->_workoutZones = v6;

    zonesCopy = v8;
    workoutZones = self->_workoutZones;
  }

  [(NSMutableArray *)workoutZones addObject:zonesCopy];
}

- (void)addActivityGoalSchedules:(id)schedules
{
  schedulesCopy = schedules;
  activityGoalSchedules = self->_activityGoalSchedules;
  v8 = schedulesCopy;
  if (!activityGoalSchedules)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_activityGoalSchedules;
    self->_activityGoalSchedules = v6;

    schedulesCopy = v8;
    activityGoalSchedules = self->_activityGoalSchedules;
  }

  [(NSMutableArray *)activityGoalSchedules addObject:schedulesCopy];
}

- (void)addPauseRingsSchedules:(id)schedules
{
  schedulesCopy = schedules;
  pauseRingsSchedules = self->_pauseRingsSchedules;
  v8 = schedulesCopy;
  if (!pauseRingsSchedules)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_pauseRingsSchedules;
    self->_pauseRingsSchedules = v6;

    schedulesCopy = v8;
    pauseRingsSchedules = self->_pauseRingsSchedules;
  }

  [(NSMutableArray *)pauseRingsSchedules addObject:schedulesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableObjectCollection;
  v4 = [(HDCodableObjectCollection *)&v8 description];
  dictionaryRepresentation = [(HDCodableObjectCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v256 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [dictionary setObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  }

  source = self->_source;
  if (source)
  {
    dictionaryRepresentation = [(HDCodableSource *)source dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"source"];
  }

  if ([(NSMutableArray *)self->_categorySamples count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_categorySamples, "count")}];
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v9 = self->_categorySamples;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v232 objects:v255 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v233;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v233 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v232 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v232 objects:v255 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"categorySamples"];
  }

  if ([(NSMutableArray *)self->_quantitySamples count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_quantitySamples, "count")}];
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v231 = 0u;
    v16 = self->_quantitySamples;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v228 objects:v254 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v229;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v229 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v228 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation3];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v228 objects:v254 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"quantitySamples"];
  }

  if ([(NSMutableArray *)self->_workouts count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_workouts, "count")}];
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    v227 = 0u;
    v23 = self->_workouts;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v224 objects:v253 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v225;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v225 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation4 = [*(*(&v224 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation4];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v224 objects:v253 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"workouts"];
  }

  if ([(NSMutableArray *)self->_correlations count])
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_correlations, "count")}];
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v30 = self->_correlations;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v220 objects:v252 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v221;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v221 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation5 = [*(*(&v220 + 1) + 8 * m) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation5];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v220 objects:v252 count:16];
      }

      while (v32);
    }

    [v4 setObject:v29 forKey:@"correlations"];
  }

  if ([(NSMutableArray *)self->_activityCaches count])
  {
    v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_activityCaches, "count")}];
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v37 = self->_activityCaches;
    v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v216 objects:v251 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v217;
      do
      {
        for (n = 0; n != v39; ++n)
        {
          if (*v217 != v40)
          {
            objc_enumerationMutation(v37);
          }

          dictionaryRepresentation6 = [*(*(&v216 + 1) + 8 * n) dictionaryRepresentation];
          [v36 addObject:dictionaryRepresentation6];
        }

        v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v216 objects:v251 count:16];
      }

      while (v39);
    }

    [v4 setObject:v36 forKey:@"activityCaches"];
  }

  if ([(NSMutableArray *)self->_binarySamples count])
  {
    v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_binarySamples, "count")}];
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v44 = self->_binarySamples;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v212 objects:v250 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v213;
      do
      {
        for (ii = 0; ii != v46; ++ii)
        {
          if (*v213 != v47)
          {
            objc_enumerationMutation(v44);
          }

          dictionaryRepresentation7 = [*(*(&v212 + 1) + 8 * ii) dictionaryRepresentation];
          [v43 addObject:dictionaryRepresentation7];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v212 objects:v250 count:16];
      }

      while (v46);
    }

    [v4 setObject:v43 forKey:@"binarySamples"];
  }

  if ([(NSMutableArray *)self->_deletedSamples count])
  {
    v50 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_deletedSamples, "count")}];
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v51 = self->_deletedSamples;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v208 objects:v249 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v209;
      do
      {
        for (jj = 0; jj != v53; ++jj)
        {
          if (*v209 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation8 = [*(*(&v208 + 1) + 8 * jj) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation8];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v208 objects:v249 count:16];
      }

      while (v53);
    }

    [v4 setObject:v50 forKey:@"deletedSamples"];
  }

  if ([(NSMutableArray *)self->_locationSeries count])
  {
    v57 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_locationSeries, "count")}];
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v58 = self->_locationSeries;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v204 objects:v248 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v205;
      do
      {
        for (kk = 0; kk != v60; ++kk)
        {
          if (*v205 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation9 = [*(*(&v204 + 1) + 8 * kk) dictionaryRepresentation];
          [v57 addObject:dictionaryRepresentation9];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v204 objects:v248 count:16];
      }

      while (v60);
    }

    [v4 setObject:v57 forKey:@"locationSeries"];
  }

  if ([(NSMutableArray *)self->_cdaDocumentSamples count])
  {
    v64 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cdaDocumentSamples, "count")}];
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v65 = self->_cdaDocumentSamples;
    v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v200 objects:v247 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v201;
      do
      {
        for (mm = 0; mm != v67; ++mm)
        {
          if (*v201 != v68)
          {
            objc_enumerationMutation(v65);
          }

          dictionaryRepresentation10 = [*(*(&v200 + 1) + 8 * mm) dictionaryRepresentation];
          [v64 addObject:dictionaryRepresentation10];
        }

        v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v200 objects:v247 count:16];
      }

      while (v67);
    }

    [v4 setObject:v64 forKey:@"cdaDocumentSamples"];
  }

  if ([(NSMutableArray *)self->_fitnessFriendActivitySnapshots count])
  {
    v71 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_fitnessFriendActivitySnapshots, "count")}];
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v72 = self->_fitnessFriendActivitySnapshots;
    v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v196 objects:v246 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v197;
      do
      {
        for (nn = 0; nn != v74; ++nn)
        {
          if (*v197 != v75)
          {
            objc_enumerationMutation(v72);
          }

          dictionaryRepresentation11 = [*(*(&v196 + 1) + 8 * nn) dictionaryRepresentation];
          [v71 addObject:dictionaryRepresentation11];
        }

        v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v196 objects:v246 count:16];
      }

      while (v74);
    }

    [v4 setObject:v71 forKey:@"fitnessFriendActivitySnapshots"];
  }

  if ([(NSMutableArray *)self->_fitnessFriendAchievements count])
  {
    v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_fitnessFriendAchievements, "count")}];
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v79 = self->_fitnessFriendAchievements;
    v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v192 objects:v245 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v193;
      do
      {
        for (i1 = 0; i1 != v81; ++i1)
        {
          if (*v193 != v82)
          {
            objc_enumerationMutation(v79);
          }

          dictionaryRepresentation12 = [*(*(&v192 + 1) + 8 * i1) dictionaryRepresentation];
          [v78 addObject:dictionaryRepresentation12];
        }

        v81 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v192 objects:v245 count:16];
      }

      while (v81);
    }

    [v4 setObject:v78 forKey:@"fitnessFriendAchievements"];
  }

  if ([(NSMutableArray *)self->_fitnessFriendWorkouts count])
  {
    v85 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_fitnessFriendWorkouts, "count")}];
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v86 = self->_fitnessFriendWorkouts;
    v87 = [(NSMutableArray *)v86 countByEnumeratingWithState:&v188 objects:v244 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v189;
      do
      {
        for (i2 = 0; i2 != v88; ++i2)
        {
          if (*v189 != v89)
          {
            objc_enumerationMutation(v86);
          }

          dictionaryRepresentation13 = [*(*(&v188 + 1) + 8 * i2) dictionaryRepresentation];
          [v85 addObject:dictionaryRepresentation13];
        }

        v88 = [(NSMutableArray *)v86 countByEnumeratingWithState:&v188 objects:v244 count:16];
      }

      while (v88);
    }

    [v4 setObject:v85 forKey:@"fitnessFriendWorkouts"];
  }

  generatedObjectCollection = self->_generatedObjectCollection;
  if (generatedObjectCollection)
  {
    dictionaryRepresentation14 = [(HDCodableGeneratedObjectCollection *)generatedObjectCollection dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation14 forKey:@"generatedObjectCollection"];
  }

  provenance = self->_provenance;
  if (provenance)
  {
    dictionaryRepresentation15 = [(HDCodableProvenance *)provenance dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation15 forKey:@"provenance"];
  }

  if ([(NSMutableArray *)self->_sleepSchedules count])
  {
    v96 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sleepSchedules, "count")}];
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v97 = self->_sleepSchedules;
    v98 = [(NSMutableArray *)v97 countByEnumeratingWithState:&v184 objects:v243 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v185;
      do
      {
        for (i3 = 0; i3 != v99; ++i3)
        {
          if (*v185 != v100)
          {
            objc_enumerationMutation(v97);
          }

          dictionaryRepresentation16 = [*(*(&v184 + 1) + 8 * i3) dictionaryRepresentation];
          [v96 addObject:dictionaryRepresentation16];
        }

        v99 = [(NSMutableArray *)v97 countByEnumeratingWithState:&v184 objects:v243 count:16];
      }

      while (v99);
    }

    [v4 setObject:v96 forKey:@"sleepSchedules"];
  }

  if ([(NSMutableArray *)self->_ecgSamples count])
  {
    v103 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_ecgSamples, "count")}];
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v104 = self->_ecgSamples;
    v105 = [(NSMutableArray *)v104 countByEnumeratingWithState:&v180 objects:v242 count:16];
    if (v105)
    {
      v106 = v105;
      v107 = *v181;
      do
      {
        for (i4 = 0; i4 != v106; ++i4)
        {
          if (*v181 != v107)
          {
            objc_enumerationMutation(v104);
          }

          dictionaryRepresentation17 = [*(*(&v180 + 1) + 8 * i4) dictionaryRepresentation];
          [v103 addObject:dictionaryRepresentation17];
        }

        v106 = [(NSMutableArray *)v104 countByEnumeratingWithState:&v180 objects:v242 count:16];
      }

      while (v106);
    }

    [v4 setObject:v103 forKey:@"ecgSamples"];
  }

  if ([(NSMutableArray *)self->_visionSamples count])
  {
    v110 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_visionSamples, "count")}];
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v111 = self->_visionSamples;
    v112 = [(NSMutableArray *)v111 countByEnumeratingWithState:&v176 objects:v241 count:16];
    if (v112)
    {
      v113 = v112;
      v114 = *v177;
      do
      {
        for (i5 = 0; i5 != v113; ++i5)
        {
          if (*v177 != v114)
          {
            objc_enumerationMutation(v111);
          }

          dictionaryRepresentation18 = [*(*(&v176 + 1) + 8 * i5) dictionaryRepresentation];
          [v110 addObject:dictionaryRepresentation18];
        }

        v113 = [(NSMutableArray *)v111 countByEnumeratingWithState:&v176 objects:v241 count:16];
      }

      while (v113);
    }

    [v4 setObject:v110 forKey:@"visionSamples"];
  }

  if ([(NSMutableArray *)self->_stateOfMindLogs count])
  {
    v117 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_stateOfMindLogs, "count")}];
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v118 = self->_stateOfMindLogs;
    v119 = [(NSMutableArray *)v118 countByEnumeratingWithState:&v172 objects:v240 count:16];
    if (v119)
    {
      v120 = v119;
      v121 = *v173;
      do
      {
        for (i6 = 0; i6 != v120; ++i6)
        {
          if (*v173 != v121)
          {
            objc_enumerationMutation(v118);
          }

          dictionaryRepresentation19 = [*(*(&v172 + 1) + 8 * i6) dictionaryRepresentation];
          [v117 addObject:dictionaryRepresentation19];
        }

        v120 = [(NSMutableArray *)v118 countByEnumeratingWithState:&v172 objects:v240 count:16];
      }

      while (v120);
    }

    [v4 setObject:v117 forKey:@"stateOfMindLogs"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation20 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation20 forKey:@"syncIdentity"];
  }

  if ([(NSMutableArray *)self->_scoredAssessmentSamples count])
  {
    v126 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_scoredAssessmentSamples, "count")}];
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v127 = self->_scoredAssessmentSamples;
    v128 = [(NSMutableArray *)v127 countByEnumeratingWithState:&v168 objects:v239 count:16];
    if (v128)
    {
      v129 = v128;
      v130 = *v169;
      do
      {
        for (i7 = 0; i7 != v129; ++i7)
        {
          if (*v169 != v130)
          {
            objc_enumerationMutation(v127);
          }

          dictionaryRepresentation21 = [*(*(&v168 + 1) + 8 * i7) dictionaryRepresentation];
          [v126 addObject:dictionaryRepresentation21];
        }

        v129 = [(NSMutableArray *)v127 countByEnumeratingWithState:&v168 objects:v239 count:16];
      }

      while (v129);
    }

    [v4 setObject:v126 forKey:@"scoredAssessmentSamples"];
  }

  if ([(NSMutableArray *)self->_workoutZones count])
  {
    v133 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_workoutZones, "count")}];
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v134 = self->_workoutZones;
    v135 = [(NSMutableArray *)v134 countByEnumeratingWithState:&v164 objects:v238 count:16];
    if (v135)
    {
      v136 = v135;
      v137 = *v165;
      do
      {
        for (i8 = 0; i8 != v136; ++i8)
        {
          if (*v165 != v137)
          {
            objc_enumerationMutation(v134);
          }

          dictionaryRepresentation22 = [*(*(&v164 + 1) + 8 * i8) dictionaryRepresentation];
          [v133 addObject:dictionaryRepresentation22];
        }

        v136 = [(NSMutableArray *)v134 countByEnumeratingWithState:&v164 objects:v238 count:16];
      }

      while (v136);
    }

    [v4 setObject:v133 forKey:@"workoutZones"];
  }

  if ([(NSMutableArray *)self->_activityGoalSchedules count])
  {
    v140 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_activityGoalSchedules, "count")}];
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v141 = self->_activityGoalSchedules;
    v142 = [(NSMutableArray *)v141 countByEnumeratingWithState:&v160 objects:v237 count:16];
    if (v142)
    {
      v143 = v142;
      v144 = *v161;
      do
      {
        for (i9 = 0; i9 != v143; ++i9)
        {
          if (*v161 != v144)
          {
            objc_enumerationMutation(v141);
          }

          dictionaryRepresentation23 = [*(*(&v160 + 1) + 8 * i9) dictionaryRepresentation];
          [v140 addObject:dictionaryRepresentation23];
        }

        v143 = [(NSMutableArray *)v141 countByEnumeratingWithState:&v160 objects:v237 count:16];
      }

      while (v143);
    }

    [v4 setObject:v140 forKey:@"activityGoalSchedules"];
  }

  if ([(NSMutableArray *)self->_pauseRingsSchedules count])
  {
    v147 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_pauseRingsSchedules, "count")}];
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v148 = self->_pauseRingsSchedules;
    v149 = [(NSMutableArray *)v148 countByEnumeratingWithState:&v156 objects:v236 count:16];
    if (v149)
    {
      v150 = v149;
      v151 = *v157;
      do
      {
        for (i10 = 0; i10 != v150; ++i10)
        {
          if (*v157 != v151)
          {
            objc_enumerationMutation(v148);
          }

          dictionaryRepresentation24 = [*(*(&v156 + 1) + 8 * i10) dictionaryRepresentation];
          [v147 addObject:dictionaryRepresentation24];
        }

        v150 = [(NSMutableArray *)v148 countByEnumeratingWithState:&v156 objects:v236 count:16];
      }

      while (v150);
    }

    [v4 setObject:v147 forKey:@"pauseRingsSchedules"];
  }

  v154 = v4;

  return v4;
}

- (void)writeTo:(id)to
{
  v205 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_source)
  {
    PBDataWriterWriteSubmessage();
  }

  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v5 = self->_categorySamples;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v181 objects:v204 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v182;
    do
    {
      v9 = 0;
      do
      {
        if (*v182 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v181 objects:v204 count:16];
    }

    while (v7);
  }

  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v10 = self->_quantitySamples;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v177 objects:v203 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v178;
    do
    {
      v14 = 0;
      do
      {
        if (*v178 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v177 objects:v203 count:16];
    }

    while (v12);
  }

  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v173 = 0u;
  v15 = self->_workouts;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v173 objects:v202 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v174;
    do
    {
      v19 = 0;
      do
      {
        if (*v174 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v173 objects:v202 count:16];
    }

    while (v17);
  }

  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v20 = self->_correlations;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v169 objects:v201 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v170;
    do
    {
      v24 = 0;
      do
      {
        if (*v170 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v169 objects:v201 count:16];
    }

    while (v22);
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v25 = self->_activityCaches;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v165 objects:v200 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v166;
    do
    {
      v29 = 0;
      do
      {
        if (*v166 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v165 objects:v200 count:16];
    }

    while (v27);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v30 = self->_binarySamples;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v161 objects:v199 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v162;
    do
    {
      v34 = 0;
      do
      {
        if (*v162 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v161 objects:v199 count:16];
    }

    while (v32);
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v35 = self->_deletedSamples;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v157 objects:v198 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v158;
    do
    {
      v39 = 0;
      do
      {
        if (*v158 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v157 objects:v198 count:16];
    }

    while (v37);
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v40 = self->_locationSeries;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v153 objects:v197 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v154;
    do
    {
      v44 = 0;
      do
      {
        if (*v154 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v153 objects:v197 count:16];
    }

    while (v42);
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v45 = self->_cdaDocumentSamples;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v149 objects:v196 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v150;
    do
    {
      v49 = 0;
      do
      {
        if (*v150 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteSubmessage();
        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v149 objects:v196 count:16];
    }

    while (v47);
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v50 = self->_fitnessFriendActivitySnapshots;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v145 objects:v195 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v146;
    do
    {
      v54 = 0;
      do
      {
        if (*v146 != v53)
        {
          objc_enumerationMutation(v50);
        }

        PBDataWriterWriteSubmessage();
        ++v54;
      }

      while (v52 != v54);
      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v145 objects:v195 count:16];
    }

    while (v52);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v55 = self->_fitnessFriendAchievements;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v141 objects:v194 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v142;
    do
    {
      v59 = 0;
      do
      {
        if (*v142 != v58)
        {
          objc_enumerationMutation(v55);
        }

        PBDataWriterWriteSubmessage();
        ++v59;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v141 objects:v194 count:16];
    }

    while (v57);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v60 = self->_fitnessFriendWorkouts;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v137 objects:v193 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v138;
    do
    {
      v64 = 0;
      do
      {
        if (*v138 != v63)
        {
          objc_enumerationMutation(v60);
        }

        PBDataWriterWriteSubmessage();
        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v137 objects:v193 count:16];
    }

    while (v62);
  }

  if (self->_generatedObjectCollection)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_provenance)
  {
    PBDataWriterWriteSubmessage();
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v65 = self->_sleepSchedules;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v133 objects:v192 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v134;
    do
    {
      v69 = 0;
      do
      {
        if (*v134 != v68)
        {
          objc_enumerationMutation(v65);
        }

        PBDataWriterWriteSubmessage();
        ++v69;
      }

      while (v67 != v69);
      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v133 objects:v192 count:16];
    }

    while (v67);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v70 = self->_ecgSamples;
  v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v129 objects:v191 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v130;
    do
    {
      v74 = 0;
      do
      {
        if (*v130 != v73)
        {
          objc_enumerationMutation(v70);
        }

        PBDataWriterWriteSubmessage();
        ++v74;
      }

      while (v72 != v74);
      v72 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v129 objects:v191 count:16];
    }

    while (v72);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v75 = self->_visionSamples;
  v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v125 objects:v190 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v126;
    do
    {
      v79 = 0;
      do
      {
        if (*v126 != v78)
        {
          objc_enumerationMutation(v75);
        }

        PBDataWriterWriteSubmessage();
        ++v79;
      }

      while (v77 != v79);
      v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v125 objects:v190 count:16];
    }

    while (v77);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v80 = self->_stateOfMindLogs;
  v81 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v121 objects:v189 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v122;
    do
    {
      v84 = 0;
      do
      {
        if (*v122 != v83)
        {
          objc_enumerationMutation(v80);
        }

        PBDataWriterWriteSubmessage();
        ++v84;
      }

      while (v82 != v84);
      v82 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v121 objects:v189 count:16];
    }

    while (v82);
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v85 = self->_scoredAssessmentSamples;
  v86 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v117 objects:v188 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v118;
    do
    {
      v89 = 0;
      do
      {
        if (*v118 != v88)
        {
          objc_enumerationMutation(v85);
        }

        PBDataWriterWriteSubmessage();
        ++v89;
      }

      while (v87 != v89);
      v87 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v117 objects:v188 count:16];
    }

    while (v87);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v90 = self->_workoutZones;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v113 objects:v187 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v114;
    do
    {
      v94 = 0;
      do
      {
        if (*v114 != v93)
        {
          objc_enumerationMutation(v90);
        }

        PBDataWriterWriteSubmessage();
        ++v94;
      }

      while (v92 != v94);
      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v113 objects:v187 count:16];
    }

    while (v92);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v95 = self->_activityGoalSchedules;
  v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v109 objects:v186 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v110;
    do
    {
      v99 = 0;
      do
      {
        if (*v110 != v98)
        {
          objc_enumerationMutation(v95);
        }

        PBDataWriterWriteSubmessage();
        ++v99;
      }

      while (v97 != v99);
      v97 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v109 objects:v186 count:16];
    }

    while (v97);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v100 = self->_pauseRingsSchedules;
  v101 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v105 objects:v185 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v106;
    do
    {
      v104 = 0;
      do
      {
        if (*v106 != v103)
        {
          objc_enumerationMutation(v100);
        }

        PBDataWriterWriteSubmessage();
        ++v104;
      }

      while (v102 != v104);
      v102 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v105 objects:v185 count:16];
    }

    while (v102);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_sourceBundleIdentifier)
  {
    [toCopy setSourceBundleIdentifier:?];
  }

  if (self->_source)
  {
    [toCopy setSource:?];
  }

  if ([(HDCodableObjectCollection *)self categorySamplesCount])
  {
    [toCopy clearCategorySamples];
    categorySamplesCount = [(HDCodableObjectCollection *)self categorySamplesCount];
    if (categorySamplesCount)
    {
      v5 = categorySamplesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableObjectCollection *)self categorySamplesAtIndex:i];
        [toCopy addCategorySamples:v7];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self quantitySamplesCount])
  {
    [toCopy clearQuantitySamples];
    quantitySamplesCount = [(HDCodableObjectCollection *)self quantitySamplesCount];
    if (quantitySamplesCount)
    {
      v9 = quantitySamplesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HDCodableObjectCollection *)self quantitySamplesAtIndex:j];
        [toCopy addQuantitySamples:v11];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self workoutsCount])
  {
    [toCopy clearWorkouts];
    workoutsCount = [(HDCodableObjectCollection *)self workoutsCount];
    if (workoutsCount)
    {
      v13 = workoutsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(HDCodableObjectCollection *)self workoutsAtIndex:k];
        [toCopy addWorkouts:v15];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self correlationsCount])
  {
    [toCopy clearCorrelations];
    correlationsCount = [(HDCodableObjectCollection *)self correlationsCount];
    if (correlationsCount)
    {
      v17 = correlationsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(HDCodableObjectCollection *)self correlationsAtIndex:m];
        [toCopy addCorrelations:v19];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self activityCachesCount])
  {
    [toCopy clearActivityCaches];
    activityCachesCount = [(HDCodableObjectCollection *)self activityCachesCount];
    if (activityCachesCount)
    {
      v21 = activityCachesCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(HDCodableObjectCollection *)self activityCachesAtIndex:n];
        [toCopy addActivityCaches:v23];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self binarySamplesCount])
  {
    [toCopy clearBinarySamples];
    binarySamplesCount = [(HDCodableObjectCollection *)self binarySamplesCount];
    if (binarySamplesCount)
    {
      v25 = binarySamplesCount;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(HDCodableObjectCollection *)self binarySamplesAtIndex:ii];
        [toCopy addBinarySamples:v27];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self deletedSamplesCount])
  {
    [toCopy clearDeletedSamples];
    deletedSamplesCount = [(HDCodableObjectCollection *)self deletedSamplesCount];
    if (deletedSamplesCount)
    {
      v29 = deletedSamplesCount;
      for (jj = 0; jj != v29; ++jj)
      {
        v31 = [(HDCodableObjectCollection *)self deletedSamplesAtIndex:jj];
        [toCopy addDeletedSamples:v31];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self locationSeriesCount])
  {
    [toCopy clearLocationSeries];
    locationSeriesCount = [(HDCodableObjectCollection *)self locationSeriesCount];
    if (locationSeriesCount)
    {
      v33 = locationSeriesCount;
      for (kk = 0; kk != v33; ++kk)
      {
        v35 = [(HDCodableObjectCollection *)self locationSeriesAtIndex:kk];
        [toCopy addLocationSeries:v35];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self cdaDocumentSamplesCount])
  {
    [toCopy clearCdaDocumentSamples];
    cdaDocumentSamplesCount = [(HDCodableObjectCollection *)self cdaDocumentSamplesCount];
    if (cdaDocumentSamplesCount)
    {
      v37 = cdaDocumentSamplesCount;
      for (mm = 0; mm != v37; ++mm)
      {
        v39 = [(HDCodableObjectCollection *)self cdaDocumentSamplesAtIndex:mm];
        [toCopy addCdaDocumentSamples:v39];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self fitnessFriendActivitySnapshotsCount])
  {
    [toCopy clearFitnessFriendActivitySnapshots];
    fitnessFriendActivitySnapshotsCount = [(HDCodableObjectCollection *)self fitnessFriendActivitySnapshotsCount];
    if (fitnessFriendActivitySnapshotsCount)
    {
      v41 = fitnessFriendActivitySnapshotsCount;
      for (nn = 0; nn != v41; ++nn)
      {
        v43 = [(HDCodableObjectCollection *)self fitnessFriendActivitySnapshotsAtIndex:nn];
        [toCopy addFitnessFriendActivitySnapshots:v43];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self fitnessFriendAchievementsCount])
  {
    [toCopy clearFitnessFriendAchievements];
    fitnessFriendAchievementsCount = [(HDCodableObjectCollection *)self fitnessFriendAchievementsCount];
    if (fitnessFriendAchievementsCount)
    {
      v45 = fitnessFriendAchievementsCount;
      for (i1 = 0; i1 != v45; ++i1)
      {
        v47 = [(HDCodableObjectCollection *)self fitnessFriendAchievementsAtIndex:i1];
        [toCopy addFitnessFriendAchievements:v47];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self fitnessFriendWorkoutsCount])
  {
    [toCopy clearFitnessFriendWorkouts];
    fitnessFriendWorkoutsCount = [(HDCodableObjectCollection *)self fitnessFriendWorkoutsCount];
    if (fitnessFriendWorkoutsCount)
    {
      v49 = fitnessFriendWorkoutsCount;
      for (i2 = 0; i2 != v49; ++i2)
      {
        v51 = [(HDCodableObjectCollection *)self fitnessFriendWorkoutsAtIndex:i2];
        [toCopy addFitnessFriendWorkouts:v51];
      }
    }
  }

  if (self->_generatedObjectCollection)
  {
    [toCopy setGeneratedObjectCollection:?];
  }

  if (self->_provenance)
  {
    [toCopy setProvenance:?];
  }

  if ([(HDCodableObjectCollection *)self sleepSchedulesCount])
  {
    [toCopy clearSleepSchedules];
    sleepSchedulesCount = [(HDCodableObjectCollection *)self sleepSchedulesCount];
    if (sleepSchedulesCount)
    {
      v53 = sleepSchedulesCount;
      for (i3 = 0; i3 != v53; ++i3)
      {
        v55 = [(HDCodableObjectCollection *)self sleepSchedulesAtIndex:i3];
        [toCopy addSleepSchedules:v55];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self ecgSamplesCount])
  {
    [toCopy clearEcgSamples];
    ecgSamplesCount = [(HDCodableObjectCollection *)self ecgSamplesCount];
    if (ecgSamplesCount)
    {
      v57 = ecgSamplesCount;
      for (i4 = 0; i4 != v57; ++i4)
      {
        v59 = [(HDCodableObjectCollection *)self ecgSamplesAtIndex:i4];
        [toCopy addEcgSamples:v59];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self visionSamplesCount])
  {
    [toCopy clearVisionSamples];
    visionSamplesCount = [(HDCodableObjectCollection *)self visionSamplesCount];
    if (visionSamplesCount)
    {
      v61 = visionSamplesCount;
      for (i5 = 0; i5 != v61; ++i5)
      {
        v63 = [(HDCodableObjectCollection *)self visionSamplesAtIndex:i5];
        [toCopy addVisionSamples:v63];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self stateOfMindLogsCount])
  {
    [toCopy clearStateOfMindLogs];
    stateOfMindLogsCount = [(HDCodableObjectCollection *)self stateOfMindLogsCount];
    if (stateOfMindLogsCount)
    {
      v65 = stateOfMindLogsCount;
      for (i6 = 0; i6 != v65; ++i6)
      {
        v67 = [(HDCodableObjectCollection *)self stateOfMindLogsAtIndex:i6];
        [toCopy addStateOfMindLogs:v67];
      }
    }
  }

  if (self->_syncIdentity)
  {
    [toCopy setSyncIdentity:?];
  }

  if ([(HDCodableObjectCollection *)self scoredAssessmentSamplesCount])
  {
    [toCopy clearScoredAssessmentSamples];
    scoredAssessmentSamplesCount = [(HDCodableObjectCollection *)self scoredAssessmentSamplesCount];
    if (scoredAssessmentSamplesCount)
    {
      v69 = scoredAssessmentSamplesCount;
      for (i7 = 0; i7 != v69; ++i7)
      {
        v71 = [(HDCodableObjectCollection *)self scoredAssessmentSamplesAtIndex:i7];
        [toCopy addScoredAssessmentSamples:v71];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self workoutZonesCount])
  {
    [toCopy clearWorkoutZones];
    workoutZonesCount = [(HDCodableObjectCollection *)self workoutZonesCount];
    if (workoutZonesCount)
    {
      v73 = workoutZonesCount;
      for (i8 = 0; i8 != v73; ++i8)
      {
        v75 = [(HDCodableObjectCollection *)self workoutZonesAtIndex:i8];
        [toCopy addWorkoutZones:v75];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self activityGoalSchedulesCount])
  {
    [toCopy clearActivityGoalSchedules];
    activityGoalSchedulesCount = [(HDCodableObjectCollection *)self activityGoalSchedulesCount];
    if (activityGoalSchedulesCount)
    {
      v77 = activityGoalSchedulesCount;
      for (i9 = 0; i9 != v77; ++i9)
      {
        v79 = [(HDCodableObjectCollection *)self activityGoalSchedulesAtIndex:i9];
        [toCopy addActivityGoalSchedules:v79];
      }
    }
  }

  if ([(HDCodableObjectCollection *)self pauseRingsSchedulesCount])
  {
    [toCopy clearPauseRingsSchedules];
    pauseRingsSchedulesCount = [(HDCodableObjectCollection *)self pauseRingsSchedulesCount];
    if (pauseRingsSchedulesCount)
    {
      v81 = pauseRingsSchedulesCount;
      for (i10 = 0; i10 != v81; ++i10)
      {
        v83 = [(HDCodableObjectCollection *)self pauseRingsSchedulesAtIndex:i10];
        [toCopy addPauseRingsSchedules:v83];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v237 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:zone];
  v7 = v5[20];
  v5[20] = v6;

  v8 = [(HDCodableSource *)self->_source copyWithZone:zone];
  v9 = v5[19];
  v5[19] = v8;

  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v10 = self->_categorySamples;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v213 objects:v236 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v214;
    do
    {
      v14 = 0;
      do
      {
        if (*v214 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v213 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addCategorySamples:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v213 objects:v236 count:16];
    }

    while (v12);
  }

  v212 = 0u;
  v211 = 0u;
  v210 = 0u;
  v209 = 0u;
  v16 = self->_quantitySamples;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v209 objects:v235 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v210;
    do
    {
      v20 = 0;
      do
      {
        if (*v210 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v209 + 1) + 8 * v20) copyWithZone:zone];
        [v5 addQuantitySamples:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v209 objects:v235 count:16];
    }

    while (v18);
  }

  v208 = 0u;
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v22 = self->_workouts;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v205 objects:v234 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v206;
    do
    {
      v26 = 0;
      do
      {
        if (*v206 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v205 + 1) + 8 * v26) copyWithZone:zone];
        [v5 addWorkouts:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v205 objects:v234 count:16];
    }

    while (v24);
  }

  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v28 = self->_correlations;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v201 objects:v233 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v202;
    do
    {
      v32 = 0;
      do
      {
        if (*v202 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v201 + 1) + 8 * v32) copyWithZone:zone];
        [v5 addCorrelations:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v201 objects:v233 count:16];
    }

    while (v30);
  }

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v34 = self->_activityCaches;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v197 objects:v232 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v198;
    do
    {
      v38 = 0;
      do
      {
        if (*v198 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v197 + 1) + 8 * v38) copyWithZone:zone];
        [v5 addActivityCaches:v39];

        ++v38;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v197 objects:v232 count:16];
    }

    while (v36);
  }

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v40 = self->_binarySamples;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v193 objects:v231 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v194;
    do
    {
      v44 = 0;
      do
      {
        if (*v194 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v193 + 1) + 8 * v44) copyWithZone:zone];
        [v5 addBinarySamples:v45];

        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v193 objects:v231 count:16];
    }

    while (v42);
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v46 = self->_deletedSamples;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v189 objects:v230 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v190;
    do
    {
      v50 = 0;
      do
      {
        if (*v190 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(*(&v189 + 1) + 8 * v50) copyWithZone:zone];
        [v5 addDeletedSamples:v51];

        ++v50;
      }

      while (v48 != v50);
      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v189 objects:v230 count:16];
    }

    while (v48);
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v52 = self->_locationSeries;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v185 objects:v229 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v186;
    do
    {
      v56 = 0;
      do
      {
        if (*v186 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [*(*(&v185 + 1) + 8 * v56) copyWithZone:zone];
        [v5 addLocationSeries:v57];

        ++v56;
      }

      while (v54 != v56);
      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v185 objects:v229 count:16];
    }

    while (v54);
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v58 = self->_cdaDocumentSamples;
  v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v181 objects:v228 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v182;
    do
    {
      v62 = 0;
      do
      {
        if (*v182 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [*(*(&v181 + 1) + 8 * v62) copyWithZone:zone];
        [v5 addCdaDocumentSamples:v63];

        ++v62;
      }

      while (v60 != v62);
      v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v181 objects:v228 count:16];
    }

    while (v60);
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v64 = self->_fitnessFriendActivitySnapshots;
  v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v177 objects:v227 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v178;
    do
    {
      v68 = 0;
      do
      {
        if (*v178 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [*(*(&v177 + 1) + 8 * v68) copyWithZone:zone];
        [v5 addFitnessFriendActivitySnapshots:v69];

        ++v68;
      }

      while (v66 != v68);
      v66 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v177 objects:v227 count:16];
    }

    while (v66);
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v70 = self->_fitnessFriendAchievements;
  v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v173 objects:v226 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v174;
    do
    {
      v74 = 0;
      do
      {
        if (*v174 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = [*(*(&v173 + 1) + 8 * v74) copyWithZone:zone];
        [v5 addFitnessFriendAchievements:v75];

        ++v74;
      }

      while (v72 != v74);
      v72 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v173 objects:v226 count:16];
    }

    while (v72);
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v76 = self->_fitnessFriendWorkouts;
  v77 = [(NSMutableArray *)v76 countByEnumeratingWithState:&v169 objects:v225 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v170;
    do
    {
      v80 = 0;
      do
      {
        if (*v170 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = [*(*(&v169 + 1) + 8 * v80) copyWithZone:zone];
        [v5 addFitnessFriendWorkouts:v81];

        ++v80;
      }

      while (v78 != v80);
      v78 = [(NSMutableArray *)v76 countByEnumeratingWithState:&v169 objects:v225 count:16];
    }

    while (v78);
  }

  v82 = [(HDCodableGeneratedObjectCollection *)self->_generatedObjectCollection copyWithZone:zone];
  v83 = v5[12];
  v5[12] = v82;

  v84 = [(HDCodableProvenance *)self->_provenance copyWithZone:zone];
  v85 = v5[15];
  v5[15] = v84;

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v86 = self->_sleepSchedules;
  v87 = [(NSMutableArray *)v86 countByEnumeratingWithState:&v165 objects:v224 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v166;
    do
    {
      v90 = 0;
      do
      {
        if (*v166 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = [*(*(&v165 + 1) + 8 * v90) copyWithZone:zone];
        [v5 addSleepSchedules:v91];

        ++v90;
      }

      while (v88 != v90);
      v88 = [(NSMutableArray *)v86 countByEnumeratingWithState:&v165 objects:v224 count:16];
    }

    while (v88);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v92 = self->_ecgSamples;
  v93 = [(NSMutableArray *)v92 countByEnumeratingWithState:&v161 objects:v223 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v162;
    do
    {
      v96 = 0;
      do
      {
        if (*v162 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = [*(*(&v161 + 1) + 8 * v96) copyWithZone:zone];
        [v5 addEcgSamples:v97];

        ++v96;
      }

      while (v94 != v96);
      v94 = [(NSMutableArray *)v92 countByEnumeratingWithState:&v161 objects:v223 count:16];
    }

    while (v94);
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v98 = self->_visionSamples;
  v99 = [(NSMutableArray *)v98 countByEnumeratingWithState:&v157 objects:v222 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v158;
    do
    {
      v102 = 0;
      do
      {
        if (*v158 != v101)
        {
          objc_enumerationMutation(v98);
        }

        v103 = [*(*(&v157 + 1) + 8 * v102) copyWithZone:zone];
        [v5 addVisionSamples:v103];

        ++v102;
      }

      while (v100 != v102);
      v100 = [(NSMutableArray *)v98 countByEnumeratingWithState:&v157 objects:v222 count:16];
    }

    while (v100);
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v104 = self->_stateOfMindLogs;
  v105 = [(NSMutableArray *)v104 countByEnumeratingWithState:&v153 objects:v221 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v154;
    do
    {
      v108 = 0;
      do
      {
        if (*v154 != v107)
        {
          objc_enumerationMutation(v104);
        }

        v109 = [*(*(&v153 + 1) + 8 * v108) copyWithZone:zone];
        [v5 addStateOfMindLogs:v109];

        ++v108;
      }

      while (v106 != v108);
      v106 = [(NSMutableArray *)v104 countByEnumeratingWithState:&v153 objects:v221 count:16];
    }

    while (v106);
  }

  v110 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v111 = v5[22];
  v5[22] = v110;

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v112 = self->_scoredAssessmentSamples;
  v113 = [(NSMutableArray *)v112 countByEnumeratingWithState:&v149 objects:v220 count:16];
  if (v113)
  {
    v114 = v113;
    v115 = *v150;
    do
    {
      v116 = 0;
      do
      {
        if (*v150 != v115)
        {
          objc_enumerationMutation(v112);
        }

        v117 = [*(*(&v149 + 1) + 8 * v116) copyWithZone:zone];
        [v5 addScoredAssessmentSamples:v117];

        ++v116;
      }

      while (v114 != v116);
      v114 = [(NSMutableArray *)v112 countByEnumeratingWithState:&v149 objects:v220 count:16];
    }

    while (v114);
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v118 = self->_workoutZones;
  v119 = [(NSMutableArray *)v118 countByEnumeratingWithState:&v145 objects:v219 count:16];
  if (v119)
  {
    v120 = v119;
    v121 = *v146;
    do
    {
      v122 = 0;
      do
      {
        if (*v146 != v121)
        {
          objc_enumerationMutation(v118);
        }

        v123 = [*(*(&v145 + 1) + 8 * v122) copyWithZone:zone];
        [v5 addWorkoutZones:v123];

        ++v122;
      }

      while (v120 != v122);
      v120 = [(NSMutableArray *)v118 countByEnumeratingWithState:&v145 objects:v219 count:16];
    }

    while (v120);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v124 = self->_activityGoalSchedules;
  v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v141 objects:v218 count:16];
  if (v125)
  {
    v126 = v125;
    v127 = *v142;
    do
    {
      v128 = 0;
      do
      {
        if (*v142 != v127)
        {
          objc_enumerationMutation(v124);
        }

        v129 = [*(*(&v141 + 1) + 8 * v128) copyWithZone:zone];
        [v5 addActivityGoalSchedules:v129];

        ++v128;
      }

      while (v126 != v128);
      v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v141 objects:v218 count:16];
    }

    while (v126);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v130 = self->_pauseRingsSchedules;
  v131 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v137 objects:v217 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v138;
    do
    {
      v134 = 0;
      do
      {
        if (*v138 != v133)
        {
          objc_enumerationMutation(v130);
        }

        v135 = [*(*(&v137 + 1) + 8 * v134) copyWithZone:{zone, v137}];
        [v5 addPauseRingsSchedules:v135];

        ++v134;
      }

      while (v132 != v134);
      v132 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v137 objects:v217 count:16];
    }

    while (v132);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()]
    && ((sourceBundleIdentifier = self->_sourceBundleIdentifier, !(sourceBundleIdentifier | equalCopy[20])) || [(NSString *)sourceBundleIdentifier isEqual:?])
    && ((source = self->_source, !(source | equalCopy[19])) || [(HDCodableSource *)source isEqual:?])
    && ((categorySamples = self->_categorySamples, !(categorySamples | equalCopy[4])) || [(NSMutableArray *)categorySamples isEqual:?])
    && ((quantitySamples = self->_quantitySamples, !(quantitySamples | equalCopy[16])) || [(NSMutableArray *)quantitySamples isEqual:?])
    && ((workouts = self->_workouts, !(workouts | equalCopy[25])) || [(NSMutableArray *)workouts isEqual:?])
    && ((correlations = self->_correlations, !(correlations | equalCopy[6])) || [(NSMutableArray *)correlations isEqual:?])
    && ((activityCaches = self->_activityCaches, !(activityCaches | equalCopy[1])) || [(NSMutableArray *)activityCaches isEqual:?])
    && ((binarySamples = self->_binarySamples, !(binarySamples | equalCopy[3])) || [(NSMutableArray *)binarySamples isEqual:?])
    && ((deletedSamples = self->_deletedSamples, !(deletedSamples | equalCopy[7])) || [(NSMutableArray *)deletedSamples isEqual:?])
    && ((locationSeries = self->_locationSeries, !(locationSeries | equalCopy[13])) || [(NSMutableArray *)locationSeries isEqual:?])
    && ((cdaDocumentSamples = self->_cdaDocumentSamples, !(cdaDocumentSamples | equalCopy[5])) || [(NSMutableArray *)cdaDocumentSamples isEqual:?])
    && ((fitnessFriendActivitySnapshots = self->_fitnessFriendActivitySnapshots, !(fitnessFriendActivitySnapshots | equalCopy[10])) || [(NSMutableArray *)fitnessFriendActivitySnapshots isEqual:?])
    && ((fitnessFriendAchievements = self->_fitnessFriendAchievements, !(fitnessFriendAchievements | equalCopy[9])) || [(NSMutableArray *)fitnessFriendAchievements isEqual:?])
    && ((fitnessFriendWorkouts = self->_fitnessFriendWorkouts, !(fitnessFriendWorkouts | equalCopy[11])) || [(NSMutableArray *)fitnessFriendWorkouts isEqual:?])
    && ((generatedObjectCollection = self->_generatedObjectCollection, !(generatedObjectCollection | equalCopy[12])) || [(HDCodableGeneratedObjectCollection *)generatedObjectCollection isEqual:?])
    && ((provenance = self->_provenance, !(provenance | equalCopy[15])) || [(HDCodableProvenance *)provenance isEqual:?])
    && ((sleepSchedules = self->_sleepSchedules, !(sleepSchedules | equalCopy[18])) || [(NSMutableArray *)sleepSchedules isEqual:?])
    && ((ecgSamples = self->_ecgSamples, !(ecgSamples | equalCopy[8])) || [(NSMutableArray *)ecgSamples isEqual:?])
    && ((visionSamples = self->_visionSamples, !(visionSamples | equalCopy[23])) || [(NSMutableArray *)visionSamples isEqual:?])
    && ((stateOfMindLogs = self->_stateOfMindLogs, !(stateOfMindLogs | equalCopy[21])) || [(NSMutableArray *)stateOfMindLogs isEqual:?])
    && ((syncIdentity = self->_syncIdentity, !(syncIdentity | equalCopy[22])) || [(HDCodableSyncIdentity *)syncIdentity isEqual:?])
    && ((scoredAssessmentSamples = self->_scoredAssessmentSamples, !(scoredAssessmentSamples | equalCopy[17])) || [(NSMutableArray *)scoredAssessmentSamples isEqual:?])
    && ((workoutZones = self->_workoutZones, !(workoutZones | equalCopy[24])) || [(NSMutableArray *)workoutZones isEqual:?])
    && ((activityGoalSchedules = self->_activityGoalSchedules, !(activityGoalSchedules | equalCopy[2])) || [(NSMutableArray *)activityGoalSchedules isEqual:?]))
  {
    pauseRingsSchedules = self->_pauseRingsSchedules;
    if (pauseRingsSchedules | equalCopy[14])
    {
      v30 = [(NSMutableArray *)pauseRingsSchedules isEqual:?];
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceBundleIdentifier hash];
  v4 = [(HDCodableSource *)self->_source hash]^ v3;
  v5 = [(NSMutableArray *)self->_categorySamples hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_quantitySamples hash];
  v7 = [(NSMutableArray *)self->_workouts hash];
  v8 = v7 ^ [(NSMutableArray *)self->_correlations hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_activityCaches hash];
  v10 = [(NSMutableArray *)self->_binarySamples hash];
  v11 = v10 ^ [(NSMutableArray *)self->_deletedSamples hash];
  v12 = v11 ^ [(NSMutableArray *)self->_locationSeries hash];
  v13 = v9 ^ v12 ^ [(NSMutableArray *)self->_cdaDocumentSamples hash];
  v14 = [(NSMutableArray *)self->_fitnessFriendActivitySnapshots hash];
  v15 = v14 ^ [(NSMutableArray *)self->_fitnessFriendAchievements hash];
  v16 = v15 ^ [(NSMutableArray *)self->_fitnessFriendWorkouts hash];
  v17 = v16 ^ [(HDCodableGeneratedObjectCollection *)self->_generatedObjectCollection hash];
  v18 = v13 ^ v17 ^ [(HDCodableProvenance *)self->_provenance hash];
  v19 = [(NSMutableArray *)self->_sleepSchedules hash];
  v20 = v19 ^ [(NSMutableArray *)self->_ecgSamples hash];
  v21 = v20 ^ [(NSMutableArray *)self->_visionSamples hash];
  v22 = v21 ^ [(NSMutableArray *)self->_stateOfMindLogs hash];
  v23 = v22 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  v24 = v18 ^ v23 ^ [(NSMutableArray *)self->_scoredAssessmentSamples hash];
  v25 = [(NSMutableArray *)self->_workoutZones hash];
  v26 = v25 ^ [(NSMutableArray *)self->_activityGoalSchedules hash];
  return v24 ^ v26 ^ [(NSMutableArray *)self->_pauseRingsSchedules hash];
}

- (void)mergeFrom:(id)from
{
  v213 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 20))
  {
    [(HDCodableObjectCollection *)self setSourceBundleIdentifier:?];
  }

  source = self->_source;
  v6 = *(fromCopy + 19);
  if (source)
  {
    if (v6)
    {
      [(HDCodableSource *)source mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableObjectCollection *)self setSource:?];
  }

  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v189 objects:v212 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v190;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v190 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDCodableObjectCollection *)self addCategorySamples:*(*(&v189 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v189 objects:v212 count:16];
    }

    while (v9);
  }

  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v12 = *(fromCopy + 16);
  v13 = [v12 countByEnumeratingWithState:&v185 objects:v211 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v186;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v186 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HDCodableObjectCollection *)self addQuantitySamples:*(*(&v185 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v185 objects:v211 count:16];
    }

    while (v14);
  }

  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v17 = *(fromCopy + 25);
  v18 = [v17 countByEnumeratingWithState:&v181 objects:v210 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v182;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v182 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(HDCodableObjectCollection *)self addWorkouts:*(*(&v181 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v181 objects:v210 count:16];
    }

    while (v19);
  }

  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v22 = *(fromCopy + 6);
  v23 = [v22 countByEnumeratingWithState:&v177 objects:v209 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v178;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v178 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(HDCodableObjectCollection *)self addCorrelations:*(*(&v177 + 1) + 8 * m)];
      }

      v24 = [v22 countByEnumeratingWithState:&v177 objects:v209 count:16];
    }

    while (v24);
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v27 = *(fromCopy + 1);
  v28 = [v27 countByEnumeratingWithState:&v173 objects:v208 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v174;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v174 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(HDCodableObjectCollection *)self addActivityCaches:*(*(&v173 + 1) + 8 * n)];
      }

      v29 = [v27 countByEnumeratingWithState:&v173 objects:v208 count:16];
    }

    while (v29);
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v32 = *(fromCopy + 3);
  v33 = [v32 countByEnumeratingWithState:&v169 objects:v207 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v170;
    do
    {
      for (ii = 0; ii != v34; ++ii)
      {
        if (*v170 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [(HDCodableObjectCollection *)self addBinarySamples:*(*(&v169 + 1) + 8 * ii)];
      }

      v34 = [v32 countByEnumeratingWithState:&v169 objects:v207 count:16];
    }

    while (v34);
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v37 = *(fromCopy + 7);
  v38 = [v37 countByEnumeratingWithState:&v165 objects:v206 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v166;
    do
    {
      for (jj = 0; jj != v39; ++jj)
      {
        if (*v166 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [(HDCodableObjectCollection *)self addDeletedSamples:*(*(&v165 + 1) + 8 * jj)];
      }

      v39 = [v37 countByEnumeratingWithState:&v165 objects:v206 count:16];
    }

    while (v39);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v42 = *(fromCopy + 13);
  v43 = [v42 countByEnumeratingWithState:&v161 objects:v205 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v162;
    do
    {
      for (kk = 0; kk != v44; ++kk)
      {
        if (*v162 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [(HDCodableObjectCollection *)self addLocationSeries:*(*(&v161 + 1) + 8 * kk)];
      }

      v44 = [v42 countByEnumeratingWithState:&v161 objects:v205 count:16];
    }

    while (v44);
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v47 = *(fromCopy + 5);
  v48 = [v47 countByEnumeratingWithState:&v157 objects:v204 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v158;
    do
    {
      for (mm = 0; mm != v49; ++mm)
      {
        if (*v158 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [(HDCodableObjectCollection *)self addCdaDocumentSamples:*(*(&v157 + 1) + 8 * mm)];
      }

      v49 = [v47 countByEnumeratingWithState:&v157 objects:v204 count:16];
    }

    while (v49);
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v52 = *(fromCopy + 10);
  v53 = [v52 countByEnumeratingWithState:&v153 objects:v203 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v154;
    do
    {
      for (nn = 0; nn != v54; ++nn)
      {
        if (*v154 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [(HDCodableObjectCollection *)self addFitnessFriendActivitySnapshots:*(*(&v153 + 1) + 8 * nn)];
      }

      v54 = [v52 countByEnumeratingWithState:&v153 objects:v203 count:16];
    }

    while (v54);
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v57 = *(fromCopy + 9);
  v58 = [v57 countByEnumeratingWithState:&v149 objects:v202 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v150;
    do
    {
      for (i1 = 0; i1 != v59; ++i1)
      {
        if (*v150 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [(HDCodableObjectCollection *)self addFitnessFriendAchievements:*(*(&v149 + 1) + 8 * i1)];
      }

      v59 = [v57 countByEnumeratingWithState:&v149 objects:v202 count:16];
    }

    while (v59);
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v62 = *(fromCopy + 11);
  v63 = [v62 countByEnumeratingWithState:&v145 objects:v201 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v146;
    do
    {
      for (i2 = 0; i2 != v64; ++i2)
      {
        if (*v146 != v65)
        {
          objc_enumerationMutation(v62);
        }

        [(HDCodableObjectCollection *)self addFitnessFriendWorkouts:*(*(&v145 + 1) + 8 * i2)];
      }

      v64 = [v62 countByEnumeratingWithState:&v145 objects:v201 count:16];
    }

    while (v64);
  }

  generatedObjectCollection = self->_generatedObjectCollection;
  v68 = *(fromCopy + 12);
  if (generatedObjectCollection)
  {
    if (v68)
    {
      [(HDCodableGeneratedObjectCollection *)generatedObjectCollection mergeFrom:?];
    }
  }

  else if (v68)
  {
    [(HDCodableObjectCollection *)self setGeneratedObjectCollection:?];
  }

  provenance = self->_provenance;
  v70 = *(fromCopy + 15);
  if (provenance)
  {
    if (v70)
    {
      [(HDCodableProvenance *)provenance mergeFrom:?];
    }
  }

  else if (v70)
  {
    [(HDCodableObjectCollection *)self setProvenance:?];
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v71 = *(fromCopy + 18);
  v72 = [v71 countByEnumeratingWithState:&v141 objects:v200 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v142;
    do
    {
      for (i3 = 0; i3 != v73; ++i3)
      {
        if (*v142 != v74)
        {
          objc_enumerationMutation(v71);
        }

        [(HDCodableObjectCollection *)self addSleepSchedules:*(*(&v141 + 1) + 8 * i3)];
      }

      v73 = [v71 countByEnumeratingWithState:&v141 objects:v200 count:16];
    }

    while (v73);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v76 = *(fromCopy + 8);
  v77 = [v76 countByEnumeratingWithState:&v137 objects:v199 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v138;
    do
    {
      for (i4 = 0; i4 != v78; ++i4)
      {
        if (*v138 != v79)
        {
          objc_enumerationMutation(v76);
        }

        [(HDCodableObjectCollection *)self addEcgSamples:*(*(&v137 + 1) + 8 * i4)];
      }

      v78 = [v76 countByEnumeratingWithState:&v137 objects:v199 count:16];
    }

    while (v78);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v81 = *(fromCopy + 23);
  v82 = [v81 countByEnumeratingWithState:&v133 objects:v198 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v134;
    do
    {
      for (i5 = 0; i5 != v83; ++i5)
      {
        if (*v134 != v84)
        {
          objc_enumerationMutation(v81);
        }

        [(HDCodableObjectCollection *)self addVisionSamples:*(*(&v133 + 1) + 8 * i5)];
      }

      v83 = [v81 countByEnumeratingWithState:&v133 objects:v198 count:16];
    }

    while (v83);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v86 = *(fromCopy + 21);
  v87 = [v86 countByEnumeratingWithState:&v129 objects:v197 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v130;
    do
    {
      for (i6 = 0; i6 != v88; ++i6)
      {
        if (*v130 != v89)
        {
          objc_enumerationMutation(v86);
        }

        [(HDCodableObjectCollection *)self addStateOfMindLogs:*(*(&v129 + 1) + 8 * i6)];
      }

      v88 = [v86 countByEnumeratingWithState:&v129 objects:v197 count:16];
    }

    while (v88);
  }

  syncIdentity = self->_syncIdentity;
  v92 = *(fromCopy + 22);
  if (syncIdentity)
  {
    if (v92)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v92)
  {
    [(HDCodableObjectCollection *)self setSyncIdentity:?];
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v93 = *(fromCopy + 17);
  v94 = [v93 countByEnumeratingWithState:&v125 objects:v196 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v126;
    do
    {
      for (i7 = 0; i7 != v95; ++i7)
      {
        if (*v126 != v96)
        {
          objc_enumerationMutation(v93);
        }

        [(HDCodableObjectCollection *)self addScoredAssessmentSamples:*(*(&v125 + 1) + 8 * i7)];
      }

      v95 = [v93 countByEnumeratingWithState:&v125 objects:v196 count:16];
    }

    while (v95);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v98 = *(fromCopy + 24);
  v99 = [v98 countByEnumeratingWithState:&v121 objects:v195 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v122;
    do
    {
      for (i8 = 0; i8 != v100; ++i8)
      {
        if (*v122 != v101)
        {
          objc_enumerationMutation(v98);
        }

        [(HDCodableObjectCollection *)self addWorkoutZones:*(*(&v121 + 1) + 8 * i8)];
      }

      v100 = [v98 countByEnumeratingWithState:&v121 objects:v195 count:16];
    }

    while (v100);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v103 = *(fromCopy + 2);
  v104 = [v103 countByEnumeratingWithState:&v117 objects:v194 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v118;
    do
    {
      for (i9 = 0; i9 != v105; ++i9)
      {
        if (*v118 != v106)
        {
          objc_enumerationMutation(v103);
        }

        [(HDCodableObjectCollection *)self addActivityGoalSchedules:*(*(&v117 + 1) + 8 * i9)];
      }

      v105 = [v103 countByEnumeratingWithState:&v117 objects:v194 count:16];
    }

    while (v105);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v108 = *(fromCopy + 14);
  v109 = [v108 countByEnumeratingWithState:&v113 objects:v193 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v114;
    do
    {
      for (i10 = 0; i10 != v110; ++i10)
      {
        if (*v114 != v111)
        {
          objc_enumerationMutation(v108);
        }

        [(HDCodableObjectCollection *)self addPauseRingsSchedules:*(*(&v113 + 1) + 8 * i10), v113];
      }

      v110 = [v108 countByEnumeratingWithState:&v113 objects:v193 count:16];
    }

    while (v110);
  }
}

- (void)addMedicationDoseEvent:(id)event
{
  eventCopy = event;
  generatedObjectCollection = [(HDCodableObjectCollection *)self generatedObjectCollection];

  if (!generatedObjectCollection)
  {
    v6 = objc_alloc_init(HDCodableGeneratedObjectCollection);
    [(HDCodableObjectCollection *)self setGeneratedObjectCollection:v6];
  }

  generatedObjectCollection2 = [(HDCodableObjectCollection *)self generatedObjectCollection];
  [generatedObjectCollection2 addMedicationDoseEvent:eventCopy];
}

- (BOOL)unitTest_isEquivalentToObjectCollection:(id)collection
{
  v33[19] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (!collectionCopy)
  {
    goto LABEL_28;
  }

  source = self->_source;
  v7 = *(collectionCopy + 19);
  if (source != v7 && (!v7 || ![(HDCodableSource *)source isEqual:?]))
  {
    goto LABEL_28;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  v9 = *(collectionCopy + 20);
  if (sourceBundleIdentifier != v9 && (!v9 || ![(NSString *)sourceBundleIdentifier isEqual:?]))
  {
    goto LABEL_28;
  }

  provenance = self->_provenance;
  v11 = *(collectionCopy + 15);
  if (provenance != v11 && (!v11 || ![(HDCodableProvenance *)provenance isEqual:?]))
  {
    goto LABEL_28;
  }

  generatedObjectCollection = self->_generatedObjectCollection;
  v13 = generatedObjectCollection;
  if (!generatedObjectCollection)
  {
    generatedObjectCollection = [collectionCopy generatedObjectCollection];
    if (!generatedObjectCollection)
    {
      goto LABEL_16;
    }

    v3 = generatedObjectCollection;
    v13 = self->_generatedObjectCollection;
  }

  generatedObjectCollection2 = [collectionCopy generatedObjectCollection];
  v16 = [(HDCodableGeneratedObjectCollection *)v13 unitTest_isEquivalentToGeneratedObjectCollection:generatedObjectCollection2];

  if (generatedObjectCollection)
  {
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_28:
    v18 = 0;
    goto LABEL_29;
  }

  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_16:
  v33[0] = self->_categorySamples;
  v33[1] = self->_quantitySamples;
  v33[2] = self->_workouts;
  v33[3] = self->_correlations;
  v33[4] = self->_activityCaches;
  v33[5] = self->_activityGoalSchedules;
  v33[6] = self->_pauseRingsSchedules;
  v33[7] = self->_binarySamples;
  v33[8] = self->_deletedSamples;
  v33[9] = self->_locationSeries;
  v33[10] = self->_cdaDocumentSamples;
  v33[11] = self->_fitnessFriendAchievements;
  v33[12] = self->_fitnessFriendActivitySnapshots;
  v33[13] = self->_fitnessFriendWorkouts;
  v33[14] = self->_ecgSamples;
  v33[15] = self->_sleepSchedules;
  v33[16] = self->_visionSamples;
  v33[17] = self->_stateOfMindLogs;
  v33[18] = self->_scoredAssessmentSamples;
  v32[0] = *(collectionCopy + 4);
  v32[1] = *(collectionCopy + 16);
  v32[2] = *(collectionCopy + 25);
  v32[3] = *(collectionCopy + 6);
  v32[4] = *(collectionCopy + 1);
  v32[5] = *(collectionCopy + 2);
  v32[6] = *(collectionCopy + 14);
  v32[7] = *(collectionCopy + 3);
  v32[8] = *(collectionCopy + 7);
  v32[9] = *(collectionCopy + 13);
  v32[10] = *(collectionCopy + 5);
  v32[11] = *(collectionCopy + 9);
  v32[12] = *(collectionCopy + 10);
  v32[13] = *(collectionCopy + 11);
  v32[14] = *(collectionCopy + 8);
  v32[15] = *(collectionCopy + 18);
  v32[16] = *(collectionCopy + 23);
  v32[17] = *(collectionCopy + 21);
  v17 = 0;
  v18 = 0;
  v32[18] = *(collectionCopy + 17);
  v19 = MEMORY[0x277CBEBF8];
  while (1)
  {
    v20 = v33[v17];
    v21 = v32[v17];
    if (v20 != v21)
    {
      v22 = objc_alloc(MEMORY[0x277CBEB98]);
      v23 = v20 ? v20 : v19;
      v24 = [v22 initWithArray:v23];
      v25 = objc_alloc(MEMORY[0x277CBEB98]);
      v26 = v21 ? v21 : v19;
      v27 = [v25 initWithArray:v26];
      v28 = [v24 isEqualToSet:v27];

      if (!v28)
      {
        break;
      }
    }

    v18 = v17++ > 0x11;
    if (v17 == 19)
    {
      v18 = 1;
      goto LABEL_31;
    }
  }

LABEL_31:
  for (i = 18; i != -1; --i)
  {
  }

  for (j = 18; j != -1; --j)
  {
  }

LABEL_29:

  return v18;
}

@end