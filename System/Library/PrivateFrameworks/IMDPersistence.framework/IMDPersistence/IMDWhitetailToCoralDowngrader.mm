@interface IMDWhitetailToCoralDowngrader
- (id)createDowngradeHelper;
@end

@implementation IMDWhitetailToCoralDowngrader

- (id)createDowngradeHelper
{
  v3 = [IMDWhitetailToCoralDowngradeHelper alloc];
  v7 = objc_msgSend_destinationPath(self, v4, v5, v6);

  return MEMORY[0x1EEE66B58](v3, sel_initWithPath_, v7, v8);
}

@end