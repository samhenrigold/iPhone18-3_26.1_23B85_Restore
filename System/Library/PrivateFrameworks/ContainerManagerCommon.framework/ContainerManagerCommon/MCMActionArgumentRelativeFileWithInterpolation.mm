@interface MCMActionArgumentRelativeFileWithInterpolation
- (id)fileURL;
@end

@implementation MCMActionArgumentRelativeFileWithInterpolation

- (id)fileURL
{
  v2 = MEMORY[0x1E695DFF8];
  string = [(MCMActionArgumentBase *)self string];
  v4 = [v2 fileURLWithPath:string isDirectory:0 relativeToURL:0];

  return v4;
}

@end