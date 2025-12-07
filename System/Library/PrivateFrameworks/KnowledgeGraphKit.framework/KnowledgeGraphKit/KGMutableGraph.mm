@interface KGMutableGraph
- (BOOL)_applyEdgeChangeRequests:(id)requests error:(id *)error;
- (BOOL)_applyNodeChangeRequests:(id)requests error:(id *)error;
- (BOOL)_performChangesAndWait:(id)wait error:(id *)error;
- (BOOL)performChangesAndWait:(id)wait error:(id *)error;
- (KGMutableGraph)initWithMutableImplementation:(id)implementation entityFactory:(id)factory;
@end

@implementation KGMutableGraph

- (BOOL)performChangesAndWait:(id)wait error:(id *)error
{
  waitCopy = wait;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6485;
  v20 = __Block_byref_object_dispose__6486;
  v21 = 0;
  transactionQueue = self->_transactionQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__KGMutableGraph_performChangesAndWait_error___block_invoke;
  v12[3] = &unk_2797FFB88;
  v14 = &v22;
  v12[4] = self;
  v8 = waitCopy;
  v13 = v8;
  v15 = &v16;
  dispatch_sync(transactionQueue, v12);
  v9 = v23;
  if (error && (v23[3] & 1) == 0)
  {
    *error = v17[5];
    v9 = v23;
  }

  v10 = *(v9 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __46__KGMutableGraph_performChangesAndWait_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _performChangesAndWait:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)_performChangesAndWait:(id)wait error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  waitCopy = wait;
  mutableImplementation = [(KGMutableGraph *)self mutableImplementation];
  nodesToInsert = [waitCopy nodesToInsert];
  v9 = [mutableImplementation addNodes:nodesToInsert error:error];

  if (v9 && (-[KGMutableGraph mutableImplementation](self, "mutableImplementation"), v10 = objc_claimAutoreleasedReturnValue(), [waitCopy edgesToInsert], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "addEdges:error:", v11, error), v11, v10, v12) && (objc_msgSend(waitCopy, "nodeUpdates"), v13 = objc_claimAutoreleasedReturnValue(), v14 = -[KGMutableGraph _applyNodeChangeRequests:error:](self, "_applyNodeChangeRequests:error:", v13, error), v13, v14) && (objc_msgSend(waitCopy, "edgeUpdates"), v15 = objc_claimAutoreleasedReturnValue(), v16 = -[KGMutableGraph _applyEdgeChangeRequests:error:](self, "_applyEdgeChangeRequests:error:", v15, error), v15, v16) && (-[KGMutableGraph mutableImplementation](self, "mutableImplementation"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(waitCopy, "edgeIdentifiersToRemove"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "removeEdgesForIdentifiers:error:", v18, error), v18, v17, v19) && (-[KGMutableGraph mutableImplementation](self, "mutableImplementation"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(waitCopy, "nodeIdentifiersToRemove"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "removeNodesForIdentifiers:error:", v21, error), v21, v20, (v22 & 1) != 0))
  {
    v23 = 1;
  }

  else
  {
    v24 = KGLoggingConnection();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = *error;
      v27 = 138412290;
      v28 = v26;
      _os_log_error_impl(&dword_255870000, v24, OS_LOG_TYPE_ERROR, "Error with applying mutations (%@)", &v27, 0xCu);
    }

    v23 = 0;
  }

  [waitCopy setResolved];

  return v23;
}

- (BOOL)_applyEdgeChangeRequests:(id)requests error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  requestsCopy = requests;
  v7 = [requestsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        edge = [v11 edge];
        identifier = [edge identifier];

        properties = [v11 properties];
        if (properties)
        {
          v15 = properties;
          mutableImplementation = [(KGMutableGraph *)self mutableImplementation];
          v17 = [mutableImplementation updateEdgeForIdentifier:identifier withProperties:v15 error:error];

          if (!v17)
          {
            v18 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [requestsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_12:

  return v18;
}

- (BOOL)_applyNodeChangeRequests:(id)requests error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  requestsCopy = requests;
  v7 = [requestsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        node = [v11 node];
        identifier = [node identifier];

        properties = [v11 properties];
        if (properties)
        {
          v15 = properties;
          mutableImplementation = [(KGMutableGraph *)self mutableImplementation];
          v17 = [mutableImplementation updateNodeForIdentifier:identifier withProperties:v15 error:error];

          if (!v17)
          {
            v18 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [requestsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_12:

  return v18;
}

- (KGMutableGraph)initWithMutableImplementation:(id)implementation entityFactory:(id)factory
{
  v8.receiver = self;
  v8.super_class = KGMutableGraph;
  v4 = [(KGGraph *)&v8 initWithImplementation:implementation entityFactory:factory];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.kgdb.changes", 0);
    transactionQueue = v4->_transactionQueue;
    v4->_transactionQueue = v5;
  }

  return v4;
}

@end