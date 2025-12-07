id sub_1CFBA1DA4()
{
  result = [objc_allocWithZone(CAUILayoutManager) init];
  qword_1EE04CFB8 = result;
  return result;
}

id sub_1CFBA1DFC()
{
  v1 = v0;
  v2 = OBJC_IVAR___CAUILayoutManager__tapRecentsToCall;
  v0[OBJC_IVAR___CAUILayoutManager__tapRecentsToCall] = 0;
  v3 = &v0[OBJC_IVAR___CAUILayoutManager_layoutKey];
  *v3 = 0x79614C656E6F6850;
  v3[1] = 0xEB0000000074756FLL;
  v4 = &v0[OBJC_IVAR___CAUILayoutManager_tapRecentsToCallKey];
  *v4 = 0xD000000000000010;
  v4[1] = 0x80000001CFCABBA0;
  v5 = OBJC_IVAR___CAUILayoutManager_observers;
  *&v1[v5] = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
  sub_1CFBA2114();
  v7 = v6;
  v9 = *v3;
  v8 = v3[1];
  v10 = objc_opt_self();

  v11 = [v10 currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v15 = 1;
  if (!v12)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v14 = [v13 phoneClassicEnabled];

    if (v14)
    {
      v15 = 0;
    }
  }

  v16 = sub_1CFBA2284(v9, v8);
  v18 = v17;

  if (v18)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  *&v1[OBJC_IVAR___CAUILayoutManager__current] = v19;
  sub_1CFBA2114();
  v21 = v20;

  v22 = sub_1CFC9F728();

  v23 = [v21 BOOLForKey_];

  v1[v2] = v23;
  v34.receiver = v1;
  v34.super_class = CAUILayoutManager;
  v24 = objc_msgSendSuper2(&v34, sel_init);
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 defaultCenter];
  [v27 addObserver:v26 selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

  sub_1CFBA2114();
  v29 = v28;
  v30 = sub_1CFC9F728();
  v31 = [v29 objectForKey_];

  if (v31)
  {
    sub_1CFC9FF18();
    swift_unknownObjectRelease();

    sub_1CFBA235C(v33);
  }

  else
  {
    memset(v33, 0, sizeof(v33));
    sub_1CFBA235C(v33);
    [v26 setLayout_];
  }

  return v26;
}

void sub_1CFBA2114()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = sub_1CFC9F768();
  v4 = v3;

  if (v2 == 0xD000000000000015 && 0x80000001CFCABBE0 == v4)
  {
  }

  else
  {
    v6 = sub_1CFCA02B8();

    if ((v6 & 1) == 0)
    {
LABEL_7:
      v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v8 = sub_1CFC9F728();
      v9 = [v7 initWithSuiteName_];

      if (!v9)
      {
        __break(1u);
      }

      return;
    }
  }

  v10 = [objc_opt_self() standardUserDefaults];

  v11 = v10;
}

id sub_1CFBA2284(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9F728();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1CFC9FF18();
    swift_unknownObjectRelease();
    sub_1CFBA235C(v8);
    v5 = sub_1CFC9F728();
    v6 = [v2 integerForKey_];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_1CFBA235C(v8);
    return 0;
  }

  return v6;
}

uint64_t sub_1CFBA235C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE650, &qword_1CFCA4B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBA2520()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CFBA2730(void *a1, char a2, char *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *&a3[OBJC_IVAR___CAUILayoutManager_observers];
  _s24LayoutUpdateRegistrationCMa();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CFBA29C0;
  *(v10 + 24) = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _Block_copy(a4);
  v11 = v9;

  [v11 setObject:v10 forKey:sub_1CFCA02A8()];

  swift_unknownObjectRelease();
  if (a2)
  {
    (a4)[2](a4, [a3 current]);
  }
}

uint64_t CAUILayoutManager.current.getter()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    return 1;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4 = [v3 phoneClassicEnabled];

  if (!v4)
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR___CAUILayoutManager__current);
  }
}

uint64_t sub_1CFBA296C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1CFBA29FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *RecentsViewController.init(recentsDetailProvider:recentsDataSource:favoritesDataSource:showDialer:addFavorite:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_1CFC698E8(a1, a2, a3, a4, a5, a6, a7);

  return v8;
}

uint64_t sub_1CFBA2AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF810, &qword_1CFCA7900);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DetailsPresenter(uint64_t a1)
{
  result = qword_1EE04FB68;
  if (!qword_1EE04FB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecentsSectionController(uint64_t a1)
{
  result = qword_1EE04F4E0;
  if (!qword_1EE04F4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFBA2BB0(uint64_t a1)
{
  sub_1CFC7A9D0(319);
  if (v1 <= 0x3F)
  {
    sub_1CFC7AA38(319);
    if (v2 <= 0x3F)
    {
      sub_1CFC7AA9C(319);
      if (v3 <= 0x3F)
      {
        sub_1CFC9CF08();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1CFBA2D80(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for RecentsRemindMeActionConfigurator(uint64_t a1)
{
  result = qword_1EE04E1C8;
  if (!qword_1EE04E1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFBA2E38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFC9FEB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFBA2E8C(uint64_t a1)
{
  sub_1CFBA2E38(319, &qword_1EE04D638, MEMORY[0x1E69C6D40]);
  if (v1 <= 0x3F)
  {
    sub_1CFBA2E38(319, &qword_1EE04D6B8, MEMORY[0x1E6993688]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFBA3000(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFBA3038(uint64_t a1)
{
  result = sub_1CFC9C198();
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

void SectionnedCollectionViewController.init(sections:)(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_viewAppeared] = 0;
  v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items] = v4;
  v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection] = 0;
  v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear] = 0;
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_configuredSectionHashes] = MEMORY[0x1E69E7CD0];
  v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_finishedSectionReload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED3D8, &qword_1CFCA22D0);
  swift_allocObject();
  *&v1[v5] = sub_1CFC9DCD8();
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource] = 0;
  v6 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_loadedDebounce;
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  sub_1CFC9FC28();
  sub_1CFC9D508();
  swift_allocObject();
  *&v1[v6] = sub_1CFC9D4E8();
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections] = a1;
  v7 = objc_allocWithZone(MEMORY[0x1E69DC850]);
  v55 = a1;

  v8 = [v7 init];
  v58.receiver = v2;
  v58.super_class = type metadata accessor for SectionnedCollectionViewController();
  v9 = objc_msgSendSuper2(&v58, sel_initWithCollectionViewLayout_, v8);

  v10 = v9;
  if (![v10 collectionView])
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED400, &qword_1CFCA22D8));
  v12 = sub_1CFC9DBC8();
  v13 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource;
  v14 = *&v10[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource];
  *&v10[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource] = v12;

  v15 = *&v10[v13];
  if (v15)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = v15;

    sub_1CFC9DBD8();
  }

  v17 = [v10 collectionView];
  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = v17;
  [v17 setDataSource_];

  v54 = *(a1 + 16);
  if (v54)
  {
    v19 = 0;
    v20 = (a1 + 40);
    while (v19 < *(v55 + 16))
    {
      v21 = *v20;
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 56);
      v24 = v10;
      v25 = v10;
      swift_unknownObjectRetain();
      v23(v24, &protocol witness table for SectionnedCollectionViewController, ObjectType, v21);
      v26 = [v25 collectionView];
      if (!v26)
      {
        goto LABEL_23;
      }

      v27 = v26;
      ++v19;
      (*(v21 + 104))(v26, ObjectType, v21);

      (*(v21 + 40))(v56, ObjectType, v21);
      __swift_project_boxed_opaque_existential_1(v56, v56[3]);
      v28 = sub_1CFC9F6D8();
      swift_beginAccess();
      sub_1CFBC7D58(v57, v28);
      swift_endAccess();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      v20 += 2;
      v10 = v24;
      if (v54 == v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_10:
  v29 = [v10 collectionView];
  if (!v29)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v29;
  [v29 setDragDelegate_];

  v31 = [v10 collectionView];
  if (!v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = v31;
  [v31 setDropDelegate_];

  v33 = [v10 collectionView];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  [v33 setDragInteractionEnabled_];

  v35 = [v10 collectionView];
  if (!v35)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = v35;
  [v35 setAllowsSelection_];

  v37 = [v10 collectionView];
  if (!v37)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v38 = v37;
  [v37 setAllowsMultipleSelectionDuringEditing_];

  v39 = [v10 collectionView];
  if (!v39)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v39;
  v53 = MEMORY[0x1E69E6370];
  LOBYTE(v52) = 2;
  sub_1CFC9CD28();
  [v40 setAllowsMultipleSelection_];

  v41 = [objc_opt_self() currentDevice];
  v42 = [v41 userInterfaceIdiom];

  if (v42 != 6)
  {
LABEL_19:
    v45 = [v10 collectionView];
    if (v45)
    {
      v46 = v45;
      v47 = sub_1CFC9F728();
      [v46 setAccessibilityIdentifier_];

      v48 = [v10 collectionView];
      if (v48)
      {

        type metadata accessor for BundleClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v50 = [objc_opt_self() bundleForClass_];
        sub_1CFC9BE28();

        v51 = sub_1CFC9F728();

        [v48 setAccessibilityLabel_];

        return;
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v43 = [v10 collectionView];
  if (v43)
  {
    v44 = v43;
    [v43 setClipsToBounds_];

    goto LABEL_19;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1CFBA38D0()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBA392C(uint64_t a1, uint64_t a2)
{
  v13[5] = (*(a2 + 96))();
  v13[2] = a1;
  v13[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for EditAction(255, AssociatedTypeWitness, v5, v6);
  v7 = sub_1CFC9F918();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7B8, &qword_1CFCA78C8);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1CFBA3E80(sub_1CFBA42A0, v13, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  return v11;
}

uint64_t sub_1CFBA3A44()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_1CFBA3AA4(v0);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1CFBA3AA4(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE90, &unk_1CFCA86F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA1DC0;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  v6 = sub_1CFC9BE28();
  v8 = v7;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = [v4 &:ObjCClassFromMetadata OBJC:0xE000000000000000 LABEL:? PROTOCOL:? :? :?UISearchControllerDelegate + 3];
  v11 = sub_1CFC9BE28();
  v13 = v12;

  *(v2 + 32) = v6;
  *(v2 + 40) = v8;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = sub_1CFC0A28C;
  *(v2 + 80) = sub_1CFC7418C;
  *(v2 + 88) = 0;
  *(v2 + 96) = sub_1CFC7F3F8;
  *(v2 + 104) = v9;
  *(v2 + 112) = v11;
  *(v2 + 120) = v13;
  v14 = [v4 bundleForClass_];
  v15 = sub_1CFC9BE28();
  v17 = v16;

  v18 = [objc_opt_self() systemRedColor];
  v19 = swift_allocObject();
  swift_weakInit();
  result = v2;
  *(v2 + 128) = v15;
  *(v2 + 136) = v17;
  *(v2 + 144) = 1;
  *(v2 + 152) = sub_1CFC0A908;
  *(v2 + 160) = 0;
  *(v2 + 168) = v18;
  *(v2 + 176) = sub_1CFBAB3D8;
  *(v2 + 184) = 0;
  *(v2 + 192) = sub_1CFC7F400;
  *(v2 + 200) = v19;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  return result;
}

uint64_t sub_1CFBA3DB8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBA3E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CFBA3E80(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1CFC9FA28();
  if (!v19)
  {
    return sub_1CFC9F8D8();
  }

  v41 = v19;
  v45 = sub_1CFCA01A8();
  v32 = sub_1CFCA01B8();
  sub_1CFCA0158();
  result = sub_1CFC9FA18();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1CFC9FA88();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1CFCA0198();
      result = sub_1CFC9FA58();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFBA42C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v31 = a1[2];
  v32 = v8;
  v9 = a1[5];
  v33 = a1[4];
  v34 = v9;
  v10 = a1[1];
  v30[0] = *a1;
  v30[1] = v10;
  v36 = v30[0];
  v11 = v10;
  v12 = *(&v10 + 1);
  v13 = v31;
  v37 = *(&v31 + 1);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = a1[3];
  *(v14 + 64) = a1[2];
  *(v14 + 80) = v15;
  v16 = a1[5];
  *(v14 + 96) = a1[4];
  *(v14 + 112) = v16;
  v17 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = a1[3];
  *(v18 + 64) = a1[2];
  *(v18 + 80) = v19;
  v20 = a1[5];
  *(v18 + 96) = a1[4];
  *(v18 + 112) = v20;
  v21 = *a1;
  v22 = a1[1];
  *(v18 + 32) = *a1;
  *(v18 + 48) = v22;
  v35 = v20;
  *a4 = v21;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  *(a4 + 48) = sub_1CFBB44B4;
  *(a4 + 56) = v14;
  *(a4 + 64) = sub_1CFC56E68;
  *(a4 + 72) = v18;
  *(a4 + 80) = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for EditAction(0, AssociatedTypeWitness, v24, v25);
  v27 = *(*(v26 - 8) + 16);
  v27(v29, v30, v26);
  v27(v29, v30, v26);
  sub_1CFBA44C0(&v36, v29);

  sub_1CFBA29FC(&v37, v29, &unk_1EC4EFAD0, &qword_1CFCA78D0);
  return sub_1CFBA29FC(&v35, v29, &qword_1EC4EF7C0, &qword_1CFCA78D8);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void *sub_1CFBA4538(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFBA4558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFBA4558(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C0, &qword_1CFCA87D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C8, &qword_1CFCA24B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFBA46A8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1CFBA47B0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C8, &qword_1CFCA24B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CFBA47B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C0, &qword_1CFCA87D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C8, &qword_1CFCA24B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1CFBA48FC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);

  v16 = v6;
  v8 = 0;
  if (v6)
  {
    v9 = (v5 + 40);
    while (v8 < *(v5 + 16))
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 40);
      swift_unknownObjectRetain();
      v12(v18, ObjectType, v10);
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      v13 = sub_1CFC9F6D8();
      v14 = swift_getObjectType();
      (*(a2 + 40))(v17, v14, a2);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v15 = sub_1CFC9F6D8();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
      if (v13 == v15)
      {
        goto LABEL_7;
      }

      ++v8;
      v9 += 2;
      if (v16 == v8)
      {
        v8 = 0;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v8;
  }

  return result;
}

unint64_t sub_1CFBA4A9C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  *(a1 + 24) = &type metadata for Sections;
  result = sub_1CFBA4AE4();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1CFBA4AE4()
{
  result = qword_1EE04D708;
  if (!qword_1EE04D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D708);
  }

  return result;
}

unint64_t sub_1CFBA4B3C()
{
  result = qword_1EE04D700;
  if (!qword_1EE04D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D700);
  }

  return result;
}

uint64_t sub_1CFBA4B90()
{
  v1 = *v0;
  sub_1CFCA0338();
  MEMORY[0x1D3872880](v1);
  return sub_1CFCA0378();
}

void SectionnedCollectionViewController.selectedRows(in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1CFC9C0A8();
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9C138();
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = sub_1CFBA48FC(a1, a2);
  if (v18)
  {
    sub_1CFBA5194(&unk_1EE04D6C8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    sub_1CFC9FF48();
    return;
  }

  v19 = v17;
  v20 = [v3 collectionView];
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v20;
  v22 = [v20 indexPathsForSelectedItems];

  if (v22)
  {
    v47 = v7;
    v48 = a3;
    v23 = sub_1CFC9F8A8();

    v24 = MEMORY[0x1E69E7CC0];
    v57 = *(v23 + 16);
    if (v57)
    {
      v25 = 0;
      v51 = (v59 + 8);
      v52 = v23;
      v55 = (v59 + 32);
      v56 = v59 + 16;
      v53 = v19;
      v54 = v13;
      while (v25 < *(v23 + 16))
      {
        v26 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v27 = *(v59 + 72);
        (*(v59 + 16))(v16, v23 + v26 + v27 * v25, v9);
        if (sub_1CFC9C128() == v19)
        {
          v28 = *v55;
          (*v55)(v13, v16, v9);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBCA940(0, v24[2] + 1, 1);
            v24 = v61;
          }

          v31 = v24[2];
          v30 = v24[3];
          if (v31 >= v30 >> 1)
          {
            sub_1CFBCA940((v30 > 1), v31 + 1, 1);
            v24 = v61;
          }

          v24[2] = v31 + 1;
          v32 = v24 + v26 + v31 * v27;
          v13 = v54;
          v28(v32, v54, v9);
          v23 = v52;
          v19 = v53;
        }

        else
        {
          (*v51)(v16, v9);
        }

        if (v57 == ++v25)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_16:

    v33 = v24[2];
    if (v33)
    {
      v61 = MEMORY[0x1E69E7CC0];
      sub_1CFBAAA38(0, v33, 0);
      v34 = v61;
      v35 = *(v59 + 16);
      v36 = v24 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v56 = *(v59 + 72);
      v57 = v35;
      v59 += 16;
      v37 = (v59 - 8);
      do
      {
        v38 = v58;
        v57(v58, v36, v9);
        v39 = sub_1CFC9C0F8();
        (*v37)(v38, v9);
        v61 = v34;
        v41 = v34[2];
        v40 = v34[3];
        if (v41 >= v40 >> 1)
        {
          sub_1CFBAAA38((v40 > 1), v41 + 1, 1);
          v34 = v61;
        }

        v34[2] = v41 + 1;
        v34[v41 + 4] = v39;
        v36 += v56;
        --v33;
      }

      while (v33);
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    v7 = v47;
    a3 = v48;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  sub_1CFBA5194(&unk_1EE04D6C8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v42 = v49;
  sub_1CFC9FF48();
  v43 = v34[2];
  if (v43)
  {
    v44 = v34 + 4;
    do
    {
      v45 = *v44++;
      v60 = v45;
      sub_1CFC9FF38();
      --v43;
    }

    while (v43);
  }

  (*(v50 + 32))(a3, v42, v7);
}

uint64_t sub_1CFBA5194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _s10CallsAppUI34SectionnedCollectionViewControllerC24sectionNeedsLayoutUpdate8animatedySb_tF_0(char a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for CollectionViewCompositionalLayout();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC10CallsAppUI33CollectionViewCompositionalLayout_initialLayoutAttributeProvider];
  *v8 = sub_1CFBBA16C;
  v8[1] = v4;
  v9 = &v7[OBJC_IVAR____TtC10CallsAppUI33CollectionViewCompositionalLayout_finalLayoutAttributesForDisappearingItem];
  *v9 = sub_1CFBCCEF0;
  v9[1] = v5;
  aBlock[4] = sub_1CFBADA6C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBAD9F0;
  aBlock[3] = &block_descriptor_62;
  v10 = _Block_copy(aBlock);

  v14.receiver = v7;
  v14.super_class = v6;
  v11 = objc_msgSendSuper2(&v14, sel_initWithSectionProvider_, v10);

  _Block_release(v10);
  v12 = [v1 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setCollectionViewLayout:v11 animated:a1 & 1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CFBA5404(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1CFBA5464()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE610, &qword_1CFCA4AD8);
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - v6;
  v16 = sub_1CFC9C848();
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v8 = sub_1CFC9FC28();
  v15 = v8;
  v9 = sub_1CFC9FBF8();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE618, &unk_1CFCA4AE0);
  sub_1CFBA57C0(&qword_1EE04D5C8, &qword_1EC4EE618, &unk_1CFCA4AE0, MEMORY[0x1E695BED8]);
  sub_1CFC72300(&qword_1EE04FF90, &qword_1EE04FF80, 0x1E69E9610, MEMORY[0x1E69E8028]);
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v4, &qword_1EC4EF860, &qword_1CFCA4AD0);

  swift_allocObject();
  swift_weakInit();
  sub_1CFBA57C0(&qword_1EE04D5E0, &qword_1EC4EE610, &qword_1CFCA4AD8, MEMORY[0x1E695BE98]);
  v10 = v14;
  v11 = sub_1CFC9DD68();

  (*(v5 + 8))(v7, v10);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_updateCancellable) = v11;
}

uint64_t sub_1CFBA57C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFBA5808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE538, qword_1CFCA9BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CFBA5878()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
    swift_beginAccess();
    v31 = *(*(v1 + v2) + 16);
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v29 = v3;
    v30 = v0;
    v4 = *(v0 + v3);
    v5 = *(v4 + 16);

    v6 = (v4 + 40);
    v32 = -v5;
    v7 = -1;
    while (v32 + v7 != -1)
    {
      if (++v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_25:
        swift_once();
        goto LABEL_17;
      }

      v8 = v6 + 2;
      v9 = *v6;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 40);
      swift_unknownObjectRetain();
      v11(v33, ObjectType, v9);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      v12 = sub_1CFC9F6D8();
      LODWORD(v9) = *(v1 + 64);
      sub_1CFCA0338();
      if (v9)
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      MEMORY[0x1D3872880](v13);
      v14 = sub_1CFCA0378();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v6 = v8;
      if (v12 == v14)
      {

        if (!v31)
        {
          if (qword_1EE050010 == -1)
          {
            goto LABEL_11;
          }

          goto LABEL_27;
        }

LABEL_22:

        return;
      }
    }

    if (!v31)
    {
      goto LABEL_22;
    }

    if (qword_1EE050010 != -1)
    {
      goto LABEL_25;
    }

LABEL_17:
    v22 = sub_1CFC9D938();
    __swift_project_value_buffer(v22, qword_1EE052308);
    v23 = sub_1CFC9D918();
    v24 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1CFB9F000, v23, v24, "Reminders Section was not present but now needed. Adding it.", v25, 2u);
      MEMORY[0x1D3873280](v25, -1, -1);
    }

    v26 = *(v30 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection) != 0;
    swift_beginAccess();
    v27 = sub_1CFC6A6B0(&qword_1EE04F4F8, type metadata accessor for RecentsSectionController, &unk_1CFCA85E8);
    if (*(*(v30 + v29) + 16) >= v26)
    {
      v28 = v27;

      sub_1CFBA73C4(v26, v26, v1, v28);
      swift_endAccess();

      goto LABEL_21;
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_11:
    v15 = sub_1CFC9D938();
    __swift_project_value_buffer(v15, qword_1EE052308);
    v16 = sub_1CFC9D918();
    v17 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1CFB9F000, v16, v17, "Reminders Section was present but no longer needed. Removing it.", v18, 2u);
      MEMORY[0x1D3873280](v18, -1, -1);
    }

    swift_beginAccess();

    v19 = sub_1CFC695D0((v30 + v29), v1);

    v20 = *(*(v30 + v29) + 16);
    if (v20 >= v19)
    {
      sub_1CFBCB5C4(v19, v20);
      v21 = swift_endAccess();
LABEL_21:
      sub_1CFBA76C8(v21);
      goto LABEL_22;
    }

    __break(1u);
  }
}

void *sub_1CFBA5CC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t RecentsViewController.finishedFirstLoadSubject.getter()
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF938, &qword_1CFCA79F8);
  v1 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v3 = &v11 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF940, &unk_1CFCA7A00);
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v11 - v5;
  v14 = *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_finishedSectionReload);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED3D8, &qword_1CFCA22D0);
  sub_1CFBA57C0(&qword_1EE04D5B0, &qword_1EC4ED3D8, &qword_1CFCA22D0, MEMORY[0x1E695BF88]);
  sub_1CFC9DD78();

  sub_1CFC9DC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF948, &qword_1CFCA7A10);
  sub_1CFBA57C0(&unk_1EE04D600, &qword_1EC4EF938, &qword_1CFCA79F8, MEMORY[0x1E695BDE0]);
  sub_1CFBA57C0(&qword_1EE04D598, &unk_1EC4EF948, &qword_1CFCA7A10, MEMORY[0x1E695C008]);
  v7 = v12;
  sub_1CFC9DDC8();
  (*(v1 + 8))(v3, v7);
  sub_1CFBA57C0(&unk_1EE04D5F0, &qword_1EC4EF940, &unk_1CFCA7A00, MEMORY[0x1E695BE40]);
  v8 = v13;
  v9 = sub_1CFC9DD58();
  (*(v4 + 8))(v6, v8);
  return v9;
}

void sub_1CFBA6268()
{
  v1 = v0;
  sub_1CFBA2114();
  v3 = v2;
  v4 = sub_1CFC9F728();
  v5 = [v3 BOOLForKey_];

  [v1 setTapRecentsToCall_];
  sub_1CFBA2114();
  v7 = v6;
  v8 = sub_1CFBA2284(*&v1[OBJC_IVAR___CAUILayoutManager_layoutKey], *&v1[OBJC_IVAR___CAUILayoutManager_layoutKey + 8]);
  LOBYTE(v5) = v9;

  if ((v5 & 1) == 0)
  {

    [v1 setLayout_];
  }
}

Swift::Void __swiftcall CAUILayoutManager.setTapRecentsToCall(_:)(Swift::Bool a1)
{
  v2 = OBJC_IVAR___CAUILayoutManager__tapRecentsToCall;
  if (*(v1 + OBJC_IVAR___CAUILayoutManager__tapRecentsToCall) != a1)
  {
    *(v1 + OBJC_IVAR___CAUILayoutManager__tapRecentsToCall) = a1;
    sub_1CFBA2114();
    v4 = v3;
    v5 = *(v1 + v2);
    v6 = sub_1CFC9F728();
    [v4 setBool:v5 forKey:v6];
  }
}

void CAUILayoutManager.setLayout(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CAUILayoutManager__current);
  *(v1 + OBJC_IVAR___CAUILayoutManager__current) = a1;
  sub_1CFC19218(v2);
}

Swift::Void __swiftcall RecentsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = &v33 - v7;
  v9 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection;
  if (!*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection])
  {
    v10 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource];
    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter];
      type metadata accessor for FavoriteSectionController(0);
      swift_allocObject();
      swift_retain_n();

      v12 = sub_1CFBA6C6C(v10, v11);
      *&v2[v9] = v12;

      v13 = sub_1CFC6A6B0(qword_1EE04F018, type metadata accessor for FavoriteSectionController, &unk_1CFCA8D9C);
      swift_beginAccess();
      sub_1CFBA73C4(0, 0, v12, v13);
      swift_endAccess();

      sub_1CFBA76C8(v14);
    }

    else
    {
      *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection] = 0;
    }
  }

  v15 = [v2 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationBar];

    [v17 setPrefersLargeTitles_];
  }

  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20)
  {
    v21 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    v22 = sub_1CFC57D08();
    [v21 setSearchController_];

    v23 = [v18 currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if (((v24 == 5) & ~_UISolariumEnabled()) == 0 && v24 != 6)
    {
      [*&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem] setPreferredSearchBarPlacement_];
    }
  }

  swift_getKeyPath();
  v25 = sub_1CFC9CC28();

  if ((v25 & 1) != 0 && _UISolariumEnabled())
  {
    v26 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    v27 = [objc_allocWithZone(MEMORY[0x1E695D1D0]) init];
    [v26 _setBottomPalette_];
  }

  sub_1CFBAB5EC();
  sub_1CFBAD088();
  sub_1CFBAD5E0();
  sub_1CFC5B778();
  v28 = sub_1CFC9F998();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_1CFC9F968();
  v29 = v2;
  v30 = sub_1CFC9F958();
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E85E0];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = v29;
  sub_1CFBDC030(0, 0, v8, &unk_1CFCA7960, v31);

  v34.receiver = v29;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, sel_viewWillAppear_, a1);
}

uint64_t sub_1CFBA693C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9CC58();
  *a1 = result & 1;
  return result;
}

void sub_1CFBA69F0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SectionnedCollectionViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) = 1;
  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear;
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear) == 1)
  {
    sub_1CFBA8154(0, 0, 0);
    *(v1 + v3) = 0;
  }

  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_viewAppeared;
  if ((*(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_viewAppeared) & 1) == 0)
  {
    _s10CallsAppUI34SectionnedCollectionViewControllerC24sectionNeedsLayoutUpdate8animatedySb_tF_0(0);
    sub_1CFBA8154(0, 0, 0);
    sub_1CFC90328();
    *(v1 + v4) = 1;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 splitViewControllerLayoutEnvironment];

  if (v6 == 2)
  {
    sub_1CFBC5F74(1);
  }
}

void sub_1CFBA6B08(uint64_t a1)
{
  sub_1CFC17E50(319, &qword_1EE04D090, &qword_1EC4EFFB8, &qword_1CFCA8D18);
  if (v1 <= 0x3F)
  {
    sub_1CFC17E50(319, &qword_1EE04D088, &qword_1EC4EFFC0, &qword_1CFCA8D20);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFBA6C6C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFD0, &unk_1CFCA8DB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFD8, &unk_1CFCA8DC8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = v30 - v7;
  v8 = sub_1CFC9CE08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 48) = [objc_allocWithZone(type metadata accessor for SimultaneousGestureRecognizerDelegate()) init];
  *(v2 + 56) = v12;
  v13 = MEMORY[0x1E69E7CD0];
  *(v2 + 80) = 0;
  *(v2 + 88) = v13;
  *(v2 + 96) = 0;
  type metadata accessor for FavoriteCellConfig(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4059000000000000;
  sub_1CFC9CDF8();
  (*(v9 + 32))(v14 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle, v11, v8);
  *(v14 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = 0;
  v15 = (v14 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  *v15 = 0;
  v15[1] = 0;
  sub_1CFC9C188();
  *(v2 + 104) = v14;
  v16 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_cellRegistration;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFB8, &qword_1CFCA8D18);
  v18 = *(*(v17 - 8) + 56);
  v18(v2 + v16, 1, 1, v17);
  v19 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_showAllCellRegistration;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFC0, &qword_1CFCA8D20);
  v21 = *(v20 - 8);
  v30[0] = *(v21 + 56);
  v30[1] = v21 + 56;
  (v30[0])(v2 + v19, 1, 1, v20);
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) = 3;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth) = 0;
  v22 = v33;
  *(v2 + 64) = a1;
  *(v2 + 72) = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a1;
  sub_1CFBA2D80(0, &qword_1EE04CF90, 0x1E69DC7F8);
  sub_1CFC9C608();
  swift_retain_n();

  v25 = v31;
  sub_1CFC9FB68();
  v18(v25, 0, 1, v17);
  v26 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_cellRegistration;
  swift_beginAccess();
  sub_1CFBA735C(v25, v2 + v26, &qword_1EC4EFFD8, &unk_1CFCA8DC8);
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
  v27 = v32;
  sub_1CFC9FB68();

  (v30[0])(v27, 0, 1, v20);
  v28 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_showAllCellRegistration;
  swift_beginAccess();
  sub_1CFBA735C(v27, v2 + v28, &qword_1EC4EFFD0, &unk_1CFCA8DB8);
  swift_endAccess();
  return v2;
}

uint64_t sub_1CFBA7170()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBA71A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBA726C(uint64_t a1)
{
  result = sub_1CFC9CE08();
  if (v2 <= 0x3F)
  {
    result = sub_1CFC9C198();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CFBA735C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1CFBA73C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1CFBA74A0(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1CFBA75D4(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

void *sub_1CFBA74A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD60, &unk_1CFCA8700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED548, &qword_1CFCA2450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1CFBA75D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED548, &qword_1CFCA2450);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

id sub_1CFBA76C8(uint64_t a1)
{
  v2 = v1;
  sub_1CFC90328();
  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v4 = *&v2[v3];
  v24 = *(v4 + 16);
  if (!v24)
  {
    return sub_1CFBA8154(0, 0, 1);
  }

  v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_configuredSectionHashes;
  v23 = v4 + 32;

  v26 = v5;
  result = swift_beginAccess();
  v7 = 0;
  v22 = v4;
  while (v7 < *(v4 + 16))
  {
    v8 = *(v23 + 16 * v7 + 8);
    v9 = *&v2[v26];
    ObjectType = swift_getObjectType();
    v11 = *(v8 + 40);
    swift_unknownObjectRetain();

    v25 = v11;
    v11(v28, ObjectType, v8);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v12 = sub_1CFC9F6D8();
    if (*(v9 + 16) && (v13 = v12, v14 = sub_1CFCA0328(), v15 = -1 << *(v9 + 32), v16 = v14 & ~v15, ((*(v9 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
    {
      v17 = ~v15;
      while (*(*(v9 + 48) + 8 * v16) != v13)
      {
        v16 = (v16 + 1) & v17;
        if (((*(v9 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v18 = *(v8 + 56);
      v19 = swift_unknownObjectRetain();
      v18(v19, &protocol witness table for SectionnedCollectionViewController, ObjectType, v8);
      result = [v2 collectionView];
      if (!result)
      {
        goto LABEL_16;
      }

      v20 = result;
      (*(v8 + 104))(result, ObjectType, v8);

      v25(v28, ObjectType, v8);
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v21 = sub_1CFC9F6D8();
      swift_beginAccess();
      sub_1CFBC7D58(v27, v21);
      swift_endAccess();
    }

    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1Tm(v28);
    ++v7;
    v4 = v22;
    if (v7 == v24)
    {

      return sub_1CFBA8154(0, 0, 1);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1CFBA7A90(uint64_t a1)
{
  sub_1CFC9C608();
  if (v1 <= 0x3F)
  {
    sub_1CFBA7B04(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CFBA7B04(uint64_t a1)
{
  if (!qword_1EE04D118)
  {
    sub_1CFC9C608();
    v1 = sub_1CFC9F918();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D118);
    }
  }
}

unint64_t sub_1CFBA7B5C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for Sections;
  result = sub_1CFBA4AE4();
  *(a1 + 32) = result;
  *a1 = 0;
  return result;
}

uint64_t sub_1CFBA7B94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void sub_1CFBA7BF8(void *a1)
{
  v2 = v1;
  v9[0] = a1;
  v3 = sub_1CFC9FC98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakAssign();
  v9[1] = sub_1CFC9C6B8();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFF0, &qword_1CFCA8E40);
  sub_1CFBA57C0(&unk_1EE04D5A0, &qword_1EC4EFFF0, &qword_1CFCA8E40, MEMORY[0x1E695BFB0]);
  sub_1CFC9DDA8();

  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  v7 = [objc_opt_self() defaultCenter];
  sub_1CFC9FCA8();

  swift_allocObject();
  swift_weakInit();
  sub_1CFBAAE00(&qword_1EE04CF98, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1CFC9DDA8();

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v2 action:sel_handleLongPress_];
  [v8 setDelegate_];
  [v9[0] addGestureRecognizer_];
}

uint64_t sub_1CFBA7F24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = 3;
    if (*(v2 + 16) > 3uLL)
    {
      v5 = 4;
    }

    if (*(result + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) != v5)
    {
      *(result + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) = v5;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        (*(v6 + 16))(0, ObjectType, v6);
        swift_unknownObjectRelease();
      }
    }

    sub_1CFC83538();
  }

  return result;
}

uint64_t sub_1CFBA811C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) == 1)
  {
    return sub_1CFBA8154(0, 0, result & 1);
  }

  *(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear) = 1;
  return result;
}

uint64_t sub_1CFBA8154(uint64_t a1, uint64_t a2, int a3)
{
  v217 = a3;
  v212 = a2;
  v216 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5D0, &qword_1CFCA24B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v226 = &v205 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v225 = &v205 - v6;
  v227 = sub_1CFC9DBB8();
  v223 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v224 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v207 = &v205 - v9;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5D8, &qword_1CFCA24C0);
  v222 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v220 = &v205 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5E0, &qword_1CFCA24C8);
  v208 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v209 = v12;
  v210 = &v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v221 = &v205 - v14;
  v237 = sub_1CFC9C138();
  v15 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v17 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CFC9D888();
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v205 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v205 - v23);
  if (qword_1EE04D9A0 != -1)
  {
    goto LABEL_242;
  }

  while (1)
  {
    v25 = sub_1CFC9D8B8();
    __swift_project_value_buffer(v25, qword_1EE04D9B0);
    sub_1CFC9D878();
    v26 = sub_1CFC9D8A8();
    v27 = sub_1CFC9FC58();
    if (sub_1CFC9FEA8())
    {
      v28 = swift_slowAlloc();
      v250 = v18;
      v29 = v28;
      *v28 = 0;
      v30 = sub_1CFC9D868();
      _os_signpost_emit_with_name_impl(&dword_1CFB9F000, v26, v27, v30, "SectionnedCollectionViewController loading", "", v29, 2u);
      v31 = v29;
      v18 = v250;
      MEMORY[0x1D3873280](v31, -1, -1);
    }

    (*(v19 + 16))(v21, v24, v18);
    sub_1CFC9D8F8();
    swift_allocObject();
    v219 = sub_1CFC9D8E8();
    v32 = *(v19 + 8);
    v19 += 8;
    v32(v24, v18);
    v33 = [v238 collectionView];
    if (!v33)
    {
      goto LABEL_249;
    }

    v34 = v33;
    v35 = [v33 indexPathsForVisibleItems];

    v36 = sub_1CFC9F8A8();
    v37 = v36;
    v24 = MEMORY[0x1E69E7CC0];
    v250 = *(v36 + 16);
    if (v250)
    {
      v38 = 0;
      v19 = 0;
      v249 = v15 + 16;
      v27 = v15 + 8;
      v39 = v237;
      while (v38 < v37[2])
      {
        v18 = v37;
        v21 = v39;
        (*(v15 + 16))(v17, v37 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v38, v39);
        v40 = sub_1CFBC3820(v238, &v270);
        (*v27)(v17, v21, v40);
        if (*(&v271 + 1))
        {
          v266 = v272;
          v267 = v273;
          v268 = v274;
          v269 = v275;
          v264 = v270;
          v265 = v271;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1CFC7AE78(0, v24[2] + 1, 1, v24);
          }

          v21 = v24[2];
          v41 = v24[3];
          v39 = v237;
          if (v21 >= v41 >> 1)
          {
            v47 = sub_1CFC7AE78((v41 > 1), v21 + 1, 1, v24);
            v39 = v237;
            v24 = v47;
          }

          v37 = v18;
          v24[2] = v21 + 1;
          v42 = &v24[11 * v21];
          v43 = v265;
          *(v42 + 2) = v264;
          *(v42 + 3) = v43;
          v44 = v266;
          v45 = v267;
          v46 = v268;
          v42[14] = v269;
          *(v42 + 5) = v45;
          *(v42 + 6) = v46;
          *(v42 + 4) = v44;
        }

        else
        {
          sub_1CFBC2FB0(&v270, &qword_1EC4ED5E8, &qword_1CFCA24D0);
          v39 = v237;
          v37 = v18;
        }

        if (v250 == ++v38)
        {
          goto LABEL_16;
        }
      }

LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

LABEL_16:
    v215 = v37;
    if (v24[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5F0, &qword_1CFCA24D8);
      v48 = sub_1CFCA0238();
    }

    else
    {
      v48 = MEMORY[0x1E69E7CC8];
    }

    v49 = v221;
    v17 = v233;
    *&v270 = v48;
    sub_1CFBCAED8(v24, 1, &v270);
    v206 = 0;

    v24 = v270;
    v21 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
    v50 = 1;
    v51 = v238;
    swift_beginAccess();
    v236 = v21;
    *&v51[v21] = MEMORY[0x1E69E7CC0];

    v214 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource;
    v52 = *&v51[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource];
    if (v52)
    {
      v53 = v52;
      sub_1CFC9DBF8();

      v50 = 0;
    }

    (*(v222 + 56))(v49, v50, 1, v17);
    v218 = swift_allocBox();
    v55 = v54;
    sub_1CFBCCD18();
    sub_1CFC9DB28();
    v19 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v15 = v238;
    swift_beginAccess();
    v213 = v19;
    v56 = *(v15 + v19);
    v231 = *(v56 + 16);
    v232 = v55;
    if (!v231)
    {
LABEL_182:
      if (v216)
      {
        v164 = swift_unknownObjectRetain();
        v165 = sub_1CFBA48FC(v164, v212);
        if (v166)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v167 = v165;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED600, &qword_1CFCA24E0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1CFCA1DD0;
          *(v19 + 32) = v167;
          sub_1CFC9DAF8();
          swift_unknownObjectRelease();
        }
      }

      v168 = [v238 collectionView];
      if (!v168)
      {
        goto LABEL_250;
      }

      v169 = v168;

      v170 = [v169 indexPathsForSelectedItems];

      if (v170)
      {
        v250 = sub_1CFC9F8A8();
      }

      else
      {
        v250 = 0;
      }

      v171 = v232;
      v172 = v238;
      v249 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection;
      if (v238[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection] == 1)
      {
        v15 = *&v238[v213];
        v173 = *(v15 + 16);

        v174 = (v15 + 40);
        v175 = -1;
        while (v175 - v173 != -1)
        {
          if (++v175 >= *(v15 + 16))
          {
            goto LABEL_236;
          }

          v18 = v174 + 2;
          v21 = *v174;
          v24 = swift_getObjectType();
          v19 = *(v21 + 128);
          swift_unknownObjectRetain();
          v17 = (v19)(v24, v21);
          swift_unknownObjectRelease();
          v174 = v18;
          if ((v17 & 1) == 0)
          {
            v217 = 0;
            break;
          }
        }

        v172 = v238;
        v171 = v232;
        v17 = v233;
      }

      else
      {
        v217 = 0;
      }

      v176 = *&v172[v214];
      if (v176)
      {
        (*(v222 + 16))(v220, v171, v17);
        v177 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v178 = v210;
        sub_1CFBA29FC(v221, v210, &qword_1EC4ED5E0, &qword_1CFCA24C8);
        v179 = (*(v208 + 80) + 40) & ~*(v208 + 80);
        v180 = (v209 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
        v181 = swift_allocObject();
        v182 = v219;
        v181[2] = v177;
        v181[3] = v182;
        v181[4] = v250;
        v17 = v233;
        sub_1CFBCCE88(v178, v181 + v179, &qword_1EC4ED5E0, &qword_1CFCA24C8);
        *(v181 + v180) = v218;
        *(v181 + ((v180 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
        v183 = v176;
        v21 = v220;
        v184 = v183;

        sub_1CFC9DBE8();

        v185 = v222;

        (*(v185 + 8))(v21, v17);
        v171 = v232;

        v19 = v227;
      }

      else
      {

        v19 = v227;
        v185 = v222;
        v21 = v220;
      }

      swift_beginAccess();
      (*(v185 + 16))(v21, v171, v17);
      v186 = v185;
      v187 = sub_1CFC9DAD8();
      (*(v186 + 8))(v21, v17);
      if (v187)
      {
        *&v272 = 0;
        v270 = 0u;
        v271 = 0u;
        v188 = v238;
        sub_1CFC9FBD8();
        if ((v188[v249] & 1) == 0)
        {
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1CFC9D4F8();
        }

        sub_1CFBC2FB0(v221, &qword_1EC4ED5E0, &qword_1CFCA24C8);
      }

      else
      {
        v189 = *(*&v238[v213] + 16);

        v249 = v189;
        if (v189)
        {
          v18 = 0;
          v246 = (v223 + 48);
          v248 = (v223 + 32);
          v191 = (v190 + 40);
          v15 = MEMORY[0x1E69E7CC0];
          v24 = &qword_1EC4ED5D0;
          v247 = v190;
          while (v18 < *(v190 + 16))
          {
            v250 = v15;
            v192 = *v191;
            v193 = swift_getObjectType();
            v194 = v24;
            v21 = v192 + 120;
            v195 = *(v192 + 120);
            swift_unknownObjectRetain();
            v196 = v226;
            v197 = v192;
            v19 = v227;
            v195(v193, v197);
            v24 = v194;
            v198 = v196;
            v17 = v225;
            sub_1CFBCCE88(v198, v225, v194, &qword_1CFCA24B8);
            swift_unknownObjectRelease();
            if ((*v246)(v17, 1, v19) == 1)
            {
              sub_1CFBC2FB0(v17, v194, &qword_1CFCA24B8);
              v15 = v250;
            }

            else
            {
              v21 = *v248;
              (*v248)(v224, v17, v19);
              v15 = v250;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1CFC7ABFC(0, *(v15 + 16) + 1, 1, v15);
              }

              v200 = *(v15 + 16);
              v199 = *(v15 + 24);
              if (v200 >= v199 >> 1)
              {
                v15 = sub_1CFC7ABFC((v199 > 1), v200 + 1, 1, v15);
              }

              *(v15 + 16) = v200 + 1;
              (v21)(v15 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v200, v224, v19);
            }

            v18 = (v18 + 1);
            v191 += 2;
            v190 = v247;
            if (v249 == v18)
            {
              goto LABEL_217;
            }
          }

          goto LABEL_237;
        }

        v15 = MEMORY[0x1E69E7CC0];
LABEL_217:

        if (*(v15 + 16))
        {
          v201 = v223;
          v202 = v207;
          (*(v223 + 16))(v207, v15 + ((*(v201 + 80) + 32) & ~*(v201 + 80)), v19);

          *(&v271 + 1) = v19;
          *&v272 = MEMORY[0x1E69DC1D0];
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v270);
          (*(v201 + 32))(boxed_opaque_existential_0Tm, v202, v19);
        }

        else
        {

          *&v272 = 0;
          v270 = 0u;
          v271 = 0u;
        }

        sub_1CFC9FBD8();

        sub_1CFBC2FB0(v221, &qword_1EC4ED5E0, &qword_1CFCA24C8);
      }
    }

    v230 = v56 + 32;

    v58 = 0;
    v27 = 40;
    *(&v59 + 1) = 2;
    v229 = xmmword_1CFCA1DD0;
    *&v59 = 136315138;
    v243 = v59;
    v242 = v24;
    v228 = v57;
    while (1)
    {
      if (v58 >= *(v57 + 16))
      {
        goto LABEL_234;
      }

      v235 = v58;
      v60 = (v230 + 16 * v58);
      v62 = *v60;
      v61 = v60[1];
      v15 = swift_getObjectType();
      v63 = *(v61 + 40);
      swift_unknownObjectRetain();
      v63(&v270, v15, v61);
      __swift_project_boxed_opaque_existential_1(&v270, *(&v271 + 1));
      v64 = sub_1CFC9F6D8();
      __swift_destroy_boxed_opaque_existential_1Tm(&v270);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED600, &qword_1CFCA24E0);
      v65 = swift_allocObject();
      *(v65 + 16) = v229;
      v250 = v64;
      *(v65 + 32) = v64;
      sub_1CFC9DAE8();

      v66 = *(v61 + 112);
      v234 = v62;
      v66(v15, v61);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
      v19 = sub_1CFCA01C8();

      v246 = *(v19 + 16);
      v18 = 0;
      if (v246)
      {
        break;
      }

      v240 = MEMORY[0x1E69E7CC0];
      v247 = MEMORY[0x1E69E7CC0];
LABEL_175:

      v155 = v238;
      v156 = v236;
      swift_beginAccess();
      v157 = *&v155[v156];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v155[v156] = v157;
      if (isUniquelyReferenced_nonNull_native)
      {
        v159 = v155;
      }

      else
      {
        v162 = sub_1CFC7AC24(0, v157[2] + 1, 1, v157);
        v159 = v238;
        v157 = v162;
        *&v238[v236] = v162;
      }

      v15 = v157[2];
      v160 = v157[3];
      v161 = v233;
      if (v15 >= v160 >> 1)
      {
        v163 = sub_1CFC7AC24((v160 > 1), v15 + 1, 1, v157);
        v159 = v238;
        v157 = v163;
      }

      v21 = v235 + 1;
      v157[2] = v15 + 1;
      v157[v15 + 4] = v247;
      *&v159[v236] = v157;
      swift_endAccess();
      *&v270 = v250;
      BYTE8(v270) = 0;

      sub_1CFC9DAC8();

      v19 = v240;
      sub_1CFC9DB08();
      v17 = v161;

      swift_unknownObjectRelease();

      v58 = v21;
      v57 = v228;
      v24 = v242;
      if (v21 == v231)
      {

        goto LABEL_182;
      }
    }

    v67 = 0;
    v241 = 0;
    v245 = v19 + 32;
    v21 = MEMORY[0x1E69E7CC0];
    v247 = MEMORY[0x1E69E7CC0];
    v240 = MEMORY[0x1E69E7CC0];
    v244 = v19;
LABEL_28:
    v24 = (v21 + 32);
    v17 = (v247 + 4);
    v68 = v67;
    v248 = v21;
    while (1)
    {
      if (v68 >= *(v19 + 16))
      {
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
        goto LABEL_230;
      }

      v249 = v68 + 1;
      sub_1CFBB94B0(v245 + 40 * v68, v259);
      v69 = v260;
      v70 = v261;
      __swift_project_boxed_opaque_existential_1(v259, v260);
      sub_1CFC55874(v69, v70);
      v258[5] = v250;
      v19 = *(v21 + 16);
      if (!v18)
      {
        break;
      }

      v71 = sub_1CFBCAB10(v258, v24, v19, v18 + 2, (v18 + 4));
      v19 = v72;

      if (v19)
      {
        goto LABEL_47;
      }

      if ((v71 & 0x8000000000000000) != 0)
      {
        goto LABEL_223;
      }

LABEL_35:
      if (v71 >= v247[2])
      {
        goto LABEL_224;
      }

      sub_1CFBB94B0(v17 + 40 * v71, &v264);
      sub_1CFBC2FB0(&v264, &qword_1EC4ED608, &qword_1CFCA24E8);
      if (qword_1EE050010 != -1)
      {
        swift_once();
      }

      v73 = sub_1CFC9D938();
      __swift_project_value_buffer(v73, qword_1EE052308);
      sub_1CFBCCD6C(v258, &v270);
      v74 = sub_1CFC9D918();
      v75 = sub_1CFC9FAD8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v252 = v77;
        *v76 = v243;
        sub_1CFBCCD6C(&v270, &v264);
        v78 = sub_1CFC9F798();
        v15 = v79;
        sub_1CFBCCDA4(&v270);
        v80 = sub_1CFBB531C(v78, v15, &v252);

        *(v76 + 4) = v80;
        v27 = 40;
        _os_log_impl(&dword_1CFB9F000, v74, v75, "SectionnedCollectionViewController: Duplicate ID found=%s.", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x1D3873280](v77, -1, -1);
        MEMORY[0x1D3873280](v76, -1, -1);
      }

      else
      {

        sub_1CFBCCDA4(&v270);
      }

      sub_1CFBCCDA4(v258);
      v21 = v248;
      __swift_destroy_boxed_opaque_existential_1Tm(v259);
      v68 = v249;
      v19 = v244;
      if (v249 == v246)
      {
        goto LABEL_175;
      }
    }

    if (v19)
    {
      v71 = 0;
      v21 = v24;
      do
      {
        sub_1CFBCCD6C(v21, &v270);
        if (MEMORY[0x1D3872590](&v270, v258))
        {
          v15 = *(&v272 + 1);
          sub_1CFBCCDA4(&v270);
          if (v15 == v250)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1CFBCCDA4(&v270);
        }

        ++v71;
        v21 += 48;
      }

      while (v19 != v71);
    }

LABEL_47:
    *&v266 = 0;
    v264 = 0u;
    v265 = 0u;
    v15 = &qword_1CFCA24E8;
    sub_1CFBC2FB0(&v264, &qword_1EC4ED608, &qword_1CFCA24E8);
    sub_1CFBCCD6C(v258, v257);
    sub_1CFBB94B0(v259, v256);
    v21 = v248;
    v81 = v248[2];
    if (!v18)
    {
      break;
    }

    v27 = sub_1CFBCAB10(v257, v24, v81, v18 + 2, (v18 + 4));
    v83 = v82;
    v19 = &qword_1EC4ED608;
    v85 = v84;

    sub_1CFBA29FC(v256, &v265, &qword_1EC4ED608, &qword_1CFCA24E8);
    if (v83)
    {
      v24 = v242;
      goto LABEL_72;
    }

    if (*(&v266 + 1))
    {
      v24 = v242;
LABEL_64:
      sub_1CFBAD070(&v265, &v270);
      v89 = v247;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v247 = sub_1CFC7B894(v89);
      }

      sub_1CFBC2FB0(v256, &qword_1EC4ED608, &qword_1CFCA24E8);
      sub_1CFBCCDA4(v257);
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_232;
      }

      if (v27 >= v247[2])
      {
        goto LABEL_233;
      }

      v90 = &v247[5 * v27];
      v27 = 40;
      __swift_destroy_boxed_opaque_existential_1Tm(v90 + 4);
      sub_1CFBAD070(&v270, (v90 + 4));
      if (!v24[2])
      {
        goto LABEL_26;
      }

LABEL_159:
      v139 = sub_1CFC94ADC(v258);
      if ((v140 & 1) == 0)
      {
        goto LABEL_26;
      }

      v248 = v21;
      sub_1CFBB94B0(v24[7] + 40 * v139, &v270);
      sub_1CFBAD070(&v270, &v264);
      v141 = *(&v265 + 1);
      v142 = v266;
      __swift_project_boxed_opaque_existential_1(&v264, *(&v265 + 1));
      v19 = (*(v142 + 16))(v141, v142);
      v143 = v260;
      v144 = v261;
      __swift_project_boxed_opaque_existential_1(v259, v260);
      v145 = (*(v144 + 16))(v143, v144);
      v146 = v145;
      v15 = *(v19 + 16);
      if (v15 == *(v145 + 16))
      {
        if (v15 && v19 != v145)
        {
          v17 = 0;
          v24 = (v19 + 32);
          v21 = v145 + 32;
          while (v17 < *(v19 + 16))
          {
            sub_1CFBAAE48(v24, &v270);
            if (v17 >= *(v146 + 16))
            {
              goto LABEL_229;
            }

            sub_1CFBAAE48(v21, &v252);
            v147 = MEMORY[0x1D3872590](&v270, &v252);
            sub_1CFBAAEA4(&v252);
            sub_1CFBAAEA4(&v270);
            if ((v147 & 1) == 0)
            {
              goto LABEL_169;
            }

            ++v17;
            v24 += 5;
            v21 += 40;
            if (v15 == v17)
            {
              goto LABEL_168;
            }
          }

          goto LABEL_228;
        }

LABEL_168:

        sub_1CFBCCDA4(v258);
        __swift_destroy_boxed_opaque_existential_1Tm(&v264);
        v21 = v248;
      }

      else
      {
LABEL_169:

        sub_1CFBCCD6C(v258, &v270);
        v148 = swift_isUniquelyReferenced_nonNull_native();
        v21 = v248;
        if ((v148 & 1) == 0)
        {
          v240 = sub_1CFC7AD58(0, *(v240 + 2) + 1, 1, v240);
        }

        v150 = *(v240 + 2);
        v149 = *(v240 + 3);
        if (v150 >= v149 >> 1)
        {
          v240 = sub_1CFC7AD58((v149 > 1), v150 + 1, 1, v240);
        }

        v151 = v240;
        *(v240 + 2) = v150 + 1;
        v152 = &v151[48 * v150];
        v153 = v270;
        v154 = v272;
        *(v152 + 3) = v271;
        *(v152 + 4) = v154;
        *(v152 + 2) = v153;
        sub_1CFBCCDA4(v258);
        __swift_destroy_boxed_opaque_existential_1Tm(&v264);
      }

LABEL_27:
      __swift_destroy_boxed_opaque_existential_1Tm(v259);
      v67 = v249;
      v19 = v244;
      if (v249 == v246)
      {
        goto LABEL_175;
      }

      goto LABEL_28;
    }

    v99 = *(v21 + 16);
    swift_beginAccess();
    if ((v18[2] & 0x3F) == (v18[3] & 0x3F))
    {
      if (v99)
      {
        goto LABEL_92;
      }

LABEL_132:
      v24 = v242;
LABEL_133:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1CFC7B880(v21);
      }

      v19 = *(v21 + 16);
      if (v27 < v19)
      {
        v128 = v21 + 48 * v27;
        sub_1CFBCCDA4(v128 + 32);
        memmove((v128 + 32), (v128 + 80), 48 * (v19 - 1 - v27));
        *(v21 + 16) = v19 - 1;
        if (v18)
        {
          swift_beginAccess();
          v129 = v18[3] & 0x3F;
          if (v19 <= 0x10 && !v129)
          {

            v241 = 0;
            v18 = 0;
            goto LABEL_154;
          }

LABEL_149:
          v132 = MEMORY[0x1D386F850](v19 - 1);
          if (v129 <= v132)
          {
            v133 = v132;
          }

          else
          {
            v133 = v129;
          }

          v134 = sub_1CFBCA6FC(v21, v133, 0, v129);

          v241 = v134;
          v18 = v134;
        }

        else
        {
          v129 = 0;
          if (v19 > 0x10)
          {
            goto LABEL_149;
          }

          v241 = 0;
          v18 = 0;
        }

LABEL_154:
        v15 = v247;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1CFC7B894(v15);
        }

        v135 = *(v15 + 16);
        if (v27 < v135)
        {
          v136 = v135 - 1;
          v137 = v15 + 40 * v27;
          __swift_destroy_boxed_opaque_existential_1Tm((v137 + 32));
          v138 = v136 - v27;
          v27 = 40;
          memmove((v137 + 32), (v137 + 72), 40 * v138);
          v247 = v15;
          *(v15 + 16) = v136;
          goto LABEL_158;
        }

LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
        goto LABEL_239;
      }

      goto LABEL_241;
    }

    if (v99 <= MEMORY[0x1D386F830]())
    {
      goto LABEL_132;
    }

LABEL_92:
    v15 = v241;
    if ((swift_isUniquelyReferenced_native() & 1) == 0)
    {
      if (!v15)
      {
        goto LABEL_248;
      }

      v100 = sub_1CFC9D308();

      v15 = v100;
    }

    if (!v15)
    {
      goto LABEL_246;
    }

    v18 = (v15 + 16);
    v19 = v15 + 32;
    v101 = sub_1CFC9D288();
    *&v252 = v15 + 16;
    *(&v252 + 1) = v15 + 32;
    *&v253 = v85;
    *(&v253 + 1) = v101;
    *&v254 = v102;
    *(&v254 + 1) = v103;
    v255 = 0;
    sub_1CFC9D2D8();
    v241 = v15;
    v239 = v15 + 32;
    if (*(&v253 + 1))
    {
      v19 = sub_1CFC9D298();

      while (1)
      {
        v280 = v252;
        v281 = v253;
        v282 = v254;
        v283 = v255;
        v104 = sub_1CFC9D2B8();
        if (v105)
        {
          goto LABEL_244;
        }

        if ((v104 & 0x8000000000000000) != 0)
        {
          goto LABEL_225;
        }

        if (v104 >= *(v21 + 16))
        {
          goto LABEL_226;
        }

        sub_1CFBCCD6C(&v24[6 * v104], v251);
        sub_1CFCA0338();
        sub_1CFCA0068();
        MEMORY[0x1D3872880](v251[5]);
        v106 = sub_1CFCA0378();
        sub_1CFBCCDA4(v251);
        v15 = *v18;
        v17 = 1 << *v18;
        v21 = v17 - 1;
        if (__OFSUB__(v17, 1))
        {
          goto LABEL_227;
        }

        v107 = v21 & v106;
        if (v85 >= v19)
        {
          if (v107 < v19)
          {
            goto LABEL_98;
          }
        }

        else if (v107 >= v19)
        {
          goto LABEL_109;
        }

        if (v85 >= v107)
        {
LABEL_109:
          v276 = v252;
          v277 = v253;
          v278 = v254;
          v279 = v255;
          v108 = sub_1CFC9D2B8();
          if (v109)
          {
            v110 = 0;
          }

          else
          {
            v110 = ((v21 & ((v108 - (v241[3] >> 6)) >> 63)) + v108 - (v241[3] >> 6)) ^ v21;
          }

          v111 = v239;
          v112 = (v15 & 0x3F) * v85;
          v113 = v112 >> 6;
          *(v239 + 8 * (v112 >> 6)) = *(v239 + 8 * (v112 >> 6)) & (((1 - v17) << v112) - 1) | (v110 << v112);
          v114 = 64 - (v112 & 0x3F);
          v21 = v248;
          if (v114 < (v15 & 0x3F))
          {
            v115 = (v15 & 0x3F) << (v15 & 0x3F);
            v116 = __OFADD__(v115, 64);
            v117 = v115 + 64;
            if (v116)
            {
              goto LABEL_231;
            }

            v119 = v117 - 1;
            v118 = v117 < 1;
            v120 = v117 + 62;
            if (!v118)
            {
              v120 = v119;
            }

            if (v113 + 1 == v120 >> 6)
            {
              v121 = 0;
            }

            else
            {
              v121 = v113 + 1;
            }

            *(v111 + 8 * v121) = *(v111 + 8 * v121) & (-1 << (v15 - v114)) | (v110 >> v114);
          }

          v85 = v277;
          goto LABEL_99;
        }

LABEL_98:
        v21 = v248;
LABEL_99:
        sub_1CFC9D2D8();
        if (!*(&v253 + 1))
        {
          sub_1CFC9D2A8();
          goto LABEL_142;
        }
      }
    }

    sub_1CFC9D2A8();

LABEL_142:
    v24 = v242;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_238;
    }

    if ((v27 + 1) < v27)
    {
LABEL_239:
      __break(1u);
    }

    else
    {

      sub_1CFBCA298(v27, v27 + 1, v21, v18, v239);
      v18 = v241;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1CFC7B880(v21);
      }

      v130 = *(v21 + 16);
      if (v27 < v130)
      {
        v131 = v130 - 1;
        v19 = v21 + 48 * v27;
        sub_1CFBCCDA4(v19 + 32);
        memmove((v19 + 32), (v19 + 80), 48 * (v131 - v27));
        *(v21 + 16) = v131;
        goto LABEL_154;
      }
    }

    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    swift_once();
  }

  if (!v81)
  {
    v24 = v242;
LABEL_71:
    sub_1CFBA29FC(v256, &v265, &qword_1EC4ED608, &qword_1CFCA24E8);
LABEL_72:
    v27 = 40;
    if (!*(&v266 + 1))
    {
LABEL_158:
      sub_1CFBC2FB0(v256, &qword_1EC4ED608, &qword_1CFCA24E8);
      sub_1CFBCCDA4(v257);
      if (!v24[2])
      {
        goto LABEL_26;
      }

      goto LABEL_159;
    }

    sub_1CFBAD070(&v265, &v252);
    sub_1CFBCCD6C(v257, &v270);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v263 = v21;
    if ((v91 & 1) == 0)
    {
      sub_1CFBCA920(0, *(v21 + 16) + 1, 1);
      v21 = v263;
    }

    v17 = *(v21 + 16);
    v92 = *(v21 + 24);
    v19 = v17 + 1;
    if (v17 >= v92 >> 1)
    {
      sub_1CFBCA920((v92 > 1), v17 + 1, 1);
      v21 = v263;
    }

    *(v21 + 16) = v19;
    v93 = (v21 + 48 * v17);
    v94 = v270;
    v95 = v272;
    v93[3] = v271;
    v93[4] = v95;
    v93[2] = v94;
    if (v18)
    {
      swift_beginAccess();
      if (MEMORY[0x1D386F820](v18[2] & 0x3F) > v17)
      {
        v15 = v241;
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          if (!v15)
          {
            goto LABEL_247;
          }

          v96 = sub_1CFC9D308();

          v15 = v96;
        }

        if (!v15)
        {
          goto LABEL_245;
        }

        sub_1CFC9D2A8();
        v241 = v15;
        goto LABEL_125;
      }

      swift_beginAccess();
      v97 = v18[3] & 0x3F;
      v98 = *(v21 + 16);
      if (v97)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v97 = 0;
      v15 = 0;
      if (v17 <= 0xE)
      {
LABEL_125:
        sub_1CFBB94B0(&v252, &v270);
        v124 = v247;
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v262 = v124;
        if ((v125 & 1) == 0)
        {
          sub_1CFBCA900(0, v124[2] + 1, 1);
          v124 = v262;
        }

        v127 = v124[2];
        v126 = v124[3];
        if (v127 >= v126 >> 1)
        {
          sub_1CFBCA900((v126 > 1), v127 + 1, 1);
          v124 = v262;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v252);
        sub_1CFBC2FB0(v256, &qword_1EC4ED608, &qword_1CFCA24E8);
        v124[2] = v127 + 1;
        v247 = v124;
        sub_1CFBAD070(&v270, &v124[5 * v127 + 4]);
        sub_1CFBCCDA4(v257);
        v18 = v15;
        if (v24[2])
        {
          goto LABEL_159;
        }

LABEL_26:
        sub_1CFBCCDA4(v258);
        goto LABEL_27;
      }

      v98 = *(v21 + 16);
    }

    if (v98 < 0x10)
    {

      v241 = 0;
      v15 = 0;
      goto LABEL_125;
    }

LABEL_121:
    v122 = MEMORY[0x1D386F850](v98);
    if (v97 <= v122)
    {
      v123 = v122;
    }

    else
    {
      v123 = v97;
    }

    v15 = sub_1CFBCA6FC(v21, v123, 0, v97);

    v241 = v15;
    goto LABEL_125;
  }

  v19 = 0;
  v27 = 0;
  v24 = v242;
  while (1)
  {
    sub_1CFBCCD6C(v21 + v19 + 32, &v270);
    if (MEMORY[0x1D3872590](&v270, v257))
    {
      break;
    }

    sub_1CFBCCDA4(&v270);
LABEL_53:
    ++v27;
    v19 += 48;
    if (v81 == v27)
    {
      goto LABEL_71;
    }
  }

  v15 = *(&v272 + 1);
  sub_1CFBCCDA4(&v270);
  if (v15 != v257[5])
  {
    goto LABEL_53;
  }

  sub_1CFBA29FC(v256, &v265, &qword_1EC4ED608, &qword_1CFCA24E8);
  if (*(&v266 + 1))
  {
    goto LABEL_64;
  }

  if (!*(v21 + 16))
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1CFC7B880(v21);
  }

  v86 = *(v21 + 16);
  v87 = v86 - v27;
  if (v86 > v27)
  {
    v88 = v86 - 1;
    v19 += v21;
    sub_1CFBCCDA4(v19 + 32);
    memmove((v19 + 32), (v19 + 80), 48 * v87 - 48);
    v18 = 0;
    *(v21 + 16) = v88;
    goto LABEL_154;
  }

  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);

  (*v27)(v17, v21);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CFBAA3A0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5E0, &qword_1CFCA24C8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5D8, &qword_1CFCA24C0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1CFBAA4F8()
{
  v1 = v0;
  v2 = *(sub_1CFC9C718() + 16);

  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow;
  v8 = *(v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow);
  v9 = v6 * v8;
  if ((v6 * v8) >> 64 != (v6 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11 + 1 >= v2 || (*(v0 + 96) & 1) != 0 || *(v0 + 40) == 1)
  {
    return sub_1CFC9C718();
  }

  v13 = sub_1CFC9C718();
  v3 = [v3 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v1 + v7);
  v16 = v14 * v15;
  if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
  {
    goto LABEL_26;
  }

  if (__OFSUB__(v16, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v1 = sub_1CFC82D30(v16 - 1, v13, MEMORY[0x1E6993700]);
  if (v19)
  {
    v7 = v19;
    v4 = v18;
    v3 = v17;
    sub_1CFCA02D8();
    swift_unknownObjectRetain_n();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
      swift_unknownObjectRelease();
      v22 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v22 + 16);

    if (!__OFSUB__(v7 >> 1, v4))
    {
      if (v23 == (v7 >> 1) - v4)
      {
        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v21)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }

        return v21;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_unknownObjectRelease();
    v19 = v7;
    v18 = v4;
    v17 = v3;
  }

  sub_1CFC84858(v1, v17, v18, v19, &qword_1EC4EFFE8, &qword_1CFCA8E38, MEMORY[0x1E6993700]);
  v21 = v20;
  swift_unknownObjectRelease();
  return v21;
}

void *sub_1CFBAA768(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED4F0, &qword_1CFCA2410, type metadata accessor for FavoriteSectionController.Item);
  *v3 = result;
  return result;
}

uint64_t sub_1CFBAA7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoriteSectionController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBAA810(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1CFC9C608();
    return a2;
  }

  return result;
}

uint64_t sub_1CFBAA8CC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1CFBAAA38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFBAAA58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBAAA58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED600, &qword_1CFCA24E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1CFBAAB68()
{
  v1 = v0;
  v2 = sub_1CFC9C608();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for FavoriteSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFBAAD9C(v1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1CFBAAEF8(*v11);
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CFCA1DD0;
    (*(v3 + 16))(v5, v8, v2);
    sub_1CFBAAE00(&qword_1EE04D690, MEMORY[0x1E6993700], MEMORY[0x1E6993708]);
    sub_1CFCA0078();
    (*(v3 + 8))(v8, v2);
  }

  return v12;
}

uint64_t sub_1CFBAAD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoriteSectionController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBAAE00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFBAAEF8(uint64_t a1)
{
  v2 = sub_1CFC9C608();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1CFBAB1B4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v21 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1CFBAB1B4((v13 > 1), v14 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 40 * v14;
      v16 = v19[0];
      v17 = v19[1];
      *(v15 + 64) = v20;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_1CFBAB094(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFBAB1B4(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBAB094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CFBAB1D4()
{
  v0 = sub_1CFC9D938();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFC9D8B8();
  __swift_allocate_value_buffer(v4, qword_1EE04D9B0);
  __swift_project_value_buffer(v4, qword_1EE04D9B0);
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE052308);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1CFC9D898();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *sub_1CFBAB3E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *&result[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];
    v6 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v7 = *&v4[v6];
    v8 = *(v7 + 16);
    v18 = v5;

    if (v8)
    {
      v17 = v2;
      v9 = 0;
      v10 = (v7 + 40);
      while (v9 < *(v7 + 16))
      {
        v11 = *v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 40);
        swift_unknownObjectRetain();
        v13(v19, ObjectType, v11);
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        v14 = sub_1CFC9F6D8();
        LODWORD(v13) = *(v18 + 64);
        sub_1CFCA0338();
        if (v13)
        {
          v15 = 3;
        }

        else
        {
          v15 = 1;
        }

        MEMORY[0x1D3872880](v15);
        v16 = sub_1CFCA0378();
        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
        if (v14 == v16)
        {
          goto LABEL_11;
        }

        ++v9;
        v10 += 2;
        if (v8 == v9)
        {
          v9 = -1;
LABEL_11:
          v2 = v17;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v9 = -1;
LABEL_13:

      return (v9 == v2);
    }
  }

  return result;
}

void sub_1CFBAB5EC()
{
  v1 = v0;
  v2 = sub_1CFC9CF08();
  *&v63 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v68 = MEMORY[0x1E69E7CC0];
  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = [v9 userInterfaceIdiom];

  p_prots = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 16);
  if (v10 == 6)
  {
    v12 = [v1 editButtonItem];
  }

  else
  {
    v13 = [v8 currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14 != 5 && ([v1 isEditing] & 1) != 0 || v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites] == 1)
    {
      v15 = sub_1CFC57DC4();
      p_prots = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 16);
      goto LABEL_9;
    }

    p_prots = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.prots;
    v12 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_editMenuButtonItem];
  }

  v15 = v12;
LABEL_9:
  v16 = *(&p_prots[308]->count + v1);
  v17 = sub_1CFBAC024();
  [v16 setMenu_];

  if ([v1 isEditing])
  {
    v62 = v15;
    v18 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
    sub_1CFC9CE88();

    (*(v63 + 104))(v4, *MEMORY[0x1E6995A70], v2);
    sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
    sub_1CFC9F878();
    sub_1CFC9F878();
    if (v66 == v64 && v67 == v65)
    {
      v19 = *(v63 + 8);
      v19(v4, v2);
      v19(v7, v2);

      v15 = v62;
LABEL_14:
      v22 = sub_1CFC583A0();
      goto LABEL_18;
    }

    v20 = sub_1CFCA02B8();
    v21 = *(v63 + 8);
    v21(v4, v2);
    v21(v7, v2);

    v15 = v62;
    if (v20)
    {
      goto LABEL_14;
    }
  }

  if (v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites] == 1)
  {
    v22 = sub_1CFC586DC();
  }

  else
  {
    v22 = sub_1CFC585F4();
  }

LABEL_18:
  v23 = v22;
  v24 = [v8 currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25)
  {
    v26 = [v8 currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (v27 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1CFCA2540;
      *(v28 + 32) = v15;
      v66 = v28;
      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v31 = sub_1CFC9FB08();
    [v31 setWidth_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1CFCA78F0;
    *(v29 + 32) = v15;
    *(v29 + 40) = v31;
    *(v29 + 48) = v23;
    v68 = v29;
    v66 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v29 = swift_allocObject();
    v63 = xmmword_1CFCA2540;
    *(v29 + 16) = xmmword_1CFCA2540;
    *(v29 + 32) = v15;
    v68 = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = v63;
    *(v30 + 32) = v23;
    v66 = v30;
  }

  v32 = v23;
LABEL_24:
  v33 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  if (v33)
  {
    v34 = v15;
    sub_1CFC6A630(v33);

    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v35 = sub_1CFC9F728();
    v36 = [objc_opt_self() systemImageNamed_];

    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1CFC9FDF8();
    v37 = sub_1CFC9FB58();
    v38 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem;
    v39 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem];
    *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem] = v37;

    v40 = *&v1[v38];
    if (v40)
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v42 = objc_opt_self();
      v43 = v40;
      v44 = [v42 bundleForClass_];
      sub_1CFC9BE28();

      v45 = sub_1CFC9F728();

      [v43 setAccessibilityLabel_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFCA2540;
    v47 = *&v1[v38];
    if (!v47)
    {
      goto LABEL_36;
    }

    *(inited + 32) = v47;
    v48 = inited;
    v49 = v47;
    sub_1CFC08E2C(v48);
  }

  else
  {
    v50 = v15;
  }

  v51 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  if (!v51)
  {
LABEL_33:
    v57 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v58 = sub_1CFC9F898();

    [v57 setLeftBarButtonItems:v58 animated:1];

    v59 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem];
    v60 = sub_1CFC9F898();

    [v59 setRightBarButtonItems:v60 animated:1];

    return;
  }

  v52 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8];
  sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = v52;
  sub_1CFBB2568(v51, v52);

  v54 = sub_1CFC9FDF8();
  sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
  v55 = v54;
  v56 = sub_1CFC9FB08();
  if (!(v29 >> 62) || (sub_1CFC9FFD8() & 0x8000000000000000) == 0)
  {
    sub_1CFBCB234(0, 0, v56);
    sub_1CFBABFA0(v51, v52);

    goto LABEL_33;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1CFBABFA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFBABFB0()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBABFE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBAC024()
{
  v1 = v0;
  v2 = sub_1CFC9CF08();
  v59 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v58 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  if (qword_1EC4ED028 != -1)
  {
    swift_once();
  }

  if (qword_1EC4EF7E0 && [qword_1EC4EF7E0 BOOLForKey_])
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    v67 = sub_1CFC6C144;
    v68 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v64 = 1107296256;
    v65 = sub_1CFC58994;
    v66 = &block_descriptor_335;
    v14 = _Block_copy(&aBlock);
    v15 = objc_opt_self();
    v16 = v1;
    v17 = [v15 elementWithViewProvider_];
    _Block_release(v14);
  }

  else
  {
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v20 = sub_1CFC9F728();
    v21 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_1CFC9FDF8();
  }

  sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CFCA2540;
  *(v22 + 32) = v17;
  v62 = v17;
  sub_1CFC9FD68();
  MEMORY[0x1D3871DC0]();
  if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CFC9F8C8();
  }

  sub_1CFC9F8F8();
  if ([*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager] current] == 1)
  {
    v73 = v12;
    v23 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
    swift_beginAccess();
    sub_1CFBA29FC(&v1[v23], &v71, &qword_1EC4EE538, qword_1CFCA9BD0);
    if (!v72)
    {
      sub_1CFBC2FB0(&v71, &qword_1EC4EE538, qword_1CFCA9BD0);
      v30 = MEMORY[0x1E69E7CC0];
      v27 = v59;
      goto LABEL_21;
    }

    sub_1CFBAD070(&v71, &aBlock);
    v24 = v66;
    v25 = v67;
    __swift_project_boxed_opaque_existential_1(&aBlock, v66);
    v26 = (*(v25 + 2))(v24, v25);
    v27 = v59;
    if (v26)
    {
      v28 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
      sub_1CFC9CE88();

      (*(v27 + 104))(v8, *MEMORY[0x1E6995AA0], v2);
      sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
      sub_1CFC9F878();
      sub_1CFC9F878();
      if (v71 == v69 && *(&v71 + 1) == v70)
      {
        v29 = *(v27 + 8);
        v29(v8, v2);
        v29(v11, v2);

LABEL_17:
        sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
        type metadata accessor for BundleClass();
        v33 = swift_getObjCClassFromMetadata();
        v34 = [objc_opt_self() bundleForClass_];
        sub_1CFC9BE28();

        v35 = sub_1CFC9F728();
        v36 = [objc_opt_self() systemImageNamed_];

        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1CFBB94B0(&aBlock, &v71);
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        sub_1CFBAD070(&v71, v38 + 24);
        v39 = sub_1CFC9FDF8();
        MEMORY[0x1D3871DC0]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CFC9F8C8();
        }

        sub_1CFC9F8F8();

        v30 = v73;
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
LABEL_21:
        if (*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource])
        {
          v40 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
          sub_1CFC9CE88();

          (*(v27 + 104))(v60, *MEMORY[0x1E6995A70], v2);
          sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
          sub_1CFC9F878();
          sub_1CFC9F878();
          if (aBlock == v71 && v64 == *(&v71 + 1))
          {
            v41 = *(v27 + 8);
            v41(v60, v2);
            v41(v61, v2);

LABEL_26:

            sub_1CFC9C718();

            sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
            type metadata accessor for BundleClass();
            v44 = swift_getObjCClassFromMetadata();
            v45 = [objc_opt_self() bundleForClass_];
            sub_1CFC9BE28();

            v46 = sub_1CFC9F728();
            v47 = [objc_opt_self() systemImageNamed_];

            swift_allocObject();
            swift_unknownObjectWeakInit();
            v48 = sub_1CFC9FDF8();
            MEMORY[0x1D3871DC0]();
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1CFC9F8C8();
            }

            sub_1CFC9F8F8();

            v30 = v73;
            goto LABEL_29;
          }

          v42 = sub_1CFCA02B8();
          v43 = *(v27 + 8);
          v43(v60, v2);
          v43(v61, v2);

          if (v42)
          {
            goto LABEL_26;
          }
        }

LABEL_29:
        if (v30 >> 62)
        {
          sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);

          sub_1CFCA01E8();
        }

        else
        {

          sub_1CFCA02C8();
          sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
        }

        sub_1CFC9FD68();
        MEMORY[0x1D3871DC0]();
        if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CFC9F8C8();
        }

        sub_1CFC9F8F8();
        goto LABEL_34;
      }

      v31 = sub_1CFCA02B8();
      v32 = *(v27 + 8);
      v32(v8, v2);
      v32(v11, v2);
      v27 = v59;

      if (v31)
      {
        goto LABEL_17;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_34:
  v49 = [objc_opt_self() currentDevice];
  v50 = [v49 userInterfaceIdiom];

  if (v50 != 5)
  {
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    type metadata accessor for BundleClass();
    v51 = swift_getObjCClassFromMetadata();
    v52 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v53 = sub_1CFC9F728();
    v54 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = sub_1CFC9FDF8();
    MEMORY[0x1D3871DC0]();
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();
  }

  v56 = sub_1CFC9FD68();

  return v56;
}

uint64_t sub_1CFBACFD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBAD008()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CFBAD070(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1CFBAD088()
{
  v1 = v0;
  v2 = sub_1CFC9CEA8();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_1CFC9CF08();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
  sub_1CFC9CE88();

  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 != 6)
  {
    if ([*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager] current])
    {
      v12 = [v9 currentDevice];
      v13 = [v12 userInterfaceIdiom];

      v14 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
      v15 = v14;
      if (v13)
      {
        [v14 setTitle_];
LABEL_12:

        return (*(v5 + 8))(v7, v38);
      }

      *v4 = 0;
      v25 = v37;
      (*(v37 + 104))(v4, *MEMORY[0x1E6995A40], v2);
      sub_1CFC9CEF8();
      (*(v25 + 8))(v4, v2);
      v26 = sub_1CFC9F728();

      [v15 setTitle_];

      v27 = [v1 navigationController];
      if (v27)
      {
        v28 = v27;
        v15 = [v27 navigationBar];

        [v15 setPrefersLargeTitles_];
        goto LABEL_12;
      }
    }

    else
    {
      v36 = v1;
      v35 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFB20, &qword_1CFCA7D00);
      v16 = *(v5 + 72);
      v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1CFCA1DC0;
      v19 = v18 + v17;
      v20 = *(v5 + 104);
      v21 = v38;
      v20(v19, *MEMORY[0x1E6995A70], v38);
      v20(v19 + v16, *MEMORY[0x1E6995A78], v21);
      v22 = sub_1CFC1D758(v7, v18);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (v22)
      {
        type metadata accessor for BundleClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v24 = [objc_opt_self() bundleForClass_];
        sub_1CFC9BE28();
      }

      else
      {
        *v4 = 0;
        v29 = v37;
        (*(v37 + 104))(v4, *MEMORY[0x1E6995A40], v2);
        sub_1CFC9CEF8();
        (*(v29 + 8))(v4, v2);
      }

      v30 = sub_1CFC9F728();

      v31 = v35;
      [v35 setTitle_];

      v32 = [v36 navigationController];
      if (v32)
      {
        v33 = v32;
        v15 = [v32 navigationBar];

        [v15 setPrefersLargeTitles_];
        goto LABEL_12;
      }
    }
  }

  return (*(v5 + 8))(v7, v38);
}

void sub_1CFBAD5E0()
{
  if ([*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager) current])
  {
    v1 = [objc_opt_self() currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if (v2 == 6)
    {
      return;
    }

    v20 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    [v20 setTitleView_];
    v3 = v20;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl))
    {
      return;
    }

    v21 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1CFCA3B40;
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();
    v8 = [v7 bundleForClass_];
    sub_1CFC9BE28();

    v9 = swift_allocObject();
    *(v9 + 16) = sub_1CFC6BC24;
    *(v9 + 24) = v4;

    v18 = v9;
    v10 = v0;
    *(v5 + 32) = sub_1CFC9FDF8();
    v11 = [v7 bundleForClass_];
    sub_1CFC9BE28();

    v12 = swift_allocObject();
    *(v12 + 16) = sub_1CFC6BC24;
    *(v12 + 24) = v4;

    v19 = v12;
    *(v5 + 40) = sub_1CFC9FDF8();
    v13 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
    v14 = sub_1CFC9F898();

    v15 = [v13 initWithFrame:v14 actions:{0.0, 0.0, 0.0, 0.0, 0, 0, 0, sub_1CFC6BC50, v19}];

    [v15 setSelectedSegmentIndex_];
    v16 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    v17 = v15;
    [v16 setTitleView_];

    v3 = *(v10 + v21);
    *(v10 + v21) = v15;
  }
}

id sub_1CFBAD9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

char *sub_1CFBADA74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v7 = result;
    swift_beginAccess();
    v8 = *&v7[v6];

    if ((a1 & 0x8000000000000000) != 0 || *(v8 + 16) <= a1)
    {

      return 0;
    }

    else
    {
      v9 = *(v8 + 16 * a1 + 40);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v11 = (*(v9 + 144))(a2, ObjectType, v9);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  return result;
}

void sub_1CFBADB70(void *a1)
{
  v2 = v1;
  v66 = sub_1CFC9CE08();
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v62 - v12;
  v14 = *(*(v2 + 32) + 16);
  v63 = a1;
  v64 = v14;
  v65 = [a1 traitCollection];
  sub_1CFC9CD38();
  v15 = v68;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 || *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDD8();
  v20 = v19;
  v21 = *(v4 + 8);
  v21(v13, v66);
  sub_1CFC9CD38();
  v22 = v68;
  v23 = [v16 currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 || *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDD8();
  v26 = v25;
  v21(v9, v66);
  [objc_msgSend(v63 container)];
  v28 = v27;
  swift_unknownObjectRelease();
  v29 = v64 < 4;
  v30 = sub_1CFC83B40();
  v31 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow;
  v32 = *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow);
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = v15 - v20;
    v34 = v22 - v26;
    v35 = v28 - v33 - (v22 - v26);
    v36 = (v35 - v30 * (v32 - 1)) / v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFE0, &qword_1CFCA8DD8);
    sub_1CFC9CD28();
    if ((v69 & 1) != 0 || (v37 = v68, v68 >= v36))
    {
      v37 = v36;
    }

    else
    {
      v29 = 1;
    }

    v38 = *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth);
    *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth) = v37;
    sub_1CFBAE528(v38);
    v39 = [v16 currentDevice];
    v40 = [v39 userInterfaceIdiom];

    if (v40 || *(v2 + v31) > 3)
    {
      sub_1CFC9CDF8();
    }

    else
    {
      sub_1CFC9CDB8();
    }

    sub_1CFC9CDC8();
    v42 = v41;
    v21(v6, v66);
    v43 = v37 * v42;
    v44 = objc_opt_self();
    v45 = [v44 absoluteDimension_];
    v46 = [v44 uniformAcrossSiblingsWithEstimate_];
    v47 = objc_opt_self();
    v48 = [v47 sizeWithWidthDimension:v45 heightDimension:v46];

    v49 = [objc_opt_self() itemWithLayoutSize_];
    [v49 setContentInsets_];
    v50 = [v44 fractionalWidthDimension_];
    v51 = [v44 estimatedDimension_];
    v52 = [v47 sizeWithWidthDimension:v50 heightDimension:v51];

    v53 = [objc_opt_self() horizontalGroupWithLayoutSize:v52 repeatingSubitem:v49 count:*(v2 + v31)];
    v54 = objc_opt_self();
    v55 = [v54 fixedSpacing_];
    [v53 setInterItemSpacing_];

    v56 = 0.0;
    if (v29)
    {
      v57 = v37 * v64;
      v58 = (v64 - 1);
      v56 = (v35 - (v57 + sub_1CFC83B40() * v58)) * 0.5;
    }

    [v53 setContentInsets_];
    v59 = [objc_opt_self() sectionWithGroup_];
    v60 = v65;
    sub_1CFC9CD38();
    v61 = v68;
    sub_1CFC9CD38();
    [v59 setContentInsets_];
    [v59 setOrthogonalScrollingBehavior_];
    [v59 setInterGroupSpacing_];
  }
}

void sub_1CFBAE528(double a1)
{
  v3 = sub_1CFC9CE08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth);
  if (vabdd_f64(a1, v7) > 0.0000000149011612)
  {
    v8 = *(v1 + 104);
    if (*(v8 + 16) == v7)
    {
      *(v8 + 16) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v15[1] = v15;
      MEMORY[0x1EEE9AC00](KeyPath);
      v15[-2] = v8;
      *&v15[-1] = v7;
      v16 = v8;
      sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);

      sub_1CFC9C148();
    }

    v10 = *(v1 + 104);
    v11 = objc_opt_self();

    v12 = [v11 currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
    {
      sub_1CFC9CDF8();
    }

    else
    {
      sub_1CFC9CDB8();
    }

    v14 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v14);
    v15[-2] = v10;
    v15[-1] = v6;
    v16 = v10;
    sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
    sub_1CFC9C148();

    (*(v4 + 8))(v6, v3);
  }
}

double sub_1CFBAE89C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_1CFBAE8F0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  swift_beginAccess();
  v5 = sub_1CFC9CE08();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void *sub_1CFBAE990(void *a1)
{
  v2 = sub_1CFC9DC18();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1CFC9DC48();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  sub_1CFC9CD38();
  sub_1CFC9DC28();

  sub_1CFC9DC38();
  swift_allocObject();
  swift_weakInit();
  sub_1CFC9DC08();
  sub_1CFBA2D80(0, &qword_1EE04CF60, 0x1E6995580);
  v9 = sub_1CFC9FD18();
  if (sub_1CFC779F8())
  {
    v10 = objc_opt_self();
    v11 = [v10 fractionalWidthDimension_];
    v12 = [v10 estimatedDimension_];
    v13 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v12];

    v14 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v13 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
    [v14 setZIndex_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1CFCA2540;
    *(v15 + 32) = v14;
    sub_1CFBA2D80(0, &qword_1EE04CF58, 0x1E6995548);
    v16 = v14;
    v17 = sub_1CFC9F898();

    [v9 setBoundarySupplementaryItems_];

    [v9 setSupplementaryContentInsetsReference_];
    [v9 contentInsets];
    [v9 setContentInsets_];
  }

  else
  {
    sub_1CFC9CD38();
    v19 = *&v24[1];
    [v9 contentInsets];
    [v9 setContentInsets_];
  }

  sub_1CFC9CD38();
  [v9 contentInsets];
  [v9 setContentInsets_];
  sub_1CFC9CD38();
  [v9 contentInsets];
  [v9 setContentInsets_];
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 6)
  {
    [v9 setInterGroupSpacing_];

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }

  return v9;
}

uint64_t sub_1CFBAF0E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9DC18();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1CFBAF154@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69DC248];
  v3 = sub_1CFC9DC18();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t *sub_1CFBAF1C8(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED518, &unk_1CFCA2430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_1CFC9D9B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFC9D988();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1CFC9D958();
  v68 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v57 - v16;
  v75 = sub_1CFC9D9F8();
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CFC9C128();
  v73 = a1;
  v19 = sub_1CFC9C118();
  v20 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = *&v2[v20];
  if (v18 >= *(v22 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = *(v22 + 8 * v18 + 32);
  if (v19 >= *(v23 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1CFBB94B0(v23 + 40 * v19 + 32, v81);
  v24 = sub_1CFC9C128();
  v25 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v65 = v12;
  v66 = v10;
  v26 = *&v2[v25];
  if (v24 >= *(v26 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v63 = v11;
  v64 = v6;
  v27 = *(v26 + 16 * v24 + 40);
  v28 = v82;
  v72 = __swift_project_boxed_opaque_existential_1(v81, v82);

  swift_unknownObjectRetain();
  result = [v2 collectionView];
  if (result)
  {
    v29 = result;
    ObjectType = swift_getObjectType();

    v31 = SectionController.anyCell<A>(collectionView:for:at:)(v29, v72, v73, ObjectType, v28, v27);

    swift_unknownObjectRelease();
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v62 = v32;
      v61 = v8;
      v33 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
      v34 = swift_beginAccess();
      v35 = *&v2[v33];
      MEMORY[0x1EEE9AC00](v34);
      v55 = v81;
      v36 = v31;

      v37 = sub_1CFBB3B98(sub_1CFBB457C, v54, v35);

      if (v37)
      {
        v59 = v36;
        v60 = v31;
        v58 = v7;
        result = sub_1CFC9FCE8();
        v38 = 0;
        v73 = result;
        v72 = result[2];
        v71 = v79 + 16;
        v70 = *MEMORY[0x1E69DBEE8];
        v69 = (v68 + 104);
        v39 = (v68 + 8);
        v68 = v79 + 8;
        v40 = v78;
        v41 = v79;
        while (1)
        {
          if (v72 == v38)
          {

            v56 = MEMORY[0x1E69E6370];
            LOBYTE(v55) = 2;
            v54[0] = sub_1CFBCCF04;
            v54[1] = 0;
            sub_1CFC9CD28();
            if (v80 == 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED520, &qword_1CFCA4A70);
              v48 = swift_allocObject();
              *(v48 + 16) = xmmword_1CFCA1DD0;
              v49 = v65;
              v50 = v67;
              v51 = v63;
              (*(v65 + 104))(v67, *MEMORY[0x1E69DBF18], v63);
              v52 = sub_1CFC9D998();
              (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
              v53 = v66;
              sub_1CFC9D9A8();
              sub_1CFC9D968();
              (*(v61 + 8))(v53, v58);
              (*(v49 + 8))(v50, v51);
              v80 = sub_1CFC9FCE8();
              sub_1CFBB4604(v48);
              sub_1CFC9FCF8();
            }

            goto LABEL_19;
          }

          if (v38 >= v73[2])
          {
            break;
          }

          v42 = v74;
          v43 = v75;
          (*(v41 + 16))(v74, v73 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38++, v75);
          v44 = v76;
          sub_1CFC9D978();
          v45 = v77;
          (*v69)(v77, v70, v40);
          v46 = MEMORY[0x1D386FE80](v44, v45);
          v47 = *v39;
          (*v39)(v45, v40);
          v47(v44, v40);
          result = (*(v41 + 8))(v42, v43);
          if (v46)
          {

LABEL_19:
            v31 = v60;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_22;
      }
    }

LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    return v31;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1CFBAFADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a3;
  v30[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFD0, &unk_1CFCA8DB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED6C0, &unk_1CFCA25F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFD8, &unk_1CFCA8DC8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v30 - v12;
  v14 = sub_1CFC9C608();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FavoriteSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFBAAD9C(a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_showAllCellRegistration;
    swift_beginAccess();
    sub_1CFBA29FC(v3 + v22, v7, &qword_1EC4EFFD0, &unk_1CFCA8DB8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFC0, &qword_1CFCA8D20);
    v24 = *(v23 - 8);
    result = (*(v24 + 48))(v7, 1, v23);
    if (result != 1)
    {
      v30[2] = v21;
      sub_1CFBA2D80(0, &qword_1EE04CF90, 0x1E69DC7F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
      v26 = sub_1CFC9FBA8();

      (*(v24 + 8))(v7, v23);
      return v26;
    }

    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v17, v20, v14);
    v27 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_cellRegistration;
    swift_beginAccess();
    sub_1CFBA29FC(v3 + v27, v13, &qword_1EC4EFFD8, &unk_1CFCA8DC8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFB8, &qword_1CFCA8D18);
    v29 = *(v28 - 8);
    result = (*(v29 + 48))(v13, 1, v28);
    if (result != 1)
    {
      (*(v15 + 16))(v10, v17, v14);
      (*(v15 + 56))(v10, 0, 1, v14);
      sub_1CFBA2D80(0, &qword_1EE04CF90, 0x1E69DC7F8);
      v26 = sub_1CFC9FBA8();
      sub_1CFBC2FB0(v10, &qword_1EC4ED6C0, &unk_1CFCA25F0);
      (*(v15 + 8))(v17, v14);
      (*(v29 + 8))(v13, v28);
      return v26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFBAFF94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0000, &unk_1CFCA8E50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_1CFC9F728();
    [a1 setAccessibilityIdentifier_];

    v15 = *(v13 + 104);
    MEMORY[0x1EEE9AC00](v16);
    v17[-4] = a3;
    v17[-3] = v15;
    v17[-2] = a5;
    type metadata accessor for FavoriteCell(0);
    sub_1CFBAAE00(qword_1EE04FE90, type metadata accessor for FavoriteCell, &unk_1CFCA6B08);

    sub_1CFC9E938();
    sub_1CFC9EBB8();
    v17[3] = v8;
    v17[4] = sub_1CFBA57C0(&qword_1EE04D290, &qword_1EC4F0000, &unk_1CFCA8E50, MEMORY[0x1E697C858]);
    __swift_allocate_boxed_opaque_existential_0Tm(v17);
    sub_1CFC9E918();
    (*(v9 + 8))(v11, v8);
    MEMORY[0x1D38721F0](v17);
    if (*(v13 + 40) == 1)
    {
      sub_1CFC9FD78();
    }
  }

  return result;
}

uint64_t sub_1CFBB0230(uint64_t a1)
{
  result = sub_1CFC9C608();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FavoriteCellConfig(319);
    if (v3 <= 0x3F)
    {
      result = sub_1CFBB02CC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CFBB02CC()
{
  result = qword_1EE04FF70;
  if (!qword_1EE04FF70)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE04FF70);
  }

  return result;
}

uint64_t sub_1CFBB0328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CFC9C608();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = *(v9 + 16);
  v12(a4, a1, v8, v11);
  (v12)(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v9 + 32))(v14 + v13, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v15 = type metadata accessor for FavoriteCell(0);
  *(a4 + *(v15 + 20)) = a2;
  v16 = (a4 + *(v15 + 24));
  *v16 = sub_1CFC84C3C;
  v16[1] = v14;
}

uint64_t sub_1CFBB04A8()
{
  v1 = sub_1CFC9C608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1CFBB05F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2F0, &qword_1CFCA6BA8) - 8;
  MEMORY[0x1EEE9AC00](v36);
  v35 = v34 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2F8, &qword_1CFCA6BB0);
  MEMORY[0x1EEE9AC00](v38);
  v37 = v34 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF300, &qword_1CFCA6BB8);
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = v34 - v5;
  v6 = *(v1 + *(type metadata accessor for FavoriteCell(0) + 20));
  swift_getKeyPath();
  v45 = v6;
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  v7 = sub_1CFC9C608();
  v51[3] = v7;
  v51[4] = sub_1CFBB0D7C(&qword_1EE04D698, MEMORY[0x1E6993700], &protocol conformance descriptor for FavoriteContact);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v51);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0Tm, v1, v7);
  v44 = v1;
  v43 = v1;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF308, &qword_1CFCA6BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF310, &qword_1CFCA6BC8);
  sub_1CFBB0DC4();
  v9 = type metadata accessor for FavoriteSensitiveBadge(255);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF318, &qword_1CFCA6BD0);
  v11 = sub_1CFBB0D7C(&qword_1EC4EF320, type metadata accessor for FavoriteSensitiveBadge, &unk_1CFCA6D38);
  v12 = sub_1CFC06888();
  v45 = v9;
  v46 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v9;
  v46 = &type metadata for NudityDetectionFlagEnabled;
  v47 = v10;
  v48 = v11;
  v14 = v35;
  v49 = v12;
  v50 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1CFC9CCF8();
  v15 = sub_1CFC9F518();
  v17 = v16;
  v18 = v14 + *(v36 + 44);
  sub_1CFC4922C(v2, v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF328, &qword_1CFCA6BD8) + 36));
  *v19 = v15;
  v19[1] = v17;
  MEMORY[0x1D3871A90](0.5, 1.0, 0.0);
  v20 = sub_1CFC9F548();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF330, &qword_1CFCA6BE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1CFCA1DC0;
  swift_getKeyPath();
  v45 = v6;
  sub_1CFC9C158();

  if (*(v6 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == 1)
  {
    v22 = sub_1CFC48E10() ^ 1;
  }

  else
  {
    v22 = 0;
  }

  *(v21 + 32) = v22 & 1;
  *(v21 + 33) = sub_1CFC48E10() & 1;
  v23 = v37;
  sub_1CFBCCE88(v14, v37, &qword_1EC4EF2F0, &qword_1CFCA6BA8);
  v24 = (v23 + *(v38 + 36));
  *v24 = v20;
  v24[1] = v21;
  sub_1CFC49FC8();
  v25 = v39;
  sub_1CFC9EE48();
  sub_1CFBB0CAC(v23);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v45 = v6;
  sub_1CFC9C158();

  v27 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  swift_beginAccess();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF360, &qword_1CFCA6C28);
  v29 = v42;
  v30 = (v42 + *(v28 + 36));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF368, &qword_1CFCA6C30) + 28);
  v32 = sub_1CFC9CE08();
  (*(*(v32 - 8) + 16))(v30 + v31, v6 + v27, v32);
  *v30 = KeyPath;
  return (*(v40 + 32))(v29, v25, v41);
}

uint64_t sub_1CFBB0CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2F8, &qword_1CFCA6BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBB0D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CFBB0DC4()
{
  result = qword_1EE04D548;
  if (!qword_1EE04D548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF308, &qword_1CFCA6BC0);
    sub_1CFBB0D7C(&qword_1EE04D678, MEMORY[0x1E6995A20], MEMORY[0x1E6995A18]);
    sub_1CFBB0D7C(&qword_1EE04FFC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D548);
  }

  return result;
}

uint64_t FavoriteContact.icon.getter()
{
  v0 = sub_1CFC9C5D8();
  v1 = [v0 actionType];

  v2 = sub_1CFC9F768();
  v4 = v3;
  if (v2 != sub_1CFC9F768() || v4 != v5)
  {
    v7 = sub_1CFCA02B8();

    if (v7)
    {
      goto LABEL_19;
    }

    v9 = sub_1CFC9F768();
    v11 = v10;
    if (v9 != sub_1CFC9F768() || v11 != v12)
    {
      v14 = sub_1CFCA02B8();

      if (v14)
      {
        goto LABEL_19;
      }

      v15 = sub_1CFC9F768();
      v17 = v16;
      if (v15 != sub_1CFC9F768() || v17 != v18)
      {
        v19 = sub_1CFCA02B8();

        if (v19)
        {
LABEL_19:

          return sub_1CFC9F1A8();
        }

        v20 = sub_1CFC9F768();
        v22 = v21;
        if (v20 != sub_1CFC9F768() || v22 != v23)
        {
          v24 = sub_1CFCA02B8();

          if (v24)
          {
            goto LABEL_19;
          }

          v25 = sub_1CFC9F768();
          v27 = v26;
          if (v25 != sub_1CFC9F768() || v27 != v28)
          {
            v29 = sub_1CFCA02B8();

            if (v29)
            {
              goto LABEL_19;
            }

            v30 = sub_1CFC9F768();
            v32 = v31;
            if (v30 != sub_1CFC9F768() || v32 != v33)
            {
              sub_1CFCA02B8();

              return sub_1CFC9F1A8();
            }
          }
        }
      }
    }
  }

  return sub_1CFC9F1A8();
}

uint64_t FavoriteContact.title.getter()
{
  result = sub_1CFC9C5C8();
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

    v3 = sub_1CFC9C5D8();
    v4 = [v3 name];

    v5 = sub_1CFC9F768();
    return v5;
  }

  return result;
}

uint64_t sub_1CFBB12E8()
{
  v0 = sub_1CFC9C5C8();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t FavoriteContact.titleLineLimit.getter()
{
  v0 = sub_1CFC9C5C8();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1CFBB1498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFF8, &qword_1CFCA8E48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v9 = *a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 104);
    MEMORY[0x1EEE9AC00](result);
    v12[-2] = v9;
    v12[-1] = v11;
    sub_1CFC84BE8();

    sub_1CFC9E938();
    sub_1CFC9EBB8();
    v12[3] = v5;
    v12[4] = sub_1CFBA57C0(&qword_1EE04D288, &qword_1EC4EFFF8, &qword_1CFCA8E48, MEMORY[0x1E697C858]);
    __swift_allocate_boxed_opaque_existential_0Tm(v12);
    sub_1CFC9E918();
    (*(v6 + 8))(v8, v5);
    MEMORY[0x1D38721F0](v12);
  }

  return result;
}

void *sub_1CFBB1694(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED630, &qword_1CFCA2510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED638, &qword_1CFCA2518);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFBB17DC(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBB1694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBB1804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v11 = result;
    swift_beginAccess();
    v12 = *&v11[v10];

    v13 = sub_1CFC9C128();
    if ((v13 & 0x8000000000000000) != 0 || v13 >= *(v12 + 16))
    {

      return 0;
    }

    else
    {
      v14 = *(v12 + 16 * v13 + 40);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 168))(a1, a2, a3, a4, ObjectType, v14);
      swift_unknownObjectRelease();
      return v16;
    }
  }

  return result;
}

uint64_t sub_1CFBB1930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  (*(v5 + 16))(&v20 - v7, v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerRegistration, v4, v6);
  type metadata accessor for SectionHeaderView();
  v21 = sub_1CFC9FBB8();
  (*(v5 + 8))(v8, v4);
  v9 = sub_1CFC77E6C();
  v11 = v10;
  v12 = *(v3 + 64);
  v13 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for SectionHeaderConfiguration(0);
  v14 = swift_allocObject();
  *(v14 + 49) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 512;
  sub_1CFC9C188();
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;

  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = v12 ^ 1;
  if (*(v14 + 49))
  {
    KeyPath = swift_getKeyPath();
    v20 = &v20;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v20 - 2) = v14;
    *(&v20 - 8) = 0;
    v22 = v14;
    sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
    sub_1CFC9C148();
  }

  else
  {
    *(v14 + 49) = 0;
  }

  if (v12)
  {
    v16 = sub_1CFC7ECC0;
  }

  else
  {
    v16 = sub_1CFC7ECC8;
  }

  v17 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v17);
  *(&v20 - 4) = v14;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  v22 = v14;
  sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C148();
  sub_1CFBABFA0(v16, v13);

  *(v3 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration) = v14;

  v18 = v21;
  sub_1CFC882F8(v14);

  return v18;
}

uint64_t sub_1CFBB1D24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
    v5 = sub_1CFC9C868();

    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v6 = sub_1CFC9D938();
    __swift_project_value_buffer(v6, qword_1EE052308);

    v7 = sub_1CFC9D918();
    v8 = sub_1CFC9FAF8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 67240450;
      *(v9 + 4) = v5 & 1;
      *(v9 + 8) = 2080;
      if (*(v3 + 64))
      {
        v11 = 0x5245444E494D4552;
      }

      else
      {
        v11 = 0x53544E45434552;
      }

      if (*(v3 + 64))
      {
        v12 = 0xE900000000000053;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      v13 = sub_1CFBB531C(v11, v12, &v14);

      *(v9 + 10) = v13;
      _os_log_impl(&dword_1CFB9F000, v7, v8, "RecentsSectionController received recentItems update, hasFinishedFirstLoad: %{BOOL,public}d. Section: %s", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1D3873280](v10, -1, -1);
      MEMORY[0x1D3873280](v9, -1, -1);
    }

    if ((v5 & 1) != 0 && (sub_1CFC76444(), swift_unknownObjectWeakLoadStrong()))
    {
      RecentsViewController.itemsDidUpdate()();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1CFBB1F70()
{
  if (*&v0[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration])
  {
    v1 = v0;
    v2 = OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView;
    v3 = *&v0[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView];

    [v3 removeFromSuperview];
    v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0030, &qword_1CFCA9080));

    v5 = sub_1CFC9E108();
    [v1 addSubview_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1CFCA3B60;
    v7 = [v5 leadingAnchor];
    v8 = [v1 layoutMarginsGuide];
    v9 = [v8 leadingAnchor];

    v10 = [v7 constraintEqualToAnchor_];
    *(v6 + 32) = v10;
    v11 = [v5 trailingAnchor];

    v12 = [v1 layoutMarginsGuide];
    v13 = [v12 trailingAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v6 + 40) = v14;
    v15 = [v5 topAnchor];

    v16 = [v1 layoutMarginsGuide];
    v17 = [v16 topAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v6 + 48) = v18;
    v19 = [v5 bottomAnchor];

    v20 = [v1 layoutMarginsGuide];
    v21 = [v20 bottomAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v6 + 56) = v22;
    sub_1CFBB2EA4();
    v23 = sub_1CFC9F898();

    [v1 addConstraints_];

    v24 = *&v1[v2];
    *&v1[v2] = v5;
  }
}

void *sub_1CFBB22BC(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED500, &qword_1CFCA2420, MEMORY[0x1E6993688]);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for SectionHeaderConfiguration(uint64_t a1)
{
  result = qword_1EE04EB80;
  if (!qword_1EE04EB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFBB234C(uint64_t a1)
{
  result = sub_1CFC9C198();
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

uint64_t sub_1CFBB240C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1CFBB2468(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t sub_1CFBB256C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFBB257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_1CFBB2568(a2, a3);
  return sub_1CFBB2564(v3, v4);
}

uint64_t sub_1CFBB25C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1CFC9C448();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1CFBB26AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFC7E7DC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t RecentsItem.valuesForHash.getter()
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFCA4C40;
  *&v53 = sub_1CFC9C348();
  *(&v53 + 1) = v11;
  sub_1CFCA0078();
  sub_1CFC9C418();
  sub_1CFBA29FC(v9, v6, &qword_1EC4ED0D8, &qword_1CFCA4220);
  sub_1CFBB2EF0();
  sub_1CFCA0078();
  v12 = sub_1CFC9C428();
  v13 = v12;
  *&v53 = MEMORY[0x1E69E7CC0];
  if (v12 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CFC9FFD8())
  {
    v47 = v0;
    if (!i)
    {
      break;
    }

    v42 = v9;
    v43 = v10;
    v15 = 0;
    v10 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v16 = MEMORY[0x1D3872640](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v9 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v16 hasBeenPersisted])
      {
        v0 = &v53;
        sub_1CFCA0138();
        sub_1CFCA0178();
        sub_1CFCA0188();
        sub_1CFCA0148();
      }

      else
      {
      }

      ++v15;
      if (v9 == i)
      {
        v18 = v53;
        v10 = v43;
        v9 = v42;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_16:

  sub_1CFBC2FB0(v9, &qword_1EC4ED0D8, &qword_1CFCA4220);
  *&v53 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE10, &qword_1CFCA8378);
  sub_1CFBB2FC4();
  sub_1CFCA0078();
  v19 = sub_1CFC9C408();
  if (v19)
  {
    v20 = v19;
    v21 = sub_1CFC9D658();

    v22 = v21 & 1;
  }

  else
  {
    v22 = 2;
  }

  v23 = v45;
  LOBYTE(v53) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE18, &unk_1CFCA8380);
  sub_1CFC730AC(&qword_1EE04D0F0, &qword_1EC4EFE18, &unk_1CFCA8380);
  sub_1CFCA0078();
  *&v53 = sub_1CFC9C398();
  *(&v53 + 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7C0, &qword_1CFCA78D8);
  sub_1CFC730AC(&qword_1EE04D120, &qword_1EC4EF7C0, &qword_1CFCA78D8);
  sub_1CFCA0078();
  *&v53 = sub_1CFC9C368();
  *(&v53 + 1) = v25;
  sub_1CFCA0078();
  v26 = v44;
  sub_1CFC9C378();
  sub_1CFBA29FC(v26, v23, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  sub_1CFC73114();
  sub_1CFCA0078();
  sub_1CFBC2FB0(v26, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  v56 = sub_1CFC9C3D8();
  v57 = v27;
  v58 = sub_1CFC9C438();
  v59 = v28;
  if (v57)
  {
    v48 = v56;
    v49 = v57;
    swift_bridgeObjectRetain_n();
    sub_1CFCA0078();
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
  }

  v53 = v50;
  v54 = v51;
  v55 = v52;

  if (*(&v54 + 1))
  {
    v50 = v53;
    v51 = v54;
    v52 = v55;
    v29 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1CFBB30BC(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1CFBB30BC((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v50;
    v34 = v51;
    *(v32 + 8) = v52;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v35 = v59;
    if (v59)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1CFBC2FB0(&v53, &qword_1EC4EFE20, &qword_1CFCA8390);
    v29 = MEMORY[0x1E69E7CC0];
    v35 = v59;
    if (v59)
    {
LABEL_28:
      v48 = v58;
      v49 = v35;
      swift_bridgeObjectRetain_n();
      sub_1CFCA0078();
      goto LABEL_31;
    }
  }

  v52 = 0;
  v50 = 0u;
  v51 = 0u;
LABEL_31:
  v53 = v50;
  v54 = v51;
  v55 = v52;

  if (*(&v54 + 1))
  {
    v50 = v53;
    v51 = v54;
    v52 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1CFBB30BC(0, *(v29 + 2) + 1, 1, v29);
    }

    v37 = *(v29 + 2);
    v36 = *(v29 + 3);
    if (v37 >= v36 >> 1)
    {
      v29 = sub_1CFBB30BC((v36 > 1), v37 + 1, 1, v29);
    }

    *(v29 + 2) = v37 + 1;
    v38 = &v29[40 * v37];
    v39 = v50;
    v40 = v51;
    *(v38 + 8) = v52;
    *(v38 + 2) = v39;
    *(v38 + 3) = v40;
  }

  else
  {
    sub_1CFBC2FB0(&v53, &qword_1EC4EFE20, &qword_1CFCA8390);
  }

  swift_arrayDestroy();
  *&v53 = v10;
  sub_1CFBB31DC(v29);
  return v53;
}

unint64_t sub_1CFBB2EA4()
{
  result = qword_1EE04FF78;
  if (!qword_1EE04FF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04FF78);
  }

  return result;
}

unint64_t sub_1CFBB2EF0()
{
  result = qword_1EE04D680;
  if (!qword_1EE04D680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
    sub_1CFBB240C(&qword_1EE04D688, MEMORY[0x1E6993780], MEMORY[0x1E6993788]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D680);
  }

  return result;
}

unint64_t sub_1CFBB2FC4()
{
  result = qword_1EE04D0F8;
  if (!qword_1EE04D0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFE10, &qword_1CFCA8378);
    sub_1CFC72300(&qword_1EE04CED0, &unk_1EE04CED8, 0x1E695CD58, MEMORY[0x1E69E81B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D0F8);
  }

  return result;
}

uint64_t sub_1CFBB3074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1CFBB30BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1CFBB31DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1CFBB30BC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1CFBB32DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1CFC9FEB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-v9];
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13];
  sub_1CFBB4598(a1, v19);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v17 = (*(a2 + 48))(v14);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1CFBB3504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1CFC9EA48();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0038, &qword_1CFCA9220);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0040, &qword_1CFCA9228);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  *v7 = sub_1CFC9E588();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0048, &qword_1CFCA9230);
  sub_1CFC86DAC(a1, &v7[*(v11 + 44)]);
  v12 = sub_1CFC9EBC8();
  swift_getKeyPath();
  v38 = a1;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0050, &qword_1CFCA9238) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = sub_1CFC9EBE8();
  swift_getKeyPath();
  v38 = a1;
  sub_1CFC9C158();

  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v23 = &v7[*(v5 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  swift_getKeyPath();
  v38 = a1;
  sub_1CFC9C158();

  if (*(a1 + 40) && (swift_getKeyPath(), v38 = a1, sub_1CFC9C158(), , *(a1 + 56)) && (swift_getKeyPath(), v38 = a1, sub_1CFC9C158(), , (*(a1 + 72) & 1) == 0))
  {
    v28 = v32;
    sub_1CFC9EA38();
  }

  else
  {
    v28 = v32;
    sub_1CFC9EA28();
  }

  v29 = sub_1CFC88418();
  sub_1CFC9EFB8();
  (*(v35 + 8))(v28, v36);
  sub_1CFBC2FB0(v7, &qword_1EC4F0038, &qword_1CFCA9220);
  v38 = v5;
  v39 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v34;
  sub_1CFC9F008();
  return (*(v33 + 8))(v10, v30);
}

double sub_1CFBB3B58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CFC861B8(v1, v2);
}

uint64_t sub_1CFBB3B98(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[5];
      v10 = v7[3];
      v38 = v7[4];
      v39 = v9;
      v11 = v7[5];
      v40 = v7[6];
      v12 = v7[1];
      v35[0] = *v7;
      v35[1] = v12;
      v13 = v7[3];
      v15 = *v7;
      v14 = v7[1];
      v36 = v7[2];
      v37 = v13;
      v31 = v38;
      v32 = v11;
      v33 = v7[6];
      v27 = v15;
      v28 = v14;
      v41 = *(v7 + 14);
      v34 = *(v7 + 14);
      v29 = v36;
      v30 = v10;
      sub_1CFBA29FC(v35, &v19, &qword_1EC4ED5C8, &qword_1CFCA24B0);
      v16 = a1(&v27);
      if (v3)
      {
        break;
      }

      v4 = v16;
      v23 = v31;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v19 = v27;
      v20 = v28;
      v21 = v29;
      v22 = v30;
      sub_1CFBC2FB0(&v19, &qword_1EC4ED5C8, &qword_1CFCA24B0);
      v17 = v8-- == 0;
      v7 = (v7 + 120);
      if ((v4 | v17))
      {
        return v4 & 1;
      }
    }

    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    sub_1CFBC2FB0(&v19, &qword_1EC4ED5C8, &qword_1CFCA24B0);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1CFBB3D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE540, &qword_1CFCA4690);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = v49 - v9;
  v54 = sub_1CFC9CF08();
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - v12;
  v14 = sub_1CFC9C448();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE04D610 != -1)
  {
    swift_once();
  }

  v18 = sub_1CFC9D938();
  __swift_project_value_buffer(v18, qword_1EE04D618);
  v19 = *(v15 + 16);
  v51 = v15 + 16;
  v52 = a2;
  v50 = v19;
  v19(v17, a2, v14);
  v20 = sub_1CFC9D918();
  v21 = sub_1CFC9FAF8();
  v22 = os_log_type_enabled(v20, v21);
  v59 = v15;
  if (v22)
  {
    v49[0] = a3;
    v49[1] = a1;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v60[0] = v24;
    *v23 = 136315138;
    v25 = sub_1CFC9C408();
    if (v25)
    {
      v26 = v25;
      sub_1CFC9D668();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = sub_1CFC9C008();
    (*(*(v28 - 8) + 56))(v13, v27, 1, v28);
    v29 = sub_1CFC9F798();
    v31 = v30;
    (*(v59 + 8))(v17, v14);
    v32 = sub_1CFBB531C(v29, v31, v60);

    *(v23 + 4) = v32;
    _os_log_impl(&dword_1CFB9F000, v20, v21, "Cell is dequeued for callUUID: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1D3873280](v24, -1, -1);
    MEMORY[0x1D3873280](v23, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v33 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  v34 = v56;
  swift_beginAccess();
  v35 = v58;
  v36 = v34 + v33;
  v37 = v57;
  v38 = v54;
  (*(v58 + 16))(v57, v36, v54);
  v39 = (*(v35 + 88))(v37, v38);
  v40 = v55;
  if (v39 != *MEMORY[0x1E6995A90])
  {
    v47 = (v59 + 56);
    v48 = v53;
    if (v39 == *MEMORY[0x1E6995A68])
    {
      v50(v53, v52, v14);
      (*v47)(v48, 0, 1, v14);
      type metadata accessor for RecentsStyleListCell();
      v46 = sub_1CFC9FBA8();
      sub_1CFBC2FB0(v48, &qword_1EC4EE368, &unk_1CFCA4040);
    }

    else
    {
      v50(v53, v52, v14);
      (*v47)(v48, 0, 1, v14);
      type metadata accessor for RecentsStyleListCell();
      v46 = sub_1CFC9FBA8();
      sub_1CFBC2FB0(v48, &qword_1EC4EE368, &unk_1CFCA4040);
      (*(v58 + 8))(v57, v38);
    }

    return v46;
  }

  v41 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsCellRegistration;
  swift_beginAccess();
  sub_1CFBA29FC(v34 + v41, v40, &qword_1EC4EE540, &qword_1CFCA4690);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v43 = *(v42 - 8);
  result = (*(v43 + 48))(v40, 1, v42);
  if (result != 1)
  {
    v45 = v53;
    v50(v53, v52, v14);
    (*(v59 + 56))(v45, 0, 1, v14);
    type metadata accessor for RecentsStyleListCell();
    v46 = sub_1CFC9FBA8();
    sub_1CFBC2FB0(v45, &qword_1EC4EE368, &unk_1CFCA4040);
    (*(v43 + 8))(v40, v42);
    return v46;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFBB4460()
{
  result = qword_1EE04FFB0;
  if (!qword_1EE04FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04FFB0);
  }

  return result;
}

double sub_1CFBB44C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1CFBB44D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = a2[3];
  v4 = __swift_project_boxed_opaque_existential_1(a2, v3);
  v8[3] = v3;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0Tm, v4, v3);
  v6 = v2(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6 & 1;
}

uint64_t sub_1CFBB4598(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CFBB45F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1CFBB46AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a1;
  v6 = sub_1CFC9DB68();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9CF08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1CFC9CD28();
  v16 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  swift_beginAccess();
  (*(v10 + 16))(v15, a3 + v16, v9);
  (*(v10 + 104))(v12, *MEMORY[0x1E6995A90], v9);
  sub_1CFBB240C(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
  sub_1CFC9F878();
  sub_1CFC9F878();
  if (v27 == v26)
  {
    v17 = *(v10 + 8);
    v17(v12, v9);
    v17(v15, v9);
  }

  else
  {
    v18 = sub_1CFCA02B8();
    v19 = *(v10 + 8);
    v19(v12, v9);
    v19(v15, v9);

    if ((v18 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_1CFC9CD28();
  v28 = v27;
LABEL_5:
  v20 = sub_1CFC9DB78();
  (*(*(v20 - 8) + 16))(a4, v24, v20);
  if (!sub_1CFC9C0F8())
  {
    (*(v22 + 104))(v8, *MEMORY[0x1E69DC178], v23);
    sub_1CFC9DB38();
  }

  sub_1CFC9CD28();
  return sub_1CFC9DB58();
}

Swift::Void __swiftcall RecentsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1CFC9CF08();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v2;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_viewDidAppear_, a1, v7);
  (*(v6 + 104))(v9, *MEMORY[0x1E6995A70], v5);
  sub_1CFC9C788();
  (*(v6 + 8))(v9, v5);
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    sub_1CFBAB5EC();
    [v2 becomeFirstResponder];
  }

  v12 = *&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager];
  v13 = CAUILayoutManager.shouldShowTip.getter();

  if (v13)
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = objc_allocWithZone(type metadata accessor for LayoutTipViewController(0));
    v16 = sub_1CFC3B82C(&unk_1CFCA7970, v14);
    v17 = [v16 popoverPresentationController];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1CFC585F4();
      [v18 setSourceItem_];
    }

    v20 = [v16 popoverPresentationController];

    if (v20)
    {
      v21 = [v2 tabBarController];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 tabBar];

        v29 = v23;
        v28 = MEMORY[0x1E69E7CC0];
        if (v23)
        {
          v24 = v23;
          MEMORY[0x1D3871DC0]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27[1] = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1CFC9F8C8();
          }

          sub_1CFC9F8F8();
        }
      }

      else
      {
        v29 = 0;
      }

      sub_1CFBC2FB0(&v29, &unk_1EC4EF8D8, &qword_1CFCA7978);
      sub_1CFBA2D80(0, &qword_1EE04CF30, 0x1E69DD250);
      v25 = sub_1CFC9F898();

      [v20 setPassthroughViews_];
    }

    [v2 presentViewController:v16 animated:1 completion:0];
  }

  v26 = [objc_opt_self() defaultCenter];
  [v26 addObserver:v2 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
}

void sub_1CFBB50A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1CFBB510C(uint64_t a1, char *a2, void *a3, unint64_t *a4, void *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1CFC9FFD8();
  if (result < v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  v15 = &v10[-v11];
  if (__OFSUB__(v10, v11))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = 1 - v15;
  if (__OFSUB__(1, v15))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v17 = sub_1CFC9FFD8();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = __OFADD__(v17, v16);
  result = (v17 + v16);
  if (!v18)
  {
    sub_1CFBB55A4(result, 1);
    return sub_1CFBB56D4(v11, v10, 1, v9, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1CFBB5204(uint64_t a1)
{
  sub_1CFBB50A8(319, &qword_1EE04D578, MEMORY[0x1E69CA888], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1CFBB50A8(319, &qword_1EE04D6B8, MEMORY[0x1E6993688], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1CFBB02CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1CFBB531C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFBB5498(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1CFBB4598(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t storeEnumTagSinglePayload for AppType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CFBB5498(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CFC8D3E4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1CFCA0128();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1CFBB55A4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1CFC9FFD8();
LABEL_9:
  result = sub_1CFCA0118();
  *v2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

char *sub_1CFBB56D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_1CFBA2D80(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1CFC9FFD8();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_1CFC9FFD8();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

void *sub_1CFBB5818@<X0>(void *a1@<X8>)
{
  sub_1CFBB5868();
  result = sub_1CFC9E4F8();
  *a1 = v3;
  return result;
}

unint64_t sub_1CFBB5868()
{
  result = qword_1EE04D378;
  if (!qword_1EE04D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D378);
  }

  return result;
}

uint64_t sub_1CFBB58BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecentsEditMode(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_1CFC9C188();
  *a1 = v2;
  return result;
}

uint64_t sub_1CFBB590C()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI15RecentsEditMode___observationRegistrar;
  v2 = sub_1CFC9C198();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFBB59C8(uint64_t *a1)
{
  sub_1CFBB5868();

  return sub_1CFC9E508();
}

uint64_t sub_1CFBB5A28()
{
  sub_1CFBB67C4();
  sub_1CFC9E4F8();
  v0 = v3;
  if (v3 == 2)
  {
    if (qword_1EE04F6F0 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE052300;
    swift_getKeyPath();
    sub_1CFBB7358();

    sub_1CFC9C158();

    v0 = *(v1 + 24);
  }

  return v0 & 1;
}

uint64_t type metadata accessor for RecentsCellState(uint64_t a1)
{
  result = qword_1EE04F998;
  if (!qword_1EE04F998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFBB5B58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFBB5A28();
  *a1 = result & 1;
  return result;
}

void *sub_1CFBB5B88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF478, &qword_1CFCA6F58);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v69 - v5;
  v7 = sub_1CFC9D7E8();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v69 - v12;
  v13 = sub_1CFC9C688();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFC9C318();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CFC9C428();
  if (v20 >> 62)
  {
    v70 = v20;
    v21 = sub_1CFC9FFD8();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 == 1)
  {
    v70 = sub_1CFC9C3D8();
    v23 = v22;
  }

  else
  {
    v70 = 0;
    v23 = 0;
  }

  sub_1CFC9C3B8();
  v24 = (*(v17 + 88))(v19, v16);
  if (v24 == *MEMORY[0x1E6993648])
  {

    (*(v17 + 96))(v19, v16);
    v25 = *v19;
    goto LABEL_10;
  }

  if (v24 == *MEMORY[0x1E6993650])
  {

    (*(v17 + 96))(v19, v16);
    v25 = *v19;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF488, &qword_1CFCA6F70);
    (*(v71 + 8))(&v19[*(v26 + 48)], v72);
    goto LABEL_10;
  }

  if (v24 == *MEMORY[0x1E6993678])
  {
    (*(v17 + 96))(v19, v16);
    v31 = *v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF480, &unk_1CFCA6F60);
    v30 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v1 = swift_allocObject();
    v44 = sub_1CFC9D5F8();
    if (v44)
    {
      v45 = v44;
      v46 = v23;
      v47 = v45;
      sub_1CFC4BDB0(v45, v70, v46);
      v49 = v74;
      v48 = v75;
      (*(v75 + 56))(v1 + v30, 0, 1, v74);
    }

    else
    {

      v49 = v74;
      v48 = v75;
      (*(v75 + 56))(v1 + v30, 1, 1, v74);
    }

    sub_1CFBA29FC(v1 + v30, v6, &qword_1EC4EF478, &qword_1CFCA6F58);
    sub_1CFBCCE88(v6, v3, &qword_1EC4EF478, &qword_1CFCA6F58);
    if ((*(v48 + 48))(v3, 1, v49) == 1)
    {
      sub_1CFBC2FB0(v3, &qword_1EC4EF478, &qword_1CFCA6F58);
      v16 = MEMORY[0x1E69E7CC0];
LABEL_39:

      swift_setDeallocating();
      sub_1CFBC2FB0(v1 + v30, &qword_1EC4EF478, &qword_1CFCA6F58);
      swift_deallocClassInstance();
      return v16;
    }

    v19 = *(v48 + 32);
    (v19)(v10, v3, v49);
    v16 = MEMORY[0x1E69E7CC0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_36:
      v55 = v16[2];
      v54 = v16[3];
      if (v55 >= v54 >> 1)
      {
        v16 = sub_1CFBB6DB4((v54 > 1), v55 + 1, 1, v16);
      }

      v16[2] = v55 + 1;
      (v19)(v16 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, v10, v74);
      goto LABEL_39;
    }

LABEL_61:
    v16 = sub_1CFBB6DB4(0, v16[2] + 1, 1, v16);
    goto LABEL_36;
  }

  if (v24 == *MEMORY[0x1E6993660])
  {

    (*(v17 + 96))(v19, v16);
    v25 = *v19;

LABEL_10:
    v27 = [v25 remoteMembers];

    sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
    sub_1CFC4CE54(&qword_1EC4EEAC8, &qword_1EC4ED538, 0x1E69D8B80);
    v28 = sub_1CFC9F9D8();

    sub_1CFC4AEA8(v28);
    v10 = v29;

    if (v10 >> 62)
    {
      v30 = sub_1CFC9FFD8();
      if (v30)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_12:
        v76 = MEMORY[0x1E69E7CC0];
        v31 = &v76;
        sub_1CFBCAAAC(0, v30 & ~(v30 >> 63), 0);
        if ((v30 & 0x8000000000000000) == 0)
        {
          v32 = 0;
          v16 = v76;
          v70 = v75 + 32;
          v71 = v10 & 0xC000000000000001;
          v69 = xmmword_1CFCA1DD0;
          v72 = v10;
          do
          {
            if (v71)
            {
              v33 = MEMORY[0x1D3872640](v32, v10);
            }

            else
            {
              v33 = *(v10 + 8 * v32 + 32);
            }

            v34 = v33;
            v35 = [v33 siriDisplayName];
            if (!v35)
            {
              v35 = [v34 value];
            }

            sub_1CFC9F768();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
            inited = swift_initStackObject();
            *(inited + 16) = v69;
            v37 = [v34 value];
            v38 = sub_1CFC9F768();
            v40 = v39;

            *(inited + 32) = v38;
            *(inited + 40) = v40;
            sub_1CFBB6864(inited);
            swift_setDeallocating();
            sub_1CFBB6A98(inited + 32);
            v41 = v73;
            sub_1CFC9D7D8();

            v76 = v16;
            v43 = v16[2];
            v42 = v16[3];
            if (v43 >= v42 >> 1)
            {
              sub_1CFBCAAAC((v42 > 1), v43 + 1, 1);
              v16 = v76;
            }

            ++v32;
            v16[2] = v43 + 1;
            (*(v75 + 32))(v16 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v43, v41, v74);
            v10 = v72;
          }

          while (v30 != v32);

          return v16;
        }

        __break(1u);
        goto LABEL_61;
      }
    }

    goto LABEL_57;
  }

  if (v24 == *MEMORY[0x1E6993670])
  {
    v50 = v23;
    (*(v17 + 96))(v19, v16);
    v51 = *v19;
    goto LABEL_30;
  }

  if (v24 == *MEMORY[0x1E6993680])
  {
    v56 = v23;
    (*(v17 + 96))(v19, v16);
    v57 = *v19;
    v58 = [*v19 remoteParticipantHandles];
    if (v58)
    {
      v59 = v58;
      sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
      sub_1CFC4CE54(&qword_1EE04CF10, &unk_1EE04CF18, 0x1E6993578);
      v60 = sub_1CFC9F9D8();

      v16 = sub_1CFC4C884(v60, v70, v56);
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF490, &qword_1CFCA6F78);
    (*(v71 + 8))(&v19[*(v65 + 48)], v72);
    return v16;
  }

  if (v24 == *MEMORY[0x1E6993658])
  {
    v50 = v23;
    (*(v17 + 96))(v19, v16);
    v51 = *v19;

LABEL_30:
    v52 = [v51 remoteParticipantHandles];

    if (v52)
    {
      sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
      sub_1CFC4CE54(&qword_1EE04CF10, &unk_1EE04CF18, 0x1E6993578);
      v53 = sub_1CFC9F9D8();

      v16 = sub_1CFC4C884(v53, v70, v50);

      swift_bridgeObjectRelease_n();
      return v16;
    }

LABEL_57:

    return MEMORY[0x1E69E7CC0];
  }

  if (v24 != *MEMORY[0x1E6993668])
  {
    v66 = *MEMORY[0x1E6993640];
    v67 = v24;

    if (v67 != v66)
    {
      (*(v17 + 8))(v19, v16);
    }

    return MEMORY[0x1E69E7CC0];
  }

  (*(v17 + 96))(v19, v16);
  v62 = v71;
  v61 = v72;
  (*(v71 + 32))(v15, v19, v72);
  v63 = sub_1CFC9C678();
  if (!v63)
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      if (sub_1CFC9FFD8())
      {
        sub_1CFC72CB4(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v63 = MEMORY[0x1E69E7CD0];
      }

      v62 = v71;
      v61 = v72;
    }

    else
    {
      v63 = MEMORY[0x1E69E7CD0];
    }
  }

  sub_1CFC4A974(v63);
  v16 = v64;

  (*(v62 + 8))(v15, v61);
  return v16;
}

unint64_t sub_1CFBB67C4()
{
  result = qword_1EE04EBA0;
  if (!qword_1EE04EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04EBA0);
  }

  return result;
}

uint64_t sub_1CFBB6824()
{
  type metadata accessor for ObservableLayoutManager(0);
  swift_allocObject();
  result = sub_1CFBB6B94();
  qword_1EE052300 = result;
  return result;
}

uint64_t sub_1CFBB6864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFE00, &unk_1CFCA8350);
    v3 = sub_1CFCA00B8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1CFCA0338();

      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1CFCA02B8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1CFBB69CC()
{
  v0 = sub_1CFC9D938();
  __swift_allocate_value_buffer(v0, qword_1EE04D618);
  __swift_project_value_buffer(v0, qword_1EE04D618);
  return sub_1CFC9D928();
}

uint64_t type metadata accessor for ObservableLayoutManager(uint64_t a1)
{
  result = qword_1EE04F6D8;
  if (!qword_1EE04F6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFBB6AEC(uint64_t a1)
{
  result = sub_1CFC9C198();
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

uint64_t sub_1CFBB6B94()
{
  v1 = objc_opt_self();
  v2 = [v1 shared];
  v3 = [v2 current];

  *(v0 + 16) = v3;
  v4 = [v1 shared];
  LOBYTE(v3) = [v4 tapRecentsToCall];

  *(v0 + 24) = v3;
  sub_1CFC9C188();
  v5 = [v1 shared];
  v6 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1CFBB6F18;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CFBA296C;
  v10[3] = &block_descriptor_4;
  v7 = _Block_copy(v10);

  [v5 addObserver:v0 onUpdate:v7];
  _Block_release(v7);

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v0 selector:sel_update name:*MEMORY[0x1E69DDBC0] object:0];

  return v0;
}

uint64_t sub_1CFBB6D7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1CFBB6E30()
{
  result = qword_1EE04D538;
  if (!qword_1EE04D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE200, &qword_1CFCA8720);
    sub_1CFC00928(qword_1EE04FC30, type metadata accessor for RecentsItemCell, &protocol conformance descriptor for RecentsItemCell);
    sub_1CFBA57C0(&qword_1EE04D248, &qword_1EC4EE208, &unk_1CFCA87B0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D538);
  }

  return result;
}

uint64_t sub_1CFBB6F20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFBB711C();
  }

  return result;
}

void sub_1CFBB6F78(uint64_t a1)
{
  sub_1CFBB50A8(319, &qword_1EE04D570, type metadata accessor for RecentsEditMode, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1CFC06FA8(319, &qword_1EE04D568, &type metadata for RecentCellAccessoryType, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1CFBB50A8(319, &qword_1EE04D580, MEMORY[0x1E6995A00], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1CFC9C448();
        if (v4 <= 0x3F)
        {
          sub_1CFBB02CC();
          if (v5 <= 0x3F)
          {
            sub_1CFBB73B0();
            if (v6 <= 0x3F)
            {
              sub_1CFC06FA8(319, &qword_1EE04FFC0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CFBB711C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 shared];
  v4 = [v3 current];

  if (*(v1 + 16) != v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB7358();
    sub_1CFC9C148();
  }

  v6 = [v2 shared];
  v7 = [v6 tapRecentsToCall];

  if (v7 == *(v1 + 24))
  {
    *(v1 + 24) = v7;
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1CFBB7358();
    sub_1CFC9C148();
  }
}

unint64_t sub_1CFBB7358()
{
  result = qword_1EE04F6E8;
  if (!qword_1EE04F6E8)
  {
    type metadata accessor for ObservableLayoutManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04F6E8);
  }

  return result;
}

unint64_t sub_1CFBB73B0()
{
  result = qword_1EE04D648;
  if (!qword_1EE04D648)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE04D648);
  }

  return result;
}

uint64_t sub_1CFBB7418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CFBB7460()
{
  result = qword_1EE04D1A8;
  if (!qword_1EE04D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D1A8);
  }

  return result;
}

uint64_t sub_1CFBB74B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1CFBB74FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CFBB44C0(a1, a2, a3 & 1);
  }

  return result;
}

void sub_1CFBB7540(uint64_t a1)
{
  sub_1CFC9C448();
  if (v1 <= 0x3F)
  {
    sub_1CFBC2ED4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFBB75CC()
{
  result = qword_1EE04D540;
  if (!qword_1EE04D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE308, &qword_1CFCA3F48);
    sub_1CFC06190(&qword_1EE04D640, MEMORY[0x1E6995CC8], MEMORY[0x1E6995CC0]);
    sub_1CFBA57C0(&qword_1EE04FFD8, &qword_1EC4EE2C0, &qword_1CFCA3F00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D540);
  }

  return result;
}

unint64_t sub_1CFBB76B4()
{
  result = qword_1EE04D208;
  if (!qword_1EE04D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED7C0, &qword_1CFCA3EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D208);
  }

  return result;
}

void sub_1CFBB7780(uint64_t *a1@<X8>)
{
  type metadata accessor for RecentsItemCell(0);
  v2 = sub_1CFC9C408();
  if (v2 && (v3 = v2, sub_1CFC9D678(), v5 = v4, v3, v6 = [objc_opt_self() shared], v7 = objc_msgSend(v6, sel_current), v6, !v7))
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v11 setAllowedUnits_];
    [v11 setZeroFormattingBehavior_];
    if (v5 >= 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = 45;
    }

    v13 = 0xE000000000000000;
    if (v5 >= 0.0)
    {
      v14 = 0xE000000000000000;
    }

    else
    {
      v14 = 0xE100000000000000;
    }

    v15 = [v11 stringFromTimeInterval_];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1CFC9F768();
      v13 = v18;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x1D3871D30](v17, v13);

    v8 = v12;
    v9 = v14;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = 0;
  a1[3] = v10;
}

uint64_t sub_1CFBB791C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CFBB7A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1CFC9C3D8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    v8 = sub_1CFC9C408();
    if (!v8 || (v8, *(v0 + *(type metadata accessor for RecentsCellState(0) + 20)) == 1))
    {
      sub_1CFC9C418();
      v9 = sub_1CFC9CC18();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v3, 1, v9) == 1)
      {
        sub_1CFBC2FB0(v3, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v12 = sub_1CFC9CBF8();
        (*(v10 + 8))(v3, v9);
        if (v12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_1CFCA1DC0;
          *(v13 + 32) = v6;
          *(v13 + 40) = v7;
          type metadata accessor for BundleClass();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v15 = [objc_opt_self() bundleForClass_];
          v16 = sub_1CFC9BE28();
          v18 = v17;

          *(v13 + 48) = v16;
          *(v13 + 56) = v18;
          v24 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0F0, &unk_1CFCA2000);
          sub_1CFBA57C0(&qword_1EE04D108, &qword_1EC4ED0F0, &unk_1CFCA2000, MEMORY[0x1E69E6310]);
          v19 = sub_1CFC9F6E8();
          v21 = v20;

LABEL_10:
          v24 = v19;
          v25 = v21;
          sub_1CFBB4460();
          v11 = sub_1CFC9ED88();

          return v11;
        }
      }
    }

    v19 = v6;
    v21 = v7;
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_1CFBB7D90(uint64_t a1)
{
  v2 = sub_1CFBB74B4(&unk_1EE04F9A8, type metadata accessor for RecentsCellState, &unk_1CFCA1F8C);

  return MEMORY[0x1EEDF6B58](a1, v2);
}

uint64_t sub_1CFBB7DFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1CFC9C408();
  if (!v6 || (v6, *(v1 + *(a1 + 20)) == 1))
  {
    sub_1CFC9C418();
    v7 = sub_1CFC9CC18();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_1CFC9CBF8();
      (*(v8 + 8))(v5, v7);
      return v9 & 1;
    }

    sub_1CFBC2FB0(v5, &qword_1EC4ED0D8, &qword_1CFCA4220);
  }

  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1CFBB7F3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v44 - v1;
  if (qword_1EC4ECFE0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4ECFE8 != 1 || (result = sub_1CFC9C368(), !v4))
  {
    v5 = sub_1CFC9C398();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = objc_opt_self();
      v11 = [v10 bundleForClass_];
      v12 = sub_1CFC9BE28();
      v14 = v13;

      v45 = v12;
      v46 = v14;

      MEMORY[0x1D3871D30](v7, v8);

      v16 = v45;
      v15 = v46;
      v17 = [v10 bundleForClass_];
      v18 = sub_1CFC9BE28();
      v20 = v19;

      v45 = v16;
      v46 = v15;

      MEMORY[0x1D3871D30](v18, v20);

      return v45;
    }

    else
    {
      v21 = sub_1CFC9C438();
      if (!v22)
      {
        return 0;
      }

      v23 = v22;
      v24 = v21;
      sub_1CFC9C418();
      v25 = sub_1CFC9CC18();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v2, 1, v25) == 1)
      {
        sub_1CFBC2FB0(v2, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v27 = sub_1CFC9CBC8();
        (*(v26 + 8))(v2, v25);
        if (v27 >= 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1CFCA1DC0;
          *(v28 + 32) = v24;
          *(v28 + 40) = v23;
          v29 = v23;
          type metadata accessor for BundleClass();
          v30 = swift_getObjCClassFromMetadata();
          v31 = objc_opt_self();

          v32 = [v31 bundleForClass_];
          sub_1CFC9BE28();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF900, &qword_1CFCA1FF8);
          v33 = swift_allocObject();
          v34 = MEMORY[0x1E69E6530];
          *(v33 + 16) = xmmword_1CFCA1DD0;
          v35 = MEMORY[0x1E69E65A8];
          *(v33 + 56) = v34;
          *(v33 + 64) = v35;
          *(v33 + 32) = v27;
          v36 = sub_1CFC9F778();
          v38 = v37;

          *(v28 + 48) = v36;
          *(v28 + 56) = v38;
          v45 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0F0, &unk_1CFCA2000);
          sub_1CFBA57C0(&qword_1EE04D108, &qword_1EC4ED0F0, &unk_1CFCA2000, MEMORY[0x1E69E6310]);
          v39 = sub_1CFC9F6E8();
          v41 = v40;

          v45 = v24;
          v46 = v29;
          MEMORY[0x1D3871D30](2662594, 0xA300000000000000);
          v44[1] = v27;
          v42 = sub_1CFCA0288();
          MEMORY[0x1D3871D30](v42);

          MEMORY[0x1D3871D30](41, 0xE100000000000000);
          v45 = v39;
          v46 = v41;
          sub_1CFBB4460();
          v43 = sub_1CFC9ED88();

          return v43;
        }
      }

      return v24;
    }
  }

  return result;
}

uint64_t sub_1CFBB84F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFBB8584@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v29 = type metadata accessor for RecentsCircleButtonStyle(0);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecentCellAccessoryButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED860, &unk_1CFCA29D0);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED868, &unk_1CFCA4230);
  MEMORY[0x1EEE9AC00](v34);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v31 = &v28 - v18;
  sub_1CFBB84F4(v2, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecentCellAccessoryButton);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_1CFC07090(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for RecentCellAccessoryButton);
  v37 = v2;
  sub_1CFC9F298();
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v21 = v29;
  sub_1CFC9CD28();
  sub_1CFBDA7AC();
  sub_1CFC9DEB8();
  v22 = sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
  v23 = sub_1CFC06190(&unk_1EE04F608, type metadata accessor for RecentsCircleButtonStyle, &unk_1CFCA40AC);
  sub_1CFC9EEC8();
  sub_1CFC07158(v4, type metadata accessor for RecentsCircleButtonStyle);
  (*(v30 + 8))(v10, v8);
  v38 = v8;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  sub_1CFC9F008();

  (*(v33 + 8))(v14, v24);
  v38 = sub_1CFC054C4();
  v39 = v25;
  sub_1CFBB4460();
  v26 = v31;
  sub_1CFC9E188();

  sub_1CFBC2FB0(v16, &qword_1EC4ED868, &unk_1CFCA4230);
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A8, &qword_1CFCA4270);
  sub_1CFBB9B54();
  sub_1CFC071C0();
  sub_1CFC9EE28();
  return sub_1CFBC2FB0(v26, &qword_1EC4ED868, &unk_1CFCA4230);
}

uint64_t sub_1CFBB8BEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E478();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBB8C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE2F8, &qword_1CFCA3F38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-v6];
  v8 = (a1 + *(type metadata accessor for RecentsItemCell(0) + 40));
  v9 = *v8;
  v10 = *(v8 + 1);
  v13[16] = v9;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v13[15])
  {
    v11 = 1;
  }

  else
  {
    sub_1CFBB9098(v7);
    sub_1CFBCCE88(v7, a2, &qword_1EC4EE2F8, &qword_1CFCA3F38);
    v11 = 0;
  }

  return (*(v5 + 56))(a2, v11, 1, v4);
}

uint64_t sub_1CFBB8DA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for RecentCellAccessoryButton(0);
  v8 = v7;
  if ((*(v0 + *(v7 + 24)) & 1) == 0)
  {
    sub_1CFBA29FC(v0 + *(v7 + 20), v6, &qword_1EC4EE368, &unk_1CFCA4040);
    v14 = sub_1CFC9C448();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_1CFBC2FB0(v6, &qword_1EC4EE368, &unk_1CFCA4040);
    }

    else
    {
      v16 = sub_1CFC9C3E8();
      (*(v15 + 8))(v6, v14);
      if (v16)
      {
        return 0x69662E6F65646976;
      }
    }

    return 0x69662E656E6F6870;
  }

  v9 = 0x7269632E6F666E69;
  v10 = [objc_opt_self() shared];
  v11 = [v10 current];

  if (v11)
  {
    sub_1CFBA29FC(v0 + *(v8 + 20), v3, &qword_1EC4EE368, &unk_1CFCA4040);
    v12 = sub_1CFC9C448();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v3, 1, v12) == 1)
    {
      sub_1CFBC2FB0(v3, &qword_1EC4EE368, &unk_1CFCA4040);
    }

    else
    {
      v17 = sub_1CFC9C408();
      (*(v13 + 8))(v3, v12);
      if (v17)
      {

        return 0x6E6964726F636572;
      }
    }
  }

  return v9;
}

uint64_t sub_1CFBB9098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1CFC9CD88();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1CFC9BFB8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE308, &qword_1CFCA3F48);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v23[-v7];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE300, &qword_1CFCA3F40);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v23[-v9];
  v11 = [objc_opt_self() shared];
  v12 = [v11 current];

  if (v12 || (type metadata accessor for RecentsItemCell(0), (v13 = sub_1CFC9C408()) == 0))
  {
    v24 = 0;
  }

  else
  {

    v24 = 1;
  }

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = (v2 + *(type metadata accessor for RecentsItemCell(0) + 36));
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1CFC9D038();
  sub_1CFC9D1C8();
  sub_1CFC013D4(v5);
  v17 = sub_1CFC9CD78();
  (*(v26 + 8))(v5, v27);
  KeyPath = swift_getKeyPath();
  v19 = &v8[*(v25 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  if (v15 == 6)
  {
    v20 = sub_1CFC9F188();
  }

  else if (v24)
  {
    v20 = sub_1CFC9F178();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v20 = sub_1CFC9D058();
  }

  v21 = v20;
  sub_1CFBCCE88(v8, v10, &qword_1EC4EE308, &qword_1CFCA3F48);
  *&v10[*(v28 + 36)] = v21;
  sub_1CFC06AD8();
  sub_1CFC9F008();
  return sub_1CFBC2FB0(v10, &qword_1EC4EE300, &qword_1CFCA3F40);
}