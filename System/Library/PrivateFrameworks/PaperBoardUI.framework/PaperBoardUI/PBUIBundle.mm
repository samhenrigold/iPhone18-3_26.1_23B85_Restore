@interface PBUIBundle
@end

@implementation PBUIBundle

void ___PBUIBundle_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v5 = objc_opt_self();
  v3 = [v2 bundleForClass:v5];
  v4 = _PBUIBundle___paperBoardUIBundle;
  _PBUIBundle___paperBoardUIBundle = v3;
}

@end