@interface NSComparisonPredicate
@end

@implementation NSComparisonPredicate

void __95__NSComparisonPredicate_HKFilterExtension__hk_filterRepresentationForDataTypes_isSubpredicate___block_invoke()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"sumQuantity";
  v2[1] = @"averageQuantity";
  v2[2] = @"minimumQuantity";
  v2[3] = @"maximumQuantity";
  v2[4] = @"activitySumQuantity";
  v2[5] = @"activityAverageQuantity";
  v2[6] = @"activityMinimumQuantity";
  v2[7] = @"activityMaximumQuantity";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];
  v1 = hk_filterRepresentationForDataTypes_isSubpredicate__statsPrefixes;
  hk_filterRepresentationForDataTypes_isSubpredicate__statsPrefixes = v0;
}

@end