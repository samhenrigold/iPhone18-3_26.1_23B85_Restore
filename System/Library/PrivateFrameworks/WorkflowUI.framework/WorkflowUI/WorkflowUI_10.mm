id sub_2747F6108()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  v1 = objc_opt_self();
  v2 = [v1 fractionalWidthDimension_];
  v3 = [v1 estimatedDimension_];
  v4 = [objc_opt_self() sizeWithWidthDimension:v2 heightDimension:v3];

  sub_27471CF08(0, &qword_280968D20, 0x277CFB830);
  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v7 = v6;
  v8 = v4;
  v9 = sub_2747F5B24(v8, v5, v7, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_274A11F70;
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = sub_2749FCF74();

  [v0 setBoundarySupplementaryItems_];

  v13 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v14 = sub_2747F9578(sub_2747F62D0, 0, v0);

  return v14;
}

uint64_t sub_2747F62D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2749FA794();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FA7E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D74D50], v2);
  sub_2749FA7A4();
  sub_2749FA7C4();
  sub_27471CF08(0, &unk_280969880, 0x277CFB868);
  v10 = sub_2749FD524();
  (*(v7 + 8))(v9, v6);
  return v10;
}

id sub_2747F6480()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___collectionView];
LABEL_8:
    v28 = v2;
    return v3;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = sub_2747F60A8();
    v15 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v14 collectionViewLayout:{v7, v9, v11, v13}];

    [v15 setDelegate_];
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 systemGroupedBackgroundColor];
    v19 = OUTLINED_FUNCTION_10_12();
    [v19 v20];

    [v17 setAlwaysBounceVertical_];
    [v17 setAutoresizingMask_];

    result = [v0 view];
    if (result)
    {
      v21 = result;
      [result addSubview_];

      type metadata accessor for HeaderView();
      swift_getObjCClassFromMetadata();
      v22 = qword_280966BD8;
      v23 = *MEMORY[0x277D767D8];
      if (v22 != -1)
      {
        OUTLINED_FUNCTION_2_22(&qword_280966BD8);
      }

      v24 = sub_2749FCD64();
      v25 = OUTLINED_FUNCTION_10_12();
      [v25 v26];

      v27 = *&v0[v1];
      *&v0[v1] = v17;
      v3 = v17;

      v2 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2747F66C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698A0, &qword_274A156C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_27471CF08(0, &qword_2809698A8, 0x277D75318);
  sub_2749FD324();
  sub_2747F6480();
  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2747F9B60;
  *(v11 + 24) = v10;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698B0, &unk_274A156D0));
  v13 = sub_2749FA6D4();
  *(swift_allocObject() + 16) = a1;
  v14 = a1;
  sub_2749FA6E4();
  (*(v3 + 8))(v8, v2);
  return v13;
}

uint64_t sub_2747F6924(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = type metadata accessor for RootNavigationDestination(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FA624();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  sub_2749FA5F4();
  if (!v11)
  {
    sub_2749FCE14("New Folder", 10);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v14 = qword_28159E448;
    v15 = sub_2749FCD64();
    v16 = sub_2749FCD64();

    v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    sub_2749FA604();
    sub_27471CF08(0, &qword_280968030, 0x277D755B8);
    v18 = 0x8000000274A2E150;
    v19 = 0xD000000000000011;
    goto LABEL_14;
  }

  if (v11 != 1)
  {
    v20 = [v11 name];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    sub_2749FA604();
    v21 = sub_2747301E0(v11);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0x7265646C6F66;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE600000000000000;
    }

    sub_27471CF08(0, &qword_280968030, 0x277D755B8);
    v19 = v23;
    v18 = v24;
LABEL_14:
    sub_27486C8CC(v19, v18);
    sub_2749FA614();
    goto LABEL_15;
  }

  swift_storeEnumTagMultiPayload();
  RootNavigationDestination.displayName.getter();
  sub_2749FA604();
  sub_27471CF08(0, &qword_280968030, 0x277D755B8);
  v12 = RootNavigationDestination.symbolName.getter();
  sub_27486C8CC(v12, v13);
  sub_2749FA614();
  sub_27475C498(v6);
LABEL_15:
  v28[3] = v7;
  v28[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
  MEMORY[0x277C5F210](v28);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2747F6C90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_27478C370(a3);
  sub_27471CF08(0, &qword_2809698A8, 0x277D75318);
  v5 = sub_2749FD344();
  sub_27478C360(a3);
  return v5;
}

char *MoveToFolderViewController.__allocating_init(database:shortcutsToMove:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_45();
  return MoveToFolderViewController.init(database:shortcutsToMove:)(v2, v3);
}

char *MoveToFolderViewController.init(database:shortcutsToMove:)(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_15_9((v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_rendererIdentifier));
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___layout) = 0;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___collectionView) = 0;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___dataSource) = 0;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_iconImage) = 0;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_newFolderSection) = &unk_28838FDF8;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_shortcutsToMove) = a2;
  v35 = &unk_28838FE20;
  v6 = [a1 sortedVisibleFolders];
  v7 = [v6 descriptors];

  sub_27471CF08(0, &qword_28159E490, 0x277D7A1C0);
  v8 = sub_2749FCF84();

  v9 = sub_27472D918(v8);
  if (v9)
  {
    v10 = v9;
    v34[0] = MEMORY[0x277D84F90];
    result = sub_27476D890(0, v9 & ~(v9 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = a1;
    v12 = 0;
    v13 = v34[0];
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x277C5F6D0](v12, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v12 + 32);
      }

      v15 = v14;
      v34[0] = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_27476D890((v16 > 1), v17 + 1, 1);
        v13 = v34[0];
      }

      ++v12;
      *(v13 + 16) = v17 + 1;
      *(v13 + 8 * v17 + 32) = v15;
    }

    while (v10 != v12);

    a1 = v33;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  sub_274782AD0(v13);
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_myFoldersSection) = v35;
  v18 = type metadata accessor for MoveToFolderViewController();
  v34[4] = v3;
  v34[5] = v18;
  OUTLINED_FUNCTION_24();
  v21 = objc_msgSendSuper2(v19, v20);
  sub_2749FCE14("Select a folder", 15);
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  v22 = qword_28159E448;
  v23 = sub_2749FCD64();
  v24 = sub_2749FCD64();

  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v28 = v27;

  sub_2747F9654(v26, v28, v21);
  v29 = [v21 navigationItem];
  v34[3] = v18;
  v34[0] = v21;
  v30 = objc_allocWithZone(MEMORY[0x277D751E0]);
  sub_2747F93B4(1, v34, sel_cancel);
  v32 = v31;
  [v29 setLeftBarButtonItem_];

  return v21;
}

void sub_2747F7160()
{
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_15_9((v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_rendererIdentifier));
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___layout) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_iconImage) = 0;
  sub_2749FDAE4();
  __break(1u);
}

void sub_2747F7234()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MoveToFolderViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    v4 = OUTLINED_FUNCTION_10_12();
    [v4 v5];

    v6 = sub_2747F6480();
    v7 = sub_2747F66A8();
    v8 = OUTLINED_FUNCTION_10_12();
    [v8 v9];

    sub_2747F75C4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2747F734C()
{
  v1 = v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2747F7420()
{
  v1 = sub_2749F9284();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2747F6480();
  v8 = sub_2747F96B8(v7);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v19 = v11;
    v20 = OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___collectionView;
    v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v17 = v8;
    v18 = v13;
    do
    {
      v19(v6, v12, v1);
      v14 = *(v0 + v20);
      v15 = sub_2749F9224();
      [v14 deselectItemAtIndexPath:v15 animated:{0, v17}];

      (*(v10 - 8))(v6, v1);
      v12 += v18;
      --v9;
    }

    while (v9);

LABEL_6:
    OUTLINED_FUNCTION_46();
    return;
  }

  OUTLINED_FUNCTION_46();
}

void sub_2747F75C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969890, &qword_274A156C0);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  sub_2747F9B0C();
  sub_2749FA784();
  v9 = *(v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_newFolderSection);
  v17 = 2;
  sub_2749FA754();
  v10 = sub_2747F66A8();
  v17 = v9;

  sub_2749FA734();

  sub_2749FA784();
  v11 = *(v1 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_myFoldersSection);
  v17 = 2;
  sub_2749FA754();
  v12 = *(v1 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___dataSource);
  v17 = v11;
  v13 = v12;

  sub_2749FA734();

  v14 = *(v4 + 8);
  v15 = OUTLINED_FUNCTION_45();
  v14(v15);
  (v14)(v8, v2);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747F77C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v98 - v9;
  if (_sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() == a2 && v11 == a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_45();
    v13 = sub_2749FDCC4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_45();
  v15 = sub_2749FCD64();
  if (qword_280966BD8 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_280966BD8);
  }

  v16 = sub_2749FCD64();
  v17 = sub_2749F9224();
  v18 = [a1 dequeueReusableSupplementaryViewOfKind:v15 withReuseIdentifier:v16 forIndexPath:v17];

  type metadata accessor for HeaderView();
  v14 = swift_dynamicCastClassUnconditional();
  v19 = *&v4[OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_shortcutsToMove];
  if (sub_27472D918(v19))
  {
    sub_2747B2790();
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x277C5F6D0](0, v19);
    }

    else
    {
      v20 = *(v19 + 32);
    }

    v99 = v20;
    v21 = [v20 attributionIcon];
    v22 = [v4 traitCollection];
    [v22 displayScale];
    v24 = v23;

    v25 = OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_iconImage;
    if (!*&v4[OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_iconImage])
    {
      v26 = sub_2749FD0E4();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v26);
      sub_2749FD0A4();
      v98 = v4;
      v27 = v21;
      v28 = a1;
      v29 = sub_2749FD094();
      v30 = swift_allocObject();
      v31 = MEMORY[0x277D85700];
      *(v30 + 16) = v29;
      *(v30 + 24) = v31;
      *(v30 + 32) = v24 * 44.0;
      *(v30 + 40) = v98;
      *(v30 + 48) = v27;
      *(v30 + 56) = v28;
      sub_27479930C();
    }

    v32 = sub_2747F86A4();
    v33 = *&v4[v25];
    [v32 setImage_];

    v34 = sub_27472D918(v19);
    v35 = sub_2747F8C00();
    v36 = &unk_28159E000;
    v37 = MEMORY[0x277D83B88];
    if (v34 == 1)
    {
      v38 = [v99 name];
      v39 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v41 = v40;

      sub_27484E534(v39, v41, v35);
      v42 = sub_2747F89F0();
      [v42 setImage_];
      v43 = v21;
      v44 = MEMORY[0x277D83C10];
    }

    else
    {
      v98 = v21;
      sub_2749FCE14("%2$@ & %1$d more", 16);
      OUTLINED_FUNCTION_5_18();
      if (!v45)
      {
        v44 = MEMORY[0x277D83C10];
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_13_12();

      OUTLINED_FUNCTION_7_11(v46, v47, v48, v49, v50, v51, v52, v53, v98, v99, v100, v101, v102, v103, v104, v105);
      OUTLINED_FUNCTION_4_16();
      v98 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_24();
      v104 = sub_2749FD724();
      v105 = v54;
      OUTLINED_FUNCTION_56_0();
      v44 = MEMORY[0x277D83C10];
      if (qword_28159E3A8 != -1)
      {
        goto LABEL_38;
      }

      while (1)
      {
        v55 = v36[137];
        v56 = sub_2749FCD64();

        OUTLINED_FUNCTION_11();
        v57 = sub_2749FCD64();

        v36 = [v55 localizedStringForKey:v56 value:v57 table:0];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
LABEL_21:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_274A0F620;
        v59 = sub_27472D918(v19);
        if (!__OFSUB__(v59, 1))
        {
          break;
        }

        __break(1u);
LABEL_38:
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      *(v58 + 56) = v37;
      *(v58 + 64) = v44;
      *(v58 + 32) = v59 - 1;
      v60 = [v99 name];
      v61 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v63 = v62;

      *(v58 + 96) = MEMORY[0x277D837D0];
      *(v58 + 104) = sub_27475C4F4();
      *(v58 + 72) = v61;
      *(v58 + 80) = v63;
      OUTLINED_FUNCTION_11();
      v64 = sub_2749FCD74();
      v66 = v65;

      sub_27484E534(v64, v66, v35);

      v67 = sub_27472D918(v19);
      v68 = sub_2747F89F0();
      sub_27471CF08(0, &unk_28096B160, 0x277D79FC8);
      if (v67 == 2)
      {
        v43 = v98;
        v69 = &selRef_removeObject_;
        if (qword_280966BB0 != -1)
        {
          OUTLINED_FUNCTION_1_26(&qword_280966BB0);
        }

        v70 = OUTLINED_FUNCTION_8_13(qword_280989160, 0x326B63617453);
        v71 = [v70 UIImage];
      }

      else
      {
        v43 = v98;
        v69 = &selRef_removeObject_;
        if (qword_280966BB0 != -1)
        {
          OUTLINED_FUNCTION_1_26(&qword_280966BB0);
        }

        v70 = OUTLINED_FUNCTION_8_13(qword_280989160, 0x336B63617453);
        v71 = [v70 UIImage];
      }

      v42 = v71;

      [v68 v69[396]];
      v37 = MEMORY[0x277D83B88];
    }

    v72 = sub_2747F8E54();
    sub_2749FCE14("%d shortcuts", v98);
    OUTLINED_FUNCTION_5_18();
    if (v73)
    {
      v74 = v37;
      OUTLINED_FUNCTION_13_12();

      OUTLINED_FUNCTION_7_11(v75, v76, v77, v78, v79, v80, v81, v82, v98, v99, v100, v101, v102, v103, v104, v105);
      OUTLINED_FUNCTION_4_16();
      v98 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_24();
      v104 = sub_2749FD724();
      v105 = v83;
      OUTLINED_FUNCTION_56_0();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      v84 = qword_28159E448;
      v85 = sub_2749FCD64();

      OUTLINED_FUNCTION_11();
      v86 = sub_2749FCD64();

      v87 = [v84 localizedStringForKey:v85 value:v86 table:0];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v37 = v74;
      v44 = MEMORY[0x277D83C10];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_274A0EF10;
    v89 = sub_27472D918(v19);
    *(v88 + 56) = v37;
    *(v88 + 64) = v44;
    *(v88 + 32) = v89;
    OUTLINED_FUNCTION_11();
    v90 = sub_2749FCD74();
    v92 = v91;

    sub_27484E534(v90, v92, v72);

    v93 = *(v14 + OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___subtitleLabel);
    v94 = objc_opt_self();
    v95 = v93;
    v96 = [v94 secondaryLabelColor];
    [v95 setTextColor_];
  }

  return v14;
}

uint64_t sub_2747F8068(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  sub_2749FD0A4();
  *(v7 + 48) = sub_2749FD094();
  v9 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747F8108, v9, v8);
}

uint64_t sub_2747F8108()
{
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = v0[2];

  v5 = [objc_opt_self() loadIcon:v2 size:0 style:{v4, v4}];
  v6 = *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_iconImage);
  *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_iconImage) = v5;

  [v1 reloadData];
  v7 = *(v0 + 1);

  return v7();
}

id MoveToFolderViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void MoveToFolderViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2747F66A8();
  sub_2749FA6F4();

  v5 = v17;
  if (v17)
  {
    if (v17 == 1)
    {
      v11 = v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate;
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v12 + 24))(v3, *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_shortcutsToMove), 0, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      v5 = 1;
    }

    else
    {
      if (v17 == 2)
      {
        return;
      }

      v6 = v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate;
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 8);
        v8 = swift_getObjectType();
        v9 = *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_shortcutsToMove);
        v10 = *(v7 + 24);
        sub_27478C370(v17);
        v10(v3, v9, v17, v8, v7);
        swift_unknownObjectRelease();
        sub_2747F9720(v17);
      }
    }
  }

  else
  {
    v14 = v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate;
    OUTLINED_FUNCTION_24();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      v16 = swift_getObjectType();
      (*(v15 + 16))(v3, *(v3 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_shortcutsToMove), v16, v15);
      swift_unknownObjectRelease();
    }

    v5 = 0;
  }

  sub_2747F9720(v5);
}

uint64_t sub_2747F8650()
{
  type metadata accessor for HeaderView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969870, &qword_274A156B8);
  result = sub_2749FCDC4();
  qword_2809697C0 = result;
  *algn_2809697C8 = v1;
  return result;
}

id sub_2747F86C4(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];
  [a1 addSubview_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_274A15460;
  v5 = [v2 leadingAnchor];
  v6 = [a1 layoutMarginsGuide];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:12.0];
  *(v4 + 32) = v8;
  v9 = [v2 centerYAnchor];
  v10 = sub_2747F8E54();
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-2.0];
  *(v4 + 40) = v12;
  v13 = [v2 widthAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v4 + 48) = v14;
  v15 = [*&a1[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___subtitleLabel] leadingAnchor];
  v16 = [v2 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:12.0];

  *(v4 + 56) = v17;
  v18 = sub_2747F8C00();
  v19 = [v18 leadingAnchor];

  v20 = [v2 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:12.0];

  *(v4 + 64) = v21;
  sub_27471CF08(0, &qword_280968040, 0x277CCAAD0);
  v22 = sub_2749FCF74();

  [v3 activateConstraints_];

  return v2;
}

id sub_2747F8A10(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_2747F86A4();
  [a1 insertSubview:v2 belowSubview:v3];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_274A15450;
  v6 = [v2 centerXAnchor];
  v7 = OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___iconImageView;
  v8 = [*&a1[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___iconImageView] centerXAnchor];
  v9 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v9;
  v10 = [v2 centerYAnchor];

  v11 = [*&a1[v7] centerYAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v5 + 40) = v12;
  sub_27471CF08(0, &qword_280968040, 0x277CCAAD0);
  v13 = sub_2749FCF74();

  [v4 activateConstraints_];

  return v2;
}

id sub_2747F8C20(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [a1 addSubview_];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_274A15450;
  v7 = [v3 topAnchor];
  v8 = [a1 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:12.0];

  *(v6 + 32) = v9;
  v10 = [v3 trailingAnchor];

  v11 = [a1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-8.0];

  *(v6 + 40) = v12;
  sub_27471CF08(0, &qword_280968040, 0x277CCAAD0);
  v13 = sub_2749FCF74();

  [v5 activateConstraints_];

  return v3;
}

id sub_2747F8E74(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2747F8ED8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [a1 addSubview_];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_274A154D0;
  v7 = [v3 topAnchor];
  v8 = sub_2747F8C00();
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:4.0];
  *(v6 + 32) = v10;
  v11 = [v3 trailingAnchor];
  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-8.0];

  *(v6 + 40) = v13;
  v14 = [v3 bottomAnchor];

  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v6 + 48) = v16;
  sub_27471CF08(0, &qword_280968040, 0x277CCAAD0);
  v17 = sub_2749FCF74();

  [v5 activateConstraints_];

  return v3;
}

id sub_2747F9174(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___iconImageView] = 0;
  *&v4[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___iconStackImageView] = 0;
  *&v4[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___subtitleLabel] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for HeaderView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_2747F9230(void *a1)
{
  *&v1[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___iconImageView] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___iconStackImageView] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUIP33_AAF3D332C57B0C13AFF481CC7D699DEC10HeaderView____lazy_storage___subtitleLabel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HeaderView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2747F9310(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2747F93B4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    OUTLINED_FUNCTION_3_0();
    v9 = v8;
    MEMORY[0x28223BE20](v10);
    v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_2749FDCA4();
    (*(v9 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_0(a2);
  }

  else
  {
    v13 = 0;
  }

  [v3 initWithBarButtonSystemItem:a1 target:v13 action:a3];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_46();
}

id sub_2747F94FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_2747F9578(uint64_t a1, uint64_t a2, void *a3)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2747F94FC;
  v8[3] = &block_descriptor_16;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithSectionProvider:v5 configuration:a3];

  _Block_release(v5);

  return v6;
}

void sub_2747F9654(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setTitle_];
}

uint64_t sub_2747F96B8(void *a1)
{
  v2 = [a1 indexPathsForSelectedItems];

  if (!v2)
  {
    return 0;
  }

  sub_2749F9284();
  v3 = sub_2749FCF84();

  return v3;
}

void sub_2747F9720(id a1)
{
  if (a1 != 2)
  {
    sub_27478C360(a1);
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI26MoveToFolderViewControllerC4Item33_AAF3D332C57B0C13AFF481CC7D699DECLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2747F98AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2747F9900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2747F9980()
{
  result = qword_280969850;
  if (!qword_280969850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969850);
  }

  return result;
}

unint64_t sub_2747F99D8()
{
  result = qword_280969858;
  if (!qword_280969858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969858);
  }

  return result;
}

uint64_t sub_2747F9A2C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27475F680;

  return sub_2747F8068(v6, a1, v4, v5, v7, v8, v9);
}

unint64_t sub_2747F9B0C()
{
  result = qword_280969898;
  if (!qword_280969898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969898);
  }

  return result;
}

uint64_t sub_2747F9B60(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698A0, &qword_274A156C8) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_2747F6C90(a1, a2, a3, v8);
}

uint64_t sub_2747F9C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2749FC5B4();
  result = sub_2749FC5B4();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14;
  *(a6 + 56) = v13;
  *(a6 + 64) = v14;
  return result;
}

uint64_t sub_2747F9CFC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2747F9D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2747F9DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698C0, &qword_274A15788);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809698C8, &qword_274A15790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809698D0, &qword_274A15798);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809698D8, &qword_274A157A0);
  sub_27471CF08(255, &qword_28096DDC0, 0x277D7CAA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809698E0, &qword_274A157A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809698E8, &qword_274A157B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809698F0, &qword_274A157B8);
  sub_2747FCC64();
  v0 = sub_2747FCD4C();
  OUTLINED_FUNCTION_0(v0, v1, v2, v3);
  v4 = sub_27475D0D0();
  v8 = OUTLINED_FUNCTION_0(v4, v5, v6, v7);
  OUTLINED_FUNCTION_0(v8, v9, v10, v11);
  sub_2747FCDA0();
  v20 = sub_2747FCE08();
  OUTLINED_FUNCTION_0(v20, v12, v13, v14);
  v19 = sub_27472AB6C(&qword_280969928, &qword_2809698D0, &qword_274A15798, MEMORY[0x277CDDF68]);
  OUTLINED_FUNCTION_0(v19, v15, v16, v17);
  return sub_2749FAEC4();
}

uint64_t sub_2747F9FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_2749FB4F4();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969908, &qword_274A157C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698F0, &qword_274A157B8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698E8, &qword_274A157B0);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v54 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698E0, &qword_274A157A8);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698D8, &qword_274A157A0);
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15);
  v58 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698C8, &qword_274A15790);
  v63 = *(v17 - 8);
  v64 = v17;
  MEMORY[0x28223BE20](v17);
  v62 = &v54 - v18;
  v68 = a1;
  v70 = a1;
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969930, &qword_274A157C8);
  sub_27472AB6C(&qword_280969938, &qword_280969930, &qword_274A157C8, MEMORY[0x277CE1198]);
  sub_2749FAA54();
  sub_2749FCE14("Conflicts", 9);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v19 = qword_28159E448;
  v20 = sub_2749FCD64();
  v21 = sub_2749FCD64();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v25 = v24;

  v71 = v23;
  v72 = v25;
  sub_27472AB6C(&qword_280969900, &qword_280969908, &qword_274A157C0, MEMORY[0x277CDD6E0]);
  v26 = sub_27475D0D0();
  sub_2749FC0F4();

  (*(v6 + 8))(v8, v5);
  v27 = sub_2747FCC64();
  v28 = sub_2747FCD4C();
  sub_2749FC044();
  sub_27472ECBC(v11, &qword_2809698F0, &qword_274A157B8);
  sub_2749FCE14("Resolve Conflicts", 17);
  v29 = sub_2749FCD64();
  v30 = sub_2749FCD64();

  v31 = [v19 localizedStringForKey:v29 value:v30 table:0];

  v32 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v34 = v33;

  v77 = v32;
  v78 = v34;
  v71 = v9;
  v72 = &type metadata for ConflictToggleStyle;
  v73 = v27;
  v74 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v54;
  v37 = v57;
  v38 = MEMORY[0x277D837D0];
  sub_2749FC0A4();

  (*(v55 + 8))(v13, v37);
  v40 = v65;
  v39 = v66;
  v41 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x277CDDDC0], v67);
  v71 = v37;
  v72 = v38;
  v73 = OpaqueTypeConformance2;
  v74 = v26;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v58;
  v44 = v59;
  sub_2749FC224();
  (*(v39 + 8))(v40, v41);
  (*(v56 + 8))(v36, v44);
  v45 = sub_27471CF08(0, &qword_28096DDC0, 0x277D7CAA0);
  v71 = v44;
  v72 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_2747FCDA0();
  v48 = sub_2747FCE08();
  v50 = v61;
  v49 = v62;
  sub_2749FC1C4();
  v51 = (*(v60 + 8))(v43, v50);
  v67 = &v54;
  MEMORY[0x28223BE20](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698D0, &qword_274A15798);
  v71 = v50;
  v72 = v45;
  v73 = &type metadata for ShortcutPreviewView;
  v74 = v46;
  v75 = v47;
  v76 = v48;
  swift_getOpaqueTypeConformance2();
  sub_27472AB6C(&qword_280969928, &qword_2809698D0, &qword_274A15798, MEMORY[0x277CDDF68]);
  v52 = v64;
  sub_2749FC2C4();
  return (*(v63 + 8))(v49, v52);
}

uint64_t sub_2747FA940@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2749F9AA4();
  v4 = v3;
  v5 = sub_2749F9A94();
  sub_2749F9A04();
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = sub_2747FF1D8;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_2747FA9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969940, &qword_274A157D0);
  MEMORY[0x28223BE20](v25);
  v23 = &v21 - v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969948, &qword_274A157D8);
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v21 - v5;
  v7 = sub_2749FB834();
  MEMORY[0x28223BE20](v7 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969950, &qword_274A157E0);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - v9;
  sub_2749FB814();
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969958, &qword_274A1B380);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096CFC0, &qword_274A0F0A0);
  v12 = sub_27472AB6C(&unk_28096B360, &unk_28096CFC0, &qword_274A0F0A0, MEMORY[0x277CDF028]);
  v29 = v11;
  v30 = v12;
  swift_getOpaqueTypeConformance2();
  sub_2749FAB44();
  sub_2749FB824();
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969960, &qword_274A157E8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969968, &qword_274A157F0);
  v14 = sub_2747FED50();
  v29 = v13;
  v30 = v14;
  swift_getOpaqueTypeConformance2();
  sub_2749FAB44();
  v15 = *(v25 + 48);
  v17 = v22;
  v16 = v23;
  (*(v8 + 16))(v23, v10, v22);
  v18 = &v16[v15];
  v19 = v24;
  (*(v4 + 16))(v18, v6, v24);
  sub_2749FB694();
  (*(v4 + 8))(v6, v19);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_2747FAD7C@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_2749FAF34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0, &qword_274A0F0A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;

  sub_2749FC624();
  sub_2749FAF14();
  sub_27472AB6C(&unk_28096B360, &unk_28096CFC0, &qword_274A0F0A0, MEMORY[0x277CDF028]);
  sub_2749FC0B4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2747FAF84@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v19 = sub_2749FAF34();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969980, &qword_274A157F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969968, &qword_274A157F0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = swift_allocObject();
  memcpy((v12 + 16), v1, 0x48uLL);
  v20 = v1;
  sub_2747FEE44(v1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969990, &qword_274A15808);
  sub_2747FEE7C();
  sub_2749FC624();
  v22[0] = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5C4();
  if (v21)
  {
    v13 = 0;
  }

  else
  {
    v22[0] = *(v1 + 56);
    sub_2749FC5C4();
    v13 = v21 ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13 & 1;
  (*(v6 + 32))(v11, v8, v5);
  v16 = &v11[*(v9 + 36)];
  *v16 = KeyPath;
  v16[1] = sub_2747FF010;
  v16[2] = v15;
  sub_2749FAF24();
  sub_2747FED50();
  sub_2749FC0B4();
  (*(v2 + 8))(v4, v19);
  return sub_27472ECBC(v11, &qword_280969968, &qword_274A157F0);
}

uint64_t sub_2747FB2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2749FB644();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699B8, &qword_274A15860);
  return sub_2747FB31C(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2747FB31C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v52 = sub_2749FC744();
  v50 = *(v52 - 8);
  v3 = MEMORY[0x28223BE20](v52);
  v70 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v68 = &v47 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v67 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = *a1;
  v69 = [*a1 localWorkflowRecord];
  v12 = [objc_opt_self() currentDevice];
  v13 = sub_2747DE030(v12, &selRef_name);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = v10;
    sub_2749FCE14("%@ (This Device)", 16);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v18 = qword_28159E448;
    v19 = sub_2749FCD64();
    v20 = sub_2749FCD64();

    v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_274A0EF10;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_27475C4F4();
    *(v22 + 32) = v15;
    *(v22 + 40) = v16;
    v23 = sub_2749FCD74();
    v65 = v24;
    v66 = v23;

    v10 = v17;
  }

  else
  {
    sub_2749FCE14("This Device", 11);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v25 = qword_28159E448;
    v26 = sub_2749FCD64();
    v27 = sub_2749FCD64();

    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v65 = v30;
    v66 = v29;
  }

  v80 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5E4();
  v63 = v92;
  v64 = v91;
  v62 = v93;
  LOBYTE(v80) = 0;
  sub_2749FC5B4();
  v60 = v91;
  v61 = v92;
  sub_2749FC734();
  v59 = [v11 remoteWorkflowRecord];
  v31 = [v11 remoteWorkflowRecord];
  if (v31)
  {
    v49 = sub_2747DE030(v31, &selRef_lastSavedOnDeviceName);
    v58 = v32;
  }

  else
  {
    v49 = 0;
    v58 = 0;
  }

  v80 = *(a1 + 56);
  sub_2749FC5E4();
  v56 = v92;
  v57 = v91;
  v55 = v93;
  LOBYTE(v80) = 0;
  sub_2749FC5B4();
  v53 = v91;
  v54 = v92;
  v33 = v67;
  sub_2749FC734();
  v34 = v50;
  v35 = *(v50 + 16);
  v36 = v68;
  v37 = v52;
  v35(v68, v10, v52);
  v35(v70, v33, v37);
  v71 = 1;
  v78[0] = v69;
  v78[1] = v66;
  v78[2] = v65;
  LOBYTE(v78[3]) = 0;
  *(&v78[3] + 1) = *v74;
  HIDWORD(v78[3]) = *&v74[3];
  v78[4] = v64;
  v78[5] = v63;
  LOBYTE(v78[6]) = v62;
  *(&v78[6] + 1) = *v73;
  HIDWORD(v78[6]) = *&v73[3];
  LOBYTE(v78[7]) = v60;
  *(&v78[7] + 1) = *v72;
  HIDWORD(v78[7]) = *&v72[3];
  v78[8] = v61;
  v48 = v10;
  v38 = v51;
  memcpy(v51, v78, 0x48uLL);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699C0, &unk_274A15868);
  v35(&v38[v39[12]], v36, v37);
  v40 = v39[16];
  v41 = v49;
  v79[0] = v59;
  v79[1] = v49;
  v79[2] = v58;
  LOBYTE(v79[3]) = 1;
  *(&v79[3] + 1) = *v77;
  HIDWORD(v79[3]) = *&v77[3];
  v79[4] = v57;
  v79[5] = v56;
  LOBYTE(v79[6]) = v55;
  *(&v79[6] + 1) = *v76;
  HIDWORD(v79[6]) = *&v76[3];
  LOBYTE(v79[7]) = v53;
  HIDWORD(v79[7]) = *&v75[3];
  *(&v79[7] + 1) = *v75;
  v79[8] = v54;
  memcpy(&v38[v40], v79, 0x48uLL);
  v42 = v70;
  v35(&v38[v39[20]], v70, v37);
  v43 = &v38[v39[24]];
  v44 = v71;
  *v43 = 0;
  v43[8] = v44;
  sub_2747FF1E0(v78, &v91);
  sub_2747FF1E0(v79, &v91);
  v45 = *(v34 + 8);
  v45(v67, v37);
  v45(v48, v37);
  v45(v42, v37);
  *&v80 = v59;
  *(&v80 + 1) = v41;
  v81 = v58;
  v82 = 1;
  *v83 = *v77;
  *&v83[3] = *&v77[3];
  v84 = v57;
  v85 = v56;
  v86 = v55;
  *v87 = *v76;
  *&v87[3] = *&v76[3];
  v88 = v53;
  *v89 = *v75;
  *&v89[3] = *&v75[3];
  v90 = v54;
  sub_2747FF218(&v80);
  v45(v68, v37);
  v91 = v69;
  v92 = v66;
  v93 = v65;
  v94 = 0;
  *v95 = *v74;
  *&v95[3] = *&v74[3];
  v96 = v64;
  v97 = v63;
  v98 = v62;
  *v99 = *v73;
  *&v99[3] = *&v73[3];
  v100 = v60;
  *v101 = *v72;
  *&v101[3] = *&v72[3];
  v102 = v61;
  return sub_2747FF218(&v91);
}

uint64_t sub_2747FBAB0@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14("Cancel", 6);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

void sub_2747FBBD0(void (**a1)(void))
{
  v2 = sub_2749FCA74();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FCAA4();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FCA84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v25[0] = *(a1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5C4();
  v13 = LOBYTE(aBlock[0]);
  v25[0] = *(a1 + 7);
  sub_2749FC5C4();
  v14 = [v12 resolutionKeepingLocal:v13 keepingRemote:LOBYTE(aBlock[0])];
  if (v14)
  {
    v15 = v14;
    sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
    (*(v9 + 104))(v11, *MEMORY[0x277D851C8], v8);
    v16 = sub_2749FD434();
    (*(v9 + 8))(v11, v8);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    memcpy((v17 + 24), a1, 0x48uLL);
    aBlock[4] = sub_2747FF158;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_17;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    sub_2747FEE44(a1, v25);
    sub_2749FCA94();
    *&v25[0] = MEMORY[0x277D84F90];
    sub_274724ED0(&qword_28159E580, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
    sub_27472AB6C(&qword_28159E530, &unk_28096DB60, &qword_274A0F640, MEMORY[0x277D83970]);
    v20 = v24;
    sub_2749FD7B4();
    MEMORY[0x277C5F170](0, v7, v4, v18);
    _Block_release(v18);

    (*(v23 + 8))(v4, v20);
    (*(v21 + 8))(v7, v22);
  }

  else
  {
    a1[1]();
  }
}

uint64_t sub_2747FC020(uint64_t a1, const void *a2)
{
  v4 = sub_2749FCA74();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FCAA4();
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultDatabase];
  v11 = [v10 applyConflictResolution_];

  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v12 = sub_2749FD404();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  memcpy((v13 + 24), a2, 0x48uLL);
  aBlock[4] = sub_2747FF1CC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_18_0;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  sub_2747FEE44(a2, v20);

  sub_2749FCA94();
  v20[0] = MEMORY[0x277D84F90];
  sub_274724ED0(&qword_28159E580, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
  sub_27472AB6C(&qword_28159E530, &unk_28096DB60, &qword_274A0F640, MEMORY[0x277D83970]);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v9, v6, v14);
  _Block_release(v14);

  (*(v19 + 8))(v6, v4);
  return (*(v17 + 8))(v9, v18);
}

void sub_2747FC380(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + 24);
    v3 = a1;
    v2();
  }

  else
  {
    (*(a2 + 8))();
  }
}

uint64_t sub_2747FC3EC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5C4();
  if (v36 == 1)
  {
    sub_2749FC5C4();
    sub_2749FCE14("Keep All", 8);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v4 = qword_28159E448;
    v5 = sub_2749FCD64();
    v6 = sub_2749FCD64();

    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = v9;

    *&v37 = v8;
    *(&v37 + 1) = v10;
    sub_27475D0D0();
    v11 = sub_2749FBEE4();
    v13 = v12;
    LOBYTE(v5) = v14 & 1;
    sub_274754DBC(v11, v12, v14 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699B0, &unk_274A21B70);
    sub_2747FEF94();
    sub_2749FB7B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699A8, &unk_274A15810);
    sub_2747FEF08();
    sub_2749FB7B4();
    sub_27477656C(v11, v13, v5);

LABEL_20:
    v25 = v37;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    goto LABEL_21;
  }

  sub_2749FC5C4();
  if ((v36 & 1) == 0)
  {
    sub_2749FC5C4();
    if (v36 != 1)
    {
      sub_2749FCE14("Keep", 4);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v29 = qword_28159E448;
      v30 = sub_2749FCD64();
      v31 = sub_2749FCD64();

      v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

      v33 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v35 = v34;

      *&v37 = v33;
      *(&v37 + 1) = v35;
      sub_27475D0D0();
      sub_2749FBEE4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699A8, &unk_274A15810);
      sub_2747FEF08();
      result = sub_2749FB7B4();
      goto LABEL_20;
    }
  }

  sub_2749FC5C4();
  if (v36 == 1)
  {
    v16 = [*a1 localWorkflowRecord];
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  sub_2749FC5C4();
  if (v36 != 1)
  {
    goto LABEL_13;
  }

  v17 = [*a1 remoteWorkflowRecord];
  if (v17)
  {

LABEL_13:
    sub_2749FCE14("Keep One", 8);
    if (qword_28159E3A8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_15:
  sub_2749FCE14("Delete All", 10);
  if (qword_28159E3A8 != -1)
  {
LABEL_22:
    swift_once();
  }

LABEL_16:
  v18 = qword_28159E448;
  v19 = sub_2749FCD64();
  v20 = sub_2749FCD64();

  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v24 = v23;

  *&v38 = v22;
  *(&v38 + 1) = v24;
  sub_27475D0D0();
  sub_2749FBEE4();
  sub_2749FB7B4();
  sub_2747FF018(v22, v24, v39, *(&v39 + 1));
  sub_2747FF018(v22, v24, v39, *(&v39 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699B0, &unk_274A21B70);
  sub_2747FEF94();
  sub_2749FB7B4();
  sub_2747FF054(v22, v24, v39, *(&v39 + 1), v40, SHIBYTE(v40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699A8, &unk_274A15810);
  sub_2747FEF08();
  sub_2749FB7B4();
  sub_2747FF0B8(v22, v24, v39);
  sub_2747FF0F4(v22, v24, v39, *(&v39 + 1), v40, SHIBYTE(v40));
  result = sub_2747FF0B8(v22, v24, v39);
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
LABEL_21:
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v27;
  *(a2 + 34) = v28;
  return result;
}

unint64_t sub_2747FCC64()
{
  result = qword_2809698F8;
  if (!qword_2809698F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809698F0, &qword_274A157B8);
    sub_27472AB6C(&qword_280969900, &qword_280969908, &qword_274A157C0, MEMORY[0x277CDD6E0]);
    sub_274724ED0(&qword_28159E5A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809698F8);
  }

  return result;
}

unint64_t sub_2747FCD4C()
{
  result = qword_280969910;
  if (!qword_280969910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969910);
  }

  return result;
}

unint64_t sub_2747FCDA0()
{
  result = qword_280969918;
  if (!qword_280969918)
  {
    sub_27471CF08(255, &qword_28096DDC0, 0x277D7CAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969918);
  }

  return result;
}

unint64_t sub_2747FCE08()
{
  result = qword_280969920;
  if (!qword_280969920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969920);
  }

  return result;
}

uint64_t sub_2747FCE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_2749FAF64();
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FB9F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699D8, &qword_274A15A68);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699E0, &qword_274A15A70);
  sub_2747FF450();
  sub_2749FC624();
  sub_2749FAF54();
  sub_27472AB6C(&qword_280969A10, &qword_2809699D8, &qword_274A15A68, MEMORY[0x277CDF028]);
  sub_274724ED0(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v16 = v19;
  sub_2749FBFC4();
  (*(v20 + 8))(v6, v16);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2747FD1A4()
{
  v0 = sub_2749FB9B4();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_2747FD200@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2749FB524();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A18, &qword_274A15A88);
  sub_2747FD274(a2 + *(v3 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699E0, &qword_274A15A70);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2747FD274@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_2749FB9D4();
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A20, &qword_274A15A90);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v36 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A28, &qword_274A15A98);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  sub_2749FB9C4();
  v19 = sub_2749FC514();
  v20 = (v8 + *(v6 + 44));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A30, &qword_274A15AA0) + 28);
  v22 = *MEMORY[0x277CE1048];
  v23 = sub_2749FC554();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v8 = v19;
  v24 = sub_2749FC3F4();
  KeyPath = swift_getKeyPath();
  sub_2747FF534();
  v26 = &v16[*(v10 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  v36 = v18;
  sub_2747FF534();
  v27 = v37;
  sub_2749FB9E4();
  sub_2747FF70C();
  v29 = v38;
  v28 = v39;
  v30 = *(v39 + 16);
  v31 = v40;
  v30(v38, v27, v40);
  v32 = v41;
  sub_2747FF70C();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A38, &qword_274A15B08);
  v30((v32 + *(v33 + 48)), v29, v31);
  v34 = *(v28 + 8);
  v34(v27, v31);
  sub_27472ECBC(v36, &qword_280969A28, &qword_274A15A98);
  v34(v29, v31);
  return sub_27472ECBC(v13, &qword_280969A28, &qword_274A15A98);
}

uint64_t sub_2747FD654@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2749FB524();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A50, &qword_274A15B18);
  return sub_2747FD6A8(v1, a1 + *(v3 + 44));
}

uint64_t sub_2747FD6A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_2749FAF64();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A58, &qword_274A15B20);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A60, &qword_274A15B28);
  MEMORY[0x28223BE20](v58);
  v51 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A68, &qword_274A15B30);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A70, &qword_274A15B38);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v61 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A78, &qword_274A15B40);
  sub_27472AB6C(&qword_280969A80, &qword_280969A78, &qword_274A15B40, MEMORY[0x277CE14C0]);
  sub_2749FC674();
  v19 = sub_2749FBC64();
  v20 = sub_2749FA9E4();
  v21 = &v18[*(v14 + 44)];
  *v21 = v19;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  if (*a1)
  {
    v62 = *a1;
    MEMORY[0x28223BE20](v20);
    *(&v49 - 2) = a1;
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A28, &qword_274A15A98);
    sub_27471CF08(0, &qword_28096DDC0, 0x277D7CAA0);
    sub_2747FF59C();
    sub_2747FCDA0();
    v28 = v50;
    sub_2749FAD34();
    v29 = v54;
    sub_2749FAF54();
    sub_27472AB6C(&qword_280969AA8, &qword_280969A58, &qword_274A15B20, MEMORY[0x277CDD938]);
    sub_274724ED0(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v30 = v51;
    v31 = v53;
    v32 = v56;
    sub_2749FBFC4();
    (*(v55 + 8))(v29, v32);
    (*(v52 + 8))(v28, v31);
    v33 = sub_2749FBC64();
    sub_2749FA9E4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = v58;
    v43 = &v30[*(v58 + 36)];
    *v43 = v33;
    *(v43 + 1) = v35;
    *(v43 + 2) = v37;
    *(v43 + 3) = v39;
    *(v43 + 4) = v41;
    v43[40] = 0;
    sub_27474562C();
    v44 = 0;
    v45 = v42;
  }

  else
  {
    v44 = 1;
    v45 = v58;
  }

  __swift_storeEnumTagSinglePayload(v12, v44, 1, v45);
  v46 = v57;
  sub_2747FF70C();
  v47 = v59;
  sub_27474556C();
  sub_2747FF70C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A88, &qword_274A15B48);
  sub_27474556C();
  sub_2747455CC(v12);
  sub_27472ECBC(v18, &qword_280969A70, &qword_274A15B38);
  sub_2747455CC(v47);
  return sub_27472ECBC(v46, &qword_280969A70, &qword_274A15B38);
}

uint64_t sub_2747FDCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FB644();
  LOBYTE(v9[0]) = 1;
  sub_2747FDD9C(a1, __src);
  memcpy(&v6[7], __src, 0x48uLL);
  LOBYTE(a1) = v9[0];
  v8[0] = v4;
  v8[1] = 0;
  LOBYTE(v8[2]) = v9[0];
  memcpy(&v8[2] + 1, v6, 0x4FuLL);
  memcpy(a2, v8, 0x60uLL);
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v9[0] = v4;
  v9[1] = 0;
  v10 = a1;
  memcpy(v11, v6, sizeof(v11));
  sub_2747FF70C();
  return sub_27472ECBC(v9, &qword_280969AB0, &qword_274A15B58);
}

uint64_t sub_2747FDD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749F90F4();
  v107 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = &selRef_createFolderWithName_icon_error_;
  if (*a1 && (v9 = v7, ![v9 isDeleted]))
  {
    v28 = *(a1 + 16);
    if (v28)
    {
      v105 = v7;
      v106 = a2;
      v29 = *(a1 + 8);

      sub_2749FCE14("Modified on %@", 14);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v30 = qword_28159E448;
      v31 = sub_2749FCD64();
      v32 = sub_2749FCD64();

      v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_274A0EF10;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_27475C4F4();
      *(v34 + 32) = v29;
      *(v34 + 40) = v28;
      v35 = sub_2749FCD74();
      v37 = v36;

      *&v118 = v35;
      *(&v118 + 1) = v37;
      sub_27475D0D0();
      *&v114 = sub_2749FBEE4();
      *(&v114 + 1) = v38;
      *&v115 = v39 & 1;
      *(&v115 + 1) = v40;
      v116 = 0;
      sub_2749FB7B4();
      v41 = v118;
      v42 = v119;
      v43 = v120;
      v7 = v105;
      a2 = v106;
    }

    else
    {
      sub_2749FCE14("Modified on another device", 26);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v60 = qword_28159E448;
      v61 = sub_2749FCD64();
      v62 = sub_2749FCD64();

      v63 = [v60 localizedStringForKey:v61 value:v62 table:0];

      v64 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v66 = v65;

      *&v118 = v64;
      *(&v118 + 1) = v66;
      sub_27475D0D0();
      *&v114 = sub_2749FBEE4();
      *(&v114 + 1) = v68;
      *&v115 = v67 & 1;
      *(&v115 + 1) = v69;
      v116 = 1;
      sub_2749FB7B4();
      v41 = v118;
      v42 = v119;
      v43 = v120;
    }

    v114 = v41;
    v115 = v42;
    v116 = v43;
    v117 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699B0, &unk_274A21B70);
    sub_2747FEF94();
    sub_2749FB7B4();
    v54 = *(&v118 + 1);
    v55 = v118;
    v57 = *(&v119 + 1);
    v56 = v119;
    v58 = v120;
    v59 = v121;
    v8 = &selRef_createFolderWithName_icon_error_;
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v113 = v6;
      v11 = v4;
      v12 = v7;
      v13 = *(a1 + 8);

      sub_2749FCE14("Deleted on %@", 13);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v14 = qword_28159E448;
      v15 = sub_2749FCD64();
      v16 = sub_2749FCD64();

      v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_274A0EF10;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_27475C4F4();
      *(v18 + 32) = v13;
      *(v18 + 40) = v10;
      v19 = sub_2749FCD74();
      v21 = v20;

      *&v118 = v19;
      *(&v118 + 1) = v21;
      sub_27475D0D0();
      *&v114 = sub_2749FBEE4();
      *(&v114 + 1) = v22;
      *&v115 = v23 & 1;
      *(&v115 + 1) = v24;
      v116 = 0;
      sub_2749FB7B4();
      v25 = v118;
      v26 = v119;
      v27 = v120;
      v7 = v12;
      v4 = v11;
      v6 = v113;
      v8 = &selRef_createFolderWithName_icon_error_;
    }

    else
    {
      sub_2749FCE14("Deleted on another device", 25);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v44 = qword_28159E448;
      v45 = sub_2749FCD64();
      v46 = sub_2749FCD64();

      v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

      v48 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v50 = v49;

      *&v118 = v48;
      *(&v118 + 1) = v50;
      sub_27475D0D0();
      *&v114 = sub_2749FBEE4();
      *(&v114 + 1) = v52;
      *&v115 = v51 & 1;
      *(&v115 + 1) = v53;
      v116 = 1;
      sub_2749FB7B4();
      v25 = v118;
      v26 = v119;
      v27 = v120;
    }

    v114 = v25;
    v115 = v26;
    v116 = v27;
    v117 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699B0, &unk_274A21B70);
    sub_2747FEF94();
    sub_2749FB7B4();
    v54 = *(&v118 + 1);
    v55 = v118;
    v57 = *(&v119 + 1);
    v56 = v119;
    v58 = v120;
    v59 = v121;
    if (!v7)
    {
      v112 = v119;
      v113 = *(&v118 + 1);
      v109 = *(&v119 + 1);
      v111 = v120;
      v108 = v121;
      sub_2747FF764(v118, *(&v118 + 1), v119, *(&v119 + 1));
LABEL_25:
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      goto LABEL_29;
    }

    v9 = v7;
  }

  v112 = v56;
  v109 = v57;
  v111 = v58;
  sub_2747FF764(v55, v54, v56, v57);
  v70 = [v9 v8[206]];
  v113 = v54;
  v108 = v59;
  if (!v70 || (*(a1 + 24)) && ([v9 v8[206]])
  {

    goto LABEL_25;
  }

  v110 = v55;
  v105 = v7;
  v106 = a2;
  if (qword_280966BE0 != -1)
  {
    swift_once();
  }

  v75 = qword_2809698B8;
  v76 = [v9 modificationDate];
  sub_2749F90D4();

  v77 = sub_2749F90B4();
  (*(v107 + 8))(v6, v4);
  v78 = [v75 stringFromDate_];

  v79 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v81 = v80;

  *&v118 = v79;
  *(&v118 + 1) = v81;
  sub_27475D0D0();
  v82 = sub_2749FBEE4();
  v84 = v83;
  v86 = v85;
  sub_2749FC4A4();
  v87 = sub_2749FBE84();
  v89 = v88;
  LOBYTE(v81) = v90;
  v92 = v91;

  sub_27477656C(v82, v84, v86 & 1);

  v93 = v81 & 1;
  v71 = v87;
  v94 = v87;
  v72 = v89;
  v73 = v93;
  sub_274754DBC(v94, v89, v93);
  v74 = v92;

  a2 = v106;
  v55 = v110;
LABEL_29:
  v95 = v113;
  v96 = v109;
  v97 = v55;
  v98 = v108;
  sub_2747FF764(v55, v113, v112, v109);
  sub_2747FF76C(v71, v72, v73, v74);
  v99 = v55;
  v110 = v55;
  v100 = v95;
  v101 = v112;
  v102 = v111;
  sub_2747FF7B0(v99, v100, v112);
  sub_2747FF7B8(v71, v72, v73, v74);
  LOBYTE(v118) = v98;
  *a2 = v97;
  v103 = v113;
  *(a2 + 8) = v113;
  *(a2 + 16) = v101;
  *(a2 + 24) = v96;
  *(a2 + 32) = v102;
  *(a2 + 33) = v98;
  *(a2 + 40) = v71;
  *(a2 + 48) = v72;
  *(a2 + 56) = v73;
  *(a2 + 64) = v74;
  sub_2747FF7B8(v71, v72, v73, v74);
  return sub_2747FF7B0(v110, v103, v101);
}

uint64_t sub_2747FE78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A20, &qword_274A15A90);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (v17 - v6);
  v17[1] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5C4();
  v8 = sub_2749FC514();
  v9 = (v7 + *(v5 + 44));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A30, &qword_274A15AA0) + 28);
  v11 = *MEMORY[0x277CE1048];
  v12 = sub_2749FC554();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  v13 = sub_2749FC3F4();
  KeyPath = swift_getKeyPath();
  sub_2747FF534();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A28, &qword_274A15A98);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

id sub_2747FE964()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDoesRelativeDateFormatting_];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_2809698B8 = v0;
  return result;
}

uint64_t sub_2747FEA20@<X0>(void *a4@<X3>, uint64_t a5@<X8>)
{
  v17[2] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A40, &qword_274A15B10);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = sub_2749F99F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(MEMORY[0x277D7CA60]);
  v13 = sub_2748925E8(a4, 0, 0);
  v15 = v13;
  if (v13)
  {
    v17[1] = sub_2749F9AA4();
    sub_274724ED0(&qword_280969A48, MEMORY[0x277D7BD10], MEMORY[0x277D7BD08]);
    v16 = v15;
    sub_2749FAB04();
    sub_2749F99E4();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_274724ED0(&qword_280968458, MEMORY[0x277D7BCE0], MEMORY[0x277D7BCD8]);
    sub_2749FB7B4();

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_274724ED0(&qword_280968458, MEMORY[0x277D7BCE0], MEMORY[0x277D7BCD8]);
    return sub_2749FB7B4();
  }
}

unint64_t sub_2747FED50()
{
  result = qword_280969970;
  if (!qword_280969970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969968, &qword_274A157F0);
    sub_27472AB6C(&qword_280969978, &qword_280969980, &qword_274A157F8, MEMORY[0x277CDF028]);
    sub_27472AB6C(&unk_28096EC00, &qword_280969988, &qword_274A15800, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969970);
  }

  return result;
}

unint64_t sub_2747FEE7C()
{
  result = qword_280969998;
  if (!qword_280969998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969990, &qword_274A15808);
    sub_2747FEF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969998);
  }

  return result;
}

unint64_t sub_2747FEF08()
{
  result = qword_2809699A0;
  if (!qword_2809699A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809699A8, &unk_274A15810);
    sub_2747FEF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809699A0);
  }

  return result;
}

unint64_t sub_2747FEF94()
{
  result = qword_28096EC20;
  if (!qword_28096EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809699B0, &unk_274A21B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EC20);
  }

  return result;
}

uint64_t sub_2747FF018(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_274754DBC(a1, a2, a3 & 1);
}

uint64_t sub_2747FF054(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_2747FF018(a1, a2, a3, a4);
  }

  else
  {
    sub_274754DBC(a1, a2, a3 & 1);
  }
}

uint64_t sub_2747FF0B8(uint64_t a1, uint64_t a2, char a3)
{
  sub_27477656C(a1, a2, a3 & 1);
}

uint64_t sub_2747FF0F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_2747FF0B8(a1, a2, a3);
  }

  else
  {
    sub_27477656C(a1, a2, a3 & 1);
  }
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747FF254(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2747FF294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2747FF2F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_2747FF334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2747FF3E8()
{
  sub_2749FB9F4();

  return sub_2747FD1A4();
}

unint64_t sub_2747FF450()
{
  result = qword_2809699E8;
  if (!qword_2809699E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809699E0, &qword_274A15A70);
    sub_27472AB6C(&qword_2809699F0, &qword_2809699F8, &qword_274A15A78, MEMORY[0x277CE1138]);
    sub_27472AB6C(&qword_280969A00, &qword_280969A08, &qword_274A15A80, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809699E8);
  }

  return result;
}

uint64_t sub_2747FF534()
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_44();
  v4(v3);
  return v0;
}

unint64_t sub_2747FF59C()
{
  result = qword_280969A90;
  if (!qword_280969A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969A28, &qword_274A15A98);
    sub_2747FF654();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0, &qword_274A15B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969A90);
  }

  return result;
}

unint64_t sub_2747FF654()
{
  result = qword_280969A98;
  if (!qword_280969A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969A20, &qword_274A15A90);
    sub_27472AB6C(&qword_280969AA0, &qword_280969A30, &qword_274A15AA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969A98);
  }

  return result;
}

uint64_t sub_2747FF70C()
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_44();
  v4(v3);
  return v0;
}

uint64_t sub_2747FF76C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274754DBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2747FF7B8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_27477656C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_2747FF7FC()
{
  result = qword_280969AB8;
  if (!qword_280969AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969AC0, &qword_274A15B60);
    sub_274724ED0(&qword_280968458, MEMORY[0x277D7BCE0], MEMORY[0x277D7BCD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969AB8);
  }

  return result;
}

uint64_t sub_2747FF8CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2747FF90C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2747FF97C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v4;
  v15 = *(v2 + 32);
  *a2 = sub_2749FC914();
  *(a2 + 8) = v5;
  *(a2 + 16) = 0x403A000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969AD8, &qword_274A15C68) + 44);
  *v6 = 0;
  *(v6 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969AE0, &unk_274A15C70);
  v16 = *&v14[0];
  v13 = *&v14[0];
  v7 = swift_allocObject();
  v8 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 32);
  sub_27473F28C(&v16, v12, &qword_280968908, &unk_274A23340);
  sub_27480000C(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968908, &unk_274A23340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969AE8, &qword_274A15C80);
  sub_27472AB6C(&qword_280969AF0, &qword_280968908, &unk_274A23340, MEMORY[0x277D83980]);
  OUTLINED_FUNCTION_0_21();
  sub_27472AB6C(v9, &qword_280969AE8, &qword_274A15C80, v10);
  sub_274800044();
  return sub_2749FC764();
}

uint64_t sub_2747FFB50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  *a3 = sub_2749FB634();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B08, &qword_274A15C88);
  return sub_2747FFBC0(a2, v5, v6, a3 + *(v7 + 44));
}

uint64_t sub_2747FFBC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = sub_2749FAF64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B10, &qword_274A15C90);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 56) = a2;
  *(v15 + 64) = a3 & 1;
  v19[4] = a2;
  v20 = a3 & 1;
  v21 = a1;
  sub_27480000C(a1, v22);
  sub_2748000B8();
  v17 = a2;
  sub_2749FC624();
  sub_2749FAF54();
  sub_27472AB6C(&qword_280969B20, &qword_280969B10, &qword_274A15C90, MEMORY[0x277CDF028]);
  sub_27480010C();
  sub_2749FBFC4();
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

void sub_2747FFE38(uint64_t a1, void *a2, char a3)
{
  v9[0] = *(a1 + 8);
  *(v9 + 9) = *(a1 + 17);
  *v8 = *(a1 + 8);
  *&v8[9] = *(a1 + 17);
  v6[4] = a2;
  v7 = a3 & 1;
  sub_27473F28C(v9, v6, &qword_280969B28, &qword_274A15C98);
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B28, &qword_274A15C98);
  sub_2749FC6C4();
  v5 = *&v8[16];
}

uint64_t sub_2747FFEF0@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = 0x6E6F6349707041;
  }

  else
  {
    v4 = 0x6870796C47;
  }

  if (a2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B28, &qword_274A15C98);
  MEMORY[0x277C5E410](&v14, v7);
  v8 = v15;

  if (v8)
  {
    v9 = 0x6E6F6349707041;
  }

  else
  {
    v9 = 0x6870796C47;
  }

  if (v8)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v4 == v9 && v5 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2749FDCC4();
  }

  *a3 = v6;
  *(a3 + 8) = v12 & 1;
  return result;
}

unint64_t sub_274800044()
{
  result = qword_280969B00;
  if (!qword_280969B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969B00);
  }

  return result;
}

unint64_t sub_2748000B8()
{
  result = qword_280969B18;
  if (!qword_280969B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969B18);
  }

  return result;
}

unint64_t sub_27480010C()
{
  result = qword_28159E6A0;
  if (!qword_28159E6A0)
  {
    sub_2749FAF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6A0);
  }

  return result;
}

uint64_t sub_274800164(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2748001A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274800210@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *a3 = sub_2749FB634();
  *(a3 + 8) = 0x402C000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B40, &qword_274A15D30);
  return sub_274800278(a1, v3, (a3 + *(v6 + 44)));
}

uint64_t sub_274800278@<X0>(void *a1@<X0>, unsigned int a2@<W1>, char *a3@<X8>)
{
  v46 = a2;
  v45 = a1;
  v48 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B48, &qword_274A15D38);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v43 = sub_2749FA2F4();
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2749FA2C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2749FA304();
  v40 = *(v44 - 8);
  v16 = v40;
  v17 = MEMORY[0x28223BE20](v44);
  v42 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v41 = &v39 - v19;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B50, &unk_274A15D40) + 48);
  *v15 = 0x404E000000000000;
  v21 = *MEMORY[0x277D7D5B8];
  v22 = sub_2749FA034();
  (*(*(v22 - 8) + 104))(&v15[v20], v21, v22);
  (*(v13 + 104))(v15, *MEMORY[0x277D7D698], v12);
  (*(v9 + 104))(v11, *MEMORY[0x277D7D6D0], v43);
  v23 = v45;
  v24 = v41;
  sub_2749FA314();
  v25 = v8;
  sub_274800724(v46, v8);
  v26 = &v8[*(v4 + 44)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A30, &qword_274A15AA0) + 28);
  v28 = *MEMORY[0x277CE1048];
  v29 = sub_2749FC554();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  v30 = *(v16 + 16);
  v31 = v42;
  v32 = v24;
  v33 = v44;
  v30(v42, v24, v44);
  v34 = v47;
  sub_27473F28C(v25, v47, &qword_280969B48, &qword_274A15D38);
  v35 = v48;
  v30(v48, v31, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B58, &qword_274A15D80);
  sub_27473F28C(v34, &v35[*(v36 + 48)], &qword_280969B48, &qword_274A15D38);
  sub_27472ECBC(v25, &qword_280969B48, &qword_274A15D38);
  v37 = *(v40 + 8);
  v37(v32, v33);
  sub_27472ECBC(v34, &qword_280969B48, &qword_274A15D38);
  return (v37)(v31, v33);
}

uint64_t sub_274800724@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B60, &qword_274A15D88);
  MEMORY[0x28223BE20](v4);
  v6 = (v27 - v5);
  v7 = sub_2749FADE4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B68, &qword_274A15D90);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  if (a1)
  {
    v17 = sub_2749FC514();
    v27[2] = a2;
    v27[3] = v17;
    sub_2749FADD4();
    sub_2749FADC4();
    v27[1] = v4;
    v18 = *(v8 + 8);
    v18(v13, v7);
    sub_2749FC084();
    v18(v11, v7);

    v19 = sub_2749FC3F4();
    KeyPath = swift_getKeyPath();
    v21 = &v16[*(v14 + 36)];
    *v21 = KeyPath;
    v21[1] = v19;
    sub_27473F28C(v16, v6, &qword_280969B68, &qword_274A15D90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B70, &unk_274A15DC8);
    sub_274800A9C();
    sub_27473F76C();
    sub_2749FB7B4();
    return sub_27472ECBC(v16, &qword_280969B68, &qword_274A15D90);
  }

  else
  {
    v23 = sub_2749FC514();
    v24 = [objc_opt_self() tertiaryLabelColor];
    v25 = sub_2749FC3E4();
    v26 = swift_getKeyPath();
    *v6 = v23;
    v6[1] = v26;
    v6[2] = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B70, &unk_274A15DC8);
    sub_274800A9C();
    sub_27473F76C();
    return sub_2749FB7B4();
  }
}

unint64_t sub_274800A9C()
{
  result = qword_280969B78;
  if (!qword_280969B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969B68, &qword_274A15D90);
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0, &qword_274A15B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969B78);
  }

  return result;
}

uint64_t sub_274800BA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30, &unk_274A133E0);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_64_1();
  sub_27473ADB8(a1, v1, &qword_280968A30, &unk_274A133E0);
  return EnvironmentValues.smartShortcutEntryColorSchemeOverride.setter(v1);
}

void *sub_274800C44()
{
  OUTLINED_FUNCTION_10_13();
  EnvironmentValues.smartShortcutPickerViewStyle.getter();
  v0 = OUTLINED_FUNCTION_31_10();
  return memcpy(v0, v1, 0x59uLL);
}

uint64_t sub_274800C7C(void *__src)
{
  memcpy(__dst, __src, 0x59uLL);
  memcpy(__srca, __src, 0x59uLL);
  sub_2747D2AC8(__dst, &v3);
  return EnvironmentValues.smartShortcutPickerViewStyle.setter(__srca);
}

void *sub_274800CE4()
{
  OUTLINED_FUNCTION_10_13();
  sub_2747B6A3C();
  v0 = OUTLINED_FUNCTION_31_10();
  return memcpy(v0, v1, 0xB9uLL);
}

uint64_t sub_274800D1C(void *__src)
{
  memcpy(__dst, __src, 0xB9uLL);
  memcpy(__srca, __src, 0xB9uLL);
  sub_27473ADB8(__dst, &v3, &qword_280968A58, &qword_274A15E00);
  return sub_2747B6A84(__srca);
}

void sub_274800D94()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_46_0();
  v12 = type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  sub_27473ADB8(v0 + *(v12 + 28), v1, &qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v13 + 32))(v3, v1);
  }

  else
  {
    v14 = sub_2749FD2D4();
    v15 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4(v14, &dword_274719000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2749FB4B4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t SmartShortcutPickerSectionGridEntryView.highlightColor.getter()
{
  v1 = sub_2749FC404();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_50_1();
  sub_2749FAA94();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  sub_274800D94();
  v6 = OUTLINED_FUNCTION_63();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277CDF3D0] || v8 == *MEMORY[0x277CDF3C0])
  {
    (*(v3 + 104))(v0, *MEMORY[0x277CE0EE0], v1);
    return sub_2749FC4C4();
  }

  else
  {
    result = sub_2749FDCB4();
    __break(1u);
  }

  return result;
}

void SmartShortcutPickerSectionGridEntryView.isSelected.getter()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v2 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  memcpy(v24, v1, 0xB9uLL);
  v9 = *(type metadata accessor for SmartShortcutPickerSectionGridEntryView(0) + 40);
  memcpy(v25, &v1[v9], 0xBAuLL);
  memcpy(v26, &v1[v9], 0xBAuLL);
  if (sub_2747B973C(v26) == 1)
  {
    CGSizeMake();
    memcpy(v20, v25, 0xBAuLL);
    CGSizeMake();
    memcpy(v23, v10, sizeof(v23));
    sub_274772ADC(v24, v19);
    sub_27473ADB8(v25, v19, &qword_280968A90, &qword_274A13640);
  }

  else
  {
    CGSizeMake();
    memcpy(v20, v25, 0xBAuLL);
    CGSizeMake();
    sub_274772ADC(v24, v19);
    sub_27473ADB8(v25, v19, &qword_280968A90, &qword_274A13640);
    v11 = sub_2749FD2D4();
    v12 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4(v11, &dword_274719000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27472ECBC(v25, &qword_280968A90, &qword_274A13640);
    (*(v4 + 8))(v8, v2);
  }

  memcpy(v21, v24, sizeof(v21));
  CGSizeMake();
  memcpy(&v20[192], v23, 0xB9uLL);
  OUTLINED_FUNCTION_15_6(v20);
  OUTLINED_FUNCTION_15_6(v22);
  OUTLINED_FUNCTION_26_6(v22);
  if (!v13)
  {
    OUTLINED_FUNCTION_28_7(v18);
    OUTLINED_FUNCTION_28_7(v17);
    memcpy(v19, &v20[192], 0xB9uLL);
    OUTLINED_FUNCTION_26_6(v19);
    if (!v13)
    {
      memcpy(v16, &v20[192], 0xB9uLL);
      sub_27473ADB8(v18, v15, &qword_280968A58, &qword_274A15E00);
      static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
      memcpy(v14, v16, 0xB9uLL);
      sub_274772BE8(v14);
      memcpy(v15, v17, 0xB9uLL);
      sub_274772BE8(v15);
      OUTLINED_FUNCTION_28_7(v16);
      sub_27472ECBC(v16, &qword_280968A58, &qword_274A15E00);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_28_7(v16);
    sub_27473ADB8(v18, v15, &qword_280968A58, &qword_274A15E00);
    sub_274772BE8(v16);
LABEL_12:
    memcpy(v19, v20, 0x179uLL);
    sub_27472ECBC(v19, &qword_280968A98, &qword_274A13648);
    goto LABEL_13;
  }

  memcpy(v19, &v20[192], 0xB9uLL);
  OUTLINED_FUNCTION_26_6(v19);
  if (!v13)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_7(v18);
  sub_27472ECBC(v18, &qword_280968A58, &qword_274A15E00);
LABEL_13:
  OUTLINED_FUNCTION_46();
}

uint64_t SmartShortcutPickerSectionGridEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v174 = a1;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B90, &qword_274A15E08);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = (&v143 - v4);
  v6 = type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  OUTLINED_FUNCTION_43();
  v155 = v7;
  MEMORY[0x28223BE20](v8);
  v161 = v9;
  v162 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FC404();
  OUTLINED_FUNCTION_43();
  v151 = v11;
  v152 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v150 = v13 - v12;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B98, &qword_274A15E10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v154 = v15;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BA0, &qword_274A15E18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14();
  v159 = v17;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BA8, &qword_274A15E20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14();
  v160 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BB0, &qword_274A15E28);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39();
  v158 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v163 = &v143 - v25;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BB8, &qword_274A15E30);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14();
  v171 = v27;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BC0, &qword_274A15E38);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14();
  v165 = v29;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BC8, &qword_274A15E40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14();
  v168 = v31;
  v146 = type metadata accessor for AutomationEntryView(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  v148 = (v34 - v33);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BD0, &qword_274A15E48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  v37 = &v143 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BD8, &qword_274A15E50);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39();
  v149 = v40 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v143 - v43;
  v164 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46_0();
  v169 = v6;
  v48 = *(v6 + 24);
  memcpy(__dst, (v1 + v48), 0x5AuLL);
  if ((__dst[11] & 0x100) != 0)
  {
    memcpy(v185, (v1 + v48), 0x59uLL);
    memcpy(v179, (v1 + v48), 0x5AuLL);
    sub_2747D2AC8(v179, v180);
  }

  else
  {
    v166 = v20;

    v49 = sub_2749FD2D4();
    v50 = sub_2749FBC14();
    v145 = v37;
    v51 = v44;
    v52 = v1;
    v53 = v5;
    v54 = v50;
    OUTLINED_FUNCTION_17_4(v49, &dword_274719000, v50, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v5 = v53;
    v1 = v52;
    v44 = v51;
    v37 = v145;
    sub_2749FB4B4();
    v20 = v166;
    swift_getAtKeyPath();
    sub_27472ECBC(__dst, &qword_280969BE0, &qword_274A15E58);
    (*(v46 + 8))(v2, v164);
  }

  memcpy(v180, v185, 0x59uLL);
  v55 = v180[3];
  v181 = v185[2];
  v182 = v185[3];
  v183 = v185[4];
  v184 = *&v185[5];
  if (!LOBYTE(v180[11]))
  {
    v78 = v146;
    OUTLINED_FUNCTION_3_28();
    v79 = v148;
    sub_2748075B4(v1, &v148[v80], v81);
    v179[0] = swift_getKeyPath();
    sub_2747D31F0(v179);
    memcpy(v79, v179, 0xBAuLL);
    v82 = v78[5];
    *&v79[v82] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
    swift_storeEnumTagMultiPayload();
    v83 = v78[6];
    *&v79[v83] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88, &qword_274A15F20);
    swift_storeEnumTagMultiPayload();
    v84 = &v79[v78[8]];
    v85 = v182;
    *(v84 + 8) = v181;
    *v84 = v55;
    *(v84 + 24) = v85;
    *(v84 + 40) = v183;
    *(v84 + 7) = v184;
    v79[v78[9]] = 0;
    if (*(v1 + v169[5]) == 1)
    {
      v86 = SmartShortcutPickerSectionGridEntryView.highlightColor.getter();
    }

    else
    {
      v86 = sub_2749FC464();
    }

    v129 = v86;
    v130 = sub_2749FBC64();
    sub_274807A54(v79, v37, type metadata accessor for AutomationEntryView);
    v131 = &v37[*(v147 + 36)];
    *v131 = v129;
    v131[8] = v130;
    v132 = v149;
    v133 = (v149 + *(v38 + 36));
    v134 = *(sub_2749FAFC4() + 20);
    v135 = *MEMORY[0x277CE0118];
    sub_2749FB584();
    OUTLINED_FUNCTION_9();
    (*(v136 + 104))(&v133[v134], v135);
    *v133 = v55;
    *(v133 + 1) = v55;
    *&v133[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C20, &qword_274A15F60) + 36)] = 256;
    sub_2747D31F8(v37, v132, &qword_280969BD0, &qword_274A15E48);
    v71 = &qword_280969BD8;
    v72 = &qword_274A15E50;
    sub_2747D31F8(v132, v44, &qword_280969BD8, &qword_274A15E50);
    OUTLINED_FUNCTION_19_8();
    sub_27473ADB8(v137, v138, v139, v140);
    swift_storeEnumTagMultiPayload();
    sub_27480700C();
    sub_2748071AC();
    v141 = v168;
    sub_2749FB7B4();
    OUTLINED_FUNCTION_38_5(v141);
    swift_storeEnumTagMultiPayload();
    sub_274806F80();
    v142 = sub_2748074CC();
    OUTLINED_FUNCTION_27_7(v142);
    sub_27472ECBC(v141, &qword_280969BC8, &qword_274A15E40);
    v77 = v44;
    return sub_27472ECBC(v77, v71, v72);
  }

  if (LOBYTE(v180[11]) == 1)
  {
    sub_2747D2B24(v180);
    v56 = v1;
    SmartShortcutPickerSectionGridEntryView.isSelected.getter();
    v57 = type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0);
    OUTLINED_FUNCTION_3_28();
    sub_2748075B4(v1, v5 + v58, v59);
    *v5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
    swift_storeEnumTagMultiPayload();
    v60 = v57[5];
    *(v5 + v60) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200, &qword_274A15100);
    swift_storeEnumTagMultiPayload();
    v61 = v57[6];
    v179[0] = swift_getKeyPath();
    sub_2747D31F0(v179);
    memcpy(v5 + v61, v179, 0xBAuLL);
    v62 = v57[7];
    *(v5 + v62) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88, &qword_274A15F20);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    LOBYTE(v176) = 0;
    OUTLINED_FUNCTION_37_5(KeyPath);
    *(v5 + v64) = v65;
    v66 = sub_2749FC914();
    v68 = v67;
    v69 = v5 + *(v172 + 36);
    sub_27480266C(v56);
    v70 = &v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969BE8, &qword_274A15F50) + 36)];
    *v70 = v66;
    v70[1] = v68;
    v71 = &qword_280969B90;
    v72 = &qword_274A15E08;
    OUTLINED_FUNCTION_19_8();
    sub_27473ADB8(v73, v74, v75, v76);
    swift_storeEnumTagMultiPayload();
    sub_274806F80();
    sub_2748074CC();
    sub_2749FB7B4();
    v77 = v5;
    return sub_27472ECBC(v77, v71, v72);
  }

  v166 = v20;
  SmartShortcutPickerSectionGridEntryView.isSelected.getter();
  v87 = type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0);
  OUTLINED_FUNCTION_3_28();
  v88 = v154;
  sub_2748075B4(v1, v154 + v89, v90);
  *v88 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  swift_storeEnumTagMultiPayload();
  v91 = v87[5];
  *(v88 + v91) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200, &qword_274A15100);
  swift_storeEnumTagMultiPayload();
  v92 = v87[6];
  v179[0] = swift_getKeyPath();
  sub_2747D31F0(v179);
  memcpy(v88 + v92, v179, 0xBAuLL);
  v93 = v87[7];
  *(v88 + v93) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88, &qword_274A15F20);
  swift_storeEnumTagMultiPayload();
  v94 = swift_getKeyPath();
  v178 = 0;
  OUTLINED_FUNCTION_37_5(v94);
  *(v88 + v95) = v96;
  v164 = v38;
  v97 = v169;
  v98 = (v1 + v169[8]);
  v99 = *v98;
  v100 = v98[1];
  v176 = v99;
  v177 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C70, &unk_274A15F70);
  sub_2749FC5C4();
  (*(v151 + 104))(v150, *MEMORY[0x277CE0EE0], v152);
  *(v88 + *(v153 + 36)) = sub_2749FC4C4();
  v101 = v97[5];
  v144 = v1;
  LOBYTE(v176) = *(v1 + v101);
  v152 = type metadata accessor for SmartShortcutPickerSectionGridEntryView;
  v102 = v162;
  sub_2748075B4(v1, v162, type metadata accessor for SmartShortcutPickerSectionGridEntryView);
  v103 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v104 = swift_allocObject();
  sub_274807A54(v102, v104 + v103, type metadata accessor for SmartShortcutPickerSectionGridEntryView);
  sub_2748073CC();
  v105 = v159;
  sub_2749FC304();

  sub_27472ECBC(v88, &qword_280969B98, &qword_274A15E10);
  v106 = v144;
  sub_2748075B4(v144, v102, v152);
  v107 = swift_allocObject();
  sub_274807A54(v102, v107 + v103, type metadata accessor for SmartShortcutPickerSectionGridEntryView);
  v108 = (v105 + *(v156 + 36));
  *v108 = sub_2748079E8;
  v108[1] = v107;
  v109 = v106 + v169[9];
  v110 = *v109;
  v111 = *(v109 + 8);
  LOBYTE(v176) = *v109;
  v177 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5C4();
  if (v175)
  {
    v112 = 1.05;
  }

  else
  {
    v112 = 1.0;
  }

  sub_2749FC9F4();
  v114 = v113;
  v116 = v115;
  v117 = v160;
  sub_2747D31F8(v105, v160, &qword_280969BA0, &qword_274A15E18);
  v118 = v117 + *(v157 + 36);
  *v118 = v112;
  *(v118 + 8) = v112;
  *(v118 + 16) = v114;
  *(v118 + 24) = v116;
  LOBYTE(v176) = v110;
  v177 = v111;
  sub_2749FC5C4();
  if (v175)
  {
    v119 = 2.0;
  }

  else
  {
    v119 = 1.0;
  }

  v120 = v158;
  sub_2747D31F8(v117, v158, &qword_280969BA8, &qword_274A15E20);
  *(v120 + *(v166 + 36)) = v119;
  v121 = v163;
  sub_2747D31F8(v120, v163, &qword_280969BB0, &qword_274A15E28);
  OUTLINED_FUNCTION_19_8();
  sub_27473ADB8(v122, v123, v124, v125);
  swift_storeEnumTagMultiPayload();
  sub_27480700C();
  sub_2748071AC();
  v126 = v168;
  sub_2749FB7B4();
  OUTLINED_FUNCTION_38_5(v126);
  swift_storeEnumTagMultiPayload();
  sub_274806F80();
  v127 = sub_2748074CC();
  OUTLINED_FUNCTION_27_7(v127);
  sub_27472ECBC(v126, &qword_280969BC8, &qword_274A15E40);
  return sub_27472ECBC(v121, &qword_280969BB0, &qword_274A15E28);
}

double sub_274802440(__n128 a1, uint64_t a2, char *a3, uint64_t a4)
{
  sub_2749FC984();
  sub_2749FACF4();

  return result;
}

uint64_t sub_2748024D0(uint64_t a1, char a2)
{
  type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C70, &unk_274A15F70);
  return sub_2749FC5D4();
}

double sub_274802564(char a1, uint64_t a2)
{
  MEMORY[0x277C5E6B0](0.5, 1.0, 0.0);
  sub_2749FACF4();

  return result;
}

uint64_t sub_2748025E8(uint64_t a1, char a2)
{
  type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  return sub_2749FC5D4();
}

uint64_t sub_27480266C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EA8, &qword_274A16280);
  MEMORY[0x28223BE20](v2);
  v4 = (&v48 - v3);
  v5 = sub_2749FB4C4();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FA1F4();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2749FAFC4();
  MEMORY[0x28223BE20](v54);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EB0, &qword_274A16288);
  MEMORY[0x28223BE20](v55);
  v59 = (&v48 - v13);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EB8, &qword_274A16290);
  MEMORY[0x28223BE20](v58);
  v61 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EC0, &unk_274A16298);
  v16 = MEMORY[0x28223BE20](v15);
  v60 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v48 - v18;
  v19 = type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  if (*(a1 + *(v19 + 20)) == 1)
  {
    v20 = v19;
    v51 = v2;
    v49 = SmartShortcutPickerSectionGridEntryView.highlightColor.getter();
    v21 = *(v20 + 24);
    memcpy(__dst, (a1 + v21), 0x5AuLL);
    v50 = v15;
    if ((__dst[11] & 0x100) != 0)
    {
      memcpy(v65, (a1 + v21), sizeof(v65));
      memcpy(v64, (a1 + v21), 0x5AuLL);
      sub_2747D2AC8(v64, &v63);
    }

    else
    {

      sub_2749FD2D4();
      v23 = sub_2749FBC14();
      sub_2749FA424();

      sub_2749FB4B4();
      swift_getAtKeyPath();
      sub_27472ECBC(__dst, &qword_280969BE0, &qword_274A15E58);
      (*(v52 + 8))(v7, v53);
    }

    memcpy(v64, v65, 0x59uLL);
    if (v64[88])
    {
      if (v64[88] == 1)
      {
        sub_2749FA114();
        sub_2747D2B24(v64);
      }

      else
      {
        sub_2749FA164();
      }
    }

    else
    {
      sub_2749FA114();
    }

    sub_2749FA1D4();
    v25 = v24;
    (*(v56 + 8))(v10, v57);
    SmartShortcutPickerSectionGridEntryView.isSelected.getter();
    if (v26)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = 0.0;
    }

    v28 = v25 - v27;
    v29 = *(v54 + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = sub_2749FB584();
    (*(*(v31 - 8) + 104))(v12 + v29, v30, v31);
    *v12 = v28;
    v12[1] = v28;
    v32 = v59;
    v33 = v59 + *(v55 + 36);
    sub_274807A54(v12, v33, MEMORY[0x277CDFC08]);
    *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C20, &qword_274A15F60) + 36)) = 256;
    *v32 = v49;
    SmartShortcutPickerSectionGridEntryView.isSelected.getter();
    LOBYTE(v33) = sub_2749FBC64();
    sub_2749FA9E4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v61;
    sub_2747D31F8(v32, v61, &qword_280969EB0, &qword_274A16288);
    v43 = v42 + *(v58 + 36);
    *v43 = v33;
    *(v43 + 8) = v35;
    *(v43 + 16) = v37;
    *(v43 + 24) = v39;
    *(v43 + 32) = v41;
    *(v43 + 40) = 0;
    sub_2749FABF4();
    sub_2749FC984();
    sub_2749FAC24();

    sub_2749FABF4();
    sub_2749FC984();
    sub_2749FAC24();

    v44 = sub_2749FABD4();

    v45 = v60;
    sub_2747D31F8(v42, v60, &qword_280969EB8, &qword_274A16290);
    *(v45 + *(v50 + 36)) = v44;
    v46 = v45;
    v47 = v62;
    sub_2747D31F8(v46, v62, &qword_280969EC0, &unk_274A16298);
    sub_27473ADB8(v47, v4, &qword_280969EC0, &unk_274A16298);
    swift_storeEnumTagMultiPayload();
    sub_274808CF8();
    sub_2749FB7B4();
    return sub_27472ECBC(v47, &qword_280969EC0, &unk_274A16298);
  }

  else
  {
    *v4 = sub_2749FC464();
    swift_storeEnumTagMultiPayload();
    sub_274808CF8();
    return sub_2749FB7B4();
  }
}

id sub_274802DC0(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [v3 layer];
  v5 = [a2 CGColor];
  [v4 setShadowColor_];

  v6 = OUTLINED_FUNCTION_40_6();
  LODWORD(v7) = 1.0;
  [v6 setShadowOpacity_];

  v8 = OUTLINED_FUNCTION_40_6();
  [v8 setShadowOffset_];

  v9 = OUTLINED_FUNCTION_40_6();
  [v9 setShadowRadius_];

  v10 = OUTLINED_FUNCTION_40_6();
  [v10 setShadowPathIsBounds_];

  return v3;
}

void sub_274802EEC(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 layer];
  v5 = [a3 CGColor];
  [v4 setShadowColor_];
}

uint64_t sub_274802FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274808F5C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27480303C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274808F5C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2748030A0(uint64_t a1)
{
  sub_274808F5C();
  sub_2749FB774();
  __break(1u);
}

void sub_2748030C8()
{
  OUTLINED_FUNCTION_48();
  v2 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46_0();
  v6 = *(type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0) + 32);
  memcpy(v12, (v0 + v6), 0x5AuLL);
  if (v12[89])
  {
    memcpy(v11, (v0 + v6), sizeof(v11));
    memcpy(v10, (v0 + v6), 0x5AuLL);
    sub_2747D2AC8(v10, &v9);
  }

  else
  {

    v7 = sub_2749FD2D4();
    v8 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4(v7, &dword_274719000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27472ECBC(v12, &qword_280969BE0, &qword_274A15E58);
    (*(v4 + 8))(v1, v2);
  }

  memcpy(v10, v11, 0x59uLL);
  if (v10[88])
  {
    if (v10[88] == 1)
    {
      sub_2749FA114();
      sub_2747D2B24(v10);
    }

    else
    {
      sub_2749FA164();
    }
  }

  else
  {
    sub_2749FA114();
  }

  OUTLINED_FUNCTION_46();
}

void sub_27480328C()
{
  OUTLINED_FUNCTION_48();
  sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  v2 = type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0);
  v3 = *(v2 + 24);
  memcpy(v24, (v0 + v3), 0xBAuLL);
  memcpy(v25, (v0 + v3), 0xBAuLL);
  if (sub_2747B973C(v25) == 1)
  {
    CGSizeMake();
    OUTLINED_FUNCTION_41_7(v16);
    CGSizeMake();
    memcpy(v23, v4, sizeof(v23));
    OUTLINED_FUNCTION_41_7(v18);
    CGSizeMake();
    sub_27473ADB8(v5, v22, &qword_280968A58, &qword_274A15E00);
  }

  else
  {
    CGSizeMake();
    OUTLINED_FUNCTION_41_7(v16);
    CGSizeMake();
    OUTLINED_FUNCTION_41_7(v18);
    CGSizeMake();

    v6 = sub_2749FD2D4();
    v7 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4(v6, &dword_274719000, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27472ECBC(v24, &qword_280968A90, &qword_274A13640);
    v8 = OUTLINED_FUNCTION_63();
    v9(v8);
  }

  memcpy(v19, v23, sizeof(v19));
  v10 = *(v2 + 40);
  memcpy(v20, (v0 + v10), 0xB9uLL);
  memcpy(v21, (v0 + v10), sizeof(v21));
  CGSizeMake();
  OUTLINED_FUNCTION_15_6(v18);
  memcpy(&v18[192], v21, 0xB9uLL);
  OUTLINED_FUNCTION_15_6(v22);
  OUTLINED_FUNCTION_26_6(v22);
  if (!v11)
  {
    OUTLINED_FUNCTION_15_6(v17);
    OUTLINED_FUNCTION_15_6(v15);
    memcpy(v16, &v18[192], 0xB9uLL);
    OUTLINED_FUNCTION_26_6(v16);
    if (!v11)
    {
      memcpy(v14, &v18[192], 0xB9uLL);
      sub_274772ADC(v20, v13);
      sub_27473ADB8(v17, v13, &qword_280968A58, &qword_274A15E00);
      static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
      memcpy(v12, v14, 0xB9uLL);
      sub_274772BE8(v12);
      memcpy(v13, v15, 0xB9uLL);
      sub_274772BE8(v13);
      OUTLINED_FUNCTION_15_6(v14);
      sub_27472ECBC(v14, &qword_280968A58, &qword_274A15E00);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_15_6(v14);
    sub_274772ADC(v20, v13);
    sub_27473ADB8(v17, v13, &qword_280968A58, &qword_274A15E00);
    sub_274772BE8(v14);
LABEL_12:
    memcpy(v16, v18, 0x179uLL);
    sub_27472ECBC(v16, &qword_280968A98, &qword_274A13648);
    goto LABEL_13;
  }

  memcpy(v16, &v18[192], 0xB9uLL);
  OUTLINED_FUNCTION_26_6(v16);
  if (!v11)
  {
    sub_274772ADC(v20, v17);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6(v17);
  sub_274772ADC(v20, v15);
  sub_27472ECBC(v17, &qword_280968A58, &qword_274A15E00);
LABEL_13:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_274803668@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v7 = sub_2749FA1F4();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CB8, &qword_274A16080) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_46_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CC0, &qword_274A16088) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = v75 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CC8, &qword_274A16090);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v21);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CD0, &qword_274A16098);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v23);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CD8, &qword_274A160A0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v25);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CE0, &qword_274A160A8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v27);
  *v2 = sub_2749FB644();
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CE8, &qword_274A160B0);
  sub_274804AC8(v1, v2 + *(v28 + 44));
  sub_2748030C8();
  sub_2749FA134();
  OUTLINED_FUNCTION_36();
  v29 = *(v9 + 8);
  v29(v13, v7);
  v30 = sub_2749FBC64();
  v31 = v2 + *(v14 + 44);
  *v31 = v30;
  *(v31 + 8) = v3;
  *(v31 + 16) = v4;
  *(v31 + 24) = v5;
  *(v31 + 32) = v6;
  *(v31 + 40) = 0;
  sub_2749FC924();
  sub_2749FB004();
  sub_2747D31F8(v2, v19, &qword_280969CB8, &qword_274A16080);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CF0, &qword_274A160B8);
  memcpy(&v19[*(v32 + 36)], __src, 0x70uLL);
  sub_2748030C8();
  sub_2749FA124();
  v75[1] = v29;
  v29(v13, v7);
  sub_2749FC914();
  sub_2749FABB4();
  v33 = &v19[*(v16 + 44)];
  v34 = v89;
  *v33 = v88;
  *(v33 + 1) = v34;
  *(v33 + 2) = v90;
  sub_27480328C();
  v35 = 0.0;
  if (v36)
  {
    sub_2748030C8();
    sub_2749FA1B4();
    v37 = OUTLINED_FUNCTION_35_5();
    v38(v37);
  }

  v39 = sub_2749FBC64();
  sub_2749FA9E4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v78;
  sub_2747D31F8(v19, v78, &qword_280969CC0, &qword_274A16088);
  v49 = v48 + *(v77 + 36);
  *v49 = v39;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  v50 = v80;
  v51 = v80 + *(v76 + 36);
  sub_274803DA0();
  v52 = sub_2749FC914();
  v54 = v53;
  v55 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CF8, &qword_274A160C0) + 36));
  *v55 = v52;
  v55[1] = v54;
  sub_2747D31F8(v48, v50, &qword_280969CC8, &qword_274A16090);
  sub_27480328C();
  if (v56)
  {
    sub_2748030C8();
    sub_2749FA1B4();
    v58 = v57;
    v59 = OUTLINED_FUNCTION_35_5();
    v60(v59);
    v35 = v58 * 0.5;
  }

  v61 = sub_2749FBC64();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  v62 = v50;
  v63 = v81;
  sub_2747D31F8(v62, v81, &qword_280969CD0, &qword_274A16098);
  v64 = v63 + *(v79 + 36);
  *v64 = v61;
  *(v64 + 8) = v35;
  *(v64 + 16) = v41;
  *(v64 + 24) = v43;
  *(v64 + 32) = v45;
  *(v64 + 40) = 0;
  sub_274803FCC();
  v65 = v85;
  v66 = v86;
  v67 = sub_2749FC914();
  v69 = v68;
  v70 = v82;
  sub_2747D31F8(v63, v82, &qword_280969CD8, &qword_274A160A0);
  v71 = (v70 + *(v83 + 36));
  *v71 = v65;
  v71[1] = v66;
  v71[2] = v67;
  v71[3] = v69;
  v72 = sub_2749FC8C4();
  v73 = MEMORY[0x28223BE20](v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_32_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969D00, &qword_274A160C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969D08, &qword_274A160D0);
  sub_274807F80();
  sub_2748083D8();
  sub_274808464();
  sub_2749FC334();
  return sub_27472ECBC(v70, &qword_280969CE0, &qword_274A160A8);
}

uint64_t sub_274803DA0()
{
  sub_2749FA1F4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  sub_27480328C();
  v1 = 0.0;
  if (v2)
  {
    sub_2748030C8();
    sub_2749FA1B4();
    v4 = v3;
    v5 = OUTLINED_FUNCTION_63();
    v6(v5);
    v1 = v4 * 0.5;
  }

  sub_2748030C8();
  sub_2749FA1D4();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  v11 = sub_2749FC8C4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_6();
  *(v12 - 8) = v8 - v1;
  MEMORY[0x28223BE20](v13);
  sub_2749F9FA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DC0, &qword_274A16120);
  sub_274807488(&qword_280969DC8, MEMORY[0x277D7D5A8]);
  sub_27480860C();
  return sub_2749FC8D4();
}

void sub_274803FCC()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0);
  OUTLINED_FUNCTION_43();
  v27 = v4;
  MEMORY[0x28223BE20](v5);
  v28 = v6;
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = *(v3 + 24);
  memcpy(v41, (v0 + v15), 0xBAuLL);
  memcpy(v42, (v0 + v15), 0xBAuLL);
  if (sub_2747B973C(v42) == 1)
  {
    CGSizeMake();
    OUTLINED_FUNCTION_39_5(v33);
    CGSizeMake();
    memcpy(v40, v16, sizeof(v40));
    OUTLINED_FUNCTION_39_5(v35);
    CGSizeMake();
    sub_27473ADB8(v17, v39, &qword_280968A58, &qword_274A15E00);
  }

  else
  {
    CGSizeMake();
    OUTLINED_FUNCTION_39_5(v33);
    CGSizeMake();
    v26 = v0;
    OUTLINED_FUNCTION_39_5(v35);
    CGSizeMake();

    v18 = sub_2749FD2D4();
    v19 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4(v18, &dword_274719000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2749FB4B4();
    v0 = v26;
    swift_getAtKeyPath();
    sub_27472ECBC(v41, &qword_280968A90, &qword_274A13640);
    (*(v10 + 8))(v14, v8);
  }

  memcpy(v36, v40, sizeof(v36));
  v20 = *(v3 + 40);
  memcpy(v37, (v0 + v20), 0xB9uLL);
  memcpy(v38, (v0 + v20), sizeof(v38));
  CGSizeMake();
  OUTLINED_FUNCTION_25_5(v35);
  memcpy(&v35[192], v38, 0xB9uLL);
  OUTLINED_FUNCTION_25_5(v39);
  OUTLINED_FUNCTION_26_6(v39);
  if (v21)
  {
    memcpy(v33, &v35[192], 0xB9uLL);
    OUTLINED_FUNCTION_26_6(v33);
    if (v21)
    {
      OUTLINED_FUNCTION_25_5(v34);
      sub_274772ADC(v37, v32);
      sub_27472ECBC(v34, &qword_280968A58, &qword_274A15E00);
LABEL_15:
      sub_2748075B4(v0, v7, type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView);
      v25 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v23 = swift_allocObject();
      sub_274807A54(v7, v23 + v25, type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView);
      v22 = sub_27480851C;
      goto LABEL_16;
    }

    sub_274772ADC(v37, v34);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_5(v34);
  OUTLINED_FUNCTION_25_5(v32);
  memcpy(v33, &v35[192], 0xB9uLL);
  OUTLINED_FUNCTION_26_6(v33);
  if (v21)
  {
    OUTLINED_FUNCTION_25_5(v31);
    sub_274772ADC(v37, v30);
    sub_27473ADB8(v34, v30, &qword_280968A58, &qword_274A15E00);
    sub_274772BE8(v31);
LABEL_12:
    memcpy(v33, v35, 0x179uLL);
    sub_27472ECBC(v33, &qword_280968A98, &qword_274A13648);
    goto LABEL_13;
  }

  memcpy(v31, &v35[192], 0xB9uLL);
  sub_274772ADC(v37, v30);
  sub_27473ADB8(v34, v30, &qword_280968A58, &qword_274A15E00);
  v24 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
  memcpy(v29, v31, 0xB9uLL);
  sub_274772BE8(v29);
  memcpy(v30, v32, 0xB9uLL);
  sub_274772BE8(v30);
  OUTLINED_FUNCTION_25_5(v31);
  sub_27472ECBC(v31, &qword_280968A58, &qword_274A15E00);
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_13:
  v22 = 0;
  v23 = 0;
LABEL_16:
  *v2 = v22;
  v2[1] = v23;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748044AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v25 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969D90, &qword_274A160F0);
  MEMORY[0x28223BE20](v23);
  v5 = &v21 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969D08, &qword_274A160D0);
  MEMORY[0x28223BE20](v24);
  v7 = &v21 - v6;
  v8 = sub_2749FB4C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0) + 32);
  memcpy(__dst, (a2 + v12), 0x5AuLL);
  if ((__dst[11] & 0x100) != 0)
  {
    memcpy(v28, (a2 + v12), sizeof(v28));
    memcpy(v27, (a2 + v12), 0x5AuLL);
    sub_2747D2AC8(v27, v26);
  }

  else
  {

    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27472ECBC(__dst, &qword_280969BE0, &qword_274A15E58);
    (*(v9 + 8))(v11, v8);
  }

  memcpy(v27, v28, 0x59uLL);
  v14 = v27[88];
  sub_2747D2B24(v27);
  if (v14 == 1)
  {
    sub_27473ADB8(v22, v5, &qword_280969CE0, &qword_274A160A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CE0, &qword_274A160A8);
    sub_274807F80();
    sub_274808464();
    return sub_2749FB7B4();
  }

  else
  {
    sub_27480488C(v26);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v16 = sub_2749FA224();
    __swift_destroy_boxed_opaque_existential_0(v26);
    v17 = sub_2749FC914();
    v19 = v18;
    sub_27473ADB8(v22, v7, &qword_280969CE0, &qword_274A160A8);
    v20 = &v7[*(v24 + 36)];
    *v20 = v16;
    v20[1] = v17;
    v20[2] = v19;
    sub_27473ADB8(v7, v5, &qword_280969D08, &qword_274A160D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969CE0, &qword_274A160A8);
    sub_274807F80();
    sub_274808464();
    sub_2749FB7B4();
    return sub_27472ECBC(v7, &qword_280969D08, &qword_274A160D0);
  }
}

uint64_t sub_27480488C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2749FA0F4();
  v3 = OUTLINED_FUNCTION_34(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_50_1();
  sub_2749FAA94();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  sub_27473B1B4();
  v5 = OUTLINED_FUNCTION_63();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x277CDF3D0])
  {
    sub_274806C70();
    v8 = sub_2749FA2B4();
    v9 = MEMORY[0x277D7D668];
    a1[3] = v8;
    a1[4] = v9;
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_2749FA284();
  }

  else if (v7 == *MEMORY[0x277CDF3C0])
  {
    sub_274806C70();
    v11 = sub_2749FA294();
    v12 = MEMORY[0x277D7D660];
    a1[3] = v11;
    a1[4] = v12;
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_2749FA284();
  }

  else
  {
    result = sub_2749FDCB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_274804A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27480488C(v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = sub_2749FA224();
  __swift_destroy_boxed_opaque_existential_0(v10);
  v5 = sub_2749FC914();
  v7 = v6;
  sub_27473ADB8(a1, a2, &qword_280969CE0, &qword_274A160A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969D08, &qword_274A160D0);
  v9 = (a2 + *(result + 36));
  *v9 = v4;
  v9[1] = v5;
  v9[2] = v7;
  return result;
}

uint64_t sub_274804AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E10, &qword_274A16148);
  v3 = MEMORY[0x28223BE20](v113);
  v117 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v111 = &v103 - v6;
  MEMORY[0x28223BE20](v5);
  v120 = &v103 - v7;
  v8 = sub_2749FA1F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v103 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E18, &qword_274A16150);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v116 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v103 - v19;
  v115 = sub_2749FC464();
  sub_2748030C8();
  sub_2749FA144();
  v22 = v21;
  v23 = *(v9 + 8);
  v119 = v8;
  v23(v14, v8);
  v112 = v22;
  v114 = v12;
  sub_2748030C8();
  sub_2749FA144();
  v23(v12, v8);
  v24 = v9 + 8;
  sub_2749FC914();
  sub_2749FABB4();
  *&v128[3] = *&v128[27];
  *&v128[11] = *&v128[35];
  *&v128[19] = *&v128[43];
  v25 = &v20[*(v16 + 44)];
  sub_274805E94(a1, v25);
  v26 = sub_2749FC914();
  v28 = v27;
  v29 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E20, &unk_274A16158) + 36));
  *v29 = v26;
  v29[1] = v28;
  *(v20 + 7) = *&v128[23];
  v30 = *&v128[8];
  *(v20 + 42) = *&v128[16];
  v31 = *v128;
  *(v20 + 26) = v30;
  *v20 = v115;
  *(v20 + 4) = 256;
  v115 = v20;
  *(v20 + 10) = v31;
  v32 = a1;
  sub_2748030C8();
  sub_2749FA1A4();
  v34 = v33;
  v35 = v119;
  v23(v14, v119);
  v36 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v37 = objc_opt_self();
  sub_2748030C8();
  sub_2749FA174();
  v39 = v38;
  v112 = v14;
  v23(v14, v35);
  v40 = v114;
  sub_2748030C8();
  sub_2749FA194();
  v42 = v41;
  v114 = v24;
  v110 = v23;
  v23(v40, v35);
  v43 = [v37 systemFontOfSize:v39 weight:v42];
  v44 = [v36 scaledFontForFont_];

  v45 = *(type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0) + 40);
  memcpy(v129, (v32 + v45), 0xB9uLL);
  memcpy(v130, (v32 + v45), 0xB9uLL);
  switch(sub_274772AD0(v130))
  {
    case 1u:
      sub_274721C98(v130);
      sub_2749FCE14("Create New Shortcut", 19);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v62 = qword_28159E448;
      v63 = sub_2749FCD64();
      v64 = sub_2749FCD64();

      v65 = [v62 localizedStringForKey:v63 value:v64 table:0];

      v47 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v48 = v66;

      break;
    case 2u:
      v49 = *sub_274721C98(v130);
      memcpy(v125, v129, 0xB9uLL);
      v50 = *sub_274721C98(v125);
      v51 = [v49 name];
      v47 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v48 = v52;

      sub_274772BE8(v129);
      break;
    case 3u:
      v53 = sub_274721C98(v130);
      v54 = *v53;
      v55 = *(v53 + 8);
      v56 = *(v53 + 16);
      v57 = *(v53 + 24);
      v58 = *(v53 + 32);
      v59 = *(v53 + 40);
      LODWORD(v109) = *(v53 + 48);
      memcpy(v125, v129, 0xB9uLL);
      v60 = sub_274721C98(v125);
      sub_27473ADB8(v60, v124, &unk_280970630, &qword_274A13560);
      sub_27477CABC(v54, v55, v56, v57, v58, v59, v109);
      memcpy(v124, (v53 + 56), 0x81uLL);
      v47 = SmartShortcutPickerActionConfiguration.displayString.getter();
      v48 = v61;
      sub_274772B94(v53 + 56);
      break;
    default:
      v46 = sub_274721C98(v130);
      v47 = *(v46 + 16);
      v48 = *(v46 + 24);
      memcpy(v125, v129, 0xB9uLL);
      sub_274721C98(v125);

      break;
  }

  v125[0] = v47;
  v125[1] = v48;
  sub_27475D0D0();
  v67 = sub_2749FBEE4();
  v107 = v68;
  v108 = v67;
  v70 = v69;
  v106 = v71;
  KeyPath = swift_getKeyPath();
  v104 = swift_getKeyPath();
  v72 = v70 & 1;
  v127 = v70 & 1;
  v126 = 0;
  v73 = sub_2749FBC94();
  sub_2749FA9E4();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v124[0] = 0;
  v82 = v44;
  v109 = v82;
  v83 = sub_2749FBE24();
  v84 = swift_getKeyPath();
  [v82 descender];
  v86 = v85 / -3.0;
  sub_27480488C(v125);
  __swift_project_boxed_opaque_existential_1(v125, v125[3]);
  v87 = v111;
  sub_2749FA274();
  v88 = v107;
  *v87 = v108;
  *(v87 + 8) = v88;
  *(v87 + 16) = v72;
  v89 = KeyPath;
  *(v87 + 24) = v106;
  *(v87 + 32) = v89;
  *(v87 + 40) = 1;
  *(v87 + 48) = 0;
  *(v87 + 56) = v104;
  *(v87 + 64) = 0;
  *(v87 + 72) = v73;
  *(v87 + 80) = v75;
  *(v87 + 88) = v77;
  *(v87 + 96) = v79;
  *(v87 + 104) = v81;
  *(v87 + 112) = 0;
  *(v87 + 120) = v84;
  *(v87 + 128) = v83;
  *(v87 + 136) = 0;
  *(v87 + 144) = v86;
  __swift_destroy_boxed_opaque_existential_0(v125);
  v90 = v120;
  sub_2747D31F8(v87, v120, &qword_280969E10, &qword_274A16148);
  v91 = v112;
  sub_2748030C8();
  sub_2749FA1C4();
  v110(v91, v119);
  sub_2749FC914();
  sub_2749FABB4();
  v119 = v125[0];
  v113 = v125[4];
  v114 = v125[2];
  v112 = v125[5];
  v123 = 1;
  v122 = v125[1];
  v121 = v125[3];
  v93 = v115;
  v92 = v116;
  sub_27473ADB8(v115, v116, &qword_280969E18, &qword_274A16150);
  v94 = v117;
  sub_27473ADB8(v90, v117, &qword_280969E10, &qword_274A16148);
  LOBYTE(v90) = v123;
  LODWORD(v110) = v122;
  LODWORD(v111) = v121;
  v95 = v118;
  sub_27473ADB8(v92, v118, &qword_280969E18, &qword_274A16150);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E28, &qword_274A161F8);
  v97 = v95 + v96[12];
  *v97 = v34;
  *(v97 + 8) = 0;
  sub_27473ADB8(v94, v95 + v96[16], &qword_280969E10, &qword_274A16148);
  v98 = v96[20];

  v99 = v95 + v98;
  *v99 = 0;
  *(v99 + 8) = v90;
  v100 = v120;
  *(v99 + 16) = v119;
  *(v99 + 24) = v110;
  *(v99 + 32) = v114;
  *(v99 + 40) = v111;
  v101 = v112;
  *(v99 + 48) = v113;
  *(v99 + 56) = v101;
  sub_27472ECBC(v100, &qword_280969E10, &qword_274A16148);
  sub_27472ECBC(v93, &qword_280969E18, &qword_274A16150);
  sub_27472ECBC(v94, &qword_280969E10, &qword_274A16148);
  return sub_27472ECBC(v92, &qword_280969E18, &qword_274A16150);
}

void sub_2748054D8(double a1)
{
  sub_27480488C(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v1 = sub_2749FA264();
  v2 = [v1 baseColor];

  v3 = [v2 platformColor];
  __swift_destroy_boxed_opaque_existential_0(v5);
  v4 = v3;
  sub_2749FC3E4();
  sub_2749F9F94();
}

uint64_t sub_2748055A8@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v4 = *(sub_2749FAFC4() + 20);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_2749FB584();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  *a1 = a2;
  a1[1] = a2;
  sub_27480488C(v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_2749FA264();
  v7 = sub_2749FC834();
  __swift_destroy_boxed_opaque_existential_0(v16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DF0, &qword_274A16130);
  *(a1 + *(v8 + 52)) = v7;
  *(a1 + *(v8 + 56)) = 256;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DE0, &qword_274A16128) + 36);
  sub_274805754(v9);
  v10 = sub_2749FC914();
  v12 = v11;
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E00, &qword_274A16138) + 36)];
  *v13 = v10;
  v13[1] = v12;
  sub_27480488C(v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_2749FA254();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DC0, &qword_274A16120) + 36)) = v14;
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_274805754@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_2749FA1F4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_2749FAFC4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DF0, &qword_274A16130);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v38 = &v38 - v16;
  sub_27480488C(v41);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v17 = sub_2749FA244();
  __swift_destroy_boxed_opaque_existential_0(v41);
  if (v17)
  {
    sub_2748030C8();
    sub_2749FA1D4();
    v19 = v18;
    (*(v4 + 8))(v8, v2);
    sub_27480328C();
    v21 = 0.0;
    if (v20)
    {
      v21 = 1.0;
    }

    v22 = v19 - v21;
    v23 = *(v9 + 20);
    v24 = *MEMORY[0x277CE0118];
    sub_2749FB584();
    OUTLINED_FUNCTION_9();
    (*(v25 + 104))(v1 + v23, v24);
    *v1 = v22;
    v1[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E08, &qword_274A16140);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_274A0F620;
    sub_2749FC474();
    v27 = sub_2749FC484();

    *(v26 + 32) = v27;
    sub_2749FC474();
    v28 = sub_2749FC484();

    *(v26 + 40) = v28;
    v29 = MEMORY[0x277C5E5C0](v26);
    sub_274807A54(v1, v14, MEMORY[0x277CDFC08]);
    v30 = v38;
    v31 = v39;
    *(v14 + *(v39 + 52)) = v29;
    *(v14 + *(v31 + 56)) = 256;
    sub_2747D31F8(v14, v30, &qword_280969DF0, &qword_274A16130);
    v32 = v30;
    v33 = v40;
    sub_2747D31F8(v32, v40, &qword_280969DF0, &qword_274A16130);
    v34 = 0;
    v35 = v33;
    v36 = v31;
  }

  else
  {
    v34 = 1;
    v36 = v39;
    v35 = v40;
  }

  return __swift_storeEnumTagSinglePayload(v35, v34, 1, v36);
}

uint64_t sub_274805A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_2749FAFC4();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2749FA1F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2748030C8();
  sub_2749FA1B4();
  v12 = v11;
  v13 = *(v8 + 8);
  v13(v10, v7);
  sub_2748030C8();
  sub_2749FA1D4();
  v15 = v14;
  v13(v10, v7);
  v16 = v12 + v15;
  v17 = *(v4 + 28);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_2749FB584();
  (*(*(v19 - 8) + 104))(v6 + v17, v18, v19);
  *v6 = v16;
  v6[1] = v16;
  sub_27480488C(&v41);
  __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  v20 = sub_2749FA264();
  v21 = [v20 baseColor];

  v22 = [v21 colorWithAlphaComponent_];
  __swift_destroy_boxed_opaque_existential_0(&v41);
  v23 = [v22 gradient];

  v24 = sub_2749FC834();
  sub_2748030C8();
  sub_2749FA1B4();
  v13(v10, v7);
  sub_2749FAB34();
  sub_2748075B4(v6, a2, MEMORY[0x277CDFC08]);
  v25 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969D98, &qword_274A160F8) + 36);
  v26 = v39;
  *v25 = v38;
  *(v25 + 16) = v26;
  *(v25 + 32) = v40;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DA0, &qword_274A16100);
  *(a2 + *(v27 + 52)) = v24;
  *(a2 + *(v27 + 56)) = 256;
  v28 = sub_2749FC914();
  v30 = v29;
  sub_274808598(v6);
  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DA8, &qword_274A16108) + 36));
  *v31 = v28;
  v31[1] = v30;
  sub_2749FAC54();
  sub_2749FAC54();
  sub_2749FC914();
  sub_2749FABB4();
  v32 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DB0, &qword_274A16110) + 36));
  v33 = v42;
  *v32 = v41;
  v32[1] = v33;
  v32[2] = v43;
  v34 = -v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969DB8, &qword_274A16118);
  v36 = (a2 + *(result + 36));
  *v36 = v34;
  v36[1] = v34;
  return result;
}

uint64_t sub_274805E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E30, &qword_274A16200);
  MEMORY[0x28223BE20](v86);
  v78 = &v69 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E38, &qword_274A16208);
  v80 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v79 = &v69 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E40, &unk_274A16210);
  MEMORY[0x28223BE20](v84);
  v85 = &v69 - v5;
  v76 = sub_2749FA2F4();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = (&v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2749FA1F4();
  v81 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2749FA2C4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2749FA304();
  v77 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E48, &unk_274A20290);
  v15 = MEMORY[0x28223BE20](v83);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - v18;
  v20 = a1;
  v21 = a1 + *(type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0) + 40);
  v22 = *(v21 + *(type metadata accessor for SmartShortcutPickerEntry(0) + 24));
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v82 = v22;
  if (v23)
  {
    v24 = [v23 symbolName];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    sub_2748030C8();
    sub_2749FA184();
    (*(v81 + 8))(v9, v7);
    sub_2749FBD44();
    v25 = v78;
    sub_2749FA044();
    v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E68, &unk_274A16230) + 36));
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A30, &qword_274A15AA0) + 28);
    v28 = *MEMORY[0x277CE1048];
    v29 = sub_2749FC554();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    sub_27480488C(&v89);
    __swift_project_boxed_opaque_existential_1(&v89, v92);
    v30 = v86;
    sub_2749FA274();
    __swift_destroy_boxed_opaque_existential_0(&v89);
    v31 = sub_2749FC8C4();
    MEMORY[0x28223BE20](v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E50, &qword_274A16228);
    v33 = sub_274808938();
    v34 = sub_274808ADC();
    v35 = MEMORY[0x277CE1350];
    v36 = v79;
    v37 = MEMORY[0x277CE1340];
    sub_2749FC344();
    sub_27472ECBC(v25, &qword_280969E30, &qword_274A16200);
    v38 = v80;
    v39 = v87;
    (*(v80 + 16))(v85, v36, v87);
    swift_storeEnumTagMultiPayload();
    v89 = v30;
    v90 = v35;
    v91 = v32;
    v92 = v33;
    v93 = v37;
    v94 = v34;
    swift_getOpaqueTypeConformance2();
    sub_274808BF4();
    sub_2749FB7B4();

    return (*(v38 + 8))(v36, v39);
  }

  else
  {
    v71 = v17;
    v78 = v12;
    v79 = v19;
    sub_2748030C8();
    sub_2749FA154();
    v42 = v41;
    v43 = *(v81 + 8);
    v80 = v7;
    v70 = v43;
    v43(v9, v7);
    *v11 = v42;
    (*(v72 + 104))(v11, *MEMORY[0x277D7D688], v73);
    v81 = v20;
    sub_27480488C(&v89);
    __swift_project_boxed_opaque_existential_1(&v89, v92);
    v44 = sub_2749FA234();
    v45 = v74;
    *v74 = v44;
    *(v45 + 8) = 0;
    (*(v75 + 104))(v45, *MEMORY[0x277D7D6C0], v76);
    v76 = v14;
    sub_2749FA314();
    __swift_destroy_boxed_opaque_existential_0(&v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDC0, &qword_274A16220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A0F620;
    v47 = sub_2749FBC94();
    *(inited + 32) = v47;
    v48 = sub_2749FBC74();
    *(inited + 33) = v48;
    v49 = sub_2749FBCA4();
    sub_2749FBCA4();
    if (sub_2749FBCA4() != v47)
    {
      v49 = sub_2749FBCA4();
    }

    sub_2749FBCA4();
    v50 = sub_2749FBCA4();
    v51 = v85;
    v52 = v86;
    v53 = v79;
    if (v50 != v48)
    {
      v49 = sub_2749FBCA4();
    }

    v54 = v80;
    sub_2748030C8();
    sub_2749FA1E4();
    v70(v9, v54);
    sub_2749FA9E4();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v71;
    (*(v77 + 32))(v71, v76, v78);
    v64 = v63 + *(v83 + 36);
    *v64 = v49;
    *(v64 + 8) = v56;
    *(v64 + 16) = v58;
    *(v64 + 24) = v60;
    *(v64 + 32) = v62;
    *(v64 + 40) = 0;
    sub_2747D31F8(v63, v53, &qword_280969E48, &unk_274A20290);
    sub_27473ADB8(v53, v51, &qword_280969E48, &unk_274A20290);
    swift_storeEnumTagMultiPayload();
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969E50, &qword_274A16228);
    v66 = v53;
    v67 = sub_274808938();
    v68 = sub_274808ADC();
    v89 = v52;
    v90 = MEMORY[0x277CE1350];
    v91 = v65;
    v92 = v67;
    v93 = MEMORY[0x277CE1340];
    v94 = v68;
    swift_getOpaqueTypeConformance2();
    sub_274808BF4();
    sub_2749FB7B4();
    return sub_27472ECBC(v66, &qword_280969E48, &unk_274A20290);
  }
}

uint64_t sub_274806944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E90, &qword_274A16240);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EA0, &qword_274A16278);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_2749FA0F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274806C70();
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D7D608])
  {
    (*(v9 + 96))(v11, v8);
    sub_27473ADB8(a1, v7, &qword_280969E30, &qword_274A16200);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E30, &qword_274A16200);
    sub_274808938();
    sub_274808B68();
    sub_2749FB7B4();
    v12 = sub_2749FA0E4();
    return (*(*(v12 - 8) + 8))(v11, v12);
  }

  else
  {
    sub_27473ADB8(a1, v4, &qword_280969E30, &qword_274A16200);
    *&v4[*(v2 + 36)] = 0x3FEB333333333333;
    sub_27473ADB8(v4, v7, &qword_280969E90, &qword_274A16240);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E30, &qword_274A16200);
    sub_274808938();
    sub_274808B68();
    sub_2749FB7B4();
    sub_27472ECBC(v4, &qword_280969E90, &qword_274A16240);
    return (*(v9 + 8))(v11, v8);
  }
}

void sub_274806C70()
{
  OUTLINED_FUNCTION_48();
  v19 = v2;
  sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88, &qword_274A15F20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30, &unk_274A133E0);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_50_1();
  v10 = type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(v9);
  sub_27473ADB8(v0 + *(v10 + 28), v6, &qword_280968A88, &qword_274A15F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2747D31F8(v6, v1, &qword_280968A30, &unk_274A133E0);
  }

  else
  {
    v11 = sub_2749FD2D4();
    v12 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4(v11, &dword_274719000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2749FB4B4();
    swift_getAtKeyPath();

    v13 = OUTLINED_FUNCTION_63();
    v14(v13);
  }

  v15 = sub_2749FA0F4();
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) == 1)
  {
    v16 = v0 + *(v10 + 40);
    v17 = type metadata accessor for SmartShortcutPickerEntry(0);
    (*(*(v15 - 8) + 16))(v19, v16 + *(v17 + 20), v15);
    if (__swift_getEnumTagSinglePayload(v1, 1, v15) != 1)
    {
      sub_27472ECBC(v1, &qword_280968A30, &unk_274A133E0);
    }
  }

  else
  {
    (*(*(v15 - 8) + 32))(v19, v1, v15);
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_274806F80()
{
  result = qword_280969BF0;
  if (!qword_280969BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969BC8, &qword_274A15E40);
    sub_27480700C();
    sub_2748071AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969BF0);
  }

  return result;
}

unint64_t sub_27480700C()
{
  result = qword_280969BF8;
  if (!qword_280969BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969BD8, &qword_274A15E50);
    sub_2748070C4();
    sub_27472ABB4(&qword_28159E720, &qword_280969C20, &qword_274A15F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969BF8);
  }

  return result;
}

unint64_t sub_2748070C4()
{
  result = qword_280969C00;
  if (!qword_280969C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969BD0, &qword_274A15E48);
    sub_274807488(&qword_280969C08, type metadata accessor for AutomationEntryView);
    sub_27472ABB4(&qword_280969C10, &qword_280969C18, &qword_274A15F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969C00);
  }

  return result;
}

unint64_t sub_2748071AC()
{
  result = qword_280969C28;
  if (!qword_280969C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969BB0, &qword_274A15E28);
    sub_274807264();
    sub_27472ABB4(&qword_280969C50, &qword_280969C58, &qword_274A15F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969C28);
  }

  return result;
}

unint64_t sub_274807264()
{
  result = qword_280969C30;
  if (!qword_280969C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969BA8, &qword_274A15E20);
    sub_2748072F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969C30);
  }

  return result;
}

unint64_t sub_2748072F0()
{
  result = qword_280969C38;
  if (!qword_280969C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969BA0, &qword_274A15E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969B98, &qword_274A15E10);
    sub_2748073CC();
    swift_getOpaqueTypeConformance2();
    sub_27473F718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969C38);
  }

  return result;
}

unint64_t sub_2748073CC()
{
  result = qword_280969C40;
  if (!qword_280969C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969B98, &qword_274A15E10);
    sub_274807488(&qword_280969C48, type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969C40);
  }

  return result;
}

uint64_t sub_274807488(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2748074CC()
{
  result = qword_280969C60;
  if (!qword_280969C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969B90, &qword_274A15E08);
    sub_274807488(&qword_280969C48, type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView);
    sub_27472ABB4(&qword_280969C68, &qword_280969BE8, &qword_274A15F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969C60);
  }

  return result;
}

uint64_t sub_2748075B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

double sub_274807610(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  if (a13)
  {
    sub_2747D2480(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  else
  {
  }

  return result;
}

double sub_274807638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, char a25)
{
  if (a25)
  {

    sub_2748076CC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
  }

  return result;
}

void sub_2748076CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24)
{
  if (a7 >> 1 != 0xFFFFFFFF || a24 >= 4u)
  {

    sub_2747D2BDC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

double sub_274807760(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  OUTLINED_FUNCTION_34(v5);
  v8 = v2 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_274802440(v6, a1, a2, v8);
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  OUTLINED_FUNCTION_23();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v66 = *(v3 + 184);
  v64 = *(v3 + 176);
  OUTLINED_FUNCTION_5_19();
  sub_2747D2BDC(v4, v5, v6, v7, v8, v9, v10, v11, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  v12 = type metadata accessor for SmartShortcutPickerEntry(0);
  v13 = *(v12 + 20);
  sub_2749FA0F4();
  OUTLINED_FUNCTION_9();
  (*(v14 + 8))(v3 + v13);

  v15 = OUTLINED_FUNCTION_4_17(v3 + v0[6]);
  OUTLINED_FUNCTION_11_14(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v25 + 8))(v3 + v24);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_17(v3 + v0[10]);
  v68 = *(v26 + 185);
  v67 = *(v26 + 184);
  v65 = *(v26 + 176);
  OUTLINED_FUNCTION_5_19();
  sub_274807638(v27, v28, v29, v30, v31, v32, v33, v34, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68);

  return MEMORY[0x2821FE8E8](v1);
}

double sub_2748079E8(char a1)
{
  v3 = type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  OUTLINED_FUNCTION_34(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_274802564(a1, v5);
}

uint64_t sub_274807A54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

void sub_274807AFC(uint64_t a1)
{
  type metadata accessor for SmartShortcutPickerEntry(319);
  if (v1 <= 0x3F)
  {
    sub_274807C88(319, &qword_280969C88, &type metadata for SmartShortcutPickerViewStyle, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_27472C5D8(319, &qword_280968A60, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        sub_274807C88(319, &qword_280969C90, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_274807C88(319, &qword_28096D840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_274807F04(319, &qword_280968A50, &qword_280968A58, &qword_274A15E00);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_274807C88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_274807CD8()
{
  result = qword_280969C98;
  if (!qword_280969C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CA0, &qword_274A16008);
    sub_274806F80();
    sub_2748074CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969C98);
  }

  return result;
}

void sub_274807D8C(uint64_t a1)
{
  sub_27472C5D8(319, &qword_280968A60, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_27472C5D8(319, &qword_28096CB80, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_274807F04(319, &qword_280968A50, &qword_280968A58, &qword_274A15E00);
      if (v3 <= 0x3F)
      {
        sub_274807F04(319, &qword_280968A68, &qword_280968A30, &unk_274A133E0);
        if (v4 <= 0x3F)
        {
          sub_274807C88(319, &qword_280969C88, &type metadata for SmartShortcutPickerViewStyle, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SmartShortcutPickerEntry(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_274807F04(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_3();
    v5 = sub_2749FAAB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_274807F80()
{
  result = qword_280969D10;
  if (!qword_280969D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CE0, &qword_274A160A8);
    sub_274808038();
    sub_27472ABB4(&qword_280969D60, &qword_280969D68, &qword_274A160E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D10);
  }

  return result;
}

unint64_t sub_274808038()
{
  result = qword_280969D18;
  if (!qword_280969D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CD8, &qword_274A160A0);
    sub_2748080C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D18);
  }

  return result;
}

unint64_t sub_2748080C4()
{
  result = qword_280969D20;
  if (!qword_280969D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CD0, &qword_274A16098);
    sub_27480817C();
    sub_27472ABB4(&qword_280969D58, &qword_280969CF8, &qword_274A160C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D20);
  }

  return result;
}

unint64_t sub_27480817C()
{
  result = qword_280969D28;
  if (!qword_280969D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CC8, &qword_274A16090);
    sub_274808208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D28);
  }

  return result;
}

unint64_t sub_274808208()
{
  result = qword_280969D30;
  if (!qword_280969D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CC0, &qword_274A16088);
    sub_274808294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D30);
  }

  return result;
}

unint64_t sub_274808294()
{
  result = qword_280969D38;
  if (!qword_280969D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CF0, &qword_274A160B8);
    sub_274808320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D38);
  }

  return result;
}

unint64_t sub_274808320()
{
  result = qword_280969D40;
  if (!qword_280969D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CB8, &qword_274A16080);
    sub_27472ABB4(&qword_280969D48, &qword_280969D50, &qword_274A160D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D40);
  }

  return result;
}

unint64_t sub_2748083D8()
{
  result = qword_280969D70;
  if (!qword_280969D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969D00, &qword_274A160C8);
    sub_274807F80();
    sub_274808464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D70);
  }

  return result;
}

unint64_t sub_274808464()
{
  result = qword_280969D78;
  if (!qword_280969D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969D08, &qword_274A160D0);
    sub_274807F80();
    sub_27472ABB4(&qword_280969D80, &qword_280969D88, &qword_274A160E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969D78);
  }

  return result;
}

uint64_t sub_27480851C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0);
  OUTLINED_FUNCTION_34(v4);

  return sub_274805A94(a1, a2);
}

uint64_t sub_274808598(uint64_t a1)
{
  v2 = sub_2749FAFC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27480860C()
{
  result = qword_280969DD0;
  if (!qword_280969DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969DC0, &qword_274A16120);
    sub_274808698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969DD0);
  }

  return result;
}

unint64_t sub_274808698()
{
  result = qword_280969DD8;
  if (!qword_280969DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969DE0, &qword_274A16128);
    sub_27472ABB4(&qword_280969DE8, &qword_280969DF0, &qword_274A16130);
    sub_27472ABB4(&qword_280969DF8, &qword_280969E00, &qword_274A16138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969DD8);
  }

  return result;
}

uint64_t sub_27480877C()
{
  OUTLINED_FUNCTION_14_7();
  result = sub_2749FB2E4();
  *v0 = result;
  return result;
}

uint64_t sub_2748087CC()
{
  OUTLINED_FUNCTION_14_7();
  result = sub_2749FB494();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_27480887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_46_0();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

unint64_t sub_274808938()
{
  result = qword_280969E58;
  if (!qword_280969E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969E30, &qword_274A16200);
    sub_2748089F4();
    sub_274807488(&qword_280969E78, MEMORY[0x277D7D658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969E58);
  }

  return result;
}

unint64_t sub_2748089F4()
{
  result = qword_280969E60;
  if (!qword_280969E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969E68, &unk_274A16230);
    sub_274807488(&qword_280969E70, MEMORY[0x277D7D5D8]);
    sub_27472ABB4(&qword_280969AA0, &qword_280969A30, &qword_274A15AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969E60);
  }

  return result;
}

unint64_t sub_274808ADC()
{
  result = qword_280969E80;
  if (!qword_280969E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969E50, &qword_274A16228);
    sub_274808938();
    sub_274808B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969E80);
  }

  return result;
}

unint64_t sub_274808B68()
{
  result = qword_280969E88;
  if (!qword_280969E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969E90, &qword_274A16240);
    sub_274808938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969E88);
  }

  return result;
}

unint64_t sub_274808BF4()
{
  result = qword_280969E98;
  if (!qword_280969E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969E48, &unk_274A20290);
    sub_274807488(&qword_28159E800, MEMORY[0x277D7D6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969E98);
  }

  return result;
}

unint64_t sub_274808CF8()
{
  result = qword_280969EC8;
  if (!qword_280969EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969EC0, &unk_274A16298);
    sub_274808DB0();
    sub_27472ABB4(&qword_28159E5E0, &qword_280966D78, &qword_274A0CBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969EC8);
  }

  return result;
}

unint64_t sub_274808DB0()
{
  result = qword_280969ED0;
  if (!qword_280969ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969EB8, &qword_274A16290);
    sub_274808E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969ED0);
  }

  return result;
}

unint64_t sub_274808E3C()
{
  result = qword_280969ED8;
  if (!qword_280969ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969EB0, &qword_274A16288);
    sub_27472ABB4(&qword_28159E720, &qword_280969C20, &qword_274A15F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969ED8);
  }

  return result;
}

unint64_t sub_274808F08()
{
  result = qword_280969EE0;
  if (!qword_280969EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969EE0);
  }

  return result;
}

unint64_t sub_274808F5C()
{
  result = qword_280969EE8;
  if (!qword_280969EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969EE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1)
{
  v5 = *(v1 + 224);

  return sub_27473ADB8(a1, v5, v2, v3);
}

void *OUTLINED_FUNCTION_39_5(void *a1)
{

  return memcpy(a1, (v1 + 2712), 0xBAuLL);
}

void sub_274808FE8(uint64_t a1)
{
  v1 = *(a1 + 104) + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_27471F8A4(v2, v3);
  }
}

double sub_274809064()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748090D8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

double *sub_274809150(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  swift_beginAccess();
  sub_2749FA8C4();
  swift_endAccess();
  v10 = (v7 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9AddButton5Model_action);
  *v10 = a1;
  v10[1] = a2;
  return v7;
}

uint64_t sub_2748091E8()
{
  v1 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9AddButton5Model__pointSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F40, &unk_274A17790);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t _s14descr28838E601O9AddButtonV5ModelCMa(uint64_t a1)
{
  result = qword_2815A0010;
  if (!qword_2815A0010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748092F0(uint64_t a1)
{
  sub_274809398();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274809398()
{
  if (!qword_28159E778)
  {
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E778);
    }
  }
}

uint64_t sub_2748093E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_274809428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274809484@<X0>(uint64_t *a2@<X8>)
{
  _s14descr28838E601O9AddButtonV5ModelCMa(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_2748094C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v27 = a3;
  *&v26 = a1;
  v28 = a5;
  v8 = sub_2749FAF64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EF0, &qword_274A164A0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v29 = v26;
  v30 = a2;
  v31 = v6;
  v32 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EF8, &qword_274A164A8);
  sub_274809B10();
  sub_2749FC624();
  v16 = *(a2 + 16);
  v25 = *(a2 + 32);
  v26 = v16;
  v17 = sub_2749FBC64();
  v18 = &v15[*(v12 + 36)];
  *v18 = v17;
  v19 = v26;
  *(v18 + 24) = v25;
  *(v18 + 8) = v19;
  v18[40] = 0;
  sub_2749FAF54();
  sub_274809BC8();
  sub_27480010C();
  v20 = v28;
  sub_2749FBFC4();
  (*(v9 + 8))(v11, v8);
  sub_27472ECBC(v15, &qword_280969EF0, &qword_274A164A0);
  v36 = v27;
  v37 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5E4();
  v21 = v33;
  v22 = v34;
  LOBYTE(v9) = v35;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F30, &qword_274A164C8);
  v24 = v20 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22;
  *(v24 + 16) = v9;
  return result;
}

uint64_t sub_274809740@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a1;
  v35 = a2;
  v38 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0, &qword_274A13E30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F38, &qword_274A164D0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967710, &unk_274A206A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F08, &qword_274A164B0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v34[-v16];
  sub_2749FC514();
  sub_2749FB674();
  v18 = sub_2749FB684();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
  v19 = sub_2749FC544();

  sub_27472ECBC(v13, &qword_280967710, &unk_274A206A0);
  v20 = sub_2749FC474();
  sub_2749FC474();
  v39 = v35;
  v40 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5C4();
  v21 = sub_2749FC484();

  v22 = *(v8 + 44);
  v23 = *MEMORY[0x277CE13B8];
  v24 = sub_2749FC994();
  (*(*(v24 - 8) + 104))(v10 + v22, v23, v24);
  *v10 = v21;
  v25 = (v17 + *(v15 + 44));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F10, &qword_274A164B8);
  sub_2747E2C9C(v10, v25 + *(v26 + 52), &qword_280969F38, &qword_274A164D0);
  *v25 = v20;
  *v17 = v19;
  sub_274809064();
  v27 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v27);
  v28 = sub_2749FBD64();
  sub_27472ECBC(v6, &unk_28096C0A0, &qword_274A13E30);
  KeyPath = swift_getKeyPath();
  v30 = v17;
  v31 = v38;
  sub_2747E2C9C(v30, v38, &qword_280969F08, &qword_274A164B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EF8, &qword_274A164A8);
  v33 = (v31 + *(result + 36));
  *v33 = KeyPath;
  v33[1] = v28;
  return result;
}

unint64_t sub_274809B10()
{
  result = qword_280969F00;
  if (!qword_280969F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969EF8, &qword_274A164A8);
    sub_27473F824();
    sub_27472AB6C(&qword_28159E5C0, &unk_28096D8F0, &qword_274A1F550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969F00);
  }

  return result;
}

unint64_t sub_274809BC8()
{
  result = qword_280969F18;
  if (!qword_280969F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969EF0, &qword_274A164A0);
    sub_27472AB6C(&qword_280969F20, &qword_280969F28, &qword_274A164C0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969F18);
  }

  return result;
}

unint64_t sub_274809C80()
{
  result = qword_280969F48;
  if (!qword_280969F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969F30, &qword_274A164C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969EF0, &qword_274A164A0);
    sub_2749FAF64();
    sub_274809BC8();
    sub_27480010C();
    swift_getOpaqueTypeConformance2();
    sub_27473F5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969F48);
  }

  return result;
}

void sub_274809D68()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v2 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource____lazy_storage___colorNamesDictionary;
  if (*(v0 + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource____lazy_storage___colorNamesDictionary))
  {

LABEL_23:
    OUTLINED_FUNCTION_46();
    return;
  }

  v10 = objc_opt_self();
  v11 = [v10 workflowPalette];
  sub_27471CF08(0, &qword_280968670, 0x277D79E20);
  v12 = sub_2749FCF84();

  v13 = sub_27472D918(v12);
  v41 = v9;
  v42 = v1;
  if (!v13)
  {

    v16 = MEMORY[0x277D84F90];
LABEL_14:
    sub_27487FA9C();
    sub_274782408();
    v20 = [v10 workflowPaletteNames];
    v21 = sub_2749FCF84();

    v22 = *(sub_27487FA9C() + 16);

    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v43 = v21;
      v45 = v16;
      v48 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_10_14();
      sub_27471F128();
      v23 = v48;
      v24 = -v22;
      v25 = 1;
      v26 = MEMORY[0x277D83B88];
      v27 = MEMORY[0x277D83C10];
      do
      {
        sub_2749FCE14("Custom Color %1$d", v39);
        if (qword_28159E3A8 != -1)
        {
          swift_once();
        }

        v28 = qword_28159E448;
        v29 = sub_2749FCD64();
        v30 = sub_2749FCD64();

        v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_274A0EF10;
        *(v32 + 56) = v26;
        *(v32 + 64) = v27;
        *(v32 + 32) = v25;
        v33 = sub_2749FCD74();
        v35 = v34;

        v37 = *(v48 + 16);
        v36 = *(v48 + 24);
        if (v37 >= v36 >> 1)
        {
          OUTLINED_FUNCTION_3_29(v36);
          sub_27471F128();
        }

        *(v48 + 16) = v37 + 1;
        v38 = v48 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        ++v25;
      }

      while (v24 + v25 != 1);
      v1 = v42;
      v21 = v43;
      v16 = v45;
    }

    sub_274782360(v23);
    *(v1 + v41) = sub_274776DB4(v16, v21);

    goto LABEL_23;
  }

  v14 = v13;
  v39 = v10;
  v40 = v12;
  v47 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_10_14();
  sub_27476D538();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v47;
    v46 = v12 & 0xC000000000000001;
    v44 = *MEMORY[0x277D7D378];
    do
    {
      if (v46)
      {
        v17 = MEMORY[0x277C5F6D0](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      *v8 = v17;
      (*(v4 + 104))(v8, v44, v2);
      v19 = *(v47 + 16);
      v18 = *(v47 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_3_29(v18);
        sub_27476D538();
        v12 = v40;
      }

      ++v15;
      *(v47 + 16) = v19 + 1;
      (*(v4 + 32))(v47 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v8, v2);
    }

    while (v14 != v15);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_27480A21C()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  type metadata accessor for WFAddToHomeScreenItem(0);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39();
  v6 = MEMORY[0x28223BE20](v5);
  v9 = (v35 - v8);
  v10 = OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource____lazy_storage___colors;
  if (*(v0 + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource____lazy_storage___colors))
  {

LABEL_22:
    OUTLINED_FUNCTION_46();
    return;
  }

  v36 = v7;
  v39 = v6;
  v11 = [objc_opt_self() workflowPalette];
  sub_27471CF08(0, &qword_280968670, 0x277D79E20);
  OUTLINED_FUNCTION_3();
  v12 = sub_2749FCF84();

  v13 = sub_27472D918(v12);
  v14 = MEMORY[0x277D84F90];
  v37 = v10;
  v38 = v1;
  if (!v13)
  {

    v17 = MEMORY[0x277D84F90];
LABEL_14:
    v24 = sub_27487FA9C();
    v25 = *(v24 + 16);
    v26 = v36;
    if (v25)
    {
      v43 = v14;
      OUTLINED_FUNCTION_10_14();
      sub_27476D800();
      v27 = v43;
      v42 = sub_2749F9EB4();
      OUTLINED_FUNCTION_9();
      v29 = *(v28 + 16);
      v40 = v28 + 16;
      v41 = v29;
      v30 = *(v28 + 80);
      v35[1] = v24;
      v31 = v24 + ((v30 + 32) & ~v30);
      v32 = *(v28 + 72);
      do
      {
        v41(v26, v31, v42);
        swift_storeEnumTagMultiPayload();
        v43 = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_3_29(v33);
          sub_27476D800();
          v27 = v43;
        }

        *(v27 + 16) = v34 + 1;
        sub_27477BDA4(v26, v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34);
        v31 += v32;
        --v25;
      }

      while (v25);

      v1 = v38;
    }

    else
    {
    }

    v43 = v17;
    sub_2747829A0();
    *(v1 + v37) = v43;

    goto LABEL_22;
  }

  v15 = v13;
  v43 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_10_14();
  sub_27476D800();
  v42 = v15;
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v43;
    v18 = v12 & 0xC000000000000001;
    v19 = *MEMORY[0x277D7D378];
    v20 = v12;
    do
    {
      if (v18)
      {
        v21 = MEMORY[0x277C5F6D0](v16, v12);
      }

      else
      {
        v21 = *(v12 + 8 * v16 + 32);
      }

      *v9 = v21;
      sub_2749F9EB4();
      OUTLINED_FUNCTION_9();
      (*(v22 + 104))(v9, v19);
      swift_storeEnumTagMultiPayload();
      v43 = v17;
      v23 = *(v17 + 16);
      if (v23 >= *(v17 + 24) >> 1)
      {
        sub_27476D800();
        v17 = v43;
      }

      ++v16;
      *(v17 + 16) = v23 + 1;
      sub_27477BDA4(v9, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23);
      v12 = v20;
    }

    while (v42 != v16);

    v1 = v38;
    v14 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_27480A5FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F98, &qword_274A165A8);
  sub_274772A28();
  sub_2749F9594();
  sub_2749625F4(&unk_28838FDA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967988, &unk_274A165B0);
  type metadata accessor for WFAddToHomeScreenItem(0);
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_20_10(v0, xmmword_274A0EF10);
  swift_storeEnumTagMultiPayload();
  sub_274962734(v0, 0);
  swift_setDeallocating();
  sub_2747A3458();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_20_10(v1, xmmword_274A0EF10);
  swift_storeEnumTagMultiPayload();
  sub_274962734(v1, 1u);
  swift_setDeallocating();
  sub_2747A3458();
  sub_27480A21C();
  sub_274962734(v2, 2u);

  sub_274962734(v3, 3u);
}

void sub_27480A7E4()
{
  OUTLINED_FUNCTION_48();
  v0 = type metadata accessor for WFAddToHomeScreenItem(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v4 = (v3 - v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F98, &qword_274A165A8);
  sub_274772A28();
  sub_2749F9594();
  sub_2749625F4(&unk_28838FE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967988, &unk_274A165B0);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_20_10(v7, xmmword_274A0EF10);
  swift_storeEnumTagMultiPayload();
  sub_274962734(v7, 0);
  swift_setDeallocating();
  sub_2747A3458();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_20_10(v8, xmmword_274A0EF10);
  swift_storeEnumTagMultiPayload();
  sub_274962734(v8, 1u);
  swift_setDeallocating();
  sub_2747A3458();
  v11 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_10_14();
  sub_27476D800();
  for (i = 0; i != 3; ++i)
  {
    *v4 = *(&unk_28838F880 + i + 32);
    swift_storeEnumTagMultiPayload();
    v10 = *(v11 + 16);
    if (v10 >= *(v11 + 24) >> 1)
    {
      sub_27476D800();
    }

    *(v11 + 16) = v10 + 1;
    sub_27477BDA4(v4, v11 + v6 + v10 * v5);
  }

  sub_274962734(v11, 4u);

  OUTLINED_FUNCTION_46();
}

void sub_27480AA54()
{
  OUTLINED_FUNCTION_48();
  v52 = v0;
  v53 = v2;
  v4 = v3;
  v54 = v5;
  v6 = type metadata accessor for WFAddToHomeScreenItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_39();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = (v46 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  OUTLINED_FUNCTION_34(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F98, &qword_274A165A8);
  sub_274772A28();
  sub_2749F9594();
  sub_2749625F4(&unk_28838FD58);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967988, &unk_274A165B0);
  v17 = *(v7 + 72);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v48 = *(v7 + 80);
  v49 = v16;
  v19 = swift_allocObject();
  v47 = xmmword_274A0EF10;
  *(v19 + 16) = xmmword_274A0EF10;
  v55 = v6;
  v20 = v4;
  v21 = v53;
  swift_storeEnumTagMultiPayload();
  sub_274962734(v19, 0);
  swift_setDeallocating();
  sub_2747A3458();
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v51 = v1;
    if (qword_2815A0A40 != -1)
    {
      OUTLINED_FUNCTION_9_1(&qword_2815A0A40);
    }

    sub_2747B9BAC(v20, v21);
    v24 = *(v23 + 16);
    v25 = MEMORY[0x277D84F90];
    v50 = v23;
    if (v24)
    {
      v26 = v23;
      v46[1] = v20;
      v56 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_10_14();
      sub_27476D800();
      v25 = v56;
      v27 = (v26 + 32);
      do
      {
        v28 = *v27++;
        *v13 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
        swift_storeEnumTagMultiPayload();
        v56 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_3_29(v29);
          sub_27476D800();
          v25 = v56;
        }

        *(v25 + 16) = v30 + 1;
        sub_27477BDA4(v13, v25 + v18 + v30 * v17);
        --v24;
      }

      while (v24);
      v1 = v51;
    }

    else
    {
      v1 = v51;
    }

    OUTLINED_FUNCTION_22_10(v25);

    v33 = *(v52 + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_semanticSymbolIndex);
    if (v33)
    {
      v34 = v33;
      v35 = v50;
      v36 = sub_2749F9634();

      v32 = v54;
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
      v32 = v54;
      v35 = v50;
    }

    v37 = *(v36 + 16);
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v56 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_10_14();
      sub_27476D800();
      v38 = v56;
      v39 = (v36 + 32);
      do
      {
        v40 = *v39++;
        *v10 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
        swift_storeEnumTagMultiPayload();
        v56 = v38;
        v42 = *(v38 + 16);
        v41 = *(v38 + 24);
        if (v42 >= v41 >> 1)
        {
          OUTLINED_FUNCTION_3_29(v41);
          sub_27476D800();
          v38 = v56;
        }

        *(v38 + 16) = v42 + 1;
        sub_27477BDA4(v10, v38 + v18 + v42 * v17);
        --v37;
      }

      while (v37);
      v32 = v54;
      v35 = v50;
      v1 = v51;
    }

    OUTLINED_FUNCTION_22_10(v38);

    v43 = *(v35 + 16);

    if (v43)
    {
    }

    else
    {
      v44 = *(v36 + 16);

      if (!v44)
      {
        v45 = swift_allocObject();
        *(v45 + 16) = v47;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_22_10(v45);
        swift_setDeallocating();
        sub_2747A3458();
      }
    }
  }

  else
  {

    OUTLINED_FUNCTION_22_10(v31);

    v32 = v54;
  }

  sub_27480CEB0(v1, v32);
  OUTLINED_FUNCTION_46();
}

void sub_27480AF18()
{
  OUTLINED_FUNCTION_48();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  OUTLINED_FUNCTION_34(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v41 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B180, &qword_274A19C80);
  OUTLINED_FUNCTION_34(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D78, &unk_274A10050);
  OUTLINED_FUNCTION_43();
  v15 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D80, &unk_274A165C0);
  OUTLINED_FUNCTION_43();
  v39 = v20;
  v40 = v19;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13_0();
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource____lazy_storage___colorNamesDictionary] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource____lazy_storage___colors] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_allSymbolItems] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_iconTypeCancellable] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_glyphRegistryCancellable] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_semanticSymbolIndex] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_gridView] = v7;
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_iconState] = v5;
  objc_allocWithZone(type metadata accessor for HomeScreenPreviewCell());
  swift_retain_n();
  v38 = v7;
  *&v3[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_homeScreenPreviewCell] = sub_2747BD774(v5);
  v22 = type metadata accessor for AddToHomeScreenGridViewDataSource();
  v43.receiver = v3;
  v43.super_class = v22;
  v23 = objc_msgSendSuper2(&v43, sel_init);
  v24 = qword_2815A0A40;
  v25 = v23;
  if (v24 != -1)
  {
    OUTLINED_FUNCTION_9_1(&qword_2815A0A40);
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88, &qword_274A10060);
  sub_2749FA8D4();
  swift_endAccess();
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v26 = sub_2749FD404();
  v42 = v26;
  v27 = sub_2749FD3E4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v27);
  OUTLINED_FUNCTION_6_13(&qword_280967D90, &qword_280967D78, &unk_274A10050);
  sub_27477ACFC();
  sub_2749FA954();
  sub_27472ECBC(v2, &qword_28096B180, &qword_274A19C80);

  (*(v15 + 8))(v18, v13);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_23_2();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v5;
  v30 = v38;
  v29[4] = v38;
  OUTLINED_FUNCTION_8_14(&qword_280967DA0, &qword_280967D80, &unk_274A165C0);

  v31 = v30;
  v32 = v40;
  v33 = sub_2749FA974();

  (*(v39 + 8))(v1, v32);
  *&v25[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_glyphRegistryCancellable] = v33;

  v34 = v41;
  sub_2749FD0B4();
  v35 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  OUTLINED_FUNCTION_23_2();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v25;
  sub_2748828E4(0, 0, v34, &unk_274A165D8, v36);

  sub_27472ECBC(v34, &unk_28096C960, &unk_274A10040);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_27480B420(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_27480B6B4(v2);
    *&v4[OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_allSymbolItems] = v5;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_27480BD04(0);
  }

  v8 = sub_27487F5DC();
  v10 = v8;
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967988, &unk_274A165B0);
    v12 = *(type metadata accessor for WFAddToHomeScreenItem(0) - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_274A0F620;
    v16 = v15 + v14;
    sub_27487F7A4(v16);
    swift_storeEnumTagMultiPayload();
    *(v16 + v13) = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
  }

  else
  {
    sub_2747C6E20(v8, v9, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967988, &unk_274A165B0);
    v17 = *(type metadata accessor for WFAddToHomeScreenItem(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_274A0EF10;
    sub_27487F7A4(v19 + v18);
  }

  swift_storeEnumTagMultiPayload();
  sub_274779618();
  swift_setDeallocating();
  return sub_2747A3458();
}

void sub_27480B6B4(uint64_t a1)
{
  v2 = type metadata accessor for WFAddToHomeScreenItem(0);
  v48 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v42 - v6);
  v8 = type metadata accessor for WFGlyphCategory(0);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F90];
  v47 = *(a1 + 16);
  if (!v47)
  {
    return;
  }

  v13 = 0;
  v14 = *(v9 + 80);
  v45 = *(v9 + 72);
  v46 = a1 + ((v14 + 32) & ~v14);
  v43 = v8;
  v44 = v7;
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_27480D0D0(v46 + v45 * v13, v11);
    v15 = &v11[*(v8 + 20)];
    v16 = *(v15 + 1);
    *v7 = *v15;
    v7[1] = v16;
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274764394(0, *(v12 + 16) + 1, 1, v12);
      v12 = v38;
    }

    v17 = v12;
    v18 = *(v12 + 16);
    v49 = v13;
    v50 = v17;
    v19 = *(v17 + 24);
    if (v18 >= v19 >> 1)
    {
      sub_274764394(v19 > 1, v18 + 1, 1, v50);
      v50 = v39;
    }

    v20 = v50;
    *(v50 + 16) = v18 + 1;
    v21 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v22 = *(v48 + 72);
    sub_27477BDA4(v7, v20 + v21 + v22 * v18);
    v23 = *&v11[*(v8 + 24)];
    v24 = *(v23 + 16);
    if (v24)
    {
      v51 = MEMORY[0x277D84F90];
      sub_27476D800();
      v25 = v51;
      v26 = objc_opt_self();
      v27 = (v23 + 32);
      do
      {
        v28 = *v27++;
        v29 = [v26 clearBackground];
        v30 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:v28 background:v29];

        *v5 = v30;
        swift_storeEnumTagMultiPayload();
        v51 = v25;
        v31 = *(v25 + 16);
        if (v31 >= *(v25 + 24) >> 1)
        {
          sub_27476D800();
          v25 = v51;
        }

        *(v25 + 16) = v31 + 1;
        sub_27477BDA4(v5, v25 + v21 + v31 * v22);
        --v24;
      }

      while (v24);
      v8 = v43;
      v7 = v44;
      v11 = v42;
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = *(v25 + 16);
    v12 = v50;
    v33 = *(v50 + 16);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    if (v34 > *(v50 + 24) >> 1)
    {
      if (v33 <= v34)
      {
        v40 = v33 + v32;
      }

      else
      {
        v40 = *(v50 + 16);
      }

      sub_274764394(1, v40, 1, v50);
      v12 = v41;
      v33 = *(v41 + 16);
      if (*(v25 + 16))
      {
LABEL_17:
        if (((*(v12 + 24) >> 1) - v33) < v32)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v35 = *(v12 + 16);
          v36 = __OFADD__(v35, v32);
          v37 = v35 + v32;
          if (v36)
          {
            goto LABEL_31;
          }

          *(v12 + 16) = v37;
        }

        goto LABEL_26;
      }
    }

    else if (v32)
    {
      goto LABEL_17;
    }

    if (v32)
    {
      goto LABEL_29;
    }

LABEL_26:
    v13 = v49 + 1;
    sub_27480D12C(v11, type metadata accessor for WFGlyphCategory);
    if (v13 == v47)
    {
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_27480BB3C()
{
  OUTLINED_FUNCTION_79();
  sub_2749F9644();
  *(v0 + 56) = sub_2749F9624();
  swift_unknownObjectWeakInit();
  sub_2749FD0A4();
  *(v0 + 64) = sub_2749FD094();
  v2 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27480BBF0, v2, v1);
}

uint64_t sub_27480BBF0()
{
  OUTLINED_FUNCTION_79();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 56);
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_semanticSymbolIndex);
    *(Strong + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_semanticSymbolIndex) = v2;

    v2 = v2;
  }

  *(v0 + 72) = v2;
  MEMORY[0x277C61150](v0 + 40);

  return MEMORY[0x2822009F8](sub_27480BCA8, 0, 0);
}

uint64_t sub_27480BCA8()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27480BD04(uint64_t a1)
{
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  v6 = *(v1 + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_gridView);
  sub_27480A5FC();
  sub_2749648E0(v2, v3);

  return sub_27472ECBC(v2, &unk_280968DC0, &unk_274A14040);
}

uint64_t sub_27480BDBC(uint64_t a1)
{
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  v6 = *(v1 + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_gridView);
  sub_27480AA54();
  sub_2749648E0(v2, v3);

  return sub_27472ECBC(v2, &unk_280968DC0, &unk_274A14040);
}

void sub_27480BE7C()
{
  OUTLINED_FUNCTION_48();
  v76 = v0;
  v3 = v2;
  sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v74 = v5;
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B180, &qword_274A19C80);
  OUTLINED_FUNCTION_34(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B80, &qword_274A13B40);
  OUTLINED_FUNCTION_43();
  v71 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B88, &qword_274A13B48);
  OUTLINED_FUNCTION_43();
  v72 = v22;
  v73 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_16();
  type metadata accessor for WFAddToHomeScreenItem(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = (v26 - v25);
  v28 = OUTLINED_FUNCTION_1_27();
  sub_27480D0D0(v28, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = *v27;
      v56 = v27[1];
      OUTLINED_FUNCTION_7_12();
      v30 = v3;
      if (sub_274976A54())
      {
        OUTLINED_FUNCTION_59_0();
        type metadata accessor for WFIconPickerHeaderView();
        OUTLINED_FUNCTION_3();
        v58 = swift_dynamicCastClass();
        v59 = v58;
        if (!v58)
        {

          goto LABEL_29;
        }

        sub_274885D4C(v57, v56, *(v58 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerHeaderView_label));
        sub_274976098(v57, v56, v59);
      }

      else
      {
      }

      goto LABEL_36;
    case 2u:
      v43 = v74;
      v42 = v75;
      (*(v74 + 32))(v11, v27, v75);
      v44 = sub_274976A54();
      if (!v44)
      {
        goto LABEL_25;
      }

      v45 = v44;
      type metadata accessor for WFIconPickerColorCell();
      v46 = swift_dynamicCastClass();
      if (!v46)
      {

LABEL_25:
        (*(v43 + 8))(v11, v42);
        goto LABEL_36;
      }

      v47 = v46;
      sub_27487F7A4(v8);
      v48 = sub_2749F9EA4();
      v49 = *(v43 + 8);
      v49(v8, v42);
      sub_2747B5D7C(v11, v48 & 1);
      v50 = v45;
      sub_274809D68();
      sub_27494F9A8(v11, v51);
      v53 = v52;

      if (v53)
      {
        v54 = sub_2749FCD64();
      }

      else
      {
        v54 = 0;
      }

      [v47 setAccessibilityLabel_];

      v49(v11, v42);
LABEL_36:
      OUTLINED_FUNCTION_46();
      return;
    case 3u:
      v55 = *v27;
      v30 = v3;
      if (sub_274976A54())
      {
        OUTLINED_FUNCTION_59_0();
        type metadata accessor for ImagePickerTypeCell();
        OUTLINED_FUNCTION_3();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_29;
        }

        sub_27478140C(v55);
      }

      goto LABEL_36;
    case 4u:
      v41 = *(v76 + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_homeScreenPreviewCell);
      goto LABEL_36;
    case 5u:
      OUTLINED_FUNCTION_7_12();
      v30 = v3;
      if (sub_274976A54())
      {
        v60 = OUTLINED_FUNCTION_59_0();
        type metadata accessor for IconTypeSegmentedControlCell(v60);
        OUTLINED_FUNCTION_3();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_29;
        }

        v61 = v76;
        v62 = sub_27487FC44();
        sub_2747BF524(v62 & 1);
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B78, &qword_274A165A0);
        sub_2749FA8D4();
        swift_endAccess();
        sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
        v63 = sub_2749FD404();
        v77 = v63;
        v64 = sub_2749FD3E4();
        __swift_storeEnumTagSinglePayload(v15, 1, 1, v64);
        OUTLINED_FUNCTION_6_13(&qword_280968B98, &qword_280968B80, &qword_274A13B40);
        sub_27477ACFC();
        sub_2749FA954();
        sub_27472ECBC(v15, &qword_28096B180, &qword_274A19C80);

        (*(v71 + 8))(v20, v16);
        v65 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        *(v66 + 24) = v3;
        OUTLINED_FUNCTION_8_14(&qword_280968BA0, &qword_280968B88, &qword_274A13B48);
        v67 = v3;
        v68 = v73;
        v69 = sub_2749FA974();

        (*(v72 + 8))(v1, v68);
        *(v61 + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_iconTypeCancellable) = v69;
      }

      goto LABEL_36;
    case 6u:
      sub_274976A54();
      goto LABEL_36;
    default:
      v29 = *v27;
      OUTLINED_FUNCTION_7_12();
      v30 = v3;
      if (sub_274976A54())
      {
        OUTLINED_FUNCTION_59_0();
        type metadata accessor for WFIconPickerSymbolCell();
        OUTLINED_FUNCTION_3();
        v31 = swift_dynamicCastClass();
        if (v31)
        {
          sub_2749775FC(v29, 0);
          objc_opt_self();
          v32 = swift_dynamicCastObjCClass();
          if (v32)
          {
            v33 = v32;
            v34 = sub_27487F5DC();
            v36 = v35;
            v38 = v37;
            v39 = [v33 glyph];
            if (v38)
            {
              v40 = v39 == v34;
            }

            else
            {
              sub_2747C6E20(v34, v36, 0);
              v40 = 0;
            }

            *(v31 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = v40;
          }

          else
          {
            *(v31 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
          }

          sub_274977DCC();
        }

        else
        {

LABEL_29:
        }
      }

      else
      {
      }

      goto LABEL_36;
  }
}

double sub_27480C674(unsigned __int8 *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    v10 = sub_27487FC44();

    if (v6 == (v10 & 1))
    {
    }

    else
    {
      if (v6)
      {
        sub_27480A5FC();
      }

      else
      {
        sub_27480A7E4();
      }

      sub_2749648E0(v5, 0);
      sub_27472ECBC(v5, &unk_280968DC0, &unk_274A14040);

      sub_27487FCCC(v6);
    }
  }

  return result;
}

id sub_27480C7C8(int a1, id a2)
{
  result = [a2 isFirstResponder];
  if (result)
  {
    sub_2749760F0(a2);
    sub_27480CBE4();
  }

  return result;
}

uint64_t sub_27480C83C(uint64_t a1, void *a2)
{
  v2 = sub_2749760F0(a2);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v2;
  v5 = v3;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_5:

    return sub_27480BDBC(1);
  }

  return result;
}

void sub_27480C8BC()
{
  v0 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for WFAddToHomeScreenItem(v0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = OUTLINED_FUNCTION_1_27();
  sub_27480D0D0(v5, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_27480D12C(v4, type metadata accessor for WFAddToHomeScreenItem);
      if (qword_280966C10 != -1)
      {
        swift_once();
      }

      [qword_2809891C8 lineHeight];
      break;
    case 3u:
      v6 = [objc_opt_self() preferredFontForTextStyle_];
      [v6 lineHeight];

      break;
    case 4u:
      return;
    case 5u:
      v7 = [objc_opt_self() preferredFontForTextStyle_];
      [v7 lineHeight];

      break;
    case 6u:
      if (qword_280966BF0 != -1)
      {
        swift_once();
      }

      break;
    default:
      sub_27480D12C(v4, type metadata accessor for WFAddToHomeScreenItem);
      break;
  }
}

double sub_27480CAFC(double a1)
{
  v2 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for WFAddToHomeScreenItem(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_1_27();
  sub_27480D0D0(v7, v6);
  v8 = 60.0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = a1;
      goto LABEL_4;
    case 2u:
      goto LABEL_4;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
      return a1;
    default:
      v8 = 50.0;
LABEL_4:
      sub_27480D12C(v6, type metadata accessor for WFAddToHomeScreenItem);
      return v8;
  }
}

uint64_t sub_27480CBE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  OUTLINED_FUNCTION_34(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC10WorkflowUI33AddToHomeScreenGridViewDataSource_gridView);
  sub_27480AA54();
  sub_2749648E0(v4, 0);

  return sub_27472ECBC(v4, &unk_280968DC0, &unk_274A14040);
}

id sub_27480CCF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddToHomeScreenGridViewDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_27480CE10()
{
  result = qword_280968D88;
  if (!qword_280968D88)
  {
    type metadata accessor for WFAddToHomeScreenItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968D88);
  }

  return result;
}

uint64_t sub_27480CEB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27480CF2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27480CFE0;

  return sub_27480BB1C(a1, v4, v5, v6);
}

uint64_t sub_27480CFE0()
{
  OUTLINED_FUNCTION_79();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27480D0D0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_59_0();
  v5(v4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_27480D12C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

Swift::Void __swiftcall WFPreviewNavigationController.gridViewDidScroll(_:isAnimatingSnapshotChanges:)(UIScrollView *_, Swift::Bool isAnimatingSnapshotChanges)
{
  [(UIScrollView *)_ contentOffset];
  v6 = v5;
  [(UIScrollView *)_ contentInset];
  v8 = v6 + v7;
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  [(UIScrollView *)_ contentInset];
  v11 = v10;
  if (v10 < v9)
  {
    v9 = v10;
  }

  v12 = swift_allocObject();
  v14 = v9 / v11;
  *(v12 + 16) = v9 / v11;
  v15 = (v12 + 16);
  if ((~COERCE__INT64(v9 / v11) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(v9 / v11) & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v13 = 1.0;
    if (v14 > 1.0 || (v13 = 0.0, v14 < 0.0))
    {
      *v15 = v13;
      v14 = v13;
    }
  }

  v16 = *&v2[OBJC_IVAR___WFPreviewNavigationController_rootViewController];
  [v16 previewDimension];
  v18 = v17;
  v19 = sub_27480D88C();
  v20 = *&v2[OBJC_IVAR___WFPreviewNavigationController_grabberWithTopPaddingHeight];
  v21 = v20 + (*&v2[OBJC_IVAR___WFPreviewNavigationController_navigationBarHeight] - v20 - v18 * v19) * 0.5;
  v22 = OBJC_IVAR___WFPreviewNavigationController_isInSheetView;
  v23 = v20 * 0.5 + 30.0;
  if (!v2[OBJC_IVAR___WFPreviewNavigationController_isInSheetView])
  {
    v23 = 30.0;
  }

  v24 = OBJC_IVAR___WFPreviewNavigationController____lazy_storage___previewScale;
  v25 = -(v23 - v21 + v18 * (1.0 - *&v2[OBJC_IVAR___WFPreviewNavigationController____lazy_storage___previewScale]) * 0.5);
  v26 = *&v2[OBJC_IVAR___WFPreviewNavigationController_titleLabel];
  [v26 intrinsicContentSize];
  v28 = v27;
  [v16 previewDimension];
  v30 = v29;
  v31 = *&v2[v24];
  [*&v2[OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView] bounds];
  Width = CGRectGetWidth(v80);
  v33 = sub_27480D8D8();
  v34 = [v26 text];
  v35 = 0.0;
  if (v34)
  {
    v36 = v34;
    v37 = v28 + v30 * v31 + 5.0;
    v38 = v33 + (Width - v37) * 0.5;
    v39 = v37 * 0.5 + v38;
    v40 = v30 * v31 * 0.5 + v38;
    v41 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v43 = v42;

    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v41 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v40 - v39;
    if (!v44)
    {
      v35 = 0.0;
    }

    v14 = *v15;
  }

  v45 = 1.0;
  v46 = v35 * (1.0 - (v14 + -1.0) * (v14 + -1.0));
  if (isAnimatingSnapshotChanges)
  {
    v47 = 0.45;
  }

  else
  {
    v47 = 0.3;
  }

  if (v2[v22])
  {
    v48 = 0.8;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = objc_opt_self();
  v50 = swift_allocObject();
  *(v50 + 16) = v2;
  *(v50 + 24) = v46;
  *(v50 + 32) = v25;
  *(v50 + 40) = v12;
  v78 = sub_27480F508;
  v79 = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v76 = sub_274760264;
  v77 = &block_descriptor_18;
  v51 = _Block_copy(aBlock);
  v52 = v2;
  OUTLINED_FUNCTION_78();

  v78 = CGSizeMake;
  v79 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_1_28();
  v76 = v53;
  v77 = &block_descriptor_6_1;
  v54 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_2_23();
  [v49 v55];
  _Block_release(v54);
  _Block_release(v51);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v56 = *(v12 + 16);
  if (v56 <= 0.9)
  {
    v45 = 0.0;
  }

  [v26 alpha];
  if (v57 != v45)
  {
    v58 = v56 > 0.9;
    if (v56 <= 0.9)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = 0.14;
    }

    v60 = dbl_274A16600[v58];
    v61 = swift_allocObject();
    *(v61 + 16) = v2;
    *(v61 + 24) = v45;
    v78 = sub_27480F608;
    v79 = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_22();
    v76 = v62;
    v77 = &block_descriptor_12_1;
    v63 = _Block_copy(aBlock);
    v64 = v2;

    [v49 animateWithDuration:0 delay:v63 options:0 animations:v60 completion:v59];
    _Block_release(v63);
  }

  if (_UISolariumEnabled())
  {
    v65 = 20.0;
  }

  else
  {
    v65 = 1.0;
  }

  [(UIScrollView *)_ contentOffset];
  v67 = (v65 + v66) / v65;
  v68 = swift_allocObject();
  *(v68 + 16) = v2;
  *(v68 + 24) = v67;
  v78 = sub_27480F720;
  v79 = v68;
  aBlock[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_0_22();
  v76 = v69;
  v77 = &block_descriptor_18_1;
  v70 = _Block_copy(aBlock);
  v71 = v2;

  v78 = CGSizeMake;
  v79 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_1_28();
  v76 = v72;
  v77 = &block_descriptor_21_0;
  v73 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_2_23();
  [v49 v74];
  _Block_release(v73);
  _Block_release(v70);
}

double sub_27480D7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

id sub_27480D818(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2749FCD64();

  v4 = [v2 initWithType_];

  return v4;
}

double sub_27480D88C()
{
  v1 = (v0 + OBJC_IVAR___WFPreviewNavigationController____lazy_storage___previewScale);
  if ((*(v0 + OBJC_IVAR___WFPreviewNavigationController____lazy_storage___previewScale + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.3;
  if (*(v0 + OBJC_IVAR___WFPreviewNavigationController_isInSheetView))
  {
    result = 0.4;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

double sub_27480D8D8()
{
  v1 = [*(v0 + OBJC_IVAR___WFPreviewNavigationController_titleLabel) text];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  result = -6.0;
  if (!v6)
  {
    return 0.0;
  }

  return result;
}

double sub_27480D964()
{
  v1 = OBJC_IVAR___WFPreviewNavigationController_additionContainedScrollViewTopInset;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27480D9A4(double a1)
{
  v3 = OBJC_IVAR___WFPreviewNavigationController_additionContainedScrollViewTopInset;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *WFPreviewNavigationController.__allocating_init(rootViewController:isInSheetView:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_10_15();

  return sub_274810010(v0, v1);
}

char *WFPreviewNavigationController.init(rootViewController:isInSheetView:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_10_15();

  return sub_274810068(v0, v1, v2);
}

void sub_27480DB44()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for WFPreviewNavigationController();
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v1 = OUTLINED_FUNCTION_8_15();
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR___WFPreviewNavigationController_rootViewController];
  v4 = [v3 view];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_7_13();
  [v6 v7];

  [v0 addChildViewController_];
  [v3 didMoveToParentViewController_];
  v8 = [v3 view];
  if (!v8)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  [v8 setClipsToBounds_];

  if ((v0[OBJC_IVAR___WFPreviewNavigationController_isInSheetView] & 1) == 0)
  {
    v10 = [objc_opt_self() effectWithStyle_];
    v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    [v11 setAutoresizingMask_];
    v12 = OUTLINED_FUNCTION_8_15();
    if (!v12)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v13 = v12;
    [v12 insertSubview:v11 atIndex:0];

    v14 = *&v0[OBJC_IVAR___WFPreviewNavigationController_visualEffectView];
    *&v0[OBJC_IVAR___WFPreviewNavigationController_visualEffectView] = v11;
  }

  v15 = OUTLINED_FUNCTION_8_15();
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  v17 = OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView;
  [v15 addSubview_];

  [*&v0[v17] setAlpha_];
  v18 = *&v0[OBJC_IVAR___WFPreviewNavigationController_titleLabel];
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  v20 = OUTLINED_FUNCTION_7_13();
  [v20 v21];

  [v18 setAlpha_];
  v22 = OUTLINED_FUNCTION_8_15();
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v22;
  [v22 addSubview_];

  v24 = OUTLINED_FUNCTION_8_15();
  if (!v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v24;
  [v24 addSubview_];

  v26 = OUTLINED_FUNCTION_8_15();
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  v28 = *&v0[OBJC_IVAR___WFPreviewNavigationController_navigationButtons];
  [v26 addSubview_];

  [v28 setAlignment_];
  [v28 setAxis_];
  [v28 setAutoresizingMask_];
  [v28 setLayoutMarginsRelativeArrangement_];
  [v28 setDirectionalLayoutMargins_];
  v29 = [v3 navigationItem];
  v30 = [v29 leftBarButtonItem];

  if (v30)
  {
    v31 = sub_27480DFD0(v30);
    OUTLINED_FUNCTION_14_8(v31);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  LODWORD(v33) = 1132068864;
  [v32 setContentHuggingPriority:0 forAxis:v33];
  [v28 addArrangedSubview_];
  v34 = [v3 navigationItem];
  v35 = [v34 rightBarButtonItem];

  if (v35)
  {
    v36 = sub_27480DFD0(v35);
    OUTLINED_FUNCTION_14_8(v36);
  }
}

id sub_27480DFD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A010, &qword_274A16668);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v90 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A018, &qword_274A16670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v90 - v6;
  v8 = sub_2749FA534();
  MEMORY[0x28223BE20](v8);
  v9 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  sub_27480FFAC(a1);
  if (v10)
  {
    v11 = sub_2749FCD64();
  }

  else
  {
    v11 = 0;
  }

  [v9 setTitle:v11 forState:0];

  v12 = [objc_opt_self() systemBlueColor];
  [v9 setTitleColor:v12 forState:0];

  v13 = [a1 primaryAction];
  if (v13)
  {
    v14 = v13;
    [v9 addAction:v13 forControlEvents:64];
  }

  sub_27471CF08(0, &qword_28096A020, 0x277D755A8);
  v15 = v9;
  sub_2749FA504();
  v16 = sub_2749FA7F4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
  v17 = sub_2749FD264();
  [v15 setHoverStyle_];

  v18 = [v15 titleLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [a1 style];
    v21 = MEMORY[0x277D76988];
    if (v20 != 2)
    {
      v21 = MEMORY[0x277D76918];
    }

    v22 = *v21;
    v23 = [objc_opt_self() preferredFontForTextStyle_];

    [v19 setFont_];
  }

  v24 = _UISolariumEnabled();
  v25 = v15;
  if (!v24)
  {
    goto LABEL_52;
  }

  sub_2749FD664();
  v26 = sub_2749FD674();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v26);
  sub_2749FD684();
  v27 = [v15 titleLabel];
  v25 = v15;
  if (!v27)
  {
    goto LABEL_52;
  }

  v28 = v27;
  v29 = [v15 heightAnchor];
  result = [v28 font];
  if (result)
  {
    v31 = result;
    v90 = v26;
    v91 = v28;
    [result lineHeight];
    v33 = v32;

    v34 = [v29 constraintEqualToConstant_];
    [v34 setActive_];

    v35 = sub_27480FFAC(a1);
    v37 = v36;
    sub_2749FCE14("Cancel", 6);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v38 = qword_28159E448;
    OUTLINED_FUNCTION_105_0();
    v39 = sub_2749FCD64();
    OUTLINED_FUNCTION_105_0();
    v40 = sub_2749FCD64();

    v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

    v42 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v44 = v43;

    if (v37)
    {
      if (v42 == v35 && v37 == v44)
      {

LABEL_31:

        v58 = [v15 widthAnchor];
        v59 = [v15 heightAnchor];

        v60 = [v58 constraintEqualToAnchor_];
        [v60 setActive_];

        OUTLINED_FUNCTION_24();
        [v61 v62];
        sub_27471CF08(0, &qword_280968030, 0x277D755B8);
        v63 = sub_2748565B8(0x6B72616D78, 0xE500000000000000);
        [v15 setImage:v63 forState:0];

        v64 = v15;
        v65 = OUTLINED_FUNCTION_78();
        sub_27480FFAC(v65);
        if (v66)
        {
          v67 = sub_2749FCD64();
        }

        else
        {
          v67 = 0;
        }

        v77 = v91;
        [v63 setAccessibilityLabel_];

        v25 = v77;
        goto LABEL_52;
      }

      v46 = OUTLINED_FUNCTION_105_0();
      v47 = OUTLINED_FUNCTION_9_12(v46);

      if (v47)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    sub_2749FCE14("Save", 4);
    v48 = sub_2749FCD64();
    v49 = sub_2749FCD64();

    v51 = OUTLINED_FUNCTION_16_8(v50, sel_localizedStringForKey_value_table_);

    v52 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v54 = v53;

    if (v37)
    {
      if (v52 == v35 && v37 == v54)
      {
        goto LABEL_46;
      }

      v56 = OUTLINED_FUNCTION_105_0();
      v57 = OUTLINED_FUNCTION_9_12(v56);

      if (v57)
      {
        goto LABEL_47;
      }
    }

    else
    {
    }

    sub_2749FCE14("Add", 3);
    v68 = sub_2749FCD64();
    v69 = sub_2749FCD64();

    v71 = OUTLINED_FUNCTION_16_8(v70, sel_localizedStringForKey_value_table_);

    v72 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v74 = v73;

    if (!v37)
    {

      goto LABEL_45;
    }

    if (v72 != v35 || v37 != v74)
    {
      v76 = OUTLINED_FUNCTION_9_12(v72);

      if (v76)
      {
        goto LABEL_48;
      }

LABEL_45:

      v25 = v91;
LABEL_52:

      return v15;
    }

LABEL_46:

LABEL_47:

LABEL_48:
    v78 = [v15 widthAnchor];
    v79 = [v15 heightAnchor];

    v80 = [v78 constraintEqualToAnchor_];
    [v80 setActive_];

    OUTLINED_FUNCTION_24();
    [v81 v82];
    sub_27471CF08(0, &qword_280968030, 0x277D755B8);
    v83 = sub_2748565B8(0x72616D6B63656863, 0xE90000000000006BLL);
    [v15 setImage:v83 forState:0];

    v84 = v15;
    v85 = OUTLINED_FUNCTION_78();
    sub_27480FFAC(v85);
    if (v86)
    {
      v87 = sub_2749FCD64();
    }

    else
    {
      v87 = 0;
    }

    v89 = v90;
    v88 = v91;
    [v83 setAccessibilityLabel_];

    sub_2749FD654();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v89);
    sub_2749FD684();
    v25 = v88;
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

id sub_27480E918(char a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for WFPreviewNavigationController();
  objc_msgSendSuper2(&v24, sel_viewIsAppearing_, a1 & 1);
  v4 = *&v1[OBJC_IVAR___WFPreviewNavigationController_visualEffectView];
  if (!v4)
  {
LABEL_4:
    result = [*&v1[OBJC_IVAR___WFPreviewNavigationController_rootViewController] view];
    if (result)
    {
      v10 = result;
      v11 = OBJC_IVAR___WFPreviewNavigationController_navigationBarHeight;
      result = OUTLINED_FUNCTION_8_15();
      if (result)
      {
        OUTLINED_FUNCTION_19_9(result);
        OUTLINED_FUNCTION_17_8();
        OUTLINED_FUNCTION_15_10();
        result = OUTLINED_FUNCTION_8_15();
        if (result)
        {
          OUTLINED_FUNCTION_19_9(result);
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;

          v25.origin.x = v13;
          v25.origin.y = v15;
          v25.size.width = v17;
          v25.size.height = v19;
          CGRectGetHeight(v25);
          OUTLINED_FUNCTION_18_12(v20, sel_setFrame_);

          v21 = OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView;
          v22 = *&v1[OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView];
          result = OUTLINED_FUNCTION_8_15();
          if (result)
          {
            OUTLINED_FUNCTION_19_9(result);
            OUTLINED_FUNCTION_36();

            v26.origin.x = OUTLINED_FUNCTION_4_0();
            [v22 setFrame_];

            [*&v1[v21] setAutoresizingMask_];
            v23 = *&v1[OBJC_IVAR___WFPreviewNavigationController_navigationButtons];
            [*&v1[v21] frame];
            [v23 setFrame_];
            return [v23 setAutoresizingMask_];
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
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
    goto LABEL_11;
  }

  v5 = v4;
  result = OUTLINED_FUNCTION_8_15();
  if (result)
  {
    OUTLINED_FUNCTION_19_9(result);
    OUTLINED_FUNCTION_36();

    v7 = OUTLINED_FUNCTION_4_0();
    [v8 v9];

    goto LABEL_4;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_27480EB8C()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for WFPreviewNavigationController();
  objc_msgSendSuper2(&v25, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR___WFPreviewNavigationController_iconPreview];
  [v1 transform];
  v19 = v22;
  v20 = v21;
  v2 = v23;
  v3 = v24;
  v21 = 0x3FF0000000000000uLL;
  *&v22 = 0;
  *(&v22 + 1) = 0x3FF0000000000000;
  v23 = 0;
  v24 = 0;
  [v1 setTransform_];
  result = [v0 view];
  if (result)
  {
    [result bounds];
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_15_10();
    v5 = *&v0[OBJC_IVAR___WFPreviewNavigationController_rootViewController];
    OUTLINED_FUNCTION_18_12([v5 previewDimension], sel_setFrame_);
    v6 = *&v0[OBJC_IVAR___WFPreviewNavigationController_grabberView];
    result = [v0 view];
    if (result)
    {
      v7 = result;
      [result bounds];
      OUTLINED_FUNCTION_36();

      v26.origin.x = OUTLINED_FUNCTION_4_0();
      [v6 setFrame_];
      v8 = *&v0[OBJC_IVAR___WFPreviewNavigationController_titleLabel];
      [v8 intrinsicContentSize];
      v10 = v9;
      [v8 intrinsicContentSize];
      v12 = v11;
      [v5 previewDimension];
      sub_27480D88C();
      v13 = OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView;
      [*&v0[OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView] bounds];
      CGRectGetWidth(v27);
      sub_27480D8D8();
      [*&v0[v13] bounds];
      CGRectGetHeight(v28);
      v14 = [v0 traitCollection];
      [v14 displayScale];

      BSFloatRoundForScale();
      v16 = v15;
      v17 = [v0 traitCollection];
      [v17 displayScale];

      BSFloatRoundForScale();
      [v8 setFrame_];
      v21 = v20;
      v22 = v19;
      v23 = v2;
      v24 = v3;
      return [v1 setTransform_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_27480EEF8(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WFPreviewNavigationController();
  objc_msgSendSuper2(&v8, sel_viewDidDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR___WFPreviewNavigationController_rootViewController];
  [v3 willMoveToParentViewController_];
  [v3 removeFromParentViewController];
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 removeFromSuperview];

  if (v1[OBJC_IVAR___WFPreviewNavigationController_isInSheetView] != 1)
  {
    return;
  }

  [v1 willMoveToParentViewController_];
  [v1 removeFromParentViewController];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 removeFromSuperview];
}

void sub_27480F060()
{
  *(v0 + OBJC_IVAR___WFPreviewNavigationController_iconTitleSpacing) = 0x4014000000000000;
  v1 = v0 + OBJC_IVAR___WFPreviewNavigationController____lazy_storage___previewScale;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView;
  type metadata accessor for WFPickerNavigationBarBackgroundView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR___WFPreviewNavigationController_navigationButtons;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(v0 + OBJC_IVAR___WFPreviewNavigationController_visualEffectView) = 0;
  v4 = OBJC_IVAR___WFPreviewNavigationController_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR___WFPreviewNavigationController_grabberView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_2749FDAE4();
  __break(1u);
}

id WFPreviewNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFPreviewNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFPreviewNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_27480F33C(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a2 + 16;
  v8 = objc_opt_self();
  sub_2749FD314();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = v7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2748103A4;
  *(v16 + 24) = v15;
  v22[4] = sub_2747B6980;
  v22[5] = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_274963064;
  v22[3] = &block_descriptor_69_0;
  v17 = _Block_copy(v22);
  v18 = a1;

  LODWORD(v19) = v10;
  LODWORD(v20) = v12;
  LODWORD(v21) = v14;
  [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v17);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

id sub_27480F520(uint64_t a1, double *a2, CGFloat a3, double a4)
{
  v8 = 1.0 - sub_27480D88C();
  swift_beginAccess();
  v9 = *a2;
  v10 = *a2 * a4;
  v14.a = 1.0;
  v14.b = 0.0;
  v14.c = 0.0;
  v14.d = 1.0;
  v14.tx = 0.0;
  v14.ty = 0.0;
  CGAffineTransformTranslate(&v13, &v14, a3, v10);
  v14 = v13;
  CGAffineTransformScale(&v13, &v14, 1.0 - v8 * v9, 1.0 - v8 * v9);
  v11 = *(a1 + OBJC_IVAR___WFPreviewNavigationController_iconPreview);
  v14 = v13;
  return [v11 setTransform_];
}

id sub_27480F628(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView;
  result = [*(a1 + OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView) setAlpha_];
  if (a2 >= 1.0)
  {
    v6 = [*(a1 + v4) layer];
    v7 = sub_2749FD184();
    v8 = sub_2749FCD64();
    [v6 setValue:v7 forKeyPath:v8];

    v9 = *(a1 + v4);
    v10[0] = 0x3FF0000000000000;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0x3FF0000000000000;
    v10[4] = 0;
    v10[5] = 0;
    return [v9 setTransform_];
  }

  return result;
}

Swift::Void __swiftcall WFPreviewNavigationController.gridViewDidEndScrolling(_:)(UIScrollView *a1)
{
  [(UIScrollView *)a1 contentOffset];
  v3 = v2;
  [(UIScrollView *)a1 contentInset];
  if (v3 < 0.0 && v3 > -v4)
  {
    if (v3 >= v4 * -0.5)
    {
      v6 = -1.0;
    }

    else
    {
      v6 = -v4;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v6;
    v8 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v9 = a1;
    v10 = sub_27480FE78(sub_2748102C0, v7, 0.6, 0.8);
    [v10 startAnimation];
  }
}

id sub_27480F848(void *a1)
{
  [a1 contentOffset];

  return [a1 setContentOffset_];
}

Swift::Void __swiftcall WFPreviewNavigationController.gridViewSearchDidStart()()
{
  v1 = v0;
  v2 = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = sub_27480D818(v3, v4);
  v6 = sub_2749FD184();
  v7 = OUTLINED_FUNCTION_7_13();
  [v7 v8];

  v9 = sub_2749FD034();
  v10 = OUTLINED_FUNCTION_7_13();
  [v10 v11];

  v12 = sub_2749FD034();
  v13 = OUTLINED_FUNCTION_7_13();
  [v13 v14];

  v15 = sub_2749FCD64();
  [v5 setValue:v15 forKey:*MEMORY[0x277CDA4E8]];

  v16 = sub_2749FCD64();
  v17 = OUTLINED_FUNCTION_7_13();
  [v17 v18];

  v19 = [*&v1[OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView] layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_274A0EF10;
  *(v20 + 56) = v2;
  *(v20 + 32) = v5;
  v21 = v5;
  sub_27480FF3C(v20, v19);

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  v32 = sub_2748102CC;
  v33 = v23;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_274760264;
  v31 = &block_descriptor_30;
  v24 = _Block_copy(&v28);
  v25 = v1;

  v32 = CGSizeMake;
  v33 = 0;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_27480D7B8;
  v31 = &block_descriptor_33_1;
  v26 = _Block_copy(&v28);
  OUTLINED_FUNCTION_2_23();
  [v22 v27];
  _Block_release(v26);
  _Block_release(v24);
}

void sub_27480FBAC(void *a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_27481039C;
  *(v10 + 24) = v9;
  v16[4] = sub_27475D1DC;
  v16[5] = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_274963064;
  v16[3] = &block_descriptor_56;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

id sub_27480FD5C(uint64_t a1)
{
  v2 = OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView;
  v3 = [*(a1 + OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView) layer];
  v4 = sub_2749F9884();
  v5 = sub_2749FCD64();
  [v3 setValue:v4 forKeyPath:v5];

  v6 = *(a1 + v2);
  CGAffineTransformMakeScale(&v8, 1.8, 1.8);
  [v6 setTransform_];
  return [*(a1 + v2) setAlpha_];
}

void *sub_27480FE78(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_274760264;
    v10[3] = &block_descriptor_59;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  [v4 initWithDuration:v7 dampingRatio:a3 animations:a4];
  v8 = OUTLINED_FUNCTION_78();
  _Block_release(v8);
  return v4;
}

void sub_27480FF3C(uint64_t a1, void *a2)
{
  v3 = sub_2749FCF74();

  [a2 setFilters_];
}

uint64_t sub_27480FFAC(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

char *sub_274810010(void *a1, char a2)
{
  v4 = objc_allocWithZone(type metadata accessor for WFPreviewNavigationController());

  return sub_274810068(a1, a2, v4);
}

char *sub_274810068(void *a1, char a2, _BYTE *a3)
{
  *&a3[OBJC_IVAR___WFPreviewNavigationController_iconTitleSpacing] = 0x4014000000000000;
  v6 = &a3[OBJC_IVAR___WFPreviewNavigationController____lazy_storage___previewScale];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView;
  type metadata accessor for WFPickerNavigationBarBackgroundView();
  *&a3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR___WFPreviewNavigationController_navigationButtons;
  *&a3[v8] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&a3[OBJC_IVAR___WFPreviewNavigationController_visualEffectView] = 0;
  v9 = OBJC_IVAR___WFPreviewNavigationController_titleLabel;
  *&a3[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR___WFPreviewNavigationController_grabberView;
  *&a3[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&a3[OBJC_IVAR___WFPreviewNavigationController_rootViewController] = a1;
  v11 = a1;
  v12 = [v11 iconPreview];
  *&a3[OBJC_IVAR___WFPreviewNavigationController_iconPreview] = v12;
  a3[OBJC_IVAR___WFPreviewNavigationController_isInSheetView] = a2;
  v13 = 0.0;
  if (a2)
  {
    v13 = 13.0;
  }

  *&a3[OBJC_IVAR___WFPreviewNavigationController_grabberWithTopPaddingHeight] = v13;
  *&a3[OBJC_IVAR___WFPreviewNavigationController_previewPadding] = 0x403E000000000000;
  v14 = OBJC_IVAR___WFPreviewNavigationController_navigationBarHeight;
  if (a2)
  {
    *&a3[OBJC_IVAR___WFPreviewNavigationController_navigationBarHeight] = 0x4054000000000000;
    [v11 previewDimension];
    v16 = v15;

    v17 = v16 + 60.0 + 6.5;
  }

  else
  {
    *&a3[OBJC_IVAR___WFPreviewNavigationController_navigationBarHeight] = 0x4053000000000000;
    [v11 previewDimension];
    v19 = v18;

    v17 = v19 + 60.0;
  }

  *&a3[OBJC_IVAR___WFPreviewNavigationController_additionContainedScrollViewTopInset] = v17 - *&a3[v14];
  v22.receiver = a3;
  v22.super_class = type metadata accessor for WFPreviewNavigationController();
  v20 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  [*&v20[OBJC_IVAR___WFPreviewNavigationController_rootViewController] setPreviewNavigationController_];
  return v20;
}

id OUTLINED_FUNCTION_18_12(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_27481041C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (v3 == 254)
  {
    if (v6 == 254)
    {
      v12 = OUTLINED_FUNCTION_66();
      sub_274813620(v12, v13, 0xFEu);
      v9 = OUTLINED_FUNCTION_32_1();
      v11 = -2;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v3 != 255)
  {
    if (v6 <= 0xFD)
    {
      v54[0] = *a1;
      v54[1] = v2;
      v55 = v3;
      v52[0] = v5;
      v52[1] = v4;
      v53 = v6;
      v27 = OUTLINED_FUNCTION_11_15();
      sub_27481360C(v27, v28, v29);
      v30 = OUTLINED_FUNCTION_3_30();
      sub_27481360C(v30, v31, v32);
      v33 = OUTLINED_FUNCTION_11_15();
      sub_27481360C(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_3_30();
      sub_27481360C(v36, v37, v38);
      v14 = static SmartShortcutPickerSection.ID.== infix(_:_:)(v54, v52);
      v39 = OUTLINED_FUNCTION_3_30();
      sub_274813620(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_11_15();
      sub_274813620(v42, v43, v44);
      v45 = OUTLINED_FUNCTION_11_15();
      sub_274813620(v45, v46, v47);
      v48 = OUTLINED_FUNCTION_3_30();
      sub_274813620(v48, v49, v50);
      return v14 & 1;
    }

    goto LABEL_9;
  }

  if (v6 != 255)
  {
LABEL_9:
    v15 = OUTLINED_FUNCTION_11_15();
    sub_27481360C(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_3_30();
    sub_27481360C(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_3_30();
    sub_274813620(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_11_15();
    sub_274813620(v24, v25, v26);
    v14 = 0;
    return v14 & 1;
  }

  v7 = OUTLINED_FUNCTION_66();
  sub_274813620(v7, v8, 0xFFu);
  v9 = OUTLINED_FUNCTION_32_1();
  v11 = -1;
LABEL_7:
  sub_274813620(v9, v10, v11);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_274810560(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000;
    if (v6 || (sub_2749FDCC4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7262694C72657375 && a2 == 0xEB00000000797261)
    {

      return 2;
    }

    else
    {
      v8 = sub_2749FDCC4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_274810674(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x6E6F6974636573;
  }

  return 0x7262694C72657375;
}

uint64_t sub_2748106CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2749FDCC4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s10WorkflowUI0A4IconO0C5ErrorO9hashValueSivg_0()
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](0);
  return sub_2749FDE44();
}

uint64_t sub_27481078C(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0F0, &qword_274A169E0);
  OUTLINED_FUNCTION_43();
  v34 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v32 = &v26 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0F8, &qword_274A169E8);
  OUTLINED_FUNCTION_43();
  v33 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v31 = &v26 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A100, &qword_274A169F0);
  OUTLINED_FUNCTION_43();
  v29 = v10;
  v30 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A108, &qword_274A169F8);
  OUTLINED_FUNCTION_43();
  v16 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = *v1;
  v27 = v1[1];
  v28 = v20;
  v21 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274813B10();
  sub_2749FDE94();
  if (v21 == 254)
  {
    LOBYTE(v37[0]) = 2;
    sub_274813BB0();
    v22 = v32;
    OUTLINED_FUNCTION_33_7(&type metadata for SmartShortcutPickerViewLayout.SectionFilter.UserLibraryCodingKeys, v37);
    (*(v34 + 8))(v22, v36);
    return (*(v16 + 8))(v19, v14);
  }

  if (v21 == 255)
  {
    LOBYTE(v37[0]) = 0;
    sub_274813CAC();
    OUTLINED_FUNCTION_33_7(&type metadata for SmartShortcutPickerViewLayout.SectionFilter.AllCodingKeys, v37);
    (*(v29 + 8))(v13, v30);
    return (*(v16 + 8))(v19, v14);
  }

  LOBYTE(v37[0]) = 1;
  sub_274813C04();
  OUTLINED_FUNCTION_33_7(&type metadata for SmartShortcutPickerViewLayout.SectionFilter.SectionCodingKeys, v37);
  v37[0] = v28;
  v37[1] = v27;
  v38 = v21;
  sub_274813D00();
  sub_2749FDC44();
  v24 = OUTLINED_FUNCTION_99();
  v25(v24);
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_274810B18()
{
  v1 = *(v0 + 16);
  if (v1 == 254)
  {
LABEL_9:
    v2 = 2;
  }

  else
  {
    if (v1 != 255)
    {
      v3 = *v0;
      v4 = v0[1];
      MEMORY[0x277C5FB60](1);
      switch(v1)
      {
        case 1:
          v5 = 1;
          goto LABEL_12;
        case 2:
          v5 = 3;
LABEL_12:
          MEMORY[0x277C5FB60](v5);
          OUTLINED_FUNCTION_32_1();

          return sub_2749FCE24();
        case 3:
          if (!(v3 | v4))
          {
            goto LABEL_9;
          }

          v2 = 4;
          return MEMORY[0x277C5FB60](v2);
        default:
          MEMORY[0x277C5FB60](0);
          break;
      }
    }

    v2 = 0;
  }

  return MEMORY[0x277C5FB60](v2);
}

uint64_t sub_274810BEC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_2749FDDF4();
  if (v3 == 254)
  {
LABEL_9:
    v4 = 2;
  }

  else
  {
    if (v3 != 255)
    {
      MEMORY[0x277C5FB60](1);
      switch(v3)
      {
        case 1:
          v5 = 1;
          goto LABEL_13;
        case 2:
          v5 = 3;
LABEL_13:
          MEMORY[0x277C5FB60](v5);
          sub_2749FCE24();
          return sub_2749FDE44();
        case 3:
          if (!(v2 | v1))
          {
            goto LABEL_9;
          }

          v4 = 4;
          goto LABEL_10;
        default:
          MEMORY[0x277C5FB60](0);
          break;
      }
    }

    v4 = 0;
  }

LABEL_10:
  MEMORY[0x277C5FB60](v4);
  return sub_2749FDE44();
}

uint64_t sub_274810CDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0A0, &qword_274A169B8);
  OUTLINED_FUNCTION_43();
  v51 = v3;
  v52 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v55 = &v48 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0A8, &qword_274A169C0);
  OUTLINED_FUNCTION_43();
  v53 = v8;
  v54 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0B0, &qword_274A169C8);
  OUTLINED_FUNCTION_43();
  v50 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0B8, &qword_274A169D0);
  OUTLINED_FUNCTION_43();
  v57 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274813B10();
  v18 = v60;
  sub_2749FDE74();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v48 = v10;
  v49 = v14;
  v60 = a1;
  sub_2749FDBF4();
  result = sub_27493D810();
  v23 = v15;
  if (v21 == v22 >> 1)
  {
LABEL_9:
    v31 = sub_2749FD9B4();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0C8, &qword_274A169D8);
    *v33 = &type metadata for SmartShortcutPickerViewLayout.SectionFilter;
    sub_2749FDBA4();
    sub_2749FD9A4();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = OUTLINED_FUNCTION_20_11();
    v35(v34, v23);
    a1 = v60;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v21 < (v22 >> 1))
  {
    v24 = v15;
    v25 = *(v20 + v21);
    sub_27493D804();
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 == v29 >> 1)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v58) = 1;
          sub_274813C04();
          OUTLINED_FUNCTION_21_10(&type metadata for SmartShortcutPickerViewLayout.SectionFilter.SectionCodingKeys, &v58);
          v30 = v56;
          sub_274813C58();
          sub_2749FDBE4();
          swift_unknownObjectRelease();
          v42 = OUTLINED_FUNCTION_36_7();
          v43(v42);
          v44 = OUTLINED_FUNCTION_20_11();
          v45(v44, v24);
          v46 = v58;
          v47 = v59;
LABEL_14:
          *v30 = v46;
          *(v30 + 16) = v47;
          return __swift_destroy_boxed_opaque_existential_0(v60);
        }

        LOBYTE(v58) = 2;
        sub_274813BB0();
        v37 = v55;
        OUTLINED_FUNCTION_21_10(&type metadata for SmartShortcutPickerViewLayout.SectionFilter.UserLibraryCodingKeys, &v58);
        swift_unknownObjectRelease();
        (*(v52 + 8))(v37, v51);
        v40 = OUTLINED_FUNCTION_17_9();
        v41(v40);
        v46 = 0uLL;
        v47 = -2;
      }

      else
      {
        LOBYTE(v58) = 0;
        sub_274813CAC();
        v36 = v49;
        OUTLINED_FUNCTION_21_10(&type metadata for SmartShortcutPickerViewLayout.SectionFilter.AllCodingKeys, &v58);
        swift_unknownObjectRelease();
        (*(v50 + 8))(v36, v48);
        v38 = OUTLINED_FUNCTION_17_9();
        v39(v38);
        v46 = 0uLL;
        v47 = -1;
      }

      v30 = v56;
      goto LABEL_14;
    }

    v23 = v24;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}