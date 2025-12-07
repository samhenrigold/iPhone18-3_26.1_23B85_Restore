double sub_1D6CC3DD4(uint64_t a1, __n128 a2)
{
  sub_1D6CC4A44(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D725B31C();

  v11 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
  swift_beginAccess();
  sub_1D6CC4EB8(a1 + v11, v6, sub_1D6CC4A44);
  sub_1D6CBFFE0(v10, v6);
  sub_1D6CC4B10(v6, sub_1D6CC4A44);
  sub_1D6CC4B10(v10, sub_1D6CC4A78);
  return result;
}

void sub_1D6CC3FA8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 8))(v8, v9);
  v10 = sub_1D5D50ED0();
  v12 = v11;
  sub_1D6CC4B10(v7, type metadata accessor for FeedGroupItem);
  *a2 = v10;
  a2[1] = v12;
}

uint64_t sub_1D6CC4088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v38 = a3;
  v36 = a2;
  v7 = type metadata accessor for FormatDebuggerContext(0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  v41 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v34 - v20;
  sub_1D6CC4EB8(a1, &v34 - v20, type metadata accessor for FormatDebuggerCallStackFrame);
  sub_1D6CC4EB8(v36, v17, type metadata accessor for FormatDebuggerCallStackFrame);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v35;
  sub_1D6CC4EB8(v40, v35, type metadata accessor for FormatDebuggerContext);
  sub_1D6CC4EB8(a1, v13, type metadata accessor for FormatDebuggerCallStackFrame);
  v24 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v25 = (v8 + *(v37 + 80) + v24) & ~*(v37 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  sub_1D6CC4E30(v23, v26 + v24, type metadata accessor for FormatDebuggerContext);
  sub_1D6CC4E30(v13, v26 + v25, type metadata accessor for FormatDebuggerCallStackFrame);
  type metadata accessor for DebugFormatDebuggerCallStackEntry(0);
  v27 = swift_allocObject();
  sub_1D6CC4E30(v21, v27 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_callStackFrame, type metadata accessor for FormatDebuggerCallStackFrame);
  sub_1D6CC4E30(v41, v27 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_selectedCallStackFrame, type metadata accessor for FormatDebuggerCallStackFrame);
  v28 = (v27 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_onSelectBlock);
  *v28 = sub_1D6CC4F20;
  v28[1] = v26;
  v29 = type metadata accessor for FormatInspectionItem(0);
  v30 = *(v29 + 24);
  *(a5 + v30) = v27;
  v31 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v31 - 8) + 56))(a5 + v30, 0, 1, v31);
  *a5 = xmmword_1D72E27B0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v32 = a5 + *(v29 + 28);
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = -1;
  return (*(*(v29 - 8) + 56))(a5, 0, 1, v29);
}

double sub_1D6CC4458(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1D6CC4A44(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_1D6CC4EB8(a2, v13, type metadata accessor for FormatDebuggerContext);
    v17 = type metadata accessor for FormatDebuggerContext(0);
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    sub_1D6CC4EB8(a3, v9, type metadata accessor for FormatDebuggerCallStackFrame);
    v18 = type metadata accessor for FormatDebuggerCallStackFrame(0);
    (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
    sub_1D6CBFFE0(v13, v9);

    sub_1D6CC4B10(v9, sub_1D6CC4A44);
    sub_1D6CC4B10(v13, sub_1D6CC4A78);
  }

  return result;
}

uint64_t sub_1D6CC4650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatDebuggerWorkspaceStackFrame(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v20 - v12;
  sub_1D6CC4EB8(a1, v20 - v12, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  sub_1D6CC4EB8(a2, v9, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry(0);
  v14 = swift_allocObject();
  sub_1D6CC4E30(v13, v14 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_workspaceFrame, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  sub_1D6CC4E30(v9, v14 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_selectedWorkspaceFrame, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  v15 = type metadata accessor for FormatInspectionItem(0);
  v16 = *(v15 + 24);
  *(a3 + v16) = v14;
  v17 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
  *a3 = xmmword_1D72E27B0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v18 = a3 + *(v15 + 28);
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = -1;
  return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
}

double sub_1D6CC4888()
{

  sub_1D6CC4B10(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame, sub_1D6CC4A44);
  return result;
}

uint64_t type metadata accessor for DebugFormatDebuggerViewController(uint64_t a1)
{
  result = qword_1EC894C80;
  if (!qword_1EC894C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6CC4998(uint64_t a1, __n128 a2)
{
  sub_1D6CC4A44(319);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D6CC4AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6CC4B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6CC4BD8(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4A44(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CC4C3C(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4AAC(0, &unk_1EC890C00, type metadata accessor for FormatInspectionFeedGroupItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CC4CF4(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4AAC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6CC4D88()
{
  result = qword_1EC894C98;
  if (!qword_1EC894C98)
  {
    sub_1D6CC4AAC(255, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C98);
  }

  return result;
}

void sub_1D6CC4E10(id a1)
{
  if (a1 >= 4)
  {
  }
}

id sub_1D6CC4E20(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D6CC4E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CC4EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D6CC4F20()
{
  v1 = *(type metadata accessor for FormatDebuggerContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FormatDebuggerCallStackFrame(0) - 8);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D6CC4458(v6, v0 + v2, v7, v5);
}

id CoverChannelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CoverChannelView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_moreActionsButton;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for CoverViewActionButton()) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_followButton;
  *&v5[v12] = [objc_allocWithZone(type metadata accessor for CoverViewFollowSwitch(0)) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_titleLabel;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage;
  *&v5[v14] = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v15 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_accessoryLabel;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D6CC5344(0);
  *&v5[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_debugButton] = sub_1D725A80C();
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_titleLabel];
  v18 = v16;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage;
  [v18 addSubview_];
  [v18 addSubview_];
  [v18 addSubview_];
  [v18 addSubview_];
  [*&v18[v19] setAccessibilityIgnoresInvertColors_];
  v20 = *MEMORY[0x1E69DDA38];
  v21 = [v18 accessibilityTraits];
  if ((v20 & ~v21) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  [v18 setAccessibilityTraits_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D725A7FC();

  return v18;
}

void sub_1D6CC5344(uint64_t a1)
{
  if (!qword_1EDF3BDD8)
  {
    type metadata accessor for DebugButton();
    v1 = sub_1D725A81C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BDD8);
    }
  }
}

id CoverChannelView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CoverChannelView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CoverChannelView.prepareForReuse()()
{
  v1 = v0;
  [v0 setAccessibilityCustomActions_];
  [v0 setAccessibilityLabel_];
  [v0 setAccessibilityValue_];
  sub_1D725A7CC();
  if (v5)
  {
    v2 = sub_1D725F64C();
  }

  v3 = *(*&v1[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_followButton] + OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_onTap);

  v4 = *(*&v1[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_moreActionsButton] + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_onTap);
}

void sub_1D6CC5620()
{
  sub_1D5BBB2F4(&qword_1EDF30BF0, &protocol conformance descriptor for CoverChannelView);

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed16CoverChannelViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_moreActionsButton;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CoverViewActionButton()) initWithFrame_];
  v2 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_followButton;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for CoverViewFollowSwitch(0)) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage;
  *(v0 + v4) = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_accessoryLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

void sub_1D6CC57CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 56);
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 8);
      v11 = *v7;
      v12 = *(*(v3 + 16) + 104);
      v19[0] = v8;
      v19[1] = v9;
      v20 = v10;
      sub_1D5D03180(v8, v9, v10);
      v13 = v11;
      if (v12(a1, a2, v19))
      {

        v16 = v13;
        sub_1D5D07BA8(v8, v9, v10);

        return;
      }

      ++v6;
      sub_1D5D07BA8(v8, v9, v10);

      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v14 = *(v3 + 32);

    v15 = v14;
  }
}

void sub_1D6CC591C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(*(v3 + 24) + 16);

  v22 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = v5;
      v10 = *(v5 + v6 + 32);
      v9 = *(v5 + v6 + 40);
      v11 = *(v5 + v6 + 48);
      v12 = *(v5 + v6 + 64);
      v13 = *(v5 + v6 + 72);
      v20 = *(v5 + v6 + 80);
      v21 = *(v5 + v6 + 56);
      v14 = *(v5 + v6 + 88);
      v26 = *(v25[2] + 104);
      v27[0] = v10;
      v27[1] = v9;
      v28 = v11;
      sub_1D5D03180(v10, v9, v11);

      if (v26(a1, a2, v27))
      {

        sub_1D5D07BA8(v10, v9, v11);

        *a3 = v21;
        a3[1] = v12;
        a3[2] = v13;
        a3[3] = v20;
        a3[4] = v14;
        return;
      }

      ++v7;
      sub_1D5D07BA8(v10, v9, v11);

      v6 += 64;
      v5 = v8;
      if (v22 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v15 = v25[5];
    v17 = v25[6];
    v16 = v25[7];
    v18 = v25[8];
    *a3 = v25[4];
    a3[1] = v15;
    a3[2] = v17;
    a3[3] = v16;
    a3[4] = v18;
  }
}

void sub_1D6CC5B10(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);

  v11 = v4;
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 64;
    while (v5 < *(v3 + 16))
    {
      v7 = *(v6 - 32);
      v8 = *(v6 - 24);
      v9 = *(v6 - 16);
      v10 = *(*(v14 + 16) + 104);
      v15[0] = v7;
      v15[1] = v8;
      v16 = v9;
      sub_1D5D03180(v7, v8, v9);

      if (v10(a1, a2, v15))
      {

        sub_1D5D07BA8(v7, v8, v9);

        return;
      }

      ++v5;
      sub_1D5D07BA8(v7, v8, v9);

      v6 += 40;
      if (v11 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_1D6CC5C50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 56);
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 8);
      v11 = *v7;
      v12 = *(*(v16 + 16) + 104);
      v17[0] = v8;
      v17[1] = v9;
      v18 = v10;
      sub_1D5D03180(v8, v9, v10);

      if (v12(a1, a2, v17))
      {

        sub_1D5D07BA8(v8, v9, v10);

        *a3 = v11;
        return;
      }

      ++v6;
      sub_1D5D07BA8(v8, v9, v10);

      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *a3 = *(v16 + 32);
  }
}

void sub_1D6CC5DBC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 56);
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 8);
      v11 = *v7;
      v12 = *(*(v16 + 16) + 104);
      v17[0] = v8;
      v17[1] = v9;
      v18 = v10;
      sub_1D5D03180(v8, v9, v10);

      if (v12(a1, a2, v17))
      {

        sub_1D5D07BA8(v8, v9, v10);

        *a3 = v11;
        return;
      }

      ++v6;
      sub_1D5D07BA8(v8, v9, v10);

      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *a3 = *(v16 + 32);
  }
}

uint64_t sub_1D6CC5F28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6CC5F9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

void sub_1D6CC6040(uint64_t a1, unint64_t *a2, int a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v272 = a12;
  v269 = a11;
  v265 = a10;
  v264 = a9;
  v276 = a3;
  v275.i64[0] = a1;
  sub_1D6CC81D4(0, &unk_1EC890018, type metadata accessor for FormatSourceMapEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v268.i64[0] = &v254 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v274.i64[0] = &v254 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v254 - v26);
  MEMORY[0x1EEE9AC00](v28, v29);
  v278.i64[0] = &v254 - v30;
  v266 = type metadata accessor for DebugFormatLayoutModel(0);
  MEMORY[0x1EEE9AC00](v266, v31);
  v33 = &v254 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v254 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v254 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v270.i64[0] = &v254 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v273 = (&v254 - v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v263 = &v254 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = (&v254 - v53);
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v254 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v254 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v277.i64[0] = &v254 - v65;
  v289.n128_u64[0] = *a2;
  v66 = v289.n128_u64[0];
  sub_1D6EE5E70();
  v292.origin.x = a5;
  v292.origin.y = a6;
  v292.size.width = a7;
  v292.size.height = a8;
  CGRectGetMinX(v292);
  sub_1D726328C();
  v293.origin.x = a5;
  v293.origin.y = a6;
  v293.size.width = a7;
  v293.size.height = a8;
  CGRectGetMinY(v293);
  sub_1D726329C();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v267 = v66;
  v75 = (v66 >> 59) & 0x1E | (v66 >> 2) & 1;
  v271 = a4;
  if (v75 <= 4)
  {
    v273 = v54;
    v274.i64[0] = v58;
    v263 = v37;
    if (v75 < 3)
    {
      goto LABEL_7;
    }

    v100 = v272;
    v101 = v269;
    v102 = v265;
    v103 = v264;
    if (v75 != 3)
    {
      v117 = v267;
      v119 = *((v267 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v278.i64[0] = *((v267 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v118 = v278.i64[0];
      v277.i64[0] = v119;
      v271 = *((v267 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v120 = v271;
      sub_1D6CCD0AC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_1D72816C0;
      v283 = v117;

      sub_1D5EBC314(v118, v119, v120);
      sub_1D6EE6F40(&v289);
      v270 = v290;
      v268 = v289;
      v287[0].n128_u64[0] = v117;
      v122 = sub_1D6EE8B60(v289);
      v124 = v123;

      sub_1D69F7E68(v122, v124, v27);

      v125 = v273;
      *v273 = v117;
      *(v125 + 24) = 0u;
      *(v125 + 8) = 0u;
      *(v125 + 40) = 3;
      *(v125 + 48) = v68;
      *(v125 + 56) = v70;
      if (v291)
      {
        v126 = -1;
      }

      else
      {
        v126 = 0;
      }

      v127 = vdupq_n_s64(v126);
      *(v125 + 64) = v72;
      *(v125 + 72) = v74;
      v128 = vbicq_s8(v268, v127);
      v129 = vbicq_s8(v270, v127);
      *(v125 + 80) = v128;
      *(v125 + 96) = v129;
      sub_1D6CCCEB8(v27, v125 + *(v266 + 32));
      *(v125 + 112) = v103;
      *(v125 + 120) = v102;
      *(v125 + 128) = v101;
      *(v125 + 136) = v100;
      v130 = v274.i64[0];
      sub_1D6CCCF4C(v125, v274.i64[0], type metadata accessor for DebugFormatLayoutModel);
      v131 = v275.i64[0];

      v133 = v276;
      v134.n128_u64[0] = v68;
      sub_1D6CCB330(v132, v131, v276 & 1, a4, v134, v70, v72, v74);
      v136 = v135;

      type metadata accessor for DebugFormatLayoutTreeItem(0);
      swift_allocObject();
      *(v121 + 32) = sub_1D6E39AFC(v130, v133 & 1, v136);

      sub_1D5EBC358(v278.i64[0], v277.i64[0], v271);
      return;
    }

    v262 = v41;
    sub_1D6CCCE18(0);
    v105 = (swift_projectBox() + *(v104 + 48));
    v107 = *v105;
    v106 = v105[1];
    v108 = v105[2];
    v109 = v105[3];
    v110 = MEMORY[0x1E69E7CC0];
    v111 = v105[4];
    v283 = MEMORY[0x1E69E7CC0];
    v279.i8[0] = 1;
    v112 = *(v107 + 24);
    v113 = *(v112 + 16);
    v261 = v108;
    v260 = v109;
    v259 = v106;
    v258 = v111;
    v257 = v107;
    if (v113)
    {
      v114 = sub_1D5E24248(v113, 0);
      v278.i64[0] = sub_1D5E26314(&v289, (v114 + 4), v113, v112);
      v274.i64[0] = v289.n128_i64[1];
      v277.i64[0] = v289.n128_u64[0];
      v270.i64[0] = v290.i64[1];
      v273 = v290.i64[0];

      sub_1D5EBC314(v108, v109, v111);

      sub_1D5B87E38(v277.i64[0]);
      if (v278.i64[0] != v113)
      {
        goto LABEL_111;
      }

      v115 = v268.i64[0];
      v116 = v263;
      v110 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      sub_1D5EBC314(v108, v109, v111);
      v114 = MEMORY[0x1E69E7CC0];
      v115 = v268.i64[0];
      v116 = v263;
    }

    v289.n128_u64[0] = v114;
    v113 = 0;
    sub_1D6CC8E30(&v289);
    v137 = v289.n128_u64[0];

    sub_1D725B31C();

    v138 = *(v137 + 16);
    if (!v138)
    {

      v140 = 1;
      v159 = MEMORY[0x1E69E7CC0];
      goto LABEL_32;
    }

    v270.i64[0] = v289.n128_u64[0];
    v287[0].n128_u64[0] = v110;
    sub_1D7263ECC();
    v256 = v137;
    v139 = (v137 + 48);
    v140 = 1;
    while (1)
    {
      v155 = *(v139 - 2);
      v156 = *(v139 - 1);
      v157 = *v139;

      v277.i64[0] = v138;
      if (v276)
      {
        v158 = sub_1D5E1FA08(v270.i64[0], v155);
        if ((v140 & 1) == 0)
        {
          v141 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        v158 = 0;
        v141 = 0;
        if ((v140 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v141 = v158 ^ 1;
LABEL_24:
      v278.i32[0] = v141;

      v289.n128_u64[0] = v267;
      v142 = v157;
      v274.i64[0] = v157;
      v144 = sub_1D6EE8B60(v143);
      v146 = v145;
      v147 = *(v266 + 32);

      v148 = &v33[v147];
      v149 = v271;
      sub_1D69F7E68(v144, v146, v148);

      *v33 = v155;
      *(v33 + 1) = v156;
      *(v33 + 3) = 0;
      *(v33 + 4) = 0;
      *(v33 + 2) = v142;
      v33[40] = 4;
      *(v33 + 6) = v68;
      *(v33 + 7) = v70;
      *(v33 + 8) = v72;
      *(v33 + 9) = v74;
      *(v33 + 5) = 0u;
      *(v33 + 6) = 0u;
      *(v33 + 14) = v103;
      *(v33 + 15) = v102;
      *(v33 + 16) = v101;
      *(v33 + 17) = v100;
      v150 = *(v156 + 96);
      v151 = v275.i64[0];

      LOBYTE(v142) = v158 & 1;
      v152.n128_u64[0] = v68;
      sub_1D6CCB330(v150, v151, v158 & 1, v149, v152, v70, v72, v74);
      v273 = v153;

      type metadata accessor for DebugFormatLayoutTreeItem(0);
      v154 = swift_allocObject();
      sub_1D725894C();
      *(v154 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
      sub_1D6CCCD50(v33, v154 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
      swift_beginAccess();
      LOBYTE(v281) = v142;
      sub_1D726009C();
      swift_endAccess();
      *(v154 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = v142;
      v140 = v278.i8[0];
      swift_beginAccess();
      v281 = v273;
      sub_1D6847030(0);
      sub_1D726009C();
      swift_endAccess();
      sub_1D6CCCDB8(v33, type metadata accessor for DebugFormatLayoutModel);

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v139 += 3;
      v138 = v277.i64[0] - 1;
      if (v277.i64[0] == 1)
      {

        v279.i8[0] = v140 & 1;
        v159 = v287[0].n128_u64[0];
        v115 = v268.i64[0];
        v116 = v263;
LABEL_32:
        sub_1D6988920(v159);
        v160 = v267;
        v287[0].n128_u64[0] = v267;

        sub_1D6EE6F40(&v289);
        v278 = v290;
        v277 = v289;
        v281 = v160;
        v161 = sub_1D6EE8B60(v289);
        v163 = v162;

        v164 = v271;
        sub_1D69F7E68(v161, v163, v115);

        *v116 = v160;
        *(v116 + 24) = 0u;
        *(v116 + 8) = 0u;
        *(v116 + 40) = 3;
        *(v116 + 48) = v68;
        *(v116 + 56) = v70;
        if (v291)
        {
          v165 = -1;
        }

        else
        {
          v165 = 0;
        }

        v166 = vdupq_n_s64(v165);
        *(v116 + 64) = v72;
        *(v116 + 72) = v74;
        v167 = vbicq_s8(v277, v166);
        v168 = vbicq_s8(v278, v166);
        *(v116 + 80) = v167;
        *(v116 + 96) = v168;
        sub_1D6CCCEB8(v115, v116 + *(v266 + 32));
        *(v116 + 112) = v103;
        *(v116 + 120) = v102;
        *(v116 + 128) = v101;
        *(v116 + 136) = v100;
        v169 = v262;
        sub_1D6CCCF4C(v116, v262, type metadata accessor for DebugFormatLayoutModel);
        v170 = v275.i64[0];

        v172.n128_u64[0] = v68;
        sub_1D6CCAFB4(v171, v170, &v279, v164, v172, v70, v72, v74);
        v174 = v173;

        type metadata accessor for DebugFormatLayoutTreeItem(0);
        swift_allocObject();
        i = sub_1D6E39AFC(v169, v140 & 1, v174);
        if (v283 >> 62)
        {
          goto LABEL_109;
        }

LABEL_36:
        sub_1D6C03F14(0, 0, i);

        sub_1D5EBC358(v261, v260, v258);
        return;
      }
    }
  }

  if ((v75 - 7) < 0xC || v75 == 5)
  {
LABEL_7:
    sub_1D6CCD0AC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1D72816C0;
    v88 = v267;
    v283 = v267;

    sub_1D6EE6F40(&v289);
    v275 = v290;
    v274 = v289;
    v287[0].n128_u64[0] = v88;
    v89 = sub_1D6EE8B60(v289);
    v91 = v90;

    v92 = v278.i64[0];
    sub_1D69F7E68(v89, v91, v278.i64[0]);

    *v62 = v88;
    *(v62 + 24) = 0u;
    *(v62 + 8) = 0u;
    v62[40] = 3;
    *(v62 + 6) = v68;
    *(v62 + 7) = v70;
    if (v291)
    {
      v93 = -1;
    }

    else
    {
      v93 = 0;
    }

    v94 = vdupq_n_s64(v93);
    *(v62 + 8) = v72;
    *(v62 + 9) = v74;
    v95 = vbicq_s8(v274, v94);
    v96 = vbicq_s8(v275, v94);
    *(v62 + 5) = v95;
    *(v62 + 6) = v96;
    sub_1D6CCCEB8(v92, &v62[*(v266 + 32)]);
    v97 = v265;
    *(v62 + 14) = v264;
    *(v62 + 15) = v97;
    v98 = v272;
    *(v62 + 16) = v269;
    *(v62 + 17) = v98;
    v99 = v277.i64[0];
    sub_1D6CCCF4C(v62, v277.i64[0], type metadata accessor for DebugFormatLayoutModel);
    type metadata accessor for DebugFormatLayoutTreeItem(0);
    swift_allocObject();
    *(v87 + 32) = sub_1D6E39AFC(v99, v276 & 1, MEMORY[0x1E69E7CC0]);
    return;
  }

  v76 = *((v267 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v77 = *((v267 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
  v289 = *((v267 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v290 = v77;
  v258 = v267 & 0xFFFFFFFFFFFFFFBLL;
  v291 = *((v267 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
  v255 = v76;
  v78 = *(v76 + 72);
  v79 = *(v275.i64[0] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter);
  v80 = *(v275.i64[0] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter + 8);
  v81 = v272;
  v82 = v269;
  v83 = v265;
  v84 = v264;
  v85 = a4;
  v257 = v79;
  v256 = v80;
  if (v78 < 0)
  {
    v86 = v78 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    sub_1D6CC591C(v79, v80, &v283);
    v283 = v285;
    v284 = v286;
    sub_1D69D10F8(0);
    swift_allocObject();

    v86 = sub_1D725AB4C();
  }

  v176 = v270.i64[0];
  v177 = *(v289.n128_u64[0] + 24);
  v268.i64[0] = v86;
  sub_1D725AB5C();
  v179 = v287[0].n128_i64[1];
  v178 = v287[0].n128_u64[0];
  v180 = *(v177 + 16);
  if (v180)
  {
    v277.i64[0] = v287[0].n128_u64[0];
    v181 = sub_1D5E2419C(v180, 0);
    v278.i64[0] = sub_1D5E26198(&v283, v181 + 4, v180, v177);
    v182 = v283;
    v113 = v285;

    sub_1D5B87E38(v182);
    if (v278.i64[0] != v180)
    {
      goto LABEL_112;
    }

    v176 = v270.i64[0];
    v178 = v277.i64[0];
  }

  else
  {

    v181 = MEMORY[0x1E69E7CC0];
  }

  v283 = v181;
  sub_1D6CCAF00(&v283, v178, v179);

  v183 = v283;
  v184 = v267;
  v283 = v267;

  sub_1D6EE6F40(v287);
  v278 = v287[1];
  v277 = v287[0];
  v281 = v184;
  v185 = sub_1D6EE8B60(v287[0]);
  v187 = v186;

  v188 = v274.i64[0];
  sub_1D69F7E68(v185, v187, v274.i64[0]);

  v189 = v273;
  *v273 = v184;
  *(v189 + 24) = 0u;
  *(v189 + 8) = 0u;
  *(v189 + 40) = 3;
  *(v189 + 48) = v68;
  *(v189 + 56) = v70;
  if (v288)
  {
    v190 = -1;
  }

  else
  {
    v190 = 0;
  }

  v191 = vdupq_n_s64(v190);
  *(v189 + 64) = v72;
  *(v189 + 72) = v74;
  v192 = vbicq_s8(v277, v191);
  v193 = vbicq_s8(v278, v191);
  *(v189 + 80) = v192;
  *(v189 + 96) = v193;
  sub_1D6CCCEB8(v188, v189 + *(v266 + 32));
  *(v189 + 112) = v84;
  *(v189 + 120) = v83;
  *(v189 + 128) = v82;
  *(v189 + 136) = v81;
  sub_1D6CCCF4C(v189, v263, type metadata accessor for DebugFormatLayoutModel);
  v194 = *(v183 + 16);
  if (!v194)
  {
LABEL_99:

    v243 = MEMORY[0x1E69E7CC0];
LABEL_101:
    type metadata accessor for DebugFormatLayoutTreeItem(0);
    swift_allocObject();
    v244 = v276 & 1;
    v245 = sub_1D6E39AFC(v263, v276 & 1, v243);
    *(v245 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = v268.i64[0];

    v278 = *(v255 + 72);
    v246 = *(v255 + 88);
    v247 = swift_allocObject();
    swift_weakInit();
    v248 = swift_allocObject();
    v249 = v290;
    *(v248 + 24) = v289;
    *(v248 + 16) = v247;
    *(v248 + 40) = v249;
    *(v248 + 56) = v291;
    *(v248 + 64) = v68;
    *(v248 + 72) = v70;
    *(v248 + 80) = v72;
    *(v248 + 88) = v74;
    *(v248 + 96) = v267;
    *(v248 + 104) = v85;
    *(v248 + 112) = v244;
    v250 = swift_allocObject();

    sub_1D6CCCFD0(&v289, &v283);
    sub_1D725AB5C();
    sub_1D725AB6C();
    v251 = swift_allocObject();
    v251[2] = v250;
    v251[3] = sub_1D6CCCFB4;
    v251[4] = v248;

    sub_1D725B35C();

    v279 = v278;
    v280 = v246;
    v252 = swift_allocObject();
    swift_weakInit();

    sub_1D607184C(v257, v256, sub_1D6CCD070, v252, &v283);

    if (v285)
    {
      __swift_project_boxed_opaque_existential_1(&v283, v285);
      sub_1D725A72C();

      __swift_destroy_boxed_opaque_existential_1(&v283);
    }

    else
    {

      sub_1D6CCCDB8(&v283, sub_1D6CCD078);
    }

    sub_1D6CCD0AC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v253 = swift_allocObject();
    *(v253 + 16) = xmmword_1D72816C0;
    *(v253 + 32) = v245;

    return;
  }

  v279.i64[0] = MEMORY[0x1E69E7CC0];
  v259 = v194;
  sub_1D7263ECC();
  v195 = 0.0;
  v254 = v183;
  v260 = v183 + 32;
  while (1)
  {
    v264 = v195;
    v199 = (v260 + 24 * *&v195);
    v200 = *v199;
    v201 = v199[1];
    v202 = v199[2];
    v203 = v267;
    v283 = v267;
    sub_1D6EE5E70();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_1D726327C();
    v205 = v204.n128_u64[0];
    v207 = v206;
    v209 = v208;
    v211 = v210;
    v283 = v203;
    v212 = sub_1D6EE8B60(v204);
    v214 = v213;
    v215 = *(v266 + 32);

    sub_1D69F7E68(v212, v214, (v176 + v215));

    *v176 = v200;
    *(v176 + 8) = v201;
    v265 = v201;
    *(v176 + 24) = 0;
    *(v176 + 32) = 0;
    *(v176 + 16) = v202;
    *(v176 + 40) = 5;
    *(v176 + 48) = v68;
    *(v176 + 56) = v70;
    *(v176 + 64) = v72;
    *(v176 + 72) = v74;
    *(v176 + 80) = 0u;
    *(v176 + 96) = 0u;
    *(v176 + 112) = v205;
    *(v176 + 120) = v207;
    *(v176 + 128) = v209;
    *(v176 + 136) = v211;
    if (v276)
    {
      sub_1D725AB5C();
      v216 = v283 == *(*&v202 + 16) && v284 == *(*&v202 + 24);
      LODWORD(v262) = v216 ? 1 : sub_1D72646CC();
    }

    else
    {
      LODWORD(v262) = 0;
    }

    v217 = *(*(*&v202 + 32) + 96);
    v218 = *(v217 + 16);

    v273 = v218;
    v261 = v217;
    if (v218)
    {
      break;
    }

    v196 = MEMORY[0x1E69E7CC0];
LABEL_48:

    *&v195 = *&v264 + 1;
    type metadata accessor for DebugFormatLayoutTreeItem(0);
    v197 = swift_allocObject();
    sub_1D725894C();
    *(v197 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
    sub_1D6CCCD50(v176, v197 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
    swift_beginAccess();
    v198 = v262 & 1;
    LOBYTE(v282) = v262 & 1;
    sub_1D726009C();
    swift_endAccess();
    *(v197 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = v198;
    swift_beginAccess();
    v282 = v196;
    sub_1D6847030(0);
    sub_1D726009C();
    swift_endAccess();
    sub_1D6CCCDB8(v176, type metadata accessor for DebugFormatLayoutModel);

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    if (*&v195 == v259)
    {

      v243 = v279.i64[0];
      goto LABEL_101;
    }
  }

  v219 = 0;
  *&v272 = v217 + 32;
  v196 = MEMORY[0x1E69E7CC0];
  v269 = v202;
  while (1)
  {
    v282 = *(*&v272 + 8 * v219);
    if (v276)
    {

      sub_1D725AB5C();
      if (v283 == *(*&v202 + 16) && v284 == *(*&v202 + 24))
      {
        v221 = 1;
      }

      else
      {
        v221 = sub_1D72646CC();
      }
    }

    else
    {

      v221 = 0;
    }

    swift_beginAccess();
    sub_1D726327C();
    sub_1D6CC6040(v275.i64[0], &v282, v221 & 1, v85, *&v68, v70, v72, v74, v222, v223, v224, v225);
    v227 = v226;

    i = v227 >> 62;
    if (v227 >> 62)
    {
      v228 = sub_1D7263BFC();
    }

    else
    {
      v228 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v229 = v196 >> 62;
    if (v196 >> 62)
    {
      v242 = sub_1D7263BFC();
      v231 = v242 + v228;
      if (__OFADD__(v242, v228))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    else
    {
      v230 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v231 = v230 + v228;
      if (__OFADD__(v230, v228))
      {
        goto LABEL_98;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v277.i64[0] = v219;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v229)
      {
        v233 = v196 & 0xFFFFFFFFFFFFFF8;
        if (v231 <= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

LABEL_80:
      sub_1D7263BFC();
      goto LABEL_81;
    }

    if (v229)
    {
      goto LABEL_80;
    }

LABEL_81:
    v196 = sub_1D7263DDC();
    v233 = v196 & 0xFFFFFFFFFFFFFF8;
LABEL_82:
    v278.i64[0] = v228;
    v113 = *(v233 + 16);
    v234 = *(v233 + 24);
    if (i)
    {
      break;
    }

    v235 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v235)
    {
      goto LABEL_60;
    }

LABEL_86:
    if (((v234 >> 1) - v113) < v278.i64[0])
    {
      goto LABEL_106;
    }

    v274.i64[0] = v196;
    v236 = v233 + 8 * v113 + 32;
    if (i)
    {
      if (v235 < 1)
      {
        goto LABEL_108;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030, MEMORY[0x1E69E6340]);
      for (i = 0; i != v235; ++i)
      {
        v237 = sub_1D6D876E0(&v283, i, v227);
        v113 = *v238;

        (v237)(&v283, 0);
        *(v236 + 8 * i) = v113;
      }
    }

    else
    {
      i = v227 & 0xFFFFFFFFFFFFFF8;
      type metadata accessor for DebugFormatLayoutTreeItem(0);
      swift_arrayInitWithCopy();
    }

    v85 = v271;
    v176 = v270.i64[0];
    v202 = v269;
    v196 = v274.i64[0];
    if (v278.i64[0] >= 1)
    {
      v239 = *(v233 + 16);
      v240 = __OFADD__(v239, v278.i64[0]);
      v241 = v239 + v278.i64[0];
      if (v240)
      {
        goto LABEL_107;
      }

      *(v233 + 16) = v241;
    }

LABEL_61:
    v219 = v277.i64[0] + 1;
    if ((v277.i64[0] + 1) == v273)
    {
      goto LABEL_48;
    }
  }

  v235 = sub_1D7263BFC();
  if (v235)
  {
    goto LABEL_86;
  }

LABEL_60:

  if (v278.i64[0] <= 0)
  {
    goto LABEL_61;
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  if ((sub_1D7263BFC() & 0x8000000000000000) == 0)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);

  __break(1u);

  __break(1u);
}

uint64_t sub_1D6CC7E9C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_id;
  v2 = sub_1D725895C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage__children;
  sub_1D6CC81D4(0, &qword_1EC88C8A0, sub_1D6847030, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage__isExpanded;
  sub_1D6CCD0AC(0, &qword_1EC880AF0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatLayoutTreePackage(uint64_t a1)
{
  result = qword_1EC894CE0;
  if (!qword_1EC894CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6CC8070(uint64_t a1)
{
  sub_1D725895C();
  if (v1 <= 0x3F)
  {
    sub_1D6CC81D4(319, &qword_1EC88C8A0, sub_1D6847030, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1D6CCD0AC(319, &qword_1EC880AF0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D6CC81D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6CC8280@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_id;
  v5 = sub_1D725895C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1D6CC82FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v100 = a8;
  v88 = a6;
  v94 = a2;
  v84 = a1;
  v87 = type metadata accessor for DebugFormatLayoutModel(0);
  MEMORY[0x1EEE9AC00](v87, v19);
  v89 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = *(*a5 + 24);
  v22 = *(v21 + 16);
  v96 = a3;
  if (v22)
  {
    v23 = sub_1D5E2419C(v22, 0);
    v24 = sub_1D5E26198(&v107, v23 + 4, v22, v21);
    v25 = v107;

    sub_1D5B87E38(v25);
    if (v24 != v22)
    {
      goto LABEL_66;
    }

    a3 = v96;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v107 = v23;
  sub_1D6CCAF00(&v107, v94, a3);

  v26 = v107;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v27 = v107;
  v28 = *(v26 + 16);
  if (!v28)
  {
LABEL_58:

    v81 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v107 = 0;
    sub_1D6E391E0(v27, v81, 0, &v107);

    swift_getKeyPath();
    swift_getKeyPath();
    v106 = v81;

    sub_1D72600DC();

    return;
  }

  v83 = v107;
  v106 = MEMORY[0x1E69E7CC0];
  sub_1D7263ECC();
  v29 = 0;
  v82 = v26;
  v86 = v26 + 32;
  v30 = v89;
  v95 = a7;
  v85 = v28;
  while (1)
  {
    v92 = v29;
    v34 = (v86 + 24 * v29);
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[2];
    v38 = v88;
    v107 = v88;
    sub_1D6EE5E70();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_1D726327C();
    v40 = v39.n128_u64[0];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v107 = v38;
    v47 = sub_1D6EE8B60(v39);
    v49 = v48;
    v50 = *(v87 + 32);

    sub_1D69F7E68(v47, v49, (v30 + v50));

    *v30 = v35;
    *(v30 + 8) = v36;
    v93 = v36;
    v51 = v37;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 16) = v37;
    *(v30 + 40) = 5;
    *(v30 + 48) = a9;
    *(v30 + 56) = a10;
    *(v30 + 64) = a11;
    *(v30 + 72) = a12;
    *(v30 + 80) = 0u;
    *(v30 + 96) = 0u;
    *(v30 + 112) = v40;
    *(v30 + 120) = v42;
    *(v30 + 128) = v44;
    *(v30 + 136) = v46;
    if (v100)
    {
      v52 = v37[2] == v94 && v37[3] == a3;
      v91 = v52 ? 1 : sub_1D72646CC();
    }

    else
    {
      v91 = 0;
    }

    v53 = *(v37[4] + 96);
    v54 = *(v53 + 16);

    v99 = v54;
    v90 = v53;
    if (v54)
    {
      break;
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_9:

    v29 = v92 + 1;
    type metadata accessor for DebugFormatLayoutTreeItem(0);
    v32 = swift_allocObject();
    sub_1D725894C();
    *(v32 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
    v30 = v89;
    sub_1D6CCCD50(v89, v32 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
    swift_beginAccess();
    v33 = v91 & 1;
    LOBYTE(v105) = v91 & 1;
    sub_1D726009C();
    swift_endAccess();
    *(v32 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = v33;
    swift_beginAccess();
    v105 = v31;
    sub_1D6847030(0);
    sub_1D726009C();
    swift_endAccess();
    sub_1D6CCCDB8(v30, type metadata accessor for DebugFormatLayoutModel);

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    if (v29 == v85)
    {

      v81 = v106;
      v27 = v83;
      goto LABEL_60;
    }
  }

  v55 = 0;
  v98 = v53 + 32;
  v31 = MEMORY[0x1E69E7CC0];
  v97 = v51;
  while (1)
  {
    v107 = *(v98 + 8 * v55);
    if (v100)
    {
      if (v51[2] == v94 && v51[3] == a3)
      {
        v57 = 1;
      }

      else
      {
        v57 = sub_1D72646CC();
      }
    }

    else
    {
      v57 = 0;
    }

    swift_beginAccess();

    sub_1D726327C();
    sub_1D6CC6040(Strong, &v107, v57 & 1, a7, a9, a10, a11, a12, v58, v59, v60, v61);
    v21 = v62;

    v63 = v21 >> 62;
    if (v21 >> 62)
    {
      v27 = sub_1D7263BFC();
    }

    else
    {
      v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v31 >> 62;
    if (v31 >> 62)
    {
      v80 = sub_1D7263BFC();
      v66 = v80 + v27;
      if (__OFADD__(v80, v27))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      v65 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v66 = v65 + v27;
      if (__OFADD__(v65, v27))
      {
        goto LABEL_57;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v103 = v55;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v64)
      {
        v68 = v31 & 0xFFFFFFFFFFFFFF8;
        if (v66 <= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

LABEL_39:
      sub_1D7263BFC();
      goto LABEL_40;
    }

    if (v64)
    {
      goto LABEL_39;
    }

LABEL_40:
    v31 = sub_1D7263DDC();
    v68 = v31 & 0xFFFFFFFFFFFFFF8;
LABEL_41:
    v104 = v31;
    v69 = *(v68 + 16);
    v70 = *(v68 + 24);
    if (v63)
    {
      break;
    }

    v71 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v71)
    {
      goto LABEL_20;
    }

LABEL_45:
    if (((v70 >> 1) - v69) < v27)
    {
      goto LABEL_63;
    }

    v72 = v68 + 8 * v69 + 32;
    v102 = v27;
    if (v63)
    {
      if (v71 < 1)
      {
        goto LABEL_65;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030, MEMORY[0x1E69E6340]);
      for (i = 0; i != v71; ++i)
      {
        v74 = sub_1D6D876E0(&v107, i, v21);
        v76 = *v75;

        (v74)(&v107, 0);
        *(v72 + 8 * i) = v76;
      }
    }

    else
    {
      type metadata accessor for DebugFormatLayoutTreeItem(0);
      swift_arrayInitWithCopy();
    }

    a7 = v95;
    a3 = v96;
    v51 = v97;
    v31 = v104;
    if (v102 >= 1)
    {
      v77 = *(v68 + 16);
      v78 = __OFADD__(v77, v102);
      v79 = v77 + v102;
      if (v78)
      {
        goto LABEL_64;
      }

      *(v68 + 16) = v79;
    }

LABEL_21:
    v55 = v103 + 1;
    if (v103 + 1 == v99)
    {
      goto LABEL_9;
    }
  }

  v71 = sub_1D7263BFC();
  if (v71)
  {
    goto LABEL_45;
  }

LABEL_20:

  v31 = v104;
  if (v27 <= 0)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);

  __break(1u);
}

double sub_1D6CC8D44(uint64_t *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D725AB5C();
    if (v7 == v2 && v8 == v3)
    {
    }

    else
    {
      v6 = sub_1D72646CC();

      if ((v6 & 1) == 0)
      {
        sub_1D725AB1C();
      }
    }
  }

  return result;
}

void sub_1D6CC8E30(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFD38(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1D6CC8E9C(v4);
  *a1 = v2;
}

void sub_1D6CC8E9C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5E2979C();
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D6CC9138(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D6CC8F98(0, v2, 1, a1);
  }
}

void sub_1D6CC8F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a1 - a3;
    v16 = *a4;
    v5 = (*a4 + 24 * a3);
LABEL_5:
    v14 = v4;
    v15 = a3;
    v6 = *(v16 + 24 * a3);
    v13 = v5;
    while (1)
    {
      v7 = *(v5 - 3);
      v19 = *(v5 - 2);
      sub_1D7264A0C();

      sub_1D6C37E2C(v18, v6);
      v17 = sub_1D7264A5C();
      sub_1D7264A0C();
      sub_1D6C37E2C(v18, v7);
      v8 = sub_1D7264A5C();

      if (v17 >= v8)
      {
LABEL_4:
        a3 = v15 + 1;
        v4 = v14 - 1;
        v5 = v13 + 3;
        if (v15 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v16)
      {
        break;
      }

      v6 = *v5;
      v9 = v5[1];
      v10 = v5[2];
      *v5 = *(v5 - 3);
      v5[2] = *(v5 - 1);
      *(v5 - 2) = v9;
      *(v5 - 1) = v10;
      *(v5 - 3) = v6;
      v5 -= 3;
      if (__CFADD__(v4++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D6CC9138(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v9 = sub_1D62FF50C(v9);
    }

    v116 = v9;
    v94 = *(v9 + 16);
    if (v94 >= 2)
    {
      do
      {
        v95 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = *(v9 + 16 * v94);
        v96 = v9;
        v97 = *(v9 + 16 * (v94 - 1) + 32);
        v9 = *(v9 + 16 * (v94 - 1) + 40);
        sub_1D6CC9998((v95 + 24 * v6), (v95 + 24 * v97), v95 + 24 * v9, v8);
        if (v5)
        {
          break;
        }

        if (v9 < v6)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1D62FF50C(v96);
        }

        if (v94 - 2 >= *(v96 + 2))
        {
          goto LABEL_118;
        }

        v98 = &v96[16 * v94];
        *v98 = v6;
        *(v98 + 1) = v9;
        v116 = v96;
        sub_1D62FF480(v94 - 1);
        v9 = v116;
        v94 = *(v116 + 16);
        v6 = a3;
      }

      while (v94 > 1);
    }

LABEL_102:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v100 = v9;
      v102 = v5;
      v11 = (*v6 + 24 * (v8 + 1));
      v12 = *v11;
      v8 = v11[1];
      v13 = (*v6 + 24 * v10);
      v14 = *v13;
      sub_1D7264A0C();

      sub_1D6C37E2C(v115, v12);
      v112 = sub_1D7264A5C();
      sub_1D7264A0C();
      sub_1D6C37E2C(v115, v14);
      v108 = sub_1D7264A5C();

      v15 = v10 + 2;
      v16 = v13 + 4;
      v110 = v7;
      while (v7 != v15)
      {
        v17 = v16 + 3;
        v18 = *(v16 - 1);
        v8 = v16[1];
        v19 = v16[2];
        sub_1D7264A0C();

        sub_1D6C37E2C(v115, v19);
        v20 = sub_1D7264A5C();
        sub_1D7264A0C();
        sub_1D6C37E2C(v115, v18);
        v21 = sub_1D7264A5C();

        v22 = v20 < v21;
        v7 = v110;
        v23 = !v22;
        v24 = (v112 < v108) ^ v23;
        ++v15;
        v16 = v17;
        if ((v24 & 1) == 0)
        {
          v7 = v15 - 1;
          break;
        }
      }

      v25 = 24 * v10;
      v9 = v100;
      v5 = v102;
      v6 = a3;
      if (v112 < v108)
      {
        if (v7 < v10)
        {
          goto LABEL_121;
        }

        if (v10 < v7)
        {
          v26 = 0;
          v27 = 24 * v7;
          v28 = v10;
          do
          {
            if (v28 != v7 + v26 - 1)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v29 = v34 + v25;
              v30 = v34 + v27;
              v31 = *(v29 + 16);
              v32 = *v29;
              v33 = *(v30 - 8);
              *v29 = *(v30 - 24);
              *(v29 + 16) = v33;
              *(v30 - 24) = v32;
              *(v30 - 8) = v31;
            }

            ++v28;
            --v26;
            v27 -= 24;
            v25 += 24;
          }

          while (v28 < v7 + v26);
        }
      }
    }

    v35 = *(v6 + 8);
    if (v7 < v35)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_120;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_122;
        }

        if (v10 + a4 >= v35)
        {
          v36 = *(v6 + 8);
        }

        else
        {
          v36 = v10 + a4;
        }

        if (v36 < v10)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v7 != v36)
        {
          break;
        }
      }
    }

    v37 = v7;
    if (v7 < v10)
    {
      goto LABEL_119;
    }

LABEL_32:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D698BA94(0, *(v9 + 16) + 1, 1, v9);
    }

    v39 = *(v9 + 16);
    v38 = *(v9 + 24);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v9 = sub_1D698BA94((v38 > 1), v39 + 1, 1, v9);
    }

    *(v9 + 16) = v40;
    v41 = v9 + 16 * v39;
    *(v41 + 32) = v10;
    *(v41 + 40) = v37;
    v8 = v37;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v9 + 32);
          v45 = *(v9 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_51:
          if (v47)
          {
            goto LABEL_108;
          }

          v60 = (v9 + 16 * v40);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_111;
          }

          v66 = (v9 + 32 + 16 * v43);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_115;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v70 = (v9 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_65:
        if (v65)
        {
          goto LABEL_110;
        }

        v73 = v9 + 16 * v43;
        v75 = *(v73 + 32);
        v74 = *(v73 + 40);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_72:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v82 = *(v9 + 32 + 16 * v81);
        v83 = *(v9 + 32 + 16 * v43 + 8);
        sub_1D6CC9998((*v6 + 24 * v82), (*v6 + 24 * *(v9 + 32 + 16 * v43)), *v6 + 24 * v83, v42);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v83 < v82)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D62FF50C(v9);
        }

        if (v81 >= *(v9 + 16))
        {
          goto LABEL_105;
        }

        v84 = v9 + 16 * v81;
        *(v84 + 32) = v82;
        *(v84 + 40) = v83;
        v116 = v9;
        sub_1D62FF480(v43);
        v9 = v116;
        v40 = *(v116 + 16);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = v9 + 32 + 16 * v40;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = (v9 + 16 * v40);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v59 >= v51)
      {
        v77 = (v9 + 32 + 16 * v43);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v7 = *(v6 + 8);
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v101 = v9;
  v103 = v5;
  v85 = *v6;
  v86 = v10 - v7;
  v113 = v85;
  v87 = (v85 + 24 * v7);
  v106 = v36;
LABEL_83:
  v109 = v86;
  v111 = v7;
  v88 = *(v113 + 24 * v7);
  v107 = v87;
  while (1)
  {
    v89 = *(v87 - 3);
    v8 = v87 - 3;
    sub_1D7264A0C();

    sub_1D6C37E2C(v115, v88);
    v114 = sub_1D7264A5C();
    sub_1D7264A0C();
    sub_1D6C37E2C(v115, v89);
    v90 = sub_1D7264A5C();

    if (v114 >= v90)
    {
LABEL_82:
      v7 = v111 + 1;
      v86 = v109 - 1;
      v37 = v106;
      v87 = v107 + 3;
      if ((v111 + 1) != v106)
      {
        goto LABEL_83;
      }

      v9 = v101;
      v5 = v103;
      v6 = a3;
      if (v106 < v10)
      {
        goto LABEL_119;
      }

      goto LABEL_32;
    }

    if (!v113)
    {
      break;
    }

    v88 = *v87;
    v91 = v87[1];
    v92 = v87[2];
    *v87 = *v8;
    v87[2] = *(v87 - 1);
    *(v87 - 2) = v91;
    *(v87 - 1) = v92;
    *(v87 - 3) = v88;
    v87 -= 3;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

uint64_t sub_1D6CC9998(char *__dst, char *__src, unint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 24;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 24;
  v35 = a4;
  if (v8 >= v10)
  {
    if (a4 != __src || &__src[24 * v10] <= a4)
    {
      memmove(a4, __src, 24 * v10);
      a4 = v35;
    }

    v38 = &a4[3 * v10];
    if (v9 >= 24 && v5 > v6)
    {
      v34 = v6;
LABEL_23:
      v31 = v5;
      v30 = v5 - 3;
      v19 = v4 - 24;
      v20 = v38;
      do
      {
        v21 = *(v20 - 3);
        v20 -= 3;
        v22 = v19;
        v23 = (v19 + 24);
        v24 = *(v31 - 3);
        sub_1D7264A0C();

        sub_1D6C37E2C(v37, v21);
        v32 = sub_1D7264A5C();
        sub_1D7264A0C();
        sub_1D6C37E2C(v37, v24);
        v25 = sub_1D7264A5C();

        if (v32 < v25)
        {
          v17 = v23 == v31;
          a4 = v35;
          v4 = v22;
          if (!v17)
          {
            v27 = *v30;
            *(v22 + 16) = v30[2];
            *v22 = v27;
          }

          if (v38 <= v35 || (v5 = v30, v30 <= v34))
          {
            v5 = v30;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        a4 = v35;
        if (v23 != v38)
        {
          v26 = *v20;
          *(v22 + 16) = v20[2];
          *v22 = v26;
        }

        v19 = v22 - 24;
        v38 = v20;
      }

      while (v20 > v35);
      v38 = v20;
      v5 = v31;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[24 * v8] <= a4)
    {
      memmove(a4, __dst, 24 * v8);
      a4 = v35;
    }

    v38 = &a4[3 * v8];
    if (v7 >= 24 && v5 < v4)
    {
      while (1)
      {
        v33 = v6;
        v36 = a4;
        v11 = *v5;
        v12 = *a4;
        sub_1D7264A0C();

        sub_1D6C37E2C(v37, v11);
        v13 = sub_1D7264A5C();
        sub_1D7264A0C();
        sub_1D6C37E2C(v37, v12);
        v14 = sub_1D7264A5C();

        if (v13 >= v14)
        {
          break;
        }

        v15 = v5;
        v16 = v33;
        a4 = v36;
        v17 = v33 == v5;
        v5 += 3;
        if (!v17)
        {
          goto LABEL_12;
        }

LABEL_13:
        v6 = (v16 + 3);
        if (a4 >= v38 || v5 >= v4)
        {
          goto LABEL_15;
        }
      }

      v16 = v33;
      v15 = v36;
      a4 = v36 + 3;
      if (v33 == v36)
      {
        goto LABEL_13;
      }

LABEL_12:
      v18 = *v15;
      v16[2] = v15[2];
      *v16 = v18;
      goto LABEL_13;
    }

LABEL_15:
    v5 = v6;
  }

LABEL_34:
  v28 = (v38 - a4) / 24;
  if (v5 != a4 || v5 >= &a4[3 * v28])
  {
    memmove(v5, a4, 24 * v28);
  }

  return 1;
}

uint64_t sub_1D6CC9DB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  swift_beginAccess();
  result = *(a3 + 16);
  if (result != v7 || *(a3 + 24) != v8)
  {
    result = sub_1D72646CC();
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = v7;
      *(a3 + 24) = v8;

      return a4(a1, v7, v8);
    }
  }

  return result;
}

uint64_t sub_1D6CC9E78(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 24;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 24;
  v47 = a6;
  v46 = a5;
  if (v10 < v12)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
      a5 = v46;
      a6 = v47;
    }

    v14 = &v13[24 * v10];
    if (v9 < 24)
    {
LABEL_6:
      v7 = v8;
      goto LABEL_56;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_6;
      }

      v17 = *v7;
      v18 = *(v7 + 1);
      v19 = *v7 == a5 && v18 == a6;
      if (!v19)
      {
        v20 = *v13;
        v21 = *(v13 + 1);
        v22 = sub_1D72646CC();
        a5 = v46;
        a6 = v47;
        if ((v22 & 1) == 0)
        {
          if (v20 == v46 && v21 == v47)
          {
            break;
          }

          v24 = sub_1D72646CC();
          a5 = v46;
          a6 = v47;
          if ((v24 & 1) != 0 || v17 == v20 && v18 == v21)
          {
            break;
          }

          v25 = sub_1D72646CC();
          a5 = v46;
          a6 = v47;
          if ((v25 & 1) == 0)
          {
            break;
          }
        }
      }

      v15 = v7;
      v19 = v8 == v7;
      v7 += 24;
      if (!v19)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 += 24;
      if (v13 >= v14)
      {
        goto LABEL_6;
      }
    }

    v15 = v13;
    v19 = v8 == v13;
    v13 += 24;
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v15;
    *(v8 + 2) = *(v15 + 2);
    *v8 = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v12] <= a4)
  {
    v26 = a4;
    memmove(a4, __src, 24 * v12);
    a5 = v46;
    a6 = v47;
    a4 = v26;
  }

  v14 = &a4[24 * v12];
  v13 = a4;
  if (v11 >= 24 && v7 > v8)
  {
    v43 = v8;
LABEL_33:
    v45 = v7;
    v44 = v7 - 24;
    v6 -= 24;
    v27 = v14;
    do
    {
      v28 = v13;
      v29 = v6 + 24;
      v30 = *(v14 - 3);
      v31 = *(v14 - 2);
      v14 -= 24;
      v32 = v30 == a5 && v31 == a6;
      if (v32 || (v33 = *(v45 - 3), v34 = *(v45 - 2), v35 = sub_1D72646CC(), a5 = v46, a6 = v47, (v35 & 1) != 0) || (v33 == v46 ? (v36 = v34 == v47) : (v36 = 0), !v36 && (v37 = sub_1D72646CC(), a5 = v46, a6 = v47, (v37 & 1) == 0) && (v30 != v33 || v31 != v34) && (v38 = sub_1D72646CC(), a5 = v46, a6 = v47, (v38 & 1) != 0)))
      {
        if (v29 != v45)
        {
          v40 = *v44;
          *(v6 + 16) = *(v44 + 2);
          *v6 = v40;
        }

        v13 = v28;
        v14 = v27;
        if (v27 <= v28 || (v7 = v44, v44 <= v43))
        {
          v7 = v44;
          goto LABEL_56;
        }

        goto LABEL_33;
      }

      if (v29 != v27)
      {
        v39 = *v14;
        *(v6 + 16) = *(v14 + 2);
        *v6 = v39;
      }

      v6 -= 24;
      v27 = v14;
      v13 = v28;
    }

    while (v14 > v28);
    v7 = v45;
  }

LABEL_56:
  v41 = (v14 - v13) / 24;
  if (v7 != v13 || v7 >= &v13[24 * v41])
  {
    memmove(v7, v13, 24 * v41);
  }

  return 1;
}

void sub_1D6CCA224(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v26 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v26 = sub_1D62FF50C(v26);
  }

  v21 = v7;
  *v7 = v26;
  v9 = v26 + 16;
  v10 = *(v26 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v21 = v26;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v26[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 24 * *v13);
      v18 = (v11 + 24 * *v16);
      v7 = (v11 + 24 * v17);

      sub_1D6CC9E78(__dst, v18, v7, a2, a4, a5);
      v6 = v12;

      if (v12)
      {
        *v21 = v26;

        return;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_12;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_13;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v26;
    __break(1u);
  }
}

void sub_1D6CCA3D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v142 = MEMORY[0x1E69E7CC0];
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 >= 1)
  {
    v125 = a4;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = a6;
    v139 = a5;
    while (1)
    {
      v12 = v9;
      v13 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v129 = v9;
        v126 = v10;
        v14 = *a3;
        v15 = v9 + 1;
        v16 = (*a3 + 24 * v13);
        v17 = *v16;
        v18 = v16[1];
        if (*v16 == a5 && v18 == v11)
        {
          v23 = 1;
        }

        else
        {
          v20 = (v14 + 24 * v129);
          v21 = v20[1];
          v135 = *v20;
          v22 = v11;
          if (sub_1D72646CC())
          {
            v23 = 1;
            v11 = v22;
          }

          else
          {
            v36 = v135 == a5 && v21 == v22;
            v11 = v22;
            if (v36)
            {
              v23 = 0;
            }

            else if ((sub_1D72646CC() & 1) != 0 || (v17 == v135 ? (v37 = v18 == v21) : (v37 = 0), v37))
            {
              v23 = 0;
              v11 = a6;
            }

            else
            {
              v23 = sub_1D72646CC();
              v11 = a6;
            }
          }
        }

        v12 = v129;
        v13 = v129 + 2;
        if (v129 + 2 < v8)
        {
          v24 = (v14 + 24 * v129 + 32);
          v25 = v24;
          while (1)
          {
            v26 = v13;
            v27 = v24[2];
            v29 = v25[3];
            v25 += 3;
            v28 = v29;
            v30 = v27 == a5 && v28 == v11;
            if (v30 || (v32 = *(v24 - 1), v31 = *v24, v33 = sub_1D72646CC(), v11 = a6, (v33 & 1) != 0))
            {
              if ((v23 & 1) == 0)
              {
                v13 = v26;
                v10 = v126;
                v12 = v129;
                goto LABEL_57;
              }
            }

            else
            {
              if (v32 == a5 && v31 == a6)
              {
                goto LABEL_29;
              }

              if ((sub_1D72646CC() & 1) != 0 || v27 == v32 && v28 == v31)
              {
                v11 = a6;
LABEL_29:
                if (v23)
                {
                  v15 = v26 - 1;
                  v10 = v126;
                  v12 = v129;
                  if (v26 < v129)
                  {
LABEL_169:
                    __break(1u);
LABEL_170:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
LABEL_171:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
LABEL_172:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
LABEL_173:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
LABEL_174:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
                    return;
                  }

                  goto LABEL_48;
                }

                goto LABEL_15;
              }

              v35 = sub_1D72646CC();
              v11 = a6;
              if ((v23 ^ v35))
              {
                v15 = v26 - 1;
                goto LABEL_46;
              }
            }

LABEL_15:
            v13 = v26 + 1;
            v24 = v25;
            if (v8 == v26 + 1)
            {
              v15 = v26;
              v26 = v8;
LABEL_46:
              v10 = v126;
              v12 = v129;
              v13 = v26;
              if ((v23 & 1) == 0)
              {
                goto LABEL_57;
              }

              goto LABEL_47;
            }
          }
        }

        v26 = v129 + 2;
        v10 = v126;
        if (v23)
        {
LABEL_47:
          if (v26 < v12)
          {
            goto LABEL_169;
          }

LABEL_48:
          if (v12 <= v15)
          {
            v38 = 0;
            v39 = 24 * v26;
            v40 = 24 * v12;
            v41 = v12;
            do
            {
              if (v41 != v26 + v38 - 1)
              {
                v47 = *a3;
                if (!*a3)
                {
                  goto LABEL_172;
                }

                v42 = v47 + v40;
                v43 = v47 + v39;
                v44 = *v42;
                v45 = *(v42 + 8);
                v46 = *(v43 - 24);
                *(v42 + 16) = *(v43 - 8);
                *v42 = v46;
                *(v43 - 24) = v44;
                *(v43 - 16) = v45;
              }

              ++v41;
              --v38;
              v39 -= 24;
              v40 += 24;
            }

            while (v41 < v26 + v38);
          }

          v13 = v26;
        }
      }

LABEL_57:
      v48 = a3[1];
      if (v13 >= v48)
      {
        goto LABEL_67;
      }

      v49 = v13;
      v68 = __OFSUB__(v13, v12);
      v50 = v13 - v12;
      if (v68)
      {
        goto LABEL_166;
      }

      if (v50 >= v125)
      {
        goto LABEL_66;
      }

      if (__OFADD__(v12, v125))
      {
        goto LABEL_167;
      }

      if (v12 + v125 >= v48)
      {
        v51 = a3[1];
      }

      else
      {
        v51 = v12 + v125;
      }

      if (v51 < v12)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      if (v49 == v51)
      {
LABEL_66:
        v13 = v49;
LABEL_67:
        if (v13 < v12)
        {
          goto LABEL_165;
        }

        goto LABEL_68;
      }

      v127 = v10;
      v107 = *a3;
      v108 = *a3 + 24 * v49 - 24;
      v130 = v12;
      v132 = v51;
      v109 = v12 - v49;
      while (2)
      {
        v134 = v108;
        v137 = v49;
        v110 = (v107 + 24 * v49);
        v111 = *v110;
        v112 = v110[1];
        v113 = v109;
        while (1)
        {
          v115 = *v108;
          v114 = *(v108 + 8);
          if (v111 != a5 || v112 != v11)
          {
            v116 = sub_1D72646CC();
            v11 = a6;
            if ((v116 & 1) == 0)
            {
              break;
            }
          }

LABEL_133:
          if (!v107)
          {
            goto LABEL_170;
          }

          v119 = *(v108 + 32);
          v120 = *(v108 + 16);
          v111 = *(v108 + 24);
          *(v108 + 24) = *v108;
          *(v108 + 40) = v120;
          *v108 = v111;
          *(v108 + 8) = v119;
          v112 = v119;
          v108 -= 24;
          if (__CFADD__(v113++, 1))
          {
            goto LABEL_120;
          }
        }

        if (v115 == a5 && v114 == a6)
        {
          goto LABEL_120;
        }

        if ((sub_1D72646CC() & 1) == 0 && (v111 != v115 || v112 != v114))
        {
          v118 = sub_1D72646CC();
          v11 = a6;
          if ((v118 & 1) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_133;
        }

        v11 = a6;
LABEL_120:
        v49 = v137 + 1;
        v108 = v134 + 24;
        --v109;
        if (v137 + 1 != v132)
        {
          continue;
        }

        break;
      }

      v13 = v132;
      v10 = v127;
      v12 = v130;
      if (v132 < v130)
      {
        goto LABEL_165;
      }

LABEL_68:
      v136 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D698BA94(0, *(v10 + 2) + 1, 1, v10);
      }

      v53 = *(v10 + 2);
      v52 = *(v10 + 3);
      v54 = v53 + 1;
      v11 = a6;
      if (v53 >= v52 >> 1)
      {
        v122 = sub_1D698BA94((v52 > 1), v53 + 1, 1, v10);
        v11 = a6;
        v10 = v122;
      }

      *(v10 + 2) = v54;
      v55 = v10 + 32;
      v56 = &v10[16 * v53 + 32];
      *v56 = v12;
      *(v56 + 1) = v136;
      v133 = *a1;
      if (!*a1)
      {
        goto LABEL_173;
      }

      if (v53)
      {
        break;
      }

LABEL_3:
      v9 = v136;
      v8 = a3[1];
      if (v136 >= v8)
      {
        v142 = v10;
        goto LABEL_145;
      }
    }

    v131 = v10 + 32;
    while (1)
    {
      v57 = v54 - 1;
      if (v54 >= 4)
      {
        break;
      }

      if (v54 == 3)
      {
        v58 = *(v10 + 4);
        v59 = *(v10 + 5);
        v68 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        v61 = v68;
LABEL_88:
        if (v61)
        {
          goto LABEL_155;
        }

        v74 = &v10[16 * v54];
        v76 = *v74;
        v75 = *(v74 + 1);
        v77 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        v79 = v77;
        if (v77)
        {
          goto LABEL_157;
        }

        v80 = &v55[16 * v57];
        v82 = *v80;
        v81 = *(v80 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_160;
        }

        if (__OFADD__(v78, v83))
        {
          goto LABEL_162;
        }

        if (v78 + v83 >= v60)
        {
          if (v60 < v83)
          {
            v57 = v54 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_103;
      }

      if (v54 < 2)
      {
        goto LABEL_163;
      }

      v84 = &v10[16 * v54];
      v86 = *v84;
      v85 = *(v84 + 1);
      v68 = __OFSUB__(v85, v86);
      v78 = v85 - v86;
      v79 = v68;
LABEL_103:
      if (v79)
      {
        goto LABEL_159;
      }

      v87 = &v55[16 * v57];
      v89 = *v87;
      v88 = *(v87 + 1);
      v68 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v68)
      {
        goto LABEL_161;
      }

      if (v90 < v78)
      {
        goto LABEL_3;
      }

LABEL_110:
      if (v57 - 1 >= v54)
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v95 = *a3;
      if (!*a3)
      {
        goto LABEL_171;
      }

      v96 = v10;
      v97 = &v55[16 * v57 - 16];
      v98 = *v97;
      v99 = v57;
      v100 = &v55[16 * v57];
      v101 = *(v100 + 1);
      v102 = (v95 + 24 * *v97);
      v103 = (v95 + 24 * *v100);
      v104 = v95 + 24 * v101;
      v105 = v11;

      sub_1D6CC9E78(v102, v103, v104, v133, v139, v105);
      if (v140)
      {

        goto LABEL_147;
      }

      if (v101 < v98)
      {
        goto LABEL_150;
      }

      v10 = v96;
      v106 = *(v96 + 2);
      if (v99 > v106)
      {
        goto LABEL_151;
      }

      *v97 = v98;
      *(v97 + 1) = v101;
      if (v99 >= v106)
      {
        goto LABEL_152;
      }

      v54 = v106 - 1;
      memmove(v100, v100 + 16, 16 * (v106 - 1 - v99));
      *(v96 + 2) = v106 - 1;
      v11 = a6;
      a5 = v139;
      v55 = v131;
      if (v106 <= 2)
      {
        goto LABEL_3;
      }
    }

    v62 = &v55[16 * v54];
    v63 = *(v62 - 8);
    v64 = *(v62 - 7);
    v68 = __OFSUB__(v64, v63);
    v65 = v64 - v63;
    if (v68)
    {
      goto LABEL_153;
    }

    v67 = *(v62 - 6);
    v66 = *(v62 - 5);
    v68 = __OFSUB__(v66, v67);
    v60 = v66 - v67;
    v61 = v68;
    if (v68)
    {
      goto LABEL_154;
    }

    v69 = &v10[16 * v54];
    v71 = *v69;
    v70 = *(v69 + 1);
    v68 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v68)
    {
      goto LABEL_156;
    }

    v68 = __OFADD__(v60, v72);
    v73 = v60 + v72;
    if (v68)
    {
      goto LABEL_158;
    }

    if (v73 >= v65)
    {
      v91 = &v55[16 * v57];
      v93 = *v91;
      v92 = *(v91 + 1);
      v68 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v68)
      {
        goto LABEL_164;
      }

      if (v60 < v94)
      {
        v57 = v54 - 2;
      }

      goto LABEL_110;
    }

    goto LABEL_88;
  }

  v11 = a6;
LABEL_145:
  v123 = *a1;
  if (!*a1)
  {
    goto LABEL_174;
  }

  v124 = v11;

  sub_1D6CCA224(&v142, v123, a3, a5, v124);

LABEL_147:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D6CCAC3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = *a4 + 24 * a3 - 24;
    v10 = result - a3;
LABEL_5:
    v23 = a3;
    v11 = (v8 + 24 * a3);
    v12 = *v11;
    v13 = v11[1];
    v21 = v10;
    v22 = v9;
    while (1)
    {
      v14 = *v9;
      v15 = *(v9 + 8);
      if (v12 != a5 || v13 != a6)
      {
        result = sub_1D72646CC();
        if ((result & 1) == 0)
        {
          v16 = v14 == a5 && v15 == a6;
          if (v16 || (result = sub_1D72646CC(), (result & 1) != 0) || v12 == v14 && v13 == v15 || (result = sub_1D72646CC(), (result & 1) == 0))
          {
LABEL_4:
            a3 = v23 + 1;
            v9 = v22 + 24;
            v10 = v21 - 1;
            if (v23 + 1 == a2)
            {
              return result;
            }

            goto LABEL_5;
          }
        }
      }

      if (!v8)
      {
        break;
      }

      v17 = *(v9 + 32);
      v18 = *(v9 + 16);
      v12 = *(v9 + 24);
      *(v9 + 24) = *v9;
      *(v9 + 40) = v18;
      *v9 = v12;
      *(v9 + 8) = v17;
      v13 = v17;
      v9 -= 24;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D6CCADA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  v7 = sub_1D726449C();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5E29730(0);
        v10 = sub_1D726276C();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;

      sub_1D6CCA3D0(v11, v12, a1, v8, a2, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_1D6CCAC3C(0, v6, 1, a1, a2, a3);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D6CCAF00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1D62FFD24(v6);
  }

  v7 = v6[2];
  v9[0] = (v6 + 4);
  v9[1] = v7;

  sub_1D6CCADA0(v9, a2, a3);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

void sub_1D6CCAFB4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, __n128 a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
    return;
  }

  v11 = a5.n128_f64[0];
  v12 = 0;
  v39 = a1 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v45[0] = *(v39 + 8 * v12);
    v14 = *a3;
    v45[14] = v45[0];
    sub_1D6EE5E70();

    sub_1D726327C();
    sub_1D6CC6040(a2, v45, v14, a4, v11, a6, a7, a8, v15, v16, v17, v18);
    v20 = v19;

    v21 = v20 >> 62;
    if (v20 >> 62)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v13 >> 62;
    if (v13 >> 62)
    {
      v38 = sub_1D7263BFC();
      v25 = v38 + v22;
      if (__OFADD__(v38, v22))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v24 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v23)
      {
        v26 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v23)
    {
      goto LABEL_14;
    }

LABEL_15:
    v13 = sub_1D7263DDC();
    v26 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v21)
    {
      break;
    }

    v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v28 >> 1) - v27) < v22)
    {
      goto LABEL_35;
    }

    v44 = v13;
    v30 = v26 + 8 * v27 + 32;
    if (v21)
    {
      if (v29 < 1)
      {
        goto LABEL_37;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030, MEMORY[0x1E69E6340]);
      for (i = 0; i != v29; ++i)
      {
        v32 = sub_1D6D876E0(v45, i, v20);
        v34 = *v33;

        (v32)(v45, 0);
        *(v30 + 8 * i) = v34;
      }
    }

    else
    {
      type metadata accessor for DebugFormatLayoutTreeItem(0);
      swift_arrayInitWithCopy();
    }

    v13 = v44;
    if (v22 >= 1)
    {
      v35 = *(v26 + 16);
      v36 = __OFADD__(v35, v22);
      v37 = v35 + v22;
      if (v36)
      {
        goto LABEL_36;
      }

      *(v26 + 16) = v37;
    }

LABEL_4:
    if (++v12 == v40)
    {
      return;
    }
  }

  v29 = sub_1D7263BFC();
  if (v29)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v22 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1D6CCB330(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    return;
  }

  v11 = a5.n128_f64[0];
  v12 = 0;
  v38 = a1 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v44[0] = *(v38 + 8 * v12);
    v44[14] = v44[0];
    sub_1D6EE5E70();

    sub_1D726327C();
    sub_1D6CC6040(a2, v44, a3 & 1, a4, v11, a6, a7, a8, v14, v15, v16, v17);
    v19 = v18;

    v20 = v19 >> 62;
    if (v19 >> 62)
    {
      v21 = sub_1D7263BFC();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v13 >> 62;
    if (v13 >> 62)
    {
      v37 = sub_1D7263BFC();
      v24 = v37 + v21;
      if (__OFADD__(v37, v21))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23 + v21;
      if (__OFADD__(v23, v21))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v22)
      {
        v25 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v24 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v22)
    {
      goto LABEL_14;
    }

LABEL_15:
    v13 = sub_1D7263DDC();
    v25 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v20)
    {
      break;
    }

    v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v27 >> 1) - v26) < v21)
    {
      goto LABEL_35;
    }

    v43 = v13;
    v29 = v25 + 8 * v26 + 32;
    if (v20)
    {
      if (v28 < 1)
      {
        goto LABEL_37;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030, MEMORY[0x1E69E6340]);
      for (i = 0; i != v28; ++i)
      {
        v31 = sub_1D6D876E0(v44, i, v19);
        v33 = *v32;

        (v31)(v44, 0);
        *(v29 + 8 * i) = v33;
      }
    }

    else
    {
      type metadata accessor for DebugFormatLayoutTreeItem(0);
      swift_arrayInitWithCopy();
    }

    v13 = v43;
    if (v21 >= 1)
    {
      v34 = *(v25 + 16);
      v35 = __OFADD__(v34, v21);
      v36 = v34 + v21;
      if (v35)
      {
        goto LABEL_36;
      }

      *(v25 + 16) = v36;
    }

LABEL_4:
    if (++v12 == v39)
    {
      return;
    }
  }

  v28 = sub_1D7263BFC();
  if (v28)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v21 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1D6CCB6AC(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9, double a10, double a11)
{
  v42 = *(a1 + 16);
  if (!v42)
  {
    return;
  }

  v19 = 0;
  v41 = a1 + 32;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v45[0] = *(v41 + 8 * v19);

    sub_1D6CC6040(a2, v45, 1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    v22 = v21;

    v23 = v22 >> 62;
    if (v22 >> 62)
    {
      v24 = sub_1D7263BFC();
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v20 >> 62;
    if (v20 >> 62)
    {
      v40 = sub_1D7263BFC();
      v27 = v40 + v24;
      if (__OFADD__(v40, v24))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v26 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v26 + v24;
      if (__OFADD__(v26, v24))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v25)
      {
        v28 = v20 & 0xFFFFFFFFFFFFFF8;
        if (v27 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v25)
    {
      goto LABEL_14;
    }

LABEL_15:
    v20 = sub_1D7263DDC();
    v28 = v20 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v23)
    {
      break;
    }

    v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v30 >> 1) - v29) < v24)
    {
      goto LABEL_35;
    }

    v46 = v24;
    v32 = v28 + 8 * v29 + 32;
    if (v23)
    {
      if (v31 < 1)
      {
        goto LABEL_37;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030, MEMORY[0x1E69E6340]);
      for (i = 0; i != v31; ++i)
      {
        v34 = sub_1D6D876E0(v45, i, v22);
        v36 = *v35;

        (v34)(v45, 0);
        *(v32 + 8 * i) = v36;
      }
    }

    else
    {
      type metadata accessor for DebugFormatLayoutTreeItem(0);
      swift_arrayInitWithCopy();
    }

    if (v46 >= 1)
    {
      v37 = *(v28 + 16);
      v38 = __OFADD__(v37, v46);
      v39 = v37 + v46;
      if (v38)
      {
        goto LABEL_36;
      }

      *(v28 + 16) = v39;
    }

LABEL_4:
    if (++v19 == v42)
    {
      return;
    }
  }

  v31 = sub_1D7263BFC();
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v24 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1D6CCB9F4(uint64_t a1, uint64_t a2)
{
  v193 = a1;
  v192 = type metadata accessor for DebugFormatLayoutModel(0);
  MEMORY[0x1EEE9AC00](v192, v4);
  v187 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v186 = &v171 - v8;
  v9 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v191 = &v171 - v16;
  sub_1D6CCCC8C(0);
  v176 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v175 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatItemNodeLayoutContext(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v174 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for DebugFormatLayoutOrderingModel(0);
  v183 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v23);
  v185 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v188 = &v171 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v195 = &v171 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v197 = &v171 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v171 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v190 = &v171 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v173 = &v171 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v177 = &v171 - v46;
  sub_1D725894C();
  *(v2 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_layoutResult) = a2;
  swift_beginAccess();
  LOBYTE(v199[0]) = 1;

  sub_1D726009C();
  swift_endAccess();
  v180 = v2;
  v181 = a2;
  v47 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 48);
  v184 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 40);
  v48 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 64);
  v179 = v10;
  if (v48)
  {
    v194 = *(v48 + 32);
  }

  else
  {
    type metadata accessor for FormatSourceMapCollection();
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E7CC8];
    *(v49 + 16) = MEMORY[0x1E69E7CC8];
    *(v49 + 24) = v50;
    v194 = v49;
  }

  v51 = v184 + 64;
  v52 = 1 << *(v184 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v184 + 64);
  v55 = (v52 + 63) >> 6;
  swift_bridgeObjectRetain_n();

  v57 = 0;
  v182 = MEMORY[0x1E69E7CC0];
  v58 = v183;
  v189 = v9;
  while (v54)
  {
LABEL_7:
    v59 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    if (*(*(v184 + 56) + ((v57 << 9) | (8 * v59))) >> 60 == 7)
    {
      v178 = v47;
      v61 = swift_projectBox();
      v62 = v175;
      sub_1D6CCCD50(v61, v175, sub_1D6CCCC8C);
      v172 = *(v62 + *(v176 + 48));
      v63 = v62;
      v64 = v174;
      sub_1D6CCCF4C(v63, v174, type metadata accessor for FormatItemNodeLayoutContext);
      sub_1D6729DB0(0);
      v171 = *(v65 + 48);
      v66 = v64;
      v67 = v173;
      sub_1D6CCCF4C(v66, v173, type metadata accessor for FormatItemNodeLayoutContext);
      *(v67 + v171) = v172;
      swift_storeEnumTagMultiPayload();
      sub_1D6CCCF4C(v67, v177, type metadata accessor for DebugFormatLayoutOrderingModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v182 = sub_1D6995D9C(0, v182[2] + 1, 1, v182);
      }

      v69 = v182[2];
      v68 = v182[3];
      if (v69 >= v68 >> 1)
      {
        v182 = sub_1D6995D9C((v68 > 1), v69 + 1, 1, v182);
      }

      v70 = v182;
      v182[2] = v69 + 1;
      result = sub_1D6CCCF4C(v177, v70 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v69, type metadata accessor for DebugFormatLayoutOrderingModel);
      v47 = v178;
    }
  }

  while (1)
  {
    v60 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      return result;
    }

    if (v60 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v60);
    ++v57;
    if (v54)
    {
      v57 = v60;
      goto LABEL_7;
    }
  }

  v71 = *(v47 + 16);
  if (v71)
  {
    v72 = *(v179 + 80);
    v178 = v47;
    v73 = v47 + ((v72 + 32) & ~v72);
    v74 = *(v179 + 72);
    v75 = MEMORY[0x1E69E7CC0];
    do
    {
      v76 = v191;
      sub_1D6CCCD50(v73, v191, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D6CCCF4C(v76, v13, type metadata accessor for FeedItemSupplementaryAttributes);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v77 = *(v13 + 16);
        v78 = *(v13 + 5);
        *(v37 + 4) = *(v13 + 4);
        *(v37 + 5) = v78;
        v79 = *(v13 + 7);
        *(v37 + 6) = *(v13 + 6);
        *(v37 + 7) = v79;
        v80 = *(v13 + 1);
        *v37 = *v13;
        *(v37 + 1) = v80;
        v81 = *(v13 + 3);
        *(v37 + 2) = *(v13 + 2);
        *(v37 + 3) = v81;
        *(v37 + 16) = v77;
        swift_storeEnumTagMultiPayload();
        sub_1D6CCCF4C(v37, v190, type metadata accessor for DebugFormatLayoutOrderingModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_1D6995D9C(0, v75[2] + 1, 1, v75);
        }

        v83 = v75[2];
        v82 = v75[3];
        if (v83 >= v82 >> 1)
        {
          v75 = sub_1D6995D9C((v82 > 1), v83 + 1, 1, v75);
        }

        v75[2] = v83 + 1;
        sub_1D6CCCF4C(v190, v75 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v83, type metadata accessor for DebugFormatLayoutOrderingModel);
      }

      else
      {
        sub_1D6CCCDB8(v13, type metadata accessor for FeedItemSupplementaryAttributes);
      }

      v73 += v74;
      --v71;
    }

    while (v71);
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7259E6C();
  v190 = v85;
  v191 = v84;
  *&v200 = v182;
  sub_1D69888D8(v75);
  sub_1D6CCCD08(&qword_1EC894CF0, type metadata accessor for DebugFormatLayoutOrderingModel, &unk_1D72E2FC8);
  v86 = sub_1D72626AC();

  v87 = *(v86 + 16);
  v88 = v188;
  v89 = v195;
  if (v87)
  {
    v208 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v90 = *(v183 + 80);
    v184 = v86;
    v91 = v86 + ((v90 + 32) & ~v90);
    v189 = *(v183 + 72);
    do
    {
      v109 = v197;
      sub_1D6CCCD50(v91, v197, type metadata accessor for DebugFormatLayoutOrderingModel);
      sub_1D6CCCD50(v109, v89, type metadata accessor for DebugFormatLayoutOrderingModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v110 = *(v89 + 80);
        v204 = *(v89 + 64);
        v205 = v110;
        v111 = *(v89 + 112);
        v206 = *(v89 + 96);
        v207 = v111;
        v112 = *(v89 + 16);
        v200 = *v89;
        v201 = v112;
        v113 = *(v89 + 48);
        v202 = *(v89 + 32);
        v203 = v113;
        v114 = *(v89 + 128);
        sub_1D6729D5C(&v200);
        v115 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
        v116 = *(v114 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
        swift_beginAccess();
        v117 = v116[2];
        v118 = v116[3];
        v119 = v116[4];
        v120 = v116[5];
        v209.origin.x = v117;
        v209.origin.y = v118;
        v209.size.width = v119;
        v209.size.height = v120;
        if (CGRectGetMinY(v209) < 0.0)
        {
          v210.origin.x = v117;
          v210.origin.y = v118;
          v210.size.width = v119;
          v210.size.height = v120;
          CGRectGetMinY(v210);
        }

        v211.origin.x = v117;
        v211.origin.y = v118;
        v211.size.width = v119;
        v211.size.height = v120;
        if (CGRectGetMinX(v211) < 0.0)
        {
          v212.origin.x = v117;
          v212.origin.y = v118;
          v212.size.width = v119;
          v212.size.height = v120;
          CGRectGetMinX(v212);
        }

        sub_1D726327C();
        sub_1D72632BC();
        sub_1D72632AC();
        v122 = v121;
        v124 = v123;
        v126 = v125;
        v128 = v127;
        sub_1D6CCCD50(v197, v88, type metadata accessor for DebugFormatLayoutOrderingModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v129 = *(v88 + 80);
          v199[4] = *(v88 + 64);
          v199[5] = v129;
          v130 = *(v88 + 112);
          v199[6] = *(v88 + 96);
          v199[7] = v130;
          v131 = *(v88 + 16);
          v199[0] = *v88;
          v199[1] = v131;
          v132 = *(v88 + 48);
          v199[2] = *(v88 + 32);
          v199[3] = v132;
          v133 = *(v88 + 128);

          sub_1D6729D5C(v199);
          v134 = *(v133 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
          v135 = *(v134 + 48);
          v136 = *(v134 + 56);
        }

        else
        {
          sub_1D6729DB0(0);
          v159 = *(*(v88 + *(v158 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
          v135 = *(v159 + 48);
          v136 = *(v159 + 56);

          sub_1D6CCCDB8(v88, type metadata accessor for FormatItemNodeLayoutContext);
        }

        v160 = v186;
        v161 = v135;
        v162 = v194;
        sub_1D69F7E68(v161, v136, &v186[*(v192 + 32)]);

        *v160 = v114;
        *(v160 + 8) = 0u;
        *(v160 + 24) = 0u;
        *(v160 + 40) = 2;
        *(v160 + 48) = v117;
        *(v160 + 56) = v118;
        *(v160 + 64) = v119;
        *(v160 + 72) = v120;
        *(v160 + 96) = 0u;
        *(v160 + 112) = 0u;
        *(v160 + 80) = 0u;
        v163 = v190;
        *(v160 + 128) = v191;
        *(v160 + 136) = v163;
        v164 = *(*(v114 + v115) + 96);

        v165 = v193;

        sub_1D6CCB6AC(v164, v165, v162, v117, v118, v119, v120, v122, v124, v126, v128);
        v167 = v166;

        type metadata accessor for DebugFormatLayoutTreeItem(0);
        v168 = swift_allocObject();
        sub_1D725894C();
        *(v168 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
        sub_1D6CCCD50(v160, v168 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
        swift_beginAccess();
        LOBYTE(v198) = 1;
        sub_1D726009C();
        swift_endAccess();
        *(v168 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = 1;
        swift_beginAccess();
        v198 = v167;
        sub_1D6847030(0);
        sub_1D726009C();
        swift_endAccess();
        sub_1D6CCCDB8(v160, type metadata accessor for DebugFormatLayoutModel);
        sub_1D6CCCDB8(v197, type metadata accessor for DebugFormatLayoutOrderingModel);
        v89 = v195;
      }

      else
      {
        sub_1D6729DB0(0);
        v138 = v137;
        v139 = *(v89 + *(v137 + 48));
        v140 = OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
        v141 = *(v139 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
        swift_beginAccess();
        v142 = v141[2];
        v143 = v141[3];
        v144 = v141[4];
        v145 = v141[5];
        v213.origin.x = v142;
        v213.origin.y = v143;
        v213.size.width = v144;
        v213.size.height = v145;
        if (CGRectGetMinY(v213) < 0.0)
        {
          v214.origin.x = v142;
          v214.origin.y = v143;
          v214.size.width = v144;
          v214.size.height = v145;
          CGRectGetMinY(v214);
        }

        v215.origin.x = v142;
        v215.origin.y = v143;
        v215.size.width = v144;
        v215.size.height = v145;
        MinX = CGRectGetMinX(v215);
        v147 = v185;
        if (MinX < 0.0)
        {
          v216.origin.x = v142;
          v216.origin.y = v143;
          v216.size.width = v144;
          v216.size.height = v145;
          CGRectGetMinX(v216);
        }

        sub_1D726327C();
        sub_1D72632BC();
        sub_1D72632AC();
        v149 = v148;
        v151 = v150;
        v153 = v152;
        v155 = v154;
        sub_1D6CCCD50(v197, v147, type metadata accessor for DebugFormatLayoutOrderingModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v92 = *(v147 + 80);
          v204 = *(v147 + 64);
          v205 = v92;
          v93 = *(v147 + 112);
          v206 = *(v147 + 96);
          v207 = v93;
          v94 = *(v147 + 16);
          v200 = *v147;
          v201 = v94;
          v95 = *(v147 + 48);
          v202 = *(v147 + 32);
          v203 = v95;
          v96 = *(v147 + 128);

          sub_1D6729D5C(&v200);
          v97 = *(v96 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
          v98 = *(v97 + 48);
          v99 = *(v97 + 56);
        }

        else
        {
          v156 = *(*(v147 + *(v138 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
          v157 = v147;
          v98 = *(v156 + 48);
          v99 = *(v156 + 56);

          sub_1D6CCCDB8(v157, type metadata accessor for FormatItemNodeLayoutContext);
        }

        v100 = v187;
        v101 = v98;
        v102 = v194;
        sub_1D69F7E68(v101, v99, &v187[*(v192 + 32)]);

        *v100 = v139;
        *(v100 + 8) = 0u;
        *(v100 + 24) = 0u;
        *(v100 + 40) = 1;
        *(v100 + 48) = v142;
        *(v100 + 56) = v143;
        *(v100 + 64) = v144;
        *(v100 + 72) = v145;
        *(v100 + 96) = 0u;
        *(v100 + 112) = 0u;
        *(v100 + 80) = 0u;
        v103 = v190;
        *(v100 + 128) = v191;
        *(v100 + 136) = v103;
        v104 = *(*(v139 + v140) + 96);

        v105 = v193;

        sub_1D6CCB6AC(v104, v105, v102, v142, v143, v144, v145, v149, v151, v153, v155);
        v107 = v106;

        type metadata accessor for DebugFormatLayoutTreeItem(0);
        v108 = swift_allocObject();
        sub_1D725894C();
        *(v108 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
        sub_1D6CCCD50(v100, v108 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
        swift_beginAccess();
        LOBYTE(v199[0]) = 1;
        sub_1D726009C();
        swift_endAccess();
        *(v108 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = 1;
        swift_beginAccess();
        *&v199[0] = v107;
        sub_1D6847030(0);
        sub_1D726009C();
        swift_endAccess();
        sub_1D6CCCDB8(v100, type metadata accessor for DebugFormatLayoutModel);
        sub_1D6CCCDB8(v197, type metadata accessor for DebugFormatLayoutOrderingModel);
        v89 = v195;
        sub_1D6CCCDB8(v195, type metadata accessor for FormatItemNodeLayoutContext);
        v88 = v188;
      }

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v91 += v189;
      --v87;
    }

    while (v87);

    v169 = v208;
  }

  else
  {

    v169 = MEMORY[0x1E69E7CC0];
  }

  v170 = v180;
  swift_beginAccess();
  *&v199[0] = v169;
  sub_1D6847030(0);
  sub_1D726009C();
  swift_endAccess();

  return v170;
}

void sub_1D6CCCC8C(uint64_t a1)
{
  if (!qword_1EDF22520[0])
  {
    type metadata accessor for FormatItemNodeLayoutContext(255);
    type metadata accessor for FormatItemNodeDataLayoutAttributes(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_1EDF22520);
    }
  }
}

uint64_t sub_1D6CCCD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6CCCD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CCCDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6CCCE18(uint64_t a1)
{
  if (!qword_1EDF2B540[0])
  {
    type metadata accessor for FormatButtonNodeData(255);
    sub_1D6CC81D4(255, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF2B540);
    }
  }
}

uint64_t sub_1D6CCCEB8(uint64_t a1, uint64_t a2)
{
  sub_1D6CC81D4(0, &unk_1EC890018, type metadata accessor for FormatSourceMapEntry, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CCCF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CCCFD0(uint64_t a1, uint64_t a2)
{
  sub_1D6CC81D4(0, &qword_1EDF065A8, type metadata accessor for FormatStateViewNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6CCD0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1D6CCD0FC(uint64_t a1)
{
  if (!*v1)
  {
    v2 = *(a1 + *(type metadata accessor for FeedHeadline(0) + 56));
    if (v2)
    {
      v3 = sel_duration;
      goto LABEL_6;
    }

    return 0.0;
  }

  if (*v1 != 1)
  {
    v5 = *(a1 + 40);
    v6 = [v5 sourceChannel];
    v7 = 0.0;
    if (v6)
    {
      if ([v6 allowsRecipes] && (v8 = objc_msgSend(v5, sel_recipeIDs)) != 0)
      {
        v9 = v8;
        v10 = sub_1D726267C();

        swift_unknownObjectRelease();
        v11 = *(v10 + 16);

        return v11;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return v7;
  }

  v2 = *(a1 + 40);
  v3 = sel_videoDuration;
LABEL_6:

  [v2 v3];
  return result;
}

uint64_t sub_1D6CCD23C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7275446F65646976;
  if (v2 == 1)
  {
    v4 = 0xED00006E6F697461;
  }

  else
  {
    v3 = 0x6F43657069636572;
    v4 = 0xEB00000000746E75;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7275446B63617274;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006E6F697461;
  }

  v7 = 0x7275446F65646976;
  if (*a2 == 1)
  {
    v8 = 0xED00006E6F697461;
  }

  else
  {
    v7 = 0x6F43657069636572;
    v8 = 0xEB00000000746E75;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7275446B63617274;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006E6F697461;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6CCD350()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6CCD404(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6CCD4A4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6CCD554@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6CCDC80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6CCD584(uint64_t *a1@<X8>)
{
  v2 = 0xED00006E6F697461;
  v3 = *v1;
  v4 = 0x7275446F65646976;
  v5 = 0xEB00000000746E75;
  if (v3 == 1)
  {
    v5 = 0xED00006E6F697461;
  }

  else
  {
    v4 = 0x6F43657069636572;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7275446B63617274;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t FormatHeadlineBinding.Float.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6CCD72C()
{
  result = qword_1EC894CF8;
  if (!qword_1EC894CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894CF8);
  }

  return result;
}

unint64_t sub_1D6CCD780(uint64_t a1)
{
  result = sub_1D6CCD7A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CCD7A8()
{
  result = qword_1EC894D00;
  if (!qword_1EC894D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D00);
  }

  return result;
}

unint64_t sub_1D6CCD7FC(void *a1)
{
  a1[1] = sub_1D66597F0();
  a1[2] = sub_1D66FE674();
  result = sub_1D6CCD72C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CCD888()
{
  result = qword_1EC894D08;
  if (!qword_1EC894D08)
  {
    sub_1D6CCD8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D08);
  }

  return result;
}

void sub_1D6CCD8E0()
{
  if (!qword_1EC894D10)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894D10);
    }
  }
}

unint64_t sub_1D6CCD934()
{
  result = qword_1EC894D18;
  if (!qword_1EC894D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D18);
  }

  return result;
}

unint64_t sub_1D6CCD988()
{
  result = qword_1EDF29768;
  if (!qword_1EDF29768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29768);
  }

  return result;
}

uint64_t sub_1D6CCD9DC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v33 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = v33 - v16;
  if (!*a1)
  {
    v19 = v14;
    sub_1D5C0C74C(a2, v33 - v16);
    v20 = *&v17[*(v19 + 56)];
    if (v20)
    {
      [v20 duration];
      v22 = v21;
    }

    else
    {
      v22 = 0.0;
    }

    v29 = 0x7544206B63617254;
    v30 = 0xEE006E6F69746172;
    goto LABEL_15;
  }

  if (*a1 != 1)
  {
    v17 = v15;
    sub_1D5C0C74C(a2, v15);
    v23 = *(v17 + 5);
    v24 = [v23 sourceChannel];
    if (v24)
    {
      if ([v24 allowsRecipes])
      {
        v25 = [v23 recipeIDs];
        if (v25)
        {
          v26 = v25;
          v27 = sub_1D726267C();

          swift_unknownObjectRelease();
          v28 = *(v27 + 16);

          v22 = v28;
LABEL_12:
          v29 = 0x4320657069636552;
          v30 = 0xEC000000746E756FLL;
LABEL_15:
          sub_1D711A80C(v29, v30, *&v22, 0, a3);
          goto LABEL_16;
        }
      }

      swift_unknownObjectRelease();
    }

    v22 = 0.0;
    goto LABEL_12;
  }

  sub_1D5C0C74C(a2, v11);
  [v11[5] videoDuration];
  sub_1D711A80C(0x7544206F65646956, 0xEE006E6F69746172, v18, 0, a3);
  v17 = v11;
LABEL_16:
  sub_1D5C10040(v17);
  v31 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v31 - 8) + 56))(a3, 0, 1, v31);
}

unint64_t sub_1D6CCDC80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for DebugFormatCanvasFrameView(uint64_t a1)
{
  result = qword_1EC894D28;
  if (!qword_1EC894D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CCDEF0(uint64_t a1)
{
  result = sub_1D7259B3C();
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

uint64_t sub_1D6CCDF90(uint64_t a1)
{
  sub_1D5B6D404(0, &qword_1EDF0BB68, type metadata accessor for WebEmbedDatastoreCacheKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v38 = &v36 - v4;
  v39 = sub_1D72585BC();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v6);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v36 - v22;
  sub_1D6CD349C(a1, v15, type metadata accessor for WebEmbedDataVisualization);
  sub_1D6CD349C(v15, v19, type metadata accessor for WebEmbedDataVisualization);
  v45 = sub_1D6D28818();

  sub_1D6CD315C(&v45);

  sub_1D6CD4D24(v15, type metadata accessor for WebEmbedDataVisualization);
  *&v19[*(v16 + 20)] = v45;
  sub_1D6CD4CBC(v19, v23, type metadata accessor for WebEmbedDatastoreCacheKey);
  v24 = sub_1D6D28818();
  v25 = *(v24 + 16);
  if (v25)
  {
    v27 = *(v5 + 16);
    v26 = v5 + 16;
    v28 = *(v26 + 64);
    v36 = v24;
    v29 = v24 + ((v28 + 32) & ~v28);
    v41 = *(v26 + 56);
    v42 = v27;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v43 = v23;
    v40 = (v26 - 8);
    do
    {
      v33 = v42;
      v42(v11, v29, v32);

      sub_1D725B86C();

      v34 = v44;
      if (!v44)
      {
        v34 = MEMORY[0x1E69E7CD0];
      }

      v45 = v34;
      sub_1D62CFC98(v43, v31);
      sub_1D6CD512C(v31, &qword_1EDF0BB68, type metadata accessor for WebEmbedDatastoreCacheKey, MEMORY[0x1E69E6720]);
      v33(v30, v11, v32);
      v44 = v45;

      sub_1D725B87C();

      (*v40)(v11, v32);
      v29 += v41;
      --v25;
    }

    while (v25);

    v23 = v43;
  }

  else
  {
  }

  return sub_1D6CD4D24(v23, type metadata accessor for WebEmbedDatastoreCacheKey);
}

void sub_1D6CCE3D8(uint64_t a1)
{
  v154 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v154, v2);
  v4 = (&v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v138 - v7);
  v9 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v145 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v144 = &v138 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v143 = &v138 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v142 = &v138 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v141 = &v138 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v140 = &v138 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v138 - v32;
  v34 = *a1;
  v153 = *(a1 + 8);
  v36 = v35;
  v37 = sub_1D725B7FC();
  v38 = v10;
  v39 = 0;
  v41 = v37 + 64;
  v40 = *(v37 + 64);
  v155 = v37;
  v42 = 1 << *(v37 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v40;
  v45 = (v42 + 63) >> 6;
  v150 = v4;
  v151 = MEMORY[0x1E69E7CC0];
  v147 = v33;
  v148 = v8;
  v146 = v38;
  v156 = v34;
  v149 = v36;
  while (v44)
  {
LABEL_10:
    v47 = *(v155 + 56);
    v152 = *(v38 + 72);
    sub_1D6CD349C(v47 + v152 * (__clz(__rbit64(v44)) | (v39 << 6)), v33, type metadata accessor for WebEmbedDatastoreUpdate);
    sub_1D6CD4CBC(v33, v36, type metadata accessor for WebEmbedDatastoreUpdate);
    sub_1D6CD349C(v36, v8, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_unknownObjectRetain();
      sub_1D6CD4D24(v8, type metadata accessor for WebEmbedDataVisualization);
      v48 = 0xF000000000000007;
    }

    else
    {
      v48 = *v8;
      swift_unknownObjectRetain();
    }

    v44 &= v44 - 1;
    if (v153 > 2)
    {
      if (v153 == 3)
      {
        if ((~v48 & 0xF000000000000007) != 0)
        {
          if (v48 >> 61 != 6)
          {
            goto LABEL_56;
          }

          v77 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v78 = [v156 identifier];
          v79 = sub_1D726207C();
          v81 = v80;

          v138 = v77;
          v82 = [*(v77 + 48) identifier];
          v83 = sub_1D726207C();
          v85 = v84;

          if (v79 == v83 && v81 == v85)
          {

            v38 = v146;
            v36 = v149;
LABEL_74:
            sub_1D6CD349C(v36, v143, type metadata accessor for WebEmbedDatastoreUpdate);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v33 = v147;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
            }

            v117 = v151[2];
            v116 = v151[3];
            v139 = v48;
            if (v117 >= v116 >> 1)
            {
              v151 = sub_1D69932F0((v116 > 1), v117 + 1, 1, v151);
            }

            swift_unknownObjectRelease();

            sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
            v118 = v151;
            v151[2] = v117 + 1;
            v119 = v118 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v117 * v152;
            v120 = v143;
            goto LABEL_97;
          }

          v87 = sub_1D72646CC();

          v38 = v146;
          v36 = v149;
          if (v87)
          {
            goto LABEL_74;
          }

          goto LABEL_55;
        }

LABEL_4:
        sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();
      }

      else if (v153 == 4)
      {
        if ((~v48 & 0xF000000000000007) == 0)
        {
          goto LABEL_4;
        }

        if (v48 >> 61 != 5)
        {
          goto LABEL_56;
        }

        v60 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v61 = [v156 identifier];
        v62 = sub_1D726207C();
        v64 = v63;

        v138 = v60;
        v65 = [*(v60 + 48) identifier];
        v66 = sub_1D726207C();
        v68 = v67;

        if (v62 == v66 && v64 == v68)
        {

          v33 = v147;
LABEL_86:
          v36 = v149;
          sub_1D6CD349C(v149, v144, type metadata accessor for WebEmbedDatastoreUpdate);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
          }

          v38 = v146;
          v126 = v151[2];
          v125 = v151[3];
          v139 = v48;
          if (v126 >= v125 >> 1)
          {
            v151 = sub_1D69932F0((v125 > 1), v126 + 1, 1, v151);
          }

          swift_unknownObjectRelease();

          sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
          v127 = v151;
          v151[2] = v126 + 1;
          v119 = v127 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v126 * v152;
          v120 = v144;
          goto LABEL_97;
        }

        v70 = sub_1D72646CC();

        v33 = v147;
        if (v70)
        {
          goto LABEL_86;
        }

        v36 = v149;
        sub_1D6CD4D24(v149, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();

        sub_1D5FC5034(v48);
        v4 = v150;
        v8 = v148;
        v38 = v146;
      }

      else
      {
        sub_1D5FC5034(v48);
        v99 = [v156 identifier];
        v139 = sub_1D726207C();
        v101 = v100;

        sub_1D6CD349C(v36, v4, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6CD4D24(v4, type metadata accessor for WebEmbedDataVisualization);

          swift_unknownObjectRelease();
          goto LABEL_109;
        }

        v102 = *v4;
        v103 = *v4 >> 61;
        if (v103 > 2)
        {
          v104 = *(*((v102 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 48);
          swift_unknownObjectRetain();

          goto LABEL_61;
        }

        if (v103)
        {

          swift_unknownObjectRelease();

          goto LABEL_109;
        }

        v104 = *(*(v102 + 16) + 56);
        swift_unknownObjectRetain();

        if (v104)
        {
LABEL_61:
          v105 = [v104 identifier];
          swift_unknownObjectRelease();
          v106 = sub_1D726207C();
          v108 = v107;

          if (v139 == v106 && v101 == v108)
          {

            goto LABEL_68;
          }

          v109 = sub_1D72646CC();

          v38 = v146;
          if ((v109 & 1) == 0)
          {
            goto LABEL_108;
          }

LABEL_68:
          v36 = v149;
          sub_1D6CD349C(v149, v145, type metadata accessor for WebEmbedDatastoreUpdate);
          v110 = swift_isUniquelyReferenced_nonNull_native();
          v4 = v150;
          v33 = v147;
          if ((v110 & 1) == 0)
          {
            v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
          }

          v112 = v151[2];
          v111 = v151[3];
          if (v112 >= v111 >> 1)
          {
            v151 = sub_1D69932F0((v111 > 1), v112 + 1, 1, v151);
          }

          swift_unknownObjectRelease();
          sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
          v113 = v151;
          v151[2] = v112 + 1;
          v114 = v113 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + v112 * v152;
          v38 = v146;
          sub_1D6CD4CBC(v145, v114, type metadata accessor for WebEmbedDatastoreUpdate);
          v8 = v148;
        }

        else
        {

LABEL_108:
          swift_unknownObjectRelease();
          v4 = v150;
LABEL_109:
          v36 = v149;
          v33 = v147;
          sub_1D6CD4D24(v149, type metadata accessor for WebEmbedDatastoreUpdate);
          v8 = v148;
        }
      }
    }

    else if (v153)
    {
      if (v153 == 1)
      {
        if ((~v48 & 0xF000000000000007) == 0)
        {
          goto LABEL_4;
        }

        if (v48 >> 61 == 3)
        {
          v49 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v50 = [v156 identifier];
          v51 = sub_1D726207C();
          v53 = v52;

          v138 = v49;
          v54 = [*(v49 + 48) identifier];
          v55 = sub_1D726207C();
          v57 = v56;

          if (v51 == v55 && v53 == v57)
          {

            v38 = v146;
            v36 = v149;
LABEL_80:
            sub_1D6CD349C(v36, v141, type metadata accessor for WebEmbedDatastoreUpdate);
            v121 = swift_isUniquelyReferenced_nonNull_native();
            v33 = v147;
            if ((v121 & 1) == 0)
            {
              v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
            }

            v123 = v151[2];
            v122 = v151[3];
            v139 = v48;
            if (v123 >= v122 >> 1)
            {
              v151 = sub_1D69932F0((v122 > 1), v123 + 1, 1, v151);
            }

            swift_unknownObjectRelease();

            sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
            v124 = v151;
            v151[2] = v123 + 1;
            v119 = v124 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v123 * v152;
            v120 = v141;
            goto LABEL_97;
          }

          v59 = sub_1D72646CC();

          v38 = v146;
          v36 = v149;
          if (v59)
          {
            goto LABEL_80;
          }

          goto LABEL_55;
        }

LABEL_56:
        sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();
        v4 = v150;
        sub_1D5FC5034(v48);
      }

      else
      {
        if ((~v48 & 0xF000000000000007) == 0)
        {
          goto LABEL_4;
        }

        if (v48 >> 61 != 4)
        {
          goto LABEL_56;
        }

        v88 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v89 = [v156 identifier];
        v90 = sub_1D726207C();
        v92 = v91;

        v138 = v88;
        v93 = [*(v88 + 48) identifier];
        v94 = sub_1D726207C();
        v96 = v95;

        if (v90 == v94 && v92 == v96)
        {

          v38 = v146;
          v36 = v149;
LABEL_92:
          sub_1D6CD349C(v36, v142, type metadata accessor for WebEmbedDatastoreUpdate);
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v33 = v147;
          if ((v128 & 1) == 0)
          {
            v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
          }

          v130 = v151[2];
          v129 = v151[3];
          v139 = v48;
          if (v130 >= v129 >> 1)
          {
            v151 = sub_1D69932F0((v129 > 1), v130 + 1, 1, v151);
          }

          swift_unknownObjectRelease();

          sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
          v131 = v151;
          v151[2] = v130 + 1;
          v119 = v131 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v130 * v152;
          v120 = v142;
LABEL_97:
          sub_1D6CD4CBC(v120, v119, type metadata accessor for WebEmbedDatastoreUpdate);
          v132 = v139;
          goto LABEL_98;
        }

        v98 = sub_1D72646CC();

        v38 = v146;
        v36 = v149;
        if (v98)
        {
          goto LABEL_92;
        }

LABEL_55:
        sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();

        sub_1D5FC5034(v48);
        v4 = v150;
        v33 = v147;
        v8 = v148;
      }
    }

    else
    {
      if ((~v48 & 0xF000000000000007) == 0)
      {
        goto LABEL_4;
      }

      if (v48 >> 61)
      {
        sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();
        sub_1D5FC5034(v48);
        v38 = v146;
      }

      else
      {
        v71 = *(v48 + 16);

        v72 = [v156 UMCCanonicalID];
        if (!v72)
        {
          swift_unknownObjectRelease();

          goto LABEL_111;
        }

        v73 = v72;
        v74 = sub_1D726207C();
        v76 = v75;

        if (v74 == *(v71 + 40) && v76 == *(v71 + 48))
        {

          v33 = v147;
LABEL_101:
          sub_1D6CD349C(v149, v140, type metadata accessor for WebEmbedDatastoreUpdate);
          v134 = swift_isUniquelyReferenced_nonNull_native();
          v38 = v146;
          if ((v134 & 1) == 0)
          {
            v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
          }

          v136 = v151[2];
          v135 = v151[3];
          v138 = v136 + 1;
          if (v136 >= v135 >> 1)
          {
            v151 = sub_1D69932F0((v135 > 1), v136 + 1, 1, v151);
          }

          swift_unknownObjectRelease();

          v36 = v149;
          sub_1D6CD4D24(v149, type metadata accessor for WebEmbedDatastoreUpdate);
          v137 = v151;
          v151[2] = v138;
          sub_1D6CD4CBC(v140, v137 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v136 * v152, type metadata accessor for WebEmbedDatastoreUpdate);
          v132 = v48;
LABEL_98:
          sub_1D5FC5034(v132);
          v4 = v150;
          v8 = v148;
        }

        else
        {
          v133 = sub_1D72646CC();

          v33 = v147;
          if (v133)
          {
            goto LABEL_101;
          }

          swift_unknownObjectRelease();

          v4 = v150;
          v8 = v148;
LABEL_111:
          v38 = v146;
          v36 = v149;
          sub_1D6CD4D24(v149, type metadata accessor for WebEmbedDatastoreUpdate);
          sub_1D5FC5034(v48);
        }
      }
    }
  }

  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v46 >= v45)
    {

      return;
    }

    v44 = *(v41 + 8 * v46);
    ++v39;
    if (v44)
    {
      v39 = v46;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D6CCF50C(char *a1)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6D404(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - v10;
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(a1 + 1);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v39 = v1;
    v40 = v17;
    v42 = *(v1 + 32);
    v20 = type metadata accessor for WebEmbedDataVisualizationDataResult(0);
    v37 = v4;
    v38 = v3;
    v21 = v7;
    v22 = v20;
    v23 = *(v20 + 24);
    v24 = *(v13 + 16);
    v24(v16, &a1[v23], v12);
    v25 = *(a1 + 2);
    v26 = type metadata accessor for WebEmbedDataSourceJson(0);
    v41 = v16;
    v27 = v26;
    v24(&v11[*(v26 + 32)], &a1[v23], v12);
    v28 = *(v22 + 28);
    v29 = v27[9];
    v30 = sub_1D72577EC();
    (*(*(v30 - 8) + 16))(&v11[v29], &a1[v28], v30);
    v31 = *&a1[*(v22 + 32)];

    v32 = v31;
    sub_1D725890C();
    v34 = v37;
    v33 = v38;
    (*(v37 + 16))(v11, v21, v38);
    *&v11[v27[5]] = v25;
    sub_1D725880C();
    (*(v34 + 8))(v21, v33);
    v35 = &v11[v27[6]];
    *v35 = v40;
    *(v35 + 1) = v18;
    *&v11[v27[10]] = v32;
    v36 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
    sub_1D725B87C();
    sub_1D6CD1620(&a1[v23]);
  }
}

void sub_1D6CCF888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = sub_1D72585BC();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6D404(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v27 - v23;
  sub_1D725B86C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D6CD512C(v15, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  }

  else
  {
    v28 = a2;
    sub_1D6CD4CBC(v15, v24, type metadata accessor for WebEmbedDataSourceCacheEntry);
    sub_1D6CD4CBC(v24, v20, type metadata accessor for WebEmbedDataSourceCacheEntry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D6CD4D24(v20, type metadata accessor for WebEmbedDataSourceCacheEntry);
    a2 = v28;
    if (EnumCaseMultiPayload != 1)
    {
      return;
    }
  }

  (*(v29 + 16))(v31, a1, v30);
  v26 = v32;
  *v11 = a2;
  v11[1] = v26;
  swift_storeEnumTagMultiPayload();
  (*(v17 + 56))(v11, 0, 1, v16);

  sub_1D725B87C();
  sub_1D6CD1620(a1);
}

double sub_1D6CCFBEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_1D6CD349C(a3, a1, type metadata accessor for WebEmbedDataVisualization);
  *a2 = *(a4 + *(type metadata accessor for WebEmbedDatastoreUpdate(0) + 20));

  return result;
}

uint64_t sub_1D6CCFC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[11] = a2;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B6D404(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1D5B6D404(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v5);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6CCFE3C, 0, 0);
}

uint64_t sub_1D6CCFE3C(__n128 a1)
{
  v49 = v1;
  v2 = *(v1 + 96);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + 168);
    v47 = *(v1 + 136);
    v5 = *(v4 + 80);
    v6 = v2 + ((v5 + 32) & ~v5);
    v44 = (v5 + 40) & ~v5;
    v46 = *(v4 + 72);
    do
    {
      v10 = *(v1 + 200);
      v9 = *(v1 + 208);
      v11 = *(v1 + 192);
      v12 = *(v1 + 144);
      sub_1D6CD349C(v6, v9, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD06D0(v9);
      sub_1D6CD349C(v9, v10, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD349C(v10, v12, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD349C(v10, v11, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = *(v1 + 192);
        v14 = sub_1D6D2968C();
        v15 = sub_1D6D29D78();
        v48 = v14;
        sub_1D6985118(v15);
        *(v1 + 72) = v48;
        v16 = MEMORY[0x1E6968FB0];
        sub_1D5B6D404(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
        sub_1D72585BC();
        sub_1D5B6D594(&qword_1EDF053F0, &qword_1EDF05400, v16);
        sub_1D5B6CE14(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        v17 = sub_1D72623CC();

        sub_1D6CD4D24(v13, type metadata accessor for WebEmbedDataVisualization);
      }

      else
      {
        v18 = **(v1 + 192);
        if (v18 >> 61 == 2)
        {
          v17 = *(*((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
        }

        else
        {
          v19 = sub_1D6F86D04();
          v20 = sub_1D6F87060();
          v48 = v19;
          sub_1D6985118(v20);
          *(v1 + 80) = v48;
          v21 = MEMORY[0x1E6968FB0];
          sub_1D5B6D404(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
          sub_1D72585BC();
          sub_1D5B6D594(&qword_1EDF053F0, &qword_1EDF05400, v21);
          sub_1D5B6CE14(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          v17 = sub_1D72623CC();
        }
      }

      v48 = v17;

      sub_1D6CD315C(&v48);
      v22 = *(v1 + 200);
      v24 = *(v1 + 144);
      v23 = *(v1 + 152);
      v25 = *(v1 + 128);

      sub_1D6CD4D24(v22, type metadata accessor for WebEmbedDataVisualization);
      *(v24 + *(v47 + 20)) = v48;
      sub_1D6CD4CBC(v24, v23, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D725B86C();
      sub_1D6CD4D24(v23, type metadata accessor for WebEmbedDatastoreCacheKey);
      v26 = type metadata accessor for WebEmbedDatastoreUpdate(0);
      v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
      sub_1D6CD512C(v25, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
      if (v27 == 1)
      {
        v45 = v3;
        v28 = *(v1 + 208);
        v29 = *(v1 + 184);
        v30 = *(v1 + 112);
        v31 = *(v1 + 120);
        v32 = *(v1 + 104);
        v33 = sub_1D726294C();
        v34 = *(v33 - 8);
        (*(v34 + 56))(v31, 1, 1, v33);
        sub_1D6CD349C(v28, v29, type metadata accessor for WebEmbedDataVisualization);
        v35 = swift_allocObject();
        v35[2] = 0;
        v35[3] = 0;
        v35[4] = v32;
        sub_1D6CD4CBC(v29, v35 + v44, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6CD3504(v31, v30, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
        LODWORD(v29) = (*(v34 + 48))(v30, 1, v33);

        v36 = *(v1 + 112);
        if (v29 == 1)
        {
          sub_1D6CD512C(*(v1 + 112), &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
        }

        else
        {
          sub_1D726293C();
          (*(v34 + 8))(v36, v33);
        }

        if (v35[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v37 = sub_1D726285C();
          v39 = v38;
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0;
          v39 = 0;
        }

        v40 = **(v1 + 88);
        v41 = swift_allocObject();
        *(v41 + 16) = &unk_1D7348428;
        *(v41 + 24) = v35;

        if (v39 | v37)
        {
          v7 = v1 + 16;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
          *(v1 + 32) = v37;
          *(v1 + 40) = v39;
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v1 + 120);
        *(v1 + 48) = 1;
        *(v1 + 56) = v7;
        *(v1 + 64) = v40;
        swift_task_create();

        sub_1D6CD512C(v8, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
        v3 = v45;
      }

      sub_1D6CD4D24(*(v1 + 208), type metadata accessor for WebEmbedDataVisualization);
      v6 += v46;
      --v3;
    }

    while (v3);
  }

  v42 = *(v1 + 8);

  return v42();
}

void sub_1D6CD06D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v45, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v44 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v43 = &v35 - v16;
  v17 = sub_1D72585BC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v42 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - v23;
  v46 = a1;
  v25 = sub_1D6D28818();
  v41 = *(v25 + 16);
  if (v41)
  {
    v39 = v18;
    v40 = v2;
    v26 = 0;
    v37 = v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v38 = v25;
    v35 = v18 + 16;
    v36 = (v18 + 8);
    while (v26 < *(v25 + 16))
    {
      v27 = v37 + *(v18 + 72) * v26;
      v47 = *(v18 + 16);
      v47(v24, v27, v17);

      sub_1D725B86C();

      v28 = v48;
      if (!v48)
      {
        v28 = MEMORY[0x1E69E7CD0];
      }

      v49 = v28;
      sub_1D6CD349C(v46, v7, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD349C(v7, v10, type metadata accessor for WebEmbedDataVisualization);
      v48 = sub_1D6D28818();

      sub_1D6CD315C(&v48);

      ++v26;
      sub_1D6CD4D24(v7, type metadata accessor for WebEmbedDataVisualization);
      *&v10[*(v45 + 20)] = v48;
      v29 = v10;
      v30 = v7;
      v31 = v10;
      v32 = v44;
      sub_1D6CD4CBC(v29, v44, type metadata accessor for WebEmbedDatastoreCacheKey);
      v33 = v43;
      v34 = v32;
      v10 = v31;
      v7 = v30;
      sub_1D5FEE2D0(v43, v34);
      sub_1D6CD4D24(v33, type metadata accessor for WebEmbedDatastoreCacheKey);
      v47(v42, v24, v17);
      v48 = v49;

      sub_1D725B87C();

      (*v36)(v24, v17);
      v25 = v38;
      v18 = v39;
      if (v41 == v26)
      {
        goto LABEL_7;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

LABEL_7:
  }
}

uint64_t sub_1D6CD0AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6CD0B1C, 0, 0);
}

uint64_t sub_1D6CD0B1C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D6CD0C10;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0xD000000000000018, 0x80000001D73F09F0, sub_1D6CD33B4, v1, v4);
}

uint64_t sub_1D6CD0C10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D6CD0D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a2;
  sub_1D6CD33BC();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v10 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CD349C(a3, v13, type metadata accessor for WebEmbedDataVisualization);
  sub_1D6CD349C(v13, v17, type metadata accessor for WebEmbedDataVisualization);
  v22 = sub_1D6D28818();

  sub_1D6CD315C(&v22);

  sub_1D6CD4D24(v13, type metadata accessor for WebEmbedDataVisualization);
  *&v17[*(v14 + 20)] = v22;
  (*(v7 + 16))(v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1D6CD0FB8(v17, sub_1D6CD3420, v19);

  return sub_1D6CD4D24(v17, type metadata accessor for WebEmbedDatastoreCacheKey);
}

void sub_1D6CD0FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v6 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1D6CD349C(a1, v10, type metadata accessor for WebEmbedDatastoreCacheKey);
  v12 = *(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_1D6CD4CBC(v10, v13 + ((v12 + 24) & ~v12), type metadata accessor for WebEmbedDatastoreCacheKey);
  updated = type metadata accessor for WebEmbedDataSourceCacheUpdateOperation(0);
  v15 = objc_allocWithZone(updated);
  v16 = &v15[qword_1EDF06600];
  *v16 = sub_1D6CD3480;
  v16[1] = v13;
  v26.receiver = v15;
  v26.super_class = updated;
  v17 = objc_msgSendSuper2(&v26, sel_init);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1D6CD349C(a1, v10, type metadata accessor for WebEmbedDatastoreCacheKey);
  v19 = (v12 + 40) & ~v12;
  v20 = swift_allocObject();
  v22 = v24;
  v21 = v25;
  v20[2] = v24;
  v20[3] = v21;
  v20[4] = v18;
  sub_1D6CD4CBC(v10, v20 + v19, type metadata accessor for WebEmbedDatastoreCacheKey);
  v23 = v17;
  sub_1D5DEA510(v22, v21);
  sub_1D725ACDC();

  [*(v4 + 64) addOperation_];
}

double sub_1D6CD1214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B6D404(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v18 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_1D726294C();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = sub_1D5DF743C;
  v16[7] = v14;

  sub_1D6BD1334(0, 0, v13, &unk_1D7348408, v16);

  return result;
}

uint64_t sub_1D6CD1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D6CD13BC, 0, 0);
}

uint64_t sub_1D6CD13BC()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1D6CD14A4;
  v3 = MEMORY[0x1E69E7CA8] + 8;
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v2, v3, v4, 0, 0, &unk_1D7348418, v1, v5);
}

uint64_t sub_1D6CD14A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6CD15BC, 0, 0);
}

uint64_t sub_1D6CD15BC()
{
  (*(v0 + 32))();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1D6CD1620(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v45 = &v36 - v7;
  v40 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v36 - v11;
  v46 = v1;

  sub_1D725B86C();

  if (v48)
  {
    v12 = 0;
    v42 = v48;
    v13 = *(v48 + 56);
    v36 = v48 + 56;
    v14 = 1 << *(v48 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    for (i = v17; v16; v17 = i)
    {
      v18 = v12;
LABEL_10:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = v41;
      v21 = *(v42 + 48) + *(v41 + 72) * (v19 | (v18 << 6));
      v22 = v38;
      v43 = type metadata accessor for WebEmbedDatastoreCacheKey;
      sub_1D6CD349C(v21, v38, type metadata accessor for WebEmbedDatastoreCacheKey);
      v23 = v45;
      v44 = type metadata accessor for WebEmbedDatastoreCacheKey;
      sub_1D6CD4CBC(v22, v45, type metadata accessor for WebEmbedDatastoreCacheKey);
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = v39;
      sub_1D6CD349C(v23, v39, type metadata accessor for WebEmbedDatastoreCacheKey);
      v26 = *(v20 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      sub_1D6CD4CBC(v25, v27 + ((v26 + 24) & ~v26), type metadata accessor for WebEmbedDatastoreCacheKey);
      updated = type metadata accessor for WebEmbedDataSourceCacheUpdateOperation(0);
      v29 = objc_allocWithZone(updated);
      v30 = &v29[qword_1EDF06600];
      *v30 = sub_1D6CD518C;
      v30[1] = v27;
      v47.receiver = v29;
      v47.super_class = updated;
      v31 = objc_msgSendSuper2(&v47, sel_init);
      v32 = swift_allocObject();
      v33 = v46;
      swift_weakInit();
      v34 = v45;
      sub_1D6CD349C(v45, v25, v43);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v32;
      sub_1D6CD4CBC(v25, v35 + ((v26 + 40) & ~v26), v44);
      sub_1D725ACDC();
      [*(v33 + 64) addOperation_];

      sub_1D6CD4D24(v34, type metadata accessor for WebEmbedDatastoreCacheKey);
    }

    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        return;
      }

      v16 = *(v36 + 8 * v18);
      ++v12;
      if (v16)
      {
        v12 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1D6CD19D8(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v14 = WebEmbedDataVisualization.urlDataSources.getter();
    v15 = sub_1D6CD1C10(v14);

    if (v15)
    {
      sub_1D6CD349C(a2, v13, type metadata accessor for WebEmbedDataVisualization);
      v16 = sub_1D6CD20BC();
      sub_1D6CD349C(v13, a3, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD349C(v13, v9, type metadata accessor for WebEmbedDataVisualization);
      v17 = sub_1D61B87A8(v9, v15, v16);

      sub_1D6CD4D24(v13, type metadata accessor for WebEmbedDataVisualization);
      if (v3)
      {
        sub_1D6CD4D24(a3, type metadata accessor for WebEmbedDataVisualization);
      }

      else
      {
        *(a3 + *(type metadata accessor for WebEmbedDatastoreUpdate(0) + 20)) = v17;
      }
    }

    else
    {
      sub_1D6CD4C68();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D6CD4C68();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }
}

void *sub_1D6CD1C10(unint64_t a1)
{
  v2 = v1;
  sub_1D5B6D404(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebEmbedDatastoreProperty(0);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v37 - v18;
  v37 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v21 = 0;
    v46 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = a1 & 0xC000000000000001;
    v45 = (v9 + 48);
    v48 = MEMORY[0x1E69E7CC0];
    v39 = v2;
    v40 = v8;
    v38 = i;
    while (v47)
    {
      v22 = MEMORY[0x1DA6FB460](v21, a1, v17);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v9 = *(v2 + 32);
      sub_1D725B86C();
      if ((*v45)(v7, 1, v8) == 1)
      {

        sub_1D6CD512C(v7, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
      }

      else
      {
        v24 = a1;
        v25 = v7;
        v26 = v44;
        sub_1D6CD4CBC(v7, v44, type metadata accessor for WebEmbedDataSourceCacheEntry);
        v27 = v19;
        v29 = *(v22 + 32);
        v28 = *(v22 + 40);

        v30 = v41;
        sub_1D6CD4CBC(v26, &v41[*(v43 + 20)], type metadata accessor for WebEmbedDataSourceCacheEntry);
        *v30 = v29;
        v30[1] = v28;
        v19 = v27;
        sub_1D6CD4CBC(v30, v27, type metadata accessor for WebEmbedDatastoreProperty);
        v31 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1D69963C4(0, v31[2] + 1, 1, v31);
        }

        v9 = v31[2];
        v32 = v31[3];
        a1 = v24;
        v7 = v25;
        if (v9 >= v32 >> 1)
        {
          v31 = sub_1D69963C4((v32 > 1), v9 + 1, 1, v31);
        }

        i = v38;
        v2 = v39;
        v31[2] = v9 + 1;
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v48 = v31;
        sub_1D6CD4CBC(v19, v31 + v33 + *(v42 + 72) * v9, type metadata accessor for WebEmbedDatastoreProperty);
        v8 = v40;
      }

      ++v21;
      if (v23 == i)
      {
        goto LABEL_21;
      }
    }

    if (v21 >= *(v46 + 16))
    {
      goto LABEL_18;
    }

    v22 = *(a1 + 8 * v21 + 32);

    v23 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v34 = v48;
  v35 = v48[2];
  if (!v37)
  {
    if (v35 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v34;
    }

    goto LABEL_25;
  }

  if (v35 != sub_1D7263BFC())
  {
LABEL_25:

    return 0;
  }

  return v34;
}

char *sub_1D6CD20BC()
{
  v0 = type metadata accessor for WebEmbedDataVisualization(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D6D28B24();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D6CD349C(v7, v4, type metadata accessor for WebEmbedDataVisualization);
      v10 = WebEmbedDataVisualization.urlDataSources.getter();
      v11 = sub_1D6CD1C10(v10);

      sub_1D6CD4D24(v4, type metadata accessor for WebEmbedDataVisualization);
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D69963F8(0, *(v9 + 2) + 1, 1, v9);
        }

        v13 = *(v9 + 2);
        v12 = *(v9 + 3);
        if (v13 >= v12 >> 1)
        {
          v9 = sub_1D69963F8((v12 > 1), v13 + 1, 1, v9);
        }

        *(v9 + 2) = v13 + 1;
        *&v9[8 * v13 + 32] = v11;
      }

      v7 += v8;
      --v6;
    }

    while (v6);
  }

  else
  {

    return 0;
  }

  return v9;
}

void sub_1D6CD2294(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a3;
  v87 = a5;
  v7 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v80 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D613588C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B6D404(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v79 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v78 = &v73[-v20];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v73[-v23];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v73[-v27];
  v29 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  v83 = *(v29 - 8);
  v84 = v29;
  v30 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v29, v31);
  v81 = &v73[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32, v33);
  v85 = &v73[-v34];
  sub_1D5B6D404(0, &qword_1EDF17A98, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v73[-v37];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v82 = a2;
    sub_1D6CD3504(a1, v38, &qword_1EDF17A98, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69D6AF8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v38;
      if (qword_1EDF0E798 != -1)
      {
        swift_once();
      }

      v42 = qword_1EDFFC588;
      v43 = sub_1D7262EBC();
      sub_1D5C384A0(0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1D7270C10;
      v45 = sub_1D62CB840();
      v47 = v46;
      v48 = MEMORY[0x1E69E6158];
      *(v44 + 56) = MEMORY[0x1E69E6158];
      v49 = sub_1D5B7E2C0();
      *(v44 + 64) = v49;
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      v89 = 0;
      v90 = 0xE000000000000000;
      v88 = v41;
      sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
      sub_1D7263F9C();
      v50 = v89;
      v51 = v90;
      *(v44 + 96) = v48;
      *(v44 + 104) = v49;
      *(v44 + 72) = v50;
      *(v44 + 80) = v51;
      sub_1D725C30C("Web embed datastore cache failed to create a datastore for %{public}@, error=%{public}@", 87, 2, &dword_1D5B42000, v42, v43, v44);

      goto LABEL_19;
    }

    v52 = v85;
    sub_1D6CD4CBC(v38, v85, type metadata accessor for WebEmbedDatastoreUpdate);
    v77 = v40;
    sub_1D725B86C();
    sub_1D6CD349C(v52, v24, type metadata accessor for WebEmbedDatastoreUpdate);
    v54 = v83;
    v53 = v84;
    v75 = *(v83 + 56);
    v76 = v83 + 56;
    v75(v24, 0, 1, v84);
    v55 = *(v11 + 48);
    v56 = MEMORY[0x1E69E6720];
    sub_1D6CD3504(v28, v14, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
    v57 = v53;
    sub_1D6CD3504(v24, &v14[v55], &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v56);
    v58 = *(v54 + 48);
    if (v58(v14, 1, v53) == 1)
    {
      v59 = MEMORY[0x1E69E6720];
      sub_1D6CD512C(v24, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
      v60 = v59;
      v61 = v84;
      sub_1D6CD512C(v28, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v60);
      if (v58(&v14[v55], 1, v61) == 1)
      {
        sub_1D6CD512C(v14, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
        v62 = v85;
LABEL_17:
        sub_1D6CD4D24(v62, type metadata accessor for WebEmbedDatastoreUpdate);

        goto LABEL_19;
      }
    }

    else
    {
      v63 = v78;
      sub_1D6CD3504(v14, v78, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
      if (v58(&v14[v55], 1, v57) != 1)
      {
        v71 = v81;
        sub_1D6CD4CBC(&v14[v55], v81, type metadata accessor for WebEmbedDatastoreUpdate);
        updated = _s8NewsFeed23WebEmbedDatastoreUpdateV2eeoiySbAC_ACtFZ_0(v63, v71);
        sub_1D6CD4D24(v71, type metadata accessor for WebEmbedDatastoreUpdate);
        v72 = MEMORY[0x1E69E6720];
        sub_1D6CD512C(v24, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
        sub_1D6CD512C(v28, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v72);
        sub_1D6CD4D24(v63, type metadata accessor for WebEmbedDatastoreUpdate);
        sub_1D6CD512C(v14, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v72);
        v61 = v84;
        v62 = v85;
        if (updated)
        {
          goto LABEL_17;
        }

LABEL_14:
        sub_1D6CD349C(v87, v80, type metadata accessor for WebEmbedDatastoreCacheKey);
        v65 = v79;
        sub_1D6CD349C(v62, v79, type metadata accessor for WebEmbedDatastoreUpdate);
        v75(v65, 0, 1, v61);
        sub_1D725B87C();
        v66 = swift_unknownObjectWeakLoadStrong();
        if (v66)
        {
          v67 = v66;
          v68 = v81;
          sub_1D6CD349C(v62, v81, type metadata accessor for WebEmbedDatastoreUpdate);
          v69 = (*(v83 + 80) + 24) & ~*(v83 + 80);
          v70 = swift_allocObject();
          *(v70 + 16) = v67;
          sub_1D6CD4CBC(v68, v70 + v69, type metadata accessor for WebEmbedDatastoreUpdate);
          swift_unknownObjectRetain();
          sub_1D725BFFC();

          swift_unknownObjectRelease();
        }

        sub_1D6CD4D24(v62, type metadata accessor for WebEmbedDatastoreUpdate);
LABEL_19:
        a2 = v82;
        if (!v82)
        {
          return;
        }

        goto LABEL_20;
      }

      v64 = MEMORY[0x1E69E6720];
      sub_1D6CD512C(v24, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
      sub_1D6CD512C(v28, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v64);
      sub_1D6CD4D24(v63, type metadata accessor for WebEmbedDatastoreUpdate);
      v61 = v84;
    }

    sub_1D6CD4D24(v14, sub_1D613588C);
    v62 = v85;
    goto LABEL_14;
  }

  if (a2)
  {
LABEL_20:
    a2();
  }
}

uint64_t sub_1D6CD2C4C()
{
  sub_1D5B87E10(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedDataSourceCacheUpdateOperation(uint64_t a1)
{
  result = qword_1EDF065F0;
  if (!qword_1EDF065F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CD2D48(void (*a1)(_BYTE *, __n128))
{
  sub_1D5B6D404(0, &qword_1EDF17A98, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13[-v5];
  v7 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v1 + qword_1EDF06600))(v9);
  sub_1D6CD349C(v11, v6, type metadata accessor for WebEmbedDatastoreUpdate);
  swift_storeEnumTagMultiPayload();
  (a1)(v6);
  sub_1D6CD512C(v6, &qword_1EDF17A98, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69D6AF8]);
  return sub_1D6CD4D24(v11, type metadata accessor for WebEmbedDatastoreUpdate);
}

uint64_t sub_1D6CD2FD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6CD1398(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D6CD30A8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D5B64680;

  return sub_1D6CCFC58(a1, a2, v7, v6);
}

void sub_1D6CD315C(uint64_t *a1)
{
  v2 = *(sub_1D72585BC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFAF4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D6CD35D8(v5);
  *a1 = v3;
}

uint64_t sub_1D6CD3204(uint64_t a1)
{
  v4 = *(type metadata accessor for WebEmbedDataVisualization(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D6CD0AF8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D6CD32FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D5B64588(a1, v4);
}

void sub_1D6CD33BC()
{
  if (!qword_1EDF048A0)
  {
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF048A0);
    }
  }
}

uint64_t sub_1D6CD349C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CD3504(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D5B6D404(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D6CD3574()
{
  v1 = *(type metadata accessor for WebEmbedDatastoreUpdate(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D62CE838(v2, v3);
}

void sub_1D6CD35D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D72585BC();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D72585BC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D6CD3A10(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D6CD3704(0, v2, 1, a1);
  }
}

void sub_1D6CD3704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v8, v9);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = &v37 - v13;
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v50 = &v37 - v18;
  v39 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v48 = *(v16 + 16);
    v49 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v45 = (v16 + 32);
    v46 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v44 = -v20;
    v23 = a1 - a3;
    v38 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v42 = v22;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v48;
      (v48)(v50, v24, v8, v17);
      v27(v51, v26, v8);
      v28 = sub_1D72583DC();
      v30 = v29;
      if (v28 == sub_1D72583DC() && v30 == v31)
      {

        v25 = *v21;
        (*v21)(v51, v8);
        v25(v50, v8);
LABEL_5:
        a3 = v43 + 1;
        v22 = &v42[v38];
        v23 = v41 - 1;
        v24 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_6;
      }

      v32 = sub_1D72646CC();

      v33 = *v21;
      (*v21)(v51, v8);
      v33(v50, v8);
      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v34(v26, v35, v8);
      v26 += v44;
      v24 += v44;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D6CD3A10(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v143 = a1;
  v9 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v9, v10);
  v147 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v158 = &v137 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v163 = &v137 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v162 = &v137 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v155 = &v137 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v154 = &v137 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v142 = &v137 - v29;
  v33 = MEMORY[0x1EEE9AC00](v30, v31);
  v141 = &v137 - v34;
  v35 = a3[1];
  v152 = v32;
  if (v35 < 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v39 = *v143;
    if (!*v143)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v152;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v164 = v37;
      v131 = *(v37 + 16);
      if (v131 >= 2)
      {
        do
        {
          v132 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v133 = a3;
          v134 = *(v37 + 16 * v131);
          a3 = v37;
          v135 = *(v37 + 16 * (v131 - 1) + 32);
          v37 = *(v37 + 16 * (v131 - 1) + 40);
          sub_1D6CD45CC(v132 + *(v5 + 72) * v134, (v132 + *(v5 + 72) * v135), (v132 + *(v5 + 72) * v37), v39);
          if (v6)
          {
            break;
          }

          if (v37 < v134)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1D62FF50C(a3);
          }

          if (v131 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v136 = &a3[2 * v131];
          *v136 = v134;
          v136[1] = v37;
          v164 = a3;
          sub_1D62FF480(v131 - 1);
          v37 = v164;
          v131 = v164[2];
          a3 = v133;
        }

        while (v131 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v37 = sub_1D62FF50C(v37);
    goto LABEL_105;
  }

  v138 = a4;
  v36 = 0;
  v160 = v32 + 16;
  v161 = (v32 + 8);
  v159 = (v32 + 32);
  v37 = MEMORY[0x1E69E7CC0];
  v144 = a3;
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    v146 = v36;
    if (v36 + 1 < v35)
    {
      v150 = v35;
      v139 = v37;
      v40 = *a3;
      v41 = *(v152 + 72);
      v5 = v36 + 1;
      v42 = v40 + v41 * v39;
      v43 = *(v152 + 16);
      v43(v141, v42, v9, v33);
      v153 = v41;
      v149 = v43;
      (v43)(v142, v40 + v41 * v38, v9);
      v39 = sub_1D72583DC();
      v45 = v44;
      v46 = sub_1D72583DC();
      v140 = v6;
      if (v39 == v46 && v45 == v47)
      {
        LODWORD(v151) = 0;
      }

      else
      {
        LODWORD(v151) = sub_1D72646CC();
      }

      v48 = *v161;
      (*v161)(v142, v9);
      v148 = v48;
      v48(v141, v9);
      v49 = (v146 + 2);
      v50 = v153 * (v146 + 2);
      v51 = v40 + v50;
      v52 = v153 * v5;
      v53 = v40 + v153 * v5;
      do
      {
        a3 = v49;
        v56 = v5;
        v6 = v52;
        v37 = v50;
        if (v49 >= v150)
        {
          break;
        }

        v156 = v5;
        v157 = v49;
        v57 = v149;
        (v149)(v154, v51, v9);
        v57(v155, v53, v9);
        v58 = sub_1D72583DC();
        v60 = v59;
        if (v58 == sub_1D72583DC() && v60 == v61)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_1D72646CC();
        }

        a3 = v157;

        v39 = v148;
        v148(v155, v9);
        (v39)(v154, v9);
        v55 = v151 ^ v54;
        v49 = (a3 + 1);
        v51 += v153;
        v53 += v153;
        v56 = v156;
        v5 = v156 + 1;
        v52 = v6 + v153;
        v50 = v37 + v153;
      }

      while ((v55 & 1) == 0);
      if (v151)
      {
        v38 = v146;
        if (a3 < v146)
        {
          goto LABEL_132;
        }

        if (v146 < a3)
        {
          v62 = v146 * v153;
          v63 = v146;
          do
          {
            if (v63 != v56)
            {
              v65 = *v144;
              if (!*v144)
              {
                goto LABEL_138;
              }

              v5 = v56;
              v157 = *v159;
              v157(v147, (v65 + v62), v9);
              if (v62 < v6 || v65 + v62 >= (v65 + v37))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v157((v65 + v6), v147, v9);
              v38 = v146;
              v56 = v5;
            }

            ++v63;
            v6 -= v153;
            v37 -= v153;
            v62 += v153;
          }

          while (v63 < v56--);
        }

        v39 = a3;
        v6 = v140;
        a3 = v144;
        v37 = v139;
      }

      else
      {
        v39 = a3;
        v6 = v140;
        a3 = v144;
        v37 = v139;
        v38 = v146;
      }
    }

    v66 = a3[1];
    if (v39 < v66)
    {
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_131;
      }

      if (v39 - v38 < v138)
      {
        break;
      }
    }

LABEL_52:
    if (v39 < v38)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1D698BA94(0, *(v37 + 16) + 1, 1, v37);
    }

    v84 = *(v37 + 16);
    v83 = *(v37 + 24);
    v85 = v84 + 1;
    if (v84 >= v83 >> 1)
    {
      v37 = sub_1D698BA94((v83 > 1), v84 + 1, 1, v37);
    }

    *(v37 + 16) = v85;
    v86 = v37 + 16 * v84;
    *(v86 + 32) = v38;
    *(v86 + 40) = v39;
    v87 = *v143;
    if (!*v143)
    {
      goto LABEL_140;
    }

    v153 = v39;
    if (v84)
    {
      while (1)
      {
        v39 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v88 = *(v37 + 32);
          v89 = *(v37 + 40);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_72:
          if (v91)
          {
            goto LABEL_119;
          }

          v104 = (v37 + 16 * v85);
          v106 = *v104;
          v105 = v104[1];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_122;
          }

          v110 = (v37 + 32 + 16 * v39);
          v112 = *v110;
          v111 = v110[1];
          v98 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v98)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v108, v113))
          {
            goto LABEL_126;
          }

          if (v108 + v113 >= v90)
          {
            if (v90 < v113)
            {
              v39 = v85 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v114 = (v37 + 16 * v85);
        v116 = *v114;
        v115 = v114[1];
        v98 = __OFSUB__(v115, v116);
        v108 = v115 - v116;
        v109 = v98;
LABEL_86:
        if (v109)
        {
          goto LABEL_121;
        }

        v117 = v37 + 16 * v39;
        v119 = *(v117 + 32);
        v118 = *(v117 + 40);
        v98 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v98)
        {
          goto LABEL_124;
        }

        if (v120 < v108)
        {
          goto LABEL_3;
        }

LABEL_93:
        v125 = v39 - 1;
        if (v39 - 1 >= v85)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v126 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v37;
        v127 = *(v37 + 32 + 16 * v125);
        v128 = *(v37 + 32 + 16 * v39);
        v37 = *(v37 + 32 + 16 * v39 + 8);
        sub_1D6CD45CC(v126 + *(v152 + 72) * v127, (v126 + *(v152 + 72) * v128), (v126 + *(v152 + 72) * v37), v87);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v37 < v127)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1D62FF50C(a3);
        }

        if (v125 >= a3[2])
        {
          goto LABEL_116;
        }

        v129 = &a3[2 * v125];
        v129[4] = v127;
        v129[5] = v37;
        v164 = a3;
        sub_1D62FF480(v39);
        v37 = v164;
        v85 = v164[2];
        a3 = v5;
        if (v85 <= 1)
        {
          goto LABEL_3;
        }
      }

      v92 = v37 + 32 + 16 * v85;
      v93 = *(v92 - 64);
      v94 = *(v92 - 56);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_117;
      }

      v97 = *(v92 - 48);
      v96 = *(v92 - 40);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_118;
      }

      v99 = (v37 + 16 * v85);
      v101 = *v99;
      v100 = v99[1];
      v98 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v98)
      {
        goto LABEL_120;
      }

      v98 = __OFADD__(v90, v102);
      v103 = v90 + v102;
      if (v98)
      {
        goto LABEL_123;
      }

      if (v103 >= v95)
      {
        v121 = (v37 + 32 + 16 * v39);
        v123 = *v121;
        v122 = v121[1];
        v98 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v98)
        {
          goto LABEL_127;
        }

        if (v90 < v124)
        {
          v39 = v85 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v35 = a3[1];
    v36 = v153;
    if (v153 >= v35)
    {
      goto LABEL_103;
    }
  }

  v67 = (v38 + v138);
  if (__OFADD__(v38, v138))
  {
    goto LABEL_133;
  }

  if (v67 >= v66)
  {
    v67 = a3[1];
  }

  if (v67 < v38)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v39 == v67)
  {
    goto LABEL_52;
  }

  v139 = v37;
  v140 = v6;
  v68 = *a3;
  v69 = *(v152 + 72);
  v70 = *(v152 + 16);
  v71 = *a3 + v69 * (v39 - 1);
  v156 = -v69;
  v157 = v68;
  v72 = v38 - v39;
  v145 = v69;
  v73 = v68 + v39 * v69;
  v148 = v67;
LABEL_43:
  v153 = v39;
  v149 = v73;
  v150 = v72;
  v151 = v71;
  v75 = v71;
  while (1)
  {
    v70(v162, v73, v9);
    (v70)(v163, v75);
    v5 = sub_1D72583DC();
    v77 = v76;
    if (v5 == sub_1D72583DC() && v77 == v78)
    {

      v74 = *v161;
      (*v161)(v163, v9);
      v74(v162, v9);
LABEL_42:
      v39 = v153 + 1;
      v71 = v151 + v145;
      v72 = v150 - 1;
      v73 = &v149[v145];
      if ((v153 + 1) == v148)
      {
        v39 = v148;
        v6 = v140;
        a3 = v144;
        v37 = v139;
        v38 = v146;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1D72646CC();

    v79 = *v161;
    (*v161)(v163, v9);
    v79(v162, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v157)
    {
      break;
    }

    v80 = v158;
    v5 = v159;
    v81 = *v159;
    (*v159)(v158, v73, v9);
    swift_arrayInitWithTakeFrontToBack();
    v81(v75, v80, v9);
    v75 += v156;
    v73 += v156;
    if (__CFADD__(v72++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_1D6CD45CC(unint64_t a1, char *a2, char *a3, char *a4)
{
  v74 = sub_1D72585BC();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v9);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v70 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v72 = &v62 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_70;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_71;
  }

  v23 = &a2[-a1] / v21;
  v77 = a1;
  v76 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || &a2[v25] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = &a4[v25];
    if (v25 < 1)
    {
      v47 = &a4[v25];
    }

    else
    {
      v66 = a4;
      v67 = (v8 + 16);
      v65 = (v8 + 8);
      v45 = -v21;
      v46 = &a4[v25];
      v47 = v44;
      v68 = v45;
      while (2)
      {
        while (1)
        {
          v63 = v47;
          v48 = &a2[v45];
          v72 = &a2[v45];
          v69 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v77 = a2;
              v75 = v63;
              goto LABEL_68;
            }

            v50 = a3;
            v64 = v47;
            v51 = *v67;
            v73 = (v46 + v45);
            v52 = v74;
            (v51)(v70);
            (v51)(v71, v48, v52);
            v53 = sub_1D72583DC();
            v55 = v54;
            if (v53 == sub_1D72583DC() && v55 == v56)
            {
              v57 = 0;
            }

            else
            {
              v57 = sub_1D72646CC();
            }

            v45 = v68;
            a3 = v68 + v50;
            v58 = *v65;
            v59 = v74;
            (*v65)(v71, v74);
            v58(v70, v59);
            if (v57)
            {
              break;
            }

            v60 = v73;
            v47 = v73;
            if (v50 < v46 || a3 >= v46)
            {
              swift_arrayInitWithTakeFrontToBack();
              v48 = v72;
            }

            else
            {
              v48 = v72;
              if (v50 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v46 = v47;
            v49 = v60 > v66;
            a2 = v69;
            if (!v49)
            {
              goto LABEL_66;
            }
          }

          if (v50 < v69 || a3 >= v69)
          {
            break;
          }

          a2 = v72;
          v61 = v66;
          v47 = v64;
          if (v50 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v46 <= v61)
          {
            goto LABEL_66;
          }
        }

        a2 = v72;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v64;
        if (v46 > v66)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v77 = a2;
    v75 = v47;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = &a4[v24];
    v75 = &a4[v24];
    if (v24 >= 1 && a2 < a3)
    {
      v27 = *(v8 + 16);
      v69 = v21;
      v70 = (v8 + 16);
      v67 = (v8 + 8);
      v68 = v27;
      do
      {
        v28 = a3;
        v29 = a2;
        v30 = a2;
        v31 = v74;
        v32 = v68;
        v68(v72, v30, v74);
        v32(v73, a4, v31);
        v33 = sub_1D72583DC();
        v35 = v34;
        if (v33 == sub_1D72583DC() && v35 == v36)
        {

          v37 = *v67;
          v38 = v74;
          (*v67)(v73, v74);
          v37(v72, v38);
        }

        else
        {
          v39 = sub_1D72646CC();

          v40 = *v67;
          v41 = v74;
          (*v67)(v73, v74);
          v40(v72, v41);
          if (v39)
          {
            a2 = &v69[v29];
            a3 = v28;
            if (a1 < v29 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v43 = v69;
            goto LABEL_37;
          }
        }

        v42 = a4;
        v43 = v69;
        a4 = &v69[a4];
        a2 = v29;
        a3 = v28;
        if (a1 < v42 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v42)
        {
          swift_arrayInitWithTakeBackToFront();
          v76 = a4;
          goto LABEL_37;
        }

        v76 = a4;
LABEL_37:
        a1 += v43;
        v77 = a1;
      }

      while (a4 < v71 && a2 < a3);
    }
  }

LABEL_68:
  sub_1D62FF550(&v77, &v76, &v75);
}

unint64_t sub_1D6CD4C68()
{
  result = qword_1EC894D38;
  if (!qword_1EC894D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D38);
  }

  return result;
}

uint64_t sub_1D6CD4CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CD4D24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_25Tm_1(uint64_t (*a1)(void), void (*a2)(void, __n128))
{
  v4 = a1(0);
  v5 = (*(*(v4 - 8) + 80) + 24) & ~*(*(v4 - 8) + 80);

  v6 = v2 + v5;
  type metadata accessor for WebEmbedDataVisualization(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = *(type metadata accessor for GenericDataVisualization(0) + 20);
    v8 = sub_1D72585BC();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  (a2)(*(v6 + *(v4 + 20)));

  return swift_deallocObject();
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = *(type metadata accessor for WebEmbedDatastoreCacheKey(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  type metadata accessor for WebEmbedDataVisualization(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = *(type metadata accessor for GenericDataVisualization(0) + 20);
    v4 = sub_1D72585BC();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1D6CD50B4(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedDatastoreCacheKey(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1D6CD2294(a1, v4, v5, v6, v7);
}

uint64_t sub_1D6CD512C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D5B6D404(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t static FormatCodingRecipeOverridesStrategy.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);

  return sub_1D6CD521C(v3, a1);
}

uint64_t sub_1D6CD521C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatRecipeOverrides(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static FormatCodingRecipeOverridesStrategy.shouldEncode(wrappedValue:)(void *a1)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);
  return !_s8NewsFeed21FormatRecipeOverridesV2eeoiySbAC_ACtFZ_0(a1, v3);
}

uint64_t sub_1D6CD52F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);

  return sub_1D6CD521C(v3, a1);
}

BOOL sub_1D6CD5370(void *a1)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);
  return !_s8NewsFeed21FormatRecipeOverridesV2eeoiySbAC_ACtFZ_0(a1, v3);
}

unint64_t sub_1D6CD53E8(uint64_t a1)
{
  result = sub_1D5E04DE8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CD5428(uint64_t a1)
{
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725891C();
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v17 = v1[4];
  v16 = v1[5];
  v18 = v1[6];
  v19 = v34;
  sub_1D6F41974(a1, v12, v6);
  if (!v19)
  {
    v20 = v11;
    v24 = v16;
    v25 = v17;
    v34 = 0;
    v21 = v26;
    if ((*(v27 + 48))(v6, 1, v26) == 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v6);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5D285FC();
      v18 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v23 = v27;
      (*(v27 + 32))(v20, v6, v21);
      v28 = v13;
      v29 = v14;
      v30 = v15;
      v31 = v25;
      v32 = v24;
      v33 = v18;
      sub_1D5E1DC5C(v13, v14, v15, v25, v24, v18);
      v18 = FormatDateFormat.format(_:)(v20);
      sub_1D5E1E088(v28, v29, v30, v31, v32, v33);
      (*(v23 + 8))(v20, v21);
    }
  }

  return v18;
}

BOOL _s8NewsFeed022FormatTextNodeDateTimeC0V2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v15 = a1[6];
  v16 = a1[5];
  v17 = a2[1];
  v18 = *a2;
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v24 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v18);
  v12 = static FormatDateTime.== infix(_:_:)(&v24, &v18);
  sub_1D5F33D8C(v18);
  sub_1D5F33D8C(v24);
  if (v12)
  {
    v24 = v3;
    v25 = v4;
    v26 = v5;
    v27 = v6;
    v28 = v16;
    v29 = v15;
    v18 = v17;
    v19 = v7;
    v20 = v8;
    v21 = v10;
    v22 = v9;
    v23 = v11;
    sub_1D5E1DC5C(v3, v4, v5, v6, v16, v15);
    sub_1D5E1DC5C(v17, v7, v8, v10, v9, v11);
    v13 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(&v24, &v18);
    sub_1D5E1E088(v18, v19, v20, v21, v22, v23);
    sub_1D5E1E088(v24, v25, v26, v27, v28, v29);
  }

  else
  {
    return 0;
  }

  return v13;
}

unint64_t sub_1D6CD57CC(uint64_t a1)
{
  result = sub_1D6CD57F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CD57F4()
{
  result = qword_1EC894D40;
  if (!qword_1EC894D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D40);
  }

  return result;
}

unint64_t sub_1D6CD5848(void *a1)
{
  a1[1] = sub_1D66C5728();
  a1[2] = sub_1D66F65E8();
  result = sub_1D6CD5880();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CD5880()
{
  result = qword_1EC894D48;
  if (!qword_1EC894D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D48);
  }

  return result;
}

uint64_t sub_1D6CD58D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 56))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1D6CD5940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D6CD59B8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_identifier;
  v2 = sub_1D725895C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D61917C8(v0 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_request);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedImage(uint64_t a1)
{
  result = qword_1EDF32B20;
  if (!qword_1EDF32B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CD5AE8(uint64_t a1)
{
  result = sub_1D725895C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WebEmbedImageRequest(319);
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

double FormatJsonConfig.keys.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

void sub_1D6CD5C9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v57 = a1;
  v62 = a2;
  v60 = type metadata accessor for FormatJson(0);
  MEMORY[0x1EEE9AC00](v60, v6);
  v54 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for FormatJsonKeyValue(0);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v8);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v50 - v12);
  swift_beginAccess();
  v14 = *(v2 + 16);
  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  sub_1D7264A0C();

  sub_1D72621EC();
  v15 = sub_1D7264A5C();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {

LABEL_9:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v58 = v3;
  v18 = ~v16;
  while ((*(*(v14 + 48) + v17) & 1) != 0)
  {
    v19 = sub_1D72646CC();

    if (v19)
    {
      goto LABEL_11;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {

      v20 = MEMORY[0x1E69E7CC0];
      v4 = v58;
      goto LABEL_14;
    }
  }

LABEL_11:

  sub_1D6CD6310(v57, (v13 + *(v59 + 20)));
  *v13 = 0x736E6F6974706FLL;
  v13[1] = 0xE700000000000000;
  v20 = sub_1D698F454(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = v20[2];
  v21 = v20[3];
  v23 = v22 + 1;
  v4 = v58;
  if (v22 >= v21 >> 1)
  {
    v53 = v22 + 1;
    v49 = sub_1D698F454((v21 > 1), v22 + 1, 1, v20);
    v23 = v53;
    v20 = v49;
  }

  v20[2] = v23;
  sub_1D6CD790C(v13, v20 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v22, type metadata accessor for FormatJsonKeyValue);
LABEL_14:
  v24 = *(v5 + 16);
  if (!*(v24 + 16))
  {
LABEL_21:
    v30 = v62;
    goto LABEL_28;
  }

  sub_1D7264A0C();

  sub_1D72621EC();
  v25 = sub_1D7264A5C();
  v26 = -1 << *(v24 + 32);
  v27 = v25 & ~v26;
  if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v58 = v4;
  v28 = ~v26;
  while (*(*(v24 + 48) + v27) != 1)
  {
    v29 = sub_1D72646CC();

    if (v29)
    {
      goto LABEL_23;
    }

    v27 = (v27 + 1) & v28;
    if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_23:

  v31 = v59;
  v52 = *(v59 + 20);
  sub_1D6CD7974(0, &unk_1EDF020A0, MEMORY[0x1E69E6F90]);
  v32 = *(v56 + 72);
  v33 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v34 = swift_allocObject();
  v51 = v34;
  *(v34 + 16) = xmmword_1D7270C10;
  v53 = v33;
  v35 = (v34 + v33);
  v36 = v54;
  v37 = v57;
  sub_1D6CD6780(v57, v54);
  *v35 = 0x70756F7267;
  v35[1] = 0xE500000000000000;
  sub_1D6CD790C(v36, v35 + *(v31 + 20), type metadata accessor for FormatJson);
  v56 = v32;
  v38 = (v35 + v32);
  v61[0] = MEMORY[0x1E69E7CD0];
  v40 = *(v37 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v39 = *(v37 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);

  sub_1D6B984A8(v40, v39);
  v42 = v41;

  v44 = sub_1D6CD7644(v42, v61, v37, v43);

  *v36 = v44;
  swift_storeEnumTagMultiPayload();

  *v38 = 1835365481;
  v38[1] = 0xE400000000000000;
  sub_1D6CD790C(v36, v38 + *(v59 + 20), type metadata accessor for FormatJson);
  v45 = v55;
  *&v55[v52] = v51;
  swift_storeEnumTagMultiPayload();
  *v45 = 0x73676E69646E6962;
  v45[1] = 0xE800000000000000;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1D698F454(0, v20[2] + 1, 1, v20);
  }

  v46 = v62;
  v48 = v20[2];
  v47 = v20[3];
  if (v48 >= v47 >> 1)
  {
    v20 = sub_1D698F454((v47 > 1), v48 + 1, 1, v20);
  }

  v20[2] = v48 + 1;
  sub_1D6CD790C(v45, v20 + v53 + v48 * v56, type metadata accessor for FormatJsonKeyValue);
  v30 = v46;
LABEL_28:
  *v30 = v20;
  swift_storeEnumTagMultiPayload();
}

double sub_1D6CD6310@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for FormatOption(0);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v40 = &v36 - v14;
  v15 = type metadata accessor for FormatScopedOption(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v42 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v36 - v21;
  v43 = a1;
  sub_1D725A7EC();

  v23 = sub_1D6F6103C();

  v24 = v23[2];
  if (v24)
  {
    v36 = v23;
    v37 = a2;
    v25 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v41 = *(v16 + 72);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5D5EB44(v25, v22, type metadata accessor for FormatScopedOption);
      v27 = v42;
      sub_1D5D5EB44(v22, v42, type metadata accessor for FormatScopedOption);
      sub_1D6CD790C(v27, v7, type metadata accessor for FormatOption);
      v29 = *v7;
      v28 = v7[1];

      sub_1D6B744A8(v43, &v44);
      sub_1D5D256CC(v22, type metadata accessor for FormatScopedOption);
      v30 = v44;
      *v11 = v29;
      *(v11 + 1) = v28;
      *(v11 + 2) = v30;
      *(v11 + 3) = 1;
      v31 = *(v39 + 28);
      v32 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v32 - 8) + 56))(&v11[v31], 1, 1, v32);
      sub_1D5D256CC(v7, type metadata accessor for FormatOption);
      sub_1D6CD790C(v11, v40, type metadata accessor for FormatOption);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1D5CEABA0(0, v26[2] + 1, 1, v26);
      }

      v34 = v26[2];
      v33 = v26[3];
      if (v34 >= v33 >> 1)
      {
        v26 = sub_1D5CEABA0((v33 > 1), v34 + 1, 1, v26);
      }

      v26[2] = v34 + 1;
      sub_1D6CD790C(v40, v26 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34, type metadata accessor for FormatOption);
      v25 += v41;
      --v24;
    }

    while (v24);

    a2 = v37;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v26;
  type metadata accessor for FormatJson(0);
  swift_storeEnumTagMultiPayload();
  return result;
}

void sub_1D6CD6780(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D6CD7974(0, qword_1EDF103F0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (v28 - v7);
  v34 = type metadata accessor for FormatJsonKeyValue(0);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v9);
  v33 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v31 = v28 - v13;
  v14 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v15 = v14[2];
  v29 = a2;
  if (v15)
  {
    v16 = sub_1D5E23F34(v15, 0);
    v17 = sub_1D5E25814(v35, (v16 + 4), v15, v14);
    v18 = v35[0];
    v30 = v35[3];
    v28[1] = v35[4];

    sub_1D5B87E38(v18);
    if (v17 != v15)
    {
LABEL_18:
      __break(1u);

      __swift_destroy_boxed_opaque_existential_1(v35);

      __break(1u);
      return;
    }

    v19 = v16[2];
    if (v19)
    {
LABEL_4:
      v20 = 0;
      v14 = 0;
      v21 = (v16 + 4);
      v22 = (v32 + 48);
      v23 = MEMORY[0x1E69E7CC0];
      v30 = a1;
      while (v20 < v16[2])
      {
        sub_1D5B68374(v21, v35);
        sub_1D6CD6B20(v35, a1, v8);
        __swift_destroy_boxed_opaque_existential_1(v35);
        if ((*v22)(v8, 1, v34) == 1)
        {
          sub_1D67D05C8(v8, v24);
        }

        else
        {
          v25 = v31;
          sub_1D6CD790C(v8, v31, type metadata accessor for FormatJsonKeyValue);
          sub_1D6CD790C(v25, v33, type metadata accessor for FormatJsonKeyValue);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1D698F454(0, v23[2] + 1, 1, v23);
          }

          v27 = v23[2];
          v26 = v23[3];
          if (v27 >= v26 >> 1)
          {
            v23 = sub_1D698F454((v26 > 1), v27 + 1, 1, v23);
          }

          v23[2] = v27 + 1;
          sub_1D6CD790C(v33, v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for FormatJsonKeyValue);
          a1 = v30;
        }

        ++v20;
        v21 += 40;
        if (v19 == v20)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v19 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v19)
    {
      goto LABEL_4;
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_16:

  *v29 = v23;
  type metadata accessor for FormatJson(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6CD6B20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v36[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 8))(v10, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 0xAu:
      sub_1D5D256CC(v9, type metadata accessor for FeedGroupItem);
      v14 = type metadata accessor for FormatJsonKeyValue(0);
      result = (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
      break;
    case 2u:
      v15 = *v9;
      v35 = *(v9 + 1);
      v16 = type metadata accessor for FormatJsonKeyValue(0);
      v38 = *(v16 + 20);
      sub_1D6CD7974(0, &unk_1EDF020A0, MEMORY[0x1E69E6F90]);
      v17 = *(v16 - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7270C10;
      v21 = (v20 + v19);
      *(v21 + *(v16 + 20)) = v15;
      type metadata accessor for FormatJson(0);
      swift_storeEnumTagMultiPayload();
      *v21 = 0x746E65746E6F63;
      v21[1] = 0xE700000000000000;
      v22 = (v21 + v18);
      *(v22 + *(v16 + 20)) = v35;
      swift_storeEnumTagMultiPayload();
      *v22 = 0x70756F7267;
      v22[1] = 0xE500000000000000;
      *(a3 + v38) = v20;
      swift_storeEnumTagMultiPayload();
      *a3 = 0x736E6F6974706FLL;
      a3[1] = 0xE700000000000000;
      result = (*(v17 + 56))(a3, 0, 1, v16);
      break;
    case 3u:
    case 5u:
    case 6u:
    case 9u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v12 = type metadata accessor for FormatJsonKeyValue(0);
      (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
      result = sub_1D5D256CC(v9, type metadata accessor for FeedGroupItem);
      break;
    case 7u:
      v28 = *v9;
      v29 = FCFeedDescriptor.feedTag.getter();

      v30 = type metadata accessor for FormatJsonKeyValue(0);
      sub_1D6A5ABA0(a2, v29, (a3 + *(v30 + 20)));

      swift_unknownObjectRelease();
      *a3 = 1684366694;
      a3[1] = 0xE400000000000000;
      result = (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
      break;
    case 8u:
      v31 = *(v9 + 1);
      v33 = *(v9 + 2);
      v32 = *(v9 + 3);
      v34 = v9[32];
      v36[0] = *v9;
      v36[1] = v31;
      v36[2] = v33;
      v36[3] = v32;
      v37 = v34;
      v25 = type metadata accessor for FormatJsonKeyValue(0);
      sub_1D6B1905C(a2, v36, (a3 + *(v25 + 20)));
      swift_unknownObjectRelease();

      v26 = 0x76457374726F7073;
      v27 = 0xEB00000000746E65;
      goto LABEL_8;
    default:
      v23 = *v9;
      v24 = *(v9 + 1);
      v25 = type metadata accessor for FormatJsonKeyValue(0);
      sub_1D6A5ABA0(a2, v23, (a3 + *(v25 + 20)));
      swift_unknownObjectRelease();

      v26 = 6775156;
      v27 = 0xE300000000000000;
LABEL_8:
      *a3 = v26;
      a3[1] = v27;
      result = (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
      break;
  }

  return result;
}

uint64_t sub_1D6CD6FB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a3;
  v7 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5B68374(a1, &v35);
  sub_1D6818590(&v35, v14);
  v15 = *a2;

  FeedItem.kind.getter(&v35);
  v16 = v35;
  v17 = sub_1D61851A4(v35, *(&v35 + 1), v15);

  sub_1D5BF6680(v16, *(&v16 + 1));
  if (v17)
  {
LABEL_4:
    v18 = v14;
LABEL_5:
    sub_1D5D256CC(v18, type metadata accessor for FeedItem);
    v19 = type metadata accessor for FormatJsonKeyValue(0);
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  else
  {
    FeedItem.kind.getter(v45);
    sub_1D5FEAEF8(&v35, v45[0], v45[1]);
    sub_1D5BF6680(v35, *(&v35 + 1));
    sub_1D5D5EB44(v14, v10, type metadata accessor for FeedItem);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 3u:
      case 4u:
      case 8u:
      case 0xCu:
      case 0xEu:
      case 0x10u:
        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        v21 = type metadata accessor for FormatJsonKeyValue(0);
        (*(*(v21 - 8) + 56))(a4, 1, 1, v21);
        result = sub_1D5D256CC(v10, type metadata accessor for FeedItem);
        break;
      case 5u:
      case 0xFu:
      case 0x11u:
        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        v18 = v10;
        goto LABEL_5;
      case 7u:
        v22 = *(v10 + 7);
        v41 = *(v10 + 6);
        v42 = v22;
        v43 = *(v10 + 8);
        v44 = v10[144];
        v23 = *(v10 + 3);
        v37 = *(v10 + 2);
        v38 = v23;
        v24 = *(v10 + 5);
        v39 = *(v10 + 4);
        v40 = v24;
        v25 = *(v10 + 1);
        v35 = *v10;
        v36 = v25;
        v26 = v25;
        v27 = type metadata accessor for FormatJsonKeyValue(0);
        sub_1D6A5ABA0(v34, v26, (a4 + *(v27 + 20)));
        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        *a4 = 6775156;
        a4[1] = 0xE300000000000000;
        sub_1D5EE5B54(&v35);
        result = (*(*(v27 - 8) + 56))(a4, 0, 1, v27);
        break;
      case 0xDu:
        v28 = *(v10 + 1);
        v30 = *(v10 + 2);
        v29 = *(v10 + 3);
        v31 = v10[32];
        *&v35 = *v10;
        *(&v35 + 1) = v28;
        *&v36 = v30;
        *(&v36 + 1) = v29;
        LOBYTE(v37) = v31;
        v32 = type metadata accessor for FormatJsonKeyValue(0);
        sub_1D6B1905C(v34, &v35, (a4 + *(v32 + 20)));
        swift_unknownObjectRelease();

        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        *a4 = 0x76457374726F7073;
        a4[1] = 0xEB00000000746E65;
        result = (*(*(v32 - 8) + 56))(a4, 0, 1, v32);
        break;
      case 0x12u:
        goto LABEL_4;
      default:
        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        v14 = v10;
        goto LABEL_4;
    }
  }

  return result;
}

uint64_t FormatJsonConfig.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CD7434(uint64_t a1)
{
  result = sub_1D6CD7504(&qword_1EC894D50, &protocol conformance descriptor for FormatJsonConfig);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CD7478(void *a1)
{
  a1[1] = sub_1D6CD7504(&qword_1EDF30470, &protocol conformance descriptor for FormatJsonConfig);
  a1[2] = sub_1D6CD7504(&unk_1EDF11310, &protocol conformance descriptor for FormatJsonConfig);
  result = sub_1D6CD7504(qword_1EC894D58, &protocol conformance descriptor for FormatJsonConfig);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6CD7504(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatJsonConfig();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6CD7544@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D669CBE0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6CD7594(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D5E1FD58(v4, v5);

  return v6 & 1;
}

void *sub_1D6CD7644(uint64_t a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  sub_1D6CD7974(0, qword_1EDF103F0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v28 - v10);
  v12 = type metadata accessor for FormatJsonKeyValue(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v31 = &v28 - v18;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = a1 + 32;
  v28 = v17;
  v21 = (v17 + 48);
  v22 = MEMORY[0x1E69E7CC0];
  v29 = v12;
  v30 = a2;
  while (1)
  {
    sub_1D6CD6FB0(v20, a2, a3, v11);
    if (v4)
    {
      break;
    }

    if ((*v21)(v11, 1, v12) == 1)
    {
      sub_1D67D05C8(v11, v23);
    }

    else
    {
      v24 = v31;
      sub_1D6CD790C(v11, v31, type metadata accessor for FormatJsonKeyValue);
      sub_1D6CD790C(v24, v32, type metadata accessor for FormatJsonKeyValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D698F454(0, v22[2] + 1, 1, v22);
      }

      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        v22 = sub_1D698F454((v25 > 1), v26 + 1, 1, v22);
      }

      v22[2] = v26 + 1;
      sub_1D6CD790C(v32, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, type metadata accessor for FormatJsonKeyValue);
      v12 = v29;
      a2 = v30;
    }

    v20 += 40;
    if (!--v19)
    {
      return v22;
    }
  }

  return v22;
}

uint64_t sub_1D6CD790C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6CD7974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatJsonKeyValue(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t FeedGroupKnobsRuleList.value(for:)()
{
  v1 = *v0;
  v2 = *v0;
  v3 = v0[3];
  v15 = v3;
  v4 = *(v2 + 80);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v10[1] = *(v2 + 88);
  v10[0] = vdupq_lane_s64(v4, 0);
  v12 = *(&v4 + 1);
  v11 = v6;
  v13 = v5;
  v14 = v6;
  type metadata accessor for FeedGroupKnobsRuleList.Selector(255, v10);
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
  }

  v8 = type metadata accessor for FeedContext(0);
  v15 = v3;
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D726249C();

  return *&v10[0];
}

uint64_t FeedGroupKnobsRuleList.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FeedGroupKnobsRuleList.init(from:)(a1);
  return v2;
}

int64x2_t **FeedGroupKnobsRuleList.init(from:)(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = (*v1)[6].i64[0];
  v58 = v1;
  v6 = v3[6].i64[1];
  v54 = v6;
  v56 = v5;
  v57 = v6;
  v48 = v4;
  v7 = v4[5];
  *&v8 = vdupq_laneq_s64(v7, 1).u64[0];
  *(&v8 + 1) = v5;
  v51 = v7;
  v52 = vdupq_lane_s64(v7.i64[0], 0);
  v53 = v8;
  v55 = v7.i64[1];
  v9 = type metadata accessor for FeedGroupKnobsRuleList.Selector(255, &v52);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v49 = v9;
  v46 = sub_1D725AAEC();
  v44 = sub_1D726393C();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v10);
  v47 = &v39 - v11;
  v43 = v51.i64[0];
  v12 = sub_1D725AAEC();
  v13 = sub_1D726393C();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v45 = &v39 - v18;
  v52 = v51;
  *&v53 = v5;
  *(&v53 + 1) = v6;
  type metadata accessor for FeedGroupKnobsRuleList.CodingKeys(255, &v52);
  swift_getWitnessTable();
  v19 = sub_1D726435C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v39 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v50;
  sub_1D7264B0C();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264AEC();
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    swift_getWitnessTable();
    v29 = v40;
    sub_1D72646EC();
    v30 = *(v12 - 8);
    if ((*(v30 + 48))(v29, 1, v12) == 1)
    {
      (*(v41 + 8))(v29, v42);
      v31 = sub_1D726275C();
    }

    else
    {
      v31 = sub_1D725A74C();
      (*(v30 + 8))(v29, v12);
    }

    v32 = v58;
    v58[2] = v31;
    v37 = sub_1D726275C();

    v32[3] = v37;
    __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  else
  {
    v50 = v20;
    v25 = v44;
    v52.i8[0] = 0;
    swift_getWitnessTable();
    v26 = v45;
    v51.i64[0] = v19;
    sub_1D726421C();
    v27 = *(v12 - 8);
    if ((*(v27 + 48))(v26, 1, v12) == 1)
    {
      (*(v41 + 8))(v26, v42);
      v28 = sub_1D726275C();
    }

    else
    {
      v28 = sub_1D725A74C();
      (*(v27 + 8))(v26, v12);
    }

    v32 = v58;
    v58[2] = v28;
    v52.i8[0] = 1;
    v33 = v46;
    swift_getWitnessTable();
    v34 = v47;
    sub_1D726421C();
    v35 = *(v33 - 8);
    if ((*(v35 + 48))(v34, 1, v33) == 1)
    {
      (*(v39 + 8))(v34, v25);
      v36 = sub_1D726275C();
    }

    else
    {
      v36 = sub_1D725A74C();
      (*(v35 + 8))(v34, v33);
    }

    v50[1](v23, v51.i64[0]);
    v32[3] = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v32;
}