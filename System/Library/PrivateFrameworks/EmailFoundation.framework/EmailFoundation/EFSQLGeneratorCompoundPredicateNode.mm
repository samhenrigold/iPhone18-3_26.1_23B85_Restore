@interface EFSQLGeneratorCompoundPredicateNode
- (EFSQLGeneratorCompoundPredicateNode)initWithPredicateType:(unint64_t)type childPredicates:(id)predicates;
- (EFSQLValueExpressable)sqlExpressable;
@end

@implementation EFSQLGeneratorCompoundPredicateNode

- (EFSQLValueExpressable)sqlExpressable
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  childPredicates = [(EFSQLGeneratorCompoundPredicateNode *)self childPredicates];
  v5 = [childPredicates countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(childPredicates);
        }

        sqlExpressable = [*(*(&v14 + 1) + 8 * i) sqlExpressable];
        [v3 addObject:sqlExpressable];
      }

      v5 = [childPredicates countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  if ([(EFSQLGeneratorCompoundPredicateNode *)self predicateType]== 1)
  {
    v9 = off_1E8247DE0;
LABEL_12:
    v10 = [(__objc2_class *)*v9 combined:v3];
    goto LABEL_13;
  }

  if ([(EFSQLGeneratorCompoundPredicateNode *)self predicateType]== 2)
  {
    v9 = off_1E8247E70;
    goto LABEL_12;
  }

  if ([(EFSQLGeneratorCompoundPredicateNode *)self predicateType])
  {
    v10 = 0;
  }

  else
  {
    v12 = [EFSQLNotExpression alloc];
    v13 = [EFSQLAndExpression combined:v3];
    v10 = [(EFSQLNotExpression *)v12 initWithExpression:v13];
  }

LABEL_13:

  return v10;
}

- (EFSQLGeneratorCompoundPredicateNode)initWithPredicateType:(unint64_t)type childPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v11.receiver = self;
  v11.super_class = EFSQLGeneratorCompoundPredicateNode;
  v8 = [(EFSQLGeneratorCompoundPredicateNode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_predicateType = type;
    objc_storeStrong(&v8->_childPredicates, predicates);
  }

  return v9;
}

@end