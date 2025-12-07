@interface XPCSystem.SharedActorKey:
- (uint64_t)DistributedActor;
@end

@implementation XPCSystem.SharedActorKey:

- (uint64_t)DistributedActor
{
  v3 = *a3;
  v4 = a3[1];
  v5 = self[1];
  v6 = *(a3 + 16);
  outlined copy of XPCSystem.SharedActorKey(*a3, v4, *(a3 + 16));
  v7 = swift_unknownObjectRetain();
  return specialized Dictionary.subscript.setter(v7, v5, v3, v4, v6);
}

@end