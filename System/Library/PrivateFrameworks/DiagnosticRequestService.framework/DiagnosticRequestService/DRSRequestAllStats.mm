@interface DRSRequestAllStats
+ (id)statsForRequests:(id)requests;
- (id)terminalRequestProtobufRepresentation;
- (unint64_t)generateCoreAnalyticsEvents:(BOOL)events;
@end

@implementation DRSRequestAllStats

- (id)terminalRequestProtobufRepresentation
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(DRSProtoDiagnosticRequestStatsBatch);
  v4 = DRSDeviceMetadata(v3);
  v65 = v3;
  [(DRSProtoDiagnosticRequestStatsBatch *)v3 setClientMetadata:v4];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  perBuildStats = [(DRSRequestAllStats *)self perBuildStats];
  objectEnumerator = [perBuildStats objectEnumerator];

  obj = objectEnumerator;
  v55 = [objectEnumerator countByEnumeratingWithState:&v95 objects:v104 count:16];
  if (v55)
  {
    v54 = *v96;
    do
    {
      v7 = 0;
      do
      {
        if (*v96 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v7;
        v8 = *(*(&v95 + 1) + 8 * v7);
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        perTeamIDStats = [v8 perTeamIDStats];
        objectEnumerator2 = [perTeamIDStats objectEnumerator];

        v57 = objectEnumerator2;
        v59 = [objectEnumerator2 countByEnumeratingWithState:&v91 objects:v103 count:16];
        if (v59)
        {
          v58 = *v92;
          do
          {
            v11 = 0;
            do
            {
              if (*v92 != v58)
              {
                objc_enumerationMutation(v57);
              }

              v60 = v11;
              v12 = *(*(&v91 + 1) + 8 * v11);
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              perIssueCategoryStats = [v12 perIssueCategoryStats];
              objectEnumerator3 = [perIssueCategoryStats objectEnumerator];

              v61 = objectEnumerator3;
              v63 = [objectEnumerator3 countByEnumeratingWithState:&v87 objects:v102 count:16];
              if (v63)
              {
                v62 = *v88;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v88 != v62)
                    {
                      objc_enumerationMutation(v61);
                    }

                    v64 = v15;
                    v16 = *(*(&v87 + 1) + 8 * v15);
                    v83 = 0u;
                    v84 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    perIssueDescriptionStats = [v16 perIssueDescriptionStats];
                    objectEnumerator4 = [perIssueDescriptionStats objectEnumerator];

                    v66 = objectEnumerator4;
                    v68 = [objectEnumerator4 countByEnumeratingWithState:&v83 objects:v101 count:16];
                    if (v68)
                    {
                      v67 = *v84;
                      do
                      {
                        for (i = 0; i != v68; ++i)
                        {
                          if (*v84 != v67)
                          {
                            objc_enumerationMutation(v66);
                          }

                          v20 = *(*(&v83 + 1) + 8 * i);
                          requests = [v20 requests];
                          firstObject = [requests firstObject];

                          if (firstObject)
                          {
                            v70 = i;
                            v23 = objc_alloc_init(DRSProtoDiagnosticRequestStats);
                            build = [firstObject build];
                            [(DRSProtoDiagnosticRequestStats *)v23 setBuild:build];

                            teamID = [firstObject teamID];
                            [(DRSProtoDiagnosticRequestStats *)v23 setTeamId:teamID];

                            issueCategory = [firstObject issueCategory];
                            [(DRSProtoDiagnosticRequestStats *)v23 setIssueCategory:issueCategory];

                            v69 = firstObject;
                            issueDescription = [firstObject issueDescription];
                            [(DRSProtoDiagnosticRequestStats *)v23 setIssueDescription:issueDescription];

                            v81 = 0u;
                            v82 = 0u;
                            v79 = 0u;
                            v80 = 0u;
                            perOutcomeStats = [v20 perOutcomeStats];
                            objectEnumerator5 = [perOutcomeStats objectEnumerator];

                            v73 = objectEnumerator5;
                            v30 = [objectEnumerator5 countByEnumeratingWithState:&v79 objects:v100 count:16];
                            if (v30)
                            {
                              v31 = v30;
                              v32 = *v80;
                              v71 = *v80;
                              do
                              {
                                v33 = 0;
                                v72 = v31;
                                do
                                {
                                  if (*v80 != v32)
                                  {
                                    objc_enumerationMutation(v73);
                                  }

                                  v34 = *(*(&v79 + 1) + 8 * v33);
                                  requests2 = [v34 requests];
                                  firstObject2 = [requests2 firstObject];

                                  if (firstObject2 && [firstObject2 requestOutcome])
                                  {
                                    v74 = firstObject2;
                                    v77 = 0u;
                                    v78 = 0u;
                                    v75 = 0u;
                                    v76 = 0u;
                                    perStateStats = [v34 perStateStats];
                                    objectEnumerator6 = [perStateStats objectEnumerator];

                                    v39 = [objectEnumerator6 countByEnumeratingWithState:&v75 objects:v99 count:16];
                                    if (v39)
                                    {
                                      v40 = v39;
                                      v41 = *v76;
                                      do
                                      {
                                        for (j = 0; j != v40; ++j)
                                        {
                                          if (*v76 != v41)
                                          {
                                            objc_enumerationMutation(objectEnumerator6);
                                          }

                                          v43 = *(*(&v75 + 1) + 8 * j);
                                          requests3 = [v43 requests];
                                          firstObject3 = [requests3 firstObject];

                                          if (firstObject3)
                                          {
                                            v46 = objc_alloc_init(DRSProtoDiagnosticRequestOutcomeBucket);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setCount:](v46, "setCount:", [v43 requestCount]);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setOutcome:](v46, "setOutcome:", [firstObject3 requestOutcome]);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setRequestState:](v46, "setRequestState:", [firstObject3 requestState]);
                                            [(DRSProtoDiagnosticRequestStats *)v23 addOutcomes:v46];
                                          }
                                        }

                                        v40 = [objectEnumerator6 countByEnumeratingWithState:&v75 objects:v99 count:16];
                                      }

                                      while (v40);
                                    }

                                    v32 = v71;
                                    v31 = v72;
                                    firstObject2 = v74;
                                  }

                                  ++v33;
                                }

                                while (v33 != v31);
                                v31 = [v73 countByEnumeratingWithState:&v79 objects:v100 count:16];
                              }

                              while (v31);
                            }

                            outcomes = [(DRSProtoDiagnosticRequestStats *)v23 outcomes];
                            v48 = [outcomes count];

                            if (v48)
                            {
                              [(DRSProtoDiagnosticRequestStatsBatch *)v65 addRequestsResultsStats:v23];
                            }

                            firstObject = v69;
                            i = v70;
                          }
                        }

                        v68 = [v66 countByEnumeratingWithState:&v83 objects:v101 count:16];
                      }

                      while (v68);
                    }

                    v15 = v64 + 1;
                  }

                  while (v64 + 1 != v63);
                  v63 = [v61 countByEnumeratingWithState:&v87 objects:v102 count:16];
                }

                while (v63);
              }

              v11 = v60 + 1;
            }

            while (v60 + 1 != v59);
            v59 = [v57 countByEnumeratingWithState:&v91 objects:v103 count:16];
          }

          while (v59);
        }

        v7 = v56 + 1;
      }

      while (v56 + 1 != v55);
      v55 = [obj countByEnumeratingWithState:&v95 objects:v104 count:16];
    }

    while (v55);
  }

  requestsResultsStats = [(DRSProtoDiagnosticRequestStatsBatch *)v65 requestsResultsStats];
  v50 = [requestsResultsStats count];

  if (v50)
  {
    v51 = v65;
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

- (unint64_t)generateCoreAnalyticsEvents:(BOOL)events
{
  eventsCopy = events;
  v107 = *MEMORY[0x277D85DE8];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  perBuildStats = [(DRSRequestAllStats *)self perBuildStats];
  objectEnumerator = [perBuildStats objectEnumerator];

  obj = objectEnumerator;
  v53 = [objectEnumerator countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (v53)
  {
    v74 = 0;
    v52 = *v96;
    do
    {
      v5 = 0;
      do
      {
        if (*v96 != v52)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v54 = v5;
        v7 = *(*(&v95 + 1) + 8 * v5);
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        perTeamIDStats = [v7 perTeamIDStats];
        objectEnumerator2 = [perTeamIDStats objectEnumerator];

        v55 = objectEnumerator2;
        v57 = [objectEnumerator2 countByEnumeratingWithState:&v91 objects:v105 count:16];
        if (v57)
        {
          v56 = *v92;
          do
          {
            v10 = 0;
            do
            {
              if (*v92 != v56)
              {
                v11 = v10;
                objc_enumerationMutation(v55);
                v10 = v11;
              }

              v58 = v10;
              v12 = *(*(&v91 + 1) + 8 * v10);
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              perIssueCategoryStats = [v12 perIssueCategoryStats];
              objectEnumerator3 = [perIssueCategoryStats objectEnumerator];

              v59 = objectEnumerator3;
              v61 = [objectEnumerator3 countByEnumeratingWithState:&v87 objects:v104 count:16];
              if (v61)
              {
                v60 = *v88;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v88 != v60)
                    {
                      v16 = v15;
                      objc_enumerationMutation(v59);
                      v15 = v16;
                    }

                    v62 = v15;
                    v17 = *(*(&v87 + 1) + 8 * v15);
                    v83 = 0u;
                    v84 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    perIssueDescriptionStats = [v17 perIssueDescriptionStats];
                    objectEnumerator4 = [perIssueDescriptionStats objectEnumerator];

                    v63 = objectEnumerator4;
                    v65 = [objectEnumerator4 countByEnumeratingWithState:&v83 objects:v103 count:16];
                    if (v65)
                    {
                      v64 = *v84;
                      do
                      {
                        v20 = 0;
                        do
                        {
                          if (*v84 != v64)
                          {
                            objc_enumerationMutation(v63);
                          }

                          v67 = v20;
                          v21 = *(*(&v83 + 1) + 8 * v20);
                          requests = [v21 requests];
                          firstObject = [requests firstObject];

                          if (firstObject)
                          {
                            v101[0] = kTeamIDKey;
                            teamID = [firstObject teamID];
                            v102[0] = teamID;
                            v101[1] = kDiagnosticRequestStatsKey_IssueCategory;
                            issueCategory = [firstObject issueCategory];
                            v102[1] = issueCategory;
                            v101[2] = kDiagnosticRequestStatsKey_IssueDescription;
                            v66 = firstObject;
                            issueDescription = [firstObject issueDescription];
                            v102[2] = issueDescription;
                            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];

                            v81 = 0u;
                            v82 = 0u;
                            v79 = 0u;
                            v80 = 0u;
                            perOutcomeStats = [v21 perOutcomeStats];
                            objectEnumerator5 = [perOutcomeStats objectEnumerator];

                            v70 = objectEnumerator5;
                            v30 = [objectEnumerator5 countByEnumeratingWithState:&v79 objects:v100 count:16];
                            if (v30)
                            {
                              v31 = v30;
                              v32 = *v80;
                              v68 = *v80;
                              do
                              {
                                v33 = 0;
                                v69 = v31;
                                do
                                {
                                  if (*v80 != v32)
                                  {
                                    objc_enumerationMutation(v70);
                                  }

                                  v34 = *(*(&v79 + 1) + 8 * v33);
                                  requests2 = [v34 requests];
                                  firstObject2 = [requests2 firstObject];

                                  if (firstObject2 && [firstObject2 requestOutcome])
                                  {
                                    v71 = firstObject2;
                                    v72 = v33;
                                    v77 = 0u;
                                    v78 = 0u;
                                    v75 = 0u;
                                    v76 = 0u;
                                    perStateStats = [v34 perStateStats];
                                    objectEnumerator6 = [perStateStats objectEnumerator];

                                    v39 = [objectEnumerator6 countByEnumeratingWithState:&v75 objects:v99 count:16];
                                    if (v39)
                                    {
                                      v40 = v39;
                                      v41 = *v76;
                                      do
                                      {
                                        for (i = 0; i != v40; ++i)
                                        {
                                          if (*v76 != v41)
                                          {
                                            objc_enumerationMutation(objectEnumerator6);
                                          }

                                          v43 = *(*(&v75 + 1) + 8 * i);
                                          requests3 = [v43 requests];
                                          firstObject3 = [requests3 firstObject];

                                          if (firstObject3 && [v43 requestCount])
                                          {
                                            v46 = [v27 mutableCopy];
                                            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v43, "requestCount")}];
                                            [v46 setObject:v47 forKeyedSubscript:kDiagnosticRequestStatsKey_RequestCount];

                                            requestOutcome = [v34 requestOutcome];
                                            [v46 setObject:requestOutcome forKeyedSubscript:kDiagnosticRequestStatsKey_RequestOutcome];

                                            requestState = [v43 requestState];
                                            [v46 setObject:requestState forKeyedSubscript:kDiagnosticRequestStatsKey_RequestState];

                                            if (eventsCopy)
                                            {
                                              DRSCoreAnalyticsSendEvent(kDiagnosticRequestStatsName, v46);
                                            }

                                            ++v74;
                                          }
                                        }

                                        v40 = [objectEnumerator6 countByEnumeratingWithState:&v75 objects:v99 count:16];
                                      }

                                      while (v40);
                                    }

                                    v32 = v68;
                                    v31 = v69;
                                    firstObject2 = v71;
                                    v33 = v72;
                                  }

                                  ++v33;
                                }

                                while (v33 != v31);
                                v31 = [v70 countByEnumeratingWithState:&v79 objects:v100 count:16];
                              }

                              while (v31);
                            }

                            firstObject = v66;
                          }

                          v20 = v67 + 1;
                        }

                        while (v67 + 1 != v65);
                        v65 = [v63 countByEnumeratingWithState:&v83 objects:v103 count:16];
                      }

                      while (v65);
                    }

                    v15 = v62 + 1;
                  }

                  while (v62 + 1 != v61);
                  v61 = [v59 countByEnumeratingWithState:&v87 objects:v104 count:16];
                }

                while (v61);
              }

              v10 = v58 + 1;
            }

            while (v58 + 1 != v57);
            v57 = [v55 countByEnumeratingWithState:&v91 objects:v105 count:16];
          }

          while (v57);
        }

        v5 = v54 + 1;
      }

      while (v54 + 1 != v53);
      v53 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v53);
  }

  else
  {
    v74 = 0;
  }

  return v74;
}

+ (id)statsForRequests:(id)requests
{
  v17 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v4 = objc_alloc_init(DRSRequestAllStats);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = requestsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(DRSRequestStats *)v4 addRequest:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(DRSRequestStats *)v4 requestCount])
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end