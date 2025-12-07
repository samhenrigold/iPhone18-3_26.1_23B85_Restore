@interface DBGDataCoordinatorTargetHub
- (id)_createNodeWithDict:(id)dict;
- (id)_decompressedDataForRequestResponseData:(id)data;
- (id)compatibility_modernizedPropertyDescription:(id)description targetVersion:(float)version;
- (void)_addNodeToMatchingRootLevelGroup:(id)group;
- (void)_processFetchResults:(id)results forRequest:(id)request;
- (void)_processRequestLogs:(id)logs forRequest:(id)request;
- (void)_updateComputedPropertiesOfNode:(id)node;
- (void)_updateGroup:(id)group withDict:(id)dict;
- (void)_updateNode:(id)node withDict:(id)dict;
- (void)_updatePropertiesWithDicts:(id)dicts onNode:(id)node;
- (void)_updateProperty:(id)property withDict:(id)dict;
- (void)_updateSnapshotWithResponse:(id)response forRequest:(id)request;
- (void)_updateSubHierarchyOfProperty:(id)property;
- (void)_updateSubpropertiesWithDicts:(id)dicts onProperty:(id)property;
- (void)_writeRequestResponseToDiskIfNecessary:(id)necessary request:(id)request compressedSize:(unint64_t)size;
- (void)didReceiveData:(id)data forRequest:(id)request;
- (void)processDebugHierarchyObjectDict:(id)dict inGroup:(id)group isDirectChildGroup:(BOOL)childGroup;
- (void)processGroupDict:(id)dict isDirectChildGroup:(BOOL)group parentNode:(id)node;
@end

@implementation DBGDataCoordinatorTargetHub

- (void)didReceiveData:(id)data forRequest:(id)request
{
  dataCopy = data;
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = DBGDataCoordinatorTargetHub;
  [(DBGDataCoordinator *)&v12 didReceiveData:dataCopy forRequest:requestCopy];
  if (dataCopy)
  {
    v8 = [(DBGDataCoordinatorTargetHub *)self _decompressedDataForRequestResponseData:dataCopy];
    if (v8)
    {
      v11 = 0;
      v9 = [NSDictionary dictionaryWithJSONData:v8 error:&v11];
      v10 = v11;
      -[DBGDataCoordinatorTargetHub _writeRequestResponseToDiskIfNecessary:request:compressedSize:](self, "_writeRequestResponseToDiskIfNecessary:request:compressedSize:", v9, requestCopy, [dataCopy length]);
      if (v10)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
    }

    [(DBGDataCoordinatorTargetHub *)self _processFetchResults:v9 forRequest:requestCopy];
    v10 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_decompressedDataForRequestResponseData:(id)data
{
  dataCopy = data;
  dataSourceConnection = [(DBGDataCoordinator *)self dataSourceConnection];
  [dataSourceConnection debugHierarchyVersion];
  v7 = v6;

  if (v7 <= 2.1)
  {
    [dataCopy dbg_gzipInflateRaw];
  }

  else
  {
    [dataCopy dbg_gzipInflateIfCompressed];
  }
  v8 = ;

  return v8;
}

- (void)_processFetchResults:(id)results forRequest:(id)request
{
  resultsCopy = results;
  requestCopy = request;
  v8 = DebugHierarchySnapshotModelOSLog(requestCopy);
  v9 = os_signpost_id_make_with_pointer(v8, requestCopy);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    name = [requestCopy name];
    v58 = 136446466;
    v59 = "All";
    v60 = 2114;
    v61 = name;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Process Fetch Results", "Process: %{public}s (%{public}@)", &v58, 0x16u);
  }

  v13 = [resultsCopy objectForKeyedSubscript:DebugHierarchyRequestKey];
  v14 = v13;
  if (v13)
  {
    v15 = [DebugHierarchyRequest requestWithDictionary:v13];
    v13 = [resultsCopy count];
    if (v13 == &dword_0 + 1)
    {
      v13 = [requestCopy setStatus:-2];
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = DebugHierarchySnapshotModelOSLog(v13);
  logs = [v15 logs];
  v18 = os_signpost_id_make_with_pointer(v16, logs);

  v19 = v16;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    name2 = [requestCopy name];
    v58 = 136446466;
    v59 = "Logs";
    v60 = 2114;
    v61 = name2;
    _os_signpost_emit_with_name_impl(&dword_0, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Process Fetch Results", "Process: %{public}s (%{public}@)", &v58, 0x16u);
  }

  logs2 = [v15 logs];
  [(DBGDataCoordinatorTargetHub *)self _processRequestLogs:logs2 forRequest:requestCopy];

  v24 = DebugHierarchySnapshotModelOSLog(v23);
  logs3 = [v15 logs];
  v26 = os_signpost_id_make_with_pointer(v24, logs3);

  v27 = v24;
  v28 = v27;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    LOWORD(v58) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v28, OS_SIGNPOST_INTERVAL_END, v26, "Process Fetch Results", "Completed", &v58, 2u);
  }

  v29 = [resultsCopy objectForKeyedSubscript:DebugHierarchyRequestRuntimeInformationKey];
  v30 = DebugHierarchySnapshotModelOSLog(v29);
  v31 = os_signpost_id_make_with_pointer(v30, v29);
  v32 = v30;
  v33 = v32;
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    name3 = [requestCopy name];
    v58 = 136446466;
    v59 = "Runtime Info";
    v60 = 2114;
    v61 = name3;
    _os_signpost_emit_with_name_impl(&dword_0, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "Process Fetch Results", "Process: %{public}s (%{public}@)", &v58, 0x16u);
  }

  v35 = [v29 count];
  if (v35)
  {
    v36 = [DebugHierarchyRuntimeInfo runtimeInfoWithSerializedRepresentation:v29];
    snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
    runtimeInfo = [snapshotManager runtimeInfo];
    [runtimeInfo mergeWith:v36];
  }

  v39 = DebugHierarchySnapshotModelOSLog(v35);
  v40 = os_signpost_id_make_with_pointer(v39, v29);
  v41 = v39;
  v42 = v41;
  if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    LOWORD(v58) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v42, OS_SIGNPOST_INTERVAL_END, v40, "Process Fetch Results", "Completed", &v58, 2u);
  }

  v44 = DebugHierarchySnapshotModelOSLog(v43);
  v45 = os_signpost_id_make_with_pointer(v44, resultsCopy);
  v46 = v44;
  v47 = v46;
  if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    name4 = [requestCopy name];
    v58 = 136446466;
    v59 = "Snapshot Model";
    v60 = 2114;
    v61 = name4;
    _os_signpost_emit_with_name_impl(&dword_0, v47, OS_SIGNPOST_INTERVAL_BEGIN, v45, "Process Fetch Results", "Process: %{public}s (%{public}@)", &v58, 0x16u);
  }

  v49 = DebugHierarchySnapshotModelOSLog([(DBGDataCoordinatorTargetHub *)self _updateSnapshotWithResponse:resultsCopy forRequest:requestCopy]);
  v50 = os_signpost_id_make_with_pointer(v49, resultsCopy);
  v51 = v49;
  v52 = v51;
  if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    LOWORD(v58) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v52, OS_SIGNPOST_INTERVAL_END, v50, "Process Fetch Results", "Completed", &v58, 2u);
  }

  v54 = DebugHierarchySnapshotModelOSLog(v53);
  v55 = os_signpost_id_make_with_pointer(v54, requestCopy);
  v56 = v54;
  v57 = v56;
  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    LOWORD(v58) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v57, OS_SIGNPOST_INTERVAL_END, v55, "Process Fetch Results", "Completed", &v58, 2u);
  }
}

- (void)_processRequestLogs:(id)logs forRequest:(id)request
{
  logsCopy = logs;
  requestCopy = request;
  if ([logsCopy count])
  {
    logs = [requestCopy logs];
    v9 = [logs count];

    if (v9)
    {
      logs2 = [requestCopy logs];
      v11 = [logs2 arrayByAddingObjectsFromArray:logsCopy];
      [requestCopy setLogs:v11];
    }

    else
    {
      [requestCopy setLogs:logsCopy];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = logsCopy;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
          [snapshotManager logMessage:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (void)_updateSnapshotWithResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  v6 = +[NSMutableDictionary dictionary];
  [(DBGDataCoordinatorTargetHub *)self setPendingChildNodes:v6];

  v38 = [responseCopy objectForKeyedSubscript:DebugHierarchyRequestTopLevelGroupsKey];
  allValues = [v38 allValues];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [allValues countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [(DBGDataCoordinatorTargetHub *)self processGroupDict:*(*(&v51 + 1) + 8 * i) isDirectChildGroup:1 parentNode:0];
      }

      v9 = [allValues countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v9);
  }

  [(DBGDataCoordinatorTargetHub *)self setPendingChildNodes:0, allValues];
  v39 = responseCopy;
  [responseCopy objectForKeyedSubscript:DebugHierarchyRequestTopLevelPropertyDescriptionsKey];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = v50 = 0u;
  obj = [v40 keyEnumerator];
  v12 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v48;
    do
    {
      v15 = 0;
      v41 = v13;
      do
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * v15);
        v17 = [v16 rangeOfString:@"."];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v16 substringToIndex:v17];
          selfCopy = self;
          snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
          snapshot = [snapshotManager snapshot];
          identifierToNodeMap = [snapshot identifierToNodeMap];
          v23 = [identifierToNodeMap objectForKey:v18];

          if (v23)
          {
            v24 = [v40 objectForKeyedSubscript:v16];
            v25 = [v24 objectForKeyedSubscript:@"fetchStatus"];
            v26 = v25;
            if (!v25 || ([v25 unsignedIntegerValue] & 0xFFFFFFFFFFFFFFF7) != 0)
            {
              v27 = [v24 objectForKeyedSubscript:@"propertyName"];
              v28 = [v23 propertyWithName:v27];
              [(DBGDataCoordinatorTargetHub *)selfCopy _updateProperty:v28 withDict:v24];
            }
          }

          v13 = v41;
          self = selfCopy;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v13);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  snapshotTransformers = [(DBGDataCoordinator *)self snapshotTransformers];
  v30 = [snapshotTransformers countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(snapshotTransformers);
        }

        v34 = *(*(&v43 + 1) + 8 * j);
        snapshotManager2 = [(DBGDataCoordinator *)self snapshotManager];
        snapshot2 = [snapshotManager2 snapshot];
        [v34 snapshotDidUpdate:snapshot2];
      }

      v31 = [snapshotTransformers countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v31);
  }
}

- (void)processGroupDict:(id)dict isDirectChildGroup:(BOOL)group parentNode:(id)node
{
  groupCopy = group;
  dictCopy = dict;
  nodeCopy = node;
  snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
  snapshot = [snapshotManager snapshot];

  v12 = [dictCopy objectForKeyedSubscript:@"groupingID"];
  v13 = [dictCopy objectForKeyedSubscript:@"debugHierarchyObjects"];
  if (nodeCopy)
  {
    v14 = [nodeCopy groupWithID:v12];
    if (v14)
    {
      goto LABEL_9;
    }

    if (groupCopy)
    {
      v14 = [DBGSnapshotGroup strongObjectsGroupWithIdentifier:v12];
      [nodeCopy setChildGroup:v14];
    }

    else
    {
      v14 = [DBGSnapshotGroup weakObjectsGroupWithIdentifier:v12];
      [nodeCopy addAdditonalGroup:v14];
    }
  }

  else
  {
    v14 = [snapshot rootLevelSnapshotGroupWithIdentifier:v12];
    if (!v14)
    {
      v14 = [DBGSnapshotGroup strongObjectsGroupWithIdentifier:v12];
      [snapshot addRootLevelGroup:v14];
    }
  }

  [(DBGDataCoordinatorTargetHub *)self _updateGroup:v14 withDict:dictCopy];
LABEL_9:
  v21 = nodeCopy;
  v15 = snapshot;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(DBGDataCoordinatorTargetHub *)self processDebugHierarchyObjectDict:*(*(&v22 + 1) + 8 * i) inGroup:v14 isDirectChildGroup:groupCopy];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }
}

- (void)processDebugHierarchyObjectDict:(id)dict inGroup:(id)group isDirectChildGroup:(BOOL)childGroup
{
  childGroupCopy = childGroup;
  dictCopy = dict;
  groupCopy = group;
  snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
  snapshot = [snapshotManager snapshot];

  v12 = [dictCopy objectForKeyedSubscript:@"objectID"];
  pendingChildNodes = [(DBGDataCoordinatorTargetHub *)self pendingChildNodes];
  v14 = [pendingChildNodes objectForKeyedSubscript:v12];

  v15 = v14;
  v25 = snapshot;
  if (v14 || ([snapshot identifierToNodeMap], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKey:", v12), v15 = objc_claimAutoreleasedReturnValue(), v16, v15))
  {
    [(DBGDataCoordinatorTargetHub *)self _updateNode:v15 withDict:dictCopy];
    [groupCopy addObject:v15];
    if (v14 && childGroupCopy)
    {
      pendingChildNodes2 = [(DBGDataCoordinatorTargetHub *)self pendingChildNodes];
      [pendingChildNodes2 removeObjectForKey:v12];
    }
  }

  else
  {
    v15 = [(DBGDataCoordinatorTargetHub *)self _createNodeWithDict:dictCopy];
    if (groupCopy)
    {
      if (!childGroupCopy)
      {
        pendingChildNodes3 = [(DBGDataCoordinatorTargetHub *)self pendingChildNodes];
        [pendingChildNodes3 setObject:v15 forKeyedSubscript:v12];
      }

      [groupCopy addObject:v15];
    }

    else
    {
      [(DBGDataCoordinatorTargetHub *)self _addNodeToMatchingRootLevelGroup:v15];
    }
  }

  v18 = [dictCopy objectForKeyedSubscript:@"childGroup"];
  if (v18)
  {
    [(DBGDataCoordinatorTargetHub *)self processGroupDict:v18 isDirectChildGroup:1 parentNode:v15];
  }

  v19 = [dictCopy objectForKeyedSubscript:@"additionalGroups"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(DBGDataCoordinatorTargetHub *)self processGroupDict:*(*(&v26 + 1) + 8 * v23) isDirectChildGroup:0 parentNode:v15];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }
}

- (void)_addNodeToMatchingRootLevelGroup:(id)group
{
  childGroup = [group childGroup];
  groupingIdentifier = [childGroup groupingIdentifier];

  snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
  snapshot = [snapshotManager snapshot];
  v7 = [snapshot rootLevelSnapshotGroupWithIdentifier:groupingIdentifier];

  if (!v7)
  {
    v7 = [DBGSnapshotGroup strongObjectsGroupWithIdentifier:groupingIdentifier];
  }
}

- (id)_createNodeWithDict:(id)dict
{
  dictCopy = dict;
  v5 = [dictCopy objectForKeyedSubscript:@"objectID"];
  v6 = [DBGSnapshotNode nodeWithIdentifier:v5];
  snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
  snapshot = [snapshotManager snapshot];
  [v6 setSnapshot:snapshot];

  [(DBGDataCoordinatorTargetHub *)self _updateNode:v6 withDict:dictCopy];

  return v6;
}

- (void)_updateGroup:(id)group withDict:(id)dict
{
  groupCopy = group;
  v5 = [dict objectForKeyedSubscript:@"defaultDisplayName"];
  if (v5)
  {
    [groupCopy setDefaultDisplayName:v5];
  }
}

- (void)_updateNode:(id)node withDict:(id)dict
{
  nodeCopy = node;
  dictCopy = dict;
  if ((_DBGDictionaryDescribesDebugHierarchyObjectReference(dictCopy) & 1) == 0)
  {
    v7 = [dictCopy objectForKeyedSubscript:@"visibility"];
    integerValue = [v7 integerValue];

    [nodeCopy setVisibility:integerValue];
    v9 = [dictCopy objectForKeyedSubscript:@"className"];
    if (v9)
    {
      snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
      runtimeInfo = [snapshotManager runtimeInfo];
      v12 = [runtimeInfo typeWithName:v9];
      [nodeCopy setRuntimeType:v12];
    }

    v13 = [dictCopy objectForKeyedSubscript:@"properties"];
    if ([v13 count])
    {
      [(DBGDataCoordinatorTargetHub *)self _updatePropertiesWithDicts:v13 onNode:nodeCopy];
    }
  }
}

- (void)_updatePropertiesWithDicts:(id)dicts onNode:(id)node
{
  dictsCopy = dicts;
  nodeCopy = node;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [dictsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(dictsCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([v12 count])
        {
          v13 = [v12 objectForKeyedSubscript:@"propertyName"];
          if (v13)
          {
            v14 = [nodeCopy propertyWithName:v13];
            if (!v14)
            {
              v14 = [DBGSnapshotProperty propertyWithName:v13];
              [nodeCopy addProperty:v14];
            }

            [(DBGDataCoordinatorTargetHub *)self _updateProperty:v14 withDict:v12];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [dictsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(DBGDataCoordinatorTargetHub *)self _updateComputedPropertiesOfNode:nodeCopy];
}

- (void)_updateProperty:(id)property withDict:(id)dict
{
  propertyCopy = property;
  dictCopy = dict;
  dataSourceConnection = [(DBGDataCoordinator *)self dataSourceConnection];
  [dataSourceConnection debugHierarchyVersion];
  v8 = [(DBGDataCoordinatorTargetHub *)self compatibility_modernizedPropertyDescription:dictCopy targetVersion:?];

  [propertyCopy updateWithJSONPropertyDescription:v8];
  v9 = [v8 objectForKeyedSubscript:@"subproperties"];
  [(DBGDataCoordinatorTargetHub *)self _updateSubpropertiesWithDicts:v9 onProperty:propertyCopy];
  name = [propertyCopy name];
  v11 = [name isEqualToString:@"dbgSubviewHierarchy"];

  if (v11)
  {
    [(DBGDataCoordinatorTargetHub *)self _updateSubHierarchyOfProperty:propertyCopy];
  }
}

- (void)_updateSubpropertiesWithDicts:(id)dicts onProperty:(id)property
{
  dictsCopy = dicts;
  propertyCopy = property;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [dictsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(dictsCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"propertyName"];
        v14 = [propertyCopy subpropertyWithName:v13];
        if (!v14)
        {
          v14 = [DBGSnapshotProperty propertyWithName:v13];
          [propertyCopy addSubproperty:v14];
        }

        [(DBGDataCoordinatorTargetHub *)self _updateProperty:v14 withDict:v12];
      }

      v9 = [dictsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_updateSubHierarchyOfProperty:(id)property
{
  propertyCopy = property;
  dataValue = [propertyCopy dataValue];
  if ([dataValue length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    snapshotTransformers = [(DBGDataCoordinator *)self snapshotTransformers];
    v7 = [snapshotTransformers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(snapshotTransformers);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          snapshotManager = [(DBGDataCoordinator *)self snapshotManager];
          snapshot = [snapshotManager snapshot];
          [v11 updateSnapshot:snapshot withSubHierarchyProperty:propertyCopy];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [snapshotTransformers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)_updateComputedPropertiesOfNode:(id)node
{
  nodeCopy = node;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  snapshotTransformers = [(DBGDataCoordinator *)self snapshotTransformers];
  v6 = [snapshotTransformers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(snapshotTransformers);
        }

        [*(*(&v10 + 1) + 8 * v9) updateComputedPropertiesOfNode:nodeCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [snapshotTransformers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_writeRequestResponseToDiskIfNecessary:(id)necessary request:(id)request compressedSize:(unint64_t)size
{
  necessaryCopy = necessary;
  requestCopy = request;
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 valueForKey:@"DBGViewDebuggerWriteFetchedHierarchyToFile"];

  if ([v9 length])
  {
    stringByExpandingTildeInPath = [v9 stringByExpandingTildeInPath];

    v11 = DebugHierarchyRequestMetaDataKey;
    v12 = [necessaryCopy objectForKeyedSubscript:DebugHierarchyRequestMetaDataKey];
    v13 = [v12 mutableCopy];

    if (v13)
    {
      v14 = DebugHierarchyRequestMetaDataRequestPerformanceKey;
      v15 = [v13 objectForKeyedSubscript:DebugHierarchyRequestMetaDataRequestPerformanceKey];
      v16 = [v15 mutableCopy];

      if (v16)
      {
        executionEndDate = [requestCopy executionEndDate];
        executionStartDate = [requestCopy executionStartDate];
        [executionEndDate timeIntervalSinceDate:executionStartDate];
        v19 = [NSNumber numberWithDouble:?];
        [v16 setObject:v19 forKeyedSubscript:@"totalRequestExecutionDuration"];

        v20 = objc_alloc_init(NSByteCountFormatter);
        v21 = [v20 stringFromByteCount:size];
        [v16 setObject:v21 forKeyedSubscript:@"compressedSize"];

        [v13 setObject:v16 forKeyedSubscript:v14];
        v22 = [necessaryCopy mutableCopy];
        [v22 setObject:v13 forKeyedSubscript:v11];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = necessaryCopy;
    if (v22)
    {
      v23 = v22;
    }

    v24 = [v23 generateJSONDataWithError:0];
    pathExtension = [stringByExpandingTildeInPath pathExtension];
    v26 = [pathExtension length];

    if (!v26)
    {
      v27 = _writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter;
      if (!_writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter)
      {
        v28 = objc_alloc_init(NSDateFormatter);
        v29 = _writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter;
        _writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter = v28;

        [_writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter setDateFormat:@"HH-mm-ss.SSSS"];
        v30 = +[NSTimeZone localTimeZone];
        [_writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter setTimeZone:v30];

        v27 = _writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter;
      }

      v31 = +[NSDate date];
      v32 = [v27 stringFromDate:v31];
      v33 = [NSString stringWithFormat:@"%@-%@.json", stringByExpandingTildeInPath, v32];

      stringByExpandingTildeInPath = v33;
    }

    [v24 writeToFile:stringByExpandingTildeInPath atomically:1];

    v9 = stringByExpandingTildeInPath;
  }
}

- (id)compatibility_modernizedPropertyDescription:(id)description targetVersion:(float)version
{
  descriptionCopy = description;
  v6 = descriptionCopy;
  v7 = version < 2.0 && version == 1.0;
  v8 = descriptionCopy;
  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = [descriptionCopy mutableCopy];
  v10 = [v9 objectForKeyedSubscript:@"propertyValueStatus"];
  v11 = v10;
  if (!v10)
  {
    v14 = [v6 objectForKeyedSubscript:@"propertyValue"];

    if (v14)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_17;
  }

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue == &dword_0 + 3)
    {
      v13 = 8;
      goto LABEL_17;
    }

    if (unsignedIntegerValue != &dword_0 + 1)
    {
      v13 = 0;
      goto LABEL_17;
    }

    [v9 removeObjectForKey:@"propertyValue"];
  }

  v13 = 4;
LABEL_17:
  v15 = [NSNumber numberWithLong:v13];
  [v9 setObject:v15 forKeyedSubscript:@"fetchStatus"];

  v16 = [v6 objectForKeyedSubscript:@"propertyVisibility"];
  v17 = v16;
  if (v16)
  {
    [v16 integerValue];
  }

  v8 = [v9 copy];

LABEL_20:

  return v8;
}

@end