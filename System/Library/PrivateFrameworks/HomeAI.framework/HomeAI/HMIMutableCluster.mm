@interface HMIMutableCluster
- (HMIMutableCluster)initWithFaceprint:(id)faceprint;
- (HMIMutableCluster)initWithTorsoprint:(id)torsoprint;
- (NSMutableArray)faceprintUUIDs;
- (NSMutableArray)torsoprintUUIDs;
- (NSMutableSet)linkedEntityUUIDs;
- (void)addFaceprints:(id)faceprints;
- (void)addTorsoprints:(id)torsoprints;
- (void)flushTorsoprints;
@end

@implementation HMIMutableCluster

- (HMIMutableCluster)initWithFaceprint:(id)faceprint
{
  faceprintCopy = faceprint;
  v25.receiver = self;
  v25.super_class = HMIMutableCluster;
  v5 = [(HMIMutableCluster *)&v25 init];
  if (v5)
  {
    v6 = [HMIMutableFloatArray alloc];
    data = [faceprintCopy data];
    v8 = [(HMIMutableFloatArray *)v6 initWithData:?];
    faceCentroid = v5->_faceCentroid;
    v5->_faceCentroid = v8;

    v10 = [HMIMutableFloatArray alloc];
    faceCentroid = [(HMIMutableCluster *)v5 faceCentroid];
    [faceCentroid count];
    v12 = [HMIMutableFloatArray initWithValue:v10 count:"initWithValue:count:"];
    torsoCentroid = v5->_torsoCentroid;
    v5->_torsoCentroid = v12;

    v14 = MEMORY[0x277CBEB18];
    uUID = [faceprintCopy UUID];
    v16 = [v14 arrayWithObject:?];
    faceprintUUIDs = v5->_faceprintUUIDs;
    v5->_faceprintUUIDs = v16;

    array = [MEMORY[0x277CBEB18] array];
    torsoprintUUIDs = v5->_torsoprintUUIDs;
    v5->_torsoprintUUIDs = array;

    v20 = [MEMORY[0x277CBEB58] set];
    linkedEntityUUIDs = v5->_linkedEntityUUIDs;
    v5->_linkedEntityUUIDs = v20;

    array2 = [MEMORY[0x277CBEB18] array];
    torsoprints = v5->_torsoprints;
    v5->_torsoprints = array2;
  }

  return v5;
}

- (HMIMutableCluster)initWithTorsoprint:(id)torsoprint
{
  torsoprintCopy = torsoprint;
  v25.receiver = self;
  v25.super_class = HMIMutableCluster;
  v5 = [(HMIMutableCluster *)&v25 init];
  if (v5)
  {
    v6 = [HMIMutableFloatArray alloc];
    data = [torsoprintCopy data];
    v8 = [(HMIMutableFloatArray *)v6 initWithData:?];
    torsoCentroid = v5->_torsoCentroid;
    v5->_torsoCentroid = v8;

    v10 = [HMIMutableFloatArray alloc];
    torsoCentroid = [(HMIMutableCluster *)v5 torsoCentroid];
    [torsoCentroid count];
    v12 = [HMIMutableFloatArray initWithValue:v10 count:"initWithValue:count:"];
    faceCentroid = v5->_faceCentroid;
    v5->_faceCentroid = v12;

    array = [MEMORY[0x277CBEB18] array];
    faceprintUUIDs = v5->_faceprintUUIDs;
    v5->_faceprintUUIDs = array;

    v16 = MEMORY[0x277CBEB18];
    uUID = [torsoprintCopy UUID];
    v18 = [v16 arrayWithObject:?];
    torsoprintUUIDs = v5->_torsoprintUUIDs;
    v5->_torsoprintUUIDs = v18;

    v20 = [MEMORY[0x277CBEB58] set];
    linkedEntityUUIDs = v5->_linkedEntityUUIDs;
    v5->_linkedEntityUUIDs = v20;

    if ([torsoprintCopy lowQuality] & 1) != 0 || (objc_msgSend(torsoprintCopy, "unrecognizable"))
    {
      array2 = [MEMORY[0x277CBEB18] array];
    }

    else
    {
      array2 = [MEMORY[0x277CBEB18] arrayWithObject:?];
    }

    torsoprints = v5->_torsoprints;
    v5->_torsoprints = array2;
  }

  return v5;
}

- (NSMutableArray)faceprintUUIDs
{
  v2 = [(NSMutableArray *)self->_faceprintUUIDs copy];

  return v2;
}

- (NSMutableArray)torsoprintUUIDs
{
  v2 = [(NSMutableArray *)self->_torsoprintUUIDs copy];

  return v2;
}

- (NSMutableSet)linkedEntityUUIDs
{
  v2 = [(NSMutableSet *)self->_linkedEntityUUIDs copy];

  return v2;
}

- (void)addFaceprints:(id)faceprints
{
  faceprintsCopy = faceprints;
  v5 = [(HMIMutableFloatArray *)self->_faceCentroid copy];
  [(HMIMutableCluster *)self faceCount];
  [v5 scale:?];
  obj = faceprintsCopy;
  v6 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(8 * i);
        v11 = [HMIMutableFloatArray alloc];
        data = [v10 data];
        v13 = [(HMIMutableFloatArray *)v11 initWithData:?];

        [v5 add:?];
        faceprintUUIDs = self->_faceprintUUIDs;
        uUID = [v10 UUID];
        [(NSMutableArray *)faceprintUUIDs addObject:?];
      }

      v7 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  [(HMIMutableCluster *)self faceCount];
  v16 = [v5 floatArrayByScaling:?];
  faceCentroid = self->_faceCentroid;
  self->_faceCentroid = v16;
}

- (void)addTorsoprints:(id)torsoprints
{
  torsoprintsCopy = torsoprints;
  v5 = [(HMIMutableFloatArray *)self->_torsoCentroid copy];
  [(HMIMutableCluster *)self torsoCount];
  [v5 scale:?];
  obj = torsoprintsCopy;
  v6 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(8 * i);
        v11 = [HMIMutableFloatArray alloc];
        data = [v10 data];
        v13 = [(HMIMutableFloatArray *)v11 initWithData:?];

        [v5 add:?];
        torsoprintUUIDs = self->_torsoprintUUIDs;
        uUID = [v10 UUID];
        [(NSMutableArray *)torsoprintUUIDs addObject:?];
      }

      v7 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  [(HMIMutableCluster *)self torsoCount];
  v16 = [v5 floatArrayByScaling:?];
  torsoCentroid = self->_torsoCentroid;
  self->_torsoCentroid = v16;

  v18 = [obj na_filter:?];
  [(NSMutableArray *)self->_torsoprints addObjectsFromArray:?];
  if ([(NSMutableArray *)self->_torsoprints count]>= 0x15)
  {
    [(NSMutableArray *)self->_torsoprints count];
    [(NSMutableArray *)self->_torsoprints removeObjectsInRange:?];
  }
}

uint64_t __36__HMIMutableCluster_addTorsoprints___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 lowQuality])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 unrecognizable] ^ 1;
  }

  return v3;
}

- (void)flushTorsoprints
{
  array = [MEMORY[0x277CBEB18] array];
  torsoprints = self->_torsoprints;
  self->_torsoprints = array;

  MEMORY[0x2821F96F8](array, torsoprints);
}

@end