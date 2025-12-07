@interface PSSGGraph
- (NSArray)inputs;
- (NSSet)sharedOutputs;
- (PSSGGraph)init;
- (PSSGGraph)initWithType:(unint64_t)type;
- (PSSGGraph)initWithType:(unint64_t)type inputs:(id)inputs outputs:(id)outputs;
- (void)setInputs:(id)inputs;
@end

@implementation PSSGGraph

- (NSArray)inputs
{
  type metadata accessor for PSSGGraphInput(self);

  v2 = sub_25EB6E3C8();

  return v2;
}

- (void)setInputs:(id)inputs
{
  type metadata accessor for PSSGGraphInput(self);
  *(self + OBJC_IVAR___PSSGGraph_inputs) = sub_25EB6E3D8();
}

- (NSSet)sharedOutputs
{
  selfCopy = self;
  sub_25EB12868();

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  v3 = sub_25EB6E428();

  return v3;
}

- (PSSGGraph)initWithType:(unint64_t)type
{
  *(self + OBJC_IVAR___PSSGGraph_inputs) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___PSSGGraph_outputs) = MEMORY[0x277D84FA0];
  *(self + OBJC_IVAR___PSSGGraph_type) = type;
  v4.receiver = self;
  v4.super_class = PSSGGraph;
  return [(PSSGGraph *)&v4 init];
}

- (PSSGGraph)initWithType:(unint64_t)type inputs:(id)inputs outputs:(id)outputs
{
  inputsCopy = inputs;
  if (inputs)
  {
    type metadata accessor for PSSGGraphInput(self);
    inputsCopy = sub_25EB6E3D8();
  }

  if (outputs)
  {
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
    v8 = sub_25EB6E438();
  }

  else
  {
    v8 = 0;
  }

  return PSSGGraph.init(type:inputs:outputs:)(type, inputsCopy, v8);
}

- (PSSGGraph)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end