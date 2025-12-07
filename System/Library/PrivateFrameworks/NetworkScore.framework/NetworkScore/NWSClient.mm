@interface NWSClient
- (id)prepareRemoteConnection;
- (void)deleteAllNWActivities:(id)activities;
- (void)deleteAllNWActivitiesForDomain:(int)domain start:(id)start end:(id)end completion:(id)completion;
- (void)deleteAllScores:(id)scores;
- (void)deleteAllScoresForBundleID:(id)d start:(id)start end:(id)end completion:(id)completion;
- (void)getAlgosScoreByUUID:(id)d completion:(id)completion;
- (void)getAllScoresForBundleID:(id)d start:(id)start end:(id)end completion:(id)completion;
- (void)getAllScoresForBundleIDAndType:(id)type type:(int64_t)a4 completion:(id)completion;
- (void)getCountofNWActivityObjectForDomain:(int)domain completion:(id)completion;
- (void)getCountofNWActivityObjects:(id)objects;
- (void)getCountofNWActivityObjectsForDomainAndLabel:(int)label label:(int)a4 completion:(id)completion;
- (void)getCountofScoreObjects:(id)objects;
- (void)getCountofScoreObjectsByType:(int64_t)type :(id)a4;
- (void)getCountofScoreObjectsForBundleID:(id)d completion:(id)completion;
- (void)getCountofScoreObjectsPerBundleID:(id)d;
- (void)getMostRecentScores:(id)scores;
- (void)getNWActivityByDomain:(int)domain completion:(id)completion;
- (void)getNWActivityByDomainAndLabel:(int)label label:(int)a4 completion:(id)completion;
- (void)getNWActivityByUUID:(id)d completion:(id)completion;
@end

@implementation NWSClient

- (void)getCountofScoreObjects:(id)objects
{
  objectsCopy = objects;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__NWSClient_getCountofScoreObjects___block_invoke;
    v8[3] = &unk_27996D100;
    v9 = objectsCopy;
    [prepareRemoteConnection getTotalAlgosScoreObjectCountWithCompletion:v8];
    v7 = v9;
  }

  else
  {
    v7 = nws_log_obj(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getCountofScoreObjectsForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__NWSClient_getCountofScoreObjectsForBundleID_completion___block_invoke;
    v11[3] = &unk_27996D100;
    v12 = completionCopy;
    [prepareRemoteConnection getTotalAlgosScoreObjectCountForBundleIDWithBundleID:dCopy completion:v11];
    v10 = v12;
  }

  else
  {
    v10 = nws_log_obj(0, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getCountofScoreObjectsPerBundleID:(id)d
{
  dCopy = d;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__NWSClient_getCountofScoreObjectsPerBundleID___block_invoke;
    v8[3] = &unk_27996D128;
    v9 = dCopy;
    [prepareRemoteConnection getTotalAlgosScoreObjectCountPerBundleIDWithCompletion:v8];
    v7 = v9;
  }

  else
  {
    v7 = nws_log_obj(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getCountofScoreObjectsByType:(int64_t)type :(id)a4
{
  typeCopy = type;
  v6 = a4;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__NWSClient_getCountofScoreObjectsByType::__block_invoke;
    v10[3] = &unk_27996D100;
    v11 = v6;
    [prepareRemoteConnection getAlgosScoreObjectCountByTypeWithType:typeCopy completion:v10];
    v9 = v11;
  }

  else
  {
    v9 = nws_log_obj(0, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getAlgosScoreByUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__NWSClient_getAlgosScoreByUUID_completion___block_invoke;
    v11[3] = &unk_27996D150;
    v12 = completionCopy;
    [prepareRemoteConnection getAlgosScoreByUUIDWithUuid:dCopy completion:v11];
    v10 = v12;
  }

  else
  {
    v10 = nws_log_obj(0, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getAllScoresForBundleIDAndType:(id)type type:(int64_t)a4 completion:(id)completion
{
  v6 = a4;
  typeCopy = type;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__NWSClient_getAllScoresForBundleIDAndType_type_completion___block_invoke;
    v13[3] = &unk_27996D150;
    v14 = completionCopy;
    [prepareRemoteConnection getAllAlgosScoreDataForBundleIDAndTypeWithBundleID:typeCopy type:v6 completion:v13];
    v12 = v14;
  }

  else
  {
    v12 = nws_log_obj(0, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getAllScoresForBundleID:(id)d start:(id)start end:(id)end completion:(id)completion
{
  dCopy = d;
  startCopy = start;
  endCopy = end;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__NWSClient_getAllScoresForBundleID_start_end_completion___block_invoke;
    v17[3] = &unk_27996D150;
    v18 = completionCopy;
    [prepareRemoteConnection getAllAlgosScoreDataForBundleIDWithBundleID:dCopy start:startCopy end:endCopy completion:v17];
    v16 = v18;
  }

  else
  {
    v16 = nws_log_obj(0, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getMostRecentScores:(id)scores
{
  scoresCopy = scores;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__NWSClient_getMostRecentScores___block_invoke;
    v8[3] = &unk_27996D150;
    v9 = scoresCopy;
    [prepareRemoteConnection getMostRecentAlgosScorePerBundleIDWithCompletion:v8];
    v7 = v9;
  }

  else
  {
    v7 = nws_log_obj(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)deleteAllScores:(id)scores
{
  scoresCopy = scores;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__NWSClient_deleteAllScores___block_invoke;
    v8[3] = &unk_27996D178;
    v9 = scoresCopy;
    [prepareRemoteConnection deleteAllAlgosScoreDataWithCompletion:v8];
    v7 = v9;
  }

  else
  {
    v7 = nws_log_obj(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)deleteAllScoresForBundleID:(id)d start:(id)start end:(id)end completion:(id)completion
{
  dCopy = d;
  startCopy = start;
  endCopy = end;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__NWSClient_deleteAllScoresForBundleID_start_end_completion___block_invoke;
    v17[3] = &unk_27996D100;
    v18 = completionCopy;
    [prepareRemoteConnection deleteAllAlgosScoreDataForBundleIDWithBundleID:dCopy start:startCopy end:endCopy completion:v17];
    v16 = v18;
  }

  else
  {
    v16 = nws_log_obj(0, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getCountofNWActivityObjects:(id)objects
{
  objectsCopy = objects;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
  {
    v7 = nws_log_obj(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__NWSClient_getCountofNWActivityObjects___block_invoke;
  v9[3] = &unk_27996D100;
  v10 = objectsCopy;
  v8 = objectsCopy;
  [prepareRemoteConnection getTotalNWActivityCountWithCompletion:v9];
}

- (void)getCountofNWActivityObjectForDomain:(int)domain completion:(id)completion
{
  v4 = *&domain;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
  {
    v9 = nws_log_obj(0, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__NWSClient_getCountofNWActivityObjectForDomain_completion___block_invoke;
  v11[3] = &unk_27996D100;
  v12 = completionCopy;
  v10 = completionCopy;
  [prepareRemoteConnection getTotalNWActivityCountForDomainWithDomain:v4 completion:v11];
}

- (void)getCountofNWActivityObjectsForDomainAndLabel:(int)label label:(int)a4 completion:(id)completion
{
  v5 = *&a4;
  v6 = *&label;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
  {
    v11 = nws_log_obj(0, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__NWSClient_getCountofNWActivityObjectsForDomainAndLabel_label_completion___block_invoke;
  v13[3] = &unk_27996D100;
  v14 = completionCopy;
  v12 = completionCopy;
  [prepareRemoteConnection getTotalNWActivityCountForDomainAndLabelWithDomain:v6 label:v5 completion:v13];
}

- (void)getNWActivityByUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
  {
    v10 = nws_log_obj(0, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__NWSClient_getNWActivityByUUID_completion___block_invoke;
  v12[3] = &unk_27996D150;
  v13 = completionCopy;
  v11 = completionCopy;
  [prepareRemoteConnection getNWActivityByUUIDWithUuid:dCopy completion:v12];
}

- (void)getNWActivityByDomain:(int)domain completion:(id)completion
{
  v4 = *&domain;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
  {
    v9 = nws_log_obj(0, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__NWSClient_getNWActivityByDomain_completion___block_invoke;
  v11[3] = &unk_27996D150;
  v12 = completionCopy;
  v10 = completionCopy;
  [prepareRemoteConnection getNWActivityByDomainWithDomain:v4 completion:v11];
}

- (void)getNWActivityByDomainAndLabel:(int)label label:(int)a4 completion:(id)completion
{
  v5 = *&a4;
  v6 = *&label;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
  {
    v11 = nws_log_obj(0, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__NWSClient_getNWActivityByDomainAndLabel_label_completion___block_invoke;
  v13[3] = &unk_27996D150;
  v14 = completionCopy;
  v12 = completionCopy;
  [prepareRemoteConnection getNWActivityByDomainAndLabelWithDomain:v6 label:v5 completion:v13];
}

- (void)deleteAllNWActivities:(id)activities
{
  activitiesCopy = activities;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
  {
    v7 = nws_log_obj(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__NWSClient_deleteAllNWActivities___block_invoke;
  v9[3] = &unk_27996D178;
  v10 = activitiesCopy;
  v8 = activitiesCopy;
  [prepareRemoteConnection deleteAllNWActivityDataWithCompletion:v9];
}

- (void)deleteAllNWActivitiesForDomain:(int)domain start:(id)start end:(id)end completion:(id)completion
{
  v8 = *&domain;
  startCopy = start;
  endCopy = end;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
  {
    v15 = nws_log_obj(0, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__NWSClient_deleteAllNWActivitiesForDomain_start_end_completion___block_invoke;
  v17[3] = &unk_27996D100;
  v18 = completionCopy;
  v16 = completionCopy;
  [prepareRemoteConnection deleteAllNWActivityDataForDomainWithDomain:v8 start:startCopy end:endCopy completion:v17];
}

- (id)prepareRemoteConnection
{
  connection = [(NWSClientConnection *)self connection];

  if (!connection)
  {
    [(NWSClientConnection *)self activateConnectionOn:0];
  }

  connection2 = [(NWSClientConnection *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__NWSClient_prepareRemoteConnection__block_invoke;
  v7[3] = &unk_27996CFE0;
  v7[4] = self;
  v5 = [connection2 remoteObjectProxyWithErrorHandler:v7];

  return v5;
}

void __36__NWSClient_prepareRemoteConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = nws_log_obj(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __36__NWSClient_prepareRemoteConnection__block_invoke_cold_1(v3, v5);
  }

  v6 = [*(a1 + 32) connection];
  [v6 invalidate];

  [*(a1 + 32) setConnection:0];
}

void __36__NWSClient_prepareRemoteConnection__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_25BA15000, a2, OS_LOG_TYPE_ERROR, "connection failed with error : %@", &v4, 0xCu);
}

@end