@interface SiriNLUTypesRedactionUtils
+ (id)getRedactedUsoGraph:(id)graph;
+ (id)redactUserParse:(id)parse;
@end

@implementation SiriNLUTypesRedactionUtils

+ (id)redactUserParse:(id)parse
{
  v84 = *MEMORY[0x1E69E9840];
  parseCopy = parse;
  userDialogActs = [parseCopy userDialogActs];
  v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = userDialogActs;
  v5 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (v5)
  {
    v6 = 0;
    v77 = *v80;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v80 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v79 + 1) + 8 * i);
        v9 = [v8 copy];
        if ([v8 hasUserStatedTask])
        {
          userStatedTask = [v8 userStatedTask];
          hasTask = [userStatedTask hasTask];

          if (hasTask)
          {
            userStatedTask2 = [v8 userStatedTask];
            task = [userStatedTask2 task];
            v14 = [task copy];
            v15 = [self getRedactedUsoGraph:v14];
            userStatedTask3 = [v9 userStatedTask];
            [userStatedTask3 setTask:v15];
          }

          v6 = 1;
        }

        if ([v8 hasAccepted])
        {
          accepted = [v8 accepted];
          hasReference = [accepted hasReference];

          if (hasReference)
          {
            accepted2 = [v8 accepted];
            reference = [accepted2 reference];
            v21 = [reference copy];
            v22 = [self getRedactedUsoGraph:v21];
            accepted3 = [v9 accepted];
            [accepted3 setReference:v22];
          }

          v6 = 1;
        }

        if ([v8 hasRejected])
        {
          rejected = [v8 rejected];
          hasReference2 = [rejected hasReference];

          if (hasReference2)
          {
            rejected2 = [v8 rejected];
            reference2 = [rejected2 reference];
            v28 = [reference2 copy];
            v29 = [self getRedactedUsoGraph:v28];
            rejected3 = [v9 rejected];
            [rejected3 setReference:v29];
          }

          v6 = 1;
        }

        if ([v8 hasCancelled])
        {
          cancelled = [v8 cancelled];
          hasReference3 = [cancelled hasReference];

          if (hasReference3)
          {
            cancelled2 = [v8 cancelled];
            reference3 = [cancelled2 reference];
            v35 = [reference3 copy];
            v36 = [self getRedactedUsoGraph:v35];
            cancelled3 = [v9 cancelled];
            [cancelled3 setReference:v36];
          }

          v6 = 1;
        }

        if ([v8 hasWantedToRepeat])
        {
          wantedToRepeat = [v8 wantedToRepeat];
          hasReference4 = [wantedToRepeat hasReference];

          if (hasReference4)
          {
            wantedToRepeat2 = [v8 wantedToRepeat];
            reference4 = [wantedToRepeat2 reference];
            v42 = [reference4 copy];
            v43 = [self getRedactedUsoGraph:v42];
            wantedToRepeat3 = [v9 wantedToRepeat];
            [wantedToRepeat3 setReference:v43];
          }

          v6 = 1;
        }

        if ([v8 hasAcknowledged])
        {
          acknowledged = [v8 acknowledged];
          hasReference5 = [acknowledged hasReference];

          if (hasReference5)
          {
            acknowledged2 = [v8 acknowledged];
            reference5 = [acknowledged2 reference];
            v49 = [reference5 copy];
            v50 = [self getRedactedUsoGraph:v49];
            acknowledged3 = [v9 acknowledged];
            [acknowledged3 setReference:v50];
          }

          v6 = 1;
        }

        if ([v8 hasWantedToProceed])
        {
          wantedToProceed = [v8 wantedToProceed];
          hasReference6 = [wantedToProceed hasReference];

          if (hasReference6)
          {
            wantedToProceed2 = [v8 wantedToProceed];
            reference6 = [wantedToProceed2 reference];
            v56 = [reference6 copy];
            v57 = [self getRedactedUsoGraph:v56];
            wantedToProceed3 = [v9 wantedToProceed];
            [wantedToProceed3 setReference:v57];
          }

          v6 = 1;
        }

        if ([v8 hasWantedToPause])
        {
          wantedToPause = [v8 wantedToPause];
          hasReference7 = [wantedToPause hasReference];

          if (hasReference7)
          {
            wantedToPause2 = [v8 wantedToPause];
            reference7 = [wantedToPause2 reference];
            v63 = [reference7 copy];
            v64 = [self getRedactedUsoGraph:v63];
            wantedToPause3 = [v9 wantedToPause];
            [wantedToPause3 setReference:v64];
          }

          v6 = 1;
        }

        if ([v8 hasWantedToUndo])
        {
          wantedToUndo = [v8 wantedToUndo];
          hasReference8 = [wantedToUndo hasReference];

          if (hasReference8)
          {
            wantedToUndo2 = [v8 wantedToUndo];
            reference8 = [wantedToUndo2 reference];
            v70 = [reference8 copy];
            v71 = [self getRedactedUsoGraph:v70];
            wantedToUndo3 = [v9 wantedToUndo];
            [wantedToUndo3 setReference:v71];
          }
        }

        else if ((v6 & 1) == 0)
        {

          goto LABEL_46;
        }

        [v78 addObject:v9];

        v6 = 1;
      }

      v5 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v73 = [parseCopy copy];
    [v73 setUserDialogActs:v78];
  }

  else
  {
LABEL_46:

    v73 = 0;
  }

  return v73;
}

+ (id)getRedactedUsoGraph:(id)graph
{
  v3 = *(siri::ontology::getSharedUsoVocabManager(graph) + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend_convertUsoGraphFromObjCToCpp_(SiriNLUTypesConverterUtils);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  siri::ontology::UsoGraphProtoReader::fromProtobuf();
}

@end