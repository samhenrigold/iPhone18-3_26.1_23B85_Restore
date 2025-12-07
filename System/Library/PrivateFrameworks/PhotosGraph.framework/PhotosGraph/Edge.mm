@interface Edge
- (KGNode)sourceNode;
- (KGNode)targetNode;
- (NSDictionary)properties;
- (NSSet)labels;
- (_TtC11PhotosGraph4Edge)init;
- (_TtC11PhotosGraph4Edge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (void)setLabels:(id)labels;
- (void)setProperties:(id)properties;
@end

@implementation Edge

- (KGNode)targetNode
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (KGNode)sourceNode
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSSet)labels
{

  v2 = sub_22F741410();

  return v2;
}

- (void)setLabels:(id)labels
{
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_labels) = sub_22F741420();
}

- (NSDictionary)properties
{
  sub_22F20B0E0();

  v2 = sub_22F740C80();

  return v2;
}

- (void)setProperties:(id)properties
{
  sub_22F20B0E0();
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_properties) = sub_22F740CA0();
}

- (_TtC11PhotosGraph4Edge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  v11 = sub_22F741420();
  sub_22F20B0E0();
  v12 = sub_22F740CA0();
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_identifier) = identifier;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_labels) = v11;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_properties) = v12;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode) = node;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode) = targetNode;
  v14.receiver = self;
  v14.super_class = type metadata accessor for Edge();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(Edge *)&v14 init];
}

- (_TtC11PhotosGraph4Edge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end