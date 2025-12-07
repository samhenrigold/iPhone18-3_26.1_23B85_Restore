uint64_t static LanguageAwareString.keepStatisticsOnLanguageComponents.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_17_103(a1);
  static LanguageAwareString.keepStatisticsOnLanguageComponents = v1;
  return result;
}

uint64_t static LanguageAwareString.delegate.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t static LanguageAwareString.delegate.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_17_103(a1);
  static LanguageAwareString.delegate = a1;
  return swift_unknownObjectRelease();
}

id sub_1E3D33EEC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = static LanguageAwareString.alwaysGenerateAttributedString;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = static LanguageAwareString.keepStatisticsOnLanguageComponents;
  v2 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  result = LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(0, 0xE000000000000000, 0, v0, v1);
  static LanguageAwareString.empty = result;
  return result;
}

uint64_t *LanguageAwareString.empty.unsafeMutableAddressor()
{
  if (qword_1ECF607C0 != -1)
  {
    OUTLINED_FUNCTION_15_111(&qword_1ECF607C0);
  }

  return &static LanguageAwareString.empty;
}

id static LanguageAwareString.empty.getter()
{
  if (qword_1ECF607C0 != -1)
  {
    OUTLINED_FUNCTION_15_111(&qword_1ECF607C0);
  }

  v1 = static LanguageAwareString.empty;

  return v1;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(OUTLINED_FUNCTION_112());
  v5 = OUTLINED_FUNCTION_74();
  return LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v5, v6, a3);
}

id LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v4[v8] = v9;
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_20_78(&v4[*(v10 + 96)]);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = static LanguageAwareString.delegate;
  if (static LanguageAwareString.delegate && ([static LanguageAwareString.delegate respondsToSelector_] & 1) != 0)
  {
    v12 = [v11 preprocessForLanguageAwarenessAttributedString_];
  }

  else
  {
    v12 = a1;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v15 = v14;
  sub_1E3CA6DF4(v14, 0, 0, a2, a3 & 1, v33);

  if (v37)
  {
    v16._rawValue = v34;

    NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v17, v16);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = v15;
  v20 = [v18 initWithAttributedString_];
  *&v4[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v20;
  LOBYTE(v18) = v36;
  v21 = v20;
  if (v18)
  {
    NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
    v22 = [v19 string];

    countAndFlagsBits = sub_1E4205F14();
    object = v24;
  }

  else
  {

    v26 = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
    countAndFlagsBits = v26._countAndFlagsBits;
    object = v26._object;
  }

  v27 = &v4[OBJC_IVAR___AMPLanguageAwareString_string];
  *v27 = countAndFlagsBits;
  v27[1] = object;
  v28 = v35;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v34;
  v29 = v33[1];
  *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = v33[0];
  *&v4[OBJC_IVAR___AMPLanguageAwareString_words] = v29;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v28;

  v32.receiver = v4;
  v32.super_class = type metadata accessor for LanguageAwareString();
  v30 = objc_msgSendSuper2(&v32, sel_init);

  return v30;
}

id LanguageAwareString.__allocating_init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  OUTLINED_FUNCTION_33_55();
  v8 = OUTLINED_FUNCTION_124();
  return LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v8, v9, v5, a4, a5);
}

id LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  swift_getObjectType();
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v6[v11] = v12;
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_20_78(&v6[*(v13 + 96)]);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v14 = static LanguageAwareString.delegate;
  if (static LanguageAwareString.delegate)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_123_1();
    v15 = sub_1E4205ED4();

    v16 = [v14 preprocessForLanguageAwarenessString_];

    a1 = sub_1E4205F14();
    swift_unknownObjectRelease();
  }

  v17 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v18 = OUTLINED_FUNCTION_123_1();
  v20 = sub_1E3D36664(v18, v19, a3);
  v21 = v20;
  sub_1E3CA6DF4(v20, 0, 0, a4, a5 & 1, v36);

  if (v40)
  {
    v22._rawValue = v37;

    NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v23, v22);
  }

  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = v21;
  v26 = [v24 initWithAttributedString_];
  *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v26;
  LOBYTE(v24) = v39;
  v27 = v26;
  if (v24)
  {
    v28 = v25;
    NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
    v29 = [v25 string];

    sub_1E4205F14();
    OUTLINED_FUNCTION_23_70();
  }

  else
  {

    v28 = v27;
    NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
    OUTLINED_FUNCTION_23_70();
  }

  v30 = &v6[OBJC_IVAR___AMPLanguageAwareString_string];
  *v30 = v28;
  v30[1] = a1;
  v31 = v38;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v37;
  v32 = v36[1];
  *&v6[OBJC_IVAR___AMPLanguageAwareString_numbers] = v36[0];
  *&v6[OBJC_IVAR___AMPLanguageAwareString_words] = v32;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v31;

  v35.receiver = v6;
  v35.super_class = type metadata accessor for LanguageAwareString();
  v33 = objc_msgSendSuper2(&v35, sel_init);

  return v33;
}

uint64_t LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v8 = objc_allocWithZone(v4);
  v9 = OUTLINED_FUNCTION_16_5();
  return LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v9, a2, a3, v5);
}

uint64_t LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = a3;
    v10 = ObjectType;
    (*(ObjectType + 536))(a1, a2, v9, a4 & 1, static LanguageAwareString.keepStatisticsOnLanguageComponents);
    OUTLINED_FUNCTION_50();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    OUTLINED_FUNCTION_19_3();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

id LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, unint64_t a2, void *a3, char a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v6[v13] = v14;
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_20_78(&v6[*(v15 + 96)]);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v16 = static LanguageAwareString.delegate;
  if (static LanguageAwareString.delegate)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_124();
    v17 = sub_1E4205ED4();

    v18 = [v16 preprocessForLanguageAwarenessString_];

    a1 = sub_1E4205F14();
    a2 = v19;
    swift_unknownObjectRelease();
  }

  if ((a4 & 1) != 0 || a3)
  {
    sub_1E3280A90(0, &unk_1EE23AFE0, 0x1E696AD40);
    OUTLINED_FUNCTION_16_5();

    v23 = OUTLINED_FUNCTION_124();
    v20 = sub_1E3763FC8(v23, v24);
    v25 = v20;
    v21 = 0;
    v22 = 0;
  }

  else
  {

    v20 = 0;
    v21 = a1;
    v22 = a2;
  }

  v26 = v20;
  v27 = v21;
  v28 = ObjectType;
  sub_1E3CA6DF4(v20, v27, v22, a3, a5 & 1, &v79);

  v37._rawValue = v84;
  if (v20)
  {
    if (v84)
    {
      v38._rawValue = v81;

      NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v39, v38);
    }

    else
    {
    }

    [v26 copy];

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
    v29 = swift_dynamicCast();
    if (v29)
    {
      v57 = v69;
    }

    else
    {
      v57 = 0;
    }

    if (v83)
    {

      *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v57;
      v58 = v57;
      NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
      v59 = [v26 string];
      countAndFlagsBits = sub_1E4205F14();
      object = v60;

      v26 = v58;
      goto LABEL_25;
    }

    *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v57;
    if (v57)
    {
      v61 = v57;
LABEL_24:
      v62 = v61;

      v63 = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
      countAndFlagsBits = v63._countAndFlagsBits;
      object = v63._object;

      goto LABEL_25;
    }

LABEL_23:
    v61 = OUTLINED_FUNCTION_35_49(v29, v30, v31, v32, v33, v34, v35, v36, v69, v71.receiver, v71.super_class, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    goto LABEL_24;
  }

  if (v84)
  {

    OUTLINED_FUNCTION_124();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_16_5();

    [ObjectType mutableCopy];

    sub_1E4207264();
    swift_unknownObjectRelease();
    v40 = sub_1E3280A90(0, &qword_1ECF31E90, 0x1E696AD60);
    OUTLINED_FUNCTION_36_49(v40, v41, v42, v40, v43, v44, v45, v46, v69, v71.receiver, v71.super_class, v72);
    v28 = v70;
    NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(v37);

    [v70 copy];
    sub_1E4207264();
    swift_unknownObjectRelease();
    v47 = sub_1E3280A90(0, &qword_1EE23AD58, 0x1E696AEC0);
    OUTLINED_FUNCTION_36_49(v47, v48, v49, v47, v50, v51, v52, v53, v70, v71.receiver, v71.super_class, v72);
    sub_1E4205F14();
  }

  if ((v83 & 1) == 0)
  {
    *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_35_49(v29, v30, v31, v32, v33, v34, v35, v36, v69, v71.receiver, v71.super_class, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  OUTLINED_FUNCTION_16_5();

  *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v28;
  v26 = v28;
  v54 = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
  countAndFlagsBits = v54._countAndFlagsBits;
  object = v54._object;
LABEL_25:

  v64 = &v6[OBJC_IVAR___AMPLanguageAwareString_string];
  *v64 = countAndFlagsBits;
  v64[1] = object;
  v65 = v82;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v81;
  v66 = v80;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_numbers] = v79;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_words] = v66;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v65;
  v72 = v84;
  sub_1E3D365FC(&v72);
  v71.receiver = v6;
  v71.super_class = type metadata accessor for LanguageAwareString();
  v67 = objc_msgSendSuper2(&v71, sel_init);

  return v67;
}

id LanguageAwareString.__allocating_init(_:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return sub_1E3D34E30(a1, v3);
}

id sub_1E3D34E30(void *a1, unsigned int a2)
{
  v3 = v2;
  swift_getObjectType();
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v6 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v3[v7] = v8;
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_20_78(&v3[*(v9 + 96)]);
  OUTLINED_FUNCTION_25();
  sub_1E3CA6DF4(v10, v11, v12, v13, a2, v14);
  rawValue = v26._rawValue;
  if (v28)
  {

    NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v16, v26);
  }

  *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = a1;
  v17 = a1;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_string] = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
  v18 = *&v3[v6];
  *&v3[v6] = a1;
  v19 = v17;

  *&v3[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = rawValue;
  v20 = v25;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_numbers] = v24;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_words] = v20;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v27;

  v23.receiver = v3;
  v23.super_class = type metadata accessor for LanguageAwareString();
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

char *LanguageAwareString.__allocating_init(_:attributes:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(OUTLINED_FUNCTION_112());
  v5 = OUTLINED_FUNCTION_74();
  return LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(v5, v6, a3);
}

char *LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v3[v8] = v9;
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_20_78(&v3[*(v10 + 96)]);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0xE8))();
  v13 = v12;
  if (a2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    OUTLINED_FUNCTION_146();
    v15 = sub_1E4205C44();

    v16 = [v13 fullRange];
    [v14 addAttributes:v15 range:{v16, v17}];

    v18 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  }

  else
  {
    v18 = v12;
  }

  *&v4[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v18;
  v19 = v18;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_string] = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
  if (a3)
  {
    *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = *&a1[OBJC_IVAR___AMPLanguageAwareString_paragraphs];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = *&a1[OBJC_IVAR___AMPLanguageAwareString_numbers];

    v20 = OBJC_IVAR___AMPLanguageAwareString_words;
    v21 = *&a1[OBJC_IVAR___AMPLanguageAwareString_words];
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = MEMORY[0x1E69E7CC0];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = v21;

    v20 = OBJC_IVAR___AMPLanguageAwareString_words;
  }

  *&v4[v20] = v21;
  v22 = *&a1[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections];
  *&v4[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v22;
  v26.receiver = v4;
  v26.super_class = type metadata accessor for LanguageAwareString();
  v23 = v22;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  return v24;
}

char *LanguageAwareString.init(from:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_50();
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v5 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v0[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  v6 = OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage;
  *&v0[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  v7 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  v60 = ObjectType;
  v62 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  v64 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  v66 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v0[v8] = v9;
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_20_78(&v0[*(v10 + 96)]);
  v69 = v0;
  __swift_project_boxed_opaque_existential_1(v0, *(v0 + 3));
  OUTLINED_FUNCTION_146();
  sub_1E4207BF4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    OUTLINED_FUNCTION_146();
    v12 = sub_1E42079C4();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v84);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v15 = static LanguageAwareString.delegate;
    if (static LanguageAwareString.delegate)
    {
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_123_1();
      v16 = sub_1E4205ED4();

      v17 = [v15 preprocessForLanguageAwarenessString_];

      v12 = sub_1E4205F14();
      v14 = v18;
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v67 = v12;
    if (static LanguageAwareString.alwaysGenerateAttributedString == 1)
    {
      sub_1E3280A90(0, &unk_1EE23AFE0, 0x1E696AD40);

      v19 = OUTLINED_FUNCTION_123_1();
      v21 = sub_1E3763FC8(v19, v20);
      v22 = v21;
      v23 = 0;
      v24 = 0;
    }

    else
    {

      v21 = 0;
      v23 = v12;
      v24 = v14;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v25 = static LanguageAwareString.keepStatisticsOnLanguageComponents;
    v26 = v21;
    sub_1E3CA6DF4(v21, v23, v24, 0, v25, v85);

    v27._rawValue = v89;
    if (v21)
    {
      v24 = v67;
      if (v89)
      {
        v28._rawValue = v86;

        NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v29, v28);
      }

      else
      {
      }

      [v26 copy];

      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
      if (swift_dynamicCast())
      {
        v48 = v71;
      }

      else
      {
        v48 = 0;
      }

      if (v88)
      {

        *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v48;
        v49 = v48;
        v50 = v26;
        NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
        v51 = [v26 string];
        sub_1E4205F14();
        OUTLINED_FUNCTION_23_70();

        v26 = v49;
LABEL_29:

        v55 = &v2[OBJC_IVAR___AMPLanguageAwareString_string];
        *v55 = v50;
        *(v55 + 1) = v24;
        v56 = v87;
        *&v2[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v86;
        v57 = v85[1];
        *&v2[OBJC_IVAR___AMPLanguageAwareString_numbers] = v85[0];
        *&v2[OBJC_IVAR___AMPLanguageAwareString_words] = v57;
        *&v2[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v56;
        v90 = v89;
        sub_1E3D365FC(&v90);
        v74.receiver = v2;
        v74.super_class = type metadata accessor for LanguageAwareString();
        v2 = objc_msgSendSuper2(&v74, sel_init);
        __swift_destroy_boxed_opaque_existential_1(v69);
        return v2;
      }

      *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v48;
      if (v48)
      {
        v52 = v48;
LABEL_28:
        v54 = v52;

        v50 = v54;
        NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
        OUTLINED_FUNCTION_23_70();

        goto LABEL_29;
      }
    }

    else
    {
      if (v89)
      {

        v30 = sub_1E4205ED4();

        [v30 mutableCopy];

        sub_1E4207264();
        swift_unknownObjectRelease();
        v31 = sub_1E3280A90(0, &qword_1ECF31E90, 0x1E696AD60);
        OUTLINED_FUNCTION_32_62(v31, v32, v33, v31, v34, v35, v36, v37, v58, v60, v62, v64, v67, v69, v71, v74.receiver, v74.super_class, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84[0]);
        v38 = v72;
        NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(v27);

        [v72 copy];
        sub_1E4207264();
        swift_unknownObjectRelease();
        v39 = sub_1E3280A90(0, &qword_1EE23AD58, 0x1E696AEC0);
        OUTLINED_FUNCTION_32_62(v39, v40, v41, v39, v42, v43, v44, v45, v59, v61, v63, v65, v68, v70, v72, v74.receiver, v74.super_class, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84[0]);
        v24 = v73;
        v46 = sub_1E4205F14();
        v14 = v47;
      }

      else
      {
        v46 = v67;
      }

      if (v88)
      {
        v53 = sub_1E3D325DC(0, v86, v46, v14);

        *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v53;
        v26 = v53;
        v50 = v26;
        NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
        OUTLINED_FUNCTION_23_70();
        goto LABEL_29;
      }

      *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
      v24 = v46;
    }

    v52 = sub_1E3D325DC(0, v86, v24, v14);
    goto LABEL_28;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);

  type metadata accessor for LanguageAwareString();
  OUTLINED_FUNCTION_19_3();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t LanguageAwareString.baseWritingDirection(forCharacterAt:)()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))();
  OUTLINED_FUNCTION_50();
  v1 = NSAttributedString.baseWritingDirection(forCharacterAt:)();
  v3 = v2;

  if (v3)
  {
    return -1;
  }

  else
  {
    return v1;
  }
}

uint64_t LanguageAwareString.thresholdBaseWritingDirection.getter()
{
  v1 = (v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection);
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    result = *(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough);
  }

  else
  {
    result = -1;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_1E3D35B24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x240))();
  *a2 = result;
  return result;
}

uint64_t LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:lineNumberReported:)(uint64_t a1, id a2, id a3, char a4, void *a5, double a6)
{
  v8 = *(v6 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v8 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts))
  {
    v14 = *(v8 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
    v15 = *(v8 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
    if (v14)
    {
      if (!v15)
      {
        result = 0;
        if (a5)
        {
          *a5 = -2;
        }

        return result;
      }

LABEL_13:
      if ((a4 & 1) == 0 || (v17 = *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage)) == 0)
      {
        v34 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
        v35 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xE8);
        v18 = v34;
        v36 = v35();
        [v18 setAttributedString_];

        v22 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
        [v18 addTextLayoutManager_];

        v37 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
        [v37 setLineFragmentPadding_];
        [v37 setMaximumNumberOfLines_];
        [v37 setLineBreakMode_];
        v38 = v37;
        [v22 setTextContainer_];

        if (a4)
        {
          v23 = *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage);
          *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage) = v18;
          v18 = v18;
        }

        else
        {
          v23 = *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage);
          *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage) = 0;
        }

        goto LABEL_39;
      }

      v18 = v17;
      v19 = [v18 textLayoutManagers];
      sub_1E3280A90(0, &qword_1ECF311E0, 0x1E69DB828);
      v20 = sub_1E42062B4();
      if (sub_1E32AE9B0(v20))
      {

        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1E6911E60](0, v20);
LABEL_19:
          v22 = v21;

          result = [v22 textContainer];
          if (result)
          {
            v23 = result;
            [result size];
            v25 = v24;
            v27 = v26;
            [v23 lineFragmentPadding];
            v29 = v28;
            v30 = [v23 maximumNumberOfLines];
            v31 = [v23 lineBreakMode];
            v32 = v31;
            if (v25 == a6 && v27 == 1.79769313e308)
            {
              if (v29 == 0.0)
              {
                if (v30 == a2)
                {
                  if (v31 == a3)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_37;
                }

LABEL_35:
                [v23 setMaximumNumberOfLines_];
LABEL_36:
                if (v32 == a3)
                {
LABEL_38:
                  v39 = [v18 documentRange];
                  [v22 invalidateLayoutForRange_];

LABEL_39:
                  v40 = [v18 writingDirectionOfLine:a1 usingTextLayoutManager:v22 lineNumberReported:a5];

                  return v40;
                }

LABEL_37:
                [v23 setLineBreakMode_];
                goto LABEL_38;
              }
            }

            else
            {
              [v23 setSize_];
              if (v29 == 0.0)
              {
                goto LABEL_34;
              }
            }

            [v23 setLineFragmentPadding_];
LABEL_34:
            if (v30 == a2)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_44:
          __break(1u);
          return result;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v21 = *(v20 + 32);
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_44;
    }

    if (!v15)
    {
      goto LABEL_13;
    }

    if (a5)
    {
      *a5 = -2;
    }

    return 1;
  }

  else
  {
    if (a5)
    {
      *a5 = -2;
    }

    return -1;
  }
}

id LanguageAwareString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageAwareString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3D36330@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 560))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E3D3638C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v5 setAlignment_];
  [v5 setBaseWritingDirection_];
  [v5 setLineBreakMode_];
  [v5 copy];
  sub_1E4207264();
  swift_unknownObjectRelease();

  sub_1E3280A90(0, &qword_1EE23B298, 0x1E69DB7D0);
  result = swift_dynamicCast();
  *a3 = v7;
  return result;
}

id sub_1E3D3648C(uint64_t a1)
{
  if (a1 == -1)
  {
    if (qword_1EE28AF78 != -1)
    {
      OUTLINED_FUNCTION_4_176();
      swift_once();
    }

    v1 = &qword_1EE2AA880;
  }

  else if (a1 == 1)
  {
    if (qword_1EE28AF80 != -1)
    {
      OUTLINED_FUNCTION_5_152();
      swift_once();
    }

    v1 = &qword_1ECF715F0;
  }

  else
  {
    if (a1)
    {
      sub_1E42074B4();

      OUTLINED_FUNCTION_29_68();
      v9 = v5;
      v10 = v4;
      v6 = sub_1E4207944();
      MEMORY[0x1E69109E0](v6);

      result = OUTLINED_FUNCTION_34_58("Fatal error", v7, v8, v9, v10, "VideosUI/LanguageAwareString.swift");
      __break(1u);
      return result;
    }

    if (_MergedGlobals_25 != -1)
    {
      OUTLINED_FUNCTION_3_170();
      swift_once();
    }

    v1 = &qword_1EE2AA8C8;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3D365FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AD0, &qword_1E42CCBD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E3D36664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4205ED4();

  if (a3)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    v6 = sub_1E4205C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

unint64_t sub_1E3D36714(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1E3D36920(a1, a3, a4);
  result = sub_1E3D36920(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1E4205FE4();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_1E4207524();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1E4205FF4();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_1E4207524();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t sub_1E3D36920(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1E3D369C0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1E39A5410(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1E3D369C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1E3780B3C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return swift_dynamicCast();
}

double sub_1E3D36A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E3886250(a1, a2);
  v7 = TVAppFeature.isEnabled.getter(10, v5, v6);
  if (v4)
  {
    if (v7)
    {
      v7 = sub_1E3CCE24C(*(v3 + 98));
      if (v7)
      {
        OUTLINED_FUNCTION_5_0(v3 + 120, v38);
        v14 = *(v3 + 120);
        OUTLINED_FUNCTION_3_0(v3 + 104, v37);
        *(v3 + 104) = v14;

        return result;
      }
    }

    OUTLINED_FUNCTION_4_55(v7, v8, v9, v10, v11, v12, v13);
    if (OUTLINED_FUNCTION_20_9())
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v16 + 312))(0x405E000000000000, 0);
    }

    else
    {
      v17 = swift_endAccess();
    }

    OUTLINED_FUNCTION_4_55(v17, v18, v19, v20, v21, v22, v23);
    v34 = OUTLINED_FUNCTION_20_9();
    swift_endAccess();
    v38[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740, &qword_1E42A75D0);
    v35 = sub_1E3D39A68;
  }

  else
  {
    if (v7)
    {
      v7 = sub_1E3CCE24C(*(v3 + 98));
      if (v7)
      {
        OUTLINED_FUNCTION_5_0(v3 + 112, v37);
        v24 = *(v3 + 112);
        OUTLINED_FUNCTION_14_0(v3 + 104, v25);
        *(v3 + 104) = v24;
      }
    }

    OUTLINED_FUNCTION_4_55(v7, v8, v9, v10, v11, v12, v13);
    if (OUTLINED_FUNCTION_20_9())
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v26 + 312))(0x4064000000000000, 0);
    }

    else
    {
      v27 = swift_endAccess();
    }

    OUTLINED_FUNCTION_4_55(v27, v28, v29, v30, v31, v32, v33);
    v36 = OUTLINED_FUNCTION_20_9();
    swift_endAccess();
    v38[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740, &qword_1E42A75D0);
    v35 = sub_1E3D39BFC;
  }

  sub_1E4148DE0(v35);

  return result;
}

uint64_t sub_1E3D36C8C(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3D36CC8(v1);
}

uint64_t sub_1E3D36CC8(char a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 99) = 2;
  *(v1 + 104) = v2;
  *(v1 + 112) = v2;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 98) = a1;
  v3 = sub_1E3C2F9A0();
  v4 = *(v3 + 98);

  switch(v4)
  {
    case 4:
    case 5:
    case 9:
    case 10:
      sub_1E3D38C30();
      break;
    case 6:
      v532 = type metadata accessor for ViewGradientLayout(0);
      v152 = sub_1E40C3088();
      OUTLINED_FUNCTION_9_119();
      OUTLINED_FUNCTION_25_73();
      v154 = v153;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_169(v155, v156, v157, v158, v159, v160, v161, v162, *&v349, *&v374, *&v400, *&v425, *&v449, *&v473, *&v497, *&v532, v548, v571, *&v595, *&v620, *&v645, *&v663, *&v676, *&v689, *&v702, *&v715, *&v728, *&v741, *&v754, *&v767, *&v780, *&v793, *&v806, *&v819, *&v832, *&v845, *&v858, *&v871, *&v884, *&v896, *&v909, *&v922, *&v935, *&v947, *&v958, *&v969, *&v980, *&v990, *&v1001, *&v1012, *&v1023, *&v1033, *&v1042, *&v1051, *&v1060, *&v1067, *&v1072, *&v1077, v1082);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_201(v163, v164, v165, v166, v167, v168, v169, v170, v359, v385, v410, v434, v459, v482, v507, v533, v556, v580, v605, v630, v651, v667, v680, v693, v706, v719, v732, v745, v758, v771, v784, v797, v810, v823, v836, v849, v862, v875, v888, v900, v913, v926, v938, v951, v962, v973, v984, v994, v1005, v1016, v1026);
      v171 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_6_148(v171, v172, v173, v174, v175, v176, v177, v178, v360, v386, v411, v435, v460, v483, v508, v534, v557, v581, v606, v631, v652, v668, v681, v694, v707, v720, v733, v746, v759, v772, v785, v798, v811, v824, v837, v850, v863, v876, v889, v901, v914, v927, v939);
      v187 = OUTLINED_FUNCTION_5_153(v179, v180, v181, v182, v183, v184, v185, v186, v361, v387, v412, v436, v461, v484, v509, v535, v558, v582, v607, v632, v653, v669, v682, v695, v708, v721, v734, v747, v760, v773, v786, v799, v812, v825, v838, v851, v864, v877, v890, v902, v915, v928, v940, v952, v963, v974, v985, v995, v1006, v1017, v1027, v1037, v1046, v1055, v1064);
      sub_1E3C2FCB8(v187, v188, v189, v190, v191, v192, v154, v193);
      OUTLINED_FUNCTION_26_77(v194, v195, v196, v197, v198, v199, v200, v201, v362, v388, v413, v437, v462, v485, v510, v536, v559, v583, v608, v633);
      v202 = OUTLINED_FUNCTION_18();
      v203 = (*v152 + 1600);
      v204 = *v203;
      v212 = OUTLINED_FUNCTION_37_54(v202, v205, v206, v207, v208, v209, v210, v211, v363, v389, v414, v438, v463, v486, v511, v537, v560, v584, v609, v634, v654);
      v204(v212);
      __asm { FMOV            V0.2D, #0.5 }

      OUTLINED_FUNCTION_9_119();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_169(v214, v215, v216, v217, v218, v219, v220, v221, v364, v390, v415, v439, v464, v487, v512, v538, v561, v585, v610, v635, v655, v670, v683, v696, v709, v722, v735, v748, v761, v774, v787, v800, v813, v826, v839, v852, v865, v878, v891, v903, v916, v929, v941, v953, v964, v975, v986, v996, v1007, v1018, v1028, v1038, v1047, v1056, v1065, v1071, v1076, v1081, v1084);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_201(v222, v223, v224, v225, v226, v227, v228, v229, v365, v391, v416, v440, v465, v488, v513, v539, v562, v586, v611, v636, v656, v671, v684, v697, v710, v723, v736, v749, v762, v775, v788, v801, v814, v827, v840, v853, v866, v879, v892, v904, v917, v930, v942, v954, v965, v976, v987, v997, v1008, v1019, v1029);
      v230 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_6_148(v230, v231, v232, v233, v234, v235, v236, v237, v366, v392, v417, v441, v466, v489, v514, v540, v563, v587, v612, v637, v657, v672, v685, v698, v711, v724, v737, v750, v763, v776, v789, v802, v815, v828, v841, v854, v867, v880, v893, v905, v918, v931, v943);
      v246 = OUTLINED_FUNCTION_5_153(v238, v239, v240, v241, v242, v243, v244, v245, v367, v393, v418, v442, v467, v490, v515, v541, v564, v588, v613, v638, v658, v673, v686, v699, v712, v725, v738, v751, v764, v777, v790, v803, v816, v829, v842, v855, v868, v881, v894, v906, v919, v932, v944, v955, v966, v977, v988, v998, v1009, v1020, v1030, v1039, v1048, v1057, v1066);
      sub_1E3C2FCB8(v246, v247, v248, v249, v250, v251, v154, v252);
      OUTLINED_FUNCTION_26_77(v253, v254, v255, v256, v257, v258, v259, v260, v368, v394, v419, v443, v468, v491, v516, v542, v565, v589, v614, v639);
      v261 = OUTLINED_FUNCTION_18();
      v269 = OUTLINED_FUNCTION_8_14(v261, v262, v263, v264, v265, v266, v267, v268, v369, v395, v420, v444, v469, v492, v517, v543, v566, v590, v615, v640, v659);
      (v204)(v269, 116);
      LOBYTE(v660) = 2;
      sub_1E3C3DE00();
      sub_1E3C3DE00();
      LOBYTE(v989) = v1031;
      v270 = sub_1E3C3DE00();
      LOBYTE(v895) = v945;
      v278 = OUTLINED_FUNCTION_5_153(v270, v271, v272, v273, v274, v275, v276, v277, v370, v396, v421, v204, v203, v493, v518, v544, v567, v591, v616, v641, v660, v674, v687, v700, v713, v726, v739, v752, v765, v778, v791, v804, v817, v830, v843, v856, v869, v882, v895, v907, v920, v933, v945, v956, v967, v978, v989, v999, v1010, v1021, v1031, v1040, v1049, v1058, v1085);
      sub_1E3C2FCB8(v278, v279, v280, v281, v282, v283, &type metadata for ViewGradientLayout.GradientType, v284);
      v285 = OUTLINED_FUNCTION_32_63();
      v293 = OUTLINED_FUNCTION_8_14(v285, v286, v287, v288, v289, v290, v291, v292, v371, v397, v422, v445, v470, v494, v519, v545, v568, v592, v617, v642, v661);
      (v204)(v293, 117);
      v1087 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      v294 = objc_opt_self();
      v295 = [v294 blackColor];
      v296 = [v295 colorWithAlphaComponent_];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      v297 = OUTLINED_FUNCTION_39_48();
      OUTLINED_FUNCTION_36_50();
      v300 = [v298 v299];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      v301 = OUTLINED_FUNCTION_39_48();
      OUTLINED_FUNCTION_36_50();
      v304 = [v302 v303];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      v305 = OUTLINED_FUNCTION_39_48();
      OUTLINED_FUNCTION_36_50();
      v308 = [v306 v307];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      v309 = OUTLINED_FUNCTION_39_48();
      OUTLINED_FUNCTION_36_50();
      v312 = [v310 v311];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      (*(*v152 + 1800))(v1087);
      v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
      sub_1E3C3DE00();
      sub_1E3C3DE00();
      v314 = sub_1E3C3DE00();
      v322 = OUTLINED_FUNCTION_5_153(v314, v315, v316, v317, v318, v319, v320, v321, v372, v398, v423, v446, v471, v495, v520, v546, v569, v593, v618, v643, &unk_1F5D80790, v675, v688, v701, v714, v727, v740, v753, v766, v779, v792, v805, v818, v831, v844, v857, v870, v883, v946, v908, v921, v934, v946, v957, v968, v979, v1032, v1000, v1011, v1022, v1032, v1041, v1050, v1059, v1085);
      sub_1E3C2FCB8(v322, v323, v324, v325, v326, v327, v313, v328);
      v662 = v1087;
      v329 = OUTLINED_FUNCTION_18();
      v337 = OUTLINED_FUNCTION_8_14(v329, v330, v331, v332, v333, v334, v335, v336, v373, v399, v424, v447, v472, v496, v521, v547, v570, v594, v619, v644, v662);
      v448(v337, 114);

      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v339 = OUTLINED_FUNCTION_31_54(v338);
      *(v339 + 16) = xmmword_1E429DCC0;
      v340 = [v294 blackColor];
      v341 = [v340 colorWithAlphaComponent_];

      *(v339 + 32) = v341;
      v342 = [v294 blackColor];
      v343 = [v342 colorWithAlphaComponent_];

      *(v339 + 40) = v343;
      v344 = sub_1E40C2E40();
      v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748, &qword_1E42A75D8);
      v346 = OUTLINED_FUNCTION_41_3(v345);
      *(v346 + 16) = 2;
      *(v346 + 24) = xmmword_1E42CCC30;
      *(v346 + 40) = v152;
      *(v346 + 48) = 12;
      *(v346 + 56) = v344;
      type metadata accessor for VUIPosition(0);
      OUTLINED_FUNCTION_7_163(&qword_1EE23B3C0);
      v347 = sub_1E4205CB4();
      OUTLINED_FUNCTION_3_0(v3 + 104, &v1087);
      *(v3 + 104) = v347;
      goto LABEL_7;
    case 8:
      break;
    default:
      v522 = type metadata accessor for ViewGradientLayout(0);
      v5 = sub_1E40C3088();
      OUTLINED_FUNCTION_9_119();
      type metadata accessor for CGPoint(0);
      v7 = v6;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_69();
      OUTLINED_FUNCTION_28_59();
      v8 = OUTLINED_FUNCTION_27_60();
      LOBYTE(v595) = v909;
      v16 = OUTLINED_FUNCTION_4_177(v8, v9, v10, v11, v12, v13, v14, v15, v349, v374, v400, v425, v449, v473, v497, v522, v884, v896, v595, v620, v645, v663, v676, v689, v702, v715, v728, v741, v754, v767, v780, v793, v806, v819, v832, v845, v858, v871, v884, v896, v909, v922, v935, v947, v958, v969, v980, v990, v1001, v1012, v1023, v1033, v1042, v1051, v1060, v1067, v1072, v1077, SLOBYTE(v1082));
      sub_1E3C2FCB8(v16, v17, v18, v19, v20, v21, v7, v22);
      OUTLINED_FUNCTION_26_77(v23, v24, v25, v26, v27, v28, v29, v30, v350, v375, v401, v426, v450, v474, v498, v523, v549, v572, v596, v621);
      v31 = OUTLINED_FUNCTION_18();
      v32 = (*v5 + 1600);
      v33 = *v32;
      v41 = OUTLINED_FUNCTION_37_54(v31, v34, v35, v36, v37, v38, v39, v40, v351, v376, v402, v427, v451, v475, v499, v524, v550, v573, v597, v622, v646);
      v33(v41);
      __asm { FMOV            V0.2D, #0.5 }

      OUTLINED_FUNCTION_9_119();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_69();
      OUTLINED_FUNCTION_28_59();
      v47 = OUTLINED_FUNCTION_27_60();
      LOBYTE(v598) = v910;
      v55 = OUTLINED_FUNCTION_4_177(v47, v48, v49, v50, v51, v52, v53, v54, v352, v377, v403, v428, v452, v476, v500, v525, v885, v897, v598, v623, v647, v664, v677, v690, v703, v716, v729, v742, v755, v768, v781, v794, v807, v820, v833, v846, v859, v872, v885, v897, v910, v923, v936, v948, v959, v970, v981, v991, v1002, v1013, v1024, v1034, v1043, v1052, v1061, v1068, v1073, v1078, v1083);
      sub_1E3C2FCB8(v55, v56, v57, v58, v59, v60, v7, v61);
      OUTLINED_FUNCTION_26_77(v62, v63, v64, v65, v66, v67, v68, v69, v353, v378, v404, v429, v453, v477, v501, v526, v551, v574, v599, v624);
      v70 = OUTLINED_FUNCTION_18();
      v78 = OUTLINED_FUNCTION_8_14(v70, v71, v72, v73, v74, v75, v76, v77, v354, v379, v405, v430, v454, v478, v502, v527, v552, v575, v600, v625, v648);
      (v33)(v78, 116);
      LOBYTE(v649) = 1;
      sub_1E3C3DE00();
      sub_1E3C3DE00();
      LOBYTE(v1025) = v1062;
      sub_1E3C3DE00();
      LOBYTE(v937) = v982;
      v79 = sub_1E3C3DE00();
      LOBYTE(v553) = v886;
      v87 = OUTLINED_FUNCTION_4_177(v79, v80, v81, v82, v83, v84, v85, v86, v355, v380, v33, v32, v455, v479, v503, v528, v553, v576, v601, v626, v649, v665, v678, v691, v704, v717, v730, v743, v756, v769, v782, v795, v808, v821, v834, v847, v860, v873, v886, v898, v911, v924, v937, v949, v960, v971, v982, v992, v1003, v1014, v1025, v1035, v1044, v1053, v1062, v1069, v1074, v1079, v1086);
      sub_1E3C2FCB8(v87, v88, v89, v90, v91, v92, &type metadata for ViewGradientLayout.GradientType, v93);
      v94 = OUTLINED_FUNCTION_32_63();
      v102 = OUTLINED_FUNCTION_8_14(v94, v95, v96, v97, v98, v99, v100, v101, v356, v381, v406, v431, v456, v480, v504, v529, v554, v577, v602, v627, v650);
      (v33)(v102, 117);
      v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v103 = OUTLINED_FUNCTION_31_54(v382);
      *(v103 + 16) = xmmword_1E429DCC0;
      v104 = objc_opt_self();
      v105 = [v104 blackColor];
      v106 = [v105 colorWithAlphaComponent_];

      *(v103 + 32) = v106;
      v107 = [v104 blackColor];
      v108 = [v107 &selRef:0.0 componentsSeparatedByString:?];

      *(v103 + 40) = v108;
      (*(*v5 + 1800))(v103);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
      sub_1E3C3DE00();
      sub_1E3C3DE00();
      sub_1E3C3DE00();
      v110 = sub_1E3C3DE00();
      v118 = OUTLINED_FUNCTION_4_177(v110, v111, v112, v113, v114, v115, v116, v117, v357, v382, v407, v432, 2, 5, v505, v530, v887, v578, v603, v628, &unk_1F5D80730, v666, v679, v692, v705, v718, v731, v744, v757, v770, v783, v796, v809, v822, v835, v848, v861, v874, v887, v899, v912, v925, v983, v950, v961, v972, v983, v993, v1004, v1015, v1063, v1036, v1045, v1054, v1063, v1070, v1075, v1080, v1086);
      sub_1E3C2FCB8(v118, v119, v120, v121, v122, v123, v109, v124);
      v125 = OUTLINED_FUNCTION_18();
      v133 = OUTLINED_FUNCTION_8_14(v125, v126, v127, v128, v129, v130, v131, v132, v358, v383, v408, v433, v457, v481, v506, v531, v555, v579, v604, v629, v1087);
      v409(v133, 114);

      v134 = OUTLINED_FUNCTION_31_54(v384);
      *(v134 + 16) = v458;
      v135 = [v104 blackColor];
      v136 = [v135 colorWithAlphaComponent_];

      *(v134 + 32) = v136;
      v137 = [v104 blackColor];
      v138 = [v137 colorWithAlphaComponent_];

      *(v134 + 40) = v138;
      v139 = sub_1E40C2E40();
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748, &qword_1E42A75D8);
      v141 = OUTLINED_FUNCTION_41_3(v140);
      v142 = OUTLINED_FUNCTION_35_50(v141, xmmword_1E4299720);
      v142[2].n128_u64[0] = v143;
      v142[2].n128_u64[1] = v5;
      v142[3].n128_u64[0] = 12;
      v142[3].n128_u64[1] = v139;
      type metadata accessor for VUIPosition(0);
      OUTLINED_FUNCTION_7_163(&qword_1EE23B3C0);

      v144 = sub_1E4205CB4();
      if (sub_1E3CCE274(*(v3 + 98), 2u))
      {
        v145 = OUTLINED_FUNCTION_31_54(v384);
        *(v145 + 16) = v458;
        v146 = [v104 blackColor];
        v147 = [v146 colorWithAlphaComponent_];

        *(v145 + 32) = v147;
        v148 = [v104 blackColor];
        v149 = [v148 colorWithAlphaComponent_];

        *(v145 + 40) = v149;
        v150 = sub_1E40C2E40();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1087 = v144;
        sub_1E3D39AD8(v150, 15, isUniquelyReferenced_nonNull_native);
      }

      OUTLINED_FUNCTION_3_0(v3 + 104, &v1087);
      *(v3 + 104) = v144;
LABEL_7:

      break;
  }

  return v3;
}

void sub_1E3D37958()
{
  *(v0 + 99) = 2;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 104) = MEMORY[0x1E69E7CC8];
  *(v0 + 112) = v1;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3D379CC(uint64_t a1, void *a2, unsigned int a3)
{
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_5_0(v3 + 104, v21);
  v6 = *(v3 + 104);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v3 + 104) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      sub_1E3D36A6C(v18, v19);
      return;
    }

    v12 = *(v8 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      do
      {
LABEL_9:
        v12 &= v12 - 1;
        OUTLINED_FUNCTION_8();
        v17 = *(v16 + 1640);

        v17(a1, a2, a3);
      }

      while (v12);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1E3D37B1C(uint64_t a1, void *a2)
{
  v4 = dbl_1E42A73B0[sub_1E3886250(a1, a2) == 0];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v6 = OUTLINED_FUNCTION_31_54(v5);
  *(v6 + 16) = xmmword_1E429DCC0;
  v7 = [a2 colorWithAlphaComponent_];
  *(v6 + 32) = v7;
  *(v6 + 40) = OUTLINED_FUNCTION_41_48(v7, sel_colorWithAlphaComponent_);
  return (*(*a1 + 1800))(v6);
}

void sub_1E3D37C04(int a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  LODWORD(v10) = a1;
  v12 = sub_1E3CCE24C(*(v6 + 98));
  if (v12)
  {
    v20 = TVAppFeature.isEnabled.getter(10, v13, v14);
    if (v20)
    {
      OUTLINED_FUNCTION_5_44(v6 + 112, v537);
      v28 = *(v6 + 112);
    }

    else
    {
      OUTLINED_FUNCTION_11_117(v20, v21, v22, v23, v24, v25, v26, v27, v382, v409, v435, v462, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534);
      v28 = *(v6 + 104);
    }

    v41 = sub_1E3887098(2, v28);
    swift_endAccess();
    if (v41)
    {
      v44 = *(*v41 + 304);

      v46 = COERCE_DOUBLE(v44(v45));
      if (v47)
      {
        v48 = 120.0;
      }

      else
      {
        v48 = v46;
      }

      v539.origin.x = OUTLINED_FUNCTION_2_0();
      v49 = v48 / CGRectGetHeight(v539);
      (*(*v41 + 1752))(0x3FE0000000000000, *&v49, 0);
    }

    v50 = TVAppFeature.isEnabled.getter(10, v42, v43);
    if (v50)
    {
      OUTLINED_FUNCTION_5_44(v6 + 112, v537);
      v58 = *(v6 + 112);
    }

    else
    {
      OUTLINED_FUNCTION_11_117(v50, v51, v52, v53, v54, v55, v56, v57, v382, v409, v435, v462, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534);
      v58 = *(v6 + 104);
    }

    v59 = sub_1E3887098(3, v58);
    swift_endAccess();
    if (v59)
    {
      v60 = a2 + 10.0;
      v540.origin.x = OUTLINED_FUNCTION_2_0();
      Height = CGRectGetHeight(v540);
      v62 = a2 + 182.0;
      v63 = (Height - (a2 + 10.0)) / Height;
      v541.origin.x = OUTLINED_FUNCTION_2_0();
      *&v64 = 700.0 / CGRectGetWidth(v541);
      v542.origin.x = OUTLINED_FUNCTION_2_0();
      v65 = CGRectGetHeight(v542) - v62;
      v543.origin.x = OUTLINED_FUNCTION_2_0();
      v66 = v65 / CGRectGetHeight(v543);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0, &qword_1E42A1AA0);
      v68 = OUTLINED_FUNCTION_22_9(v67);
      *(v68 + 16) = xmmword_1E4297BD0;
      *(v68 + 32) = 0;
      *(v68 + 40) = (v60 + -88.0) / v60;
      *(v68 + 48) = 0x3FF0000000000000;
      LOBYTE(v489) = 0;
      OUTLINED_FUNCTION_25_73();
      HIDWORD(v435) = v10;
      v10 = v69;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_169(v70, v71, v72, v73, v74, v75, v76, v77, *&v382, *&v409, *&v435, *&v462, 0.5, 1.0, *&v489, *&v490, *&v491, *&v492, *&v493, *&v494, *&v495, *&v496, *&v497, *&v498, *&v499, *&v500, *&v501, *&v502, *&v503, *&v504, *v505, *&v505[1], *&v506, *&v507, *v508, *&v508[1], *&v509, *&v510, *&v511, *&v512, *&v513, *&v514, *&v515, *(&v515 + 1), *&v516, *&v517, *&v518, *&v519, *&v520, *&v521, *&v522, *&v523, *&v524, *&v525, *&v526, *&v527, *&v528, *&v529, *&v530);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_201(v78, v79, v80, v81, v82, v83, v84, v85, v384, v411, v437, v464, *__dst, *&__dst[8], *&v489, *&v490, *&v491, *&v492, *&v493, *&v494, *&v495, *&v496, *&v497, *&v498, *&v499, *&v500, *&v501, *&v502, *&v503, *&v504, *v505, *&v505[1], *&v506, *&v507, *v508, *&v508[1], *&v509, *&v510, *&v511, *&v512, *&v513, *&v514, *&v515, *(&v515 + 1), *&v516, *&v517, *&v518, *&v519, *&v520, *&v521, *&v522);
      v86 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_6_148(v86, v87, v88, v89, v90, v91, v92, v93, v385, v412, v438, v465, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515);
      v94 = sub_1E3C3DE00();
      LOBYTE(v506) = v509;
      v102 = OUTLINED_FUNCTION_0_223(v94, v95, v96, v97, v98, v99, v100, v101, v386, v413, v439, v466, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v508[0], v508[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526);
      sub_1E3C2FCB8(v102, v103, v104, v105, v106, v107, v10, v108);
      OUTLINED_FUNCTION_23_71(v109, v110, v111, v112, v113, v114, v115, v116, v387, v414, v440, v467, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_36();
      v118 = *(v117 + 1600);
      v127 = OUTLINED_FUNCTION_7_25(v119, v120, v121, v122, v123, v124, v125, v126, v388, v415, v441, v468, __dst[0]);
      v118(v127, 115);
      LOBYTE(v489) = 0;
      v535 = v66;
      LOBYTE(v536) = 0;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_169(v128, v129, v130, v131, v132, v133, v134, v135, v389, v416, v442, *&v118, 0.5, v63, *&v489, *&v490, *&v491, *&v492, *&v493, *&v494, *&v495, *&v496, *&v497, *&v498, *&v499, *&v500, *&v501, *&v502, *&v503, *&v504, *v505, *&v505[1], *&v506, *&v507, *v508, *&v508[1], *&v509, *&v510, *&v511, *&v512, *&v513, *&v514, *&v515, *(&v515 + 1), *&v516, *&v517, *&v518, *&v519, *&v520, *&v521, *&v522, *&v523, *&v524, *&v525, *&v526, *&v527, *&v528, *&v529, *&v530);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_201(v136, v137, v138, v139, v140, v141, v142, v143, v390, v417, v443, v469, *__dst, *&__dst[8], *&v489, *&v490, *&v491, *&v492, *&v493, *&v494, *&v495, *&v496, *&v497, *&v498, *&v499, *&v500, *&v501, *&v502, *&v503, *&v504, *v505, *&v505[1], *&v506, *&v507, *v508, *&v508[1], *&v509, *&v510, *&v511, *&v512, *&v513, *&v514, *&v515, *(&v515 + 1), *&v516, *&v517, *&v518, *&v519, *&v520, *&v521, *&v522);
      v144 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_6_148(v144, v145, v146, v147, v148, v149, v150, v151, v391, v418, v444, v470, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515);
      v152 = sub_1E3C3DE00();
      LOBYTE(v506) = v509;
      v160 = OUTLINED_FUNCTION_0_223(v152, v153, v154, v155, v156, v157, v158, v159, v392, v419, v445, v471, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v508[0], v508[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526);
      sub_1E3C2FCB8(v160, v161, v162, v163, v164, v165, v10, v166);
      OUTLINED_FUNCTION_23_71(v167, v168, v169, v170, v171, v172, v173, v174, v393, v420, v446, v472, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v64);
      v175 = OUTLINED_FUNCTION_18();
      v183 = OUTLINED_FUNCTION_7_25(v175, v176, v177, v178, v179, v180, v181, v182, v394, v421, v447, v473, __dst[0]);
      v118(v183, 116);
      *__dst = v68;
      v534 = &unk_1F5D80868;
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
      sub_1E3C3DE00();
      sub_1E3C3DE00();
      sub_1E3C3DE00();
      v185 = sub_1E3C3DE00();
      v193 = OUTLINED_FUNCTION_0_223(v185, v186, v187, v188, v189, v190, v191, v192, v395, v41, v448, v474, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v508[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v515, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v522, v519, v520, v521, v522, v523, v524, v525, v530);
      sub_1E3C2FCB8(v193, v194, v195, v196, v197, v198, v184, v199);
      __dst[0] = v537[0];
      *&__dst[8] = v537[1];
      v489 = v537[2];
      v490 = v537[3];
      v491 = v537[4];
      v492 = v537[5];
      v200 = OUTLINED_FUNCTION_18();
      v208 = OUTLINED_FUNCTION_7_25(v200, v201, v202, v203, v204, v205, v206, v207, v396, v422, v449, v475, __dst[0]);
      v476(v208, 114);
      LOBYTE(v10) = BYTE4(v450);

      __dst[0] = 1;
      LOBYTE(v534) = 2;
      sub_1E3C3DE00();
      sub_1E3C3DE00();
      LOBYTE(v518) = v522;
      sub_1E3C3DE00();
      LOBYTE(v511) = v515;
      v209 = sub_1E3C3DE00();
      LOBYTE(v505[0]) = v508[0];
      v217 = OUTLINED_FUNCTION_0_223(v209, v210, v211, v212, v213, v214, v215, v216, v397, v423, v450, v476, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v530);
      sub_1E3C2FCB8(v217, v218, v219, v220, v221, v222, &type metadata for ViewGradientLayout.GradientType, v223);
      __dst[0] = v537[0];
      v224 = OUTLINED_FUNCTION_18();
      v232 = OUTLINED_FUNCTION_7_25(v224, v225, v226, v227, v228, v229, v230, v231, v398, v424, v451, v477, __dst[0]);
      v462(v232, 117);
    }

    OUTLINED_FUNCTION_11_117(v233, v234, v235, v236, v237, v238, v239, v240, v382, v409, v435, v462, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534);
    if (sub_1E3887098(3, *(v7 + 104)))
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v241 + 944))(v10 & 1);
    }

    else
    {
      swift_endAccess();
    }

    v242 = v7 + 128;
    if (v10)
    {
      OUTLINED_FUNCTION_3_0(v242, v537);
      v534 = *(v7 + 128);

      v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740, &qword_1E42A75D0);
      sub_1E4148C68(sub_1E3D39768, v243, __dst);

      v244 = *__dst;
      OUTLINED_FUNCTION_36();
      v246 = *(v245 + 944);

      v246(0);
      if (a6 + a5 / -0.75 > 0.0)
      {
        v247 = a6 + a5 / -0.75;
      }

      else
      {
        v247 = 0.0;
      }

      v248 = v247 + 40.0 + 56.0;
      (*(*v244 + 312))(*&v248, 0);

      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0, &qword_1E42A1AA0);
      v250 = OUTLINED_FUNCTION_41_3(v249);
      *(v250 + 16) = xmmword_1E4298AD0;
      *(v250 + 32) = 0;
      *(v250 + 40) = v247 / v248;
      *(v250 + 48) = (v247 + 40.0) / v248;
      *(v250 + 56) = 0x3FF0000000000000;
      (*(*v244 + 1824))();
      *(v7 + 128) = v244;
    }

    else
    {
      OUTLINED_FUNCTION_5_0(v242, v537);
      if (!*(v7 + 128))
      {
        return;
      }

      OUTLINED_FUNCTION_8();
      v252 = *(v251 + 944);

      v252(1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_117(v12, v13, v14, v15, v16, v17, v18, v19, v382, v409, v435, v462, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534);
    v29 = *(v6 + 104);
    if (!*(v29 + 16) || (v30 = sub_1E3887C44(14), (v31 & 1) == 0))
    {
      swift_endAccess();
      return;
    }

    v32 = *(*(v29 + 56) + 8 * v30);
    swift_endAccess();
    v33 = objc_opt_self();

    v34 = [v33 currentDevice];
    v35 = [v34 orientation];

    v36 = [objc_opt_self() isPortraitIgnoringFlatOrientation:v35 viewSize:{a5, a6}];
    type metadata accessor for LayoutGrid();
    v538.origin.x = OUTLINED_FUNCTION_2_0();
    Width = CGRectGetWidth(v538);
    v38 = sub_1E3A2579C(Width);
    if ([objc_opt_self() isPhone])
    {
      v40 = *(*v32 + 944);

      v40(v36);

      return;
    }

    if (v36 & 1) == 0 && ((sub_1E373F630(v38, 3, v39) & 1) != 0 || (sub_1E373F630(v38, 4, v319) & 1) != 0 || (sub_1E373F630(v38, 5, v320)))
    {
      __asm { FMOV            V0.2D, #0.5 }

      *__dst = _Q0;
      LOBYTE(v489) = 0;
      OUTLINED_FUNCTION_25_73();
      v323 = v322;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_169(v324, v325, v326, v327, v328, v329, v330, v331, v383, v410, v436, *&v463, *__dst, *&__dst[8], *&v489, *&v490, *&v491, *&v492, *&v493, *&v494, *&v495, *&v496, *&v497, *&v498, *&v499, *&v500, *&v501, *&v502, *&v503, *&v504, *v505, *&v505[1], *&v506, *&v507, *v508, *&v508[1], *&v509, *&v510, *&v511, *&v512, *&v513, *&v514, *&v515, *(&v515 + 1), *&v516, *&v517, *&v518, *&v519, *&v520, *&v521, *&v522, *&v523, *&v524, *&v525, *&v526, *&v527, *&v528, *&v529, *&v530);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_201(v332, v333, v334, v335, v336, v337, v338, v339, v404, v430, v457, v483, *__dst, *&__dst[8], *&v489, *&v490, *&v491, *&v492, *&v493, *&v494, *&v495, *&v496, *&v497, *&v498, *&v499, *&v500, *&v501, *&v502, *&v503, *&v504, *v505, *&v505[1], *&v506, *&v507, *v508, *&v508[1], *&v509, *&v510, *&v511, *&v512, *&v513, *&v514, *&v515, *(&v515 + 1), *&v516, *&v517, *&v518, *&v519, *&v520, *&v521, *&v522);
      v340 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_6_148(v340, v341, v342, v343, v344, v345, v346, v347, v405, v431, v458, v484, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515);
      v348 = sub_1E3C3DE00();
      LOBYTE(v506) = v509;
      v356 = OUTLINED_FUNCTION_0_223(v348, v349, v350, v351, v352, v353, v354, v355, v406, v432, v459, v485, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v508[0], v508[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526);
      sub_1E3C2FCB8(v356, v357, v358, v359, v360, v361, v323, v362);
      OUTLINED_FUNCTION_23_71(v363, v364, v365, v366, v367, v368, v369, v370, v407, v433, v460, v486, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v379 = OUTLINED_FUNCTION_7_25(v371, v372, v373, v374, v375, v376, v377, v378, v408, v434, v461, v487, __dst[0]);
      v380(v379, 116);
      OUTLINED_FUNCTION_9_2();
      (*(v381 + 1776))(2);
    }

    else
    {
      v544.origin.x = OUTLINED_FUNCTION_2_0();
      v253 = CGRectGetHeight(v544) - a2 + -120.0;
      v545.origin.x = OUTLINED_FUNCTION_2_0();
      *&__dst[8] = v253 / CGRectGetHeight(v545);
      LOBYTE(v489) = 0;
      __asm { FMOV            V0.2D, #0.5 }

      OUTLINED_FUNCTION_25_73();
      v260 = v259;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_169(v261, v262, v263, v264, v265, v266, v267, v268, v383, v410, v436, *&v463, 0.5, *&__dst[8], *&v489, *&v490, *&v491, *&v492, *&v493, *&v494, *&v495, *&v496, *&v497, *&v498, *&v499, *&v500, *&v501, *&v502, *&v503, *&v504, *v505, *&v505[1], *&v506, *&v507, *v508, *&v508[1], *&v509, *&v510, *&v511, *&v512, *&v513, *&v514, *&v515, *(&v515 + 1), *&v516, *&v517, *&v518, *&v519, *&v520, *&v521, *&v522, *&v523, *&v524, *&v525, *&v526, *&v527, *&v528, *&v529, *&v530);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_201(v269, v270, v271, v272, v273, v274, v275, v276, v399, v425, v452, v478, *__dst, *&__dst[8], *&v489, *&v490, *&v491, *&v492, *&v493, *&v494, *&v495, *&v496, *&v497, *&v498, *&v499, *&v500, *&v501, *&v502, *&v503, *&v504, *v505, *&v505[1], *&v506, *&v507, *v508, *&v508[1], *&v509, *&v510, *&v511, *&v512, *&v513, *&v514, *&v515, *(&v515 + 1), *&v516, *&v517, *&v518, *&v519, *&v520, *&v521, *&v522);
      v277 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_6_148(v277, v278, v279, v280, v281, v282, v283, v284, v400, v426, v453, v479, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515);
      v285 = sub_1E3C3DE00();
      LOBYTE(v506) = v509;
      v293 = OUTLINED_FUNCTION_0_223(v285, v286, v287, v288, v289, v290, v291, v292, v401, v427, v454, v480, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v508[0], v508[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526);
      sub_1E3C2FCB8(v293, v294, v295, v296, v297, v298, v260, v299);
      OUTLINED_FUNCTION_23_71(v300, v301, v302, v303, v304, v305, v306, v307, v402, v428, v455, v481, *__dst, *&__dst[8], v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505[0], v505[1], v506, v507, v508[0], v508[1], v509, v510, v511, v512, v513, v514, v515, *(&v515 + 1), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v316 = OUTLINED_FUNCTION_7_25(v308, v309, v310, v311, v312, v313, v314, v315, v403, v429, v456, v482, __dst[0]);
      v317(v316, 116);
      OUTLINED_FUNCTION_9_2();
      (*(v318 + 1776))(1);
    }
  }
}

double sub_1E3D38708(void *a1)
{
  if (sub_1E3CCE24C(*(v1 + 98)))
  {
    if (TVAppFeature.isEnabled.getter(10, v3, v4))
    {
      OUTLINED_FUNCTION_5_44(v1 + 112, v32);
      v6 = *(v1 + 112);
    }

    else
    {
      OUTLINED_FUNCTION_5_44(v1 + 104, v32);
      v6 = *(v1 + 104);
    }

    v7 = sub_1E3887098(2, v6);
    swift_endAccess();
    if (v7)
    {

      sub_1E3D37B1C(v10, a1);
    }

    if (TVAppFeature.isEnabled.getter(10, v8, v9))
    {
      OUTLINED_FUNCTION_5_44(v1 + 112, v32);
      v11 = *(v1 + 112);
    }

    else
    {
      OUTLINED_FUNCTION_5_44(v1 + 104, v32);
      v11 = *(v1 + 104);
    }

    v12 = sub_1E3887098(3, v11);
    swift_endAccess();
    if (v12)
    {
      if (TVAppFeature.isEnabled.getter(10, v13, v14))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v16 = OUTLINED_FUNCTION_22_9(v15);
        *(v16 + 16) = xmmword_1E42A73A0;
        *(v16 + 32) = [a1 colorWithAlphaComponent_];
        v17 = [a1 colorWithAlphaComponent_];
        *(v16 + 40) = v17;
        *(v16 + 48) = OUTLINED_FUNCTION_41_48(v17, sel_colorWithAlphaComponent_);
        (*(*v12 + 1800))(v16);
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v19 = OUTLINED_FUNCTION_22_9(v18);
        *(v19 + 16) = xmmword_1E42A73A0;
        *(v19 + 32) = [a1 colorWithAlphaComponent_];
        v20 = [a1 colorWithAlphaComponent_];
        *(v19 + 40) = v20;
        *(v19 + 48) = OUTLINED_FUNCTION_41_48(v20, sel_colorWithAlphaComponent_);
        v26[0] = v19;
        v21 = OUTLINED_FUNCTION_31_54(v18);
        *(v21 + 16) = xmmword_1E429DCC0;
        v22 = [a1 colorWithAlphaComponent_];
        *(v21 + 32) = v22;
        *(v21 + 40) = OUTLINED_FUNCTION_41_48(v22, sel_colorWithAlphaComponent_);
        v31 = v21;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B0, &unk_1E42A9630);
        sub_1E3C3DE00();
        v30[0] = v30[1];
        sub_1E3C3DE00();
        v29[0] = v29[1];
        sub_1E3C3DE00();
        v28[0] = v28[1];
        sub_1E3C3DE00();
        v27[0] = v27[1];
        sub_1E3C2FCB8(v30, v26, &v31, v29, v28, v27, v23, v32);
        v26[0] = v32[0];
        v26[1] = v32[1];
        v26[2] = v32[2];
        v26[3] = v32[3];
        v26[4] = v32[4];
        v26[5] = v32[5];
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_36();
        (*(v24 + 1600))(v26, 113, v25 & 1, v23);
      }
    }
  }

  return result;
}

unint64_t sub_1E3D38ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37AD8;
  if (!qword_1ECF37AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37AD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingGradientLayout.GradientSize(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1E3D38C30()
{
  v1 = v0;
  type metadata accessor for ViewGradientLayout(0);
  v2 = sub_1E40C3088();
  (*(*v2 + 1728))(0x3FE0000000000000, 0, 0);
  (*(*v2 + 1776))(1);
  v3 = *(*v2 + 312);

  v3(0x405E000000000000, 0);

  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  sub_1E3D37B1C(v2, v5);

  v6 = sub_1E40C3088();
  __dst[16] = 0;
  LOBYTE(v157) = 0;
  type metadata accessor for CGPoint(0);
  v8 = v7;
  sub_1E3C3DE00();
  v194 = v196;
  v195 = v197;
  sub_1E3C3DE00();
  v190 = v192;
  v191 = v193;
  sub_1E3C3DE00();
  v185 = v188;
  v186 = v189;
  v9 = sub_1E3C3DE00();
  LOBYTE(v178) = v182;
  OUTLINED_FUNCTION_19_95(v9, v10, v11, v12, v13, v14, v15, v16, v137, v140, v143, v145, v147, v150, v152, v154, 0, 0x3FF0000000000000, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, 0x3FE0000000000000, 0x3FF0000000000000, *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v180, v181, v178, v179, v180, v181, v182, v183, v187);
  memcpy(__dst, __src, 0x89uLL);
  v17 = OUTLINED_FUNCTION_18();
  v18 = *(*v6 + 1600);
  v18(__dst, 115, v17 & 1, v8);
  __dst[0] = 1;
  LOBYTE(v156[0]) = 2;
  sub_1E3C3DE00();
  LOBYTE(v194) = v196;
  sub_1E3C3DE00();
  LOBYTE(v190) = v192;
  sub_1E3C3DE00();
  LOBYTE(v184) = v187;
  v19 = sub_1E3C3DE00();
  LOBYTE(v176) = v180;
  OUTLINED_FUNCTION_19_95(v19, v20, v21, v22, v23, v24, v25, v26, v138, v141, v144, v146, v148, v151, v153, v155, v156[0], v156[1], v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v176, v177, v178, v179, v180, v181, v182, v183, v184);
  *__dst = __src[0];
  *&__dst[4] = __src[1];
  v27 = OUTLINED_FUNCTION_18();
  v18(__dst, 117, v27 & 1, &type metadata for ViewGradientLayout.GradientType);
  v28 = [v4 blackColor];
  sub_1E3D37B1C(v6, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748, &qword_1E42A75D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = 2;
  *(inited + 40) = v2;
  *(inited + 48) = 3;
  *(inited + 56) = v6;
  type metadata accessor for VUIPosition(0);
  OUTLINED_FUNCTION_7_163(&qword_1EE23B3C0);

  v30 = sub_1E4205CB4();
  OUTLINED_FUNCTION_3_0(v1 + 104, __dst);
  *(v1 + 104) = v30;

  if ((TVAppFeature.isEnabled.getter(10, v31, v32) & 1) == 0)
  {

    return;
  }

  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1E4299720;
  *(v33 + 32) = 2;
  *(v33 + 40) = v2;
  *(v33 + 48) = 3;
  *(v33 + 56) = v6;

  v34 = sub_1E4205CB4();
  OUTLINED_FUNCTION_3_0(v1 + 112, v156);
  *(v1 + 112) = v34;

  if (sub_1E3CCE274(*(v1 + 98), 9u))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748, &qword_1E42A75D8);
    v35 = swift_initStackObject();
    v36 = OUTLINED_FUNCTION_35_50(v35, xmmword_1E4297BE0);
    v36[2].n128_u64[0] = v37;
    v35[2].n128_u64[1] = sub_1E40C3088();
LABEL_8:
    v133 = sub_1E4205CB4();
    goto LABEL_9;
  }

  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v38 = OUTLINED_FUNCTION_31_54(v149);
  *(v38 + 16) = xmmword_1E429DCC0;
  v39 = [objc_opt_self() blackColor];
  v40 = [v39 colorWithAlphaComponent_];

  *(v38 + 32) = v40;
  v41 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v44 = [v42 v43];

  *(v38 + 40) = v44;
  v142 = sub_1E40C2E40();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1E42A6DD0;
  v46 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v49 = [v47 v48];

  *(v45 + 32) = v49;
  v50 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v53 = [v51 v52];

  *(v45 + 40) = v53;
  v54 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v57 = [v55 v56];

  *(v45 + 48) = v57;
  v58 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v61 = [v59 v60];

  *(v45 + 56) = v61;
  v62 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v65 = [v63 v64];

  *(v45 + 64) = v65;
  v66 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v69 = [v67 v68];

  *(v45 + 72) = v69;
  v70 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v73 = [v71 v72];

  *(v45 + 80) = v73;
  v74 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v77 = [v75 v76];

  *(v45 + 88) = v77;
  v139 = sub_1E40C2E40();
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1E42CCC40;
  v79 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v82 = [v80 v81];

  *(v78 + 32) = v82;
  v83 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v86 = [v84 v85];

  *(v78 + 40) = v86;
  v87 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v90 = [v88 v89];

  *(v78 + 48) = v90;
  v91 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v94 = [v92 v93];

  *(v78 + 56) = v94;
  v95 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v98 = [v96 v97];

  *(v78 + 64) = v98;
  v99 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v102 = [v100 v101];

  *(v78 + 72) = v102;
  v103 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v106 = [v104 v105];

  *(v78 + 80) = v106;
  v107 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v110 = [v108 v109];

  *(v78 + 88) = v110;
  v111 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v114 = [v112 v113];

  *(v78 + 96) = v114;
  v115 = sub_1E40C2E40();
  if ((TVAppFeature.isEnabled.getter(10, v116, v117) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748, &qword_1E42A75D8);
    v134 = swift_initStackObject();
    v135 = OUTLINED_FUNCTION_35_50(v134, xmmword_1E4297BD0);
    v135[2].n128_u64[0] = v136;
    v135[2].n128_u64[1] = v142;
    v135[3].n128_u64[0] = 3;
    v135[3].n128_u64[1] = v139;
    v135[4].n128_u64[0] = 2;
    v135[4].n128_u64[1] = v115;
    goto LABEL_8;
  }

  v118 = OUTLINED_FUNCTION_22_9(v149);
  *(v118 + 16) = xmmword_1E42A73A0;
  v119 = OUTLINED_FUNCTION_18_89();
  v120 = [v119 &selRef:0.65 componentsSeparatedByString:?];

  *(v118 + 32) = v120;
  v121 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v124 = [v122 v123];

  *(v118 + 40) = v124;
  v125 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v128 = [v126 v127];

  *(v118 + 48) = v128;
  v129 = sub_1E40C2E40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748, &qword_1E42A75D8);
  v130 = swift_initStackObject();
  v131 = OUTLINED_FUNCTION_35_50(v130, xmmword_1E4297BE0);
  v131[2].n128_u64[0] = v132;
  v131[2].n128_u64[1] = v129;
  v133 = sub_1E4205CB4();

LABEL_9:

  OUTLINED_FUNCTION_3_0(v1 + 120, __src);
  *(v1 + 120) = v133;
}

void sub_1E3D39768(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewGradientLayout(0);
  v2 = sub_1E40C3088();
  v3 = [objc_opt_self() effectWithStyle_];
  OUTLINED_FUNCTION_36();
  (*(v4 + 1896))();
  OUTLINED_FUNCTION_36();
  (*(v5 + 1776))(1);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1728))(0x3FE0000000000000, 0x3FF0000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1752))(0x3FE0000000000000, 0, 0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v9 = OUTLINED_FUNCTION_41_3(v8);
  *(v9 + 16) = xmmword_1E42A1E20;
  v10 = objc_opt_self();
  v11 = [v10 blackColor];
  v12 = [v11 colorWithAlphaComponent_];

  *(v9 + 32) = v12;
  v13 = [v10 blackColor];
  v14 = [v13 colorWithAlphaComponent_];

  *(v9 + 40) = v14;
  v15 = [v10 blackColor];
  v16 = [v15 colorWithAlphaComponent_];

  *(v9 + 48) = v16;
  v17 = [v10 blackColor];
  v18 = [v17 colorWithAlphaComponent_];

  *(v9 + 56) = v18;
  (*(*v2 + 1800))(v9);
  OUTLINED_FUNCTION_36();
  v20 = *(v19 + 512);

  v20(3);

  *a1 = v2;
}

void sub_1E3D39A6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() blackColor];
  sub_1E3D37B1C(v1, v2);
}

void sub_1E3D39AD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3887C44(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AE0, &qword_1E42CCD50);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1E3887C44(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    type metadata accessor for VUIPosition(0);
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {

    sub_1E38CF6BC(v10, a2, a1, v14);
  }
}

uint64_t OUTLINED_FUNCTION_32_63()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1E3D39C24(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_isHidden;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3D39C58(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_isHidden;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3D39CE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void (*sub_1E3D39D58(uint64_t a1))(void)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  v3 = sub_1E4200684();
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))(v3);
  if (result)
  {
    v6 = result;
    v7 = v5;
    result();
    return sub_1E34AF594(v6, v7);
  }

  return result;
}

void (*(*sub_1E3D39E1C(uint64_t *a1))(uint64_t *a1))(void)
{
  a1[1] = v1;
  *a1 = sub_1E3D39CE4();
  return sub_1E3D39E64;
}

uint64_t sub_1E3D39E88()
{
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo__selectedIndex, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF0, &qword_1E42CCDA0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3D39EF4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF8, &qword_1E42CCDA8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11[-v8 - 8], a1, v3, v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo__selectedIndex, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF0, &qword_1E42CCDA0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E3D3A018(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF8, &qword_1E42CCDA8);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo__selectedIndex, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF0, &qword_1E42CCDA0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3D3A134;
}

void sub_1E3D3A134(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E3D39EF4(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3D39EF4(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

double sub_1E3D3A274(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

uint64_t sub_1E3D3A2AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_items;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

void sub_1E3D3A378(void *a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3D3A3C4(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_appContext;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3(v1 + v4, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t sub_1E3D3A440(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_configuresDebugUIGesture;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3D3A474(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_configuresDebugUIGesture;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3D3A520(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1E3D3A5A8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1E3D3A658()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF0, &qword_1E42CCDA0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_isHidden] = 0;
  v8 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo__selectedIndex;
  v17 = 0;
  sub_1E4200634();
  (*(v4 + 32))(&v1[v8], v7, v2);
  v9 = &v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_selectedIndexDidChange];
  *v9 = 0;
  v9[1] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_items] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_appEnvironment;
  type metadata accessor for AppEnvironment(0);
  *&v1[v10] = sub_1E3CD9D54();
  v11 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_interactionStates;
  type metadata accessor for ViewInteractionStates(0);
  *&v1[v11] = sub_1E3B1E0A8(0);
  v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_configuresDebugUIGesture] = 0;
  v12 = &v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_debugUIGestureHandler];
  v13 = type metadata accessor for TabBarItemsInfo(0);
  *v12 = 0;
  v12[1] = 0;
  v16.receiver = v1;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t type metadata accessor for TabBarItemsInfo(uint64_t a1)
{
  result = qword_1ECF609F0;
  if (!qword_1ECF609F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E3D3A868()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabBarItemsInfo(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3D3A980@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TabBarItemsInfo(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

void sub_1E3D3A9C8(uint64_t a1)
{
  sub_1E3D3AA98();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3D3AA98()
{
  if (!qword_1ECF37B00)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF37B00);
    }
  }
}

void sub_1E3D3AAE8(uint64_t a1)
{
  v2 = sub_1E3A7B638(a1);
  if (v2)
  {
    v4 = v2;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      [v3 setDelegate_];
    }
  }
}

void sub_1E3D3AB5C(void *a1)
{
  v3 = a1;
  sub_1E3A7B674(a1);
  sub_1E3D3AAE8(v2);
}

uint64_t (*sub_1E3D3ABAC(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1E3A7B6BC();
  return sub_1E3D3AC0C;
}

void sub_1E3D3AC0C(void *a1, char a2)
{
  v3 = *a1;
  v4 = (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1E3D3AAE8(v4);
  }

  free(v3);
}

id sub_1E3D3AC68()
{
  v1 = OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView);
  }

  else
  {
    type metadata accessor for UnifiedMessagingBubbleTipView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3D3ACE0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_vui_loadView);
  v1 = sub_1E3D3AC68();
  [v0 setVuiView_];

  sub_1E3D3AD44(v2);
}

void sub_1E3D3AD44(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3A7B638(a1);
  if (v3)
  {
    v17 = v3;
    v4 = [v3 parentViewController];
    if (!v4 || (v5 = v4, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v6 = v1, v7 = sub_1E4206F64(), v5, v6, (v7 & 1) == 0))
    {
      [v2 vui:v17 addChildViewController:?];
      v8 = [v2 vuiView];
      if (v8)
      {
        v9 = v8;
        v10 = [v17 vuiView];
        if (v10)
        {
          v11 = v10;
          [v9 addSubview_];

          [v17 vui:v2 didMoveToParentViewController:?];
          v12 = sub_1E3D3AC68();
          v13 = [v17 view];

          v14 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView;
          OUTLINED_FUNCTION_14_0(&v12[OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView], v15);
          v16 = *&v12[v14];
          *&v12[v14] = v13;

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }
}

void sub_1E3D3AF28(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v15, sel_viewWillAppear_, a1 & 1);
  v5 = sub_1E3A7B568(v4);
  if (v5)
  {
    v6 = (*(*v5 + 928))();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_1E3B58264();
  if (v8)
  {
    if (v6 == *v9 && v8 == v9[1])
    {
    }

    else
    {
      v11 = sub_1E42079A4();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v12 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
    v13 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
    v14 = swift_beginAccess();
    if (*(v12 + v13))
    {
      sub_1E3D3AD44(v14);
    }
  }
}

id sub_1E3D3B0A8(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 928))();
  v6 = v5;
  v7 = sub_1E3B58264();
  if (!v6)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  if (v4 == *v7 && v6 == v7[1])
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }
  }

  if (a2)
  {
    v11 = a2;
    sub_1E3D3B348(v11);
    v12 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
    v13 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
    swift_beginAccess();
    v14 = *(v12 + v13);
    v15 = v14;
    sub_1E3A7B674(v14);
    sub_1E3D3AAE8(v16);

    sub_1E3D3AD44(v17);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B08, &qword_1E42CCE50);
  sub_1E4148C68(sub_1E3D3B450, v18, &v32);
  v19 = v32;
  v20 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  v21 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = *(*a1 + 904);
  v24 = v22;
  v23(v22);
  v10 = v19;

  sub_1E3A7B5A0(v25);

  v26 = sub_1E3D3AC68();
  v27 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_viewModel;
  swift_beginAccess();
  *&v26[v27] = a1;

  v28 = (*(*a1 + 896))();
  v29 = v28;
  sub_1E3A7B674(v28);
  sub_1E3D3AAE8(v30);

  return v10;
}

void sub_1E3D3B348(uint64_t a1)
{
  v1 = sub_1E3A7B638(a1);
  if (v1)
  {
    v9 = v1;
    v2 = [v1 parentViewController];
    if (v2)
    {

      [v9 vui:0 willMoveToParentViewController:?];
      v3 = [v9 vuiView];
      if (v3)
      {
        v4 = v3;
        [v3 vui_removeFromSuperView];

        [v9 vui_removeFromParentViewController];
        v5 = sub_1E3D3AC68();

        v6 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView;
        OUTLINED_FUNCTION_14_0(&v5[OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView], v7);
        v8 = *&v5[v6];
        *&v5[v6] = 0;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id sub_1E3D3B450@<X0>(void *a2@<X8>)
{
  type metadata accessor for UnifiedMessagingBubbleTipViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

id sub_1E3D3B48C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView] = 0;
  if (a2)
  {
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1E3D3B594(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E3D3B654(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for UnifiedMessagingBubbleTipViewModel();
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (!v3)
  {
    return (v4 != 0);
  }

  v5 = *(*v3 + 896);

  v7 = v5(v6);
  v8 = v7;
  v9 = sub_1E3A7B638(v8);
  v10 = v9;
  if (!v7)
  {
    v11 = v9;
    if (!v9)
    {
      v15 = 0;
LABEL_9:
      v16 = [v2 vuiView];
      v11 = v16;
      if (v15)
      {
        if (v16)
        {
          sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
          v17 = sub_1E4206F64();

          if (v17)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v11 = v15;
      }

      else if (!v16)
      {
        goto LABEL_18;
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  v11 = v8;
  if (!v9)
  {
    goto LABEL_16;
  }

  if (v7 != v10)
  {
LABEL_17:
    sub_1E3D3B348(v12);

    sub_1E3A7B5A0(v18);
    v19 = sub_1E3D3AC68();
    v20 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_viewModel;
    OUTLINED_FUNCTION_14_0(&v19[OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_viewModel], v21);
    *&v19[v20] = v4;

    v8 = v8;
    sub_1E3A7B674(v7);
    sub_1E3D3AAE8(v22);
    sub_1E3D3AD44(v23);
LABEL_18:

    return (v4 != 0);
  }

  result = [v8 vuiView];
  if (result)
  {
    v14 = result;
    v15 = [result superview];

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3D3B884()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D3B8D0(char a1)
{
  if (!a1)
  {
    return 0x6669636570736E75;
  }

  if (a1 == 1)
  {
    return 0x72477261656E696CLL;
  }

  return 0x72476C6169646172;
}

uint64_t sub_1E3D3B954(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x746F426F54706F74;
    }

    else
    {
      v4 = 0x69526F547466656CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEB000000006D6F74;
    }

    else
    {
      v5 = 0xEB00000000746867;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x746F426F54706F74;
    }

    else
    {
      v2 = 0x69526F547466656CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEB000000006D6F74;
    }

    else
    {
      v6 = 0xEB00000000746867;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D3BA6C(char a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x72477261656E696CLL;
    }

    else
    {
      v4 = 0x72476C6169646172;
    }

    v5 = 0xEE00746E65696461;
  }

  else
  {
    v4 = 0x6669636570736E75;
    v5 = 0xEB00000000646569;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x72477261656E696CLL;
    }

    else
    {
      v3 = 0x72476C6169646172;
    }

    v2 = 0xEE00746E65696461;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E42079A4();
  }

  return v7 & 1;
}

uint64_t sub_1E3D3BB94(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D3BC40(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D3BCDC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D3BD84(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3D3BE44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D3B884();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D3BE74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D3B8D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E3D3BEA8()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D3BEF4(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x746F426F54706F74;
  }

  return 0x69526F547466656CLL;
}

unint64_t sub_1E3D3BF78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D3BEA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D3BFA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D3BEF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D3BFDC(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6 & 1;
  return result;
}

uint64_t sub_1E3D3C050@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(*v1 + 120);
  v8 = *(v1 + 40);
  v9 = *(v1 + 16);

  v10 = v7(v9, v3, v4, v8, v5, v6);
  result = type metadata accessor for GradientColoradito();
  a1[3] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_1E3D3C154()
{

  return v0;
}

uint64_t sub_1E3D3C17C()
{
  sub_1E3D3C154();

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

unint64_t sub_1E3D3C1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37B18;
  if (!qword_1ECF37B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B18);
  }

  return result;
}

unint64_t sub_1E3D3C20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37B20;
  if (!qword_1ECF37B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B20);
  }

  return result;
}

_BYTE *sub_1E3D3C274(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3D3C354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B28, &qword_1E42CD068);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B30, &unk_1E42CD070);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v23 = v2[2];
  v20 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  if (v22 != 1 || (v20 = *v2, v21 = *(v2 + 16), v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0), MEMORY[0x1E690E3F0](&v22, v13), v14 = 1.0, v22 == 1))
  {
    v14 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B38, qword_1E42CD080);
  OUTLINED_FUNCTION_2();
  (*(v15 + 16))(v8, a1);
  *&v8[*(v5 + 36)] = v14;
  v22 = *v2;
  v16 = swift_allocObject();
  v17 = v2[1];
  *(v16 + 1) = *v2;
  *(v16 + 2) = v17;
  *(v16 + 3) = v2[2];
  sub_1E379E528(v8, v12, &qword_1ECF37B28, &qword_1E42CD068);
  v18 = &v12[*(v9 + 36)];
  *v18 = sub_1E3D3CA00;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  sub_1E379E528(v12, a2, &qword_1ECF37B30, &unk_1E42CD070);
  sub_1E39F6940(&v22, &v20);

  return sub_1E3D3CA08(&v23, &v20);
}

uint64_t sub_1E3D3C5A8(uint64_t *a1)
{
  v36 = sub_1E4203FC4();
  OUTLINED_FUNCTION_1_2();
  v39 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_1_2();
  v37 = v8;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E4203FB4();
  OUTLINED_FUNCTION_1_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = (v17 - v16);
  v19 = sub_1E4204014();
  v35 = v19;
  OUTLINED_FUNCTION_1_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v34 - v26;
  sub_1E4204004();
  *v18 = a1[3];
  (*(v14 + 104))(v18, *MEMORY[0x1E69E7F48], v12);
  MEMORY[0x1E690E9C0](v24, v18);
  (*(v14 + 8))(v18, v12);
  v34 = *(v21 + 8);
  v34(v24, v19);
  sub_1E32ADE38();
  v28 = sub_1E4206A04();
  v43 = *a1;
  v42 = *(a1 + 2);
  v29 = swift_allocObject();
  v30 = *(a1 + 1);
  v29[1] = *a1;
  v29[2] = v30;
  v29[3] = *(a1 + 2);
  aBlock[4] = sub_1E3D3CCA8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_100;
  v31 = _Block_copy(aBlock);
  sub_1E39F6940(&v43, v40);

  sub_1E3D3CA08(&v42, v40);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
  v32 = v36;
  sub_1E42072E4();
  MEMORY[0x1E69112E0](v27, v11, v6, v31);
  _Block_release(v31);

  (*(v39 + 8))(v6, v32);
  (*(v37 + 8))(v11, v38);
  return (v34)(v27, v35);
}

uint64_t sub_1E3D3CA08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D3CA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_1E42038E4();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 1;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  return result;
}

unint64_t sub_1E3D3CB1C()
{
  result = qword_1ECF37B40;
  if (!qword_1ECF37B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37B30, &unk_1E42CD070);
    sub_1E3D3CBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B40);
  }

  return result;
}

unint64_t sub_1E3D3CBA8()
{
  result = qword_1ECF37B48;
  if (!qword_1ECF37B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37B28, &qword_1E42CD068);
    sub_1E32752B0(&qword_1ECF37B50, &qword_1ECF37B38, qword_1E42CD080, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B48);
  }

  return result;
}

uint64_t objectdestroyTm_37()
{

  return swift_deallocObject();
}

double sub_1E3D3CCA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  return result;
}

uint64_t sub_1E3D3CD00(char a1, char a2)
{
  if (a2)
  {
    return 3;
  }

  v4 = sub_1E392AF14(a1);

  return sub_1E392AFA8(v4);
}

BOOL sub_1E3D3CD44(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return sub_1E34AF508(a1 & 1, a2 & 1);
}

double sub_1E3D3CDA8(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_15_0(v1 + 104, v3);
  if (*(v1 + 104) != a1)
  {
    sub_1E3D4102C(v4, v5);
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

void sub_1E3D3CE30(char a1, uint64_t a2)
{
  sub_1E392B18C(a1, a2);
  if (a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    if (a1 == 3)
    {
      goto LABEL_6;
    }

    v3 = 1;
  }

  sub_1E38861D0(v3);
LABEL_6:

  sub_1E3D3EE4C();
}

double sub_1E3D3CE9C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(v1 + 120, v9);
  v6 = *(v1 + 120);
  if (v6 == 2)
  {
    if (v3 == 2)
    {
      return result;
    }

    LOBYTE(v6) = 2;
  }

  else if (v6 == 3)
  {
    if (v3 == 3)
    {
      return result;
    }

    LOBYTE(v6) = 3;
  }

  else if ((v3 & 0xFE) != 2)
  {
    if (sub_1E34AF508(v6 & 1, v3 & 1))
    {
      return result;
    }

    LOBYTE(v6) = *(v1 + 120);
  }

  sub_1E3D3CE30(v6, v4);
  sub_1E3D4102C(v7, v8);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

uint64_t sub_1E3D3CF90()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ImageLayout();
    sub_1E3BD61D8();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 128) = v13;
  }

  return v1;
}

uint64_t sub_1E3D3D024()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 208))(0x4024000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v1 + 312))(0x4024000000000000, 0);
  OUTLINED_FUNCTION_36();
  return (*(v2 + 360))(0x4036000000000000, 0);
}

uint64_t sub_1E3D3D0E4()
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3D40514();
}

id sub_1E3D3D138(char a1)
{
  if (a1 == 2)
  {
    v1 = 7;
  }

  else
  {
    v1 = 6;
  }

  v2 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
  v3 = [v2 textLayout];
  v4 = sub_1E3E5FD88();
  [v3 setColor_];

  v5 = [v2 textLayout];
  [v5 setColor_];

  v6 = [v2 textLayout];
  [v6 setTextStyle_];

  [v2 setMaxWidth_];
  return v2;
}

id sub_1E3D3D23C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 152);
  if (v3)
  {
    v4 = *(v2 + 152);
  }

  else
  {
    OUTLINED_FUNCTION_15_0(v2 + 120, a2);
    v5 = sub_1E3D3D138(*(v2 + 120));
    v6 = *(v2 + 152);
    *(v2 + 152) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1E3D3D2A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = *(v2 + 160);
  }

  else
  {
    OUTLINED_FUNCTION_15_0(v2 + 120, a2);
    v5 = sub_1E3D3D138(*(v2 + 120));
    v6 = *(v2 + 160);
    *(v2 + 160) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_1E3D3D314()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    sub_1E3BBD964(10, v3 & 1, v4, v5 & 1);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v6, v7, v8, v9, v10, v11, v12, v13, v15);

    v1 = v16;
    *(v2 + 168) = v16;
  }

  return v1;
}

double sub_1E3D3D3CC(void **a1)
{
  v1 = (**a1 + 2048);
  v2 = *v1;
  v3 = (*v1)();
  v4 = *sub_1E3E5FDEC();
  v5 = *(*v3 + 680);
  v6 = v4;
  v5(v4);

  (v2)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1696))(19);

  (v2)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1792))(10);

  (v2)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1984))(5);

  (v2)(v13);
  OUTLINED_FUNCTION_2_1();
  v14 = OUTLINED_FUNCTION_10_7();
  v15(v14);

  (v2)(v16);
  OUTLINED_FUNCTION_2_1();
  v17 = OUTLINED_FUNCTION_10_7();
  v18(v17);

  (v2)(v19);
  OUTLINED_FUNCTION_2_1();
  v20 = OUTLINED_FUNCTION_10_7();
  v21(v20);

  (v2)(v22);
  sub_1E3952C78();
  v63[0] = v23;
  v63[1] = v24;
  v63[2] = v25;
  v63[3] = v26;
  v64 = 0;
  OUTLINED_FUNCTION_8();
  (*(v27 + 160))(v63);

  (v2)(v28);
  OUTLINED_FUNCTION_2_1();
  (*(v29 + 1720))(12);

  OUTLINED_FUNCTION_9_2();
  v31 = *(v30 + 2096);
  v31();
  v32 = sub_1E3FA614C();
  OUTLINED_FUNCTION_8();
  (*(v33 + 208))();

  v35 = (v31)(v34);
  (*(*v35 + 312))(*v32, 0);

  (v31)(v36);
  OUTLINED_FUNCTION_2_1();
  (*(v37 + 440))(0x3FF0000000000000, 0);

  v39 = (v31)(v38);
  v40.n128_u64[0] = 0.5;
  v61[0] = j__OUTLINED_FUNCTION_7_78(v40);
  v61[1] = v41;
  v61[2] = v42;
  v61[3] = v43;
  v62 = 0;
  (*(*v39 + 1856))(v61);

  v45 = (v31)(v44);
  v46 = *sub_1E3E60CFC();
  v47 = *(*v45 + 1832);
  v48 = v46;
  v47(v46);

  v50 = (v31)(v49);
  sub_1E39537A8();
  v59[0] = v51;
  v59[1] = v52;
  v59[2] = v53;
  v59[3] = v54;
  v60 = 0;
  (*(*v50 + 560))(v59);

  (v31)(v55);
  v56 = [objc_opt_self() blackColor];
  OUTLINED_FUNCTION_36();
  (*(v57 + 752))();

  return result;
}

uint64_t sub_1E3D3D9F0()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 192) = v13;
  }

  return v1;
}

uint64_t sub_1E3D3DA84()
{
  v11[0] = 5;
  v16 = 10;
  sub_1E3C2FC98();
  v15[0] = v15[1];
  sub_1E3C3DE00();
  v14[0] = v14[1];
  sub_1E3C3DE00();
  v13[0] = v13[1];
  sub_1E3C3DE00();
  v12[0] = v12[1];
  sub_1E3C2FCB8(v11, v15, v14, v13, &v16, v12, &qword_1F5D54AF8, v17);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_14();
  (*(v0 + 1600))(v11, 54, v1 & 1, &qword_1F5D54AF8);
  OUTLINED_FUNCTION_36();
  (*(v2 + 1984))(5);
  OUTLINED_FUNCTION_36();
  v3 = OUTLINED_FUNCTION_8_5();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_36_0();
  v6(v5);
  OUTLINED_FUNCTION_36();
  v7 = OUTLINED_FUNCTION_36_0();
  v8(v7);
  OUTLINED_FUNCTION_36();
  return (*(v9 + 2008))(1);
}

uint64_t sub_1E3D3DC98()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    sub_1E41E1A64(&v5, sub_1E3D40638, v3, &v6);

    v1 = v6;
    *(v2 + 200) = v6;
  }

  return v1;
}

uint64_t sub_1E3D3DD40()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 208) = v13;
  }

  return v1;
}

uint64_t sub_1E3D3DDD4(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  (*(v2 + 1792))(6);
  v3 = *sub_1E3E5FD88();
  v4 = *(*v1 + 680);
  v5 = v3;
  v4(v3);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1840))(4);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1936))(2);
  OUTLINED_FUNCTION_36();
  v8 = OUTLINED_FUNCTION_8_5();
  v9(v8);
  OUTLINED_FUNCTION_36();
  (*(v10 + 1984))(1);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v11 + 1768))();
  sub_1E3952C88();
  OUTLINED_FUNCTION_18_8();
  sub_1E3952C88();
  OUTLINED_FUNCTION_50_38(v12, v13, v14, v15);
  sub_1E3952C88();
  v87 = v16;
  v88 = v17;
  v89 = v18;
  v90 = v19;
  v91 = 0;
  sub_1E3952C88();
  v82 = v20;
  v83 = v21;
  v84 = v22;
  v85 = v23;
  v86 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_4_10(v24, v25, v26, v27, v28, v29, v30, v31, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17], v59[18], v59[19], v59[20], v59[21], v59[22], v59[23], v59[24], v59[25], v59[26], v59[27], v59[28], v59[29], *&v60, *&v61, *&v62, *&v63, *&v64, *&v65, *&v66, *(&v66 + 1), *&v67, *&v68, *&v69, *&v70, *&v71, *&v72, *&v73, *&v74, *&v75, *&v76, *&v77);
  v32 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v32, v33, v34, v35, v36, v37, v38, v39, *&v59[0], *&v59[1], *&v59[2], *&v59[3], *&v59[4], *&v59[5], *&v59[6], *&v59[7], *&v59[8], *&v59[9], *&v59[10], *&v59[11], *&v59[12], *&v59[13], *&v59[14], *&v59[15], *&v59[16], *&v59[17], *&v59[18], *&v59[19], *&v59[20], *&v59[21], *&v59[22], *&v59[23], *&v59[24], *&v59[25], *&v59[26], *&v59[27], *&v59[28], *&v59[29], v60, v61, v62, v63, v64, v65, v66);
  OUTLINED_FUNCTION_29_70(v40, v41, v42, v43, v44, v45, v46, v47, *&v59[0], *&v59[1], *&v59[2], *&v59[3], *&v59[4], *&v59[5], *&v59[6], *&v59[7], *&v59[8], *&v59[9], *&v59[10], *&v59[11], *&v59[12], *&v59[13], *&v59[14], *&v59[15], *&v59[16], *&v59[17], *&v59[18], *&v59[19], *&v59[20], *&v59[21], *&v59[22], *&v59[23], *&v59[24], *&v59[25], *&v59[26], *&v59[27], *&v59[28], *&v59[29], v60, v61, v62, v63, v64, v65, v66, *(&v66 + 1), v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  memcpy(v59, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v56 = OUTLINED_FUNCTION_19_96(v48, v49, v50, v51, v52, v53, v54, v55, *&v59[0]);
  return v57(v56);
}

uint64_t sub_1E3D3E060()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 216) = v13;
  }

  return v1;
}

uint64_t sub_1E3D3E0F4()
{
  v0 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v1 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v2 + 2056))(3, 0);
  v9[0] = 1;
  sub_1E3C2FC98();
  v14[0] = v14[1];
  sub_1E3C3DE00();
  v13[0] = v13[1];
  sub_1E3C3DE00();
  v12[0] = v12[1];
  sub_1E3C3DE00();
  v11[0] = v11[1];
  sub_1E3C3DE00();
  v10[0] = v10[1];
  sub_1E3C2FCB8(v9, v14, v13, v12, v11, v10, &qword_1F5D549D8, v15);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_14();
  (*(v3 + 1600))(v9, 48, v4 & 1, &qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1792))(10);
  OUTLINED_FUNCTION_36();
  (*(v6 + 256))(0x4081300000000000, 0);
  OUTLINED_FUNCTION_36();
  return (*(v7 + 1984))(5);
}

uint64_t sub_1E3D3E33C()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E3FA8320();
  v1 = *(*v0 + 2056);

  v2 = OUTLINED_FUNCTION_8_5();
  v1(v2);
  OUTLINED_FUNCTION_36();
  v3 = OUTLINED_FUNCTION_10_7();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_36_0();
  v6(v5);
  OUTLINED_FUNCTION_36();
  v7 = OUTLINED_FUNCTION_36_0();
  v8(v7);

  return v0;
}

void sub_1E3D3E45C(uint64_t a1@<X8>)
{
  sub_1E3C2AF20();
  v3 = v10[3];
  v4 = v10[4];
  v5 = v10[5];
  v6 = v10[6];
  v7 = v11;
  OUTLINED_FUNCTION_5_0(v1 + 120, v10);
  OUTLINED_FUNCTION_52_39();
  if ((v8 | v7))
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7 & 1;
}

__n128 sub_1E3D3E4DC@<Q0>(uint64_t a1@<X8>)
{
  sub_1E3C2AF20();
  v3 = v11;
  v9 = v12;
  v4 = v13;
  v5 = v14;
  OUTLINED_FUNCTION_5_0(v1 + 120, v10);
  OUTLINED_FUNCTION_52_39();
  if ((v6 | v5))
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  result = v9;
  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5 & 1;
  return result;
}

id sub_1E3D3E564()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  sub_1E3755B54();
  v1 = sub_1E4206F24();
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setShadowColor_];
  [v0 setShadowOffset_];
  [v0 setShadowBlurRadius_];
  return v0;
}

uint64_t sub_1E3D3E634()
{
  v4[0] = 0x4055000000000000;
  LOBYTE(v4[1]) = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v21 = v23;
  v22 = v24;
  sub_1E3C3DE00();
  v17 = v19;
  v18 = v20;
  sub_1E3C3DE00();
  v13 = v15;
  v14 = v16;
  sub_1E3C3DE00();
  v9 = v11;
  v10 = v12;
  sub_1E3C3DE00();
  v5 = v7;
  v6 = v8;
  sub_1E3C2FCB8(v4, &v21, &v17, &v13, &v9, &v5, v0, __src);
  memcpy(v4, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  return (*(v1 + 1600))(v4, 8, v2 & 1, v0);
}

uint64_t sub_1E3D3E784()
{
  v0 = [objc_opt_self() blackColor];
  OUTLINED_FUNCTION_36();
  return (*(v1 + 752))();
}

uint64_t sub_1E3D3E82C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = *sub_1E3FC6B78();
  v1 = sub_1E392AF14(2);
  *(v0 + 120) = sub_1E392AFA8(v1);
  *(v0 + 128) = 0;
  type metadata accessor for ProductGradientLayout();
  *(v0 + 136) = sub_1E3886290(1);
  type metadata accessor for SportsCanonicalBannerViewLayout.ButtonsLayout();
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  *(v0 + 144) = sub_1E3D40514();
  type metadata accessor for ViewLayout();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = sub_1E3C2F968();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = sub_1E3D3E33C();
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  *(v0 + 232) = sub_1E392DC54(0);
  *(v0 + 240) = 0x4024000000000000;
  type metadata accessor for SportStatsLayout();
  *(v0 + 248) = sub_1E3DA3A40();
  *(v0 + 256) = sub_1E3D3E564();
  *(v0 + 264) = 0;
  type metadata accessor for ImageLayout();
  sub_1E3BD61D8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_46_44(v2, v3, v4, v5, v6, v7, v8, v9, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11]);

  *(v0 + 272) = __dst[0];
  sub_1E3BD61D8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_46_44(v10, v11, v12, v13, v14, v15, v16, v17, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11]);

  *(v0 + 280) = __dst[0];
  v18 = sub_1E3C2F9A0();

  v19 = sub_1E3FA5FC8();
  memcpy(__dst, v19, 0x59uLL);
  memcpy(v30, __dst, 0x59uLL);
  v20 = MEMORY[0x1E69E7DE0];
  v21 = OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC(v30, 81, v21 & 1, v20);
  sub_1E3C2D150();
  sub_1E3C37CBC(*(v18 + 224), 11);
  sub_1E3C37CBC(*(v18 + 144), 91);
  v22 = sub_1E3D3DC98();
  sub_1E3C37CBC(v22, 17);

  v23 = sub_1E3D3DD40();
  sub_1E3C37CBC(v23, 23);

  v24 = sub_1E3D3E060();
  sub_1E3C37CBC(v24, 24);

  v25 = sub_1E3D3D9F0();
  sub_1E3C37CBC(v25, 3);

  sub_1E3C37CBC(*(v18 + 272), 40);
  sub_1E3C37CBC(*(v18 + 232), 234);
  sub_1E3C37CBC(*(v18 + 280), 47);
  sub_1E3C37CBC(*(v18 + 248), 241);

  v26 = sub_1E3D3CF90();
  sub_1E3C37CBC(v26, 34);

  v27 = sub_1E3D3D314();
  sub_1E3C37CBC(v27, 61);

  OUTLINED_FUNCTION_5_0(v18 + 120, v30);
  sub_1E3D3CE30(*(v18 + 120), v28);

  return v18;
}

void sub_1E3D3EAFC(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_36();
  if (v8)
  {
    v9 = a2;
    v10 = [v9 isAXEnabled];
    v11 = v10;
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v13 = sub_1E3D3CDA8(v12);
    OUTLINED_FUNCTION_14_0(v3 + 104, v14, v13);
    *(v3 + 104) = v12;
    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_116();
      a2 = sub_1E4206A64();

      v9 = a2;
    }

    v15 = [v9 preferredContentSizeCategory];
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1E3C2F8E8();
  if (v16)
  {
    v18 = v16;
    v19 = [v16 preferredContentSizeCategory];

    if (v15)
    {
      if (v19)
      {
        v20 = sub_1E4205F14();
        v22 = v21;
        if (v20 == sub_1E4205F14() && v22 == v23)
        {

          v26 = 0;
        }

        else
        {
          v25 = sub_1E42079A4();

          v26 = v25 ^ 1;
        }

        goto LABEL_24;
      }

      goto LABEL_18;
    }

    if (v19)
    {
      v26 = 1;
      goto LABEL_24;
    }
  }

  else if (v15)
  {
LABEL_18:
    v26 = 1;
    v19 = v15;
LABEL_24:

    goto LABEL_25;
  }

  v26 = 0;
LABEL_25:
  v27 = sub_1E3C2F6A0(v16, v17);
  if (v28 == 1 || (v29 = v27, sub_1E39DFB80(v27, v28), v43[0] = a1, v29 == 7))
  {
    v33 = 1;
  }

  else
  {
    sub_1E37F99D4(v30, v31, v32);
    v33 = v26 | sub_1E4205E84() ^ 1;
  }

  if (a2)
  {
    v34 = [a2 userInterfaceStyle];
  }

  else
  {
    v34 = 0;
  }

  v35 = sub_1E3C2F8E8();
  if (v35)
  {
    v37 = v35;
    v38 = [v35 userInterfaceStyle];

    if (!a2 || v34 != v38)
    {
      goto LABEL_37;
    }
  }

  else if (a2)
  {
LABEL_37:
    sub_1E3D4102C(v35, v36);
    sub_1E4200514();
    sub_1E4200594();
  }

  sub_1E3C35CF4(a1, a2);
  sub_1E3886EEC(a1, a2, a3);
  v39 = sub_1E3C2F8E8();
  if (!v39 || (v40 = v39, v41 = [v39 isAXEnabled], v40, (v41 & 1) == 0))
  {
    if (sub_1E3A24FDC(a1))
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v42 = 3;
  if (v33)
  {
LABEL_46:
    sub_1E3D3EE4C();
  }

LABEL_47:
  OUTLINED_FUNCTION_5_0(v4 + 120, v43);
  if (!sub_1E3D3CD44(v42, *(v4 + 120)))
  {
    sub_1E3D3CE9C(v42);
  }
}

void sub_1E3D3EE4C()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v4 = sub_1E3C2F6A0(v2, v3);
  if (v5 == 1)
  {
    goto LABEL_9;
  }

  sub_1E39DFB80(v4, v5);
  v6 = type metadata accessor for LayoutGrid();
  v7 = sub_1E3A25914();
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_5_0(v1 + 120, &v372);
  v12 = *(v1 + 120);
  if (v12 == 3)
  {
    v36 = xmmword_1E42CC980;
LABEL_7:
    *v398 = v36;
    *&v398[16] = xmmword_1E42CD140;
    LOBYTE(v399) = 0;
    v442 = 0x4054000000000000;
    v443 = v9;
    v444 = 0x4057000000000000;
    v445 = v11;
    v446 = 0;
    v437 = 0x4054000000000000;
    v438 = v9;
    v439 = 0x4059800000000000;
    v440 = v11;
    v441 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_164();
    sub_1E3C3DE00();
    v37 = OUTLINED_FUNCTION_13_121();
    OUTLINED_FUNCTION_21_79(v37, v38, v39, v40, v41, v42, v43, v44, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, *v398, *&v398[8], *&v398[16], *&v398[24], v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
    v35 = v447;
    v29 = v398;
    v30 = &v431;
    v31 = &v427;
    v32 = &v442;
    v33 = &v390;
    v34 = &v437;
    goto LABEL_8;
  }

  if (v12 != 2)
  {
    v36 = xmmword_1E42CD160;
    goto LABEL_7;
  }

  *v398 = v7;
  *&v398[8] = xmmword_1E42CD150;
  *&v398[24] = 0x403C000000000000;
  LOBYTE(v399) = 0;
  OUTLINED_FUNCTION_15_112();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_37_55();
  OUTLINED_FUNCTION_7_164();
  sub_1E3C3DE00();
  v13 = OUTLINED_FUNCTION_13_121();
  OUTLINED_FUNCTION_21_79(v13, v14, v15, v16, v17, v18, v19, v20, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, *v398, *&v398[8], *&v398[16], *&v398[24], v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_16_108(v21, v22, v23, v24, v25, v26, v27, v28, *&v372, *&v373, *&v374, *&v375, *&v376, *&v377, *&v378, *&v379, *&v380, *&v381, *&v382, *&v383, *&v384);
LABEL_8:
  sub_1E3C2FCB8(v29, v30, v31, v32, v33, v34, v6, v35);
  v53 = OUTLINED_FUNCTION_33_57(v45, v46, v47, v48, v49, v50, v51, v52, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
  memcpy(v53, v54, 0xE9uLL);
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_128();
  sub_1E3C2FDFC(v55, v56, v57, v58);
LABEL_9:
  v447[0] = sub_1E3D3D23C(v4, v5);
  sub_1E3D3FFB8(v447, 0);
  v59 = *(v1 + 152);
  *(v1 + 152) = v447[0];

  v447[0] = sub_1E3D3D2A8(v60, v61);
  sub_1E3D3FFB8(v447, 1);
  v62 = *(v1 + 160);
  *(v1 + 160) = v447[0];

  OUTLINED_FUNCTION_5_0(v1 + 120, &v375);
  v63 = *(v1 + 120);
  sub_1E3D3D9F0();
  OUTLINED_FUNCTION_2_1();
  v65 = *(v64 + 1984);
  if (v63 == 2)
  {
    v65(1);

    OUTLINED_FUNCTION_36();
    v67 = *(v66 + 1696);

    v67(17);

    OUTLINED_FUNCTION_36();
    v69 = *(v68 + 1792);

    v69(5);

    v70 = *(v1 + 192);

    v71 = sub_1E3E5FDEC();
    v72 = *v71;
    v73 = *(*v70 + 680);
    v74 = *v71;
    v73(v72);

    v75 = sub_1E3D3CF90();
    v76 = *v71;
    v77 = *(*v75 + 680);
    v78 = v76;
    v77(v76);

    OUTLINED_FUNCTION_36();
    v80 = *(v79 + 2272);

    v80(1);

    sub_1E3952C88();
    v85 = sub_1E3D403C8(v81, v82, v83, v84);
    OUTLINED_FUNCTION_26_78(v85, v86, v87, v88);
    (*(v89 + 160))(v447);

    OUTLINED_FUNCTION_36();
    v91 = *(v90 + 256);

    v91(0x4075400000000000, 0);
  }

  else
  {
    v65(5);

    v398[0] = 14;
    LOBYTE(v442) = 21;
    LOBYTE(v437) = 15;
    LOBYTE(v432) = 15;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_49_44();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_83();
    v100 = OUTLINED_FUNCTION_1_202(v92, v93, v94, v95, v96, v97, v98, v99, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    sub_1E3C2FCB8(v100, v101, v102, v103, v104, v105, &qword_1F5D549D8, v106);
    OUTLINED_FUNCTION_43_46();
    OUTLINED_FUNCTION_14();
    v115 = OUTLINED_FUNCTION_6_126(v107, v108, v109, v110, v111, v112, v113, v114, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    v116(v115, 48);

    v398[0] = 5;
    LOBYTE(v442) = 10;

    sub_1E3C2FC98();
    LOBYTE(v432) = v437;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_49_44();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_83();
    sub_1E3C3DE00();
    LOBYTE(v384) = v390;
    sub_1E3C2FCB8(v398, &v432, v430, &v424, &v442, &v384, &qword_1F5D54AF8, v447);
    OUTLINED_FUNCTION_43_46();
    OUTLINED_FUNCTION_14();
    v125 = OUTLINED_FUNCTION_6_126(v117, v118, v119, v120, v121, v122, v123, v124, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    v126(v125, 54);

    v127 = *(v1 + 192);

    v128 = sub_1E3E5FD88();
    v129 = *v128;
    v130 = *(*v127 + 680);
    v131 = *v128;
    v130(v129);

    v132 = sub_1E3D3CF90();
    v133 = *v128;
    v134 = *(*v132 + 680);
    v135 = v133;
    v134(v133);

    OUTLINED_FUNCTION_36();
    v137 = *(v136 + 2272);

    v137(3);

    sub_1E3952C88();
    sub_1E3D403C8(v138, v139, v140, v141);
    OUTLINED_FUNCTION_39_44();
    sub_1E3952C88();
    OUTLINED_FUNCTION_36_51(v142, v143, v144, v145);
    OUTLINED_FUNCTION_35_51(v146, v147, v148, v149);
    v432 = sub_1E3D403C8(v150, v151, v152, v153);
    v433 = v154;
    v434 = v155;
    v435 = v156;
    v436 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v157 = OUTLINED_FUNCTION_38_45();
    v424 = v427;
    v425 = v428;
    v426 = v429;
    v165 = OUTLINED_FUNCTION_1_202(v157, v158, v159, v160, v161, v162, v163, v164, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    sub_1E3C2FCB8(v165, v166, v167, v168, v169, v170, v1, v171);
    v180 = OUTLINED_FUNCTION_33_57(v172, v173, v174, v175, v176, v177, v178, v179, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    memcpy(v180, v181, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_20_79();
    OUTLINED_FUNCTION_8_128();
    v182();

    *v398 = 0x4076800000000000;
    v398[8] = 0;
    v442 = 0x4082C00000000000;
    LOBYTE(v443) = 0;
    v437 = 0x4071800000000000;
    LOBYTE(v438) = 0;
    v432 = 450.0;
    LOBYTE(v433) = 0;

    v183 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_17_102();
    v184 = sub_1E3C3DE00();
    *&v424 = v427;
    BYTE8(v424) = BYTE8(v427);
    v192 = OUTLINED_FUNCTION_1_202(v184, v185, v186, v187, v188, v189, v190, v191, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    sub_1E3C2FCB8(v192, v193, v194, v195, v196, v197, v183, v198);
    v207 = OUTLINED_FUNCTION_33_57(v199, v200, v201, v202, v203, v204, v205, v206, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    memcpy(v207, v208, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v217 = OUTLINED_FUNCTION_6_126(v209, v210, v211, v212, v213, v214, v215, v216, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    v218(v217, 4);
  }

  OUTLINED_FUNCTION_5_0(v1 + 120, &v395);
  if (*(v1 + 120) == 3)
  {
    v219 = 8.0;
    v220 = 0.0;
  }

  else
  {
    v220 = 40.0;
    v219 = 8.0;
  }

  sub_1E3D403C8(v219, v220, 0.0, 0.0);
  OUTLINED_FUNCTION_39_44();
  OUTLINED_FUNCTION_15_112();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_37_55();
  OUTLINED_FUNCTION_7_164();
  sub_1E3C3DE00();
  v221 = OUTLINED_FUNCTION_13_121();
  OUTLINED_FUNCTION_21_79(v221, v222, v223, v224, v225, v226, v227, v228, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, *v398, *&v398[8], *&v398[16], *&v398[24], v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_16_108(v229, v230, v231, v232, v233, v234, v235, v236, *&v372, *&v373, *&v374, *&v375, *&v376, *&v377, *&v378, *&v379, *&v380, *&v381, *&v382, *&v383, *&v384);
  sub_1E3C2FCB8(v237, v238, v239, v240, v241, v242, v1, v243);
  v252 = OUTLINED_FUNCTION_33_57(v244, v245, v246, v247, v248, v249, v250, v251, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
  memcpy(v252, v253, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_79();
  OUTLINED_FUNCTION_8_128();
  v254();
  sub_1E3D3DD40();
  *v398 = sub_1E3D404A4(30.0);
  v398[8] = 0;
  v442 = 0x4053000000000000;
  LOBYTE(v443) = 0;
  v437 = 0x4048000000000000;
  LOBYTE(v438) = 0;
  v432 = sub_1E3D404A4(60.0);
  LOBYTE(v433) = 0;
  v255 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_17_102();
  v256 = sub_1E3C3DE00();
  *&v424 = v427;
  BYTE8(v424) = BYTE8(v427);
  v264 = OUTLINED_FUNCTION_1_202(v256, v257, v258, v259, v260, v261, v262, v263, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
  sub_1E3C2FCB8(v264, v265, v266, v267, v268, v269, v255, v270);
  v279 = OUTLINED_FUNCTION_33_57(v271, v272, v273, v274, v275, v276, v277, v278, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
  memcpy(v279, v280, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_79();
  v289 = OUTLINED_FUNCTION_6_126(v281, v282, v283, v284, v285, v286, v287, v288, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
  v290(v289, 52);

  OUTLINED_FUNCTION_5_0(v1 + 120, &v384);
  sub_1E3D40134(*(v1 + 120));
  OUTLINED_FUNCTION_5_0(v1 + 120, &v390);
  v291 = *(v1 + 120);
  if (v291 == 3)
  {
    v292 = 4;
  }

  else
  {
    v292 = 5;
  }

  if (v291 == 2)
  {
    v293 = 1;
  }

  else
  {
    v293 = v292;
  }

  (*(**(v1 + 184) + 464))(v293);
  if (*(v1 + 120) == 2)
  {
    sub_1E3952C88();
    v298 = sub_1E3D403C8(v294, v295, v296, v297);
    OUTLINED_FUNCTION_26_78(v298, v299, v300, v301);
    (*(v302 + 160))(v447);
  }

  else
  {
    sub_1E3952C88();
    sub_1E3D403C8(v303, v304, v305, v306);
    OUTLINED_FUNCTION_39_44();
    sub_1E3952C88();
    OUTLINED_FUNCTION_36_51(v307, v308, v309, v310);
    OUTLINED_FUNCTION_35_51(v311, v312, v313, v314);
    v432 = sub_1E3D403C8(v315, v316, v317, v318);
    v433 = v319;
    v434 = v320;
    v435 = v321;
    v436 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v322 = OUTLINED_FUNCTION_38_45();
    v424 = v427;
    v425 = v428;
    v426 = v429;
    v330 = OUTLINED_FUNCTION_1_202(v322, v323, v324, v325, v326, v327, v328, v329, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    sub_1E3C2FCB8(v330, v331, v332, v333, v334, v335, v1, v336);
    v345 = OUTLINED_FUNCTION_33_57(v337, v338, v339, v340, v341, v342, v343, v344, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398[0]);
    memcpy(v345, v346, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_20_79();
    OUTLINED_FUNCTION_8_128();
    v347();
  }

  v348 = *(v1 + 224);
  v349 = OUTLINED_FUNCTION_8_5();
  v350(v349);
  OUTLINED_FUNCTION_3_11();
  v351 = OUTLINED_FUNCTION_10_7();
  v352(v351);
  OUTLINED_FUNCTION_3_11();
  v353 = OUTLINED_FUNCTION_36_0();
  v354(v353);
  OUTLINED_FUNCTION_3_11();
  v355 = OUTLINED_FUNCTION_36_0();
  v356(v355);
  OUTLINED_FUNCTION_8();
  v358 = *(v357 + 248);

  v360 = v358(v359);
  v362 = v361;

  OUTLINED_FUNCTION_3_11();
  (*(v363 + 256))(v360, v362 & 1);
  OUTLINED_FUNCTION_8();
  v365 = *(v364 + 224);

  v367 = v365(v366);
  v369 = v368;

  v370 = (*(*v348 + 232))(v367, v369 & 1);
  sub_1E3D4102C(v370, v371);
  sub_1E4200514();
  sub_1E4200594();
}

void sub_1E3D3FC80(double a1)
{
  OUTLINED_FUNCTION_8();
  sub_1E3D4102C(v2, v3);
  sub_1E4200514();
  sub_1E4200594();

  sub_1E392C768(a1, v4, v5);
  sub_1E3DA3344(a1);
}

uint64_t sub_1E3D3FD0C(uint64_t a1)
{
  v2 = v1;
  nullsub_1();
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v4 = result;
      swift_beginAccess();
      *(v2 + 264) = v4;
      swift_retain_n();

      sub_1E3952C88();
      v11[0] = v5;
      v11[1] = v6;
      v11[2] = v7;
      v11[3] = v8;
      v12 = 0;
      OUTLINED_FUNCTION_8();
      (*(v9 + 160))(v11);

      v10 = *sub_1E3810A0C();

      sub_1E3C37EC8(v4, v10);
    }
  }

  return result;
}

double sub_1E3D3FE10()
{

  return result;
}

id *sub_1E3D3FEC8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3D3FF88()
{
  v0 = sub_1E3D3FEC8();

  return MEMORY[0x1EEE6BDC0](v0, 288, 7);
}

void sub_1E3D3FFB8(id *a1, char a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 120, v5);
  v6 = sub_1E3D3D138(*(v2 + 120));
  *a1 = v6;
  [v6 updateLayoutForPhoneSizeClass_];
  v7 = *(v2 + 120);
  if (v7 == 3)
  {
    [v6 setMaxWidth_];
    v7 = *(v2 + 120);
  }

  if (v7 == 2)
  {
    sub_1E3952C88();
    v12 = sub_1E3D403C8(v8, v9, v10, v11);
  }

  else
  {
    sub_1E3952C88();
  }

  [v6 setMargin_];
  v13 = [v6 textLayout];
  type metadata accessor for ViewLayout();
  sub_1E3C8BE74();
  v14 = sub_1E3DEFC38(1);
  [v13 setColor_];

  sub_1E3C8BE74();
  v15 = sub_1E3DEFC38(1);
  [v6 setBadgeTintColor_];

  v16 = [v6 textLayout];
  [v16 setFadesOutTextTruncation_];
}

uint64_t sub_1E3D40134(char a1)
{
  if (a1 == 2)
  {
    sub_1E3952C88();
    sub_1E3D403C8(v3, v4, v5, v6);
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v93 = v96;
    v94 = v97;
    v95 = v98;
    sub_1E3C3DE00();
    v87 = v90;
    v88 = v91;
    v89 = v92;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_11_7(v7, v8, v9, v10, v11, v12, v13, v14, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9], v61[10], v61[11], v61[12], v61[13], v61[14], v61[15], v61[16], v61[17], v61[18], v61[19], v61[20], v61[21], v61[22], v61[23], v61[24], v61[25], v61[26], v61[27], v61[28], v61[29], *&v62, *&v63, *&v64, *&v65, *&v66, *&v67, *&v68, *(&v68 + 1), v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *&v79, *(&v79 + 1), *&v80, *(&v80 + 1), v81, v82, *v83);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_10(v15, v16, v17, v18, v19, v20, v21, v22, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9], v61[10], v61[11], v61[12], v61[13], v61[14], v61[15], v61[16], v61[17], v61[18], v61[19], v61[20], v61[21], v61[22], v61[23], v61[24], v61[25], v61[26], v61[27], v61[28], v61[29], *&v62, *&v63, *&v64, *&v65, *&v66, *&v67, *&v68, *(&v68 + 1), v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *&v79);
    v23 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_107(v23, v24, v25, v26, v27, v28, v29, v30, *&v61[0], *&v61[1], *&v61[2], *&v61[3], *&v61[4], *&v61[5], *&v61[6], *&v61[7], *&v61[8], *&v61[9], *&v61[10], *&v61[11], *&v61[12], *&v61[13], *&v61[14], *&v61[15], *&v61[16], *&v61[17], *&v61[18], *&v61[19], *&v61[20], *&v61[21], *&v61[22], *&v61[23], *&v61[24], *&v61[25], *&v61[26], *&v61[27], *&v61[28], *&v61[29], v62, v63, v64, v65, v66, v67, v68);
    v31 = &v93;
    v32 = &v87;
    v33 = v83;
    v34 = &v73;
    v35 = &v62;
  }

  else
  {
    sub_1E3952C88();
    sub_1E3D403C8(v36, v37, v38, v39);
    OUTLINED_FUNCTION_18_8();
    sub_1E3952C88();
    *&v96 = v40;
    *(&v96 + 1) = v41;
    *&v97 = v42;
    *(&v97 + 1) = v43;
    v98 = 0;
    sub_1E3952C88();
    *&v93 = v44;
    *(&v93 + 1) = v45;
    *&v94 = v46;
    *(&v94 + 1) = v47;
    v95 = 0;
    sub_1E3952C88();
    *&v90 = sub_1E3D403C8(v48, v49, v50, v51);
    *(&v90 + 1) = v52;
    *&v91 = v53;
    *(&v91 + 1) = v54;
    v92 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v85[0] = v87;
    v85[1] = v88;
    v86 = v89;
    sub_1E3C3DE00();
    v79 = v83[0];
    v80 = v83[1];
    LOBYTE(v81) = v84;
    v31 = v85;
    v32 = &v79;
    v33 = &v96;
    v34 = &v93;
    v35 = &v90;
  }

  sub_1E3C2FCB8(v61, v31, v32, v33, v34, v35, v1, __src);
  memcpy(v61, __src, 0xE9uLL);
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_128();
  sub_1E3C2FDFC(v55, v56, v57, v58);
  if (a1 == 3)
  {
    sub_1E3D404A4(12.0);
    sub_1E3C2EAE8();
    sub_1E3D404A4(265.0);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v59 + 176))(__src);
    if ((LOBYTE(__src[4]) & 1) == 0)
    {
      sub_1E3952BD8(__src[0], __src[1], __src[2]);
    }

    sub_1E3C2EAE8();
    if (a1 != 2)
    {
      OUTLINED_FUNCTION_36_0();
    }
  }

  return sub_1E3C2CE80();
}

double sub_1E3D403C8(double a1, double a2, double a3, double a4)
{
  if (sub_1E3D40FB8())
  {
    v8 = [objc_opt_self() defaultMetrics];
    [v8 scaledValueForValue:0 compatibleWithTraitCollection:a1];
    a1 = v9;
    [v8 scaledValueForValue:0 compatibleWithTraitCollection:a2];
    [v8 scaledValueForValue:0 compatibleWithTraitCollection:a3];
    [v8 scaledValueForValue:0 compatibleWithTraitCollection:a4];
  }

  return a1;
}

double sub_1E3D404A4(double a1)
{
  if (sub_1E3D40FB8())
  {
    v2 = [objc_opt_self() defaultMetrics];
    [v2 scaledValueForValue_];
    a1 = v3;
  }

  return a1;
}

uint64_t sub_1E3D40514()
{
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  sub_1E3BBD964(1, v1 & 1, v2, v3 & 1);
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_4_8(v4, v5, v6, v7, v8, v9, v10, v11, v27);

  *(v0 + 104) = v29;
  v12 = j__OUTLINED_FUNCTION_18();
  v13 = sub_1E3B050E8();
  v14 = j__OUTLINED_FUNCTION_18();
  sub_1E3BBD964(2, v12 & 1, v13, v14 & 1);
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_4_8(v15, v16, v17, v18, v19, v20, v21, v22, v28);

  *(v0 + 112) = v29;
  v23 = sub_1E3C2F9A0();

  if ((TVAppFeature.isEnabled.getter(10, v24, v25) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    sub_1E3C37CBC(*(v23 + 104), 59);
    sub_1E3C37CBC(*(v23 + 112), 65);
  }

  return v23;
}

uint64_t sub_1E3D40638(uint64_t *a1)
{
  v1 = *a1;
  sub_1E3952C88();
  *__dst = v2;
  *&__dst[8] = v3;
  *&__dst[16] = v4;
  *&__dst[24] = v5;
  __dst[32] = 0;
  sub_1E3952C88();
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = 0;
  sub_1E3952C88();
  v76[0] = v10;
  v76[1] = v11;
  v76[2] = v12;
  v76[3] = v13;
  v77 = 0;
  OUTLINED_FUNCTION_15_112();
  sub_1E3C2FC98();
  v71[0] = v73;
  v71[1] = v74;
  v72 = v75;
  sub_1E3C3DE00();
  LOBYTE(v64) = v70;
  v14 = sub_1E3C3DE00();
  LOBYTE(v52) = v58;
  OUTLINED_FUNCTION_30_61(v14, v15, v16, v17, v18, v19, v20, v21, v47, v49, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v54, v55, v56, v57, v52, v53, v54, v55, v56, v57, v58, v59, v66, v67, v68, v69, v64, v65, v66, v67, v68, v69, v70);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v23 = *(v22 + 1600);
  OUTLINED_FUNCTION_8_128();
  v23();
  __dst[0] = 22;
  LOBYTE(v78) = 14;
  LOBYTE(v76[0]) = 19;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_19_83();
  sub_1E3C3DE00();
  v24 = OUTLINED_FUNCTION_54_32();
  LOBYTE(v51[0]) = v54;
  OUTLINED_FUNCTION_30_61(v24, v25, v26, v27, v28, v29, v30, v31, v48, v49, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v51[0], v51[1], v51[2], v51[3], v52, v53, v54, v55, v56, v57, v58, v59, *v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v32 = OUTLINED_FUNCTION_44_44();
  (v23)(__dst, 48, v32 & 1, &qword_1F5D549D8);
  v33 = *sub_1E3E5FDEC();
  v34 = *(*v1 + 680);
  v35 = v33;
  v34(v33);
  __dst[0] = 10;
  sub_1E3C3DE00();
  LOBYTE(v76[0]) = v78;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_19_83();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_54_32();
  LOBYTE(v51[0]) = v54;
  sub_1E3C3DE00();
  BYTE6(v49) = HIBYTE(v49);
  sub_1E3C2FCB8(v76, v71, v60, v51, __dst, &v49 + 6, &qword_1F5D54AF8, __src);
  v36 = OUTLINED_FUNCTION_44_44();
  (v23)(__dst, 54, v36 & 1, &qword_1F5D54AF8);
  OUTLINED_FUNCTION_9_2();
  (*(v37 + 2272))(1);
  OUTLINED_FUNCTION_9_2();
  v38 = OUTLINED_FUNCTION_8_5();
  v39(v38);
  OUTLINED_FUNCTION_9_2();
  (*(v40 + 1984))(1);
  OUTLINED_FUNCTION_9_2();
  (*(v41 + 2008))(1);
  OUTLINED_FUNCTION_9_2();
  (*(v42 + 1720))(7);
  v43 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v43 setShadowOffset_];
  [v43 setShadowBlurRadius_];
  sub_1E3755B54();
  v44 = sub_1E4206F24();
  [v43 setShadowColor_];

  OUTLINED_FUNCTION_9_2();
  return (*(v45 + 608))(v43);
}

uint64_t sub_1E3D40AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1E373F6E0(a1, 65, a3, a4, a5, a6) & 1) == 0)
  {
  }

  if (!a2)
  {
    v16 = 0u;
    v17 = 0u;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8();
  v8 = (*(v7 + 672))();
  v15[3] = &type metadata for ViewModelKeys;
  v15[4] = &off_1F5D7BCA8;
  LOBYTE(v15[0]) = 13;
  sub_1E3F9F164(v15, v8, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v15);
  if (!*(&v17 + 1))
  {
LABEL_12:
    sub_1E329505C(&v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
  }

  v10 = 0;
  v11 = v15[0];
  v12 = *(v15[0] + 16);
  while (1)
  {
    if (v12 == v10)
    {
LABEL_14:
    }

    if (v10 >= *(v11 + 16))
    {
      break;
    }

    if (*(*(v11 + 8 * v10 + 32) + 16))
    {

      sub_1E327D33C(0x656C746974, 0xE500000000000000);
      v14 = v13;

      if (v14)
      {
        goto LABEL_14;
      }
    }

    ++v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D40C54()
{
  __asm { FMOV            V0.2D, #12.0 }

  *&v59[16] = _Q0;
  v59[32] = 0;
  v5 = sub_1E3952CA4();
  OUTLINED_FUNCTION_50_38(v5, v6, v7, v8);
  v87 = sub_1E3952CA4();
  v88 = v9;
  v89 = v10;
  v90 = v11;
  v91 = 0;
  v82 = sub_1E3952CA4();
  v83 = v12;
  v84 = v13;
  v85 = v14;
  v86 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_4_10(v15, v16, v17, v18, v19, v20, v21, v22, 0.0, 0.0, *&v59[16], *&v59[24], *&v59[32], *&v59[40], *&v59[48], *&v59[56], *&v59[64], *&v59[72], *&v59[80], *&v59[88], *&v59[96], *&v59[104], *&v59[112], *&v59[120], *&v59[128], *&v59[136], *&v59[144], *&v59[152], *&v59[160], *&v59[168], *&v59[176], *&v59[184], *&v59[192], *&v59[200], *&v59[208], *&v59[216], *&v59[224], *&v59[232], *&v60, *&v61, *&v62, *&v63, *&v64, *&v65, *&v66, *(&v66 + 1), *&v67, *&v68, *&v69, *&v70, *&v71, *&v72, *&v73, *&v74, *&v75, *&v76, *&v77);
  v23 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v23, v24, v25, v26, v27, v28, v29, v30, *v59, *&v59[8], *&v59[16], *&v59[24], *&v59[32], *&v59[40], *&v59[48], *&v59[56], *&v59[64], *&v59[72], *&v59[80], *&v59[88], *&v59[96], *&v59[104], *&v59[112], *&v59[120], *&v59[128], *&v59[136], *&v59[144], *&v59[152], *&v59[160], *&v59[168], *&v59[176], *&v59[184], *&v59[192], *&v59[200], *&v59[208], *&v59[216], *&v59[224], *&v59[232], v60, v61, v62, v63, v64, v65, v66);
  OUTLINED_FUNCTION_29_70(v31, v32, v33, v34, v35, v36, v37, v38, *v59, *&v59[8], *&v59[16], *&v59[24], *&v59[32], *&v59[40], *&v59[48], *&v59[56], *&v59[64], *&v59[72], *&v59[80], *&v59[88], *&v59[96], *&v59[104], *&v59[112], *&v59[120], *&v59[128], *&v59[136], *&v59[144], *&v59[152], *&v59[160], *&v59[168], *&v59[176], *&v59[184], *&v59[192], *&v59[200], *&v59[208], *&v59[216], *&v59[224], *&v59[232], v60, v61, v62, v63, v64, v65, v66, *(&v66 + 1), v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  memcpy(v59, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v47 = OUTLINED_FUNCTION_19_96(v39, v40, v41, v42, v43, v44, v45, v46, *v59);
  v48(v47);
  OUTLINED_FUNCTION_36();
  __src[0] = 0;
  v49 = OUTLINED_FUNCTION_47_40();
  v50(v49);
  OUTLINED_FUNCTION_36();
  __src[0] = 0;
  v51 = OUTLINED_FUNCTION_31_55();
  v52(v51);
  OUTLINED_FUNCTION_36();
  __src[0] = 0;
  v53 = OUTLINED_FUNCTION_31_55();
  v54(v53);
  OUTLINED_FUNCTION_36();
  __src[0] = 0;
  v55 = OUTLINED_FUNCTION_31_55();
  v56(v55);
  OUTLINED_FUNCTION_36();
  return (*(v57 + 2296))(9, 0);
}

uint64_t sub_1E3D40E70()
{
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_47_40();
  v1(v0);
  OUTLINED_FUNCTION_36();
  v2 = OUTLINED_FUNCTION_31_55();
  v3(v2);
  OUTLINED_FUNCTION_36();
  v4 = OUTLINED_FUNCTION_31_55();
  v5(v4);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_31_55();
  v7(v6);
  OUTLINED_FUNCTION_36();
  return (*(v8 + 2296))(9, 0);
}

BOOL sub_1E3D40FB8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1576))();
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

unint64_t sub_1E3D4102C(uint64_t a1, uint64_t a2)
{
  result = qword_1ECF37B58;
  if (!qword_1ECF37B58)
  {
    type metadata accessor for SportsCanonicalBannerViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B58);
  }

  return result;
}

uint64_t sub_1E3D410A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 104, a2);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return sub_1E41FFDB4();
}

unsigned __int8 *getEnumTagSinglePayload for SportsCanonicalBannerLayoutVariation(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsCanonicalBannerLayoutVariation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3D412B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37B68;
  if (!qword_1ECF37B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PineBoardFeature(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1E3D413D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEF0, &qword_1E42AFAB8);
  sub_1E42013A4();
  sub_1E32752B0(&qword_1EE289350, &qword_1ECF2FEF0, &qword_1E42AFAB8, MEMORY[0x1E697EC18]);
  OUTLINED_FUNCTION_60();
  swift_getWitnessTable();
  v5 = *(*(a1 - 8) + 16);

  return v5(a2, v2, a1);
}

uint64_t sub_1E3D41528@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, unint64_t *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1E42013A4();
  sub_1E32752B0(a4, a2, a3, a5);
  OUTLINED_FUNCTION_60();
  swift_getWitnessTable();
  v13 = *(*(a1 - 8) + 16);

  return v13(a6, v6, a1);
}

unint64_t sub_1E3D4161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37B78;
  if (!qword_1ECF37B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B78);
  }

  return result;
}

_BYTE *_s13LogTreeOptionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3D41750()
{
  result = sub_1E39D7838(&unk_1F5D80E38);
  qword_1EE2AA7D0 = result;
  return result;
}

uint64_t *sub_1E3D41778()
{
  if (qword_1EE28EF40 != -1)
  {
    OUTLINED_FUNCTION_6_149(&qword_1EE28EF40);
  }

  return &qword_1EE2AA7D0;
}

double sub_1E3D417B8@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0xD00000000000001ALL;
  *(a2 + 120) = 0x80000001E427F840;
  *(a2 + 128) = 256;
  return result;
}

void *sub_1E3D41814@<X0>(char a1@<W0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[9];
  v14 = a2[8];
  v13 = *(a2 + 40);
  v17[136] = 1;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v20 = 1;
  v21 = 0;
  sub_1E325F748(v18, &unk_1ECF31AB0, qword_1E42CD4C0);
  LOBYTE(__src[0]) = a1;
  __src[1] = v3;
  __src[2] = v4;
  __src[3] = v5;
  __src[4] = v6;
  __src[5] = v7;
  __src[6] = v8;
  __src[7] = v9;
  __src[8] = v10;
  __src[9] = v14;
  __src[10] = v11;
  LOWORD(__src[11]) = v13;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0xD00000000000001ALL;
  __src[15] = 0x80000001E427F840;
  LOWORD(__src[16]) = 256;
  v23[0] = a1;
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v14;
  v33 = v11;
  v34 = v13;
  v35 = 0;
  v36 = 1;
  v37 = 0xD00000000000001ALL;
  v38 = 0x80000001E427F840;
  v39 = 256;
  sub_1E3D4195C(__src, v17);
  sub_1E39F8998(v23);
  return memcpy(a3, __src, 0x82uLL);
}

void *sub_1E3D41998(id a1, void *a2, uint64_t a3, const void *a4)
{
  v5 = a1;
  if (a2)
  {
    objc_opt_self();
    a1 = swift_dynamicCastObjCClass();
    v7 = a1;
    if (a1)
    {
      a1 = a2;
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307E8, &qword_1E42B22F0);
  sub_1E4148C68(sub_1E3D41B98, v8, v17);

  v9 = v17[0];
  LOBYTE(v18) = 1;
  (*(*v5 + 776))(v17, &v18, &unk_1F5D5D258, &off_1F5D5C7B8);
  if (v17[3])
  {
    if (swift_dynamicCast())
    {
      [v9 setMutePlaybackInBackground_];
    }
  }

  else
  {
    sub_1E325F748(v17, &unk_1ECF296E0, &unk_1E4298030);
  }

  v10 = OUTLINED_FUNCTION_74();
  sub_1E3D41C40(v10, v11, 39, a4);
  if (v12)
  {
    v13 = v12;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v15 = OUTLINED_FUNCTION_24_3(v14);
    *(v15 + 16) = xmmword_1E4298880;
    *(v15 + 32) = v13;
    sub_1E39F8914(v15, v9);
  }

  return v9;
}

id sub_1E3D41B98@<X0>(void *a1@<X8>)
{
  memcpy(__dst, *(v1 + 16), 0x82uLL);
  if (sub_1E3D44104(__dst) != 1)
  {
  }

  sub_1E3280A90(0, &qword_1EE23AF70, off_1E8728270);
  result = sub_1E39F8768();
  *a1 = result;
  return result;
}

void sub_1E3D41C40(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  OUTLINED_FUNCTION_26_0();
  v8 += 49;
  v9 = *v8;
  v10 = v8;
  if ((*v8)())
  {
    OUTLINED_FUNCTION_30();
    HIDWORD(v365) = (*(v11 + 1560))();
  }

  else
  {
    memcpy(__dst, a4, 0x82uLL);
    v12 = sub_1E3D44104(__dst);
    HIDWORD(v365) = __dst[0];
    v13 = v12 == 1 || __dst[0] == 7;
    if (v13)
    {
      HIDWORD(v365) = sub_1E3A2532C();
    }
  }

  v381 = MEMORY[0x1E69E7CC0];
  v382 = MEMORY[0x1E69E7CC0];
  v322 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_6();
  v15 = (*(v14 + 488))();
  v17 = &unk_1E4298000;
  __src = a4;
  v326 = v9;
  v330 = a1;
  v317 = v10;
  if (v15)
  {
    v18 = v15;
    if (sub_1E38E5664(95, a2, v16))
    {
      v20 = sub_1E373E010(95, v18, v19);
      if (v20)
      {
        v21 = v20;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v23 = OUTLINED_FUNCTION_24_3(v22);
        *(v23 + 16) = xmmword_1E4298880;
        *(v23 + 32) = v21;
        v382 = v23;
      }
    }

    if (sub_1E38E5664(39, a2, v19) && (v25 = sub_1E373E010(a3, v18, v24)) != 0)
    {
      v26 = v25;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v28 = OUTLINED_FUNCTION_24_3(v27);
      *(v28 + 16) = xmmword_1E4298880;
      *(v28 + 32) = v26;
      v381 = v28;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    if (sub_1E38E5664(33, a2, v24))
    {
      v353 = sub_1E373E010(33, v18, v29);
    }

    else
    {

      v353 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_6();
    v31 = (*(v30 + 464))();
    if (v31)
    {
      v32 = v31;
      v33 = sub_1E32AE9B0(v31);
      if (v33)
      {
        v34 = v33;
        LODWORD(v301) = a3;
        v35 = 0;
        v353 = 0;
        v357 = v32 & 0xC000000000000001;
        v341 = v32 & 0xFFFFFFFFFFFFFF8;
        v347 = v32;
        v336 = v32 + 32;
        v306 = xmmword_1E4298880;
        while (1)
        {
          if (v357)
          {
            v36 = MEMORY[0x1E6911E60](v35, v347);
            v39 = v36;
          }

          else
          {
            if (v35 >= *(v341 + 16))
            {
              goto LABEL_222;
            }

            v39 = *(v336 + 8 * v35);
          }

          if (__OFADD__(v35++, 1))
          {
            break;
          }

          LOWORD(v384[0]) = 95;
          if (*(a2 + 16))
          {
            v41 = *(a2 + 40);
            sub_1E37414E0(v36, v37, v38);
            sub_1E4205DA4();
            OUTLINED_FUNCTION_3_171();
            do
            {
              OUTLINED_FUNCTION_1_203();
              if ((v47 & 1) == 0)
              {
                goto LABEL_36;
              }

              v48 = OUTLINED_FUNCTION_20_80(v36, v37, v38, v42, v43, v44, v45, v46, v286, v292, v296, v301, v306, *(&v306 + 1), v313, v317, v322, v326, v330, v336, v341, v347, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374);
            }

            while ((OUTLINED_FUNCTION_5_154(v48, v49, v50, v51, v52, v53, v54, v55, v287, v293, v297, v302, v307, v310, v314, v318, v323, v327, v331, v337, v342, v348, v354, v358, __srca, v366, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383[0], *&v383[8], *&v383[16], *&v383[24], *&v383[32], *&v383[40], *&v383[48], *&v383[56], *&v383[64], *&v383[72], *&v383[80], *&v383[88], *&v383[96], *&v383[104], *&v383[112], *&v383[120], *&v383[128], v384[0]) & 1) == 0);
            LOWORD(v369) = *(v39 + 98);
            LOWORD(v380) = 95;
            v58 = sub_1E3742F1C(a1 + 1, v56, v57);
            OUTLINED_FUNCTION_7_165(v58);
            v59 = OUTLINED_FUNCTION_8_129();
            v67 = OUTLINED_FUNCTION_12_111(v59, v60, v61, v62, v63, v64, v65, v66, v286, v292, v296, v301, v306, *(&v306 + 1), v313, v317, v322, v326, v330, v336, v341, v347, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, *v383, *&v383[8], *&v383[16], *&v383[24], *&v383[32], *&v383[40], *&v383[48], *&v383[56], *&v383[64], *&v383[72], *&v383[80], *&v383[88], *&v383[96], *&v383[104], *&v383[112], *&v383[120], *&v383[128], v384[0]);
            if (v13 && v41 == v384)
            {

LABEL_60:
              v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
              v135 = OUTLINED_FUNCTION_24_3(v134);
              *(v135 + 16) = v306;
              *(v135 + 32) = v39;
              sub_1E379738C(v135);
              goto LABEL_61;
            }

            a1 = OUTLINED_FUNCTION_9_6(v67, v68, v69);

            if (a1)
            {
              goto LABEL_60;
            }

LABEL_36:
            v71 = *(a2 + 16);
            LOWORD(v384[0]) = 39;
            if (v71)
            {
              sub_1E4205DA4();
              OUTLINED_FUNCTION_3_171();
              while (1)
              {
                OUTLINED_FUNCTION_1_203();
                if ((v77 & 1) == 0)
                {
                  break;
                }

                v78 = OUTLINED_FUNCTION_20_80(v36, v37, v38, v72, v73, v74, v75, v76, v286, v292, v296, v301, v306, *(&v306 + 1), v313, v317, v322, v326, v330, v336, v341, v347, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374);
                if (OUTLINED_FUNCTION_5_154(v78, v79, v80, v81, v82, v83, v84, v85, v288, v294, v298, v303, v308, v311, v315, v319, v324, v328, v332, v338, v343, v349, v355, v359, __srcb, v367, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383[0], *&v383[8], *&v383[16], *&v383[24], *&v383[32], *&v383[40], *&v383[48], *&v383[56], *&v383[64], *&v383[72], *&v383[80], *&v383[88], *&v383[96], *&v383[104], *&v383[112], *&v383[120], *&v383[128], v384[0]))
                {
                  LOWORD(v369) = *(v39 + 98);
                  LOWORD(v380) = v301;
                  v88 = sub_1E3742F1C(a1 + 1, v86, v87);
                  OUTLINED_FUNCTION_7_165(v88);
                  v89 = OUTLINED_FUNCTION_8_129();
                  v97 = OUTLINED_FUNCTION_12_111(v89, v90, v91, v92, v93, v94, v95, v96, v286, v292, v296, v301, v306, *(&v306 + 1), v313, v317, v322, v326, v330, v336, v341, v347, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, *v383, *&v383[8], *&v383[16], *&v383[24], *&v383[32], *&v383[40], *&v383[48], *&v383[56], *&v383[64], *&v383[72], *&v383[80], *&v383[88], *&v383[96], *&v383[104], *&v383[112], *&v383[120], *&v383[128], v384[0]);
                  if (v13 && v41 == v384)
                  {

                    goto LABEL_60;
                  }

                  a1 = OUTLINED_FUNCTION_9_6(v97, v98, v99);

                  if (a1)
                  {
                    goto LABEL_60;
                  }

                  break;
                }
              }
            }
          }

          LOWORD(v384[0]) = 33;
          if (*(a2 + 16))
          {
            v101 = *(a2 + 40);
            sub_1E37414E0(v36, v37, v38);
            sub_1E4205DA4();
            OUTLINED_FUNCTION_3_171();
            while (1)
            {
              OUTLINED_FUNCTION_1_203();
              if ((v110 & 1) == 0)
              {
                break;
              }

              v111 = OUTLINED_FUNCTION_20_80(v102, v103, v104, v105, v106, v107, v108, v109, v286, v292, v296, v301, v306, *(&v306 + 1), v313, v317, v322, v326, v330, v336, v341, v347, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374);
              if (OUTLINED_FUNCTION_5_154(v111, v112, v113, v114, v115, v116, v117, v118, v289, v295, v299, v304, v309, v312, v316, v320, v325, v329, v333, v339, v344, v350, v356, v360, __srcc, v368, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383[0], *&v383[8], *&v383[16], *&v383[24], *&v383[32], *&v383[40], *&v383[48], *&v383[56], *&v383[64], *&v383[72], *&v383[80], *&v383[88], *&v383[96], *&v383[104], *&v383[112], *&v383[120], *&v383[128], v384[0]))
              {
                LOWORD(v369) = *(v39 + 98);
                LOWORD(v380) = 33;
                v121 = sub_1E3742F1C(a1 + 1, v119, v120);
                OUTLINED_FUNCTION_7_165(v121);
                v122 = OUTLINED_FUNCTION_8_129();
                v130 = OUTLINED_FUNCTION_12_111(v122, v123, v124, v125, v126, v127, v128, v129, v286, v292, v296, v301, v306, *(&v306 + 1), v313, v317, v322, v326, v330, v336, v341, v347, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, *v383, *&v383[8], *&v383[16], *&v383[24], *&v383[32], *&v383[40], *&v383[48], *&v383[56], *&v383[64], *&v383[72], *&v383[80], *&v383[88], *&v383[96], *&v383[104], *&v383[112], *&v383[120], *&v383[128], v384[0]);
                if (v13 && v101 == v384)
                {
                }

                else
                {
                  a1 = OUTLINED_FUNCTION_9_6(v130, v131, v132);

                  if ((a1 & 1) == 0)
                  {
                    break;
                  }
                }

                v353 = v39;
                goto LABEL_61;
              }
            }
          }

LABEL_61:
          if (v35 == v34)
          {

            v28 = v381;
            v17 = &unk_1E4298000;
            goto LABEL_66;
          }
        }

LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
        goto LABEL_223;
      }
    }

    v353 = 0;
    v28 = MEMORY[0x1E69E7CC0];
  }

LABEL_66:
  v305 = [objc_opt_self() current];
  sub_1E3C2AE10();
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v142 = sub_1E32AE9B0(v28);
  if (!v142)
  {
    goto LABEL_75;
  }

  v143 = v142;
  if (v142 < 1)
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  for (i = 0; i != v143; ++i)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v28);
    }

    else
    {
    }

    OUTLINED_FUNCTION_12_6();
    if ((*(v145 + 392))())
    {
      OUTLINED_FUNCTION_30();
      (*(v146 + 1640))(v137, v139, v141);
    }
  }

LABEL_75:
  v147 = v353;
  if (v353)
  {
    OUTLINED_FUNCTION_12_6();
    if ((*(v148 + 392))())
    {
      OUTLINED_FUNCTION_30();
      (*(v149 + 1640))(v137, v139, v141);
    }
  }

  if (!sub_1E388A954(v28) || (OUTLINED_FUNCTION_26_0(), v151 = (*(v150 + 392))(), , !v151) || (OUTLINED_FUNCTION_8(), v153 = (*(v152 + 744))(), , (*&v306 = v153) == 0))
  {
    if ((v326)())
    {
      OUTLINED_FUNCTION_30();
      *&v306 = (*(v154 + 744))();
    }

    else
    {
      *&v306 = 0;
    }
  }

  if (!sub_1E388A954(v28))
  {
    goto LABEL_89;
  }

  type metadata accessor for ImageViewModel();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_30();
  v156 = (*(v155 + 1032))(HIDWORD(v365));
  v158 = v157;

  if (v158)
  {
LABEL_89:
    v156 = 0;
  }

  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v160 = OUTLINED_FUNCTION_24_3(v159);
  *(v160 + 16) = v17[136];
  v300 = v160;
  *(v160 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v380 = 0;
  memcpy(v384, __src, 0x82uLL);
  v321 = v139;
  v340 = v28;
  if (sub_1E3D44104(v384) == 1)
  {
    v290 = 0;
    HIDWORD(v292) = 0;
    v161 = 0.0;
    LODWORD(v326) = 1;
    v162 = 0.0;
    v163 = 1;
    goto LABEL_101;
  }

  LODWORD(v326) = LOBYTE(v384[13]);
  v164 = memcpy(v383, &v384[1], 0x52uLL);
  v162 = 0.0;
  if (*&v383[72] == 1)
  {
    HIDWORD(v292) = 0;
    v163 = 1;
  }

  else
  {
    if (*&v383[72])
    {
      v163 = v383[16];
      OUTLINED_FUNCTION_15_113(v164, v165, v166, v167, v168, v169, v170, v171, v286, v292, v160, v305, v306, *(&v306 + 1), v313, v321, v322, v326, v330, v28, v341, v347, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379, *&v383[72], v381, v382);
      goto LABEL_166;
    }

    if ((v383[16] & 1) == 0)
    {
      v163 = 0;
      v161 = *v383;
      v162 = *&v383[8];
      HIDWORD(v292) = v383[41];
      goto LABEL_100;
    }

    v163 = 1;
    HIDWORD(v292) = v383[41];
  }

  v161 = 0.0;
LABEL_100:
  OUTLINED_FUNCTION_15_113(v164, v165, v166, v167, v168, v169, v170, v171, v286, v292, v160, v305, v306, *(&v306 + 1), v313, v321, v322, v326, v330, v28, v341, v347, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382);
LABEL_101:
  v172 = sub_1E32AE9B0(v28);
  if (!v172)
  {
LABEL_166:
    LODWORD(v357) = 0;
    if (!v147)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  v173 = v172;
  if (v172 < 1)
  {
LABEL_224:
    __break(1u);
    return;
  }

  LODWORD(v357) = 0;
  v174 = 0;
  v175 = v28 & 0xC000000000000001;
  v176 = v161 == 0.0;
  if (v162 != 0.0)
  {
    v176 = 0;
  }

  v334 = v176;
  v177 = __src;
  v351 = v163;
  v345 = v28 & 0xC000000000000001;
  do
  {
    if (v175)
    {
      MEMORY[0x1E6911E60](v174, v28);
    }

    else
    {
    }

    memcpy(v383, v177, 0x82uLL);
    if (sub_1E3D44104(v383) != 1 && (v383[128] & 1) != 0)
    {
      if ((v163 & 1) == 0)
      {
        type metadata accessor for ImageViewModel();
        if (swift_dynamicCastClass() != 0 && !v334)
        {
          v178 = OUTLINED_FUNCTION_6_12();
          v181 = sub_1E3C3E520(v179, v178, v180);
          if (v181)
          {
            v182 = v380;
            if (!v380)
            {
              v182 = MEMORY[0x1E69E7CC0];
            }

            v380 = v182;
            v183 = v181;
            MEMORY[0x1E6910BF0]();
            OUTLINED_FUNCTION_18_63();
            if (v243)
            {
              OUTLINED_FUNCTION_11_118(v184);
              sub_1E42062F4();
            }

            OUTLINED_FUNCTION_74();
            sub_1E4206324();

            v177 = __src;
          }
        }
      }

      goto LABEL_145;
    }

    if (v163)
    {
      goto LABEL_145;
    }

    type metadata accessor for ImageViewModel();
    v185 = swift_dynamicCastClass();
    if (!v185)
    {
      goto LABEL_145;
    }

    v186 = v185;
    OUTLINED_FUNCTION_26_0();
    LODWORD(v357) = (*(v187 + 1040))(HIDWORD(v365));
    v188 = v161;
    v189 = v162;
    if ([objc_opt_self() isPad])
    {
      v188 = v161;
      v189 = v162;
      if (sub_1E3A2511C(HIDWORD(v365)))
      {
        v190 = OUTLINED_FUNCTION_6_12();
        v188 = sub_1E3C3E6B4(v191, v192, v193, v194, v195, v196, v190, v197);
        v189 = v198;
      }
    }

    v199 = *(*v186 + 392);

    v201 = v199(v200);

    if (!v201)
    {
      v213 = v189;
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_11_13();
    v203 = COERCE_DOUBLE((*(v202 + 352))());
    v205 = v204;
    OUTLINED_FUNCTION_11_13();
    v207 = COERCE_DOUBLE((*(v206 + 248))());
    v209 = v208;
    v210 = (*(*v201 + 432))();
    if ((v211 & 1) == 0)
    {
      v212 = OUTLINED_FUNCTION_10_114(v210);
      if ((v205 & 1) == 0)
      {
        v213 = v203;
        if (v203 > 0.0 && v189 > v203)
        {
          v188 = round(v212 * v203);
          if ((v209 & 1) == 0)
          {
            v219 = v207;
            v222 = v207 <= 0.0 || v188 <= v207;
            v28 = v340;
            if (v222)
            {
              goto LABEL_136;
            }

            v213 = round(v207 / v212);
            goto LABEL_163;
          }

          goto LABEL_134;
        }
      }

      if ((v209 & 1) == 0)
      {
        v219 = v207;
        v220 = v207 <= 0.0 || v188 <= v207;
        v213 = v189;
        v28 = v340;
        if (v220)
        {
          goto LABEL_136;
        }

        v213 = round(v207 / v212);
        if ((v205 & 1) == 0)
        {
          v221 = v203 <= 0.0 || v213 <= v203;
          v188 = v207;
          if (!v221)
          {
            v188 = round(v212 * v203);
            v213 = v203;
          }

          goto LABEL_136;
        }

LABEL_163:
        v188 = v219;
        goto LABEL_136;
      }
    }

    v213 = v189;
LABEL_134:
    v28 = v340;
LABEL_136:
    if (v188 != 0.0 || v213 != 0.0)
    {
      v215 = sub_1E3C3E520(v186, v188, v213);
      if (v215)
      {
        v216 = v380;
        if (!v380)
        {
          v216 = MEMORY[0x1E69E7CC0];
        }

        v380 = v216;
        v217 = v215;
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_18_63();
        if (v243)
        {
          OUTLINED_FUNCTION_11_118(v218);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_74();
        sub_1E4206324();
      }
    }

    v177 = __src;
    v163 = v351;
    v175 = v345;
LABEL_145:
    ++v174;
  }

  while (v173 != v174);
  if (!v353)
  {
LABEL_168:
    v335 = 0;
    v346 = 0;
    v352 = 0;
    goto LABEL_172;
  }

LABEL_167:
  if (v163)
  {
    goto LABEL_168;
  }

  v223 = OUTLINED_FUNCTION_6_12();
  v226 = sub_1E3C3E520(v224, v223, v225);
  type metadata accessor for ImageViewModel();
  v352 = v226;
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v228 = *(v227 + 904);

    v335 = v228(v229);
    v346 = v230;
  }

  else
  {

    v335 = 0;
    v346 = 0;
  }

LABEL_172:
  v231 = v382;
  *&v369 = MEMORY[0x1E69E7CC0];
  v232 = sub_1E32AE9B0(v382);
  v233 = 0;
  while (v232 != v233)
  {
    if ((v382 & 0xC000000000000001) != 0)
    {
      v234 = MEMORY[0x1E6911E60](v233, v382);
    }

    else
    {
      if (v233 >= *((v382 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_220;
      }

      v234 = *(v382 + 8 * v233 + 32);
    }

    if (__OFADD__(v233, 1))
    {
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    if (*v234 != _TtC8VideosUI14VideoViewModel)
    {

LABEL_182:
      ++v233;
      continue;
    }

    v241 = sub_1E3E3AB0C(HIDWORD(v365), __src, v235, v236, v237, v238, v239, v240);

    if (!v241)
    {
      goto LABEL_182;
    }

    MEMORY[0x1E6910BF0](v242);
    OUTLINED_FUNCTION_18_63();
    if (v243)
    {
      OUTLINED_FUNCTION_11_118(v244);
      sub_1E42062F4();
    }

    OUTLINED_FUNCTION_74();
    sub_1E4206324();
    v322 = v369;
    ++v233;
  }

  v245 = objc_allocWithZone(VUIMediaInfo);

  v246 = sub_1E376538C(6, v322, v380, 0);
  v247 = v306;
  if (v306)
  {
    v248 = v306;
  }

  else
  {
    v248 = [objc_opt_self() grayColor];
    v247 = 0;
  }

  v249 = v321;
  v250 = v352;
  v251 = v247;
  [v246 setBackgroundColor_];

  v252 = sub_1E3D42FF8(v300);

  sub_1E3D44094(v252, v246);
  [v246 setGradientDisabled_];
  [v246 setShouldDelayLoadingImage_];
  [v246 setAlphaImageProxy_];
  if (v346)
  {
    v253 = sub_1E4205ED4();
  }

  else
  {
    v253 = 0;
  }

  [v246 setAlphaLayerAccessibilityText_];

  v254 = 0.0;
  if (sub_1E388A954(v382) && (OUTLINED_FUNCTION_30(), v256 = (*(v255 + 392))(), , v256))
  {
    type metadata accessor for VideoLayout();
    v257 = swift_dynamicCastClass();
    v258 = v257;
    if (v257)
    {
      v259 = *(*v257 + 432);

      v249 = v321;
      v261 = v259(v260);
      LOBYTE(v259) = v262;

      if ((v259 & 1) == 0)
      {
        v254 = *&v261;
      }
    }

    else
    {
    }
  }

  else
  {
    v258 = 0;
  }

  [v246 setPrimaryVideoAspectRatio_];
  if (v258)
  {
    v263 = *(*v258 + 1688);

    v265 = v263(v264);
  }

  else
  {

    v265 = 0;
  }

  [v246 setShowsSecondaryVideoView_];
  if (!sub_1E388A954(v382))
  {
    v369 = 0u;
    v370 = 0u;
    goto LABEL_207;
  }

  LOBYTE(v379) = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v266 + 776))(&v369, &v379, &unk_1F5D5DA38, &off_1F5D5C978);

  if (!*(&v370 + 1))
  {
LABEL_207:
    sub_1E325F748(&v369, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_208;
  }

  if (OUTLINED_FUNCTION_24_75(v267, v268, v269, MEMORY[0x1E69E6370], v270, v271, v272, v273, v291, v292, v300, v305, v306, *(&v306 + 1), v313, v321, v322, v326, v335, v340, v346, v352, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379))
  {
    v274 = v379;
    goto LABEL_209;
  }

LABEL_208:
  v274 = 0;
LABEL_209:
  [v246 setIsAudioOnly_];
  v275 = sub_1E388A954(v231);

  if (!v275)
  {
    v369 = 0u;
    v370 = 0u;
    goto LABEL_214;
  }

  LOBYTE(v379) = 1;
  OUTLINED_FUNCTION_8();
  (*(v276 + 776))(&v369, &v379, &unk_1F5D5DA38, &off_1F5D5C978);

  if (!*(&v370 + 1))
  {
LABEL_214:
    sub_1E325F748(&v369, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_215;
  }

  if (OUTLINED_FUNCTION_24_75(v277, v278, v279, MEMORY[0x1E69E6530], v280, v281, v282, v283, v291, v292, v300, v305, v306, *(&v306 + 1), v313, v321, v322, v326, v335, v340, v346, v352, v353, v357, __src, v365, v369, *(&v369 + 1), v370, *(&v370 + 1), v371, v372, v373, v374, v375, v376, v377, v378, v379))
  {
    v284 = v379;
    v285 = [v246 tvpPlaylist];
    [v285 setRepeatMode_];
  }

LABEL_215:
  if ((v326 & 1) == 0)
  {
    [v246 setPlaybackDelayInterval_];
  }
}

char *sub_1E3D42FF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1E37EBF70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1E37EBF70((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_1E329504C(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

double sub_1E3D43160()
{
  if (qword_1EE28EF40 != -1)
  {
    OUTLINED_FUNCTION_6_149(&qword_1EE28EF40);
  }

  return result;
}

id sub_1E3D431B4(uint64_t a1, uint64_t a2, char a3, void *__src, uint64_t a5)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  memcpy(__dst, __src, 0x82uLL);
  v11 = sub_1E3D44104(__dst);
  v13 = __dst[0];
  if (v11 == 1 || __dst[0] == 7)
  {
    v13 = sub_1E3A2532C();
  }

  if (!sub_1E38E5664(39, a2, v12))
  {
    goto LABEL_24;
  }

  memcpy(v175, __src, 0x82uLL);
  if (sub_1E3D44104(v175) == 1 || *&v175[10] == 1 || (LOBYTE(v175[3]) & 1) != 0 || v175[1] == 0.0 && v175[2] == 0.0)
  {
    return 0;
  }

  sub_1E3C7DE74(a3);
  OUTLINED_FUNCTION_19_97(v16, v17, v18, v19, v20, v21, v22, v23, v138, v142, v146, v150, v154, v158, v162, *(&v162 + 1), v169, *(&v169 + 1), *v174);

  if (!*&v174[24])
  {
    sub_1E325F748(v174, &unk_1ECF296E0, &unk_1E4298030);
LABEL_24:
    OUTLINED_FUNCTION_13_122();
    v48 = 0;
    goto LABEL_25;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_4_178(v24, v25, v26, v27, v28, v29, v30, v31, v138, v142, v146, v150, v154, v158, v162);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v6 = v162;
  sub_1E384EE08(35);
  LOBYTE(v5) = v32;
  *&v174[24] = v24;
  *v174 = v162;
  v34 = sub_1E3A7CD30(v33, v32, v174, 0);

  __swift_destroy_boxed_opaque_existential_1(v174);
  if (!v34)
  {
    goto LABEL_24;
  }

  v35 = *(*v34 + 392);

  v37 = v35(v36);

  if (v37)
  {
    v38 = [objc_opt_self() current];
    sub_1E3C2AE10();
    v40 = v39;
    (*(*v37 + 1640))();
  }

  v41 = *(*v34 + 392);
  v6 = (*v34 + 392);

  v5 = v41(v42);

  if (v5)
  {
    v150 = (*(*v5 + 352))(v43);
    v6 = v44;
    v146 = (*(*v5 + 248))();
    v45 = (*(*v5 + 432))();
    if ((v46 & 1) == 0)
    {
      OUTLINED_FUNCTION_10_114(v45);
    }
  }

  type metadata accessor for ImageViewModel();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {

    OUTLINED_FUNCTION_13_122();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_11_13();
  v123 = OUTLINED_FUNCTION_6_12();
  v125 = v124(0, v123);
  v6 = v125;
  if (v126 != 1)
  {
    if (v126 != 255)
    {
      sub_1E379098C(v125, v126);
    }

    goto LABEL_24;
  }

  v146 = v5;
  OUTLINED_FUNCTION_11_13();
  LOBYTE(v5) = (*(v127 + 1040))(v13);
  if ([objc_opt_self() makeImageProxyWithDescriptor_])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v162 = 0u;
    v169 = 0u;
  }

  *v174 = v162;
  *&v174[16] = v169;
  v150 = v48;
  v142 = v6;
  if (!*(&v169 + 1))
  {
    sub_1E325F748(v174, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_80;
  }

  sub_1E3280A90(0, &qword_1EE23B340, 0x1E69DF730);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_80:
    v48 = 0;
    goto LABEL_81;
  }

  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v48 = OUTLINED_FUNCTION_24_3(v128);
  *(v48 + 16) = xmmword_1E4298880;
  *(v48 + 32) = v158;
LABEL_81:
  OUTLINED_FUNCTION_8();
  v138 = *(v129 + 392);

  v131 = v138(v130);

  if (v131)
  {
    OUTLINED_FUNCTION_8();
    v6 = (*(v132 + 744))();
  }

  else
  {
    v6 = 0;
  }

  OUTLINED_FUNCTION_8();
  v134 = (*(v133 + 1032))(v13);
  if (v135)
  {
    v136 = 0;
  }

  else
  {
    v136 = v134;
  }

  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v13 = OUTLINED_FUNCTION_24_3(v137);
  *(v13 + 16) = xmmword_1E4298880;
  *(v13 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];

  sub_1E379098C(v142, 1u);

LABEL_25:
  if (!sub_1E38E5664(95, a2, v47))
  {
    v65 = 0;
    goto LABEL_46;
  }

  sub_1E3C7DE74(6);
  OUTLINED_FUNCTION_19_97(v49, v50, v51, v52, v53, v54, v55, v56, v138, v142, v146, v150, v154, v158, v162, *(&v162 + 1), v169, *(&v169 + 1), *v174);

  v155 = a5;
  if (*&v174[24])
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_4_178(v57, v58, v59, v57, v60, v61, v62, v63, v139, v143, v147, v151, a5, v159, v163);
    if (swift_dynamicCast())
    {
      v64 = v163;
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    sub_1E325F748(v174, &unk_1ECF296E0, &unk_1E4298030);
    v64 = 0;
  }

  sub_1E3C7DE74(8);
  OUTLINED_FUNCTION_19_97(v66, v67, v68, v69, v70, v71, v72, v73, v139, v143, v147, v151, v155, v159, v163, v167, v170, v172, *v174);

  if (!*&v174[24])
  {

    sub_1E325F748(v174, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_40:
    sub_1E3C7DE74(8);
    OUTLINED_FUNCTION_19_97(v76, v77, v78, v79, v80, v81, v82, v83, v138, v142, v146, v150, v154, v158, v162, *(&v162 + 1), v169, *(&v169 + 1), *v174);

    if (*&v174[24])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BC0, &qword_1E42C5FB0);
      if (swift_dynamicCast())
      {
        v65 = v162;
      }

      else
      {
        v65 = 0;
      }
    }

    else
    {
      sub_1E325F748(v174, &unk_1ECF296E0, &unk_1E4298030);
      v65 = 0;
    }

    goto LABEL_45;
  }

  sub_1E388A824(v162);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  v74 = sub_1E42062A4();

  if (v64)
  {
    sub_1E3744600(v64);

    v64 = sub_1E4205C44();
  }

  v75 = [objc_opt_self() videosPlayablesFromDictionaries:v74 andMetadataDictionary:v64];

  if (!v75)
  {
    goto LABEL_40;
  }

  sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
  v65 = sub_1E42062B4();

LABEL_45:
  a5 = v154;
LABEL_46:
  sub_1E3C7ED20(14);
  OUTLINED_FUNCTION_19_97(v84, v85, v86, v87, v88, v89, v90, v91, v138, v142, v146, v150, v154, v158, v162, *(&v162 + 1), v169, *(&v169 + 1), *v174);

  if (!*&v174[24])
  {
    sub_1E325F748(v174, &unk_1ECF296E0, &unk_1E4298030);
LABEL_51:
    v102 = objc_allocWithZone(VUIMediaInfo);
    v15 = sub_1E376538C(a5, v65, v48, 0);
    if (!v6)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v92 = sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  OUTLINED_FUNCTION_4_178(v92, v93, v94, v92, v95, v96, v97, v98, v140, v144, v148, v152, v156, v160, v164);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  v15 = v164;
  if (!v6)
  {
LABEL_49:
    v99 = objc_opt_self();
    v100 = v15;
    v101 = [v99 grayColor];
    goto LABEL_53;
  }

LABEL_52:
  v103 = v15;
  v101 = v6;
LABEL_53:
  v104 = v6;
  [v15 setBackgroundColor_];

  if (v13)
  {
    sub_1E3D42FF8(v13);

    v105 = sub_1E42062A4();
  }

  else
  {
    v105 = 0;
  }

  [v15 setImageThemes_];

  [v15 setGradientDisabled_];
  sub_1E3C7DE74(2);
  OUTLINED_FUNCTION_19_97(v106, v107, v108, v109, v110, v111, v112, v113, v140, v144, v148, v152, v156, v160, v164, v168, v171, v173, *v174);

  if (*&v174[24])
  {
    OUTLINED_FUNCTION_4_178(v114, v115, v116, MEMORY[0x1E69E6370], v117, v118, v119, v120, v141, v145, v149, v153, v157, v161, v165);
    if (swift_dynamicCast())
    {
      v121 = v166;
      goto LABEL_61;
    }
  }

  else
  {
    sub_1E325F748(v174, &unk_1ECF296E0, &unk_1E4298030);
  }

  v121 = 0;
LABEL_61:
  [v15 setShouldDelayLoadingImage_];

  memcpy(v174, __src, sizeof(v174));
  if (sub_1E3D44104(v174) != 1 && (v174[104] & 1) == 0)
  {
    [v15 setPlaybackDelayInterval_];
  }

  return v15;
}

uint64_t sub_1E3D43D3C()
{
  OUTLINED_FUNCTION_30();
  result = (*(v0 + 488))();
  if (result)
  {
    v2 = *(result + 16);

    if (v2)
    {
      OUTLINED_FUNCTION_8();
      result = (*(v3 + 464))();
      if (result)
      {
        v4 = OUTLINED_FUNCTION_6_12();
        sub_1E3D43E10(v5, v6, v7, v4, v8);

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3D43E10(unint64_t a1, char a2, void *a3, double a4, double a5)
{
  v9 = sub_1E32AE9B0(a1);
  for (i = 0; v9 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v11 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    type metadata accessor for LayoutGrid();
    v12 = sub_1E3A2579C(a4);
    sub_1E3742F1C(v12, v13, v14);
    sub_1E4206254();
    sub_1E4206254();
    if (v30 == v28 && v31 == v29)
    {
    }

    else
    {
      v16 = sub_1E42079A4();

      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    type metadata accessor for ImageViewModel();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v19 = objc_opt_self();

      v20 = [v19 isPad];
      v21 = a4;
      v22 = a5;
      if (v20)
      {
        v23 = sub_1E3A2511C(v12);
        v21 = a4;
        v22 = a5;
        if (v23)
        {
          v21 = sub_1E3C3E6B4(v11, a2 & 1, v24, v25, v26, v27, a4, a5);
        }
      }

      if (sub_1E3C3E520(v18, v21, v22))
      {
        if (!*a3)
        {
          *a3 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1E6910BF0]();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
      }
    }

LABEL_25:
  }
}

void sub_1E3D44094(uint64_t a1, void *a2)
{
  v3 = sub_1E42062A4();

  [a2 setImageThemes_];
}

uint64_t sub_1E3D44104(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3D44124(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 130))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3D44164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 130) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 130) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3D441F0(char a1)
{
  result = 0x6E49686372616553;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      v5 = 9;
      goto LABEL_13;
    case 3:
      OUTLINED_FUNCTION_70_1();
      result = v6 | 1;
      break;
    case 4:
    case 7:
      OUTLINED_FUNCTION_70_1();
      result = v7 | 6;
      break;
    case 5:
      return result;
    case 6:
      v5 = 10;
LABEL_13:
      result = v5 | 0xD000000000000010;
      break;
    case 8:
      OUTLINED_FUNCTION_70_1();
      result = v10 + 20;
      break;
    case 9:
      OUTLINED_FUNCTION_70_1();
      result = v4 | 2;
      break;
    case 10:
      OUTLINED_FUNCTION_70_1();
      result = v9 | 3;
      break;
    case 11:
      result = 0x6E497374726F7053;
      break;
    case 12:
      OUTLINED_FUNCTION_70_1();
      result = v3 | 8;
      break;
    case 13:
      OUTLINED_FUNCTION_70_1();
      result = v8 | 0xF;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_1E3D443C0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D44410(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "AppleMusicSubscriptionInterface";
  }

  else
  {
    v4 = "onDocumentRequest";
  }

  if (a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (a2)
  {
    v6 = "onDocumentRequest";
  }

  else
  {
    v6 = "AppleMusicSubscriptionInterface";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D444B4(char a1, char a2)
{
  v3 = sub_1E3D441F0(a1);
  v5 = v4;
  if (v3 == sub_1E3D441F0(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D44540(char a1)
{
  sub_1E4207B44();
  sub_1E3D441F0(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D445B0()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44608()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44660()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D446B8()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44734(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D447F0(uint64_t a1, char a2)
{
  sub_1E3D441F0(a2);
  sub_1E4206014();
}

uint64_t sub_1E3D4484C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D441F0(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D448AC(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44900(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44954(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D449A8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D44A24(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

unint64_t sub_1E3D44A78(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3D443C0();
  *v1 = result;
  return result;
}

unint64_t sub_1E3D44AA0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3D441F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D44C60()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3D44CAC(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E3D44D08(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3D44C60();
  *v1 = result;
  return result;
}

unint64_t sub_1E3D44D30@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3D44CAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_1E3D44D64()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3D44DC4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3D44D64();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3D44E1C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3D44E7C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3D44E1C();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3D44ED4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3D44F34(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3D44ED4();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3D44F8C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3D44FEC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3D44F8C();
  return OUTLINED_FUNCTION_19_8(v1);
}

id _s8VideosUIAAC19initializeJSContextyySo0D0CFZ_0(uint64_t a1)
{
  v2 = [objc_opt_self() currentAppContext];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v21 = a1;
    while (2)
    {
      v5 = byte_1F5D81088[v4++ + 32];
      switch(v5)
      {
        case 1:
          v8 = type metadata accessor for JSPromiseOperation();
          goto LABEL_9;
        case 2:
          v8 = type metadata accessor for JSMultiPartPromiseOperation();
LABEL_9:
          sub_1E3ACD844(v8);
          goto LABEL_17;
        case 3:
          type metadata accessor for JSSignpost();
          v11 = v3;
          v7 = sub_1E385B864(v3);
          goto LABEL_16;
        case 4:
          type metadata accessor for JSNativeStorage();
          v12 = v3;
          v7 = sub_1E385B864(v3);
          goto LABEL_16;
        case 8:
          type metadata accessor for JSLocationAuthorizationStatus();
          v10 = v3;
          v7 = sub_1E385B864(v3);
          goto LABEL_16;
        case 9:
          type metadata accessor for JSSearchRAC();
          v13 = v3;
          v14 = sub_1E385B864(v3);
          v15 = v14;
          sub_1E3ACD7BC(v14);
          v16 = *(**sub_1E3A62EB4() + 192);
          v17 = v15;

          v16(v14);
          a1 = v21;

          goto LABEL_17;
        case 10:
          type metadata accessor for JSHighlightsManager();
          v6 = v3;
          v7 = sub_1E385B864(v3);
          goto LABEL_16;
        case 11:
          goto LABEL_17;
        case 12:
          type metadata accessor for JSDeviceDiscovery();
          v9 = v3;
          v7 = sub_1E41EC720();
          goto LABEL_16;
        case 13:
          type metadata accessor for JSAppleMusicSubscription();
          v7 = sub_1E3E97D88(v3);
          goto LABEL_16;
        default:
          type metadata accessor for JSService();
          v18 = v3;
          v7 = sub_1E385B864(v3);
LABEL_16:
          sub_1E3ACD7BC(v7);
LABEL_17:
          if (v4 != 14)
          {
            continue;
          }

          break;
      }

      break;
    }
  }

  v19 = objc_opt_self();

  return [v19 exposeObjectsInJSContext_];
}

void sub_1E3D45418(int a1, uint64_t a2, void *a3)
{
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24[-v14];
  if (qword_1EE288088 == -1)
  {
    __break(1u);
  }

  else
  {
    if ((qword_1EE288088 + 1) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v16 = qword_1EE288088 + 3;
    }

    else
    {
      v16 = qword_1EE288088 + 1;
    }

    qword_1EE288088 = v16;
    v26 = &v24[-v14];
    sub_1E41FFC04();
    (*(v8 + 16))(v12, v15, v6);
    sub_1E37B5450(a2, v27);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = a1;
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v8 + 32))(v20 + v17, v12, v6);
    *(v20 + v18) = v16;
    *(v20 + v19) = a3;
    v21 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = v27[1];
    *v21 = v27[0];
    *(v21 + 16) = v22;
    *(v21 + 32) = v27[2];
    *(v21 + 48) = v28;
    *(v21 + 56) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B80, &qword_1E42CD560);
    swift_allocObject();
    v23 = a3;
    sub_1E4200614();
    (*(v8 + 8))(v26, v6);
  }
}

void sub_1E3D45654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v38 = a7;
  v36 = a6;
  v37 = a5;
  v35 = a4;
  v11 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_4();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  v18 = sub_1E4206BA4();
  v19 = VUISignpostLogObject(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E76D8];
  *(v20 + 16) = xmmword_1E4297BE0;
  v22 = MEMORY[0x1E69E7738];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  *(v20 + 32) = a4;
  sub_1E41FFB94();

  (*(v13 + 16))(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  sub_1E37B5450(v36, v40);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 79) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v13 + 32))(v26 + v23, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v26 + v24) = v35;
  v27 = v26 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v27 + 48) = v41;
  v28 = v40[2];
  v29 = v40[0];
  *(v27 + 16) = v40[1];
  *(v27 + 32) = v28;
  *v27 = v29;
  *(v27 + 56) = v38;
  v30 = v37;
  *(v26 + v25) = v37;
  v31 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_1E3BA1D40;
  v31[1] = v17;
  aBlock[4] = sub_1E3D469A0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E377674C;
  aBlock[3] = &block_descriptor_101;
  v32 = _Block_copy(aBlock);
  v33 = v30;

  [v33 evaluate_];
  _Block_release(v32);
}

void sub_1E3D4596C(uint64_t a1, uint64_t a2)
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_13_123();
  v7 = *(v2 + v6);
  v9 = *(v2 + v8);
  v10 = v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 56);

  sub_1E3D45654(a1, a2, v2 + v5, v7, v9, v10, v11);
}

void sub_1E3D45A24(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v84 = a7;
  v85 = a8;
  v75 = a6;
  v76 = a5;
  v78 = a4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v81 = v12;
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v79 = v16;
  v80 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4206B94();
  v20 = VUISignpostLogObject(v19);
  sub_1E41FFBA4();

  v21 = sub_1E4206BA4();
  v22 = VUISignpostLogObject(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E76D8];
  v77 = xmmword_1E4297BE0;
  *(v23 + 16) = xmmword_1E4297BE0;
  v25 = MEMORY[0x1E69E7738];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = a3;
  v83 = a2;
  sub_1E41FFB94();

  v26 = sub_1E4205ED4();
  v27 = [a1 objectForKeyedSubscript_];

  if (!v27)
  {
    goto LABEL_43;
  }

  v28 = [v27 toObject];

  if (v28)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  aBlock = v91;
  v88 = v92;
  if (!*(&v92 + 1))
  {
    sub_1E329505C(&aBlock);
    goto LABEL_18;
  }

  type metadata accessor for JSService();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    sub_1E32ADE38();
    v39 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v40 = swift_allocObject();
    v41 = v85;
    *(v40 + 16) = v84;
    *(v40 + 24) = v41;
    v89 = sub_1E3D46A58;
    v90 = v40;
    OUTLINED_FUNCTION_0_224();
    OUTLINED_FUNCTION_4_179(COERCE_DOUBLE(1107296256));
    *&v88 = v42;
    *(&v88 + 1) = &block_descriptor_51_2;
    v43 = _Block_copy(&aBlock);

    sub_1E4203FE4();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    v44 = OUTLINED_FUNCTION_5_155(&qword_1EE23B5D0);
    OUTLINED_FUNCTION_9_120(v44);
    MEMORY[0x1E6911380](0, v18, v14, v43);
    _Block_release(v43);

    v45 = OUTLINED_FUNCTION_18_90();
    v46(v45);
    (*(v79 + 8))(v18, v80);
LABEL_19:
    v47 = 0;
    v48 = 0;
LABEL_20:
    v49 = sub_1E4206B94();
    v50 = VUISignpostLogObject(v49);
    sub_1E41FFBA4();

    sub_1E37FAED8(v47, v48);
    return;
  }

  v29 = v86;
  sub_1E3D441F0(*v78);
  v30 = sub_1E4205ED4();

  v31 = [a1 objectForKeyedSubscript_];

  if (!v31)
  {

    goto LABEL_18;
  }

  if (([v31 isObject] & 1) == 0 || (v32 = *(v78 + 5), __swift_project_boxed_opaque_existential_1(v78 + 1, *(v78 + 4)), v33 = OUTLINED_FUNCTION_50(), v34(v33, v32), sub_1E4205ED4(), OUTLINED_FUNCTION_50(), , v35 = objc_msgSend(v31, sel_objectForKeyedSubscript_, a1), a1, !v35))
  {

    goto LABEL_18;
  }

  if (([v35 isObject] & 1) == 0)
  {

    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v36 = swift_allocObject();
  *(v36 + 16) = v77;
  v37 = *(v78 + 6);
  *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8, qword_1E42B49E0);
  *(v36 + 32) = v37;

  v38 = sub_1E394E11C(v36, v35);
  v78 = v38;
  if (v38)
  {
    if ([v38 toObject])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v88 = 0u;
    }

    v91 = aBlock;
    v92 = v88;
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  OUTLINED_FUNCTION_21_80();
  if (!*(&v88 + 1))
  {
LABEL_29:
    sub_1E329505C(&aBlock);
    goto LABEL_30;
  }

  type metadata accessor for JSPromiseOperation();
  if (OUTLINED_FUNCTION_3_172())
  {

    OUTLINED_FUNCTION_21_80();
    if (*(&v88 + 1))
    {
      if (OUTLINED_FUNCTION_3_172())
      {
        OUTLINED_FUNCTION_20_81();
        v51 = v75;
        v52 = v29;
        v53 = sub_1E3B9EA34();
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_30:
  OUTLINED_FUNCTION_21_80();
  v74 = v35;
  if (!*(&v88 + 1))
  {
    goto LABEL_37;
  }

  type metadata accessor for JSMultiPartPromiseOperation();
  if ((OUTLINED_FUNCTION_3_172() & 1) == 0)
  {
LABEL_38:
    v60 = v31;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_21_80();
  if (!*(&v88 + 1))
  {
LABEL_37:
    v60 = v31;
    sub_1E329505C(&aBlock);
LABEL_39:
    sub_1E32ADE38();
    v61 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v62 = swift_allocObject();
    v63 = v85;
    *(v62 + 16) = v84;
    *(v62 + 24) = v63;
    v89 = sub_1E3D46A60;
    v90 = v62;
    OUTLINED_FUNCTION_0_224();
    OUTLINED_FUNCTION_4_179(COERCE_DOUBLE(1107296256));
    *&v88 = v64;
    *(&v88 + 1) = &block_descriptor_57_0;
    v65 = _Block_copy(&aBlock);

    sub_1E4203FE4();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    v66 = OUTLINED_FUNCTION_5_155(&qword_1EE23B5D0);
    OUTLINED_FUNCTION_9_120(v66);
    MEMORY[0x1E6911380](0, v18, v14, v65);

    _Block_release(v65);
    v67 = OUTLINED_FUNCTION_18_90();
    v68(v67);
    (*(v79 + 8))(v18, v80);
    sub_1E329505C(&v91);
    goto LABEL_19;
  }

  if ((OUTLINED_FUNCTION_3_172() & 1) == 0)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_20_81();
  v54 = v75;
  v55 = v29;
  v53 = sub_1E3B9EB78();
LABEL_35:
  v56 = v53;
  v57 = v29;
  if (v76)
  {
    v58 = *(*v53 + 328);

    v58(v59);
  }

  else
  {
  }

  sub_1E32ADE38();
  v69 = sub_1E4206A04();
  v48 = swift_allocObject();
  v70 = v85;
  v48[2] = v84;
  v48[3] = v70;
  v48[4] = v56;
  OUTLINED_FUNCTION_2_4();
  v71 = swift_allocObject();
  v47 = sub_1E3D46A68;
  *(v71 + 16) = sub_1E3D46A68;
  *(v71 + 24) = v48;
  v89 = sub_1E379E500;
  v90 = v71;
  OUTLINED_FUNCTION_0_224();
  *(&aBlock + 1) = 1107296256;
  *&v88 = sub_1E3839B50;
  *(&v88 + 1) = &block_descriptor_66_0;
  v72 = _Block_copy(&aBlock);

  dispatch_sync(v69, v72);

  _Block_release(v72);

  sub_1E329505C(&v91);
  LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

  if ((v72 & 1) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

unint64_t sub_1E3D46444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37B88;
  if (!qword_1ECF37B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B88);
  }

  return result;
}

unint64_t sub_1E3D464E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37BA0;
  if (!qword_1ECF37BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BA0);
  }

  return result;
}

unint64_t sub_1E3D46538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37BA8;
  if (!qword_1ECF37BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BA8);
  }

  return result;
}

unint64_t sub_1E3D46590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37BB0;
  if (!qword_1ECF37BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BB0);
  }

  return result;
}

unint64_t sub_1E3D465E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37BB8;
  if (!qword_1ECF37BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BB8);
  }

  return result;
}

unint64_t sub_1E3D46640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37BC0;
  if (!qword_1ECF37BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BC0);
  }

  return result;
}

uint64_t sub_1E3D46694(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1E3D4671C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3D467F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3D468EC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1E3D469A0(void *a1)
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_13_123();
  v6 = (v5 + 79) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v4 + 56);

  sub_1E3D45A24(a1, v1 + v3, v7, (v1 + v4), v12, v8, v10, v11);
}

uint64_t sub_1E3D46ACC(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1E3C2F9A0();

  sub_1E3C2E6A0(a1, 0);

  return v2;
}

uint64_t sub_1E3D46B48()
{
  v0 = sub_1E4207A04();

  v1 = 0;
  result = 30;
  switch(v0)
  {
    case 0:
      goto LABEL_102;
    case 1:
      v1 = 1;
      goto LABEL_102;
    case 2:
      v1 = 2;
      goto LABEL_102;
    case 3:
      v1 = 3;
      goto LABEL_102;
    case 4:
      v1 = 4;
      goto LABEL_102;
    case 5:
      v1 = 5;
      goto LABEL_102;
    case 6:
      v1 = 6;
      goto LABEL_102;
    case 7:
      v1 = 7;
      goto LABEL_102;
    case 8:
      v1 = 8;
      goto LABEL_102;
    case 9:
      v1 = 9;
      goto LABEL_102;
    case 10:
      v1 = 10;
      goto LABEL_102;
    case 11:
      v1 = 11;
      goto LABEL_102;
    case 12:
      v1 = 12;
      goto LABEL_102;
    case 13:
      v1 = 13;
      goto LABEL_102;
    case 14:
      v1 = 14;
      goto LABEL_102;
    case 15:
      v1 = 15;
      goto LABEL_102;
    case 16:
      v1 = 16;
      goto LABEL_102;
    case 17:
      v1 = 17;
      goto LABEL_102;
    case 18:
      v1 = 18;
      goto LABEL_102;
    case 19:
      v1 = 19;
      goto LABEL_102;
    case 20:
      v1 = 20;
      goto LABEL_102;
    case 21:
      v1 = 21;
      goto LABEL_102;
    case 22:
      v1 = 22;
      goto LABEL_102;
    case 23:
      v1 = 23;
      goto LABEL_102;
    case 24:
      v1 = 24;
      goto LABEL_102;
    case 25:
      v1 = 25;
      goto LABEL_102;
    case 26:
      v1 = 26;
      goto LABEL_102;
    case 27:
      v1 = 27;
      goto LABEL_102;
    case 28:
      v1 = 28;
      goto LABEL_102;
    case 29:
      v1 = 29;
LABEL_102:
      result = v1;
      break;
    case 30:
      return result;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    default:
      result = 123;
      break;
  }

  return result;
}

uint64_t sub_1E3D46F94(char a1)
{
  result = 0x6E696772616DLL;
  switch(a1)
  {
    case 1:
      v3 = 1684300144;
      return v3 | 0x676E6900000000;
    case 2:
      return 0x6874646977;
    case 3:
      v11 = 1466853741;
      return v11 | 0x6874646900000000;
    case 4:
      v11 = 1467507053;
      return v11 | 0x6874646900000000;
    case 5:
      return 0xD000000000000010;
    case 6:
      return 0x746867696568;
    case 7:
      v15 = 1215195501;
      goto LABEL_61;
    case 8:
      v15 = 1215848813;
LABEL_61:
      v18 = v15 & 0xFFFF0000FFFFFFFFLL | 0x696500000000;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6867000000000000;
    case 9:
    case 25:
    case 31:
    case 36:
    case 37:
    case 57:
    case 78:
    case 79:
    case 111:
    case 114:
      OUTLINED_FUNCTION_70_1();
      return v24 | 1;
    case 10:
      v3 = 1667330163;
      return v3 | 0x676E6900000000;
    case 11:
      return 0x63617053656E696CLL;
    case 12:
      return 0x6E656D6E67696C61;
    case 13:
      return 0xD000000000000010;
    case 14:
      v6 = 1769172848;
      return v6 | 0x6E6F697400000000;
    case 15:
    case 68:
      OUTLINED_FUNCTION_70_1();
      return v25 | 6;
    case 16:
    case 29:
      v18 = 0x696C68676968;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6867000000000000;
    case 17:
      v10 = 0x726564726F62;
      return v10 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
    case 18:
      return 0x65646E756F527369;
    case 19:
      return 0x776F64616873;
    case 20:
    case 71:
    case 74:
    case 109:
    case 110:
      v12 = 5;
      return v12 | 0xD000000000000010;
    case 21:
      return 0x6F6C6F43746E6974;
    case 22:
      v13 = 1701998438;
      return v13 | 0x756F726700000000;
    case 23:
      return 0x4D746E6172626976;
    case 24:
      v13 = 1801675106;
      return v13 | 0x756F726700000000;
    case 26:
    case 41:
    case 65:
    case 83:
    case 115:
      OUTLINED_FUNCTION_70_1();
      return v20 | 2;
    case 27:
    case 28:
    case 72:
    case 88:
    case 106:
    case 107:
      OUTLINED_FUNCTION_70_1();
      return v21 | 8;
    case 30:
      v19 = 0x7463656C6573;
      return v19 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 32:
      v19 = 0x6C6261736964;
      return v19 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 33:
      return 0x6E6564646968;
    case 34:
      return 0x696C417375636F66;
    case 35:
      return 0x72614D7375636F66;
    case 38:
      return 0x4673747065636361;
    case 39:
      return 0x72477265746E6563;
    case 40:
      v9 = 1684632167;
      return v9 | 0x6C79745300000000;
    case 42:
      return 0xD000000000000010;
    case 43:
      return 0xD000000000000010;
    case 44:
      v8 = 0x43664F6D756ELL;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6C6F000000000000;
    case 45:
      return 0x776F52664F6D756ELL;
    case 46:
    case 75:
    case 112:
    case 120:
      OUTLINED_FUNCTION_70_1();
      return v22 | 7;
    case 47:
      v6 = 1634493810;
      return v6 | 0x6E6F697400000000;
    case 48:
      v9 = 1954047348;
      return v9 | 0x6C79745300000000;
    case 49:
    case 61:
      v12 = 10;
      return v12 | 0xD000000000000010;
    case 50:
    case 63:
    case 64:
      OUTLINED_FUNCTION_70_1();
      return v14 | 4;
    case 51:
      return 0x696D6146746E6F66;
    case 52:
      return 0x657A6953746E6F66;
    case 53:
      return 0x74646957746E6F66;
    case 54:
      return 0x67696557746E6F66;
    case 55:
      return 0x74616546746E6F66;
    case 56:
      v4 = 0x4D646E656C62;
      return v4 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
    case 58:
      return 0x6E61725474786574;
    case 59:
      return 0x67696C4174786574;
    case 60:
      v12 = 11;
      return v12 | 0xD000000000000010;
    case 62:
      return 0x664F7265626D756ELL;
    case 66:
      return 0x705372657474656CLL;
    case 67:
      return 0x61657242656E696CLL;
    case 69:
      v7 = 0x737961776C61;
      goto LABEL_99;
    case 70:
      return 0x66456C6175736976;
    case 73:
    case 76:
      OUTLINED_FUNCTION_70_1();
      return v23 | 0xF;
    case 77:
      OUTLINED_FUNCTION_70_1();
      return v5 | 0xC;
    case 80:
      return 0x46656C6163737075;
    case 81:
      v10 = 0x746365707361;
      return v10 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
    case 82:
      return 0x72416C6175736976;
    case 84:
      v4 = 0x4D656C616373;
      return v4 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
    case 85:
      return 0x6F43726564726F62;
    case 86:
      return 0x6957726564726F62;
    case 87:
      return 0xD000000000000010;
    case 89:
      v8 = 0x686563616C70;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6C6F000000000000;
    case 90:
      return 0xD000000000000010;
    case 91:
      return 0xD000000000000010;
    case 92:
      return 0xD000000000000010;
    case 93:
      return 0x6168536567616D69;
    case 94:
      OUTLINED_FUNCTION_70_1();
      return v17 + 16;
    case 95:
      v7 = 0x6C6F626D7973;
LABEL_99:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 96:
      result = 0x65546C6F626D7973;
      break;
    case 97:
      result = 0xD000000000000010;
      break;
    case 98:
      OUTLINED_FUNCTION_70_1();
      result = v16 | 3;
      break;
    case 99:
      OUTLINED_FUNCTION_70_1();
      result = v26 | 0xE;
      break;
    case 100:
      result = 0x6F506C6F626D7973;
      break;
    case 101:
      result = 0x79546E6F74747562;
      break;
    case 102:
      result = 0x7474754272656275;
      break;
    case 103:
      result = 0xD000000000000010;
      break;
    case 104:
      result = 0x69536E6F74747562;
      break;
    case 105:
      result = 0x68536E6F74747562;
      break;
    case 108:
      result = 0x62616E4572756C62;
      break;
    case 113:
    case 117:
      result = 0x746E656964617267;
      break;
    case 116:
      result = 0xD000000000000010;
      break;
    case 118:
      result = 0x6461527472617473;
      break;
    case 119:
      result = 0x7569646152646E65;
      break;
    case 121:
      result = 0x7469617274726F70;
      break;
    case 122:
      result = 0x616F6265726F6373;
      break;
    default:
      return result;
  }

  return result;
}