@interface LSDefaultApplicationQueryDatabaseDefaultAppEvaluator
- (id)URLOfDefaultAppForCategory:(unint64_t)category;
@end

@implementation LSDefaultApplicationQueryDatabaseDefaultAppEvaluator

- (id)URLOfDefaultAppForCategory:(unint64_t)category
{
  v3 = LSGetDefaultAppCategoryInfoForCategory(category);
  v4 = [LSClaimBinding alloc];
  v5 = *(v3 + 1);
  v12 = 0;
  v6 = [(LSClaimBinding *)v4 initWithTypeIdentifier:v5 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    bundleRecord = [(LSClaimBinding *)v6 bundleRecord];
    v10 = [bundleRecord URL];
  }

  else
  {
    bundleRecord = _LSDefaultLog(v7);
    if (os_log_type_enabled(bundleRecord, OS_LOG_TYPE_ERROR))
    {
      [LSDefaultApplicationQueryDatabaseDefaultAppEvaluator URLOfDefaultAppForCategory:];
    }

    v10 = 0;
  }

  return v10;
}

@end