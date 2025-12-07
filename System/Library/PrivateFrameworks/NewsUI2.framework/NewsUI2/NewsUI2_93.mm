uint64_t sub_21912B630(uint64_t a1)
{
  sub_21912C11C(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21912C1B0(0, &qword_280EDBC90, type metadata accessor for SavedFeedGroup, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
  v6 = *(a1 + *(v5 + 48));
  sub_21912C1B0(0, &qword_27CC16700, type metadata accessor for SavedFeedGroup, sub_21880702C);
  v8 = &v4[*(v7 + 48)];
  sub_21912C398(a1, v4, type metadata accessor for SavedFeedGroup);
  *(v8 + 3) = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  *v8 = v6;
  swift_storeEnumTagMultiPayload();
  sub_21912C298(0, &qword_280EE6C68, sub_21912C11C, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_21912B7C8(uint64_t a1)
{
  sub_21912C11C(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE0FA0);
  v9 = a1;
  sub_218A450F0();
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_21912C298(0, &qword_280EE6C68, sub_21912C11C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21912B920()
{
  v1 = OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_config;
  sub_2186E90E8(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21912C400(v0 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_knobs, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleListSavedFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA7108;
  if (!qword_280EA7108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21912BA44(uint64_t a1)
{
  sub_2186E90E8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArticleListSavedFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21912BB18(uint64_t a1)
{
  sub_219BED8D4();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_21880702C();
  v2 = sub_219BE2F64();

  return v2;
}

uint64_t sub_21912BBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_config;
  sub_2186E90E8(0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21912BC60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ArticleListSavedFeedGroupKnobs(0);
  a1[4] = sub_2186E92EC(&qword_280EADB00, type metadata accessor for ArticleListSavedFeedGroupKnobs, &unk_219C49AF8);
  a1[5] = sub_2186E92EC(&qword_27CC16708, type metadata accessor for ArticleListSavedFeedGroupKnobs, &unk_219C49AD0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_21912C398(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ArticleListSavedFeedGroupKnobs);
}

uint64_t sub_21912BD64@<X0>(uint64_t *a2@<X8>)
{
  sub_21912C298(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E90E8(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21912C400(inited + 32, sub_2188317B0);
  sub_21912C460(0);
  a2[3] = v6;
  a2[4] = sub_2186E92EC(&unk_280EE77C8, sub_21912C460, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21912BEEC(uint64_t a1)
{
  sub_2186E92EC(&qword_280EA7120, type metadata accessor for ArticleListSavedFeedGroupEmitter, &unk_219C5EE58);

  return sub_219BE2324();
}

void sub_21912C11C(uint64_t a1)
{
  if (!qword_280E91708)
  {
    type metadata accessor for SavedFeedGroup(255);
    sub_2186E92EC(&qword_280EDBD58, type metadata accessor for SavedFeedGroup, &unk_219CBA1AC);
    v1 = sub_219BEF1A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91708);
    }
  }
}

void sub_21912C1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21912C248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = v2;
  a2[1] = v3;
}

void sub_21912C298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21912C2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SavedFeedServiceConfig(255);
    v7 = sub_2186E92EC(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21912C398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21912C400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DateRangeTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBB998;
  if (!qword_280EBB998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21912C508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v8);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    if (v14(v8, 1, v10) != 1)
    {
      sub_2189ADEC8(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v8, v10);
  }

  (*(v11 + 32))(a3, v13, v10);
  if (!a2)
  {
    v16[1] = 0x7FFFFFFFFFFFFFFFLL;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  sub_2189ADEC8(a1);
  result = type metadata accessor for DateRangeTagFeedGroupKnobs(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_21912C794@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21912CD0C(0, &qword_27CC16710, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21912CCB8();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    v15 = 0;
    sub_21877C750(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_2186F9548();
    v14 = 1;
    sub_21877C750(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
    sub_219BF7674();
    sub_21912C508(v6, v13[1], v13[0]);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21912C9F8(void *a1)
{
  v3 = v1;
  sub_21912CD0C(0, &qword_27CC16720, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21912CCB8();
  sub_219BF7B44();
  v13 = 0;
  sub_2189AD5C8(0);
  sub_21877C750(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for DateRangeTagFeedGroupKnobs(0) + 20));
    v11[15] = 1;
    sub_2186F9548();
    sub_21877C750(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21912CC10(uint64_t a1)
{
  v2 = sub_21912CCB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21912CC4C(uint64_t a1)
{
  v2 = sub_21912CCB8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21912CCB8()
{
  result = qword_27CC16718;
  if (!qword_27CC16718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16718);
  }

  return result;
}

void sub_21912CD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21912CCB8();
    v7 = a3(a1, &type metadata for DateRangeTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21912CD84()
{
  result = qword_27CC16728;
  if (!qword_27CC16728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16728);
  }

  return result;
}

unint64_t sub_21912CDDC()
{
  result = qword_27CC16730;
  if (!qword_27CC16730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16730);
  }

  return result;
}

unint64_t sub_21912CE34()
{
  result = qword_27CC16738;
  if (!qword_27CC16738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16738);
  }

  return result;
}

char *sub_21912CE88(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_subtitleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_containerView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_containerView;
  v15 = *&v13[OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_containerView];
  v16 = v13;
  [v16 addSubview_];
  [*&v13[v14] addSubview_];
  [*&v13[v14] addSubview_];

  return v16;
}

id sub_21912D040()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_containerView];
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  [v1 frame];
  v3 = CGRectGetWidth(v12);
  [v0 bounds];
  v4 = CGRectGetHeight(v13) * 0.5;
  [v1 frame];
  v5 = v4 - CGRectGetHeight(v14) * 0.5;
  if (v5 < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = Width * 0.5 - v3 * 0.5;
  [v1 frame];
  v8 = CGRectGetWidth(v15);
  [v1 frame];
  return [v1 setFrame_];
}

void sub_21912D228()
{
  v1 = OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI218RecipeBoxTitleView_containerView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_21912D31C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_219BF0534();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0554();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BF0504();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BF0594();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeadlineSharedState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0514();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF04B4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF0604();
  v21 = MEMORY[0x28223BE20](v20);
  (*(v23 + 104))(&v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_278242B68 + *(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_likedState)), v21);
  if (*(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_savedState))
  {
    v24 = MEMORY[0x277D32D08];
  }

  else
  {
    v24 = MEMORY[0x277D32D00];
  }

  (*(v17 + 104))(v19, *v24, v16);
  sub_21912E3B0(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_sharedState, v11);
  v25 = sub_219BF12B4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    v27 = MEMORY[0x277D32D28];
  }

  else
  {
    (*(v26 + 32))(v15, v11, v25);
    v27 = MEMORY[0x277D32D30];
  }

  (*(v13 + 104))(v15, *v27, v12);
  if (*(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_offensiveState))
  {
    v28 = MEMORY[0x277D32DA0];
  }

  else
  {
    v28 = MEMORY[0x277D32D98];
  }

  (*(v7 + 104))(v34, *v28, v32);
  (*(v33 + 104))(v36, **(&unk_278242B80 + *(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel)), v35);
  if (*(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_deletedState))
  {
    v29 = MEMORY[0x277D32D58];
  }

  else
  {
    v29 = MEMORY[0x277D32D50];
  }

  (*(v37 + 104))(v39, *v29, v38);
  if (*(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_blockedState))
  {
    v30 = MEMORY[0x277D32D48];
  }

  else
  {
    v30 = MEMORY[0x277D32D40];
  }

  (*(v41 + 104))(v40, *v30, v42);
  return sub_219BF0E84();
}

uint64_t sub_21912D94C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F590(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v42 - v18;
  if ((*(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_offensiveState) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_draggableState) & 1) == 0)
  {
    v23 = *(v1 + 16);
    if ([v23 contentType] == 1)
    {
      v24 = [v23 contentURL];
      if (v24)
      {
        v25 = v24;
        sub_219BDB8B4();

        (*(v4 + 56))(v15, 0, 1, v3);
      }

      else
      {
        (*(v4 + 56))(v15, 1, 1, v3);
      }

      sub_218AB007C(v15, v19);
      if ((*(v4 + 48))(v19, 1, v3) == 1)
      {
        sub_2187BC6A0(v19, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }

      else
      {
        v26 = sub_219BDB854();
        (*(v4 + 8))(v19, v3);
        sub_219BF5534();
        v27 = sub_219BF6AF4();

        if (v27)
        {
          v28 = [v23 title];
          if (v28)
          {
            v29 = v28;
            sub_219BF5414();
          }

          sub_219BEAF74();
          goto LABEL_32;
        }
      }
    }

    v30 = [v23 articleID];
    if (!v30)
    {
      sub_219BF5414();
      v30 = sub_219BF53D4();
    }

    v31 = [v23 routeURL];
    if (v31)
    {
      v32 = v31;
      sub_219BDB8B4();

      v33 = sub_219BDB854();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v33 = 0;
    }

    v34 = [objc_opt_self() nss:v30 NewsURLForArticleID:v33 routeURL:?];

    if (v34)
    {
      sub_219BDB8B4();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    (*(v4 + 56))(v9, v35, 1, v3);
    sub_218AB007C(v9, v12);
    if ((*(v4 + 48))(v12, 1, v3) == 1)
    {
      sub_2187BC6A0(v12, &unk_280EE9D00, MEMORY[0x277CC9260]);
LABEL_29:
      v40 = sub_219BEAF84();
      return (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
    }

    v36 = sub_219BDB854();
    (*(v4 + 8))(v12, v3);
    sub_219BF5534();
    v37 = sub_219BF6AF4();

    if (!v37)
    {

      goto LABEL_29;
    }

    v38 = [v23 title];
    if (v38)
    {
      v39 = v38;
      sub_219BF5414();
    }

    sub_219BEAF74();

LABEL_32:
    v41 = sub_219BEAF84();
    return (*(*(v41 - 8) + 56))(a1, 0, 1, v41);
  }

  v20 = sub_219BEAF84();
  v21 = *(*(v20 - 8) + 56);

  return v21(a1, 1, 1, v20);
}

uint64_t sub_21912DF60()
{
  swift_unknownObjectRelease();
  sub_2187BC6A0(v0 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, &qword_280E91C10, MEMORY[0x277D32010]);
  sub_21912ED68(v0 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_sharedState, type metadata accessor for HeadlineSharedState);
  sub_2187BC6A0(v0 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_nativeAdInfo, &unk_280EE34A0, MEMORY[0x277D2D148]);
  v1 = OBJC_IVAR____TtC7NewsUI213HeadlineModel_premiumBadge;
  v2 = sub_219BF0574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_21912E124()
{
  result = qword_27CC16758;
  if (!qword_27CC16758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16758);
  }

  return result;
}

unint64_t sub_21912E17C()
{
  result = qword_27CC16760;
  if (!qword_27CC16760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16760);
  }

  return result;
}

unint64_t sub_21912E1D4()
{
  result = qword_27CC16768;
  if (!qword_27CC16768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16768);
  }

  return result;
}

unint64_t sub_21912E22C()
{
  result = qword_27CC16770;
  if (!qword_27CC16770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16770);
  }

  return result;
}

unint64_t sub_21912E284()
{
  result = qword_27CC16778;
  if (!qword_27CC16778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16778);
  }

  return result;
}

unint64_t sub_21912E2DC()
{
  result = qword_27CC16780;
  if (!qword_27CC16780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16780);
  }

  return result;
}

unint64_t sub_21912E334()
{
  result = qword_27CC16788;
  if (!qword_27CC16788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16788);
  }

  return result;
}

uint64_t sub_21912E3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineSharedState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21912E414(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF12B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for HeadlineSharedState(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21912EE20(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_21912E3B0(a1, v16);
  sub_21912E3B0(a2, &v16[v18]);
  v19 = v5[6];
  if (v19(v16, 1, v4) == 1)
  {
    v20 = 1;
    v21 = v19(&v16[v18], 1, v4);
    v22 = type metadata accessor for HeadlineSharedState;
    if (v21 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_21912E3B0(v16, v13);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v23 = v5[4];
      v23(v10, v13, v4);
      v23(v7, &v16[v18], v4);
      v20 = MEMORY[0x21CEC8030](v10, v7);
      v24 = v5[1];
      v24(v7, v4);
      v24(v10, v4);
      v22 = type metadata accessor for HeadlineSharedState;
      goto LABEL_8;
    }

    (v5[1])(v13, v4);
  }

  v20 = 0;
  v22 = sub_21912EE20;
LABEL_8:
  sub_21912ED68(v16, v22);
  return v20 & 1;
}

uint64_t sub_21912E6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEBD44();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F590(0, &unk_280EE34A0, MEMORY[0x277D2D148]);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v46 - v7;
  sub_21912EC68(0);
  v9 = v8;
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = [v12 identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  v17 = *(a2 + 16);
  v18 = [v17 identifier];
  v19 = sub_219BF5414();
  v21 = v20;

  if (v14 == v19 && v16 == v21)
  {
  }

  else
  {
    v22 = sub_219BF78F4();

    if ((v22 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v23 = [v12 title];
  if (v23)
  {
    v24 = v23;
    v25 = sub_219BF5414();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v17 title];
  if (!v28)
  {
    if (!v27)
    {
      goto LABEL_19;
    }

LABEL_17:

    goto LABEL_34;
  }

  v29 = v28;
  v30 = sub_219BF5414();
  v32 = v31;

  if (!v27)
  {
    if (!v32)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!v32)
  {
    goto LABEL_17;
  }

  if (v25 == v30 && v27 == v32)
  {
  }

  else
  {
    v33 = sub_219BF78F4();

    if ((v33 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_19:
  if (*(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_likedState) != *(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_likedState) || *(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_savedState) != *(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_savedState) || (sub_21912E414(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_sharedState, a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_sharedState) & 1) == 0 || *(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_offensiveState) != *(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_offensiveState) || *(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_draggableState) != *(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_draggableState) || *(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel) != *(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel) || *(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_deletedState) != *(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_deletedState))
  {
    goto LABEL_34;
  }

  v34 = OBJC_IVAR____TtC7NewsUI213HeadlineModel_nativeAdInfo;
  v35 = *(v9 + 48);
  v36 = v49;
  sub_21912ECE8(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_nativeAdInfo, v49);
  sub_21912ECE8(a2 + v34, v36 + v35);
  v38 = v50;
  v37 = v51;
  v39 = *(v50 + 48);
  if (v39(v36, 1, v51) != 1)
  {
    v40 = v48;
    sub_21912ECE8(v36, v48);
    if (v39(v36 + v35, 1, v37) != 1)
    {
      v41 = v47;
      (*(v38 + 32))(v47, v36 + v35, v37);
      sub_21912EDC8();
      v42 = sub_219BF53A4();
      v43 = *(v38 + 8);
      v43(v41, v37);
      v43(v40, v37);
      sub_2187BC6A0(v36, &unk_280EE34A0, MEMORY[0x277D2D148]);
      if ((v42 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    (*(v38 + 8))(v40, v37);
LABEL_31:
    sub_21912ED68(v36, sub_21912EC68);
    goto LABEL_34;
  }

  if (v39(v36 + v35, 1, v37) != 1)
  {
    goto LABEL_31;
  }

  sub_2187BC6A0(v36, &unk_280EE34A0, MEMORY[0x277D2D148]);
LABEL_33:
  if (*(a1 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_blockedState) == *(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_blockedState))
  {
    v44 = sub_219BF04F4();
    return v44 & 1;
  }

LABEL_34:
  v44 = 0;
  return v44 & 1;
}

void sub_21912EC68(uint64_t a1)
{
  if (!qword_280EE3498)
  {
    sub_21873F590(255, &unk_280EE34A0, MEMORY[0x277D2D148]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE3498);
    }
  }
}

uint64_t sub_21912ECE8(uint64_t a1, uint64_t a2)
{
  sub_21873F590(0, &unk_280EE34A0, MEMORY[0x277D2D148]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21912ED68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21912EDC8()
{
  result = qword_280EE34B0;
  if (!qword_280EE34B0)
  {
    sub_219BEBD44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE34B0);
  }

  return result;
}

void sub_21912EE20(uint64_t a1)
{
  if (!qword_280ED1238[0])
  {
    type metadata accessor for HeadlineSharedState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280ED1238);
    }
  }
}

uint64_t sub_21912EE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v32 = type metadata accessor for RecipeBoxSectionDescriptor(0);
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BDBD64();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v27);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21897EC04(0);
  v25 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897EB38(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v26 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_21912F2EC(&qword_27CC0B718, sub_21897EC04, MEMORY[0x277D6D408]);
  sub_21912F2EC(&qword_27CC0B720, sub_21897EC04, MEMORY[0x277D6D3F8]);
  sub_219BE2444();
  sub_2187998B0(0);
  v19 = *(v18 + 48);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v22 = v21;
  (*(v3 + 8))(v5, v29);
  *v7 = v20;
  v7[1] = v22;
  sub_21897EE14(v30, v7 + v19);
  swift_storeEnumTagMultiPayload();
  sub_21912F2EC(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v28 + 8))(v10, v25);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v26, v17, v12);
  sub_21912F2EC(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
  sub_219BE6924();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_21912F2EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21912F364()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21912F428(uint64_t a1, uint64_t a2)
{
  v4 = sub_21912F580();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

unint64_t sub_21912F478()
{
  result = qword_27CC16790;
  if (!qword_27CC16790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16790);
  }

  return result;
}

unint64_t sub_21912F4D0()
{
  result = qword_27CC16798;
  if (!qword_27CC16798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16798);
  }

  return result;
}

unint64_t sub_21912F528()
{
  result = qword_27CC167A0;
  if (!qword_27CC167A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC167A0);
  }

  return result;
}

unint64_t sub_21912F580()
{
  result = qword_27CC167A8;
  if (!qword_27CC167A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC167A8);
  }

  return result;
}

unint64_t sub_21912F5D8()
{
  result = qword_27CC167B0;
  if (!qword_27CC167B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC167B0);
  }

  return result;
}

void sub_21912F62C(uint64_t a1)
{
  sub_219BED0C4();
  sub_218A293AC();
  v1 = sub_219BF6BB4();
  v2 = [objc_opt_self() configurationWithFont_];

  v3 = sub_219BF53D4();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    [v4 imageWithRenderingMode_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21912F764@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  result = (*(*(v3 + 8) + 16))(ObjectType);
  *a2 = result & 1;
  return result;
}

double sub_21912F7BC(char *a1, uint64_t a2)
{
  v3 = v2;
  sub_21896FA3C(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *a1;
  v13 = *(v3 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = *(a1 + 8);
  v30 = *(a1 + 24);
  *(v14 + 40) = v30;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = sub_219BE82D4();
    if (v15)
    {
      v16 = v15;
      goto LABEL_7;
    }

    v16 = *(v3 + 24);
  }

  else
  {
    v16 = *(v3 + 24);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

LABEL_7:
  v17 = sub_219BDFA44();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = v13;
  sub_2187B14CC(v39, &v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v32 = v14;
  if (v35)
  {
    sub_21875F93C(&v34, v36);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v19 = qword_280ED32D8;
    v18 = qword_280ED32E0;
    v20 = qword_280ED32E8;

    sub_2188202A8(v18);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    sub_2187448D0(&v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v19 = qword_280ED32D8;
    v18 = qword_280ED32E0;
    v20 = qword_280ED32E8;

    sub_2188202A8(v18);
  }

  v33 = v14 | 0x8000000000000006;
  v35 = sub_219BDD274();
  *&v34 = v16;
  sub_2189B4E2C(v11, v8);
  sub_2187B14CC(v41, v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v21 = (v31[80] + 24) & ~v31[80];
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v11;
  v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v16;
  sub_2189B4EAC(v8, v24 + v21);
  v25 = v24 + v22;
  v26 = v36[1];
  *v25 = v36[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v37;
  v27 = (v24 + v23);
  v28 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = 0;
  v27[1] = 0;
  *v28 = v19;
  v28[1] = v18;
  v28[2] = v20;
  swift_retain_n();

  sub_2188202A8(v18);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v18, v20);
  sub_2187448D0(v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v31);
  sub_2187448D0(&v34, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

double sub_21912FE24(uint64_t a1, unint64_t a2)
{
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(type metadata accessor for FeedViewContext(0));

  swift_unknownObjectRetain();
  v5 = [v4 init];
  *(v3 + 16) = a1;
  *(v3 + 24) = v5;
  *(v3 + 32) = MEMORY[0x277D84F90];
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = -1;
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB484();
  sub_218932F9C(v3 | 0x2000000000000006);

  return result;
}

uint64_t sub_21912FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_2191305CC(0, &unk_280EE6610, MEMORY[0x277D31680]);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v37 - v4;
  v42 = sub_219BE3794();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDBD64();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191305CC(0, &unk_280EE6660, MEMORY[0x277D31550]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_219BE3514();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EngagementPresentation(0);
  v43 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE39E4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_2191304F8(v12, &unk_280EE6660, MEMORY[0x277D31550]);
    v20 = 1;
    v21 = v44;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v22 = *(v14 + 16);
    v38 = v16;
    v22(v19, v16, v13);
    v23 = sub_219BE39A4();
    if (!v24)
    {
      sub_219BDBD54();
      v25 = sub_219BDBD44();
      v27 = v26;
      (*(v7 + 8))(v9, v39);
      v24 = v27;
      v23 = v25;
    }

    v28 = &v19[v17[5]];
    *v28 = v23;
    v28[1] = v24;
    v29 = v40;
    v39 = a1;
    sub_219BE39C4();
    v30 = *(v5 + 48);
    v31 = v42;
    if (v30(v29, 1, v42) == 1)
    {
      v32 = v41;
      (*(v5 + 104))(v41, *MEMORY[0x277D31670], v31);
      if (v30(v29, 1, v31) != 1)
      {
        sub_2191304F8(v29, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      v32 = v41;
      (*(v5 + 32))(v41, v29, v31);
    }

    (*(v5 + 32))(&v19[v17[6]], v32, v31);
    v33 = sub_219BE39D4();
    v34 = &v19[v17[7]];
    *v34 = v33;
    v34[1] = v35;
    sub_219BE39B4();

    (*(v14 + 8))(v38, v13);
    v21 = v44;
    sub_219130554(v19, v44);
    v20 = 0;
  }

  return (*(v43 + 56))(v21, v20, 1, v17);
}

uint64_t type metadata accessor for EngagementPresentation(uint64_t a1)
{
  result = qword_280EC88E0;
  if (!qword_280EC88E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2191304F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2191305CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219130554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementPresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2191305CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_219130634(uint64_t a1)
{
  sub_219BE3514();
  if (v1 <= 0x3F)
  {
    sub_219BE3794();
    if (v2 <= 0x3F)
    {
      sub_2186E3374();
      if (v3 <= 0x3F)
      {
        sub_2191305CC(319, &qword_280EE6510, MEMORY[0x277D318F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_219130730()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3 = objc_opt_self();
  v4 = 17.0;
  if (v1 == 5)
  {
    v4 = 13.0;
  }

  v5 = [v3 systemFontOfSize:v4 weight:*MEMORY[0x277D74418]];
  v6 = [v2 scaledFontForFont_];

  return v6;
}

void sub_219130824(void *a1)
{
  v2 = [a1 titleLabel];
  if (v2)
  {
    v3 = v2;
    v4 = sub_219130730();
    [v3 setFont_];
  }

  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [a1 setTitleColor:qword_280F617F8 forState:0];
  if (qword_280E8DA90 != -1)
  {
    swift_once();
  }

  [a1 setTitleColor:qword_280F61800 forState:1];
  sub_2186F8B0C();
  v5 = sub_219BF6D24();
  [a1 setTitleColor:v5 forState:2];
}

void sub_219130964(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  sub_218729D7C(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v40 - v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v42 = a2;
    sub_21883F194(0);
    v40 = v14;
    sub_219BDDB74();
    v15 = type metadata accessor for AudioFeedTrack(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = v16(v11, 1, v15);
    v41 = a4;
    if (v17 == 1)
    {
      sub_21871065C(v11, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v20 = [*v11 identifier];
      v18 = sub_219BF5414();
      v19 = v21;

      sub_219134768(v11, type metadata accessor for AudioFeedTrack);
    }

    v22 = [*&v13[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track] identifier];
    v23 = sub_219BF5414();
    v25 = v24;

    if (v19)
    {
      if (v18 == v23 && v19 == v25)
      {
        v28 = v42;
LABEL_20:

LABEL_21:
        sub_219130D2C(v28);
LABEL_24:

        return;
      }

      v27 = sub_219BF78F4();

      v28 = v42;
      if (v27)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v28 = v42;
    }

    sub_219BDDB74();
    if (v16(v8, 1, v15) == 1)
    {
      sub_21871065C(v8, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v29 = 0;
      v30 = 0;
      v31 = v41;
      v32 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    }

    else
    {
      v32 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      v33 = [*v8 identifier];
      v29 = sub_219BF5414();
      v30 = v34;

      sub_219134768(v8, type metadata accessor for AudioFeedTrack);
      v31 = v41;
    }

    v35 = [*v31 v32[278]];
    v36 = sub_219BF5414();
    v38 = v37;

    if (!v30)
    {

      goto LABEL_24;
    }

    if (v29 != v36 || v30 != v38)
    {
      v39 = sub_219BF78F4();

      if ((v39 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void sub_219130D2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BEEE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v78 - v12);
  sub_21883F194(0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([v2 isBeingDismissed] & 1) == 0)
  {
    v83 = v8;
    sub_2187361B0(a1, v17, sub_21883F194);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v81 = v4;
    v82 = a1;
    v80 = v5;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_16:
        v43 = *&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView];
        [*(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headphoneIconView) setHidden_];
        [*(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_progressView) setHidden_];
        v44 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel;
        [*(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel) setHidden_];
        [*(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_remainingTimeLabel) setHidden_];
        v45 = *(v43 + v44);
        sub_219BF2FD4();
        v46 = v45;
        sub_219BF2FC4();
LABEL_28:
        v64 = sub_219BF53D4();

        [v46 setAccessibilityLabel_];

        v65 = *(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel);
        v66 = &v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler];
        __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler], *&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler + 24]);
        v67 = &v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track];
        v68 = *&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track + 16];
        __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_listeningProgressManager], *&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_listeningProgressManager + 24]);
        v69 = *v67;
        v70 = v65;
        sub_219BDECC4();
        v71 = sub_218F20FC4(v7, v68);
        (*(v80 + 8))(v7, v81);
        [v70 setAttributedText_];

        __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
        v72 = *(v67 + *(v83 + 36));
        v73 = *(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_playPauseButton);
        v74 = [v69 identifier];
        v75 = sub_219BF5414();
        v77 = v76;

        sub_218F22C4C(v73, v72, v82, v75, v77);

        return;
      }

      sub_218A6E554(0);
      v20 = *&v17[*(v19 + 48)];
      v79 = &v17[*(v19 + 64)];
      sub_2187361B0(v17, v10, type metadata accessor for AudioFeedTrack);
      v21 = [*&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track] identifier];
      v22 = sub_219BF5414();
      v24 = v23;

      v25 = [*v10 identifier];
      v26 = sub_219BF5414();
      v28 = v27;

      if (v22 != v26 || v24 != v28)
      {
        v30 = sub_219BF78F4();

        v13 = v10;
        if (v30)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v13 = v10;
    }

    else
    {
      sub_218A6E5D0(0);
      v20 = *&v17[*(v31 + 48)];
      v79 = &v17[*(v31 + 64)];
      sub_2187361B0(v17, v13, type metadata accessor for AudioFeedTrack);
      v32 = [*&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track] identifier];
      v33 = sub_219BF5414();
      v35 = v34;

      v36 = [*v13 identifier];
      v37 = sub_219BF5414();
      v39 = v38;

      if (v33 != v37 || v35 != v39)
      {
        v41 = sub_219BF78F4();

        if ((v41 & 1) == 0)
        {
LABEL_15:
          sub_219134768(v13, type metadata accessor for AudioFeedTrack);
          v42 = sub_219BDD9E4();
          (*(*(v42 - 8) + 8))(v79, v42);
          sub_219134768(v17, type metadata accessor for AudioFeedTrack);
          goto LABEL_16;
        }

LABEL_19:
        sub_219134768(v13, type metadata accessor for AudioFeedTrack);
        v47 = sub_219BDD9E4();
        (*(*(v47 - 8) + 8))(v79, v47);
        sub_219134768(v17, type metadata accessor for AudioFeedTrack);
        v43 = *&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView];
        [*(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headphoneIconView) setHidden_];
        v48 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_progressView;
        [*(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_progressView) setHidden_];
        v49 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel;
        [*(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel) setHidden_];
        v50 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_remainingTimeLabel;
        [*(v43 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_remainingTimeLabel) setHidden_];
        v51 = &v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track];
        v52 = *(v43 + v48);
        *&v53 = COERCE_DOUBLE(sub_219BDD6D4());
        if (v54)
        {
          [v51[1] duration];
        }

        else
        {
          v55 = *&v53;
        }

        v56 = v20 / v55;
        *&v56 = v56;
        [v52 setProgress_];

        v57 = *(v43 + v50);
        __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler], *&v2[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler + 24]);
        v58 = v57;
        *&v59 = COERCE_DOUBLE(sub_219BDD6D4());
        if (v60)
        {
          [v51[1] duration];
        }

        else
        {
          v61 = *&v59;
        }

        v62 = sub_218F21C10(v61 - v20);
        [v58 setAttributedText_];

        v46 = *(v43 + v49);
        sub_219BDD6D4();
        if (v63)
        {
          [v51[1] duration];
        }

        sub_219BF2FD4();
        sub_219BF2FC4();
        goto LABEL_28;
      }
    }

    goto LABEL_19;
  }
}

void *sub_219131574(uint64_t a1, uint64_t a2)
{
  sub_21883F194(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_219BE20E4();
    sub_219130D2C(v4);

    return sub_219134768(v4, sub_21883F194);
  }

  return result;
}

id AudioTrackDetailsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_219BF53D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AudioTrackDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AudioTrackDetailsViewController.loadView()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setView_];

  if ((sub_219BED0C4() & 1) == 0)
  {
    v50 = [v0 view];
    if (v50)
    {
      v51 = v50;
      v52 = *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView];
      [v50 addSubview_];

      [v52 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_218725F94();
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_219C189E0;
      v54 = [v52 topAnchor];
      v55 = [v0 view];
      if (v55)
      {
        v56 = v55;
        v57 = [v55 topAnchor];

        v58 = [v54 constraintEqualToAnchor_];
        *(v53 + 32) = v58;
        v59 = [v52 leadingAnchor];
        v60 = [v0 view];
        if (v60)
        {
          v61 = v60;
          v62 = [v60 leadingAnchor];

          v63 = [v59 constraintEqualToAnchor_];
          *(v53 + 40) = v63;
          v64 = [v52 trailingAnchor];
          v65 = [v0 view];
          if (v65)
          {
            v66 = v65;
            v67 = objc_opt_self();
            v68 = [v66 trailingAnchor];

            v69 = [v64 constraintEqualToAnchor_];
            *(v53 + 48) = v69;
            sub_2186C6148(0, &qword_280E8E320, 0x277CCAAD0);
            v70 = sub_219BF5904();

            [v67 activateConstraints_];
            goto LABEL_13;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v2 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  [v3 addSubview_];

  sub_218725F94();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C24300;
  v6 = [v2 topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v2 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [v2 trailingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v5 + 48) = v20;
  v21 = [v2 bottomAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 bottomAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v5 + 56) = v26;
  sub_2186C6148(0, &qword_280E8E320, 0x277CCAAD0);
  v27 = sub_219BF5904();

  [v24 activateConstraints_];

  v28 = *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addSubview_];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C5F9C0;
  v30 = [v28 topAnchor];
  v31 = [v2 contentLayoutGuide];
  v32 = [v31 topAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v29 + 32) = v33;
  v34 = [v28 leadingAnchor];
  v35 = [v2 contentLayoutGuide];
  v36 = [v35 leadingAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v29 + 40) = v37;
  v38 = [v28 trailingAnchor];
  v39 = [v2 contentLayoutGuide];
  v40 = [v39 trailingAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v29 + 48) = v41;
  v42 = [v28 bottomAnchor];
  v43 = [v2 contentLayoutGuide];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v29 + 56) = v45;
  v46 = [v28 widthAnchor];
  v47 = [v2 frameLayoutGuide];
  v48 = [v47 widthAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v29 + 64) = v49;
  v70 = sub_219BF5904();

  [v24 activateConstraints_];

LABEL_13:
}

Swift::Void __swiftcall AudioTrackDetailsViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_21883F194(0);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewDidLoad, v4);
  if (sub_219BED0C4())
  {
    v7 = [v1 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = objc_opt_self();
    v10 = [v9 systemBackgroundColor];
    v11 = [v9 tertiarySystemBackgroundColor];
    v12 = [v9 ts:v10 dynamicColor:v11 withDarkStyleVariant:?];

    [v8 setBackgroundColor_];
    [v1 setAdditionalSafeAreaInsets_];
  }

  v13 = [v1 traitCollection];
  sub_219133710();

  v14 = *&v1[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView];
  [*(v14 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_playPauseButton) addTarget:v1 action:sel_didTapPlayPauseButton forControlEvents:64];
  [*(v14 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_readButton) addTarget:v1 action:sel_didTapReadButton forControlEvents:64];
  [*(v14 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_closeButton) addTarget:v1 action:sel_didTapCloseButton forControlEvents:64];
  v15 = [*(v14 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel) attributedText];
  if (v15)
  {
    v16 = v15;
    v17 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageViewContainer;
    [*(v14 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageViewContainer) setAccessibilityAttributedLabel_];
    [*(v14 + v17) setIsAccessibilityElement_];
  }

  sub_219BE20E4();
  sub_219130D2C(v6);
  sub_219134768(v6, sub_21883F194);
}

Swift::Void __swiftcall AudioTrackDetailsViewController.viewDidLayoutSubviews()()
{
  v1 = sub_219BF2894();
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v3 = *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView];
  [v3 frame];
  [v0 setPreferredContentSize_];
  [*&v3[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageViewContainer] frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v34 = &type metadata for AudioTrackDetailsPublisherLogoLayoutAttributes;
  v35 = sub_2191344F8();
  v14 = swift_allocObject();
  v33[0] = v14;
  v14[2] = v7;
  v14[3] = v9;
  v14[4] = v11;
  v14[5] = v13;
  v15 = *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler + 24];
  v16 = *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler + 32];
  v17 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler], v15);
  v32[3] = v15;
  v32[4] = *(v16 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  v19 = objc_opt_self();
  swift_unknownObjectRetain();
  v20 = [v19 mainScreen];
  [v20 scale];

  v21 = [v0 view];
  if (v21)
  {
    v22 = v21;
    v23 = sub_219BF4144();
    v24 = [v22 traitCollection];

    sub_219BF2884();
    v25 = sub_219BF4134();
    if (v25)
    {
      v26 = v25;
      __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_logoCache], *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_logoCache + 24]);
      v34 = v23;
      v35 = sub_218707918(&qword_280E8FF00, MEMORY[0x277D342E8], MEMORY[0x277D342E0]);
      v33[0] = v26;
      *(swift_allocObject() + 16) = v0;

      v27 = v0;
      sub_219BE6254();

      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    v28 = *&v3[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView];
    if (v28)
    {
      sub_219BDE994();
      v29 = v28;
      [v29 frame];
      v30 = [v19 mainScreen];
      [v30 scale];

      type metadata accessor for AudioFeedTrack(0);
      sub_218707918(&unk_280EDCA20, type metadata accessor for AudioFeedTrack, &protocol conformance descriptor for AudioFeedTrack);
      sub_219BDE974();
      __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_artworkCache], *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_artworkCache + 24]);
      *(swift_allocObject() + 16) = v29;
      v31 = v29;
      sub_219BE6254();

      __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_219132908(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_219BED174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v11;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v14 = a1;
    v15 = sub_219BF66A4();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = v14;
    aBlock[4] = sub_21913480C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_25_1;
    v17 = _Block_copy(aBlock);
    v18 = v14;
    v19 = a3;

    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_218707918(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_218729D7C(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v13, v8, v17);
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v13, v21);
  }
}

void sub_219132C10(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView);
  [*(v3 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel) setHidden_];
  [*(v3 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageView) setImage_];
  v4 = *(v3 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageWidthConstraint);
  [a2 size];
  [v4 setConstant_];
}

uint64_t sub_219132CD0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_219BED174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BED1D4();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v12 = sub_219BF66A4();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  aBlock[4] = sub_219134814;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_31_0;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a3;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_218707918(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_218729D7C(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

Swift::Void __swiftcall AudioTrackDetailsViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  sub_219133710();
}

char *sub_219133194(uint64_t a1)
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21883F194(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_219BE20E4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_6:
        v13 = OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track;
        swift_unknownObjectRetain();
        sub_219535364(&v8[v13]);

        return swift_unknownObjectRelease();
      }

      sub_218A6E554(0);
      v11 = &v6[*(v10 + 64)];
LABEL_5:
      v12 = sub_219BDD9E4();
      (*(*(v12 - 8) + 8))(v11, v12);
      sub_219134768(v6, type metadata accessor for AudioFeedTrack);
      goto LABEL_6;
    }

    sub_218A6E5D0(0);
    v11 = &v6[*(v14 + 64)];
    sub_2187361B0(v6, v3, type metadata accessor for AudioFeedTrack);
    v15 = [*&v8[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track] identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    v19 = [*v3 identifier];
    v20 = sub_219BF5414();
    v22 = v21;

    if (v16 == v20 && v18 == v22)
    {
    }

    else
    {
      v24 = sub_219BF78F4();

      if ((v24 & 1) == 0)
      {
        sub_219134768(v3, type metadata accessor for AudioFeedTrack);
        goto LABEL_5;
      }
    }

    sub_21953579C();
    sub_219134768(v3, type metadata accessor for AudioFeedTrack);

    v25 = sub_219BDD9E4();
    (*(*(v25 - 8) + 8))(v11, v25);
    return sub_219134768(v6, type metadata accessor for AudioFeedTrack);
  }

  return result;
}

id sub_219133710()
{
  v1 = v0;
  sub_21883F194(0);
  MEMORY[0x28223BE20](v2 - 8);
  v142 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BDBD34();
  v141 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v136 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729D7C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v134 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v135 = &v130 - v8;
  MEMORY[0x28223BE20](v9);
  v132 = &v130 - v10;
  MEMORY[0x28223BE20](v11);
  v140 = &v130 - v12;
  v13 = *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView];
  v14 = *&v13[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel];
  v15 = &v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler], aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v148);
  v16 = &v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track];
  v17 = *&v0[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track];
  v18 = v14;
  v145 = v17;
  v19 = [v17 sourceChannel];
  if (v19)
  {
    v20 = [v19 name];
    swift_unknownObjectRelease();
    v21 = sub_219BF5414();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = sub_218F20D58(v21, v23);

  [v18 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v25 = *&v13[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headlineLabel];
  __swift_project_boxed_opaque_existential_1(v15, *(v15 + 3));
  v133 = type metadata accessor for AudioFeedTrack(0);
  v26 = &v16[*(v133 + 32)];
  v27 = v26[1];
  v146 = v13;
  v139 = v1;
  v137 = v16;
  if (v27)
  {
    v28 = *v26;
    v29 = v25;
    v30 = v27;
  }

  else
  {
    v31 = v25;
    v32 = [v145 title];
    if (v32)
    {
      v33 = v32;
      v28 = sub_219BF5414();
      v30 = v34;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }
  }

  v35 = sub_218707918(&unk_27CC16890, type metadata accessor for AudioTrackDetailsStyler, &unk_219C47590);
  v36 = *(v35 + 40);
  v37 = type metadata accessor for AudioTrackDetailsStyler();

  v38 = v36(v28, v30, v37, v35);

  [v25 setAttributedText_];

  v138 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel;
  v39 = *&v146[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel];
  v40 = v145;
  v41 = [v145 excerpt];
  if (v41)
  {
    v42 = v41;
    v43 = sub_219BF5414();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = v140;
  v47 = sub_218F24214(v43, v45);

  [v39 setAttributedText_];

  __swift_project_boxed_opaque_existential_1(v15, *(v15 + 3));
  v131 = sub_218F22354(v40);
  sub_218718690(v15, aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v148);
  v48 = [v40 authors];
  if (v48)
  {
    v49 = v48;
    v50 = sub_219BF5924();
  }

  else
  {
    v50 = 0;
  }

  v51 = v132;
  v132 = sub_218F21F88(v50);

  sub_218718690(v15, v152);
  v52 = __swift_project_boxed_opaque_existential_1(v152, v152[3]);
  v53 = [v40 publishDate];
  v143 = v15;
  if (v53)
  {
    v54 = v53;
    sub_219BDBCA4();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = v141;
  v57 = *(v141 + 56);
  v58 = v144;
  v57(v46, v55, 1, v144);
  v59 = *v52;
  sub_2187D96F4(v46, v51);
  v60 = *(v56 + 48);
  if (v60(v51, 1, v58) == 1)
  {
    v61 = 0;
  }

  else
  {
    v62 = v136;
    (*(v56 + 32))(v136, v51, v58);
    v63 = sub_218F22880(v62, 0, v59);
    v64 = v56;
    v61 = v63;
    v65 = v62;
    v46 = v140;
    (*(v64 + 8))(v65, v58);
  }

  sub_21871065C(v46, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_218718690(v143, v151);
  v66 = __swift_project_boxed_opaque_existential_1(v151, v151[3]);
  v67 = [v40 publishDate];
  if (v67)
  {
    v68 = v135;
    v69 = v67;
    sub_219BDBCA4();

    v70 = 0;
    v71 = v144;
  }

  else
  {
    v70 = 1;
    v71 = v144;
    v68 = v135;
  }

  v57(v68, v70, 1, v71);
  v72 = *v66;
  v73 = v134;
  sub_2187D96F4(v68, v134);
  if (v60(v73, 1, v71) == 1)
  {
    v74 = 0;
  }

  else
  {
    v75 = v141;
    v76 = v136;
    (*(v141 + 32))(v136, v73, v71);
    v74 = sub_218F22880(v76, 1, v72);
    (*(v75 + 8))(v76, v71);
  }

  v77 = v139;
  v78 = v143;
  sub_21871065C(v68, &qword_280EE9C40, MEMORY[0x277CC9578]);
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_destroy_boxed_opaque_existential_1(v152);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v79 = v131;
  v80 = v132;
  v81 = v146;
  sub_2196E1874(v131, v132, v61, v74);

  v82 = *&v81[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView];
  if (v82)
  {
    v83 = v82;
    sub_218F240A0(v83);
  }

  __swift_project_boxed_opaque_existential_1(v78, *(v78 + 3));
  v84 = v137[*(v133 + 36)];
  v85 = *&v77[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_playbackState];
  v86 = *&v81[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_playPauseButton];
  v87 = v142;
  v144 = v85;
  sub_219BE20E4();
  v88 = [v145 identifier];
  v89 = sub_219BF5414();
  v91 = v90;

  sub_218F22C4C(v86, v84, v87, v89, v91);

  sub_219134768(v87, sub_21883F194);
  __swift_project_boxed_opaque_existential_1(v78, *(v78 + 3));
  v92 = *&v81[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_readButton];
  sub_218F23838(v92);

  v93 = __swift_project_boxed_opaque_existential_1(v78, *(v78 + 3));
  v94 = *&v81[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headphoneIconView];
  v95 = *v93;
  sub_219BF5114();
  v96 = v94;
  v97 = sub_219BF5074();
  v98 = *(*__swift_project_boxed_opaque_existential_1((v95 + 16), *(v95 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 56);
  v99 = [v97 imageWithTintColor:v98 renderingMode:1];

  [v96 setImage_];
  [v96 setContentMode_];

  v100 = [v81 layer];
  [v100 setCornerRadius_];

  v101 = objc_allocWithZone(MEMORY[0x277D75348]);
  v149 = sub_218F20CEC;
  v150 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218FEA284;
  v148 = &block_descriptor_34_1;
  v102 = _Block_copy(aBlock);
  v103 = [v101 initWithDynamicProvider_];
  _Block_release(v102);

  [v81 setBackgroundColor_];

  v104 = *&v81[v138];
  result = [v77 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_43;
  }

  v106 = result;
  v107 = [result window];

  if (!v107)
  {
    result = [v77 view];
    if (result)
    {
      v108 = result;
      v107 = sub_219BF6C24();

      goto LABEL_33;
    }

LABEL_43:
    __break(1u);
    return result;
  }

LABEL_33:
  [v107 bounds];
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;

  v153.origin.x = v110;
  v153.origin.y = v112;
  v153.size.width = v114;
  v153.size.height = v116;
  Width = CGRectGetWidth(v153);
  v118 = objc_opt_self();
  v119 = [v118 sharedApplication];
  v120 = [v119 preferredContentSizeCategory];

  if (Width >= 375.0)
  {
    v122 = sub_219BF5414();
    v124 = v123;
    if (v122 == sub_219BF5414() && v124 == v125)
    {

      v121 = 6;
    }

    else
    {
      v126 = sub_219BF78F4();

      if (v126)
      {
        v121 = 6;
      }

      else
      {
        v121 = 11;
      }
    }
  }

  else
  {
    v121 = 6;
  }

  [v104 setNumberOfLines_];

  v127 = [v118 sharedApplication];
  v128 = [v127 preferredContentSizeCategory];

  LOBYTE(v127) = sub_219BF6944();
  [*&v146[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonStack] setAxis_];
  v129 = v142;
  sub_219BE20E4();
  sub_219130D2C(v129);
  return sub_219134768(v129, sub_21883F194);
}

unint64_t sub_2191344F8()
{
  result = qword_27CC167D8;
  if (!qword_27CC167D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC167D8);
  }

  return result;
}

_BYTE *_s7NewsUI231AudioTrackDetailsViewControllerC012presentationG012forPresented10presenting6sourceSo014UIPresentationG0CSgSo06UIViewG0C_ALSgALtF_0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(type metadata accessor for ModalCardPresentationController()) initWithPresentedViewController:a1 presentingViewController:a2];
  v2[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_useBlurEffect] = 0;
  v3 = *&v2[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_effectView];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = v3;
  v7 = [v4 blackColor];
  [v6 setBackgroundColor_];

  return v5;
}

uint64_t type metadata accessor for AudioTrackDetailsViewController(uint64_t a1)
{
  result = qword_27CC16820;
  if (!qword_27CC16820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219134678(uint64_t a1)
{
  result = type metadata accessor for AudioFeedTrack(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_219134768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21913483C(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_219134958(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_218718690(result + 16, v4);

    v2 = v5;
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v3 + 8))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

uint64_t sub_2191349F8(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_219134B14(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_218718690(result + 16, v4);

    v2 = v5;
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v3 + 16))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

uint64_t sub_219134BB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_218718690(result + 16, v5);

    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 24))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_219134C54(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_219134D70(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_218718690(result + 16, v4);

    v2 = v5;
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v3 + 32))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

uint64_t sub_219134E10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_219134E78(uint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
  v3 = sub_219BE7174();
  if (v3)
  {
    v4 = v3;
    v66 = [v3 rootViewController];

    if (v66)
    {
      v5 = [v66 traitCollection];
      v6 = [v5 horizontalSizeClass];

      v7 = v6 != 1;
      sub_219BEAF54();
      if (qword_280EE3810 != -1)
      {
        swift_once();
      }

      if (sub_219BEA954())
      {
        v63 = v7;
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v9 = objc_opt_self();
        v10 = [v9 bundleForClass_];
        sub_219BDB5E4();

        sub_21913483C(v2);
        v11 = [v9 bundleForClass_];
        sub_219BDB5E4();

        v12 = swift_allocObject();
        swift_weakInit();

        v13 = sub_219BF53D4();

        v14 = sub_219BF53D4();

        v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:{v63, 0x8000000219D0CA40}];

        v16 = [v9 bundleForClass_];
        sub_219BDB5E4();

        v17 = sub_219BF53D4();

        v18 = objc_opt_self();
        v19 = [v18 actionWithTitle:v17 style:1 handler:{0, 0x8000000219D0C7E0}];

        [v15 addAction_];
        v20 = swift_allocObject();
        *(v20 + 16) = sub_219135EB8;
        *(v20 + 24) = v12;

        v21 = sub_219BF53D4();

        v71 = sub_218BBF788;
        v72 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v68 = 1107296256;
        v69 = sub_218B66540;
        v70 = &block_descriptor_24_4;
        v22 = _Block_copy(&aBlock);

        v23 = [v18 actionWithTitle:v21 style:0 handler:v22];
LABEL_11:
        v35 = v23;
        _Block_release(v22);

        [v15 addAction_];

        [v66 presentViewController:v15 animated:1 completion:0];
LABEL_12:

        return;
      }

      if (qword_280EE3818 != -1)
      {
        swift_once();
      }

      if (sub_219BEA954())
      {
        type metadata accessor for Localized();
        v24 = swift_getObjCClassFromMetadata();
        v25 = objc_opt_self();
        v26 = [v25 bundleForClass_];
        v64 = v7;
        sub_219BDB5E4();

        sub_2191349F8(v2);
        v27 = [v25 bundleForClass_];
        sub_219BDB5E4();

        v28 = swift_allocObject();
        swift_weakInit();

        v29 = sub_219BF53D4();

        v30 = sub_219BF53D4();

        v15 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:{v64, 0x8000000219D0CA40}];

        v31 = [v25 bundleForClass_];
        sub_219BDB5E4();

        v32 = sub_219BF53D4();

        v33 = objc_opt_self();
        v19 = [v33 actionWithTitle:v32 style:1 handler:{0, 0x8000000219D0C7E0}];

        [v15 addAction_];
        v34 = swift_allocObject();
        *(v34 + 16) = sub_219135EB0;
        *(v34 + 24) = v28;

        v21 = sub_219BF53D4();

        v71 = sub_218BBF788;
        v72 = v34;
        aBlock = MEMORY[0x277D85DD0];
        v68 = 1107296256;
        v69 = sub_218B66540;
        v70 = &block_descriptor_16_1;
        v22 = _Block_copy(&aBlock);

        v23 = [v33 actionWithTitle:v21 style:0 handler:v22];
        goto LABEL_11;
      }

      if (qword_280EE3828 != -1)
      {
        swift_once();
      }

      if (sub_219BEA954())
      {
        type metadata accessor for Localized();
        v36 = swift_getObjCClassFromMetadata();
        v37 = objc_opt_self();
        v38 = [v37 bundleForClass_];
        sub_219BDB5E4();

        v39 = [v37 bundleForClass_];
        sub_219BDB5E4();

        v40 = sub_219BF53D4();

        v41 = sub_219BF53D4();

        v42 = [objc_opt_self() alertControllerWithTitle:v40 message:v41 preferredStyle:{1, 0x8000000219D0C910}];

        v43 = [v37 bundleForClass_];
        sub_219BDB5E4();

        v44 = sub_219BF53D4();

        v45 = objc_opt_self();
        v46 = [v45 actionWithTitle:v44 style:1 handler:{0, 0x8000000219D0C950}];

        [v42 addAction_];
        v47 = [v37 bundleForClass_];
        sub_219BDB5E4();

        v48 = swift_allocObject();
        swift_weakInit();

        v49 = sub_219BF53D4();

        v71 = sub_219135EA8;
        v72 = v48;
        aBlock = MEMORY[0x277D85DD0];
        v68 = 1107296256;
        v69 = sub_218B66540;
        v70 = &block_descriptor_8_0;
        v50 = _Block_copy(&aBlock);

        v51 = [v45 actionWithTitle:v49 style:0 handler:{v50, 0x8000000219D0C990}];
        _Block_release(v50);

        [v42 addAction_];
        [v66 presentViewController:v42 animated:1 completion:0];

        goto LABEL_12;
      }

      if (qword_280EE3800 != -1)
      {
        swift_once();
      }

      if (sub_219BEA954())
      {
        type metadata accessor for Localized();
        v52 = swift_getObjCClassFromMetadata();
        v53 = objc_opt_self();
        v54 = [v53 bundleForClass_];
        v65 = v7;
        sub_219BDB5E4();

        sub_219134C54(v2);
        v55 = [v53 bundleForClass_];
        sub_219BDB5E4();

        v56 = swift_allocObject();
        swift_weakInit();

        v57 = sub_219BF53D4();

        v58 = sub_219BF53D4();

        v15 = [objc_opt_self() alertControllerWithTitle:v57 message:v58 preferredStyle:{v65, 0x8000000219D0C7C0}];

        v59 = [v53 bundleForClass_];
        sub_219BDB5E4();

        v60 = sub_219BF53D4();

        v61 = objc_opt_self();
        v19 = [v61 actionWithTitle:v60 style:1 handler:{0, 0x8000000219D0C7E0}];

        [v15 addAction_];
        v62 = swift_allocObject();
        *(v62 + 16) = sub_219135EA0;
        *(v62 + 24) = v56;

        v21 = sub_219BF53D4();

        v71 = sub_218807D28;
        v72 = v62;
        aBlock = MEMORY[0x277D85DD0];
        v68 = 1107296256;
        v69 = sub_218B66540;
        v70 = &block_descriptor_100;
        v22 = _Block_copy(&aBlock);

        v23 = [v61 actionWithTitle:v21 style:0 handler:v22];
        goto LABEL_11;
      }
    }
  }
}

id sub_219135ED4(uint64_t a1, double *a2, char *a3)
{
  v44 = sub_219BDCAF4();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *&a3[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView];

  sub_219BEB3E4();
  v46 = *&a3[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel];
  [v46 setAttributedText_];
  [a3 setIsAccessibilityElement_];
  [v10 setIsAccessibilityElement_];
  [a3 setFrame_];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  v14 = a2[7];
  [v10 &selRef_minShortcutsOnboardCount];
  v15 = *&a3[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_backgroundView];
  v45 = a3;
  [v15 &selRef_minShortcutsOnboardCount];
  [*&a3[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_separatorView] &selRef_minShortcutsOnboardCount];
  sub_218B7AA58(v10);
  sub_218B7A7F4(v15);
  v16 = objc_opt_self();
  v17 = [v16 separatorColor];
  sub_219BE60D4();
  if (v9)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0;
  }

  v42[2] = v18;
  v19 = 0xE000000000000000;
  if (v9)
  {
    v19 = v9;
  }

  v42[1] = v19;
  sub_218818FB4(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v21 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v22 = v21;
  v23 = [v16 labelColor];
  v24 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v23;
  v25 = *MEMORY[0x277D740A8];
  *(inited + 64) = v24;
  *(inited + 72) = v25;
  sub_219BF0CD4();
  v26 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v27 = v25;
  v28 = sub_219BF6BD4();
  v29 = v43;
  v30 = v44;
  (*(v6 + 104))(v43, *MEMORY[0x277D6D198], v44);
  v31 = sub_219BF0CB4();

  (*(v6 + 8))(v29, v30);
  *(inited + 104) = v26;
  *(inited + 80) = v31;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_21899E604();
  v34 = sub_219BF5204();

  v35 = [v32 initWithString:v33 attributes:v34];

  v36 = v46;
  [v46 setAttributedText_];

  [v36 setFrame_];
  v37 = *MEMORY[0x277D765D0];
  v38 = v45;
  v39 = [v45 accessibilityTraits];
  if ((v37 & ~v39) != 0)
  {
    v40 = v37;
  }

  else
  {
    v40 = 0;
  }

  return [v38 setAccessibilityTraits_];
}

id sub_2191363CC(void *a1, double *a2, char *a3)
{
  v52 = sub_219BDCAF4();
  v7 = *(v52 - 8);
  *&v8 = MEMORY[0x28223BE20](v52).n128_u64[0];
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 setIsAccessibilityElement_];
  v11 = *&a3[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView];
  [v11 setIsAccessibilityElement_];
  [a3 setFrame_];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v15 = a2[7];
  [v11 &selRef_minShortcutsOnboardCount];
  v16 = *&a3[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_backgroundView];
  [v16 &selRef_minShortcutsOnboardCount];
  [*&a3[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_separatorView] &selRef_minShortcutsOnboardCount];
  v47 = v3;
  v46[1] = v11;
  sub_218B7AA58(v11);
  sub_218B7A7F4(v16);
  v17 = objc_opt_self();
  v18 = [v17 separatorColor];
  sub_219BE60D4();
  v53 = a3;
  v50 = *&a3[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel];
  v51 = a1;
  v19 = a1[1];
  v49 = *a1;
  v48 = v19;
  sub_218818FB4(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v21 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v22 = v21;
  v23 = [v17 labelColor];
  v24 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v23;
  v25 = *MEMORY[0x277D740A8];
  *(inited + 64) = v24;
  *(inited + 72) = v25;
  sub_219BF0CD4();
  v26 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v27 = v25;
  v28 = sub_219BF6BD4();
  v29 = v52;
  (*(v7 + 104))(v10, *MEMORY[0x277D6D198], v52);
  v30 = sub_219BF0CB4();

  (*(v7 + 8))(v10, v29);
  *(inited + 104) = v26;
  *(inited + 80) = v30;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v32 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v33 = sub_219BF5204();

  v34 = [v31 initWithString:v32 attributes:v33];

  v35 = v50;
  [v50 setAttributedText_];

  [v35 setFrame_];
  sub_218AB7A30((v51 + 14), &v54);
  if (!v55)
  {
    sub_2189A70A0(&v54);
    goto LABEL_5;
  }

  sub_2186CB1F0(&v54, v57);
  sub_218718690(v57, &v54);
  v36 = sub_219BE7D54();
  swift_allocObject();
  v37 = sub_219BE7D44();
  __swift_project_boxed_opaque_existential_1((v47 + 40), *(v47 + 64));
  v38 = MEMORY[0x277D6DD38];
  v56 = MEMORY[0x277D6DD38];
  v55 = v36;
  *&v54 = v37;

  v39 = sub_219BE6264();
  __swift_destroy_boxed_opaque_existential_1(&v54);
  if (v39)
  {
    v40 = v39;
    sub_219BEB3E4();

    __swift_destroy_boxed_opaque_existential_1(v57);
LABEL_5:
    v41 = v53;
    goto LABEL_7;
  }

  sub_219BEB3E4();
  v56 = v38;
  v55 = v36;
  *&v54 = v37;
  swift_allocObject();
  v41 = v53;
  swift_unknownObjectWeakInit();

  sub_219BEB3B4();

  __swift_destroy_boxed_opaque_existential_1(v57);

  __swift_destroy_boxed_opaque_existential_1(&v54);
LABEL_7:
  v42 = *MEMORY[0x277D765D0];
  v43 = [v41 accessibilityTraits];
  if ((v42 & ~v43) != 0)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  return [v41 setAccessibilityTraits_];
}

void sub_219136A74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView);

    sub_219BEB3C4();
  }
}

double sub_219136B2C(void x0_0, void *a1)
{
  v2 = a1[7];
  v3 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v2);
  (*(v3 + 8))(v2, v3);
  sub_219BE1A44();

  sub_219BE2184();

  return result;
}

uint64_t sub_219136BBC(void *a1)
{
  v1 = a1[7];
  v2 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v1);
  (*(v2 + 8))(v1, v2);
  sub_219BE1A44();

  v3 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_219136CA8(uint64_t a1, void *a2)
{
  sub_219136F68(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = a2[3];
    ObjectType = swift_getObjectType();
    v11 = a2[7];
    v12 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, v11);
    (*(v12 + 8))(v11, v12);
    sub_219BE1A44();

    sub_219BE2184();

    (*(v9 + 8))(a2, &off_282A60100, v7, ObjectType, v9);
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_219136E4C()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 24))(v1, v2);
  v3 = sub_219BE2E54();
  sub_219136F68(0);
  sub_219BE2F94();

  v4 = sub_219BE2E54();
  v5 = sub_219BE3034();

  return v5;
}

void sub_219136F68(uint64_t a1)
{
  if (!qword_280EE7F00)
  {
    type metadata accessor for MyMagazinesState(255);
    v1 = sub_219BE1A34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7F00);
    }
  }
}

void sub_2191371BC()
{
  sub_219137248(&qword_27CC168B0, &unk_219C5FD04);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_219137248(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelIssuesGroupTitleView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_219137288()
{
  v1 = sub_219BF12B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v5 = sub_219BF2F44();
  v6 = *(v5 + 16);
  if (v6)
  {
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v9 = *(v7 + 64);
    v19[0] = v5;
    v10 = v5 + ((v9 + 32) & ~v9);
    v20 = *(v7 + 56);
    v21 = v8;
    v11 = MEMORY[0x277D84F90];
    v19[1] = v7;
    v8(v4, v10, v1);
    while (1)
    {
      v13 = sub_219BF12A4();
      v15 = v14;
      (*(v7 - 8))(v4, v1);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_218840D24(0, *(v11 + 2) + 1, 1, v11);
        }

        v17 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v17 >= v16 >> 1)
        {
          v11 = sub_218840D24((v16 > 1), v17 + 1, 1, v11);
        }

        *(v11 + 2) = v17 + 1;
        v12 = &v11[16 * v17];
        *(v12 + 4) = v13;
        *(v12 + 5) = v15;
      }

      v10 += v20;
      if (!--v6)
      {
        break;
      }

      v21(v4, v10, v1);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t sub_2191374EC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219137570(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2191375FC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219137688(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21913770C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  sub_218A52E48(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A52E68(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v43 - v15;
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v16 = sub_219BE9494();
  sub_219357FA0(a1, v16, a3);

  v17 = v4[5];
  v18 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v17);
  v19 = sub_219BE9494();
  v20 = *(v18 + 8);
  v21 = v18;
  v22 = v12;
  v20(v19, v17, v21);

  v23 = sub_219BE9494();
  [v23 setAccessibilityTraits_];

  v24 = sub_219BE9494();
  v25 = sub_219BF53D4();
  [v24 setAccessibilityLabel_];

  sub_219137E00(v45, v9);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_219137E64(v9);
    v26 = sub_219BE9494();
    [v26 setAccessibilityRespondsToUserInteraction_];

    v27 = sub_219BE9494();
    [v27 setAccessibilityValue_];

    v28 = sub_219BE9494();
    [v28 setAccessibilityHint_];
  }

  else
  {
    v29 = *(v12 + 32);
    v30 = v46;
    v29(v46, v9, v11);
    v31 = sub_219BE9494();
    [v31 setAccessibilityRespondsToUserInteraction_];

    v32 = v44;
    (*(v22 + 16))(v44, v30, v11);
    v33 = (*(v22 + 88))(v32, v11);
    v34 = *MEMORY[0x277D6EA68];
    v43 = v22;
    if (v33 == v34 || v33 == *MEMORY[0x277D6EA60])
    {
      v35 = sub_219BE9494();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v37 = objc_opt_self();
      v38 = [v37 bundleForClass_];
      sub_219BDB5E4();

      v39 = sub_219BF53D4();

      [v35 setAccessibilityValue_];

      v40 = sub_219BE9494();
      v41 = [v37 bundleForClass_];
      sub_219BDB5E4();

      v42 = sub_219BF53D4();

      [v40 setAccessibilityHint_];

      (*(v43 + 8))(v46, v11);
    }

    else
    {
      sub_219BF7514();
      __break(1u);
    }
  }
}

uint64_t sub_219137E00(uint64_t a1, uint64_t a2)
{
  sub_218A52E48(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219137E64(uint64_t a1)
{
  sub_218A52E48(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219137EC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_219137FBC(uint64_t a1, uint64_t a2)
{
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v4 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v5 = sub_219BF66A4();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_219BE2F94();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2191381BC(uint64_t a1)
{
  v1 = (*(a1 + *(*a1 + 128)) + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_knobConfig);
  v2 = *v1;
  v3 = v1[1];
  v8[0] = v2;
  v8[1] = v3;
  v4 = off_282A89B28[0];
  type metadata accessor for PuzzleContinuePlayingDataManager();
  v5 = swift_unknownObjectRetain();
  v6 = v4(v5, v8);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_2191382A8(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 40))(*a1, *(a2 + *(*a2 + 128)), *(*a2 + 80));
  sub_2191396F0(0);
  sub_2191397A8(&qword_280EE5608, sub_2191396F0, MEMORY[0x277D6D890]);
  v2 = sub_219BE6E84();

  return v2;
}

uint64_t sub_2191383C0(void *a1, uint64_t (*a2)(void))
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F625E0);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v6, v7, "Failed to prewarm Continue Playing Group: %@", v8, 0xCu);
    sub_218962D30(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  return a2();
}

double sub_219138518(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219BE6F24();

  return result;
}

uint64_t sub_21913859C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for PuzzleModel(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896993C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleContinuePlayingModel(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C401FC(0);
  sub_219BE5FC4();
  (*(v7 + 32))(v9, v12, v6);
  sub_219BF07D4();
  v13 = v26[0];
  swift_unknownObjectRetain();
  sub_218969A64(v26);
  v14 = v2[7];
  v15 = sub_219BF24E4();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = sub_219BE5F84();
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  *v4 = v13;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v19 = &v4[v2[8]];
  *v19 = v16;
  v19[1] = v18;
  v20 = &v4[v2[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v4[v2[10]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = v25;
  sub_218D1960C(v4, v25);
  v23 = type metadata accessor for PuzzleContinuePlayingRouteModel(0);
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t *sub_219138838()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_219138930()
{
  sub_219138838();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ContinuePlayingPuzzleProgress(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinuePlayingPuzzleProgress(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_219138A68()
{
  v1 = v0;
  v2 = sub_219BF24A4();
  v3 = [v2 puzzleID];

  v4 = sub_219BF5414();
  v6 = v5;

  v7 = *(*v1 + 136);
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!*(v8 + 16))
  {

    goto LABEL_8;
  }

  v9 = sub_21870F700(v4, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_8:
    swift_endAccess();
    return 1;
  }

  v12 = *(v8 + 56) + 16 * v9;
  v13 = *v12;
  v14 = *(v12 + 8);
  swift_endAccess();
  v15 = sub_219BF24A4();
  v16 = [v15 progressLevel];
  v17 = [v15 usedReveal];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 BOOLValue];

    return v13 != v16 || ((v14 ^ v19) & 1) != 0;
  }

  return (v13 != v16) | v14 & 1;
}

void sub_219138BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = *(sub_219BF3C04() - 8);
    v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      v9 = sub_219138DE8(v7, v3, &v12);
      v7 += v8;
      --v4;
    }

    while (v4);
    if (v12)
    {
      MEMORY[0x28223BE20](v9);
      sub_219BE3204();
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v10 = sub_219BF66A4();

      sub_219BE2F94();

      v11 = sub_219BE2E54();
      sub_219BE2FD4();
    }
  }
}

uint64_t sub_219138DE8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v37 = a3;
  v5 = sub_219BF3C04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF24C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  (*(v6 + 16))(v8, a1, v5, v14);
  v17 = (*(v6 + 88))(v8, v5);
  if (v17 == *MEMORY[0x277D340A8] || v17 == *MEMORY[0x277D340B0])
  {
    (*(v6 + 96))(v8, v5);
    (*(v10 + 32))(v16, v8, v9);
    if (!sub_219138A68())
    {
      return (*(v10 + 8))(v16, v9);
    }

    v19 = sub_219BF24A4();
    v20 = [v19 puzzleID];

    v21 = sub_219BF5414();
    v23 = v22;

    v24 = sub_219BF24A4();
    (*(v10 + 8))(v16, v9);
    v25 = [v24 progressLevel];
    v26 = [v24 usedReveal];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 BOOLValue];
    }

    else
    {
      v28 = 0;
    }

    v34 = *(*a2 + 136);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(a2 + v34);
    *(a2 + v34) = 0x8000000000000000;
    sub_21948D9B4(v25, v28, v21, v23, isUniquelyReferenced_nonNull_native);

    *(a2 + v34) = v38;
    result = swift_endAccess();
  }

  else
  {
    if (v17 != *MEMORY[0x277D340B8])
    {
      *v37 = 0;
      return (*(v6 + 8))(v8, v5);
    }

    (*(v6 + 96))(v8, v5);
    (*(v10 + 32))(v12, v8, v9);
    v29 = [sub_219BF24B4() identifier];
    swift_unknownObjectRelease();
    v30 = sub_219BF5414();
    v32 = v31;

    swift_beginAccess();
    sub_2195EA970(v30, v32);
    swift_endAccess();

    result = (*(v10 + 8))(v12, v9);
  }

  *v37 = 1;
  return result;
}

uint64_t sub_219139258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + *(*a3 + 128)) + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_knobConfig);
  v4 = *v3;
  v5 = v3[1];
  v10[0] = v4;
  v10[1] = v5;
  v6 = off_282A89B30[0];
  type metadata accessor for PuzzleContinuePlayingDataManager();
  v7 = swift_unknownObjectRetain();
  v8 = v6(v7, v10);
  swift_unknownObjectRelease();
  return v8;
}

void sub_21913932C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  (*(v3 + 48))(*a1, *(a2 + *(*a2 + 128)), v4, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  sub_2191396F0(0);
  sub_2191397A8(&qword_280EE5608, sub_2191396F0, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

double sub_2191394C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_219139838(Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_219139564(void *a1)
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Failed to update Continue Playing in response to puzzle history change: %@", v5, 0xCu);
    sub_218962D30(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

void sub_2191396F0(uint64_t a1)
{
  if (!qword_280EE5600)
  {
    type metadata accessor for PuzzleContinuePlayingModel(255);
    sub_218AE146C();
    sub_2191397A8(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel, &unk_219C0FD4C);
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5600);
    }
  }
}

uint64_t sub_2191397A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219139838(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  v3[2] = a1;
  v3[3] = sub_219139AA8;
  v3[4] = v2;
  a1;

  sub_219BE3494();

  sub_219BE8664();
  v11 = sub_219BE7BC4();

  v4 = [v11 numberOfItemsInSection_];
  if (v4 < 2)
  {
  }

  else
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v11;
    *(v7 + 24) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_219139AB0;
    *(v8 + 24) = v7;
    aBlock[4] = sub_218807D50;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218807CE4;
    aBlock[3] = &block_descriptor_101;
    v9 = _Block_copy(aBlock);
    v10 = v11;

    [v6 performWithoutAnimation_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

uint64_t sub_219139AB8()
{
  v0 = sub_219BE1544();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE1524();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE9C04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF074();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_219BE9934();
  v17 = (*(v7 + 88))(v9, v6);
  if (v17 == *MEMORY[0x277D6E830])
  {
    v18 = MEMORY[0x277D2D868];
LABEL_9:
    v20 = *v18;
    v21 = *(v11 + 104);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277D6E840] || v17 == *MEMORY[0x277D6E848])
  {
    v18 = MEMORY[0x277D2D850];
    goto LABEL_9;
  }

  v21 = *(v11 + 104);
  if (v17 != *MEMORY[0x277D6E838])
  {
    v21(v16, *MEMORY[0x277D2D850], v10);
    (*(v7 + 8))(v9, v6);
    goto LABEL_11;
  }

  v20 = *MEMORY[0x277D2D810];
LABEL_10:
  v21(v16, v20, v10);
LABEL_11:
  sub_219BE9924();
  (*(v25 + 104))(v2, *MEMORY[0x277D2F3D8], v26);
  (*(v11 + 16))(v13, v16, v10);
  sub_219BE1514();
  sub_21913ADC8(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v22 = v28;
  sub_219BDD1F4();
  (*(v27 + 8))(v5, v22);
  sub_219BDD134();
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_219139F0C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_219BDBD34();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = sub_219BDF244();
  v32 = *(v17 - 8);
  v33 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  sub_219BE8F44();
  (*(v11 + 32))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == *MEMORY[0x277D6E830])
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D2F428], v6);
  }

  else
  {
    v21 = *(v7 + 104);
    if (v20 == *MEMORY[0x277D6E840] || v20 == *MEMORY[0x277D6E848] || v20 == *MEMORY[0x277D6E838])
    {
      v21(v9, *MEMORY[0x277D2F420], v6);
    }

    else
    {
      v21(v9, *MEMORY[0x277D2F430], v6);
      (*(v11 + 8))(v13, v10);
    }
  }

  sub_219BDF234();
  sub_21913AD64(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v24 = sub_219BDCD44();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C09BA0;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x277CEAD18], v24);
  sub_21913ADC8(&qword_280EE8810, MEMORY[0x277D2D9A8], MEMORY[0x277D2D9A0]);
  v28 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v19, v28);
  sub_219BDF524();
  sub_219BE8F64();
  sub_21913ADC8(&qword_280EE8760, MEMORY[0x277D2DB18], MEMORY[0x277D2DB00]);
  sub_219BDCC64();
  v29 = v36;
  v30 = *(v35 + 8);
  v30(v5, v36);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v30)(v5, v29);
}

uint64_t sub_21913A498()
{
  sub_219BE0CE4();
  sub_21913ADC8(&qword_27CC168C0, MEMORY[0x277D2EC68], MEMORY[0x277D2EC60]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218806FD0(v1);
}

uint64_t sub_21913A530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[1] = a1;
  v47 = sub_219BE0874();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  sub_21913AD64(0, &qword_27CC168C8, MEMORY[0x277D2E718], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v36 = v35 - v14;
  v15 = sub_219BE0704();
  v37 = *(v15 - 8);
  v38 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v35[0] = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  if (v18)
  {
    v43 = *MEMORY[0x277D2E880];
    v19 = *(v4 + 104);
    v41 = (v7 + 16);
    v42 = v19;
    v39 = v7 + 32;
    v40 = v7 + 8;
    v20 = a3 + 40;
    v21 = MEMORY[0x277D84F90];
    v44 = v7;
    v45 = v4 + 104;
    do
    {
      v42(v46, v43, v47, v16);
      swift_bridgeObjectRetain_n();
      sub_219BDF024();
      (*v41)(v9, v12, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2191F9F94(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      v24 = v44;
      if (v23 >= v22 >> 1)
      {
        v21 = sub_2191F9F94((v22 > 1), v23 + 1, 1, v21);
      }

      (*(v24 + 8))(v12, v6);
      v21[2] = v23 + 1;
      (*(v24 + 32))(v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, v9, v6);

      v20 += 16;
      --v18;
    }

    while (v18);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  if (v21[2])
  {

    v25 = v36;
    sub_219BE06F4();
    v26 = 0;
    v28 = v37;
    v27 = v38;
  }

  else
  {
    v26 = 1;
    v28 = v37;
    v27 = v38;
    v25 = v36;
  }

  (*(v28 + 56))(v25, v26, 1, v27);

  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    return sub_21913ACD8(v25);
  }

  v30 = v35[0];
  (*(v28 + 32))(v35[0], v25, v27);
  sub_21913AD64(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v31 = sub_219BDCD44();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_219C09BA0;
  (*(v32 + 104))(v34 + v33, *MEMORY[0x277CEAD10], v31);
  sub_21913ADC8(&qword_27CC168D0, MEMORY[0x277D2E718], MEMORY[0x277D2E710]);
  sub_219BDCCC4();

  return (*(v28 + 8))(v30, v27);
}

uint64_t sub_21913AB44()
{
  sub_2189320DC(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21913AC5C(0);
  sub_219BE7564();
  sub_219BE5FC4();

  sub_219BDD154();
  return (*(v2 + 8))(v4, v1);
}

void sub_21913AC5C(uint64_t a1)
{
  if (!qword_27CC168B8)
  {
    sub_218931D04();
    sub_218931D5C();
    v1 = sub_219BE75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC168B8);
    }
  }
}

uint64_t sub_21913ACD8(uint64_t a1)
{
  sub_21913AD64(0, &qword_27CC168C8, MEMORY[0x277D2E718], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21913AD64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21913ADC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ButtonFillState.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_21913AED4()
{
  result = qword_27CC168D8;
  if (!qword_27CC168D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC168D8);
  }

  return result;
}

double sub_21913AF60@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_219BEEA84();
  v30 = *(v5 - 8);
  v6 = v30;
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeBoxFeedContentConfig(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[1];
  v29 = *v2;
  v13 = v29;
  v27 = v11;
  v28 = v12;
  sub_21913B2A0(a1, v11, type metadata accessor for RecipeBoxFeedContentConfig);
  v14 = type metadata accessor for RecipeBoxFeedServiceConfig(0);
  v15 = *(v2 + v14[6]);
  v16 = *(v2 + v14[7]);
  v17 = *(v6 + 16);
  v18 = v2 + v14[8];
  v19 = v31;
  v17(v8, v18, v31);
  v20 = v28;
  *a2 = v13;
  *(a2 + 1) = v20;
  v21 = v27;
  sub_21913B2A0(v27, &a2[v14[5]], type metadata accessor for RecipeBoxFeedContentConfig);
  *&a2[v14[6]] = v15;
  *&a2[v14[7]] = v16;
  v22 = v19;
  v17(&a2[v14[8]], v8, v19);
  v23 = v15;
  swift_unknownObjectRetain();

  v24 = [v16 autoRefreshMinimumInterval];
  (*(v30 + 8))(v8, v22);
  sub_21913B308(v21);
  result = v24;
  *&a2[v14[9]] = v24;
  return result;
}

uint64_t sub_21913B2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21913B308(uint64_t a1)
{
  v2 = type metadata accessor for RecipeBoxFeedContentConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21913B368()
{
  result = qword_27CC168F0;
  if (!qword_27CC168F0)
  {
    type metadata accessor for AudioPlaylistFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC168F0);
  }

  return result;
}

uint64_t sub_21913B3D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_219BE3204();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  sub_218DB964C(v2, v3);

  v5 = sub_219BE2E54();
  sub_219143724(0);
  sub_219BE2F64();

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2191437A8;
  *(v7 + 24) = v6;
  sub_218DB964C(v2, v3);

  v8 = sub_219BE2E54();
  sub_219BE2F64();

  v9 = sub_219BE2E54();
  sub_219BE2F64();

  v10 = sub_219BE2E54();
  v11 = sub_219BE2FD4();

  return v11;
}

void *sub_21913B5D4(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (!*a1)
  {
    sub_219144118();
    swift_allocError();
    v60 = 0;
    goto LABEL_47;
  }

  v6 = v4;
  v7 = *(v5 + 16);
  if (!v7)
  {
    v3 = MEMORY[0x277D84F98];
    goto LABEL_23;
  }

  v8 = 0;
  v9 = v5 + 32;
  v10 = v7 - 1;
  v3 = MEMORY[0x277D84F98];
  while (2)
  {
    v11 = (v9 + 152 * v8);
    v12 = v8;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      v13 = v11[1];
      v111 = *v11;
      v112 = v13;
      v14 = v11[2];
      v15 = v11[3];
      v16 = v11[5];
      v115 = v11[4];
      v116 = v16;
      v113 = v14;
      v114 = v15;
      v17 = v11[6];
      v18 = v11[7];
      v19 = v11[8];
      *&v118[32] = *(v11 + 18);
      *v118 = v18;
      *&v118[16] = v19;
      v117 = v17;
      v8 = v12 + 1;
      v20 = *(&v111 + 1);
      if (*(&v111 + 1))
      {
        break;
      }

      v11 = (v11 + 152);
      ++v12;
      if (v7 == v8)
      {
        goto LABEL_23;
      }
    }

    v98 = v10;
    v99 = v9;
    v100 = a3;
    v101 = a2;
    v127 = v6;
    v21 = v111;
    sub_218D9062C(&v111, v109);
    sub_218D9062C(&v111, v109);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_21870F700(v21, v20);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      sub_219481FA4(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_21870F700(v21, v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_52;
      }

LABEL_14:
      if (v29)
      {
        goto LABEL_15;
      }

LABEL_17:
      v3[(v23 >> 6) + 8] |= 1 << v23;
      v48 = (v3[6] + 16 * v23);
      *v48 = v21;
      v48[1] = v20;
      v49 = v3[7] + 152 * v23;
      v50 = *&v118[32];
      v52 = *v118;
      v51 = *&v118[16];
      *(v49 + 96) = v117;
      *(v49 + 112) = v52;
      *(v49 + 128) = v51;
      *(v49 + 144) = v50;
      v54 = v115;
      v53 = v116;
      v55 = v114;
      *(v49 + 32) = v113;
      *(v49 + 48) = v55;
      *(v49 + 64) = v54;
      *(v49 + 80) = v53;
      v56 = v112;
      *v49 = v111;
      *(v49 + 16) = v56;
      sub_218D90688(&v111);
      v57 = v3[2];
      v27 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (!v27)
      {
        v3[2] = v58;
        goto LABEL_19;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v47 = v23;
    sub_219492C4C();
    v23 = v47;
    if ((v29 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    v31 = v23;

    v32 = v3[7] + 152 * v31;
    v33 = *(v32 + 16);
    v109[0] = *v32;
    v109[1] = v33;
    v34 = *(v32 + 80);
    v36 = *(v32 + 32);
    v35 = *(v32 + 48);
    v109[4] = *(v32 + 64);
    v109[5] = v34;
    v109[2] = v36;
    v109[3] = v35;
    v38 = *(v32 + 112);
    v37 = *(v32 + 128);
    v39 = *(v32 + 96);
    v110 = *(v32 + 144);
    v109[7] = v38;
    v109[8] = v37;
    v109[6] = v39;
    v40 = v112;
    *v32 = v111;
    *(v32 + 16) = v40;
    v41 = v113;
    v42 = v114;
    v43 = v116;
    *(v32 + 64) = v115;
    *(v32 + 80) = v43;
    *(v32 + 32) = v41;
    *(v32 + 48) = v42;
    v44 = v117;
    v45 = *v118;
    v46 = *&v118[16];
    *(v32 + 144) = *&v118[32];
    *(v32 + 112) = v45;
    *(v32 + 128) = v46;
    *(v32 + 96) = v44;
    sub_218D90688(v109);
    sub_218D90688(&v111);
LABEL_19:
    v6 = v127;
    a3 = v100;
    a2 = v101;
    v10 = v98;
    v9 = v99;
    if (v98 != v12)
    {
      continue;
    }

    break;
  }

LABEL_23:
  if (!a3)
  {
    v111 = a2;
    v83 = sub_219BF5484();
    if (v3[2])
    {
      v80 = sub_21870F700(v83, v84);
      v86 = v85;

      if (v86)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    sub_219144118();
    swift_allocError();
    v60 = 1;
    goto LABEL_47;
  }

  if (a3 == 1)
  {
    *&v111 = a2;
    *(&v111 + 1) = 1;
    v78 = sub_219BF5484();
    if (!v3[2])
    {

LABEL_42:

      sub_219144118();
      swift_allocError();
      v60 = 2;
      goto LABEL_47;
    }

    v80 = sub_21870F700(v78, v79);
    v82 = v81;

    if ((v82 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_34:
    v87 = v3[7] + 152 * v80;
LABEL_38:
    v90 = *(v87 + 16);
    v111 = *v87;
    v112 = v90;
    v91 = *(v87 + 80);
    v93 = *(v87 + 32);
    v92 = *(v87 + 48);
    v115 = *(v87 + 64);
    v116 = v91;
    v113 = v93;
    v114 = v92;
    v94 = *(v87 + 96);
    v95 = *(v87 + 112);
    v96 = *(v87 + 128);
    *&v118[32] = *(v87 + 144);
    *v118 = v95;
    *&v118[16] = v96;
    v117 = v94;
    sub_218D9062C(&v111, v109);

    v76 = *&v118[24];
    v106 = v116;
    v107 = v117;
    v75 = v111;
    v102 = v112;
    v103 = v113;
    v77 = *&v118[8];
    v108 = *v118;
    v104 = v114;
    v105 = v115;
    v74 = MEMORY[0x277D84F98];
LABEL_39:
    v115 = v105;
    v116 = v106;
    v117 = v107;
    v111 = v75;
    v112 = v102;
    *v118 = v108;
    v113 = v103;
    v114 = v104;
    *&v118[8] = v77;
    *&v118[24] = v76;
    sub_21914459C(0, &qword_27CC16978, &type metadata for ChannelPickerConfig, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    *&v111 = v74;
    sub_2191445EC(0);
    swift_allocObject();
    sub_219BE3014();
    v3 = sub_219BE31C4();

    return v3;
  }

  if (a3 != 2)
  {
    if (!v3[2] || (v88 = sub_21870F700(a2, a3), (v89 & 1) == 0))
    {

      sub_219144118();
      swift_allocError();
      v60 = 4;
      goto LABEL_47;
    }

    v87 = v3[7] + 152 * v88;
    goto LABEL_38;
  }

  *&v111 = a2;
  *(&v111 + 1) = 2;
  v61 = sub_219BF5484();
  if (v3[2])
  {
    v63 = sub_21870F700(v61, v62);
    v65 = v64;

    if (v65)
    {
      v66 = v3[7] + 152 * v63;
      v67 = *(v66 + 16);
      v119 = *v66;
      v120 = v67;
      v68 = *(v66 + 80);
      v70 = *(v66 + 32);
      v69 = *(v66 + 48);
      v123 = *(v66 + 64);
      v124 = v68;
      v121 = v70;
      v122 = v69;
      v71 = *(v66 + 96);
      v72 = *(v66 + 112);
      v73 = *(v66 + 128);
      *&v126[32] = *(v66 + 144);
      *v126 = v72;
      *&v126[16] = v73;
      v125 = v71;
      sub_218D9062C(&v119, &v111);

      v74 = sub_2191438F8(&v119);
      v106 = v124;
      v107 = v125;
      v75 = v119;
      v102 = v120;
      v103 = v121;
      v76 = *&v126[24];
      v104 = v122;
      v105 = v123;
      v77 = *&v126[8];
      v108 = *v126;
      goto LABEL_39;
    }
  }

  else
  {
  }

  sub_219144118();
  swift_allocError();
  v60 = 3;
LABEL_47:
  *v59 = v60;
  swift_willThrow();
  return v3;
}

uint64_t sub_21913BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21914459C(0, &qword_27CC16920, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D83940]);
  sub_219BE3204();

  v6 = sub_219BE2E54();
  sub_219BE2F74();

  v7 = swift_allocObject();
  v8 = *(a1 + 112);
  *(v7 + 112) = *(a1 + 96);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(a1 + 128);
  *(v7 + 160) = *(a1 + 144);
  v9 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v9;
  v10 = *(a1 + 80);
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = v10;
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  sub_218D9062C(a1, v15);
  v12 = sub_219BE2E54();
  v13 = sub_219BE2F74();

  return v13;
}

uint64_t sub_21913BE34(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v18 = *(a1 + 96);
  v19 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a1 + 112);
  v11[6] = v18;
  v11[7] = v8;
  v11[2] = v14;
  v11[3] = v5;
  v11[4] = v16;
  v11[5] = v1;
  v20 = *(a1 + 128);
  v12 = *(a1 + 128);
  v11[0] = v13[0];
  v11[1] = v3;
  sub_21914459C(0, &qword_27CC115B8, &type metadata for ChannelPickerPrewarmResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_218D2E330(v13, v10);
  return sub_219BE3014();
}

void sub_21913BF20(uint64_t a1, __n128 a2)
{
  v146 = type metadata accessor for ChannelPickerEngagementModel(0);
  MEMORY[0x28223BE20](v146);
  v145 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for ChannelPickerElementModel(0);
  v120 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v141 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = &v119 - v7;
  MEMORY[0x28223BE20](v8);
  v151 = (&v119 - v9);
  MEMORY[0x28223BE20](v10);
  v150 = &v119 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v119 - v13);
  v15 = *(a1 + 16);
  if (!v15)
  {
    return;
  }

  v16 = 0;
  v17 = a1 + 32;
  v121 = &v169[23];
  v18 = MEMORY[0x277D84F90];
  v19 = v2;
  v148 = v2;
  v122 = a1 + 32;
  v123 = v15;
  while (1)
  {
    memcpy(v169, (v17 + 344 * v16), 0x151uLL);
    if (BYTE1(v169[4]) == 3)
    {
      break;
    }

    sub_218D2EB00(v169, &v160);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_2191F8960(0, *(v18 + 2) + 1, 1, v18);
    }

    v84 = *(v18 + 2);
    v83 = *(v18 + 3);
    if (v84 >= v83 >> 1)
    {
      v18 = sub_2191F8960((v83 > 1), v84 + 1, 1, v18);
    }

    *(v18 + 2) = v84 + 1;
    memcpy(&v18[344 * v84 + 32], v169, 0x151uLL);
LABEL_4:
    if (++v16 == v15)
    {
      return;
    }
  }

  v20 = v169[7];
  if (!v169[7])
  {
    goto LABEL_4;
  }

  v144 = v18;
  v140 = v16;
  v21 = *(v169[7] + 16);
  v149 = (v169[7] + 16);
  v22 = v19;

  sub_218D2EB00(v169, &v160);
  v152 = v20;

  swift_beginAccess();
  v153 = v21;
  if (!v21)
  {
LABEL_52:

    v54 = v152;
    v53 = v152[2];
    v23 = v53;
    goto LABEL_55;
  }

  v23 = 0;
  v24 = (*(v120 + 80) + 32) & ~*(v120 + 80);
  v25 = v152 + v24;
  v26 = *(v120 + 72);
  v143 = v24;
  v27 = v26 + v24;
  v147 = v26;
  while (1)
  {
    v28 = *(v22 + 256);
    sub_219144534(v25, v14, type metadata accessor for ChannelPickerElementModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      break;
    }

    if (EnumCaseMultiPayload)
    {
      v43 = v14[7];
      v165[1] = v14[6];
      v166 = v43;
      v167[0] = v14[8];
      *(v167 + 9) = *(v14 + 137);
      v44 = v14[3];
      v162 = v14[2];
      v163 = v44;
      v45 = v14[5];
      v164 = v14[4];
      v165[0] = v45;
      v46 = v14[1];
      v160 = *v14;
      v161 = v46;
      v37 = *(&v160 + 1);
      v35 = v160;

      sub_218980B90(&v160);
      if (*(v28 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v30 = v14[5];
      v164 = v14[4];
      v165[0] = v30;
      *(v165 + 9) = *(v14 + 89);
      v31 = v14[1];
      v160 = *v14;
      v161 = v31;
      v32 = v14[3];
      v162 = v14[2];
      v163 = v32;
      v33 = *(*__swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1)) + 16);

      v34 = [v33 identifier];
      v35 = sub_219BF5414();
      v37 = v36;

      v22 = v148;
      sub_218980BE4(&v160);
      if (*(v28 + 16))
      {
        goto LABEL_21;
      }
    }

LABEL_9:

LABEL_10:
    ++v23;
    v25 += v26;
    v27 += v26;
    if (v153 == v23)
    {
      goto LABEL_52;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v38 = v14[9];
    v167[0] = v14[8];
    v167[1] = v38;
    v168 = v14[10];
    v39 = v14[5];
    v164 = v14[4];
    v165[0] = v39;
    v40 = v14[7];
    v165[1] = v14[6];
    v166 = v40;
    v41 = v14[1];
    v160 = *v14;
    v161 = v41;
    v42 = v14[3];
    v162 = v14[2];
    v163 = v42;
    v37 = *(&v41 + 1);
    v35 = v41;

    sub_218980B3C(&v160);
    if (*(v28 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v47 = v22;
  v48 = v145;
  sub_218D2E9EC(v14, v145, type metadata accessor for ChannelPickerEngagementModel);

  v35 = sub_219BE3554();
  v37 = v49;
  v50 = v48;
  v22 = v47;
  v26 = v147;
  sub_219144364(v50, type metadata accessor for ChannelPickerEngagementModel);
  if (!*(v28 + 16))
  {
    goto LABEL_9;
  }

LABEL_21:
  sub_21870F700(v35, v37);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
    goto LABEL_10;
  }

  v53 = v23 + 1;
  v54 = v152;
  if (__OFADD__(v23, 1))
  {
    goto LABEL_77;
  }

  v55 = v152[2];
  while (2)
  {
    if (v53 != v55)
    {
      if (v53 >= v55)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v152 = v54;
      v56 = v150;
      sub_219144534(v54 + v27, v150, type metadata accessor for ChannelPickerElementModel);
      v57 = *(v22 + 256);
      sub_219144534(v56, v151, type metadata accessor for ChannelPickerElementModel);
      v58 = swift_getEnumCaseMultiPayload();
      if (v58 > 1)
      {
        if (v58 != 2)
        {
          v78 = v22;
          v79 = v145;
          sub_218D2E9EC(v151, v145, type metadata accessor for ChannelPickerEngagementModel);

          v64 = sub_219BE3554();
          v66 = v80;
          v81 = v79;
          v22 = v78;
          v26 = v147;
          sub_219144364(v81, type metadata accessor for ChannelPickerEngagementModel);
          if (!*(v57 + 16))
          {
            goto LABEL_39;
          }

          goto LABEL_36;
        }

        v67 = v151[9];
        v167[0] = v151[8];
        v167[1] = v67;
        v168 = v151[10];
        v68 = v151[5];
        v164 = v151[4];
        v165[0] = v68;
        v69 = v151[7];
        v165[1] = v151[6];
        v166 = v69;
        v70 = v151[1];
        v160 = *v151;
        v161 = v70;
        v71 = v151[3];
        v162 = v151[2];
        v163 = v71;
        v66 = *(&v70 + 1);
        v64 = v70;

        sub_218980B3C(&v160);
        if (*(v57 + 16))
        {
          goto LABEL_36;
        }

LABEL_39:

        sub_219144364(v150, type metadata accessor for ChannelPickerElementModel);
      }

      else
      {
        if (v58)
        {
          v72 = v151[7];
          v165[1] = v151[6];
          v166 = v72;
          v167[0] = v151[8];
          *(v167 + 9) = *(v151 + 137);
          v73 = v151[3];
          v162 = v151[2];
          v163 = v73;
          v74 = v151[5];
          v164 = v151[4];
          v165[0] = v74;
          v75 = v151[1];
          v160 = *v151;
          v161 = v75;
          v66 = *(&v160 + 1);
          v64 = v160;

          sub_218980B90(&v160);
          if (!*(v57 + 16))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v59 = v151[5];
          v164 = v151[4];
          v165[0] = v59;
          *(v165 + 9) = *(v151 + 89);
          v60 = v151[1];
          v160 = *v151;
          v161 = v60;
          v61 = v151[3];
          v162 = v151[2];
          v163 = v61;
          v62 = *(*__swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1)) + 16);

          v63 = [v62 identifier];
          v64 = sub_219BF5414();
          v66 = v65;

          v22 = v148;
          sub_218980BE4(&v160);
          if (!*(v57 + 16))
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        sub_21870F700(v64, v66);
        v77 = v76;

        sub_219144364(v150, type metadata accessor for ChannelPickerElementModel);
        if (v77)
        {
          v54 = v152;
LABEL_25:
          ++v53;
          v55 = v54[2];
          v149 = v54 + 2;
          v27 += v26;
          continue;
        }
      }

      v54 = v152;
      if (v53 != v23)
      {
        if (v23 < 0)
        {
          goto LABEL_70;
        }

        v82 = *v149;
        if (v23 >= *v149)
        {
          goto LABEL_71;
        }

        sub_219144534(v152 + v143 + v23 * v26, v142, type metadata accessor for ChannelPickerElementModel);
        if (v53 >= v82)
        {
          goto LABEL_72;
        }

        sub_219144534(v54 + v27, v141, type metadata accessor for ChannelPickerElementModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_2194AB9FC(v54);
        }

        sub_219143894(v141, v54 + v143 + v23 * v26);
        if (v53 >= v54[2])
        {
          goto LABEL_73;
        }

        sub_219143894(v142, v54 + v27);
      }

      ++v23;
      goto LABEL_25;
    }

    break;
  }

  if (v53 < v23)
  {
    goto LABEL_75;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
LABEL_55:
    if (!__OFADD__(v53, v23 - v53))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159 = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v23 <= v54[3] >> 1)
      {
        v152 = v54;
      }

      else
      {
        if (v53 <= v23)
        {
          v86 = v23;
        }

        else
        {
          v86 = v53;
        }

        v152 = sub_2191F8584(isUniquelyReferenced_nonNull_native, v86, 1, v54);
        v159 = v152;
      }

      v147 = v169[21];
      v149 = v169[22];
      v143 = v169[19];
      v124 = v169[20];
      v130 = LOBYTE(v169[18]);
      v138 = v169[15];
      v139 = v169[17];
      v153 = v169[16];
      v87 = v169[14];
      v136 = v169[11];
      v137 = v169[13];
      v88 = v169[12];
      v89 = v169[10];
      v134 = v169[5];
      v135 = v169[9];
      v125 = v169[6];
      v126 = v169[8];
      v133 = LOBYTE(v169[4]);
      v90 = v169[3];
      v131 = v169[0];
      v132 = v169[2];
      v91 = v169[1];
      sub_2194B3A6C(v23, v53, 0);
      v155[0] = v89;
      LOBYTE(v158[0]) = v88;
      v92 = v124;
      LOBYTE(v157[0]) = v87;
      LOBYTE(v156[0]) = v130;
      v93 = v121;
      v94 = v121[7];
      v165[1] = v121[6];
      v166 = v94;
      v167[0] = v121[8];
      *(v167 + 9) = *(v121 + 137);
      v95 = v121[3];
      v162 = v121[2];
      v163 = v95;
      v96 = v121[5];
      v164 = v121[4];
      v165[0] = v96;
      v97 = v121[1];
      v160 = *v121;
      v161 = v97;
      v127 = v155[0];
      v128 = v88;
      v129 = v87;
      v130 = v130;

      v98 = v91;

      v99 = v90;

      v100 = v125;

      v101 = v126;

      v102 = v92;

      sub_219143FFC(v93, v155, &qword_27CC16928, &type metadata for ChannelPickerCategoryModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_2191F8960(0, *(v144 + 2) + 1, 1, v144);
      }

      v104 = *(v144 + 2);
      v103 = *(v144 + 3);
      v105 = v152;
      if (v104 >= v103 >> 1)
      {
        v144 = sub_2191F8960((v103 > 1), v104 + 1, 1, v144);
      }

      sub_21914407C(v169);
      v106 = v144;
      *(v144 + 2) = v104 + 1;
      v107 = &v106[344 * v104];
      v108 = v132;
      *(v107 + 4) = v131;
      *(v107 + 5) = v98;
      v107 += 32;
      *(v107 + 2) = v108;
      *(v107 + 3) = v99;
      v107[32] = v133;
      v107[33] = 3;
      LOWORD(v108) = v158[7];
      *(v107 + 34) = *&v158[5];
      *(v107 + 19) = v108;
      v109 = v135;
      *(v107 + 5) = v134;
      *(v107 + 6) = v100;
      *(v107 + 7) = v105;
      *(v107 + 8) = v101;
      *(v107 + 9) = v109;
      v107[80] = v127;
      v18 = v106;
      LODWORD(v109) = *v155;
      *(v107 + 21) = *&v155[3];
      *(v107 + 81) = v109;
      *(v107 + 11) = v136;
      v107[96] = v128;
      LODWORD(v109) = *v158;
      *(v107 + 25) = *(&v158[1] + 1);
      *(v107 + 97) = v109;
      *(v107 + 13) = v137;
      v107[112] = v129;
      LODWORD(v109) = *(v157 + 3);
      *(v107 + 113) = v157[0];
      *(v107 + 29) = v109;
      v110 = v153;
      *(v107 + 15) = v138;
      *(v107 + 16) = v110;
      *(v107 + 17) = v139;
      v107[144] = v130;
      LODWORD(v110) = *(v156 + 3);
      *(v107 + 145) = v156[0];
      *(v107 + 37) = v110;
      *(v107 + 19) = v143;
      *(v107 + 20) = v102;
      v111 = v149;
      *(v107 + 21) = v147;
      *(v107 + 22) = v111;
      v112 = v160;
      *(v107 + 200) = v161;
      *(v107 + 184) = v112;
      v113 = v162;
      v114 = v163;
      v115 = v164;
      *(v107 + 264) = v165[0];
      *(v107 + 248) = v115;
      *(v107 + 232) = v114;
      *(v107 + 216) = v113;
      v116 = v165[1];
      v117 = v166;
      v118 = v167[0];
      *(v107 + 321) = *(v167 + 9);
      *(v107 + 296) = v117;
      *(v107 + 312) = v118;
      *(v107 + 280) = v116;
      v19 = v148;
      v17 = v122;
      v15 = v123;
      v16 = v140;
      goto LABEL_4;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_21913CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 112);
  if (*(a2 + 24) == 1 || v8 == 0)
  {

    v8 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v12[0] = a4;
  v12[1] = a5;
  v10 = sub_21913CC68(v8, a3, v12);

  return v10;
}

uint64_t sub_21913CC68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v28 = MEMORY[0x277D84F90];
  *&v27[0] = v5;
  *(&v27[0] + 1) = v6;
  sub_21913D078(v27);
  MEMORY[0x21CECC690]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v7 = v28;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    do
    {
      v10 = v9[9];
      v27[8] = v9[8];
      v27[9] = v10;
      v27[10] = v9[10];
      v11 = v9[5];
      v27[4] = v9[4];
      v27[5] = v11;
      v12 = v9[7];
      v27[6] = v9[6];
      v27[7] = v12;
      v13 = v9[1];
      v27[0] = *v9;
      v27[1] = v13;
      v14 = v9[3];
      v27[2] = v9[2];
      v27[3] = v14;
      if (v14)
      {
        v15 = v9[9];
        v26[8] = v9[8];
        v26[9] = v15;
        v26[10] = v9[10];
        v16 = v9[5];
        v26[4] = v9[4];
        v26[5] = v16;
        v17 = v9[7];
        v26[6] = v9[6];
        v26[7] = v17;
        v18 = v9[1];
        v26[0] = *v9;
        v26[1] = v18;
        v19 = v9[3];
        v26[2] = v9[2];
        v26[3] = v19;
        v25[0] = v5;
        v25[1] = v6;
        sub_218D2E4D0(v27, &v24);
        sub_21913DF64(v26, a2, v25);
        v20 = sub_218D2E52C(v27);
        MEMORY[0x21CECC690](v20);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v7 = v28;
      }

      v9 += 11;
      --v8;
    }

    while (v8);
  }

  sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
  *&v27[0] = v7;
  v21 = sub_219BE2E54();
  sub_218D2E580(0);
  sub_2191440D0(&qword_27CC16940, sub_218D2E580, MEMORY[0x277D83988]);
  v22 = sub_219BE2F34();

  return v22;
}

double sub_21913CEC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 80);
  v10 = *(a2 + 88);
  v9 = *(a2 + 96);
  v11 = 0xE000000000000000;
  v12 = *(a2 + 104);
  v30 = *a1;
  if (!v6)
  {
    v24 = 0;
    v25 = *(a2 + 48);
    v23 = 0xE000000000000000;
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v24 = *(a2 + 16);
    v25 = *(a2 + 48);
    v23 = *(a2 + 24);
LABEL_7:
    if (!v7)
    {
      v5 = 0;
    }

    v26 = v5;
    if (v7)
    {
      v11 = *(a2 + 40);
    }

    v28 = v11;
    v29 = *(a2 + 72);
    v27 = *(a2 + 56);

    v13 = v8;
    sub_218D2E488(v8, v10);
    v6 = v10;
    v15 = v24;
    v14 = v25;
    v16 = v23;
    v17 = *(a2 + 128);
    if (!v17)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v28 = 0xE000000000000000;
  v29 = 0;
  v13 = 0;
  v9 = 0;
  v12 = 0;
  v14 = 0;
  v26 = 0;
  v15 = 0;
  v27 = 0u;
  v16 = 0xE000000000000000;
  v17 = *(a2 + 128);
  if (!v17)
  {
LABEL_4:
    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_13;
  }

LABEL_12:
  v18 = *(a2 + 120);
  v19 = v17;
LABEL_13:
  if (*(a2 + 144))
  {
    v20 = *(a2 + 136);
    v21 = *(a2 + 144);
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v26;
  *(a3 + 24) = v28;
  *(a3 + 32) = v14;
  *(a3 + 40) = v27;
  *(a3 + 56) = v29;
  *(a3 + 64) = v13;
  *(a3 + 72) = v6;
  *(a3 + 80) = v9;
  *(a3 + 88) = v12;
  *(a3 + 96) = v30;
  *(a3 + 104) = v18;
  *(a3 + 112) = v19;
  *(a3 + 120) = v20;
  *(a3 + 128) = v21;

  return result;
}

uint64_t sub_21913D078(unint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_21914418C(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v80 - v5;
  v6 = sub_219BE3794();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v98 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v80 - v9;
  v107 = sub_219BE38C4();
  v104 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v94 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v80 - v13;
  v14 = sub_219BDBD64();
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x28223BE20](v14);
  v85 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ChannelPickerEngagementModel(0);
  MEMORY[0x28223BE20](v93);
  v99 = (&v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21914418C(0, &unk_280EE6610, MEMORY[0x277D31680], v3);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  sub_21914418C(0, &qword_280EE65C0, MEMORY[0x277D31758], v3);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - v26;
  sub_21914418C(0, &unk_280EE6660, MEMORY[0x277D31550], v3);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  v34 = sub_219BE3514();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v39 = MEMORY[0x28223BE20](v36);
  v40 = *(v103 + 8);
  v105 = v30;
  v103 = v40;
  if (v40 >= 3)
  {
    (*(v35 + 56))(v33, 1, 1, v34, v39);
    sub_2191444D4(v33, &unk_280EE6660, MEMORY[0x277D31550], MEMORY[0x277D83D88], sub_21914418C);
    v54 = MEMORY[0x277D84F90];
  }

  else
  {
    v84 = v38;
    v92 = v10;
    v41 = &v80 - v37;
    (*(v35 + 104))(v33, **(&unk_278242BA0 + v40), v34, v39);
    (*(v35 + 56))(v33, 0, 1, v34);
    v95 = v35;
    v42 = *(v35 + 32);
    v90 = v34;
    v42(v41, v33, v34);
    __swift_project_boxed_opaque_existential_1((v2 + 216), *(v2 + 240));
    v96 = v27;
    sub_219BE3AC4();
    __swift_project_boxed_opaque_existential_1((v2 + 216), *(v2 + 240));
    v89 = sub_219BE3A14();
    v44 = v43;
    __swift_project_boxed_opaque_existential_1((v2 + 216), *(v2 + 240));
    v97 = v21;
    sub_219BE3AD4();
    __swift_project_boxed_opaque_existential_1((v2 + 216), *(v2 + 240));
    v45 = v41;
    v46 = sub_219BE3AE4();
    v82 = v47;
    v83 = v46;
    v88 = v44;
    if (!v44)
    {
      v48 = v85;
      sub_219BDBD54();
      v49 = sub_219BDBD44();
      v88 = v50;
      v89 = v49;
      (*(v86 + 8))(v48, v87);
    }

    v51 = v107;
    v52 = v104;
    sub_219144454(v96, v24, &qword_280EE65C0, MEMORY[0x277D31758]);
    v53 = *(v52 + 48);
    if (v53(v24, 1, v51) == 1)
    {
      (*(v52 + 104))(v106, *MEMORY[0x277D31740], v51);
      if (v53(v24, 1, v51) != 1)
      {
        sub_2191444D4(v24, &qword_280EE65C0, MEMORY[0x277D31758], MEMORY[0x277D83D88], sub_21914418C);
      }
    }

    else
    {
      (*(v52 + 32))(v106, v24, v51);
    }

    v55 = v91;
    sub_219144454(v97, v91, &unk_280EE6610, MEMORY[0x277D31680]);
    v56 = v100;
    v57 = v101;
    v58 = *(v100 + 48);
    if (v58(v55, 1, v101) == 1)
    {
      (*(v56 + 104))(v92, *MEMORY[0x277D31670], v57);
      if (v58(v55, 1, v57) != 1)
      {
        sub_2191444D4(v55, &unk_280EE6610, MEMORY[0x277D31680], MEMORY[0x277D83D88], sub_21914418C);
      }
    }

    else
    {
      (*(v56 + 32))(v92, v55, v57);
    }

    sub_2191440D0(&qword_280EE6670, MEMORY[0x277D31550], MEMORY[0x277D31580]);
    v81 = v41;
    v59 = v90;
    v108[0] = sub_219BF7894();
    v108[1] = v60;
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    sub_2191440D0(&unk_280EE65D0, MEMORY[0x277D31758], MEMORY[0x277D31768]);
    v62 = v106;
    v61 = v107;
    v63 = sub_219BF7894();
    MEMORY[0x21CECC330](v63);

    v87 = v108[1];
    v91 = v108[0];
    (*(v95 + 16))(v84, v45, v59);
    v64 = v104;
    (*(v104 + 16))(v94, v62, v61);
    v65 = v92;
    (*(v56 + 16))(v98, v92, v57);
    v66 = sub_219BE3C04();
    (*(*(v66 - 8) + 56))(v102, 1, 1, v66);
    v67 = v99;
    sub_219BE3544();
    (*(v56 + 8))(v65, v57);
    v34 = v90;
    v35 = v95;
    (*(v64 + 8))(v106, v107);
    v68 = v88;
    *v67 = v89;
    v67[1] = v68;
    sub_21914418C(0, &qword_27CC16970, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D84560]);
    v69 = *(type metadata accessor for ChannelPickerElementModel(0) - 8);
    v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_219C09BA0;
    sub_219144534(v67, v54 + v70, type metadata accessor for ChannelPickerEngagementModel);
    swift_storeEnumTagMultiPayload();
    sub_219144364(v67, type metadata accessor for ChannelPickerEngagementModel);
    v71 = MEMORY[0x277D83D88];
    sub_2191444D4(v97, &unk_280EE6610, MEMORY[0x277D31680], MEMORY[0x277D83D88], sub_21914418C);
    sub_2191444D4(v96, &qword_280EE65C0, MEMORY[0x277D31758], v71, sub_21914418C);
    (*(v35 + 8))(v81, v34);
  }

  v137 = 0x656D656761676E65;
  v138 = 0xEB000000002D746ELL;
  v72 = v105;
  if (v103 > 2)
  {
    (*(v35 + 56))(v105, 1, 1, v34);
    sub_2191444D4(v72, &unk_280EE6660, MEMORY[0x277D31550], MEMORY[0x277D83D88], sub_21914418C);
    v75 = 0xE700000000000000;
    v76 = 0x64696C61766E69;
  }

  else
  {
    (*(v35 + 104))(v105, **(&unk_278242BA0 + v103), v34);
    (*(v35 + 56))(v72, 0, 1, v34);
    v73 = sub_219BE34F4();
    v75 = v74;
    (*(v35 + 8))(v72, v34);
    v76 = v73;
  }

  MEMORY[0x21CECC330](v76, v75);

  v77 = v137;
  v78 = v138;
  sub_218D2E5FC(v135);
  v133 = v135[7];
  v134[0] = v136[0];
  *(v134 + 9) = *(v136 + 9);
  v131 = v135[5];
  v132 = v135[6];
  v128 = v135[2];
  v129 = v135[3];
  v130 = v135[4];
  v126 = v135[0];
  v142 = 1;
  v141 = 1;
  v140 = 1;
  v139 = 1;
  v127 = v135[1];
  memset(v108, 0, sizeof(v108));
  v109 = 1024;
  v110 = v77;
  v111 = v78;
  v113 = 0;
  v114 = 0;
  v112 = v54;
  v115 = 1;
  v116 = 0;
  v117 = 1;
  v118 = 0;
  v119 = 1;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 1;
  v124 = 0u;
  v125 = 0u;
  sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_21913DF64(unsigned __int128 *a1, uint64_t a2, uint64_t *a3)
{
  v7 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v7);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[9];
  v151 = a1[8];
  v152 = v11;
  v153 = a1[10];
  v12 = a1[5];
  v147 = a1[4];
  v148 = v12;
  v13 = a1[6];
  v150 = a1[7];
  v149 = v13;
  v14 = a1[1];
  v144 = *a1;
  v145 = v14;
  v15 = a1[2];
  v146[1] = a1[3];
  v146[0] = v15;
  v16 = *(&v146[1] + 1);
  if (!*(&v146[1] + 1))
  {
    sub_219144118();
    swift_allocError();
    *v24 = 5;
    sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();
    return;
  }

  if (BYTE1(v146[0]) <= 1u)
  {
    if (!BYTE1(v146[0]))
    {
      v25 = *(&v146[0] + 1);
      v26 = *&v146[1];
      if (*&v146[1] && (*(v146 + 8) == __PAIR128__(0x8000000219D0D400, 0xD00000000000001BLL) || (sub_219BF78F4() & 1) != 0))
      {
        sub_21914418C(0, &qword_280E8F130, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83940]);
        sub_219BE3204();
        v27 = swift_allocObject();
        v28 = v152;
        *(v27 + 144) = v151;
        *(v27 + 160) = v28;
        *(v27 + 176) = v153;
        v29 = v148;
        *(v27 + 80) = v147;
        *(v27 + 96) = v29;
        v30 = v150;
        *(v27 + 112) = v149;
        *(v27 + 128) = v30;
        v31 = v145;
        *(v27 + 16) = v144;
        *(v27 + 32) = v31;
        v32 = v146[1];
        *(v27 + 48) = v146[0];
        *(v27 + 64) = v32;
        *(v27 + 192) = v3;
        sub_218D2E4D0(&v144, &v110);

        v33 = sub_219BE2E54();
        sub_219BE2F64();

        v34 = sub_219BE2E54();
        sub_219BE2FD4();

        return;
      }

      sub_218D2E5FC(&v135);
      v155 = v144;
      v156 = v145;
      v103 = v144;
      v104 = v145;
      v109[0] = v147;
      v114[0] = v148;
      *(&v102 + 7) = *(&v148 + 1);
      HIBYTE(v102) = v149;
      LOBYTE(v154) = 0;
      *&v101[7] = v150;
      v119 = BYTE8(v151);
      v158 = v150;
      v159 = v152;
      *&v100[7] = v152;
      v160 = v153;
      v121 = v153;
      *(v130 + 9) = *(v143 + 9);
      v129 = v142;
      v130[0] = v143[0];
      v127 = v140;
      v128 = v141;
      v123 = v136;
      v122 = v135;
      v126 = v139;
      v125 = v138;
      v124 = v137;
      v110 = v144;
      v111 = v145;
      LOWORD(v112[0]) = LOBYTE(v146[0]);
      *(&v112[0] + 1) = v25;
      v112[1] = v26;
      v113 = v147;
      *&v114[1] = v102;
      v115 = *(&v149 + 1);
      v116 = 0;
      v118 = v151;
      *&v117[15] = *(&v150 + 1);
      *v117 = *v101;
      *v120 = *v100;
      *&v120[15] = *(&v152 + 1);
      sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
      swift_allocObject();

      v80 = MEMORY[0x277D837D0];
      sub_219143FFC(&v155, &v154, &qword_280E8F860, MEMORY[0x277D837D0]);
      sub_219143FFC(&v156, &v154, &qword_280E8F860, v80);
      sub_219144534(v109, &v154, sub_2186D0AF8);
      sub_219143FFC(&v158, &v154, &qword_280E8F860, v80);
      sub_219143FFC(&v159, &v154, &qword_280E8F860, v80);
      v81 = &v154;
      goto LABEL_34;
    }

    v58 = *a3;
    v59 = a3[1];
    v154 = *(a1 + 40);
    v60 = *(&v154 + 1);
    if (*(&v154 + 1))
    {
      v61 = v154;
      v62 = __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
      v63 = *(*v62 + 72);
      v110 = __PAIR128__(v60, v61);
      MEMORY[0x28223BE20](v62);
      *(&v83 - 2) = &v110;
      sub_219143FFC(&v154, &v135, &qword_280E8F860, MEMORY[0x277D837D0]);

      v64 = sub_2186D128C(sub_2186D1338, (&v83 - 4), v63);

      if (v64)
      {
        v65 = sub_2191444D4(&v154, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_21914459C);
        MEMORY[0x28223BE20](v65);
        *(&v83 - 4) = &v144;
        *(&v83 - 3) = v58;
        *(&v83 - 2) = v59;
        *(&v83 - 1) = v3;
        sub_21914418C(0, &qword_27CC16958, MEMORY[0x277D34B50], MEMORY[0x277D83940]);
        sub_219BE3204();
        v66 = swift_allocObject();
        v67 = v152;
        v66[9] = v151;
        v66[10] = v67;
        v66[11] = v153;
        v68 = v148;
        v66[5] = v147;
        v66[6] = v68;
        v69 = v150;
        v66[7] = v149;
        v66[8] = v69;
        v70 = v145;
        v66[1] = v144;
        v66[2] = v70;
        v71 = v146[1];
        v66[3] = v146[0];
        v66[4] = v71;
        sub_218D2E4D0(&v144, &v110);
        v72 = sub_219BE2E54();
        sub_219BE2F84();

        v73 = swift_allocObject();
        v74 = v152;
        v73[9] = v151;
        v73[10] = v74;
        v73[11] = v153;
        v75 = v148;
        v73[5] = v147;
        v73[6] = v75;
        v76 = v150;
        v73[7] = v149;
        v73[8] = v76;
        v77 = v145;
        v73[1] = v144;
        v73[2] = v77;
        v78 = v146[1];
        v73[3] = v146[0];
        v73[4] = v78;
        sub_218D2E4D0(&v144, &v110);
        v79 = sub_219BE2E54();
        sub_219BE3054();

        return;
      }
    }

    sub_218D2E5FC(&v135);
    v155 = v144;
    v156 = v145;
    *&v108[11] = v144;
    *&v108[19] = v145;
    *&v108[3] = v154;
    v157 = v147;
    v114[0] = v148;
    HIBYTE(v107) = v149;
    *(&v107 + 7) = *(&v148 + 1);
    v119 = BYTE8(v151);
    LOBYTE(v109[0]) = 0;
    *&v106[7] = v150;
    *(v130 + 9) = *(v143 + 9);
    v129 = v142;
    v130[0] = v143[0];
    v127 = v140;
    v128 = v141;
    v158 = v150;
    v159 = v152;
    *&v105[7] = v152;
    v160 = v153;
    v121 = v153;
    v123 = v136;
    v122 = v135;
    v126 = v139;
    v125 = v138;
    v124 = v137;
    LOBYTE(v112[0]) = v146[0];
    BYTE1(v112[0]) = 1;
    v110 = v144;
    v111 = v145;
    *(v112 + 2) = *v108;
    v112[1] = *(&v154 + 1);
    v113 = v147;
    *&v114[1] = v107;
    v115 = *(&v149 + 1);
    v116 = 0;
    v118 = v151;
    *&v117[15] = *(&v150 + 1);
    *v117 = *v106;
    *v120 = *v105;
    *&v120[15] = *(&v152 + 1);
    sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v80 = MEMORY[0x277D837D0];
LABEL_33:
    sub_219143FFC(&v155, v109, &qword_280E8F860, v80);
    sub_219143FFC(&v156, v109, &qword_280E8F860, v80);
    sub_219144534(&v157, v109, sub_2186D0AF8);
    sub_219143FFC(&v158, v109, &qword_280E8F860, v80);
    sub_219143FFC(&v159, v109, &qword_280E8F860, v80);
    v81 = v109;
LABEL_34:
    sub_219143FFC(&v160, v81, &qword_280E8F860, v80);
    sub_219BE3014();
    return;
  }

  if (BYTE1(v146[0]) != 2)
  {
    if (BYTE1(v146[0]) == 3)
    {
      MEMORY[0x28223BE20](v8);
      *(&v83 - 4) = &v144;
      *(&v83 - 3) = v16;
      *(&v83 - 2) = v3;
      sub_21914418C(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);

      sub_219BE3204();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = a2;
      v18 = v152;
      *(v17 + 160) = v151;
      *(v17 + 176) = v18;
      *(v17 + 192) = v153;
      v19 = v148;
      *(v17 + 96) = v147;
      *(v17 + 112) = v19;
      v20 = v150;
      *(v17 + 128) = v149;
      *(v17 + 144) = v20;
      v21 = v145;
      *(v17 + 32) = v144;
      *(v17 + 48) = v21;
      v22 = v146[1];
      *(v17 + 64) = v146[0];
      *(v17 + 80) = v22;

      sub_218D2E4D0(&v144, &v110);
      v23 = sub_219BE2E54();
      sub_219BE2F64();

      return;
    }

    sub_218D2E5FC(&v135);
    v154 = *(v146 + 8);
    v155 = v144;
    v156 = v145;
    *&v134[11] = v144;
    *&v134[19] = v145;
    *&v134[3] = *(v146 + 8);
    v157 = v147;
    v114[0] = v148;
    HIBYTE(v133) = v149;
    *(&v133 + 7) = *(&v148 + 1);
    LOBYTE(v109[0]) = 0;
    *&v132[7] = v150;
    v119 = BYTE8(v151);
    v158 = v150;
    v159 = v152;
    *&v131[7] = v152;
    v160 = v153;
    v121 = v153;
    *(v130 + 9) = *(v143 + 9);
    v129 = v142;
    v130[0] = v143[0];
    v127 = v140;
    v128 = v141;
    v123 = v136;
    v122 = v135;
    v126 = v139;
    v125 = v138;
    v124 = v137;
    v110 = v144;
    v111 = v145;
    LOBYTE(v112[0]) = v146[0];
    BYTE1(v112[0]) = 4;
    *(v112 + 2) = *v134;
    v112[1] = *&v146[1];
    v113 = v147;
    *&v114[1] = v133;
    v115 = *(&v149 + 1);
    v116 = 0;
    v118 = v151;
    *&v117[15] = *(&v150 + 1);
    *v117 = *v132;
    *v120 = *v131;
    v57 = *(&v152 + 1);
    goto LABEL_32;
  }

  v99 = MEMORY[0x277D84F90];
  v35 = *(*(&v146[1] + 1) + 16);

  v85 = v35;
  if (!v35)
  {
LABEL_31:

    v82 = v99;
    sub_218D2E5FC(&v135);
    v154 = *(v146 + 8);
    v155 = v144;
    v156 = v145;
    *&v98[11] = v144;
    *&v98[19] = v145;
    *&v98[3] = *(v146 + 8);
    v157 = v147;
    v114[0] = v148;
    HIBYTE(v97) = v149;
    *(&v97 + 7) = *(&v148 + 1);
    LOBYTE(v109[0]) = 0;
    *&v96[7] = v150;
    v119 = BYTE8(v151);
    v158 = v150;
    v159 = v152;
    *&v95[7] = v152;
    v160 = v153;
    v121 = v153;
    *(v130 + 9) = *(v143 + 9);
    v129 = v142;
    v130[0] = v143[0];
    v127 = v140;
    v128 = v141;
    v123 = v136;
    v122 = v135;
    v126 = v139;
    v125 = v138;
    v124 = v137;
    v110 = v144;
    v111 = v145;
    LOBYTE(v112[0]) = v146[0];
    BYTE1(v112[0]) = 2;
    *(v112 + 2) = *v98;
    *&v112[1] = *&v146[1];
    *(&v112[1] + 1) = v82;
    v113 = v147;
    *&v114[1] = v97;
    v115 = *(&v149 + 1);
    v116 = 0;
    v118 = v151;
    *&v117[15] = *(&v150 + 1);
    *v117 = *v96;
    *v120 = *v95;
    v57 = *(&v152 + 1);
LABEL_32:
    *&v120[15] = v57;
    sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v80 = MEMORY[0x277D837D0];
    sub_219143FFC(&v154, v109, &qword_280E8F860, MEMORY[0x277D837D0]);
    goto LABEL_33;
  }

  v36 = 0;
  v37 = (v16 + 80);
  v83 = v7;
  v84 = v16;
  while (v36 < *(v16 + 16))
  {
    v38 = *(v37 - 6);
    v39 = *(v37 - 5);
    v40 = *v37;
    v41 = v37[1];
    v42 = *(v37 + 11);
    v43 = *(v37 + 13);
    v44 = *(v37 + 9);
    *&v114[16] = v37[15];
    v113 = v42;
    *v114 = v43;
    v112[1] = v44;
    v45 = *(v37 + 3);
    v46 = *(v37 + 7);
    v111 = *(v37 + 5);
    v112[0] = v46;
    v110 = v45;
    if (v39)
    {
      v47 = v110;
      v48 = *(v37 + 11);
      v91 = *(v37 + 9);
      v92 = v48;
      v93 = *(v37 + 13);
      v94 = v37[15];
      v49 = *(v37 + 7);
      v89 = *(v37 + 5);
      v90 = v49;
      if (*(&v110 + 1) != 1)
      {
        v87 = v41;
        v88 = v36 + 1;
        *&v160 = 0;
        *(&v160 + 1) = 0xE000000000000000;
        v50 = *&v146[1] ? *(&v146[0] + 1) : 0;
        v51 = *&v146[1] ? *&v146[1] : 0xE000000000000000;
        v86 = v40;

        sub_219143FFC(&v110, &v135, &qword_27CC115D8, &type metadata for ChannelPickerModule);

        MEMORY[0x21CECC330](v50, v51);

        MEMORY[0x21CECC330](47, 0xE100000000000000);
        MEMORY[0x21CECC330](v38, v39);
        v53 = *(&v160 + 1);
        v52 = v160;
        *v10 = v38;
        *(v10 + 1) = v39;
        *(v10 + 1) = v47;
        v54 = v92;
        *(v10 + 4) = v91;
        *(v10 + 5) = v54;
        *(v10 + 6) = v93;
        v55 = v94;
        v56 = v90;
        *(v10 + 2) = v89;
        *(v10 + 3) = v56;
        *(v10 + 14) = v55;
        *(v10 + 15) = v86;
        *(v10 + 16) = v87;
        *(v10 + 136) = __PAIR128__(v53, v52);
        v10[152] = 2;
        swift_storeEnumTagMultiPayload();
        sub_21914418C(0, &unk_27CC16960, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83940]);
        sub_2191440D0(&qword_27CC0B7A8, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
        sub_219BF59B4();
        sub_219144364(v10, type metadata accessor for ChannelPickerElementModel);
        v36 = v88;
        v37 += 22;
        v16 = v84;
        if (v85 != v88)
        {
          continue;
        }
      }
    }

    goto LABEL_31;
  }

  __break(1u);
}

char *sub_21913F070(char *result)
{
  v1 = 0;
  v2 = *(result + 2);
  v3 = result - 144;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = &v3[176 * v1];
  while (1)
  {
    if (v2 == v1)
    {
      v12 = off_282A4D758;
      type metadata accessor for TagService();
      v13 = v12(v4);

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 23);
    ++v1;
    v5 += 176;
    if (v7)
    {
      v8 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218840D24(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_218840D24((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

char *sub_21913F1B8()
{
  v0 = sub_219A79734();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if ((v5 & 1) == 0)
  {

LABEL_3:
    sub_218B6722C(v0, v2, v4, v6);
    v8 = v7;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);

  if (__OFSUB__(v6 >> 1, v4))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v10 != (v6 >> 1) - v4)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v8)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v11 = sub_21913F070(v8);

  return v11;
}

uint64_t sub_21913F2FC(unint64_t *a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  v101 = a3;
  v110 = a4;
  v102 = a2;
  sub_21914418C(0, &qword_27CC0EF50, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v100 - v6);
  v8 = type metadata accessor for ChannelPickerElementModel(0);
  isUniquelyReferenced_nonNull_native = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v114 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v124.n128_u64[0] = MEMORY[0x277D84F90];
  if (v13 >> 62)
  {
LABEL_45:
    v36 = v10;
    v14 = sub_219BF7214();
    v10 = v36;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v10;
  v105 = v7;
  v103 = isUniquelyReferenced_nonNull_native;
  if (!v14)
  {
    v17 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = 0;
  v15 = (v13 & 0xC000000000000001);
  v156 = (v13 & 0xC000000000000001);
  while (!v15)
  {
    if (isUniquelyReferenced_nonNull_native >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v16 = *(v13 + 8 * isUniquelyReferenced_nonNull_native + 32);

    v7 = (isUniquelyReferenced_nonNull_native + 1);
    if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if ([objc_opt_self() isTagAllowed_])
    {
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      v10 = sub_219BF73E4();
      v15 = v156;
    }

    else
    {
    }

    ++isUniquelyReferenced_nonNull_native;
    if (v7 == v14)
    {
      goto LABEL_15;
    }
  }

  v10 = MEMORY[0x21CECE0F0](isUniquelyReferenced_nonNull_native, v13, v11);
  v16 = v10;
  v7 = (isUniquelyReferenced_nonNull_native + 1);
  if (!__OFADD__(isUniquelyReferenced_nonNull_native, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v17 = v124.n128_u64[0];
  if ((v124.n128_u64[0] & 0x8000000000000000) != 0)
  {
LABEL_46:
    v10 = sub_219BF7214();
    v18 = v10;
    if (!v10)
    {
      goto LABEL_47;
    }

LABEL_20:
    v19 = 0;
    v113 = (v17 & 0xC000000000000001);
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
    v111 = v18;
    v112 = v17;
    while (2)
    {
      if (v113)
      {
        v10 = MEMORY[0x21CECE0F0](v19, v17);
        v7 = v10;
        v20 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_42;
        }

        v7 = *(v17 + 8 * v19 + 32);

        v20 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_41;
        }
      }

      v156 = v20;
      v21 = [v7[2] identifier];
      v13 = sub_219BF5414();
      v23 = v22;

      v24 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124.n128_u64[0] = v24;
      v26 = sub_21870F700(v13, v23);
      v27 = *(v24 + 16);
      v28 = (v25 & 1) == 0;
      v10 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_43;
      }

      v29 = v25;
      if (*(v24 + 24) >= v10)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_219492A6C();
          if ((v29 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_219481C7C(v10, isUniquelyReferenced_nonNull_native);
        v30 = sub_21870F700(v13, v23);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        v26 = v30;
        if ((v29 & 1) == 0)
        {
LABEL_33:
          isUniquelyReferenced_nonNull_native = v124.n128_u64[0];
          *(v124.n128_u64[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
          v32 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v26);
          *v32 = v13;
          v32[1] = v23;
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v26) = v7;

          v33 = *(isUniquelyReferenced_nonNull_native + 16);
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_44;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v35;
          goto LABEL_22;
        }
      }

      isUniquelyReferenced_nonNull_native = v124.n128_u64[0];
      *(*(v124.n128_u64[0] + 56) + 8 * v26) = v7;

LABEL_22:
      ++v19;
      v17 = v112;
      if (v156 == v111)
      {
        goto LABEL_48;
      }

      continue;
    }
  }

LABEL_18:
  if ((v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v18 = *(v17 + 16);
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_47:
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
LABEL_48:
  v111 = isUniquelyReferenced_nonNull_native;

  v37 = v102[1].n128_u64[0];
  v100 = v37;
  if (v37)
  {
    v38 = v102 + 2;
    v39 = v103;
    v112 = (v103 + 56);
    v156 = MEMORY[0x277D84F90];
    v113 = (v103 + 48);
    v41 = v104;
    v40 = v105;
    while (1)
    {
      v42 = v38[9];
      *&v129[2] = v38[8];
      *&v129[4] = v42;
      *&v129[6] = v38[10];
      v43 = v38[5];
      v127 = v38[4];
      v128[0] = v43;
      v44 = v38[7];
      v128[1] = v38[6];
      *v129 = v44;
      v45 = v38[1];
      v124 = *v38;
      v125 = v45;
      v46 = v38[3];
      v126[0] = v38[2];
      v126[1] = v46;
      v47 = v124.n128_i64[1];
      if (v124.n128_u64[1] && v111[2])
      {
        v48 = v124.n128_u64[0];
        sub_218D2E8B0(&v124, &v144);
        v49 = sub_21870F700(v48, v47);
        if (v50)
        {
          v51 = *(v111[7] + 8 * v49);
          if (*(v51 + 24))
          {
            v52 = v125;
            *(&v117 + 1) = type metadata accessor for TagModel();
            *&v118 = sub_2191440D0(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
            *&v116 = v51;
            if (*(&v52 + 1))
            {
              v109 = v52;
              swift_retain_n();
              v108 = *(&v52 + 1);
              v53 = *(&v126[0] + 1);
              if (*(&v126[0] + 1))
              {
                goto LABEL_58;
              }

LABEL_68:
              v61 = *(v51 + 16);

              v62 = [v61 identifier];
              v63 = sub_219BF5414();
              v65 = v64;

              if (*(v101 + 16))
              {
                v66 = v101;
                v67 = sub_21870F700(v63, v65);
                v69 = v68;

                if (v69)
                {
                  v70 = (*(v66 + 56) + 16 * v67);
                  v53 = v70[1];
                  v107 = *v70;

                  goto LABEL_73;
                }
              }

              else
              {
              }

              v107 = 0;
              v53 = 0;
              goto LABEL_73;
            }

            v57 = *(v51 + 16);
            swift_retain_n();
            v58 = [v57 displayName];
            v59 = sub_219BF5414();
            v108 = v60;
            v109 = v59;

            v53 = *(&v126[0] + 1);
            if (!*(&v126[0] + 1))
            {
              goto LABEL_68;
            }

LABEL_58:
            v107 = *&v126[0];

LABEL_73:
            v71 = v110[3].n128_u64[0];
            if (v71)
            {
              v106 = v110[2].n128_u64[1];
              v72 = v71;
            }

            else
            {
              v106 = 0;
              v72 = 0xE000000000000000;
            }

            if (v110[2].n128_u8[1] == 4)
            {
              v73 = 3;
            }

            else
            {
              v73 = v110[2].n128_i8[1];
            }

            v74 = *(&v126[1] + 1);
            v75 = *&v126[1];
            sub_2186CB1F0(&v116, &v144);
            *(&v146 + 1) = v109;
            *&v147 = v108;
            *(&v147 + 1) = v107;
            *v148 = v53;
            *&v148[8] = __PAIR128__(v74, v75);
            *&v148[24] = v106;
            *&v148[32] = v72;
            v148[40] = v73;
            v76 = *&v148[16];
            v41 = v104;
            v40 = v105;
            *(v105 + 4) = *v148;
            *(v40 + 5) = v76;
            *(v40 + 89) = *&v148[25];
            v77 = v145;
            *v40 = v144;
            *(v40 + 1) = v77;
            v78 = v147;
            *(v40 + 2) = v146;
            *(v40 + 3) = v78;
            swift_storeEnumTagMultiPayload();
            (*v112)(v40, 0, 1, v41);

            sub_218D2E90C(&v124);
            v39 = v103;
            goto LABEL_61;
          }
        }
      }

      else
      {
        sub_218D2E8B0(&v124, &v144);
      }

      (*v112)(v40, 1, 1, v41);
      sub_218D2E90C(&v124);
LABEL_61:
      if ((*v113)(v40, 1, v41) == 1)
      {
        sub_2191444D4(v40, &qword_27CC0EF50, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83D88], sub_21914418C);
      }

      else
      {
        sub_218D2E9EC(v40, v114, type metadata accessor for ChannelPickerElementModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = sub_2191F8584(0, v156[2] + 1, 1, v156);
        }

        v55 = v156[2];
        v54 = v156[3];
        if (v55 >= v54 >> 1)
        {
          v156 = sub_2191F8584((v54 > 1), v55 + 1, 1, v156);
        }

        v56 = v156;
        v156[2] = v55 + 1;
        sub_218D2E9EC(v114, v56 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v55, type metadata accessor for ChannelPickerElementModel);
      }

      v38 += 11;
      if (!--v37)
      {
        goto LABEL_81;
      }
    }
  }

  v156 = MEMORY[0x277D84F90];
LABEL_81:

  sub_218D2E5FC(&v144);
  v79 = v110;
  v155 = v110[9];
  v80 = v155.n128_u64[1];
  if (v155.n128_u64[1])
  {
    v81 = v100;
    if (!v100)
    {
      goto LABEL_90;
    }

    v82 = v155.n128_u64[0];
    v83 = &v102[6].n128_i8[8];
    while (1)
    {
      v84 = *(v83 - 9);
      v85 = *(v83 - 8);
      v86 = *(v83 + 5);
      v120 = *(v83 + 4);
      v121 = v86;
      v122 = *(v83 + 12);
      v87 = *(v83 + 1);
      v116 = *v83;
      v117 = v87;
      v88 = *(v83 + 3);
      v118 = *(v83 + 2);
      v119 = v88;
      if (v85)
      {
        if (v84 == v82 && v85 == v80 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }
      }

      v83 += 176;
      if (!--v81)
      {
        goto LABEL_90;
      }
    }

    if (*(&v116 + 1) != 1)
    {
      if (v110[3].n128_u64[0])
      {
        v97 = v110[2].n128_u64[1];
        v98 = v110[3].n128_u64[0];
      }

      else
      {
        v97 = 0;
        v98 = 0xE000000000000000;
      }

      v127 = v119;
      v128[0] = v120;
      v128[1] = v121;
      v126[0] = v117;
      v126[1] = v118;
      v124.n128_u64[0] = v82;
      v124.n128_u64[1] = v80;
      v125 = v116;
      v129[0] = v122;
      v129[1] = 0;
      v129[2] = 0;
      v129[3] = v97;
      v129[4] = v98;
      LOBYTE(v129[5]) = 2;
      nullsub_1();
      v99 = MEMORY[0x277D837D0];
      sub_219143FFC(&v155, v115, &qword_280E8F860, MEMORY[0x277D837D0]);
      sub_219143FFC(&v155, v115, &qword_280E8F860, v99);
      sub_219143FFC(&v116, v115, &qword_27CC115D8, &type metadata for ChannelPickerModule);
      v141 = v128[1];
      v142 = *v129;
      v143[0] = *&v129[2];
      *(v143 + 9) = *(&v129[3] + 1);
      v137 = v126[0];
      v138 = v126[1];
      v139 = v127;
      v140 = v128[0];
      v135 = v124;
      v136 = v125;
    }

    else
    {
LABEL_90:
      sub_219143FFC(&v155, &v124, &qword_280E8F860, MEMORY[0x277D837D0]);
      v141 = *&v148[32];
      v142 = v149;
      v143[0] = v150[0];
      *(v143 + 9) = *(v150 + 9);
      v137 = v146;
      v138 = v147;
      v139 = *v148;
      v140 = *&v148[16];
      v135 = v144;
      v136 = v145;
    }

    v79 = v110;
  }

  else
  {
    v141 = *&v148[32];
    v142 = v149;
    v143[0] = v150[0];
    *(v143 + 9) = *(v150 + 9);
    v137 = v146;
    v138 = v147;
    v139 = *v148;
    v140 = *&v148[16];
    v135 = v144;
    v136 = v145;
  }

  v116 = *(&v79[2] + 8);
  v89 = v79[1];
  v115[0] = *v79;
  v154 = v89;
  *&v134[11] = v115[0];
  *&v134[19] = v89;
  v90 = v79[2].n128_u16[0];
  *&v134[3] = v116;
  v91 = v79[4].n128_u64[1];
  v153 = v79[4].n128_u64[0];
  LOBYTE(v128[0]) = v79[5].n128_u8[0];
  v92 = v79[5].n128_u64[1];
  HIBYTE(v133) = v79[6].n128_u8[0];
  *(&v133 + 7) = v92;
  v93 = v79[6].n128_u64[1];
  v123[0] = 0;
  v152 = v79[7];
  *&v132[7] = v152;
  LOBYTE(v129[4]) = v79[8].n128_u8[8];
  v94 = v79[8].n128_u64[0];
  *&v131[7] = v155;
  v151 = v79[10];
  *&v129[7] = v79[10];
  v124 = v115[0];
  v125 = v89;
  LOWORD(v126[0]) = v90;
  *&v126[1] = *(&v116 + 1);
  *(v126 + 2) = *v134;
  *(&v126[1] + 1) = v156;
  v127.n128_u64[0] = v153;
  v127.n128_u64[1] = v91;
  *(v128 + 1) = v133;
  *(&v128[1] + 1) = v93;
  LOBYTE(v129[0]) = 0;
  v129[2] = v152.n128_u64[1];
  v129[3] = v94;
  *(v129 + 1) = *v132;
  v129[6] = v155.n128_u64[1];
  *(&v129[4] + 1) = *v131;
  *(v130 + 9) = *(v143 + 9);
  *&v129[23] = v142;
  v130[0] = v143[0];
  *&v129[19] = v140;
  *&v129[21] = v141;
  *&v129[11] = v136;
  *&v129[9] = v135;
  *&v129[17] = v139;
  *&v129[15] = v138;
  *&v129[13] = v137;
  sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v95 = MEMORY[0x277D837D0];
  sub_219143FFC(&v116, v123, &qword_280E8F860, MEMORY[0x277D837D0]);
  sub_219143FFC(v115, v123, &qword_280E8F860, v95);
  sub_219143FFC(&v154, v123, &qword_280E8F860, v95);
  sub_219144534(&v153, v123, sub_2186D0AF8);
  sub_219143FFC(&v152, v123, &qword_280E8F860, v95);
  sub_219143FFC(&v151, v123, &qword_280E8F860, v95);
  return sub_219BE3014();
}

void sub_219140070(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_219BE4F64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 72);
  if (*(a1 + 80))
  {
    v11 = 0;
  }

  if ((v11 * *(a1 + 104)) >> 64 == (v11 * *(a1 + 104)) >> 63)
  {
    __swift_project_boxed_opaque_existential_1(a4 + 12, a4[15]);
    v12 = MEMORY[0x277D34B90];
    v13 = MEMORY[0x277D34B88];
    v14 = MEMORY[0x277D34B90];
    if (a3 == 1)
    {
      v14 = MEMORY[0x277D34B98];
    }

    if (a3 != 2)
    {
      v13 = v14;
    }

    if (a3)
    {
      v12 = v13;
    }

    (*(v8 + 104))(v10, *v12, v7);
    sub_219BE5064();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219140214(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v129 = a2;
  v130 = a3;
  v156 = *MEMORY[0x277D85DE8];
  v4 = sub_219BE4FB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v144 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v131 = &v128 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v128 - v10;
  v143 = sub_219BE4EB4();
  MEMORY[0x28223BE20](v143);
  v142 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v128 - v14;
  v17 = *a1;
  v18 = MEMORY[0x277D84F90];
  v155[0] = MEMORY[0x277D84F90];
  v19 = *(v17 + 16);
  v138 = v15;
  v139 = v17;
  v153 = v4;
  v145 = v5;
  v137 = v19;
  if (!v19)
  {
LABEL_30:
    v49 = sub_218845F78(v18);

    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = sub_21947D1C0(*(v49 + 16), 0);
      v52 = sub_2194ABD64(v155, v51 + 4, v50, v49);
      v54.n128_f64[0] = sub_21892DE98(v155[0]);
      if (v52 != v50)
      {
        goto LABEL_86;
      }

      v132 = v51;
    }

    else
    {

      v132 = MEMORY[0x277D84F90];
    }

    v55 = v138;
    v56 = v139;
    v57 = v145;
    if (!v137)
    {
      v59 = MEMORY[0x277D84F98];
LABEL_74:
      MEMORY[0x28223BE20](v53);
      v116 = v129;
      v117 = v132;
      *(&v128 - 2) = v129;
      *(&v128 - 1) = v117;
      sub_21914418C(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
      sub_219BE3204();

      v118 = swift_allocObject();
      v119 = v130;
      v120 = v130[6];
      *(v118 + 152) = v130[7];
      v121 = v119[9];
      *(v118 + 168) = v119[8];
      *(v118 + 184) = v121;
      *(v118 + 200) = v119[10];
      v122 = v119[2];
      *(v118 + 88) = v119[3];
      v123 = v119[5];
      *(v118 + 104) = v119[4];
      *(v118 + 120) = v123;
      *(v118 + 136) = v120;
      v124 = v119[1];
      *(v118 + 40) = *v119;
      *(v118 + 56) = v124;
      *(v118 + 16) = v59;
      *(v118 + 24) = v116;
      *(v118 + 32) = v56;
      *(v118 + 72) = v122;

      sub_218D2E4D0(v119, v155);
      v125 = sub_219BE2E54();
      v126 = sub_219BE2F64();

      return v126;
    }

    v58 = 0;
    v135 = v139 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v150 = (v145 + 8);
    *&v151 = v145 + 16;
    v133 = (v138 + 8);
    v134 = v138 + 16;
    v59 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v58 >= *(v56 + 16))
      {
        goto LABEL_83;
      }

      v146 = v59;
      v60 = *(v55 + 72);
      v141 = v58;
      (*(v55 + 16))(v142, v135 + v60 * v58, v143, v54);
      v147 = sub_219BE4EA4();
      v62 = v61;
      v63 = sub_219BE4E94();
      v64 = *(v63 + 16);
      if (v64)
      {
        v136 = v62;
        v65 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v140 = v63;
        v66 = v63 + v65;
        v67 = *(v57 + 72);
        v148 = *(v57 + 16);
        v149 = v67;
        v68 = MEMORY[0x277D84F90];
        v69 = v131;
        do
        {
          (v148)(v69, v66, v4);
          v70 = sub_219BE4EA4();
          v72 = v71;
          v73 = v70;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = sub_218840D24(0, *(v68 + 2) + 1, 1, v68);
          }

          v75 = *(v68 + 2);
          v74 = *(v68 + 3);
          v152 = v68;
          if (v75 >= v74 >> 1)
          {
            v152 = sub_218840D24((v74 > 1), v75 + 1, 1, v152);
          }

          v4 = v153;
          (*v150)(v69, v153);
          v76 = v152;
          *(v152 + 2) = v75 + 1;
          v68 = v76;
          v77 = &v76[16 * v75];
          *(v77 + 4) = v73;
          *(v77 + 5) = v72;
          v66 += v149;
          --v64;
        }

        while (v64);

        v62 = v136;
      }

      else
      {

        v152 = MEMORY[0x277D84F90];
      }

      v78 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v78;
      v80 = v147;
      v81 = sub_21870F700(v147, v62);
      v83 = *(v78 + 16);
      v84 = (v82 & 1) == 0;
      v45 = __OFADD__(v83, v84);
      v85 = v83 + v84;
      if (v45)
      {
        goto LABEL_84;
      }

      v86 = v82;
      if (*(v78 + 24) < v85)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_52;
      }

      v89 = v62;
      v90 = v81;
      sub_2194933B4();
      v81 = v90;
      v62 = v89;
      v80 = v147;
      v88 = v155[0];
      if (v86)
      {
LABEL_53:
        v59 = v88;
        *(v88[7] + 8 * v81) = v152;

        goto LABEL_57;
      }

LABEL_55:
      v88[(v81 >> 6) + 8] |= 1 << v81;
      v91 = (v88[6] + 16 * v81);
      *v91 = v80;
      v91[1] = v62;
      *(v88[7] + 8 * v81) = v152;
      v92 = v88[2];
      v45 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v45)
      {
        goto LABEL_85;
      }

      v59 = v88;
      v88[2] = v93;
LABEL_57:
      v94 = sub_219BE4E94();
      v57 = v145;
      v152 = *(v94 + 16);
      if (v152)
      {
        v95 = 0;
        v96 = *(v145 + 80);
        v148 = v94;
        v149 = v94 + ((v96 + 32) & ~v96);
        do
        {
          if (v95 >= *(v94 + 16))
          {
            goto LABEL_77;
          }

          v97 = v144;
          (*(v57 + 16))(v144, v149 + *(v57 + 72) * v95, v4);
          v98 = sub_219BE4EA4();
          v100 = v99;
          v101 = sub_219BE4E94();
          (*(v57 + 8))(v97, v4);
          v102 = v59;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v155[0] = v102;
          v105 = sub_21870F700(v98, v100);
          v106 = *(v102 + 16);
          v107 = (v104 & 1) == 0;
          v108 = v106 + v107;
          if (__OFADD__(v106, v107))
          {
            goto LABEL_78;
          }

          v109 = v104;
          if (*(v102 + 24) >= v108)
          {
            if (v103)
            {
              if (v104)
              {
                goto LABEL_59;
              }
            }

            else
            {
              sub_2194933B4();
              if (v109)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            sub_219482CFC(v108, v103);
            v110 = sub_21870F700(v98, v100);
            if ((v109 & 1) != (v111 & 1))
            {
              goto LABEL_90;
            }

            v105 = v110;
            if (v109)
            {
LABEL_59:

              v59 = v155[0];
              *(*(v155[0] + 56) + 8 * v105) = v101;

              goto LABEL_60;
            }
          }

          v112 = v155[0];
          *(v155[0] + 8 * (v105 >> 6) + 64) |= 1 << v105;
          v113 = (v112[6] + 16 * v105);
          *v113 = v98;
          v113[1] = v100;
          *(v112[7] + 8 * v105) = v101;
          v114 = v112[2];
          v45 = __OFADD__(v114, 1);
          v115 = v114 + 1;
          if (v45)
          {
            goto LABEL_81;
          }

          v59 = v112;
          v112[2] = v115;
LABEL_60:
          ++v95;
          v4 = v153;
          v57 = v145;
          v94 = v148;
        }

        while (v152 != v95);
      }

      v58 = v141 + 1;

      v53 = (*v133)(v142, v143);
      v55 = v138;
      v56 = v139;
      if (v58 == v137)
      {
        goto LABEL_74;
      }
    }

    sub_219482CFC(v85, isUniquelyReferenced_nonNull_native);
    v81 = sub_21870F700(v80, v62);
    if ((v86 & 1) != (v87 & 1))
    {
      goto LABEL_90;
    }

LABEL_52:
    v88 = v155[0];
    if (v86)
    {
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  v20 = 0;
  v135 = v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v134 = v15 + 16;
  v146 = (v5 + 8);
  v147 = v5 + 16;
  v132 = (v15 + 8);
  v151 = xmmword_219C09BA0;
  v133 = (&v128 - v14);
  while (1)
  {
    if (v20 >= *(v17 + 16))
    {
      goto LABEL_82;
    }

    v22 = *(v15 + 72);
    v141 = v20;
    (*(v15 + 16))(v16, v135 + v22 * v20, v143);
    sub_21914459C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v150 = v23;
    inited = swift_initStackObject();
    *(inited + 16) = v151;
    *(inited + 32) = sub_219BE4EA4();
    *(inited + 40) = v25;
    v140 = inited;
    v26 = sub_219BE4E94();
    v27 = *(v26 + 16);
    if (v27)
    {
      break;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_4:
    v154 = v140;
    v21 = v32;
    v20 = v141 + 1;
    sub_2191ED3E8(v21);
    v16 = v133;
    (*v132)(v133, v143);
    sub_2191ED3E8(v154);
    v15 = v138;
    v17 = v139;
    if (v20 == v137)
    {
      v18 = v155[0];
      goto LABEL_30;
    }
  }

  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v29 = v5;
  v136 = v26;
  v30 = v26 + v28;
  v31 = *(v29 + 16);
  v148 = *(v29 + 72);
  v149 = v31;
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    v152 = v27;
    (v149)(v11, v30, v4);
    v33 = swift_initStackObject();
    *(v33 + 16) = v151;
    v34 = (v33 + 16);
    *(v33 + 32) = sub_219BE4EA4();
    *(v33 + 40) = v35;
    v36 = sub_219BE4E94();
    v37 = *(v36 + 16);
    if (!v37)
    {

      goto LABEL_12;
    }

    v128 = v36;
    v33 = sub_218840D24(1, v37 + 1, 1, v33);
    if (!*(v128 + 16))
    {
      break;
    }

    v34 = (v33 + 16);
    if ((*(v33 + 24) >> 1) - *(v33 + 16) < v37)
    {
      goto LABEL_87;
    }

    swift_arrayInitWithCopy();

    v47 = *(v33 + 16);
    v45 = __OFADD__(v47, v37);
    v48 = v47 + v37;
    if (v45)
    {
      goto LABEL_88;
    }

    *v34 = v48;
LABEL_12:
    v38 = v11;
    (*v146)(v11, v4);
    v39 = *(v33 + 16);
    v40 = *(v32 + 2);
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
    }

    v42 = swift_isUniquelyReferenced_nonNull_native();
    if (!v42 || v41 > *(v32 + 3) >> 1)
    {
      if (v40 <= v41)
      {
        v43 = v40 + v39;
      }

      else
      {
        v43 = v40;
      }

      v32 = sub_218840D24(v42, v43, 1, v32);
    }

    v4 = v153;
    v11 = v38;
    if (*v34)
    {
      if ((*(v32 + 3) >> 1) - *(v32 + 2) < v39)
      {
        goto LABEL_79;
      }

      swift_arrayInitWithCopy();

      if (v39)
      {
        v44 = *(v32 + 2);
        v45 = __OFADD__(v44, v39);
        v46 = v44 + v39;
        if (v45)
        {
          goto LABEL_80;
        }

        *(v32 + 2) = v46;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_76;
      }
    }

    v30 += v148;
    v27 = v152 - 1;
    if (v152 == 1)
    {

      v5 = v145;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_90:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_219140E58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v116 = a4;
  v119 = a5;
  v122 = a2;
  v123 = a3;
  sub_21914418C(0, &qword_27CC0EF50, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v115 - v7;
  v9 = type metadata accessor for ChannelPickerElementModel(0);
  v121 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v127 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v115 - v12;
  v132 = sub_219BE4EB4();
  v128 = *(v132 - 8);
  v13 = MEMORY[0x28223BE20](v132);
  v131 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  *&v134 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
LABEL_45:
    v16 = sub_219BF7214();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129 = v8;
  v130 = v9;
  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  v8 = 0;
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  v164 = v15 & 0xFFFFFFFFFFFFFF8;
  while ((v15 & 0xC000000000000001) == 0)
  {
    if (v8 >= *(v17 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = *(v15 + 8 * v8 + 32);

    v19 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if ([objc_opt_self() isTagAllowed_])
    {
      sub_219BF73D4();
      sub_219BF7414();
      v9 = v130;
      sub_219BF7424();
      sub_219BF73E4();
      v17 = v164;
    }

    else
    {
    }

    ++v8;
    if (v19 == v16)
    {
      goto LABEL_15;
    }
  }

  v18 = MEMORY[0x21CECE0F0](v8, v15, v13);
  v19 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v20 = v134;
  v8 = v129;
  if ((v134 & 0x8000000000000000) != 0)
  {
LABEL_46:
    v21 = sub_219BF7214();
    if (!v21)
    {
      goto LABEL_47;
    }

LABEL_20:
    v22 = 0;
    v126 = (v20 & 0xC000000000000001);
    v15 = MEMORY[0x277D84F98];
    v124 = v21;
    v125 = v20;
    while (2)
    {
      if (v126)
      {
        v8 = MEMORY[0x21CECE0F0](v22, v20);
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v22 >= *(v20 + 16))
        {
          goto LABEL_42;
        }

        v8 = *(v20 + 8 * v22 + 32);

        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_41;
        }
      }

      v164 = v24;
      v25 = v15;
      v26 = [*(v8 + 16) identifier];
      v27 = sub_219BF5414();
      v9 = v28;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = v25;
      v15 = v25;
      v30 = sub_21870F700(v27, v9);
      v32 = v25;
      v33 = v30;
      v34 = v25[2];
      v35 = (v31 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_43;
      }

      v37 = v31;
      if (v32[3] >= v36)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_219492A6C();
          if ((v37 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_219481C7C(v36, isUniquelyReferenced_nonNull_native);
        v38 = sub_21870F700(v27, v9);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_106;
        }

        v33 = v38;
        if ((v37 & 1) == 0)
        {
LABEL_33:
          v15 = v134;
          *(v134 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          v40 = (*(v15 + 48) + 16 * v33);
          *v40 = v27;
          v40[1] = v9;
          *(*(v15 + 56) + 8 * v33) = v8;

          v41 = *(v15 + 16);
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_44;
          }

          *(v15 + 16) = v43;
          goto LABEL_22;
        }
      }

      v23 = v134;
      *(*(v134 + 56) + 8 * v33) = v8;

      v15 = v23;

LABEL_22:
      ++v22;
      v20 = v125;
      v8 = v129;
      v9 = v130;
      if (v164 == v124)
      {
        goto LABEL_48;
      }

      continue;
    }
  }

LABEL_18:
  if ((v20 & 0x4000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v21 = *(v20 + 16);
  if (v21)
  {
    goto LABEL_20;
  }

LABEL_47:
  v15 = MEMORY[0x277D84F98];
LABEL_48:

  v44 = v122 + 64;
  v45 = 1 << *(v122 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v122 + 64);
  v48 = (v45 + 63) >> 6;

  v49 = 0;
  v164 = v15;
  v117 = v48;
  *&v118 = v44;
LABEL_53:
  if (v47)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v50 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v50);
    ++v49;
    if (v47)
    {
      v49 = v50;
LABEL_58:
      v51 = __clz(__rbit64(v47)) | (v49 << 6);
      v52 = *(v122 + 56);
      v53 = *(v122 + 48) + 16 * v51;
      v54 = *(v53 + 8);
      v126 = *v53;
      v55 = *(v52 + 8 * v51);
      v56 = MEMORY[0x277D84F90];
      *&v147 = MEMORY[0x277D84F90];
      v57 = *(v55 + 16);
      if (v57)
      {
        v125 = v54;

        v124 = v55;
        v58 = (v55 + 40);
        do
        {
          if (*(v15 + 16))
          {
            v59 = *(v58 - 1);
            v60 = *v58;

            sub_21870F700(v59, v60);
            v62 = v61;

            if (v62)
            {
              v63 = swift_retain_n();
              MEMORY[0x21CECC690](v63);
              if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_219BF5A14();
              }

              sub_219BF5A54();

              v56 = v147;
            }
          }

          v58 += 2;
          --v57;
          v15 = v164;
        }

        while (v57);

        v8 = v129;
        v64 = v125;
      }

      else
      {
      }

      v65 = v123;
      swift_beginAccess();
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *&v163 = *(v65 + 256);
      v67 = v163;
      *(v65 + 256) = 0x8000000000000000;
      v68 = sub_21870F700(v126, v64);
      v70 = *(v67 + 16);
      v71 = (v69 & 1) == 0;
      v42 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v42)
      {
        goto LABEL_104;
      }

      v73 = v69;
      if (*(v67 + 24) >= v72)
      {
        if (v66)
        {
          goto LABEL_73;
        }

        v79 = v68;
        sub_219494378();
        v68 = v79;
        v75 = v163;
        if (v73)
        {
          goto LABEL_51;
        }

LABEL_74:
        v75[(v68 >> 6) + 8] |= 1 << v68;
        v76 = (v75[6] + 16 * v68);
        *v76 = v126;
        v76[1] = v64;
        *(v75[7] + 8 * v68) = v56;
        v77 = v75[2];
        v42 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (!v42)
        {
          v75[2] = v78;
          goto LABEL_52;
        }

        goto LABEL_105;
      }

      sub_219484348(v72, v66);
      v68 = sub_21870F700(v126, v64);
      if ((v73 & 1) != (v74 & 1))
      {
LABEL_106:
        result = sub_219BF79A4();
        __break(1u);
        return result;
      }

LABEL_73:
      v75 = v163;
      if ((v73 & 1) == 0)
      {
        goto LABEL_74;
      }

LABEL_51:
      *(v75[7] + 8 * v68) = v56;

LABEL_52:
      v47 &= v47 - 1;
      *(v123 + 256) = v75;
      swift_endAccess();
      v9 = v130;
      v15 = v164;
      v48 = v117;
      v44 = v118;
      goto LABEL_53;
    }
  }

  v80 = *(v116 + 16);
  if (v80)
  {
    v126 = *(v128 + 16);
    v81 = v116 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
    v82 = *(v128 + 72);
    v122 = v121 + 56;
    v128 += 16;
    v124 = (v128 - 8);
    v125 = v82;
    v123 = v121 + 48;
    v83 = MEMORY[0x277D84F90];
    v118 = xmmword_219C325C0;
    v126(v131, v81, v132);
    while (1)
    {
      v84 = sub_219BE4EA4();
      if (!*(v164 + 16))
      {
        break;
      }

      v86 = sub_21870F700(v84, v85);
      v88 = v87;

      if ((v88 & 1) == 0)
      {
        goto LABEL_94;
      }

      v89 = *(*(v164 + 56) + 8 * v86);
      if (!*(v89 + 24))
      {
        goto LABEL_94;
      }

      *(&v148 + 1) = type metadata accessor for TagModel();
      *&v149 = sub_2191440D0(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
      *&v147 = v89;
      v90 = *(v89 + 16);
      swift_retain_n();
      v91 = [v90 displayName];
      v92 = sub_219BF5414();
      v94 = v93;

      v95 = *(v119 + 6);
      if (v95)
      {
        v96 = *(v119 + 5);
      }

      else
      {
        v96 = 0;
      }

      if (v95)
      {
        v97 = *(v119 + 6);
      }

      else
      {
        v97 = 0xE000000000000000;
      }

      sub_2186CB1F0(&v147, &v134);
      *(&v136[0] + 1) = v92;
      *&v136[1] = v94;
      *(&v136[1] + 8) = v118;
      *(&v136[2] + 8) = v118;
      *(&v136[3] + 1) = v96;
      *&v136[4] = v97;
      v8 = v129;
      v9 = v130;
      BYTE8(v136[4]) = 1;
      v98 = v136[3];
      *(v129 + 64) = v136[2];
      *(v8 + 80) = v98;
      *(v8 + 89) = *(&v136[3] + 9);
      v99 = v135;
      *v8 = v134;
      *(v8 + 16) = v99;
      v100 = v136[1];
      *(v8 + 32) = v136[0];
      *(v8 + 48) = v100;
      swift_storeEnumTagMultiPayload();
      (*v122)(v8, 0, 1, v9);

LABEL_95:
      (*v124)(v131, v132);
      if ((*v123)(v8, 1, v9) == 1)
      {
        sub_2191444D4(v8, &qword_27CC0EF50, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83D88], sub_21914418C);
      }

      else
      {
        v101 = v120;
        sub_218D2E9EC(v8, v120, type metadata accessor for ChannelPickerElementModel);
        sub_218D2E9EC(v101, v127, type metadata accessor for ChannelPickerElementModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_2191F8584(0, v83[2] + 1, 1, v83);
        }

        v103 = v83[2];
        v102 = v83[3];
        if (v103 >= v102 >> 1)
        {
          v83 = sub_2191F8584((v102 > 1), v103 + 1, 1, v83);
        }

        v83[2] = v103 + 1;
        sub_218D2E9EC(v127, v83 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v103, type metadata accessor for ChannelPickerElementModel);
      }

      v81 += v125;
      if (!--v80)
      {
        goto LABEL_102;
      }

      v126(v131, v81, v132);
    }

LABEL_94:
    (*v122)(v8, 1, 1, v9);
    goto LABEL_95;
  }

  v83 = MEMORY[0x277D84F90];
LABEL_102:

  sub_218D2E5FC(&v147);
  v104 = *(v119 + 40);
  v105 = v119[1];
  v162 = *v119;
  v163 = v104;
  v161 = v105;
  *&v146[11] = v162;
  *&v146[19] = v105;
  v106 = *(v119 + 16);
  *&v146[3] = v104;
  v107 = *(v119 + 9);
  v160 = *(v119 + 8);
  LOBYTE(v136[3]) = *(v119 + 80);
  v108 = *(v119 + 11);
  HIBYTE(v145) = *(v119 + 96);
  *(&v145 + 7) = v108;
  v109 = *(v119 + 13);
  v133[0] = 0;
  v159 = v119[7];
  *&v144[7] = v159;
  v140 = *(v119 + 136);
  v110 = *(v119 + 16);
  v111 = v119[9];
  v157 = v119[10];
  v158 = v111;
  v112 = v119[10];
  *&v143[7] = v119[9];
  *&v141[23] = v112;
  *(v142 + 9) = *&v155[9];
  *&v141[151] = v154;
  v142[0] = *v155;
  *&v141[119] = v152;
  *&v141[135] = v153;
  *&v141[55] = v148;
  *&v141[39] = v147;
  *&v141[103] = v151;
  *&v141[87] = v150;
  *&v141[71] = v149;
  v134 = v162;
  v135 = v105;
  LOWORD(v136[0]) = v106;
  *(v136 + 2) = *v146;
  *&v136[1] = *&v146[7];
  *(&v136[1] + 1) = v83;
  *&v136[2] = v160;
  *(&v136[2] + 1) = v107;
  *(&v136[3] + 1) = v145;
  *(&v136[4] + 1) = *v156;
  DWORD1(v136[4]) = *&v156[3];
  *(&v136[4] + 1) = v109;
  v137 = 0;
  *v138 = *v144;
  *&v138[15] = *(&v159 + 1);
  v139 = v110;
  *v141 = *v143;
  *&v141[15] = *&v143[15];
  sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v113 = MEMORY[0x277D837D0];
  sub_219143FFC(&v163, v133, &qword_280E8F860, MEMORY[0x277D837D0]);
  sub_219143FFC(&v162, v133, &qword_280E8F860, v113);
  sub_219143FFC(&v161, v133, &qword_280E8F860, v113);
  sub_219144534(&v160, v133, sub_2186D0AF8);
  sub_219143FFC(&v159, v133, &qword_280E8F860, v113);
  sub_219143FFC(&v158, v133, &qword_280E8F860, v113);
  sub_219143FFC(&v157, v133, &qword_280E8F860, v113);
  return sub_219BE3014();
}

uint64_t sub_219141C58(uint64_t a1, __int128 *a2)
{
  if (qword_27CC08558 != -1)
  {
    swift_once();
  }

  v4 = qword_27CCD8A18;
  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  *&v57[0] = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v7 = v20;
  v8 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  sub_219BE5314("Failed to fetch suggestions from ChannelPickerSuggestionsService, error=%{public}@", 82, 2, &dword_2186C1000, v4, v5, v6);

  sub_218D2E5FC(v57);
  v9 = *(a2 + 40);
  v10 = a2[1];
  v55 = *a2;
  v56 = v9;
  v54 = v10;
  *&v49[11] = v55;
  *&v49[19] = v10;
  v11 = *(a2 + 16);
  *&v49[3] = v9;
  v12 = *(a2 + 9);
  v53 = *(a2 + 8);
  v27 = *(a2 + 80);
  v13 = *(a2 + 11);
  HIBYTE(v48) = *(a2 + 96);
  *(&v48 + 7) = v13;
  v14 = *(a2 + 13);
  v19[0] = 0;
  v52 = a2[7];
  *&v47[7] = v52;
  v34 = *(a2 + 136);
  v15 = *(a2 + 16);
  v16 = a2[9];
  v50 = a2[10];
  v51 = v16;
  v17 = a2[10];
  *&v46[7] = a2[9];
  v36 = v17;
  *(v45 + 9) = *&v58[9];
  v44 = v57[7];
  v45[0] = *v58;
  v42 = v57[5];
  v43 = v57[6];
  v38 = v57[1];
  v37 = v57[0];
  v41 = v57[4];
  v40 = v57[3];
  v39 = v57[2];
  v20 = v55;
  v21 = v10;
  v22 = v11;
  *v23 = *v49;
  *&v23[14] = *&v49[7];
  v24 = MEMORY[0x277D84F90];
  v25 = v53;
  v26 = v12;
  v28 = v48;
  *v29 = v59[0];
  *&v29[3] = *(v59 + 3);
  v30 = v14;
  v31 = 0;
  *v32 = *v47;
  *&v32[15] = *(&v52 + 1);
  v33 = v15;
  *v35 = *v46;
  *&v35[15] = *&v46[15];
  sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219143FFC(&v56, v19, &qword_280E8F860, v8);
  sub_219143FFC(&v55, v19, &qword_280E8F860, v8);
  sub_219143FFC(&v54, v19, &qword_280E8F860, v8);
  sub_219144534(&v53, v19, sub_2186D0AF8);
  sub_219143FFC(&v52, v19, &qword_280E8F860, v8);
  sub_219143FFC(&v51, v19, &qword_280E8F860, v8);
  sub_219143FFC(&v50, v19, &qword_280E8F860, v8);
  return sub_219BE3014();
}

void *sub_219141FB8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  sub_219144534(a1, v6, type metadata accessor for ChannelPickerElementModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_219144364(v6, type metadata accessor for ChannelPickerElementModel);
  }

  else
  {
    v7 = v6[5];
    v22[4] = v6[4];
    v23[0] = v7;
    *(v23 + 9) = *(v6 + 89);
    v8 = v6[1];
    v22[0] = *v6;
    v22[1] = v8;
    v9 = *(v6 + 3);
    v22[2] = v6[2];
    v22[3] = v9;
    v10 = ChannelPickerElementModel.identifier.getter(v9);
    v12 = v11;
    swift_beginAccess();
    v13 = *(v2 + 256);
    if (*(v13 + 16))
    {
      v14 = sub_21870F700(v10, v12);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v13 + 56) + 8 * v14);
        v18 = swift_endAccess();
        MEMORY[0x28223BE20](v18);
        *(&v21 - 2) = v22;

        v19 = sub_218F8CFC0(sub_21914367C, (&v21 - 4), v17);

        sub_218980BE4(v22);
        return v19;
      }
    }

    else
    {
    }

    swift_endAccess();
    sub_218980BE4(v22);
  }

  return MEMORY[0x277D84F90];
}

void sub_21914219C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 24))
  {
    v6 = type metadata accessor for TagModel();
    v7 = sub_2191440D0(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
    v8 = *(v4 + 16);

    v9 = [v8 displayName];
    v10 = sub_219BF5414();
    v12 = v11;

    v13 = *(a2 + 88);
    v14 = *(a2 + 96);
    *a3 = v4;
    *(a3 + 24) = v6;
    *(a3 + 32) = v7;
    *(a3 + 40) = v10;
    *(a3 + 48) = v12;
    *(a3 + 56) = xmmword_219C325C0;
    *(a3 + 72) = xmmword_219C325C0;
    *(a3 + 88) = v13;
    *(a3 + 96) = v14;
    *(a3 + 104) = 1;
    v15 = type metadata accessor for ChannelPickerElementModel(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for ChannelPickerElementModel(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

uint64_t sub_21914233C(uint64_t *a1, __int128 *a2, void *a3, __n128 a4)
{
  v125 = a3;
  v106 = type metadata accessor for ChannelPickerEngagementModel(0);
  MEMORY[0x28223BE20](v106);
  v105 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ChannelPickerElementModel(0);
  v108 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v104 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v110 = (&v104 - v9);
  MEMORY[0x28223BE20](v10);
  v111 = &v104 - v11;
  MEMORY[0x28223BE20](v12);
  v119 = &v104 - v13;
  v14 = sub_219BDB954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v124 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914418C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v118 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v117 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v116 = &v104 - v22;
  v23 = type metadata accessor for MagazineCategoryConfig.Channel(0);
  v109 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v164 = (&v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = type metadata accessor for MagazineCategoryConfig(0);
  v25 = *(v142 - 1);
  MEMORY[0x28223BE20](v142);
  v140 = (&v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *a1;
  v158 = MEMORY[0x277D84F90];
  v120 = a2;
  v107 = *(a2 + 8);
  if (v107)
  {
    swift_bridgeObjectRetain_n();
    v28 = v107;
  }

  else
  {
    v28 = &unk_282A25D70;
  }

  v29 = v140;
  v137 = *(v27 + 16);
  if (v137)
  {
    v136 = v27 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v139 = (v15 + 48);
    v122 = (v15 + 8);
    v123 = (v15 + 32);
    v30 = 0;
    v114 = v25;
    v115 = v14;
    v112 = v28;
    v113 = v27;
    while (v30 < *(v27 + 16))
    {
      v31 = sub_219144534(v136 + v25[9] * v30, v29, type metadata accessor for MagazineCategoryConfig);
      v32 = v29[3];
      v138 = v29[2];
      *&v145 = v138;
      *(&v145 + 1) = v32;
      v141 = v32;
      MEMORY[0x28223BE20](v31);
      *(&v104 - 2) = &v145;
      v33 = v143;
      v34 = sub_2186D128C(sub_218B0537C, (&v104 - 4), v28);
      v143 = v33;
      if (v34)
      {
        sub_219144364(v29, type metadata accessor for MagazineCategoryConfig);
      }

      else
      {
        v135 = v30;
        v35 = *(v29 + v142[9]);
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = v35 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
          v38 = *(v109 + 72);
          v39 = MEMORY[0x277D84F90];
          do
          {
            v40 = v164;
            sub_219144534(v37, v164, type metadata accessor for MagazineCategoryConfig.Channel);
            v42 = *v40;
            v41 = v40[1];

            sub_219144364(v40, type metadata accessor for MagazineCategoryConfig.Channel);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_218840D24(0, *(v39 + 2) + 1, 1, v39);
            }

            v44 = *(v39 + 2);
            v43 = *(v39 + 3);
            if (v44 >= v43 >> 1)
            {
              v39 = sub_218840D24((v43 > 1), v44 + 1, 1, v39);
            }

            *(v39 + 2) = v44 + 1;
            v45 = &v39[16 * v44];
            *(v45 + 4) = v42;
            *(v45 + 5) = v41;
            v37 += v38;
            --v36;
          }

          while (v36);
        }

        else
        {
          v39 = MEMORY[0x277D84F90];
        }

        v46 = v140;
        v47 = *v140;
        v48 = v140[1];
        v49 = v116;
        sub_219144454(v140 + v142[6], v116, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v50 = *v139;
        v14 = v115;
        v51 = (*v139)(v49, 1, v115);
        v133 = v48;
        v134 = v47;
        if (v51 == 1)
        {

          v131 = 0;
          v132 = 0;
          v130 = 0;
        }

        else
        {
          v52 = v124;
          (*v123)(v124, v49, v14);
          __swift_project_boxed_opaque_existential_1(v125 + 22, v125[25]);

          v132 = sub_219BF2FB4();
          v131 = sub_21897A4D4();
          v130 = sub_2191440D0(&qword_280E8E780, sub_21897A4D4, MEMORY[0x277D34738]);
          v53 = v52;
          v46 = v140;
          (*v122)(v53, v14);
        }

        v54 = v117;
        sub_219144454(v46 + v142[7], v117, &unk_280EE9D00, MEMORY[0x277CC9260]);
        if (v50(v54, 1, v14) == 1)
        {
          v128 = 0;
          v129 = 0;
          v127 = 0;
        }

        else
        {
          v55 = v124;
          (*v123)(v124, v54, v14);
          __swift_project_boxed_opaque_existential_1(v125 + 22, v125[25]);
          v129 = sub_219BF2FB4();
          v128 = sub_21897A4D4();
          v127 = sub_2191440D0(&qword_280E8E780, sub_21897A4D4, MEMORY[0x277D34738]);
          v56 = v55;
          v46 = v140;
          (*v122)(v56, v14);
        }

        v57 = v118;
        sub_219144454(v46 + v142[8], v118, &unk_280EE9D00, MEMORY[0x277CC9260]);
        if (v50(v57, 1, v14) == 1)
        {
          v126 = 0;
          v58 = 0;
          v59 = 0;
        }

        else
        {
          v60 = v124;
          (*v123)(v124, v57, v14);
          __swift_project_boxed_opaque_existential_1(v125 + 22, v125[25]);
          v126 = sub_219BF2FB4();
          v58 = sub_21897A4D4();
          v59 = sub_2191440D0(&qword_280E8E780, sub_21897A4D4, MEMORY[0x277D34738]);
          (*v122)(v60, v14);
        }

        v61 = v138;
        *&v156[0] = 0;
        *(&v156[0] + 1) = 0xE000000000000000;
        v62 = *(v120 + 6);
        if (v62)
        {
          v63 = *(v120 + 5);
        }

        else
        {
          v63 = 0;
        }

        if (v62)
        {
          v64 = *(v120 + 6);
        }

        else
        {
          v64 = 0xE000000000000000;
        }

        MEMORY[0x21CECC330](v63, v64);

        MEMORY[0x21CECC330](47, 0xE100000000000000);
        v65 = v141;
        MEMORY[0x21CECC330](v61, v141);
        *&v145 = v134;
        *(&v145 + 1) = v133;
        *&v146 = v61;
        *(&v146 + 1) = v65;
        *&v147[1] = 0;
        v147[0] = v132;
        *(&v147[1] + 1) = v131;
        *&v148 = v130;
        *(&v148 + 1) = v129;
        v149[0] = 0uLL;
        *&v149[1] = v128;
        v151[0] = 0;
        *(&v149[1] + 1) = v127;
        v150 = v126;
        v151[1] = v58;
        v151[2] = v59;
        v151[3] = v39;
        *&v151[4] = v156[0];
        v66 = v119;
        sub_218BFB180(&v145, v119);
        swift_storeEnumTagMultiPayload();
        sub_21914418C(0, &unk_27CC16960, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83940]);
        sub_2191440D0(&qword_27CC0B7A8, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
        sub_219BF59B4();
        sub_219144364(v66, type metadata accessor for ChannelPickerElementModel);
        sub_218980B3C(&v145);
        v29 = v140;
        sub_219144364(v140, type metadata accessor for MagazineCategoryConfig);
        v27 = v113;
        v25 = v114;
        v28 = v112;
        v30 = v135;
      }

      if (++v30 == v137)
      {

        v25 = v158;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v25 = sub_2191F8584(0, v25[2] + 1, 1, v25);
LABEL_58:
    v95 = v25[2];
    v94 = v25[3];
    if (v95 >= v94 >> 1)
    {
      v25 = sub_2191F8584((v94 > 1), v95 + 1, 1, v25);
    }

    v25[2] = v95 + 1;
    sub_218D2E9EC(v104, v25 + v141 + v95 * v14, type metadata accessor for ChannelPickerElementModel);
    goto LABEL_61;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_37:
  v29 = *(v120 + 14);
  v30 = *(v120 + 15);
  if (v30)
  {
    v67 = v25[2];
    if (!v67)
    {

      goto LABEL_61;
    }

    v141 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v164 = (v25 + v141);

    v68 = 0;
    v142 = v67;
    while (1)
    {
      if (v68 >= v25[2])
      {
        goto LABEL_63;
      }

      v14 = *(v108 + 72);
      v69 = v111;
      sub_219144534(v164 + v14 * v68, v111, type metadata accessor for ChannelPickerElementModel);
      sub_219144534(v69, v110, type metadata accessor for ChannelPickerElementModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v78 = v110[9];
          *v151 = v110[8];
          *&v151[2] = v78;
          *&v151[4] = v110[10];
          v79 = v110[5];
          v148 = v110[4];
          v149[0] = v79;
          v80 = v110[7];
          v149[1] = v110[6];
          v150 = v80;
          v81 = v110[1];
          v145 = *v110;
          v146 = v81;
          v82 = v110[3];
          v147[0] = v110[2];
          v147[1] = v82;
          v77 = *(&v81 + 1);
          v83 = v81;

          sub_218980B3C(&v145);
          if (v83 != v29)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v89 = v105;
          sub_218D2E9EC(v110, v105, type metadata accessor for ChannelPickerEngagementModel);
          v90 = sub_219BE3554();
          v77 = v91;
          v92 = v89;
          v67 = v142;
          sub_219144364(v92, type metadata accessor for ChannelPickerEngagementModel);
          if (v90 != v29)
          {
            goto LABEL_52;
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v84 = v110[7];
        v149[1] = v110[6];
        v150 = v84;
        *v151 = v110[8];
        *(&v151[1] + 1) = *(v110 + 137);
        v85 = v110[3];
        v147[0] = v110[2];
        v147[1] = v85;
        v86 = v110[5];
        v148 = v110[4];
        v149[0] = v86;
        v87 = v110[1];
        v145 = *v110;
        v146 = v87;
        v77 = *(&v145 + 1);
        v88 = v145;

        sub_218980B90(&v145);
        if (v88 != v29)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v71 = v110[5];
        v148 = v110[4];
        v149[0] = v71;
        *(v149 + 9) = *(v110 + 89);
        v72 = v110[1];
        v145 = *v110;
        v146 = v72;
        v73 = v110[3];
        v147[0] = v110[2];
        v147[1] = v73;
        v74 = [*(*__swift_project_boxed_opaque_existential_1(&v145 *(&v146 + 1)) + 16)];
        v75 = sub_219BF5414();
        v77 = v76;

        v67 = v142;
        sub_218980BE4(&v145);
        if (v75 != v29)
        {
          goto LABEL_52;
        }
      }

      if (v30 == v77)
      {

        sub_219144364(v111, type metadata accessor for ChannelPickerElementModel);
LABEL_57:
        sub_218FE8744(v68, v104);
        v25 = v158;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_58;
      }

LABEL_52:
      v93 = sub_219BF78F4();

      sub_219144364(v111, type metadata accessor for ChannelPickerElementModel);
      if (v93)
      {
        goto LABEL_57;
      }

      if (v67 == ++v68)
      {
        v25 = v158;
        break;
      }
    }
  }

LABEL_61:
  sub_218D2E5FC(v156);
  v96 = *(v120 + 40);
  v97 = v120[1];
  v162 = *v120;
  v163 = v96;
  *&v155[11] = v162;
  *&v155[19] = v97;
  v98 = *(v120 + 16);
  *&v155[3] = v96;
  v99 = *(v120 + 9);
  LOBYTE(v149[0]) = *(v120 + 80);
  HIBYTE(v154) = *(v120 + 96);
  *(&v154 + 7) = *(v120 + 11);
  v151[1] = *(v120 + 16);
  LOBYTE(v151[2]) = *(v120 + 136);
  v100 = *(v120 + 13);
  v144[0] = 0;
  v101 = v120[10];
  v160 = v120[9];
  v161 = v97;
  *&v153[7] = v160;
  v159 = v101;
  *&v151[5] = v120[10];
  *(v152 + 9) = *(v157 + 9);
  *&v151[21] = v156[7];
  v152[0] = v157[0];
  *&v151[17] = v156[5];
  *&v151[19] = v156[6];
  *&v151[9] = v156[1];
  *&v151[7] = v156[0];
  *&v151[15] = v156[4];
  *&v151[13] = v156[3];
  *&v151[11] = v156[2];
  v145 = v162;
  v146 = v97;
  LOWORD(v147[0]) = v98;
  *(v147 + 2) = *v155;
  *&v147[1] = *(&v96 + 1);
  *(&v147[1] + 1) = v25;
  *(&v148 + 1) = v99;
  *&v148 = v107;
  *(v149 + 1) = v154;
  *(&v149[1] + 1) = v100;
  LOBYTE(v150) = 0;
  *(&v150 + 1) = v29;
  v151[0] = v30;
  *(&v151[2] + 1) = *v153;
  v151[4] = *(&v160 + 1);
  sub_21914459C(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v102 = MEMORY[0x277D837D0];
  sub_219143FFC(&v163, v144, &qword_280E8F860, MEMORY[0x277D837D0]);
  sub_219143FFC(&v162, v144, &qword_280E8F860, v102);
  sub_219143FFC(&v161, v144, &qword_280E8F860, v102);
  sub_219143FFC(&v160, v144, &qword_280E8F860, v102);
  sub_219143FFC(&v159, v144, &qword_280E8F860, v102);
  return sub_219BE3014();
}

double sub_219143400(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  if (qword_27CC08558 != -1)
  {
    swift_once();
  }

  v5 = qword_27CCD8A18;
  v6 = sub_219BF61F4();
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_219BE5314(a2, a3, 2, &dword_2186C1000, v5, v6, v7);

  return result;
}

void *sub_219143538()
{
  swift_unknownObjectRelease();
  sub_218774F78((v0 + 3));
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);

  return v0;
}

uint64_t sub_219143598()
{
  sub_219143538();

  return swift_deallocClassInstance();
}

uint64_t sub_2191435F0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &off_282A605F0, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219143698()
{
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v1 = off_282A45270;
  v2 = type metadata accessor for ChannelPickerConfigManager();
  return v1(v2);
}

void sub_219143724(uint64_t a1)
{
  if (!qword_27CC16908)
  {
    sub_219144660(255, &qword_27CC16910, MEMORY[0x277D834F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16908);
    }
  }
}

uint64_t sub_2191437B4(uint64_t a1)
{
  v2 = *(a1 + 152);
  v10 = *(a1 + 144);
  v3 = *(v1 + 16);
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v9[8] = *(a1 + 128);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return v3(v9, v2);
}

uint64_t sub_219143894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerElementModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2191438F8(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (*(a1 + 24) == 1 || v1 == 0)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = (v1 + 88);
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      v8 = *(v4 - 2) == 0xD00000000000001ELL && v6 == 0x8000000219D0D4C0;
      if (v8 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }
    }

    v4 += 22;
    if (!--v3)
    {
      return v5;
    }
  }

  if (v7 && *(v7 + 16))
  {
    v99 = *(v7 + 16);

    v9 = v7 + 32;
    v10 = v99;
    v11 = 0;
    v12 = MEMORY[0x277D84F98];
    v5 = MEMORY[0x277D84F98];
    v100 = v7;
    v97 = v7 + 32;
    while (1)
    {
      v13 = (v9 + 176 * v11);
      v14 = *v13;
      v15 = v13[2];
      v107[1] = v13[1];
      v107[2] = v15;
      v107[0] = v14;
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[6];
      v109 = v13[5];
      v110 = v18;
      v107[3] = v16;
      v108 = v17;
      v19 = v13[7];
      v20 = v13[8];
      v21 = v13[10];
      v113 = v13[9];
      v114 = v21;
      v111 = v19;
      v112 = v20;
      if (v108 != 2 && (v108 & 1) != 0)
      {
        v22 = v109;
        if (v109 != 1 && *(&v114 + 1) && *(*(&v114 + 1) + 16))
        {
          break;
        }
      }

LABEL_84:
      if (++v11 == v10)
      {

        return v5;
      }

      if (v11 >= *(v7 + 16))
      {
        __break(1u);
        return MEMORY[0x277D84F98];
      }
    }

    v98 = v11;
    v104 = *(&v114 + 1) + 32;
    v105 = *(&v108 + 1);
    v101 = *(*(&v114 + 1) + 16);
    v102 = *(&v114 + 1);
    sub_218D2E8B0(v107, v106);

    v24 = v101;
    v23 = v102;
    v25 = 0;
    while (v25 < *(v23 + 16))
    {
      v26 = *(v104 + 176 * v25 + 56);
      if (v26)
      {
        v27 = *(v26 + 16);
        if (v27)
        {
          v103 = v25;

          v28 = 0;
          while (1)
          {
            if (v28 >= *(v26 + 16))
            {
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            v31 = (v26 + 32 + 176 * v28);
            v32 = v31[1];
            if (v32)
            {
              v33 = *v31;

              if (v22)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v106[0] = v12;
                v35 = sub_21870F700(v33, v32);
                v37 = *(v12 + 16);
                v38 = (v36 & 1) == 0;
                v39 = __OFADD__(v37, v38);
                v40 = v37 + v38;
                if (v39)
                {
                  goto LABEL_91;
                }

                v41 = v36;
                if (*(v12 + 24) >= v40)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v5 = v12;
                    if ((v36 & 1) == 0)
                    {
                      goto LABEL_46;
                    }

                    goto LABEL_29;
                  }

                  v93 = v35;
                  sub_219144660(0, &qword_280E8D380, MEMORY[0x277D84460]);
                  v50 = sub_219BF7584();
                  v5 = v50;
                  if (*(v12 + 16))
                  {
                    v51 = (v50 + 64);
                    v52 = (v12 + 64);
                    v53 = ((1 << *(v5 + 32)) + 63) >> 6;
                    if (v5 != v12 || v51 >= &v52[8 * v53])
                    {
                      memmove(v51, v52, 8 * v53);
                    }

                    v54 = 0;
                    *(v5 + 16) = *(v12 + 16);
                    v55 = 1 << *(v12 + 32);
                    if (v55 < 64)
                    {
                      v56 = ~(-1 << v55);
                    }

                    else
                    {
                      v56 = -1;
                    }

                    v57 = v56 & *(v12 + 64);
                    v58 = (v55 + 63) >> 6;
                    v94 = v58;
                    if (v57)
                    {
                      do
                      {
                        v59 = __clz(__rbit64(v57));
                        v95 = (v57 - 1) & v57;
LABEL_62:
                        v62 = 16 * (v59 | (v54 << 6));
                        v63 = (*(v12 + 48) + v62);
                        v65 = *v63;
                        v64 = v63[1];
                        v66 = (*(v12 + 56) + v62);
                        v67 = *v66;
                        v68 = v66[1];
                        v69 = (*(v5 + 48) + v62);
                        *v69 = v65;
                        v69[1] = v64;
                        v70 = (*(v5 + 56) + v62);
                        *v70 = v67;
                        v70[1] = v68;

                        v58 = v94;
                        v57 = v95;
                      }

                      while (v95);
                    }

                    v60 = v54;
                    while (1)
                    {
                      v54 = v60 + 1;
                      if (__OFADD__(v60, 1))
                      {
                        goto LABEL_94;
                      }

                      if (v54 >= v58)
                      {
                        break;
                      }

                      v61 = *(v12 + 64 + 8 * v54);
                      ++v60;
                      if (v61)
                      {
                        v59 = __clz(__rbit64(v61));
                        v95 = (v61 - 1) & v61;
                        goto LABEL_62;
                      }
                    }
                  }

                  v35 = v93;
                  if (v41)
                  {
                    goto LABEL_29;
                  }

LABEL_46:
                  *(v5 + 8 * (v35 >> 6) + 64) |= 1 << v35;
                  v46 = (*(v5 + 48) + 16 * v35);
                  *v46 = v33;
                  v46[1] = v32;
                  v47 = (*(v5 + 56) + 16 * v35);
                  *v47 = v105;
                  v47[1] = v22;
                  v48 = *(v5 + 16);
                  v39 = __OFADD__(v48, 1);
                  v49 = v48 + 1;
                  if (v39)
                  {
                    goto LABEL_92;
                  }

                  *(v5 + 16) = v49;
                }

                else
                {
                  sub_21948381C(v40, isUniquelyReferenced_nonNull_native);
                  v5 = v106[0];
                  v35 = sub_21870F700(v33, v32);
                  if ((v41 & 1) != (v42 & 1))
                  {
                    goto LABEL_96;
                  }

                  if ((v41 & 1) == 0)
                  {
                    goto LABEL_46;
                  }

LABEL_29:
                  v29 = v35;

                  v30 = (*(v5 + 56) + 16 * v29);
                  *v30 = v105;
                  v30[1] = v22;
                }

                v12 = v5;
                goto LABEL_31;
              }

              v43 = sub_21870F700(v33, v32);
              v45 = v44;

              if (v45)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v5 = v12;
                }

                else
                {
                  sub_219144660(0, &qword_280E8D380, MEMORY[0x277D84460]);
                  v71 = sub_219BF7584();
                  v5 = v71;
                  if (*(v12 + 16))
                  {
                    v72 = (v71 + 64);
                    v73 = (v12 + 64);
                    v74 = ((1 << *(v5 + 32)) + 63) >> 6;
                    if (v5 != v12 || v72 >= &v73[8 * v74])
                    {
                      memmove(v72, v73, 8 * v74);
                    }

                    v75 = 0;
                    *(v5 + 16) = *(v12 + 16);
                    v76 = 1 << *(v12 + 32);
                    if (v76 < 64)
                    {
                      v77 = ~(-1 << v76);
                    }

                    else
                    {
                      v77 = -1;
                    }

                    v78 = v77 & *(v12 + 64);
                    v79 = (v76 + 63) >> 6;
                    if (v78)
                    {
                      do
                      {
                        v80 = __clz(__rbit64(v78));
                        v96 = (v78 - 1) & v78;
LABEL_80:
                        v83 = 16 * (v80 | (v75 << 6));
                        v84 = (*(v12 + 48) + v83);
                        v86 = *v84;
                        v85 = v84[1];
                        v87 = (*(v12 + 56) + v83);
                        v88 = *v87;
                        v89 = v87[1];
                        v90 = (*(v5 + 48) + v83);
                        *v90 = v86;
                        v90[1] = v85;
                        v91 = (*(v5 + 56) + v83);
                        *v91 = v88;
                        v91[1] = v89;

                        v78 = v96;
                      }

                      while (v96);
                    }

                    v81 = v75;
                    while (1)
                    {
                      v75 = v81 + 1;
                      if (__OFADD__(v81, 1))
                      {
                        goto LABEL_95;
                      }

                      if (v75 >= v79)
                      {
                        break;
                      }

                      v82 = *(v12 + 64 + 8 * v75);
                      ++v81;
                      if (v82)
                      {
                        v80 = __clz(__rbit64(v82));
                        v96 = (v82 - 1) & v82;
                        goto LABEL_80;
                      }
                    }
                  }

                  v12 = v5;
                }

                sub_21948A674(v43, v5);
              }
            }

LABEL_31:
            if (++v28 == v27)
            {

              v7 = v100;
              v24 = v101;
              v23 = v102;
              v25 = v103;
              break;
            }
          }
        }
      }

      if (++v25 == v24)
      {

        sub_218D2E90C(v107);

        v11 = v98;
        v10 = v99;
        v9 = v97;
        goto LABEL_84;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    result = sub_219BF79A4();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}