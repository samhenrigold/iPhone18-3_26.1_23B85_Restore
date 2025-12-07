@interface HKAttributeConceptSelection(HDSQLitePredicate)
- (id)predicateWithProfile:()HDSQLitePredicate;
@end

@implementation HKAttributeConceptSelection(HDSQLitePredicate)

- (id)predicateWithProfile:()HDSQLitePredicate
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeType([self type], 1);
  value = [self value];
  [self operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  v5 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeValue(value, v4);
  v6 = MEMORY[0x277D10B20];
  v10[0] = v2;
  v10[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v6 predicateMatchingAllPredicates:v7];

  return v8;
}

@end