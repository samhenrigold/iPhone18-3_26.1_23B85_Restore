@interface PSGraphValidation
+ (BOOL)validateTransitionBlock:(id)block forSession:(id)session error:(id *)error;
+ (id)criticalityToString:(unint64_t)string;
+ (id)findImmediateDownstreamGraphs:(id)graphs withTransitionBlock:(id)block;
+ (id)generateDuplicateGraphNameError:(id)error otherGraph:(id)graph;
+ (id)listifyTokens:(id)tokens;
+ (id)resourceClassToString:(unint64_t)string;
+ (id)validateAllocatorsNonnull:(id)nonnull withContext:(id)context;
+ (id)validateBarriersHaveUnblockingTask:(id)task;
+ (id)validateCadencedWaitInput:(id)input requestedStride:(id)stride resource:(id)resource graphName:(id)name;
+ (id)validateCreationModeCompatibility:(id)compatibility withContext:(id)context;
+ (id)validateGraphFrequencyValidMultiples:(id)multiples withContext:(id)context withDevice:(id)device isLocalReplaySession:(BOOL)session;
+ (id)validateIOSurfaceMetadataProvider:(id)provider;
+ (id)validateIOSurfaceMetadataResourceClass:(id)class;
+ (id)validateIntermediateStreamClassesSupported:(id)supported withContext:(id)context;
+ (id)validateKeyStringLength:(id)length;
+ (id)validateLastNBufferDepths:(id)depths withContext:(id)context isLocalReplaySession:(BOOL)session;
+ (id)validateNoDuplicateGraphAddition:(id)addition;
+ (id)validateNoDuplicateGraphNames:(id)names session:(id)session;
+ (id)validateNoDuplicateGraphRemoval:(id)removal;
+ (id)validateNoDuplicateOutputs:(id)outputs;
+ (id)validateNoDuplicateTaskKeys:(id)keys;
+ (id)validateNumGraphs:(id)graphs;
+ (id)validateNumInputs:(id)inputs;
+ (id)validateNumOutputs:(id)outputs;
+ (id)validateNumTasks:(id)tasks;
+ (id)validateResourcesAvailable:(id)available withContext:(id)context withDevice:(id)device;
+ (id)validateRetainedInputsEnabled:(id)enabled withContext:(id)context;
+ (id)validateRetainedInputsNotLastN:(id)n withContext:(id)context;
+ (id)validateRetainedInputsNotNested:(id)nested withContext:(id)context;
+ (id)validateSequencedTeardownLeaderExists:(id)exists;
+ (id)validateSimpleWaitInputFrequency:(unint64_t)frequency requested:(unint64_t)requested resource:(id)resource graphName:(id)name isLocalReplaySession:(BOOL)session;
+ (id)validateStorageModeCompatibility:(id)compatibility withContext:(id)context;
+ (id)validateTaskPointersUnique:(id)unique;
+ (id)validateWriterNotRemovedBeforeReader:(id)reader withContext:(id)context;
@end

@implementation PSGraphValidation

+ (BOOL)validateTransitionBlock:(id)block forSession:(id)session error:(id *)error
{
  blockCopy = block;
  sessionCopy = session;
  context = [sessionCopy context];
  device = [sessionCopy device];
  dashboard = [sessionCopy dashboard];
  isLocalReplaySession = [dashboard isLocalReplaySession];

  v13 = [PSGraphValidation validateResourcesAvailable:blockCopy withContext:context withDevice:device];
  if (!v13)
  {
    v13 = [PSGraphValidation validateKeyStringLength:blockCopy];
    if (!v13)
    {
      v13 = [PSGraphValidation validateNoDuplicateTaskKeys:blockCopy];
      if (!v13)
      {
        v13 = [PSGraphValidation validateNumGraphs:blockCopy];
        if (!v13)
        {
          v13 = [PSGraphValidation validateNoDuplicateOutputs:blockCopy];
          if (!v13)
          {
            v13 = [PSGraphValidation validateNumTasks:blockCopy];
            if (!v13)
            {
              v13 = [PSGraphValidation validateKeyStringLength:blockCopy];
              if (!v13)
              {
                v13 = [PSGraphValidation validateNumInputs:blockCopy];
                if (!v13)
                {
                  v13 = [PSGraphValidation validateNumOutputs:blockCopy];
                  if (!v13)
                  {
                    v13 = [PSGraphValidation validateGraphFrequencyValidMultiples:blockCopy withContext:context withDevice:device isLocalReplaySession:isLocalReplaySession];
                    if (!v13)
                    {
                      v13 = [PSGraphValidation validateReaderWriterGraphs:blockCopy];
                      if (!v13)
                      {
                        v13 = [PSGraphValidation validateIntermediateStreamClassesSupported:blockCopy withContext:context];
                        if (!v13)
                        {
                          v13 = [PSGraphValidation validateNoDuplicateGraphAddition:blockCopy];
                          if (!v13)
                          {
                            v13 = [PSGraphValidation validateNoDuplicateGraphRemoval:blockCopy];
                            if (!v13)
                            {
                              v13 = [PSGraphValidation validateTaskPointersUnique:blockCopy];
                              if (!v13)
                              {
                                v13 = [PSGraphValidation validateAllocatorsNonnull:blockCopy withContext:context];
                                if (!v13)
                                {
                                  v13 = [PSGraphValidation validateBarriersHaveUnblockingTask:blockCopy];
                                  if (!v13)
                                  {
                                    v13 = [PSGraphValidation validateLastNBufferDepths:blockCopy withContext:context isLocalReplaySession:isLocalReplaySession];
                                    if (!v13)
                                    {
                                      v13 = [PSGraphValidation validateRetainedInputsEnabled:blockCopy withContext:context];
                                      if (!v13)
                                      {
                                        v13 = [PSGraphValidation validateRetainedInputsNotLastN:blockCopy withContext:context];
                                        if (!v13)
                                        {
                                          v13 = [PSGraphValidation validateRetainedInputsNotNested:blockCopy withContext:context];
                                          if (!v13)
                                          {
                                            v13 = [PSGraphValidation validateSequencedTeardownLeaderExists:blockCopy];
                                            if (!v13)
                                            {
                                              v13 = [PSGraphValidation validateIOSurfaceMetadataResourceClass:blockCopy];
                                              if (!v13)
                                              {
                                                v13 = [PSGraphValidation validateIOSurfaceMetadataProvider:blockCopy];
                                                if (!v13)
                                                {
                                                  v13 = [PSGraphValidation validateStorageModeCompatibility:blockCopy withContext:context];
                                                  if (!v13)
                                                  {
                                                    v13 = [PSGraphValidation validateCreationModeCompatibility:blockCopy withContext:context];
                                                    if (!v13)
                                                    {
                                                      v13 = [PSGraphValidation validateGraphCriticality:blockCopy];
                                                      if (!v13)
                                                      {
                                                        v13 = [PSGraphValidation validateWriterNotRemovedBeforeReader:blockCopy withContext:context];
                                                        if (!v13)
                                                        {
                                                          v14 = [PSGraphValidation validateNoDuplicateGraphNames:blockCopy session:sessionCopy];
                                                          if (!v14)
                                                          {
                                                            v16 = 1;
                                                            goto LABEL_34;
                                                          }

                                                          if (error)
                                                          {
                                                            goto LABEL_30;
                                                          }

LABEL_33:
                                                          v16 = 0;
                                                          goto LABEL_34;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = v13;
  if (!error)
  {
    goto LABEL_33;
  }

LABEL_30:
  v15 = v14;
  v16 = 0;
  *error = v14;
LABEL_34:

  return v16;
}

+ (id)validateNoDuplicateOutputs:(id)outputs
{
  v95 = *MEMORY[0x277D85DE8];
  outputsCopy = outputs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PSGraphValidation_validateNoDuplicateOutputs___block_invoke;
  aBlock[3] = &unk_279A48438;
  v45 = v4;
  v87 = v45;
  v5 = _Block_copy(aBlock);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v46 = outputsCopy;
  obj = [outputsCopy postTransitionGraphs];
  v49 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v49)
  {
    v48 = *v83;
    do
    {
      v6 = 0;
      do
      {
        if (*v83 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v82 + 1) + 8 * v6);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v50 = v6;
        v51 = v7;
        tasks = [v7 tasks];
        v56 = [tasks countByEnumeratingWithState:&v78 objects:v93 count:16];
        if (v56)
        {
          v54 = *v79;
          do
          {
            for (i = 0; i != v56; ++i)
            {
              if (*v79 != v54)
              {
                objc_enumerationMutation(tasks);
              }

              v9 = *(*(&v78 + 1) + 8 * i);
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              outputs = [v9 outputs];
              v11 = [outputs countByEnumeratingWithState:&v74 objects:v92 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v75;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v75 != v13)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v74 + 1) + 8 * j) resourceKey];
                    name = [v9 name];
                    v5[2](v5, resourceKey, name);
                  }

                  v12 = [outputs countByEnumeratingWithState:&v74 objects:v92 count:16];
                }

                while (v12);
              }
            }

            v56 = [tasks countByEnumeratingWithState:&v78 objects:v93 count:16];
          }

          while (v56);
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        sourceTasks = [v51 sourceTasks];
        v57 = [sourceTasks countByEnumeratingWithState:&v70 objects:v91 count:16];
        if (v57)
        {
          v55 = *v71;
          do
          {
            for (k = 0; k != v57; ++k)
            {
              if (*v71 != v55)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v18 = *(*(&v70 + 1) + 8 * k);
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              outputs2 = [v18 outputs];
              v20 = [outputs2 countByEnumeratingWithState:&v66 objects:v90 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v67;
                do
                {
                  for (m = 0; m != v21; ++m)
                  {
                    if (*v67 != v22)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    resourceKey2 = [*(*(&v66 + 1) + 8 * m) resourceKey];
                    name2 = [v18 name];
                    v5[2](v5, resourceKey2, name2);
                  }

                  v21 = [outputs2 countByEnumeratingWithState:&v66 objects:v90 count:16];
                }

                while (v21);
              }
            }

            v57 = [sourceTasks countByEnumeratingWithState:&v70 objects:v91 count:16];
          }

          while (v57);
        }

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        writers = [v51 writers];
        v27 = [writers countByEnumeratingWithState:&v62 objects:v89 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v63;
          do
          {
            for (n = 0; n != v28; ++n)
            {
              if (*v63 != v29)
              {
                objc_enumerationMutation(writers);
              }

              v31 = *(*(&v62 + 1) + 8 * n);
              output = [v31 output];

              if (output)
              {
                output2 = [v31 output];
                resourceKey3 = [output2 resourceKey];
                name3 = [v31 name];
                v5[2](v5, resourceKey3, name3);
              }
            }

            v28 = [writers countByEnumeratingWithState:&v62 objects:v89 count:16];
          }

          while (v28);
        }

        v6 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
    }

    while (v49);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v36 = v45;
  v37 = [v36 countByEnumeratingWithState:&v58 objects:v88 count:16];
  if (v37)
  {
    v38 = *v59;
    v39 = v46;
    while (2)
    {
      for (ii = 0; ii != v37; ii = ii + 1)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v58 + 1) + 8 * ii);
        v42 = [v36 objectForKey:v41];
        if ([v42 count] > 1)
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Multiple producers found for key %@. Producers: %@", v41, v42];
          v37 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v43 recoverySuggestion:@"Multiple producers are not allowed to write to the same buffer."];

          goto LABEL_56;
        }
      }

      v37 = [v36 countByEnumeratingWithState:&v58 objects:v88 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }

    v43 = v36;
  }

  else
  {
    v43 = v36;
    v39 = v46;
  }

LABEL_56:

  return v37;
}

void __48__PSGraphValidation_validateNoDuplicateOutputs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v7];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setObject:v6 forKey:v7];
  }

  [v6 addObject:v5];
}

+ (id)validateNoDuplicateTaskKeys:(id)keys
{
  v76 = *MEMORY[0x277D85DE8];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  addedGraphs = [keys addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v4)
  {
    v5 = 0x277CBE000uLL;
    v6 = *v68;
    v48 = *v68;
    do
    {
      v7 = 0;
      v49 = v4;
      do
      {
        if (*v68 != v6)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v50 = v7;
        v8 = *(*(&v67 + 1) + 8 * v7);
        v9 = objc_alloc_init(*(v5 + 2904));
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        tasks = [v8 tasks];
        v11 = [tasks countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v64;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v64 != v13)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v63 + 1) + 8 * i);
              name = [v15 name];
              v17 = [v9 containsObject:name];

              if (v17)
              {
                v41 = @"Task keys do not need to be globally unique, but they must be unique within the graph. If you have multiple serial processing steps, or parallel tasks operating on the same data (ie Left/Right pairs), try using more descriptive names to enhance debuggability.";
                v42 = @"A duplicate task key was found for %@ in graph %@";
LABEL_45:
                v43 = MEMORY[0x277CCACA8];
                name2 = [v15 name];
                name3 = [v8 name];
                v46 = [v43 stringWithFormat:v42, name2, name3];

                v40 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-102 description:v46 recoverySuggestion:v41];

                addedGraphs = v46;
                goto LABEL_46;
              }

              name4 = [v15 name];
              [v9 addObject:name4];
            }

            v12 = [tasks countByEnumeratingWithState:&v63 objects:v74 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        tasks = [v8 sourceTasks];
        v19 = [tasks countByEnumeratingWithState:&v59 objects:v73 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v60;
          while (2)
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v60 != v21)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v59 + 1) + 8 * j);
              name5 = [v15 name];
              v24 = [v9 containsObject:name5];

              if (v24)
              {
                v42 = @"A duplicate source task key was found for %@ in graph %@";
                v41 = @"Source task keys do not need to be globally unique, but they must be unique within the graph. If you have multiple serial processing steps, or parallel tasks operating on the same data (ie Left/Right pairs), try using more descriptive names to enhance debuggability.";
                goto LABEL_45;
              }

              name6 = [v15 name];
              [v9 addObject:name6];
            }

            v20 = [tasks countByEnumeratingWithState:&v59 objects:v73 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        tasks = [v8 writers];
        v26 = [tasks countByEnumeratingWithState:&v55 objects:v72 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v56;
          while (2)
          {
            for (k = 0; k != v27; ++k)
            {
              if (*v56 != v28)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v55 + 1) + 8 * k);
              name7 = [v15 name];
              v31 = [v9 containsObject:name7];

              if (v31)
              {
                v42 = @"A duplicate writer key was found for %@ in graph %@";
                v41 = @"Writer keys do not need to be globally unique, but they must be unique within the graph. If you have multiple serial processing steps, or parallel tasks operating on the same data (ie Left/Right pairs), try using more descriptive names to enhance debuggability.";
                goto LABEL_45;
              }

              name8 = [v15 name];
              [v9 addObject:name8];
            }

            v27 = [tasks countByEnumeratingWithState:&v55 objects:v72 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        tasks = [v8 readers];
        v33 = [tasks countByEnumeratingWithState:&v51 objects:v71 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v52;
          while (2)
          {
            for (m = 0; m != v34; ++m)
            {
              if (*v52 != v35)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v51 + 1) + 8 * m);
              name9 = [v15 name];
              v38 = [v9 containsObject:name9];

              if (v38)
              {
                v42 = @"A duplicate reader key was found for %@ in graph %@";
                v41 = @"Reader keys do not need to be globally unique, but they must be unique within the graph. ";
                goto LABEL_45;
              }

              name10 = [v15 name];
              [v9 addObject:name10];
            }

            v34 = [tasks countByEnumeratingWithState:&v51 objects:v71 count:16];
            if (v34)
            {
              continue;
            }

            break;
          }
        }

        v7 = v50 + 1;
        v5 = 0x277CBE000;
        v6 = v48;
      }

      while (v50 + 1 != v49);
      v4 = [addedGraphs countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v4);
  }

  v40 = 0;
LABEL_46:

  return v40;
}

+ (id)validateNumGraphs:(id)graphs
{
  postTransitionGraphs = [graphs postTransitionGraphs];
  v4 = [postTransitionGraphs count];

  if (v4 < 0x81)
  {
    v7 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too many graphs submitted (%llu), maximum allowed is %d", v4, 128];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"The maximum graph count is %d per-process. If possible, try coalescing same-criticality and same-frequency graphs into singular graphs with multiple tasks to reduce the overall graph count.", 128];
    v7 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v5 recoverySuggestion:v6];
  }

  return v7;
}

+ (id)validateNumTasks:(id)tasks
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  addedGraphs = [tasks addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    obj = addedGraphs;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v30 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v29 + 1) + 8 * v7);
      tasks = [v8 tasks];
      v10 = [tasks count];

      if (v10 >= 0x41)
      {
        break;
      }

      tasks2 = [v8 tasks];
      v12 = [tasks2 count];
      sourceTasks = [v8 sourceTasks];
      v14 = [sourceTasks count] + v12;
      readers = [v8 readers];
      v16 = v14 + [readers count];
      writers = [v8 writers];
      v18 = [writers count];

      if (!(v16 + v18))
      {
        v23 = MEMORY[0x277CCACA8];
        name = [v8 name];
        v22 = [v23 stringWithFormat:@"graph %@ is empty, total tasks/sourcetasks/readers/writers (%llu)", name, 0];

        [MEMORY[0x277CCACA8] stringWithFormat:@"Have at least 1 task/reader/writer in your graph", v27];
        goto LABEL_13;
      }

      if (v5 == ++v7)
      {
        addedGraphs = obj;
        v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v20 = MEMORY[0x277CCACA8];
    name2 = [v8 name];
    v22 = [v20 stringWithFormat:@"Too many tasks (%llu) submitted for graph %@, maximum allowed is %d", v10, name2, 64];

    [MEMORY[0x277CCACA8] stringWithFormat:@"The maximum task count is %d per-graph. If this error is occurring, it is likely that task granularity for this graph is too fine. Try coalescing serial tasks executing on the same compute agent into singular tasks.", 64];
    v25 = LABEL_13:;
    v19 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v22 recoverySuggestion:v25];

    addedGraphs = v22;
    goto LABEL_14;
  }

LABEL_10:
  v19 = 0;
LABEL_14:

  return v19;
}

+ (id)validateNumInputs:(id)inputs
{
  v61 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  addedGraphs = [inputs addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v54;
    do
    {
      v7 = 0;
      do
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v40 = v7;
        v8 = *(*(&v53 + 1) + 8 * v7);
        if (![v8 workloadWait])
        {
          v37 = v5;
          v38 = v6;
          v39 = addedGraphs;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v36 = v8;
          tasks = [v8 tasks];
          v16 = [tasks countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v50;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v50 != v18)
                {
                  objc_enumerationMutation(tasks);
                }

                v14 = *(*(&v49 + 1) + 8 * i);
                waitBarriers = [v14 waitBarriers];
                v21 = [waitBarriers count];

                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
                inputs = [v14 inputs];
                v23 = [inputs countByEnumeratingWithState:&v45 objects:v58 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v46;
                  do
                  {
                    for (j = 0; j != v24; ++j)
                    {
                      if (*v46 != v25)
                      {
                        objc_enumerationMutation(inputs);
                      }

                      if (![*(*(&v45 + 1) + 8 * j) type])
                      {
                        ++v21;
                      }
                    }

                    v24 = [inputs countByEnumeratingWithState:&v45 objects:v58 count:16];
                  }

                  while (v24);
                }

                if (!v21)
                {
                  addedGraphs = v39;
                  v30 = @"Tasks should have at least 1 thing to wait on, whether a wait input or a barrier. Only source tasks / writers can be without any inputs at all";
                  v29 = @"task %@ has zero wait inputs/barriers";
LABEL_39:
                  v31 = MEMORY[0x277CCACA8];
                  name = [v14 name];
                  v33 = [v31 stringWithFormat:v29, name];

                  v34 = [MEMORY[0x277CCACA8] stringWithFormat:v30];
                  v28 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v33 recoverySuggestion:v34];

                  addedGraphs = v33;
                  goto LABEL_40;
                }
              }

              v17 = [tasks countByEnumeratingWithState:&v49 objects:v59 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v6 = v38;
          addedGraphs = v39;
          v8 = v36;
          v5 = v37;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        tasks = [v8 readers];
        v10 = [tasks countByEnumeratingWithState:&v41 objects:v57 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v42;
          while (2)
          {
            for (k = 0; k != v11; ++k)
            {
              if (*v42 != v12)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v41 + 1) + 8 * k);
              input = [v14 input];
              if (!input)
              {
                v29 = @"Reader %@ zero inputs";
                v30 = @"Readers should have 1 input. Only source tasks / writers can be without any inputs";
                goto LABEL_39;
              }
            }

            v11 = [tasks countByEnumeratingWithState:&v41 objects:v57 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v40 + 1;
      }

      while (v40 + 1 != v5);
      v27 = [addedGraphs countByEnumeratingWithState:&v53 objects:v60 count:16];
      v5 = v27;
    }

    while (v27);
  }

  v28 = 0;
LABEL_40:

  return v28;
}

+ (id)validateNumOutputs:(id)outputs
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  addedGraphs = [outputs addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v4)
  {
    v5 = *v40;
    v30 = @"Source Tasks should have at least 1 output. Only tasks / readers can be without any outputs";
    v28 = *v40;
    do
    {
      v6 = 0;
      v29 = v4;
      do
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v7 = *(*(&v39 + 1) + 8 * v6);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        sourceTasks = [v7 sourceTasks];
        v9 = [sourceTasks countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v36;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v36 != v11)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v13 = *(*(&v35 + 1) + 8 * i);
              outputs = [v13 outputs];
              v15 = [outputs count];

              if (!v15)
              {
                v22 = @"source task %@ with zero outputs";
LABEL_27:
                v23 = MEMORY[0x277CCACA8];
                name = [v13 name];
                v25 = [v23 stringWithFormat:v22, name];

                v26 = [MEMORY[0x277CCACA8] stringWithFormat:v30];
                v21 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v25 recoverySuggestion:v26];

                addedGraphs = v25;
                goto LABEL_28;
              }
            }

            v10 = [sourceTasks countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        sourceTasks = [v7 writers];
        v16 = [sourceTasks countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v32;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v13 = *(*(&v31 + 1) + 8 * j);
              output = [v13 output];
              if (!output)
              {
                v22 = @"Writer %@ with zero outputs";
                v30 = @"Writers should have 1 output. Only tasks / reader can be without any outputs";
                goto LABEL_27;
              }
            }

            v17 = [sourceTasks countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        ++v6;
        v5 = v28;
      }

      while (v6 != v29);
      v4 = [addedGraphs countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v4);
  }

  v21 = 0;
LABEL_28:

  return v21;
}

+ (id)validateKeyStringLength:(id)length
{
  v121 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  addedGraphs = [lengthCopy addedGraphs];
  v6 = [addedGraphs countByEnumeratingWithState:&v110 objects:v120 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v111;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v111 != v8)
      {
        objc_enumerationMutation(addedGraphs);
      }

      v10 = *(*(&v110 + 1) + 8 * v9);
      name = [v10 name];
      if (!name)
      {
        break;
      }

      v12 = name;
      name2 = [v10 name];
      v14 = [name2 length];

      if (!v14)
      {
        break;
      }

      name3 = [v10 name];
      v16 = [name3 length];

      if (v16 >= 0x101)
      {
        v78 = MEMORY[0x277CCACA8];
        name4 = [v10 name];
        name5 = [v10 name];
        v71 = [v78 stringWithFormat:@"The graph name %@ has length %lu, which exceeds the length limit of %d", name4, objc_msgSend(name5, "length"), 256];

        v72 = MEMORY[0x277CCA9B8];
        v73 = -104;
        goto LABEL_67;
      }

      v81 = v9;
      v82 = v7;
      v83 = v8;
      v84 = addedGraphs;
      v85 = lengthCopy;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      tasks = [v10 tasks];
      v18 = [tasks countByEnumeratingWithState:&v106 objects:v119 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v107;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v107 != v20)
            {
              objc_enumerationMutation(tasks);
            }

            v22 = *(*(&v106 + 1) + 8 * i);
            name6 = [v22 name];
            if (!name6 || (v24 = name6, [v22 name], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "length"), v25, v24, !v26))
            {
              v69 = MEMORY[0x277CCACA8];
              name7 = [v10 name];
              [v69 stringWithFormat:@"The task name for %p in graph %@ was not set", v22, name7];
              v71 = LABEL_72:;

              v68 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v71];

              addedGraphs = v84;
              lengthCopy = v85;
              goto LABEL_73;
            }

            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            updateBarriers = [v22 updateBarriers];
            v28 = [updateBarriers countByEnumeratingWithState:&v102 objects:v118 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v103;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v103 != v30)
                  {
                    objc_enumerationMutation(updateBarriers);
                  }

                  [v4 addObject:*(*(&v102 + 1) + 8 * j)];
                }

                v29 = [updateBarriers countByEnumeratingWithState:&v102 objects:v118 count:16];
              }

              while (v29);
            }
          }

          v19 = [tasks countByEnumeratingWithState:&v106 objects:v119 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      tasks = [v10 sourceTasks];
      v32 = [tasks countByEnumeratingWithState:&v98 objects:v117 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v99;
        while (2)
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v99 != v34)
            {
              objc_enumerationMutation(tasks);
            }

            v36 = *(*(&v98 + 1) + 8 * k);
            name8 = [v36 name];
            if (name8)
            {
              v38 = name8;
              name9 = [v36 name];
              v40 = [name9 length];

              if (v40)
              {
                continue;
              }
            }

            v74 = MEMORY[0x277CCACA8];
            name7 = [v10 name];
            [v74 stringWithFormat:@"The source task name for %p in graph %@ was not set", v36, name7];
            goto LABEL_72;
          }

          v33 = [tasks countByEnumeratingWithState:&v98 objects:v117 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      tasks = [v10 readers];
      v41 = [tasks countByEnumeratingWithState:&v94 objects:v116 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v95;
        while (2)
        {
          for (m = 0; m != v42; ++m)
          {
            if (*v95 != v43)
            {
              objc_enumerationMutation(tasks);
            }

            v45 = *(*(&v94 + 1) + 8 * m);
            name10 = [v45 name];
            if (name10)
            {
              v47 = name10;
              name11 = [v45 name];
              v49 = [name11 length];

              if (v49)
              {
                continue;
              }
            }

            v75 = MEMORY[0x277CCACA8];
            name7 = [v10 name];
            [v75 stringWithFormat:@"The reader name for %p in graph %@ was not set", v45, name7];
            goto LABEL_72;
          }

          v42 = [tasks countByEnumeratingWithState:&v94 objects:v116 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      tasks = [v10 writers];
      v50 = [tasks countByEnumeratingWithState:&v90 objects:v115 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v91;
        while (2)
        {
          for (n = 0; n != v51; ++n)
          {
            if (*v91 != v52)
            {
              objc_enumerationMutation(tasks);
            }

            v54 = *(*(&v90 + 1) + 8 * n);
            name12 = [v54 name];
            if (name12)
            {
              v56 = name12;
              name13 = [v54 name];
              v58 = [name13 length];

              if (v58)
              {
                continue;
              }
            }

            v76 = MEMORY[0x277CCACA8];
            name7 = [v10 name];
            [v76 stringWithFormat:@"The writer name for %p in graph %@ was not set", v54, name7];
            goto LABEL_72;
          }

          v51 = [tasks countByEnumeratingWithState:&v90 objects:v115 count:16];
          if (v51)
          {
            continue;
          }

          break;
        }
      }

      v7 = v82;
      v9 = v81 + 1;
      addedGraphs = v84;
      lengthCopy = v85;
      v8 = v83;
      if (v81 + 1 == v82)
      {
        v7 = [v84 countByEnumeratingWithState:&v110 objects:v120 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_54;
      }
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"The graph name for %p was not set", v10];
    v71 = LABEL_66:;
    v72 = MEMORY[0x277CCA9B8];
    v73 = -100;
LABEL_67:
    v68 = [v72 polarisErrorWithCode:v73 description:v71];
LABEL_73:

    addedGraphs = v71;
    goto LABEL_74;
  }

LABEL_54:

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  addedGraphs = v4;
  v59 = [addedGraphs countByEnumeratingWithState:&v86 objects:v114 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v87;
    while (2)
    {
      for (ii = 0; ii != v60; ++ii)
      {
        if (*v87 != v61)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v63 = *(*(&v86 + 1) + 8 * ii);
        name14 = [v63 name];
        if (name14)
        {
          v65 = name14;
          name15 = [v63 name];
          v67 = [name15 length];

          if (v67)
          {
            continue;
          }
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"The barrier name for %p was not set", v63];
        goto LABEL_66;
      }

      v60 = [addedGraphs countByEnumeratingWithState:&v86 objects:v114 count:16];
      if (v60)
      {
        continue;
      }

      break;
    }
  }

  v68 = 0;
LABEL_74:

  return v68;
}

+ (id)validateSimpleWaitInputFrequency:(unint64_t)frequency requested:(unint64_t)requested resource:(id)resource graphName:(id)name isLocalReplaySession:(BOOL)session
{
  sessionCopy = session;
  v29 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  nameCopy = name;
  if (!frequency)
  {
    v18 = 0;
    goto LABEL_24;
  }

  if (requested <= frequency)
  {
    frequency = 0;
  }

  else
  {
    frequency = [MEMORY[0x277CCACA8] stringWithFormat:@"The graph %@ is attempting to run faster (%lu fps) than one of its PSInputTypeWait inputs is being produced (%@ at %lu fps).", nameCopy, requested, resourceCopy, frequency];
    v14 = +[PLSSettings currentSettings];
    enableFastTransition = [v14 enableFastTransition];

    if (enableFastTransition)
    {
      v17 = !sessionCopy;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v18 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:frequency recoverySuggestion:{@"The graph frequency must be equal-to or lower-than the requested PSInputTypeWait input frequencies. If the graph needs access to a slower resource, consider moving the resource input type to PSInputTypePull or PSInputTypePullOptional"}];
      goto LABEL_21;
    }

    v19 = __PLSLogSharedInstance(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = frequency;
      _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  if (frequency % requested)
  {
    frequency2 = [MEMORY[0x277CCACA8] stringWithFormat:@"The graph %@ is requesting resource %@ at frequency %lu fps, which is a non-integer multiple of the resource's base rate (%lu fps).", nameCopy, resourceCopy, requested, frequency];

    v22 = +[PLSSettings currentSettings];
    enableFastTransition2 = [v22 enableFastTransition];

    if (enableFastTransition2 && sessionCopy)
    {
      v25 = __PLSLogSharedInstance(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = frequency2;
        _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v18 = 0;
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:frequency2];
    }

    goto LABEL_23;
  }

  v18 = 0;
LABEL_21:
  frequency2 = frequency;
LABEL_23:

LABEL_24:

  return v18;
}

+ (id)validateCadencedWaitInput:(id)input requestedStride:(id)stride resource:(id)resource graphName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  strideCopy = stride;
  resourceCopy = resource;
  nameCopy = name;
  if ([inputCopy containsObject:strideCopy])
  {
    v13 = 0;
  }

  else
  {
    unsignedIntValue = [strideCopy unsignedIntValue];
    v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    inputCopy = [inputCopy sortedArrayUsingDescriptors:v16];

    v18 = [inputCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(inputCopy);
          }

          if (!(unsignedIntValue % [*(*(&v23 + 1) + 8 * i) unsignedIntValue]))
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v19 = [inputCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    inputCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The graph %@ is requesting resource %@ at stride %@, which cannot be supported by strides %@", nameCopy, resourceCopy, strideCopy, inputCopy];
    v13 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:inputCopy recoverySuggestion:{@"The graph's system pulse stride must be equal-to or lower-than some supported stride.If the graph needs access to a slower resource, consider moving the resource input type to PSInputTypePull or PSInputTypePullOptional"}];
LABEL_13:
  }

  return v13;
}

+ (id)validateGraphFrequencyValidMultiples:(id)multiples withContext:(id)context withDevice:(id)device isLocalReplaySession:(BOOL)session
{
  sessionCopy = session;
  v177 = *MEMORY[0x277D85DE8];
  multiplesCopy = multiples;
  contextCopy = context;
  deviceCopy = device;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v122 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v99 = multiplesCopy;
  obj = [multiplesCopy postTransitionGraphs];
  v110 = [obj countByEnumeratingWithState:&v161 objects:v176 count:16];
  if (v110)
  {
    v108 = *v162;
    do
    {
      v10 = 0;
      do
      {
        if (*v162 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v113 = v10;
        v11 = *(*(&v161 + 1) + 8 * v10);
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        tasks = [v11 tasks];
        v12 = [tasks countByEnumeratingWithState:&v157 objects:v175 count:16];
        if (v12)
        {
          v13 = v12;
          v119 = *v158;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v158 != v119)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v157 + 1) + 8 * i);
              v153 = 0u;
              v154 = 0u;
              v155 = 0u;
              v156 = 0u;
              outputs = [v15 outputs];
              v17 = [outputs countByEnumeratingWithState:&v153 objects:v174 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v154;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v154 != v19)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v21 = *(*(&v153 + 1) + 8 * j);
                    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "resolvedFrequency")}];
                    resourceKey = [v21 resourceKey];
                    [v9 setObject:v22 forKeyedSubscript:resourceKey];
                  }

                  v18 = [outputs countByEnumeratingWithState:&v153 objects:v174 count:16];
                }

                while (v18);
              }
            }

            v13 = [tasks countByEnumeratingWithState:&v157 objects:v175 count:16];
          }

          while (v13);
        }

        v10 = v113 + 1;
      }

      while ((v113 + 1) != v110);
      v110 = [obj countByEnumeratingWithState:&v161 objects:v176 count:16];
    }

    while (v110);
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  addedGraphs = [v99 addedGraphs];
  v24 = contextCopy;
  obja = [addedGraphs countByEnumeratingWithState:&v149 objects:v173 count:16];
  if (obja)
  {
    v103 = *v150;
    do
    {
      v25 = 0;
      do
      {
        if (*v150 != v103)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v109 = v25;
        v26 = *(*(&v149 + 1) + 8 * v25);
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        tasks2 = [v26 tasks];
        v117 = [tasks2 countByEnumeratingWithState:&v145 objects:v172 count:16];
        if (v117)
        {
          v114 = *v146;
          do
          {
            v27 = 0;
            do
            {
              if (*v146 != v114)
              {
                objc_enumerationMutation(tasks2);
              }

              v120 = v27;
              v28 = *(*(&v145 + 1) + 8 * v27);
              v141 = 0u;
              v142 = 0u;
              v143 = 0u;
              v144 = 0u;
              inputs = [v28 inputs];
              v30 = [inputs countByEnumeratingWithState:&v141 objects:v171 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v142;
                do
                {
                  for (k = 0; k != v31; ++k)
                  {
                    if (*v142 != v32)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    resolvedResourceKey = [*(*(&v141 + 1) + 8 * k) resolvedResourceKey];
                    v35 = [v24 resourceStreamForKey:resolvedResourceKey];

                    if (!v35)
                    {
                      if (![deviceCopy hasSensor:resolvedResourceKey])
                      {
                        goto LABEL_44;
                      }

                      v36 = [deviceCopy propertiesForKey:resolvedResourceKey];
                      v44 = MEMORY[0x277CCABB0];
                      format = [v36 format];
                      allKeys = [v44 numberWithUnsignedInteger:{objc_msgSend(format, "frameRate")}];
                      [v9 setObject:allKeys forKeyedSubscript:resolvedResourceKey];
                      goto LABEL_42;
                    }

                    v36 = [v24 resourceStreamForKey:resolvedResourceKey];
                    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "framerate")}];
                    [v9 setObject:v37 forKeyedSubscript:resolvedResourceKey];

                    supportedStrides = [v36 supportedStrides];
                    v39 = [supportedStrides count];

                    if (v39)
                    {
                      v40 = MEMORY[0x277CBEB98];
                      format = [v36 supportedStrides];
                      allKeys = [format allKeys];
                      v43 = [v40 setWithArray:allKeys];
                      [v122 setObject:v43 forKeyedSubscript:resolvedResourceKey];

LABEL_42:
                      v24 = contextCopy;
                    }

LABEL_44:
                  }

                  v31 = [inputs countByEnumeratingWithState:&v141 objects:v171 count:16];
                }

                while (v31);
              }

              v27 = v120 + 1;
            }

            while ((v120 + 1) != v117);
            v117 = [tasks2 countByEnumeratingWithState:&v145 objects:v172 count:16];
          }

          while (v117);
        }

        v25 = v109 + 1;
      }

      while ((v109 + 1) != obja);
      obja = [addedGraphs countByEnumeratingWithState:&v149 objects:v173 count:16];
    }

    while (obja);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  allStreams = [v24 allStreams];
  v46 = [allStreams countByEnumeratingWithState:&v137 objects:v170 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v138;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v138 != v48)
        {
          objc_enumerationMutation(allStreams);
        }

        v50 = *(*(&v137 + 1) + 8 * m);
        if ([v50 framerate])
        {
          v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v50, "framerate")}];
          v52 = [v50 key];
          [v9 setObject:v51 forKeyedSubscript:v52];

          v24 = contextCopy;
        }
      }

      v47 = [allStreams countByEnumeratingWithState:&v137 objects:v170 count:16];
    }

    while (v47);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  addedGraphs2 = [v99 addedGraphs];
  v54 = [addedGraphs2 countByEnumeratingWithState:&v133 objects:v169 count:16];
  if (!v54)
  {
LABEL_94:
    v89 = 0;
    goto LABEL_97;
  }

  v55 = *v134;
  v95 = *v134;
LABEL_61:
  v56 = 0;
  v94 = v54;
LABEL_62:
  if (*v134 != v55)
  {
    objc_enumerationMutation(addedGraphs2);
  }

  v57 = *(*(&v133 + 1) + 8 * v56);
  resolvedFrequency = [v57 resolvedFrequency];
  if (resolvedFrequency)
  {
    v97 = v56;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    tasks3 = [v57 tasks];
    v98 = [tasks3 countByEnumeratingWithState:&v129 objects:v168 count:16];
    if (!v98)
    {
      goto LABEL_92;
    }

    v59 = *v130;
    v104 = addedGraphs2;
    objb = tasks3;
    v96 = *v130;
    while (1)
    {
      v60 = 0;
      do
      {
        if (*v130 != v59)
        {
          objc_enumerationMutation(tasks3);
        }

        v102 = v60;
        v61 = *(*(&v129 + 1) + 8 * v60);
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        inputs2 = [v61 inputs];
        v63 = [inputs2 countByEnumeratingWithState:&v125 objects:v167 count:16];
        if (!v63)
        {
          goto LABEL_90;
        }

        v64 = v63;
        v65 = *v126;
        v115 = *v126;
        while (2)
        {
          v66 = 0;
          v118 = v64;
          do
          {
            if (*v126 != v65)
            {
              objc_enumerationMutation(inputs2);
            }

            v67 = *(*(&v125 + 1) + 8 * v66);
            if (![v67 type])
            {
              resolvedResourceKey2 = [v67 resolvedResourceKey];
              v69 = [v122 objectForKeyedSubscript:resolvedResourceKey2];

              if (v69 && ([v57 systemPulseStride], v70 = objc_claimAutoreleasedReturnValue(), v70, v70))
              {
                systemPulseStride = [v57 systemPulseStride];
                resolvedResourceKey3 = [v67 resolvedResourceKey];
                name = [v57 name];
                v74 = [PSGraphValidation validateCadencedWaitInput:v69 requestedStride:systemPulseStride resource:resolvedResourceKey3 graphName:name];

                v64 = v118;
                v65 = v115;
                v24 = contextCopy;
                if (v74)
                {
                  v89 = v74;
LABEL_95:

                  addedGraphs2 = v104;
                  goto LABEL_96;
                }
              }

              else
              {
                v121 = v69;
                resolvedResourceKey4 = [v67 resolvedResourceKey];
                v76 = [v9 objectForKeyedSubscript:resolvedResourceKey4];

                if (v76)
                {
                  unsignedIntegerValue = [v76 unsignedIntegerValue];
                  resolvedResourceKey5 = [v67 resolvedResourceKey];
                  [v57 name];
                  v80 = inputs2;
                  v81 = v57;
                  v83 = v82 = v76;
                  v84 = [PSGraphValidation validateSimpleWaitInputFrequency:unsignedIntegerValue requested:resolvedFrequency resource:resolvedResourceKey5 graphName:v83 isLocalReplaySession:sessionCopy];

                  v76 = v82;
                  v57 = v81;
                  inputs2 = v80;
                  v65 = v115;

                  v64 = v118;
                  v24 = contextCopy;
                  if (v84)
                  {
                    v89 = v84;

                    v69 = v121;
                    goto LABEL_95;
                  }
                }

                else
                {
                  v85 = __PLSLogSharedInstance(v77);
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
                    resolvedResourceKey6 = [v67 resolvedResourceKey];
                    uTF8String = [resolvedResourceKey6 UTF8String];
                    *buf = 136315138;
                    v166 = uTF8String;
                    _os_log_impl(&dword_25EA3A000, v85, OS_LOG_TYPE_ERROR, "An input resource (%s) was not yet defined in the context. Perhaps this will be populated by another process?", buf, 0xCu);
                  }

                  v24 = contextCopy;
                }

                v69 = v121;
              }
            }

            ++v66;
          }

          while (v64 != v66);
          v64 = [inputs2 countByEnumeratingWithState:&v125 objects:v167 count:16];
          if (v64)
          {
            continue;
          }

          break;
        }

LABEL_90:

        addedGraphs2 = v104;
        v60 = v102 + 1;
        tasks3 = objb;
        v59 = v96;
      }

      while (v102 + 1 != v98);
      v88 = [objb countByEnumeratingWithState:&v129 objects:v168 count:16];
      v59 = v96;
      v98 = v88;
      if (!v88)
      {
LABEL_92:

        v56 = v97 + 1;
        v55 = v95;
        if (v97 + 1 == v94)
        {
          v54 = [addedGraphs2 countByEnumeratingWithState:&v133 objects:v169 count:16];
          v55 = v95;
          if (!v54)
          {
            goto LABEL_94;
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }
  }

  v91 = MEMORY[0x277CCACA8];
  name2 = [v57 name];
  v93 = [v91 stringWithFormat:@"The graph %@ has an undefined frequency", name2];

  v24 = contextCopy;
  objb = v93;
  v89 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v93];
LABEL_96:

  addedGraphs2 = v89;
LABEL_97:

  return v89;
}

+ (id)validateResourcesAvailable:(id)available withContext:(id)context withDevice:(id)device
{
  v104 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v54 = availableCopy;
  obj = [availableCopy postTransitionGraphs];
  v58 = [obj countByEnumeratingWithState:&v92 objects:v103 count:16];
  if (v58)
  {
    v57 = *v93;
    do
    {
      v9 = 0;
      do
      {
        if (*v93 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v92 + 1) + 8 * v9);
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v59 = v9;
        v60 = v10;
        tasks = [v10 tasks];
        v11 = [tasks countByEnumeratingWithState:&v88 objects:v102 count:16];
        if (v11)
        {
          v12 = v11;
          v62 = *v89;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v89 != v62)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v88 + 1) + 8 * i);
              v84 = 0u;
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              inputs = [v14 inputs];
              v16 = [inputs countByEnumeratingWithState:&v84 objects:v101 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v85;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v85 != v18)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    resolvedResourceKey = [*(*(&v84 + 1) + 8 * j) resolvedResourceKey];
                    [v7 addObject:resolvedResourceKey];
                  }

                  v17 = [inputs countByEnumeratingWithState:&v84 objects:v101 count:16];
                }

                while (v17);
              }

              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              outputs = [v14 outputs];
              v22 = [outputs countByEnumeratingWithState:&v80 objects:v100 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v81;
                do
                {
                  for (k = 0; k != v23; ++k)
                  {
                    if (*v81 != v24)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v80 + 1) + 8 * k) resourceKey];
                    [v8 addObject:resourceKey];
                  }

                  v23 = [outputs countByEnumeratingWithState:&v80 objects:v100 count:16];
                }

                while (v23);
              }
            }

            v12 = [tasks countByEnumeratingWithState:&v88 objects:v102 count:16];
          }

          while (v12);
        }

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        sourceTasks = [v60 sourceTasks];
        v27 = [sourceTasks countByEnumeratingWithState:&v76 objects:v99 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v77;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v77 != v29)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v31 = *(*(&v76 + 1) + 8 * m);
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              outputs2 = [v31 outputs];
              v33 = [outputs2 countByEnumeratingWithState:&v72 objects:v98 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v73;
                do
                {
                  for (n = 0; n != v34; ++n)
                  {
                    if (*v73 != v35)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    resourceKey2 = [*(*(&v72 + 1) + 8 * n) resourceKey];
                    [v8 addObject:resourceKey2];
                  }

                  v34 = [outputs2 countByEnumeratingWithState:&v72 objects:v98 count:16];
                }

                while (v34);
              }
            }

            v28 = [sourceTasks countByEnumeratingWithState:&v76 objects:v99 count:16];
          }

          while (v28);
        }

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        writers = [v60 writers];
        v39 = [writers countByEnumeratingWithState:&v68 objects:v97 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v69;
          do
          {
            for (ii = 0; ii != v40; ++ii)
            {
              if (*v69 != v41)
              {
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v68 + 1) + 8 * ii) output];
              v44 = output;
              if (output)
              {
                resourceKey3 = [output resourceKey];
                [v8 addObject:resourceKey3];
              }
            }

            v40 = [writers countByEnumeratingWithState:&v68 objects:v97 count:16];
          }

          while (v40);
        }

        v9 = v59 + 1;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v92 objects:v103 count:16];
    }

    while (v58);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v46 = v8;
  v47 = [v46 countByEnumeratingWithState:&v64 objects:v96 count:16];
  if (v47)
  {
    v48 = *v65;
    while (2)
    {
      for (jj = 0; jj != v47; jj = jj + 1)
      {
        if (*v65 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v64 + 1) + 8 * jj);
        v51 = [contextCopy resourceStreamForKey:v50];

        if (!v51)
        {
          v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Output key %@ was not defined in client's PSContext", v50];
          v47 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v52];

          goto LABEL_62;
        }
      }

      v47 = [v46 countByEnumeratingWithState:&v64 objects:v96 count:16];
      if (v47)
      {
        continue;
      }

      break;
    }
  }

  v52 = v46;
LABEL_62:

  return v47;
}

+ (id)criticalityToString:(unint64_t)string
{
  if (string >= 4)
  {
    v6[1] = v3;
    v6[2] = v4;
    [(PSGraphValidation *)v6 criticalityToString:string];
  }

  return off_279A48458[string];
}

+ (id)validateIntermediateStreamClassesSupported:(id)supported withContext:(id)context
{
  v76 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  contextCopy = context;
  v46 = [MEMORY[0x277CBEB98] setWithArray:&unk_2870CBD60];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v44 = supportedCopy;
  obj = [supportedCopy postTransitionGraphs];
  v49 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v49)
  {
    v48 = *v68;
    do
    {
      v7 = 0;
      do
      {
        if (*v68 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v7;
        v8 = *(*(&v67 + 1) + 8 * v7);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        tasks = [v8 tasks];
        v10 = [tasks countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v64;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v64 != v12)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v63 + 1) + 8 * i);
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              outputs = [v14 outputs];
              v16 = [outputs countByEnumeratingWithState:&v59 objects:v73 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v60;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v60 != v18)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v59 + 1) + 8 * j) resourceKey];
                    [v6 addObject:resourceKey];
                  }

                  v17 = [outputs countByEnumeratingWithState:&v59 objects:v73 count:16];
                }

                while (v17);
              }
            }

            v11 = [tasks countByEnumeratingWithState:&v63 objects:v74 count:16];
          }

          while (v11);
        }

        v7 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v49);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = v6;
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v56;
    v25 = contextCopy;
    while (2)
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v55 + 1) + 8 * k);
        v28 = [contextCopy resourceStreamForKey:v27];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v28, "resourceClass")}];
        v30 = [v46 containsObject:v29];

        if ((v30 & 1) == 0)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v34 = v46;
          v35 = [v34 countByEnumeratingWithState:&v51 objects:v71 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v52;
            do
            {
              for (m = 0; m != v36; ++m)
              {
                if (*v52 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = +[PSGraphValidation resourceClassToString:](PSGraphValidation, "resourceClassToString:", [*(*(&v51 + 1) + 8 * m) unsignedIntValue]);
                [v33 addObject:v39];
              }

              v36 = [v34 countByEnumeratingWithState:&v51 objects:v71 count:16];
            }

            while (v36);
          }

          v40 = [PSGraphValidation listifyTokens:v33];
          v41 = MEMORY[0x277CCACA8];
          v42 = +[PSGraphValidation resourceClassToString:](PSGraphValidation, "resourceClassToString:", [v28 resourceClass]);
          v32 = [v41 stringWithFormat:@"Resource stream %@ of type %@ was instantiated in PSContext as an output, but Polaris does not yet support that type. Current supported types are: %@", v27, v42, v40];

          v31 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v32];

          goto LABEL_40;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v55 objects:v72 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v31 = 0;
    v32 = v21;
  }

  else
  {
    v31 = 0;
    v32 = v21;
LABEL_40:
    v25 = contextCopy;
  }

  return v31;
}

+ (id)resourceClassToString:(unint64_t)string
{
  v5 = string - 1;
  if (string - 1 >= 0xC || ((0xDFFu >> v5) & 1) == 0)
  {
    v7[1] = v3;
    v7[2] = v4;
    [(PSGraphValidation *)v7 resourceClassToString:string];
  }

  return off_279A48478[v5];
}

+ (id)validateNoDuplicateGraphAddition:(id)addition
{
  v39 = *MEMORY[0x277D85DE8];
  additionCopy = addition;
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  addedGraphs = [additionCopy addedGraphs];
  v6 = [v4 initWithSet:addedGraphs];

  removedGraphs = [additionCopy removedGraphs];
  [v6 intersectSet:removedGraphs];

  if ([v6 count])
  {
    addedGraphs2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          name = [*(*(&v33 + 1) + 8 * i) name];
          [addedGraphs2 appendString:name];

          [addedGraphs2 appendString:@" "];
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v11);
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Graphs %@ were removed and added in the same transition", addedGraphs2];
    v16 = MEMORY[0x277CCA9B8];
    v17 = @"Graphs cannot be removed and added as part of same transition. Please make sure that the graphs you are submitting using the added and removed list are unique with respect to each other. If an already running graphs needs to be removed and added dedicate a commit call just to remove the graph and use the next call to add that graph back.";
LABEL_20:
    v25 = [v16 polarisErrorWithCode:-103 description:v15 recoverySuggestion:v17];

    addedGraphs2 = v15;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    addedGraphs2 = [additionCopy addedGraphs];
    v18 = [addedGraphs2 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(addedGraphs2);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          preTransitionGraphs = [additionCopy preTransitionGraphs];
          v24 = [preTransitionGraphs containsObject:v22];

          if (v24)
          {
            v26 = MEMORY[0x277CCACA8];
            name2 = [v22 name];
            v15 = [v26 stringWithFormat:@"Graph %@ was already running, but submitted for re-addition.", name2];

            v16 = MEMORY[0x277CCA9B8];
            v17 = @"Graphs cannot be re-submitted if they are currently running. Please remove the currently-running graph from the transition addition set and try again. If a running graph is being modified in-place and being submitted, please create a new PSGraph object for the new graph instead.";
            goto LABEL_20;
          }
        }

        v19 = [addedGraphs2 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
  }

  return v25;
}

+ (id)validateNoDuplicateGraphRemoval:(id)removal
{
  v20 = *MEMORY[0x277D85DE8];
  removalCopy = removal;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  removedGraphs = [removalCopy removedGraphs];
  v5 = [removedGraphs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(removedGraphs);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        preTransitionGraphs = [removalCopy preTransitionGraphs];
        v10 = [preTransitionGraphs containsObject:v8];

        if (!v10)
        {
          v11 = MEMORY[0x277CCACA8];
          name = [v8 name];
          v13 = [v11 stringWithFormat:@"Graph %@ was not running, but submitted for removal.", name];

          v5 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-103 description:v13 recoverySuggestion:@"Graphs cannot be submitted for removal if they are not currently running. Please remove the currently-running graph from the transition removal set and try again."];

          removedGraphs = v13;
          goto LABEL_11;
        }
      }

      v5 = [removedGraphs countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)validateTaskPointersUnique:(id)unique
{
  v46 = *MEMORY[0x277D85DE8];
  uniqueCopy = unique;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  postTransitionGraphs = [uniqueCopy postTransitionGraphs];
  v7 = [postTransitionGraphs countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v7)
  {
    v30 = uniqueCopy;
    v8 = *v40;
    v28 = *v40;
    do
    {
      v9 = 0;
      v29 = v7;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        tasks = [v10 tasks];
        v12 = [tasks countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v36;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v36 != v14)
              {
                objc_enumerationMutation(tasks);
              }

              v16 = *(*(&v35 + 1) + 8 * i);
              if ([v4 containsObject:v16])
              {
                v22 = @"PSTask pointers must be unique across all running graphs. If a duplicate implementation is being used, ie for equivalent processing on a left/right frame pair, separate PSTask objects should be allocated. If a graph needs to be updated, ie Graph: {TaskA} and GraphUpdated: {TaskA, TaskB}, TaskA should be newly allocated for GraphUpdated.";
                v23 = @"A duplicate PSTask pointer was found for task %@";
LABEL_28:
                v24 = MEMORY[0x277CCACA8];
                name = [v16 name];
                v26 = [v24 stringWithFormat:v23, name];

                v21 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-103 description:v26 recoverySuggestion:v22];

                postTransitionGraphs = v26;
                goto LABEL_29;
              }

              [v4 addObject:v16];
            }

            v13 = [tasks countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        tasks = [v10 sourceTasks];
        v17 = [tasks countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v32;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(tasks);
              }

              v16 = *(*(&v31 + 1) + 8 * j);
              if ([v5 containsObject:v16])
              {
                v23 = @"A duplicate PSSourceTask pointer was found for task %@";
                v22 = @"PSSourceTask pointers must be unique across all running graphs. If a duplicate implementation is being used, ie for equivalent processing on a left/right frame pair, separate PSSourceTask objects should be allocated. If a graph needs to be updated, ie Graph: {SourceTaskA} and GraphUpdated: {SourceTaskA, SourceTaskB}, SourceTaskA should be newly allocated for GraphUpdated.";
                goto LABEL_28;
              }

              [v5 addObject:v16];
            }

            v18 = [tasks countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        ++v9;
        v8 = v28;
      }

      while (v9 != v29);
      v7 = [postTransitionGraphs countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
    v21 = 0;
LABEL_29:
    uniqueCopy = v30;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)validateCreationModeCompatibility:(id)compatibility withContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allStreams = [context allStreams];
  v5 = [allStreams countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = *v18;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(allStreams);
      }

      v8 = *(*(&v17 + 1) + 8 * i);
      resourceClass = [v8 resourceClass];
      [v8 options];
      if (resourceClass > 0xC)
      {
        goto LABEL_16;
      }

      if (((1 << resourceClass) & 0xBF0) != 0)
      {
        if ((v10 - 1) >= 2)
        {
          goto LABEL_20;
        }

        continue;
      }

      if (((1 << resourceClass) & 0x40C) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_20;
        }

        continue;
      }

      if (((1 << resourceClass) & 0x1002) != 0)
      {
        if (v10 != 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
LABEL_16:
        if (resourceClass)
        {
LABEL_20:
          v11 = MEMORY[0x277CCACA8];
          v12 = [v8 key];
          uTF8String = [v12 UTF8String];
          v14 = ps_resource_creation_mode_description();
          v15 = [v11 stringWithFormat:@"Invalid resource configuration found. Resource %s was declared with creation mode %s, which is not supported for resources of type %s.", uTF8String, v14, ps_resource_class_description()];

          v5 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-102 description:v15];

          goto LABEL_21;
        }
      }
    }

    v5 = [allStreams countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_21:

  return v5;
}

+ (id)validateAllocatorsNonnull:(id)nonnull withContext:(id)context
{
  v61 = *MEMORY[0x277D85DE8];
  nonnullCopy = nonnull;
  contextCopy = context;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v34 = nonnullCopy;
  obj = [nonnullCopy postTransitionGraphs];
  v38 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v38)
  {
    v37 = *v54;
    do
    {
      v7 = 0;
      do
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v7;
        v8 = *(*(&v53 + 1) + 8 * v7);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        tasks = [v8 tasks];
        v10 = [tasks countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v50;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v50 != v12)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v49 + 1) + 8 * i);
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              outputs = [v14 outputs];
              v16 = [outputs countByEnumeratingWithState:&v45 objects:v58 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v46;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v46 != v18)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v45 + 1) + 8 * j) resourceKey];
                    [v6 addObject:resourceKey];
                  }

                  v17 = [outputs countByEnumeratingWithState:&v45 objects:v58 count:16];
                }

                while (v17);
              }
            }

            v11 = [tasks countByEnumeratingWithState:&v49 objects:v59 count:16];
          }

          while (v11);
        }

        v7 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v38);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = v6;
  v22 = [v21 countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (!v22)
  {
    v30 = v21;
    v24 = contextCopy;
    goto LABEL_52;
  }

  v23 = *v42;
  v24 = contextCopy;
  while (2)
  {
    for (k = 0; k != v22; k = k + 1)
    {
      if (*v42 != v23)
      {
        objc_enumerationMutation(v21);
      }

      v26 = [contextCopy resourceStreamForKey:*(*(&v41 + 1) + 8 * k)];
      if ([v26 resourceClass] != 2 && objc_msgSend(v26, "resourceClass") != 3)
      {
        [v26 options];
        if (v27 != 2)
        {
          goto LABEL_47;
        }
      }

      resourceClass = [v26 resourceClass];
      if (resourceClass > 5)
      {
        if (resourceClass > 7)
        {
          if (resourceClass != 8 && resourceClass != 9 && resourceClass != 11)
          {
LABEL_55:
            [PSGraphValidation validateAllocatorsNonnull:v26 withContext:?];
          }

LABEL_44:
          if (![v26 allocator])
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        if (resourceClass != 6)
        {
          goto LABEL_44;
        }
      }

      else if (resourceClass <= 2)
      {
        if (resourceClass == 1)
        {
          goto LABEL_47;
        }

        if (resourceClass != 2)
        {
          goto LABEL_55;
        }
      }

      else if (resourceClass == 3 || resourceClass == 4)
      {
        goto LABEL_44;
      }

      retainableAllocator = [v26 retainableAllocator];

      if (!retainableAllocator)
      {
LABEL_50:
        v31 = MEMORY[0x277CCACA8];
        v32 = [v26 key];
        v30 = [v31 stringWithFormat:@"A nil allocator was found for stream %@.", v32];

        v22 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-103 description:v30 recoverySuggestion:{@"Object and Opaque types always require a nonnull allocator, and all other streams (except for Data) require a nonnull allocator if ps_resource_creation_mode_allocator is set."}];

        goto LABEL_52;
      }

LABEL_47:
    }

    v22 = [v21 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

  v30 = v21;
LABEL_52:

  return v22;
}

+ (id)validateBarriersHaveUnblockingTask:(id)task
{
  v77 = *MEMORY[0x277D85DE8];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [task addedGraphs];
  v45 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v45)
  {
    v44 = *v68;
    while (2)
    {
      v3 = 0;
      do
      {
        if (*v68 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v3;
        v4 = *(*(&v67 + 1) + 8 * v3);
        v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        tasks = [v4 tasks];
        v7 = [tasks countByEnumeratingWithState:&v63 objects:v75 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v64;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v64 != v9)
              {
                objc_enumerationMutation(tasks);
              }

              v11 = *(*(&v63 + 1) + 8 * i);
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              waitBarriers = [v11 waitBarriers];
              v13 = [waitBarriers countByEnumeratingWithState:&v59 objects:v74 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v60;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v60 != v15)
                    {
                      objc_enumerationMutation(waitBarriers);
                    }

                    [v5 addObject:*(*(&v59 + 1) + 8 * j)];
                  }

                  v14 = [waitBarriers countByEnumeratingWithState:&v59 objects:v74 count:16];
                }

                while (v14);
              }
            }

            v8 = [tasks countByEnumeratingWithState:&v63 objects:v75 count:16];
          }

          while (v8);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v43 = v4;
        tasks2 = [v4 tasks];
        v18 = [tasks2 countByEnumeratingWithState:&v55 objects:v73 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v56;
          do
          {
            for (k = 0; k != v19; ++k)
            {
              if (*v56 != v20)
              {
                objc_enumerationMutation(tasks2);
              }

              v22 = *(*(&v55 + 1) + 8 * k);
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              updateBarriers = [v22 updateBarriers];
              v24 = [updateBarriers countByEnumeratingWithState:&v51 objects:v72 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v52;
                do
                {
                  for (m = 0; m != v25; ++m)
                  {
                    if (*v52 != v26)
                    {
                      objc_enumerationMutation(updateBarriers);
                    }

                    v28 = *(*(&v51 + 1) + 8 * m);
                    if ([v5 containsObject:v28])
                    {
                      [v5 removeObject:v28];
                    }
                  }

                  v25 = [updateBarriers countByEnumeratingWithState:&v51 objects:v72 count:16];
                }

                while (v25);
              }
            }

            v19 = [tasks2 countByEnumeratingWithState:&v55 objects:v73 count:16];
          }

          while (v19);
        }

        if ([v5 count])
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v32 = v5;
          v33 = [v32 countByEnumeratingWithState:&v47 objects:v71 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v48;
            do
            {
              for (n = 0; n != v34; ++n)
              {
                if (*v48 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                name = [*(*(&v47 + 1) + 8 * n) name];
                [v31 addObject:name];
              }

              v34 = [v32 countByEnumeratingWithState:&v47 objects:v71 count:16];
            }

            while (v34);
          }

          v38 = [PSGraphValidation listifyTokens:v31];
          v39 = MEMORY[0x277CCACA8];
          name2 = [v43 name];
          v30 = [v39 stringWithFormat:@"PSBarriers without updating tasks were found in graph %@: %@", name2, v38];

          v29 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v30 recoverySuggestion:{@"All barriers must be updated by at least one task, and barriers only work for tasks within the same graph. A task from Graph1 cannot update a barrier waited on by a task in Graph2."}];

          goto LABEL_48;
        }

        v3 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }
  }

  v29 = 0;
  v30 = obj;
LABEL_48:

  return v29;
}

+ (id)validateLastNBufferDepths:(id)depths withContext:(id)context isLocalReplaySession:(BOOL)session
{
  sessionCopy = session;
  v87 = *MEMORY[0x277D85DE8];
  depthsCopy = depths;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v50 = depthsCopy;
  obj = [depthsCopy addedGraphs];
  v54 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v54)
  {
    v53 = *v79;
    do
    {
      v7 = 0;
      do
      {
        if (*v79 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v78 + 1) + 8 * v7);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v55 = v8;
        v56 = v7;
        tasks = [v8 tasks];
        v59 = [tasks countByEnumeratingWithState:&v74 objects:v85 count:16];
        if (v59)
        {
          v58 = *v75;
          do
          {
            v9 = 0;
            do
            {
              if (*v75 != v58)
              {
                objc_enumerationMutation(tasks);
              }

              v60 = v9;
              v10 = *(*(&v74 + 1) + 8 * v9);
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              inputs = [v10 inputs];
              v12 = [inputs countByEnumeratingWithState:&v70 objects:v84 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v71;
                do
                {
                  for (i = 0; i != v13; ++i)
                  {
                    if (*v71 != v14)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v16 = *(*(&v70 + 1) + 8 * i);
                    resourceKey = [v16 resourceKey];
                    v18 = [v6 objectForKey:resourceKey];

                    if (v18)
                    {
                      resourceKey2 = [v16 resourceKey];
                      v20 = [v6 objectForKey:resourceKey2];
                      unsignedIntValue = [v20 unsignedIntValue];

                      v22 = unsignedIntValue;
                    }

                    else
                    {
                      v22 = 0;
                    }

                    if ([v16 capacity] > v22)
                    {
                      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "capacity")}];
                      resourceKey3 = [v16 resourceKey];
                      [v6 setObject:v23 forKey:resourceKey3];
                    }
                  }

                  v13 = [inputs countByEnumeratingWithState:&v70 objects:v84 count:16];
                }

                while (v13);
              }

              v9 = v60 + 1;
            }

            while (v60 + 1 != v59);
            v59 = [tasks countByEnumeratingWithState:&v74 objects:v85 count:16];
          }

          while (v59);
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        readers = [v55 readers];
        v26 = [readers countByEnumeratingWithState:&v66 objects:v83 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v67;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v67 != v28)
              {
                objc_enumerationMutation(readers);
              }

              input = [*(*(&v66 + 1) + 8 * j) input];
              resourceKey4 = [input resourceKey];
              v32 = [v6 objectForKey:resourceKey4];

              if (v32)
              {
                resourceKey5 = [input resourceKey];
                v34 = [v6 objectForKey:resourceKey5];
                unsignedIntValue2 = [v34 unsignedIntValue];

                v36 = unsignedIntValue2;
              }

              else
              {
                v36 = 0;
              }

              if ([input capacity] > v36)
              {
                v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(input, "capacity")}];
                resourceKey6 = [input resourceKey];
                [v6 setObject:v37 forKey:resourceKey6];
              }
            }

            v27 = [readers countByEnumeratingWithState:&v66 objects:v83 count:16];
          }

          while (v27);
        }

        v7 = v56 + 1;
      }

      while (v56 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v54);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v39 = v6;
  v40 = [v39 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v63;
    while (2)
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v63 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v62 + 1) + 8 * k);
        v45 = [v39 objectForKey:v44];
        unsignedIntValue3 = [v45 unsignedIntValue];

        v61 = 0;
        if (sessionCopy || ![PSRCConstants checkBufferConfigExistsForKey:v44])
        {
          [PSConstants getBufferDepthsForKey:v44 writerDepth:&v61 + 4 readerDepth:&v61];
        }

        else
        {
          LODWORD(v61) = [PSRCConstants getReaderDepthForKey:v44];
          HIDWORD(v61) = [PSRCConstants getWriterDepthForKey:v44];
        }

        if (unsignedIntValue3 > v61)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"An input (%@) was requested with LastN capacity %d, but the underlying buffer only had %d allocated views.", v44, unsignedIntValue3, v61];
          v47 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v48 recoverySuggestion:{@"Reduce the number of requested LastN views, or use the PSResourceStream buffer count hint(s) to request a larger buffer size from the output."}];

          goto LABEL_53;
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v62 objects:v82 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  v47 = 0;
  v48 = v39;
LABEL_53:

  return v47;
}

+ (id)validateRetainedInputsEnabled:(id)enabled withContext:(id)context
{
  v82 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  contextCopy = context;
  v7 = +[PLSSettings currentSettings];
  enableBundleRetain = [v7 enableBundleRetain];

  v9 = +[PLSSettings currentSettings];
  enableFifoBundleRetain = [v9 enableFifoBundleRetain];

  if (enableBundleRetain && (enableFifoBundleRetain & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    postTransitionGraphs = [enabledCopy postTransitionGraphs];
    v13 = [postTransitionGraphs countByEnumeratingWithState:&v74 objects:v81 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v75;
      v52 = postTransitionGraphs;
      v53 = enabledCopy;
      v50 = enableBundleRetain;
      v46 = *v75;
      do
      {
        v16 = 0;
        do
        {
          if (*v75 != v15)
          {
            objc_enumerationMutation(postTransitionGraphs);
          }

          v17 = *(*(&v74 + 1) + 8 * v16);
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v55 = v16;
          v56 = v17;
          tasks = [v17 tasks];
          v19 = [tasks countByEnumeratingWithState:&v70 objects:v80 count:16];
          if (v19)
          {
            v20 = *v71;
            v54 = tasks;
            v47 = v14;
            v48 = *v71;
            do
            {
              v21 = 0;
              v49 = v19;
              do
              {
                if (*v71 != v20)
                {
                  objc_enumerationMutation(tasks);
                }

                v22 = *(*(&v70 + 1) + 8 * v21);
                v66 = 0u;
                v67 = 0u;
                v68 = 0u;
                v69 = 0u;
                v57 = v22;
                outputs = [v22 outputs];
                v60 = [outputs countByEnumeratingWithState:&v66 objects:v79 count:16];
                if (v60)
                {
                  v61 = *v67;
                  v59 = outputs;
                  v51 = v21;
                  while (2)
                  {
                    for (i = 0; i != v60; ++i)
                    {
                      if (*v67 != v61)
                      {
                        objc_enumerationMutation(outputs);
                      }

                      v25 = *(*(&v66 + 1) + 8 * i);
                      retainedInputs = [v25 retainedInputs];
                      v27 = [retainedInputs count];

                      if (v27)
                      {
                        if ((enableBundleRetain & 1) == 0)
                        {
                          v42 = MEMORY[0x277CCACA8];
                          resourceKey = [v25 resourceKey];
                          name = [v57 name];
                          name2 = [v56 name];
                          postTransitionGraphs = [v42 stringWithFormat:@"Output %@ in task %@, graph %@ retains inputs, but the input retain API is disabled.", resourceKey, name, name2];
                          v11 = ;
LABEL_40:

                          enabledCopy = v53;
                          goto LABEL_41;
                        }

                        v64 = 0u;
                        v65 = 0u;
                        v62 = 0u;
                        v63 = 0u;
                        v58 = v25;
                        retainedInputs2 = [v25 retainedInputs];
                        v29 = [retainedInputs2 countByEnumeratingWithState:&v62 objects:v78 count:16];
                        if (v29)
                        {
                          v30 = v29;
                          v31 = *v63;
                          while (2)
                          {
                            for (j = 0; j != v30; ++j)
                            {
                              if (*v63 != v31)
                              {
                                objc_enumerationMutation(retainedInputs2);
                              }

                              v33 = *(*(&v62 + 1) + 8 * j);
                              resourceKey2 = [v33 resourceKey];
                              v35 = [contextCopy resourceStreamForKey:resourceKey2];

                              if (v35 && ([v35 resourceClass] - 7) <= 2 && !((objc_msgSend(v35, "provider") != 1) | enableFifoBundleRetain & 1))
                              {
                                v36 = MEMORY[0x277CCACA8];
                                resourceKey3 = [v58 resourceKey];
                                name3 = [v57 name];
                                name4 = [v56 name];
                                resourceKey4 = [v33 resourceKey];
                                postTransitionGraphs = [v36 stringWithFormat:@"Output %@ in task %@, graph %@ retains a FIFO-backed buffer (%@), but retaining FIFO buffers is disabled.", resourceKey3, name3, name4, resourceKey4];
                                v11 = ;

                                outputs = v59;
                                goto LABEL_40;
                              }
                            }

                            v30 = [retainedInputs2 countByEnumeratingWithState:&v62 objects:v78 count:16];
                            if (v30)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        LOBYTE(enableBundleRetain) = v50;
                        outputs = v59;
                        v21 = v51;
                      }
                    }

                    postTransitionGraphs = v52;
                    enabledCopy = v53;
                    tasks = v54;
                    v15 = v46;
                    v14 = v47;
                    v60 = [outputs countByEnumeratingWithState:&v66 objects:v79 count:16];
                    if (v60)
                    {
                      continue;
                    }

                    break;
                  }
                }

                ++v21;
                v20 = v48;
              }

              while (v21 != v49);
              v19 = [tasks countByEnumeratingWithState:&v70 objects:v80 count:16];
            }

            while (v19);
          }

          v16 = v55 + 1;
        }

        while (v55 + 1 != v14);
        v14 = [postTransitionGraphs countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v14);
    }

    v11 = 0;
LABEL_41:
  }

  return v11;
}

+ (id)validateRetainedInputsNotLastN:(id)n withContext:(id)context
{
  v61 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  postTransitionGraphs = [n postTransitionGraphs];
  v5 = [postTransitionGraphs countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v5)
  {
    v6 = *v54;
    v39 = postTransitionGraphs;
    v33 = *v54;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v8 = *(*(&v53 + 1) + 8 * i);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        tasks = [v8 tasks];
        v10 = [tasks countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v50;
          v40 = tasks;
          v34 = i;
          v35 = v5;
          v36 = *v50;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v50 != v12)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v49 + 1) + 8 * j);
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              outputs = [v14 outputs];
              v16 = [outputs countByEnumeratingWithState:&v45 objects:v58 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v46;
                v37 = v11;
                v38 = *v46;
                do
                {
                  for (k = 0; k != v17; ++k)
                  {
                    if (*v46 != v18)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v20 = *(*(&v45 + 1) + 8 * k);
                    retainedInputs = [v20 retainedInputs];
                    v22 = [retainedInputs count];

                    if (v22)
                    {
                      v43 = 0u;
                      v44 = 0u;
                      v41 = 0u;
                      v42 = 0u;
                      retainedInputs2 = [v20 retainedInputs];
                      v24 = [retainedInputs2 countByEnumeratingWithState:&v41 objects:v57 count:16];
                      if (v24)
                      {
                        v25 = v24;
                        v26 = *v42;
                        while (2)
                        {
                          for (m = 0; m != v25; ++m)
                          {
                            if (*v42 != v26)
                            {
                              objc_enumerationMutation(retainedInputs2);
                            }

                            v28 = *(*(&v41 + 1) + 8 * m);
                            if ([v28 capacity] > 1)
                            {
                              v29 = MEMORY[0x277CCACA8];
                              resourceKey = [v28 resourceKey];
                              resourceKey2 = [v20 resourceKey];
                              postTransitionGraphs = [v29 stringWithFormat:@"Retained input %@ for output %@ has capacity > 1 (%lu).", resourceKey, resourceKey2, objc_msgSend(v28, "capacity")];

                              v5 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:postTransitionGraphs];

                              goto LABEL_34;
                            }
                          }

                          v25 = [retainedInputs2 countByEnumeratingWithState:&v41 objects:v57 count:16];
                          if (v25)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v18 = v38;
                    }
                  }

                  v17 = [outputs countByEnumeratingWithState:&v45 objects:v58 count:16];
                  tasks = v40;
                  v12 = v36;
                  v11 = v37;
                }

                while (v17);
              }
            }

            v11 = [tasks countByEnumeratingWithState:&v49 objects:v59 count:16];
            postTransitionGraphs = v39;
            v6 = v33;
            i = v34;
            v5 = v35;
          }

          while (v11);
        }
      }

      v5 = [postTransitionGraphs countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v5);
  }

LABEL_34:

  return v5;
}

+ (id)validateRetainedInputsNotNested:(id)nested withContext:(id)context
{
  v82 = *MEMORY[0x277D85DE8];
  nestedCopy = nested;
  v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v39 = nestedCopy;
  obj = [nestedCopy postTransitionGraphs];
  v42 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v42)
  {
    v41 = *v73;
    do
    {
      v5 = 0;
      do
      {
        if (*v73 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v5;
        v6 = *(*(&v72 + 1) + 8 * v5);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        tasks = [v6 tasks];
        v46 = [tasks countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v46)
        {
          v45 = *v69;
          do
          {
            v7 = 0;
            do
            {
              if (*v69 != v45)
              {
                objc_enumerationMutation(tasks);
              }

              v47 = v7;
              v8 = *(*(&v68 + 1) + 8 * v7);
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              outputs = [v8 outputs];
              v9 = [outputs countByEnumeratingWithState:&v64 objects:v79 count:16];
              if (v9)
              {
                v10 = v9;
                v11 = *v65;
                do
                {
                  for (i = 0; i != v10; ++i)
                  {
                    if (*v65 != v11)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v13 = *(*(&v64 + 1) + 8 * i);
                    retainedInputs = [v13 retainedInputs];
                    v15 = [retainedInputs count];

                    if (v15)
                    {
                      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      v60 = 0u;
                      v61 = 0u;
                      v62 = 0u;
                      v63 = 0u;
                      retainedInputs2 = [v13 retainedInputs];
                      v18 = [retainedInputs2 countByEnumeratingWithState:&v60 objects:v78 count:16];
                      if (v18)
                      {
                        v19 = v18;
                        v20 = *v61;
                        do
                        {
                          for (j = 0; j != v19; ++j)
                          {
                            if (*v61 != v20)
                            {
                              objc_enumerationMutation(retainedInputs2);
                            }

                            resourceKey = [*(*(&v60 + 1) + 8 * j) resourceKey];
                            [v16 addObject:resourceKey];
                          }

                          v19 = [retainedInputs2 countByEnumeratingWithState:&v60 objects:v78 count:16];
                        }

                        while (v19);
                      }

                      resourceKey2 = [v13 resourceKey];
                      [v50 setObject:v16 forKey:resourceKey2];
                    }
                  }

                  v10 = [outputs countByEnumeratingWithState:&v64 objects:v79 count:16];
                }

                while (v10);
              }

              v7 = v47 + 1;
            }

            while (v47 + 1 != v46);
            v46 = [tasks countByEnumeratingWithState:&v68 objects:v80 count:16];
          }

          while (v46);
        }

        v5 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v42);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v24 = v50;
  v51 = [v24 countByEnumeratingWithState:&v56 objects:v77 count:16];
  if (v51)
  {
    v25 = *v57;
    v49 = *v57;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v57 != v25)
        {
          objc_enumerationMutation(v24);
        }

        v27 = *(*(&v56 + 1) + 8 * k);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v28 = v24;
        v29 = [v28 countByEnumeratingWithState:&v52 objects:v76 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v53;
          while (2)
          {
            for (m = 0; m != v30; ++m)
            {
              if (*v53 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v52 + 1) + 8 * m);
              if (([v27 isEqualToString:v33] & 1) == 0)
              {
                v34 = [v28 objectForKey:v33];
                v35 = [v34 containsObject:v27];

                if (v35)
                {
                  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Output that retains inputs (%@) was found to be retained by another output (%@).", v27, v33];
                  v36 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v37];

                  v28 = v37;
                  goto LABEL_50;
                }
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v52 objects:v76 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        v25 = v49;
      }

      v36 = 0;
      v51 = [v28 countByEnumeratingWithState:&v56 objects:v77 count:16];
    }

    while (v51);
  }

  else
  {
    v36 = 0;
    v28 = v24;
  }

LABEL_50:

  return v36;
}

+ (id)validateSequencedTeardownLeaderExists:(id)exists
{
  v52 = *MEMORY[0x277D85DE8];
  existsCopy = exists;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  postTransitionGraphs = [existsCopy postTransitionGraphs];
  v8 = [postTransitionGraphs countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        teardownType = [v12 teardownType];
        v14 = v5;
        if (teardownType != 1)
        {
          teardownType2 = [v12 teardownType];
          v14 = v6;
          if (teardownType2 != 2)
          {
            continue;
          }
        }

        [v14 addObject:v12];
      }

      v9 = [postTransitionGraphs countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v9);
  }

  v31 = v6;

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v34)
  {
    v33 = *v41;
    do
    {
      v17 = 0;
      do
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v17;
        v18 = *(*(&v40 + 1) + 8 * v17);
        v19 = objc_alloc(MEMORY[0x277CBEB58]);
        v49 = v18;
        anyObject = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
        v21 = [v19 initWithArray:anyObject];
        while (1)
        {

          if (![v21 count])
          {
            break;
          }

          anyObject = [v21 anyObject];
          [v21 removeObject:anyObject];
          v22 = [self findImmediateDownstreamGraphs:anyObject withTransitionBlock:existsCopy];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v23 = [v22 countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v37;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v37 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v36 + 1) + 8 * j);
                if ([v27 teardownType] == 2)
                {
                  [v21 addObject:v27];
                  [v16 addObject:v27];
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v36 objects:v48 count:16];
            }

            while (v24);
          }
        }

        v17 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v34);
  }

  if ([v31 isEqualToSet:v16])
  {
    v28 = 0;
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not all PSGraphTeardownTypeSequencedFollower graphs had a corresponding in-process PSGraphTeardownTypeSequencedLeader. Unconnected followers: %@", v16];
    v28 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v29];
  }

  return v28;
}

+ (id)validateIOSurfaceMetadataResourceClass:(id)class
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  addedGraphs = [class addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v25 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        resourceInfo = [v8 resourceInfo];
        v10 = [resourceInfo countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(resourceInfo);
              }

              v14 = *(*(&v26 + 1) + 8 * j);
              resourceInfo2 = [v8 resourceInfo];
              v16 = [resourceInfo2 objectForKeyedSubscript:v14];

              [v16 provider];
              if (ps_resource_stream_provider_has_iosurface_metadata())
              {
                resourceClass = [v16 resourceClass];
                if ((resourceClass - 7) >= 3 && resourceClass != 11)
                {
                  v19 = MEMORY[0x277CCA9B8];
                  v20 = MEMORY[0x277CCACA8];
                  v21 = [v16 key];
                  v22 = [v20 stringWithFormat:@"Resource: %@ has class %llu which is not allowed to have iosurface metadata", v21, objc_msgSend(v16, "resourceClass")];
                  v23 = [v19 polarisErrorWithCode:-102 description:v22];

                  goto LABEL_23;
                }
              }
            }

            v11 = [resourceInfo countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v11);
        }

        v6 = v25;
      }

      v5 = [addedGraphs countByEnumeratingWithState:&v30 objects:v35 count:16];
      v23 = 0;
    }

    while (v5);
  }

  else
  {
    v23 = 0;
  }

LABEL_23:

  return v23;
}

+ (id)validateIOSurfaceMetadataProvider:(id)provider
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  addedGraphs = [provider addedGraphs];
  v25 = [addedGraphs countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v4 = *v32;
    v26 = addedGraphs;
    v24 = *v32;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        resourceInfo = [v6 resourceInfo];
        v8 = [resourceInfo countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(resourceInfo);
              }

              v12 = *(*(&v27 + 1) + 8 * j);
              resourceInfo2 = [v6 resourceInfo];
              v14 = [resourceInfo2 objectForKeyedSubscript:v12];

              resourceClass = [v14 resourceClass];
              if (resourceClass > 0xB || ((1 << resourceClass) & 0xB80) == 0)
              {
                metadataIOSurfaceProperties = 0;
              }

              else
              {
                metadataIOSurfaceProperties = [v14 metadataIOSurfaceProperties];
                if (metadataIOSurfaceProperties)
                {
                  [v14 provider];
                  if (!ps_resource_stream_provider_has_iosurface_metadata())
                  {
                    v18 = MEMORY[0x277CCA9B8];
                    v19 = MEMORY[0x277CCACA8];
                    v20 = [v14 key];
                    v21 = [v19 stringWithFormat:@"Resource: %@ has iosurface metadata properties provided but doesn't have a provider type that supports iosurface metadata", v20];
                    v22 = [v18 polarisErrorWithCode:-102 description:v21];

                    addedGraphs = v26;
                    goto LABEL_25;
                  }
                }
              }
            }

            v9 = [resourceInfo countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v9);
        }

        addedGraphs = v26;
        v4 = v24;
      }

      v22 = 0;
      v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  else
  {
    v22 = 0;
  }

LABEL_25:

  return v22;
}

+ (id)validateStorageModeCompatibility:(id)compatibility withContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allStreams = [context allStreams];
  v5 = [allStreams countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(allStreams);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        resourceClass = [v9 resourceClass];
        if ([v9 options] == 2 && resourceClass <= 0xC && ((1 << resourceClass) & 0x106C) != 0)
        {
          v13 = MEMORY[0x277CCACA8];
          v14 = [v9 key];
          v15 = [v13 stringWithFormat:@"Invalid resource configuration found. Resource %s was declared as a shared resource, but it is of type %s. This resource type cannot be shared across processes.", objc_msgSend(v14, "UTF8String"), ps_resource_class_description()];

          v16 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-102 description:v15];

          goto LABEL_18;
        }
      }

      v6 = [allStreams countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 0;
    }

    while (v6);
  }

  else
  {
    v16 = 0;
  }

LABEL_18:

  return v16;
}

+ (id)validateWriterNotRemovedBeforeReader:(id)reader withContext:(id)context
{
  v168 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v88 = readerCopy;
  obj = [readerCopy removedGraphs];
  v99 = [obj countByEnumeratingWithState:&v152 objects:v167 count:16];
  if (v99)
  {
    v96 = *v153;
    do
    {
      v6 = 0;
      do
      {
        if (*v153 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v152 + 1) + 8 * v6);
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v102 = v7;
        v105 = v6;
        tasks = [v7 tasks];
        v9 = [tasks countByEnumeratingWithState:&v148 objects:v166 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v149;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v149 != v11)
              {
                objc_enumerationMutation(tasks);
              }

              v13 = *(*(&v148 + 1) + 8 * i);
              v144 = 0u;
              v145 = 0u;
              v146 = 0u;
              v147 = 0u;
              outputs = [v13 outputs];
              v15 = [outputs countByEnumeratingWithState:&v144 objects:v165 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v145;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v145 != v17)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v144 + 1) + 8 * j) resourceKey];
                    [v5 addObject:resourceKey];
                  }

                  v16 = [outputs countByEnumeratingWithState:&v144 objects:v165 count:16];
                }

                while (v16);
              }
            }

            v10 = [tasks countByEnumeratingWithState:&v148 objects:v166 count:16];
          }

          while (v10);
        }

        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        writers = [v102 writers];
        v21 = [writers countByEnumeratingWithState:&v140 objects:v164 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v141;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v141 != v23)
              {
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v140 + 1) + 8 * k) output];
              resourceKey2 = [output resourceKey];
              [v5 addObject:resourceKey2];
            }

            v22 = [writers countByEnumeratingWithState:&v140 objects:v164 count:16];
          }

          while (v22);
        }

        v6 = v105 + 1;
      }

      while (v105 + 1 != v99);
      v99 = [obj countByEnumeratingWithState:&v152 objects:v167 count:16];
    }

    while (v99);
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  addedGraphs = [v88 addedGraphs];
  obja = [addedGraphs countByEnumeratingWithState:&v136 objects:v163 count:16];
  if (obja)
  {
    v91 = *v137;
    do
    {
      v27 = 0;
      do
      {
        if (*v137 != v91)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v28 = *(*(&v136 + 1) + 8 * v27);
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v97 = v28;
        v100 = v27;
        tasks2 = [v28 tasks];
        v29 = [tasks2 countByEnumeratingWithState:&v132 objects:v162 count:16];
        if (v29)
        {
          v30 = v29;
          v106 = *v133;
          do
          {
            for (m = 0; m != v30; ++m)
            {
              if (*v133 != v106)
              {
                objc_enumerationMutation(tasks2);
              }

              v32 = *(*(&v132 + 1) + 8 * m);
              v128 = 0u;
              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              outputs2 = [v32 outputs];
              v34 = [outputs2 countByEnumeratingWithState:&v128 objects:v161 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v129;
                do
                {
                  for (n = 0; n != v35; ++n)
                  {
                    if (*v129 != v36)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    v38 = *(*(&v128 + 1) + 8 * n);
                    resourceKey3 = [v38 resourceKey];
                    v40 = [v5 containsObject:resourceKey3];

                    if (v40)
                    {
                      resourceKey4 = [v38 resourceKey];
                      [v5 removeObject:resourceKey4];
                    }
                  }

                  v35 = [outputs2 countByEnumeratingWithState:&v128 objects:v161 count:16];
                }

                while (v35);
              }
            }

            v30 = [tasks2 countByEnumeratingWithState:&v132 objects:v162 count:16];
          }

          while (v30);
        }

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        writers2 = [v97 writers];
        v43 = [writers2 countByEnumeratingWithState:&v124 objects:v160 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v125;
          do
          {
            for (ii = 0; ii != v44; ++ii)
            {
              if (*v125 != v45)
              {
                objc_enumerationMutation(writers2);
              }

              v47 = *(*(&v124 + 1) + 8 * ii);
              output2 = [v47 output];
              resourceKey5 = [output2 resourceKey];
              v50 = [v5 containsObject:resourceKey5];

              if (v50)
              {
                output3 = [v47 output];
                resourceKey6 = [output3 resourceKey];
                [v5 removeObject:resourceKey6];
              }
            }

            v44 = [writers2 countByEnumeratingWithState:&v124 objects:v160 count:16];
          }

          while (v44);
        }

        v27 = v100 + 1;
      }

      while ((v100 + 1) != obja);
      obja = [addedGraphs countByEnumeratingWithState:&v136 objects:v163 count:16];
    }

    while (obja);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  postTransitionGraphs = [v88 postTransitionGraphs];
  v54 = [postTransitionGraphs countByEnumeratingWithState:&v120 objects:v159 count:16];
  if (v54)
  {
    v55 = *v121;
    v107 = postTransitionGraphs;
    v90 = *v121;
    do
    {
      v56 = 0;
      v92 = v54;
      do
      {
        if (*v121 != v55)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v98 = v56;
        v57 = *(*(&v120 + 1) + 8 * v56);
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        tasks3 = [v57 tasks];
        v104 = [tasks3 countByEnumeratingWithState:&v116 objects:v158 count:16];
        if (v104)
        {
          v59 = *v117;
          v101 = v57;
          objb = *v117;
          do
          {
            for (jj = 0; jj != v104; jj = jj + 1)
            {
              if (*v117 != v59)
              {
                objc_enumerationMutation(tasks3);
              }

              v61 = *(*(&v116 + 1) + 8 * jj);
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              inputs = [v61 inputs];
              v63 = [inputs countByEnumeratingWithState:&v112 objects:v157 count:16];
              if (v63)
              {
                v64 = v63;
                v65 = *v113;
                while (2)
                {
                  for (kk = 0; kk != v64; ++kk)
                  {
                    if (*v113 != v65)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v67 = *(*(&v112 + 1) + 8 * kk);
                    resourceKey7 = [v67 resourceKey];
                    v69 = [v5 containsObject:resourceKey7];

                    if (v69)
                    {
                      v80 = MEMORY[0x277CCACA8];
                      resourceKey8 = [v67 resourceKey];
                      name = [v101 name];
                      postTransitionGraphs = [v80 stringWithFormat:@"A local task output (%@) is being removed even though a reader graph (%@) is still present.", resourceKey8, name];

                      v79 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:postTransitionGraphs recoverySuggestion:@"Make sure a local resource writer is not removed if there are active readers."];

LABEL_94:
                      goto LABEL_95;
                    }
                  }

                  v64 = [inputs countByEnumeratingWithState:&v112 objects:v157 count:16];
                  if (v64)
                  {
                    continue;
                  }

                  break;
                }
              }

              v59 = objb;
            }

            v57 = v101;
            v104 = [tasks3 countByEnumeratingWithState:&v116 objects:v158 count:16];
          }

          while (v104);
        }

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v70 = v57;
        tasks3 = [v57 readers];
        v71 = [tasks3 countByEnumeratingWithState:&v108 objects:v156 count:16];
        if (v71)
        {
          v72 = v71;
          v73 = *v109;
          while (2)
          {
            for (mm = 0; mm != v72; ++mm)
            {
              if (*v109 != v73)
              {
                objc_enumerationMutation(tasks3);
              }

              v75 = *(*(&v108 + 1) + 8 * mm);
              input = [v75 input];
              resourceKey9 = [input resourceKey];
              v78 = [v5 containsObject:resourceKey9];

              if (v78)
              {
                v83 = MEMORY[0x277CCACA8];
                input2 = [v75 input];
                resourceKey10 = [input2 resourceKey];
                name2 = [v70 name];
                postTransitionGraphs = [v83 stringWithFormat:@"A local task output (%@) is being removed even though a reader graph (%@) is still present.", resourceKey10, name2];

                v79 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:postTransitionGraphs recoverySuggestion:@"Make sure a local resource writer is not removed if there are active readers."];
                goto LABEL_94;
              }
            }

            v72 = [tasks3 countByEnumeratingWithState:&v108 objects:v156 count:16];
            if (v72)
            {
              continue;
            }

            break;
          }
        }

        v56 = v98 + 1;
        v55 = v90;
        postTransitionGraphs = v107;
      }

      while (v98 + 1 != v92);
      v54 = [v107 countByEnumeratingWithState:&v120 objects:v159 count:16];
    }

    while (v54);
  }

  v79 = 0;
LABEL_95:

  return v79;
}

+ (id)generateDuplicateGraphNameError:(id)error otherGraph:(id)graph
{
  v5 = MEMORY[0x277CCACA8];
  graphCopy = graph;
  errorCopy = error;
  name = [errorCopy name];
  name2 = [graphCopy name];
  graphCopy = [v5 stringWithFormat:@"Graph names within an execution session must be unique, these have the same name: (%@ : 0x%p) and (%@ : 0x%p).", name, errorCopy, name2, graphCopy];

  v11 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-108 description:graphCopy recoverySuggestion:{@"Change a graph name to make these unique, check if you meant to also remove one of these graphs in this transition, or you're not accidentally submitting the same graph twice."}];

  return v11;
}

+ (id)validateNoDuplicateGraphNames:(id)names session:(id)session
{
  selfCopy = self;
  v69 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v51 = sessionCopy;
  dashboard = [sessionCopy dashboard];
  getRunningGraphs = [dashboard getRunningGraphs];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = getRunningGraphs;
  v10 = [v9 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        name = [v14 name];
        v16 = [dictionary objectForKeyedSubscript:name];

        if (!v16)
        {
          v17 = objc_opt_new();
          name2 = [v14 name];
          [dictionary setObject:v17 forKeyedSubscript:name2];
        }

        name3 = [v14 name];
        v20 = [dictionary objectForKey:name3];
        [v20 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v11);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  removedGraphs = [namesCopy removedGraphs];
  v22 = [removedGraphs countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v59;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v59 != v24)
        {
          objc_enumerationMutation(removedGraphs);
        }

        v26 = *(*(&v58 + 1) + 8 * j);
        name4 = [v26 name];
        v28 = [dictionary objectForKey:name4];
        [v28 removeObject:v26];
      }

      v23 = [removedGraphs countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v23);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [namesCopy addedGraphs];
  v29 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v55;
    while (2)
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v55 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v54 + 1) + 8 * k);
        name5 = [v33 name];
        v35 = [dictionary objectForKeyedSubscript:name5];

        if (!v35)
        {
          v36 = objc_opt_new();
          name6 = [v33 name];
          [dictionary setObject:v36 forKeyedSubscript:name6];
        }

        name7 = [v33 name];
        v39 = [dictionary objectForKey:name7];
        [v39 addObject:v33];

        name8 = [v33 name];
        v41 = [dictionary objectForKeyedSubscript:name8];
        v42 = [v41 count];

        if (v42 > 1)
        {
          name9 = [v33 name];
          v45 = [dictionary objectForKeyedSubscript:name9];
          allObjects = [v45 allObjects];

          v47 = [allObjects objectAtIndexedSubscript:0];
          v48 = [allObjects objectAtIndexedSubscript:1];
          v43 = [selfCopy generateDuplicateGraphNameError:v47 otherGraph:v48];

          goto LABEL_29;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v43 = 0;
LABEL_29:

  return v43;
}

+ (id)findImmediateDownstreamGraphs:(id)graphs withTransitionBlock:(id)block
{
  v116 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  blockCopy = block;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v60 = graphsCopy;
  obj = [graphsCopy tasks];
  v8 = [obj countByEnumeratingWithState:&v103 objects:v115 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v104;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v104 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v103 + 1) + 8 * i);
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        outputs = [v12 outputs];
        v14 = [outputs countByEnumeratingWithState:&v99 objects:v114 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v100;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v100 != v16)
              {
                objc_enumerationMutation(outputs);
              }

              resourceKey = [*(*(&v99 + 1) + 8 * j) resourceKey];
              [v7 addObject:resourceKey];
            }

            v15 = [outputs countByEnumeratingWithState:&v99 objects:v114 count:16];
          }

          while (v15);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v103 objects:v115 count:16];
    }

    while (v9);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obja = [v60 sourceTasks];
  v19 = [obja countByEnumeratingWithState:&v95 objects:v113 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v96;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v96 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v95 + 1) + 8 * k);
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        outputs2 = [v23 outputs];
        v25 = [outputs2 countByEnumeratingWithState:&v91 objects:v112 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v92;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v92 != v27)
              {
                objc_enumerationMutation(outputs2);
              }

              resourceKey2 = [*(*(&v91 + 1) + 8 * m) resourceKey];
              [v7 addObject:resourceKey2];
            }

            v26 = [outputs2 countByEnumeratingWithState:&v91 objects:v112 count:16];
          }

          while (v26);
        }
      }

      v20 = [obja countByEnumeratingWithState:&v95 objects:v113 count:16];
    }

    while (v20);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  writers = [v60 writers];
  v31 = [writers countByEnumeratingWithState:&v87 objects:v111 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v88;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v88 != v33)
        {
          objc_enumerationMutation(writers);
        }

        output = [*(*(&v87 + 1) + 8 * n) output];
        resourceKey3 = [output resourceKey];
        [v7 addObject:resourceKey3];
      }

      v32 = [writers countByEnumeratingWithState:&v87 objects:v111 count:16];
    }

    while (v32);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v63 = [postTransitionGraphs countByEnumeratingWithState:&v83 objects:v110 count:16];
  if (v63)
  {
    v62 = *v84;
    do
    {
      v37 = 0;
      do
      {
        if (*v84 != v62)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v64 = v37;
        v38 = *(*(&v83 + 1) + 8 * v37);
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        tasks = [v38 tasks];
        objb = [tasks countByEnumeratingWithState:&v79 objects:v109 count:16];
        if (objb)
        {
          v66 = *v80;
          do
          {
            for (ii = 0; ii != objb; ii = ii + 1)
            {
              if (*v80 != v66)
              {
                objc_enumerationMutation(tasks);
              }

              v40 = *(*(&v79 + 1) + 8 * ii);
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              inputs = [v40 inputs];
              v42 = [inputs countByEnumeratingWithState:&v75 objects:v108 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v76;
                do
                {
                  for (jj = 0; jj != v43; ++jj)
                  {
                    if (*v76 != v44)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v46 = *(*(&v75 + 1) + 8 * jj);
                    resourceKey4 = [v46 resourceKey];
                    if ([v7 containsObject:resourceKey4])
                    {
                      type = [v46 type];

                      if (!type)
                      {
                        [v6 addObject:v38];
                      }
                    }

                    else
                    {
                    }
                  }

                  v43 = [inputs countByEnumeratingWithState:&v75 objects:v108 count:16];
                }

                while (v43);
              }
            }

            objb = [tasks countByEnumeratingWithState:&v79 objects:v109 count:16];
          }

          while (objb);
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        objc = [v38 readers];
        v49 = [objc countByEnumeratingWithState:&v71 objects:v107 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v72;
          do
          {
            for (kk = 0; kk != v50; ++kk)
            {
              if (*v72 != v51)
              {
                objc_enumerationMutation(objc);
              }

              v53 = *(*(&v71 + 1) + 8 * kk);
              input = [v53 input];
              resourceKey5 = [input resourceKey];
              if ([v7 containsObject:resourceKey5])
              {
                input2 = [v53 input];
                type2 = [input2 type];

                if (!type2)
                {
                  [v6 addObject:v38];
                }
              }

              else
              {
              }
            }

            v50 = [objc countByEnumeratingWithState:&v71 objects:v107 count:16];
          }

          while (v50);
        }

        v37 = v64 + 1;
      }

      while (v64 + 1 != v63);
      v63 = [postTransitionGraphs countByEnumeratingWithState:&v83 objects:v110 count:16];
    }

    while (v63);
  }

  return v6;
}

+ (id)listifyTokens:(id)tokens
{
  v17 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = tokensCopy;
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

        [v4 appendFormat:@"%@, ", *(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 2}];

  return v10;
}

+ (void)criticalityToString:(char *)a1 .cold.1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "An unknown criticality was requested: %lu", a2);
  v3 = __PLSLogSharedInstance(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d An unknown criticality was requested: %lu", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  [(PSGraphValidation *)v18 resourceClassToString:v19];
}

+ (void)resourceClassToString:(char *)a1 .cold.1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "An unknown ps_resource_class was requested: %llu", a2);
  v3 = __PLSLogSharedInstance(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d An unknown ps_resource_class was requested: %llu", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  [PSGraphValidation validateAllocatorsNonnull:v18 withContext:v19];
}

+ (void)validateAllocatorsNonnull:(char *)a1 withContext:(void *)a2 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "An unknown ps_resource_class was requested: %llu", [a2 resourceClass]);
  v4 = __PLSLogSharedInstance(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [a2 resourceClass];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d An unknown ps_resource_class was requested: %llu", v7, v8, v9, v10, v19, v20);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  ps_handle_create_cold_1();
}

@end