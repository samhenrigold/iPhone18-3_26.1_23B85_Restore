@interface HMIPersonTracker
- (HMIPersonTracker)init;
- (id)getBlobIDAtIndex:(unint64_t)index;
- (void)trackNewPersons:(id)persons knownPersons:(id)knownPersons regionOfInterest:(CGRect)interest timeStamp:(id *)stamp;
@end

@implementation HMIPersonTracker

- (HMIPersonTracker)init
{
  v6.receiver = self;
  v6.super_class = HMIPersonTracker;
  v2 = [(HMIPersonTracker *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    previousPersons = v2->_previousPersons;
    v2->_previousPersons = array;
  }

  return v2;
}

- (void)trackNewPersons:(id)persons knownPersons:(id)knownPersons regionOfInterest:(CGRect)interest timeStamp:(id *)stamp
{
  knownPersonsCopy = knownPersons;
  personsCopy = persons;
  v39 = [knownPersonsCopy na_map:?];
  v10 = [MEMORY[0x277CBEB98] setWithArray:?];

  v11 = [v10 na_map:?];

  v12 = [personsCopy na_map:?];

  previousPersons = [(HMIPersonTracker *)self previousPersons];
  v52 = v11;
  v40 = v11;
  v14 = [previousPersons na_map:?];

  array = [MEMORY[0x277CBEB18] array];
  v50 = v12;
  v51 = array;
  v37 = array;
  [v14 enumerateObjectsUsingBlock:?];
  v16 = MEMORY[0x277CCAB58];
  [v14 count];
  v17 = [v16 indexSetWithIndexesInRange:?];
  v18 = MEMORY[0x277CCAB58];
  [v50 count];
  v19 = [v18 indexSetWithIndexesInRange:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  v45 = v17;
  v46 = indexSet;
  v47 = indexSet2;
  v48 = dictionary;
  v49 = dictionary2;
  v24 = dictionary2;
  v25 = dictionary;
  v36 = v19;
  v26 = v17;
  [v37 na_each:?];
  v43 = v50;
  v44 = v14;
  [v25 na_each:?];
  v42 = v44;
  v35 = v46;
  v27 = v47;
  v28 = v43;
  [v24 na_each:?];
  array2 = [MEMORY[0x277CBEB18] array];
  v29 = array2;
  v30 = v42;
  [v26 enumerateIndexesUsingBlock:?];
  previousPersons2 = [(HMIPersonTracker *)self previousPersons];
  [previousPersons2 removeAllObjects];

  previousPersons3 = [(HMIPersonTracker *)self previousPersons];
  [previousPersons3 addObjectsFromArray:?];

  previousPersons4 = [(HMIPersonTracker *)self previousPersons];
  [previousPersons4 addObjectsFromArray:?];

  previousPersons5 = [(HMIPersonTracker *)self previousPersons];
  [previousPersons5 addObjectsFromArray:?];
}

HMIPersonBlob *__76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMIPersonBlob alloc] initWithNewPersonEvent:*(a1 + 32) timeStamp:*(a1 + 48)];

  return v4;
}

HMIPersonBlob *__76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMIPersonBlob alloc] initWithNewPersonEvent:*(a1 + 32) timeStamp:*(a1 + 48)];

  return v4;
}

void *__76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 personIndices];
  [v4 removeAllIndexes];

  v5 = *(a1 + 32);
  v6 = [v3 blobID];
  if ([v5 containsObject:?])
  {
    v7 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    if ([v3 isExpiredAtTimeStamp:{v10, v11}])
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }
  }

  v8 = v7;

  return v7;
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_6;
  v11 = &unk_278753468;
  v12 = v5;
  v14 = a3;
  v6 = *(a1 + 32);
  v13 = *(a1 + 40);
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:?];
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  [v24 similarityToPersonBlob:?];
  v5 = v4;
  if (v4 > 0.0)
  {
    v6 = [HMIPairwiseMatch initWithFirstIndex:"initWithFirstIndex:secondIndex:score:" secondIndex:? score:?];
    v7 = *(a1 + 40);
    [v7 count];
    [v7 indexOfObject:? inSortedRange:? options:? usingComparator:?];
    [*(a1 + 40) insertObject:? atIndex:?];
  }

  [*(a1 + 32) boundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v24 boundingBox];
  v27.origin.x = v16;
  v27.origin.y = v17;
  v27.size.width = v18;
  v27.size.height = v19;
  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  v20 = CGRectIntersectsRect(v26, v27);
  if (v5 >= 0.0 && v20)
  {
    v22 = [*(a1 + 32) personIndices];
    [v22 addIndex:?];

    v23 = [v24 personIndices];
    [v23 addIndex:?];
  }
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_7(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v17 = v3;
  [v3 firstIndex];
  if ([v4 containsIndex:?])
  {
    v5 = a1[5];
    [v17 secondIndex];
    if ([v5 containsIndex:?])
    {
      v6 = a1[4];
      [v17 firstIndex];
      [v6 removeIndex:?];
      v7 = a1[5];
      [v17 secondIndex];
      [v7 removeIndex:?];
      [v17 score];
      if (v8 <= 1.0)
      {
        v11 = 9;
      }

      else
      {
        v9 = a1[6];
        [v17 firstIndex];
        [v9 addIndex:?];
        v10 = a1[7];
        [v17 secondIndex];
        [v10 addIndex:?];
        v11 = 8;
      }

      v12 = MEMORY[0x277CCABB0];
      [v17 firstIndex];
      v13 = [v12 numberWithUnsignedInteger:?];
      v14 = a1[v11];
      v15 = MEMORY[0x277CCABB0];
      [v17 secondIndex];
      v16 = [v15 numberWithUnsignedInteger:?];
      [v14 setObject:? forKeyedSubscript:?];
    }
  }
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 intValue];
  v9 = [v5 objectAtIndexedSubscript:?];
  v7 = *(a1 + 40);
  [v6 intValue];

  v8 = [v7 objectAtIndexedSubscript:?];
  [v9 trackPersonBlob:?];
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_9(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  [a2 intValue];
  v14 = [v5 objectAtIndexedSubscript:?];
  v7 = a1[5];
  [v6 intValue];

  v8 = [v7 objectAtIndexedSubscript:?];
  v9 = [v14 personIndices];
  [v9 removeIndexes:?];

  v10 = [v8 personIndices];
  [v10 removeIndexes:?];

  v11 = [v14 personIndices];
  if ([v11 count] >= 2)
  {
  }

  else
  {
    v12 = [v8 personIndices];
    v13 = [v12 count];

    if (v13 <= 1)
    {
      [v14 trackPersonBlob:?];
    }
  }
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_10(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) objectAtIndexedSubscript:?];
  [v7 boundingBox];
  v9.origin.x = v3;
  v9.origin.y = v4;
  v9.size.width = v5;
  v9.size.height = v6;
  if (!CGRectIntersectsRect(*(a1 + 48), v9))
  {
    [*(a1 + 40) addObject:?];
  }
}

- (id)getBlobIDAtIndex:(unint64_t)index
{
  v24 = *MEMORY[0x277D85DE8];
  previousPersons = [(HMIPersonTracker *)self previousPersons];
  v6 = [previousPersons count];

  if (v6 <= index)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      previousPersons2 = [(HMIPersonTracker *)selfCopy previousPersons];
      v16 = 138544130;
      v17 = v13;
      v18 = 2112;
      v19 = uUID;
      v20 = 2048;
      indexCopy = index;
      v22 = 2048;
      v23 = [previousPersons2 count];
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@HMIPersonTracker: unable to get %@ at index %lu / %lu", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    previousPersons3 = [(HMIPersonTracker *)self previousPersons];
    v8 = [previousPersons3 objectAtIndexedSubscript:?];
    uUID = [v8 blobID];
  }

  return uUID;
}

@end