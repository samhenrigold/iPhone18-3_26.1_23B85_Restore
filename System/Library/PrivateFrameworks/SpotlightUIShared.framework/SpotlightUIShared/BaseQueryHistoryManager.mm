@interface BaseQueryHistoryManager
- (void)resetHistory;
@end

@implementation BaseQueryHistoryManager

- (void)resetHistory
{
  swift_beginAccess();
  *self->history = MEMORY[0x277D84F90];
}

@end