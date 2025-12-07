@interface PGGraphFrequentLocationNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphAddressNodeCollection)preciseAddressNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (void)enumerateNodesAsCollectionsSortedByUniversalEndDateWithOrderAscending:(BOOL)ascending usingBlock:(id)block;
- (void)enumerateUniversalEndDatesUsingBlock:(id)block;
@end

@implementation PGGraphFrequentLocationNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphFrequentLocationNode momentOfFrequentLocation];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)preciseAddressNodes
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphFrequentLocationNode addressOfFrequentLocation];
  v11[0] = v4;
  v5 = +[PGGraphAddressNode preciseFilter];
  relation = [v5 relation];
  v11[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v3 chain:v7];

  v9 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v8];

  return v9;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphFrequentLocationNode addressOfFrequentLocation];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (void)enumerateNodesAsCollectionsSortedByUniversalEndDateWithOrderAscending:(BOOL)ascending usingBlock:(id)block
{
  ascendingCopy = ascending;
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __122__PGGraphFrequentLocationNodeCollection_enumerateNodesAsCollectionsSortedByUniversalEndDateWithOrderAscending_usingBlock___block_invoke;
  v8[3] = &unk_278882290;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MANodeCollection *)self enumerateNodesAsCollectionsSortedByDoublePropertyForName:@"universalEndDate" ascending:ascendingCopy usingBlock:v8];
}

- (void)enumerateUniversalEndDatesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__PGGraphFrequentLocationNodeCollection_enumerateUniversalEndDatesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"universalEndDate" withBlock:v6];
}

void __78__PGGraphFrequentLocationNodeCollection_enumerateUniversalEndDatesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  (*(*(a1 + 32) + 16))();
}

@end