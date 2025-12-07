@interface HDRaceRouteLocationSeriesEntity
+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)identifier transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateRoutePointsForSeries:(int64_t)series timestampAnchor:(double)anchor limit:(unint64_t)limit startDuration:(double)duration finishDuration:(double)finishDuration transaction:(id)transaction error:(id *)error handler:(id)self0;
+ (BOOL)insertCodableRoutePoints:(id)points seriesKey:(int64_t)key transaction:(id)transaction error:(id *)error;
+ (const)columnDefinitionsWithCount:(unint64_t *)count;
+ (id)_allEntityProperties;
+ (id)_maxSeriesIdentifierWithDatabase:(uint64_t)database error:;
+ (id)createRoutePointsFromWorkout:(id)workout transaction:(id)transaction profile:(id)profile error:(id *)error;
+ (id)createTableSQLWithBehavior:(id)behavior;
+ (id)indicesWithBehavior:(id)behavior;
+ (id)insertCodableRoutePoints:(id)points transaction:(id)transaction error:(id *)error;
+ (id)primaryKeyColumns;
+ (id)triggersWithBehavior:(id)behavior;
+ (uint64_t)_insertRoutePoint:(uint64_t)point seriesIdentifier:(void *)identifier database:(uint64_t)database error:;
@end

@implementation HDRaceRouteLocationSeriesEntity

+ (id)createRoutePointsFromWorkout:(id)workout transaction:(id)transaction profile:(id)profile error:(id *)error
{
  v134[1] = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  transactionCopy = transaction;
  profileCopy = profile;
  v67 = transactionCopy;
  v11 = [transactionCopy databaseForEntityClass:self];
  v63 = v11;
  v12 = [(HDRaceRouteLocationSeriesEntity *)self _maxSeriesIdentifierWithDatabase:v11 error:error];
  v62 = v12;
  if (v12)
  {
    longLongValue = [v12 longLongValue];
    v14 = workoutCopy;
    v66 = v11;
    objc_opt_self();
    v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = objc_alloc_init(MEMORY[0x277D10B80]);
    workoutRouteType = [MEMORY[0x277CCD920] workoutRouteType];
    v17 = HDSampleEntityPredicateForDataType(workoutRouteType);

    v18 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject([v14 persistentID]);
    v19 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v17 otherPredicate:v18];
    [v15 setPredicate:v19];

    [v15 setEntityClass:objc_opt_class()];
    v20 = MEMORY[0x277D10B68];
    objc_opt_class();
    v21 = [v20 orderingTermWithProperty:? entityClass:? ascending:?];
    v55 = longLongValue;
    v132[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:1];
    [v15 setOrderingTerms:v22];

    v23 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v66 descriptor:v15];
    v126 = @"hfd_key";
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = __84__HDRaceRouteLocationSeriesEntity__routeSeriesIdentifiersForWorkout_database_error___block_invoke;
    v112 = &unk_278615A48;
    v25 = v60;
    v113 = v25;
    LODWORD(v19) = [v23 enumerateProperties:v24 error:error enumerationHandler:&v109];

    if (v19)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v61 = v26;

    if (v61)
    {
      v56 = [v14 totalDistanceInCanonicalUnitWithTransaction:v67 error:error];
      if (v56)
      {
        v54 = [v14 workoutDurationWithTransaction:v67 error:error];
        if (v54)
        {
          v52 = [v14 workoutStartDateWithTransaction:v67 error:error];
          if (v52)
          {
            v51 = [v14 mainWorkoutActivityTypeWithTransaction:v67 error:error];
            if (v51 && ([MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "persistentID")}], v27 = objc_claimAutoreleasedReturnValue(), +[HDWorkoutEventEntity workoutEventsWithOwnerID:database:error:](HDWorkoutEventEntity, "workoutEventsWithOwnerID:database:error:", v27, v66, error), v28 = objc_claimAutoreleasedReturnValue(), v27, v28))
            {
              v29 = [v28 hk_filter:&__block_literal_global_17];
              v58 = [v29 sortedArrayUsingComparator:&__block_literal_global_317_1];

              [v51 integerValue];
              v57 = _HKWorkoutDistanceTypeForActivityType();
              v59 = [HDSampleEntity entityEnumeratorWithType:"entityEnumeratorWithType:profile:" profile:?];
              v30 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
              v134[0] = v30;
              v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:1];
              [v59 setOrderingTerms:v31];

              v50 = HDSampleEntityPredicateForDataType(v57);
              v49 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject([v14 persistentID]);
              v32 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v50 otherPredicate:v49];
              [v59 setPredicate:v32];

              v121 = 0;
              v122 = &v121;
              v123 = 0x2020000000;
              v124 = 0;
              v132[0] = 0;
              v132[1] = v132;
              v132[2] = 0x3032000000;
              v132[3] = __Block_byref_object_copy__17;
              v132[4] = __Block_byref_object_dispose__17;
              v133 = v52;
              v120[0] = 0;
              v120[1] = v120;
              v120[2] = 0x2020000000;
              v120[3] = 0;
              [v54 doubleValue];
              v34 = v33;
              objc_opt_self();
              v35 = fmax(ceil(v34 / 2.5), 1.0);
              if (v35 >= 0x1388)
              {
                v36 = 5000;
              }

              else
              {
                v36 = v35;
              }

              v109 = 0;
              v110 = &v109;
              v111 = 0x6012000000;
              v112 = __Block_byref_object_copy__323;
              v113 = __Block_byref_object_dispose__324;
              v114 = &unk_22929BC4D;
              v115 = v36;
              v116 = 0;
              __src = 0u;
              v118 = 0u;
              v119 = 0;
              if (v35)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v36);
              }

              *(&v118 + 1) = 0;
              v126 = 0;
              v127 = &v126;
              v128 = 0x3032000000;
              v129 = __Block_byref_object_copy__17;
              v130 = __Block_byref_object_dispose__17;
              v108[0] = MEMORY[0x277D85DD0];
              v108[1] = 3221225472;
              v108[2] = __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_325;
              v108[3] = &unk_278615980;
              v108[4] = v132;
              v131 = [v58 hk_firstObjectPassingTest:v108];
              v106[0] = 0;
              v106[1] = v106;
              v106[2] = 0x3032000000;
              v106[3] = __Block_byref_object_copy__17;
              v106[4] = __Block_byref_object_dispose__17;
              dateInterval = [(__CFString *)v127[5] dateInterval];
              endDate = [dateInterval endDate];

              v102 = 0;
              v103 = &v102;
              v104 = 0x2020000000;
              v105 = [v58 indexOfObject:v127[5]];
              v100[0] = 0;
              v100[1] = v100;
              v100[2] = 0x2020000000;
              v39 = v103[3];
              v101 = v39 < [v58 count];
              v98[0] = 0;
              v98[1] = v98;
              v98[2] = 0x2020000000;
              v99 = 1;
              v97[0] = 0;
              v97[1] = v97;
              v97[2] = 0x2020000000;
              v97[3] = 0;
              v93 = 0u;
              v94 = 0u;
              v95 = 0u;
              v96 = 0u;
              obj = v61;
              v40 = [obj countByEnumeratingWithState:&v93 objects:v125 count:16];
              if (v40)
              {
                v41 = *v94;
                while (2)
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (*v94 != v41)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v43 = *(*(&v93 + 1) + 8 * i);
                    v87 = 0;
                    v88 = &v87;
                    v89 = 0x3032000000;
                    v90 = __Block_byref_object_copy__17;
                    v91 = __Block_byref_object_dispose__17;
                    v92 = 0;
                    v68[0] = MEMORY[0x277D85DD0];
                    v68[1] = 3221225472;
                    v68[2] = __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_2_327;
                    v68[3] = &unk_2786159D0;
                    v74 = v132;
                    selfCopy = self;
                    v69 = v59;
                    v70 = v57;
                    v75 = &v109;
                    v71 = v67;
                    v76 = &v87;
                    v77 = v120;
                    v78 = v97;
                    v79 = v100;
                    v80 = v106;
                    v81 = v98;
                    v82 = &v126;
                    v83 = &v102;
                    v72 = v58;
                    v84 = &v121;
                    v86 = v55 + 1;
                    v73 = v66;
                    v44 = [HDLocationSeriesSampleEntity enumerateLocationDataInDatabase:v73 HFDKey:v43 error:error handler:v68];
                    v45 = v88[5];
                    v46 = v45;
                    if (v45)
                    {
                      if (error)
                      {
                        v47 = v45;
                        *error = v46;
                      }

                      else
                      {
                        _HKLogDroppedError();
                      }
                    }

                    _Block_object_dispose(&v87, 8);
                    if (!v44)
                    {

                      v37 = 0;
                      goto LABEL_39;
                    }
                  }

                  v40 = [obj countByEnumeratingWithState:&v93 objects:v125 count:16];
                  if (v40)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (*(v122 + 24) == 1)
              {
                [MEMORY[0x277CCABB0] numberWithLongLong:v55 + 1];
              }

              else
              {
                [MEMORY[0x277CCABB0] numberWithLongLong:0];
              }
              v37 = ;
LABEL_39:
              _Block_object_dispose(v97, 8);
              _Block_object_dispose(v98, 8);
              _Block_object_dispose(v100, 8);
              _Block_object_dispose(&v102, 8);
              _Block_object_dispose(v106, 8);

              _Block_object_dispose(&v126, 8);
              _Block_object_dispose(&v109, 8);
              if (__src)
              {
                *(&__src + 1) = __src;
                operator delete(__src);
              }

              _Block_object_dispose(v120, 8);
              _Block_object_dispose(v132, 8);

              _Block_object_dispose(&v121, 8);
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v37 = 0;
          }
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

+ (id)_maxSeriesIdentifierWithDatabase:(uint64_t)database error:
{
  v4 = a2;
  v5 = objc_opt_self();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__HDRaceRouteLocationSeriesEntity__maxSeriesIdentifierWithDatabase_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = v5;
  v6 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HDRaceRouteLocationSeriesEntity__maxSeriesIdentifierWithDatabase_error___block_invoke_2;
  v9[3] = &unk_278615530;
  v9[4] = &v11;
  if ([v4 executeCachedStatementForKey:&+[HDRaceRouteLocationSeriesEntity _maxSeriesIdentifierWithDatabase:error:]::HDRaceRouteLocationSeriesEntityCacheKeyMaxIdentifier error:database SQLGenerator:v6 bindingHandler:0 enumerationHandler:v9])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v12[3]];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

BOOL __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 1 || objc_msgSend(v2, "type") == 2;

  return v3;
}

uint64_t __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 dateInterval];
  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_325(uint64_t a1, void *a2)
{
  v3 = [a2 dateInterval];
  v4 = [v3 endDate];
  v5 = [v4 hk_isAfterOrEqualToDate:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

uint64_t __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_2_327(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 timestamp];
  if (([v4 hk_isBeforeDate:*(*(*(a1 + 72) + 8) + 40)] & 1) == 0)
  {
    v61 = v4;
    v62 = v3;
    v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(*(*(a1 + 72) + 8) + 40) endDate:v4];
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v4);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 80) + 8);
    v10 = *(*(a1 + 88) + 8);
    v12 = *(v10 + 40);
    v11 = (v10 + 40);
    v13 = *(a1 + 48);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v67 = __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_3;
    v68 = &unk_2786159A8;
    v69 = *(a1 + 96);
    obj = v12;
    v64 = v7;
    v14 = v6;
    v60 = v8;
    v63 = v13;
    v15 = v66;
    objc_opt_self();
    v16 = &v77;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v17 = *(v9 + 80);
    if (v17 == *(v9 + 64))
    {
      v18 = v64;
LABEL_9:
      if (*(v9 + 52) != 1)
      {
        v20 = [v18 predicate];
        v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v9 + 88)];
        v59 = v21;
        if (v21)
        {
          v22 = HDSampleEntityPredicateForStartDate(5, v21);
          v23 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v20 otherPredicate:v22];
          [v18 setPredicate:v23];
        }

        v24 = *(v9 + 56);
        *(v9 + 64) = v24;
        *(v9 + 80) = v24;
        v25 = [MEMORY[0x277CCDAB0] meterUnit];
        v26 = *(v9 + 48);
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __124__HDRaceRouteLocationSeriesEntity__distanceWithEnumerator_dateInterval_distanceType_sampleBuffer_transaction_error_handler___block_invoke;
        v71[3] = &unk_278615A70;
        v71[4] = v25;
        v72 = v14;
        v73 = &v77;
        v74 = v9 + 56;
        v75 = v26;
        v27 = [v64 enumerateInTransaction:v63 error:&obj handler:v71];
        [v64 setPredicate:v20];
        if (v27 && 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 64) - *(v9 + 56)) >> 3) < v26)
        {
          *(v9 + 52) = 1;
        }

        v67(v15, v78[3]);

        _Block_object_dispose(&v77, 8);
        objc_storeStrong(v11, obj);
        if ((v27 & 1) == 0)
        {
          v5 = 0;
          v4 = v61;
          v3 = v62;
LABEL_37:

          goto LABEL_38;
        }

LABEL_17:
        v28 = *(*(*(a1 + 104) + 8) + 24);
        v4 = v61;
        v3 = v62;
        if (*(*(*(a1 + 112) + 8) + 24) == 1 && [*(*(*(a1 + 72) + 8) + 40) hk_isAfterDate:*(*(*(a1 + 120) + 8) + 40)])
        {
          v29 = [v14 startDate];
          do
          {
            if (*(*(*(a1 + 128) + 8) + 24) == 1)
            {
              [*(*(*(a1 + 120) + 8) + 40) timeIntervalSinceReferenceDate];
              v31 = v30;
              [v29 timeIntervalSinceReferenceDate];
              *(*(*(a1 + 104) + 8) + 24) = v31 - v32 + *(*(*(a1 + 104) + 8) + 24);
            }

            *(*(*(a1 + 128) + 8) + 24) = [*(*(*(a1 + 136) + 8) + 40) type] != 1;
            v33 = ++*(*(*(a1 + 144) + 8) + 24);
            *(*(*(a1 + 112) + 8) + 24) = v33 < [*(a1 + 56) count];
            v34 = *(*(*(a1 + 120) + 8) + 40);

            if (*(*(*(a1 + 112) + 8) + 24) != 1)
            {
              break;
            }

            v35 = [*(a1 + 56) objectAtIndexedSubscript:*(*(*(a1 + 144) + 8) + 24)];
            v36 = *(*(a1 + 136) + 8);
            v37 = *(v36 + 40);
            *(v36 + 40) = v35;

            v38 = [*(*(*(a1 + 136) + 8) + 40) dateInterval];
            v39 = [v38 endDate];
            v40 = *(*(a1 + 120) + 8);
            v41 = *(v40 + 40);
            *(v40 + 40) = v39;

            if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
            {
              break;
            }

            v29 = v34;
          }

          while (([*(*(*(a1 + 72) + 8) + 40) hk_isAfterDate:*(*(*(a1 + 120) + 8) + 40)] & 1) != 0);
          if (*(*(*(a1 + 128) + 8) + 24) == 1)
          {
            v42 = [v14 endDate];
            [v42 timeIntervalSinceReferenceDate];
            v44 = v43;
            [v34 timeIntervalSinceReferenceDate];
            *(*(*(a1 + 104) + 8) + 24) = v44 - v45 + *(*(*(a1 + 104) + 8) + 24);
          }
        }

        else if (*(*(*(a1 + 128) + 8) + 24) == 1)
        {
          [v14 duration];
          *(*(*(a1 + 104) + 8) + 24) = v46 + *(*(*(a1 + 104) + 8) + 24);
        }

        if (*(*(*(a1 + 152) + 8) + 24) == 1 && *(*(*(a1 + 104) + 8) + 24) == v28)
        {
          v5 = 1;
        }

        else
        {
          v47 = objc_alloc(MEMORY[0x277CBFC78]);
          [v62 coordinate];
          v49 = v48;
          [v62 coordinate];
          v51 = v50;
          [v62 altitude];
          v53 = [v47 initWithLatitude:objc_msgSend(v62 longitude:"signalEnvironmentType") altitude:v49 odometer:v51 timestamp:v52 signalEnvironmentType:{*(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 104) + 8) + 24)}];
          v54 = *(a1 + 160);
          v55 = *(a1 + 168);
          v56 = *(a1 + 64);
          v57 = *(*(a1 + 88) + 8);
          v65 = *(v57 + 40);
          v5 = [(HDRaceRouteLocationSeriesEntity *)v54 _insertRoutePoint:v53 seriesIdentifier:v55 database:v56 error:&v65];
          objc_storeStrong((v57 + 40), v65);
          if (v5)
          {
            *(*(*(a1 + 152) + 8) + 24) = 1;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      v18 = v64;
      while (1)
      {
        v76 = 0;
        v19 = _overlappingSampleDistanceForInterval(v14, v17, &v76);
        v16 = v78;
        v78[3] = v19 + v78[3];
        *(v9 + 88) = *v17;
        if (!v76)
        {
          break;
        }

        v17 = (*(v9 + 80) + 24);
        *(v9 + 80) = v17;
        if (*(v9 + 64) == v17)
        {
          goto LABEL_9;
        }
      }
    }

    v67(v15, v16[3]);
    _Block_object_dispose(&v77, 8);

    objc_storeStrong(v11, obj);
    goto LABEL_17;
  }

  v5 = 1;
LABEL_38:

  return v5;
}

double __90__HDRaceRouteLocationSeriesEntity_createRoutePointsFromWorkout_transaction_profile_error___block_invoke_3(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

+ (uint64_t)_insertRoutePoint:(uint64_t)point seriesIdentifier:(void *)identifier database:(uint64_t)database error:
{
  v8 = a2;
  identifierCopy = identifier;
  v10 = objc_opt_self();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__HDRaceRouteLocationSeriesEntity__insertRoutePoint_seriesIdentifier_database_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = v10;
  v11 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HDRaceRouteLocationSeriesEntity__insertRoutePoint_seriesIdentifier_database_error___block_invoke_2;
  v15[3] = &unk_278615A20;
  pointCopy = point;
  v12 = v8;
  v16 = v12;
  v13 = [identifierCopy executeCachedStatementForKey:&+[HDRaceRouteLocationSeriesEntity _insertRoutePoint:seriesIdentifier:database:error:]::HDRaceRouteLocationSeriesEntityCacheKeyInsert error:database SQLGenerator:v11 bindingHandler:v15 enumerationHandler:0];

  return v13;
}

+ (BOOL)enumerateRoutePointsForSeries:(int64_t)series timestampAnchor:(double)anchor limit:(unint64_t)limit startDuration:(double)duration finishDuration:(double)finishDuration transaction:(id)transaction error:(id *)error handler:(id)self0
{
  v53[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  v18 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v18 setEntityClass:self];
  [v18 setLimitCount:limit];
  v19 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"timestamp" entityClass:self ascending:1];
  v53[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  [v18 setOrderingTerms:v20];

  v21 = MEMORY[0x277D10B18];
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:series];
  v46 = [v21 predicateWithProperty:@"series_id" equalToValue:v22];

  v23 = MEMORY[0x277D10B18];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:anchor];
  v25 = [v23 predicateWithProperty:@"timestamp" greaterThanValue:v24];

  v52[0] = v46;
  v52[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v27 = [v26 mutableCopy];

  if (duration > 0.0)
  {
    v28 = MEMORY[0x277D10B18];
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v30 = [v28 predicateWithProperty:@"timestamp" greaterThanOrEqualToValue:v29];

    [v27 addObject:v30];
  }

  if (finishDuration > duration)
  {
    v31 = MEMORY[0x277D10B18];
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:finishDuration];
    v33 = [v31 predicateWithProperty:@"timestamp" lessThanOrEqualToValue:v32];

    [v27 addObject:v33];
  }

  v34 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v27];
  [v18 setPredicate:v34];

  v35 = +[(HDRaceRouteLocationSeriesEntity *)self];
  v51 = @"series_id";
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v37 = [v35 arrayByExcludingObjectsInArray:v36];

  v38 = [v18 selectSQLForProperties:v37];
  v39 = [transactionCopy databaseForEntityClass:self];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __142__HDRaceRouteLocationSeriesEntity_enumerateRoutePointsForSeries_timestampAnchor_limit_startDuration_finishDuration_transaction_error_handler___block_invoke;
  v49[3] = &unk_278615580;
  v40 = v18;
  v50 = v40;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __142__HDRaceRouteLocationSeriesEntity_enumerateRoutePointsForSeries_timestampAnchor_limit_startDuration_finishDuration_transaction_error_handler___block_invoke_2;
  v47[3] = &unk_2786159F8;
  v41 = handlerCopy;
  v48 = v41;
  v42 = [v39 executeSQL:v38 error:error bindingHandler:v49 enumerationHandler:v47];

  return v42;
}

+ (id)_allEntityProperties
{
  v3[7] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"series_id";
  v3[1] = @"timestamp";
  v3[2] = @"latitude";
  v3[3] = @"longitude";
  v3[4] = @"altitude";
  v3[5] = @"distance";
  v3[6] = @"signal_type";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];

  return v1;
}

uint64_t __142__HDRaceRouteLocationSeriesEntity_enumerateRoutePointsForSeries_timestampAnchor_limit_startDuration_finishDuration_transaction_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C50](a2, 0);
  v5 = MEMORY[0x22AAC6C50](a2, 1);
  v6 = MEMORY[0x22AAC6C50](a2, 2);
  v7 = MEMORY[0x22AAC6C50](a2, 3);
  v8 = MEMORY[0x22AAC6C50](a2, 4);
  v9 = [objc_alloc(MEMORY[0x277CBFC78]) initWithLatitude:HDSQLiteColumnAsInt64() longitude:v5 altitude:v6 odometer:v7 timestamp:v8 signalEnvironmentType:v4];
  v10 = (*(*(a1 + 32) + 16))();

  return v10;
}

+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)identifier transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__HDRaceRouteLocationSeriesEntity_deleteSeriesDataWithIdentifier_transaction_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v10 = [transactionCopy databaseForEntityClass:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HDRaceRouteLocationSeriesEntity_deleteSeriesDataWithIdentifier_transaction_error___block_invoke_2;
  v12[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v12[4] = identifier;
  LOBYTE(error) = [v10 executeCachedStatementForKey:&+[HDRaceRouteLocationSeriesEntity deleteSeriesDataWithIdentifier:transaction:error:]::deleteSQLCacheKey error:error SQLGenerator:v9 bindingHandler:v12 enumerationHandler:0];

  return error;
}

id __84__HDRaceRouteLocationSeriesEntity_deleteSeriesDataWithIdentifier_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) databaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v2, @"series_id"];

  return v3;
}

id __85__HDRaceRouteLocationSeriesEntity__insertRoutePoint_seriesIdentifier_database_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[(HDRaceRouteLocationSeriesEntity *)v1];
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:1];

  return v3;
}

uint64_t __85__HDRaceRouteLocationSeriesEntity__insertRoutePoint_seriesIdentifier_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  [*(a1 + 32) timestamp_s];
  sqlite3_bind_double(a2, 2, v4);
  [*(a1 + 32) latitude_deg];
  sqlite3_bind_double(a2, 3, v5);
  [*(a1 + 32) longitude_deg];
  sqlite3_bind_double(a2, 4, v6);
  [*(a1 + 32) altitude_m];
  sqlite3_bind_double(a2, 5, v7);
  [*(a1 + 32) odometer_m];
  sqlite3_bind_double(a2, 6, v8);
  v9 = [*(a1 + 32) signalEnvironmentType];

  return sqlite3_bind_int(a2, 7, v9);
}

id __74__HDRaceRouteLocationSeriesEntity__maxSeriesIdentifierWithDatabase_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) databaseTable];
  v3 = [v1 stringWithFormat:@"SELECT MAX(%@) FROM %@", @"series_id", v2, 0];

  return v3;
}

uint64_t __84__HDRaceRouteLocationSeriesEntity__routeSeriesIdentifiersForWorkout_database_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  [v3 addObject:v4];

  return 1;
}

BOOL __124__HDRaceRouteLocationSeriesEntity__distanceWithEnumerator_dateInterval_distanceType_sampleBuffer_transaction_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  [v4 timeIntervalSinceReferenceDate];
  *&v39 = v5;
  v6 = [v3 endDate];
  [v6 timeIntervalSinceReferenceDate];
  *(&v39 + 1) = v7;
  v8 = [v3 quantity];
  [v8 doubleValueForUnit:*(a1 + 32)];
  v40 = v9;

  v38 = 0;
  v10 = [v3 startDate];
  v11 = [*(a1 + 40) endDate];
  LODWORD(v8) = [v10 hk_isAfterDate:v11];

  if (!v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = _overlappingSampleDistanceForInterval(*(a1 + 40), &v39, &v38) + *(*(*(a1 + 48) + 8) + 24);
    if (!v38)
    {
      v16 = *(a1 + 56);
      v18 = *(v16 + 8);
      v17 = *(v16 + 16);
      if (v18 >= v17)
      {
        v24 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v16) >> 3);
        v25 = v24 + 1;
        if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_32;
        }

        v26 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v16) >> 3);
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x555555555555555)
        {
          v27 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v27);
        }

        v33 = 24 * v24;
        *v33 = v39;
        *(v33 + 16) = v40;
        v19 = 24 * v24 + 24;
        v34 = *(v16 + 8) - *v16;
        v35 = 24 * v24 - v34;
        memcpy((v33 - v34), *v16, v34);
        v36 = *v16;
        *v16 = v35;
        *(v16 + 8) = v19;
        *(v16 + 16) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v18 = v39;
        *(v18 + 16) = v40;
        v19 = v18 + 24;
      }

      *(v16 + 8) = v19;
      if (!v38)
      {
        goto LABEL_26;
      }
    }

    v32 = 1;
    goto LABEL_31;
  }

  v12 = *(a1 + 56);
  v14 = *(v12 + 8);
  v13 = *(v12 + 16);
  if (v14 >= v13)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v12) >> 3);
    v21 = v20 + 1;
    if (v20 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v23);
      }

      v28 = 24 * v20;
      *v28 = v39;
      *(v28 + 16) = v40;
      v15 = 24 * v20 + 24;
      v29 = *(v12 + 8) - *v12;
      v30 = 24 * v20 - v29;
      memcpy((v28 - v29), *v12, v29);
      v31 = *v12;
      *v12 = v30;
      *(v12 + 8) = v15;
      *(v12 + 16) = 0;
      if (v31)
      {
        operator delete(v31);
      }

      goto LABEL_25;
    }

LABEL_32:
    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  *v14 = v39;
  *(v14 + 16) = v40;
  v15 = v14 + 24;
LABEL_25:
  *(v12 + 8) = v15;
LABEL_26:
  v32 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 56) + 8) - **(a1 + 56)) >> 3) < *(a1 + 64);
LABEL_31:

  return v32;
}

+ (const)columnDefinitionsWithCount:(unint64_t *)count
{
  {
    countCopy = count;
    count = countCopy;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor, 0, &dword_228986000);
      count = countCopy;
    }
  }

  *count = 7;
  return +[HDRaceRouteLocationSeriesEntity columnDefinitionsWithCount:]::columnDefinitions;
}

+ (id)primaryKeyColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"series_id";
  v4[1] = @"timestamp";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)insertCodableRoutePoints:(id)points transaction:(id)transaction error:(id *)error
{
  pointsCopy = points;
  transactionCopy = transaction;
  if ([pointsCopy count])
  {
    v10 = [transactionCopy databaseForEntityClass:self];
    v11 = [(HDRaceRouteLocationSeriesEntity *)self _maxSeriesIdentifierWithDatabase:v10 error:error];

    if (v11 && (v12 = [v11 longLongValue], objc_msgSend(self, "insertCodableRoutePoints:seriesKey:transaction:error:", pointsCopy, v12 + 1, transactionCopy, error)))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12 + 1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
  }

  return v13;
}

+ (BOOL)insertCodableRoutePoints:(id)points seriesKey:(int64_t)key transaction:(id)transaction error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v11 = [transaction databaseForEntityClass:self];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = pointsCopy;
  v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v29 = pointsCopy;
    v13 = *v32;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x277CBFC78]);
        [v15 latitude];
        v18 = v17;
        [v15 longitude];
        v20 = v19;
        [v15 altitude];
        v22 = v21;
        [v15 odometer];
        v24 = v23;
        [v15 timestamp];
        v26 = [v16 initWithLatitude:objc_msgSend(v15 longitude:"signalEnvironmentType") altitude:v18 odometer:v20 timestamp:v22 signalEnvironmentType:{v24, v25}];
        LODWORD(v15) = [(HDRaceRouteLocationSeriesEntity *)self _insertRoutePoint:v26 seriesIdentifier:key database:v11 error:error];

        if (!v15)
        {
          v27 = 0;
          goto LABEL_11;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
LABEL_11:

  return v27;
}

+ (id)createTableSQLWithBehavior:(id)behavior
{
  createTableSQL = [self createTableSQL];

  return createTableSQL;
}

+ (id)indicesWithBehavior:(id)behavior
{
  indices = [self indices];

  return indices;
}

+ (id)triggersWithBehavior:(id)behavior
{
  triggers = [self triggers];

  return triggers;
}

@end