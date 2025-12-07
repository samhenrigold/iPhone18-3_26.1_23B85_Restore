@interface Ace3UpdateController
- (id)createUpdaterInstanceFor:(unsigned int)for helper:(id)helper options:(id)options;
@end

@implementation Ace3UpdateController

- (id)createUpdaterInstanceFor:(unsigned int)for helper:(id)helper options:(id)options
{
  v6 = *&for;
  optionsCopy = options;
  helperCopy = helper;
  v9 = [(UARPSoCUpdaterInstance *)[Ace3UpdaterInstance alloc] initWithLogicUnitNumber:v6 helper:helperCopy options:optionsCopy];

  return v9;
}

@end