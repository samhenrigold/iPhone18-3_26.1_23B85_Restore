@interface NQMLStringGenerator
- (_TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator)init;
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

@implementation NQMLStringGenerator

- (void)parserDidStartDocument:(id)document
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0, &qword_1BADA3868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BADA1240;
  v5 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  v6 = self + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration;
  v7 = *&self->configuration[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration + 8];
  v8 = sub_1BAD053C8(0, &qword_1EBC29A00, 0x1E69DB7D0);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = *(v6 + 2);
  *(inited + 104) = sub_1BAD053C8(0, &qword_1EDBA58E0, 0x1E69DB878);
  *(inited + 80) = v10;
  selfCopy = self;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v10;
  v16 = sub_1BAD1FADC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3E0, &unk_1BADA8570);
  swift_arrayDestroy();
  sub_1BAD91F78(v16);
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1BAD9397C();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1BAD93A24(occurredCopy);
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  type metadata accessor for NQMLAttributeName(0);
  sub_1BAD947E8(&qword_1EBC2A068, type metadata accessor for NQMLAttributeName, &unk_1BADA09B0);
  v8 = sub_1BAD9CE98();
  parserCopy = parser;
  selfCopy = self;
  sub_1BAD93C04(element, v8);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_1BAD94060(element);
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  v6 = sub_1BAD9CF68();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_1BAD9413C(v6, v8);
}

- (void)parserDidFindNewline:(id)newline
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration);
  v4 = *&self->parser[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration];
  selfCopy = self;
  sub_1BAD9234C(v3, v4);
}

- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_1BAD94330(style);
}

- (void)parserDidStartListElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  sub_1BAD944DC();
}

- (void)parserDidEndListElement:(id)element
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration);
  v4 = *&self->parser[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration];
  selfCopy = self;
  sub_1BAD9234C(v3, v4);
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_orderedListTracker);
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
  sub_1BAD94700();
}

- (_TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end