@interface HMIPersonsModel
- (HMIPersonsModel)initWithPersonsModel:(id)model homeUUID:(id)d sourceUUID:(id)iD externalLibrary:(BOOL)library;
- (HMIPersonsModelSummary)summary;
@end

@implementation HMIPersonsModel

- (HMIPersonsModel)initWithPersonsModel:(id)model homeUUID:(id)d sourceUUID:(id)iD externalLibrary:(BOOL)library
{
  modelCopy = model;
  dCopy = d;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = HMIPersonsModel;
  v14 = [(HMIPersonsModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_visionPersonsModel, model);
    objc_storeStrong(&v15->_homeUUID, d);
    objc_storeStrong(&v15->_sourceUUID, iD);
    v15->_externalLibrary = library;
  }

  return v15;
}

- (HMIPersonsModelSummary)summary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  visionPersonsModel = [(HMIPersonsModel *)self visionPersonsModel];
  personUniqueIdentifiers = [visionPersonsModel personUniqueIdentifiers];
  v12 = MEMORY[0x277D85DD0];
  v13 = dictionary;
  v6 = dictionary;
  [personUniqueIdentifiers na_each:{v12, 3221225472, __26__HMIPersonsModel_summary__block_invoke, &unk_278754680, self}];

  v7 = [HMIPersonsModelSummary alloc];
  sourceUUID = [(HMIPersonsModel *)self sourceUUID];
  [(HMIPersonsModel *)self isExternalLibrary];
  v9 = [v6 copy];
  v10 = [HMIPersonsModelSummary initWithSourceUUID:v7 externalLibrary:"initWithSourceUUID:externalLibrary:faceCountsByPerson:" faceCountsByPerson:?];

  return v10;
}

void __26__HMIPersonsModel_summary__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 visionPersonsModel];
  [v6 faceCountForPersonWithUniqueIdentifier:?];
  v7 = [v3 numberWithUnsignedInteger:?];

  [*(a1 + 40) setObject:? forKeyedSubscript:?];
}

@end