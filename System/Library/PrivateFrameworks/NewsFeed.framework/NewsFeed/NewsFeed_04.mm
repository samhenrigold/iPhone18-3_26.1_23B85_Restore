uint64_t objectdestroy_2493Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16(void (*a1)(void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for DebugFormatFileTreePopoverView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for FeedHeadline(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = v2 + v3 + *(type metadata accessor for FeedHeadline.State(0) + 24);
  v5 = type metadata accessor for SharedItem(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_1D725891C();
    (*(*(v6 - 8) + 8))(v4, v6);

    v7 = *(v5 + 28);
    v8 = sub_1D72585BC();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  v9 = v1[11];
  v10 = sub_1D726045C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  if (*(v2 + v1[12] + 8) >= 0x12uLL)
  {
  }

  if (*(v2 + v1[13]) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  sub_1D5B54790(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for DebugFormatWorkspaceCanvasSection(0);
  v49 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v47 = v0 + ((v49 + 40) & ~v49);
  v48 = v1;
  v2 = v47 + *(v1 + 28);

  v3 = v2 + *(type metadata accessor for FormatWorkspaceGroup(0) + 24);

  v4 = type metadata accessor for FormatContentSubgroup(0);
  v5 = v3 + *(v4 + 20);
  sub_1D5C2AD34(0, qword_1EDF40220, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    if (*(v5 + 168) >= 3uLL)
    {
    }

    v44 = type metadata accessor for FormatPackage(0);
    v16 = v5 + v44[23];

    v17 = type metadata accessor for FormatCompilerOptions(0);
    v18 = v16 + *(v17 + 24);
    if (*(v18 + 8) != 1)
    {
    }

    v19 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v20 = sub_1D725B76C();
    v45 = *(v20 - 8);
    v46 = *(v45 + 48);
    if (!v46(v18 + v19, 1, v20))
    {
      (*(v45 + 8))(v18 + v19, v20);
    }

    v43 = v4;
    v21 = *(v17 + 28);
    if (!v46(v16 + v21, 1, v20))
    {
      (*(v45 + 8))(v16 + v21, v20);
    }

    v22 = v44[24];
    v23 = sub_1D725BD1C();
    v24 = *(v23 - 8);
    v25 = *(v24 + 8);
    v25(v5 + v22, v23);
    v26 = v44[25];
    if (!v46(v5 + v26, 1, v20))
    {
      (*(v45 + 8))(v5 + v26, v20);
    }

    sub_1D61F531C(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v28 = v5 + *(v27 + 48);

    v29 = type metadata accessor for FormatMetadata(0);
    v25(v28 + v29[5], v23);
    v25(v28 + v29[6], v23);
    v30 = v29[7];
    if (!(*(v24 + 48))(v28 + v30, 1, v23))
    {
      v25(v28 + v30, v23);
    }

    v4 = v43;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_20;
    }

    v7 = sub_1D72585BC();
    (*(*(v7 - 8) + 8))(v5, v7);
    sub_1D61F531C(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v9 = v5 + *(v8 + 48);

    v10 = type metadata accessor for FormatMetadata(0);
    v11 = v10[5];
    v12 = sub_1D725BD1C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 8);
    v14(v9 + v11, v12);
    v14(v9 + v10[6], v12);
    v15 = v10[7];
    if (!(*(v13 + 48))(v9 + v15, 1, v12))
    {
      v14(v9 + v15, v12);
    }
  }

LABEL_20:
  sub_1D5C2AD34(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);

  v31 = v3 + *(v4 + 40);

  v32 = type metadata accessor for FormatMetadata(0);
  v33 = v32[5];
  v34 = sub_1D725BD1C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 8);
  v36(v31 + v33, v34);
  v36(v31 + v32[6], v34);
  v37 = v32[7];
  if (!(*(v35 + 48))(v31 + v37, 1, v34))
  {
    v36(v31 + v37, v34);
  }

  type metadata accessor for DebugFormatWorkspaceGroup(0);

  v38 = *(v48 + 32);
  v39 = sub_1D7259F5C();
  (*(*(v39 - 8) + 8))(v47 + v38, v39);
  v40 = *(v48 + 36);
  v41 = sub_1D7259CFC();
  (*(*(v41 - 8) + 8))(v47 + v40, v41);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{

  if (*(v0 + 24))
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26(void (*a1)(void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{
  v1 = sub_1D725CCCC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_29()
{

  sub_1D6A8CE7C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_30()
{

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1D6ADCDFC(*(v0 + 48), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for DebugFormatInspectorPopoverView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[13], v5);

  return swift_deallocObject();
}

uint64_t objectdestroy_68Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_32()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_33()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_19Tm()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_35()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_36()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_37()
{
  v1 = (type metadata accessor for DebugTaxtAttachementList(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1D708C054(0, &qword_1EC893EB8, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D7260F1C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_38()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_1D7106450(*(v0 + 48), *(v0 + 56), v1 & 1);
  }

  sub_1D6BB3158(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_39()
{
  v1 = type metadata accessor for DebugFormatBindingRequest(0);
  v44 = *(*(v1 - 8) + 80);

  v42 = v0 + ((v44 + 24) & ~v44);
  v43 = v1;
  v2 = v42 + *(v1 + 20);

  v3 = type metadata accessor for FormatContentSubgroup(0);
  v4 = v2 + *(v3 + 20);
  sub_1D5C2AE3C(0, qword_1EDF40220, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    if (*(v4 + 168) >= 3uLL)
    {
    }

    v15 = type metadata accessor for FormatPackage(0);
    v16 = v4 + v15[23];

    v17 = type metadata accessor for FormatCompilerOptions(0);
    v18 = v16 + *(v17 + 24);
    if (*(v18 + 8) != 1)
    {
    }

    v19 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v20 = sub_1D725B76C();
    v40 = *(v20 - 8);
    v41 = *(v40 + 48);
    if (!v41(v18 + v19, 1, v20))
    {
      (*(v40 + 8))(v18 + v19, v20);
    }

    v21 = *(v17 + 28);
    if (!v41(v16 + v21, 1, v20))
    {
      (*(v40 + 8))(v16 + v21, v20);
    }

    v22 = v15[24];
    v23 = sub_1D725BD1C();
    v39 = *(v23 - 8);
    v24 = *(v39 + 8);
    v24(v4 + v22, v23);
    v25 = v15[25];
    if (!v41(v4 + v25, 1, v20))
    {
      (*(v40 + 8))(v4 + v25, v20);
    }

    sub_1D61F531C(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v27 = v4 + *(v26 + 48);

    v28 = type metadata accessor for FormatMetadata(0);
    v24(v27 + v28[5], v23);
    v24(v27 + v28[6], v23);
    v29 = v28[7];
    if (!(*(v39 + 48))(v27 + v29, 1, v23))
    {
      v24(v27 + v29, v23);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_19;
    }

    v6 = sub_1D72585BC();
    (*(*(v6 - 8) + 8))(v4, v6);
    sub_1D61F531C(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v8 = v4 + *(v7 + 48);

    v9 = type metadata accessor for FormatMetadata(0);
    v10 = v9[5];
    v11 = sub_1D725BD1C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 8);
    v13(v8 + v10, v11);
    v13(v8 + v9[6], v11);
    v14 = v9[7];
    if (!(*(v12 + 48))(v8 + v14, 1, v11))
    {
      v13(v8 + v14, v11);
    }
  }

LABEL_19:
  sub_1D5C2AE3C(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);

  v30 = v2 + *(v3 + 40);

  v31 = type metadata accessor for FormatMetadata(0);
  v32 = v31[5];
  v33 = sub_1D725BD1C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 8);
  v35(v30 + v32, v33);
  v35(v30 + v31[6], v33);
  v36 = v31[7];
  if (!(*(v34 + 48))(v30 + v36, 1, v33))
  {
    v35(v30 + v36, v33);
  }

  v37 = (v42 + *(v43 + 28));
  if (v37[1])
  {

    if (v37[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v37[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_40()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5BAE9EC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D6EF0CC4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D5BAEF38;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1D5BAEB80(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1D5C3BF6C;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D5C3BF64;
      aBlock[3] = &block_descriptor_65_0;
      v7 = _Block_copy(aBlock);

      [v5 fetchMostFrequentLocationWithCompletion_];
      _Block_release(v7);
    }

    else
    {
      if (qword_1EDF29DF0 != -1)
      {
        swift_once();
      }

      v8 = qword_1EDFFCAB0;
      v9 = sub_1D7262EDC();
      sub_1D725C30C("User did not authorize using location, removing any cached location", 67, 2, &dword_1D5B42000, v8, v9, MEMORY[0x1E69E7CC0]);

      sub_1D725B96C();

      v10 = aBlock[0];
      if (aBlock[0])
      {
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = v11;

        sub_1D725BFFC();

        v4 = v10;
      }
    }
  }
}

void sub_1D5BAEDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observers;
  swift_beginAccess();
  v7 = *&v5[v6];
  if (v7 >> 62)
  {
    v8 = sub_1D7263BFC();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_4:
  v9 = v8 - 1;
  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; ; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA6FB460](i, v7);
    }

    else
    {
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v13 = v5;
    [v12 locationDetectionManager:v13 didChangeAuthorizationStatus:a2];

    swift_unknownObjectRelease();
    if (v9 == i)
    {

      goto LABEL_15;
    }

LABEL_7:
    ;
  }

  if (v9 != i)
  {
    goto LABEL_7;
  }

LABEL_15:
}

uint64_t sub_1D5BAEF38()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[10] = v1;
  v3 = [v1 puzzlesConfig];
  v0[11] = v3;
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v0[12] = v4;
  [v4 setAllowLowerProgressOnCompletedPuzzles_];
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleService);
  v6 = *(v2 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleService + 24);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = [v3 puzzleTypes];
  v9 = sub_1D726267C();
  v0[13] = v9;

  v12 = (*(v7 + 104) + **(v7 + 104));
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D5BAFDD4;

  return v12(v9, v6, v7);
}

uint64_t PuzzleService.puzzleTypes(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5BAB5C0, 0, 0);
}

uint64_t sub_1D5BAF144()
{
  swift_getObjectType();

  return sub_1D725B1CC();
}

uint64_t sub_1D5BAF180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getObjectType();

  return sub_1D725B1BC();
}

uint64_t sub_1D5BAF200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D5BAF2B4(a1, v4, v5, v6);
}

uint64_t sub_1D5BAF2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D5BAF348;

  return sub_1D5B73F60();
}

uint64_t sub_1D5BAF348(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D5C41EF0, v2, 0);
}

uint64_t sub_1D5BAF460(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B5534C(0, a4, a5);
    v6 = sub_1D7261D3C();
  }

  v8 = a3;
  v7(v6, a3);
}

uint64_t sub_1D5BAF520(uint64_t a1, id a2)
{
  if (a2)
  {
    v11 = a2;
    v2 = a2;
LABEL_3:
    sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
    return sub_1D726286C();
  }

  if (!a1)
  {
LABEL_8:
    sub_1D5F75098();
    v9 = swift_allocError();
    *v10 = 2;
    v11 = v9;
    goto LABEL_3;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = sub_1D5C38490(*(a1 + 16), 0);
    v7 = sub_1D5C38498(&v11, v6 + 4, v4, a1);
    v8 = v11;

    sub_1D5B87E38(v8);
    if (v7 != v4)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v11 = v6;
  sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
  return sub_1D726287C();
}

uint64_t sub_1D5BAF728()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F68BBC;
  }

  else
  {

    v2 = sub_1D5BAFD68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5BAF844(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t type metadata accessor for FeedEngagementBanner(uint64_t a1)
{
  result = qword_1EDF37CC8;
  if (!qword_1EDF37CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedLayoutCacheDynamicKey(uint64_t a1)
{
  result = qword_1EDF36180;
  if (!qword_1EDF36180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedLayoutCacheFastPathResult(uint64_t a1)
{
  result = qword_1EDF35728;
  if (!qword_1EDF35728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BAFA28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5BB0F34(255, a2, a3, type metadata accessor for HeadlineView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for VideoView(uint64_t a1)
{
  result = qword_1EDF1B9F8;
  if (!qword_1EDF1B9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5BAFAD8()
{
  result = qword_1EDF1A660;
  if (!qword_1EDF1A660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A660);
  }

  return result;
}

_OWORD *sub_1D5BAFB24(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D5C06BE0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D5BAFF10(v16, a4 & 1);
    v11 = sub_1D5B69D90(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D5B7C390(a1, v22);
  }

  else
  {
    sub_1D5BABA3C(v11, a2, a3, a1, v21);
  }
}

uint64_t objectdestroy_194Tm()
{
  sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5BAFD68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5BAFDD4(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = sub_1D6EF0E68;
  }

  else
  {

    v4 = v3[5];
    v5 = v3[6];
    v6 = sub_1D5BB03CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D5BAFF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D5BB0CE0();
  v33 = v4;
  result = sub_1D726410C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D5B7C390(v24, v34);
      }

      else
      {
        sub_1D5B76B10(v24, v34);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D5B7C390(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D5BB01BC(void *a1, uint64_t *a2)
{
  v2 = sub_1D726207C();
  v4 = v3;
  if (v2 == sub_1D726207C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D72646CC();
  }

  return v7 & 1;
}

uint64_t sub_1D5BB0244(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

void sub_1D5BB028C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D6A559EC(255, a3, a4, type metadata accessor for HeadlineView);
    sub_1D6A55A50(a5, a3, a4);
    v9 = sub_1D725DC4C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5BB032C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D5BB0F34(255, a3, a4, type metadata accessor for HeadlineView);
    sub_1D5BAFA28(a5, a3, a4);
    v9 = sub_1D725DC4C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_1D5BB03CC()
{
  v26 = v0;
  v1 = v0[15];

  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
LABEL_3:
      v25 = MEMORY[0x1E69E7CC0];
      result = sub_1D5C4223C(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v23 = v0[15] + 32;
      v24 = v0;
      v6 = v25;
      do
      {
        if (v5)
        {
          v7 = MEMORY[0x1DA6FB460](v4, v24[15]);
        }

        else
        {
          v7 = *(v23 + 8 * v4);
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v8 = [v7 identifier];
        v9 = sub_1D726207C();
        v11 = v10;

        v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
        swift_unknownObjectRelease();
        v25 = v6;
        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D5C4223C((v13 > 1), v14 + 1, 1);
          v6 = v25;
        }

        ++v4;
        *(v6 + 16) = v14 + 1;
        v15 = (v6 + 24 * v14);
        v15[4] = v9;
        v15[5] = v11;
        v15[6] = v12;
      }

      while (v2 != v4);
      v0 = v24;

      if (*(v6 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_12:
    sub_1D5C426D8(0);
    v16 = sub_1D726412C();
    goto LABEL_16;
  }

LABEL_15:
  v16 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v17 = v0[16];
  v25 = v16;

  sub_1D5BB06E0(v18, 1, &v25);
  if (v17)
  {

    return swift_unexpectedError();
  }

  else
  {
    v20 = v0[11];
    v19 = v0[12];

    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    v21 = sub_1D7261D2C();

    [v19 setPuzzleTypeTraits_];

    swift_unknownObjectRelease();
    v22 = v0[1];

    return v22();
  }
}

void sub_1D5BB06E0(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1D5B69D90(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1D6D6F5E4(v16, v5 & 1);
    v11 = sub_1D5B69D90(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1D726493C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1D6D831E4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1D5BA6EF4();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73F65C0);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](39, 0xE100000000000000);
    sub_1D726402C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_1D5B69D90(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1D6D6F5E4(v33, 1);
        v29 = sub_1D5B69D90(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1D5BB0A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D5BB0AB8()
{
  result = qword_1EDF3C840;
  if (!qword_1EDF3C840)
  {
    sub_1D5B5D2B4(255, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C840);
  }

  return result;
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

void *sub_1D5BB0B48(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5AB24(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D5B5D9E0();
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5BB0C80()
{
  sub_1D5BAA2FC();
  swift_allocObject();
  result = sub_1D7264C2C();
  qword_1EDFFCEE0 = result;
  return result;
}

void sub_1D5BB0CE0()
{
  if (!qword_1EDF1A300)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A300);
    }
  }
}

void sub_1D5BB0D44(uint64_t a1)
{
  if (!qword_1EDF1A788)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1A788);
    }
  }
}

void sub_1D5BB0DB0()
{
  if (!qword_1EDF1B790)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B790);
    }
  }
}

void sub_1D5BB0E14(uint64_t a1)
{
  if (!qword_1EDF1A2C0)
  {
    type metadata accessor for AttributeName(255);
    sub_1D5BABC90(&qword_1EDF1A790, type metadata accessor for AttributeName, &unk_1D7272A74);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A2C0);
    }
  }
}

uint64_t type metadata accessor for FeedLayoutCacheKey(uint64_t a1)
{
  result = qword_1EDF38788;
  if (!qword_1EDF38788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BB0F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BB0F98()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[1] = 0x3FD999999999999ALL;
  sub_1D5B6E12C(0, &qword_1EDF3C208, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C368 = result;
  return result;
}

void *sub_1D5BB1170@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, qword_1EDF20A88, &protocol descriptor for EngagementBannerViewStylerType);
  result = sub_1D725AACC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for EngagementBannerViewStyler();
    v19[3] = v10;
    v19[4] = &off_1F519C300;
    v19[0] = v9;
    v11 = type metadata accessor for EngagementBannerViewRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_1F519C300;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &protocol witness table for EngagementBannerViewRenderer;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5BB13E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BB1438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB149C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BB14F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB1554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BB15A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB160C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB1670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB16D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB1738(uint64_t a1)
{
  if (!qword_1EDF3AA18)
  {
    sub_1D72609CC();
    sub_1D7260A0C();
    sub_1D7260A9C();
    sub_1D5B48988(&qword_1EDF43930, 255, MEMORY[0x1E69B41B0], MEMORY[0x1E69B41A8]);
    v1 = sub_1D72606FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3AA18);
    }
  }
}

uint64_t sub_1D5BB1834(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = type metadata accessor for HiddenContentPlacardViewLayoutAttributesFactory();
  v34[3] = v8;
  v34[4] = &off_1F51A66D8;
  v34[0] = a1;
  v9 = type metadata accessor for HiddenContentPlacardViewStyler();
  v32 = v9;
  v33 = &off_1F519BAF0;
  v31[0] = a2;
  type metadata accessor for HiddenContentPlacardViewRenderer();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v8);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x1EEE9AC00](v16, v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v8;
  v30 = &off_1F51A66D8;
  v27 = &off_1F519BAF0;
  *&v28 = v21;
  v26 = v9;
  *&v25 = v22;
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C360 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  *(v10 + 144) = v24;
  sub_1D5B63F14(&v28, v10 + 16);
  sub_1D5B63F14(&v25, v10 + 56);
  sub_1D5B63F14(a3, v10 + 96);
  *(v10 + 136) = a4;
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

unint64_t sub_1D5BB1ABC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EngagementBannerViewStyler();
  v3 = swift_allocObject();
  result = sub_1D5BB8CF8(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F519C300;
  *a1 = v3;
  return result;
}

uint64_t sub_1D5BB1B68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D5BB1BB0(uint64_t a1, void *a2)
{
  sub_1D725960C();
  v3 = sub_1D72596AC();

  if (v3)
  {
    sub_1D725960C();
    sub_1D72595FC();

    type metadata accessor for AdsAssembly();
    sub_1D5B48988(&unk_1EC895578, v4, type metadata accessor for AdsAssembly, &unk_1D734E1B8);
    sub_1D725964C();

    return v8;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D5BBDE04();
    result = sub_1D725AABC();
    if (result)
    {
      v6 = [result possiblyUnfetchedAppConfiguration];
      swift_unknownObjectRelease();
      if ([v6 respondsToSelector_])
      {
        v7 = [v6 feedAdScreenfulsToPrefetch];
        swift_unknownObjectRelease();
        return v7;
      }

      else
      {
        swift_unknownObjectRelease();
        return 3;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1D5BB1D1C(void *a1)
{
  v2 = sub_1D726076C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3A9D0, MEMORY[0x1E69B41B8], 1);
  result = sub_1D725AACC();
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3AA98, MEMORY[0x1E69B3E78], 1);
  result = sub_1D725AACC();
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB96DC(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48C54(0);
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D726075C();
    sub_1D5BB1738(0);
    swift_allocObject();
    return sub_1D72606EC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB1EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB1FE4();
  sub_1D72621FC();
  v3 = sub_1D725AA7C();

  if (v3)
  {
    v5 = type metadata accessor for AdPolicyViewportEnvironmentProvider();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    a2[3] = v5;
    result = sub_1D5B48988(&qword_1EDF1DBD0, 255, type metadata accessor for AdPolicyViewportEnvironmentProvider, &unk_1D73A10C4);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5BB1FE4()
{
  result = qword_1EDF1ABF0;
  if (!qword_1EDF1ABF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1ABF0);
  }

  return result;
}

id FeedBannerAdIntegrator.init(pipeline:blueprintProvider:policyValidator:layoutCollectionProvider:journal:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1D5BB20BC(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x50) - 8) + 8))(a2);
  return v9;
}

id sub_1D5BB20BC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v28 = *v5;
  v7 = v28;
  v29 = *MEMORY[0x1E69E7D40];
  v8 = v29;
  v30 = sub_1D726307C();
  v9 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v27 = *((v8 & v7) + 0xA8);
  v17 = sub_1D5B5DA7C();
  v26[1] = "NewsFeed.FeedBannerAdIntegrator";
  v26[2] = v17;
  sub_1D7261B1C();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D5B73830(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v18 = MEMORY[0x1E69E8030];
  sub_1D5B5E220(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D5B6D530(&qword_1EDF1AE80, &unk_1EDF1AE90, v18);
  sub_1D7263B6C();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8090], v30);
  *&v5[v27] = sub_1D72630BC();
  v19 = MEMORY[0x1E69E7D40];
  v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0xB0)] = 0;
  *&v5[*((*v19 & *v5) + 0xB8)] = MEMORY[0x1E69E7CC0];
  v20 = v32;
  *&v5[*((*v19 & *v5) + 0x80)] = v31;
  v21 = v19;
  (*(*(*((v29 & v28) + 0x50) - 8) + 16))(&v6[*((*v19 & *v6) + 0x88)], v20);
  v22 = v33;
  sub_1D5B68374(v33, &v6[*((*v21 & *v6) + 0x90)]);
  v23 = v34;
  sub_1D5B68374(v34, &v6[*((*v21 & *v6) + 0x98)]);
  *&v6[*((*v21 & *v6) + 0xA0)] = v36;
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v24;
}

void sub_1D5BB2500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB2564(uint64_t a1)
{
  sub_1D5BB2500(319, qword_1EDF1F920, type metadata accessor for FormatMicaSectionDecorationItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D5BB26FC(uint64_t a1)
{
  sub_1D5B53C80(0, &unk_1EDF31BF8, &qword_1EDF412B0, &protocol descriptor for TagServiceType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D5BB27A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D725AACC();
  if (!v41[3])
  {
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3EFA0, &protocol descriptor for HeadlineViewRendererType, 0);
  result = sub_1D725AACC();
  v5 = v39;
  if (!v39)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FFC0, &protocol descriptor for GapViewRendererType, 0);
  result = sub_1D725AACC();
  v6 = v37;
  if (!v37)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EA78, &protocol descriptor for GapOfflineViewRendererType, 0);
  result = sub_1D725AACC();
  v7 = v35;
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v36;
  v20 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3A998, MEMORY[0x1E69B42A8], 1);
  result = sub_1D725AACC();
  if (!v34[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3EA80, &protocol descriptor for CoverIssueViewRendererType, 0);
  result = sub_1D725AACC();
  v8 = v32;
  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E738, &protocol descriptor for CoverChannelViewRendererType, 0);
  result = sub_1D725AACC();
  v18 = v30;
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v31;
  v16 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E5E0, &protocol descriptor for FormatLayoutViewRendererType, 0);
  result = sub_1D725AACC();
  if (!v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48420(0);
  result = sub_1D725AABC();
  v14 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3D838, &protocol descriptor for HiddenContentEffectRendererType, 1);
  result = sub_1D725AACC();
  if (!v27[3])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F3C0, &protocol descriptor for CategoryViewRendererType, 1);
  result = sub_1D725AACC();
  if (!v26[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D810, &protocol descriptor for EngagementBannerViewRendererType, 1);
  result = sub_1D725AACC();
  if (!v25[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3B868, MEMORY[0x1E69B5700], 1);
  result = sub_1D725AACC();
  if (!v24[3])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725F43C();
  v21 = sub_1D725AABC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42838, &protocol descriptor for FeedItemDimmingEvaluatorType, 1);
  result = sub_1D725AACC();
  if (!v23[3])
  {
LABEL_31:
    __break(1u);
    return result;
  }

  type metadata accessor for FeedItemRenderer();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 24) = 0;
  *(v9 + 432) = MEMORY[0x1E69E7CD0];
  *(v9 + 440) = 0;
  *(v9 + 448) = 0;
  sub_1D5B68374(v41, v9 + 32);
  sub_1D5B68374(v41, v22);
  type metadata accessor for FeedItemCellSelectionRenderer();
  v10 = swift_allocObject();
  sub_1D5B63F14(v22, v10 + 16);
  *(v9 + 72) = v10;
  *(v9 + 80) = v5;
  *(v9 + 88) = v16;
  *(v9 + 96) = v6;
  *(v9 + 104) = v20;
  *(v9 + 112) = v7;
  *(v9 + 120) = v19;
  sub_1D5B68374(v34, v9 + 128);
  *(v9 + 168) = v8;
  *(v9 + 176) = v17;
  *(v9 + 184) = v18;
  *(v9 + 192) = v15;
  *(v9 + 200) = v12;
  *(v9 + 208) = v13;
  *(v9 + 216) = v14;
  sub_1D5B68374(v27, v9 + 224);
  sub_1D5B68374(v26, v9 + 264);
  sub_1D5B68374(v25, v9 + 304);
  sub_1D5B68374(v24, v9 + 344);
  *(v9 + 424) = v21;
  sub_1D5B68374(v23, v9 + 384);
  v11 = qword_1EDF3C2D0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  if (v11 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_1D5B471E8(qword_1EDF392F0, 255, type metadata accessor for FeedItemRenderer, &protocol conformance descriptor for FeedItemRenderer);
  sub_1D725965C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v34);
  result = __swift_destroy_boxed_opaque_existential_1(v41);
  *(v9 + 440) = v22[0];
  *a2 = v9;
  a2[1] = &protocol witness table for FeedItemRenderer;
  return result;
}

uint64_t sub_1D5BB2F38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5BB2F74@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a1(0);
  result = swift_allocObject();
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *sub_1D5BB2FD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EA70, &protocol descriptor for IssueCoverViewRendererType, 1);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  if (!v8)
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
    sub_1D5B471E8(&qword_1EDF3BED0, 255, MEMORY[0x1E698AAC8], &protocol conformance descriptor for Tracker);
    sub_1D725E83C();
    swift_allocObject();
    v6 = sub_1D725E81C();
    type metadata accessor for CoverIssueViewRenderer();
    v7 = swift_allocObject();
    result = sub_1D5B63F14(&v9, v7 + 24);
    *(v7 + 16) = v5;
    *(v7 + 64) = v6;
    *a2 = v7;
    a2[1] = &off_1F51F30E0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D5BB31D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D725AACC();
  if (*(&v10 + 1))
  {
    sub_1D5B63F14(&v9, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 32))(&v9, v4, v5);
    v6 = type metadata accessor for IssueCoverViewStyler();
    v7 = swift_allocObject();
    v8 = v10;
    *(v7 + 16) = v9;
    *(v7 + 32) = v8;
    a2[3] = v6;
    a2[4] = &off_1F51F46C0;
    *a2 = v7;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BB32CC()
{
  type metadata accessor for LayeredMediaLayerRenderableProvider();

  return swift_allocObject();
}

void *sub_1D5BB3300@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3DBC8, &protocol descriptor for LayeredMediaVariantFactoryType, 1);
  result = sub_1D725AACC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B541F8(0);
    result = sub_1D725AABC();
    if (result)
    {
      v5 = result;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v7 = MEMORY[0x1EEE9AC00](v6, v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for LayeredMediaVariantFactory();
      v21[3] = v12;
      v21[4] = &off_1F5132ED8;
      v21[0] = v11;
      v13 = type metadata accessor for LayeredMediaLayerProviderFactory();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
      v16 = MEMORY[0x1EEE9AC00](v15, v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_1F5132ED8;
      v14[2] = v20;
      v14[7] = v5;
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v13;
      a2[4] = &protocol witness table for LayeredMediaLayerProviderFactory;
      *a2 = v14;
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

void *sub_1D5BB359C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3D500, &protocol descriptor for LayeredMediaConditionValidatorType, 1);
  result = sub_1D725AACC();
  if (!v26)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3D200, &protocol descriptor for LayeredMediaImageVariantSelectorType, 1);
  result = sub_1D725AACC();
  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D820, &protocol descriptor for LayeredMediaVariantSelectorType, 1);
  result = sub_1D725AACC();
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], 1);
  result = sub_1D725AA8C();
  if (v20)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v4 = MEMORY[0x1EEE9AC00](v3, v3);
    v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_1D5BB7DD0(*v6, *v11, *v16, &v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D5BB3948@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D820, &protocol descriptor for LayeredMediaVariantSelectorType, 1);
  result = sub_1D725AACC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for LayeredMediaVariantSelector();
    v19[3] = v10;
    v19[4] = &off_1F5143A50;
    v19[0] = v9;
    v11 = type metadata accessor for LayeredMediaImageVariantSelector();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_1F5143A50;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_1F51A0330;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BB3C78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], 1);
  result = sub_1D725AA8C();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  if (!v8)
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
    sub_1D5B471E8(&qword_1EDF3BED0, 255, MEMORY[0x1E698AAC8], &protocol conformance descriptor for Tracker);
    sub_1D725E83C();
    swift_allocObject();
    v6 = sub_1D725E81C();
    type metadata accessor for CoverChannelViewRenderer();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    result = sub_1D5B63F14(&v9, v7 + 24);
    *(v7 + 64) = v6;
    *a2 = v7;
    a2[1] = &off_1F51E0590;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB3EA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF439C0, &protocolRef_TSSharedImageCacheType);
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D725D0FC();
    swift_allocObject();
    sub_1D725D0EC();
    sub_1D725D41C();
    swift_allocObject();
    sub_1D725D40C();
    v4 = sub_1D725CA3C();
    swift_allocObject();
    result = sub_1D725CA2C();
    v5 = MEMORY[0x1E69D7580];
    a2[3] = v4;
    a2[4] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BB3FD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1D5B483C4(0, &qword_1EDF3F6B0, &protocol descriptor for FormatImageRendererType, 1);
  result = sub_1D725AACC();
  if (!v159)
  {
    __break(1u);
    goto LABEL_37;
  }

  v146 = v4;
  v139 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v141 = sub_1D5B483C4(0, qword_1EDF3FBE8, &protocol descriptor for FormatMicaRendererType, 1);
  result = sub_1D725AACC();
  if (!v156)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v6 = __swift_mutable_project_boxed_opaque_existential_1(&v158, v159);
  v145 = &v121;
  v7 = MEMORY[0x1EEE9AC00](v6, v6);
  v9 = (&v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v155, v156);
  v144 = &v121;
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = (&v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = *v9;
  v17 = *v14;
  v18 = type metadata accessor for FormatImageRenderer();
  v153 = v18;
  v154 = &off_1F5198910;
  *&v152 = v16;
  v19 = type metadata accessor for FormatMicaRenderer();
  v150 = v19;
  v151 = &off_1F51A2C78;
  v148 = v17;
  type metadata accessor for FormatViewNodeRenderer();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(&v152, v18);
  v22 = *(*(v18 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21, v21);
  v25 = *(v24 + 16);
  v143 = (v24 + 16);
  v142 = v25;
  v25(&v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v150);
  v27 = MEMORY[0x1EEE9AC00](v26, v26);
  v29 = (&v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *(&v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *v29;
  v20[5] = v18;
  v20[6] = &off_1F5198910;
  v20[2] = v31;
  v140 = v19;
  v20[10] = v19;
  v20[11] = &off_1F51A2C78;
  v138 = v20;
  v20[7] = v32;
  __swift_destroy_boxed_opaque_existential_1(&v148);
  __swift_destroy_boxed_opaque_existential_1(&v152);
  __swift_destroy_boxed_opaque_existential_1(&v155);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  v33 = v158;
  if (!v158)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = *(&v158 + 1);
  type metadata accessor for FormatTextNodeRenderer();
  v35 = swift_allocObject();
  v35[2] = v33;
  v35[3] = v34;
  type metadata accessor for FormatComputedContext();
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  *(v36 + 24) = v34;
  v145 = v35;
  v35[4] = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  result = sub_1D725AACC();
  if (!v159)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = __swift_mutable_project_boxed_opaque_existential_1(&v158, v159);
  v38 = MEMORY[0x1EEE9AC00](v37, v37);
  v40 = (&v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40, v38);
  v42 = *v40;
  v156 = v18;
  v157 = &off_1F5198910;
  *&v155 = v42;
  type metadata accessor for FormatImageNodeRenderer();
  v43 = swift_allocObject();
  v44 = __swift_mutable_project_boxed_opaque_existential_1(&v155, v18);
  v45 = MEMORY[0x1EEE9AC00](v44, v44);
  v142(&v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
  v46 = *(&v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43[5] = v18;
  v43[6] = &off_1F5198910;
  v43[2] = v46;
  __swift_destroy_boxed_opaque_existential_1(&v155);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  v47 = v148;
  if (!v148)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v48 = v149;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = sub_1D725A60C();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v50 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3D120, &protocol descriptor for ActivityItemsConfigurationFactoryType, 1);
  result = sub_1D725AACC();
  if (!v159)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v143 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v144 = sub_1D725CAFC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v51 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF36190, &protocol descriptor for FeedDismissingManagerType, 1);
  sub_1D725AACC();
  if (v153)
  {
    sub_1D5B63F14(&v152, &v155);
  }

  else
  {
    v52 = type metadata accessor for EmptyFeedDismissingManager();
    v53 = swift_allocObject();
    v156 = v52;
    v157 = &protocol witness table for EmptyFeedDismissingManager;
    *&v155 = v53;
  }

  type metadata accessor for FormatButtonNodeRenderer();
  v54 = swift_allocObject();
  *(v54 + 2) = v47;
  *(v54 + 3) = v48;
  *(v54 + 4) = v50;
  sub_1D5B63F14(&v158, v54 + 40);
  *(v54 + 10) = v51;
  sub_1D5B63F14(&v155, v54 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  v55 = v158;
  if (!v158)
  {
    goto LABEL_44;
  }

  v56 = *(&v158 + 1);
  type metadata accessor for FormatStateViewNodeRenderer();
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v56;
  type metadata accessor for FormatCustomNodeRenderer();
  v58 = swift_allocObject();
  type metadata accessor for FormatGroupNodeRenderer();
  v59 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebEmbedImageGenerator();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v60 = result;
  v136 = v59;
  v137 = v58;
  v142 = v54;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  v61 = v158;
  if (!v158)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v62 = *(&v158 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v63 = result;
  type metadata accessor for FormatWebEmbedNodeRenderer();
  v64 = swift_allocObject();
  sub_1D5E01E20(0, &unk_1EDF3BAD8, type metadata accessor for WebEmbedViewController, sub_1D5BB60D4, MEMORY[0x1E69D6820]);
  swift_allocObject();
  v64[2] = sub_1D725B4BC();
  v64[3] = v60;
  v64[4] = v61;
  v64[5] = v62;
  v64[6] = v63;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebEmbedManager();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v65 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatAdMetricsNodeRenderer();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v66 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  if (!v159)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v141 = v57;
  v133 = v66;
  v134 = v65;
  v135 = v64;
  v146 = v49;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatRunModeRunner();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v67 = result;
  v68 = __swift_mutable_project_boxed_opaque_existential_1(&v158, v159);
  v69 = MEMORY[0x1EEE9AC00](v68, v68);
  v71 = (&v121 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71, v69);
  v73 = *v71;
  v74 = v140;
  v156 = v140;
  v157 = &off_1F51A2C78;
  *&v155 = v73;
  type metadata accessor for FormatMicaNodeRenderer();
  v75 = swift_allocObject();
  v76 = __swift_mutable_project_boxed_opaque_existential_1(&v155, v74);
  v77 = MEMORY[0x1EEE9AC00](v76, v76);
  v79 = (&v121 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v80 + 16))(v79, v77);
  v81 = *v79;
  v75[5] = v74;
  v75[6] = &off_1F51A2C78;
  v75[2] = v81;
  v75[7] = v67;
  __swift_destroy_boxed_opaque_existential_1(&v155);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatLayeredMediaNodeRenderer();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v82 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatVideoNodeRenderer();
  result = sub_1D725AABC();
  v140 = result;
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatIssueCoverNodeRenderer();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v83 = result;
  type metadata accessor for FormatGroupNodeMaskRenderer();
  v132 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatShareAttributionNodeRenderer();
  result = sub_1D725AABC();
  v131 = result;
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ShareAttributionViewReuseManager();
  result = sub_1D725AABC();
  v130 = result;
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatVideoPlayerNodeRenderer();
  result = sub_1D725AABC();
  v129 = result;
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v128 = v83;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatProgressViewNodeRenderer();
  result = sub_1D725AABC();
  v127 = result;
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  type metadata accessor for FormatPuzzleEmbedNodeRenderer();
  v126 = swift_allocObject();
  sub_1D5B68374(a1, &v158);
  type metadata accessor for FormatPuzzleEmbedViewControllerFactory();
  v84 = swift_allocObject();
  sub_1D5B63F14(&v158, v84 + 16);
  *&v158 = v84;
  sub_1D5BB6CF8(0);
  swift_allocObject();
  v125 = sub_1D725DD5C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v85 = type metadata accessor for FormatSponsoredBannerNodeRenderer();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v159 = v85;
  v160 = &off_1F511BF98;
  *&v158 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  v124 = result;
  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  v86 = v148;
  if (!v148)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v123 = v149;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v87 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v88 = result;
  v146 = v86;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatLayoutResizingProvider();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v89 = result;
  v122 = v82;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatLayoutViewRouter();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v90 = result;
  v121 = v87;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (result)
  {
    v91 = result;
    v92 = __swift_mutable_project_boxed_opaque_existential_1(&v158, v159);
    v144 = &v121;
    v93 = MEMORY[0x1EEE9AC00](v92, v92);
    v95 = (&v121 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v96 + 16))(v95, v93);
    v97 = *v95;
    v156 = v85;
    v157 = &off_1F511BF98;
    *&v155 = v97;
    type metadata accessor for FormatLayoutViewRenderer();
    v98 = swift_allocObject();
    v99 = __swift_mutable_project_boxed_opaque_existential_1(&v155, v85);
    v100 = MEMORY[0x1EEE9AC00](v99, v99);
    v102 = (&v121 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v103 + 16))(v102, v100);
    v104 = *v102;
    v153 = v85;
    v154 = &off_1F511BF98;
    *&v152 = v104;
    swift_unknownObjectWeakInit();
    v98[4] = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for FormatLayoutViewDebugger();
    v105 = swift_allocObject();
    v105[4] = sub_1D5BEE8B4;
    v105[5] = 0;
    v105[6] = sub_1D5BEE8B4;
    v105[7] = 0;
    v105[2] = sub_1D5BEE8B4;
    v105[3] = 0;
    v98[5] = v105;
    type metadata accessor for FormatTimer();
    v106 = swift_allocObject();
    v107 = MEMORY[0x1E69E7CC8];
    *(v106 + 16) = MEMORY[0x1E69E7CC8];
    *(v106 + 24) = v107;
    v98[38] = v106;
    type metadata accessor for FormatVisibilityRenderer();
    v98[39] = swift_allocObject();
    v108 = v145;
    v98[6] = v138;
    v98[7] = v108;
    v109 = v142;
    v98[8] = v143;
    v98[9] = v109;
    v110 = v137;
    v98[10] = v141;
    v98[11] = v110;
    v111 = v135;
    v98[12] = v136;
    v98[13] = v111;
    v112 = v133;
    v98[14] = v134;
    v98[15] = v112;
    v113 = v122;
    v98[16] = v75;
    v98[17] = v113;
    v98[18] = v140;
    type metadata accessor for FormatVideoPlayerViewControllerFactory();
    v147 = swift_allocObject();
    sub_1D5BB71E8(0);
    swift_allocObject();
    v114 = sub_1D725DD5C();
    v115 = v132;
    v98[19] = v128;
    v98[20] = v115;
    v116 = v130;
    v98[21] = v131;
    v98[22] = v116;
    v98[23] = v129;
    v98[24] = v114;
    v117 = v126;
    v98[25] = v127;
    v98[26] = v125;
    v98[27] = v117;
    sub_1D5B63F14(&v152, (v98 + 28));
    v118 = v146;
    v98[33] = v124;
    v98[34] = v118;
    v119 = v121;
    v98[36] = v88;
    v98[37] = v119;
    v98[35] = v123;
    v98[40] = v89;
    v98[41] = v90;
    v98[42] = v91;
    __swift_destroy_boxed_opaque_existential_1(&v155);
    result = __swift_destroy_boxed_opaque_existential_1(&v158);
    v120 = v139;
    *v139 = v98;
    v120[1] = &protocol witness table for FormatLayoutViewRenderer;
    return result;
  }

LABEL_66:
  __break(1u);
  return result;
}

void *sub_1D5BB546C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], 1);
  result = sub_1D725AA8C();
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10, 0x1E69B51C0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  if (v9)
  {
    v7 = type metadata accessor for FormatImageRenderer();
    v8 = swift_allocObject();
    result = sub_1D5B63F14(&v11, (v8 + 2));
    v8[7] = v6;
    v8[8] = v5;
    v8[9] = v9;
    v8[10] = v10;
    a2[3] = v7;
    a2[4] = &off_1F5198910;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB5668@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10, 0x1E69B51C0);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for FormatMicaRenderer();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F51A2C78;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BB57B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF28CF8, &protocol descriptor for ShareLinkProviderType, 1);
  result = sub_1D725AACC();
  if (!v24)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF20E40, &protocol descriptor for MailShareLinkTextProviderType, 1);
  result = sub_1D725AACC();
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType, 1);
  result = sub_1D725AACC();
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType, 1);
  result = sub_1D725AACC();
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType, 1);
  result = sub_1D725AACC();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType, 1);
  result = sub_1D725AACC();
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType, 1);
  sub_1D725AACC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1D725AACC();
  if (v9)
  {
    v5 = type metadata accessor for ActivityItemsConfigurationFactory();
    v6 = swift_allocObject();
    sub_1D5B63F14(&v23, v6 + 16);
    sub_1D5B63F14(&v21, v6 + 56);
    sub_1D5B63F14(&v19, v6 + 96);
    sub_1D5B63F14(&v17, v6 + 136);
    sub_1D5B63F14(&v15, v6 + 176);
    sub_1D5B63F14(&v13, v6 + 216);
    v7 = v11;
    *(v6 + 256) = v10;
    *(v6 + 272) = v7;
    *(v6 + 288) = v12;
    result = sub_1D5B63F14(&v8, v6 + 296);
    a2[3] = v5;
    a2[4] = &protocol witness table for ActivityItemsConfigurationFactory;
    *a2 = v6;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1D5BB5B18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF35958, &protocol descriptor for FeedItemDismissalStorageType, 1);
  result = sub_1D725AACC();
  if (v10)
  {
    v7 = type metadata accessor for FeedDismissingManager();
    v8 = swift_allocObject();
    v8[7] = 0;
    v8[8] = 0;
    v8[9] = MEMORY[0x1E69E7CC0];
    sub_1D725A78C();
    sub_1D725A7BC();
    swift_allocObject();
    v8[10] = sub_1D725A7AC();
    sub_1D5B63F14(&v9, (v8 + 2));
    v8[7] = 0;
    v8[8] = 0;

    a2[3] = v7;
    a2[4] = &protocol witness table for FeedDismissingManager;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BB5C68@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FileBasedDismissalStorage();
  swift_allocObject();
  result = sub_1D5BB5CE4();
  a1[3] = v2;
  a1[4] = &off_1F51A5248;
  *a1 = result;
  return result;
}

void *sub_1D5BB5CE4()
{
  v1 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1D726307C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0xD000000000000015;
  v0[3] = 0x80000001D73DFD40;
  sub_1D5BB5F9C(0);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v0[4] = v10;
  v13[0] = sub_1D5B5DA7C();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8098], v5);
  sub_1D7261AEC();
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B710E8(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v11 = MEMORY[0x1E69E8030];
  sub_1D5B6D3A0(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D5B632D0(&qword_1EDF1AE80, &unk_1EDF1AE90, v11);
  sub_1D7263B6C();
  v0[5] = sub_1D72630BC();
  return v0;
}

void sub_1D5BB5F9C(uint64_t a1)
{
  if (!qword_1EDF1A578)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1D7263E4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A578);
    }
  }
}

void sub_1D5BB60D4(uint64_t a1)
{
  if (!qword_1EDF3C3D0)
  {
    sub_1D5BB6168(255, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3C3D0);
    }
  }
}

void sub_1D5BB6168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *WebEmbedManager.init(resolver:)(__int128 *a1)
{
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for WebEmbedCache();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC8];
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + 24) = v5;
  *(v3 + 64) = 0;
  *(v3 + 32) = xmmword_1D7315D80;
  *(v3 + 48) = 27;
  *(v3 + 56) = 1;
  v1[9] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 64) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = 2;
  *(v6 + 56) = 0;
  v1[10] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 64) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 1;
  *(v7 + 56) = 0;
  v1[11] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 64) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 2;
  *(v8 + 56) = 0;
  v1[12] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 64) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 1;
  *(v9 + 56) = 0;
  v1[13] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 64) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  *(v10 + 32) = 2;
  *(v10 + 56) = 0;
  v1[14] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 64) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = 2;
  *(v11 + 56) = 0;
  v1[15] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;
  *(v12 + 64) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 2;
  *(v12 + 56) = 0;
  v13 = MEMORY[0x1E69E7CD0];
  v1[16] = v12;
  v1[17] = v13;
  v1[18] = v4;
  sub_1D5B63F14(a1, (v1 + 4));
  return v1;
}

void *sub_1D5BB63C0()
{
  type metadata accessor for FormatAdMetricsNodeRenderer();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AdPresentationDelegateProvider();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 1;
  v0[5] = v1;
  return v0;
}

void *sub_1D5BB6438(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB89FC(0, &qword_1EDF3BB70, sub_1D5BB6634, &type metadata for FeedRefreshState, &type metadata for FeedRefreshEvent);
  v1 = sub_1D725AABC();
  type metadata accessor for FormatRunModeRunner();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v2[2] = MEMORY[0x1E69E7CD0];
  v2[3] = v3;
  v2[4] = v3;
  if (v1)
  {
    sub_1D5BC624C(0);
    swift_allocObject();

    sub_1D725B59C();
    swift_allocObject();
    swift_weakInit();
    sub_1D725B5BC();

    sub_1D725AB0C();
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = qword_1EDF1A9C8;

  if (v5 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v2 selector:sel_debugClearRunModeCache name:qword_1EDFFC808 object:0];

  return v2;
}

unint64_t sub_1D5BB6634()
{
  result = qword_1EDF39098[0];
  if (!qword_1EDF39098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF39098);
  }

  return result;
}

uint64_t sub_1D5BB66AC(uint64_t a1, __int128 *a2)
{
  v14 = a1;
  v15 = a2;
  v13 = sub_1D726307C();
  v3 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  sub_1D7261AFC();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5B70FC8(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D5B6D220(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D5B71208();
  sub_1D7263B6C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  *(v2 + 64) = sub_1D72630BC();
  v11 = v15;
  *(v2 + 16) = v14;
  sub_1D5B63F14(v11, v2 + 24);
  return v2;
}

void sub_1D5BB6930(uint64_t a1)
{
  if (!qword_1EDF3B590)
  {
    type metadata accessor for ShareAttributionViewReuseFactory();
    sub_1D5B471E8(qword_1EDF1EAE8, 255, type metadata accessor for ShareAttributionViewReuseFactory, &protocol conformance descriptor for ShareAttributionViewReuseFactory);
    v1 = sub_1D725DD7C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B590);
    }
  }
}

void *sub_1D5BB69C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3F6B0, &protocol descriptor for FormatImageRendererType, 1);
  result = sub_1D725AACC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, qword_1EDF3D518, &protocol descriptor for FormatVideoPlayerReuseManagerType, 0);
    result = sub_1D725AACC();
    v3 = v20;
    if (v20)
    {
      v4 = v21;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v6 = MEMORY[0x1EEE9AC00](v5, v5);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for FormatImageRenderer();
      v19[3] = v11;
      v19[4] = &off_1F5198910;
      v19[0] = v10;
      type metadata accessor for FormatVideoPlayerNodeRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      v14 = MEMORY[0x1EEE9AC00](v13, v13);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16, v14);
      v18 = *v16;
      v12[5] = v11;
      v12[6] = &off_1F5198910;
      v12[2] = v18;
      v12[7] = v3;
      v12[8] = v4;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D5BB6C40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  if (v2)
  {
    type metadata accessor for FormatProgressViewNodeRenderer();
    result = swift_allocObject();
    result[2] = v2;
    result[3] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5BB6CF8(uint64_t a1)
{
  if (!qword_1EDF3B588)
  {
    type metadata accessor for FormatPuzzleEmbedViewControllerFactory();
    sub_1D5B471E8(qword_1EDF1CAB0, 255, type metadata accessor for FormatPuzzleEmbedViewControllerFactory, &unk_1D7287498);
    v1 = sub_1D725DD7C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B588);
    }
  }
}

uint64_t sub_1D5BB6D90()
{
  type metadata accessor for FormatSponsoredBannerNodeRenderer();

  return swift_allocObject();
}

void *sub_1D5BB6DC4()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0, v1);
  type metadata accessor for FormatLayoutResizingProvider();
  v2 = swift_allocObject();
  sub_1D5B85F00(&qword_1EDF3BDF0, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  v3 = MEMORY[0x1E69D6388];
  sub_1D5BB6F50(0, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D5BB82E8(&qword_1EDF1B5C0, &qword_1EDF1B5D0, v3);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v4 = sub_1D725A7AC();
  v5 = MEMORY[0x1E69E7CC8];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

void sub_1D5BB6F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB6FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D5BB7018(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D725AACC();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D725A60C();
    result = sub_1D725AABC();
    if (result)
    {
      v3 = result;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D5B483C4(0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, 1);
      sub_1D725AACC();
      type metadata accessor for FormatLayoutViewRouter();
      result = swift_allocObject();
      result[2] = v7;
      result[3] = v8;
      result[4] = v3;
      *(result + 5) = v4;
      *(result + 7) = v5;
      result[9] = v6;
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

void sub_1D5BB71E8(uint64_t a1)
{
  if (!qword_1EDF3B578)
  {
    type metadata accessor for FormatVideoPlayerViewControllerFactory();
    sub_1D5B471E8(&qword_1EDF1C9E0, 255, type metadata accessor for FormatVideoPlayerViewControllerFactory, &unk_1D7391F38);
    v1 = sub_1D725DD7C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B578);
    }
  }
}

void *sub_1D5BB72F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3A9D0, MEMORY[0x1E69B41B8], 1);
  result = sub_1D725AACC();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FFB0, &protocol descriptor for HeadlineServiceType, 1);
  result = sub_1D725AACC();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3AA98, MEMORY[0x1E69B3E78], 1);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B47230(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B485E4(0);
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for NativeAdService();
    v8 = swift_allocObject();
    v8[19] = MEMORY[0x1E69E7CC8];
    sub_1D5B63F14(&v13, (v8 + 2));
    sub_1D5B63F14(&v11, (v8 + 7));
    result = sub_1D5B63F14(&v9, (v8 + 12));
    v8[17] = v5;
    v8[18] = v6;
    a2[3] = v7;
    a2[4] = &protocol witness table for NativeAdService;
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D5BB74EC(uint64_t a1)
{
  if (!qword_1EDF3A950)
  {
    sub_1D726067C();
    sub_1D72607CC();
    sub_1D5B48988(&qword_1EDF43968, 255, MEMORY[0x1E69B3FF0], MEMORY[0x1E69B3FE8]);
    v1 = sub_1D7260D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3A950);
    }
  }
}

uint64_t sub_1D5BB75AC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C2D8 = result;
  return result;
}

void *sub_1D5BB77DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EF98, &protocol descriptor for IssueCoverViewStylerType, 1);
  result = sub_1D725AACC();
  if (!v29)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], 1);
  result = sub_1D725AA8C();
  if (!v27)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewProvider();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D1F8, &protocol descriptor for LayeredMediaLayerProviderFactoryType, 1);
  result = sub_1D725AACC();
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewRenderer();
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for IssueCoverViewStyler();
    v23[3] = v13;
    v23[4] = &off_1F51F46C0;
    v23[0] = v12;
    v14 = type metadata accessor for IssueCoverViewRenderer();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v13);
    v17 = MEMORY[0x1EEE9AC00](v16, v16);
    v19 = (&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    *(v15 + 80) = v13;
    *(v15 + 88) = &off_1F51F46C0;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    *(v15 + 56) = v21;
    sub_1D5B63F14(&v26, v15 + 96);
    *(v15 + 136) = v5;
    sub_1D5B63F14(&v24, v15 + 144);
    *(v15 + 184) = v6;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    a2[3] = v14;
    a2[4] = &off_1F511CE08;
    *a2 = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D5BB7B68()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.9 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.1 alpha:1.0];
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.1];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
  v6 = [v2 ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

  qword_1EDF27BE8 = v0;
  unk_1EDF27BF0 = v1;
  qword_1EDF27BF8 = v3;
  unk_1EDF27C00 = v6;
}

void *sub_1D5BB7CD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FCE8, &protocol descriptor for AssetHandleFactoryType, 1);
  result = sub_1D725AACC();
  if (v7)
  {
    v4 = type metadata accessor for LayeredMediaVariantFactory();
    v5 = swift_allocObject();
    result = sub_1D5B63F14(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F5132ED8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BB7D8C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_1D5BB7DD0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = type metadata accessor for LayeredMediaConditionValidator();
  v38[3] = v8;
  v38[4] = &off_1F51D4218;
  v38[0] = a1;
  v9 = type metadata accessor for LayeredMediaImageVariantSelector();
  v36 = v9;
  v37 = &off_1F51A0330;
  v35[0] = a2;
  v10 = type metadata accessor for LayeredMediaVariantSelector();
  v33 = v10;
  v34 = &off_1F5143A50;
  v32[0] = a3;
  type metadata accessor for LayeredMediaLayerRenderer();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v38, v8);
  v13 = MEMORY[0x1EEE9AC00](v12, v12);
  v15 = (&v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v18 = MEMORY[0x1EEE9AC00](v17, v17);
  v20 = (&v32[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v23 = MEMORY[0x1EEE9AC00](v22, v22);
  v25 = (&v32[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v27 = *v15;
  v28 = *v20;
  v29 = *v25;
  v11[5] = v8;
  v11[6] = &off_1F51D4218;
  v11[2] = v27;
  v11[10] = v9;
  v11[11] = &off_1F51A0330;
  v11[12] = v29;
  v11[7] = v28;
  v11[15] = v10;
  v11[16] = &off_1F5143A50;
  sub_1D5B63F14(a4, (v11 + 17));
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v11;
}

uint64_t sub_1D5BB80B4()
{
  result = sub_1D726203C();
  qword_1EDFFC808 = result;
  return result;
}

uint64_t sub_1D5BB80EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewRenderer();
  result = sub_1D725AABC();
  if (result)
  {
    v2 = result;
    type metadata accessor for FormatLayeredMediaNodeRenderer();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0;
    *(result + 56) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BB8164(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10, 0x1E69B51C0);
  result = sub_1D725AABC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], 1);
    result = sub_1D725AA8C();
    if (v5)
    {
      type metadata accessor for FormatVideoNodeRenderer();
      swift_allocObject();
      return sub_1D5BB66AC(v3, &v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BB82E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5BB6F50(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D5BB834C(void *a1)
{
  v2 = sub_1D726076C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3AA98, MEMORY[0x1E69B3E78], 1);
  result = sub_1D725AACC();
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB96DC(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3A9A0, MEMORY[0x1E69B4268], 1);
  result = sub_1D725AACC();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48C54(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EC895588, MEMORY[0x1E69B41A0], 1);
  result = sub_1D725AACC();
  if (v5)
  {
    sub_1D726075C();
    sub_1D5B48420(0);
    swift_allocObject();
    return sub_1D726099C();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1D5BB85F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], 1);
  result = sub_1D725AA8C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AA8C();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for HeadlineViewRenderer();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for AdPresentationDelegateProvider();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v7 + 24) = 1;
    *(v6 + 24) = v7;
    sub_1D5B63F14(&v10, v6 + 32);
    result = sub_1D5B63F14(&v8, v6 + 72);
    *(v6 + 112) = v5;
    *a2 = v6;
    a2[1] = &off_1F51B25D8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB87C8()
{
  type metadata accessor for FeedItemDebugColors();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = 0;
  qword_1EDFFCF70 = result;
  return result;
}

uint64_t sub_1D5BB88B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7 = sub_1D5B5A498(0, &qword_1EDF1A680, 0x1E696AAE8);
  v8 = MEMORY[0x1E69D88C0];
  *&v6 = v2;
  v3 = type metadata accessor for LayeredMediaConditionValidator();
  v4 = swift_allocObject();
  result = sub_1D5B63F14(&v6, v4 + 16);
  a1[3] = v3;
  a1[4] = &off_1F51D4218;
  *a1 = v4;
  return result;
}

uint64_t sub_1D5BB898C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void sub_1D5BB89FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = sub_1D725AB7C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5BB8A88()
{
  type metadata accessor for FormatVideoPlayerReuseManagerCache();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EDFFC8D8 = result;
  return result;
}

uint64_t sub_1D5BB8B08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48C54(0);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for FeedBannerAdFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F51E0E08;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BB8C28@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D725AACC();
  if (v13)
  {
    v10 = a2(0);
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    result = sub_1D5B63F14(&v12, v11 + 24);
    a4[3] = v10;
    a4[4] = a3;
    *a4 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5BB8CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EC895990, &type metadata for EngagementBannerViewStyle, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = a1 + 48; ; i += 72)
    {
      v23 = v1;
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i + 8);
      v9 = *(i + 16);
      v10 = *(i + 24);
      v11 = *(i + 32);
      v24 = *(i + 40);
      v12 = *(i + 48);
      v13 = v12;

      v14 = v7;
      v15 = v8;
      result = sub_1D5B69D90(v5, v6);
      if (v17)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v3[6] + 16 * result);
      *v18 = v5;
      v18[1] = v6;
      v19 = v3[7] + 56 * result;
      *v19 = v7;
      *(v19 + 8) = v8;
      *(v19 + 16) = v9;
      *(v19 + 24) = v10;
      *(v19 + 32) = v11;
      *(v19 + 40) = v24;
      *(v19 + 48) = v12;
      v20 = v3[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v3[2] = v22;
      v1 = v23 - 1;
      if (v23 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D5BB8E70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48420(0);
  result = sub_1D725AABC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF42900, &protocol descriptor for FeedBannerAdRequesterType, 1);
    result = sub_1D725AACC();
    if (v6)
    {
      type metadata accessor for FeedItemPrefetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      sub_1D5B63F14(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BB8F58(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v14 = sub_1D726307C();
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1D5B5DA7C();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1D7261B1C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D5B73758(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D5B631E8(0);
  sub_1D5B73758(&qword_1EDF1AE80, sub_1D5B631E8, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v14);
  *(v2 + 40) = sub_1D72630BC();
  sub_1D5BB922C();
  swift_allocObject();
  *(v2 + 48) = sub_1D725AC8C();
  *(v2 + 56) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  v17 = 0;
  sub_1D5BBA394();
  swift_allocObject();
  *(v2 + 104) = sub_1D725B94C();
  v11 = v16;
  *(v2 + 32) = v15;
  *(v2 + 64) = v11;
  return v2;
}

void sub_1D5BB922C()
{
  if (!qword_1EDF3BB58)
  {
    v0 = sub_1D725AC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BB58);
    }
  }
}

void *sub_1D5BB9284@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7260CAC();
  result = sub_1D725AA7C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF43900, MEMORY[0x1E69B4398], 1);
    result = sub_1D725AA8C();
    if (v7)
    {
      v5 = sub_1D7260BEC();
      swift_allocObject();
      result = sub_1D7260BDC();
      v6 = MEMORY[0x1E69B42E8];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
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

uint64_t sub_1D5BB93E0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &qword_1EDF1ABF0, 0x1E69DCEF8);
  sub_1D72621FC();
  v6 = sub_1D725AA7C();

  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D5B483C4(0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40], 1);
    *(swift_allocObject() + 16) = v6;
    v8 = v6;
    sub_1D725AAAC();

    swift_beginAccess();
    sub_1D5BBA640(v9, v5 + 16);
    return swift_endAccess();
  }

  return result;
}

void sub_1D5BB95B0(uint64_t a1)
{
  if (!qword_1EDF3B4E0)
  {
    sub_1D725E94C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B4E0);
    }
  }
}

uint64_t sub_1D5BB9608(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GapView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BB9648(uint64_t a1)
{
  if (!qword_1EDF3B600)
  {
    type metadata accessor for GapOfflineView();
    sub_1D5BBADA4(&qword_1EDF31C90, type metadata accessor for GapOfflineView, &protocol conformance descriptor for GapOfflineView);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B600);
    }
  }
}

void sub_1D5BB96DC(uint64_t a1)
{
  if (!qword_1EDF3AA60)
  {
    sub_1D72609CC();
    sub_1D7260A9C();
    sub_1D5B48988(&qword_1EDF43930, 255, MEMORY[0x1E69B41B0], MEMORY[0x1E69B41A8]);
    v1 = sub_1D726050C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3AA60);
    }
  }
}

uint64_t sub_1D5BB979C(uint64_t a1, uint64_t a2)
{
  sub_1D5BB1738(0);
  sub_1D725B52C();

  type metadata accessor for FeedBannerAdRequester();

  sub_1D725B52C();

  sub_1D725A6FC();

  sub_1D7260CAC();
  sub_1D725B52C();

  sub_1D5BB96DC(0);
  sub_1D725B52C();
}

void *sub_1D5BB992C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FCD8, &protocol descriptor for CategoryViewStylerType, 1);
  result = sub_1D725AACC();
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], 1);
  result = sub_1D725AA8C();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF40840, &protocol descriptor for OfflineProviding, 1);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1D725AACC();
  if (v8)
  {
    v5 = type metadata accessor for CategoryViewRenderer();
    v6 = swift_allocObject();
    *(v6 + 176) = 0;
    *(v6 + 184) = 1;
    sub_1D5B63F14(&v13, v6 + 16);
    sub_1D5B63F14(&v11, v6 + 56);
    sub_1D5B63F14(&v9, v6 + 96);
    result = sub_1D5B63F14(&v7, v6 + 136);
    a2[3] = v5;
    a2[4] = &protocol witness table for CategoryViewRenderer;
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB9B94()
{
  sub_1D5B49474(0, qword_1EDF20A88, &protocol descriptor for EngagementBannerViewStylerType);
  sub_1D725B53C();
}

void *sub_1D5BB9C4C@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D725AACC();
  if (!v11[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E5E0, &protocol descriptor for FormatLayoutViewRendererType, 0);
  result = sub_1D725AACC();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3DED8, &protocol descriptor for InternalErrorViewRendererType, 0);
  result = sub_1D725AACC();
  if (v7)
  {
    v5 = type metadata accessor for FeedItemSupplementaryRenderer();
    swift_allocObject();
    v6 = sub_1D5BBA0C4(v11, v9, v10, v7, v8);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    a2[3] = v5;
    a2[4] = &protocol witness table for FeedItemSupplementaryRenderer;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D5BB9DE0@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B53C80(0, &qword_1EDF1B4D8, &qword_1EDF37780, &protocol descriptor for FeedGroupDebuggerType, MEMORY[0x1E69E62F8]);
    sub_1D725AACC();
    if (qword_1EDF43B30 != -1)
    {
      swift_once();
    }

    sub_1D5B471E8(qword_1EDF2FA10, v7, type metadata accessor for RendererAssembly, &unk_1D72745D4);
    sub_1D725964C();
    if (v11 > 3u)
    {
      if (v11 > 5u)
      {
        v8 = 0xE500000000000000;
        if (v11 == 6)
        {
          v9 = 0x316F6D6564;
        }

        else
        {
          v9 = 0x326F6D6564;
        }
      }

      else if (v11 == 4)
      {
        v8 = 0xE500000000000000;
        v9 = 0x6C65766564;
      }

      else
      {
        v8 = 0xE700000000000000;
        v9 = 0x786F62646E6173;
      }
    }

    else if (v11 > 1u)
    {
      if (v11 == 2)
      {
        v8 = 0xE200000000000000;
        v9 = 24945;
      }

      else
      {
        v8 = 0xE400000000000000;
        v9 = 1953719668;
      }
    }

    else if (v11)
    {
      v8 = 0xE700000000000000;
      v9 = 0x676E6967617473;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
      v9 = 0x69746375646F7270;
    }

    type metadata accessor for InternalErrorViewRenderer();
    result = swift_allocObject();
    v10 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v10 = v12;
    }

    result[2] = v6;
    result[3] = v10;
    result[4] = v9;
    result[5] = v8;
    *a3 = result;
    a3[1] = &off_1F51A1BD0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1D5BBA0C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = MEMORY[0x1E69E7CD0];
  *(v5 + 88) = MEMORY[0x1E69E7CD0];
  *(v5 + 96) = v11;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  sub_1D5B68374(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  v12 = qword_1EDF3C2D0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v12 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_1D5BB1B68(qword_1EDF35830, v13, type metadata accessor for FeedItemSupplementaryRenderer, &protocol conformance descriptor for FeedItemSupplementaryRenderer);
  sub_1D725965C();

  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v5 + 104) = v15;
  return v5;
}

uint64_t sub_1D5BBA248()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5BBA280@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for FeedBannerAdRequester();
  result = sub_1D725AABC();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &protocol witness table for FeedBannerAdRequester;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBA2F4(void *a1, uint64_t a2)
{
  v3 = sub_1D5BB1BB0(a2, a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB1738(0);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for FeedBannerAdRequester();
    swift_allocObject();
    return sub_1D5BB8F58(v5, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5BBA394()
{
  if (!qword_1EDF3B9E0)
  {
    v0 = sub_1D725B98C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B9E0);
    }
  }
}

void *sub_1D5BBA408(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF3BAC8, MEMORY[0x1E69D68B0], 1);
  result = sub_1D725AACC();
  if (v4)
  {
    sub_1D5B63F14(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1D5B471E8(qword_1EDF25D98, 255, type metadata accessor for FormatLayoutViewRenderer, &protocol conformance descriptor for FormatLayoutViewRenderer);
    sub_1D725B54C();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBA54C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1ABF0, 0x1E69DCEF8);
  sub_1D72621FC();
  sub_1D725A86C();
}

uint64_t sub_1D5BBA604()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BBA640(uint64_t a1, uint64_t a2)
{
  sub_1D5B53C80(0, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5BBA6D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, qword_1EDF36588, &protocol descriptor for FeedNativeAdIntegrating, 0);
  sub_1D725AACC();
  *(v2 + 16) = v4;
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for FormatMicaSectionDecorationItem(uint64_t a1)
{
  result = qword_1EDF1F958;
  if (!qword_1EDF1F958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1D5BBA7A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FFA8, &protocol descriptor for NativeAdServiceType, 1);
  result = sub_1D725AACC();
  if (v12)
  {
    v7 = type metadata accessor for FeedNativeAdManager();
    v8 = swift_allocObject();
    *(v8 + 64) = MEMORY[0x1E69E7CC0];
    sub_1D725A78C();
    sub_1D725A7BC();
    swift_allocObject();
    v9 = sub_1D725A7AC();
    v10 = MEMORY[0x1E69E7CD0];
    *(v8 + 72) = v9;
    *(v8 + 80) = v10;
    *(v8 + 88) = 0;
    result = sub_1D5B63F14(&v11, v8 + 16);
    *(v8 + 56) = 0;
    a2[3] = v7;
    a2[4] = &protocol witness table for FeedNativeAdManager;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BBA8F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedBannerAdRequester();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedPrerollAdRequester();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF429C0, &protocol descriptor for FeedNativeAdManagerType, 1);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7260CAC();
  result = sub_1D725AA7C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40], 1);
  result = sub_1D725AACC();
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48C54(0);
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    type metadata accessor for FeedAdPipelineProcessor();
    v7 = swift_allocObject();
    v7[3] = 0;
    swift_unknownObjectWeakInit();
    v7[4] = v3;
    v7[5] = v4;
    sub_1D5B63F14(&v10, (v7 + 6));
    v7[11] = v5;
    sub_1D5B63F14(&v8, (v7 + 12));
    v7[17] = v6;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

Swift::Void __swiftcall FeedItemRenderer.register(view:)(UICollectionView *view)
{
  sub_1D5BB032C(0, &qword_1EDF3B5B8, &qword_1EDF33570, MEMORY[0x1E69D8868], qword_1EDF33578);
  sub_1D7262FAC();
  sub_1D5BB032C(0, &qword_1EDF3B5B0, &qword_1EDF33558, type metadata accessor for VideoView, &unk_1EDF33560);
  sub_1D7262FAC();
  sub_1D5BBACEC(0);
  sub_1D7262FAC();
  sub_1D5BB9648(0);
  sub_1D7262FAC();
  sub_1D5BBAEB8(0);
  sub_1D7262FAC();
  sub_1D5BBAFE4(0);
  sub_1D7262FAC();
  sub_1D5BBB110(0);
  sub_1D7262FAC();
  sub_1D5BBB23C(0);
  sub_1D7262FAC();
  sub_1D5BBB368(0);
  sub_1D7262FAC();
  sub_1D5BBB3D0(0);
  sub_1D7262FAC();
  sub_1D5BBB4FC(0);
  sub_1D7262FAC();
  *(v1 + 448) = sub_1D7262F5C();
}

void sub_1D5BBACEC(uint64_t a1)
{
  if (!qword_1EDF3B5D0)
  {
    type metadata accessor for GapView();
    sub_1D5BBADA4(&qword_1EDF1BB58, type metadata accessor for GapView, &protocol conformance descriptor for GapView);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B5D0);
    }
  }
}

uint64_t sub_1D5BBADA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5BBAE78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GapOfflineView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBAEB8(uint64_t a1)
{
  if (!qword_1EDF3B5A0)
  {
    type metadata accessor for FeedBannerAdView();
    sub_1D5BBADA4(&qword_1EDF394C0, type metadata accessor for FeedBannerAdView, &protocol conformance descriptor for FeedBannerAdView);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B5A0);
    }
  }
}

uint64_t sub_1D5BBAF70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeedBannerAdView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBAFE4(uint64_t a1)
{
  if (!qword_1EDF3B5C0)
  {
    type metadata accessor for CategoryView();
    sub_1D5BBADA4(&qword_1EDF33BC8, type metadata accessor for CategoryView, &protocol conformance descriptor for CategoryView);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B5C0);
    }
  }
}

uint64_t sub_1D5BBB0D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CategoryView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBB110(uint64_t a1)
{
  if (!qword_1EDF3B608)
  {
    type metadata accessor for CoverIssueView();
    sub_1D5BBADA4(&qword_1EDF329B0, type metadata accessor for CoverIssueView, &protocol conformance descriptor for CoverIssueView);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B608);
    }
  }
}

uint64_t sub_1D5BBB1FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoverIssueView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBB23C(uint64_t a1)
{
  if (!qword_1EDF3B5F8)
  {
    type metadata accessor for CoverChannelView();
    sub_1D5BBADA4(&qword_1EDF30BF0, type metadata accessor for CoverChannelView, &protocol conformance descriptor for CoverChannelView);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B5F8);
    }
  }
}

uint64_t sub_1D5BBB2F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoverChannelView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBB368(uint64_t a1)
{
  if (!qword_1EDF3B808)
  {
    sub_1D5B5A498(255, &qword_1EDF1AA80, 0x1E69DD258);
    v1 = sub_1D725C95C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B808);
    }
  }
}

void sub_1D5BBB3D0(uint64_t a1)
{
  if (!qword_1EDF3B5E0)
  {
    type metadata accessor for EngagementBannerView();
    sub_1D5BBADA4(&unk_1EDF2B6B8, type metadata accessor for EngagementBannerView, &protocol conformance descriptor for EngagementBannerView);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B5E0);
    }
  }
}

uint64_t sub_1D5BBB4BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EngagementBannerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBB4FC(uint64_t a1)
{
  if (!qword_1EDF3B5E8)
  {
    type metadata accessor for FormatLayoutView(255);
    sub_1D5BBADA4(&unk_1EDF30340, type metadata accessor for FormatLayoutView, &protocol conformance descriptor for FormatLayoutView);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B5E8);
    }
  }
}

uint64_t type metadata accessor for FormatLayoutView(uint64_t a1)
{
  result = qword_1EDF30328;
  if (!qword_1EDF30328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BBB5DC(uint64_t a1)
{
  sub_1D5BB160C(319, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D5BBB700(uint64_t a1)
{
  result = type metadata accessor for FeedBannerAd(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedHeadline(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FeedWebEmbed(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FeedCustomItem(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for FeedEngagementBanner(319);
          if (v6 <= 0x3F)
          {
            result = sub_1D725CC1C();
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for FeedRecipe(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for FeedPuzzleStatistic(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5BBB890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5BBB8D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D5BBB934()
{
  v1 = sub_1D725EF8C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D5BBBAC8(0);
  v7 = *(v2 + 104);
  v7(v5, *MEMORY[0x1E69D8470], v1);
  sub_1D7262F9C();
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_1D5BBBB28(0);
  v7(v5, *MEMORY[0x1E69D8478], v1);
  sub_1D7262F9C();
  v8(v5, v1);
  *(v6 + 112) = sub_1D7262F5C();
}

void sub_1D5BBBAC8(uint64_t a1)
{
  if (!qword_1EDF3B500)
  {
    sub_1D725CFFC();
    v1 = sub_1D725E2EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B500);
    }
  }
}

void sub_1D5BBBB28(uint64_t a1)
{
  if (!qword_1EDF3B508)
  {
    type metadata accessor for InternalErrorView();
    sub_1D5BB1B68(&qword_1EDF2EC08, 255, type metadata accessor for InternalErrorView, &protocol conformance descriptor for InternalErrorView);
    v1 = sub_1D725E2EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B508);
    }
  }
}

uint64_t sub_1D5BBBC18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIColor __swiftcall UIColor.init(hex:)(Swift::String hex)
{
  v1 = sub_1D5BBC164(hex._countAndFlagsBits, hex._object);
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  v6 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_90;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    sub_1D5FD15E0(v1, v3, 16);
    LODWORD(v1) = v31;
    v27 = v32;
    goto LABEL_89;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    aBlock = v1;
    v34 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v1 = 0;
          v19 = &aBlock + 1;
          while (1)
          {
            v20 = *v19;
            v21 = v20 - 48;
            if ((v20 - 48) >= 0xA)
            {
              if ((v20 - 65) < 6)
              {
                v21 = v20 - 55;
              }

              else
              {
                if ((v20 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v21 = v20 - 87;
              }
            }

            if ((v1 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v12 = __OFADD__(16 * v1, v21);
            v1 = 16 * v1 + v21;
            if (v12)
            {
              break;
            }

            ++v19;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }

LABEL_98:
      __break(1u);
      return result;
    }

    if (v1 != 45)
    {
      if (v5)
      {
        v1 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v25 = *p_aBlock;
          v26 = v25 - 48;
          if ((v25 - 48) >= 0xA)
          {
            if ((v25 - 65) < 6)
            {
              v26 = v25 - 55;
            }

            else
            {
              if ((v25 - 97) > 5)
              {
                goto LABEL_87;
              }

              v26 = v25 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFADD__(16 * v1, v26);
          v1 = 16 * v1 + v26;
          if (v12)
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v5)
    {
      if (--v5)
      {
        v1 = 0;
        v13 = &aBlock + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 6)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 5)
              {
                goto LABEL_87;
              }

              v15 = v14 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFSUB__(16 * v1, v15);
          v1 = 16 * v1 - v15;
          if (v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    result.super.isa = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result.super.isa = sub_1D7263E5C();
  }

  v8 = *result.super.isa;
  if (v8 == 43)
  {
    if (v6 < 1)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v5 = v6 - 1;
    if (v6 != 1)
    {
      if (result.super.isa)
      {
        v1 = 0;
        v16 = result.super.isa + 1;
        while (1)
        {
          v17 = *v16;
          v18 = v17 - 48;
          if ((v17 - 48) >= 0xA)
          {
            if ((v17 - 65) < 6)
            {
              v18 = v17 - 55;
            }

            else
            {
              if ((v17 - 97) > 5)
              {
                goto LABEL_87;
              }

              v18 = v17 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_87;
          }

          v12 = __OFADD__(16 * v1, v18);
          v1 = 16 * v1 + v18;
          if (v12)
          {
            goto LABEL_87;
          }

          ++v16;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_87:
    LODWORD(v1) = 0;
    LOBYTE(v5) = 1;
    goto LABEL_88;
  }

  if (v8 != 45)
  {
    if (v6)
    {
      if (result.super.isa)
      {
        v1 = 0;
        while (1)
        {
          v22 = *result.super.isa;
          v23 = v22 - 48;
          if ((v22 - 48) >= 0xA)
          {
            if ((v22 - 65) < 6)
            {
              v23 = v22 - 55;
            }

            else
            {
              if ((v22 - 97) > 5)
              {
                goto LABEL_87;
              }

              v23 = v22 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_87;
          }

          v12 = __OFADD__(16 * v1, v23);
          v1 = 16 * v1 + v23;
          if (v12)
          {
            goto LABEL_87;
          }

          ++result.super.isa;
          if (!--v6)
          {
            LOBYTE(v5) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_87;
  }

  if (v6 < 1)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v5 = v6 - 1;
  if (v6 == 1)
  {
    goto LABEL_87;
  }

  if (result.super.isa)
  {
    v1 = 0;
    v9 = result.super.isa + 1;
    while (1)
    {
      v10 = *v9;
      v11 = v10 - 48;
      if ((v10 - 48) >= 0xA)
      {
        if ((v10 - 65) < 6)
        {
          v11 = v10 - 55;
        }

        else
        {
          if ((v10 - 97) > 5)
          {
            goto LABEL_87;
          }

          v11 = v10 - 87;
        }
      }

      if ((v1 - 0x800000000000000) >> 60 != 15)
      {
        goto LABEL_87;
      }

      v12 = __OFSUB__(16 * v1, v11);
      v1 = 16 * v1 - v11;
      if (v12)
      {
        goto LABEL_87;
      }

      ++v9;
      if (!--v5)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_75:
  LODWORD(v1) = 0;
  LOBYTE(v5) = 0;
LABEL_88:
  v39 = v5;
  v27 = v5;
LABEL_89:

  if (v27)
  {
LABEL_90:
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v37 = sub_1D68C0480;
    v38 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1D6E0CD34;
    v36 = &block_descriptor_52;
    v29 = _Block_copy(&aBlock);
    v30 = [v28 initWithDynamicProvider_];
    _Block_release(v29);
    return v30;
  }

  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:BYTE3(v1) / 255.0 green:BYTE2(v1) / 255.0 blue:BYTE1(v1) / 255.0 alpha:v1 / 255.0];
}

uint64_t sub_1D5BBC164(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D726230C();

  if (v4)
  {
    v5 = sub_1D5FD24A4(1uLL, a1, a2);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    a1 = MEMORY[0x1DA6F97E0](v5, v7, v9, v11);
  }

  if (sub_1D726221C() != 8)
  {
    if (sub_1D726221C() == 6)
    {
      v13 = a1;
    }

    else
    {
      if (sub_1D726221C() == 4)
      {
        sub_1D726225C();
        sub_1D726233C();
        sub_1D726225C();
        sub_1D726233C();
        sub_1D726225C();
        sub_1D726233C();
        sub_1D726225C();
        sub_1D726233C();

        v13 = 0;
        sub_1D7263D4C();
        sub_1D7261EDC();
        sub_1D7261EDC();

        sub_1D7261EDC();
        sub_1D7261EDC();

        sub_1D7261EDC();
        sub_1D7261EDC();

        sub_1D7261EDC();
        sub_1D7261EDC();

        return v13;
      }

      if (sub_1D726221C() != 3)
      {
        return a1;
      }

      sub_1D726225C();
      sub_1D726233C();
      sub_1D726225C();
      sub_1D726233C();
      sub_1D726225C();
      sub_1D726233C();

      v13 = 0;
      sub_1D7261EDC();
      sub_1D7261EDC();

      sub_1D7261EDC();
      sub_1D7261EDC();

      sub_1D7261EDC();
      sub_1D7261EDC();
    }

    MEMORY[0x1DA6F9910](17990, 0xE200000000000000);
    return v13;
  }

  return a1;
}

uint64_t sub_1D5BBC58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5BBC604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SharingActivityProviderFactoryWithTracker.init(tracker:factory:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1D5B63F14(a2, v2 + 24);
  return v2;
}

uint64_t sub_1D5BBC68C(void *a1, void *a2)
{
  v4 = sub_1D726095C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5BBDE04();
  result = sub_1D725AABC();
  if (result)
  {
    v10 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *(swift_allocObject() + 16) = v10;
    v13 = sub_1D7260ABC();
    v14 = MEMORY[0x1E69B4200];
    __swift_allocate_boxed_opaque_existential_1(v12);
    swift_unknownObjectRetain();
    sub_1D7260AAC();
    sub_1D7260C7C();
    __swift_destroy_boxed_opaque_existential_1(v12);
    *(swift_allocObject() + 16) = v10;
    (*(v5 + 104))(v8, *MEMORY[0x1E69B4128], v4);
    v13 = sub_1D7260B4C();
    v14 = MEMORY[0x1E69B4288];
    __swift_allocate_boxed_opaque_existential_1(v12);
    swift_unknownObjectRetain();
    sub_1D7260B3C();
    sub_1D7260C7C();
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = sub_1D72606CC();
    v14 = MEMORY[0x1E69B4030];
    __swift_allocate_boxed_opaque_existential_1(v12);
    sub_1D72606BC();
    sub_1D7260C7C();
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = sub_1D7260B7C();
    v14 = MEMORY[0x1E69B42C0];
    __swift_allocate_boxed_opaque_existential_1(v12);
    sub_1D7260B6C();
    sub_1D7260C7C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBC944()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_1D5BBC980@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF402D0, &protocol descriptor for FontBookFactoryType, 1);
  result = sub_1D725AACC();
  if (!v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D725AACC();
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for CategoryViewLayoutAttributesFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  v6 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7260CBC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaRenderedViewModelFactory();
  result = sub_1D725AABC();
  if (result)
  {
    v9 = result;
    type metadata accessor for FeedLayoutAttributesFactoryProvider();
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v8;
    v10[6] = v9;
    v11 = type metadata accessor for FeedLayoutContextFactory();
    v12 = swift_allocObject();
    sub_1D5B63F14(&v15, v12 + 56);
    result = sub_1D5B63F14(&v13, v12 + 16);
    *(v12 + 96) = v10;
    a2[3] = v11;
    a2[4] = &protocol witness table for FeedLayoutContextFactory;
    *a2 = v12;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1D5BBCC2C(uint64_t a1)
{
  type metadata accessor for CGPoint(319);
  if (v1 <= 0x3F)
  {
    sub_1D725A19C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D5BBCCCC()
{
  result = qword_1EDF35ED0;
  if (!qword_1EDF35ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF35ED0);
  }

  return result;
}

void sub_1D5BBCD24(uint64_t a1)
{
  if (!qword_1EDF3BA28)
  {
    sub_1D5BBCD88();
    v1 = sub_1D725B84C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BA28);
    }
  }
}

unint64_t sub_1D5BBCD88()
{
  result = qword_1EDF35EC0;
  if (!qword_1EDF35EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF35EC0);
  }

  return result;
}

unint64_t sub_1D5BBCDDC()
{
  result = qword_1EDF35EB0;
  if (!qword_1EDF35EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF35EB0);
  }

  return result;
}

uint64_t sub_1D5BBCE30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BFCB14();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatSystemFactory(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  type metadata accessor for FormatDecorationProviderFactory();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 33) = v5;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  return result;
}

unint64_t sub_1D5BBCFA0()
{
  result = qword_1EDF1ADC0;
  if (!qword_1EDF1ADC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDF1ADC0);
  }

  return result;
}

void sub_1D5BBCFEC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF36A38, &protocol descriptor for FeedBannerAdIntegrating, 0);
  sub_1D725AACC();
  swift_beginAccess();
  *(v3 + 16) = v7;
  *(v3 + 24) = v8;
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D725E80C();
  v4 = sub_1D725AABC();
  if (v4)
  {
    v5 = v4;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D5BB1FE4();
    sub_1D72621FC();
    v6 = sub_1D725AA7C();

    if (v6)
    {
      sub_1D5B48988(&unk_1EC895568, 255, type metadata accessor for FeedBannerAdRequester, &protocol conformance descriptor for FeedBannerAdRequester);
      sub_1D725E7CC();

      sub_1D725B97C();
    }

    else
    {
    }
  }
}

uint64_t static FeedGroupDecoration.register(in:)()
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
  sub_1D5BBDC40();
  return sub_1D726322C();
}

void sub_1D5BBD244(uint64_t a1)
{
  sub_1D5BBDC0C(319);
  if (v1 <= 0x3F)
  {
    sub_1D725F3DC();
    if (v2 <= 0x3F)
    {
      sub_1D725F15C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D5BBD2F0()
{
  if (qword_1EDF1F980 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1EDF1F978;
}

void FeedLayoutDebugging<>.setupDebugging(in:reloadBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a1;
  v13 = sub_1D7259D1C();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  (*(v17 + 104))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7110], v15);
  v18 = objc_allocWithZone(sub_1D725A03C());
  v19 = sub_1D725A01C();
  if (qword_1EDF3C2D0 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = v20;
  v21[6] = v19;
  v21[7] = a2;
  v21[8] = a3;
  v22 = v19;

  sub_1D725961C();

  if (v36 != 1)
  {
    goto LABEL_6;
  }

  v23 = v22;
  v24 = [v7 view];
  if (v24)
  {
    v25 = v24;
    [v24 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [v23 setFrame_];
    [v23 setAutoresizingMask_];

    v34 = sub_1D6F14B78(v35, v7);
    [v34 addSubview_];

LABEL_6:
    return;
  }

  __break(1u);
}

uint64_t sub_1D5BBD62C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5BBD664()
{

  return swift_deallocObject();
}

void sub_1D5BBD6AC(uint64_t a1)
{
  if (!qword_1EDF3C210)
  {
    sub_1D725A19C();
    sub_1D5B46248(&qword_1EDF3BFB8, MEMORY[0x1E69D7280], &protocol conformance descriptor for LayoutContentScale);
    v1 = sub_1D725986C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3C210);
    }
  }
}

void sub_1D5BBD740(uint64_t a1)
{
  if (!qword_1EDF3C218)
  {
    sub_1D725A19C();
    sub_1D5BBE0F8(&qword_1EDF3BFB8, &protocol conformance descriptor for LayoutContentScale);
    v1 = sub_1D725976C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3C218);
    }
  }
}

void *sub_1D5BBD7C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D1F8, &protocol descriptor for LayeredMediaLayerProviderFactoryType, 1);
  result = sub_1D725AACC();
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewModelFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewModelRenderer();
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    type metadata accessor for LayeredMediaRenderedViewModelFactory();
    v5 = swift_allocObject();
    sub_1D5B63F14(&v6, v5 + 16);
    *(v5 + 56) = v3;
    *(v5 + 64) = v4;
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D5BBD8E0()
{
  result = qword_1EDF35EC8;
  if (!qword_1EDF35EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF35EC8);
  }

  return result;
}

uint64_t FeedDismissingManager.addRebuild<A>(target:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A76C();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = v9;
  swift_beginAccess();
  v11 = *(v4 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 72) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1D5BBCF80(0, v11[2] + 1, 1, v11);
    *(v4 + 72) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1D5BBCF80((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1D6066468;
  v15[5] = v10;
  *(v4 + 72) = v11;
  swift_endAccess();

  return sub_1D725A77C();
}

uint64_t sub_1D5BBDAF0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5BBDB28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5BBDB60()
{

  return swift_deallocObject();
}

void sub_1D5BBDBA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D5BBDC40()
{
  result = qword_1EDF1F970;
  if (!qword_1EDF1F970)
  {
    type metadata accessor for FormatMicaSectionDecorationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F970);
  }

  return result;
}

uint64_t sub_1D5BBDC98()
{
  result = type metadata accessor for FormatMicaSectionDecorationView(0);
  qword_1EDF1F978 = result;
  return result;
}

uint64_t type metadata accessor for FormatMicaSectionDecorationView(uint64_t a1)
{
  result = qword_1EDF1F8B0;
  if (!qword_1EDF1F8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BBDD08()
{
  type metadata accessor for FeedScalingManager();
  v0 = swift_allocObject();
  if (qword_1EDF3C308 != -1)
  {
    swift_once();
  }

  sub_1D5BBD740(0);
  swift_allocObject();

  result = sub_1D725977C();
  *(v0 + 16) = result;
  off_1EDF386F0 = v0;
  return result;
}

unint64_t sub_1D5BBDE04()
{
  result = qword_1EDF1A7A0;
  if (!qword_1EDF1A7A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1A7A0);
  }

  return result;
}

uint64_t sub_1D5BBDE68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InternalErrorView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBDECC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5BBDF2C(uint64_t a1)
{
  if (!qword_1EDF3BA30)
  {
    type metadata accessor for FeedLayoutCacheFastPathResult(255);
    sub_1D5BBCCCC();
    v1 = sub_1D725B84C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BA30);
    }
  }
}

void *sub_1D5BBDF98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatLayoutResizingProvider();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatSystemFactory(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42D80, &protocol descriptor for FeedLayoutTrackerType, 1);
  result = sub_1D725AACC();
  if (v8)
  {
    *a2 = v5;
    a2[1] = v6;
    return sub_1D5B63F14(&v7, (a2 + 2));
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D5BBE0A8()
{
  if (!qword_1EDF43BA0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43BA0);
    }
  }
}

uint64_t sub_1D5BBE0F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D725A19C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BBE13C(uint64_t a1)
{
  v2 = sub_1D5BBE0F8(&qword_1EDF3BFA0, MEMORY[0x1E69D72A0]);
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D5BBE1CC(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v32 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest(0);
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v5);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  swift_beginAccess();
  v29 = a1;
  v11 = *(a1 + 56);
  v12 = *(v11 + 16);

  v30 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v28 = xmmword_1D7273AE0;
    while (v14 < *(v11 + 16))
    {
      v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v19 = *(v4 + 72);
      sub_1D5C3ABB0(v11 + v18 + v19 * v14, v10, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      if (v33(&v10[*(v32 + 20)]))
      {
        if (qword_1EDF1BB68 != -1)
        {
          swift_once();
        }

        v20 = qword_1EDFFC830;
        sub_1D5B5E1BC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = v28;
        v22 = sub_1D7260A8C();
        v24 = v23;
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 64) = sub_1D5B7E2C0();
        *(v21 + 32) = v22;
        *(v21 + 40) = v24;
        v25 = sub_1D7262EDC();
        sub_1D725C30C("Unscheduling request for placement=%{public}@", 45, 2, &dword_1D5B42000, v20, v25, v21);

        v35 = sub_1D7260A8C();
        v36 = v26;
        sub_1D725AC6C();

        result = sub_1D5FCBA70(v10, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      }

      else
      {
        sub_1D5C3AC18(v10, v31, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998534(0, *(v15 + 16) + 1, 1);
          v15 = v37;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D6998534((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        result = sub_1D5C3AC18(v31, v15 + v18 + v17 * v19, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      }

      if (v30 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    *(v29 + 56) = v15;
  }

  return result;
}

void sub_1D5BBE590(uint64_t a1)
{
  type metadata accessor for FeedBannerAd(319);
  if (v1 <= 0x3F)
  {
    sub_1D7260A9C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v3 <= 0x3F)
      {
        sub_1D5B5D9E0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5BBE654(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_1D5BE1514(0);
  v10 = *(v9 - 8);
  v78 = v9;
  v79 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v75 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v77 = &v68 - v15;
  v85 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest(0);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v16);
  v18 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BE0218(0);
  v20 = v19;
  v84 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v82 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5E1BC(0, &qword_1EDF1ACE8, sub_1D5BE0218, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v68 - v29;
  v31 = sub_1D7258C9C();
  v74 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v80 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D7261B9C();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v39 = (&v68 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v4 + 5);
  *v39 = v40;
  (*(v35 + 104))(v39, *MEMORY[0x1E69E8020], v34, v37);
  v41 = v40;
  LOBYTE(v40) = sub_1D7261BBC();
  (*(v35 + 8))(v39, v34);
  if ((v40 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v73 = v31;
  if (qword_1EDF1BB68 != -1)
  {
LABEL_23:
    swift_once();
  }

  v42 = qword_1EDFFC830;
  sub_1D5B5E1BC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v86 = a1;
  v87 = a2;
  v88 = a3;
  v89 = a4;
  type metadata accessor for CGRect(0);
  v44 = sub_1D72620FC();
  v46 = v45;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1D5B7E2C0();
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_1D7262EDC();
  sub_1D725C30C("Processing scheduled requests for rect=%{public}@", 49, 2, &dword_1D5B42000, v42, v47, v43);

  sub_1D7258C8C();
  swift_beginAccess();
  v76 = v4;
  v48 = *(v4 + 7);
  v49 = (v84 + 56);
  v50 = *(v48 + 16);
  v51 = (v84 + 48);
  v72 = (v79 + 16);
  v71 = v79 + 32;
  v70 = v79 + 8;
  v84 = v48;

  v52 = 0;
  v81 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v52 == v50)
    {
      v54 = 1;
      v52 = v50;
    }

    else
    {
      if ((v52 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v52 >= *(v84 + 16))
      {
        goto LABEL_21;
      }

      v4 = (v52 + 1);
      v55 = v82;
      v56 = v84 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v52;
      v57 = *(v20 + 48);
      *v82 = v52;
      sub_1D5C3ABB0(v56, v55 + v57, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      sub_1D5C3AC18(v55, v26, sub_1D5BE0218);
      v54 = 0;
      ++v52;
    }

    (*v49)(v26, v54, 1, v20);
    sub_1D5BE03A0(v26, v30);
    if ((*v51)(v30, 1, v20) == 1)
    {
      break;
    }

    sub_1D5C3AC18(&v30[*(v20 + 48)], v18, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    v90.origin.x = a1;
    v90.origin.y = a2;
    v90.size.width = a3;
    v90.size.height = a4;
    if (CGRectContainsPoint(v90, *(v18 + *(v85 + 24))))
    {
      sub_1D5FCA344(v18, v77);
      (*v72)(v75, v77, v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_1D5C38FA4(0, v81[2] + 1, 1, v81);
      }

      v59 = v81[2];
      v58 = v81[3];
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v69 = v59 + 1;
        v61 = sub_1D5C38FA4((v58 > 1), v59 + 1, 1, v81);
        v60 = v69;
        v81 = v61;
      }

      v53 = v81;
      v81[2] = v60;
      (*(v79 + 32))(v53 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v59, v75, v78);
      v4 = v80;
      sub_1D7258C6C();
      (*(v79 + 8))(v77, v78);
    }

    sub_1D5FCBA70(v18, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
  }

  v62 = v76;
  swift_beginAccess();
  sub_1D5BBEFC4(0);
  sub_1D5B73758(&qword_1EDF1B4E8, sub_1D5BBEFC4, MEMORY[0x1E69E6318]);
  sub_1D5B73758(&qword_1EDF1B4E0, sub_1D5BBEFC4, MEMORY[0x1E69E6348]);
  v63 = v80;
  sub_1D7262D3C();
  swift_endAccess();
  swift_beginAccess();
  if (*(v62 + 2))
  {
    v64 = *(v62 + 3);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v66 = *(v64 + 8);
    swift_unknownObjectRetain();
    v66(v81, ObjectType, v64);
    swift_unknownObjectRelease();

    return (*(v74 + 8))(v63, v73);
  }

  else
  {
    (*(v74 + 8))(v63, v73);
    swift_endAccess();
  }
}

void *sub_1D5BBF010(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedHeadlineFactory();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedIssueFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedTagFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedWebEmbedFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  type metadata accessor for FeedCustomItemFactory();
  v7 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42B98, &protocol descriptor for FeedBannerAdFactoryType, 1);
  result = sub_1D725AACC();
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedPuzzleFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v9 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedPuzzleTypeFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  v11 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedPuzzleStatisticFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedRecipeFactory();
  result = sub_1D725AABC();
  if (result)
  {
    v13 = result;
    type metadata accessor for FeedModelFactory();
    v14 = swift_allocObject();
    v14[2] = v11;
    v14[3] = v9;
    v14[4] = v15;
    v14[5] = v6;
    v14[6] = v7;
    sub_1D5B63F14(&v16, (v14 + 7));
    v14[12] = v8;
    v14[13] = v10;
    v14[14] = v12;
    v14[15] = v13;
    return v14;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D5BBF2F0()
{
  sub_1D5B483C4(0, &qword_1EDF1E400, &protocol descriptor for OfflineAlertControllerFactoryType, 1);
  sub_1D725B53C();
}

uint64_t sub_1D5BBF364()
{
  type metadata accessor for FeedHeadlineFactory();
  sub_1D725B52C();

  type metadata accessor for FeedIssueFactory();
  sub_1D725B52C();

  type metadata accessor for FeedTagFactory();
  sub_1D725B52C();

  type metadata accessor for FeedWebEmbedFactory();
  sub_1D725B52C();

  type metadata accessor for FeedPuzzleFactory();
  sub_1D725B52C();

  type metadata accessor for FeedPuzzleTypeFactory();
  sub_1D725B52C();

  type metadata accessor for FeedPuzzleStatisticFactory();
  sub_1D725B52C();

  type metadata accessor for FeedRecipeFactory();
  sub_1D725B52C();
}

void *sub_1D5BBF62C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AA98, 0x1E69B5558);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB40, 0x1E69B5560);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A9D8, 0x1E69B5620);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF1A850, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FD10, &protocol descriptor for SharedItemManagerType, 1);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FFB0, &protocol descriptor for HeadlineServiceType, 1);
  result = sub_1D725AACC();
  if (v9)
  {
    type metadata accessor for FeedHeadlineFactory();
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v5;
    v7[5] = v6;
    sub_1D5B63F14(&v10, (v7 + 6));
    sub_1D5B63F14(&v8, (v7 + 11));
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1D5BBF864(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A8E8, 0x1E69B5368);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF35540, &protocol descriptor for FeedPersonalizationServiceType, 1);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A820, 0x1E69B5610);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF1A850, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, qword_1EDF35970, &protocol descriptor for FeedIssueOfflineProviderType, 1);
    sub_1D725AACC();
    type metadata accessor for FeedIssueFactory();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    sub_1D5B63F14(&v10, v6 + 24);
    *(v6 + 64) = v4;
    *(v6 + 72) = v5;
    *(v6 + 80) = v7;
    *(v6 + 96) = v8;
    *(v6 + 112) = v9;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D5BBFA4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A820, 0x1E69B5610);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1AAB0, 0x1E69B5630);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A880, 0x1E69B5530);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for FeedTagFactory();
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v4;
    result[4] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5BBFB6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedHeadlineFactory();
  result = sub_1D725AABC();
  if (result)
  {
    v2 = result;
    type metadata accessor for FeedWebEmbedFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BBFC00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3EE30, &protocol descriptor for PuzzleAccessProviderType, 1);
  result = sub_1D725AACC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20, &protocol descriptor for PuzzleHistoryServiceType, 1);
  result = sub_1D725AACC();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType, 1);
  result = sub_1D725AACC();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType, 1);
  result = sub_1D725AACC();
  if (v5)
  {
    type metadata accessor for FeedPuzzleFactory();
    v3 = swift_allocObject();
    sub_1D5B63F14(&v10, v3 + 16);
    sub_1D5B63F14(&v8, v3 + 56);
    sub_1D5B63F14(&v6, v3 + 96);
    sub_1D5B63F14(&v4, v3 + 136);
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BBFDB8()
{
  type metadata accessor for FeedPuzzleTypeFactory();

  return swift_allocObject();
}

uint64_t sub_1D5BBFDEC()
{
  type metadata accessor for FeedPuzzleStatisticFactory();

  return swift_allocObject();
}

void *sub_1D5BBFE20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE08, &protocol descriptor for RecipeAccessProviderType, 1);
  result = sub_1D725AACC();
  if (!v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType, 1);
  result = sub_1D725AACC();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1D5B63F14(&v12, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A9D8, 0x1E69B5620);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType, 1);
  sub_1D725AACC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1D725AACC();
  if (v8)
  {
    type metadata accessor for FeedRecipeFactory();
    v4 = swift_allocObject();
    sub_1D5B63F14(&v16, v4 + 16);
    v5 = v14[1];
    *(v4 + 56) = v14[0];
    *(v4 + 72) = v5;
    *(v4 + 88) = v15;
    *(v4 + 96) = v3;
    v6 = v10;
    *(v4 + 104) = v9;
    *(v4 + 120) = v6;
    *(v4 + 136) = v11;
    sub_1D5B63F14(&v7, v4 + 144);
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D5BC0038(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48DD4(0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48F68(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48EAC(0);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for FeedPrerollAdRequester();
    swift_allocObject();
    return sub_1D5BC01D0(v3, v4, v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D5BC01D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = MEMORY[0x1E69E7CC0];
  v3[2] = MEMORY[0x1E69E7CD0];
  v3[3] = v9;
  v10 = MEMORY[0x1E69D6388];
  sub_1D5B679FC(0, &unk_1EDF19B40, MEMORY[0x1E69D6388], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D725A78C();
  sub_1D5B473C8(&qword_1EDF3BDF0, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  sub_1D5B679FC(0, &qword_1EDF1B5D0, v10, MEMORY[0x1E69E62F8]);
  sub_1D5B89968();
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v11 = sub_1D725A7AC();
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  v3[7] = v11;
  return v3;
}

uint64_t sub_1D5BC0408(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t FormatLayoutViewDebugger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D5BC04A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  if (!v27)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF42830, &protocol descriptor for FeedLayoutContextFactoryType, 1);
  result = sub_1D725AACC();
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = type metadata accessor for FeedLayoutCache();
  v4 = swift_allocObject();
  sub_1D5BC10E0(0);
  swift_allocObject();
  v4[2] = sub_1D725B83C();
  sub_1D5BBDF2C(0);
  swift_allocObject();
  v4[3] = sub_1D725B83C();
  sub_1D5BBCD24(0);
  swift_allocObject();
  v4[4] = sub_1D725B83C();
  v23 = v3;
  v24 = &protocol witness table for FeedLayoutCache;
  *&v22 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42D80, &protocol descriptor for FeedLayoutTrackerType, 1);
  result = sub_1D725AACC();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for FeedModelFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v5;
  v19 = &protocol witness table for FeedModelFactory;
  *&v17 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF42D70, &protocol descriptor for FeedContextFactoryType, 0);
  result = sub_1D725AACC();
  v6 = v15;
  if (!v15)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v7 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF36190, &protocol descriptor for FeedDismissingManagerType, 1);
  sub_1D725AACC();
  if (v11)
  {
    sub_1D5B63F14(&v10, &v12);
  }

  else
  {
    v13 = type metadata accessor for EmptyFeedDismissingManager();
    v14 = &protocol witness table for EmptyFeedDismissingManager;
    *&v12 = swift_allocObject();
  }

  sub_1D5B53EDC(0, qword_1EDF43358, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver);
  v8 = swift_allocObject();
  v9 = v28;
  *(v8 + 16) = v27;
  *(v8 + 32) = v9;
  *(v8 + 48) = v29;
  *(v8 + 64) = v30;
  sub_1D5B63F14(&v22, v8 + 72);
  sub_1D5B63F14(&v25, v8 + 112);
  sub_1D5B63F14(&v20, v8 + 152);
  sub_1D5B63F14(&v17, v8 + 192);
  *(v8 + 232) = v6;
  *(v8 + 240) = v7;
  sub_1D5B63F14(&v12, v8 + 248);
  return v8;
}

void *sub_1D5BC0810(void *a1)
{
  v2 = sub_1D725BD1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF43260, &protocol descriptor for FeedUserInfoType, 1);
  result = sub_1D725AACC();
  if (!v19[3])
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1D725AACC();
  if (!v18[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42928, &protocol descriptor for FeedAppConfigManagerType, 1);
  result = sub_1D725AACC();
  if (!v17[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A770, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B53EDC(0, qword_1EDF412B8, &type metadata for FormatOfflineModel, &off_1F51C0A00, type metadata accessor for OfflineManager);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F3D0, &protocol descriptor for BundleSessionManagerType, 1);
  result = sub_1D725AACC();
  if (!v16[3])
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EDF3CA58);
  v11 = *(v3 + 16);
  v11(v6, v10, v2);
  v12 = type metadata accessor for FormatSystemFactory(0);
  v13 = objc_allocWithZone(v12);
  sub_1D5B68374(v19, &v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_userInfo]);
  sub_1D5B68374(v18, &v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_featureAvailability]);
  sub_1D5B68374(v17, &v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager]);
  *&v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager] = v8;
  v11(&v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_formatVersion], v6, v2);
  *&v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_offlineManager] = v9;
  sub_1D5B68374(v16, &v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSessionManager]);
  v15.receiver = v13;
  v15.super_class = v12;
  v14 = objc_msgSendSuper2(&v15, sel_init);
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

void *sub_1D5BC0C0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BC0D34();
  result = sub_1D725AACC();
  if (v18[3])
  {
    sub_1D5B4F970(0, v2, v3, v4);
    v6 = v5;
    v7 = objc_allocWithZone(v5);
    v8 = &v7[qword_1EC894F50];
    *v8 = 0;
    *(v8 + 1) = 0;
    sub_1D5B68374(v18, &v7[qword_1EC894F58]);
    v17.receiver = v7;
    v17.super_class = v6;
    v9 = objc_msgSendSuper2(&v17, sel_init);
    sub_1D5B68374(v9 + qword_1EC894F58, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12 = *(v11 + 16);
    v13 = v9;
    v12(v9, v10, v11);

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5BC0D34()
{
  result = qword_1EDF40840;
  if (!qword_1EDF40840)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF40840);
  }

  return result;
}

uint64_t sub_1D5BC0D98@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_1D5BC0E2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, qword_1EDF20A88, &protocol descriptor for EngagementBannerViewStylerType);
  result = sub_1D725AACC();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B49474(0, &qword_1EDF3B870, MEMORY[0x1E69B56F8]);
    result = sub_1D725AACC();
    if (v20)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      v4 = MEMORY[0x1EEE9AC00](v3, v3);
      v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = *v6;
      v9 = type metadata accessor for EngagementBannerViewStyler();
      v18[3] = v9;
      v18[4] = &off_1F519C300;
      v18[0] = v8;
      type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
      v12 = MEMORY[0x1EEE9AC00](v11, v11);
      v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14, v12);
      v16 = *v14;
      v10[5] = v9;
      v10[6] = &off_1F519C300;
      v10[2] = v16;
      sub_1D5B63F14(&v19, (v10 + 7));
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D5BC10E0(uint64_t a1)
{
  if (!qword_1EDF3BA20)
  {
    type metadata accessor for FeedLayoutCacheKey(255);
    sub_1D5BBC604(&qword_1EDF387A0, type metadata accessor for FeedLayoutCacheKey, &protocol conformance descriptor for FeedLayoutCacheKey);
    v1 = sub_1D725B84C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BA20);
    }
  }
}

uint64_t sub_1D5BC117C(uint64_t a1)
{
  result = type metadata accessor for FeedLayoutCacheDynamicKey(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5BC1248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5BC1290(uint64_t a1)
{
  result = type metadata accessor for FeedLayoutCacheKey(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5BC1328(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF36A38, &protocol descriptor for FeedBannerAdIntegrating, 0);
  sub_1D725AACC();
  *(v2 + 24) = v4;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D5BC13B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725A19C();
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  (*(v14 + 104))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7278], v12);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6EA0], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  sub_1D5BBD6AC(0);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C310 = result;
  return result;
}

uint64_t sub_1D5BC1620(int *a1, int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  if (v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v6 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFF8) + 48 > v6)
  {
    v6 = (v6 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 | 7;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v11 = ((v7 + 31) & ~v8) + (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483646;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  else if (v15 == 2)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
LABEL_9:
      v9 = *((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8) + v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v9 >= 0xFFFFFFFF)
      {
        LODWORD(v9) = -1;
      }

      return (v9 + 1);
    }
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v17) ^ 0x80000000;
}

uint64_t sub_1D5BC184C()
{
  v181 = v0;
  v143 = *(v0 + 488);
  v1 = *(v0 + 472);
  v2 = *(v0 + 440);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v169 = v3;
  v5 = *(v0 + 408);
  v150 = *(v0 + 344);
  v160 = v5;
  v162 = *(v0 + 320);
  v155 = *(v0 + 352);
  v157 = *(v0 + 192);
  v173 = *(v0 + 184);
  v153 = *(v0 + 176);
  v6 = *(v0 + 64);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7279970;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = v2;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  v146 = v4;

  v8 = sub_1D7261DDC();
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69E65A8];
  *(v7 + 96) = MEMORY[0x1E69E6530];
  *(v7 + 104) = v10;
  v11 = v9;
  v12 = v10;
  *(v7 + 72) = v8;
  v13 = sub_1D726279C();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = v13;
  v14 = sub_1D7262EDC();
  sub_1D725C30C("Emit Task [%{public}@] will resolve slot against results from %ld of %ld emitters", 81, 2, &dword_1D5B42000, v3, v14, v7);

  *(v0 + 512) = 0;
  *(v0 + 72) = v1;
  v15 = swift_task_alloc();
  v15[2] = v157;
  v15[3] = v173;
  v15[4] = v6;
  v15[5] = v0 + 512;
  v16 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1D5B874E4(sub_1D617CED0, v15, v16, v143, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

  v20 = swift_task_alloc();
  *(v20 + 16) = v157;
  *(v20 + 24) = v173;
  v21 = sub_1D726269C();

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7270C10;
  v23 = v21 > 1;
  v24 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = v2;
  *(v22 + 32) = v160;
  *(v22 + 40) = v4;
  v25 = 1702195828;
  if (v21 <= 1)
  {
    v25 = 0x65736C6166;
  }

  v26 = 0xE500000000000000;
  if (v21 > 1)
  {
    v26 = 0xE400000000000000;
  }

  *(v22 + 96) = v24;
  *(v22 + 104) = v2;
  *(v22 + 72) = v25;
  *(v22 + 80) = v26;

  v27 = sub_1D7262EDC();
  sub_1D725C30C("Emit Task [%{public}@] service should attempt to score groups, shouldScore=%{public}@", 85, 2, &dword_1D5B42000, v169, v27, v22);

  *(v0 + 80) = v19;
  v28 = swift_task_alloc();
  *(v28 + 16) = v153;
  *(v28 + 24) = v23;
  *(v28 + 32) = v160;
  *(v28 + 40) = v4;
  v29 = sub_1D72627FC();
  v30 = swift_getWitnessTable();
  v32 = sub_1D5B874E4(sub_1D617CEFC, v28, v29, v162, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);

  *(v0 + 88) = v32;
  v33 = swift_task_alloc();
  *(v33 + 16) = v157;
  *(v33 + 24) = v173;
  v34 = sub_1D72627FC();
  swift_getWitnessTable();
  v35 = sub_1D72624AC();

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D7279970;
  v37 = MEMORY[0x1E69E6158];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = v2;
  *(v36 + 32) = v160;
  *(v36 + 40) = v146;
  v38 = v37;

  v39 = sub_1D726279C();
  *(v36 + 96) = MEMORY[0x1E69E6530];
  *(v36 + 104) = MEMORY[0x1E69E65A8];
  *(v36 + 72) = v39;
  v178 = 0;
  v179 = 0xE000000000000000;
  *(v0 + 96) = v35;
  swift_getWitnessTable();
  sub_1D726466C();
  v40 = v178;
  v41 = v179;
  *(v36 + 136) = v38;
  *(v36 + 144) = v2;
  *(v36 + 112) = v40;
  *(v36 + 120) = v41;
  v42 = sub_1D7262EDC();
  sub_1D725C30C("Emit Task [%{public}@] service got %ld scored results: %{public}@", 65, 2, &dword_1D5B42000, v169, v42, v36);

  v43 = v35;
  *(v0 + 104) = v35;
  v44 = swift_task_alloc();
  *(v44 + 16) = v157;
  *(v44 + 24) = v173;
  sub_1D726246C();

  if ((*(v155 + 48))(v150, 1, v162) != 1)
  {
    v55 = MEMORY[0x1E69E6158];
    v56 = *(v0 + 440);
    v57 = *(v0 + 416);
    v58 = *(v0 + 408);
    v163 = *(v0 + 192);
    v158 = *(v0 + 424);
    v161 = *(v0 + 184);
    v174 = (*(v0 + 352) + 32);
    v165 = *(v0 + 152);
    v170 = *v174;
    (*v174)(*(v0 + 392), *(v0 + 344), *(v0 + 320));
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D7270C10;
    *(v59 + 56) = v55;
    *(v59 + 64) = v56;
    *(v59 + 32) = v58;
    *(v59 + 40) = v57;
    v178 = 0;
    v179 = 0xE000000000000000;

    swift_getWitnessTable();
    sub_1D726466C();
    *(v59 + 96) = v55;
    *(v59 + 104) = v56;
    *(v59 + 72) = 0;
    *(v59 + 80) = 0xE000000000000000;
    v60 = sub_1D7262EDC();
    sub_1D725C30C("Emit Task [%{public}@] service got a top scored result: %{public}@", 66, 2, &dword_1D5B42000, v158, v60, v59);

    v137 = sub_1D5C02C68(v43, v163, v161);
    v138 = v61;
    v177 = *(v165 + qword_1EDFFCF28);

    v62 = v43;
    if (!sub_1D726279C())
    {
LABEL_28:
      v96 = *(v0 + 392);
      v97 = *(v0 + 320);
      v98 = *(v0 + 304);
      v99 = *(v0 + 280);
      v175 = *(v0 + 264);
      v167 = *(v0 + 272);
      v171 = *(v0 + 256);
      v100 = *(v0 + 240);
      v101 = *(v0 + 248);
      v103 = *(v0 + 224);
      v102 = *(v0 + 232);
      v104 = *(v0 + 216);

      (*(v100 + 16))(v101, v96 + *(v97 + 44), v102);
      sub_1D5C03764(v101, v104, v103, v105, v99);
      LODWORD(v97) = (*(v98 + 48))(v99, 1, v171);
      v106 = *(v167 + 8);
      v106(v99, v175);
      if (v97 != 1)
      {
        v107 = *(v0 + 288);
        v108 = *(v0 + 264);
        *(v0 + 16) = sub_1D5C0BA9C();
        *(v0 + 24) = v109;
        sub_1D7261E1C();
        sub_1D7261D5C();

        v106(v107, v108);
      }

      v152 = *(v0 + 424);
      v147 = *(v0 + 416);
      v149 = *(v0 + 440);
      v145 = *(v0 + 408);
      v110 = *(v0 + 400);
      v111 = *(v0 + 392);
      v112 = *(v0 + 368);
      v113 = *(v0 + 352);
      v114 = *(v0 + 320);
      v116 = *(v0 + 200);
      v115 = *(v0 + 208);
      v117 = *(v0 + 168);
      v118 = *(v0 + 160);
      v119 = *(v0 + 136);
      (*(v113 + 16))(v112, v111, v114);

      v178 = v137;
      v179 = v118;
      v180 = (CACurrentMediaTime() - v117) * 1000.0;
      sub_1D5C03BF0(v112, &v178, v138, v177, v116, v115, v119);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1D7270C10;
      *(v120 + 56) = MEMORY[0x1E69E6158];
      *(v120 + 64) = v149;
      *(v120 + 32) = v145;
      *(v120 + 40) = v147;
      v121 = CACurrentMediaTime();
      v122 = MEMORY[0x1E69E6438];
      *(v120 + 96) = MEMORY[0x1E69E63B0];
      *(v120 + 104) = v122;
      *(v120 + 72) = (v121 - v110) * 1000.0;
      v123 = sub_1D7262EDC();
      sub_1D725C30C("Emit Task [%{public}@] DONE %fms", 32, 2, &dword_1D5B42000, v152, v123, v120);

      (*(v113 + 8))(v111, v114);

      v124 = *(v0 + 8);
      goto LABEL_33;
    }

    v63 = 0;
    v64 = *(v0 + 352);
    v136 = *(v0 + 360);
    v65 = *(v0 + 304);
    v159 = *(v0 + 320);
    v166 = (v64 + 16);
    v151 = (*(v0 + 240) + 16);
    v154 = v62;
    v148 = (v65 + 48);
    v142 = (v65 + 16);
    v144 = (v65 + 32);
    v140 = (v65 + 8);
    v141 = (v65 + 56);
    v164 = v64;
    v156 = (v64 + 8);
    v139 = (*(v0 + 272) + 8);
    while (1)
    {
      v66 = sub_1D726277C();
      sub_1D726271C();
      if (v66)
      {
        (*(v164 + 16))(*(v0 + 384), v62 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v63, *(v0 + 320));
        v67 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        if (v136 != 8)
        {
          __break(1u);
          return result;
        }

        v94 = *(v0 + 384);
        v95 = *(v0 + 320);
        *(v0 + 128) = result;
        (*v166)(v94, v0 + 128, v95);
        swift_unknownObjectRelease();
        v67 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v68 = *(v0 + 376);
      v170(v68, *(v0 + 384), *(v0 + 320));
      v69 = v68 + *(v159 + 44);
      v70 = sub_1D5C0BA9C();
      v72 = v71;
      if (v70 == sub_1D5C0BA9C() && v72 == v73)
      {
      }

      else
      {
        v75 = sub_1D72646CC();

        if ((v75 & 1) == 0)
        {
          v76 = *(v0 + 296);
          v78 = *(v0 + 248);
          v77 = *(v0 + 256);
          v79 = *(v0 + 224);
          v80 = *(v0 + 216);
          (*v151)(v78, v69, *(v0 + 232));
          sub_1D5C03764(v78, v80, v79, v81, v76);
          v82 = (*v148)(v76, 1, v77);
          v83 = *(v0 + 376);
          v84 = *(v0 + 320);
          if (v82 == 1)
          {
            v85 = *(v0 + 296);
            v86 = *(v0 + 264);
            (*v156)(*(v0 + 376), *(v0 + 320));
            (*v139)(v85, v86);
          }

          else
          {
            v87 = *(v0 + 312);
            v88 = *(v0 + 288);
            v89 = *(v0 + 256);
            (*v144)(v87, *(v0 + 296), v89);
            v90 = sub_1D5C0BA9C();
            v92 = v91;
            (*v142)(v88, v87, v89);
            (*v141)(v88, 0, 1, v89);
            *(v0 + 32) = v90;
            *(v0 + 40) = v92;
            sub_1D7261E1C();
            sub_1D7261E4C();
            (*v140)(v87, v89);
            (*v156)(v83, v84);
          }

          v62 = v154;
          goto LABEL_12;
        }
      }

      (*v156)(*(v0 + 376), *(v0 + 320));
LABEL_12:
      ++v63;
      if (v67 == sub_1D726279C())
      {
        goto LABEL_28;
      }
    }
  }

  v46 = *(v0 + 336);
  v45 = *(v0 + 344);
  v47 = *(v0 + 328);

  (*(v46 + 8))(v45, v47);
  v48 = v43;
  *(v0 + 112) = v43;
  v49 = swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    v50 = *(v0 + 200);
    v51 = *(v0 + 208);
    v52 = *(v0 + 144);

    type metadata accessor for FeedServiceError(0, v50, v51, v53);
    swift_getWitnessTable();
    swift_allocError();
    *v54 = v52;
    *(v54 + 8) = 0;
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
  }

  else
  {
    v125 = *(v0 + 448);
    v168 = *(v0 + 200);
    v172 = *(v0 + 208);
    v127 = *(v0 + 184);
    v126 = *(v0 + 192);
    v128 = *(v0 + 168);
    v129 = *(v0 + 160);
    v176 = sub_1D5C02C68(v48, v126, v127);

    v130 = (CACurrentMediaTime() - v128) * 1000.0;
    *(v0 + 120) = v48;
    v131 = swift_task_alloc();
    *(v131 + 16) = v126;
    *(v131 + 24) = v127;
    v133 = sub_1D5B874E4(sub_1D617CF48, v131, v34, v125, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v132);

    type metadata accessor for FeedServiceError(0, v168, v172, v134);
    swift_getWitnessTable();
    swift_allocError();
    *v135 = v176;
    *(v135 + 8) = v129;
    *(v135 + 16) = v130;
    *(v135 + 24) = v133;
    *(v135 + 32) = 1;
  }

  swift_willThrow();

  v124 = *(v0 + 8);
LABEL_33:

  return v124();
}

uint64_t sub_1D5BC2898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v36 = a5;
  v34[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = v8;
  v12 = type metadata accessor for FeedGroupEmitterOutput(0, v8, v9, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v34 - v15;
  v18 = type metadata accessor for FeedScoredResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v34[2] = a1;
  v35 = v18;
  v19 = a1 + *(v18 + 44);
  (*(v13 + 16))(v16, v19, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 3)
    {
      (*(v13 + 8))(v16, v12);
LABEL_15:
      v37 = *(v19 + *(type metadata accessor for FeedGroupEmitTaskResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v26) + 36));
      type metadata accessor for FeedGroupEmitter(255, AssociatedTypeWitness, AssociatedConformanceWitness, v33);
      sub_1D72627FC();

      sub_1D72627BC();
      return sub_1D5BC2D98(v35, v36);
    }

    v27 = type metadata accessor for FeedGroupEmitterEmbeddedOutput(255, v10, v9, v21);
    sub_1D5B49474(255, qword_1EDF37D80, &protocol descriptor for FeedCursorEmbeddable);
    v28 = *(swift_getTupleTypeMetadata2() + 48);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29)
    {
      if (v29 != 1)
      {
        (*(*(v27 - 8) + 8))(v16, v27);
        __swift_destroy_boxed_opaque_existential_1(&v16[v28]);
        goto LABEL_15;
      }

      (*(*(v27 - 8) + 8))(v16, v27);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CA0];
      v31 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5B88AA0(&v16[*(TupleTypeMetadata2 + 48)], &qword_1EDF43B70, v30 + 8, v31, sub_1D5BEE1B8);
      (*(*(v10 - 8) + 8))(v16, v10);
    }

    __swift_destroy_boxed_opaque_existential_1(&v16[v28]);
    return sub_1D5BC2D98(v35, v36);
  }

  if (EnumCaseMultiPayload > 1)
  {
LABEL_5:
    (*(v13 + 8))(v16, v12);
    return sub_1D5BC2D98(v35, v36);
  }

  v22 = MEMORY[0x1E69E7CA0];
  v23 = MEMORY[0x1E69E6720];
  sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v24 = swift_getTupleTypeMetadata2();
  sub_1D5B88AA0(&v16[*(v24 + 48)], &qword_1EDF43B70, v22 + 8, v23, sub_1D5BEE1B8);
  (*(*(v10 - 8) + 8))(v16, v10);
  return sub_1D5BC2D98(v35, v36);
}

uint64_t sub_1D5BC2D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1D5C02DB8(v60, &v54, v2, v5, v6);
  v46 = *(&v54 + 1);
  v47 = v54;
  v45 = v55;
  v7 = v2 + *(a1 + 44);
  v9 = type metadata accessor for FeedGroupEmitTaskResult(0, v5, v6, v8);
  v10 = *&v7[v9[9]];
  v12 = type metadata accessor for FeedGroupEmitter(0, v5, v6, v11);
  v59[3] = v12;
  v59[4] = swift_getWitnessTable();
  v59[0] = v10;
  v13 = *&v7[v9[10]];
  v14 = &v7[v9[11]];
  v43 = *v14;
  v42 = v14[8];
  v41 = *(v14 + 2);
  v40 = v14[24];
  v39 = *(v14 + 4);
  v15 = v14[40];
  v37 = v14[41];
  v38 = v15;
  sub_1D5C034F0(v60, &v54);
  v16 = *&v7[v9[12]];

  v44 = v13;

  v17 = FeedJournalGroupResultOutput.identifier.getter();
  if (v18)
  {
    v19 = v18;
    v36 = v17;
  }

  else
  {
    v36 = sub_1D5C0BA9C();
    v19 = v20;
  }

  __swift_project_boxed_opaque_existential_1(v59, v12);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35[1] = v35;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v25 = v35 - v24;
  sub_1D5C0354C();
  swift_getAssociatedConformanceWitness();
  v26 = sub_1D725AA4C();
  v28 = v27;
  (*(v22 + 8))(v25, AssociatedTypeWitness);
  sub_1D5BC3420(v60);
  sub_1D5B68374(v59, a2 + 32);
  sub_1D5C034F0(&v54, a2 + 128);
  v51 = v56;
  v52 = v57;
  v53 = v58;
  v49 = v54;
  v50 = v55;
  sub_1D5B68374(v59, v48);
  v29 = swift_allocObject();
  v30 = v52;
  *(v29 + 48) = v51;
  *(v29 + 64) = v30;
  *(v29 + 80) = v53;
  v31 = v50;
  *(v29 + 16) = v49;
  *(v29 + 32) = v31;
  sub_1D5B63F14(v48, v29 + 88);
  *a2 = v36;
  *(a2 + 8) = v19;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  v32 = v43;
  *(a2 + 72) = v44;
  *(a2 + 80) = v32;
  *(a2 + 88) = v42;
  *(a2 + 96) = v41;
  *(a2 + 104) = v40;
  *(a2 + 112) = v39;
  LOBYTE(v32) = v37;
  *(a2 + 120) = v38;
  *(a2 + 121) = v32;
  v33 = v46;
  *(a2 + 200) = v47;
  *(a2 + 208) = v33;
  *(a2 + 216) = v45;
  *(a2 + 224) = v16;
  *(a2 + 232) = sub_1D617CF68;
  *(a2 + 240) = v29;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_1D5BC31E4()
{
  v1 = *(v0 + 80);
  if (v1 <= 2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_12;
  }

  if (*(v0 + 80) <= 4u)
  {
    if (v1 == 3)
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    else if (v1 != 4)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v1 == 5 || v1 == 6)
  {
    goto LABEL_11;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocObject();
}

uint64_t FeedJournalGroupResultOutput.identifier.getter()
{
  sub_1D5C034F0(v0, &v3);
  if (v6 >= 3u)
  {
    if (v6 - 4 < 3)
    {
      sub_1D5BC3420(&v3);
      v3 = 0u;
      v4 = 0u;
      v5 = 0;
      goto LABEL_7;
    }
  }

  sub_1D5B63F14(&v3, v7);
  sub_1D5B63F14(v7, &v3);
  if (*(&v4 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    v1 = sub_1D725AA4C();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return v1;
  }

LABEL_7:
  sub_1D68370E0(&v3);
  return 0;
}

uint64_t FeedGroupConfig.identifier.getter()
{
  v0 = sub_1D5C036AC();

  return v0;
}

uint64_t sub_1D5BC34D0()
{

  sub_1D725B97C();
}

Swift::Void __swiftcall SportsEmbedConfigurationManager.sceneWillEnterForeground()()
{

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }
}

uint64_t sub_1D5BC37A4()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E63B0];
  sub_1D5B6E12C(0, &qword_1EDF3C208, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  v13[1] = v11;
  v15 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D5BC3BE8(0, &qword_1EDF02418, &qword_1EDF181A0, v10);
  sub_1D5BC3C40(0, &qword_1EDF181A0, v10);
  *(swift_allocObject() + 16) = xmmword_1D727E3C0;
  v14 = 0;
  sub_1D725980C();
  v14 = 0x404E000000000000;
  sub_1D725980C();
  v14 = 0x4066800000000000;
  sub_1D725980C();
  v14 = 0x4072C00000000000;
  sub_1D725980C();
  v14 = 0x4082C00000000000;
  sub_1D725980C();
  v14 = 0x408C200000000000;
  sub_1D725980C();
  v14 = 0x40AC200000000000;
  sub_1D725980C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  result = sub_1D725982C();
  qword_1EDF18228 = result;
  return result;
}

void sub_1D5BC3BE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5BC3C40(255, a3, a4);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5BC3C40(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D725981C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PuzzleStatsServiceType.updateStats()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return v7(0, a1, a2);
}

uint64_t sub_1D5BC3DA8(uint64_t a1)
{
  v2 = a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64680;

  return sub_1D5BC3E40(v2);
}

uint64_t sub_1D5BC3E40(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  sub_1D5BC3F04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BC3F68, v1, 0);
}

void sub_1D5BC3F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BC3F68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 304);
  *(v0 + 32) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v4 = sub_1D603757C;
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 64);
    v7 = sub_1D726294C();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v9 = sub_1D5BC4174(&qword_1EDF0FE90, v8, type metadata accessor for PuzzleStatsService, &unk_1D7291D78);
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v9;
    *(v10 + 32) = v1;
    *(v10 + 40) = v6;
    swift_retain_n();
    v2 = sub_1D6BD1334(0, 0, v5, &unk_1D7291E50, v10);
    *(v0 + 48) = v2;
    *(v1 + 304) = v2;

    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v4 = sub_1D5D1BADC;
  }

  v3[1] = v4;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v3, v2, v11);
}

uint64_t sub_1D5BC4174(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D5BC41C8(uint64_t a1)
{
  v2 = type metadata accessor for FeedLoadingGate.Seal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5BC4224(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D5BC42E8(a1, v4, v5, v6, v7);
}

uint64_t sub_1D5BC42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 532) = a5;
  *(v5 + 272) = a4;
  sub_1D5B5B2A0(0);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = type metadata accessor for PuzzleStatsService.StatsResult(0);
  *(v5 + 296) = swift_task_alloc();
  sub_1D5BC4580(0);
  *(v5 + 304) = swift_task_alloc();
  v7 = type metadata accessor for PuzzleStatsState(0);
  *(v5 + 312) = v7;
  *(v5 + 320) = *(v7 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  v8 = sub_1D725891C();
  *(v5 + 344) = v8;
  *(v5 + 352) = *(v8 - 8);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BC45B4, a4, 0);
}

uint64_t type metadata accessor for PuzzleStatsService.StatsResult(uint64_t a1)
{
  result = qword_1EDF0FEF8;
  if (!qword_1EDF0FEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BC4504(uint64_t a1)
{
  sub_1D5B5B2A0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D5BC45B4()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  v0[48] = __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleStatsService: updating stats...", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v5 = v0[34];

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  if ((*(v7 + 72))(v6, v7))
  {
    v8 = sub_1D725C3FC();
    v9 = sub_1D7262EDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D5B42000, v8, v9, "PuzzleStatsService: empty puzzle history, exiting.", v10, 2u);
      MEMORY[0x1DA6FD500](v10, -1, -1);
    }
  }

  v11 = swift_task_alloc();
  v0[49] = v11;
  *v11 = v0;
  v11[1] = sub_1D5BC51CC;
  v12 = v0[47];

  return sub_1D5BC47DC(v12);
}

uint64_t sub_1D5BC47DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_1D725891C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BC48D8, v1, 0);
}

uint64_t sub_1D5BC48D8(uint64_t a1, uint64_t a2)
{
  v56 = v2;
  if (qword_1EDF181E8 != -1)
  {
    swift_once();
  }

  sub_1D5BC4174(qword_1EDF0FE98, a2, type metadata accessor for PuzzleStatsService, &unk_1D7291CF4);
  sub_1D725964C();
  if (*(v2 + 128) == 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v3 = sub_1D725C42C();
    __swift_project_value_buffer(v3, qword_1EDFFCFA8);
    v4 = sub_1D725C3FC();
    v5 = sub_1D7262EDC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D5B42000, v4, v5, "PuzzleStatsService: ignoring stored stats starting date.", v6, 2u);
      MEMORY[0x1DA6FD500](v6, -1, -1);
    }

    sub_1D72587BC();
LABEL_20:

    v49 = *(v2 + 8);

    return v49();
  }

  v7 = *(*(v2 + 24) + 296);
  *(v2 + 96) = v7;
  v8 = [v7 puzzleStatsStartDate];
  if (v8)
  {
    v9 = v8;
    sub_1D72588BC();

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v10 = *(v2 + 72);
    v11 = *(v2 + 80);
    v12 = *(v2 + 40);
    v13 = *(v2 + 48);
    v14 = sub_1D725C42C();
    __swift_project_value_buffer(v14, qword_1EDFFCFA8);
    (*(v13 + 16))(v10, v11, v12);
    v15 = sub_1D725C3FC();
    v16 = sub_1D7262EDC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v2 + 72);
    v19 = *(v2 + 40);
    v20 = *(v2 + 48);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55 = v22;
      *v21 = 136315138;
      sub_1D5BC4174(&qword_1EDF3C3B0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v23 = sub_1D72644BC();
      v25 = v24;
      (*(v20 + 8))(v18, v19);
      v26 = sub_1D5BC5100(v23, v25, &v55);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1D5B42000, v15, v16, "PuzzleStatsService: using a stats starting date of %s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1DA6FD500](v22, -1, -1);
      MEMORY[0x1DA6FD500](v21, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v18, v19);
    }

    v48 = *(*(v2 + 48) + 32);
    v48(*(v2 + 88), *(v2 + 80), *(v2 + 40));
    v48(*(v2 + 16), *(v2 + 88), *(v2 + 40));
    goto LABEL_20;
  }

  sub_1D72588CC();
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v27 = *(v2 + 56);
  v28 = *(v2 + 64);
  v29 = *(v2 + 40);
  v30 = *(v2 + 48);
  v31 = sub_1D725C42C();
  __swift_project_value_buffer(v31, qword_1EDFFCFA8);
  v32 = *(v30 + 16);
  v32(v27, v28, v29);
  v33 = sub_1D725C3FC();
  v34 = sub_1D7262EDC();
  v35 = os_log_type_enabled(v33, v34);
  v37 = *(v2 + 48);
  v36 = *(v2 + 56);
  v38 = *(v2 + 40);
  if (v35)
  {
    buf = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v54;
    *buf = 136315138;
    sub_1D5BC4174(&qword_1EDF3C3B0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v39 = v32;
    v40 = sub_1D72644BC();
    v42 = v41;
    v52 = v34;
    v45 = *(v37 + 8);
    v44 = v37 + 8;
    v43 = v45;
    v45(v36, v38);
    v46 = v40;
    v32 = v39;
    v47 = sub_1D5BC5100(v46, v42, &v55);

    *(buf + 4) = v47;
    _os_log_impl(&dword_1D5B42000, v33, v52, "PuzzleStatsService: setting stats starting date to %s.", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1DA6FD500](v54, -1, -1);
    MEMORY[0x1DA6FD500](buf, -1, -1);
  }

  else
  {

    v51 = *(v37 + 8);
    v44 = v37 + 8;
    v43 = v51;
    v51(v36, v38);
  }

  *(v2 + 104) = v44;
  *(v2 + 112) = v43;
  v32(*(v2 + 88), *(v2 + 64), *(v2 + 40));

  return MEMORY[0x1EEE6DFA0](sub_1D6037EF4, 0, 0);
}

uint64_t sub_1D5BC4F34()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF181F0 = result;
  return result;
}

unint64_t sub_1D5BC5100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D5C4229C(v11, 0, 0, 1, a1, a2);
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
    sub_1D5B76B10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1D5BC51CC()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1D5BC52DC, v1, 0);
}

uint64_t sub_1D5BC52DC()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_1D5BC5548;

  return FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)(0, ObjectType);
}

uint64_t sub_1D5BC53AC()
{
  if ([*(v0 + 32) respondsToSelector_])
  {
    v1 = [*(v0 + 32) fetchedAppConfiguration];
    if (v1)
    {
LABEL_5:
      v2 = *(v0 + 8);

      return v2(v1);
    }
  }

  if (*(v0 + 64) == 1)
  {
    v1 = [*(v0 + 32) possiblyUnfetchedAppConfiguration];
    goto LABEL_5;
  }

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = sub_1D5B5534C(0, &qword_1EDF1A890, &protocolRef_FCNewsAppConfiguration);
  *v5 = v0;
  v5[1] = sub_1D611E160;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000001D73CA350, sub_1D611E5DC, v4, v6);
}

uint64_t sub_1D5BC5548(uint64_t a1)
{
  v4 = *v2;
  v4[51] = v1;

  v5 = v4[34];
  if (v1)
  {
    v6 = sub_1D60376F4;
  }

  else
  {
    v4[52] = a1;
    v6 = sub_1D5BC5684;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}