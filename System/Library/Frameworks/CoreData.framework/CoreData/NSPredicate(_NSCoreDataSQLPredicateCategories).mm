@interface NSPredicate(_NSCoreDataSQLPredicateCategories)
- (uint64_t)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSPredicate(_NSCoreDataSQLPredicateCategories)

- (uint64_t)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF08] defaultInstance] == self || objc_msgSend(MEMORY[0x1E696ABE8], "defaultInstance") == self)
  {
    v7 = MEMORY[0x1E695DFA8];

    return [v7 set];
  }

  else
  {
    if (a3)
    {
      v5 = *MEMORY[0x1E696A250];
      v8 = @"expression";
      v9[0] = self;
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:v5 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
    }

    return 0;
  }
}

@end