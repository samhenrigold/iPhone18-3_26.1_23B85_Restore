id sub_2207F6A18()
{
  if (v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_isYahooToolbarVisible] != 1)
  {
    v5 = *&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController];
    result = [v5 additionalSafeAreaInsets];
    if (v7 == 0.0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  [result safeAreaInsets];
  v4 = v3;

  v5 = *&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController];
  result = [v5 additionalSafeAreaInsets];
  if (vabdd_f64(v6, 66.0 - v4) > 0.5)
  {
LABEL_7:
    [v5 additionalSafeAreaInsets];

    return [v5 setAdditionalSafeAreaInsets_];
  }

  return result;
}

void sub_2207F6BEC()
{
  v1 = [*v0 parentViewController];
  sub_22088A97C();
}

double sub_2207F6C50(uint64_t a1)
{
  v24 = sub_22088E85C();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088E86C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = sub_22088C6FC();
  sub_22076C7F8(0, v11);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  sub_22089028C();
  v15 = (a1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
  swift_beginAccess();
  v16 = __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v17 = *(*v16 + 40);
  v18 = *(*v16 + 48);
  __swift_project_boxed_opaque_existential_1((*v16 + 16), v17);
  sub_22051E274(v17, v18, &v10[v13]);
  v19 = *MEMORY[0x277D6D428];
  v20 = sub_22088ADDC();
  (*(*(v20 - 8) + 104))(&v10[v14], v19, v20);
  (*(v7 + 104))(v10, *MEMORY[0x277D6ECA0], v6);
  v21 = v24;
  (*(v2 + 104))(v5, *MEMORY[0x277D6ECA8], v24);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088B54C();

  (*(v2 + 8))(v5, v21);
  (*(v7 + 8))(v10, v6);

  return result;
}

double sub_2207F6F5C(uint64_t a1)
{
  v1 = sub_22088E85C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088E86C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C6FC();
  (*(v7 + 104))(v10, *MEMORY[0x277D6EC88], v6);
  (*(v2 + 104))(v5, *MEMORY[0x277D6ECA8], v1);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088B54C();

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);

  return result;
}

uint64_t sub_2207F7194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  sub_220488214(0, &qword_281297E60, MEMORY[0x277D6D710]);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v21 - v7;
  v9 = sub_22088B96C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_keyboardInputMonitor), *(v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_keyboardInputMonitor + 24));
  v14 = sub_22088CA3C();
  v16 = v15;
  sub_220891CAC();
  if (v28)
  {
    sub_220457328(&v27, v29);
    v22 = v8;
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    (*(v10 + 104))(v13, *MEMORY[0x277D6D970], v9);
    v8 = v22;
    sub_22088C39C();
    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_2204C0A60(&v27, sub_2207FA4E8);
  }

  v17 = *(v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler);
  sub_22088549C();
  sub_220488214(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  sub_22088E84C();
  v18 = *(v17 + 40);
  ObjectType = swift_getObjectType();
  LOBYTE(v29[0]) = (v14 == 1703936) & ~v16;
  (*(v18 + 64))(a2, v8, 0, v29, ObjectType, v18);
  return (*(v25 + 8))(v8, v26);
}

void sub_2207F7494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22088C32C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088DA2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v32 - v16;
  v36 = *(v9 + 16);
  v36(&v32 - v16, a3, v8, v15);
  v18 = *(v9 + 88);
  v19 = v18(v17, v8);
  if (v19 == *MEMORY[0x277D6E950])
  {
    (*(v9 + 8))(v17, v8);
    v20 = *MEMORY[0x277D6E930];
LABEL_3:
    v34 = v20;
    v32 = v5;
    v33 = v4;
    v21 = *(v37 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler);
    sub_220821EC4();
    v22 = *(v21 + 40);
    ObjectType = swift_getObjectType();
    (*(v22 + 40))(ObjectType, v22);
    (v36)(v12, a3, v8);
    LODWORD(v21) = v18(v12, v8);
    (*(v9 + 8))(v12, v8);
    if (v21 == v34)
    {
      sub_22088C76C();
      swift_getObjectType();
      v24 = v35;
      sub_22088D92C();
      swift_unknownObjectRelease();
      sub_22088C71C();
      v25 = sub_22088BFCC();

      [v25 adjustedContentInset];
      v27 = v26;

      sub_22058B43C(v24, v27);
      (*(v32 + 8))(v24, v33);
    }

    return;
  }

  if (v19 == *MEMORY[0x277D6E928])
  {
    v28 = *(*(v37 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
    v29 = swift_getObjectType();
    (*(v28 + 32))(v29, v28);
    return;
  }

  v20 = *MEMORY[0x277D6E930];
  if (v19 == *MEMORY[0x277D6E948] || v19 == v20)
  {
    goto LABEL_3;
  }

  if (v19 != *MEMORY[0x277D6E958])
  {
    if (v19 == *MEMORY[0x277D6E970])
    {
      sub_22088C71C();
      v31 = sub_22088BFCC();

      sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
      sub_22088B74C();
    }

    else
    {
      sub_22089267C();
      __break(1u);
    }
  }
}

uint64_t sub_2207F7918()
{
  v0 = sub_22088698C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C(0);
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v14, v6);
      sub_22088FF6C();
      sub_2208868DC();
      (*(v1 + 8))(v4, v0);
      v21 = sub_220890B8C();
      swift_unknownObjectRelease();
      (*(v7 + 8))(v10, v6);
      return v21;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v19 = EnumCaseMultiPayload;
    result = 0;
    if (v19 != 5)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_8:
    sub_2204C0A60(v14, type metadata accessor for ForYouFeedModel);
    return 0;
  }

  sub_220458918(0);
  v17 = *(v16 + 48);
  v18 = sub_22089030C();
  (*(*(v18 - 8) + 8))(&v14[v17], v18);
  return 0;
}

void sub_2207F7C0C(uint64_t a1, char a2)
{
  v4 = sub_22088E85C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088E86C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v26[1] = v2;
    v26[2] = sub_22088C6FC();
    v14 = (v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
    swift_beginAccess();
    v15 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v13[3] = sub_22088FE9C();
    v13[4] = sub_22044E3AC(&qword_27CF58020, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    __swift_allocate_boxed_opaque_existential_1(v13);
    v26[0] = v4;
    v16 = *v15;
    v17 = [objc_opt_self() labelColor];
    v19 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v19);
    (*(*(v18 + 16) + 472))(v19);
    sub_22088FE8C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    v22 = sub_22089141C();
    v24 = v23;

    v13[5] = v22;
    v13[6] = v24;
    (*(v10 + 104))(v13, *MEMORY[0x277D6EC80], v9);
    v25 = v26[0];
    (*(v5 + 104))(v8, *MEMORY[0x277D6ECB0], v26[0]);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_22088B54C();

    (*(v5 + 8))(v8, v25);

    (*(v10 + 8))(v13, v9);
  }
}

double sub_2207F8000(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_2208886AC();
  }

  return result;
}

double sub_2207F80DC(uint64_t a1, uint64_t a2)
{
  sub_220488214(0, &qword_281297660, MEMORY[0x277D6E3A0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 112));
  (*(v6 + 16))(v9, a2, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_22088726C();

  return result;
}

void sub_2207F8250(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler);
  v5 = v4[5];
  ObjectType = swift_getObjectType();
  (*(v5 + 112))(a2, ObjectType, v5);
  __swift_project_boxed_opaque_existential_1(v4 + 11, v4[14]);
  sub_22073C1E4(a2);
}

uint64_t sub_2207F82CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_2207F8524(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2204D4E50(0, &qword_2812976D0, MEMORY[0x277D6E270], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v40 = &v39 - v8;
  v9 = sub_22088CC6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v39 - v19;
  v21 = a1;
  sub_22088A98C();
  sub_22088A92C();
  v41 = *(v10 + 16);
  v42 = a3;
  v41(v20, a3, v9);
  v43 = v10;
  v22 = *(v10 + 88);
  v23 = v22(v20, v9);
  v24 = *MEMORY[0x277D6E230];
  v25 = *MEMORY[0x277D6E258];
  v26 = v23 == *MEMORY[0x277D6E230] || v23 == v25;
  v45 = v3;
  if (v26)
  {
    v27 = *(*(v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v27 + 80))(ObjectType, v27);
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D6E260])
  {
    goto LABEL_8;
  }

  if (v23 != *MEMORY[0x277D6E250])
  {
    if (v23 != *MEMORY[0x277D6E268])
    {
      if (v23 == *MEMORY[0x277D6E248])
      {
        goto LABEL_10;
      }

      if (v23 != *MEMORY[0x277D6E240] && v23 != *MEMORY[0x277D6E238])
      {
        goto LABEL_30;
      }
    }

LABEL_8:
    v29 = *(*(v45 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
    v30 = swift_getObjectType();
    (*(v29 + 88))(v30, v29);
  }

LABEL_10:
  v31 = v41;
  v41(v16, v42, v9);
  result = v22(v16, v9);
  if (result == v24 || result == v25)
  {
    v34 = v44;
    v35 = *(v45 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_forYouFeedViewCoordinator);
    v36 = v43;
    (*(v43 + 104))(v44, v25, v9);
LABEL_19:
    v37 = v40;
    v31(v40, v34, v9);
    (*(v36 + 56))(v37, 0, 1, v9);
    v38 = OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_presentationState;
    swift_beginAccess();
    sub_2207FA60C(v37, v35 + v38);
    swift_endAccess();
    sub_2205EDDD4(v34);
    return (*(v36 + 8))(v34, v9);
  }

  v34 = v44;
  v36 = v43;
  if (result == *MEMORY[0x277D6E260] || result == *MEMORY[0x277D6E250])
  {
    v35 = *(v45 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_forYouFeedViewCoordinator);
    (*(v43 + 104))(v44, result, v9);
    goto LABEL_19;
  }

  if (result != *MEMORY[0x277D6E268] && result != *MEMORY[0x277D6E248] && result != *MEMORY[0x277D6E240] && result != *MEMORY[0x277D6E238])
  {
LABEL_30:
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2207F8A38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220891C4C();
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    v5 = sub_22088D03C();
    if (v5)
    {
      v6 = v5;
      if (sub_220891C7C())
      {
        v7 = v6;
        sub_22088D02C();
        v8 = 0;
        v6 = v4;
        v4 = v7;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_22088CC6C();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t sub_2207F8B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = sub_22088CC6C();
    v12 = MEMORY[0x277D6E218];
    v13 = MEMORY[0x277D6E250];
LABEL_5:
    (*(*(v11 - 8) + 104))(a2, *v13);
    v14 = *v12;
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = sub_22088CC0C();
    v12 = MEMORY[0x277D6E1F8];
    v13 = MEMORY[0x277D6E1E8];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_2207F8D4C@<X0>(uint64_t a2@<X8>)
{
  v32 = a2;
  swift_getObjectType();
  v2 = sub_22088B3CC();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v28 = &v27 - v8;
  v29 = sub_22088B3DC();
  v9 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v17 = &v27 - v16;
  if (qword_281298EC0 != -1)
  {
    swift_once();
  }

  sub_22044E3AC(&unk_28128A3B8, v15, type metadata accessor for ForYouFeedViewController, &unk_2208B8534);
  sub_220886B3C();
  v18 = v33;
  sub_2204D4E50(0, &qword_28127E0B0, MEMORY[0x277D6D770], MEMORY[0x277D84560]);
  v19 = sub_22088B3EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  if (v18 == 1)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_220899920;
    v24 = *(v20 + 104);
    v24(v23 + v22, *MEMORY[0x277D6D760], v19);
    v24(v23 + v22 + v21, *MEMORY[0x277D6D768], v19);
    sub_220490DA4(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v9 + 104))(v17, *MEMORY[0x277D6D750], v29);
    (*(v30 + 104))(v28, *MEMORY[0x277D6D738], v31);
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_220899360;
    (*(v20 + 104))(v26 + v22, *MEMORY[0x277D6D768], v19);
    sub_220490DA4(v26);
    swift_setDeallocating();
    (*(v20 + 8))(v26 + v22, v19);
    swift_deallocClassInstance();
    (*(v9 + 104))(v12, *MEMORY[0x277D6D750], v29);
    (*(v30 + 104))(v5, *MEMORY[0x277D6D738], v31);
  }

  return sub_22088B40C();
}

uint64_t sub_2207F9280@<X0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
  swift_beginAccess();
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = *(*v4 + 40);
  v5 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v6);
  *a1 = (*(*(v5 + 16) + 472))(v6);
  v7 = *MEMORY[0x277D6E6D0];
  v8 = sub_22088D45C();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_2207F9374(uint64_t a1)
{
  v30 = sub_22088CE6C();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208854AC();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - v12;
  v14 = sub_22088B96C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a1, v14, v17);
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == *MEMORY[0x277D6D968])
  {
    sub_22088C71C();
    v21 = sub_22088BFCC();

    v22 = [v21 indexPathsForSelectedItems];

    if (v22)
    {
      v23 = sub_2208916EC();

      if (*(v23 + 16))
      {
        v24 = v29;
        (*(v29 + 16))(v9, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v6);

        (*(v24 + 32))(v13, v9, v6);
        sub_22088C71C();
        v25 = sub_22088BFCC();

        v26 = sub_22088544C();
        [v25 deselectItemAtIndexPath:v26 animated:1];

        (*(v24 + 8))(v13, v6);
      }

      else
      {
      }
    }

    v27 = MEMORY[0x277D6E3C8];
    goto LABEL_9;
  }

  if (v20 == *MEMORY[0x277D6D970])
  {
    v27 = MEMORY[0x277D6E3C0];
LABEL_9:
    (*(v2 + 104))(v5, *v27, v30);
    return sub_22088C74C();
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_2207F9794(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(*(Strong + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    (*(v3 + 120))(ObjectType, v3);
  }
}

uint64_t sub_2207F98B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
  swift_beginAccess();
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = *(*v4 + 40);
  v6 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v5);
  (*(v6 + 72))(v13, v5, v6);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 512))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  *a1 = v9;
  v10 = *MEMORY[0x277D6E408];
  v11 = sub_22088CF3C();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_2207F99D4@<X0>(uint64_t *a2@<X8>)
{
  sub_22088C71C();
  v3 = sub_22088BFCC();

  *a2 = v3;
  v4 = *MEMORY[0x277D6DA10];
  v5 = sub_22088BA9C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_2207F9A78(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2FB0](ObjectType, a2);
}

void sub_2207F9B8C(uint64_t a1)
{
  v2 = sub_22088CC6C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D6E230] || v8 == *MEMORY[0x277D6E258])
  {
    sub_22088C71C();
    v10 = sub_22088BFCC();

    [v10 setShowsVerticalScrollIndicator_];
LABEL_20:

    return;
  }

  if (v8 == *MEMORY[0x277D6E260] || v8 == *MEMORY[0x277D6E250])
  {
LABEL_19:
    sub_22088C71C();
    v14 = sub_22088BFCC();

    [v14 setShowsVerticalScrollIndicator_];

    sub_22088C71C();
    v10 = sub_22088BFCC();

    [v10 ts:0 scrollToTop:?];
    goto LABEL_20;
  }

  if (v8 != *MEMORY[0x277D6E268] && v8 != *MEMORY[0x277D6E248] && v8 != *MEMORY[0x277D6E240])
  {
    if (v8 != *MEMORY[0x277D6E238])
    {
      sub_22089267C();
      __break(1u);
      return;
    }

    goto LABEL_19;
  }
}

void sub_2207F9E04(__n128 a1)
{
  v1 = a1.n128_f64[0];
  v27 = sub_220891C4C();
  if (v27)
  {
    type metadata accessor for UIKitTickerCardContainerController(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = v27;
      v5 = sub_22088D25C();
      type metadata accessor for StockListViewController(0);
      sub_220891C9C();

      if (v29)
      {
        v6 = sub_22088D25C();

        v7 = [v6 view];
        if (v7)
        {
          [v7 frame];
          v28 = v8;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          v15 = [v29 view];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 safeAreaLayoutGuide];

            [v17 layoutFrame];
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v25 = v24;

            v26.n128_u64[0] = v28;
            sub_2205EDBA4(v26, v10, v12, v14, v19, v21, v23, v25, v1, *(v3 + qword_281282180));

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2207FA020(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v34 = a1;
  sub_220488214(0, &qword_281297E60, MEMORY[0x277D6D710]);
  v35 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v29 - v6;
  sub_220488214(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - v10;
  sub_2204D4E50(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v29 - v14;
  v16 = sub_22088B96C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220891CAC();
  if (v38)
  {
    sub_220457328(&v37, v39);
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    (*(v17 + 104))(v20, *MEMORY[0x277D6D970], v16);
    sub_22088C39C();
    (*(v17 + 8))(v20, v16);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_2204C0A60(&v37, sub_2207FA4E8);
  }

  sub_22088C71C();
  v21 = sub_22088BFCC();

  v22 = sub_2208854AC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v15, v32, v22);
  (*(v23 + 56))(v15, 0, 1, v22);
  sub_220891BDC();

  sub_22057E664(v15);
  v24 = *(v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler);
  sub_22088C73C();
  *&v37 = v39[0];
  sub_220488310(0);
  sub_22044E3AC(&qword_281297C80, 255, sub_220488310, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();

  sub_22088549C();
  v25 = v31;
  sub_22088E84C();
  (*(v30 + 8))(v11, v25);
  v26 = *(v24 + 40);
  ObjectType = swift_getObjectType();
  v36 = 0;
  (*(v26 + 64))(v34, v7, 1, &v36, ObjectType, v26);
  return (*(v33 + 8))(v7, v35);
}

void sub_2207FA4E8(uint64_t a1)
{
  if (!qword_27CF59760)
  {
    sub_2204446D4(255, &unk_2812979A0, MEMORY[0x277D6DE88]);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF59760);
    }
  }
}

uint64_t sub_2207FA550()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2207FA580(uint64_t a1)
{
  sub_220488214(0, &qword_281297660, MEMORY[0x277D6E3A0]);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_22073E0E0(a1, v4);
}

uint64_t sub_2207FA60C(uint64_t a1, uint64_t a2)
{
  sub_2204D4E50(0, &qword_2812976D0, MEMORY[0x277D6E270], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2207FA6A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_statusBarView;
  *(v1 + v2) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventManager;
  sub_2207FA9E0(0);
  swift_allocObject();
  *(v1 + v3) = sub_22088841C();
  *(v1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_toolbarTitleIsHidden) = 1;
  v4 = (v1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewModel);
  *v4 = 0u;
  v4[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_isYahooToolbarVisible) = 0;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2207FA794()
{
  v0 = sub_22088CC6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220891C4C();
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  swift_getObjectType();
  v7 = sub_22088D03C();
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  if ((sub_220891C7C() & 1) == 0)
  {

LABEL_9:
    return 0;
  }

  sub_22088D02C();
  v9 = (*(v1 + 88))(v4, v0);
  if (v9 == *MEMORY[0x277D6E230] || v9 == *MEMORY[0x277D6E258])
  {

    return 1;
  }

  if (v9 != *MEMORY[0x277D6E260] && v9 != *MEMORY[0x277D6E250] && v9 != *MEMORY[0x277D6E268] && v9 != *MEMORY[0x277D6E248] && v9 != *MEMORY[0x277D6E240] && v9 != *MEMORY[0x277D6E238])
  {
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  return 0;
}

void sub_2207FA9E0(uint64_t a1)
{
  if (!qword_281298990)
  {
    sub_2205044FC();
    v1 = sub_22088842C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298990);
    }
  }
}

uint64_t sub_2207FAA68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_22045343C(0, &qword_2812968D8, MEMORY[0x277D33478]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - v6;
  sub_2207FAF08(0, &qword_28127E200, MEMORY[0x277D844C8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207FAEB4();
  sub_220892A4C();
  if (!v2)
  {
    v14 = v17;
    sub_22089039C();
    sub_2207FB3F4(&qword_2812968E0, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_22089276C();
    (*(v10 + 8))(v13, v9);
    sub_220561F64(v7, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2207FAC9C(uint64_t a1)
{
  v2 = sub_2207FAEB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2207FACD8(uint64_t a1)
{
  v2 = sub_2207FAEB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2207FAD2C(void *a1, __n128 a2)
{
  sub_2207FAF08(0, &qword_27CF5A178, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207FAEB4();
  sub_220892A5C();
  sub_22089039C();
  sub_2207FB3F4(&qword_27CF56B78, MEMORY[0x277D33478], MEMORY[0x277D33480]);
  sub_2208927FC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2207FAEB4()
{
  result = qword_281285578;
  if (!qword_281285578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281285578);
  }

  return result;
}

void sub_2207FAF08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2207FAEB4();
    v7 = a3(a1, &type metadata for StockForYouFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2207FAF6C()
{
  v37 = type metadata accessor for StockForYouFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v37, v0);
  v36 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22088FCCC();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045343C(0, &qword_2812985C8, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - v10;
  v12 = sub_22088FB9C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088519C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C(0);
  v23 = v22;
  __swift_allocate_value_buffer(v22, qword_2812B6BA0);
  __swift_project_value_buffer(v23, qword_2812B6BA0);
  sub_22088518C();
  v32 = sub_22088517C();
  v25 = v24;
  (*(v18 + 8))(v21, v17);
  (*(v13 + 104))(v16, *MEMORY[0x277D32628], v12);
  v26 = sub_220888F5C();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 1, 1, v26);
  v28 = v33;
  v27(v33, 1, 1, v26);
  v29 = v34;
  (*(v2 + 104))(v34, *MEMORY[0x277D32750], v35);
  v30 = sub_22089039C();
  (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
  sub_2207FB3F4(&qword_281285558, type metadata accessor for StockForYouFeedGroupConfigData, &unk_2208B85C8);
  sub_2207FB3F4(&qword_281285560, type metadata accessor for StockForYouFeedGroupConfigData, &unk_2208B85A0);
  return sub_22088F4AC(0x6B636F7473, 0xE500000000000000, v32, v25, 0, 0, 0, v16, v11, v28, MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], v29);
}

uint64_t sub_2207FB3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2207FB450()
{
  result = qword_27CF5A180;
  if (!qword_27CF5A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A180);
  }

  return result;
}

unint64_t sub_2207FB4A8()
{
  result = qword_281285568;
  if (!qword_281285568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281285568);
  }

  return result;
}

unint64_t sub_2207FB500()
{
  result = qword_281285570;
  if (!qword_281285570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281285570);
  }

  return result;
}

id sub_2207FB584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StockChartViewController.ErrorContext(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2207FB628(void *a1)
{
  v2 = [a1 state];
  v3 = sub_2207FD508();
  v4 = sub_2207FD700();
  v5 = sub_2207FD8F4();
  [a1 addState_];
  [a1 addState_];
  [a1 addState_];
  sub_22048BC00();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089E460;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v30 = v2;
  v7 = v4;
  v29 = v5;
  sub_2207E210C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v8 = objc_allocWithZone(MEMORY[0x277D34778]);
  v9 = v3;
  v10 = sub_22089132C();
  sub_2207FEAE8();
  sub_2207FE8DC(&qword_28127E700, sub_2207FEAE8, MEMORY[0x277D85378]);
  v11 = sub_2208918DC();

  v12 = [v8 initWithName:v10 transitionFromStates:v11 toState:v9];

  [a1 addEvent_];
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_22089B120;
  *(v13 + 32) = v9;
  *(v13 + 40) = v7;
  v28 = v7;
  v14 = v9;
  sub_2207E210C(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277D34778]);
  v16 = v29;
  v17 = sub_22089132C();
  v18 = sub_2208918DC();

  v19 = [v15 initWithName:v17 transitionFromStates:v18 toState:v16];

  [a1 addEvent_];
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_22089B120;
  *(v20 + 32) = v14;
  *(v20 + 40) = v16;
  v21 = v16;
  v22 = v14;
  sub_2207E210C(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277D34778]);
  v24 = v28;
  v25 = sub_22089132C();
  v26 = sub_2208918DC();

  v27 = [v23 initWithName:v25 transitionFromStates:v26 toState:v24];

  [a1 addEvent_];
  [a1 activate];
}

id StockChartViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id StockChartViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_22089132C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StockChartViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall StockChartViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2208854FC();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x28223BE20](v3, v5).n128_u64[0];
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_viewDidLoad, v6);
  v9 = *&v1[OBJC_IVAR____TtC8StocksUI24StockChartViewController_dateRangePicker];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = (v9 + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_onChange);
  v12 = *(v9 + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_onChange);
  v13 = *(v9 + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_onChange + 8);
  *v11 = sub_2207FE87C;
  v11[1] = v10;

  sub_2204DA45C(v12, v13);

  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v38 = v8;
  [v14 addSubview_];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 addSubview_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v20 = *&v1[OBJC_IVAR____TtC8StocksUI24StockChartViewController_activityIndicator];
  [v18 addSubview_];

  v21 = *&v1[OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController];
  [v1 addChildViewController_];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v36 = v4;
  v37 = v3;
  v24 = [v21 view];
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = v24;
  [v23 addSubview_];

  [v21 didMoveToParentViewController_];
  v26 = *&v1[OBJC_IVAR____TtC8StocksUI24StockChartViewController_columnChartViewController];
  [v1 addChildViewController_];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  v29 = [v26 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v30 = v29;
  [v28 addSubview_];

  [v26 didMoveToParentViewController_];
  v31 = v38;
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2207FE8DC(&qword_28128A040, type metadata accessor for StockChartViewController, &protocol conformance descriptor for StockChartViewController);
  sub_220886B4C();

  sub_2207FC784(v31);
  sub_220890F4C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22088868C();

  __swift_destroy_boxed_opaque_existential_1(v39);
  [v20 setIsAccessibilityElement_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v34 = sub_22089132C();

  [v20 setAccessibilityLabel_];

  v35 = [v1 traitCollection];
  sub_2207FCD44(v35);

  (*(v36 + 8))(v31, v37);
}

void sub_2207FC284(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine);
    if (v5)
    {
      v6 = v5;
      v7 = sub_22089132C();

      swift_unknownObjectRetain();
      v8 = [v4 traitCollection];
      v9 = off_2834124D0[0];
      type metadata accessor for StockChartInteractor(0);
      v9(a1, v8, 0);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_2207FC3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208854FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v8);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_220888FEC();

  return result;
}

void sub_2207FC518(uint64_t a1, uint64_t a2)
{
  v3 = sub_2208854FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812980D0 != -1)
  {
    swift_once();
  }

  v8 = sub_22088A84C();
  __swift_project_value_buffer(v8, qword_2812B6CE8);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_22088A82C();
  v10 = sub_220891AFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136446210;
    v14 = sub_2208854EC();
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    v17 = sub_2204A7B78(v14, v16, v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22043F000, v9, v10, "Chart range was updated, newDateRange=%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223D8B7F0](v13, -1, -1);
    v18 = v12;
    a1 = v21;
    MEMORY[0x223D8B7F0](v18, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    sub_2207FC784(a1);
  }
}

double sub_2207FC784(uint64_t a1)
{
  v3 = sub_2208854FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_dateRangePicker);
  v13 = OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl;
  v14 = *(v12 + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl);
  v15 = sub_22088B5EC();

  LOBYTE(v14) = sub_2206FA3A8(a1, v15);

  v21 = *(v12 + v13);
  if (v14)
  {
    sub_22088B5BC();
    v16 = v21;
  }

  else
  {
    v18 = sub_22088B5EC();

    if (*(v18 + 16))
    {
      (*(v4 + 16))(v7, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

      (*(v4 + 32))(v11, v7, v3);
      v19 = *(v12 + v13);
      sub_22088B5BC();

      (*(v4 + 8))(v11, v3);
    }

    else
    {
    }
  }

  return result;
}

char *sub_2207FC9D4(uint64_t a1, uint64_t a2)
{
  sub_2207FEB84(0, &qword_28127ED30, MEMORY[0x277D6C720]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v48 - v5;
  v7 = sub_220890FFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_2207FEBD8(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_2207FEC58(v6, &qword_28127ED30, MEMORY[0x277D6C720]);
    }

    (*(v8 + 32))(v11, v6, v7);
    v14 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_columnChartViewController;
    result = [*&v13[OBJC_IVAR____TtC8StocksUI24StockChartViewController_columnChartViewController] view];
    if (result)
    {
      v15 = result;
      result = [*&v13[OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController] view];
      if (result)
      {
        v16 = result;
        [result frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v49.origin.x = v18;
        v49.origin.y = v20;
        v49.size.width = v22;
        v49.size.height = v24;
        MinX = CGRectGetMinX(v49);
        sub_220890FEC();
        v26 = CGRectGetMinX(v50);
        result = [*&v13[v14] view];
        if (result)
        {
          v27 = result;
          [result frame];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v51.origin.x = v29;
          v51.origin.y = v31;
          v51.size.width = v33;
          v51.size.height = v35;
          MinY = CGRectGetMinY(v51);
          sub_220890FEC();
          Width = CGRectGetWidth(v52);
          result = [*&v13[v14] view];
          if (result)
          {
            v38 = result;
            v39 = MinX + v26;
            [result frame];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;

            v53.origin.x = v41;
            v53.origin.y = v43;
            v53.size.width = v45;
            v53.size.height = v47;
            [v15 setFrame_];

            return (*(v8 + 8))(v11, v7);
          }

LABEL_13:
          __break(1u);
          return result;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void sub_2207FCD44(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8StocksUI24StockChartViewController_styler];
  swift_beginAccess();
  sub_22046DA2C(v4, v24);
  v5 = v25;
  v6 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v22 = v5;
  v23 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v21);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_220457328(&v21, v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_22046DA2C(v4, v24);
  v9 = __swift_project_boxed_opaque_existential_1(v24, v25);
  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    v12 = *v9;
    v14 = *(*v9 + 80);
    v13 = *(*v9 + 88);
    __swift_project_boxed_opaque_existential_1((v12 + 56), v14);
    v15 = (*(*(v13 + 16) + 80))(v14);
    [v11 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    sub_2205809F0(*&v2[OBJC_IVAR____TtC8StocksUI24StockChartViewController_dateRangePicker]);
    v16 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    v17 = *&v2[OBJC_IVAR____TtC8StocksUI24StockChartViewController_topDateRangePickerSeparator];
    v19 = *(*v16 + 80);
    v18 = *(*v16 + 88);
    __swift_project_boxed_opaque_existential_1((*v16 + 56), v19);
    v20 = (*(*(v18 + 16) + 168))(v19);
    [v17 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall StockChartViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  ObjectType = swift_getObjectType();
  sub_2207FEB84(0, &qword_281299390, MEMORY[0x277D69160]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = sub_2208854FC();
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x28223BE20](v9, v11).n128_u64[0];
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, isa, v12);
  v15 = [v2 traitCollection];
  sub_2207FCD44(v15);

  if (isa)
  {
    v16 = isa;
    v17 = [(objc_class *)v16 userInterfaceStyle];
    v18 = [v2 traitCollection];
    v19 = [v18 userInterfaceStyle];

    if (v17 == v19)
    {
    }

    else
    {
      v20 = *(*&v2[OBJC_IVAR____TtC8StocksUI24StockChartViewController_dateRangePicker] + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl);
      sub_22088B59C();

      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_2207FEC58(v8, &qword_281299390, MEMORY[0x277D69160]);
      }

      else
      {
        (*(v10 + 32))(v14, v8, v9);
        v21 = [v2 traitCollection];
        v22 = off_2834124D0[0];
        type metadata accessor for StockChartInteractor(0);
        v22(v14, v21, 1);

        (*(v10 + 8))(v14, v9);
      }
    }
  }
}

Swift::Void __swiftcall StockChartViewController.viewDidLayoutSubviews()()
{
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8StocksUI24StockChartViewController_errorView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController];
    v3 = v1;
    v4 = [v2 view];
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = v4;
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
  }

  v14 = *&v0[OBJC_IVAR____TtC8StocksUI24StockChartViewController_activityIndicator];
  v15 = *&v0[OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController];
  v16 = [v15 view];
  if (v16)
  {
    v17 = v16;
    [v16 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v38.origin.x = v19;
    v38.origin.y = v21;
    v38.size.width = v23;
    v38.size.height = v25;
    MidX = CGRectGetMidX(v38);
    v27 = [v15 view];
    if (v27)
    {
      v28 = v27;
      [v27 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v39.origin.x = v30;
      v39.origin.y = v32;
      v39.size.width = v34;
      v39.size.height = v36;
      [v14 setCenter_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

id sub_2207FD508()
{
  v0 = objc_allocWithZone(MEMORY[0x277D34780]);
  v1 = sub_22089132C();
  v2 = [v0 initWithName_];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_2207FEB74;
  v15 = v3;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2207FDCB0;
  v13 = &block_descriptor_36;
  v4 = _Block_copy(&v10);

  v5 = [v2 onWillEnter_];
  _Block_release(v4);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_2207FEB7C;
  v15 = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2207FDCB0;
  v13 = &block_descriptor_40_0;
  v7 = _Block_copy(&v10);

  v8 = [v2 onWillExit_];
  _Block_release(v7);

  return v2;
}

id sub_2207FD700()
{
  v0 = objc_allocWithZone(MEMORY[0x277D34780]);
  v1 = sub_22089132C();
  v2 = [v0 initWithName_];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_2207FEB44;
  v15 = v3;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2207FDCB0;
  v13 = &block_descriptor_28;
  v4 = _Block_copy(&v10);

  v5 = [v2 onWillEnter_];
  _Block_release(v4);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_2207FEB4C;
  v15 = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2207FDCB0;
  v13 = &block_descriptor_32;
  v7 = _Block_copy(&v10);

  v8 = [v2 onWillExit_];
  _Block_release(v7);

  return v2;
}

id sub_2207FD8F4()
{
  v0 = objc_allocWithZone(MEMORY[0x277D34780]);
  v1 = sub_22089132C();
  v2 = [v0 initWithName_];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_2207FEB34;
  v15 = v3;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2207FDCB0;
  v13 = &block_descriptor_48;
  v4 = _Block_copy(&v10);

  v5 = [v2 onWillEnter_];
  _Block_release(v4);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_2207FEB3C;
  v15 = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2207FDCB0;
  v13 = &block_descriptor_24_0;
  v7 = _Block_copy(&v10);

  v8 = [v2 onWillExit_];
  _Block_release(v7);

  return v2;
}

void sub_2207FDAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_220888ADC();

    v5 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_activityIndicator;
    v6 = *&v4[OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController];
    v7 = *&v4[OBJC_IVAR____TtC8StocksUI24StockChartViewController_activityIndicator];
    v8 = [v6 view];
    if (v8)
    {
      v9 = v8;
      [v8 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v29.origin.x = v11;
      v29.origin.y = v13;
      v29.size.width = v15;
      v29.size.height = v17;
      MidX = CGRectGetMidX(v29);
      v19 = [v6 view];
      if (v19)
      {
        v20 = v19;
        [v19 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v30.origin.x = v22;
        v30.origin.y = v24;
        v30.size.width = v26;
        v30.size.height = v28;
        [v7 setCenter_];

        [*&v4[v5] startAnimating];
        UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_2207FDCB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, v8);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_2207FDD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC8StocksUI24StockChartViewController_activityIndicator) stopAnimating];
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  }
}

void sub_2207FDDC0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([a1 context])
    {
      type metadata accessor for StockChartViewController.ErrorContext(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        type metadata accessor for StockChartViewController.Errors(0);
        sub_2207FE8DC(&unk_28128A110, type metadata accessor for StockChartViewController.Errors, &unk_2208B8900);
        v8 = swift_allocError();
        v10 = v9;
        v11 = OBJC_IVAR____TtCC8StocksUI24StockChartViewControllerP33_E483C2B618A7CE6B48867B145DEE9A5212ErrorContext_model;
        v12 = sub_22089030C();
        v13 = *(v12 - 8);
        (*(v13 + 16))(v10, v7 + v11, v12);
        (*(v13 + 56))(v10, 0, 1, v12);
        v41[0] = v8;

        v14 = v8;
        sub_220888ADC();

        v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v16 = &v5[OBJC_IVAR____TtC8StocksUI24StockChartViewController_styler];
        swift_beginAccess();
        v17 = __swift_project_boxed_opaque_existential_1(v16, *(v16 + 3));
        v18 = *(*v17 + 80);
        v19 = *(*v17 + 88);
        __swift_project_boxed_opaque_existential_1((*v17 + 56), v18);
        sub_220823838(v18, v19, v41);
        __swift_project_boxed_opaque_existential_1(v41, v41[3]);
        _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
        _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
        v20 = sub_22088B1EC();

        [v15 setAttributedText_];

        __swift_destroy_boxed_opaque_existential_1(v41);
        [v15 setNumberOfLines_];
        v21 = *&v5[OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController];
        v22 = v15;
        v23 = [v21 view];
        if (v23)
        {
          v24 = v23;
          [v23 frame];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          [v22 setFrame_];
          v33 = [v5 view];
          if (v33)
          {
            v34 = v33;
            [v33 addSubview_];

            swift_unknownObjectRelease();
            v35 = *&v5[OBJC_IVAR____TtC8StocksUI24StockChartViewController_errorView];
            *&v5[OBJC_IVAR____TtC8StocksUI24StockChartViewController_errorView] = v15;

LABEL_9:
            UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);

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

      swift_unknownObjectRelease();
    }

    type metadata accessor for StockChartViewController.Errors(0);
    sub_2207FE8DC(&unk_28128A110, type metadata accessor for StockChartViewController.Errors, &unk_2208B8900);
    v36 = swift_allocError();
    v38 = v37;
    v39 = sub_22089030C();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    v41[0] = v36;

    v40 = v36;
    sub_220888ADC();

    goto LABEL_9;
  }
}

void sub_2207FE268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_errorView;
    v6 = *(Strong + OBJC_IVAR____TtC8StocksUI24StockChartViewController_errorView);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *&v4[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v4[v5] = 0;

    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  }
}

void sub_2207FE2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_220888ADC();

    v5 = [*&v4[OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController] view];
    if (v5)
    {
      v6 = v5;
      [v5 setAlpha_];

      v7 = [*&v4[OBJC_IVAR____TtC8StocksUI24StockChartViewController_columnChartViewController] view];
      if (v7)
      {
        v8 = v7;
        [v7 setAlpha_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_2207FE3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController) view];
    if (v5)
    {
      v6 = v5;
      [v5 setAlpha_];

      v7 = [*&v4[OBJC_IVAR____TtC8StocksUI24StockChartViewController_columnChartViewController] view];
      if (v7)
      {
        v8 = v7;
        [v7 setAlpha_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_2207FE4CC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_activeCallout;
  v5 = *(a1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_activeCallout);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    goto LABEL_7;
  }

  if (v5 < 0)
  {
    v14 = v5;
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    sub_22088AEFC();
    sub_22056BEC4(v14);
    v8 = *(a1 + v4);
    *(a1 + v4) = 0xF000000000000007;
    sub_22056BEC4(v8);
LABEL_7:
    v9 = *(a1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_calloutViewProvider + 24);
    v10 = *(a1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_calloutViewProvider + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_calloutViewProvider), v9);
    v11 = (*(v10 + 8))(a2, v9, v10);
    v12 = *(a1 + v4);
    *(a1 + v4) = v11;
    v13 = v11;
    sub_22056BEC4(v12);
    sub_22088AF0C();
    return v13;
  }

  return v5;
}

id sub_2207FE5EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_activeCallout;
  v5 = *(a1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_activeCallout);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    goto LABEL_4;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    sub_22088AEFC();
    sub_22056BEC4(v5);
    v7 = *(a1 + v4);
    *(a1 + v4) = 0xF000000000000007;
    sub_22056BEC4(v7);
LABEL_4:
    v8 = *(a1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_rangeCalloutViewProvider + 24);
    v9 = *(a1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_rangeCalloutViewProvider + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_rangeCalloutViewProvider), v8);
    v10 = (*(v9 + 8))(a2, v8, v9);
    v11 = *(a1 + v4);
    *(a1 + v4) = v10 | 0x8000000000000000;
    v12 = v10;
    sub_22056BEC4(v11);
    sub_22088AF0C();
    return v12;
  }

  return (v5 & 0x7FFFFFFFFFFFFFFFLL);
}

void sub_2207FE72C()
{
  sub_2207FE8DC(&qword_281299878, type metadata accessor for StockChartViewController, &protocol conformance descriptor for StockChartViewController);

  JUMPOUT(0x223D86790);
}

void _s8StocksUI24StockChartViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_topDateRangePickerSeparator;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_activityIndicator;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *(v0 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_activeCallout) = 0xF000000000000007;
  *(v0 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_errorView) = 0;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2207FE8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2207FE96C(uint64_t a1)
{
  result = sub_22089030C();
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

uint64_t sub_2207FEA08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2207FEA64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_2207FEAE8()
{
  result = qword_28127E710;
  if (!qword_28127E710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E710);
  }

  return result;
}

void sub_2207FEB84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2207FEBD8(uint64_t a1, uint64_t a2)
{
  sub_2207FEB84(0, &qword_28127ED30, MEMORY[0x277D6C720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207FEC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2207FEB84(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2207FECB4()
{
  v1 = *(sub_2208854FC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2207FC518(v0 + v2, v3);
}

uint64_t sub_2207FED68(uint64_t a1)
{
  v1 = sub_22089030C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2207FEDE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong, v3);
    sub_22088665C();
    sub_220888FBC();
    v4 = sub_2208883CC();
    sub_22080BBBC(0, &qword_28128FA08, type metadata accessor for StockFeedBlueprintModifierFactory, sub_22080A8FC, type metadata accessor for StockFeedInteractor);
    sub_220888E6C();

    v5 = sub_2208883CC();
    sub_220888EAC();
  }
}

double sub_2207FEF8C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = sub_220886A4C();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_220885D4C();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D697C0];
  sub_22080BC3C(0, &unk_2812990E0, MEMORY[0x277D697C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v25 - v14;
  v16 = sub_22088665C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, v25, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  __swift_project_boxed_opaque_existential_1((*(a2 + 48) + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager), *(*(a2 + 48) + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager + 24));
  sub_2208863EC();
  sub_2208869CC();
  (*(v3 + 8))(v6, v26);
  v18 = sub_22080A8FC();
  v19 = *(v18 + 120);
  v20 = type metadata accessor for StockFeedBlueprintModifierFactory(0);
  v21 = v19(v15, v10, v20, v18);
  v22.n128_f64[0] = (*(v7 + 8))(v10, v27);
  sub_22080BB44(v15, &unk_2812990E0, v11, v22);
  v28 = v21;
  sub_2205E7490(0, v23);
  sub_2204445B4(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

double sub_2207FF2DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_220886A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = sub_220885D4C();
  v8 = *(v25[0] - 8);
  MEMORY[0x28223BE20](v25[0], v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D697C0];
  sub_22080BC3C(0, &unk_2812990E0, MEMORY[0x277D697C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v25 - v15;
  v17 = sub_22088665C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  __swift_project_boxed_opaque_existential_1((*(a2 + 48) + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager), *(*(a2 + 48) + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager + 24));
  sub_2208863EC();
  sub_2208869CC();
  (*(v4 + 8))(v7, v3);
  v18 = sub_22080A8FC();
  v19 = *(v18 + 120);
  v20 = type metadata accessor for StockFeedBlueprintModifierFactory(0);
  v21 = v19(v16, v11, v20, v18);
  v22.n128_f64[0] = (*(v8 + 8))(v11, v25[0]);
  sub_22080BB44(v16, &unk_2812990E0, v12, v22);
  v25[1] = v21;
  sub_2205E7490(0, v23);
  sub_2204445B4(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

void *sub_2207FF5EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281296D20, MEMORY[0x277D2D578], 1);
    result = sub_2208884DC();
    if (v9)
    {
      v6 = type metadata accessor for StockFeedModule();
      v7 = swift_allocObject();
      sub_220457328(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_220457328(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_283415E78;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_2207FF72C()
{
  v0 = sub_220888FDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StockFeedViewController(0);
  sub_220888BDC();

  sub_220446A58(0, &qword_28128F9F0, &protocol descriptor for StockFeedStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128F9F8, &protocol descriptor for StockFeedRouterType, 1);
  sub_220888BEC();
  type metadata accessor for StockFeedRouter(0);
  sub_2208882BC();

  sub_220446A58(0, qword_281286088, &protocol descriptor for StockEarningsModelFactoryType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_281289550, &protocol descriptor for StockFeedEventHandlerType, 0);
  sub_220888BEC();
  type metadata accessor for StockFeedEventHandler();
  sub_2208882BC();

  sub_220446A58(0, qword_28128B178, &protocol descriptor for StockFeedInteractorType, 0);
  sub_220888BEC();

  sub_22080BBBC(0, &qword_28128FA08, type metadata accessor for StockFeedBlueprintModifierFactory, sub_22080A8FC, type metadata accessor for StockFeedInteractor);
  sub_220888BDC();
  sub_2208882CC();

  sub_220446A58(0, &unk_28128A018, &protocol descriptor for StockFeedDataManagerType, 0);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128E678, &protocol descriptor for StockFeedTrackerType, 1);
  sub_220888BEC();

  sub_2205E9B98(0);
  sub_220888BDC();

  type metadata accessor for StockFeedBlueprintModifierFactory(0);
  sub_220888BDC();

  sub_220446A58(0, qword_281287E68, &protocol descriptor for StockFeedSectionFactoryType, 1);
  sub_220888BEC();

  sub_22080A930(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22080AB2C(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088D84C();
  sub_220888BDC();

  sub_22080A9EC(0);
  sub_220888BDC();

  sub_22080AC68(0);
  sub_220888BDC();

  sub_2205E88C0(0);
  sub_220888BDC();

  type metadata accessor for StockFeedBlueprintLayoutBuilder();
  sub_220888BDC();

  sub_22080AD54(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  sub_220888BDC();

  sub_220731D1C(0, v5);
  sub_220888BDC();

  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  sub_220888BEC();
  sub_22088D41C();
  sub_2208882BC();

  sub_22080B634(0, &qword_2812975C8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_220888BDC();
  sub_2208882CC();

  sub_220731ED4(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220732198(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220732318(0);
  sub_220888BDC();

  sub_22088C9AC();
  sub_220888BDC();

  type metadata accessor for StockFeedBlueprintViewCellProvider();
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for StockFeedBlueprintViewSupplementaryViewProvider();
  sub_220888BDC();
  sub_2208882CC();

  sub_22080BBBC(0, &qword_281297688, sub_2205E9B98, sub_220648DC4, MEMORY[0x277D6E388]);
  sub_220888BDC();
  sub_2208882CC();

  sub_22080BBBC(0, &qword_281297798, sub_220731D1C, sub_22080AAF8, MEMORY[0x277D6E068]);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088D3BC();
  sub_220888BDC();

  sub_22088D3DC();
  sub_220888BDC();

  sub_22088B84C();
  sub_220888BDC();

  sub_22080AE30(0, v6);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088CA2C();
  sub_220888BDC();

  sub_22080BC3C(0, &qword_281297338, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9B8]);
  sub_220888BDC();

  sub_22080BC3C(0, &qword_2812972F0, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9F0]);
  sub_220888BDC();

  sub_220446A58(0, &unk_2812972B0, MEMORY[0x277D6EA40], 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_2812977B8, MEMORY[0x277D6E010], 1);
  sub_220888BEC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF70], v0);
  sub_2208882AC();

  (*(v1 + 8))(v4, v0);
  sub_22080AFC4(0);
  sub_220888BDC();

  sub_22088C93C();
  sub_220888BDC();
  sub_2208882CC();

  sub_22080B040(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22080B174(0);
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for StockFeedBlueprintCellPrefetcher();
  sub_220888BDC();

  return result;
}

char *sub_22080076C(void *a1, __n128 a2)
{
  sub_22080BC3C(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v64 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128F9F0, &protocol descriptor for StockFeedStylerType, 1);
  result = sub_2208884DC();
  if (!v107)
  {
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289550, &protocol descriptor for StockFeedEventHandlerType, 0);
  result = sub_2208884DC();
  v8 = v104;
  if (!v104)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = v105;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080AD54(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080AE30(0, v11);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v78 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30, MEMORY[0x277D6D908], 1);
  result = sub_2208884DC();
  if (!v103[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v77 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v79 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296760, MEMORY[0x277D345A0], 1);
  result = sub_2208884DC();
  if (!v102)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_220890BAC();
  swift_allocObject();
  v87 = sub_220890B9C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_22088685C();
  sub_2208884DC();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v6, 1, v13);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080BC3C(0, &qword_281298910, type metadata accessor for StockListSelectionModel, MEMORY[0x277D6CB60]);
  result = sub_2208884CC();
  v86 = result;
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770, MEMORY[0x277D6E170], 1);
  result = sub_2208884DC();
  if (!v102)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297B48, MEMORY[0x277D6DA40], 0);
  result = sub_2208884DC();
  v76 = v99;
  if (!v99)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v74 = v100;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299118, MEMORY[0x277D69768], 0);
  result = sub_2208884DC();
  v75 = v97;
  if (!v97)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v73 = v98;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220459240(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = result;
  v83 = v14;
  v84 = v8;
  v85 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  v16 = v95;
  if (!v95)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v71 = v96;
  v72 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  if (!v89[0])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v17 = result;
  v93 = v12;
  v94 = sub_2204445B4(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v92[0] = v17;
  sub_22088B49C();
  swift_allocObject();
  v18 = sub_22088B47C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884CC();
  v19 = v79;
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v81 = result;
  v82 = v13;
  v69 = v18;
  v70 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297400, MEMORY[0x277D6E810], 0);
  result = sub_2208884DC();
  v80 = v90;
  if (v90)
  {
    v66 = v91;
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
    v68 = &v64;
    v21 = MEMORY[0x28223BE20](v20, v20);
    v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = *v23;
    v26 = type metadata accessor for StockFeedStyler();
    v93 = v26;
    v94 = &off_283412A28;
    v92[0] = v25;
    v27 = sub_2204445B4(&qword_281297430, sub_22080AE30, MEMORY[0x277D6E7F8]);
    v65 = type metadata accessor for StockFeedViewController(0);
    v28 = objc_allocWithZone(v65);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
    v67 = &v64;
    v30 = MEMORY[0x28223BE20](v29, v29);
    v32 = (&v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32, v30);
    v34 = *v32;
    v89[3] = v26;
    v89[4] = &off_283412A28;
    v89[0] = v34;
    v35 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_statusBarView;
    *&v28[v35] = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
    v36 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stockFeedTitleView;
    *&v28[v36] = [objc_allocWithZone(sub_22088A8DC()) initWithFrame_];
    v37 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView;
    *&v28[v37] = [objc_allocWithZone(type metadata accessor for StockFeedViewOverlayView()) initWithFrame_];
    v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_toolbarTitleIsHidden] = 1;
    v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_watchState] = 2;
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_delayedTipPresentation] = 0;
    v38 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_latestQuote;
    v39 = sub_22088676C();
    (*(*(v39 - 8) + 56))(&v28[v38], 1, 1, v39);
    v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_newlyAddedEventToCalendar] = 0;
    v40 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_earnings;
    v41 = type metadata accessor for StockEarningsModel(0);
    (*(*(v41 - 8) + 56))(&v28[v40], 1, 1, v41);
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stockFeedViewerTitleDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_22046DA2C(v89, &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_styler]);
    v42 = &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler];
    *v42 = v84;
    v42[1] = v19;
    v44 = v77;
    v43 = v78;
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_blueprintViewController] = v77;
    v45 = &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_blueprintSelectionProvider];
    *v45 = v43;
    v45[1] = v27;
    sub_22046DA2C(v103, &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_sceneProvider]);
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_sharingActivityProviderFactory] = v87;
    (*(v83 + 16))(&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock], v85, v82);
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stockListSelection] = v86;
    swift_unknownObjectRetain();
    v79 = v44;

    sub_22088C71C();
    sub_22088BFCC();

    sub_22088F0DC();
    v46 = objc_allocWithZone(sub_22088A99C());
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_cardViewScrollViewCoordinator] = sub_22088A94C();
    sub_22046DA2C(v101, &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_keyboardInputMonitor]);
    v47 = &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_toolbarManager];
    v48 = v75;
    v49 = v73;
    v50 = v74;
    *v47 = v76;
    v47[1] = v50;
    v51 = &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_earningsCalendarManager];
    *v51 = v48;
    v51[1] = v49;
    v52 = v71;
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_prewarmState] = v72;
    v53 = &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_commandCenter];
    v54 = v69;
    *v53 = v70;
    v53[1] = v52;
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_commandContainer] = v54;
    v55 = v80;
    *&v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_commandTracker] = v81;
    v56 = &v28[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_presentationOperationManager];
    v57 = v66;
    *v56 = v55;
    v56[1] = v57;
    v88.receiver = v28;
    v88.super_class = v65;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v58 = objc_msgSendSuper2(&v88, sel_initWithNibName_bundle_, 0, 0);
    *(*(v58 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 24) = &off_283418220;
    swift_unknownObjectWeakAssign();
    v59 = *(v58 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_blueprintViewController);
    v60 = v58;
    v61 = v59;
    sub_22088C79C();

    v62 = v85;
    sub_22088684C();
    v63 = sub_22089132C();

    [v60 setTitle_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v101);
    (*(v83 + 8))(v62, v82);
    __swift_destroy_boxed_opaque_existential_1(v103);
    __swift_destroy_boxed_opaque_existential_1(v89);
    __swift_destroy_boxed_opaque_existential_1(v92);
    __swift_destroy_boxed_opaque_existential_1(v106);
    return v60;
  }

LABEL_37:
  __break(1u);
  return result;
}

void *sub_2208014EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  v4 = v15;
  if (v15)
  {
    v5 = type metadata accessor for StockFeedStyler();
    v6 = v16;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    v12 = sub_220476DF0(v10, v5, v4, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    a2[3] = v5;
    a2[4] = &off_283412A28;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22080164C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22080BC3C(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - v7;
  sub_22046DA2C(a1, v50);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080BBBC(0, &qword_281297EB0, type metadata accessor for StocksActivity, sub_2205C4928, MEMORY[0x277D6D5F0]);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_22088685C();
  sub_2208884DC();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v8, 1, v11);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v35 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296D20, MEMORY[0x277D2D578], 1);
  result = sub_2208884DC();
  if (!v49)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (!v47)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296770, MEMORY[0x277D34548], 1);
  result = sub_2208884DC();
  if (!v45)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100, &protocol descriptor for AnalyticsChannelDataFactoryType, 1);
  result = sub_2208884DC();
  if (!v43)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E6D0, 0x277D31210);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = result;
  v32 = v13;
  v33 = v8;
  v34 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30, MEMORY[0x277D6D908], 1);
  result = sub_2208884DC();
  if (v41)
  {
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v31 = &v31;
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v21 = type metadata accessor for AnalyticsChannelDataFactory();
    v39[3] = v21;
    v39[4] = &off_28341D2B0;
    v39[0] = v20;
    v22 = type metadata accessor for StockFeedRouter(0);
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v21);
    v25 = MEMORY[0x28223BE20](v24, v24);
    v27 = (&v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = *v27;
    v37 = v21;
    v38 = &off_28341D2B0;
    *&v36 = v29;
    swift_unknownObjectWeakInit();
    *(v23 + 32) = 0;
    swift_unknownObjectWeakInit();
    sub_220457328(v50, v23 + 40);
    *(v23 + 80) = v35;
    (*(v12 + 32))(v23 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_stock, v33, v11);
    *(v23 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_tracker) = v32;
    sub_220457328(&v48, v23 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_contextBuilder);
    sub_220457328(&v46, v23 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_baseStyler);
    sub_220457328(&v44, v23 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_offlineAlertControllerFactory);
    sub_220457328(&v36, v23 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_channelDataFactory);
    *(v23 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_purchaseController) = v14;
    sub_220457328(&v40, v23 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_sceneProvider);
    __swift_destroy_boxed_opaque_existential_1(v39);
    result = __swift_destroy_boxed_opaque_existential_1(v42);
    v30 = v34;
    v34[3] = v22;
    v30[4] = &off_283414878;
    *v30 = v23;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_220801CBC(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockFeedViewController(0);
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

void *sub_220801D3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0, MEMORY[0x277D696F0], 1);
  result = sub_2208884DC();
  if (v7)
  {
    v4 = type metadata accessor for StockEarningsModelFactory();
    v5 = swift_allocObject();
    result = sub_220457328(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_2834129F8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220801DF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128B178, &protocol descriptor for StockFeedInteractorType, 0);
  result = sub_2208884DC();
  v5 = v62;
  if (!v62)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128F9F8, &protocol descriptor for StockFeedRouterType, 1);
  result = sub_2208884DC();
  if (!v61)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128E678, &protocol descriptor for StockFeedTrackerType, 1);
  result = sub_2208884DC();
  if (!v59)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298B90, MEMORY[0x277D2FA98], 1);
  result = sub_2208884DC();
  if (!v57[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v46 = v63;
  v47 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  v6 = v55;
  if (v55)
  {
    v43 = v56;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    v45 = v42;
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = (v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v44 = v42;
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v10;
    v18 = *v15;
    v19 = type metadata accessor for StockFeedRouter(0);
    v54[3] = v19;
    v54[4] = &off_283414878;
    v54[0] = v17;
    v20 = type metadata accessor for StockFeedTracker(0);
    v52 = v20;
    v53 = &off_283424C98;
    v51[0] = v18;
    type metadata accessor for StockFeedEventHandler();
    v21 = swift_allocObject();
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v54, v19);
    v42[1] = v42;
    v23 = MEMORY[0x28223BE20](v22, v22);
    v25 = (v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25, v23);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v42[0] = v42;
    v28 = MEMORY[0x28223BE20](v27, v27);
    v30 = (v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = *v25;
    v33 = *v30;
    v50[3] = v19;
    v50[4] = &off_283414878;
    v49[4] = &off_283424C98;
    v50[0] = v32;
    v49[3] = v20;
    v49[0] = v33;
    v21[3] = 0;
    swift_unknownObjectWeakInit();
    v34 = v46;
    v21[4] = v5;
    v21[5] = v34;
    sub_22046DA2C(v50, (v21 + 6));
    sub_22046DA2C(v49, (v21 + 11));
    sub_22046DA2C(v57, (v21 + 16));
    v35 = v43;
    v21[21] = v6;
    v21[22] = v35;
    ObjectType = swift_getObjectType();
    v37 = *(v34 + 16);
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();

    v37(v38, &off_283425B68, ObjectType, v34);
    swift_unknownObjectRelease();
    v39 = v21[5];
    v40 = swift_getObjectType();
    (*(v39 + 32))(v40, v39);
    swift_allocObject();
    swift_weakInit();
    sub_22088868C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v58);
    result = __swift_destroy_boxed_opaque_existential_1(v60);
    v41 = v47;
    *v47 = v21;
    v41[1] = &off_283425BD0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_22080246C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_28128F9F8, &protocol descriptor for StockFeedRouterType, 1);
  result = sub_2208884DC();
  if (v8)
  {
    sub_220457328(&v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    v5 = *(v4 + 16);

    v5(v6, &off_283425B50, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220802548@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080BBBC(0, &qword_28128FA08, type metadata accessor for StockFeedBlueprintModifierFactory, sub_22080A8FC, type metadata accessor for StockFeedInteractor);
  result = sub_2208884CC();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_283415940;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_2208025F0(void *a1)
{
  v2 = sub_2208854FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22080BC3C(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v38 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128A018, &protocol descriptor for StockFeedDataManagerType, 0);
  result = sub_2208884DC();
  v51 = v55;
  if (!v55)
  {
    __break(1u);
    goto LABEL_19;
  }

  v12 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128CD70, &protocol descriptor for DataRefreshManagerType, 1);
  result = sub_2208884DC();
  if (!v54[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080A930(0);
  result = sub_2208884CC();
  v50 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockFeedBlueprintModifierFactory(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E88C0(0);
  result = sub_2208884CC();
  v49 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220447D10(0);
  result = sub_2208884CC();
  v48 = result;
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_22088685C();
  sub_2208884DC();
  v46 = *(v14 - 8);
  v47 = v14;
  result = (*(v46 + 48))(v10, 1, v14);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v43 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080AFC4(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = result;
  v45 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044BB14(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080B040(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812992B0, MEMORY[0x277D69518], 1);
  result = sub_2208884DC();
  if (!v53[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = v6;
  v40 = v3;
  v41 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220459240(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;
  sub_22080BBBC(0, &qword_28128FA08, type metadata accessor for StockFeedBlueprintModifierFactory, sub_22080A8FC, type metadata accessor for StockFeedInteractor);
  v18 = swift_allocObject();
  *(v18 + 3) = 0;
  swift_unknownObjectWeakInit();
  v19 = *(*v18 + 184);
  *&v18[v19] = 0;
  *&v18[*(*v18 + 208)] = MEMORY[0x277D84FA0];
  v20 = *(*v18 + 216);
  v52 = 2;
  sub_22080BAB4();
  swift_allocObject();
  *&v18[v20] = sub_22088866C();
  v21 = *(*v18 + 224);
  sub_22080BC3C(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v24(&v18[v21], 1, 1, v22);
  v24(&v18[*(*v18 + 232)], 1, 1, v23);
  v25 = v49;
  v27 = v44;
  v26 = v45;
  *(v18 + 4) = v50;
  *(v18 + 5) = v27;
  v28 = v47;
  v29 = v48;
  *(v18 + 13) = v25;
  *(v18 + 14) = v29;
  (*(v46 + 16))(&v18[*(*v18 + 152)], v26, v28);
  *&v18[*(*v18 + 160)] = v15;
  *&v18[*(*v18 + 168)] = v16;
  *&v18[v19] = 0;

  v44 = v15;
  v38 = v16;

  v30 = v42;
  *&v18[*(*v18 + 176)] = v42;
  sub_22046DA2C(v53, &v18[*(*v18 + 192)]);
  *&v18[*(*v18 + 200)] = v17;
  sub_22046DA2C(v54, (v18 + 64));
  v31 = v51;
  v32 = v43;
  *(v18 + 6) = v51;
  *(v18 + 7) = v32;
  *(v31 + 24) = &off_283415918;
  swift_unknownObjectWeakAssign();
  v33 = qword_281298FC0;
  v34 = v30;

  swift_unknownObjectRetain();
  if (v33 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_22080B730(&qword_28128FA18, &unk_2208A0360);

  sub_220886B4C();

  v35 = v41;
  v36 = v40;
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  v37 = v39;
  sub_220886B4C();

  swift_unknownObjectRelease();

  (*(v36 + 8))(v37, v35);
  __swift_destroy_boxed_opaque_existential_1(v53);
  (*(v46 + 8))(v45, v47);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v18;
}

void *sub_220802F74(uint64_t *a1, void *a2, __n128 a3)
{
  sub_22080BC3C(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281298738, MEMORY[0x277D6CD90], 1);
  result = sub_2208884DC();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_220457328(&v14, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_22080B730(&qword_28128FA10, &unk_2208A02F8);
  sub_220888BFC();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &unk_2812992B0, MEMORY[0x277D69518], 1);
  result = sub_2208884DC();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_220457328(&v12, &v14);
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  sub_22080B730(&qword_28128FA20, &unk_2208A0248);
  sub_220885E1C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220509374(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_allocObject();
  swift_weakInit();
  sub_22088ED2C();

  __swift_project_boxed_opaque_existential_1(&v12, v13);
  sub_2208882EC();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281299310, MEMORY[0x277D69398], 0);
  result = sub_2208884DC();
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = sub_22088685C();
  sub_2208884DC();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v7, 1, v9);
  if (result != 1)
  {
    swift_getObjectType();
    sub_22080B730(&qword_28128FA28, &unk_2208A0220);
    sub_22088681C();
    (*(v10 + 8))(v7, v9);
    sub_220885AEC();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v14);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

LABEL_11:
  __break(1u);
  return result;
}

double sub_2208033B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22080BC3C(0, &qword_28127DFD8, sub_22080B9A8, MEMORY[0x277D84560]);
    sub_22080B9A8(0);
    v5 = v4;
    v6 = *(v4 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_220899360;
    (*(v6 + 16))(v8 + v7, a1, v5);
    sub_22088F9BC();
  }

  return result;
}

void *sub_22080351C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_22088F12C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22080BC3C(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v41 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_22088685C();
  sub_2208884DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v49 = v10;
  result = v13(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (!v68)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0, MEMORY[0x277D696B8], 1);
  result = sub_2208884DC();
  if (!v66)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281283E20, &protocol descriptor for StockPriceDataRefreshManagerType, 0);
  result = sub_2208884DC();
  v15 = v63;
  if (!v63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v47 = v64;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299228, MEMORY[0x277D695E0], 1);
  result = sub_2208884DC();
  if (!v62)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299310, MEMORY[0x277D69398], 0);
  result = sub_2208884DC();
  v46 = v59;
  if (!v59)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = v60;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128E680, &protocol descriptor for StockFeedServiceType, 1);
  result = sub_2208884DC();
  if (!v58)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v44 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044E7FC(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = result;
  v43 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0, MEMORY[0x277D696F0], 1);
  result = sub_2208884DC();
  if (v56)
  {
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v41 = &v41;
    v17 = MEMORY[0x28223BE20](v16, v16);
    v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v22 = type metadata accessor for StockFeedServiceProxy();
    v54[3] = v22;
    v54[4] = &off_28341E1E8;
    v54[0] = v21;
    type metadata accessor for StockFeedDataManager(0);
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v54, v22);
    v25 = MEMORY[0x28223BE20](v24, v24);
    v27 = (&v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = *v27;
    v52 = v22;
    v53 = &off_28341E1E8;
    *&v51 = v29;
    *(v23 + 24) = 0;
    swift_unknownObjectWeakInit();
    v30 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_accessQueue;
    sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
    v31 = v48;
    v32 = v43;
    (*(v4 + 104))(v48, *MEMORY[0x277D851B8], v43);
    v33 = sub_220891D3C();
    (*(v4 + 8))(v31, v32);
    *(v23 + v30) = v33;
    v34 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_lastNewsRefreshDate;
    v35 = sub_22088516C();
    (*(*(v35 - 8) + 56))(v23 + v34, 1, 1, v35);
    (*(v12 + 32))(v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock, v49, v11);
    sub_220457328(&v67, v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager);
    sub_220457328(&v65, v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager);
    v36 = (v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataRefreshManager);
    v37 = v47;
    *v36 = v44;
    v36[1] = v37;
    sub_220457328(&v61, v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_quoteDetailManager);
    v38 = (v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_chartManager);
    v39 = v45;
    *v38 = v46;
    v38[1] = v39;
    sub_220457328(&v51, v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService);
    *(v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedServiceConfigFetcher) = v42;
    sub_220457328(&v55, v23 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_appConfigurationManager);
    __swift_destroy_boxed_opaque_existential_1(v54);
    result = __swift_destroy_boxed_opaque_existential_1(v57);
    v40 = v50;
    *v50 = v23;
    v40[1] = &off_283417078;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_220803CA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22080BC3C(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v47 = v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E9B98(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E88C0(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991D0, MEMORY[0x277D696C8], 1);
  result = sub_2208884DC();
  if (!v57[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100, &protocol descriptor for AnalyticsChannelDataFactoryType, 1);
  result = sub_2208884DC();
  if (!v56)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E6D0, 0x277D31210);
  result = sub_2208884CC();
  v46 = result;
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281298340, MEMORY[0x277D68C48], 1);
  result = sub_2208884DC();
  if (!v54[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298AB0, MEMORY[0x277D30028], 1);
  result = sub_2208884DC();
  if (!v53[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (!v52[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v41 = v12;
  v42 = v11;
  v43 = v10;
  v44 = v9;
  v45 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  result = sub_2208884DC();
  v13 = v50;
  if (!v50)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = v51;
  v14 = __swift_project_boxed_opaque_existential_1(v49, v50);
  v40 = v35;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14, v14);
  v38 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v15;
  v36 = *(v15 + 16);
  v36(v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_22088685C();
  v19 = v47;
  sub_2208884DC();
  result = (*(*(v18 - 8) + 48))(v19, 1, v18);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296A18, MEMORY[0x277D32868], 1);
  result = sub_2208884DC();
  if (v48[3])
  {
    v20 = type metadata accessor for StockFeedTracker(0);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v35[1] = v35;
    v22 = MEMORY[0x28223BE20](v21, v21);
    v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = (*(v25 + 16))(v24, v22);
    v35[0] = v35;
    v28 = MEMORY[0x28223BE20](v26, v27);
    v29 = v38;
    (v36)(v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v13, v28);
    v30 = type metadata accessor for AnalyticsChannelDataFactory();
    v31 = v24;
    v32 = v46;
    v33 = sub_22081F1B0(v44, v43, v42, v41, v57, v31, v46, v54, v53, v52, v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v48, v20, v30, v13, &off_28341D2B0, v37);

    (*(v39 + 8))(v29, v13);
    __swift_destroy_boxed_opaque_existential_1(v55);
    result = __swift_destroy_boxed_opaque_existential_1(v49);
    v34 = v45;
    v45[3] = v20;
    v34[4] = &off_283424C98;
    *v34 = v33;
    return result;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22080441C(void *a1, __n128 a2)
{
  sub_22080BC3C(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v35 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_22088685C();
  sub_2208884DC();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0, MEMORY[0x277D696B8], 1);
  result = sub_2208884DC();
  if (!v59)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299228, MEMORY[0x277D695E0], 1);
  result = sub_2208884DC();
  if (!v57)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (!v55)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299310, MEMORY[0x277D69398], 0);
  result = sub_2208884DC();
  v9 = v52;
  if (!v52)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v53;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0, MEMORY[0x277D696F0], 1);
  result = sub_2208884DC();
  if (!v51)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080AFC4(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287E68, &protocol descriptor for StockFeedSectionFactoryType, 1);
  result = sub_2208884DC();
  if (!v49)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  v12 = v47;
  if (v47 == 2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286088, &protocol descriptor for StockEarningsModelFactoryType, 1);
  result = sub_2208884DC();
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = v11;
  v39 = v10;
  v40 = v9;
  v41 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  result = sub_2208884DC();
  v13 = v43;
  if (v43)
  {
    v36 = type metadata accessor for StockFeedBlueprintModifierFactory(0);
    v14 = v44;
    v15 = __swift_project_boxed_opaque_existential_1(v42, v13);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v37 = &v35;
    v17 = MEMORY[0x28223BE20](v16, v16);
    v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19, v17);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v22 = MEMORY[0x28223BE20](v21, v21);
    v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = (*(v25 + 16))(v24, v22);
    v28 = MEMORY[0x28223BE20](v26, v27);
    v30 = &v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v30, v15, v13, v28);
    v32 = type metadata accessor for StockFeedSectionFactory();
    v33 = type metadata accessor for StockEarningsModelFactory();
    v34 = sub_22067C8CC(v41, &v58, &v56, &v54, v40, v39, &v50, v38, v19, v12 & 1, v24, v30, v36, v32, v33, v13, &off_28341EFB8, &off_2834129F8, v14);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return v34;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_220804AD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812992B0, MEMORY[0x277D69518], 1);
  result = sub_2208884DC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296A70, MEMORY[0x277D325D8], 1);
  result = sub_2208884DC();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &unk_28127E650, &protocolRef_FCPaidAccessCheckerType);
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for StockFeedSectionFactory();
    v7 = swift_allocObject();
    sub_220457328(&v10, v7 + 16);
    result = sub_220457328(&v8, v7 + 56);
    *(v7 + 96) = v5;
    a2[3] = v6;
    a2[4] = &off_28341EFB8;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220804C40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E9B98(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22080A9EC(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_22080A930(0);
      swift_allocObject();
      return sub_22088B6AC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220804D20(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22080AB2C(0);
  result = sub_2208884CC();
  if (result)
  {
    v6[0] = result;
    sub_22080B7B8(0);
    swift_allocObject();
    sub_2204445B4(&qword_281297240, sub_22080AB2C, MEMORY[0x277D6EAC8]);
    sub_22088CE4C();
    sub_22088B6CC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220446A58(0, &qword_281296A18, MEMORY[0x277D32868], 1);
    result = sub_2208884DC();
    if (v5)
    {
      sub_220457328(&v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_22080A930(0);
      sub_22088FDAC();
      return __swift_destroy_boxed_opaque_existential_1(v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220804EE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E88C0(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  result = sub_22088849C();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockFeedBlueprintLayoutBuilder();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080AC68(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (result)
  {
    sub_22080AB2C(0);
    swift_allocObject();
    return sub_22088DE3C();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_2208050C4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_22088D3BC();
  v4 = sub_22088848C();
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = v3;
  v20 = MEMORY[0x277D6E678];
  *&v18 = v4;
  sub_22088DE4C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v5 = sub_22088D70C();
  swift_allocObject();
  v6 = sub_22088D6FC();
  v19 = v5;
  v20 = MEMORY[0x277D6E7D8];
  *&v18 = v6;
  sub_22088DE4C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22080BC3C(0, &qword_281297338, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9B8]);
  v8 = v7;
  v9 = sub_2208884CC();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = v9;
  v19 = v8;
  v20 = sub_22080B6A0(v10);
  *&v18 = v11;
  sub_22088DE4C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v12 = sub_22088FB0C();
  sub_22046DA2C(a2, &v18);
  v13 = swift_allocObject();
  sub_220457328(&v18, v13 + 16);
  v14 = sub_2208884AC();

  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v12;
  v20 = sub_2204445B4(&unk_281296A88, MEMORY[0x277D325A0], MEMORY[0x277D32598]);
  *&v18 = v14;
  sub_22088DE4C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = sub_22088FEAC();
  sub_22046DA2C(a2, &v18);
  v16 = swift_allocObject();
  sub_220457328(&v18, v16 + 16);
  v17 = sub_2208884AC();

  if (v17)
  {
    v19 = v15;
    v20 = sub_2204445B4(&qword_281296998, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
    *&v18 = v17;
    sub_22088DE4C();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_220805418(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088C9AC();
  v4 = sub_22088848C();
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  sub_22088839C();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  v6 = sub_22088848C();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  sub_22044D56C(0, &unk_28127E890, 0x277D759D8);
  sub_22089147C();
  sub_22088838C();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22080BBBC(0, &qword_28128FA08, type metadata accessor for StockFeedBlueprintModifierFactory, sub_22080A8FC, type metadata accessor for StockFeedInteractor);
  if (sub_2208884CC())
  {
    sub_22080B730(qword_28128FA30, &unk_2208A02A0);
    sub_220446A58(0, &unk_281296A60, MEMORY[0x277D325E0], 0);
    sub_22088837C();

    return;
  }

LABEL_7:
  __break(1u);
}

void *sub_2208056C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220731D1C(0, v2);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128, MEMORY[0x277D6EBC0], 1);
  result = sub_2208884DC();
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080BBBC(0, &qword_281297798, sub_220731D1C, sub_22080AAF8, MEMORY[0x277D6E068]);
  result = sub_2208884CC();
  if (result)
  {
    sub_22080B5BC(&qword_2812977A0, &qword_281297798, MEMORY[0x277D6E068], MEMORY[0x277D6E070]);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088C93C();
    sub_22088848C();
    sub_22080A9EC(0);
    swift_allocObject();
    return sub_22088B93C();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_220805938(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127F2D8, &protocol descriptor for StockFeedMastheadViewLayoutAttributesFactoryType, 1);
  sub_2208884DC();
  if (!v107)
  {
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127F590, &protocol descriptor for StockFeedPriceViewLayoutAttributesFactoryType, 1);
  sub_2208884DC();
  if (!v105)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280458, &protocol descriptor for StockChartViewLayoutAttributesFactoryType, 1);
  sub_2208884DC();
  if (!v103)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127FF68, &protocol descriptor for QuoteDetailViewLayoutAttributesFactoryType, 1);
  sub_2208884DC();
  if (!v101)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127F2E0, &protocol descriptor for StockFeedEarningsViewLayoutAttributesFactoryType, 1);
  sub_2208884DC();
  if (!v99)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280D78, &protocol descriptor for PlacardViewLayoutAttributesFactoryType, 1);
  sub_2208884DC();
  if (!v97)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127F160, &protocol descriptor for BilingualFeedPromptViewLayoutAttributesFactoryType, 1);
  sub_2208884DC();
  if (!v95)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127FBD8, &protocol descriptor for BrandingTitleViewLayoutAttributesFactoryType, 1);
  sub_2208884DC();
  if (!v93)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080B634(0, &qword_281296BB8, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  v2 = sub_2208884CC();
  if (!v2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220890B0C();
  v4 = sub_2208884CC();
  if (!v4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208884DC();
  if (v91 == 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0, &protocol descriptor for AttributionProviderType, 1);
  sub_22088611C();
  sub_22088849C();

  if (!v90)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_2812812C0, &protocol descriptor for StockFeedEarningsViewModelFactoryType, 1);
  sub_2208884DC();
  if (!v88)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v81 = v91;
  v82 = v5;
  v83 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  sub_2208884DC();
  v6 = v85;
  if (v85)
  {
    v77 = v86;
    v78 = type metadata accessor for StockFeedBlueprintLayoutBuilder();
    v7 = __swift_project_boxed_opaque_existential_1(v84, v85);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
    v80 = &v59;
    v9 = MEMORY[0x28223BE20](v8, v8);
    v76 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v9);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v79 = &v59;
    v13 = MEMORY[0x28223BE20](v12, v12);
    v74 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v13);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
    v75 = &v59;
    v17 = MEMORY[0x28223BE20](v16, v16);
    v72 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v17);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    v73 = &v59;
    v21 = MEMORY[0x28223BE20](v20, v20);
    v70 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v21);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
    v71 = &v59;
    v25 = MEMORY[0x28223BE20](v24, v24);
    v68 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v25);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
    v69 = &v59;
    v29 = MEMORY[0x28223BE20](v28, v28);
    v66 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v29);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
    v67 = &v59;
    v33 = MEMORY[0x28223BE20](v32, v32);
    v64 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v33);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
    v65 = &v59;
    v37 = MEMORY[0x28223BE20](v36, v36);
    v63 = &v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v37);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
    v62 = &v59;
    v41 = MEMORY[0x28223BE20](v40, v40);
    v43 = &v59 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = (*(v44 + 16))(v43, v41);
    v60 = v6;
    v61 = &v59;
    v47 = MEMORY[0x28223BE20](v45, v46);
    v49 = (&v59 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49, v7, v47);
    v59 = type metadata accessor for StockFeedMastheadViewLayoutAttributesFactory();
    v51 = type metadata accessor for BrandingTitleViewLayoutAttributesFactory();
    v52 = type metadata accessor for StockChartViewLayoutAttributesFactory();
    v53 = type metadata accessor for StockFeedEarningsViewLayoutAttributesFactory();
    v54 = type metadata accessor for BilingualFeedPromptViewLayoutAttributesFactory();
    v55 = type metadata accessor for StockFeedPriceViewLayoutAttributesFactory();
    v56 = type metadata accessor for QuoteDetailViewLayoutAttributesFactory();
    v57 = type metadata accessor for PlacardViewLayoutAttributesFactory();
    v58 = type metadata accessor for StockFeedEarningsViewModelFactory();
    sub_22055C2AC(v76, v74, v72, v70, v68, v66, v64, v63, v83, v82, v81 & 1, &v89, v43, v49, v78, v59, v51, v52, v53, v54, v60, v55, v56, v57, v58, &off_283423DE8, &off_28341A990, &off_28341F720, &off_283418190, &off_283414E98, v77, &off_283428418, &off_283421C78, &off_283424018, &off_283422A00);
    __swift_destroy_boxed_opaque_existential_1(v87);
    __swift_destroy_boxed_opaque_existential_1(v92);
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(v96);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v100);
    __swift_destroy_boxed_opaque_existential_1(v102);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v106);
    __swift_destroy_boxed_opaque_existential_1(v84);
    return;
  }

LABEL_29:
  __break(1u);
}

void *sub_22080663C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E9B98(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220731D1C(0, v3);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  result = sub_22088849C();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128, MEMORY[0x277D6EBC0], 1);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080BBBC(0, &qword_281297688, sub_2205E9B98, sub_220648DC4, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088B84C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_2204445B4(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_22080AD54(0);
    v5 = objc_allocWithZone(v4);
    return sub_22088C7AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_220806984(uint64_t *a1, void *a2)
{
  v3 = sub_22088CE6C();
  v5 = MEMORY[0x28223BE20](v3, v4);
  (*(v7 + 104))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E3C8], v5);
  sub_22088C74C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22080BBBC(0, &qword_281297798, sub_220731D1C, sub_22080AAF8, MEMORY[0x277D6E068]);
  v9 = v8;
  result = sub_2208884CC();
  if (result)
  {
    v11 = result;
    v14 = v9;
    v15 = sub_22080B5BC(&qword_2812977A0, &qword_281297798, MEMORY[0x277D6E068], MEMORY[0x277D6E070]);
    v13 = v11;
    sub_22088C77C();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220446A58(0, &unk_281296798, MEMORY[0x277D34270], 0);
    result = sub_2208884DC();
    if (v13)
    {
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_22089099C();
      swift_allocObject();
      sub_22089098C();
      sub_220890A8C();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220806C10(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_22080BC3C(0, &unk_281296F00, sub_22055CF9C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v21 - v5;
  sub_22055CF9C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_22088C73C();

    v22 = v21[1];
    sub_2205E9B98(0);
    sub_220648DC4();
    sub_22088BF9C();

    v15 = sub_220577460();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v15 = 0xF000000000000007;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    sub_22088C73C();

    v21[0] = v22;
    sub_2205E9B98(0);
    sub_220648DC4();
    sub_22088BF9C();

    (*(v9 + 56))(v6, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v6, 1, 1, v8);
  }

  sub_22088B17C();
  type metadata accessor for StockFeedSectionDescriptor(0);
  type metadata accessor for StockFeedModel(0);
  sub_2204445B4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  sub_2204445B4(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  sub_220890B1C();
  sub_22080BB44(v6, &unk_281296F00, sub_22055CF9C, v18);
  type metadata accessor for StockFeedServiceConfig(0);
  sub_2204445B4(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
  v19 = sub_22088B11C();

  sub_22062782C(v15);
  return v19;
}

id sub_220806FB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080B634(0, &qword_2812975C8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_22088848C();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220807098(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220731ED4(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220732198(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220732318(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_220731D1C(0, v3);
    swift_allocObject();
    return sub_22088BFBC();
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_220807204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220731D1C(0, v4);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = sub_22088BFCC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30, MEMORY[0x277D6D908], 1);
  result = sub_2208884DC();
  if (!*(&v13 + 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_220457328(&v12, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_2812974F0, &protocolRef_TUContentSizeCategoryProviderType);
  result = sub_2208884CC();
  if (result)
  {
    sub_22088D41C();
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_22046DA2C(v15, v11);
    v7 = swift_allocObject();
    sub_220457328(v11, v7 + 16);
    *(v7 + 56) = v6;
    v8 = v6;
    v9 = sub_22088D40C();
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v10 = MEMORY[0x277D6E690];
    *a2 = v9;
    a2[1] = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2208073B8(uint64_t a1, void *a2)
{
  v3 = sub_22088C2FC();
  MEMORY[0x28223BE20](v3, v4);
  v5 = sub_22088C2CC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v7);
  sub_22088D3EC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  result = sub_2208884DC();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v11 = sub_22088618C();
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    if (v11)
    {
      v12 = MEMORY[0x277D6DDF8];
      sub_22080BC3C(0, &qword_28127E070, MEMORY[0x277D6DDF8], MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_220899920;
      sub_22088C2DC();
      sub_22088C2EC();
      v16[0] = v13;
      sub_2204445B4(&qword_281297A00, MEMORY[0x277D6DDF8], MEMORY[0x277D6DE00]);
      sub_22080BC3C(0, &qword_28127EA90, v12, MEMORY[0x277D83940]);
      sub_22080B558(&qword_28127EA88, &qword_28127EA90, v12, v14);
      sub_2208923FC();
      return sub_22088D3FC();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2208076C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (result)
  {
    sub_22080B634(0, &qword_2812975C8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_22088D2DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22080778C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E9B98(0);
  v2 = sub_2208884CC();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E88C0(0);
  if (!sub_2208884CC())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockFeedBlueprintViewCellProvider();
  sub_22046DA2C(a1, v8);
  v4 = swift_allocObject();
  sub_220457328(v8, v4 + 16);
  v5 = sub_2208884AC();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockFeedBlueprintViewSupplementaryViewProvider();
  if (sub_2208884CC())
  {
    *&v8[0] = v3;
    sub_220731ED4(0);
    v7 = objc_allocWithZone(v6);
    sub_22088D7BC();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_220807928(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  v3 = sub_22088848C();
  if (v3)
  {
    v4 = v3;
    sub_22044D56C(0, &unk_28127E890, 0x277D759D8);
    sub_22089147C();
    sub_22088838C();
  }

  else
  {
    __break(1u);
  }
}

void *sub_220807A28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &unk_2812972B0, MEMORY[0x277D6EA40], 1);
  result = sub_22088849C();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_22088DD8C();
    sub_22088D7CC();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220807AFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E9B98(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E88C0(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080BBBC(0, &qword_281297688, sub_2205E9B98, sub_220648DC4, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_2204445B4(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770, MEMORY[0x277D6E170], 1);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080B174(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_2204445B4(&unk_281297AE0, sub_22080B174, MEMORY[0x277D6DA58]);
    sub_220732198(0);
    v4 = objc_allocWithZone(v3);
    return sub_22088D54C();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_220807E00(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088B84C();
  sub_22088848C();
  sub_22088D56C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22080AE30(0, v3);
  if (sub_2208884CC())
  {
    sub_2204445B4(&qword_281297430, sub_22080AE30, MEMORY[0x277D6E7F8]);
  }

  sub_22088D57C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088C9AC();
  if (!sub_22088848C())
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22088D53C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088D3DC();
  sub_22088848C();
  sub_22088D58C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22080AD54(0);
  sub_2208884CC();
  sub_22088D52C();
  v4 = sub_22088D51C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockFeedViewController(0);
  v5 = sub_2208884CC();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_22088D14C();
}

uint64_t sub_220808034(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E9B98(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2205E88C0(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220732318(0);
      v4 = objc_allocWithZone(v3);
      return sub_22088D99C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2208080F4()
{
  v0 = sub_22088C98C();
  MEMORY[0x28223BE20](v0, v1);
  v2 = MEMORY[0x277D6E088];
  sub_22080BC3C(0, &unk_28127E030, MEMORY[0x277D6E088], MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_220899360;
  sub_22088C97C();
  sub_2204445B4(&qword_281297778, MEMORY[0x277D6E088], MEMORY[0x277D6E090]);
  sub_22080BC3C(0, &qword_28127EA80, v2, MEMORY[0x277D83940]);
  sub_22080B558(&qword_28127EA78, &qword_28127EA80, v2, v3);
  sub_2208923FC();
  v4 = objc_allocWithZone(sub_22088C9AC());
  return sub_22088C99C();
}

void *sub_2208082D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (!v80)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281283080, &protocol descriptor for StockFeedMastheadViewRendererType, 0);
  result = sub_2208884DC();
  if (!v77)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285588, &protocol descriptor for StockFeedPriceViewRendererType, 0);
  result = sub_2208884DC();
  if (!v75)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281288308, &protocol descriptor for QuoteDetailViewRendererType, 0);
  result = sub_2208884DC();
  if (!v73)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v56 = v74;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281283088, &protocol descriptor for StockFeedEarningsViewRendererType, 0);
  result = sub_2208884DC();
  v55 = v71;
  if (!v71)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v54 = v72;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128B450, &protocol descriptor for PlacardViewRendererType, 0);
  result = sub_2208884DC();
  v53 = v69;
  if (!v69)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v52 = v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281282028, &protocol descriptor for BilingualFeedPromptViewRendererType, 0);
  result = sub_2208884DC();
  v51 = v67;
  if (!v67)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v49 = v68;
  v50 = v73;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockChartViewController(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288D98, &protocol descriptor for StockChartViewRendererType, 1);
  result = sub_2208884DC();
  if (!v66)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296B00, MEMORY[0x277D32340], 0);
  result = sub_2208884DC();
  v48 = v63;
  if (!v63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v3;
  v44 = v76;
  v45 = v75;
  v46 = v78;
  v47 = v77;
  v42 = v64;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_2812812C0, &protocol descriptor for StockFeedEarningsViewModelFactoryType, 1);
  result = sub_2208884DC();
  if (v62)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    v41[2] = v41;
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v41[1] = v41;
    v10 = MEMORY[0x28223BE20](v9, v9);
    v12 = (v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v7;
    v15 = *v12;
    v16 = type metadata accessor for StockChartViewRenderer();
    v60[3] = v16;
    v60[4] = &off_2834194F8;
    v60[0] = v14;
    v17 = type metadata accessor for StockFeedEarningsViewModelFactory();
    v58 = v17;
    v59 = &off_283422A00;
    v57[0] = v15;
    type metadata accessor for StockFeedBlueprintViewCellProvider();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v60, v16);
    v20 = MEMORY[0x28223BE20](v19, v19);
    v22 = (v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v25 = MEMORY[0x28223BE20](v24, v24);
    v27 = (v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = *v22;
    v30 = *v27;
    v18[24] = v16;
    v18[25] = &off_2834194F8;
    v18[21] = v29;
    v18[32] = v17;
    v18[33] = &off_283422A00;
    v18[29] = v30;
    v18[3] = 0;
    swift_unknownObjectWeakInit();
    sub_220457328(&v79, (v18 + 4));
    v31 = v46;
    v18[9] = v47;
    v18[10] = v31;
    v32 = v44;
    v18[11] = v45;
    v18[12] = v32;
    v34 = v55;
    v33 = v56;
    v18[13] = v50;
    v18[14] = v33;
    v36 = v53;
    v35 = v54;
    v18[15] = v34;
    v18[16] = v35;
    v38 = v51;
    v37 = v52;
    v18[17] = v36;
    v18[18] = v37;
    v39 = v49;
    v18[19] = v38;
    v18[20] = v39;
    v40 = v43;
    v18[26] = v48;
    v18[27] = v42;
    v18[28] = v40;
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return v18;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_220808A50(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockFeedViewController(0);
  v4 = sub_2208884CC();
  v3 = &off_2834181F0;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_220808AE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286A60, &protocol descriptor for BrandingTitleViewRendererType, 0);
  result = sub_2208884DC();
  if (!v30)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281283080, &protocol descriptor for StockFeedMastheadViewRendererType, 0);
  result = sub_2208884DC();
  v4 = v28;
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (!v27)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296990, MEMORY[0x277D32C08], 1);
  result = sub_2208884DC();
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  v5 = v22;
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v30;
  v17 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  result = sub_2208884DC();
  v8 = v20;
  if (v20)
  {
    v9 = type metadata accessor for StockFeedBlueprintViewSupplementaryViewProvider();
    v10 = v21;
    v11 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v12 = MEMORY[0x28223BE20](v11, v11);
    v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v12);
    v16 = sub_2206AA3D4(v6, v3, v4, v18, &v26, &v24, v5, v17, v7, v14, v9, v8, v10);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v16;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_220808E60(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockFeedViewController(0);
  v4 = sub_2208884CC();
  v3 = &off_2834181E8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_220808EF4(void *a1)
{
  v2 = sub_22088D7EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22088D80C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_22080BBBC(0, &qword_2812976B0, sub_2205E9B98, sub_220648DC4, MEMORY[0x277D6E380]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E9B98(0);
  result = sub_2208884CC();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x277D6E378], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277D6E828], v2);
    sub_22088D7FC();
    v17[1] = v16;
    sub_22080BBBC(0, &qword_281297688, sub_2205E9B98, sub_220648DC4, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_22088CDAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2208091D0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2205E88C0(0);
  if (sub_2208884CC())
  {
    sub_2204445B4(&qword_281297888, sub_2205E88C0, MEMORY[0x277D6DF30]);
    sub_22088CD8C();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220446A58(0, &qword_281296988, MEMORY[0x277D32C40], 1);
    sub_2208884DC();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_22044D56C(0, &qword_28127E830, 0x277D31278);
    sub_2208884CC();
    sub_22080B3B0(0);
    swift_allocObject();
    sub_22088FE0C();
    sub_2204445B4(&qword_281296A10, sub_22080B3B0, MEMORY[0x277D32A40]);
    sub_22088CD9C();

    sub_22080B458(0);
    swift_allocObject();
    sub_22088FE3C();
    sub_2204445B4(&qword_2812969E8, sub_22080B458, MEMORY[0x277D32B90]);
    sub_22088CD9C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_220809460(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220731D1C(0, v1);
  result = sub_2208884CC();
  if (result)
  {
    sub_22080BBBC(0, &qword_281297798, sub_220731D1C, sub_22080AAF8, MEMORY[0x277D6E068]);
    swift_allocObject();
    return sub_22088C94C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22080951C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2205E88C0(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220731D1C(0, v4);
    result = sub_2208884CC();
    if (result)
    {
      sub_22080B2F4(0);
      v6 = v5;
      swift_allocObject();
      v7 = sub_22088DE7C();
      v8[3] = v6;
      v8[4] = sub_2204445B4(&unk_281297200, sub_22080B2F4, MEMORY[0x277D6EAD8]);
      v8[0] = v7;
      sub_22088C95C();
      return __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220809650(void *a1, __n128 a2)
{
  sub_22080BC3C(0, &qword_281297380, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = (v18 - v5);
  v7 = sub_22088D3AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_22088D3DC();
  result = sub_22088848C();
  if (result)
  {
    v18[4] = v12;
    v18[5] = MEMORY[0x277D6E680];
    v18[1] = result;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_220899360;
    *v11 = sub_220531408;
    v11[1] = v14;
    (*(v8 + 104))(v11, *MEMORY[0x277D6E668], v7);
    *v6 = 10;
    v15 = *MEMORY[0x277D6E8D8];
    v16 = sub_22088D8AC();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v6, v15, v16);
    (*(v17 + 56))(v6, 0, 1, v16);
    sub_22088D3BC();
    swift_allocObject();
    return sub_22088D39C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2208098E0(__n128 a1)
{
  sub_22080BC3C(0, &qword_281297380, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = sub_22088C96C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088C61C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  sub_22088D3DC();
  (*(v6 + 104))(v9, *MEMORY[0x277D6E080], v5);
  v12 = sub_22088D8AC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_22088C60C();
  return sub_22088D3CC();
}

uint64_t sub_220809AC8(void *a1)
{
  sub_22047DD60(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080AE30(0, v3);
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = sub_2204445B4(&qword_281297438, sub_22080AE30, MEMORY[0x277D6E800]);
    *(v2 + 32) = v5;
    *(v2 + 40) = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088CA2C();
    result = sub_22088848C();
    if (result)
    {
      v7 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v7;
      sub_22088B84C();
      swift_allocObject();
      return sub_22088B83C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220809C04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220731D1C(0, v2);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22080BC3C(0, &qword_2812972F0, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9F0]);
    result = sub_2208884CC();
    if (result)
    {
      sub_22080AE30(0, 0);
      swift_allocObject();
      return sub_22088D74C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220809D14(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22080AD54(0);
  if (sub_2208884CC())
  {
    sub_2204445B4(&qword_281297820, sub_22080AD54, MEMORY[0x277D6DFD0]);
  }

  return sub_22088D75C();
}

uint64_t sub_220809DC0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220731D1C(0, v1);
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    sub_22088CA2C();
    swift_allocObject();
    return sub_22088CA1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220809E48(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080BC3C(0, &qword_2812972F0, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9F0]);
  result = sub_2208884CC();
  if (result)
  {
    sub_22080BC3C(0, &qword_281297338, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9B8]);
    swift_allocObject();
    return sub_22088DA6C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220809F20(__n128 a1)
{
  sub_22080BC3C(0, &qword_2812972F0, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9F0]);
  swift_allocObject();
  return sub_22088DC5C();
}

uint64_t sub_220809F88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080AD54(0);
  v4 = v3;
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2204445B4(&qword_281297818, sub_22080AD54, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22080A030@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  result = sub_22088848C();
  if (result)
  {
    v4 = sub_22088BD5C();
    v5 = objc_allocWithZone(v4);
    result = sub_22088BD4C();
    v6 = MEMORY[0x277D6DB78];
    a2[3] = v4;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22080A0E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  result = sub_22088848C();
  if (result)
  {
    v4 = sub_22088BD5C();
    v5 = objc_allocWithZone(v4);
    result = sub_22088BD4C();
    v6 = MEMORY[0x277D6DB78];
    a2[3] = v4;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22080A1A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850, MEMORY[0x277D33678], 1);
  result = sub_2208884DC();
  if (v10[3])
  {
    sub_22080AFC4(0);
    v3 = v2;
    v4 = objc_allocWithZone(v2);
    v5 = &v4[qword_27CF578E0];
    *v5 = 0;
    *(v5 + 1) = 0;
    sub_22046DA2C(v10, &v4[qword_27CF578E8]);
    v9.receiver = v4;
    v9.super_class = v3;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    sub_22046DA2C(v6 + qword_27CF578E8, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v7 = v6;
    sub_2208904AC();

    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22080A2F0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void sub_22080A334(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220731D1C(0, v2);
  if (sub_2208884CC())
  {
    v3 = MEMORY[0x277D6E5D0];
    sub_22080BBBC(0, &qword_2812975D0, sub_220731D1C, sub_22080AAF8, MEMORY[0x277D6E5D0]);
    swift_allocObject();
    sub_22088D22C();
    sub_22080B5BC(&unk_2812975D8, &qword_2812975D0, v3, MEMORY[0x277D6E5D8]);
    sub_22088C92C();
  }

  else
  {
    __break(1u);
  }
}

void sub_22080A464(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22080A930(0);
  if (!sub_2208884CC())
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E9B98(0);
  if (!sub_2208884CC())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296CE0, MEMORY[0x277D2D668], 1);
  sub_2208914FC();
  sub_22046DA2C(a1, &v7);
  v2 = swift_allocObject();
  sub_220457328(&v7, v2 + 16);
  sub_22088847C();

  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_22088D84C();
  v4 = sub_22088848C();
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v3;
  v9 = MEMORY[0x277D6E870];
  *&v7 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220444198(0);
  if (sub_2208884CC())
  {
    sub_22080B040(0);
    v6 = objc_allocWithZone(v5);
    sub_22088F9CC();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_22080A6A4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220732198(0);
  v2 = sub_2208884CC();
  if (v2)
  {
    v3 = v2;
    v4 = sub_22088D51C();
    sub_22080B040(0);
    sub_22088D14C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22080A748(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205E88C0(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for StockFeedBlueprintCellPrefetcher();
    result = sub_2208884CC();
    if (result)
    {
      sub_22080B174(0);
      swift_allocObject();
      return sub_22088BC5C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22080A810(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220731D1C(0, v2);
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    return sub_22088BC6C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22080A88C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088F6AC();
  result = sub_2208884CC();
  if (result)
  {
    v2 = result;
    type metadata accessor for StockFeedBlueprintCellPrefetcher();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22080A930(uint64_t a1)
{
  if (!qword_281297CF0)
  {
    sub_2205E9B98(255);
    sub_22080A9EC(255);
    sub_220648DC4();
    sub_2204445B4(&qword_281297BD0, sub_22080A9EC, MEMORY[0x277D6D960]);
    v1 = sub_22088B6FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297CF0);
    }
  }
}

void sub_22080A9EC(uint64_t a1)
{
  if (!qword_281297BC8)
  {
    type metadata accessor for StockFeedSectionDescriptor(255);
    type metadata accessor for StockFeedModel(255);
    sub_220731D1C(255, v1);
    sub_2204445B4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_2204445B4(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    sub_22080AAF8();
    v2 = sub_22088B95C();
    if (!v3)
    {
      atomic_store(v2, &qword_281297BC8);
    }
  }
}

void sub_22080AB2C(uint64_t a1)
{
  if (!qword_281297238)
  {
    sub_2205E88C0(255);
    type metadata accessor for StockFeedBlueprintLayoutBuilder();
    sub_22080AC68(255);
    sub_2204445B4(&qword_281297880, sub_2205E88C0, MEMORY[0x277D6DF38]);
    sub_2204445B4(qword_281284CD0, type metadata accessor for StockFeedBlueprintLayoutBuilder, &unk_2208992A8);
    sub_2204445B4(&qword_2812974A0, sub_22080AC68, MEMORY[0x277D6E7B8]);
    v1 = sub_22088DE5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297238);
    }
  }
}

void sub_22080AC68(uint64_t a1)
{
  if (!qword_281297498)
  {
    type metadata accessor for StockFeedLayoutSectionDescriptor(255);
    type metadata accessor for StockFeedLayoutModel(255);
    sub_2204445B4(&qword_281283F88, type metadata accessor for StockFeedLayoutSectionDescriptor, &unk_2208AA834);
    sub_2204445B4(&qword_28128E7F0, type metadata accessor for StockFeedLayoutModel, &unk_22089F200);
    v1 = sub_22088D6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297498);
    }
  }
}

void sub_22080AD54(uint64_t a1)
{
  if (!qword_281297810)
  {
    sub_2205E9B98(255);
    sub_220731D1C(255, v1);
    type metadata accessor for StockFeedViewController(255);
    sub_220648DC4();
    sub_22080AAF8();
    sub_2204445B4(&qword_28128AF30, type metadata accessor for StockFeedViewController, &unk_2208A454C);
    v2 = sub_22088C7CC();
    if (!v3)
    {
      atomic_store(v2, &qword_281297810);
    }
  }
}

void sub_22080AE30(uint64_t a1, __n128 a2)
{
  if (!qword_281297428)
  {
    sub_220731D1C(255, a2);
    sub_22080BC3C(255, &qword_2812972F0, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9F0]);
    sub_22080AAF8();
    sub_22080AEEC(v2);
    v3 = sub_22088D76C();
    if (!v4)
    {
      atomic_store(v3, &qword_281297428);
    }
  }
}

unint64_t sub_22080AEEC(__n128 a1)
{
  result = qword_2812972F8;
  if (!qword_2812972F8)
  {
    sub_22080BC3C(255, &qword_2812972F0, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9F0]);
    sub_2204445B4(&qword_281293DD8, type metadata accessor for StockFeedModel, &unk_2208B4C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812972F8);
  }

  return result;
}

void sub_22080AFC4(uint64_t a1)
{
  if (!qword_281290B28)
  {
    v4[0] = &type metadata for StockFeedOfflineModel.Loading;
    v4[1] = &type metadata for StockFeedOfflineModel.Expanding;
    v4[2] = sub_2205E9D84();
    v4[3] = sub_2205E9DD8();
    v2 = type metadata accessor for DualOfflineManager(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_281290B28);
    }
  }
}

void sub_22080B040(uint64_t a1)
{
  if (!qword_281296AF0)
  {
    sub_2205E9B98(255);
    sub_22080A9EC(255);
    sub_220648DC4();
    sub_2204445B4(&qword_281297BD0, sub_22080A9EC, MEMORY[0x277D6D960]);
    sub_2204445B4(&qword_281293DC0, type metadata accessor for StockFeedModel, &unk_2208B4BA0);
    sub_2204445B4(&qword_281293DC8, type metadata accessor for StockFeedModel, &unk_2208B4B48);
    v1 = sub_22088F9DC();
    if (!v2)
    {
      atomic_store(v1, &qword_281296AF0);
    }
  }
}

void sub_22080B174(uint64_t a1)
{
  if (!qword_281297AD8)
  {
    sub_2205E88C0(255);
    type metadata accessor for StockFeedBlueprintCellPrefetcher();
    sub_2204445B4(&qword_281297880, sub_2205E88C0, MEMORY[0x277D6DF38]);
    sub_2204445B4(qword_2812842B0, type metadata accessor for StockFeedBlueprintCellPrefetcher, &unk_2208B7764);
    sub_2204445B4(&qword_28128E7E0, type metadata accessor for StockFeedLayoutModel, &unk_22089F3F0);
    sub_2204445B4(&qword_28128E7E8, type metadata accessor for StockFeedLayoutModel, &unk_22089F2A0);
    v1 = sub_22088BC7C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297AD8);
    }
  }
}

void sub_22080B2F4(uint64_t a1)
{
  if (!qword_2812971F8)
  {
    sub_2205E88C0(255);
    sub_220731D1C(255, v1);
    sub_2204445B4(&qword_281297880, sub_2205E88C0, MEMORY[0x277D6DF38]);
    sub_22080AAF8();
    v2 = sub_22088DE8C();
    if (!v3)
    {
      atomic_store(v2, &qword_2812971F8);
    }
  }
}

void sub_22080B3B0(uint64_t a1)
{
  if (!qword_281296A08)
  {
    sub_2205E9B98(255);
    sub_220648DC4();
    sub_2204445B4(&qword_281293DC8, type metadata accessor for StockFeedModel, &unk_2208B4B48);
    v1 = sub_22088FE1C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296A08);
    }
  }
}

void sub_22080B458(uint64_t a1)
{
  if (!qword_2812969E0)
  {
    sub_2205E9B98(255);
    type metadata accessor for StockFeedServiceConfig(255);
    sub_220648DC4();
    sub_2204445B4(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    sub_2204445B4(&qword_281293DC8, type metadata accessor for StockFeedModel, &unk_2208B4B48);
    v1 = sub_22088FE4C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812969E0);
    }
  }
}

uint64_t sub_22080B558(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  result = *a1;
  if (!result)
  {
    sub_22080BC3C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22080B5BC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22080BBBC(255, a2, sub_220731D1C, sub_22080AAF8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22080B634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_22080B6A0(__n128 a1)
{
  result = qword_281297340;
  if (!qword_281297340)
  {
    sub_22080BC3C(255, &qword_281297338, type metadata accessor for StockFeedModel, MEMORY[0x277D6E9B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297340);
  }

  return result;
}

uint64_t sub_22080B730(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22080BBBC(255, &qword_28128FA08, type metadata accessor for StockFeedBlueprintModifierFactory, sub_22080A8FC, type metadata accessor for StockFeedInteractor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22080B7B8(uint64_t a1)
{
  if (!qword_281297648)
  {
    type metadata accessor for StockFeedSectionDescriptor(255);
    type metadata accessor for StockFeedModel(255);
    sub_2204445B4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_2204445B4(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v1 = sub_22088CE5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297648);
    }
  }
}

double sub_22080B8A4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_22080A8FC();
    v3 = *(v2 + 48);
    v4 = type metadata accessor for StockFeedBlueprintModifierFactory(0);
    v3(v4, v2);
    sub_2205E7490(0, v5);
    sub_2204445B4(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
    sub_22088B6DC();
  }

  return result;
}

void sub_22080B9A8(uint64_t a1)
{
  if (!qword_281296D60)
  {
    sub_2208900AC();
    sub_22088ED4C();
    sub_22088EE1C();
    sub_2204445B4(&qword_281296930, MEMORY[0x277D33038], MEMORY[0x277D33028]);
    sub_2204445B4(&qword_281296D30, MEMORY[0x277D2D560], MEMORY[0x277D2D558]);
    v1 = sub_22088ECAC();
    if (!v2)
    {
      atomic_store(v1, &qword_281296D60);
    }
  }
}

void sub_22080BAB4()
{
  if (!qword_281298918)
  {
    v0 = sub_2208886BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298918);
    }
  }
}

uint64_t sub_22080BB44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_22080BC3C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_22080BBBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_22080BC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_22080BCA4()
{
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[23];
  }

  else
  {
    v3 = sub_22080BD00(v0);
    v4 = v0[23];
    v0[23] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_22080BD00(void *a1)
{
  v2 = sub_22088909C();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220889FFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220889FEC();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088A07C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v20, *MEMORY[0x277D68F78], v15, v18);
  v21 = sub_22088721C();
  (*(v16 + 8))(v20, v15);
  v22 = *MEMORY[0x277D68EE8];
  v23 = *(v7 + 104);
  v23(v10, v22, v6);
  sub_220889FCC();
  sub_22048B490(&qword_2812982D8, 255, MEMORY[0x277D68ED8], MEMORY[0x277D68ED0]);
  sub_2208872CC();
  v24 = v14;
  v25 = v21;
  (*(v38 + 8))(v24, v11);
  v23(v10, v22, v6);
  v26 = v39;
  sub_22088908C();
  sub_22048B490(&qword_281298590, 255, MEMORY[0x277D68210], MEMORY[0x277D68208]);
  v27 = v40;
  sub_2208872CC();
  (*(v41 + 8))(v26, v27);
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  type metadata accessor for ForYouFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = v25;

  v29 = sub_2208884AC();

  result = swift_unownedRelease();
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    sub_2204446D4(0, qword_2812829D8, &protocol descriptor for ForYouFeedMastheadViewProviderType);
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    *(swift_allocObject() + 16) = a1;
    sub_2208884BC();

    result = swift_unownedRelease();
    if (v46)
    {
      sub_220457328(&v45, v48);
      v31 = v49;
      v32 = v50;
      v33 = __swift_project_boxed_opaque_existential_1(v48, v49);
      v46 = v31;
      v47 = *(v32 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
      (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v33, v31);
      sub_22048B188(0);
      v42 = 0u;
      v43 = 0u;
      v44 = 0;
      v36 = objc_allocWithZone(v35);
      v37 = sub_22088C53C();

      __swift_destroy_boxed_opaque_existential_1(v48);
      return v37;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22080C2EC(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_22046DA2C(a2 + 104, v7);

  v3 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_22046DA2C(*v3 + 24, v6);
  type metadata accessor for ForYouMastheadModel();
  swift_allocObject();
  v4 = swift_unknownObjectRetain();
  *&v6[0] = sub_2208131DC(v4, v6);
  sub_22088837C();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_22080C3D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_22080C4B0(char a1, char a2, double a3)
{
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (sub_2205CE1C8(a1 & 1), (v6 & 1) != 0))
  {
    v7 = swift_endAccess();
    if (a2)
    {
      MEMORY[0x28223BE20](v7, v8);
    }

    sub_22046D934();
    swift_allocObject();

    v9 = sub_220888F2C();

    return v9;
  }

  else
  {
    swift_endAccess();
    sub_22046D934();
    swift_allocObject();
    return sub_220888ECC();
  }
}

uint64_t sub_22080C64C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 16))(a1, a2, a3, a4);
  v7 = (*(a5 + 32))(1);
  return a1(v7);
}

void sub_22080C6A4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();
  v12 = objc_allocWithZone(MEMORY[0x277CD9EF8]);

  LODWORD(v13) = 1036831949;
  LODWORD(v14) = 0.25;
  LODWORD(v15) = 0.25;
  LODWORD(v16) = 1.0;
  v17 = [v12 initWithControlPoints__:v14 :{v13, v15, v16}];
  v25 = sub_2204D48F4;
  v26 = a6;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2204C35E8;
  v24 = &block_descriptor_49;
  v18 = _Block_copy(&v21);

  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = sub_2207C1958;
  v19[4] = v10;
  v25 = sub_22080C9D8;
  v26 = v19;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2206B2490;
  v24 = &block_descriptor_16_1;
  v20 = _Block_copy(&v21);

  [v11 nu:v17 animateWithDuration:4 delay:v18 timingFunction:v20 options:0.26 animations:a3 completion:?];
  _Block_release(v20);
  _Block_release(v18);
}

uint64_t sub_22080C8B4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_22080C92C()
{
  result = qword_28127F208;
  if (!qword_28127F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127F208);
  }

  return result;
}

uint64_t sub_22080C980(uint64_t (*a1)(uint64_t))
{
  (*(v1 + 16))();
  v3 = (*(v1 + 32))(1);
  return a1(v3);
}

uint64_t sub_22080C9D8()
{
  v1 = *(v0 + 24);
  v2 = (*(*(v0 + 16) + 32))();
  return v1(v2);
}

uint64_t sub_22080CA68(char a1)
{
  result = swift_beginAccess();
  *(v1 + 19) = a1;
  return result;
}

uint64_t sub_22080CB2C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t sub_22080CC1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22080CC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22080CCC4()
{

  return swift_deallocClassInstance();
}

void sub_22080CD04(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v6 = *(sub_220890A3C() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v19 = *(v6 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    a1(&v21, v7);
    if (v3)
    {

      return;
    }

    v9 = v21;
    v10 = *(v21 + 16);
    v11 = v8[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v12 <= v8[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v14 = v11 + v10;
      }

      else
      {
        v14 = v11;
      }

      v8 = sub_22058850C(isUniquelyReferenced_nonNull_native, v14, 1, v8);
      if (*(v9 + 16))
      {
LABEL_15:
        v15 = (v8[3] >> 1) - v8[2];
        type metadata accessor for ForYouFeedModel(0);
        if (v15 < v10)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v16 = v8[2];
          v17 = __OFADD__(v16, v10);
          v18 = v16 + v10;
          if (v17)
          {
            goto LABEL_25;
          }

          v8[2] = v18;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v19;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_22080CF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v158 = a4;
  v146 = a3;
  v161 = a5;
  sub_22051DA14(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v160 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208852DC();
  v155 = *(v10 - 8);
  v156 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v154 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2208857EC();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v13);
  v148 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088699C();
  v169 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v167 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v170 = &v132 - v20;
  v168 = sub_220885D4C();
  v21 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v22);
  v166 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D83D88];
  sub_220453D98(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v165 = &v132 - v27;
  sub_220453D98(0, &qword_2812990C0, MEMORY[0x277D697F8], v24);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v144 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v143 = &v132 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v142 = &v132 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v141 = &v132 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v163 = &v132 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v132 - v45;
  v47 = sub_22088685C();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v132 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  v53 = MEMORY[0x28223BE20](v153, v52);
  v55 = &v132 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v48;
  v56 = *(v48 + 16);
  (v56)(v55, a1, v47, v53);
  v162 = v51;
  v164 = v47;
  v139 = v56;
  (v56)(v51, a1, v47);
  v157 = a1;
  v57 = sub_22088681C();
  v59 = *(a2 + 16);
  v149 = v15;
  if (v59)
  {
    v60 = sub_2204AF97C(v57, v58);
    v62 = v61;

    if (v62)
    {
      v63 = *(a2 + 56);
      v64 = sub_22088676C();
      v65 = *(v64 - 8);
      v66 = v65;
      v67 = *(v65 + 72);
      v68 = *(v65 + 16);
      v138 = (v64 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v69 = v46;
      v68(v46, v63 + v67 * v60, v64);
      v70 = *(v66 + 56);
      v136 = v64;
      v70(v46, 0, 1, v64);
      goto LABEL_7;
    }

    v71 = sub_22088676C();
    v72 = *(*(v71 - 8) + 56);
    v138 = (v71 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v69 = v46;
    v73 = v46;
  }

  else
  {

    v71 = sub_22088676C();
    v69 = v46;
    v72 = *(*(v71 - 8) + 56);
    v138 = (v71 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v73 = v46;
  }

  v136 = v71;
  v72(v73, 1, 1);
LABEL_7:
  sub_22045849C(0);
  v140 = v74;
  v75 = *(v74 + 48);
  v150 = v55;
  v76 = &v55[v75];
  v77 = type metadata accessor for StockSparklineViewModel(0);
  v78 = v165;
  (*(*(v77 - 8) + 56))(v165, 1, 1, v77);
  v147 = v21;
  v79 = *(v21 + 16);
  v80 = v166;
  v81 = v168;
  v79(v166, v146, v168);
  (v139)(v76, v162, v164);
  v82 = type metadata accessor for StockViewModel(0);
  v83 = MEMORY[0x277D697F8];
  sub_2204FBD18(v69, &v76[v82[5]], &qword_2812990C0, MEMORY[0x277D697F8]);
  sub_2204FBD18(v78, &v76[v82[6]], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v84 = v80;
  v85 = v76;
  v79(&v76[v82[8]], v84, v81);
  v139 = v82;
  v76[v82[9]] = 0;
  v146 = v69;
  v86 = v163;
  sub_2204FBD18(v69, v163, &qword_2812990C0, v83);
  sub_2208867CC();
  v87 = v141;
  sub_2204FBD18(v86, v141, &qword_2812990C0, v83);
  sub_22088676C();
  v88 = v136;
  v89 = *(v136 - 8);
  v90 = *(v89 + 48);
  if (v90(v87, 1, v136) == 1)
  {
    sub_22051F42C(v87, &qword_2812990C0, MEMORY[0x277D697F8]);
    v138 = 0;
    v137 = 1;
  }

  else
  {
    v138 = sub_22088675C();
    v137 = v91;
    (*(v89 + 8))(v87, v88);
  }

  v92 = v169;
  v93 = v167;
  v94 = v143;
  v95 = v142;
  sub_2204FBD18(v86, v142, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v90(v95, 1, v88) == 1)
  {
    sub_22051F42C(v95, &qword_2812990C0, MEMORY[0x277D697F8]);
    v143 = 0;
    LODWORD(v142) = 1;
  }

  else
  {
    v143 = sub_22088666C();
    LODWORD(v142) = v96;
    (*(v89 + 8))(v95, v88);
  }

  sub_2204FBD18(v86, v94, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v90(v94, 1, v88) == 1)
  {
    sub_22051F42C(v94, &qword_2812990C0, MEMORY[0x277D697F8]);
    v141 = 0;
    v135 = 1;
  }

  else
  {
    v141 = sub_22088671C();
    v135 = v97;
    (*(v89 + 8))(v94, v88);
  }

  v98 = v86;
  v99 = v144;
  sub_2204FBD18(v98, v144, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v90(v99, 1, v88) == 1)
  {
    sub_22051F42C(v99, &qword_2812990C0, MEMORY[0x277D697F8]);
    v134 = 0;
    v133 = 0;
  }

  else
  {
    v134 = sub_22088668C();
    v133 = v100;
    (*(v89 + 8))(v99, v88);
  }

  v144 = *(v140 + 64);
  v101 = &v85[v139[7]];
  v102 = *(v92 + 16);
  v103 = v149;
  v102(v93, v170, v149);
  v104 = v93;
  v105 = v151;
  v106 = v148;
  v107 = v152;
  (*(v151 + 104))(v148, *MEMORY[0x277D69288], v152);
  v108 = v154;
  sub_22088524C();
  *v101 = v138;
  v101[8] = v137 & 1;
  *(v101 + 2) = v143;
  v101[24] = v142 & 1;
  *(v101 + 4) = v141;
  v101[40] = v135 & 1;
  v109 = v133;
  *(v101 + 6) = v134;
  *(v101 + 7) = v109;
  v110 = type metadata accessor for PriceViewModel(0);
  v102(&v101[v110[10]], v104, v103);
  v111 = v108;
  *(v101 + 8) = 9666786;
  *(v101 + 9) = 0xA300000000000000;
  (*(v105 + 16))(&v101[v110[9]], v106, v107);
  v112 = v155;
  v113 = v108;
  v114 = v156;
  (*(v155 + 16))(&v101[v110[11]], v113, v156);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v115 = qword_2812B6B48;
  (*(v105 + 8))(v106, v107);
  v116 = *(v169 + 8);
  v116(v167, v103);
  v116(v170, v103);
  v117 = MEMORY[0x277D697F8];
  sub_22051F42C(v163, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v147 + 8))(v166, v168);
  sub_22051F42C(v165, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_22051F42C(v146, &qword_2812990C0, v117);
  (*(v145 + 8))(v162, v164);
  v118 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v112 + 40))(v115 + v118, v111, v114);
  swift_endAccess();
  v119 = type metadata accessor for StockForYouFeedGroup(0);
  v120 = v157;
  sub_2204FBD18(v157 + *(v119 + 28), &v150[v144], &qword_281296C60, MEMORY[0x277D31C50]);
  v121 = swift_storeEnumTagMultiPayload();
  MEMORY[0x28223BE20](v121, v122);
  v123 = v159;
  *(&v132 - 4) = v158;
  *(&v132 - 3) = v120;
  *(&v132 - 2) = v123;
  sub_22051E318(sub_22051EF0C, (&v132 - 6), v124);
  v126 = v125;
  sub_22051D97C(0);
  v128 = v127;
  v129 = sub_220458888(&qword_281297F68, sub_22051D97C, MEMORY[0x277D6D408]);
  v130 = sub_220458888(&qword_281297F70, sub_22051D97C, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A20](v126, v128, v129, v130);
  type metadata accessor for ForYouFeedModel(0);
  sub_220458888(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
  sub_220458888(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
  return sub_22088B29C();
}

uint64_t sub_22080DFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v53 = a3;
  v59 = type metadata accessor for ForYouFeedModel(0);
  v49 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v4);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v48 - v8;
  sub_22051D97C(0);
  v58 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051DA14(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v52 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v56, v18);
  v55 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v54 = &v48 - v22;
  v23 = sub_22089037C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088F37C();
  v28 = sub_22088F2EC();
  v30 = v29;
  v31 = sub_22089036C();
  v61 = v50;
  v62 = v28;
  v63 = v30;
  v64 = v51;
  sub_22080CD04(sub_22080F800, v60, v31);
  v33 = v32;

  (*(v24 + 8))(v27, v23);
  if (*(a1 + *(type metadata accessor for CuratedForYouFeedGroup(0) + 20)) == __PAIR128__(0xEA00000000007365, 0x69726F7453706F74) || (sub_2208928BC() & 1) != 0)
  {
    v34 = sub_22088F39C();
    v35 = v33;
    v36 = *(v34 - 8);
    v37 = v54;
    (*(v36 + 16))(v54, a1, v34);
    (*(v36 + 56))(v37, 0, 1, v34);
    v33 = v35;
  }

  else
  {
    v37 = v54;
    sub_22080F820(a1, v54, type metadata accessor for CuratedForYouFeedGroup);
  }

  swift_storeEnumTagMultiPayload();
  sub_22080F820(v37, v55, type metadata accessor for ForYouFeedSectionDescriptor);
  v38 = *(v33 + 16);
  if (v38)
  {
    v65 = MEMORY[0x277D84F90];
    sub_22051E3CC(0, v38, 0);
    v39 = v65;
    v40 = *(v49 + 80);
    v51 = v33;
    v41 = v33 + ((v40 + 32) & ~v40);
    v42 = *(v49 + 72);
    do
    {
      sub_22080F820(v41, v9, type metadata accessor for ForYouFeedModel);
      sub_22080F820(v9, v57, type metadata accessor for ForYouFeedModel);
      sub_220458888(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
      sub_22088AD7C();
      sub_2204FC2E4(v9, type metadata accessor for ForYouFeedModel);
      v65 = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22051E3CC((v43 > 1), v44 + 1, 1);
        v39 = v65;
      }

      *(v39 + 16) = v44 + 1;
      (*(v11 + 32))(v39 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v44, v14, v58);
      v41 += v42;
      --v38;
    }

    while (v38);

    v37 = v54;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v45 = sub_220458888(&qword_281297F68, sub_22051D97C, MEMORY[0x277D6D408]);
  v46 = sub_220458888(&qword_281297F70, sub_22051D97C, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A20](v39, v58, v45, v46);
  sub_220458888(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
  sub_220458888(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
  sub_22088B29C();
  return sub_2204FC2E4(v37, type metadata accessor for ForYouFeedSectionDescriptor);
}

uint64_t sub_22080E6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  sub_22051DA14(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v20[0] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v9 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088F23C();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  swift_storeEnumTagMultiPayload();
  sub_220453D98(0, &qword_28127E0F0, sub_22051D97C, MEMORY[0x277D84560]);
  sub_22051D97C(0);
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899360;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_22088FB2C();
  swift_storeEnumTagMultiPayload();
  sub_220458888(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
  sub_22088AD7C();
  v17 = sub_220458888(&qword_281297F68, sub_22051D97C, MEMORY[0x277D6D408]);
  v18 = sub_220458888(&qword_281297F70, sub_22051D97C, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A10](v16, v15, v17, v18);
  sub_220458888(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
  return sub_22088B29C();
}

uint64_t sub_22080EA24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22080EA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v94 = a6;
  v87 = a5;
  v90 = a3;
  v91 = a4;
  v93 = a2;
  v85 = sub_22089049C();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v7);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v86 = &v77 - v11;
  v12 = sub_22088FFFC();
  v95 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v89 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v77 - v17;
  v19 = sub_22088698C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v88 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = (&v77 - v25);
  v27 = sub_220890A3C();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = (&v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v32, a1, v27, v30);
  v33 = (*(v28 + 88))(v32, v27);
  if (v33 == *MEMORY[0x277D34128])
  {
    (*(v28 + 96))(v32, v27);
    v34 = *v32;
    sub_220453D98(0, &qword_28127DF90, type metadata accessor for ForYouFeedModel, MEMORY[0x277D84560]);
    v85 = type metadata accessor for ForYouFeedModel(0);
    v83 = ((*(*(v85 - 8) + 80) + 32) & ~*(*(v85 - 8) + 80));
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_220899360;
    sub_22052EC94(0);
    *v26 = v34;
    swift_unknownObjectRetain();
    sub_220885CBC();
    v35 = *MEMORY[0x277D69850];
    v86 = v20;
    v36 = *(v20 + 13);
    v92 = v26;
    v36(v26, v35, v19);
    v37 = *(v95 + 16);
    v81 = v95 + 16;
    v80 = v37;
    v37(v18, v93, v12);
    v79 = *(v87 + 7);
    v38 = [v34 isPaid];
    if ([v34 respondsToSelector_])
    {
      v39 = [v34 isBundlePaid];
    }

    else
    {
      v39 = 0;
    }

    v87 = v18;
    v93 = v19;
    v44 = [v34 sourceChannel];
    v45 = v92;
    if (v44)
    {
      v46 = [v44 identifier];
      swift_unknownObjectRelease();
      v47 = sub_22089136C();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v82 = v34;
    if (v38)
    {
      v55 = [v79 purchaseProvider];
      if (!v49)
      {
        swift_unknownObjectRelease();
        v59 = v86;
        if (!v39)
        {
          goto LABEL_49;
        }

LABEL_30:
        if (!v49)
        {
LABEL_52:
          v60 = 0;
          goto LABEL_53;
        }

        v63 = [objc_msgSend(v79 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v64 = objc_getAssociatedObject(v63, v63 + 1);
        v78 = v12;
        if (v64)
        {
          sub_2208923BC();
          swift_unknownObjectRelease();
        }

        else
        {
          v96 = 0u;
          v97 = 0u;
        }

        v98 = v96;
        v99 = v97;
        if (*(&v97 + 1))
        {
          sub_2204DD8BC();
          if (swift_dynamicCast())
          {
            v65 = v100;
            v66 = [v100 integerValue];
            if (v66 == -1)
            {

              v12 = v78;
              goto LABEL_51;
            }

            v67 = v66;
LABEL_40:
            if (objc_getAssociatedObject(v63, ~v67))
            {
              sub_2208923BC();
              swift_unknownObjectRelease();
            }

            else
            {
              v96 = 0u;
              v97 = 0u;
            }

            v98 = v96;
            v99 = v97;
            if (*(&v97 + 1))
            {
              sub_2204DD8BC();
              if (swift_dynamicCast())
              {
                v68 = v100;
                v86 = [v68 integerValue];

                v12 = v78;
                v45 = v92;
                if ((v86 ^ v67))
                {
LABEL_51:
                  v69 = [objc_msgSend(v79 bundleSubscriptionProvider)];
                  swift_unknownObjectRelease();
                  v70 = [v69 bundleChannelIDs];

                  v71 = sub_22089132C();
                  v72 = [v70 containsObject_];

                  v45 = v92;

                  if ((v72 & 1) == 0)
                  {
                    goto LABEL_52;
                  }

LABEL_26:
                  v60 = 1;
LABEL_53:
                  v73 = v93;
                  (*(v59 + 2))(v88, v45, v93);
                  v74 = v87;
                  v80(v89, v87, v12);
                  LOBYTE(v98) = v60;
                  v75 = MEMORY[0x277D69858];
                  v86 = sub_220458888(&unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]);
                  sub_220458888(&unk_281299040, v75, MEMORY[0x277D69848]);

                  v76 = v84;
                  sub_22088FF9C();
                  (*(v95 + 8))(v74, v12);
                  (*(v59 + 1))(v92, v73);
                  swift_storeEnumTagMultiPayload();
                  result = swift_unknownObjectRelease();
                  *v94 = v76;
                  return result;
                }

LABEL_49:

                goto LABEL_52;
              }
            }

            else
            {
              sub_2204FC2E4(&v98, sub_22055F87C);
            }

            v12 = v78;
            v45 = v92;
            if (v67)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }
        }

        else
        {
          sub_2204FC2E4(&v98, sub_22055F87C);
        }

        v65 = 0;
        v67 = 0;
        goto LABEL_40;
      }

      v56 = [v55 purchasedTagIDs];
      v57 = sub_2208918EC();

      LOBYTE(v56) = sub_22056F244(v47, v49, v57);
      v58 = v92;

      v45 = v58;
      swift_unknownObjectRelease();
      v59 = v86;
      if ((v56 & 1) == 0)
      {
        if (!v39)
        {
          goto LABEL_49;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v59 = v86;
      if (v39)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_26;
  }

  v40 = v93;
  v78 = v12;
  if (v33 == *MEMORY[0x277D34108] || v33 == *MEMORY[0x277D34100] || v33 == *MEMORY[0x277D34130])
  {
    goto LABEL_12;
  }

  if (v33 == *MEMORY[0x277D34110])
  {
    (*(v28 + 96))(v32, v27);
    v50 = v84;
    v51 = v85;
    v52 = v86;
    (*(v84 + 32))(v86, v32, v85);
    sub_220453D98(0, &qword_28127DF90, type metadata accessor for ForYouFeedModel, MEMORY[0x277D84560]);
    v92 = type metadata accessor for ForYouFeedModel(0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_220899360;
    (*(v50 + 16))(v83, v52, v51);
    (*(v95 + 16))(v89, v40, v78);
    v54 = MEMORY[0x277D33620];
    sub_220458888(&qword_281296860, MEMORY[0x277D33620], MEMORY[0x277D33628]);
    sub_220458888(&qword_281296868, v54, MEMORY[0x277D33618]);

    sub_22088FFAC();
    swift_storeEnumTagMultiPayload();
    result = (*(v50 + 8))(v86, v51);
    *v94 = v53;
    return result;
  }

  if (v33 == *MEMORY[0x277D340F0])
  {
LABEL_12:
    result = (*(v28 + 8))(v32, v27);
    *v94 = MEMORY[0x277D84F90];
    return result;
  }

  sub_220453D98(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_220899360;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_22089264C();
  v62 = v98;
  *(v61 + 56) = MEMORY[0x277D837D0];
  *(v61 + 64) = sub_22048D860();
  *(v61 + 32) = v62;
  MEMORY[0x223D80750]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v61);

  *v94 = MEMORY[0x277D84F90];
  return (*(v28 + 8))(v32, v27);
}

uint64_t sub_22080F820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22080F9AC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI20TickerViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t sub_22080FA0C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI20TickerViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

void sub_22080FA7C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1;
  sub_22088C71C();
  v5 = sub_22088BFCC();

  type metadata accessor for TickerCollectionView();
  *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = a4;
  sub_2207A7D00();
}

uint64_t sub_22080FBE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = sub_2208854AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088545C();
  v12 = a1;
  sub_22088C71C();
  v13 = sub_22088BFCC();

  type metadata accessor for TickerCollectionView();
  *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = a5;
  sub_2207A7D00();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22080FD30()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_22080FD78(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22089259C();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_2208116B4(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_220810078()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_2207EFBA8(v0 + OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fetchedAppLaunchUpsellLastSeenDate);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_privateDataPollingService));

  return swift_deallocClassInstance();
}

double sub_220810114(uint64_t a1, unint64_t a2)
{
  v4 = v2[9];
  v3 = v2[10];
  v2[9] = a1;
  v2[10] = a2;
  if (a2)
  {
    if (!a1 && a2 == 0xE000000000000000 || (sub_2208928BC() & 1) != 0)
    {

LABEL_6:
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      sub_2208856CC();
      goto LABEL_9;
    }

    sub_2208120B4(a1, a2);
    if (v8)
    {
    }

    else
    {
      v10 = v7;
      sub_2208120B4(v4, v3);
      v12 = v11;
      v14 = v13;

      if (v14)
      {
        if (v10 != 0x8000000000000000)
        {
          goto LABEL_6;
        }
      }

      else if (v12 < v10)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_9:

  return result;
}

uint64_t sub_220810240(uint64_t a1)
{
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088516C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fetchedAppLaunchUpsellLastSeenDate;
  swift_beginAccess();
  sub_2208115E0(a1, v1 + v12);
  swift_endAccess();
  sub_22046DA2C(v1 + 16, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_22081164C(v1 + v12, v6, sub_22046EAA0);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_22088506C();
    if (v13(v6, 1, v7) != 1)
    {
      sub_2207EFBA8(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_2208856AC();
  sub_2207EFBA8(a1);
  (*(v8 + 8))(v11, v7);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_22081046C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = sub_22088A58C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + 16), *(Strong + 40));
    sub_22088565C();
    __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
    sub_22088569C();
    __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
    sub_22088567C();
    sub_220888F7C();

    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;

    v13 = sub_220888D9C();
    sub_220888E4C();
  }

  else
  {
    sub_220811404();
    *v9 = swift_allocError();
    (*(v6 + 104))(v9, *MEMORY[0x277D352E8], v5);
    a2(v9);
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2208106E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  sub_2208114B8(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22081164C(a1, v11, sub_2208114B8);
  v16 = *v11;
  v17 = v11[8];
  v18 = *(v11 + 2);
  v19 = *(v11 + 3);
  sub_22081157C(&v11[*(v8 + 72)], v15);
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;

  v20 = OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fetchedAppLaunchUpsellLastSeenDate;
  swift_beginAccess();
  sub_2208115E0(v15, a2 + v20);
  swift_endAccess();
  v21 = *(a2 + OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fcUserInfo);
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  *(v22 + 24) = a4;
  aBlock[4] = sub_220811644;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220810A4C;
  aBlock[3] = &block_descriptor_50;
  v23 = _Block_copy(aBlock);

  [v21 forceSyncWithCompletion_];
  _Block_release(v23);
  return sub_2207EFBA8(v15);
}

uint64_t sub_220810910(uint64_t a1, void *a2, void (*a3)(void *))
{
  v5 = sub_22088A58C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    *v10 = a2;
    (*(v6 + 104))(v10, *MEMORY[0x277D352E8], v5, v8);
    v11 = a2;
  }

  else
  {
    (*(v6 + 104))(v10, *MEMORY[0x277D352F0], v5, v8);
  }

  a3(v10);
  return (*(v6 + 8))(v10, v5);
}

void sub_220810A4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_220810AC4()
{
  if (*(*v0 + 64))
  {
    return 0;
  }

  else
  {
    return *(*v0 + 56);
  }
}

uint64_t sub_220810ADC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  return sub_22088566C();
}

uint64_t (*sub_220810B34(void *a1))(uint64_t *a1)
{
  v2 = *v1;
  a1[1] = *v1;
  if (*(v2 + 64))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  *a1 = v3;
  return sub_220810B70;
}

uint64_t sub_220810B70(uint64_t *a1)
{
  v1 = a1[1];
  *(v1 + 56) = *a1;
  *(v1 + 64) = 0;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  return sub_22088566C();
}

uint64_t sub_220810BC4()
{
  v1 = *(*v0 + 72);

  return v1;
}

double (*sub_220810C1C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = *(v3 + 80);
  *a1 = *(v3 + 72);
  a1[1] = v4;

  return sub_220810C70;
}

double sub_220810C70(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_220810114(*a1, v2);
  }

  sub_220810114(v3, v2);

  return result;
}

uint64_t sub_220810CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fetchedAppLaunchUpsellLastSeenDate;
  swift_beginAccess();
  return sub_22081164C(v3 + v4, a1, sub_22046EAA0);
}

void (*sub_220810D78(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_22046EAA0(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[4] = v8;
  v10 = *v1;
  v5[5] = v10;
  v11 = OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fetchedAppLaunchUpsellLastSeenDate;
  swift_beginAccess();
  sub_22081164C(v10 + v11, v9, sub_22046EAA0);
  return sub_220810E88;
}

void sub_220810E88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    sub_22081164C(*(*a1 + 32), v4, sub_22046EAA0);
    sub_220810240(v4);
    sub_2207EFBA8(v3);
  }

  else
  {
    sub_220810240(*(*a1 + 32));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t (*sub_220810F34(uint64_t *a1))()
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fcUserInfo;
  a1[2] = *v1;
  a1[3] = v4;
  v5 = [*(v3 + v4) appLaunchUpsellLastShownCampaignID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_22089136C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *a1 = v7;
  a1[1] = v9;
  return sub_220810FC8;
}

uint64_t sub_220810FE0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fcUserInfo) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_22089136C();

  return v6;
}

void sub_22081105C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *(*v6 + OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fcUserInfo);
  if (a2)
  {
    v9 = sub_22089132C();
  }

  else
  {
    v9 = 0;
  }

  [v8 *a6];
}

uint64_t (*sub_2208110E0(uint64_t *a1))()
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI24AppLaunchUpsellDataStore_fcUserInfo;
  a1[2] = *v1;
  a1[3] = v4;
  v5 = [*(v3 + v4) appLaunchUpsellLastPresenterBundleID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_22089136C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *a1 = v7;
  a1[1] = v9;
  return sub_220811174;
}

void sub_220811180(void *a1, char a2, SEL *a3, double a4)
{
  v5 = a1[1];
  v6 = *(a1[2] + a1[3]);
  if (a2)
  {
    if (v5)
    {

      v7 = sub_22089132C();
    }

    else
    {
      v7 = 0;
    }

    [v6 *a3];
  }

  else if (v5)
  {
    v7 = sub_22089132C();

    [v6 *a3];
  }

  else
  {
    v7 = 0;
    [v6 *a3];
  }
}

void sub_220811254(uint64_t a1, uint64_t a2)
{
  sub_220888FBC();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2208113DC;
  *(v6 + 24) = v5;

  v7 = sub_220888D9C();
  sub_220888E4C();
}

unint64_t sub_220811404()
{
  result = qword_27CF5A210;
  if (!qword_27CF5A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A210);
  }

  return result;
}

uint64_t objectdestroy_4Tm_0()
{

  return swift_deallocObject();
}

void sub_2208114B8(uint64_t a1)
{
  if (!qword_28127DE18)
  {
    v1 = MEMORY[0x277D83D88];
    sub_2204A7F58(255, &unk_28127DE20, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    sub_2204A7F58(255, &qword_28127EBE0, MEMORY[0x277D837D0], v1);
    sub_22046EAA0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_28127DE18);
    }
  }
}

uint64_t sub_22081157C(uint64_t a1, uint64_t a2)
{
  sub_22046EAA0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2208115E0(uint64_t a1, uint64_t a2)
{
  sub_22046EAA0(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22081164C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2208116B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_22089158C();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_220811C40(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_22089259C();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_220811C40(uint64_t a1, unint64_t a2)
{
  v2 = sub_22089159C();
  v6 = sub_220811CC0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_220811CC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22089231C();
    if (!v9 || (v10 = v9, v11 = sub_2204A7ECC(v9, 0), v12 = sub_220811E18(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22089144C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22089144C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22089259C();
LABEL_4:

  return sub_22089144C();
}

unint64_t sub_220811E18(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_220812038(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22089153C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22089259C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_220812038(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22089151C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_220812038(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22089155C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223D896D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_2208120B4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {

    v4 = sub_22089132C();
    v5 = sub_22089132C();
    v6 = [v4 fc:v5 numberFollowingString:?];

    if (v6)
    {

      [v6 integerValue];

      return;
    }

    v7 = HIBYTE(a2) & 0xF;
    v8 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_2208116B4(a1, a2, 10);
        goto LABEL_66;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v35[0] = a1;
        v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (a1 == 43)
        {
          if (v7)
          {
            if (--v7)
            {
              v24 = 0;
              v25 = v35 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }

          goto LABEL_74;
        }

        if (a1 != 45)
        {
          if (v7)
          {
            v31 = 0;
            v32 = v35;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

        if (v7)
        {
          if (--v7)
          {
            v16 = 0;
            v17 = v35 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v10 = sub_22089259C();
        }

        v11 = *v10;
        if (v11 == 43)
        {
          if (v8 >= 1)
          {
            v7 = v8 - 1;
            if (v8 != 1)
            {
              v20 = 0;
              if (v10)
              {
                v21 = v10 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_64;
                  }

                  v23 = 10 * v20;
                  if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v20 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    goto LABEL_64;
                  }

                  ++v21;
                  if (!--v7)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_56;
            }

            goto LABEL_64;
          }

          goto LABEL_73;
        }

        if (v11 != 45)
        {
          if (v8)
          {
            v28 = 0;
            if (v10)
            {
              while (1)
              {
                v29 = *v10 - 48;
                if (v29 > 9)
                {
                  goto LABEL_64;
                }

                v30 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  goto LABEL_64;
                }

                v28 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_64;
                }

                ++v10;
                if (!--v8)
                {
                  goto LABEL_56;
                }
              }
            }

            goto LABEL_56;
          }

LABEL_64:
          LOBYTE(v7) = 1;
          goto LABEL_65;
        }

        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v13 = v10 + 1;
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_64;
                }

                v15 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v15 - v14;
                if (__OFSUB__(v15, v14))
                {
                  goto LABEL_64;
                }

                ++v13;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_56:
            LOBYTE(v7) = 0;
LABEL_65:
            v36 = v7;
LABEL_66:

            return;
          }

          goto LABEL_64;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      return;
    }
  }
}