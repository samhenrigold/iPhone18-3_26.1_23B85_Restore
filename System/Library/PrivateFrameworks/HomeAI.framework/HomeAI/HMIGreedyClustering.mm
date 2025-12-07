@interface HMIGreedyClustering
+ (BOOL)addFaceObservations:(id)observations toFaceDescriptorBuffer:(void *)buffer error:(id *)error;
+ (float)faceDistanceFromDescriptor:(id)descriptor toDescriptor:(id)toDescriptor;
+ (id)centermostFaceprintInCluster:(id)cluster faceObservations:(id)observations;
- (HMIGreedyClustering)initWithFaceThreshold:(id)threshold singleLinkThreshold:(id)linkThreshold percentConnectionsThreshold:(id)connectionsThreshold error:(id *)error;
- (id).cxx_construct;
- (id)convertToClusters:(void *)clusters;
- (id)getClustersWithFaces:(id)faces error:(id *)error;
@end

@implementation HMIGreedyClustering

+ (BOOL)addFaceObservations:(id)observations toFaceDescriptorBuffer:(void *)buffer error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  observationsCopy = observations;
  v6 = [observationsCopy objectAtIndex:error];
  faceprint = [v6 faceprint];
  lengthInBytes = [faceprint lengthInBytes];

  homeai::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(buffer, [observationsCopy count], 1);
  std::vector<long long>::resize(buffer + 1, [observationsCopy count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = observationsCopy;
  v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    LODWORD(v11) = 0;
    v12 = *v23;
    do
    {
      v13 = 0;
      v11 = v11;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        faceprint2 = [v14 faceprint];
        descriptorData = [faceprint2 descriptorData];

        DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(buffer, v11);
        v18 = descriptorData;
        memcpy(DataForKthDescriptor, [descriptorData bytes], lengthInBytes);
        homeai::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(buffer, v11, [v14 faceId]);

        v13 = (v13 + 1);
        ++v11;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  return 1;
}

- (HMIGreedyClustering)initWithFaceThreshold:(id)threshold singleLinkThreshold:(id)linkThreshold percentConnectionsThreshold:(id)connectionsThreshold error:(id *)error
{
  thresholdCopy = threshold;
  linkThresholdCopy = linkThreshold;
  connectionsThresholdCopy = connectionsThreshold;
  v21.receiver = self;
  v21.super_class = HMIGreedyClustering;
  v13 = [(HMIGreedyClustering *)&v21 init];
  if (v13)
  {
    [thresholdCopy floatValue];
    if (v14 >= 0.0)
    {
      [linkThresholdCopy floatValue];
      if (v15 >= 0.0)
      {
        [thresholdCopy floatValue];
        [linkThresholdCopy floatValue];
        [connectionsThresholdCopy floatValue];
        std::allocate_shared[abi:ne200100]<homeai::clustering::GreedyClusterer,std::allocator<homeai::clustering::GreedyClusterer>,float,float,float,0>();
      }
    }

    v16 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:?];
    v17 = v16;
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    HMIErrorLog(v13, v17);

    v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)getClustersWithFaces:(id)faces error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  facesCopy = faces;
  if ([facesCopy count])
  {
    v6 = [facesCopy objectAtIndexedSubscript:?];
    v17 = 0;
    __p = 0;
    v12 = 0;
    v13 = 0;
    faceprint = [v6 faceprint];
    lengthInBytes = [faceprint lengthInBytes];
    homeai::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(v14, &__p, &v17, lengthInBytes, 0, 0);
    v15 = 1;
    v16 = 0;
    v14[0] = &unk_284053C80;
    v14[12] = (lengthInBytes >> 2);

    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    v15 = 2;
    if ([objc_opt_class() addFaceObservations:? toFaceDescriptorBuffer:? error:?])
    {
      __p = 0;
      v12 = 0;
      v13 = 0;
      homeai::clustering::GreedyClusterer::performClustering(self->_greedyClusterer.__ptr_, v14, &__p);
    }

    array = 0;
    v14[0] = &unk_284053C80;
    free(v16);
    homeai::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v14);
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)convertToClusters:(void *)clusters
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = *clusters; i != *(clusters + 1); i += 16)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
    v8 = [v5 objectForKeyedSubscript:?];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      [v8 addObject:?];
    }

    else
    {
      v10 = MEMORY[0x277CBEB18];
      v11 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      v8 = [v10 arrayWithObject:?];

      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      [v5 setObject:? forKeyedSubscript:?];
    }
  }

  allKeys = [v5 allKeys];
  v13 = [allKeys countByEnumeratingWithState:? objects:? count:?];
  if (v13)
  {
    v14 = MEMORY[0];
    do
    {
      for (j = 0; j != v13; j = (j + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(8 * j);
        v17 = objc_alloc_init(MEMORY[0x277CE2C10]);
        v18 = [v5 objectForKeyedSubscript:?];
        [v17 setObjects:?];
        [v16 intValue];
        [v17 setClusterId:?];
        objects = [v17 objects];
        [objects count];
        [v17 setTotalObjectCount:?];

        [v17 setShouldUpdateRepresentative:?];
        [v4 addObject:?];
      }

      v13 = [allKeys countByEnumeratingWithState:? objects:? count:?];
    }

    while (v13);
  }

  return v4;
}

+ (float)faceDistanceFromDescriptor:(id)descriptor toDescriptor:(id)toDescriptor
{
  descriptorCopy = descriptor;
  toDescriptorCopy = toDescriptor;
  v7 = [descriptorCopy length];
  if (v7 == [toDescriptorCopy length])
  {
    __C = 0.0;
    vDSP_dotpr([descriptorCopy bytes], 1, objc_msgSend(toDescriptorCopy, "bytes"), 1, &__C, 0x80uLL);
    v8 = 1.0 - __C;

    return v8;
  }

  else
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

+ (id)centermostFaceprintInCluster:(id)cluster faceObservations:(id)observations
{
  v59 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  observationsCopy = observations;
  v46 = clusterCopy;
  objects = [clusterCopy objects];
  v7 = [objects count];

  if (!v7 || ![observationsCopy count] || (objc_msgSend(observationsCopy, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "faceprint"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    _HMFPreconditionFailure();
LABEL_31:
    __break(1u);
  }

  firstObject = [observationsCopy firstObject];
  faceprint = [firstObject faceprint];
  lengthInBytes = [faceprint lengthInBytes];

  v48 = lengthInBytes >> 2;
  objects4 = v44 - (((lengthInBytes & 0x3FFFFFFFCLL) + 15) & 0x7FFFFFFF0);
  v45 = 4 * (lengthInBytes >> 2);
  bzero(objects4, v45);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  objects2 = [v46 objects];
  v44[1] = v44;
  v47 = objects2;
  v14 = [objects2 countByEnumeratingWithState:? objects:? count:?];
  v15 = (lengthInBytes >> 2) & 0x7FFFFFFF;
  if (!v14)
  {
    goto LABEL_14;
  }

  v16 = lengthInBytes >> 2;
  v17 = *v56;
  do
  {
    for (i = 0; i != v14; i = (i + 1))
    {
      if (*v56 != v17)
      {
        objc_enumerationMutation(v47);
      }

      [*(*(&v55 + 1) + 8 * i) intValue];
      v19 = [observationsCopy objectAtIndexedSubscript:?];
      faceprint2 = [v19 faceprint];
      descriptorData = [faceprint2 descriptorData];
      v22 = descriptorData;
      bytes = [descriptorData bytes];

      faceprint3 = [v19 faceprint];
      LODWORD(faceprint2) = v16 == [faceprint3 lengthInBytes] >> 2;

      if (!faceprint2)
      {
        _HMFPreconditionFailure();
        goto LABEL_31;
      }

      v25 = v15;
      v26 = objects4;
      if (v48 >= 1)
      {
        do
        {
          v27 = *bytes++;
          *v26 = v27 + *v26;
          ++v26;
          --v25;
        }

        while (v25);
      }
    }

    v14 = [v47 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v14);
LABEL_14:

  if (v48 >= 1)
  {
    v28 = objects4;
    do
    {
      v29 = *v28;
      objects3 = [v46 objects];
      *v28 = v29 / [objects3 count];

      ++v28;
      --v15;
    }

    while (v15);
  }

  v31 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  objects4 = [v46 objects];
  v32 = [objects4 countByEnumeratingWithState:? objects:? count:?];
  if (v32)
  {
    v33 = *v52;
    v34 = 100000.0;
    do
    {
      for (j = 0; j != v32; j = (j + 1))
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(objects4);
        }

        v36 = *(*(&v51 + 1) + 8 * j);
        [v36 intValue];
        v37 = [observationsCopy objectAtIndexedSubscript:?];
        faceprint4 = [v37 faceprint];
        descriptorData2 = [faceprint4 descriptorData];

        [HMIGreedyClustering faceDistanceFromDescriptor:"faceDistanceFromDescriptor:toDescriptor:" toDescriptor:?];
        v41 = v40;
        if (v40 < v34)
        {
          [v36 intValue];
          v34 = v41;
        }
      }

      v32 = [objects4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v32);
  }

  v42 = [observationsCopy objectAtIndexedSubscript:?];

  return v42;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end