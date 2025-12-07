@interface _BMAeroMLLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMAeroMLLibraryNode

+ (id)sublibraries
{
  v9[4] = *MEMORY[0x1E69E9840];
  dataCorrelations = [self DataCorrelations];
  v9[0] = dataCorrelations;
  insights = [self Insights];
  v9[1] = insights;
  labeledData = [self LabeledData];
  v9[2] = labeledData;
  rawEvent = [self RawEvent];
  v9[3] = rawEvent;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end