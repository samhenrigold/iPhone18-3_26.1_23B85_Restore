@interface PendingBirthdayModel
- (void)accountWasModified:(id)modified;
@end

@implementation PendingBirthdayModel

- (void)accountWasModified:(id)modified
{
  MEMORY[0x1E69E5928](modified, a2);
  MEMORY[0x1E69E5928](self, v4);
  sub_1C55209B0(modified);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](modified);
}

@end