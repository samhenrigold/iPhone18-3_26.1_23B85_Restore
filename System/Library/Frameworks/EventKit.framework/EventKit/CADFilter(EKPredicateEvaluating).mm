@interface CADFilter(EKPredicateEvaluating)
- (uint64_t)ekPredicateFilterMatches:()EKPredicateEvaluating;
@end

@implementation CADFilter(EKPredicateEvaluating)

- (uint64_t)ekPredicateFilterMatches:()EKPredicateEvaluating
{
  v2 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(CADFilter(EKPredicateEvaluating) *)v2 ekPredicateFilterMatches:self];
  }

  return 0;
}

- (void)ekPredicateFilterMatches:()EKPredicateEvaluating .cold.1(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1A805E000, v2, OS_LOG_TYPE_ERROR, "Unknown CADFilter subclass: %@", &v5, 0xCu);
}

@end