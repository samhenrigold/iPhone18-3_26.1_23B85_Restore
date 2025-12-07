void sub_1D22D647C(uint64_t result)
{
  if (*(v1 + 125) == 1)
  {
    *(v1 + 125) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22D6580(char a1)
{
  if (*(v1 + 124))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719D8();
  }

  else
  {
    *(v1 + 124) = 0;
    sub_1D22C3158(0);
  }

  return sub_1D22CB294(a1 & 1, 0, 0);
}

uint64_t sub_1D22D66B0(uint64_t a1)
{
  swift_getKeyPath();
  v24 = v1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v1 + 80, &v25, &qword_1EC6D9A58, &qword_1D287F000);
  v3 = v27;
  if (!v27)
  {
    sub_1D22BD238(&v25, &qword_1EC6D9A58, &qword_1D287F000);
    CharacterAsset.id.getter();
    goto LABEL_10;
  }

  v4 = v28;
  v5 = __swift_project_boxed_opaque_existential_1(&v25, v27);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  sub_1D22BD238(&v25, &qword_1EC6D9A58, &qword_1D287F000);
  v10 = (*(*(*(v4 + 8) + 8) + 16))(v3);
  v12 = v11;
  (*(v6 + 8))(v9, v3);
  v13 = CharacterAsset.id.getter();
  if (!v12)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v10 == v13 && v12 == v14)
  {
  }

  v16 = sub_1D2879618();

  if ((v16 & 1) == 0)
  {
LABEL_11:
    v18 = sub_1D23C6DDC();
    v19 = CharacterAsset.id.getter();
    sub_1D2612E14(v19, v20);

    v21 = sub_1D23C6DDC();
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1D2879168();
    MEMORY[0x1D38A0C50](0xD000000000000051, 0x80000001D28AFB30);
    v22 = CharacterAsset.id.getter();
    MEMORY[0x1D38A0C50](v22);

    sub_1D255B4E8(0, v25, v26);

    v27 = type metadata accessor for CharacterAsset(0);
    v28 = sub_1D22D7678(&qword_1EC6D9A78, type metadata accessor for CharacterAsset, &unk_1D289B5E4);
    v23 = __swift_allocate_boxed_opaque_existential_1(&v25);
    sub_1D22D71C0(a1, v23, type metadata accessor for CharacterAsset);
    sub_1D22CE0DC(&v25);
    return sub_1D22BD238(&v25, &unk_1EC6E1D30, &qword_1D2892FF0);
  }

  return result;
}

uint64_t sub_1D22D6BCC()
{
  v2 = *(sub_1D2871818() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D22BDFF8;

  return sub_1D22CCB98(v4, v5, v6, v7, v8, v0 + v3);
}

uint64_t sub_1D22D6CE4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D22D6CF8(result, a2);
  }

  return result;
}

uint64_t sub_1D22D6CF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }

    sub_1D2870F78();
  }

  return sub_1D2870F78();
}

uint64_t sub_1D22D6D4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D22D6D60(result, a2);
  }

  return result;
}

uint64_t sub_1D22D6D60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D22D6E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D22D6EF4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *(v3 + *a1);
  *(v3 + v4) = *(v2 + 24);
  return a2(v5);
}

uint64_t sub_1D22D6FE8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t sub_1D22D7044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1D22D70A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1D22D7158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D22D71C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D22D7228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D22D7288()
{
  result = qword_1EC6E1DC0;
  if (!qword_1EC6E1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1DC0);
  }

  return result;
}

uint64_t keypath_set_43Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1D2870F68();
  return a5(v7, v6);
}

uint64_t sub_1D22D7384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D22D7408(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2871818() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PlaygroundImage(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BC8FC;

  return sub_1D22C4D00(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1D22D7568()
{
  v2 = *(type metadata accessor for PlaygroundImage(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D22BDFF8;

  return sub_1D22C5174(v4, v5, v6, v0 + v3);
}

uint64_t sub_1D22D7678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D22D76CC()
{
  result = qword_1EC6D9AA8;
  if (!qword_1EC6D9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9AA8);
  }

  return result;
}

uint64_t sub_1D22D7720(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = (*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context) + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription);
    *v5 = a1;
    v5[1] = a2;
    sub_1D2870F68();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D22D7A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__selectedCameraImage;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &unk_1EC6DE5A0, &unk_1D287F0E0);
}

uint64_t sub_1D22D7B58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &unk_1EC6DE5A0, &unk_1D287F0E0);
  return sub_1D22C7EF8(v4);
}

uint64_t sub_1D22D7C04@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v45) = a3;
  v6 = sub_1D28764E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ComposingFooterView(0);
  v11 = (a4 + v10[5]);
  v12 = type metadata accessor for KeyboardEventListener();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_targetsOfInterest] = 1;
  v49.receiver = v13;
  v49.super_class = v12;
  v46 = objc_msgSendSuper2(&v49, sel_init);
  sub_1D28772F8();
  v18 = v48;
  *v11 = v47;
  v11[1] = v18;
  v19 = v10[6];
  *(a4 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  v20 = v10[7];
  *(a4 + v20) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v21 = v10[8];
  *(a4 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB0, &qword_1D2886070);
  swift_storeEnumTagMultiPayload();
  v22 = a4 + v10[9];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a4 + v10[10];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a4 + v10[11];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a4 + v10[12];
  type metadata accessor for ComposingAnimationCoordinator(0);
  sub_1D22EDBA4(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
  *v25 = sub_1D28744C8();
  *(v25 + 8) = v26 & 1;
  v27 = a4 + v10[13];
  LOBYTE(v46) = 1;
  sub_1D28772F8();
  v28 = v48;
  *v27 = v47;
  *(v27 + 8) = v28;
  v29 = a4 + v10[14];
  LOBYTE(v46) = 1;
  sub_1D28772F8();
  v30 = v48;
  *v29 = v47;
  *(v29 + 8) = v30;
  swift_getKeyPath();
  sub_1D28746D8();
  v47 = 0x4066C00000000000;
  (*(v7 + 104))(v9, *MEMORY[0x1E6980F00], v6);
  sub_1D22BFBB8();
  sub_1D2874748();
  v31 = a4 + v10[18];
  LOBYTE(v46) = 0;
  sub_1D28772F8();
  v32 = v48;
  *v31 = v47;
  *(v31 + 8) = v32;
  v33 = v10[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB8, &qword_1D287F6C0);
  v34 = sub_1D2875808();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D287F500;
  sub_1D28757E8();
  v38 = sub_1D2400610(v37);
  swift_setDeallocating();
  (*(v35 + 8))(v37 + v36, v34);
  swift_deallocClassInstance();
  *(a4 + v33) = v38;
  v39 = a4 + v10[20];
  *v39 = sub_1D2875798();
  *(v39 + 8) = v40;
  *(v39 + 16) = v41 & 1;
  *(v39 + 24) = v42;
  type metadata accessor for ComposingFooterViewModel(0);
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  result = sub_1D2877638();
  v44 = a4 + v10[16];
  *v44 = a2;
  *(v44 + 8) = BYTE4(v45) & 1;
  return result;
}

uint64_t type metadata accessor for ComposingFooterView(uint64_t a1)
{
  result = qword_1ED8A1DF8;
  if (!qword_1ED8A1DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D22D81B0()
{
  v1 = v0;
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ComposingFooterView(0);
  v7 = v1 + *(v6 + 44);
  if (*(v7 + 8) == 1)
  {
    v16 = *v7;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v8 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v16 = off_1ED8A4930;
  sub_1D22EDBA4(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v9 = sub_1D23CDCA0();

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
    sub_1D28746B8();
    if (v17 == 1)
    {
      if (v16)
      {
        v10 = 1;
      }

      else
      {
        v11 = (v1 + *(v6 + 72));
        v12 = *v11;
        v13 = *(v11 + 1);
        LOBYTE(v16) = v12;
        v17 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
        sub_1D2877308();
        v10 = v15[15] ^ 1;
      }
    }

    else
    {
      sub_1D2273818(v16, 0);
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D22D8488()
{
  v0 = sub_1D2875E18();
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v32 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v37 = (&v31 - v10);
  v11 = sub_1D28720D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1D28720C8();
  (*(v12 + 104))(v14, *MEMORY[0x1E696E3E8], v11);
  sub_1D22EDBA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8], MEMORY[0x1E696E408]);
  sub_1D2878368();
  sub_1D2878368();
  if (v40 == v38 && v41 == v39)
  {
    v18 = *(v12 + 8);
    v18(v14, v11);
    v18(v17, v11);

    goto LABEL_5;
  }

  v19 = sub_1D2879618();
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);

  v21 = 0;
  if (v19)
  {
LABEL_5:
    type metadata accessor for ComposingFooterView(0);
    v22 = v37;
    sub_1D24CC0C4(v37);
    v24 = v35;
    v23 = v36;
    (*(v35 + 104))(v8, *MEMORY[0x1E697FF38], v36);
    (*(v24 + 56))(v8, 0, 1, v23);
    v25 = *(v34 + 48);
    sub_1D22BD1D0(v22, v3, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD1D0(v8, &v3[v25], &qword_1EC6D99B8, &unk_1D287E890);
    v26 = *(v24 + 48);
    if (v26(v3, 1, v23) == 1)
    {
      sub_1D22BD238(v8, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v22, &qword_1EC6D99B8, &unk_1D287E890);
      if (v26(&v3[v25], 1, v23) == 1)
      {
        sub_1D22BD238(v3, &qword_1EC6D99B8, &unk_1D287E890);
        v21 = 1;
        return v21 & 1;
      }
    }

    else
    {
      v27 = v33;
      sub_1D22BD1D0(v3, v33, &qword_1EC6D99B8, &unk_1D287E890);
      if (v26(&v3[v25], 1, v23) != 1)
      {
        v28 = v32;
        (*(v24 + 32))(v32, &v3[v25], v23);
        sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
        v21 = sub_1D2877F98();
        v29 = *(v24 + 8);
        v29(v28, v23);
        sub_1D22BD238(v8, &qword_1EC6D99B8, &unk_1D287E890);
        sub_1D22BD238(v37, &qword_1EC6D99B8, &unk_1D287E890);
        v29(v27, v23);
        sub_1D22BD238(v3, &qword_1EC6D99B8, &unk_1D287E890);
        return v21 & 1;
      }

      sub_1D22BD238(v8, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v37, &qword_1EC6D99B8, &unk_1D287E890);
      (*(v24 + 8))(v27, v23);
    }

    sub_1D22BD238(v3, &qword_1EC6E0DB0, &qword_1D288C390);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1D22D8AC4()
{
  v58 = sub_1D2875E18();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v50 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v50 - v8);
  v10 = sub_1D28720D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v50 - v15;
  v16 = sub_1D2875628();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ComposingFooterView(0);
  v20 = *(v54 + 36);
  v60 = v0;
  v21 = v0 + v20;
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v23 = sub_1D28762E8();
    v24 = v9;
    v25 = v13;
    v26 = v24;
    v27 = v11;
    v28 = v23;
    sub_1D2873BE8();

    v11 = v27;
    v29 = v26;
    v13 = v25;
    v9 = v29;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v22, 0);
    (*(v17 + 8))(v19, v16);
    if (v61 != 1)
    {
      goto LABEL_6;
    }
  }

  v30 = v53;
  sub_1D28720C8();
  (*(v11 + 104))(v13, *MEMORY[0x1E696E3D8], v10);
  sub_1D22EDBA4(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8], MEMORY[0x1E696E400]);
  v31 = sub_1D2877F98();
  v32 = *(v11 + 8);
  v32(v13, v10);
  v32(v30, v10);
  if (v31)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
    sub_1D2877618();
    v48 = v61;
    swift_getKeyPath();
    v61 = v48;
    sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719E8();

    v47 = *(v48 + 124);

    return v47;
  }

LABEL_6:
  sub_1D24CC0C4(v9);
  v33 = v56;
  v34 = v58;
  v35 = v59;
  (*(v56 + 104))(v59, *MEMORY[0x1E697FF38], v58);
  (*(v33 + 56))(v35, 0, 1, v34);
  v36 = *(v55 + 48);
  v37 = v57;
  sub_1D22BD1D0(v9, v57, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v35, v37 + v36, &qword_1EC6D99B8, &unk_1D287E890);
  v38 = *(v33 + 48);
  if (v38(v37, 1, v34) == 1)
  {
    sub_1D22BD238(v35, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v9, &qword_1EC6D99B8, &unk_1D287E890);
    if (v38(v37 + v36, 1, v34) == 1)
    {
      sub_1D22BD238(v37, &qword_1EC6D99B8, &unk_1D287E890);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v39 = v52;
  sub_1D22BD1D0(v37, v52, &qword_1EC6D99B8, &unk_1D287E890);
  if (v38(v37 + v36, 1, v34) == 1)
  {
    sub_1D22BD238(v59, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v9, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v33 + 8))(v39, v34);
LABEL_11:
    sub_1D22BD238(v37, &qword_1EC6E0DB0, &qword_1D288C390);
    goto LABEL_15;
  }

  v40 = v37 + v36;
  v41 = v51;
  (*(v33 + 32))(v51, v40, v34);
  sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v42 = v39;
  v43 = sub_1D2877F98();
  v44 = *(v33 + 8);
  v44(v41, v34);
  sub_1D22BD238(v59, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v9, &qword_1EC6D99B8, &unk_1D287E890);
  v44(v42, v34);
  sub_1D22BD238(v37, &qword_1EC6D99B8, &unk_1D287E890);
  if ((v43 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v45 = v61;
  swift_getKeyPath();
  v61 = v45;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v46 = *(v45 + 127);

  if ((v46 & 1) == 0)
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1D22D9330@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1D2875E18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v29 - v14);
  type metadata accessor for ComposingFooterView(0);
  sub_1D24CC0C4(v15);
  (*(v2 + 104))(v12, *MEMORY[0x1E697FF38], v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_1D22BD1D0(v15, v7, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v12, &v16[v7], &qword_1EC6D99B8, &unk_1D287E890);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
    if (v17(&v16[v7], 1, v1) == 1)
    {
      sub_1D22BD238(v7, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_10:
      v27 = *MEMORY[0x1E697E6E8];
      v28 = sub_1D2874E88();
      (*(*(v28 - 8) + 104))(v32, v27, v28);
      sub_1D22EDBA4(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
      result = sub_1D2877F98();
      if ((result & 1) == 0)
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    sub_1D22BD1D0(v7, v31, &qword_1EC6D99B8, &unk_1D287E890);
    if (v17(&v16[v7], 1, v1) != 1)
    {
      goto LABEL_9;
    }

    sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
    v18 = *(v2 + 8);
    v2 += 8;
    v18(v31, v1);
  }

  sub_1D22BD238(v7, &qword_1EC6E0DB0, &qword_1D288C390);
  while (1)
  {
    v19 = *MEMORY[0x1E697E6C0];
    v20 = sub_1D2874E88();
    v1 = v32;
    (*(*(v20 - 8) + 104))(v32, v19, v20);
    sub_1D22EDBA4(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1D2877F98();
    if (result)
    {
      return result;
    }

    __break(1u);
LABEL_9:
    v22 = &v16[v7];
    v23 = v30;
    (*(v2 + 32))(v30, v22, v1);
    sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
    v24 = v31;
    v25 = sub_1D2877F98();
    v26 = *(v2 + 8);
    v2 += 8;
    v26(v23, v1);
    v16 = &unk_1D287E890;
    sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
    v26(v24, v1);
    sub_1D22BD238(v7, &qword_1EC6D99B8, &unk_1D287E890);
    if (v25)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_1D22D98C8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D08, &qword_1D287FD98);
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v65 - v4;
  v5 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CF8, &qword_1D287FD90);
  v76 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v75 = &v65 - v7;
  v8 = sub_1D28720D8();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v65 - v11;
  v67 = sub_1D2875628();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2875E18();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v65 - v26);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CE8, &qword_1D287FD88);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v82 = &v65 - v30;
  v78 = type metadata accessor for ComposingFooterView(0);
  v79 = v2;
  sub_1D24CC0C4(v27);
  (*(v14 + 104))(v24, *MEMORY[0x1E697FF38], v13);
  (*(v14 + 56))(v24, 0, 1, v13);
  v31 = *(v17 + 56);
  sub_1D22BD1D0(v27, v19, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v24, &v19[v31], &qword_1EC6D99B8, &unk_1D287E890);
  v32 = *(v14 + 48);
  if (v32(v19, 1, v13) != 1)
  {
    sub_1D22BD1D0(v19, v80, &qword_1EC6D99B8, &unk_1D287E890);
    if (v32(&v19[v31], 1, v13) != 1)
    {
      v40 = v72;
      (*(v14 + 32))(v72, &v19[v31], v13);
      sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v41 = v80;
      v42 = sub_1D2877F98();
      v43 = *(v14 + 8);
      v43(v40, v13);
      sub_1D22BD238(v24, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v27, &qword_1EC6D99B8, &unk_1D287E890);
      v43(v41, v13);
      sub_1D22BD238(v19, &qword_1EC6D99B8, &unk_1D287E890);
      v35 = v79;
      v34 = v82;
      if ((v42 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_1D22BD238(v24, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v27, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v14 + 8))(v80, v13);
    v34 = v82;
LABEL_6:
    sub_1D22BD238(v19, &qword_1EC6E0DB0, &qword_1D288C390);
    goto LABEL_7;
  }

  sub_1D22BD238(v24, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v27, &qword_1EC6D99B8, &unk_1D287E890);
  v33 = v32(&v19[v31], 1, v13);
  v34 = v82;
  if (v33 != 1)
  {
    goto LABEL_6;
  }

  sub_1D22BD238(v19, &qword_1EC6D99B8, &unk_1D287E890);
  v35 = v79;
LABEL_9:
  v44 = &v35[*(v78 + 36)];
  v45 = *v44;
  if (v44[8] == 1)
  {
    if ((v45 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v46 = sub_1D28762E8();
    sub_1D2873BE8();

    v47 = v65;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v45, 0);
    (*(v66 + 8))(v47, v67);
    if (v88 != 1)
    {
LABEL_14:
      v54 = sub_1D2875BD8();
      MEMORY[0x1EEE9AC00](v54);
      *(&v65 - 2) = v35;
      *(&v65 - 8) = v74 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D10, &qword_1D287FDA0);
      sub_1D22ECE10();
      v55 = v75;
      sub_1D28745C8();
      v56 = sub_1D22BB9D8(&qword_1EC6D9D00, &qword_1EC6D9CF8, &qword_1D287FD90, MEMORY[0x1E697BEF0]);
      v57 = v77;
      v58 = v84;
      MEMORY[0x1D389E720](v55, v84, v56);
      v60 = v85;
      v59 = v86;
      v61 = v81;
      (*(v85 + 16))(v81, v57, v86);
      (*(v60 + 56))(v61, 0, 1, v59);
      v88 = v58;
      v89 = v56;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x1D389E750](v61, v59, OpaqueTypeConformance2);
      sub_1D22BD238(v61, &qword_1EC6D9CE8, &qword_1D287FD88);
      (*(v60 + 8))(v57, v59);
      (*(v76 + 8))(v55, v58);
      goto LABEL_15;
    }
  }

  v48 = v68;
  sub_1D28720C8();
  v50 = v69;
  v49 = v70;
  v51 = v71;
  (*(v70 + 104))(v69, *MEMORY[0x1E696E3D8], v71);
  sub_1D22EDBA4(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8], MEMORY[0x1E696E400]);
  v52 = sub_1D2877F98();
  v53 = *(v49 + 8);
  v53(v50, v51);
  v53(v48, v51);
  if ((v52 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v36 = v86;
  v37 = v81;
  (*(v85 + 56))(v81, 1, 1, v86);
  v38 = sub_1D22BB9D8(&qword_1EC6D9D00, &qword_1EC6D9CF8, &qword_1D287FD90, MEMORY[0x1E697BEF0]);
  v88 = v84;
  v89 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D389E750](v37, v36, v39);
  sub_1D22BD238(v37, &qword_1EC6D9CE8, &qword_1D287FD88);
LABEL_15:
  v63 = sub_1D22ECD10();
  MEMORY[0x1D389E720](v34, v83, v63);
  return sub_1D22BD238(v34, &qword_1EC6D9CE8, &qword_1D287FD88);
}

uint64_t sub_1D22DA438@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  v4 = sub_1D2874AE8();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28756D8();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComposingFooterView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D30, &qword_1D287FDB0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D20, &qword_1D287FDA8);
  MEMORY[0x1EEE9AC00](v34);
  v20 = &v34 - v19;
  sub_1D2874278();
  sub_1D22ED168(a1, &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingFooterView);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_1D22ED100(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ComposingFooterView);
  MEMORY[0x1D389FDF0](v14, sub_1D22ED07C, v22);
  if (qword_1EC6D7E58 != -1)
  {
    swift_once();
  }

  if (qword_1EC6D7E70 != -1)
  {
    swift_once();
  }

  sub_1D28756C8();
  sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30, &qword_1D287FDB0, MEMORY[0x1E697D680]);
  sub_1D22EDBA4(&qword_1EC6D7920, MEMORY[0x1E697C4D0], MEMORY[0x1E697C4C8]);
  v23 = v36;
  sub_1D28767A8();
  (*(v35 + 8))(v8, v23);
  (*(v16 + 8))(v18, v15);
  v24 = &v20[*(v34 + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D38, &qword_1D287FDB8) + 28);
  v26 = *MEMORY[0x1E697DC10];
  v27 = sub_1D2874448();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  v28 = v37;
  sub_1D2874AB8();
  sub_1D2874C48();
  sub_1D22ECF04();
  v29 = v41;
  sub_1D2876A18();
  (*(v38 + 8))(v28, v39);
  sub_1D22BD238(v20, &qword_1EC6D9D20, &qword_1D287FDA8);
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = (v40 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D10, &qword_1D287FDA0);
  v33 = (v29 + *(result + 36));
  *v33 = KeyPath;
  v33[1] = sub_1D22C03D8;
  v33[2] = v31;
  return result;
}

uint64_t sub_1D22DAA00(uint64_t a1)
{
  MEMORY[0x1D38A0390](0.35, 0.8, 0.0);
  sub_1D2874BE8();
}

uint64_t sub_1D22DAA88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  sub_1D22CC218();
}

uint64_t sub_1D22DAAE4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_1D28764E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D78, &qword_1D287FF58);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D68, &qword_1D287FF48);
  MEMORY[0x1EEE9AC00](v32);
  v16 = &v31 - v15;
  *v14 = 0xD00000000000001CLL;
  *(v14 + 1) = 0x80000001D28AFD40;
  v17 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  *&v38 = qword_1ED8B0018;
  sub_1D2870F78();
  v18 = sub_1D28748D8();
  *&v38 = sub_1D2877098();
  v19 = sub_1D28748D8();
  (*(v9 + 104))(v11, *MEMORY[0x1E6980EF8], v8);
  v20 = sub_1D28763F8();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_1D2876418();
  v21 = sub_1D2876458();
  sub_1D22BD238(v7, &qword_1EC6D9D40, &qword_1D28804D0);
  (*(v9 + 8))(v11, v8);
  v22 = type metadata accessor for ComposingFooterButtonImage.Configuration(0);
  v23 = v22[11];
  v24 = *MEMORY[0x1E69816E0];
  v25 = sub_1D2877218();
  (*(*(v25 - 8) + 104))(&v14[v23], v24, v25);
  *&v14[v22[5]] = v21;
  *&v14[v22[6]] = 0;
  *&v14[v22[7]] = 0x4042000000000000;
  *&v14[v22[8]] = v18;
  *&v14[v22[9]] = v19;
  v14[v22[10]] = 1;
  sub_1D2877848();
  sub_1D28748C8();
  v26 = &v14[*(v12 + 36)];
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  *(v26 + 2) = v40;
  sub_1D22ED3DC();
  sub_1D2876CC8();
  sub_1D22BD238(v14, &qword_1EC6D9D78, &qword_1D287FF58);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v28 = qword_1ED8B0058;
  sub_1D28718C8();
  v36 = sub_1D28780E8();
  v37 = v29;
  sub_1D22BD06C();
  sub_1D2874F18();

  return sub_1D22BD238(v16, &qword_1EC6D9D68, &qword_1D287FF48);
}

uint64_t sub_1D22DB0C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D28764E8();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for ComposingFooterView(0);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v28 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26[-v12];
  sub_1D22ED168(v2, &v26[-v12], type metadata accessor for ComposingFooterView);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  sub_1D22ED100(v13, v29 + v14, type metadata accessor for ComposingFooterView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  sub_1D23C6CA0();
  v15 = _SystemPhotoLibrary.photoLibrary.getter();

  if (v15)
  {
  }

  v27 = v15 != 0;
  sub_1D22ED168(v2, v10, type metadata accessor for ComposingFooterView);
  v16 = swift_allocObject();
  sub_1D22ED100(v10, v16 + v14, type metadata accessor for ComposingFooterView);
  v17 = v28;
  sub_1D22ED168(v2, v28, type metadata accessor for ComposingFooterView);
  v18 = swift_allocObject();
  sub_1D22ED100(v17, v18 + v14, type metadata accessor for ComposingFooterView);
  sub_1D2877618();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D70, &qword_1D287FF50);
  sub_1D24CC0C4((a1 + v19[15]));
  sub_1D24CC0C4((a1 + v19[16]));
  *a1 = CGRectMake;
  *(a1 + 8) = 0;
  v20 = v29;
  *(a1 + 16) = sub_1D22ED4EC;
  *(a1 + 24) = v20;
  *(a1 + 32) = v27;
  *(a1 + 40) = sub_1D22ED568;
  *(a1 + 48) = v16;
  *(a1 + 56) = 1;
  *(a1 + 64) = sub_1D22ED5F4;
  *(a1 + 72) = v18;
  *(a1 + 80) = 0;
  v34 = 0x406F400000000000;
  (*(v32 + 104))(v31, *MEMORY[0x1E6980EF8], v33);
  sub_1D22BFBB8();
  sub_1D2874748();
  *(a1 + v19[18]) = 0;
  v21 = a1 + v19[19];
  result = sub_1D2875798();
  *v21 = result;
  *(v21 + 8) = v23;
  *(v21 + 16) = v24 & 1;
  *(v21 + 24) = v25;
  return result;
}

uint64_t sub_1D22DB4FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v3 = v9[1];
  v4 = sub_1D28785F8();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1D2878568();
  sub_1D2870F78();
  v5 = sub_1D2878558();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  sub_1D22AE01C(0, 0, v2, &unk_1D287FF70, v6);
}

uint64_t sub_1D22DB64C(uint64_t a1, void (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  a2(1);
}

__n128 sub_1D22DB6AC@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28714D8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  sub_1D22DBAB8(v1, a1);
  sub_1D22DC0C4(v15);
  sub_1D22ED168(v15, v12, type metadata accessor for PhotoSharingConfirmationParams);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D50, &qword_1D287FE68) + 36);
  v36 = a1;
  v17 = a1 + v16;
  sub_1D22ED168(v12, v17, type metadata accessor for PhotoSharingConfirmationParams);
  v18 = v17 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
  v19 = sub_1D2872008();
  (*(*(v19 - 8) + 16))(v18, v12, v19);
  v20 = &v12[v10[7]];
  v22 = *v20;
  v21 = *(v20 + 1);
  v23 = v12[v10[8]];
  LOBYTE(v10) = v12[v10[9]];
  v24 = type metadata accessor for PhotoSharingViewConfiguration(0);
  v25 = (v18 + v24[5]);
  *v25 = v22;
  v25[1] = v21;
  *(v18 + v24[6]) = v23;
  *(v18 + v24[7]) = v10;
  sub_1D2870F68();
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v26 = v34;
  v27 = __swift_project_value_buffer(v34, qword_1ED8B0060);
  (*(v33 + 16))(v7, v27, v26);
  sub_1D28718C8();
  sub_1D2871508();
  sub_1D22ED1D0(v12, type metadata accessor for PhotoSharingConfirmationParams);
  sub_1D22ED1D0(v15, type metadata accessor for PhotoSharingConfirmationParams);
  sub_1D22DC50C(v40);
  v37 = 0;
  sub_1D28772F8();
  LOBYTE(v26) = v38[0];
  v28 = v39;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C28, &qword_1D287FB78);
  v30 = v36 + *(v29 + 36);
  v31 = v40[3];
  *(v30 + 32) = v40[2];
  *(v30 + 48) = v31;
  *(v30 + 64) = v40[4];
  result = v40[1];
  *v30 = v40[0];
  *(v30 + 16) = result;
  *(v30 + 80) = v26;
  *(v30 + 81) = v38[0];
  *(v30 + 84) = *(v38 + 3);
  *(v30 + 88) = v28;
  return result;
}

double sub_1D22DBAB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D2873998();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28779D8();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComposingFooterView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D60, &qword_1D287FF40);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  sub_1D22ED168(a1, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingFooterView);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_1D22ED100(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ComposingFooterView);
  v31 = a1;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D68, &qword_1D287FF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D70, &qword_1D287FF50);
  sub_1D22ED320();
  sub_1D22BB9D8(&qword_1EC6D8B28, &qword_1EC6D9D70, &qword_1D287FF50, &unk_1D287E8D0);
  v17 = v24;
  sub_1D2876518();
  sub_1D28779C8();
  sub_1D22BB9D8(&qword_1EC6D7780, &qword_1EC6D9D60, &qword_1D287FF40, MEMORY[0x1E697CD28]);
  sub_1D2876FC8();
  (*(v25 + 8))(v7, v26);
  (*(v12 + 8))(v14, v11);
  if (qword_1ED8A6B68 != -1)
  {
    swift_once();
  }

  v18 = v29;
  v19 = __swift_project_value_buffer(v29, qword_1ED8B02B8);
  (*(v28 + 16))(v27, v19, v18);
  v32 = sub_1D2877108();
  v20 = sub_1D28748D8();
  sub_1D22ED498();
  v21 = sub_1D2877608();
  v22 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D80, &unk_1D287FF60) + 36);
  *v22 = v21;
  *(v22 + 8) = v20;
  result = 1.0;
  *(v22 + 16) = xmmword_1D287F510;
  *(v22 + 32) = 0x3FC999999999999ALL;
  return result;
}

uint64_t sub_1D22DBF78(char a1)
{
  v1 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v2 = *(v5 + 126);
  if (v2 == v1)
  {
    *(v5 + 126) = v1;
    sub_1D22C3594(v2);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719D8();
  }
}

int *sub_1D22DC0C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ComposingFooterView(0);
  v34 = *(v4 - 8);
  v33 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29[-v8];
  sub_1D2877618();
  v10 = v38;
  swift_getKeyPath();
  v38 = v10;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v12 = sub_1D2872008();
  (*(*(v12 - 8) + 16))(a1, v10 + v11, v12);

  sub_1D2877618();
  v13 = v35;
  swift_getKeyPath();
  v35 = v13;
  sub_1D28719E8();

  v14 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName + 8);
  v31 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName);
  sub_1D2870F68();

  sub_1D2877618();
  v15 = v35;
  swift_getKeyPath();
  v35 = v15;
  sub_1D28719E8();

  v30 = *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationContainsPerson);

  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v7 + 8))(v9, v6);
  v16 = v35;
  v17 = v36;
  LOBYTE(v9) = v37;
  v18 = v32;
  sub_1D22ED168(v2, v32, type metadata accessor for ComposingFooterView);
  v19 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v20 = swift_allocObject();
  sub_1D22ED100(v18, v20 + v19, type metadata accessor for ComposingFooterView);
  sub_1D2877618();
  v21 = sub_1D22CE2AC();
  v23 = v22;

  result = type metadata accessor for PhotoSharingConfirmationParams(0);
  v25 = (a1 + result[5]);
  *v25 = v31;
  v25[1] = v14;
  *(a1 + result[6]) = v30;
  *(a1 + result[7]) = 0;
  v26 = a1 + result[8];
  *v26 = v16;
  *(v26 + 8) = v17;
  *(v26 + 16) = v9;
  v27 = (a1 + result[9]);
  *v27 = sub_1D22ED288;
  v27[1] = v20;
  v28 = (a1 + result[10]);
  *v28 = v21;
  v28[1] = v23;
  return result;
}

void *sub_1D22DC50C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1D2871F38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2872008();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871EC8();
  sub_1D2871F58();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6D9D58, &qword_1D287FE70);
    v24 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v24 = sub_1D2871ED8();
    v15 = v16;
    (*(v8 + 8))(v10, v7);
  }

  (*(v12 + 8))(v14, v11);
  v17 = v25;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v26 + 8))(v17, v2);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  sub_1D2877618();
  v21 = v27;
  result = sub_1D2877618();
  v23 = v27;
  *a1 = v24;
  *(a1 + 8) = v15;
  *(a1 + 16) = 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = sub_1D22ED230;
  *(a1 + 56) = v21;
  *(a1 + 64) = sub_1D22ED234;
  *(a1 + 72) = v23;
  return result;
}

uint64_t sub_1D22DC8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport) = 0;
  }
}

void sub_1D22DC9E4()
{
  v0 = sub_1D23C7CA8();
  v1 = sub_1D2878068();
  v8 = sub_1D2878068();
  v2 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v0 + 48))
  {
    sub_1D2870F68();
    v3 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v3, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v5 = sub_1D2878068();
  v6 = sub_1D2418030(v2);

  if (v6)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D22EDBA4(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v7 = sub_1D2877E78();
  }

  else
  {
    v7 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v1 withNullableUniqueStringID:v5 withPayload:v7];
}

uint64_t sub_1D22DCBC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for ComposingFooterView(0);
  v82 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v85 = v4;
  v81 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D2875E18();
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v74 = (&v70 - v16);
  v17 = sub_1D28720D8();
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v70 - v20;
  v21 = sub_1D2875628();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PresentationContentConfiguration(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v83 = (&v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8EE0, &unk_1D287CC40);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v70 - v27;
  v89 = v3;
  v28 = v1 + *(v3 + 40);
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    v30 = *v28;
    LOBYTE(v94) = v29;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v31 = sub_1D28762E8();
    v2 = v1;
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v29, 0);
    (*(v22 + 8))(v24, v21);
    v30 = v94;
  }

  if ((v30 - 5) > 1)
  {
    goto LABEL_16;
  }

  sub_1D28720C8();
  (*(v79 + 104))(v78, *MEMORY[0x1E696E3D8], v80);
  sub_1D22EDBA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8], MEMORY[0x1E696E408]);
  sub_1D2878368();
  sub_1D2878368();
  if (v92 == v90 && v93 == v91)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_1D2879618();
  }

  v33 = *(v79 + 8);
  v34 = v80;
  v33(v78, v80);
  v33(v77, v34);

  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

  v35 = v74;
  sub_1D24CC0C4(v74);
  v36 = v75;
  v37 = v73;
  (*(v75 + 104))(v14, *MEMORY[0x1E697FF38], v73);
  (*(v36 + 56))(v14, 0, 1, v37);
  v38 = *(v6 + 48);
  v39 = v76;
  sub_1D22BD1D0(v35, v76, &qword_1EC6D99B8, &unk_1D287E890);
  v40 = v39;
  sub_1D22BD1D0(v14, v39 + v38, &qword_1EC6D99B8, &unk_1D287E890);
  v41 = *(v36 + 48);
  if (v41(v39, 1, v37) == 1)
  {
    sub_1D22BD238(v14, &qword_1EC6D99B8, &unk_1D287E890);
    v42 = v76;
    sub_1D22BD238(v35, &qword_1EC6D99B8, &unk_1D287E890);
    if (v41(v42 + v38, 1, v37) == 1)
    {
      sub_1D22BD238(v42, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_19:
      v44 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v80 = v14;
  v43 = v72;
  sub_1D22BD1D0(v39, v72, &qword_1EC6D99B8, &unk_1D287E890);
  if (v41(v39 + v38, 1, v37) == 1)
  {
    sub_1D22BD238(v80, &qword_1EC6D99B8, &unk_1D287E890);
    v42 = v76;
    sub_1D22BD238(v74, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v75 + 8))(v43, v37);
LABEL_15:
    sub_1D22BD238(v42, &qword_1EC6E0DB0, &qword_1D288C390);
    goto LABEL_16;
  }

  v64 = v43;
  v65 = v75;
  v66 = v71;
  (*(v75 + 32))(v71, v40 + v38, v37);
  sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v67 = v40;
  v68 = sub_1D2877F98();
  v69 = *(v65 + 8);
  v69(v66, v37);
  sub_1D22BD238(v80, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v74, &qword_1EC6D99B8, &unk_1D287E890);
  v69(v64, v37);
  sub_1D22BD238(v67, &qword_1EC6D99B8, &unk_1D287E890);
  if (v68)
  {
    goto LABEL_19;
  }

LABEL_16:
  v44 = *(v2 + *(v89 + 19));
  sub_1D2870F68();
LABEL_17:
  v45 = v84;
  sub_1D24CC0C4(v84);
  v46 = v83;
  sub_1D24CB8C4(v44, v45, v83);

  sub_1D22BD238(v45, &qword_1EC6D99B8, &unk_1D287E890);
  v47 = *(v87 + 40);
  v48 = v87;
  KeyPath = swift_getKeyPath();
  v50 = v88;
  *&v88[v47] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB0, &qword_1D2886070);
  swift_storeEnumTagMultiPayload();
  v51 = v50 + *(v48 + 44);
  v52 = swift_getKeyPath();
  LOBYTE(v90) = 0;
  *v51 = v52;
  *(v51 + 89) = 0;
  sub_1D22ED168(v46, v50, type metadata accessor for PresentationContentConfiguration);
  sub_1D22DD7D4(v50 + *(v48 + 36));
  sub_1D22ED1D0(v46, type metadata accessor for PresentationContentConfiguration);
  v53 = v81;
  v89 = type metadata accessor for ComposingFooterView;
  sub_1D22ED168(v2, v81, type metadata accessor for ComposingFooterView);
  sub_1D2878568();
  v54 = sub_1D2878558();
  v55 = *(v82 + 80);
  v56 = (v55 + 32) & ~v55;
  v57 = swift_allocObject();
  v58 = MEMORY[0x1E69E85E0];
  *(v57 + 16) = v54;
  *(v57 + 24) = v58;
  sub_1D22ED100(v53, v57 + v56, type metadata accessor for ComposingFooterView);
  sub_1D22ED168(v2, v53, type metadata accessor for ComposingFooterView);
  v59 = sub_1D2878558();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = MEMORY[0x1E69E85E0];
  sub_1D22ED100(v53, v60 + v56, type metadata accessor for ComposingFooterView);
  sub_1D2877528();
  sub_1D22ED168(v2, v53, v89);
  v61 = swift_allocObject();
  sub_1D22ED100(v53, v61 + ((v55 + 16) & ~v55), type metadata accessor for ComposingFooterView);
  sub_1D22BB9D8(qword_1ED8A03A8, &qword_1EC6D8EE0, &unk_1D287CC40, &unk_1D288DB18);
  sub_1D22BA820();
  v62 = v88;
  sub_1D2876E48();

  return sub_1D22BD238(v62, &qword_1EC6D8EE0, &unk_1D287CC40);
}

uint64_t sub_1D22DD7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C70, &unk_1D28862B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v22 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v6 = *(*&v23[0] + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_characterEditingViewModel);
  sub_1D2870F78();

  if (v6)
  {
    v7 = type metadata accessor for CharacterEditingView(0);
    v8 = v7[5];
    *(v5 + v8) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
    swift_storeEnumTagMultiPayload();
    v9 = v5 + v7[6];
    *v9 = swift_getKeyPath();
    v9[8] = 0;
    v10 = v5 + v7[7];
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v11 = v5 + v7[8];
    sub_1D2870F78();
    sub_1D261ECDC(v23);
    v12 = v23[7];
    *(v11 + 6) = v23[6];
    *(v11 + 7) = v12;
    *(v11 + 16) = v24;
    v13 = v23[3];
    *(v11 + 2) = v23[2];
    *(v11 + 3) = v13;
    v14 = v23[5];
    *(v11 + 4) = v23[4];
    *(v11 + 5) = v14;
    v15 = v23[1];
    *v11 = v23[0];
    *(v11 + 1) = v15;
    v22[0] = v6;
    type metadata accessor for CharacterEditingViewModel(0);
    sub_1D28772F8();
    v16 = v22[2];
    *v5 = v22[1];
    v5[1] = v16;
    KeyPath = swift_getKeyPath();
    type metadata accessor for ComposingFooterView(0);
    v18 = (v5 + *(v2 + 36));
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C78, &qword_1D287FC70);
    sub_1D24CC0C4((v18 + *(v19 + 28)));

    *v18 = KeyPath;
    sub_1D22EC9BC(v5, a1, &qword_1EC6D9C70, &unk_1D28862B0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v3 + 56))(a1, v20, 1, v2);
}

uint64_t sub_1D22DDA6C@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v2 = *(v6 + 125);

  if (v2 == 1)
  {
    sub_1D2877618();
    swift_getKeyPath();
    sub_1D28719E8();

    v4 = *(v6 + 122);

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5 & 1;
  return result;
}

uint64_t sub_1D22DDBC4(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  if (v1 == *(v4 + 125))
  {
    *(v4 + 125) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22DDD08@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = type metadata accessor for ComposingFooterView(0);
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8EE8, &unk_1D287F920);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1D22DE01C(&v14 - v9);
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v5 + 8))(v7, v4);
  sub_1D22ED168(v1, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingFooterView);
  v11 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v12 = swift_allocObject();
  sub_1D22ED100(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ComposingFooterView);
  sub_1D22EC2B0(&qword_1ED89D210, &qword_1EC6D8EE8, &unk_1D287F920, sub_1D22BA8F8);
  sub_1D22BA820();
  sub_1D2876E48();

  return sub_1D22BD238(v10, &qword_1EC6D8EE8, &unk_1D287F920);
}

uint64_t sub_1D22DE01C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8EF8, &unk_1D287F930);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BC0, &qword_1D287FA48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v10 = *(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_facePickerCarouselViewModel);
  sub_1D2870F78();

  if (v10)
  {
    sub_1D2870F78();
    v11 = sub_1D2874F98();
    v12 = sub_1D2876358();
    *&v25 = v10;
    *(&v25 + 1) = v11;
    v26 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D8F00, &unk_1D287CC60);
    v14 = sub_1D22BAA10();
    v22 = v6;
    v15 = v2;
    v16 = v3;
    v17 = v14;
    sub_1D2876D38();

    v25 = xmmword_1D287F520;
    v23 = v13;
    v24 = v17;
    swift_getOpaqueTypeConformance2();
    sub_1D22BAAF0();
    sub_1D2876B18();

    v18 = v15;
    v6 = v22;
    (*(v16 + 8))(v5, v18);
    (*(v7 + 32))(a1, v9, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a1, v19, 1, v6);
}

uint64_t sub_1D22DE2DC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for ComposingFooterView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2875628();
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + *(v7 + 48);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v18 = *v16;
    v28 = v17;
  }

  else
  {
    v25 = v12;
    v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = v13;
    sub_1D2870F78();
    sub_1D2878A28();
    v20 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v17, 0);
    (*(v19 + 8))(v15, v25);
    v10 = v26;
    v18 = v28;
  }

  v21 = (v18 - 5) < 2;
  sub_1D22ED168(a1, v10, type metadata accessor for ComposingFooterView);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  result = sub_1D22ED100(v10, v23 + v22, type metadata accessor for ComposingFooterView);
  *a4 = v21;
  *(a4 + 8) = v27;
  *(a4 + 16) = v23;
  return result;
}

uint64_t sub_1D22DE560(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  if (*(v4 + 125))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719D8();
  }

  else
  {
    *(v4 + 125) = 0;
  }
}

uint64_t sub_1D22DE690@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C50, &qword_1D287FBF0);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v77 - v3;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C58, &qword_1D287FBF8);
  v78 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v77 = &v77 - v4;
  v95 = sub_1D28720D8();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v77 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v77 - v8;
  v88 = sub_1D2875EE8();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E88, &qword_1D287CC00);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E70, &unk_1D287CBF0);
  MEMORY[0x1EEE9AC00](v107);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C60, &qword_1D287FC00);
  v97 = *(v17 - 8);
  v98 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v77 - v18;
  v20 = type metadata accessor for ComposingFooterView(0);
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v77 - v25;
  sub_1D22ED168(v2, &v77 - v25, type metadata accessor for ComposingFooterView);
  v27 = *(v22 + 80);
  v84 = ~v27;
  v28 = (v27 + 16) & ~v27;
  v103 = v27;
  v104 = v28 + v23;
  v29 = swift_allocObject();
  v105 = v28;
  sub_1D22ED100(v26, v29 + v28, type metadata accessor for ComposingFooterView);
  v96 = v29;
  sub_1D22DF570(v2, sub_1D22EC1CC, v29, v12);
  v30 = *(v2 + *(v21 + 72) + 8);
  v109 = 1836019578;
  v110 = 0xE400000000000000;
  v108 = v19;
  if (v30)
  {
    v31 = 1;
  }

  else
  {
    sub_1D22EC2B0(&qword_1ED89D250, &qword_1EC6D8E88, &qword_1D287CC00, sub_1D22BA364);
    sub_1D2876CD8();
    v31 = 0;
  }

  sub_1D22BD238(v12, &qword_1EC6D8E88, &qword_1D287CC00);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C68, &qword_1D287FC08);
  (*(*(v32 - 8) + 56))(v14, v31, 1, v32);
  sub_1D22EC9BC(v14, v106, &qword_1EC6D8E70, &unk_1D287CBF0);
  v33 = v2;
  sub_1D22ED168(v2, v26, type metadata accessor for ComposingFooterView);
  sub_1D2878568();
  v34 = sub_1D2878558();
  v35 = (v103 + 32) & v84;
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  *(v36 + 16) = v34;
  *(v36 + 24) = v37;
  sub_1D22ED100(v26, v36 + v35, type metadata accessor for ComposingFooterView);
  v80 = type metadata accessor for ComposingFooterView;
  sub_1D22ED168(v2, v26, type metadata accessor for ComposingFooterView);
  v38 = sub_1D2878558();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = MEMORY[0x1E69E85E0];
  v81 = type metadata accessor for ComposingFooterView;
  sub_1D22ED100(v26, v39 + v35, type metadata accessor for ComposingFooterView);
  sub_1D2877528();
  v79 = v111;
  sub_1D22ED168(v2, v26, type metadata accessor for ComposingFooterView);
  v40 = swift_allocObject();
  sub_1D22ED100(v26, v40 + v105, type metadata accessor for ComposingFooterView);
  v41 = sub_1D2877348();
  v42 = v86;
  *v86 = v41;
  v43 = v87;
  v44 = v88;
  (*(v87 + 104))(v42, *MEMORY[0x1E697C8C0], v88);
  MEMORY[0x1D389EE20](2);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D8E78, &unk_1D287FC10);
  v46 = sub_1D22BA1C4();
  v82 = sub_1D22BA498();
  v83 = v46;
  v84 = v45;
  v47 = v106;
  sub_1D2876848();

  (*(v43 + 8))(v42, v44);
  sub_1D22BD238(v47, &qword_1EC6D8E70, &unk_1D287CBF0);
  v48 = v89;
  v49 = v91;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v90 + 8))(v48, v49);
  v51 = v113;
  v50 = v114;
  v52 = v85;
  sub_1D22ED168(v33, v85, v80);
  v106 = swift_allocObject();
  sub_1D22ED100(v52, v106 + v105, v81);
  v53 = v92;
  sub_1D28720C8();
  v54 = v94;
  v55 = v93;
  v56 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x1E696E3E8], v95);
  sub_1D22EDBA4(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8], MEMORY[0x1E696E400]);
  LOBYTE(v52) = sub_1D2877F98();
  v57 = *(v54 + 8);
  v57(v55, v56);
  v57(v53, v56);
  v91 = v50;
  if (v52)
  {
    v58 = v97;
    v59 = v98;
    v60 = v108;
    (*(v97 + 16))(v100, v108, v98);
    swift_storeEnumTagMultiPayload();
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EC0, &unk_1D287FC20);
    v109 = v107;
    v110 = v84;
    v111 = v83;
    v112 = v82;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE0, &unk_1D287CC40);
    v64 = sub_1D22BB9D8(qword_1ED8A03A8, &qword_1EC6D8EE0, &unk_1D287CC40, &unk_1D288DB18);
    v65 = sub_1D22BA820();
    v109 = v63;
    v110 = &type metadata for OBKTipsView;
    v111 = v64;
    v112 = v65;
    v66 = swift_getOpaqueTypeConformance2();
    v109 = v59;
    v110 = v61;
    v111 = OpaqueTypeConformance2;
    v112 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v59;
    sub_1D2875AF8();
  }

  else
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8EC0, &unk_1D287FC20);
    v109 = v107;
    v110 = v84;
    v111 = v83;
    v112 = v82;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE0, &unk_1D287CC40);
    v70 = sub_1D22BB9D8(qword_1ED8A03A8, &qword_1EC6D8EE0, &unk_1D287CC40, &unk_1D288DB18);
    v71 = sub_1D22BA820();
    v109 = v69;
    v110 = &type metadata for OBKTipsView;
    v111 = v70;
    v112 = v71;
    v76 = swift_getOpaqueTypeConformance2();
    v72 = v77;
    v67 = v98;
    v60 = v108;
    sub_1D2876E48();
    v107 = v51;
    v73 = v78;
    v74 = v102;
    (*(v78 + 16))(v100, v72, v102);
    swift_storeEnumTagMultiPayload();
    v109 = v67;
    v110 = v105;
    v111 = v68;
    v112 = v76;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();

    (*(v73 + 8))(v72, v74);
    v58 = v97;
  }

  return (*(v58 + 8))(v60, v67);
}

uint64_t sub_1D22DF500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  sub_1D22CB294(1, sub_1D22A577C, 0);
}

uint64_t sub_1D22DF570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a2;
  v98 = a3;
  v103 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v81 - v6;
  v93 = sub_1D28764E8();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ComposingRegularFooterButton(0);
  MEMORY[0x1EEE9AC00](v102);
  v94 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D48, &unk_1D287FE30);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v81 - v9;
  v86 = type metadata accessor for ComposingFooterButtonConfiguration.Regular(0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v82 = (&v81 - v12);
  v13 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = type metadata accessor for ComposingFooterButtonConfiguration.Compact(0);
  MEMORY[0x1EEE9AC00](v84);
  v88 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for ComposingCompactFooterButton(0);
  MEMORY[0x1EEE9AC00](v99);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v81 - v18;
  v19 = sub_1D2875E18();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v95 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v81 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v81 - v32);
  type metadata accessor for ComposingFooterView(0);
  v96 = a1;
  sub_1D24CC0C4(v33);
  (*(v20 + 104))(v30, *MEMORY[0x1E697FF38], v19);
  (*(v20 + 56))(v30, 0, 1, v19);
  v34 = *(v23 + 56);
  sub_1D22BD1D0(v33, v25, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v30, &v25[v34], &qword_1EC6D99B8, &unk_1D287E890);
  v35 = *(v20 + 48);
  if (v35(v25, 1, v19) == 1)
  {
    sub_1D22BD238(v30, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v33, &qword_1EC6D99B8, &unk_1D287E890);
    if (v35(&v25[v34], 1, v19) == 1)
    {
      sub_1D22BD238(v25, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_9:
      v57 = v83;
      sub_1D22E01F8(v83);
      v58 = v82;
      sub_1D22E0548(v82);
      v59 = v86;
      v60 = (v58 + *(v86 + 28));
      v61 = *v60;
      v62 = v60[1];
      v63 = v60[2];
      v64 = v60[3];
      sub_1D22ED0B0(*v60, v62, v63, v64);
      sub_1D22ED1D0(v58, type metadata accessor for ComposingFooterButtonConfiguration.Regular);
      LOBYTE(v58) = sub_1D22E0778();
      v65 = v85;
      sub_1D22E0548(v85);
      v66 = *(v65 + *(v59 + 56));
      sub_1D22ED1D0(v65, type metadata accessor for ComposingFooterButtonConfiguration.Regular);
      v67 = v88;
      sub_1D22ED100(v57, v88, type metadata accessor for ComposingFooterButtonImage.Representation);
      v68 = v84;
      v69 = (v67 + *(v84 + 20));
      *v69 = v61;
      v69[1] = v62;
      v69[2] = v63;
      v69[3] = v64;
      v70 = v67 + v68[6];
      *v70 = 0;
      *(v70 + 8) = 0;
      *(v70 + 16) = xmmword_1D287F540;
      *(v67 + v68[7]) = (v58 & 1) == 0;
      *(v67 + v68[8]) = v66;
      v71 = swift_allocObject();
      *(v71 + 16) = v97;
      v72 = v99;
      *(v71 + 24) = v98;
      v73 = v87;
      v74 = &v87[*(v72 + 20)];
      sub_1D2870F78();
      *v74 = sub_1D22F543C();
      v74[1] = v75;
      v74[2] = v76;
      sub_1D22ED100(v67, v73, type metadata accessor for ComposingFooterButtonConfiguration.Compact);
      v77 = (v73 + *(v72 + 24));
      *v77 = sub_1D22D79AC;
      v77[1] = v71;
      v78 = v73;
      v79 = v89;
      sub_1D22ED100(v78, v89, type metadata accessor for ComposingCompactFooterButton);
      sub_1D22ED168(v79, v101, type metadata accessor for ComposingCompactFooterButton);
      swift_storeEnumTagMultiPayload();
      sub_1D22EDBA4(qword_1ED89F558, type metadata accessor for ComposingCompactFooterButton, &unk_1D2880410);
      sub_1D22EDBA4(qword_1ED89F4B0, type metadata accessor for ComposingRegularFooterButton, &unk_1D28803C0);
      sub_1D2875AF8();
      v51 = type metadata accessor for ComposingCompactFooterButton;
      v52 = v79;
      return sub_1D22ED1D0(v52, v51);
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v25, v95, &qword_1EC6D99B8, &unk_1D287E890);
  if (v35(&v25[v34], 1, v19) == 1)
  {
    sub_1D22BD238(v30, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v33, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v20 + 8))(v95, v19);
LABEL_6:
    sub_1D22BD238(v25, &qword_1EC6E0DB0, &qword_1D288C390);
    goto LABEL_7;
  }

  v53 = v81;
  (*(v20 + 32))(v81, &v25[v34], v19);
  sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v54 = v95;
  v55 = sub_1D2877F98();
  v56 = *(v20 + 8);
  v56(v53, v19);
  sub_1D22BD238(v30, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v33, &qword_1EC6D99B8, &unk_1D287E890);
  v56(v54, v19);
  sub_1D22BD238(v25, &qword_1EC6D99B8, &unk_1D287E890);
  if (v55)
  {
    goto LABEL_9;
  }

LABEL_7:
  v36 = v94;
  sub_1D22E0548(v94);
  v37 = swift_allocObject();
  v38 = v98;
  *(v37 + 16) = v97;
  *(v37 + 24) = v38;
  v39 = v102;
  v40 = v36 + *(v102 + 24);
  type metadata accessor for ComposingAnimationCoordinator(0);
  sub_1D22EDBA4(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
  sub_1D2870F78();
  *v40 = sub_1D28744B8();
  v40[8] = v41 & 1;
  v42 = v36 + v39[7];
  v44 = v90;
  v43 = v91;
  v45 = v93;
  (*(v91 + 104))(v90, *MEMORY[0x1E6980EF8], v93);
  v46 = sub_1D28763F8();
  v47 = v92;
  (*(*(v46 - 8) + 56))(v92, 1, 1, v46);
  sub_1D2876418();
  v48 = sub_1D2876458();
  sub_1D22BD238(v47, &qword_1EC6D9D40, &qword_1D28804D0);
  (*(v43 + 8))(v44, v45);
  *v42 = v48;
  *(v42 + 8) = xmmword_1D287F530;
  v49 = v39[8];
  *(v36 + v49) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  *(v36 + v39[9]) = 0x4048000000000000;
  v50 = (v36 + v39[5]);
  *v50 = sub_1D22D5EBC;
  v50[1] = v37;
  sub_1D22ED168(v36, v101, type metadata accessor for ComposingRegularFooterButton);
  swift_storeEnumTagMultiPayload();
  sub_1D22EDBA4(qword_1ED89F558, type metadata accessor for ComposingCompactFooterButton, &unk_1D2880410);
  sub_1D22EDBA4(qword_1ED89F4B0, type metadata accessor for ComposingRegularFooterButton, &unk_1D28803C0);
  sub_1D2875AF8();
  v51 = type metadata accessor for ComposingRegularFooterButton;
  v52 = v36;
  return sub_1D22ED1D0(v52, v51);
}

uint64_t sub_1D22E01F8@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-1] - v3;
  v5 = type metadata accessor for PlaygroundImage(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v9 = v17[0];
  swift_getKeyPath();
  v17[0] = v9;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v9 + 80, v17, &qword_1EC6D9A58, &qword_1D287F000);

  sub_1D22BD1D0(v17, v14, &qword_1EC6D9A58, &qword_1D287F000);
  v10 = v15;
  if (!v15)
  {
    sub_1D22BD238(v14, &qword_1EC6D9A58, &qword_1D287F000);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_5;
  }

  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(*(v11 + 8) + 40))(v10);
  __swift_destroy_boxed_opaque_existential_0(v14);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_5:
    sub_1D22BD238(v4, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD238(v17, &qword_1EC6D9A58, &qword_1D287F000);
    *a1 = 0x662E6E6F73726570;
    a1[1] = 0xEB000000006C6C69;
    type metadata accessor for ComposingFooterButtonImage.Representation(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1D22BD238(v17, &qword_1EC6D9A58, &qword_1D287F000);
  sub_1D22ED100(v4, v8, type metadata accessor for PlaygroundImage);
  sub_1D22ED100(v8, a1, type metadata accessor for PlaygroundImage);
  type metadata accessor for ComposingFooterButtonImage.Representation(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_1D22E0548@<D0>(void *a1@<X8>)
{
  sub_1D22E01F8(a1);
  v2 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  v3 = sub_1D2875798();
  v33 = v4;
  v34 = v3;
  v32 = v5;
  v7 = v6 & 1 | 0x8000000000000000;
  v8 = sub_1D22E9A64();
  v30 = v9;
  v31 = v8;
  v28 = v11;
  v29 = v10;
  v12 = sub_1D2875798();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1 | 0x8000000000000000;
  v19 = sub_1D22E9D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v20 = *(v35 + 127);

  v21 = type metadata accessor for ComposingFooterButtonConfiguration.Regular(0);
  v22 = (a1 + v21[5]);
  *v22 = v34;
  v22[1] = v33;
  v22[2] = v7;
  v22[3] = v32;
  v23 = (a1 + v21[6]);
  *v23 = v31;
  v23[1] = v30;
  v23[2] = v29;
  v23[3] = v28;
  v24 = (a1 + v21[7]);
  *v24 = v12;
  v24[1] = v14;
  v24[2] = v18;
  v24[3] = v16;
  *(a1 + v21[8]) = v19;
  v25 = a1 + v21[9];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&result = 0x1FFFFFFFELL;
  *(v25 + 1) = xmmword_1D287F540;
  *(a1 + v21[10]) = 1;
  *(a1 + v21[11]) = 0;
  v27 = a1 + v21[12];
  *v27 = 0;
  v27[8] = 1;
  *(a1 + v21[13]) = 0;
  *(a1 + v21[14]) = v20;
  return result;
}

BOOL sub_1D22E0778()
{
  v1 = v0;
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v9 = v18[0];
  swift_getKeyPath();
  v18[0] = v9;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v9 + 80, v19, &qword_1EC6D9A58, &qword_1D287F000);

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
    v10 = type metadata accessor for CharacterAsset(0);
    v11 = swift_dynamicCast();
    (*(*(v10 - 8) + 56))(v8, v11 ^ 1u, 1, v10);
  }

  else
  {
    sub_1D22BD238(v19, &qword_1EC6D9A58, &qword_1D287F000);
    v10 = type metadata accessor for CharacterAsset(0);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  type metadata accessor for CharacterAsset(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10))
  {
    v12 = 0;
  }

  else
  {
    v13 = v1 + *(type metadata accessor for ComposingFooterView(0) + 40);
    v14 = *v13;
    if (*(v13 + 8) == 1)
    {
      v15 = *v13;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v16 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v14, 0);
      (*(v3 + 8))(v5, v2);
      v15 = v19[0];
    }

    v12 = (v15 - 5) < 2;
  }

  sub_1D22BD238(v8, &unk_1EC6DDDA0, &qword_1D2882D20);
  return v12;
}

uint64_t sub_1D22E0B28@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v2 = *(v4 + 127);

  *a1 = v2;
  return result;
}

uint64_t sub_1D22E0BF8(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  sub_1D22CB294(v1, 0, 0);
}

uint64_t sub_1D22E0C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a1;
  v138 = a2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C80, &qword_1D287FC78);
  MEMORY[0x1EEE9AC00](v135);
  v136 = v112 - v2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C88, &qword_1D287FC80);
  v116 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v115 = v112 - v3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C90, &qword_1D287FC88);
  MEMORY[0x1EEE9AC00](v128);
  v131 = v112 - v4;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C98, &qword_1D287FC90);
  v114 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v113 = v112 - v5;
  v146 = sub_1D28720D8();
  v150 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v133 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v145 = v112 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v126 = v112 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v125 = (v112 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  v149 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v129 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v140 = v112 - v16;
  v17 = type metadata accessor for ComposingFooterView(0);
  v123 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v130 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v124 = v112 - v20;
  v143 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v141 = v112 - v23;
  v24 = type metadata accessor for PresentationContentConfiguration(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8EB8, &unk_1D287CC20);
  MEMORY[0x1EEE9AC00](v142);
  v28 = v112 - v27;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8EA0, &qword_1D287CC10);
  MEMORY[0x1EEE9AC00](v134);
  v127 = v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v148 = v112 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB8, &qword_1D287F6C0);
  sub_1D2875808();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D287F550;
  sub_1D28757E8();
  sub_1D28757D8();
  v33 = sub_1D2400610(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v144 = v13;
  v34 = v147;
  sub_1D2877618();
  v35 = sub_1D22CA210();

  swift_getKeyPath();
  v180[0] = v35;
  sub_1D22EDBA4(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel, &unk_1D2892F80);
  sub_1D28719E8();

  v36 = *(v35 + 65);

  if (qword_1EC6D80A0 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v24, qword_1EC6D80A8);
  sub_1D22ED168(v37, v26, type metadata accessor for PresentationContentConfiguration);

  *(v26 + 2) = v33;
  v26[*(v24 + 52)] = v36;
  v26[*(v24 + 32)] = 0;
  v122 = type metadata accessor for ComposingFooterView;
  v38 = v34;
  v39 = v34;
  v40 = v141;
  sub_1D22ED168(v39, v141, type metadata accessor for ComposingFooterView);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D8EC8, &unk_1D287CC30);
  v42 = v41[10];
  *&v28[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB0, &qword_1D2886070);
  swift_storeEnumTagMultiPayload();
  v43 = &v28[v41[11]];
  KeyPath = swift_getKeyPath();
  v160 = 0;
  *v43 = KeyPath;
  v43[89] = 0;
  sub_1D22ED168(v26, v28, type metadata accessor for PresentationContentConfiguration);
  sub_1D22E2078(&v28[v41[9]]);
  sub_1D22ED1D0(v40, type metadata accessor for ComposingFooterView);
  sub_1D22ED1D0(v26, type metadata accessor for PresentationContentConfiguration);
  v45 = swift_getKeyPath();
  v171 = 0;
  v46 = 1;
  v169 = 1;
  v167 = 1;
  v165 = 0;
  v163 = 1;
  v161 = 0;
  *&v172 = v45;
  *(&v172 + 1) = 0x4074000000000000;
  LOBYTE(v173) = 0;
  *(&v173 + 1) = *v170;
  DWORD1(v173) = *&v170[3];
  *(&v173 + 1) = 0;
  LOBYTE(v174) = 1;
  DWORD1(v174) = *&v168[3];
  *(&v174 + 1) = *v168;
  *(&v174 + 1) = 0;
  LOBYTE(v175) = 1;
  DWORD1(v175) = *&v166[3];
  *(&v175 + 1) = *v166;
  *(&v175 + 1) = 0x4070E00000000000;
  LOBYTE(v176) = 0;
  HIDWORD(v176) = *&v164[3];
  *(&v176 + 1) = *v164;
  v177 = 0;
  LOBYTE(v178) = 1;
  DWORD1(v178) = *&v162[3];
  *(&v178 + 1) = *v162;
  *(&v178 + 1) = 0x4075400000000000;
  v179 = 0;
  v47 = *(v142 + 36);
  v141 = v28;
  v48 = &v28[v47];
  v49 = v178;
  *(v48 + 4) = v176;
  *(v48 + 5) = v49;
  v48[96] = 0;
  v50 = v173;
  *v48 = v172;
  *(v48 + 1) = v50;
  v51 = v175;
  *(v48 + 2) = v174;
  *(v48 + 3) = v51;
  v180[0] = v45;
  v180[1] = 0x4074000000000000;
  v181 = 0;
  *&v182[3] = *&v170[3];
  *v182 = *v170;
  v183 = 0;
  v184 = 1;
  *&v185[3] = *&v168[3];
  *v185 = *v168;
  v186 = 0;
  v187 = 1;
  *&v188[3] = *&v166[3];
  *v188 = *v166;
  v189 = 0x4070E00000000000;
  v190 = 0;
  *&v191[3] = *&v164[3];
  *v191 = *v164;
  v192 = 0;
  v193 = 1;
  *&v194[3] = *&v162[3];
  *v194 = *v162;
  v195 = 0x4075400000000000;
  v196 = 0;
  sub_1D22BD1D0(&v172, &v156, &qword_1EC6D8ED8, &unk_1D287FC30);
  sub_1D22BD238(v180, &qword_1EC6D8ED8, &unk_1D287FC30);
  v52 = v140;
  v53 = v144;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  v54 = v149 + 8;
  v121 = *(v149 + 1);
  v121(v52, v53);
  v139 = v154;
  v140 = v153;
  v112[1] = v155;
  v55 = v124;
  sub_1D22ED168(v38, v124, v122);
  v56 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v122 = *(v123 + 80);
  v57 = swift_allocObject();
  v123 = v56;
  v117 = v57;
  sub_1D22ED100(v55, v57 + v56, type metadata accessor for ComposingFooterView);
  v58 = v125;
  sub_1D28720C8();
  v59 = v150;
  v60 = *(v150 + 104);
  v61 = v126;
  v120 = *MEMORY[0x1E696E3E8];
  v62 = v146;
  v124 = v150 + 104;
  v119 = v60;
  v60(v126);
  v63 = sub_1D22EDBA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8], MEMORY[0x1E696E408]);
  sub_1D2878368();
  v118 = v63;
  sub_1D2878368();
  if (v156 != v151 || v157 != v152)
  {
    v46 = sub_1D2879618();
  }

  v64 = *(v59 + 8);
  v64(v61, v62);
  v150 = v59 + 8;
  v126 = v64;
  v64(v58, v62);

  v149 = v54;
  if (v46)
  {
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8EC0, &unk_1D287FC20);
    v65 = sub_1D22BA73C();
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE0, &unk_1D287CC40);
    v67 = sub_1D22BB9D8(qword_1ED8A03A8, &qword_1EC6D8EE0, &unk_1D287CC40, &unk_1D288DB18);
    v68 = sub_1D22BA820();
    v156 = v66;
    v157 = &type metadata for OBKTipsView;
    v158 = v67;
    v159 = v68;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v69 = v65;
    v70 = v142;
    v71 = v113;
    sub_1D2876E48();
    v72 = v114;
    v73 = v132;
    (*(v114 + 16))(v131, v71, v132);
    swift_storeEnumTagMultiPayload();
    v156 = v70;
    v157 = v125;
    v158 = v69;
    v159 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v74 = v127;
    sub_1D2875AF8();

    (*(v72 + 8))(v71, v73);
    v75 = v141;
  }

  else
  {
    v75 = v141;
    sub_1D22BD1D0(v141, v131, &qword_1EC6D8EB8, &unk_1D287CC20);
    swift_storeEnumTagMultiPayload();
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EC0, &unk_1D287FC20);
    v77 = sub_1D22BA73C();
    v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE0, &unk_1D287CC40);
    v79 = sub_1D22BB9D8(qword_1ED8A03A8, &qword_1EC6D8EE0, &unk_1D287CC40, &unk_1D288DB18);
    v80 = sub_1D22BA820();
    v156 = v78;
    v157 = &type metadata for OBKTipsView;
    v158 = v79;
    v159 = v80;
    v81 = swift_getOpaqueTypeConformance2();
    v156 = v142;
    v157 = v76;
    v158 = v77;
    v159 = v81;
    swift_getOpaqueTypeConformance2();
    v74 = v127;
    sub_1D2875AF8();
  }

  sub_1D22BD238(v75, &qword_1EC6D8EB8, &unk_1D287CC20);
  v82 = v74;
  v83 = v148;
  sub_1D22EC9BC(v82, v148, &qword_1EC6D8EA0, &qword_1D287CC10);
  v84 = v129;
  v85 = v144;
  v86 = v147;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  v121(v84, v85);
  v149 = v153;
  v144 = v154;
  v87 = v130;
  sub_1D22ED168(v86, v130, type metadata accessor for ComposingFooterView);
  v88 = v123;
  v147 = swift_allocObject();
  sub_1D22ED100(v87, v147 + v88, type metadata accessor for ComposingFooterView);
  sub_1D28720C8();
  v89 = v133;
  v90 = v146;
  v119(v133, v120, v146);
  sub_1D2878368();
  sub_1D2878368();
  if (v156 == v151 && v157 == v152)
  {
    v91 = v126;
    (v126)(v89, v90);
    v91(v145, v90);
  }

  else
  {
    v92 = sub_1D2879618();
    v93 = v126;
    (v126)(v89, v90);
    v93(v145, v90);

    if ((v92 & 1) == 0)
    {
      sub_1D22BD1D0(v83, v136, &qword_1EC6D8EA0, &qword_1D287CC10);
      swift_storeEnumTagMultiPayload();
      v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D8EA8, &qword_1D287CC18);
      v104 = sub_1D22BA5D0();
      v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE8, &unk_1D287F920);
      v106 = sub_1D22EC2B0(&qword_1ED89D210, &qword_1EC6D8EE8, &unk_1D287F920, sub_1D22BA8F8);
      v107 = sub_1D22BA820();
      v156 = v105;
      v157 = &type metadata for OBKTipsView;
      v158 = v106;
      v159 = v107;
      v108 = swift_getOpaqueTypeConformance2();
      v156 = v134;
      v157 = v103;
      v158 = v104;
      v159 = v108;
      swift_getOpaqueTypeConformance2();
      sub_1D2875AF8();

      return sub_1D22BD238(v83, &qword_1EC6D8EA0, &qword_1D287CC10);
    }
  }

  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D8EA8, &qword_1D287CC18);
  v94 = sub_1D22BA5D0();
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE8, &unk_1D287F920);
  v96 = sub_1D22EC2B0(&qword_1ED89D210, &qword_1EC6D8EE8, &unk_1D287F920, sub_1D22BA8F8);
  v97 = sub_1D22BA820();
  v156 = v95;
  v157 = &type metadata for OBKTipsView;
  v158 = v96;
  v159 = v97;
  v150 = MEMORY[0x1E697D510];
  v111 = swift_getOpaqueTypeConformance2();
  v98 = v115;
  v99 = v134;
  sub_1D2876E48();
  v100 = v116;
  v101 = v137;
  (*(v116 + 16))(v136, v98, v137);
  swift_storeEnumTagMultiPayload();
  v156 = v99;
  v157 = v146;
  v158 = v94;
  v159 = v111;
  swift_getOpaqueTypeConformance2();
  sub_1D2875AF8();

  v102 = v98;
  v83 = v148;
  (*(v100 + 8))(v102, v101);
  return sub_1D22BD238(v83, &qword_1EC6D8EA0, &qword_1D287CC10);
}

uint64_t sub_1D22E2078@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v80 = sub_1D2875E18();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v69 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390) - 8;
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v68 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v76 = (&v68 - v9);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v71);
  v82 = &v68 - v10;
  v11 = sub_1D28764E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CA0, &qword_1D287FCC0);
  MEMORY[0x1EEE9AC00](v84);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CA8, &qword_1D287FCC8);
  v72 = *(v17 - 8);
  v73 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v68 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  v85 = v1;
  sub_1D2877618();
  v19 = sub_1D22CA210();

  v20 = (v1 + *(type metadata accessor for ComposingFooterView(0) + 64));
  v21 = *v20;
  v22 = *(v20 + 8);
  *(v16 + 2) = swift_getKeyPath();
  v16[24] = 0;
  v23 = type metadata accessor for PeoplePickerView(0);
  v24 = v23[6];
  *&v16[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0, &qword_1D2886330);
  swift_storeEnumTagMultiPayload();
  v25 = &v16[v23[7]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v86 = 0x402E000000000000;
  (*(v12 + 104))(v14, *MEMORY[0x1E6980F20], v11);
  sub_1D22BFBB8();
  sub_1D2874748();
  *&v16[v23[10]] = 0x3FEB333333333333;
  *v16 = v19;
  *(v16 + 1) = 0;
  v26 = &v16[v23[8]];
  *v26 = v21;
  v26[8] = v22;
  KeyPath = swift_getKeyPath();
  v28 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB8, &qword_1D287FD30) + 36)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C78, &qword_1D287FC70);
  sub_1D24CC0C4((v28 + *(v29 + 28)));
  *v28 = KeyPath;
  v30 = swift_getKeyPath();
  v31 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CC0, &qword_1D287FD60) + 36)];
  *v31 = v30;
  v31[8] = 0;
  v32 = swift_getKeyPath();
  v33 = &v16[*(v84 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CC8, &qword_1D287FD68) + 28);
  sub_1D2877618();
  v35 = v86;
  swift_getKeyPath();
  v86 = v35;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v37 = sub_1D2872008();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v33 + v34, v35 + v36, v37);

  v39 = v33 + v34;
  v40 = v78;
  (*(v38 + 56))(v39, 0, 1, v37);
  v41 = v80;
  *v33 = v32;
  v43 = v76;
  v42 = v77;
  sub_1D24CC0C4(v76);
  v44 = v83;
  (*(v40 + 104))(v83, *MEMORY[0x1E697FF38], v41);
  (*(v40 + 56))(v44, 0, 1, v41);
  v45 = *(v79 + 56);
  sub_1D22BD1D0(v43, v42, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v44, v42 + v45, &qword_1EC6D99B8, &unk_1D287E890);
  v46 = *(v40 + 48);
  if (v46(v42, 1, v41) != 1)
  {
    sub_1D22BD1D0(v42, v81, &qword_1EC6D99B8, &unk_1D287E890);
    if (v46(v42 + v45, 1, v41) != 1)
    {
      goto LABEL_9;
    }

    sub_1D22BD238(v83, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v43, &qword_1EC6D99B8, &unk_1D287E890);
    v48 = *(v40 + 8);
    v40 += 8;
    v48(v81, v41);
    v41 = v82;
LABEL_6:
    sub_1D22BD238(v42, &qword_1EC6E0DB0, &qword_1D288C390);
    while (1)
    {
      v45 = *MEMORY[0x1E697E6D8];
      v49 = sub_1D2874E88();
      (*(*(v49 - 8) + 104))(v41, v45, v49);
      sub_1D22EDBA4(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
      if (sub_1D2877F98())
      {
        goto LABEL_11;
      }

      __break(1u);
LABEL_9:
      v50 = v69;
      (*(v40 + 32))(v69, v42 + v45, v41);
      sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v51 = v81;
      v52 = sub_1D2877F98();
      v53 = *(v40 + 8);
      v40 += 8;
      v53(v50, v41);
      sub_1D22BD238(v83, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v43, &qword_1EC6D99B8, &unk_1D287E890);
      v53(v51, v41);
      sub_1D22BD238(v42, &qword_1EC6D99B8, &unk_1D287E890);
      v41 = v82;
      if (v52)
      {
        goto LABEL_10;
      }
    }
  }

  sub_1D22BD238(v44, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v43, &qword_1EC6D99B8, &unk_1D287E890);
  v47 = v46(v42 + v45, 1, v41);
  v41 = v82;
  if (v47 != 1)
  {
    goto LABEL_6;
  }

  sub_1D22BD238(v42, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_10:
  v54 = *MEMORY[0x1E697E6C0];
  v55 = sub_1D2874E88();
  (*(*(v55 - 8) + 104))(v41, v54, v55);
  sub_1D22EDBA4(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1D2877F98();
  if (result)
  {
LABEL_11:
    v57 = sub_1D22ECAB0();
    v58 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    v59 = v70;
    v60 = v84;
    v61 = v71;
    sub_1D28769B8();
    sub_1D22BD238(v41, &unk_1EC6DE860, &unk_1D287CD70);
    v62 = sub_1D22BD238(v16, &qword_1EC6D9CA0, &qword_1D287FCC0);
    MEMORY[0x1EEE9AC00](v62);
    *(&v68 - 2) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CD8, &qword_1D287FD78);
    v86 = v60;
    v87 = v61;
    v88 = v57;
    v89 = v58;
    swift_getOpaqueTypeConformance2();
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9CE0, &qword_1D287FD80);
    v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9CE8, &qword_1D287FD88);
    v65 = sub_1D22ECD10();
    v86 = v64;
    v87 = v65;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v86 = v63;
    v87 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v67 = v73;
    sub_1D2876F08();
    return (*(v72 + 8))(v59, v67);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D22E2CD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D88, &qword_1D287FFA0);
  v98 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v86[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v86[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D90, &qword_1D287FFA8);
  v107 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v86[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D98, &qword_1D287FFB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v86[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v86[-v13];
  v15 = sub_1D2875678();
  v104 = *(v15 - 8);
  v105 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v86[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v86[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DA0, &qword_1D287FFB8);
  v101 = *(v19 - 8);
  v102 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v86[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DA8, &qword_1D287FFC0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v106 = &v86[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v111 = &v86[-v24];
  v100 = type metadata accessor for ComposingFooterView(0);
  v90 = *(v100 - 8);
  v25 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v91 = &v86[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v26 = v118;
  swift_getKeyPath();
  *&v118 = v26;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v27 = *(v26 + 121);

  v108 = v14;
  v109 = v11;
  v99 = v3;
  if (v27 == 1)
  {
    v88 = a1;
    v89 = v7;
    sub_1D2875798();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v28 = qword_1ED8B0058;
    v29 = sub_1D2876668();
    v31 = v30;
    v33 = v32;
    sub_1D28764C8();
    v34 = sub_1D2876658();
    v36 = v35;
    v87 = v37;
    v39 = v38;

    sub_1D22ED6E0(v29, v31, v33 & 1);

    v40 = v88;
    v41 = v91;
    sub_1D22ED168(v88, v91, type metadata accessor for ComposingFooterView);
    v42 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v43 = swift_allocObject();
    sub_1D22ED100(v41, v43 + v42, type metadata accessor for ComposingFooterView);
    LOBYTE(v42) = v87 & 1;
    LOBYTE(v117[0]) = v87 & 1;
    sub_1D22BBFAC(v34, v36, v87 & 1);
    *&v118 = v34;
    *(&v118 + 1) = v36;
    LOBYTE(v119) = v42;
    a1 = v40;
    *(&v119 + 1) = v39;
    *&v120 = 0xD00000000000002ALL;
    *(&v120 + 1) = 0x80000001D28AFE50;
    *&v121 = sub_1D22EDB08;
    *(&v121 + 1) = v43;
    sub_1D2870F68();
    sub_1D2870F78();
    v44 = v108;
    v7 = v89;
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v44 = v14;
  }

  v45 = (a1 + *(v100 + 56));
  v46 = *v45;
  v47 = *(v45 + 1);
  LOBYTE(v117[0]) = v46;
  *(&v117[0] + 1) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877308();
  if (LOBYTE(v116[0]) == 1)
  {
    sub_1D2877618();
    v48 = sub_1D22C9C60();

    v49 = v93;
    sub_1D2468D0C(v48, v93);
    v50 = v44;
    v51 = v103;
    sub_1D2875668();
    v53 = v104;
    v52 = v105;
    (*(v104 + 16))(v94, v51, v105);
    sub_1D22EDBA4(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v54 = sub_1D2874988();
    v55 = v51;
    v44 = v50;
    (*(v53 + 8))(v55, v52);
    v56 = v102;
    *&v49[*(v102 + 36)] = v54;
    v57 = v111;
    sub_1D22EC9BC(v49, v111, &qword_1EC6D9DA0, &qword_1D287FFB8);
    v58 = 0;
  }

  else
  {
    v58 = 1;
    v57 = v111;
    v56 = v102;
  }

  v59 = 1;
  (*(v101 + 56))(v57, v58, 1, v56);
  if (sub_1D22D81B0())
  {
    KeyPath = swift_getKeyPath();
    v61 = v97;
    *v97 = KeyPath;
    *(v61 + 8) = 0;
    v62 = *(type metadata accessor for BetaDisclaimerText(0) + 20);
    *(v61 + v62) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
    swift_storeEnumTagMultiPayload();
    v63 = v103;
    v64 = sub_1D2875668();
    MEMORY[0x1D38A0390](v64, 0.1, 1.0, 0.0);
    v65 = sub_1D22EDBA4(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v66 = v96;
    v67 = v105;
    sub_1D28743E8();

    (*(v104 + 8))(v63, v67);
    v68 = v98;
    v69 = v99;
    (*(v98 + 16))(v95, v66, v99);
    *&v117[0] = v67;
    *(&v117[0] + 1) = v65;
    swift_getOpaqueTypeConformance2();
    v70 = sub_1D2874988();
    (*(v68 + 8))(v66, v69);
    *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DC0, &qword_1D2880038) + 36)) = v70;
    LOBYTE(v70) = sub_1D2876348();
    sub_1D2874298();
    v71 = v61 + *(v7 + 36);
    *v71 = v70;
    *(v71 + 1) = v72;
    *(v71 + 2) = v73;
    *(v71 + 3) = v74;
    *(v71 + 4) = v75;
    v71[40] = 0;
    v76 = v61;
    v44 = v108;
    sub_1D22EC9BC(v76, v108, &qword_1EC6D9D90, &qword_1D287FFA8);
    v59 = 0;
  }

  (*(v107 + 56))(v44, v59, 1, v7);
  v112 = v118;
  v113 = v119;
  v114 = v120;
  v115 = v121;
  v77 = v111;
  v78 = v106;
  sub_1D22BD1D0(v111, v106, &qword_1EC6D9DA8, &qword_1D287FFC0);
  v79 = v109;
  sub_1D22BD1D0(v44, v109, &qword_1EC6D9D98, &qword_1D287FFB0);
  v80 = v113;
  v116[0] = v112;
  v116[1] = v113;
  v81 = v114;
  v82 = v115;
  v116[2] = v114;
  v116[3] = v115;
  v83 = v110;
  *v110 = v112;
  v83[1] = v80;
  v83[2] = v81;
  v83[3] = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DB0, &qword_1D287FFF0);
  sub_1D22BD1D0(v78, v83 + *(v84 + 48), &qword_1EC6D9DA8, &qword_1D287FFC0);
  sub_1D22BD1D0(v79, v83 + *(v84 + 64), &qword_1EC6D9D98, &qword_1D287FFB0);
  sub_1D22BD1D0(v116, v117, &qword_1EC6D9DB8, &qword_1D287FFF8);
  sub_1D22BD238(&v118, &qword_1EC6D9DB8, &qword_1D287FFF8);
  sub_1D22BD238(v44, &qword_1EC6D9D98, &qword_1D287FFB0);
  sub_1D22BD238(v77, &qword_1EC6D9DA8, &qword_1D287FFC0);
  sub_1D22BD238(v79, &qword_1EC6D9D98, &qword_1D287FFB0);
  sub_1D22BD238(v78, &qword_1EC6D9DA8, &qword_1D287FFC0);
  v117[0] = v112;
  v117[1] = v113;
  v117[2] = v114;
  v117[3] = v115;
  return sub_1D22BD238(v117, &qword_1EC6D9DB8, &qword_1D287FFF8);
}

void sub_1D22E3878(char a1)
{
  v2 = sub_1D2871CA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
    sub_1D2877618();
    v6 = v9;
    swift_getKeyPath();
    v9 = v6;
    sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719E8();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      (*(v3 + 104))(v5, *MEMORY[0x1E699C1D8], v2);
      sub_1D2333D2C(v5);
      swift_unknownObjectRelease();
      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_1D22E3A2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C00, &qword_1D287FB50);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C08, &qword_1D287FB58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10, &qword_1D287FB60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for PromptView(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  sub_1D22C3068();

  sub_1D22D9330(v13);
  v23 = sub_1D2874E88();
  v24 = *(v23 - 8);
  (*(v24 + 32))(v16, v13, v23);
  v25 = 1;
  (*(v24 + 56))(v16, 0, 1, v23);
  sub_1D27B597C(v16, v22);
  v26 = (v2 + *(type metadata accessor for ComposingFooterView(0) + 52));
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v40) = v27;
  v41 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  v29 = sub_1D2877308();
  if (v39 == 1)
  {
    MEMORY[0x1EEE9AC00](v29);
    *(&v34 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C20, &qword_1D287FB70);
    sub_1D22BB9D8(&qword_1ED89CFF8, &qword_1EC6D9C20, &qword_1D287FB70, MEMORY[0x1E6981F48]);
    v30 = v35;
    sub_1D2875CE8();
    (*(v37 + 32))(v10, v30, v38);
    v25 = 0;
  }

  (*(v37 + 56))(v10, v25, 1, v38);
  sub_1D22ED168(v22, v19, type metadata accessor for PromptView);
  sub_1D22BD1D0(v10, v7, &qword_1EC6D9C08, &qword_1D287FB58);
  v31 = v36;
  sub_1D22ED168(v19, v36, type metadata accessor for PromptView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C18, &qword_1D287FB68);
  sub_1D22BD1D0(v7, v31 + *(v32 + 48), &qword_1EC6D9C08, &qword_1D287FB58);
  sub_1D22BD238(v10, &qword_1EC6D9C08, &qword_1D287FB58);
  sub_1D22ED1D0(v22, type metadata accessor for PromptView);
  sub_1D22BD238(v7, &qword_1EC6D9C08, &qword_1D287FB58);
  return sub_1D22ED1D0(v19, type metadata accessor for PromptView);
}

uint64_t sub_1D22E3F30@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C28, &qword_1D287FB78);
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v35 - v2;
  v3 = sub_1D2872008();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C30, &qword_1D287FB80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C38, &qword_1D287FB88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C40, &qword_1D287FB90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  sub_1D23C7044();

  v20 = sub_1D27ED8C8();

  if (v20)
  {
    sub_1D22DE690(v13);
    sub_1D22EC9BC(v13, v19, &qword_1EC6D9C38, &qword_1D287FB88);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 1;
  (*(v11 + 56))(v19, v21, 1, v10);
  sub_1D2877618();
  v23 = sub_1D23C7044();

  swift_getKeyPath();
  v44 = v23;
  sub_1D22EDBA4(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures, &unk_1D28A8770);
  sub_1D28719E8();

  v24 = *(v23 + 17);

  if (v24 == 1)
  {
    sub_1D2877618();
    v25 = v44;
    swift_getKeyPath();
    v44 = v25;
    sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719E8();

    v26 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
    swift_beginAccess();
    v27 = v37;
    v28 = v38;
    v29 = v39;
    (*(v38 + 16))(v37, v25 + v26, v39);

    LOBYTE(v26) = sub_1D2871E68();
    (*(v28 + 8))(v27, v29);
    if (v26)
    {
      v30 = v36;
      sub_1D22DB6AC(v36);
      sub_1D22EC9BC(v30, v9, &qword_1EC6D9C28, &qword_1D287FB78);
      v22 = 0;
    }
  }

  (*(v41 + 56))(v9, v22, 1, v42);
  sub_1D22BD1D0(v19, v16, &qword_1EC6D9C40, &qword_1D287FB90);
  v31 = v40;
  sub_1D22BD1D0(v9, v40, &qword_1EC6D9C30, &qword_1D287FB80);
  v32 = v43;
  sub_1D22BD1D0(v16, v43, &qword_1EC6D9C40, &qword_1D287FB90);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C48, &qword_1D287FBC0);
  sub_1D22BD1D0(v31, v32 + *(v33 + 48), &qword_1EC6D9C30, &qword_1D287FB80);
  sub_1D22BD238(v9, &qword_1EC6D9C30, &qword_1D287FB80);
  sub_1D22BD238(v19, &qword_1EC6D9C40, &qword_1D287FB90);
  sub_1D22BD238(v31, &qword_1EC6D9C30, &qword_1D287FB80);
  return sub_1D22BD238(v16, &qword_1EC6D9C40, &qword_1D287FB90);
}

uint64_t sub_1D22E4534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CE0, &qword_1D287FD80);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - v2;
  sub_1D22D98C8(1, v8 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9CE8, &qword_1D287FD88);
  v5 = sub_1D22ECD10();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D389E720](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D22E4668@<X0>(uint64_t a1@<X8>)
{
  v260 = a1;
  v200 = sub_1D2875628();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v195 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v259);
  v258 = (&v195 - v3);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD8, &qword_1D287F760);
  MEMORY[0x1EEE9AC00](v253);
  v256 = &v195 - v4;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AE0, &qword_1D287F768);
  v197 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v196 = &v195 - v5;
  v245 = sub_1D28720D8();
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v243 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v242 = &v195 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AE8, &qword_1D287F770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v227 = (&v195 - v10);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AF0, &qword_1D287F778);
  MEMORY[0x1EEE9AC00](v218);
  v220 = &v195 - v11;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AF8, &qword_1D287F780);
  v202 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v201 = &v195 - v12;
  v224 = sub_1D2870CB8();
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B00, &qword_1D287F788);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v275 = &v195 - v15;
  v268 = type metadata accessor for ComposingFooterView(0);
  v276 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v232 = &v195 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v272 = &v195 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B08, &unk_1D287F790);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v262 = &v195 - v20;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  v273 = *(v271 - 1);
  MEMORY[0x1EEE9AC00](v271);
  v229 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v267 = &v195 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v269 = &v195 - v25;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v207);
  v27 = &v195 - v26;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B10, &qword_1D287F7A0);
  MEMORY[0x1EEE9AC00](v205);
  v29 = &v195 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B18, &qword_1D287F7A8);
  v31 = v30 - 8;
  MEMORY[0x1EEE9AC00](v30);
  v203 = &v195 - v32;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B20, &qword_1D287F7B0);
  MEMORY[0x1EEE9AC00](v204);
  v206 = &v195 - v33;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B28, &qword_1D287F7B8);
  v208 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v195 - v34;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B30, &qword_1D287F7C0);
  MEMORY[0x1EEE9AC00](v211);
  v261 = (&v195 - v35);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B38, &qword_1D287F7C8);
  MEMORY[0x1EEE9AC00](v216);
  v212 = &v195 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v213 = &v195 - v38;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B40, &qword_1D287F7D0);
  v215 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v214 = &v195 - v39;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B48, &qword_1D287F7D8);
  v219 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v263 = &v195 - v40;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B50, &qword_1D287F7E0);
  v226 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v264 = &v195 - v41;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B58, &qword_1D287F7E8);
  v231 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v270 = &v195 - v42;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B60, &qword_1D287F7F0);
  MEMORY[0x1EEE9AC00](v236);
  v230 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v235 = &v195 - v45;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B68, &qword_1D287F7F8);
  v238 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v237 = &v195 - v46;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B70, &qword_1D287F800);
  MEMORY[0x1EEE9AC00](v234);
  v240 = &v195 - v47;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B78, &qword_1D287F808);
  MEMORY[0x1EEE9AC00](v265);
  v241 = &v195 - v48;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B80, &qword_1D287F810);
  v246 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v266 = &v195 - v49;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B88, &qword_1D287F818);
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v249 = &v195 - v50;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B90, &qword_1D287F820);
  v254 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v248 = &v195 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v250 = &v195 - v53;
  *v29 = sub_1D2875918();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B98, &unk_1D287F828);
  sub_1D22E716C(v1, &v29[*(v54 + 44)]);
  sub_1D22D9330(v27);
  sub_1D22BB9D8(&qword_1ED89D0C8, &qword_1EC6D9B10, &qword_1D287F7A0, MEMORY[0x1E6981870]);
  sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
  v55 = v203;
  sub_1D28769B8();
  v56 = v204;
  sub_1D22BD238(v27, &unk_1EC6DE860, &unk_1D287CD70);
  sub_1D22BD238(v29, &qword_1EC6D9B10, &qword_1D287F7A0);
  *&v55[*(v31 + 44)] = 0x4018000000000000;
  v277 = v1;
  sub_1D22D8AC4();
  sub_1D2877838();
  sub_1D2875208();
  v57 = v55;
  v58 = v206;
  sub_1D22EC9BC(v57, v206, &qword_1EC6D9B18, &qword_1D287F7A8);
  v59 = (v58 + *(v56 + 36));
  v60 = v290;
  v61 = v291;
  v59[4] = v289;
  v59[5] = v60;
  v59[6] = v61;
  v62 = v286;
  *v59 = v285;
  v59[1] = v62;
  v63 = v288;
  v59[2] = v287;
  v59[3] = v63;
  v64 = sub_1D28762F8();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v64)
  {
    sub_1D2876308();
  }

  sub_1D2877848();
  sub_1D22EB054();
  v65 = v209;
  sub_1D2876C88();
  sub_1D22BD238(v58, &qword_1EC6D9B20, &qword_1D287F7B0);
  v66 = v271;
  v67 = v277;
  sub_1D2877618();
  v68 = v279;
  swift_getKeyPath();
  v279 = v68;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v69 = v68[123];

  if (v69)
  {
    v70 = 0.0;
  }

  else
  {
    v70 = 1.0;
  }

  v71 = v261;
  (v208[2].Kind)(v261, v65, v210);
  v72 = v211;
  *(v71 + *(v211 + 36)) = v70;
  v73 = v269;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  v74 = *(v273 + 1);
  v273 = (v273 + 8);
  v269 = v74;
  (v74)(v73, v66);
  v209 = v279;
  v208 = v280;
  LODWORD(v207) = v281;
  sub_1D2878568();
  v75 = sub_1D2878558();
  v76 = swift_allocObject();
  v77 = MEMORY[0x1E69E85E0];
  *(v76 + 16) = v75;
  *(v76 + 24) = v77;
  v78 = v272;
  sub_1D22ED168(v67, v272, type metadata accessor for ComposingFooterView);
  v79 = sub_1D2878558();
  v80 = *(v276 + 80);
  v210 = ~v80;
  v81 = (v80 + 32) & ~v80;
  v276 = v80;
  v82 = swift_allocObject();
  *(v82 + 16) = v79;
  *(v82 + 24) = v77;
  sub_1D22ED100(v78, v82 + v81, type metadata accessor for ComposingFooterView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA0, &unk_1D289E670);
  v83 = v262;
  sub_1D2877528();
  v84 = v275;
  sub_1D2877C68();
  v85 = sub_1D2877C78();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  sub_1D2877618();
  sub_1D23C6CA0();
  v86 = _SystemPhotoLibrary.photoLibrary.getter();

  v87 = v222;
  sub_1D2870CA8();
  if (v86)
  {
    v88 = sub_1D22EB348();
    v89 = v86;
    v90 = v201;
    sub_1D28766B8();
    v91 = v202;
    v92 = v87;
    v93 = v221;
    (*(v202 + 16))(v220, v90, v221);
    swift_storeEnumTagMultiPayload();
    v283 = v72;
    v284 = v88;
    swift_getOpaqueTypeConformance2();
    v94 = v212;
    sub_1D2875AF8();
    v95 = v92;

    (*(v91 + 8))(v90, v93);
    v83 = v262;
    v71 = v261;
    v84 = v275;
  }

  else
  {
    sub_1D22BD1D0(v71, v220, &qword_1EC6D9B30, &qword_1D287F7C0);
    swift_storeEnumTagMultiPayload();
    v96 = sub_1D22EB348();
    v283 = v72;
    v284 = v96;
    swift_getOpaqueTypeConformance2();
    v95 = v87;
    v94 = v212;
    sub_1D2875AF8();
  }

  (*(v223 + 8))(v95, v224);
  sub_1D22BD238(v84, &qword_1EC6D9B00, &qword_1D287F788);
  sub_1D22BD238(v83, &qword_1EC6D9B08, &unk_1D287F790);
  sub_1D22BD238(v71, &qword_1EC6D9B30, &qword_1D287F7C0);
  v97 = v213;
  sub_1D22EC9BC(v94, v213, &qword_1EC6D9B38, &qword_1D287F7C8);
  v98 = v227;
  sub_1D2877C88();
  v99 = sub_1D2877C98();
  (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
  v100 = sub_1D22EB410();
  v101 = v214;
  v102 = v216;
  sub_1D28766C8();
  sub_1D22BD238(v98, &qword_1EC6D9AE8, &qword_1D287F770);
  sub_1D22BD238(v97, &qword_1EC6D9B38, &qword_1D287F7C8);
  v279 = v102;
  v280 = v100;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = v217;
  sub_1D28766D8();
  (*(v215 + 8))(v101, v104);
  v105 = v267;
  v106 = v271;
  v107 = v277;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (v269)(v105, v106);
  LODWORD(v227) = v281;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA8, &qword_1D287F8B8);
  sub_1D2873AA8();
  *(swift_allocObject() + 16) = xmmword_1D287F500;
  sub_1D2873A68();
  v262 = type metadata accessor for ComposingFooterView;
  v108 = v107;
  v109 = v272;
  sub_1D22ED168(v108, v272, type metadata accessor for ComposingFooterView);
  v274 += (v276 + 16) & v210;
  v110 = (v276 + 16) & v210;
  v275 = v110;
  v111 = swift_allocObject();
  v261 = type metadata accessor for ComposingFooterView;
  sub_1D22ED100(v109, v111 + v110, type metadata accessor for ComposingFooterView);
  v283 = v104;
  v284 = OpaqueTypeConformance2;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v225;
  v114 = v263;
  sub_1D28768B8();

  (*(v219 + 8))(v114, v113);
  v115 = v277;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  v116 = v269;
  (v269)(v105, v106);
  sub_1D22ED168(v115, v109, v262);
  v117 = swift_allocObject();
  sub_1D22ED100(v109, &v275[v117], v261);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB0, &qword_1D287F8E8);
  v283 = v113;
  v284 = v112;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = sub_1D22EB564();
  v225 = v119;
  v227 = v118;
  v121 = v228;
  v122 = v264;
  sub_1D28769D8();

  (*(v226 + 8))(v122, v121);
  v123 = v229;
  v124 = v277;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  v116(v123, v106);
  v264 = v283;
  v263 = v284;
  v125 = v124;
  v126 = v232;
  sub_1D22ED168(v125, v232, v262);
  v262 = swift_allocObject();
  sub_1D22ED100(v126, &v275[v262], v261);
  v127 = v242;
  sub_1D28720C8();
  v128 = v244;
  v129 = v243;
  v130 = v245;
  (*(v244 + 104))(v243, *MEMORY[0x1E696E3E8], v245);
  sub_1D22EDBA4(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8], MEMORY[0x1E696E400]);
  LOBYTE(v122) = sub_1D2877F98();
  v131 = *(v128 + 8);
  v131(v129, v130);
  v131(v127, v130);
  if (v122)
  {
    v132 = v231;
    v133 = v233;
    (*(v231 + 16))(v256, v270, v233);
    swift_storeEnumTagMultiPayload();
    v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D8EA8, &qword_1D287CC18);
    v279 = v121;
    v280 = v227;
    v281 = v225;
    v282 = v120;
    v135 = swift_getOpaqueTypeConformance2();
    v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE8, &unk_1D287F920);
    v137 = sub_1D22EC2B0(&qword_1ED89D210, &qword_1EC6D8EE8, &unk_1D287F920, sub_1D22BA8F8);
    v138 = sub_1D22BA820();
    v279 = v136;
    v280 = &type metadata for OBKTipsView;
    v281 = v137;
    v282 = v138;
    v139 = swift_getOpaqueTypeConformance2();
    v279 = v133;
    v280 = v134;
    v281 = v135;
    v282 = v139;
    swift_getOpaqueTypeConformance2();
    v140 = v230;
    sub_1D2875AF8();
  }

  else
  {
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D8EA8, &qword_1D287CC18);
    v279 = v121;
    v280 = v227;
    v281 = v225;
    v282 = v120;
    v261 = swift_getOpaqueTypeConformance2();
    v142 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE8, &unk_1D287F920);
    v143 = sub_1D22EC2B0(&qword_1ED89D210, &qword_1EC6D8EE8, &unk_1D287F920, sub_1D22BA8F8);
    v144 = sub_1D22BA820();
    v279 = v142;
    v280 = &type metadata for OBKTipsView;
    v281 = v143;
    v282 = v144;
    v194 = swift_getOpaqueTypeConformance2();
    v145 = v196;
    v146 = v233;
    sub_1D2876E48();
    v147 = v197;
    v148 = v257;
    (*(v197 + 16))(v256, v145, v257);
    swift_storeEnumTagMultiPayload();
    v279 = v146;
    v280 = v141;
    v133 = v146;
    v281 = v261;
    v282 = v194;
    swift_getOpaqueTypeConformance2();
    v140 = v230;
    sub_1D2875AF8();

    (*(v147 + 8))(v145, v148);
    v132 = v231;
  }

  (*(v132 + 8))(v270, v133);
  v149 = v235;
  sub_1D22EC9BC(v140, v235, &qword_1EC6D9B60, &qword_1D287F7F0);
  v150 = v267;
  v151 = v271;
  v152 = v277;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (v269)(v150, v151);
  v153 = v272;
  sub_1D22ED168(v152, v272, type metadata accessor for ComposingFooterView);
  v154 = swift_allocObject();
  v273 = type metadata accessor for ComposingFooterView;
  sub_1D22ED100(v153, &v275[v154], type metadata accessor for ComposingFooterView);
  sub_1D22EB690();
  sub_1D22EB910();
  v155 = v237;
  sub_1D2876E48();

  sub_1D22BD238(v149, &qword_1EC6D9B60, &qword_1D287F7F0);
  sub_1D22ED168(v152, v153, type metadata accessor for ComposingFooterView);
  v156 = swift_allocObject();
  v157 = v275;
  v158 = v273;
  sub_1D22ED100(v153, &v275[v156], v273);
  v159 = v240;
  (*(v238 + 32))(v240, v155, v239);
  v160 = (v159 + *(v234 + 36));
  *v160 = sub_1D22EB964;
  v160[1] = v156;
  v160[2] = 0;
  v160[3] = 0;
  v271 = type metadata accessor for ComposingFooterView;
  sub_1D22ED168(v152, v153, type metadata accessor for ComposingFooterView);
  v161 = swift_allocObject();
  sub_1D22ED100(v153, &v157[v161], v158);
  v162 = v241;
  sub_1D22EC9BC(v159, v241, &qword_1EC6D9B70, &qword_1D287F800);
  v163 = (v162 + *(v265 + 36));
  *v163 = 0;
  v163[1] = 0;
  v163[2] = sub_1D22EB97C;
  v163[3] = v161;
  v164 = v258;
  sub_1D24CC0C4(v258);
  sub_1D22ED168(v152, v153, type metadata accessor for ComposingFooterView);
  v165 = swift_allocObject();
  v166 = v273;
  sub_1D22ED100(v153, &v157[v165], v273);
  v167 = sub_1D22EBA14();
  v168 = sub_1D22EBB84();
  v169 = v265;
  v170 = v259;
  sub_1D2876F48();

  sub_1D22BD238(v164, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v162, &qword_1EC6D9B78, &qword_1D287F808);
  v171 = v277;
  LOBYTE(v283) = sub_1D22D8488() & 1;
  v172 = v171;
  sub_1D22ED168(v171, v153, v271);
  v173 = swift_allocObject();
  sub_1D22ED100(v153, &v275[v173], v166);
  v279 = v169;
  v280 = v170;
  v281 = v167;
  v282 = v168;
  v174 = swift_getOpaqueTypeConformance2();
  v175 = MEMORY[0x1E69E6370];
  v176 = MEMORY[0x1E69E6388];
  v177 = v249;
  v178 = v247;
  v179 = v266;
  sub_1D2876F48();

  (*(v246 + 8))(v179, v178);
  v180 = v172 + *(v268 + 40);
  v181 = *v180;
  if (*(v180 + 8) == 1)
  {
    LOBYTE(v283) = *v180;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v182 = sub_1D28762E8();
    sub_1D2873BE8();

    v183 = v198;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v181, 0);
    (*(v199 + 8))(v183, v200);
    LOBYTE(v181) = v283;
  }

  v278 = v181;
  v184 = v272;
  sub_1D22ED168(v277, v272, type metadata accessor for ComposingFooterView);
  v185 = swift_allocObject();
  sub_1D22ED100(v184, &v275[v185], type metadata accessor for ComposingFooterView);
  v279 = v178;
  v280 = v175;
  v281 = v174;
  v282 = v176;
  v186 = swift_getOpaqueTypeConformance2();
  v187 = sub_1D22EBCFC();
  v188 = v248;
  v189 = v252;
  sub_1D2876F48();

  (*(v251 + 8))(v177, v189);
  v279 = v189;
  v280 = &type metadata for CreationViewStyle;
  v281 = v186;
  v282 = v187;
  swift_getOpaqueTypeConformance2();
  v190 = v250;
  v191 = v255;
  sub_1D245980C();
  v192 = *(v254 + 8);
  v192(v188, v191);
  sub_1D245980C();
  return (v192)(v190, v191);
}

uint64_t sub_1D22E716C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for ComposingFooterView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BD8, &qword_1D287FB28);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BE0, &qword_1D287FB30);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  *v19 = sub_1D2875918();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BE8, &qword_1D287FB38);
  sub_1D22E2CD8(a1, &v19[*(v20 + 44)]);
  v21 = sub_1D2876358();
  sub_1D2874298();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BF0, &qword_1D287FB40) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_1D2876328();
  sub_1D2874298();
  v32 = &v19[*(v14 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_1D22ED168(a1, v5, type metadata accessor for ComposingFooterView);
  v37 = &v12[v7[11]];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = &v12[v7[12]];
  v39 = type metadata accessor for KeyboardEventListener();
  v40 = objc_allocWithZone(v39);
  v41 = &v40[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &v40[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &v40[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v40[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v44 = 0;
  *(v44 + 1) = 0;
  *&v40[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_targetsOfInterest] = 1;
  v55.receiver = v40;
  v55.super_class = v39;
  v52 = objc_msgSendSuper2(&v55, sel_init);
  sub_1D28772F8();
  v45 = v54;
  *v38 = v53;
  *(v38 + 1) = v45;
  *&v12[v7[13]] = 0x4038000000000000;
  *&v12[v7[14]] = 0x4028000000000000;
  *&v12[v7[15]] = 0x4044000000000000;
  swift_getKeyPath();
  sub_1D28746D8();
  v46 = &v12[v7[17]];
  LOBYTE(v52) = 0;
  sub_1D28772F8();
  v47 = v54;
  *v46 = v53;
  *(v46 + 1) = v47;
  *&v12[v7[18]] = 0x4020000000000000;
  sub_1D22E3A2C(v12);
  sub_1D22ED1D0(v5, type metadata accessor for ComposingFooterView);
  sub_1D22BD1D0(v19, v16, &qword_1EC6D9BE0, &qword_1D287FB30);
  sub_1D22BD1D0(v12, v9, &qword_1EC6D9BD8, &qword_1D287FB28);
  v48 = v51;
  sub_1D22BD1D0(v16, v51, &qword_1EC6D9BE0, &qword_1D287FB30);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BF8, &qword_1D287FB48);
  sub_1D22BD1D0(v9, v48 + *(v49 + 48), &qword_1EC6D9BD8, &qword_1D287FB28);
  sub_1D22BD238(v12, &qword_1EC6D9BD8, &qword_1D287FB28);
  sub_1D22BD238(v19, &qword_1EC6D9BE0, &qword_1D287FB30);
  sub_1D22BD238(v9, &qword_1EC6D9BD8, &qword_1D287FB28);
  return sub_1D22BD238(v16, &qword_1EC6D9BE0, &qword_1D287FB30);
}

double sub_1D22E75E4(double result)
{
  if (result >= 0.0)
  {
    v2 = result == 550.0;
    v1 = result >= 550.0;
  }

  else
  {
    v1 = 1;
    v2 = 0;
  }

  if (!v2 && v1)
  {
    if (result >= 550.0)
    {
      v4 = result == 900.0;
      v3 = result >= 900.0;
    }

    else
    {
      v3 = 1;
      v4 = 0;
    }

    if (!v4 && v3)
    {
      if (result < 900.0 || result > 1300.0)
      {
        v5 = 0.66;
      }

      else
      {
        v5 = 0.7;
      }
    }

    else
    {
      v5 = 0.9;
    }

    result = result * v5;
  }

  if (result > 700.0)
  {
    return 700.0;
  }

  return result;
}

uint64_t sub_1D22E7678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA0, &unk_1D289E670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1D2870CC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1D22BD1D0(a1, v4, &qword_1EC6D9BA0, &unk_1D289E670);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1D22BD238(v4, &qword_1EC6D9BA0, &unk_1D289E670);
  }

  v13 = *(v6 + 32);
  v13(v11, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  (*(v6 + 16))(v8, v11, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v13((v15 + v14), v8, v5);
  sub_1D22CC674(&unk_1D287FAD0, v15);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1D22E78E8(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = sub_1D2878568();
  v1[6] = sub_1D2878558();
  v2 = swift_task_alloc();
  v1[7] = v2;
  v3 = sub_1D22EC170();
  *v2 = v1;
  v2[1] = sub_1D22E79B8;
  v4 = MEMORY[0x1E6969080];
  v5 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEDE8A88](v1 + 2, v4, v5, v3);
}

uint64_t sub_1D22E79B8()
{
  *(*v1 + 64) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D22E7B9C;
  }

  else
  {
    v4 = sub_1D22E7B14;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D22E7B14()
{

  v1 = v0[2];
  v2 = v0[3];
  v4 = sub_1D2870C88();
  v5 = v0[1];

  return v5(v1, v2, v4, v3);
}

uint64_t sub_1D22E7B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D22E7C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30, &unk_1D28819F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  sub_1D22BD1D0(a1, v5, &qword_1EC6DAE30, &unk_1D28819F0);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1D22EC9BC(v5, v7 + v6, &qword_1EC6DAE30, &unk_1D28819F0);
  sub_1D22CC674(&unk_1D287FAB8, v7);
}

uint64_t sub_1D22E7D60(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30, &unk_1D28819F0);
  v1[5] = swift_task_alloc();
  v2 = sub_1D28716B8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_1D2878568();
  v1[10] = sub_1D2878558();
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22E7E9C, v4, v3);
}

uint64_t sub_1D22E7E9C()
{
  v1 = v0[5];
  v2 = v0[3];

  sub_1D22BD1D0(v2, v1, &qword_1EC6DAE30, &unk_1D28819F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[2] = *v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    swift_willThrowTypedImpl();

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    v3 = sub_1D2871648();
    v4 = sub_1D28716C8();
    v17 = v7;
    v8 = v4;
    v9 = v0[8];
    v10 = v0[6];
    v11 = v0[7];
    sub_1D28715C8();
    v12 = sub_1D2871598();
    v14 = v13;
    v15 = *(v11 + 8);
    v15(v9, v10);
    if (v3)
    {
      sub_1D2871628();
    }

    v15(v0[9], v0[6]);

    v16 = v0[1];

    return v16(v8, v17, v12, v14);
  }
}

uint64_t sub_1D22E80DC@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for CameraPickerView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BC8, &qword_1D28A6AC0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_1D2874F98();
  LOBYTE(v2) = sub_1D2876338();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB0, &qword_1D287F8E8);
  v9 = a1 + *(result + 36);
  *v9 = v7;
  v9[8] = v2;
  return result;
}

uint64_t sub_1D22E8254@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v2 = sub_1D22CB02C();

  result = sub_1D28742D8();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = result & 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5 & 1;
  return result;
}

void sub_1D22E82D4(uint64_t a1)
{
  v2 = type metadata accessor for ComposingFooterView(0);
  v54 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v58 = v3;
  v55 = &v49[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D2875E18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49[-v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v53 = v60;
  v56 = a1;
  v57 = v2;
  sub_1D24CC0C4(v18);
  (*(v5 + 104))(v15, *MEMORY[0x1E697FF38], v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_1D22BD1D0(v18, v10, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v15, &v10[v19], &qword_1EC6D99B8, &unk_1D287E890);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) != 1)
  {
    sub_1D22BD1D0(v10, v52, &qword_1EC6D99B8, &unk_1D287E890);
    if (v20(&v10[v19], 1, v4) != 1)
    {
      v24 = v51;
      (*(v5 + 32))(v51, &v10[v19], v4);
      sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v25 = v52;
      v22 = sub_1D2877F98();
      v50 = v22 & 1;
      v26 = *(v5 + 8);
      v26(v24, v4);
      sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v18, &qword_1EC6D99B8, &unk_1D287E890);
      v26(v25, v4);
      sub_1D22BD238(v10, &qword_1EC6D99B8, &unk_1D287E890);
      v21 = v53;
      if (v50 != *(v53 + 120))
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v18, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v5 + 8))(v52, v4);
LABEL_7:
    sub_1D22BD238(v10, &qword_1EC6E0DB0, &qword_1D288C390);
    v22 = 0;
    v21 = v53;
    if (*(v53 + 120))
    {
      goto LABEL_8;
    }

LABEL_10:
    *(v21 + 120) = v22 & 1;

    goto LABEL_11;
  }

  sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v18, &qword_1EC6D99B8, &unk_1D287E890);
  if (v20(&v10[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1D22BD238(v10, &qword_1EC6D99B8, &unk_1D287E890);
  v21 = v53;
  v22 = 1;
  if (*(v53 + 120))
  {
    goto LABEL_10;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *&v49[-16] = v21;
  v49[-8] = v22 & 1;
  v60 = v21;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719D8();

LABEL_11:
  v27 = v56;
  v28 = (v56 + *(v57 + 5));
  v30 = v28[1];
  v60 = *v28;
  v29 = v60;
  v61 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8, &qword_1D288FB00);
  sub_1D2877308();
  v31 = v59;
  v57 = type metadata accessor for ComposingFooterView;
  v32 = v55;
  sub_1D22ED168(v27, v55, type metadata accessor for ComposingFooterView);
  v33 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v34 = swift_allocObject();
  sub_1D22ED100(v32, v34 + v33, type metadata accessor for ComposingFooterView);
  v35 = &v31[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v36 = *&v31[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v37 = *&v31[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow + 8];
  *v35 = sub_1D22EBDB0;
  v35[1] = v34;
  sub_1D22A576C(v36, v37);

  v60 = v29;
  v61 = v30;
  sub_1D2877308();
  v38 = v59;
  sub_1D22ED168(v27, v32, v57);
  v39 = swift_allocObject();
  sub_1D22ED100(v32, v39 + v33, type metadata accessor for ComposingFooterView);
  v40 = &v38[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v41 = *&v38[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v42 = *&v38[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide + 8];
  *v40 = sub_1D22EBE20;
  v40[1] = v39;
  sub_1D22A576C(v41, v42);

  v60 = v29;
  v61 = v30;
  sub_1D2877308();
  v43 = v59;
  sub_1D22ED168(v27, v32, v57);
  v44 = swift_allocObject();
  sub_1D22ED100(v32, v44 + v33, type metadata accessor for ComposingFooterView);
  v45 = &v43[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v46 = *&v43[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v47 = *&v43[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide + 8];
  *v45 = sub_1D22EBE38;
  v45[1] = v44;
  sub_1D22A576C(v46, v47);

  v60 = v29;
  v61 = v30;
  sub_1D2877308();
  v48 = v59;
  sub_1D2744D50();
}

CGRect *sub_1D22E8AF4(CGRect *result, uint64_t a2)
{
  if ((LOBYTE(result[1].origin.x) & 1) == 0)
  {
    v3 = CGRectGetHeight(*result) > 0.0;
    v4 = *(a2 + *(type metadata accessor for ComposingFooterView(0) + 72));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
    sub_1D2877318();
    LOBYTE(v6) = v4;
    result = sub_1D2877308();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
      sub_1D2877618();
      swift_getKeyPath();
      sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
      sub_1D28719E8();

      v5 = *(v6 + 122);

      if ((v5 & 1) == 0)
      {
        sub_1D2877318();
      }

      sub_1D2877318();
      sub_1D2877618();
      swift_getKeyPath();
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D23322C0();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1D22E8D44(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v1 = *(v4 + 122);

  if ((v1 & 1) == 0)
  {
    sub_1D2877618();
    swift_getKeyPath();
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D2332050(1);
      swift_unknownObjectRelease();
    }
  }

  sub_1D2877618();
  swift_getKeyPath();
  sub_1D28719E8();

  v2 = *(v4 + 122);

  if ((v2 & 1) == 0)
  {
    type metadata accessor for ComposingFooterView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
    sub_1D2877318();
  }

  type metadata accessor for ComposingFooterView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  return sub_1D2877318();
}

uint64_t sub_1D22E8F94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v1 = *(v3 + 122);

  if ((v1 & 1) == 0)
  {
    type metadata accessor for ComposingFooterView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
    sub_1D2877318();
  }

  type metadata accessor for ComposingFooterView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  return sub_1D2877318();
}

void sub_1D22E90FC(uint64_t a1)
{
  type metadata accessor for ComposingFooterView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8, &qword_1D288FB00);
  sub_1D2877308();
  sub_1D2744EE8();
  v1 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v2 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v3 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow + 8];
  *v1 = 0;
  *(v1 + 1) = 0;
  sub_1D22A576C(v2, v3);
  v4 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  v5 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  v6 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_1D22A576C(v5, v6);
  v7 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v8 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v9 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide + 8];
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_1D22A576C(v8, v9);
  v10 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v11 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v12 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide + 8];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_1D22A576C(v11, v12);
}

uint64_t sub_1D22E91D8()
{
  v0 = sub_1D2875E18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24[-v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v28 = v29;
  type metadata accessor for ComposingFooterView(0);
  sub_1D24CC0C4(v14);
  (*(v1 + 104))(v11, *MEMORY[0x1E697FF38], v0);
  (*(v1 + 56))(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_1D22BD1D0(v14, v6, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v11, &v6[v15], &qword_1EC6D99B8, &unk_1D287E890);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v14, &qword_1EC6D99B8, &unk_1D287E890);
    if (v16(&v6[v15], 1, v0) == 1)
    {
      sub_1D22BD238(v6, &qword_1EC6D99B8, &unk_1D287E890);
      v17 = v28;
      v18 = 1;
      if (*(v28 + 120))
      {
        goto LABEL_10;
      }

LABEL_8:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v24[-16] = v17;
      v24[-8] = v18 & 1;
      v29 = v17;
      sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
      sub_1D28719D8();
    }
  }

  else
  {
    sub_1D22BD1D0(v6, v27, &qword_1EC6D99B8, &unk_1D287E890);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v21 = v26;
      (*(v1 + 32))(v26, &v6[v15], v0);
      sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v22 = v27;
      v18 = sub_1D2877F98();
      v25 = v18 & 1;
      v23 = *(v1 + 8);
      v23(v21, v0);
      sub_1D22BD238(v11, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v14, &qword_1EC6D99B8, &unk_1D287E890);
      v23(v22, v0);
      sub_1D22BD238(v6, &qword_1EC6D99B8, &unk_1D287E890);
      v17 = v28;
      if (v25 != *(v28 + 120))
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    sub_1D22BD238(v11, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v14, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v1 + 8))(v27, v0);
  }

  sub_1D22BD238(v6, &qword_1EC6E0DB0, &qword_1D288C390);
  v18 = 0;
  v17 = v28;
  if (*(v28 + 120))
  {
    goto LABEL_8;
  }

LABEL_10:
  *(v17 + 120) = v18 & 1;
}

uint64_t sub_1D22E9760()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  sub_1D22CC218();
}

uint64_t sub_1D22E97B4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v3 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_facePickerCarouselViewModel);
  sub_1D2870F78();

  if (v3)
  {
    if (v2 != *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__creationViewStyle))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D22EDBA4(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
      sub_1D28719D8();
    }
  }

  sub_1D2877618();
  v5 = sub_1D22CA210();

  v6 = *(v5 + 40);
  if ((((v2 - 5) < 2) ^ v6))
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1D22EDBA4(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel, &unk_1D2892F80);
    sub_1D28719D8();
  }

  else
  {
    *(v5 + 40) = (v2 - 5) < 2;
    sub_1D2549614(v6);
  }
}

uint64_t sub_1D22E9A64()
{
  v0 = type metadata accessor for CharacterAsset(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  v3 = v15;
  swift_getKeyPath();
  v14[1] = v3;
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v3 + 80, &v15, &qword_1EC6D9A58, &qword_1D287F000);

  if (v16)
  {
    sub_1D227268C(&v15, v17);
    v5 = v18;
    v4 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v6 = (*(*(v4 + 8) + 24))(v5);
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v12 = (*(*(v11 + 8) + 24))(v10);
    }

    else
    {
      sub_1D22D7044(v17, &v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
      if (swift_dynamicCast())
      {
        sub_1D22ED1D0(v2, type metadata accessor for CharacterAsset);
      }

      v12 = sub_1D2875798();
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
    return v12;
  }

  else
  {
    sub_1D22BD238(&v15, &qword_1EC6D9A58, &qword_1D287F000);
    return sub_1D2875798();
  }
}

BOOL sub_1D22E9D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D22EDBA4(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v10[0] + 80, &v8, &qword_1EC6D9A58, &qword_1D287F000);

  if (v9)
  {
    sub_1D227268C(&v8, v10);
    v0 = v11;
    v1 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v2 = (*(*(v1 + 8) + 24))(v0);
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v6 = v5 != 0;
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_1D22BD238(&v8, &qword_1EC6D9A58, &qword_1D287F000);
    return 0;
  }

  return v6;
}

uint64_t sub_1D22E9ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v65 = a1;
  v4 = a1 - 8;
  v63 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = v5;
  v62 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = sub_1D28773C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v50 - v10;
  v12 = sub_1D2874F68();
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v50 - v13;
  v15 = sub_1D2874F68();
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v66 = v50 - v16;
  v55 = v17;
  v18 = sub_1D2874F68();
  v58 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v67 = v50 - v19;
  v59 = v20;
  v61 = sub_1D2874F68();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v57 = v50 - v23;
  v71 = v6;
  v72 = v7;
  v73 = v3;
  sub_1D28756A8();
  v68 = v7;
  v69 = v6;
  sub_1D28773B8();
  sub_1D2876328();
  WitnessTable = swift_getWitnessTable();
  v52 = v14;
  sub_1D2876EF8();
  (*(v9 + 8))(v11, v8);
  sub_1D2876358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
  sub_1D28746B8();
  if (v75 == 1)
  {
    if (!v74)
    {
      v25 = (v3 + *(v65 + 60));
      v26 = *v25;
      v27 = *(v25 + 1);
      LOBYTE(v74) = v26;
      v75 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
      sub_1D2877308();
    }
  }

  else
  {
    sub_1D2273818(v74, 0);
  }

  v82 = WitnessTable;
  v83 = MEMORY[0x1E697E5D8];
  v50[1] = MEMORY[0x1E697E858];
  v28 = swift_getWitnessTable();
  v29 = v52;
  sub_1D2876EF8();
  (*(v53 + 8))(v29, v12);
  v30 = v63;
  v51 = v3;
  v53 = *(v63 + 16);
  v31 = v62;
  v32 = v65;
  (v53)(v62, v3, v65);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = swift_allocObject();
  v35 = v68;
  *(v34 + 16) = v69;
  *(v34 + 24) = v35;
  v63 = *(v30 + 32);
  (v63)(v34 + v33, v31, v32);
  v80 = v28;
  v81 = MEMORY[0x1E697E5D8];
  v36 = v55;
  v37 = swift_getWitnessTable();
  v38 = v66;
  sub_1D2876F38();

  (*(v54 + 8))(v38, v36);
  (v53)(v31, v51, v32);
  v39 = swift_allocObject();
  v40 = v68;
  *(v39 + 16) = v69;
  *(v39 + 24) = v40;
  (v63)(v39 + v33, v31, v32);
  v41 = MEMORY[0x1E69805D0];
  v78 = v37;
  v79 = MEMORY[0x1E69805D0];
  v42 = v59;
  v43 = swift_getWitnessTable();
  v44 = v56;
  v45 = v67;
  sub_1D2876828();

  (*(v58 + 8))(v45, v42);
  v76 = v43;
  v77 = v41;
  v46 = v61;
  swift_getWitnessTable();
  v47 = v57;
  sub_1D245980C();
  v48 = *(v60 + 8);
  v48(v44, v46);
  sub_1D245980C();
  return (v48)(v47, v46);
}

uint64_t sub_1D22EA704(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D245980C();
  sub_1D245980C();
  return (*(v3 + 8))(v5, a2);
}

void sub_1D22EA7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a3;
  v5 = type metadata accessor for ConcentricContentContainer(0, a2, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v10 = (a1 + *(v9 + 40));
  v12 = v10[1];
  v25 = *v10;
  v11 = v25;
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8, &qword_1D288FB00);
  sub_1D2877308();
  v13 = v24;
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 16) = v22;
  *(v15 + 24) = v16;
  (*(v6 + 32))(v15 + v14, v8, v5);
  v17 = &v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v18 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v19 = *&v13[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow + 8];
  *v17 = sub_1D22EE5AC;
  v17[1] = v15;
  sub_1D22A576C(v18, v19);

  v25 = v11;
  v26 = v12;
  sub_1D2877308();
  v20 = v24;
  sub_1D2744D50();
}

uint64_t sub_1D22EA994(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 32) & 1) == 0)
  {
    CGRectGetHeight(*result);
    type metadata accessor for ConcentricContentContainer(0, a3, a4, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
    return sub_1D2877318();
  }

  return result;
}

void sub_1D22EAA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConcentricContentContainer(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8, &qword_1D288FB00);
  sub_1D2877308();
  sub_1D2744EE8();
  v4 = &v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v5 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v6 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_1D22A576C(v5, v6);
  v7 = &v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  v8 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  v9 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow + 8];
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_1D22A576C(v8, v9);
  v10 = &v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v11 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v12 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide + 8];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_1D22A576C(v11, v12);
  v13 = &v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v14 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v15 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide + 8];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_1D22A576C(v14, v15);
}

void sub_1D22EAB44(uint64_t a1)
{
  sub_1D22EAEF0(319, &qword_1ED89D050, type metadata accessor for ComposingFooterViewModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1D22EAEF0(319, &qword_1ED89D1C0, type metadata accessor for KeyboardEventListener, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1D22EAE8C(319);
      if (v3 <= 0x3F)
      {
        sub_1D22EAEF0(319, &qword_1ED89DFC8, MEMORY[0x1E697C250], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1D22EAF54(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1D22EAF54(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1D22EAEF0(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1D22EAEF0(319, &unk_1ED89E010, type metadata accessor for ComposingAnimationCoordinator, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1D22EAF54(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D22EAF54(319, &qword_1ED89DF40, &type metadata for ComposingFocusState.Value, MEMORY[0x1E697BF18]);
                    if (v10 <= 0x3F)
                    {
                      sub_1D22EAF54(319, &qword_1ED89D030, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1D22BFB5C(319);
                        if (v12 <= 0x3F)
                        {
                          sub_1D22EAFA4(319);
                          if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_1D22EAE8C(uint64_t a1)
{
  if (!qword_1ED89DFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99B8, &unk_1D287E890);
    v1 = sub_1D28744A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89DFC0);
    }
  }
}

void sub_1D22EAEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D22EAF54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D22EAFA4(uint64_t a1)
{
  if (!qword_1ED89CE10)
  {
    sub_1D2875808();
    sub_1D22EDBA4(&qword_1ED89D6A8, MEMORY[0x1E697C4F8], MEMORY[0x1E697C500]);
    v1 = sub_1D28787F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89CE10);
    }
  }
}

unint64_t sub_1D22EB054()
{
  result = qword_1ED89DA38;
  if (!qword_1ED89DA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B20, &qword_1D287F7B0);
    sub_1D22EB0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA38);
  }

  return result;
}

unint64_t sub_1D22EB0E0()
{
  result = qword_1ED89DC88;
  if (!qword_1ED89DC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B18, &qword_1D287F7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B10, &qword_1D287F7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860, &unk_1D287CD70);
    sub_1D22BB9D8(&qword_1ED89D0C8, &qword_1EC6D9B10, &qword_1D287F7A0, MEMORY[0x1E6981870]);
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D490, &qword_1EC6D9058, &unk_1D287CD30, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC88);
  }

  return result;
}

uint64_t sub_1D22EB268@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2870CC8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D22EB2D4(uint64_t a1)
{
  type metadata accessor for ComposingFooterView(0);

  return sub_1D22E7678(a1);
}

unint64_t sub_1D22EB348()
{
  result = qword_1ED89DC38;
  if (!qword_1ED89DC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B30, &qword_1D287F7C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B20, &qword_1D287F7B0);
    sub_1D22EB054();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC38);
  }

  return result;
}

unint64_t sub_1D22EB410()
{
  result = qword_1ED89D5A8;
  if (!qword_1ED89D5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B38, &qword_1D287F7C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B30, &qword_1D287F7C0);
    sub_1D22EB348();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5A8);
  }

  return result;
}

uint64_t sub_1D22EB4DC(uint64_t a1)
{
  type metadata accessor for ComposingFooterView(0);

  return sub_1D22E7C00(a1);
}

unint64_t sub_1D22EB564()
{
  result = qword_1ED89DE08;
  if (!qword_1ED89DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9BB0, &qword_1D287F8E8);
    sub_1D22EDBA4(qword_1ED8A3600, type metadata accessor for CameraPickerView, &unk_1D28A6A6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE08);
  }

  return result;
}

uint64_t sub_1D22EB620@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ComposingFooterView(0);

  return sub_1D22E8254(a1);
}

unint64_t sub_1D22EB690()
{
  result = qword_1ED89D570;
  if (!qword_1ED89D570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B60, &qword_1D287F7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B58, &qword_1D287F7E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D8EA8, &qword_1D287CC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B50, &qword_1D287F7E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9BB0, &qword_1D287F8E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B48, &qword_1D287F7D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B40, &qword_1D287F7D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B38, &qword_1D287F7C8);
    sub_1D22EB410();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D22EB564();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE8, &unk_1D287F920);
    sub_1D22EC2B0(&qword_1ED89D210, &qword_1EC6D8EE8, &unk_1D287F920, sub_1D22BA8F8);
    sub_1D22BA820();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D570);
  }

  return result;
}

unint64_t sub_1D22EB910()
{
  result = qword_1ED89E9D0;
  if (!qword_1ED89E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E9D0);
  }

  return result;
}

uint64_t sub_1D22EB994()
{
  type metadata accessor for ComposingFooterView(0);

  return sub_1D22E91D8();
}

unint64_t sub_1D22EBA14()
{
  result = qword_1ED89DA08;
  if (!qword_1ED89DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B78, &qword_1D287F808);
    sub_1D22EBAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA08);
  }

  return result;
}

unint64_t sub_1D22EBAA0()
{
  result = qword_1ED89DC30;
  if (!qword_1ED89DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B70, &qword_1D287F800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B60, &qword_1D287F7F0);
    sub_1D22EB690();
    sub_1D22EB910();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC30);
  }

  return result;
}

unint64_t sub_1D22EBB84()
{
  result = qword_1ED89D3C0;
  if (!qword_1ED89D3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22EDBA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D3C0);
  }

  return result;
}

uint64_t sub_1D22EBC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ComposingFooterView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1D22EBCFC()
{
  result = qword_1ED8A3098[0];
  if (!qword_1ED8A3098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A3098);
  }

  return result;
}

CGRect *sub_1D22EBDB0(CGRect *a1)
{
  v3 = *(type metadata accessor for ComposingFooterView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D22E8AF4(a1, v4);
}

uint64_t sub_1D22EBEA8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30, &unk_1D28819F0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D22EE680;

  return sub_1D22E7D60(v0 + v3);
}

uint64_t sub_1D22EBF80()
{
  v2 = *(sub_1D2870CC8() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D22EC04C;

  return sub_1D22E78E8(v0 + v3);
}

uint64_t sub_1D22EC04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

unint64_t sub_1D22EC170()
{
  result = qword_1EC6D9BD0;
  if (!qword_1EC6D9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9BD0);
  }

  return result;
}

uint64_t sub_1D22EC22C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ComposingFooterView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D22EC2B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D22EC344(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ComposingFooterView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_35Tm()
{
  v1 = type metadata accessor for ComposingFooterView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2875E18();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2875E18();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB0, &qword_1D2886070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D2875118();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  sub_1D2273818(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  v13 = v1[15];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
  (*(*(v14 - 8) + 8))(v3 + v13, v14);
  v15 = v1[17];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0, &unk_1D2885ED0);
  (*(*(v16 - 8) + 8))(v3 + v15, v16);

  return swift_deallocObject();
}

uint64_t sub_1D22EC804(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ComposingFooterView(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1D22EC9BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D22ECAB0()
{
  result = qword_1EC6D7AE0;
  if (!qword_1EC6D7AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9CA0, &qword_1D287FCC0);
    sub_1D22ECB68();
    sub_1D22BB9D8(&unk_1EC6D77A0, &qword_1EC6D9CC8, &qword_1D287FD68, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AE0);
  }

  return result;
}

unint64_t sub_1D22ECB68()
{
  result = qword_1EC6D7BE8;
  if (!qword_1EC6D7BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9CC0, &qword_1D287FD60);
    sub_1D22ECC20();
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0, &qword_1D287FD70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BE8);
  }

  return result;
}

unint64_t sub_1D22ECC20()
{
  result = qword_1EC6D7DF0;
  if (!qword_1EC6D7DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9CB8, &qword_1D287FD30);
    sub_1D22EDBA4(&qword_1EC6D87E0, type metadata accessor for PeoplePickerView, &unk_1D2893248);
    sub_1D22BB9D8(&qword_1ED89D2F0, &qword_1EC6D9C78, &qword_1D287FC70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DF0);
  }

  return result;
}

unint64_t sub_1D22ECD10()
{
  result = qword_1EC6D9CF0;
  if (!qword_1EC6D9CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9CE8, &qword_1D287FD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9CF8, &qword_1D287FD90);
    sub_1D22BB9D8(&qword_1EC6D9D00, &qword_1EC6D9CF8, &qword_1D287FD90, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9CF0);
  }

  return result;
}

unint64_t sub_1D22ECE10()
{
  result = qword_1EC6D9D18;
  if (!qword_1EC6D9D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9D10, &qword_1D287FDA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9D20, &qword_1D287FDA8);
    sub_1D22ECF04();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70, &qword_1D287FDC0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9D18);
  }

  return result;
}

unint64_t sub_1D22ECF04()
{
  result = qword_1EC6D9D28;
  if (!qword_1EC6D9D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9D20, &qword_1D287FDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9D30, &qword_1D287FDB0);
    sub_1D28756D8();
    sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30, &qword_1D287FDB0, MEMORY[0x1E697D680]);
    sub_1D22EDBA4(&qword_1EC6D7920, MEMORY[0x1E697C4D0], MEMORY[0x1E697C4C8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D320, &qword_1EC6D9D38, &qword_1D287FDB8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9D28);
  }

  return result;
}

uint64_t sub_1D22ED0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    sub_1D2870F68();
  }

  return sub_1D2870F68();
}

uint64_t sub_1D22ED100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D22ED168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D22ED1D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D22ED23C()
{
  result = qword_1ED89CC48;
  if (!qword_1ED89CC48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CC48);
  }

  return result;
}

unint64_t sub_1D22ED320()
{
  result = qword_1EC6D7BF8;
  if (!qword_1EC6D7BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9D68, &qword_1D287FF48);
    sub_1D22ED3DC();
    sub_1D22EDBA4(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BF8);
  }

  return result;
}

unint64_t sub_1D22ED3DC()
{
  result = qword_1ED89DE48;
  if (!qword_1ED89DE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9D78, &qword_1D287FF58);
    sub_1D22EDBA4(qword_1ED8A6590, type metadata accessor for ComposingFooterButtonImage, &unk_1D2880354);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE48);
  }

  return result;
}

unint64_t sub_1D22ED498()
{
  result = qword_1ED89D120;
  if (!qword_1ED89D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D120);
  }

  return result;
}

uint64_t sub_1D22ED580(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ComposingFooterView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D22ED60C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D22C3E6C(a1, v4, v5, v6);
}

uint64_t sub_1D22ED6E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_45Tm()
{
  v1 = type metadata accessor for ComposingFooterView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0, &qword_1D287F6C8);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v2 + v4, 1, v5))
    {
      (*(v6 + 8))(v2 + v4, v5);
    }
  }

  else
  {
  }

  v7 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2875E18();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB0, &qword_1D2886070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D2875118();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  sub_1D2273818(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  v12 = v1[15];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
  (*(*(v13 - 8) + 8))(v2 + v12, v13);
  v14 = v1[17];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0, &unk_1D2885ED0);
  (*(*(v15 - 8) + 8))(v2 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_1D22EDB20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ComposingFooterView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D22EDBA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D22EDBF4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D22EAF54(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1D22EAEF0(319, &qword_1ED89D1C0, type metadata accessor for KeyboardEventListener, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1D22EAF54(319, &qword_1ED89DF40, &type metadata for ComposingFocusState.Value, MEMORY[0x1E697BF18]);
        if (v4 <= 0x3F)
        {
          sub_1D22EAF54(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D22EDD74(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 8;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((*(*(v8 - 8) + 64) + ((v14 + ((((((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = ((a1 + v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v14 + ((((((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
    }

    else
    {
      v26 = *v25;
      if (*v25 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_1D22EE01C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0) - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((((*(v10 + 64) + ((v12 + 8 + ((((((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((*(v10 + 64) + ((v12 + 8 + ((((((((v11 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a3 - v14 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v14)
      {
        v22 = *(v25 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = ((a1 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v24 = *(v10 + 56);

          v24((v12 + 8 + ((((((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          *v23 = (a2 - 1);
        }
      }

      return;
    }
  }

  if (((((*(v10 + 64) + ((v12 + 8 + ((((((((v11 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((*(v10 + 64) + ((v12 + 8 + ((((((((v11 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1D22EE3AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ConcentricContentContainer(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t objectdestroy_310Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ConcentricContentContainer(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  sub_1D2273818(*(v7 + v6[11]), *(v7 + v6[11] + 8));

  v8 = v6[16];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1D22EE5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ConcentricContentContainer(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1D22EA994(a1, v9, v6, v7);
}

double sub_1D22EE684@<D0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8, &qword_1D2890400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ComposingFooterButtonImage.Configuration(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ComposingFooterButtonImage(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v34 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22F4B40(v1, v11, type metadata accessor for ComposingFooterButtonImage.Representation);
  (*(v3 + 56))(v11, 0, 1, v2);
  v17 = v1 + *(type metadata accessor for ComposingCompactFooterButton(0) + 20);
  v18 = sub_1D28763F8();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_1D2876448();
  sub_1D22BD238(v8, &qword_1EC6D9D40, &qword_1D28804D0);
  v33 = sub_1D28763E8();

  sub_1D22F4B40(v1, v5, type metadata accessor for ComposingFooterButtonImage.Representation);
  v19 = 0;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = *(v17 + 8);
  }

  sub_1D22F5370(v5, type metadata accessor for ComposingFooterButtonImage.Representation);
  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  *&v36 = qword_1ED8B0018;
  sub_1D2870F78();
  v20 = sub_1D28748D8();
  *&v36 = sub_1D2877098();
  v21 = sub_1D28748D8();
  v22 = *(v1 + *(type metadata accessor for ComposingFooterButtonConfiguration.Compact(0) + 28));
  v23 = v12[11];
  v24 = *MEMORY[0x1E69816E0];
  v25 = sub_1D2877218();
  (*(*(v25 - 8) + 104))(&v14[v23], v24, v25);
  sub_1D22EC9BC(v11, v14, &qword_1EC6D9DE8, &qword_1D2890400);
  *&v14[v12[5]] = v33;
  *&v14[v12[6]] = v19;
  *&v14[v12[7]] = 0x4048000000000000;
  *&v14[v12[8]] = v20;
  *&v14[v12[9]] = v21;
  v14[v12[10]] = v22;
  v26 = v34;
  sub_1D22F4BA8(v14, v34, type metadata accessor for ComposingFooterButtonImage.Configuration);
  sub_1D2877848();
  sub_1D28748C8();
  v27 = v26;
  v28 = v35;
  sub_1D22F4BA8(v27, v35, type metadata accessor for ComposingFooterButtonImage);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D78, &qword_1D287FF58) + 36));
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  result = *&v38;
  v29[2] = v38;
  return result;
}

uint64_t sub_1D22EEB64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1D2873998();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComposingCompactFooterButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DF0, &qword_1D2880460);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DF8, &qword_1D2880468);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  sub_1D22F4B40(v2, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingCompactFooterButton);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1D22F4BA8(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ComposingCompactFooterButton);
  v34 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E00, &qword_1D2880470);
  sub_1D22F44D0();
  sub_1D2877368();
  v17 = type metadata accessor for ComposingFooterButtonConfiguration.Compact(0);
  sub_1D22EF598(*(v2 + *(v17 + 24)), *(v2 + *(v17 + 24) + 8), *(v2 + *(v17 + 24) + 16), *(v2 + *(v17 + 24) + 24), v14);
  (*(v9 + 8))(v11, v8);
  v18 = v29;
  v33 = v2;
  sub_1D22F46D4();
  sub_1D2876A88();
  sub_1D22BD238(v14, &qword_1EC6D9DF8, &qword_1D2880468);
  if (qword_1ED8A6B68 != -1)
  {
    swift_once();
  }

  v19 = v32;
  v20 = __swift_project_value_buffer(v32, qword_1ED8B02B8);
  (*(v31 + 16))(v30, v20, v19);
  v35 = sub_1D2877108();
  v21 = sub_1D28748D8();
  sub_1D22ED498();
  v22 = sub_1D2877608();
  v23 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E28, &qword_1D28804A0) + 36);
  *v23 = v22;
  *(v23 + 8) = v21;
  *(v23 + 16) = xmmword_1D287F510;
  *(v23 + 32) = 0x3FC999999999999ALL;
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E30, &qword_1D28804A8) + 36));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E38, &qword_1D28804B0);
  v26 = *(v25 + 36);
  v27 = sub_1D2874518();
  result = (*(*(v27 - 8) + 56))(&v24[v26], 1, 1, v27);
  v24[*(v25 + 40)] = 0;
  *v24 = 1;
  return result;
}

uint64_t sub_1D22EF030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E08, &qword_1D2880478);
  MEMORY[0x1EEE9AC00](v48);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E50, &qword_1D28804C8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D78, &qword_1D287FF58);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  sub_1D22F4B40(a1, &v41 - v17, type metadata accessor for ComposingFooterButtonImage.Representation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D22F5370(v18, type metadata accessor for ComposingFooterButtonImage.Representation);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D22EE684(v12);
    sub_1D22BD1D0(v12, v9, &qword_1EC6D9D78, &qword_1D287FF58);
    swift_storeEnumTagMultiPayload();
    sub_1D22F455C();
    sub_1D22ED3DC();
    sub_1D2875AF8();
    return sub_1D22BD238(v12, &qword_1EC6D9D78, &qword_1D287FF58);
  }

  else
  {
    v44 = v9;
    v45 = v7;
    v46 = v10;
    v21 = v48;
    sub_1D22F4B40(a1, v15, type metadata accessor for ComposingFooterButtonImage.Representation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      type metadata accessor for ComposingCompactFooterButton(0);
    }

    sub_1D22F5370(v15, type metadata accessor for ComposingFooterButtonImage.Representation);
    sub_1D28745B8();
    v22 = v53;
    v23 = v55;
    v24 = v56;
    v25 = v57;
    v43 = sub_1D2877848();
    v42 = v26;
    v27 = *(a1 + *(type metadata accessor for ComposingCompactFooterButton(0) + 20));
    sub_1D2870F68();
    sub_1D2877AE8();
    MEMORY[0x1D38A0150](v27);
    sub_1D2874D28();
    v28 = v58;
    v29 = sub_1D2877848();
    v31 = v30;
    sub_1D2877848();
    sub_1D28748C8();
    v32 = sub_1D2877848();
    v34 = v33;
    v35 = &v4[*(v21 + 36)];
    sub_1D22EE684(v35);
    v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E20, &unk_1D2880490) + 36));
    *v36 = v32;
    v36[1] = v34;
    *v4 = v28;
    v37 = v59;
    *(v4 + 24) = v60;
    *(v4 + 8) = v37;
    *(v4 + 20) = 256;
    *(v4 + 6) = v22 * 0.5;
    *(v4 + 7) = v22;
    *(v4 + 8) = v54;
    *(v4 + 9) = v23;
    *(v4 + 10) = v24;
    *(v4 + 11) = v25;
    *(v4 + 48) = 256;
    v38 = v42;
    *(v4 + 13) = v43;
    *(v4 + 14) = v38;
    *(v4 + 15) = v29;
    *(v4 + 16) = v31;
    v39 = v51;
    *(v4 + 136) = v50;
    *(v4 + 152) = v39;
    *(v4 + 168) = v52;
    v40 = v47;
    sub_1D22EC9BC(v4, v47, &qword_1EC6D9E08, &qword_1D2880478);
    sub_1D22BD1D0(v40, v44, &qword_1EC6D9E08, &qword_1D2880478);
    swift_storeEnumTagMultiPayload();
    sub_1D22F455C();
    sub_1D22ED3DC();
    sub_1D2875AF8();
    return sub_1D22BD238(v40, &qword_1EC6D9E08, &qword_1D2880478);
  }
}

uint64_t sub_1D22EF598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v34 = a1;
  v35 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E40, &qword_1D28804B8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E48, &qword_1D28804C0);
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = sub_1D28720B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 1 == 0xFFFFFFFF || (sub_1D28720A8(), v17 = sub_1D2872098(), (*(v14 + 8))(v16, v13), (v17 & 1) == 0))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DF0, &qword_1D2880460);
    (*(*(v22 - 8) + 16))(v9, v37, v22);
    swift_storeEnumTagMultiPayload();
    v23 = sub_1D22BB9D8(&qword_1ED89D160, &qword_1EC6D9DF0, &qword_1D2880460, MEMORY[0x1E697D680]);
    v39 = v22;
    v40 = v23;
    swift_getOpaqueTypeConformance2();
    return sub_1D2875AF8();
  }

  else
  {
    v33[0] = v7;
    if ((a3 & 0x8000000000000000) != 0)
    {
      v25 = qword_1ED89E0E8;
      sub_1D2870F68();
      sub_1D2870F68();
      if (v25 != -1)
      {
        swift_once();
      }

      v26 = qword_1ED8B0058;
      v18 = sub_1D2876668();
    }

    else
    {
      v39 = v34;
      v40 = a2;
      sub_1D22ED0B0(v34, a2, a3, v35);
      sub_1D22BD06C();
      v18 = sub_1D2876698();
    }

    v34 = v19;
    v35 = v18;
    v27 = v20;
    v33[1] = v21;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DF0, &qword_1D2880460);
    v29 = sub_1D22BB9D8(&qword_1ED89D160, &qword_1EC6D9DF0, &qword_1D2880460, MEMORY[0x1E697D680]);
    v31 = v34;
    v30 = v35;
    sub_1D2876DD8();
    sub_1D22ED6E0(v30, v31, v27 & 1);

    v32 = v36;
    (*(v36 + 16))(v9, v12, v10);
    swift_storeEnumTagMultiPayload();
    v39 = v28;
    v40 = v29;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    return (*(v32 + 8))(v12, v10);
  }
}

uint64_t sub_1D22EFA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v33 = a1;
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F30, &qword_1D28805A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F38, &qword_1D28805A8);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = sub_1D28720B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 1 == 0xFFFFFFFF || (sub_1D28720A8(), v17 = sub_1D2872098(), (*(v14 + 8))(v16, v13), (v17 & 1) == 0))
  {
    sub_1D22BD1D0(v36, v9, &qword_1EC6D9E60, &qword_1D28804E0);
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E60, &qword_1D28804E0);
    v22 = sub_1D22F50C8();
    v38 = v21;
    v39 = v22;
    swift_getOpaqueTypeConformance2();
    return sub_1D2875AF8();
  }

  else
  {
    v32[1] = v7;
    if ((a3 & 0x8000000000000000) != 0)
    {
      v24 = qword_1ED89E0E8;
      sub_1D2870F68();
      sub_1D2870F68();
      if (v24 != -1)
      {
        swift_once();
      }

      v25 = qword_1ED8B0058;
      v18 = sub_1D2876668();
    }

    else
    {
      v38 = v33;
      v39 = a2;
      sub_1D22ED0B0(v33, a2, a3, v34);
      sub_1D22BD06C();
      v18 = sub_1D2876698();
    }

    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E60, &qword_1D28804E0);
    v30 = sub_1D22F50C8();
    sub_1D2876DD8();
    sub_1D22ED6E0(v26, v27, v28 & 1);

    v31 = v35;
    (*(v35 + 16))(v9, v12, v10);
    swift_storeEnumTagMultiPayload();
    v38 = v29;
    v39 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    return (*(v31 + 8))(v12, v10);
  }
}

uint64_t sub_1D22EFE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v33 = a1;
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA088, &qword_1D28808B0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA090, &qword_1D28808B8);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = sub_1D28720B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 1 == 0xFFFFFFFF || (sub_1D28720A8(), v17 = sub_1D2872098(), (*(v14 + 8))(v16, v13), (v17 & 1) == 0))
  {
    sub_1D22BD1D0(v36, v9, &qword_1EC6DA098, &qword_1D28808C0);
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA098, &qword_1D28808C0);
    v22 = sub_1D22F6B24();
    v38 = v21;
    v39 = v22;
    swift_getOpaqueTypeConformance2();
    return sub_1D2875AF8();
  }

  else
  {
    v32[1] = v7;
    if ((a3 & 0x8000000000000000) != 0)
    {
      v24 = qword_1ED89E0E8;
      sub_1D2870F68();
      sub_1D2870F68();
      if (v24 != -1)
      {
        swift_once();
      }

      v25 = qword_1ED8B0058;
      v18 = sub_1D2876668();
    }

    else
    {
      v38 = v33;
      v39 = a2;
      sub_1D22ED0B0(v33, a2, a3, v34);
      sub_1D22BD06C();
      v18 = sub_1D2876698();
    }

    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA098, &qword_1D28808C0);
    v30 = sub_1D22F6B24();
    sub_1D2876DD8();
    sub_1D22ED6E0(v26, v27, v28 & 1);

    v31 = v35;
    (*(v35 + 16))(v9, v12, v10);
    swift_storeEnumTagMultiPayload();
    v38 = v29;
    v39 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    return (*(v31 + 8))(v12, v10);
  }
}

uint64_t sub_1D22F02A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + *(type metadata accessor for ComposingFooterButtonConfiguration.Compact(0) + 20) + 16) & 0x8000000000000000) != 0)
  {
    v7 = qword_1ED89E0E8;
    sub_1D2870F68();
    sub_1D2870F68();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED8B0058;
    result = sub_1D2876668();
  }

  else
  {
    sub_1D22BD06C();
    sub_1D2870F68();
    result = sub_1D2876698();
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1D22F03BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v3 = sub_1D2873998();
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2877548();
  v119 = *(v5 - 8);
  v120 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v117 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8, &qword_1D2890400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v102 - v10;
  v103 = type metadata accessor for ComposingRegularFooterButton(0);
  v12 = *(v103 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E58, &qword_1D28804D8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v102 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E60, &qword_1D28804E0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v102 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E68, &qword_1D28804E8);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v102 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E70, &qword_1D28804F0);
  MEMORY[0x1EEE9AC00](v107);
  v122 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v102 - v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E78, &qword_1D28804F8);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v123 = &v102 - v25;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E80, &qword_1D2880500);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v102 - v26;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E88, &unk_1D2880508);
  MEMORY[0x1EEE9AC00](v108);
  v112 = &v102 - v27;
  sub_1D22F4B40(v2, &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingRegularFooterButton);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = swift_allocObject();
  sub_1D22F4BA8(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for ComposingRegularFooterButton);
  v124 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E90, &qword_1D2880518);
  sub_1D22F4C88();
  sub_1D2877368();
  v30 = &v17[*(v15 + 44)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D38, &qword_1D287FDB8) + 28);
  v32 = *MEMORY[0x1E697DC10];
  v33 = sub_1D2874448();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  v34 = MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  sub_1D22BD1D0(v2, v11, &qword_1EC6D9DE8, &qword_1D2890400);
  v35 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  if ((*(*(v35 - 8) + 48))(v11, 1, v35) == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D9DE8, &qword_1D2890400);
    v36 = 8;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D22F5370(v11, type metadata accessor for ComposingFooterButtonImage.Representation);
    v36 = 8;
    if (EnumCaseMultiPayload == 1)
    {
      v36 = 16;
    }
  }

  v38 = *(v2 + *(v103 + 28) + v36);
  sub_1D22EC9BC(v17, v20, &qword_1EC6D9E58, &qword_1D28804D8);
  v39 = &v20[*(v18 + 36)];
  *v39 = v34;
  v39[1] = v38;
  v40 = type metadata accessor for ComposingFooterButtonConfiguration.Regular(0);
  v41 = v105;
  sub_1D22EFA3C(*(v2 + v40[9]), *(v2 + v40[9] + 8), *(v2 + v40[9] + 16), *(v2 + v40[9] + 24), v105);
  sub_1D22BD238(v20, &qword_1EC6D9E60, &qword_1D28804E0);
  v42 = *(v2 + v40[8]);
  if (v42 == 1)
  {
    v43 = v40[5];
  }

  else
  {
    v43 = v40[7];
  }

  v44 = (v2 + v43);
  v45 = v44[1];
  if (v44[2] < 0)
  {
    v49 = qword_1ED89E0E8;
    sub_1D2870F68();
    sub_1D2870F68();
    if (v49 != -1)
    {
      swift_once();
    }

    v50 = qword_1ED8B0058;
    v46 = sub_1D2876668();
  }

  else
  {
    v125 = *v44;
    v126 = v45;
    sub_1D22BD06C();
    sub_1D2870F68();
    v46 = sub_1D2876698();
  }

  v51 = v46;
  v52 = v47;
  v53 = v48;
  sub_1D22F4FFC();
  sub_1D2876AB8();
  sub_1D22ED6E0(v51, v52, v53 & 1);

  sub_1D22BD238(v41, &qword_1EC6D9E68, &qword_1D28804E8);
  if (!v42)
  {
    sub_1D2875798();
    v64 = sub_1D2876668();
    goto LABEL_19;
  }

  v54 = (v2 + v40[6]);
  v55 = v54[2];
  v56 = v54[3];
  v58 = *v54;
  v57 = v54[1];
  v59 = *v54;
  v60 = v57;
  v61 = v55;
  v62 = v56;
  if (v55 >> 1 == 0xFFFFFFFF)
  {
    v63 = (v2 + v40[7]);
    v59 = *v63;
    v60 = v63[1];
    v61 = v63[2];
    v62 = v63[3];
    sub_1D22ED0B0(*v63, v60, v61, v62);
  }

  if ((v61 & 0x8000000000000000) == 0)
  {
    v125 = v59;
    v126 = v60;
    sub_1D22F53D0(v58, v57, v55, v56);
    sub_1D22BD06C();
    v64 = sub_1D2876698();
LABEL_19:
    v67 = v64;
    v68 = v65;
    v69 = v66;
    goto LABEL_20;
  }

  sub_1D22F53D0(v58, v57, v55, v56);
  v96 = qword_1ED89E0E8;
  sub_1D2870F68();
  sub_1D2870F68();
  if (v96 != -1)
  {
    swift_once();
  }

  v97 = qword_1ED8B0058;
  v98 = sub_1D2876668();
  v100 = v99;
  v69 = v101;
  sub_1D22F440C(v59, v60, v61, v62);
  v68 = v100;
  v67 = v98;
LABEL_20:
  v70 = v106;
  v71 = v122;
  sub_1D2874F28();
  sub_1D22ED6E0(v67, v68, v69 & 1);

  v72 = sub_1D22BD238(v71, &qword_1EC6D9E70, &qword_1D28804F0);
  MEMORY[0x1EEE9AC00](v72);
  sub_1D22F526C();
  sub_1D2876DB8();
  sub_1D22BD238(v70, &qword_1EC6D9E70, &qword_1D28804F0);
  v73 = *MEMORY[0x1E697F468];
  v74 = sub_1D2875868();
  v75 = *(*(v74 - 8) + 104);
  v76 = v117;
  v75(v117, v73, v74);
  v77 = v2 + v40[12];
  v78 = *v77;
  v79 = *(v77 + 8);
  if (qword_1ED8A6B68 != -1)
  {
    swift_once();
  }

  if (v79)
  {
    v78 = 0.95;
  }

  v80 = v116;
  v81 = __swift_project_value_buffer(v116, qword_1ED8B02B8);
  (*(v115 + 16))(v114, v81, v80);
  v125 = sub_1D2877108();
  v82 = sub_1D28748D8();
  v83 = v118;
  sub_1D22F4B40(v76, v118, MEMORY[0x1E6981998]);
  sub_1D22F5328(&qword_1EC6D9F18, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  v84 = v120;
  v85 = sub_1D2877608();
  sub_1D22F5370(v76, MEMORY[0x1E6981998]);
  v86 = v113;
  (*(v110 + 32))(v113, v123, v111);
  v87 = v86 + *(v109 + 36);
  *v87 = v85;
  *(v87 + 8) = v82;
  *(v87 + 16) = 0x3FF0000000000000;
  *(v87 + 24) = v78;
  *(v87 + 32) = 0x3FC999999999999ALL;
  v75(v83, v73, v74);
  v88 = v112;
  v89 = &v112[*(v108 + 36)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F20, &qword_1D2880590);
  v91 = *(v90 + 36);
  v92 = sub_1D2874518();
  (*(*(v92 - 8) + 56))(&v89[v91], 1, 1, v92);
  v93 = *(v90 + 40);
  sub_1D22F4BA8(v83, &v89[v93], MEMORY[0x1E6981998]);
  (*(v119 + 56))(&v89[v93], 0, 1, v84);
  *v89 = 1;
  sub_1D22EC9BC(v86, v88, &qword_1EC6D9E80, &qword_1D2880500);
  v94 = v121;
  sub_1D22EC9BC(v88, v121, &qword_1EC6D9E88, &unk_1D2880508);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F28, &qword_1D2880598);
  *(v94 + *(result + 36)) = 0;
  return result;
}

__n128 sub_1D22F1244@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8, &qword_1D2890400);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9ED8, &qword_1D2880538);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9EC8, &qword_1D2880530);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9EB8, &qword_1D2880528);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9EA8, &qword_1D2880520);
  MEMORY[0x1EEE9AC00](v45);
  v16 = &v44 - v15;
  v17 = sub_1D28756A8();
  sub_1D22BD1D0(a1, v5, &qword_1EC6D9DE8, &qword_1D2890400);
  v18 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  if ((*(*(v18 - 8) + 48))(v5, 1, v18) == 1)
  {
    sub_1D22BD238(v5, &qword_1EC6D9DE8, &qword_1D2890400);
    v19 = 8;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D22F5370(v5, type metadata accessor for ComposingFooterButtonImage.Representation);
    if (EnumCaseMultiPayload == 1)
    {
      v19 = 16;
    }

    else
    {
      v19 = 8;
    }
  }

  v21 = type metadata accessor for ComposingRegularFooterButton(0);
  v22 = *(a1 + *(v21 + 28) + v19);
  *v8 = v17;
  *(v8 + 1) = v22;
  v8[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F40, &qword_1D28805B0);
  sub_1D22F1738(a1, &v8[*(v23 + 44)]);
  v24 = *(a1 + *(v21 + 28));
  KeyPath = swift_getKeyPath();
  sub_1D22EC9BC(v8, v11, &qword_1EC6D9ED8, &qword_1D2880538);
  v26 = &v11[*(v9 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_1D2870F78();
  v27 = sub_1D2876388();
  sub_1D22EC9BC(v11, v14, &qword_1EC6D9EC8, &qword_1D2880530);
  v28 = &v14[*(v12 + 36)];
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = sub_1D2876368();
  sub_1D2874298();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1D22EC9BC(v14, v16, &qword_1EC6D9EB8, &qword_1D2880528);
  v38 = &v16[*(v45 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_1D2877848();
  sub_1D2875208();
  v39 = v46;
  sub_1D22EC9BC(v16, v46, &qword_1EC6D9EA8, &qword_1D2880520);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E90, &qword_1D2880518) + 36);
  v41 = v52;
  *(v40 + 64) = v51;
  *(v40 + 80) = v41;
  *(v40 + 96) = v53;
  v42 = v48;
  *v40 = v47;
  *(v40 + 16) = v42;
  result = v50;
  *(v40 + 32) = v49;
  *(v40 + 48) = result;
  return result;
}

uint64_t sub_1D22F1738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F48, &qword_1D28805E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  sub_1D22F1A78(a1);
  v10 = (a1 + *(type metadata accessor for ComposingFooterButtonConfiguration.Regular(0) + 20));
  v11 = v10[1];
  if ((v10[2] & 0x8000000000000000) != 0)
  {
    v16 = qword_1ED89E0E8;
    sub_1D2870F68();
    sub_1D2870F68();
    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED8B0058;
    v12 = sub_1D2876668();
  }

  else
  {
    *&v54[0] = *v10;
    *(&v54[0] + 1) = v11;
    sub_1D22BD06C();
    sub_1D2870F68();
    v12 = sub_1D2876698();
  }

  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  sub_1D2739754(0, 0, &v48);
  LOBYTE(v29) = v20 & 1;
  *&v35 = v18;
  *(&v35 + 1) = v19;
  LOBYTE(v36) = v20 & 1;
  *(&v36 + 1) = v21;
  v37 = v48;
  v38 = v49;
  v39 = v50;
  v40 = v51;
  v41[0] = v18;
  v41[1] = v19;
  v42 = v20 & 1;
  v43 = v21;
  v47 = v51;
  v45 = v49;
  v46 = v50;
  v44 = v48;
  sub_1D22BD1D0(&v35, v54, &qword_1EC6D9F50, &qword_1D28805F0);
  sub_1D22BD238(v41, &qword_1EC6D9F50, &qword_1D28805F0);
  sub_1D22BD1D0(v9, v6, &qword_1EC6D9F48, &qword_1D28805E8);
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v29 = v35;
  v30 = v36;
  sub_1D22BD1D0(v6, a2, &qword_1EC6D9F48, &qword_1D28805E8);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F58, &qword_1D28805F8) + 48);
  v24 = v32;
  v23 = v33;
  v51 = v32;
  v52 = v33;
  v25 = v34;
  v53 = v34;
  v26 = v30;
  v49 = v30;
  v50 = v31;
  v27 = v29;
  v48 = v29;
  *(v22 + 32) = v31;
  *(v22 + 48) = v24;
  *(v22 + 64) = v23;
  *(v22 + 80) = v25;
  *v22 = v27;
  *(v22 + 16) = v26;
  sub_1D22BD1D0(&v48, v54, &qword_1EC6D9F50, &qword_1D28805F0);
  sub_1D22BD238(v9, &qword_1EC6D9F48, &qword_1D28805E8);
  v54[2] = v31;
  v54[3] = v32;
  v54[4] = v33;
  v55 = v34;
  v54[0] = v29;
  v54[1] = v30;
  sub_1D22BD238(v54, &qword_1EC6D9F50, &qword_1D28805F0);
  return sub_1D22BD238(v6, &qword_1EC6D9F48, &qword_1D28805E8);
}

void sub_1D22F1A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F60, &qword_1D2880600);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8, &qword_1D2890400);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v41 - v6;
  v47 = type metadata accessor for ComposingFooterButtonImage(0);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F68, &qword_1D2880608);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - v13;
  v14 = sub_1D2875628();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 + *(type metadata accessor for ComposingRegularFooterButton(0) + 24);
  v19 = *v18;
  v20 = *(v18 + 8);
  sub_1D2870F78();
  if ((v20 & 1) == 0)
  {
    sub_1D2878A28();
    v21 = sub_1D28762E8();
    v41 = a1;
    v22 = v21;
    sub_1D2873BE8();

    a1 = v41;
    sub_1D2875618();
    swift_getAtKeyPath();
    j__swift_release(v19);
    (*(v15 + 8))(v17, v14);
    v19 = v48;
  }

  if (!v19)
  {
    goto LABEL_6;
  }

  if (*(a1 + *(type metadata accessor for ComposingFooterButtonConfiguration.Regular(0) + 52)))
  {

LABEL_6:
    v23 = v46;
    sub_1D22F2060(a1, v46);
    sub_1D22F4B40(v23, v4, type metadata accessor for ComposingFooterButtonImage);
    swift_storeEnumTagMultiPayload();
    sub_1D22F567C();
    sub_1D22F5328(qword_1ED8A6590, type metadata accessor for ComposingFooterButtonImage, &unk_1D2880354);
    sub_1D2875AF8();
    sub_1D22F5370(v23, type metadata accessor for ComposingFooterButtonImage);
    return;
  }

  v24 = v10;
  sub_1D22F2060(a1, v45);
  v25 = a1;
  v26 = v42;
  sub_1D22BD1D0(v25, v42, &qword_1EC6D9DE8, &qword_1D2890400);
  v27 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    sub_1D22BD238(v26, &qword_1EC6D9DE8, &qword_1D2890400);
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v30 = v26;
    v28 = sub_1D22F23E4();
    v29 = v31;
    sub_1D22F5370(v30, type metadata accessor for ComposingFooterButtonImage.Representation);
  }

  v32 = *(v19 + 16);
  v33 = sub_1D2875FE8();
  sub_1D2877AE8();
  v35 = v34;
  v37 = v36;
  v38 = v43;
  sub_1D22F4BA8(v45, v43, type metadata accessor for ComposingFooterButtonImage);
  v39 = v38 + *(v24 + 36);
  *v39 = v28;
  *(v39 + 8) = v29;
  *(v39 + 16) = v32;
  *(v39 + 24) = v33;
  *(v39 + 32) = v35;
  *(v39 + 40) = v37;
  *(v39 + 48) = 1;
  v40 = v44;
  sub_1D22EC9BC(v38, v44, &qword_1EC6D9F68, &qword_1D2880608);
  sub_1D22BD1D0(v40, v4, &qword_1EC6D9F68, &qword_1D2880608);
  swift_storeEnumTagMultiPayload();
  sub_1D22F567C();
  sub_1D22F5328(qword_1ED8A6590, type metadata accessor for ComposingFooterButtonImage, &unk_1D2880354);
  sub_1D2875AF8();

  sub_1D22BD238(v40, &qword_1EC6D9F68, &qword_1D2880608);
}

uint64_t sub_1D22F2060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1D28764E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2877218();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E69816E0], v11, v13);
  sub_1D22BD1D0(a1, a2, &qword_1EC6D9DE8, &qword_1D2890400);
  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  v24 = qword_1ED8B0018;
  sub_1D2870F78();
  v23 = sub_1D28748D8();
  v24 = sub_1D2877098();
  v22 = sub_1D28748D8();
  v16 = type metadata accessor for ComposingFooterButtonImage.Configuration(0);
  (*(v12 + 16))(a2 + v16[11], v15, v11);
  (*(v8 + 104))(v10, *MEMORY[0x1E6980EF8], v7);
  v17 = sub_1D28763F8();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_1D2876418();
  v18 = sub_1D2876458();
  sub_1D22BD238(v6, &qword_1EC6D9D40, &qword_1D28804D0);
  (*(v8 + 8))(v10, v7);
  result = (*(v12 + 8))(v15, v11);
  *(a2 + v16[5]) = v18;
  *(a2 + v16[6]) = 0;
  *(a2 + v16[7]) = 0x4042000000000000;
  v20 = v22;
  *(a2 + v16[8]) = v23;
  *(a2 + v16[9]) = v20;
  *(a2 + v16[10]) = 1;
  return result;
}

unint64_t sub_1D22F23E4()
{
  v1 = v0;
  v2 = type metadata accessor for PlaygroundImage(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D22F4B40(v1, v7, type metadata accessor for ComposingFooterButtonImage.Representation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = v7[1];
    v13 = 0xD00000000000001BLL;
    v14 = 0x80000001D28AFF30;
    MEMORY[0x1D38A0C50](v8, v9);

    return v13;
  }

  else
  {
    sub_1D22F4BA8(v7, v4, type metadata accessor for PlaygroundImage);
    v11 = sub_1D28717B8();
    v13 = 0xD00000000000001BLL;
    v14 = 0x80000001D28AFF30;
    MEMORY[0x1D38A0C50](v11);

    v10 = v13;
    sub_1D22F5370(v4, type metadata accessor for PlaygroundImage);
  }

  return v10;
}

uint64_t sub_1D22F25A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + *(type metadata accessor for ComposingFooterButtonConfiguration.Regular(0) + 20) + 16) & 0x8000000000000000) != 0)
  {
    v7 = qword_1ED89E0E8;
    sub_1D2870F68();
    sub_1D2870F68();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED8B0058;
    result = sub_1D2876668();
  }

  else
  {
    sub_1D22BD06C();
    sub_1D2870F68();
    result = sub_1D2876698();
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1D22F26B8()
{
  v0 = sub_1D2877028();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F80, &qword_1D28A2410);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D28800F0;
  v5 = *MEMORY[0x1E69814E0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_1D28770F8();
  v6(v3, v5, v0);
  *(v4 + 40) = sub_1D28770F8();
  v6(v3, v5, v0);
  *(v4 + 48) = sub_1D28770F8();
  v6(v3, v5, v0);
  *(v4 + 56) = sub_1D28770F8();
  sub_1D2877AB8();
  sub_1D2877AA8();
  MEMORY[0x1D38A0150](v4);
  sub_1D2874C88();
  return sub_1D28748D8();
}

double sub_1D22F2904@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v44 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F98, &qword_1D2880630);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v35 - v3;
  v37 = sub_1D28771B8();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaygroundImage(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FA0, &qword_1D2880638);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v35 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FA8, &qword_1D2880640);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v35 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FB0, &qword_1D2880648);
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v35 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FB8, &unk_1D2880650);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8, &qword_1D2890400);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  v17 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  sub_1D22BD1D0(v44, v16, &qword_1EC6D9DE8, &qword_1D2890400);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D22BD238(v16, &qword_1EC6D9DE8, &qword_1D2890400);
    sub_1D22F319C(v11);
    sub_1D22EC9BC(v11, v13, &qword_1EC6D9FB0, &qword_1D2880648);
    (*(v39 + 7))(v13, 0, 1, v43);
    sub_1D22BD1D0(v13, v9, &qword_1EC6D9FB8, &unk_1D2880650);
    swift_storeEnumTagMultiPayload();
    sub_1D22F5764();
    sub_1D22F5D30();
    sub_1D2875AF8();
    sub_1D22BD238(v13, &qword_1EC6D9FB8, &unk_1D2880650);
  }

  else
  {
    v25 = v46;
    v39 = v9;
    sub_1D22F4BA8(v16, v23, type metadata accessor for ComposingFooterButtonImage.Representation);
    v44 = v23;
    sub_1D22F4B40(v23, v20, type metadata accessor for ComposingFooterButtonImage.Representation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D22F319C(v11);

      sub_1D22BD1D0(v11, v42, &qword_1EC6D9FB0, &qword_1D2880648);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FC0, &unk_1D28A5450);
      sub_1D22F57F0();
      sub_1D22F5900();
      v26 = v41;
      sub_1D2875AF8();
      sub_1D22BD238(v11, &qword_1EC6D9FB0, &qword_1D2880648);
    }

    else
    {
      v27 = v38;
      sub_1D22F4BA8(v20, v38, type metadata accessor for PlaygroundImage);
      sub_1D262D4E8();
      sub_1D2877188();
      v28 = v36;
      v29 = v35;
      v30 = v37;
      (*(v36 + 104))(v35, *MEMORY[0x1E6981630], v37);
      v31 = sub_1D2877228();

      (*(v28 + 8))(v29, v30);
      v32 = *(v25 + *(type metadata accessor for ComposingFooterButtonImage.Configuration(0) + 40));
      sub_1D2877848();
      sub_1D28748C8();
      *&v50[22] = v53;
      *&v50[38] = v54;
      *&v50[6] = v52;
      v33 = *&v50[16];
      v34 = v42;
      *(v42 + 18) = *v50;
      v51 = 1;
      *v34 = v31;
      *(v34 + 8) = 0;
      *(v34 + 16) = 1;
      *(v34 + 17) = v32;
      *(v34 + 34) = v33;
      *(v34 + 50) = *&v50[32];
      *(v34 + 64) = *&v50[46];
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FC0, &unk_1D28A5450);
      sub_1D22F57F0();
      sub_1D22F5900();
      v26 = v41;
      sub_1D2875AF8();
      sub_1D22F5370(v27, type metadata accessor for PlaygroundImage);
    }

    sub_1D22BD1D0(v26, v39, &qword_1EC6D9FA0, &qword_1D2880638);
    swift_storeEnumTagMultiPayload();
    sub_1D22F5764();
    sub_1D22F5D30();
    sub_1D2875AF8();
    sub_1D22BD238(v26, &qword_1EC6D9FA0, &qword_1D2880638);
    sub_1D22F5370(v44, type metadata accessor for ComposingFooterButtonImage.Representation);
  }

  return result;
}

uint64_t sub_1D22F319C@<X0>(uint64_t a3@<X8>)
{
  v30 = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v29);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FD0, &unk_1D2880670);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v28 - v7);
  sub_1D2870F68();
  v31 = sub_1D2877198();
  v9 = type metadata accessor for ComposingFooterButtonImage.Configuration(0);
  v10 = *(v3 + *(v9 + 20));
  KeyPath = swift_getKeyPath();
  v28[1] = v9;
  v12 = *(v9 + 44);
  v13 = swift_getKeyPath();
  v14 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FD8, &qword_1D2880680) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8, &unk_1D2880690) + 28);
  v16 = sub_1D2877218();
  (*(*(v16 - 8) + 16))(v14 + v15, v3 + v12, v16);
  *v14 = v13;
  *v8 = v31;
  v8[1] = KeyPath;
  v8[2] = v10;
  v17 = (v8 + *(v6 + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0, &qword_1D288C4C0) + 28);
  sub_1D2870F78();
  sub_1D2875968();
  v19 = sub_1D2875998();
  (*(*(v19 - 8) + 56))(v17 + v18, 0, 1, v19);
  *v17 = swift_getKeyPath();
  v20 = *MEMORY[0x1E697E728];
  v21 = sub_1D2874E88();
  (*(*(v21 - 8) + 104))(v5, v20, v21);
  sub_1D22F5328(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1D2877F98();
  if (result)
  {
    sub_1D22F5AB4();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    v23 = v30;
    sub_1D28769B8();
    sub_1D22BD238(v5, &unk_1EC6DE860, &unk_1D287CD70);
    sub_1D22BD238(v8, &qword_1EC6D9FD0, &unk_1D2880670);
    sub_1D2877848();
    sub_1D28748C8();
    v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FC8, &qword_1D2880668) + 36));
    v25 = v33;
    *v24 = v32;
    v24[1] = v25;
    v24[2] = v34;
    sub_1D2739754(0, 0, v35);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FB0, &qword_1D2880648);
    v26 = v23 + *(result + 36);
    v27 = v35[1];
    *v26 = v35[0];
    *(v26 + 16) = v27;
    *(v26 + 32) = v35[2];
    *(v26 + 48) = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D22F35C0@<X0>(uint64_t a1@<X8>)
{
  sub_1D22F2904(v1, v1, a1);
  v3 = type metadata accessor for ComposingFooterButtonImage.Configuration(0);
  v4 = *&v1[*(v3 + 24)];
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F88, &qword_1D2880620) + 36);
  *v5 = v4;
  *(v5 + 8) = 256;
  v6 = sub_1D2877848();
  v8 = v7;
  v9 = *&v1[*(v3 + 36)];
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F90, &qword_1D2880628) + 36);
  *v10 = v9;
  *(v10 + 8) = 256;
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;

  return sub_1D2870F78();
}

uint64_t sub_1D22F3690@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA048, &qword_1D2880870);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA050, &qword_1D2880878);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v40 - v8;
  sub_1D2875F38();
  v9 = sub_1D2877848();
  v11 = v10;
  v40 = v1;
  v13 = *v1;
  v12 = *(v1 + 1);
  v14 = sub_1D2875F48() & 1;
  *&v44 = v13;
  *(&v44 + 1) = v12;
  LOWORD(v45) = 256;
  *(&v45 + 1) = v13;
  LOBYTE(v46) = v14;
  *(&v46 + 1) = 0;
  *&v47 = v9;
  *(&v47 + 1) = v11;
  v15 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA058, &qword_1D2880880) + 36)];
  v16 = v45;
  *v15 = v44;
  *(v15 + 1) = v16;
  v17 = v47;
  *(v15 + 2) = v46;
  *(v15 + 3) = v17;
  *v48 = v13;
  v48[1] = v12;
  v49 = 256;
  v50 = v13;
  v51 = v14;
  v52 = 0;
  v53 = v9;
  v54 = v11;
  swift_retain_n();
  sub_1D2870F78();
  sub_1D22BD1D0(&v44, v43, &qword_1EC6DA060, &qword_1D2880888);
  sub_1D22BD238(v48, &qword_1EC6DA060, &qword_1D2880888);
  v18 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA068, &qword_1D2880890) + 36)];
  *v18 = v13;
  v18[8] = 0;
  v19 = &v5[*(v3 + 44)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0, &unk_1D28807F0);
  v21 = *(v20 + 36);
  v22 = sub_1D2874518();
  (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
  *&v19[*(v20 + 40)] = v13;
  *v19 = 1;
  swift_retain_n();
  v23 = sub_1D2875F48();
  v24 = 2;
  if (v23)
  {
    v24 = 3;
  }

  v25 = v40;
  v26 = v40[v24];
  sub_1D2877AE8();
  v28 = v27;
  v30 = v29;
  v31 = v41;
  v32 = sub_1D22EC9BC(v5, v41, &qword_1EC6DA048, &qword_1D2880870);
  v33 = (v31 + *(v7 + 44));
  *v33 = v26;
  v33[1] = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  v34 = MEMORY[0x1D38A0390](v32, v25[4], 1.0, 0.0);
  v35 = sub_1D2875F48();
  v36 = v31;
  v37 = v42;
  sub_1D22EC9BC(v36, v42, &qword_1EC6DA050, &qword_1D2880878);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA070, &qword_1D2880898);
  v39 = v37 + *(result + 36);
  *v39 = v34;
  *(v39 + 8) = v35 & 1;
  return result;
}

uint64_t sub_1D22F39E4()
{

  v1 = OBJC_IVAR____TtCV23ImagePlaygroundInternal28ComposingRegularFooterButton21TransitionCoordinator___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D22F3AB0(uint64_t a1)
{
  result = sub_1D2871A28();
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

void sub_1D22F3BCC(uint64_t a1)
{
  type metadata accessor for ComposingFooterButtonConfiguration.Regular(319);
  if (v1 <= 0x3F)
  {
    sub_1D22BFAB4();
    if (v2 <= 0x3F)
    {
      sub_1D22F3CC0(319, &qword_1ED89E008, &qword_1EC6D9DE0, &unk_1D2880250);
      if (v3 <= 0x3F)
      {
        sub_1D22F3CC0(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D22F3CC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D28744A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D22F3D4C(uint64_t a1)
{
  sub_1D22F3E28(319);
  if (v1 <= 0x3F)
  {
    sub_1D22F3EA0(319, &qword_1ED8A4E38, &type metadata for TextStorage);
    if (v2 <= 0x3F)
    {
      sub_1D22F3EA0(319, &qword_1ED8A6C30, MEMORY[0x1E69E7DE0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D22F3E28(uint64_t a1)
{
  if (!qword_1ED8A6608[0])
  {
    type metadata accessor for ComposingFooterButtonImage.Representation(255);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, qword_1ED8A6608);
    }
  }
}

void sub_1D22F3EA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D22F3F54(uint64_t a1)
{
  result = type metadata accessor for ComposingFooterButtonImage.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D22F3FE8(uint64_t a1)
{
  sub_1D22F3E28(319);
  if (v1 <= 0x3F)
  {
    sub_1D2877218();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D22F40F0(uint64_t a1)
{
  result = type metadata accessor for PlaygroundImage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D22F41C0(uint64_t a1)
{
  result = type metadata accessor for ComposingFooterButtonConfiguration.Compact(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D22BFAB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D22F424C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D22F4294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D22F430C(uint64_t a1)
{
  type metadata accessor for ComposingFooterButtonImage.Representation(319);
  if (v1 <= 0x3F)
  {
    sub_1D22F3EA0(319, &qword_1ED8A4E38, &type metadata for TextStorage);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D22F440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (a3 < 0)
  {
  }

  return result;
}

unint64_t sub_1D22F44D0()
{
  result = qword_1ED89D5F8;
  if (!qword_1ED89D5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E00, &qword_1D2880470);
    sub_1D22F455C();
    sub_1D22ED3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5F8);
  }

  return result;
}

unint64_t sub_1D22F455C()
{
  result = qword_1ED89DAD0;
  if (!qword_1ED89DAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E08, &qword_1D2880478);
    sub_1D22F4614();
    sub_1D22BB9D8(&qword_1ED89D728, &qword_1EC6D9E20, &unk_1D2880490, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAD0);
  }

  return result;
}

unint64_t sub_1D22F4614()
{
  result = qword_1ED89DD40;
  if (!qword_1ED89DD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E10, &qword_1D2880480);
    sub_1D22BB9D8(&qword_1ED89DF10, &qword_1EC6D9E18, &qword_1D2880488, MEMORY[0x1E697E130]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD40);
  }

  return result;
}

unint64_t sub_1D22F46D4()
{
  result = qword_1ED89D588;
  if (!qword_1ED89D588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9DF8, &qword_1D2880468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9DF0, &qword_1D2880460);
    sub_1D22BB9D8(&qword_1ED89D160, &qword_1EC6D9DF0, &qword_1D2880460, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D588);
  }

  return result;
}

uint64_t sub_1D22F47CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v23 = a2;
  v2 = sub_1D2875E98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877158();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  sub_1D2877138();
  MEMORY[0x1D389FBC0](1);
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_1D2875E88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA030, &qword_1D28807D8);
  sub_1D22BB9D8(&qword_1ED89D430, &qword_1EC6DA030, &qword_1D28807D8, MEMORY[0x1E697FDF8]);
  sub_1D22F5328(&qword_1ED89D3A8, MEMORY[0x1E69801B8], MEMORY[0x1E69801B0]);
  v14 = v23;
  sub_1D2876808();
  (*(v3 + 8))(v5, v2);
  v13(v12, v6);
  v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA038, &qword_1D28807E0) + 36);
  *v15 = 1;
  *(v15 + 8) = 0xD000000000000028;
  *(v15 + 16) = 0x80000001D28AFF80;
  v16 = *v25;
  v17 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA040, &qword_1D28807E8) + 36));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0, &unk_1D28807F0);
  v19 = *(v18 + 36);
  v20 = sub_1D2874518();
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  *&v17[*(v18 + 40)] = v16;
  *v17 = 1;
  return sub_1D2870F78();
}

uint64_t sub_1D22F4B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D22F4BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D22F4C88()
{
  result = qword_1EC6D9E98;
  if (!qword_1EC6D9E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E90, &qword_1D2880518);
    sub_1D22F4D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9E98);
  }

  return result;
}

unint64_t sub_1D22F4D14()
{
  result = qword_1EC6D9EA0;
  if (!qword_1EC6D9EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9EA8, &qword_1D2880520);
    sub_1D22F4DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9EA0);
  }

  return result;
}

unint64_t sub_1D22F4DA0()
{
  result = qword_1EC6D9EB0;
  if (!qword_1EC6D9EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9EB8, &qword_1D2880528);
    sub_1D22F4E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9EB0);
  }

  return result;
}

unint64_t sub_1D22F4E2C()
{
  result = qword_1EC6D9EC0;
  if (!qword_1EC6D9EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9EC8, &qword_1D2880530);
    sub_1D22BB9D8(&qword_1EC6D9ED0, &qword_1EC6D9ED8, &qword_1D2880538, MEMORY[0x1E69817F8]);
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030, &unk_1D2880540, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9EC0);
  }

  return result;
}

uint64_t sub_1D22F4F34(uint64_t a1)
{
  v2 = sub_1D2874448();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x1D389DD70](v5);
}

unint64_t sub_1D22F4FFC()
{
  result = qword_1EC6D9EE0;
  if (!qword_1EC6D9EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E68, &qword_1D28804E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E60, &qword_1D28804E0);
    sub_1D22F50C8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9EE0);
  }

  return result;
}

unint64_t sub_1D22F50C8()
{
  result = qword_1EC6D9EE8;
  if (!qword_1EC6D9EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E60, &qword_1D28804E0);
    sub_1D22F5180();
    sub_1D22BB9D8(&qword_1ED89D6A0, &qword_1EC6D9F08, &qword_1D2880588, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9EE8);
  }

  return result;
}

unint64_t sub_1D22F5180()
{
  result = qword_1EC6D9EF0;
  if (!qword_1EC6D9EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E58, &qword_1D28804D8);
    sub_1D22BB9D8(&qword_1EC6D9EF8, &qword_1EC6D9F00, &qword_1D2880580, MEMORY[0x1E697D680]);
    sub_1D22BB9D8(&unk_1ED89D320, &qword_1EC6D9D38, &qword_1D287FDB8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9EF0);
  }

  return result;
}

unint64_t sub_1D22F526C()
{
  result = qword_1EC6D9F10;
  if (!qword_1EC6D9F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E70, &qword_1D28804F0);
    sub_1D22F4FFC();
    sub_1D22F5328(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9F10);
  }

  return result;
}

uint64_t sub_1D22F5328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D22F5370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D22F53D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return sub_1D22ED0B0(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D22F53E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2875538();
  *a1 = result;
  return result;
}

uint64_t sub_1D22F543C()
{
  v0 = sub_1D2877028();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F80, &qword_1D28A2410);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2880100;
  v5 = *MEMORY[0x1E69814E0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_1D28770F8();
  v6(v3, v5, v0);
  *(v4 + 40) = sub_1D28770F8();
  v6(v3, v5, v0);
  *(v4 + 48) = sub_1D28770F8();
  v6(v3, v5, v0);
  *(v4 + 56) = sub_1D28770F8();
  v6(v3, v5, v0);
  *(v4 + 64) = sub_1D28770F8();
  return v4;
}

unint64_t sub_1D22F567C()
{
  result = qword_1EC6D9F70;
  if (!qword_1EC6D9F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9F68, &qword_1D2880608);
    sub_1D22F5328(qword_1ED8A6590, type metadata accessor for ComposingFooterButtonImage, &unk_1D2880354);
    sub_1D22BB9D8(&qword_1ED89D3B8, &qword_1EC6D9F78, &unk_1D2880610, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9F70);
  }

  return result;
}

unint64_t sub_1D22F5764()
{
  result = qword_1ED89D5E8;
  if (!qword_1ED89D5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FA0, &qword_1D2880638);
    sub_1D22F57F0();
    sub_1D22F5900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5E8);
  }

  return result;
}

unint64_t sub_1D22F57F0()
{
  result = qword_1ED89D9D8;
  if (!qword_1ED89D9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FC0, &unk_1D28A5450);
    sub_1D22F587C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9D8);
  }

  return result;
}

unint64_t sub_1D22F587C()
{
  result = qword_1ED89DBD0;
  if (!qword_1ED89DBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD9C0, &qword_1D2880660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBD0);
  }

  return result;
}

unint64_t sub_1D22F5900()
{
  result = qword_1ED89DA30;
  if (!qword_1ED89DA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FB0, &qword_1D2880648);
    sub_1D22F598C();
    sub_1D22F5CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA30);
  }

  return result;
}

unint64_t sub_1D22F598C()
{
  result = qword_1ED89DC80;
  if (!qword_1ED89DC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FC8, &qword_1D2880668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FD0, &unk_1D2880670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860, &unk_1D287CD70);
    sub_1D22F5AB4();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC80);
  }

  return result;
}

unint64_t sub_1D22F5AB4()
{
  result = qword_1ED89D8C0;
  if (!qword_1ED89D8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FD0, &unk_1D2880670);
    sub_1D22F5B6C();
    sub_1D22BB9D8(&qword_1ED89D2F8, &qword_1EC6D9FF0, &qword_1D288C4C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8C0);
  }

  return result;
}

unint64_t sub_1D22F5B6C()
{
  result = qword_1ED89D9C8;
  if (!qword_1ED89D9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FD8, &qword_1D2880680);
    sub_1D22F5C24();
    sub_1D22BB9D8(&qword_1ED89D2D0, &qword_1EC6D9FE8, &unk_1D2880690, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9C8);
  }

  return result;
}

unint64_t sub_1D22F5C24()
{
  result = qword_1ED89DBC8;
  if (!qword_1ED89DBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FE0, &qword_1D2880688);
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030, &unk_1D2880540, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBC8);
  }

  return result;
}

unint64_t sub_1D22F5CDC()
{
  result = qword_1ED8A0618[0];
  if (!qword_1ED8A0618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A0618);
  }

  return result;
}

unint64_t sub_1D22F5D30()
{
  result = qword_1ED89DA28;
  if (!qword_1ED89DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FB8, &unk_1D2880650);
    sub_1D22F5900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA28);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1D22F5DE8()
{
  result = qword_1ED89DA20;
  if (!qword_1ED89DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E30, &qword_1D28804A8);
    sub_1D22F5EA0();
    sub_1D22BB9D8(qword_1ED8A4310, &qword_1EC6D9E38, &qword_1D28804B0, &unk_1D288DC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA20);
  }

  return result;
}

unint64_t sub_1D22F5EA0()
{
  result = qword_1ED89DC68;
  if (!qword_1ED89DC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E28, &qword_1D28804A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9DF8, &qword_1D2880468);
    sub_1D22F46D4();
    swift_getOpaqueTypeConformance2();
    sub_1D22F5F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC68);
  }

  return result;
}

unint64_t sub_1D22F5F7C()
{
  result = qword_1ED89E590;
  if (!qword_1ED89E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E590);
  }

  return result;
}

unint64_t sub_1D22F5FD0()
{
  result = qword_1EC6D9FF8;
  if (!qword_1EC6D9FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9F28, &qword_1D2880598);
    sub_1D22F6088();
    sub_1D22BB9D8(&unk_1ED89D490, &qword_1EC6D9058, &unk_1D287CD30, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9FF8);
  }

  return result;
}

unint64_t sub_1D22F6088()
{
  result = qword_1EC6DA000;
  if (!qword_1EC6DA000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E88, &unk_1D2880508);
    sub_1D22F6140();
    sub_1D22BB9D8(&qword_1ED8A4308, &qword_1EC6D9F20, &qword_1D2880590, &unk_1D288DC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA000);
  }

  return result;
}

unint64_t sub_1D22F6140()
{
  result = qword_1EC6DA008;
  if (!qword_1EC6DA008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E80, &qword_1D2880500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9E70, &qword_1D28804F0);
    sub_1D22F526C();
    swift_getOpaqueTypeConformance2();
    sub_1D22F5F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA008);
  }

  return result;
}

unint64_t sub_1D22F621C()
{
  result = qword_1ED89D9E0;
  if (!qword_1ED89D9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9F90, &qword_1D2880628);
    sub_1D22F62D4();
    sub_1D22BB9D8(&qword_1ED89D658, &qword_1EC6DA028, &qword_1D2880780, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9E0);
  }

  return result;
}

unint64_t sub_1D22F62D4()
{
  result = qword_1ED89DBF0;
  if (!qword_1ED89DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9F88, &qword_1D2880620);
    sub_1D22F638C();
    sub_1D22BB9D8(&qword_1ED89DF78, &qword_1EC6DA020, &qword_1D2880778, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBF0);
  }

  return result;
}

unint64_t sub_1D22F638C()
{
  result = qword_1ED89D218;
  if (!qword_1ED89D218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA010, &qword_1D2880768);
    sub_1D22F6410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D218);
  }

  return result;
}

unint64_t sub_1D22F6410()
{
  result = qword_1ED89D528;
  if (!qword_1ED89D528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA018, &qword_1D2880770);
    sub_1D22F5764();
    sub_1D22F5D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D528);
  }

  return result;
}

uint64_t sub_1D22F64B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D22F6500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D22F6568()
{
  result = qword_1ED89DA50;
  if (!qword_1ED89DA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA040, &qword_1D28807E8);
    sub_1D22F6620();
    sub_1D22BB9D8(&qword_1ED8A4300, &qword_1EC6D90B0, &unk_1D28807F0, &unk_1D288DC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA50);
  }

  return result;
}

unint64_t sub_1D22F6620()
{
  result = qword_1ED89DCA8;
  if (!qword_1ED89DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA038, &qword_1D28807E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA030, &qword_1D28807D8);
    sub_1D2875E98();
    sub_1D22BB9D8(&qword_1ED89D430, &qword_1EC6DA030, &qword_1D28807D8, MEMORY[0x1E697FDF8]);
    sub_1D22F5328(&qword_1ED89D3A8, MEMORY[0x1E69801B8], MEMORY[0x1E69801B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCA8);
  }

  return result;
}

unint64_t sub_1D22F6788()
{
  result = qword_1ED89D818;
  if (!qword_1ED89D818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA070, &qword_1D2880898);
    sub_1D22F6840();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080, &qword_1D288F9A0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D818);
  }

  return result;
}

unint64_t sub_1D22F6840()
{
  result = qword_1ED89D870;
  if (!qword_1ED89D870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA050, &qword_1D2880878);
    sub_1D22F68CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D870);
  }

  return result;
}

unint64_t sub_1D22F68CC()
{
  result = qword_1ED89D918;
  if (!qword_1ED89D918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA048, &qword_1D2880870);
    sub_1D22F6984();
    sub_1D22BB9D8(&qword_1ED8A4300, &qword_1EC6D90B0, &unk_1D28807F0, &unk_1D288DC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D918);
  }

  return result;
}

unint64_t sub_1D22F6984()
{
  result = qword_1ED89DAA0;
  if (!qword_1ED89DAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA068, &qword_1D2880890);
    sub_1D22F6A3C();
    sub_1D22BB9D8(&qword_1ED89D4B0, &qword_1EC6DA078, &unk_1D28808A0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAA0);
  }

  return result;
}

unint64_t sub_1D22F6A3C()
{
  result = qword_1ED89DD08;
  if (!qword_1ED89DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA058, &qword_1D2880880);
    sub_1D22F5328(&qword_1ED89D398, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1D22BB9D8(&qword_1ED89D650, &qword_1EC6DA060, &qword_1D2880888, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD08);
  }

  return result;
}

unint64_t sub_1D22F6B24()
{
  result = qword_1EC6DA0A0;
  if (!qword_1EC6DA0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA098, &qword_1D28808C0);
    sub_1D22F6BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA0A0);
  }

  return result;
}

unint64_t sub_1D22F6BB0()
{
  result = qword_1EC6DA0A8;
  if (!qword_1EC6DA0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA0B0, &qword_1D28808C8);
    sub_1D22F6C68();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8, &qword_1D2880900, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA0A8);
  }

  return result;
}

unint64_t sub_1D22F6C68()
{
  result = qword_1EC6DA0B8;
  if (!qword_1EC6DA0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA0C0, &qword_1D28808D0);
    sub_1D22F6D20();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030, &unk_1D2880540, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA0B8);
  }

  return result;
}

unint64_t sub_1D22F6D20()
{
  result = qword_1EC6DA0C8;
  if (!qword_1EC6DA0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA0D0, &qword_1D28808D8);
    sub_1D22F6DD8();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0, &qword_1D2890510, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA0C8);
  }

  return result;
}

unint64_t sub_1D22F6DD8()
{
  result = qword_1EC6DA0D8;
  if (!qword_1EC6DA0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA0E0, &qword_1D28808E0);
    sub_1D22F6E90();
    sub_1D22BB9D8(&qword_1ED89D298, &qword_1EC6DA0F0, &unk_1D28808F0, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA0D8);
  }

  return result;
}

unint64_t sub_1D22F6E90()
{
  result = qword_1EC6D7D40;
  if (!qword_1EC6D7D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA0E8, &qword_1D28808E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D40);
  }

  return result;
}

uint64_t sub_1D22F6F24(uint64_t a1, char *a2)
{
  sub_1D22F7DF4();
  sub_1D22C3068();
  sub_1D27A0A48(a2);
}

uint64_t sub_1D22F6F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D22F7E14();
  sub_1D277CE0C(a2, a3, a4);
}

uint64_t GenmojiComposingViewResult.prompt.getter()
{
  v1 = *(v0 + 8);
  sub_1D2870F68();
  return v1;
}

uint64_t GenmojiComposingViewResult.sanitizedPrompt.getter()
{
  v1 = *(v0 + 24);
  sub_1D2870F68();
  return v1;
}

uint64_t GenmojiComposingViewResult.accessibilityDescription.getter()
{
  v1 = *(v0 + 40);
  sub_1D2870F68();
  return v1;
}

void __swiftcall GenmojiComposingViewResult.init(generatedImages:prompt:accessibilityDescription:sanitizedPrompt:)(ImagePlaygroundInternal::GenmojiComposingViewResult *__return_ptr retstr, Swift::OpaquePointer generatedImages, Swift::String prompt, Swift::String_optional accessibilityDescription, Swift::String_optional sanitizedPrompt)
{
  retstr->generatedImages = generatedImages;
  retstr->prompt._countAndFlagsBits = prompt._countAndFlagsBits;
  retstr->accessibilityDescription = accessibilityDescription;
  retstr->prompt._object = prompt._object;
  retstr->sanitizedPrompt = sanitizedPrompt;
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

uint64_t sub_1D22F70B4(uint64_t *a1, int a2)
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

uint64_t sub_1D22F70FC(uint64_t result, int a2, int a3)
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

uint64_t sub_1D22F7158()
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (v0[6])
  {
    v3 = v0[5];
    v4 = v0[6];
  }

  else
  {
    if (v0[4])
    {
      v3 = v0[3];
      v4 = v0[4];
    }

    else
    {
      v3 = v0[1];
      v4 = v0[2];
      sub_1D2870F68();
    }

    sub_1D2870F68();
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  sub_1D2870F68();
  if (!v5)
  {

    sub_1D2877FE8();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED8B0058;
    sub_1D28718C8();
    return sub_1D28780E8();
  }

  return v3;
}

id sub_1D22F7304()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = sub_1D2871818();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v52 = v0[2];
  v14 = *(v0 + 3);
  v53 = *(v0 + 5);
  v54 = v14;
  if (!(v12 >> 62))
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    sub_1D2872658();
    v42 = sub_1D2873CA8();
    v43 = sub_1D2878A18();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D226E000, v42, v43, "No image available to create Genmoji string for pasteboard.", v44, 2u);
      MEMORY[0x1D38A3520](v44, -1, -1);
    }

    (v2)[1](v4, v1);
    return 0;
  }

LABEL_21:
  v41 = v10;
  v15 = sub_1D2879368();
  v10 = v41;
  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_3:
  v48 = v13;
  v49 = v9;
  v50 = v10;
  v46 = v1;
  v47 = v7;
  v45 = v2;
  v16 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  v1 = v12 & 0xC000000000000001;
  v13 = v12 & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x1E69E69C0];
  while (v15 != v16)
  {
    if (v1)
    {
      v10 = MEMORY[0x1D38A1C30](v16, v12);
    }

    else
    {
      if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v10 = *(v12 + 8 * v16 + 32);
    }

    v9 = v10;
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v18 = objc_allocWithZone(MEMORY[0x1E69655E8]);
    v2 = sub_1D2877E78();
    v7 = [v18 initWithImage:v9 alignmentInset:v2 provenanceInfo:{0.0, 0.0}];

    ++v16;
    if (v7)
    {
      MEMORY[0x1D38A0E30]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D2878428();
      }

      v10 = sub_1D2878488();
      v55 = v56;
      v16 = v17;
    }
  }

  v19 = v51;
  sub_1D2871808();
  sub_1D28717B8();
  v49[1](v19, v50);
  v56 = v12;
  v57 = v48;
  v58 = v52;
  v60 = v53;
  v59 = v54;
  sub_1D22F7158();
  v20 = objc_allocWithZone(MEMORY[0x1E69655E0]);
  v21 = sub_1D2878068();

  v22 = sub_1D2878068();

  sub_1D22F7934();
  v23 = sub_1D28783C8();

  v24 = [v20 initWithContentIdentifier:v21 shortDescription:v22 strikeImages:v23];

  v25 = [v24 imageData];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1D28716E8();
    v29 = v28;

    v30 = objc_allocWithZone(MEMORY[0x1E69DB7B0]);
    sub_1D22D6CF8(v27, v29);
    v31 = sub_1D28716D8();
    v32 = [v30 initWithData_];

    sub_1D22D6D60(v27, v29);
    v33 = [v32 adaptiveImageGlyph];
    sub_1D25D76A4(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Key(0);
    sub_1D22F7980();
    v34 = sub_1D2877E78();

    v35 = [objc_opt_self() attributedStringWithAdaptiveImageGlyph:v33 attributes:v34];

    sub_1D22D6D60(v27, v29);
    return v35;
  }

  v37 = v47;
  sub_1D2872658();
  v38 = sub_1D2873CA8();
  v39 = sub_1D2878A18();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1D226E000, v38, v39, "Failed to create Genmoji string for pasteboard.", v40, 2u);
    MEMORY[0x1D38A3520](v40, -1, -1);
  }

  (v45)[1](v37, v46);
  return 0;
}

unint64_t sub_1D22F7934()
{
  result = qword_1EC6DA100;
  if (!qword_1EC6DA100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6DA100);
  }

  return result;
}

unint64_t sub_1D22F7980()
{
  result = qword_1EC6D7520;
  if (!qword_1EC6D7520)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7520);
  }

  return result;
}

uint64_t sub_1D22F79D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  *a2 = *(v3 + 121);
  return result;
}

uint64_t sub_1D22F7AA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D22F7B64(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719D8();
}

uint64_t sub_1D22F7C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle);
  return result;
}

uint64_t sub_1D22F7D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage);
  return result;
}

uint64_t sub_1D22F7E84()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
  {
    sub_1D2870F78();
    sub_1D28786B8();
  }

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage) = 0;
  }

  v2 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v2);
  sub_1D28719D8();

  v3 = (sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel, sub_1D23080AC) + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  if (v3[1])
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    sub_1D2698A94();
  }
}

uint64_t sub_1D22F81A4()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v5 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles);
  v6 = *(v5 + 16);
  result = sub_1D2870F68();
  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (v6 == v8)
    {
LABEL_5:

      return v6 != v9;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    (*(v2 + 16))(v4, v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8++, v1);
    v10 = sub_1D2871F78();
    result = (*(v2 + 8))(v4, v1);
    if ((v10 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D22F8384()
{
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  sub_1D22CB294(0, 0, 0);

  v1 = sub_1D22FECC4();
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }

  v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___stylePickerViewModel);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) == 1)
  {
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 1;
    sub_1D2870F78();
    sub_1D264698C(1);
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D2870F78();
    sub_1D28719D8();
  }
}