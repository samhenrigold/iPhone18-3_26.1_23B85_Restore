@interface MechanismKofN
+ (id)mechanismWithK:(unint64_t)k ofSubmechanisms:(id)submechanisms serial:(BOOL)serial request:(id)request preserveStandaloneReorganizers:(BOOL)reorganizers;
- (BOOL)pause:(BOOL)pause forEvent:(int64_t)event error:(id *)error;
- (BOOL)requiresHostingControllerUiWithEventProcessing:(id)processing;
- (BOOL)requiresRemoteViewControllerUiWithEventProcessing:(id)processing;
- (BOOL)requiresUiWithEventProcessing:(id)processing;
- (MechanismKofN)initWithK:(unint64_t)k ofSubmechanisms:(id)submechanisms serial:(BOOL)serial request:(id)request;
- (id)additionalControllerInternalInfoForPolicy:(int64_t)policy;
- (id)availabilityEventsForPurpose:(int64_t)purpose;
- (id)bestEffortAvailableMechanismForRequest:(id)request error:(id *)error;
- (id)cachedExternalizationDelegate;
- (id)descriptionFlags;
- (id)findMechanismWithEventIdentifier:(int64_t)identifier;
- (id)mechanismPruningMechanismsWithEventIdentifier:(int64_t)identifier;
- (id)mechanismTreeDescription;
- (void)_runSubmechanismAtIndex:(int64_t)index hints:(id)hints eventsDelegate:(id)delegate succeeded:(int64_t)succeeded failed:(int64_t)failed results:(id)results reply:(id)reply;
- (void)finishRunWithResult:(id)result error:(id)error;
- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply;
- (void)setParent:(id)parent;
@end

@implementation MechanismKofN

- (MechanismKofN)initWithK:(unint64_t)k ofSubmechanisms:(id)submechanisms serial:(BOOL)serial request:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  submechanismsCopy = submechanisms;
  requestCopy = request;
  v12 = LA_LOG_MechanismKofN(requestCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v17 = "[MechanismKofN initWithK:ofSubmechanisms:serial:request:]";
    v18 = 1024;
    kCopy = k;
    v20 = 2114;
    v21 = submechanismsCopy;
    v22 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_238B95000, v12, OS_LOG_TYPE_DEBUG, "%s %d, %{public}@ on %@", buf, 0x26u);
  }

  v15.receiver = self;
  v15.super_class = MechanismKofN;
  v13 = [(MechanismBaseComposite *)&v15 initWithEventIdentifier:0 remoteViewController:0 k:k ofSubmechanisms:submechanismsCopy request:requestCopy];

  if (v13)
  {
    v13->_serial = serial;
  }

  return v13;
}

+ (id)mechanismWithK:(unint64_t)k ofSubmechanisms:(id)submechanisms serial:(BOOL)serial request:(id)request preserveStandaloneReorganizers:(BOOL)reorganizers
{
  serialCopy = serial;
  v56 = *MEMORY[0x277D85DE8];
  submechanismsCopy = submechanisms;
  requestCopy = request;
  v14 = LA_LOG_MechanismKofN(requestCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:k];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:serialCopy];
    *buf = 136316162;
    v47 = "+[MechanismKofN mechanismWithK:ofSubmechanisms:serial:request:preserveStandaloneReorganizers:]";
    v48 = 2114;
    v49 = v15;
    v50 = 2114;
    v51 = submechanismsCopy;
    v52 = 2114;
    v53 = v16;
    v54 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_238B95000, v14, OS_LOG_TYPE_DEFAULT, "%s %{public}@, %{public}@, %{public}@ on %@", buf, 0x34u);
  }

  v17 = objc_opt_new();
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __94__MechanismKofN_mechanismWithK_ofSubmechanisms_serial_request_preserveStandaloneReorganizers___block_invoke;
  v43[3] = &unk_278A62F28;
  v18 = v17;
  v44 = v18;
  [submechanismsCopy enumerateObjectsUsingBlock:v43];
  v19 = [v18 count];
  if (v19 != [submechanismsCopy count] || !reorganizers)
  {
    v37 = serialCopy;
    v38 = requestCopy;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v18;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      do
      {
        v24 = 0;
        v25 = submechanismsCopy;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v39 + 1) + 8 * v24);
          v27 = LA_LOG_MechanismKofN(v21);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v47 = v26;
            _os_log_debug_impl(&dword_238B95000, v27, OS_LOG_TYPE_DEBUG, "processing reorganizer %{public}@", buf, 0xCu);
          }

          v28 = [MEMORY[0x277CBEB18] arrayWithArray:v25];
          v29 = LA_LOG_MechanismKofN([v28 removeObjectsInArray:v20]);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v47 = v28;
            _os_log_debug_impl(&dword_238B95000, v29, OS_LOG_TYPE_DEBUG, "mechanismsToReorganize %{public}@", buf, 0xCu);
          }

          submechanismsCopy = [v26 reorganizeMechanisms:v28 k:k error:0];

          v31 = LA_LOG_MechanismKofN(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v47 = submechanismsCopy;
            _os_log_debug_impl(&dword_238B95000, v31, OS_LOG_TYPE_DEBUG, "reorganized submechanisms %{public}@", buf, 0xCu);
          }

          if (k > [submechanismsCopy count])
          {
            k = [submechanismsCopy count];
          }

          ++v24;
          v25 = submechanismsCopy;
        }

        while (v22 != v24);
        v21 = [v20 countByEnumeratingWithState:&v39 objects:v45 count:16];
        v22 = v21;
      }

      while (v21);
    }

    requestCopy = v38;
    serialCopy = v37;
    v18 = v36;
  }

  v32 = [submechanismsCopy count];
  if (k)
  {
    if (k <= v32)
    {
      if (k == 1 && [submechanismsCopy count] == 1)
      {
        v33 = [submechanismsCopy objectAtIndex:0];
LABEL_29:
        v34 = v33;
        goto LABEL_31;
      }

LABEL_28:
      v33 = [[MechanismKofN alloc] initWithK:k ofSubmechanisms:submechanismsCopy serial:serialCopy request:requestCopy];
      goto LABEL_29;
    }
  }

  else if (v32)
  {
    [submechanismsCopy count];
    goto LABEL_28;
  }

  v34 = 0;
LABEL_31:

  return v34;
}

void __94__MechanismKofN_mechanismWithK_ofSubmechanisms_serial_request_preserveStandaloneReorganizers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)mechanismPruningMechanismsWithEventIdentifier:(int64_t)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(MechanismKofN *)self findMechanismWithEventIdentifier:?];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    submechanisms = [(MechanismBaseComposite *)self submechanisms];
    v8 = [submechanisms countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(submechanisms);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 mechanismPruningMechanismsWithEventIdentifier:identifier];
            if (v13)
            {
              [v6 addObject:v13];
            }
          }

          else if ([v12 eventIdentifier] != identifier)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [submechanisms countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke;
      v20 = &unk_278A62F78;
      v21 = v6;
      selfCopy = self;
      selfCopy2 = __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke(&v17);
      v15 = [(MechanismBase *)self parent:v17];
      [(MechanismKofN *)selfCopy2 setParent:v15];
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

id __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count] == 1)
  {
    v2 = [*(a1 + 32) firstObject];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke_2;
    v11[3] = &unk_278A62F50;
    v10 = *(a1 + 32);
    v3 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    v4 = __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke_2(v11);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v5[281];
    v8 = [v5 request];
    v2 = [MechanismKofN mechanismWithK:v4 ofSubmechanisms:v6 serial:v7 request:v8];
  }

  return v2;
}

uint64_t __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) k];
  if (result != 1)
  {
    v3 = [*(a1 + 32) k];
    if (v3 == [*(a1 + 32) n])
    {
      v4 = *(a1 + 40);

      return [v4 count];
    }

    else
    {
      v5 = [*(a1 + 32) n];
      v6 = [*(a1 + 32) k] - v5;
      v7 = [*(a1 + 40) count];
      if (v6 + v7 <= 1)
      {
        return 1;
      }

      else
      {
        return v6 + v7;
      }
    }
  }

  return result;
}

- (id)descriptionFlags
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MechanismKofN;
  descriptionFlags = [(MechanismBase *)&v11 descriptionFlags];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"k:%u", -[MechanismBaseComposite k](self, "k")];
  v12[0] = v4;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v6 = submechanisms;
  if (!submechanisms)
  {
    submechanisms = MEMORY[0x277CBEBF8];
  }

  v7 = [submechanisms componentsJoinedByString:{@", "}];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [descriptionFlags arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply
{
  v13.receiver = self;
  v13.super_class = MechanismKofN;
  replyCopy = reply;
  delegateCopy = delegate;
  hintsCopy = hints;
  [(MechanismBase *)&v13 runWithHints:hintsCopy eventsDelegate:delegateCopy reply:replyCopy];
  self->_finishing = 0;
  v11 = objc_opt_new();
  runningMechanisms = self->_runningMechanisms;
  self->_runningMechanisms = v11;

  [(MechanismKofN *)self _runSubmechanismAtIndex:0 hints:hintsCopy eventsDelegate:delegateCopy succeeded:0 failed:0 results:MEMORY[0x277CBEC10] reply:replyCopy];
}

- (void)_runSubmechanismAtIndex:(int64_t)index hints:(id)hints eventsDelegate:(id)delegate succeeded:(int64_t)succeeded failed:(int64_t)failed results:(id)results reply:(id)reply
{
  hintsCopy = hints;
  delegateCopy = delegate;
  resultsCopy = results;
  replyCopy = reply;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = succeeded;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = failed;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__0;
  v36[4] = __Block_byref_object_dispose__0;
  v26 = resultsCopy;
  v37 = v26;
  do
  {
    submechanisms = [(MechanismBaseComposite *)self submechanisms];
    v20 = [submechanisms count];

    if (index >= v20)
    {
      break;
    }

    submechanisms2 = [(MechanismBaseComposite *)self submechanisms];
    v22 = [submechanisms2 objectAtIndex:index];

    [(NSMutableArray *)self->_runningMechanisms addObject:v22];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __93__MechanismKofN__runSubmechanismAtIndex_hints_eventsDelegate_succeeded_failed_results_reply___block_invoke;
    v27[3] = &unk_278A62FA0;
    v27[4] = self;
    v23 = v22;
    v28 = v23;
    v32 = v36;
    v33 = v39;
    v34 = v38;
    indexCopy = index;
    v24 = hintsCopy;
    v29 = v24;
    v25 = delegateCopy;
    v30 = v25;
    v31 = replyCopy;
    [v23 runWithHints:v24 eventsDelegate:v25 reply:v27];
    LOBYTE(v24) = self->_serial;

    ++index;
  }

  while ((v24 & 1) == 0);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
}

void __93__MechanismKofN__runSubmechanismAtIndex_hints_eventsDelegate_succeeded_failed_results_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  [*(*(a1 + 32) + 272) removeObject:*(a1 + 40)];
  if (v22)
  {
    v6 = [*(*(*(a1 + 72) + 8) + 40) dictionaryByMergingWith:?];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 24) + 1;
    *(v9 + 24) = v10;
    if (v10 < [*(a1 + 32) k])
    {
      goto LABEL_13;
    }

    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 72) + 8) + 40);
    v13 = 0;
    goto LABEL_12;
  }

  v14 = [*(a1 + 32) policyOptions];
  v15 = [v14 objectForKeyedSubscript:&unk_284B78A80];
  if ([v15 BOOLValue])
  {
    v16 = [MEMORY[0x277CD47F0] error:v5 hasCode:-1023];
  }

  else
  {
    v16 = 0;
  }

  v17 = *(*(a1 + 88) + 8);
  v18 = *(v17 + 24) + 1;
  *(v17 + 24) = v18;
  v19 = [*(a1 + 32) n];
  if (v18 > v19 - [*(a1 + 32) k] || v16 != 0)
  {
    v11 = *(a1 + 32);
    v12 = 0;
    v13 = v5;
LABEL_12:
    [v11 finishRunWithResult:v12 error:v13];
  }

LABEL_13:
  v21 = *(a1 + 32);
  if (v21[281] == 1)
  {
    [v21 _runSubmechanismAtIndex:*(a1 + 96) + 1 hints:*(a1 + 48) eventsDelegate:*(a1 + 56) succeeded:*(*(*(a1 + 80) + 8) + 24) failed:*(*(*(a1 + 88) + 8) + 24) results:*(*(*(a1 + 72) + 8) + 40) reply:*(a1 + 64)];
  }
}

- (void)finishRunWithResult:(id)result error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  if (!self->_finishing)
  {
    v15 = resultCopy;
    self->_finishing = 1;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(NSMutableArray *)self->_runningMechanisms copy];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          if (errorCopy)
          {
            [*(*(&v17 + 1) + 8 * v12) finishRunWithResult:0 error:errorCopy skipReply:1];
          }

          else
          {
            v14 = [MEMORY[0x277CD47F0] errorWithCode:-9 message:{@"Submechanism canceled, because KofN result has been already determined."}];
            [v13 finishRunWithResult:0 error:v14 skipReply:1];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v16.receiver = self;
    v16.super_class = MechanismKofN;
    resultCopy = v15;
    [(MechanismBase *)&v16 finishRunWithResult:v15 error:errorCopy];
  }
}

- (id)bestEffortAvailableMechanismForRequest:(id)request error:(id *)error
{
  errorCopy = error;
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v8 = [submechanisms countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(submechanisms);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v26 = 0;
        v14 = [v13 bestEffortAvailableMechanismForRequest:requestCopy error:{&v26, errorCopy}];
        v15 = v26;
        v16 = v15;
        if (v14)
        {
          [v6 addObject:v14];
        }

        else if (!v10)
        {
          v10 = v15;
        }
      }

      v9 = [submechanisms countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = [v6 count];
  if (v17 >= [(MechanismBaseComposite *)self k])
  {
    submechanisms2 = [(MechanismBaseComposite *)self submechanisms];
    v21 = [v6 isEqual:submechanisms2];

    v19 = errorCopy;
    if (v21)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = [MechanismKofN mechanismWithK:[(MechanismBaseComposite *)self k] ofSubmechanisms:v6 serial:self->_serial request:requestCopy];
    }

    v18 = selfCopy;
    if (!errorCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v18 = 0;
  v19 = errorCopy;
  if (errorCopy)
  {
LABEL_21:
    if (v18)
    {
      v23 = 0;
    }

    else
    {
      v23 = v10;
    }

    *v19 = v23;
  }

LABEL_25:

  return v18;
}

- (id)availabilityEventsForPurpose:(int64_t)purpose
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v7 = [submechanisms countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(submechanisms);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) availabilityEventsForPurpose:purpose];
        [v5 addEntriesFromDictionary:v11];
      }

      v8 = [submechanisms countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)findMechanismWithEventIdentifier:(int64_t)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v5 = [submechanisms countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(submechanisms);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) findMechanismWithEventIdentifier:identifier];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [submechanisms countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)mechanismTreeDescription
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v5 = [submechanisms countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(submechanisms);
        }

        mechanismTreeDescription = [*(*(&v14 + 1) + 8 * i) mechanismTreeDescription];
        [v3 addObject:mechanismTreeDescription];
      }

      v6 = [submechanisms countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([(MechanismBaseComposite *)self isAND])
  {
    v10 = @"&";
  }

  else
  {
    v10 = @"|";
  }

  v11 = [v3 componentsJoinedByString:v10];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v11];

  return v12;
}

- (BOOL)pause:(BOOL)pause forEvent:(int64_t)event error:(id *)error
{
  pauseCopy = pause;
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = MechanismKofN;
  [(MechanismBase *)&v23 pause:pause forEvent:event error:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v10 = [submechanisms countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(submechanisms);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      v18 = 0;
      [v14 pause:pauseCopy forEvent:event error:&v18];
      v15 = v18;
      if ([v14 eventIdentifier] == event)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [submechanisms countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

  if (error)
  {
    v16 = v15;
    *error = v15;
  }

  return v15 == 0;
}

- (BOOL)requiresUiWithEventProcessing:(id)processing
{
  v15 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v6 = [submechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(submechanisms);
        }

        if ([*(*(&v10 + 1) + 8 * i) requiresUiWithEventProcessing:processingCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [submechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)requiresRemoteViewControllerUiWithEventProcessing:(id)processing
{
  v15 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v6 = [submechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(submechanisms);
        }

        if ([*(*(&v10 + 1) + 8 * i) requiresRemoteViewControllerUiWithEventProcessing:processingCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [submechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)requiresHostingControllerUiWithEventProcessing:(id)processing
{
  v15 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v6 = [submechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(submechanisms);
        }

        if ([*(*(&v10 + 1) + 8 * i) requiresHostingControllerUiWithEventProcessing:processingCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [submechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)cachedExternalizationDelegate
{
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v3 = [submechanisms objectAtIndexedSubscript:0];
  cachedExternalizationDelegate = [v3 cachedExternalizationDelegate];

  return cachedExternalizationDelegate;
}

- (id)additionalControllerInternalInfoForPolicy:(int64_t)policy
{
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v6 = [submechanisms countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v6)
  {
    v10 = MEMORY[0x277CBEC10];
    goto LABEL_11;
  }

  v7 = v6;
  v20 = selfCopy;
  v8 = 0;
  v9 = *v23;
  v10 = MEMORY[0x277CBEC10];
  do
  {
    v11 = 0;
    v12 = v10;
    do
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(submechanisms);
      }

      v13 = [*(*(&v22 + 1) + 8 * v11) additionalControllerInternalInfoForPolicy:policy];
      v10 = [v12 dictionaryByMergingWith:v13];

      v14 = [v13 objectForKeyedSubscript:@"AuthType"];
      v8 |= [v14 intValue];

      ++v11;
      v12 = v10;
    }

    while (v7 != v11);
    v7 = [submechanisms countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v7);

  if (v8)
  {
    v26 = @"AuthType";
    selfCopy = v20;
    submechanisms = [MEMORY[0x277CCABB0] numberWithInteger:{v8 | ((-[MechanismBaseComposite k](v20, "k") > 1) << 30)}];
    v27 = submechanisms;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v10 dictionaryByMergingWith:v15];

    v10 = v16;
LABEL_11:

    goto LABEL_13;
  }

  selfCopy = v20;
LABEL_13:
  if ([v10 count])
  {
    v17 = v10;
  }

  else
  {
    v21.receiver = selfCopy;
    v21.super_class = MechanismKofN;
    v17 = [(MechanismBase *)&v21 additionalControllerInternalInfoForPolicy:policy];
  }

  v18 = v17;

  return v18;
}

- (void)setParent:(id)parent
{
  v16 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  v14.receiver = self;
  v14.super_class = MechanismKofN;
  [(MechanismBase *)&v14 setParent:parentCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v6 = [submechanisms countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(submechanisms);
        }

        [*(*(&v10 + 1) + 8 * v9++) setParent:parentCopy];
      }

      while (v7 != v9);
      v7 = [submechanisms countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

@end