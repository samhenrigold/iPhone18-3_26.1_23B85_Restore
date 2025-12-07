@interface NqmlStringGenerator
- (_TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator)init;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidEndListElement:(id)element;
- (void)parserDidFindNewline:(id)newline;
- (void)parserDidStartDocument:(id)document;
- (void)parserDidStartListElement:(id)element;
@end

@implementation NqmlStringGenerator

- (void)parserDidStartDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1E1ADD484();
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1E1ADD5D8();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1E1ADD680(occurredCopy);
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  type metadata accessor for NqmlAttributeName(0);
  sub_1E1ADE418(&unk_1EE1E3400, type metadata accessor for NqmlAttributeName, &unk_1E1B0219C);
  v8 = sub_1E1AF5C7C();
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADD860(element, v8);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADDC70(element);
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADDD4C(v6, v8);
}

- (void)parserDidFindNewline:(id)newline
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_configuration);
  v4 = *&self->parser[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_configuration];
  selfCopy = self;
  sub_1E1ADC1D8(v3, v4);
}

- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADDF40(style);
}

- (void)parserDidStartListElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  sub_1E1ADE0EC();
}

- (void)parserDidEndListElement:(id)element
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_configuration);
  v4 = *&self->parser[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_configuration];
  selfCopy = self;
  sub_1E1ADC1D8(v3, v4);
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_orderedListTracker);
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      return;
    }

    *(v5 + 16) = v8;
  }
}

- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADE330();
}

- (_TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end