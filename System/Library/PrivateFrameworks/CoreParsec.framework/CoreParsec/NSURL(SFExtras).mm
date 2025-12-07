@interface NSURL(SFExtras)
- (id)sf_asPunchout;
@end

@implementation NSURL(SFExtras)

- (id)sf_asPunchout
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69CA320]);
  v5[0] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setUrls:v3];

  return v2;
}

@end