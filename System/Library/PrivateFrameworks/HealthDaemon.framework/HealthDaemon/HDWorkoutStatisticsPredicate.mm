@interface HDWorkoutStatisticsPredicate
+ (id)_predicateForColumn:(id)column quantity:(id)quantity quantityType:(id)type operatorType:(unint64_t)operatorType;
- (id)SQLForEntityClass:(Class)class;
- (id)_init;
- (id)description;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation HDWorkoutStatisticsPredicate

- (id)description
{
  quantityType = self->_quantityType;
  v4 = MEMORY[0x277CCACA8];
  column = self->_column;
  v6 = HDSQLOperatorForComparisonType();
  v7 = [v4 stringWithFormat:@"<data_type=%@ and %@ %@ %@", quantityType, column, v6, self->_quantity];

  return v7;
}

- (id)SQLForEntityClass:(Class)class
{
  v26 = HDSQLOperatorForComparisonType();
  v5 = [(objc_class *)class isEqual:objc_opt_class()];
  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v7 = +[(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity];
    v8 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
    v9 = [(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity disambiguatedSQLForProperty:0x283BF4B08];
    v10 = [(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity disambiguatedSQLForProperty:0x283BF4B28];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKQuantityType code](self->_quantityType, "code")}];
    column = self->_column;
    v13 = v8;
    v14 = [v6 stringWithFormat:@"(EXISTS (SELECT 1 FROM %@ WHERE %@=%@ AND %@=%@ AND %@%@?))", v7, v8, v9, v10, v11, column, v26];
  }

  else
  {
    v25 = +[(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity];
    v24 = +[(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity];
    v15 = *MEMORY[0x277D10A40];
    v23 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
    v10 = [(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity disambiguatedSQLForProperty:0x283BF4B08];
    v11 = [-[objc_class entityClassForEnumeration](class "entityClassForEnumeration")];
    v16 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:@"owner_id"];
    [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:@"is_primary_activity"];
    v17 = v22 = v6;
    v18 = [(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity disambiguatedSQLForProperty:0x283BF4B28];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKQuantityType code](self->_quantityType, "code")}];
    v7 = v25;
    v20 = self->_column;
    v9 = v23;
    v13 = v24;
    v14 = [v22 stringWithFormat:@"(EXISTS (SELECT 1 FROM %@ INNER JOIN %@ ON %@=%@ WHERE %@=%@ AND %@ AND %@=%@ AND %@%@?))", v25, v24, v23, v10, v11, v16, v17, v18, v19, v20, v26];
  }

  return v14;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  quantity = self->_quantity;
  canonicalUnit = [(HKQuantityType *)self->_quantityType canonicalUnit];
  [(HKQuantity *)quantity doubleValueForUnit:canonicalUnit];
  v9 = v8;

  sqlite3_bind_double(statement, *index, v9);
  ++*index;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HDWorkoutStatisticsPredicate;
  return [(HDWorkoutStatisticsPredicate *)&v3 init];
}

+ (id)_predicateForColumn:(id)column quantity:(id)quantity quantityType:(id)type operatorType:(unint64_t)operatorType
{
  columnCopy = column;
  quantityCopy = quantity;
  typeCopy = type;
  _init = [[self alloc] _init];
  v13 = _init[1];
  _init[1] = columnCopy;
  v14 = columnCopy;

  v15 = _init[2];
  _init[2] = quantityCopy;
  v16 = quantityCopy;

  v17 = _init[3];
  _init[3] = typeCopy;

  _init[4] = HDSQLiteComparisonTypeForPredicateOperator();

  return _init;
}

@end