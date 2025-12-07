@interface VisionLinkActivityItem
- (_TtC10CallsAppUI22VisionLinkActivityItem)initWithTUConversationLink:(id)link title:(id)title placeholder:(id)placeholder;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation VisionLinkActivityItem

- (_TtC10CallsAppUI22VisionLinkActivityItem)initWithTUConversationLink:(id)link title:(id)title placeholder:(id)placeholder
{
  v8 = sub_1CFC9BF28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!title)
  {
    sub_1CFC9BEF8();
    goto LABEL_5;
  }

  sub_1CFC9F768();
  v13 = v12;
  sub_1CFC9BEF8();
  if (!v13)
  {
LABEL_5:
    linkCopy = link;
    v15 = 0;
    goto LABEL_6;
  }

  linkCopy2 = link;
  v15 = sub_1CFC9F728();

LABEL_6:
  v17 = sub_1CFC9BEE8();
  v18 = type metadata accessor for VisionLinkActivityItem();
  v21.receiver = self;
  v21.super_class = v18;
  v19 = [(VisionLinkActivityItem *)&v21 initWithTUConversationLink:link title:v15 placeholder:v17];

  (*(v9 + 8))(v11, v8);
  return v19;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v4 = sub_1CFC9BF28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  selfCopy = self;
  placeholder = [(VisionLinkActivityItem *)selfCopy placeholder];
  sub_1CFC9BEF8();

  (*(v5 + 16))(v7, v10, v4);
  v13 = sub_1CFCA02E8();
  (*(v5 + 8))(v10, v4);

  return v13;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_1CFBDAF04(v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_1CFCA02A8();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  controllerCopy = controller;
  selfCopy = self;
  typeCopy = type;
  tuConversationLink = [(VisionLinkActivityItem *)selfCopy tuConversationLink];
  linkName = [tuConversationLink linkName];

  if (linkName)
  {
    sub_1CFC9F768();
  }

  else
  {
  }

  v11 = sub_1CFC9F728();

  return v11;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_1CFBDB3B0();

  return v6;
}

@end