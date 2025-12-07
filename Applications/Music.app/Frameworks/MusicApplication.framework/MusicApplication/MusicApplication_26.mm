uint64_t type metadata accessor for FeaturedRadioShowCell(uint64_t a1)
{
  result = qword_DFA5B0;
  if (!qword_DFA5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2347F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_234824()
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v25 = v1;
  *&v38[0] = v1;
  *(&v38[0] + 1) = v4;
  v38[1] = xmmword_AF7C20;
  v38[2] = xmmword_AF82C0;
  v39 = v0;
  v40 = 2;
  v41 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v38);
  v23 = v3;
  v24 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v38, v56);
  v19 = v5;

  v6 = sub_ABA560();
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v7 = qword_E718D8;
  v8 = qword_E718D8;
  v9 = [v2 clearColor];
  *&v32[0] = v7;
  *(&v32[0] + 1) = v9;
  v32[1] = xmmword_AF7C20;
  v33 = 0;
  v34 = 0;
  v35 = v6;
  v36 = 2;
  v37 = xmmword_AF7C30;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v32);
  v18 = v8;
  v17 = v9;
  v16 = v6;
  sub_2F118(v32, v56);

  v11 = sub_ABA560();
  v12 = [v2 clearColor];
  *&v26[0] = v1;
  *(&v26[0] + 1) = v12;
  v26[1] = xmmword_AF7C20;
  v27 = 0;
  v28 = 0;
  v29 = v11;
  v30 = 2;
  v31 = xmmword_AF7C30;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF82E0;
  *(v14 + 32) = v19;
  *(v14 + 40) = v10;
  *(v14 + 48) = v13;
  sub_2F118(v26, v56);

  v42[0] = v25;
  v42[1] = v12;
  v43 = xmmword_AF7C20;
  v44 = 0;
  v45 = 0;
  v46 = v11;
  v47 = 2;
  v48 = xmmword_AF7C30;
  sub_2F174(v42);
  v49[0] = v7;
  v49[1] = v9;
  v50 = xmmword_AF7C20;
  v51 = 0;
  v52 = 0;
  v53 = v6;
  v54 = 2;
  v55 = xmmword_AF7C30;
  sub_2F174(v49);
  v56[0] = v25;
  v56[1] = v24;
  v57 = xmmword_AF7C20;
  v58 = xmmword_AF82C0;
  v59 = v20;
  v60 = 2;
  v61 = xmmword_AF9C80;
  sub_2F174(v56);

  return v19;
}

double sub_234C6C(void *a1, double a2)
{
  sub_234824();
  v5 = v4;
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_2F48A4(v5, a1, 0, 0);

  return a2;
}

void sub_234DA8()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headline);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents);
  *v4 = sub_234824();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  sub_ABAFD0();
  __break(1u);
}

void sub_234E6C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 48);
  v25 = *(a2 + 32);
  *v26 = v4;
  v5 = *(a2 + 80);
  *&v26[16] = *(a2 + 64);
  v27 = v5;
  v28 = *(a2 + 96);
  v6 = v26[24];
  if ((*&v26[24] & 0x8000000000000000) == 0)
  {
    v7 = v25;
    v21 = *&v26[8];
    v23 = v27;
    v20 = v26[0];
    if (a1)
    {
      sub_2F118(&v25, v24);
      sub_2F118(&v25, v24);
      v8 = a1;
    }

    else
    {
      sub_2F118(&v25, v24);
      sub_2F118(&v25, v24);
      if (qword_DE6C88 != -1)
      {
        swift_once();
      }

      v8 = qword_E718C8;
    }

    v9 = a1;

    v10 = v6;
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    v15 = *(a2 + 64);
    v16 = *(a2 + 72);
    v17 = *(a2 + 80);
    *(a2 + 32) = v8;
    *(a2 + 40) = *(&v7 + 1);
    *(a2 + 48) = v20;
    *(a2 + 56) = v21;
    *(a2 + 72) = v10;
    *(a2 + 80) = v23;
    v22 = *(&v7 + 1);
    v18 = v23;
    v19 = v8;
    sub_C7504(v11, v12, v13, v14, v15, v16, v17);
    sub_2EB2A8();

    sub_2F174(&v25);
  }
}

void sub_235010(void *a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor);
  *(v1 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v8 = a1;
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents);
    v10 = v2;
    sub_234E6C(v2, v9);

    v7 = v4;
    goto LABEL_8;
  }

  sub_13C80(0, qword_DFAAC0, UIColor_ptr);
  v5 = v2;
  v11 = v4;
  v6 = sub_ABA790();

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v2 = *(v1 + v3);
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t sub_235110(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (*(a1 + 16) == 1)
  {
    if (v2 == 1)
    {
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      return sub_ABA790() & 1;
    }

    return 0;
  }

  if (v2 != 2)
  {
    return 0;
  }

LABEL_8:
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  return sub_ABB3C0();
}

void sub_2351D4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  v2 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled;
  [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) setEditable:*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled)];
  [*(v0 + v1) setSelectable:*(v0 + v2)];
  v3 = *(v0 + v2);
  v4 = [*(v0 + v1) textContainer];
  v5 = v4;
  if (v3 == 1)
  {
    [v4 setLineBreakMode:0];

    v6 = [*(v0 + v1) textContainer];
    [v6 setMaximumNumberOfLines:0];
  }

  else
  {
    [v4 setLineBreakMode:*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineBreakMode)];

    v6 = [*(v0 + v1) textContainer];
    [v6 setMaximumNumberOfLines:*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines)];
  }

  [*(v0 + v1) setScrollEnabled:*(v0 + v2)];

  sub_236500();
}

void sub_235318()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  v3 = [*&v0[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView] layoutManager];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v20[4] = sub_2373A4;
  v20[5] = v4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_3F29C4;
  v20[3] = &block_descriptor_80;
  v5 = _Block_copy(v20);
  v6 = v0;

  [v3 enumerateLineFragmentsForGlyphRange:0 usingBlock:{0x7FFFFFFFFFFFFFFFLL, v5}];
  _Block_release(v5);

  swift_beginAccess();
  if (*(v1 + 16))
  {
    goto LABEL_5;
  }

  v7 = [*&v0[v2] layoutManager];
  v8 = [*&v0[v2] textContainer];
  v9 = [v7 glyphRangeForTextContainer:v8];
  v11 = v10;

  v12 = [*&v0[v2] layoutManager];
  v13 = [v12 characterRangeForGlyphRange:v9 actualGlyphRange:{v11, 0}];
  v15 = v14;

  if (__OFADD__(v13, v15))
  {
    __break(1u);
  }

  else
  {
    v16 = *&v0[v2];
    v17 = [v16 text];
    if (v17)
    {
      v18 = v17;
      sub_AB92A0();

      v19 = sub_AB9500();

      *(v1 + 16) = v13 + v15 < v19;
LABEL_5:

      return;
    }
  }

  __break(1u);
}

void sub_23558C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v9 = [*(a5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) layoutManager];
  v10 = [v9 truncatedGlyphRangeInLineFragmentForGlyphAtIndex:a2];

  if (v10 != sub_AB2A10())
  {
    swift_beginAccess();
    *(a6 + 16) = 1;
    *a4 = 1;
  }
}

id sub_23562C()
{
  v1 = v0;
  v2 = sub_AB2E70();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin();
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB2F20();
  v49 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v41 - v8;
  v10 = sub_AB2F50();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin();
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236884();
  v15 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
  v14 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16) != 2)
    {

      return 0;
    }

    v43 = v5;
    v44 = v14;

    sub_AB2F40();
    v20 = [objc_opt_self() defaultParagraphStyle];
    [v20 mutableCopy];
    sub_ABAB50();
    sub_13C80(0, &unk_E05360, NSMutableParagraphStyle_ptr);
    swift_dynamicCast();
    v21 = v50;

    swift_unknownObjectRelease();
    v22 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8);
    if (v22 != 255)
    {
      v23 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight);
      if ((v22 & 1) == 0)
      {
        v24 = [objc_opt_self() defaultMetrics];
        [v24 scaledValueForValue:v23];
        v23 = v25;
      }

      [v21 setMinimumLineHeight:v23];
      [v21 setMaximumLineHeight:v23];
    }

    [v21 setAlignment:*(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment)];
    v51 = v21;
    sub_B4908();
    v42 = v21;
    sub_AB2F70();
    v51 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font);
    v26 = v51;
    sub_B4860();
    v27 = v26;
    sub_AB2F70();
    v51 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor);
    v28 = v51;
    sub_B48B4();
    v29 = v28;
    sub_AB2F70();
    v30 = v44;
    v51 = v15;
    v52 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750, &unk_AFD830);
    swift_allocObject();
    sub_23732C(v15, v30, 2);
    sub_AB3890();
    sub_AB3880();

    v32 = v47;
    v31 = v48;
    (*(v47 + 104))(v4, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v48);
    sub_AB2E40();
    (*(v32 + 8))(v4, v31);
    sub_13C80(0, &unk_DECB20, NSAttributedString_ptr);
    v33 = v49;
    v34 = v43;
    (*(v49 + 16))(v7, v9, v43);
    v19 = sub_ABA1C0();

    (*(v33 + 8))(v9, v34);
    (*(v45 + 8))(v12, v46);
    v35 = v15;
    v36 = v30;
    v37 = 2;
    goto LABEL_11;
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16))
  {
    v38 = objc_allocWithZone(NSMutableAttributedString);
    sub_23732C(v15, v14, 1);
    v19 = [v38 initWithAttributedString:v15];
    sub_3E856C(v13);
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;

    [v19 addAttributes:isa range:{0, objc_msgSend(v15, "length")}];

    v35 = v15;
    v36 = v14;
    v37 = 1;
LABEL_11:
    sub_2372F0(v35, v36, v37);

    return v19;
  }

  sub_23732C(*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text), *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8), 0);
  sub_3E856C(v13);
  v16 = objc_allocWithZone(NSAttributedString);
  v17 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  v18 = sub_AB8FD0().super.isa;

  v19 = [v16 initWithString:v17 attributes:v18];

  sub_2372F0(v15, v14, 0);

  return v19;
}

char *sub_235CE0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
  *&v4[v9] = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v10 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor;
  v11 = objc_opt_self();
  *&v4[v10] = [v11 labelColor];
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineBreakMode] = 4;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight];
  *v12 = 0;
  v12[8] = -1;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment] = 4;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderText];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderTextColor;
  *&v4[v14] = [v11 placeholderTextColor];
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
  v15[1] = 0u;
  v15[2] = 0u;
  *v15 = 0u;
  v16 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_baselinesLayoutGuide;
  *&v4[v16] = [objc_allocWithZone(UILayoutGuide) init];
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = -1;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel____lazy_storage___baselinesLayoutGuideFirst] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel____lazy_storage___baselinesLayoutGuideLast] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  *&v4[v18] = sub_236BB4();
  v40.receiver = v4;
  v40.super_class = type metadata accessor for TextViewLabel();
  v19 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v20 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  v21 = *&v19[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView];
  v22 = v19;
  [v21 setDelegate:v22];
  v23 = *&v19[v20];
  v24 = v22;
  [v24 addSubview:v23];
  [v24 addLayoutGuide:*&v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_baselinesLayoutGuide]];
  v25 = [*&v19[v20] layoutManager];
  [v25 setDelegate:v24];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_B036F0;
  v27 = [*&v19[v20] leftAnchor];
  v28 = [v24 leftAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v26 + 32) = v29;
  v30 = [*&v19[v20] topAnchor];
  v31 = [v24 topAnchor];

  v32 = [v30 constraintEqualToAnchor:v31];
  *(v26 + 40) = v32;
  v33 = [*&v19[v20] bottomAnchor];
  v34 = [v24 bottomAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v26 + 48) = v35;
  v36 = [*&v19[v20] rightAnchor];
  v37 = [v24 rightAnchor];

  v38 = [v36 constraintEqualToAnchor:v37];
  *(v26 + 56) = v38;
  *(v26 + 64) = sub_236AC4();
  *(v26 + 72) = sub_236AD8();
  Array<A>.activate()(v26);

  return v24;
}

id sub_2361D8()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) != 1)
  {
    return [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) intrinsicContentSize];
  }

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8);
  if (v1 == 255)
  {
    [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font) lineHeight];
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight);
    if ((v1 & 1) == 0)
    {
      v3 = [objc_opt_self() defaultMetrics];
      [v3 scaledValueForValue:v2];
    }
  }

  return [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font) leading];
}

void sub_236300()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8);
  if (v1 == 255)
  {
    [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) sizeThatFits:?];
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight);
    if ((v1 & 1) == 0)
    {
      v3 = [objc_opt_self() defaultMetrics];
      [v3 scaledValueForValue:v2];
    }

    v4 = [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) layoutManager];
    v5 = [v4 numberOfGlyphs];
    v9 = 0;
    v10 = 0;
    if (v5 < 1)
    {
    }

    else
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      do
      {
        [v4 lineFragmentRectForGlyphAtIndex:v8 effectiveRange:&v9];
        if (__OFADD__(v7, 1))
        {
          __break(1u);
        }

        v8 = v10 + v9;
        ++v7;
      }

      while (v10 + v9 < v6);
    }
  }
}

void sub_236500()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) == 1)
  {

    v2 = v0;
    v3 = sub_236884();
    v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderTextColor);
    v5 = NSForegroundColorAttributeName;
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_91C1C(v6, v5, isUniquelyReferenced_nonNull_native);

    v8 = v3;
    v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView);
    sub_3E856C(v8);
    v10 = objc_allocWithZone(NSAttributedString);
    v11 = sub_AB9260();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;

    v13 = [v10 initWithString:v11 attributes:isa];

    [v9 setAttributedPlaceholder:v13];
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView);

    [v1 setAttributedPlaceholder:0];
  }
}

void sub_2366F4()
{
  v1 = sub_23562C();
  v2 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView);
  if (v1)
  {
    [v3 setAttributedText:v1];
    v4 = *(v0 + v2);
    v5 = sub_236884();
    sub_3E856C(v5);
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;

    [v4 setTypingAttributes:isa];

    v7 = sub_236AC4();
    v8 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
    [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font) lineHeight];
    v10 = v9;
    [*(v0 + v8) descender];
    [v7 setConstant:v10 + v11];

    v12 = sub_236AD8();
    [*(v0 + v8) descender];
    [v12 setConstant:?];
  }

  else
  {
    v1 = v3;
    v12 = sub_AB9260();
    [v1 setText:?];
  }
}

unint64_t sub_236884()
{
  v1 = [objc_opt_self() defaultParagraphStyle];
  [v1 mutableCopy];
  sub_ABAB50();
  sub_13C80(0, &unk_E05360, NSMutableParagraphStyle_ptr);
  swift_dynamicCast();

  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8);
  if (v2 != 255)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight);
    if ((v2 & 1) == 0)
    {
      v4 = [objc_opt_self() defaultMetrics];
      [v4 scaledValueForValue:v3];
      v3 = v5;
    }

    [v17 setMinimumLineHeight:v3];
    [v17 setMaximumLineHeight:v3];
  }

  [v17 setAlignment:*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA730, &unk_B04C70);
  inited = swift_initStackObject();
  *(inited + 32) = NSParagraphStyleAttributeName;
  *(inited + 16) = xmmword_AF8820;
  *(inited + 40) = v17;
  *(inited + 48) = NSFontAttributeName;
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font);
  *(inited + 56) = v7;
  *(inited + 64) = NSForegroundColorAttributeName;
  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor);
  *(inited + 72) = v8;
  v9 = NSParagraphStyleAttributeName;
  v10 = v17;
  v11 = NSFontAttributeName;
  v12 = v7;
  v13 = NSForegroundColorAttributeName;
  v14 = v8;
  v15 = sub_96A34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC590, &unk_B07BC0);
  swift_arrayDestroy();

  return v15;
}

id sub_236AEC(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    v7 = [*&v2[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_baselinesLayoutGuide] *a2];
    v8 = [v2 *a2];
    v9 = [v7 constraintEqualToAnchor:v8];

    v10 = *&v2[v3];
    *&v2[v3] = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_236BB4()
{
  v0 = [objc_allocWithZone(UITextView) init];
  [v0 setEditable:0];
  [v0 setScrollEnabled:0];
  v1 = v0;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v1 setAdjustsFontForContentSizeCategory:1];
  v2 = [v1 textContainer];
  [v2 setLineFragmentPadding:0.0];

  v3 = [v1 textContainer];
  [v3 setLineBreakMode:4];

  v4 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v4];

  [v1 _setWantsContentAwareTypesettingLanguage:1];
  return v1;
}

id sub_236DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextViewLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_236FA4(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
    v6 = v5;

    v7 = v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
    v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
    v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
    *v7 = v4;
    *(v7 + 8) = v6;
    v10 = *(v7 + 16);
    *(v7 + 16) = 0;
    sub_2372F0(v8, v9, v10);
    v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate);
    if (v11)
    {
      v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate + 8);

      v11(v1);

      sub_17654(v11, v12);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication13TextViewLabelCIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for TextViewLabel.LineHeight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextViewLabel.LineHeight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_2372F0(void *result, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_237304(result, a2, a3);
  }
}

void sub_237304(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

void sub_23732C(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }

  v3 = a1;
}

uint64_t sub_237364()
{

  return swift_deallocObject();
}

double block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_2373C4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
  *(v0 + v1) = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v2 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 labelColor];
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineBreakMode) = 4;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) = 0;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight;
  *v4 = 0;
  *(v4 + 8) = -1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment) = 4;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderText);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderTextColor;
  *(v0 + v6) = [v3 placeholderTextColor];
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate);
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  v8 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_baselinesLayoutGuide;
  *(v0 + v8) = [objc_allocWithZone(UILayoutGuide) init];
  v9 = v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = -1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel____lazy_storage___baselinesLayoutGuideFirst) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel____lazy_storage___baselinesLayoutGuideLast) = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  *(v0 + v10) = sub_236BB4();
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_237598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_13C80(0, &unk_E05340, ICMediaUserState_ptr);
    **(*(v4 + 64) + 40) = sub_AB9760();

    return swift_continuation_throwingResume();
  }
}

uint64_t *sub_23768C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237764()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71320);
  __swift_project_value_buffer(v0, qword_E71320);
  return static Logger.music(_:)(0x746E756F636341, 0xE700000000000000);
}

uint64_t sub_2377C8(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = sub_AB2A90();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = sub_AB31C0();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_2378FC, 0, 0);
}

uint64_t sub_2378FC()
{
  v1 = v0[33];
  v2 = sub_AB9260();
  v3 = [v1 urlForBagKey:v2];

  if (v3)
  {
    v5 = v0[40];
    v4 = v0[41];
    v6 = v0[37];
    v7 = v0[38];
    v8 = v0[32];
    sub_AB3150();

    (*(v7 + 32))(v4, v5, v6);
    v9 = UIImageJPEGRepresentation(v8, 0.8);
    if (v9)
    {
      v10 = v9;
      v11 = sub_AB3260();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }

    v0[42] = v11;
    v0[43] = v13;
    (*(v0[38] + 16))(v0[39], v0[41], v0[37]);
    sub_AB2A50();
    sub_AB2A20();
    v34.value._countAndFlagsBits = 0x706A2F6567616D69;
    v36._countAndFlagsBits = 0x2D746E65746E6F43;
    v36._object = 0xEC00000065707954;
    v34.value._object = 0xEA00000000006765;
    sub_AB2A80(v34, v36);
    v17 = [objc_allocWithZone(NSUUID) init];
    v18 = [v17 UUIDString];
    if (v18)
    {
      v19 = v18;

      v20 = sub_AB9260();
      v21 = [v19 stringByAppendingPathExtension:v20];

      if (v21)
      {
        v22 = sub_AB92A0();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v0[44] = v24;
      v37._countAndFlagsBits = 0xD000000000000013;
      v37._object = 0x8000000000B52A20;
      v35.value._countAndFlagsBits = v22;
      v35.value._object = v24;
      sub_AB2A80(v35, v37);
      sub_9007C(v11, v13);
      sub_AB2A70();
      sub_13C80(0, &unk_DF2B00, ICUserIdentity_ptr);
      v25 = static ICUserIdentity.active.getter();
      v26 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v25];
      v0[45] = v26;

      v27 = objc_allocWithZone(ICStoreURLRequest);
      v28 = v26;
      v29 = sub_AB2A30();
      v30 = [v27 initWithURLRequest:v29 requestContext:v28];
      v0[46] = v30;

      sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
      v31 = static ICURLSessionManager.musicSession.getter();
      v0[47] = v31;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_237DC0;
      v32 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA770, &qword_B052E8);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_23B884;
      v0[13] = &block_descriptor_9_2;
      v0[14] = v32;
      [v31 enqueueUploadRequest:v30 withCompletionHandler:v0 + 10];
      v18 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v18);
  }

  else
  {
    sub_23B6C0();
    swift_allocError();
    *v14 = 0xD00000000000001BLL;
    *(v14 + 8) = 0x8000000000B52A00;
    *(v14 + 16) = 1;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_237DC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_238200;
  }

  else
  {
    v2 = sub_237ED0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_237ED0()
{
  v1 = *(v0 + 248);

  v32 = v1;
  v2 = [v1 parsedBodyDictionary];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB8FF0();

    *(v0 + 216) = 0x6E656B6F74;
    *(v0 + 224) = 0xE500000000000000;
    sub_ABAD10();
    if (*(v4 + 16) && (v5 = sub_2EC004(v0 + 144), (v6 & 1) != 0))
    {
      sub_808B0(*(v4 + 56) + 32 * v5, v0 + 184);
      sub_8085C(v0 + 144);
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 368);
        v7 = *(v0 + 344);
        v9 = *(v0 + 328);
        v8 = *(v0 + 336);
        v11 = *(v0 + 296);
        v10 = *(v0 + 304);
        v12 = *(v0 + 280);
        v13 = *(v0 + 288);
        v14 = *(v0 + 272);

        sub_466A4(v8, v7);
        (*(v12 + 8))(v13, v14);
        (*(v10 + 8))(v9, v11);
        v15 = *(v0 + 232);
        v16 = *(v0 + 240);

        v17 = *(v0 + 8);

        return v17(v15, v16);
      }
    }

    else
    {
      sub_8085C(v0 + 144);
    }
  }

  v19 = *(v0 + 360);
  v20 = *(v0 + 344);
  v31 = *(v0 + 368);
  v21 = *(v0 + 336);
  v22 = *(v0 + 304);
  v29 = *(v0 + 296);
  v30 = *(v0 + 328);
  v23 = *(v0 + 280);
  v24 = *(v0 + 288);
  v25 = *(v0 + 272);
  sub_23B6C0();
  swift_allocError();
  *v26 = xmmword_AF8620;
  *(v26 + 16) = 2;
  swift_willThrow();

  sub_466A4(v21, v20);
  (*(v23 + 8))(v24, v25);
  (*(v22 + 8))(v30, v29);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_238200(__n128 a1)
{
  v2 = v1[45];
  v13 = v1[47];
  v14 = v1[46];
  v3 = v1[43];
  v4 = v1[42];
  v12 = v1[41];
  v5 = v1[37];
  v6 = v1[38];
  v7 = v1[35];
  v8 = v1[36];
  v9 = v1[34];
  swift_willThrow();

  sub_466A4(v4, v3);
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v12, v5);

  v10 = v1[1];

  return v10();
}

uint64_t sub_238328(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  v3 = sub_AB8FF0();

  sub_16A8C4(v3);
  v5 = v4;

  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = sub_AB92A0();
  if (!*(v5 + 16) || (v8 = sub_2EBF88(v6, v7), (v9 & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;

    goto LABEL_13;
  }

  sub_9ACA0(*(v5 + 56) + 40 * v8, &v18);

  if (!*(&v19 + 1))
  {
LABEL_13:
    sub_12E1C(&v18, &qword_DF2BD0, &unk_AFDC00);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000, &qword_B05300);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:

LABEL_15:
    v13 = sub_AB92A0();
    v12 = v14;
    sub_23B6C0();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v12;
    *(v15 + 16) = 1;
    swift_willThrow();
    return v12;
  }

  if (!*(v17 + 16) || (v10 = sub_2EBF88(0x746C7561666564, 0xE700000000000000), (v11 & 1) == 0) || (sub_9ACA0(*(v17 + 56) + 40 * v10, &v18), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  v12 = v17;

  return v12;
}

uint64_t sub_23856C(uint64_t a1)
{
  v1[35] = a1;
  v2 = sub_AB2A90();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  v1[39] = swift_task_alloc();
  v3 = sub_AB31C0();
  v1[40] = v3;
  v1[41] = *(v3 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();

  return _swift_task_switch(sub_2386F8, 0, 0);
}

uint64_t sub_2386F8()
{
  v1 = sub_238328(*(v0 + 280));
  *(v0 + 352) = v2;
  v3 = v2;
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = v1;
  sub_ABAD90(75);
  v31._countAndFlagsBits = 0x2F2F3A7370747468;
  v31._object = 0xE800000000000000;
  sub_AB94A0(v31);
  v32._countAndFlagsBits = v7;
  v32._object = v3;
  sub_AB94A0(v32);
  v33._object = 0x8000000000B59880;
  v33._countAndFlagsBits = 0xD000000000000041;
  sub_AB94A0(v33);
  sub_AB3180();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_12E1C(*(v0 + 312), &unk_DF2AE0, &qword_AFC930);
    sub_23B6C0();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 312), *(v0 + 320));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA778, &qword_B46840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(v0 + 248) = 0x65756C6176;
    *(v0 + 256) = 0xE500000000000000;
    sub_ABAD10();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
    *(inited + 72) = &off_CF0CC8;
    *(v0 + 360) = sub_97E70(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DEBB90, &qword_AFA490);
    v12 = objc_opt_self();
    isa = sub_AB8FD0().super.isa;
    *(v0 + 264) = 0;
    v14 = [v12 dataWithJSONObject:isa options:0 error:v0 + 264];
    v15 = *(v0 + 264);

    if (v14)
    {
      v16 = sub_AB3260();
      v18 = v17;
    }

    else
    {
      sub_AB3050();

      swift_willThrow();

      v16 = 0;
      v18 = 0xF000000000000000;
    }

    *(v0 + 368) = v16;
    *(v0 + 376) = v18;
    (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 344), *(v0 + 320));
    sub_AB2A50();
    sub_AB2A20();
    v19 = sub_AB92A0();
    v21 = v20;
    v35._countAndFlagsBits = sub_AB92A0();
    v23 = v22;
    v34.value._countAndFlagsBits = v19;
    v34.value._object = v21;
    v35._object = v23;
    sub_AB2A80(v34, v35);

    sub_9007C(v16, v18);
    sub_AB2A70();
    sub_13C80(0, &qword_DF4F60, ICMusicKitRequestContext_ptr);
    v24 = static ICMusicKitRequestContext.music.getter();
    v25 = objc_allocWithZone(ICMusicKitURLRequest);
    v26 = sub_AB2A30();
    v27 = [v25 initWithURLRequest:v26 requestContext:v24];
    *(v0 + 384) = v27;

    [v27 setCancelOnHTTPErrors:0];
    sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
    v28 = static ICURLSessionManager.musicSession.getter();
    *(v0 + 392) = v28;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_238CD0;
    v29 = swift_continuation_init();
    *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA770, &qword_B052E8);
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_23B884;
    *(v0 + 208) = &block_descriptor_19_3;
    *(v0 + 216) = v29;
    [v28 enqueueUploadRequest:v27 withCompletionHandler:v0 + 184];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_238CD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_238F5C;
  }

  else
  {
    v2 = sub_238E0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_238E0C()
{
  v11 = *(v0 + 392);
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);

  sub_466A4(v1, v2);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_238F5C(__n128 a1)
{
  v2 = v1[47];
  v3 = v1[48];
  v4 = v1[46];
  v13 = v1[49];
  v12 = v1[43];
  v6 = v1[40];
  v5 = v1[41];
  v7 = v1[37];
  v8 = v1[38];
  v9 = v1[36];
  swift_willThrow();

  sub_466A4(v4, v2);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v12, v6);

  v10 = v1[1];

  return v10();
}

uint64_t sub_2390AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[112] = a4;
  v4[111] = a3;
  v4[110] = a2;
  v4[109] = a1;
  v5 = sub_AB2A90();
  v4[113] = v5;
  v4[114] = *(v5 - 8);
  v4[115] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  v4[116] = swift_task_alloc();
  v6 = sub_AB31C0();
  v4[117] = v6;
  v4[118] = *(v6 - 8);
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();

  return _swift_task_switch(sub_239250, 0, 0);
}

uint64_t sub_239250()
{
  v1 = sub_238328(*(v0 + 880));
  *(v0 + 976) = v2;
  v3 = v2;
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 928);
  v7 = v1;
  sub_ABAD90(31);

  v50._countAndFlagsBits = v7;
  v50._object = v3;
  sub_AB94A0(v50);
  v51._object = 0x8000000000B59860;
  v51._countAndFlagsBits = 0xD000000000000015;
  sub_AB94A0(v51);
  sub_AB3180();

  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    sub_12E1C(*(v0 + 928), &unk_DF2AE0, &qword_AFC930);
    sub_23B6C0();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 960);
  v12 = *(v0 + 872);
  (*(*(v0 + 944) + 32))(*(v0 + 968), *(v0 + 928), *(v0 + 936));
  v13 = sub_96B2C(&off_CF0D08);
  sub_12E1C(&unk_CF0D28, &qword_DEE730, &qword_AFCCA0);
  URL.parametrize(_:)(v13, v11);

  v14 = sub_97E70(_swiftEmptyArrayStorage);
  v15 = *(v12 + 8);
  if (v15)
  {
    v16 = **(v0 + 872);
    *(v0 + 816) = 1701667182;
    *(v0 + 824) = 0xE400000000000000;
    sub_ABAD10();
    *(v0 + 440) = &type metadata for String;
    *(v0 + 416) = v16;
    *(v0 + 424) = v15;
    sub_9ACFC((v0 + 416), (v0 + 608));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0((v0 + 608), v0 + 144, isUniquelyReferenced_nonNull_native);
    sub_8085C(v0 + 144);
  }

  v18 = *(v0 + 872);
  v19 = *(v18 + 24);
  if (v19)
  {
    v20 = *(v18 + 16);
    *(v0 + 784) = 0x656C646E6168;
    *(v0 + 792) = 0xE600000000000000;
    sub_ABAD10();
    *(v0 + 536) = &type metadata for String;
    *(v0 + 512) = v20;
    *(v0 + 520) = v19;
    sub_9ACFC((v0 + 512), (v0 + 480));

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0((v0 + 480), v0 + 264, v21);
    sub_8085C(v0 + 264);
  }

  v22 = *(v0 + 896);
  if (v22)
  {
    v23 = *(v0 + 888);
    strcpy((v0 + 752), "artworkToken");
    *(v0 + 765) = 0;
    *(v0 + 766) = -5120;
    sub_ABAD10();
    *(v0 + 408) = &type metadata for String;
    *(v0 + 384) = v23;
    *(v0 + 392) = v22;
    sub_9ACFC((v0 + 384), (v0 + 704));

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v14;
    sub_913C0((v0 + 704), v0 + 344, v24);
    v25 = v0 + 344;
  }

  else
  {
    if (*(*(v0 + 872) + 32))
    {
      goto LABEL_13;
    }

    strcpy((v0 + 736), "artworkToken");
    *(v0 + 749) = 0;
    *(v0 + 750) = -5120;
    sub_ABAD10();
    *(v0 + 664) = &type metadata for String;
    *(v0 + 640) = 0;
    *(v0 + 648) = 0xE000000000000000;
    sub_9ACFC((v0 + 640), (v0 + 672));
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v14;
    sub_913C0((v0 + 672), v0 + 304, v47);
    v25 = v0 + 304;
  }

  sub_8085C(v25);
  v14 = v48;
LABEL_13:
  v26 = *(*(v0 + 872) + 41);
  if (v26 != 2)
  {
    *(v0 + 768) = 0x72616F626E4F7369;
    *(v0 + 776) = 0xEB00000000646564;
    sub_ABAD10();
    *(v0 + 568) = &type metadata for Bool;
    *(v0 + 544) = v26;
    sub_9ACFC((v0 + 544), (v0 + 576));
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0((v0 + 576), v0 + 224, v27);
    sub_8085C(v0 + 224);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA778, &qword_B46840);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF4EC0;
  *(v0 + 832) = 0x7475626972747461;
  *(v0 + 840) = 0xEA00000000007365;
  sub_ABAD10();
  *(v28 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
  *(v28 + 72) = v14;
  *(v0 + 984) = sub_97E70(v28);
  swift_setDeallocating();
  sub_12E1C(v28 + 32, &qword_DEBB90, &qword_AFA490);
  swift_deallocClassInstance();
  v29 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;
  *(v0 + 864) = 0;
  v31 = [v29 dataWithJSONObject:isa options:0 error:v0 + 864];
  v32 = *(v0 + 864);

  if (v31)
  {
    v33 = sub_AB3260();
    v35 = v34;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v33 = 0;
    v35 = 0xF000000000000000;
  }

  *(v0 + 1000) = v35;
  *(v0 + 992) = v33;
  (*(*(v0 + 944) + 16))(*(v0 + 952), *(v0 + 960), *(v0 + 936));
  sub_AB2A50();
  sub_AB2A20();
  v36 = sub_AB92A0();
  v38 = v37;
  v53._countAndFlagsBits = sub_AB92A0();
  v40 = v39;
  v52.value._countAndFlagsBits = v36;
  v52.value._object = v38;
  v53._object = v40;
  sub_AB2A80(v52, v53);

  sub_9007C(v33, v35);
  sub_AB2A70();
  sub_13C80(0, &qword_DF4F60, ICMusicKitRequestContext_ptr);
  v41 = static ICMusicKitRequestContext.music.getter();
  v42 = objc_allocWithZone(ICMusicKitURLRequest);
  v43 = sub_AB2A30();
  v44 = [v42 initWithURLRequest:v43 requestContext:v41];
  *(v0 + 1008) = v44;

  [v44 setCancelOnHTTPErrors:0];
  sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
  v45 = static ICURLSessionManager.musicSession.getter();
  *(v0 + 1016) = v45;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 856;
  *(v0 + 24) = sub_239B94;
  v46 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA770, &qword_B052E8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23B884;
  *(v0 + 104) = &block_descriptor_13_2;
  *(v0 + 112) = v46;
  [v45 enqueueDataRequest:v44 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_239B94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1024) = v1;
  if (v1)
  {
    v2 = sub_23A500;
  }

  else
  {
    v2 = sub_239CD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_239CD0()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 856);
  *(v0 + 1032) = v2;

  v3 = [v2 urlResponse];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 && [v5 statusCode] == &stru_158.flags + 1)
    {
      v6 = [v2 parsedBodyDictionary];
      if (v6)
      {
        v7 = v6;
        v8 = sub_AB8FF0();

        *(v0 + 800) = 0xD000000000000010;
        *(v0 + 808) = 0x8000000000B529A0;
        sub_ABAD10();
        if (*(v8 + 16) && (v9 = sub_2EC004(v0 + 184), (v10 & 1) != 0))
        {
          sub_808B0(*(v8 + 56) + 32 * v9, v0 + 448);
          sub_8085C(v0 + 184);
        }

        else
        {
          sub_8085C(v0 + 184);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
        }

        if (*(v0 + 472))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
          if (swift_dynamicCast())
          {
            v14 = *(v0 + 848);
LABEL_19:
            v15 = *(v0 + 1008);
            v24 = *(v0 + 992);
            v25 = *(v0 + 1000);
            v26 = *(v0 + 960);
            v27 = *(v0 + 968);
            v16 = *(v0 + 944);
            v17 = *(v0 + 936);
            v18 = *(v0 + 920);
            v19 = *(v0 + 912);
            v20 = *(v0 + 904);
            sub_23B6C0();
            swift_allocError();
            *v21 = v14;
            *(v21 + 8) = 0;
            *(v21 + 16) = 0;
            swift_willThrow();

            sub_466A4(v24, v25);
            (*(v19 + 8))(v18, v20);
            v22 = *(v16 + 8);
            v22(v26, v17);
            v22(v27, v17);

            v23 = *(v0 + 8);

            return v23();
          }

LABEL_18:
          v14 = _swiftEmptyArrayStorage;
          goto LABEL_19;
        }
      }

      else
      {
        *(v0 + 448) = 0u;
        *(v0 + 464) = 0u;
      }

      sub_12E1C(v0 + 448, &unk_DE8E40, &unk_AF8050);
      goto LABEL_18;
    }
  }

  v11 = swift_task_alloc();
  *(v0 + 1040) = v11;
  *v11 = v0;
  v11[1] = sub_23A0B4;
  v12 = *(v0 + 880);

  return sub_23856C(v12);
}

uint64_t sub_23A0B4()
{
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v2 = sub_23A378;
  }

  else
  {
    v2 = sub_23A1F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23A1F4()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v13 = *(v0 + 1032);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);

  sub_466A4(v2, v1);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23A378()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v13 = *(v0 + 1032);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);

  sub_466A4(v2, v1);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23A500(__n128 a1)
{
  v2 = v1[126];
  v3 = v1[125];
  v4 = v1[124];
  v15 = v1[127];
  v13 = v1[120];
  v14 = v1[121];
  v5 = v1[118];
  v6 = v1[117];
  v7 = v1[115];
  v8 = v1[114];
  v9 = v1[113];
  swift_willThrow();

  sub_466A4(v4, v3);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v13, v6);
  v10(v14, v6);

  v11 = v1[1];

  return v11();
}

uint64_t sub_23A694(uint64_t a1, char a2)
{
  *(v2 + 314) = a2;
  *(v2 + 432) = a1;
  return _swift_task_switch(sub_23A6B8, 0, 0);
}

uint64_t sub_23A6B8()
{
  v1 = [objc_opt_self() sharedBagProvider];
  v0[55] = v1;
  sub_13C80(0, &qword_DEE560, ICStoreRequestContext_ptr);
  v2 = static ICStoreRequestContext.current.getter();
  v0[56] = v2;
  v0[2] = v0;
  v0[7] = v0 + 52;
  v0[3] = sub_23A82C;
  v3 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA758, &qword_B052C8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_23B884;
  v0[21] = &block_descriptor_81;
  v0[22] = v3;
  [v1 getBagForRequestContext:v2 withCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23A82C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_23B54C;
  }

  else
  {
    v2 = sub_23A93C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23A93C()
{
  v25 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 416);
  *(v0 + 464) = v4;

  v5 = *(v3 + 32);
  *(v0 + 472) = v5;
  if (v5 >= 2)
  {
    v22 = v5;
    v23 = swift_task_alloc();
    *(v0 + 480) = v23;
    *v23 = v0;
    v23[1] = sub_23ABF8;

    return sub_2377C8(v22, v4);
  }

  else
  {
    *(v0 + 512) = 0;
    if (qword_DE69F0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 432);
    v7 = sub_AB4BC0();
    *(v0 + 520) = __swift_project_value_buffer(v7, qword_E71320);
    sub_23B658(v6, v0 + 272);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    sub_23B690(v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 432);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446210;
      v13 = *(v10 + 26);
      v14 = v10[1];
      *(v0 + 320) = *v10;
      *(v0 + 336) = v14;
      *(v0 + 346) = v13;
      sub_23B658(v10, v0 + 368);
      v15 = sub_AB9350();
      v17 = sub_425E68(v15, v16, &v24);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_0, v8, v9, "Will update profile with=%{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    v18 = swift_task_alloc();
    *(v0 + 528) = v18;
    *v18 = v0;
    v18[1] = sub_23AFBC;
    v19 = *(v0 + 464);
    v20 = *(v0 + 432);

    return sub_2390AC(v20, v19, 0, 0);
  }
}

uint64_t sub_23ABF8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 488) = v2;

  if (v2)
  {
    v7 = sub_23AF54;
  }

  else
  {
    *(v6 + 496) = a2;
    *(v6 + 504) = a1;
    v7 = sub_23AD2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_23AD2C()
{
  v20 = v0;
  v1 = *(v0 + 496);
  sub_D3144(*(v0 + 472));
  v2 = *(v0 + 504);
  *(v0 + 512) = v1;
  if (qword_DE69F0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 432);
  v4 = sub_AB4BC0();
  *(v0 + 520) = __swift_project_value_buffer(v4, qword_E71320);
  sub_23B658(v3, v0 + 272);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F50();
  sub_23B690(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = *(v7 + 26);
    v11 = v7[1];
    *(v0 + 320) = *v7;
    *(v0 + 336) = v11;
    *(v0 + 346) = v10;
    sub_23B658(v7, v0 + 368);
    v12 = sub_AB9350();
    v14 = sub_425E68(v12, v13, &v19);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "Will update profile with=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v15 = swift_task_alloc();
  *(v0 + 528) = v15;
  *v15 = v0;
  v15[1] = sub_23AFBC;
  v16 = *(v0 + 464);
  v17 = *(v0 + 432);

  return sub_2390AC(v17, v16, v2, v1);
}

uint64_t sub_23AF54()
{
  v1 = *(v0 + 464);
  sub_D3144(*(v0 + 472));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23AFBC()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_23B2E0;
  }

  else
  {

    v2 = sub_23B0D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23B0D8(uint64_t a1)
{
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 314);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "Updated user profile, refreshing activeUserState=%{BOOL}d", v5, 8u);
  }

  v6 = *(v1 + 314);

  if (v6)
  {
    v7 = [objc_opt_self() shared];
    *(v1 + 544) = v7;
    *(v1 + 80) = v1;
    *(v1 + 120) = v1 + 424;
    *(v1 + 88) = sub_23B350;
    v8 = swift_continuation_init();
    *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA760, &qword_B052D8);
    *(v1 + 208) = _NSConcreteStackBlock;
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_237598;
    *(v1 + 232) = &block_descriptor_5_0;
    *(v1 + 240) = v8;
    [v7 refreshUserStatesWithOptions:1 completion:v1 + 208];

    return _swift_continuation_await(v1 + 80);
  }

  else
  {

    v9 = *(v1 + 8);

    return v9();
  }
}

uint64_t sub_23B2E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B350()
{
  v1 = *(*v0 + 112);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_23B5C4;
  }

  else
  {
    v2 = sub_23B460;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23B460()
{
  v1 = v0[68];

  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Active user state updated", v4, 2u);
  }

  v5 = v0[58];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B54C(__n128 a1)
{
  v2 = v1[56];
  v3 = v1[55];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_23B5C4(__n128 a1)
{
  v2 = v1[68];
  v3 = v1[58];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

unint64_t sub_23B6C0()
{
  result = qword_DFA768;
  if (!qword_DFA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFA768);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication20SocialProfileUpdaterV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication20SocialProfileUpdaterV0D6UpdateV05PhotoF0OSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B778(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23B7D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_23B888(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v34 - v4;
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = *(v11 + 16);
  v35 = a1;
  v14(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v12);
  sub_256CA4(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  sub_ABAD10();
  sub_AB3420();
  sub_15F84(v37, v36, &qword_DF2BD0, &unk_AFDC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
  v15 = swift_dynamicCast();
  (*(v11 + 56))(v5, v15 ^ 1u, 1, v10);
  v16 = sub_2CD6DC(1u, v9, v5);
  (*(v7 + 8))(v9, v6);
  sub_12E1C(v37, &qword_DF2BD0, &unk_AFDC00);
  sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
  swift_beginAccess();
  v17 = *(v2 + 112);
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = sub_2EC048(v35);
  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = *(v20 + 88);
  if (*(v20 + 144))
  {
    v22 = *(v20 + 16);
  }

  else
  {
    v22 = 0;
  }

  if (*(v20 + 144))
  {
    v23 = *(v20 + 24);
  }

  else
  {
    v23 = 0;
  }

  if (v21)
  {
    v24 = (v21 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v22 = *v24;
    v23 = v24[1];
LABEL_13:

    goto LABEL_14;
  }

  if (v23)
  {
    goto LABEL_13;
  }

  v36[0] = *(v20 + 56);
  v22 = sub_ABB330();
  v23 = v33;
LABEL_14:
  swift_beginAccess();
  v25 = *(v2 + 104);
  if (!*(v25 + 16))
  {

LABEL_20:

    return 0;
  }

  v26 = sub_2EBF88(v22, v23);
  if ((v27 & 1) == 0)
  {

    goto LABEL_20;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = *(v28 + 176);

  if (v16)
  {

    v31 = sub_4A365C(v29, v16, v30);

    return v31;
  }

  return 0;
}

void sub_23BD04(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 leftBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v5 = sub_AB9760();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_23BD84(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v3.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setLeftBarButtonItems:?];
}

void sub_23BE10(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = swift_isaMask;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();

  v11 = *(&stru_1F8.size + (v8 & v7));
  v10[2] = v11;
  v12 = *(&stru_1F8.offset + (v8 & v7));
  v10[3] = v12;
  v13 = *(&stru_1F8.reloff + (v8 & v7));
  v10[4] = v13;
  v14 = *(&stru_1F8.flags + (v8 & v7));
  v10[5] = v14;
  v10[6] = v9;
  v10[7] = a2;
  v10[8] = a3;
  sub_23C260(sub_256594, v10);

  v27 = *(v4 + *(&stru_338.size + (swift_isaMask & *v4)));
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v26 = 3;
  *&v16 = v13;
  *(&v16 + 1) = v14;
  v25[1] = v16;
  v25[0] = v15;
  type metadata accessor for ContainerDetailViewController.Layout(0, v25);
  swift_getWitnessTable();
  if (sub_ABB400())
  {
    v17 = *&stru_B8.segname[(swift_isaMask & *a1) + 8];
    v18 = v17();
    v19 = sub_24EBB0(v18);

    v20 = *(&stru_338.size + (swift_isaMask & *v4));
    v21 = *(v4 + v20);
    *(v4 + v20) = v19;
    sub_24E4FC(v21);
    sub_24E818(1);
    v22 = v17();
    v23 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v22)))();

    if (v23)
    {
      sub_24C2A8(v23);
    }
  }
}

void sub_23C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [objc_opt_self() sharedApplication];
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = v14;
  v16[7] = a2;
  v16[8] = a3;
  aBlock[4] = sub_256614;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_82;
  v17 = _Block_copy(aBlock);

  [v13 _performBlockAfterCATransactionCommits:v17];
  _Block_release(v17);
}

uint64_t sub_23C260(void (*a1)(uint64_t), void *a2)
{
  v4 = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  v8 = (v7 + 16);
  v9 = &swift_isaMask;
  v10 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = a1;
  v11[4] = a2;
  if (*&v10[qword_DFE2F0] || (swift_getObjectType(), (v13 = swift_conformsToProtocol2()) == 0))
  {
    swift_beginAccess();
    v10 = (*v8 - 1);
    if (!__OFSUB__(*v8, 1))
    {
      *(v7 + 16) = v10;
      swift_retain_n();

      if (!v10)
      {
        a1(v12);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_25:
    a2 = sub_6AA00(0, a2[2] + 1, 1, a2);
    *(v11 + v10) = a2;
  }

  else
  {
    v29 = v13;
    v32 = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_A96B8;
    *(v14 + 24) = v11;
    v30 = v14;
    v3 = qword_DFE260;
    swift_beginAccess();
    a1 = *&v10[v3];
    swift_retain_n();

    v15 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v3] = a1;
    v31 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v18 = *(a1 + 2);
      v17 = *(a1 + 3);
      if (v18 >= v17 >> 1)
      {
        a1 = sub_6AA00((v17 > 1), v18 + 1, 1, a1);
      }

      *(a1 + 2) = v18 + 1;
      v19 = (a1 + 16 * v18);
      v19[4] = sub_36C08;
      v19[5] = v30;
      *&v10[v3] = a1;
      swift_endAccess();
      if ((v31[qword_DFE2C0] & 1) == 0)
      {
        v31[qword_DFE2C0] = 1;
        ObjectType = swift_getObjectType();
        (*(v29 + 8))(ObjectType);
      }

      a1 = v32;
LABEL_13:

      v10 = *(v4 + *(&stru_248.flags + (swift_isaMask & *v4)));
      v4 = swift_allocObject();
      v4[2] = v7;
      v4[3] = a1;
      v4[4] = a2;
      v21 = v10[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate];
      swift_retain_n();

      if (v21)
      {
        sub_A3DD4();
      }

      if (v10[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing] == 1)
      {
        break;
      }

      v26 = swift_beginAccess();
      v27 = *v8 - 1;
      if (!__OFSUB__(*v8, 1))
      {
        *v8 = v27;
        if (!v27)
        {
          a1(v26);
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_27:
      a1 = sub_6AA00(0, *(a1 + 2) + 1, 1, a1);
      *&v10[v3] = a1;
    }

    v9 = swift_allocObject();
    v9[2] = sub_2596EC;
    v9[3] = v4;
    v11 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
    swift_beginAccess();
    a2 = *(v11 + v10);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v10) = a2;
    if ((v22 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v24 = a2[2];
  v23 = a2[3];
  if (v24 >= v23 >> 1)
  {
    a2 = sub_6AA00((v23 > 1), v24 + 1, 1, a2);
  }

  a2[2] = v24 + 1;
  v25 = &a2[2 * v24];
  v25[4] = sub_2D4D0;
  v25[5] = v9;
  *(v11 + v10) = a2;
  swift_endAccess();
LABEL_23:
}

id sub_23C6F4(uint64_t a1)
{
  if ((*&stru_568.segname[swift_isaMask & *v1])())
  {
    v3 = [v1 traitCollection];
    v4 = UITraitCollection.isMediaPicker.getter(v3);

    v5 = !v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v7 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton;
  result = [*(v6 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton) isEnabled];
  if (v5 != result)
  {
    v9 = *(v6 + v7);

    return [v9 setEnabled:?];
  }

  return result;
}

void *sub_23C840()
{
  v0 = sub_256908();
  v1 = v0;
  return v0;
}

uint64_t (*sub_23C870(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2497C8(v2);
  return sub_2596E0;
}

uint64_t (*sub_23C8E4(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23C81C(v2);
  return sub_A8F8C;
}

uint64_t sub_23C94C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == &dword_0 + 2)
  {
    return 0x4076800000000000;
  }

  else
  {
    return 0x4069000000000000;
  }
}

uint64_t sub_23C9CC(uint64_t a1)
{
  v3 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v4 + 20)))
  {
    if (*(a1 + *(v4 + 20)) != 1)
    {
      sub_2594D8(a1, v6, type metadata accessor for Metrics.Event);
      goto LABEL_7;
    }

    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  sub_2594D8(a1, v6, type metadata accessor for Metrics.Event.Action);
  v8 = v3[6];
  v9 = *(a1 + v8);
  v10 = v3[7];
  v11 = v3[8];
  v6[v3[5]] = v7;
  *&v6[v8] = v9;
  *&v6[v10] = 0;
  *&v6[v11] = 0;
  v12 = v9;
LABEL_7:
  (*(**(v1 + 16) + 184))(v6);
  return sub_259250(v6, type metadata accessor for Metrics.Event);
}

uint64_t sub_23CB18()
{

  return swift_deallocClassInstance();
}

uint64_t (*sub_23CBD8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = (*(*v3 + 160))();
  a1[1] = v4;
  return sub_23CC44;
}

uint64_t sub_23CC44(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(*a1[2] + 168);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  sub_307CC(*a1, v2);
  v4(v3, v2);

  return sub_17654(v3, v2);
}

_BYTE *sub_23CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v4 = type metadata accessor for ContainerDetailViewController.BarButtonItemLocation(255, v10);
  sub_ABB340();
  swift_initStackObject();
  v5 = sub_AB9780();
  *v6 = 256;
  sub_AB9870();
  if (sub_AB9860())
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_486410(v5, v4, WitnessTable);
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  return v8;
}

double sub_23CDF4()
{

  v1 = &v0[*&stru_298.segname[swift_isaMask & *v0]];
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v6 = *(v1 + 4);
  v5 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 8);
  v9 = *(v1 + 9);

  sub_466A4(v8, v9);
  v10 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
  v11 = sub_ABA9C0();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);

  sub_12E1C(&v0[*(&stru_298.flags + (swift_isaMask & *v0))], &qword_DFDD40, &qword_B08B50);

  v12 = &v0[*&stru_338.segname[swift_isaMask & *v0]];
  sub_17654(*v12, v12[1]);

  swift_unknownObjectRelease();

  return result;
}

id sub_23D340()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = [objc_opt_self() sharedMonitor];
  [v3 unregisterObserver:v1];

  v4 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 32);
  if (v4)
  {
    v5 = *&stru_248.segname[(*v4 & swift_isaMask) - 8];
    v6 = v4;
    v5();
  }

  v7 = *(v2 + 560);
  v10[0] = *(v2 + 544);
  v10[1] = v7;
  v8 = type metadata accessor for ContainerDetailViewController(0, v10);
  v11.receiver = v1;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, "dealloc");
}

double sub_23D49C(char *a1)
{

  v2 = &a1[*&stru_298.segname[swift_isaMask & *a1]];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 8);
  v10 = *(v2 + 9);

  sub_466A4(v9, v10);
  v11 = *&stru_298.segname[(swift_isaMask & *a1) + 8];
  v12 = sub_ABA9C0();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  sub_12E1C(&a1[*(&stru_298.flags + (swift_isaMask & *a1))], &qword_DFDD40, &qword_B08B50);

  v13 = &a1[*&stru_338.segname[swift_isaMask & *a1]];
  sub_17654(*v13, v13[1]);

  swift_unknownObjectRelease();

  return result;
}

char *sub_23D9EC()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = (&v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = *&stru_248.sectname[swift_isaMask & *v0];
  v4 = *(v0 + v3);
  if (v4)
  {
    v5 = *(v0 + v3);
  }

  else
  {
    SymbolButton.Configuration.init()(v2);
    sub_23DAE8(v2);
    v6 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v7 = v2;
    v8 = v0;
    v9 = SymbolButton.init(configuration:handler:)(v7, 0, 0);
    v10 = *(v0 + v3);
    *(v8 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void sub_23DAE8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v3 = &v16 - v2;
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2594D8(a1, v3, type metadata accessor for SymbolButton.Configuration);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_25A964(v3, 0, v7);
  sub_12E1C(v3, &unk_DFAAB0, qword_B05AE0);
  sub_2580A4(v7, a1);
  v8 = SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor();
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  LOBYTE(v3) = v8[24];
  v12 = a1 + *(v4 + 64);
  v13 = *(v12 + 8);
  v14 = v10;
  v15 = v11;

  *v12 = v9;
  *(v12 + 8) = v10;
  *(v12 + 16) = v11;
  *(v12 + 24) = v3;
}

id sub_23DCC4()
{
  v1 = *&stru_248.segname[(swift_isaMask & *v0) - 8];
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_23D9EC();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *sub_23DD70()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v1 = &v14 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymbolButton.Configuration.init()(v1);
  variable initialization expression of SymbolButton.Configuration.symbol(&v14);
  v22 = v16;
  v2 = UIFontTextStyleBody;
  sub_259250(&v22, type metadata accessor for TextStyle);
  v3 = *(v1 + 5);
  v23[4] = *(v1 + 4);
  v23[5] = v3;
  v23[6] = *(v1 + 6);
  v24 = *(v1 + 14);
  v4 = *(v1 + 1);
  v23[0] = *v1;
  v23[1] = v4;
  v5 = *(v1 + 3);
  v23[2] = *(v1 + 2);
  v23[3] = v5;
  sub_155A00(v23);
  *v1 = v14;
  *(v1 + 2) = v17;
  *(v1 + 3) = xmmword_B054A0;
  v6 = v19;
  v7 = v20;
  *(v1 + 4) = v18;
  *(v1 + 5) = v6;
  *(v1 + 2) = v15;
  *(v1 + 3) = v2;
  *(v1 + 6) = v7;
  *(v1 + 14) = v21;
  v8 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v9 = SymbolButton.init(configuration:handler:)(v1, 0, 0);
  v10 = SymbolButton.withProvider(_:)(sub_23DFC0, 0);

  if (qword_DE6BB0 != -1)
  {
    swift_once();
  }

  v11 = UIView.withAccessibilityIdentifier(_:)(*ymmword_E716F8, *&ymmword_E716F8[8], *&ymmword_E716F8[16], *&ymmword_E716F8[24]);

  (*&stru_1A8.segname[swift_isaMask & *v11])(1);
  v12 = [objc_opt_self() currentTraitCollection];
  SymbolButton.configureForToolbar(_:)(v12);

  [v11 setHidden:1];
  return v11;
}

void sub_23DFC0(uint64_t a1, uint64_t a2)
{
  sub_3F9D0(*(a2 + 200), *(a2 + 208), *(a2 + 216), *(a2 + 224));
  *(a2 + 200) = xmmword_AF82C0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  v3 = sub_AB4E50();
  if (v3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x6461622E74786574;
  }

  if (v3)
  {
    v5 = 0x8000000000B59D70;
  }

  else
  {
    v5 = 0xEF73756C702E6567;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
}

id sub_23E05C()
{
  v2 = *&stru_248.segname[(swift_isaMask & *v0) + 8];
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v1 = swift_isaMask & *v0;
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*(v0 + *(v1 + 600))];
    v6 = *(v0 + v2);
    *(v0 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

char *sub_23E120()
{
  v1 = v0;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (&v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *&stru_248.segname[(swift_isaMask & *v1) + 16];
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = *(v1 + v4);
  }

  else
  {
    v7 = SymbolButton.Configuration.barButtonContextualAction.unsafeMutableAddressor();
    sub_2594D8(v7, v3, type metadata accessor for SymbolButton.Configuration);
    v8 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v9 = SymbolButton.init(configuration:handler:)(v3, 0, 0);
    v10 = *(v1 + v4);
    *(v1 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

id sub_23E228()
{
  v1 = *(&stru_248.size + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_23E120();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_23E2D4(uint64_t a1, char a2)
{
  v4 = swift_isaMask & *v2;
  v25 = 0;
  v5 = *(v4 + 560);
  v24[0] = *(v4 + 544);
  v24[1] = v5;
  type metadata accessor for ContainerDetailViewController.BarButtonItemLocation(0, v24);
  swift_getWitnessTable();
  if (sub_AB9BD0())
  {
    v23 = a2;
    v6 = [v2 navigationItem];
    v7 = [v2 parentViewController];
    if (v7)
    {
      v8 = v7;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v9 = v8;
        v10 = [v9 navigationItem];

        v8 = [v9 parentViewController];
        v6 = v10;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    v10 = v6;
LABEL_9:
    v11 = [v2 traitCollection];
    v12 = (*(&stru_428.flags + (swift_isaMask & *v2)))();

    if (v12)
    {
      sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
      v13.super.isa = sub_AB9740().super.isa;
    }

    else
    {
      v13.super.isa = 0;
    }

    a2 = v23;
    [v10 setLeftBarButtonItems:v13.super.isa animated:v23 & 1];
  }

  LOBYTE(v24[0]) = 1;
  if (sub_AB9BD0())
  {
    v14 = [v2 navigationItem];
    v15 = [v2 parentViewController];
    if (v15)
    {
      v16 = v15;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v17 = v16;
        v18 = [v17 navigationItem];

        v16 = [v17 parentViewController];
        v14 = v18;
        if (!v16)
        {
          goto LABEL_21;
        }
      }
    }

    v18 = v14;
LABEL_21:
    v19 = [v2 traitCollection];
    sub_23E70C();
    v21 = v20;

    if (v21)
    {
      sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
      v22.super.isa = sub_AB9740().super.isa;
    }

    else
    {
      v22.super.isa = 0;
    }

    [v18 setRightBarButtonItems:v22.super.isa animated:a2 & 1];
  }
}

uint64_t sub_23E67C()
{
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
  {
    v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 56);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_23E70C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF82B0;
  *(v2 + 32) = sub_23E228();
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0 || (*(v0 + *&stru_298.segname[swift_isaMask & *v0] + 56) & 1) == 0)
  {
    v3 = UITraitCollection.mediaLibrary.getter();
    v4 = [objc_opt_self() deviceMediaLibrary];
    if (v4)
    {
      v5 = v4;
      sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
      v6 = sub_ABA790();

      if ((v6 & 1) != 0 && (*(*(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1))) + 120) & 0xFE) != 0x7A)
      {
        if ((*(*(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1))) + 120) & 0xFE) == 0xF8)
        {
          __break(1u);
        }

        else
        {
          sub_23DCC4();
          sub_AB9730();
          if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_23E8DC()
{
  v1 = *(v0 + *(&stru_248.reloff + (swift_isaMask & *v0)));
  v2 = *(v0 + *&stru_298.sectname[swift_isaMask & *v0]);
  v3 = *(&stru_608.reloff + (*v1 & swift_isaMask));
  v4 = v2;
  return v3(v2);
}

uint64_t sub_23E97C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4 + *&stru_298.segname[(swift_isaMask & *v4) - 8];
  *v5 = result;
  *(v5 + 1) = a2;
  *(v5 + 2) = a3;
  v5[24] = a4 & 1;
  return result;
}

void sub_23E9B8()
{
  v1 = v0;
  (*(&stru_6F8.reserved2 + (swift_isaMask & *v0)))(0, 0);
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v3)
  {
    objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v4 = v3;
    v12 = JSMediaPickerEnvironment.init(configuration:)(v4);
    v5 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 32);
    if (v5)
    {
      v6 = *&stru_108.segname[(*v5 & swift_isaMask) - 8];
      v7 = v5;
      v8 = v12;
      v9 = v6(v13);
      v11 = *v10;
      *v10 = v12;

      v9(v13, 0);
    }

    else
    {
    }
  }
}

uint64_t sub_23EB60@<X0>(uint64_t a1@<X8>)
{
  v3 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  v4 = sub_ABA9C0();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

void sub_23EC20(uint64_t result)
{
  v2 = v1;
  v3 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == result)
    {
      return;
    }

    v5 = [*(v1 + v3) results];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 totalItemCount];
  }

  else
  {
    if (!result)
    {
      return;
    }

    v7 = 0;
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E71120);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_0, v9, v10, "Did update containerResponse with result count: %{public}ld", v11, 0xCu);
  }

  if ((sub_23F4C8() & 1) == 0)
  {
    v12 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    v13 = *(v2 + v3);
    v14 = *&stru_158.segname[(*v12 & swift_isaMask) - 8];
    v15 = v13;
    v14(v13);
    sub_24FBD8();
    sub_25086C();
    v16 = (*(&stru_6F8.offset + (swift_isaMask & *v2)))(0, _swiftEmptyArrayStorage);
    v17 = swift_isaMask;
    if (!*(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32) && *(v2 + v3))
    {
      sub_24E818(1);
      v17 = swift_isaMask;
    }

    v18 = (*&stru_1F8.sectname[v17 & *v12])(v16);
    if (v18)
    {
      v19 = *(v2 + v3);
      v20 = *(v18 + 32);
      *(v18 + 32) = v19;
      v21 = v19;
    }

    sub_251140(v18);

    sub_244654();
  }
}

void *sub_23EF1C()
{
  v1 = *(v0 + *&stru_298.segname[(swift_isaMask & *v0) + 16]);
  v2 = v1;
  return v1;
}

void sub_23EF68(void *a1)
{
  v2 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
  sub_23EC20(v4);
}

double sub_23EFE4(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = *(&stru_298.size + (swift_isaMask & *v2));
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 identifier];
    v9 = sub_AB92A0();
    v11 = v10;

    if (!a1)
    {
      if (!v11)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v11 = 0;
    v9 = 0;
  }

  v13 = [a1 identifier];
  v14 = sub_AB92A0();
  v16 = v15;

  if (!v11)
  {
    if (!v16)
    {
      return result;
    }

LABEL_18:

    v19 = *(v3 + v5);
    if (!v19)
    {
LABEL_19:
      (*&stru_608.segname[(**(v3 + *(&stru_248.reloff + (swift_isaMask & *v3))) & swift_isaMask) + 8])(0);
      goto LABEL_20;
    }

LABEL_15:
    v20 = objc_allocWithZone(SLAttributionView);
    v21 = v19;
    v22 = [v20 initWithHighlight:v21];
    [*(v3 + *(&stru_248.reserved2 + (swift_isaMask & *v3))) frame];
    [v22 prepareLayoutWithMaxWidth:CGRectGetWidth(v29)];
    v23 = *&stru_608.segname[(**(v3 + *(&stru_248.reloff + (swift_isaMask & *v3))) & swift_isaMask) + 8];
    v24 = v22;
    v23(v22);

LABEL_20:
    v25 = *(v3 + *&stru_298.segname[swift_isaMask & *v3] + 8);
    if (v25)
    {
      v26 = *(v3 + v5) != 0;
      v27 = v25;
      JSContainerDetail.hasSharedContent.setter(v26);
    }

    sub_24BB44();
    return result;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  if (v9 != v14 || v11 != v16)
  {
    v18 = sub_ABB3C0();

    if (v18)
    {
      return result;
    }

    v19 = *(v3 + v5);
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  return result;
}

void *sub_23F31C()
{
  result = (*&stru_608.segname[**(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) & swift_isaMask])();
  if (result)
  {
    v2 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_23F3E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(&stru_298.flags + (swift_isaMask & *v1));
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &qword_DFDD40, &qword_B08B50);
}

void sub_23F46C(uint64_t a1)
{
  v2 = *(&stru_298.reserved2 + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

id sub_23F4C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask & *v0;
  v4 = *(&stru_1F8.offset + (swift_isaMask & v2));
  v5 = sub_ABA9C0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v72 - v8;
  result = (*(v3 + 1240))(v7);
  if (!result)
  {
    return result;
  }

  v11 = result;
  result = [result results];
  if (!result)
  {
LABEL_60:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result totalItemCount];

  if (v13)
  {
    goto LABEL_4;
  }

  v14 = v1 + *&stru_298.segname[swift_isaMask & *v1];
  v84[0] = *(v14 + 1);
  v73 = v84[0];
  if (!v84[0])
  {
    goto LABEL_4;
  }

  v15 = *(v14 + 2);
  if (v15)
  {
    sub_15F84(v84, v76, &unk_DFAAA0, &unk_B05AD0);
    v16 = v15;
    v17 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v18 = MPModelObject.bestIdentifier(for:)(*v17, 0);
    v20 = v19;

    v72 = v20;
    if (v20)
    {
      v21 = v18;
      goto LABEL_13;
    }
  }

  else
  {
    sub_15F84(v84, v76, &unk_DFAAA0, &unk_B05AD0);
  }

  v21 = JSContainerDetail.containerStoreID.getter();
  v23 = v22;

  v72 = v23;
  if (!v23)
  {
LABEL_23:
    sub_12E1C(v84, &unk_DFAAA0, &unk_B05AD0);
LABEL_4:

    return 0;
  }

LABEL_13:
  (*(&stru_478.reserved2 + (swift_isaMask & *v1)))();
  if ((*(*(v4 - 8) + 48))(v9, 1, v4) == 1)
  {
    v24 = (*(v6 + 8))(v9, v5);
LABEL_20:
    v25 = v72;
    goto LABEL_21;
  }

  v24 = swift_dynamicCast();
  if ((v24 & 1) == 0)
  {
    goto LABEL_20;
  }

  v74[6] = v80;
  v74[7] = v81;
  v75 = v82;
  v74[2] = v76[2];
  v74[3] = v77;
  v74[4] = v78;
  v74[5] = v79;
  v74[0] = v76[0];
  v74[1] = v76[1];
  v25 = v72;
  if (*(&v77 + 1))
  {
    v26 = MPModelPropertyPlaylistIsOwner;
    v27 = *(&v77 + 1);
    if ([v27 hasLoadedValueForKey:v26])
    {
      v28 = [v27 isOwner];

      v24 = sub_257CA0(v74);
      if (v28)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v24 = sub_257CA0(v74);
    }
  }

  else
  {
    v24 = sub_257CA0(v74);
  }

LABEL_21:
  if ((*(&stru_4C8.reserved2 + (swift_isaMask & *v1)))(v24))
  {
LABEL_22:

    goto LABEL_23;
  }

  if (*(v1 + *&stru_2E8.sectname[swift_isaMask & *v1]) > 2)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v40 = sub_AB4BC0();
    __swift_project_value_buffer(v40, qword_E71120);

    v41 = sub_AB4BA0();
    v42 = sub_AB9F50();

    if (!os_log_type_enabled(v41, v42))
    {
      sub_12E1C(v84, &unk_DFAAA0, &unk_B05AD0);

      return 0;
    }

    v43 = v21;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v76[0] = v45;
    *v44 = 136446210;
    v46 = sub_425E68(v43, v25, v76);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_0, v41, v42, "ContainerDetailRequest had no results, and exceeded maximum retries for container with id: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);

    goto LABEL_34;
  }

  JSContainerDetail.containerDetailedResponseIsReady.getter();
  if ((v29 & 1) == 0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v47 = sub_AB4BC0();
      __swift_project_value_buffer(v47, qword_E71120);
      v31 = v1;

      v32 = sub_AB4BA0();
      v33 = sub_AB9F50();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_44;
      }

      v34 = swift_slowAlloc();
      result = swift_slowAlloc();
      v72 = result;
      *&v76[0] = result;
      *v34 = 134218242;
      v48 = *(v31 + *&stru_2E8.sectname[swift_isaMask & *v31]);
      v36 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (!v36)
      {
        *(v34 + 4) = v49;

        *(v34 + 12) = 2082;
        v50 = sub_425E68(v21, v25, v76);

        *(v34 + 14) = v50;
        v39 = "ContainerDetailRequest had no library results but we have catalog results. Scheduling a catalog request retry (#%ld) for container with id: %{public}s";
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_60;
    }

    if (qword_DE6940 != -1)
    {
LABEL_58:
      swift_once();
    }

    v69 = sub_AB4BC0();
    __swift_project_value_buffer(v69, qword_E71120);
    v41 = sub_AB4BA0();
    v70 = sub_AB9F50();
    if (!os_log_type_enabled(v41, v70))
    {
LABEL_35:
      sub_12E1C(v84, &unk_DFAAA0, &unk_B05AD0);

      return 0;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_0, v41, v70, "Container detail response isn't ready yet, still waiting for JS to provide the container's detailed track data.", v71, 2u);
LABEL_34:

    goto LABEL_35;
  }

  if (qword_DE6940 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v30 = sub_AB4BC0();
    __swift_project_value_buffer(v30, qword_E71120);
    v31 = v1;

    v32 = sub_AB4BA0();
    v33 = sub_AB9F50();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v76[0] = v72;
      *v34 = 134218242;
      v35 = *(v31 + *&stru_2E8.sectname[swift_isaMask & *v31]);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        __break(1u);
        goto LABEL_58;
      }

      *(v34 + 4) = v37;

      *(v34 + 12) = 2082;
      v38 = sub_425E68(v21, v25, v76);

      *(v34 + 14) = v38;
      v39 = "ContainerDetailRequest had no results, scheduling a retry (#%ld) for container with id: %{public}s";
LABEL_42:
      _os_log_impl(&dword_0, v32, v33, v39, v34, 0x16u);
      v21 = v72;
      __swift_destroy_boxed_opaque_existential_0(v72);
    }

    else
    {
LABEL_44:
    }

    v51 = *&stru_2E8.sectname[swift_isaMask & *v1];
    v52 = *(v1 + v51);
    v36 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (!v36)
    {
      break;
    }

    __break(1u);
LABEL_56:
    swift_once();
  }

  *(v1 + v51) = v53;
  v54 = type metadata accessor for JSContainerDetailModelRequest();
  v55 = objc_allocWithZone(v54);
  v56 = &v55[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v56 = 0;
  v56[1] = 0;
  v55[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v57 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v55[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v55[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  v58 = v73;
  *&v55[v57] = v73;
  v83.receiver = v55;
  v83.super_class = v54;
  v59 = v58;
  v60 = objc_msgSendSuper2(&v83, "init");
  if ((v59[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v61 = v60;
    v62 = static MPModelAlbum.defaultMusicKind.getter();
    [v61 setSectionKind:v62];

    v63 = [objc_opt_self() kindWithVariants:3];
    v64 = v63;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v63 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v65 = objc_opt_self();
    v64 = v60;
    v66 = [v65 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v63 options:0];
    [v64 setSectionKind:v66];

    v61 = v63;
  }

  [v60 setItemKind:{v63, v72}];

  v67 = *&stru_298.segname[swift_isaMask & *v1];
  v68 = *(v1 + v67);
  *(v1 + v67) = v60;

  sub_23E9B8();
  sub_12E1C(v84, &unk_DFAAA0, &unk_B05AD0);

  return &dword_0 + 1;
}

BOOL sub_24004C()
{
  v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 8);
  result = 0;
  if (v1)
  {
    v2 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink;
    swift_beginAccess();
    if (*(v1 + v2))
    {
      return 1;
    }
  }

  return result;
}

double sub_24012C(uint64_t a1)
{
  v3 = *&stru_2E8.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

BOOL sub_2401A0(void *a1)
{
  v1 = a1;
  v2 = sub_2401D4();

  return v2;
}

BOOL sub_2401D4()
{
  if (!*(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0))))
  {
    return 0;
  }

  sub_243C90();
  return v1 <= 0.5;
}

id sub_240230(void *a1)
{
  v1 = a1;
  sub_240298();

  v2 = sub_AB9260();

  return v2;
}

uint64_t sub_240298()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *&stru_298.segname[v1] + 8);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v2 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
  }

  else
  {
LABEL_6:
    v7 = *(v1 + 560);
    v11[0] = *(v1 + 544);
    v11[1] = v7;
    v8 = type metadata accessor for ContainerDetailViewController(0, v11);
    v12.receiver = v0;
    v12.super_class = v8;
    v9 = objc_msgSendSuper2(&v12, "playActivityFeatureName");
    v4 = sub_AB92A0();
  }

  return v4;
}

double sub_2403B0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = a3;
  v9 = a1;
  sub_258108(v5, v7);

  return result;
}

Class sub_240424()
{
  v0 = sub_2581A4();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    sub_9007C(v0, v1);
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

id sub_2404A0(char a1)
{
  v2 = v1;
  v4 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
  v23[0] = *(&stru_1F8.size + (swift_isaMask & *v1));
  v23[1] = v4;
  v5 = type metadata accessor for ContainerDetailViewController(0, v23);
  v24.receiver = v1;
  v24.super_class = v5;
  objc_msgSendSuper2(&v24, "viewWillAppear:", a1 & 1);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for MediaPickerNavigationController(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      v7 = [v9 topViewController];

      if (v7)
      {
        sub_13C80(0, &qword_DE7500, UIViewController_ptr);
        if ((sub_ABA790() & 1) == 0)
        {
          v11 = [v1 navigationItem];
          v12 = [v2 parentViewController];
          if (v12)
          {
            v13 = v12;
            while (1)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              v14 = v13;
              v15 = [v14 navigationItem];

              v13 = [v14 parentViewController];
              v11 = v15;
              if (!v13)
              {
                goto LABEL_13;
              }
            }
          }

          v15 = v11;
LABEL_13:
          v16 = sub_23E05C();
          if (qword_DE6B28 != -1)
          {
            swift_once();
          }

          objc_setAssociatedObject(v15, qword_E01298, v16, &dword_0 + 1);

          sub_41D3EC(v7);
        }
      }

      else
      {
        v7 = v10;
      }
    }
  }

  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) = 1;
  v17 = swift_isaMask & *v2;
  v18 = *(v2 + *&stru_298.segname[v17] + 32);
  if (v18)
  {
    v19 = *(&stru_1F8.reloff + (*v18 & swift_isaMask));
    v20 = v18;
    v19(a1 & 1);

    v17 = swift_isaMask & *v2;
  }

  v21 = *(v2 + *(v17 + 856));
  *&v23[0] = 0xD000000000000015;
  *(&v23[0] + 1) = 0x8000000000B48960;
  (*(*v21 + 176))(v23);

  (*(&stru_6F8.reserved2 + (swift_isaMask & *v2)))(0, 0);
  return sub_249B20();
}

void sub_240864(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2404A0(a3);
}

void sub_2408B8(void *a1)
{
  v3 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
  v18[0] = *(&stru_1F8.size + (swift_isaMask & *v1));
  v18[1] = v3;
  v4 = type metadata accessor for ContainerDetailViewController(0, v18);
  v19.receiver = v1;
  v19.super_class = v4;
  objc_msgSendSuper2(&v19, "willMoveToParentViewController:", a1);
  if (a1)
  {
    v5 = [a1 navigationItem];
    if (v5)
    {
      v6 = v5;
      KeyPath = swift_getKeyPath();
      sub_240CF4(KeyPath, v6, 0);

      v8 = swift_getKeyPath();
      sub_240CF4(v8, v6, 0);

      v9 = swift_getKeyPath();
      sub_240CF4(v9, v6, 0);

      v10 = swift_getKeyPath();
      sub_240CF4(v10, v6, 1);

      v11 = swift_getKeyPath();
      sub_240CF4(v11, v6, 1);

      v12 = swift_getKeyPath();
      sub_240CF4(v12, v6, 0);

      v13 = swift_getKeyPath();
      sub_240CF4(v13, v6, 0);

      v14 = swift_getKeyPath();
      sub_240CF4(v14, v6, 0);

      v15 = swift_getKeyPath();
      sub_240CF4(v15, v6, 0);

      v16 = [v1 navigationItem];
      [v6 setLargeTitleDisplayMode:{objc_msgSend(v16, "largeTitleDisplayMode")}];

      v17 = [v1 navigationItem];
      [v6 setHidesSearchBarWhenScrolling:{objc_msgSend(v17, "hidesSearchBarWhenScrolling")}];
    }
  }
}

void sub_240B2C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_240B94(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle:?];
}

void sub_240C04(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (qword_DE6B28 != -1)
  {
    v6 = *a2;
    v7 = v3;
    swift_once();
    v4 = v6;
    v3 = v7;
  }

  v5 = qword_E01298;

  objc_setAssociatedObject(v4, v5, v3, &dword_0 + 1);
}

void sub_240C88(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2408B8(a3);
}

uint64_t sub_240CF4(void *a1, void *a2, int a3)
{
  v25 = a3;
  v23 = a2;
  v3 = *(*a1 + class metadata base offset for ReferenceWritableKeyPath + 8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v21 - v7;
  v9 = *(v3 + 16);
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v24 = &v21 - v12;
  v22 = v13;
  v14 = [v13 navigationItem];
  v26[4] = v14;
  v15 = swift_readAtKeyPath();
  (*(v4 + 16))(v8);
  v15(v26, 0);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v17 = v24;
  (*(v10 + 32))(v24, v8, v9);
  (*(v10 + 16))(v6, v17, v9);
  v18 = *(v10 + 56);
  v18(v6, 0, 1, v9);
  v26[0] = v23;
  v19 = v23;
  swift_setAtReferenceWritableKeyPath();

  if (v25)
  {
    v20 = [v22 navigationItem];
    v18(v6, 1, 1, v9);
    v26[0] = v20;
    swift_setAtReferenceWritableKeyPath();
  }

  return (*(v10 + 8))(v17, v9);
}

void sub_241058(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD40, &qword_B08B50);
  __chkstk_darwin();
  v6 = v24 - v5;
  v7 = type metadata accessor for MetricsEvent.Page(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 560);
  v24[0] = *(v4 + 544);
  v24[1] = v11;
  v12 = type metadata accessor for ContainerDetailViewController(0, v24);
  v25.receiver = v2;
  v25.super_class = v12;
  objc_msgSendSuper2(&v25, "viewDidAppear:", a1 & 1);
  v13 = swift_isaMask;
  v14 = swift_isaMask & *v2;
  v15 = *(v2 + *&stru_338.segname[v14 + 8]);
  if (v15)
  {
    v16 = *(*v15 + 264);

    v16(v17);

    v13 = swift_isaMask;
    v14 = swift_isaMask & *v2;
  }

  v18 = *(v2 + *(v14 + 680) + 32);
  if (v18)
  {
    v19 = *(&stru_1F8.flags + (*v18 & v13));
    v20 = v18;
    v19(a1 & 1);
  }

  sub_2447E8();
  sub_130028(1);

  sub_23F3E8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &qword_DFDD40, &qword_B08B50);
  }

  else
  {
    sub_2591E8(v6, v10, type metadata accessor for MetricsEvent.Page);
    if (*(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32))
    {
      sub_259250(v10, type metadata accessor for MetricsEvent.Page);
    }

    else
    {
      v21 = MetricsReportingController.shared.unsafeMutableAddressor();
      v22 = *(&stru_68.reloff + (swift_isaMask & **v21));
      v23 = *v21;
      v22(v10, 0, 0, 0, 0, 0);
      sub_259250(v10, type metadata accessor for MetricsEvent.Page);
    }
  }

  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 16]) = 1;
}

void sub_241404(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_241058(a3);
}

void sub_241458(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = swift_isaMask & *v2;
  v5 = *(&stru_1F8.offset + v4);
  v38 = *(v5 - 8);
  __chkstk_darwin();
  v35 = &v32 - v6;
  v7 = sub_ABA9C0();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin();
  v9 = &v32 - v8;
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v39 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = *(v4 + 544);
  *(&v14 + 1) = v5;
  v34 = *(v4 + 560);
  v40[0] = v14;
  v40[1] = v34;
  v15 = type metadata accessor for ContainerDetailViewController(0, v40);
  v41.receiver = v2;
  v41.super_class = v15;
  objc_msgSendSuper2(&v41, "viewWillDisappear:", v3 & 1);
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) = 0;
  v16 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32);
  if (v16)
  {
    v17 = *(&stru_1F8.reserved2 + (*v16 & swift_isaMask));
    v18 = v16;
    v17(v3 & 1);
  }

  if (sub_2B510C())
  {
    v19 = [v2 navigationController];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 topViewController];

      if (v21)
      {
        v22 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
        if (*v22)
        {
          v32 = v22[1];
          v33 = v21;
          *v39 = 1;
          swift_storeEnumTagMultiPayload();
          v23 = *(&stru_478.reserved2 + (swift_isaMask & *v2));
          v24 = swift_unknownObjectRetain();
          v23(v24);
          v25 = v38;
          if ((*(v38 + 48))(v9, 1, v5))
          {
            (*(v36 + 8))(v9, v37);
            v26 = 0;
          }

          else
          {
            v27 = v35;
            (*(v25 + 16))(v35, v9, v5);
            (*(v36 + 8))(v9, v37);
            v26 = (*(*(&v34 + 1) + 24))(v5);
            (*(v25 + 8))(v27, v5);
          }

          ObjectType = swift_getObjectType();
          v29 = v11[6];
          v30 = v11[7];
          v31 = v11[8];
          sub_2591E8(v39, v13, type metadata accessor for Metrics.Event.Action);
          v13[v11[5]] = 0;
          *&v13[v29] = v26;
          *&v13[v30] = 0;
          *&v13[v31] = 0;
          (*(v32 + 32))(v13, ObjectType);
          sub_259250(v13, type metadata accessor for Metrics.Event);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

void sub_241980(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_241458(a3);
}

uint64_t sub_2419D4(char a1)
{
  v2 = v1;
  v4 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
  v15[0] = *(&stru_1F8.size + (swift_isaMask & *v1));
  v15[1] = v4;
  v5 = type metadata accessor for ContainerDetailViewController(0, v15);
  v16.receiver = v1;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "viewDidDisappear:", a1 & 1);
  v6 = swift_isaMask;
  v7 = swift_isaMask & *v1;
  v8 = *(v1 + *&stru_338.segname[v7 + 8]);
  if (v8)
  {
    v9 = *(*v8 + 272);

    v9(v10);

    v6 = swift_isaMask;
    v7 = swift_isaMask & *v2;
  }

  v11 = *(v2 + *(v7 + 680) + 32);
  if (v11)
  {
    v12 = *&stru_248.sectname[*v11 & v6];
    v13 = v11;
    v12(a1 & 1);
  }

  sub_2447E8();
  sub_127EB8();

  sub_130028(0);

  return (*(&stru_428.offset + (swift_isaMask & *v2)))(1);
}

void sub_241BD8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2419D4(a3);
}

void sub_241C2C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  sub_AB35C0();
  __chkstk_darwin();
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v5 = *(&stru_1F8.size + (v3 & v2));
  v6 = *(&stru_1F8.offset + (v3 & v2));
  v7 = *(&stru_1F8.reloff + (v3 & v2));
  v8 = *(&stru_1F8.flags + (v3 & v2));
  *&v74 = v5;
  *(&v74 + 1) = v6;
  *&v75 = v7;
  *(&v75 + 1) = v8;
  v9 = type metadata accessor for ContainerDetailViewController(0, &v74);
  v73.receiver = v0;
  v73.super_class = v9;
  v62 = v9;
  objc_msgSendSuper2(&v73, "viewDidLoad");
  v10 = (v1 + *&stru_298.segname[swift_isaMask & *v1]);
  v11 = v10[3];
  v76 = v10[2];
  v77 = v11;
  v78 = v10[4];
  v12 = v10[1];
  v74 = *v10;
  v75 = v12;
  sub_70EB0(&v74, &aBlock);
  v13 = sub_24EAB8(&v74);
  sub_70F0C(&v74);
  v14 = *(&stru_338.size + (swift_isaMask & *v1));
  v15 = *(v1 + v14);
  *(v1 + v14) = v13;
  sub_24E4FC(v15);
  sub_256154();
  v16 = objc_opt_self();
  v17 = [v16 sharedMonitor];
  v18 = [v17 isRemoteServerLikelyReachable];

  if (v18 && (v66 = *(v1 + *(&stru_338.size + (swift_isaMask & *v1))), v65 = 3, aBlock = v5, v68 = v6, v69 = v7, v70 = v8, type metadata accessor for ContainerDetailViewController.Layout(0, &aBlock), swift_getWitnessTable(), (sub_ABB400() & 1) != 0))
  {
    v19 = [v1 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = sub_24E69C();
    [v20 addSubview:v21];

    v22 = objc_opt_self();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v5;
    v24[3] = v6;
    v24[4] = v7;
    v24[5] = v8;
    v24[6] = v23;
    v71 = sub_2591B0;
    v72 = v24;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_1546C;
    v70 = &block_descriptor_213_0;
    v25 = _Block_copy(&aBlock);

    v26 = [v22 scheduledTimerWithTimeInterval:0 repeats:v25 block:2.0];
    _Block_release(v25);
    v27 = *(&stru_338.offset + (swift_isaMask & *v1));
    v28 = *(v1 + v27);
    *(v1 + v27) = v26;
  }

  else
  {
    v29 = *&stru_338.segname[(swift_isaMask & *v1) - 8];
    v30 = *(v1 + v29);
    *(v1 + v29) = 1;
    sub_24C1A8(v30);
  }

  v61 = v16;
  v66 = *(v1 + *(&stru_338.size + (swift_isaMask & *v1)));
  v65 = 3;
  aBlock = v5;
  v68 = v6;
  v69 = v7;
  v70 = v8;
  type metadata accessor for ContainerDetailViewController.Layout(0, &aBlock);
  swift_getWitnessTable();
  v31 = sub_ABB400();
  v32 = *v1;
  v33 = swift_isaMask;
  v64 = v5;
  if (v31)
  {
    goto LABEL_11;
  }

  v34 = *(v1 + *&stru_298.segname[swift_isaMask & v32] + 24);
  if (!v34)
  {
    goto LABEL_11;
  }

  v35 = *&stru_1A8.segname[(*v34 & swift_isaMask) + 8];
  v36 = v34;
  v37 = v35();

  if (!v37)
  {
    v32 = *v1;
    v33 = swift_isaMask;
LABEL_11:
    v38 = *(v1 + *(&stru_248.reserved2 + (v33 & v32)));
    v39 = *&stru_5B8.segname[(**(v1 + *(&stru_248.reloff + (v33 & v32))) & v33) - 8];
    v40 = v38;
    v39(v38);
    goto LABEL_12;
  }

  sub_24C2A8(v37);

LABEL_12:
  sub_250C1C();
  v41 = swift_isaMask & *v1;
  v42 = *(v1 + *&stru_298.segname[v41] + 32);
  if (v42)
  {
    v43 = *(&stru_1F8.offset + (*v42 & swift_isaMask));
    v44 = v42;
    v43();

    v41 = swift_isaMask & *v1;
  }

  v45 = *(v1 + *(v41 + 648));
  if (qword_DE6C80 != -1)
  {
    swift_once();
  }

  [v45 setViewBackgroundColor:qword_E718C0];
  sub_A2FD8(0);
  (*(&stru_6F8.offset + (swift_isaMask & *v1)))(0, _swiftEmptyArrayStorage);
  (*(&stru_6F8.reloff + (swift_isaMask & *v1)))(*(v1 + *(&stru_248.reserved2 + (swift_isaMask & *v1))));
  v46 = sub_23D9EC();
  [v46 addTarget:v1 action:"addKeepLocalControlAction:" forControlEvents:64];

  [*(v1 + *&stru_248.segname[swift_isaMask & *v1]) addTarget:v1 action:"mediaPickerAddAction:" forControlEvents:64];
  aBlock = v1;
  v47 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:sub_ABB3A0() action:"presentPlaylistPicker:"];
  swift_unknownObjectRelease();
  [*(v1 + *&stru_248.sectname[swift_isaMask & *v1]) addGestureRecognizer:v47];
  v48 = sub_23E120();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v49 = sub_AB9260();

  [v48 setAccessibilityLabel:v49];

  v50 = *&stru_248.segname[(swift_isaMask & *v1) + 16];
  [*(v1 + v50) setContextMenuInteractionEnabled:1];
  [*(v1 + v50) setShowsMenuAsPrimaryAction:1];
  v51 = [v61 sharedMonitor];
  [v51 registerObserver:v1];

  sub_2502E0();
  v52 = [v1 traitCollection];
  v53 = UITraitCollection.isMediaPicker.getter(v52);

  if (!v53)
  {
    v54 = sub_23CD04(v64, v6, v7, v8);
    sub_23E2D4(v54, 0);
  }

  v55 = *(v1 + *(&stru_298.offset + (swift_isaMask & *v1)));
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  v57[2] = v64;
  v57[3] = v6;
  v57[4] = v7;
  v57[5] = v8;
  v57[6] = v56;
  v58 = *(v55 + 16);
  v59 = *(v55 + 24);
  *(v55 + 16) = sub_25919C;
  *(v55 + 24) = v57;

  sub_17654(v58, v59);
}

void sub_2426A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + *&stru_298.segname[swift_isaMask & *Strong] + 56))
    {
      v4 = *(&stru_338.size + (swift_isaMask & *Strong));
      v5 = *(Strong + v4);
      v3[v4] = 1;
      sub_24E4FC(v5);
      sub_24E818(0);
    }

    else
    {
      v6 = sub_24E69C();
      LoadingView.style.setter(0x100000000);

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      aBlock[4] = sub_2591E0;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1546C;
      aBlock[3] = &block_descriptor_219_0;
      v9 = _Block_copy(aBlock);
      v10 = v3;

      v11 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:4.0];
      _Block_release(v9);
      v12 = *(&stru_338.offset + (swift_isaMask & *v10));
      v3 = *(v10 + v12);
      *(v10 + v12) = v11;
    }
  }
}

void sub_2428A0(uint64_t a1, void *a2)
{
  v2 = *(&stru_338.size + (swift_isaMask & *a2));
  v3 = *(a2 + v2);
  *(a2 + v2) = 1;
  sub_24E4FC(v3);
  sub_24E818(0);
}

void sub_2428FC(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24AD48(a1, a2 & 1);
  }
}

void sub_24296C(void *a1)
{
  v1 = a1;
  sub_241C2C();
}

void sub_2429B4()
{
  v1 = swift_isaMask & *v0;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v2 = *(v1 + 560);
  v46[0] = *(v1 + 544);
  v46[1] = v2;
  v3 = type metadata accessor for ContainerDetailViewController(0, v46);
  v47.receiver = v0;
  v47.super_class = v3;
  objc_msgSendSuper2(&v47, "viewDidLayoutSubviews");
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4;
  [v4 bounds];
  v6 = (v0 + *(&stru_338.reserved2 + (swift_isaMask & *v0)));
  v7 = *v6;
  v8 = v6[1];
  *v6 = v9;
  *(v6 + 1) = v10;
  sub_24F9BC(v7, v8);

  sub_2439A8();
  v11 = [v0 navigationItem];
  v12 = [v0 parentViewController];
  if (v12)
  {
    v13 = v12;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v14 = v13;
      v15 = [v14 navigationItem];

      v13 = [v14 parentViewController];
      v11 = v15;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v15 = v11;
LABEL_9:
  v16 = [v15 searchController];

  if (v16)
  {
    v17 = [v16 searchBar];

    if (v17)
    {
      v18 = [v0 view];
      if (v18)
      {
        v19 = v18;
        [v18 music_inheritedLayoutInsets];
        v21 = v20;
        v23 = v22;

        v24 = [v0 traitCollection];
        v25 = [v24 horizontalSizeClass];

        if (v25 != &dword_0 + 1)
        {
LABEL_15:
          [v17 _setOverrideContentInsets:15 forRectEdges:{4.0, v21, 16.0, v23}];
          v29 = [v17 searchTextField];
          if (*(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0))))
          {
            v30 = (*(&stru_4C8.reserved2 + (swift_isaMask & *v0)))();
            v31 = objc_opt_self();
            v32 = &selRef_secondaryLabelColor;
            if ((v30 & 1) == 0)
            {
              v32 = &selRef_whiteColor;
            }

            v33 = [v31 *v32];
            v34 = v29;
            v35 = [v34 leftView];
            if (v35)
            {
              v36 = v35;
              [v35 setTintColor:v33];
            }

            v37 = [v34 rightView];
            if (v37)
            {
              v38 = v37;
              [v37 setTintColor:v33];
            }

            sub_AB91E0();
            sub_AB3550();
            sub_AB9320();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_AF4EC0;
            *(inited + 32) = NSForegroundColorAttributeName;
            *(inited + 64) = sub_13C80(0, qword_DFAAC0, UIColor_ptr);
            *(inited + 40) = v33;
            v40 = NSForegroundColorAttributeName;
            v41 = v33;
            sub_96EB8(inited);
            swift_setDeallocating();
            sub_12E1C(inited + 32, &qword_DE6EE8, qword_AF8B50);
            v42 = objc_allocWithZone(NSAttributedString);
            v43 = sub_AB9260();
            type metadata accessor for Key(0);
            sub_256CA4(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C);
            isa = sub_AB8FD0().super.isa;

            v45 = [v42 initWithString:v43 attributes:isa];

            [v34 setAttributedPlaceholder:v45];
          }

          else
          {
            v34 = v17;
          }

          return;
        }

        v26 = [v0 view];
        if (v26)
        {
          v27 = v26;
          [v26 layoutMargins];
          v23 = v28;

          goto LABEL_15;
        }

LABEL_28:
        __break(1u);
        return;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }
}

void sub_242FFC(void *a1)
{
  v1 = a1;
  sub_2429B4();
}

id sub_243044(char a1, uint64_t a2)
{
  v5 = *(&stru_1F8.reloff + (swift_isaMask & *v2));
  v8[0] = *(&stru_1F8.size + (swift_isaMask & *v2));
  v8[1] = v5;
  v6 = type metadata accessor for ContainerDetailViewController(0, v8);
  v9.receiver = v2;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, "setEditing:animated:", a1 & 1, a2 & 1);
  (*(&stru_6F8.offset + (swift_isaMask & *v2)))(a2, _swiftEmptyArrayStorage);
  sub_24BB90();
  [*(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) setEditing:a1 & 1 animated:a2 & 1];
  return sub_249B20();
}

void sub_243168(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  sub_243044(a3, a4);
}

void sub_2431C4(void *a1)
{
  v3 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
  v16[0] = *(&stru_1F8.size + (swift_isaMask & *v1));
  v16[1] = v3;
  v4 = type metadata accessor for ContainerDetailViewController(0, v16);
  v17.receiver = v1;
  v17.super_class = v4;
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (a1)
  {
    v7 = [a1 preferredContentSizeCategory];
    v8 = sub_AB92A0();
    v10 = v9;
    if (v8 == sub_AB92A0() && v10 == v11)
    {

      goto LABEL_15;
    }

    v13 = sub_ABB3C0();

    if (v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = *(v1 + *&stru_338.sectname[swift_isaMask & *v1]);
  [*(v14 + 64) removeAllObjects];
  [*(v14 + 80) removeAllObjects];
  if (*(v14 + 96))
  {
    *(v14 + 104) = 1;
  }

  else
  {
    v15 = [objc_opt_self() defaultCenter];
    if (qword_DE6828 != -1)
    {
      swift_once();
    }

    [v15 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v14];
  }

LABEL_15:
  sub_250C1C();
  sub_24BB44();
}

void sub_24340C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2431C4(a3);
}

void sub_243478()
{
  v1 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
  v3[0] = *(&stru_1F8.size + (swift_isaMask & *v0));
  v3[1] = v1;
  v2 = type metadata accessor for ContainerDetailViewController(0, v3);
  v4.receiver = v0;
  v4.super_class = v2;
  objc_msgSendSuper2(&v4, "viewSafeAreaInsetsDidChange");
  sub_2439A8();
}

void sub_2434F4(void *a1)
{
  v1 = a1;
  sub_243478();
}

void sub_24353C(void *a1, double a2, double a3)
{
  v7 = *(&stru_1F8.reloff + (swift_isaMask & *v3));
  v12 = *(&stru_1F8.size + (swift_isaMask & *v3));
  v13 = v7;
  v8 = type metadata accessor for ContainerDetailViewController(0, &v12);
  v16.receiver = v3;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v14 = sub_259194;
  v15 = v9;
  *&v12 = _NSConcreteStackBlock;
  *(&v12 + 1) = 1107296256;
  *&v13 = sub_CF24C;
  *(&v13 + 1) = &block_descriptor_202_0;
  v10 = _Block_copy(&v12);
  v11 = v3;

  [a1 animateAlongsideTransition:v10 completion:0];
  _Block_release(v10);
}

void sub_243690(uint64_t a1, void *a2)
{
  v2 = (*(&stru_158.offset + (**(a2 + *(&stru_248.reloff + (swift_isaMask & *a2))) & swift_isaMask)))(a1);
  v3 = [v2 collectionViewLayout];

  [v3 invalidateLayout];
  sub_2437D0();
  sub_24BB90();
}

void sub_243750(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_24353C(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_2437D0()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 <= 592.0)
  {
  }

  else
  {
    v8 = sub_ABA340();

    if (v8)
    {
      v9 = 0;
      v10 = swift_isaMask;
      v11 = swift_isaMask & *v1;
      v12 = 1;
      goto LABEL_7;
    }
  }

  v10 = swift_isaMask;
  v11 = swift_isaMask & *v1;
  v12 = 2 * (*(v1 + *(&stru_298.reserved2 + v11)) != 0);
  v9 = 1;
LABEL_7:
  (*(&stru_5B8.reloff + (**(v1 + *(v11 + 640)) & v10)))(v12);
  v13 = sub_23F31C();
  if (v13)
  {
    v14 = v13;
    [v13 updateAlignment:v9];
  }
}

void sub_2439A8()
{
  v1 = *(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0)));
  if (v1)
  {
    v2 = v0;
    v30 = v1;
    v3 = sub_4D3DD0();
    [v3 bounds];
    [v30 setFrame:?];

    v4 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
    v5 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
    [*(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView) bounds];
    Width = CGRectGetWidth(v32);
    [*(v2 + v5) bounds];
    [v4 sizeThatFits:{Width, CGRectGetHeight(v33)}];
    v8 = v7;
    v9 = [v2 view];
    if (v9)
    {
      v10 = v9;
      [v9 safeAreaInsets];
      v12 = v11;

      v13.n128_f64[0] = v8 + v12;
      v14 = v30;
      v15 = *&v30[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight];
      *&v30[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight] = v8 + v12;
      if (v8 + v12 != v15)
      {
        v14 = [v30 setNeedsLayout];
      }

      v16 = (*&stru_5B8.sectname[**(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) & swift_isaMask])(v14, v13);
      v17 = v30;
      if (v16)
      {
        v18 = v16;
        [v30 bounds];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v34.origin.x = v20;
        v34.origin.y = v22;
        v34.size.width = v24;
        v34.size.height = v26;
        CGRectGetWidth(v34);
        [v18 bounds];
        [v18 setBounds:?];
        v17 = v18;
      }

      v27 = *(v2 + *&stru_338.segname[(swift_isaMask & *v2) + 8]);
      if (v27)
      {
        v28 = *(*v27 + 264);

        v28(v29);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_243C90()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_ABA320();
  if (v2)
  {
    v4 = *(v1 + *(&stru_298.reserved2 + (swift_isaMask & *v1)));
    if (v4)
    {
      [v4 frame];
      CGRectGetHeight(v18);
    }
  }

  else
  {
    v5 = [v1 view];
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v19.origin.x = v8;
    v19.origin.y = v10;
    v19.size.width = v12;
    v19.size.height = v14;
    CGRectGetWidth(v19);
  }

  v15 = sub_4D3DD0();
  UIScrollView.normalizedContentOffset.getter();

  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];

    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_243E70()
{
  v1 = *(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0)));
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView);
    sub_243C90();
    v3 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha;
    v4 = *&v2[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha];
    *&v2[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha] = v5;
    v7 = v5;
    v8 = v4;
    if (sub_AB38D0())
    {
      v6 = sub_4F2C2C();
      [v6 setAlpha:{*&v2[v3], v7, v8}];

      v2 = v6;
    }
  }
}

void sub_243F48()
{
  v1 = v0;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v60 - v5;
  v7 = [v0 navigationItem];
  v8 = [v1 parentViewController];
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v10 = v9;
      v11 = [v10 navigationItem];

      v9 = [v10 parentViewController];
      v7 = v11;
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  v11 = v7;
LABEL_8:
  if (((*(&stru_4C8.reserved2 + (swift_isaMask & *v1)))() & 1) == 0)
  {
    v13 = [objc_opt_self() whiteColor];
    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 tintColor];

      if (v16)
      {
        sub_243C90();
        v12 = UIColor.interpolate(to:ratio:)(v16, v17);

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v12 = 0;
LABEL_13:
  [v11 setPreferredNavigationBarTintColor:v12];

  sub_243C90();
  v19 = v18;
  v20 = sub_23E120();
  v21 = *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 16]);
  v22 = *(&stru_1A8.reloff + (*v21 & swift_isaMask));
  v23 = v21;
  v22();

  if (v19 >= 0.25)
  {
    v47 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
    v48 = *v47;
    v49 = v47[1];
    v50 = v47[2];
    v51 = v47[3];

    v52 = v49;
    SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(0, v48, v49, v50, v51, 0, 0, v6);
    sub_259250(v3, type metadata accessor for SymbolButton.Configuration);

    v29 = SymbolButton.Animation.default.unsafeMutableAddressor();
    (*&stru_1F8.segname[(swift_isaMask & *v20) + 8])(v6, *v29, v29[1], v29[2], 0, _swiftEmptyArrayStorage);
    sub_259250(v6, type metadata accessor for SymbolButton.Configuration);

    v30 = sub_23D9EC();
    v53 = *(v1 + *&stru_248.sectname[swift_isaMask & *v1]);
    v54 = *(&stru_1A8.reloff + (*v53 & swift_isaMask));
    v55 = v53;
    v54();

    v56 = *v47;
    v57 = v47[1];
    v59 = v47[2];
    v58 = v47[3];

    v38 = v57;
    v40 = v6;
    v41 = 0;
    v42 = v56;
    v43 = v57;
    v44 = v59;
    v45 = v58;
    v46 = 0;
    v39 = 0;
  }

  else
  {
    v61 = "UISceneActivationState";
    v24 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];

    v60 = v26;
    SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(1, v25, v26, v27, v28, 0xD00000000000001DLL, 0x8000000000B59DF0, v6);
    sub_259250(v3, type metadata accessor for SymbolButton.Configuration);

    v29 = SymbolButton.Animation.default.unsafeMutableAddressor();
    (*&stru_1F8.segname[(swift_isaMask & *v20) + 8])(v6, *v29, v29[1], v29[2], 0, _swiftEmptyArrayStorage);
    sub_259250(v6, type metadata accessor for SymbolButton.Configuration);

    v30 = sub_23D9EC();
    v31 = *(v1 + *&stru_248.sectname[swift_isaMask & *v1]);
    v32 = *(&stru_1A8.reloff + (*v31 & swift_isaMask));
    v33 = v31;
    v32();

    v34 = *v24;
    v35 = v24[1];
    v37 = v24[2];
    v36 = v24[3];

    v38 = v35;
    v39 = v61 | 0x8000000000000000;
    v40 = v6;
    v41 = 1;
    v42 = v34;
    v43 = v35;
    v44 = v37;
    v45 = v36;
    v46 = 0xD00000000000001DLL;
  }

  SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(v41, v42, v43, v44, v45, v46, v39, v40);
  sub_259250(v3, type metadata accessor for SymbolButton.Configuration);

  (*&stru_1F8.segname[(swift_isaMask & *v30) + 8])(v6, *v29, v29[1], v29[2], 0, _swiftEmptyArrayStorage);
  sub_259250(v6, type metadata accessor for SymbolButton.Configuration);

  [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_244654()
{
  if (((*(&stru_4C8.reserved2 + (swift_isaMask & *v0)))() & 1) != 0 && (v1 = (*&stru_4C8.segname[swift_isaMask & *v0])()) != 0)
  {
    v2 = v1;
    v3 = [v1 isEmpty];
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_isaMask;
  v5 = swift_isaMask & *v0;
  v6 = *(v0 + *(&stru_298.reserved2 + v5));
  if (v6)
  {
    [*(*(v6 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView) setHidden:v3];
    v4 = swift_isaMask;
    v5 = swift_isaMask & *v0;
  }

  v7 = (*&stru_5B8.sectname[**(v0 + *(v5 + 640)) & v4])();
  [v7 setHidden:v3];
}

void *sub_2447E8()
{
  v1 = *(&stru_2E8.size + (swift_isaMask & *v0));
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
    v9[0] = *(&stru_1F8.size + (swift_isaMask & *v0));
    v9[1] = v3;
    v4 = type metadata accessor for ContainerDetailViewController(255, v9);
    type metadata accessor for VerticalStackViewControllerImpressionTracker(0, v4, &off_DFA950, v5);
    v6 = v0;
    v7 = sub_4D3DD0();
    v2 = sub_17E4C(v6, v7, _swiftEmptyArrayStorage, 1);
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_2448F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v74 = swift_isaMask & *v2;
  v6 = *(&stru_1F8.offset + (swift_isaMask & v5));
  v72 = *(v6 - 8);
  __chkstk_darwin();
  v71 = &v65 - v7;
  sub_ABA9C0();
  __chkstk_darwin();
  v11 = &v65 - v10;
  if (a1 == -3)
  {
    *&v78 = 0xD000000000000019;
    *(&v78 + 1) = 0x8000000000B4E290;
    *&v79 = 0xD000000000000019;
    *(&v79 + 1) = 0x8000000000B4E290;
    v80 = xmmword_AFAA70;
    LOWORD(v81[0]) = 512;
    BYTE2(v81[0]) = 20;
    *(v81 + 8) = 0u;
    *(&v81[1] + 8) = 0u;
    *(&v81[2] + 8) = 0u;
    *(&v81[3] + 8) = 0u;
    *(&v81[4] + 1) = 0;
    LOBYTE(v82[0]) = 1;
    *(&v82[0] + 1) = 0;
    *&v82[1] = 0;
    BYTE8(v82[1]) = 2;
    *&v83 = 0xD000000000000019;
    *(&v83 + 1) = 0x8000000000B4E290;
    v84 = 0xD000000000000019;
    v85 = 0x8000000000B4E290;
    v86 = xmmword_AFAA70;
    v87 = 512;
    v88 = 20;
    v93 = 0;
    memset(v92, 0, sizeof(v92));
    v91 = 0u;
    v94 = 1;
    v96 = 0;
    v97 = 0;
    v98 = 2;
    sub_465F4(&v78, &v108);
    sub_46650(&v83);
    v105 = v81[3];
    v106 = v81[4];
    v107[0] = v82[0];
    *(v107 + 9) = *(v82 + 9);
    v101 = v80;
    v102 = v81[0];
    v103 = v81[1];
    v104 = v81[2];
    v99 = v78;
    v100 = v79;
    UIScreen.Dimensions.size.getter();
    v114 = v105;
    v115 = v106;
    v116[0] = v107[0];
    v17 = *(v107 + 9);
LABEL_54:
    *(v116 + 9) = v17;
    v110 = v101;
    v111 = v102;
    v112 = v103;
    v113 = v104;
    v108 = v99;
    v109 = v100;
    goto LABEL_55;
  }

  if (a1 == -1)
  {
    v66 = v9;
    v67 = v8;
    v12 = *(v2 + *(v74 + 680) + 8);
    if (v12)
    {
      v13 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
      swift_beginAccess();
      v14 = *&v12[v13];
      if (v14)
      {
        v15 = v12;
        v16 = v14;
        if ([v16 storeID])
        {
          sub_ABAB50();

          swift_unknownObjectRelease();
        }

        else
        {
          v108 = 0u;
          v109 = 0u;
        }

        sub_15F84(&v108, &v99, &unk_DE8E40, &unk_AF8050);
        if (*(&v100 + 1))
        {
          sub_9ACFC(&v99, &v83);
          __swift_project_boxed_opaque_existential_1(&v83, v85);
          sub_ABB3A0();
          v19 = MPStoreItemMetadataStringNormalizeStoreIDValue();
          if (v19)
          {
            v20 = v19;
            v70 = sub_AB92A0();
            v22 = v21;
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
            v70 = 0;
            v22 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0(&v83);
          sub_12E1C(&v108, &unk_DE8E40, &unk_AF8050);
LABEL_18:
          v23 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
          v24 = *(*(v23 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
          v25 = *v24;
          v26 = *(v24 + 8);
          v27 = *(v24 + 16);
          v73 = v12;
          v68 = v23;
          if (v27 > 1)
          {
            if (v27 != 2)
            {
              v30 = 0;
              v32 = 0xE000000000000000;
              goto LABEL_24;
            }
          }

          else if (v27)
          {
            v28 = [v25 string];
            v69 = v22;
            v29 = v28;
            v30 = sub_AB92A0();
            v32 = v31;

            v22 = v69;
            sub_2372F0(v25, v26, 1);
            goto LABEL_25;
          }

          v30 = v25;
          v32 = v26;
LABEL_24:
          sub_258078(v25, v26, v27);
LABEL_25:

          if ((v32 & 0x2000000000000000) != 0)
          {
            v34 = HIBYTE(v32) & 0xF;
            v35 = v73;
            if (!v34)
            {
LABEL_30:
              v69 = v22;
              if (v35)
              {
                v36 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
                v33 = swift_beginAccess();
                v37 = *&v35[v36];
                if (v37)
                {
                  v38 = v37;
                  v39 = [v38 name];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = sub_AB92A0();
                    v43 = v42;

                    v44 = v68;
LABEL_37:
                    v46 = v35[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind];
                    v74 = v41;
                    v72 = v43;
                    if (v46 == 2)
                    {
                      LODWORD(v71) = 0;
                    }

                    else
                    {
                      if (v46 == 3)
                      {
                        v47 = 2;
                      }

                      else
                      {
                        v47 = 1;
                      }

                      LODWORD(v71) = v47;
                    }

                    v67 = v35;
LABEL_46:
                    v50 = v34 == 0;
                    v52 = *(v44 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText);
                    v51 = *(v44 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText + 8);

                    v53 = v35;

                    v73 = v35;
                    if (v35)
                    {
                      type metadata accessor for JSMediaItem(0);
                      v54 = swift_dynamicCastClass();
                      if (v54)
                      {
                        v55 = *&stru_1A8.sectname[swift_isaMask & *v54];
                        v56 = v53;
                        v53 = v55();

                        v57 = v53 != 0;
LABEL_53:

                        *&v78 = v70;
                        *(&v78 + 1) = v69;
                        *&v79 = v74;
                        *(&v79 + 1) = v72;
                        v80 = v67;
                        LOBYTE(v81[0]) = v57;
                        *(v81 + 3) = v76;
                        BYTE7(v81[0]) = v77;
                        DWORD1(v82[0]) = *&v75[3];
                        *(v82 + 1) = *v75;
                        BYTE1(v81[0]) = 2;
                        BYTE2(v81[0]) = v71;
                        *(&v81[0] + 1) = 0;
                        *&v81[1] = 0;
                        *(&v81[1] + 1) = v73;
                        memset(&v81[2], 0, 32);
                        *&v81[4] = v52;
                        *(&v81[4] + 1) = v51;
                        LOBYTE(v82[0]) = v50;
                        *(&v82[0] + 1) = 0;
                        *&v82[1] = 0;
                        BYTE8(v82[1]) = 2;
                        *&v83 = v70;
                        *(&v83 + 1) = v69;
                        v84 = v74;
                        v85 = v72;
                        v86 = v67;
                        LOBYTE(v87) = v57;
                        HIBYTE(v87) = 2;
                        v88 = v71;
                        v90 = v77;
                        v89 = v76;
                        v91 = 0uLL;
                        v92[0] = v73;
                        memset(&v92[1], 0, 32);
                        v92[5] = v52;
                        v93 = v51;
                        v94 = v50;
                        *v95 = *v75;
                        *&v95[3] = *&v75[3];
                        v96 = 0;
                        v97 = 0;
                        v98 = 2;
                        sub_465F4(&v78, &v108);
                        sub_46650(&v83);
                        v105 = v81[3];
                        v106 = v81[4];
                        v107[0] = v82[0];
                        *(v107 + 9) = *(v82 + 9);
                        v101 = v80;
                        v102 = v81[0];
                        v103 = v81[1];
                        v104 = v81[2];
                        v99 = v78;
                        v100 = v79;
                        UIScreen.Dimensions.size.getter();
                        v114 = v105;
                        v115 = v106;
                        v116[0] = v107[0];
                        v17 = *(v107 + 9);
                        goto LABEL_54;
                      }

                      type metadata accessor for JSSearchLandingUpsell(0);
                      if (swift_dynamicCastClass())
                      {
                        v58 = v53;
                        v59 = JSSearchLandingUpsell.tallVideoArtwork.getter();
                        if (v59)
                        {
                          v53 = v59;

                          v57 = 1;
                        }

                        else
                        {
                          v53 = JSSearchLandingUpsell.wideArtwork.getter();

                          v57 = v53 != 0;
                        }

                        goto LABEL_53;
                      }
                    }

                    v57 = 0;
                    goto LABEL_53;
                  }
                }
              }

              (*(&stru_478.reserved2 + (swift_isaMask & *v2)))(v33);
              v45 = v72;
              if ((*(v72 + 48))(v11, 1, v6))
              {
                (*(v66 + 8))(v11, v67);
                v41 = 0;
                v43 = 0;
                v44 = v68;
                if (v35)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                v48 = v71;
                (*(v45 + 16))(v71, v11, v6);
                (*(v66 + 8))(v11, v67);
                v41 = (*(*(v74 + 568) + 48))(v6);
                v43 = v49;
                (*(v45 + 8))(v48, v6);
                v44 = v68;
                if (v35)
                {
                  goto LABEL_37;
                }
              }

              v72 = v43;
              v74 = v41;
              LODWORD(v71) = 20;
              v67 = 8;
              goto LABEL_46;
            }
          }

          else
          {
            v34 = v30 & 0xFFFFFFFFFFFFLL;
            v35 = v73;
            if (!v34)
            {
              goto LABEL_30;
            }
          }

          v22 = 0xE500000000000000;
          v70 = 0x7365746F6ELL;
          goto LABEL_30;
        }

        sub_12E1C(&v108, &unk_DE8E40, &unk_AF8050);
      }

      else
      {
        v18 = v12;
      }
    }

    v70 = 0;
    v22 = 0;
    goto LABEL_18;
  }

  sub_465CC(&v108);
LABEL_55:
  v60 = v115;
  a2[6] = v114;
  a2[7] = v60;
  a2[8] = v116[0];
  *(a2 + 137) = *(v116 + 9);
  v61 = v111;
  a2[2] = v110;
  a2[3] = v61;
  v62 = v113;
  a2[4] = v112;
  a2[5] = v62;
  result = *&v108;
  v64 = v109;
  *a2 = v108;
  a2[1] = v64;
  return result;
}

void sub_2452B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v8 = &v51 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v10 = &v51 - v9;
  v11 = type metadata accessor for PlaybackIntentDescriptor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v58 = &v51 - v15;
  v16 = *&v3[*(&stru_248.reloff + (v5 & v4))];
  v55 = v6;
  v52 = *(v6 + 1240);
  v53 = (v6 + 1240);
  v17 = v52(v14);
  v18 = sub_AB3820();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(&stru_6A8.offset + (swift_isaMask & *v16)))(v17, v8);
  sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);

  v19 = v12;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DEA510, "\b]\r");
  }

  else
  {
    v20 = v58;
    sub_2591E8(v10, v58, type metadata accessor for PlaybackIntentDescriptor);
    v21 = v56;
    [v56 bounds];
    v69[0] = v21;
    v69[1] = v22;
    v69[2] = v23;
    v69[3] = v24;
    v69[4] = v25;
    v70 = 0;
    PresentationSource.Position.init(source:permittedArrowDirections:)(v69, 15, v61);
    v65[0] = v61[0];
    v65[1] = v61[1];
    v66 = v62;
    v67 = v63;
    v68 = v64;
    v26 = v21;
    v27 = v3;
    v28 = PresentationSource.init(viewController:position:)(v27, v65, v60);
    v29 = (*(&stru_6A8.size + (swift_isaMask & *v16)))(v28);
    if (v29)
    {
      v30 = v29;
      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      v56 = qword_E70E48;
      v53 = (v52)();
      v31 = v20;
      v32 = v54;
      sub_2594D8(v31, v54, type metadata accessor for PlaybackIntentDescriptor);
      sub_15F28(v60, v59);
      v33 = (*(v19 + 80) + 48) & ~*(v19 + 80);
      v34 = (v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      v38 = v55;
      *(v37 + 16) = *(v55 + 544);
      *(v37 + 24) = *(v38 + 552);
      *(v37 + 40) = *(v38 + 568);
      sub_2591E8(v32, v37 + v33, type metadata accessor for PlaybackIntentDescriptor);
      *(v37 + v34) = v57;
      *(v37 + v35) = v27;
      *(v37 + v36) = v30;
      sub_17704(v59, v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
      v39 = v27;
      v40 = v30;
      v41 = v30;
      v42 = v53;
      sub_1109D4(v41, v53, 0, 1, v60, sub_257FB8, v37);
    }

    else
    {
      sub_15F28(v60, v59);
      sub_245974(0, v59, v20, v57, v27);
      sub_12E1C(v59, &unk_DEA520, &unk_AFDBF0);
    }

    v43 = [v27 navigationItem];
    v44 = [v27 parentViewController];
    if (v44)
    {
      v45 = v44;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v46 = v45;
        v47 = [v46 navigationItem];

        v45 = [v46 parentViewController];
        v43 = v47;
        if (!v45)
        {
          goto LABEL_15;
        }
      }
    }

    v47 = v43;
LABEL_15:
    v48 = [v47 searchController];
    if (v48)
    {
      v49 = v48;

      v47 = [v49 searchBar];
      [v47 resignFirstResponder];
    }

    v50 = v58;
    sub_1611C(v60);
    sub_259250(v50, type metadata accessor for PlaybackIntentDescriptor);
  }
}

void sub_245974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin();
  v18 = PlaybackIntentDescriptor.intent.getter(v12, v13, v14, v15, v16, v17);
  [v18 setShuffleMode:a4];

  v25 = PlaybackIntentDescriptor.intent.getter(v24, v19, v20, v21, v22, v23);
  [v25 setRepeatMode:0];

  if (!a1 || (v33[1] = a1, sub_13C80(0, &qword_DEDE20, MPModelObject_ptr), v26 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA9B0, &qword_B059E0), (swift_dynamicCast() & 1) == 0))
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_10;
  }

  if (!*(&v35 + 1))
  {
LABEL_10:
    sub_12E1C(&v34, &unk_DFA9A0, &qword_B059D8);
LABEL_11:
    sub_37D3DC(0);
    return;
  }

  sub_70DF8(&v34, v37);
  v27 = v38;
  v28 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  if (((*(v28 + 16))(v27, v28) & 1) != 0 || (v29 = (*&stru_4C8.segname[swift_isaMask & *a5])()) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v37);
    goto LABEL_11;
  }

  v30 = v29;
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_2594D8(a3, v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaybackIntentDescriptor);
  v31 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v32 = swift_allocObject();
  sub_2591E8(v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for PlaybackIntentDescriptor);
  sub_111FD0(v37, v30, a2, sub_256A98, v32);

  __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_245C78(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (result == 1)
  {
    v12[16] = v6;
    v12[17] = v7;
    sub_15F28(a6, v12);
    sub_245974(a5, v12, a2, a3, a4);
    return sub_12E1C(v12, &unk_DEA520, &unk_AFDBF0);
  }

  return result;
}

void sub_245D00(void *a1)
{
  v3 = sub_AB3430();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin();
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v61 = *(v5 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v10 = &v54 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v54 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v63 = &v54 - v15;
  v16 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 8);
  if (!v16)
  {
    return;
  }

  v17 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink;
  swift_beginAccess();
  v18 = *(v16 + v17);
  if (!v18)
  {
    return;
  }

  v56 = v18;
  v55 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  [a1 bounds];
  v78[0] = a1;
  v78[1] = v19;
  v78[2] = v20;
  v78[3] = v21;
  v78[4] = v22;
  v79 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v78, 15, v70);
  v74[0] = v70[0];
  v74[1] = v70[1];
  v75 = v71;
  v76 = v72;
  v77 = v73;
  v23 = a1;
  PresentationSource.init(viewController:position:)(v1, v74, v69);
  v24 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  (*(*(v24 - 8) + 56))(v63, 1, 1, v24);
  sub_15F84(v67, &v64, &unk_DE8E30, "\b]\r");
  if (*(&v65 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v25 = _s30CollectionViewSelectionHandlerVMa(0);
    v26 = swift_dynamicCast();
    v27 = *(v25 - 8);
    (*(v27 + 56))(v10, v26 ^ 1u, 1, v25);
    v28 = (*(v27 + 48))(v10, 1, v25);
    v29 = v61;
    if (v28 != 1)
    {
      (*(v61 + 16))(v14, &v10[*(v25 + 20)], v5);
      sub_259250(v10, _s30CollectionViewSelectionHandlerVMa);
      v30 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_12E1C(&v64, &unk_DE8E30, "\b]\r");
    v31 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    v29 = v61;
  }

  sub_12E1C(v10, &qword_E037A0, &unk_AF8B30);
  v30 = 1;
LABEL_8:
  (*(v29 + 56))(v14, v30, 1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v33 = Strong, sub_12B2FC(), v35 = v34, v37 = v36, v33, v35))
  {
    ObjectType = swift_getObjectType();
    (*(v37 + 8))(ObjectType, v37);
    v40 = v39;
    swift_unknownObjectRelease();
    sub_15F84(v14, v12, &unk_DE8E20, &qword_AF7990);
    if ((*(v29 + 48))(v12, 1, v5) == 1)
    {
      sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
      v64 = 0u;
      v65 = 0u;
      v66 = 0;
    }

    else
    {
      (*(v29 + 32))(v57, v12, v5);
      sub_256CA4(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_ABAD10();
    }

    v42 = swift_getObjectType();
    v43 = v58;
    sub_3B8F68(v42);
    v41 = sub_21CCAC(1, v43, &v64, v42, v40);
    (*(v59 + 8))(v43, v60);
    sub_12E1C(&v64, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    v41 = 0;
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    sub_12AFE8();
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  sub_15F28(v69, &v64);
  sub_15F84(v67, (v8 + 104), &unk_DE8E30, "\b]\r");
  v48 = v62;
  v49 = v63;
  sub_15F84(v63, &v8[*(v62 + 28)], &unk_DEA510, "\b]\r");
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 1;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  sub_2D594(&v64, v8);
  *(v8 + 12) = 0;
  v50 = *v55;
  *(&v65 + 1) = v48;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
  sub_2594D8(v8, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v52 = v50;
  v53 = v56;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v56, 0, v41, v47, &v64);
  sub_12E1C(v49, &unk_DEA510, "\b]\r");
  sub_12E1C(v67, &unk_DE8E30, "\b]\r");
  sub_1611C(v69);
  sub_259250(v8, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v64, &unk_DE8E40, &unk_AF8050);
}

void sub_2465A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_245D00(v4);
}

uint64_t sub_24660C(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(&stru_1F8.offset + v4);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v59 - v8;
  v69 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v74 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v59 - v10;
  v70 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v59 - v13;
  v14 = sub_ABA9C0();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v73 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v59 - v17;
  v18 = __chkstk_darwin();
  v20 = &v59 - v19;
  v65 = v4;
  v21 = (*(v4 + 1592))(a1, 0, v18);
  v68 = *(&stru_478.reserved2 + (swift_isaMask & *v2));
  v68(v21);
  v66 = v6;
  v22 = *(v6 + 48);
  v23 = v22(v20, 1, v5);
  v71 = v5;
  v72 = v15;
  v67 = v12;
  if (v23 == 1)
  {
    result = (*(v15 + 8))(v20, v14);
    v25 = v14;
LABEL_11:
    v26 = v73;
    goto LABEL_12;
  }

  v59 = v14;
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v25 = v59;
    goto LABEL_11;
  }

  v75[6] = v81;
  v75[7] = v82;
  v76 = v83;
  v75[2] = v77[2];
  v75[3] = v78;
  v75[4] = v79;
  v75[5] = v80;
  v75[0] = v77[0];
  v75[1] = v77[1];
  v26 = v73;
  if (!*(&v78 + 1))
  {
    result = sub_257CA0(v75);
    v25 = v59;
    goto LABEL_12;
  }

  v27 = v22;
  v28 = MPModelPropertyPlaylistTraits;
  v29 = *(&v78 + 1);
  if (![v29 hasLoadedValueForKey:v28])
  {

    goto LABEL_20;
  }

  v30 = MPModelPlaylist.supportsSing.getter();

  if ((v30 & 1) == 0)
  {
LABEL_20:
    result = sub_257CA0(v75);
    v25 = v59;
    v22 = v27;
LABEL_12:
    v38 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
    if (*v38)
    {
      v39 = v38[1];
      swift_storeEnumTagMultiPayload();
      v40 = swift_unknownObjectRetain();
      v68(v40);
      v41 = v71;
      if (v22(v26, 1, v71))
      {
        (*(v72 + 8))(v26, v25);
        v42 = 0;
      }

      else
      {
        v43 = v66;
        v44 = v64;
        (*(v66 + 16))(v64, v26, v41);
        (*(v72 + 8))(v26, v25);
        v42 = (*(*(v65 + 568) + 24))(v41);
        (*(v43 + 8))(v44, v41);
      }

      v45 = v67;
      ObjectType = swift_getObjectType();
      v47 = v70;
      v48 = v70[6];
      v49 = v70[7];
      v50 = v70[8];
      sub_2591E8(v74, v45, type metadata accessor for Metrics.Event.Action);
      *(v45 + v47[5]) = 0;
      *(v45 + v48) = v42;
      *(v45 + v49) = 0;
      *(v45 + v50) = 0;
      (*(v39 + 32))(v45, ObjectType, v39);
      sub_259250(v45, type metadata accessor for Metrics.Event);
      return swift_unknownObjectRelease();
    }

    return result;
  }

  v32 = v71;
  v31 = v72;
  v33 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
  if (*v33)
  {
    v74 = v33[1];
    swift_storeEnumTagMultiPayload();
    v34 = swift_unknownObjectRetain();
    v35 = v61;
    v68(v34);
    v36 = v32;
    if (v27(v35, 1, v32))
    {
      (*(v31 + 8))(v35, v59);
      v37 = 0;
    }

    else
    {
      v51 = v66;
      v52 = v60;
      (*(v66 + 16))(v60, v35, v36);
      (*(v31 + 8))(v35, v59);
      v37 = (*(*(v65 + 568) + 24))(v36);
      (*(v51 + 8))(v52, v36);
    }

    v53 = swift_getObjectType();
    v54 = v70;
    v55 = v70[6];
    v56 = v70[7];
    v57 = v70[8];
    v58 = v62;
    sub_2591E8(v63, v62, type metadata accessor for Metrics.Event.Action);
    *(v58 + v54[5]) = 0;
    *(v58 + v55) = v37;
    *(v58 + v56) = 0;
    *(v58 + v57) = 0;
    (*(v74 + 32))(v58, v53);
    sub_259250(v58, type metadata accessor for Metrics.Event);
    swift_unknownObjectRelease();
  }

  return sub_257CA0(v75);
}

void sub_246E20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24660C(v4);
}

uint64_t sub_246E88(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(&stru_1F8.offset + v3);
  v29 = *(v4 - 8);
  __chkstk_darwin();
  v27 = &v26 - v5;
  v6 = sub_ABA9C0();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin();
  v8 = &v26 - v7;
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Metrics.Event(0);
  v12 = __chkstk_darwin();
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v3 + 1592))(a1, 1, v12);
  v16 = (v1 + *&stru_388.segname[(swift_isaMask & *v1) + 8]);
  if (*v16)
  {
    v26 = v3;
    v28 = v16[1];
    swift_storeEnumTagMultiPayload();
    v17 = *(&stru_478.reserved2 + (swift_isaMask & *v1));
    v18 = swift_unknownObjectRetain();
    v17(v18);
    v19 = v29;
    if ((*(v29 + 48))(v8, 1, v4))
    {
      (*(v30 + 8))(v8, v31);
      v20 = 0;
    }

    else
    {
      v21 = v27;
      (*(v19 + 16))(v27, v8, v4);
      (*(v30 + 8))(v8, v31);
      v20 = (*(*(v26 + 568) + 24))(v4);
      (*(v19 + 8))(v21, v4);
    }

    ObjectType = swift_getObjectType();
    v23 = v11[6];
    v24 = v11[7];
    v25 = v11[8];
    sub_2591E8(v10, v14, type metadata accessor for Metrics.Event.Action);
    v14[v11[5]] = 0;
    *&v14[v23] = v20;
    *&v14[v24] = 0;
    *&v14[v25] = 0;
    (*(v28 + 32))(v14, ObjectType);
    sub_259250(v14, type metadata accessor for Metrics.Event);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24729C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_246E88(v4);
}

void sub_247304(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2581D4(v5);
}

void sub_247368()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7F40, &qword_AF7998);
  __chkstk_darwin();
  v6 = &v92 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v8 = &v92 - v7;
  v106 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v105 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(&stru_1F8.offset + (v3 & v2));
  v107 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v92 - v11;
  v13 = sub_ABA9C0();
  v108 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v92 - v14;
  v103 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v102 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v104 = &v92 - v18;
  v19 = (*(v4 + 1240))(v17);
  if (v19)
  {
    v100 = v6;
    v101 = v8;
    v109 = v19;
    v20 = [v19 results];
    if (!v20)
    {
      __break(1u);
      goto LABEL_75;
    }

    v21 = v20;
    v22 = [v20 firstSection];

    if (v22)
    {
      v23 = v22;
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = v24;
        objc_opt_self();
        v98 = v25;
        v26 = swift_dynamicCastObjCClass();
        v95 = v23;
        if (v26)
        {
          v96 = 0;
        }

        else
        {
          v96 = [v109 results];
        }

        v28 = [objc_allocWithZone(MPMutableSectionedCollection) init];
        v29 = sub_AB9260();
        [v28 appendSection:v29];

        v97 = v28;
        v30 = [v28 appendItem:v98];
        v31 = swift_isaMask & *v1;
        v32 = *(v1 + *(&stru_1F8.reserved2 + v31));
        v33 = v32[15];
        if ((v33 & 0xFE) != 0xF8)
        {
          v93 = v32[11];
          v92 = v32[12];
          v94 = v32[14];
          v34 = v32[16];
          v35 = v32[13];
          v99 = v33;
          (*(v31 + 1216))(v30);
          v36 = v107;
          if ((*(v107 + 48))(v15, 1, v10))
          {
            (*(v108 + 8))(v15, v13);
            v37 = 0;
          }

          else
          {
            (*(v36 + 16))(v12, v15, v10);
            (*(v108 + 8))(v15, v13);
            v38 = v36;
            v37 = (*(*(v4 + 568) + 24))(v10);
            (*(v38 + 8))(v12, v10);
          }

          v39 = v99 & 0xFE;
          v40 = v99 >> 1;
          if (v39 == 122)
          {
            goto LABEL_22;
          }

          if (v99 >> 1 <= 0x7D)
          {
            if ((v40 - 62) < 2 || v40 == 125)
            {
LABEL_22:

              goto LABEL_32;
            }

            goto LABEL_27;
          }

          if (v40 == 126)
          {
            v108 = v34;
          }

          else
          {
            if (v40 != 127)
            {
LABEL_27:
              v108 = v34;
              goto LABEL_28;
            }

            v108 = v34;
          }

LABEL_28:
          v41 = v105;
          swift_storeEnumTagMultiPayload();
          v42 = v103;
          v43 = v103[6];
          v44 = v103[7];
          v45 = v103[8];
          v46 = v41;
          v47 = v102;
          sub_2591E8(v46, v102, type metadata accessor for Metrics.Event.Action);
          *(v47 + v42[5]) = 0;
          *(v47 + v43) = v37;
          *(v47 + v44) = 0;
          *(v47 + v45) = 0;
          v48 = v47;
          v49 = v104;
          sub_2591E8(v48, v104, type metadata accessor for Metrics.Event);
          v50 = (v1 + *&stru_388.segname[(swift_isaMask & *v1) + 8]);
          if (*v50)
          {
            v51 = v50[1];
            ObjectType = swift_getObjectType();
            v53 = *(v51 + 32);
            swift_unknownObjectRetain();
            v53(v49, ObjectType, v51);
            sub_259250(v49, type metadata accessor for Metrics.Event);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_259250(v49, type metadata accessor for Metrics.Event);
          }

          v34 = v108;
LABEL_32:
          v54 = type metadata accessor for LibraryAddKeepLocalHandlingController();
          v55 = v97;
          swift_unknownObjectRetain();
          v56 = sub_23D9EC();
          [*(v1 + *&stru_248.sectname[swift_isaMask & *v1]) bounds];
          v128[0] = v56;
          v128[1] = v57;
          v128[2] = v58;
          v128[3] = v59;
          v128[4] = v60;
          v129 = 0;
          PresentationSource.Position.init(source:permittedArrowDirections:)(v128, 15, v115);
          v124[0] = v115[0];
          v124[1] = v115[1];
          v125 = v116;
          v126 = v117;
          v127 = v118;
          *&v61 = PresentationSource.init(viewController:position:)(v1, v124, v114).n128_u64[0];
          if (v39 == 122)
          {
            swift_unknownObjectRelease();

            sub_1611C(v114);
LABEL_72:
            swift_unknownObjectRelease();
            return;
          }

          if (v40 <= 124)
          {
            if (v40 != 62)
            {
              if (v40 == 63)
              {
                goto LABEL_38;
              }

LABEL_41:
              if ((v99 & 0x80) != 0)
              {
                v84 = v100;
                MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)(v34, v100);
                v85 = sub_AB8230();
                v86 = *(v85 - 8);
                if ((*(v86 + 48))(v84, 1, v85) == 1)
                {
                  swift_unknownObjectRelease();

                  sub_1611C(v114);
                  v87 = &qword_DE7F40;
                  v88 = &qword_AF7998;
                  v89 = v84;
                }

                else
                {
                  MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter(v119);
                  (*(v86 + 8))(v84, v85);
                  if (!v122)
                  {
                    goto LABEL_68;
                  }

                  v110[0] = v119[0];
                  v110[1] = v119[1];
                  v110[2] = v120;
                  v111 = v121;
                  v112 = v122;
                  v113 = v123;
                  v91 = Alert.uiAlertController.getter(v120);
                  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v91, 1, 1, 0, 0);
                  swift_unknownObjectRelease();

                  sub_1611C(v114);
                  v87 = &unk_DE7F48;
                  v88 = &unk_AF8BC0;
                  v89 = v119;
                }

                sub_12E1C(v89, v87, v88);
LABEL_71:

                goto LABEL_72;
              }

              if ([v55 firstItem])
              {
                objc_opt_self();
                v68 = swift_dynamicCastObjCClass();
                if (v68)
                {
                  v69 = v68;
                  v70 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
                  [v70 setModelObject:v69];
                  [v70 setEnableState:3];
                  v71 = [objc_opt_self() sharedDeviceLibraryController];
                  v72 = v96;
                  [v71 performKeepLocalChangeRequest:v70 withRelatedModelObjects:v96];
                  swift_unknownObjectRelease();

                  sub_1611C(v114);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  return;
                }

                goto LABEL_55;
              }

LABEL_68:
              swift_unknownObjectRelease();

              goto LABEL_69;
            }

            if (![v55 firstItem])
            {
              goto LABEL_68;
            }

            objc_opt_self();
            v76 = swift_dynamicCastObjCClass();
            if (!v76)
            {
LABEL_55:
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
LABEL_69:

              goto LABEL_70;
            }

            v77 = v76;
            if (([v76 libraryRemovalSupportedOptions] & 2) != 0)
            {
              v90 = v77;
              v79 = v96;
              sub_2BA534(v90, v96, v114);
            }

            else
            {
              v78 = v77;
              v79 = v96;
              sub_2BAC50(v78, v96);
            }

            swift_unknownObjectRelease();
          }

          else
          {
            if (v40 == 125)
            {
              if ([v55 firstItem])
              {
                objc_opt_self();
                v73 = swift_dynamicCastObjCClass();
                if (!v73)
                {
                  swift_unknownObjectRelease();
                }
              }

              else
              {
                v73 = 0;
              }

              v80 = sub_AB9990();
              v81 = v101;
              (*(*(v80 - 8) + 56))(v101, 1, 1, v80);
              sub_15F28(v114, v110);
              sub_AB9940();
              v82 = sub_AB9930();
              v83 = swift_allocObject();
              *(v83 + 16) = v82;
              *(v83 + 24) = &protocol witness table for MainActor;
              sub_17704(v110, v83 + 32);
              sub_DBDC8(0, 0, v81, &unk_AF79B0, v83);
              swift_unknownObjectRelease();

              sub_1611C(v114);
              swift_unknownObjectRelease();

              goto LABEL_58;
            }

            if (v40 != 126)
            {
              if (v40 == 127)
              {
LABEL_38:
                v62 = sub_AB9990();
                v63 = v101;
                (*(*(v62 - 8) + 56))(v101, 1, 1, v62);
                sub_15F28(v114, v110);
                v64 = swift_allocObject();
                *(v64 + 16) = 0;
                *(v64 + 24) = 0;
                v65 = v97;
                *(v64 + 32) = v54;
                *(v64 + 40) = v65;
                v66 = v92;
                *(v64 + 48) = v93;
                *(v64 + 56) = v66;
                *(v64 + 64) = v35;
                *(v64 + 72) = v94;
                *(v64 + 80) = v99;
                *(v64 + 81) = v119[0];
                *(v64 + 84) = *(v119 + 3);
                v67 = v98;
                *(v64 + 88) = v34;
                *(v64 + 96) = v67;
                *(v64 + 104) = v96;
                sub_17704(v110, v64 + 112);
                sub_DC0B8(0, 0, v63, &unk_AF79C0, v64);
                sub_1611C(v114);

                swift_unknownObjectRelease();
LABEL_58:

                return;
              }

              goto LABEL_41;
            }

            if (![v55 firstItem])
            {
              goto LABEL_68;
            }

            objc_opt_self();
            v74 = swift_dynamicCastObjCClass();
            v75 = v96;
            if (!v74)
            {
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
LABEL_70:
              sub_1611C(v114);
              goto LABEL_71;
            }

            sub_2B9FD0(v74, v96, v114);
            swift_unknownObjectRelease();
          }

          sub_1611C(v114);

          swift_unknownObjectRelease();
          goto LABEL_72;
        }

LABEL_75:
        __break(1u);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v27 = v109;
    }
  }
}

void sub_24823C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v3 = &v21 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*&stru_4C8.segname[swift_isaMask & *v0])(v8);
  if (v11)
  {
    v22 = v11;
    v12 = [v11 results];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 firstSection];

      if (v14)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v17 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
          v18 = sub_AB3820();
          (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
          (*(&stru_6A8.offset + (swift_isaMask & *v17)))(0, v3);
          sub_12E1C(v3, &unk_DE8E20, &qword_AF7990);
          if ((*(v7 + 48))(v5, 1, v6) == 1)
          {
            sub_12E1C(v5, &unk_DEA510, "\b]\r");
          }

          else
          {
            v20 = sub_2591E8(v5, v10, type metadata accessor for PlaybackIntentDescriptor);
            if ((*&stru_1F8.sectname[swift_isaMask & *v17])(v20))
            {
              sub_3B8FA0(v10, v16, v1, &off_D04950);
              sub_259250(v10, type metadata accessor for PlaybackIntentDescriptor);

              swift_unknownObjectRelease();

              return;
            }

            sub_259250(v10, type metadata accessor for PlaybackIntentDescriptor);
          }

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v19 = v22;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2486B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_ABAB50();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_12E1C(v9, &unk_DE8E40, &unk_AF8050);
}

double sub_248740(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v6 = *v3;
  v7 = swift_isaMask;
  v49 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(&stru_1F8.offset + (v7 & v6));
  v11 = sub_ABA9C0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v48 - v13;
  sub_46B304();
  v15 = sub_23B888(a3);
  v51 = v16;

  (*(&stru_478.reserved2 + (swift_isaMask & *v3)))(v17);
  if ((*(*(v10 - 8) + 48))(v14, 1, v10) == 1)
  {
    v18 = (*(v12 + 8))(v14, v11);
    goto LABEL_12;
  }

  v18 = swift_dynamicCast();
  if ((v18 & 1) == 0)
  {
LABEL_12:
    v31 = (v4 + *&stru_388.segname[(swift_isaMask & *v4) + 8]);
    if (*v31)
    {
      v32 = v31[1];
      ObjectType = swift_getObjectType();
      type metadata accessor for Metrics.Event.Action(0);
      swift_storeEnumTagMultiPayload();
      v34 = v50;
      v35 = v49[7];
      v36 = v49[8];
      v37 = v49[6];
      v9[v49[5]] = 2;
      *&v9[v37] = v34;
      *&v9[v35] = v15;
      *&v9[v36] = 0;
      v38 = *(v32 + 32);

      v39 = v34;
      swift_unknownObjectRetain();
      v38(v9, ObjectType, v32);
      sub_259250(v9, type metadata accessor for Metrics.Event);
      v18 = swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  v52[6] = v60;
  v52[7] = v61;
  v53 = v62;
  v52[2] = v56;
  v52[3] = v57;
  v52[4] = v58;
  v52[5] = v59;
  v52[0] = v54;
  v52[1] = v55;
  if (!*(&v57 + 1))
  {
    goto LABEL_11;
  }

  v19 = MPModelPropertyPlaylistTraits;
  v20 = *(&v57 + 1);
  if (![v20 hasLoadedValueForKey:v19])
  {

    goto LABEL_11;
  }

  v21 = MPModelPlaylist.supportsSing.getter();

  if ((v21 & 1) == 0)
  {
LABEL_11:
    v18 = sub_257CA0(v52);
    goto LABEL_12;
  }

  v22 = (v4 + *&stru_388.segname[(swift_isaMask & *v4) + 8]);
  if (*v22)
  {
    v23 = v22[1];
    v24 = swift_getObjectType();
    type metadata accessor for Metrics.Event.Action(0);
    swift_storeEnumTagMultiPayload();
    v25 = v50;
    v26 = v49[7];
    v27 = v49[8];
    v28 = v49[6];
    v9[v49[5]] = 2;
    *&v9[v28] = v25;
    *&v9[v26] = v15;
    *&v9[v27] = 0;
    v29 = *(v23 + 32);

    v30 = v25;
    swift_unknownObjectRetain();
    v29(v9, v24, v23);
    sub_259250(v9, type metadata accessor for Metrics.Event);
    swift_unknownObjectRelease();
  }

  v18 = sub_257CA0(v52);
LABEL_14:
  sub_251140(v18);
  v40 = [v4 navigationItem];
  v41 = [v4 parentViewController];
  if (v41)
  {
    v42 = v41;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v43 = v42;
      v44 = [v43 navigationItem];

      v42 = [v43 parentViewController];
      v40 = v44;
      if (!v42)
      {
        goto LABEL_21;
      }
    }
  }

  v44 = v40;
LABEL_21:
  v45 = [v44 searchController];

  if (v45)
  {
    v46 = [v45 searchBar];

    [v46 resignFirstResponder];
  }

  return result;
}

void sub_248CA0(void *a1, void *a2)
{
  v5 = sub_AB3430();
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin();
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin();
  v82 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v88 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v13 = &v76 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v76 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  *&v18 = __chkstk_darwin().n128_u64[0];
  v91 = &v76 - v19;
  v20 = [a2 identifiers];
  v21 = [v20 universalStore];

  if (!v21)
  {
    return;
  }

  v22 = [v21 adamID];
  swift_unknownObjectRelease();
  v23 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
  if (!v23)
  {
    return;
  }

  v81 = a2;
  v24 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_recordLabelLinkIdentifierMap;
  swift_beginAccess();
  v25 = *(v23 + v24);
  if (!v25)
  {
    return;
  }

  if (!*(v25 + 16))
  {
    return;
  }

  v80 = v2;
  v26 = sub_2F5A90(v22);
  if ((v27 & 1) == 0)
  {
    return;
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  v79 = v25;

  v29 = v28;
  v78 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v30 = [a1 view];
  if (!v30)
  {
    __break(1u);
    return;
  }

  v31 = v30;
  sub_D5958(v98);
  v32 = v99;
  v33 = v100;
  v34 = v101;

  v102[0] = v98[0];
  v102[1] = v98[1];
  v103 = v32;
  v104 = v33;
  v105 = v34;
  v77 = v80;
  PresentationSource.init(viewController:position:)(v77, v102, v97);
  v35 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v95, 0, sizeof(v95));
  v96 = 0;
  (*(*(v35 - 8) + 56))(v91, 1, 1, v35);
  sub_15F84(v95, &v92, &unk_DE8E30, "\b]\r");
  if (*(&v93 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v36 = _s30CollectionViewSelectionHandlerVMa(0);
    v37 = swift_dynamicCast();
    v38 = *(v36 - 8);
    (*(v38 + 56))(v13, v37 ^ 1u, 1, v36);
    if ((*(v38 + 48))(v13, 1, v36) != 1)
    {
      v40 = v89;
      v39 = v90;
      (*(v89 + 16))(v17, &v13[*(v36 + 20)], v90);
      sub_259250(v13, _s30CollectionViewSelectionHandlerVMa);
      v41 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    sub_12E1C(&v92, &unk_DE8E30, "\b]\r");
    v42 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v42 - 8) + 56))(v13, 1, 1, v42);
  }

  sub_12E1C(v13, &qword_E037A0, &unk_AF8B30);
  v41 = 1;
  v40 = v89;
  v39 = v90;
LABEL_12:
  (*(v40 + 56))(v17, v41, 1, v39);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v44 = Strong, sub_12B2FC(), v46 = v45, v48 = v47, v44, v46))
  {
    ObjectType = swift_getObjectType();
    (*(v48 + 8))(ObjectType, v48);
    v51 = v50;
    swift_unknownObjectRelease();
    sub_15F84(v17, v15, &unk_DE8E20, &qword_AF7990);
    if ((*(v40 + 48))(v15, 1, v39) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
      v92 = 0u;
      v93 = 0u;
      v94 = 0;
    }

    else
    {
      (*(v40 + 32))(v82, v15, v39);
      sub_256CA4(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_ABAD10();
    }

    v52 = swift_getObjectType();
    v53 = v83;
    sub_3B8F68(v52);
    v90 = sub_21CCAC(1, v53, &v92, v52, v51);
    (*(v84 + 8))(v53, v85);
    sub_12E1C(&v92, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v17, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E20, &qword_AF7990);
    v90 = 0;
  }

  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    v56 = v29;
    sub_12AFE8();
    v58 = v57;
  }

  else
  {
    v56 = v29;
    v58 = 0;
  }

  sub_15F28(v97, &v92);
  sub_15F84(v95, (v11 + 104), &unk_DE8E30, "\b]\r");
  v59 = v86;
  v60 = v91;
  sub_15F84(v91, &v11[*(v86 + 28)], &unk_DEA510, "\b]\r");
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_2D594(&v92, v11);
  v61 = v81;
  *(v11 + 12) = v81;
  v62 = *v78;
  *(&v93 + 1) = v59;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v92);
  sub_2594D8(v11, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v64 = v61;
  v65 = v62;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v56, 0, v90, v58, &v92);
  sub_12E1C(v60, &unk_DEA510, "\b]\r");
  sub_12E1C(v95, &unk_DE8E30, "\b]\r");
  sub_1611C(v97);
  sub_259250(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v92, &unk_DE8E40, &unk_AF8050);

  v66 = v88;
  *v88 = v64;
  type metadata accessor for Metrics.Event.Action(0);
  swift_storeEnumTagMultiPayload();
  v67 = v87[7];
  v68 = v87[8];
  v69 = v87[6];
  *(v66 + v87[5]) = 0;
  *(v66 + v69) = v61;
  *(v66 + v67) = 0;
  *(v66 + v68) = 0;
  v70 = &v77[*&stru_388.segname[(swift_isaMask & *v77) + 8]];
  if (*v70)
  {
    v71 = *(v70 + 1);
    v72 = swift_getObjectType();
    v73 = *(v71 + 32);
    v74 = v64;
    swift_unknownObjectRetain();
    v73(v66, v72, v71);
    sub_259250(v66, type metadata accessor for Metrics.Event);

    swift_unknownObjectRelease();
  }

  else
  {
    v75 = v64;
    sub_259250(v66, type metadata accessor for Metrics.Event);
  }
}

void sub_249754(uint64_t a1)
{
  v3 = *(&stru_2E8.offset + (swift_isaMask & *v1));
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_249844(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  sub_25896C(v5);
}

void sub_2498A4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = a1;
  sub_258D5C(v6, a4, v7);
}

CGFloat sub_249914()
{
  v1 = *(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0)));
  if (!v1)
  {
    return 0.0;
  }

  [*(v1 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) bounds];
  result = CGRectGetHeight(v3) + -250.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double sub_24999C()
{
  v1 = [v0 navigationItem];
  v2 = [v0 parentViewController];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v4 = v3;
      v5 = [v4 navigationItem];

      v3 = [v4 parentViewController];
      v1 = v5;
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = v1;
LABEL_8:
  v6 = [v5 navigationBar];

  v7 = 10.0;
  if (v6)
  {
    v8 = [v6 _backgroundView];

    if (v8)
    {
      [v8 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v18.origin.x = v10;
      v18.origin.y = v12;
      v18.size.width = v14;
      v18.size.height = v16;
      v7 = CGRectGetMaxY(v18) + 10.0;
    }
  }

  return v7 + sub_249914();
}

id sub_249B20()
{
  if ([v0 isEditing])
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0)));
    v3 = *&v2[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
    [*&v3[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField] frame];
    [v3 convertRect:v2 toCoordinateSpace:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 view];
    [v2 convertRect:v12 toView:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v28.origin.x = v14;
    v28.origin.y = v16;
    v28.size.width = v18;
    v28.size.height = v20;
    MidY = CGRectGetMidY(v28);
    result = [v0 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    [result safeAreaInsets];
    v25 = v24;

    v1 = MidY < v25;
  }

  v26 = *(&stru_428.offset + (swift_isaMask & *v0));

  return v26(v1);
}

void sub_249CDC(__n128 a1, double a2)
{
  v4 = a1.n128_f64[0];
  v5 = sub_4D3DD0();
  [v5 contentSize];
  v7 = v6;
  [v5 adjustedContentInset];
  v9 = v7 + v8;
  [v5 adjustedContentInset];
  v11 = v9 + v10;
  [v5 bounds];
  if (CGRectGetHeight(v24) >= v11 || -sub_24999C() > a2)
  {

    return;
  }

  [v5 contentOffset];
  v13 = v12;
  [v5 adjustedContentInset];
  v15 = -v14;
  if (v13 == v15)
  {
    goto LABEL_9;
  }

  v16 = [v2 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    v15 = -v19;
    if (-v19 > a2)
    {

      v20 = [v2 view];
      if (v20)
      {
        v21 = v20;
        [v20 safeAreaInsets];

        return;
      }

      goto LABEL_11;
    }

LABEL_9:
    [v5 adjustedContentInset];
    v23 = v22;

    sub_249E90(v2, v23 + v4);
    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

double sub_249E90(void *a1, double a2)
{
  v4 = [a1 navigationItem];
  v5 = [a1 parentViewController];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v7 = v6;
      v8 = [v7 navigationItem];

      v6 = [v7 parentViewController];
      v4 = v8;
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = v4;
LABEL_8:
  v9 = [v8 navigationBar];

  if (v9)
  {
    v10 = [v9 _backgroundView];

    if (v10)
    {
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v21.origin.x = v12;
      v21.origin.y = v14;
      v21.size.width = v16;
      v21.size.height = v18;
      CGRectGetHeight(v21);
    }
  }

  v19 = *(a1 + *(&stru_298.reserved2 + (swift_isaMask & *a1)));
  if (v19)
  {
    [*(v19 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) bounds];
    CGRectGetHeight(v22);
  }

  return a2;
}

void sub_24A09C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_258E80();
}

id sub_24A128(id result)
{
  v2 = *(&stru_2E8.reloff + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = result;
  if (v3 != *(v1 + *(&stru_2E8.reloff + (swift_isaMask & *v1))))
  {
    return [*(v1 + *&stru_248.segname[swift_isaMask & *v1]) setSelected:?];
  }

  return result;
}

id sub_24A1BC(id result)
{
  v2 = *(v1 + *(&stru_2E8.flags + (swift_isaMask & *v1)));
  if (v2 != (result & 1))
  {
    v3 = *&stru_248.segname[swift_isaMask & *v1];
    v4 = *(v1 + v3);
    if (*(v1 + *(&stru_2E8.flags + (swift_isaMask & *v1))))
    {
      [*(v1 + v3) setSelected:*(v1 + *(&stru_2E8.reloff + (swift_isaMask & *v1)))];
    }

    return [v4 setHidden:v2 ^ 1u];
  }

  return result;
}

id sub_24A290(char a1)
{
  v2 = *(&stru_2E8.flags + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return sub_24A1BC(v3);
}

double sub_24A2C4(char a1, uint64_t a2)
{
  v3 = v2;
  if (sub_24F5B0())
  {
    v5 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32);
    if (v5)
    {
      v6 = *&stru_B8.segname[(*v5 & swift_isaMask) + 8];
      v7 = v5;
      v8 = v6();

      v9 = (*(&stru_2E8.size + (swift_isaMask & *v8)))();
      if (v9)
      {
        v10 = sub_250FAC();
        Strong = swift_unknownObjectWeakLoadStrong();

        if (!Strong || (Strong, Strong != v9) || (v16 = swift_unknownObjectWeakLoadStrong()) == 0)
        {
          v12 = objc_allocWithZone(type metadata accessor for UpsellBannerViewController());
          v13 = v9;
          v14 = sub_1D4A3C(v9);
          v15 = *&stru_388.segname[swift_isaMask & *v3];
          v16 = *(v3 + v15);
          *(v3 + v15) = v14;
        }

        v17 = *(v3 + *&stru_388.segname[swift_isaMask & *v3]);
        sub_AB9730();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }
    }
  }

  v18 = *(v3 + *(&stru_248.reloff + (swift_isaMask & *v3)));
  sub_AB9730();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();

  sub_195F0(v19);
  v20 = sub_25036C();
  v21 = *(v3 + *(&stru_248.flags + (swift_isaMask & *v3)));
  if (v20)
  {
    v22 = *&v21[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
    if (v22 >> 62)
    {
      v23 = sub_ABB060();
    }

    else
    {
      v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    }

    v21;
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    if (!v23)
    {
      sub_A363C();
    }
  }

  else
  {
    sub_4D4068(_swiftEmptyArrayStorage, 0);
  }

  sub_4D4068(_swiftEmptyArrayStorage, a1 & 1);

  return result;
}

void sub_24A69C()
{
  v1 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
  v7 = *(&stru_1F8.size + (swift_isaMask & *v0));
  v8 = v1;
  v2 = type metadata accessor for ContainerDetailViewController(0, &v7);
  *(&v8 + 1) = v2;
  *&v7 = v0;
  v3 = v0;
  sub_29CBEC(&v7, "link:", 0);
  sub_12E1C(&v7, &unk_DE8E40, &unk_AF8050);
  *(&v8 + 1) = v2;
  *&v7 = v3;
  v4 = v3;
  sub_29CBEC(&v7, "play:", 1);
  sub_12E1C(&v7, &unk_DE8E40, &unk_AF8050);
  *(&v8 + 1) = v2;
  *&v7 = v4;
  v5 = v4;
  sub_29CBEC(&v7, "shuffle:", 2);
  sub_12E1C(&v7, &unk_DE8E40, &unk_AF8050);
  *(&v8 + 1) = v2;
  *&v7 = v5;
  v5;
  sub_29CBEC(&v7, "more:", 3);
  v6 = sub_12E1C(&v7, &unk_DE8E40, &unk_AF8050);
  sub_251140(v6);
}

void sub_24A848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_isaMask & *v2;
  v7 = (*(&stru_6F8.flags + v6))();
  v8 = *&stru_2E8.segname[swift_isaMask & *v2];
  if (v7)
  {
    *(v2 + v8) = 0;
    v9 = (*&stru_748.segname[(swift_isaMask & *v2) + 8])();
    v10 = [v2 traitCollection];
    if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
    {
      v11 = *(v3 + *&stru_298.segname[swift_isaMask & *v3] + 56);

      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        goto LABEL_7;
      }

      v13 = v12;
      v10 = v9;
      [v13 setFilteringOptions:{objc_msgSend(v13, "filteringOptions") | 2}];
    }

LABEL_7:
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = *(v6 + 544);
    *(v15 + 24) = *(v6 + 552);
    *(v15 + 40) = *(v6 + 568);
    *(v15 + 48) = v14;
    *(v15 + 56) = a1;
    *(v15 + 64) = a2;
    v24[4] = sub_257BF4;
    v24[5] = v15;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_151E0;
    v24[3] = &block_descriptor_176;
    v16 = _Block_copy(v24);
    sub_307CC(a1, a2);

    [v9 performWithResponseHandler:v16];
    _Block_release(v16);

    return;
  }

  *(v2 + v8) = 1;
  if (a1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = *&stru_2E8.segname[(swift_isaMask & *v3) + 8];
    swift_beginAccess();
    v19 = *(v3 + v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v18) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_6AFC0(0, v19[2] + 1, 1, v19);
      *(v3 + v18) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_6AFC0((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = sub_257BA4;
    v23[5] = v17;
    *(v3 + v18) = v19;
    swift_endAccess();
  }
}

double sub_24ABDC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_errorRetain();
      sub_24AD48(a2, 1);

LABEL_6:
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v10 = v11;
      sub_24AD48(a1, 0);
      goto LABEL_6;
    }
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  sub_307CC(a4, a5);
  v13 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_257C70, v12);

  return result;
}

uint64_t (*sub_24AD10(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3))(uint64_t)
{
  if (result)
  {
    return result(a3);
  }

  return result;
}

void sub_24AD48(void *a1, char a2)
{
  if (a2)
  {
    v38 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 16);
    if (v38)
    {
      sub_21A5DC(a1, 1);
      sub_15F84(&v38, &v37, &unk_E02C90, &unk_B0C5C0);
      v4 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v5 = MPModelObject.bestIdentifier(for:)(*v4, 0);
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        sub_12E1C(&v38, &unk_E02C90, &unk_B0C5C0);
LABEL_16:
        if (qword_DE6940 != -1)
        {
          swift_once();
        }

        v21 = sub_AB4BC0();
        __swift_project_value_buffer(v21, qword_E71120);
        sub_21A5DC(a1, 1);

        v22 = sub_AB4BA0();
        v23 = sub_AB9F50();

        sub_21A5E8(a1, 1);
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v24 = 136315394;
          v25 = sub_425E68(v7, v8, &v37);

          *(v24 + 4) = v25;
          *(v24 + 12) = 2082;
          swift_getErrorValue();
          v26 = sub_ABB520();
          v28 = sub_425E68(v26, v27, &v37);

          *(v24 + 14) = v28;
          _os_log_impl(&dword_0, v22, v23, "Error processing new container response for container id: %s, error: %{public}s", v24, 0x16u);
          swift_arrayDestroy();

          sub_21A5E8(a1, 1);
        }

        else
        {
          sub_21A5E8(a1, 1);
        }

        return;
      }

      v18 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
      v7 = MPModelObject.bestIdentifier(for:)(*v18, 0);
      v8 = v19;
      sub_12E1C(&v38, &unk_E02C90, &unk_B0C5C0);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_21A5DC(a1, 1);
    }

    v11 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 24);
    if (v11)
    {
      v12 = *(&stru_B8.offset + (*v11 & swift_isaMask));
      v13 = v11;
      v14 = v12();

      if (v14)
      {

        v16 = (*(&stru_B8.reserved2 + (swift_isaMask & *v14)))(v15);
        if (v17)
        {
          v7 = v16;
          v8 = v17;

          goto LABEL_16;
        }

        v7 = (*(&stru_B8.offset + (swift_isaMask & *v14)))(v16);
        v8 = v20;

        if (v8)
        {
          goto LABEL_16;
        }
      }
    }

    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, qword_E71120);
    swift_errorRetain();
    v30 = sub_AB4BA0();
    v31 = sub_AB9F50();
    sub_21A5E8(a1, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136446210;
      swift_getErrorValue();
      v34 = sub_ABB520();
      v36 = sub_425E68(v34, v35, &v37);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "Error processing new container response, error: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    sub_21A5E8(a1, 1);
  }

  else
  {
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = a1;
    sub_21A5DC(a1, 0);
    sub_21A5DC(a1, 0);
    v10 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_2572F4, v9);

    sub_21A5E8(a1, 0);
  }
}

void sub_24B304(void *a1, void *a2)
{
  v4 = *&stru_4C8.segname[(swift_isaMask & *a1) + 8];
  v5 = a2;
  v4(a2);
  v6 = *&stru_2E8.segname[(swift_isaMask & *a1) + 8];
  swift_beginAccess();
  v7 = *(a1 + v6);

  sub_24012C(_swiftEmptyArrayStorage);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      v27 = a2;

      v10(&v27);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (![objc_opt_self() isEnabled])
  {
    goto LABEL_6;
  }

  static ApplicationCapabilities.shared.getter(&v27);
  sub_70C54(&v27);
  if ((v28 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a1 + *&stru_298.segname[swift_isaMask & *a1] + 40);
  if (v11)
  {
    v12 = v11;

    v13 = v12;
    sub_257A58(v11);

    return;
  }

  if (a2)
  {
    v14 = [v5 results];
    if (v14)
    {
      v15 = v14;

      v16 = [v15 firstSection];

      if (v16)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass() && (v17 = MPModelObject.bestIdentifier(for:)(3, 2u), v18))
        {
          v19 = v17;
          v20 = v18;
          v21 = swift_allocObject();
          *(v21 + 16) = a1;
          v22 = objc_allocWithZone(type metadata accessor for Interstellar.HighlightsSource());
          v23 = a1;
          v24 = [v22 init];
          v25 = swift_allocObject();
          v25[2] = v24;
          v25[3] = v19;
          v25[4] = v20;
          v25[5] = sub_257AFC;
          v25[6] = v21;
          v26 = v24;

          sub_449D54(1, sub_257B94, v25);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_6:
  }
}

void sub_24B628(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_AB7C10();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB7C50();
  __chkstk_darwin();
  v15 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v48 = v11;
  v49 = v10;
  v46 = v16;
  v47 = v13;
  v44 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v17;
  v43 = a4;
  if (v15)
  {
    v42 = a5;
    v18 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver + 16);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 72);
      while (1)
      {
        v21 = *(v20 - 5);
        v23 = *(v20 - 3);
        v22 = *(v20 - 2);
        v24 = *(v20 - 1);
        v25 = *v20;
        v26 = *(v20 - 32);
        if (v23 == a2 && v22 == a3)
        {

          v30 = v21;

          v23 = a2;
          goto LABEL_21;
        }

        if (sub_ABB3C0())
        {

          v31 = v21;
          goto LABEL_20;
        }

        if (v25)
        {
          if (v24 == a2 && v25 == a3)
          {
            v28 = a3;
            v29 = v21;

            a3 = v22;
            v24 = a2;
            v25 = v28;
            goto LABEL_21;
          }

          if (sub_ABB3C0())
          {
            break;
          }
        }

        v20 += 6;
        if (!--v19)
        {
          goto LABEL_16;
        }
      }

      v32 = v21;

LABEL_20:

      a3 = v22;
    }

    else
    {
LABEL_16:
      v21 = 0;
      v26 = 0;
      v23 = 0;
      a3 = 0;
      v24 = 0;
      v25 = 0;
    }

LABEL_21:
    a5 = v42;
  }

  else
  {
    v21 = 0;
    v26 = 0;
    v23 = 0;
    a3 = 0;
    v24 = 0;
    v25 = 0;
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v42 = sub_ABA150();
  v33 = swift_allocObject();
  v33[2] = v43;
  v33[3] = a5;
  v33[4] = v21;
  v33[5] = v26;
  v41 = v26;
  v33[6] = v23;
  v33[7] = a3;
  v33[8] = v24;
  v33[9] = v25;
  aBlock[4] = sub_C3964;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_55_0;
  v43 = _Block_copy(aBlock);

  sub_256B50(v21, v26, v23, a3, v24, v25);

  v34 = v44;
  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_256CA4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
  v35 = v47;
  v36 = v49;
  sub_ABABB0();
  v37 = v42;
  v38 = v43;
  sub_ABA160();
  v39 = sub_256B9C(v21, v41, v23, a3, v24, v25);
  (*(v48 + 8))(v35, v36, v39);
  (*(v45 + 8))(v34, v46);
  _Block_release(v38);
}

void sub_24BB44()
{
  if ([v0 isViewLoaded])
  {
    sub_24FF04();
    sub_2437D0();
    sub_24BB90();

    sub_251140(v1);
  }
}

void sub_24BB90()
{
  v1 = *(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0)));
  (*(&stru_748.offset + (swift_isaMask & *v0)))(v1, 1);
  v2 = [v1 setNeedsLayout];
  v3 = (*(&stru_158.offset + (**(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) & swift_isaMask)))(v2);
  [v3 reloadData];
}

uint64_t sub_24BCA8(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = a2;
  v5 = swift_isaMask & *v2;
  v6 = *(&stru_1F8.offset + v5);
  v7 = sub_ABA9C0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = *(v6 - 8);
  v12 = __chkstk_darwin();
  v14 = &v42 - v13;
  (*(v5 + 1216))(v12);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v45 = v11;
  (*(v11 + 32))(v14, v10, v6);
  v16 = *(v5 + 568);
  v17 = *(v16 + 48);
  v44 = v14;
  v18 = v17(v6, v16);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v46 = a1;
  v21 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v43 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v23 = *(v21 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
  v24 = &v23[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v26 = *&v23[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v25 = *&v23[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v27 = v23[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v27 || (v20 == v26 ? (v29 = v25 == v22) : (v29 = 0), !v29 && (sub_ABB3C0() & 1) == 0))
  {
    *v24 = v20;
    *(v24 + 1) = v22;
    v24[16] = 0;
    v28 = v23;

    sub_2372F0(v26, v25, v27);
    sub_2366F4();
  }

  v30 = v43;
  sub_2A2D6C();
  v31 = v44;
  v32 = (*(v16 + 96))(v6, v16);
  v34 = v30[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
  v30[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = v32 & 1;
  if ((v32 & 1) != v34)
  {
    v33.n128_f64[0] = sub_2A4304();
  }

  v36 = v45;
  v35 = v46;
  if (v47)
  {
    v37 = (*(v16 + 32))(v6, v16, v33);
    v38 = *(*(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent) + 64);
    if (v38 && v37)
    {
      if (([v38 isArtworkVisuallyIdenticalToCatalog:v37] & 1) == 0)
      {
LABEL_26:
        sub_74EA4(v37);
        goto LABEL_27;
      }
    }

    else if (!v38 || v37)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  sub_23C6F4(v35);
  v39 = [v3 traitCollection];
  v40 = UITraitCollection.isMediaPicker.getter(v39);

  v41 = *(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls);
  *(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) = v40;
  if (v40 != v41)
  {
    v30[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls] = v40;
    [v30 setNeedsLayout];
  }

  return (*(v36 + 8))(v31, v6);
}

uint64_t sub_24C108(uint64_t result)
{
  v2 = *(&stru_2E8.reserved2 + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = result;
  if (*(v1 + *(&stru_2E8.reserved2 + (swift_isaMask & *v1))) != v3)
  {
    return (*(&stru_6F8.offset + (swift_isaMask & *v1)))(0, _swiftEmptyArrayStorage);
  }

  return result;
}

void (*sub_24C1A8(void (*result)(void)))(void)
{
  if (*(v1 + *&stru_338.segname[(swift_isaMask & *v1) - 8]) == 1 && (result & 1) == 0)
  {
    v2 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
    v4[0] = *(&stru_1F8.size + (swift_isaMask & *v1));
    v4[1] = v2;
    v3 = type metadata accessor for ContainerDetailViewController(0, v4);
    return sub_133930(v3, &off_D04928);
  }

  return result;
}

void (*sub_24C240(char a1))(void)
{
  v2 = *&stru_338.segname[(swift_isaMask & *v1) - 8];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return sub_24C1A8(v3);
}

double sub_24C274(uint64_t a1)
{
  *(v1 + *&stru_338.segname[(swift_isaMask & *v1) + 8]) = a1;

  return result;
}

void sub_24C2A8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = (swift_isaMask & *v2);
  v223 = v2;
  v6 = v5;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v222 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v202 - v8;
  v10 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_cropStyle;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (v11)
  {
    v12 = *(a1 + v10);
  }

  else
  {
    v12 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    v11 = 0;
  }

  v13 = v11;
  v14 = JSVideoArtwork.artworkCatalog(defaultCropStyle:)(v12);

  if (v14)
  {
    [v14 setVideoCacheStoragePolicy:1];
  }

  v15 = *(a1 + v10);
  if (v15)
  {
    v16 = *(a1 + v10);
  }

  else
  {
    v16 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    v15 = 0;
  }

  v17 = v15;
  v18 = JSVideoArtwork.artworkCatalog(defaultCropStyle:)(v16);

  v19 = v223;
  v20 = swift_isaMask & *v223;
  v21 = *(v223 + *&stru_338.segname[v20 + 16]);
  if (*(v223 + *(&stru_338.size + v20)) > 1u)
  {
    goto LABEL_19;
  }

  if (!*(v223 + *(&stru_338.size + (swift_isaMask & *v223))))
  {
    if (!*(v223 + *(&stru_298.reserved2 + (swift_isaMask & *v223))))
    {
      v217 = v18;
      v218 = v14;
      v209 = v21;
      v221 = ObjectType;
      type metadata accessor for ParallaxView();
      v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v23 = (*(&stru_4C8.reserved2 + (swift_isaMask & *v19)))();
      v222 = v22;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      v27 = 0.0;
      if ((v23 & 1) == 0)
      {
        v28 = sub_4D3DD0();
        [v28 bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v27 = v36;
        v26 = v34;
        v25 = v32;
        v24 = v30;
      }

      v37 = v222;
      [v222 setFrame:{v24, v25, v26, v27}];
      v38 = OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView;
      v220 = *(*&v37[OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView] + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent);
      *&v216 = v6[68];
      v214 = v6[69];
      v213 = v6[70];
      *&v219 = v6;
      v212 = v6[71];
      v39 = *(&stru_298.reserved2 + (swift_isaMask & *v19));
      v40 = *(v19 + v39);
      *(v19 + v39) = v37;
      swift_retain_n();
      v41 = v37;

      v42 = sub_4D3DD0();
      v43 = v19;
      v44 = *&v42[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
      *&v42[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView] = v37;
      v45 = v41;
      sub_4DDD94(v44);

      v215 = v45;
      v226 = 0x78616C6C61726170;
      v227 = 0xE800000000000000;
      (*(*v209 + 176))(&v226);
      v46 = *&stru_608.sectname[**(v43 + *(&stru_248.reloff + (swift_isaMask & *v43))) & swift_isaMask];
      v208 = *(v43 + *(&stru_248.reloff + (swift_isaMask & *v43)));
      v46(1);
      v47 = v38;
      v48 = *&v37[v38];
      v49 = *(v43 + *(&stru_248.reserved2 + (swift_isaMask & *v43)));
      v50 = *&v48[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView];
      *&v48[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView] = v49;
      v51 = v49;
      v52 = v48;
      sub_4F19A4(v50);

      v210 = v51;
      *(*&v51[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor) = 1;
      sub_2A0D84();
      v53 = *&v37[v38];
      v54 = v47;
      v211 = v47;
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      v57 = v216;
      v58 = v214;
      *(v56 + 2) = v216;
      *(v56 + 3) = v58;
      v59 = v213;
      v60 = v212;
      *(v56 + 4) = v213;
      *(v56 + 5) = v60;
      *(v56 + 6) = v55;
      v61 = &v53[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange];
      v62 = *&v53[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange];
      v63 = *&v53[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange + 8];
      *v61 = sub_256FB0;
      v61[1] = v56;
      v64 = v53;

      sub_17654(v62, v63);

      v65 = v222;
      v66 = *&v54[v222];
      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v68 = swift_allocObject();
      *(v68 + 2) = v57;
      *(v68 + 3) = v58;
      *(v68 + 4) = v59;
      *(v68 + 5) = v60;
      *(v68 + 6) = v67;
      v69 = &v66[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange];
      v70 = *&v66[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange];
      v71 = *&v66[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange + 8];
      *v69 = sub_256FC4;
      v69[1] = v68;
      v72 = v66;

      sub_17654(v70, v71);

      v73 = *&v211[v65];
      v74 = swift_allocObject();
      v75 = v209;
      *(v74 + 2) = v220;
      *(v74 + 3) = v75;
      *(v74 + 4) = 0x78616C6C61726170;
      *(v74 + 5) = 0xE800000000000000;
      v76 = &v73[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange];
      v77 = *&v73[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange];
      v78 = *&v73[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange + 8];
      *v76 = sub_257024;
      v76[1] = v74;
      v79 = v73;

      sub_17654(v77, v78);

      v80 = [v43 navigationItem];
      v81 = [v43 parentViewController];
      if (v81)
      {
        v82 = v81;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v83 = v82;
          v84 = [v83 navigationItem];

          v82 = [v83 parentViewController];
          v80 = v84;
          if (!v82)
          {
            goto LABEL_23;
          }
        }
      }

      v84 = v80;
LABEL_23:
      v127 = [objc_opt_self() whiteColor];
      [v84 setPreferredNavigationBarTintColor:v127];

      v128 = [objc_allocWithZone(UIView) init];
      (*&stru_5B8.segname[(swift_isaMask & *v208) - 8])(v128);
      v129 = v210[OBJC_IVAR____TtC16MusicApplication12DetailHeader_showsArtwork];
      v210[OBJC_IVAR____TtC16MusicApplication12DetailHeader_showsArtwork] = 0;
      if (v129 == 1)
      {
        sub_29F5E4();
      }

      static SymbolButton.Material.with(_:)(sub_24DCC0, &v226);
      v130 = v226;
      v131 = v227;
      v132 = v228;
      v204 = v228;
      v207 = v229;
      v208 = *(&v230 + 1);
      v210 = v230;
      v133 = sub_23E120();
      v233 = v131;
      v234 = v130;
      v206 = v130;
      v205 = v131;
      v232 = v132;
      v231 = v230;
      v134 = *(&stru_1A8.reserved2 + (swift_isaMask & *v133));
      sub_15F84(&v234, v225, &unk_DFA9E0, &unk_B059F0);
      sub_15F84(&v233, v225, &unk_DFA9E0, &unk_B059F0);
      sub_15F84(&v232, v225, &unk_DFA9E0, &unk_B059F0);
      sub_15F84(&v231, v225, &unk_DEE6F0, &unk_AF8970);
      v203 = v134(v225);
      v136 = v135[29];
      v137 = v135[30];
      v139 = v135[31];
      v138 = v135[32];
      v140 = v135[33];
      v202 = v135[34];
      v135[29] = v130;
      v135[30] = v131;
      v141 = v204;
      v142 = v207;
      v135[31] = v204;
      v135[32] = v142;
      v143 = v208;
      v135[33] = v210;
      v135[34] = v143;
      sub_15F84(&v234, v224, &unk_DFA9E0, &unk_B059F0);
      sub_15F84(&v233, v224, &unk_DFA9E0, &unk_B059F0);
      sub_15F84(&v232, v224, &unk_DFA9E0, &unk_B059F0);
      sub_15F84(&v231, v224, &unk_DEE6F0, &unk_AF8970);
      sub_3FA8C(v136, v137, v139, v138, v140, v202);
      v203(v225, 0);

      v144 = v223;
      v145 = sub_23D9EC();
      v146 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v145)))(v225);
      v148 = v147[29];
      v149 = v147[30];
      v150 = v147[31];
      v151 = v147[32];
      v152 = v147[33];
      v153 = v147[34];
      v154 = v205;
      v147[29] = v206;
      v147[30] = v154;
      v155 = v207;
      v147[31] = v141;
      v147[32] = v155;
      v156 = v208;
      v147[33] = v210;
      v147[34] = v156;
      sub_3FA8C(v148, v149, v150, v151, v152, v153);
      v146(v225, 0);

      v157 = *&v211[v222];
      v158 = *&v144[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView];
      v159 = v157;
      v160 = [v144 navigationItem];
      v161 = [v144 parentViewController];
      if (v161)
      {
        v162 = v161;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v163 = v162;
          v164 = [v163 navigationItem];

          v162 = [v163 parentViewController];
          v160 = v164;
          if (!v162)
          {
            goto LABEL_32;
          }
        }
      }

      v164 = v160;
LABEL_32:
      v165 = [v164 navigationBar];

      type metadata accessor for ParallaxArtworkVideoPlaybackController(0);
      v166 = swift_allocObject();
      v96 = sub_255AA8(v159, v158, v165, 0x78616C6C61726170, 0xE800000000000000, v166);
      v167 = swift_allocObject();
      v168 = v223;
      swift_unknownObjectWeakInit();
      v169 = swift_allocObject();
      v170 = v215;
      swift_unknownObjectWeakInit();

      v171 = swift_allocObject();
      v172 = v214;
      v171[2] = v216;
      v171[3] = v172;
      v173 = v212;
      v171[4] = v213;
      v171[5] = v173;
      v171[6] = v167;
      v171[7] = v169;
      v171[8] = v221;
      v174 = *&stru_2E8.segname[(swift_isaMask & *v168) + 8];
      swift_beginAccess();
      v175 = *(v168 + v174);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v168 + v174) = v175;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v175 = sub_6AFC0(0, v175[2] + 1, 1, v175);
        *(v223 + v174) = v175;
      }

      v178 = v175[2];
      v177 = v175[3];
      if (v178 >= v177 >> 1)
      {
        v175 = sub_6AFC0((v177 > 1), v178 + 1, 1, v175);
      }

      v175[2] = v178 + 1;
      v179 = &v175[2 * v178];
      v179[4] = sub_2570A8;
      v179[5] = v171;
      v86 = v223;
      *(v223 + v174) = v175;
      swift_endAccess();

      *&v216 = sub_2447E8();

      sub_2439A8();
      sub_243F48();
      sub_2437D0();
      sub_12E1C(&v234, &unk_DFA9E0, &unk_B059F0);
      sub_12E1C(&v233, &unk_DFA9E0, &unk_B059F0);
      sub_12E1C(&v232, &unk_DFA9E0, &unk_B059F0);
      sub_12E1C(&v231, &unk_DEE6F0, &unk_AF8970);

      v21 = v209;
      v123 = v220;
      goto LABEL_37;
    }

LABEL_19:

    return;
  }

  v217 = v18;
  v218 = v14;
  v221 = ObjectType;
  v215 = *(v223 + *(v20 + 656));
  v85 = *&v215[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent];
  v86 = v223;
  v87 = swift_allocObject();
  v88 = *(v6 + 35);
  v219 = *(v6 + 34);
  v216 = v88;
  swift_unknownObjectWeakInit();
  v89 = swift_allocObject();
  v90 = v216;
  *(v89 + 16) = v219;
  *(v89 + 32) = v90;
  *(v89 + 48) = v87;
  *(v89 + 56) = v21;
  *(v89 + 64) = 0xD000000000000015;
  *(v89 + 72) = 0x8000000000B48960;
  v91 = (v85 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  *&v219 = v6;
  v92 = *(v85 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  v93 = *(v85 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler + 8);
  *v91 = sub_256D90;
  v91[1] = v89;
  v220 = v85;
  swift_retain_n();

  sub_17654(v92, v93);

  v94 = sub_4D3DD0();
  v95 = sub_38E490(v85, v94, 0xD000000000000015, 0x8000000000B48960, 0, 0);
  v212 = v9;
  v96 = v95;
  v97 = **(v86 + *(&stru_248.reloff + (swift_isaMask & *v86))) & swift_isaMask;
  v214 = *(v86 + *(&stru_248.reloff + (swift_isaMask & *v86)));
  v98 = *(v97 + 1832);

  *&v216 = v98(v99);

  v211 = sub_23E120();
  v100 = *(v86 + *&stru_248.segname[(swift_isaMask & *v86) + 16]);
  v101 = *(&stru_1A8.reloff + (*v100 & swift_isaMask));
  v102 = v100;
  v103 = v222;
  v101();

  v104 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
  v105 = *v104;
  v106 = v104[1];
  v108 = v104[2];
  v107 = v104[3];

  v210 = v106;
  v109 = v212;
  SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(0, v105, v106, v108, v107, 0, 0, v212);
  v213 = type metadata accessor for SymbolButton.Configuration;
  sub_259250(v103, type metadata accessor for SymbolButton.Configuration);

  v110 = v211;
  v111 = v109;
  (*(&stru_1A8.flags + (swift_isaMask & *v211)))(v109);

  v112 = sub_23D9EC();
  v113 = *(v86 + *&stru_248.sectname[swift_isaMask & *v86]);
  v114 = *(&stru_1A8.reloff + (*v113 & swift_isaMask));
  v115 = v113;
  v114();

  v116 = *v104;
  v117 = v104[1];
  v119 = v104[2];
  v118 = v104[3];

  v120 = v117;
  v121 = v116;
  v122 = v222;
  SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(0, v121, v117, v119, v118, 0, 0, v111);
  sub_259250(v122, v213);
  v123 = v220;

  (*(&stru_1A8.flags + (swift_isaMask & *v112)))(v111);
  v124 = *&stru_5B8.segname[(swift_isaMask & *v214) - 8];
  v125 = v215;
  v126 = v215;
  v124(v125);
LABEL_37:
  v180 = v218;
  v181 = v218;
  sub_751F4(v180);
  v182 = v217;
  v183 = v217;
  sub_74EA4(v182);
  v184 = swift_allocObject();
  v184[2] = v123;
  v184[3] = v21;
  v185 = v216;
  v184[4] = v216;
  v184[5] = &off_CFADC8;
  v186 = v96[5];
  v187 = v96[6];
  v96[5] = sub_256DEC;
  v96[6] = v184;
  swift_unknownObjectRetain_n();

  sub_17654(v186, v187);
  v188 = *(v123 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
  *(v123 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = *(v96 + 56);
  sub_76070(v188);

  (*(*v21 + 136))(*(v96 + 56));
  swift_getObjectType();
  sub_130110(*(v96 + 56));
  swift_unknownObjectRelease();
  v189 = v96[8];
  v190 = v96[9];
  v96[8] = sub_256DF8;
  v96[9] = v21;

  sub_17654(v189, v190);
  v191 = v96[10];
  v192 = v96[11];
  v96[10] = sub_256E44;
  v96[11] = v21;

  sub_17654(v191, v192);
  v193 = swift_allocObject();
  v194 = v219;
  *(v193 + 16) = *(v219 + 544);
  *(v193 + 24) = *(v194 + 552);
  *(v193 + 40) = *(v194 + 568);
  *(v193 + 48) = v21;
  *(v193 + 56) = v185;
  *(v193 + 64) = &off_CFADC8;
  *(v193 + 72) = v221;
  v195 = v96[12];
  v196 = v96[13];
  v96[12] = sub_256EAC;
  v96[13] = v193;

  sub_17654(v195, v196);
  v197 = v96[14];
  v198 = v96[15];
  v96[14] = sub_256EE0;
  v96[15] = v21;

  sub_17654(v197, v198);
  v199 = v96[16];
  v200 = v96[17];
  v96[16] = sub_256F2C;
  v96[17] = v21;

  v201 = sub_17654(v199, v200);
  (*(*v96 + 264))(v201);
  *(v86 + *&stru_338.segname[(swift_isaMask & *v86) + 8]) = v96;

  swift_unknownObjectRelease();
}

void sub_24D9A4(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *(&stru_248.reserved2 + (swift_isaMask & *Strong)));

    *(*&v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor) = a1 & 1;
    sub_2A0D84();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsStatusBarAppearanceUpdate];
  }
}

void sub_24DA8C(id a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *(&stru_248.reserved2 + (swift_isaMask & *Strong)));

    if (a1 && ([a1 hasTitle] & 1) != 0)
    {
      v6 = &off_CF0E88;
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v7 = *&v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements];
    *&v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements] = v6;

    sub_12D140(v8, v7);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      sub_29C7E0();
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + *(&stru_248.reserved2 + (swift_isaMask & *v11)));

    if (a1)
    {
      a1 = [a1 textColor];
    }

    v14 = *&v13[OBJC_IVAR____TtC16MusicApplication12DetailHeader_textColor];
    *&v13[OBJC_IVAR____TtC16MusicApplication12DetailHeader_textColor] = a1;
    v15 = a1;

    sub_2A0B54(a1);
  }
}

id sub_24DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 112) image];
  if (result)
  {

    v8[0] = a3;
    v8[1] = a4;
    return (*(*a2 + 184))(v8);
  }

  return result;
}

void sub_24DCC0(uint64_t a1)
{
  v2 = [objc_opt_self() effectWithStyle:16];

  *a1 = v2;

  *(a1 + 32) = 0xD00000000000001DLL;
  *(a1 + 40) = 0x8000000000B59DF0;
}

void sub_24DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView);

      sub_2447E8();
      sub_1897C(v7, -1);
    }

    else
    {
    }
  }
}

void sub_24DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + *(&stru_248.reserved2 + (swift_isaMask & *Strong)));

    v10 = *&v9[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent];

    v11 = [*(v10 + 112) image];

    if (v11)
    {

      v12[0] = a3;
      v12[1] = a4;
      (*(*a2 + 184))(v12);
    }
  }
}

uint64_t sub_24DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
  *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1;
  sub_76070(v8);
  (*(*a3 + 136))(a1);
  ObjectType = swift_getObjectType();
  return (*(a5 + 160))(a1, ObjectType, a5);
}

void sub_24DFC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v21[0] = v13;
  v21[1] = v12;
  (*(*a2 + 216))(v21, v9);

  v14._rawValue = &off_CF0E38;
  v22._countAndFlagsBits = v13;
  v22._object = v12;
  v15 = sub_ABB140(v14, v22);

  if (v15 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 2)
  {
    ObjectType = swift_getObjectType();
    if (v17)
    {
      if (qword_DE6CD8 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v7, qword_E71978);
      (*(v8 + 16))(v11, v19, v7);
      sub_256CA4(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    }

    else
    {
      v20 = -1;
    }

    sub_ABAD10();
    (*(a4 + 144))(v21, ObjectType, a4);
    sub_8085C(v21);
  }
}

uint64_t sub_24E1FC(unsigned __int8 a1)
{
  v1 = 1819042164;
  v2 = 0x686372616573;
  if (a1 != 2)
  {
    v2 = 0x6D72657465646E75;
  }

  if (a1)
  {
    v1 = 0x6C616D726F6ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}