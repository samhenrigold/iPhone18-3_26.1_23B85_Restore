@interface GEOURLInfo
- (NSURL)nsURL;
@end

@implementation GEOURLInfo

- (NSURL)nsURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(GEOURLInfo *)self url];
  v4 = [v2 URLWithString:v3];

  return v4;
}

@end