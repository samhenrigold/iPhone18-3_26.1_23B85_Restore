@interface PSSGBuilderNodeList
- (PSSGBuilderNodeList)init;
- (PSSGBuilderNodeList)initWithGraphs:(id)graphs resources:(id)resources;
@end

@implementation PSSGBuilderNodeList

- (PSSGBuilderNodeList)initWithGraphs:(id)graphs resources:(id)resources
{
  type metadata accessor for PSSGGraphID(0);
  v5 = MEMORY[0x277D85378];
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
  v6 = sub_25EB6E438();
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, v5);
  v7 = sub_25EB6E438();
  v8 = (&self->super.isa + OBJC_IVAR___PSSGBuilderNodeList____lazy_storage____description);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.isa + OBJC_IVAR___PSSGBuilderNodeList_graphSet) = v6;
  *(&self->super.isa + OBJC_IVAR___PSSGBuilderNodeList_resourceSet) = v7;
  v10.receiver = self;
  v10.super_class = PSSGBuilderNodeList;
  return [(PSSGBuilderNodeList *)&v10 init];
}

- (PSSGBuilderNodeList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end