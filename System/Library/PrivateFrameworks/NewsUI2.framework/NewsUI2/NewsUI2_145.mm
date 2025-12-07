uint64_t sub_2196F0150(id a1, unint64_t a2)
{
  if (a2)
  {
    v15 = MEMORY[0x277D84F90];
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v6 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CECE0F0](v6, a2);
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            goto LABEL_17;
          }

          v7 = *(a2 + 8 * v6 + 32);
        }

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v7 == a1)
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        ++v6;
        if (v8 == i)
        {
          v9 = v15;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_20:
    sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C146A0;
    *(inited + 32) = a1;
    v14 = a1;
    sub_2191EDAB0(inited);
    return v9;
  }

  else
  {
    sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C146A0;
    *(v10 + 32) = a1;
    v11 = a1;
    return v10;
  }
}

uint64_t sub_2196F0340(id a1, unint64_t a2)
{
  result = MEMORY[0x277D84F90];
  if (a2)
  {
    v10 = MEMORY[0x277D84F90];
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      for (j = 0; ; ++j)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x21CECE0F0](j, a2);
        }

        else
        {
          if (j >= *(v5 + 16))
          {
            goto LABEL_16;
          }

          v8 = *(a2 + 8 * j + 32);
        }

        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v8 == a1)
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        if (v9 == i)
        {
          return v10;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2196F0470(char a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v4 = [objc_opt_self() areAnimationsEnabled];
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 traitCollection];

  v8 = [v7 horizontalSizeClass];
  v9 = v8 == 1;
LABEL_7:
  v10 = [v2 tabBarController];
  [v10 setTabBarHidden:v9 animated:v4];

  v11 = sub_219BF6544();
  [v11 setToolbarHidden:a1 & 1 animated:v4];
}

void sub_2196F05A0(uint64_t a1, char a2)
{
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v8[4] = sub_2196F4248;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218A1DA70;
  v8[3] = &block_descriptor_158;
  v7 = _Block_copy(v8);

  [v4 setCollectionViewLayout:a1 animated:1 completion:v7];
  _Block_release(v7);
}

void sub_2196F06DC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_219BE8664();
    v6 = sub_219BE7BC4();

    v7 = v5;
    [v6 setAllowsMultipleSelection_];

    sub_2196F08C0();
    v8 = [v7 isEditing];

    v9 = v8 ^ 1;
    if ((v8 ^ 1))
    {
      v14 = 0;
    }

    else
    {
      v10 = [v7 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = [v10 traitCollection];

      v13 = [v12 horizontalSizeClass];
      v14 = v13 == 1;
    }

    v15 = [v7 tabBarController];
    [v15 setTabBarHidden:v14 animated:0];

    v16 = sub_219BF6544();
    [v16 setToolbarHidden:v9 animated:0];

    if (a3)
    {
      sub_219BE8664();
      v17 = sub_219BE7BC4();

      [v17 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

      v7 = v17;
    }
  }
}

void sub_2196F08C0()
{
  sub_2196F4254(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v31 - v2;
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController);
  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v8 = [v7 indexPathsForSelectedItems];

  if (v8)
  {
    sub_219BDC104();
    v9 = sub_219BF5924();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v31 = *(v9 + 16);
  v32 = v9;
  v10 = v31 != 0;
  v11 = sub_2196EE614(&OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeDownloadsBarButtonItem, &selRef_doRemoveDownloadsAction);
  [v11 setEnabled_];

  v12 = sub_2196EE614(&OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeIssuesAndDownloadsBarButtonItem, &selRef_doRemoveIssuesAndDownloadsAction);
  [v12 setEnabled_];

  v13 = sub_2196EE534();
  sub_219BEAF54();
  sub_219BEAB54();
  v38 = sub_2196F1988();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E118], v3);
  LOBYTE(v12) = sub_219BE89A4();

  (*(v4 + 8))(v6, v3);

  [v13 setEnabled_];

  v14 = sub_2196EE780();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  if (v31)
  {
    sub_219BDB5E4();

    sub_2186F20D4(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    v18 = v32;
    v19 = *(v32 + 16);
    v20 = MEMORY[0x277D83C10];
    *(v17 + 56) = MEMORY[0x277D83B88];
    *(v17 + 64) = v20;
    *(v17 + 32) = v19;
    sub_219BF5454();
  }

  else
  {
    sub_219BDB5E4();

    v18 = v32;
  }

  v21 = sub_219BF53D4();

  [v14 setText_];

  v22 = sub_2196EE780();
  [v22 sizeToFit];

  sub_219BE86A4();
  v37 = v38;
  sub_2189870F0(0);
  sub_2196F3EC0(&unk_27CC11EB0, 255, sub_2189870F0, MEMORY[0x277D6D8C8]);
  v23 = v34;
  sub_219BE7B94();

  v24 = v36;
  v25 = sub_219BEB184();
  (*(v35 + 8))(v23, v24);
  v26 = sub_218C3E380(v25);

  v27 = sub_218C3E380(v18);

  sub_21947C774(v26, v27);

  v28 = sub_2196EE258();
  v29 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v30 = sub_219BF53D4();

  [v28 setTitle_];
}

double sub_2196F0F70()
{
  v1 = v0;
  v2 = sub_219BDC104();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196F4254(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController);
  sub_219BE8664();
  v11 = sub_219BE7BC4();

  v12 = [v11 indexPathsForSelectedItems];

  if (v12)
  {
    v13 = sub_219BF5924();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  sub_219BE86A4();
  v34 = v10;
  v35 = v36;
  sub_2189870F0(0);
  sub_2196F3EC0(&unk_27CC11EB0, 255, sub_2189870F0, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v14 = sub_219BEB184();
  (*(v7 + 8))(v9, v6);

  v16 = sub_218C3E380(v15);

  v18 = sub_218C3E380(v17);

  sub_21947C774(v16, v18);
  v20 = v19;

  if (v20)
  {

    sub_219BE8664();
    v21 = sub_219BE7BC4();

    [v21 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

    v22 = v13;
  }

  else
  {
    v31 = v1;

    v32 = v14;
    v23 = *(v14 + 16);
    if (v23)
    {
      v24 = *(v33 + 16);
      v25 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v26 = *(v33 + 72);
      v27 = (v33 + 8);
      do
      {
        v24(v4, v25, v2);
        sub_219BE8664();
        v28 = sub_219BE7BC4();

        v29 = sub_219BDC094();
        (*v27)(v4, v2);
        [v28 selectItemAtIndexPath:v29 animated:1 scrollPosition:0];

        v25 += v26;
        --v23;
      }

      while (v23);
    }

    v22 = v32;
  }

  sub_2196F1348(v22);

  return result;
}

void sub_2196F1348(uint64_t a1)
{
  v2 = v1;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  v5 = [v4 collectionViewLayout];

  [v5 copy];
  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_2196F41E8(0);
  swift_dynamicCast();
  v6 = v30;
  [v2 isEditing];
  sub_219BEA1F4();

  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = &v30;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2196F436C;
  *(v10 + 24) = v9;
  v28 = sub_218807D50;
  v29 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_218807CE4;
  v27 = &block_descriptor_20_1;
  v11 = _Block_copy(&aBlock);

  [v7 performBatchUpdates:v11 completion:0];
  _Block_release(v11);

  sub_219BE8664();
  v12 = sub_219BE7BC4();

  [v12 contentOffset];
  v14 = v13;
  v16 = v15;

  sub_219BE8664();
  v17 = sub_219BE7BC4();

  v18 = v30;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v14;
  v20[4] = v16;
  v28 = sub_2196F4378;
  v29 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_218A1DA70;
  v27 = &block_descriptor_27_2;
  v21 = _Block_copy(&aBlock);
  v22 = v18;

  [v17 setCollectionViewLayout:v22 animated:0 completion:v21];
  _Block_release(v21);

  sub_2196F08C0();
  v23 = v30;

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }
}

void sub_2196F17D0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE89F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEAF54();
  sub_219BEAB54();
  v7 = sub_2196F1988();
  (*(v3 + 104))(v5, *MEMORY[0x277D6E118], v2);
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  sub_219BE89D4();

  (*(v3 + 8))(v5, v2);

  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setEditing_animated_, 0, 1);
  sub_2196EF774(0, 1, 1);
}

uint64_t sub_2196F1988()
{
  v0 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC(0);
  v4 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196F4254(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v44 = v6;
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  sub_219BE8664();
  v10 = sub_219BE7BC4();

  v11 = [v10 indexPathsForSelectedItems];

  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    sub_219BDC104();
    sub_219BF5924();
  }

  sub_219BE86A4();
  v46 = v47;
  sub_2189870F0(0);
  sub_2196F3EC0(&unk_27CC11EB0, 255, sub_2189870F0, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v13 = v44;
  v14 = sub_219BEB374();

  (*(v7 + 8))(v9, v13);
  v47 = v12;
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v42 + 16);
    v17 = *(v42 + 80);
    v38 = v14;
    v18 = v14 + ((v17 + 32) & ~v17);
    v43 = *(v42 + 72);
    v44 = v16;
    v19 = (v42 + 8);
    v40 = v0;
    v41 = MEMORY[0x277D84F90];
    v39 = v4;
    v42 += 16;
    do
    {
      v24 = v45;
      v44(v45, v18, v4);
      sub_219BE5FC4();
      (*v19)(v24, v4);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v26 = *v2;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          sub_2189E9530(*(v2 + 4), *(v2 + 5), *(v2 + 6));
          sub_2189E9570(0);
          v21 = *(v20 + 64);
          v22 = *&v2[*(v20 + 80) + 32];

          v23 = sub_219BF0744();
          (*(*(v23 - 8) + 8))(&v2[v21], v23);
        }

        else
        {

          sub_2189E93F4(0);
          v28 = *(v27 + 48);
          v29 = *&v2[*(v27 + 64) + 32];

          v30 = sub_219BF0444();
          (*(*(v30 - 8) + 8))(&v2[v28], v30);
        }
      }

      else
      {
        v31 = *(v2 + 2);
        sub_2189E96A0(0);
        v33 = *(v32 + 48);
        v34 = *&v2[*(v32 + 64) + 32];

        v35 = sub_219BF0744();
        v36 = (*(*(v35 - 8) + 8))(&v2[v33], v35);
        MEMORY[0x21CECC690](v36);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v41 = v47;
        v4 = v39;
      }

      v18 += v43;
      --v15;
    }

    while (v15);

    return v41;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

double sub_2196F1F80(unsigned int *a1, uint64_t a2)
{
  v13[1] = a2;
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196F1988();
  sub_2196F4318(0, &unk_280E8BD80, MEMORY[0x277D31B20]);
  v7 = sub_219BEAAD4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  (*(v8 + 104))(v10 + v9, *a1, v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BEAB14();
  swift_allocObject();
  v11 = sub_219BEAAE4();
  sub_219BEAB24();
  v13[3] = v11;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E118], v3);
  v14 = 0u;
  v15 = 0u;
  v16 = 1;

  sub_219BE89D4();

  (*(v4 + 8))(v6, v3);

  return result;
}

void sub_2196F2218(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3.receiver = Strong;
    v3.super_class = type metadata accessor for MagazineGridViewController();
    objc_msgSendSuper2(&v3, sel_setEditing_animated_, 0, 1);
    sub_2196EF774(0, 1, 1);
  }
}

void sub_2196F2300(uint64_t a1, uint64_t a2, id *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(a2 + 16))
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D75310]) init];
      sub_219BDC104();
      v8 = sub_219BF5904();
      [v7 invalidateItemsAtIndexPaths_];

      [*a3 invalidateLayoutWithContext_];
    }
  }
}

void sub_2196F23CC(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setContentOffset_];
  }
}

uint64_t sub_2196F2474()
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
  v7[4] = sub_2196F3EC0(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
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

uint64_t sub_2196F27CC()
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

uint64_t sub_2196F29A8()
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

uint64_t sub_2196F2BCC(uint64_t a1, unint64_t a2)
{
  v21 = sub_219BEB384();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200(0);
  v12 = &v8[*(v11 + 48)];
  v13 = *(v11 + 64);
  sub_219BE66B4();
  v14 = sub_219BE6C74();
  v15 = MEMORY[0x277D6D7C0];
  v12[3] = v14;
  v12[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_219BE6C64();
  v16 = *MEMORY[0x277D6D9C8];
  v17 = sub_219BE73A4();
  (*(*(v17 - 8) + 104))(&v8[v13], v16, v17);
  (*(v6 + 104))(v8, *MEMORY[0x277D6EC90], v5);
  v18 = v21;
  (*(v2 + 104))(v4, *MEMORY[0x277D6ECA8], v21);
  sub_219BE6BD4();

  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v8, v5);
}

void sub_2196F2FD0(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 reloadData];
}

void sub_2196F303C(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController);

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    [v6 *a2];
  }
}

void sub_2196F30DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [v3 tabBarSplitViewFocusable];
  if (v5)
  {
    [v5 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  if ([v3 isEditing])
  {
    sub_2196F4318(0, &qword_27CC0DCE8, MEMORY[0x277CC9AF8]);
    v6 = sub_219BDC104();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    (*(v7 + 16))(v9 + v8, a3, v6);
    sub_2196F1348(v9);
  }

  else
  {
    v10 = *&v3[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler];
    __swift_project_boxed_opaque_existential_1(v10 + 11, v10[14]);
    sub_2189E8E84();
    __swift_project_boxed_opaque_existential_1(v10 + 6, v10[9]);
    sub_2199C2688();
  }
}

double sub_2196F3288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [v3 tabBarSplitViewFocusable];
  if (v5)
  {
    [v5 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  if ([v3 isEditing])
  {
    sub_2196F4318(0, &qword_27CC0DCE8, MEMORY[0x277CC9AF8]);
    v7 = sub_219BDC104();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    (*(v8 + 16))(v10 + v9, a3, v7);
    sub_2196F1348(v10);
  }

  return result;
}

void sub_2196F33F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(ObjectType, v11);
    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v13 = *(*(v3 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler) + 40);
    v14 = swift_getObjectType();
    (*(v13 + 32))(v14, v13);
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
          sub_219BF7514();
          __break(1u);
        }
      }
    }
  }
}

void sub_2196F36C8(uint64_t a1, char a2)
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
    v10[4] = sub_2196F3EC0(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
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

void sub_2196F3A24(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig) == 1)
  {
    v2 = [v1 navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 navigationBar];

      sub_219BF6C44();
    }
  }
}

uint64_t sub_2196F3BCC@<X0>(uint64_t *a2@<X8>)
{
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  *a2 = v3;
  v4 = *MEMORY[0x277D6DA10];
  v5 = sub_219BE74B4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

void sub_2196F3C70(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_219BF6544();

    if (v3)
    {
      v4 = [v3 popViewControllerAnimated_];
    }
  }
}

double sub_2196F3CF4()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE7444();

  return result;
}

uint64_t sub_2196F3E28()
{
  v1 = (*v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier);
  if (v1[1])
  {
    v2 = *v1;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2196F3EC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2196F3F08(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = *&v3[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v7 + 40);
    v10 = swift_getObjectType();
    v11 = *(v9 + 48);

    v11(a1, sub_2196F41C4, v8, v10, v9);

    return;
  }

  v12 = ObjectType;
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_17;
  }

  v24 = ObjectType;
  v26 = MEMORY[0x277D84F90];
  sub_219BF73F4();
  v14 = (a1 + 32);
  v15 = OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem;
  do
  {
    v19 = *v14++;
    v18 = v19;
    if (v19 <= 1)
    {
      if (!v18)
      {
        sub_2196EE534();
        goto LABEL_6;
      }

      v20 = &OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeDownloadsBarButtonItem;
      v21 = &selRef_doRemoveDownloadsAction;
      goto LABEL_15;
    }

    if (v18 == 2)
    {
      v20 = &OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeIssuesAndDownloadsBarButtonItem;
      v21 = &selRef_doRemoveIssuesAndDownloadsAction;
LABEL_15:
      sub_2196EE614(v20, v21);
      goto LABEL_6;
    }

    if (v18 == 3)
    {
      [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    }

    else
    {
      v16 = sub_2196EE6F0();
      [v16 setHidesSharedBackground_];

      [*&v3[v15] setSharesBackground_];
      v17 = *&v3[v15];
    }

LABEL_6:
    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
    --v13;
  }

  while (v13);
  v12 = v24;
LABEL_17:
  v22 = sub_219BF6514();
  sub_219399E20();
  v23 = sub_219BF5904();

  [v22 setToolbarItems_];

  LODWORD(v22) = [v3 isEditing];
  v25.receiver = v3;
  v25.super_class = v12;
  objc_msgSendSuper2(&v25, sel_setEditing_animated_, v22 ^ 1, 1);
  sub_2196EF774(v22 ^ 1, 1, 1);
}

void sub_2196F41E8(uint64_t a1)
{
  if (!qword_27CC14F18)
  {
    sub_219BE9C54();
    v1 = sub_219BEA224();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14F18);
    }
  }
}

void sub_2196F4254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel(255);
    v8[2] = sub_21895164C();
    v8[3] = sub_2196F3EC0(&unk_27CC0B810, 255, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2196F4318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2196F43A8()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectAllBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___doneBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___downloadBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeIssuesAndDownloadsBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeDownloadsBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountLabel) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_2196F4468()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_styler], v19);
  v4 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v5 = [v0 view];
  if (v5)
  {
    v7 = v5;
    v8 = sub_2196F3EC0(&qword_27CC1E408, v6, type metadata accessor for MagazineGridViewController, &unk_219C9E430);
    v9 = MEMORY[0x21CEBCBD0](ObjectType, v8);
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() clearColor];
      [v7 setBackgroundColor_];

      v7 = v10;
    }

    else
    {
      [v7 setBackgroundColor_];
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v12 = __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
    sub_219BE8664();
    v13 = sub_219BE7BC4();

    v14 = MEMORY[0x21CEBCBD0](ObjectType, v8);
    if (v14)
    {
      v15 = [objc_opt_self() clearColor];
      [v13 setBackgroundColor_];
    }

    else
    {
      [v13 setBackgroundColor_];
    }

    [v13 setAlwaysBounceVertical_];

    v16 = __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
    v17 = [v1 navigationItem];
    v18 = *(*__swift_project_boxed_opaque_existential_1((*v16 + 16), *(*v16 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2196F475C(unint64_t a1, char *a2, char a3)
{
  v6 = sub_219BDBF94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBF34();
  sub_219BDBE64();
  (*(v7 + 8))(v9, v6);
  if (a3)
  {
    v17 = a2;

    sub_2195EB2C4(sub_2196F55B0, v16, a1);
  }

  else
  {
    v17 = v13;

    sub_2195EB2C4(sub_2196F55D0, v16, a1);
  }

  sub_219BF4044();
  sub_218E5B244();
  v14 = sub_219BF5994();

  (*(v11 + 8))(v13, v10);
  return v14;
}

BOOL sub_2196F49F8(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  v28 = a2;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = sub_219BF4AC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v25 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = sub_219BDBD34();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *a1;
  sub_219BF3FA4();
  sub_219BF4AB4();
  v18 = *(v9 + 8);
  v26 = v8;
  v18(v13, v8);
  v19 = *(v15 + 48);
  if (v19(v7, 1, v14) == 1)
  {
    sub_2189DD39C(v7);
    return 0;
  }

  (*(v15 + 32))(v17, v7, v14);
  sub_218E5B244();
  if (sub_219BF5334())
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  v28 = v19;
  v21 = v25;
  sub_219BF3FA4();
  v22 = v27;
  sub_219BF4AA4();
  v18(v21, v26);
  (*(v15 + 8))(v17, v14);
  v23 = v28(v22, 1, v14) == 1;
  sub_2189DD39C(v22);
  return v23;
}

uint64_t sub_2196F4D2C(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4AC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  sub_219BF4AA4();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_2189DD39C(v4);
    v13 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v4, v9);
    sub_218E5B244();
    v14 = sub_219BF5334();
    (*(v10 + 8))(v12, v9);
    v13 = v14 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_2196F4F90@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF4AC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  sub_219BF4AB4();
  (*(v8 + 8))(v10, v7);
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v6, v11);
  }

  a1();
  result = (v13)(v6, 1, v11);
  if (result != 1)
  {
    return sub_2189DD39C(v6);
  }

  return result;
}

uint64_t sub_2196F5174(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574656C706D6F63;
  }

  else
  {
    v3 = 0x676E696D6F637075;
  }

  if (v2)
  {
    v4 = 0xEE007365726F6353;
  }

  else
  {
    v4 = 0xEF7365726F635364;
  }

  if (*a2)
  {
    v5 = 0x6574656C706D6F63;
  }

  else
  {
    v5 = 0x676E696D6F637075;
  }

  if (*a2)
  {
    v6 = 0xEF7365726F635364;
  }

  else
  {
    v6 = 0xEE007365726F6353;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_2196F5234()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2196F52D0(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2196F5358(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_2196F53F0(char *a2@<X8>)
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

void sub_2196F5450(uint64_t *a1@<X8>)
{
  v2 = 0x676E696D6F637075;
  if (*v1)
  {
    v2 = 0x6574656C706D6F63;
  }

  v3 = 0xEE007365726F6353;
  if (*v1)
  {
    v3 = 0xEF7365726F635364;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_2196F555C()
{
  result = qword_27CC1E428;
  if (!qword_27CC1E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E428);
  }

  return result;
}

unint64_t sub_2196F55F0()
{
  result = qword_27CC1E430;
  if (!qword_27CC1E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E430);
  }

  return result;
}

uint64_t sub_2196F5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDE294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_2187FAD00(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 104))(v9, *MEMORY[0x277D2FF08], v6);
  (*(a3 + 112))(a1, v12, v9, a2, a3);
  (*(v7 + 8))(v9, v6);
  return sub_218817724(v12, &unk_280EE58B0, sub_2187FAD00);
}

uint64_t _s7NewsUI216RestorationEventO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](a1);
  return sub_219BF7AE4();
}

uint64_t sub_2196F58EC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_2196F5850(v3, *v1);
  return sub_219BF7AE4();
}

uint64_t sub_2196F5934()
{
  sub_21880B928(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v9[1] = v9[3];
  v5 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v5, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v6 = off_282A6CF28;
  type metadata accessor for TodayDataManager();
  v7 = v6(v4);
  (*(v2 + 8))(v4, v1);
  return v7;
}

void sub_2196F5B14(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839B0];
  *(v4 + 16) = xmmword_219C09BA0;
  v6 = MEMORY[0x277D839F0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314("Today feed check if auto refresh is allowed, result=%d", v7);

  *a2 = v3;
}

uint64_t sub_2196F5C28()
{
  v1 = sub_219BF0644();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  sub_21880B928(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  v14 = sub_219BE7B04();
  if (v14 >> 62 != 1)
  {
    sub_21880BB00(v14);
    goto LABEL_7;
  }

  v30 = v7;
  v31 = v4;
  v32 = v2;
  sub_219BE6EC4();
  v33 = v34;
  v15 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v15, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v16 = sub_218827310();
  (*(v10 + 8))(v12, v9);
  if ((~v16 & 0xF000000000000007) == 0)
  {
LABEL_7:
    v24 = 0;
    return v24 & 1;
  }

  v17 = *(v0 + *((*v13 & *v0) + 0x78));
  v34 = *__swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v17 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
  v18 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  if (v18(0) == 6)
  {
    v19 = sub_219BF1AE4();
    v21 = v31;
    v20 = v32;
    v22 = v30;
    if (v19)
    {
      v23 = MEMORY[0x277D32EF8];
    }

    else
    {
      v23 = MEMORY[0x277D32EF0];
    }

    (*(v32 + 104))(v30, *v23, v1);
  }

  else
  {
    v20 = v32;
    v22 = v30;
    (*(v32 + 104))(v30, *MEMORY[0x277D32EF0], v1);
    v21 = v31;
  }

  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEE844();
  sub_2187E1408(&unk_280E90EE0, MEMORY[0x277D32F00], MEMORY[0x277D32F10]);
  v25 = sub_219BF53A4();
  v26 = sub_21885AB78(v16);
  v27 = *(v20 + 8);
  v27(v21, v1, v26);
  (v27)(v22, v1);
  v24 = v25 ^ 1;
  return v24 & 1;
}

uint64_t sub_2196F6054()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x118);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = v0;
    sub_21880BB54(0, &qword_280E91C08, MEMORY[0x277D32018]);
    swift_allocObject();
    v2 = sub_219BEE444();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_2196F6108()
{
  v1 = [*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x128)) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 smarterMessagingConfig];
    swift_unknownObjectRelease();
    v3 = [v2 todayFeedMastheadBannerEnabledForSubscribers];

    return v3;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_2196F61C8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v42 = a1;
  v39 = a3;
  v6 = *a2;
  v7 = *MEMORY[0x277D85000];
  sub_21881DBDC(0);
  v41 = v8 - 8;
  MEMORY[0x28223BE20](v8 - 8);
  v40 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayExpandContext(0);
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v13 = v12;
  v35 = *(v12 - 8);
  v14 = v35;
  MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v6;
  v33 = v7;
  v31[1] = *(a2 + *((v7 & v6) + 0xC8));
  v38 = *(a2 + *((v7 & v6) + 0x68));
  sub_219BE6EC4();
  v44 = v45;
  v17 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  v37 = v18;
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v17, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_21880BAC8();
  sub_219BE7AE4();
  v19 = *(v14 + 8);
  v20 = v13;
  v19(v16, v13);
  sub_219BE7B14();
  v43 = a2;
  sub_219BE3204();
  v21 = v34;
  sub_2187F684C(v39, v34, type metadata accessor for TodayExpandContext);
  v22 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v23 = swift_allocObject();
  v25 = v32;
  v24 = v33;
  *(v23 + 16) = *((v33 & v32) + 0x50);
  *(v23 + 24) = *((v24 & v25) + 0x58);
  *(v23 + 32) = a4;
  *(v23 + 40) = a2;
  sub_21880BBE4(v21, v23 + v22, type metadata accessor for TodayExpandContext);
  v26 = a2;
  v27 = sub_219BE2E54();
  sub_219BE2F74();

  sub_219BE6EC4();
  v44 = v45;
  sub_219BE7B94();

  v28 = *(v41 + 56);
  v29 = v40;
  sub_2188482CC(v42, v40);
  (*(v35 + 32))(v29 + v28, v16, v20);
  sub_2187DD4F0(0, &unk_280EE6EA0, sub_21881DBDC, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2196F6678(unsigned __int8 *a1, void *a2, double a3)
{
  v3 = *MEMORY[0x277D85000] & *a2;
  v4 = *a1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 32) = v8;
  v9 = MEMORY[0x277D839F0];
  *(v5 + 96) = v7;
  *(v5 + 104) = v9;
  *(v5 + 72) = v4;
  sub_219BF6214();
  sub_219BE5314("Today feed successfully with visible duration %fms, shouldAttemptAutoRefresh=%d", v13, v14);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    type metadata accessor for TodayInteractor(0, *(v3 + 80), *(v3 + 88), v11);
    sub_218844CD0(v4, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2196F684C(void *a1, void *a2, double a3)
{
  v4 = sub_219BF1584();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B9E0(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  sub_219BE7B14();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v12 = qword_280F616D8;
  v13 = sub_219BF61F4();
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v15 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v15;
  *(v14 + 32) = v16;
  v22 = 0;
  v23 = 0xE000000000000000;
  v21[1] = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v17 = v22;
  v18 = v23;
  *(v14 + 96) = MEMORY[0x277D837D0];
  *(v14 + 104) = sub_2186FC3BC();
  *(v14 + 72) = v17;
  *(v14 + 80) = v18;
  sub_219BE5314("Error while prewarming today feed with visible duration %fms, error=%{public}@", 78, 2, &dword_2186C1000, v12, v13, v14);

  v19 = off_282A6CF18;
  type metadata accessor for TodayDataManager();
  v19();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_27CC08700 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27CC1DDF0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_21971571C();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_21971571C();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_2196F6C90(void *a1)
{
  v2 = CACurrentMediaTime();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v3 = qword_280F616D8;
  v4 = sub_219BF6214();
  sub_219BE5314("Today feed will wait for tx flush before resuming low-priority work", 67, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);
  v5 = [objc_opt_self() sharedApplication];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  v9[4] = sub_219715F0C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218793E0C;
  v9[3] = &block_descriptor_159;
  v7 = _Block_copy(v9);
  v8 = a1;

  [v5 ts:v7 installCACommitCompletionBlock:?];
  _Block_release(v7);
}

uint64_t sub_2196F6E0C(double a1)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v2 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v2;
  *(v1 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314("Today feed did wait for tx flush with duration %fms", v5);

  return sub_2196F6F20();
}

uint64_t sub_2196F6F20()
{
  v22 = *v0;
  v1 = *MEMORY[0x277D85000];
  v2 = sub_219BED174();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED214();
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  sub_2187D9028();
  v23 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v15 = *(v9 + 8);
  v15(v11, v8);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = v1 & v22;
  v17[2] = *((v1 & v22) + 0x50);
  v17[3] = *(v18 + 88);
  v17[4] = v16;
  aBlock[4] = sub_219715F18;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_29_0;
  v19 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2187E1408(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2187DD4F0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  v20 = v23;
  MEMORY[0x21CECD420](v14, v7, v4, v19);
  _Block_release(v19);

  (*(v27 + 8))(v4, v2);
  (*(v25 + 8))(v7, v26);
  return (v15)(v14, v24);
}

void sub_2196F733C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v58 = a7;
  v59 = a8;
  v15 = *v8;
  v16 = *MEMORY[0x277D85000];
  v17 = *MEMORY[0x277D85000] & v15;
  v18 = sub_219BE9F74();
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v53 = v19;
  v55 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v9 + *((v16 & v15) + 0x68));
  sub_219BE6EC4();
  LODWORD(v16) = sub_218982990();

  v54 = v16;
  if ((v16 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219714678(0, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v21 = CACurrentMediaTime();
  sub_219BE6084();
  v22 = *(v17 + 88);
  v23 = *(v22 + 40);
  v51 = *(v17 + 80);
  v52 = v22;
  *&v60 = COERCE_DOUBLE(v23());

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v50 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09EC0;
  v61 = 0.0;
  v62 = -2.68156159e154;
  sub_219BF7484();
  v49 = a6;
  v25 = v18;
  v27 = v61;
  v26 = v62;
  v28 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v29 = sub_2186FC3BC();
  *(v24 + 64) = v29;
  *(v24 + 32) = v27;
  *(v24 + 40) = v26;
  v65 = 0;
  v66 = 0xE000000000000000;
  v61 = a1;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  type metadata accessor for CGRect(0);
  sub_219BF7484();
  v30 = v65;
  v31 = v66;
  *(v24 + 96) = v28;
  *(v24 + 104) = v29;
  *(v24 + 72) = v30;
  *(v24 + 80) = v31;
  v32 = sub_219BF6214();
  sub_219BE5314("Today feed relayout from trigger %{public}@ with bounds %{public}@", 66, 2, &dword_2186C1000, v50, v32, v24);

  v61 = *&v60;
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = v55;
  v34 = v56;
  (*(v56 + 16))(v55, v49, v25);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = (v53 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 39) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v52;
  *(v40 + 16) = v51;
  *(v40 + 24) = v41;
  (*(v34 + 32))(v40 + v36, v35, v25);
  v42 = (v40 + v37);
  *v42 = a1;
  v42[1] = a2;
  v42[2] = a3;
  v42[3] = a4;
  *(v40 + v38) = v21;
  v43 = (v40 + v39);
  v44 = v58;
  v45 = v59;
  *v43 = v58;
  v43[1] = v45;
  v46 = v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v46 = v33;
  *(v46 + 8) = BYTE1(v54) & 1;
  sub_2188202A8(v44);
  v47 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v47, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

void sub_2196F789C(uint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v42 = a7;
  v43 = a8;
  v44 = a6;
  v45 = a5;
  v46 = a4;
  v48 = a1;
  v49 = a3;
  v17 = sub_219BE85F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v47 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C0EE20;
  v51 = 0.0;
  v52 = -2.68156159e154;
  sub_219BE9F74();
  sub_219BF7484();
  v22 = v51;
  v21 = v52;
  v23 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v24 = sub_2186FC3BC();
  *(v20 + 64) = v24;
  *(v20 + 32) = v22;
  *(v20 + 40) = v21;
  v55 = 0;
  v56 = 0xE000000000000000;
  v51 = a9;
  v52 = a10;
  v53 = a11;
  v54 = a12;
  type metadata accessor for CGRect(0);
  sub_219BF7484();
  v25 = v55;
  v26 = v56;
  *(v20 + 96) = v23;
  *(v20 + 104) = v24;
  *(v20 + 72) = v25;
  *(v20 + 80) = v26;
  v51 = 0.0;
  v52 = -2.68156159e154;
  v27 = v48;
  sub_219BF7484();
  v28 = v51;
  v29 = v52;
  *(v20 + 136) = v23;
  *(v20 + 144) = v24;
  *(v20 + 112) = v28;
  *(v20 + 120) = v29;
  sub_219BF5CD4();
  v30 = MEMORY[0x277D83A80];
  *(v20 + 176) = MEMORY[0x277D839F8];
  *(v20 + 184) = v30;
  *(v20 + 152) = v31;
  v32 = sub_219BF6214();
  sub_219BE5314("Today feed visible relayout from trigger %{public}@ with bounds %{public}@, result=%{public}@, time=%fms", 104, 2, &dword_2186C1000, v47, v32, v20);

  if (v49)
  {
    (v49)(v33);
  }

  v34 = v50;
  (*(v18 + 16))(v50, v27, v17);
  v35 = (*(v18 + 88))(v34, v17);
  if (v35 != *MEMORY[0x277D6DF98] && (v35 == *MEMORY[0x277D6DF90] || v35 == *MEMORY[0x277D6DFA0]))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (v44)
      {
        v37 = Strong;
        v38 = swift_unknownObjectWeakLoadStrong();
        if (v38)
        {
          v40 = v38;
          type metadata accessor for TodayInteractor(0, v42, v43, v39);
          v41 = v37;
          sub_218844CD0(0, v40);

          swift_unknownObjectRelease();
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

  else
  {
    (*(v18 + 8))(v34, v17);
  }
}

uint64_t sub_2196F7C9C(void *a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v116 = a1;
  ObjectType = swift_getObjectType();
  v114 = *MEMORY[0x277D85000] & *v3;
  v115 = v3;
  v5 = type metadata accessor for TodayExpandContext(0);
  v103 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = v6;
  v111 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400(0);
  v8 = v7;
  v107 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v102 = v9;
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TodayExpandRequest(0);
  MEMORY[0x28223BE20](v101);
  v113 = (&v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_219BE5354();
  v98 = *(v99 - 1);
  MEMORY[0x28223BE20](v99);
  v97 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v87 - v13;
  v14 = sub_219BE5384();
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = *(v108 + 64);
  MEMORY[0x28223BE20](v14);
  v106 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v87 - v17;
  v19 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for TodayGapLocation(0);
  v100 = *(v22 - 8);
  v23 = *(v100 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21880BA68(v21, type metadata accessor for TodayModel);
    v27 = v116[3];
    v28 = v116[4];
    __swift_project_boxed_opaque_existential_1(v116, v27);
    MEMORY[0x21CEC0B20](0, v27, v28);
    type metadata accessor for TodayInteractor.Errors(0, *(v114 + 80), *(v114 + 88), v29);
    swift_getWitnessTable();
    swift_allocError();
    *v30 = 2;
    sub_2187DD4F0(0, &qword_280EE6EC8, type metadata accessor for TodayExpandResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }

  else
  {
    v32 = v96;
    v92 = v23;
    v93 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v90 = v15;
    v94 = v18;
    v95 = a2;
    v33 = v116;
    v34 = v21[1];
    v89 = *v21;
    v88 = v34;
    sub_2186EA920(0);
    sub_21880BBE4(v21 + *(v35 + 48), v26, type metadata accessor for TodayGapLocation);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v36 = qword_280F616D8;
    sub_219BE5364();
    sub_219BE5374();
    v37 = v32;
    sub_219BE5334();
    v38 = sub_219BE5374();
    v39 = sub_219BF67E4();
    v40 = sub_219BF6F34();
    v41 = v8;
    v42 = v105;
    if (v40)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_219BE5344();
      _os_signpost_emit_with_name_impl(&dword_2186C1000, v38, v39, v44, "News.TodayFeed.Interactor.Expand", "", v43, 2u);
      MEMORY[0x21CECF960](v43, -1, -1);
    }

    v45 = v98;
    v46 = v99;
    (*(v98 + 2))(v97, v37, v99);
    sub_219BE53C4();
    swift_allocObject();
    v97 = sub_219BE53B4();
    (*(v45 + 1))(v37, v46);
    v47 = v101;
    v48 = v113;
    v49 = v113 + *(v101 + 20);
    v99 = type metadata accessor for TodayGapLocation;
    sub_2187F684C(v26, v49, type metadata accessor for TodayGapLocation);
    v50 = *(v47 + 24);
    v91 = v26;
    v51 = sub_2187F684C(v42, v48 + v50, type metadata accessor for TodayExpandContext);
    v52 = v88;
    *v48 = v89;
    v48[1] = v52;
    MEMORY[0x28223BE20](v51);
    *(&v87 - 2) = v115;
    *(&v87 - 1) = v53;
    v89 = type metadata accessor for TodayExpandResult(0);
    v88 = sub_219BE3204();
    v96 = sub_2187D9028();
    v54 = sub_219BF66A4();
    v55 = v107;
    v56 = *(v107 + 2);
    v98 = v107 + 16;
    v101 = v56;
    v57 = v112;
    v56(v112, v95, v41);
    sub_2187F684C(v26, v93, type metadata accessor for TodayGapLocation);
    sub_218718690(v33, &v117);
    sub_2187F684C(v42, v111, type metadata accessor for TodayExpandContext);
    v58 = *(v55 + 80);
    v59 = (v58 + 32) & ~v58;
    v87 = v41;
    v60 = *(v100 + 80);
    v105 = v102 + v60;
    v61 = (v102 + v60 + v59) & ~v60;
    v102 = v58 | v60 | 7;
    v62 = (v92 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (*(v103 + 80) + v62 + 40) & ~*(v103 + 80);
    v64 = swift_allocObject();
    v65 = v114;
    v66 = *(v114 + 80);
    *(v64 + 16) = v66;
    v103 = *(v65 + 88);
    v104 = v66;
    *(v64 + 24) = v103;
    v114 = *(v55 + 4);
    v67 = v57;
    v68 = v87;
    (v114)(v64 + v59, v67, v87);
    v107 = type metadata accessor for TodayGapLocation;
    v69 = v64 + v61;
    v70 = v93;
    sub_21880BBE4(v93, v69, type metadata accessor for TodayGapLocation);
    sub_2186CB1F0(&v117, v64 + v62);
    sub_21880BBE4(v111, v64 + v63, type metadata accessor for TodayExpandContext);
    v111 = sub_219BE2F84();

    v71 = sub_219BF66A4();
    sub_218718690(v116, &v117);
    v72 = v112;
    (v101)(v112, v95, v68);
    sub_2187F684C(v91, v70, v99);
    v73 = (v58 + 72) & ~v58;
    v74 = (v105 + v73) & ~v60;
    v75 = v68;
    v76 = swift_allocObject();
    v77 = v103;
    *(v76 + 16) = v104;
    *(v76 + 24) = v77;
    sub_2186CB1F0(&v117, v76 + 32);
    (v114)(v76 + v73, v72, v75);
    sub_21880BBE4(v70, v76 + v74, v107);
    sub_219BE2FE4();

    v79 = v108;
    v78 = v109;
    v80 = v106;
    v81 = v94;
    (*(v108 + 16))(v106, v94, v109);
    v82 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v83 = (v90 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    (*(v79 + 32))(v84 + v82, v80, v78);
    *(v84 + v83) = v97;

    v85 = sub_219BE2E54();
    v86 = sub_219BE3024();

    (*(v79 + 8))(v81, v78);
    sub_21880BA68(v91, type metadata accessor for TodayGapLocation);
    sub_21880BA68(v113, type metadata accessor for TodayExpandRequest);
    return v86;
  }
}

uint64_t sub_2196F88B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v76 = a5;
  v62 = a3;
  v63 = a4;
  v7 = *MEMORY[0x277D85000] & *a2;
  v69 = a2;
  v70 = v7;
  v8 = type metadata accessor for TodayExpandContext(0);
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = v9;
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for TodayExpandResult(0);
  v71 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = v10;
  v73 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TodayFailedData(0);
  MEMORY[0x28223BE20](v60);
  v61 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21880B9E0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219716C10(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF0644();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v22 = *(a1 + 16);
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();

  sub_219BEF3D4();
  sub_219BEE844();

  v23 = *(v15 + 56);
  *v17 = v22;
  (*(v19 + 32))(&v17[v23], v21, v18);
  if (v22 >> 61 == 4 && (*(v19 + 88))(&v17[v23], v18) == *MEMORY[0x277D32EF0])
  {
    v24 = off_282A6CF18;
    type metadata accessor for TodayDataManager();
    v25 = v64;
    v24();
    v26 = sub_219BF1584();
    v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
    sub_21880BA68(v25, sub_21880B9E0);
    if (v27 != 1)
    {
      sub_218853400(0);
      v47 = sub_219BE5F84();
      v49 = v48;
      v50 = v61;
      sub_2187F684C(v63, v61 + *(v60 + 20), type metadata accessor for TodayGapLocation);
      *v50 = v47;
      v50[1] = v49;
      v51 = (*(*(v70 + 88) + 64))(v50, *(v70 + 80));
      sub_21880BA68(v50, type metadata accessor for TodayFailedData);
      *&v77[0] = v51;
      v52 = MEMORY[0x277D6D888];
      sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
      sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v52, MEMORY[0x277D6D890]);
      sub_219BE6E84();
      v53 = v73;
      sub_21952B7BC(v74, v73);
      v54 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v55 = swift_allocObject();
      sub_21880BBE4(v53, v55 + v54, type metadata accessor for TodayExpandResult);
      v56 = sub_219BE2E54();
      sub_219BE2F74();

      sub_218718690(v76, v77);
      v57 = swift_allocObject();
      sub_2186CB1F0(v77, v57 + 16);
      v58 = sub_219BE2E54();
      v45 = sub_219BE3024();

      return v45;
    }
  }

  else
  {
    sub_21880BA68(v17, sub_219716C10);
  }

  v29 = *(v70 + 80);
  v28 = *(v70 + 88);
  v30 = v74;
  v70 = (*(v28 + 24))(v74, v29, v28);
  *&v77[0] = v70;
  v31 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v31, MEMORY[0x277D6D890]);
  sub_219BE6E84();
  v32 = v76;
  sub_218718690(v76, v77);
  v33 = v30;
  v34 = v73;
  sub_21952B7BC(v33, v73);
  v35 = (*(v71 + 80) + 56) & ~*(v71 + 80);
  v36 = swift_allocObject();
  sub_2186CB1F0(v77, v36 + 16);
  sub_21880BBE4(v34, v36 + v35, type metadata accessor for TodayExpandResult);
  v37 = sub_219BE2E54();
  sub_219BE2F74();

  sub_218718690(v32, v77);
  v38 = swift_allocObject();
  sub_2186CB1F0(v77, v38 + 16);
  v39 = sub_219BE2E54();
  sub_219BE2FD4();

  v40 = v67;
  sub_2187F684C(v68, v67, type metadata accessor for TodayExpandContext);
  v41 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v29;
  *(v42 + 24) = v28;
  sub_21880BBE4(v40, v42 + v41, type metadata accessor for TodayExpandContext);
  v43 = sub_219BE2E54();
  type metadata accessor for TodayInteractor(0, v29, v28, v44);
  v45 = sub_219BE3034();

  return v45;
}

uint64_t sub_2196F9270@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x21CEC0B20](1, v5, v6);
  return sub_21952B7BC(a2, a3);
}

uint64_t sub_2196F92DC(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for TodayInteractor(0, *(v1 + 80), *(v1 + 88), v3);
    sub_218844CD0(0, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_2196F9398(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x277D85000] & *a2;
  v8 = type metadata accessor for TodayFailedData(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    MEMORY[0x21CEC0B20](0, v11, v12);
  }

  else
  {
    sub_218853400(0);
    v14 = sub_219BE5F84();
    v16 = v15;
    sub_2187F684C(a5, v10 + *(v8 + 20), type metadata accessor for TodayGapLocation);
    *v10 = v14;
    v10[1] = v16;
    v17 = (*(*(v7 + 88) + 64))(v10, *(v7 + 80));
    sub_21880BA68(v10, type metadata accessor for TodayFailedData);
    v21 = v17;
    sub_218718690(a3, v20);
    v18 = swift_allocObject();
    sub_2186CB1F0(v20, v18 + 16);
    v19 = MEMORY[0x277D6D888];
    sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
    sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v19, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
  }

  return result;
}

uint64_t sub_2196F9624()
{
  v0 = sub_219BE5394();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE5354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE5374();
  sub_219BE53A4();
  v9 = sub_219BF67D4();
  if (sub_219BF6F34())
  {

    sub_219BE53D4();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_219BE5344();
    _os_signpost_emit_with_name_impl(&dword_2186C1000, v8, v9, v12, "News.TodayFeed.Interactor.Expand", v10, v11, 2u);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

double sub_2196F986C(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85000] & *v2;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v6 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_219BE1D74();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v11 = sub_219BF6214();
  sub_219BE5314("Today feed uncollapsing item for request %{public}@", 51, 2, &dword_2186C1000, v6, v11, v7);

  v16 = (*(*(v5 + 88) + 32))(a2, *(v5 + 80));
  sub_218718690(a1, v15);
  v12 = swift_allocObject();
  sub_2186CB1F0(v15, v12 + 16);
  v13 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v13, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_2196F9B14(uint64_t a1, void *a2)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v3 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = sub_219BE1D74();
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_219BE85F4();
  sub_219BF7484();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  v10 = sub_219BF6214();
  sub_219BE5314("Today feed uncollapsing item for request %{public}@ completed, result %{public}@", 80, 2, &dword_2186C1000, v3, v10, v4);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_219BE9DA4();
}

void sub_2196F9CBC(void *a1, uint64_t a2)
{
  v3 = v2;
  v77 = a1;
  v78 = a2;
  ObjectType = swift_getObjectType();
  v70 = *MEMORY[0x277D85000] & *v2;
  v5 = sub_219BEE644();
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v76 = sub_219BED214();
  v71 = *(v76 - 8);
  v10 = v71[8];
  MEMORY[0x28223BE20](v76);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v60 - v12;
  MEMORY[0x28223BE20](v13);
  v75 = &v60 - v14;
  sub_21880B928(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE7B04();
  if (v20 >> 62)
  {
    if (v20 >> 62 == 1)
    {
      v66 = ObjectType;
      v67 = v5;
      sub_219BE6EC4();
      v79 = v80;
      v21 = MEMORY[0x277D6D8B8];
      sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
      sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v21, MEMORY[0x277D6D8C8]);
      sub_219BE7B94();

      v22 = sub_218827310();
      (*(v17 + 8))(v19, v16);
      if ((~v22 & 0xF000000000000007) != 0)
      {
        v28 = CACurrentMediaTime();
        v29 = v68;
        sub_219BED1F4();
        v30 = v74;
        v31 = v67;
        v64 = *(v74 + 16);
        v65 = v74 + 16;
        v64(v9, v78, v67);
        v32 = (*(v30 + 88))(v9, v31);
        if (v32 == *MEMORY[0x277D320A8])
        {
          sub_219BDC8D4();
          sub_219BDC8B4();
          v33 = v71;
          if (qword_280EE9428 != -1)
          {
            swift_once();
          }

          sub_219BDC8A4();
        }

        else
        {
          v33 = v71;
          if (v32 != *MEMORY[0x277D320A0])
          {
            (*(v74 + 8))(v9, v31, 0.0);
          }
        }

        v34 = v75;
        v35 = v76;
        v36 = v77;
        sub_219BED244();
        v37 = v33[1];
        v77 = v33 + 1;
        v71 = v37;
        (v37)(v29, v35);
        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v38 = qword_280F616D8;
        v39 = sub_219BF6214();
        sub_219BE5314("Today feed starting feed refresh", 32, 2, &dword_2186C1000, v38, v39, MEMORY[0x277D84F90]);
        MEMORY[0x28223BE20](v40);
        *(&v60 - 4) = v22;
        *(&v60 - 3) = v3;
        v41 = v78;
        *(&v60 - 2) = v36;
        *(&v60 - 1) = v41;
        v61 = type metadata accessor for TodayPrewarmResult(0);
        v60 = sub_219BE3204();
        v68 = v22;
        v63 = v33[2];
        v42 = v69;
        v63(v69, v34, v35);
        v43 = v33;
        v44 = (*(v33 + 80) + 16) & ~*(v33 + 80);
        v45 = swift_allocObject();
        v62 = v43[4];
        v62(v45 + v44, v42, v35);
        v46 = sub_219BE2E54();
        v61 = sub_219BE2F64();

        v47 = v76;
        v63(v42, v75, v76);
        v48 = swift_allocObject();
        v62(v48 + v44, v42, v47);
        v49 = sub_219BE2E54();
        v69 = sub_219BE3054();

        sub_2187D9028();
        v50 = sub_219BF66A4();
        v51 = v72;
        v52 = v67;
        v64(v72, v78, v67);
        v53 = v74;
        v54 = (*(v74 + 80) + 40) & ~*(v74 + 80);
        v55 = swift_allocObject();
        v56 = v70;
        v63 = *(v70 + 80);
        *(v55 + 2) = v63;
        v70 = *(v56 + 88);
        *(v55 + 3) = v70;
        v55[4] = v28;
        v74 = *(v53 + 32);
        (v74)(v55 + v54, v51, v52);
        v62 = sub_219BE2F94();

        v64(v51, v78, v52);
        v57 = swift_allocObject();
        v58 = v70;
        *(v57 + 2) = v63;
        *(v57 + 3) = v58;
        v57[4] = v28;
        (v74)(v57 + v54, v51, v52);
        v59 = sub_219BE2E54();
        sub_219BE2FE4();
        sub_21885AB78(v68);

        (v71)(v75, v76);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v24 = v67;
        if (Strong)
        {
          v25 = Strong;
          v26 = v74;
          v27 = v72;
          (*(v74 + 104))(v72, *MEMORY[0x277D320A8], v67);
          sub_219BEE634();
          (*(v26 + 8))(v27, v24);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_219715940(v25, 0);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    sub_21880BB00(v20);
    sub_21881DCEC(v77);
  }
}

char *sub_2196FA684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a3;
  v13 = *MEMORY[0x277D85000] & *a2;
  v4 = sub_219BF0644();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEE774();
  sub_219BEE844();

  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D32EF0])
  {
    v10 = sub_219BEE774();
    v7 = sub_21939CADC(v10, v14, v15);

    return v7;
  }

  if (v8 == *MEMORY[0x277D32EF8])
  {
    type metadata accessor for TodayInteractor.Errors(0, *(v13 + 80), *(v13 + 88), v9);
    swift_getWitnessTable();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    return v7;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_2196FA8D4(uint64_t a1, uint64_t a2)
{
  sub_2187D9028();
  v2 = sub_219BF66A4();
  type metadata accessor for TodayPrewarmResult(0);
  v3 = sub_219BE2E04();

  return v3;
}

uint64_t sub_2196FA944(void *a1, uint64_t a2)
{
  sub_2187D9028();
  v3 = sub_219BF66A4();
  sub_219BE2E04();

  *(swift_allocObject() + 16) = a1;
  v4 = a1;
  v5 = sub_219BE2E54();
  type metadata accessor for TodayPrewarmResult(0);
  v6 = sub_219BE2F64();

  return v6;
}

uint64_t sub_2196FAA2C(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v28 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE644();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  sub_2188482CC(a1, &v27 - v13);
  v15 = type metadata accessor for TodayPrewarmResult(0);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v16 = MEMORY[0x277D85000];
  v17 = *((*MEMORY[0x277D85000] & *a2) + 0xB0);
  swift_beginAccess();
  sub_219716240(v14, a2 + v17);
  swift_endAccess();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v19 = MEMORY[0x277D83A80];
  *(v18 + 56) = MEMORY[0x277D839F8];
  *(v18 + 64) = v19;
  *(v18 + 32) = v20;
  sub_219BF6214();
  sub_219BE5314("Today feed successfully queued refresh with visible duration %fms", v27);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    (*(v9 + 104))(v11, *MEMORY[0x277D320A8], v8);
    sub_219BEE634();
    (*(v9 + 8))(v11, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219715940(v22, 1);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v23 = (a2 + *((*v16 & *a2) + 0xF0));
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v24 = *MEMORY[0x277D2F310];
  v25 = sub_219BE14C4();
  (*(*(v25 - 8) + 104))(v7, v24, v25);
  swift_storeEnumTagMultiPayload();
  sub_21880C6BC(v7);
  return sub_21880BA68(v7, type metadata accessor for EngagementEvent);
}

uint64_t sub_2196FAE8C(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v26[1] = a3;
  v27 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v27);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE644();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v12 = qword_280F616D8;
  v13 = sub_219BF61F4();
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v15 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v15;
  *(v14 + 32) = v16;
  v29 = 0;
  v30 = 0xE000000000000000;
  v28 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v18 = v29;
  v17 = v30;
  *(v14 + 96) = MEMORY[0x277D837D0];
  *(v14 + 104) = sub_2186FC3BC();
  *(v14 + 72) = v18;
  *(v14 + 80) = v17;
  sub_219BE5314("Error while refreshing today feed with visible duration %fms, error=%{public}@", 78, 2, &dword_2186C1000, v12, v13, v14);

  v19 = MEMORY[0x277D85000];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    (*(v9 + 104))(v11, *MEMORY[0x277D320A8], v8);
    sub_219BEE634();
    (*(v9 + 8))(v11, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219715940(v21, 0);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v22 = (a2 + *((*v19 & *a2) + 0xF0));
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v23 = *MEMORY[0x277D2F310];
  v24 = sub_219BE14C4();
  (*(*(v24 - 8) + 104))(v7, v23, v24);
  swift_storeEnumTagMultiPayload();
  sub_21880C6BC(v7);
  return sub_21880BA68(v7, type metadata accessor for EngagementEvent);
}

uint64_t sub_2196FB248(uint64_t a1)
{
  v25[1] = a1;
  v1 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219717384(0, &qword_280E91290, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32858]);
  v5 = v4;
  v25[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - v6;
  sub_21880B928(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v25[2] = v26;
  v13 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v13, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v14 = sub_218827310();
  (*(v10 + 8))(v12, v9);
  if ((~v14 & 0xF000000000000007) == 0)
  {
    return 1;
  }

  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEE834();
  sub_219BEE374();

  v15 = sub_219BEFA14();
  (*(v25[0] + 8))(v7, v5);
  sub_219BEF3C4();
  v16 = *(v3 + 3);

  sub_21880BA68(v3, type metadata accessor for TodayFeedServiceContext);
  if (*(v16 + 16) <= *(v15 + 16) >> 3)
  {
    v26 = v15;
    sub_218EB3B08(v16);

    v17 = v26;
    if (*(v26 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v17 = sub_218EB4048(v16, v15);

  if (!*(v17 + 16))
  {
LABEL_8:

    sub_21885AB78(v14);
    return 1;
  }

LABEL_4:
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v18 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09EC0;
  v20 = *(v17 + 16);
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = MEMORY[0x277D83B88];
  *(v19 + 64) = v21;
  *(v19 + 32) = v20;
  sub_2186E2394();
  *(v19 + 96) = v22;
  *(v19 + 104) = sub_2187E1408(&unk_280E8E9A0, sub_2186E2394, MEMORY[0x277CC9C78]);
  *(v19 + 72) = v17;
  v23 = sub_219BF6214();
  sub_219BE5314("Today interactor won't use deferred refresh result because it's missing %lu seen items: %{public}@", 98, 2, &dword_2186C1000, v18, v23, v19);
  sub_21885AB78(v14);

  return 0;
}

uint64_t sub_2196FB7E8(double a1)
{
  sub_21880B928(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10;
  sub_219BF6214();
  sub_219BE5314("Today feed successfully applied refresh update with visible duration %fms", *&v17);

  sub_219BE6EC4();
  v18 = v19;
  v11 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v11, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v12 = sub_218827310();
  v13 = *(v3 + 8);
  v13(v7, v2);
  if ((~v12 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2187DF448();
    sub_219BEE7D4();
    sub_21885AB78(v12);
    sub_219BEE2F4();
  }

  sub_219BE6EC4();
  v18 = v19;
  v14 = v17;
  sub_219BE7B94();

  v15 = sub_2193A0D7C(v14);
  return (v13)(v14, v2, v15);
}

double sub_2196FBB64(uint64_t a1)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616D8;
  v2 = sub_219BF61F4();
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Error while applying queued today feed refresh update, error=%{public}@", 71, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

double sub_2196FBD34(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  ObjectType = swift_getObjectType();
  v40 = *MEMORY[0x277D85000] & *v1;
  v3 = type metadata accessor for TodayExpandContext(0);
  v37[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v37[1] = v4;
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - v6;
  sub_21880B928(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F62520);
  v14 = sub_219BE5414();
  v15 = sub_219BF6214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2186C1000, v14, v15, "Today interactor will force reload", v16, 2u);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  sub_219BE6EC4();
  v43 = v42;
  v17 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v17, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v18 = sub_218827310();
  (*(v10 + 8))(v12, v9);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v23 = MEMORY[0x277D85000];
    sub_219BDEC34();
    sub_219BDEB94();
    v24 = type metadata accessor for TodayPrewarmResult(0);
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
    v25 = *((*v23 & *v2) + 0xB0);
    swift_beginAccess();
    sub_219716240(v7, v2 + v25);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = swift_unknownObjectWeakLoadStrong();
      if (v27)
      {
        sub_219714678(0, v27);
        swift_unknownObjectRelease();
      }

      Strong = swift_unknownObjectRelease();
    }

    MEMORY[0x28223BE20](Strong);
    v37[-4] = v2;
    v37[-3] = v18;
    v28 = v39;
    v37[-2] = v39;
    sub_219BE3204();
    sub_2187D9028();
    v29 = sub_219BF66A4();
    sub_219BE95D4();
    sub_219BE2F84();

    *(swift_allocObject() + 16) = v2;
    v30 = v2;
    v31 = sub_219BE2E54();
    sub_219BE2F94();

    v32 = v38;
    sub_2187F684C(v28, v38, type metadata accessor for TodayExpandContext);
    v33 = (*(v37[0] + 80) + 32) & ~*(v37[0] + 80);
    v34 = swift_allocObject();
    v35 = v40;
    *(v34 + 16) = *(v40 + 80);
    *(v34 + 24) = *(v35 + 88);
    sub_21880BBE4(v32, v34 + v33, type metadata accessor for TodayExpandContext);
    v36 = sub_219BE2E54();
    sub_219BE3034();

    return sub_21885AB78(v18);
  }

  else
  {
    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2186C1000, v19, v20, "No cursor to force-reload", v21, 2u);
      MEMORY[0x21CECF960](v21, -1, -1);
    }
  }

  return result;
}

uint64_t sub_2196FC44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  v4 = sub_219BEE774();
  v5 = sub_21939FF08(v4, a3);

  return v5;
}

uint64_t sub_2196FC4EC(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85000] & *a2;
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62520);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "Today interactor did force reload", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  (*(*(v3 + 88) + 16))(a1, *(v3 + 80));
  v8 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v8, MEMORY[0x277D6D890]);
  v9 = sub_219BE6E84();

  return v9;
}

uint64_t sub_2196FC700(uint64_t a1, void *a2)
{
  v3 = sub_219BE95D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result != *MEMORY[0x277D6E6A0])
  {
    if (result == *MEMORY[0x277D6E6A8])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = result;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = off_282A86C30;
          type metadata accessor for TodayViewController();
          v10(v9, &off_282A97CA0, 0);
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_2196FC8C8(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *a1;
  v4 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_280F62520);
  v8 = sub_219BE5414();
  v9 = sub_219BF6214();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2186C1000, v8, v9, "Today interactor did run refresh modifier after force reload", v10, 2u);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  v11 = (a1 + *((*v2 & *a1) + 0xF0));
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v12 = *MEMORY[0x277D2F310];
  v13 = sub_219BE14C4();
  (*(*(v13 - 8) + 104))(v6, v12, v13);
  swift_storeEnumTagMultiPayload();
  sub_21880C6BC(v6);
  sub_21880BA68(v6, type metadata accessor for EngagementEvent);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    type metadata accessor for TodayInteractor(0, *(v3 + 80), *(v3 + 88), v15);
    sub_218844CD0(0, v16);
    swift_unknownObjectRelease();
  }

  sub_219BDEC84();
  return sub_219BDEBE4();
}

double sub_2196FCB88(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v26 = *MEMORY[0x277D85000] & *v2;
  v5 = type metadata accessor for TodayExpandContext(0);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = v6;
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD34B0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_219BE6EE4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      sub_219714678(1, v12);
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectRelease();
  }

  MEMORY[0x28223BE20](Strong);
  *(&v25 - 4) = v2;
  *(&v25 - 3) = a1;
  *(&v25 - 2) = a2;
  type metadata accessor for TodayExpandResult(0);
  sub_219BE3204();
  v13 = sub_219BE1C44();
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = *(v9 + 80);
  v25 = a2;
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject();
  v17 = v26;
  v18 = *(v26 + 80);
  *(v16 + 16) = v18;
  v19 = *(v17 + 88);
  *(v16 + 24) = v19;
  (*(v9 + 32))(v16 + v15, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_219BE95D4();
  sub_219BE2F84();

  v20 = sub_219BE1C44();
  v21 = v29;
  sub_2187F684C(v25, v29, type metadata accessor for TodayExpandContext);
  v22 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v19;
  sub_21880BBE4(v21, v23 + v22, type metadata accessor for TodayExpandContext);
  sub_219BE3034();

  return result;
}

uint64_t sub_2196FCF68(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v25 = a2;
  v5 = type metadata accessor for TodayExpandContext(0);
  v31 = *(v5 - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD34B0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v12 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x78));
  *(v13 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_blockNextAutoRefresh) = 1;
  v24[1] = *(v13 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_accessQueue);
  v24[3] = v13;
  v14 = *(v9 + 16);
  v14(v12, a2, v8, v11);
  v15 = *(v9 + 80);
  v16 = (v15 + 16) & ~v15;
  v26 = v16 + v10;
  v28 = v15 | 7;
  v17 = swift_allocObject();
  v27 = *(v9 + 32);
  v27(v17 + v16, v12, v8);
  sub_219717384(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  v24[2] = type metadata accessor for TodayDataManager();
  sub_219BE31F4();

  sub_2187D9028();
  v18 = sub_219BF66A4();
  (v14)(v12, v25, v8);
  v19 = v29;
  sub_2187F684C(v32, v29, type metadata accessor for TodayExpandContext);
  v20 = (v26 + *(v31 + 80)) & ~*(v31 + 80);
  v21 = swift_allocObject();
  v27(v21 + v16, v12, v8);
  sub_21880BBE4(v19, v21 + v20, type metadata accessor for TodayExpandContext);
  type metadata accessor for TodayExpandResult(0);
  v22 = sub_219BE2F84();

  return v22;
}

uint64_t sub_2196FD310(uint64_t a1, void *a2, uint64_t a3)
{
  (*(*((*MEMORY[0x277D85000] & *a2) + 0x58) + 120))(a3, a1, *((*MEMORY[0x277D85000] & *a2) + 0x50));
  v3 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v3, MEMORY[0x277D6D890]);
  v4 = sub_219BE6E84();

  return v4;
}

void sub_2196FD460(void *a1)
{
  v1 = sub_219BEB384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v18 = v2;
      v19 = v6;
      v11 = OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController;
      sub_219BE86E4();
      v12 = [*(v10 + v11) view];
      if (!v12)
      {
        __break(1u);
        return;
      }

      v13 = v12;
      swift_getObjectType();
      v14 = sub_219BE9E14();

      swift_unknownObjectRelease();
      if (v14)
      {
        *(v10 + OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent) = 0;
        sub_219BE8644();
        (*(v19 + 104))(v8, *MEMORY[0x277D6EC88], v5);
        v15 = v18;
        (*(v18 + 104))(v4, *MEMORY[0x277D6ECA8], v1);
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        *(v17 + 24) = v16;

        sub_219BE6BE4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v15 + 8))(v4, v1);
        (*(v19 + 8))(v8, v5);

        return;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

id sub_2196FD7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v431 = a3;
  v412 = a2;
  v446 = a4;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v345 = &v326 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v405 = &v326 - v9;
  v397 = sub_219BEDAE4();
  v396 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v395 = &v326 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90E30, MEMORY[0x277D31D50], sub_2197160E4, sub_219716118);
  v394 = v11;
  v391 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v390 = &v326 - v12;
  v404 = sub_219BDEA14();
  v403 = *(v404 - 8);
  MEMORY[0x28223BE20](v404);
  v402 = &v326 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = sub_219BF0B74();
  v392 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v389 = &v326 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v387 = &v326 - v16;
  v401 = sub_219BDEB14();
  v400 = *(v401 - 8);
  MEMORY[0x28223BE20](v401);
  v399 = &v326 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v5);
  MEMORY[0x28223BE20](v18 - 8);
  v386 = &v326 - v19;
  v384 = sub_219BDDED4();
  v383 = *(v384 - 8);
  MEMORY[0x28223BE20](v384);
  v385 = (&v326 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v420 = sub_219BDDBF4();
  v398 = *(v420 - 8);
  MEMORY[0x28223BE20](v420);
  v388 = &v326 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v434 = &v326 - v23;
  sub_21971614C(0, &qword_280E90D80, MEMORY[0x277D32FD0], sub_218CF5E6C, sub_218CF5EA4);
  v419 = v24;
  v418 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v417 = &v326 - v25;
  v382 = sub_219BEDB94();
  v381 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v379 = &v326 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90E20, MEMORY[0x277D31DE8], sub_218CF5F8C, sub_218CF5FC4);
  v378 = v27;
  v377 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v373 = &v326 - v28;
  v372 = sub_219BF0AC4();
  v371 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v370 = &v326 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v376);
  v374 = &v326 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90DA0, MEMORY[0x277D32FB8], sub_218CF6140, sub_218CF6178);
  v369 = v31;
  v368 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v367 = &v326 - v32;
  v366 = sub_219BF04A4();
  v365 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v364 = &v326 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90DF0, MEMORY[0x277D32CE0], sub_218CF5FFC, sub_218CF6034);
  v363 = v34;
  v362 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v361 = &v326 - v35;
  sub_2187DD4F0(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v5);
  MEMORY[0x28223BE20](v36 - 8);
  v329 = &v326 - v37;
  v328 = sub_219BDDDA4();
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v326 = &v326 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_219BDE4D4();
  v444 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v340 = &v326 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = sub_219BF07A4();
  v359 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v358 = &v326 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90DC0, MEMORY[0x277D32F68], sub_218CF61B0, sub_218CF61E8);
  v416 = v41;
  v415 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v414 = &v326 - v42;
  sub_2187DD4F0(0, &unk_280E90A30, MEMORY[0x277D33058], v5);
  MEMORY[0x28223BE20](v43 - 8);
  v339 = &v326 - v44;
  sub_2187DD4F0(0, &unk_280EE9D00, MEMORY[0x277CC9260], v5);
  MEMORY[0x28223BE20](v45 - 8);
  v344 = &v326 - v46;
  v347 = sub_219BDB954();
  v346 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v338 = &v326 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E90180, MEMORY[0x277D33E20], v5);
  MEMORY[0x28223BE20](v48 - 8);
  v343 = &v326 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v411 = &v326 - v51;
  v357 = sub_219BF1094();
  v356 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v337 = &v326 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v342 = &v326 - v54;
  MEMORY[0x28223BE20](v55);
  v352 = &v326 - v56;
  sub_21971614C(0, &qword_280E90D20, MEMORY[0x277D330F8], sub_218CF606C, sub_218CF60A4);
  v380 = v57;
  v410 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v375 = &v326 - v58;
  v351 = sub_219BEC504();
  v350 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v349 = &v326 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48(0);
  v355 = v60;
  v354 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v353 = &v326 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = sub_219BDE744();
  v429 = *(v430 - 8);
  MEMORY[0x28223BE20](v430);
  v428 = &v326 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BF0634();
  v440 = *(v63 - 8);
  v441 = v63;
  MEMORY[0x28223BE20](v63);
  v437 = &v326 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE8AA0, MEMORY[0x277D30260], v5);
  MEMORY[0x28223BE20](v65 - 8);
  v424 = &v326 - v66;
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], v5);
  MEMORY[0x28223BE20](v67 - 8);
  v432 = &v326 - v68;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v5);
  MEMORY[0x28223BE20](v69 - 8);
  v435 = &v326 - v70;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v5);
  MEMORY[0x28223BE20](v71 - 8);
  v341 = &v326 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v406 = &v326 - v74;
  MEMORY[0x28223BE20](v75);
  v436 = &v326 - v76;
  sub_218853400(0);
  v78 = v77;
  v421 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v423 = &v326 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = sub_219BDE7A4();
  v426 = *(v427 - 8);
  MEMORY[0x28223BE20](v427);
  v425 = &v326 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_219BF0534();
  v335 = *(v336 - 8);
  MEMORY[0x28223BE20](v336);
  v334 = &v326 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v333 = &v326 - v83;
  v332 = sub_219BF0EE4();
  v331 = *(v332 - 8);
  MEMORY[0x28223BE20](v332);
  v330 = &v326 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = sub_219BF0F34();
  v409 = *(v408 - 8);
  MEMORY[0x28223BE20](v408);
  v348 = &v326 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v407 = &v326 - v87;
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v5);
  MEMORY[0x28223BE20](v88 - 8);
  v90 = &v326 - v89;
  sub_2186EAB88(0);
  v413 = v91;
  v433 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v93 = &v326 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v94);
  v96 = &v326 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v99 = &v326 - v98;
  v447 = sub_219BF0614();
  v449 = *(v447 - 8);
  MEMORY[0x28223BE20](v447);
  v101 = (&v326 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v102);
  v104 = (&v326 - v103);
  sub_219BE5FC4();
  v448 = v104;
  sub_21887B94C(v104);
  sub_21880BA68(v99, type metadata accessor for TodayModel);
  v438 = a1;
  v439 = v78;
  sub_219BE5FC4();
  v422 = v94;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v449 + 8))(v448, v447);
      sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v178 = *(v177 + 48);
      v179 = sub_219BF1584();
      (*(*(v179 - 8) + 8))(&v96[v178], v179);
      v105 = type metadata accessor for TodayGapLocation;
      goto LABEL_3;
    case 2u:
      v125 = v93;
      v126 = v413;
      (*(v433 + 32))(v93, v96, v413);
      sub_218812314(v412, v90, &unk_280EE58B0, sub_2187FAD00);
      sub_2187FAD00(0);
      v128 = v127;
      v129 = *(v127 - 8);
      if ((*(v129 + 48))(v90, 1, v127) == 1)
      {
        sub_218817724(v90, &unk_280EE58B0, sub_2187FAD00);
LABEL_39:
        v232 = v408;
LABEL_40:
        (*(v421 + 16))(v423, v438, v439);
        v244 = v407;
        sub_219BF07D4();
        v439 = sub_219BF0F14();
        v245 = *(v409 + 8);
        v245(v244, v232);
        v246 = v125;
        v247 = sub_219BF04D4();
        v249 = v248;
        v250 = v348;
        sub_219BF07D4();
        v251 = sub_219BF0F14();
        v245(v250, v232);
        v252 = [v251 identifier];
        swift_unknownObjectRelease();
        v253 = sub_219BF5414();
        v255 = v254;

        sub_2197019FC(v247, v249, v253, v255, 0, 0, v435);

        v257 = v440;
        v256 = v441;
        (*(v440 + 56))(v432, 1, 1, v441);
        v258 = v436;
        sub_219BDE4B4();
        (*(v444 + 56))(v258, 0, 1, v442);
        sub_219701EE8(v412, v424);
        (*(v257 + 104))(v437, *MEMORY[0x277D32E98], v256);
        sub_21880BAC8();
        v259 = v425;
        sub_219BDE794();
        v260 = (v445 + *((*MEMORY[0x277D85000] & *v445) + 0x88));
        __swift_project_boxed_opaque_existential_1(v260, v260[3]);
        swift_getWitnessTable();
        v261 = v428;
        sub_219BDED04();
        sub_219BDE734();
        sub_219BDEC64();

        v262 = v446;
        sub_219BDE724();
        (*(v429 + 8))(v261, v430);
        (*(v426 + 8))(v259, v427);
        (*(v433 + 8))(v246, v126);
        (*(v449 + 8))(v448, v447);
        v153 = type metadata accessor for TodayRouteModel(0);
        swift_storeEnumTagMultiPayload();
        v225 = *(*(v153 - 8) + 56);
        v226 = v262;
        return v225(v226, 0, 1, v153);
      }

      sub_219BE6934();
      v227 = v450;
      (*(v129 + 8))(v90, v128);
      if (((v227 >> 58) & 0x3C | (v227 >> 1) & 3) != 1)
      {

        goto LABEL_39;
      }

      v228 = type metadata accessor for CuratedTodayFeedGroup(0);
      v229 = (swift_projectBox() + *(v228 + 20));
      v231 = *v229;
      v230 = v229[1];

      if (v231 == 0x6F69647561 && v230 == 0xE500000000000000)
      {

        v232 = v408;
      }

      else
      {
        v283 = sub_219BF78F4();

        v232 = v408;
        if ((v283 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v284 = v407;
      sub_219BF07D4();
      v285 = v330;
      sub_219BF0EF4();
      v434 = *(v409 + 8);
      (v434)(v284, v232);
      v286 = v333;
      sub_219BF0E94();
      (*(v331 + 8))(v285, v332);
      v287 = v335;
      v288 = v334;
      v289 = v336;
      (*(v335 + 104))(v334, *MEMORY[0x277D32D40], v336);
      v290 = sub_219BF0524();
      v291 = *(v287 + 8);
      v291(v288, v289);
      v291(v286, v289);
      if ((v290 & 1) == 0)
      {
        goto LABEL_40;
      }

      v292 = v407;
      sub_219BF07D4();
      v293 = sub_219BF0F14();
      (v434)(v292, v232);
      (*(v433 + 8))(v125, v126);
      (*(v449 + 8))(v448, v447);
      v152 = v446;
      *v446 = v293;
      v153 = type metadata accessor for TodayRouteModel(0);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      v225 = *(*(v153 - 8) + 56);
      v226 = v152;
      return v225(v226, 0, 1, v153);
    case 3u:
      v154 = v410;
      v155 = v375;
      v156 = v380;
      (*(v410 + 32))(v375, v96, v380);
      v157 = v352;
      sub_219BF07D4();
      v158 = v411;
      sub_219BF1034();
      v159 = *(v356 + 8);
      v160 = v157;
      v161 = v357;
      v159(v160, v357);
      v162 = sub_219BF3484();
      v163 = *(v162 - 8);
      if ((*(v163 + 48))(v158, 1, v162) == 1)
      {
        v164 = v342;
        sub_219BF07D4();
        v165 = v156;
        v166 = v344;
        sub_219BF1084();
        v159(v164, v161);
        v167 = v346;
        v168 = v161;
        v169 = v347;
        if ((*(v346 + 48))(v166, 1, v347) == 1)
        {
          sub_218817724(v166, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v170 = v337;
          sub_219BF07D4();
          v171 = v339;
          sub_219BF1074();
          v159(v170, v168);
          v172 = v409;
          v173 = v408;
          if ((*(v409 + 48))(v171, 1, v408) == 1)
          {
            (*(v410 + 8))(v155, v165);
            (*(v449 + 8))(v448, v447);
            sub_218817724(v171, &unk_280E90A30, MEMORY[0x277D33058]);
            v174 = type metadata accessor for TodayRouteModel(0);
            (*(*(v174 - 8) + 56))(v446, 1, 1, v174);
            return sub_218817724(v411, &qword_280E90180, MEMORY[0x277D33E20]);
          }

          sub_219BF0F14();
          v294 = v165;
          (*(v172 + 8))(v171, v173);
          (*(v421 + 16))(v423, v438, v439);
          (*(v444 + 56))(v436, 1, 1, v442);
          v295 = sub_219BDEA34();
          (*(*(v295 - 8) + 56))(v424, 1, 1, v295);
          (*(v440 + 104))(v437, *MEMORY[0x277D32E98], v441);
          sub_21880BAC8();
          swift_unknownObjectRetain();
          v296 = v155;
          v297 = v425;
          sub_219BDE794();
          v298 = (v445 + *((*MEMORY[0x277D85000] & *v445) + 0x88));
          __swift_project_boxed_opaque_existential_1(v298, v298[3]);
          swift_getWitnessTable();
          v299 = v428;
          sub_219BDED04();
          sub_219BDE734();
          sub_219BDEC64();

          v300 = v446;
          sub_219BDE724();
          swift_unknownObjectRelease();
          (*(v429 + 8))(v299, v430);
          (*(v426 + 8))(v297, v427);
          (*(v410 + 8))(v296, v294);
          (*(v449 + 8))(v448, v447);
          v266 = type metadata accessor for TodayRouteModel(0);
          swift_storeEnumTagMultiPayload();
          v267 = *(*(v266 - 8) + 56);
          v268 = v300;
        }

        else
        {
          (*(v410 + 8))(v155, v165);
          (*(v449 + 8))(v448, v447);
          v263 = *(v167 + 32);
          v264 = v338;
          v263(v338, v166, v169);
          v265 = v446;
          v263(v446, v264, v169);
          v266 = type metadata accessor for TodayRouteModel(0);
          swift_storeEnumTagMultiPayload();
          v267 = *(*(v266 - 8) + 56);
          v268 = v265;
        }

        v267(v268, 0, 1, v266);
        return sub_218817724(v411, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      v233 = v343;
      sub_218812314(v158, v343, &qword_280E90180, MEMORY[0x277D33E20]);
      v234 = (*(v163 + 88))(v233, v162);
      if (v234 == *MEMORY[0x277D33DF0])
      {
        (*(v163 + 96))(v233, v162);

        v235 = sub_219BF4024();
        if (v235)
        {
          v236 = [v235 identifier];
          v237 = sub_219BF5414();
          v238 = v154;
          v239 = v156;
          v241 = v240;
          swift_unknownObjectRelease();

          (*(v238 + 8))(v155, v239);
          (*(v449 + 8))(v448, v447);
          v242 = v446;
          *v446 = v237;
          v242[1] = v241;
          v243 = 8;
LABEL_60:
          v242[2] = v243;
          v308 = type metadata accessor for TodayRouteModel(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v308 - 8) + 56))(v242, 0, 1, v308);
LABEL_62:

          return sub_218817724(v158, &qword_280E90180, MEMORY[0x277D33E20]);
        }

        goto LABEL_61;
      }

      if (v234 == *MEMORY[0x277D33E08])
      {
        (*(v163 + 96))(v233, v162);

        v269 = sub_219BF46D4();
        if (v269)
        {
          v270 = [v269 identifier];
          v271 = sub_219BF5414();
          v272 = v154;
          v273 = v156;
          v275 = v274;
          swift_unknownObjectRelease();

          (*(v272 + 8))(v155, v273);
          (*(v449 + 8))(v448, v447);
          v242 = v446;
          *v446 = v271;
          v242[1] = v275;
          v243 = 4;
          goto LABEL_60;
        }

LABEL_61:

        (*(v154 + 8))(v155, v156);
        (*(v449 + 8))(v448, v447);
        v309 = type metadata accessor for TodayRouteModel(0);
        (*(*(v309 - 8) + 56))(v446, 1, 1, v309);
        goto LABEL_62;
      }

      if (v234 == *MEMORY[0x277D33DF8])
      {
        (*(v163 + 96))(v233, v162);

        v301 = sub_219BF4BE4();
        if (v301)
        {
          v302 = [v301 identifier];
          v303 = sub_219BF5414();
          v304 = v154;
          v305 = v156;
          v307 = v306;
          swift_unknownObjectRelease();

          (*(v304 + 8))(v155, v305);
          (*(v449 + 8))(v448, v447);
          v242 = v446;
          *v446 = v303;
          v242[1] = v307;
          v243 = 7;
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      v317 = *MEMORY[0x277D33E00];
      v318 = v234;
      (*(v154 + 8))(v155, v156);
      (*(v449 + 8))(v448, v447);
      (*(v163 + 8))(v233, v162);
      if (v318 != v317 && v318 != *MEMORY[0x277D33E18] && v318 != *MEMORY[0x277D33DE8] && v318 != *MEMORY[0x277D33E10])
      {
        v319 = type metadata accessor for TodayRouteModel(0);
        (*(*(v319 - 8) + 56))(v446, 1, 1, v319);
        return sub_218817724(v158, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      sub_218817724(v158, &qword_280E90180, MEMORY[0x277D33E20]);
LABEL_5:
      v108 = type metadata accessor for TodayRouteModel(0);
      return (*(*(v108 - 8) + 56))(v446, 1, 1, v108);
    case 4u:
    case 5u:
    case 8u:
    case 9u:
    case 0xEu:
      (*(v449 + 8))(v448, v447);
      v105 = type metadata accessor for TodayModel;
LABEL_3:
      v106 = v105;
      v107 = v96;
      goto LABEL_4;
    case 6u:
      sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88, " fallback ");
      v435 = *(v110 + 48);
      v111 = v354;
      v112 = v353;
      v113 = v355;
      (*(v354 + 32))(v353, v96, v355);
      (*(v421 + 16))(v423, v438, v439);
      v114 = v349;
      sub_219BF07D4();
      sub_219BEC4F4();
      (*(v350 + 8))(v114, v351);
      (*(v444 + 56))(v436, 1, 1, v442);
      v115 = sub_219BDEA34();
      (*(*(v115 - 8) + 56))(v424, 1, 1, v115);
      (*(v440 + 104))(v437, *MEMORY[0x277D32E98], v441);
      sub_21880BAC8();
      v116 = v425;
      sub_219BDE794();
      v117 = (v445 + *((*MEMORY[0x277D85000] & *v445) + 0x88));
      __swift_project_boxed_opaque_existential_1(v117, v117[3]);
      swift_getWitnessTable();
      v118 = v428;
      sub_219BDED04();
      sub_219BDE734();
      sub_219BDEC64();

      v119 = v446;
      sub_219BDE724();
      (*(v429 + 8))(v118, v430);
      (*(v426 + 8))(v116, v427);
      (*(v111 + 8))(v112, v113);
      (*(v449 + 8))(v448, v447);
      v120 = type metadata accessor for TodayRouteModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
      return (*(v433 + 8))(&v96[v435], v413);
    case 7u:
      v180 = v391;
      v181 = v390;
      v182 = v394;
      (*(v391 + 32))(v390, v96, v394);
      v183 = v395;
      sub_219BF07D4();
      v184 = v405;
      sub_219BEDAD4();
      (*(v396 + 8))(v183, v397);
      (*(v180 + 8))(v181, v182);
      (*(v449 + 8))(v448, v447);
      v185 = sub_219BF1DA4();
      v186 = *(v185 - 8);
      if ((*(v186 + 48))(v184, 1, v185) == 1)
      {
        goto LABEL_46;
      }

      v187 = v345;
      sub_218812314(v184, v345, &qword_280E905C0, MEMORY[0x277D33610]);
      if ((*(v186 + 88))(v187, v185) == *MEMORY[0x277D33608])
      {
        (*(v186 + 96))(v187, v185);
        v188 = v446;
        (*(v346 + 32))(v446, v187, v347);
        v189 = type metadata accessor for TodayRouteModel(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v189 - 8) + 56))(v188, 0, 1, v189);
      }

      else
      {
        (*(v186 + 8))(v187, v185);
LABEL_46:
        v276 = type metadata accessor for TodayRouteModel(0);
        (*(*(v276 - 8) + 56))(v446, 1, 1, v276);
      }

      return sub_218817724(v184, &qword_280E905C0, MEMORY[0x277D33610]);
    case 0xAu:
      (*(v415 + 32))(v414, v96, v416);
      v190 = (v445 + *((*MEMORY[0x277D85000] & *v445) + 0x90));
      v191 = __swift_project_boxed_opaque_existential_1(v190, v190[3]);
      v192 = v358;
      sub_219BF07D4();
      v193 = sub_219BF06B4();
      (*(v359 + 8))(v192, v360);
      v194 = sub_219BF07B4();
      v437 = v195;
      ObjectType = swift_getWitnessTable();
      sub_219BE5FC4();
      sub_21887B94C(v101);
      sub_21880BA68(v99, type metadata accessor for TodayModel);
      v196 = sub_219BF04D4();
      v198 = v197;
      v199 = *(v449 + 8);
      v449 += 8;
      v199(v101, v447);
      sub_2197019FC(v196, v198, 0, 0, 0, 0, v435);

      (*(v440 + 56))(v432, 1, 1, v441);
      v200 = v406;
      sub_219BDE4B4();
      v201 = v442;
      (*(v444 + 56))(v200, 0, 1, v442);
      v202 = *v191;
      v203 = *(*v191 + 16);
      v204 = [objc_msgSend(v193 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v204)
      {
        sub_219BF5414();
        v204 = sub_219BF53D4();
      }

      v205 = [v203 hasMutedSubscriptionForTagID_];

      if (!v205)
      {
        goto LABEL_65;
      }

      v206 = v341;
      sub_218812314(v200, v341, &unk_280EE8C40, MEMORY[0x277D30018]);
      v207 = v444;
      if ((*(v444 + 48))(v206, 1, v201) == 1)
      {
        v208 = MEMORY[0x277D30018];
        sub_218817724(v200, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v415 + 8))(v414, v416);
        v199(v448, v447);
        sub_218817724(v206, &unk_280EE8C40, v208);
LABEL_66:
        v310 = 0;
        v311 = v445;
        v312 = v446;
        v313 = ObjectType;
        v314 = v437;
        goto LABEL_67;
      }

      v277 = v340;
      (*(v207 + 32))(v340, v206, v201);
      if ((sub_219BDE4A4() & 1) == 0)
      {
        (*(v207 + 8))(v277, v201);
LABEL_65:
        sub_218817724(v200, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v415 + 8))(v414, v416);
        v199(v448, v447);
        goto LABEL_66;
      }

      v441 = v194;
      __swift_project_boxed_opaque_existential_1((v202 + 24), *(v202 + 48));
      v278 = v435;
      sub_219BDE4C4();
      v279 = v329;
      sub_219BDEA24();
      v280 = v279;
      sub_218817724(v278, &qword_280EE8D20, MEMORY[0x277D2FD40]);
      v281 = v327;
      v282 = v328;
      if ((*(v327 + 48))(v280, 1, v328) == 1)
      {
        (*(v207 + 8))(v340, v201);
        sub_218817724(v406, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v415 + 8))(v414, v416);
        v199(v448, v447);
        sub_218817724(v280, &unk_280EE8D10, MEMORY[0x277D2FD50]);
        v194 = v441;
        goto LABEL_66;
      }

      v320 = *(v281 + 32);
      v321 = v326;
      v320(v326, v280, v282);
      v322 = swift_allocObject();
      *(v322 + 40) = v282;
      *(v322 + 48) = sub_2187E1408(&qword_27CC11940, MEMORY[0x277D2FD50], MEMORY[0x277D2FD48]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v322 + 16));
      v320(boxed_opaque_existential_1, v321, v282);
      (*(v207 + 8))(v340, v201);
      sub_218817724(v406, &unk_280EE8C40, MEMORY[0x277D30018]);
      (*(v415 + 8))(v414, v416);
      v199(v448, v447);
      v311 = 0;
      v324 = v437;
      *(v322 + 56) = v441;
      *(v322 + 64) = v324;
      v325 = v445;
      *(v322 + 72) = v193;
      *(v322 + 80) = v325;
      v310 = 1;
      v194 = v322;
      *(v322 + 88) = ObjectType;
      *(v322 + 96) = 0;
      v314 = 0;
      v193 = 0;
      v313 = 0;
      v312 = v446;
LABEL_67:
      *v312 = v194;
      v312[1] = v314;
      v312[2] = v193;
      v312[3] = v311;
      v312[4] = v313;
      *(v312 + 40) = v310;
      v315 = type metadata accessor for TodayRouteModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v315 - 8) + 56))(v312, 0, 1, v315);
      v316 = v445;

      return v316;
    case 0xBu:
      v121 = v362;
      v122 = v361;
      v123 = v363;
      (*(v362 + 32))(v361, v96, v363);
      v175 = v364;
      sub_219BF07D4();
      sub_219BF0404();
      (*(v365 + 8))(v175, v366);
      goto LABEL_16;
    case 0xCu:
      v209 = v368;
      v210 = v367;
      v211 = v369;
      (*(v368 + 32))(v367, v96, v369);
      v212 = v370;
      sub_219BF07D4();
      v213 = sub_219BF0AA4();
      (*(v371 + 8))(v212, v372);
      v214 = v376;
      v215 = *(v376 + 20);
      v216 = sub_219BF24E4();
      v217 = v374;
      (*(*(v216 - 8) + 56))(&v374[v215], 1, 1, v216);
      v218 = v448;
      v219 = sub_219BF04D4();
      v221 = v220;
      (*(v209 + 8))(v210, v211);
      (*(v449 + 8))(v218, v447);
      *v217 = v213;
      *(v217 + 8) = 0;
      *(v217 + 16) = 1;
      v222 = (v217 + v214[6]);
      *v222 = v219;
      v222[1] = v221;
      v223 = (v217 + v214[7]);
      *v223 = 0;
      v223[1] = 0;
      v224 = (v217 + v214[8]);
      *v224 = 0;
      v224[1] = 0;
      v152 = v446;
      sub_21880BBE4(v217, v446, type metadata accessor for PuzzleModel);
      v153 = type metadata accessor for TodayRouteModel(0);
      goto LABEL_28;
    case 0xDu:
      v121 = v377;
      v122 = v373;
      v123 = v378;
      (*(v377 + 32))(v373, v96, v378);
      v124 = v379;
      sub_219BF07D4();
      sub_219BEDB74();
      (*(v381 + 8))(v124, v382);
LABEL_16:
      v152 = v446;
      sub_219BDD644();
      (*(v121 + 8))(v122, v123);
      (*(v449 + 8))(v448, v447);
      v153 = type metadata accessor for TodayRouteModel(0);
      goto LABEL_28;
    case 0xFu:
      (*(v418 + 32))(v417, v96, v419);
      v130 = sub_219BF04D4();
      v131 = v385;
      *v385 = v130;
      v131[1] = v132;
      (*(v383 + 104))(v131, *MEMORY[0x277D2FDC8], v384);
      v133 = sub_219BDD944();
      (*(*(v133 - 8) + 56))(v386, 1, 1, v133);
      sub_219BDDBD4();
      v134 = v387;
      sub_219BF07D4();
      v433 = sub_219BF0AF4();
      v431 = v135;
      v136 = *(v392 + 8);
      v137 = v393;
      v136(v134, v393);
      v138 = v389;
      sub_219BF07D4();
      v430 = sub_219BF0B44();
      v136(v138, v137);
      v139 = v398;
      (*(v398 + 16))(v388, v434, v420);
      sub_219BE5FC4();
      sub_21887B94C(v101);
      sub_21880BA68(v99, type metadata accessor for TodayModel);
      v140 = sub_219BF04D4();
      v142 = v141;
      v143 = *(v449 + 8);
      v144 = v101;
      v145 = v447;
      v143(v144, v447);
      sub_2197019FC(v140, v142, 0, 0, 0, 0, v435);

      v147 = v440;
      v146 = v441;
      (*(v440 + 56))(v432, 1, 1, v441);
      v148 = v436;
      sub_219BDE4B4();
      (*(v444 + 56))(v148, 0, 1, v442);
      (*(v147 + 104))(v437, *MEMORY[0x277D32E98], v146);
      v149 = v399;
      sub_219BDEB04();
      swift_getWitnessTable();
      v150 = v402;
      sub_219BDE2F4();
      sub_219BDEA04();
      sub_219BDEBC4();

      v151 = sub_219BDE9F4();
      (*(v403 + 8))(v150, v404);
      (*(v400 + 8))(v149, v401);
      (*(v139 + 8))(v434, v420);
      (*(v418 + 8))(v417, v419);
      v143(v448, v145);
      v152 = v446;
      *v446 = v151;
      v153 = type metadata accessor for TodayRouteModel(0);
      goto LABEL_28;
    default:
      (*(v449 + 8))(v448, v447);

      sub_2186EA920(0);
      v106 = type metadata accessor for TodayGapLocation;
      v107 = &v96[*(v176 + 48)];
LABEL_4:
      sub_21880BA68(v107, v106);
      goto LABEL_5;
  }
}

uint64_t sub_2197019FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a5;
  v44 = a6;
  v45 = a3;
  v46 = a4;
  v48 = a1;
  v49 = a2;
  v50 = a7;
  sub_21880B928(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  sub_2187FAD00(0);
  v19 = v18;
  v47 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v40 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v41 = *(v7 + *((*MEMORY[0x277D85000] & *v7) + 0x68));
  sub_219BE6EC4();
  v51 = v52;
  v24 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v24, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_219BEB244();
  v25 = v19;
  v26 = *(v10 + 8);
  v48 = v10 + 8;
  v49 = v9;
  v26(v12, v9);
  v27 = v47;
  v28 = *(v47 + 48);
  if (v28(v17, 1, v25) == 1)
  {
    sub_218817724(v17, &unk_280EE58B0, sub_2187FAD00);
    if (v44)
    {
      v39 = v25;
      sub_219BE6EC4();
      v51 = v52;
      sub_219BE7B94();

      v29 = v42;
      v30 = v49;
      sub_219BEB244();
      v31 = v39;
      v26(v12, v30);
      if (v28(v29, 1, v31) != 1)
      {
        v35 = v40;
        (*(v27 + 32))(v40, v29, v31);
        v36 = v31;
        v33 = v50;
        sub_2197091BC(v45, v46, v50);
        (*(v27 + 8))(v35, v36);
        v32 = 0;
        goto LABEL_8;
      }

      sub_218817724(v29, &unk_280EE58B0, sub_2187FAD00);
    }

    v32 = 1;
    v33 = v50;
  }

  else
  {
    (*(v27 + 32))(v23, v17, v25);
    v34 = v50;
    sub_2197091BC(v45, v46, v50);
    (*(v27 + 8))(v23, v25);
    v32 = 0;
    v33 = v34;
  }

LABEL_8:
  v37 = sub_219BDDD94();
  return (*(*(v37 - 8) + 56))(v33, v32, 1, v37);
}

uint64_t sub_219701EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  sub_218812314(a1, v16 - v5, &unk_280EE58B0, sub_2187FAD00);
  sub_2187FAD00(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7) == 1)
  {
    sub_218817724(v6, &unk_280EE58B0, sub_2187FAD00);
    v10 = sub_219BDEA34();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_219BE6934();
    v12 = v16[1];
    (*(v9 + 8))(v6, v8);
    v18 = &type metadata for TodaySectionDescriptor;
    v19 = sub_2197161EC();
    *&v17 = v12;
    sub_2186CB1F0(&v17, v20);
    sub_2186CB1F0(v20, a2);
    v13 = *MEMORY[0x277D30258];
    v14 = sub_219BDEA34();
    v15 = *(v14 - 8);
    (*(v15 + 104))(a2, v13, v14);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }
}

uint64_t sub_21970214C(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219BE1E74();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_219702220()
{
  sub_21880B928(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v9[0] = v9[1];
  v5 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v5, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v6 = sub_218827310();
  (*(v2 + 8))(v4, v1);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v8 = off_282A6CF68;
    type metadata accessor for TodayDataManager();
    v8(v6);
    return sub_21885AB78(v6);
  }

  return result;
}

void sub_219702414()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v4 = [Strong presentedViewController];

    if (v4)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v2 = swift_unknownObjectWeakLoadStrong();
        if (v2)
        {
          v3 = v2;
          [v2 dismissViewControllerAnimated:0 completion:0];
        }
      }
    }
  }
}

uint64_t sub_219702514()
{
  sub_219702540();

  return sub_218811A74(1);
}

void sub_219702540()
{
  v1 = MEMORY[0x277D31758];
  sub_21881214C(0, &unk_280EE65B0, &qword_280EE65C0, MEMORY[0x277D31758]);
  v149 = v2;
  MEMORY[0x28223BE20](v2);
  v150 = &v132 - v3;
  v162 = sub_219BE3794();
  v164 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v148 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D31680];
  sub_21881214C(0, &qword_280EE6608, &unk_280EE6610, MEMORY[0x277D31680]);
  v155 = v6;
  MEMORY[0x28223BE20](v6);
  v156 = &v132 - v7;
  v8 = sub_219BE38C4();
  v9 = *(v8 - 8);
  v157 = v8;
  v158 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v154 = &v132 - v13;
  v14 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE6610, v5, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v151 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v159 = &v132 - v18;
  MEMORY[0x28223BE20](v19);
  v153 = &v132 - v20;
  MEMORY[0x28223BE20](v21);
  v160 = &v132 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v132 - v24;
  v26 = sub_219BE3514();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE65C0, v1, v14);
  MEMORY[0x28223BE20](v30 - 8);
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  v161 = &v132 - v34;
  MEMORY[0x28223BE20](v35);
  v40 = &v132 - v39;
  v41 = *MEMORY[0x277D85000] & *v0;
  if (*(v0 + *(v41 + 0x148)) == 1)
  {
    v146 = v38;
    v145 = v37;
    v138 = v36;
    v137 = v11;
    v42 = *(v41 + 272);
    sub_218718690(v0 + v42, &v166);
    v163 = v25;
    v152 = v0;
    v43 = v27;
    v147 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    v44 = *MEMORY[0x277D314F8];
    v45 = *(v27 + 104);
    v45(v29, v44, v26);
    v165 = v40;
    sub_219BE3AC4();
    v46 = *(v27 + 8);
    v46(v29, v26);
    __swift_destroy_boxed_opaque_existential_1(&v166);
    v143 = v42;
    sub_218718690(v152 + v42, &v166);
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    v141 = v44;
    v142 = v27 + 104;
    v140 = v45;
    v45(v29, v44, v26);
    v47 = v163;
    sub_219BE3AD4();
    v48 = v29;
    v144 = v26;
    v147 = v43 + 8;
    v139 = v46;
    v46(v29, v26);
    __swift_destroy_boxed_opaque_existential_1(&v166);
    if (qword_280EE5F08 != -1)
    {
      swift_once();
    }

    v49 = sub_219BE5434();
    v50 = __swift_project_value_buffer(v49, qword_280F62520);
    v51 = v160;
    sub_218812314(v47, v160, &unk_280EE6610, MEMORY[0x277D31680]);
    v52 = v165;
    v53 = v161;
    sub_218812314(v165, v161, &qword_280EE65C0, MEMORY[0x277D31758]);
    v54 = sub_219BE5414();
    v55 = sub_219BF6214();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v162;
    v58 = v164;
    if (v56)
    {
      v134 = v55;
      v135 = v54;
      v59 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v166 = v133;
      *v59 = 136315394;
      v60 = v153;
      sub_218812314(v51, v153, &unk_280EE6610, MEMORY[0x277D31680]);
      v136 = v58[6];
      if (v136(v60, 1, v57) == 1)
      {
        sub_218817724(v60, &unk_280EE6610, MEMORY[0x277D31680]);
        v61 = 0xE300000000000000;
        v62 = 7104878;
      }

      else
      {
        v62 = sub_219BE3784();
        v61 = v66;
        (v58[1])(v60, v57);
      }

      v67 = v154;
      sub_218817724(v160, &unk_280EE6610, MEMORY[0x277D31680]);
      v68 = sub_2186D1058(v62, v61, &v166);

      *(v59 + 4) = v68;
      *(v59 + 12) = 2080;
      v69 = v146;
      sub_218812314(v53, v146, &qword_280EE65C0, MEMORY[0x277D31758]);
      v64 = v157;
      v70 = v158;
      v71 = *(v158 + 48);
      if (v71(v69, 1, v157) == 1)
      {
        (*(v70 + 104))(v67, *MEMORY[0x277D31738], v64);
        v72 = v71(v69, 1, v64) == 1;
        v73 = v69;
        v74 = v163;
        if (!v72)
        {
          sub_218817724(v73, &qword_280EE65C0, MEMORY[0x277D31758]);
        }
      }

      else
      {
        (*(v70 + 32))(v67, v69, v64);
        v74 = v163;
      }

      sub_2187E1408(&unk_280EE65D0, MEMORY[0x277D31758], MEMORY[0x277D31768]);
      v75 = sub_219BF7894();
      v77 = v76;
      (*(v70 + 8))(v67, v64);
      sub_218817724(v161, &qword_280EE65C0, MEMORY[0x277D31758]);
      v78 = sub_2186D1058(v75, v77, &v166);

      *(v59 + 14) = v78;
      v79 = v135;
      _os_log_impl(&dword_2186C1000, v135, v134, "Masthead placement state after coming back to foreground: source=%s state=%s.", v59, 0x16u);
      v80 = v133;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v80, -1, -1);
      MEMORY[0x21CECF960](v59, -1, -1);

      v58 = v164;
      v52 = v165;
      v47 = v74;
      v57 = v162;
      v65 = v159;
      v63 = v136;
    }

    else
    {

      sub_218817724(v53, &qword_280EE65C0, MEMORY[0x277D31758]);
      sub_218817724(v51, &unk_280EE6610, MEMORY[0x277D31680]);
      v63 = v58[6];
      v64 = v157;
      v65 = v159;
    }

    v81 = v63;
    v82 = v63(v47, 1, v57);
    v162 = v48;
    if (v82 == 1 && (*(v158 + 48))(v52, 1, v64) == 1)
    {
      goto LABEL_32;
    }

    v83 = v47;
    v84 = v50;
    v58[13](v65, *MEMORY[0x277D31668], v57);
    (v58[7])(v65, 0, 1, v57);
    v85 = *(v155 + 48);
    v86 = v65;
    v87 = MEMORY[0x277D31680];
    v88 = v83;
    v89 = v156;
    sub_218812314(v88, v156, &unk_280EE6610, MEMORY[0x277D31680]);
    sub_218812314(v86, v89 + v85, &unk_280EE6610, v87);
    if (v81(v89, 1, v57) == 1)
    {
      sub_218817724(v86, &unk_280EE6610, MEMORY[0x277D31680]);
      v90 = v84;
      if (v81(v89 + v85, 1, v57) == 1)
      {
        sub_218817724(v89, &unk_280EE6610, MEMORY[0x277D31680]);
        v52 = v165;
        v47 = v163;
        goto LABEL_26;
      }
    }

    else
    {
      v91 = v151;
      sub_218812314(v89, v151, &unk_280EE6610, MEMORY[0x277D31680]);
      if (v81(v89 + v85, 1, v57) != 1)
      {
        v132 = v84;
        v95 = v164;
        v96 = v89 + v85;
        v97 = v148;
        (v164)[4](v148, v96, v57);
        sub_2187E1408(&qword_280EE6628, MEMORY[0x277D31680], MEMORY[0x277D31688]);
        v98 = sub_219BF53A4();
        v99 = v57;
        v100 = v95[1];
        v100(v97, v99);
        v101 = MEMORY[0x277D31680];
        sub_218817724(v159, &unk_280EE6610, MEMORY[0x277D31680]);
        v100(v91, v99);
        v90 = v132;
        sub_218817724(v89, &unk_280EE6610, v101);
        v52 = v165;
        v47 = v163;
        if (v98)
        {
LABEL_26:
          v132 = v90;
          v102 = v158;
          v103 = v145;
          (*(v158 + 104))(v145, *MEMORY[0x277D31750], v64);
          (*(v102 + 56))(v103, 0, 1, v64);
          v104 = v52;
          v105 = *(v149 + 48);
          v106 = MEMORY[0x277D31758];
          v107 = v64;
          v108 = v150;
          sub_218812314(v104, v150, &qword_280EE65C0, MEMORY[0x277D31758]);
          sub_218812314(v103, v108 + v105, &qword_280EE65C0, v106);
          v109 = *(v102 + 48);
          if (v109(v108, 1, v107) == 1)
          {
            sub_218817724(v103, &qword_280EE65C0, MEMORY[0x277D31758]);
            if (v109(v108 + v105, 1, v107) == 1)
            {
              sub_218817724(v108, &qword_280EE65C0, MEMORY[0x277D31758]);
              v52 = v165;
              goto LABEL_22;
            }
          }

          else
          {
            v110 = v138;
            sub_218812314(v108, v138, &qword_280EE65C0, MEMORY[0x277D31758]);
            if (v109(v108 + v105, 1, v107) != 1)
            {
              v127 = v108 + v105;
              v128 = v137;
              (*(v102 + 32))(v137, v127, v107);
              sub_2187E1408(&unk_280EE65E0, MEMORY[0x277D31758], MEMORY[0x277D31760]);
              v129 = sub_219BF53A4();
              v130 = *(v102 + 8);
              v130(v128, v107);
              v131 = MEMORY[0x277D31758];
              sub_218817724(v145, &qword_280EE65C0, MEMORY[0x277D31758]);
              v130(v110, v107);
              sub_218817724(v108, &qword_280EE65C0, v131);
              v52 = v165;
              if (v129)
              {
                goto LABEL_22;
              }

LABEL_32:
              v111 = v152;
              v112 = [*(v111 + *((*MEMORY[0x277D85000] & *v111) + 0x120)) cachedSubscription];
              if ([v112 isSubscribed] && (sub_2196F6108() & 1) == 0)
              {
                v123 = sub_219BE5414();
                v124 = sub_219BF6214();
                if (os_log_type_enabled(v123, v124))
                {
                  v125 = swift_slowAlloc();
                  *v125 = 0;
                  _os_log_impl(&dword_2186C1000, v123, v124, "Subscription state prevented refreshing Masthead placement.", v125, 2u);
                  v126 = v125;
                  v52 = v165;
                  MEMORY[0x21CECF960](v126, -1, -1);
                }
              }

              else
              {
                v164 = v112;
                v113 = sub_219BE5414();
                v114 = sub_219BF6214();
                if (os_log_type_enabled(v113, v114))
                {
                  v115 = swift_slowAlloc();
                  *v115 = 0;
                  _os_log_impl(&dword_2186C1000, v113, v114, "Refreshing Masthead placement...", v115, 2u);
                  MEMORY[0x21CECF960](v115, -1, -1);
                }

                v116 = v143;
                sub_218718690(v111 + v143, &v166);
                __swift_project_boxed_opaque_existential_1(&v166, v167);
                v117 = v162;
                v118 = v141;
                v119 = v144;
                v120 = v140;
                v140(v162, v141, v144);
                sub_219BE3A64();
                v121 = v111;
                v122 = v139;
                v139(v117, v119);
                __swift_destroy_boxed_opaque_existential_1(&v166);
                sub_218718690(v121 + v116, &v166);
                __swift_project_boxed_opaque_existential_1(&v166, v167);
                v120(v117, v118, v119);
                sub_219BE3A34();

                v122(v117, v119);
                __swift_destroy_boxed_opaque_existential_1(&v166);
                v47 = v163;
                v52 = v165;
              }

              goto LABEL_40;
            }

            sub_218817724(v145, &qword_280EE65C0, MEMORY[0x277D31758]);
            (*(v102 + 8))(v110, v107);
          }

          sub_218812394(v108, &unk_280EE65B0, &qword_280EE65C0, MEMORY[0x277D31758]);
          v52 = v165;
          goto LABEL_32;
        }

LABEL_22:
        v92 = sub_219BE5414();
        v93 = sub_219BF6214();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_2186C1000, v92, v93, "No need to refresh Masthead placement.", v94, 2u);
          MEMORY[0x21CECF960](v94, -1, -1);
        }

LABEL_40:
        sub_218817724(v47, &unk_280EE6610, MEMORY[0x277D31680]);
        sub_218817724(v52, &qword_280EE65C0, MEMORY[0x277D31758]);
        return;
      }

      sub_218817724(v159, &unk_280EE6610, MEMORY[0x277D31680]);
      (v164[1])(v91, v57);
    }

    sub_218812394(v89, &qword_280EE6608, &unk_280EE6610, MEMORY[0x277D31680]);
    v52 = v165;
    v47 = v163;
    goto LABEL_22;
  }
}

double sub_2197039C8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = type metadata accessor for TodayExpandContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_219BE7B04();
  sub_21880BB00(v7);
  if (v7 >> 62)
  {
    v10 = *(v3 + 80);
    v9 = *(v3 + 88);
    v15[1] = (*(v9 + 72))(v10, v9);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2187F684C(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayExpandContext);
    v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v9;
    v13[4] = v11;
    sub_21880BBE4(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TodayExpandContext);
    v14 = MEMORY[0x277D6D888];
    sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
    sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v14, MEMORY[0x277D6D890]);

    sub_219BE6EF4();
  }

  else
  {
    sub_21881DCEC(a1);
  }

  return result;
}

void sub_219703CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_219BE85F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*(v9 + 16))(v11, a1, v8);
    if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D6DFA0])
    {
      (*(v9 + 8))(v11, v8);
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v16 = v14;
        type metadata accessor for TodayInteractor(0, a4, a5, v15);
        v17 = v13;
        sub_218844CD0(0, v16);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }
}

void sub_219703EB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_219717104();
}

uint64_t sub_219703F50(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_218774F78(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x88)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x90)]);

  sub_218817724(&a1[*((*v3 & *a1) + 0xB0)], &qword_280ED2200, type metadata accessor for TodayPrewarmResult);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xB8)]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xE0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xE8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xF0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xF8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x100)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x108)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x110)]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x130)]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_21970444C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v303 = a3;
  v304 = a4;
  v300 = a2;
  v316 = a1;
  v317 = a5;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v264 = &v238 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v272 = &v238 - v9;
  v271 = sub_219BEDAE4();
  v270 = *(v271 - 8);
  MEMORY[0x28223BE20](v271);
  v269 = &v238 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_219BDEA14();
  v258 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v256 = &v238 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_219BDEB14();
  v255 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v254 = &v238 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v250 = &v238 - v14;
  v248 = sub_219BDDED4();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v249 = (&v238 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265 = sub_219BDDBF4();
  v253 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v251 = &v238 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v252 = &v238 - v18;
  v263 = sub_219BF0B74();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v261 = &v238 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_219BEDB94();
  v240 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v239 = &v238 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v246);
  v245 = &v238 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_219BF0AC4();
  v243 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v242 = &v238 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_219BF04A4();
  v274 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v273 = &v238 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v5);
  MEMORY[0x28223BE20](v24 - 8);
  v266 = &v238 - v25;
  v268 = sub_219BDDDA4();
  v267 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v260 = &v238 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDE4D4();
  v311 = *(v27 - 8);
  v312 = v27;
  MEMORY[0x28223BE20](v27);
  v276 = &v238 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_219BF07A4();
  v286 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v285 = &v238 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280E90A30, MEMORY[0x277D33058], v5);
  MEMORY[0x28223BE20](v30 - 8);
  v279 = &v238 - v31;
  sub_2187DD4F0(0, &unk_280EE9D00, MEMORY[0x277CC9260], v5);
  MEMORY[0x28223BE20](v32 - 8);
  v281 = &v238 - v33;
  v283 = sub_219BDB954();
  v282 = *(v283 - 8);
  MEMORY[0x28223BE20](v283);
  v278 = &v238 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E90180, MEMORY[0x277D33E20], v5);
  MEMORY[0x28223BE20](v35 - 8);
  v280 = &v238 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v290 = &v238 - v38;
  v291 = sub_219BF1094();
  v288 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v289 = &v238 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDE744();
  v298 = *(v40 - 8);
  v299 = v40;
  MEMORY[0x28223BE20](v40);
  v297 = &v238 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BF0634();
  v307 = *(v42 - 8);
  v308 = v42;
  MEMORY[0x28223BE20](v42);
  v302 = &v238 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE8AA0, MEMORY[0x277D30260], v5);
  MEMORY[0x28223BE20](v44 - 8);
  v293 = &v238 - v45;
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], v5);
  MEMORY[0x28223BE20](v46 - 8);
  v305 = &v238 - v47;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v5);
  MEMORY[0x28223BE20](v48 - 8);
  v306 = &v238 - v49;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v5);
  MEMORY[0x28223BE20](v50 - 8);
  v277 = &v238 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v284 = &v238 - v53;
  MEMORY[0x28223BE20](v54);
  v301 = &v238 - v55;
  sub_219717384(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v57 = v56;
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v313 = &v238 - v59;
  v296 = sub_219BDE7A4();
  v295 = *(v296 - 8);
  MEMORY[0x28223BE20](v296);
  v294 = &v238 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BF0F34();
  v314 = *(v61 - 8);
  v315 = v61;
  MEMORY[0x28223BE20](v61);
  v63 = &v238 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_219BF13A4();
  MEMORY[0x28223BE20](v292);
  v65 = &v238 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BF0614();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v238 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v72 = &v238 - v71;
  v73 = v316;
  sub_219BE5FC4();
  sub_219BF1394();
  v74 = v65;
  v75 = v67;
  sub_21880BA68(v74, MEMORY[0x277D33320]);
  v76 = *(v67 + 16);
  v318 = v72;
  v76(v69, v72, v66);
  v77 = (*(v67 + 88))(v69, v66);
  if (v77 == *MEMORY[0x277D32DB8] || v77 == *MEMORY[0x277D32D10] || v77 == *MEMORY[0x277D32E00])
  {
    goto LABEL_22;
  }

  if (v77 != *MEMORY[0x277D32E10])
  {
    if (v77 == *MEMORY[0x277D32E18])
    {
      (*(v67 + 96))(v69, v66);
      v101 = v288;
      v102 = v289;
      (*(v288 + 32))(v289, v69, v291);
      v103 = v290;
      sub_219BF1034();
      v104 = sub_219BF3484();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v103, 1, v104) == 1)
      {
        v106 = v281;
        sub_219BF1084();
        v107 = v282;
        v108 = v283;
        if ((*(v282 + 48))(v106, 1, v283) == 1)
        {
          sub_218817724(v106, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v109 = v279;
          sub_219BF1074();
          v111 = v314;
          v110 = v315;
          if ((*(v314 + 48))(v109, 1, v315) == 1)
          {
            (*(v288 + 8))(v102, v291);
            (*(v75 + 8))(v318, v66);
            sub_218817724(v109, &unk_280E90A30, MEMORY[0x277D33058]);
            v112 = type metadata accessor for TodayRouteModel(0);
            (*(*(v112 - 8) + 56))(v317, 1, 1, v112);
LABEL_44:
            sub_218817724(v290, &qword_280E90180, MEMORY[0x277D33E20]);
            return;
          }

          sub_219BF0F14();
          (*(v111 + 8))(v109, v110);
          (*(v58 + 16))(v313, v73, v57);
          (*(v311 + 56))(v301, 1, 1, v312);
          v155 = sub_219BDEA34();
          (*(*(v155 - 8) + 56))(v293, 1, 1, v155);
          (*(v307 + 104))(v302, *MEMORY[0x277D32E98], v308);
          sub_2191FD45C();
          swift_unknownObjectRetain();
          v156 = v294;
          sub_219BDE794();
          v157 = v288;
          v283 = v66;
          v158 = (v310 + *((*MEMORY[0x277D85000] & *v310) + 0x88));
          v159 = v75;
          __swift_project_boxed_opaque_existential_1(v158, v158[3]);
          swift_getWitnessTable();
          v160 = v297;
          sub_219BDECF4();
          sub_219BDE734();
          sub_219BDEC64();

          v161 = v317;
          sub_219BDE724();
          swift_unknownObjectRelease();
          (*(v298 + 8))(v160, v299);
          (*(v295 + 8))(v156, v296);
          (*(v157 + 8))(v289, v291);
          (*(v159 + 8))(v318, v283);
          v142 = type metadata accessor for TodayRouteModel(0);
          swift_storeEnumTagMultiPayload();
          v143 = *(*(v142 - 8) + 56);
          v144 = v161;
        }

        else
        {
          (*(v288 + 8))(v102, v291);
          (*(v75 + 8))(v318, v66);
          v139 = *(v107 + 32);
          v140 = v278;
          v139(v278, v106, v108);
          v141 = v317;
          v139(v317, v140, v108);
          v142 = type metadata accessor for TodayRouteModel(0);
          swift_storeEnumTagMultiPayload();
          v143 = *(*(v142 - 8) + 56);
          v144 = v141;
        }

        v143(v144, 0, 1, v142);
        goto LABEL_44;
      }

      v128 = v280;
      sub_218812314(v103, v280, &qword_280E90180, MEMORY[0x277D33E20]);
      v129 = (*(v105 + 88))(v128, v104);
      if (v129 == *MEMORY[0x277D33DF0])
      {
        (*(v105 + 96))(v128, v104);

        v130 = sub_219BF4024();
        if (v130)
        {
          v131 = v75;
          v132 = [v130 identifier];
          v133 = sub_219BF5414();
          v135 = v134;
          swift_unknownObjectRelease();

          (*(v101 + 8))(v289, v291);
          (*(v131 + 8))(v318, v66);
          v136 = v317;
          *v317 = v133;
          v136[1] = v135;
          v137 = 8;
LABEL_43:
          v136[2] = v137;
          v173 = type metadata accessor for TodayRouteModel(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v173 - 8) + 56))(v136, 0, 1, v173);

          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (v129 == *MEMORY[0x277D33E08])
      {
        (*(v105 + 96))(v128, v104);

        v145 = sub_219BF46D4();
        if (v145)
        {
          v146 = v75;
          v147 = [v145 identifier];
          v148 = sub_219BF5414();
          v150 = v149;
          swift_unknownObjectRelease();

          (*(v101 + 8))(v289, v291);
          (*(v146 + 8))(v318, v66);
          v136 = v317;
          *v317 = v148;
          v136[1] = v150;
          v137 = 4;
          goto LABEL_43;
        }

        goto LABEL_45;
      }

      if (v129 == *MEMORY[0x277D33DF8])
      {
        (*(v105 + 96))(v128, v104);

        v167 = sub_219BF4BE4();
        if (v167)
        {
          v168 = v75;
          v169 = [v167 identifier];
          v170 = sub_219BF5414();
          v172 = v171;
          swift_unknownObjectRelease();

          (*(v101 + 8))(v289, v291);
          (*(v168 + 8))(v318, v66);
          v136 = v317;
          *v317 = v170;
          v136[1] = v172;
          v137 = 7;
          goto LABEL_43;
        }

LABEL_45:

        (*(v101 + 8))(v289, v291);
        (*(v75 + 8))(v318, v66);
        v174 = type metadata accessor for TodayRouteModel(0);
        (*(*(v174 - 8) + 56))(v317, 1, 1, v174);

LABEL_46:
        sub_218817724(v103, &qword_280E90180, MEMORY[0x277D33E20]);
        return;
      }

      v188 = v75;
      v189 = *MEMORY[0x277D33E00];
      v190 = v129;
      (*(v101 + 8))(v289, v291);
      (*(v188 + 8))(v318, v66);
      (*(v105 + 8))(v128, v104);
      if (v190 != v189 && v190 != *MEMORY[0x277D33E18] && v190 != *MEMORY[0x277D33DE8] && v190 != *MEMORY[0x277D33E10])
      {
        v191 = type metadata accessor for TodayRouteModel(0);
        (*(*(v191 - 8) + 56))(v317, 1, 1, v191);
        goto LABEL_46;
      }

      sub_218817724(v103, &qword_280E90180, MEMORY[0x277D33E20]);
LABEL_23:
      v100 = type metadata accessor for TodayRouteModel(0);
      v97 = *(*(v100 - 8) + 56);
      v98 = v317;
      v99 = 1;
      goto LABEL_24;
    }

    if (v77 == *MEMORY[0x277D32DD8])
    {
      v316 = v67;
      (*(v67 + 96))(v69, v66);
      (*(v286 + 32))(v285, v69, v287);
      v113 = v310;
      v114 = (v310 + *((*MEMORY[0x277D85000] & *v310) + 0x90));
      v115 = __swift_project_boxed_opaque_existential_1(v114, v114[3]);
      v116 = sub_219BF06B4();
      WitnessTable = swift_getWitnessTable();
      v118 = sub_219BF04D4();
      sub_2197019FC(v118, v119, 0, 0, 0, 0, v306);

      (*(v307 + 56))(v305, 1, 1, v308);
      v120 = v284;
      sub_219BDE4B4();
      (*(v311 + 56))(v120, 0, 1, v312);
      v121 = *v115;
      v122 = *(*v115 + 16);
      v123 = [objc_msgSend(v116 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v123)
      {
        sub_219BF5414();
        v123 = sub_219BF53D4();
      }

      v124 = [v122 hasMutedSubscriptionForTagID_];

      if (v124)
      {
        v125 = v277;
        sub_218812314(v120, v277, &unk_280EE8C40, MEMORY[0x277D30018]);
        v127 = v311;
        v126 = v312;
        if ((*(v311 + 48))(v125, 1, v312) == 1)
        {
          sub_218817724(v125, &unk_280EE8C40, MEMORY[0x277D30018]);
        }

        else
        {
          v162 = v276;
          (*(v127 + 32))(v276, v125, v126);
          if (sub_219BDE4A4())
          {
            v283 = v66;
            __swift_project_boxed_opaque_existential_1((v121 + 24), *(v121 + 48));
            v163 = v306;
            sub_219BDE4C4();
            v164 = v266;
            sub_219BDEA24();
            sub_218817724(v163, &qword_280EE8D20, MEMORY[0x277D2FD40]);
            v165 = v267;
            v166 = v268;
            if ((*(v267 + 48))(v164, 1, v268) != 1)
            {
              v210 = *(v165 + 32);
              v211 = v164;
              v212 = v260;
              v210(v260, v211, v166);
              v184 = swift_allocObject();
              *(v184 + 40) = v166;
              *(v184 + 48) = sub_2187E1408(&qword_27CC11940, MEMORY[0x277D2FD50], MEMORY[0x277D2FD48]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v184 + 16));
              v210(boxed_opaque_existential_1, v212, v166);
              (*(v311 + 8))(v162, v312);
              v186 = 0;
              *(v184 + 56) = 0;
              *(v184 + 64) = 0;
              *(v184 + 72) = v116;
              *(v184 + 80) = v113;
              v185 = 1;
              *(v184 + 88) = WitnessTable;
              *(v184 + 96) = 0;
              v116 = 0;
              WitnessTable = 0;
              v66 = v283;
              v120 = v284;
              goto LABEL_54;
            }

            (*(v311 + 8))(v162, v312);
            sub_218817724(v164, &unk_280EE8D10, MEMORY[0x277D2FD50]);
            v66 = v283;
          }

          else
          {
            (*(v127 + 8))(v162, v126);
          }

          v120 = v284;
        }
      }

      v184 = 0;
      v185 = 0;
      v186 = v113;
LABEL_54:
      swift_unknownObjectRetain();
      sub_218817724(v120, &unk_280EE8C40, MEMORY[0x277D30018]);
      (*(v286 + 8))(v285, v287);
      (*(v316 + 8))(v318, v66);
      v187 = v317;
      *v317 = v184;
      v187[1] = 0;
      v187[2] = v116;
      v187[3] = v186;
      v187[4] = WitnessTable;
      *(v187 + 40) = v185;
      v96 = type metadata accessor for TodayRouteModel(0);
      swift_storeEnumTagMultiPayload();
      v97 = *(*(v96 - 8) + 56);
      v98 = v187;
      goto LABEL_6;
    }

    if (v77 == *MEMORY[0x277D32CF8])
    {
LABEL_22:
      v138 = *(v67 + 8);
      v138(v318, v66);
      v138(v69, v66);
      goto LABEL_23;
    }

    if (v77 == *MEMORY[0x277D32DC0])
    {
      (*(v67 + 96))(v69, v66);
      v151 = v274;
      v152 = v273;
      v153 = v275;
      (*(v274 + 32))(v273, v69, v275);
      sub_219BF0404();
      goto LABEL_32;
    }

    if (v77 != *MEMORY[0x277D32CF0])
    {
      if (v77 == *MEMORY[0x277D32E08] || v77 == *MEMORY[0x277D32DB0] || v77 == *MEMORY[0x277D32DE0])
      {
        goto LABEL_22;
      }

      if (v77 == *MEMORY[0x277D32DF0])
      {
        (*(v67 + 96))(v69, v66);
        (*(v262 + 32))(v261, v69, v263);
        v192 = v304;

        v193 = sub_219BF04D4();
        v194 = v303;
        v195 = v249;
        *v249 = v303;
        v195[1] = v192;
        v195[2] = v193;
        v195[3] = v196;
        (*(v247 + 104))(v195, *MEMORY[0x277D2FDC0], v248);
        v197 = sub_219BDD944();
        (*(*(v197 - 8) + 56))(v250, 1, 1, v197);
        v198 = v252;
        sub_219BDDBD4();
        v199 = sub_219BF0AF4();
        v314 = v200;
        v315 = v199;
        sub_219BF0B44();
        v316 = v75;
        v201 = v253;
        (*(v253 + 16))(v251, v198, v265);
        v202 = sub_219BF04D4();
        v283 = v66;
        sub_2197019FC(v202, v203, 0, 0, v194, v192, v306);

        v205 = v307;
        v204 = v308;
        (*(v307 + 56))(v305, 1, 1, v308);
        v206 = v301;
        sub_219BDE4B4();
        (*(v311 + 56))(v206, 0, 1, v312);
        (*(v205 + 104))(v302, *MEMORY[0x277D32E98], v204);
        v207 = v254;
        sub_219BDEB04();
        swift_getWitnessTable();
        v208 = v256;
        sub_219BDE2F4();
        sub_219BDEA04();
        sub_219BDEBC4();

        v209 = sub_219BDE9F4();
        (*(v258 + 8))(v208, v259);
        (*(v255 + 8))(v207, v257);
        (*(v201 + 8))(v198, v265);
        (*(v262 + 8))(v261, v263);
        (*(v316 + 8))(v318, v283);
        v154 = v317;
        *v317 = v209;
        v96 = type metadata accessor for TodayRouteModel(0);
        goto LABEL_33;
      }

      if (v77 == *MEMORY[0x277D32D38])
      {
        goto LABEL_22;
      }

      if (v77 == *MEMORY[0x277D32DE8])
      {
        (*(v67 + 96))(v69, v66);
        v215 = v243;
        v216 = v242;
        v217 = v69;
        v218 = v244;
        (*(v243 + 32))(v242, v217, v244);
        v316 = sub_219BF0AA4();
        v219 = v246;
        v220 = *(v246 + 20);
        v221 = sub_219BF24E4();
        v222 = v75;
        v223 = v245;
        (*(*(v221 - 8) + 56))(&v245[v220], 1, 1, v221);
        v224 = v318;
        v225 = sub_219BF04D4();
        v227 = v226;
        (*(v215 + 8))(v216, v218);
        (*(v222 + 8))(v224, v66);
        *v223 = v316;
        *(v223 + 8) = 0;
        *(v223 + 16) = 1;
        v228 = (v223 + v219[6]);
        *v228 = v225;
        v228[1] = v227;
        v229 = (v223 + v219[7]);
        v230 = v304;
        *v229 = v303;
        v229[1] = v230;
        v231 = (v223 + v219[8]);
        *v231 = 0;
        v231[1] = 0;
        v232 = v317;
        sub_21880BBE4(v223, v317, type metadata accessor for PuzzleModel);
        v233 = type metadata accessor for TodayRouteModel(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v233 - 8) + 56))(v232, 0, 1, v233);

        return;
      }

      if (v77 != *MEMORY[0x277D32D18])
      {
        v234 = *MEMORY[0x277D32DD0];
        v235 = *(v67 + 8);
        v236 = v77;
        v235(v318, v66);
        if (v236 != v234)
        {
          v237 = type metadata accessor for TodayRouteModel(0);
          (*(*(v237 - 8) + 56))(v317, 1, 1, v237);
          v235(v69, v66);
          return;
        }

        goto LABEL_23;
      }

      (*(v67 + 96))(v69, v66);
      v151 = v240;
      v152 = v239;
      v153 = v241;
      (*(v240 + 32))(v239, v69, v241);
      sub_219BEDB74();
LABEL_32:
      v154 = v317;
      sub_219BDD644();
      (*(v151 + 8))(v152, v153);
      (*(v75 + 8))(v318, v66);
      v96 = type metadata accessor for TodayRouteModel(0);
LABEL_33:
      swift_storeEnumTagMultiPayload();
      v97 = *(*(v96 - 8) + 56);
      v98 = v154;
      goto LABEL_6;
    }

    (*(v67 + 96))(v69, v66);
    v175 = v270;
    v176 = v269;
    v177 = v271;
    (*(v270 + 32))(v269, v69, v271);
    v178 = v272;
    sub_219BEDAD4();
    (*(v175 + 8))(v176, v177);
    (*(v67 + 8))(v318, v66);
    v179 = sub_219BF1DA4();
    v180 = *(v179 - 8);
    if ((*(v180 + 48))(v178, 1, v179) != 1)
    {
      v181 = v264;
      sub_218812314(v178, v264, &qword_280E905C0, MEMORY[0x277D33610]);
      if ((*(v180 + 88))(v181, v179) == *MEMORY[0x277D33608])
      {
        (*(v180 + 96))(v181, v179);
        v182 = v317;
        (*(v282 + 32))(v317, v181, v283);
        v183 = type metadata accessor for TodayRouteModel(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v183 - 8) + 56))(v182, 0, 1, v183);
LABEL_69:
        sub_218817724(v178, &qword_280E905C0, MEMORY[0x277D33610]);
        return;
      }

      (*(v180 + 8))(v181, v179);
    }

    v214 = type metadata accessor for TodayRouteModel(0);
    (*(*(v214 - 8) + 56))(v317, 1, 1, v214);
    goto LABEL_69;
  }

  (*(v67 + 96))(v69, v66);
  (*(v314 + 32))(v63, v69, v315);
  (*(v58 + 16))(v313, v73, v57);
  v291 = sub_219BF0F14();
  v78 = sub_219BF04D4();
  v316 = v67;
  v79 = v78;
  v81 = v80;
  v82 = [sub_219BF0F14() identifier];
  v283 = v66;
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = sub_219BF5414();
  v86 = v85;

  v87 = v310;
  sub_2197019FC(v79, v81, v84, v86, v303, v304, v306);

  v89 = v307;
  v88 = v308;
  (*(v307 + 56))(v305, 1, 1, v308);
  v90 = v301;
  sub_219BDE4B4();
  (*(v311 + 56))(v90, 0, 1, v312);
  v91 = sub_219BDEA34();
  (*(*(v91 - 8) + 56))(v293, 1, 1, v91);
  (*(v89 + 104))(v302, *MEMORY[0x277D32E98], v88);
  sub_2191FD45C();
  v92 = v294;
  sub_219BDE794();
  v93 = (v87 + *((*MEMORY[0x277D85000] & *v87) + 0x88));
  __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  swift_getWitnessTable();
  v94 = v297;
  sub_219BDECF4();
  sub_219BDE734();
  sub_219BDEC64();

  v95 = v317;
  sub_219BDE724();
  (*(v298 + 8))(v94, v299);
  (*(v295 + 8))(v92, v296);
  (*(v314 + 8))(v63, v315);
  (*(v316 + 8))(v318, v283);
  v96 = type metadata accessor for TodayRouteModel(0);
  swift_storeEnumTagMultiPayload();
  v97 = *(*(v96 - 8) + 56);
  v98 = v95;
LABEL_6:
  v99 = 0;
  v100 = v96;
LABEL_24:
  v97(v98, v99, 1, v100);
}

double sub_219707424(uint64_t a1, void *a2, unint64_t a3)
{
  v84 = a3;
  v75 = *MEMORY[0x277D85000] & *a2;
  v4 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v76);
  v77 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD34B0(0);
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v63 - v10;
  v11 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  v14 = v13;
  v80 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219717384(0, &qword_280E8D4A0, sub_21880B928, sub_2193A56A0, MEMORY[0x277D84310]);
  v82 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  sub_21880B928(0);
  v21 = v20;
  v83 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v81 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v63 - v24;
  v26 = sub_219BE7B04();
  if (v26 >> 62 != 1)
  {
    sub_21880BB00(v26);
    return result;
  }

  v27 = *((*MEMORY[0x277D85000] & *a2) + 0x68);
  v67 = a2;
  v70 = *(a2 + v27);
  sub_219BE6EC4();
  v87 = v85;
  v28 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  v30 = v29;
  v31 = sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v28, MEMORY[0x277D6D8C8]);
  v69 = v30;
  v68 = v31;
  sub_219BE7B94();

  v32 = sub_218827310();
  v33 = v83;
  v34 = v83 + 8;
  v35 = *(v83 + 8);
  v35(v25, v21);
  if ((~v32 & 0xF000000000000007) == 0)
  {
    return result;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v63 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_219C09BA0;
  v66 = v32;
  v65 = v34;
  v64 = v35;
  if (v84 == 1)
  {
    v38 = 0xE900000000000064;
    v39 = 0x656472616F626E6FLL;
  }

  else if (v84)
  {
    v85 = 0x286E776F6E6B6E75;
    v86 = 0xE800000000000000;
    v87 = v84;
    v40 = sub_219BF7894();
    MEMORY[0x21CECC330](v40);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v39 = v85;
    v38 = v86;
  }

  else
  {
    v38 = 0xEC00000064656472;
    v39 = 0x616F626E4F746F6ELL;
  }

  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = sub_2186FC3BC();
  *(v37 + 32) = v39;
  *(v37 + 40) = v38;
  v41 = sub_219BF6214();
  sub_219BE5314("Today feed sports onboarding state changed, attempting to replace sports group inline, onboardingState=%{public}@", 113, 2, &dword_2186C1000, v63, v41, v37);

  sub_219BE6EC4();
  v87 = v85;
  v42 = v81;
  sub_219BE7B94();

  (*(v33 + 16))(v19, v42, v21);
  v43 = *(v82 + 36);
  sub_2193A56A0();
  sub_219BF5DF4();
  v64(v42, v21);
  sub_219BF5E84();
  if (*&v19[v43] == v85)
  {
LABEL_12:
    sub_21885AB78(v66);
    sub_2197172E4(v19);
    return result;
  }

  v44 = (v80 + 16);
  v45 = (v80 + 8);
  while (1)
  {
    v46 = sub_219BF5EC4();
    (*v44)(v16);
    v46(&v85, 0);
    sub_219BF5E94();
    sub_219BE6934();
    (*v45)(v16, v14);
    if (!v84)
    {
      break;
    }

    if (v84 == 1 && ((v85 >> 58) & 0x3C | (v85 >> 1) & 3) == 0x15)
    {
      v47 = swift_projectBox();
      v48 = v71;
      sub_2187F684C(v47, v71, type metadata accessor for IntroToSportsTodayFeedGroup);
      sub_2187F684C(v48, v77, type metadata accessor for IntroToSportsTodayFeedGroup);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TodayFeedServiceConfig(0);
      sub_2187DF448();

      v49 = v72;
      sub_219BEEB14();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v52 = Strong;
        type metadata accessor for TodayInteractor(0, *(v75 + 80), *(v75 + 88), v51);
        sub_219A1AE58(v49, v52);
        swift_unknownObjectRelease();
      }

      v53 = sub_21885AB78(v66);
      (*(v78 + 8))(v49, v79, v53);
      v54 = type metadata accessor for IntroToSportsTodayFeedGroup;
      v55 = v48;
      goto LABEL_25;
    }

LABEL_15:

    sub_219BF5E84();
    if (*&v19[v43] == v85)
    {
      goto LABEL_12;
    }
  }

  if (((v85 >> 58) & 0x3C | (v85 >> 1) & 3) != 0x14)
  {
    goto LABEL_15;
  }

  v56 = swift_projectBox();
  v57 = v74;
  sub_2187F684C(v56, v74, type metadata accessor for MySportsTodayFeedGroup);
  sub_2187F684C(v57, v77, type metadata accessor for MySportsTodayFeedGroup);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();

  v58 = v73;
  sub_219BEEB14();
  v59 = swift_unknownObjectWeakLoadStrong();
  if (v59)
  {
    v61 = v59;
    type metadata accessor for TodayInteractor(0, *(v75 + 80), *(v75 + 88), v60);
    sub_219A1AE58(v58, v61);
    swift_unknownObjectRelease();
  }

  v62 = sub_21885AB78(v66);
  (*(v78 + 8))(v58, v79, v62);
  v54 = type metadata accessor for MySportsTodayFeedGroup;
  v55 = v57;
LABEL_25:
  sub_21880BA68(v55, v54);
  sub_2197172E4(v19);

  return result;
}

uint64_t sub_219707F48()
{
  v0 = sub_219A47D24();
  if (sub_219918738(v0) == 0x7374726F7053796DLL && v1 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v3 = sub_219BF78F4();

    return v3 & 1;
  }
}

uint64_t sub_219707FC4()
{
  v0 = sub_219A47D24();
  if (sub_219918738(v0) == 0x536F546F72746E69 && v1 == 0xED00007374726F70)
  {

    return 1;
  }

  else
  {
    v3 = sub_219BF78F4();

    return v3 & 1;
  }
}

void sub_219708054(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85000] & *a2;
  v6 = sub_219BF0BD4();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE7B04();
  if (v14 >> 62 == 1)
  {
    v28 = a3;
    v29 = v3;
    v27 = *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
    sub_219BE6EC4();
    v35 = v33;
    v15 = MEMORY[0x277D6D8B8];
    sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
    sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v15, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v16 = sub_218827310();
    (*(v11 + 8))(v13, v10);
    if ((~v16 & 0xF000000000000007) != 0)
    {
      type metadata accessor for TodayFeedServiceConfig(0);
      sub_2187DF448();
      sub_219BEE7A4();
      v25 = (*(*(v30 + 88) + 104))(v28, v8, *(v30 + 80));
      (*(v31 + 8))(v8, v32);
      v33 = v25;
      v26 = MEMORY[0x277D6D888];
      sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
      sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v26, MEMORY[0x277D6D890]);
      sub_219BE6EF4();
      sub_21885AB78(v16);
    }

    else
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v17 = qword_280F616D8;
      v18 = sub_219BF6214();
      sub_219BE5314("Today interactor unable to rebuild shortcuts without feedContext", 64, 2, &dword_2186C1000, v17, v18, MEMORY[0x277D84F90]);
    }
  }

  else
  {
    sub_21880BB00(v14);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v19 = qword_280F616D8;
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09BA0;
    v33 = 0;
    v34 = 0xE000000000000000;
    v21 = sub_219BE7B04();
    v35 = v21;
    sub_21880BB54(0, &qword_280EE4F98, MEMORY[0x277D6DC48]);
    sub_219BF7484();
    sub_21880BB00(v21);
    v22 = v33;
    v23 = v34;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2186FC3BC();
    *(v20 + 32) = v22;
    *(v20 + 40) = v23;
    v24 = sub_219BF6214();
    sub_219BE5314("Today interactor blocked shortcuts rebuild due to prewarmState: %{public}@", 74, 2, &dword_2186C1000, v19, v24, v20);
  }
}

void sub_21970859C(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85000] & *a2;
  v6 = sub_219BF0BD4();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE7B04();
  if (v14 >> 62 == 1)
  {
    v28 = a3;
    v29 = v3;
    v27 = *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
    sub_219BE6EC4();
    v35 = v33;
    v15 = MEMORY[0x277D6D8B8];
    sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
    sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v15, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v16 = sub_218827310();
    (*(v11 + 8))(v13, v10);
    if ((~v16 & 0xF000000000000007) != 0)
    {
      type metadata accessor for TodayFeedServiceConfig(0);
      sub_2187DF448();
      sub_219BEE7A4();
      v25 = (*(*(v30 + 88) + 112))(v28, v8, *(v30 + 80));
      (*(v31 + 8))(v8, v32);
      v33 = v25;
      v26 = MEMORY[0x277D6D888];
      sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
      sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v26, MEMORY[0x277D6D890]);
      sub_219BE6EF4();
      sub_21885AB78(v16);
    }

    else
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v17 = qword_280F616D8;
      v18 = sub_219BF6214();
      sub_219BE5314("Today interactor unable to rebuild saved stories without feedContext", 68, 2, &dword_2186C1000, v17, v18, MEMORY[0x277D84F90]);
    }
  }

  else
  {
    sub_21880BB00(v14);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v19 = qword_280F616D8;
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09BA0;
    v33 = 0;
    v34 = 0xE000000000000000;
    v21 = sub_219BE7B04();
    v35 = v21;
    sub_21880BB54(0, &qword_280EE4F98, MEMORY[0x277D6DC48]);
    sub_219BF7484();
    sub_21880BB00(v21);
    v22 = v33;
    v23 = v34;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2186FC3BC();
    *(v20 + 32) = v22;
    *(v20 + 40) = v23;
    v24 = sub_219BF6214();
    sub_219BE5314("Today interactor blocked saved stories rebuild due to prewarmState: %{public}@", 78, 2, &dword_2186C1000, v19, v24, v20);
  }
}

uint64_t sub_219708AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v3 = sub_219BF0644();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = v38 - v7;
  v8 = sub_219BF11C4();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21971416C(v16);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BE6EC4();
  v45 = v47;
  v17 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v17, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v18 = sub_218827310();
  result = (*(v12 + 8))(v14, v11);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    v20 = sub_2187DF448();
    v21 = v39;
    v38[1] = v20;
    sub_219BEE844();
    v22 = v44;
    v47 = *__swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v44 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
    v23 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    if (v23(0) == 6)
    {
      v24 = sub_219BF1AE4();
      v25 = v40;
      if (v24)
      {
        v26 = MEMORY[0x277D32EF8];
      }

      else
      {
        v26 = MEMORY[0x277D32EF0];
      }

      (*(v40 + 104))(v5, *v26, v3);
    }

    else
    {
      v25 = v40;
      (*(v40 + 104))(v5, *MEMORY[0x277D32EF0], v3);
    }

    sub_2187E1408(&qword_280E90ED0, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
    sub_219BF5874();
    sub_219BF5874();
    if (v47 == v45 && v48 == v46)
    {
      v27 = *(v25 + 8);
      v27(v5, v3);
      v27(v21, v3);

      v28 = MEMORY[0x277D331F8];
    }

    else
    {
      v29 = sub_219BF78F4();
      v30 = *(v25 + 8);
      v30(v5, v3);
      v30(v21, v3);

      if (v29)
      {
        v28 = MEMORY[0x277D331F8];
      }

      else
      {
        v28 = MEMORY[0x277D331E0];
      }
    }

    v32 = v41;
    v31 = v42;
    sub_219BEE844();
    v33 = v43;
    (*(v31 + 104))(v32, *v28, v43);
    v34 = v22 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      (*(v35 + 96))(v22, &off_282A6CEF8, v32, ObjectType, v35);
      sub_21885AB78(v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v37.n128_f64[0] = sub_21885AB78(v18);
    }

    return (*(v31 + 8))(v32, v33, v37);
  }

  return result;
}

uint64_t sub_2197091BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v5 = sub_219BE0674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  sub_219BE6934();
  if (((v38 >> 58) & 0x3C | (v38 >> 1) & 3) != 1)
  {

    goto LABEL_9;
  }

  v33 = v6;
  v34 = v5;
  v14 = type metadata accessor for CuratedTodayFeedGroup(0);
  v15 = (swift_projectBox() + *(v14 + 20));
  if (*v15 != 0x69726F7453706F74 || v15[1] != 0xEA00000000007365)
  {
    v17 = sub_219BF78F4();

    v6 = v33;
    v5 = v34;
    if (v17)
    {
      goto LABEL_16;
    }

LABEL_9:
    sub_219BE6934();
    if (((v38 >> 58) & 0x3C | (v38 >> 1) & 3) == 3)
    {
      v18 = swift_projectBox();
      sub_2187F684C(v18, v13, type metadata accessor for LocalNewsTodayFeedGroup);

      if (v36)
      {
        v19 = &v13[*(v11 + 36)];
        if (sub_2188537B8(v35, v36, *v19))
        {
          v20 = v19[8];
          sub_21880BA68(v13, type metadata accessor for LocalNewsTodayFeedGroup);
          v21 = sub_219BDDD94();
          v22 = *(*(v21 - 8) + 104);
          if (v20 == 1)
          {
            v23 = MEMORY[0x277D2FD38];
          }

          else
          {
            v23 = MEMORY[0x277D2FD28];
          }

          v32 = *v23;
          v31 = a3;
          return v22(v31, v32, v21);
        }

        sub_21880BA68(v13, type metadata accessor for LocalNewsTodayFeedGroup);
        goto LABEL_26;
      }

      sub_21880BA68(v13, type metadata accessor for LocalNewsTodayFeedGroup);
    }

    else
    {
    }

    sub_219BE6934();
    sub_2193B6C2C(v38, v10);

    v25 = v37;
    (*(v6 + 32))(v37, v10, v5);
    v26 = (*(v6 + 88))(v25, v5);
    if (v26 != *MEMORY[0x277D2E6C0] && v26 != *MEMORY[0x277D2E6B0] && v26 != *MEMORY[0x277D2E6A0])
    {
      if (v26 == *MEMORY[0x277D2E6B8])
      {
        v24 = MEMORY[0x277D2FD38];
        goto LABEL_27;
      }

      if (v26 != *MEMORY[0x277D2E6A8])
      {
        v27 = *MEMORY[0x277D2FD28];
        v28 = sub_219BDDD94();
        (*(*(v28 - 8) + 104))(a3, v27, v28);
        return (*(v6 + 8))(v25, v5);
      }
    }

LABEL_26:
    v24 = MEMORY[0x277D2FD28];
    goto LABEL_27;
  }

LABEL_16:
  v24 = MEMORY[0x277D2FD30];
LABEL_27:
  v30 = *v24;
  v21 = sub_219BDDD94();
  v22 = *(*(v21 - 8) + 104);
  v31 = a3;
  v32 = v30;
  return v22(v31, v32, v21);
}

void sub_219709684(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_2197096D8();
  }
}

double sub_2197096D8()
{
  sub_2187DD4F0(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  [objc_opt_self() popHighPriorityTaskInFlight];
  sub_219BF5054();
  v4 = sub_219BF5BF4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_219BF5BD4();
  v5 = v0;
  v6 = sub_219BF5BC4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_2195E70E0(0, 0, v3, &unk_219C9EA20, v7);

  return result;
}

uint64_t sub_21970983C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[3] = a4;
  v4[4] = *MEMORY[0x277D85000] & *a4;
  v5 = sub_219BE95D4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_219BF5BD4();
  v4[8] = sub_219BF5BC4();
  v7 = sub_219BF5B44();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_219709968, v7, v6);
}

uint64_t sub_219709968()
{
  v1 = v0[3];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
  v0[11] = v2;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_219709A48;

  return MEMORY[0x282192920](v3, v4);
}

uint64_t sub_219709A48()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_219709B7C, v3, v2);
}

uint64_t sub_219709B7C()
{
  v1 = (v0[3] + v0[11]);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = sub_219BF2EE4();
  if (*(v2 + 16))
  {
    v3 = v0[4];
    v4 = sub_218845F78(v2);

    v5 = (*(*(v3 + 88) + 48))(v4, 0, *(v3 + 80));
    v0[13] = v5;

    v0[2] = v5;
    v6 = swift_task_alloc();
    v0[14] = v6;
    v7 = MEMORY[0x277D6D888];
    sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
    v9 = v8;
    v10 = sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v7, MEMORY[0x277D6D890]);
    *v6 = v0;
    v6[1] = sub_219709DA8;
    v11 = v0[7];

    return MEMORY[0x2821D3910](v11, v0 + 2, v9, v10);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_219709DA8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = v2[9];
    v4 = v2[10];
    v5 = sub_219709F4C;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[9];
    v4 = v2[10];
    v5 = sub_219709ED4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_219709ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219709F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_219709FC4(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v107 = a3;
  v98 = a4;
  v106 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = v80 - v7;
  v8 = sub_219BDC104();
  v9 = *(v8 - 8);
  v100 = v8;
  v101 = v9;
  MEMORY[0x28223BE20](v8);
  v99 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BDF094();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = v80 - v13;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v5);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = v80 - v15;
  v93 = sub_219BE16D4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v84 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = v80 - v18;
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v5);
  MEMORY[0x28223BE20](v19 - 8);
  v96 = v80 - v20;
  sub_2187FAD00(0);
  v22 = *(v21 - 8);
  v102 = v21;
  v103 = v22;
  MEMORY[0x28223BE20](v21);
  v91 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE3450, MEMORY[0x277D2D430], v5);
  MEMORY[0x28223BE20](v24 - 8);
  v94 = v80 - v25;
  v104 = sub_219BEBE64();
  v95 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v27 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE5D20, sub_218853400, v5);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v80 - v29;
  sub_218853400(0);
  v32 = v31;
  v105 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDEDB4();
  if (v41)
  {
    sub_21970AF0C(a1, v106, v107, v40, v41);

    return;
  }

  v81 = v27;
  v42 = v104;
  v82 = v34;
  v83 = v37;
  v43 = *(v108 + *((*MEMORY[0x277D85000] & *v108) + 0xA8));
  sub_219BDEC74();
  sub_219BDEDC4();
  sub_219BEB1C4();

  v44 = v105;
  if ((*(v105 + 48))(v30, 1, v32) == 1)
  {
    (*(v83 + 8))(v39, v36);
    v45 = &unk_280EE5D20;
    v46 = sub_218853400;
    v47 = v30;
LABEL_20:
    sub_218817724(v47, v45, v46);
    return;
  }

  v80[1] = v43;
  v48 = v82;
  (*(v44 + 32))(v82, v30, v32);
  sub_219717404();
  v49 = v94;
  sub_219BEB264();
  v50 = v95;
  v51 = v42;
  if ((*(v95 + 48))(v49, 1, v42) == 1)
  {
    sub_218817724(v49, &qword_280EE3450, MEMORY[0x277D2D430]);
  }

  else
  {
    v52 = v81;
    (*(v50 + 32))(v81, v49, v51);
    sub_219717458(v107, v109);
    if (v110)
    {
      __swift_project_boxed_opaque_existential_1(v109, v110);
      sub_2187E1408(&unk_280EE3458, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
      sub_219BEC144();
      (*(v50 + 8))(v52, v51);
      __swift_destroy_boxed_opaque_existential_1(v109);
    }

    else
    {
      (*(v50 + 8))(v52, v51);
      sub_219308EE0(v109);
    }
  }

  v104 = v32;
  sub_219BE5F84();
  v53 = v96;
  sub_219BEB244();

  v55 = v102;
  v54 = v103;
  v56 = (*(v103 + 48))(v53, 1, v102);
  v107 = v39;
  if (v56 == 1)
  {
    sub_218817724(v53, &unk_280EE58B0, sub_2187FAD00);
    v58 = v99;
    v57 = v100;
    v59 = v97;
  }

  else
  {
    v95 = v36;
    v60 = v91;
    (*(v54 + 32))(v91, v53, v55);
    v61 = (v108 + *((*MEMORY[0x277D85000] & *v108) + 0xB8));
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    sub_219BE6944();
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_21880BAC8();
    v62 = sub_219BF00E4();

    v63 = sub_219BEDFD4();
    v64 = v89;
    (*(*(v63 - 8) + 56))(v89, 1, 1, v63);
    v65 = v90;
    sub_219689464(v62, v64, 0, v90);
    sub_218817724(v64, &qword_280E91DB0, MEMORY[0x277D31F08]);
    v66 = v92;
    v67 = v93;
    if ((*(v92 + 48))(v65, 1, v93) == 1)
    {
      (*(v103 + 8))(v60, v102);
      sub_218817724(v65, &unk_280EE7FA0, MEMORY[0x277D2F590]);
    }

    else
    {
      v68 = v85;
      (*(v66 + 32))(v85, v65, v67);
      sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
      sub_219BDD1F4();
      (*(v66 + 16))(v84, v68, v67);
      v69 = v86;
      sub_219BDF084();
      sub_2187E1408(&unk_280EE88C0, MEMORY[0x277D2D888], MEMORY[0x277D2D880]);
      v70 = v88;
      sub_219BDD1F4();
      (*(v87 + 8))(v69, v70);
      (*(v66 + 8))(v68, v67);
      (*(v103 + 8))(v60, v102);
    }

    v58 = v99;
    v57 = v100;
    v59 = v97;
    v36 = v95;
    v48 = v82;
  }

  v71 = v107;
  sub_219BEB2F4();
  v72 = v101;
  v73 = (*(v101 + 48))(v59, 1, v57);
  v74 = v98;
  if (v73 == 1)
  {
    (*(v105 + 8))(v48, v104);
    (*(v83 + 8))(v71, v36);
    v45 = &unk_280EE9BB0;
    v46 = MEMORY[0x277CC9AF8];
    v47 = v59;
    goto LABEL_20;
  }

  (*(v72 + 32))(v58, v59, v57);
  if (v74)
  {
    (*(v72 + 8))(v58, v57);
    (*(v105 + 8))(v48, v104);
    (*(v83 + 8))(v107, v36);
  }

  else
  {
    v75 = sub_219BDEC24();
    v76 = v83;
    if (v75)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v78 = v104;
      if (Strong)
      {
        v79 = swift_unknownObjectWeakLoadStrong();
        if (v79)
        {
          sub_219714430(v58, v79);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v72 + 8))(v58, v57);
      (*(v105 + 8))(v82, v78);
    }

    else
    {
      (*(v72 + 8))(v58, v57);
      (*(v105 + 8))(v48, v104);
    }

    (*(v76 + 8))(v107, v36);
  }
}

uint64_t sub_21970AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a4;
  v68 = a5;
  v64 = a3;
  v57 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE3450, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v53 - v9;
  v10 = sub_219BEBE64();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v53 - v13;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v14 - 8);
  v59 = &v53 - v15;
  v16 = sub_219BE16D4();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v7);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - v19;
  sub_2187FAD00(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D85000];
  sub_219BDEC74();
  sub_219BEB244();
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    (*(v28 + 8))(v30, v27);
    v32 = &unk_280EE58B0;
    v33 = sub_2187FAD00;
    v34 = v20;
    return sub_218817724(v34, v32, v33);
  }

  v54 = v23;
  v55 = v28;
  v68 = v27;
  (*(v23 + 32))(v25, v20, v22);
  v35 = (v6 + *((*v31 & *v6) + 0xB8));
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v67 = v22;
  sub_219BE6944();
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_21880BAC8();
  v36 = sub_219BF00E4();

  v37 = sub_219BEDFD4();
  v38 = v58;
  (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
  v39 = v59;
  sub_219689464(v36, v38, 0, v59);
  sub_218817724(v38, &qword_280E91DB0, MEMORY[0x277D31F08]);
  v41 = v60;
  v40 = v61;
  v42 = v25;
  if ((*(v60 + 48))(v39, 1, v61) == 1)
  {
    sub_218817724(v39, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  }

  else
  {
    v43 = v56;
    (*(v41 + 32))(v56, v39, v40);
    sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDD1F4();
    (*(v41 + 8))(v43, v40);
  }

  v45 = v65;
  v44 = v66;
  v46 = v62;
  v47 = v63;
  v48 = v68;
  v49 = v55;
  sub_219717404();
  sub_219BEB274();
  v50 = (*(v45 + 48))(v46, 1, v44);
  v51 = v64;
  if (v50 == 1)
  {
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    v32 = &qword_280EE3450;
    v33 = MEMORY[0x277D2D430];
    v34 = v46;
    return sub_218817724(v34, v32, v33);
  }

  (*(v45 + 32))(v47, v46, v44);
  sub_219717458(v51, v69);
  if (v70)
  {
    __swift_project_boxed_opaque_existential_1(v69, v70);
    sub_2187E1408(&unk_280EE3458, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
    sub_219BEC144();
    (*(v45 + 8))(v47, v44);
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    (*(v45 + 8))(v47, v44);
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    return sub_219308EE0(v69);
  }
}

void sub_21970B7CC(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v120 = a3;
  v114 = a4;
  v119 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = v91 - v7;
  v112 = sub_219BDC104();
  v116 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v115 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BDF094();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], v5);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = v91 - v11;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = v91 - v13;
  v104 = sub_219BE16D4();
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v97 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v98 = v91 - v16;
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v5);
  MEMORY[0x28223BE20](v17 - 8);
  v110 = v91 - v18;
  sub_2187FAD00(0);
  v109 = v19;
  v111 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v106 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE3450, MEMORY[0x277D2D430], v5);
  MEMORY[0x28223BE20](v21 - 8);
  v107 = v91 - v22;
  v118 = sub_219BEBE64();
  v108 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v24 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE5D20, sub_218853400, v5);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v91 - v26;
  sub_218853400(0);
  v29 = v28;
  v117 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v36 = v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BDD334();
  if (v38)
  {
    sub_21970C7B0(a1, v119, v120, v37, v38);

    return;
  }

  v92 = v24;
  v39 = v118;
  v93 = v31;
  v95 = v29;
  v94 = v34;
  v96 = v33;
  v40 = MEMORY[0x277D85000];
  v41 = *(v121 + *((*MEMORY[0x277D85000] & *v121) + 0xA0));
  sub_219BDEBD4();
  sub_219BDD344();
  if (!v42)
  {
    v50 = *(v94 + 8);
    v51 = v36;
LABEL_9:
    v50(v51, v96);
    return;
  }

  v43 = v27;
  v44 = v96;
  sub_219BEB1C4();

  v45 = v117;
  v46 = v95;
  if ((*(v117 + 48))(v27, 1, v95) == 1)
  {
    (*(v94 + 8))(v36, v44);
    v47 = &unk_280EE5D20;
    v48 = sub_218853400;
    v49 = v27;
LABEL_24:
    sub_218817724(v49, v47, v48);
    return;
  }

  v91[1] = v41;
  v52 = v93;
  (*(v45 + 32))(v93, v43, v46);
  sub_219717404();
  v53 = v107;
  sub_219BEB264();
  v54 = v108;
  v55 = v39;
  if ((*(v108 + 48))(v53, 1, v39) == 1)
  {
    sub_218817724(v53, &qword_280EE3450, MEMORY[0x277D2D430]);
  }

  else
  {
    v56 = v92;
    (*(v54 + 32))(v92, v53, v55);
    sub_219717458(v120, &v122);
    if (v123)
    {
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      sub_2187E1408(&unk_280EE3458, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
      sub_219BEC144();
      (*(v54 + 8))(v56, v55);
      __swift_destroy_boxed_opaque_existential_1(&v122);
    }

    else
    {
      (*(v54 + 8))(v56, v55);
      sub_219308EE0(&v122);
    }
  }

  sub_219BE5F84();
  v57 = v110;
  sub_219BEB244();

  v58 = v111;
  v59 = v109;
  v60 = (*(v111 + 48))(v57, 1, v109);
  v120 = v36;
  if (v60 == 1)
  {
    sub_218817724(v57, &unk_280EE58B0, sub_2187FAD00);
    v61 = v112;
    v62 = v113;
    v64 = v115;
    v63 = v116;
  }

  else
  {
    v65 = v106;
    (*(v58 + 32))(v106, v57, v59);
    v66 = (v121 + *((*v40 & *v121) + 0xB8));
    v67 = v58;
    __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    sub_219BE6944();
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_21880BAC8();
    v68 = sub_219BF00E4();

    v69 = sub_219BEDFD4();
    v70 = v102;
    (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
    v71 = v103;
    sub_219689464(v68, v70, 0, v103);
    sub_218817724(v70, &qword_280E91DB0, MEMORY[0x277D31F08]);
    v72 = v105;
    v73 = v104;
    if ((*(v105 + 48))(v71, 1, v104) == 1)
    {
      (*(v67 + 8))(v65, v59);
      sub_218817724(v71, &unk_280EE7FA0, MEMORY[0x277D2F590]);
    }

    else
    {
      v74 = v98;
      (*(v72 + 32))(v98, v71, v73);
      sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
      sub_219BDD1F4();
      (*(v72 + 16))(v97, v74, v73);
      v75 = v99;
      sub_219BDF084();
      sub_2187E1408(&unk_280EE88C0, MEMORY[0x277D2D888], MEMORY[0x277D2D880]);
      v76 = v101;
      sub_219BDD1F4();
      (*(v100 + 8))(v75, v76);
      (*(v72 + 8))(v74, v73);
      (*(v67 + 8))(v106, v59);
    }

    v61 = v112;
    v62 = v113;
    v64 = v115;
    v63 = v116;
    v52 = v93;
  }

  v77 = v52;
  v78 = v96;
  v79 = v120;
  sub_219BEB2F4();
  v80 = (*(v63 + 48))(v62, 1, v61);
  v81 = v114;
  v82 = v117;
  if (v80 == 1)
  {
    (*(v117 + 8))(v77, v95);
    (*(v94 + 8))(v79, v78);
    v47 = &unk_280EE9BB0;
    v48 = MEMORY[0x277CC9AF8];
    v49 = v62;
    goto LABEL_24;
  }

  (*(v63 + 32))(v64, v62, v61);
  if (v81)
  {
    (*(v63 + 8))(v64, v61);
    (*(v82 + 8))(v93, v95);
    v50 = *(v94 + 8);
    v51 = v120;
    goto LABEL_9;
  }

  v83 = sub_219BDEB84();
  v84 = v96;
  v85 = v120;
  v86 = v93;
  if (v83)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v88 = v94;
    v89 = v95;
    if (Strong)
    {
      v90 = swift_unknownObjectWeakLoadStrong();
      if (v90)
      {
        sub_219714430(v64, v90);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      v89 = v95;
    }

    (*(v63 + 8))(v64, v61);
    (*(v82 + 8))(v86, v89);
    (*(v88 + 8))(v85, v84);
  }

  else
  {
    (*(v63 + 8))(v64, v61);
    (*(v82 + 8))(v86, v95);
    (*(v94 + 8))(v85, v84);
  }
}

uint64_t sub_21970C7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a4;
  v68 = a5;
  v64 = a3;
  v57 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE3450, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v53 - v9;
  v10 = sub_219BEBE64();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v53 - v13;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v14 - 8);
  v59 = &v53 - v15;
  v16 = sub_219BE16D4();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v7);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - v19;
  sub_2187FAD00(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D85000];
  sub_219BDEBD4();
  sub_219BEB244();
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    (*(v28 + 8))(v30, v27);
    v32 = &unk_280EE58B0;
    v33 = sub_2187FAD00;
    v34 = v20;
    return sub_218817724(v34, v32, v33);
  }

  v54 = v23;
  v55 = v28;
  v68 = v27;
  (*(v23 + 32))(v25, v20, v22);
  v35 = (v6 + *((*v31 & *v6) + 0xB8));
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v67 = v22;
  sub_219BE6944();
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_21880BAC8();
  v36 = sub_219BF00E4();

  v37 = sub_219BEDFD4();
  v38 = v58;
  (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
  v39 = v59;
  sub_219689464(v36, v38, 0, v59);
  sub_218817724(v38, &qword_280E91DB0, MEMORY[0x277D31F08]);
  v41 = v60;
  v40 = v61;
  v42 = v25;
  if ((*(v60 + 48))(v39, 1, v61) == 1)
  {
    sub_218817724(v39, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  }

  else
  {
    v43 = v56;
    (*(v41 + 32))(v56, v39, v40);
    sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDD1F4();
    (*(v41 + 8))(v43, v40);
  }

  v45 = v65;
  v44 = v66;
  v46 = v62;
  v47 = v63;
  v48 = v68;
  v49 = v55;
  sub_219717404();
  sub_219BEB274();
  v50 = (*(v45 + 48))(v46, 1, v44);
  v51 = v64;
  if (v50 == 1)
  {
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    v32 = &qword_280EE3450;
    v33 = MEMORY[0x277D2D430];
    v34 = v46;
    return sub_218817724(v34, v32, v33);
  }

  (*(v45 + 32))(v47, v46, v44);
  sub_219717458(v51, v69);
  if (v70)
  {
    __swift_project_boxed_opaque_existential_1(v69, v70);
    sub_2187E1408(&unk_280EE3458, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
    sub_219BEC144();
    (*(v45 + 8))(v47, v44);
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    (*(v45 + 8))(v47, v44);
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    return sub_219308EE0(v69);
  }
}

uint64_t sub_21970D070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v47 = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v44 - v6;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v44 - v8;
  v9 = sub_219BE16D4();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v4);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v44 - v12;
  sub_2187FAD00(0);
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE5D20, sub_218853400, v4);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  sub_218853400(0);
  v19 = v18;
  v55 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v3;
  sub_219BE6EC4();
  v60 = v61;
  v27 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  v28 = v27;
  v29 = v23;
  v30 = v19;
  v31 = v55;
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v28, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_219BEB1C4();
  if ((*(v31 + 48))(v17, 1, v30) == 1)
  {
    (*(v24 + 8))(v26, v29);
    v32 = &unk_280EE5D20;
    v33 = sub_218853400;
  }

  else
  {
    v57 = v24;
    (*(v31 + 32))(v21, v17, v30);
    sub_219BE5F84();
    v17 = v54;
    sub_219BEB244();

    if ((*(v58 + 48))(v17, 1, v59) == 1)
    {
      (*(v31 + 8))(v21, v30);
      (*(v57 + 8))(v26, v29);
      v32 = &unk_280EE58B0;
      v33 = sub_2187FAD00;
    }

    else
    {
      v45 = v21;
      v34 = v31;
      v56 = v29;
      v35 = v49;
      (*(v58 + 32))(v49, v17, v59);
      v36 = (v48 + *((*MEMORY[0x277D85000] & *v48) + 0xB8));
      v48 = __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_21880BAC8();
      v54 = v26;
      v37 = sub_219BF00E4();

      v38 = sub_219BEDFD4();
      v39 = v50;
      (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
      v17 = v51;
      sub_219689464(v37, v39, 0, v51);
      sub_218817724(v39, &qword_280E91DB0, MEMORY[0x277D31F08]);
      v41 = v52;
      v40 = v53;
      if ((*(v52 + 48))(v17, 1, v53) != 1)
      {
        v43 = v46;
        (*(v41 + 32))(v46, v17, v40);
        sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
        sub_219BDCCC4();
        (*(v41 + 8))(v43, v40);
        (*(v58 + 8))(v35, v59);
        (*(v34 + 8))(v45, v30);
        return (*(v57 + 8))(v54, v56);
      }

      (*(v58 + 8))(v35, v59);
      (*(v34 + 8))(v45, v30);
      (*(v57 + 8))(v54, v56);
      v32 = &unk_280EE7FA0;
      v33 = MEMORY[0x277D2F590];
    }
  }

  return sub_218817724(v17, v32, v33);
}

double sub_21970D96C(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 80))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v2, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_21970DAA8(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 88))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v2, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_21970DBEC(uint64_t a1)
{
  swift_getObjectType();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616D8;
  v2 = sub_219BF6214();
  sub_219BE5314("Today feed will check auto refresh triggered by scene becoming active", 69, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v3);
  sub_219BE3204();
  v4 = sub_219BE1C44();
  sub_219BE2F94();
}

void sub_21970DD24(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    v2 = sub_219BE7B04();
    if (v2 >> 62)
    {
      if (v2 >> 62 == 1 && swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_2197174E8(1, 0, Strong);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_21880BB00(v2);
    }
  }

  else
  {
    v4 = *(*(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78)) + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig);
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtC7NewsUI215ShortcutsConfig_onRefresh;
      swift_beginAccess();
      v6 = *v5;
      if (*v5)
      {
        v7 = *(v5 + 8);

        v6(v8);
        sub_2187FABEC(v6, v7);
      }
    }
  }
}

uint64_t sub_21970DE84()
{
  swift_getObjectType();
  result = sub_2196F5C28();
  if (result)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v1 = qword_280F616D8;
    v2 = sub_219BF6214();
    sub_219BE5314("Today feed will force reload on foreground because desired feed mode has changed", 80, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_219A1B0CC(result);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21970DF8C()
{
  swift_getObjectType();
  sub_219BF36B4();
  result = sub_2196F5C28();
  if (result)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v1 = qword_280F616D8;
    v2 = sub_219BF6214();
    sub_219BE5314("Today feed will force reload on background because desired feed mode has changed", 80, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_219A1B0CC(result);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21970E0E4(uint64_t a1, uint64_t a2)
{
  v122[2] = swift_getObjectType();
  v4 = *MEMORY[0x277D85000] & *v2;
  v151 = v2;
  v131 = v4;
  v135 = sub_219BE61B4();
  v134 = *(v135 - 1);
  MEMORY[0x28223BE20](v135);
  v133 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v132 = v122 - v7;
  v8 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v128 = v122 - v10;
  v127 = sub_219BE35B4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEEC14();
  v144 = *(v12 - 8);
  v145 = v12;
  MEMORY[0x28223BE20](v12);
  v143 = v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE6510, MEMORY[0x277D318F8], v8);
  MEMORY[0x28223BE20](v14 - 8);
  v136 = v122 - v15;
  v139 = sub_219BE3C04();
  v142 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE39F4();
  v18 = *(v17 - 8);
  v146 = v17;
  v147 = v18;
  MEMORY[0x28223BE20](v17);
  v140 = v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = v122 - v21;
  MEMORY[0x28223BE20](v22);
  v123 = (v122 - v23);
  sub_2187DD4F0(0, &unk_280EE6610, MEMORY[0x277D31680], v8);
  MEMORY[0x28223BE20](v24 - 8);
  v124 = v122 - v25;
  v26 = sub_219BE3794();
  v149 = *(v26 - 8);
  v150 = v26;
  MEMORY[0x28223BE20](v26);
  v129 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v130 = v122 - v29;
  MEMORY[0x28223BE20](v30);
  v141 = v122 - v31;
  MEMORY[0x28223BE20](v32);
  v148 = v122 - v33;
  v34 = sub_219BE3514();
  v35 = *(v34 - 8);
  v36 = v35;
  MEMORY[0x28223BE20](v34);
  v38 = v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = v122 - v40;
  v152 = a2;
  sub_219BE35A4();
  sub_2187DD4F0(0, &qword_280E8C060, MEMORY[0x277D31550], MEMORY[0x277D84560]);
  v42 = *(v35 + 72);
  v43 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C0EE20;
  v45 = *(v36 + 104);
  v45(v44 + v43, *MEMORY[0x277D314C8], v34);
  v45(v44 + v43 + v42, *MEMORY[0x277D314D0], v34);
  v45(v44 + v43 + 2 * v42, *MEMORY[0x277D314D8], v34);
  v46 = 3 * v42;
  v47 = *MEMORY[0x277D314F8];
  v45(v44 + v43 + v46, v47, v34);
  LOBYTE(a2) = sub_2190894A0(v41, v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((a2 & 1) == 0)
  {
    (*(v36 + 8))(v41, v34);
    return;
  }

  v45(v38, v47, v34);
  sub_2187E1408(&unk_280EE6680, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  v153 = v41;
  sub_219BF5874();
  sub_219BF5874();
  if (v154 == v157 && v155 == v158)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_219BF78F4();
  }

  v49 = *(v36 + 8);
  v122[1] = v36 + 8;
  v122[0] = v49;
  v49(v38, v34);

  if ((v48 & 1) == 0)
  {
    v57 = sub_219BE34F4();
    v59 = v58;
    (*(v126 + 16))(v125, v152, v127);

    v60 = v143;
    sub_219BEEBD4();
    v61 = v151;
    v62 = v144;
    v63 = v128;
    v64 = v60;
    v65 = v145;
    (*(v144 + 16))(v128, v64, v145);
    (*(v62 + 56))(v63, 0, 1, v65);
    v66 = *(v131 + 80);
    v67 = *(*(v131 + 88) + 96);
    v147 = v57;
    v148 = v67(v57, v59, v63, v66);
    sub_218817724(v63, &qword_280E918A8, MEMORY[0x277D322C0]);
    sub_219BE6EC4();
    v68 = v132;
    sub_219BE6F74();

    v69 = v134;
    v70 = v133;
    v71 = v135;
    (*(v134 + 104))(v133, *MEMORY[0x277D6D518], v135);
    LOBYTE(v65) = sub_219BE61A4();
    v72 = *(v69 + 8);
    v72(v70, v71);
    v72(v68, v71);
    if (v65)
    {

      v154 = v148;
      v73 = MEMORY[0x277D6D888];
      sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
      sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v73, MEMORY[0x277D6D890]);
      sub_219BE6EF4();
    }

    else
    {
      sub_2196F6054();
      sub_219BEE424();
    }

    v92 = v150;
    v93 = sub_21970F69C();
    v94 = v153;
    if (!v93)
    {
      goto LABEL_37;
    }

    sub_219BE3584();
    (*(v149 + 104))(v129, *MEMORY[0x277D31678], v92);
    sub_2187E1408(&qword_280EE6620, MEMORY[0x277D31680], MEMORY[0x277D31690]);
    sub_219BF5874();
    sub_219BF5874();
    if (v154 == v157 && v155 == v158)
    {
      v95 = *(v149 + 8);
      v95(v129, v92);
      v95(v130, v92);
    }

    else
    {
      v113 = v92;
      v114 = sub_219BF78F4();
      v115 = *(v149 + 8);
      v115(v129, v113);
      v115(v130, v113);

      if ((v114 & 1) == 0)
      {
LABEL_37:

        (*(v144 + 8))(v143, v145);
        v117 = v94;
        goto LABEL_38;
      }
    }

    v116 = (v61 + *((*MEMORY[0x277D85000] & *v61) + 0x130));
    __swift_project_boxed_opaque_existential_1(v116, v116[3]);
    sub_2192265C0(v94);
    goto LABEL_37;
  }

  v50 = v151;
  v51 = *((*MEMORY[0x277D85000] & *v151) + 0x110);
  sub_218718690(v151 + v51, &v154);
  __swift_project_boxed_opaque_existential_1(&v154, v156);
  v135 = sub_219BE3AA4();
  __swift_destroy_boxed_opaque_existential_1(&v154);
  v145 = v51;
  sub_218718690(v50 + v51, &v154);
  __swift_project_boxed_opaque_existential_1(&v154, v156);
  v52 = v124;
  sub_219BE3AD4();
  v53 = v149;
  v54 = v150;
  v55 = *(v149 + 48);
  if (v55(v52, 1, v150) == 1)
  {
    (*(v53 + 104))(v148, *MEMORY[0x277D31670], v54);
    v56 = v53;
    if (v55(v52, 1, v54) != 1)
    {
      sub_218817724(v52, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v53 + 32))(v148, v52, v54);
    v56 = v53;
  }

  __swift_destroy_boxed_opaque_existential_1(&v154);
  sub_218718690(v50 + v145, &v154);
  __swift_project_boxed_opaque_existential_1(&v154, v156);
  v134 = sub_219BE3AE4();
  v75 = v74;
  __swift_destroy_boxed_opaque_existential_1(&v154);
  sub_2187DD4F0(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
  v76 = v147;
  v77 = *(v147 + 72);
  v78 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_219C09EC0;
  v143 = v78;
  v80 = v79 + v78;
  (*(v56 + 16))(v80, v148, v54);
  v81 = v50;
  v82 = *(v76 + 104);
  v83 = v146;
  (v82)(v80, *MEMORY[0x277D317E8], v146);
  v144 = v77;
  v84 = (v80 + v77);
  *v84 = v134;
  v84[1] = v75;
  v82();
  sub_218718690(v81 + v145, &v154);
  __swift_project_boxed_opaque_existential_1(&v154, v156);
  v85 = sub_219BE3A14();
  if (v86)
  {
    v87 = v85;
    v88 = v86;
    __swift_destroy_boxed_opaque_existential_1(&v154);
    v89 = v123;
    *v123 = v87;
    v89[1] = v88;
    (v82)(v89, *MEMORY[0x277D317D8], v83);
    v91 = *(v79 + 16);
    v90 = *(v79 + 24);
    if (v91 >= v90 >> 1)
    {
      v79 = sub_2191F80F4((v90 > 1), v91 + 1, 1, v79);
    }

    *(v79 + 16) = v91 + 1;
    (*(v147 + 32))(&v143[v79 + v91 * v144], v89, v83);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v154);
  }

  sub_218718690(v151 + v145, &v154);
  __swift_project_boxed_opaque_existential_1(&v154, v156);
  v96 = v136;
  sub_219BE3AB4();
  v97 = v142;
  v98 = v139;
  if ((*(v142 + 48))(v96, 1, v139) == 1)
  {
    sub_218817724(v96, &qword_280EE6510, MEMORY[0x277D318F8]);
    __swift_destroy_boxed_opaque_existential_1(&v154);
    v99 = v149;
    v100 = v146;
  }

  else
  {
    v101 = v138;
    (*(v97 + 32))(v138, v96, v98);
    __swift_destroy_boxed_opaque_existential_1(&v154);
    v102 = *(v97 + 16);
    v103 = v137;
    v102(v137, v101, v98);
    v100 = v146;
    (v82)(v103, *MEMORY[0x277D317E0], v146);
    v105 = *(v79 + 16);
    v104 = *(v79 + 24);
    v99 = v149;
    if (v105 >= v104 >> 1)
    {
      v79 = sub_2191F80F4((v104 > 1), v105 + 1, 1, v79);
    }

    (*(v142 + 8))(v138, v98);
    *(v79 + 16) = v105 + 1;
    (*(v147 + 32))(&v143[v79 + v105 * v144], v137, v100);
  }

  if (!sub_21970F69C())
  {

    (*(v99 + 8))(v148, v150);
    (v122[0])(v153, v34);

    return;
  }

  v106 = v140;
  (*(v36 + 16))(v140, v153, v34);
  (v82)(v106, *MEMORY[0x277D317F8], v100);
  v108 = *(v79 + 16);
  v107 = *(v79 + 24);
  if (v108 >= v107 >> 1)
  {
    v79 = sub_2191F80F4((v107 > 1), v108 + 1, 1, v79);
  }

  v109 = v151;
  *(v79 + 16) = v108 + 1;
  (*(v147 + 32))(&v143[v79 + v108 * v144], v140, v100);
  Strong = swift_unknownObjectWeakLoadStrong();
  v111 = v150;
  v112 = v148;
  if (Strong)
  {
    sub_219A1A5DC(v135, v79, Strong);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v99 + 104))(v141, *MEMORY[0x277D31678], v111);
  sub_2187E1408(&qword_280EE6620, MEMORY[0x277D31680], MEMORY[0x277D31690]);
  sub_219BF5874();
  sub_219BF5874();
  if (v154 == v157 && v155 == v158)
  {
    v118 = 1;
  }

  else
  {
    v118 = sub_219BF78F4();
  }

  v119 = *(v99 + 8);
  v119(v141, v111);

  if (v118)
  {
    v120 = (v109 + *((*MEMORY[0x277D85000] & *v109) + 0x130));
    __swift_project_boxed_opaque_existential_1(v120, v120[3]);
    v121 = v153;
    sub_2192265C0(v153);

    v119(v112, v111);
    v117 = v121;
  }

  else
  {

    v119(v112, v111);
    v117 = v153;
  }

LABEL_38:
  (v122[0])(v117, v34);
}

BOOL sub_21970F69C()
{
  v0 = sub_219BE38C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = sub_219BE3514();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE35A4();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277D314C8] || v11 == *MEMORY[0x277D314D0] || v11 == *MEMORY[0x277D314D8])
  {
    sub_219BE3574();
    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D31720])
    {
      return 1;
    }

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    if (v11 == *MEMORY[0x277D314F8])
    {
      sub_219BE3574();
      v15 = (*(v1 + 88))(v6, v0) == *MEMORY[0x277D31750];
      (*(v1 + 8))(v6, v0);
      return v15;
    }

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

void sub_21970F924(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & v4;
  sub_2187DD4F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31[-1] - v8;
  v10 = sub_219BE3514();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(v2 + *((v5 & v4) + 0x110), v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_219BE3A64();
  __swift_destroy_boxed_opaque_existential_1(v31);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D314C8] || v14 == *MEMORY[0x277D314D0] || v14 == *MEMORY[0x277D314D8])
  {
    v17 = sub_219BE34F4();
    v19 = v18;
    v20 = sub_219BEEC14();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v21 = (*(*(v6 + 88) + 96))(v17, v19, v9, *(v6 + 80));

    sub_218817724(v9, &qword_280E918A8, MEMORY[0x277D322C0]);
    v31[0] = v21;
    v22 = MEMORY[0x277D6D888];
    sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
    sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v22, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
  }

  else if (v14 == *MEMORY[0x277D314F8])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219A1A5DC(0, MEMORY[0x277D84F90], Strong);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v24 = qword_280F616D8;
    v25 = sub_219BF61F4();
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v27 = sub_219BE34F4();
    v29 = v28;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_219BE5314("Error handling cancel action for invalid placement %{public}@", 61, 2, &dword_2186C1000, v24, v25, v26, ObjectType);

    (*(v11 + 8))(v13, v10);
  }
}

void sub_21970FE38(void *a1, void *a2, uint64_t a3)
{
  v84 = a2;
  v90 = a3;
  v87 = a1;
  v85 = sub_219BE39F4();
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v76 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v69 - v6;
  v7 = sub_219BE3C04();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BDBD64();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE6610, MEMORY[0x277D31680], v4);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v69 - v12;
  v88 = sub_219BE3794();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v69 - v16;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v17 = qword_280F616D8;
  v18 = sub_219BF6214();
  sub_219BE5314("TodayInteractor: didSelectAction", 32, 2, &dword_2186C1000, v17, v18, MEMORY[0x277D84F90]);
  sub_2187DD4F0(0, &qword_280E8C060, MEMORY[0x277D31550], MEMORY[0x277D84560]);
  v19 = sub_219BE3514();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v77 = xmmword_219C0EE20;
  *(v23 + 16) = xmmword_219C0EE20;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x277D314C8], v19);
  v25(v24 + v21, *MEMORY[0x277D314D0], v19);
  v25(v24 + 2 * v21, *MEMORY[0x277D314D8], v19);
  v25(v24 + 3 * v21, *MEMORY[0x277D314F8], v19);
  v26 = v90;
  LOBYTE(v21) = sub_2190894A0(v90, v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v27 = v84;
  if ((v21 & 1) != 0 && v84)
  {
    v72 = v9;
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v84 = v27;
    sub_219BE3AD4();
    v28 = v86;
    v29 = *(v86 + 48);
    v30 = v88;
    if (v29(v13, 1, v88) == 1)
    {
      v31 = *(v28 + 104);
      v31(v89, *MEMORY[0x277D31670], v30);
      if (v29(v13, 1, v30) != 1)
      {
        sub_218817724(v13, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v28 + 32))(v89, v13, v30);
      v31 = *(v28 + 104);
    }

    v32 = v78;
    v31(v78, *MEMORY[0x277D31678], v30);
    sub_2187E1408(&qword_280EE6620, MEMORY[0x277D31680], MEMORY[0x277D31690]);
    sub_219BF5874();
    sub_219BF5874();
    if (v93 == v91 && v94 == v92)
    {
      v33 = 1;
    }

    else
    {
      v33 = sub_219BF78F4();
    }

    v34 = *(v86 + 8);
    v78 = (v86 + 8);
    v71 = v34;
    v34(v32, v30);

    if (v33)
    {
      v35 = (v83 + *((*MEMORY[0x277D85000] & *v83) + 0x130));
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      sub_219227798(v26);
    }

    sub_2187DD4F0(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
    v36 = v82;
    v37 = *(v82 + 72);
    v38 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v77;
    *&v77 = v39;
    v70 = v38;
    v40 = v39 + v38;
    (*(v20 + 16))(v39 + v38, v26, v19);
    v41 = *(v36 + 104);
    v41(v40, *MEMORY[0x277D317F8], v85);
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v42 = sub_219BE3A14();
    if (!v43)
    {
      v44 = v73;
      sub_219BDBD54();
      v45 = sub_219BDBD44();
      v47 = v46;
      (*(v74 + 8))(v44, v75);
      v43 = v47;
      v42 = v45;
    }

    v48 = v89;
    v49 = (v40 + v37);
    *v49 = v42;
    v49[1] = v43;
    v50 = v85;
    v41(v40 + v37, *MEMORY[0x277D317D8], v85);
    (*(v86 + 16))(v40 + 2 * v37, v48, v88);
    v41(v40 + 2 * v37, *MEMORY[0x277D317E8], v50);
    v51 = (v40 + 3 * v37);
    v52 = v87;
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    *v51 = sub_219BE3AE4();
    v51[1] = v53;
    v41(v51, *MEMORY[0x277D317F0], v50);
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v54 = v79;
    sub_219BE3AB4();
    v56 = v80;
    v55 = v81;
    if ((*(v80 + 48))(v54, 1, v81) == 1)
    {
      sub_218817724(v54, &qword_280EE6510, MEMORY[0x277D318F8]);
      v57 = v84;
      v58 = MEMORY[0x277D85000];
      v59 = v77;
    }

    else
    {
      v60 = v72;
      (*(v56 + 32))(v72, v54, v55);
      v61 = v76;
      (*(v56 + 16))(v76, v60, v55);
      v41(v61, *MEMORY[0x277D317E0], v50);
      v62 = v77;
      v64 = *(v77 + 16);
      v63 = *(v77 + 24);
      if (v64 >= v63 >> 1)
      {
        v62 = sub_2191F80F4((v63 > 1), v64 + 1, 1, v77);
      }

      v57 = v84;
      v58 = MEMORY[0x277D85000];
      (*(v56 + 8))(v72, v55);
      *(v62 + 2) = v64 + 1;
      (*(v82 + 32))(&v62[v70 + v64 * v37], v61, v50);
      v59 = v62;
    }

    v65 = v83;
    v66 = (v83 + *((*v58 & *v83) + 0xE8));
    __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    v67 = swift_allocObject();
    v67[2] = v65;
    v67[3] = v57;
    v67[4] = v59;
    v68 = v57;
    v65;
    sub_218EAA284(0, sub_2197177F0, v67);

    if ([v68 style] == 2)
    {
      sub_21970F924(v90);

      v71(v89, v88);
    }

    else
    {
      v71(v89, v88);
    }
  }
}

uint64_t sub_219710A24(void *a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85000] & *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    type metadata accessor for TodayInteractor(0, *(v5 + 80), *(v5 + 88), v7);
    sub_219A1B288(a2, a3, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219710AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a4;
  v110 = a2;
  v112 = type metadata accessor for EngagementPresentationFailure(0);
  v113 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v115 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v4;
  MEMORY[0x28223BE20](v5);
  v116 = &v97 - v6;
  v109 = sub_219BDBD64();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3C04();
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x28223BE20](v8);
  v122 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE39F4();
  v126 = *(v10 - 8);
  v127 = v10;
  MEMORY[0x28223BE20](v10);
  v121 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = (&v97 - v13);
  v14 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v120 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v130 = &v97 - v18;
  sub_2187DD4F0(0, &unk_280EE6610, MEMORY[0x277D31680], v14);
  MEMORY[0x28223BE20](v19 - 8);
  v118 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v129 = &v97 - v22;
  v23 = sub_219BE3514();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v97 - v29;
  v31 = *(v24 + 104);
  v128 = *MEMORY[0x277D314F8];
  v131 = v31;
  (v31)(&v97 - v29, v28);
  sub_2187E1408(&unk_280EE6680, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  sub_219BF5874();
  sub_219BF5874();
  if (v133 == v135)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_219BF78F4();
  }

  v33 = *(v24 + 8);
  v33(v30, v23);

  if (v32)
  {
    v34 = v125;
    v117 = *((*MEMORY[0x277D85000] & *v125) + 0x110);
    sub_218718690(v117 + v125, &v133);
    __swift_project_boxed_opaque_existential_1(&v133, v134);
    v132 = v24 + 104;
    v35 = v23;
    v131(v26, v128, v23);
    v99 = sub_219BE3A14();
    v105 = v36;
    v33(v26, v23);
    __swift_destroy_boxed_opaque_existential_1(&v133);
    v37 = v33;
    v106 = v33;
    v38 = v117;
    sub_218718690(v117 + v34, &v133);
    __swift_project_boxed_opaque_existential_1(&v133, v134);
    v39 = v128;
    v131(v26, v128, v23);
    sub_219BE3AD4();
    v37(v26, v23);
    __swift_destroy_boxed_opaque_existential_1(&v133);
    sub_218718690(v38 + v34, &v133);
    __swift_project_boxed_opaque_existential_1(&v133, v134);
    v40 = v39;
    v41 = v131;
    v131(v26, v39, v35);
    v102 = sub_219BE3AE4();
    v101 = v42;
    v43 = v106;
    v106(v26, v35);
    __swift_destroy_boxed_opaque_existential_1(&v133);
    sub_218718690(v117 + v34, &v133);
    __swift_project_boxed_opaque_existential_1(&v133, v134);
    v41(v26, v40, v35);
    v44 = v35;
    sub_219BE3AB4();
    v43(v26, v35);
    __swift_destroy_boxed_opaque_existential_1(&v133);
    sub_2187DD4F0(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
    v45 = v126;
    v46 = *(v126 + 72);
    v47 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_219C0B8C0;
    v104 = v48;
    v103 = v47;
    v49 = v48 + v47;
    v98 = v44;
    v131((v48 + v47), v40, v44);
    v50 = *MEMORY[0x277D317F8];
    v51 = v127;
    v117 = *(v45 + 104);
    (v117)(v49, v50, v127);
    v52 = v118;
    sub_218812314(v129, v118, &unk_280EE6610, MEMORY[0x277D31680]);
    v53 = sub_219BE3794();
    v54 = *(v53 - 8);
    v55 = *(v54 + 48);
    v56 = v55(v52, 1, v53);
    v106 = v53;
    v100 = v54;
    if (v56 == 1)
    {
      (*(v54 + 104))(v49 + v46, *MEMORY[0x277D31670], v53);
      v57 = v55(v52, 1, v53) == 1;
      v58 = v123;
      v59 = v52;
      v61 = v119;
      v60 = v120;
      v62 = v46;
      if (!v57)
      {
        sub_218817724(v59, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v54 + 32))(v49 + v46, v52, v53);
      v58 = v123;
      v61 = v119;
      v60 = v120;
      v62 = v46;
    }

    v63 = v117;
    (v117)(v49 + v62, *MEMORY[0x277D317E8], v51);
    v64 = (v49 + 2 * v62);
    v65 = v63;
    v66 = v101;
    *v64 = v102;
    v64[1] = v66;
    v63();
    v67 = v105;
    v68 = v104;
    v69 = v103;
    if (v105)
    {
      *v61 = v99;
      v61[1] = v67;
      (v65)(v61, *MEMORY[0x277D317D8], v51);
      v71 = *(v68 + 2);
      v70 = *(v68 + 3);
      if (v71 >= v70 >> 1)
      {
        v68 = sub_2191F80F4((v70 > 1), v71 + 1, 1, v68);
      }

      *(v68 + 2) = v71 + 1;
      v51 = v127;
      (*(v126 + 32))(&v68[v69 + v71 * v62], v61, v127);
      v65 = v117;
    }

    sub_218812314(v130, v60, &qword_280EE6510, MEMORY[0x277D318F8]);
    v72 = v124;
    if ((*(v58 + 48))(v60, 1, v124) == 1)
    {
      sub_218817724(v60, &qword_280EE6510, MEMORY[0x277D318F8]);
      v73 = v106;
    }

    else
    {
      v74 = v65;
      v75 = v122;
      (*(v58 + 32))(v122, v60, v72);
      v76 = v121;
      (*(v58 + 16))(v121, v75, v72);
      (v74)(v76, *MEMORY[0x277D317E0], v51);
      v78 = *(v68 + 2);
      v77 = *(v68 + 3);
      if (v78 >= v77 >> 1)
      {
        v68 = sub_2191F80F4((v77 > 1), v78 + 1, 1, v68);
      }

      v73 = v106;
      (*(v58 + 8))(v122, v124);
      *(v68 + 2) = v78 + 1;
      (*(v126 + 32))(&v68[v69 + v78 * v62], v121, v127);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v79 = sub_219BE39A4();
      if (v80)
      {
        v81 = v79;
        v82 = v80;
      }

      else
      {
        v83 = v107;
        sub_219BDBD54();
        v81 = sub_219BDBD44();
        v82 = v84;
        (*(v108 + 8))(v83, v109);
      }

      v85 = sub_219BE39D4();
      v87 = v86;

      v88 = v116;
      v131(v116, v128, v98);
      v89 = v112;
      v90 = *(v112 + 28);
      v91 = sub_219BE3774();
      (*(*(v91 - 8) + 16))(v88 + v90, v110, v91);
      (*(v100 + 16))(v88 + v89[8], v111, v73);
      v92 = (v88 + v89[5]);
      *v92 = v81;
      v92[1] = v82;
      v93 = (v88 + v89[6]);
      *v93 = v85;
      v93[1] = v87;
      v94 = v115;
      sub_2187F684C(v88, v115, type metadata accessor for EngagementPresentationFailure);
      v95 = (*(v113 + 80) + 16) & ~*(v113 + 80);
      v96 = swift_allocObject();
      sub_21880BBE4(v94, v96 + v95, type metadata accessor for EngagementPresentationFailure);
      sub_219BDD154();

      sub_21880BA68(v88, type metadata accessor for EngagementPresentationFailure);
      sub_218817724(v130, &qword_280EE6510, MEMORY[0x277D318F8]);
      sub_218817724(v129, &unk_280EE6610, MEMORY[0x277D31680]);
      swift_unknownObjectRelease();
    }

    else
    {

      sub_218817724(v130, &qword_280EE6510, MEMORY[0x277D318F8]);
      sub_218817724(v129, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }
}

uint64_t sub_2197119E0()
{
  v54[1] = swift_getObjectType();
  v1 = sub_219BE3C04();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x28223BE20](v1);
  v67 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BE39F4();
  v64 = *(v73 - 8);
  v70 = v73 - 8;
  v76 = v64;
  MEMORY[0x28223BE20](v73 - 8);
  v66 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = (v54 - v5);
  v6 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = v54 - v10;
  v62 = MEMORY[0x277D31680];
  sub_2187DD4F0(0, &unk_280EE6610, MEMORY[0x277D31680], v6);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = v54 - v14;
  v15 = sub_219BE3514();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *((*MEMORY[0x277D85000] & *v0) + 0x110);
  sub_218718690(v0 + v19, v78);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v57 = *MEMORY[0x277D314F8];
  v58 = *(v16 + 104);
  v72 = v16 + 104;
  v58(v18);
  v54[0] = sub_219BE3A14();
  v63 = v20;
  v21 = *(v16 + 8);
  v54[2] = v16 + 8;
  v21(v18, v15);
  v55 = v21;
  __swift_destroy_boxed_opaque_existential_1(v78);
  v75 = v0;
  v56 = v19;
  sub_218718690(v0 + v19, v78);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v22 = v57;
  v23 = v58;
  (v58)(v18, v57, v15);
  sub_219BE3AD4();
  v21(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_218718690(v0 + v19, v78);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v23(v18, v22, v15);
  v24 = v23;
  v60 = sub_219BE3AE4();
  v59 = v25;
  v26 = v55;
  v55(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_218718690(v75 + v56, v78);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v24(v18, v22, v15);
  sub_219BE3AB4();
  v26(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_2187DD4F0(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
  v27 = *(v64 + 72);
  v28 = v76;
  v29 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C0B8C0;
  v70 = v29;
  v31 = v30 + v29;
  v24(v31, v22, v15);
  v32 = *(v28 + 104);
  (v32)(v31, *MEMORY[0x277D317F8], v73);
  v33 = v61;
  sub_218812314(v77, v61, &unk_280EE6610, v62);
  v34 = sub_219BE3794();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v33, 1, v34) == 1)
  {
    (*(v35 + 104))(v31 + v27, *MEMORY[0x277D31670], v34);
    if (v36(v33, 1, v34) != 1)
    {
      sub_218817724(v33, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v35 + 32))(v31 + v27, v33, v34);
  }

  v37 = v73;
  (v32)(v31 + v27, *MEMORY[0x277D317E8], v73);
  v38 = (v31 + 2 * v27);
  v39 = v59;
  *v38 = v60;
  v38[1] = v39;
  v32();
  v41 = v68;
  v40 = v69;
  v42 = v63;
  if (v63)
  {
    v43 = v71;
    *v71 = v54[0];
    v43[1] = v42;
    v32();
    v45 = *(v30 + 16);
    v44 = *(v30 + 24);
    v46 = v74;
    if (v45 >= v44 >> 1)
    {
      v30 = sub_2191F80F4((v44 > 1), v45 + 1, 1, v30);
    }

    *(v30 + 16) = v45 + 1;
    (*(v76 + 32))(v30 + v70 + v45 * v27, v71, v37);
  }

  else
  {
    v46 = v74;
  }

  v47 = v65;
  sub_218812314(v46, v65, &qword_280EE6510, MEMORY[0x277D318F8]);
  if ((*(v41 + 48))(v47, 1, v40) == 1)
  {
    sub_218817724(v47, &qword_280EE6510, MEMORY[0x277D318F8]);
  }

  else
  {
    v48 = v67;
    (*(v41 + 32))(v67, v47, v40);
    v49 = v66;
    (*(v41 + 16))(v66, v48, v40);
    (v32)(v49, *MEMORY[0x277D317E0], v37);
    v51 = *(v30 + 16);
    v50 = *(v30 + 24);
    if (v51 >= v50 >> 1)
    {
      v30 = sub_2191F80F4((v50 > 1), v51 + 1, 1, v30);
    }

    (*(v41 + 8))(v67, v40);
    *(v30 + 16) = v51 + 1;
    (*(v76 + 32))(v30 + v70 + v51 * v27, v66, v37);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_219A19B08(v30, Strong);
    swift_unknownObjectRelease();
  }

  sub_218817724(v46, &qword_280EE6510, MEMORY[0x277D318F8]);
  return sub_218817724(v77, &unk_280EE6610, MEMORY[0x277D31680]);
}

uint64_t sub_219712418(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2192BB864(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_2197124A4()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 48))(0, 3, *((*MEMORY[0x277D85000] & *v0) + 0x50));
  v1 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v1, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_2197125F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v68 = a2;
  v83 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_219BDE294();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v76 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDE744();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x28223BE20](v8);
  v80 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BF0634();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v73 = v66 - v13;
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = v66 - v15;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v67 = v66 - v17;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v66 - v19;
  v21 = MEMORY[0x277D32E20];
  sub_2187DD4F0(0, qword_27CC1E440, MEMORY[0x277D32E20], v11);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v66 - v26;
  v28 = sub_219BF0F34();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BDE7A4();
  v70 = *(v32 - 8);
  v71 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v66[0] = v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v31, a1, v28, v33);
  v35 = v68;
  v66[1] = v27;
  sub_218812314(v68, v27, qword_27CC1E440, v21);
  sub_218812314(v35, v24, qword_27CC1E440, v21);
  v36 = sub_219BF0614();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v24, 1, v36) == 1)
  {
    sub_218817724(v24, qword_27CC1E440, MEMORY[0x277D32E20]);
    v38 = sub_219BF0E44();
    v40 = v39;
  }

  else
  {
    v38 = sub_219BF04D4();
    v40 = v41;
    (*(v37 + 8))(v24, v36);
  }

  v42 = [sub_219BF0F14() identifier];
  swift_unknownObjectRelease();
  v43 = sub_219BF5414();
  v45 = v44;

  sub_2197019FC(v38, v40, v43, v45, 0, 0, v67);

  v46 = v72;
  v47 = v75;
  (*(v72 + 56))(v69, 1, 1, v75);
  sub_219BDE4B4();
  v48 = sub_219BDE4D4();
  (*(*(v48 - 8) + 56))(v20, 0, 1, v48);
  v49 = sub_219BDEA34();
  (*(*(v49 - 8) + 56))(v73, 1, 1, v49);
  (*(v46 + 104))(v74, *MEMORY[0x277D32E98], v47);
  v50 = v66[0];
  sub_219BDE784();
  v51 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x88));
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  swift_getWitnessTable();
  v53 = v78;
  v52 = v79;
  v54 = v76;
  (*(v78 + 104))(v76, *MEMORY[0x277D2FF08], v79);
  v55 = v80;
  sub_219BDED04();
  (*(v53 + 8))(v54, v52);
  sub_219BDE734();
  sub_219BDEC64();

  sub_2187B2C48(0);
  v57 = v56;
  v58 = swift_allocBox();
  v60 = v59;
  v61 = *(v57 + 48);
  sub_21881DC10(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
  v63 = *(v62 + 48);
  sub_219BDE724();
  v64 = MEMORY[0x277D84F90];
  *(v60 + v63) = MEMORY[0x277D84F90];
  (*(v81 + 8))(v55, v82);
  result = (*(v70 + 8))(v50, v71);
  *(v60 + v61) = v64;
  *v83 = v58 | 2;
  return result;
}

uint64_t sub_219712F14@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v81 = a2;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE8D10, MEMORY[0x277D2FD50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v68 - v6;
  v7 = sub_219BDDDA4();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE4D4();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], v4);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v68 - v12;
  v14 = MEMORY[0x277D32E20];
  sub_2187DD4F0(0, qword_27CC1E440, MEMORY[0x277D32E20], v4);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v68 - v16;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v4);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v4);
  MEMORY[0x28223BE20](v23 - 8);
  v75 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v68 - v26;
  v28 = v2;
  sub_218718690(v28 + *((*MEMORY[0x277D85000] & *v28) + 0x90), v84);
  v29 = __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  v82 = sub_219BF06B4();
  v30 = sub_219BF0664();
  v77 = v31;
  v78 = v30;
  sub_218812314(a1, v17, qword_27CC1E440, v14);
  v32 = sub_219BF0614();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v17, 1, v32) == 1)
  {
    sub_218817724(v17, qword_27CC1E440, MEMORY[0x277D32E20]);
    v34 = sub_219BF0664();
    v36 = v35;
  }

  else
  {
    v34 = sub_219BF04D4();
    v36 = v37;
    (*(v33 + 8))(v17, v32);
  }

  WitnessTable = swift_getWitnessTable();
  v39 = v28;
  sub_2197019FC(v34, v36, 0, 0, 0, 0, v22);

  v40 = sub_219BF0634();
  (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
  sub_219BDE4B4();
  v42 = v79;
  v41 = v80;
  (*(v79 + 56))(v27, 0, 1, v80);
  v43 = *v29;
  v44 = *(*v29 + 16);
  v45 = [objc_msgSend(v82 sourceChannel)];
  swift_unknownObjectRelease();
  if (!v45)
  {
    sub_219BF5414();
    v45 = sub_219BF53D4();
  }

  v46 = [v44 hasMutedSubscriptionForTagID_];

  if (!v46)
  {
    goto LABEL_13;
  }

  v47 = v75;
  sub_218812314(v27, v75, &unk_280EE8C40, MEMORY[0x277D30018]);
  if ((*(v42 + 48))(v47, 1, v41) == 1)
  {
    v48 = MEMORY[0x277D30018];
    sub_218817724(v27, &unk_280EE8C40, MEMORY[0x277D30018]);
    v49 = v47;
    v50 = v48;
LABEL_14:
    sub_218817724(v49, &unk_280EE8C40, v50);
    v56 = v82;
    goto LABEL_15;
  }

  v51 = v74;
  (*(v42 + 32))(v74, v47, v41);
  if ((sub_219BDE4A4() & 1) == 0)
  {
    (*(v42 + 8))(v51, v41);
LABEL_13:
    v50 = MEMORY[0x277D30018];
    v49 = v27;
    goto LABEL_14;
  }

  ObjectType = WitnessTable;
  __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
  v52 = v70;
  sub_219BDE4C4();
  v53 = v71;
  sub_219BDEA24();
  sub_218817724(v52, &qword_280EE8D20, MEMORY[0x277D2FD40]);
  v55 = v72;
  v54 = v73;
  if ((*(v72 + 48))(v53, 1, v73) != 1)
  {
    v63 = *(v55 + 32);
    v64 = v69;
    v63(v69, v53, v54);
    v65 = swift_allocObject();
    *(v65 + 40) = v54;
    *(v65 + 48) = sub_2187E1408(&qword_27CC11940, MEMORY[0x277D2FD50], MEMORY[0x277D2FD48]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v65 + 16));
    v63(boxed_opaque_existential_1, v64, v54);
    (*(v42 + 8))(v74, v41);
    sub_218817724(v27, &unk_280EE8C40, MEMORY[0x277D30018]);
    v58 = 0;
    v67 = v77;
    *(v65 + 56) = v78;
    *(v65 + 64) = v67;
    *(v65 + 72) = v82;
    *(v65 + 80) = v39;
    v57 = 1;
    v59 = v65;
    *(v65 + 88) = ObjectType;
    *(v65 + 96) = 0;
    v60 = 0;
    v56 = 0;
    WitnessTable = 0;
    goto LABEL_16;
  }

  (*(v42 + 8))(v74, v41);
  sub_218817724(v27, &unk_280EE8C40, MEMORY[0x277D30018]);
  sub_218817724(v53, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  v56 = v82;
  WitnessTable = ObjectType;
LABEL_15:
  v57 = 0;
  v58 = v39;
  v60 = v77;
  v59 = v78;
LABEL_16:
  v61 = v39;
  __swift_destroy_boxed_opaque_existential_1(v84);
  result = swift_allocObject();
  v83 = v57;
  *(result + 16) = v59;
  *(result + 24) = v60;
  *(result + 32) = v56;
  *(result + 40) = v58;
  *(result + 48) = WitnessTable;
  *(result + 56) = v57;
  *(result + 63) = 0;
  *(result + 61) = 0;
  *(result + 57) = 0;
  *(result + 64) = MEMORY[0x277D84F90];
  *v81 = result | 0x5000000000000000;
  return result;
}

uint64_t sub_219713888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v81 = a3;
  v77 = v4;
  ObjectType = swift_getObjectType();
  v7 = sub_219BDEA14();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v78 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0634();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v59 - v13;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v59 - v15;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v70 = &v59 - v17;
  sub_2187DD4F0(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v61 = &v59 - v19;
  v20 = MEMORY[0x277D32E20];
  sub_2187DD4F0(0, qword_27CC1E440, MEMORY[0x277D32E20], v11);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v60 = sub_219BDDED4();
  v27 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v29 = (&v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_219BDDBF4();
  MEMORY[0x28223BE20](v30 - 8);
  v65 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BDEB14();
  v67 = *(v32 - 8);
  v68 = v32;
  MEMORY[0x28223BE20](v32);
  v66 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BF0AF4();
  v63 = v35;
  v64 = v34;
  v62 = sub_219BF0B44();
  v71 = a2;
  sub_218812314(a2, v26, qword_27CC1E440, v20);
  v36 = sub_219BF0614();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = v38(v26, 1, v36);
  v59 = a1;
  if (v39 == 1)
  {
    sub_218817724(v26, qword_27CC1E440, MEMORY[0x277D32E20]);
    v40 = sub_219BF0AF4();
    v42 = v41;
  }

  else
  {
    v40 = sub_219BF04D4();
    v42 = v43;
    (*(v37 + 8))(v26, v36);
  }

  *v29 = v40;
  v29[1] = v42;
  (*(v27 + 104))(v29, *MEMORY[0x277D2FDC8], v60);
  v44 = sub_219BDD944();
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  sub_219BDDBD4();
  sub_218812314(v71, v23, qword_27CC1E440, MEMORY[0x277D32E20]);
  if (v38(v23, 1, v36) == 1)
  {
    sub_218817724(v23, qword_27CC1E440, MEMORY[0x277D32E20]);
    v45 = sub_219BF0AF4();
    v47 = v46;
  }

  else
  {
    v48 = sub_219BF04D4();
    v47 = v49;
    (*(v37 + 8))(v23, v36);
    v45 = v48;
  }

  sub_2197019FC(v45, v47, 0, 0, 0, 0, v69);

  v51 = v74;
  v50 = v75;
  (*(v74 + 56))(v72, 1, 1, v75);
  v52 = v70;
  sub_219BDE4B4();
  v53 = sub_219BDE4D4();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  (*(v51 + 104))(v73, *MEMORY[0x277D32E98], v50);
  v54 = v66;
  sub_219BDEB04();
  swift_getWitnessTable();
  v55 = v78;
  sub_219BDE2F4();
  sub_219BDEA04();
  sub_219BDEBC4();

  v56 = swift_allocObject();
  v57 = sub_219BDE9F4();
  (*(v79 + 8))(v55, v80);
  result = (*(v67 + 8))(v54, v68);
  *(v56 + 16) = v57;
  *v81 = v56 | 0x7000000000000004;
  return result;
}

void sub_21971416C(uint64_t a1)
{
  sub_2187DD4F0(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B9E0(0);
  if (sub_219BF1B44())
  {
    v8 = sub_219BE6DF4();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_218809CC0(v4, v7);
    sub_218817724(v4, &unk_280EE56F0, MEMORY[0x277D6D878]);
    v9 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 168))(v7, ObjectType, v9);
    sub_21880BA68(v7, type metadata accessor for TodayExpandContext);
  }

  sub_219BE8664();
  v11 = sub_219BE7BC4();

  [v11 reloadData];
}

uint64_t sub_219714360(uint64_t a1, void *a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_218853400(0);
    v7 = sub_219BE5F84();
    v9 = v8;
    __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
    v10 = v7;
    v11 = v9;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_218F19BE4(a2, a3, &v10);
    sub_218DFAEC4(v10, v11, v12, v13, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219714430(uint64_t a1, uint64_t a2)
{
  sub_2187DD4F0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  sub_219BE8694();
  sub_219BE20E4();

  if (v13[15] == 1)
  {
    swift_getObjectType();
    v6 = sub_219BDC104();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, a1, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_219BEA2C4();
  }

  sub_219BE8664();
  v8 = sub_219BE7BC4();

  v9 = [v8 indexPathsForVisibleItems];

  sub_219BDC104();
  v10 = sub_219BF5924();

  LOBYTE(v9) = sub_2190890C0(a1, v10);

  if ((v9 & 1) == 0)
  {
    sub_219BE8664();
    v11 = sub_219BE7BC4();

    v12 = sub_219BDC094();
    [v11 scrollToItemAtIndexPath:v12 atScrollPosition:2 animated:0];
  }
}

uint64_t sub_219714678(char a1, uint64_t a2)
{
  v4 = sub_219BEB384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEB394();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent) = a1;
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v12 = sub_219BF01B4();
  v13 = __swift_project_value_buffer(v12, qword_280F61940);
  v11[3] = v12;
  v11[4] = sub_2187E1408(&qword_280E91000, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v17 = sub_219BF54E4();
  v19 = v18;

  v11[5] = v17;
  v11[6] = v19;
  (*(v9 + 104))(v11, *MEMORY[0x277D6EC80], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D6ECB0], v4);
  sub_219BE6BD4();

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2197149DC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219714678(0, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_219714A70(uint64_t a1, uint64_t a2)
{
  (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 56))(a1, a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v3 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v3, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}