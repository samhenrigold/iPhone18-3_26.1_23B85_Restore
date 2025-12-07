@interface MBFrameworkSearchPaths
@end

@implementation MBFrameworkSearchPaths

void *___MBFrameworkSearchPaths_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"/System/Library/Frameworks", @"/System/Library/PrivateFrameworks", 0}];
  _MBFrameworkSearchPaths_paths = result;
  return result;
}

@end