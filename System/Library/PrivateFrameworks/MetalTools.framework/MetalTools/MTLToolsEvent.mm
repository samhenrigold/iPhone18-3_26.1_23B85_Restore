@interface MTLToolsEvent
- (BOOL)enableBarrier;
- (BOOL)supportsRollback;
- (NSString)label;
- (void)setEnableBarrier:(BOOL)barrier;
- (void)setLabel:(id)label;
@end

@implementation MTLToolsEvent

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (BOOL)enableBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject enableBarrier];
}

- (void)setEnableBarrier:(BOOL)barrier
{
  barrierCopy = barrier;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setEnableBarrier:barrierCopy];
}

- (BOOL)supportsRollback
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRollback];
}

@end