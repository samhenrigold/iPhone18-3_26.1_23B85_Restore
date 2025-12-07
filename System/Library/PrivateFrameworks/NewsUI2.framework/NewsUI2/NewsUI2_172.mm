void sub_219A1049C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_219A104F8(uint64_t a1)
{
  sub_219A1049C(0, &qword_280E8FE00, MEMORY[0x277D34450]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_219A10570()
{
  v1 = OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController____lazy_storage___clearButton;
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController____lazy_storage___clearButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController____lazy_storage___clearButton];
  }

  else
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v20[3] = ObjectType;
    v20[0] = v0;
    v7 = v0;
    v8 = sub_219BF53D4();

    if (ObjectType)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v20, ObjectType);
      v10 = *(ObjectType - 8);
      v11 = MEMORY[0x28223BE20](v9);
      v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_219BF78D4();
      (*(v10 + 8))(v13, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v16 = [v15 initWithTitle:v8 style:0 target:v14 action:{sel_clearHistory, v20[0]}];

    swift_unknownObjectRelease();
    v17 = *&v0[v1];
    *&v0[v1] = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_219A10924()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  sub_219BE8664();
  v16 = sub_219BE7BC4();

  sub_218807578(0);
  sub_2186FFA2C(&qword_280E90610, 255, sub_218807578, MEMORY[0x277D33560]);
  sub_219BF6C74();

  sub_219BE8664();
  v17 = sub_219BE7BC4();

  [v1 setContentScrollView:v17 forEdge:15];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v20 = sub_219BF53D4();

  [v1 setTitle_];

  v21 = sub_219BF65B4();
  v22 = [v1 title];
  [v21 setTitle_];

  if ((sub_219BF6564() & 1) == 0)
  {
    v23 = sub_219BF65B4();
    v24 = sub_219A10570();
    [v23 setRightBarButtonItem_];
  }

  v25 = [v1 traitCollection];
  sub_219A13158();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2186FFA2C(&unk_280EBE320, v26, type metadata accessor for HistoryFeedViewController, &unk_219CC0264);
  sub_2186FFA2C(&qword_280EBE318, v27, type metadata accessor for HistoryFeedViewController, &unk_219CC0418);

  sub_219BEEA54();
}

uint64_t sub_219A10D94()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2186FFA2C(&qword_280E92580, 255, MEMORY[0x277D31D00], MEMORY[0x277D31CF8]);
  return sub_219BF1C54();
}

void sub_219A10E8C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_blueprintViewController);

    sub_219BE8664();
    v4 = sub_219BE7BC4();

    [v4 reloadData];
  }
}

void sub_219A11064(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7C14();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25.receiver = v2;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, sel_viewWillAppear_, a1 & 1, v7);
  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    v12 = sub_219BF6C14();

    if (v12)
    {

      sub_219BE8664();
      v13 = sub_219BE7BC4();

      sub_219BF6C34();
    }

    sub_219BE8694();
    sub_219BE20E4();

    if ((v24 & 1) == 0)
    {
      sub_219BE8664();
      v14 = sub_219BE7BC4();

      [v14 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
    }

    swift_getObjectType();
    sub_219BE7544();
    sub_219BE5CC4();
    v24 = sub_219BE5CA4();
    v15 = [v2 title];
    if (v15)
    {
      v23 = v2;
      v16 = v6;
      v17 = v5;
      v18 = v15;
      v19 = sub_219BF5414();
      v21 = v20;

      v5 = v17;
      v6 = v16;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    *v9 = v19;
    v9[1] = v21;
    (*(v6 + 104))(v9, *MEMORY[0x277D6DCB0], v5);
    sub_219BE7C24();
    sub_2186FFA2C(&qword_280EE4E50, 255, MEMORY[0x277D6DCC8], MEMORY[0x277D6DCB8]);
    sub_219BE7514();
    (*(v6 + 8))(v9, v5);

    sub_219A1139C(v22);
  }

  else
  {
    __break(1u);
  }
}

double sub_219A1139C(uint64_t a1)
{
  sub_219BEAE34();
  sub_219BEE674();
  v6 = 0;
  v7 = sub_219BEE664();
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_219A13358(&v4, sub_219149814);

  sub_219BEAE44();
  v1 = sub_219BEE664();
  v6 = 0;
  v7 = v1;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_219A13358(&v4, sub_219149814);

  sub_219BEAE54();
  v2 = sub_219BEE664();
  v6 = 0;
  v7 = v2;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_219A13358(&v4, sub_219149814);

  return result;
}

id sub_219A11558(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        v7 = [v1 title];
        [v6 setTitle_];
      }
    }

    return sub_219BE7884();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A118B4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A11AD8()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200(0);
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = sub_219BE6C74();
  v13 = MEMORY[0x277D6D7C0];
  v10[3] = v12;
  v10[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C64();
  v14 = *MEMORY[0x277D6D9C8];
  v15 = sub_219BE73A4();
  (*(*(v15 - 8) + 104))(&v6[v11], v14, v15);
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219A11DE8()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A11FC4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_2186FFA2C(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_219A1231C(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 reloadData];
}

void sub_219A12388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 48))(ObjectType, v11);
    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v13 = *(*(v3 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 40);
    v14 = swift_getObjectType();
    (*(v13 + 40))(v14, v13);
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E978])
    {
      if (v10 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v10 != *MEMORY[0x277D6E958])
      {
        if (v10 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v15 = sub_219BE7BC4();

          v16 = [v15 collectionViewLayout];

          [v16 invalidateLayout];
          sub_219BE8664();
          v17 = sub_219BE7BC4();

          [v17 reloadData];
        }

        else
        {
          (*(v6 + 8))(v9, v5);
        }
      }
    }
  }
}

uint64_t sub_219A12624()
{
  sub_218985EAC(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985E18(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048(0);
    v12 = &v7[*(v13 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4(0);
    v10 = *(v9 + 48);
    v11 = sub_219BF1584();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
    v12 = v7;
LABEL_5:
    sub_219A13358(v12, type metadata accessor for HistoryFeedGapLocation);
    return 0;
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BE5F84();
  v15 = sub_219BF4FC4();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v1);
  return v15;
}

void sub_219A128B4(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v10[3] = v11;
    v10[4] = sub_2186FFA2C(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v10[5] = v16;
    v10[6] = v18;
    (*(v8 + 104))(v10, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_219A12C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler);
  __swift_project_boxed_opaque_existential_1(v7 + 11, v7[14]);
  sub_218A8AB54();
  v8 = v7[5];
  ObjectType = swift_getObjectType();
  return (*(v8 + 64))(a2, 0, a4, ObjectType, v8);
}

double sub_219A12D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 112));
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_219BDD154();

  return result;
}

uint64_t sub_219A12E94(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

void sub_219A12EFC(uint64_t a1)
{
  v1 = a1;
  v2 = sub_219BF65B4();
  if (v1)
  {
    sub_219399E20();
    v3 = sub_219BF5904();
    v4 = &selRef_setRightBarButtonItems_;
  }

  else
  {
    v3 = sub_219A10570();
    v4 = &selRef_setRightBarButtonItem_;
  }

  v5 = v3;
  [v2 *v4];
}

uint64_t sub_219A130E8(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218A8A03C(a1, v4);
}

void sub_219A13158()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_styler], v13);
  v2 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *(*__swift_project_boxed_opaque_existential_1((*v2 + 16), *(*v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v4 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    v7 = [v0 navigationItem];
    v8 = *v6;
    if (sub_219BED0C4())
    {
      v9 = [objc_opt_self() clearColor];
    }

    else
    {
      v9 = *(*__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    }

    v10 = v9;
    sub_219BEDA04();

    v11 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    sub_219BE8664();
    v12 = sub_219BE7BC4();

    [v12 setBackgroundColor_];
    [v12 setAlwaysBounceVertical_];
    [v12 setContentInset_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A13358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A133C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WebEmbedModule();
    v7 = objc_allocWithZone(v6);
    sub_218718690(v10, &v7[OBJC_IVAR____TtC7NewsUI214WebEmbedModule_resolver]);
    *&v7[OBJC_IVAR____TtC7NewsUI214WebEmbedModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &protocol witness table for WebEmbedModule;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_219A13498()
{
  type metadata accessor for WebEmbedContainerViewController(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280ED2040, &protocol descriptor for WebEmbedStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280ED2048, &protocol descriptor for WebEmbedRouterType, 1);
  sub_219BE2914();
  type metadata accessor for WebEmbedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, qword_280EBFAB0, &protocol descriptor for WebEmbedEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC6108, &protocol descriptor for WebEmbedInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECF830, &protocol descriptor for WebEmbedTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EC2CD8, &protocol descriptor for WebEmbedDataManagerType, 0);
  sub_219BE2914();

  type metadata accessor for NewsAssetURLSchemeHandlerFactory();
  sub_219BE2904();

  type metadata accessor for NewsWebArchiveURLSchemeHandlerFactory();
  sub_219BE2904();

  return result;
}

char *sub_219A1374C(void *a1)
{
  v2 = sub_219BF1664();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A14C10(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED2040, &protocol descriptor for WebEmbedStylerType, 1);
  result = sub_219BE1E34();
  if (!v79)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E966F8, &protocol descriptor for WebEmbedViewLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (!v77)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBFAB0, &protocol descriptor for WebEmbedEventHandlerType, 0);
  result = sub_219BE1E34();
  v10 = v74;
  if (!v74)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v62 = v5;
  v63 = v3;
  v61 = v75;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF3254();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = type metadata accessor for WebEmbedResource(0);
  sub_219BE1E34();
  result = (*(*(v12 - 8) + 48))(v8, 1, v12);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22800, MEMORY[0x277D34380], 1);
  result = sub_219BE1E34();
  if (!v73[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v57 = v11;
  v58 = v10;
  v59 = v2;
  v60 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_27CC22808, &protocolRef_SWFeedConfigurationFactory);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    v56[4] = v56;
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v56[3] = v56;
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v17;
    v25 = *v22;
    v26 = type metadata accessor for WebEmbedStyler(0);
    v71 = v26;
    v72 = &off_282A49630;
    v70[0] = v24;
    v27 = type metadata accessor for WebEmbedViewLayoutAttributesFactory();
    v68 = v27;
    v69 = &off_282A3C440;
    v67[0] = v25;
    v28 = type metadata accessor for WebEmbedContainerViewController(0);
    v29 = objc_allocWithZone(v28);
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v56[2] = v56;
    v31 = MEMORY[0x28223BE20](v30);
    v33 = (v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33, v31);
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
    v56[1] = v56;
    v36 = MEMORY[0x28223BE20](v35);
    v38 = (v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38, v36);
    v40 = *v33;
    v41 = *v38;
    v66[3] = v26;
    v66[4] = &off_282A49630;
    v65[4] = &off_282A3C440;
    v66[0] = v40;
    v65[3] = v27;
    v65[0] = v41;
    v42 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_embedLocation;
    v44 = v62;
    v43 = v63;
    v45 = v59;
    (*(v63 + 104))(v62, *MEMORY[0x277D33428], v59);
    v46 = sub_219BF1654();
    (*(v43 + 8))(v44, v45);
    *&v29[v42] = v46;
    sub_218718690(v66, &v29[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_styler]);
    sub_218718690(v65, &v29[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_layoutAttributesFactory]);
    v47 = &v29[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_eventHandler];
    v48 = v57;
    v50 = v60;
    v49 = v61;
    *v47 = v58;
    *(v47 + 1) = v49;
    *&v29[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController] = v48;
    sub_219097244(v50, &v29[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource]);
    sub_218718690(v73, &v29[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedDataSourceService]);
    *&v29[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_feedConfigurationFactory] = v13;
    v64.receiver = v29;
    v64.super_class = v28;
    swift_unknownObjectRetain();
    v51 = v48;
    swift_unknownObjectRetain();
    v52 = objc_msgSendSuper2(&v64, sel_initWithNibName_bundle_, 0, 0);
    *(*(v52 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_eventHandler) + 24) = &off_282A8D5E8;
    swift_unknownObjectWeakAssign();
    v53 = *(v52 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController);
    v54 = v52;
    v55 = v53;
    sub_219BF31D4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v73);
    sub_218DF8804(v50);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v76);
    __swift_destroy_boxed_opaque_existential_1(v78);
    return v54;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_219A13F74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_219A14C10(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for WebEmbedResource(0);
  sub_219BE1E34();
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = type metadata accessor for WebEmbedStyler(0);
    v11 = swift_allocObject();
    result = sub_2190972A8(v7, v11 + OBJC_IVAR____TtC7NewsUI214WebEmbedStyler_resource);
    a2[3] = v10;
    a2[4] = &off_282A49630;
    *a2 = v11;
  }

  return result;
}

uint64_t sub_219A140A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WebEmbedRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A58A50;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219A14160(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebEmbedContainerViewController(0);
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_219A141E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC6108, &protocol descriptor for WebEmbedInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED2048, &protocol descriptor for WebEmbedRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF830, &protocol descriptor for WebEmbedTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_219A1495C(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A6FDB8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219A14488@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC2CD8, &protocol descriptor for WebEmbedDataManagerType, 0);
  result = sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for WebEmbedInteractor();
    v4 = swift_allocObject();
    v4[3] = 0;
    result = swift_unknownObjectWeakInit();
    v4[4] = v5;
    v4[5] = v6;
    *a2 = v4;
    a2[1] = &off_282A9E698;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A14540@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WebEmbedTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A77528;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A145C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WebEmbedDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_282A6A000;
  return result;
}

void *sub_219A14668(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void *a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2, a3, 1);
  result = sub_219BE1E34();
  if (v14[3])
  {
    v10 = a4(0);
    v11 = objc_allocWithZone(v10);
    sub_218718690(v14, v11 + *a5);
    v13.receiver = v11;
    v13.super_class = v10;
    v12 = objc_msgSendSuper2(&v13, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219A14748(void *a1, void *a2)
{
  v4 = sub_219BF5154();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NewsAssetURLSchemeHandlerFactory();
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    sub_219BF5144();
    sub_219A14BB8();
    sub_219BF7894();
    v10 = *(v5 + 8);
    v10(v7, v4);
    v11 = sub_219BF53D4();

    [a1 registerFactory:v9 forScheme:v11];

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for NewsWebArchiveURLSchemeHandlerFactory();
    v12 = sub_219BE1E24();
    if (v12)
    {
      v13 = v12;
      sub_219BF5134();
      sub_219BF7894();
      v10(v7, v4);
      v14 = sub_219BF53D4();

      [a1 registerFactory:v13 forScheme:v14];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_219A1495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for WebEmbedRouter();
  v34[3] = v9;
  v34[4] = &off_282A58A50;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_282A77528;
  v31[0] = a4;
  type metadata accessor for WebEmbedEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_282A58A50;
  v27 = &off_282A77528;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v28, (v10 + 6));
  sub_2186CB1F0(&v25, (v10 + 11));
  *(a1 + 24) = &off_282A6FDB0;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

unint64_t sub_219A14BB8()
{
  result = qword_280E8FCC8;
  if (!qword_280E8FCC8)
  {
    sub_219BF5154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FCC8);
  }

  return result;
}

void sub_219A14C10(uint64_t a1)
{
  if (!qword_27CC227F0)
  {
    type metadata accessor for WebEmbedResource(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC227F0);
    }
  }
}

uint64_t type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier(uint64_t a1)
{
  result = qword_27CC22810;
  if (!qword_27CC22810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A14CDC(uint64_t a1)
{
  result = type metadata accessor for SharedWithYouFeedRefreshResult(319);
  if (v2 <= 0x3F)
  {
    result = sub_219A14D60();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_219A14D60()
{
  result = qword_27CC15C38;
  if (!qword_27CC15C38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC15C38);
  }

  return result;
}

uint64_t sub_219A14DC4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v55 = a3;
  v56 = a2;
  v4 = sub_219BE6DF4();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A15A20(0, &qword_27CC1DA28, MEMORY[0x277D6DF88]);
  v54 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v46 - v8);
  sub_219682348(0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_219A15A20(0, &qword_27CC104F8, MEMORY[0x277D6EC60]);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  sub_218F93AE4(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SharedWithYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  sub_218C87E5C(v16);
  sub_218C40594(0);
  v21 = v20;
  v22 = *(v20 - 8);
  if ((*(v22 + 48))(v16, 1, v20) == 1)
  {
    sub_219A15B84(v16, sub_218F93AE4);
LABEL_4:
    sub_219A15B14();
    *v9 = swift_allocError();
    v26 = v54;
    (*(v7 + 104))(v9, *MEMORY[0x277D6DF68], v54);
    v56(v9);
    return (*(v7 + 8))(v9, v26);
  }

  sub_219BE6934();
  (*(v22 + 8))(v16, v21);
  v23 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
  v24 = (*(*(v23 - 8) + 48))(v19, 1, v23);
  v25 = sub_219A15B84(v19, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  if (v24 == 1)
  {
    goto LABEL_4;
  }

  MEMORY[0x28223BE20](v25);
  v44 = v47;
  v28 = sub_218F91E58(sub_219A15B68, v43);
  v29 = sub_219A15990(&qword_27CC1DA38, sub_218C40594, MEMORY[0x277D6D720]);
  v30 = sub_219A15990(&qword_27CC1DA40, sub_218C40594, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v28, v21, v29, v30);
  v31 = type metadata accessor for SharedWithYouFeedModel(0);
  v32 = sub_219A15990(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
  v33 = sub_219A15990(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
  v47 = v31;
  sub_219BEB2D4();
  v34 = sub_219462998();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for SharedWithYouFeedServiceConfig(0);
  sub_219A15990(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);
  v35 = sub_219BEEFC4();

  v36 = 0;
  if (v35)
  {
    v36 = sub_219BEDC74();
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v57 = v35;
  v60 = v36;
  v37 = v49;
  sub_219BEB2C4();
  v38 = sub_21885AB78(v34);
  v40 = v50;
  v39 = v51;
  v41 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277D6D868], v52, v38);
  v42 = sub_219A15990(&qword_27CC203C0, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C19014);
  v44 = v32;
  v45 = v33;
  v43[0] = v33;
  v43[1] = v42;
  sub_219BE85E4();
  (*(v39 + 8))(v40, v41);
  v56(v9);
  (*(v7 + 8))(v9, v54);
  return (*(v48 + 8))(v13, v37);
}

uint64_t sub_219A15520@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v4 = type metadata accessor for SharedWithYouFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for SharedWithYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40594(0);
  v18 = v17;
  sub_219BE6934();
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    v19 = *(v18 - 8);
    v20 = v34;
    (*(v19 + 16))(v34, a1, v18);
  }

  else
  {
    sub_218AC3514(v16, v13);
    v32 = v6;
    v21 = v33;
    v22 = *v33;
    v24 = *v13;
    v23 = *(v13 + 1);
    v25 = *(v7 + 20);
    v26 = sub_219BED8D4();
    (*(*(v26 - 8) + 16))(&v10[v25], &v13[v25], v26);
    *v10 = v24;
    *(v10 + 1) = v23;
    *&v10[*(v7 + 24)] = v22;
    refreshed = type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier(0);
    __swift_project_boxed_opaque_existential_1((v21 + *(refreshed + 20)), *(v21 + *(refreshed + 20) + 24));
    v28 = v32;
    sub_218DED464(v10, v32);
    v29 = *(type metadata accessor for SharedWithYouFeedRefreshResult(0) + 20);

    v20 = v34;
    sub_21934DF3C(v28, v21 + v29, v34);
    sub_219A15B84(v28, type metadata accessor for SharedWithYouFeedGroup);
    sub_219A15B84(v10, type metadata accessor for ArticleListSharedWithYouFeedGroup);
    sub_219A15B84(v13, type metadata accessor for ArticleListSharedWithYouFeedGroup);
    v19 = *(v18 - 8);
  }

  return (*(v19 + 56))(v20, 0, 1, v18);
}

uint64_t sub_219A15894(uint64_t a1)
{
  v2 = sub_219A15990(&qword_27CC20778, type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier, &unk_219CC04F4);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_219A15990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219A15A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_219A15990(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    v8[3] = sub_219A15990(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_219A15B14()
{
  result = qword_27CC22828;
  if (!qword_27CC22828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22828);
  }

  return result;
}

uint64_t sub_219A15B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219A15BF8()
{
  result = qword_27CC22830;
  if (!qword_27CC22830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22830);
  }

  return result;
}

uint64_t sub_219A15C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v48 = a2;
  v55 = a1;
  v4 = *v3;
  v50 = v3;
  v51 = v4;
  sub_21880B928(0);
  v47 = v5;
  v59 = *(v5 - 8);
  v49 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TodayPrewarmResult(0);
  v44 = *(v7 - 8);
  v60 = *(v44 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBD34();
  v57 = v13;
  v52 = *(v13 - 8);
  v14 = v52;
  v45 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BDB184();
  v53 = *(v43 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x28223BE20](v43);
  v58 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  sub_219BDBD24();
  v42 = v20;
  v56 = v16;
  sub_219BDB104();
  (*(v14 + 8))(v16, v13);
  sub_2187D9028();
  (*(v10 + 104))(v12, *MEMORY[0x277D851A8], v9);
  v21 = sub_219BF66E4();
  (*(v10 + 8))(v12, v9);
  v22 = v54;
  sub_219A1C6B0(v55, v54, type metadata accessor for TodayPrewarmResult);
  v23 = *(v44 + 80);
  v24 = swift_allocObject();
  v40 = type metadata accessor for TodayPrewarmResult;
  sub_219A1CDEC(v22, v24 + ((v23 + 16) & ~v23), type metadata accessor for TodayPrewarmResult);
  type metadata accessor for TodayFeedServiceConfig(0);
  v44 = sub_219BE31D4();

  v25 = v53;
  v26 = v43;
  (*(v53 + 16))(v58, v20, v43);
  v27 = v59;
  v29 = v46;
  v28 = v47;
  (*(v59 + 16))(v46, v48, v47);
  v30 = v52;
  (*(v52 + 16))(v56, v41, v57);
  sub_219A1C6B0(v55, v22, type metadata accessor for TodayPrewarmResult);
  v31 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v32 = (v17 + *(v27 + 80) + v31) & ~*(v27 + 80);
  v33 = (v49 + *(v30 + 80) + v32) & ~*(v30 + 80);
  v34 = (v45 + v23 + v33) & ~v23;
  v35 = swift_allocObject();
  v36 = *(v25 + 32);
  v37 = v26;
  v36(v35 + v31, v58, v26);
  (*(v59 + 32))(v35 + v32, v29, v28);
  (*(v52 + 32))(v35 + v33, v56, v57);
  sub_219A1CDEC(v54, v35 + v34, v40);
  v38 = sub_219BE2E54();
  sub_219BE2F94();

  return (*(v53 + 8))(v42, v37);
}

uint64_t sub_219A16284(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_219BDBD24();
  (*(v3 + 16))(v5, v8, v2);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v3 + 32))(v10 + v9, v5, v2);
  v11 = a1;
  sub_219BDD264();

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_219A16420(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v34 = a3;
  v35 = v7;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    sub_219A19A7C(v17, type metadata accessor for TodayModel);
    v27 = v4[5];
    ObjectType = swift_getObjectType();
    return (*(v27 + 64))(a1, a2, ObjectType, v27);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v30 = a1[3];
      v31 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v30);
      MEMORY[0x21CEC0B20](0, v30, v31);
      v25 = type metadata accessor for TodayModel;
      v26 = v17;
    }

    else
    {

      sub_2186EA920(0);
      v33 = *(v19 + 48);
      v20 = sub_219BDBD24();
      v32 = &v32;
      MEMORY[0x28223BE20](v20);
      *(&v32 - 4) = v4;
      *(&v32 - 3) = a1;
      v21 = v34;
      *(&v32 - 2) = a2;
      *(&v32 - 1) = v21;
      type metadata accessor for TodayExpandResult(0);
      sub_219BE3204();
      (*(v9 + 16))(v11, v14, v8);
      v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v23 = swift_allocObject();
      (*(v9 + 32))(v23 + v22, v11, v8);
      v24 = sub_219BE2E54();
      sub_219BE2F94();

      (*(v9 + 8))(v14, v8);
      v25 = type metadata accessor for TodayGapLocation;
      v26 = &v17[v33];
    }

    return sub_219A19A7C(v26, v25);
  }
}

uint64_t sub_219A167AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  sub_218FBA648(0);
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x28223BE20](v7);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayFeedGroup(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDBD34();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDB184();
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD24();
  v54 = v20;
  sub_219BDB104();
  (*(v15 + 8))(v17, v14);
  v21 = *(a1 + 16);
  v22 = type metadata accessor for TodayFeedServiceConfig(0);
  v23 = sub_2187E1450(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  v51 = v22;
  v52 = v21;
  v50 = v23;
  v24 = sub_219BEF3E4();
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v49 + 88);
    v27 = *(v11 + 80);
    v43 = v24;
    v28 = v24 + ((v27 + 32) & ~v27);
    v48 = *(v11 + 72);
    v49 = v26;
    v29 = v46;
    ++v47;
    while (1)
    {
      sub_219A1C6B0(v28, v13, type metadata accessor for TodayFeedGroup);
      sub_219BEF3D4();
      v34 = v53;
      sub_219BEE7B4();

      v35 = sub_219BF0C14();
      (*v47)(v34, v29);
      v36 = sub_218829720();
      if (!*(v35 + 16))
      {
        break;
      }

      v38 = sub_21870F700(v36, v37);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        goto LABEL_9;
      }

      v30 = *(v35 + 56);
      v31 = sub_219BEDFD4();
      v32 = v6;
      v33 = *(v31 - 8);
      (*(v33 + 16))(v32, v30 + *(v33 + 72) * v38, v31);

      (*(v33 + 56))(v32, 0, 1, v31);
      v6 = v32;
      v29 = v46;
LABEL_4:
      sub_2192B518C(v13, v54, v6);
      sub_219A1CD7C(v6, &qword_280E91DB0, MEMORY[0x277D31F08]);
      sub_219A19A7C(v13, type metadata accessor for TodayFeedGroup);
      v28 += v48;
      if (!--v25)
      {
        goto LABEL_10;
      }
    }

LABEL_9:

    v41 = sub_219BEDFD4();
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    goto LABEL_4;
  }

LABEL_10:

  return (*(v44 + 8))(v54, v45);
}

uint64_t sub_219A16D64(uint64_t a1)
{
  v2 = v1;
  sub_219A199D4(0, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for TodayRouteModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  ObjectType = swift_getObjectType();
  sub_2196F5644(a1, ObjectType, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_219A1CD7C(v6, qword_280ED9010, type metadata accessor for TodayRouteModel);
    return 0;
  }

  else
  {
    sub_219A1CDEC(v6, v10, type metadata accessor for TodayRouteModel);
    __swift_project_boxed_opaque_existential_1(v2 + 6, v2[9]);
    v14 = sub_218F1DEA0(v10);
    sub_219A19A7C(v10, type metadata accessor for TodayRouteModel);
    return v14;
  }
}

void *sub_219A16F5C(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v3 = type metadata accessor for EngagementAction(0);
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = v4;
  v65 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v56 - v6;
  v8 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v56 - v10;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v67 = sub_219BE3794();
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDBD64();
  v59 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - v19;
  v21 = sub_219BE3514();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE39E4();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_219A1CD7C(v20, &unk_280EE6660, MEMORY[0x277D31550]);
    v25 = v69;
  }

  else
  {
    v56 = v22;
    v26 = *(v22 + 32);
    v60 = v24;
    v62 = v21;
    v26(v24, v20, v21);
    v27 = sub_219BE39A4();
    if (v28)
    {
      v57 = v28;
      v58 = v27;
    }

    else
    {
      sub_219BDBD54();
      v58 = sub_219BDBD44();
      v57 = v29;
      (*(v59 + 8))(v17, v15);
    }

    v30 = v61;
    v31 = v66;
    v61 = a2;
    sub_219BE39C4();
    v32 = v30;
    v33 = *(v30 + 48);
    v34 = v67;
    v35 = v33(v13, 1, v67);
    v36 = v56;
    v37 = v3;
    if (v35 == 1)
    {
      (*(v32 + 104))(v31, *MEMORY[0x277D31670], v34);
      v38 = v33(v13, 1, v34);
      v39 = v32;
      if (v38 != 1)
      {
        sub_219A1CD7C(v13, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v32 + 32))(v31, v13, v34);
      v39 = v32;
    }

    v40 = sub_219BE39D4();
    v42 = v41;
    v43 = v68;
    sub_219BE39B4();
    (*(v36 + 16))(v7, v60, v62);
    v44 = v37[6];
    v45 = sub_219BDB954();
    (*(*(v45 - 8) + 16))(&v7[v44], v70, v45);
    v46 = v66;
    (*(v39 + 16))(&v7[v37[7]], v66, v34);
    v47 = MEMORY[0x277D318F8];
    sub_219A1CBA8(v43, &v7[v37[9]], &qword_280EE6510, MEMORY[0x277D318F8]);
    v48 = &v7[v37[5]];
    v49 = v57;
    *v48 = v58;
    v48[1] = v49;
    v50 = &v7[v37[8]];
    *v50 = v40;
    v50[1] = v42;
    v25 = v69;
    v51 = v65;
    sub_219A1C6B0(v7, v65, type metadata accessor for EngagementAction);
    v52 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v53 = swift_allocObject();
    sub_219A1CDEC(v51, v53 + v52, type metadata accessor for EngagementAction);
    sub_219BDD154();

    sub_219A19A7C(v7, type metadata accessor for EngagementAction);
    sub_219A1CD7C(v68, &qword_280EE6510, v47);
    (*(v39 + 8))(v46, v67);
    (*(v36 + 8))(v60, v62);
  }

  v54 = __swift_project_boxed_opaque_existential_1((v25 + 48), *(v25 + 72));
  __swift_project_boxed_opaque_existential_1((*v54 + 24), *(*v54 + 48));
  sub_2186CFDE4(0, &qword_280EE5700, MEMORY[0x277D6D840]);
  result = sub_219BE1E34();
  if (v72)
  {
    sub_2186CB1F0(&v71, v73);
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    sub_219BE6DC4();
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A17764(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v59 = sub_219BDBD34();
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v2;
  MEMORY[0x28223BE20](v3);
  v60 = &v47 - v4;
  v5 = type metadata accessor for EngagementPresentation(0);
  v52 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v53 = v6;
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v47 - v8;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_219BE3794();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBD64();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE39A4();
  if (v21)
  {
    v22 = v21;
    v49 = v20;
  }

  else
  {
    sub_219BDBD54();
    v49 = sub_219BDBD44();
    v22 = v23;
    (*(v17 + 8))(v19, v16);
  }

  sub_219BE39C4();
  v24 = *(v13 + 48);
  v25 = v12;
  if (v24(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, *MEMORY[0x277D31670], v12);
    if (v24(v11, 1, v12) != 1)
    {
      sub_219A1CD7C(v11, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v47 = v13;
  v48 = v15;
  v26 = sub_219BE39D4();
  v28 = v27;
  v29 = sub_219BE3514();
  v30 = v50;
  (*(*(v29 - 8) + 16))(v50, v51, v29);
  (*(v13 + 16))(v30 + v5[6], v15, v25);
  v31 = v5[8];
  v32 = sub_219BE3C04();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  v33 = (v30 + v5[5]);
  *v33 = v49;
  v33[1] = v22;
  v34 = (v30 + v5[7]);
  *v34 = v26;
  v34[1] = v28;
  v35 = *(v56 + 88);
  v36 = v60;
  sub_219BDBD24();
  v56 = *(v35 + 32);
  v37 = v54;
  sub_219A1C6B0(v30, v54, type metadata accessor for EngagementPresentation);
  v38 = v55;
  v39 = v57;
  v40 = v59;
  (*(v55 + 16))(v57, v36, v59);
  v41 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v42 = (v53 + *(v38 + 80) + v41) & ~*(v38 + 80);
  v43 = v58 + v42 + 7;
  v58 = v25;
  v44 = v43 & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  sub_219A1CDEC(v37, v45 + v41, type metadata accessor for EngagementPresentation);
  (*(v38 + 32))(v45 + v42, v39, v40);
  *(v45 + v44) = v35;
  swift_unknownObjectRetain();
  sub_219BDD154();

  (*(v38 + 8))(v60, v40);
  sub_219A19A7C(v30, type metadata accessor for EngagementPresentation);
  return (*(v47 + 8))(v48, v58);
}

uint64_t sub_219A17DB8(uint64_t a1)
{
  v2 = type metadata accessor for EngagementDismissal(0);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v8 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v52 - v10;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  v63 = sub_219BE3794();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDBD64();
  v56 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v8;
  v19 = a1;
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v18);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v52 - v21;
  v23 = sub_219BE3514();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE39E4();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_219A1CD7C(v22, &unk_280EE6660, MEMORY[0x277D31550]);
  }

  v28 = *(v24 + 32);
  v57 = v26;
  v28(v26, v22, v23);
  v29 = sub_219BE39A4();
  v55 = v4;
  if (v30)
  {
    v53 = v30;
    v54 = v29;
  }

  else
  {
    sub_219BDBD54();
    v31 = sub_219BDBD44();
    v53 = v32;
    v54 = v31;
    (*(v56 + 8))(v17, v15);
  }

  v33 = v63;
  v56 = v19;
  sub_219BE39C4();
  v34 = v58;
  v35 = *(v58 + 48);
  v36 = v35(v13, 1, v33);
  v37 = v64;
  if (v36 == 1)
  {
    (*(v34 + 104))(v64, *MEMORY[0x277D31670], v33);
    v38 = v35(v13, 1, v33);
    v39 = v33;
    if (v38 != 1)
    {
      sub_219A1CD7C(v13, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v34 + 32))(v64, v13, v33);
    v39 = v33;
  }

  v40 = sub_219BE39D4();
  v42 = v41;
  v43 = v59;
  sub_219BE39B4();
  (*(v24 + 16))(v7, v57, v23);
  v44 = v60;
  (*(v34 + 16))(&v7[v60[6]], v37, v39);
  v45 = MEMORY[0x277D318F8];
  sub_219A1CBA8(v43, &v7[v44[8]], &qword_280EE6510, MEMORY[0x277D318F8]);
  v46 = &v7[v44[5]];
  v47 = v53;
  *v46 = v54;
  *(v46 + 1) = v47;
  v48 = &v7[v44[7]];
  *v48 = v40;
  v48[1] = v42;
  v49 = v62;
  sub_219A1C6B0(v7, v62, type metadata accessor for EngagementDismissal);
  v50 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v51 = swift_allocObject();
  sub_219A1CDEC(v49, v51 + v50, type metadata accessor for EngagementDismissal);
  sub_219BDD154();

  sub_219A19A7C(v7, type metadata accessor for EngagementDismissal);
  sub_219A1CD7C(v43, &qword_280EE6510, v45);
  (*(v34 + 8))(v64, v63);
  return (*(v24 + 8))(v57, v23);
}

void sub_219A18494(uint64_t a1)
{
  v2 = sub_219BDBD34();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  sub_219A199D4(0, qword_280EC88A0, type metadata accessor for EngagementPresentation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for EngagementPresentation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;

  sub_21912FF50(v17, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219A1CD7C(v9, qword_280EC88A0, type metadata accessor for EngagementPresentation);
    if (qword_280EE5F08 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    __swift_project_value_buffer(v18, qword_280F62520);

    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315138;
      v23 = sub_219BE39F4();
      v24 = MEMORY[0x21CECC6D0](a1, v23);
      v26 = sub_2186D1058(v24, v25, &v41);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2186C1000, v19, v20, "requestEnqueuedImpression: Failed to create engagement presentation from options: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x21CECF960](v22, -1, -1);
      MEMORY[0x21CECF960](v21, -1, -1);
    }
  }

  else
  {
    v36 = type metadata accessor for EngagementPresentation;
    sub_219A1CDEC(v9, v16, type metadata accessor for EngagementPresentation);
    v27 = *(v38 + 88);
    v28 = v6;
    v37 = v6;
    sub_219BDBD24();
    v38 = *(v27 + 32);
    sub_219A1C6B0(v16, v13, type metadata accessor for EngagementPresentation);
    v29 = v39;
    v30 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v40;
    (*(v39 + 16))(v30, v28, v40);
    v32 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v33 = (v12 + *(v29 + 80) + v32) & ~*(v29 + 80);
    v34 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_219A1CDEC(v13, v35 + v32, v36);
    (*(v29 + 32))(v35 + v33, v30, v31);
    *(v35 + v34) = v27;
    swift_unknownObjectRetain();
    sub_219BDD154();

    (*(v29 + 8))(v37, v31);
    sub_219A19A7C(v16, type metadata accessor for EngagementPresentation);
  }
}

void sub_219A18974(void *a1)
{
  if (([a1 isBeingDismissed] & 1) == 0)
  {
    if (qword_280EE93E0 != -1)
    {
      swift_once();
    }

    sub_2187E1450(qword_280ED4780, v3, type metadata accessor for TodayEventHandler, &unk_219CC06F4);
    sub_219BDC7D4();
    v4 = *v11;
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4(0);
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D839F8];
    *(v5 + 16) = xmmword_219C09BA0;
    v7 = MEMORY[0x277D83A80];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v4;
    sub_219BF6214();
    sub_219BE5314("Dismissing Continue Reading prompt due to user scrolling - dismissal delay : %.1f seconds", v10);

    sub_218718690(v1 + 48, v11);
    v8 = swift_allocObject();
    sub_2186CB1F0(v11, v8 + 16);
    *(v8 + 56) = a1;
    v9 = a1;
    sub_219BE1B14();
  }
}

uint64_t sub_219A18B74(uint64_t a1)
{
  sub_2193A4C80(0);
  sub_219BE3204();
  v1 = sub_219BE2E54();
  type metadata accessor for TodayFeedServiceConfig(0);
  v2 = sub_219BE2F74();

  return v2;
}

void sub_219A18C20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a6;
  v97 = a5;
  v102 = a4;
  v103 = a3;
  v100 = a1;
  v7 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  v83 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v79 - v11;
  sub_218FBA648(0);
  v82 = v13;
  v80 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218811810(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v89 = v15;
  v87 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v106 = &v79 - v16;
  sub_218A1AC00(0);
  v88 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v105 = v20;
  v96 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v95 = v21;
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDB184();
  v94 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v93 = v23;
  v101 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &qword_280EE9C40, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v79 - v25;
  v27 = sub_219BDBD34();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a2 + 88);
  v99 = *v100;
  v100 = v31;
  sub_219BEDDD4();
  v32 = *(v28 + 48);
  v33 = v32(v26, 1, v27);
  v86 = v12;
  v98 = v22;
  if (v33 == 1)
  {
    sub_219BDBBD4();
    if (v32(v26, 1, v27) != 1)
    {
      sub_219A1CD7C(v26, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);
  }

  LODWORD(v97) = sub_219BDBC14();
  (*(v28 + 8))(v30, v27);
  v34 = v100;
  v35 = v94;
  v90 = *(v94 + 16);
  v36 = v101;
  v90(v101, v103, v104);
  v37 = *(v35 + 80);
  v38 = (v37 + 24) & ~v37;
  v91 = v38 + v93;
  v92 = v38;
  v93 = v37 | 7;
  v39 = swift_allocObject();
  *(v39 + 16) = v99;
  v94 = *(v35 + 32);
  v40 = v39 + v38;
  v41 = v36;
  v42 = v36;
  v43 = v104;
  (v94)(v40, v41, v104);

  sub_219BDD264();

  v44 = swift_allocObject();
  *(v44 + 24) = v34[49];
  swift_unknownObjectWeakInit();
  v90(v42, v103, v43);
  v45 = v96;
  v46 = *(v96 + 16);
  v47 = v98;
  v48 = v105;
  v103 = v96 + 16;
  v90 = v46;
  v46(v98, v102, v105);
  v49 = (v91 + *(v45 + 80)) & ~*(v45 + 80);
  v50 = v49 + v95;
  v51 = swift_allocObject();
  *(v51 + 16) = v44;
  (v94)(v51 + v92, v101, v104);
  v52 = v51 + v49;
  v53 = v48;
  v54 = v47;
  v55 = v102;
  (*(v45 + 32))(v52, v54, v53);
  *(v51 + v50) = v97 & 1;

  sub_219BE3494();

  sub_2187E1450(&qword_280EE3730, 255, sub_21880B928, MEMORY[0x277D6EC70]);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v107[0] == v107[6])
  {
    sub_219BDD264();
    return;
  }

  v90(v54, v55, v53);
  sub_2187E1450(&qword_280EE3738, 255, sub_21880B928, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  v56 = *(v88 + 36);
  sub_219BF5E84();
  v57 = v89;
  if (*&v19[v56] == v107[0])
  {
LABEL_9:
    sub_219A19A7C(v19, sub_218A1AC00);
    v58 = NewsCoreUserDefaults();
    v59 = [v58 BOOLForKey_];

    if ((v59 & 1) == 0)
    {
      type metadata accessor for TodayFeedServiceConfig(0);
      sub_2187E1450(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
      sub_219BEF3D4();
      v60 = v79;
      sub_219BEE7B4();

      v61 = v82;
      v62 = sub_219BF0C24();
      (*(v80 + 8))(v60, v61);
      if (*(v62 + 16))
      {
        v63 = sub_219BEDFD4();
        v64 = *(v63 - 8);
        v65 = v86;
        (*(v64 + 16))(v86, v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v63);

        (*(v64 + 56))(v65, 0, 1, v63);
      }

      else
      {

        v74 = sub_219BEDFD4();
        v65 = v86;
        (*(*(v74 - 8) + 56))(v86, 1, 1, v74);
      }

      v75 = MEMORY[0x277D31F08];
      v76 = v85;
      sub_219A1CBA8(v65, v85, &qword_280E91DB0, MEMORY[0x277D31F08]);
      v77 = (*(v83 + 80) + 24) & ~*(v83 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = v99;
      sub_219A1CC28(v76, v78 + v77);

      sub_219BDD264();

      sub_219A1CD7C(v65, &qword_280E91DB0, v75);
    }

    return;
  }

  v66 = (v87 + 16);
  v67 = (v87 + 8);
  while (1)
  {
    v68 = sub_219BF5EC4();
    v69 = v106;
    (*v66)(v106);
    v68(v107, 0);
    sub_219BF5E94();
    sub_219BE6934();
    if (((v107[0] >> 58) & 0x3C | (LODWORD(v107[0]) >> 1) & 3) != 1)
    {
      (*v67)(v69, v57);

      goto LABEL_13;
    }

    v70 = type metadata accessor for CuratedTodayFeedGroup(0);
    v71 = (swift_projectBox() + *(v70 + 20));
    if (*v71 == 0x69726F7453706F74 && v71[1] == 0xEA00000000007365)
    {
      break;
    }

    v73 = sub_219BF78F4();
    (*v67)(v106, v57);

    if (v73)
    {
      goto LABEL_24;
    }

LABEL_13:
    sub_219BF5E84();
    if (*&v19[v56] == v107[0])
    {
      goto LABEL_9;
    }
  }

  (*v67)(v106, v57);

LABEL_24:
  sub_219A19A7C(v19, sub_218A1AC00);
}

uint64_t sub_219A19964()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_219A199D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A19A7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A19B08(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v2 = sub_219BDBD34();
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x28223BE20](v2);
  v74 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v3;
  MEMORY[0x28223BE20](v4);
  v77 = &v64 - v5;
  v6 = type metadata accessor for EngagementPresentation(0);
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  MEMORY[0x28223BE20](v6);
  v69 = v8;
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v64 - v10;
  v11 = sub_219BE3514();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v84 = &v64 - v16;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v14);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v64 - v18;
  v20 = sub_219BE3794();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v14);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v79 = &v64 - v28;
  sub_219BE39E4();
  v66 = sub_219BE39A4();
  v30 = v29;
  sub_219BE39C4();
  v31 = v21[6];
  v32 = v31(v19, 1, v20);
  v80 = v21;
  v81 = v20;
  v78 = v13;
  if (v32 == 1)
  {
    v33 = v21[13];
    v34 = v23;
    v33(v23, *MEMORY[0x277D31670], v20);
    if (v31(v19, 1, v20) != 1)
    {
      sub_219A1CD7C(v19, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    v35 = v21[4];
    v34 = v23;
    v35(v23, v19, v20);
  }

  v36 = sub_219BE39D4();
  v38 = v37;
  v39 = v84;
  sub_219BE39B4();
  v40 = v79;
  sub_219A1CBA8(v79, v26, &unk_280EE6660, MEMORY[0x277D31550]);
  v42 = v82;
  v41 = v83;
  if ((*(v82 + 48))(v26, 1, v83) == 1)
  {

    sub_219A1CD7C(v39, &qword_280EE6510, MEMORY[0x277D318F8]);
    (v80[1])(v34, v81);
    sub_219A1CD7C(v40, &unk_280EE6660, MEMORY[0x277D31550]);
    v40 = v26;
  }

  else
  {
    v43 = v78;
    (*(v42 + 32))(v78, v26, v41);
    v44 = v34;
    if (v30)
    {
      v45 = v43;
      v46 = v73;
      (*(v42 + 16))(v73, v45, v41);
      v47 = v67;
      (v80[2])(v46 + v67[6], v34, v81);
      v48 = v47[8];
      v65 = MEMORY[0x277D318F8];
      sub_219A1CBA8(v84, v46 + v48, &qword_280EE6510, MEMORY[0x277D318F8]);
      v49 = (v46 + v47[5]);
      *v49 = v66;
      v49[1] = v30;
      v50 = (v46 + v47[7]);
      *v50 = v36;
      v50[1] = v38;
      v51 = *(v71 + 88);
      v52 = v77;
      sub_219BDBD24();
      v71 = *(v51 + 32);
      v53 = v70;
      sub_219A1C6B0(v46, v70, type metadata accessor for EngagementPresentation);
      v54 = v74;
      v55 = v75;
      v56 = v76;
      (*(v75 + 16))(v74, v52, v76);
      v57 = (*(v68 + 80) + 16) & ~*(v68 + 80);
      v58 = (v69 + *(v55 + 80) + v57) & ~*(v55 + 80);
      v59 = &v72[v58 + 7] & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      v72 = v44;
      v61 = v60;
      sub_219A1CDEC(v53, v60 + v57, type metadata accessor for EngagementPresentation);
      v62 = v61 + v58;
      v40 = v79;
      (*(v55 + 32))(v62, v54, v56);
      *(v61 + v59) = v51;
      swift_unknownObjectRetain();
      sub_219BDD154();

      (*(v55 + 8))(v77, v56);
      sub_219A19A7C(v46, type metadata accessor for EngagementPresentation);
      (*(v82 + 8))(v78, v83);
      sub_219A1CD7C(v84, &qword_280EE6510, v65);
      (v80[1])(v72, v81);
    }

    else
    {

      (*(v42 + 8))(v43, v41);
      sub_219A1CD7C(v84, &qword_280EE6510, MEMORY[0x277D318F8]);
      (v80[1])(v34, v81);
    }
  }

  return sub_219A1CD7C(v40, &unk_280EE6660, MEMORY[0x277D31550]);
}

void sub_219A1A39C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    v7 = swift_getObjectType();
    v8 = sub_2187E1450(&qword_280ECFA70, 255, type metadata accessor for TodayViewController, &unk_219CA346C);
    (*(v6 + 24))(a2, v8, a1, v7, v6);
    swift_unknownObjectRelease();
  }

  v9 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    v11 = swift_getObjectType();
    v12 = sub_2187E1450(&qword_280ECFA70, 255, type metadata accessor for TodayViewController, &unk_219CA346C);
    (*(v10 + 24))(a2, v12, a1, v11, v10);
    swift_unknownObjectRelease();
  }

  v13 = sub_2187E1450(&qword_280ECFA70, 255, type metadata accessor for TodayViewController, &unk_219CA346C);
  v14 = MEMORY[0x21CEBCBD0](ObjectType, v13);
  if (v14)
  {
    v15 = v14;
    swift_getObjectType();
    sub_219BE9114();
  }

  if ((sub_219BED0C4() & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v5 + 8);
    v17 = swift_getObjectType();
    LOBYTE(v16) = (*(v16 + 48))(a2, v13, v17, v16);
    swift_unknownObjectRelease();
    if ((v16 & 1) == 0)
    {
      sub_219791074(1);
    }
  }
}

uint64_t sub_219A1A5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v72 = a1;
  v67 = sub_219BDBD34();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v3;
  MEMORY[0x28223BE20](v4);
  v66 = &v56 - v5;
  v6 = type metadata accessor for EngagementPresentation(0);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  MEMORY[0x28223BE20](v6);
  v60 = v8;
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v10;
  v11 = sub_219BE3514();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  v68 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v56 - v15;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v13);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - v17;
  v19 = sub_219BE3794();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v13);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  sub_219BE39E4();
  v57 = sub_219BE39A4();
  v30 = v29;
  sub_219BE39C4();
  v31 = *(v20 + 48);
  if (v31(v18, 1, v19) == 1)
  {
    (*(v20 + 104))(v22, *MEMORY[0x277D31670], v19);
    if (v31(v18, 1, v19) != 1)
    {
      sub_219A1CD7C(v18, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
  }

  v69 = v22;
  v32 = sub_219BE39D4();
  v34 = v33;
  v35 = v70;
  sub_219BE39B4();
  sub_219A1CBA8(v28, v25, &unk_280EE6660, MEMORY[0x277D31550]);
  v36 = v73;
  v37 = v74;
  if ((*(v73 + 48))(v25, 1, v74) == 1)
  {

    sub_219A1CD7C(v25, &unk_280EE6660, MEMORY[0x277D31550]);
    v38 = v72;
    goto LABEL_13;
  }

  v56 = v32;
  v39 = v68;
  (*(v36 + 32))(v68, v25, v37);
  v38 = v72;
  if (v72)
  {
    if (v30)
    {
      v40 = v63;
      (*(v73 + 16))(v63, v68, v74);
      v41 = v58;
      (*(v20 + 16))(v40 + v58[6], v69, v19);
      sub_219A1CBA8(v35, v40 + v41[8], &qword_280EE6510, MEMORY[0x277D318F8]);
      v42 = (v40 + v41[5]);
      v43 = v56;
      *v42 = v57;
      v42[1] = v30;
      v44 = (v40 + v41[7]);
      *v44 = v43;
      v44[1] = v34;
      v57 = *(v71 + 88);
      v45 = v57;
      v46 = v66;
      sub_219BDBD24();
      v58 = *(v45 + 32);
      v47 = v61;
      sub_219A1C6B0(v40, v61, type metadata accessor for EngagementPresentation);
      v48 = v64;
      (*(v64 + 16))(v65, v46, v67);
      v49 = (*(v59 + 80) + 16) & ~*(v59 + 80);
      v50 = (v60 + *(v48 + 80) + v49) & ~*(v48 + 80);
      v51 = (v62 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      sub_219A1CDEC(v47, v52 + v49, type metadata accessor for EngagementPresentation);
      v53 = v67;
      (*(v48 + 32))(v52 + v50, v65, v67);
      *(v52 + v51) = v57;
      v38 = v72;
      swift_unknownObjectRetain();
      sub_219BDD154();
      v35 = v70;

      (*(v48 + 8))(v66, v53);
      sub_219A19A7C(v40, type metadata accessor for EngagementPresentation);
      (*(v73 + 8))(v68, v74);
      goto LABEL_13;
    }

    (*(v73 + 8))(v68, v74);
  }

  else
  {
    (*(v36 + 8))(v39, v37);
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_219A1A39C(v38, Strong);
    swift_unknownObjectRelease();
  }

  sub_219A1CD7C(v35, &qword_280EE6510, MEMORY[0x277D318F8]);
  (*(v20 + 8))(v69, v19);
  return sub_219A1CD7C(v28, &unk_280EE6660, MEMORY[0x277D31550]);
}

uint64_t sub_219A1AE58(uint64_t a1, uint64_t a2)
{
  sub_219A199D4(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE6DF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21978B8F4(result, a1, v13);
    (*(v11 + 16))(v6, v13, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    sub_218809CC0(v6, v9);
    sub_219A1CD7C(v6, &unk_280EE56F0, MEMORY[0x277D6D878]);
    v15 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    (*(v15 + 72))(a1, v9, ObjectType, v15);
    swift_unknownObjectRelease();
    sub_219A19A7C(v9, type metadata accessor for TodayExpandContext);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_219A1B0CC(uint64_t a1)
{
  sub_219A199D4(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = sub_219BE6DF4();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_218809CC0(v4, v7);
    sub_219A1CD7C(v4, &unk_280EE56F0, MEMORY[0x277D6D878]);
    v10 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 96))(v7, ObjectType, v10);
    swift_unknownObjectRelease();
    return sub_219A19A7C(v7, type metadata accessor for TodayExpandContext);
  }

  return result;
}

void sub_219A1B288(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = a3;
  v113 = a1;
  v95 = type metadata accessor for EngagementAction(0);
  v96 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v98 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v4;
  MEMORY[0x28223BE20](v5);
  v100 = &v92 - v6;
  v7 = sub_219BDB954();
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x28223BE20](v7);
  v94 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v92 - v10;
  v101 = type metadata accessor for EngagementDismissal(0);
  v102 = *(v101 - 8);
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  v103 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v104 = &v92 - v13;
  v14 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v114 = &v92 - v16;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v14);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v92 - v18;
  v115 = sub_219BE3794();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v116 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BDBD64();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v14);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v92 - v26;
  v28 = sub_219BE3514();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE39E4();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_219A1CD7C(v27, &unk_280EE6660, MEMORY[0x277D31550]);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v32 = qword_280F616D8;
    v33 = sub_219BF61F4();
    sub_2186F20D4(0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_219C09BA0;
    sub_219A199D4(0, &qword_27CC22838, MEMORY[0x277D31800], MEMORY[0x277D83940]);
    *(v34 + 56) = v35;
    *(v34 + 64) = sub_219A1C0E4();
    *(v34 + 32) = a2;

    sub_219BE5314("TodayEventHandler: didReceiveDialogAction missing placement for options=%{public}@", 82, 2, &dword_2186C1000, v32, v33, v34);
  }

  else
  {
    v105 = v29;
    v36 = *(v29 + 32);
    v109 = v28;
    v36(v31, v27, v28);
    v93 = sub_219BE39A4();
    v111 = v37;
    v108 = v31;
    if (!v37)
    {
      sub_219BDBD54();
      v93 = sub_219BDBD44();
      v111 = v38;
      (*(v22 + 8))(v24, v21);
    }

    v39 = v114;
    sub_219BE39C4();
    v40 = v112;
    v41 = *(v112 + 48);
    v42 = v115;
    v43 = v41(v19, 1, v115);
    v44 = v113;
    if (v43 == 1)
    {
      (*(v40 + 104))(v116, *MEMORY[0x277D31670], v42);
      if (v41(v19, 1, v42) != 1)
      {
        sub_219A1CD7C(v19, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v40 + 32))(v116, v19, v42);
    }

    v45 = sub_219BE39D4();
    v47 = v46;
    sub_219BE39B4();
    if ([v44 style] == 2)
    {
      v48 = v39;
      v49 = v116;
      v50 = v109;
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v51 = qword_280F616D8;
      v52 = sub_219BF6214();
      v53 = sub_219BE5314("TodayEventHandler: didReceiveDialogAction with dismissal", 56, 2, &dword_2186C1000, v51, v52, MEMORY[0x277D84F90]);
      v54 = v104;
      (*(v105 + 16))(v104, v108, v50, v53);
      v55 = v101;
      (*(v40 + 16))(v54 + *(v101 + 24), v49, v42);
      sub_219A1CBA8(v48, v54 + v55[8], &qword_280EE6510, MEMORY[0x277D318F8]);
      v56 = (v54 + v55[5]);
      v57 = v111;
      *v56 = v93;
      v56[1] = v57;
      v58 = (v54 + v55[7]);
      *v58 = v45;
      v58[1] = v47;
      v59 = v45;
      v60 = v47;
      v61 = v103;
      sub_219A1C6B0(v54, v103, type metadata accessor for EngagementDismissal);
      v62 = (*(v102 + 80) + 16) & ~*(v102 + 80);
      v63 = swift_allocObject() + v62;
      v64 = v61;
      v47 = v60;
      v45 = v59;
      sub_219A1CDEC(v64, v63, type metadata accessor for EngagementDismissal);

      v42 = v115;

      sub_219BDD154();

      v65 = v54;
      v39 = v114;
      sub_219A19A7C(v65, type metadata accessor for EngagementDismissal);
      v44 = v113;
    }

    if ([v44 style])
    {

      sub_219A1CD7C(v39, &qword_280EE6510, MEMORY[0x277D318F8]);
      (*(v40 + 8))(v116, v42);
      (*(v105 + 8))(v108, v109);
    }

    else
    {
      v66 = [v44 deepLink];
      v67 = v116;
      v68 = v109;
      v69 = v105;
      if (v66)
      {
        v70 = v45;
        v113 = v47;
        v71 = v94;
        v72 = v66;
        sub_219BDB8B4();

        v73 = v99;
        (*(v106 + 32))(v99, v71, v107);
        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v74 = qword_280F616D8;
        sub_2186F20D4(0);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_219C09BA0;
        v76 = sub_219BDB804();
        v78 = v77;
        *(v75 + 56) = MEMORY[0x277D837D0];
        *(v75 + 64) = sub_2186FC3BC();
        *(v75 + 32) = v76;
        *(v75 + 40) = v78;
        v79 = sub_219BF6214();
        sub_219BE5314("TodayEventHandler: didReceiveDialogAction with deepLink=%{public}@", 66, 2, &dword_2186C1000, v74, v79, v75);

        v80 = v100;
        (*(v69 + 16))(v100, v108, v68);
        v81 = v95;
        (*(v106 + 16))(v80 + *(v95 + 24), v73, v107);
        v82 = v112;
        (*(v112 + 16))(v80 + v81[7], v116, v42);
        sub_219A1CBA8(v39, v80 + v81[9], &qword_280EE6510, MEMORY[0x277D318F8]);
        v83 = (v80 + v81[5]);
        v85 = v110;
        v84 = v111;
        *v83 = v93;
        v83[1] = v84;
        v86 = (v80 + v81[8]);
        v87 = v113;
        *v86 = v70;
        v86[1] = v87;
        v88 = v98;
        sub_219A1C6B0(v80, v98, type metadata accessor for EngagementAction);
        v89 = (*(v96 + 80) + 16) & ~*(v96 + 80);
        v90 = swift_allocObject();
        sub_219A1CDEC(v88, v90 + v89, type metadata accessor for EngagementAction);
        sub_219BDD154();

        v91 = __swift_project_boxed_opaque_existential_1((v85 + 48), *(v85 + 72));
        __swift_project_boxed_opaque_existential_1((*v91 + 24), *(*v91 + 48));
        sub_2186CFDE4(0, &qword_280EE5700, MEMORY[0x277D6D840]);
        sub_219BE1E34();
        if (v118)
        {
          sub_2186CB1F0(&v117, v119);
          __swift_project_boxed_opaque_existential_1(v119, v119[3]);
          sub_219BE6DC4();
          sub_219A19A7C(v80, type metadata accessor for EngagementAction);
          (*(v106 + 8))(v73, v107);
          sub_219A1CD7C(v39, &qword_280EE6510, MEMORY[0x277D318F8]);
          (*(v82 + 8))(v116, v115);
          (*(v69 + 8))(v108, v109);
          __swift_destroy_boxed_opaque_existential_1(v119);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        sub_219A1CD7C(v39, &qword_280EE6510, MEMORY[0x277D318F8]);
        (*(v40 + 8))(v67, v42);
        (*(v69 + 8))(v108, v68);
      }
    }
  }
}

unint64_t sub_219A1C0E4()
{
  result = qword_27CC22840;
  if (!qword_27CC22840)
  {
    sub_219A199D4(255, &qword_27CC22838, MEMORY[0x277D31800], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22840);
  }

  return result;
}

uint64_t objectdestroy_65Tm_1()
{
  v1 = (type metadata accessor for EngagementAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BE3514();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  v5 = sub_219BDB954();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[9];
  v7 = sub_219BE3794();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  v8 = v1[11];
  v9 = sub_219BE3C04();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_219A1C35C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_219A1C3E4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EngagementPresentation(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_219BDBD34() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v2 + v8, v9);
}

uint64_t sub_219A1C4F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v5 + 56))(v2, v4, v3, ObjectType, v5);
}

uint64_t sub_219A1C5F0(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_21881DBDC(0);
  return sub_219A15C74(a1, a1 + *(v5 + 48), v1 + v4);
}

uint64_t sub_219A1C6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219A1C77C(void *a1, uint64_t a2)
{
  v5 = *(sub_219BDB184() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_21880B928(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(sub_219BDBD34() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for TodayPrewarmResult(0) - 8);
  sub_219A18C20(a1, a2, v2 + v6, v2 + v9, v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)));
}

uint64_t objectdestroy_93Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  a2(*(v2 + 16));
  (*(v5 + 8))(v2 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_219A1CA2C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_219A1CAB8()
{
  v1 = *(sub_219BDB184() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_21880B928(0);
  v5 = *(v4 - 8);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));
  v8 = *(v7 + *(v5 + 64));

  return sub_2192B41DC(v6, v0 + v2, v7, v8);
}

uint64_t sub_219A1CBA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219A199D4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219A1CC28(uint64_t a1, uint64_t a2)
{
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A1CCBC(uint64_t a1)
{
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);

  return sub_2192B4834(a1);
}

uint64_t sub_219A1CD7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219A199D4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A1CDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A1CE78()
{
  v0 = CACurrentMediaTime();
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Will rebuild offline feed", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  swift_getAssociatedTypeWitness();
  sub_219BE3204();
  v4 = sub_219BE2E54();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_219BF5B14();
  swift_getTupleTypeMetadata2();
  sub_219BE2F84();

  v5 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(255);
  swift_getTupleTypeMetadata2();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v0;
  v6 = sub_219BE2E54();
  sub_219BE2F94();

  v7 = sub_219BE2E54();
  v8 = sub_219BE2FE4();

  return v8;
}

uint64_t sub_219A1D1C0(uint64_t *a1)
{
  v1 = *(*a1 + 104);
  v2 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10 - v6;
  v11 = 1;
  (*(v1 + 24))(&v11, v2, v1, v5);
  v8 = sub_219BEFE64();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_219A1D374(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v2 = *a2;
  v3 = *(*a2 + 112);
  v24 = *(*a2 + 88);
  v25 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v23 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v19 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_219BF0F94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  sub_219BF0F44();
  v11 = v2[12];
  v20 = v2[15];
  sub_219BEDF14();
  (*(v8 + 8))(v10, v7);
  v12 = v21;
  (*(v5 + 16))(v21, v26, AssociatedTypeWitness);
  v13 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v2[10];
  *(v14 + 3) = v24;
  *(v14 + 4) = v11;
  *(v14 + 5) = v2[13];
  v15 = v20;
  *(v14 + 6) = v25;
  *(v14 + 7) = v15;
  *(v14 + 8) = v2[16];
  (*(v5 + 32))(&v14[v13], v12, AssociatedTypeWitness);
  v16 = sub_219BE2E54();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_219BF5B14();
  swift_getTupleTypeMetadata2();
  v17 = sub_219BE2F74();

  return v17;
}

double sub_219A1D748@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a5@<X8>)
{
  v7 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_219BF5B14();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  *a5 = v7;
  (*(*(AssociatedTypeWitness - 8) + 16))(&a5[v9], a2, AssociatedTypeWitness);

  return result;
}

uint64_t sub_219A1D8AC(uint64_t a1, void *a2)
{
  v29 = *a2;
  v30 = a1;
  v32 = v29[14];
  v31 = v29[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_219BF5B14();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v5 = (&v27 - v4);
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  (*(v13 + 16))(v5, v30, TupleTypeMetadata2, v10);
  v14 = *v5;
  v15 = *(TupleTypeMetadata2 + 48);
  v16 = *(v6 + 32);
  v17 = v5 + v15;
  v18 = v12;
  v16(v12, v17, AssociatedTypeWitness);
  v30 = sub_219A1DCD0(v14);

  v19 = v28;
  (*(v6 + 16))(v28, v18, AssociatedTypeWitness);
  v20 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v22 = v29;
  v23 = v29;
  *(v21 + 2) = v29[10];
  *(v21 + 3) = v31;
  *(v21 + 4) = v23[12];
  *(v21 + 5) = v22[13];
  *(v21 + 6) = v32;
  *(v21 + 7) = v22[15];
  *(v21 + 8) = v22[16];
  v16(&v21[v20], v19, AssociatedTypeWitness);
  v24 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(255);
  swift_getTupleTypeMetadata2();
  v25 = sub_219BE2F74();

  (*(v6 + 8))(v18, AssociatedTypeWitness);
  return v25;
}

uint64_t sub_219A1DCD0(uint64_t a1)
{
  v2 = v1;
  v3 = CACurrentMediaTime();
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "Will process groups", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v7);
  type metadata accessor for OfflineFeedManifest(0);
  sub_219BE3204();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v3;

  v9 = sub_219BE2E54();
  sub_219BE2F74();

  v10 = sub_219BE2E54();
  v11 = sub_219BE2FD4();

  return v11;
}

uint64_t sub_219A1DEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  type metadata accessor for OfflineFeedManifest(255);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  sub_2187536A4(a1, a5);
  return (*(*(AssociatedTypeWitness - 8) + 16))(a5 + v9, a2, AssociatedTypeWitness);
}

void sub_219A1DF88(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v4 = *a2;
  v37 = a1;
  v38 = v4;
  v5 = type metadata accessor for OfflineFeedManifest(255);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v35 - v9;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  v20 = sub_219BE5414();
  v21 = sub_219BF6214();
  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_6;
  }

  v36 = v10;
  v22 = swift_slowAlloc();
  *v22 = 134349056;
  sub_219BF5CD4();
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  *(v22 + 4) = v23;
  _os_log_impl(&dword_2186C1000, v20, v21, "Did rebuild offline feed, time=%{public}lldms", v22, 0xCu);
  MEMORY[0x21CECF960](v22, -1, -1);
  v10 = v36;
LABEL_6:

  (*(v8 + 16))(v10, v37, TupleTypeMetadata2);
  v24 = *(TupleTypeMetadata2 + 48);
  sub_2187538EC(v10, v19);
  v25 = v40;
  (*(v40 + 32))(v13, &v10[v24], AssociatedTypeWitness);
  v26 = sub_219BF2514();
  v27 = v25;
  if (!v26 || (v28 = v26, v29 = [v26 contentManifest], v28, (v30 = v29) == 0))
  {
    v30 = [objc_opt_self() empty];
  }

  OfflineFeedManifest.init(_:)(v30, v16);
  sub_2187382CC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v31 = *(v39 + 72);
  v32 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09EC0;
  v34 = v33 + v32;
  sub_2187536A4(v19, v34);
  sub_2187536A4(v16, v34 + v31);
  OfflineFeedManifest.init(_:)(v33, v41);
  sub_219A1EB2C(v16);
  (*(v27 + 8))(v13, AssociatedTypeWitness);
  sub_219A1EB2C(v19);
}

uint64_t sub_219A1E430(uint64_t *a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  sub_2187382CC(0, &unk_280E8F028, sub_218B1A68C, MEMORY[0x277D83940]);
  v6 = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_219A1ECB8();

  v9 = sub_2194F86DC(a2, a1 + v4, v6, AssociatedTypeWitness, v8);

  return v9;
}

void sub_219A1E600(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_6;
  }

  v7 = swift_slowAlloc();
  *v7 = 134349056;
  sub_219BF5CD4();
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < 9.22337204e18)
  {
    *(v7 + 4) = v8;
    _os_log_impl(&dword_2186C1000, v5, v6, "Did process groups, time=%{public}lldms", v7, 0xCu);
    MEMORY[0x21CECF960](v7, -1, -1);
LABEL_6:

    sub_2187536A4(a1, a2);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_219A1E734(void *a1, uint64_t a2, const char *a3)
{
  v5 = a1;
  oslog = sub_219BE5414();
  v6 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, oslog, v6, a3, v7, 0xCu);
    sub_218962D30(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }
}

uint64_t sub_219A1E858()
{
  v1 = *v0;
  v2 = qword_280EC7460;
  v3 = sub_219BEDA24();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 144));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 152));
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 160));

  v4 = *(*v0 + 176);
  v5 = sub_219BE5434();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_219A1EA28()
{
  sub_219A1E858();

  return swift_deallocClassInstance();
}

uint64_t sub_219A1EB2C(uint64_t a1)
{
  v2 = type metadata accessor for OfflineFeedManifest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_219A1ECB8()
{
  result = qword_27CC22848;
  if (!qword_27CC22848)
  {
    sub_2187382CC(255, &unk_280E8F028, sub_218B1A68C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22848);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 72) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchHomeSectionTitleViewLayoutOptions(uint64_t a1)
{
  result = qword_27CC22850;
  if (!qword_27CC22850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ForYouTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280EB4330;
  if (!qword_280EB4330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A1EF98@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A1F4C8(0, &qword_280E8CC30, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A1F474();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 26;
    v13 = type metadata accessor for ForYouTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A1F200(void *a1, __n128 a2)
{
  v4 = v2;
  sub_219A1F4C8(0, &qword_27CC22860, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A1F474();
  sub_219BF7B44();
  v12[15] = *v4;
  v12[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v3)
  {
    type metadata accessor for ForYouTagFeedGroupConfigData(0);
    v12[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_219A1F3CC(uint64_t a1)
{
  v2 = sub_219A1F474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A1F408(uint64_t a1)
{
  v2 = sub_219A1F474();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219A1F474()
{
  result = qword_280EB4368[0];
  if (!qword_280EB4368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB4368);
  }

  return result;
}

void sub_219A1F4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A1F474();
    v7 = a3(a1, &type metadata for ForYouTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A1F540()
{
  result = qword_27CC22868;
  if (!qword_27CC22868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22868);
  }

  return result;
}

unint64_t sub_219A1F598()
{
  result = qword_280EB4358;
  if (!qword_280EB4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4358);
  }

  return result;
}

unint64_t sub_219A1F5F0()
{
  result = qword_280EB4360;
  if (!qword_280EB4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4360);
  }

  return result;
}

uint64_t sub_219A1F644(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v147 = a3;
  v148 = a2;
  v6 = sub_219BE6DF4();
  v140 = *(v6 - 8);
  v141 = v6;
  MEMORY[0x28223BE20](v6);
  v139 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A20F54(0, &qword_280EE4B28, MEMORY[0x277D6DF88]);
  v145 = *(v8 - 8);
  v146 = v8;
  MEMORY[0x28223BE20](v8);
  v144 = &v121 - v9;
  v137 = type metadata accessor for SearchFeedGapLocation(0);
  MEMORY[0x28223BE20](v137);
  v138 = (&v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = sub_219BF0BD4();
  v136 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v142 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchFeedGroup(0);
  v134 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v121 - v16;
  MEMORY[0x28223BE20](v18);
  v149 = &v121 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v121 - v21;
  sub_219A20F54(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v24 = v23;
  v143 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v153 = &v121 - v25;
  sub_218AF3BCC(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A20F54(0, &qword_280EE5890, MEMORY[0x277D6D710]);
  v30 = v29;
  v31 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v151 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v121 - v34;
  v152 = v4;
  sub_219BEB244();
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_219A210E4(v28, sub_218AF3BCC);
LABEL_5:
    v39 = v144;
    v38 = v145;
    v40 = v146;
    (*(v145 + 104))(v144, *MEMORY[0x277D6DF80], v146);
    v148(v39);
    return (*(v38 + 8))(v39, v40);
  }

  (*(v31 + 32))(v35, v28, v30);
  v36 = sub_218E66BE8(v35);
  if (v37)
  {
    (*(v31 + 8))(v35, v30);
    goto LABEL_5;
  }

  v122 = v36;
  v124 = v35;
  v125 = v31;
  v126 = v30;
  v42 = *(v143 + 16);
  v123 = a1;
  v43 = v24;
  v42(v153, a1, v24);
  v44 = v152;
  v45 = *(v152 + 16);
  v46 = v45 >> 61;
  if ((v45 >> 61) > 1)
  {
    v47 = v150;
    v48 = v142;
    if (v46 == 2)
    {
      sub_219536F24(0);
      v77 = swift_projectBox();
      v22 = v149;
      sub_218EDF938(v77, v149);
      __swift_project_boxed_opaque_existential_1((v44 + 80), *(v44 + 104));
      v78 = *(v44 + 72);
      v79 = type metadata accessor for SearchFeedServiceConfig(0);
      v80 = sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);

      v135 = v79;
      v134 = v80;
      sub_219BEE7A4();
      v81 = *(v44 + 32);
      v82 = *(v44 + 56);
      v83 = *(v44 + 64);
      v154 = *(v44 + 24);
      v155 = v81;
      v156 = *(v44 + 40);
      v157 = v82;
      v158 = v83;

      v84 = v48;
      v70 = v151;
      sub_219126E74(v22, v78, v84, &v154, v151);

      (*(v136 + 8))(v84, v47);
      sub_219BEB234();
      v71 = *(v125 + 8);
      v72 = v126;
      v71(v70, v126);
      v85 = swift_allocObject();
      sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v85 + 16) = sub_219BEE874();
      v86 = v138;
      *v138 = v85;
      v87 = *MEMORY[0x277D33090];
      sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
      (*(*(v88 - 8) + 104))(v86, v87, v88);
      swift_storeEnumTagMultiPayload();
      sub_219B51140(v86, v70);
      result = sub_219A210E4(v86, type metadata accessor for SearchFeedGapLocation);
      if (!__OFADD__(v122, 1))
      {
LABEL_19:
        sub_219BEB1F4();
        v71(v70, v72);
        sub_219BEEFF4();
        sub_219BEEFE4();
        v89 = sub_219BEEFC4();

        v90 = 0;
        if (v89)
        {
          v90 = sub_219BEDC74();
        }

        else
        {
          v155 = 0;
          *&v156 = 0;
        }

        v92 = v144;
        v93 = v141;
        v154 = v89;
        *(&v156 + 1) = v90;
        v119 = v153;
        sub_219BEB2C4();

        sub_219A210E4(v22, type metadata accessor for SearchFeedGroup);
        v117 = v145;
        v94 = v140;
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_40;
    }

    if (v46 != 3)
    {
      type metadata accessor for SearchFeedServiceConfig(0);
      sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);

      v91 = sub_219BEE854();
      v92 = v144;
      v94 = v140;
      v93 = v141;
      if (v91)
      {
        v95 = swift_allocObject();
        sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
        swift_allocObject();

        *(v95 + 16) = sub_219BEE874();
        v96 = v138;
        *v138 = v95;
        v97 = *MEMORY[0x277D33068];
        sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
        (*(*(v98 - 8) + 104))(v96, v97, v98);
        swift_storeEnumTagMultiPayload();
        v99 = v151;
        sub_219B51140(v96, v151);
        sub_219A210E4(v96, type metadata accessor for SearchFeedGapLocation);
        sub_219BEB234();
        (*(v125 + 8))(v99, v126);
      }

      else
      {
        sub_219BEB204();
      }

      sub_219BEEFF4();
      sub_219BEEFE4();
      v116 = sub_219BEEFC4();

      v118 = 0;
      if (v116)
      {
        v118 = sub_219BEDC74();
      }

      else
      {
        v155 = 0;
        *&v156 = 0;
      }

      v117 = v145;
      goto LABEL_37;
    }

    v22 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v135 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v17 = v126;
    sub_219BE6944();
    sub_219BEB214();

    v121 = v22;
    v49 = *(v22 + 2);
    v149 = v43;
    if (v49)
    {
      v50 = v48;
      v133 = *(v44 + 72);
      v51 = *(v44 + 32);
      v132 = *(v44 + 24);
      v131 = v51;
      v52 = *(v44 + 48);
      v130 = *(v44 + 40);
      v129 = v52;
      v128 = *(v44 + 56);
      v127 = *(v44 + 64);
      v53 = &v121[(*(v134 + 80) + 32) & ~*(v134 + 80)];
      v134 = *(v134 + 72);
      v54 = (v136 + 8);
      v55 = (v125 + 8);
      do
      {
        sub_218EDF938(v53, v14);
        __swift_project_boxed_opaque_existential_1((v44 + 80), *(v44 + 104));
        type metadata accessor for SearchFeedServiceConfig(0);
        sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
        v44 = v152;
        sub_219BEE7A4();
        v154 = v132;
        v155 = v131;
        *&v156 = v130;
        *(&v156 + 1) = v129;
        v157 = v128;
        v158 = v127;

        v22 = v17;
        v56 = v151;
        sub_219126E74(v14, v133, v50, &v154, v151);
        sub_219A210E4(v14, type metadata accessor for SearchFeedGroup);

        (*v54)(v50, v150);
        sub_219BEB1E4();
        v57 = v56;
        v17 = v22;
        (*v55)(v57, v22);
        v53 += v134;
        --v49;
      }

      while (v49);
    }

    v43 = v149;
    v58 = swift_allocObject();
    sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v58 + 16) = sub_219BEE874();
    v59 = v138;
    *v138 = v58;
    v60 = *MEMORY[0x277D33068];
    sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
    (*(*(v61 - 8) + 104))(v59, v60, v61);
    swift_storeEnumTagMultiPayload();
    v45 = v151;
    sub_219B51140(v59, v151);
    sub_219A210E4(v59, type metadata accessor for SearchFeedGapLocation);
    v46 = *(v121 + 2);
    if (!__OFADD__(v122, v46))
    {
LABEL_27:
      sub_219BEB1F4();
      (*(v125 + 8))(v45, v126);
      sub_219BEEFF4();

      sub_219BEEFE4();
      type metadata accessor for SearchFeedServiceConfig(0);
      sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
      v116 = sub_219BEEFC4();

      v92 = v144;
      v117 = v145;
      v94 = v140;
      v93 = v141;
      v118 = 0;
      if (v116)
      {
        v118 = sub_219BEDC74();
      }

      else
      {
        v155 = 0;
        *&v156 = 0;
      }

LABEL_37:
      v154 = v116;
      *(&v156 + 1) = v118;
      v119 = v153;
      sub_219BEB2C4();

LABEL_38:
      v120 = v139;
      (*(v94 + 104))(v139, *MEMORY[0x277D6D868], v93);
      type metadata accessor for SearchSectionDescriptor(0);
      type metadata accessor for SearchModel(0);
      sub_2186D78E0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
      sub_2186D78E0(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
      sub_219BE85D4();
      (*(v94 + 8))(v120, v93);
      v148(v92);
      (*(v117 + 8))(v92, v146);
      (*(v143 + 8))(v119, v43);
      return (*(v125 + 8))(v124, v126);
    }

    __break(1u);
  }

  if (!v46)
  {
    sub_219536F24(0);
    v62 = swift_projectBox();
    sub_218EDF938(v62, v22);
    __swift_project_boxed_opaque_existential_1((v44 + 80), *(v44 + 104));
    v63 = *(v44 + 72);
    v64 = type metadata accessor for SearchFeedServiceConfig(0);
    v65 = sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);

    v66 = v142;
    v149 = v64;
    v135 = v65;
    sub_219BEE7A4();
    v67 = *(v44 + 32);
    v68 = *(v44 + 56);
    v69 = *(v44 + 64);
    v154 = *(v44 + 24);
    v155 = v67;
    v156 = *(v44 + 40);
    v157 = v68;
    v158 = v69;

    v70 = v151;
    sub_219126E74(v22, v63, v66, &v154, v151);

    (*(v136 + 8))(v66, v150);
    sub_219BEB234();
    v71 = *(v125 + 8);
    v72 = v126;
    v71(v70, v126);
    v73 = swift_allocObject();
    sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v73 + 16) = sub_219BEE874();
    v74 = v138;
    *v138 = v73;
    v75 = *MEMORY[0x277D33090];
    sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
    (*(*(v76 - 8) + 104))(v74, v75, v76);
    swift_storeEnumTagMultiPayload();
    sub_219B51140(v74, v70);
    result = sub_219A210E4(v74, type metadata accessor for SearchFeedGapLocation);
    if (!__OFADD__(v122, 1))
    {
      goto LABEL_19;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v100 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v135 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v101 = v126;
  sub_219BE6944();
  sub_219BEB214();

  v121 = v100;
  v102 = *(v100 + 2);
  v149 = v43;
  v103 = v142;
  if (v102)
  {
    v133 = *(v44 + 72);
    v104 = *(v44 + 32);
    v132 = *(v44 + 24);
    v131 = v104;
    v105 = *(v44 + 48);
    v130 = *(v44 + 40);
    v129 = v105;
    v128 = *(v44 + 56);
    v127 = *(v44 + 64);
    v106 = &v121[(*(v134 + 80) + 32) & ~*(v134 + 80)];
    v134 = *(v134 + 72);
    v107 = (v136 + 8);
    v108 = (v125 + 8);
    do
    {
      sub_218EDF938(v106, v17);
      __swift_project_boxed_opaque_existential_1((v44 + 80), *(v44 + 104));
      type metadata accessor for SearchFeedServiceConfig(0);
      sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
      v44 = v152;
      sub_219BEE7A4();
      v154 = v132;
      v155 = v131;
      *&v156 = v130;
      *(&v156 + 1) = v129;
      v157 = v128;
      v158 = v127;

      v109 = v101;
      v110 = v151;
      sub_219126E74(v17, v133, v103, &v154, v151);
      sub_219A210E4(v17, type metadata accessor for SearchFeedGroup);

      (*v107)(v103, v150);
      sub_219BEB1E4();
      v111 = v110;
      v101 = v109;
      (*v108)(v111, v109);
      v106 += v134;
      --v102;
    }

    while (v102);
  }

  v43 = v149;
  v112 = swift_allocObject();
  sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
  swift_allocObject();

  *(v112 + 16) = sub_219BEE874();
  v113 = v138;
  *v138 = v112;
  v114 = *MEMORY[0x277D33090];
  sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
  (*(*(v115 - 8) + 104))(v113, v114, v115);
  swift_storeEnumTagMultiPayload();
  v45 = v151;
  sub_219B51140(v113, v151);
  result = sub_219A210E4(v113, type metadata accessor for SearchFeedGapLocation);
  if (!__OFADD__(v122, *(v121 + 2)))
  {
    goto LABEL_27;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_219A20E30(uint64_t a1)
{
  v2 = sub_218E15630();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A20E70()
{
  result = qword_27CC22870;
  if (!qword_27CC22870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22870);
  }

  return result;
}

void sub_219A20F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D78E0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_2186D78E0(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219A21048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchFeedServiceConfig(255);
    v7 = sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_219A210E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A21150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219A21198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219A21224()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_219476624(0, &qword_27CC1A888, MEMORY[0x277D33410], MEMORY[0x277D83940]);
  *v3 = v0;
  v3[1] = sub_2194755EC;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x2873746C75736572, 0xE900000000000029, sub_219A21494, v2, v4);
}

double sub_219A21348(uint64_t a1, void *a2)
{
  sub_219476494(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_2193EC1BC(0, sub_219A21D50, v10);

  return result;
}

uint64_t sub_219A2149C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219476624(0, &unk_280E90850, MEMORY[0x277D33410], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_219BF1634();
  v57 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  if ((a2 & 0x100) != 0)
  {
    if (qword_27CC08648 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_22;
  }

  v55 = a1;
  if (a2)
  {
    if (a2 != 1)
    {
      if (qword_27CC08648 != -1)
      {
        swift_once();
      }

      v47 = sub_219BE5434();
      __swift_project_value_buffer(v47, qword_27CCD8BE8);
      v29 = sub_219BE5414();
      v48 = sub_219BF61F4();
      if (os_log_type_enabled(v29, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2186C1000, v29, v48, "ArticleOptionsProvider could not fetch history. No Batch.", v49, 2u);
        v36 = v49;
LABEL_45:
        MEMORY[0x21CECF960](v36, -1, -1);
      }

      goto LABEL_46;
    }

    v52 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v18 = sub_219BF7214();
      v51 = a3;
      if (v18)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v51 = a3;
      if (v18)
      {
LABEL_6:
        v19 = 0;
        v54 = a1 & 0xC000000000000001;
        v20 = (v57 + 48);
        v21 = (v57 + 32);
        a2 = MEMORY[0x277D84F90];
        v22 = v52;
        v53 = v18;
        while (1)
        {
          if (v54)
          {
            MEMORY[0x21CECE0F0](v19, a1, v15);
            v23 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v19 >= *(v22 + 16))
            {
              goto LABEL_49;
            }

            v23 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }
          }

          swift_unknownObjectRetain();
          sub_219BF1624();

          if ((*v20)(v8, 1, v12) == 1)
          {
            sub_2194765B4(v8, &unk_280E90850, MEMORY[0x277D33410]);
          }

          else
          {
            v24 = *v21;
            (*v21)(v56, v8, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_2191FA570(0, *(a2 + 16) + 1, 1, a2);
            }

            v26 = *(a2 + 16);
            v25 = *(a2 + 24);
            if (v26 >= v25 >> 1)
            {
              a2 = sub_2191FA570((v25 > 1), v26 + 1, 1, a2);
            }

            *(a2 + 16) = v26 + 1;
            v24((a2 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v26), v56, v12);
            a1 = v55;
            v22 = v52;
          }

          ++v19;
          if (v23 == v53)
          {
            goto LABEL_56;
          }
        }
      }
    }

LABEL_55:
    a2 = MEMORY[0x277D84F90];
LABEL_56:
    v58 = a2;
    sub_219476494(0);
    return sub_219BF5B64();
  }

  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v38 = sub_219BF7214();
    v51 = a3;
    if (!v38)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = a3;
    if (!v38)
    {
      goto LABEL_55;
    }
  }

  v39 = 0;
  v56 = (a1 & 0xC000000000000001);
  v40 = (v57 + 48);
  v41 = (v57 + 32);
  a2 = MEMORY[0x277D84F90];
  v52 = v17;
  v53 = a1 & 0xFFFFFFFFFFFFFF8;
  v54 = v38;
  while (1)
  {
    if (v56)
    {
      MEMORY[0x21CECE0F0](v39, a1, v15);
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      goto LABEL_32;
    }

    if (v39 >= *(v37 + 16))
    {
      goto LABEL_50;
    }

    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

LABEL_32:
    swift_unknownObjectRetain();
    sub_219BF1624();

    if ((*v40)(v11, 1, v12) == 1)
    {
      sub_2194765B4(v11, &unk_280E90850, MEMORY[0x277D33410]);
    }

    else
    {
      v43 = *v41;
      (*v41)(v17, v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_2191FA570(0, *(a2 + 16) + 1, 1, a2);
      }

      v45 = *(a2 + 16);
      v44 = *(a2 + 24);
      if (v45 >= v44 >> 1)
      {
        a2 = sub_2191FA570((v44 > 1), v45 + 1, 1, a2);
      }

      *(a2 + 16) = v45 + 1;
      v46 = a2 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v45;
      v17 = v52;
      v43(v46, v52, v12);
      a1 = v55;
    }

    v37 = v53;
    ++v39;
    if (v42 == v54)
    {
      goto LABEL_56;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_22:
  v27 = sub_219BE5434();
  __swift_project_value_buffer(v27, qword_27CCD8BE8);
  v28 = a1;
  v29 = sub_219BE5414();
  v30 = a1;
  v31 = sub_219BF61F4();
  sub_218BB6FA0(v30, a2, 1);
  if (os_log_type_enabled(v29, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v30;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_2186C1000, v29, v31, "ArticleOptionsProvider could not fetch history. Error: %@", v32, 0xCu);
    sub_2194765B4(v33, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v33, -1, -1);
    v36 = v32;
    goto LABEL_45;
  }

LABEL_46:

  v58 = MEMORY[0x277D84F90];
  sub_219476494(0);
  return sub_219BF5B64();
}

uint64_t sub_219A21C1C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_219476624(0, &qword_27CC1A888, MEMORY[0x277D33410], MEMORY[0x277D83940]);
  *v3 = v0;
  v3[1] = sub_219476350;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x2873746C75736572, 0xE900000000000029, sub_219A21DD8, v2, v4);
}

uint64_t sub_219A21D50(unint64_t a1, __int16 a2)
{
  sub_219476494(0);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));

  return sub_219A2149C(a1, a2 & 0x1FF, v6);
}

uint64_t sub_219A21E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v78 = a3;
  sub_219A230E0(0, &qword_27CC0FE98, sub_2186EF13C);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v62 - v5;
  v68 = type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs(0);
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A230E0(0, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  v72 = type metadata accessor for SharedWithYouFeedGroupKnobs(0);
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A230E0(0, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v62 - v16;
  sub_219A230E0(0, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v79 = type metadata accessor for SharedWithYouFeedKnobsConfig(0);
  v20 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v69 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v62 - v23;
  sub_219A230E0(0, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v27 = type metadata accessor for SharedWithYouFeedConfig(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_219A23134(a1, v26, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    v32 = sub_219BDBD34();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = *(v27 + 24);
    v34 = sub_219BEE5B4();
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    *&v30[*(v27 + 20)] = MEMORY[0x277D84F90];
    if (v31(v26, 1, v27) != 1)
    {
      sub_219A231A0(v26, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
    }
  }

  else
  {
    sub_219A231FC(v26, v30, type metadata accessor for SharedWithYouFeedConfig);
  }

  v35 = v78;
  sub_219A231FC(v30, v78, type metadata accessor for SharedWithYouFeedConfig);
  v36 = v74;
  sub_219A23134(v74, v19, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
  v37 = *(v20 + 48);
  v38 = v37(v19, 1, v79);
  v39 = v76;
  if (v38 == 1)
  {
    v63 = v37;
    v40 = v77;
    v41 = v72;
    (*(v77 + 56))(v76, 1, 1, v72);
    v42 = v70;
    sub_219A23134(v39, v70, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
    v43 = *(v40 + 48);
    v77 = v40 + 48;
    if (v43(v42, 1, v41) == 1)
    {
      v62 = v43;
      v44 = v65;
      v45 = v68;
      (*(v65 + 56))(v11, 1, 1, v68);
      v46 = v67;
      sub_219A23134(v11, v67, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      v47 = *(v44 + 48);
      v48 = v47(v46, 1, v45);
      v49 = v71;
      if (v48 == 1)
      {
        sub_2186EF13C(0);
        v51 = v64;
        (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
        v52 = v66;
        v53 = v51;
        v54 = v67;
        sub_219BA5644(v53, 0, v66);
        sub_219A231A0(v11, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
        if (v47(v54, 1, v68) != 1)
        {
          sub_219A231A0(v54, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
        }
      }

      else
      {
        sub_219A231A0(v11, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
        v52 = v66;
        sub_219A231FC(v46, v66, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      }

      sub_219A231FC(v52, v49, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      sub_219A231A0(v36, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
      sub_219A231A0(v75, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
      sub_219A231A0(v76, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
      v56 = v62(v42, 1, v72);
      v35 = v78;
      if (v56 != 1)
      {
        sub_219A231A0(v42, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
      }
    }

    else
    {
      sub_219A231A0(v36, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
      sub_219A231A0(v75, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
      sub_219A231A0(v39, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
      v49 = v71;
      sub_219A231FC(v42, v71, type metadata accessor for SharedWithYouFeedGroupKnobs);
    }

    v57 = v69;
    sub_219A231FC(v49, v69, type metadata accessor for SharedWithYouFeedGroupKnobs);
    v58 = v79;
    *(v57 + *(v79 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    v59 = v57;
    v55 = v73;
    sub_219A231FC(v59, v73, type metadata accessor for SharedWithYouFeedKnobsConfig);
    if (v63(v19, 1, v58) != 1)
    {
      sub_219A231A0(v19, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
    }
  }

  else
  {
    sub_219A231A0(v36, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
    sub_219A231A0(v75, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
    v55 = v73;
    sub_219A231FC(v19, v73, type metadata accessor for SharedWithYouFeedKnobsConfig);
  }

  v60 = type metadata accessor for SharedWithYouFeedContentConfig(0);
  return sub_219A231FC(v55, v35 + *(v60 + 20), type metadata accessor for SharedWithYouFeedKnobsConfig);
}

uint64_t sub_219A22998@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_219A230E0(0, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_219A230E0(0, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_219A22FE8(0);
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A23044();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for SharedWithYouFeedConfig(0);
    v18 = 0;
    sub_219A23098(&qword_27CC228A8, type metadata accessor for SharedWithYouFeedConfig, &unk_219C32930);
    sub_219BF7674();
    type metadata accessor for SharedWithYouFeedKnobsConfig(0);
    v17 = 1;
    sub_219A23098(&qword_27CC228B0, type metadata accessor for SharedWithYouFeedKnobsConfig, &unk_219C25C30);
    sub_219BF7674();
    sub_219A21E94(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_219A22C60(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_219A22CC0(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_219A22D24(uint64_t a1)
{
  v2 = sub_219A23044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A22D60(uint64_t a1)
{
  v2 = sub_219A23044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A22E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219A230E0(0, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_219A230E0(0, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_219A23264(a1, &v16 - v11, type metadata accessor for SharedWithYouFeedConfig);
  v13 = type metadata accessor for SharedWithYouFeedConfig(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_219A23264(v3 + *(a2 + 20), v9, type metadata accessor for SharedWithYouFeedKnobsConfig);
  v14 = type metadata accessor for SharedWithYouFeedKnobsConfig(0);
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_219A21E94(v12, v9, a3);
}

void sub_219A22FE8(uint64_t a1)
{
  if (!qword_27CC22898)
  {
    sub_219A23044();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22898);
    }
  }
}

unint64_t sub_219A23044()
{
  result = qword_27CC228A0;
  if (!qword_27CC228A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228A0);
  }

  return result;
}

uint64_t sub_219A23098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219A230E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_219A23134(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219A230E0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219A231A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219A230E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A231FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A23264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219A232E0()
{
  result = qword_27CC228B8;
  if (!qword_27CC228B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228B8);
  }

  return result;
}

unint64_t sub_219A23338()
{
  result = qword_27CC228C0;
  if (!qword_27CC228C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228C0);
  }

  return result;
}

unint64_t sub_219A23390()
{
  result = qword_27CC228C8;
  if (!qword_27CC228C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228C8);
  }

  return result;
}

uint64_t sub_219A2340C(void *a1)
{
  sub_219A23E6C(0, &qword_280E8C238, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A23D58();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2186EC3A4(0);
  sub_219A23ED0(&qword_27CC228D8, sub_2186EC3A4, MEMORY[0x277D31E78]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
    v9[14] = 1;
    sub_219BED8D4();
    sub_219A23ED0(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A2361C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_219BED8D4();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A23E6C(0, &qword_280E8C810, MEMORY[0x277D844C8]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A23D58();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v14 = v13;
  v16 = v25;
  v15 = v26;
  v32 = 0;
  sub_219A23ED0(&qword_27CC228D0, sub_2186EC3A4, MEMORY[0x277D31E80]);
  v17 = v27;
  sub_219BF7734();
  v18 = *(v16 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_219A23ED0(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  sub_219BF7734();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v15);
  sub_219A23DAC(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A23E10(v19);
}

uint64_t sub_219A23A4C(uint64_t a1)
{
  v2 = sub_219A23D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A23A88(uint64_t a1)
{
  v2 = sub_219A23D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A23AF4(uint64_t a1)
{
  v2 = sub_219A23ED0(&qword_280E99A70, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup, &unk_219CC0EAC);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A23B7C(void *a1)
{
  a1[1] = sub_219A23ED0(&qword_280E99A70, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup, &unk_219CC0EAC);
  a1[2] = sub_219A23ED0(&qword_280E99A48, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup, &unk_219CC0F3C);
  result = sub_219A23ED0(&qword_280E99A58, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup, &unk_219CC0F14);
  a1[3] = result;
  return result;
}

uint64_t sub_219A23D00(uint64_t a1)
{
  result = sub_219A23ED0(&qword_27CC10E88, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup, &unk_219CC0E90);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_219A23D58()
{
  result = qword_280E99A88[0];
  if (!qword_280E99A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E99A88);
  }

  return result;
}

uint64_t sub_219A23DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A23E10(uint64_t a1)
{
  v2 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A23E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A23D58();
    v7 = a3(a1, &type metadata for FeaturedIssueArticleMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A23ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219A23F2C()
{
  result = qword_27CC228E0;
  if (!qword_27CC228E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228E0);
  }

  return result;
}

unint64_t sub_219A23F84()
{
  result = qword_280E99A78;
  if (!qword_280E99A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99A78);
  }

  return result;
}

unint64_t sub_219A23FDC()
{
  result = qword_280E99A80;
  if (!qword_280E99A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99A80);
  }

  return result;
}

void sub_219A24030(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF53D4();
  [v2 markArticle:v3 withCompletedListening:0];

  v4 = sub_219BF53D4();
  [v2 markArticle:v4 withLastListened:0];

  v5 = sub_219BF53D4();
  [v2 markArticle:v5 withListeningProgress:0.0];

  v6 = sub_219BF53D4();
  [v2 markArticle:v6 withReadingPositionJSON:0];

  v7 = sub_219BF53D4();
  [v2 markArticle:v7 withRemovedFromAudio:1];
}

uint64_t sub_219A24148(char a1)
{
  v2 = sub_219BEE714();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E12B60(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE704();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0644();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 104);
  v19 = (v10 + 104);
  if (a1)
  {
    v18(v16, *MEMORY[0x277D32EF8], v14);
    if (a1 == 1)
    {
      v20 = MEMORY[0x277D32110];
    }

    else
    {
      v20 = MEMORY[0x277D32118];
    }

    (*v19)(v12, *v20, v9);
    v24 = sub_219BEE734();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  }

  else
  {
    v18(v16, *MEMORY[0x277D32EF0], v14);
    (*v19)(v12, *MEMORY[0x277D32110], v9);
    v21 = *MEMORY[0x277D32140];
    v22 = sub_219BEE734();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v8, v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D32130], v2);
  return sub_219BEE744();
}

unint64_t sub_219A24500()
{
  result = qword_280EBB368;
  if (!qword_280EBB368)
  {
    type metadata accessor for MagazineFeedServiceContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB368);
  }

  return result;
}

uint64_t sub_219A24558(char *a1)
{
  sub_219A24148(*a1);
  type metadata accessor for MagazineFeedServiceContext(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219A245AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 456))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219A245F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219A246B8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v81 = a3;
  v82 = a2;
  sub_219A259C4(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v68 - v5;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v68 - v9;
  MEMORY[0x28223BE20](v10);
  v74 = &v68 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  sub_219A259C4(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v71 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v83 = &v68 - v23;
  MEMORY[0x28223BE20](v24);
  v70 = &v68 - v25;
  MEMORY[0x28223BE20](v26);
  v69 = &v68 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v68 - v32;
  sub_219A259C4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v35 = v34;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v68 - v37;
  v77 = v39;
  v40 = *(v39 + 16);
  v86 = a1;
  v72 = v40;
  v73 = v39 + 16;
  (v40)(v38, a1, v35, v36);
  sub_219BEB214();
  v41 = sub_2198D068C(v17);
  v85 = *(v20 + 48);
  v42 = v85(v17, 1, v19, v41);
  v84 = v20;
  if (v42 == 1)
  {
    sub_219A25AA4(v17, sub_218A2D984);
  }

  else
  {
    (*(v20 + 32))(v33, v17, v19);
    sub_218B0632C();
    sub_219BEB324();
    (*(v20 + 8))(v33, v19);
  }

  sub_219BEB214();
  v43 = *v87;
  sub_2198D09F4(v14, *v87);
  v44 = v85;
  if ((v85)(v14, 1, v19) == 1)
  {
    sub_219A25AA4(v14, sub_218A2D984);
  }

  else
  {
    v45 = v84;
    (*(v84 + 32))(v30, v14, v19);
    sub_218B0632C();
    sub_219BEB324();
    (*(v45 + 8))(v30, v19);
  }

  v46 = v83;
  sub_219BEB214();
  v47 = v74;
  v48 = sub_2198D0D0C(v43, v74);
  v49 = v47;
  v50 = v44(v47, 1, v19, v48);
  v51 = v75;
  if (v50 == 1)
  {
    sub_219A25AA4(v49, sub_218A2D984);
    v52 = v84;
  }

  else
  {
    v52 = v84;
    v53 = v69;
    (*(v84 + 32))(v69, v49, v19);
    sub_218B0632C();
    sub_219BEB324();
    v54 = v53;
    v46 = v83;
    (*(v52 + 8))(v54, v19);
  }

  sub_219BEB214();
  v55 = sub_2198D1190(v51, v43);
  if (v44(v51, 1, v19, v55) == 1)
  {
    sub_219A25AA4(v51, sub_218A2D984);
  }

  else
  {
    v56 = v70;
    (*(v52 + 32))(v70, v51, v19);
    sub_218B0632C();
    sub_219BEB324();
    (*(v52 + 8))(v56, v19);
  }

  sub_219BEB214();
  sub_2198D1458(v43);
  sub_218B0632C();
  sub_219BEB324();
  sub_219BEB214();
  v57 = v76;
  sub_219A25138(v76);
  if ((v85)(v57, 1, v19) == 1)
  {
    sub_219A25AA4(v57, sub_218A2D984);
  }

  else
  {
    v58 = v71;
    (*(v52 + 32))(v71, v57, v19);
    sub_219BEB324();
    (*(v52 + 8))(v58, v19);
  }

  v59 = v78;
  type metadata accessor for FollowingModel(0);
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D5A44(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  if (sub_219BE6E54())
  {
    v60 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218A2DA58(0);
    v62 = *(v61 + 48);
    v72(v59, v38, v35);
    v63 = *MEMORY[0x277D6D868];
    v64 = sub_219BE6DF4();
    (*(*(v64 - 8) + 104))(&v59[v62], v63, v64);
    v60 = MEMORY[0x277D6DF70];
  }

  v66 = v79;
  v65 = v80;
  (*(v79 + 104))(v59, *v60, v80);
  v82(v59);
  (*(v66 + 8))(v59, v65);
  (*(v52 + 8))(v46, v19);
  (*(v77 + 8))(v38, v35);
  return __swift_destroy_boxed_opaque_existential_1(v88);
}

uint64_t sub_219A25138@<X0>(uint64_t a1@<X8>)
{
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A259C4(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  sub_219A259C4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  sub_219BEB354();
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_219A25AA4(v6, sub_218A2D984);
    v12 = 1;
  }

  else
  {
    v13 = (*(v9 + 32))(v11, v6, v8);
    MEMORY[0x28223BE20](v13);
    *&v21[-1] = v1;
    sub_21894D1EC(sub_219A25A84, &v21[-2]);
    v15 = v14;
    sub_219BE6934();
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v22 = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_218950B84(0);
    v17 = v16;
    v18 = sub_2186D5A44(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
    v19 = sub_2186D5A44(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v15, v17, v18, v19);
    type metadata accessor for FollowingModel(0);
    sub_2187490E4();
    sub_2186D5A44(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    sub_219BE6924();
    (*(v9 + 8))(v11, v8);
    v12 = 0;
  }

  return (*(v9 + 56))(a1, v12, 1, v8);
}

double sub_219A25504@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_219BF2CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BF2634();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v30);
  v29 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_218950B84(0);
  v17 = v16;
  sub_219BE5FC4();
  v18 = sub_218F37A90();
  sub_219A25AA4(v15, type metadata accessor for FollowingModel);
  v32 = v18;
  if (v18)
  {
    v19 = a2[1];
    ObjectType = swift_getObjectType();
    v21 = swift_unknownObjectRetain();
    v22 = sub_218E97A64(v21, v19, ObjectType);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(a2 + 52, a2[55]);
    *v8 = *(v22 + 2);
    (*(v6 + 104))(v8, *MEMORY[0x277D33B98], v5);
    swift_unknownObjectRetain();
    sub_219BF4794();
    (*(v6 + 8))(v8, v5);
    v23 = sub_219BF2614();
    (*(v27 + 8))(v11, v28);
    [*(v22 + 2) tagType];
    v24 = *(v32 + 16);
    type metadata accessor for FollowingTagModel();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v22;
    *(v25 + 32) = v23 & 1;
    *v29 = v25;
    swift_storeEnumTagMultiPayload();
    sub_2186D5A44(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);

    sub_219BE5FB4();
  }

  else
  {
    (*(*(v17 - 8) + 16))(v31, a1, v17);
  }

  return result;
}

uint64_t sub_219A258E8(uint64_t a1)
{
  v2 = sub_218B12B3C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A25928()
{
  result = qword_280E98470;
  if (!qword_280E98470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98470);
  }

  return result;
}

void sub_219A259C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel(255);
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D5A44(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219A25AA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TagFeedViewerViewController(uint64_t a1)
{
  result = qword_280EB6360;
  if (!qword_280EB6360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A25B54(uint64_t a1)
{
  sub_21881CCEC(319, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
  if (v1 <= 0x3F)
  {
    sub_21881CCEC(319, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_219A25D28()
{
  v1 = v0;
  sub_219A25E28(v11);
  if (v12)
  {
    v2 = v12;
    sub_2190459F8(v11);
    type metadata accessor for TagFeedViewController();
    sub_219BF6584();

    v3 = v13;
    if (v13)
    {
      v4 = *&v13[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
      swift_unknownObjectRetain();

      if (v4)
      {
        swift_unknownObjectRelease();
        v5 = (v1 + qword_280EB6470);
        v6 = *(v1 + qword_280EB6470);
        if (v6)
        {
          v7 = v5[1];

          v6(v8);
          sub_2187FABEC(v6, v7);
          v9 = *v5;
        }

        else
        {
          v9 = 0;
        }

        v10 = v5[1];
        *v5 = 0;
        v5[1] = 0;
        sub_2187FABEC(v9, v10);
      }
    }
  }

  else
  {
    sub_219A2FF6C(v11, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  }
}

double sub_219A25E28@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_280EB6510);
  v4 = *(v1 + qword_280EB6510 + 8);
  v5 = *(v1 + qword_280EB6510 + 16);
  v6 = *(v1 + qword_280EB6510 + 25);
  if (v6 > 1)
  {
    if (v6 == 2)
    {

      goto LABEL_12;
    }

    if (v6 != 3)
    {
      v13 = v3;

      v4 = v5;
      goto LABEL_12;
    }

    v7 = v3;
LABEL_7:
    v10 = [v7 backingChannel];

    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = [v10 sectionIDs];
    if (!v11)
    {
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    v12 = v11;
    v4 = sub_219BF5924();

    swift_unknownObjectRelease();
LABEL_12:
    v14 = *(v4 + 16);

    if (v14)
    {
      goto LABEL_13;
    }

LABEL_17:
    *(a1 + 64) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (*(v1 + qword_280EB6510 + 25))
  {
    v9 = *(v1 + qword_280EB6510 + 24);
    v7 = v3;
    sub_218CC4CB8(v4, v5, v9);
    v8 = sub_218B083D0(v4, v5, v9);
    goto LABEL_7;
  }

LABEL_13:
  v15 = sub_219BE7DF4();

  sub_219A26504(v15, a1);
  return result;
}

uint64_t sub_219A25FA0()
{
  v20 = type metadata accessor for TagFeedViewerLinkPresentation;
  sub_21881CCEC(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v21 = &v19 - v8;
  v9 = *(v0 + qword_280EB6510);
  v10 = *(v0 + qword_280EB6510 + 8);
  v11 = *(v0 + qword_280EB6510 + 16);
  v12 = *(v0 + qword_280EB6510 + 24);
  v13 = qword_280EB6508;
  v14 = *(v0 + qword_280EB6510 + 25);
  swift_beginAccess();
  sub_219A2FFE4(v0 + v13, v3, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218CC4BB4(v9, v10, v11, v12, v14);

  v16 = sub_219046B48(v6, v3, sub_219A30F14, v15, v9, v10, v11, v12 | (v14 << 8));

  sub_218B09E88(v9, v10, v11, v12, v14);
  sub_219A30058(v3, qword_280EAE4D0, v20);

  if (sub_219A26F3C(v6, v16 & 1))
  {
    sub_219A30058(v6, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
    v17 = sub_219BE9CD4();
    (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  }

  else
  {
    sub_219A300B4(v6, v21);
  }

  return sub_219BE7E44();
}

id sub_219A2626C()
{
  v1 = qword_280EB63E0;
  v2 = *(v0 + qword_280EB63E0);
  v3 = v2;
  if (v2 == 1)
  {
    __swift_project_boxed_opaque_existential_1((v0 + qword_280EB6438), *(v0 + qword_280EB6438 + 24));
    v4 = *(v0 + qword_280EB6510);
    if ([v4 feedConfiguration] == 11)
    {
      v3 = sub_218F77878(v4);
    }

    else
    {
      v3 = 0;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_2190AAF44(v5);
  }

  sub_2190AB1E0(v2);
  return v3;
}

void *sub_219A26334(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    __swift_project_boxed_opaque_existential_1((v2 + qword_280EB6438), *(v2 + qword_280EB6438 + 24));
    v7 = *(v2 + qword_280EB6510);
    v8 = v2;
    v5 = a2();

    v9 = *(v2 + v3);
    *(v8 + v3) = v5;
    v10 = v5;
    sub_2190AAF44(v9);
  }

  sub_2190AB1E0(v4);
  return v5;
}

unint64_t sub_219A263E4()
{
  result = 0;
  v2 = *(v0 + qword_280EB6510);
  v3 = *(v0 + qword_280EB6510 + 8);
  v4 = *(v0 + qword_280EB6510 + 16);
  v5 = *(v0 + qword_280EB6510 + 25);
  if (v5 <= 1)
  {
    if (!*(v0 + qword_280EB6510 + 25))
    {
      return result;
    }

    v7 = *(v0 + qword_280EB6510 + 24);
    v8 = v2;
    sub_218CC4CB8(v3, v4, v7);

    sub_218B083D0(v3, v4, v7);
    return 0;
  }

  if (v5 == 2)
  {
  }

  else
  {
    if (v5 == 3)
    {
      return result;
    }

    v6 = v2;

    v3 = v4;
  }

  if (sub_219BE7DF4() >= *(v3 + 16))
  {

    return 0;
  }

  result = sub_219BE7DF4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v3 + 16))
  {
    v9 = v3 + 16 * result;
    v10 = *(v9 + 32);
    sub_2194B5588(v10, *(v9 + 40));

    return v10;
  }

  __break(1u);
  return result;
}

void sub_219A26504(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + qword_280EB6510;
  v5 = *(v2 + qword_280EB6510);
  v6 = *(v2 + qword_280EB6510 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 25);
  if (v8 <= 1)
  {
    if (*(v4 + 25))
    {
      v15 = *(v4 + 24);
      v11 = v5;
      sub_218CC4CB8(v6, v7, v15);
      sub_218B083D0(v6, v7, v15);
      goto LABEL_13;
    }
  }

  else
  {
    if (v8 == 2)
    {

LABEL_8:
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v6 + 16) > a1)
      {
        v12 = v6 + 16 * a1;
        v13 = *(v12 + 32);
        v14 = *(v12 + 40);
        sub_2194B5588(v13, *(v12 + 40));

        sub_219B7D248(v13, v14);
        sub_219BE32A4();

        if (v21)
        {
          sub_218B09E7C(v13, v14);
LABEL_15:
          v16 = v23;
          *(a2 + 32) = v22;
          *(a2 + 48) = v16;
          *(a2 + 64) = v24;
          v17 = v21;
          *a2 = v20;
          *(a2 + 16) = v17;
          return;
        }

        sub_219A2FF6C(&v20, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
        sub_219A2E790(v13, v14, a2);
        *&v20 = sub_219B7D248(v13, v14);
        *(&v20 + 1) = v19;
        sub_219BE3254();
        sub_218B09E7C(v13, v14);

        return;
      }

      __break(1u);
      return;
    }

    if (v8 != 3)
    {
      v10 = v5;

      v6 = v7;
      goto LABEL_8;
    }
  }

  v11 = v5;
LABEL_13:
  sub_219B7D248(v11, 0);
  sub_219BE32A4();

  if (v21)
  {

    goto LABEL_15;
  }

  sub_219A2FF6C(&v20, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  sub_219A2E790(v11, 0, a2);
  *&v20 = sub_219B7D248(v11, 0);
  *(&v20 + 1) = v18;
  sub_219BE3254();
}

id sub_219A26798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7784();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v2[qword_280EB63A0];
  v8 = *&v2[qword_280EB63A0 + 24];
  v9 = *&v2[qword_280EB63A0 + 32];
  __swift_project_boxed_opaque_existential_1(&v2[qword_280EB63A0], v8);
  v10 = sub_219BF65B4();
  v11 = *(v9 + 8);
  v61 = a1;
  v11(v10, a1, v8, v9);

  sub_218718690(v7, v68);
  v12 = v69;
  v13 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  result = [v2 view];
  if (result)
  {
    v15 = result;
    v16 = qword_280EB6510;
    v17 = *(v13 + 16);
    v18 = *&v2[qword_280EB6510];
    v17(v15, v18, v12, v13);

    __swift_destroy_boxed_opaque_existential_1(v68);
    v19 = *(v7 + 3);
    v20 = *(v7 + 4);
    __swift_project_boxed_opaque_existential_1(v7, v19);
    v21 = *&v2[v16];
    v66 = v16;
    v67 = qword_280EB63E8;
    v22 = v2[qword_280EB63E8];
    v23 = *(v20 + 24);
    v24 = v21;
    v23(v2, v24, v22, v19, v20);

    v25 = *(v7 + 3);
    v26 = *(v7 + 4);
    v59 = __swift_project_boxed_opaque_existential_1(v7, v25);
    v27 = sub_219A26334(&qword_280EB63C8, sub_218F79300);
    v28 = *&v2[v16];
    v29 = v67;
    v30 = v2[v67];
    v31 = *(v26 + 32);
    v32 = v28;
    v31(v27, v32, v30, v25, v26);

    v33 = *(v7 + 3);
    v34 = *(v7 + 4);
    __swift_project_boxed_opaque_existential_1(v7, v33);
    v35 = *&v3[qword_280EB6410];
    v36 = *&v3[v66];
    v37 = v3[v29];
    v59 = *(v34 + 40);
    v58 = v35;
    v38 = v36;
    v59(v35, v38, v37, v33, v34);

    v39 = *(v7 + 3);
    v40 = *(v7 + 4);
    v41 = __swift_project_boxed_opaque_existential_1(v7, v39);
    v42 = *&v3[qword_280EB6458];
    v43 = v66;
    v44 = *&v3[v66];
    v45 = v3[v67];
    v58 = *(v40 + 48);
    v59 = v41;
    v57 = v42;
    v46 = v44;
    (v58)(v42, v46, v45, v39, v40);

    sub_218718690(v7, v68);
    v47 = v69;
    v48 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v49 = *&v3[v43];
    v50 = sub_219BE64F4();
    if (v50)
    {
      v51 = v50;
      v52 = [v50 navigationBar];
    }

    else
    {
      v52 = 0;
    }

    v53 = v63;
    (*(v48 + 56))(v49, v52, v61, v62, v3[v67], v47, v48);

    __swift_destroy_boxed_opaque_existential_1(v68);
    sub_219A30EC0(&qword_280EE5008, MEMORY[0x277D6DB58], MEMORY[0x277D6DB60]);
    sub_219BE2114();
    v54 = *(v7 + 4);
    __swift_project_boxed_opaque_existential_1(v7, *(v7 + 3));
    v55 = *(v54 + 88);
    v56 = *&v3[v66];
    v55();

    sub_219BE7E84();
    sub_219A2773C(0);
    return (*(v64 + 8))(v53, v65);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A26CA4(char a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_219BE77D4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3[qword_280EB63E8] = a1;
  v10 = [v3 traitCollection];
  v11 = [v3 tabBarController];
  v12 = MEMORY[0x277D6DBA8];
  if (v11)
  {
    v13 = v11;
    type metadata accessor for MainTabBarController(0);
    if (swift_dynamicCastClass())
    {
      v14 = v13;

      sub_219BE2734();

      if (v16[15])
      {
        v12 = MEMORY[0x277D6DBA0];
      }
    }

    else
    {
    }
  }

  (*(v6 + 104))(v9, *v12, v5);
  sub_219A26798(v10, v9);

  return (*(v6 + 8))(v9, v5);
}

double sub_219A26E70(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + qword_280EB64A8);
    v6 = *(Strong + qword_280EB64C0);
    v7 = Strong;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = sub_218E97A64(a1, v6, ObjectType);
    __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
    sub_21938E5E8(v9);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219A26F3C(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = MEMORY[0x277D6E8C0];
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  sub_219A2FFE4(a1, &v45 - v8, &qword_280EE3E10, v6);
  v10 = sub_219BE9CD4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219A30058(v9, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
LABEL_29:
    v26 = 0;
    return v26 & 1;
  }

  if ((*(v11 + 88))(v9, v10) != *MEMORY[0x277D6E8B0])
  {
    (*(v11 + 8))(v9, v10);
    goto LABEL_29;
  }

  (*(v11 + 96))(v9, v10);

  sub_2190473C0(0);
  v13 = *(v12 + 64);
  sub_2187FABEC(*&v9[*(v12 + 80)], *&v9[*(v12 + 80) + 8]);
  sub_219A30058(&v9[v13], &qword_280EE4FA8, MEMORY[0x277D6DC28]);
  if (a2)
  {
    goto LABEL_29;
  }

  v14 = [v3 navigationController];
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = v14;
  v16 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v17 = [v15 childViewControllers];
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  v18 = sub_219BF5924();

  if (v18 >> 62)
  {
LABEL_35:
    v19 = sub_219BF7214();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 < 2)
  {

    goto LABEL_29;
  }

  v20 = [v15 v16[125]];

  v21 = sub_219BF5924();
  v48 = MEMORY[0x277D84F90];
  if (v21 >> 62)
  {
    v22 = sub_219BF7214();
    if (v22)
    {
      goto LABEL_11;
    }

LABEL_37:
    v46 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_37;
  }

LABEL_11:
  v23 = 0;
  v16 = (v21 & 0xC000000000000001);
  v45 = v15;
  v46 = MEMORY[0x277D84F90];
  do
  {
    v15 = v23;
    while (1)
    {
      if (v16)
      {
        v24 = MEMORY[0x21CECE0F0](v15, v21);
      }

      else
      {
        if (v15 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v24 = *(v21 + 8 * v15 + 32);
      }

      v25 = v24;
      v23 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_219BE7DC4();
      if (swift_dynamicCastClass())
      {
        sub_219BF6584();

        v25 = v47;
        if (!v47)
        {
          goto LABEL_14;
        }

        if (v47 != v3)
        {
          break;
        }
      }

LABEL_14:
      ++v15;
      if (v23 == v22)
      {
        v15 = v45;
        goto LABEL_38;
      }
    }

    MEMORY[0x21CECC690]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v46 = v48;
    v15 = v45;
  }

  while (v23 != v22);
LABEL_38:

  v28 = v46;
  if (v46 >> 62)
  {
    if (sub_219BF7214())
    {
      if (sub_219BF7214())
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    goto LABEL_53;
  }

  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_53:

    goto LABEL_29;
  }

  if (swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    goto LABEL_42;
  }

  while (1)
  {
    v28 = sub_2194B7E54();
LABEL_42:
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      break;
    }

    __break(1u);
LABEL_55:
    swift_isUniquelyReferenced_nonNull_bridgeObject();
  }

  v30 = v29 - 1;
  v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
  *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) = v30;

  v32 = *&v31[qword_280EB6510];
  v33 = sub_219BF6394();

  v34 = [v33 identifier];
  swift_unknownObjectRelease();
  v35 = sub_219BF5414();
  v37 = v36;

  v38 = *&v3[qword_280EB6510];
  v39 = sub_219BF6394();

  v40 = [v39 identifier];
  swift_unknownObjectRelease();
  v41 = sub_219BF5414();
  v43 = v42;

  if (v35 == v41 && v37 == v43)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_219BF78F4();
  }

  return v26 & 1;
}

void sub_219A2751C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_219BE8DD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_219A30EC0(&qword_280EE4750, MEMORY[0x277D6E330], MEMORY[0x277D6E338]);
    if ((sub_219BF53A4() & 1) == 0)
    {
      if ([objc_opt_self() areAnimationsEnabled] && (v9 = *MEMORY[0x277D6E318], v14 = *(v4 + 104), v14(v6, v9, v3), v10 = sub_219BF53A4(), v11 = *(v4 + 8), v11(v6, v3), (v10 & 1) == 0))
      {
        v14(v6, v9, v3);
        v13 = sub_219BF53A4();
        v11(v6, v3);
        v12 = v13 ^ 1;
      }

      else
      {
        v12 = 0;
      }

      sub_219A2773C(v12 & 1);
    }
  }
}

id sub_219A2773C(int a1)
{
  v2 = v1;
  sub_21881CCEC(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v57[-v5];
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v60 = &v57[-v9];
  MEMORY[0x28223BE20](v10);
  v66 = &v57[-v11];
  v12 = sub_219BE8DD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v57[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v57[-v20];
  sub_219A2CED0(v1, &v57[-v20]);
  sub_219BE20C4();
  v22 = [v1 traitCollection];
  v23 = [v22 horizontalSizeClass];

  v67 = a1;
  v65 = v12;
  v64 = v13;
  v63 = v21;
  if (v23 == 1)
  {
    sub_219A25E28(v68);
    if (v69)
    {
      sub_219A30134(&v70, &v71);
      sub_2190459F8(v68);
      if (*(&v72 + 1))
      {
        sub_218CF6EB8(&v71, &qword_280EE47F0, &qword_280EE47F8, MEMORY[0x277D6E178]);
        sub_219BE20E4();
        (*(v13 + 32))(v15, v18, v12);
        v24 = (*(v13 + 88))(v15, v12);
        if (v24 != *MEMORY[0x277D6E328] && v24 != *MEMORY[0x277D6E318] && v24 != *MEMORY[0x277D6E320] && v24 != *MEMORY[0x277D6E310])
        {
          (*(v13 + 8))(v15, v12);
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_219A2FF6C(v68, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    sub_218CF6EB8(&v71, &qword_280EE47F0, &qword_280EE47F8, MEMORY[0x277D6E178]);
LABEL_14:
    sub_219BE7DE4();
    v58 = a1;
LABEL_15:
    v36 = *&v2[qword_280EB6510];
    v35 = *&v2[qword_280EB6510 + 8];
    v37 = *&v2[qword_280EB6510 + 16];
    v38 = v2[qword_280EB6510 + 24];
    v39 = qword_280EB6508;
    v40 = v2[qword_280EB6510 + 25];
    swift_beginAccess();
    v59 = type metadata accessor for TagFeedViewerLinkPresentation;
    v41 = v61;
    sub_219A2FFE4(&v2[v39], v61, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_218CC4BB4(v36, v35, v37, v38, v40);

    v43 = v60;
    v44 = sub_219046B48(v60, v41, sub_219A30050, v42, v36, v35, v37, v38 | (v40 << 8));

    sub_218B09E88(v36, v35, v37, v38, v40);
    sub_219A30058(v41, qword_280EAE4D0, v59);

    if (sub_219A26F3C(v43, v44 & 1))
    {
      sub_219A30058(v43, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
      v45 = sub_219BE9CD4();
      v46 = v66;
      (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
    }

    else
    {
      v46 = v66;
      sub_219A300B4(v43, v66);
    }

    v47 = v62;
    v48 = sub_219BE9CD4();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 48))(v46, 1, v48);
    v51 = v65;
    v52 = v64;
    v53 = v63;
    if (v50 != 1)
    {
      sub_219A2FFE4(v46, v47, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
      if ((*(v49 + 88))(v47, v48) == *MEMORY[0x277D6E8B0])
      {
        (*(v49 + 96))(v47, v48);

        sub_2190473C0(0);
        v55 = v54;
        sub_2187FABEC(*(v47 + *(v54 + 80)), *(v47 + *(v54 + 80) + 8));
        if ((v58 & 1) == 0 && sub_219BE7ED4())
        {
          swift_getObjectType();
          sub_219BEA334();
          swift_unknownObjectRelease();
        }

        if (sub_219BE7ED4())
        {
          swift_getObjectType();
          sub_219BEA344();
          swift_unknownObjectRelease();
        }

        v56 = *(v55 + 64);
        (*(v52 + 8))(v53, v51);
        sub_219A30058(v47 + v56, &qword_280EE4FA8, MEMORY[0x277D6DC28]);
        return sub_219A30058(v46, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
      }

      (*(v49 + 8))(v47, v48);
    }

    if (sub_219BE7ED4())
    {
      swift_getObjectType();
      sub_219BEA334();
      swift_unknownObjectRelease();
    }

    if (sub_219BE7ED4())
    {
      swift_getObjectType();
      sub_219BEA344();
      swift_unknownObjectRelease();
    }

    (*(v52 + 8))(v53, v51);
    return sub_219A30058(v46, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  }

  result = [v2 view];
  if (result)
  {
    v26 = result;
    [result frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v74.origin.x = v28;
    v74.origin.y = v30;
    v74.size.width = v32;
    v74.size.height = v34;
    CGRectGetWidth(v74);
    sub_219BE7DE4();
    v58 = 0;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_219A2802C(void *a1)
{
  v1 = a1;
  sub_219A28094();

  v2 = sub_219BF53D4();

  return v2;
}

uint64_t sub_219A28094()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v10, sel_description);
  v2 = sub_219BF5414();

  v3 = *&v0[qword_280EB6510];
  v4 = sub_219BF6394();

  v5 = [v4 displayName];
  swift_unknownObjectRelease();
  v6 = sub_219BF5414();
  v8 = v7;

  MEMORY[0x21CECC330](v6, v8);

  MEMORY[0x21CECC330](8236, 0xE200000000000000);

  return v2;
}

double sub_219A281B0()
{

  sub_2187FABEC(*(v0 + qword_280EB6470), *(v0 + qword_280EB6470 + 8));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_280EB63A0));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_280EB6500));
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_280EB6468));
  sub_218B09E88(*(v0 + qword_280EB6510), *(v0 + qword_280EB6510 + 8), *(v0 + qword_280EB6510 + 16), *(v0 + qword_280EB6510 + 24), *(v0 + qword_280EB6510 + 25));
  sub_219A30058(v0 + qword_280EB6508, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_280EB64D8));

  sub_2190AAF44(*(v0 + qword_280EB63E0));
  sub_2190AAF44(*(v0 + qword_280EB63D8));
  sub_2190AAF44(*(v0 + qword_280EB63D0));
  sub_2190AAF44(*(v0 + qword_280EB63C8));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_280EB6438));
  swift_unknownObjectRelease();
  sub_219A30058(v0 + qword_280EB6488, &qword_280EE33F0, MEMORY[0x277D2D4E0]);

  return result;
}

id sub_219A2844C()
{
  ObjectType = swift_getObjectType();

  sub_219BE58F4();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_219A284C0(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;

  sub_219BE58F4();

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

double sub_219A28538(uint64_t a1)
{

  sub_2187FABEC(*(a1 + qword_280EB6470), *(a1 + qword_280EB6470 + 8));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_280EB63A0));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_280EB6500));
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_280EB6468));
  sub_218B09E88(*(a1 + qword_280EB6510), *(a1 + qword_280EB6510 + 8), *(a1 + qword_280EB6510 + 16), *(a1 + qword_280EB6510 + 24), *(a1 + qword_280EB6510 + 25));
  sub_219A30058(a1 + qword_280EB6508, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_280EB64D8));

  sub_2190AAF44(*(a1 + qword_280EB63E0));
  sub_2190AAF44(*(a1 + qword_280EB63D8));
  sub_2190AAF44(*(a1 + qword_280EB63D0));
  sub_2190AAF44(*(a1 + qword_280EB63C8));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_280EB6438));
  swift_unknownObjectRelease();
  sub_219A30058(a1 + qword_280EB6488, &qword_280EE33F0, MEMORY[0x277D2D4E0]);

  return result;
}

double sub_219A287E0()
{
  sub_219BE7F04();
  v0 = sub_219BE7F14();
  v0();
  sub_219A2887C();
  sub_219A25FA0();
  if (qword_280EE5DA0 != -1)
  {
    swift_once();
  }

  sub_219BE7EC4();
  sub_219A2D03C();

  return sub_219A2D4B8();
}

void sub_219A2887C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v2 = qword_280EB6400;
  v3 = *(v0 + qword_280EB6400);
  *(v0 + qword_280EB6400) = v1;

  sub_219A25E28(v6);
  if (v7)
  {

    sub_2190459F8(v6);
    sub_219BE6BC4();
    v4 = *(v0 + v2);
    if (v4)
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_2186C6148(0, &qword_280E8DA00, 0x277D82BB8);
      v5 = v4;
      sub_219BE2704();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_219A2FF6C(v6, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  }
}

uint64_t sub_219A289BC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = sub_219BE77D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_219BE8DD4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 104))(v14, *MEMORY[0x277D6E318], v10, v12);
  sub_219A30EC0(&qword_280EE4750, MEMORY[0x277D6E330], MEMORY[0x277D6E338]);
  sub_219BE2114();
  (*(v11 + 8))(v14, v10);
  sub_219BE7F04();
  v15 = sub_219BE7F14();
  v15(a1, a2);
  v16 = [v3 traitCollection];
  v17 = [v3 tabBarController];
  v18 = MEMORY[0x277D6DBA8];
  if (v17)
  {
    v19 = v17;
    type metadata accessor for MainTabBarController(0);
    if (swift_dynamicCastClass())
    {
      v20 = v19;

      sub_219BE2734();

      if (v22[15])
      {
        v18 = MEMORY[0x277D6DBA0];
      }
    }

    else
    {
    }
  }

  (*(v7 + 104))(v9, *v18, v6);
  sub_219A26798(v16, v9);

  return (*(v7 + 8))(v9, v6);
}

void *sub_219A28CC0()
{
  sub_21881CCEC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5 - 8];
  v7 = sub_219BED0C4();
  result = 0;
  if ((v7 & 1) == 0)
  {
    v16 = *(v0 + qword_280EB6510);
    v9 = sub_219A307C4();
    v10 = *(v0 + qword_280EB6478);

    sub_219A25E28(v17);
    v11 = *(v0 + qword_280EB6408);
    v12 = *(v0 + qword_280EB6460);
    v13 = MEMORY[0x277D2D4E0];
    sub_219A2FFE4(v0 + qword_280EB6488, v6, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    type metadata accessor for TagFeedViewerBarCompressionAnimating(0);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[14] = 0;
    v14[3] = v9;
    swift_unknownObjectWeakAssign();
    v14[4] = v10;
    sub_219A30DF0(v17, (v14 + 5), &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
    sub_219A2FFE4(v6, v3, &qword_280EE33F0, v13);
    v15 = OBJC_IVAR____TtC7NewsUI236TagFeedViewerBarCompressionAnimating_mastheadModel;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_2192471FC(v16, v11, v12, v3, v14 + v15);
    sub_219A30058(v6, &qword_280EE33F0, v13);
    sub_219A2FF6C(v17, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
    return v14;
  }

  return result;
}

void sub_219A28EE4(uint64_t a1)
{
  sub_219BE7F04();
  v3 = sub_219BE7F14();
  v3(a1);
  sub_219A28FA4(0, a1 & 1);
  sub_219A29F1C(0, a1 & 1, v4);
  if ((a1 & 1) == 0)
  {
    v5 = *(v1 + qword_280EB6510);
    sub_218F359E8(v5);
  }
}

void sub_219A28FA4(int a1, int a2)
{
  v3 = v2;
  LODWORD(v104) = a2;
  v101 = a1;
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v103 = &v100[-v7];
  v8 = &v2[qword_280EB6438];
  __swift_project_boxed_opaque_existential_1(&v2[qword_280EB6438], *&v2[qword_280EB6438 + 24]);
  v9 = qword_280EB6510;
  v10 = *&v2[qword_280EB6510];
  v11 = sub_218F750BC(v10);

  v12 = qword_280EB6410;
  v13 = *&v3[qword_280EB6410];
  *&v3[qword_280EB6410] = v11;

  __swift_project_boxed_opaque_existential_1(v8, *(v8 + 3));
  v14 = *&v3[v9];
  v15 = qword_280EB6458;
  v16 = *&v3[qword_280EB6458];
  v17 = v16;
  v18 = v14;
  v19 = v16;
  v20 = v15;
  v21 = sub_218F79704(v18, v19);

  v22 = *&v3[v15];
  *&v3[v15] = v21;

  if (sub_219BED0C4())
  {
    if (v104 == 2)
    {
      v23 = sub_219BF6564();
      v24 = v103;
      if (v23)
      {
        goto LABEL_15;
      }

LABEL_10:
      v29 = [v3 parentViewController];
      if (v29)
      {
        v30 = v29;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v31 = sub_219BE6D14();

          if (v31)
          {
            v104 = sub_219BF65B4();
            [v104 setRightBarButtonItems:0 animated:v101 & 1];
LABEL_16:
            v33 = v104;

            return;
          }
        }

        else
        {
        }
      }

      sub_219BE7E34();
      v48 = sub_219BE9CD4();
      v49 = *(v48 - 8);
      v41 = 0;
      v50 = v9;
      v51 = v8;
      if ((*(v49 + 48))(v24, 1, v48) != 1)
      {
        v52 = v102;
        sub_219A2FFE4(v24, v102, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
        if ((*(v49 + 88))(v52, v48) == *MEMORY[0x277D6E8B0])
        {
          (*(v49 + 96))(v52, v48);

          v53 = v52[16];
          sub_2190473C0(0);
          v55 = *(v54 + 64);
          sub_2187FABEC(*&v52[*(v54 + 80)], *&v52[*(v54 + 80) + 8]);
          if (v53 == 1)
          {
            v41 = sub_219BE7E54();
            sub_219A30058(&v52[v55], &qword_280EE4FA8, MEMORY[0x277D6DC28]);
            goto LABEL_60;
          }

          sub_219A30058(&v52[v55], &qword_280EE4FA8, MEMORY[0x277D6DC28]);
        }

        else
        {
          (*(v49 + 8))(v52, v48);
        }

        v41 = 0;
      }

LABEL_60:
      sub_219A30058(v24, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
      if ([*&v3[v50] feedConfiguration] == 3)
      {
        sub_219A3060C(0);
        v35 = swift_allocObject();
        *(v35 + 1) = xmmword_219C09BA0;
        v35[4] = v41;
        v67 = v41;
        goto LABEL_69;
      }

      sub_219A25E28(v105);
      if (v106)
      {
        v68 = v106;
        sub_2190459F8(v105);
        type metadata accessor for TagFeedViewController();
        sub_219BF6584();

        v69 = v108;
        if (v108)
        {
          v70 = *(v108 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator);
          swift_unknownObjectRetain();

          if (v70)
          {
            v71 = sub_218ABA3DC();
            swift_unknownObjectRelease();
LABEL_68:
            v72 = sub_218ACDE38(v71);

            sub_219A3060C(0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_219C0D560;
            *(inited + 32) = sub_219A2626C();
            v74 = *&v3[v20];
            *(inited + 40) = v74;
            v75 = v74;
            *(inited + 48) = sub_219A26334(&qword_280EB63C8, sub_218F79300);
            *(inited + 56) = sub_219A26334(&qword_280EB63D8, sub_218F786E4);
            *(inited + 64) = sub_219A26334(&qword_280EB63D0, sub_218F7915C);
            v105[0] = v72;
            sub_2191EDADC(inited);
            v35 = v105[0];
LABEL_69:
            __swift_project_boxed_opaque_existential_1(v51, *(v51 + 3));
            v76 = *&v3[v50];
            v77 = sub_219BF65B4();
            v34 = sub_218F76D9C(v76, v77);

            if (v34)
            {
              v78 = sub_219BF65B4();
              [v78 setAdditionalOverflowItems_];
            }

            v79 = sub_219BF65B4();
            v80 = 0;
            v105[0] = MEMORY[0x277D84F90];
            v37 = v35[2];
            while (1)
            {
              if (v37 == v80)
              {

                sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
                v82 = sub_219BF5904();

                [v79 setRightBarButtonItems_];

                goto LABEL_101;
              }

              if (v80 >= v35[2])
              {
                break;
              }

              v81 = v35[v80 + 4];
              v80 = (v80 + 1);
              if (v81)
              {
                v34 = v81;
                MEMORY[0x21CECC690]();
                if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v20 = *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_219BF5A14();
                }

                sub_219BF5A54();
              }
            }

            __break(1u);
            goto LABEL_105;
          }
        }
      }

      else
      {
        sub_219A2FF6C(v105, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
      }

      v71 = MEMORY[0x277D84F90];
      goto LABEL_68;
    }

    v24 = v103;
    if ((v104 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v32 = sub_219BF65B4();
    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
    v104 = sub_219BF5904();
    [v32 setRightBarButtonItems_];

    goto LABEL_16;
  }

  v25 = v104;
  __swift_project_boxed_opaque_existential_1(v8, *(v8 + 3));
  v26 = *&v3[v9];
  v27 = sub_218F750BC(v26);

  v28 = *&v3[v12];
  *&v3[v12] = v27;

  if ([*&v3[v9] feedConfiguration] == 3)
  {
    return;
  }

  if (v25 == 2)
  {
    if (sub_219BF6564())
    {
      goto LABEL_15;
    }
  }

  else if (v25)
  {
    goto LABEL_15;
  }

  v108 = MEMORY[0x277D84F90];
  sub_219BE7274();
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:6 target:0 action:0];
  v35 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v36 = [v3 traitCollection];
  v37 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v38 = [v36 horizontalSizeClass];

  v39 = 4.0;
  if (v38 == 2)
  {
    v39 = 16.0;
  }

  [(__objc2_prot *)v34 setWidth:v39];
  v40 = *&v3[v12];
  if (v40)
  {
    v41 = v40;
    MEMORY[0x21CECC690]();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_23:
      sub_219BF5A54();

      goto LABEL_24;
    }

LABEL_105:
    sub_219BF5A14();
    goto LABEL_23;
  }

LABEL_24:
  sub_219A25E28(v105);
  if (v106)
  {
    v42 = v106;
    sub_2190459F8(v105);
    type metadata accessor for TagFeedViewController();
    sub_219BF6584();

    v43 = v107;
    if (v107)
    {
      v44 = *&v107[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
      swift_unknownObjectRetain();

      if (v44)
      {
        v45 = sub_218ABA3DC();
        if (v45 >> 62)
        {
          v99 = sub_219BF7214();

          if (!v99)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v46)
          {
LABEL_30:
            swift_unknownObjectRelease();
            goto LABEL_38;
          }
        }

        v47 = sub_218ABA3DC();
        sub_2191EDAB0(v47);
        goto LABEL_30;
      }
    }
  }

  else
  {
    sub_219A2FF6C(v105, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  }

LABEL_38:
  v56 = sub_219A2626C();
  if (!v56)
  {
    goto LABEL_45;
  }

  v57 = v56;
  if (v108 >> 62)
  {
    if (sub_219BF7214())
    {
LABEL_41:
      if ((sub_219BED0C4() & 1) == 0)
      {
        sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v83 = swift_initStackObject();
        *(v83 + 16) = xmmword_219C189F0;
        *(v83 + 32) = v34;
        *(v83 + 40) = v57;
        v84 = v34;
        sub_2191EDAB0(v83);
        v59 = *&v3[v20];
        if (!v59)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }
  }

  else if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

  v58 = v57;
  MEMORY[0x21CECC690]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

LABEL_45:
  v59 = *&v3[v20];
  if (!v59)
  {
    goto LABEL_51;
  }

LABEL_46:
  v60 = v59;
  if (sub_219BED0C4())
  {
    v61 = v60;
    MEMORY[0x21CECC690]();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
  }

  else
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_219C189F0;
    *(v62 + 32) = v34;
    *(v62 + 40) = v60;
    v63 = v34;
    sub_2191EDAB0(v62);
  }

LABEL_51:
  v64 = sub_219A26334(&qword_280EB63C8, sub_218F79300);
  if (!v64)
  {
    goto LABEL_82;
  }

  v65 = v64;
  if (v108 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_55;
    }
  }

  else if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

  if ((sub_219BED0C4() & 1) == 0)
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_219C189F0;
    *(v85 + 32) = v34;
    *(v85 + 40) = v65;
    v86 = v34;
    sub_2191EDAB0(v85);
    goto LABEL_82;
  }

LABEL_55:
  v66 = v65;
  MEMORY[0x21CECC690]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

LABEL_82:
  v87 = sub_219A26334(&qword_280EB63D0, sub_218F7915C);
  if (!v87)
  {
    goto LABEL_90;
  }

  v88 = v87;
  if (v108 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_86;
    }
  }

  else if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_86;
  }

  if ((sub_219BED0C4() & 1) == 0)
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v90 = swift_initStackObject();
    *(v90 + 16) = xmmword_219C189F0;
    *(v90 + 32) = v34;
    *(v90 + 40) = v88;
    v91 = v34;
    sub_2191EDAB0(v90);
    goto LABEL_90;
  }

LABEL_86:
  v89 = v88;
  MEMORY[0x21CECC690]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

LABEL_90:
  v92 = sub_219A26334(&qword_280EB63D8, sub_218F786E4);
  if (!v92)
  {
LABEL_99:

    goto LABEL_100;
  }

  v93 = v92;
  v94 = [v3 v35[265]];
  v95 = [v94 v37[381]];

  if (v95 != 2)
  {

    goto LABEL_99;
  }

  if (v108 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_95;
    }
  }

  else if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_95;
  }

  if ((sub_219BED0C4() & 1) == 0)
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v98 = swift_initStackObject();
    *(v98 + 16) = xmmword_219C189F0;
    *(v98 + 32) = v34;
    *(v98 + 40) = v93;
    sub_2191EDAB0(v98);
    goto LABEL_100;
  }

LABEL_95:

  v96 = v93;
  MEMORY[0x21CECC690]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

LABEL_100:
  v97 = sub_219BF65B4();
  sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
  v41 = sub_219BF5904();

  [v97 setRightBarButtonItems_];

LABEL_101:
}

void sub_219A29F1C(uint64_t a1, char a2, __n128 a3)
{
  v4 = v3;
  v5 = a1;
  if (a2 == 2)
  {
    if ((sub_219BF6564() & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = sub_219BF65B4();
    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
    v48 = sub_219BF5904();
    [v9 setLeftBarButtonItems_];

    goto LABEL_9;
  }

  if (a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [v3 parentViewController];
  if (v6)
  {
    v7 = v6;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v8 = sub_219BE6D14();

      if (v8)
      {
        v48 = sub_219BF65B4();
        [v48 setRightBarButtonItems:0 animated:v5 & 1];
LABEL_9:

        return;
      }
    }

    else
    {
    }
  }

  sub_219A25E28(v50);
  if (!v51)
  {
    sub_219A2FF6C(v50, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
LABEL_19:
    v16 = sub_219BF65B4();
    v17 = [v16 leftBarButtonItems];

    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
      v19 = sub_219BF5924();
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v50[0] = v19;
    v20 = sub_219A26334(&qword_280EB63D8, sub_218F786E4);
    if (!v20)
    {
LABEL_71:
      v45 = sub_219BF65B4();
      [v45 setLeftItemsSupplementBackButton_];

      v46 = sub_219BF65B4();
      sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
      v47 = sub_219BF5904();

      [v46 setLeftBarButtonItems_];

      return;
    }

    v21 = v20;
    v22 = [v4 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if (v23 == 1)
    {
      if (!(v19 >> 62))
      {
        v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
LABEL_26:
          v25 = 0;
          while (1)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x21CECE0F0](v25, v19);
              if (__OFADD__(v25++, 1))
              {
                __break(1u);
                return;
              }

              v28 = v26;
              swift_unknownObjectRelease();
              if (v28 == v21)
              {
                goto LABEL_68;
              }
            }

            else
            {
              if ((v25 & 0x8000000000000000) != 0)
              {
                goto LABEL_61;
              }

              if (v25 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_62;
              }

              if (*(v19 + 32 + 8 * v25) == v21)
              {
                goto LABEL_68;
              }

              ++v25;
            }

            if (v25 == v24)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_63:
      v24 = sub_219BF7214();
      if (v24)
      {
        goto LABEL_26;
      }

LABEL_64:
      sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C146A0;
      *(inited + 32) = v21;
      v43 = v21;
      sub_2191EDAB0(inited);
LABEL_68:
      if ((sub_219BED0C4() & 1) == 0)
      {
        v44 = [v4 traitCollection];
        [v44 horizontalSizeClass];

        sub_219BF5944();
      }

      goto LABEL_71;
    }

    v52 = v18;
    if (v19 >> 62)
    {
      v29 = sub_219BF7214();
      if (v29)
      {
LABEL_39:
        v49 = v4;
        v30 = 0;
        v4 = (v19 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x21CECE0F0](v30, v19);
          }

          else
          {
            if (v30 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v31 = *(v19 + 8 * v30 + 32);
          }

          v32 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v31 == v21)
          {
          }

          else
          {
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
          }

          ++v30;
          if (v32 == v29)
          {
            v33 = v52;
            v4 = v49;
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
      v29 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_39;
      }
    }

    v33 = MEMORY[0x277D84F90];
LABEL_67:

    v50[0] = v33;
    goto LABEL_68;
  }

  v10 = v51;
  sub_2190459F8(v50);
  type metadata accessor for TagFeedViewController();
  sub_219BF6584();

  v11 = v52;
  if (!v52)
  {
    goto LABEL_19;
  }

  v12 = *&v52[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
  swift_unknownObjectRetain();

  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = sub_219BF65B4();
  v14 = [v13 leftBarButtonItems];

  if (v14)
  {
    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
    v15 = sub_219BF5924();
  }

  else
  {
    v15 = 0;
  }

  v34 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_showSearchNavigationItems;
  if (*(v12 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_showSearchNavigationItems) != 1)
  {
    v35 = MEMORY[0x277D84F90];
    if (v15)
    {
      goto LABEL_53;
    }

LABEL_55:

    v37 = 1;
    goto LABEL_56;
  }

  sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_219C146A0;
  *(v35 + 32) = sub_218ABA354();
  if (!v15)
  {
    goto LABEL_55;
  }

LABEL_53:
  v36 = sub_21941AFD8(v15, v35);

  v37 = v36 ^ 1;
LABEL_56:
  v38 = sub_219BF65B4();
  [v38 setLeftItemsSupplementBackButton_];

  v39 = sub_219BF65B4();
  if (*(v12 + v34) == 1)
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_219C146A0;
    *(v40 + 32) = sub_218ABA354();
  }

  sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
  v41 = sub_219BF5904();

  [v39 setLeftBarButtonItems:v41 animated:v37 & 1];
  swift_unknownObjectRelease();
}

void sub_219A2A6FC()
{
  v1 = v0;
  v47.receiver = v0;
  v47.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v47, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2;
  MEMORY[0x28223BE20](v2);
  sub_218807578(0);
  sub_219A30EC0(&qword_280E90610, sub_218807578, MEMORY[0x277D33560]);
  sub_219BF6C74();

  sub_219BE6BF4();
  v4 = *&v1[qword_280EB64A8];
  v5 = &v1[qword_280EB6510];
  v6 = *&v1[qword_280EB6510];
  v41 = v4;
  sub_218F3586C(v6);

  sub_219BE7E14();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE2774();

  v7 = *v5;
  v8 = *(v5 + 1);
  v9 = *(v5 + 2);
  v10 = v5[24];
  v11 = v5[25];
  sub_218CC4BB4(*v5, v8, v9, v5[24], v5[25]);
  sub_21939A248(v7, v8, v9, v10 | (v11 << 8), v48);
  v12 = 0;
  v13 = 0;
  v14 = v50;
  if (HIBYTE(v50) <= 0xFEu)
  {
    v51 = v48[0];
    v52 = v48[1];
    v53 = v49;
    v15 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v16 = v52;
    *(v13 + 24) = v51;
    *(v13 + 40) = v16;
    *(v13 + 56) = v53;
    *(v13 + 64) = v14;
    v17 = swift_allocObject();
    v12 = sub_219A30DB4;
    *(v17 + 16) = sub_219A30DB4;
    *(v17 + 24) = v13;
    v45 = sub_218807CE0;
    v46 = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218807CE4;
    v44 = &block_descriptor_50_1;
    v18 = _Block_copy(aBlock);
    v19 = v1;
    sub_219A30DF0(v48, v42, &qword_280EB2178, &type metadata for TagFeedViewerSectionsRequest);

    [v15 performWithoutAnimation_];
    sub_219A2FF6C(v48, &qword_280EB2178, &type metadata for TagFeedViewerSectionsRequest);
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }

  v20 = *v5;
  v21 = *(v5 + 1);
  v22 = *(v5 + 2);
  v23 = v5[24];
  v24 = v5[25];
  sub_218CC4BB4(*v5, v21, v22, v23, v24);
  v25 = sub_2190478F8(v20);
  sub_218B09E88(v20, v21, v22, v23, v24);
  if (v25)
  {
    v26 = [*v5 backingChannel];
    if (v26)
    {
      sub_218B06EB0(v26);
      swift_unknownObjectRelease();
    }
  }

  sub_219A25FA0();
  sub_219A28FA4(0, 2);
  sub_219A29F1C(0, 2, v27);
  v28 = [*v5 feedConfiguration];
  if (v28 == 13 || v28 == 11)
  {
    v29 = sub_219BF65B4();
    v30 = *v5;
    sub_219BF63C4();

    v31 = sub_219BF53D4();

    [v29 setTitle_];
  }

  v32 = sub_219BED0C4();
  v33 = sub_219BF65B4();
  v34 = [*v5 name];
  v35 = v34;
  if (v32)
  {
    if (!v34)
    {
      sub_219BF5414();
      v35 = sub_219BF53D4();
    }

    [v33 setBackButtonTitle_];

    v35 = sub_219BF65B4();
    [v35 setBackButtonDisplayMode_];
  }

  else
  {
    if (!v34)
    {
      sub_219BF5414();
      v35 = sub_219BF53D4();
    }

    [v33 setTitle_];
  }

  if (sub_219BE7ED4())
  {
    swift_getObjectType();
    sub_219A30EC0(&unk_280EB6378, type metadata accessor for TagFeedViewerViewController, &unk_219CC1510);
    v36 = v1;
    sub_219BEA354();
    swift_unknownObjectRelease();
  }

  v37 = *&v1[qword_280EB64F8];
  v38 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  swift_beginAccess();
  if (*(v37 + v38) == 1)
  {
    v39 = *v5;
    sub_219BF6394();

    v44 = sub_219BE3C64();
    v45 = sub_219A30EC0(&qword_27CC22920, MEMORY[0x277D34CD0], MEMORY[0x277D34CC8]);
    __swift_allocate_boxed_opaque_existential_1(aBlock);
    swift_unknownObjectRetain();
    sub_219BE3C54();
    sub_219BEA744();
    swift_allocObject();
    v40 = sub_219BEA6C4();
    __swift_project_boxed_opaque_existential_1((v41 + 48), *(v41 + 72));
    sub_21938E044(v40);
    swift_unknownObjectRelease();
  }

  sub_219A25D28();
  sub_2187FABEC(v12, v13);
}

uint64_t sub_219A2AE1C(uint64_t a1)
{
  v2 = sub_219BEDA44();
  *&v3 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v4 = qword_280EB6510;
  v5 = [objc_msgSend(*(a1 + qword_280EB6510) backingTag];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v6 = [*(a1 + v4) alternativeFeedDescriptor];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 backingTag];

    v9 = [v8 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();
  }

  sub_219BEDA34();
  sub_219A30EC0(&qword_280E92580, MEMORY[0x277D31D00], MEMORY[0x277D31CF8]);
  return sub_219BF1C54();
}

void sub_219A2B000(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() areAnimationsEnabled];
    sub_219A2773C(v4);
    sub_219A2887C();
  }
}

void sub_219A2B070(void *a1)
{
  v1 = a1;
  sub_219A2A6FC();
}

void sub_219A2B0B8(void *a1)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v1 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[qword_280EB64D8 + 24];
    v5 = *&v1[qword_280EB64D8 + 32];
    __swift_project_boxed_opaque_existential_1(&v1[qword_280EB64D8], v4);
    (*(v5 + 16))(v3, v4, v5);
  }
}

void sub_219A2B178(char a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  sub_219BE7E74();
  swift_getObjectType();
  sub_219BE7544();
  swift_unknownObjectRelease();
  sub_219A25FA0();
  if (qword_280EE5DA0 != -1)
  {
    swift_once();
  }

  sub_219BE7EC4();
  sub_219A2D03C();
  sub_219A2D4B8();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_219A30D10;
  *(v6 + 24) = v5;
  v13[4] = sub_218807D50;
  v13[5] = v6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_218807CE4;
  v13[3] = &block_descriptor_202;
  v7 = _Block_copy(v13);
  v8 = v2;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_219A2B5F4();
    sub_219BE20A4();
    v9 = [v8 tabBarController];
    if (v9)
    {
      v10 = v9;
      v11 = sub_219BF65B4();
      v12 = [v11 titleView];

      if (v12)
      {
        sub_219BE9C84();
        if (swift_dynamicCastClass())
        {
          sub_219BE9C74();
        }
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

uint64_t sub_219A2B438(void *a1, __n128 a2)
{
  v3 = sub_219BE77D4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [a1 traitCollection];
  v9 = [a1 tabBarController];
  v10 = MEMORY[0x277D6DBA8];
  if (v9)
  {
    v11 = v9;
    type metadata accessor for MainTabBarController(0);
    if (swift_dynamicCastClass())
    {
      v12 = v11;

      sub_219BE2734();

      if (v14[15])
      {
        v10 = MEMORY[0x277D6DBA0];
      }
    }

    else
    {
    }
  }

  (*(v4 + 104))(v7, *v10, v3);
  sub_219A26798(v8, v7);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_219A2B5F4()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext(0);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF4F84();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &unk_280E8FCE8, MEMORY[0x277D346D8]);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v65 - v9;
  v10 = sub_219BF25E4();
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_219BE7394();
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BF3344();
  v19 = *(v76 - 8);
  *&v20 = MEMORY[0x28223BE20](v76).n128_u64[0];
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = qword_280EB6510;
  v24 = [*(v1 + qword_280EB6510) feedConfiguration];
  v77 = v23;
  if (v24 != 11)
  {
    sub_219BEAF14();
    v25 = *(v1 + v23);
    sub_219BF6394();

    sub_219BF3324();
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    sub_219BE6A74();
    v23 = v77;

    sub_218CF6EB8(&v79, &qword_280EE5AD0, &qword_280EE5AE0, MEMORY[0x277D6D540]);
    (*(v19 + 8))(v22, v76);
  }

  sub_219BEAEF4();
  v26 = v23;
  v27 = *(v1 + v23);
  v28 = sub_219BF6394();

  v78 = v28;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  sub_219BE6A74();

  sub_218CF6EB8(&v79, &qword_280EE5AD0, &qword_280EE5AE0, MEMORY[0x277D6D540]);
  swift_unknownObjectRelease();
  sub_219BEAF54();
  sub_219BEAF44();
  v29 = *(v1 + v26);
  sub_219BF63A4();

  v30 = sub_219BDB954();
  (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
  *&v79 = *(v1 + v26);
  v31 = v79;
  sub_2186C6148(0, &qword_280E8E560, 0x277D30FB0);
  v32 = v31;
  sub_219BE7374();
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  sub_219BE6A74();

  v33 = MEMORY[0x277D6D540];
  sub_218CF6EB8(&v79, &qword_280EE5AD0, &qword_280EE5AE0, MEMORY[0x277D6D540]);
  (*(v72 + 8))(v18, v73);
  sub_219BEAE24();
  v34 = *(v1 + v26);
  sub_219A30D18(0);
  v36 = *(v35 + 48);
  *v12 = v34;
  v37 = *MEMORY[0x277D33978];
  v38 = sub_219BF25F4();
  (*(*(v38 - 8) + 104))(&v12[v36], v37, v38);
  v40 = v74;
  v39 = v75;
  (*(v74 + 104))(v12, *MEMORY[0x277D33938], v75);
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v41 = v34;
  sub_219BE6A74();

  sub_218CF6EB8(&v79, &qword_280EE5AD0, &qword_280EE5AE0, v33);
  (*(v40 + 8))(v12, v39);
  v42 = sub_219A26334(&qword_280EB63D8, sub_218F786E4);
  if (v42)
  {

    v43 = v77;
    v44 = [*(v1 + v77) feedConfiguration];
    if (v44 != 9)
    {
      v46 = v69;
      v45 = v70;
      v48 = v67;
      v47 = v68;
      if (v44 == 10)
      {
        v49 = [objc_msgSend(*(v1 + v43) backingTag)];
        swift_unknownObjectRelease();
        v50 = 1;
        if (v49)
        {
          v51 = [v49 identifier];
          v52 = sub_219BF5414();
          v54 = v53;
          swift_unknownObjectRelease();

          *v47 = v52;
          *(v47 + 8) = v54;
          *(v47 + 16) = 0;
          *(v47 + 24) = 1;
          v55 = MEMORY[0x277D346C8];
          v56 = v71;
LABEL_9:
          (*(v45 + 104))(v47, *v55, v56);
          v50 = 0;
LABEL_12:
          (*(v45 + 56))(v47, v50, 1, v56);
          sub_219A2FFE4(v47, v48, &unk_280E8FCE8, MEMORY[0x277D346D8]);
          if ((*(v45 + 48))(v48, 1, v56) == 1)
          {
            v57 = MEMORY[0x277D346D8];
            sub_219A30058(v47, &unk_280E8FCE8, MEMORY[0x277D346D8]);
            v58 = v48;
            v59 = v57;
          }

          else
          {
            (*(v45 + 32))(v46, v48, v56);
            if (qword_280EE38B8 != -1)
            {
              swift_once();
            }

            v60 = v66;
            (*(v45 + 16))(v66, v46, v56);
            v81 = 0;
            v79 = 0u;
            v80 = 0u;
            sub_219BE6A74();
            sub_218CF6EB8(&v79, &qword_280EE5AD0, &qword_280EE5AE0, MEMORY[0x277D6D540]);
            sub_219A2FF04(v60, type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext);
            (*(v45 + 8))(v46, v56);
            v59 = MEMORY[0x277D346D8];
            v58 = v47;
          }

          sub_219A30058(v58, &unk_280E8FCE8, v59);
          goto LABEL_18;
        }
      }

      else
      {
        v50 = 1;
      }

      v56 = v71;
      goto LABEL_12;
    }

    v55 = MEMORY[0x277D346D0];
    v45 = v70;
    v56 = v71;
    v47 = v68;
    v46 = v69;
    v48 = v67;
    goto LABEL_9;
  }

LABEL_18:
  v61 = sub_219A26334(&qword_280EB63D0, sub_218F7915C);
  if (v61)
  {

    v62 = [*(v1 + v77) feedConfiguration];
    if ((v62 - 9) <= 1)
    {
      if (qword_280EE38A0 != -1)
      {
        v64 = v62;
        swift_once();
        v62 = v64;
      }

      v78 = v62;
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      sub_219BE6A74();
      sub_218CF6EB8(&v79, &qword_280EE5AD0, &qword_280EE5AE0, MEMORY[0x277D6D540]);
    }
  }

  sub_219BE6AA4();
  swift_getObjectType();
  sub_219BEAF14();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218740ED4();
  sub_219BE7004();
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(&v79);
}

void sub_219A2C128(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_219A2B178(a3);
}

void sub_219A2C17C(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a3);
  sub_219BE7E74();
  swift_getObjectType();
  sub_219BE7534();
  swift_unknownObjectRelease();
  sub_219BE6AB4();
  sub_219BE5904();
}

uint64_t sub_219A2C22C(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  sub_219BE1D04();
  if ((sub_219BF6564() & 1) == 0)
  {
    v4 = *&v2[qword_280EB6510];
    sub_218F359E8(v4);
  }

  return sub_219BE5964();
}

void sub_219A2C2D8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_219A2C22C(a3);
}

id sub_219A2C32C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE77D4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22.receiver = v2;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_traitCollectionDidChange_, a1, v7);
  sub_219A28FA4(0, 2);
  sub_219A29F1C(0, 2, v10);
  v11 = [v2 traitCollection];
  v12 = [v2 tabBarController];
  v13 = MEMORY[0x277D6DBA8];
  if (v12)
  {
    v14 = v12;
    type metadata accessor for MainTabBarController(0);
    if (swift_dynamicCastClass())
    {
      v15 = v14;

      sub_219BE2734();

      if (v21[15])
      {
        v13 = MEMORY[0x277D6DBA0];
      }
    }

    else
    {
    }
  }

  (*(v6 + 104))(v9, *v13, v5);
  sub_219A26798(v11, v9);

  (*(v6 + 8))(v9, v5);
  v16 = [v2 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = *&v2[qword_280EB64D8 + 24];
    v19 = *&v2[qword_280EB64D8 + 32];
    __swift_project_boxed_opaque_existential_1(&v2[qword_280EB64D8], v18);
    (*(v19 + 16))(v17, v18, v19);
  }

  sub_219BE6B94();
  return sub_219A2773C(0);
}

void sub_219A2C5A8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_219A2C32C(a3);
}

void sub_219A2C614(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_didReceiveMemoryWarning);
  sub_219BE3264();
}

id sub_219A2C678(void *a1)
{
  v1 = a1;
  v2 = sub_219A307C4();

  return v2;
}

void *sub_219A2C6BC(uint64_t a1)
{
  v1 = sub_219BEB384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v20 = v1;
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v8[3] = v11;
    v8[4] = sub_219A30EC0(&qword_280E91000, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v8[5] = v16;
    v8[6] = v18;
    (*(v6 + 104))(v8, *MEMORY[0x277D6EC80], v5);
    v19 = v20;
    (*(v2 + 104))(v4, *MEMORY[0x277D6ECB0], v20);
    sub_219BE6BD4();
    (*(v2 + 8))(v4, v19);

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_219A2CA34(uint64_t a1)
{
  v1 = sub_219BEB384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 104))(v8, *MEMORY[0x277D6EC88], v5);
    (*(v2 + 104))(v4, *MEMORY[0x277D6ECB0], v1);
    sub_219BE6BD4();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_219A2CC2C(uint64_t a1)
{
  v1 = sub_219BEB384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *v8 = sub_219BF1554();
    v8[1] = v11;
    v8[7] = sub_219BF1534();
    v8[8] = v12;
    v13 = sub_219BE5AA4();
    v14 = MEMORY[0x277D6D2E8];
    v8[5] = v13;
    v8[6] = v14;
    __swift_allocate_boxed_opaque_existential_1(v8 + 2);
    sub_219BE5A64();
    (*(v6 + 104))(v8, *MEMORY[0x277D6EC98], v5);
    (*(v2 + 104))(v4, *MEMORY[0x277D6ECA8], v1);
    sub_219BE6BD4();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

id sub_219A2CE74(uint64_t a1, unint64_t a2)
{
  sub_219A26504(a2, v4);
  v2 = v5;
  sub_2190459F8(v4);
  return v2;
}

void *sub_219A2CED0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_219A25E28(v9);
  if (!v10)
  {
    sub_219A2FF6C(v9, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
LABEL_5:
    sub_218CF6EB8(&v12, &qword_280EE47F0, &qword_280EE47F8, MEMORY[0x277D6E178]);
    v4 = qword_280EB6510;
    if ([*(a1 + qword_280EB6510) feedConfiguration] == 8)
    {
      v5 = [*(a1 + v4) alternativeFeedDescriptor];
      if (!v5)
      {
        return sub_219BE20E4();
      }
    }

    v6 = *MEMORY[0x277D6E310];
    v7 = sub_219BE8DD4();
    return (*(*(v7 - 8) + 104))(a2, v6, v7);
  }

  sub_219A30134(&v11, &v12);
  sub_2190459F8(v9);
  if (!*(&v13 + 1))
  {
    goto LABEL_5;
  }

  sub_218CF6EB8(&v12, &qword_280EE47F0, &qword_280EE47F8, MEMORY[0x277D6E178]);
  return sub_219BE20E4();
}

double sub_219A2D03C()
{
  v1 = v0;
  v2 = qword_280EB6510;
  v3 = [*(v0 + qword_280EB6510) alternativeFeedDescriptor];
  if (!v3)
  {
    v3 = *(v0 + v2);
  }

  v4 = [v3 backingChannel];
  if (v4)
  {
    v5 = [v4 asChannel];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_msgSend(v3 backingTag)];
  swift_unknownObjectRelease();
  v7 = [objc_msgSend(*(v0 + v2) backingTag)];
  swift_unknownObjectRelease();
  [v3 feedConfiguration];
  v8 = [v3 feedConfiguration];
  if (!v5 && (!v6 ? (v9 = v7 == 0) : (v9 = 0), v9))
  {
    sub_219BE7E74();
    swift_getObjectType();
    sub_219BE5CC4();
    sub_219BE5C94();
    sub_219BE6D04();
    sub_219A30EC0(&unk_280EE5710, MEMORY[0x277D6D808], MEMORY[0x277D6D7F8]);
    sub_219BE7524();
  }

  else
  {
    v17 = v8;
    v16 = v8 == 11;
    sub_219BE7E74();
    swift_getObjectType();
    sub_219BE5CC4();
    sub_219BE5C94();
    sub_219BE6D04();
    v10 = sub_219BE7504();

    swift_unknownObjectRelease();
    v11 = sub_219A2DC84(v5, v3, v1, v10, v6, v7, v16);
    if (v7)
    {
      swift_unknownObjectRetain();
      v12 = sub_219BF4DB4();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = *(v1 + v2);
      v12 = sub_219BF4DC4();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v12;
    sub_219BEA234();
    swift_allocObject();
    sub_219BEA244();
    if (v17 == 11)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_219BE7E74();
      swift_getObjectType();
      sub_219BE5C94();
      sub_219A30EC0(&unk_280EE5710, MEMORY[0x277D6D808], MEMORY[0x277D6D7F8]);
      sub_219BE7514();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  return result;
}

double sub_219A2D4B8()
{
  v1 = v0;
  v2 = sub_219BE7C14();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_219BE93F4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE6904();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &qword_280EE4FE8, sub_218F7CC98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  sub_218F7CC98(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  __swift_project_boxed_opaque_existential_1((v0 + qword_280EB6438), *(v0 + qword_280EB6438 + 24));
  v20 = qword_280EB6510;
  v21 = *(v0 + qword_280EB6510);
  if ([v21 feedConfiguration] != 11)
  {

    (*(v14 + 56))(v11, 1, 1, v13);
    goto LABEL_10;
  }

  sub_218F7AFAC(v21, v11);

  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
LABEL_10:
    sub_219A30058(v11, &qword_280EE4FE8, sub_218F7CC98);
    goto LABEL_13;
  }

  sub_219A301B8(v11, v19, sub_218F7CC98);
  v22 = *(v0 + qword_280EB6430);
  sub_219A30220(v19, v16, sub_218F7CC98);
  v23 = &v16[*(v13 + 48)];
  v24 = *v23;
  v25 = v23[1];

  sub_219A2FEB4(v24, v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_2191F7B84(0, v22[2] + 1, 1, v22);
  }

  v26 = v47;
  v28 = v22[2];
  v27 = v22[3];
  if (v28 >= v27 >> 1)
  {
    v22 = sub_2191F7B84((v27 > 1), v28 + 1, 1, v22);
  }

  v22[2] = v28 + 1;
  v29 = sub_219BE7854();
  (*(*(v29 - 8) + 32))(v22 + ((*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80)) + *(*(v29 - 8) + 72) * v28, v16, v29);
  sub_219BE5CC4();
  sub_219BE5CA4();
  sub_219BE68F4();
  sub_219BE7E74();
  swift_getObjectType();
  sub_219BE7554();
  swift_unknownObjectRelease();
  v30 = &v19[*(v13 + 48)];
  v31 = *v30;
  v32 = v26;
  if (*v30 < 0)
  {
    sub_219BE7E74();
    swift_getObjectType();
    v52[5] = v31 & 0x7FFFFFFFFFFFFFFFLL;
    v52[3] = sub_219BE9634();
    v52[4] = MEMORY[0x277D6E6C0];
    __swift_allocate_boxed_opaque_existential_1(v52);
    sub_219BE9624();
    sub_219BE6FC4();
    sub_219A30EC0(&qword_27CC228F0, MEMORY[0x277D6D8D8], MEMORY[0x277D6D8D0]);
    sub_219BE7514();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v26, v49);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    v33 = v30[1];
    sub_219BE7E74();
    swift_getObjectType();
    v52[0] = v31;
    v34 = v33;
    v35 = v44;
    sub_219BE93E4();
    sub_219BE6774();
    sub_219A30EC0(&qword_27CC228F8, MEMORY[0x277D6D6B0], MEMORY[0x277D6D6A0]);
    sub_219BE7514();
    swift_unknownObjectRelease();
    (*(v45 + 8))(v35, v46);
    (*(v48 + 8))(v32, v49);
  }

  sub_219A2FF04(v19, sub_218F7CC98);
LABEL_13:
  if ([*(v1 + v20) feedConfiguration] == 11)
  {
    sub_219BE7E74();
    sub_219BE5CC4();
    v52[0] = sub_219BE5CA4();
    v37 = *(v1 + v20);
    swift_getObjectType();
    v38 = v37;
    v39 = sub_219BF63C4();
    v41 = v40;

    *v4 = v39;
    v4[1] = v41;
    v43 = v50;
    v42 = v51;
    (*(v50 + 104))(v4, *MEMORY[0x277D6DCB0], v51);
    sub_219BE7C24();
    sub_219A30EC0(&qword_280EE4E50, MEMORY[0x277D6DCC8], MEMORY[0x277D6DCB8]);
    sub_219BE7514();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v4, v42);
  }

  return result;
}

uint64_t sub_219A2DC84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7)
{
  LODWORD(v93) = a7;
  v95 = a5;
  v96 = a6;
  v91 = a4;
  v94 = a3;
  v8 = sub_219BF3A74();
  v89 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF2BC4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF3154();
  v97 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = v77 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v77 - v20;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v77 - v26;
  if (v23)
  {
    v28 = v23;
    swift_unknownObjectRetain();
    v29 = sub_21988E8A8([a2 feedConfiguration]);
    v99 = MEMORY[0x277D84F90];
    v30 = *(v29 + 16);
    if (v30)
    {
      v92 = qword_280EB63F8;
      v93 = v28;
      v31 = *(v97 + 16);
      v32 = *(v97 + 80);
      v86 = v29;
      v33 = v29 + ((v32 + 32) & ~v32);
      v96 = *(v97 + 72);
      v34 = (v97 + 88);
      LODWORD(v95) = *MEMORY[0x277D33D50];
      LODWORD(v89) = *MEMORY[0x277D33D40];
      LODWORD(v88) = *MEMORY[0x277D33D38];
      v87 = *MEMORY[0x277D33D48];
      v97 += 16;
      v35 = (v97 - 8);
      v90 = MEMORY[0x277D84F90];
      do
      {
        v31(v27, v33, v15);
        v31(v21, v27, v15);
        v37 = (*v34)(v21, v15);
        if (v37 == v95 || v37 == v89 || (v37 != v88 ? (v40 = v37 == v87) : (v40 = 1), v40))
        {
          v38 = sub_219BF4D94();
          v39 = (*v35)(v27, v15);
          if (v38)
          {
            MEMORY[0x21CECC690](v39);
            if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v90 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_219BF5A14();
            }

            sub_219BF5A54();
            v90 = v99;
          }
        }

        else
        {
          v36 = *v35;
          (*v35)(v27, v15);
          v36(v21, v15);
        }

        v33 += v96;
        --v30;
      }

      while (v30);
      swift_unknownObjectRelease();

      return v90;
    }

    else
    {
      swift_unknownObjectRelease();

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v92 = v10;
    if (v95)
    {
      v42 = *(v12 + 104);
      v42(v14, *MEMORY[0x277D33B08], v11, v25);
      swift_unknownObjectRetain();
      v43 = sub_219BF4D84();
      v44 = *(v12 + 8);
      v44(v14, v11);
      v98[4] = v43;
      (v42)(v14, *MEMORY[0x277D33B00], v11);
      v45 = sub_219BF4D84();
      v44(v14, v11);
      v46 = 0;
      v98[5] = v45;
      v47 = MEMORY[0x277D84F90];
      v99 = MEMORY[0x277D84F90];
      while (v46 != 2)
      {
        v48 = v98[v46++ + 4];
        if (v48)
        {
          v49 = v48;
          MEMORY[0x21CECC690]();
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          v47 = v99;
        }
      }

      v50 = v47;
      swift_unknownObjectRelease();
      sub_2186E5128(0, &qword_280E8E878, &qword_280E8E880, 0x277D546C8);
      swift_arrayDestroy();
      return v50;
    }

    else
    {
      result = MEMORY[0x277D84F90];
      if (v96 && (v93 & 1) == 0)
      {
        v95 = v24;
        v85 = v8;
        v51 = MEMORY[0x277D84F90];
        swift_unknownObjectRetain();
        v52 = sub_21988E8A8([a2 feedConfiguration]);
        v99 = v51;
        v53 = *(v52 + 16);
        if (v53)
        {
          v93 = *(v97 + 16);
          v84 = qword_280EB63F8;
          v54 = (*(v97 + 80) + 32) & ~*(v97 + 80);
          v77[1] = v52;
          v55 = v52 + v54;
          v88 = *(v97 + 72);
          v56 = (v97 + 88);
          v87 = *MEMORY[0x277D33D50];
          v81 = *MEMORY[0x277D33D40];
          v79 = *MEMORY[0x277D33D38];
          v78 = *MEMORY[0x277D33D48];
          v97 += 16;
          v57 = (v97 - 8);
          v80 = *MEMORY[0x277D34010];
          v83 = (v89 + 104);
          v82 = (v89 + 8);
          LODWORD(v86) = *MEMORY[0x277D34018];
          v90 = MEMORY[0x277D84F90];
          do
          {
            v58 = v93;
            v93(v18, v55, v15);
            v59 = v95;
            v58(v95, v18, v15);
            v60 = (*v56)(v59, v15);
            v61 = v86;
            if (v60 == v87 || (v61 = v80, v60 == v81))
            {
              v62 = v85;
              v63 = v92;
              (*v83)(v92, v61, v85);
              v64 = sub_219BF4DA4();
              (*v82)(v63, v62);
              v65 = (*v57)(v18, v15);
              if (v64)
              {
                MEMORY[0x21CECC690](v65);
                if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v90 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_219BF5A14();
                }

                sub_219BF5A54();
                v90 = v99;
              }
            }

            else
            {
              v66 = *v57;
              v67 = v60;
              (*v57)(v18, v15);
              if (v67 != v79 && v67 != v78)
              {
                v66(v95, v15);
              }
            }

            v55 += v88;
            --v53;
          }

          while (v53);

          v69 = v90;
        }

        else
        {

          v69 = MEMORY[0x277D84F90];
        }

        v70 = v69;
        v99 = v69;
        swift_getObjectType();
        v71 = sub_219BF68E4();
        v72 = v85;
        v73 = v89;
        v74 = v92;
        if ((v71 & 1) != 0 && ((*(v89 + 104))(v92, *MEMORY[0x277D34008], v85), v75 = sub_219BF4DA4(), (*(v73 + 8))(v74, v72), v75))
        {
          v76 = v75;
          MEMORY[0x21CECC690]();
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();

          swift_unknownObjectRelease();
          return v99;
        }

        else
        {
          swift_unknownObjectRelease();
          return v70;
        }
      }
    }
  }

  return result;
}

uint64_t sub_219A2E68C(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(sub_219BE8834());

  v2 = sub_219BE8824();
  v3 = sub_219BE9284();

  return v3;
}

void sub_219A2E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() areAnimationsEnabled];
    sub_219A28FA4(v6, 2);
  }
}

void sub_219A2E790(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_21881CCEC(0, &qword_280E90548, MEMORY[0x277D336D0]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for NameLogoMastheadModel(0);
  v75 = *(v11 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  v16 = sub_219BF1FB4();
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x28223BE20](v16);
  v77 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v71 - v19;
  sub_21881CCEC(0, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = (&v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  if (a2)
  {
    sub_21999A528(a1, &v82);
    v27 = *&v4[qword_280EB6510];
    v28 = __swift_project_boxed_opaque_existential_1(&v4[qword_280EB6468], *&v4[qword_280EB6468 + 24]);
    LOBYTE(v80) = 0;
    v81 = v27;
    v29 = *v28;
    v30 = *(&v83 + 1);
    v31 = v84;
    v32 = __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    v33 = v27;
    sub_219A8BDA0(v32, &v80, v29, v30, v31);
    v35 = v34;
    sub_219A2F1E4(v4, a3 + 32);
    v37 = sub_219A2F9E8(a3 + 32, v35, sub_219A30308, v36);
    v38 = sub_219BE8644();

    __swift_destroy_boxed_opaque_existential_1(&v82);
    *a3 = a1;
    *(a3 + 8) = 1;
    *(a3 + 16) = v37;
LABEL_25:
    *(a3 + 24) = v38;
    sub_2194B5588(a1, a2 & 1);
    return;
  }

  v71 = v10;
  v72 = v15;
  v74 = a2;
  __swift_project_boxed_opaque_existential_1(&v4[qword_280EB6500], *&v4[qword_280EB6500 + 24]);
  sub_219517A08(a1, *&v4[qword_280EB6440]);
  v40 = v39;
  v41 = *&v39[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
  if (v41)
  {
    sub_218718690(&v4[qword_280EB64D8], &v82);
    v42 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_titleViewProvider;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_219A3028C(&v82, v40 + v42);
    swift_endAccess();
    *(v41 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_delegate + 8) = &off_282A98720;
    swift_unknownObjectWeakAssign();
    sub_218ABB60C(v4);
    v43 = sub_219BF65B4();
    [v43 setHidesSearchBarWhenScrolling_];
    swift_unknownObjectRelease();
  }

  v73 = v40;
  v44 = *&v4[qword_280EB64C8];
  v45 = *&v4[qword_280EB6408];
  v46 = *&v4[qword_280EB6460];
  sub_219A2FFE4(&v4[qword_280EB6488], v20, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2194B5588(a1, 0);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2192471FC(a1, v45, v46, v20, v26);
  sub_219A2FFE4(v26, v23, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
  v47 = type metadata accessor for SuperfeedMastheadModel(0);
  if ((*(*(v47 - 8) + 48))(v23, 1, v47) == 1)
  {
    sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
LABEL_7:
    LOBYTE(a2) = v74;
    v84 = 0;
    v48 = 0.0;
    v82 = 0u;
    v83 = 0u;
LABEL_24:
    v68 = v73;
    v69 = sub_219A2F9E8(&v82, v73, sub_219A30578, v48);
    v38 = sub_219BE8644();

    *a3 = a1;
    *(a3 + 8) = 0;
    v70 = v83;
    *(a3 + 32) = v82;
    *(a3 + 48) = v70;
    *(a3 + 64) = v84;
    *(a3 + 16) = v69;
    goto LABEL_25;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = v78;
  v50 = v79;
  v52 = v77;
  if (EnumCaseMultiPayload <= 8)
  {
    if (((1 << EnumCaseMultiPayload) & 0x1B4) != 0)
    {
      v53 = *v23;
      __swift_project_boxed_opaque_existential_1(v44 + 2, v44[5]);
      sub_2186C709C(0, &qword_280EE05D8, &protocol descriptor for NewsMastheadViewProviderType, 0);
      *(swift_allocObject() + 16) = v53;
      sub_219BE1E14();

      v54 = v80;
      if (v80)
      {
        v55 = v81;
        *(&v83 + 1) = swift_getObjectType();
        v84 = v55[2];
        *&v82 = v54;
LABEL_22:
        sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
        goto LABEL_23;
      }

      sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
      v48 = 0.0;
      v82 = 0u;
      v83 = 0u;
      v84 = 0;
LABEL_23:
      LOBYTE(a2) = v74;
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
      v82 = 0u;
      v83 = 0u;
      v84 = 0;
      sub_219A2FF04(v23, type metadata accessor for SuperfeedMastheadModel);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
      sub_219A2FF04(v23, type metadata accessor for SuperfeedMastheadModel);
      goto LABEL_7;
    }
  }

  if (EnumCaseMultiPayload)
  {
    v61 = v72;
    sub_219A301B8(v23, v72, type metadata accessor for NameLogoMastheadModel);
    v62 = v44[5];
    v79 = v44[6];
    v78 = __swift_project_boxed_opaque_existential_1(v44 + 2, v62);
    v63 = type metadata accessor for NameLogoMastheadViewProvider(0);
    v64 = v76;
    sub_219A30220(v61, v76, type metadata accessor for NameLogoMastheadModel);
    v65 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v66 = swift_allocObject();
    sub_219A301B8(v64, v66 + v65, type metadata accessor for NameLogoMastheadModel);
    v67 = sub_219BE1E04();

    if (v67)
    {
      *(&v83 + 1) = v63;
      v84 = sub_219A30EC0(&unk_27CC22900, type metadata accessor for NameLogoMastheadViewProvider, &unk_219CCBD78);
      *&v82 = v67;
      sub_219A2FF04(v61, type metadata accessor for NameLogoMastheadModel);
      goto LABEL_22;
    }
  }

  else
  {
    (v78[4])(v77, v23, v79);
    __swift_project_boxed_opaque_existential_1(v44 + 2, v44[5]);
    v56 = v52;
    v57 = sub_219BF3514();
    v58 = sub_219BE1E24();
    if (v58)
    {
      v59 = v58;
      v60 = v71;
      (v51[2])(v71, v56, v50);
      (v51[7])(v60, 0, 1, v50);
      sub_219BF3504();
      *(&v83 + 1) = v57;
      v84 = sub_219A30EC0(&qword_280E90178, MEMORY[0x277D33E58], MEMORY[0x277D33E50]);
      *&v82 = v59;
      (v51[1])(v56, v50);
      goto LABEL_22;
    }

    __break(1u);
  }

  __break(1u);
}