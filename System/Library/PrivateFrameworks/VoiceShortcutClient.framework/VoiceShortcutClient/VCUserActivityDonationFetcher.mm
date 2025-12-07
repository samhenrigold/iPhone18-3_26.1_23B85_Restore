@interface VCUserActivityDonationFetcher
+ (id)streams;
@end

@implementation VCUserActivityDonationFetcher

+ (id)streams
{
  v5[1] = *MEMORY[0x1E69E9840];
  appActivityStream = [MEMORY[0x1E69979E8] appActivityStream];
  v5[0] = appActivityStream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end