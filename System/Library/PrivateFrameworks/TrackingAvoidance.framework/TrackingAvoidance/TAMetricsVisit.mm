@interface TAMetricsVisit
- (NSString)description;
- (TAMetricsVisit)initWithSnapshotHistory:(id)history andAddress:(id)address andVisitFilterSettings:(id)settings;
- (id)descriptionDictionary;
@end

@implementation TAMetricsVisit

- (TAMetricsVisit)initWithSnapshotHistory:(id)history andAddress:(id)address andVisitFilterSettings:(id)settings
{
  v114 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  addressCopy = address;
  settingsCopy = settings;
  v111.receiver = self;
  v111.super_class = TAMetricsVisit;
  v11 = [(TAMetricsVisit *)&v111 init];
  if (!v11)
  {
LABEL_44:
    v12 = v11;
    goto LABEL_47;
  }

  v12 = 0;
  if (historyCopy && addressCopy && settingsCopy)
  {
    if ([historyCopy count])
    {
      lastObject = [historyCopy lastObject];
      v14 = lastObject;
      if (lastObject)
      {
        if ([lastObject isClosed])
        {
          latestUtAdvertisements = [v14 latestUtAdvertisements];
          v16 = [latestUtAdvertisements objectForKey:addressCopy];

          if (v16)
          {
            v17 = [addressCopy copy];
            v18 = *(v11 + 1);
            *(v11 + 1) = v17;

            representativeVisit = [v14 representativeVisit];
            [representativeVisit coordinate];
            *(v11 + 10) = v20;

            representativeVisit2 = [v14 representativeVisit];
            [representativeVisit2 coordinate];
            *(v11 + 11) = v22;

            getArrivalDelay = [v14 getArrivalDelay];
            v24 = *(v11 + 8);
            *(v11 + 8) = getArrivalDelay;

            getDepartureDelay = [v14 getDepartureDelay];
            v26 = *(v11 + 9);
            *(v11 + 9) = getDepartureDelay;

            [settingsCopy entryDisplayOnBudget];
            [v14 getDurationOfVisitEntryConsideredWithDisplayOnBudget:?];
            *(v11 + 6) = v27;
            [settingsCopy exitDisplayOnBudget];
            [v14 getDurationOfVisitExitConsideredWithDisplayOnBudget:?];
            *(v11 + 7) = v28;
            latestUtAdvertisements2 = [v14 latestUtAdvertisements];
            v89 = addressCopy;
            v30 = [latestUtAdvertisements2 objectForKey:addressCopy];
            v31 = *(v11 + 13);
            *(v11 + 13) = v30;

            v32 = vdupq_n_s64(1uLL);
            v33 = vaddq_s64(*(v11 + 1), v32);
            v34 = vaddq_s64(*(v11 + 2), v32);
            *(v11 + 1) = v33;
            *(v11 + 2) = v34;
            array = [MEMORY[0x277CBEB18] array];
            v36 = [TALocationLite alloc];
            representativeVisit3 = [v14 representativeVisit];
            getDate = [representativeVisit3 getDate];
            representativeVisit4 = [v14 representativeVisit];
            [representativeVisit4 coordinate];
            v41 = v40;
            [v14 representativeVisit];
            v42 = v99 = v11;
            [v42 coordinate];
            v44 = v43;
            [v14 representativeVisit];
            v45 = v95 = v14;
            [v45 horizontalAccuracy];
            v47 = [(TALocationLite *)v36 initWithTimestamp:getDate latitude:v41 longitude:v44 horizontalAccuracy:v46];

            v48 = v14;
            v11 = v99;

            v92 = array;
            [array addObject:v47];
            v49 = v47;
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v90 = historyCopy;
            obj = [historyCopy reverseObjectEnumerator];
            v50 = [obj countByEnumeratingWithState:&v107 objects:v113 count:16];
            v91 = v49;
            if (v50)
            {
              v51 = v50;
              v52 = *v108;
              v53 = 1;
              v54 = 1;
              v94 = *v108;
              do
              {
                v55 = 0;
                v102 = v49;
                v96 = v51;
                do
                {
                  if (*v108 != v52)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v56 = *(*(&v107 + 1) + 8 * v55);
                  if ([v56 isEqual:v48])
                  {
                    v49 = v102;
                  }

                  else
                  {
                    v100 = v54;
                    v101 = v53;
                    v57 = [TALocationLite alloc];
                    representativeVisit5 = [v56 representativeVisit];
                    getDate2 = [representativeVisit5 getDate];
                    representativeVisit6 = [v56 representativeVisit];
                    [representativeVisit6 coordinate];
                    v62 = v61;
                    representativeVisit7 = [v56 representativeVisit];
                    [representativeVisit7 coordinate];
                    v65 = v64;
                    representativeVisit8 = [v56 representativeVisit];
                    [representativeVisit8 horizontalAccuracy];
                    v49 = [(TALocationLite *)v57 initWithTimestamp:getDate2 latitude:v62 longitude:v65 horizontalAccuracy:v67];

                    v11 = v99;
                    minNSigmaBetweenVisits = [settingsCopy minNSigmaBetweenVisits];
                    [settingsCopy minInterVisitDistance];
                    v69 = [TALocationLite distanceFromLocation:v49 toLocation:v102 satisfyNSigma:minNSigmaBetweenVisits satisfyMinDistance:?];
                    latestUtAdvertisements3 = [v56 latestUtAdvertisements];
                    v71 = [latestUtAdvertisements3 objectForKey:v99[1]];

                    if (v71)
                    {
                      if (!v99[12])
                      {
                        v72 = objc_alloc(MEMORY[0x277CCABB0]);
                        [(TALocationLite *)v91 distanceFromLocation:v49];
                        v73 = [v72 initWithDouble:?];
                        v74 = v99[12];
                        v99[12] = v73;
                      }

                      v98 = v69;
                      v105 = 0u;
                      v106 = 0u;
                      v103 = 0u;
                      v104 = 0u;
                      v75 = v92;
                      v76 = [v75 countByEnumeratingWithState:&v103 objects:v112 count:16];
                      if (v76)
                      {
                        v77 = v76;
                        v93 = v71;
                        v78 = *v104;
                        LOBYTE(v79) = 1;
                        while (2)
                        {
                          for (i = 0; i != v77; ++i)
                          {
                            if (*v104 != v78)
                            {
                              objc_enumerationMutation(v75);
                            }

                            if (!v79)
                            {

                              LODWORD(v83) = 0;
                              v11 = v99;
                              v54 = v100;
                              v52 = v94;
                              v48 = v95;
                              v84 = v101;
                              v51 = v96;
                              v71 = v93;
                              goto LABEL_34;
                            }

                            v81 = *(*(&v103 + 1) + 8 * i);
                            minNSigmaBetweenVisits2 = [settingsCopy minNSigmaBetweenVisits];
                            [settingsCopy minInterVisitDistance];
                            v79 = [TALocationLite distanceFromLocation:v49 toLocation:v81 satisfyNSigma:minNSigmaBetweenVisits2 satisfyMinDistance:?];
                          }

                          v77 = [v75 countByEnumeratingWithState:&v103 objects:v112 count:16];
                          if (v77)
                          {
                            continue;
                          }

                          break;
                        }

                        v11 = v99;
                        v71 = v93;
                        if (!v79)
                        {
                          LODWORD(v83) = 0;
                          goto LABEL_33;
                        }
                      }

                      else
                      {
                      }

                      [v75 addObject:v49];
                      LODWORD(v83) = 1;
LABEL_33:
                      v52 = v94;
                      v48 = v95;
                      v54 = v100;
                      v84 = v101;
                      v51 = v96;
LABEL_34:
                      v69 = v98;
                    }

                    else
                    {
                      v54 = 0;
                      LODWORD(v83) = 1;
                      v52 = v94;
                      v48 = v95;
                      v84 = v101;
                      v51 = v96;
                    }

                    if (v71)
                    {
                      v83 = v83;
                    }

                    else
                    {
                      v83 = 0;
                    }

                    v53 = v84 & v54 & v69;
                    v85 = *(v11 + 2);
                    v86 = *(v11 + 3);
                    if (v71)
                    {
                      ++v85;
                    }

                    *(v11 + 2) = v85;
                    *(v11 + 3) = v86 + v83;
                    v87 = *(v11 + 5) + (v53 & 1);
                    *(v11 + 4) += v54 & 1;
                    *(v11 + 5) = v87;

                    v102 = v49;
                  }

                  ++v55;
                }

                while (v55 != v51);
                v51 = [obj countByEnumeratingWithState:&v107 objects:v113 count:16];
              }

              while (v51);
            }

            addressCopy = v89;
            historyCopy = v90;
            goto LABEL_44;
          }
        }
      }
    }

    v12 = 0;
  }

LABEL_47:

  return v12;
}

- (id)descriptionDictionary
{
  v37[13] = *MEMORY[0x277D85DE8];
  visitEntryDelay = [(TAMetricsVisit *)self visitEntryDelay];
  v4 = 0.0;
  v5 = 0.0;
  if (visitEntryDelay)
  {
    visitEntryDelay2 = [(TAMetricsVisit *)self visitEntryDelay];
    [visitEntryDelay2 duration];
    v5 = v7;
  }

  visitExitDelay = [(TAMetricsVisit *)self visitExitDelay];
  if (visitExitDelay)
  {
    visitExitDelay2 = [(TAMetricsVisit *)self visitExitDelay];
    [visitExitDelay2 duration];
    v4 = v10;
  }

  distanceToPreviousSeenVisit = [(TAMetricsVisit *)self distanceToPreviousSeenVisit];
  if (distanceToPreviousSeenVisit)
  {
    distanceToPreviousSeenVisit2 = [(TAMetricsVisit *)self distanceToPreviousSeenVisit];
    [distanceToPreviousSeenVisit2 doubleValue];
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v36[0] = @"MetricsType";
  v15 = objc_opt_class();
  v35 = NSStringFromClass(v15);
  v37[0] = v35;
  v36[1] = @"Address";
  address = [(TAMetricsVisit *)self address];
  hexString = [address hexString];
  v37[1] = hexString;
  v36[2] = @"TotalVisitCount";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAMetricsVisit totalVisitCount](self, "totalVisitCount")}];
  v37[2] = v32;
  v36[3] = @"TotalDistinctVisitCount";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAMetricsVisit totalDistinctVisitCount](self, "totalDistinctVisitCount")}];
  v37[3] = v31;
  v36[4] = @"ConsecutiveVisitCount";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAMetricsVisit consecutiveVisitCount](self, "consecutiveVisitCount")}];
  v37[4] = v16;
  v36[5] = @"ConsecutiveAndDistinctFromPrevVisitCount";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAMetricsVisit consecutiveAndDistinctFromPrevVisitCount](self, "consecutiveAndDistinctFromPrevVisitCount")}];
  v37[5] = v17;
  v36[6] = @"DurationOfVisitEntryConsideration";
  v18 = MEMORY[0x277CCABB0];
  [(TAMetricsVisit *)self durationOfVisitEntryConsideration];
  v19 = [v18 numberWithDouble:?];
  v37[6] = v19;
  v36[7] = @"DurationOfVisitExitConsideration";
  v20 = MEMORY[0x277CCABB0];
  [(TAMetricsVisit *)self durationOfVisitExitConsideration];
  v21 = [v20 numberWithDouble:?];
  v37[7] = v21;
  v36[8] = @"EntryDelay";
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v37[8] = v22;
  v36[9] = @"ExitDelay";
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v37[9] = v23;
  v36[10] = @"Latitude";
  v24 = MEMORY[0x277CCABB0];
  [(TAMetricsVisit *)self latitude];
  v25 = [v24 numberWithDouble:?];
  v37[10] = v25;
  v36[11] = @"Longitude";
  v26 = MEMORY[0x277CCABB0];
  [(TAMetricsVisit *)self longitude];
  v27 = [v26 numberWithDouble:?];
  v37[11] = v27;
  v36[12] = @"DistanceToPreviousSeenVisit";
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v37[12] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:13];

  return v29;
}

- (NSString)description
{
  descriptionDictionary = [(TAMetricsVisit *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

@end