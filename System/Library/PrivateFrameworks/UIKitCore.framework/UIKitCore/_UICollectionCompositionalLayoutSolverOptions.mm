@interface _UICollectionCompositionalLayoutSolverOptions
+ (id)defaultOptions;
@end

@implementation _UICollectionCompositionalLayoutSolverOptions

+ (id)defaultOptions
{
  v1 = objc_alloc_init(objc_opt_self());
  v2 = v1;
  if (v1)
  {
    v1[2] = 0;
    v3 = objc_opt_class();
    objc_storeStrong(v2 + 3, v3);
    v4 = objc_opt_class();
    objc_storeStrong(v2 + 4, v4);
    *(v2 + 4) = 256;
    objc_setProperty_nonatomic_copy(v2, v5, 0, 40);
    objc_setProperty_nonatomic_copy(v2, v6, MEMORY[0x1E695E0F0], 48);
    objc_setProperty_nonatomic_copy(v2, v7, 0, 56);
    objc_setProperty_nonatomic_copy(v2, v8, 0, 64);
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
  }

  return v2;
}

@end