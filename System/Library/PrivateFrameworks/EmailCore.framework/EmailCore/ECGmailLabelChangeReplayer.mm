@interface ECGmailLabelChangeReplayer
- (id)replayAction;
@end

@implementation ECGmailLabelChangeReplayer

- (id)replayAction
{
  v45 = *MEMORY[0x277D85DE8];
  action = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECGmailLabelChangeReplayer.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"[labelChangeAction isKindOfClass:[ECLabelChangeMessageAction class]]"}];
  }

  remoteIDs = [action remoteIDs];
  messages = [action messages];
  v5 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = remoteIDs;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addIndex:{objc_msgSend(*(*(&v39 + 1) + 8 * i), "integerValue")}];
      }

      v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = messages;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v10);
        }

        remoteID = [*(*(&v35 + 1) + 8 * j) remoteID];
        integerValue = [remoteID integerValue];

        if (integerValue)
        {
          [v5 addIndex:?];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v11);
  }

  labelsToAdd = [action labelsToAdd];
  v16 = [labelsToAdd valueForKey:@"labelName"];
  allObjects = [v16 allObjects];

  labelsToRemove = [action labelsToRemove];
  v19 = [labelsToRemove valueForKey:@"labelName"];
  allObjects2 = [v19 allObjects];

  if ([allObjects count] && (-[ECGmailLabelChangeReplayer serverInterface](self, "serverInterface"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "storeGmailLabels:state:forUIDs:", allObjects, 1, v5), v21, !v22) || objc_msgSend(allObjects2, "count") && (-[ECGmailLabelChangeReplayer serverInterface](self, "serverInterface"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "storeGmailLabels:state:forUIDs:", allObjects2, 0, v5), v23, !v24))
  {
    serverInterface = [(ECGmailLabelChangeReplayer *)self serverInterface];
    hasValidConnection = [serverInterface hasValidConnection];

    if (hasValidConnection)
    {
      v28 = [ECLocalMessageActionResults alloc];
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECLocalActionReplayErrorDomain" code:1 userInfo:0];
      v25 = [(ECLocalMessageActionResults *)v28 initWithError:v29];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = [[ECLocalMessageActionResults alloc] initWithError:0];
  }

  return v25;
}

@end