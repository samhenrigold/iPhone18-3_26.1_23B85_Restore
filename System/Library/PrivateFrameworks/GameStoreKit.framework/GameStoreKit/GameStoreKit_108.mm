id ShadowView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ShadowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = 1;
  v9 = &v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow];
  *v10 = 0u;
  v10[1] = 0u;
  v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id ShadowView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShadowView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = 0;
  v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = 1;
  v3 = &v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = &v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow];
  *v4 = 0u;
  v4[1] = 0u;
  v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ShadowView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id ShadowView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24F0FA984(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24F0FA9DC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if (!a2)
  {
    v9 = [v3 layoutManagers];
    sub_24E69A5C4(0, &qword_27F236AE0, 0x277D74238);
    v10 = sub_24F92B5A8();
    v11 = v10;
    if (v10 >> 62)
    {
      goto LABEL_24;
    }

    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v7 = a2;
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  for (i = v4; ; i = v5)
  {
    v18 = v5;
    v19 = v4;
    [v7 ensureLayoutForTextContainer_];
    v31 = i;

    v20 = [v3 fullRange];
    v32 = [v7 glyphRangeForCharacterRange:v20 actualCharacterRange:{v21, 0}];
    v23 = v22;
    v4 = swift_allocObject();
    v4[2] = 0;
    v5 = swift_allocObject();
    v5[2] = sub_24F91E8A8();
    v24 = v5 + 2;
    v5[3] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 1;
    v26 = swift_allocObject();
    v26[2] = v4;
    v26[3] = a1;
    v26[4] = v5;
    v26[5] = v7;
    v26[6] = v25;
    aBlock[4] = sub_24F0FB1D8;
    v34 = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F0FB208;
    aBlock[3] = &block_descriptor_116;
    v3 = _Block_copy(aBlock);
    v9 = v34;
    v27 = v7;

    [v27 enumerateLineFragmentsForGlyphRange:v32 usingBlock:{v23, v3}];
    _Block_release(v3);
    if (a1 == -1)
    {
      swift_beginAccess();
      if ((*(v25 + 32) & 1) == 0)
      {
        v28 = [v27 characterRangeForGlyphRange:*(v25 + 16) actualGlyphRange:{*(v25 + 24), 0}];
        v3 = v29;
        swift_beginAccess();
        v5[2] = v28;
        v5[3] = v3;
      }
    }

    v11 = sub_24F91E8A8();
    swift_beginAccess();
    if (v11 == *v24)
    {

      return;
    }

    v30 = v5[3] + *v24;
    if (!__OFSUB__(v30, 1))
    {
      NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(v30 - 1);

      return;
    }

    __break(1u);
LABEL_24:
    if (!sub_24F92C738())
    {
LABEL_25:

      __break(1u);
      goto LABEL_26;
    }

LABEL_6:

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_26:
    v12 = MEMORY[0x253052270](0, v11);
LABEL_9:
    v7 = v12;

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = v5;
    v14 = [v7 textContainers];
    sub_24E69A5C4(0, &qword_27F236AE8, 0x277D74278);
    v15 = sub_24F92B5A8();
    v16 = v15;
    if (v15 >> 62)
    {
      if (!sub_24F92C738())
      {
LABEL_28:

        __break(1u);
LABEL_29:
        v17 = MEMORY[0x253052270](0, v16);
        goto LABEL_15;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v17 = *(v16 + 32);
LABEL_15:
    v5 = v17;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_24F0FB068(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v28.size.height = a8;
  v28.size.width = a7;
  v28.origin.y = a6;
  v28.origin.x = a5;
  if (CGRectGetHeight(v28) != 0.0)
  {
    swift_beginAccess();
    v24 = *(a13 + 16);
    if (v24 == a14)
    {
      v25 = [a16 characterRangeForGlyphRange:a10 actualGlyphRange:{a11, 0}];
      v27 = v26;
      swift_beginAccess();
      *(a15 + 16) = v25;
      *(a15 + 24) = v27;
      *a12 = 1;
    }

    else
    {
      swift_beginAccess();
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      else
      {
        *(a13 + 16) = v24 + 1;
        swift_beginAccess();
        *(a17 + 16) = a10;
        *(a17 + 24) = a11;
        *(a17 + 32) = 0;
      }
    }
  }
}

uint64_t sub_24F0FB188()
{

  return swift_deallocObject();
}

void sub_24F0FB208(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F0FB30C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a1;
  NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(a3, a4, a5);
  v13 = v12;

  return v13;
}

uint64_t Banner.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Banner.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Banner.__allocating_init(id:message:focusedMessage:action:buttonActions:leadingArtwork:leadingArtworkTintColor:leadingArtworkSymbolConfiguration:includeBackgroundBorder:hideCriteria:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, char *a13)
{
  v36 = a7;
  v37 = a8;
  v35 = a6;
  v34 = a11;
  v32 = a3;
  v33 = a10;
  v30 = a2;
  v31 = a9;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = swift_allocObject();
  v19 = *a12;
  v20 = a12[1];
  v21 = *a13;
  sub_24E65E064(a1, &v40);
  if (*(&v41 + 1))
  {
    v22 = v41;
    *(v18 + 104) = v40;
    *(v18 + 120) = v22;
    *(v18 + 136) = v42;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v15 + 8))(v17, v14);
    v38 = v23;
    v39 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v26 = v32;
  *(v18 + 16) = v30;
  *(v18 + 24) = v26;
  v27 = v36;
  *(v18 + 32) = v35;
  *(v18 + 40) = v27;
  v28 = v31;
  *(v18 + 48) = v37;
  *(v18 + 56) = v28;
  *(v18 + 64) = v33;
  *(v18 + 72) = v34 & 1;
  *(v18 + 80) = v19;
  *(v18 + 88) = v20;
  *(v18 + 96) = v21;
  return v18;
}

GameStoreKit::Banner::Kind_optional __swiftcall Banner.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Banner.Kind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7975426F546B7361;
  }

  else
  {
    return 0x73776F7242626577;
  }
}

uint64_t sub_24F0FB684(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7975426F546B7361;
  }

  else
  {
    v3 = 0x73776F7242626577;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEE00776569766552;
  }

  if (*a2)
  {
    v5 = 0x7975426F546B7361;
  }

  else
  {
    v5 = 0x73776F7242626577;
  }

  if (*a2)
  {
    v6 = 0xEE00776569766552;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F0FB73C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0FB7D0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0FB850()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0FB8E0@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24F0FB940(uint64_t *a1@<X8>)
{
  v2 = 0x73776F7242626577;
  if (*v1)
  {
    v2 = 0x7975426F546B7361;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEE00776569766552;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Banner.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Banner.linkableMessage.getter()
{
  v1 = v0[4];
  if (v1 && (v2 = *(v1 + 24)) != 0)
  {
    v3 = *(v1 + 16);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v5 = v0[2];
    v4 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239580, &qword_24F9C97F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    *(inited + 48) = v1;
    swift_retain_n();

    v7 = sub_24E6091F0(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F239588, &qword_24F9C97F8);
    sub_24E65E064(&v23, v22);
    type metadata accessor for StyledText(0);
    v8 = swift_allocObject();
    *(v8 + 40) = sub_24E609504(MEMORY[0x277D84F90]);
    v9 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
    v10 = sub_24F91F008();
    (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
    v11 = (v8 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
    *v11 = 0;
    v11[1] = 0;
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    *(v8 + 32) = 0;
    type metadata accessor for LinkableText();
    swift_allocObject();
    v12 = LinkableText.init(id:styledText:linkedSubstrings:)(v22, v8, v7);
    sub_24E601704(&v23, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v14 = v0[2];
    v13 = v0[3];

    v15 = MEMORY[0x277D84F90];
    v16 = sub_24E6091F0(MEMORY[0x277D84F90]);
    sub_24E65E064(&v23, v22);
    type metadata accessor for StyledText(0);
    v17 = swift_allocObject();
    *(v17 + 40) = sub_24E609504(v15);
    v18 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
    v19 = sub_24F91F008();
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    v20 = (v17 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
    *v20 = 0;
    v20[1] = 0;
    *(v17 + 16) = v14;
    *(v17 + 24) = v13;
    *(v17 + 32) = 0;
    type metadata accessor for LinkableText();
    swift_allocObject();
    v12 = LinkableText.init(id:styledText:linkedSubstrings:)(v22, v17, v16);
    sub_24E601704(&v23, &qword_27F235830, &qword_24F93B8C0);
  }

  return v12;
}

void *Banner.leadingArtworkTintColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *Banner.leadingArtworkSymbolConfiguration.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

double Banner.hideCriteria.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  a1[1] = v3;
  return sub_24E6AD46C(v2, v3);
}

uint64_t Banner.init(id:message:focusedMessage:action:buttonActions:leadingArtwork:leadingArtworkTintColor:leadingArtworkSymbolConfiguration:includeBackgroundBorder:hideCriteria:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, char *a13)
{
  v14 = v13;
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v36 = a11;
  v34 = a3;
  v35 = a10;
  v32 = a2;
  v33 = a9;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v20 = *a12;
  v21 = a12[1];
  v22 = *a13;
  sub_24E65E064(a1, &v42);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v17 + 8))(v19, v16);
    v40 = v23;
    v41 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v26 = v46;
  *(v14 + 104) = v45;
  *(v14 + 120) = v26;
  *(v14 + 136) = v47;
  v27 = v34;
  *(v14 + 16) = v32;
  *(v14 + 24) = v27;
  v28 = v38;
  *(v14 + 32) = v37;
  *(v14 + 40) = v28;
  v29 = v33;
  *(v14 + 48) = v39;
  *(v14 + 56) = v29;
  *(v14 + 64) = v35;
  *(v14 + 72) = v36 & 1;
  *(v14 + 80) = v20;
  *(v14 + 88) = v21;
  *(v14 + 96) = v22;
  return v14;
}

uint64_t *Banner.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v102 = a2;
  v5 = *v3;
  v96 = v3;
  v94 = v5;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  v100 = v6;
  v101 = v7;
  MEMORY[0x28223BE20](v6);
  v97 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v85 - v10;
  v91 = sub_24F92AC28();
  v95 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v89 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24);
  v98 = &v85 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v85 - v30;
  v108 = a1;
  sub_24F928398();
  v32 = sub_24F928348();
  if (v33)
  {
    v103 = v32;
    v104 = v33;
  }

  else
  {
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v35 = v13;
    v37 = v36;
    (*(v35 + 8))(v15, v12);
    v103 = v34;
    v104 = v37;
  }

  sub_24F92C7F8();
  v38 = *(v17 + 8);
  v39 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v31, v16);
  v40 = v38;
  v41 = v106;
  v42 = v96;
  *(v96 + 13) = v105;
  *(v42 + 15) = v41;
  v42[17] = v107;
  v43 = v108;
  sub_24F928398();
  v44 = sub_24F928348();
  v46 = v45;
  v40(v28, v16);
  v47 = v101;
  if (!v46)
  {
    v58 = sub_24F92AC38();
    sub_24F0FCC04(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v59 = 0x6567617373656DLL;
    v60 = v94;
    v59[1] = 0xE700000000000000;
    v59[2] = v60;
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    v40(v43, v16);
    (*(v47 + 8))(v102, v100);
    sub_24E6585F8((v42 + 13));
    swift_deallocPartialClassInstance();
    return v42;
  }

  v42[2] = v44;
  v42[3] = v46;
  v48 = type metadata accessor for Action(0);
  v49 = v98;
  sub_24F928398();
  v86 = v48;
  v50 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v102);
  v40(v49, v16);
  v42[4] = v50;
  sub_24F928398();
  v51 = v90;
  sub_24F9282B8();
  v93 = v40;
  v94 = v16;
  v40(v23, v16);
  v52 = v95;
  v53 = v91;
  v54 = (*(v95 + 48))(v51, 1, v91);
  v92 = v39;
  if (v54 == 1)
  {
    sub_24E601704(v51, &qword_27F2213B0, &qword_24F965EC0);
    v55 = MEMORY[0x277D84F90];
    v56 = v101;
    v57 = v102;
LABEL_21:
    v42[5] = v55;
    type metadata accessor for Artwork(0);
    v72 = v98;
    sub_24F928398();
    v96 = *(v56 + 16);
    v73 = v100;
    (v96)(v97, v57, v100);
    sub_24F0FCC04(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v42[6] = v105;
    sub_24F928398();
    v74 = JSONObject.appStoreColor.getter();
    v76 = v93;
    v75 = v94;
    v93(v72, v94);
    v42[7] = v74;
    v42[8] = 0;
    v77 = v88;
    sub_24F928398();
    LOBYTE(v74) = sub_24F928278();
    v76(v77, v75);
    *(v42 + 72) = v74 & 1;
    sub_24F928398();
    (v96)(v97, v102, v73);
    v78 = v108;
    sub_24F0FCABC();
    sub_24F929548();
    *(v42 + 5) = v105;
    v79 = v89;
    sub_24F928398();
    sub_24F0FCB10();
    v80 = v99;
    sub_24F928218();
    if (v80)
    {

      v81 = 2;
    }

    else
    {
      v81 = v105;
    }

    v82 = v78;
    v84 = v93;
    v83 = v94;
    v93(v82, v94);
    v84(v79, v83);
    (*(v101 + 8))(v102, v100);
    *(v42 + 96) = v81;
    return v42;
  }

  v61 = (*(v52 + 32))(v87, v51, v53);
  MEMORY[0x28223BE20](v61);
  v57 = v102;
  *(&v85 - 2) = v86;
  *(&v85 - 1) = v57;
  v62 = v99;
  v63 = sub_24F92ABB8();
  v64 = v63;
  v99 = v62;
  if (!(v63 >> 62))
  {
    v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v101;
    if (v65)
    {
      goto LABEL_10;
    }

LABEL_20:

    (*(v95 + 8))(v87, v53);
    v55 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v65 = sub_24F92C738();
  v56 = v101;
  if (!v65)
  {
    goto LABEL_20;
  }

LABEL_10:
  *&v105 = MEMORY[0x277D84F90];
  result = sub_24F457AFC(0, v65 & ~(v65 >> 63), 0);
  if ((v65 & 0x8000000000000000) == 0)
  {
    v67 = 0;
    v55 = v105;
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x253052270](v67, v64);
      }

      else
      {
        v68 = *(v64 + 8 * v67 + 32);
      }

      *&v105 = v55;
      v70 = *(v55 + 16);
      v69 = *(v55 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_24F457AFC((v69 > 1), v70 + 1, 1);
        v55 = v105;
      }

      ++v67;
      *(v55 + 16) = v70 + 1;
      v71 = v55 + 16 * v70;
      *(v71 + 32) = v68;
      *(v71 + 40) = 1;
    }

    while (v65 != v67);
    (*(v95 + 8))(v87, v91);

    v42 = v96;
    v56 = v101;
    v57 = v102;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t Banner.deinit()
{

  sub_24EEA5774(*(v0 + 80), *(v0 + 88));
  sub_24E6585F8(v0 + 104);
  return v0;
}

uint64_t Banner.__deallocating_deinit()
{
  Banner.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_24F0FCA54@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Banner.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_24F0FCABC()
{
  result = qword_27F239590;
  if (!qword_27F239590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239590);
  }

  return result;
}

unint64_t sub_24F0FCB10()
{
  result = qword_27F239598;
  if (!qword_27F239598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239598);
  }

  return result;
}

unint64_t sub_24F0FCB68()
{
  result = qword_27F2395A0;
  if (!qword_27F2395A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2395A0);
  }

  return result;
}

uint64_t sub_24F0FCC04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = a8;
  *(a3 + 40) = result;
  *(a3 + 48) = a2;
  return result;
}

void RiverView.init(dataSource:styling:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = MEMORY[0x277D85000];
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *(a2 + 48);
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v10 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  CGSizeMake();
  type metadata accessor for RiverRowRecycler(0, v9, v10, v11);
  swift_getWitnessTable();
  v33 = a2[1];
  v34 = *a2;
  sub_24F922CB8();
  *(v3 + *((*v5 & *v3) + 0x78)) = 0;
  v12 = v3 + *((*v5 & *v3) + 0x80);
  *v12 = 0;
  v12[8] = 1;
  *(v3 + *((*v5 & *v3) + 0x88)) = 0;
  *(v3 + *((*v5 & *v3) + 0xA0)) = 0;
  type metadata accessor for RiverRow.Context(0, v9, v10, v13);
  v14 = swift_unknownObjectRetain();
  *(v3 + *((*v5 & *v3) + 0x70)) = RiverRow.Context.__allocating_init(_:)(v14);
  type metadata accessor for RiverRow(0, v9, v10, v15);
  *(v3 + *((*v5 & *v3) + 0x60)) = sub_24F92AE18();
  v16 = v3 + *((*v5 & *v3) + 0x90);
  *v16 = v34;
  *(v16 + 1) = v33;
  *(v16 + 4) = v6;
  *(v16 + 5) = v7;
  v16[48] = v8;
  *(v3 + *((*v5 & *v3) + 0x98)) = v34;
  *(v3 + *((*v5 & *v3) + 0xA8)) = 1;
  v35.receiver = v3;
  v35.super_class = type metadata accessor for RiverView(0, v9, v10, v17);

  v18 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = sub_24F92CDE8();
  v20 = [objc_opt_self() displayLinkWithTarget:v19 selector:sel_animateScrollWithDisplayLink_];

  swift_unknownObjectRelease();
  v21 = *((*v5 & *v18) + 0x78);
  v22 = *(v18 + v21);
  *(v18 + v21) = v20;
  v23 = v20;

  if (v23)
  {
    [v23 setPreferredFramesPerSecond_];

    sub_24F0FE9AC();
    v24 = *(v18 + v21);
    if (v24)
    {
      v25 = v24;

      v26 = [objc_opt_self() mainRunLoop];
      [v25 addToRunLoop:v26 forMode:*MEMORY[0x277CBE738]];

      v27 = v18;
      [v27 setClipsToBounds_];
      v28 = objc_opt_self();
      v29 = [v28 defaultCenter];
      [v29 addObserver:v27 selector:sel_lowMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

      v30 = [v28 defaultCenter];
      [v30 addObserver:v27 selector:sel_reduceMotionStatusDidChange_ name:*MEMORY[0x277D764C0] object:0];

      v31 = [v28 defaultCenter];
      [v31 addObserver:v27 selector:sel_willEnterForeground_ name:*MEMORY[0x277D76758] object:0];

      v32 = [v28 defaultCenter];
      [v32 addObserver:v27 selector:sel_didEnterBackground_ name:*MEMORY[0x277D76660] object:0];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id RiverView.__deallocating_deinit()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];

  v5 = type metadata accessor for RiverView(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v4);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_24F0FD3E0(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  v5 = *((*v2 & *a1) + 0x68);
  type metadata accessor for RiverRowRecycler(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  swift_getWitnessTable();
  v7 = sub_24F922CC8();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);
}

double sub_24F0FD564()
{
  sub_24F100364();

  return result;
}

uint64_t sub_24F0FD58C(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24F0FD634(uint64_t result, char a2)
{
  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x80);
  *v3 = result;
  v3[8] = a2 & 1;
  return result;
}

double sub_24F0FD6C4()
{
  sub_24F1003C4();

  swift_unknownObjectRetain();
  return result;
}

double sub_24F0FD6EC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  v5 = v2[48];
  v6 = *(v2 + 1);
  *a1 = *v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;

  return result;
}

uint64_t sub_24F0FD738(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 4) = v2;
  *(v5 + 5) = v3;
  v5[48] = v4;
}

double sub_24F0FD78C()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x98);
  swift_beginAccess();
  return *v1;
}

void sub_24F0FD7F0(double a1, double a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x98));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24F0FD924()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F0FD984(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_24F0FDA6C()
{
  result = [v0 window];
  if (result)
  {

    if ([v0 isHidden])
    {
      return 0;
    }

    else
    {
      return !UIAccessibilityIsReduceMotionEnabled();
    }
  }

  return result;
}

id sub_24F0FDAC8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    return sub_24F0FFBA4();
  }

  else
  {
    return sub_24F0FFCA0();
  }
}

uint64_t sub_24F0FDB44()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_24F0FDBA4(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_24F0FDAC8();
}

id (*sub_24F0FDC14(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F0FDC94;
}

id sub_24F0FDC94(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24F0FDAC8();
  }

  return result;
}

uint64_t sub_24F0FDCC8()
{
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler(255, AssociatedTypeWitness, v1, v2);
  swift_getWitnessTable();
  sub_24F922CC8();
  sub_24F922C88();
  return swift_endAccess();
}

id sub_24F0FDDF0()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v2) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    return sub_24F0FFBA4();
  }

  sub_24F0FFCA0();
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  return [v0 setNeedsLayout];
}

void sub_24F0FDEBC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    sub_24F0FFBA4();
  }
}

uint64_t sub_24F0FDF64(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_24F91EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F0FE050(void *a1)
{
  v1 = a1;
  v5 = sub_24F0FE084(v1, v2, v3, v4);

  return v5 & 1;
}

id sub_24F0FE084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RiverView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_isHidden);
}

void sub_24F0FE0F4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1;
  sub_24F0FE148(v3, v6, v4, v5);
}

id sub_24F0FE148(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RiverView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_setHidden_, a1 & 1);
  return sub_24F0FE1CC();
}

id sub_24F0FE1CC()
{
  if ([v0 isHidden])
  {

    return sub_24F0FFCA0();
  }

  else
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
    swift_beginAccess();
    if (*(v0 + v2) == 1 && (sub_24F0FDA6C() & 1) != 0)
    {
      return sub_24F0FFBA4();
    }

    else
    {
      return sub_24F0FFD50();
    }
  }
}

double sub_24F0FE27C(void *a1)
{
  v1 = a1;
  sub_24F0FE2B8(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

id sub_24F0FE2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RiverView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_alpha);
}

void sub_24F0FE328(void *a1, double a2)
{
  v6 = a1;
  sub_24F0FE380(a2, v6, v3, v4, v5);
}

id sub_24F0FE380(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for RiverView(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), *((*MEMORY[0x277D85000] & *v5) + 0x58), a5);
  v9.receiver = v5;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, sel_setAlpha_, a1);
  return sub_24F0FE404();
}

id sub_24F0FE404()
{
  [v0 alpha];
  if (v1 == 0.0)
  {

    return sub_24F0FFCA0();
  }

  else
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
    swift_beginAccess();
    if (*(v0 + v3) == 1 && (sub_24F0FDA6C() & 1) != 0)
    {
      return sub_24F0FFBA4();
    }

    else
    {
      return sub_24F0FFD50();
    }
  }
}

id sub_24F0FE4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D85000];
  v6 = type metadata accessor for RiverView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_didMoveToWindow);
  v7 = *((*v5 & *v4) + 0xA8);
  swift_beginAccess();
  if (*(v4 + v7) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    return sub_24F0FFBA4();
  }

  else
  {
    return sub_24F0FFCA0();
  }
}

void sub_24F0FE580(void *a1)
{
  v4 = a1;
  sub_24F0FE4B8(v4, v1, v2, v3);
}

void sub_24F0FE5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D85000];
  v6 = type metadata accessor for RiverView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v11.receiver = v4;
  v11.super_class = v6;
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v7 = *(v4 + *((*v5 & *v4) + 0x78));
  if (v7)
  {
    if (([v7 isPaused] & 1) != 0 || (v8 = *((*v5 & *v4) + 0xA8), swift_beginAccess(), (*(v4 + v8) & 1) == 0))
    {
      v9 = objc_opt_self();
      v10 = [v9 areAnimationsEnabled];
      [v9 setAnimationsEnabled_];
      sub_24F0FFD50();
      [v9 setAnimationsEnabled_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24F0FE700(void *a1)
{
  v4 = a1;
  sub_24F0FE5C8(v4, v1, v2, v3);
}

double sub_24F0FE77C(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_24F0FE748(a2);

  return v4;
}

double sub_24F0FE7C8(void *a1)
{
  v1 = a1;
  sub_24F0FE80C();
  v3 = v2;

  return v3;
}

uint64_t sub_24F0FE80C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  swift_beginAccess();
  type metadata accessor for RiverRow(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);

  sub_24F92B648();

  swift_beginAccess();
  swift_beginAccess();

  v4 = sub_24F92B648();

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_24F0FE9AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  swift_beginAccess();
  v5 = *((v4 & v2) + 0x50);
  v6 = *((v4 & v2) + 0x58);
  type metadata accessor for RiverRow(0, v5, v6, v7);

  v8 = sub_24F92B648();

  v9 = *(v6 + 24);
  swift_unknownObjectRetain();
  v10 = v9(v5, v6);
  swift_unknownObjectRelease();
  if (v10 < v8)
  {
    v11 = v8 - v10;
    if (__OFSUB__(v8, v10))
    {
      goto LABEL_24;
    }

    if (v11 < 0)
    {
      goto LABEL_25;
    }

    for (; v11; --v11)
    {
      swift_beginAccess();
      sub_24F92B6E8();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_24F92BCD8();
      swift_endAccess();
      swift_beginAccess();
      type metadata accessor for RiverRowRecycler(255, v5, v6, v12);
      swift_getWitnessTable();
      sub_24F922CC8();
      sub_24F922CA8();
      swift_endAccess();
    }

    return;
  }

  if (v8 >= v10)
  {
    return;
  }

  v13 = (v0 + *((*v3 & *v0) + 0x98));
  swift_beginAccess();
  v14 = (v13[1] + *(v1 + *((*v3 & *v1) + 0x90) + 16)) * v8;
  v23 = *(v6 + 64);
  while (1)
  {
    swift_unknownObjectRetain();
    v23(v24, v5, v6);
    swift_unknownObjectRelease();
    if (LOBYTE(v24[0]) == 1)
    {
      break;
    }

    v21 = *(*(v1 + *((*v3 & *v1) + 0x90) + 40) + 16);

    if (!v21)
    {
      goto LABEL_21;
    }

    if (v8 % v21 < 0)
    {
      goto LABEL_22;
    }

    if ((v8 % v21) >= *(v22 + 16))
    {
      goto LABEL_23;
    }

LABEL_9:
    MEMORY[0x28223BE20](v19);
    swift_beginAccess();
    type metadata accessor for RiverRowRecycler(255, v5, v6, v15);
    swift_getWitnessTable();
    sub_24F922CC8();
    sub_24F922C98();
    swift_endAccess();
    swift_beginAccess();
    sub_24F92B6E8();

    sub_24F92B658();
    swift_endAccess();
    v3 = MEMORY[0x277D85000];
    v16 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x98));
    swift_beginAccess();
    v17 = v16[1];
    v18 = *(v1 + *((*v3 & *v1) + 0x90) + 16);

    v14 = v14 + v17 + v18;
    if (v10 == ++v8)
    {
      return;
    }
  }

  v19 = swift_beginAccess();
  v20 = v8 & 1;
  if (v8 < 0)
  {
    v20 = -v20;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_24F0FF034@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v13 = MEMORY[0x277D85000];
  v14 = (*MEMORY[0x277D85000] & *a1);
  result = type metadata accessor for RiverRow(0, v14[10], v14[11], a4);
  v16 = __OFSUB__(a2, a3);
  v17 = a2 - a3;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = (a1 + v14[19]);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    v21 = *(a1 + *((*v13 & *a1) + 0x90) + 24);

    result = RiverRow.__allocating_init(context:number:origin:itemSize:interItemSpacing:)(v22, v17, a6, a7, v19, v20, v21);
    *a5 = result;
  }

  return result;
}

void sub_24F0FF190()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  swift_beginAccess();
  v3 = *((v2 & v1) + 0x50);
  v4 = *((v2 & v1) + 0x58);
  type metadata accessor for RiverRowRecycler(255, v3, v4, v5);
  swift_getWitnessTable();
  sub_24F922CC8();
  sub_24F922C88();
  swift_endAccess();
  swift_beginAccess();
  swift_getKeyPath();
  type metadata accessor for RiverRow(255, v3, v4, v6);
  sub_24F92B6E8();
  swift_getAssociatedTypeWitness();
  sub_24F92AEA8();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F92B498();

  swift_getTupleTypeMetadata2();
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92B4A8();

  v7 = sub_24F92B608();
  sub_24F0FD58C(v7);
  sub_24F0FE9AC();
}

void sub_24F0FF478()
{

  swift_getAtKeyPath();
}

id sub_24F0FF4D4(int a1, id a2)
{
  v3 = [a2 layer];
  [v3 removeAllAnimations];

  return [a2 removeFromSuperview];
}

void sub_24F0FF53C(double a1, double a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v2;
  v7 = (v2 + *(v6 + 0x98));
  swift_beginAccess();
  if (*v7 != a1 || v7[1] != a2)
  {
    v9 = (v2 + *((*v5 & *v2) + 0x98));
    swift_beginAccess();
    *v9 = a1;
    v9[1] = a2;
    v12 = v6 + 80;
    v10 = *(v6 + 80);
    v11 = *(v12 + 8);
    v13 = *(v11 + 48);
    swift_unknownObjectRetain();
    v13(v10, v11, a1, a2);
    swift_unknownObjectRelease();
    sub_24F0FF190();
  }
}

void sub_24F0FF6A0(double a1, double a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x90));
  v4 = *(v3 + 48);
  v3[2] = a1;
  v3[3] = a2;
  *(v3 + 48) = v4;
  sub_24F0FF190();
}

double sub_24F0FF6D8(void *a1)
{
  v1 = a1;
  sub_24F0FF734(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

id sub_24F0FF734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RiverView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_frame);
}

void sub_24F0FF7A4(void *a1, double a2, double a3, double a4, double a5)
{
  v12 = a1;
  sub_24F0FF81C(a2, a3, a4, a5, v12, v9, v10, v11);
}

void sub_24F0FF81C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for RiverView(0, *((*MEMORY[0x277D85000] & *v8) + 0x50), *((*MEMORY[0x277D85000] & *v8) + 0x58), a8);
  v23.receiver = v8;
  v23.super_class = v13;
  objc_msgSendSuper2(&v23, sel_frame);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22.receiver = v8;
  v22.super_class = v13;
  objc_msgSendSuper2(&v22, sel_setFrame_, a1, a2, a3, a4);
  sub_24F0FF910(v15, v17, v19, v21);
}

void sub_24F0FF910(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = MEMORY[0x277D85000];
  v11 = *MEMORY[0x277D85000] & *v4;
  v12 = [v4 traitCollection];
  v13 = sub_24F92BF88();

  if (v13)
  {
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    if (!CGRectIsEmpty(v24))
    {
      [v5 frame];
      Width = CGRectGetWidth(v25);
      v26.origin.x = a1;
      v26.origin.y = a2;
      v26.size.width = a3;
      v26.size.height = a4;
      v15 = CGRectGetWidth(v26);
      v16 = *((*v10 & *v5) + 0x88);
      *(v5 + v16) = *(v5 + v16) - (Width - v15);
      if (*(v5 + *((*v10 & *v5) + 0x88)) < 0.0)
      {
        v17 = *((*v10 & *v5) + 0x98);
        swift_beginAccess();
        v18 = *(v5 + v17) + *(v5 + *((*v10 & *v5) + 0x90) + 24);
        v21 = v11 + 80;
        v19 = *(v11 + 80);
        v20 = *(v21 + 8);
        v22 = *(v20 + 32);
        swift_unknownObjectRetain();
        v23 = v22(v19, v20);
        swift_unknownObjectRelease();
        *(v5 + v16) = *(v5 + v16) + v18 * v23;
      }
    }
  }
}

void sub_24F0FFB44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24F1005E0();
}

id sub_24F0FFBA4()
{
  v1 = MEMORY[0x277D85000];
  result = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = [result isPaused];
  if (!result)
  {
    return result;
  }

  v3 = CACurrentMediaTime();
  v4 = (v0 + *((*v1 & *v0) + 0x80));
  if ((v4[1] & 1) == 0 && v3 - *v4 > 0.015)
  {
    *v4 = v3;
    *(v4 + 8) = 0;
  }

  sub_24F0FFD50();
  result = *(v0 + *((*v1 & *v0) + 0x78));
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return [result setPaused_];
}

uint64_t sub_24F0FFCA0()
{
  v1 = MEMORY[0x277D85000];
  result = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = [result isPaused];
  if (result)
  {
    return result;
  }

  result = *(v0 + *((*v1 & *v0) + 0x78));
  if (!result)
  {
    goto LABEL_8;
  }

  [result setPaused_];

  return sub_24F0FFD50();
}

uint64_t sub_24F0FFD50()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  [v1 bounds];
  Width = CGRectGetWidth(v19);
  swift_beginAccess();
  type metadata accessor for RiverRow(255, *((v4 & v2) + 0x50), *((v4 & v2) + 0x58), v6);
  v7 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x253050DD0](v18, v7, WitnessTable);
  v16 = v18[0];
  sub_24F92CAF8();
  sub_24F92CAC8();
  sub_24F92CAE8();
  sub_24F92CAD8();
  if (v17)
  {
    for (i = v16; ; i = v16)
    {
      v10 = *(v1 + *((*v3 & *v1) + 0x88));
      if (i)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v1 + *((*v3 & *v1) + 0x90) + 48);
      }

      v12 = *((*v3 & *v1) + 0xA0);
      swift_beginAccess();
      LODWORD(v12) = *(v1 + v12);
      v13 = [v1 traitCollection];
      v14 = [v13 layoutDirection];

      sub_24E9053C4(v1, i, v11, 1, 1, v12, v14, v10, Width);

      sub_24F92CAD8();
    }
  }
}

uint64_t sub_24F0FFFB4(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90) + 48);
  }
}

id sub_24F0FFFEC()
{
  result = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  if (result)
  {
    return [result invalidate];
  }

  __break(1u);
  return result;
}

id sub_24F100028()
{
  v0 = sub_24F92B588();

  return v0;
}

id sub_24F100068(void *a1)
{
  v1 = a1;
  v2 = sub_24F1000D8();

  if (v2)
  {
    v3 = sub_24F92B588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *sub_24F1000D8()
{
  v1 = [v0 subviews];
  sub_24E69A5C4(0, &qword_27F220378, 0x277D75D18);
  v2 = sub_24F92B5A8();

  v3 = sub_24E8E8F14(v2);

  return v3;
}

void sub_24F100154(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_24F92B5A8();
  }

  else
  {
    v4 = 0;
  }

  v7 = a1;
  sub_24F1001CC(v4, v7, v5, v6);
}

void sub_24F1001CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D85000] & *v4;
  if (a1)
  {
    v6 = sub_24F92B588();
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for RiverView(0, *(v5 + 80), *(v5 + 88), a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, sel_setAutomationElements_, v6);
}

id RiverView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_24F100364()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F1003F4()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  CGSizeMake();
  type metadata accessor for RiverRowRecycler(0, v2, v3, v4);
  swift_getWitnessTable();
  sub_24F922CB8();
  *(v0 + *((*v1 & *v0) + 0x78)) = 0;
  v5 = v0 + *((*v1 & *v0) + 0x80);
  *v5 = 0;
  v5[8] = 1;
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  *(v0 + *((*v1 & *v0) + 0xA0)) = 0;
  sub_24F92CA88();
  __break(1u);
}

void sub_24F1005E0()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*MEMORY[0x277D85000] & *v0);
  v4 = v3[21];
  swift_beginAccess();
  if (*(v0 + v4) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    v5 = CACurrentMediaTime();
    v6 = v5;
    v7 = *v2 & *v0;
    v8 = (v0 + *(v7 + 0x80));
    if ((v8[1] & 1) == 0)
    {
      *(v0 + *((*v2 & *v0) + 0x88)) = (v5 - *v8) * *(v0 + *((*v2 & *v0) + 0x90) + 32) + *(v0 + *((*v2 & *v0) + 0x88));
      [v0 bounds];
      Width = CGRectGetWidth(v61);
      v10 = *((*v2 & *v0) + 0x98);
      swift_beginAccess();
      v11 = (v0 + *((*v2 & *v0) + 0x90));
      v12 = *(v0 + v10) + v11[3];
      v13 = v12 * (ceil(Width / v12) + 2.0) / v11[4];
      v14 = sub_24F92B098();
      v15 = [objc_opt_self() animationWithKeyPath_];

      v16 = *MEMORY[0x277CDA7C8];
      v17 = objc_opt_self();
      v18 = v15;
      v19 = [v17 functionWithName_];
      [v18 setTimingFunction_];

      v20 = [v1 traitCollection];
      sub_24F92BF88();

      v21 = sub_24F91FDF8();
      [v18 setByValue_];

      [v18 setDuration_];
      [v18 setBeginTime_];
      [v18 setFillMode_];
      [v18 setRemovedOnCompletion_];
      v54 = v18;

      v53 = 0;
      if (*(v1 + *((*v2 & *v1) + 0x90) + 48) == 1)
      {
        [v18 copy];
        sub_24F92C648();
        swift_unknownObjectRelease();
        sub_24E69A5C4(0, &qword_27F239630, 0x277CD9E10);
        if (swift_dynamicCast())
        {
          v22 = sub_24F91FDF8();
          v53 = v60;
          [v60 setByValue_];
        }

        else
        {
          v53 = 0;
        }
      }

      v23 = *((*v2 & *v1) + 0x60);
      swift_beginAccess();
      v59[0] = *(v1 + v23);
      type metadata accessor for RiverRow(255, v3[10], v3[11], v24);
      v25 = sub_24F92B6E8();
      WitnessTable = swift_getWitnessTable();
      MEMORY[0x253050DD0](v56, v25, WitnessTable);
      v56[4] = v56[0];
      sub_24F92CAF8();
      sub_24F92CAC8();
      sub_24F92CAE8();
      sub_24F92CAD8();
      v27 = v58;
      if (v58)
      {
        v52 = v1;
        v51 = v1 + 6;
        v28 = v57;
        while (2)
        {
          v29 = *v52;
          v30 = *v2;
          if (v28)
          {
            v31 = 0;
          }

          else
          {
            v31 = *(v51 + *((*v2 & *v52) + 0x90));
          }

          v32 = *(v52 + *((v30 & v29) + 0x88));
          v33 = *((v30 & v29) + 0xA0);
          swift_beginAccess();
          v34 = *(v52 + v33);
          v35 = [v52 traitCollection];
          v36 = [v35 layoutDirection];

          sub_24E9053C4(v52, v28, v31, 0, 0, v34, v36, v32, Width);
          v37 = v54;
          if (((v53 != 0) & v31) != 0)
          {
            v37 = v53;
          }

          v55 = v37;
          swift_beginAccess();
          v38 = *(v27 + 72);
          v39 = 1 << *(v38 + 32);
          if (v39 < 64)
          {
            v40 = ~(-1 << v39);
          }

          else
          {
            v40 = -1;
          }

          v41 = v40 & *(v38 + 64);
          v42 = (v39 + 63) >> 6;

          v43 = 0;
          while (v41)
          {
LABEL_26:
            v45 = *(*(v38 + 56) + ((v43 << 9) | (8 * __clz(__rbit64(v41)))));
            v46 = [v45 layer];
            v47 = sub_24F92B098();
            v48 = [v46 animationForKey_];

            v49 = v45;
            if (!v48)
            {
              v48 = [v45 layer];

              v49 = sub_24F92B098();
              [v48 addAnimation:v55 forKey:v49];
            }

            v41 &= v41 - 1;
          }

          while (1)
          {
            v44 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
              return;
            }

            if (v44 >= v42)
            {
              break;
            }

            v41 = *(v38 + 64 + 8 * v44);
            ++v43;
            if (v41)
            {
              v43 = v44;
              goto LABEL_26;
            }
          }

          sub_24F92CAD8();
          v28 = v57;
          v27 = v58;
          v2 = MEMORY[0x277D85000];
          if (v58)
          {
            continue;
          }

          break;
        }

        v1 = v52;
      }

      v7 = *v2 & *v1;
    }

    v50 = (v1 + *(v7 + 128));
    *v50 = v6;
    *(v50 + 8) = 0;
  }
}

double sub_24F100DE4@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24F100364();

  return result;
}

__n128 sub_24F100E58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24F100EC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F0FD924();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F100F28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F0FDB44();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F100F8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F100FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F101034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RiverRowRecycler(255, *(a1 + 80), *(a1 + 88), a4);
  swift_getWitnessTable();
  result = sub_24F922CC8();
  if (v5 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t Artwork.URLTemplate.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

BOOL Artwork.URLTemplate.isBundleImage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E70E058(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_24F91F478();
  if (!v9)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v8 != 0x656372756F736572 || v9 != 0xE800000000000000)
  {
    v11 = sub_24F92CE08();

    (*(v4 + 8))(v6, v3);
    return (v11 & 1) != 0;
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

BOOL Artwork.URLTemplate.isSystemImage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E70E058(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_24F91F478();
  if (!v9)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v8 != 0x6D696D6574737973 || v9 != 0xEB00000000656761)
  {
    v11 = sub_24F92CE08();

    (*(v4 + 8))(v6, v3);
    return (v11 & 1) != 0;
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

void Artwork.URLTemplate.systemImageName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v5 = *v0;
  v4 = v0[1];
  v31 = *v0;
  v32 = v4;
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    v26 = v3;
    v6 = sub_24E60B4B0(MEMORY[0x277D84F90]);
    v7 = v6;
    v8 = v6 + 64;
    v9 = 1 << *(v6 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v6 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    if (v11)
    {
      while (1)
      {
        v14 = v13;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = *(*(v7 + 48) + v15);
        v11 &= v11 - 1;
        v17 = (*(v7 + 56) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v31 = v5;
        v32 = v4;
        v29 = qword_24F9C9CD8[v16];
        v30 = 0xE300000000000000;
        v27 = v18;
        v28 = v19;
        sub_24E600AEC();

        v5 = sub_24F92C568();
        v21 = v20;

        v4 = v21;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    v22 = v26;
    sub_24F91F488();

    v23 = sub_24F91F4A8();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_24E70E058(v22);
    }

    else
    {
      sub_24F91F438();
      (*(v24 + 8))(v22, v23);
    }
  }
}

Swift::String __swiftcall Artwork.URLTemplate.makeString(withSubstitutions:)(Swift::OpaquePointer withSubstitutions)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = withSubstitutions._rawValue + 64;
  v5 = 1 << *(withSubstitutions._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(withSubstitutions._rawValue + 8);
  v8 = (v5 + 63) >> 6;

  v11 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v9 = v3;
      v10 = v2;
      goto LABEL_13;
    }

    v7 = *&v4[8 * v12];
    ++v11;
    if (v7)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        sub_24E600AEC();

        v3 = sub_24F92C568();
        v14 = v13;

        v2 = v14;
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
LABEL_13:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t Artwork.URLTemplate.Key.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24F92CB88();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24F101E3C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F101E98(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F101ED8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t Artwork.URLTemplate.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24F928348();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_24F9285B8();
    (*(*(v10 - 8) + 8))(a2, v10);
    v11 = sub_24F928388();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v13 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v14 = MEMORY[0x277D84F90];
    *v15 = &type metadata for Artwork.URLTemplate;
    v15[1] = v14;
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D22538], v13);
    swift_willThrow();
    v16 = sub_24F9285B8();
    (*(*(v16 - 8) + 8))(a2, v16);
    v17 = sub_24F928388();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  return result;
}

uint64_t Artwork.URLTemplate.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void Artwork.URLTemplate.makeURL(withSubstitutions:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      sub_24F91F488();

      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_9:
        v4 &= v4 - 1;
        sub_24E600AEC();

        sub_24F92C568();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

unint64_t sub_24F102314()
{
  result = qword_27F239638;
  if (!qword_27F239638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239638);
  }

  return result;
}

unint64_t sub_24F10236C()
{
  result = qword_27F239640;
  if (!qword_27F239640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239640);
  }

  return result;
}

uint64_t sub_24F1023F4(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = *(a2 + 40);
  v2[13] = *(a2 + 32);
  v2[14] = v3;
  return MEMORY[0x2822009F8](sub_24F10241C, 0, 0);
}

uint64_t sub_24F10241C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8, 0x277D0C170);
  *v4 = v0;
  v4[1] = sub_24F102528;

  return MEMORY[0x2822008A0](v0 + 9, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24F102528()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24F1028BC;
  }

  else
  {

    v2 = sub_24F102644;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F102644()
{
  v1 = v0[12];
  v2 = v0[9];
  v0[18] = v2;
  v3 = [v2 internal];
  v0[19] = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];

  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v0[21] = v7;
  v8 = sub_24E69A5C4(0, &qword_27F21C808, 0x277D0C048);
  *v7 = v0;
  v7[1] = sub_24F1027A0;

  return MEMORY[0x2822008A0](v0 + 10, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v6, v8);
}

uint64_t sub_24F1027A0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24F102B50;
  }

  else
  {

    v2 = sub_24F102920;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1028BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F102920()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[10];
  v0[23] = v3;
  v4 = *v2;
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[24] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_24F102A34;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000023, 0x800000024FA6C0F0, sub_24F1034FC, v6, &type metadata for LeaderboardSet);
}

uint64_t sub_24F102A34()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24F102C5C;
  }

  else
  {

    v2 = sub_24F102BC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F102B50()
{
  v1 = v0[19];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F102BC0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v7;
  *(v3 + 48) = v6;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F102C5C()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4();
}

void sub_24F102CD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648, qword_24F9C9D78);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - v13;
  v15 = [objc_opt_self() proxyForPlayer_];
  v16 = [v15 gameStatService];

  v17 = [a3 gameDescriptor];
  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v14, v10);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a4;
  v20[1] = a5;
  aBlock[4] = sub_24F1035B4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F1033A0;
  aBlock[3] = &block_descriptor_117;
  v21 = _Block_copy(aBlock);

  [v16 getLeaderboardSetsForGameDescriptor:v17 handler:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

void sub_24F102F2C(unint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648, qword_24F9C9D78);
LABEL_27:
    sub_24F92B788();
    return;
  }

  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = sub_24F92B0D8();
    *(inited + 40) = v27;
    sub_24F92C888();

    MEMORY[0x253050C20](a4, a5);
    MEMORY[0x253050C20](0x756F6620746F6E20, 0xEA0000000000646ELL);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x800000024FA6C140;
    sub_24E608448(inited);
    swift_setDeallocating();
    sub_24EA24CCC(inited + 32);
    v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v29 = sub_24F92B098();
    v30 = sub_24F92AE28();

    [v28 initWithDomain:v29 code:404 userInfo:v30];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648, qword_24F9C9D78);
    goto LABEL_27;
  }

LABEL_25:
  v9 = sub_24F92C738();
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x253052270](v10, a1);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v14 = [v11 identifier];
    v15 = sub_24F92B0D8();
    v17 = v16;

    if (v15 == a4 && v17 == a5)
    {
      break;
    }

    v19 = sub_24F92CE08();

    if (v19)
    {
      goto LABEL_19;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_26;
    }
  }

LABEL_19:
  v20 = [objc_allocWithZone(MEMORY[0x277D0C128]) initWithInternalRepresentation_];
  v21 = [v12 identifier];
  sub_24F92B0D8();

  v22 = [v12 title];
  sub_24F92B0D8();

  if (v20)
  {
    v23 = [v20 imageURL];
    if (v23)
    {
      v24 = v23;
      sub_24F92B0D8();
    }
  }

  v25 = [v12 leaderboardIdentifiers];
  sub_24F92AE38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648, qword_24F9C9D78);
  sub_24F92B798();
}

void sub_24F1033A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24E69A5C4(0, &qword_27F239650, 0x277D0C130);
  v5 = sub_24F92B5A8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24F103450(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_24E7AF58C;

  return sub_24F1023F4(a1, v2 + 16);
}

uint64_t sub_24F103508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648, qword_24F9C9D78);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24F1035B4(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648, qword_24F9C9D78) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_24F102F2C(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ReviewsContainer.__allocating_init(id:adamId:ratings:tapToRate:reviews:reviewSummary:editorsChoice:writeReviewAction:supportAction:alwaysAllowReviews:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v34 = a5;
  v35 = a6;
  v30 = a3;
  v33 = a10;
  v31 = a9;
  v32 = a4;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v20 = *a2;
  v19 = a2[1];
  sub_24E65E064(a1, &v38);
  if (*(&v39 + 1))
  {
    v21 = v39;
    *(v18 + 96) = v38;
    *(v18 + 112) = v21;
    *(v18 + 128) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v29 = a7;
    v23 = a8;
    v25 = v24;
    (*(v15 + 8))(v17, v14);
    v36 = v22;
    v37 = v25;
    a8 = v23;
    a7 = v29;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v38);
  }

  sub_24E9BBAA8(a1);
  *(v18 + 16) = v20;
  *(v18 + 24) = v19;
  v26 = v32;
  *(v18 + 32) = v30;
  *(v18 + 40) = v26;
  v27 = v35;
  *(v18 + 48) = v34;
  *(v18 + 56) = v27;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  *(v18 + 80) = v31;
  *(v18 + 88) = v33 & 1;
  return v18;
}

uint64_t ReviewsContainer.init(id:adamId:ratings:tapToRate:reviews:reviewSummary:editorsChoice:writeReviewAction:supportAction:alwaysAllowReviews:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v39 = a3;
  v42 = a10;
  v40 = a9;
  v41 = a4;
  v18 = sub_24F91F6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v23 = a2[1];
  v38 = v22;
  sub_24E65E064(a1, &v45);
  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v36 = v23;
    v37 = a5;
    v25 = v24;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v30 = v29;
    (*(v19 + 8))(v21, v18);
    v43 = v25;
    v44 = v30;
    a8 = v28;
    a7 = v27;
    a6 = v26;
    v23 = v36;
    a5 = v37;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v45);
  }

  sub_24E9BBAA8(a1);
  v31 = v49;
  *(v11 + 96) = v48;
  *(v11 + 112) = v31;
  *(v11 + 128) = v50;
  v32 = v39;
  *(v11 + 16) = v38;
  *(v11 + 24) = v23;
  v33 = v40;
  v34 = v41;
  *(v11 + 32) = v32;
  *(v11 + 40) = v34;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 80) = v33;
  *(v11 + 88) = v42 & 1;
  return v11;
}

uint64_t ReviewsContainer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewsContainer.init(deserializing:using:)(a1, a2);
  return v4;
}

void (**ReviewsContainer.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v3 = v2;
  v65 = a2;
  v5 = *v3;
  v74 = v3;
  v59 = v5;
  v6 = sub_24F9285B8();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F928388();
  v12 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v66 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  if (v24)
  {
    v69 = v23;
    v70 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v26 = v9;
    v28 = v27;
    (*(v26 + 8))(v11, v8);
    v69 = v25;
    v70 = v28;
  }

  sub_24F92C7F8();
  v29 = *(v12 + 8);
  v67 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68 = v29;
  v30 = v62;
  v29(v22, v62);
  v31 = v72;
  v32 = v74;
  *(v74 + 6) = v71;
  *(v32 + 7) = v31;
  v32[16] = v73;
  v33 = v66;
  sub_24F928398();
  v34 = sub_24F928348();
  v36 = v35;
  v68(v19, v30);
  if (v36)
  {
    v37 = v74;
    v74[2] = v34;
    v37[3] = v36;
    type metadata accessor for Ratings(0);
    sub_24F928398();
    v38 = v64;
    v59 = *(v63 + 16);
    v39 = v60;
    v40 = v65;
    v59(v60, v65, v64);
    v58 = &protocol conformance descriptor for ProductRatingsAndReviewsComponent;
    sub_24F104D2C(&qword_27F213ED0, 255, type metadata accessor for Ratings, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
    sub_24F929548();
    v37[4] = v71;
    type metadata accessor for TapToRate(0);
    sub_24F928398();
    v41 = v40;
    v42 = v40;
    v43 = v59;
    v59(v39, v41, v38);
    sub_24F104D2C(&qword_27F239658, 255, type metadata accessor for TapToRate, v58);
    sub_24F929548();
    v37[5] = v71;
    v44 = v66;
    sub_24F928398();
    v43(v39, v42, v38);
    v45 = v43;
    type metadata accessor for Review(0);
    sub_24F104D2C(&qword_27F2328C8, 255, type metadata accessor for Review, &protocol conformance descriptor for Review);
    v74[6] = sub_24F92B698();
    type metadata accessor for ReviewSummary(0);
    sub_24F928398();
    v46 = v65;
    v45(v39, v65, v38);
    sub_24F104D2C(&qword_27F214548, 255, type metadata accessor for ReviewSummary, &protocol conformance descriptor for ReviewSummary);
    sub_24F929548();
    v74[7] = v71;
    type metadata accessor for EditorsChoice(0);
    sub_24F928398();
    v45(v39, v46, v38);
    sub_24F104D2C(&qword_27F2328E8, 255, type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
    sub_24F929548();
    v74[8] = v71;
    type metadata accessor for Action(0);
    v47 = v44;
    v48 = v74;
    sub_24F928398();
    v49 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v46);
    v50 = v62;
    v51 = v68;
    v68(v16, v62);
    v48[9] = v49;
    sub_24F928398();
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v46);
    v51(v16, v50);
    v48[10] = v52;
    v53 = v61;
    sub_24F928398();
    LOBYTE(v52) = sub_24F928278();
    (*(v63 + 8))(v46, v64);
    v51(v47, v50);
    v51(v53, v50);
    *(v48 + 88) = v52 & 1;
  }

  else
  {
    v54 = sub_24F92AC38();
    sub_24F104D2C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v55 = 0x64496D616461;
    v55[1] = 0xE600000000000000;
    v55[2] = v59;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v63 + 8))(v65, v64);
    v68(v33, v30);
    sub_24E6585F8((v74 + 12));
    type metadata accessor for ReviewsContainer();
    swift_deallocPartialClassInstance();
  }

  return v74;
}

double ReviewsContainer.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_24F104438@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[6];
  if (v5 >> 62)
  {
    if (sub_24F92C738() > a1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
LABEL_3:
    a2[3] = type metadata accessor for Review(0);
    a2[4] = sub_24F104D2C(&qword_27F2328C0, 255, type metadata accessor for Review, &protocol conformance descriptor for Review);
    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x253052270](a1, v5);
      goto LABEL_7;
    }

    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

LABEL_7:
      *a2 = result;
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  v7 = v2[8];
  if (!v7)
  {
    goto LABEL_12;
  }

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) != a1)
    {
      goto LABEL_12;
    }

LABEL_16:
    a2[3] = type metadata accessor for EditorsChoice(0);
    a2[4] = sub_24F104D2C(&qword_27F2328E0, 255, type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
    *a2 = v7;
    goto LABEL_17;
  }

  if (sub_24F92C738() == a1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = v2[7];
  if (!v8 || a1)
  {
LABEL_23:
    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  a2[3] = type metadata accessor for ReviewSummary(0);
  a2[4] = sub_24F104D2C(&qword_27F239660, 255, type metadata accessor for ReviewSummary, &protocol conformance descriptor for ReviewSummary);
  *a2 = v8;
LABEL_17:
}

uint64_t sub_24F104688@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 48);
  if (v3 >> 62)
  {
    v5 = result;
    v6 = a2;
    v7 = sub_24F92C738();
    a2 = v6;
    v8 = v7;
    result = v5;
    if (v8 > v5)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
LABEL_3:
    v4 = 26;
LABEL_11:
    *a2 = v4;
    return result;
  }

  if (*(v2 + 64))
  {
    if (v3 >> 62)
    {
      v10 = result;
      v11 = a2;
      v12 = sub_24F92C738();
      a2 = v11;
      v9 = v12;
      result = v10;
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == result)
    {
      v4 = 28;
      goto LABEL_11;
    }
  }

  result = sub_24F92CA88();
  __break(1u);
  return result;
}

uint64_t sub_24F1047A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  if (v2 >> 62)
  {
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 != 0;
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_24F104804(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = *(v2 + 64);
    if (v9)
    {
      if (v4 >> 62)
      {
        if (sub_24F92C738() != a1)
        {
          goto LABEL_20;
        }
      }

      else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) != a1)
      {
        goto LABEL_20;
      }

      swift_beginAccess();
      v10 = *(v9 + 64);
      if (v10)
      {
        *a2 = v10;
        *(a2 + 32) = type metadata accessor for EditorsChoice(0);
        *(a2 + 8) = v9;

        return;
      }
    }

LABEL_20:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v7 = a1;
  v8 = sub_24F92C738();
  a1 = v7;
  if (v8 <= v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v5 = *(v4 + 8 * a1 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v5 = MEMORY[0x253052270]();
LABEL_7:
  v6 = *(v5 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction);
  if (!v6)
  {

    goto LABEL_20;
  }

  *a2 = v6;
  *(a2 + 32) = type metadata accessor for Review(0);
  *(a2 + 8) = v5;
}

int64_t sub_24F1049B8(int64_t result)
{
  v2 = *(v1 + 48);
  if (v2 >> 62)
  {
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
LABEL_8:
    if (*(v1 + 64))
    {
      if (v2 >> 62)
      {
        v6 = result;
        v5 = sub_24F92C738();
        result = v6;
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v5 == result;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while ((v2 & 0xC000000000000001) == 0)
    {
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
      {
        return 0;
      }

      __break(1u);
LABEL_7:
      v3 = result;
      v4 = sub_24F92C738();
      result = v3;
      if (v4 <= v3)
      {
        goto LABEL_8;
      }
    }

    v7 = *(MEMORY[0x253052270]() + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction);

    swift_unknownObjectRelease();
    if (!v7)
    {
      return 0;
    }

    return 0;
  }
}

uint64_t ReviewsContainer.deinit()
{

  sub_24E6585F8(v0 + 96);
  return v0;
}

uint64_t ReviewsContainer.__deallocating_deinit()
{
  ReviewsContainer.deinit();

  return swift_deallocClassInstance();
}

void (**sub_24F104BC4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(char *, uint64_t, uint64_t)
{
  type metadata accessor for ReviewsContainer();
  v7 = swift_allocObject();
  result = ReviewsContainer.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F104C74()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  if (v2 >> 62)
  {
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 != 0;
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F104CD4(uint64_t a1, uint64_t a2)
{
  result = sub_24F104D2C(&qword_27F2328D0, a2, type metadata accessor for ReviewsContainer, &protocol conformance descriptor for ReviewsContainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F104D2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 InsetLayout.init(sublayout:layoutMargins:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_24E8EA128(a1, v14);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235770, &qword_24F9B83B0);
  v11 = swift_allocObject();
  v12 = v15;
  *(v11 + 48) = v14[2];
  *(v11 + 64) = v12;
  *(v11 + 80) = v16;
  result = v14[1];
  *(v11 + 16) = v14[0];
  *(v11 + 32) = result;
  *a2 = v11;
  return result;
}

_OWORD *InsetLayout.sublayout.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24F104FD4(v3 + 16, v5);
  return sub_24E8EA128(v5, a1);
}

_OWORD *sub_24F10500C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_24F104FD4(v3 + 16, v5);
  return sub_24E8EA128(v5, a2);
}

void InsetLayout.sublayout.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24F104FD4(v3 + 16, v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  sub_24E8EA128(a1, v8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24F105150(v8, v4 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235770, &qword_24F9B83B0);
    v5 = swift_allocObject();
    v6 = v8[3];
    v5[3] = v8[2];
    v5[4] = v6;
    v5[5] = v8[4];
    v7 = v8[1];
    v5[1] = v8[0];
    v5[2] = v7;

    *v1 = v5;
  }
}

void (*InsetLayout.sublayout.modify(__int128 **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 152) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_24F104FD4(v5 + 16, v4);
  sub_24E8EA128(v4, v4 + 5);
  return sub_24F105228;
}

void sub_24F105228(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 80);
  if (a2)
  {
    sub_24E8F997C(v3, v2);
    InsetLayout.sublayout.setter(v2);
    __swift_destroy_boxed_opaque_existential_1((v2 + 80));
  }

  else
  {
    InsetLayout.sublayout.setter(v3);
  }

  free(v2);
}

double InsetLayout.layoutMargins.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

void InsetLayout.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_24F104FD4(v9 + 16, v14);
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *&v16 = a3;
  *(&v16 + 1) = a4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v4;
    swift_beginAccess();
    sub_24F105150(v14, v10 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235770, &qword_24F9B83B0);
    v11 = swift_allocObject();
    v12 = v15;
    v11[3] = v14[2];
    v11[4] = v12;
    v11[5] = v16;
    v13 = v14[1];
    v11[1] = v14[0];
    v11[2] = v13;

    *v4 = v11;
  }
}

void (*InsetLayout.layoutMargins.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 80);
  *v4 = *(v5 + 64);
  v4[1] = v6;
  return sub_24F105450;
}

void sub_24F105450(double **a1)
{
  v1 = *a1;
  InsetLayout.layoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double InsetLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = *v3;
  swift_beginAccess();
  sub_24F92C228();
  sub_24F104FD4(v4 + 16, v8);
  sub_24E8EA128(v8, &v9);
  __swift_project_boxed_opaque_existential_1(&v9, v10);
  sub_24F922288();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v9);
  return v6 + *(v4 + 72) + *(v4 + 88);
}

uint64_t InsetLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *v5;
  swift_beginAccess();
  sub_24F104FD4((v6 + 2), v23);
  sub_24E8EA128(v23, &v24);
  __swift_project_boxed_opaque_existential_1(&v24, v25);
  sub_24F92C1C8();
  sub_24F922AC8();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v7 = v6[8];
  v8 = sub_24F9221B8();
  v9 = sub_24F922BD8();
  *v10 = v7 + *v10;
  v9(&v24, 0);
  v8(v23, 0);
  v11 = v6[10];
  v12 = sub_24F9221B8();
  v13 = sub_24F922BA8();
  *v14 = v11 + *v14;
  v13(&v24, 0);
  v12(v23, 0);
  v15 = v6[9];
  v16 = sub_24F922198();
  *v17 = *v17 - v15;
  v16(v23, 0);
  v18 = v6[8];
  v19 = sub_24F922198();
  *(v20 + 8) = *(v20 + 8) - v18;
  v19(v23, 0);
  v21 = sub_24F922148();
  sub_24F92C238();
  return v21(v23, 0);
}

__n128 sub_24F105820@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

char *Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a2;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v8[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v32 = a7;
    v33 = a3;
    v21 = a4;
    v22 = a6;
    v23 = v20;
    v24 = a5;
    v26 = v25;
    (*(v16 + 8))(v18, v15);
    v35 = v23;
    v36 = v26;
    a6 = v22;
    a4 = v21;
    a5 = v24;
    a7 = v32;
    a3 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v27 = &v8[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 4) = v42;
  sub_24E65E0D4(a7, &v8[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics]);
  *(v8 + 2) = v34;
  *(v8 + 3) = a3;
  *(v8 + 4) = a4;
  *(v8 + 5) = a5;
  v29 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v30 = sub_24F928AD8();
  (*(*(v30 - 8) + 32))(&v8[v29], a6, v30);
  return v8;
}

char *Action.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v61 - v6;
  v69 = sub_24F928AD8();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v61 - v9;
  v65 = sub_24F9285B8();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v61 - v14;
  v15 = sub_24F91F6B8();
  v72 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24F928388();
  v18 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v24 = (v3 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  v68 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  if (v26)
  {
    v74 = v25;
    v75 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v28 = v10;
    v29 = v3;
    v30 = v12;
    v31 = v28;
    v32 = v15;
    v34 = v33;
    v72[1](v17, v32);
    v74 = v27;
    v75 = v34;
    v35 = v31;
    v12 = v30;
    v3 = v29;
    v10 = v35;
  }

  sub_24F92C7F8();
  v36 = *(v18 + 8);
  v71 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72 = v36;
  (v36)(v23, v79);
  v63 = v10;
  v37 = v3 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v38 = v77;
  *v37 = v76;
  *(v37 + 1) = v38;
  *(v37 + 4) = v78;
  sub_24F929608();
  v39 = v68;
  sub_24F928398();
  v70 = *(v10 + 16);
  v40 = v65;
  v70(v12, v73, v65);
  v41 = v64;
  sub_24F929548();
  v42 = v41;
  v43 = v39;
  sub_24E65E0D4(v42, v3 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  sub_24F928398();
  v44 = sub_24F928348();
  v46 = v45;
  (v72)(v20, v79);
  v3[2] = v44;
  v3[3] = v46;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v47 = v73;
  v70(v12, v73, v40);
  sub_24F10B8A4(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v48 = v40;
  v49 = v47;
  sub_24F929548();
  v3[4] = v76;
  sub_24F928398();
  v50 = v3;
  v3[5] = _sSo26ASKActionPresentationStyleV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v20);
  v51 = v43;
  v52 = v49;
  sub_24F928398();
  v70(v12, v49, v48);
  v53 = v66;
  v54 = v69;
  sub_24F929548();
  v55 = v67;
  if ((*(v67 + 48))(v53, 1, v54) == 1)
  {
    sub_24E601704(v53, &qword_27F223CE8, &unk_24F983FE0);
    v56 = v48;
    v57 = v62;
    sub_24F928A98();
    (*(v63 + 8))(v52, v56);
    (v72)(v51, v79);
    (*(v55 + 32))(&v50[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v57, v54);
  }

  else
  {
    (*(v63 + 8))(v52, v48);
    (v72)(v51, v79);
    v58 = *(v55 + 32);
    v59 = v61;
    v58(v61, v53, v54);
    v58(&v50[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v59, v54);
  }

  return v50;
}

uint64_t Action.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t sub_24F106318@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Action(0);
  a1[4] = sub_24F10B8A4(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  *a1 = v1;
}

uint64_t sub_24F10639C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24F106404(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24F1064C4()
{
  v1 = 0xE000000000000000;
  sub_24F92C888();
  v2 = sub_24F92D1E8();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](539828256, 0xE400000000000000);
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 16);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v1 = *(v0 + 24);
  }

  MEMORY[0x253050C20](v4, v1);

  MEMORY[0x253050C20](0x697274654D202D20, 0xEC000000203A7363);
  sub_24F928AD8();
  sub_24F92CA38();
  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0;
}

uint64_t static Action.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v514 = a2;
  v3 = sub_24F9285B8();
  v4 = *(v3 - 8);
  v515 = v3;
  v516 = v4;
  MEMORY[0x28223BE20](v3);
  v489 = &v397 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v488 = &v397 - v7;
  MEMORY[0x28223BE20](v8);
  v487 = &v397 - v9;
  MEMORY[0x28223BE20](v10);
  v486 = &v397 - v11;
  MEMORY[0x28223BE20](v12);
  v484 = &v397 - v13;
  MEMORY[0x28223BE20](v14);
  v485 = &v397 - v15;
  MEMORY[0x28223BE20](v16);
  v482 = &v397 - v17;
  MEMORY[0x28223BE20](v18);
  v483 = &v397 - v19;
  MEMORY[0x28223BE20](v20);
  v481 = &v397 - v21;
  MEMORY[0x28223BE20](v22);
  v480 = &v397 - v23;
  MEMORY[0x28223BE20](v24);
  v479 = &v397 - v25;
  MEMORY[0x28223BE20](v26);
  v478 = &v397 - v27;
  MEMORY[0x28223BE20](v28);
  v477 = &v397 - v29;
  MEMORY[0x28223BE20](v30);
  v476 = &v397 - v31;
  MEMORY[0x28223BE20](v32);
  v475 = &v397 - v33;
  MEMORY[0x28223BE20](v34);
  v473 = &v397 - v35;
  MEMORY[0x28223BE20](v36);
  v471 = &v397 - v37;
  MEMORY[0x28223BE20](v38);
  v469 = &v397 - v39;
  MEMORY[0x28223BE20](v40);
  v470 = &v397 - v41;
  MEMORY[0x28223BE20](v42);
  v463 = &v397 - v43;
  MEMORY[0x28223BE20](v44);
  v461 = &v397 - v45;
  MEMORY[0x28223BE20](v46);
  v459 = &v397 - v47;
  MEMORY[0x28223BE20](v48);
  v457 = &v397 - v49;
  MEMORY[0x28223BE20](v50);
  v455 = &v397 - v51;
  MEMORY[0x28223BE20](v52);
  v453 = &v397 - v53;
  MEMORY[0x28223BE20](v54);
  v452 = &v397 - v55;
  MEMORY[0x28223BE20](v56);
  v449 = &v397 - v57;
  MEMORY[0x28223BE20](v58);
  v447 = &v397 - v59;
  MEMORY[0x28223BE20](v60);
  v446 = &v397 - v61;
  MEMORY[0x28223BE20](v62);
  v442 = &v397 - v63;
  MEMORY[0x28223BE20](v64);
  v439 = &v397 - v65;
  MEMORY[0x28223BE20](v66);
  v437 = &v397 - v67;
  MEMORY[0x28223BE20](v68);
  v438 = &v397 - v69;
  MEMORY[0x28223BE20](v70);
  v434 = &v397 - v71;
  MEMORY[0x28223BE20](v72);
  v432 = &v397 - v73;
  MEMORY[0x28223BE20](v74);
  v430 = &v397 - v75;
  MEMORY[0x28223BE20](v76);
  v427 = &v397 - v77;
  MEMORY[0x28223BE20](v78);
  v426 = &v397 - v79;
  MEMORY[0x28223BE20](v80);
  v429 = &v397 - v81;
  MEMORY[0x28223BE20](v82);
  v423 = &v397 - v83;
  MEMORY[0x28223BE20](v84);
  v421 = &v397 - v85;
  MEMORY[0x28223BE20](v86);
  v419 = &v397 - v87;
  MEMORY[0x28223BE20](v88);
  v417 = &v397 - v89;
  MEMORY[0x28223BE20](v90);
  v415 = &v397 - v91;
  MEMORY[0x28223BE20](v92);
  v413 = &v397 - v93;
  MEMORY[0x28223BE20](v94);
  v491 = &v397 - v95;
  MEMORY[0x28223BE20](v96);
  v493 = &v397 - v97;
  MEMORY[0x28223BE20](v98);
  v495 = &v397 - v99;
  MEMORY[0x28223BE20](v100);
  v497 = &v397 - v101;
  MEMORY[0x28223BE20](v102);
  v499 = &v397 - v103;
  MEMORY[0x28223BE20](v104);
  v501 = &v397 - v105;
  MEMORY[0x28223BE20](v106);
  v503 = &v397 - v107;
  MEMORY[0x28223BE20](v108);
  v505 = &v397 - v109;
  MEMORY[0x28223BE20](v110);
  v507 = &v397 - v111;
  MEMORY[0x28223BE20](v112);
  v508 = &v397 - v113;
  MEMORY[0x28223BE20](v114);
  v509 = &v397 - v115;
  MEMORY[0x28223BE20](v116);
  v511 = &v397 - v117;
  v118 = sub_24F928388();
  v518 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v474 = &v397 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v120);
  v472 = &v397 - v121;
  MEMORY[0x28223BE20](v122);
  v468 = &v397 - v123;
  MEMORY[0x28223BE20](v124);
  v467 = &v397 - v125;
  MEMORY[0x28223BE20](v126);
  v465 = &v397 - v127;
  MEMORY[0x28223BE20](v128);
  v466 = &v397 - v129;
  MEMORY[0x28223BE20](v130);
  v460 = &v397 - v131;
  MEMORY[0x28223BE20](v132);
  v462 = &v397 - v133;
  MEMORY[0x28223BE20](v134);
  v458 = &v397 - v135;
  MEMORY[0x28223BE20](v136);
  v456 = &v397 - v137;
  MEMORY[0x28223BE20](v138);
  v454 = &v397 - v139;
  MEMORY[0x28223BE20](v140);
  v451 = &v397 - v141;
  MEMORY[0x28223BE20](v142);
  v450 = &v397 - v143;
  MEMORY[0x28223BE20](v144);
  v448 = &v397 - v145;
  MEMORY[0x28223BE20](v146);
  v445 = &v397 - v147;
  MEMORY[0x28223BE20](v148);
  v443 = &v397 - v149;
  MEMORY[0x28223BE20](v150);
  v441 = &v397 - v151;
  MEMORY[0x28223BE20](v152);
  v436 = &v397 - v153;
  MEMORY[0x28223BE20](v154);
  v440 = &v397 - v155;
  MEMORY[0x28223BE20](v156);
  v435 = &v397 - v157;
  MEMORY[0x28223BE20](v158);
  v433 = &v397 - v159;
  MEMORY[0x28223BE20](v160);
  v431 = &v397 - v161;
  MEMORY[0x28223BE20](v162);
  v428 = &v397 - v163;
  MEMORY[0x28223BE20](v164);
  v425 = &v397 - v165;
  MEMORY[0x28223BE20](v166);
  v424 = &v397 - v167;
  MEMORY[0x28223BE20](v168);
  v422 = &v397 - v169;
  MEMORY[0x28223BE20](v170);
  v420 = &v397 - v171;
  MEMORY[0x28223BE20](v172);
  v418 = &v397 - v173;
  MEMORY[0x28223BE20](v174);
  v416 = &v397 - v175;
  MEMORY[0x28223BE20](v176);
  v414 = &v397 - v177;
  MEMORY[0x28223BE20](v178);
  v411 = &v397 - v179;
  MEMORY[0x28223BE20](v180);
  v410 = &v397 - v181;
  MEMORY[0x28223BE20](v182);
  v412 = &v397 - v183;
  MEMORY[0x28223BE20](v184);
  v409 = &v397 - v185;
  MEMORY[0x28223BE20](v186);
  v408 = &v397 - v187;
  MEMORY[0x28223BE20](v188);
  v407 = &v397 - v189;
  MEMORY[0x28223BE20](v190);
  v405 = &v397 - v191;
  MEMORY[0x28223BE20](v192);
  v404 = &v397 - v193;
  MEMORY[0x28223BE20](v194);
  v406 = &v397 - v195;
  MEMORY[0x28223BE20](v196);
  v403 = &v397 - v197;
  MEMORY[0x28223BE20](v198);
  v402 = &v397 - v199;
  MEMORY[0x28223BE20](v200);
  v401 = &v397 - v201;
  MEMORY[0x28223BE20](v202);
  v400 = &v397 - v203;
  MEMORY[0x28223BE20](v204);
  v399 = &v397 - v205;
  MEMORY[0x28223BE20](v206);
  v398 = &v397 - v207;
  MEMORY[0x28223BE20](v208);
  v490 = &v397 - v209;
  MEMORY[0x28223BE20](v210);
  v492 = &v397 - v211;
  MEMORY[0x28223BE20](v212);
  v494 = &v397 - v213;
  MEMORY[0x28223BE20](v214);
  v496 = &v397 - v215;
  MEMORY[0x28223BE20](v216);
  v498 = &v397 - v217;
  MEMORY[0x28223BE20](v218);
  v500 = &v397 - v219;
  MEMORY[0x28223BE20](v220);
  v502 = &v397 - v221;
  MEMORY[0x28223BE20](v222);
  v504 = &v397 - v223;
  MEMORY[0x28223BE20](v224);
  v506 = &v397 - v225;
  MEMORY[0x28223BE20](v226);
  v228 = &v397 - v227;
  MEMORY[0x28223BE20](v229);
  v231 = &v397 - v230;
  MEMORY[0x28223BE20](v232);
  v234 = &v397 - v233;
  MEMORY[0x28223BE20](v235);
  v237 = &v397 - v236;
  v513 = a1;
  sub_24F928398();
  v238 = sub_24F928348();
  v240 = v239;
  v241 = *(v518 + 8);
  v512 = v118;
  v464 = v518 + 8;
  v444 = v241;
  v241(v237, v118);
  if (!v240)
  {
    v242 = sub_24F92AC38();
    sub_24F10B8A4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v243 = swift_allocError();
    *v244 = 0x6C436E6F69746361;
    v244[1] = 0xEB00000000737361;
    v244[2] = v510;
    (*(*(v242 - 8) + 104))(v244, *MEMORY[0x277D22530], v242);
    swift_willThrow();
    return v243;
  }

  if (v238 == 0x69746341776F6C46 && v240 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    (*(v518 + 16))(v234, v513, v512);
    v245 = v511;
    (*(v516 + 16))(v511, v514, v515);
    type metadata accessor for FlowAction(0);
    v243 = swift_allocObject();
    v246 = v517;
    v247 = FlowAction.init(deserializing:using:)(v234, v245);
    if (v246)
    {
      return v243;
    }

    return v247;
  }

  if (v238 == 0xD000000000000011 && 0x800000024FA6C250 == v240 || (v511 = v238, v397 = v240, v248 = sub_24F92CE08(), v249 = v511, (v248 & 1) != 0))
  {

    (*(v518 + 16))(v231, v513, v512);
    v250 = v509;
    (*(v516 + 16))(v509, v514, v515);
    type metadata accessor for ExternalUrlAction(0);
    v243 = swift_allocObject();
    v251 = v517;
    v247 = ExternalUrlAction.init(deserializing:using:)(v231, v250);
    if (v251)
    {
      return v243;
    }

    return v247;
  }

  if (v511 == 0x646E756F706D6F43 && v397 == 0xEE006E6F69746341 || (v253 = v397, (sub_24F92CE08() & 1) != 0))
  {

    (*(v518 + 16))(v228, v513, v512);
    v254 = v508;
    (*(v516 + 16))(v508, v514, v515);
    type metadata accessor for CompoundAction(0);
    v243 = swift_allocObject();
    v255 = v517;
    v247 = CompoundAction.init(deserializing:using:)(v228, v254);
    if (v255)
    {
      return v243;
    }

    return v247;
  }

  if (v249 == 0x746341726566664FLL && v253 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    v256 = v506;
    (*(v518 + 16))(v506, v513, v512);
    v257 = v507;
    (*(v516 + 16))(v507, v514, v515);
    type metadata accessor for OfferAction(0);
    v243 = swift_allocObject();
    v258 = v517;
    v247 = OfferAction.init(deserializing:using:)(v256, v257);
    if (v258)
    {
      return v243;
    }

    return v247;
  }

  if (v249 == 0xD000000000000010 && 0x800000024FA6C270 == v253 || (v259 = sub_24F92CE08(), v260 = v397, (v259 & 1) != 0))
  {

    v261 = v504;
    (*(v518 + 16))(v504, v513, v512);
    v262 = v505;
    (*(v516 + 16))(v505, v514, v515);
    type metadata accessor for OfferStateAction(0);
    v243 = swift_allocObject();
    v263 = v517;
    v247 = OfferStateAction.init(deserializing:using:)(v261, v262);
    if (v263)
    {
      return v243;
    }

    return v247;
  }

  if (v511 == 0x6974634170747448 && v397 == 0xEA00000000006E6FLL || (v264 = v511, (sub_24F92CE08() & 1) != 0))
  {

    v265 = v502;
    (*(v518 + 16))(v502, v513, v512);
    v266 = v503;
    (*(v516 + 16))(v503, v514, v515);
    type metadata accessor for HttpAction(0);
    v243 = swift_allocObject();
    v267 = v517;
    v247 = HttpAction.init(deserializing:using:)(v265, v266);
    if (v267)
    {
      return v243;
    }

    return v247;
  }

  if (v264 == 0xD000000000000012 && 0x800000024FA6C290 == v260 || (sub_24F92CE08() & 1) != 0)
  {

    v268 = v500;
    (*(v518 + 16))(v500, v513, v512);
    v269 = v501;
    (*(v516 + 16))(v501, v514, v515);
    type metadata accessor for HttpTemplateAction(0);
    v243 = swift_allocObject();
    v270 = v517;
    v247 = HttpTemplateAction.init(deserializing:using:)(v268, v269);
    if (v270)
    {
      return v243;
    }

    return v247;
  }

  v243 = 0xD000000000000010;
  if (v511 == 0x7463417465656853 && v397 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    v271 = v498;
    (*(v518 + 16))(v498, v513, v512);
    v272 = v499;
    (*(v516 + 16))(v499, v514, v515);
    type metadata accessor for SheetAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SheetAction.init(deserializing:using:)(v271, v272);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000010 && 0x800000024FA6C2B0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v275 = v496;
    (*(v518 + 16))(v496, v513, v512);
    v276 = v497;
    (*(v516 + 16))(v497, v514, v515);
    type metadata accessor for OfferAlertAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = OfferAlertAction.init(deserializing:using:)(v275, v276);
    goto LABEL_44;
  }

  if (v511 == 0x7463417472656C41 && v397 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    v277 = v494;
    (*(v518 + 16))(v494, v513, v512);
    v278 = v495;
    (*(v516 + 16))(v495, v514, v515);
    type metadata accessor for AlertAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = AlertAction.init(deserializing:using:)(v277, v278);
    goto LABEL_44;
  }

  if (v511 == 0x676E616843626154 && v397 == 0xEF6E6F6974634165 || (sub_24F92CE08() & 1) != 0)
  {

    v243 = v492;
    (*(v518 + 16))(v492, v513, v512);
    v279 = v493;
    (*(v516 + 16))(v493, v514, v515);
    v273 = v517;
    v274 = sub_24EC10204(v243, v279);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000013 && 0x800000024FA6C2D0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v280 = v490;
    (*(v518 + 16))(v490, v513, v512);
    v281 = v491;
    (*(v516 + 16))(v491, v514, v515);
    type metadata accessor for AdInteractionAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = AdInteractionAction.init(deserializing:using:)(v280, v281);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000014 && 0x800000024FA6C2F0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v282 = v398;
    (*(v518 + 16))(v398, v513, v512);
    v283 = v413;
    (*(v516 + 16))(v413, v514, v515);
    type metadata accessor for AdTransparencyAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = AdTransparencyAction.init(deserializing:using:)(v282, v283);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000013 && 0x800000024FA6C310 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v284 = v399;
    (*(v518 + 16))(v399, v513, v512);
    v285 = v415;
    (*(v516 + 16))(v415, v514, v515);
    type metadata accessor for InAppPurchaseAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = InAppPurchaseAction.init(deserializing:using:)(v284, v285);
    goto LABEL_44;
  }

  if (v511 == 0x6341686372616553 && v397 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    v286 = v400;
    (*(v518 + 16))(v400, v513, v512);
    v287 = v417;
    (*(v516 + 16))(v417, v514, v515);
    type metadata accessor for SearchAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SearchAction.init(deserializing:using:)(v286, v287);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000019 && 0x800000024FA6C330 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v288 = v401;
    (*(v518 + 16))(v401, v513, v512);
    v289 = v419;
    (*(v516 + 16))(v419, v514, v515);
    type metadata accessor for SearchSegmentChangeAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SearchSegmentChangeAction.init(deserializing:using:)(v288, v289);
    goto LABEL_44;
  }

  v509 = 0xD000000000000016;
  if (v511 == 0xD000000000000016 && 0x800000024FA6C350 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v290 = v402;
    (*(v518 + 16))(v402, v513, v512);
    v291 = v421;
    (*(v516 + 16))(v421, v514, v515);
    type metadata accessor for PageFacetsChangeAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = PageFacetsChangeAction.init(deserializing:using:)(v290, v291);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000010 && 0x800000024FA6C370 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v292 = v403;
    (*(v518 + 16))(v403, v513, v512);
    v293 = v423;
    (*(v516 + 16))(v423, v514, v515);
    type metadata accessor for ShareSheetAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ShareSheetAction.init(deserializing:using:)(v292, v293);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000012 && 0x800000024FA6C390 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v294 = *(v518 + 16);
    v295 = v406;
    v296 = v512;
    v294(v406, v513, v512);
    v297 = v515;
    v518 = *(v516 + 16);
    v298 = v429;
    (v518)(v429, v514, v515);
    type metadata accessor for ShowSettingsAction(0);
    v243 = swift_allocObject();
    v299 = v404;
    v294(v404, v295, v296);
    v300 = v426;
    (v518)(v426, v298, v297);
    v301 = v517;
    Action.init(deserializing:using:)(v299, v300);
    if (v301)
    {
      (*(v516 + 8))(v429, v515);
      v302 = &v438;
LABEL_91:
      v444(*(v302 - 32), v512);
      return v243;
    }

LABEL_115:
    (*(v516 + 8))(v429, v515);
    v444(v406, v512);
    return v243;
  }

  if (v511 == 0xD000000000000013 && 0x800000024FA6C3B0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v303 = v405;
    (*(v518 + 16))(v405, v513, v512);
    v304 = v427;
    (*(v516 + 16))(v427, v514, v515);
    type metadata accessor for ReportConcernAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ReportConcernAction.init(deserializing:using:)(v303, v304);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000020 && 0x800000024FA6C3D0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v305 = v407;
    (*(v518 + 16))(v407, v513, v512);
    v306 = v430;
    (*(v516 + 16))(v430, v514, v515);
    type metadata accessor for ReviewSummaryReportConcernAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ReviewSummaryReportConcernAction.init(deserializing:using:)(v305, v306);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000017 && 0x800000024FA6C400 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v307 = v408;
    (*(v518 + 16))(v408, v513, v512);
    v308 = v432;
    (*(v516 + 16))(v432, v514, v515);
    type metadata accessor for ProductPageScrollAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ProductPageScrollAction.init(deserializing:using:)(v307, v308);
    goto LABEL_44;
  }

  if (v511 == 0xD00000000000001ALL && 0x800000024FA6C420 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v309 = v409;
    (*(v518 + 16))(v409, v513, v512);
    v310 = v434;
    (*(v516 + 16))(v434, v514, v515);
    type metadata accessor for ShelfBasedPageScrollAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ShelfBasedPageScrollAction.init(deserializing:using:)(v309, v310);
    goto LABEL_44;
  }

  if (v511 == 0x7463416B6E616C42 && v397 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    v311 = *(v518 + 16);
    v312 = v412;
    v313 = v512;
    v311(v412, v513, v512);
    v314 = v515;
    v518 = *(v516 + 16);
    v315 = v438;
    (v518)(v438, v514, v515);
    type metadata accessor for BlankAction(0);
    v243 = swift_allocObject();
    v316 = v410;
    v311(v410, v312, v313);
    v317 = v437;
    (v518)(v437, v315, v314);
    v318 = v517;
    Action.init(deserializing:using:)(v316, v317);
    if (v318)
    {
      (*(v516 + 8))(v438, v515);
      v302 = &v444;
      goto LABEL_91;
    }

    v429 = v438;
    v319 = &v444;
    goto LABEL_114;
  }

  if (v511 == 0xD000000000000017 && 0x800000024FA6C440 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v320 = v411;
    (*(v518 + 16))(v411, v513, v512);
    v321 = v439;
    (*(v516 + 16))(v439, v514, v515);
    type metadata accessor for OfferConfirmationAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = OfferConfirmationAction.init(deserializing:using:)(v320, v321);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000011 && 0x800000024FA6C460 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v322 = v414;
    (*(v518 + 16))(v414, v513, v512);
    v323 = v442;
    (*(v516 + 16))(v442, v514, v515);
    type metadata accessor for WriteReviewAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = WriteReviewAction.init(deserializing:using:)(v322, v323);
    goto LABEL_44;
  }

  if (v511 == 0x6341656461637241 && v397 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    v324 = v416;
    (*(v518 + 16))(v416, v513, v512);
    v325 = v446;
    (*(v516 + 16))(v446, v514, v515);
    type metadata accessor for ArcadeAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ArcadeAction.init(deserializing:using:)(v324, v325);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000012 && 0x800000024FA6C480 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v326 = v418;
    (*(v518 + 16))(v418, v513, v512);
    v327 = v447;
    (*(v516 + 16))(v447, v514, v515);
    type metadata accessor for FamilyCircleAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = FamilyCircleAction.init(deserializing:using:)(v326, v327);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000014 && 0x800000024FA6C4A0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v328 = v420;
    (*(v518 + 16))(v420, v513, v512);
    v329 = v449;
    (*(v516 + 16))(v449, v514, v515);
    type metadata accessor for ScrollingAlertAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ScrollingAlertAction.init(deserializing:using:)(v328, v329);
    goto LABEL_44;
  }

  if (v511 == 0x6441686372616553 && v397 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    v330 = v422;
    (*(v518 + 16))(v422, v513, v512);
    v331 = v452;
    (*(v516 + 16))(v452, v514, v515);
    type metadata accessor for SearchAdAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SearchAdAction.init(deserializing:using:)(v330, v331);
    goto LABEL_44;
  }

  if (v511 == 0x417070416E65704FLL && v397 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    v332 = v424;
    (*(v518 + 16))(v424, v513, v512);
    v333 = v453;
    (*(v516 + 16))(v453, v514, v515);
    type metadata accessor for OpenAppAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = OpenAppAction.init(deserializing:using:)(v332, v333);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000011 && 0x800000024FA6C4C0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v334 = v425;
    (*(v518 + 16))(v425, v513, v512);
    v335 = v455;
    (*(v516 + 16))(v455, v514, v515);
    type metadata accessor for OpenGamesUIAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = OpenGamesUIAction.init(deserializing:using:)(v334, v335);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000011 && 0x800000024FA6C4E0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v336 = v428;
    (*(v518 + 16))(v428, v513, v512);
    v337 = v457;
    (*(v516 + 16))(v457, v514, v515);
    type metadata accessor for RateLimitedAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = RateLimitedAction.init(deserializing:using:)(v336, v337);
    goto LABEL_44;
  }

  if (v511 == 0xD00000000000001DLL && 0x800000024FA6C500 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v338 = v431;
    (*(v518 + 16))(v431, v513, v512);
    v339 = v459;
    (*(v516 + 16))(v459, v514, v515);
    type metadata accessor for ArcadeLaunchAttributionAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ArcadeLaunchAttributionAction.init(deserializing:using:)(v338, v339);
    goto LABEL_44;
  }

  if (v511 == 0xD00000000000001DLL && 0x800000024FA6C520 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v340 = v433;
    (*(v518 + 16))(v433, v513, v512);
    v341 = v461;
    (*(v516 + 16))(v461, v514, v515);
    type metadata accessor for ArcadeSubscriptionStateAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ArcadeSubscriptionStateAction.init(deserializing:using:)(v340, v341);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000028 && 0x800000024FA6C540 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v342 = v435;
    (*(v518 + 16))(v435, v513, v512);
    v343 = v463;
    (*(v516 + 16))(v463, v514, v515);
    type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(v342, v343);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000019 && 0x800000024FA6C570 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v344 = *(v518 + 16);
    v345 = v440;
    v346 = v512;
    v344(v440, v513, v512);
    v347 = v515;
    v518 = *(v516 + 16);
    v348 = v470;
    (v518)(v470, v514, v515);
    type metadata accessor for GameCenterDashboardAction(0);
    v243 = swift_allocObject();
    v349 = v436;
    v344(v436, v345, v346);
    v350 = v469;
    (v518)(v469, v348, v347);
    v351 = v517;
    Action.init(deserializing:using:)(v349, v350);
    if (v351)
    {
      (*(v516 + 8))(v470, v515);
      v302 = &v472;
      goto LABEL_91;
    }

    v429 = v470;
    v319 = &v472;
    goto LABEL_114;
  }

  if (v511 == 0xD00000000000001DLL && 0x800000024FA6C590 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v352 = v441;
    (*(v518 + 16))(v441, v513, v512);
    v353 = v471;
    (*(v516 + 16))(v471, v514, v515);
    type metadata accessor for GameCenterPlayerProfileAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = GameCenterPlayerProfileAction.init(deserializing:using:)(v352, v353);
  }

  else if (v511 == 0xD00000000000001CLL && 0x800000024FA6C5B0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v354 = v443;
    (*(v518 + 16))(v443, v513, v512);
    v355 = v473;
    (*(v516 + 16))(v473, v514, v515);
    type metadata accessor for GameCenterAchievementsAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = GameCenterAchievementsAction.init(deserializing:using:)(v354, v355);
  }

  else if (v511 == 0xD00000000000001DLL && 0x800000024FA6C5D0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v356 = v445;
    (*(v518 + 16))(v445, v513, v512);
    v357 = v475;
    (*(v516 + 16))(v475, v514, v515);
    type metadata accessor for GuidedSearchTokenToggleAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = GuidedSearchTokenToggleAction.init(deserializing:using:)(v356, v357);
  }

  else if (v511 == 0xD000000000000018 && 0x800000024FA6C5F0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v358 = v448;
    (*(v518 + 16))(v448, v513, v512);
    v359 = v476;
    (*(v516 + 16))(v476, v514, v515);
    type metadata accessor for SearchEntityChangeAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SearchEntityChangeAction.init(deserializing:using:)(v358, v359);
  }

  else if (v511 == 0xD000000000000014 && 0x800000024FA6C610 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v360 = v450;
    (*(v518 + 16))(v450, v513, v512);
    v361 = v477;
    (*(v516 + 16))(v477, v514, v515);
    type metadata accessor for CancelPreorderAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = CancelPreorderAction.init(deserializing:using:)(v360, v361);
  }

  else if (v511 == v509 && 0x800000024FA6C630 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v243 = type metadata accessor for EngagementToggleAction(0);
    v362 = v451;
    (*(v518 + 16))(v451, v513, v512);
    v363 = v478;
    (*(v516 + 16))(v478, v514, v515);
    v273 = v517;
    v274 = EngagementToggleAction.__allocating_init(deserializing:using:)(v362, v363);
  }

  else if (v511 == 0xD000000000000019 && 0x800000024FA6C650 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v364 = v454;
    (*(v518 + 16))(v454, v513, v512);
    v365 = v479;
    (*(v516 + 16))(v479, v514, v515);
    type metadata accessor for AppLaunchTrampolineAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = AppLaunchTrampolineAction.init(deserializing:using:)(v364, v365);
  }

  else if (v511 == 0xD000000000000019 && 0x800000024FA6C670 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v366 = v456;
    (*(v518 + 16))(v456, v513, v512);
    v367 = v480;
    (*(v516 + 16))(v480, v514, v515);
    type metadata accessor for CreateCalendarEventAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = CreateCalendarEventAction.init(deserializing:using:)(v366, v367);
  }

  else
  {
    if ((v511 != 0x7478655479706F43 || v397 != 0xEE006E6F69746341) && (sub_24F92CE08() & 1) == 0)
    {
      if (v511 == 0xD000000000000017 && 0x800000024FA6C690 == v397 || (sub_24F92CE08() & 1) != 0)
      {

        v370 = *(v518 + 16);
        v371 = v462;
        v372 = v512;
        v370(v462, v513, v512);
        v373 = v515;
        v518 = *(v516 + 16);
        v374 = v483;
        (v518)(v483, v514, v515);
        type metadata accessor for ClearAppUsageDataAction(0);
        v243 = swift_allocObject();
        v375 = v460;
        v370(v460, v371, v372);
        v376 = v482;
        (v518)(v482, v374, v373);
        v377 = v517;
        Action.init(deserializing:using:)(v375, v376);
        if (v377)
        {
          (*(v516 + 8))(v483, v515);
          v302 = &v494;
          goto LABEL_91;
        }

        v429 = v483;
        v319 = &v494;
      }

      else
      {
        if ((v511 != 0xD000000000000018 || 0x800000024FA6C6B0 != v397) && (sub_24F92CE08() & 1) == 0)
        {
          if (v511 == 0x6B636142776F6C46 && v397 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
          {

            v386 = v467;
            (*(v518 + 16))(v467, v513, v512);
            v387 = v486;
            (*(v516 + 16))(v486, v514, v515);
            type metadata accessor for FlowBackAction(0);
            v243 = swift_allocObject();
            v273 = v517;
            v274 = FlowBackAction.init(deserializing:using:)(v386, v387);
          }

          else if (v511 == 0xD000000000000017 && 0x800000024FA6C6D0 == v397 || (sub_24F92CE08() & 1) != 0)
          {

            v388 = v468;
            (*(v518 + 16))(v468, v513, v512);
            v389 = v487;
            (*(v516 + 16))(v487, v514, v515);
            type metadata accessor for CrossfireReferralAction(0);
            v243 = swift_allocObject();
            v273 = v517;
            v274 = CrossfireReferralAction.init(deserializing:using:)(v388, v389);
          }

          else if (v511 == 0x70417463656C6553 && v397 == 0xEF6E6F6974634170 || (sub_24F92CE08() & 1) != 0)
          {

            v390 = v472;
            (*(v518 + 16))(v472, v513, v512);
            v391 = v488;
            (*(v516 + 16))(v488, v514, v515);
            type metadata accessor for SelectAppAction(0);
            v243 = swift_allocObject();
            v273 = v517;
            v274 = SelectAppAction.init(deserializing:using:)(v390, v391);
          }

          else
          {
            if ((v511 != 0xD000000000000010 || 0x800000024FA6C6F0 != v397) && (sub_24F92CE08() & 1) == 0)
            {
              v394 = sub_24F92AC38();
              sub_24F10B8A4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
              swift_allocError();
              v395 = v397;
              *v396 = v511;
              v396[1] = v395;
              v396[2] = v510;
              (*(*(v394 - 8) + 104))(v396, *MEMORY[0x277D22528], v394);
              swift_willThrow();
              return v243;
            }

            v392 = v474;
            (*(v518 + 16))(v474, v513, v512);
            v393 = v489;
            (*(v516 + 16))(v489, v514, v515);
            type metadata accessor for GSKWrappedAction(0);
            v243 = swift_allocObject();
            v273 = v517;
            v274 = sub_24F369478(v392, v393);
          }

          goto LABEL_44;
        }

        v378 = *(v518 + 16);
        v379 = v466;
        v380 = v512;
        v378(v466, v513, v512);
        v381 = v515;
        v518 = *(v516 + 16);
        v382 = v485;
        (v518)(v485, v514, v515);
        type metadata accessor for ClearSearchHistoryAction(0);
        v243 = swift_allocObject();
        v383 = v465;
        v378(v465, v379, v380);
        v384 = v484;
        (v518)(v484, v382, v381);
        v385 = v517;
        Action.init(deserializing:using:)(v383, v384);
        if (v385)
        {
          (*(v516 + 8))(v485, v515);
          v302 = &v498;
          goto LABEL_91;
        }

        v429 = v485;
        v319 = &v498;
      }

LABEL_114:
      v406 = *(v319 - 32);
      goto LABEL_115;
    }

    v368 = v458;
    (*(v518 + 16))(v458, v513, v512);
    v369 = v481;
    (*(v516 + 16))(v481, v514, v515);
    type metadata accessor for CopyTextAction(0);
    v243 = swift_allocObject();
    v273 = v517;
    v274 = CopyTextAction.init(deserializing:using:)(v368, v369);
  }

LABEL_44:
  if (!v273)
  {
    return v274;
  }

  return v243;
}

uint64_t static Action.tryToMakeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  MEMORY[0x28223BE20](v4);
  v5 = sub_24F928328();
  result = 0;
  if ((v5 & 1) == 0)
  {
    return static Action.makeInstance(byDeserializing:using:)(a1, a2);
  }

  return result;
}

uint64_t Action.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Action.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *Action.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a6;
  v31 = a2;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = &v15[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v15[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(a1, &v34, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v35 + 1))
  {
    v18 = v35;
    *v17 = v34;
    *(v17 + 1) = v18;
    *(v17 + 4) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a7;
    v28 = a3;
    v20 = v19;
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v32 = v20;
    v33 = v22;
    a7 = v27;
    a3 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(a7, &v15[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics]);
  *(v15 + 2) = v31;
  *(v15 + 3) = a3;
  v23 = v29;
  *(v15 + 4) = a4;
  *(v15 + 5) = v23;
  v24 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v25 = sub_24F928AD8();
  (*(*(v25 - 8) + 32))(&v15[v24], v30, v25);
  return v15;
}

uint64_t Action.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Action.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t sub_24F10ACF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F10AD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  result = sub_24F928328();
  if ((result & 1) == 0)
  {
    result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
    if (!v3)
    {
      *a3 = result;
      return result;
    }

    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
    sub_24F9285D8();
    (*(v8 + 8))(v10, v7);
    sub_24E60169C(v14, v12, &qword_27F226730, &unk_24F984CC0);
    if (v13)
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      type metadata accessor for Action(0);
      sub_24F929EC8();

      sub_24E601704(v14, &qword_27F226730, &unk_24F984CC0);
      result = __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_24E601704(v14, &qword_27F226730, &unk_24F984CC0);

      result = sub_24E601704(v12, &qword_27F226730, &unk_24F984CC0);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t sub_24F10AF2C(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v6, &qword_27F2129B0, &unk_24F945320);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  sub_24E8E7708(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t Action.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t sub_24F10B0B4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Action(0);
  a1[4] = sub_24F10B8A4(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  *a1 = v3;
}

uint64_t sub_24F10B134@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F10B170@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24F10B1DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F10B2D8(uint64_t a1, uint64_t *a2)
{
  result = sub_24F928348();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    if (result == 0xD000000000000014 && 0x800000024FA6C750 == v4 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 2) != 0)
      {
        return result;
      }

      v7 = *a2 | 2;
      goto LABEL_7;
    }

    if (v5 == 0xD000000000000016 && 0x800000024FA6C770 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 4) == 0)
      {
        v7 = *a2 | 4;
LABEL_7:
        *a2 = v7;
      }
    }

    else if (v5 == 0xD000000000000021 && 0x800000024FA6C790 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 8) == 0)
      {
        v7 = *a2 | 8;
        goto LABEL_7;
      }
    }

    else
    {
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      v9[3] = MEMORY[0x277D837D0];
      v9[0] = v5;
      v9[1] = v6;
      sub_24F928438();
      sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5B8();
    }
  }

  return result;
}

uint64_t _sSo26ASKActionPresentationStyleV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_24F92AC28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_24F9282B8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_24F928388();
    (*(*(v9 - 8) + 8))(a1, v9);
    sub_24E601704(v4, &qword_27F2213B0, &qword_24F965EC0);
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    MEMORY[0x28223BE20](v10);
    *(&v13 - 2) = &v14;
    sub_24F92ABE8();
    v11 = sub_24F928388();
    (*(*(v11 - 8) + 8))(a1, v11);
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t type metadata accessor for Action(uint64_t a1)
{
  result = qword_27F239678;
  if (!qword_27F239678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F10B828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Action.makeInstance(byDeserializing:using:)(a1, *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24F10B8A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F10B8EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F2129B0, &unk_24F945320);
}

void sub_24F10B964(uint64_t a1)
{
  sub_24F928AD8();
  if (v1 <= 0x3F)
  {
    sub_24E61C938(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double LayoutMarginsAware<>.layoutFrame.getter()
{
  [v0 frame];
  [v0 layoutMargins];

  sub_24F92C1C8();
  return result;
}

GameStoreKit::MediaOverlayStyle_optional __swiftcall MediaOverlayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaOverlayStyle.rawValue.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x737953686374616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_24F10BD48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 0x737953686374616DLL;
    v3 = 0xEB000000006D6574;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1802658148;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 0x737953686374616DLL;
    v7 = 0xEB000000006D6574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1802658148;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F10BE50()
{
  result = qword_27F239688;
  if (!qword_27F239688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239688);
  }

  return result;
}

uint64_t sub_24F10BEA4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F10BF44(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F10BFD0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F10C078(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 0x737953686374616DLL;
    v4 = 0xEB000000006D6574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1802658148;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void TopChartsPage.__allocating_init(genreId:ageBandId:segments:initialSegmentIndex:title:categoriesButtonTitle:categories:pageRefreshPolicy:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int (*a8)(void, void, void), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v69 = a8;
  v70 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v20 - 8);
  v68 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v71 = &v67 - v23;
  MEMORY[0x28223BE20](v24);
  v72 = &v67 - v25;
  v75 = sub_24F928818();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v76 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v74 = &v67 - v28;
  v29 = swift_allocObject();
  v30 = (v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  *v30 = a1;
  v30[1] = a2;
  v31 = (v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  *v31 = a3;
  v31[1] = a4;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments) = a5;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex) = a6;
  v32 = (v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v33 = v69;
  v34 = v70;
  *v32 = a7;
  v32[1] = v33;
  v35 = (v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  *v35 = a9;
  v35[1] = a10;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories) = v34;
  if (a5 >> 62)
  {
    v36 = sub_24F92C738();
  }

  else
  {
    v36 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = &OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v38 = &OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent;
  v39 = v74;
  v40 = v76;
  if (!v36)
  {
    sub_24F928808();
    v45 = 0;
    v43 = *(v73 + 16);
    v46 = v75;
    goto LABEL_13;
  }

  if ((a5 & 0xC000000000000001) != 0)
  {

    v41 = MEMORY[0x253052270](0, a5);
    goto LABEL_7;
  }

  if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(a5 + 32);

LABEL_7:
    v42 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v43 = *(v73 + 16);
    v43(v39, v41 + v42, v75);

    if ((a5 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x253052270](0, a5);

      v45 = *(v44 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
      swift_unknownObjectRelease();
    }

    else
    {
      if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v47 = *(a5 + 32);

      v45 = *(v47 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
    }

    v46 = v75;
    v40 = v76;
LABEL_13:
    v37 = a13;
    v43(v40, v39, v46);
    v48 = v72;
    sub_24E90A7EC(a13, v72);
    *(v29 + 16) = a12;
    v43((v29 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v40, v46);
    *(v29 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v45;
    v49 = v45;
    v50 = v71;
    sub_24E90A7EC(v48, v71);
    v38 = sub_24F9285B8();
    v51 = *(v38 - 1);
    v69 = *(v51 + 48);
    v70 = v51;
    if (v69(v50, 1, v38) == 1)
    {

      sub_24E90A85C(a13);
      sub_24E90A85C(v48);
      v52 = *(v73 + 8);
      v52(v40, v46);
      v52(v74, v46);
      v53 = v50;
LABEL_21:
      sub_24E90A85C(v53);
      return;
    }

    v54 = qword_27F2105F0;

    v67 = v49;
    if (v54 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_16:
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v55, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  v56 = v71;
  sub_24F9285C8();
  v57 = v77;
  v58 = v72;
  if (v77)
  {
  }

  v59 = *(v70 + 8);
  v59(v56, v38);
  v60 = v75;
  if (v57)
  {
    v61 = v68;
    sub_24E90A7EC(v58, v68);
    if (v69(v61, 1, v38) == 1)
    {

      sub_24E90A85C(v37);
      sub_24E90A85C(v58);
      v62 = v61;
      v63 = *(v73 + 8);
      v63(v76, v60);
      v63(v74, v60);
      v53 = v62;
      goto LABEL_21;
    }

    sub_24ECDF110();

    sub_24E90A85C(v37);
    sub_24E90A85C(v58);
    v65 = v61;
    v66 = *(v73 + 8);
    v66(v76, v60);
    v66(v74, v60);
    v59(v65, v38);
  }

  else
  {

    sub_24E90A85C(v37);
    sub_24E90A85C(v58);
    v64 = *(v73 + 8);
    v64(v76, v60);
    v64(v74, v60);
  }
}

void TopChartsPage.init(genreId:ageBandId:segments:initialSegmentIndex:title:categoriesButtonTitle:categories:pageRefreshPolicy:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v78 = a8;
  v74 = a11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v21 - 8);
  v73 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v75 = &v71 - v24;
  MEMORY[0x28223BE20](v25);
  v76 = &v71 - v26;
  v27 = sub_24F928818();
  v79 = *(v27 - 8);
  v80 = v27;
  MEMORY[0x28223BE20](v27);
  v77 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v71 - v30;
  v32 = (v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  *v32 = a1;
  v32[1] = a2;
  v33 = (v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  *v33 = a3;
  v33[1] = a4;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments) = a5;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex) = a6;
  v34 = (v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v35 = v78;
  *v34 = a7;
  v34[1] = v35;
  v36 = (v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  *v36 = a9;
  v36[1] = a10;
  v78 = v13;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories) = v74;
  v81 = &v71 - v30;
  if (a5 >> 62)
  {
    v37 = sub_24F92C738();
    v31 = v81;
  }

  else
  {
    v37 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = &OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v39 = v77;
  if (!v37)
  {
    v45 = v31;
    sub_24F928808();
    v44 = 0;
    v46 = v80;
    v42 = *(v79 + 16);
    goto LABEL_13;
  }

  if ((a5 & 0xC000000000000001) != 0)
  {

    v40 = MEMORY[0x253052270](0, a5);
    goto LABEL_7;
  }

  if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(a5 + 32);

LABEL_7:
    v41 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v42 = *(v79 + 16);
    v42(v81, v40 + v41, v80);

    if ((a5 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x253052270](0, a5);

      v44 = *(v43 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
      swift_unknownObjectRelease();
    }

    else
    {
      if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v47 = *(a5 + 32);

      v44 = *(v47 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
    }

    v46 = v80;
    v45 = v81;
LABEL_13:
    v42(v39, v45, v46);
    v48 = v76;
    sub_24E90A7EC(a13, v76);
    v49 = v78;
    *(v78 + 16) = a12;
    v42((v49 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v39, v46);
    *(v49 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v44;
    v50 = v75;
    sub_24E90A7EC(v48, v75);
    v38 = sub_24F9285B8();
    v74 = *(v38 - 1);
    v72 = *(v74 + 48);
    if (v72(v50, 1, v38) == 1)
    {
      v51 = v46;

      sub_24E90A85C(a13);
      sub_24E90A85C(v48);
      v52 = *(v79 + 8);
      v52(v39, v51);
      v52(v81, v51);
      v53 = v50;
LABEL_21:
      sub_24E90A85C(v53);
      return;
    }

    a3 = a13;
    v54 = qword_27F2105F0;

    v71 = v44;
    if (v54 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_16:
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v55, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  v56 = v75;
  sub_24F9285C8();
  v57 = v82;
  v58 = v76;
  v59 = v77;
  v60 = v74;
  if (v82)
  {
  }

  v61 = *(v60 + 8);
  v61(v56, v38);
  if (v57)
  {
    v62 = v73;
    sub_24E90A7EC(v58, v73);
    if (v72(v62, 1, v38) == 1)
    {

      sub_24E90A85C(a3);
      sub_24E90A85C(v58);
      v63 = *(v79 + 8);
      v64 = v62;
      v65 = v80;
      v63(v59, v80);
      v63(v81, v65);
      v53 = v64;
      goto LABEL_21;
    }

    sub_24ECDF110();

    sub_24E90A85C(a3);
    sub_24E90A85C(v58);
    v68 = *(v79 + 8);
    v69 = v62;
    v70 = v80;
    v68(v59, v80);
    v68(v81, v70);
    v61(v69, v38);
  }

  else
  {

    sub_24E90A85C(a3);
    sub_24E90A85C(v58);
    v66 = v80;
    v67 = *(v79 + 8);
    v67(v59, v80);
    v67(v81, v66);
  }
}

char *TopChartsPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v142 = sub_24F928818();
  v138 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v137 = v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v141 = v116 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v125 = v116 - v9;
  MEMORY[0x28223BE20](v10);
  v134 = v116 - v11;
  MEMORY[0x28223BE20](v12);
  v143 = v116 - v13;
  v14 = sub_24F9285B8();
  v146 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v130 = v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v144 = v116 - v17;
  v18 = sub_24F928388();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v128 = v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v127 = v116 - v22;
  MEMORY[0x28223BE20](v23);
  v126 = v116 - v24;
  MEMORY[0x28223BE20](v25);
  v139 = v116 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v116 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v116 - v31;
  v33 = a1;
  sub_24F928398();
  v34 = sub_24F928348();
  v36 = v35;
  v39 = *(v19 + 8);
  v38 = v19 + 8;
  v37 = v39;
  v39(v32, v18);
  v129 = v36;
  if (!v36)
  {
    v81 = sub_24F92AC38();
    sub_24F10DD00(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v82 = 0x644965726E6567;
    v83 = v135;
    v82[1] = 0xE700000000000000;
    v82[2] = v83;
    (*(*(v81 - 8) + 104))(v82, *MEMORY[0x277D22530], v81);
    swift_willThrow();
    (*(v146 + 8))(v145, v14);
    v37(v33, v18);
    return v139;
  }

  v123 = v34;
  v131 = v37;
  v132 = v38;
  v136 = v18;
  v133 = v33;
  v140 = v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  v41 = swift_allocObject();
  *(v41 + 16) = MEMORY[0x277D84F90];
  v147 = v41;
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  v43 = __swift_project_value_buffer(v42, qword_27F22D8D8);
  v44 = v144;
  v116[1] = v43;
  v116[2] = v40;
  sub_24F928528();

  sub_24F928398();
  v122 = sub_24F928348();
  v121 = v45;
  v46 = v29;
  v47 = v136;
  v48 = v131;
  v131(v46, v136);
  sub_24F928398();
  v119 = *(v146 + 16);
  v49 = v130;
  v119(v130, v44, v140);
  type metadata accessor for TopChartSegment(0);
  sub_24F10DD00(&qword_27F233F50, type metadata accessor for TopChartSegment, &protocol conformance descriptor for BasePage);
  v50 = v49;
  v117 = sub_24F92B698();
  v51 = v126;
  sub_24F928398();
  v52 = sub_24F928258();
  LOBYTE(v49) = v53;
  v48(v51, v47);
  if (v49)
  {
    v54 = 0;
  }

  else
  {
    v54 = v52;
  }

  v55 = v127;
  sub_24F928398();
  v126 = sub_24F928348();
  v120 = v56;
  v48(v55, v47);
  v57 = v128;
  sub_24F928398();
  v127 = sub_24F928348();
  v118 = v58;
  v48(v57, v47);
  v59 = v117;
  sub_24F928398();
  v60 = v140;
  v61 = v119;
  v119(v50, v144, v140);
  type metadata accessor for TopChartCategory(0);
  sub_24F10DD00(&qword_27F237A68, type metadata accessor for TopChartCategory, &protocol conformance descriptor for TopChartCategory);
  v62 = sub_24F92B698();
  v63 = v143;
  v61(v143, v145, v60);
  v64 = v60;
  (*(v146 + 56))(v63, 0, 1, v60);
  v65 = swift_allocObject();
  v66 = (v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  v67 = v129;
  *v66 = v123;
  v66[1] = v67;
  v68 = (v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  v69 = v121;
  *v68 = v122;
  v68[1] = v69;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments) = v59;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex) = v54;
  v70 = (v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v71 = v120;
  *v70 = v126;
  v70[1] = v71;
  v72 = (v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  v73 = v118;
  *v72 = v127;
  v72[1] = v73;
  v139 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories) = v62;
  if (v59 >> 62)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v142;
  if (!result)
  {
    v84 = v141;
    sub_24F928808();
    v80 = 0;
    v78 = *(v138 + 16);
    goto LABEL_19;
  }

  if ((v59 & 0xC000000000000001) != 0)
  {

    v76 = MEMORY[0x253052270](0, v59);
    goto LABEL_13;
  }

  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v76 = *(v59 + 32);

LABEL_13:
    v77 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v78 = *(v138 + 16);
    v78(v141, v76 + v77, v142);

    if ((v59 & 0xC000000000000001) != 0)
    {
      v79 = MEMORY[0x253052270](0, v59);

      v80 = *(v79 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = *(v59 + 32);

      v80 = *(v85 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
    }

    v64 = v140;
    v84 = v141;
    v75 = v142;
LABEL_19:
    v86 = v137;
    v78(v137, v84, v75);
    v87 = v134;
    sub_24E90A7EC(v143, v134);
    v88 = v139;
    *(v139 + 2) = 0;
    v78(&v88[OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics], v86, v75);
    *&v88[OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent] = v80;
    v89 = v125;
    sub_24E90A7EC(v87, v125);
    v90 = v146;
    v140 = *(v146 + 48);
    v91 = v140(v89, 1, v64);
    v92 = v133;
    if (v91 == 1)
    {

      v93 = *(v90 + 8);
      v93(v145, v64);
      v131(v92, v136);
      sub_24E90A85C(v87);
      v94 = *(v138 + 8);
      v94(v86, v75);
      v94(v141, v75);
      sub_24E90A85C(v143);
      v93(v144, v64);
      v95 = v89;
LABEL_26:
      sub_24E90A85C(v95);
      return v139;
    }

    v135 = v80;
    sub_24F9285C8();
    v96 = v148;
    if (v148)
    {
    }

    v97 = *(v90 + 8);
    v98 = v89;
    v99 = v64;
    v97(v98, v64);
    v100 = v136;
    v101 = v137;
    v102 = v124;
    if (v96)
    {
      v103 = v134;
      sub_24E90A7EC(v134, v124);
      if (v140(v102, 1, v99) == 1)
      {

        v97(v145, v99);
        v131(v92, v136);
        sub_24E90A85C(v103);
        v104 = *(v138 + 8);
        v105 = v99;
        v106 = v142;
        v104(v137, v142);
        v104(v141, v106);
        sub_24E90A85C(v143);
        v97(v144, v105);
        v95 = v102;
        goto LABEL_26;
      }

      v112 = v92;
      v113 = v99;
      sub_24ECDF110();

      v97(v145, v99);
      v131(v112, v136);
      sub_24E90A85C(v103);
      v114 = *(v138 + 8);
      v115 = v142;
      v114(v137, v142);
      v114(v141, v115);
      sub_24E90A85C(v143);
      v97(v144, v113);
      v110 = v102;
      v111 = v113;
    }

    else
    {

      v97(v145, v99);
      v131(v92, v100);
      sub_24E90A85C(v134);
      v107 = *(v138 + 8);
      v108 = v99;
      v109 = v142;
      v107(v101, v142);
      v107(v141, v109);
      sub_24E90A85C(v143);
      v110 = v144;
      v111 = v108;
    }

    v97(v110, v111);
    return v139;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F10DD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TopChartsPage.genreId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);

  return v1;
}

uint64_t TopChartsPage.ageBandId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);

  return v1;
}

uint64_t TopChartsPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);

  return v1;
}

uint64_t TopChartsPage.categoriesButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);

  return v1;
}

uint64_t sub_24F10DE98()
{
}

uint64_t TopChartsPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TopChartsPage.__deallocating_deinit()
{
  TopChartsPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TopChartsPage(uint64_t a1)
{
  result = qword_27F239690;
  if (!qword_27F239690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProductTextActivityProvider.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductTextActivityProvider.__allocating_init(text:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ProductTextActivityProvider.init(text:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ProductTextActivityProvider.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductTextActivityProvider.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ProductTextActivityProvider.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  v20 = *v2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v9 = sub_24F928348();
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  if (v11)
  {
    v13 = sub_24F9285B8();
    (*(*(v13 - 8) + 8))(v21, v13);
    v12(a1, v5);
    v3[2] = v9;
    v3[3] = v11;
  }

  else
  {
    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v15 = 1954047348;
    v16 = v20;
    v15[1] = 0xE400000000000000;
    v15[2] = v16;
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D22530], v14);
    swift_willThrow();
    v17 = sub_24F9285B8();
    (*(*(v17 - 8) + 8))(v21, v17);
    v12(a1, v5);
    type metadata accessor for ProductTextActivityProvider();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t ProductTextActivityProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24F10E550@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductTextActivityProvider();
  v7 = swift_allocObject();
  result = ProductTextActivityProvider.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F10E648()
{
  sub_24F113E2C();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F10E684()
{
  result = sub_24F926DF8();
  qword_27F2396A0 = result;
  return result;
}

uint64_t sub_24F10E6C4()
{
  result = sub_24F926DF8();
  qword_27F2396A8 = result;
  return result;
}

uint64_t sub_24F10E700()
{
  result = sub_24F926DF8();
  qword_27F2396B0 = result;
  return result;
}

uint64_t sub_24F10E738()
{
  result = sub_24F926DF8();
  qword_27F2396B8 = result;
  return result;
}

void sub_24F10E770(void *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_24F926E08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F926E18();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v14 = a1;
    sub_24F926DD8();
    (*(v11 + 104))(v13, *MEMORY[0x277CE0FF0], v10);
    sub_24F926E28();

    (*(v11 + 8))(v13, v10);
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v15 = sub_24F926E88();

    (*(v7 + 8))(v9, v6);
    v16 = sub_24F927618();
    v18 = v17;

    v20[24] = 1;
    v20[16] = 0;
    v20[8] = 0;
    v19 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    a3 = 0.0;
  }

  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = v19;
  *(a2 + 24) = a3;
  *(a2 + 32) = 0;
  *(a2 + 40) = a3;
  *(a2 + 48) = 0;
  *(a2 + 56) = v16;
  *(a2 + 64) = v18;
}

__n128 sub_24F10E9F8@<Q0>(void *a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      LOBYTE(v10) = 1;
      v17[25] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397D8, &qword_24F9CA870);
      sub_24F114588();
      sub_24F924E28();
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    sub_24F926DF8();
    sub_24F927618();

    v14 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397F0, &qword_24F9CA878);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397C0, &qword_24F9CA860);
    sub_24F11466C(&qword_27F2397E8, &qword_27F2397F0, &qword_24F9CA878, sub_24F1146E8);
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &qword_24F9CA860, sub_24F1144FC);
    sub_24F924E28();
    v12 = v8;
    v13[0] = *v9;
    *(v13 + 9) = *&v9[9];
    v10 = v6;
    v11 = v7;
    v20 = v8;
    *v21 = *v9;
    *&v21[9] = *&v9[9];
    v18 = v6;
    v19 = v7;
    v15 = 0;
    v21[25] = 0;
    sub_24E60169C(&v10, v16, &qword_27F2397D8, &qword_24F9CA870);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397D8, &qword_24F9CA870);
    sub_24F114588();
    sub_24F924E28();

    sub_24E601704(&v10, &qword_27F2397D8, &qword_24F9CA870);

    goto LABEL_6;
  }

  sub_24F10E770(a1, &v6, 20.0);
  v20 = v8;
  *v21 = *v9;
  *&v21[16] = *&v9[16];
  v18 = v6;
  v19 = v7;
  v14 = 1;
  v21[24] = 1;
  sub_24E60169C(&v6, v16, &qword_27F2397C0, &qword_24F9CA860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397F0, &qword_24F9CA878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397C0, &qword_24F9CA860);
  sub_24F11466C(&qword_27F2397E8, &qword_27F2397F0, &qword_24F9CA878, sub_24F1146E8);
  sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &qword_24F9CA860, sub_24F1144FC);
  sub_24F924E28();
  v20 = v12;
  *v21 = v13[0];
  *&v21[9] = *(v13 + 9);
  v18 = v10;
  v19 = v11;
  v15 = 0;
  v21[25] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397D8, &qword_24F9CA870);
  sub_24F114588();
  sub_24F924E28();
  sub_24E601704(&v6, &qword_27F2397C0, &qword_24F9CA860);
LABEL_6:
  v20 = v16[2];
  *v21 = *v17;
  *&v21[10] = *&v17[10];
  v18 = v16[0];
  v19 = v16[1];
LABEL_8:
  v4 = *v21;
  *(a3 + 32) = v20;
  *(a3 + 48) = v4;
  *(a3 + 58) = *&v21[10];
  result = v19;
  *a3 = v18;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_24F10EE1C@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v76) = a3;
  v79 = a4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239778, &qword_24F9CA830);
  MEMORY[0x28223BE20](v78);
  v7 = (v63 - v6);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239780, &qword_24F9CA838);
  MEMORY[0x28223BE20](v73);
  v74 = v63 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239788, &unk_24F9CA840);
  MEMORY[0x28223BE20](v77);
  v75 = v63 - v9;
  v71 = sub_24F924258();
  MEMORY[0x28223BE20](v71);
  v11 = (v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_24F926E08();
  v12 = *(v69 - 1);
  MEMORY[0x28223BE20](v69);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F926E18();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195D0, &unk_24F94C4F0);
  MEMORY[0x28223BE20](v70);
  v72 = v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239790, &qword_24F9CA850);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  if (a1)
  {
    v64 = v24;
    v65 = a2;
    v66 = v63 - v23;
    v67 = v22;
    v68 = v7;
    v63[1] = a1;
    v25 = a1;
    sub_24F926DD8();
    (*(v16 + 104))(v18, *MEMORY[0x277CE0FF0], v15);
    sub_24F926E28();

    (*(v16 + 8))(v18, v15);
    v26 = v69;
    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v69);
    v27 = sub_24F926E88();

    (*(v12 + 8))(v14, v26);
    v69 = v25;
    [v25 size];
    if (v28 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (v28 >= v29)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    if (qword_27F210D78 != -1)
    {
      swift_once();
    }

    v32 = (*&qword_27F39D310 + -10.0 + -10.0 - v30 * ((*&qword_27F39D310 + -10.0 + -10.0) / v31)) * -0.5 + 14.0;
    v33 = *(v71 + 20);
    v34 = *MEMORY[0x277CE0118];
    v35 = sub_24F924B38();
    (*(*(v35 - 8) + 104))(v11 + v33, v34, v35);
    *v11 = v32;
    v11[1] = v32;
    v36 = v72;
    v37 = &v72[*(v70 + 36)];
    sub_24E73A8FC(v11, v37);
    *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)) = 256;
    *v36 = v27;
    *(v36 + 1) = 0;
    *(v36 + 8) = 1;
    sub_24F10E9F8(v65, v76, v110);
    v114 = v110[2];
    v115[0] = v111[0];
    *(v115 + 10) = *(v111 + 10);
    v112 = v110[0];
    v113 = v110[1];
    sub_24F9275D8();
    sub_24F9242E8();
    v38 = sub_24F927618();
    v40 = v39;
    v89 = v119;
    v90 = v120;
    v91 = v121;
    v92 = v122;
    v85 = v115[1];
    v86 = v116;
    v87 = v117;
    v88 = v118;
    v81 = v112;
    v82 = v113;
    v83 = v114;
    v84 = v115[0];
    __asm { FMOV            V0.2D, #3.0 }

    v76 = _Q0;
    v93 = _Q0;
    *&v94 = v38;
    *(&v94 + 1) = v39;
    v46 = v36;
    v47 = v64;
    sub_24E6009C8(v46, v64, &qword_27F2195D0, &unk_24F94C4F0);
    v48 = (v47 + *(v67 + 36));
    v49 = v92;
    v48[10] = v91;
    v48[11] = v49;
    v50 = v94;
    v48[12] = v93;
    v48[13] = v50;
    v51 = v88;
    v48[6] = v87;
    v48[7] = v51;
    v52 = v90;
    v48[8] = v89;
    v48[9] = v52;
    v53 = v84;
    v48[2] = v83;
    v48[3] = v53;
    v54 = v86;
    v48[4] = v85;
    v48[5] = v54;
    v55 = v82;
    *v48 = v81;
    v48[1] = v55;
    v103 = v119;
    v104 = v120;
    v105 = v121;
    v106 = v122;
    v99 = v115[1];
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v112;
    v96 = v113;
    v97 = v114;
    v98 = v115[0];
    v107 = v76;
    v108 = v38;
    v109 = v40;
    sub_24E60169C(&v81, &v80, &qword_27F2397B0, &qword_24F9CA858);
    sub_24E601704(&v95, &qword_27F2397B0, &qword_24F9CA858);
    v56 = v66;
    sub_24E6009C8(v47, v66, &qword_27F239790, &qword_24F9CA850);
    sub_24E60169C(v56, v74, &qword_27F239790, &qword_24F9CA850);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397C0, &qword_24F9CA860);
    sub_24F114444();
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &qword_24F9CA860, sub_24F1144FC);
    v57 = v75;
    sub_24F924E28();
    sub_24E60169C(v57, v68, &qword_27F239788, &unk_24F9CA840);
    swift_storeEnumTagMultiPayload();
    sub_24F11438C();
    sub_24F924E28();

    sub_24E601704(v57, &qword_27F239788, &unk_24F9CA840);
    return sub_24E601704(v56, &qword_27F239790, &qword_24F9CA850);
  }

  else if (a2)
  {
    sub_24F10E770(a2, &v95, 20.0);
    v59 = v98;
    v60 = v74;
    *(v74 + 32) = v97;
    *(v60 + 48) = v59;
    *(v60 + 64) = v99;
    v61 = v96;
    *v60 = v95;
    *(v60 + 16) = v61;
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v95, &v81, &qword_27F2397C0, &qword_24F9CA860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397C0, &qword_24F9CA860);
    sub_24F114444();
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &qword_24F9CA860, sub_24F1144FC);
    v62 = v75;
    sub_24F924E28();
    sub_24E60169C(v62, v7, &qword_27F239788, &unk_24F9CA840);
    swift_storeEnumTagMultiPayload();
    sub_24F11438C();
    sub_24F924E28();
    sub_24E601704(&v95, &qword_27F2397C0, &qword_24F9CA860);
    return sub_24E601704(v62, &qword_27F239788, &unk_24F9CA840);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    *v7 = sub_24F926DD8();
    swift_storeEnumTagMultiPayload();
    sub_24F11438C();
    return sub_24F924E28();
  }
}

uint64_t sub_24F10F840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239770, &qword_24F9CA828);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = sub_24F924258();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24F114DA0(&qword_27F226F48, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    return sub_24F924E28();
  }

  else
  {
    v9 = *(v5 + 20);
    v10 = *MEMORY[0x277CE0118];
    v11 = sub_24F924B38();
    (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
    __asm { FMOV            V0.2D, #14.0 }

    *v7 = _Q0;
    sub_24E6EB910(v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_24F114DA0(&qword_27F226F48, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_24F924E28();
    return sub_24E6EB974(v7);
  }
}

uint64_t sub_24F10FA60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_24F10EE1C(*v1, *(v1 + 8), *(v1 + 16), a1);
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  v4 = *&qword_27F39D310 + -10.0 + -10.0;
  v5 = sub_24F927618();
  v7 = v6;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239750, &qword_24F9CA808) + 36);
  *v8 = v4;
  *(v8 + 8) = 0;
  *(v8 + 16) = v4;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239758, &qword_24F9CA810) + 36);
  sub_24F10F840(v3);
  v10 = sub_24F927618();
  v12 = v11;
  v13 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239760, &qword_24F9CA818) + 36));
  *v13 = v10;
  v13[1] = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239768, &qword_24F9CA820);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_24F10FBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239A28, &qword_24FA338D0);
  v21 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236350, &qword_24F939870);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22DF30, &qword_24F958D50);
  sub_24F924038();
  v20 = *(a1 + 24);
  v4 = MEMORY[0x277CE0868];
  v33 = v20;
  v34 = sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
  WitnessTable = swift_getWitnessTable();
  v32 = sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, v4);
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340, &qword_24F939830);
  v5 = sub_24F924038();
  v29 = sub_24F115A14();
  v30 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
  v6 = swift_getWitnessTable();
  v8 = type metadata accessor for TransparentButton(0, v5, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  v15 = *v2;
  v16 = v2[1];
  v24 = v21;
  v25 = v20;
  v26 = v2;

  TransparentButton.init(action:label:)(v15, v16, sub_24F115ACC, v5, v6, v11, v23);
  swift_getWitnessTable();
  sub_24E7896B8();
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_24E7896B8();
  return v17(v14, v8);
}

uint64_t sub_24F10FF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v50 = a1;
  v51 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236350, &qword_24F939870);
  v5 = sub_24F924038();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = v34 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22DF30, &qword_24F958D50);
  v35 = v5;
  v7 = sub_24F924038();
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = v34 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239A28, &qword_24FA338D0);
  v9 = MEMORY[0x277CE0868];
  v10 = sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
  v60 = a3;
  v61 = v10;
  v46 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v34[1] = WitnessTable;
  v12 = sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, v9);
  v58 = WitnessTable;
  v59 = v12;
  v38 = v7;
  v39 = swift_getWitnessTable();
  v41 = sub_24F9242F8();
  v13 = sub_24F924038();
  v45 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v34[0] = v34 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340, &qword_24F939830);
  v15 = sub_24F924038();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v37 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v42 = v34 - v18;
  v19 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  *&v57[38] = v64;
  *&v57[22] = v63;
  *&v57[6] = v62;
  *(v56 + 10) = *v57;
  *&v56[0] = v19;
  WORD4(v56[0]) = 256;
  *(&v56[1] + 10) = *&v57[16];
  *(&v56[2] + 10) = *&v57[32];
  *(&v56[3] + 1) = *(&v64 + 1);
  type metadata accessor for MediaButton(0, v43, a3, v20);
  v21 = v44;
  sub_24F9268C8();
  v22 = v40;
  v23 = v35;
  sub_24F9260D8();
  (*(v48 + 8))(v21, v23);
  sub_24F927618();
  v24 = sub_24F115A14();
  v25 = v34[0];
  v26 = v38;
  sub_24F926A18();
  (*(v49 + 8))(v22, v26);
  v65[0] = v56[0];
  v65[1] = v56[1];
  v65[2] = v56[2];
  v65[3] = v56[3];
  sub_24E601704(v65, &qword_27F239A28, &qword_24FA338D0);
  v27 = swift_getWitnessTable();
  v54 = v24;
  v55 = v27;
  v28 = swift_getWitnessTable();
  sub_24F115AD8();
  v29 = v37;
  sub_24F926268();
  (*(v45 + 8))(v25, v13);
  v30 = sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
  v52 = v28;
  v53 = v30;
  swift_getWitnessTable();
  v31 = v42;
  sub_24E7896B8();
  v32 = *(v47 + 8);
  v32(v29, v15);
  sub_24E7896B8();
  return (v32)(v31, v15);
}

uint64_t sub_24F110588@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239838, &qword_24F9CA9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239840, &qword_24F9CA9F8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0x3FF0000000000000;
  v6[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239848, &qword_24F9CAA00);
  sub_24F1107D8(0, v2, &v6[*(v10 + 44)]);
  v11 = sub_24F925838();
  v12 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v11)
  {
    v12 = sub_24F925848();
  }

  sub_24F923318();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24E6009C8(v6, v9, &qword_27F239838, &qword_24F9CA9F0);
  v21 = &v9[*(v7 + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  KeyPath = swift_getKeyPath();
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239850, &unk_24F9CAA08) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0, &qword_24F973530) + 28);
  v25 = *MEMORY[0x277CDFA88];
  v26 = sub_24F923F78();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = KeyPath;
  return sub_24E6009C8(v9, a1, &qword_27F239840, &qword_24F9CA9F8);
}

uint64_t sub_24F1107D8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v267 = a1;
  v260 = a3;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239858, &qword_24F9CAA18);
  MEMORY[0x28223BE20](v238);
  v5 = (&v235 - v4);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239860, &qword_24F9CAA20);
  MEMORY[0x28223BE20](v237);
  v239 = &v235 - v6;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239868, &qword_24F9CAA28);
  MEMORY[0x28223BE20](v266);
  v240 = &v235 - v7;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239870, &qword_24F9CAA30);
  MEMORY[0x28223BE20](v264);
  v265 = &v235 - v8;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239878, &qword_24F9CAA38);
  MEMORY[0x28223BE20](v271);
  v261 = &v235 - v9;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239880, &qword_24F9CAA40);
  MEMORY[0x28223BE20](v270);
  v11 = (&v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v235 - v13);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239888, &qword_24F9CAA48);
  MEMORY[0x28223BE20](v272);
  v259 = &v235 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v244 = &v235 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v235 - v19;
  MEMORY[0x28223BE20](v21);
  v269 = &v235 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v235 - v24;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239890, &qword_24F9CAA50);
  MEMORY[0x28223BE20](v263);
  v243 = &v235 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v245 = &v235 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v235 - v30;
  MEMORY[0x28223BE20](v32);
  v252 = &v235 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239898, &qword_24F9CAA58);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v258 = &v235 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v235 - v38;
  MEMORY[0x28223BE20](v40);
  v253 = &v235 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398A0, &qword_24F9CAA60);
  MEMORY[0x28223BE20](v42 - 8);
  v257 = &v235 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  __asm { FMOV            V0.2D, #8.0 }

  v273 = _Q0;
  v262 = &v235 - v50;
  v268 = a2;
  v256 = v39;
  v236 = v5;
  v242 = v14;
  v255 = v11;
  v254 = v20;
  if (v267)
  {
    v250 = v35;
    v251 = v34;
    v51 = *(a2 + 8);
    v52 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
    swift_beginAccess();
    v53 = *(v51 + v52);
    if (*(v53 + 16) && (v54 = sub_24E7728EC(), (v55 & 1) != 0))
    {
      v56 = (*(v53 + 56) + (v54 << 6));
      v58 = v56[2];
      v57 = v56[3];
      v59 = v56[1];
      v279 = *v56;
      v280 = v59;
      v281 = v58;
      v282 = v57;
      swift_endAccess();
      v60 = v279;
      sub_24E8B96C4(&v279, &v275);

      v61 = sub_24F925988();
      v62 = v237;
      v63 = *(v237 + 40);
      v64 = *MEMORY[0x277CE1058];
      v65 = sub_24F926E78();
      v66 = v239;
      (*(*(v65 - 8) + 104))(&v239[v63], v64, v65);
      *v66 = v60;
      sub_24F112674(&v279, v268, v66 + *(v62 + 44), xmmword_24F9CA3E0);
      *(v66 + 16) = v61;
      v67 = *(sub_24F924258() + 20);
      v68 = *MEMORY[0x277CE0118];
      v69 = sub_24F924B38();
      v70 = *(*(v69 - 8) + 104);
      v267 = v68;
      v70(v5 + v67, v68, v69);
      *v5 = v273;
      *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398A8, &qword_24F9CAA68) + 36)) = vdupq_n_s64(0x4046000000000000uLL);
      _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      v71 = sub_24F926D08();

      *(v5 + *(v238 + 52)) = v71;
      v72 = v240;
      sub_24E60169C(v5, v240, &qword_27F239858, &qword_24F9CAA18);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398F0, &unk_24F9CAAE8);
      sub_24E60169C(v66, v72 + v73[9], &qword_27F239860, &qword_24F9CAA20);
      v74 = v72 + v73[10];
      *v74 = sub_24F923398() & 1;
      *(v74 + 8) = v75;
      *(v74 + 16) = v76 & 1;
      v77 = v72 + v73[11];
      *v77 = swift_getKeyPath();
      *(v77 + 8) = 0;
      if (qword_27F211808 != -1)
      {
        swift_once();
      }

      v78 = qword_27F24E488;
      v79 = sub_24F923398();
      v81 = v80;
      v83 = v82;
      v84 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398E0, &qword_24F9CAAE0) + 36);
      *v84 = v78;
      *(v84 + 8) = v79 & 1;
      *(v84 + 16) = v81;
      *(v84 + 24) = v83 & 1;
      LOBYTE(v78) = sub_24F923398();
      v86 = v85;
      LOBYTE(v81) = v87;
      sub_24E601704(v5, &qword_27F239858, &qword_24F9CAA18);
      sub_24E601704(v66, &qword_27F239860, &qword_24F9CAA20);
      v88 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398D0, &qword_24F9CAAD8) + 36);
      *v88 = v78 & 1;
      *(v88 + 8) = v86;
      *(v88 + 16) = v81 & 1;
      LOBYTE(v86) = v280;
      KeyPath = swift_getKeyPath();
      v90 = swift_allocObject();
      *(v90 + 16) = v86;
      v91 = (v72 + *(v266 + 36));
      *v91 = KeyPath;
      v91[1] = sub_24E602370;
      v91[2] = v90;
      v92 = v72;
      sub_24E60169C(v72, v265, &qword_27F239868, &qword_24F9CAA28);
      swift_storeEnumTagMultiPayload();
      sub_24F114804();
      sub_24F114A00();
      v93 = v253;
      sub_24F924E28();
      sub_24F114BFC(&v279);
      sub_24E601704(v92, &qword_27F239868, &qword_24F9CAA28);
      v94 = v262;
      a2 = v268;
      v95 = v251;
    }

    else
    {
      swift_endAccess();

      v97 = sub_24F925988();
      v98 = *(v270 + 40);
      v99 = *MEMORY[0x277CE1058];
      v100 = sub_24F926E78();
      (*(*(v100 - 8) + 104))(v14 + v98, v99, v100);
      *v14 = sub_24F114C70;
      v14[1] = v51;
      sub_24F112960(v268, &qword_27F210ED0, &qword_27F2396A0, sub_24F10E684, xmmword_24F9CA3E0);
      v14[2] = v97;
      v101 = *(sub_24F924258() + 20);
      v102 = *MEMORY[0x277CE0118];
      v103 = sub_24F924B38();
      v104 = *(*(v103 - 8) + 104);
      v105 = v261;
      v267 = v102;
      v104(&v261[v101], v102, v103);
      *v105 = v273;
      *(v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398A8, &qword_24F9CAA68) + 36)) = vdupq_n_s64(0x4046000000000000uLL);
      _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      v106 = sub_24F926D08();

      *(v105 + *(v271 + 52)) = v106;
      sub_24E60169C(v105, v25, &qword_27F239878, &qword_24F9CAA38);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398B0, &qword_24F9CAA70);
      sub_24E60169C(v14, &v25[v107[9]], &qword_27F239880, &qword_24F9CAA40);
      v108 = &v25[v107[10]];
      *v108 = sub_24F923398() & 1;
      *(v108 + 1) = v109;
      v108[16] = v110 & 1;
      v111 = &v25[v107[11]];
      *v111 = swift_getKeyPath();
      v111[8] = 0;
      if (qword_27F211808 != -1)
      {
        swift_once();
      }

      v112 = qword_27F24E488;
      v113 = sub_24F923398();
      v115 = v114;
      v117 = v116;
      v118 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398B8, &qword_24F9CAAA0) + 36)];
      *v118 = v112;
      v118[8] = v113 & 1;
      *(v118 + 2) = v115;
      v118[24] = v117 & 1;
      LOBYTE(v112) = sub_24F923398();
      v120 = v119;
      LOBYTE(v115) = v121;
      sub_24E601704(v105, &qword_27F239878, &qword_24F9CAA38);
      sub_24E601704(v14, &qword_27F239880, &qword_24F9CAA40);
      v122 = &v25[*(v272 + 36)];
      *v122 = v112 & 1;
      *(v122 + 1) = v120;
      v122[16] = v115 & 1;
      v93 = v253;
      if (*(v51 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath))
      {
        v95 = v251;
        if (*(v51 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier + 8))
        {
          swift_beginAccess();
          v124 = sub_24F4D95E8(v123) ^ 1;
        }

        else
        {
          v124 = 1;
        }
      }

      else
      {
        v124 = 1;
        v95 = v251;
      }

      v125 = swift_getKeyPath();
      v126 = swift_allocObject();
      *(v126 + 16) = v124 & 1;
      sub_24E6009C8(v25, v31, &qword_27F239888, &qword_24F9CAA48);
      v127 = &v31[*(v263 + 36)];
      *v127 = v125;
      v127[1] = sub_24E602370;
      v127[2] = v126;
      v128 = v252;
      sub_24E6009C8(v31, v252, &qword_27F239890, &qword_24F9CAA50);
      sub_24E60169C(v128, v265, &qword_27F239890, &qword_24F9CAA50);
      swift_storeEnumTagMultiPayload();
      sub_24F114804();
      sub_24F114A00();
      sub_24F924E28();
      sub_24E601704(v128, &qword_27F239890, &qword_24F9CAA50);
      v94 = v262;
      a2 = v268;
    }

    sub_24E6009C8(v93, v94, &qword_27F239898, &qword_24F9CAA58);
    v250[7](v94, 0, 1, v95);
    v96 = v267;
  }

  else
  {
    (*(v35 + 56))();
    v96 = *MEMORY[0x277CE0118];
  }

  v129 = *(a2 + 8);
  v130 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  if (*(v129 + v130))
  {
    v131 = sub_24F114C50;
  }

  else
  {
    v131 = sub_24F1147A4;
  }

  v132 = sub_24F925988();
  v133 = *(v270 + 40);
  v134 = *MEMORY[0x277CE1048];
  v135 = sub_24F926E78();
  v136 = *(v135 - 8);
  v137 = v255;
  v247 = *(v136 + 104);
  v246 = v136 + 104;
  v247(v255 + v133, v134, v135);
  *v137 = v131;
  v137[1] = v129;
  sub_24F1123F8(a2);
  v137[2] = v132;
  v251 = sub_24F924258();
  v138 = *(v251 + 20);
  v139 = sub_24F924B38();
  v140 = *(v139 - 8);
  v141 = *(v140 + 104);
  v142 = v261;
  v267 = v96;
  v252 = v139;
  v250 = v141;
  v249 = v140 + 104;
  (v141)(&v261[v138], v96);
  *v142 = v273;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398A8, &qword_24F9CAA68);
  *(v142 + *(v248 + 36)) = vdupq_n_s64(0x4046000000000000uLL);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v143 = sub_24F926D08();

  *(v142 + *(v271 + 52)) = v143;
  v144 = v254;
  sub_24E60169C(v142, v254, &qword_27F239878, &qword_24F9CAA38);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398B0, &qword_24F9CAA70);
  sub_24E60169C(v137, v144 + v145[9], &qword_27F239880, &qword_24F9CAA40);
  v146 = v144 + v145[10];
  *v146 = sub_24F923398() & 1;
  *(v146 + 8) = v147;
  *(v146 + 16) = v148 & 1;
  v149 = v144 + v145[11];
  *v149 = swift_getKeyPath();
  *(v149 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v150 = qword_27F24E488;
  v151 = sub_24F923398();
  v153 = v152;
  v155 = v154;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398B8, &qword_24F9CAAA0);
  v156 = v144 + *(v241 + 36);
  v253 = v150;
  *v156 = v150;
  *(v156 + 8) = v151 & 1;
  *(v156 + 16) = v153;
  *(v156 + 24) = v155 & 1;
  v157 = sub_24F923398();
  v159 = v158;
  v161 = v160;
  sub_24E601704(v142, &qword_27F239878, &qword_24F9CAA38);
  sub_24E601704(v137, &qword_27F239880, &qword_24F9CAA40);
  v162 = v144 + *(v272 + 36);
  *v162 = v157 & 1;
  *(v162 + 8) = v159;
  *(v162 + 16) = v161 & 1;
  sub_24E6009C8(v144, v269, &qword_27F239888, &qword_24F9CAA48);
  v163 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
  swift_beginAccess();
  v164 = *(v129 + v163);
  if (*(v164 + 16) && (v165 = sub_24E7728EC(), (v166 & 1) != 0))
  {
    v167 = (*(v164 + 56) + (v165 << 6));
    v169 = v167[2];
    v168 = v167[3];
    v170 = *v167;
    v276 = v167[1];
    v277 = v169;
    v275 = v170;
    v278 = v168;
    swift_endAccess();
    v171 = *(&v275 + 1);
    v172 = v275;
    sub_24E8B96C4(&v275, v274);

    v173 = sub_24F925988();
    v174 = v237;
    v175 = v239;
    v247(&v239[*(v237 + 40)], *MEMORY[0x277CE1058], v135);
    *v175 = v172;
    v175[1] = v171;
    sub_24F112674(&v275, v268, v175 + *(v174 + 44), xmmword_24F9CA3F0);
    v175[2] = v173;
    v176 = v236;
    (v250)(v236 + *(v251 + 20), v267, v252);
    *v176 = v273;
    *(v176 + *(v248 + 36)) = vdupq_n_s64(0x4046000000000000uLL);
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v177 = sub_24F926D08();

    *(v176 + *(v238 + 52)) = v177;
    v178 = v240;
    sub_24E60169C(v176, v240, &qword_27F239858, &qword_24F9CAA18);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398F0, &unk_24F9CAAE8);
    sub_24E60169C(v175, v178 + v179[9], &qword_27F239860, &qword_24F9CAA20);
    v180 = v178 + v179[10];
    *v180 = sub_24F923398() & 1;
    *(v180 + 8) = v181;
    *(v180 + 16) = v182 & 1;
    v183 = v178 + v179[11];
    *v183 = swift_getKeyPath();
    *(v183 + 8) = 0;
    v184 = v253;
    LOBYTE(v180) = sub_24F923398();
    v186 = v185;
    v188 = v187;
    v189 = v178 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398E0, &qword_24F9CAAE0) + 36);
    *v189 = v184;
    *(v189 + 8) = v180 & 1;
    *(v189 + 16) = v186;
    *(v189 + 24) = v188 & 1;
    LOBYTE(v184) = sub_24F923398();
    v191 = v190;
    LOBYTE(v186) = v192;
    sub_24E601704(v176, &qword_27F239858, &qword_24F9CAA18);
    sub_24E601704(v175, &qword_27F239860, &qword_24F9CAA20);
    v193 = v178 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398D0, &qword_24F9CAAD8) + 36);
    *v193 = v184 & 1;
    *(v193 + 8) = v191;
    *(v193 + 16) = v186 & 1;
    LOBYTE(v177) = v276;
    v194 = swift_getKeyPath();
    v195 = swift_allocObject();
    *(v195 + 16) = v177;
    v196 = (v178 + *(v266 + 36));
    *v196 = v194;
    v196[1] = sub_24E602370;
    v196[2] = v195;
    v197 = &qword_27F239868;
    v198 = &qword_24F9CAA28;
    sub_24E60169C(v178, v265, &qword_27F239868, &qword_24F9CAA28);
    swift_storeEnumTagMultiPayload();
    sub_24F114804();
    sub_24F114A00();
    v199 = v256;
    sub_24F924E28();
    sub_24F114BFC(&v275);
    v200 = v178;
  }

  else
  {
    swift_endAccess();

    v201 = sub_24F925988();
    v202 = v242;
    v247(v242 + *(v270 + 40), *MEMORY[0x277CE1058], v135);
    *v202 = sub_24F1147CC;
    v202[1] = v129;
    sub_24F112960(v268, &qword_27F210ED8, &qword_27F2396A8, sub_24F10E6C4, xmmword_24F9CA3F0);
    v202[2] = v201;
    (v250)(v142 + *(v251 + 20), v267, v252);
    *v142 = v273;
    *(v142 + *(v248 + 36)) = vdupq_n_s64(0x4046000000000000uLL);
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v203 = sub_24F926D08();

    *(v142 + *(v271 + 52)) = v203;
    v204 = v244;
    sub_24E60169C(v142, v244, &qword_27F239878, &qword_24F9CAA38);
    sub_24E60169C(v202, v204 + v145[9], &qword_27F239880, &qword_24F9CAA40);
    v205 = v204 + v145[10];
    *v205 = sub_24F923398() & 1;
    *(v205 + 8) = v206;
    *(v205 + 16) = v207 & 1;
    v208 = v204 + v145[11];
    *v208 = swift_getKeyPath();
    *(v208 + 8) = 0;
    v209 = v253;
    v210 = sub_24F923398();
    v211 = v204 + *(v241 + 36);
    *v211 = v209;
    *(v211 + 8) = v210 & 1;
    *(v211 + 16) = v212;
    *(v211 + 24) = v213 & 1;
    LOBYTE(v209) = sub_24F923398();
    v215 = v214;
    v217 = v216;
    sub_24E601704(v142, &qword_27F239878, &qword_24F9CAA38);
    sub_24E601704(v202, &qword_27F239880, &qword_24F9CAA40);
    v218 = v204 + *(v272 + 36);
    *v218 = v209 & 1;
    *(v218 + 8) = v215;
    *(v218 + 16) = v217 & 1;
    if (*(v129 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath))
    {
      v199 = v256;
      if (*(v129 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier + 8))
      {
        swift_beginAccess();
        v220 = sub_24F4D95E8(v219) ^ 1;
      }

      else
      {
        v220 = 1;
      }
    }

    else
    {
      v220 = 1;
      v199 = v256;
    }

    v221 = swift_getKeyPath();
    v222 = swift_allocObject();
    *(v222 + 16) = v220 & 1;
    v223 = v243;
    sub_24E6009C8(v204, v243, &qword_27F239888, &qword_24F9CAA48);
    v224 = (v223 + *(v263 + 36));
    *v224 = v221;
    v224[1] = sub_24E600A48;
    v224[2] = v222;
    v197 = &qword_27F239890;
    v198 = &qword_24F9CAA50;
    v225 = v245;
    sub_24E6009C8(v223, v245, &qword_27F239890, &qword_24F9CAA50);
    sub_24E60169C(v225, v265, &qword_27F239890, &qword_24F9CAA50);
    swift_storeEnumTagMultiPayload();
    sub_24F114804();
    sub_24F114A00();
    sub_24F924E28();
    v200 = v225;
  }

  sub_24E601704(v200, v197, v198);
  v226 = v262;
  v227 = v257;
  sub_24E60169C(v262, v257, &qword_27F2398A0, &qword_24F9CAA60);
  v228 = v269;
  v229 = v259;
  sub_24E60169C(v269, v259, &qword_27F239888, &qword_24F9CAA48);
  v230 = v258;
  sub_24E60169C(v199, v258, &qword_27F239898, &qword_24F9CAA58);
  v231 = v199;
  v232 = v260;
  sub_24E60169C(v227, v260, &qword_27F2398A0, &qword_24F9CAA60);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239918, &qword_24F9CAAF8);
  sub_24E60169C(v229, v232 + *(v233 + 48), &qword_27F239888, &qword_24F9CAA48);
  sub_24E60169C(v230, v232 + *(v233 + 64), &qword_27F239898, &qword_24F9CAA58);
  sub_24E601704(v231, &qword_27F239898, &qword_24F9CAA58);
  sub_24E601704(v228, &qword_27F239888, &qword_24F9CAA48);
  sub_24E601704(v226, &qword_27F2398A0, &qword_24F9CAA60);
  sub_24E601704(v230, &qword_27F239898, &qword_24F9CAA58);
  sub_24E601704(v229, &qword_27F239888, &qword_24F9CAA48);
  return sub_24E601704(v227, &qword_27F2398A0, &qword_24F9CAA60);
}

uint64_t sub_24F1123F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F239938, &qword_24F9CAB10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - v4;
  v6 = *(a1 + 8);
  v7 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    if (qword_27F210EE0 != -1)
    {
      swift_once();
    }

    v8 = qword_27F2396B0;
  }

  else
  {
    if (qword_27F210EE8 != -1)
    {
      swift_once();
    }

    v8 = qword_27F2396B8;
  }

  *&v16 = v8;
  v9 = MEMORY[0x277CE1088];
  v10 = MEMORY[0x277CE1078];
  sub_24F926B78();
  v11 = *(a1 + 32);
  v16 = *(a1 + 16);
  v17 = v11;
  v18 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8, &qword_24F9B9A60);
  sub_24F923348();
  v16 = v14;
  v17 = v15;
  v14 = xmmword_24F9CA400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v13[0] = v9;
  v13[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  sub_24F9269B8();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F112674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v16 = a4;
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239920, &qword_24F9CAB00);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239928, &qword_24F9CAB08);
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - v10;
  v26 = *(a1 + 24);
  v23.n128_u64[0] = v26;

  sub_24F926528();
  sub_24F114C90(&v26);
  v12 = sub_24F114CE4();
  sub_24F926B78();
  sub_24E601704(v8, &qword_27F239920, &qword_24F9CAB00);
  v13 = *(a2 + 32);
  v23 = *(a2 + 16);
  v24 = v13;
  v25 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8, &qword_24F9B9A60);
  sub_24F923348();
  v23 = v21;
  v24 = v22;
  v21 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v19 = v6;
  v20 = v12;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  v14 = v17;
  sub_24F9269B8();

  return (*(v9 + 8))(v11, v14);
}

uint64_t sub_24F112904(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  sub_24EDAD590(&v4, v2);
}

uint64_t sub_24F112960(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  v16 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F239938, &qword_24F9CAB10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if (*a2 != -1)
  {
    swift_once();
  }

  v21.n128_u64[0] = *a3;
  v12 = MEMORY[0x277CE1088];
  v13 = MEMORY[0x277CE1078];
  sub_24F926B78();
  v14 = *(a1 + 32);
  v21 = *(a1 + 16);
  v22 = v14;
  v23 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8, &qword_24F9B9A60);
  sub_24F923348();
  v21 = v19;
  v22 = v20;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v17 = v12;
  v18 = v13;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  sub_24F9269B8();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24F112BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_24F924C98();
  *(a3 + 24) = xmmword_24F9CA410;
  *(a3 + 40) = 0x403E000000000000;
  v28 = 0;
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8, &qword_24F958530);
  sub_24F926F28();
  v12 = v31;
  v13 = v32;
  *(a3 + 176) = v30;
  *(a3 + 184) = v12;
  *(a3 + 192) = v13;
  v28 = sub_24E6102E8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239808, &qword_24F9CA888);
  sub_24F926F28();
  v14 = v31;
  *(a3 + 200) = v30;
  *(a3 + 208) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239810, &qword_24F9CA890);
  v16 = sub_24F91F648();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_24E60169C(v10, v7, &unk_27F22EC30, &qword_24F939880);
  sub_24F926F28();
  sub_24E601704(v10, &unk_27F22EC30, &qword_24F939880);
  v17 = *(v15 + 72);
  *(a3 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v18 = *(v15 + 76);
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  swift_storeEnumTagMultiPayload();
  *a3 = v11;
  *(a3 + 8) = 0x4008000000000000;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0x4020000000000000;
  sub_24F112F04(a1, a3 + 56);
  KeyPath = swift_getKeyPath();
  v20 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239818, &qword_24F9CA938) + 36);
  *v20 = KeyPath;
  *(v20 + 8) = 1;
  v21 = swift_getKeyPath();
  v22 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239820, &qword_24F9CA940) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239828, &qword_24F9CA948) + 28);
  v24 = *MEMORY[0x277CDD6B8];
  v25 = sub_24F923418();
  result = (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  return result;
}

uint64_t sub_24F112F04@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = (a1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title);
    swift_beginAccess();
    if (v5[1])
    {
      v6 = *v5;
      v7 = v5[1];
    }

    else
    {
      swift_beginAccess();
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
    }

    KeyPath = swift_getKeyPath();
    v37 = swift_getKeyPath();
    v69 = 0;
    v68 = 0;
    v9 = qword_27F210D48;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = qword_27F39D2D8;
    v35 = swift_getKeyPath();
    v11 = (a1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];

    v36 = v10;

    v14 = MEMORY[0x277D84F90];
    v38 = KeyPath;
    v39 = v6;
    if (v13)
    {
      v15 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v34 = v7;
        if (qword_27F210D50 != -1)
        {
          swift_once();
        }

        v16 = sub_24F925C98();
        v18 = v17;
        v20 = v19;

        if (qword_27F210D58 != -1)
        {
          swift_once();
        }

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
        __swift_project_value_buffer(v21, qword_27F39D2E8);
        sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
        v22 = sub_24F925C58();
        v13 = v23;
        v25 = v24;
        v27 = v26;
        sub_24E600B40(v16, v18, v20 & 1);

        v28 = v25 & 1;
        sub_24E5FD138(v22, v13, v25 & 1);

        KeyPath = v38;
        v29 = v39;
        v7 = v34;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }

      v22 = 0;
      v13 = 0;
    }

    else
    {
      v22 = 0;
    }

    v29 = v6;
    v28 = 0;
    v27 = 0;
LABEL_19:
    *&v40 = v29;
    *(&v40 + 1) = v7;
    LOBYTE(v41) = 0;
    *(&v41 + 1) = *v67;
    DWORD1(v41) = *&v67[3];
    *(&v41 + 1) = v14;
    *&v42 = KeyPath;
    *(&v42 + 1) = 2;
    LOBYTE(v43) = 0;
    *(&v43 + 1) = *v66;
    DWORD1(v43) = *&v66[3];
    *(&v43 + 1) = v37;
    LOBYTE(v44) = 0;
    *(&v44 + 1) = *v65;
    DWORD1(v44) = *&v65[3];
    *(&v44 + 1) = v35;
    v45 = v36;
    v46 = v40;
    v47 = v41;
    v51 = v36;
    v49 = v43;
    v50 = v44;
    v48 = v42;
    sub_24E60169C(&v40, v52, &qword_27F239830, &unk_24F9CA9E0);
    sub_24E65D2B4(v22, v13, v28, v27);
    sub_24E65D2F8(v22, v13, v28, v27);
    v30 = v49;
    *(a3 + 32) = v48;
    *(a3 + 48) = v30;
    *(a3 + 64) = v50;
    v31 = v51;
    v32 = v47;
    *a3 = v46;
    *(a3 + 16) = v32;
    *(a3 + 80) = v31;
    *(a3 + 88) = v22;
    *(a3 + 96) = v13;
    *(a3 + 104) = v28;
    *(a3 + 112) = v27;
    sub_24E65D2F8(v22, v13, v28, v27);
    v52[0] = v39;
    v52[1] = v7;
    v53 = 0;
    *v54 = *v67;
    *&v54[3] = *&v67[3];
    v55 = MEMORY[0x277D84F90];
    v56 = v38;
    v57 = 2;
    v58 = 0;
    *v59 = *v66;
    *&v59[3] = *&v66[3];
    v60 = v37;
    v61 = 0;
    *&v62[3] = *&v65[3];
    *v62 = *v65;
    v63 = v35;
    v64 = v36;
    return sub_24E601704(v52, &qword_27F239830, &unk_24F9CA9E0);
  }

  type metadata accessor for MediaPlayer(0);
  sub_24F114DA0(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
  result = sub_24F9243C8();
  __break(1u);
  return result;
}

uint64_t sub_24F113404@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v42 = sub_24F925508();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239700, &qword_24F9CA638);
  MEMORY[0x28223BE20](v41);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239708, &qword_24F9CA640);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v39 - v12;
  v55[0] = *(a1 + 8);
  v13 = *(&v55[0] + 1);
  v14 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
  swift_beginAccess();
  v15 = *(v13 + v14);
  swift_beginAccess();
  v16 = *(v13 + 32);
  sub_24E60169C(v55, &v49, &qword_27F239710, &unk_24F9CA648);
  v17 = v16;
  v18 = v15;
  v19 = sub_24EDAE168();
  if (!v19)
  {
    if (*a1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 3;
    }
  }

  *&v49 = v15;
  *(&v49 + 1) = v16;
  LOBYTE(v50) = v19;
  v53 = *(a1 + 24);
  v54 = *(a1 + 32);
  v20 = swift_allocObject();
  v21 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a1 + 32);
  sub_24E60169C(v55, v52, &qword_27F239710, &unk_24F9CA648);
  sub_24E60169C(&v53, v52, &qword_27F223A10, &qword_24F9B2BF0);
  sub_24F11401C();
  v22 = v48;
  sub_24F9262B8();

  type metadata accessor for MediaPlayer(0);
  sub_24F114DA0(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
  *&v49 = sub_24F9243D8();
  *(&v49 + 1) = v23;
  sub_24F9254E8();
  sub_24F114070();
  v24 = v44;
  sub_24F926678();
  (*(v3 + 8))(v5, v42);

  *(v24 + *(v41 + 36)) = 0;
  v42 = sub_24F923C28();
  v41 = v25;
  sub_24F9233A8();
  v26 = v51;
  v40 = v49;
  v39 = v50;
  v27 = v43;
  v28 = *(v43 + 16);
  v29 = v45;
  v28(v45, v22, v9);
  v30 = v47;
  sub_24E60169C(v24, v47, &qword_27F239700, &qword_24F9CA638);
  v31 = v9;
  v32 = v46;
  v28(v46, v29, v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239728, &qword_24F9CA658);
  sub_24E60169C(v30, &v32[*(v33 + 48)], &qword_27F239700, &qword_24F9CA638);
  v34 = &v32[*(v33 + 64)];
  v35 = v41;
  *v34 = v42;
  *(v34 + 1) = v35;
  v36 = v39;
  *(v34 + 1) = v40;
  *(v34 + 2) = v36;
  *(v34 + 6) = v26;

  sub_24E601704(v24, &qword_27F239700, &qword_24F9CA638);
  v37 = *(v27 + 8);
  v37(v48, v31);

  sub_24E601704(v30, &qword_27F239700, &qword_24F9CA638);
  return (v37)(v29, v31);
}

uint64_t sub_24F1139EC@<X0>(_WORD *a1@<X8>)
{
  v3 = v1[1];
  v11 = *v1;
  v12 = v3;
  v13 = *(v1 + 32);
  *a1 = 256;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2396E0, &qword_24F9CA618) + 40);
  *v4 = sub_24F924C88();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2396E8, &qword_24F9CA620) + 44)];
  *v5 = sub_24F9249A8();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2396F0, &qword_24F9CA628);
  sub_24F113404(&v11, &v5[*(v6 + 44)]);
  v7 = v12;
  type metadata accessor for MediaPlayer(0);
  sub_24F114DA0(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
  v8 = sub_24F922F98();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2396F8, &qword_24F9CA630) + 36));
  *v9 = v8;
  v9[1] = v7;
}

double sub_24F113B34@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying;
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying))
  {
    v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying);
  }

  else
  {
    if (qword_27F2106F0 != -1)
    {
      swift_once();
    }

    v5 = qword_27F39C840;
  }

  if (*(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath) && *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier + 8))
  {

    if (!*(a1 + v4))
    {
      if (qword_27F2106F0 != -1)
      {
        swift_once();
      }
    }

    type metadata accessor for MediaPlayer(0);
    sub_24F114DA0(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);

    sub_24F923C28();
    swift_getKeyPath();
  }

  else
  {
  }

  sub_24F113D3C();
  sub_24F924E28();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 33) = v10;
  return result;
}

unint64_t sub_24F113D3C()
{
  result = qword_27F2396C0;
  if (!qword_27F2396C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2396C0);
  }

  return result;
}

uint64_t sub_24F113D90@<X0>(_BYTE *a1@<X8>)
{
  sub_24F113E2C();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

unint64_t sub_24F113E2C()
{
  result = qword_27F2396C8;
  if (!qword_27F2396C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2396C8);
  }

  return result;
}

uint64_t sub_24F113E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F113ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F113F30()
{
  result = qword_27F2396D0;
  if (!qword_27F2396D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2396D8, &qword_24F9CA588);
    sub_24F113D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2396D0);
  }

  return result;
}

uint64_t sub_24F113FD8()
{

  sub_24E62A5EC(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_24F11401C()
{
  result = qword_27F239718;
  if (!qword_27F239718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239718);
  }

  return result;
}

unint64_t sub_24F114070()
{
  result = qword_27F239720;
  if (!qword_27F239720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239720);
  }

  return result;
}

uint64_t sub_24F1140D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24F114130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24F114190(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24F1141EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24F114254()
{
  result = qword_27F239730;
  if (!qword_27F239730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2396F8, &qword_24F9CA630);
    sub_24E602068(&qword_27F239738, &qword_27F2396E0, &qword_24F9CA618, &unk_24F99F820);
    sub_24E602068(&qword_27F239740, &qword_27F239748, qword_24F9CA710, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239730);
  }

  return result;
}

unint64_t sub_24F11438C()
{
  result = qword_27F239798;
  if (!qword_27F239798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239788, &unk_24F9CA840);
    sub_24F114444();
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &qword_24F9CA860, sub_24F1144FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239798);
  }

  return result;
}

unint64_t sub_24F114444()
{
  result = qword_27F2397A0;
  if (!qword_27F2397A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239790, &qword_24F9CA850);
    sub_24E704A58();
    sub_24E602068(&qword_27F2397A8, &qword_27F2397B0, &qword_24F9CA858, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2397A0);
  }

  return result;
}

unint64_t sub_24F1144FC()
{
  result = qword_27F2397C8;
  if (!qword_27F2397C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2397D0, &qword_24F9CA868);
    sub_24E6E97A8();
    sub_24E60444C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2397C8);
  }

  return result;
}

unint64_t sub_24F114588()
{
  result = qword_27F2397E0;
  if (!qword_27F2397E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2397D8, &qword_24F9CA870);
    sub_24F11466C(&qword_27F2397E8, &qword_27F2397F0, &qword_24F9CA878, sub_24F1146E8);
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &qword_24F9CA860, sub_24F1144FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2397E0);
  }

  return result;
}

uint64_t sub_24F11466C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F1146E8()
{
  result = qword_27F2397F8;
  if (!qword_27F2397F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239800, &qword_24F9CA880);
    sub_24E60444C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2397F8);
  }

  return result;
}

unint64_t sub_24F114804()
{
  result = qword_27F2398C0;
  if (!qword_27F2398C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239868, &qword_24F9CAA28);
    sub_24F1148BC();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2398C0);
  }

  return result;
}

unint64_t sub_24F1148BC()
{
  result = qword_27F2398C8;
  if (!qword_27F2398C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2398D0, &qword_24F9CAAD8);
    sub_24F114948();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2398C8);
  }

  return result;
}

unint64_t sub_24F114948()
{
  result = qword_27F2398D8;
  if (!qword_27F2398D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2398E0, &qword_24F9CAAE0);
    sub_24E602068(&qword_27F2398E8, &qword_27F2398F0, &unk_24F9CAAE8, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2398D8);
  }

  return result;
}

unint64_t sub_24F114A00()
{
  result = qword_27F2398F8;
  if (!qword_27F2398F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239890, &qword_24F9CAA50);
    sub_24F114AB8();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2398F8);
  }

  return result;
}

unint64_t sub_24F114AB8()
{
  result = qword_27F239900;
  if (!qword_27F239900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239888, &qword_24F9CAA48);
    sub_24F114B44();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239900);
  }

  return result;
}

unint64_t sub_24F114B44()
{
  result = qword_27F239908;
  if (!qword_27F239908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2398B8, &qword_24F9CAAA0);
    sub_24E602068(&qword_27F239910, &qword_27F2398B0, &qword_24F9CAA70, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239908);
  }

  return result;
}

unint64_t sub_24F114CE4()
{
  result = qword_27F239930;
  if (!qword_27F239930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239920, &qword_24F9CAB00);
    sub_24F114DA0(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239930);
  }

  return result;
}

uint64_t sub_24F114DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F114DE8(uint64_t a1)
{
  result = sub_24E6C5550();
  if (v2 <= 0x3F)
  {
    result = sub_24F926E78();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24F114E90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24F926E78() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 24) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v11 + ((v10 + 24) & ~v10) + v12) & ~v12) + *(v8 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_24F115120(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24F926E78() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 24) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

unint64_t sub_24F115460()
{
  result = qword_27F2399C0;
  if (!qword_27F2399C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239768, &qword_24F9CA820);
    sub_24F1154EC();
    sub_24E7EB6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399C0);
  }

  return result;
}

unint64_t sub_24F1154EC()
{
  result = qword_27F2399C8;
  if (!qword_27F2399C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239758, &qword_24F9CA810);
    sub_24F1155A4();
    sub_24E602068(&qword_27F2399E8, &qword_27F239760, &qword_24F9CA818, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399C8);
  }

  return result;
}

unint64_t sub_24F1155A4()
{
  result = qword_27F2399D0;
  if (!qword_27F2399D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239750, &qword_24F9CA808);
    sub_24F115630();
    sub_24E60444C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399D0);
  }

  return result;
}

unint64_t sub_24F115630()
{
  result = qword_27F2399D8;
  if (!qword_27F2399D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2399E0, qword_24F9CAB38);
    sub_24F11438C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399D8);
  }

  return result;
}

unint64_t sub_24F1156C0()
{
  result = qword_27F2399F0;
  if (!qword_27F2399F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239820, &qword_24F9CA940);
    sub_24F115778();
    sub_24E602068(&qword_27F239A08, &qword_27F239828, &qword_24F9CA948, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399F0);
  }

  return result;
}

unint64_t sub_24F115778()
{
  result = qword_27F2399F8;
  if (!qword_27F2399F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239818, &qword_24F9CA938);
    sub_24E602068(&qword_27F239A00, &qword_27F239810, &qword_24F9CA890, &protocol conformance descriptor for Marquee<A>);
    sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399F8);
  }

  return result;
}

unint64_t sub_24F115860()
{
  result = qword_27F239A10;
  if (!qword_27F239A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239850, &unk_24F9CAA08);
    sub_24F115918();
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0, &qword_24F973530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239A10);
  }

  return result;
}

unint64_t sub_24F115918()
{
  result = qword_27F239A18;
  if (!qword_27F239A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239840, &qword_24F9CA9F8);
    sub_24E602068(&qword_27F239A20, &qword_27F239838, &qword_24F9CA9F0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239A18);
  }

  return result;
}

unint64_t sub_24F115A14()
{
  result = qword_27F239A30;
  if (!qword_27F239A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239A28, &qword_24FA338D0);
    sub_24E602068(&qword_27F239A38, &qword_27F239A40, &qword_24FA338E0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239A30);
  }

  return result;
}

unint64_t sub_24F115AD8()
{
  result = qword_27F239A48[0];
  if (!qword_27F239A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F239A48);
  }

  return result;
}

uint64_t sub_24F115B2C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239A28, &qword_24FA338D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236350, &qword_24F939870);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22DF30, &qword_24F958D50);
  sub_24F924038();
  v1 = MEMORY[0x277CE0868];
  sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, v1);
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340, &qword_24F939830);
  v2 = sub_24F924038();
  sub_24F115A14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TransparentButton(255, v2, WitnessTable, v4);
  return swift_getWitnessTable();
}

uint64_t sub_24F115D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_24F92B138();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_24F91F4A8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for OverlayNowPlayingCacheDataIntent(0);
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v8 = swift_task_alloc();
  v4[25] = v8;
  *v8 = v4;
  v8[1] = sub_24F115F3C;

  return MEMORY[0x28217F228](v4 + 2, v7, v7);
}

uint64_t sub_24F115F3C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24F116BEC;
  }

  else
  {
    v2 = sub_24F116050;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F116050()
{
  v55 = v0;
  v1 = v0[24];
  v3 = v0[12];
  v2 = v0[13];
  sub_24E70D960(v0[11], v1 + *(v0[23] + 20));
  *v1 = v3;
  v1[1] = v2;
  v4 = qword_27F211400;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  v0[27] = __swift_project_value_buffer(v5, qword_27F39E850);

  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_24E7620D4(v9, v8, &v53);
    _os_log_impl(&dword_24E5DD000, v6, v7, "Starting prefetch of Now Playing data for %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  v12 = v0[26];
  sub_24F116ED8(v0[22]);
  if (v12)
  {

    v13 = v12;
    v14 = sub_24F9220B8();
    v15 = sub_24F92BDB8();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[24];
    if (v16)
    {
      v19 = v0[12];
      v18 = v0[13];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v53 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_24E7620D4(v19, v18, &v53);
      *(v20 + 12) = 2112;
      v23 = v12;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_24E5DD000, v14, v15, "Error prefetching or caching Now Playing data for %s, error: %@", v20, 0x16u);
      sub_24E6D44CC(v21);
      MEMORY[0x2530542D0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2530542D0](v22, -1, -1);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    else
    {
    }

    sub_24F1191AC(v17, type metadata accessor for OverlayNowPlayingCacheDataIntent);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v43 = v0[1];

    return v43();
  }

  else
  {
    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = v0[18];
    v30 = v0[12];
    v29 = v0[13];
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_24F92C888();

    v53 = v30;
    v54 = v29;
    MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA6C8B0);
    sub_24F91F3E8();

    (*(v27 + 16))(v26, v25, v28);
    v31 = sub_24F9220B8();
    v32 = sub_24F92BD98();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[19];
    v34 = v0[20];
    v36 = v0[18];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v37 = 136315138;
      sub_24F11920C(&qword_27F21B620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v38 = sub_24F92CD88();
      v40 = v39;
      v41 = *(v35 + 8);
      v41(v34, v36);
      v42 = sub_24E7620D4(v38, v40, &v53);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_24E5DD000, v31, v32, "Caching prefetched data in: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x2530542D0](v52, -1, -1);
      MEMORY[0x2530542D0](v37, -1, -1);
    }

    else
    {

      v41 = *(v35 + 8);
      v41(v34, v36);
    }

    v0[28] = v41;
    v45 = v0[5];
    v46 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v45);
    v47 = swift_task_alloc();
    v0[29] = v47;
    v48 = sub_24F11920C(&qword_27F21D5D0, type metadata accessor for OverlayNowPlayingCacheDataIntent, &protocol conformance descriptor for OverlayNowPlayingCacheDataIntent);
    *v47 = v0;
    v47[1] = sub_24F11667C;
    v50 = v0[23];
    v49 = v0[24];
    v51 = v0[14];

    return MEMORY[0x28217F4B0](v0 + 7, v49, v51, v50, v48, v45, v46);
  }
}