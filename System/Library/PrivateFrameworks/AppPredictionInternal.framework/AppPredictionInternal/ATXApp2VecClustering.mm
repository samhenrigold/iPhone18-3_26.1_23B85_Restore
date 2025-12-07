@interface ATXApp2VecClustering
+ (id)sharedInstance;
+ (void)resetSharedInstance;
- (ATXApp2VecClustering)init;
- (float)_getL2DistanceFrom:(const float *)from to:(float *)to;
- (id)_getClosestClusterCentroidForVector:(const float *)vector;
- (id)_mergeClusterCentroids:(id)centroids forBundleIds:(id)ids;
- (id)getClosestClusterCentroidForBundleId:(id)id;
- (id)getClusterCentroidsForBundleIds:(id)ids;
- (void)init;
@end

@implementation ATXApp2VecClustering

- (ATXApp2VecClustering)init
{
  v3 = [MEMORY[0x277CEB3C0] pathForResource:@"_ATXApp2VecClusters" ofType:@"dat" isDirectory:0];
  v4 = [MEMORY[0x277CEB3C0] pathForResource:@"_ATXApp2VecMapping" ofType:@"dat" isDirectory:0];
  v16.receiver = self;
  v16.super_class = ATXApp2VecClustering;
  vectorLength2 = [(ATXApp2VecClustering *)&v16 init];
  v6 = vectorLength2;
  if (vectorLength2)
  {
    if (v3)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = [[ATXApp2VecMapping alloc] initWithPath:v3];
      clusterCentroids = v6->_clusterCentroids;
      v6->_clusterCentroids = v8;

      v10 = [[ATXApp2VecMapping alloc] initWithPath:v4];
      appEmbeddings = v6->_appEmbeddings;
      v6->_appEmbeddings = v10;

      vectorLength = [(ATXApp2VecMapping *)v6->_appEmbeddings vectorLength];
      v6->_vectorLength = vectorLength;
      vectorLength2 = [(ATXApp2VecMapping *)v6->_clusterCentroids vectorLength];
      if (vectorLength != vectorLength2)
      {
        [ATXApp2VecClustering init];
      }
    }

    if (v6->_clusterCentroids && v6->_appEmbeddings)
    {
      v13 = 1;
    }

    else
    {
      v14 = __atxlog_handle_default(vectorLength2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ATXApp2VecClustering *)v3 init];
      }

      v13 = 0;
    }

    v6->_loaded = v13;
  }

  return v6;
}

+ (id)sharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock_0);
  v2 = sharedInstance_0;
  if (!v2)
  {
    v2 = objc_opt_new();
    v3 = sharedInstance_0;
    sharedInstance_0 = v2;
  }

  pthread_mutex_unlock(&sharedInstanceLock_0);

  return v2;
}

+ (void)resetSharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock_0);
  v2 = sharedInstance_0;
  sharedInstance_0 = 0;

  pthread_mutex_unlock(&sharedInstanceLock_0);
}

- (id)getClusterCentroidsForBundleIds:(id)ids
{
  v19 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = idsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ATXApp2VecClustering *)self getClosestClusterCentroidForBundleId:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(ATXApp2VecClustering *)self _mergeClusterCentroids:v5 forBundleIds:v6];

  return v12;
}

- (id)_mergeClusterCentroids:(id)centroids forBundleIds:(id)ids
{
  v78 = *MEMORY[0x277D85DE8];
  centroidsCopy = centroids;
  idsCopy = ids;
  selfCopy = self;
  if (self->_loaded)
  {
    v8 = objc_opt_new();
    if ([idsCopy count])
    {
      v9 = 0;
      do
      {
        v10 = [centroidsCopy objectAtIndexedSubscript:v9];
        v11 = [v8 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v13 = [centroidsCopy objectAtIndexedSubscript:v9];
          [v8 setObject:v12 forKeyedSubscript:v13];
        }

        v14 = [centroidsCopy objectAtIndexedSubscript:v9];
        v15 = [v8 objectForKeyedSubscript:v14];
        v16 = [idsCopy objectAtIndexedSubscript:v9];
        [v15 addObject:v16];

        ++v9;
      }

      while ([idsCopy count] > v9);
    }

    v57 = idsCopy;
    v17 = centroidsCopy;
    allKeys = [v8 allKeys];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v19 = [allKeys countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v73;
      v55 = v8;
      v56 = centroidsCopy;
      v53 = v21;
      v54 = allKeys;
      do
      {
        v22 = 0;
        v58 = v20;
        do
        {
          if (*v73 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v72 + 1) + 8 * v22);
          v24 = [v8 objectForKeyedSubscript:v23];
          if ([v24 count] == 1)
          {
            v60 = &v52;
            v61 = v22;
            appEmbeddings = selfCopy->_appEmbeddings;
            v26 = &v52 - ((4 * selfCopy->_vectorLength + 15) & 0xFFFFFFFFFFFFFFF0);
            v62 = v24;
            v27 = [v24 objectAtIndexedSubscript:0];
            v64 = v26;
            LODWORD(appEmbeddings) = [(ATXApp2VecMapping *)appEmbeddings getVectorForBundleId:v27 into:v26];

            if (appEmbeddings)
            {
              v28 = v23;
              v59 = &v52;
              v63 = &v52 - ((4 * selfCopy->_vectorLength + 15) & 0xFFFFFFFFFFFFFFF0);
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v67 = v8;
              v29 = [v67 countByEnumeratingWithState:&v68 objects:v76 count:16];
              v65 = v28;
              if (v29)
              {
                v30 = v29;
                v31 = *v69;
                v32 = 3.4028e38;
                v65 = v28;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v69 != v31)
                    {
                      objc_enumerationMutation(v67);
                    }

                    v34 = *(*(&v68 + 1) + 8 * i);
                    if (v34 != v28)
                    {
                      if ([*(*(&v68 + 1) + 8 * i) integerValue])
                      {
                        v35 = selfCopy;
                        clusterCentroids = selfCopy->_clusterCentroids;
                        v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "integerValue") - 1}];
                        stringValue = [v37 stringValue];
                        v39 = clusterCentroids;
                        v40 = v63;
                        [(ATXApp2VecMapping *)v39 getVectorForBundleId:stringValue into:v63];

                        [(ATXApp2VecClustering *)v35 _getL2DistanceFrom:v64 to:v40];
                        if (v41 < v32)
                        {
                          v42 = v41;
                          v43 = v34;

                          v32 = v42;
                          v65 = v43;
                        }
                      }
                    }
                  }

                  v30 = [v67 countByEnumeratingWithState:&v68 objects:v76 count:16];
                }

                while (v30);
              }

              v44 = v67;

              [v44 removeObjectForKey:v28];
              v45 = v65;
              v46 = [v44 objectForKeyedSubscript:v65];
              v47 = v62;
              v48 = [v62 objectAtIndexedSubscript:0];
              [v46 addObject:v48];

              v49 = [v47 objectAtIndexedSubscript:0];
              v50 = [v57 indexOfObject:v49];

              v17 = v56;
              [v56 setObject:v45 atIndexedSubscript:v50];

              allKeys = v54;
              v8 = v55;
              v21 = v53;
              v20 = v58;
            }

            v22 = v61;
            v24 = v62;
          }

          ++v22;
        }

        while (v22 != v20);
        v20 = [allKeys countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v20);
    }

    centroidsCopy = v17;
    idsCopy = v57;
  }

  return centroidsCopy;
}

- (id)getClosestClusterCentroidForBundleId:(id)id
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (self->_loaded)
  {
    v4 = v7 - ((4 * self->_vectorLength + 15) & 0xFFFFFFFFFFFFFFF0);
    if ([(ATXApp2VecMapping *)self->_appEmbeddings getVectorForBundleId:id into:v4])
    {
      v5 = [(ATXApp2VecClustering *)self _getClosestClusterCentroidForVector:v4];
    }

    else
    {
      v5 = &unk_283A56A38;
    }
  }

  else
  {
    v5 = &unk_283A56A38;
  }

  return v5;
}

- (id)_getClosestClusterCentroidForVector:(const float *)vector
{
  v18[1] = *MEMORY[0x277D85DE8];
  appCount = [(ATXApp2VecMapping *)self->_clusterCentroids appCount];
  v18[0] = v18;
  v6 = v18 - ((4 * self->_vectorLength + 15) & 0xFFFFFFFFFFFFFFF0);
  if (appCount < 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = appCount;
    v8 = 0;
    v9 = 0;
    v10 = 3.4028e38;
    do
    {
      clusterCentroids = self->_clusterCentroids;
      v12 = [MEMORY[0x277CCABB0] numberWithInt:{v8, v18[0]}];
      stringValue = [v12 stringValue];
      [(ATXApp2VecMapping *)clusterCentroids getVectorForBundleId:stringValue into:v6];

      [(ATXApp2VecClustering *)self _getL2DistanceFrom:vector to:v6];
      if (v14 < v10)
      {
        v9 = v8 + 1;
      }

      v15 = v8 + 1;
      if (v14 < v10)
      {
        v10 = v14;
      }

      ++v8;
    }

    while (v7 != v15);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{v9, v18[0]}];

  return v16;
}

- (float)_getL2DistanceFrom:(const float *)from to:(float *)to
{
  catlas_saxpby_NEWLAPACK();

  cblas_snrm2_NEWLAPACK();
  return result;
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Could not load centroids (from %@) and embeddings (from %@)", &v3, 0x16u);
}

@end