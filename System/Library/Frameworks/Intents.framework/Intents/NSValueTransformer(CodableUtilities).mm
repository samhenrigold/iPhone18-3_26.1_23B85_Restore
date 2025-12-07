@interface NSValueTransformer(CodableUtilities)
+ (objc_class)_intents_resolutionResultClass;
@end

@implementation NSValueTransformer(CodableUtilities)

+ (objc_class)_intents_resolutionResultClass
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromClass([self transformedValueClass]);
  v3 = [v2 substringFromIndex:2];
  v4 = [v1 stringWithFormat:@"IN%@ResolutionResult", v3];

  v5 = objc_opt_class();
  v6 = NSClassFromString(v4);
  if (v6 && (v7 = v6, (-[objc_class isSubclassOfClass:](v6, "isSubclassOfClass:", v5) & 1) != 0) && (v8 = v7, v9 = v7, [MEMORY[0x1E696AAE8] bundleForClass:v9], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v12))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end