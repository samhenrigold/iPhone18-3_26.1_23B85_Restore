@interface HMIClusteringTaskSummary
- (HMIClusteringTaskSummary)init;
- (id)attributeDescriptions;
@end

@implementation HMIClusteringTaskSummary

- (HMIClusteringTaskSummary)init
{
  v6.receiver = self;
  v6.super_class = HMIClusteringTaskSummary;
  v2 = [(HMIClusteringTaskSummary *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfFaceprintsClustered = 0;
    v2->_numberOfClusters = 0;
    v2->_numberOfPersonsCreated = 0;
    v2->_numberOfUnknownFaceprintsAssociated = 0;
    v2->_faceprintingDuration = 0.0;
    v2->_clusteringDuration = 0.0;
    v2->_totalDuration = 0.0;
    error = v2->_error;
    v2->_error = 0;
  }

  return v3;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self numberOfFaceprintsClustered];
  v27 = [v4 numberWithInteger:?];
  v28 = [v3 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self numberOfClusters];
  v26 = [v6 numberWithInteger:?];
  v29 = [v5 initWithName:? value:?];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self numberOfPersonsCreated];
  v25 = [v8 numberWithInteger:?];
  v30 = [v7 initWithName:? value:?];
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self numberOfUnknownFaceprintsAssociated];
  v24 = [v10 numberWithInteger:?];
  v31 = [v9 initWithName:? value:?];
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self faceprintingDuration];
  v13 = [v12 numberWithDouble:?];
  v32 = [v11 initWithName:? value:?];
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self clusteringDuration];
  v16 = [v15 numberWithDouble:?];
  v33 = [v14 initWithName:? value:?];
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self totalDuration];
  v19 = [v18 numberWithDouble:?];
  v34 = [v17 initWithName:? value:?];
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  error = [(HMIClusteringTaskSummary *)self error];
  v35 = [v20 initWithName:? value:?];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v22;
}

@end