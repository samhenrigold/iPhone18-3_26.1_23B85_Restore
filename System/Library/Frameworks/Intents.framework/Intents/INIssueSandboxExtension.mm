@interface INIssueSandboxExtension
@end

@implementation INIssueSandboxExtension

uint64_t ___INIssueSandboxExtension_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  [v2 fileSystemRepresentation];
  v3 = sandbox_extension_issue_file();

  return v3;
}

@end