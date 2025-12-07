@interface MCMActionArgumentRelativeDirectory
- (id)fileURL;
@end

@implementation MCMActionArgumentRelativeDirectory

- (id)fileURL
{
  v2 = MEMORY[0x1E695DFF8];
  string = [(MCMActionArgumentBase *)self string];
  v4 = [v2 fileURLWithPath:string isDirectory:1 relativeToURL:0];

  return v4;
}

@end