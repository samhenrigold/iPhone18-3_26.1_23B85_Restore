@interface KNActionGhostSelection
- (BOOL)isEqual:(id)equal;
- (KNActionGhostSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
@end

@implementation KNActionGhostSelection

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v4 = TSUDynamicCast();

  return v4 != 0;
}

- (KNActionGhostSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v5.receiver = self;
  v5.super_class = KNActionGhostSelection;
  return [(KNActionGhostSelection *)&v5 init:archive];
}

@end