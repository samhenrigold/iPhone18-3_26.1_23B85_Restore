@interface HFCharacteristicValueTransaction
- (HFCharacteristicValueTransaction)init;
- (id)executionErrorForActionSet:(id)set;
@end

@implementation HFCharacteristicValueTransaction

- (HFCharacteristicValueTransaction)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HFCharacteristicValueTransaction;
  v2 = [(HFCharacteristicValueTransaction *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [(HFCharacteristicValueTransaction *)v2 setCharacteristicsToRead:v3];

    v4 = [MEMORY[0x277CBEB58] set];
    [(HFCharacteristicValueTransaction *)v2 setWriteCharacteristicRequests:v4];

    v5 = [MEMORY[0x277CBEB58] set];
    [(HFCharacteristicValueTransaction *)v2 setActionSetsToExecute:v5];

    v6 = [MEMORY[0x277CBEB58] set];
    [(HFCharacteristicValueTransaction *)v2 setActionsToExecute:v6];

    array = [MEMORY[0x277CBEB18] array];
    [(HFCharacteristicValueTransaction *)v2 setClientReasonsStack:array];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(HFCharacteristicValueTransaction *)v2 setReadFuturesKeyedByCharacteristicIdentifier:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(HFCharacteristicValueTransaction *)v2 setWriteFuturesKeyedByCharacteristicIdentifier:dictionary2];

    v10 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HFCharacteristicValueTransaction *)v2 setCommitFuture:v10];

    v11 = dispatch_group_create();
    [(HFCharacteristicValueTransaction *)v2 setOnFinishGroup:v11];

    v12 = [HFMutableAggregatedCharacteristicReadPolicy alloc];
    v13 = objc_alloc_init(HFNotSupportedReadPolicy);
    v18[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v15 = [(HFAggregatedCharacteristicReadPolicy *)v12 initWithPolicies:v14];
    [(HFCharacteristicValueTransaction *)v2 setReadPolicy:v15];
  }

  return v2;
}

- (id)executionErrorForActionSet:(id)set
{
  uniqueIdentifier = [set uniqueIdentifier];
  if (uniqueIdentifier)
  {
    actionSetErrorsKeyedByUUID = [(HFCharacteristicValueTransaction *)self actionSetErrorsKeyedByUUID];
    v6 = [actionSetErrorsKeyedByUUID objectForKeyedSubscript:uniqueIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end