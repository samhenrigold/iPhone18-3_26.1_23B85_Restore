@interface ClassesForInitialQueries
@end

@implementation ClassesForInitialQueries

void ___ClassesForInitialQueries_block_invoke(uint64_t a1, uint64_t a2)
{
  v10[8] = *MEMORY[0x1E69E9840];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v10[4] = objc_opt_class();
  v10[5] = objc_opt_class();
  v10[6] = objc_opt_class();
  v10[7] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:8];
  v3 = _ClassesForInitialQueries_classesForInitialQueriesInLibrary;
  _ClassesForInitialQueries_classesForInitialQueriesInLibrary = v2;

  v9 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v5 = _ClassesForInitialQueries_classesForInitialQueriesInMomentShare;
  _ClassesForInitialQueries_classesForInitialQueriesInMomentShare = v4;

  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v7 = _ClassesForInitialQueries_classesForInitialQueriesInCollectionShare;
  _ClassesForInitialQueries_classesForInitialQueriesInCollectionShare = v6;
}

@end