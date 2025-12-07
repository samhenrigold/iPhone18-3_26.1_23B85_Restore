@interface HealthImageActivityItemProvider
- (_TtC18HealthExperienceUI31HealthImageActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation HealthImageActivityItemProvider

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_1BA3759E8();

  return v6;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  v12 = sub_1BA375AD0(width, height);

  return v12;
}

- (_TtC18HealthExperienceUI31HealthImageActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end