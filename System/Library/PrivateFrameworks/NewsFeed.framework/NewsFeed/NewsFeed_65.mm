uint64_t sub_1D611A660(void *a1, uint64_t a2)
{
  v29[2] = a2;
  v3 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v29[1] = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v29 - v14;
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v16, v18).n128_u64[0];
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isPuzzleHub])
  {
    sub_1D725855C();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      (*(v17 + 32))(v21, v15, v16);
      goto LABEL_9;
    }
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  v22 = [a1 identifier];
  if (!v22)
  {
    sub_1D726207C();
    v22 = sub_1D726203C();
  }

  v23 = [objc_opt_self() nss:v22 NewsURLForTagID:?];

  sub_1D72584EC();
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_1D5E3E404(v15);
  }

LABEL_9:
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v17 + 16))(v11, v21, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  v29[3] = a1;
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  swift_unknownObjectRetain();
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  swift_allocObject();
  v27 = sub_1D725D5CC();
  (*(v17 + 8))(v21, v16);
  return v27;
}

uint64_t sub_1D611AB78(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v32 - v6;
  v8 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 identifier];
  if (!v16)
  {
    sub_1D726207C();
    v16 = sub_1D726203C();
  }

  v17 = [a1 articles];
  sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
  v18 = sub_1D726267C();

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v25 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  v32[0] = v7;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = v11;
    v21 = a1;
    v22 = v15;
    v23 = v10;
    v24 = MEMORY[0x1DA6FB460](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = v11;
    v21 = a1;
    v22 = v15;
    v23 = v10;
    v24 = *(v18 + 32);
    swift_unknownObjectRetain();
  }

  v25 = [v24 identifier];
  swift_unknownObjectRelease();
  v10 = v23;
  v15 = v22;
  a1 = v21;
  v11 = v20;
  v7 = v32[0];
  if (!v25)
  {
    sub_1D726207C();
    v25 = sub_1D726203C();
LABEL_12:
  }

  v26 = [objc_opt_self() nss:v16 NewsURLForRecipeID:v25 articleID:?];

  sub_1D72584EC();
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v11 + 16))(v7, v15, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v32[1] = a1;
  sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
  v27 = a1;
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v31 = sub_1D725D5CC();
  (*(v11 + 8))(v15, v10);
  return v31;
}

uint64_t sub_1D611B0E4(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v16 - v6;
  v8 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  sub_1D725F82C();
  sub_1D725F81C();
  FCFeedDescriptor.feedURL.getter();
  v10 = sub_1D72585BC();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v16[1] = a1;
  sub_1D5B5A498(0, &qword_1EDF04580, 0x1E69B52A8);
  v11 = a1;
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5CC();
}

uint64_t sub_1D611B3F0(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v28 - v6;
  v8 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v15, v16).n128_u64[0];
  v19 = v28 - v18;
  v20 = [a1 identifier];
  if (!v20)
  {
    sub_1D726207C();
    v20 = sub_1D726203C();
  }

  v21 = [objc_opt_self() nss:v20 NewsURLForIssueID:?];

  if (!v21)
  {
    return 0;
  }

  sub_1D72584EC();

  (*(v11 + 32))(v19, v14, v10);
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v11 + 16))(v7, v19, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v28[1] = a1;
  sub_1D5B5A498(0, &qword_1EDF3C6C0, 0x1E69B5348);
  v22 = a1;
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v26 = sub_1D725D5CC();
  (*(v11 + 8))(v19, v10);
  return v26;
}

uint64_t sub_1D611B854(uint64_t a1, void *a2)
{
  v4 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v29 - v15;
  v17 = sub_1D72585BC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v23 + 8))(a1, v22, v23);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5E3E404(v16);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_1D725F82C();
    sub_1D725F81C();
    (*(v18 + 16))(v12, v21, v17);
    (*(v18 + 56))(v12, 0, 1, v17);
    v29[1] = a1;
    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    swift_unknownObjectRetain();
    sub_1D725DC7C();
    sub_1D726203C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF1BBB8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDF1BBC0;
    sub_1D725DFDC();
    sub_1D725D5DC();
    swift_allocObject();
    v28 = sub_1D725D5CC();
    (*(v18 + 8))(v21, v17);
    return v28;
  }
}

uint64_t sub_1D611BCBC(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v27 - v6;
  v8 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v15, v16).n128_u64[0];
  v19 = v27 - v18;
  v20 = [a1 identifier];
  if (!v20)
  {
    sub_1D726207C();
    v20 = sub_1D726203C();
  }

  v21 = [objc_opt_self() nss:v20 NewsURLForPuzzleID:?];

  if (!v21)
  {
    return 0;
  }

  sub_1D72584EC();

  (*(v11 + 32))(v19, v14, v10);
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v11 + 16))(v7, v19, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v27[1] = a1;
  sub_1D5B5534C(0, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  swift_unknownObjectRetain();
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v25 = sub_1D725D5CC();
  (*(v11 + 8))(v19, v10);
  return v25;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink14feedDescriptorACSo06FCFeedK0C_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;
  v11 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  sub_1D725F82C();
  sub_1D725F81C();
  FCFeedDescriptor.feedURL.getter();
  v13 = sub_1D72585BC();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v19[1] = a1;
  sub_1D5B5A498(0, &qword_1EDF04580, 0x1E69B52A8);
  v14 = a1;
  sub_1D725DC7C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v17 = [objc_opt_self() ts_link];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink6puzzleACSo17FCPuzzleProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v31 - v15;
  *&v19 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v21 = v31 - v20;
  v22 = [a1 identifier];
  if (!v22)
  {
    sub_1D726207C();
    v22 = sub_1D726203C();
  }

  v23 = [objc_opt_self() nss:v22 NewsURLForPuzzleID:?];

  if (v23)
  {
    sub_1D72584EC();

    v24 = sub_1D72585BC();
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  }

  else
  {
    v25 = sub_1D72585BC();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  }

  sub_1D5EB8540(v16, v21);
  sub_1D725F82C();
  sub_1D725F81C();
  sub_1D5EB84C0(v21, v12);
  v31[1] = a1;
  sub_1D5B5534C(0, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  swift_unknownObjectRetain();
  sub_1D725DC7C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v28 = [objc_opt_self() ts_link];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v29 = sub_1D725D3AC();
  sub_1D5E3E404(v21);
  return v29;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink6recipeACSo8FCRecipeC_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v29 - v7;
  v9 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [a1 articles];
  sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
  v19 = sub_1D726267C();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1DA6FB460](0, v19);
    goto LABEL_8;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v22 = [v21 identifier];
    swift_unknownObjectRelease();
    if (v22)
    {
LABEL_13:
      v23 = [objc_opt_self() nss:v17 NewsURLForRecipeID:v22 articleID:?];

      sub_1D72584EC();
      sub_1D725F82C();
      sub_1D725F81C();
      (*(v12 + 16))(v8, v16, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      v32 = a1;
      sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
      v24 = a1;
      sub_1D725DC7C();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      v27 = [objc_opt_self() ts_link];
      (*(v29 + 104))(v31, *MEMORY[0x1E69D7B48], v30);
      sub_1D725D3DC();
      swift_allocObject();
      v28 = sub_1D725D3AC();
      (*(v12 + 8))(v16, v11);
      return v28;
    }

    sub_1D726207C();
    v22 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall FormatProgressView.updateProgress(progress:animated:)(Swift::Double progress, Swift::Bool animated)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      FormatProgressPieView.updatePieProgress(progress:)(progress);
    }

    else
    {
      FormatProgressCircleView.updateCircleProgress(progress:)(progress);
    }
  }

  else
  {
    *&progress = progress;

    [v4 setProgress:animated animated:progress];
  }
}

uint64_t FormatProgressBarView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double FormatProgressBarView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id FormatProgressBarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FormatProgressBarView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id FormatProgressBarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FormatProgressBarView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id FormatProgressBarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D611D1F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1D611D2A8(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a3[3];
  v7 = sub_1D726210C();
  isUniquelyReferenced_nonNull_native = v7;
  v10 = v8;
  if (v6)
  {
    v123 = sub_1D726210C();
  }

  else
  {
    *&v131 = v7;
    *(&v131 + 1) = v8;

    MEMORY[0x1DA6F9910](1802396018, 0xE400000000000000);
    v11 = *(&v131 + 1);
    v123 = v131;
  }

  v124 = v11;
  if (qword_1EDF05878 != -1)
  {
    goto LABEL_74;
  }

LABEL_5:
  v12 = qword_1EDFFC538;
  sub_1D5C384A0(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7279970;
  v129 = a1;
  v14 = [a1 identifier];
  a1 = sub_1D726207C();
  v16 = v15;

  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1D5B7E2C0();
  *(v13 + 32) = a1;
  *(v13 + 40) = v16;
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 64) = v18;
  *(v13 + 72) = isUniquelyReferenced_nonNull_native;
  v118 = isUniquelyReferenced_nonNull_native;
  *(v13 + 80) = v10;
  *(v13 + 136) = v17;
  *(v13 + 144) = v18;
  v120 = v18;
  *(v13 + 112) = v123;
  *(v13 + 120) = v124;
  v122 = v10;

  v19 = sub_1D7262EDC();
  v121 = v12;
  sub_1D725C30C("Sports record attempting to build record for %{public}@ with rank league type %@ and stat name %@", 97, 2, &dword_1D5B42000, v12, v19, v13);

  v10 = *(v5 + 16);

  if (!v10)
  {
LABEL_17:

    sub_1D611E10C();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = v129;
    *(v30 + 24) = 0;
LABEL_64:
    swift_willThrow();
    swift_unknownObjectRetain();
    return;
  }

  isUniquelyReferenced_nonNull_native = 0;
  v20 = (v5 + 56);
  while (1)
  {
    if (isUniquelyReferenced_nonNull_native >= *(v5 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
      goto LABEL_5;
    }

    v21 = *(v20 - 3);
    v22 = *(v20 - 2);
    a1 = *(v20 - 1);
    v23 = *v20;
    swift_bridgeObjectRetain_n();

    v24 = [v129 UMCCanonicalID];
    if (!v24)
    {

      goto LABEL_8;
    }

    v133 = a1;
    v130 = v23;
    v125 = v22;
    v25 = v24;
    a1 = sub_1D726207C();
    v27 = v26;

    if (v21 == a1 && v125 == v27)
    {
      break;
    }

    v29 = sub_1D72646CC();

    if (v29)
    {
      goto LABEL_19;
    }

LABEL_8:
    ++isUniquelyReferenced_nonNull_native;

    v20 += 4;
    if (v10 == isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }
  }

LABEL_19:

  v31 = v133;
  v32 = v133[2];

  if (v32)
  {
    v33 = 0;
    v34 = v133 + 7;
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v33 >= v31[2])
      {
        goto LABEL_68;
      }

      v37 = *v34;
      v128 = *(v34 - 1);
      a1 = *(v34 - 2);
      v38 = sub_1D726210C();
      v5 = v39;
      swift_bridgeObjectRetain_n();

      v40 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v131 = v40;
      v41 = sub_1D5B69D90(v38, v5);
      v43 = *(v40 + 16);
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_69;
      }

      v10 = v42;
      if (*(v40 + 24) < v46)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v52 = v41;
      sub_1D6D7DE64();
      v41 = v52;
      if (v10)
      {
LABEL_21:
        v35 = v41;

        isUniquelyReferenced_nonNull_native = v131;
        v36 = (*(v131 + 56) + 16 * v35);
        *v36 = v128;
        v36[1] = v37;

        goto LABEL_22;
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = v131;
      *(v131 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v48 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v41);
      *v48 = v38;
      v48[1] = v5;
      v49 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v41);
      *v49 = v128;
      v49[1] = v37;

      v50 = *(isUniquelyReferenced_nonNull_native + 16);
      v45 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v45)
      {
        goto LABEL_72;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v51;
LABEL_22:
      ++v33;
      v34 += 4;
      v31 = v133;
      if (v32 == v33)
      {
        goto LABEL_35;
      }
    }

    sub_1D6D666FC(v46, isUniquelyReferenced_nonNull_native);
    v41 = sub_1D5B69D90(v38, v5);
    if ((v10 & 1) != (v47 & 1))
    {
LABEL_75:
      sub_1D726493C();
      __break(1u);
      return;
    }

LABEL_29:
    if (v10)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
LABEL_35:

  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1D7279970;
  v54 = v31[2];
  v55 = MEMORY[0x1E69E65A8];
  *(v53 + 56) = MEMORY[0x1E69E6530];
  *(v53 + 64) = v55;
  *(v53 + 32) = v54;
  v10 = v129;
  v56 = [v129 identifier];
  v57 = sub_1D726207C();
  v59 = v58;

  v60 = MEMORY[0x1E69E6158];
  v61 = isUniquelyReferenced_nonNull_native;
  isUniquelyReferenced_nonNull_native = v120;
  *(v53 + 96) = MEMORY[0x1E69E6158];
  *(v53 + 104) = v120;
  *(v53 + 72) = v57;
  *(v53 + 80) = v59;

  v62 = sub_1D7261DBC();
  v64 = v63;
  v117 = v61;

  *(v53 + 136) = v60;
  *(v53 + 144) = v120;
  *(v53 + 112) = v62;
  *(v53 + 120) = v64;
  v65 = sub_1D7262EDC();
  sub_1D725C30C("Sports record found %ld statistics for %{public}@, %@", 53, 2, &dword_1D5B42000, v121, v65, v53);

  a1 = v130;
  v66 = v130[2];

  if (v66)
  {
    v67 = 0;
    v68 = v130 + 5;
    v5 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v67 >= a1[2])
      {
        goto LABEL_70;
      }

      v70 = *v68;
      v126 = v67;
      v127 = *(v68 - 1);
      a1 = v68[2];
      v71 = sub_1D726210C();
      v10 = v72;
      swift_bridgeObjectRetain_n();

      v73 = v5;
      v5 = swift_isUniquelyReferenced_nonNull_native();
      *&v131 = v73;
      v75 = sub_1D5B69D90(v71, v10);
      v76 = *(v73 + 16);
      v77 = (v74 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_71;
      }

      isUniquelyReferenced_nonNull_native = v74;
      if (*(v73 + 24) >= v78)
      {
        if (v5)
        {
          if (v74)
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_1D6D7DE64();
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        sub_1D6D666FC(v78, v5);
        v79 = sub_1D5B69D90(v71, v10);
        if ((isUniquelyReferenced_nonNull_native & 1) != (v80 & 1))
        {
          goto LABEL_75;
        }

        v75 = v79;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_37:

          v5 = v131;
          v69 = (*(v131 + 56) + 16 * v75);
          *v69 = v127;
          v69[1] = v70;

          goto LABEL_38;
        }
      }

      v5 = v131;
      *(v131 + 8 * (v75 >> 6) + 64) |= 1 << v75;
      v81 = (*(v5 + 48) + 16 * v75);
      *v81 = v71;
      v81[1] = v10;
      v82 = (*(v5 + 56) + 16 * v75);
      *v82 = v127;
      v82[1] = v70;

      v83 = *(v5 + 16);
      v45 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v45)
      {
        goto LABEL_73;
      }

      *(v5 + 16) = v84;
LABEL_38:
      v67 = v126 + 1;
      v68 += 6;
      v10 = v129;
      a1 = v130;
      if (v66 == v126 + 1)
      {
        goto LABEL_52;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC8];
LABEL_52:

  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1D7279970;

  v86 = a1[2];

  *(v85 + 56) = MEMORY[0x1E69E6530];
  *(v85 + 64) = MEMORY[0x1E69E65A8];
  *(v85 + 32) = v86;
  v87 = [v10 identifier];
  v88 = sub_1D726207C();
  v89 = v5;
  v91 = v90;

  v92 = MEMORY[0x1E69E6158];
  *(v85 + 96) = MEMORY[0x1E69E6158];
  *(v85 + 104) = v120;
  *(v85 + 72) = v88;
  *(v85 + 80) = v91;

  v93 = sub_1D7261DBC();
  v95 = v94;

  *(v85 + 136) = v92;
  *(v85 + 144) = v120;
  *(v85 + 112) = v93;
  *(v85 + 120) = v95;
  v96 = sub_1D7262EDC();
  sub_1D725C30C("Sports record found %ld leagues for %{public}@, %@", 50, 2, &dword_1D5B42000, v121, v96, v85);

  if (!*(v117 + 16) || (v97 = sub_1D5B69D90(1936615799, 0xE400000000000000), (v98 & 1) == 0))
  {

    sub_1D611E10C();
    swift_allocError();
    *v113 = v10;
    v114 = xmmword_1D729D540;
LABEL_63:
    *(v113 + 8) = v114;
    *(v113 + 24) = 1;
    goto LABEL_64;
  }

  if (!*(v117 + 16))
  {
LABEL_62:

    sub_1D611E10C();
    swift_allocError();
    *v113 = v10;
    v114 = xmmword_1D729D530;
    goto LABEL_63;
  }

  v99 = (*(v117 + 56) + 16 * v97);
  v101 = *v99;
  v100 = v99[1];

  v102 = sub_1D5B69D90(0x736573736F6CLL, 0xE600000000000000);
  if ((v103 & 1) == 0)
  {

    goto LABEL_62;
  }

  v104 = (*(v117 + 56) + 16 * v102);
  v106 = *v104;
  v105 = v104[1];
  v107 = *(v117 + 16);

  v133 = v101;
  if (v107 && (v108 = sub_1D5B69D90(1936025972, 0xE400000000000000), (v109 & 1) != 0))
  {
    v110 = (*(v117 + 56) + 16 * v108);
    v112 = *v110;
    v111 = v110[1];
  }

  else
  {
    v112 = 0;
    v111 = 0;
  }

  sub_1D611DD9C(v117, v123, v124, v89, v118, v122, &v131);

  v115 = v132;
  v116 = v131;
  *a4 = v133;
  *(a4 + 8) = v100;
  *(a4 + 16) = v106;
  *(a4 + 24) = v105;
  *(a4 + 32) = v112;
  *(a4 + 40) = v111;
  *(a4 + 48) = v116;
  *(a4 + 64) = v115;
}

void sub_1D611DD9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_69;
  }

  v12 = sub_1D5B69D90(a2, a3);
  if ((v13 & 1) == 0)
  {
    goto LABEL_69;
  }

  v14 = (*(a1 + 56) + 16 * v12);
  v15 = *v14;
  v16 = v14[1];
  v17 = HIBYTE(v16) & 0xF;
  v18 = *v14 & 0xFFFFFFFFFFFFLL;
  if (!((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : *v14 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_69;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {

    sub_1D5FD15E0(v15, v16, 10);
    v23 = v46;
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_69;
  }

  if ((v16 & 0x2000000000000000) == 0)
  {
    if ((v15 & 0x1000000000000000) != 0)
    {
      v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = sub_1D7263E5C();
    }

    v21 = *v20;
    if (v21 == 43)
    {
      if (v18 >= 1)
      {
        v22 = v18 - 1;
        if (v18 != 1)
        {
          v23 = 0;
          if (v20)
          {
            v30 = v20 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                goto LABEL_63;
              }

              v32 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_63;
              }

              v23 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_63;
              }

              ++v30;
              if (!--v22)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v21 != 45)
    {
      if (v18)
      {
        v23 = 0;
        if (v20)
        {
          while (1)
          {
            v36 = *v20 - 48;
            if (v36 > 9)
            {
              goto LABEL_63;
            }

            v37 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              goto LABEL_63;
            }

            v23 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              goto LABEL_63;
            }

            ++v20;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_63:
      v23 = 0;
      LOBYTE(v22) = 1;
LABEL_64:
      v50 = v22;
      if ((v22 & 1) == 0)
      {
LABEL_65:
        if (*(a4 + 16))
        {
          v41 = sub_1D5B69D90(a5, a6);
          if (v42)
          {
            v43 = (*(a4 + 56) + 16 * v41);
            v45 = *v43;
            v44 = v43[1];
            *a7 = v23;
            a7[1] = v45;
            a7[2] = v44;

            return;
          }
        }
      }

LABEL_69:
      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
      return;
    }

    if (v18 >= 1)
    {
      v22 = v18 - 1;
      if (v18 != 1)
      {
        v23 = 0;
        if (v20)
        {
          v24 = v20 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              goto LABEL_63;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              goto LABEL_63;
            }

            v23 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_63;
            }

            ++v24;
            if (!--v22)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_62:
        LOBYTE(v22) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v49[0] = *v14;
  v49[1] = v16 & 0xFFFFFFFFFFFFFFLL;
  if (v15 != 43)
  {
    if (v15 != 45)
    {
      if (v17)
      {
        v23 = 0;
        v38 = v49;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v17)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_63;
    }

    if (v17)
    {
      v22 = v17 - 1;
      if (v17 != 1)
      {
        v23 = 0;
        v27 = v49 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v22)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if (v17)
  {
    v22 = v17 - 1;
    if (v17 != 1)
    {
      v23 = 0;
      v33 = v49 + 1;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v23;
        if ((v23 * 10) >> 64 != (10 * v23) >> 63)
        {
          break;
        }

        v23 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v33;
        if (!--v22)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_74:
  __break(1u);
}

unint64_t sub_1D611E10C()
{
  result = qword_1EC883E50;
  if (!qword_1EC883E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E50);
  }

  return result;
}

uint64_t sub_1D611E160()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5F72534;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t FCCoreConfigurationManager.fetchConfiguration()(uint64_t a1)
{
  sub_1D5B7E264(0, &qword_1EDF3B910, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D611E2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = sub_1D5B7E910;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;
  v13[4] = sub_1D611E898;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D5BE62C8;
  v13[3] = &block_descriptor_20;
  v12 = _Block_copy(v13);

  [a5 fetchConfigurationIfNeededWithCompletion_];
  _Block_release(v12);
}

void sub_1D611E41C(uint64_t a1, void *a2)
{
  sub_1D611E8C8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  FCCurrentQoS();
  v9 = FCDispatchQueueForQualityOfService();
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1D611E958;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5BE62C8;
  aBlock[3] = &block_descriptor_26;
  v12 = _Block_copy(aBlock);

  [a2 fetchAppConfigurationIfNeededWithCompletionQueue:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1D611E5EC(uint64_t a1, void *a2)
{
  swift_unknownObjectRetain();
  v3 = a2;
  sub_1D5B5534C(0, &qword_1EDF1A890, &protocolRef_FCNewsAppConfiguration);
  sub_1D725B9DC();
  sub_1D611E8C8(0);
  if (v5)
  {
    return sub_1D726286C();
  }

  else
  {
    return sub_1D726287C();
  }
}

uint64_t FCNewsAppConfigurationManager.todayFeedEditionConfig.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 possiblyUnfetchedAppConfiguration];
  FCNewsAppConfiguration.todayFeedEditionConfig.getter(a1);

  return swift_unknownObjectRelease();
}

uint64_t FCNewsAppConfigurationManager.accessor<A>(for:)(void *a1, uint64_t a2)
{
  sub_1D725BDEC();
  v5 = swift_allocObject();
  v5[2] = a2;
  v5[3] = v2;
  v5[4] = a1;
  swift_unknownObjectRetain();

  return sub_1D725BDFC();
}

uint64_t sub_1D611E7B4(void *a1, uint64_t a2)
{
  [a1 possiblyUnfetchedAppConfiguration];
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t FCNewsAppConfigurationManager.int(for:)(uint64_t a1)
{
  [v1 possiblyUnfetchedAppConfiguration];
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void sub_1D611E8C8(uint64_t a1)
{
  if (!qword_1EDF048A8)
  {
    sub_1D5B5534C(255, &qword_1EDF1A890, &protocolRef_FCNewsAppConfiguration);
    sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    v1 = sub_1D726288C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF048A8);
    }
  }
}

uint64_t sub_1D611E958(uint64_t a1, void *a2)
{
  sub_1D611E8C8(0);

  return sub_1D611E5EC(a1, a2);
}

unint64_t sub_1D611EA14(uint64_t a1)
{
  result = sub_1D611EA3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D611EA3C()
{
  result = qword_1EC883E60;
  if (!qword_1EC883E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E60);
  }

  return result;
}

unint64_t sub_1D611EA90()
{
  result = qword_1EDF0EDF8;
  if (!qword_1EDF0EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EDF8);
  }

  return result;
}

unint64_t sub_1D611EAE4()
{
  result = qword_1EDF0EE00;
  if (!qword_1EDF0EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EE00);
  }

  return result;
}

uint64_t sub_1D611EB60(void *a1)
{
  v3 = v1;
  sub_1D6123808(0, &qword_1EC883F18, sub_1D61237B4, &type metadata for A12_V5.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61237B4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6123870(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D611EDA8(uint64_t a1)
{
  v2 = sub_1D61237B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D611EDE4(uint64_t a1)
{
  v2 = sub_1D61237B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D611EE20@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6123514(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D611EE80(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D61231A0();

  return sub_1D725A24C();
}

uint64_t sub_1D611EEFC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6123808(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D611EFB8(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v119 = a2;
  v136 = a1;
  v108 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v118 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v124 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v107 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for GroupLayoutContext(0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v23);
  v117 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v107 - v27;
  v113 = &v107 - v27;
  v122 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v122 - 1);
  MEMORY[0x1EEE9AC00](v122, v30);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v112 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v136, v32, type metadata accessor for GroupLayoutBindingContext);
  v114 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v119, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v111 = sub_1D725893C();
  v110 = v35;
  (*(v19 + 8))(v22, v18);
  v134 = &type metadata for A12_V5;
  v36 = sub_1D5ECE9C4();
  v135 = v36;
  LOBYTE(v132) = v33;
  *(&v132 + 1) = v34;
  v133 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v125[0] = sub_1D7264C5C();
  v125[1] = v39;
  v130 = 95;
  v131 = 0xE100000000000000;
  v128 = 45;
  v129 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v117;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v110;
  *v44 = v111;
  v44[1] = v45;
  sub_1D5B68374(&v132, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v122);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v113, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v115 + 56);
  v115 = v37;
  v48(v37 + v47, 0, 1, v116);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  v134 = &type metadata for A12_V5;
  v135 = v36;
  LOBYTE(v132) = v112;
  v49 = v38;
  *(&v132 + 1) = v38;
  v133 = v5;
  sub_1D5BE3ED8(v119, v43, v114);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v119 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v116 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v122[14];
    v59 = v136;
    v60 = *&v136[v56];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v57 = sub_1D5C14D80(v63), , v57))
    {
      v114 = v56;
      v52 = *(v57 + 2);
      if (v52)
      {
        v43 = 0;
        v56 = MEMORY[0x1E69E7CC0];
        v53 = v120;
        v54 = v121;
        while (1)
        {
          v55 = *(v57 + 2);
          if (v43 >= v55)
          {
            break;
          }

          v64 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v42 = *(v53 + 72);
          sub_1D5BE3ED8(&v57[v64 + v42 * v43], v54, type metadata accessor for FeedHeadline);
          if ((*(v54 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v54, v124, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v125[0] = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
              v53 = v120;
              v56 = v125[0];
            }

            v37 = *(v56 + 16);
            v66 = *(v56 + 24);
            if (v37 >= v66 >> 1)
            {
              sub_1D5C0F91C((v66 > 1), v37 + 1, 1);
              v53 = v120;
              v56 = v125[0];
            }

            *(v56 + 16) = v37 + 1;
            sub_1D5BDA904(v124, v56 + v64 + v37 * v42, type metadata accessor for FeedHeadline);
            v54 = v121;
          }

          else
          {
            sub_1D5BE780C(v54, type metadata accessor for FeedHeadline);
          }

          if (v52 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_68;
      }

      v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v59 = v136;
      if ((*v136 & 1) == 0)
      {

        sub_1D62F071C(v56);
        v71 = v70;

        v56 = v71;
      }

      v43 = v117;
      v52 = MEMORY[0x1E69E7CC0];
      v72 = *&v59[v122[18]];
      v73 = *&v59[v122[19]];
      if (__OFSUB__(v72, v73))
      {
        __break(1u);
        goto LABEL_73;
      }

      v74 = sub_1D5C0FAD4(v56, v72 - v73);
      v42 = sub_1D5C11E10(&unk_1F5111C48, v74, v57);

      if (v42)
      {
      }

      else
      {
        v42 = sub_1D5C11E10(&unk_1F5111C48, v56, v57);

        if (!v42)
        {
          v125[0] = &unk_1F5111C48;
          v4 = v109;
          sub_1D5E239F4(v125);
          if (v4)
          {
            goto LABEL_77;
          }

          if (!*(v125[0] + 2))
          {
            goto LABEL_75;
          }

          v103 = *(v125[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v104, "FeedHeadline");
          v104[13] = 0;
          *(v104 + 7) = -5120;
          *(v104 + 2) = 0;
          *(v104 + 3) = 0;
          *(v104 + 4) = 4;
          *(v104 + 5) = v103;
          *(v104 + 6) = 0;
          *(v104 + 7) = 0;
          v104[64] = 0;
          swift_willThrow();
          goto LABEL_66;
        }
      }

      strcpy(v125, "FeedHeadline");
      BYTE5(v125[1]) = 0;
      HIWORD(v125[1]) = -5120;
      v126 = 0;
      v127 = 0;

      v76 = sub_1D5C107C4(v75);

      sub_1D5BDACA8(v125, v76);
      swift_setDeallocating();

      v56 = v114;
    }

    else
    {
      if (qword_1F5111C68)
      {
        v125[0] = &unk_1F5111C48;
        v4 = v109;
        sub_1D5E239F4(v125);
        if (v4)
        {
          goto LABEL_77;
        }

        v67 = *(v125[0] + 2);
        if (v67)
        {
          v68 = *(v125[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_48:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          __swift_destroy_boxed_opaque_existential_1(&v132);
          return;
        }

        __break(1u);
LABEL_71:
        v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
        goto LABEL_30;
      }

      v42 = MEMORY[0x1E69E7CC0];
    }

    v77 = swift_initStackObject();
    v124 = v77;
    *(v77 + 16) = v52;
    v60 = (v77 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_71;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v78 = &v57[16 * v54];
    *(v78 + 4) = sub_1D63106DC;
    *(v78 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v79 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v80);

    if (!v37)
    {
      break;
    }

    v121 = v42;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_51:
      if ((*v59 & 1) == 0)
      {

        sub_1D62F071C(v57);
        v89 = v88;

        v57 = v89;
      }

      v42 = v121;
      v90 = *&v59[v122[18]];
      v91 = *&v59[v122[19]];
      if (__OFSUB__(v90, v91))
      {
        goto LABEL_74;
      }

      v92 = sub_1D5C0FAD4(v57, v90 - v91);
      v93 = sub_1D5C11E10(&unk_1F5111C70, v92, v37);

      if (v93)
      {

        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v95 = sub_1D5C107C4(v94);

        sub_1D5BDACA8(v125, v95);
        swift_setDeallocating();

        v87 = v93;
LABEL_58:
        v43 = v117;
        goto LABEL_59;
      }

      v96 = sub_1D5C11E10(&unk_1F5111C70, v57, v37);

      if (v96)
      {
        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v98 = sub_1D5C107C4(v97);

        sub_1D5BDACA8(v125, v98);
        swift_setDeallocating();

        v87 = v96;
        goto LABEL_58;
      }

      v125[0] = &unk_1F5111C70;
      v4 = v109;
      sub_1D5E239F4(v125);
      if (v4)
      {
        goto LABEL_77;
      }

      v43 = v117;
      if (!*(v125[0] + 2))
      {
        goto LABEL_76;
      }

      v105 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v106, "FeedHeadline");
      v106[13] = 0;
      *(v106 + 7) = -5120;
      *(v106 + 2) = 0;
      *(v106 + 3) = 0;
      *(v106 + 4) = 0;
      *(v106 + 5) = v105;
      *(v106 + 6) = 0;
      *(v106 + 7) = 0;
      v106[64] = 0;
      swift_willThrow();
LABEL_66:
      swift_setDeallocating();
      goto LABEL_48;
    }

    v42 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v120;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v42 >= v55)
      {
        break;
      }

      v81 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v82 = v118;
      sub_1D5BE3ED8(v37 + v81 + v52 * v42, v118, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v82, v123, type metadata accessor for FeedHeadline);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v57;
      if ((v83 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      v54 = *(v57 + 2);
      v84 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v84 >> 1)
      {
        sub_1D5C0F91C((v84 > 1), v54 + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      ++v42;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v123, &v57[v81 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v136;
      if (v43 == v42)
      {
        goto LABEL_51;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  if (!qword_1F5111C90 || !qword_1F5111C98 || !qword_1F5111CA0)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_59:
    v125[0] = v42;
    sub_1D5C122E4(v87);
    v99 = v125[0];
    v100 = type metadata accessor for A12_V5.Bound(0);
    v101 = v108;
    v108[3] = v100;
    v101[4] = sub_1D6123870(&qword_1EC883E78, type metadata accessor for A12_V5.Bound, &unk_1D729D854);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
    *boxed_opaque_existential_1 = v115;
    sub_1D5B63F14(&v132, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v100 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v100 + 28)) = v99;
    return;
  }

  v125[0] = &unk_1F5111C70;
  v4 = v109;
  sub_1D5E239F4(v125);
  if (!v4)
  {

    if (*(v125[0] + 2))
    {
      v85 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v86, "FeedHeadline");
      v86[13] = 0;
      *(v86 + 7) = -5120;
      *(v86 + 2) = 0;
      *(v86 + 3) = 0;
      *(v86 + 4) = 0;
      *(v86 + 5) = v85;
      *(v86 + 6) = 0;
      *(v86 + 7) = 0;
      v86[64] = 0;
      swift_willThrow();
      goto LABEL_48;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

LABEL_77:

  __break(1u);
}

uint64_t sub_1D61201FC@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A12_V5.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v47);
  sub_1D5B68374(v11 + 56, v46);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v47, inited + 16);
  sub_1D5B63F14(v46, inited + 56);
  *(inited + 96) = v13;
  v45[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v45, v49);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  v15 = *(v2 + *(v8 + 28));
  v42 = v2;
  v44[2] = v2;
  v44[3] = v49;
  v16 = sub_1D5ECA650(sub_1D6123124, v44, v15);
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v35 = (2 * v18) | 1;
    if (v18 >= 3)
    {
      v36 = 3;
    }

    else
    {
      v36 = *(v16 + 16);
    }

    v37 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v17, v17 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v36, v35);
    v19 = v38;
  }

  else
  {

    v19 = v17;
  }

  *&v47[0] = v19;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v21 = v20;
  sub_1D60DF67C(&qword_1EC880610, MEMORY[0x1E69E6340]);
  v41 = v21;
  sub_1D7262C1C();

  v22 = *MEMORY[0x1E69D7130];
  v23 = sub_1D7259D1C();
  (*(*(v23 - 8) + 104))(v7, v22, v23);
  v24 = (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1D6123248(0, &qword_1EC883E98, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v26 = v48;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D60DF67C(&qword_1EDF1B248, MEMORY[0x1E69E6328]);
  v27 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v39 = v47[1];
  v40 = v47[0];
  *&v47[0] = v17;
  *&v46[0] = v26;
  MEMORY[0x1EEE9AC00](v27, v28);

  v29 = sub_1D725C00C();

  v30 = v43;
  *v43 = 0;
  v31 = v40;
  *(v30 + 24) = v39;
  *(v30 + 8) = v31;
  *&v47[0] = v29;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v32 = sub_1D72623BC();

  v33 = MEMORY[0x1E69E7CC0];
  *(v30 + 5) = v32;
  *(v30 + 6) = v33;
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1D6120784@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v10, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a3, v14);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v11, v10, v14, a4);
}

uint64_t sub_1D612085C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-v10];
  v19 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D6123248(0, &qword_1EC883EB8, MEMORY[0x1E69D7150]);
  sub_1D6123204(&qword_1EC883EC0, &qword_1EC883EB8, v13, MEMORY[0x1E69D7158], v14);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6120A4C(uint64_t a1, void *a2, uint64_t a3)
{
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v50 = sub_1D612314C;
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v46 - v8);
  v63 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  v12 = *(v10 - 8);
  v13 = *(v12 + 104);
  v14 = *MEMORY[0x1E69D6F50];
  v15 = v10;
  v55 = v12 + 104;
  v56 = v13;
  (v13)(v16);
  *v9 = v11;
  v17 = *(v6 + 104);
  v54 = *MEMORY[0x1E69D73C0];
  v17(v9);
  v18 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  v48 = v19;
  v47 = sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v18, MEMORY[0x1E69D6F40], v20);
  sub_1D7259A9C();
  v21 = *(v6 + 8);
  v57 = v6 + 8;
  v61 = v21;
  v21(v9, v5);
  v63 = v58;
  v22 = *MEMORY[0x1E69D74A8];
  v52 = v17;
  v53 = v6 + 104;
  (v17)(v9, v22, v5);
  sub_1D61232CC(0);
  sub_1D6123808(0, &qword_1EC883EE0, v50, &type metadata for A12_V5.Layout, MEMORY[0x1E69D70D8]);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7273AE0;
  v28 = v24;
  v29 = v47;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x1E69D7098], v28);
  v30 = v48;
  v62 = v59;
  sub_1D72599EC();
  v31 = v61;

  v32 = v5;
  result = v31(v9, v5);
  v34 = *(v60 + 16);
  if (v34)
  {
    v35 = (v60 + 32);
    v36 = *MEMORY[0x1E69D7460];
    v49 = v14;
    LODWORD(v50) = v36;
    v51 = v5;
    do
    {
      v59 = v35 + 1;
      v60 = v34;
      v37 = v58;
      v63 = v58;
      v38 = swift_allocBox();
      v56(v39, v14, v15);
      *v9 = v38;
      v40 = v29;
      v41 = v30;
      v42 = v52;
      (v52)(v9, v54, v32);

      sub_1D7259A9C();
      v61(v9, v32);
      v63 = v37;
      v43 = (v42)(v9, v50, v32);
      v30 = v41;
      v29 = v40;
      MEMORY[0x1EEE9AC00](v43, v44);
      sub_1D72599EC();
      v45 = v61;

      v14 = v49;
      v32 = v51;
      result = v45(v9);
      v35 = v59;
      v34 = v60 - 1;
    }

    while (v60 != 1);
  }

  return result;
}

uint64_t sub_1D6120F84(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v20 - v8);
  v27 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  *v9 = v10;
  v23 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v11(v9);
  v20 = v11;
  v26 = a2;
  v12 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v12, MEMORY[0x1E69D6F40], v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v15 = v22;
  v27 = v22;
  v16 = swift_allocObject();
  *(v16 + 16) = 4;
  *v9 = v16;
  (v11)(v9, v23, v5);
  v17 = v21;
  v25 = v21;
  sub_1D7259A2C();
  v14(v9, v5);
  v27 = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = 4;
  *v9 = v18;
  (v20)(v9, v23, v5);
  v24 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D61212C4(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v40 - v23;
  v47 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v40 = v6;
  v41 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 5;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v40 - 4) = v18;
  *(&v40 - 3) = v13;
  v39 = v9;
  (*(v42 + 104))(v44, *MEMORY[0x1E69D7378], v43, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v45 + 8))(v9, v40);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v36, MEMORY[0x1E69D6F40], v37);
  v39 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v41);
}

uint64_t sub_1D6121898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v42 - v24;
  v49 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v42 = KeyPath;
  v43 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v14;
  v41 = v10;
  (*(v44 + 104))(v46, *MEMORY[0x1E69D7378], v45, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v47 + 8))(v10, v48);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v38, MEMORY[0x1E69D6F40], v39);
  v41 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v43);
}

uint64_t sub_1D6121E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v42 - v24;
  v49 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v42 = KeyPath;
  v43 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v14;
  v41 = v10;
  (*(v44 + 104))(v46, *MEMORY[0x1E69D7378], v45, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v47 + 8))(v10, v48);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v38, MEMORY[0x1E69D6F40], v39);
  v41 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v43);
}

uint64_t sub_1D6122440(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v18 - v8);
  v22 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v21 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v13, MEMORY[0x1E69D6F40], v14);
  sub_1D7259A2C();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v22 = v19;
  v16 = swift_allocObject();
  *(v16 + 16) = 6;
  *v9 = v16;
  v12(v9, v11, v5);
  v20 = v18;
  sub_1D7259A2C();
  return (v15)(v9, v5);
}

uint64_t sub_1D61226E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v31 - v12);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16))
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = v4[5];
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    v32 = v9;
    v22 = v21;
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v22 + 56))(&v7[v18], 0, 1, v20);
    v23 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v23;
    v24 = *MEMORY[0x1E69DDCE0];
    v25 = *(MEMORY[0x1E69DDCE0] + 8);
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
    v28 = v23;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(a2 + v17, v7, v24, v25, v26, v27);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v29 = MEMORY[0x1E69D6F38];
    sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
    sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v29, MEMORY[0x1E69D6F40], v30);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6122A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v33 - v12);
  v35 = a1;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4060E00000000000;
  *v13 = v15;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v17 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = a2 + *(v17 + 72);
    v33[1] = KeyPath;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    v34 = v9;
    v24 = v23;
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v24 + 56))(&v7[v20], 0, 1, v22);
    v25 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v25;
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = v25;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v19 + v18, v7, v26, v27, v28, v29);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v31 = MEMORY[0x1E69D6F38];
    sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
    sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v31, MEMORY[0x1E69D6F40], v32);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v34);
  }

  return result;
}

uint64_t sub_1D6122E6C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V5.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6122F80(uint64_t a1)
{
  *(a1 + 8) = sub_1D6122FB0();
  result = sub_1D6123004();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6122FB0()
{
  result = qword_1EC883E68;
  if (!qword_1EC883E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E68);
  }

  return result;
}

unint64_t sub_1D6123004()
{
  result = qword_1EC883E70;
  if (!qword_1EC883E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E70);
  }

  return result;
}

uint64_t type metadata accessor for A12_V5.Bound(uint64_t a1)
{
  result = qword_1EC883E80;
  if (!qword_1EC883E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61230CC(uint64_t a1)
{
  result = sub_1D6123870(&qword_1EC883E90, type metadata accessor for A12_V5.Bound, &unk_1D729D82C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D612314C()
{
  result = qword_1EC883EA0;
  if (!qword_1EC883EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EA0);
  }

  return result;
}

unint64_t sub_1D61231A0()
{
  result = qword_1EC883EA8;
  if (!qword_1EC883EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EA8);
  }

  return result;
}

uint64_t sub_1D6123204(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1D6123248(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6123248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V5.Layout;
    v8[1] = &type metadata for A12_V5.Layout.Attributes;
    v8[2] = sub_1D612314C();
    v8[3] = sub_1D61231A0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D61232CC(uint64_t a1)
{
  if (!qword_1EC883ED8)
  {
    sub_1D6123808(255, &qword_1EC883EE0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883ED8);
    }
  }
}

unint64_t sub_1D61233B8()
{
  result = qword_1EC883EE8;
  if (!qword_1EC883EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EE8);
  }

  return result;
}

unint64_t sub_1D6123410()
{
  result = qword_1EC883EF0;
  if (!qword_1EC883EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EF0);
  }

  return result;
}

unint64_t sub_1D6123468()
{
  result = qword_1EC883EF8;
  if (!qword_1EC883EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EF8);
  }

  return result;
}

unint64_t sub_1D61234C0()
{
  result = qword_1EC883F00;
  if (!qword_1EC883F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F00);
  }

  return result;
}

uint64_t sub_1D6123514@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6123808(0, &qword_1EC883F08, sub_1D61237B4, &type metadata for A12_V5.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61237B4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6123870(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D61237B4()
{
  result = qword_1EC883F10;
  if (!qword_1EC883F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F10);
  }

  return result;
}

void sub_1D6123808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6123870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D61238CC()
{
  result = qword_1EC883F20;
  if (!qword_1EC883F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F20);
  }

  return result;
}

unint64_t sub_1D6123924()
{
  result = qword_1EC883F28;
  if (!qword_1EC883F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F28);
  }

  return result;
}

unint64_t sub_1D612397C()
{
  result = qword_1EC883F30;
  if (!qword_1EC883F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F30);
  }

  return result;
}

id sub_1D61239D0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController____lazy_storage___panGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController____lazy_storage___panGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController____lazy_storage___panGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v0 action:sel_doPanGestureWithGesture_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D6123AEC()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController];
  v5 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v3 addSubview_];

  v7 = [v4 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  v19 = sub_1D61239D0();
  [v19 setDelegate_];

  v20 = *&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorViewController];
  v21 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView;
  [*(v20 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView) setUserInteractionEnabled_];
  [*(v20 + v21) addGestureRecognizer_];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = *&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController];
  v25 = [v24 view];
  if (!v25)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  [v23 addSubview_];

  v27 = [v24 view];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  v29 = [v1 view];
  if (v29)
  {
    v30 = v29;
    [v29 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    [v28 setFrame_];

    sub_1D725974C();

    sub_1D725975C();

    return;
  }

LABEL_17:
  __break(1u);
}

double sub_1D6123DFC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editor);
  type metadata accessor for DebugFormatConsoleAnimator();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 16) = v1;
  swift_unknownObjectWeakAssign();

  sub_1D5ED3714();

  return result;
}

void sub_1D6123ED4()
{
  v1 = v0;
  v77.receiver = v0;
  v77.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v77, sel_viewWillLayoutSubviews);
  if (v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight + 8])
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      goto LABEL_23;
    }

    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v78.origin.x = v5;
    v78.origin.y = v7;
    v78.size.width = v9;
    v78.size.height = v11;
    v12 = CGRectGetHeight(v78) * 0.4;
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight];
  }

  sub_1D725972C();

  if (!v76)
  {
    v43 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] view];
    if (v43)
    {
      v44 = v43;
      v45 = [v1 view];
      if (v45)
      {
        v46 = v45;
        [v45 bounds];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        [v44 setFrame_];
        v55 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController] view];
        if (v55)
        {
          v28 = v55;
          v56 = [v1 view];
          if (v56)
          {
            v57 = v56;
            [v56 bounds];
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v65 = v64;

            v81.origin.x = v59;
            v81.origin.y = v61;
            v81.size.width = v63;
            v81.size.height = v65;
            Height = CGRectGetHeight(v81);
            v66 = [v1 view];
            if (v66)
            {
              v41 = v66;
              goto LABEL_20;
            }

            goto LABEL_32;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v76 != 1)
  {
    return;
  }

  v13 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] view];
  if (!v13)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15 = [v1 view];
  if (!v15)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v75 = v12;
  [v15 bounds];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v79.origin.x = v20;
  v79.origin.y = v22;
  v79.size.width = v24;
  v79.size.height = v26;
  CGRectGetHeight(v79);
  v12 = v75;
  sub_1D726330C();
  [v14 setFrame_];

  v27 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController] view];
  if (!v27)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = v27;
  v29 = [v1 view];
  if (!v29)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v80.origin.x = v32;
  v80.origin.y = v34;
  v80.size.width = v36;
  v80.size.height = v38;
  v39 = CGRectGetHeight(v80);
  v40 = [v1 view];
  if (!v40)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v41 = v40;
  Height = v39 - v75;
LABEL_20:
  [v41 bounds];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;

  v82.origin.x = v68;
  v82.origin.y = v70;
  v82.size.width = v72;
  v82.size.height = v74;
  [v28 setFrame_];
}

void sub_1D612436C(void *a1)
{
  v2 = v1;
  v4 = [a1 state];
  if ((v4 - 3) >= 3)
  {
    if (v4 == 2)
    {
      v35 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession];
      if (v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession + 24])
      {
        return;
      }

      v36 = v35[1];
      v37 = v35[2];
      v38 = [v2 view];
      [a1 locationInView_];
      v40 = v39;

      v41 = [v2 view];
      if (v41)
      {
        v42 = v41;
        [v41 bounds];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v94.origin.x = v44;
        v94.origin.y = v46;
        v94.size.width = v48;
        v94.size.height = v50;
        Height = CGRectGetHeight(v94);
        [*(*&v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorViewController] + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView) bounds];
        v52 = CGRectGetHeight(v95);
        v53 = [*&v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] view];
        if (v53)
        {
          v54 = v53;
          v88 = v52;
          v89 = Height;
          v55 = v40;
          v56 = v37;
          [v53 safeAreaInsets];
          v58 = v57;

          v59 = [v2 view];
          if (v59)
          {
            v60 = v59;
            [v59 bounds];
            v62 = v61;
            v64 = v63;
            v66 = v65;
            v68 = v67;

            v96.origin.x = v62;
            v96.origin.y = v64;
            v96.size.width = v66;
            v96.size.height = v68;
            v69 = CGRectGetHeight(v96);
            v70 = [v2 view];
            if (v70)
            {
              v71 = v70;
              v72 = v56 + v36 + v55 - v36;
              v73 = v89 - v88 - v58;
              v74 = v69 * 0.4;
              [v70 bounds];
              v76 = v75;
              v78 = v77;
              v80 = v79;
              v82 = v81;

              v97.origin.x = v76;
              v97.origin.y = v78;
              v97.size.width = v80;
              v97.size.height = v82;
              v83 = CGRectGetHeight(v97) - v72;
              if (v83 >= v73)
              {
                v83 = v73;
              }

              if (v74 > v83)
              {
                v83 = v74;
              }

              v84 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight];
              *v84 = v83;
              *(v84 + 8) = 0;
              v85 = [v2 view];
              if (v85)
              {
                v86 = v85;
                [v85 setNeedsLayout];

                v87 = [v2 view];
                if (v87)
                {
                  v90 = v87;
                  [v87 layoutIfNeeded];

                  return;
                }

LABEL_33:
                __break(1u);
                return;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v4 != 1)
    {
      return;
    }

    v18 = [v2 view];
    [a1 locationInView_];
    v20 = v19;
    v22 = v21;

    v23 = [*&v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController] view];
    if (v23)
    {
      v24 = v23;
      [v23 frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v93.origin.x = v26;
      v93.origin.y = v28;
      v93.size.width = v30;
      v93.size.height = v32;
      MinY = CGRectGetMinY(v93);
      v34 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession];
      *v34 = v20;
      v34[1] = v22;
      v34[2] = MinY - v22;
      *(v34 + 24) = 0;

      sub_1D725B32C();
      goto LABEL_10;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession];
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v5[24] = 1;

  sub_1D725B32C();

  v6 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight];
  if (v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight + 8])
  {
    return;
  }

  v7 = *v6;
  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v92.origin.x = v11;
  v92.origin.y = v13;
  v92.size.width = v15;
  v92.size.height = v17;
  if (v7 < CGRectGetHeight(v92) * 0.2)
  {
    *v6 = 0.0;
    *(v6 + 8) = 1;

    sub_1D725973C();
LABEL_10:
  }
}

uint64_t getEnumTagSinglePayload for DebugFormatRulerIndicatorView.Selection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebugFormatRulerIndicatorView.Selection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1D6124A5C()
{

  sub_1D725972C();

  if (v3)
  {
    v0 = sub_1D72646CC();

    v1 = v0 ^ 1;
  }

  else
  {

    v1 = 0;
  }

  return v1 & 1;
}

id FCFeedTheming.navigationChromeBackgroundImage(for:userInterfaceIdiom:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1 == 1;
  }

  v4 = &selRef_navigationChromeBackgroundImageCompact;
  if (!v3)
  {
    v4 = &selRef_navigationChromeBackgroundImage;
  }

  v5 = [v2 *v4];

  return v5;
}

id FCFeedTheming.darkStyleNavigationChromeBackgroundImage(for:userInterfaceIdiom:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1 == 1;
  }

  v4 = &selRef_darkStyleNavigationChromeBackgroundImageCompact;
  if (!v3)
  {
    v4 = &selRef_darkStyleNavigationChromeBackgroundImage;
  }

  v5 = [v2 *v4];

  return v5;
}

uint64_t FCFeedTheming.navigationChromeBackgroundImageContentMode(for:userInterfaceIdiom:)(uint64_t a1, uint64_t a2)
{
  if (!a1 || a1 == 2)
  {
    v4 = [v2 navigationChromeBackgroundImageContentMode];
  }

  else
  {
    if (a1 != 1)
    {
      v4 = [v2 navigationChromeBackgroundImageContentMode];
      if (v4 <= 9)
      {
        return qword_1D729DB88[v4];
      }

      return 4;
    }

    v3 = &selRef_navigationChromeBackgroundImageContentModeCompact;
    if (a2)
    {
      v3 = &selRef_navigationChromeBackgroundImageContentMode;
    }

    v4 = [v2 *v3];
  }

  if (v4 < 0xA)
  {
    return qword_1D729DB88[v4];
  }

  return 4;
}

uint64_t FCFeedTheming.hasNavigationChromeBackgroundImage.getter()
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = [v1 currentDevice];
    [v4 userInterfaceIdiom];

    result = [v0 navigationChromeBackgroundImage];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [v0 navigationChromeBackgroundImageCompact];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

id FCFeedTheming.navigationBarBackgroundColor.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v0 navigationChromeBackgroundColor];
  if (v3 || (v3 = [v0 backgroundColor]) != 0)
  {
    v4 = v3;
    v5 = [v3 ne_color];
  }

  else
  {
    v11 = [v2 secondarySystemBackgroundColor];
    v4 = [v2 systemBackgroundColor];
    v5 = [v2 ts:v11 dynamicColor:v4 withDarkStyleVariant:?];
  }

  v6 = [v1 darkStyleNavigationChromeBackgroundColor];
  if (v6 || (v6 = [v1 darkStyleBackgroundColor]) != 0)
  {
    v7 = v6;
    v8 = [v6 ne_color];
  }

  else
  {
    v12 = [v2 secondarySystemBackgroundColor];
    v7 = [v2 systemBackgroundColor];
    v8 = [v2 ts:v12 dynamicColor:v7 withDarkStyleVariant:?];
  }

  v9 = [v2 ts:v5 dynamicColor:v8 withDarkStyleVariant:?];
  return v9;
}

id FCFeedTheming.navigationBarForegroundColor.getter()
{
  sub_1D61254FC(0);
  v2 = v1;
  v3 = *(v1 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v1, v4).n128_u64[0];
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 foregroundColor];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v37 = v7;
  v38 = v3;
  v39 = v2;
  v10 = [v0 darkStyleForegroundColor];
  if (!v10)
  {
    v10 = [objc_opt_self() whiteColor];
  }

  [v9 red];
  v12 = v11;
  [v9 green];
  v14 = v13;
  [v9 blue];
  v16 = v15;
  [v9 alpha];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v12 green:v14 blue:v16 alpha:v17];
  v19 = v10;
  [v19 red];
  v21 = v20;
  [v19 green];
  v23 = v22;
  [v19 blue];
  v25 = v24;
  [v19 alpha];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v21 green:v23 blue:v25 alpha:v26];
  v28 = objc_opt_self();
  v29 = [v28 ts:v18 dynamicColor:v27 withDarkStyleVariant:?];

  v3 = v38;
  v2 = v39;
  v7 = v37;
  if (!v29)
  {
LABEL_7:
    v33 = objc_opt_self();
    v41 = [v33 blackColor];
    v40 = [v33 whiteColor];
    sub_1D5C0B9F0();
    sub_1D725CD2C();
    v34 = FCFeedTheming.navigationBarBackgroundColor.getter();
    sub_1D725CD3C();

    goto LABEL_8;
  }

  v30 = FCFeedTheming.navigationBarBackgroundColor.getter();
  v31 = [v29 _isSimilarToColor_withinPercentage_];

  if (v31)
  {
    v41 = [v28 blackColor];
    v40 = [v28 whiteColor];
    sub_1D5C0B9F0();
    sub_1D725CD2C();
    v32 = FCFeedTheming.navigationBarBackgroundColor.getter();
    sub_1D725CD3C();

LABEL_8:
    (*(v3 + 8))(v7, v2);
    return v41;
  }

  return v29;
}

UIColor_optional __swiftcall FCFeedTheming.navigationChromeDynamicBackgroundColor(fallback:)(UIColor fallback)
{
  v2 = sub_1D6125324(fallback.super.isa, v1, &selRef_navigationChromeBackgroundColor, &selRef_darkStyleNavigationChromeBackgroundColor);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UIColor_optional __swiftcall FCFeedTheming.dynamicBackgroundColor(fallback:)(UIColor fallback)
{
  v2 = sub_1D6125324(fallback.super.isa, v1, &selRef_backgroundColor, &selRef_darkStyleBackgroundColor);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

id sub_1D6125324(void *a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v7 = [v4 *a3];
  v8 = [v4 *a4];
  v9 = _sSo13FCFeedThemingP8NewsFeedE12dynamicColor5light4dark8fallbackSo7UIColorCSgSo7FCColorCSg_AmItF_0(v7, v8, a1);

  return v9;
}

id sub_1D61253F4(uint64_t a1, SEL *a2, SEL *a3)
{
  v5 = v3;
  v6 = [v3 *a2];
  v7 = [v5 *a3];
  v8 = v7;
  if (v6)
  {
    v9 = v6;
    v10 = [v9 ne_color];
    if (v8)
    {
      v11 = [v8 ne_color];
      v12 = [objc_opt_self() ts:v10 dynamicColor:v11 withDarkStyleVariant:?];

      return v12;
    }

    else
    {

      return v10;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1D61254FC(uint64_t a1)
{
  if (!qword_1EDF3B7D8)
  {
    sub_1D5C0B9F0();
    v1 = sub_1D725CD4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B7D8);
    }
  }
}

id _sSo13FCFeedThemingP8NewsFeedE12dynamicColor5light4dark8fallbackSo7UIColorCSgSo7FCColorCSg_AmItF_0(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

    v6 = objc_opt_self();
    v5 = a3;
    goto LABEL_6;
  }

  v5 = [a1 ne_color];
  v6 = objc_opt_self();
  if (a2)
  {
LABEL_6:
    v7 = [a2 ne_color];
    goto LABEL_7;
  }

  v7 = a3;
LABEL_7:
  v8 = v7;
  v9 = [v6 ts:v5 dynamicColor:v7 withDarkStyleVariant:?];

  return v9;
}

id _sSo13FCFeedThemingP8NewsFeedE12dynamicColor5light4darkSo7UIColorCSgSo7FCColorCSg_ALtF_0(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = [v3 ne_color];
  if (a2)
  {
    v5 = [a2 ne_color];
    v6 = [objc_opt_self() ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

    v3 = v5;
    v4 = v6;
  }

  return v4;
}

uint64_t FeedCursorToken.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedCursorToken.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t FeedCursorToken.description.getter()
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t sub_1D61257FC()
{
  v1 = *v0;
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t static FeedCursorToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

void *FeedCursorStore.__allocating_init(log:)(void *a1)
{
  v2 = sub_1D5B837D0(a1);

  return v2;
}

void *FeedCursorStore.init(log:)(void *a1)
{
  v2 = sub_1D5B8380C(a1);

  return v2;
}

void sub_1D612594C(uint64_t a1, void *a2)
{
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  sub_1D5BFB900(a1);
  swift_beginAccess();
  type metadata accessor for FeedCursorStore.WeakCursorContainer(0, v3, v4, v5);

  sub_1D7261E3C();

  if (v8)
  {
    swift_endAccess();
    v6 = sub_1D6125AFC();

    if ((~v6 & 0xF000000000000007) != 0)
    {
      sub_1D5BFB900(a1);
      swift_beginAccess();

      sub_1D612612C(v6);
      type metadata accessor for FeedCursorContainer(255, v3, v4, v7);
      sub_1D7261E1C();
      sub_1D7261E4C();
      swift_endAccess();
      sub_1D5BD9F54(v6);
    }
  }

  else
  {
    swift_endAccess();
  }
}

unint64_t sub_1D6125AFC()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      return Strong | 0x8000000000000000;
    }

    else
    {
      return 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D6125B3C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for FeedCursorStore.WeakToken(255, a2, a3, x3_0);
  sub_1D72627FC();

  swift_getWitnessTable();
  result = sub_1D7263E7C();
  *a4 = result;
  return result;
}

double sub_1D6125BE8(uint64_t a1)
{
  v1 = sub_1D5BFB900(a1);
  v3 = v2;

  sub_1D5B860D0(&v5, v1, v3);

  return result;
}

uint64_t sub_1D6125C58()
{
  if (swift_weakLoadStrong() || (result = swift_weakLoadStrong()) != 0)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1D6125C94()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6125CCC(uint64_t a1)
{
  swift_weakInit();
  swift_weakInit();
  swift_weakAssign();

  return v1;
}

uint64_t sub_1D6125D2C()
{
  swift_weakDestroy();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t FeedCursorStore.deinit()
{

  return v0;
}

uint64_t FeedCursorStore.__deallocating_deinit()
{
  FeedCursorStore.deinit();

  return swift_deallocClassInstance();
}

double static FeedCursorStoreManager.shared.getter()
{
  if (qword_1EDF37050 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D6125E44()
{
  sub_1D5B87E10(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t FeedCursorStoreManager.deinit()
{

  return v0;
}

uint64_t FeedCursorStoreManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6125EFC(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  return v1;
}

BOOL sub_1D61260E4(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
  }

  return Strong != 0;
}

double sub_1D612612C(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

id sub_1D6126298(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7258AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 16);
  sub_1D7258A4C();
  v9 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v8);
  (*(v4 + 8))(v7, v3);
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v8;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(v2 + 72);
  v15 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v9;
  v17 = v11;
  v18 = v8;
  v19 = v13;
  v20 = v14;
  v21 = v16;
  v22 = v9;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v24 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v25 = sub_1D7261D2C();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

id sub_1D612650C(uint64_t a1, unint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v3 setLineBreakMode_];
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7279970;
  v6 = *v5;
  *(inited + 32) = *v5;
  v7 = *(v2 + 24);
  v8 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = *(v2 + 80);
  v11 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v3;

  v13 = v6;
  v14 = v7;
  v15 = v9;
  v16 = v10;
  v17 = v12;
  v18 = v3;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v21 = sub_1D7261D2C();

  v22 = [v19 initWithString:v20 attributes:v21];

  return v22;
}

id sub_1D612672C(uint64_t a1, unint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v3 setAlignment_];
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7279970;
  v6 = *v5;
  *(inited + 32) = *v5;
  v7 = *(v2 + 24);
  v8 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = *(v2 + 88);
  v11 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v3;

  v13 = v6;
  v14 = v7;
  v15 = v9;
  v16 = v10;
  v17 = v12;
  v18 = v3;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v21 = sub_1D7261D2C();

  v22 = [v19 initWithString:v20 attributes:v21];

  return v22;
}

id sub_1D612694C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_1D7258AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 32);
  sub_1D7258A4C();
  v9 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v8);
  (*(v4 + 8))(v7, v3);
  [v9 setAlignment_];
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v8;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(v2 + 128);
  v15 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  v17 = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v9;
  v18 = *MEMORY[0x1E69DB660];
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 184) = MEMORY[0x1E69E63B0];
  *(inited + 160) = 0xBFE0000000000000;
  v19 = v11;
  v20 = v8;
  v21 = v13;
  v22 = v14;
  v23 = v16;
  v24 = v9;
  v25 = v18;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v28 = sub_1D7261D2C();

  v29 = [v26 initWithString:v27 attributes:v28];

  return v29;
}

id sub_1D6126C00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7258AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 32);
  sub_1D7258A4C();
  v9 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v8);
  (*(v4 + 8))(v7, v3);
  [v9 setAlignment_];
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v8;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_opt_self();
  v15 = v11;
  v16 = v8;
  v17 = v13;
  v18 = [v14 secondaryLabelColor];
  v19 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v18;
  v20 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v9;
  v22 = *MEMORY[0x1E69DB660];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  *(inited + 184) = MEMORY[0x1E69E63B0];
  *(inited + 160) = 0xBFE0000000000000;
  v23 = v20;
  v24 = v9;
  v25 = v22;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v28 = sub_1D7261D2C();

  v29 = [v26 initWithString:v27 attributes:v28];

  return v29;
}

void sub_1D6126ED0(void *a1, _BYTE *a2)
{
  if (*a2)
  {
    if (*a2 == 1)
    {
      [a1 setClipsToBounds_];
      v4 = [a1 layer];
      [v4 setCornerRadius_];

      v5 = *(v2 + 96);
    }

    else
    {
      [a1 setClipsToBounds_];
      v7 = [a1 layer];
      [v7 setCornerRadius_];

      v5 = *(v2 + 104);
    }

    [a1 setBackgroundColor_];
  }

  else
  {
    [a1 setClipsToBounds_];
    v6 = [a1 layer];
    [v6 setCornerRadius_];

    v8 = [objc_opt_self() clearColor];
    [a1 setBackgroundColor_];
  }
}

void sub_1D6127044(char *a1)
{
  v3 = sub_1D725CCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  swift_beginAccess();
  (*(v4 + 16))(v7, &a1[v8], v3);
  v9 = (*(v4 + 88))(v7, v3);
  if (v9 == *MEMORY[0x1E69D7630])
  {
    v10 = [a1 layer];
    [v10 setBorderWidth_];
LABEL_5:

    return;
  }

  if (v9 == *MEMORY[0x1E69D7638])
  {
    v11 = *(v1 + 128);
    v12 = v11;
    sub_1D69EA858(v11);

    v13 = [a1 layer];
    [v13 setBorderWidth_];

    v10 = [a1 layer];
    [a1 bounds];
    [v10 setCornerRadius_];
    goto LABEL_5;
  }

  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6127290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  return swift_deallocClassInstance();
}

id sub_1D61274DC(char *a1)
{
  v3 = *(*v1 + 72);
  v4 = *&a1[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState];
  *&a1[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState] = v3;
  v5 = v3;

  return [a1 setTintColor_];
}

void sub_1D612754C(void *a1)
{
  [a1 setClipsToBounds_];
  v2 = [a1 layer];
  [v2 setCornerRadius_];

  v3 = [a1 layer];
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [v3 setShadowColor_];
  v6 = [a1 layer];
  [v6 setShadowOffset_];

  v7 = [a1 layer];
  LODWORD(v8) = 1045220557;
  [v7 setShadowOpacity_];

  v9 = [a1 layer];
  [v9 setShadowRadius_];

  v10 = [a1 layer];
  [v10 setMasksToBounds_];

  v11 = [a1 layer];
  [a1 bounds];
  v16 = [objc_opt_self() bezierPathWithRect_];
  v17 = [v16 CGPath];

  [v11 setShadowPath_];
}

uint64_t WebEmbedViewController.layoutIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double WebEmbedViewController.layoutIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1D61278E0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D6136654;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4, v5);
}

uint64_t sub_1D6127980(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D613661C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3, v4);
  return sub_1D5B74328(v8, v9);
}

void sub_1D6127B08(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
}

void WebEmbedViewController.webLinkPresentingViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();

  swift_unknownObjectWeakAssign();
}

void (*WebEmbedViewController.webLinkPresentingViewController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webLinkPresentingViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D6127CB8;
}

void sub_1D6127CB8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
  }

  free(v3);
}

uint64_t sub_1D6127D90(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(v2 + v4);
}

double WebEmbedViewController.resizingProvider.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*WebEmbedViewController.resizingProvider.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_resizingProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1D5FE6C14;
}

uint64_t sub_1D6127EDC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D5DF8E8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4, v5);
}

uint64_t sub_1D6127F7C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D6136614;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3, v4);
  return sub_1D5B74328(v8, v9);
}

uint64_t sub_1D61280E4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D61365E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4, v5);
}

uint64_t sub_1D6128184(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D61365B0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3, v4);
  return sub_1D5B74328(v8, v9);
}

uint64_t sub_1D612826C(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_1D61282F4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t WebEmbedViewController.showsLoadingSpinner.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  return *(v0 + v1);
}

id WebEmbedViewController.showsLoadingSpinner.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = 0.0;
  if (a1)
  {
    v4 = 1.0;
  }

  return [*(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator) setAlpha_];
}

uint64_t (*WebEmbedViewController.showsLoadingSpinner.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D61284FC;
}

void sub_1D61284FC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = 0.0;
    if (*(v4 + v3[4]))
    {
      v5 = 1.0;
    }

    [*(v4 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator) setAlpha_];
  }

  free(v3);
}

uint64_t WebEmbedViewController.WebEmbedErrorPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

void WebEmbedViewController.errorPosition.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void WebEmbedViewController.errorPosition.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

id WebEmbedViewController.feedConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D61287AC(void **a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void WebEmbedViewController.feedConfiguration.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void (*WebEmbedViewController.feedConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D612893C;
}

void sub_1D612893C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 24) view];
    if (v4)
    {
      v5 = v4;
      [v4 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D61289C4(uint64_t a1)
{
  v3 = type metadata accessor for WebEmbedDataVisualization(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20[-v14];
  v16 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  sub_1D5C00D08(v1 + v16, v15, sub_1D5B4D72C);
  swift_beginAccess();
  sub_1D6136744(a1, v1 + v16, sub_1D5B4D72C);
  swift_endAccess();
  sub_1D5C00D08(v15, v11, sub_1D5B4D72C);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1D613582C(a1, sub_1D5B4D72C);
    sub_1D613582C(v15, sub_1D5B4D72C);
    v15 = v11;
  }

  else
  {
    sub_1D61367AC(v11, v7, type metadata accessor for WebEmbedDataVisualization);
    v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24);
    v18 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager), v17);
    (*(v18 + 24))(v1, &protocol witness table for WebEmbedViewController, v7, v17, v18);
    sub_1D613582C(a1, sub_1D5B4D72C);
    sub_1D613582C(v7, type metadata accessor for WebEmbedDataVisualization);
  }

  return sub_1D613582C(v15, sub_1D5B4D72C);
}

double sub_1D6128CE4(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  return result;
}

double sub_1D6128D80()
{
  sub_1D6135A28(0);
  swift_allocObject();
  sub_1D725B59C();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5DC();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5CC();

  sub_1D725AB0C();

  swift_allocObject();
  sub_1D725B59C();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5DC();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5BC();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5CC();

  sub_1D725AB0C();

  swift_allocObject();
  sub_1D725B59C();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5DC();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D725B5CC();

  sub_1D725AB0C();

  return result;
}

void sub_1D61290CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D6129120();
  }
}

id sub_1D6129120()
{
  v1 = v0;
  v2 = sub_1D7258AAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v127 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatPictureInPictureModel(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v123 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v106 - v11;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v124 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v128 = &v106 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v126 = &v106 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v106 - v24;
  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v125 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v106 - v32;
  v34 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL;
  swift_beginAccess();
  sub_1D5C00D08(&v1[v34], v25, sub_1D5B4D3E0);
  v35 = *(v27 + 48);
  if (v35(v25, 1, v26) == 1)
  {
    return sub_1D613582C(v25, sub_1D5B4D3E0);
  }

  v121 = v35;
  v122 = v3;
  v37 = *(v27 + 32);
  v37(v33, v25, v26);
  v38 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location];
  if (!v38)
  {
    return (*(v27 + 8))(v33, v26);
  }

  v119 = v33;
  v120 = v2;
  v117 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  sub_1D5B68374(&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider], v129);
  v116 = __swift_project_boxed_opaque_existential_1(v129, v129[3]);
  v118 = v38;
  swift_unknownObjectRetain();
  result = [v1 view];
  if (result)
  {
    v39 = result;
    [result bounds];
    v115 = v40;
    v114 = v41;
    v113 = v42;
    v111 = v43;

    v44 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView];
    [v44 frame];
    v110 = v45;
    v109 = v46;
    v108 = v47;
    v107 = v48;
    [v44 frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    [v44 frame];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = objc_allocWithZone(MEMORY[0x1E69CE188]);
    v115 = [v65 initWithBounds:*&v115 contentFrame:v114 contentSafeAreaFrame:*&v113 systemSafeAreaFrame:{*&v111, v110, v109, v108, v107, v50, v52, v54, v56, v58, v60, v62, v64}];
    v66 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL;
    swift_beginAccess();
    sub_1D5C00D08(&v1[v66], v126, sub_1D5B4D3E0);
    sub_1D725ADCC();
    v67 = v12;
    v68 = v123;
    sub_1D61367AC(v67, v123, type metadata accessor for FormatPictureInPictureModel);
    v69 = 1;
    v70 = v27;
    v71 = v26;
    if (v121(v68, 1, v26) != 1)
    {
      v37(v128, v68, v26);
      v69 = 0;
    }

    (*(v70 + 56))(v128, v69, 1, v26);
    v72 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
    swift_beginAccess();
    v73 = *&v1[v72];
    v74 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24];
    v75 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager], v74);
    v76 = *(v75 + 8);
    v123 = v73;
    LODWORD(v114) = v76(v74, v75);
    v77 = *v116;
    v78 = sub_1D6D5A438(v126);
    v79 = *(v77 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_storeFront + 8);
    (*(v122 + 16))(v127, v77 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_locale, v120);
    v80 = *(v77 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_contentEnvironment + 8);
    v81 = [objc_opt_self() sharedApplication];
    v116 = [v81 preferredContentSizeCategory];

    (*(v70 + 16))(v125, v119, v71);
    v82 = v124;
    sub_1D5C00D08(v128, v124, sub_1D5B4D3E0);
    if (v79)
    {
      v79 = sub_1D726203C();
    }

    v113 = sub_1D72589DC();
    if (v80)
    {
      v80 = sub_1D726203C();
    }

    if (v78)
    {
      v111 = sub_1D7261D2C();
    }

    else
    {
      v111 = 0;
    }

    v83 = sub_1D725844C();
    v84 = v121(v82, 1, v71);
    v112 = v71;
    if (v84 == 1)
    {
      v85 = 0;
    }

    else
    {
      v85 = sub_1D725844C();
      (*(v70 + 8))(v82, v71);
    }

    v86 = v118;
    v87 = v70;
    v124 = v85;
    v88 = objc_allocWithZone(MEMORY[0x1E69CE140]);
    LOBYTE(v105) = LOBYTE(v114) & 1;
    v89 = v123;
    v104 = v85;
    v102 = v86;
    v103 = v83;
    v90 = v79;
    v91 = v113;
    v92 = v80;
    v93 = v83;
    v94 = v80;
    v95 = v116;
    v96 = v79;
    v97 = v115;
    v98 = v111;
    v99 = [v88 initWithStoreFront:v90 locale:v113 contentEnvironment:v92 contentSizeCategory:v116 layoutGuide:v115 dataSources:v111 location:v102 sourceURL:v103 activePictureInPictureURL:v104 feedConfiguration:v123 supportsLiveActivities:v105];

    v100 = *(v87 + 8);
    v101 = v112;
    v100(v125, v112);
    (*(v122 + 8))(v127, v120);
    sub_1D613582C(v128, sub_1D5B4D3E0);
    sub_1D613582C(v126, sub_1D5B4D3E0);
    [v117 setConfiguration_];
    swift_unknownObjectRelease();

    v100(v119, v101);
    return __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall WebEmbedViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for WebEmbedStateMachineEvent(0);
  *&v5 = MEMORY[0x1EEE9AC00](v3, v4).n128_u64[0];
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36.receiver = v0;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_viewDidLoad, v5);
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  [v8 setClipsToBounds_];

  v10 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  [v0 addChildViewController_];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v10 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  [v12 addSubview_];

  [v10 prewarm];
  v15 = [v10 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  [v15 setHidden_];

  [v10 didMoveToParentViewController_];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 addSubview_];

  v19 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];
  [v19 setHidden_];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v20;
  [v20 addSubview_];

  v22 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView];
  [v22 setUserInteractionEnabled_];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  [v23 addSubview_];

  swift_storeEnumTagMultiPayload();
  sub_1D725AB1C();
  sub_1D613582C(v7, type metadata accessor for WebEmbedStateMachineEvent);
  if (qword_1EDF0D758 != -1)
  {
    swift_once();
  }

  if (byte_1EDF0D760 == 1)
  {
    v25 = objc_allocWithZone(type metadata accessor for WebEmbedDebugView());
    v26 = sub_1D69FC9A0(0);
    v27 = [v1 view];
    if (v27)
    {
      v28 = v27;
      [v27 addSubview_];

      v29 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView];
      *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView] = v26;
      v30 = v26;

      v31 = [objc_allocWithZone(type metadata accessor for WebEmbedLayoutGuideView()) initWithFrame_];
      v32 = [v1 view];
      if (v32)
      {
        v33 = v32;
        [v32 addSubview_];

        v34 = *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView];
        *&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView] = v31;

        return;
      }

LABEL_23:
      __break(1u);
      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

Swift::Void __swiftcall WebEmbedViewController.viewDidLayoutSubviews()()
{
  v84.receiver = v0;
  v84.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v84, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  sub_1D6129120();
  v13 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition;
  swift_beginAccess();
  v14 = v0[v13];
  v15 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];
  if (v14)
  {
    v16 = [v0 view];
    if (!v16)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v17 = v16;
    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = v25;
    v27 = v23;
    v28 = v21;
    v29 = v19;
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView] frame];
  }

  [v15 setFrame_];
  v30 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator];
  v31 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  if (v0[v31] == 1)
  {
    v36 = [v0 view];
    if (!v36)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v37 = v36;
    [v36 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v35 = v45;
    v34 = v43;
    v33 = v41;
    v32 = v39;
  }

  [v30 setFrame_];
  v46 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView];
  if (!v46)
  {
    goto LABEL_15;
  }

  v47 = v46;
  v48 = [v0 view];
  if (!v48)
  {
    goto LABEL_21;
  }

  v49 = v48;
  [v48 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  [v47 setFrame_];
  v58 = [v47 layer];
  v59 = [v0 view];
  if (!v59)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v60 = v59;
  v61 = [v59 layer];

  [v61 cornerRadius];
  v63 = v62;

  [v58 setCornerRadius_];
  v64 = [v47 layer];

  v65 = [v0 view];
  if (!v65)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v66 = v65;
  v67 = [v65 layer];

  v68 = [v67 cornerCurve];
  [v64 setCornerCurve_];

LABEL_15:
  v69 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView];
  if (!v69)
  {
    return;
  }

  v70 = v69;
  v71 = [v0 view];
  if (!v71)
  {
    goto LABEL_23;
  }

  v72 = v71;
  [v71 bounds];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  [v70 setFrame_];
  v81 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide];
  v82 = *&v70[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide];
  *&v70[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide] = v81;
  v83 = v81;

  [v70 setNeedsLayout];
}

Swift::Void __swiftcall WebEmbedViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  *&v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9).n128_u64[0];
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, sel_viewWillAppear_, a1, v10);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v13 = sub_1D725C42C();
  __swift_project_value_buffer(v13, qword_1EDFFC6F0);
  v14 = v1;
  v15 = sub_1D725C3FC();
  v16 = sub_1D7262EDC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v17 = 136315138;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    *(v18 + 56) = ObjectType;
    *(v18 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v18 + 32) = v14;
    v19 = v14;
    v20 = sub_1D72620BC();
    v22 = v21;
    v23 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v19 + v23, v12, sub_1D5B4D3E0);
    v24 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v19 + v24, v7, sub_1D5B4D72C);
    v25 = sub_1D613520C(v20, v22, v12, v7);
    v27 = sub_1D5BC5100(v25, v26, &v30);

    *(v17 + 4) = v27;
    _os_log_impl(&dword_1D5B42000, v15, v16, "View will appear, %s", v17, 0xCu);
    v28 = v29;
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1DA6FD500](v28, -1, -1);
    MEMORY[0x1DA6FD500](v17, -1, -1);
  }

  sub_1D612A804();
  sub_1D612AA18();
  sub_1D725AB5C();
  if (v30 == 3)
  {
    sub_1D612AC84();
  }
}

void *sub_1D612A804()
{
  v1 = v0;
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1D725AB5C();
  if (v17[8] == 2)
  {
    v12 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v1 + v12, v5, sub_1D5B4D72C);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      v13 = sub_1D5B4D72C;
      v14 = v5;
    }

    else
    {
      sub_1D61367AC(v5, v10, type metadata accessor for WebEmbedDataVisualization);
      v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24);
      v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager), v15);
      (*(v16 + 16))(v1, &protocol witness table for WebEmbedViewController, v10, v15, v16);
      v13 = type metadata accessor for WebEmbedDataVisualization;
      v14 = v10;
    }

    return sub_1D613582C(v14, v13);
  }

  return result;
}

uint64_t sub_1D612AA18()
{
  v1 = v0;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1D725AB5C();
  if (v19[8] == 2)
  {
    v12 = (v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager);
    v13 = *(v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24);
    v14 = *(v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager), v13);
    result = (*(v14 + 8))(v13, v14);
    if (result)
    {
      v15 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(v1 + v15, v5, sub_1D5B4D3E0);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        return sub_1D613582C(v5, sub_1D5B4D3E0);
      }

      else
      {
        (*(v7 + 32))(v10, v5, v6);
        v16 = sub_1D725847C();
        result = (*(v7 + 8))(v10, v6);
        if (v16)
        {
          v17 = v12[3];
          v18 = v12[4];
          __swift_project_boxed_opaque_existential_1(v12, v17);
          return (*(v18 + 40))(v1, &protocol witness table for WebEmbedViewController, v17, v18);
        }
      }
    }
  }

  return result;
}

id sub_1D612AC84()
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v72 - v14;
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v85 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  sub_1D5C00D08(&v0[v24], v15, sub_1D5B4D3E0);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    return sub_1D613582C(v15, sub_1D5B4D3E0);
  }

  v83 = v4;
  v27 = *(v17 + 32);
  v27(v23, v15, v16);
  if (!*&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location])
  {
    return (*(v17 + 8))(v23, v16);
  }

  v82 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location];
  v28 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL;
  swift_beginAccess();
  sub_1D5C00D08(&v0[v28], v11, sub_1D5B4D3E0);
  if (v25(v11, 1, v16) == 1)
  {
    (*(v17 + 8))(v23, v16);
    return sub_1D613582C(v11, sub_1D5B4D3E0);
  }

  v29 = v85;
  v27(v85, v11, v16);
  v30 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_delegate] + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier;
  v31 = *(v30 + 8);
  if (!v31)
  {
    v71 = *(v17 + 8);
    v71(v29, v16);
    return (v71)(v23, v16);
  }

  v80 = *v30;
  v32 = v82;
  swift_unknownObjectRetain();
  v81 = v31;

  result = [v0 view];
  if (result)
  {
    v33 = result;
    [result bounds];
    v79 = v34;
    v78 = v35;
    v77 = v36;
    v76 = v37;

    v38 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView];
    [v38 frame];
    v75 = v39;
    v74 = v40;
    v73 = v41;
    v72 = v42;
    [v38 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [v38 frame];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = objc_allocWithZone(MEMORY[0x1E69CE188]);
    v79 = [v59 initWithBounds:*&v79 contentFrame:v78 contentSafeAreaFrame:v77 systemSafeAreaFrame:{v76, v75, v74, v73, v72, v44, v46, v48, v50, v52, v54, v56, v58}];
    v60 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL;
    swift_beginAccess();
    v61 = v84;
    sub_1D5C00D08(&v0[v60], v84, sub_1D5B4D3E0);
    v62 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize];
    v63 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize + 8];
    v64 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    v65 = v83;
    sub_1D5C00D08(&v0[v64], v83, sub_1D5B4D72C);
    v66 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
    swift_beginAccess();
    v67 = *&v0[v66];
    swift_getObjectType();
    v68 = v67;
    v69 = v79;
    v70 = v85;
    sub_1D613258C(v23, v79, v61, v32, v85, v65, v80, v81, v62, v63, v68, v0);

    swift_unknownObjectRelease();
    sub_1D613582C(v65, sub_1D5B4D72C);
    sub_1D613582C(v61, sub_1D5B4D3E0);
    v71 = *(v17 + 8);
    v71(v70, v16);
    return (v71)(v23, v16);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall WebEmbedViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for WebEmbedDataVisualization(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v55 - v15;
  sub_1D5B4D3E0(0);
  *&v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18).n128_u64[0];
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63.receiver = v1;
  v63.super_class = ObjectType;
  objc_msgSendSuper2(&v63, sel_viewDidDisappear_, a1, v19);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725C42C();
  __swift_project_value_buffer(v22, qword_1EDFFC6F0);
  v23 = v1;
  v24 = sub_1D725C3FC();
  v25 = sub_1D7262EDC();

  v61 = v25;
  v26 = os_log_type_enabled(v24, v25);
  v27 = qword_1EDF3EFA0 + 96;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v59 = v28;
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v28 = 136315138;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    v57 = v21;
    v58 = v16;
    v30 = v29;
    *(v29 + 16) = xmmword_1D7273AE0;
    *(v29 + 56) = ObjectType;
    *(v29 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v30 + 32) = v23;
    v31 = v23;
    v56 = sub_1D72620BC();
    v33 = v32;
    v34 = v12;
    v35 = v5;
    v36 = v4;
    v37 = v8;
    v38 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    v39 = v57;
    sub_1D5C00D08(&v31[v38], v57, sub_1D5B4D3E0);
    v40 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    v41 = &v31[v40];
    v8 = v37;
    v4 = v36;
    v5 = v35;
    v12 = v34;
    v42 = v58;
    sub_1D5C00D08(v41, v58, sub_1D5B4D72C);
    v43 = sub_1D613520C(v56, v33, v39, v42);
    v45 = sub_1D5BC5100(v43, v44, v62);

    v46 = v59;
    *(v59 + 1) = v45;
    v27 = &qword_1EDF3EFA0[12];
    _os_log_impl(&dword_1D5B42000, v24, v61, "View did disappear, %s", v46, 0xCu);
    v47 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1DA6FD500](v47, -1, -1);
    MEMORY[0x1DA6FD500](v46, -1, -1);
  }

  v48 = v27[237];
  swift_beginAccess();
  sub_1D5C00D08(&v23[v48], v12, sub_1D5B4D72C);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v49 = sub_1D5B4D72C;
    v50 = v12;
  }

  else
  {
    sub_1D61367AC(v12, v8, type metadata accessor for WebEmbedDataVisualization);
    v51 = *&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24];
    v52 = *&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32];
    __swift_project_boxed_opaque_existential_1(&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager], v51);
    (*(v52 + 24))(v23, &protocol witness table for WebEmbedViewController, v8, v51, v52);
    v49 = type metadata accessor for WebEmbedDataVisualization;
    v50 = v8;
  }

  sub_1D613582C(v50, v49);
  v53 = *&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24];
  v54 = *&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32];
  __swift_project_boxed_opaque_existential_1(&v23[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager], v53);
  (*(v54 + 48))(v23, &protocol witness table for WebEmbedViewController, v53, v54);
}

id WebEmbedViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v8, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (v3[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable] == 1)
  {
    return [*&v3[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager] reset];
  }

  return result;
}

uint64_t WebEmbedViewController.accessibilityElements.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController) accessibilityElements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726267C();

  return v3;
}

uint64_t (*WebEmbedViewController.accessibilityElements.modify(uint64_t *a1))()
{
  v3 = [*(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController) accessibilityElements];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D726267C();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1D612BC30;
}

id WebEmbedViewController.prepare(layoutGuide:isResizable:isEmbedded:)(void *a1, char a2, char a3)
{
  sub_1D612BCA0(a1);
  *(v3 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable) = a2;
  v6 = *(v3 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController);

  return [v6 setPocketsEnabled_];
}

void sub_1D612BCA0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide;
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide);
  sub_1D5B5A498(0, &unk_1EDF1AB30, 0x1E69CE188);
  v6 = v5;
  v7 = sub_1D726370C();

  if ((v7 & 1) == 0)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    v9 = a1;

    v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView);
    [v9 contentFrame];
    [v10 setFrame_];
    *(v2 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange) = 1;
  }
}

uint64_t sub_1D612BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v60 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61358AC(0);
  v61 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v65 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB60D4(0);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v58 - v31;
  if (*(v3 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange))
  {
    return 1;
  }

  v58[1] = a3;
  v33 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  (*(v16 + 16))(v32, a1, v15);
  (*(v16 + 56))(v32, 0, 1, v15);
  v34 = *(v21 + 48);
  sub_1D5C00D08(v3 + v33, v24, sub_1D5B4D3E0);
  sub_1D5C00D08(v32, &v24[v34], sub_1D5B4D3E0);
  v35 = *(v16 + 48);
  if (v35(v24, 1, v15) == 1)
  {
    sub_1D613582C(v32, sub_1D5B4D3E0);
    if (v35(&v24[v34], 1, v15) == 1)
    {
      sub_1D613582C(v24, sub_1D5B4D3E0);
      goto LABEL_9;
    }

LABEL_7:
    v36 = sub_1D5BB60D4;
    v37 = v24;
LABEL_15:
    sub_1D613582C(v37, v36);
    return 1;
  }

  sub_1D5C00D08(v24, v28, sub_1D5B4D3E0);
  if (v35(&v24[v34], 1, v15) == 1)
  {
    sub_1D613582C(v32, sub_1D5B4D3E0);
    (*(v16 + 8))(v28, v15);
    goto LABEL_7;
  }

  (*(v16 + 32))(v19, &v24[v34], v15);
  sub_1D61368DC(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v38 = sub_1D7261FBC();
  v39 = *(v16 + 8);
  v39(v19, v15);
  sub_1D613582C(v32, sub_1D5B4D3E0);
  v39(v28, v15);
  sub_1D613582C(v24, sub_1D5B4D3E0);
  if ((v38 & 1) == 0)
  {
    return 1;
  }

LABEL_9:
  v40 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  v41 = *(v61 + 48);
  v42 = v65;
  sub_1D5C00D08(v3 + v40, v65, sub_1D5B4D72C);
  sub_1D5C00D08(v62, v42 + v41, sub_1D5B4D72C);
  v43 = v64;
  v44 = *(v63 + 48);
  if (v44(v42, 1, v64) == 1)
  {
    if (v44(v42 + v41, 1, v43) == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v45 = v60;
  sub_1D5C00D08(v42, v60, sub_1D5B4D72C);
  if (v44(v42 + v41, 1, v43) == 1)
  {
    sub_1D613582C(v45, type metadata accessor for WebEmbedDataVisualization);
LABEL_14:
    v36 = sub_1D61358AC;
    v37 = v42;
    goto LABEL_15;
  }

  v47 = v59;
  sub_1D61367AC(v42 + v41, v59, type metadata accessor for WebEmbedDataVisualization);
  v48 = WebEmbedDataVisualization.identifier.getter();
  v50 = v49;
  if (v48 == WebEmbedDataVisualization.identifier.getter() && v50 == v51)
  {

    sub_1D613582C(v47, type metadata accessor for WebEmbedDataVisualization);
    sub_1D613582C(v45, type metadata accessor for WebEmbedDataVisualization);
LABEL_20:
    sub_1D613582C(v42, sub_1D5B4D72C);
    goto LABEL_21;
  }

  v57 = sub_1D72646CC();

  sub_1D613582C(v47, type metadata accessor for WebEmbedDataVisualization);
  sub_1D613582C(v45, type metadata accessor for WebEmbedDataVisualization);
  sub_1D613582C(v42, sub_1D5B4D72C);
  if ((v57 & 1) == 0)
  {
    return 1;
  }

LABEL_21:
  v52 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v53 = v3;
  v54 = *(v3 + v52);
  sub_1D5B5A498(0, &qword_1EDF1A960, 0x1E69CE168);
  v55 = v54;
  v56 = sub_1D726370C();

  if ((v56 & 1) == 0)
  {
    return 1;
  }

  return [*(v53 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView) isHidden] ^ 1;
}

void sub_1D612C618(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v63 = a4;
  v9 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D725891C();
  v22 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v62 = v21;
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725C42C();
    __swift_project_value_buffer(v25, qword_1EDFFC6F0);
    v26 = a1;
    v27 = v24;
    v60 = a1;
    v28 = v27;
    v29 = sub_1D725C3FC();
    v30 = sub_1D7262EDC();
    v61 = v26;

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v59 = a3;
      v32 = v31;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64[0] = v57;
      *v32 = 136315650;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1D7273AE0;
      *(v33 + 56) = type metadata accessor for WebEmbedViewController(0);
      *(v33 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
      *(v33 + 32) = v28;
      v34 = v28;
      v58 = v22;
      v35 = v34;
      v36 = sub_1D72620BC();
      v55 = v30;
      v38 = v37;
      v54 = v29;
      v39 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(v35 + v39, v20, sub_1D5B4D3E0);
      v40 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      v22 = v58;
      sub_1D5C00D08(v35 + v40, v16, sub_1D5B4D72C);
      v41 = sub_1D613520C(v36, v38, v20, v16);
      v43 = sub_1D5BC5100(v41, v42, v64);

      *(v32 + 4) = v43;
      *(v32 + 12) = 2048;
      *(v32 + 14) = a6;
      *(v32 + 22) = 2112;
      v45 = v60;
      v44 = v61;
      *(v32 + 24) = v61;
      v46 = v56;
      *v56 = v45;
      v47 = v44;
      v48 = v54;
      _os_log_impl(&dword_1D5B42000, v54, v55, "Did finish presenting, %s, height=%f, datastore=%@", v32, 0x20u);
      sub_1D613582C(v46, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v46, -1, -1);
      v49 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1DA6FD500](v49, -1, -1);
      v50 = v32;
      a3 = v59;
      MEMORY[0x1DA6FD500](v50, -1, -1);
    }

    else
    {
    }

    v51 = v62;
    swift_beginAccess();
    Context = type metadata accessor for WebEmbedStateMachineLoadContext(0);
    (*(*(v51 - 8) + 16))(&v12[*(Context + 20)], v22, v51);
    v53 = v63;
    *v12 = a3;
    *(v12 + 1) = v53;

    sub_1D725890C();
    swift_storeEnumTagMultiPayload();
    sub_1D725AB1C();
    sub_1D613582C(v12, type metadata accessor for WebEmbedStateMachineEvent);
    sub_1D612CB88();
  }
}

void sub_1D612CB88()
{
  v1 = &v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier];
  swift_beginAccess();
  v2 = v1[1];
  if (v2 && v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable] == 1)
  {
    v3 = *v1;
    v4 = *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];

    [v4 height];
    v6 = v5;
    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v29.origin.x = v10;
      v29.origin.y = v12;
      v29.size.width = v14;
      v29.size.height = v16;
      if (v6 == CGRectGetHeight(v29))
      {
        goto LABEL_8;
      }

      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_8;
      }

      v17 = [v0 view];
      if (v17)
      {
        v18 = v17;
        [v17 bounds];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v30.origin.x = v20;
        v30.origin.y = v22;
        v30.size.width = v24;
        v30.size.height = v26;
        Width = CGRectGetWidth(v30);
        [v4 height];
        sub_1D5FE5098(v3, v2, Width, v28, *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize], *&v0[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize + 8]);

LABEL_8:

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

void sub_1D612CD68(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1D725891C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v40[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_1D725890C();
    swift_beginAccess();
    (*(v15 + 40))(v19, v18, v14);
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725C42C();
    __swift_project_value_buffer(v22, qword_1EDFFC6F0);
    v23 = v21;
    v24 = sub_1D725C3FC();
    v25 = sub_1D7262EDC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v42 = v26;
      v43 = swift_slowAlloc();
      v44 = v43;
      *v26 = 136315138;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D7273AE0;
      *(v27 + 56) = type metadata accessor for WebEmbedViewController(0);
      *(v27 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
      *(v27 + 32) = v23;
      v28 = v23;
      v41 = v25;
      v29 = v28;
      v30 = sub_1D72620BC();
      v32 = v31;
      v33 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(v29 + v33, v13, sub_1D5B4D3E0);
      v34 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      sub_1D5C00D08(v29 + v34, v9, sub_1D5B4D72C);
      v35 = sub_1D613520C(v30, v32, v13, v9);
      v37 = sub_1D5BC5100(v35, v36, &v44);

      v38 = v42;
      *(v42 + 1) = v37;
      _os_log_impl(&dword_1D5B42000, v24, v41, "Will start presenting, %s", v38, 0xCu);
      v39 = v43;
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1DA6FD500](v39, -1, -1);
      MEMORY[0x1DA6FD500](v38, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D725AB1C();
    sub_1D613582C(v5, type metadata accessor for WebEmbedStateMachineEvent);
  }
}

void sub_1D612D234(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction;
    v3 = Strong;
    swift_beginAccess();
    v4 = *v2;
    v5 = *(v2 + 8);
    sub_1D5DEA510(v4, v5);

    if (v4)
    {
      v4();
      sub_1D5B74328(v4, v5);
    }
  }
}

void sub_1D612D2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a3;
  v7 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725891C();
  v61 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v59 = v14;
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725C42C();
    __swift_project_value_buffer(v22, qword_1EDFFC6F0);
    v23 = a1;
    v24 = v21;
    v25 = sub_1D725C3FC();
    v26 = sub_1D7262EDC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v54 = v26;
      v28 = v27;
      v29 = swift_slowAlloc();
      v53 = v29;
      v55 = swift_slowAlloc();
      v62[0] = v55;
      *v28 = 138543618;
      v30 = a1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      *(v28 + 12) = 2080;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v32 = swift_allocObject();
      v57 = v7;
      v33 = v32;
      *(v32 + 16) = xmmword_1D7273AE0;
      *(v32 + 56) = type metadata accessor for WebEmbedViewController(0);
      *(v33 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
      *(v33 + 32) = v24;
      v34 = v24;
      v56 = v19;
      v35 = v34;
      v36 = sub_1D72620BC();
      v58 = a4;
      v38 = v37;
      v52 = v25;
      v39 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(v35 + v39, v18, sub_1D5B4D3E0);
      v40 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      v41 = v35 + v40;
      v19 = v56;
      v42 = v59;
      sub_1D5C00D08(v41, v59, sub_1D5B4D72C);
      v43 = sub_1D613520C(v36, v38, v18, v42);
      v45 = sub_1D5BC5100(v43, v44, v62);

      *(v28 + 14) = v45;
      a4 = v58;
      v46 = v52;
      _os_log_impl(&dword_1D5B42000, v52, v54, "Failed loading with error=%{public}@, %s", v28, 0x16u);
      v47 = v53;
      sub_1D613582C(v53, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v47, -1, -1);
      v48 = v55;
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1DA6FD500](v48, -1, -1);
      MEMORY[0x1DA6FD500](v28, -1, -1);
    }

    else
    {
    }

    v49 = v61;
    swift_beginAccess();
    v50 = type metadata accessor for WebEmbedStateMachineErrorContext(0);
    (*(*(v19 - 8) + 16))(v10 + *(v50 + 20), v49, v19);
    sub_1D725890C();
    *v10 = v60;
    v10[1] = a4;
    *(v10 + *(v50 + 28)) = a1;
    swift_storeEnumTagMultiPayload();
    v51 = a1;

    sub_1D725AB1C();
    sub_1D613582C(v10, type metadata accessor for WebEmbedStateMachineEvent);
  }
}

void sub_1D612D834(char *a1, uint64_t a2)
{
  v126 = a1;
  v128 = type metadata accessor for WebEmbedFailureContext(0);
  MEMORY[0x1EEE9AC00](v128, v2);
  v4 = (&v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v125 = (&v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v116 - v10;
  v12 = type metadata accessor for WebEmbedDataVisualization(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v127 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v116 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v130 = &v116 - v22;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v116 - v29;
  v31 = sub_1D72585BC();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v129 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v131 = &v116 - v37;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v124 = v4;
    v40 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(&v39[v40], v30, sub_1D5B4D3E0);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {

      sub_1D613582C(v30, sub_1D5B4D3E0);
    }

    else
    {
      v123 = v19;
      v41 = v131;
      (*(v32 + 32))(v131, v30, v31);
      v42 = *&v39[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location];
      if (v42)
      {
        v43 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
        swift_beginAccess();
        sub_1D5C00D08(&v39[v43], v11, sub_1D5B4D72C);
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {
          (*(v32 + 8))(v131, v31);

          sub_1D613582C(v11, sub_1D5B4D72C);
        }

        else
        {
          v121 = v43;
          sub_1D61367AC(v11, v130, type metadata accessor for WebEmbedDataVisualization);
          v44 = qword_1EDF17580;
          swift_unknownObjectRetain();
          if (v44 != -1)
          {
            swift_once();
          }

          v45 = sub_1D725C42C();
          __swift_project_value_buffer(v45, qword_1EDFFC6F0);
          v46 = v126;
          v47 = v39;
          v48 = sub_1D725C3FC();
          v49 = sub_1D7262EDC();

          v120 = v49;
          v50 = os_log_type_enabled(v48, v49);
          v51 = &off_1E84D3000;
          v122 = v42;
          v126 = v47;
          if (v50)
          {
            v52 = swift_slowAlloc();
            v118 = v48;
            v53 = v52;
            v116 = v52;
            v119 = swift_slowAlloc();
            *&v132 = v119;
            *v53 = 136446978;
            v54 = [v46 contentDomain];
            v55 = v46;
            v56 = sub_1D726207C();
            v58 = v57;

            v59 = sub_1D5BC5100(v56, v58, &v132);

            v60 = v116;
            *(v116 + 4) = v59;
            *(v60 + 12) = 2082;
            v117 = v55;
            v61 = [v55 embedName];
            v62 = sub_1D726207C();
            v64 = v63;

            v65 = sub_1D5BC5100(v62, v64, &v132);

            *(v60 + 14) = v65;
            *(v60 + 22) = 2082;
            v66 = [v55 errorType];
            v67 = sub_1D726207C();
            v69 = v68;

            v70 = sub_1D5BC5100(v67, v69, &v132);

            *(v60 + 24) = v70;
            *(v60 + 32) = 2080;
            v71 = v60;
            sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_1D7273AE0;
            *(v72 + 56) = type metadata accessor for WebEmbedViewController(0);
            *(v72 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
            v73 = v126;
            *(v72 + 32) = v126;
            v74 = v73;
            v75 = v117;
            v76 = sub_1D72620BC();
            v78 = v77;
            sub_1D5C00D08(&v39[v40], v26, sub_1D5B4D3E0);
            v79 = v121 + v39;
            v80 = v125;
            sub_1D5C00D08(v79, v125, sub_1D5B4D72C);
            v81 = v76;
            v51 = &off_1E84D3000;
            v82 = sub_1D613520C(v81, v78, v26, v80);
            v84 = sub_1D5BC5100(v82, v83, &v132);

            *(v71 + 34) = v84;
            v85 = v118;
            _os_log_impl(&dword_1D5B42000, v118, v120, "Embed posted failure message=(contentDomain: %{public}s, embedName:%{public}s, errorType:%{public}s), %s", v71, 0x2Au);
            v86 = v119;
            swift_arrayDestroy();
            MEMORY[0x1DA6FD500](v86, -1, -1);
            MEMORY[0x1DA6FD500](v71, -1, -1);

            v87 = v131;
          }

          else
          {

            v87 = v131;
            v75 = v46;
          }

          v121 = *(v32 + 16);
          v88 = v129;
          v121(v129, v87, v31);
          v125 = type metadata accessor for WebEmbedDataVisualization;
          v89 = v123;
          sub_1D5C00D08(v130, v123, type metadata accessor for WebEmbedDataVisualization);
          swift_unknownObjectRetain();
          v90 = [v75 v51[387]];
          v91 = sub_1D726207C();
          v93 = v92;

          v94 = v124;
          *v124 = v91;
          v94[1] = v93;
          v95 = [v75 embedName];
          v96 = sub_1D726207C();
          v98 = v97;

          v94[2] = v96;
          v94[3] = v98;
          v99 = [v75 errorType];
          v100 = sub_1D726207C();
          v102 = v101;

          v94[4] = v100;
          v94[5] = v102;
          v103 = v128;
          v121(v94 + *(v128 + 28), v88, v31);
          v104 = [v122 context];
          v105 = sub_1D726207C();
          v107 = v106;

          v108 = (v94 + *(v103 + 32));
          *v108 = v105;
          v108[1] = v107;
          v109 = v127;
          sub_1D5C00D08(v89, v127, v125);
          sub_1D6D21264(v109, &v132);
          swift_unknownObjectRelease();
          sub_1D613582C(v89, type metadata accessor for WebEmbedDataVisualization);
          v110 = *(v32 + 8);
          v110(v129, v31);
          v111 = v133;
          v112 = v94 + *(v103 + 36);
          *v112 = v132;
          v112[16] = v111;
          v113 = v126;
          v114 = *&v126[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedFailureHandler + 8];
          ObjectType = swift_getObjectType();
          (*(v114 + 8))(v113, v94, ObjectType, v114);
          swift_unknownObjectRelease();
          sub_1D613582C(v94, type metadata accessor for WebEmbedFailureContext);
          sub_1D613582C(v130, type metadata accessor for WebEmbedDataVisualization);
          v110(v131, v31);
        }
      }

      else
      {
        (*(v32 + 8))(v41, v31);
      }
    }
  }
}

void sub_1D612E2F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfiguration;
    swift_beginAccess();
    *&v4[v5] = a1;
    swift_unknownObjectRelease();
    v6 = &v4[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate];
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 1);
      swift_unknownObjectRetain();
      sub_1D5DEA510(v7, v8);
      v7(a1);
      sub_1D5B74328(v7, v8);
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }
}

void sub_1D612E3DC(uint64_t a1, double a2, double a3)
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = Strong + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize;
    if ((*(Strong + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize + 16) & 1) != 0 || *v15 != a2 || *(v15 + 8) != a3)
    {
      if (qword_1EDF17580 != -1)
      {
        swift_once();
      }

      v16 = sub_1D725C42C();
      __swift_project_value_buffer(v16, qword_1EDFFC6F0);
      v17 = v14;
      v18 = sub_1D725C3FC();
      v19 = sub_1D7262EDC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v39 = v20;
        v40 = swift_slowAlloc();
        v41[0] = v40;
        *v20 = 136315138;
        sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1D7273AE0;
        *(v21 + 56) = type metadata accessor for WebEmbedViewController(0);
        *(v21 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
        *(v21 + 32) = v17;
        v22 = v17;
        v23 = sub_1D72620BC();
        v25 = v24;
        v38 = v19;
        v26 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
        swift_beginAccess();
        sub_1D5C00D08(&v22[v26], v12, sub_1D5B4D3E0);
        v27 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
        swift_beginAccess();
        sub_1D5C00D08(&v22[v27], v8, sub_1D5B4D72C);
        v28 = sub_1D613520C(v23, v25, v12, v8);
        v30 = sub_1D5BC5100(v28, v29, v41);

        v31 = v39;
        *(v39 + 1) = v30;
        _os_log_impl(&dword_1D5B42000, v18, v38, "Preferred size did update, %s", v31, 0xCu);
        v32 = v40;
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1DA6FD500](v32, -1, -1);
        MEMORY[0x1DA6FD500](v31, -1, -1);
      }

      *v15 = a2;
      *(v15 + 8) = a3;
      *(v15 + 16) = 0;
      v33 = &v17[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation];
      swift_beginAccess();
      v34 = *v33;
      if (*v33)
      {
        v35 = *(v33 + 1);

        v34(v36, a2, a3);
        sub_1D5B74328(v34, v35);
      }
    }
  }
}

void sub_1D612E7D4(uint64_t a1, int a2, int a3)
{
  LODWORD(v3) = a3;
  LODWORD(v4) = a2;
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v15 = sub_1D725C42C();
    __swift_project_value_buffer(v15, qword_1EDFFC6F0);
    v16 = v14;
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v19 = 67109378;
      *(v19 + 4) = v4 & 1;
      *(v19 + 8) = 2080;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7273AE0;
      *(v20 + 56) = type metadata accessor for WebEmbedViewController(0);
      *(v20 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
      *(v20 + 32) = v16;
      v21 = v16;
      v36 = v3;
      v3 = v21;
      v22 = sub_1D72620BC();
      v35 = v4;
      v24 = v23;
      v25 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(&v3[v25], v12, sub_1D5B4D3E0);
      v26 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      sub_1D5C00D08(&v3[v26], v8, sub_1D5B4D72C);
      v27 = sub_1D613520C(v22, v24, v12, v8);
      v4 = sub_1D5BC5100(v27, v28, &v37);
      LOBYTE(v3) = v36;

      *(v19 + 10) = v4;
      LOBYTE(v4) = v35;
      _os_log_impl(&dword_1D5B42000, v17, v18, "Did load data visualization data store, isInitialized=%{BOOL}d, %s", v19, 0x12u);
      v29 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1DA6FD500](v29, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }

    if (v4 & 1) != 0 && (v3)
    {
      v30 = [*&v16[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] view];
      if (!v30)
      {
        __break(1u);
        return;
      }

      v31 = v30;
      [v30 setHidden_];
    }

    v32 = *&v16[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView];
    if (v32)
    {
      v33 = v32;
      sub_1D69FC47C(0);

      v16 = v33;
    }
  }
}

void sub_1D612EBC4(uint64_t a1)
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v11 = sub_1D725C42C();
    __swift_project_value_buffer(v11, qword_1EDFFC6F0);
    v12 = v10;
    v13 = sub_1D725C3FC();
    v14 = sub_1D7262EDC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v15 = 136315138;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      *(v16 + 56) = type metadata accessor for WebEmbedViewController(0);
      *(v16 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
      *(v16 + 32) = v12;
      v17 = v12;
      v18 = sub_1D72620BC();
      v20 = v19;
      v21 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      sub_1D5C00D08(&v17[v21], v8, sub_1D5B4D3E0);
      v22 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      sub_1D5C00D08(&v17[v22], v4, sub_1D5B4D72C);
      v23 = sub_1D613520C(v18, v20, v8, v4);
      v25 = sub_1D5BC5100(v23, v24, &v31);

      *(v15 + 4) = v25;
      _os_log_impl(&dword_1D5B42000, v13, v14, "Did load live activity data store, %s", v15, 0xCu);
      v26 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1DA6FD500](v26, -1, -1);
      MEMORY[0x1DA6FD500](v15, -1, -1);
    }

    v27 = *&v12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView];
    if (v27)
    {
      v28 = v27;
      sub_1D69FC47C(2);
    }
  }
}

uint64_t sub_1D612EF3C(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v47 = a2;
  v5 = sub_1D72585BC();
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725C42C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725C3EC();
  v14 = v3;
  v15 = sub_1D725C3FC();
  v16 = sub_1D7262EDC();

  if (os_log_type_enabled(v15, v16))
  {
    v43 = v9;
    v44 = a1;
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v17 = 136446210;
    v18 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    if ((*(v46 + 48))(&v14[v18], 1, v5))
    {
      v19 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    else
    {
      v21 = v5;
      v41 = v5;
      v22 = v46;
      (*(v46 + 16))(v8, &v14[v18], v21);
      v20 = sub_1D72583DC();
      v19 = v23;
      (*(v22 + 8))(v8, v41);
    }

    v24 = sub_1D5BC5100(v20, v19, aBlock);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1D5B42000, v15, v16, "WebEmbedViewController will inject live activity store, embedURL=%{public}s", v17, 0xCu);
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1DA6FD500](v25, -1, -1);
    MEMORY[0x1DA6FD500](v17, -1, -1);

    (*(v10 + 8))(v13, v43);
    a1 = v44;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v26 = type metadata accessor for LiveActivityEmbedScript();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC8NewsFeed23LiveActivityEmbedScript_identifier];
  *v28 = 0xD000000000000018;
  v28[1] = 0x80000001D73CAC90;
  v27[OBJC_IVAR____TtC8NewsFeed23LiveActivityEmbedScript_queueable] = 0;
  *&v27[OBJC_IVAR____TtC8NewsFeed23LiveActivityEmbedScript_newDatastore] = a1;
  v49.receiver = v27;
  v49.super_class = v26;
  v29 = a1;
  v30 = objc_msgSendSuper2(&v49, sel_init);
  v31 = *&v14[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  v32 = [v31 scriptsManager];

  v33 = sub_1D726203C();

  [v32 removeScriptByIdentifier_];
  swift_unknownObjectRelease();

  v34 = [v31 scriptsManager];
  v35 = v47;
  if (v47)
  {
    v36 = v45;
    aBlock[4] = v47;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_22;
    v37 = _Block_copy(aBlock);
    v38 = v30;
    sub_1D5DEA510(v35, v36);
  }

  else
  {
    v39 = v30;
    v37 = 0;
  }

  [v34 executeScript:v30 completion:v37];
  _Block_release(v37);
  swift_unknownObjectRelease();

  [objc_msgSend(v31 scriptsManager)];
  return swift_unknownObjectRelease();
}

void sub_1D612F428(uint64_t a1, uint64_t a2, const char *a3, SEL *a4)
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725C42C();
  __swift_project_value_buffer(v15, qword_1EDFFC6F0);

  v16 = sub_1D725C3FC();
  v17 = sub_1D7262EDC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v18 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v42 = a4;
    v20 = Strong;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    v40 = a3;
    v22 = v21;
    *(v21 + 16) = xmmword_1D7273AE0;
    *(v21 + 56) = type metadata accessor for WebEmbedViewController(0);
    *(v22 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v22 + 32) = v20;
    v23 = v20;
    v24 = sub_1D72620BC();
    v43[4] = v4;
    v26 = v25;
    v39 = v17;
    v27 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v23 + v27, v14, sub_1D5B4D3E0);
    v28 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v23 + v28, v10, sub_1D5B4D72C);
    v29 = sub_1D613520C(v24, v26, v14, v10);
    v31 = v30;

    a4 = v42;
    v32 = sub_1D5BC5100(v29, v31, v43);

    *(v18 + 4) = v32;
    _os_log_impl(&dword_1D5B42000, v16, v39, v40, v18, 0xCu);
    v33 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1DA6FD500](v33, -1, -1);
    MEMORY[0x1DA6FD500](v18, -1, -1);
  }

  v34 = swift_unknownObjectUnownedLoadStrong();
  v35 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  LODWORD(v35) = v34[v35];

  if (v35 == 1)
  {
    v36 = swift_unknownObjectUnownedLoadStrong();
    v37 = *&v36[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator];

    [v37 *a4];
  }
}

void sub_1D612F808(uint64_t a1, uint64_t a2)
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v10 = sub_1D725C42C();
  __swift_project_value_buffer(v10, qword_1EDFFC6F0);

  v11 = sub_1D725C3FC();
  v12 = sub_1D7262EDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 56) = type metadata accessor for WebEmbedViewController(0);
    *(v15 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v15 + 32) = Strong;
    v16 = Strong;
    v17 = sub_1D72620BC();
    v19 = v18;
    v20 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v16 + v20, v9, sub_1D5B4D3E0);
    v21 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v16 + v21, v5, sub_1D5B4D72C);
    v22 = sub_1D613520C(v17, v19, v9, v5);
    v24 = v23;

    v25 = sub_1D5BC5100(v22, v24, &v29);

    *(v13 + 4) = v25;
    _os_log_impl(&dword_1D5B42000, v11, v12, "Will present as loaded, %s", v13, 0xCu);
    v26 = v28;
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1DA6FD500](v26, -1, -1);
    MEMORY[0x1DA6FD500](v13, -1, -1);
  }
}

void sub_1D612FB6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7257ADC();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for WebEmbedStateMachineLoadContext(0);
  MEMORY[0x1EEE9AC00](Context, v12);
  v14 = (&v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = *&Strong[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];

  v17 = [v16 view];
  if (v17)
  {
    [v17 setHidden_];

    v18 = swift_unknownObjectUnownedLoadStrong();
    v19 = *&v18[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];
    swift_unknownObjectRetain();

    [v19 setPresentationState_];
    swift_unknownObjectRelease();
    sub_1D5C00D08(a1, v10, type metadata accessor for WebEmbedStateMachineEvent);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D613582C(v10, type metadata accessor for WebEmbedStateMachineEvent);
    }

    else
    {
      sub_1D61367AC(v10, v14, type metadata accessor for WebEmbedStateMachineLoadContext);
      v20 = swift_unknownObjectUnownedLoadStrong();
      sub_1D5B68374(v20 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_coordinator, v26);

      v21 = v27;
      v22 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v23 = *v14;
      v24 = v14[1];
      sub_1D7257A5C();
      (*(v22 + 16))(v23, v24, v6, v21, v22);
      (*(v25 + 8))(v6, v3);
      sub_1D613582C(v14, type metadata accessor for WebEmbedStateMachineLoadContext);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D612FE94(uint64_t a1, uint64_t a2)
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v10 = sub_1D725C42C();
  __swift_project_value_buffer(v10, qword_1EDFFC6F0);

  v11 = sub_1D725C3FC();
  v12 = sub_1D7262EDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v37 = v13;
    v38 = swift_slowAlloc();
    v39 = v38;
    *v13 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    v36 = v12;
    v16 = v15;
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 56) = type metadata accessor for WebEmbedViewController(0);
    *(v16 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v16 + 32) = Strong;
    v17 = Strong;
    v18 = sub_1D72620BC();
    v20 = v19;
    v21 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v17 + v21, v9, sub_1D5B4D3E0);
    v22 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v17 + v22, v5, sub_1D5B4D72C);
    v23 = sub_1D613520C(v18, v20, v9, v5);
    v25 = v24;

    v26 = sub_1D5BC5100(v23, v25, &v39);

    v27 = v37;
    *(v37 + 1) = v26;
    v28 = v27;
    _os_log_impl(&dword_1D5B42000, v11, v36, "Will present as unloaded, %s", v27, 0xCu);
    v29 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1DA6FD500](v29, -1, -1);
    MEMORY[0x1DA6FD500](v28, -1, -1);
  }

  v30 = swift_unknownObjectUnownedLoadStrong();
  v31 = *&v30[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];

  v32 = [v31 view];
  if (v32)
  {
    [v32 setHidden_];

    v33 = swift_unknownObjectUnownedLoadStrong();
    v34 = *&v33[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];
    swift_unknownObjectRetain();

    [v34 setPresentationState_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D61302A4(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v3 = sub_1D7257ADC();
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v64 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for WebEmbedStateMachineEvent(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = type metadata accessor for WebEmbedStateMachineErrorContext(0);
  MEMORY[0x1EEE9AC00](v62, v10);
  v63 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725C42C();
  __swift_project_value_buffer(v20, qword_1EDFFC6F0);

  v21 = sub_1D725C3FC();
  v22 = sub_1D7262EDC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v57 = v23;
    v58 = swift_slowAlloc();
    v67[0] = v58;
    *v23 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v61 = v3;
    v25 = Strong;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    v59 = a2;
    v27 = v26;
    *(v26 + 16) = xmmword_1D7273AE0;
    *(v26 + 56) = type metadata accessor for WebEmbedViewController(0);
    *(v27 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v27 + 32) = v25;
    v28 = v25;
    v29 = sub_1D72620BC();
    v60 = v9;
    v31 = v30;
    v56 = v22;
    v32 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v28 + v32, v19, sub_1D5B4D3E0);
    v33 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v28 + v33, v15, sub_1D5B4D72C);
    v34 = sub_1D613520C(v29, v31, v19, v15);
    v36 = v35;

    v3 = v61;
    v37 = sub_1D5BC5100(v34, v36, v67);
    v9 = v60;

    v38 = v57;
    *(v57 + 1) = v37;
    _os_log_impl(&dword_1D5B42000, v21, v56, "Will present as error state, %s", v38, 0xCu);
    v39 = v58;
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1DA6FD500](v39, -1, -1);
    MEMORY[0x1DA6FD500](v38, -1, -1);
  }

  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = *&v40[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];

  [v41 setHidden_];
  v42 = swift_unknownObjectUnownedLoadStrong();
  v43 = [v42 view];

  if (v43)
  {
    v44 = swift_unknownObjectUnownedLoadStrong();
    v45 = *&v44[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_tapGestureRecognizer];

    [v43 addGestureRecognizer_];
    sub_1D5C00D08(v66, v9, type metadata accessor for WebEmbedStateMachineEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = v9;
      v47 = v63;
      sub_1D61367AC(v46, v63, type metadata accessor for WebEmbedStateMachineErrorContext);
      v48 = swift_unknownObjectUnownedLoadStrong();
      sub_1D5B68374(v48 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_coordinator, v67);

      v49 = v68;
      v50 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v51 = *v47;
      v52 = v47[1];
      v53 = v62;
      v54 = v64;
      sub_1D7257A5C();
      (*(v50 + 24))(v51, v52, v54, *(v47 + *(v53 + 28)), v49, v50);
      (*(v65 + 8))(v54, v3);
      sub_1D613582C(v47, type metadata accessor for WebEmbedStateMachineErrorContext);
      __swift_destroy_boxed_opaque_existential_1(v67);
    }

    else
    {
      sub_1D613582C(v9, type metadata accessor for WebEmbedStateMachineEvent);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6130930(uint64_t a1, uint64_t a2)
{
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v10 = sub_1D725C42C();
  __swift_project_value_buffer(v10, qword_1EDFFC6F0);

  v11 = sub_1D725C3FC();
  v12 = sub_1D7262EDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = v13;
    v39 = swift_slowAlloc();
    v40 = v39;
    *v13 = 136315138;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    v37 = v12;
    v16 = v15;
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 56) = type metadata accessor for WebEmbedViewController(0);
    *(v16 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v16 + 32) = Strong;
    v17 = Strong;
    v18 = sub_1D72620BC();
    v20 = v19;
    v21 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v17 + v21, v9, sub_1D5B4D3E0);
    v22 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
    swift_beginAccess();
    sub_1D5C00D08(v17 + v22, v5, sub_1D5B4D72C);
    v23 = sub_1D613520C(v18, v20, v9, v5);
    v25 = v24;

    v26 = sub_1D5BC5100(v23, v25, &v40);

    v27 = v38;
    *(v38 + 1) = v26;
    v28 = v27;
    _os_log_impl(&dword_1D5B42000, v11, v37, "Will remove error state, %s", v27, 0xCu);
    v29 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1DA6FD500](v29, -1, -1);
    MEMORY[0x1DA6FD500](v28, -1, -1);
  }

  v30 = swift_unknownObjectUnownedLoadStrong();
  v31 = *&v30[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];

  [v31 setHidden_];
  v32 = swift_unknownObjectUnownedLoadStrong();
  v33 = [v32 view];

  if (v33)
  {
    v34 = swift_unknownObjectUnownedLoadStrong();
    v35 = *&v34[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_tapGestureRecognizer];

    [v33 removeGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

id WebEmbedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall WebEmbedViewController.prepareForReuse()()
{
  v1 = v0;
  MEMORY[0x1DA6F6CF0]();

  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1D5B74328(v3, v4);
  v5 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  sub_1D5B74328(v6, v7);
  v8 = v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
}

void sub_1D6131230()
{
  sub_1D61368DC(&qword_1EDF27940, type metadata accessor for WebEmbedViewController, &protocol conformance descriptor for WebEmbedViewController);

  JUMPOUT(0x1DA6F6FC0);
}

Swift::Void __swiftcall WebEmbedViewController.refresh()()
{
  v1 = v0;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D725AB5C();
  if (v15[8] != 3)
  {
    goto LABEL_4;
  }

  v11 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  sub_1D5C00D08(v1 + v11, v5, sub_1D5B4D3E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D613582C(v5, sub_1D5B4D3E0);
LABEL_4:
    [*(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager) refresh];
    return;
  }

  (*(v7 + 32))(v10, v5, v6);
  if (qword_1EDF0D770 != -1)
  {
    swift_once();
  }

  v12 = byte_1EDF0D781;
  v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController);
  v14 = sub_1D725844C();
  if (v12 == 1)
  {
    [v13 loadURL:v14 cachePolicy:4];
  }

  else
  {
    [v13 loadURL_];
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t WebEmbedViewController.isSelectable.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider) interaction];
  if (!v1)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v2 = [v1 type];
  swift_unknownObjectRelease();
  if (v2 < 3)
  {
    v3 = 4u >> (v2 & 7);
    return v3 & 1;
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D6131604()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider) interaction];
  if (!v1)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v2 = [v1 type];
  swift_unknownObjectRelease();
  if (v2 < 3)
  {
    v3 = 4u >> (v2 & 7);
    return v3 & 1;
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

void (*sub_1D61316E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D725D26C();
  return sub_1D5FE8C5C;
}

void WebEmbedViewController.webEmbedDataSourceManager(_:dataVisualization:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v79 = a3;
  v80 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  v75 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v6);
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D613588C(0);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E01820(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v71 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v77 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v78 = &v69 - v25;
  v26 = type metadata accessor for WebEmbedDataVisualization(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61358AC(0);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v69 - v42;
  sub_1D5C00D08(a2, &v69 - v42, type metadata accessor for WebEmbedDataVisualization);
  (*(v27 + 56))(v43, 0, 1, v26);
  v44 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  v45 = *(v32 + 56);
  sub_1D5C00D08(v43, v35, sub_1D5B4D72C);
  sub_1D5C00D08(v4 + v44, &v35[v45], sub_1D5B4D72C);
  v46 = *(v27 + 48);
  if (v46(v35, 1, v26) == 1)
  {
    sub_1D613582C(v43, sub_1D5B4D72C);
    if (v46(&v35[v45], 1, v26) == 1)
    {
      goto LABEL_11;
    }

LABEL_6:
    v47 = sub_1D61358AC;
    v48 = v35;
LABEL_7:
    sub_1D613582C(v48, v47);
    return;
  }

  sub_1D5C00D08(v35, v39, sub_1D5B4D72C);
  if (v46(&v35[v45], 1, v26) == 1)
  {
    sub_1D613582C(v43, sub_1D5B4D72C);
    sub_1D613582C(v39, type metadata accessor for WebEmbedDataVisualization);
    goto LABEL_6;
  }

  sub_1D61367AC(&v35[v45], v30, type metadata accessor for WebEmbedDataVisualization);
  v49 = WebEmbedDataVisualization.identifier.getter();
  v51 = v50;
  if (v49 == WebEmbedDataVisualization.identifier.getter() && v51 == v52)
  {

    sub_1D613582C(v30, type metadata accessor for WebEmbedDataVisualization);
    sub_1D613582C(v43, sub_1D5B4D72C);
    sub_1D613582C(v39, type metadata accessor for WebEmbedDataVisualization);
LABEL_11:
    sub_1D613582C(v35, sub_1D5B4D72C);
    v53 = v80;
    goto LABEL_12;
  }

  v60 = sub_1D72646CC();

  sub_1D613582C(v30, type metadata accessor for WebEmbedDataVisualization);
  sub_1D613582C(v43, sub_1D5B4D72C);
  sub_1D613582C(v39, type metadata accessor for WebEmbedDataVisualization);
  sub_1D613582C(v35, sub_1D5B4D72C);
  v53 = v80;
  if ((v60 & 1) == 0)
  {
    return;
  }

LABEL_12:
  sub_1D725AB5C();
  if (v81 != 2)
  {
    return;
  }

  v80 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController__lastDatastoreUpdate;

  v54 = v78;
  sub_1D725B96C();

  v55 = v77;
  sub_1D5C00D08(v79, v77, type metadata accessor for WebEmbedDatastoreUpdate);
  v56 = v75;
  v69 = *(v75 + 56);
  v69(v55, 0, 1, v53);
  v57 = *(v74 + 48);
  v58 = v76;
  sub_1D5C00D08(v54, v76, sub_1D5E01820);
  sub_1D5C00D08(v55, v58 + v57, sub_1D5E01820);
  v59 = *(v56 + 48);
  if (v59(v58, 1, v53) == 1)
  {
    sub_1D613582C(v55, sub_1D5E01820);
    sub_1D613582C(v54, sub_1D5E01820);
    if (v59(v58 + v57, 1, v53) == 1)
    {
      v47 = sub_1D5E01820;
      v48 = v58;
      goto LABEL_7;
    }
  }

  else
  {
    v61 = v71;
    sub_1D5C00D08(v58, v71, sub_1D5E01820);
    if (v59(v58 + v57, 1, v53) != 1)
    {
      v66 = v70;
      sub_1D61367AC(v58 + v57, v70, type metadata accessor for WebEmbedDatastoreUpdate);
      v67 = v61;
      updated = _s8NewsFeed23WebEmbedDatastoreUpdateV2eeoiySbAC_ACtFZ_0(v61, v66);
      sub_1D613582C(v66, type metadata accessor for WebEmbedDatastoreUpdate);
      sub_1D613582C(v77, sub_1D5E01820);
      sub_1D613582C(v78, sub_1D5E01820);
      sub_1D613582C(v67, type metadata accessor for WebEmbedDatastoreUpdate);
      sub_1D613582C(v58, sub_1D5E01820);
      if (updated)
      {
        return;
      }

      goto LABEL_21;
    }

    sub_1D613582C(v77, sub_1D5E01820);
    sub_1D613582C(v78, sub_1D5E01820);
    sub_1D613582C(v61, type metadata accessor for WebEmbedDatastoreUpdate);
  }

  sub_1D613582C(v58, sub_1D613588C);
LABEL_21:
  v62 = v79;
  v63 = v73;
  sub_1D5C00D08(v79, v73, type metadata accessor for WebEmbedDatastoreUpdate);
  v69(v63, 0, 1, v53);
  sub_1D5C00D08(v63, v72, sub_1D5E01820);

  sub_1D725B97C();

  sub_1D613582C(v63, sub_1D5E01820);
  [*(v4 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController) loadLocalDatastore:*(*(v62 + *(v53 + 20)) + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) options:0 completion:0];
  v64 = *(v4 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView);
  if (v64)
  {
    v65 = v64;
    sub_1D69FC47C(1);
  }
}

uint64_t WebEmbedViewController.liveActivityWebEmbedDatastoreDidChange(datastore:swDatastore:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D612EF3C(a2, sub_1D61358CC, v3);
}

void sub_1D61323BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView);
    if (v3)
    {
      v4 = v3;
      sub_1D69FC47C(3);
    }
  }
}

uint64_t sub_1D6132430(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D612EF3C(a2, sub_1D6136944, v3);
}

Swift::Void __swiftcall WebEmbedViewController.sceneWillEnterForeground()()
{
  sub_1D725AB5C();
  if (v0 == 3)
  {
    sub_1D612AC84();
  }
}

uint64_t sub_1D6132500()
{
  swift_getObjectType();

  return sub_1D725B1EC();
}

void *sub_1D613253C()
{
  result = sub_1D725AB5C();
  if (v1 == 3)
  {
    return sub_1D612AC84();
  }

  return result;
}

void sub_1D613258C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, double a10, uint64_t a11, char *a12)
{
  v375 = a8;
  v374 = a7;
  v377 = a5;
  v378 = a4;
  v376 = a3;
  v379 = a2;
  ObjectType = swift_getObjectType();
  sub_1D5BB60D4(0);
  v357 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v367 = v338 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v363 = v338 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v380 = v338 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v360 = v338 - v27;
  v362 = type metadata accessor for WebEmbedDataVisualization(0);
  v361 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362, v28);
  v30 = v338 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v348 = v338 - v33;
  v382 = sub_1D72585BC();
  v34 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382, v35);
  v346 = v338 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v345 = v338 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v386 = v338 - v42;
  v43 = sub_1D7258AAC();
  v373 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v385 = v338 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormatPictureInPictureModel(0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v358 = v338 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v369 = (v338 - v51);
  sub_1D5E01820(0);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v371 = v338 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = v338 - v57;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v350 = v338 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v356 = v338 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v366 = v338 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v349 = v338 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v359 = v338 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v381 = (v338 - v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v383 = v338 - v79;
  v80 = &a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize];
  *v80 = a9;
  v80[1] = a10;
  v384 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate;
  v81 = *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate];
  v387 = v34;
  v370 = v30;
  if (v81)
  {
    v82 = objc_opt_self();
    v83 = v81;
    v84 = [v82 sharedApplication];
    v85 = [v84 preferredContentSizeCategory];

    v86 = sub_1D726207C();
    v88 = v87;
    if (v86 == sub_1D726207C() && v88 == v89)
    {

      v34 = v387;
    }

    else
    {
      v351 = v58;
      v90 = a6;
      v91 = a1;
      v92 = sub_1D72646CC();

      if (v92)
      {

        a1 = v91;
        v34 = v387;
      }

      else
      {
        [*&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] prewarm];

        v34 = v387;
        v93 = v383;
        (*(v387 + 56))(v383, 1, 1, v382);
        v94 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
        swift_beginAccess();
        sub_1D61366E0(v93, &a12[v94]);
        swift_endAccess();
        a1 = v91;
      }

      a6 = v90;
      v58 = v351;
    }
  }

  if ((sub_1D612BE20(a1, a6, a11) & 1) == 0)
  {
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v138 = sub_1D725C42C();
    __swift_project_value_buffer(v138, qword_1EDFFC6F0);
    v139 = a12;
    v140 = sub_1D725C3FC();
    v141 = sub_1D7262EDC();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v388 = v143;
      *v142 = 136315138;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_1D7273AE0;
      *(v144 + 56) = ObjectType;
      *(v144 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
      *(v144 + 32) = v139;
      v145 = v139;
      v146 = sub_1D72620BC();
      v148 = v147;
      v149 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      v150 = v383;
      sub_1D5C00D08(&v145[v149], v383, sub_1D5B4D3E0);
      v151 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      v152 = &v145[v151];
      v153 = v380;
      sub_1D5C00D08(v152, v380, sub_1D5B4D72C);
      v154 = sub_1D613520C(v146, v148, v150, v153);
      v156 = sub_1D5BC5100(v154, v155, &v388);

      *(v142 + 4) = v156;
      _os_log_impl(&dword_1D5B42000, v140, v141, "Blocked reloading web embed based on configuration, %s", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v143);
      MEMORY[0x1DA6FD500](v143, -1, -1);
      MEMORY[0x1DA6FD500](v142, -1, -1);
    }

    goto LABEL_84;
  }

  v354 = v43;
  v355 = a6;
  sub_1D612BCA0(v379);
  a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange] = 0;
  v365 = a11;
  v96 = v34 + 16;
  v95 = *(v34 + 16);
  v97 = v383;
  v364 = a1;
  v98 = v382;
  v95(v383, a1, v382);
  v100 = *(v34 + 56);
  v99 = v34 + 56;
  v100(v97, 0, 1, v98);
  v101 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  v347 = v101;
  sub_1D61366E0(v97, &a12[v101]);
  swift_endAccess();
  v102 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL;
  swift_beginAccess();
  sub_1D6136744(v376, &a12[v102], sub_1D5B4D3E0);
  swift_endAccess();
  *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location] = v378;
  swift_unknownObjectRelease();
  v353 = v96;
  v352 = v95;
  v95(v97, v377, v98);
  v372 = v100;
  v100(v97, 0, 1, v98);
  v103 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1D61366E0(v97, &a12[v103]);
  swift_endAccess();
  v104 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v105 = *&a12[v104];
  v106 = v365;
  *&a12[v104] = v365;
  v107 = v106;

  v108 = [a12 view];
  if (!v108)
  {
    __break(1u);
    goto LABEL_97;
  }

  v109 = v108;
  v343 = v107;
  [v108 setNeedsLayout];

  v110 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  v111 = *(v110 - 8);
  v112 = *(v111 + 56);
  v113 = 1;
  v340 = v110;
  v339 = v112;
  v338[1] = v111 + 56;
  v112(v58, 1, 1);
  v338[0] = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController__lastDatastoreUpdate;
  sub_1D5C00D08(v58, v371, sub_1D5E01820);

  sub_1D725B97C();

  v351 = v58;
  sub_1D613582C(v58, sub_1D5E01820);
  v114 = (*&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_delegate] + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier);
  v115 = v375;
  *v114 = v374;
  v114[1] = v115;

  v116 = objc_opt_self();

  v117 = [v116 sharedApplication];
  v118 = [v117 preferredContentSizeCategory];

  v119 = *&v384[a12];
  *&v384[a12] = v118;

  v384 = *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  v120 = __swift_project_boxed_opaque_existential_1(&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider], *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider + 24]);
  v121 = v369;
  sub_1D725ADCC();
  v122 = v358;
  sub_1D61367AC(v121, v358, type metadata accessor for FormatPictureInPictureModel);
  v123 = v387;
  v124 = *(v387 + 48);
  v365 = v387 + 48;
  v369 = v124;
  v125 = v98;
  if (v124(v122, 1, v98) != 1)
  {
    (*(v123 + 32))(v381, v122, v98);
    v113 = 0;
  }

  v126 = v381;
  v344 = v99;
  v372(v381, v113, 1, v98);
  v127 = *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24];
  v128 = *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32];
  v358 = &a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager];
  __swift_project_boxed_opaque_existential_1(&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager], v127);
  v341 = (*(v128 + 8))(v127, v128);
  v129 = *v120;
  v130 = sub_1D6D5A438(v376);
  v131 = *(v129 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_storeFront + 8);
  (*(v373 + 16))(v385, v129 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_locale, v354);
  v132 = *(v129 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_contentEnvironment + 8);
  v133 = [v116 sharedApplication];
  v134 = [v133 preferredContentSizeCategory];

  v352(v386, v377, v125);
  v135 = v126;
  v136 = v359;
  sub_1D5C00D08(v135, v359, sub_1D5B4D3E0);
  if (v131)
  {
    v137 = sub_1D726203C();
  }

  else
  {
    v137 = 0;
  }

  v157 = sub_1D72589DC();
  if (v132)
  {
    v132 = sub_1D726203C();
  }

  if (v130)
  {
    v158 = sub_1D7261D2C();
  }

  else
  {
    v158 = 0;
  }

  v159 = sub_1D725844C();
  v160 = v369(v136, 1, v125);
  v342 = a12;
  if (v160 == 1)
  {
    v161 = 0;
    v162 = v387;
  }

  else
  {
    v161 = sub_1D725844C();
    v163 = v136;
    v162 = v387;
    (*(v387 + 8))(v163, v125);
  }

  v164 = objc_allocWithZone(MEMORY[0x1E69CE140]);
  LOBYTE(v337) = v341 & 1;
  v165 = [v164 initWithStoreFront:v137 locale:v157 contentEnvironment:v132 contentSizeCategory:v134 layoutGuide:v379 dataSources:v158 location:v378 sourceURL:v159 activePictureInPictureURL:v161 feedConfiguration:v343 supportsLiveActivities:v337];

  v166 = *(v162 + 8);
  v379 = (v162 + 8);
  v378 = v166;
  v166(v386, v125);
  (*(v373 + 8))(v385, v354);
  sub_1D613582C(v381, sub_1D5B4D3E0);
  [v384 setConfiguration_];

  sub_1D725891C();
  v167 = swift_allocBox();
  sub_1D725890C();
  v168 = v342;
  v169 = *&v342[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];
  v170 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v171 = swift_allocObject();
  v172 = v374;
  v171[2] = v170;
  v171[3] = v172;
  v173 = v375;
  v171[4] = v375;
  v171[5] = v167;
  v393 = sub_1D6136814;
  v394 = v171;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D6A208B4;
  v392 = &block_descriptor_58;
  v174 = _Block_copy(&aBlock);

  [v169 onPresentable_];
  _Block_release(v174);
  v175 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v176 = swift_allocObject();
  *(v176 + 16) = v175;
  *(v176 + 24) = v167;
  v393 = sub_1D6136820;
  v394 = v176;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D5B6B06C;
  v392 = &block_descriptor_65;
  v177 = _Block_copy(&aBlock);

  [v169 onLoad_];
  _Block_release(v177);
  v178 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider];
  v179 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v393 = sub_1D6136828;
  v394 = v179;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D5B6B06C;
  v392 = &block_descriptor_69;
  v180 = _Block_copy(&aBlock);

  [v178 setInteractionBlock_];
  _Block_release(v180);
  v181 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorProvider];
  v182 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v183 = swift_allocObject();
  v183[2] = v182;
  v183[3] = v172;
  v183[4] = v173;
  v183[5] = v167;
  v393 = sub_1D6136830;
  v394 = v183;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D6A20930;
  v392 = &block_descriptor_76;
  v184 = _Block_copy(&aBlock);

  v386 = v167;

  [v181 onError_];
  _Block_release(v184);
  v185 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_failureProvider];
  v186 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v393 = sub_1D613683C;
  v394 = v186;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D6A20938;
  v392 = &block_descriptor_80;
  v187 = _Block_copy(&aBlock);

  [v185 onEvent_];
  _Block_release(v187);
  v188 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfigurationProvider];
  v189 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v393 = sub_1D6136844;
  v394 = v189;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D6A21D50;
  v392 = &block_descriptor_84;
  v190 = _Block_copy(&aBlock);

  [v188 setNavigationBarConfigurationBlock_];
  _Block_release(v190);
  v191 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSizeManager];
  v192 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v393 = sub_1D613684C;
  v394 = v192;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D7134058;
  v392 = &block_descriptor_88;
  v193 = _Block_copy(&aBlock);

  [v191 onPreferredSize_];
  _Block_release(v193);
  v194 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  v195 = *(v361 + 48);
  v196 = v362;
  v197 = 0;
  v198 = 0;
  if (!v195(&v168[v194], 1, v362))
  {
    v199 = v348;
    sub_1D5C00D08(&v168[v194], v348, type metadata accessor for WebEmbedDataVisualization);
    v197 = WebEmbedDataVisualization.identifier.getter();
    v198 = v200;
    sub_1D613582C(v199, type metadata accessor for WebEmbedDataVisualization);
  }

  v385 = v194;
  v201 = v360;
  sub_1D5C00D08(v355, v360, sub_1D5B4D72C);
  v202 = v195(v201, 1, v196);
  v203 = v364;
  if (v202 == 1)
  {
    sub_1D613582C(v201, sub_1D5B4D72C);
    v204 = v382;
    if (!v198)
    {
      LODWORD(v377) = 1;
      v205 = v370;
      v206 = v355;
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v207 = WebEmbedDataVisualization.identifier.getter();
  v209 = v208;
  sub_1D613582C(v201, type metadata accessor for WebEmbedDataVisualization);
  v204 = v382;
  if (v198)
  {
    if (v209)
    {
      if (v197 == v207 && v198 == v209)
      {

        LODWORD(v377) = 1;
      }

      else
      {
        LODWORD(v377) = sub_1D72646CC();
      }

      goto LABEL_39;
    }

LABEL_38:
    LODWORD(v377) = 0;
LABEL_39:
    v205 = v370;
    v206 = v355;
LABEL_40:

    goto LABEL_41;
  }

  v205 = v370;
  v206 = v355;
  if (v209)
  {
    LODWORD(v377) = 0;
    goto LABEL_40;
  }

  LODWORD(v377) = 1;
LABEL_41:
  v210 = v380;
  sub_1D5C00D08(v206, v380, sub_1D5B4D72C);
  sub_1D61289C4(v210);
  v376 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_stateMachine];
  sub_1D725AB5C();
  LODWORD(v381) = aBlock;
  v211 = v363;
  sub_1D5C00D08(v206, v363, sub_1D5B4D72C);
  if (v195(v211, 1, v196) == 1)
  {
    sub_1D613582C(v211, sub_1D5B4D72C);
    v212 = v203;
    goto LABEL_53;
  }

  sub_1D61367AC(v211, v205, type metadata accessor for WebEmbedDataVisualization);
  v213 = &v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager];
  v214 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24];
  v215 = *&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32];
  __swift_project_boxed_opaque_existential_1(&v168[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager], v214);
  v216 = (*(v215 + 32))(v205, v214, v215);
  if (!v216)
  {
    v216 = _s8NewsFeed17WebEmbedDatastoreC5empty3forAcA0cD17DataVisualizationO_tFZ_0(v205);
  }

  v217 = v216;
  v218 = v351;
  sub_1D5C00D08(v205, v351, type metadata accessor for WebEmbedDataVisualization);
  *(v218 + *(v340 + 20)) = v217;
  v339(v218, 0, 1);
  sub_1D5C00D08(v218, v371, sub_1D5E01820);

  sub_1D725B97C();

  sub_1D613582C(v218, sub_1D5E01820);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v219 = sub_1D725C42C();
  __swift_project_value_buffer(v219, qword_1EDFFC6F0);
  v220 = v168;
  v221 = sub_1D725C3FC();
  v222 = sub_1D7262EDC();

  v223 = os_log_type_enabled(v221, v222);
  v224 = v381;
  if (v223)
  {
    LODWORD(v375) = v222;
    v225 = v381 == 2;
    v226 = swift_slowAlloc();
    v374 = swift_slowAlloc();
    aBlock = v374;
    *v226 = 67109378;
    *(v226 + 4) = v225;
    *(v226 + 8) = 2080;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v227 = swift_allocObject();
    *(v227 + 16) = xmmword_1D7273AE0;
    *(v227 + 56) = ObjectType;
    *(v227 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v227 + 32) = v220;
    v228 = v220;
    v229 = sub_1D72620BC();
    v230 = v220;
    v231 = v217;
    v233 = v232;
    v234 = v383;
    sub_1D5C00D08(&v168[v347], v383, sub_1D5B4D3E0);
    v235 = v380;
    sub_1D5C00D08(&v385[v168], v380, sub_1D5B4D72C);
    v236 = v234;
    v204 = v382;
    v237 = sub_1D613520C(v229, v233, v236, v235);
    v239 = sub_1D5BC5100(v237, v238, &aBlock);

    *(v226 + 10) = v239;
    v217 = v231;
    v220 = v230;
    _os_log_impl(&dword_1D5B42000, v221, v375, "Will load data visualization data store, isInitialized=%{BOOL}d, %s", v226, 0x12u);
    v240 = v374;
    __swift_destroy_boxed_opaque_existential_1(v374);
    MEMORY[0x1DA6FD500](v240, -1, -1);
    v241 = v226;
    v224 = v381;
    MEMORY[0x1DA6FD500](v241, -1, -1);
  }

  v212 = v364;
  v242 = v377;
  if (!((v224 != 2) | v377 & 1))
  {
    v243 = [v384 view];
    if (v243)
    {
      v244 = v243;
      [v243 setHidden_];

      goto LABEL_52;
    }

LABEL_97:
    __break(1u);
    return;
  }

LABEL_52:
  v245 = v224 == 2;
  v246 = *(v217 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore);
  v247 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v248 = swift_allocObject();
  *(v248 + 16) = v247;
  *(v248 + 24) = v245;
  *(v248 + 25) = (v242 ^ 1) & 1;
  v393 = sub_1D613685C;
  v394 = v248;
  aBlock = MEMORY[0x1E69E9820];
  v390 = 1107296256;
  v391 = sub_1D5B6B06C;
  v392 = &block_descriptor_96;
  v249 = _Block_copy(&aBlock);
  v250 = v246;

  [v384 loadLocalDatastore:v250 options:1 completion:v249];
  _Block_release(v249);

  v251 = *(v213 + 3);
  v252 = *(v213 + 4);
  __swift_project_boxed_opaque_existential_1(v213, v251);
  v253 = v370;
  (*(v252 + 16))(v220, &protocol witness table for WebEmbedViewController, v370, v251, v252);

  sub_1D613582C(v253, type metadata accessor for WebEmbedDataVisualization);
LABEL_53:
  v254 = v358;
  v255 = *(v358 + 3);
  v256 = *(v358 + 4);
  __swift_project_boxed_opaque_existential_1(v358, v255);
  (*(v256 + 48))(v168, &protocol witness table for WebEmbedViewController, v255, v256);
  v257 = *(v254 + 3);
  v258 = *(v254 + 4);
  __swift_project_boxed_opaque_existential_1(v254, v257);
  v259 = (*(v258 + 8))(v257, v258);
  v260 = v367;
  v261 = v366;
  if (v259)
  {
    v262 = v349;
    sub_1D5C00D08(&v168[v347], v349, sub_1D5B4D3E0);
    if (v369(v262, 1, v204) == 1)
    {
      sub_1D613582C(v262, sub_1D5B4D3E0);
    }

    else
    {
      v263 = v345;
      (*(v387 + 32))(v345, v262, v204);
      v264 = sub_1D725847C();
      v378(v263, v204);
      if (v264)
      {
        v265 = *(v358 + 3);
        v266 = *(v358 + 4);
        __swift_project_boxed_opaque_existential_1(v358, v265);
        v267 = (*(v266 + 24))(v265, v266);
        if (qword_1EDF17580 != -1)
        {
          swift_once();
        }

        v268 = sub_1D725C42C();
        __swift_project_value_buffer(v268, qword_1EDFFC6F0);
        v269 = v168;
        v270 = sub_1D725C3FC();
        v271 = sub_1D7262EDC();

        if (os_log_type_enabled(v270, v271))
        {
          v272 = swift_slowAlloc();
          v381 = swift_slowAlloc();
          aBlock = v381;
          *v272 = 136315138;
          sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
          v273 = swift_allocObject();
          *(v273 + 16) = xmmword_1D7273AE0;
          *(v273 + 56) = ObjectType;
          *(v273 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
          *(v273 + 32) = v269;
          v274 = v269;
          v275 = sub_1D72620BC();
          v276 = v267;
          v278 = v277;
          v279 = v383;
          sub_1D5C00D08(&v168[v347], v383, sub_1D5B4D3E0);
          v280 = v380;
          sub_1D5C00D08(&v385[v168], v380, sub_1D5B4D72C);
          v281 = v280;
          v212 = v364;
          v282 = sub_1D613520C(v275, v278, v279, v281);
          v284 = sub_1D5BC5100(v282, v283, &aBlock);

          *(v272 + 4) = v284;
          v267 = v276;
          _os_log_impl(&dword_1D5B42000, v270, v271, "Will load live activity data store, %s", v272, 0xCu);
          v285 = v381;
          __swift_destroy_boxed_opaque_existential_1(v381);
          MEMORY[0x1DA6FD500](v285, -1, -1);
          v286 = v272;
          v204 = v382;
          MEMORY[0x1DA6FD500](v286, -1, -1);
        }

        v287 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1D612EF3C(v267, sub_1D6136854, v287);

        v288 = *(v358 + 3);
        v289 = *(v358 + 4);
        __swift_project_boxed_opaque_existential_1(v358, v288);
        (*(v289 + 40))(v269, &protocol witness table for WebEmbedViewController, v288, v289);

        v260 = v367;
        v261 = v366;
      }
    }
  }

  v352(v261, v212, v204);
  v290 = 1;
  v372(v261, 0, 1, v204);
  v291 = [v384 loadedURL];
  v292 = v356;
  if (v291)
  {
    v293 = v291;
    sub_1D72584EC();

    v290 = 0;
  }

  v372(v292, v290, 1, v204);
  v294 = *(v357 + 48);
  sub_1D5C00D08(v261, v260, sub_1D5B4D3E0);
  sub_1D5C00D08(v292, v260 + v294, sub_1D5B4D3E0);
  v295 = v369;
  if (v369(v260, 1, v204) == 1)
  {
    sub_1D613582C(v292, sub_1D5B4D3E0);
    sub_1D613582C(v261, sub_1D5B4D3E0);
    v296 = v295(v260 + v294, 1, v204);
    v297 = &dword_1EDF0D000;
    if (v296 == 1)
    {
      sub_1D613582C(v260, sub_1D5B4D3E0);
      v298 = &dword_1EDF0D000;
      goto LABEL_71;
    }

LABEL_69:
    sub_1D613582C(v260, sub_1D5BB60D4);
    v298 = &dword_1EDF0D000;
    goto LABEL_74;
  }

  v299 = v350;
  sub_1D5C00D08(v260, v350, sub_1D5B4D3E0);
  if (v295(v260 + v294, 1, v204) == 1)
  {
    sub_1D613582C(v292, sub_1D5B4D3E0);
    sub_1D613582C(v261, sub_1D5B4D3E0);
    v378(v299, v204);
    v297 = &dword_1EDF0D000;
    goto LABEL_69;
  }

  v300 = v346;
  (*(v387 + 32))(v346, v260 + v294, v204);
  sub_1D61368DC(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v387) = sub_1D7261FBC();
  v301 = v378;
  v378(v300, v204);
  sub_1D613582C(v292, sub_1D5B4D3E0);
  sub_1D613582C(v261, sub_1D5B4D3E0);
  v301(v299, v204);
  sub_1D613582C(v260, sub_1D5B4D3E0);
  v298 = &dword_1EDF0D000;
  v297 = &dword_1EDF0D000;
  if ((v387 & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_71:
  if (*(v297 + 238) != -1)
  {
    swift_once();
    if (*(v298 + 1921))
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (*(v298 + 1921))
  {
LABEL_74:
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v302 = sub_1D725C42C();
    __swift_project_value_buffer(v302, qword_1EDFFC6F0);
    v303 = v168;
    v304 = sub_1D725C3FC();
    v305 = sub_1D7262EDC();

    if (os_log_type_enabled(v304, v305))
    {
      v306 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      aBlock = v307;
      *v306 = 136315138;
      sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v308 = swift_allocObject();
      *(v308 + 16) = xmmword_1D7273AE0;
      *(v308 + 56) = ObjectType;
      *(v308 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
      *(v308 + 32) = v303;
      v309 = v303;
      v310 = sub_1D72620BC();
      v312 = v311;
      v313 = v383;
      sub_1D5C00D08(&v168[v347], v383, sub_1D5B4D3E0);
      v314 = &v385[v168];
      v315 = v380;
      sub_1D5C00D08(v314, v380, sub_1D5B4D72C);
      v316 = sub_1D613520C(v310, v312, v313, v315);
      v318 = sub_1D5BC5100(v316, v317, &aBlock);

      *(v306 + 4) = v318;
      _os_log_impl(&dword_1D5B42000, v304, v305, "Load embed web view with URL, %s", v306, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v307);
      MEMORY[0x1DA6FD500](v307, -1, -1);
      MEMORY[0x1DA6FD500](v306, -1, -1);
    }

    if (*(v297 + 238) != -1)
    {
      swift_once();
    }

    v319 = *(v298 + 1921);
    v140 = sub_1D725844C();
    if (v319 == 1)
    {
      [v384 loadURL:v140 cachePolicy:4];
    }

    else
    {
      [v384 loadURL_];
    }

LABEL_84:

    return;
  }

LABEL_73:
  sub_1D725AB5C();
  if (aBlock == 3)
  {
    goto LABEL_74;
  }

  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v320 = sub_1D725C42C();
  __swift_project_value_buffer(v320, qword_1EDFFC6F0);
  v321 = v168;
  v322 = sub_1D725C3FC();
  v323 = sub_1D7262EDC();

  if (os_log_type_enabled(v322, v323))
  {
    v324 = swift_slowAlloc();
    v325 = swift_slowAlloc();
    aBlock = v325;
    *v324 = 136315138;
    sub_1D5B62BF4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v326 = swift_allocObject();
    *(v326 + 16) = xmmword_1D7273AE0;
    *(v326 + 56) = ObjectType;
    *(v326 + 64) = sub_1D61368DC(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69E81C8]);
    *(v326 + 32) = v321;
    v327 = v321;
    v328 = sub_1D72620BC();
    v330 = v329;
    v331 = v383;
    sub_1D5C00D08(&v168[v347], v383, sub_1D5B4D3E0);
    v332 = &v385[v168];
    v333 = v380;
    sub_1D5C00D08(v332, v380, sub_1D5B4D72C);
    v334 = sub_1D613520C(v328, v330, v331, v333);
    v336 = sub_1D5BC5100(v334, v335, &aBlock);

    *(v324 + 4) = v336;
    _os_log_impl(&dword_1D5B42000, v322, v323, "Already loaded, %s", v324, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v325);
    MEMORY[0x1DA6FD500](v325, -1, -1);
    MEMORY[0x1DA6FD500](v324, -1, -1);
  }

  [v384 webViewSetNeedsLayout];
}

uint64_t sub_1D613520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D613686C(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 56);
  v39 = a3;
  sub_1D5C00D08(a3, v19, sub_1D5B4D3E0);
  v38 = a4;
  sub_1D5C00D08(a4, &v19[v21], sub_1D5B4D72C);
  LODWORD(a3) = (*(v12 + 48))(v19, 1, v11);
  v22 = (*(v8 + 48))(&v19[v21], 1, v7);
  v23 = v22;
  if (a3 == 1)
  {
    if (v22 == 1)
    {
      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v37, a2);

      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      v24 = v40;
      sub_1D613582C(v38, sub_1D5B4D72C);
      v25 = sub_1D5B4D3E0;
      v26 = v39;
    }

    else
    {
      v30 = v36;
      sub_1D61367AC(&v19[v21], v36, type metadata accessor for WebEmbedDataVisualization);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1D7263D4C();

      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v37, a2);

      MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73CAD70);
      v31 = WebEmbedDataVisualization.identifier.getter();
      MEMORY[0x1DA6F9910](v31);

      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      v24 = v40;
      sub_1D613582C(v38, sub_1D5B4D72C);
      sub_1D613582C(v39, sub_1D5B4D3E0);
      v25 = type metadata accessor for WebEmbedDataVisualization;
      v26 = v30;
    }

    sub_1D613582C(v26, v25);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    if (v23 == 1)
    {
      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v37, a2);

      MEMORY[0x1DA6F9910](0x3D6C7275202CLL, 0xE600000000000000);
      sub_1D61368DC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v27 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v27);

      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      v24 = v40;
      sub_1D613582C(v38, sub_1D5B4D72C);
      v28 = sub_1D5B4D3E0;
      v29 = v39;
    }

    else
    {
      v32 = v36;
      sub_1D61367AC(&v19[v21], v36, type metadata accessor for WebEmbedDataVisualization);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1D7263D4C();

      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v37, a2);

      MEMORY[0x1DA6F9910](0x3D6C7275202CLL, 0xE600000000000000);
      sub_1D61368DC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v33 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v33);

      MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73CAD70);
      v34 = WebEmbedDataVisualization.identifier.getter();
      MEMORY[0x1DA6F9910](v34);

      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      v24 = v40;
      sub_1D613582C(v38, sub_1D5B4D72C);
      sub_1D613582C(v39, sub_1D5B4D3E0);
      v28 = type metadata accessor for WebEmbedDataVisualization;
      v29 = v32;
    }

    sub_1D613582C(v29, v28);
    (*(v12 + 8))(v15, v11);
  }

  return v24;
}

uint64_t sub_1D613582C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D61358D8()
{
  result = qword_1EC884070;
  if (!qword_1EC884070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884070);
  }

  return result;
}

uint64_t keypath_get_1Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  result = a3(v6 + v7);
  *a4 = result;
  return result;
}

void sub_1D6135A28(uint64_t a1)
{
  if (!qword_1EDF17B30)
  {
    type metadata accessor for WebEmbedStateMachineEvent(255);
    sub_1D6135AE0();
    sub_1D61368DC(qword_1EDF0BAD0, type metadata accessor for WebEmbedStateMachineEvent, &unk_1D7364FC0);
    v1 = sub_1D725B5EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17B30);
    }
  }
}

unint64_t sub_1D6135AE0()
{
  result = qword_1EDF16448;
  if (!qword_1EDF16448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16448);
  }

  return result;
}

void sub_1D6135C04()
{
  v1 = v0;
  sub_1D5E01820(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35[-v8];
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onReuse;
  sub_1D5BFDBB4();
  *(v1 + v11) = [objc_allocWithZone(v12) init];
  v13 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_contentFrameView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onNavigationBarConfigurationUpdate);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner) = 1;
  v17 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for WebEmbedErrorView()) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorPosition) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate) = 0;
  v18 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  v19 = sub_1D72585BC();
  v20 = *(*(v19 - 8) + 56);
  v20(v1 + v18, 1, 1, v19);
  v20(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location) = 0;
  v20(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL, 1, 1, v19);
  v21 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  *(v1 + v21) = [objc_allocWithZone(MEMORY[0x1E69CE168]) init];
  v22 = (v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize);
  *v22 = 0;
  v22[1] = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable) = 0;
  v23 = v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSize;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  v24 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  v25 = type metadata accessor for WebEmbedDataVisualization(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuide;
  *(v1 + v26) = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange) = 0;
  v27 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_stateMachine;
  if (qword_1EDF125F0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDFFC610;
  v35[15] = 0;
  sub_1D5E01854(0);
  swift_allocObject();
  v29 = v28;
  *(v1 + v27) = sub_1D725AB3C();
  v30 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator;
  *(v1 + v30) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v31 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_tapGestureRecognizer;
  *(v1 + v31) = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:0 action:0];
  v32 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController__lastDatastoreUpdate;
  v33 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
  sub_1D5C00D08(v9, v5, sub_1D5E01820);
  sub_1D5B62BF4(0, &qword_1EDF17AB8, sub_1D5E01820, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v34 = sub_1D725B94C();
  sub_1D613582C(v9, sub_1D5E01820);
  *(v1 + v32) = v34;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_debugLoadView) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideView) = 0;
  sub_1D726402C();
  __break(1u);
}

void *sub_1D6136158()
{
  v1 = v0;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1D725AB5C();
  if (v16[8] == 3)
  {
    v12 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
    swift_beginAccess();
    sub_1D5C00D08(v1 + v12, v5, sub_1D5B4D3E0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_1D613582C(v5, sub_1D5B4D3E0);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      if (qword_1EDF0D770 != -1)
      {
        swift_once();
      }

      v13 = byte_1EDF0D781;
      v14 = *(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController);
      v15 = sub_1D725844C();
      if (v13 == 1)
      {
        [v14 loadURL:v15 cachePolicy:4];
      }

      else
      {
        [v14 loadURL_];
      }

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void sub_1D61363B4(uint64_t a1, char a2)
{
  sub_1D725CACC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong view];

    if (v6)
    {
      v7 = [v6 window];

      if (v7)
      {
        v8 = [v7 rootViewController];

        if (v8)
        {
          v9 = sub_1D7262FCC();

          [v9 presentViewController:a1 animated:a2 & 1 completion:0];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D61364D4(uint64_t a1)
{
  sub_1D5B68374(v1 + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedCoordinator, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier + 8))
  {
    v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier);
    v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = *(v4 + 8);

  v7(v5, v6, a1, 0, v3, v4);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1D61365B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}