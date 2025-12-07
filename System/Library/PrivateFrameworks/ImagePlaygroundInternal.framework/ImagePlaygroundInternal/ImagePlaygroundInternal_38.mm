unint64_t sub_1D26A36C0()
{
  result = qword_1ED8A14F8;
  if (!qword_1ED8A14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A14F8);
  }

  return result;
}

unint64_t sub_1D26A3714(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2879488();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D26A3760(uint64_t a1)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v38 = sub_1D2871BC8();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2871B98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2871B88();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = sub_1D28716B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v43 = v1;
  swift_defaultActor_initialize();
  v42 = a1;
  sub_1D28715F8();
  (*(v14 + 16))(v16, v19, v13);
  (*(v6 + 104))(v36, *MEMORY[0x1E69DF518], v5);
  LODWORD(v44[0]) = 512;
  [objc_opt_self() getEmbeddingVectorDimension_];
  v20 = sub_1D28797A8();
  [v20 integerValue];

  (*(v3 + 104))(v37, *MEMORY[0x1E69DF538], v38);
  sub_1D2871B78();
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  sub_1D2871658();
  v23 = sub_1D2878068();

  LOBYTE(v20) = [v22 directoryExistsAtPath_];

  if (v20)
  {
    goto LABEL_4;
  }

  v24 = [v21 defaultManager];
  v25 = sub_1D28715B8();
  v44[0] = 0;
  v26 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v44];

  if (v26)
  {
    v27 = v44[0];
LABEL_4:
    v28 = v40;
    v29 = v41;
    (*(v40 + 16))(v39, v12, v41);
    sub_1D2871B68();
    swift_allocObject();
    v30 = sub_1D2871B08();
    v31 = v43;
    *(v43 + 112) = v30;
    sub_1D2871B38();
    v32 = *(v14 + 8);
    v32(v42, v13);
    (*(v28 + 8))(v12, v29);
    v32(v19, v13);
    return v31;
  }

  v34 = v44[0];
  sub_1D28714B8();

  swift_willThrow();
  swift_unexpectedError();
  type metadata accessor for CuratedPromptsEmbeddingStorageManager();
  swift_defaultActor_destroy();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1D26A3D14()
{
  sub_1D2870F78();
  sub_1D2871B48();

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D26A3D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1D2871BB8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26A3E58, v3, 0);
}

uint64_t sub_1D26A3E58()
{
  type metadata accessor for CuratedPromptsEmbeddingGenerator();
  v1 = swift_allocObject();
  v0[9] = v1;
  *(v1 + 16) = 0;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1D26A3F0C;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1D26B97A8(v4, v3);
}

uint64_t sub_1D26A3F0C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = v2;

  v6 = v4[5];
  if (v2)
  {
    v7 = sub_1D26A4320;
  }

  else
  {
    v7 = sub_1D26A4044;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D26A4044()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8E0, &qword_1D289C2E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D287F500;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  sub_1D22D6CF8(v3, v2);
  v5 = sub_1D2871B28();

  if (v1)
  {
    sub_1D22D6D60(v0[11], v0[12]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (*(v5 + 16))
    {
      v9 = *(v5 + 32);
      sub_1D2870F68();
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v0[7];
      sub_1D23D81B8(0, v10, 0);
      v12 = v8;
      v13 = *(v11 + 16);
      v11 += 16;
      v14 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v29 = *(v11 + 56);
      v30 = v13;
      v15 = (v11 - 8);
      do
      {
        v16 = v0[8];
        v17 = v0[6];
        v30(v16, v14, v17);
        v18 = sub_1D2871BA8();
        v20 = v19;
        (*v15)(v16, v17);
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D23D81B8((v21 > 1), v22 + 1, 1);
        }

        *(v12 + 16) = v22 + 1;
        v23 = v12 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v14 += v29;
        --v10;
      }

      while (v10);
      v25 = v0[11];
      v24 = v0[12];

      sub_1D22D6D60(v25, v24);
    }

    else
    {
      v27 = v0[11];
      v26 = v0[12];

      sub_1D22D6D60(v27, v26);
      v12 = MEMORY[0x1E69E7CC0];
    }

    v28 = v0[1];

    return v28(v12);
  }
}

uint64_t sub_1D26A4320()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D26A438C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D2871BE8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26A444C, v1, 0);
}

uint64_t sub_1D26A444C()
{
  type metadata accessor for CuratedPromptsEmbeddingGenerator();
  v1 = swift_allocObject();
  v0[8] = v1;
  *(v1 + 16) = 0;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1D26A4500;
  v3 = v0[3];

  return sub_1D26B9CA8(v3);
}

uint64_t sub_1D26A4500(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_1D26A488C;
  }

  else
  {
    v6 = sub_1D26A4634;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D26A4634()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D23D8B60(0, v2, 0);
    v4 = (v1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8E0, &qword_1D289C2E0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D287F500;
      *(v8 + 32) = v6;
      *(v8 + 40) = v7;
      v0[2] = v5;
      sub_1D22D6CF8(v6, v7);
      sub_1D22D6CF8(v6, v7);
      sub_1D28795C8();
      sub_1D2871BD8();
      sub_1D22D6D60(v6, v7);
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D23D8B60((v9 > 1), v10 + 1, 1);
      }

      v4 += 3;
      v11 = v0[7];
      v12 = v0[5];
      *(v15 + 16) = v10 + 1;
      (*(v3 + 32))(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      --v2;
    }

    while (v2);
  }

  sub_1D2871B18();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D26A488C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D26A48F8(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = (a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow);
  v5 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow);
  v6 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow + 8);
  *v4 = sub_1D26A4C0C;
  v4[1] = v3;
  sub_1D2870F78();
  sub_1D22A576C(v5, v6);

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = (a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow);
  v9 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow);
  v10 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow + 8);
  *v8 = sub_1D26A4C14;
  v8[1] = v7;
  sub_1D2870F78();
  sub_1D22A576C(v9, v10);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = (a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide);
  v13 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide);
  v14 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide + 8);
  *v12 = sub_1D26A4D04;
  v12[1] = v11;
  sub_1D2870F78();
  sub_1D22A576C(v13, v14);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = (a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide);
  v17 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide);
  v18 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide + 8);
  *v16 = sub_1D26A4F84;
  v16[1] = v15;
  sub_1D2870F78();
  sub_1D22A576C(v17, v18);

  sub_1D2744D50();
}

void sub_1D26A4AC8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26A5194();
  sub_1D28719E8();

  *a2 = *(v3 + 21);
}

double sub_1D26A4B68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D25AA428();
    sub_1D28778F8();
    sub_1D2874BE8();
  }

  return result;
}

double sub_1D26A4C60(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D25AA428();
    sub_1D28778F8();
    sub_1D2874BE8();
  }

  return result;
}

double sub_1D26A4D0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 21) == 1)
  {
    *(a1 + 21) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A5194();
    sub_1D28719D8();
  }

  return result;
}

double sub_1D26A4DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1D28778F8();
    sub_1D2874BE8();

    v11 = sub_1D28785F8();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_1D2878568();
    sub_1D2870F78();
    v12 = sub_1D2878558();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v10;
    sub_1D22AE01C(0, 0, v7, a4, v13);
  }

  return result;
}

void sub_1D26A4FD0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 21))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A5194();
    sub_1D28719D8();
  }

  else
  {
    *(a1 + 21) = 0;
  }
}

uint64_t sub_1D26A50E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2597D30(a1, v4, v5, v6);
}

unint64_t sub_1D26A5194()
{
  result = qword_1ED8A2D20;
  if (!qword_1ED8A2D20)
  {
    type metadata accessor for PreviewsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A2D20);
  }

  return result;
}

uint64_t sub_1D26A524C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D25974FC(a1, v4, v5, v6);
}

uint64_t sub_1D26A5300(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v12);
  (*(v8 + 16))(v10, a1, a4);
  return sub_1D28743F8();
}

uint64_t sub_1D26A5494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v12 = a2;
  sub_1D28745B8();
  sub_1D26AAF8C(a1, v16, v12, a3, a4, a5, a6, x8_0);
  return sub_1D26AB1E0(v16);
}

uint64_t sub_1D26A5538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a1;
  v115 = a3;
  v100 = sub_1D2875628();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v119 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v117 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 24);
  v11 = type metadata accessor for BubbleShadowModifier(0, v6, v9, v10);
  v113 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v84 - v12;
  swift_getWitnessTable();
  sub_1D2875D08();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA0F8, &qword_1D2880900);
  v13 = sub_1D2874F68();
  v93 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1030, &unk_1D2880540);
  v89 = sub_1D2874F68();
  v95 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v84 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E0FB0, &qword_1D2890510);
  v91 = sub_1D2874F68();
  v97 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v84 - v17;
  v94 = sub_1D2874648();
  v92 = sub_1D2874F68();
  v96 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v84 - v18;
  v85 = v6;
  v19 = v9;
  v118 = v9;
  v101 = type metadata accessor for BubbleBackgroundViewModifier(255, v6, v9, v20);
  v21 = sub_1D2874F68();
  v102 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v116 = &v84 - v22;
  v105 = v23;
  v114 = v11;
  v24 = sub_1D2874F68();
  v108 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v84 - v25;
  v27 = type metadata accessor for IOSHoverEffect(255, v6, v19, v26);
  v109 = v24;
  v103 = v27;
  v111 = sub_1D2874F68();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v106 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v107 = &v84 - v30;
  v31 = v3;
  sub_1D26A6398(a2);
  WitnessTable = swift_getWitnessTable();
  sub_1D2876C98();
  sub_1D26A64F8(a2);
  v33 = MEMORY[0x1E6980A18];
  v34 = sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8, &qword_1D2880900, MEMORY[0x1E6980A18]);
  v133 = WitnessTable;
  v134 = v34;
  v35 = swift_getWitnessTable();
  v36 = v87;
  sub_1D2876DC8();
  v37 = a2;

  (*(v93 + 8))(v15, v13);
  v132 = sub_1D26A6814(a2);
  v38 = v33;
  v39 = v85;
  v40 = sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030, &unk_1D2880540, v38);
  v130 = v35;
  v131 = v40;
  v41 = v89;
  v42 = swift_getWitnessTable();
  v43 = v88;
  sub_1D28769C8();

  (*(v95 + 8))(v36, v41);
  v44 = sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0, &qword_1D2890510, MEMORY[0x1E6980490]);
  v128 = v42;
  v129 = v44;
  v45 = v91;
  v46 = swift_getWitnessTable();
  v47 = v90;
  v48 = v118;
  sub_1D2876F88();
  (*(v97 + 8))(v43, v45);
  v49 = *(v3 + *(v37 + 36));
  v50 = swift_getWitnessTable();
  v126 = v46;
  v127 = v50;
  v51 = v92;
  v97 = swift_getWitnessTable();
  sub_1D26A69B8(v31, v49, v51, v39, v97, v48);
  (*(v96 + 8))(v47, v51);
  v52 = v39;
  (*(v119 + 16))(v117, v31, v39);
  v119 = v37;
  v53 = v31 + *(v37 + 52);
  v54 = *v53;
  if (*(v53 + 8) == 1)
  {
    v55 = v100;
    v56 = v99;
    v57 = v98;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v58 = sub_1D28762E8();
    sub_1D2873BE8();

    v57 = v98;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v54, 0);
    v56 = v99;
    v55 = v100;
    (*(v99 + 8))(v57, v100);
    LOBYTE(v54) = v132;
  }

  if (*(v31 + *(v119 + 40)) == 1)
  {
    v59 = v31 + *(v119 + 56);
    if (*(v59 + 8) == 1)
    {
      v132 = *v59;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v61 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v56 + 8))(v57, v55);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v132 = off_1ED8A4930;
    sub_1D2341C90();
    sub_1D28719E8();
    sub_1D23B7BB8();
    sub_1D2870F78();
    v62 = sub_1D2878A58();
    v63 = sub_1D2878068();
    v64 = [v62 BOOLForKey_];

    v60 = v64 ^ 1;
  }

  else
  {
    v60 = 0;
  }

  v65 = v112;
  v66 = v118;
  v67 = v52;
  sub_1D26A6B64(v117, v54 & 1, v60, v52, v118, v112);
  v68 = swift_getWitnessTable();
  v124 = v97;
  v125 = v68;
  v69 = v105;
  v70 = swift_getWitnessTable();
  v71 = v104;
  v72 = v114;
  v73 = v116;
  MEMORY[0x1D389F9A0](v65, v69, v114, v70);
  (*(v113 + 8))(v65, v72);
  (*(v102 + 8))(v73, v69);
  v74 = *(v31 + *(v119 + 44));
  v75 = swift_getWitnessTable();
  v122 = v70;
  v123 = v75;
  v76 = v109;
  v77 = swift_getWitnessTable();
  v78 = v106;
  sub_1D24D04C8(v74, v31, v76, v67, v77, v66, v106);
  (*(v108 + 8))(v71, v76);
  v79 = swift_getWitnessTable();
  v120 = v77;
  v121 = v79;
  v80 = v111;
  swift_getWitnessTable();
  v81 = v107;
  sub_1D245980C();
  v82 = *(v110 + 8);
  v82(v78, v80);
  sub_1D245980C();
  return (v82)(v81, v80);
}

BOOL sub_1D26A6398(uint64_t a1)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v10 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v12[15];
  }

  return v9 == 0;
}

uint64_t sub_1D26A64F8(uint64_t a1)
{
  v3 = sub_1D2875628();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1D28764E8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E6980F18], v9, v11);
  v14 = *MEMORY[0x1E6980E20];
  v15 = sub_1D28763F8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v17 = v1 + *(a1 + 48);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v18, 0);
    (*(v23 + 8))(v5, v24);
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D2876438();
    goto LABEL_6;
  }

  if (!*v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D2876418();
LABEL_6:
  v20 = sub_1D2876458();
  sub_1D26AA3D4(v8);
  (*(v10 + 8))(v13, v9);
  return v20;
}

uint64_t sub_1D26A6814(uint64_t a1)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v12 = *v7;
    if (v8)
    {
      return sub_1D2877088();
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v10 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v12)
    {
      return sub_1D2877088();
    }
  }

  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  return sub_1D2870F78();
}

uint64_t sub_1D26A69B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v22 = a3;
  v8 = a2;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BubbleBackgroundViewModifier(0, v13, v14, v13);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  (*(v10 + 16))(v12, a1, a4, v17);
  sub_1D26A98FC(v12, v8, a4, a6, v19);
  MEMORY[0x1D389F9A0](v19, v22, v15, v23);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1D26A6B64@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for BubbleShadowModifier(0, a4, a5, v11);
  *(a6 + v12[9]) = a2 & 1;
  *(a6 + v12[10]) = a3;
  v13 = a6 + v12[11];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a6 + v12[12];
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  return result;
}

uint64_t sub_1D26A6C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[2] = a1;
  v18[3] = a3;
  swift_getWitnessTable();
  sub_1D2875D08();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1D2874658();
  sub_1D2874F68();
  WitnessTable = swift_getWitnessTable();
  v23 = MEMORY[0x1E697FB50];
  v18[1] = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v18[0] = sub_1D2875AD8();
  v7 = sub_1D2874F68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v18[6] = v5;
  v18[7] = v6;
  v19 = v3;
  sub_1D2877848();
  v14 = swift_getWitnessTable();
  sub_1D2876728();
  v15 = swift_getWitnessTable();
  v20 = v14;
  v21 = v15;
  swift_getWitnessTable();
  sub_1D245980C();
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_1D245980C();
  return (v16)(v13, v7);
}

uint64_t sub_1D26A6EE0@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = a2;
  v90 = a4;
  v8 = type metadata accessor for BubbleShadowModifier(0, a2, a3, a5);
  v88 = *(v8 - 1);
  v84 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v75 - v9;
  v10 = sub_1D2875628();
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a3;
  v17 = sub_1D2874658();
  v81 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v75 - v18;
  v82 = v19;
  v85 = sub_1D2874F68();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v79 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v80 = &v75 - v23;
  v77 = v13;
  v24 = *(v13 + 16);
  v76 = v16;
  v24(v16, a1, v6, v22);
  if (*(a1 + v8[10]) != 1)
  {
    v75 = sub_1D2877098();
    goto LABEL_17;
  }

  v25 = a1 + v8[11];
  v26 = *v25;
  if (v25[8] == 1)
  {
    v27 = *v25;
    LOBYTE(v97) = *v25;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v28 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v26, 0);
    (*(v91 + 8))(v12, v92);
    v27 = v97;
  }

  v29 = *(a1 + v8[9]);
  v30 = a1 + v8[12];
  v31 = *(v30 + 1);
  if (v30[16] == 1)
  {
    sub_1D2870F78();
    if (!v29)
    {
LABEL_8:
      v32 = sub_1D2877098();
LABEL_14:
      v75 = v32;

      goto LABEL_15;
    }
  }

  else
  {
    v33 = *v30;
    sub_1D2870F78();
    sub_1D2878A28();
    v34 = sub_1D28762E8();
    v87 = v8;
    v35 = v6;
    v36 = v27;
    v37 = v34;
    sub_1D2873BE8();

    v27 = v36;
    v6 = v35;
    v8 = v87;
    sub_1D2875618();
    swift_getAtKeyPath();
    v38 = sub_1D26AB660(v33, v31, 0);
    (*(v91 + 8))(v12, v92, v38);
    v31 = v96;
    if (!v29)
    {
      goto LABEL_8;
    }
  }

  if (!v27)
  {
    v39 = [objc_opt_self() systemGray3Color];
    v32 = sub_1D2877128();
    goto LABEL_14;
  }

  if (v31)
  {
    v75 = v31;
  }

  else
  {
    v75 = sub_1D2877098();
  }

LABEL_15:
  v40 = *v25;
  if ((v25[8] & 1) == 0)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v41 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v40, 0);
    (*(v91 + 8))(v12, v92);
  }

LABEL_17:
  v42 = a1 + v8[11];
  v43 = *v42;
  if (v42[8] == 1)
  {
    v44 = *v42;
    LOBYTE(v97) = *v42;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v45 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v43, 0);
    (*(v91 + 8))(v12, v92);
    v44 = v97;
  }

  v46 = v8[12];
  v87 = a1;
  v47 = a1 + v46;
  v49 = *v47;
  v48 = *(v47 + 1);
  v50 = v47[16];
  if (v50 == 1)
  {
    v51 = *v47;
    if (!sub_1D2870F78())
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v52 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    v53 = sub_1D26AB660(v49, v48, 0);
    (*(v91 + 8))(v12, v92, v53);
    v51 = v95;
    if (!v96)
    {
      goto LABEL_25;
    }
  }

  if (v44)
  {
    cos(v51);
  }

LABEL_25:
  v54 = *v42;
  if (v42[8] == 1)
  {
    v55 = *v42;
    LOBYTE(v97) = v54;
    if (!v50)
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v60 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v54, 0);
    (*(v91 + 8))(v12, v92);
    v55 = v97;
    if (!v50)
    {
LABEL_27:
      sub_1D2870F78();
      sub_1D2878A28();
      v56 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      v57 = sub_1D26AB660(v49, v48, 0);
      (*(v91 + 8))(v12, v92, v57);
      v58 = v95;
      v59 = v87;
      if (!v96)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  v58 = *&v49;
  sub_1D2870F78();
  v59 = v87;
  if (!v48)
  {
    goto LABEL_32;
  }

LABEL_28:

  if (v55)
  {
    sin(v58);
  }

LABEL_32:
  v61 = v78;
  v62 = v89;
  v63 = v76;
  sub_1D2877288();

  (*(v77 + 8))(v63, v6);
  v64 = v88;
  v65 = v86;
  (*(v88 + 16))(v86, v59, v8);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = v6;
  *(v67 + 24) = v62;
  (*(v64 + 32))(v67 + v66, v65, v8);
  v68 = v82;
  WitnessTable = swift_getWitnessTable();
  v70 = v79;
  sub_1D2876878();

  (*(v81 + 8))(v61, v68);
  v93 = WitnessTable;
  v94 = MEMORY[0x1E697FB50];
  v71 = v85;
  swift_getWitnessTable();
  v72 = v80;
  sub_1D245980C();
  v73 = *(v83 + 8);
  v73(v70, v71);
  sub_1D245980C();
  return (v73)(v72, v71);
}

uint64_t sub_1D26A79E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BubbleShadowModifier(0, a3, a4, a4);
  sub_1D28745D8();
  MEMORY[0x1D389D070](0x3FA1111111111111, 0);
  sub_1D2877908();
  return sub_1D2874608();
}

uint64_t sub_1D26A7A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v69 = a1;
  swift_getWitnessTable();
  v5 = sub_1D2875D08();
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = sub_1D2874408();
  WitnessTable = swift_getWitnessTable();
  v83 = v7;
  v84 = MEMORY[0x1E69815C0];
  v85 = v8;
  v86 = v6;
  v87 = MEMORY[0x1E6981568];
  v88 = WitnessTable;
  sub_1D2875038();
  sub_1D2878F18();
  v82 = swift_getWitnessTable();
  swift_getWitnessTable();
  v71 = sub_1D2875AD8();
  v10 = sub_1D2874F68();
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v54 - v13;
  v14 = swift_getWitnessTable();
  v83 = v5;
  v84 = v7;
  v85 = v14;
  v86 = v6;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1D2874F68();
  v83 = v5;
  v84 = v7;
  v60 = v7;
  v85 = v14;
  v86 = v6;
  v59 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = MEMORY[0x1E697FD38];
  v16 = swift_getWitnessTable();
  v57 = v15;
  v56 = v16;
  v17 = sub_1D2875B38();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v54 - v22;
  v23 = sub_1D2875628();
  v61 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2875B08();
  v67 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v54 - v28;
  v65 = a2;
  v29 = *(a2 + 40);
  v70 = v3;
  v30 = v3 + v29;
  v31 = *v30;
  if (*(v30 + 8) == 1)
  {
    v32 = *v30;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v55 = v23;
    v33 = v10;
    v34 = v14;
    v35 = sub_1D28762E8();
    sub_1D2873BE8();

    v14 = v34;
    v10 = v33;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v31, 0);
    v27 = (*(v61 + 8))(v25, v55);
    v32 = v83;
  }

  v36 = v66;
  if (v32)
  {
    v37 = v64;
    sub_1D26A8708(v69, v65);
    v38 = swift_getWitnessTable();
    v78 = v14;
    v79 = v38;
    v39 = swift_getWitnessTable();
    v40 = v63;
    sub_1D245980C();
    v41 = *(v62 + 8);
    v41(v37, v10);
    sub_1D245980C();
    v42 = swift_getWitnessTable();
    sub_1D24CB7CC(v37, v17, v10, v42, v39);
    v41(v37, v10);
    v41(v40, v10);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v27);
    v43 = v59;
    *(&v54 - 4) = v60;
    *(&v54 - 3) = v43;
    v44 = v70;
    *(&v54 - 2) = v69;
    *(&v54 - 1) = v44;
    sub_1D2875B28();
    v45 = swift_getWitnessTable();
    v46 = v58;
    sub_1D245980C();
    v47 = *(v18 + 8);
    v47(v20, v17);
    sub_1D245980C();
    v48 = swift_getWitnessTable();
    v72 = v14;
    v73 = v48;
    v49 = swift_getWitnessTable();
    sub_1D24CB6D4(v20, v17, v10, v45, v49);
    v47(v20, v17);
    v47(v46, v17);
  }

  v50 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v76 = v14;
  v77 = v51;
  v52 = swift_getWitnessTable();
  v74 = v50;
  v75 = v52;
  swift_getWitnessTable();
  sub_1D245980C();
  return (*(v67 + 8))(v36, v26);
}

uint64_t sub_1D26A82EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a2;
  v43 = a1;
  v44 = a5;
  v7 = sub_1D2877158();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = a3;
  v38 = a4;
  type metadata accessor for BubbleBackgroundViewModifier(255, a3, a4, v15);
  swift_getWitnessTable();
  v16 = sub_1D2875D08();
  WitnessTable = swift_getWitnessTable();
  v47 = v16;
  v48 = v14;
  v49 = WitnessTable;
  v50 = a4;
  v39 = MEMORY[0x1E69811D8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v34 = &v33 - v18;
  v19 = sub_1D2874F68();
  v41 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v35 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v37 = &v33 - v22;
  sub_1D2877138();
  MEMORY[0x1D389FBC0](1);
  v23 = *(v8 + 8);
  v23(v10, v7);
  v24 = swift_checkMetadataState();
  v25 = v38;
  sub_1D2876808();
  v23(v13, v7);
  v47 = v24;
  v48 = v14;
  v49 = WitnessTable;
  v50 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v35;
  v27 = OpaqueTypeMetadata2;
  v29 = v34;
  sub_1D2876928();
  (*(v40 + 8))(v29, v27);
  v45 = OpaqueTypeConformance2;
  v46 = MEMORY[0x1E697FD38];
  swift_getWitnessTable();
  v30 = v37;
  sub_1D245980C();
  v31 = *(v41 + 8);
  v31(v28, v19);
  sub_1D245980C();
  return (v31)(v30, v19);
}

uint64_t sub_1D26A8708(uint64_t a1, uint64_t a2)
{
  sub_1D2877848();
  swift_getWitnessTable();
  sub_1D2875D08();
  sub_1D2874408();
  swift_getWitnessTable();
  sub_1D2875038();
  sub_1D2878F18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1D2876728();
}

uint64_t sub_1D26A88B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v54 = a2;
  v55 = MEMORY[0x1E697E0B8];
  v56 = a3;
  v57 = MEMORY[0x1E697E0A8];
  v7 = sub_1D2874408();
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v41 - v8;
  WitnessTable = swift_getWitnessTable();
  v54 = a2;
  v55 = MEMORY[0x1E69815C0];
  v48 = v7;
  v56 = v7;
  v57 = a3;
  v58 = MEMORY[0x1E6981568];
  v59 = WitnessTable;
  v10 = sub_1D2875038();
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v41 - v13;
  v14 = sub_1D2875628();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2878F18();
  v51 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v49 = &v41 - v22;
  v41 = a2;
  v42 = a3;
  v24 = type metadata accessor for BubbleBackgroundViewModifier(0, a2, a3, v23);
  v25 = *(v24 + 48);
  v44 = a1;
  v26 = a1 + v25;
  if (*(v26 + 8) == 1)
  {
    v54 = *v26;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v27 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v14);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v54 = off_1ED8A4930;
  sub_1D2341C90();
  sub_1D28719E8();
  sub_1D23B7BB8();
  sub_1D2870F78();
  v28 = sub_1D2878A58();
  v29 = sub_1D2878068();
  v30 = [v28 BOOLForKey_];

  if (v30)
  {
    (*(v50 + 56))(v20, 1, 1, v10);
    swift_getWitnessTable();
  }

  else
  {
    v54 = sub_1D26A8FC4(v24);
    v31 = v46;
    sub_1D26A5300(&v54, 256, v41, MEMORY[0x1E697E0B8], v42, MEMORY[0x1E697E0A8]);

    v54 = sub_1D26A951C(v24);
    sub_1D26A96D8(v24);
    v32 = v48;
    v33 = swift_getWitnessTable();
    v34 = v45;
    sub_1D26A5494(&v54, 1, v32, MEMORY[0x1E69815C0], v33, MEMORY[0x1E6981568], v45);

    (*(v47 + 8))(v31, v32);
    swift_getWitnessTable();
    v35 = v43;
    sub_1D245980C();
    v36 = v50;
    v37 = *(v50 + 8);
    v37(v34, v10);
    sub_1D245980C();
    v37(v35, v10);
    (*(v36 + 32))(v20, v34, v10);
    (*(v36 + 56))(v20, 0, 1, v10);
  }

  v38 = v49;
  sub_1D25DBE10(v20, v49);
  v39 = *(v51 + 8);
  v39(v20, v18);
  v53 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D245980C();
  return (v39)(v38, v18);
}

uint64_t sub_1D26A8FC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF980, &unk_1D289C6E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v37 - v4;
  v6 = sub_1D2875628();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2874438();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v37 - v13;
  v15 = sub_1D28777D8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v42 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v41 = v37 - v19;
  if (*(v1 + *(a1 + 36)) != 1)
  {
    v45 = sub_1D2877098();
    return sub_1D28748D8();
  }

  v37[0] = v5;
  v37[1] = v3;
  v43 = v1;
  sub_1D24CC0E8(v14);
  (*(v9 + 104))(v11, *MEMORY[0x1E697DBB8], v8);
  v20 = sub_1D2874428();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v21(v14, v8);
  v22 = a1;
  if (v20)
  {
    v23 = v16;
    if (qword_1EC6D8920 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC6E3B60;
  }

  else
  {
    v23 = v16;
    if (qword_1ED8A4B98 != -1)
    {
      swift_once();
    }

    v24 = qword_1ED8B0240;
  }

  v26 = v37[0];
  v27 = v41;
  v28 = __swift_project_value_buffer(v15, v24);
  v29 = *(v23 + 16);
  v29(v27, v28, v15);
  v30 = v43 + *(v22 + 52);
  v31 = *v30;
  if (*(v30 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v33 = sub_1D28762E8();
    sub_1D2873BE8();

    v34 = v38;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v31, 0);
    (*(v39 + 8))(v34, v40);
    v32 = v42;
    if (v44 != 1)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_1D2877798();
    goto LABEL_15;
  }

  v32 = v42;
  if (v31)
  {
    goto LABEL_14;
  }

LABEL_12:
  v29(v32, v27, v15);
LABEL_15:
  sub_1D26A951C(v22);
  sub_1D28745A8();

  v29(v26, v32, v15);
  sub_1D22BB9D8(&qword_1ED89D6B8, &qword_1EC6DF980, &unk_1D289C6E0, MEMORY[0x1E697F360]);
  v35 = sub_1D28748D8();
  v36 = *(v23 + 8);
  v36(v32, v15);
  v36(v27, v15);
  return v35;
}

uint64_t sub_1D26A951C(uint64_t a1)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v14 = *v7;
    if (v8)
    {
LABEL_3:
      v9 = [objc_opt_self() whiteColor];
      v10 = [v9 colorWithAlphaComponent_];

      return sub_1D2877128();
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v12 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  return sub_1D2877098();
}

double sub_1D26A96D8(uint64_t a1)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v13 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v15)
    {
      goto LABEL_3;
    }

    return 0.0;
  }

  v15 = *v7;
  if (!v8)
  {
    return 0.0;
  }

LABEL_3:
  v9 = v1 + *(a1 + 44);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v10, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v10) = v14[14];
  }

  result = 0.0;
  if (v10)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1D26A98FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for BubbleBackgroundViewModifier(0, a3, a4, v9);
  *(a5 + v10[9]) = a2;
  v11 = a5 + v10[10];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a5 + v10[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a5 + v10[12];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a5 + v10[13];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v10[14];
  *(a5 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D26A9A34()
{
  sub_1D26A9A70();
  sub_1D2875638();
  return v1;
}

unint64_t sub_1D26A9A70()
{
  result = qword_1ED8A1788;
  if (!qword_1ED8A1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1788);
  }

  return result;
}

uint64_t sub_1D26A9B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8E8, &qword_1D289C450);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6DF8F0, &qword_1D289C458);
  v9 = a2 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v5;
  return result;
}

void sub_1D26A9BAC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D2613D28(319, &qword_1ED89E040, &type metadata for CreationViewStyle);
    if (v2 <= 0x3F)
    {
      sub_1D2613D28(319, &qword_1ED89E048, &type metadata for BubbleStyle);
      if (v3 <= 0x3F)
      {
        sub_1D26AA228(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings);
        if (v4 <= 0x3F)
        {
          sub_1D26AA228(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D26A9CE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1D2874438() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = v10 + ((((v11 + 42) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12) + 1;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_9;
    }

    v16 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 >= 2)
    {
LABEL_9:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

LABEL_16:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 > 3)
        {
          LODWORD(v13) = 4;
        }

        if (v13 > 2)
        {
          if (v13 == 3)
          {
            LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v13) = *a1;
          }
        }

        else if (v13 == 1)
        {
          LODWORD(v13) = *a1;
        }

        else
        {
          LODWORD(v13) = *a1;
        }
      }

      v21 = v8 + (v13 | v17);
      return (v21 + 1);
    }
  }

LABEL_27:
  if (v7 < 0xFE)
  {
    v20 = *(a1 + v11);
    if (v20 < 2)
    {
      return 0;
    }

    v21 = (v20 + 2147483646) & 0x7FFFFFFF;
    return (v21 + 1);
  }

  v18 = *(v6 + 48);

  return v18(a1, v7, v5);
}

void sub_1D26A9F3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1D2874438() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 42) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    a1[v13] = a2 + 1;
  }

  else
  {
    v22 = *(v23 + 56);

    v22(a1, a2, v9, v7);
  }
}

void sub_1D26AA228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D28744A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D26AA27C()
{
  result = qword_1ED89DDA0;
  if (!qword_1ED89DDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC6DF8F0, &qword_1D289C458);
    sub_1D22BB9D8(&qword_1ED89D458, &qword_1EC6DF8E8, &qword_1D289C450, MEMORY[0x1E697FDF8]);
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0, &qword_1D287FD70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDA0);
  }

  return result;
}

uint64_t sub_1D26AA3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D26AA43C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D2613D28(319, &qword_1ED89E040, &type metadata for CreationViewStyle);
    if (v2 <= 0x3F)
    {
      sub_1D26AA808(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D26AA504(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 25) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1D26AA644(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 25) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 25) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1D26AA808(uint64_t a1)
{
  if (!qword_1ED89E000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF978, &unk_1D289DBE0);
    v1 = sub_1D28744A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89E000);
    }
  }
}

void sub_1D26AA86C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D2613D28(319, &qword_1ED89E040, &type metadata for CreationViewStyle);
    if (v2 <= 0x3F)
    {
      sub_1D2613D28(319, &qword_1ED89E048, &type metadata for BubbleStyle);
      if (v3 <= 0x3F)
      {
        sub_1D26AA228(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings);
        if (v4 <= 0x3F)
        {
          sub_1D2613D28(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            sub_1D26AA228(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0]);
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

uint64_t sub_1D26AA9C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1D2874438() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = v10 + (((v11 & 0xFFFFFFFFFFFFFFF8) + v12 + 65) & ~v12) + 1;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_9;
    }

    v16 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 >= 2)
    {
LABEL_9:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

LABEL_16:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 > 3)
        {
          LODWORD(v13) = 4;
        }

        if (v13 > 2)
        {
          if (v13 == 3)
          {
            LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v13) = *a1;
          }
        }

        else if (v13 == 1)
        {
          LODWORD(v13) = *a1;
        }

        else
        {
          LODWORD(v13) = *a1;
        }
      }

      v21 = v8 + (v13 | v17);
      return (v21 + 1);
    }
  }

LABEL_27:
  if (v7 < 0xFE)
  {
    v20 = *(a1 + v11);
    if (v20 < 2)
    {
      return 0;
    }

    v21 = (v20 + 2147483646) & 0x7FFFFFFF;
    return (v21 + 1);
  }

  v18 = *(v6 + 48);

  return v18(a1, v7, v5);
}

void sub_1D26AAC1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1D2874438() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + (((v13 & 0xFFFFFFFFFFFFFFF8) + v14 + 65) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    a1[v13] = a2 + 1;
  }

  else
  {
    v22 = *(v23 + 56);

    v22(a1, a2, v9, v7);
  }
}

uint64_t sub_1D26AAF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a8;
  v31 = a7;
  v32 = a3;
  v28 = a1;
  v29 = a2;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v27 - v21;
  sub_1D28779F8();
  (*(v16 + 16))(v19, v28, a5);
  (*(v12 + 16))(v14, v8, a4);
  v23 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(a6 + 8);
  sub_1D2870F68();
  return sub_1D26AB234(v22, v19, v23, v32, v14, AssociatedTypeWitness, v27, a4, v30, AssociatedConformanceWitness, v31, v25);
}

uint64_t sub_1D26AB234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D2875AD8();
  MEMORY[0x1EEE9AC00](v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D2874BB8();
  MEMORY[0x1EEE9AC00](v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_1D2874408();
  v25 = MEMORY[0x1EEE9AC00](v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_1D2874BA8();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_1D28743F8();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_1D2877848();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_1D2875AC8();
  return sub_1D2874ED8();
}

uint64_t sub_1D26AB66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for BubbleShadowModifier(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1D26A79E0(a1, v9, v6, v7);
}

uint64_t type metadata accessor for SceneConditioningImage(uint64_t a1)
{
  result = qword_1ED8A68A0;
  if (!qword_1ED8A68A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D26AB770(uint64_t a1)
{
  result = type metadata accessor for PlaygroundImage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D26AB7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosPersonAsset(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D26AB868()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D26AB9A0@<X0>(uint64_t a1@<X8>)
{
  sub_1D239A330(v1, a1);
  v3 = type metadata accessor for PlaygroundImage(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1D26ABA48(uint64_t a1)
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26ABEEC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v3 = 0;
  v4 = *(v1 + *(a1 + 20));
  if (v4 != 2)
  {
    MEMORY[0x1D38A2260](1);
    v3 = v4 & 1;
  }

  MEMORY[0x1D38A2260](v3);
  return sub_1D2879828();
}

uint64_t sub_1D26ABB1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26ABEEC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v4 = 0;
  v5 = *(v2 + *(a2 + 20));
  if (v5 != 2)
  {
    MEMORY[0x1D38A2260](1);
    v4 = v5 & 1;
  }

  return MEMORY[0x1D38A2260](v4);
}

uint64_t sub_1D26ABBE0(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26ABEEC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v4 = 0;
  v5 = *(v2 + *(a2 + 20));
  if (v5 != 2)
  {
    MEMORY[0x1D38A2260](1);
    v4 = v5 & 1;
  }

  MEMORY[0x1D38A2260](v4);
  return sub_1D2879828();
}

uint64_t sub_1D26ABCB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaygroundImage(0);
  result = sub_1D28717B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D26ABCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlaygroundImage(0);
  if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    if (v7 == 2)
    {
      if (v8 == 2)
      {
        return 1;
      }
    }

    else
    {
      v10 = (v8 ^ v7) & 1;
      if (v8 != 2 && v10 == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D26ABDB8(uint64_t a1)
{
  result = sub_1D26ABEEC(&qword_1EC6DF990, type metadata accessor for SceneConditioningImage, &unk_1D289C730);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26ABE10(uint64_t a1)
{
  *(a1 + 8) = sub_1D26ABEEC(&qword_1EC6DF998, type metadata accessor for SceneConditioningImage, &unk_1D289C7A8);
  result = sub_1D26ABEEC(&qword_1EC6DF9A0, type metadata accessor for SceneConditioningImage, &unk_1D289C768);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D26ABE94(uint64_t a1)
{
  result = sub_1D26ABEEC(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage, &unk_1D289C7C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26ABEEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CreationFloatingBubblesView(uint64_t a1)
{
  result = qword_1ED89F790;
  if (!qword_1ED89F790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26ABFA8(uint64_t a1)
{
  sub_1D26AC308(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1D26AC308(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1D258D44C(319, &qword_1ED89D1E8, &qword_1EC6DF9B0, &qword_1D289C870, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1D26AC308(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1D258D44C(319, &qword_1ED89D198, &qword_1EC6D8F48, &qword_1D287CC90, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1D26AC358(319, &qword_1ED89D048, type metadata accessor for FloatingBubblesViewModel, MEMORY[0x1E6981AA0]);
            if (v6 <= 0x3F)
            {
              sub_1D26AC358(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1D26AC358(319, &unk_1ED89E010, type metadata accessor for ComposingAnimationCoordinator, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1D258D44C(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D26AC358(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1D26AC358(319, &qword_1ED89D178, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
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

void sub_1D26AC308(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D26AC358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D26AC3E8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26B7D44(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState);
}

uint64_t sub_1D26AC4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB60, &qword_1D289CFB8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D28714D8();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB68, &unk_1D289CFC0);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0, &qword_1D288ADA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  sub_1D22BD1D0(v38, v12, &qword_1EC6DBFA0, &qword_1D288ADA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DBFA0, &qword_1D288ADA0);
    sub_1D22BD1D0(v40, v4, &qword_1EC6DBFA8, &qword_1D288ADA8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA8, &qword_1D288ADA8);
    sub_1D26B8104();
    sub_1D22BB9D8(&qword_1ED89D0F8, &qword_1EC6DBFA8, &qword_1D288ADA8, MEMORY[0x1E6981810]);
    return sub_1D2875AF8();
  }

  else
  {
    v38 = v2;
    sub_1D26B7C14(v12, v19, type metadata accessor for PhotoSharingConfirmationParams);
    sub_1D26B7CDC(v19, v16, type metadata accessor for PhotoSharingConfirmationParams);
    v21 = v39 + *(v42 + 36);
    sub_1D26B7CDC(v16, v21, type metadata accessor for PhotoSharingConfirmationParams);
    v22 = v21 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
    v23 = sub_1D2872008();
    (*(*(v23 - 8) + 16))(v22, v16, v23);
    v24 = &v16[v13[5]];
    v26 = *v24;
    v25 = *(v24 + 1);
    v27 = v16[v13[6]];
    v28 = v16[v13[7]];
    v29 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v30 = (v22 + v29[5]);
    *v30 = v26;
    v30[1] = v25;
    *(v22 + v29[6]) = v27;
    *(v22 + v29[7]) = v28;
    sub_1D2870F68();
    sub_1D2877FE8();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v31 = v36;
    v32 = __swift_project_value_buffer(v36, qword_1ED8B0060);
    (*(v34 + 16))(v35, v32, v31);
    sub_1D28718C8();
    sub_1D2871508();
    sub_1D26B7C7C(v16, type metadata accessor for PhotoSharingConfirmationParams);
    v33 = v39;
    sub_1D22BD1D0(v40, v39, &qword_1EC6DBFA8, &qword_1D288ADA8);
    sub_1D22BD1D0(v33, v4, &qword_1EC6DFB68, &unk_1D289CFC0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA8, &qword_1D288ADA8);
    sub_1D26B8104();
    sub_1D22BB9D8(&qword_1ED89D0F8, &qword_1EC6DBFA8, &qword_1D288ADA8, MEMORY[0x1E6981810]);
    sub_1D2875AF8();
    sub_1D22BD238(v33, &qword_1EC6DFB68, &unk_1D289CFC0);
    return sub_1D26B7C7C(v19, type metadata accessor for PhotoSharingConfirmationParams);
  }
}

uint64_t sub_1D26ACB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6E0, &qword_1D288D5D0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D28714D8();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6C8, &qword_1D289CEE0);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0, &qword_1D288ADA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  sub_1D22BD1D0(v38, v12, &qword_1EC6DBFA0, &qword_1D288ADA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DBFA0, &qword_1D288ADA0);
    sub_1D26B7CDC(v40, v4, type metadata accessor for GridPickerItemView);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GridPickerItemView(0);
    sub_1D24C1D9C();
    sub_1D26B7D44(qword_1ED8A2030, type metadata accessor for GridPickerItemView, &unk_1D2890DDC);
    return sub_1D2875AF8();
  }

  else
  {
    sub_1D26B7C14(v12, v19, type metadata accessor for PhotoSharingConfirmationParams);
    sub_1D26B7CDC(v19, v16, type metadata accessor for PhotoSharingConfirmationParams);
    v21 = v39 + *(v42 + 36);
    sub_1D26B7CDC(v16, v21, type metadata accessor for PhotoSharingConfirmationParams);
    v22 = v21 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
    v23 = sub_1D2872008();
    (*(*(v23 - 8) + 16))(v22, v16, v23);
    v24 = &v16[v13[5]];
    v26 = *v24;
    v25 = *(v24 + 1);
    v27 = v16[v13[6]];
    v28 = v16[v13[7]];
    v29 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v30 = (v22 + v29[5]);
    *v30 = v26;
    v30[1] = v25;
    *(v22 + v29[6]) = v27;
    *(v22 + v29[7]) = v28;
    sub_1D2870F68();
    sub_1D2877FE8();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v31 = v36;
    v32 = __swift_project_value_buffer(v36, qword_1ED8B0060);
    (*(v34 + 16))(v35, v32, v31);
    sub_1D28718C8();
    sub_1D2871508();
    sub_1D26B7C7C(v16, type metadata accessor for PhotoSharingConfirmationParams);
    v33 = v39;
    sub_1D26B7CDC(v40, v39, type metadata accessor for GridPickerItemView);
    sub_1D22BD1D0(v33, v4, &qword_1EC6DC6C8, &qword_1D289CEE0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GridPickerItemView(0);
    sub_1D24C1D9C();
    sub_1D26B7D44(qword_1ED8A2030, type metadata accessor for GridPickerItemView, &unk_1D2890DDC);
    sub_1D2875AF8();
    sub_1D22BD238(v33, &qword_1EC6DC6C8, &qword_1D289CEE0);
    return sub_1D26B7C7C(v19, type metadata accessor for PhotoSharingConfirmationParams);
  }
}

uint64_t sub_1D26AD1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB30, &qword_1D289CDE0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v44 - v3;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1D28714D8();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA48, &qword_1D289C9D8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0, &qword_1D288ADA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  sub_1D22BD1D0(v48, v12, &qword_1EC6DBFA0, &qword_1D288ADA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DBFA0, &qword_1D288ADA0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB18, &qword_1D289CBA8);
    (*(*(v20 - 8) + 16))(v4, v50, v20);
    swift_storeEnumTagMultiPayload();
    sub_1D26B54B4();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50, &unk_1D289C9E0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660, &unk_1D2883DC0);
    v23 = sub_1D26B560C();
    v24 = sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660, &unk_1D2883DC0, MEMORY[0x1E697E238]);
    v53 = v21;
    v54 = v22;
    v55 = v23;
    v56 = v24;
    swift_getOpaqueTypeConformance2();
    return sub_1D2875AF8();
  }

  else
  {
    v48 = v2;
    sub_1D26B7C14(v12, v19, type metadata accessor for PhotoSharingConfirmationParams);
    sub_1D26B7CDC(v19, v16, type metadata accessor for PhotoSharingConfirmationParams);
    v26 = &v49[*(v52 + 36)];
    sub_1D26B7CDC(v16, v26, type metadata accessor for PhotoSharingConfirmationParams);
    v27 = v26 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
    v28 = sub_1D2872008();
    (*(*(v28 - 8) + 16))(v27, v16, v28);
    v29 = &v16[v13[5]];
    v31 = *v29;
    v30 = *(v29 + 1);
    v32 = v16[v13[6]];
    v33 = v16[v13[7]];
    v34 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v35 = (v27 + v34[5]);
    *v35 = v31;
    v35[1] = v30;
    *(v27 + v34[6]) = v32;
    *(v27 + v34[7]) = v33;
    sub_1D2870F68();
    sub_1D2877FE8();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v36 = v46;
    v37 = __swift_project_value_buffer(v46, qword_1ED8B0060);
    (*(v44 + 16))(v45, v37, v36);
    sub_1D28718C8();
    sub_1D2871508();
    v47 = type metadata accessor for PhotoSharingConfirmationParams;
    sub_1D26B7C7C(v16, type metadata accessor for PhotoSharingConfirmationParams);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB18, &qword_1D289CBA8);
    v39 = v49;
    (*(*(v38 - 8) + 16))(v49, v50, v38);
    sub_1D22BD1D0(v39, v4, &qword_1EC6DFA48, &qword_1D289C9D8);
    swift_storeEnumTagMultiPayload();
    sub_1D26B54B4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50, &unk_1D289C9E0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660, &unk_1D2883DC0);
    v42 = sub_1D26B560C();
    v43 = sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660, &unk_1D2883DC0, MEMORY[0x1E697E238]);
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v56 = v43;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    sub_1D22BD238(v39, &qword_1EC6DFA48, &qword_1D289C9D8);
    return sub_1D26B7C7C(v19, v47);
  }
}

double sub_1D26AD918@<D0>(_OWORD *a1@<X8>)
{
  sub_1D26B7BC0();
  sub_1D2875638();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D26AD968(void *a1, uint64_t a2)
{
  sub_1D26B7BC0();
  sub_1D2870F78();
  return sub_1D2875648();
}

void *sub_1D26AD9C8@<X0>(_BYTE *a1@<X8>)
{
  sub_1D26A9A70();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D26ADA64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for CreationFloatingBubblesView(0);
  v4 = v3 - 8;
  v53 = *(v3 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D2871818();
  v49 = *(v56 - 8);
  v6 = v49;
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9B8, &qword_1D289C8E8);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v45 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9C0, &qword_1D289C8F0);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v45 - v10;
  sub_1D26AE1D8(v1, v9);
  v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9C8, &qword_1D289C8F8) + 36)] = 1;
  KeyPath = swift_getKeyPath();
  v48 = *(v4 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  v11 = v59;
  swift_getKeyPath();
  v59 = v11;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID;
  swift_beginAccess();
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9D0, &qword_1D289C950) + 36)];
  v47 = v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9D8, &qword_1D289C958);
  v15 = *(v6 + 16);
  v15(v13 + *(v14 + 28), v11 + v12, v56);

  *v13 = KeyPath;
  v16 = v2 + *(v4 + 80);
  v17 = *(v16 + 16);
  v63 = *v16;
  v64 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877328();
  v18 = v59;
  v19 = v60;
  v20 = v61;
  v21 = v62;
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = v21;
  v23 = &v9[*(v57 + 36)];
  *v23 = sub_1D22A585C;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_1D2478FBC;
  *(v23 + 3) = v22;
  v45 = v2;
  sub_1D2877618();
  v24 = v59;
  swift_getKeyPath();
  v59 = v24;
  sub_1D28719E8();

  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID;
  swift_beginAccess();
  v26 = v50;
  v27 = v56;
  v15(v50, v24 + v25, v56);

  v48 = type metadata accessor for CreationFloatingBubblesView;
  v28 = v58;
  sub_1D26B7CDC(v2, v58, type metadata accessor for CreationFloatingBubblesView);
  v29 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v30 = swift_allocObject();
  sub_1D26B7C14(v28, v30 + v29, type metadata accessor for CreationFloatingBubblesView);
  sub_1D26B4A7C();
  sub_1D26B7D44(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v31 = v51;
  v32 = v47;
  sub_1D2876F58();

  (*(v49 + 8))(v26, v27);
  sub_1D22BD238(v32, &qword_1EC6DF9B8, &qword_1D289C8E8);
  v33 = v45;
  v34 = v58;
  v35 = v48;
  sub_1D26B7CDC(v45, v58, v48);
  v36 = swift_allocObject();
  sub_1D26B7C14(v34, v36 + v29, type metadata accessor for CreationFloatingBubblesView);
  v37 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAE8, &qword_1D289CA90) + 36));
  *v37 = sub_1D26B607C;
  v37[1] = v36;
  v37[2] = 0;
  v37[3] = 0;
  sub_1D26B7CDC(v33, v34, v35);
  v38 = swift_allocObject();
  sub_1D26B7C14(v34, v38 + v29, type metadata accessor for CreationFloatingBubblesView);
  v39 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAF0, &qword_1D289CA98) + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_1D26B6094;
  v39[3] = v38;
  sub_1D26B7CDC(v33, v34, v35);
  v40 = swift_allocObject();
  sub_1D26B7C14(v34, v40 + v29, type metadata accessor for CreationFloatingBubblesView);
  v41 = sub_1D2877848();
  v42 = (v31 + *(v54 + 36));
  *v42 = sub_1D26B60AC;
  v42[1] = v40;
  v42[2] = v41;
  v42[3] = v43;
  sub_1D26B611C();
  sub_1D2876CC8();
  return sub_1D22BD238(v31, &qword_1EC6DF9C0, &qword_1D289C8F0);
}

uint64_t sub_1D26AE1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAC8, &qword_1D289CA68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v69 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAC0, &qword_1D289CA60);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v69 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAB8, &qword_1D289CA58);
  MEMORY[0x1EEE9AC00](v82);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v69 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB08, &qword_1D289CB08);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA00, &qword_1D289C988);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v69 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9F8, &qword_1D289C980);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9F0, &qword_1D289C978);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  v21 = sub_1D2875628();
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24) == 1;
  v77 = v27;
  if (v26)
  {
    v30 = v22;
    if (!v25)
    {
LABEL_7:
      v31 = (a1 + *(type metadata accessor for CreationFloatingBubblesView(0) + 76));
      v32 = v31[1];
      *v13 = *v31;
      v13[1] = v32;
      sub_1D26AEC50(v13 + *(v11 + 44));
      sub_1D2877848();
      sub_1D2875208();
      v33 = sub_1D22EC9BC(v13, v16, &qword_1EC6DFA00, &qword_1D289C988);
      v34 = &v16[*(v14 + 36)];
      v35 = v89;
      *(v34 + 4) = v88;
      *(v34 + 5) = v35;
      *(v34 + 6) = v90;
      v36 = v85;
      *v34 = v84;
      *(v34 + 1) = v36;
      v37 = v87;
      *(v34 + 2) = v86;
      *(v34 + 3) = v37;
      v38 = MEMORY[0x1D38A0390](v33, 0.5, 1.0, 0.0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
      sub_1D2877618();
      v39 = v83;
      swift_getKeyPath();
      v83 = v39;
      sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
      sub_1D28719E8();

      v40 = *(v39 + 16);
      sub_1D2870F68();

      v41 = v72;
      sub_1D22EC9BC(v16, v72, &qword_1EC6DF9F8, &qword_1D289C980);
      v42 = (v41 + *(v79 + 36));
      *v42 = v38;
      v42[1] = v40;
      v43 = &qword_1EC6DF9F0;
      v44 = &qword_1D289C978;
      sub_1D22EC9BC(v41, v20, &qword_1EC6DF9F0, &qword_1D289C978);
      sub_1D22BD1D0(v20, v81, &qword_1EC6DF9F0, &qword_1D289C978);
      swift_storeEnumTagMultiPayload();
      sub_1D26B4D88();
      sub_1D26B5CA0();
      goto LABEL_10;
    }
  }

  else
  {
    v70 = v22;
    sub_1D2870F78();
    sub_1D2878A28();
    v71 = v11;
    v29 = sub_1D28762E8();
    v11 = v71;
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v25, 0);
    v30 = v70;
    (*(v77 + 8))(v24);
    if (!v84)
    {
      goto LABEL_7;
    }
  }

  v28 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    LOBYTE(v83) = *(a1 + 16);
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v45 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v28, 0);
    (*(v77 + 8))(v24, v30);
    LOBYTE(v28) = v83;
  }

  sub_1D26AF418();
  v47 = v46;
  v48 = type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  v49 = v84;
  swift_getKeyPath();
  *&v84 = v49;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v50 = *(v49 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition);

  v51 = *(a1 + *(v48 + 56));
  *v5 = v28;
  *(v5 + 8) = xmmword_1D289C800;
  *(v5 + 3) = v47;
  *(v5 + 4) = v50;
  v5[40] = v51;
  *(v5 + 3) = xmmword_1D289C810;
  *(v5 + 4) = xmmword_1D289C820;
  *(v5 + 10) = 0x3FE24924A0000000;
  v52 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAD0, &qword_1D289CA70) + 44)];
  sub_1D26AEC50(v52);
  v53 = *(a1 + *(v48 + 48));
  v54 = v53 * -0.79 + 1.0;
  sub_1D2877AE8();
  v56 = v55;
  v58 = v57;
  v59 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAE0, &unk_1D289CA80) + 36);
  *v59 = v54;
  *(v59 + 8) = v54;
  *(v59 + 16) = v56;
  *(v59 + 24) = v58;
  v60 = v5;
  v61 = v74;
  sub_1D22EC9BC(v60, v74, &qword_1EC6DFAC8, &qword_1D289CA68);
  v62 = v61 + *(v73 + 36);
  *v62 = v53 * 5.0;
  *(v62 + 8) = 0;
  sub_1D2877848();
  sub_1D2875208();
  v63 = v75;
  sub_1D22EC9BC(v61, v75, &qword_1EC6DFAC0, &qword_1D289CA60);
  v64 = (v63 + *(v82 + 36));
  v65 = v89;
  v64[4] = v88;
  v64[5] = v65;
  v64[6] = v90;
  v66 = v85;
  *v64 = v84;
  v64[1] = v66;
  v67 = v87;
  v64[2] = v86;
  v64[3] = v67;
  v43 = &qword_1EC6DFAB8;
  v44 = &qword_1D289CA58;
  v20 = v76;
  sub_1D22EC9BC(v63, v76, &qword_1EC6DFAB8, &qword_1D289CA58);
  sub_1D22BD1D0(v20, v81, &qword_1EC6DFAB8, &qword_1D289CA58);
  swift_storeEnumTagMultiPayload();
  sub_1D26B4D88();
  sub_1D26B5CA0();
LABEL_10:
  sub_1D2875AF8();
  return sub_1D22BD238(v20, v43, v44);
}

uint64_t sub_1D26AEC50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_1D2875628();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v50);
  v6 = &v40 - v5;
  v7 = type metadata accessor for CreationFloatingBubblesView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA18, &unk_1D289C9A0);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA10, &qword_1D289C998);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v40 - v13;
  v43 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  v14 = v52;
  swift_getKeyPath();
  *&v52 = v14;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v15 = *(v14 + 16);
  sub_1D2870F68();

  *&v52 = v15;
  sub_1D26B7CDC(v2, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreationFloatingBubblesView);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v44 = v9;
  v17 = swift_allocObject();
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D26B7C14(v45, v17 + v16, type metadata accessor for CreationFloatingBubblesView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD10, &qword_1D288A6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA30, &qword_1D289C9C0);
  sub_1D22BB9D8(&qword_1ED89CED0, &qword_1EC6DBD10, &qword_1D288A6F8, MEMORY[0x1E69E6338]);
  sub_1D26B526C();
  sub_1D26B7D44(&qword_1ED89E4D0, type metadata accessor for Bubble, &unk_1D28ABD5C);
  v18 = sub_1D2877588();
  v19 = MEMORY[0x1D38A0390](v18, 0.5, 1.0, 0.0);
  v20 = *(v2 + 80);
  v52 = *(v2 + 64);
  v53 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10, &qword_1D289CB40);
  sub_1D2877308();
  v21 = v56;
  v22 = v57;
  v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA20, &qword_1D289C9B0) + 36)];
  *v23 = v19;
  v23[1] = v21;
  v23[2] = v22;
  v24 = v51;
  KeyPath = swift_getKeyPath();
  v26 = &v11[*(v24 + 36)];
  *v26 = KeyPath;
  v26[8] = 1;
  v27 = *MEMORY[0x1E697E728];
  v28 = sub_1D2874E88();
  (*(*(v28 - 8) + 104))(v6, v27, v28);
  sub_1D26B7D44(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1D2877F98();
  if (result)
  {
    v30 = sub_1D26B5078();
    v31 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    sub_1D28769B8();
    sub_1D22BD238(v6, &unk_1EC6DE860, &unk_1D287CD70);
    sub_1D22BD238(v11, &qword_1EC6DFA18, &unk_1D289C9A0);
    v32 = v2 + *(v43 + 64);
    v33 = *v32;
    if (*(v32 + 8) == 1)
    {
      LOBYTE(v56) = *v32;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v34 = sub_1D28762E8();
      sub_1D2873BE8();

      v35 = v40;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v33, 0);
      (*(v41 + 8))(v35, v42);
      LOBYTE(v33) = v56;
    }

    v55 = v33;
    v36 = v45;
    sub_1D26B7CDC(v2, v45, type metadata accessor for CreationFloatingBubblesView);
    v37 = swift_allocObject();
    sub_1D26B7C14(v36, v37 + v16, type metadata accessor for CreationFloatingBubblesView);
    *&v52 = v51;
    *(&v52 + 1) = v50;
    v53 = v30;
    v54 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1D22EBCFC();
    v38 = v47;
    v39 = v49;
    sub_1D2876F48();

    return (*(v46 + 8))(v39, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D26AF418()
{
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877308();
  return sub_1D2877308();
}

uint64_t sub_1D26AF4E4(uint64_t a1)
{
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_1D2695B4C();
  sub_1D2875648();
  return (*(v3 + 8))(v9, v2);
}

double sub_1D26AF628(uint64_t a1)
{
  v2 = type metadata accessor for BubbleAnimation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2875628();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for CreationFloatingBubblesView(0) + 44));
  v10 = *v9;
  v11 = *(v9 + 8);
  sub_1D2870F78();
  if ((v11 & 1) == 0)
  {
    sub_1D2878A28();
    v12 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v10 = v21[0];
  }

  if (*(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) == 1)
  {
    *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) = 1;
    sub_1D245FDAC(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v21[-2] = v10;
    LOBYTE(v21[-1]) = 1;
    v21[0] = v10;
    sub_1D26B7D44(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
    sub_1D28719D8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  v14 = v21[0];
  swift_getKeyPath();
  v21[0] = v14;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID;
  swift_beginAccess();
  v16 = *(v2 + 20);
  v17 = sub_1D2871818();
  (*(*(v17 - 8) + 16))(&v4[v16], v14 + v15, v17);

  *v4 = MEMORY[0x1D38A0390](v18, 0.5, 1.0, 0.0);
  *&v4[*(v2 + 24)] = 0x3FF0000000000000;
  sub_1D26B7D44(qword_1ED8A4210, type metadata accessor for BubbleAnimation, &unk_1D289BA18);
  sub_1D2877978();
  sub_1D28778B8();

  MEMORY[0x1EEE9AC00](v19);
  v21[-2] = a1;
  sub_1D2874BE8();

  return result;
}

void sub_1D26AFAA8(uint64_t a1)
{
  v2 = sub_1D2875628();
  v14 = *(v2 - 8);
  v15 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  v6 = v16;
  swift_getKeyPath();
  v16 = v6;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  if (*(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) != 0.0)
  {
    KeyPath = swift_getKeyPath();
    v13[1] = v13;
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v6;
    v13[-1] = 0;
    v16 = v6;
    sub_1D28719D8();
  }

  v8 = (a1 + *(v5 + 44));
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1D2870F78();
  if ((v10 & 1) == 0)
  {
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v14 + 8))(v4, v15);
    v9 = v16;
  }

  if (*(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState))
  {
    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    v13[-2] = v9;
    LOBYTE(v13[-1]) = 0;
    v16 = v9;
    sub_1D26B7D44(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
    sub_1D28719D8();
  }

  else
  {
    *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) = 0;
    sub_1D245FDAC(0);
  }
}

double sub_1D26AFE58()
{
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) != 0.0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  return result;
}

double sub_1D26AFFD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB00, &unk_1D289CAA8);
  sub_1D2877318();
  return result;
}

double sub_1D26B002C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CreationFloatingBubblesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D26B7CDC(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreationFloatingBubblesView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1D26B7C14(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for CreationFloatingBubblesView);
  type metadata accessor for AppStateMonitor();
  swift_allocObject();
  v9 = sub_1D27D909C(a1, sub_1D26B6378, v8);
  v12 = *(a2 + 32);
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB00, &unk_1D289CAA8);
  sub_1D2877318();
  return result;
}

double sub_1D26B01A8(__int16 a1, uint64_t a2)
{
  if ((a1 & 0x100) != 0 && (a1 & 1) == 0)
  {
    v2 = [objc_opt_self() processInfo];
    [v2 thermalState];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877318();
  return result;
}

uint64_t sub_1D26B026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v237 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0, &qword_1D288ADA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v236 = &v188 - v6;
  v226 = sub_1D2875B48();
  MEMORY[0x1EEE9AC00](v226);
  v225 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_1D2874498();
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v227 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA658, &qword_1D289CBA0);
  v231 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v230 = &v188 - v9;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA660, &unk_1D2883DC0);
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v232 = &v188 - v10;
  v219 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_1D28714D8();
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v202 = &v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v200 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CreationFloatingBubblesView(0);
  v247 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v209 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v252 = &v188 - v20;
  v203 = type metadata accessor for Bubble(0);
  v245 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v188 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v211 = &v188 - v25;
  v249 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v251 = &v188 - v28;
  v199 = type metadata accessor for BubbleView(0);
  MEMORY[0x1EEE9AC00](v199);
  v192 = (&v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA70, &qword_1D289CA08);
  MEMORY[0x1EEE9AC00](v207);
  v250 = &v188 - v30;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA68, &qword_1D289CA00);
  MEMORY[0x1EEE9AC00](v212);
  v214 = &v188 - v31;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA60, &qword_1D289C9F8);
  MEMORY[0x1EEE9AC00](v213);
  v216 = &v188 - v32;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA58, &qword_1D289C9F0);
  MEMORY[0x1EEE9AC00](v215);
  v217 = &v188 - v33;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA50, &unk_1D289C9E0);
  MEMORY[0x1EEE9AC00](v248);
  v220 = &v188 - v34;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB18, &qword_1D289CBA8);
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v221 = &v188 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA40, &qword_1D289C9D0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v222 = &v188 - v37;
  v38 = sub_1D2871818();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1D2875628();
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v188 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = a1;
  v244 = sub_1D2846EE0();
  v44 = v43;
  v238 = v17;
  v45 = *(v17 + 44);
  v254 = a2;
  v46 = (a2 + v45);
  v47 = *v46;
  v48 = *(v46 + 8);
  sub_1D2870F78();
  v49 = v47;
  if ((v48 & 1) == 0)
  {
    sub_1D2878A28();
    v50 = sub_1D28762E8();
    sub_1D2873BE8();

    v51 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v240 + 8))(v51, v241);
    v49 = v259;
  }

  swift_getKeyPath();
  *&v259 = v49;
  sub_1D26B7D44(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
  sub_1D28719E8();

  v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationID;
  swift_beginAccess();
  (*(v39 + 16))(v41, v49 + v52, v38);

  v53 = sub_1D28717B8();
  v55 = v54;
  (*(v39 + 8))(v41, v38);
  *&v259 = v244;
  *(&v259 + 1) = v44;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v53, v55);

  v56 = v259;
  sub_1D2870F78();
  v57 = v47;
  if ((v48 & 1) == 0)
  {
    sub_1D2878A28();
    v58 = sub_1D28762E8();
    sub_1D2873BE8();

    v59 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v240 + 8))(v59, v241);
    v57 = v259;
  }

  swift_getKeyPath();
  *&v259 = v57;
  sub_1D28719E8();

  v61 = *(v57 + 24);
  v60 = *(v57 + 32);
  sub_1D2870F68();

  if (v60)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  if (v60)
  {
    v63 = v60;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  v259 = v56;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v62, v63);

  v195 = *(&v259 + 1);
  v196 = v259;
  if (v48)
  {
    v258 = v47;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v64 = sub_1D28762E8();
    sub_1D2873BE8();

    v65 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v240 + 8))(v65, v241);
    v47 = v258;
  }

  v191 = *(v47 + 16);

  v66 = v253;
  sub_1D26B7CDC(v253, v251, type metadata accessor for Bubble);
  v67 = v252;
  v193 = type metadata accessor for CreationFloatingBubblesView;
  sub_1D26B7CDC(v254, v252, type metadata accessor for CreationFloatingBubblesView);
  v68 = v211;
  v242 = type metadata accessor for Bubble;
  sub_1D26B7CDC(v66, v211, type metadata accessor for Bubble);
  v197 = *(v247 + 80);
  v69 = (v197 + 16) & ~v197;
  v247 = v197 | 7;
  v243 = *(v245 + 80);
  v210 = v69 + v246;
  v70 = (v69 + v246 + v243) & ~v243;
  v71 = v70 + v249;
  v245 = v197 | 7 | v243;
  v72 = swift_allocObject();
  v190 = v72;
  v194 = type metadata accessor for CreationFloatingBubblesView;
  sub_1D26B7C14(v67, v72 + v69, type metadata accessor for CreationFloatingBubblesView);
  v244 = type metadata accessor for Bubble;
  sub_1D26B7C14(v68, v72 + v70, type metadata accessor for Bubble);
  v73 = v209;
  sub_1D26B7CDC(v254, v209, type metadata accessor for CreationFloatingBubblesView);
  v74 = v198;
  sub_1D26B7CDC(v66, v198, type metadata accessor for Bubble);
  v208 = v71;
  v75 = swift_allocObject();
  v189 = v75;
  v211 = v69;
  sub_1D26B7C14(v73, v75 + v69, type metadata accessor for CreationFloatingBubblesView);
  v209 = v70;
  sub_1D26B7C14(v74, v75 + v70, type metadata accessor for Bubble);
  KeyPath = swift_getKeyPath();
  v77 = v192;
  *v192 = KeyPath;
  *(v77 + 8) = 0;
  *(v77 + 16) = swift_getKeyPath();
  *(v77 + 24) = 0;
  *(v77 + 32) = swift_getKeyPath();
  *(v77 + 40) = 0;
  v78 = v199;
  v79 = *(v199 + 28);
  *(v77 + v79) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  v80 = v77 + v78[8];
  *v80 = swift_getKeyPath();
  *(v80 + 8) = 0;
  v81 = v77 + v78[9];
  *v81 = swift_getKeyPath();
  *(v81 + 8) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFB0, &qword_1D288AE00);
  sub_1D2874328();
  sub_1D2877FE8();
  sub_1D28718C8();
  v82 = *MEMORY[0x1E6968DF0];
  v83 = *(v204 + 104);
  v84 = v206;
  v85 = v205;
  v83(v206, v82, v205);
  sub_1D28714F8();
  sub_1D2877FE8();
  sub_1D28718C8();
  v83(v84, v82, v85);
  sub_1D28714F8();
  sub_1D2877FE8();
  sub_1D28718C8();
  v83(v84, v82, v85);
  sub_1D28714F8();
  v86 = v77 + v78[22];
  *v86 = xmmword_1D288A490;
  *(v86 + 16) = xmmword_1D288A4A0;
  *(v86 + 32) = xmmword_1D288A4B0;
  *(v86 + 48) = xmmword_1D288A4C0;
  *(v86 + 64) = xmmword_1D288A4D0;
  *(v86 + 80) = xmmword_1D288A4E0;
  *(v86 + 96) = 0x3FE4CCCCCCCCCCCDLL;
  *(v77 + v78[10]) = v191;
  v87 = v251;
  v88 = v201;
  sub_1D26B7CDC(v251, v201, v242);
  v89 = (v243 + 16) & ~v243;
  v90 = swift_allocObject();
  sub_1D26B7C14(v88, v90 + v89, v244);
  sub_1D2874328();
  *(v77 + v78[12]) = 1;
  v91 = (v77 + v78[13]);
  v92 = v190;
  *v91 = sub_1D26B6564;
  v91[1] = v92;
  v93 = (v77 + v78[14]);
  v94 = v189;
  *v93 = sub_1D26B657C;
  v93[1] = v94;
  *(v77 + v78[16]) = 0;
  v95 = swift_allocObject();
  v96 = v195;
  *(v95 + 16) = v196;
  *(v95 + 24) = v96;
  sub_1D2874328();
  sub_1D26B7C7C(v87, type metadata accessor for Bubble);
  *(v77 + v78[17]) = 0;
  v97 = v254;
  LODWORD(v89) = *(v254 + *(v238 + 52));
  sub_1D26B7D44(&qword_1ED8A5240, type metadata accessor for BubbleView, &unk_1D289D388);
  v98 = v250;
  LOBYTE(v66) = v89;
  LODWORD(v206) = v89;
  v99 = v253;
  sub_1D2876B58();
  sub_1D26B7C7C(v77, type metadata accessor for BubbleView);
  v100 = sub_1D26B27A0(v99);
  v102 = v101;
  v103 = swift_getKeyPath();
  v104 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA80, &qword_1D289CA18) + 36));
  *v104 = v103;
  v104[1] = v100;
  v104[2] = v102;
  sub_1D2874938();
  sub_1D26B2B6C(v66 ^ 1);
  v105 = sub_1D28748E8();

  *(v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA78, &qword_1D289CA10) + 36)) = v105;
  v106 = v252;
  v107 = v193;
  sub_1D26B7CDC(v97, v252, v193);
  v108 = v87;
  sub_1D26B7CDC(v99, v87, v242);
  sub_1D2878568();
  v109 = sub_1D2878558();
  v110 = (v197 + 32) & ~v197;
  v111 = (v110 + v246 + v243) & ~v243;
  v112 = swift_allocObject();
  v113 = MEMORY[0x1E69E85E0];
  *(v112 + 16) = v109;
  *(v112 + 24) = v113;
  v114 = v106;
  v115 = v106;
  v116 = v194;
  sub_1D26B7C14(v115, v112 + v110, v194);
  v117 = v108;
  v118 = v97;
  sub_1D26B7C14(v117, v112 + v111, v244);
  sub_1D26B7CDC(v97, v114, v107);
  v119 = sub_1D2878558();
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = MEMORY[0x1E69E85E0];
  LOBYTE(v97) = v206;
  sub_1D26B7C14(v114, v120 + v110, v116);
  sub_1D2877528();
  v121 = v259;
  LOBYTE(v114) = v260;
  LOBYTE(v255) = 0;
  sub_1D28772F8();
  v122 = v257[0];
  v123 = *(&v257[0] + 1);
  v124 = v250 + *(v207 + 36);
  *v124 = v121;
  *(v124 + 16) = v114;
  *(v124 + 24) = v122;
  *(v124 + 32) = v123;
  v125 = v97;
  if (v97)
  {
    v126 = 0;
    v127 = v217;
    v128 = v253;
    goto LABEL_24;
  }

  v129 = v118 + *(v238 + 40);
  if (*(v129 + 8) == 1)
  {
    *&v259 = *v129;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v130 = sub_1D28762E8();
    sub_1D2873BE8();

    v131 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v240 + 8))(v131, v241);
  }

  v128 = v253;

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  *&v259 = off_1ED8A4930;
  sub_1D26B7D44(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
  sub_1D28719E8();
  sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
  sub_1D2870F78();
  v132 = sub_1D2878A58();
  v133 = sub_1D2878068();
  v134 = [v132 BOOLForKey_];

  if (v134 & 1) != 0 || (v135 = *(v118 + 56), LOBYTE(v259) = *(v118 + 48), *(&v259 + 1) = v135, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0), sub_1D2877308(), (v257[0]))
  {
    v126 = 0;
    v127 = v217;
    goto LABEL_24;
  }

  v178 = *v118;
  if (*(v118 + 8) == 1)
  {
    v127 = v217;
    if (v178)
    {
      goto LABEL_44;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v179 = sub_1D28762E8();
    sub_1D2873BE8();

    v180 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v178, 0);
    (*(v240 + 8))(v180, v241);
    v127 = v217;
    if (v259)
    {
LABEL_44:
      v126 = 0;
      goto LABEL_24;
    }
  }

  v181 = *(v118 + 80);
  v259 = *(v118 + 64);
  v260 = v181;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10, &qword_1D289CB40);
  sub_1D2877308();
  v182 = v257[0];
  v183 = sub_1D2846EE0();
  if (*(&v182 + 1))
  {
    if (v182 == __PAIR128__(v184, v183))
    {

      v126 = 0;
      goto LABEL_24;
    }

    v185 = sub_1D2879618();

    if (v185)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  v186 = v259;
  swift_getKeyPath();
  *&v259 = v186;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v187 = *(v186 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldDisableFloatingAnimation[0]);

  v126 = v187 ^ 1;
LABEL_24:
  sub_1D27346D4(v126 & 1, v257, 5.0);
  v136 = v214;
  sub_1D22EC9BC(v250, v214, &qword_1EC6DFA70, &qword_1D289CA08);
  v137 = (v136 + *(v212 + 36));
  v138 = v257[3];
  v137[2] = v257[2];
  v137[3] = v138;
  v137[4] = v257[4];
  v139 = v257[1];
  *v137 = v257[0];
  v137[1] = v139;
  v140 = v216;
  sub_1D22EC9BC(v136, v216, &qword_1EC6DFA68, &qword_1D289CA00);
  *(v140 + *(v213 + 36)) = v125;
  v141 = sub_1D2847634();
  v143 = v142;
  v144 = v218;
  sub_1D26B7CDC(v128, v218, type metadata accessor for Bubble.BubbleType);
  v145 = swift_getEnumCaseMultiPayload() == 5;
  sub_1D26B7C7C(v144, type metadata accessor for Bubble.BubbleType);
  sub_1D22EC9BC(v140, v127, &qword_1EC6DFA60, &qword_1D289C9F8);
  v146 = v127 + *(v215 + 36);
  *v146 = v141;
  *(v146 + 8) = v143;
  *(v146 + 16) = v145;
  if (!sub_1D26B2F90())
  {
    goto LABEL_33;
  }

  v147 = *(v118 + 80);
  v259 = *(v118 + 64);
  v260 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10, &qword_1D289CB40);
  sub_1D2877308();
  v148 = v255;
  v149 = v256;
  v150 = sub_1D2846EE0();
  if (!v149)
  {

    goto LABEL_33;
  }

  if (v148 != v150 || v149 != v151)
  {
    v153 = sub_1D2879618();

    if (v153)
    {
      v152 = v128;
      goto LABEL_32;
    }

LABEL_33:
    v152 = v128;
    v154 = 1.0;
    goto LABEL_34;
  }

  v152 = v128;

LABEL_32:
  v154 = 0.8;
LABEL_34:
  sub_1D2877AE8();
  v156 = v155;
  v158 = v157;
  v159 = v220;
  sub_1D22EC9BC(v127, v220, &qword_1EC6DFA58, &qword_1D289C9F0);
  v160 = (v159 + *(v248 + 36));
  *v160 = v154;
  v160[1] = v154;
  *(v160 + 2) = v156;
  *(v160 + 3) = v158;
  sub_1D2875E68();
  v161 = v227;
  sub_1D2874458();
  v162 = v252;
  sub_1D26B7CDC(v118, v252, type metadata accessor for CreationFloatingBubblesView);
  v163 = v152;
  v164 = v251;
  sub_1D26B7CDC(v163, v251, type metadata accessor for Bubble);
  v165 = swift_allocObject();
  v166 = v211;
  sub_1D26B7C14(v162, v165 + v211, type metadata accessor for CreationFloatingBubblesView);
  sub_1D26B7C14(v164, v165 + v209, type metadata accessor for Bubble);
  sub_1D26B7D44(&qword_1ED89E068, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1D26B7D44(&qword_1ED89E070, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v167 = v230;
  v168 = v229;
  sub_1D28775B8();

  (*(v228 + 8))(v161, v168);
  sub_1D26B7CDC(v254, v162, type metadata accessor for CreationFloatingBubblesView);
  v169 = swift_allocObject();
  sub_1D26B7C14(v162, v169 + v166, type metadata accessor for CreationFloatingBubblesView);
  sub_1D22BB9D8(&qword_1ED89D760, &qword_1EC6DA658, &qword_1D289CBA0, MEMORY[0x1E697E8D0]);
  v170 = v232;
  v171 = v233;
  sub_1D28775A8();

  (*(v231 + 8))(v167, v171);
  sub_1D28744D8();
  sub_1D26B560C();
  sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660, &unk_1D2883DC0, MEMORY[0x1E697E238]);
  v172 = v221;
  v173 = v235;
  sub_1D2876BC8();
  (*(v234 + 8))(v170, v173);
  sub_1D22BD238(v159, &qword_1EC6DFA50, &unk_1D289C9E0);
  v174 = v236;
  v175 = v253;
  sub_1D26B31B8(v253, v236);
  v176 = v222;
  sub_1D26AD1A4(v174, v222);
  sub_1D22BD238(v174, &qword_1EC6DBFA0, &qword_1D288ADA0);
  (*(v223 + 8))(v172, v224);
  sub_1D26B3890(v175, &v259);
  sub_1D26B3E34(&v259, v237);
  sub_1D22BD238(&v259, &qword_1EC6DFB20, &qword_1D289CD50);
  return sub_1D22BD238(v176, &qword_1EC6DFA40, &qword_1D289C9D0);
}

void sub_1D26B2548(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  sub_1D26B7CDC(a2, v8, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x5DF) != 0)
  {
    sub_1D26B7C7C(v8, type metadata accessor for Bubble.BubbleType);
    sub_1D269DFD8(a2);
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1D26B7C14(v8, v5, type metadata accessor for Prompt);
      sub_1D269DC18(v5);

      v10 = type metadata accessor for Prompt;
      v11 = v5;
    }

    else
    {

      v10 = type metadata accessor for Bubble.BubbleType;
      v11 = v8;
    }

    sub_1D26B7C7C(v11, v10);
  }
}

double sub_1D26B272C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  sub_1D269DFD8(a2);

  return result;
}

uint64_t sub_1D26B27A0(uint64_t a1)
{
  v35 = a1;
  v2 = sub_1D2873CB8();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2874EA8();
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  v32 = v1;
  sub_1D2877618();
  v11 = v36;
  swift_getKeyPath();
  v36 = v11;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v12 = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__attractorColors);
  sub_1D2870F68();

  if (*(v12 + 16) && (v13 = sub_1D25D0908(v35), (v14 & 1) != 0))
  {
    v15 = (*(v12 + 56) + 32 * v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];

    sub_1D2877618();
    sub_1D24CC6D4(v10);
    v20 = v31;
    (*(v31 + 104))(v7, *MEMORY[0x1E697E7D8], v5);
    v21 = sub_1D2874E98();
    v22 = *(v20 + 8);
    v22(v7, v5);
    v22(v10, v5);
    sub_1D269E8CC(v35, v21 & 1);
    v24 = v23;
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      CGColorCreateGenericRGB(v16, v17, v18, v19);
      sub_1D2877118();
      return v24;
    }
  }

  else
  {

    sub_1D2872658();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A08();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D226E000, v28, v29, "No attractor color for bubble", v30, 2u);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    (*(v33 + 8))(v4, v34);
  }

  return 0;
}

uint64_t sub_1D26B2B6C(char a1)
{
  sub_1D28772F8();
  sub_1D28772F8();
  sub_1D28772F8();
  sub_1D28772F8();
  sub_1D26B7B6C();
  sub_1D2874968();

  MEMORY[0x1D38A0390](v1, 0.8, 1.0, 0.0);
  v2 = sub_1D2874978();

  return v2;
}

void sub_1D26B2CDC(_BYTE *a1@<X8>)
{
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v3 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  v2 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID + 8);
  sub_1D2870F68();

  v4 = sub_1D2846EE0();
  if (v2)
  {
    if (v3 == v4 && v2 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1D2879618();
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7 & 1;
}

double sub_1D26B2E38()
{
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  v0 = (v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID + 8))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  else
  {
    *v0 = 0;
    v0[1] = 0;
  }

  return result;
}

BOOL sub_1D26B2F90()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CreationFloatingBubblesView(0) + 64);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v8 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  return v7 != 0;
}

double sub_1D26B30F4(uint64_t a1, uint64_t a2)
{
  sub_1D2846EE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10, &qword_1D289CB40);
  sub_1D2877318();
  return result;
}

double sub_1D26B315C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10, &qword_1D289CB40);
  sub_1D2877318();
  return result;
}

uint64_t sub_1D26B31B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CreationFloatingBubblesView(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_1D2872008();
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D26B7CDC(a1, v15, type metadata accessor for Bubble.BubbleType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v46 = v3;
    v47 = v11;
    v51 = a2;
    v17 = *v15;
    v16 = v15[1];
    sub_1D2877618();
    v18 = v58;
    swift_getKeyPath();
    v58 = v18;
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719E8();

    v19 = *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
    v20 = *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID + 8);
    sub_1D2870F68();

    if (v20)
    {
      v58 = v17;
      v59 = v16;
      v55 = v19;
      v56 = v20;
      sub_1D22BD06C();
      v21 = sub_1D2878FF8();

      a2 = v51;
      if (v21)
      {
        v22 = v46;
        sub_1D2877618();
        v23 = v58;
        swift_getKeyPath();
        v58 = v23;
        sub_1D28719E8();

        v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentStyle;
        swift_beginAccess();
        (*(v53 + 16))(v52, v23 + v24, v47);

        sub_1D2877628();
        swift_getKeyPath();
        sub_1D2877648();

        (*(v48 + 8))(v10, v8);
        v25 = v55;
        v26 = v56;
        LODWORD(v48) = v57;
        v27 = v50;
        sub_1D26B7CDC(v22, v50, type metadata accessor for CreationFloatingBubblesView);
        v28 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v29 = swift_allocObject();
        sub_1D26B7C14(v27, v29 + v28, type metadata accessor for CreationFloatingBubblesView);
        sub_1D2877618();
        v30 = v54;
        swift_getKeyPath();
        v54 = v30;
        sub_1D28719E8();

        v31 = v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v33 = *(v31 + 8);
          ObjectType = swift_getObjectType();
          if ((*(v33 + 48))(ObjectType, v33))
          {
            v35 = swift_allocObject();
            swift_weakInit();

            v36 = swift_allocObject();
            v36[2] = v35;
            v36[3] = Strong;
            v36[4] = v33;
            Strong = sub_1D26B7B40;
LABEL_14:
            v39 = v51;
            (*(v53 + 32))(v51, v52, v47);
            v40 = type metadata accessor for PhotoSharingConfirmationParams(0);
            v41 = (v39 + v40[5]);
            *v41 = 0;
            v41[1] = 0;
            *(v39 + v40[6]) = 0;
            *(v39 + v40[7]) = 0;
            v42 = v39 + v40[8];
            *v42 = v25;
            *(v42 + 8) = v26;
            *(v42 + 16) = v48;
            v43 = (v39 + v40[9]);
            *v43 = sub_1D26B7A58;
            v43[1] = v29;
            v44 = (v39 + v40[10]);
            *v44 = Strong;
            v44[1] = v36;
            return (*(*(v40 - 1) + 56))(v39, 0, 1, v40);
          }

          swift_unknownObjectRelease();

          Strong = 0;
        }

        else
        {
        }

        v36 = 0;
        goto LABEL_14;
      }
    }

    else
    {

      a2 = v51;
    }
  }

  else
  {
    sub_1D26B7C7C(v15, type metadata accessor for Bubble.BubbleType);
  }

  v37 = type metadata accessor for PhotoSharingConfirmationParams(0);
  return (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
}

void sub_1D26B3890(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v39 - v8;
  v10 = sub_1D2871F38();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D2872008();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D26B7CDC(a1, v17, type metadata accessor for Bubble.BubbleType);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1D26B7C7C(v17, type metadata accessor for Bubble.BubbleType);
    goto LABEL_7;
  }

  v18 = v5;
  v20 = *v17;
  v19 = v17[1];
  v21 = *(type metadata accessor for CreationFloatingBubblesView(0) + 36);
  v40 = v18;
  v41 = v2;
  v39[1] = v21;
  sub_1D2877618();
  v22 = v47;
  swift_getKeyPath();
  v47 = v22;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v23 = *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  v24 = *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID + 8);
  sub_1D2870F68();

  if (!v24)
  {

    v28 = 0;
    v27 = 0;
    v29 = 0;
    goto LABEL_9;
  }

  v47 = v20;
  v48 = v19;
  v50 = v23;
  v51 = v24;
  sub_1D22BD06C();
  v25 = sub_1D2878FF8();

  if ((v25 & 1) == 0)
  {
LABEL_7:
    v28 = 0;
    v27 = 0;
    v29 = 0;
    v24 = 0;
LABEL_9:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    goto LABEL_10;
  }

  sub_1D2871EC8();
  sub_1D2871F58();
  v26 = v43;
  if ((*(v43 + 48))(v9, 1, v10) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6D9D58, &qword_1D287FE70);
    (*(v42 + 8))(v14, v44);
    v39[0] = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    (*(v26 + 32))(v12, v9, v10);
    v39[0] = sub_1D2871ED8();
    v27 = v36;
    (*(v26 + 8))(v12, v10);
    (*(v42 + 8))(v14, v44);
  }

  v37 = v40;
  v38 = v45;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v46 + 8))(v38, v37);
  v29 = v47;
  v24 = v48;
  v34 = v49;
  sub_1D2877618();
  v31 = v50;
  sub_1D2877618();
  v33 = v50;
  v32 = sub_1D26B77A4;
  v30 = sub_1D26B779C;
  v35 = 1;
  v28 = v39[0];
LABEL_10:
  *a2 = v28;
  a2[1] = v27;
  a2[2] = v35;
  a2[3] = v29;
  a2[4] = v24;
  a2[5] = v34;
  a2[6] = v30;
  a2[7] = v31;
  a2[8] = v32;
  a2[9] = v33;
}

uint64_t sub_1D26B3E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB28, &unk_1D289CD58);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-v7 - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA38, &qword_1D289C9C8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10 - 8];
  v12 = a1[1];
  if (v12)
  {
    v23 = a2;
    v13 = *a1;
    v26 = 0;
    v14 = *(a1 + 2);
    v15 = *(a1 + 4);
    v27[3] = *(a1 + 3);
    v27[4] = v15;
    v16 = *a1;
    v27[1] = *(a1 + 1);
    v27[2] = v14;
    v27[0] = v16;
    sub_1D26B7740(v27, v24);
    sub_1D28772F8();
    v17 = v24[0];
    v18 = v25;
    sub_1D22BD1D0(v3, v11, &qword_1EC6DFA40, &qword_1D289C9D0);
    v19 = &v11[*(v9 + 36)];
    *v19 = v13;
    *(v19 + 1) = v12;
    v20 = *(a1 + 2);
    *(v19 + 1) = *(a1 + 1);
    *(v19 + 2) = v20;
    v21 = *(a1 + 4);
    *(v19 + 3) = *(a1 + 3);
    *(v19 + 4) = v21;
    v19[80] = v17;
    *(v19 + 11) = v18;
    sub_1D22BD1D0(v11, v8, &qword_1EC6DFA38, &qword_1D289C9C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA40, &qword_1D289C9D0);
    sub_1D26B52F8();
    sub_1D26B5384();
    sub_1D2875AF8();
    return sub_1D22BD238(v11, &qword_1EC6DFA38, &qword_1D289C9C8);
  }

  else
  {
    sub_1D22BD1D0(v3, v8, &qword_1EC6DFA40, &qword_1D289C9D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA40, &qword_1D289C9D0);
    sub_1D26B52F8();
    sub_1D26B5384();
    return sub_1D2875AF8();
  }
}

double sub_1D26B40C4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  return result;
}

double sub_1D26B421C()
{
  type metadata accessor for CreationFloatingBubblesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  sub_1D2877618();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport) = 0;
  }

  return result;
}

double sub_1D26B4370(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion) == 1)
  {
    *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  return result;
}

void sub_1D26B448C()
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
    sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
    sub_1D26B7D44(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v7 = sub_1D2877E78();
  }

  else
  {
    v7 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v1 withNullableUniqueStringID:v5 withPayload:v7];
}

uint64_t sub_1D26B4688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB40, &qword_1D289CF88);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB48, &unk_1D289CF90);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v28 = *(v2 + 8);
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD30, &unk_1D288A770);
  sub_1D2877308();
  v12 = v27;
  sub_1D2877AE8();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB50, &qword_1D289CFA0);
  (*(*(v17 - 8) + 16))(v8, a1, v17);
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB58, &unk_1D289CFA8) + 36)];
  *v18 = v12;
  *(v18 + 1) = v12;
  *(v18 + 2) = v14;
  *(v18 + 3) = v16;
  v27 = *(v2 + 24);
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877308();
  *&v8[*(v6 + 44)] = v26;
  v19 = *v2;
  if (v19)
  {
    v20 = 5.0;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1D22EC9BC(v8, v11, &qword_1EC6DFB40, &qword_1D289CF88);
  v21 = &v11[*(v9 + 36)];
  *v21 = v20;
  v21[8] = 0;
  LOBYTE(v26) = v19;
  v22 = swift_allocObject();
  v23 = *(v3 + 1);
  *(v22 + 16) = *v3;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v3 + 4);
  sub_1D22BD1D0(&v29, &v27, &qword_1EC6DBD30, &unk_1D288A770);
  sub_1D22BD1D0(&v28, &v27, &qword_1EC6DA708, &qword_1D2883E40);
  sub_1D26B7F34();
  sub_1D2876F58();

  return sub_1D22BD238(v11, &qword_1EC6DFB48, &unk_1D289CF90);
}

void sub_1D26B4978(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD30, &unk_1D288A770);
  sub_1D2877318();
}

unint64_t sub_1D26B4A7C()
{
  result = qword_1ED89D8D0;
  if (!qword_1ED89D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9B8, &qword_1D289C8E8);
    sub_1D26B4B34();
    sub_1D22BB9D8(&qword_1ED89D3A0, &qword_1EC6DA6F0, &qword_1D288A8E0, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8D0);
  }

  return result;
}

unint64_t sub_1D26B4B34()
{
  result = qword_1ED89D9E8;
  if (!qword_1ED89D9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9D0, &qword_1D289C950);
    sub_1D26B4BEC();
    sub_1D22BB9D8(&unk_1ED89D360, &qword_1EC6DF9D8, &qword_1D289C958, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9E8);
  }

  return result;
}

unint64_t sub_1D26B4BEC()
{
  result = qword_1ED89DBF8;
  if (!qword_1ED89DBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9C8, &qword_1D289C8F8);
    sub_1D26B4C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBF8);
  }

  return result;
}

unint64_t sub_1D26B4C78()
{
  result = qword_1ED89D240;
  if (!qword_1ED89D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9E0, &qword_1D289C968);
    sub_1D26B4CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D240);
  }

  return result;
}

unint64_t sub_1D26B4CFC()
{
  result = qword_1ED89D5F0;
  if (!qword_1ED89D5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9E8, &qword_1D289C970);
    sub_1D26B4D88();
    sub_1D26B5CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5F0);
  }

  return result;
}

unint64_t sub_1D26B4D88()
{
  result = qword_1ED89DAC0;
  if (!qword_1ED89DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9F0, &qword_1D289C978);
    sub_1D26B4E40();
    sub_1D22BB9D8(&qword_1ED89D688, &qword_1EC6DFAB0, &qword_1D289CA50, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAC0);
  }

  return result;
}

unint64_t sub_1D26B4E40()
{
  result = qword_1ED89DD28;
  if (!qword_1ED89DD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9F8, &qword_1D289C980);
    sub_1D26B4ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD28);
  }

  return result;
}

unint64_t sub_1D26B4ECC()
{
  result = qword_1ED89DEB8;
  if (!qword_1ED89DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA00, &qword_1D289C988);
    sub_1D22BB9D8(&qword_1ED89DF50, &qword_1EC6DFA08, &qword_1D289C990, MEMORY[0x1E697DDD0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA10, &qword_1D289C998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA18, &unk_1D289C9A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860, &unk_1D287CD70);
    sub_1D26B5078();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22EBCFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEB8);
  }

  return result;
}

unint64_t sub_1D26B5078()
{
  result = qword_1ED89D988;
  if (!qword_1ED89D988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA18, &unk_1D289C9A0);
    sub_1D26B5130();
    sub_1D22BB9D8(&qword_1ED89D350, &qword_1EC6DFAA8, &qword_1D289CA48, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D988);
  }

  return result;
}

unint64_t sub_1D26B5130()
{
  result = qword_1ED89DB50;
  if (!qword_1ED89DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA20, &qword_1D289C9B0);
    sub_1D26B51E8();
    sub_1D22BB9D8(&qword_1ED89D690, &qword_1EC6DFAA0, &qword_1D289CA40, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB50);
  }

  return result;
}

unint64_t sub_1D26B51E8()
{
  result = qword_1ED89D070;
  if (!qword_1ED89D070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA28, &qword_1D289C9B8);
    sub_1D26B526C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D070);
  }

  return result;
}

unint64_t sub_1D26B526C()
{
  result = qword_1ED89D608;
  if (!qword_1ED89D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA30, &qword_1D289C9C0);
    sub_1D26B52F8();
    sub_1D26B5384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D608);
  }

  return result;
}

unint64_t sub_1D26B52F8()
{
  result = qword_1ED89DDD0;
  if (!qword_1ED89DDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA38, &qword_1D289C9C8);
    sub_1D26B5384();
    sub_1D26B5C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDD0);
  }

  return result;
}

unint64_t sub_1D26B5384()
{
  result = qword_1ED89D618;
  if (!qword_1ED89D618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA40, &qword_1D289C9D0);
    sub_1D26B54B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50, &unk_1D289C9E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660, &unk_1D2883DC0);
    sub_1D26B560C();
    sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660, &unk_1D2883DC0, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D618);
  }

  return result;
}

unint64_t sub_1D26B54B4()
{
  result = qword_1ED89DC50;
  if (!qword_1ED89DC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA48, &qword_1D289C9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50, &unk_1D289C9E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660, &unk_1D2883DC0);
    sub_1D26B560C();
    sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660, &unk_1D2883DC0, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    sub_1D26B7D44(qword_1ED89E730, type metadata accessor for PhotoSharingConfirmationViewModifier, &unk_1D288D058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC50);
  }

  return result;
}

unint64_t sub_1D26B560C()
{
  result = qword_1ED89D798;
  if (!qword_1ED89D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50, &unk_1D289C9E0);
    sub_1D26B5698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D798);
  }

  return result;
}

unint64_t sub_1D26B5698()
{
  result = qword_1ED89D7C0;
  if (!qword_1ED89D7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA58, &qword_1D289C9F0);
    sub_1D26B5750();
    sub_1D22BB9D8(&qword_1ED89D478, &qword_1EC6DFA98, &qword_1D289CA38, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7C0);
  }

  return result;
}

unint64_t sub_1D26B5750()
{
  result = qword_1ED89D7F0;
  if (!qword_1ED89D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA60, &qword_1D289C9F8);
    sub_1D26B57DC();
    sub_1D26B5BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7F0);
  }

  return result;
}

unint64_t sub_1D26B57DC()
{
  result = qword_1ED89D838;
  if (!qword_1ED89D838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA68, &qword_1D289CA00);
    sub_1D26B5868();
    sub_1D26B5BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D838);
  }

  return result;
}

unint64_t sub_1D26B5868()
{
  result = qword_1ED89D8A0;
  if (!qword_1ED89D8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA70, &qword_1D289CA08);
    sub_1D26B58F4();
    sub_1D26B5B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8A0);
  }

  return result;
}

unint64_t sub_1D26B58F4()
{
  result = qword_1ED89D970;
  if (!qword_1ED89D970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA78, &qword_1D289CA10);
    sub_1D26B59AC();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918, &qword_1D288E3A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D970);
  }

  return result;
}

unint64_t sub_1D26B59AC()
{
  result = qword_1ED89DB38;
  if (!qword_1ED89DB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA80, &qword_1D289CA18);
    sub_1D26B5A64();
    sub_1D22BB9D8(&qword_1ED89D338, &qword_1EC6DFA90, &unk_1D289CA28, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB38);
  }

  return result;
}

unint64_t sub_1D26B5A64()
{
  result = qword_1ED89DE30;
  if (!qword_1ED89DE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA88, &qword_1D289CA20);
    sub_1D26B7D44(&qword_1ED8A5240, type metadata accessor for BubbleView, &unk_1D289D388);
    sub_1D26B7D44(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE30);
  }

  return result;
}

unint64_t sub_1D26B5B50()
{
  result = qword_1ED8A1E30;
  if (!qword_1ED8A1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1E30);
  }

  return result;
}

unint64_t sub_1D26B5BA4()
{
  result = qword_1ED8A0918[0];
  if (!qword_1ED8A0918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A0918);
  }

  return result;
}

unint64_t sub_1D26B5BF8()
{
  result = qword_1ED89F088[0];
  if (!qword_1ED89F088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89F088);
  }

  return result;
}

unint64_t sub_1D26B5C4C()
{
  result = qword_1ED89E5B8;
  if (!qword_1ED89E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5B8);
  }

  return result;
}

unint64_t sub_1D26B5CA0()
{
  result = qword_1ED89D920;
  if (!qword_1ED89D920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAB8, &qword_1D289CA58);
    sub_1D26B5D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D920);
  }

  return result;
}

unint64_t sub_1D26B5D2C()
{
  result = qword_1ED89DAB8;
  if (!qword_1ED89DAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAC0, &qword_1D289CA60);
    sub_1D26B5DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAB8);
  }

  return result;
}

unint64_t sub_1D26B5DB8()
{
  result = qword_1ED89DD20;
  if (!qword_1ED89DD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAC8, &qword_1D289CA68);
    sub_1D26B5E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD20);
  }

  return result;
}

unint64_t sub_1D26B5E44()
{
  result = qword_1ED89DEB0;
  if (!qword_1ED89DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAD0, &qword_1D289CA70);
    sub_1D22BB9D8(&qword_1ED89DF48, &qword_1EC6DFAD8, &qword_1D289CA78, MEMORY[0x1E697DDD0]);
    sub_1D26B5EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEB0);
  }

  return result;
}

unint64_t sub_1D26B5EFC()
{
  result = qword_1ED89DC28;
  if (!qword_1ED89DC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAE0, &unk_1D289CA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA10, &qword_1D289C998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA18, &unk_1D289C9A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860, &unk_1D287CD70);
    sub_1D26B5078();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22EBCFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC28);
  }

  return result;
}

double sub_1D26B60AC(void *a1)
{
  v3 = *(type metadata accessor for CreationFloatingBubblesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D26B002C(a1, v4);
}

unint64_t sub_1D26B611C()
{
  result = qword_1ED89D8E0;
  if (!qword_1ED89D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9C0, &qword_1D289C8F0);
    sub_1D26B61D4();
    sub_1D22BB9D8(&qword_1ED89D660, &qword_1EC6DFAF8, &qword_1D289CAA0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8E0);
  }

  return result;
}

unint64_t sub_1D26B61D4()
{
  result = qword_1ED89DA00;
  if (!qword_1ED89DA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAF0, &qword_1D289CA98);
    sub_1D26B6260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA00);
  }

  return result;
}

unint64_t sub_1D26B6260()
{
  result = qword_1ED89DC20;
  if (!qword_1ED89DC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAE8, &qword_1D289CA90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9B8, &qword_1D289C8E8);
    sub_1D2871818();
    sub_1D26B4A7C();
    sub_1D26B7D44(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC20);
  }

  return result;
}

double sub_1D26B6378(__int16 a1)
{
  v3 = *(type metadata accessor for CreationFloatingBubblesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D26B01A8(a1 & 0x101, v4);
}

uint64_t sub_1D26B6444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CreationFloatingBubblesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D26B026C(a1, v6, a2);
}

double sub_1D26B64C4(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for CreationFloatingBubblesView(0);

  return sub_1D26B40C4(a1, a2);
}

uint64_t sub_1D26B6594(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CreationFloatingBubblesView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Bubble(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

void sub_1D26B6674(_BYTE *a1@<X8>)
{
  type metadata accessor for CreationFloatingBubblesView(0);
  type metadata accessor for Bubble(0);

  sub_1D26B2CDC(a1);
}

double sub_1D26B674C()
{
  type metadata accessor for CreationFloatingBubblesView(0);

  return sub_1D26B2E38();
}

uint64_t objectdestroy_66Tm()
{
  v1 = type metadata accessor for CreationFloatingBubblesView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(*(type metadata accessor for Bubble(0) - 8) + 80);
  v5 = v2 + v3 + v4;
  v6 = v0 + v2;
  sub_1D2273818(*(v0 + v2), *(v0 + v2 + 8));
  sub_1D2273818(*(v6 + 16), *(v6 + 24));

  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2875E18();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v5 & ~v4;
  sub_1D2273818(*(v6 + v1[16]), *(v6 + v1[16] + 8));
  v13 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1D2874EA8();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
  }

  v15 = v0 + v12;
  type metadata accessor for Bubble.BubbleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {

        v84 = *(type metadata accessor for Prompt(0) + 36);
        v85 = sub_1D2871798();
        (*(*(v85 - 8) + 8))(v15 + v84, v85);
        goto LABEL_66;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_22;
      }

      v64 = type metadata accessor for PhotosPersonAsset(0);
      if (!(*(*(v64 - 8) + 48))(v0 + v12, 1, v64))
      {

        if (*(v15 + 32))
        {
        }

        v65 = v15 + *(v64 + 20);

        v66 = (v65 + *(type metadata accessor for PhotosPersonImage(0) + 24));

        v67 = type metadata accessor for PlaygroundImage(0);
        v68 = v67[8];
        v69 = sub_1D2871818();
        (*(*(v69 - 8) + 8))(v66 + v68, v69);
        v70 = (v66 + v67[10]);
        v71 = v70[1];
        if (v71 >> 60 != 15)
        {
          sub_1D22D6D60(*v70, v71);
        }

        v72 = v67[11];
        v73 = sub_1D2873AA8();
        v74 = *(v73 - 8);
        if (!(*(v74 + 48))(v66 + v72, 1, v73))
        {
          (*(v74 + 8))(v66 + v72, v73);
        }
      }

      v17 = *(type metadata accessor for PersonConditioningImage(0) + 20);
      goto LABEL_60;
    }

    if (EnumCaseMultiPayload == 8)
    {
LABEL_22:

      v18 = type metadata accessor for PlaygroundImage(0);
      v19 = v18[8];
      v20 = sub_1D2871818();
      (*(*(v20 - 8) + 8))(v15 + v19, v20);
      v21 = (v15 + v18[10]);
      v22 = v21[1];
      if (v22 >> 60 != 15)
      {
        sub_1D22D6D60(*v21, v22);
      }

      v23 = v18[11];
      v24 = sub_1D2873AA8();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v15 + v23, 1, v24))
      {
        (*(v25 + 8))(v15 + v23, v24);
      }

      goto LABEL_66;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_66;
      }

      goto LABEL_22;
    }

LABEL_40:

    goto LABEL_66;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v47 = sub_1D2872008();
      (*(*(v47 - 8) + 8))(v0 + v12, v47);
      goto LABEL_66;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_66;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_28:

    v26 = type metadata accessor for CuratedPrompt(0);
    v27 = (v15 + v26[8]);
    v28 = type metadata accessor for PlaygroundImage(0);
    v29 = *(*(v28 - 1) + 48);
    if (!v29(v27, 1, v28))
    {
      v91 = v29;

      v30 = v28[8];
      v31 = sub_1D2871818();
      (*(*(v31 - 8) + 8))(v27 + v30, v31);
      v32 = (v27 + v28[10]);
      v33 = v32[1];
      if (v33 >> 60 != 15)
      {
        sub_1D22D6D60(*v32, v33);
      }

      v34 = v28[11];
      v35 = sub_1D2873AA8();
      v88 = *(v35 - 8);
      v90 = v34;
      v36 = (*(v88 + 48))(v27 + v34, 1, v35);
      v29 = v91;
      if (!v36)
      {
        (*(v88 + 8))(v27 + v90, v35);
      }
    }

    v37 = (v15 + v26[9]);
    if (!v29(v37, 1, v28))
    {

      v38 = v28[8];
      v39 = sub_1D2871818();
      (*(*(v39 - 8) + 8))(v37 + v38, v39);
      v40 = (v37 + v28[10]);
      v41 = v40[1];
      if (v41 >> 60 != 15)
      {
        sub_1D22D6D60(*v40, v41);
      }

      v42 = v28[11];
      v43 = sub_1D2873AA8();
      v44 = *(v43 - 8);
      if (!(*(v44 + 48))(v37 + v42, 1, v43))
      {
        (*(v44 + 8))(v37 + v42, v43);
      }
    }

    v45 = v15 + v26[23];
    v46 = *(v45 + 48);
    if (v46 != 255)
    {
      sub_1D23B7DA0(*v45, *(v45 + 8), *(v45 + 16), *(v45 + 24), *(v45 + 32), *(v45 + 40), v46 & 1);
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 3)
  {

    if (*(v15 + 32))
    {
    }

    v15 += *(type metadata accessor for PhotosPersonAsset(0) + 20);

    v17 = *(type metadata accessor for PhotosPersonImage(0) + 24);
LABEL_60:
    v75 = v15 + v17;

    v76 = type metadata accessor for PlaygroundImage(0);
    v77 = v76[8];
    v78 = sub_1D2871818();
    (*(*(v78 - 8) + 8))(v75 + v77, v78);
    v79 = (v75 + v76[10]);
    v80 = v79[1];
    if (v80 >> 60 != 15)
    {
      sub_1D22D6D60(*v79, v80);
    }

    v81 = v76[11];
    v82 = sub_1D2873AA8();
    v83 = *(v82 - 8);
    if (!(*(v83 + 48))(v75 + v81, 1, v82))
    {
      (*(v83 + 8))(v75 + v81, v82);
    }

    goto LABEL_66;
  }

  v48 = type metadata accessor for PlaygroundImage(0);
  v49 = v48[8];
  v50 = sub_1D2871818();
  v92 = *(*(v50 - 8) + 8);
  v92(v15 + v49, v50);
  v51 = (v15 + v48[10]);
  v52 = v51[1];
  if (v52 >> 60 != 15)
  {
    sub_1D22D6D60(*v51, v52);
  }

  v53 = v48[11];
  v54 = sub_1D2873AA8();
  v55 = *(v54 - 8);
  v89 = *(v55 + 48);
  if (!v89(v15 + v53, 1, v54))
  {
    (*(v55 + 8))(v15 + v53, v54);
  }

  v87 = v55;
  v56 = type metadata accessor for CharacterAsset(0);
  v57 = (v15 + *(v56 + 20));
  if (!(*(*(v48 - 1) + 48))(v57, 1, v48))
  {

    v92(v57 + v48[8], v50);
    v58 = (v57 + v48[10]);
    v59 = v58[1];
    if (v59 >> 60 != 15)
    {
      sub_1D22D6D60(*v58, v59);
    }

    v60 = v48[11];
    if (!v89(v57 + v60, 1, v54))
    {
      (*(v87 + 8))(v57 + v60, v54);
    }
  }

  v61 = *(v56 + 24);
  v62 = v61 + *(type metadata accessor for CharacterRecipe(0) + 20);
  v63 = sub_1D28737A8();
  (*(*(v63 - 8) + 8))(v15 + v62, v63);
LABEL_66:

  return swift_deallocObject();
}

double sub_1D26B75FC(uint64_t a1)
{
  v3 = *(type metadata accessor for CreationFloatingBubblesView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for Bubble(0);

  return sub_1D26B30F4(a1, v1 + v4);
}

double sub_1D26B76D0(uint64_t a1)
{
  v3 = *(type metadata accessor for CreationFloatingBubblesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D26B315C(a1, v4);
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = type metadata accessor for CreationFloatingBubblesView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1D2273818(*v2, *(v2 + 8));
  sub_1D2273818(*(v2 + 16), *(v2 + 24));

  v3 = v1[9];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8, &unk_1D289C840);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2875E18();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[16]), *(v2 + v1[16] + 8));
  v8 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2874EA8();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D26B7A70(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CreationFloatingBubblesView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_27(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return swift_deallocObject();
}

unint64_t sub_1D26B7B6C()
{
  result = qword_1ED89F7A8;
  if (!qword_1ED89F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F7A8);
  }

  return result;
}

unint64_t sub_1D26B7BC0()
{
  result = qword_1ED89D6E0;
  if (!qword_1ED89D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D6E0);
  }

  return result;
}

uint64_t sub_1D26B7C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26B7C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D26B7CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26B7D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D26B7D8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D26B7DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1D26B7E54()
{
  result = qword_1ED89D858;
  if (!qword_1ED89D858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB38, &qword_1D289CF30);
    sub_1D26B611C();
    sub_1D26B7D44(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D858);
  }

  return result;
}

unint64_t sub_1D26B7F34()
{
  result = qword_1ED89D938;
  if (!qword_1ED89D938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB48, &unk_1D289CF90);
    sub_1D26B7FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D938);
  }

  return result;
}

unint64_t sub_1D26B7FC0()
{
  result = qword_1ED89DAF8;
  if (!qword_1ED89DAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB40, &qword_1D289CF88);
    sub_1D26B804C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAF8);
  }

  return result;
}

unint64_t sub_1D26B804C()
{
  result = qword_1ED89DD98;
  if (!qword_1ED89DD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB58, &unk_1D289CFA8);
    sub_1D22BB9D8(&qword_1ED89D450, &qword_1EC6DFB50, &qword_1D289CFA0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD98);
  }

  return result;
}

unint64_t sub_1D26B8104()
{
  result = qword_1ED89DB88;
  if (!qword_1ED89DB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB68, &unk_1D289CFC0);
    sub_1D22BB9D8(&qword_1ED89D0F8, &qword_1EC6DBFA8, &qword_1D288ADA8, MEMORY[0x1E6981810]);
    sub_1D26B7D44(qword_1ED89E730, type metadata accessor for PhotoSharingConfirmationViewModifier, &unk_1D288D058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB88);
  }

  return result;
}

uint64_t type metadata accessor for SketchConditioningImage(uint64_t a1)
{
  result = qword_1ED8A6750;
  if (!qword_1ED8A6750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D26B8290(uint64_t a1)
{
  result = type metadata accessor for PlaygroundImage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D26B8304()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D26B843C()
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26B87C4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26B84DC(uint64_t a1)
{
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26B87C4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D2877F08();
}

uint64_t sub_1D26B8564()
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26B87C4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26B8600(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaygroundImage(0);

  return _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D26B8690(uint64_t a1)
{
  result = sub_1D26B87C4(&qword_1EC6DFB78, type metadata accessor for SketchConditioningImage, &unk_1D289D010);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26B86E8(uint64_t a1)
{
  *(a1 + 8) = sub_1D26B87C4(&qword_1EC6DFB80, type metadata accessor for SketchConditioningImage, &unk_1D289D088);
  result = sub_1D26B87C4(&qword_1EC6DFB88, type metadata accessor for SketchConditioningImage, &unk_1D289D048);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D26B876C(uint64_t a1)
{
  result = sub_1D26B87C4(&qword_1EC6DF7D8, type metadata accessor for SketchConditioningImage, &unk_1D289D0A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26B87C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PersonConditioningImage(uint64_t a1)
{
  result = qword_1ED8A6808;
  if (!qword_1ED8A6808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26B8880(uint64_t a1)
{
  sub_1D24A30D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlaygroundImage(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D26B8904(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosPersonAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v16 - v9;
  sub_1D24A3128(v2, v16 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D23DBC5C(v10, v7);
    sub_1D28797F8();
    v11 = v7[1];
    v16[0] = *v7;
    v16[1] = v11;
    v12 = v7[3];
    v16[2] = v7[2];
    v16[3] = v12;
    PhotosPerson.hash(into:)(a1);
    v13 = v7 + *(v4 + 20);
    sub_1D2877F38();
    if (v13[24])
    {
      sub_1D28797F8();
    }

    else
    {
      v14 = *(v13 + 2);
      sub_1D28797F8();
      MEMORY[0x1D38A2260](v14);
    }

    type metadata accessor for PhotosPersonImage(0);
    type metadata accessor for PlaygroundImage(0);
    sub_1D2871818();
    sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D2877F08();
    sub_1D28797F8();
    sub_1D24A3494(v7);
  }

  type metadata accessor for PersonConditioningImage(0);
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D2877F08();
}

uint64_t sub_1D26B8BBC()
{
  v1 = v0;
  v2 = type metadata accessor for PhotosPersonAsset(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  sub_1D28797D8();
  sub_1D24A3128(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D23DBC5C(v8, v5);
    sub_1D28797F8();
    v9 = v5[1];
    v14[0] = *v5;
    v14[1] = v9;
    v10 = v5[3];
    v14[2] = v5[2];
    v14[3] = v10;
    PhotosPerson.hash(into:)(v15);
    v11 = v5 + *(v2 + 20);
    sub_1D2877F38();
    if (v11[24])
    {
      sub_1D28797F8();
    }

    else
    {
      v12 = *(v11 + 2);
      sub_1D28797F8();
      MEMORY[0x1D38A2260](v12);
    }

    type metadata accessor for PhotosPersonImage(0);
    type metadata accessor for PlaygroundImage(0);
    sub_1D2871818();
    sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D2877F08();
    sub_1D28797F8();
    sub_1D24A3494(v5);
  }

  type metadata accessor for PersonConditioningImage(0);
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26B8E98()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D26B8FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D239A330(v2 + *(a1 + 20), a2);
  v4 = type metadata accessor for PlaygroundImage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1D26B908C()
{
  v1 = v0;
  v2 = type metadata accessor for PhotosPersonAsset(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  sub_1D28797D8();
  sub_1D24A3128(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D23DBC5C(v8, v5);
    sub_1D28797F8();
    v9 = v5[1];
    v14[0] = *v5;
    v14[1] = v9;
    v10 = v5[3];
    v14[2] = v5[2];
    v14[3] = v10;
    PhotosPerson.hash(into:)(v15);
    v11 = v5 + *(v2 + 20);
    sub_1D2877F38();
    if (v11[24])
    {
      sub_1D28797F8();
    }

    else
    {
      v12 = *(v11 + 2);
      sub_1D28797F8();
      MEMORY[0x1D38A2260](v12);
    }

    type metadata accessor for PhotosPersonImage(0);
    type metadata accessor for PlaygroundImage(0);
    sub_1D2871818();
    sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D2877F08();
    sub_1D28797F8();
    sub_1D24A3494(v5);
  }

  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26B9354@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaygroundImage(0);
  result = sub_1D28717B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D26B93E0(uint64_t a1)
{
  result = sub_1D26B975C(&qword_1EC6DFB98, type metadata accessor for PersonConditioningImage, &unk_1D289D120);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26B9438(uint64_t a1)
{
  *(a1 + 8) = sub_1D26B975C(&qword_1EC6DFBA0, type metadata accessor for PersonConditioningImage, &unk_1D289D198);
  result = sub_1D26B975C(&qword_1EC6DFBA8, type metadata accessor for PersonConditioningImage, &unk_1D289D158);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D26B94BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC478, &qword_1D288C530);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D24A3128(a1, &v20 - v12);
  sub_1D24A3128(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6DDDC0, &unk_1D2881BE0);
LABEL_9:
      type metadata accessor for PersonConditioningImage(0);
      type metadata accessor for PlaygroundImage(0);
      v17 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1D24A3128(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D24A3494(v10);
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6DC478, &qword_1D288C530);
    goto LABEL_7;
  }

  sub_1D23DBC5C(&v13[v15], v7);
  v18 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_1D24A3494(v7);
  sub_1D24A3494(v10);
  sub_1D22BD238(v13, &unk_1EC6DDDC0, &unk_1D2881BE0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D26B975C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D26B97A8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1D2873CB8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26B986C, 0, 0);
}

uint64_t sub_1D26B986C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69AE3E8]) init];
  v0[10] = v1;
  [v1 setExtendedContextLength_];
  sub_1D28725A8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D28789F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Started generation of text embedding for raw text", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];

  (*(v6 + 8))(v5, v7);
  v10 = swift_allocObject();
  v0[11] = v10;
  swift_weakInit();
  v11 = swift_task_alloc();
  v0[12] = v11;
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v11[5] = v1;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_1D26B9A68;
  v13 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x80000001D28BFDB0, sub_1D26BB81C, v11, v13);
}

uint64_t sub_1D26B9A68()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D26B9C18;
  }

  else
  {

    v2 = sub_1D26B9B8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D26B9B8C()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = v0[3];
  sub_1D26BA814("Finished generation of text embedding for raw text");

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1D26B9C18()
{
  v1 = *(v0 + 80);

  sub_1D26BA814("Finished generation of text embedding for raw text");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D26B9CA8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D2873CB8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26B9D68, 0, 0);
}

uint64_t sub_1D26B9D68()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69AE3E8]) init];
  v0[8] = v1;
  [v1 setExtendedContextLength_];
  sub_1D28725A8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D28789F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Started generation of text embeddings for curated prompts", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = swift_allocObject();
  v0[9] = v9;
  swift_weakInit();
  v10 = swift_task_alloc();
  v0[10] = v10;
  v10[2] = v9;
  v10[3] = v1;
  v10[4] = v8;
  v11 = swift_task_alloc();
  v0[11] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBB8, &qword_1D289D250);
  *v11 = v0;
  v11[1] = sub_1D26B9F74;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001D28BFD70, sub_1D26BB270, v10, v12);
}

uint64_t sub_1D26B9F74()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D26BA120;
  }

  else
  {

    v2 = sub_1D26BA098;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D26BA098()
{
  v1 = v0[8];
  v2 = v0[2];
  sub_1D26BA814("Finished generation of text embeddings for curated prompts");

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D26BA120()
{
  v1 = *(v0 + 64);

  sub_1D26BA814("Finished generation of text embeddings for curated prompts");

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D26BA1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0, &unk_1D289D270);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v38 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    v42 = sub_1D26BA574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10, &qword_1D2881580);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D28809B0;
    *(v15 + 32) = a5;
    sub_1D22BCFD0(0, &qword_1EC6D7530, 0x1E69AE3F8);
    v39 = a5;
    v41 = sub_1D28783C8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D287F500;
    *(v16 + 32) = a3;
    *(v16 + 40) = a4;
    sub_1D2870F68();
    v40 = sub_1D28783C8();

    v17 = *(v10 + 16);
    v38[1] = a1;
    v17(v13, a1, v9);
    v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = *(v10 + 32);
    v23 = v21 + v18;
    v38[0] = v9;
    v24 = a3;
    v25 = v43;
    v22(v23, v13, v9);
    v26 = v39;
    *(v21 + v19) = v39;
    *(v21 + v20) = v25;
    v27 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v24;
    v27[1] = a4;
    aBlock[4] = sub_1D26BB828;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D26BA79C;
    aBlock[3] = &block_descriptor_15_0;
    v28 = _Block_copy(aBlock);
    sub_1D2870F68();
    v29 = v26;
    sub_1D2870F78();

    v31 = v41;
    v30 = v42;
    v32 = v40;
    v33 = [v42 performRequests:v41 text:v40 identifier:0 completionHandler:v28];
    _Block_release(v28);

    if (v33 == -1)
    {
      sub_1D26BB27C();
      v34 = swift_allocError();
      *v35 = v24;
      v35[1] = a4;
      aBlock[0] = v34;
      sub_1D2870F68();
      sub_1D2878508();
    }
  }

  else
  {
    sub_1D26BB27C();
    v36 = swift_allocError();
    *v37 = a3;
    v37[1] = a4;
    aBlock[0] = v36;
    sub_1D2870F68();
    sub_1D2878508();
  }
}

id sub_1D26BA574()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_opt_self() service];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1D26BA5E8(int a1, id a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v7 = a2;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0, &unk_1D289D270);
    sub_1D2878508();
    return;
  }

  if ([a4 error])
  {
    goto LABEL_14;
  }

  v11 = [a4 embeddingResults];
  if (!v11)
  {
LABEL_13:
    sub_1D26BB27C();
    swift_allocError();
    *v16 = a6;
    v16[1] = a7;
    sub_1D2870F68();
    goto LABEL_14;
  }

  v12 = v11;
  sub_1D22BCFD0(0, &qword_1EC6D7500, 0x1E69AE3F0);
  v13 = sub_1D28783E8();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (!sub_1D2879368())
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_7:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1D38A1C30](0, v13);
    goto LABEL_10;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);
LABEL_10:
    v15 = v14;

    sub_1D26BB3B8(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0, &unk_1D289D270);
    sub_1D2878518();

    return;
  }

  __break(1u);
}

void sub_1D26BA79C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1D2870F78();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D26BA814(const char *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725A8();
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, a1, v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1D26BA950(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0, &unk_1D289D258);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = v11;
    v45 = Strong;
    v46 = v7;
    v43 = sub_1D26BA574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10, &qword_1D2881580);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D28809B0;
    *(v13 + 32) = a3;
    sub_1D22BCFD0(0, &qword_1EC6D7530, 0x1E69AE3F8);
    v40 = a3;
    v41 = sub_1D28783C8();

    v14 = *(a4 + 16);
    v47 = a1;
    v44 = a4;
    if (v14)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D23D81B8(0, v14, 0);
      v15 = aBlock[0];
      v16 = (a4 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        aBlock[0] = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        sub_1D2870F68();
        if (v20 >= v19 >> 1)
        {
          sub_1D23D81B8((v19 > 1), v20 + 1, 1);
          v15 = aBlock[0];
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        v16 += 4;
        --v14;
      }

      while (v14);
      a1 = v47;
    }

    v22 = sub_1D28783C8();

    v23 = v42;
    v24 = v46;
    (*(v8 + 16))(v42, a1, v46);
    v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    (*(v8 + 32))(v28 + v25, v23, v24);
    v29 = v40;
    *(v28 + v26) = v40;
    v30 = v45;
    *(v28 + v27) = v44;
    *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
    aBlock[4] = sub_1D26BB2D0;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D26BA79C;
    aBlock[3] = &block_descriptor_37;
    v31 = _Block_copy(aBlock);
    v32 = v29;
    sub_1D2870F68();
    sub_1D2870F78();

    v33 = v43;
    v34 = v41;
    LODWORD(v26) = [v43 performRequests:v41 text:v22 identifier:0 completionHandler:v31];
    _Block_release(v31);

    if (v26 == -1)
    {
      sub_1D26BB27C();
      v35 = swift_allocError();
      *v36 = 0;
      v36[1] = 0;
      aBlock[0] = v35;
      sub_1D2878508();
    }
  }

  else
  {
    sub_1D26BB27C();
    v37 = swift_allocError();
    *v38 = 0;
    v38[1] = 0;
    aBlock[0] = v37;
    sub_1D2878508();
  }
}

uint64_t sub_1D26BAD58(int a1, id a2, int a3, id a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0, &unk_1D289D258);
    return sub_1D2878508();
  }

  v8 = [a4 embeddingResults];
  if (!v8)
  {
    sub_1D26BB27C();
    swift_allocError();
    *v28 = 0;
    v28[1] = 0;
    goto LABEL_3;
  }

  v9 = v8;
  sub_1D22BCFD0(0, &qword_1EC6D7500, 0x1E69AE3F0);
  v10 = sub_1D28783E8();

  if (v10 >> 62)
  {
LABEL_31:
    v32 = v10 & 0xFFFFFFFFFFFFFF8;
    v34 = sub_1D2879368();
  }

  else
  {
    v32 = v10 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v10 & 0xC000000000000001;
  v29 = v10;
  v31 = v10 + 32;
  sub_1D2870F68();
  v11 = 0;
  v12 = a5 + 56;
  v30 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v10 = v12 + 32 * v11;
  while (1)
  {
    if (v34 == v11)
    {

      goto LABEL_27;
    }

    if (v33)
    {
      v13 = MEMORY[0x1D38A1C30](v11, v29);
    }

    else
    {
      if (v11 >= *(v32 + 16))
      {
        goto LABEL_29;
      }

      v13 = *(v31 + 8 * v11);
    }

    v14 = v13;
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = *(a5 + 16);
    if (v11 == v16)
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_30;
    }

    v17 = *(v10 - 8);
    v18 = *v10;
    v10 += 32;
    sub_1D2870F68();
    sub_1D2870F68();
    v19 = sub_1D26BB4F4(v14, v17, v18);
    v21 = v20;
    v23 = v22;

    ++v11;
    if (v23 >> 60 != 15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1D27CD920(0, *(v30 + 2) + 1, 1, v30);
      }

      v26 = *(v30 + 2);
      v25 = *(v30 + 3);
      if (v26 >= v25 >> 1)
      {
        v30 = sub_1D27CD920((v25 > 1), v26 + 1, 1, v30);
      }

      *(v30 + 2) = v26 + 1;
      v27 = &v30[24 * v26];
      *(v27 + 4) = v19;
      *(v27 + 5) = v21;
      *(v27 + 6) = v23;
      v11 = v15;
      v12 = a5 + 56;
      goto LABEL_8;
    }
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0, &unk_1D289D258);
  return sub_1D2878518();
}

uint64_t sub_1D26BB060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A50, &qword_1D2888F20);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D287F500;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D26BB9B4();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    sub_1D2870F68();
    v7 = sub_1D2878078();

    return v7;
  }

  else
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED8B0058;
    sub_1D28718C8();
    return sub_1D28780E8();
  }
}

unint64_t sub_1D26BB27C()
{
  result = qword_1EC6DFBC8;
  if (!qword_1EC6DFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFBC8);
  }

  return result;
}

uint64_t sub_1D26BB2D0(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0, &unk_1D289D258) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D26BAD58(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D26BB3B8(void *a1)
{
  v2 = [a1 embedding];
  v3 = [v2 type];

  if (v3 == 1)
  {
    v4 = objc_opt_self();
    v5 = [a1 embedding];
    v6 = [v5 data];

    v7 = sub_1D28716E8();
    v9 = v8;

    v10 = sub_1D28716D8();
    sub_1D22D6D60(v7, v9);
    v11 = [v4 convertFloat16ToFloat32_];
  }

  else
  {
    v10 = [a1 embedding];
    v11 = [v10 data];
  }

  v12 = v11;

  v13 = sub_1D28716E8();
  return v13;
}

void *sub_1D26BB4F4(void *result, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  v5 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = v5;
  }

  if (!v6)
  {
    return 0;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v23 = result;
    sub_1D2870F68();
    v9 = sub_1D23BE2FC(a2, a3, 10);
    v26 = v25;

    if (v26)
    {
      return 0;
    }

    result = v23;
    goto LABEL_68;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v27 = result;
      v4 = sub_1D2879208();
      result = v27;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v15 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_64;
          }

          v16 = (v4 + 1);
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            if (!is_mul_ok(v9, 0xAuLL))
            {
              break;
            }

            v12 = __CFADD__(10 * v9, v17);
            v9 = 10 * v9 + v17;
            if (v12)
            {
              break;
            }

            ++v16;
            if (!--v15)
            {
LABEL_55:
              LOBYTE(v4) = 0;
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_64;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v9, 0xAuLL))
            {
              break;
            }

            v12 = 10 * v9 >= v11;
            v9 = 10 * v9 - v11;
            if (!v12)
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v5)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v20 = *v4 - 48;
        if (v20 > 9)
        {
          break;
        }

        if (!is_mul_ok(v9, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v9, v20);
        v9 = 10 * v9 + v20;
        if (v12)
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_63;
  }

  v28[0] = a2;
  v28[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 == 45)
    {
      if (!v4)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      if (--v4)
      {
        v9 = 0;
        v13 = v28 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (!is_mul_ok(v9, 0xAuLL))
          {
            break;
          }

          v12 = 10 * v9 >= v14;
          v9 = 10 * v9 - v14;
          if (!v12)
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v4)
    {
      v9 = 0;
      v21 = v28;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        if (!is_mul_ok(v9, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v9, v22);
        v9 = 10 * v9 + v22;
        if (v12)
        {
          break;
        }

        ++v21;
        if (!--v4)
        {
          goto LABEL_64;
        }
      }
    }

LABEL_63:
    v9 = 0;
    LOBYTE(v4) = 1;
LABEL_64:
    v29 = v4;
    if (v4)
    {
      return 0;
    }

LABEL_68:
    sub_1D26BB3B8(result);
    return v9;
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v18 = v28 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        if (!is_mul_ok(v9, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v9, v19);
        v9 = 10 * v9 + v19;
        if (v12)
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_74:
  __break(1u);
  return result;
}

void sub_1D26BB828(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0, &unk_1D289D270) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = (v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_1D26BA5E8(a1, a2, v2 + v6, v9, v10, v12, v13);
}

uint64_t sub_1D26BB8FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D26BB94C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D26BB9B4()
{
  result = qword_1EC6DFBD8;
  if (!qword_1EC6DFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFBD8);
  }

  return result;
}

double sub_1D26BBA10()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 54.0;
  if (v6 == 6)
  {
    return 40.0;
  }

  return result;
}

double sub_1D26BBB74()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 32.0;
  if (v6 == 6)
  {
    return 20.0;
  }

  return result;
}

double sub_1D26BBCD4()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v11[15];
  }

  v8 = type metadata accessor for BubbleView(0);
  v9 = 32;
  if (v6 == 6)
  {
    v9 = 24;
  }

  return *(v0 + *(v8 + 88) + v9);
}

double sub_1D26BBE7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  sub_1D2870F68();
  return result;
}

uint64_t type metadata accessor for BubbleView(uint64_t a1)
{
  result = qword_1ED8A5230;
  if (!qword_1ED8A5230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26BBEFC(uint64_t a1)
{
  sub_1D26BC218(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1D26BC218(319, &qword_1ED89E048, &type metadata for BubbleStyle, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1D26BC1B4(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1D26BC268(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1D26BC218(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1D26BC1B4(319, &qword_1EC6DFBF8, type metadata accessor for Bubble, MEMORY[0x1E697DA80]);
            if (v6 <= 0x3F)
            {
              sub_1D22BFAB4();
              if (v7 <= 0x3F)
              {
                sub_1D26BC218(319, &qword_1EC6DFC00, MEMORY[0x1E69E6158], MEMORY[0x1E697DA80]);
                if (v8 <= 0x3F)
                {
                  sub_1D26BC268(319, &qword_1EC6DFC08, &qword_1EC6DBFB0, &qword_1D288AE00, MEMORY[0x1E697DA80]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D28714E8();
                    if (v10 <= 0x3F)
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

void sub_1D26BC1B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D26BC218(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D26BC268(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D26BC2CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D26BC2EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

void sub_1D26BC35C(void *a2@<X8>)
{
  v3 = sub_1D2846EE0();
  MEMORY[0x1D38A0C50](v3);

  *a2 = 0x2D656372756F53;
  a2[1] = 0xE700000000000000;
}

uint64_t sub_1D26BC3C8@<X0>(uint64_t a1@<X8>)
{
  v140 = a1;
  v138 = sub_1D28785F8();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for BubbleView(0);
  v135 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = v3;
  v139 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D28714E8();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1D2875628();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28758D8();
  v151 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v106 - v9;
  v111 = sub_1D2876088();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC10, &qword_1D289D3D8);
  MEMORY[0x1EEE9AC00](v107);
  v14 = &v106 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC18, &qword_1D289D3E0);
  v145 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v16 = &v106 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC20, &qword_1D289D3E8);
  MEMORY[0x1EEE9AC00](v108);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v144 = &v106 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v106 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v146 = &v106 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v114 = &v106 - v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC28, &qword_1D289D3F0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v106 - v27;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC30, &qword_1D289D3F8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v106 - v28;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC38, &qword_1D289D400);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v106 - v29;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC40, &qword_1D289D408);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v106 - v30;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC48, &qword_1D289D410);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v106 - v31;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC50, &qword_1D289D418);
  MEMORY[0x1EEE9AC00](v147);
  v128 = &v106 - v32;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC58, &qword_1D289D420);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v148 = &v106 - v33;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC60, &qword_1D289D428);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v129 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v130 = &v106 - v36;
  v152 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC68, &qword_1D289D430);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC70, &qword_1D289D438);
  v38 = sub_1D26CB56C();
  v153 = v37;
  v154 = v38;
  v39 = v6;
  swift_getOpaqueTypeConformance2();
  sub_1D2877168();
  sub_1D2876068();
  v40 = sub_1D26CD290();
  v41 = v107;
  sub_1D2876BE8();
  (*(v109 + 8))(v12, v111);
  sub_1D22BD238(v14, &qword_1EC6DFC10, &qword_1D289D3D8);
  v153 = sub_1D26C2268();
  v154 = v42;
  v158 = v41;
  v159 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1D22BD06C();
  v43 = v110;
  sub_1D2876AC8();

  (*(v145 + 8))(v16, v43);
  v44 = v10;
  sub_1D28758B8();
  v45 = v108;
  sub_1D2874F38();
  v46 = *(v151 + 8);
  v46(v44, v39);
  sub_1D22BD238(v18, &qword_1EC6DFC20, &qword_1D289D3E8);
  v47 = *(v150 + 48);
  v151 = v1;
  LODWORD(v145) = *(v1 + v47);
  if (v145 == 1)
  {
    v48 = v113;
    sub_1D2875888();
  }

  else
  {
    v153 = MEMORY[0x1E69E7CC0];
    sub_1D26CF7A8(&qword_1ED89D678, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C8, &qword_1D2890E70);
    sub_1D22BB9D8(&qword_1ED89CEC8, &qword_1EC6DD1C8, &qword_1D2890E70, MEMORY[0x1E69E6328]);
    v48 = v113;
    sub_1D2879088();
  }

  v49 = v112;
  v50 = v45;
  v51 = v144;
  sub_1D2874F38();
  v46(v48, v39);
  sub_1D22BD238(v51, &qword_1EC6DFC20, &qword_1D289D3E8);
  sub_1D2874F48();
  sub_1D22BD238(v49, &qword_1EC6DFC20, &qword_1D289D3E8);
  v52 = *(v151 + 16);
  v53 = *(v151 + 24);
  LODWORD(v144) = v53;
  if (v53 == 1)
  {
    v54 = v52;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v55 = sub_1D28762E8();
    sub_1D2873BE8();

    v56 = v141;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v52, 0);
    (*(v142 + 8))(v56, v143);
    v54 = v153;
  }

  v57 = v145;
  v58 = (v145 & v54) == 0;
  v59 = 80;
  if (!v58)
  {
    v59 = 84;
  }

  (*(v118 + 16))(v117, v151 + *(v150 + v59), v119);
  v60 = sub_1D2876688();
  v62 = v61;
  v64 = v63;
  v65 = v114;
  v66 = v146;
  sub_1D2874EE8();
  sub_1D22ED6E0(v60, v62, v64 & 1);

  sub_1D22BD238(v66, &qword_1EC6DFC20, &qword_1D289D3E8);
  v67 = sub_1D26C2268();
  v69 = v68;
  v70 = sub_1D26CD350();
  v71 = v116;
  sub_1D26C2900(v67, v69, v50, v70, v116);

  sub_1D22BD238(v65, &qword_1EC6DFC20, &qword_1D289D3E8);
  if (v57)
  {
    v72 = v120;
    v73 = v144;
    if (!v144)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v74 = sub_1D28762E8();
      sub_1D2873BE8();

      v75 = v141;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v52, 0);
      (*(v142 + 8))(v75, v143);
    }

    sub_1D26CD448();
    sub_1D2876ED8();
    sub_1D22BD238(v71, &qword_1EC6DFC28, &qword_1D289D3F0);
    if (!v73)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v76 = sub_1D28762E8();
      sub_1D2873BE8();

      v77 = v141;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v52, 0);
      (*(v142 + 8))(v77, v143);
    }
  }

  else
  {
    sub_1D26CD448();
    v72 = v120;
    sub_1D2876ED8();
    sub_1D22BD238(v71, &qword_1EC6DFC28, &qword_1D289D3F0);
  }

  sub_1D26CD568();
  v78 = v123;
  sub_1D2876748();
  v79 = sub_1D22BD238(v72, &qword_1EC6DFC30, &qword_1D289D3F8);
  MEMORY[0x1D38A0390](v79, 0.5, 1.0, 0.0);
  LOBYTE(v153) = v145;
  sub_1D26CD5F4();
  v80 = v125;
  sub_1D2876F78();

  sub_1D22BD238(v78, &qword_1EC6DFC38, &qword_1D289D400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE8, &qword_1D289D340);
  v81 = v151;
  sub_1D2874338();
  sub_1D2875FF8();
  sub_1D2877AE8();
  sub_1D26CD680();
  v82 = v127;
  sub_1D2876C58();

  sub_1D22BD238(v80, &qword_1EC6DFC40, &qword_1D289D408);
  v83 = v139;
  sub_1D26CE38C(v81, v139, type metadata accessor for BubbleView);
  v84 = *(v135 + 80);
  v85 = swift_allocObject();
  v150 = (v84 + 16) & ~v84;
  sub_1D26CE3F4(v83, v85 + v150, type metadata accessor for BubbleView);
  sub_1D26CD798();
  v86 = v128;
  sub_1D2876F38();

  sub_1D22BD238(v82, &qword_1EC6DFC48, &qword_1D289D410);
  sub_1D26CE38C(v81, v83, type metadata accessor for BubbleView);
  sub_1D2878568();
  v87 = sub_1D2878558();
  v88 = swift_allocObject();
  v89 = MEMORY[0x1E69E85E0];
  *(v88 + 16) = v87;
  *(v88 + 24) = v89;
  sub_1D26CE3F4(v83, v88 + ((v84 + 32) & ~v84), type metadata accessor for BubbleView);
  v90 = v136;
  sub_1D2878588();
  v91 = sub_1D26CD92C();
  sub_1D22B8150(0, v90, 0xD000000000000028, 0x80000001D28BFE70, 213, &unk_1D289D660, v88, v148, v147, v91);
  (*(v137 + 8))(v90, v138);
  sub_1D22BD238(v86, &qword_1EC6DFC50, &qword_1D289D418);
  v92 = *v81;
  if (*(v81 + 8) == 1)
  {
    LOBYTE(v158) = *v81;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v93 = sub_1D28762E8();
    sub_1D2873BE8();

    v94 = v141;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v92, 0);
    (*(v142 + 8))(v94, v143);
    LOBYTE(v92) = v158;
  }

  v157 = v92;
  sub_1D26CE38C(v151, v83, type metadata accessor for BubbleView);
  v95 = v150;
  v96 = swift_allocObject();
  sub_1D26CE3F4(v83, v96 + v95, type metadata accessor for BubbleView);
  v153 = v147;
  v154 = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = sub_1D22EBCFC();
  v99 = v129;
  v100 = v132;
  v101 = v148;
  sub_1D2876F48();

  (*(v131 + 8))(v101, v100);
  v153 = v100;
  v154 = &type metadata for CreationViewStyle;
  v155 = OpaqueTypeConformance2;
  v156 = v98;
  swift_getOpaqueTypeConformance2();
  v102 = v130;
  v103 = v134;
  sub_1D245980C();
  v104 = *(v133 + 8);
  v104(v99, v103);
  sub_1D245980C();
  return (v104)(v102, v103);
}

uint64_t sub_1D26BD9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = type metadata accessor for BubbleView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC70, &qword_1D289D438);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC68, &qword_1D289D430);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  sub_1D26BDCAC(v8);
  sub_1D26CE38C(a1, v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BubbleView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1D26CE3F4(v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BubbleView);
  v18 = sub_1D26CB56C();
  sub_1D2876908();

  sub_1D22BD238(v8, &qword_1EC6DFC70, &qword_1D289D438);
  v21[2] = v6;
  v21[3] = v18;
  swift_getOpaqueTypeConformance2();
  sub_1D245980C();
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_1D245980C();
  return (v19)(v15, v9);
}

uint64_t sub_1D26BDCAC@<X0>(uint64_t a1@<X8>)
{
  v425 = a1;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEC8, &qword_1D289D670);
  MEMORY[0x1EEE9AC00](v387);
  v388 = &v324 - v1;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE40, &unk_1D289D608);
  MEMORY[0x1EEE9AC00](v424);
  v389 = &v324 - v2;
  v3 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v358 = &v324 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = type metadata accessor for PhotosPersonAsset(0);
  MEMORY[0x1EEE9AC00](v405);
  v404 = &v324 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = type metadata accessor for CharacterAsset(0);
  MEMORY[0x1EEE9AC00](v403);
  v408 = &v324 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v407 = sub_1D2872008();
  v402 = *(v407 - 8);
  MEMORY[0x1EEE9AC00](v407);
  v406 = &v324 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFED0, &qword_1D289D678);
  MEMORY[0x1EEE9AC00](v410);
  v393 = &v324 - v8;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFED8, &qword_1D289D680);
  MEMORY[0x1EEE9AC00](v379);
  v380 = &v324 - v9;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE20, &qword_1D289D5F0);
  MEMORY[0x1EEE9AC00](v399);
  v381 = &v324 - v10;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE18, &qword_1D289D5E8);
  MEMORY[0x1EEE9AC00](v415);
  v409 = &v324 - v11;
  v12 = type metadata accessor for PlaygroundImage(0);
  v13 = *(v12 - 8);
  v413 = v12;
  v414 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v357 = &v324 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v329 = &v324 - v16;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEE0, &qword_1D289D688);
  MEMORY[0x1EEE9AC00](v362);
  v365 = &v324 - v17;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEE8, &qword_1D289D690);
  MEMORY[0x1EEE9AC00](v350);
  v351 = &v324 - v18;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE30, &qword_1D289D600);
  MEMORY[0x1EEE9AC00](v363);
  v352 = &v324 - v19;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE28, &qword_1D289D5F8);
  MEMORY[0x1EEE9AC00](v378);
  v364 = &v324 - v20;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEF0, &qword_1D289D698);
  MEMORY[0x1EEE9AC00](v383);
  v385 = &v324 - v21;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDC8, &qword_1D289D590);
  MEMORY[0x1EEE9AC00](v384);
  v366 = &v324 - v22;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDC0, &qword_1D289D588);
  MEMORY[0x1EEE9AC00](v398);
  v372 = &v324 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v337 = &v324 - v25;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEF8, &qword_1D289D6A0);
  MEMORY[0x1EEE9AC00](v360);
  v361 = &v324 - v26;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD50, &qword_1D289D510);
  MEMORY[0x1EEE9AC00](v370);
  v353 = &v324 - v27;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF00, &qword_1D289D6A8);
  v345 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341);
  v325 = &v324 - v28;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF08, &qword_1D289D6B0);
  MEMORY[0x1EEE9AC00](v367);
  v369 = &v324 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF10, &qword_1D289D6B8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v336 = &v324 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v349 = &v324 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v330 = &v324 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD58, &qword_1D289D518);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v335 = &v324 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v346 = &v324 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v333 = &v324 - v41;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD48, &qword_1D289D508);
  MEMORY[0x1EEE9AC00](v368);
  v347 = (&v324 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43);
  v348 = (&v324 - v44);
  v344 = sub_1D2875628();
  v343 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v342 = &v324 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD40, &qword_1D289D500);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v327 = &v324 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v339 = &v324 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v334 = &v324 - v51;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD38, &qword_1D289D4F8);
  MEMORY[0x1EEE9AC00](v382);
  v326 = &v324 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v328 = &v324 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v338 = &v324 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v340 = &v324 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v331 = &v324 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v332 = &v324 - v62;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD30, &qword_1D289D4F0);
  MEMORY[0x1EEE9AC00](v375);
  v359 = &v324 - v63;
  v371 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v371);
  v377 = &v324 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v386 = (&v324 - v66);
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF18, &qword_1D289D6C0);
  MEMORY[0x1EEE9AC00](v373);
  v374 = &v324 - v67;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD28, &qword_1D289D4E8);
  MEMORY[0x1EEE9AC00](v396);
  v376 = &v324 - v68;
  v69 = type metadata accessor for SketchConditioningImage(0);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v356 = &v324 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SceneConditioningImage(0);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v355 = &v324 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF20, &qword_1D289D6C8);
  MEMORY[0x1EEE9AC00](v417);
  v419 = &v324 - v73;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF28, &qword_1D289D6D0);
  MEMORY[0x1EEE9AC00](v394);
  v395 = &v324 - v74;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF30, &unk_1D289D6D8);
  MEMORY[0x1EEE9AC00](v390);
  v391 = &v324 - v75;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC90, &qword_1D289D450);
  MEMORY[0x1EEE9AC00](v416);
  v392 = &v324 - v76;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC88, &qword_1D289D448);
  MEMORY[0x1EEE9AC00](v418);
  v397 = &v324 - v77;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC80, &qword_1D289D440);
  MEMORY[0x1EEE9AC00](v421);
  v420 = &v324 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v401 = &v324 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v400 = &v324 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v324 - v84;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v324 - v87;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v324 - v90;
  MEMORY[0x1EEE9AC00](v92);
  v411 = &v324 - v93;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC98, &qword_1D289D458);
  MEMORY[0x1EEE9AC00](v426);
  v95 = &v324 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96);
  v412 = &v324 - v97;
  v98 = type metadata accessor for PersonConditioningImage(0);
  MEMORY[0x1EEE9AC00](v98);
  v354 = &v324 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v324 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v103 - 8);
  v105 = &v324 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC70, &qword_1D289D438);
  MEMORY[0x1EEE9AC00](v423);
  v422 = &v324 - v106;
  v107 = type metadata accessor for BubbleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  sub_1D2874338();
  sub_1D26CE3F4(v105, v102, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v388 = v107;
    v387 = v88;
    v119 = v401;
    v120 = v400;
    v389 = v91;
    v121 = v403;
    v122 = v405;
    v123 = v404;
    v124 = v409;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_1D26CE3F4(v102, v404, type metadata accessor for PhotosPersonAsset);
          v177 = *(v122 + 20);
          v178 = type metadata accessor for PhotosPersonImage(0);
          v179 = v411;
          sub_1D26CE38C(v123 + v177 + *(v178 + 24), v411, type metadata accessor for PlaygroundImage);
          (*(v414 + 56))(v179, 0, 1, v413);
          v180 = v412;
          sub_1D26C3BF4(v179, 0, 1, v412);
          sub_1D22BD238(v179, &unk_1EC6DE5A0, &unk_1D287F0E0);
          sub_1D22BD1D0(v180, v391, &qword_1EC6DFC98, &qword_1D289D458);
          swift_storeEnumTagMultiPayload();
          sub_1D26CB73C();
          v181 = v392;
          sub_1D2875AF8();
          sub_1D22BD1D0(v181, v393, &qword_1EC6DFC90, &qword_1D289D450);
          swift_storeEnumTagMultiPayload();
          sub_1D26CD008();
          sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
          sub_1D2875AF8();
          sub_1D22BD238(v181, &qword_1EC6DFC90, &qword_1D289D450);
          sub_1D22BD1D0(v124, v419, &qword_1EC6DFE18, &qword_1D289D5E8);
          swift_storeEnumTagMultiPayload();
          sub_1D26CB684();
          sub_1D26CCF50();
          v182 = v420;
          sub_1D2875AF8();
          sub_1D22BD238(v124, &qword_1EC6DFE18, &qword_1D289D5E8);
          v183 = sub_1D26CB5F8();
          v184 = sub_1D26CD204();
          v117 = v422;
          sub_1D24CB6D4(v182, v421, v424, v183, v184);
          sub_1D22BD238(v182, &qword_1EC6DFC80, &qword_1D289D440);
          sub_1D22BD238(v180, &qword_1EC6DFC98, &qword_1D289D458);
          v185 = type metadata accessor for PhotosPersonAsset;
LABEL_36:
          v168 = v185;
          v169 = v123;
          goto LABEL_37;
        }

        v125 = v408;
        sub_1D26CE3F4(v102, v408, type metadata accessor for CharacterAsset);
        if (*(v125 + *(v121 + 28)) == 1)
        {
          sub_1D26CE38C(v125, v119, type metadata accessor for PlaygroundImage);
          (*(v414 + 56))(v119, 0, 1, v413);
        }

        else
        {
          sub_1D22BD1D0(v125 + *(v121 + 20), v119, &unk_1EC6DE5A0, &unk_1D287F0E0);
        }

        v230 = v95;
        sub_1D22EC9BC(v119, v120, &unk_1EC6DE5A0, &unk_1D287F0E0);
        sub_1D26C3BF4(v120, 0, 1, v95);
        sub_1D22BD238(v120, &unk_1EC6DE5A0, &unk_1D287F0E0);
        sub_1D22BD1D0(v95, v391, &qword_1EC6DFC98, &qword_1D289D458);
        swift_storeEnumTagMultiPayload();
        sub_1D26CB73C();
        v231 = v392;
        sub_1D2875AF8();
        sub_1D22BD1D0(v231, v393, &qword_1EC6DFC90, &qword_1D289D450);
        swift_storeEnumTagMultiPayload();
        sub_1D26CD008();
        sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
        sub_1D2875AF8();
        sub_1D22BD238(v231, &qword_1EC6DFC90, &qword_1D289D450);
        sub_1D22BD1D0(v124, v419, &qword_1EC6DFE18, &qword_1D289D5E8);
        swift_storeEnumTagMultiPayload();
        sub_1D26CB684();
        sub_1D26CCF50();
        v232 = v420;
        sub_1D2875AF8();
        sub_1D22BD238(v124, &qword_1EC6DFE18, &qword_1D289D5E8);
        v233 = sub_1D26CB5F8();
        v234 = sub_1D26CD204();
        v117 = v422;
        sub_1D24CB6D4(v232, v421, v424, v233, v234);
        sub_1D22BD238(v232, &qword_1EC6DFC80, &qword_1D289D440);
        sub_1D22BD238(v230, &qword_1EC6DFC98, &qword_1D289D458);
        v235 = type metadata accessor for CharacterAsset;
        v236 = &v432;
LABEL_59:
        sub_1D26CEFC8(*(v236 - 32), v235);
        goto LABEL_38;
      }

      v140 = v386;
      sub_1D26CE3F4(v102, v386, type metadata accessor for CuratedPrompt);
      v141 = v140[6];
      v142 = v371;
      if ((*(v141 + 40) != 0x6973736572707845 || *(v141 + 48) != 0xEB00000000736E6FLL) && (sub_1D2879618() & 1) == 0 || (v143 = (v140 + v142[12]), (v144 = v143[1]) == 0))
      {
        v223 = sub_1D26C4724(v140);
        v224 = v359;
        if (v223)
        {
          v225 = v366;
          sub_1D26C48E0(v140[2], v140[3], v366);
          v226 = &qword_1EC6DFDC8;
          v227 = &qword_1D289D590;
          sub_1D22BD1D0(v225, v385, &qword_1EC6DFDC8, &qword_1D289D590);
          swift_storeEnumTagMultiPayload();
          sub_1D26CC95C();
          sub_1D26CB73C();
          v228 = v337;
          sub_1D2875AF8();
          v229 = v225;
        }

        else
        {
          v274 = v140 + v142[8];
          v275 = (*(v140 + v142[25]) & 1) == 0;
          v276 = v412;
          sub_1D26C3BF4(v274, 0, v275, v412);
          v226 = &qword_1EC6DFC98;
          v227 = &qword_1D289D458;
          sub_1D22BD1D0(v276, v385, &qword_1EC6DFC98, &qword_1D289D458);
          swift_storeEnumTagMultiPayload();
          sub_1D26CC95C();
          sub_1D26CB73C();
          v228 = v337;
          sub_1D2875AF8();
          v229 = v276;
        }

        sub_1D22BD238(v229, v226, v227);
        v277 = v397;
        v278 = v376;
        sub_1D22BD1D0(v228, v361, &qword_1EC6DFDC0, &qword_1D289D588);
        swift_storeEnumTagMultiPayload();
        sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &qword_1D289D4F8, sub_1D26CC0E0);
        sub_1D26CC8D0();
        sub_1D2875AF8();
        sub_1D22BD238(v228, &qword_1EC6DFDC0, &qword_1D289D588);
        goto LABEL_67;
      }

      v145 = *v143;
      v146 = v142[8];
      v147 = v427;
      v148 = *(v427 + 16);
      if (*(v427 + 24) == 1)
      {
        v149 = v353;
        v150 = v388;
        if ((v148 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D2870F78();
        sub_1D2878A28();
        v279 = sub_1D28762E8();
        sub_1D2873BE8();

        v280 = v342;
        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D2273818(v148, 0);
        (*(v343 + 8))(v280, v344);
        v149 = v353;
        v150 = v388;
        if ((v429 & 1) == 0)
        {
LABEL_22:
          v151 = sub_1D26BBCD4();
          v152 = sub_1D2875918();
          v153 = v348;
          *v348 = v152;
          v153[1] = v151;
          *(v153 + 16) = 0;
          v154 = 1;
          sub_1D26C8580(v145, v144, v386 + v146, 1, v333);
          v155 = *(v147 + *(v150 + 68));
          v156 = v346;
          v157 = v341;
          v158 = v345;
          if ((v155 & 1) == 0 && (*(v414 + 48))(v386 + v146, 1, v413) != 1)
          {
            v159 = *v147;
            if (*(v147 + 8) == 1)
            {
              v160 = *v147;
            }

            else
            {
              sub_1D2870F78();
              sub_1D2878A28();
              v308 = sub_1D28762E8();
              v156 = v346;
              sub_1D2873BE8();

              v158 = v345;
              v309 = v342;
              sub_1D2875618();
              swift_getAtKeyPath();
              sub_1D2273818(v159, 0);
              (*(v343 + 8))(v309, v344);
              v160 = v428;
            }

            v310 = v330;
            v311 = v325;
            if (v160 == 5 || v160 == 6)
            {
              v154 = 1;
            }

            else
            {
              sub_1D26C7A04(v325);
              sub_1D22EC9BC(v311, v310, &qword_1EC6DFF00, &qword_1D289D6A8);
              v154 = 0;
            }
          }

          v312 = v330;
          (*(v158 + 56))(v330, v154, 1, v157);
          v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF38, &qword_1D289D6E8);
          v314 = v348 + *(v313 + 44);
          v315 = v333;
          sub_1D22BD1D0(v333, v156, &qword_1EC6DFD58, &qword_1D289D518);
          v316 = v349;
          sub_1D22BD1D0(v312, v349, &qword_1EC6DFF10, &qword_1D289D6B8);
          sub_1D22BD1D0(v156, v314, &qword_1EC6DFD58, &qword_1D289D518);
          v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF40, &qword_1D289D6F0);
          sub_1D22BD1D0(v316, v314 + *(v317 + 48), &qword_1EC6DFF10, &qword_1D289D6B8);
          sub_1D22BD238(v312, &qword_1EC6DFF10, &qword_1D289D6B8);
          sub_1D22BD238(v315, &qword_1EC6DFD58, &qword_1D289D518);
          sub_1D22BD238(v316, &qword_1EC6DFF10, &qword_1D289D6B8);
          sub_1D22BD238(v156, &qword_1EC6DFD58, &qword_1D289D518);
          v318 = v348;
          sub_1D22BD1D0(v348, v369, &qword_1EC6DFD48, &qword_1D289D508);
          swift_storeEnumTagMultiPayload();
          sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48, &qword_1D289D508, MEMORY[0x1E6981870]);
          sub_1D26CC198();
          v287 = v334;
          sub_1D2875AF8();
          sub_1D22BD238(v318, &qword_1EC6DFD48, &qword_1D289D508);
          goto LABEL_66;
        }
      }

      v281 = v386;
      sub_1D26C8580(v145, v144, v386 + v146, 1, v149);
      v282 = sub_1D2877838();
      v284 = v283;
      v285 = v149 + *(v370 + 36);
      sub_1D26C8E08(v147, v281 + v146, v285);
      v286 = (v285 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDB8, &qword_1D289D580) + 36));
      *v286 = v282;
      v286[1] = v284;
      sub_1D22BD1D0(v149, v369, &qword_1EC6DFD50, &qword_1D289D510);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48, &qword_1D289D508, MEMORY[0x1E6981870]);
      sub_1D26CC198();
      v287 = v334;
      sub_1D2875AF8();
      sub_1D22BD238(v149, &qword_1EC6DFD50, &qword_1D289D510);
LABEL_66:
      v319 = v331;
      sub_1D22EC9BC(v287, v331, &qword_1EC6DFD40, &qword_1D289D500);
      v320 = v332;
      sub_1D22EC9BC(v319, v332, &qword_1EC6DFD38, &qword_1D289D4F8);
      sub_1D22BD1D0(v320, v361, &qword_1EC6DFD38, &qword_1D289D4F8);
      swift_storeEnumTagMultiPayload();
      sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &qword_1D289D4F8, sub_1D26CC0E0);
      sub_1D26CC8D0();
      v224 = v359;
      sub_1D2875AF8();
      sub_1D22BD238(v320, &qword_1EC6DFD38, &qword_1D289D4F8);
      v277 = v397;
      v278 = v376;
LABEL_67:
      sub_1D22BD1D0(v224, v374, &qword_1EC6DFD30, &qword_1D289D4F0);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB73C();
      sub_1D26CBFAC();
      sub_1D2875AF8();
      sub_1D22BD1D0(v278, v395, &qword_1EC6DFD28, &qword_1D289D4E8);
      swift_storeEnumTagMultiPayload();
      sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
      sub_1D26CBF20();
      sub_1D2875AF8();
      sub_1D22BD238(v278, &qword_1EC6DFD28, &qword_1D289D4E8);
      sub_1D22BD1D0(v277, v419, &qword_1EC6DFC88, &qword_1D289D448);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB684();
      sub_1D26CCF50();
      v321 = v420;
      sub_1D2875AF8();
      sub_1D22BD238(v277, &qword_1EC6DFC88, &qword_1D289D448);
      v322 = sub_1D26CB5F8();
      v323 = sub_1D26CD204();
      v117 = v422;
      sub_1D24CB6D4(v321, v421, v424, v322, v323);
      sub_1D22BD238(v321, &qword_1EC6DFC80, &qword_1D289D440);
      sub_1D22BD238(v224, &qword_1EC6DFD30, &qword_1D289D4F0);
      sub_1D26CEFC8(v386, type metadata accessor for CuratedPrompt);
      goto LABEL_38;
    }

    if (!EnumCaseMultiPayload)
    {
      v132 = v409;
      v133 = v402;
      (*(v402 + 32))(v406, v102, v407);
      v134 = v411;
      sub_1D24DD48C(v411);
      v135 = v412;
      sub_1D26C3BF4(v134, 0, 1, v412);
      sub_1D22BD238(v134, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD1D0(v135, v380, &qword_1EC6DFC98, &qword_1D289D458);
      swift_storeEnumTagMultiPayload();
      sub_1D26CD094();
      sub_1D26CB73C();
      v136 = v381;
      sub_1D2875AF8();
      sub_1D22BD1D0(v136, v393, &qword_1EC6DFE20, &qword_1D289D5F0);
      swift_storeEnumTagMultiPayload();
      sub_1D26CD008();
      sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
      sub_1D2875AF8();
      sub_1D22BD238(v136, &qword_1EC6DFE20, &qword_1D289D5F0);
      sub_1D22BD1D0(v132, v419, &qword_1EC6DFE18, &qword_1D289D5E8);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB684();
      sub_1D26CCF50();
      v137 = v420;
      sub_1D2875AF8();
      sub_1D22BD238(v132, &qword_1EC6DFE18, &qword_1D289D5E8);
      v138 = sub_1D26CB5F8();
      v139 = sub_1D26CD204();
      v117 = v422;
      sub_1D24CB6D4(v137, v421, v424, v138, v139);
      sub_1D22BD238(v137, &qword_1EC6DFC80, &qword_1D289D440);
      sub_1D22BD238(v135, &qword_1EC6DFC98, &qword_1D289D458);
      (*(v133 + 8))(v406, v407);
      goto LABEL_38;
    }

    v186 = v377;
    sub_1D26CE3F4(v102, v377, type metadata accessor for CuratedPrompt);
    v187 = v371;
    v188 = (v186 + *(v371 + 48));
    v189 = v188[1];
    if (v189)
    {
      v190 = *v188;
      v191 = v389;
      (*(v414 + 56))(v389, 1, 1, v413);
      v192 = *(v186 + *(v187 + 100)) ^ 1;
      v193 = *(v427 + 16);
      if (*(v427 + 24) == 1)
      {
        v194 = v370;
        v195 = v369;
        if ((v193 & 1) == 0)
        {
LABEL_32:
          v196 = sub_1D26BBCD4();
          v197 = sub_1D2875918();
          v198 = v347;
          *v347 = v197;
          *(v198 + 8) = v196;
          *(v198 + 16) = 0;
          v199 = v198 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF38, &qword_1D289D6E8) + 44);
          v200 = v346;
          sub_1D26C8580(v190, v189, v389, v192 & 1, v346);
          v201 = v349;
          (*(v345 + 56))(v349, 1, 1, v341);
          v202 = v335;
          sub_1D22BD1D0(v200, v335, &qword_1EC6DFD58, &qword_1D289D518);
          v203 = v195;
          v204 = v336;
          sub_1D22BD1D0(v201, v336, &qword_1EC6DFF10, &qword_1D289D6B8);
          sub_1D22BD1D0(v202, v199, &qword_1EC6DFD58, &qword_1D289D518);
          v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF40, &qword_1D289D6F0);
          sub_1D22BD1D0(v204, v199 + *(v205 + 48), &qword_1EC6DFF10, &qword_1D289D6B8);
          sub_1D22BD238(v201, &qword_1EC6DFF10, &qword_1D289D6B8);
          sub_1D22BD238(v200, &qword_1EC6DFD58, &qword_1D289D518);
          sub_1D22BD238(v204, &qword_1EC6DFF10, &qword_1D289D6B8);
          sub_1D22BD238(v202, &qword_1EC6DFD58, &qword_1D289D518);
          v206 = &qword_1EC6DFD48;
          v207 = &qword_1D289D508;
          sub_1D22BD1D0(v198, v203, &qword_1EC6DFD48, &qword_1D289D508);
          swift_storeEnumTagMultiPayload();
          sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48, &qword_1D289D508, MEMORY[0x1E6981870]);
          sub_1D26CC198();
          v208 = v339;
          sub_1D2875AF8();
          v209 = v198;
          v191 = v389;
LABEL_49:
          sub_1D22BD238(v209, v206, v207);
          v266 = v352;
          v267 = v351;
          v268 = v340;
          v269 = v338;
          sub_1D22EC9BC(v208, v338, &qword_1EC6DFD40, &qword_1D289D500);
          sub_1D22BD238(v191, &unk_1EC6DE5A0, &unk_1D287F0E0);
          sub_1D22EC9BC(v269, v268, &qword_1EC6DFD38, &qword_1D289D4F8);
          sub_1D22BD1D0(v268, v267, &qword_1EC6DFD38, &qword_1D289D4F8);
          swift_storeEnumTagMultiPayload();
          sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &qword_1D289D4F8, sub_1D26CC0E0);
          sub_1D26CB73C();
          sub_1D2875AF8();
          sub_1D22BD1D0(v266, v365, &qword_1EC6DFE30, &qword_1D289D600);
          swift_storeEnumTagMultiPayload();
          sub_1D26CD14C();
          v270 = v364;
          sub_1D2875AF8();
          sub_1D22BD238(v266, &qword_1EC6DFE30, &qword_1D289D600);
          sub_1D22BD238(v268, &qword_1EC6DFD38, &qword_1D289D4F8);
          v271 = v381;
          v272 = v380;
          v273 = v393;
LABEL_58:
          sub_1D22BD1D0(v270, v272, &qword_1EC6DFE28, &qword_1D289D5F8);
          swift_storeEnumTagMultiPayload();
          sub_1D26CD094();
          sub_1D26CB73C();
          sub_1D2875AF8();
          sub_1D22BD1D0(v271, v273, &qword_1EC6DFE20, &qword_1D289D5F0);
          swift_storeEnumTagMultiPayload();
          sub_1D26CD008();
          sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
          v304 = v409;
          sub_1D2875AF8();
          sub_1D22BD238(v271, &qword_1EC6DFE20, &qword_1D289D5F0);
          sub_1D22BD1D0(v304, v419, &qword_1EC6DFE18, &qword_1D289D5E8);
          swift_storeEnumTagMultiPayload();
          sub_1D26CB684();
          sub_1D26CCF50();
          v305 = v420;
          sub_1D2875AF8();
          sub_1D22BD238(v304, &qword_1EC6DFE18, &qword_1D289D5E8);
          v306 = sub_1D26CB5F8();
          v307 = sub_1D26CD204();
          v117 = v422;
          sub_1D24CB6D4(v305, v421, v424, v306, v307);
          sub_1D22BD238(v305, &qword_1EC6DFC80, &qword_1D289D440);
          sub_1D22BD238(v270, &qword_1EC6DFE28, &qword_1D289D5F8);
          v235 = type metadata accessor for CuratedPrompt;
          v236 = &v409;
          goto LABEL_59;
        }
      }

      else
      {
        sub_1D2870F78();
        sub_1D2878A28();
        v257 = sub_1D28762E8();
        sub_1D2873BE8();

        v258 = v342;
        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D2273818(v193, 0);
        (*(v343 + 8))(v258, v344);
        v194 = v370;
        v195 = v369;
        if ((v430 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v259 = v353;
      v260 = v427;
      sub_1D26C8580(v190, v189, v191, v192 & 1, v353);
      v261 = sub_1D2877838();
      v263 = v262;
      v264 = v259 + *(v194 + 36);
      sub_1D26C8E08(v260, v191, v264);
      v265 = (v264 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDB8, &qword_1D289D580) + 36));
      *v265 = v261;
      v265[1] = v263;
      v206 = &qword_1EC6DFD50;
      v207 = &qword_1D289D510;
      sub_1D22BD1D0(v259, v195, &qword_1EC6DFD50, &qword_1D289D510);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48, &qword_1D289D508, MEMORY[0x1E6981870]);
      sub_1D26CC198();
      v208 = v339;
      sub_1D2875AF8();
      v209 = v259;
      goto LABEL_49;
    }

    v237 = v387;
    sub_1D22BD1D0(v186 + *(v371 + 36), v387, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v239 = v413;
    v238 = v414;
    v240 = (*(v414 + 48))(v237, 1, v413);
    v241 = v365;
    v242 = v347;
    if (v240 != 1)
    {
      v288 = v237;
      v289 = v329;
      sub_1D26CE3F4(v288, v329, type metadata accessor for PlaygroundImage);
      v290 = v411;
      sub_1D26CE38C(v289, v411, type metadata accessor for PlaygroundImage);
      (*(v238 + 56))(v290, 0, 1, v239);
      v291 = v412;
      sub_1D26C3BF4(v290, 1, (*(v186 + *(v187 + 100)) & 1) == 0, v412);
      sub_1D22BD238(v290, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD1D0(v291, v351, &qword_1EC6DFC98, &qword_1D289D458);
      swift_storeEnumTagMultiPayload();
      sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &qword_1D289D4F8, sub_1D26CC0E0);
      sub_1D26CB73C();
      v292 = v352;
      sub_1D2875AF8();
      sub_1D22BD1D0(v292, v241, &qword_1EC6DFE30, &qword_1D289D600);
      swift_storeEnumTagMultiPayload();
      sub_1D26CD14C();
      v270 = v364;
      sub_1D2875AF8();
      sub_1D22BD238(v292, &qword_1EC6DFE30, &qword_1D289D600);
      sub_1D22BD238(v291, &qword_1EC6DFC98, &qword_1D289D458);
      sub_1D26CEFC8(v289, type metadata accessor for PlaygroundImage);
      v273 = v393;
      v272 = v380;
      v271 = v381;
      goto LABEL_58;
    }

    sub_1D22BD238(v237, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v243 = v85;
    (*(v238 + 56))(v85, 1, 1, v239);
    v244 = *(v186 + *(v187 + 100)) ^ 1;
    v245 = *(v427 + 16);
    if (*(v427 + 24) == 1)
    {
      v246 = v349;
      v247 = v336;
      v248 = v335;
      if ((v245 & 1) == 0)
      {
LABEL_46:
        v249 = sub_1D26BBCD4();
        *v242 = sub_1D2875918();
        *(v242 + 8) = v249;
        *(v242 + 16) = 0;
        v250 = v242 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF38, &qword_1D289D6E8) + 44);
        v251 = v243;
        v324 = v243;
        v252 = v346;
        sub_1D26C8580(45, 0xE100000000000000, v251, v244 & 1, v346);
        (*(v345 + 56))(v246, 1, 1, v341);
        sub_1D22BD1D0(v252, v248, &qword_1EC6DFD58, &qword_1D289D518);
        sub_1D22BD1D0(v246, v247, &qword_1EC6DFF10, &qword_1D289D6B8);
        sub_1D22BD1D0(v248, v250, &qword_1EC6DFD58, &qword_1D289D518);
        v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF40, &qword_1D289D6F0);
        sub_1D22BD1D0(v247, v250 + *(v253 + 48), &qword_1EC6DFF10, &qword_1D289D6B8);
        sub_1D22BD238(v246, &qword_1EC6DFF10, &qword_1D289D6B8);
        sub_1D22BD238(v252, &qword_1EC6DFD58, &qword_1D289D518);
        sub_1D22BD238(v247, &qword_1EC6DFF10, &qword_1D289D6B8);
        sub_1D22BD238(v248, &qword_1EC6DFD58, &qword_1D289D518);
        sub_1D22BD1D0(v242, v369, &qword_1EC6DFD48, &qword_1D289D508);
        swift_storeEnumTagMultiPayload();
        sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48, &qword_1D289D508, MEMORY[0x1E6981870]);
        sub_1D26CC198();
        v254 = v327;
        sub_1D2875AF8();
        v255 = v324;
        sub_1D22BD238(v242, &qword_1EC6DFD48, &qword_1D289D508);
        v256 = v328;
LABEL_57:
        v303 = v326;
        sub_1D22EC9BC(v254, v326, &qword_1EC6DFD40, &qword_1D289D500);
        sub_1D22BD238(v255, &unk_1EC6DE5A0, &unk_1D287F0E0);
        sub_1D22EC9BC(v303, v256, &qword_1EC6DFD38, &qword_1D289D4F8);
        sub_1D22BD1D0(v256, v365, &qword_1EC6DFD38, &qword_1D289D4F8);
        swift_storeEnumTagMultiPayload();
        sub_1D26CD14C();
        sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &qword_1D289D4F8, sub_1D26CC0E0);
        v270 = v364;
        sub_1D2875AF8();
        sub_1D22BD238(v256, &qword_1EC6DFD38, &qword_1D289D4F8);
        v272 = v380;
        v273 = v393;
        v271 = v381;
        goto LABEL_58;
      }
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v293 = sub_1D28762E8();
      sub_1D2873BE8();

      v294 = v342;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v245, 0);
      (*(v343 + 8))(v294, v344);
      v246 = v349;
      v247 = v336;
      v248 = v335;
      if ((v431 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v295 = v244 & 1;
    v296 = v353;
    v297 = v427;
    sub_1D26C8580(45, 0xE100000000000000, v243, v295, v353);
    v298 = sub_1D2877838();
    v300 = v299;
    v301 = v296 + *(v370 + 36);
    sub_1D26C8E08(v297, v243, v301);
    v302 = (v301 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDB8, &qword_1D289D580) + 36));
    *v302 = v298;
    v302[1] = v300;
    sub_1D22BD1D0(v296, v369, &qword_1EC6DFD50, &qword_1D289D510);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48, &qword_1D289D508, MEMORY[0x1E6981870]);
    sub_1D26CC198();
    v254 = v327;
    sub_1D2875AF8();
    sub_1D22BD238(v296, &qword_1EC6DFD50, &qword_1D289D510);
    v256 = v328;
    v255 = v243;
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v161 = v102;
      v162 = v358;
      sub_1D26CE3F4(v161, v358, type metadata accessor for Prompt);
      v163 = v366;
      sub_1D26C48E0(*(v162 + 8), *(v162 + 16), v366);
      sub_1D22BD1D0(v163, v385, &qword_1EC6DFDC8, &qword_1D289D590);
      swift_storeEnumTagMultiPayload();
      sub_1D26CC95C();
      sub_1D26CB73C();
      v164 = v372;
      sub_1D2875AF8();
      sub_1D22BD1D0(v164, v388, &qword_1EC6DFDC0, &qword_1D289D588);
      swift_storeEnumTagMultiPayload();
      sub_1D26CC8D0();
      v165 = v389;
      sub_1D2875AF8();
      sub_1D22BD238(v164, &qword_1EC6DFDC0, &qword_1D289D588);
      v166 = sub_1D26CB5F8();
      v167 = sub_1D26CD204();
      v117 = v422;
      sub_1D24CB7CC(v165, v421, v424, v166, v167);
      sub_1D22BD238(v165, &qword_1EC6DFE40, &unk_1D289D608);
      sub_1D22BD238(v163, &qword_1EC6DFDC8, &qword_1D289D590);
      v168 = type metadata accessor for Prompt;
      v169 = v162;
LABEL_37:
      sub_1D26CEFC8(v169, v168);
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v109 = v354;
      sub_1D26CE3F4(v102, v354, type metadata accessor for PersonConditioningImage);
      v110 = v411;
      sub_1D26CE38C(v109 + *(v98 + 20), v411, type metadata accessor for PlaygroundImage);
      (*(v414 + 56))(v110, 0, 1, v413);
      v111 = v412;
      sub_1D26C3BF4(v110, 0, 1, v412);
      sub_1D22BD238(v110, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD1D0(v111, v391, &qword_1EC6DFC98, &qword_1D289D458);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB73C();
      v112 = v392;
      sub_1D2875AF8();
      sub_1D22BD1D0(v112, v395, &qword_1EC6DFC90, &qword_1D289D450);
      swift_storeEnumTagMultiPayload();
      sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
      sub_1D26CBF20();
      v113 = v397;
      sub_1D2875AF8();
      sub_1D22BD238(v112, &qword_1EC6DFC90, &qword_1D289D450);
      sub_1D22BD1D0(v113, v419, &qword_1EC6DFC88, &qword_1D289D448);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB684();
      sub_1D26CCF50();
      v114 = v420;
      sub_1D2875AF8();
      sub_1D22BD238(v113, &qword_1EC6DFC88, &qword_1D289D448);
      v115 = sub_1D26CB5F8();
      v116 = sub_1D26CD204();
      v117 = v422;
      sub_1D24CB6D4(v114, v421, v424, v115, v116);
      sub_1D22BD238(v114, &qword_1EC6DFC80, &qword_1D289D440);
      sub_1D22BD238(v111, &qword_1EC6DFC98, &qword_1D289D458);
      v118 = type metadata accessor for PersonConditioningImage;
    }

    else
    {
      v109 = v355;
      sub_1D26CE3F4(v102, v355, type metadata accessor for SceneConditioningImage);
      v210 = v411;
      sub_1D26CE38C(v109, v411, type metadata accessor for PlaygroundImage);
      (*(v414 + 56))(v210, 0, 1, v413);
      v211 = v412;
      sub_1D26C3BF4(v210, 0, 1, v412);
      sub_1D22BD238(v210, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD1D0(v211, v391, &qword_1EC6DFC98, &qword_1D289D458);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB73C();
      v212 = v392;
      sub_1D2875AF8();
      sub_1D22BD1D0(v212, v395, &qword_1EC6DFC90, &qword_1D289D450);
      swift_storeEnumTagMultiPayload();
      sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
      sub_1D26CBF20();
      v213 = v397;
      sub_1D2875AF8();
      sub_1D22BD238(v212, &qword_1EC6DFC90, &qword_1D289D450);
      sub_1D22BD1D0(v213, v419, &qword_1EC6DFC88, &qword_1D289D448);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB684();
      sub_1D26CCF50();
      v214 = v420;
      sub_1D2875AF8();
      sub_1D22BD238(v213, &qword_1EC6DFC88, &qword_1D289D448);
      v215 = sub_1D26CB5F8();
      v216 = sub_1D26CD204();
      v117 = v422;
      sub_1D24CB6D4(v214, v421, v424, v215, v216);
      sub_1D22BD238(v214, &qword_1EC6DFC80, &qword_1D289D440);
      sub_1D22BD238(v211, &qword_1EC6DFC98, &qword_1D289D458);
      v118 = type metadata accessor for SceneConditioningImage;
    }

LABEL_34:
    v168 = v118;
    v169 = v109;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v109 = v356;
    sub_1D26CE3F4(v102, v356, type metadata accessor for SketchConditioningImage);
    v170 = v411;
    sub_1D26CE38C(v109, v411, type metadata accessor for PlaygroundImage);
    (*(v414 + 56))(v170, 0, 1, v413);
    v171 = v412;
    sub_1D26C3BF4(v170, 0, 1, v412);
    sub_1D22BD238(v170, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD1D0(v171, v374, &qword_1EC6DFC98, &qword_1D289D458);
    swift_storeEnumTagMultiPayload();
    sub_1D26CB73C();
    sub_1D26CBFAC();
    v172 = v376;
    sub_1D2875AF8();
    sub_1D22BD1D0(v172, v395, &qword_1EC6DFD28, &qword_1D289D4E8);
    swift_storeEnumTagMultiPayload();
    sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
    sub_1D26CBF20();
    v173 = v397;
    sub_1D2875AF8();
    sub_1D22BD238(v172, &qword_1EC6DFD28, &qword_1D289D4E8);
    sub_1D22BD1D0(v173, v419, &qword_1EC6DFC88, &qword_1D289D448);
    swift_storeEnumTagMultiPayload();
    sub_1D26CB684();
    sub_1D26CCF50();
    v174 = v420;
    sub_1D2875AF8();
    sub_1D22BD238(v173, &qword_1EC6DFC88, &qword_1D289D448);
    v175 = sub_1D26CB5F8();
    v176 = sub_1D26CD204();
    v117 = v422;
    sub_1D24CB6D4(v174, v421, v424, v175, v176);
    sub_1D22BD238(v174, &qword_1EC6DFC80, &qword_1D289D440);
    sub_1D22BD238(v171, &qword_1EC6DFC98, &qword_1D289D458);
    v118 = type metadata accessor for SketchConditioningImage;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 9)
  {
    v123 = v357;
    sub_1D26CE3F4(v102, v357, type metadata accessor for PlaygroundImage);
    v217 = v411;
    sub_1D26CE38C(v123, v411, type metadata accessor for PlaygroundImage);
    (*(v414 + 56))(v217, 0, 1, v413);
    v218 = v412;
    sub_1D26C3BF4(v217, 0, 1, v412);
    sub_1D22BD238(v217, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD1D0(v218, v388, &qword_1EC6DFC98, &qword_1D289D458);
    swift_storeEnumTagMultiPayload();
    sub_1D26CC8D0();
    sub_1D26CB73C();
    v219 = v389;
    sub_1D2875AF8();
    v220 = sub_1D26CB5F8();
    v221 = sub_1D26CD204();
    v117 = v422;
    sub_1D24CB7CC(v219, v421, v424, v220, v221);
    sub_1D22BD238(v219, &qword_1EC6DFE40, &unk_1D289D608);
    sub_1D22BD238(v218, &qword_1EC6DFC98, &qword_1D289D458);
    v185 = type metadata accessor for PlaygroundImage;
    goto LABEL_36;
  }

  sub_1D26CEFC8(v102, type metadata accessor for Bubble.BubbleType);
  v126 = v411;
  (*(v414 + 56))(v411, 1, 1, v413);
  v127 = v412;
  sub_1D26C3BF4(v126, 0, 1, v412);
  sub_1D22BD238(v126, &unk_1EC6DE5A0, &unk_1D287F0E0);
  sub_1D22BD1D0(v127, v385, &qword_1EC6DFC98, &qword_1D289D458);
  swift_storeEnumTagMultiPayload();
  sub_1D26CC95C();
  sub_1D26CB73C();
  v128 = v372;
  sub_1D2875AF8();
  sub_1D22BD1D0(v128, v388, &qword_1EC6DFDC0, &qword_1D289D588);
  swift_storeEnumTagMultiPayload();
  sub_1D26CC8D0();
  v129 = v389;
  sub_1D2875AF8();
  sub_1D22BD238(v128, &qword_1EC6DFDC0, &qword_1D289D588);
  v130 = sub_1D26CB5F8();
  v131 = sub_1D26CD204();
  v117 = v422;
  sub_1D24CB7CC(v129, v421, v424, v130, v131);
  sub_1D22BD238(v129, &qword_1EC6DFE40, &unk_1D289D608);
  sub_1D22BD238(v127, &qword_1EC6DFC98, &qword_1D289D458);
LABEL_38:
  sub_1D26CB56C();
  sub_1D245980C();
  return sub_1D22BD238(v117, &qword_1EC6DFC70, &qword_1D289D438);
}