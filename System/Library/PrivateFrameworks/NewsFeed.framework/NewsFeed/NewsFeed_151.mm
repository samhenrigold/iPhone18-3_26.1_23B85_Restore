void sub_1D690C908(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, qword_1EDF3E5E0, &protocol descriptor for FormatLayoutViewRendererType, 0);
  sub_1D725AACC();
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v5 = *(v10 + 16);
    v6 = v3;
    v5(v3, ObjectType);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D6911C98(0);
    if (sub_1D725AABC())
    {
      swift_unknownObjectRelease();
      v7 = sub_1D5B85F00(&qword_1EDF16ED8, sub_1D6911C98, MEMORY[0x1E69D84F8]);
      v8 = &v6[OBJC_IVAR____TtC8NewsFeed20FormatViewController_selectionProvider];
      swift_beginAccess();
      *(v8 + 1) = v7;
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D690CA94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5B68374(a1, v6);
  v3 = type metadata accessor for FormatRouter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_1D5B63F14(v6, v4 + 24);
  a2[3] = v3;
  a2[4] = &off_1F5120C08;
  *a2 = v4;
  return result;
}

void sub_1D690CB10(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FormatViewController();
  v2 = sub_1D725AABC();
  swift_unknownObjectWeakAssign();
}

void *sub_1D690CB90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF0EFC8, &protocol descriptor for FormatInteractorType, 0);
  result = sub_1D725AACC();
  v5 = v28;
  if (!v28)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF11178, &protocol descriptor for FormatRouterType, 1);
  result = sub_1D725AACC();
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF405A0, &protocol descriptor for FormatTrackerType, 0);
  result = sub_1D725AACC();
  v7 = v24;
  if (v24)
  {
    v8 = v25;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v10 = MEMORY[0x1EEE9AC00](v9, v9);
    v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    v15 = type metadata accessor for FormatRouter();
    v23[3] = v15;
    v23[4] = &off_1F5120C08;
    v23[0] = v14;
    type metadata accessor for FormatEventHandler();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v15);
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = sub_1D69123E8(v5, v6, *v20, v7, v8, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    *a2 = v22;
    a2[1] = &off_1F51B7AB8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D690CE90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF0E2E0, &protocol descriptor for FormatDataManagerType, 0);
  result = sub_1D725AACC();
  v5 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6910E80(0, v7);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatBlueprintModifierFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B53EDC(0, qword_1EDF412B8, &type metadata for FormatOfflineModel, &off_1F51C0A00, type metadata accessor for OfflineManager);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF082F0, &protocol descriptor for FormatAutoscrollPointFactoryType, 1);
  result = sub_1D725AACC();
  if (v18)
  {
    sub_1D691234C(0);
    v11 = swift_allocObject();
    v11[3] = 0;
    swift_unknownObjectWeakInit();
    v11[6] = v5;
    v11[7] = v6;
    v11[4] = v8;
    v11[5] = v9;
    v11[8] = v10;
    sub_1D5B63F14(&v17, (v11 + 9));
    *(v5 + OBJC_IVAR____TtC8NewsFeed17FormatDataManager_delegate + 8) = &off_1F512FB28;
    swift_unknownObjectWeakAssign();
    v12 = v11[8];
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = (v12 + qword_1EC894F50);
    v15 = *(v12 + qword_1EC894F50);
    v16 = *(v12 + qword_1EC894F50 + 8);
    *v14 = sub_1D69123E0;
    v14[1] = v13;
    result = sub_1D5B74328(v15, v16);
    *a2 = v11;
    a2[1] = &off_1F512FB38;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1D690D110@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  sub_1D5BB6F50(0, qword_1EDF11258, type metadata accessor for FormatPluginData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for FormatPluginData(0);
  sub_1D725AACC();
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B5A498(0, &unk_1EDF1A820, 0x1E69B5610);
    result = sub_1D725AABC();
    if (result)
    {
      v10 = result;
      v11 = type metadata accessor for FormatDataManager(0);
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      sub_1D5F423D0(v7, &v12[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData]);
      *&v12[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_subscriptionController] = v10;
      v15.receiver = v12;
      v15.super_class = v11;
      v13 = v10;
      v14 = objc_msgSendSuper2(&v15, sel_init);
      [*&v14[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_subscriptionController] addObserver_];

      result = sub_1D6912180(v7);
      *a2 = v14;
      a2[1] = &off_1F5125210;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690D40C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_1D690D450(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF0DAA8, &protocol descriptor for FormatModelFactoryType, 1);
  result = sub_1D725AACC();
  if (v4)
  {
    type metadata accessor for FormatBlueprintModifierFactory();
    v2 = swift_allocObject();
    sub_1D5B63F14(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690D4F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0, v2);
  result = sub_1D725AABC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D6910F6C(0);
    result = sub_1D725AABC();
    if (result)
    {
      sub_1D6910E80(0, v4);
      swift_allocObject();
      return sub_1D725D8AC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D690D5D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_1D6912238(0);
  swift_allocObject();
  v12[0] = sub_1D725EEDC();
  sub_1D6912258(0, &qword_1EDF16F90, MEMORY[0x1E69D81B8]);
  swift_allocObject();
  sub_1D5B85F00(&qword_1EDF16F48, sub_1D6912238, MEMORY[0x1E69D8440]);
  sub_1D725EB6C();
  sub_1D725D8CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D69116D8(0);
  result = sub_1D725AABC();
  if (result)
  {
    v12[0] = result;
    swift_allocObject();
    sub_1D5B85F00(&qword_1EDF16E80, sub_1D69116D8, MEMORY[0x1E69D86F0]);
    sub_1D725EB6C();
    sub_1D725D8CC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D5B483C4(0, qword_1EDF36190, &protocol descriptor for FeedDismissingManagerType, 1);
    result = sub_1D725AACC();
    if (v11)
    {
      sub_1D5B63F14(&v10, v12);
      v5 = v13;
      v6 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v7 = *(v6 + 24);
      sub_1D6910E80(0, v8);
      v7(v3, sub_1D690D830, 0, v9, v5, v6);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690D860(void *a1)
{
  v2 = sub_1D725F58C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB6F50(0, &qword_1EDF16E50, MEMORY[0x1E69D8738], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v16 - v9;
  if (qword_1EDF29DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EDF29DE0 == 1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8730], v2);
    sub_1D725F59C();
    v11 = sub_1D725F5AC();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1D725F5AC();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatBlueprintLayoutBuilder(0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D691192C(0);
  result = sub_1D725AABC();
  if (result)
  {
    v16[0] = v15;
    v16[1] = v14;
    sub_1D69116D8(0);
    swift_allocObject();
    return sub_1D725F4DC();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1D690DB88(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for FeedAdPipelineProcessor();
  sub_1D5B68374(a2, &v11);
  v4 = swift_allocObject();
  sub_1D5B63F14(&v11, v4 + 16);
  v5 = sub_1D725AA9C();

  if (v5)
  {
    v12 = v3;
    v13 = sub_1D5B85F00(&qword_1EDF14020, type metadata accessor for FeedAdPipelineProcessor, &protocol conformance descriptor for FeedAdPipelineProcessor);
    *&v11 = v5;
    sub_1D725F4EC();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v6 = type metadata accessor for FeedItemRendererPipelineProcessor(0);
    sub_1D5B68374(a2, &v11);
    v7 = swift_allocObject();
    sub_1D5B63F14(&v11, v7 + 16);
    v8 = sub_1D725AA9C();

    if (v8)
    {
      v12 = v6;
      v13 = sub_1D5B85F00(qword_1EDF13258, type metadata accessor for FeedItemRendererPipelineProcessor, &protocol conformance descriptor for FeedItemRendererPipelineProcessor);
      *&v11 = v8;
      sub_1D725F4EC();
      __swift_destroy_boxed_opaque_existential_1(&v11);
      v9 = sub_1D725F00C();
      swift_allocObject();
      v10 = sub_1D725EFFC();
      v12 = v9;
      v13 = MEMORY[0x1E69D84C0];
      *&v11 = v10;
      sub_1D725F4EC();
      __swift_destroy_boxed_opaque_existential_1(&v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D690DDD8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FormatCollectionView();
  v3 = sub_1D725AABC();
  if (v3)
  {
    v4 = v3;
    sub_1D5B5A498(0, &qword_1EDF1ABF0, 0x1E69DCEF8);
    sub_1D72621FC();
    sub_1D725A86C();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D690DEB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725F17C();
  result = sub_1D725AA7C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16EA8, MEMORY[0x1E69D85B0], 0);
  result = sub_1D725AA8C();
  if (v3)
  {
    sub_1D691192C(0);
    swift_allocObject();
    return sub_1D725EFDC();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D690E06C()
{
  sub_1D725EB9C();
  sub_1D726322C();
  sub_1D725EE2C();
  sub_1D726322C();
  sub_1D725F3FC();
  sub_1D726322C();
  sub_1D725ED6C();
  sub_1D726322C();
  type metadata accessor for FormatMicaSectionDecorationItem(0);
  sub_1D5B85F00(&qword_1EDF1F970, type metadata accessor for FormatMicaSectionDecorationItem, &protocol conformance descriptor for FormatMicaSectionDecorationItem);
  return sub_1D726322C();
}

void *sub_1D690E168(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8(0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF16E40, MEMORY[0x1E69D8778], 1);
  result = sub_1D725AACC();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16EA8, MEMORY[0x1E69D85B0], 0);
  result = sub_1D725AA8C();
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911C04(0);
  v4 = v3;
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v10 = v4;
  v11 = sub_1D5B85F00(&unk_1EDF16FF0, sub_1D6911C04, MEMORY[0x1E69D7F68]);
  v9 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16F68, MEMORY[0x1E69D8278], 1);
  result = sub_1D725AA8C();
  if (v7)
  {
    sub_1D5B63F14(&v6, v8);
    sub_1D6910F6C(0);
    swift_allocObject();
    return sub_1D725DB9C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D690E3C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D725E74C();
  swift_allocObject();
  result = sub_1D725E73C();
  v4 = MEMORY[0x1E69D7F60];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D690E418(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF076C0, &protocol descriptor for FormatBlueprintAnimatorFactoryType, 1);
  sub_1D725AACC();
  if (!v8)
  {
    return sub_1D69121DC(&v7, &qword_1EDF076B0, &qword_1EDF076C0, &protocol descriptor for FormatBlueprintAnimatorFactoryType);
  }

  sub_1D5B63F14(&v7, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 8))(a1, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1D690E510()
{
  sub_1D5B552B0(0, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
  swift_allocObject();
  return sub_1D725EFCC();
}

uint64_t sub_1D690E58C(void *a1)
{
  sub_1D5BB6F50(0, qword_1EDF11258, type metadata accessor for FormatPluginData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B53EDC(0, qword_1EDF43358, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver);
  result = sub_1D725AABC();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = type metadata accessor for FormatPluginData(0);
    sub_1D725AACC();
    result = (*(*(v8 - 8) + 48))(v5, 1, v8);
    if (result != 1)
    {
      type metadata accessor for FormatBlueprintLayoutBuilder(0);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      sub_1D5E2B7A8(v5, v9 + OBJC_IVAR____TtC8NewsFeed28FormatBlueprintLayoutBuilder_pluginData);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D690E73C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0, v2);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16EA8, MEMORY[0x1E69D85B0], 0);
  result = sub_1D725AA8C();
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF16E40, MEMORY[0x1E69D8778], 1);
  result = sub_1D725AACC();
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911B70(0, v4);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725D9FC();
  result = sub_1D725AA7C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D5B85F00(&qword_1EDF3BED0, MEMORY[0x1E698AAC8], &protocol conformance descriptor for Tracker);
    sub_1D69119D4(0, v5);
    v7 = objc_allocWithZone(v6);
    return sub_1D725E5AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D690EA44(uint64_t a1, void *a2)
{
  v3 = sub_1D725EB7C();
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  (*(v7 + 104))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D81C8], v5);
  sub_1D725E54C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D691192C(0);
  v9 = v8;
  v10 = sub_1D725AABC();
  v11 = v10;
  if (v10)
  {
    v10 = sub_1D5B85F00(&qword_1EDF16EF8, sub_1D691192C, MEMORY[0x1E69D84B8]);
  }

  else
  {
    v9 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v11;
  v21 = v9;
  v22 = v10;
  sub_1D725E58C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D6911C04(0);
  v13 = v12;
  v14 = sub_1D725AABC();
  v15 = v14;
  if (v14)
  {
    v14 = sub_1D5B85F00(&unk_1EDF16FF0, sub_1D6911C04, MEMORY[0x1E69D7F68]);
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v15;
  v21 = v13;
  v22 = v14;
  return sub_1D725E56C();
}

id sub_1D690EC40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911B10(0, v1);
  result = sub_1D725AA7C();
  if (result)
  {
    v3 = result;
    v4 = [objc_allocWithZone(type metadata accessor for FormatCollectionView()) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690ECEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatCollectionView();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911224(0, v3);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911474(0, v4);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69115D8(0, v5);
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D69110A8(0);
    swift_allocObject();
    return sub_1D725E04C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D690EE30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8(0);
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D725E05C();

    sub_1D725EE8C();
    swift_allocObject();
    result = sub_1D725EE7C();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690EEE8()
{
  v0 = sub_1D725E1EC();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7DB0], v2);
  return sub_1D725EE6C();
}

uint64_t sub_1D690EFB8(void *a1)
{
  sub_1D5BB6F50(0, qword_1EDF11258, type metadata accessor for FormatPluginData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v14 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725F17C();
  result = sub_1D725AA7C();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = type metadata accessor for FormatPluginData(0);
    sub_1D725AACC();
    result = (*(*(v8 - 8) + 48))(v5, 1, v8);
    if (result != 1)
    {
      v9 = v5[*(v8 + 44)];
      sub_1D6912180(v5);
      sub_1D6911B10(0, v10);
      v12 = objc_allocWithZone(v11);
      v14[1] = v7;
      v13 = MEMORY[0x1E69E7D40];
      *&v12[*((*MEMORY[0x1E69E7D40] & *v12) + class metadata base offset for FormatCollectionViewLayout + 24)] = 0;
      *&v12[*((*v13 & *v12) + class metadata base offset for FormatCollectionViewLayout + 32)] = 0x3FD3333333333333;
      *&v12[*((*v13 & *v12) + class metadata base offset for FormatCollectionViewLayout + 40)] = 0;
      v12[*((*v13 & *v12) + class metadata base offset for FormatCollectionViewLayout + 16)] = v9;
      return sub_1D725EDCC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690F25C()
{
  sub_1D725EB9C();
  sub_1D726322C();
  sub_1D725EE2C();
  sub_1D726322C();
  sub_1D725F3FC();
  sub_1D726322C();
  sub_1D725ED6C();
  sub_1D726322C();
  type metadata accessor for FormatMicaSectionDecorationItem(0);
  sub_1D5B85F00(&qword_1EDF1F970, type metadata accessor for FormatMicaSectionDecorationItem, &protocol conformance descriptor for FormatMicaSectionDecorationItem);
  return sub_1D726322C();
}

void sub_1D690F32C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0, v2);
  v3 = sub_1D725AABC();
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  if (!sub_1D725AABC())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatBlueprintViewCellProvider();
  sub_1D5B68374(a1, v10);
  v5 = swift_allocObject();
  sub_1D5B63F14(v10, v5 + 16);
  v6 = sub_1D725AA9C();

  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatBlueprintViewSupplementaryViewProvider();
  if (sub_1D725AABC())
  {
    *&v10[0] = v4;
    sub_1D6911224(0, v7);
    v9 = objc_allocWithZone(v8);
    sub_1D725F0CC();
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_1D690F50C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF16E88, MEMORY[0x1E69D86A0], 1);
  result = sub_1D725AA8C();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_1D725F45C();
    sub_1D725F0DC();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D690F5E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0, v2);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911B70(0, v4);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1D5B85F00(&qword_1EDF3BED0, MEMORY[0x1E698AAC8], &protocol conformance descriptor for Tracker);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16FB0, MEMORY[0x1E69D8040], 1);
  result = sub_1D725AACC();
  if (v7)
  {
    sub_1D6911474(0, 0);
    v6 = objc_allocWithZone(v5);
    return sub_1D725EF0C();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D690F878(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D725D9FC();
  sub_1D725AA7C();
  sub_1D725EF1C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D6911C98(0);
  if (sub_1D725AABC())
  {
    sub_1D5B85F00(&qword_1EDF16ED8, sub_1D6911C98, MEMORY[0x1E69D84F8]);
  }

  sub_1D725EF2C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D725E80C();
  sub_1D725AA7C();
  sub_1D725EEFC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D69119D4(0, v3);
  sub_1D725AABC();
  return sub_1D725EEEC();
}

uint64_t sub_1D690FA00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0, v2);
  result = sub_1D725AABC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    result = sub_1D725AABC();
    if (result)
    {
      sub_1D69115D8(0, v4);
      v6 = objc_allocWithZone(v5);
      return sub_1D725F23C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D690FB04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42E50, &protocol descriptor for FeedItemRendererType, 0);
  result = sub_1D725AACC();
  if (v3)
  {
    type metadata accessor for FormatBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D690FBB0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FormatViewController();
  v4 = sub_1D725AABC();
  v3 = &protocol witness table for FormatViewController;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_1D690FC44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF425C0, &protocol descriptor for FeedItemSupplementaryRendererType, 1);
  result = sub_1D725AACC();
  if (v4)
  {
    type metadata accessor for FormatBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_1D5B63F14(&v3, v2 + 32);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D690FCF4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FormatViewController();
  v4 = sub_1D725AABC();
  v3 = &off_1F51DC370;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D690FD88(void *a1)
{
  v2 = sub_1D725F11C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D725F13C();
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D69120D0(0, v9);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0, v16);
  result = sub_1D725AABC();
  if (result)
  {
    v18 = result;
    (*(v12 + 104))(v15, *MEMORY[0x1E69D8198], v11);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8518], v2);
    sub_1D725F12C();
    v20[1] = v18;
    sub_1D6911B70(0, v19);
    swift_allocObject();
    return sub_1D725EB2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D690FFE4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType, 1);
  sub_1D725AACC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20], 1);
  sub_1D725AACC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &qword_1EDF1AA98, 0x1E69B5558);
  v3 = sub_1D725AABC();
  sub_1D6911EF0(0, v4);
  swift_allocObject();
  v7[0] = sub_1D6910AE0(v7, &v6, v3);
  sub_1D5B85F00(&qword_1EDF13778, sub_1D6911EF0, &protocol conformance descriptor for FeedItemImpressionProcessor<A>);
  sub_1D725EB0C();

  return result;
}

uint64_t sub_1D6910170(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8(0);
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D6911C04(0);
    swift_allocObject();
    return sub_1D725E75C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D69101E8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  result = sub_1D725AABC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D69110A8(0);
    result = sub_1D725AABC();
    if (result)
    {
      sub_1D6911DF0(0);
      v5 = v4;
      swift_allocObject();
      v6 = sub_1D725F51C();
      v7[3] = v5;
      v7[4] = sub_1D5B85F00(&qword_1EDF16E70, sub_1D6911DF0, MEMORY[0x1E69D8700]);
      v7[0] = v6;
      sub_1D725E76C();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6910360(void *a1)
{
  sub_1D6911D84(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7270C10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911C98(0);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = sub_1D5B85F00(&unk_1EDF16EE0, sub_1D6911C98, MEMORY[0x1E69D8500]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D725E89C();
    result = sub_1D725AA7C();
    if (result)
    {
      v6 = MEMORY[0x1E69D8038];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_1D725D9FC();
      swift_allocObject();
      return sub_1D725D9EC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D69104A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8(0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0, v3);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D5B85F00(&qword_1EDF3BED0, MEMORY[0x1E698AAC8], &protocol conformance descriptor for Tracker);
    sub_1D6911C98(0);
    swift_allocObject();
    return sub_1D725F0AC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D6910680(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8(0);
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D725E05C();

    sub_1D725E89C();
    swift_allocObject();
    return sub_1D725E88C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D691073C(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D69119D4(0, v8);
  v9 = sub_1D725AABC();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D5B85F00(a3, sub_1D69119D4, a4);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  return a5(v9, v11);
}

uint64_t sub_1D69107F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69119D4(0, v3);
  v5 = v4;
  result = sub_1D725AABC();
  if (result)
  {
    v7 = result;
    a2[3] = v5;
    result = sub_1D5B85F00(&unk_1EDF17008, sub_1D69119D4, MEMORY[0x1E69D7F00]);
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6910898()
{
  v0 = sub_1D725E7EC();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = MEMORY[0x1E69D7F80];
  sub_1D5BB6F50(0, &qword_1EDF02368, MEMORY[0x1E69D7F80], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D725E7DC();
  sub_1D5B85F00(&unk_1EDF16FD0, MEMORY[0x1E69D7F80], MEMORY[0x1E69D7F88]);
  sub_1D5BB6F50(0, &qword_1EDF05308, v2, MEMORY[0x1E69E62F8]);
  sub_1D5BB82E8(&qword_1EDF05300, &qword_1EDF05308, v2);
  sub_1D7263B6C();
  v3 = objc_allocWithZone(sub_1D725E80C());
  return sub_1D725E7FC();
}

uint64_t sub_1D6910A78@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FormatAutoscrollPointFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F51A5E00;
  *a1 = result;
  return result;
}

uint64_t sub_1D6910AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 56) = 0;
  v8 = (v3 + 56);
  *(v3 + 64) = 0;
  sub_1D6911FE8(a1, v3 + 16, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
  sub_1D6911FE8(a2, &v13, &unk_1EDF3A8C0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20]);
  if (!v14)
  {
    sub_1D69121DC(&v13, &unk_1EDF3A8C0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20]);
    swift_beginAccess();
    *v8 = 0;

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D69121DC(a2, &unk_1EDF3A8C0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20]);
    sub_1D69121DC(a1, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
    v11 = 0;
    goto LABEL_6;
  }

  sub_1D5B63F14(&v13, v15);
  sub_1D5B68374(v15, &v13);
  v9 = swift_allocObject();
  sub_1D5B63F14(&v13, v9 + 16);
  sub_1D6912068(0);
  swift_allocObject();
  v10 = sub_1D725CEDC();
  __swift_destroy_boxed_opaque_existential_1(v15);
  swift_beginAccess();
  *v8 = v10;

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(swift_allocObject() + 16) = a3;
  sub_1D5BB6F50(0, &qword_1EDF3B720, sub_1D5B5D6A0, MEMORY[0x1E69D76C8]);
  swift_allocObject();
  v11 = sub_1D725CEDC();
  sub_1D69121DC(a2, &unk_1EDF3A8C0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20]);
  sub_1D69121DC(a1, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
LABEL_6:
  swift_beginAccess();
  *(v4 + 64) = v11;

  return v4;
}

double sub_1D6910DA8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = off_1F51DC350;
        type metadata accessor for FormatViewController();
        v4(v3);
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

void sub_1D6910E80(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF171F8)
  {
    sub_1D6087E88(255, a2);
    sub_1D6910F6C(255);
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    sub_1D5B85F00(&qword_1EDF170E0, sub_1D6910F6C, MEMORY[0x1E69D7B10]);
    v2 = sub_1D725D8FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF171F8);
    }
  }
}

void sub_1D6910F6C(uint64_t a1)
{
  if (!qword_1EDF170D0)
  {
    type metadata accessor for FormatSectionDescriptor(255);
    type metadata accessor for FormatModel(255);
    sub_1D69110A8(255);
    sub_1D5B85F00(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor, &protocol conformance descriptor for FormatSectionDescriptor);
    sub_1D5B85F00(&qword_1EDF128E0, type metadata accessor for FormatModel, &protocol conformance descriptor for FormatModel);
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8, MEMORY[0x1E69D7D50]);
    v1 = sub_1D725DBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF170D0);
    }
  }
}

void sub_1D69110A8(uint64_t a1)
{
  if (!qword_1EDF17058)
  {
    sub_1D5B5A498(255, &qword_1EDF04540, 0x1E69DC7F0);
    sub_1D6911224(255, v1);
    sub_1D6911474(255, v2);
    sub_1D69115D8(255, v3);
    type metadata accessor for FormatViewController();
    sub_1D5B85F00(&qword_1EDF16EC0, sub_1D6911224, MEMORY[0x1E69D8510]);
    sub_1D5B85F00(&unk_1EDF16F28, sub_1D6911474, MEMORY[0x1E69D8448]);
    sub_1D5B85F00(&qword_1EDF16EA0, sub_1D69115D8, MEMORY[0x1E69D8600]);
    v4 = sub_1D725E06C();
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF17058);
    }
  }
}

void sub_1D6911224(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF16EB8)
  {
    sub_1D6087E88(255, a2);
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    type metadata accessor for FormatBlueprintViewCellProvider();
    type metadata accessor for FormatBlueprintViewSupplementaryViewProvider();
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    sub_1D69113D8();
    sub_1D5B85F00(&qword_1EDF09560, type metadata accessor for FormatBlueprintViewCellProvider, &protocol conformance descriptor for FormatBlueprintViewCellProvider);
    sub_1D5B85F00(&qword_1EDF15ED8, type metadata accessor for FormatBlueprintViewSupplementaryViewProvider, &protocol conformance descriptor for FormatBlueprintViewSupplementaryViewProvider);
    sub_1D685234C();
    v2 = sub_1D725F0EC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF16EB8);
    }
  }
}

unint64_t sub_1D69113D8()
{
  result = qword_1EDF17038;
  if (!qword_1EDF17038)
  {
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17038);
  }

  return result;
}

void sub_1D6911474(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF16F18)
  {
    sub_1D6087E88(255, a2);
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    type metadata accessor for FormatViewController();
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    sub_1D69113D8();
    sub_1D5B85F00(&qword_1EDF0EB00, type metadata accessor for FormatViewController, &protocol conformance descriptor for FormatViewController);
    sub_1D685234C();
    v2 = sub_1D725EF3C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF16F18);
    }
  }
}

void sub_1D69115D8(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF16E98)
  {
    sub_1D6087E88(255, a2);
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    sub_1D69113D8();
    v2 = sub_1D725F24C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF16E98);
    }
  }
}

void sub_1D69116D8(uint64_t a1)
{
  if (!qword_1EDF16E78)
  {
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    type metadata accessor for FormatBlueprintLayoutBuilder(255);
    sub_1D5B552B0(255, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
    sub_1D69113D8();
    sub_1D5B85F00(&unk_1EDF0AA60, type metadata accessor for FormatBlueprintLayoutBuilder, &unk_1D738B038);
    sub_1D6911890();
    v1 = sub_1D725F4FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF16E78);
    }
  }
}

unint64_t sub_1D691183C()
{
  result = qword_1EDF0A468;
  if (!qword_1EDF0A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A468);
  }

  return result;
}

unint64_t sub_1D6911890()
{
  result = qword_1EDF16F08;
  if (!qword_1EDF16F08)
  {
    sub_1D5B552B0(255, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16F08);
  }

  return result;
}

void sub_1D691192C(uint64_t a1)
{
  if (!qword_1EDF16EF0)
  {
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    sub_1D69113D8();
    v1 = sub_1D725EFEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF16EF0);
    }
  }
}

void sub_1D69119D4(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF17000)
  {
    sub_1D6087E88(255, a2);
    sub_1D69110A8(255);
    type metadata accessor for FormatViewController();
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8, MEMORY[0x1E69D7D50]);
    sub_1D5B85F00(&qword_1EDF0EB00, type metadata accessor for FormatViewController, &protocol conformance descriptor for FormatViewController);
    v2 = sub_1D725E5CC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17000);
    }
  }
}

void sub_1D6911B10(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF0B750[0])
  {
    v3 = sub_1D725F17C();
    v5 = type metadata accessor for FormatCollectionViewLayout(a1, v3, MEMORY[0x1E69D8570], v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EDF0B750);
    }
  }
}

void sub_1D6911B70(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF16F98)
  {
    sub_1D6087E88(255, a2);
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    v2 = sub_1D725EB3C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF16F98);
    }
  }
}

void sub_1D6911C04(uint64_t a1)
{
  if (!qword_1EDF16FE0)
  {
    sub_1D69110A8(255);
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8, MEMORY[0x1E69D7D50]);
    v1 = sub_1D725E77C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF16FE0);
    }
  }
}

void sub_1D6911C98(uint64_t a1)
{
  if (!qword_1EDF16EC8)
  {
    sub_1D69110A8(255);
    sub_1D6087E88(255, v1);
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8, MEMORY[0x1E69D7D50]);
    sub_1D5B85F00(&qword_1EDF171F0, sub_1D6087E88, MEMORY[0x1E69D7A70]);
    v2 = sub_1D725F0BC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF16EC8);
    }
  }
}

void sub_1D6911D84(uint64_t a1)
{
  if (!qword_1EDF02370)
  {
    sub_1D5B483C4(255, &qword_1EDF17048, MEMORY[0x1E69D7E40], 0);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02370);
    }
  }
}

void sub_1D6911DF0(uint64_t a1)
{
  if (!qword_1EDF16E68)
  {
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    sub_1D69110A8(255);
    sub_1D69113D8();
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8, MEMORY[0x1E69D7D50]);
    v1 = sub_1D725F52C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF16E68);
    }
  }
}

void sub_1D6911EF0(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF13770)
  {
    sub_1D6087E88(255, a2);
    v4 = v3;
    v5 = sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    v6 = type metadata accessor for FeedItemImpressionProcessor(a1, v4, v5, &protocol witness table for FormatModel);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF13770);
    }
  }
}

void sub_1D6911F8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5B483C4(255, a3, a4, 1);
    v5 = sub_1D726393C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D6911FE8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D6911F8C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D6912068(uint64_t a1)
{
  if (!qword_1EDF3B710)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6B0, 0x1E69B5578);
    v1 = sub_1D725CEFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B710);
    }
  }
}

void sub_1D69120D0(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF16FA0)
  {
    sub_1D6087E88(255, a2);
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    v2 = sub_1D725EB1C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF16FA0);
    }
  }
}

uint64_t sub_1D6912180(uint64_t a1)
{
  v2 = type metadata accessor for FormatPluginData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D69121DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6911F8C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6912258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor(255);
    v8[1] = type metadata accessor for FormatModel(255);
    v8[2] = sub_1D5B85F00(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor, &protocol conformance descriptor for FormatSectionDescriptor);
    v8[3] = sub_1D5B85F00(&qword_1EDF128E0, type metadata accessor for FormatModel, &protocol conformance descriptor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D691234C(uint64_t a1)
{
  if (!qword_1EDF11320[0])
  {
    v2 = type metadata accessor for FormatBlueprintModifierFactory();
    v3 = sub_1D5B85F00(qword_1EDF09E58, type metadata accessor for FormatBlueprintModifierFactory, &unk_1D72EE860);
    v5 = type metadata accessor for FormatInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EDF11320);
    }
  }
}

void *sub_1D69123E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16[3] = type metadata accessor for FormatRouter();
  v16[4] = &off_1F5120C08;
  v16[0] = a3;
  a6[3] = 0;
  swift_unknownObjectWeakInit();
  a6[5] = 0;
  swift_unknownObjectWeakInit();
  a6[6] = a1;
  a6[7] = a2;
  sub_1D5B68374(v16, (a6 + 8));
  a6[13] = a4;
  a6[14] = a5;
  ObjectType = swift_getObjectType();
  v13 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v13(v14, &off_1F51B7A98, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return a6;
}

void sub_1D69124E0(uint64_t a1)
{
  if (!qword_1EDF17F28)
  {
    sub_1D5E296DC();
    v1 = sub_1D725AA3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17F28);
    }
  }
}

uint64_t type metadata accessor for DebugFormatEditorWorkspaceGroup(uint64_t a1)
{
  result = qword_1EC88E0E8;
  if (!qword_1EC88E0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D69125BC(uint64_t a1)
{
  result = type metadata accessor for FormatWorkspaceGroup(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DebugFormatBindingResult(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DebugFormatPackageInventory();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6912660(uint64_t a1)
{
  v1 = *(a1 + 200);
  type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v5 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v6 = FormatPackageInventory.merging(with:)(v5);

    return v6;
  }

  v2 = sub_1D7263BFC();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];

  result = sub_1D7263ECC();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v4, v1);
      }

      else
      {
      }

      ++v4;

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v2 != v4);
    v5 = v7;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D69127CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v74 = a2;
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v14, v15).n128_u64[0];
  v18 = &v73 - v17;
  v19 = *a3;
  v20 = a3[1];
  v21 = a3[2];
  v22 = a3[3];
  v23 = a3[4];
  v24 = a3[5];
  if (!*(a3 + 48))
  {
    v73 = a3[5];
    v74 = v23;
    v28 = v19;
    v29 = [*(a1 + 56) publishDate];
    if (v29)
    {
      v30 = v29;
      sub_1D72588BC();

      (*(v6 + 56))(v18, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v18, 1, 1, v5);
    }

    sub_1D5B76E3C(v18, v13);
    if ((*(v6 + 48))(v13, 1, v5) != 1)
    {
      (*(v6 + 32))(v9, v13, v5);
      v79 = v28;
      v80 = v20;
      v81 = v21;
      v82 = v22;
      v83 = v74;
      v84 = v73;
      v33 = FormatDateFormat.format(_:)(v9);
      (*(v6 + 8))(v9, v5);
      sub_1D69156F0(v18, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B7B268);
      return v33;
    }

    sub_1D69156F0(v18, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B7B268);
    return 0;
  }

  if (*(a3 + 48) != 1)
  {
    if (!(v21 | v20 | v19 | v22 | v23 | v24))
    {
      v33 = *(a1 + 40);

      return v33;
    }

    v31 = v21 | v20 | v22 | v23 | v24;
    if (v19 == 1 && !v31)
    {
      v32 = [*(a1 + 56) title];
      goto LABEL_25;
    }

    if (v19 == 2 && !v31)
    {
      v32 = [*(a1 + 56) subtitle];
      goto LABEL_25;
    }

    if (v19 == 3 && !v31)
    {
      v49 = [*(a1 + 56) authors];
      if (v49)
      {
        v50 = v49;
        v51 = sub_1D726267C();

        v33 = Array<A>.localizedOxfordCommaSeparatedList.getter(v51);
        v53 = v52;

        if (v53)
        {
          return v33;
        }
      }

      return 0;
    }

    if (v19 != 4 || v31)
    {
      if (v19 != 5 || v31)
      {
        if (v19 != 6 || v31)
        {
          if (v19 != 7 || v31)
          {
            if (v19 != 8 || v31)
            {
              if (v19 != 9 || v31)
              {
                if (v19 != 10 || v31)
                {
                  if (v19 != 11 || v31)
                  {
                    if (v19 == 12 && !v31)
                    {
                      sub_1D5F2DEAC(a1, &v79);
                      v67 = v84;
                      v68 = v85;
                      v69 = v86;

                      sub_1D5F2DF58(&v79);
                      v79 = 0x656C7A7A7570;
                      v80 = 0xE600000000000000;
                      v81 = v67;
                      v82 = v68;
                      LOBYTE(v83) = v69;
                      v84 = MEMORY[0x1E69E7CD0];
                      sub_1D72578EC();
                      swift_allocObject();
                      sub_1D72578DC();
                      sub_1D69155E8(0);
                      sub_1D6915698();
                      v33 = sub_1D725D06C();

                      return v33;
                    }

                    if (!v74)
                    {
                      return 0;
                    }

                    v70 = a1;
                    swift_getObjectType();
                    v71 = qword_1EDF16DC0;

                    if (v71 != -1)
                    {
                      swift_once();
                    }

                    sub_1D5F2DEAC(v70, &v79);
                    sub_1D5B805A4();
                    sub_1D725D96C();
                    sub_1D69156F0(&v79, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D6915C38);
                    if (v78 == 255)
                    {
                      goto LABEL_86;
                    }

                    v72 = v77;
                    if (v78 >= 2u)
                    {
                      v72 = 0;
                    }

                    v79 = v72;
                    v33 = sub_1D72644BC();

                    return v33;
                  }

                  if (*(a1 + 72) <= 1u)
                  {
                    if (*(a1 + 72))
                    {
                      v66 = 1701147238;
                    }

                    else
                    {
                      v66 = 1684627824;
                    }

                    return v66 | 0x6563634100000000;
                  }

                  if (*(a1 + 72) == 2)
                  {
                    return 0x7373656363416F6ELL;
                  }

                  return 0;
                }

                v32 = [*(a1 + 56) teaserAnswer];
              }

              else
              {
                v32 = [*(a1 + 56) teaserNumber];
              }
            }

            else
            {
              v32 = [*(a1 + 56) teaserDirection];
            }
          }

          else
          {
            v32 = [*(a1 + 56) teaserInfo];
          }
        }

        else
        {
          v32 = [*(a1 + 56) teaserClue];
        }
      }

      else
      {
        v32 = [*(a1 + 56) difficultyDescription];
      }
    }

    else
    {
      v32 = [*(a1 + 56) puzzleDescription];
    }

LABEL_25:
    v35 = v32;
    if (v35)
    {
      v36 = v35;
      v33 = sub_1D726207C();

      return v33;
    }

    return 0;
  }

  if (!v74)
  {
    return 0;
  }

  v25 = *a3;
  swift_getObjectType();
  v26 = qword_1EDF16D98;

  if (v26 != -1)
  {
    swift_once();
  }

  sub_1D5F2DEAC(a1, &v79);
  sub_1D5B840B4();
  sub_1D725D96C();
  sub_1D69156F0(&v79, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D6915C38);
  if (v25)
  {
    if (v78 <= 1u)
    {
      v27 = *&v77;
LABEL_28:
      if (qword_1EC87DD00 != -1)
      {
        swift_once();
      }

      v37 = qword_1EC899A38;
      v38 = [v37 stringFromTimeInterval_];
      if (v38)
      {
        v39 = v38;
        v40 = sub_1D726207C();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      v79 = v40;
      v80 = v42;
      v77 = 44;
      v78 = 0xE100000000000000;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_1D5BF4D9C();
      v55 = MEMORY[0x1E69E6158];
      v33 = sub_1D7263A6C();
      v57 = v56;

      v79 = v33;
      v80 = v57;
      v77 = 32;
      v78 = 0xE100000000000000;
      v58 = sub_1D72639FC();
      v59 = *(v58 + 16);
      if (v59 >= 2)
      {
        v59 = 2;
      }

      v79 = v58;
      v80 = v58 + 32;
      v81 = 0;
      v82 = (2 * v59) | 1;
      sub_1D6915C38(0, &unk_1EDF1A5F0, v55, MEMORY[0x1E69E6948]);
      sub_1D67B6CDC();
      sub_1D7261F3C();

      return v33;
    }

    v27 = 0.0;
    if (v78 == 2)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

  if (v78 > 1u)
  {
    v34 = 0.0;
    if (v78 != 2)
    {
LABEL_86:

      return 0;
    }
  }

  else
  {
    v34 = *&v77;
  }

  if (qword_1EDF0AEE8 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDF0AEF0;
  v44 = [v43 stringFromTimeInterval_];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1D726207C();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  v79 = v46;
  v80 = v48;
  v77 = 44;
  v78 = 0xE100000000000000;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1D5BF4D9C();
  v60 = MEMORY[0x1E69E6158];
  v61 = sub_1D7263A6C();
  v63 = v62;

  v79 = v61;
  v80 = v63;
  v77 = 32;
  v78 = 0xE100000000000000;
  v64 = sub_1D72639FC();
  v65 = *(v64 + 16);
  if (v65 >= 2)
  {
    v65 = 2;
  }

  v79 = v64;
  v80 = v64 + 32;
  v81 = 0;
  v82 = (2 * v65) | 1;
  sub_1D6915C38(0, &unk_1EDF1A5F0, v60, MEMORY[0x1E69E6948]);
  sub_1D67B6CDC();
  v33 = sub_1D7261F3C();

  return v33;
}

uint64_t FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v78 = a4;
  v77 = a3;
  v79 = a2;
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v15, v16).n128_u64[0];
  v19 = &v76 - v18;
  v20 = *v4;
  v21 = v4[1];
  v23 = v4[2];
  v22 = v4[3];
  v24 = v4[4];
  v25 = v4[5];
  if (!*(v4 + 48))
  {
    v78 = v4[5];
    v79 = v24;
    v29 = v20;
    v30 = [*(a1 + 56) publishDate];
    if (v30)
    {
      v31 = v30;
      sub_1D72588BC();

      (*(v7 + 56))(v19, 0, 1, v6);
    }

    else
    {
      (*(v7 + 56))(v19, 1, 1, v6);
    }

    sub_1D5B76E3C(v19, v14);
    if ((*(v7 + 48))(v14, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v14, v6);
      v84 = v29;
      v85 = v21;
      v86 = v23;
      v87 = v22;
      v88 = v79;
      v89 = v78;
      v34 = FormatDateFormat.format(_:)(v10);
      (*(v7 + 8))(v10, v6);
      sub_1D69156F0(v19, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B7B268);
      return v34;
    }

    sub_1D69156F0(v19, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B7B268);
    return 0;
  }

  if (*(v4 + 48) != 1)
  {
    if (!(v23 | v21 | v20 | v22 | v24 | v25))
    {
      v34 = *(a1 + 40);

      return v34;
    }

    v32 = v23 | v21 | v22 | v24 | v25;
    if (v20 == 1 && !v32)
    {
      v33 = [*(a1 + 56) title];
      goto LABEL_25;
    }

    if (v20 == 2 && !v32)
    {
      v33 = [*(a1 + 56) subtitle];
      goto LABEL_25;
    }

    if (v20 == 3 && !v32)
    {
      v50 = [*(a1 + 56) authors];
      if (v50)
      {
        v51 = v50;
        v52 = sub_1D726267C();

        v34 = Array<A>.localizedOxfordCommaSeparatedList.getter(v52);
        v54 = v53;

        if (v54)
        {
          return v34;
        }
      }

      return 0;
    }

    if (v20 != 4 || v32)
    {
      if (v20 != 5 || v32)
      {
        if (v20 != 6 || v32)
        {
          if (v20 != 7 || v32)
          {
            if (v20 != 8 || v32)
            {
              if (v20 != 9 || v32)
              {
                if (v20 != 10 || v32)
                {
                  if (v20 != 11 || v32)
                  {
                    if (v20 != 12 || v32)
                    {
                      if (!v79)
                      {
                        return 0;
                      }

                      v73 = a1;
                      swift_getObjectType();
                      v74 = qword_1EDF16DC0;

                      if (v74 != -1)
                      {
                        swift_once();
                      }

                      sub_1D5F2DEAC(v73, &v84);
                      sub_1D5B805A4();
                      sub_1D725D96C();
                      sub_1D69156F0(&v84, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D6915C38);
                      if (v83 == 255)
                      {
                        goto LABEL_86;
                      }

                      if (v83 >= 2u)
                      {
                        v75 = 0;
                      }

                      else
                      {
                        v75 = v82;
                      }

                      v84 = v75;
                      v34 = sub_1D72644BC();
                    }

                    else
                    {
                      sub_1D5F2DEAC(a1, &v84);
                      v68 = v89;
                      v69 = v90;
                      v70 = v91;

                      v71 = sub_1D5F2DF58(&v84);
                      v72 = v77(v71);
                      v84 = 0x656C7A7A7570;
                      v85 = 0xE600000000000000;
                      v86 = v68;
                      v87 = v69;
                      LOBYTE(v88) = v70;
                      v89 = v72;
                      sub_1D72578EC();
                      swift_allocObject();
                      sub_1D72578DC();
                      sub_1D69155E8(0);
                      sub_1D6915698();
                      v34 = sub_1D725D06C();
                    }

                    return v34;
                  }

                  if (*(a1 + 72) <= 1u)
                  {
                    if (*(a1 + 72))
                    {
                      v67 = 1701147238;
                    }

                    else
                    {
                      v67 = 1684627824;
                    }

                    return v67 | 0x6563634100000000;
                  }

                  if (*(a1 + 72) == 2)
                  {
                    return 0x7373656363416F6ELL;
                  }

                  return 0;
                }

                v33 = [*(a1 + 56) teaserAnswer];
              }

              else
              {
                v33 = [*(a1 + 56) teaserNumber];
              }
            }

            else
            {
              v33 = [*(a1 + 56) teaserDirection];
            }
          }

          else
          {
            v33 = [*(a1 + 56) teaserInfo];
          }
        }

        else
        {
          v33 = [*(a1 + 56) teaserClue];
        }
      }

      else
      {
        v33 = [*(a1 + 56) difficultyDescription];
      }
    }

    else
    {
      v33 = [*(a1 + 56) puzzleDescription];
    }

LABEL_25:
    v36 = v33;
    if (v36)
    {
      v37 = v36;
      v34 = sub_1D726207C();

      return v34;
    }

    return 0;
  }

  if (!v79)
  {
    return 0;
  }

  v26 = *v4;
  swift_getObjectType();
  v27 = qword_1EDF16D98;

  if (v27 != -1)
  {
    swift_once();
  }

  sub_1D5F2DEAC(a1, &v84);
  sub_1D5B840B4();
  sub_1D725D96C();
  sub_1D69156F0(&v84, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D6915C38);
  if (v26)
  {
    if (v83 <= 1u)
    {
      v28 = *&v82;
LABEL_28:
      if (qword_1EC87DD00 != -1)
      {
        swift_once();
      }

      v38 = qword_1EC899A38;
      v39 = [v38 stringFromTimeInterval_];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1D726207C();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      v84 = v41;
      v85 = v43;
      v82 = 44;
      v83 = 0xE100000000000000;
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_1D5BF4D9C();
      v56 = MEMORY[0x1E69E6158];
      v34 = sub_1D7263A6C();
      v58 = v57;

      v84 = v34;
      v85 = v58;
      v82 = 32;
      v83 = 0xE100000000000000;
      v59 = sub_1D72639FC();
      v60 = *(v59 + 16);
      if (v60 >= 2)
      {
        v60 = 2;
      }

      v84 = v59;
      v85 = v59 + 32;
      v86 = 0;
      v87 = (2 * v60) | 1;
      sub_1D6915C38(0, &unk_1EDF1A5F0, v56, MEMORY[0x1E69E6948]);
      sub_1D67B6CDC();
      sub_1D7261F3C();

      return v34;
    }

    v28 = 0.0;
    if (v83 == 2)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

  if (v83 > 1u)
  {
    v35 = 0.0;
    if (v83 == 2)
    {
      goto LABEL_33;
    }

LABEL_86:

    return 0;
  }

  v35 = *&v82;
LABEL_33:
  if (qword_1EDF0AEE8 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDF0AEF0;
  v45 = [v44 stringFromTimeInterval_];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1D726207C();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v84 = v47;
  v85 = v49;
  v82 = 44;
  v83 = 0xE100000000000000;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1D5BF4D9C();
  v61 = MEMORY[0x1E69E6158];
  v62 = sub_1D7263A6C();
  v64 = v63;

  v84 = v62;
  v85 = v64;
  v82 = 32;
  v83 = 0xE100000000000000;
  v65 = sub_1D72639FC();
  v66 = *(v65 + 16);
  if (v66 >= 2)
  {
    v66 = 2;
  }

  v84 = v65;
  v85 = v65 + 32;
  v86 = 0;
  v87 = (2 * v66) | 1;
  sub_1D6915C38(0, &unk_1EDF1A5F0, v61, MEMORY[0x1E69E6948]);
  sub_1D67B6CDC();
  v34 = sub_1D7261F3C();

  return v34;
}

uint64_t sub_1D6914320(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

void FormatPuzzleBinding.Text.CodingType.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  v5 = 16;
  if (v4 < 0x10)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t FormatPuzzleBinding.Text.CodingType.rawValue.getter()
{
  result = 0x696669746E656469;
  switch(*v0)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x614E726F68747561;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0x6C75636966666964;
      break;
    case 6:
      result = 0x446873696C627570;
      break;
    case 7:
      result = 0x6C43726573616574;
      break;
    case 8:
      result = 0x6E49726573616574;
      break;
    case 9:
      result = 0x6944726573616574;
      break;
    case 0xA:
      result = 0x754E726573616574;
      break;
    case 0xB:
      result = 0x6E41726573616574;
      break;
    case 0xC:
      result = 0x6172754479616C70;
      break;
    case 0xD:
      result = 0x654C737365636361;
      break;
    case 0xE:
      result = 0x6974616D6F747561;
      break;
    case 0xF:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D69145A4()
{
  v0 = FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  v2 = v1;
  if (v0 == FormatPuzzleBinding.Text.CodingType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6914640()
{
  sub_1D7264A0C();
  FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D69146A8(uint64_t a1)
{
  FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D691470C(uint64_t a1)
{
  sub_1D7264A0C();
  FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D691477C@<X0>(uint64_t *a1@<X8>)
{
  result = FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6914898@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v6 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  switch(v5)
  {
    case 1:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v54 = [v119 title];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1D726207C();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0xE000000000000000;
      }

      v97 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v97 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (v97)
      {
        v98 = MEMORY[0x1E69E6158];
      }

      else
      {

        v56 = 0;
        v58 = 0;
        v98 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v56;
      *&v111 = v58;
      *&v112 = v98;
      v83 = 0x656C746954;
      v92 = (v9 + v8);
      v82 = 0xE500000000000000;
      goto LABEL_126;
    case 2:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v35 = [v119 subtitle];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1D726207C();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v93 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v93 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v93)
      {
        v94 = MEMORY[0x1E69E6158];
      }

      else
      {

        v37 = 0;
        v39 = 0;
        v94 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v37;
      *&v111 = v39;
      *&v112 = v94;
      v83 = 0x656C746974627553;
      v92 = (v9 + v8);
      v82 = 0xE800000000000000;
      goto LABEL_126;
    case 3:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v41 = [v119 authors];
      if (!v41 || (v42 = v41, v43 = sub_1D726267C(), v42, v44 = Array<A>.localizedOxfordCommaSeparatedList.getter(v43), v46 = v45, , !v46))
      {

        v44 = 0;
        v46 = 0xE000000000000000;
      }

      v47 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        v48 = MEMORY[0x1E69E6158];
      }

      else
      {

        v44 = 0;
        v46 = 0;
        v48 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v44;
      *&v111 = v46;
      *&v112 = v48;
      v83 = 0x4E20726F68747541;
      v89 = 6647137;
      goto LABEL_124;
    case 4:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v22 = [v119 puzzleDescription];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1D726207C();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v87 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v87 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v87)
      {
        v88 = MEMORY[0x1E69E6158];
      }

      else
      {

        v24 = 0;
        v26 = 0;
        v88 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v24;
      *&v111 = v26;
      *&v112 = v88;
      v83 = 0x7470697263736544;
      v89 = 7237481;
      goto LABEL_124;
    case 5:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v59 = [v119 difficultyDescription];
      if (v59)
      {
        v60 = v59;
        v61 = sub_1D726207C();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0xE000000000000000;
      }

      v99 = HIBYTE(v63) & 0xF;
      if ((v63 & 0x2000000000000000) == 0)
      {
        v99 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v99)
      {
        v100 = MEMORY[0x1E69E6158];
      }

      else
      {

        v61 = 0;
        v63 = 0;
        v100 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v61;
      *&v111 = v63;
      *&v112 = v100;
      v83 = 0x6C75636966666944;
      v92 = (v9 + v8);
      v82 = 0xEA00000000007974;
      goto LABEL_126;
    case 6:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v65 = (v9 + v8);
      sub_1D5F2DEAC(a2, &v115);
      v110 = 0;
      *&v111 = 0;
      *(&v111 + 1) = 1;
      v112 = 0uLL;
      v113 = 0;
      v114 = 0;
      v66 = sub_1D69127CC(&v115, 0, &v110);
      v68 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v68 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (v68)
      {
        v69 = MEMORY[0x1E69E6158];
      }

      else
      {

        v66 = 0;
        v67 = 0;
        v69 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v66;
      *&v111 = v67;
      *&v112 = v69;
      sub_1D711B30C(0xD000000000000014, 0x80000001D73DBDB0, &v110, v65);
      sub_1D5F2DF58(&v115);
      sub_1D5F2DEAC(a2, &v115);
      v110 = 0;
      *&v111 = 0;
      *(&v111 + 1) = 2;
      v112 = 0uLL;
      v113 = 0;
      v114 = 0;
      v101 = sub_1D69127CC(&v115, 0, &v110);
      v103 = HIBYTE(v102) & 0xF;
      if ((v102 & 0x2000000000000000) == 0)
      {
        v103 = v101 & 0xFFFFFFFFFFFFLL;
      }

      if (v103)
      {
        v104 = MEMORY[0x1E69E6158];
      }

      else
      {

        v101 = 0;
        v102 = 0;
        v104 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v101;
      *&v111 = v102;
      *&v112 = v104;
      v92 = &v65[v7];
      v83 = 0xD000000000000012;
      v82 = 0x80000001D73DBDD0;
      goto LABEL_126;
    case 7:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v49 = [v119 teaserClue];
      if (v49)
      {
        v50 = v49;
        v51 = sub_1D726207C();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0xE000000000000000;
      }

      v95 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v95 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (v95)
      {
        v96 = MEMORY[0x1E69E6158];
      }

      else
      {

        v51 = 0;
        v53 = 0;
        v96 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v51;
      *&v111 = v53;
      *&v112 = v96;
      v83 = 0x4320726573616554;
      v92 = (v9 + v8);
      v82 = 0xEB0000000065756CLL;
      goto LABEL_126;
    case 8:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v75 = [v119 teaserInfo];
      if (v75)
      {
        v76 = v75;
        v77 = sub_1D726207C();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0xE000000000000000;
      }

      v107 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v107 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v107)
      {
        v108 = MEMORY[0x1E69E6158];
      }

      else
      {

        v77 = 0;
        v79 = 0;
        v108 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v77;
      *&v111 = v79;
      *&v112 = v108;
      v83 = 0x4920726573616554;
      v89 = 7300718;
LABEL_124:
      v82 = v89 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      goto LABEL_125;
    case 9:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v30 = [v119 teaserDirection];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1D726207C();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      v90 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v90 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v90)
      {
        v91 = MEMORY[0x1E69E6158];
      }

      else
      {

        v32 = 0;
        v34 = 0;
        v91 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v32;
      *&v111 = v34;
      *&v112 = v91;
      v92 = (v9 + v8);
      v82 = 0x80000001D73DBD90;
      v83 = 0xD000000000000010;
      goto LABEL_126;
    case 10:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v70 = [v119 teaserNumber];
      if (v70)
      {
        v71 = v70;
        v72 = sub_1D726207C();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0xE000000000000000;
      }

      v105 = HIBYTE(v74) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v105 = v72 & 0xFFFFFFFFFFFFLL;
      }

      if (v105)
      {
        v106 = MEMORY[0x1E69E6158];
      }

      else
      {

        v72 = 0;
        v74 = 0;
        v106 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v72;
      *&v111 = v74;
      *&v112 = v106;
      v83 = 0x4E20726573616554;
      v86 = 1700949365;
      goto LABEL_116;
    case 11:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v17 = [v119 teaserAnswer];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1D726207C();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v84 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v84 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v84)
      {
        v85 = MEMORY[0x1E69E6158];
      }

      else
      {

        v19 = 0;
        v21 = 0;
        v85 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v19;
      *&v111 = v21;
      *&v112 = v85;
      v83 = 0x4120726573616554;
      v86 = 1702327150;
LABEL_116:
      v82 = v86 | 0xED00007200000000;
      goto LABEL_125;
    case 12:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v115 = 0u;
      v116 = 0u;
      sub_1D711B30C(0xD000000000000016, 0x80000001D73DBD50, &v115, (v9 + v8));
      v115 = 0u;
      v116 = 0u;
      v27 = (v9 + v8 + v7);
      v28 = 0xD00000000000001CLL;
      v29 = 0x80000001D73DBD70;
      goto LABEL_20;
    case 13:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      if (v120 > 1u)
      {
        if (v120 == 2)
        {
          v80 = 0xE800000000000000;
          v81 = 0x7373656363416F6ELL;
        }

        else
        {
          v81 = 0;
          v80 = 0xE000000000000000;
        }
      }

      else
      {
        if (v120)
        {
          v64 = 1701147238;
        }

        else
        {
          v64 = 1684627824;
        }

        v81 = v64 | 0x6563634100000000;
        v80 = 0xEA00000000007373;
      }

      if ((v80 & 0xA00000000000000) != 0)
      {
        v109 = MEMORY[0x1E69E6158];
      }

      else
      {

        v81 = 0;
        v80 = 0;
        v109 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v81;
      *&v111 = v80;
      *&v112 = v109;
      v92 = (v9 + v8);
      v83 = 0xD000000000000013;
      v82 = 0x80000001D73DBD30;
      goto LABEL_126;
    case 14:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v110 = 12;
      v111 = 0u;
      v112 = 0u;
      v113 = 0;
      v114 = 2;
      v13 = sub_1D69127CC(&v115, 0, &v110);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v16 = MEMORY[0x1E69E6158];
      }

      else
      {

        v13 = 0;
        v14 = 0;
        v16 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v13;
      *&v111 = v14;
      *&v112 = v16;
      v82 = 0xEA00000000006E6FLL;
      v83 = 0x6974616D6F747541;
      goto LABEL_125;
    case 15:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      v115 = 0u;
      v116 = 0u;
      v28 = 0x65726F6353;
      v27 = (v9 + v8);
      v29 = 0xE500000000000000;
LABEL_20:
      result = sub_1D711B30C(v28, v29, &v115, v27);
      break;
    default:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v10 = v117;
      v11 = HIBYTE(v118) & 0xF;
      if ((v118 & 0x2000000000000000) == 0)
      {
        v11 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {

        v11 = MEMORY[0x1E69E6158];
      }

      else
      {
        v10 = 0;
        v12 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v10;
      *&v111 = v12;
      *&v112 = v11;
      v82 = 0xEA00000000007265;
      v83 = 0x696669746E656449;
LABEL_125:
      v92 = (v9 + v8);
LABEL_126:
      sub_1D711B30C(v83, v82, &v110, v92);
      result = sub_1D5F2DF58(&v115);
      break;
  }

  *a3 = v9;
  return result;
}

void sub_1D69155E8(uint64_t a1)
{
  if (!qword_1EC88E0F8)
  {
    v2 = sub_1D6915644();
    v4 = type metadata accessor for FormatCellAutomation(a1, &type metadata for PuzzleAutomation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC88E0F8);
    }
  }
}

unint64_t sub_1D6915644()
{
  result = qword_1EC88E100;
  if (!qword_1EC88E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E100);
  }

  return result;
}

unint64_t sub_1D6915698()
{
  result = qword_1EC88E108;
  if (!qword_1EC88E108)
  {
    sub_1D69155E8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E108);
  }

  return result;
}

uint64_t sub_1D69156F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

BOOL _s8NewsFeed19FormatPuzzleBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v42[0] = *a1;
  v42[1] = v4;
  v42[2] = v6;
  v42[3] = v5;
  v42[4] = v8;
  v42[5] = v7;
  v43 = v9;
  v44 = v11;
  v45 = v10;
  v46 = v12;
  v47 = v13;
  v48 = v14;
  v49 = v15;
  v50 = v16;
  if (!v9)
  {
    if (!v16)
    {
      v41[0] = v3;
      v41[1] = v4;
      v41[2] = v6;
      v41[3] = v5;
      v41[4] = v8;
      v41[5] = v7;
      v40[0] = v11;
      v40[1] = v10;
      v40[2] = v12;
      v40[3] = v13;
      v40[4] = v14;
      v40[5] = v15;
      v31 = v10;
      v36 = v12;
      v37 = v10;
      v32 = v13;
      v38 = v14;
      v39 = v13;
      v33 = v14;
      v35 = v15;
      sub_1D5E1DCD8(v11, v10, v12, v13, v14, v15, 0);
      sub_1D5E1DCD8(v3, v4, v6, v5, v8, v7, 0);
      sub_1D5E1DCD8(v11, v31, v36, v32, v33, v35, 0);
      sub_1D5E1DCD8(v3, v4, v6, v5, v8, v7, 0);
      v17 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(v41, v40);
      sub_1D6915F64(v42);
      sub_1D5E1E164(v11, v37, v36, v39, v38, v35, 0);
      sub_1D5E1E164(v3, v4, v6, v5, v8, v7, 0);
      return v17;
    }

    v18 = v3;
    v19 = v10;
    v20 = v4;
    v21 = v12;
    v22 = v6;
    v23 = v13;
    v24 = v5;
    v25 = v14;
    v26 = v8;
    v27 = v15;
    v28 = v7;
    v29 = v16;
    sub_1D5E1DC5C(v18, v20, v22, v24, v26, v28);
    LOBYTE(v16) = v29;
    v15 = v27;
    v14 = v25;
    v13 = v23;
    v12 = v21;
    v10 = v19;
    goto LABEL_76;
  }

  if (v9 != 1)
  {
    if (!(v6 | v4 | v3 | v5 | v8 | v7))
    {
      if (v16 != 2 || v12 | v10 | v11 | v13 | v14 | v15)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    v30 = v6 | v4 | v5 | v8 | v7;
    if (v3 != 1 || v30)
    {
      if (v3 != 2 || v30)
      {
        if (v3 != 3 || v30)
        {
          if (v3 != 4 || v30)
          {
            if (v3 != 5 || v30)
            {
              if (v3 != 6 || v30)
              {
                if (v3 != 7 || v30)
                {
                  if (v3 != 8 || v30)
                  {
                    if (v3 != 9 || v30)
                    {
                      if (v3 != 10 || v30)
                      {
                        if (v3 != 11 || v30)
                        {
                          if (v3 != 12 || v30)
                          {
                            if (v16 != 2 || v11 != 13)
                            {
                              goto LABEL_76;
                            }
                          }

                          else if (v16 != 2 || v11 != 12)
                          {
                            goto LABEL_76;
                          }
                        }

                        else if (v16 != 2 || v11 != 11)
                        {
                          goto LABEL_76;
                        }
                      }

                      else if (v16 != 2 || v11 != 10)
                      {
                        goto LABEL_76;
                      }
                    }

                    else if (v16 != 2 || v11 != 9)
                    {
                      goto LABEL_76;
                    }
                  }

                  else if (v16 != 2 || v11 != 8)
                  {
                    goto LABEL_76;
                  }
                }

                else if (v16 != 2 || v11 != 7)
                {
                  goto LABEL_76;
                }
              }

              else if (v16 != 2 || v11 != 6)
              {
                goto LABEL_76;
              }
            }

            else if (v16 != 2 || v11 != 5)
            {
              goto LABEL_76;
            }
          }

          else if (v16 != 2 || v11 != 4)
          {
            goto LABEL_76;
          }
        }

        else if (v16 != 2 || v11 != 3)
        {
          goto LABEL_76;
        }
      }

      else if (v16 != 2 || v11 != 2)
      {
        goto LABEL_76;
      }
    }

    else if (v16 != 2 || v11 != 1)
    {
      goto LABEL_76;
    }

    if (!(v12 | v10 | v13 | v14 | v15))
    {
LABEL_75:
      sub_1D6915F64(v42);
      return 1;
    }

LABEL_76:
    sub_1D5E1DCD8(v11, v10, v12, v13, v14, v15, v16);
    sub_1D6915F64(v42);
    return 0;
  }

  if (v16 != 1)
  {
    goto LABEL_76;
  }

  sub_1D6915F64(v42);
  return ((v11 ^ v3) & 1) == 0;
}

unint64_t sub_1D6915B64()
{
  result = qword_1EC88E110;
  if (!qword_1EC88E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E110);
  }

  return result;
}

unint64_t sub_1D6915BBC()
{
  result = qword_1EC88E118;
  if (!qword_1EC88E118)
  {
    sub_1D6915C38(255, &qword_1EC88E120, &type metadata for FormatPuzzleBinding.Text.CodingType, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E118);
  }

  return result;
}

void sub_1D6915C38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6915C88(uint64_t a1)
{
  result = sub_1D6915CB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6915CB0()
{
  result = qword_1EC88E128;
  if (!qword_1EC88E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E128);
  }

  return result;
}

unint64_t sub_1D6915D04(void *a1)
{
  a1[1] = sub_1D665FE7C();
  a1[2] = sub_1D670501C();
  result = sub_1D6915D3C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6915D3C()
{
  result = qword_1EC88E130;
  if (!qword_1EC88E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E130);
  }

  return result;
}

uint64_t sub_1D6915D90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6915DD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6915E2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1D6915E74(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D726224C();

    return sub_1D726236C();
  }

  return result;
}

unint64_t sub_1D6915F10()
{
  result = qword_1EDF2C1A0;
  if (!qword_1EDF2C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1A0);
  }

  return result;
}

uint64_t sub_1D6915F64(uint64_t a1)
{
  sub_1D6915FC0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6915FC0()
{
  if (!qword_1EC88E138)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88E138);
    }
  }
}

uint64_t static ErrorStyler.feedTheme.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = [v0 systemBackgroundColor];
  v3 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v4 = [v0 secondaryLabelColor];

  return MEMORY[0x1EEE46008](v3, 0, v4);
}

uint64_t type metadata accessor for DebugPersonalizationSelectionButton(uint64_t a1)
{
  result = qword_1EC88E150;
  if (!qword_1EC88E150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1D6916194(double a1, double a2, double a3, double a4)
{
  v9 = qword_1EC88E140;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = qword_1EC88E148;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v44.receiver = v4;
  v44.super_class = type metadata accessor for DebugPersonalizationSelectionButton(0);
  v11 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 setCornerRadius_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v11 widthAnchor];
  v14 = [v13 constraintEqualToConstant_];

  [v14 setActive_];
  v15 = [v11 heightAnchor];
  v16 = [v15 &selRef_featureKey + 1];

  [v16 setActive_];
  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  [v11 setTitleColor:v18 forState:0];

  v19 = qword_1EC88E148;
  v20 = *&v11[qword_1EC88E148];
  v21 = [v17 labelColor];
  [v20 setTintColor_];

  v22 = [v17 secondarySystemBackgroundColor];
  [v11 setBackgroundColor_];

  v23 = qword_1EC88E140;
  [v11 addSubview_];
  [v11 addSubview_];
  [*&v11[v23] &:0 OBJC:? LABEL:? PROTOCOL:? :? :?FCReadingListObserving + 2];
  v24 = [*&v11[v23] centerXAnchor];
  v25 = [v11 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  [v26 setActive_];
  v27 = [*&v11[v23] centerYAnchor];
  v28 = [v11 centerYAnchor];
  v29 = [v27 &selRef_size + 5];

  [v29 setActive_];
  v30 = [*&v11[v23] leadingAnchor];
  v31 = [*&v11[v19] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:15.0];

  [v32 setActive_];
  [*&v11[v19] setContentMode_];
  [*&v11[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = [*&v11[v19] leadingAnchor];
  v34 = [v11 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor:v34 constant:15.0];
  [v35 setActive_];

  v36 = [*&v11[v19] centerYAnchor];
  v37 = [*&v11[v23] centerYAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  [v38 setActive_];
  v39 = [*&v11[v19] widthAnchor];
  v40 = [v39 constraintEqualToConstant_];

  [v40 setActive_];
  v41 = [*&v11[v19] heightAnchor];
  v42 = [v41 constraintEqualToConstant_];

  [v42 setActive_];
  return v11;
}

void sub_1D691677C(uint64_t a1)
{
  v2 = qword_1EC88E140;
  *(a1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = qword_1EC88E148;
  *(a1 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  sub_1D726402C();
  __break(1u);
}

void sub_1D6916828()
{
  v1 = *(v0 + qword_1EC88E148);
}

id sub_1D6916868()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugPersonalizationSelectionButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D69168A0(uint64_t a1)
{
  v2 = *(a1 + qword_1EC88E148);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1D6916930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1D6916978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void FeedChannelHeadlineClusteringResult.scoredHeadlines.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698FB64(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      return;
    }
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
}

void static FeedChannelHeadlineClusteringResult.- infix(_:_:)(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v44 = a3;
  v4 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v56 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v54 = v4;
      v7 = 0;
      v8 = v56;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6FB460](v7, v3);
        }

        else
        {
          v9 = *(v3 + 8 * v7 + 32);
          swift_unknownObjectRetain();
        }

        v10 = [v9 identifier];
        v11 = sub_1D726207C();
        v13 = v12;
        swift_unknownObjectRelease();

        v15 = *(v56 + 16);
        v14 = *(v56 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D5BFC364((v14 > 1), v15 + 1, 1);
        }

        ++v7;
        *(v56 + 16) = v15 + 1;
        v16 = v56 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (i != v7);
      v6 = MEMORY[0x1E69E7CC0];
      v4 = v54;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v3 = sub_1D5B86020(v8);

    v17 = *(v4 + 16);
    if (!v17)
    {
      break;
    }

    sub_1D69999D8(0, v17, 0);
    v18 = 0;
    v45 = v17;
    v46 = v4 + 32;
    v19 = v6;
    v4 = v3 + 56;
    while (1)
    {
      v49 = v19;
      v50 = v18;
      v20 = (v46 + 24 * v18);
      v21 = v20[1];
      v22 = v20[2];
      v23 = *(v21 + 16);
      v48 = *v20;
      swift_unknownObjectRetain();
      swift_bridgeObjectRetain_n();
      v47 = v22;
      v53 = v23;
      if (v23)
      {
        break;
      }

      v51 = MEMORY[0x1E69E7CC0];
LABEL_36:

      v19 = v49;
      v42 = *(v49 + 16);
      v41 = *(v49 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D69999D8((v41 > 1), v42 + 1, 1);
        v19 = v49;
      }

      v18 = v50 + 1;
      *(v19 + 16) = v42 + 1;
      v43 = (v19 + 24 * v42);
      v43[4] = v48;
      v43[5] = v51;
      v43[6] = v47;
      if (v50 + 1 == v45)
      {

        goto LABEL_41;
      }
    }

    v24 = 0;
    v52 = v21 + 32;
    v51 = MEMORY[0x1E69E7CC0];
    while (v24 < *(v21 + 16))
    {
      v25 = v21;
      v55 = *(v52 + 16 * v24++);
      swift_unknownObjectRetain();
      v26 = *(&v55 + 1);
      v27 = [v55 articleID];
      v28 = sub_1D726207C();
      v30 = v29;

      if (*(v3 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v31 = sub_1D7264A5C(), v32 = -1 << *(v3 + 32), v33 = v31 & ~v32, ((*(v4 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(v3 + 48) + 16 * v33);
          v36 = *v35 == v28 && v35[1] == v30;
          if (v36 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v4 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        swift_unknownObjectRelease();

        v21 = v25;
        if (v24 == v53)
        {
          goto LABEL_36;
        }
      }

      else
      {
LABEL_29:

        v37 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997CD0(0, *(v51 + 16) + 1, 1);
          v37 = v51;
        }

        v21 = v25;
        v39 = *(v37 + 16);
        v38 = *(v37 + 24);
        v40 = v37;
        if (v39 >= v38 >> 1)
        {
          sub_1D6997CD0((v38 > 1), v39 + 1, 1);
          v40 = v51;
        }

        *(v40 + 16) = v39 + 1;
        v51 = v40;
        *(v40 + 16 * v39 + 32) = v55;
        if (v24 == v53)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_43:
    ;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_41:
  *v44 = v19;
}

void FeedChannelHeadlineClusteringResult.next(filterAgainst:)(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a3;
  v9 = *v3;
  if (a3 >> 62)
  {
LABEL_46:
    v10 = sub_1D7263BFC();
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  v50 = v9;
  v46 = a1;
  if (v10)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v4 = 0;
    v11 = v51;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6FB460](v4, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v4 + 32);
        swift_unknownObjectRetain();
      }

      v13 = [v12 identifier];
      v5 = sub_1D726207C();
      v15 = v14;
      swift_unknownObjectRelease();

      v17 = *(v51 + 16);
      v16 = *(v51 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
      }

      ++v4;
      *(v51 + 16) = v17 + 1;
      v18 = v51 + 16 * v17;
      *(v18 + 32) = v5;
      *(v18 + 40) = v15;
    }

    while (v10 != v4);
    v9 = v50;
  }

  v6 = sub_1D5B86020(v11);

  v47 = *(v9 + 16);
  if (v47)
  {
    v45 = a2;
    a1 = 0;
    v48 = v9 + 32;
    a2 = (v6 + 56);
    while (1)
    {
      if (a1 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v19 = (v48 + 24 * a1);
      v10 = *v19;
      v4 = v19[1];
      v20 = v19[2];
      swift_unknownObjectRetain();

      v49 = v20;
      v21 = [v10 identifier];
      v22 = sub_1D726207C();
      v5 = v23;

      if (!*(v6 + 16))
      {
        break;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v24 = sub_1D7264A5C();
      v25 = -1 << *(v6 + 32);
      v26 = v24 & ~v25;
      if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        break;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = (*(v6 + 48) + 16 * v26);
        v29 = *v28 == v22 && v28[1] == v5;
        if (v29 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      swift_unknownObjectRelease();

      a1 = (a1 + 1);
      v9 = v50;
      if (a1 == v47)
      {

        a2 = v45;
        goto LABEL_30;
      }
    }

LABEL_26:

    swift_unknownObjectRelease();

    if (__OFADD__(a1, 1))
    {
      goto LABEL_48;
    }

    v30 = *v19;
    v31 = v19[1];
    v5 = v19[2];
    v10 = sub_1D5FD2BFC();
    v35 = v34 >> 1;
    if (v33 == v34 >> 1)
    {
      swift_unknownObjectRetain();

      v36 = v5;

      swift_unknownObjectRelease();
      v37 = 0;
      a2 = v45;
      *v46 = v30;
      v46[1] = v31;
      v46[2] = v36;
      goto LABEL_42;
    }

    v4 = v33;
    v49 = v32;
    *v46 = v30;
    v46[1] = v31;
    v46[2] = v5;
    a2 = v34;
    if ((v34 & 1) == 0)
    {
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v38 = v5;

      goto LABEL_33;
    }

    sub_1D72647AC();
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v40 = v5;
    swift_unknownObjectRetain_n();
    v41 = v40;

    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x1E69E7CC0];
    }

    v43 = *(v42 + 16);

    if (!__OFSUB__(v35, v4))
    {
      if (v43 != v35 - v4)
      {
        goto LABEL_50;
      }

      v44 = swift_dynamicCastClass();
      if (v44)
      {
        v37 = v44;
        swift_unknownObjectRelease();

        goto LABEL_40;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v37 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    swift_unknownObjectRelease();
LABEL_33:
    sub_1D5EC3364(v10, v49, v4, a2);
    v37 = v39;
    swift_unknownObjectRelease();

LABEL_40:

LABEL_41:
    a2 = v45;
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

LABEL_30:
  v37 = 0;
  *v46 = 0;
  v46[1] = 0;
  v46[2] = 0;
LABEL_42:
  *a2 = v37;
}

uint64_t sub_1D6917510(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(a1 + 16);
      sub_1D69176FC(255);
      v10 = *&v7[*(swift_getTupleTypeMetadata2() + 48)];
      v16 = 0x287365676E616863;
      v17 = 0xE800000000000000;
      v11 = *(v10 + 16);

      v15[1] = v11;
      v12 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v12);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v13 = v16;
      (*(*(v9 - 8) + 8))(v7, v9);
      return v13;
    }

    else
    {
      return 0x676E616863206F6ELL;
    }
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return 0x6C616974696E69;
  }
}

void sub_1D69176FC(uint64_t a1)
{
  if (!qword_1EC88E160[0])
  {
    type metadata accessor for DebugFormatCacheFile(255);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, qword_1EC88E160);
    }
  }
}

uint64_t sub_1D6917754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DebugFormatManagerData(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for DebugFormatFileDirectoryMetadata(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D69177DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v5)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = sub_1D725BD1C();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v12 | 7;
  v15 = v6 + (v12 | 7) + 1;
  v16 = v13 + v12;
  v17 = v13 + 7;
  if (v11 >= a2)
  {
    goto LABEL_31;
  }

  v18 = (v15 & ~v14) + ((((v17 + (v16 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v18 <= 3)
  {
    v19 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *&a1[v18];
      if (!*&a1[v18])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v22 = *&a1[v18];
      if (!v22)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v24 = (v22 - 1) << (8 * v18);
    if (v18 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v11 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = a1[v18];
    if (a1[v18])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  v26 = &a1[v15] & ~v14;
  if (v10 < 0x7FFFFFFF)
  {
    v28 = *(((v17 + ((v16 + v26) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }

  else
  {
    v27 = *(v9 + 48);

    return v27(v26);
  }
}

void sub_1D69179E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v7)
  {
    v8 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = *(sub_1D725BD1C() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = v8 + (v11 | 7) + 1;
  v15 = v12 + v11;
  v16 = (v12 + v11) & ~v11;
  v17 = v12 + 7;
  v18 = (v14 & ~(v11 | 7)) + ((((v17 + v16) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v21 = 0;
    if (v13 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v13 >= a2)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v18] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v18] = 0;
      }

      else if (v21)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v24 = &a1[v14] & ~(v11 | 7);
      if (v10 < 0x7FFFFFFF)
      {
        v26 = ((v17 + ((v15 + v24) & ~v11)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v26 = a2 & 0x7FFFFFFF;
          v26[1] = 0;
        }

        else
        {
          v26[1] = (a2 - 1);
        }
      }

      else
      {
        v25 = *(v9 + 56);

        v25(v24, a2);
      }

      return;
    }
  }

  v22 = ~v13 + a2;
  bzero(a1, v18);
  if (v18 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v18 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_30:
      if (v21 == 2)
      {
        *&a1[v18] = v23;
      }

      else
      {
        *&a1[v18] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v21)
  {
    a1[v18] = v23;
  }
}

uint64_t sub_1D6917C70(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1D69176FC(255);
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6917D08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1D6917E28(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D6917FE8()
{
  sub_1D5B6B984(0, qword_1EDF26B28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v15 - v2;
  v4 = type metadata accessor for SportsDataConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - v11;

  sub_1D725B96C();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D5B6AD60(v3);
    v15[0] = 0xD000000000000015;
    v15[1] = 0x80000001D73DBEF0;
    return sub_1D725AD2C();
  }

  else
  {
    sub_1D69188B0(v3, v12);
    sub_1D5F7DD78(v12, v8);
    sub_1D5B6B984(0, &qword_1EDF17A30, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v14 = sub_1D725BB1C();
    sub_1D5F7DDDC(v12);
    return v14;
  }
}

uint64_t sub_1D691820C(uint64_t *a1)
{
  type metadata accessor for SportsDataConfiguration(0);
  sub_1D725BDCC();
  v1 = sub_1D725B92C();
  sub_1D725BA9C();

  v2 = sub_1D725B92C();
  v3 = sub_1D725BB7C();

  return v3;
}

uint64_t sub_1D6918318(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataConfiguration(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6B984(0, qword_1EDF26B28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  sub_1D5F7DD78(a1, &v17 - v13);
  v15 = *(v3 + 56);
  v15(v14, 0, 1, v2);
  sub_1D5B6BBCC(v14, v10);

  sub_1D725B97C();

  sub_1D5B6AD60(v14);
  v15(v14, 1, 1, v2);
  sub_1D5B6BBCC(v14, v10);

  sub_1D725B97C();

  sub_1D5B6AD60(v14);
  sub_1D5F7DD78(a1, v6);
  sub_1D5B6B984(0, &qword_1EDF17A30, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

char *sub_1D6918550(void *a1)
{
  sub_1D5B6B984(0, qword_1EDF26B28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for SportsDataConfiguration(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v26 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v25 - v20;

  sub_1D725B96C();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D5B6AD60(v13);
    swift_willThrow();
    v22 = a1;
  }

  else
  {
    sub_1D69188B0(v13, v21);
    sub_1D5F7DD78(v21, v9);
    v23 = *(v15 + 56);
    v23(v9, 0, 1, v14);
    sub_1D5B6BBCC(v9, v5);

    sub_1D725B97C();

    sub_1D5B6AD60(v9);
    v23(v9, 1, 1, v14);
    sub_1D5B6BBCC(v9, v5);

    sub_1D725B97C();

    sub_1D5B6AD60(v9);
    sub_1D5F7DD78(v21, v26);
    sub_1D5B6B984(0, &qword_1EDF17A30, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v13 = sub_1D725BB1C();
    sub_1D5F7DDDC(v21);
  }

  return v13;
}

uint64_t sub_1D6918858()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D69188B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionContainerView.motionLayer.getter()
{
  v1 = [v0 layer];
  v2 = [v1 sublayers];

  if (v2)
  {
    sub_1D5B5A498(0, &unk_1EDF1A700, 0x1E6979398);
    v3 = sub_1D726267C();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA6FB460](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        sub_1D6918B80(0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v10 = v9;

          return v10;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

double MotionContainerView.blueprintViewportMonitor(_:viewportMotionDataDidChange:)()
{
  sub_1D725EC0C();
  sub_1D725DE6C();

  return result;
}

double sub_1D6918B18()
{
  sub_1D725EC0C();
  sub_1D725DE6C();

  return result;
}

void sub_1D6918B80(uint64_t a1)
{
  if (!qword_1EC88E268)
  {
    sub_1D5B5A498(255, &unk_1EC88E270, 0x1E69D88D0);
    v1 = sub_1D725CBBC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88E268);
    }
  }
}

void sub_1D6918BE8()
{
  v1 = v0;
  v99 = type metadata accessor for DebugFormatDebuggerSourceHighlight;
  v98 = MEMORY[0x1E69E6720];
  sub_1D691C680(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v98 - v4;
  v7 = sub_1D6919570(v6);
  v8 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v9 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48];
  v105[2] = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32];
  v105[3] = v9;
  v10 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16];
  v105[0] = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v105[1] = v10;
  v11 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112];
  v105[6] = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96];
  v105[7] = v11;
  v12 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80];
  v105[4] = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64];
  v105[5] = v12;
  v13 = &v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile];
  v14 = *&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile];
  v15 = *&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 16];
  v16 = *&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 48];
  v106[2] = *&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 32];
  v106[3] = v16;
  v106[0] = v14;
  v106[1] = v15;
  v17 = *&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 64];
  v18 = *&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 80];
  v19 = *&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 112];
  v106[6] = *&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 96];
  v106[7] = v19;
  v106[4] = v17;
  v106[5] = v18;
  memmove(&v7[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile], &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile], 0x80uLL);
  sub_1D67DEA6C(v105, &v120);
  v20 = MEMORY[0x1E69E6720];
  sub_1D691C778(v106, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, MEMORY[0x1E69E6720], sub_1D5B49DA8);
  v21 = v13[3];
  v23 = *v13;
  v22 = v13[1];
  v107[2] = v13[2];
  v107[3] = v21;
  v107[0] = v23;
  v107[1] = v22;
  v24 = v13[7];
  v26 = v13[4];
  v25 = v13[5];
  v107[6] = v13[6];
  v107[7] = v24;
  v107[4] = v26;
  v107[5] = v25;
  v124 = v13[4];
  v125 = v13[5];
  v126 = v13[6];
  v127 = v13[7];
  v120 = *v13;
  v121 = v13[1];
  v122 = v13[2];
  v123 = v13[3];
  sub_1D67DEA6C(v107, &v112);
  sub_1D67DDB1C(&v120);

  v108[4] = v124;
  v108[5] = v125;
  v108[6] = v126;
  v108[7] = v127;
  v108[0] = v120;
  v108[1] = v121;
  v108[2] = v122;
  v108[3] = v123;
  sub_1D691C778(v108, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, v20, sub_1D5B49DA8);
  v27 = sub_1D691968C();
  v28 = *(v8 + 3);
  v109[2] = *(v8 + 2);
  v109[3] = v28;
  v29 = *(v8 + 1);
  v109[0] = *v8;
  v109[1] = v29;
  v30 = *(v8 + 7);
  v109[6] = *(v8 + 6);
  v109[7] = v30;
  v31 = *(v8 + 5);
  v109[4] = *(v8 + 4);
  v109[5] = v31;
  v32 = &v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile];
  v33 = *&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile];
  v34 = *&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 16];
  v35 = *&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 32];
  v110[3] = *&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 48];
  v110[2] = v35;
  v110[1] = v34;
  v110[0] = v33;
  v36 = *&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 64];
  v37 = *&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 80];
  v38 = *&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 96];
  v110[7] = *&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 112];
  v110[6] = v38;
  v110[5] = v37;
  v110[4] = v36;
  memmove(&v27[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile], v8, 0x80uLL);
  sub_1D67DEA6C(v109, &v120);
  sub_1D691C778(v110, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, v20, sub_1D5B49DA8);
  v39 = v32[2];
  v41 = *v32;
  v40 = v32[1];
  v111[3] = v32[3];
  v111[2] = v39;
  v111[0] = v41;
  v111[1] = v40;
  v42 = v32[6];
  v44 = v32[4];
  v43 = v32[5];
  v111[7] = v32[7];
  v111[6] = v42;
  v111[4] = v44;
  v111[5] = v43;
  v124 = v32[4];
  v125 = v32[5];
  v126 = v32[6];
  v127 = v32[7];
  v120 = *v32;
  v121 = v32[1];
  v122 = v32[2];
  v123 = v32[3];

  sub_1D67DEA6C(v111, &v112);
  sub_1D679C564(&v120, v5);
  v45 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
  swift_beginAccess();
  sub_1D691C6E4(v5, &v27[v45]);
  swift_endAccess();
  [v27 setNeedsLayout];

  sub_1D691C778(v5, &qword_1EC88E2E0, v99, v98, sub_1D691C680);
  v46 = *(v8 + 5);
  v116 = *(v8 + 4);
  v117 = v46;
  v47 = *(v8 + 7);
  v118 = *(v8 + 6);
  v119 = v47;
  v48 = *(v8 + 1);
  v112 = *v8;
  v113 = v48;
  v49 = *(v8 + 3);
  v114 = *(v8 + 2);
  v115 = v49;
  v126 = v118;
  v127 = v47;
  v124 = v116;
  v125 = v46;
  v122 = v114;
  v123 = v49;
  v120 = v112;
  v121 = v48;
  v50 = sub_1D5DEA380(&v120);
  v51 = &qword_1EC88E000;
  if (v50 != 1)
  {
LABEL_5:
    v56 = *&v1[v51[83]];
    v57 = v122;
    v58 = __swift_project_boxed_opaque_existential_1((*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_sourceTheme), *(*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_sourceTheme + 24));
    v59 = v58[5];
    v104[4] = v58[4];
    v104[5] = v59;
    v104[6] = v58[6];
    v60 = v58[1];
    v104[0] = *v58;
    v104[1] = v60;
    v61 = v58[3];
    v104[2] = v58[2];
    v104[3] = v61;
    v103[2] = v114;
    v103[3] = v115;
    v103[0] = v112;
    v103[1] = v113;
    v103[6] = v118;
    v103[7] = v119;
    v103[4] = v116;
    v103[5] = v117;
    sub_1D691C7D8(v103, v102);
    v62 = sub_1D691B724(v57, *(&v57 + 1), v104, 0);
    [v56 setAttributedText_];

    v102[0] = v57;
    v100 = 10;
    v101 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v63 = *(sub_1D72639FC() + 16);

    if (v63)
    {
      *&v102[0] = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v63, 0);
      v64 = 0;
      v65 = 1;
      v66 = *&v102[0];
      v67 = v63;
      while (!v64)
      {
        v100 = v65;
        sub_1D5E4049C();
        v68 = sub_1D7263ADC();
        *&v102[0] = v66;
        v71 = *(v66 + 16);
        v70 = *(v66 + 24);
        if (v71 >= v70 >> 1)
        {
          v99 = v68;
          v74 = v69;
          sub_1D5BFC364((v70 > 1), v71 + 1, 1);
          v69 = v74;
          v68 = v99;
          v66 = *&v102[0];
        }

        *(v66 + 16) = v71 + 1;
        v72 = v66 + 16 * v71;
        *(v72 + 32) = v68;
        *(v72 + 40) = v69;
        v64 = v65 == v63;
        if (v65 == v63)
        {
          v65 = 0;
        }

        else if (__OFADD__(v65++, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        if (!--v67)
        {
          *&v102[0] = v66;
          sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_1D5BB0AB8();
          v75 = sub_1D7261F3C();
          v77 = v76;

          v78 = [objc_opt_self() secondaryLabelColor];
          v79 = sub_1D691C480(v75, v77, v78);

          [v79 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
          v81 = v80;
          v83 = v82;
          v84 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel];
          [v84 setAttributedText_];
          [v84 setFrame_];
          sub_1D6919718(0);
          if (*(&v123 + 1))
          {
            v85 = *(&v124 + 1);
            v86 = v124;

            sub_1D6919DD8();
            v88 = v87;

            sub_1D691C778(&v112, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, MEMORY[0x1E69E6720], sub_1D5B49DA8);
            v89 = v88 * v85;
            v90 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize + 8];

            v91 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize];
            *v91 = v89;
            v91[1] = v90;
            v91[2] = v89;
            v91[3] = v90 * v86;
            v79 = &off_1E84D3000;
            v92 = [v1 view];
            if (!v92)
            {
              goto LABEL_26;
            }

            v93 = v92;
            [v92 setNeedsLayout];

            v55 = [v1 view];
            if (v55)
            {
              goto LABEL_22;
            }

            __break(1u);
          }

          sub_1D691C778(&v112, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, MEMORY[0x1E69E6720], sub_1D5B49DA8);
          v94 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize];
          *v94 = 0u;
          *(v94 + 1) = 0u;
          v95 = [v1 view];
          if (!v95)
          {
            goto LABEL_27;
          }

          v96 = v95;
          [v95 setNeedsLayout];

          v55 = [v1 view];
          if (!v55)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_23:
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  [*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView] setAttributedText_];
  [*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel] setAttributedText_];
  v52 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize];
  *v52 = 0u;
  *(v52 + 1) = 0u;
  v53 = [v1 view];
  if (v53)
  {
    v54 = v53;
    [v53 setNeedsLayout];

    v55 = [v1 view];
    if (v55)
    {
LABEL_22:
      v97 = v55;
      [v55 layoutIfNeeded];

      sub_1D691B090();
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_1D6919570(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView;
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor);
    sub_1D6919DD8();
    v7 = v6;
    v8 = type metadata accessor for DebugFormatDebuggerSourceBreakpointView();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile];
    sub_1D607F0A4(v22);
    v11 = v22[0];
    v12 = v22[1];
    v13 = v22[3];
    *(v10 + 2) = v22[2];
    *(v10 + 3) = v13;
    *v10 = v11;
    *(v10 + 1) = v12;
    v14 = v22[4];
    v15 = v22[5];
    v16 = v22[7];
    *(v10 + 6) = v22[6];
    *(v10 + 7) = v16;
    *(v10 + 4) = v14;
    *(v10 + 5) = v15;
    *&v9[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_editor] = v5;
    *&v9[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_breakpointSize] = v7;
    v21.receiver = v9;
    v21.super_class = v8;

    v17 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v18 = *(v1 + v2);
    *(v1 + v2) = v17;
    v4 = v17;

    v3 = 0;
  }

  v19 = v3;
  return v4;
}

char *sub_1D691968C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for DebugFormatDebuggerSourceHighlightView(0));

    v5 = v0;
    v6 = sub_1D67FFCB8(v4);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1D6919718(char a1)
{
  v2 = v1;
  v49 = *(v1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView);
  v4 = [v49 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
  v5 = sub_1D726267C();

  if (v5 >> 62)
  {
    v6 = sub_1D7263BFC();
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    goto LABEL_47;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6FB460](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    type metadata accessor for DebugFormatDebuggerSourceMetricView();
    if (swift_dynamicCastClass())
    {
      [v9 removeFromSuperview];
    }
  }

LABEL_12:

  sub_1D725972C();

  if (LOBYTE(v53[0]) != 1)
  {
    return;
  }

  v10 = &off_1E84D3000;
  [*(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel) bounds];
  CGRectGetMaxX(v55);
  v11 = v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile;
  v12 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80);
  v53[4] = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64);
  v53[5] = v12;
  v13 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112);
  v53[6] = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96);
  v53[7] = v13;
  v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16);
  v53[0] = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile);
  v53[1] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48);
  v53[2] = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32);
  v53[3] = v15;
  v16 = sub_1D5DEA380(v53);
  v5 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  if (v16 != 1)
  {
    v17 = *(v11 + 80);
  }

  v52 = v5;
  v18 = *(v17 + 16);
  if (v18)
  {
    v46 = a1;
    v50 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceMetrics;
    v48 = v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize;
    v19 = v2;
    v47 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView);
    v20 = (v17 + 56);
    while (1)
    {
      v21 = v10;
      v23 = *(v20 - 2);
      v22 = *(v20 - 1);
      v24 = *v20;
      v25 = *(v19 + v50);
      if (!v25)
      {

        v32 = MEMORY[0x1E69E7CC0];
        v30 = MEMORY[0x1E69E7CC0];
        goto LABEL_30;
      }

      v26 = *(v20 - 3);
      v27 = *(v25 + 16);
      v28 = *(v27 + 16);

      if (v28)
      {

        v29 = sub_1D6D62D64(v26, v23, v22, v24);
        v30 = MEMORY[0x1E69E7CC0];
        if (v31)
        {
          v30 = *(*(v27 + 56) + 8 * v29);
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      v33 = *(v19 + v50);
      if (v33)
      {
        v34 = *(v33 + 32);
        if (*(v34 + 16))
        {

          v35 = sub_1D6D62D64(v26, v23, v22, v24);
          if (v36)
          {
            v37 = *(*(v34 + 56) + 8 * v35);

            v32 = v37;
            goto LABEL_30;
          }
        }
      }

      v32 = MEMORY[0x1E69E7CC0];
LABEL_30:
      sub_1D6BED228(v32, v30, &v54);
      v5 = objc_allocWithZone(type metadata accessor for DebugFormatDebuggerSourceMetricView());
      v38 = sub_1D60D0E40(&v54);
      [v38 sizeToFit];
      if (__OFSUB__(v24, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v40 = sub_1D7263BFC();
        v42 = v40;
        if (!v40)
        {
          goto LABEL_49;
        }

LABEL_39:
        if (v42 >= 1)
        {
          v43 = 0;
          do
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v44 = MEMORY[0x1DA6FB460](v43, v5);
            }

            else
            {
              v44 = *(v5 + 8 * v43 + 32);
            }

            v45 = v44;
            ++v43;
            CGAffineTransformMakeScale(&v51, 0.0, 0.0);
            [v45 setTransform_];
          }

          while (v42 != v43);
          goto LABEL_49;
        }

        __break(1u);
        return;
      }

      sub_1D6919DD8();
      v10 = v21;
      [v38 v21[222]];
      CGRectGetWidth(v56);
      v5 = v48;

      if (__OFSUB__(v22, 1))
      {
        goto LABEL_46;
      }

      [v38 v21[222]];
      CGRectGetHeight(v57);
      [v38 frame];
      sub_1D726327C();
      [v38 setFrame_];
      [v49 insertSubview:v38 belowSubview:v47];
      v39 = v38;
      MEMORY[0x1DA6F9CE0]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      v20 += 4;
      sub_1D726278C();

      if (!--v18)
      {
        v5 = v52;
        a1 = v46;
        break;
      }
    }
  }

  if (a1)
  {
    if (v5 >> 62)
    {
      goto LABEL_48;
    }

    v42 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_39;
    }

LABEL_49:
    MEMORY[0x1EEE9AC00](v40, v41);
    sub_1D72634EC();
  }
}

void sub_1D6919DD8()
{
  v1 = v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize + 16))
  {
    v2 = [objc_opt_self() labelColor];
    v3 = sub_1D691C480(97, 0xE100000000000000, v2);

    [v3 size];
    v5 = v4;
    v7 = v6;

    *v1 = v5;
    *(v1 + 8) = v7;
    *(v1 + 16) = 0;
  }
}

id sub_1D6919E88(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  sub_1D607F0A4(v17);
  v5 = v17[5];
  *(v4 + 4) = v17[4];
  *(v4 + 5) = v5;
  v6 = v17[7];
  *(v4 + 6) = v17[6];
  *(v4 + 7) = v6;
  v7 = v17[1];
  *v4 = v17[0];
  *(v4 + 1) = v7;
  v8 = v17[3];
  *(v4 + 2) = v17[2];
  *(v4 + 3) = v8;
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceMetrics] = 0;
  v9 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView] = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeViewPadding] = 0x4020000000000000;
  v13 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor] = a1;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D691A074()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView];
  v3 = objc_opt_self();
  v4 = [v3 tertiarySystemBackgroundColor];
  [v2 setBackgroundColor_];

  [v2 setDirectionalLockEnabled_];
  [v2 setAlwaysBounceVertical_];
  [v2 setAlwaysBounceHorizontal_];
  [v2 setShowsHorizontalScrollIndicator_];
  [v2 setDelegate_];
  [v2 setContentInset_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    [v2 _setHiddenPocketEdges_];
    v7 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView];
    v8 = [v3 tertiarySystemBackgroundColor];
    [v7 setBackgroundColor_];

    v9 = [v7 textContainer];
    [v9 setLineFragmentPadding_];

    [v7 setTextContainerInset_];
    [v7 setScrollEnabled_];
    [v7 setEditable_];
    [v7 setSelectable_];
    [v2 addSubview_];
    [v7 _setHiddenPocketEdges_];
    v10 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView];
    v11 = [v3 tertiarySystemBackgroundColor];
    [v10 setBackgroundColor_];

    [v2 addSubview_];
    v12 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel];
    [v12 setUserInteractionEnabled_];
    [v12 setTextAlignment_];
    [v12 setNumberOfLines_];
    v13 = [v3 tertiarySystemBackgroundColor];
    [v12 setBackgroundColor_];

    [v2 addSubview_];
    v14 = sub_1D691968C();
    [v2 addSubview_];

    v16 = sub_1D6919570(v15);
    [v2 addSubview_];

    sub_1D725974C();

    sub_1D725975C();

    v17 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v17[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_didTapOnHighlight];
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    *v19 = sub_1D691C910;
    v19[1] = v18;
    v22 = v17;

    sub_1D5B74328(v20, v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D691A504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1D691A574(a1, a2);
  }
}

void sub_1D691A574(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DebugFormatDebuggerSourceHighlight(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v29.receiver - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D691C890(a1, v8, type metadata accessor for DebugFormatDebuggerSourceHighlight);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D691C918(v8);
    }
  }

  else
  {
    v10 = *v8;
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D5EE7410(v10);
      v13 = sub_1D5EEAADC(v12);
      v15 = v14;
      v16 = *&v2[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor];
      v17 = type metadata accessor for DebugFormatErrorViewController();
      v18 = objc_allocWithZone(v17);
      v19 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView;
      v20 = objc_allocWithZone(MEMORY[0x1E69DD020]);

      v21 = v13;

      *&v18[v19] = [v20 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
      v22 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_styler;
      type metadata accessor for DebugFormatStyler();
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *&v18[v22] = v23;
      *&v18[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_editor] = v16;
      v24 = &v18[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel];
      *v24 = v13;
      *(v24 + 1) = v15;
      v29.receiver = v18;
      v29.super_class = v17;
      v25 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
      v26 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
      [v26 setModalPresentationStyle_];
      v27 = [v26 popoverPresentationController];
      if (v27)
      {
        v28 = v27;
        [v27 setSourceView_];
      }

      [v26 setPreferredContentSize_];

      [v2 presentViewController:v26 animated:1 completion:0];
    }
  }
}

id sub_1D691A914()
{
  v71.receiver = v0;
  v71.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v71, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = sub_1D6919570([v1 setFrame_]);
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  [result safeAreaInsets];
  v15 = v14;

  sub_1D6919DD8();
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel];
  [v18 frame];
  [v12 setFrame_];

  [v18 frame];
  v19 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView;
  [*&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView] frame];
  CGRectGetMaxX(v73);
  sub_1D726325C();
  [v18 setFrame_];
  v20 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView];
  [v20 sizeThatFits_];
  v22 = v21;
  v24 = v23;
  [v18 bounds];
  [v20 setFrame_];
  [v18 bounds];
  [v1 setContentSize_];
  v25 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = result;
  [result safeAreaInsets];
  v28 = v27;

  [v1 contentOffset];
  v30 = v29;
  [v1 contentOffset];
  v32 = v31;
  [*&v0[v19] bounds];
  Width = CGRectGetWidth(v76);
  [v18 bounds];
  v34 = CGRectGetWidth(v77);
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v35 = result;
  v36 = v28 + v30;
  v37 = Width + v34 + 24.0;
  [result bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v78.origin.x = v39;
  v78.origin.y = v41;
  v78.size.width = v43;
  v78.size.height = v45;
  [v25 setFrame_];
  v46 = &v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v47 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80];
  v70[4] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64];
  v70[5] = v47;
  v48 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112];
  v70[6] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96];
  v70[7] = v48;
  v49 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16];
  v70[0] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v70[1] = v49;
  v50 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48];
  v70[2] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32];
  v70[3] = v50;
  if (sub_1D5DEA380(v70) == 1 || !*(v46 + 7))
  {
    v66 = sub_1D691968C();
    [v66 setHidden_];

    [v1 adjustedContentInset];
    v68 = -v67;
    [v1 adjustedContentInset];
    [v1 setContentOffset_];
    sub_1D691ADF0(v1);
    return sub_1D691ADF0(v1);
  }

  v51 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize + 8];
  v52 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize + 24];
  v53 = sub_1D691968C();
  [v53 setHidden_];

  v54 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView];
  [v1 contentOffset];
  v56 = v55;
  result = [v0 view];
  if (result)
  {
    v57 = result;
    [result bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v79.origin.x = v59;
    v79.origin.y = v61;
    v79.size.width = v63;
    v79.size.height = v65;
    [v54 setFrame_];

    return sub_1D691ADF0(v1);
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1D691ADF0(void *a1)
{
  v3 = sub_1D691968C();
  [*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView] frame];
  MEMORY[0x1DA6FA970]([a1 contentOffset]);
  [v3 setFrame_];

  v5 = sub_1D6919570(v4);
  v6 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView;
  [*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView] frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = result;
  [result safeAreaInsets];
  v18 = v17;

  v19 = [a1 contentOffset];
  MEMORY[0x1DA6FA970](v19, v18 + v20 + 8.0, v8, v10, v12, v14);
  [v5 setFrame_];

  v21 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel];
  [v21 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [*&v1[v6] frame];
  MaxX = CGRectGetMaxX(v42);
  MEMORY[0x1DA6FA970](MaxX + 8.0, v23, v25, v27, v29);
  [v21 setFrame_];
  v31 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView];
  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v32 = result;
  [result safeAreaInsets];
  v34 = v33;

  [a1 contentOffset];
  v36 = v34 + v35;
  [a1 contentOffset];
  v38 = v37;
  [v31 frame];
  v40 = v39;
  [v31 frame];

  return [v31 setFrame_];
}

id sub_1D691B090()
{
  v1 = &v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80];
  v41[4] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64];
  v41[5] = v2;
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112];
  v41[6] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96];
  v41[7] = v3;
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16];
  v41[0] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v41[1] = v4;
  v5 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48];
  v41[2] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32];
  v41[3] = v5;
  result = sub_1D5DEA380(v41);
  if (result != 1 && *(v1 + 7))
  {
    v7 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize + 24];
    v8 = sub_1D691968C();
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView];
    [v17 contentOffset];
    v19 = v18;
    [v17 scrollRectToVisible:0 animated:{v10, v12, v14, v16}];
    [v17 contentOffset];
    v21 = v20;
    result = [v0 view];
    if (result)
    {
      v22 = result;
      [result safeAreaInsets];
      v24 = v23;

      if (v21 + v24 < v19)
      {
        v19 = v21 + v24;
      }

      [v17 contentOffset];
      [v17 setContentOffset_];
      [v17 contentSize];
      v26 = v25;
      [v17 visibleSize];
      if (v27 < v26)
      {
        [v17 contentOffset];
        v29 = v28;
        [v17 adjustedContentInset];
        v31 = v30;
        [v17 contentSize];
        v33 = v32;
        [v17 visibleSize];
        v35 = v34;
        [v17 adjustedContentInset];
        v37 = -v36;
        [v17 visibleSize];
        v39 = v7 + v38 * -0.5;
        if (v39 < v37)
        {
          v39 = v37;
        }

        v40 = v31 + v33 - v35;
        if (v39 < v40)
        {
          v40 = v39;
        }

        [v17 setContentOffset_];
      }

      return sub_1D691ADF0(v17);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1D691B2D8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {

    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA6FB460](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = 0x3FF0000000000000;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform_];
    }

    while (v2 != v3);
  }
}

id sub_1D691B5B0()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

uint64_t sub_1D691B61C()
{
  v1 = [*v0 toolbarItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v3 = sub_1D726267C();

  return v3;
}

uint64_t sub_1D691B690()
{
  v1 = [*v0 navigationItem];
  v2 = [v1 leftBarButtonItems];

  if (!v2)
  {
    return 0;
  }

  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v3 = sub_1D726267C();

  return v3;
}

id sub_1D691B724(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  v23 = &type metadata for DebugFormatDebuggerSourceTheme.Cora;
  v24 = &off_1F51AAAC8;
  v8 = swift_allocObject();
  v22[0] = v8;
  v9 = a3[5];
  v8[5] = a3[4];
  v8[6] = v9;
  v8[7] = a3[6];
  v10 = a3[1];
  v8[1] = *a3;
  v8[2] = v10;
  v11 = a3[3];
  v8[3] = a3[2];
  v8[4] = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  sub_1D691C834(a3, v25);
  v13 = [v12 init];
  v14 = sub_1D6848714(a1, a2, a4 & 1);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    do
    {
      v20 = *(v16 - 1);
      v21 = *v16;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1DA6F9910](10, 0xE100000000000000);

      v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v25[3] = v17[3];
      v25[4] = v17[4];
      v25[5] = v17[5];
      v25[6] = v17[6];
      v25[0] = *v17;
      v25[1] = v17[1];
      v25[2] = v17[2];
      v18 = sub_1D691B8E0(v20, v21, v25);

      [v13 appendAttributedString_];

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v13;
}

unint64_t sub_1D691B8E0(unint64_t a1, unint64_t a2, _OWORD *a3)
{
  v126 = &type metadata for DebugFormatDebuggerSourceTheme.Cora;
  v127 = &off_1F51AAAC8;
  v6 = swift_allocObject();
  v125[0] = v6;
  v7 = a3[5];
  v6[5] = a3[4];
  v6[6] = v7;
  v6[7] = a3[6];
  v8 = a3[1];
  v6[1] = *a3;
  v6[2] = v8;
  v9 = a3[3];
  v6[3] = a3[2];
  v6[4] = v9;
  sub_1D691C834(a3, &v123);
  sub_1D6848CF8(a1, a2);
  v11 = v10;
  v109 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_40:

    __swift_destroy_boxed_opaque_existential_1(v125);
    return v109;
  }

  v108 = *MEMORY[0x1E69DB648];
  v107 = *MEMORY[0x1E69DB650];
  v13 = (v11 + 48);
  while (1)
  {
    v18 = *(v13 - 1);
    v110 = *(v13 - 2);
    v19 = *v13;
    v20 = __swift_project_boxed_opaque_existential_1(v125, v126);
    if (v19 > 2)
    {
      break;
    }

    if (v19)
    {
      if (v19 == 1)
      {
        v21 = v20[4];
        v22 = v20[5];
        v113[0] = v108;
        v23 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
        v113[1] = v22;
        v113[4] = v23;
        v114[0] = v107;
        v114[4] = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        v114[1] = v21;
        sub_1D5C09D34(0);
        v24 = sub_1D726412C();
        sub_1D5EA77BC(v110, v18, 1u);
        v25 = v21;
        v26 = v22;
        v27 = v108;
        v28 = v107;
        sub_1D691C890(v113, &v123, sub_1D5C09DD4);
        v29 = v123;
        result = sub_1D5BAA7D4(v123);
        if (v31)
        {
          goto LABEL_44;
        }

        *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v24[6] + 8 * result) = v29;
        result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
        v32 = v24[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_48;
        }

        v24[2] = v34;
        sub_1D691C890(v114, &v123, sub_1D5C09DD4);
        v35 = v123;
        result = sub_1D5BAA7D4(v123);
        if (v36)
        {
          goto LABEL_44;
        }

        *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v24[6] + 8 * result) = v35;
        result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
        v37 = v24[2];
        v33 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v33)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v80 = v20[10];
        v81 = v20[11];
        v115[0] = v108;
        v82 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
        v115[1] = v81;
        v115[4] = v82;
        v116[0] = v107;
        v116[4] = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        v116[1] = v80;
        sub_1D5C09D34(0);
        v24 = sub_1D726412C();
        sub_1D5EA77BC(v110, v18, 2u);
        v83 = v80;
        v84 = v81;
        v85 = v108;
        v86 = v107;
        sub_1D691C890(v115, &v123, sub_1D5C09DD4);
        v87 = v123;
        result = sub_1D5BAA7D4(v123);
        if (v88)
        {
          goto LABEL_46;
        }

        *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v24[6] + 8 * result) = v87;
        result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
        v89 = v24[2];
        v33 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v33)
        {
          goto LABEL_51;
        }

        v24[2] = v90;
        sub_1D691C890(v116, &v123, sub_1D5C09DD4);
        v91 = v123;
        result = sub_1D5BAA7D4(v123);
        if (v92)
        {
          goto LABEL_46;
        }

        *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v24[6] + 8 * result) = v91;
        result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
        v93 = v24[2];
        v33 = __OFADD__(v93, 1);
        v38 = v93 + 1;
        if (v33)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v52 = v20[2];
      v53 = v20[3];
      v111[0] = v108;
      v54 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
      v111[1] = v53;
      v111[4] = v54;
      v112[0] = v107;
      v112[4] = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      v112[1] = v52;
      sub_1D5C09D34(0);
      v24 = sub_1D726412C();
      sub_1D5EA77BC(v110, v18, 0);
      v55 = v52;
      v56 = v53;
      v57 = v108;
      v58 = v107;
      sub_1D691C890(v111, &v123, sub_1D5C09DD4);
      v59 = v123;
      result = sub_1D5BAA7D4(v123);
      if (v60)
      {
        goto LABEL_42;
      }

      *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v24[6] + 8 * result) = v59;
      result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
      v61 = v24[2];
      v33 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v33)
      {
        goto LABEL_47;
      }

      v24[2] = v62;
      sub_1D691C890(v112, &v123, sub_1D5C09DD4);
      v63 = v123;
      result = sub_1D5BAA7D4(v123);
      if (v64)
      {
        goto LABEL_42;
      }

      *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v24[6] + 8 * result) = v63;
      result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
      v65 = v24[2];
      v33 = __OFADD__(v65, 1);
      v38 = v65 + 1;
      if (v33)
      {
        goto LABEL_47;
      }
    }

LABEL_38:
    v24[2] = v38;
    sub_1D5C09DD4(0);
    swift_arrayDestroy();
    v13 += 24;
    v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v15 = sub_1D726203C();
    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v16 = sub_1D7261D2C();

    v17 = [v14 initWithString:v15 attributes:v16];

    [v109 appendAttributedString_];
    sub_1D691C8F8(v110, v18, v19);

    if (!--v12)
    {
      goto LABEL_40;
    }
  }

  if (v19 == 3)
  {
    v66 = v20[12];
    v67 = v20[13];
    v117[0] = v108;
    v68 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v117[1] = v67;
    v117[4] = v68;
    v118[0] = v107;
    v118[4] = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    v118[1] = v66;
    sub_1D5C09D34(0);
    v24 = sub_1D726412C();
    sub_1D5EA77BC(v110, v18, 3u);
    v69 = v66;
    v70 = v67;
    v71 = v108;
    v72 = v107;
    sub_1D691C890(v117, &v123, sub_1D5C09DD4);
    v73 = v123;
    result = sub_1D5BAA7D4(v123);
    if (v74)
    {
      goto LABEL_43;
    }

    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v24[6] + 8 * result) = v73;
    result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
    v75 = v24[2];
    v33 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v33)
    {
      goto LABEL_49;
    }

    v24[2] = v76;
    sub_1D691C890(v118, &v123, sub_1D5C09DD4);
    v77 = v123;
    result = sub_1D5BAA7D4(v123);
    if (v78)
    {
      goto LABEL_43;
    }

    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v24[6] + 8 * result) = v77;
    result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
    v79 = v24[2];
    v33 = __OFADD__(v79, 1);
    v38 = v79 + 1;
    if (v33)
    {
      goto LABEL_49;
    }

    goto LABEL_38;
  }

  if (v19 == 4)
  {
    v39 = v20[6];
    v40 = v20[7];
    v119[0] = v108;
    v119[4] = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v119[1] = v40;
    v120[0] = v107;
    v120[4] = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    v120[1] = v39;
    sub_1D5C09D34(0);
    v24 = sub_1D726412C();
    sub_1D5EA77BC(v110, v18, 4u);
    v41 = v39;
    v42 = v40;
    v43 = v108;
    v44 = v107;
    sub_1D691C890(v119, &v123, sub_1D5C09DD4);
    v45 = v123;
    result = sub_1D5BAA7D4(v123);
    if (v46)
    {
      goto LABEL_45;
    }

    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v24[6] + 8 * result) = v45;
    result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
    v47 = v24[2];
    v33 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (v33)
    {
      goto LABEL_50;
    }

    v24[2] = v48;
    sub_1D691C890(v120, &v123, sub_1D5C09DD4);
    v49 = v123;
    result = sub_1D5BAA7D4(v123);
    if (v50)
    {
      goto LABEL_45;
    }

    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v24[6] + 8 * result) = v49;
    result = sub_1D5B7C390(v124, (v24[7] + 32 * result));
    v51 = v24[2];
    v33 = __OFADD__(v51, 1);
    v38 = v51 + 1;
    if (v33)
    {
      goto LABEL_50;
    }

    goto LABEL_38;
  }

  v94 = v20[8];
  v95 = v20[9];
  v121[0] = v108;
  v121[4] = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v121[1] = v95;
  v122[0] = v107;
  v122[4] = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  v122[1] = v94;
  sub_1D5C09D34(0);
  v24 = sub_1D726412C();
  sub_1D5EA77BC(v110, v18, 5u);
  v96 = v94;
  v97 = v95;
  v98 = v108;
  v99 = v107;
  sub_1D691C890(v121, &v123, sub_1D5C09DD4);
  v100 = v123;
  result = sub_1D5BAA7D4(v123);
  if (v101)
  {
    goto LABEL_41;
  }

  *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(v24[6] + 8 * result) = v100;
  sub_1D5B7C390(v124, (v24[7] + 32 * result));
  v102 = v24[2];
  v33 = __OFADD__(v102, 1);
  v103 = v102 + 1;
  if (v33)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v24[2] = v103;
  sub_1D691C890(v122, &v123, sub_1D5C09DD4);
  v104 = v123;
  result = sub_1D5BAA7D4(v123);
  if ((v105 & 1) == 0)
  {
    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v24[6] + 8 * result) = v104;
    sub_1D5B7C390(v124, (v24[7] + 32 * result));
    v106 = v24[2];
    v33 = __OFADD__(v106, 1);
    v38 = v106 + 1;
    if (v33)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

id sub_1D691C480(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D691C680(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E69DB970];
  v8 = v5;
  v9 = [v6 monospacedSystemFontOfSize:14.0 weight:v7];
  v10 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = a3;
  v12 = v11;
  v13 = a3;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v16 = sub_1D7261D2C();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_1D691C680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D691C6E4(uint64_t a1, uint64_t a2)
{
  sub_1D691C680(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D691C778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D691C890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D691C8F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1D691C918(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatDebuggerSourceHighlight(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D691C974()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile);
  sub_1D607F0A4(v12);
  v2 = v12[5];
  v1[4] = v12[4];
  v1[5] = v2;
  v3 = v12[7];
  v1[6] = v12[6];
  v1[7] = v3;
  v4 = v12[1];
  *v1 = v12[0];
  v1[1] = v4;
  v5 = v12[3];
  v1[2] = v12[2];
  v1[3] = v5;
  *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceMetrics) = 0;
  v6 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView) = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeViewPadding) = 0x4020000000000000;
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D691CB40()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EDFFC628 = qword_1EC881F18;
  unk_1EDFFC630 = unk_1EC881F20;
}

uint64_t sub_1D691CBAC(void *a1)
{
  v3 = v1;
  sub_1D691E3C0(0, &qword_1EC88E300, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D691E30C();
  sub_1D7264B5C();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  sub_1D60311A0(&qword_1EC8828B8, MEMORY[0x1E69D6168]);
  sub_1D726443C();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1D5B9DFB4(0);
    sub_1D5B9DEDC(&qword_1EC8828C8, sub_1D5B9DFB4, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1D726443C();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    sub_1D5B9E0D8(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
    sub_1D691E360(&qword_1EC8828C0, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    sub_1D5B99B3C(0);
    sub_1D5B9DEDC(&qword_1EC8828E0, sub_1D5B99B3C, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v13 = v3[5];
    HIBYTE(v12) = 5;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D691CF34()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6449676174;
  v4 = 0x7364496D657469;
  if (v1 != 4)
  {
    v4 = 0x496E6F6973736573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657461446E656573;
  if (v1 != 1)
  {
    v5 = 1684957547;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D691CFDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D691F0D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D691D004(uint64_t a1)
{
  v2 = sub_1D691E30C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D691D040(uint64_t a1)
{
  v2 = sub_1D691E30C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D691D07C()
{
  if (qword_1EDF140A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFC628;

  return v0;
}

uint64_t sub_1D691D0E4(uint64_t a1)
{
  v2 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D691D130(uint64_t a1)
{
  v2 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D691D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1D691D1E0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D691D5E0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D691D23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D691D288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D691D2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D691D348()
{
  result = qword_1EC88E2E8;
  if (!qword_1EC88E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E2E8);
  }

  return result;
}

void sub_1D691D3A8(uint64_t a1)
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v3 >= 2)
  {
    sub_1D7263D4C();

    sub_1D725C4CC();
    sub_1D725C73C();

    if (v1)
    {
      MEMORY[0x1DA6F9910]();

      MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
      sub_1D725C4CC();
      sub_1D725C73C();

      MEMORY[0x1DA6F9910]();

      MEMORY[0x1DA6F9910](0x3D676174202CLL, 0xE600000000000000);
      MEMORY[0x1DA6F9910]();
      sub_1D5D25B88(v2, v3);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D7263D4C();

    sub_1D725C4CC();
    sub_1D725C73C();

    if (v1)
    {
      MEMORY[0x1DA6F9910]();

      MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
      sub_1D725C4CC();
      sub_1D725C73C();

      MEMORY[0x1DA6F9910]();

LABEL_8:
      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      return;
    }

    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t sub_1D691D5E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v88 = a1;
  v70[0] = a2;
  sub_1D691E3C0(0, &qword_1EC88E2F0, MEMORY[0x1E69E6F48]);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v82 = v70 - v4;
  sub_1D5BA2EA8(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v84 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v81 = v70 - v10;
  v76 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17450, &qword_1EDF17458, MEMORY[0x1E69D6200], sub_1D5B9E0D8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v78 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v75 = v70 - v16;
  sub_1D5BA2EA8(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v79 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v70 - v22;
  v24 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v70 - v31;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v24);
  v34 = v33;
  v35 = *(v33 - 8);
  v36 = *(v35 + 56);
  v87 = v36;
  v37 = v35 + 56;
  v85 = v32;
  v36(v32, 1, 1, v33);
  v86 = v28;
  v36(v28, 1, 1, v34);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v80 = sub_1D725C4BC();
  sub_1D5BA21B0(0);
  v39 = v38;
  v40 = *(*(v38 - 8) + 56);
  v40(v23, 1, 1, v38);
  v40(v79, 1, 1, v39);
  sub_1D5B99A0C(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4(0);
  v70[1] = v41;
  swift_allocObject();
  v77 = sub_1D725C4BC();
  v42 = v34;
  v73 = v34;
  v74 = v37;
  v43 = v34;
  v44 = v87;
  v87(v85, 1, 1, v43);
  v44(v86, 1, 1, v42);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v79 = sub_1D725C4BC();
  sub_1D5B9E0D8(0, &qword_1EDF17458, v76);
  v46 = v45;
  v47 = *(*(v45 - 8) + 56);
  v47(v75, 1, 1, v45);
  v47(v78, 1, 1, v46);
  sub_1D5B9E0D8(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E0D8(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  v49 = v48;
  swift_allocObject();
  v78 = sub_1D725C4BC();
  sub_1D5B9E4F4(0);
  v51 = v50;
  v52 = *(*(v50 - 8) + 56);
  v52(v81, 1, 1, v50);
  v52(v84, 1, 1, v51);
  sub_1D5B99AA0(0, &qword_1EDF173B8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C(0);
  v54 = v53;
  swift_allocObject();
  v84 = sub_1D725C4BC();
  v55 = v73;
  v56 = v87;
  v87(v85, 1, 1, v73);
  v56(v86, 1, 1, v55);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  sub_1D725C4BC();
  __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  sub_1D691E30C();
  v57 = v83;
  v58 = v82;
  sub_1D7264B0C();
  if (v57)
  {

    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    v86 = v54;
    v87 = v49;
    v89 = 0;
    v59 = sub_1D60311A0(&qword_1EC882880, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    v85 = v59;

    v60 = v90;
    v89 = 1;
    sub_1D5B9DEDC(&qword_1EC882890, sub_1D5B9DFB4, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    v83 = v60;

    v62 = v90;
    v89 = 2;
    sub_1D726431C();

    v63 = v90;
    v89 = 3;
    sub_1D691E360(&qword_1EC882888, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    v64 = v62;

    v65 = v90;
    v89 = 4;
    sub_1D5B9DEDC(&qword_1EC8828A8, sub_1D5B99B3C, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    v87 = v63;

    v66 = v90;
    v89 = 5;
    sub_1D726431C();
    v67 = v83;
    (*(v71 + 8))(v58, v72);

    v68 = v90;
    result = __swift_destroy_boxed_opaque_existential_1(v88);
    v69 = v70[0];
    *v70[0] = v67;
    v69[1] = v64;
    v69[2] = v87;
    v69[3] = v65;
    v69[4] = v66;
    v69[5] = v68;
  }

  return result;
}

unint64_t sub_1D691E30C()
{
  result = qword_1EC88E2F8;
  if (!qword_1EC88E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E2F8);
  }

  return result;
}

uint64_t sub_1D691E360(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9E0D8(255, &qword_1EDF17530, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D691E3C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D691E30C();
    v7 = a3(a1, &type metadata for FeedGroupTrackerEntity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D691E424(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v83 = a2;
  v84 = a3;
  v81 = a1;
  v85 = a4;
  sub_1D5BA2EA8(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v82 = &v72 - v6;
  sub_1D5BA2EA8(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v79 = &v72 - v12;
  v77 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17450, &qword_1EDF17458, MEMORY[0x1E69D6200], sub_1D5B9E0D8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v76 = &v72 - v18;
  sub_1D5BA2EA8(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v89 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v72 - v24;
  v26 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v72 - v33;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v26);
  v36 = v35;
  v37 = *(v35 - 8);
  v38 = *(v37 + 56);
  v86 = v34;
  v87 = v37 + 56;
  v38(v34, 1, 1, v35);
  v73 = v30;
  v38(v30, 1, 1, v36);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v90 = sub_1D725C4BC();
  sub_1D5BA21B0(0);
  v40 = v39;
  v41 = *(*(v39 - 8) + 56);
  v41(v25, 1, 1, v39);
  v41(v89, 1, 1, v40);
  sub_1D5B99A0C(0);
  swift_allocObject();

  sub_1D725C71C();
  sub_1D5B9DFB4(0);
  swift_allocObject();
  v88 = sub_1D725C4BC();
  v74 = v36;
  v75 = v38;
  v38(v86, 1, 1, v36);
  v42 = v73;
  v38(v73, 1, 1, v36);
  swift_allocObject();

  v43 = v42;
  sub_1D725C71C();
  swift_allocObject();
  v89 = sub_1D725C4BC();
  sub_1D5B9E0D8(0, &qword_1EDF17458, v77);
  v45 = v44;
  v46 = *(*(v44 - 8) + 56);
  v46(v76, 1, 1, v44);
  v46(v78, 1, 1, v45);
  sub_1D5B9E0D8(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  swift_allocObject();

  sub_1D725C71C();
  sub_1D5B9E0D8(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v78 = sub_1D725C4BC();
  sub_1D5B9E4F4(0);
  v48 = v47;
  v49 = *(*(v47 - 8) + 56);
  v49(v79, 1, 1, v47);
  v49(v80, 1, 1, v48);
  sub_1D5B99AA0(0, &qword_1EDF173B8, MEMORY[0x1E69D6208]);
  swift_allocObject();

  sub_1D725C71C();
  sub_1D5B99B3C(0);
  swift_allocObject();
  v80 = sub_1D725C4BC();
  v51 = v74;
  v50 = v75;
  v75(v86, 1, 1, v74);
  v50(v43, 1, 1, v51);
  swift_allocObject();

  sub_1D725C71C();
  swift_allocObject();
  v52 = sub_1D725C4BC();

  sub_1D725C4CC();
  v53 = v81;
  v54 = v81[1];
  v93 = *v81;
  v94 = v54;

  sub_1D725C74C();

  sub_1D725C4CC();
  v56 = type metadata accessor for FeedCursorTrackerGroup(0, v83, v84, v55);
  v57 = v56[10];
  v58 = sub_1D725891C();
  v59 = *(v58 - 8);
  v60 = v53 + v57;
  v61 = v82;
  (*(v59 + 16))(v82, v60, v58);
  (*(v59 + 56))(v61, 0, 1, v58);
  sub_1D725C74C();

  sub_1D725C4CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D726257C();
  v91 = v93;
  v92 = v94;
  sub_1D725C74C();

  v62 = v78;
  sub_1D725C4CC();
  v63 = (v53 + v56[11]);
  v64 = v63[1];
  v93 = *v63;
  v94 = v64;

  sub_1D725C74C();

  v65 = v80;
  sub_1D725C4CC();
  v93 = *(v53 + v56[12]);
  sub_1D5BA2EFC(0);
  swift_allocObject();

  v93 = sub_1D725C88C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v66 = (v53 + v56[13]);
  v67 = v66[1];
  v93 = *v66;
  v94 = v67;

  sub_1D725C74C();

  v68 = v89;

  v69 = v88;

  v70 = v90;

  v71 = v85;
  *v85 = v70;
  v71[1] = v69;
  v71[2] = v68;
  v71[3] = v62;
  v71[4] = v65;
  v71[5] = v52;
}

unint64_t sub_1D691EFCC()
{
  result = qword_1EC88E308;
  if (!qword_1EC88E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E308);
  }

  return result;
}

unint64_t sub_1D691F024()
{
  result = qword_1EC88E310;
  if (!qword_1EC88E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E310);
  }

  return result;
}

unint64_t sub_1D691F07C()
{
  result = qword_1EC88E318;
  if (!qword_1EC88E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E318);
  }

  return result;
}

uint64_t sub_1D691F0D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461446E656573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449676174 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7364496D657469 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

char *sub_1D691F2C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView_label;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v32.receiver = v2;
  v32.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v32, sel_initWithReuseIdentifier_, v6);

  v8 = OBJC_IVAR____TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView_label;
  v9 = *&v7[OBJC_IVAR____TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView_label];
  v10 = v7;
  [v9 setNumberOfLines_];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 contentView];
  [v11 addSubview_];

  v12 = objc_opt_self();
  sub_1D5E42B34();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7298B00;
  v14 = [*&v7[v8] topAnchor];
  v15 = [v10 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:16.0];
  *(v13 + 32) = v17;
  v18 = [*&v7[v8] leadingAnchor];
  v19 = [v10 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:16.0];
  *(v13 + 40) = v21;
  v22 = [*&v7[v8] trailingAnchor];
  v23 = [v10 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-16.0];
  *(v13 + 48) = v25;
  v26 = [*&v7[v8] bottomAnchor];
  v27 = [v10 contentView];

  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:-16.0];

  *(v13 + 56) = v29;
  sub_1D60D0DF4();
  v30 = sub_1D726265C();

  [v12 activateConstraints_];

  return v10;
}

uint64_t sub_1D691F76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C44A68(0, &unk_1EDF3B920, sub_1D5C44878, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D691F858(uint64_t a1)
{
  if (!qword_1EC897670)
  {
    sub_1D725ABEC();
    sub_1D5B81B04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC897670);
    }
  }
}

uint64_t type metadata accessor for DebugFormatCacheFile(uint64_t a1)
{
  result = qword_1EC88E328;
  if (!qword_1EC88E328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D691F940(uint64_t a1)
{
  sub_1D691F9F4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DebugFormatCacheFileMetadata(319);
    if (v2 <= 0x3F)
    {
      sub_1D60CF7A4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D691F9F4()
{
  if (!qword_1EC88E338)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88E338);
    }
  }
}

uint64_t sub_1D691FA44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage(0);
  MEMORY[0x1EEE9AC00](v72, v3);
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725BD1C();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CF7A4(0);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DebugFormatCacheFileMetadata(0);
  MEMORY[0x1EEE9AC00](v74, v12);
  v76 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6920B6C(0, &qword_1EC88E340, MEMORY[0x1E69E6F48]);
  v15 = v14;
  v75 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v59 - v17;
  v19 = type metadata accessor for DebugFormatCacheFile(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69208D8();
  v23 = v77;
  sub_1D7264B0C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v11;
  v77 = v19;
  v25 = v22;
  LOBYTE(v78) = 3;
  sub_1D6920C78(&qword_1EC88E350, type metadata accessor for DebugFormatCacheFileMetadata, &unk_1D72AF3D0);
  sub_1D726431C();
  v26 = v15;
  v27 = v18;
  v29 = v77;
  v30 = *(v77 + 28);
  v31 = v26;
  v32 = v27;
  sub_1D69209D4(v76, &v22[v30], type metadata accessor for DebugFormatCacheFileMetadata);
  v82 = 0;
  sub_1D692092C();
  sub_1D726431C();
  v33 = v79;
  v34 = v80;
  v35 = v81;
  *v22 = v78;
  *(v22 + 1) = v33;
  v76 = v33;
  *(v22 + 2) = v34;
  v22[24] = v35;
  LOBYTE(v78) = 1;
  v36 = sub_1D72642BC();
  v74 = v30;
  *(v22 + 4) = v36;
  *(v22 + 5) = v37;
  v82 = 2;
  sub_1D6920980();
  v66 = 0;
  sub_1D726427C();
  v65 = v78;
  *(v22 + 6) = v78;
  LOBYTE(v78) = 4;
  sub_1D6920C78(&qword_1EC88E368, sub_1D60CF7A4, &unk_1D7343688);
  sub_1D726431C();
  v64 = v32;
  v73 = v31;
  sub_1D69209D4(v24, &v22[*(v29 + 32)], sub_1D60CF7A4);
  if (v65)
  {
    v41 = v65 + *(*v65 + *MEMORY[0x1E69E6B68] + 16);
    swift_beginAccess();
    v42 = *(v72 + 32);
    v44 = v68;
    v43 = v69;
    v45 = *(v68 + 16);
    v61 = v41;
    v62 = v45;
    v46 = v41 + v42;
    v47 = v67;
    v63 = v68 + 16;
    v45(v67, v46, v69);
    v48 = qword_1EC87DD08;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v43, qword_1EC9BADE0);
    sub_1D6920C78(&qword_1EDF178B8, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
    v60 = v49;
    v50 = v47;
    v51 = sub_1D7261FBC();
    (*(v44 + 8))(v50, v43);
    v52 = v70;
    if ((v51 & 1) == 0)
    {
      v71 = type metadata accessor for DebugFormatManagerError(0);
      sub_1D6920C78(&qword_1EC88E370, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      v54 = v53;
      sub_1D6920A3C(0);
      v68 = *(v55 + 48);
      sub_1D6920AA4(v61, v52, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
      v56 = v62;
      v62(v54, v52 + *(v72 + 32), v43);
      sub_1D6920B0C(v52, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
      v56(v54 + v68, v60, v43);
      v57 = v25;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v75 + 8))(v64, v73);
      v58 = v77;
      v38 = v66;
      __swift_destroy_boxed_opaque_existential_1(a1);

      if (!v38)
      {
      }

      sub_1D6920B0C(&v57[v74], type metadata accessor for DebugFormatCacheFileMetadata);
      v39 = sub_1D60CF7A4;
      v40 = &v57[*(v58 + 32)];
      return sub_1D6920B0C(v40, v39);
    }

    (*(v75 + 8))(v64, v73);
  }

  else
  {
    (*(v75 + 8))(v64, v73);
  }

  sub_1D6920AA4(v22, v71, type metadata accessor for DebugFormatCacheFile);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39 = type metadata accessor for DebugFormatCacheFile;
  v40 = v22;
  return sub_1D6920B0C(v40, v39);
}

uint64_t sub_1D69203B0(void *a1, __n128 a2)
{
  v4 = v2;
  sub_1D6920B6C(0, &qword_1EC88E380, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69208D8();
  sub_1D7264B5C();
  v12 = v4[1];
  v13 = v4[2];
  v14 = *(v4 + 24);
  v18 = *v4;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v17 = 0;
  sub_1D6920BD0();
  sub_1D726443C();
  if (!v3)
  {
    LOBYTE(v18) = 1;
    sub_1D72643FC();
    v18 = v4[6];
    v17 = 2;
    sub_1D6920C24();
    sub_1D72643BC();
    type metadata accessor for DebugFormatCacheFile(0);
    LOBYTE(v18) = 3;
    type metadata accessor for DebugFormatCacheFileMetadata(0);
    sub_1D6920C78(&qword_1EC88E398, type metadata accessor for DebugFormatCacheFileMetadata, &unk_1D72AF3A8);
    sub_1D726443C();
    LOBYTE(v18) = 4;
    sub_1D60CF7A4(0);
    sub_1D6920C78(&qword_1EC88E3A0, sub_1D60CF7A4, &unk_1D7343660);
    sub_1D726443C();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1D6920680()
{
  v1 = *v0;
  v2 = 0x6C69466775626564;
  v3 = 0x4464657669726564;
  v4 = 0x617461646174656DLL;
  if (v1 != 3)
  {
    v4 = 0x746C75736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D692072C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6920DD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6920754(uint64_t a1)
{
  v2 = sub_1D69208D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6920790(uint64_t a1)
{
  v2 = sub_1D69208D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6920800(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v4)
  {
    return 0;
  }

  if ((v3 ^ v5))
  {
    return 0;
  }

  type metadata accessor for DebugFormatCacheFile(0);
  if ((sub_1D725BCBC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DebugFormatCacheFileMetadata(0);

  return sub_1D670933C();
}

unint64_t sub_1D69208D8()
{
  result = qword_1EC88E348;
  if (!qword_1EC88E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E348);
  }

  return result;
}

unint64_t sub_1D692092C()
{
  result = qword_1EC88E358;
  if (!qword_1EC88E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E358);
  }

  return result;
}

unint64_t sub_1D6920980()
{
  result = qword_1EC88E360;
  if (!qword_1EC88E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E360);
  }

  return result;
}

uint64_t sub_1D69209D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6920A3C(uint64_t a1)
{
  if (!qword_1EC88E378)
  {
    sub_1D725BD1C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88E378);
    }
  }
}

uint64_t sub_1D6920AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6920B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6920B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69208D8();
    v7 = a3(a1, &type metadata for DebugFormatCacheFile.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6920BD0()
{
  result = qword_1EC88E388;
  if (!qword_1EC88E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E388);
  }

  return result;
}

unint64_t sub_1D6920C24()
{
  result = qword_1EC88E390;
  if (!qword_1EC88E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E390);
  }

  return result;
}

uint64_t sub_1D6920C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6920CD4()
{
  result = qword_1EC88E3A8;
  if (!qword_1EC88E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3A8);
  }

  return result;
}

unint64_t sub_1D6920D2C()
{
  result = qword_1EC88E3B0;
  if (!qword_1EC88E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3B0);
  }

  return result;
}

unint64_t sub_1D6920D84()
{
  result = qword_1EC88E3B8;
  if (!qword_1EC88E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3B8);
  }

  return result;
}

uint64_t sub_1D6920DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69466775626564 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73DC1A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4464657669726564 && a2 == 0xEF656C6946617461 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D6920F9C(uint64_t a1)
{
  sub_1D5EA74B8(0);
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v44 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, v7, 0);
  v8 = v44;
  v9 = a1 + 56;
  result = sub_1D7263B7C();
  v11 = result;
  v12 = 0;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1;
  v39 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v41 = v12;
    v42 = v15;
    v16 = (*(a1 + 48) + 16 * v11);
    v43 = v8;
    v18 = *v16;
    v17 = v16[1];
    v19 = type metadata accessor for FormatInspectionItem(0);
    v20 = &v6[*(v19 + 24)];
    *v20 = 0;
    *(v20 + 1) = 0xE000000000000000;
    v21 = v6;
    v22 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v23 = *(*(v22 - 8) + 56);
    v24 = v22;
    v6 = v21;
    v23(v20, 0, 1, v24);
    *v21 = v18;
    *(v21 + 1) = v17;
    v8 = v43;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v25 = &v21[*(v19 + 28)];
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = -1;
    (*(*(v19 - 8) + 56))(v21, 0, 1, v19);
    v44 = v8;
    v27 = *(v8 + 16);
    v26 = *(v8 + 24);

    if (v27 >= v26 >> 1)
    {
      sub_1D69972A4((v26 > 1), v27 + 1, 1);
      v8 = v44;
    }

    *(v8 + 16) = v27 + 1;
    result = sub_1D5CAD7EC(v21, v8 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v27, sub_1D5EA74B8);
    a1 = v38;
    v9 = v39;
    v13 = 1 << *(v38 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v28 = *(v39 + 8 * v14);
    if ((v28 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v42 != *(v38 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v11 & 0x3F));
    if (v29)
    {
      v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v14 << 6;
      v31 = v14 + 1;
      v32 = (v36 + 8 * v14);
      while (v31 < (v13 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1D5C86234(v11, v42, 0);
          v13 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1D5C86234(v11, v42, 0);
    }

LABEL_4:
    v12 = v41 + 1;
    v11 = v13;
    if (v41 + 1 == v37)
    {
      return v8;
    }
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
  return result;
}

uint64_t sub_1D692133C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a3;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D7257B5C();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v13);
  v75 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v59 - v17;
  sub_1D604FF7C(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D7257C7C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v72 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2[1];
  if (v27)
  {
    v68 = a4;
    v69 = v18;
    v70 = v12;
    v71 = a5;
    v28 = *a2;
    v29 = a2[2];
    v30 = a2[4];
    v31 = a2[5];
    v32 = a2[3];
    swift_unknownObjectRetain();

    sub_1D7257BCC();
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_1D5F8BBC8(v28, v27, v29, v32, v30, v31);
      sub_1D5B6F20C(v22, sub_1D604FF7C);
      v33 = sub_1D72585BC();
      return (*(*(v33 - 8) + 16))(v71, a1, v33);
    }

    else
    {
      v66 = v31;
      v67 = v30;
      v60 = a1;
      (*(v24 + 32))(v72, v22, v23);
      v37 = sub_1D7257B6C();
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = MEMORY[0x1E69E7CC0];
      }

      v39 = v69;
      sub_1D7257B2C();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v28;
      v63 = v27;
      v64 = v24;
      v61 = v32;
      v62 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1D698BCB0(0, *(v38 + 2) + 1, 1, v38);
      }

      v43 = *(v38 + 2);
      v42 = *(v38 + 3);
      v44 = v67;
      v65 = v23;
      if (v43 >= v42 >> 1)
      {
        v38 = sub_1D698BCB0((v42 > 1), v43 + 1, 1, v38);
      }

      *(v38 + 2) = v43 + 1;
      v45 = v74 + 32;
      v46 = *(v74 + 32);
      v74 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v73 = *(v45 + 40);
      v47 = v46;
      v46(&v38[v74 + v73 * v43], v39, v76);
      v48 = v66;
      v49 = *(v66 + 16);
      if (v49)
      {
        v69 = v41;

        v50 = v48 + 56;
        do
        {

          sub_1D7257B2C();

          v52 = *(v38 + 2);
          v51 = *(v38 + 3);
          if (v52 >= v51 >> 1)
          {
            v38 = sub_1D698BCB0((v51 > 1), v52 + 1, 1, v38);
          }

          *(v38 + 2) = v52 + 1;
          v47(&v38[v74 + v52 * v73], v75, v76);
          v50 += 32;
          --v49;
        }

        while (v49);
        v48 = v66;

        v53 = v71;
        v44 = v67;
        v41 = v69;
      }

      else
      {
        v53 = v71;
      }

      v54 = v72;
      sub_1D7257B7C();
      v55 = v70;
      sub_1D7257BDC();
      sub_1D5F8BBC8(v41, v63, v62, v61, v44, v48);
      (*(v64 + 8))(v54, v65);
      v56 = sub_1D72585BC();
      v57 = *(v56 - 8);
      v58 = *(v57 + 48);
      if (v58(v55, 1, v56) == 1)
      {
        (*(v57 + 16))(v53, v60, v56);
        result = v58(v55, 1, v56);
        if (result != 1)
        {
          return sub_1D5B6F20C(v55, sub_1D5B4D3E0);
        }
      }

      else
      {
        return (*(v57 + 32))(v53, v55, v56);
      }
    }
  }

  else
  {
    v35 = sub_1D72585BC();
    v36 = *(*(v35 - 8) + 16);

    return v36(a5, a1, v35);
  }

  return result;
}

uint64_t sub_1D69219B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t *a8@<X8>)
{
  v79 = a6;
  v80 = a3;
  v81 = a8;
  v82 = a4;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v74 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D725895C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a7;
  sub_1D725894C();
  v26 = sub_1D725893C();
  v77 = v27;
  v78 = v26;
  (*(v21 + 8))(v24, v20);
  if (a1)
  {
    v76 = [a1 asSports];
  }

  else
  {
    v76 = 0;
  }

  LOBYTE(v84) = v25;
  v75 = sub_1D69229B4(a1, a5, &v84);

  v84 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    sub_1D5B6F20C(v15, sub_1D5B4D3E0);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v80;
    if (!a2)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  swift_getObjectType();
  v83 = v25;
  sub_1D6924500(&v83, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D5B6F20C(v15, sub_1D5B4D3E0);
  }

  else
  {
    v30 = v74;
    (*(v17 + 32))(v74, v15, v16);
    if (((1 << v25) & 0xF3) == 0)
    {
      if (v25 == 2)
      {
        v73 = sub_1D72583DC();
        v63 = v62;
        v28 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v65 = *(v28 + 2);
        v64 = *(v28 + 3);
        if (v65 >= v64 >> 1)
        {
          v28 = sub_1D698CCE4((v64 > 1), v65 + 1, 1, v28);
        }

        (*(v17 + 8))(v74, v16);
        *(v28 + 2) = v65 + 1;
        v66 = &v28[32 * v65];
        v67 = 0x676E69646E617473;
        v68 = 0xEB000000006C7255;
      }

      else
      {
        v73 = sub_1D72583DC();
        v63 = v69;
        v28 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v71 = *(v28 + 2);
        v70 = *(v28 + 3);
        if (v71 >= v70 >> 1)
        {
          v28 = sub_1D698CCE4((v70 > 1), v71 + 1, 1, v28);
        }

        (*(v17 + 8))(v74, v16);
        *(v28 + 2) = v71 + 1;
        v66 = &v28[32 * v71];
        v67 = 0x5574656B63617262;
        v68 = 0xEA00000000006C72;
      }

      *(v66 + 4) = v67;
      *(v66 + 5) = v68;
      *(v66 + 6) = v73;
      *(v66 + 7) = v63;
      v84 = v28;
      goto LABEL_12;
    }

    (*(v17 + 8))(v30, v16);
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v31 = [a1 asSports];
  v29 = v80;
  if (v31)
  {
    v32 = [v31 UMCCanonicalID];
    if (!v32)
    {
      swift_unknownObjectRelease();
      if (!a2)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v33 = v32;
    v34 = sub_1D726207C();
    v36 = v35;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1D698CCE4(0, *(v28 + 2) + 1, 1, v28);
    }

    v38 = *(v28 + 2);
    v37 = *(v28 + 3);
    if (v38 >= v37 >> 1)
    {
      v28 = sub_1D698CCE4((v37 > 1), v38 + 1, 1, v28);
    }

    swift_unknownObjectRelease();
    *(v28 + 2) = v38 + 1;
    v39 = &v28[32 * v38];
    *(v39 + 4) = 0x7463656A627573;
    *(v39 + 5) = 0xE700000000000000;
    *(v39 + 6) = v34;
    *(v39 + 7) = v36;
    v84 = v28;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_20:
  v40 = [swift_unknownObjectRetain() UMCCanonicalID];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1D726207C();
    v44 = v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1D698CCE4(0, *(v28 + 2) + 1, 1, v28);
    }

    v46 = *(v28 + 2);
    v45 = *(v28 + 3);
    if (v46 >= v45 >> 1)
    {
      v28 = sub_1D698CCE4((v45 > 1), v46 + 1, 1, v28);
    }

    swift_unknownObjectRelease();
    *(v28 + 2) = v46 + 1;
    v47 = &v28[32 * v46];
    *(v47 + 4) = 0x65756761656CLL;
    *(v47 + 5) = 0xE600000000000000;
    *(v47 + 6) = v42;
    *(v47 + 7) = v44;
    v84 = v28;
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_27:
  if (v29)
  {
    v48 = [swift_unknownObjectRetain() UMCCanonicalID];
    if (v48)
    {
      v49 = v48;
      v50 = sub_1D726207C();
      v52 = v51;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1D698CCE4(0, *(v28 + 2) + 1, 1, v28);
      }

      v54 = *(v28 + 2);
      v53 = *(v28 + 3);
      if (v54 >= v53 >> 1)
      {
        v28 = sub_1D698CCE4((v53 > 1), v54 + 1, 1, v28);
      }

      swift_unknownObjectRelease();
      *(v28 + 2) = v54 + 1;
      v55 = &v28[32 * v54];
      strcpy(v55 + 32, "championship");
      v55[45] = 0;
      *(v55 + 23) = -5120;
      *(v55 + 6) = v50;
      *(v55 + 7) = v52;
      v84 = v28;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1D6924AC8(0, &unk_1EDF01EA8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  *(inited + 32) = 0x756F724764656566;
  *(inited + 40) = 0xE900000000000070;
  *(inited + 48) = 0x64657461727563;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000001D73CAA10;
  *(inited + 80) = 0x746C7561666564;
  *(inited + 88) = 0xE700000000000000;
  sub_1D6987B44(inited);
  sub_1D6987B44(v79);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v58 = v84;
  v59 = v81;
  v60 = v77;
  *v81 = v78;
  v59[1] = v60;
  v61 = v82;
  v59[2] = v76;
  v59[3] = v61;
  v59[4] = v75;
  v59[5] = v58;
  return result;
}

uint64_t SportsDataVisualizationConfig.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsDataVisualizationConfig.init(backingTag:leagueTag:championshipTag:embedConfig:groupType:feedConfiguration:embedType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t *a9@<X8>)
{
  v81 = a5;
  v82 = a6;
  v84 = a3;
  v85 = a2;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D72585BC();
  v79 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v78 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a4;
  v22 = a4[1];
  v23 = a4[3];
  v80 = a4[2];
  v24 = a4[4];
  v25 = *a8;
  v88 = v21;
  v89 = v22;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v83 = a7;
  v26 = FCFeedDescriptorConfiguration.description.getter(a7);
  MEMORY[0x1DA6F9910](v26);

  v27 = v89;
  *a9 = v88;
  a9[1] = v27;
  swift_getObjectType();
  a9[2] = [a1 asSports];
  a9[3] = v24;
  LOBYTE(v88) = v25;

  swift_unknownObjectRetain();

  v28 = sub_1D69229B4(a1, v23, &v88);

  v86 = a9;
  a9[4] = v28;

  v88 = MEMORY[0x1E69E7CC0];
  v87 = v25;
  v29 = a1;
  v30 = v18;
  v31 = v79;
  sub_1D6924500(&v87, v17);
  if ((*(v31 + 48))(v17, 1, v30) == 1)
  {
    sub_1D5B6F20C(v17, sub_1D5B4D3E0);
    v32 = MEMORY[0x1E69E7CC0];
    v34 = v84;
    v33 = v85;
  }

  else
  {
    v35 = v78;
    (*(v31 + 32))(v78, v17, v30);
    v34 = v84;
    if (((1 << v25) & 0xF3) != 0)
    {
      (*(v31 + 8))(v35, v30);
      v32 = MEMORY[0x1E69E7CC0];
      v33 = v85;
    }

    else
    {
      v36 = v35;
      if (v25 == 2)
      {
        v77 = sub_1D72583DC();
        v38 = v37;
        v32 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v40 = *(v32 + 2);
        v39 = *(v32 + 3);
        if (v40 >= v39 >> 1)
        {
          v32 = sub_1D698CCE4((v39 > 1), v40 + 1, 1, v32);
        }

        v33 = v85;
        (*(v31 + 8))(v36, v30);
        *(v32 + 2) = v40 + 1;
        v41 = &v32[32 * v40];
        v42 = 0x676E69646E617473;
        v43 = 0xEB000000006C7255;
      }

      else
      {
        v77 = sub_1D72583DC();
        v38 = v44;
        v32 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v46 = *(v32 + 2);
        v45 = *(v32 + 3);
        if (v46 >= v45 >> 1)
        {
          v32 = sub_1D698CCE4((v45 > 1), v46 + 1, 1, v32);
        }

        v33 = v85;
        (*(v31 + 8))(v36, v30);
        *(v32 + 2) = v46 + 1;
        v41 = &v32[32 * v46];
        v42 = 0x5574656B63617262;
        v43 = 0xEA00000000006C72;
      }

      *(v41 + 4) = v42;
      *(v41 + 5) = v43;
      *(v41 + 6) = v77;
      *(v41 + 7) = v38;
      v88 = v32;
    }
  }

  v47 = [v29 asSports];
  if (v47)
  {
    v48 = [v47 UMCCanonicalID];
    if (!v48)
    {
      swift_unknownObjectRelease();
      if (!v33)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    v49 = v48;
    v50 = sub_1D726207C();
    v52 = v51;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1D698CCE4(0, *(v32 + 2) + 1, 1, v32);
    }

    v54 = *(v32 + 2);
    v53 = *(v32 + 3);
    if (v54 >= v53 >> 1)
    {
      v32 = sub_1D698CCE4((v53 > 1), v54 + 1, 1, v32);
    }

    swift_unknownObjectRelease();
    *(v32 + 2) = v54 + 1;
    v55 = &v32[32 * v54];
    *(v55 + 4) = 0x7463656A627573;
    *(v55 + 5) = 0xE700000000000000;
    *(v55 + 6) = v50;
    *(v55 + 7) = v52;
    v88 = v32;
  }

  if (!v33)
  {
    goto LABEL_30;
  }

LABEL_21:
  v56 = [swift_unknownObjectRetain() UMCCanonicalID];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1D726207C();
    v60 = v59;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1D698CCE4(0, *(v32 + 2) + 1, 1, v32);
    }

    v62 = *(v32 + 2);
    v61 = *(v32 + 3);
    if (v62 >= v61 >> 1)
    {
      v32 = sub_1D698CCE4((v61 > 1), v62 + 1, 1, v32);
    }

    swift_unknownObjectRelease();
    *(v32 + 2) = v62 + 1;
    v63 = &v32[32 * v62];
    *(v63 + 4) = 0x65756761656CLL;
    *(v63 + 5) = 0xE600000000000000;
    *(v63 + 6) = v58;
    *(v63 + 7) = v60;
    v88 = v32;
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_30:
  if (v34)
  {
    v64 = [swift_unknownObjectRetain() UMCCanonicalID];
    if (v64)
    {
      v65 = v64;
      v66 = sub_1D726207C();
      v68 = v67;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1D698CCE4(0, *(v32 + 2) + 1, 1, v32);
      }

      v70 = *(v32 + 2);
      v69 = *(v32 + 3);
      if (v70 >= v69 >> 1)
      {
        v32 = sub_1D698CCE4((v69 > 1), v70 + 1, 1, v32);
      }

      swift_unknownObjectRelease();
      *(v32 + 2) = v70 + 1;
      v71 = &v32[32 * v70];
      strcpy(v71 + 32, "championship");
      v71[45] = 0;
      *(v71 + 23) = -5120;
      *(v71 + 6) = v66;
      *(v71 + 7) = v68;
      v88 = v32;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1D6924AC8(0, &unk_1EDF01EA8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  *(inited + 32) = 0x756F724764656566;
  *(inited + 40) = 0xE900000000000070;
  v73 = v82;
  *(inited + 48) = v81;
  *(inited + 56) = v73;
  v74 = FCFeedDescriptorConfiguration.description.getter(v83);
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000001D73CAA10;
  *(inited + 80) = v74;
  *(inited + 88) = v75;
  sub_1D6987B44(inited);
  sub_1D6987B44(v80);
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v86[5] = v88;
  return result;
}