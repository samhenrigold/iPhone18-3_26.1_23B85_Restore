@interface LSEligibilityPredicateEvaluator
+ (id)sharedCachingEligibilityPredicateEvaluator;
- (LSEligibilityPredicateEvaluator)initWithResolver:(id)resolver;
- (id)evaluateBundle:(unsigned int)bundle bundleData:(const LSBundleData *)data database:(id)database error:(id *)error;
- (id)evaluatePredicate:(id)predicate error:(id *)error;
@end

@implementation LSEligibilityPredicateEvaluator

- (LSEligibilityPredicateEvaluator)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = LSEligibilityPredicateEvaluator;
  v6 = [(LSEligibilityPredicateEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolver, resolver);
  }

  return v7;
}

- (id)evaluatePredicate:(id)predicate error:(id *)error
{
  v4 = [predicate evaluateWithDomainEligibilityResolver:self->_resolver error:error];

  return v4;
}

+ (id)sharedCachingEligibilityPredicateEvaluator
{
  if (+[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator]::onceToken != -1)
  {
    +[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator];
  }

  v3 = +[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator]::result;

  return v3;
}

void __105__LSEligibilityPredicateEvaluator_LSInternalCachingEvaluator__sharedCachingEligibilityPredicateEvaluator__block_invoke()
{
  v2 = objc_alloc_init(LSEligibilityCacheEligibilityResolver);
  v0 = [[LSEligibilityPredicateEvaluator alloc] initWithResolver:v2];
  v1 = +[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator]::result;
  +[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator]::result = v0;
}

- (id)evaluateBundle:(unsigned int)bundle bundleData:(const LSBundleData *)data database:(id)database error:(id *)error
{
  v14 = 0;
  v15 = 0;
  if ([LSEligibilityPredicate getInstallationPredicate:&v15 uninstallationPredicate:&v14 forBundle:*&bundle bundleData:data database:database error:error])
  {
    if (v15)
    {
      v13 = 0;
      v7 = [(LSEligibilityPredicateEvaluator *)self evaluatePredicate:v15 error:&v13];
      v8 = v13;
      if (!v7)
      {
        v9 = 0;
        goto LABEL_17;
      }

      if (([v7 BOOLValue] & 1) == 0)
      {
        v9 = MEMORY[0x1E695E110];
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = MEMORY[0x1E695E118];
    if (!v14)
    {
LABEL_18:

      goto LABEL_19;
    }

    v12 = v8;
    v7 = [(LSEligibilityPredicateEvaluator *)self evaluatePredicate:v14 error:&v12];
    v10 = v12;

    if (v7)
    {
      if ([v7 BOOLValue])
      {
        v9 = MEMORY[0x1E695E110];
      }
    }

    else
    {
      v9 = 0;
    }

    v8 = v10;
LABEL_17:

    goto LABEL_18;
  }

  v9 = 0;
LABEL_19:

  return v9;
}

@end