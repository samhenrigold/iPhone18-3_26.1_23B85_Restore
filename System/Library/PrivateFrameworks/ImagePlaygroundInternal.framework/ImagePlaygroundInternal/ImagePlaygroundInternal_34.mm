void sub_1D2635284(char *a3@<X8>)
{
  v4 = sub_1D2879488();

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

uint64_t sub_1D26352E8(uint64_t a1)
{
  v2 = sub_1D2635D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2635324(uint64_t a1)
{
  v2 = sub_1D2635D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2635360@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D26359A8(a1, *a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

void *sub_1D26353C8(void *a1)
{
  v37 = sub_1D2873CB8();
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v34 - v5;
  v7 = sub_1D28716B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  v14 = sub_1D2878068();
  v15 = sub_1D2878068();
  v16 = [a1 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_1D2871638();

    v17 = *(v8 + 32);
    v35 = v7;
    v17(v13, v10, v7);
    v18 = sub_1D28716C8();
    v20 = v19;
    v34[1] = v2;
    sub_1D28713F8();
    swift_allocObject();
    sub_1D28713E8();
    v38 = a1;
    sub_1D2635F38();
    v21 = a1;
    sub_1D28713C8();

    sub_1D22D6D60(v18, v20);

    (*(v8 + 8))(v13, v35);
    return v39;
  }

  else
  {
    v22 = v2;
    sub_1D28725D8();
    v23 = a1;
    v24 = sub_1D2873CA8();
    v25 = sub_1D2878A18();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136446210;
      v28 = [v23 bundlePath];
      v29 = sub_1D28780A8();
      v31 = v30;

      v32 = sub_1D23D7C84(v29, v31, &v39);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1D226E000, v24, v25, "Cannot load styles with bundle %{public}s, missing file", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1D38A3520](v27, -1, -1);
      MEMORY[0x1D38A3520](v26, -1, -1);
    }

    (*(v22 + 8))(v6, v37);
    return 0;
  }
}

uint64_t sub_1D26359A8(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF590, &qword_1D2899FE8);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D2635D88();
  v9 = a2;
  sub_1D2879868();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF598, &qword_1D2899FF0);
    v34[0] = 0;
    *&v35 = v9;
    sub_1D2635DDC();
    result = sub_1D28794A8();
    v31 = v5;
    v11 = v44;
    v12 = *(v44 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = -v12;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v15 = *(v11 + 16);
        if (v13 > v15)
        {
          v15 = v13;
        }

        v16 = -v15;
        v17 = (v11 + 48 + 80 * v13++);
        while (1)
        {
          if (v16 + v13 == 1)
          {
            __break(1u);
            return result;
          }

          v18 = *(v17 - 2);
          v19 = *(v17 - 1);
          v20 = v17[1];
          v40 = *v17;
          v41 = v20;
          v21 = v17[3];
          v42 = v17[2];
          v43 = v21;
          if (v19)
          {
            break;
          }

          ++v13;
          v17 += 5;
          if (v14 + v13 == 1)
          {
            goto LABEL_21;
          }
        }

        *&v35 = v18;
        *(&v35 + 1) = v19;
        v36 = v40;
        v37 = v41;
        v38 = v42;
        v39 = v43;
        sub_1D25A3DB4(&v35, v34);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D27CD788(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v23 = *(v8 + 16);
        v22 = *(v8 + 24);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v30 = v23 + 1;
          result = sub_1D27CD788((v22 > 1), v23 + 1, 1, v8);
          v24 = v30;
          v8 = result;
        }

        *(v8 + 16) = v24;
        v25 = (v8 + 80 * v23);
        v25[2] = v35;
        v26 = v36;
        v27 = v37;
        v28 = v39;
        v25[5] = v38;
        v25[6] = v28;
        v25[3] = v26;
        v25[4] = v27;
      }

      while (v14 + v13);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

LABEL_21:

    LOBYTE(v35) = 1;
    v29 = v31;
    sub_1D28794E8();
    (*(v32 + 8))(v7, v29);
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  return v8;
}

unint64_t sub_1D2635D88()
{
  result = qword_1ED89F408[0];
  if (!qword_1ED89F408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89F408);
  }

  return result;
}

unint64_t sub_1D2635DDC()
{
  result = qword_1ED89CEF8;
  if (!qword_1ED89CEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF598, &qword_1D2899FF0);
    sub_1D2635E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CEF8);
  }

  return result;
}

unint64_t sub_1D2635E60()
{
  result = qword_1ED8A13D0;
  if (!qword_1ED8A13D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF5A0, &qword_1D2899FF8);
    sub_1D2635EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A13D0);
  }

  return result;
}

unint64_t sub_1D2635EE4()
{
  result = qword_1ED8A13D8;
  if (!qword_1ED8A13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A13D8);
  }

  return result;
}

unint64_t sub_1D2635F38()
{
  result = qword_1ED89F3F0;
  if (!qword_1ED89F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F3F0);
  }

  return result;
}

unint64_t sub_1D2635FB0()
{
  result = qword_1EC6DF5A8;
  if (!qword_1EC6DF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF5A8);
  }

  return result;
}

unint64_t sub_1D2636008()
{
  result = qword_1ED89F3F8;
  if (!qword_1ED89F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F3F8);
  }

  return result;
}

unint64_t sub_1D2636060()
{
  result = qword_1ED89F400;
  if (!qword_1ED89F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F400);
  }

  return result;
}

uint64_t sub_1D26360B4()
{
  v0 = sub_1D2874558();
  __swift_allocate_value_buffer(v0, qword_1EC6E3B10);
  __swift_project_value_buffer(v0, qword_1EC6E3B10);
  return sub_1D2874568();
}

uint64_t sub_1D2636124()
{
  v0 = sub_1D2874558();
  __swift_allocate_value_buffer(v0, qword_1ED8B0040);
  __swift_project_value_buffer(v0, qword_1ED8B0040);
  return sub_1D2874568();
}

uint64_t sub_1D2636188()
{
  v0 = sub_1D2874558();
  __swift_allocate_value_buffer(v0, qword_1ED8B0028);
  __swift_project_value_buffer(v0, qword_1ED8B0028);
  return sub_1D2874568();
}

id PhotoAssetItemProviderWriting.__allocating_init(asset:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D263623C(uint64_t a1, char a2)
{
  *(v3 + 320) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v4 = sub_1D2873CB8();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v5 = sub_1D2873AA8();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_1D2871388();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  v7 = sub_1D28716B8();
  *(v3 + 184) = v7;
  *(v3 + 192) = *(v7 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = sub_1D2878568();
  *(v3 + 216) = sub_1D2878558();
  v9 = sub_1D28784F8();
  *(v3 + 224) = v9;
  *(v3 + 232) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D26364D4, v9, v8);
}

uint64_t sub_1D26364D4(uint64_t a1)
{
  v1[30] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[31] = v3;
  v1[32] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2636560, v3, v2);
}

uint64_t sub_1D2636560(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 320);
  v4 = sub_1D2878558();
  *(v1 + 264) = v4;
  v5 = swift_task_alloc();
  *(v1 + 272) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = 0;
  *(v5 + 25) = v3;
  v6 = swift_task_alloc();
  *(v1 + 280) = v6;
  *v6 = v1;
  v6[1] = sub_1D263667C;
  v7 = *(v1 + 200);
  v8 = *(v1 + 184);
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v7, v4, v9, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D263A604, v5, v8);
}

uint64_t sub_1D263667C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_1D2636D0C;
  }

  else
  {

    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_1D26367A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D26367A0()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1D2636804, v1, v2);
}

uint64_t sub_1D2636804()
{
  v1 = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6DF5D0, &qword_1D289A248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  v3 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v4 = v3;
  sub_1D2402F44(inited);
  swift_setDeallocating();
  sub_1D263A5A4(inited + 32, type metadata accessor for URLResourceKey);
  sub_1D2871568();
  if (v1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    sub_1D28724A8();
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "Can't generate shareableImageData for photo asset", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v12 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_5;
  }

  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];

  sub_1D2871378();
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_1D22BD238(v0[16], &qword_1EC6DAE70, &qword_1D2881A90);
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    if (sub_1D2873A98())
    {

      v12 = sub_1D28716C8();
      v13 = v19;
      v21 = v0[24];
      v20 = v0[25];
      v23 = v0[22];
      v22 = v0[23];
      v24 = v0[20];
      v25 = v0[21];
      (*(v0[18] + 8))(v0[19], v0[17]);
      (*(v25 + 8))(v23, v24);
      (*(v21 + 8))(v20, v22);
LABEL_5:

      v14 = v0[1];

      return v14(v12, v13);
    }

    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  v26 = v0[9];
  v27 = swift_task_alloc();
  *v27 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  v27[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  v0[7] = v26;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for _PhotoAsset<A>);
  sub_1D28719E8();

  v28 = (v26 + *(*v26 + 216));
  v30 = *v28;
  v29 = v28[1];
  v0[37] = v29;
  sub_1D2870F68();
  v31 = swift_task_alloc();
  v0[38] = v31;
  *v31 = v0;
  v31[1] = sub_1D2636EFC;
  v32 = v0[25];
  v33 = v0[11];

  return sub_1D26398D4(v33, v32, v30, v29);
}

uint64_t sub_1D2636D0C()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1D2636D84, v1, v2);
}

uint64_t sub_1D2636D84()
{

  v1 = v0[36];
  sub_1D28724A8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A18();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Can't generate shareableImageData for photo asset", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9(0, 0xF000000000000000);
}

uint64_t sub_1D2636EFC()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1D26372F0;
  }

  else
  {
    v5 = sub_1D2637050;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2637050()
{
  v1 = v0[10];
  v2 = v0[11];

  sub_1D22BD1D0(v2, v1, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v3 = type metadata accessor for PlaygroundImage(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  if (v4 == 1)
  {
    v11 = v0[10];
    sub_1D22BD238(v0[11], &unk_1EC6DE5A0, &unk_1D287F0E0);
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    sub_1D22BD238(v11, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v23 = v0[25];
    v14 = v0[17];
    v15 = v0[18];
    v16 = v0[15];
    v17 = v0[10];
    v22 = v0[11];
    (*(v15 + 16))(v16, v0[8], v14);
    (*(v15 + 56))(v16, 0, 1, v14);
    v18 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v16);
    v13 = v19;
    sub_1D22BD238(v16, &qword_1EC6DAE70, &qword_1D2881A90);
    sub_1D22BD238(v22, &unk_1EC6DE5A0, &unk_1D287F0E0);
    (*(v9 + 8))(v8, v10);
    v12 = v18;
    (*(v6 + 8))(v23, v7);
    sub_1D263A5A4(v17, type metadata accessor for PlaygroundImage);
  }

  v20 = v0[1];

  return v20(v12, v13);
}

uint64_t sub_1D26372F0()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[39];
  sub_1D28724A8();
  v8 = sub_1D2873CA8();
  v9 = sub_1D2878A18();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  if (v10)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D226E000, v8, v9, "Can't generate shareableImageData for photo asset", v14, 2u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);

  v15 = v0[1];

  return v15(0, 0xF000000000000000);
}

uint64_t sub_1D26374A4()
{
  v0 = sub_1D2873AA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D287F550;
  sub_1D2873A08();
  v8 = sub_1D28739E8();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v6, v0);
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1D2873A28();
  v12 = sub_1D28739E8();
  v14 = v13;
  result = (v11)(v3, v0);
  *(v7 + 48) = v12;
  *(v7 + 56) = v14;
  qword_1EC6DF5B0 = v7;
  return result;
}

double static PhotoAssetItemProviderWriting.writableTypeIdentifiersForItemProvider.getter()
{
  if (qword_1EC6D8D60 != -1)
  {
    swift_once();
  }

  sub_1D2870F68();
  return result;
}

id PhotoAssetItemProviderWriting.init(asset:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t PhotoAssetItemProviderWriting.loadData(withTypeIdentifier:forItemProviderCompletionHandler:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v36 = a3;
  v37 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v35 - v7;
  v8 = sub_1D2873AA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  sub_1D2873A88();
  v18 = sub_1D28739E8();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v17, v8);
  if (v18 == a1 && v20 == a2)
  {

    goto LABEL_16;
  }

  v23 = sub_1D2879618();

  if (v23)
  {
LABEL_16:
    sub_1D2637A28(1, v36, v37);
    return 0;
  }

  sub_1D2873A28();
  v24 = sub_1D28739E8();
  v26 = v25;
  v21(v14, v8);
  if (v24 == a1 && v26 == a2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v28 = sub_1D2879618();

  if ((v28 & 1) == 0)
  {
    sub_1D2873A08();
    v29 = sub_1D28739E8();
    v31 = v30;
    v21(v11, v8);
    if (v29 != a1 || v31 != a2)
    {
      v34 = sub_1D2879618();

      if ((v34 & 1) == 0)
      {
        (v36)(0, 0xF000000000000000, 0);
        return 0;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_1D2870F68();
  v32 = v35;
  sub_1D2873AB8();
  sub_1D2637C18(v32, v36, v37);
  sub_1D22BD238(v32, &qword_1EC6DAE70, &qword_1D2881A90);
  return 0;
}

double sub_1D2637A28(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  if ([objc_opt_self() isMainThread])
  {
    v10 = sub_1D2878568();
    MEMORY[0x1EEE9AC00](v10);
    *&v17[-32] = v3;
    v17[-24] = a1 & 1;
    *&v17[-16] = a2;
    *&v17[-8] = a3;
    sub_1D239DDE8(sub_1D263A340, &v17[-48], "ImagePlaygroundInternal/PhotoAsset+NSItemProviderWriting.swift", 62, 2u, 46);
  }

  else
  {
    v12 = sub_1D28785F8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_1D2878568();
    v13 = v3;
    sub_1D2870F78();
    v14 = sub_1D2878558();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    *(v15 + 32) = v13;
    *(v15 + 40) = a1 & 1;
    *(v15 + 48) = a2;
    *(v15 + 56) = a3;
    sub_1D22AE01C(0, 0, v9, &unk_1D289A1E0, v15);
  }

  return result;
}

uint64_t sub_1D2637C18(uint64_t a1, char *a2, char *a3)
{
  v33 = a2;
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_1D2873AA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  sub_1D22BD1D0(a1, v9, &qword_1EC6DAE70, &qword_1D2881A90);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    if (qword_1ED8A5308 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_1ED8A5310);
    (*(v11 + 16))(v16, v18, v10);
    if (v17(v9, 1, v10) != 1)
    {
      sub_1D22BD238(v9, &qword_1EC6DAE70, &qword_1D2881A90);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  if ([objc_opt_self() isMainThread])
  {
    v19 = sub_1D2878568();
    MEMORY[0x1EEE9AC00](v19);
    v21 = v33;
    v20 = v34;
    *(&v32 - 4) = v3;
    *(&v32 - 3) = v21;
    *(&v32 - 2) = v20;
    *(&v32 - 1) = v16;
    sub_1D239DDE8(sub_1D263A4A0, (&v32 - 6), "ImagePlaygroundInternal/PhotoAsset+NSItemProviderWriting.swift", 62, 2u, 74);
  }

  else
  {
    v22 = sub_1D28785F8();
    (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
    (*(v11 + 16))(v13, v16, v10);
    sub_1D2878568();
    v23 = v3;
    v24 = v34;
    sub_1D2870F78();
    v25 = sub_1D2878558();
    v26 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    *(v27 + 2) = v25;
    *(v27 + 3) = v28;
    *(v27 + 4) = v23;
    (*(v11 + 32))(&v27[v26], v13, v10);
    v29 = &v27[(v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
    v30 = v32;
    *v29 = v33;
    v29[1] = v24;
    sub_1D22AE01C(0, 0, v30, &unk_1D289A1F8, v27);
  }

  return (*(v11 + 8))(v16, v10);
}

void sub_1D2638108(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1D28714A8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1D28716D8();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_1D26381A0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset);
  sub_1D2870F78();
  v8 = sub_1D26422B8(v6, v7, a3, a4);
}

void sub_1D2638210(uint64_t a1, void (*a2)(void))
{
  v4 = sub_1D28716B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30, &unk_1D28819F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v16 - v9);
  sub_1D22BD1D0(a1, &v16 - v9, &qword_1EC6DAE30, &unk_1D28819F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = *v10;
    (a2)(0, 0xF000000000000000, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v13 = sub_1D28715A8();
    v15 = v14;
    a2();
    sub_1D22D6D60(v13, v15);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D26383F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 160) = a5;
  *(v7 + 16) = a4;
  v8 = sub_1D28716B8();
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = sub_1D2878568();
  *(v7 + 72) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v7 + 80) = v10;
  *(v7 + 88) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D26384F4, v10, v9);
}

uint64_t sub_1D26384F4(uint64_t a1)
{
  v1[12] = *(v1[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset);
  v1[13] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[14] = v3;
  v1[15] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2638594, v3, v2);
}

uint64_t sub_1D2638594(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 160);
  v4 = sub_1D2878558();
  *(v1 + 128) = v4;
  v5 = swift_task_alloc();
  *(v1 + 136) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 25) = 1;
  v6 = swift_task_alloc();
  *(v1 + 144) = v6;
  *v6 = v1;
  v6[1] = sub_1D26386B4;
  v7 = *(v1 + 56);
  v8 = *(v1 + 40);
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v7, v4, v9, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D23F564C, v5, v8);
}

uint64_t sub_1D26386B4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D263890C;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D26387D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D26387D8()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D263883C, v1, v2);
}

uint64_t sub_1D263883C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];

  v5 = sub_1D28715A8();
  v7 = v6;
  v4();
  sub_1D22D6D60(v5, v7);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D263890C()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D2638984, v1, v2);
}

uint64_t sub_1D2638984()
{
  v1 = v0[19];
  v2 = v0[3];

  v3 = v1;
  v2(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

void sub_1D2638A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v49 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2878AA8();
  v44 = *(v10 - 1);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30, &unk_1D28819F0);
  MEMORY[0x1EEE9AC00](v51);
  v13 = (&v40 - v12);
  v14 = sub_1D2873AA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset);
  (*(v15 + 16))(&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v14, v17);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v50;
  *(v20 + 24) = a3;
  (*(v15 + 32))(v20 + v19, &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v52 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  v53 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  aBlock[0] = v18;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for _PhotoAsset<A>);
  sub_1D2870F78();
  sub_1D28719E8();

  v21 = v18 + *(*v18 + 216);
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 24) = v22;
  *(v24 + 32) = v23;
  *(v24 + 40) = 1;
  *(v24 + 48) = sub_1D263A4C0;
  *(v24 + 56) = v20;
  swift_beginAccess();
  v25 = v18[10];
  if (v25)
  {
    sub_1D22BCFD0(0, &unk_1EC6DF5C0, 0x1E69786A8);
    v50 = v23;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = v25;
    v27 = v55;
    v28 = sub_1D233F280(v26);
    if (v27)
    {
      *v13 = v27;
      swift_storeEnumTagMultiPayload();
      v29 = v27;
      sub_1D233A5C4(v13, v18, v22, v50, 1, sub_1D263A4C0, v20);

      sub_1D22BD238(v13, &qword_1EC6DAE30, &unk_1D28819F0);

      v30 = 0;
    }

    else
    {
      v51 = v28;
      v41 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
      [v41 setVariant_];
      v33 = sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
      v42 = "shareableImage()";
      v43 = v33;
      (*(v44 + 104))(v46, *MEMORY[0x1E69E8098], v45);
      sub_1D2877B58();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D263A534();
      v55 = 0;
      v45 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50, &unk_1D2881A40);
      sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50, &unk_1D2881A40, MEMORY[0x1E69E6328]);
      sub_1D2879088();
      v34 = sub_1D2878AD8();
      v35 = v41;
      [v41 setResultHandlerQueue_];

      v36 = swift_allocObject();
      *(v36 + 16) = sub_1D233F26C;
      *(v36 + 24) = v24;
      aBlock[4] = sub_1D233F344;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D23372C0;
      aBlock[3] = &block_descriptor_30;
      v37 = _Block_copy(aBlock);
      sub_1D2870F78();

      v38 = v51;
      [v51 exportWithOptions:v35 completionHandler:v37];
      _Block_release(v37);
      v39 = v38;
      v30 = [v38 progress];
    }
  }

  else
  {
    sub_1D233F184();
    v31 = swift_allocError();
    *v32 = 0;
    *v13 = v31;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    sub_1D233A5C4(v13, v18, v22, v23, 1, sub_1D263A4C0, v20);
    sub_1D22BD238(v13, &qword_1EC6DAE30, &unk_1D28819F0);

    v30 = 0;
  }
}

uint64_t sub_1D263923C(uint64_t a1, void (*a2)(uint64_t, unint64_t, void), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  sub_1D22BD1D0(a1, &v20 - v11, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v13 = type metadata accessor for PlaygroundImage(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v16 = sub_1D2873AA8();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v9, a4, v16);
    (*(v17 + 56))(v9, 0, 1, v16);
    v14 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v9);
    v15 = v18;
    sub_1D22BD238(v9, &qword_1EC6DAE70, &qword_1D2881A90);
    sub_1D263A5A4(v12, type metadata accessor for PlaygroundImage);
  }

  a2(v14, v15, 0);
  return sub_1D22D6D4C(v14, v15);
}

uint64_t sub_1D2639498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1D2878568();
  v7[6] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D2639534, v9, v8);
}

uint64_t sub_1D2639534()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D26395F0;
  v2 = *(v0 + 24);

  return sub_1D263623C(v2, 1);
}

uint64_t sub_1D26395F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D2639718, v6, v5);
}

uint64_t sub_1D2639718()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[4];

  v3(v2, v1, 0);
  sub_1D22D6D4C(v2, v1);
  v4 = v0[1];

  return v4();
}

id PhotoAssetItemProviderWriting.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotoAssetItemProviderWriting.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D26398D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_1D2872438();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = sub_1D2878568();
  v5[14] = sub_1D2878558();
  v5[15] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[16] = v8;
  v5[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D26399E0, v8, v7);
}

uint64_t sub_1D26399E0()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[18] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[9] + 16), *(v0[9] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_1D2639B50;
    v5 = v0[12];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[21] = v7;
    v10 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D2639E88, v10, v9);
  }
}

uint64_t sub_1D2639B50()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1D2639DF8;
  }

  else
  {
    v5 = sub_1D2639C8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2639C8C()
{
  v1 = *(v0 + 144);

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2639D20, v3, v2);
}

uint64_t sub_1D2639D20()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  v8 = sub_1D263A720();
  sub_1D233AB5C(v6, v5, v4, v8 & 1, v7);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D2639DF8()
{
  v1 = v0[18];

  v0[21] = v0[20];
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2639E88, v3, v2);
}

uint64_t sub_1D2639E88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2639EF8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v40 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v37 - v8;
  v9 = sub_1D2873AA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  v37 = a4;
  _Block_copy(a4);
  sub_1D2873A88();
  v19 = sub_1D28739E8();
  v21 = v20;
  v22 = *(v10 + 8);
  v22(v17, v9);
  if (v19 == a1 && v21 == a2)
  {

    goto LABEL_16;
  }

  v24 = sub_1D2879618();

  if (v24)
  {
LABEL_16:
    sub_1D2637A28(1, sub_1D263A260, v18);
    goto LABEL_17;
  }

  sub_1D2873A28();
  v25 = sub_1D28739E8();
  v27 = v26;
  v22(v14, v9);
  if (v25 == a1 && v27 == a2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v29 = sub_1D2879618();

  if ((v29 & 1) == 0)
  {
    v30 = v38;
    sub_1D2873A08();
    v31 = sub_1D28739E8();
    v33 = v32;
    v22(v30, v9);
    if (v31 != a1 || v33 != a2)
    {
      v36 = sub_1D2879618();

      if ((v36 & 1) == 0)
      {
        (*(v37 + 2))(v37, 0, 0);
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_1D2870F68();
  v34 = v39;
  sub_1D2873AB8();
  sub_1D2637C18(v34, sub_1D263A260, v18);
  sub_1D22BD238(v34, &qword_1EC6DAE70, &qword_1D2881A90);
LABEL_17:

  return 0;
}

uint64_t sub_1D263A268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D26383F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D263A364(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2873AA8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BC8FC;

  return sub_1D2639498(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1D263A4C0(uint64_t a1)
{
  v3 = *(sub_1D2873AA8() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D263923C(a1, v4, v5, v6);
}

unint64_t sub_1D263A534()
{
  result = qword_1ED89CD60;
  if (!qword_1ED89CD60)
  {
    sub_1D2878A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CD60);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D263A5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _PhotoAsset.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1D263DB80(KeyPath);

  v4 = *(*v1 + 184);
  swift_beginAccess();
  v5 = sub_1D2871798();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1D263A6E8()
{
  v0 = sub_1D2642160();
  sub_1D2870F68();
  return v0;
}

uint64_t sub_1D263A720()
{
  v0 = sub_1D2872008();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v29 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v25 - v3;
  v4 = sub_1D2872278();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2872428();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D28722E8();
  v11 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *MEMORY[0x1E696E458];
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v5 + 16))(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);
      if ((*(v5 + 88))(v7, v4) == v14)
      {
        break;
      }

      ++v13;
      result = (*(v5 + 8))(v7, v4);
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }

    (*(v5 + 96))(v7, v4);
    v17 = v26;
    v16 = v27;
    v18 = v28;
    (*(v27 + 32))(v26, v7, v28);
    sub_1D2872418();
    v19 = v30;
    sub_1D2871EA8();
    v20 = v29;
    sub_1D2871FC8();
    v21 = MEMORY[0x1D389AA00](v19, v20);
    v22 = *(v31 + 8);
    v23 = v20;
    v24 = v32;
    v22(v23, v32);
    if (v21)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1D2871F78();
    }

    v22(v19, v24);
    (*(v16 + 8))(v17, v18);
  }

  else
  {
LABEL_6:

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _PhotoAsset.shareableImageMakeURL(mostCompatible:ensureRegionalCompliance:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 97) = a3;
  *(v4 + 96) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = sub_1D2878568();
  *(v4 + 40) = sub_1D2878558();
  v6 = sub_1D28784F8();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D263AB34, v6, v5);
}

uint64_t sub_1D263AB34(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 97);
  v4 = *(v1 + 96);
  v5 = sub_1D2878558();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 25) = v3;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  v8 = sub_1D28716B8();
  *v7 = v1;
  v7[1] = sub_1D263AC58;
  v9 = *(v1 + 16);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v9, v5, v10, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D263EA98, v6, v8);
}

uint64_t sub_1D263AC58()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1D263ADE0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1D263AD7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D263AD7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D263ADE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _PhotoAsset.loadImageIfNeeded(type:forceReload:)(uint64_t a1, _BYTE *a2, char a3)
{
  v5 = v3;
  *(v4 + 83) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v5;
  *(v4 + 32) = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 84) = *a2;
  sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v8 = sub_1D28784F8();
  *(v4 + 56) = v8;
  *(v4 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D263AF60, v8, v7);
}

uint64_t sub_1D263AF60(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 84);
  if (*(v1 + 83) != 1)
  {
    v3 = *(v1 + 40);
    v4 = *(v1 + 24);
    v5 = *(*v4 + 160);
    v21 = *(v1 + 84);
    sub_1D262A534(v4 + v5, &v21, v3);
    v6 = type metadata accessor for PlaygroundImage(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) != 1)
    {
      v18 = *(v1 + 40);
      v19 = *(v1 + 16);

      sub_1D23EEBD4(v18, v19);
      (*(v7 + 56))(v19, 0, 1, v6);
      goto LABEL_10;
    }

    sub_1D22BD238(*(v1 + 40), &unk_1EC6DE5A0, &unk_1D287F0E0);
  }

  v8 = *(v1 + 32);
  sub_1D26421EC();
  *(v1 + 81) = v2;
  v9 = *(v8 + 80);
  v10 = *(v8 + 88);
  type metadata accessor for _PhotoAsset.ImageType(0, v9, v10, v11);
  type metadata accessor for _PhotoAsset.ImageStatus(0, v9, v10, v12);
  sub_1D2870F68();
  swift_getWitnessTable();
  sub_1D2877ED8();

  if (*(v1 + 80) == 1)
  {
    v13 = *(v1 + 16);

    v14 = type metadata accessor for PlaygroundImage(0);
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
LABEL_10:

    v20 = *(v1 + 8);

    return v20();
  }

  *(v1 + 82) = v2;
  v15 = swift_task_alloc();
  *(v1 + 72) = v15;
  *v15 = v1;
  v15[1] = sub_1D263B228;
  v16 = *(v1 + 16);

  return sub_1D263EC58(v16, (v1 + 82));
}

uint64_t sub_1D263B228()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D263B348, v3, v2);
}

uint64_t sub_1D263B348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _PhotoAsset.imageData(for:for:forceReload:ensureRegionalCompliance:)(char *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  *(v3 + 24) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = *a1;
  *(v3 + 40) = sub_1D2878568();
  *(v3 + 48) = sub_1D2878558();
  *(v3 + 64) = v7;
  v8 = swift_task_alloc();
  *(v3 + 56) = v8;
  *v8 = v3;
  v8[1] = sub_1D263B508;

  return _PhotoAsset.loadImageIfNeeded(type:forceReload:)(v6, (v3 + 64), a3);
}

uint64_t sub_1D263B508()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D263B644, v1, v0);
}

uint64_t sub_1D263B644()
{
  v1 = v0[4];

  v2 = type metadata accessor for PlaygroundImage(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(v0[4], &unk_1EC6DE5A0, &unk_1D287F0E0);
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = sub_1D2873AA8();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v6, v7, v8);
    (*(v9 + 56))(v6, 0, 1, v8);
    v3 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v6);
    v4 = v10;
    sub_1D22BD238(v6, &qword_1EC6DAE70, &qword_1D2881A90);
    sub_1D23D4DFC(v5);
  }

  v11 = v0[1];

  return v11(v3, v4);
}

uint64_t _PhotoAsset.cachedImage(type:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*v2 + 160);
  v5 = *a1;
  return sub_1D262A534(v2 + v3, &v5, a2);
}

uint64_t sub_1D263B83C()
{
  KeyPath = swift_getKeyPath();
  sub_1D263DB80(KeyPath);

  return *(v0 + *(*v0 + 208));
}

uint64_t sub_1D263B8C4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1D263DB80(KeyPath);

  v4 = *(*v1 + 200);
  swift_beginAccess();
  return sub_1D22BD1D0(v1 + v4, a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
}

id sub_1D263B984@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  swift_beginAccess();
  v9 = *(v1 + 80);
  if (v9)
  {
    result = [v9 curationProperties];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = [result addedDate];

    if (v12)
    {
      sub_1D2871768();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_1D2871798();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v5, v13, 1, v14);
    sub_1D22EC9BC(v5, v8, &unk_1EC6DAE40, &unk_1D287EC70);
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      return (*(v15 + 32))(a1, v8, v14);
    }
  }

  else
  {
    v14 = sub_1D2871798();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1D2871778();
  sub_1D2871798();
  result = (*(*(v14 - 8) + 48))(v8, 1, v14);
  if (result != 1)
  {
    return sub_1D22BD238(v8, &unk_1EC6DAE40, &unk_1D287EC70);
  }

  return result;
}

uint64_t sub_1D263BC24(unsigned __int8 a1)
{
  v1 = 0x4C6F547964616572;
  v2 = 0x676E6964616F6CLL;
  if (a1 != 2)
  {
    v2 = 0x726F727265;
  }

  if (a1)
  {
    v1 = 0x65426F5474696177;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D263BCE8(unsigned __int8 a1)
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](a1);
  return sub_1D2879828();
}

uint64_t sub_1D263BD40()
{
  sub_1D28797D8();
  sub_1D263BCC0(v2, *v0);
  return sub_1D2879828();
}

uint64_t _PhotoAsset.ImageType.description.getter()
{
  if (*v0)
  {
    return 0x696665446C6C7566;
  }

  else
  {
    return 0x69616E626D756874;
  }
}

uint64_t static _PhotoAsset.ImageType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _PhotoAsset.ImageType(255, a1, a2, a4);
  sub_1D28795D8();
  swift_allocObject();
  v4 = sub_1D2878408();
  *v5 = 256;
  sub_1D28784C8();
  return v4;
}

uint64_t _PhotoAsset.ImageType.hashValue.getter()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  return sub_1D2879828();
}

uint64_t sub_1D263BEE4()
{
  sub_1D28797D8();
  _PhotoAsset.ImageType.hash(into:)();
  return sub_1D2879828();
}

uint64_t sub_1D263BF20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = static _PhotoAsset.ImageType.allCases.getter(*(a1 + 16), *(a1 + 24), a3, a4);
  *a2 = result;
  return result;
}

uint64_t _PhotoAsset.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = sub_1D2878F18();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D263C000()
{
  v1 = *v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658, &qword_1D28A1160);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = *(v1 + 136);
  if (*(v0 + v6))
  {
    v7 = *(v0 + v6);
  }

  else
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = *(v2 + 80);
    v9[3] = *(v2 + 88);
    v9[4] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF660, &unk_1D289A660);
    v7 = swift_allocObject();
    v10 = (v7 + *(*v7 + 104));
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08, &unk_1D28A1180);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = v3[7];
    *&v5[v12] = sub_1D25D92F4(MEMORY[0x1E69E7CC0]);
    *&v5[v3[8]] = 0;
    v5[v3[9]] = 0;
    *v10 = 0;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668, &unk_1D289A670) + 28);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF670, &unk_1D28A1190);
    bzero(v10 + v13, *(*(v14 - 8) + 64));
    sub_1D22EC9BC(v5, v10 + v13, &qword_1EC6DF658, &qword_1D28A1160);
    *(v7 + 16) = &unk_1D289A658;
    *(v7 + 24) = v9;
    *(v7 + 32) = 0;
    *(v0 + v6) = v7;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v7;
}

uint64_t sub_1D263C278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v5 = sub_1D2872438();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_1D2878F18();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = *(a3 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = sub_1D2878568();
  v3[20] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v3[21] = v8;
  v3[22] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D263C428, v8, v7);
}

uint64_t sub_1D263C428()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = Strong;
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[10];
  v8 = *(*Strong + 120);
  swift_beginAccess();
  (*(v6 + 16))(v3, v2 + v8, v5);
  if ((*(v4 + 48))(v3, 1, v7) == 1)
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];

    (*(v10 + 8))(v9, v11);
LABEL_5:
    sub_1D233F184();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  v15 = v0[18];
  (*(v0[17] + 32))(v15, v0[16], v0[10]);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v16 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  v0[24] = v16;
  [v16 setNetworkAccessAllowed_];
  [v16 setDeliveryMode_];
  [v16 setSynchronous_];
  v17 = *v15;
  v0[25] = v17;
  v0[26] = sub_1D2878558();
  v18 = swift_task_alloc();
  v0[27] = v18;
  *v18 = v0;
  v18[1] = sub_1D263C6DC;
  v19 = v0[13];

  return sub_1D23E4308(v19, v17);
}

uint64_t sub_1D263C6DC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v5 = sub_1D263CB38;
  }

  else
  {
    *(v2 + 232) = v3;
    *(v2 + 240) = v4;
    v5 = sub_1D263C840;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D263C840()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = sub_1D263A720();
  *(v0 + 296) = 0;
  *(v0 + 300) = 1;
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  v4[1].i64[0] = v0 + 296;
  v4[1].i64[1] = v1;
  v4[2] = vdupq_n_s64(0x4080000000000000uLL);
  v4[3].i64[0] = v2;
  v4[3].i8[8] = v3 & 1;
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *(v5 + 16) = v0 + 296;
  v6 = sub_1D2878558();
  *(v0 + 264) = v6;
  v7 = swift_task_alloc();
  *(v0 + 272) = v7;
  v8 = type metadata accessor for PlaygroundImage(0);
  *v7 = v0;
  v7[1] = sub_1D263C9A4;
  v9 = *(v0 + 64);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE18](v9, &unk_1D289A680, v4, sub_1D2643374, v5, v6, v10, v8);
}

uint64_t sub_1D263C9A4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1D263CD04;
  }

  else
  {
    v5 = sub_1D263CBB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D263CB38()
{

  *(v0 + 288) = *(v0 + 224);
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D263CDA0, v1, v2);
}

uint64_t sub_1D263CBB0()
{
  v1 = v0[24];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  (*(v3 + 8))(v2, v4);
  v5 = v0[21];
  v6 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D263CC44, v5, v6);
}

uint64_t sub_1D263CC44()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D263CD04()
{
  v1 = v0[24];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  (*(v3 + 8))(v2, v4);
  v0[36] = v0[35];
  v5 = v0[21];
  v6 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D263CDA0, v5, v6);
}

uint64_t sub_1D263CDA0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D263CE58()
{
  v1 = *v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658, &qword_1D28A1160);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = *(v1 + 144);
  if (*(v0 + v6))
  {
    v7 = *(v0 + v6);
  }

  else
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = *(v2 + 80);
    v9[3] = *(v2 + 88);
    v9[4] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF660, &unk_1D289A660);
    v7 = swift_allocObject();
    v10 = (v7 + *(*v7 + 104));
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08, &unk_1D28A1180);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = v3[7];
    *&v5[v12] = sub_1D25D92F4(MEMORY[0x1E69E7CC0]);
    *&v5[v3[8]] = 0;
    v5[v3[9]] = 0;
    *v10 = 0;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668, &unk_1D289A670) + 28);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF670, &unk_1D28A1190);
    bzero(v10 + v13, *(*(v14 - 8) + 64));
    sub_1D22EC9BC(v5, v10 + v13, &qword_1EC6DF658, &qword_1D28A1160);
    *(v7 + 16) = &unk_1D289A690;
    *(v7 + 24) = v9;
    *(v7 + 32) = 0;
    *(v0 + v6) = v7;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v7;
}

uint64_t sub_1D263D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v5 = sub_1D2878F18();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = *(a3 - 8);
  v3[15] = swift_task_alloc();
  sub_1D2878568();
  v3[16] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[17] = v7;
  v3[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D263D220, v7, v6);
}

uint64_t sub_1D263D220()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = Strong;
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = *(*Strong + 120);
  swift_beginAccess();
  (*(v6 + 16))(v3, v2 + v8, v5);
  if ((*(v4 + 48))(v3, 1, v7) == 1)
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];

    (*(v10 + 8))(v9, v11);
LABEL_5:
    sub_1D233F184();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  v15 = v0[15];
  (*(v0[14] + 32))(v15, v0[13], v0[10]);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v16 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  v0[20] = v16;
  [v16 setNetworkAccessAllowed_];
  [v16 setDeliveryMode_];
  [v16 setSynchronous_];
  v17 = *v15;
  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = sub_1D263D4BC;
  v19 = v0[8];

  return sub_1D23E3EFC(v19, v17, v16);
}

uint64_t sub_1D263D4BC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1D263D6C0;
  }

  else
  {
    v5 = sub_1D263D610;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D263D610()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D263D6C0()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t _PhotoAsset.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 160);
  v4 = sub_1D2871818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D263D814(uint64_t a1)
{
  v2 = sub_1D2871798();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return _PhotoAsset.creationDate.setter(v5);
}

uint64_t _PhotoAsset.creationDate.setter(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D2871798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 184);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  v16[0] = *(v4 + 80);
  sub_1D2643544(&qword_1EC6D8BD0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v10 = sub_1D2877F98();
  v11 = *(v6 + 8);
  v12 = v11(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    (*(v6 + 24))(&v2[v9], a1, v5);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    v16[-1] = v16[0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v16[-1] = v2;
    *(&v16[-1] + 1) = a1;
    sub_1D263DC20(v14, sub_1D23EFAD0, &v16[-2], MEMORY[0x1E69E7CA8] + 8);
  }

  return v11(a1, v5);
}

double (*_PhotoAsset.creationDate.modify(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  KeyPath = swift_getKeyPath();
  sub_1D263DB80(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1D2871A08();

  swift_beginAccess();
  return sub_1D263DE68;
}

double sub_1D263DE68(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
  return sub_1D263E148(v1, &unk_1D289A260);
}

double sub_1D263DE9C(uint64_t a1)
{
  sub_1D26421EC();

  sub_1D2870F68();
  return result;
}

double sub_1D263DEC4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[24];
  swift_beginAccess();
  v6 = *(v2 + v5);
  v15[7] = a1;
  v15[8] = v6;
  v7 = v4[10];
  v8 = v4[11];
  type metadata accessor for _PhotoAsset.ImageType(255, v7, v8, v9);
  type metadata accessor for _PhotoAsset.ImageStatus(255, v7, v8, v10);
  swift_getWitnessTable();
  sub_1D2877EC8();
  v15[6] = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_1D2877F98();
  if (v11)
  {
    *(v2 + v5) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v15[2] = v2;
    v15[3] = a1;
    sub_1D263DC20(v14, sub_1D2643430, v15, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

void sub_1D263E0CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 192);
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1D2870F68();
}

double sub_1D263E148(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1D28719F8();

  return result;
}

uint64_t sub_1D263E210(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  v8 = *(v4 + 200);
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v8, v7, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v14[0] = *(v4 + 80);
  sub_1D2643490();
  v9 = sub_1D2877F98();
  v10 = sub_1D22BD238(v7, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if (v9)
  {
    swift_beginAccess();
    sub_1D23EFB0C(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v14[-1] = v14[0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v14[-1] = v2;
    *(&v14[-1] + 1) = a1;
    sub_1D263DC20(v12, sub_1D23EFB7C, &v14[-2], MEMORY[0x1E69E7CA8] + 8);
  }

  return sub_1D22BD238(a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
}

double sub_1D263E440(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v13 = *(v1 + v3);
  v4 = a1 & 1;
  v12 = a1;
  v11 = *(v2 + 80);
  v5 = sub_1D2877F98();
  if (v5)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    v10 = *(&v11 + 1);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    LOBYTE(v10) = v4;
    sub_1D263DC20(v8, sub_1D264344C, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double sub_1D263E5A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 216);
  v16 = *v7;
  v14 = a1;
  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F48, &qword_1D287CC90);
  v13 = *(v6 + 80);
  sub_1D22BB118();
  v8 = sub_1D2877F98();
  if (v8)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    sub_1D263DC20(v11, sub_1D23EEC44, v12, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1D263E72C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for PlaygroundImage(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  sub_1D22BD1D0(a1, v4, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D233F184();
    v12 = swift_allocError();
    *v13 = 1;
    v15[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0, &unk_1D28856D0);
    return sub_1D2878508();
  }

  else
  {
    sub_1D23EEBD4(v4, v11);
    sub_1D239A330(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0, &unk_1D28856D0);
    sub_1D2878518();
    return sub_1D23D4DFC(v11);
  }
}

void sub_1D263E940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0, &qword_1D2885CA8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = sub_1D264280C(v3, sub_1D23F565C, v11);
}

uint64_t sub_1D263EAA8(uint64_t a1)
{
  v2 = sub_1D28716B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30, &unk_1D28819F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v10 - v7);
  sub_1D22BD1D0(a1, v10 - v7, &qword_1EC6DAE30, &unk_1D28819F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0, &qword_1D2885CA8);
    return sub_1D2878508();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0, &qword_1D2885CA8);
    return sub_1D2878518();
  }
}

uint64_t sub_1D263EC58(uint64_t a1, _BYTE *a2)
{
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  *(v3 + 192) = *v2;
  v5 = *v2;
  *(v3 + 200) = *v2;
  v6 = sub_1D2878538();
  *(v3 + 208) = v6;
  *(v3 + 216) = *(v6 - 8);
  *(v3 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  *(v3 + 232) = swift_task_alloc();
  v7 = sub_1D2871818();
  *(v3 + 240) = v7;
  *(v3 + 248) = *(v7 - 8);
  *(v3 + 256) = swift_task_alloc();
  v8 = type metadata accessor for PlaygroundImage(0);
  *(v3 + 264) = v8;
  *(v3 + 272) = *(v8 - 8);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = *(v5 + 80);
  v9 = sub_1D2878F18();
  *(v3 + 312) = v9;
  *(v3 + 320) = *(v9 - 8);
  *(v3 + 328) = swift_task_alloc();
  v10 = sub_1D2873CB8();
  *(v3 + 336) = v10;
  *(v3 + 344) = *(v10 - 8);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 520) = *a2;
  sub_1D2878568();
  *(v3 + 392) = sub_1D2878558();
  v12 = sub_1D28784F8();
  *(v3 + 400) = v12;
  *(v3 + 408) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D263EFBC, v12, v11);
}

uint64_t sub_1D263EFBC(uint64_t a1)
{
  v81 = v1;
  sub_1D28724F8();
  sub_1D2870F78();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A08();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 520);
    v5 = *(v1 + 344);
    v73 = *(v1 + 336);
    v76 = *(v1 + 384);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v80 = v7;
    *v6 = 136315394;
    sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v8 = sub_1D28795C8();
    v10 = v9;

    v11 = sub_1D23D7C84(v8, v10, &v80);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    if (v4)
    {
      v12 = 0x696665446C6C7566;
    }

    else
    {
      v12 = 0x69616E626D756874;
    }

    if (v4)
    {
      v13 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v13 = 0xE90000000000006CLL;
    }

    v14 = sub_1D23D7C84(v12, v13, &v80);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1D226E000, v2, v3, "Will load image with id: %s, type: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);

    v15 = *(v5 + 8);
    v15(v76, v73);
  }

  else
  {
    v16 = *(v1 + 384);
    v17 = *(v1 + 336);
    v18 = *(v1 + 344);

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  *(v1 + 416) = v15;
  v20 = *(v1 + 320);
  v19 = *(v1 + 328);
  v22 = *(v1 + 304);
  v21 = *(v1 + 312);
  v23 = *(v1 + 184);
  v24 = *(*v23 + 120);
  swift_beginAccess();
  (*(v20 + 16))(v19, v23 + v24, v21);
  v25 = (*(*(v22 - 8) + 48))(v19, 1, v22);
  v27 = *(v1 + 320);
  v26 = *(v1 + 328);
  v28 = *(v1 + 312);
  if (v25 == 1)
  {

    (*(v27 + 8))(v26, v28);
    sub_1D28724F8();
    sub_1D2870F78();
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A08();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v1 + 520);
      v74 = *(v1 + 336);
      v77 = *(v1 + 376);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v80 = v33;
      *v32 = 136315394;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v34 = sub_1D28795C8();
      v36 = v35;

      v37 = sub_1D23D7C84(v34, v36, &v80);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      if (v31)
      {
        v38 = 0x696665446C6C7566;
      }

      else
      {
        v38 = 0x69616E626D756874;
      }

      if (v31)
      {
        v39 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v39 = 0xE90000000000006CLL;
      }

      v40 = sub_1D23D7C84(v38, v39, &v80);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_1D226E000, v29, v30, "Asset unavailable with id: %s, type: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v33, -1, -1);
      MEMORY[0x1D38A3520](v32, -1, -1);

      v41 = v74;
      v42 = v77;
    }

    else
    {
      v55 = *(v1 + 376);
      v56 = *(v1 + 336);

      v42 = v55;
      v41 = v56;
    }

    v15(v42, v41);
    v57 = *(v1 + 520);
    v58 = *(v1 + 304);
    v59 = *(v1 + 272);
    v60 = *(v1 + 200);
    v61 = *(v1 + 184);
    v75 = *(v1 + 176);
    v79 = *(v1 + 264);
    *(v1 + 512) = 1;
    *(v1 + 513) = v57;
    v62 = swift_task_alloc();
    *v62 = v58;
    v63 = *(v60 + 88);
    v62[1] = v63;
    KeyPath = swift_getKeyPath();

    sub_1D263DB80(KeyPath);

    *(v1 + 136) = v61;
    v65 = swift_task_alloc();
    *v65 = v58;
    v65[1] = v63;
    swift_getKeyPath();

    swift_getWitnessTable();
    sub_1D2871A08();

    swift_beginAccess();
    type metadata accessor for _PhotoAsset.ImageType(255, v58, v63, v66);
    type metadata accessor for _PhotoAsset.ImageStatus(255, v58, v63, v67);
    swift_getWitnessTable();
    sub_1D2877EC8();
    sub_1D2877EE8();
    swift_endAccess();
    v68 = sub_1D263E148(v61, &unk_1D289A698);
    (*(v59 + 56))(v75, 1, 1, v79, v68);

    v69 = *(v1 + 8);

    return v69();
  }

  else
  {
    v78 = *(v1 + 392);
    v43 = *(v1 + 520);
    v44 = *(v1 + 304);
    v45 = *(v1 + 200);
    v46 = *(v1 + 184);
    (*(v27 + 8))(v26, v28);
    *(v1 + 514) = 2;
    *(v1 + 515) = v43;
    v47 = swift_task_alloc();
    *v47 = v44;
    v48 = *(v45 + 88);
    *(v1 + 424) = v48;
    v47[1] = v48;
    v49 = swift_getKeyPath();

    sub_1D263DB80(v49);

    *(v1 + 432) = *(*v46 + 224);
    *(v1 + 144) = v46;
    v50 = swift_task_alloc();
    *v50 = v44;
    v50[1] = v48;
    swift_getKeyPath();

    *(v1 + 440) = swift_getWitnessTable();
    sub_1D2871A08();

    *(v1 + 448) = *(*v46 + 192);
    swift_beginAccess();
    type metadata accessor for _PhotoAsset.ImageType(255, v44, v48, v51);
    type metadata accessor for _PhotoAsset.ImageStatus(255, v44, v48, v52);
    swift_getWitnessTable();
    *(v1 + 456) = sub_1D2877EC8();
    sub_1D2877EE8();
    swift_endAccess();
    sub_1D263E148(v46, &unk_1D289A698);
    if (v43)
    {
      *(v1 + 488) = sub_1D263CE58();
      sub_1D2870F78();
      v53 = swift_task_alloc();
      *(v1 + 496) = v53;
      *v53 = v1;
      v53[1] = sub_1D2640040;
      v54 = *(v1 + 280);
    }

    else
    {
      *(v1 + 464) = sub_1D263C000();
      sub_1D2870F78();
      v71 = swift_task_alloc();
      *(v1 + 472) = v71;
      *v71 = v1;
      v71[1] = sub_1D263FA34;
      v54 = *(v1 + 288);
    }

    v72 = MEMORY[0x1E69E85E0];

    return sub_1D271066C(v54, v78, v72);
  }
}

uint64_t sub_1D263FA34()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1D2640654;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1D263FB5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D263FB5C()
{
  v45 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  sub_1D23EEBD4(v1, v2);
  sub_1D28724F8();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 416);
  if (v5)
  {
    v7 = *(v0 + 520);
    v39 = *(v0 + 336);
    v41 = *(v0 + 368);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1D28795C8();
    v12 = v11;

    v13 = sub_1D23D7C84(v10, v12, &v44);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    if (v7)
    {
      v14 = 0x696665446C6C7566;
    }

    else
    {
      v14 = 0x69616E626D756874;
    }

    if (v7)
    {
      v15 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v15 = 0xE90000000000006CLL;
    }

    v16 = sub_1D23D7C84(v14, v15, &v44);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did load asset with id: %s, type: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v17 = v39;
    v18 = v41;
  }

  else
  {
    v19 = *(v0 + 368);
    v20 = *(v0 + 336);

    v18 = v19;
    v17 = v20;
  }

  v6(v18, v17);
  v21 = *(v0 + 424);
  v22 = *(v0 + 520);
  v38 = v22;
  v23 = *(v0 + 304);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v36 = *(v0 + 256);
  v37 = *(v0 + 296);
  v26 = *(v0 + 232);
  v35 = *(v0 + 240);
  v27 = *(v0 + 184);
  v40 = *(v0 + 264);
  v42 = *(v0 + 176);
  *(v0 + 518) = 0;
  *(v0 + 519) = v22;
  v28 = swift_task_alloc();
  *v28 = v23;
  v28[1] = v21;
  KeyPath = swift_getKeyPath();

  sub_1D263DB80(KeyPath);

  *(v0 + 168) = v27;
  v30 = swift_task_alloc();
  *v30 = v23;
  v30[1] = v21;
  swift_getKeyPath();

  sub_1D2871A08();

  swift_beginAccess();
  sub_1D2877EE8();
  swift_endAccess();
  v31 = sub_1D263E148(v27, &unk_1D289A698);
  (*(v25 + 16))(v36, &v27[*(*v27 + 160)], v35, v31);
  sub_1D239A330(v37, v26);
  v32 = *(v24 + 56);
  v32(v26, 0, 1, v40);
  v43 = v38;
  sub_1D2629F60(v26, v36, &v43);
  sub_1D23EEBD4(v37, v42);
  v32(v42, 0, 1, v40);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D2640040()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1D2640DF0;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1D2640168;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2640168()
{
  v45 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);

  sub_1D23EEBD4(v1, v2);
  sub_1D28724F8();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 416);
  if (v5)
  {
    v7 = *(v0 + 520);
    v39 = *(v0 + 336);
    v41 = *(v0 + 368);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1D28795C8();
    v12 = v11;

    v13 = sub_1D23D7C84(v10, v12, &v44);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    if (v7)
    {
      v14 = 0x696665446C6C7566;
    }

    else
    {
      v14 = 0x69616E626D756874;
    }

    if (v7)
    {
      v15 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v15 = 0xE90000000000006CLL;
    }

    v16 = sub_1D23D7C84(v14, v15, &v44);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did load asset with id: %s, type: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v17 = v39;
    v18 = v41;
  }

  else
  {
    v19 = *(v0 + 368);
    v20 = *(v0 + 336);

    v18 = v19;
    v17 = v20;
  }

  v6(v18, v17);
  v21 = *(v0 + 424);
  v22 = *(v0 + 520);
  v38 = v22;
  v23 = *(v0 + 304);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v36 = *(v0 + 256);
  v37 = *(v0 + 296);
  v26 = *(v0 + 232);
  v35 = *(v0 + 240);
  v27 = *(v0 + 184);
  v40 = *(v0 + 264);
  v42 = *(v0 + 176);
  *(v0 + 518) = 0;
  *(v0 + 519) = v22;
  v28 = swift_task_alloc();
  *v28 = v23;
  v28[1] = v21;
  KeyPath = swift_getKeyPath();

  sub_1D263DB80(KeyPath);

  *(v0 + 168) = v27;
  v30 = swift_task_alloc();
  *v30 = v23;
  v30[1] = v21;
  swift_getKeyPath();

  sub_1D2871A08();

  swift_beginAccess();
  sub_1D2877EE8();
  swift_endAccess();
  v31 = sub_1D263E148(v27, &unk_1D289A698);
  (*(v25 + 16))(v36, &v27[*(*v27 + 160)], v35, v31);
  sub_1D239A330(v37, v26);
  v32 = *(v24 + 56);
  v32(v26, 0, 1, v40);
  v43 = v38;
  sub_1D2629F60(v26, v36, &v43);
  sub_1D23EEBD4(v37, v42);
  v32(v42, 0, 1, v40);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D2640654()
{
  v62 = v0;
  v1 = *(v0 + 480);

  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A08();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 416);
    if (v5)
    {
      v7 = *(v0 + 520);
      v57 = *(v0 + 336);
      v60 = *(v0 + 360);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v61 = v9;
      *v8 = 136315394;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v10 = sub_1D28795C8();
      v12 = v11;

      v13 = sub_1D23D7C84(v10, v12, &v61);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      if (v7)
      {
        v14 = 0x696665446C6C7566;
      }

      else
      {
        v14 = 0x69616E626D756874;
      }

      if (v7)
      {
        v15 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v15 = 0xE90000000000006CLL;
      }

      v16 = sub_1D23D7C84(v14, v15, &v61);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1D226E000, v3, v4, "Image request cancelled with id: %s, type: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v9, -1, -1);
      MEMORY[0x1D38A3520](v8, -1, -1);

      v17 = v57;
      v18 = v60;
    }

    else
    {
      v35 = *(v0 + 360);
      v36 = *(v0 + 336);

      v18 = v35;
      v17 = v36;
    }

    v6(v18, v17);
    v38 = *(v0 + 216);
    v37 = *(v0 + 224);
    v39 = *(v0 + 208);
    (*(*(v0 + 272) + 56))(*(v0 + 176), 1, 1, *(v0 + 264));
    (*(v38 + 8))(v37, v39);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v19 = v1;
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A18();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 416);
    if (v22)
    {
      v52 = *(v0 + 520);
      v55 = *(v0 + 336);
      v58 = *(v0 + 352);
      v24 = swift_slowAlloc();
      v54 = v23;
      v25 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v24 = 136315650;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = sub_1D28795C8();
      v28 = v27;

      v29 = sub_1D23D7C84(v26, v28, &v61);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      if (v52)
      {
        v30 = 0x696665446C6C7566;
      }

      else
      {
        v30 = 0x69616E626D756874;
      }

      if (v52)
      {
        v31 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v31 = 0xE90000000000006CLL;
      }

      v32 = sub_1D23D7C84(v30, v31, &v61);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2112;
      v33 = v1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v34;
      *v25 = v34;
      _os_log_impl(&dword_1D226E000, v20, v21, "Image request failed with id: %s, type: %s, error: %@", v24, 0x20u);
      sub_1D22BD238(v25, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v53, -1, -1);
      MEMORY[0x1D38A3520](v24, -1, -1);

      v54(v58, v55);
    }

    else
    {
      v40 = *(v0 + 352);
      v41 = *(v0 + 336);

      v23(v40, v41);
    }

    v42 = *(v0 + 424);
    v43 = *(v0 + 520);
    v44 = *(v0 + 304);
    v45 = *(v0 + 272);
    v59 = *(v0 + 264);
    v46 = *(v0 + 184);
    v56 = *(v0 + 176);
    *(v0 + 516) = 3;
    *(v0 + 517) = v43;
    v47 = swift_task_alloc();
    *v47 = v44;
    v47[1] = v42;
    KeyPath = swift_getKeyPath();

    sub_1D263DB80(KeyPath);

    *(v0 + 160) = v46;
    v49 = swift_task_alloc();
    *v49 = v44;
    v49[1] = v42;
    swift_getKeyPath();

    sub_1D2871A08();

    swift_beginAccess();
    sub_1D2877EE8();
    swift_endAccess();
    sub_1D263E148(v46, &unk_1D289A698);

    (*(v45 + 56))(v56, 1, 1, v59);
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1D2640DF0()
{
  v62 = v0;
  v1 = *(v0 + 504);

  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A08();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 416);
    if (v5)
    {
      v7 = *(v0 + 520);
      v57 = *(v0 + 336);
      v60 = *(v0 + 360);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v61 = v9;
      *v8 = 136315394;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v10 = sub_1D28795C8();
      v12 = v11;

      v13 = sub_1D23D7C84(v10, v12, &v61);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      if (v7)
      {
        v14 = 0x696665446C6C7566;
      }

      else
      {
        v14 = 0x69616E626D756874;
      }

      if (v7)
      {
        v15 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v15 = 0xE90000000000006CLL;
      }

      v16 = sub_1D23D7C84(v14, v15, &v61);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1D226E000, v3, v4, "Image request cancelled with id: %s, type: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v9, -1, -1);
      MEMORY[0x1D38A3520](v8, -1, -1);

      v17 = v57;
      v18 = v60;
    }

    else
    {
      v35 = *(v0 + 360);
      v36 = *(v0 + 336);

      v18 = v35;
      v17 = v36;
    }

    v6(v18, v17);
    v38 = *(v0 + 216);
    v37 = *(v0 + 224);
    v39 = *(v0 + 208);
    (*(*(v0 + 272) + 56))(*(v0 + 176), 1, 1, *(v0 + 264));
    (*(v38 + 8))(v37, v39);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v19 = v1;
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A18();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 416);
    if (v22)
    {
      v52 = *(v0 + 520);
      v55 = *(v0 + 336);
      v58 = *(v0 + 352);
      v24 = swift_slowAlloc();
      v54 = v23;
      v25 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v24 = 136315650;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = sub_1D28795C8();
      v28 = v27;

      v29 = sub_1D23D7C84(v26, v28, &v61);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      if (v52)
      {
        v30 = 0x696665446C6C7566;
      }

      else
      {
        v30 = 0x69616E626D756874;
      }

      if (v52)
      {
        v31 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v31 = 0xE90000000000006CLL;
      }

      v32 = sub_1D23D7C84(v30, v31, &v61);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2112;
      v33 = v1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v34;
      *v25 = v34;
      _os_log_impl(&dword_1D226E000, v20, v21, "Image request failed with id: %s, type: %s, error: %@", v24, 0x20u);
      sub_1D22BD238(v25, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v53, -1, -1);
      MEMORY[0x1D38A3520](v24, -1, -1);

      v54(v58, v55);
    }

    else
    {
      v40 = *(v0 + 352);
      v41 = *(v0 + 336);

      v23(v40, v41);
    }

    v42 = *(v0 + 424);
    v43 = *(v0 + 520);
    v44 = *(v0 + 304);
    v45 = *(v0 + 272);
    v59 = *(v0 + 264);
    v46 = *(v0 + 184);
    v56 = *(v0 + 176);
    *(v0 + 516) = 3;
    *(v0 + 517) = v43;
    v47 = swift_task_alloc();
    *v47 = v44;
    v47[1] = v42;
    KeyPath = swift_getKeyPath();

    sub_1D263DB80(KeyPath);

    *(v0 + 160) = v46;
    v49 = swift_task_alloc();
    *v49 = v44;
    v49[1] = v42;
    swift_getKeyPath();

    sub_1D2871A08();

    swift_beginAccess();
    sub_1D2877EE8();
    swift_endAccess();
    sub_1D263E148(v46, &unk_1D289A698);

    (*(v45 + 56))(v56, 1, 1, v59);
  }

  v50 = *(v0 + 8);

  return v50();
}

char *_PhotoAsset.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = *(*v0 + 120);
  v2 = sub_1D2878F18();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  v3 = *(*v0 + 160);
  v4 = sub_1D2871818();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 184);
  v6 = sub_1D2871798();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  sub_1D22BD238(&v0[*(*v0 + 200)], &unk_1EC6DE5A0, &unk_1D287F0E0);

  v7 = *(*v0 + 224);
  v8 = sub_1D2871A28();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t _PhotoAsset.__deallocating_deinit()
{
  _PhotoAsset.deinit();

  return swift_deallocClassInstance();
}

uint64_t _PhotoAsset<>.hash(into:)(uint64_t a1)
{
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D2877F08();
}

uint64_t _PhotoAsset<>.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26419EC()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D2641A98(uint64_t a1)
{
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D2877F08();
}

uint64_t sub_1D2641B2C()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D2641BD4(uint64_t *a1, uint64_t *a2)
{
  v57 = sub_1D2871798();
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v44 - v7;
  v8 = *a1;
  v9 = *a2;
  v10 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  v61 = v10;
  v62 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v11 = *(*v8 + 224);
  v64 = v8;
  v12 = sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for _PhotoAsset<A>);
  v49 = v11;
  sub_1D28719E8();

  v13 = *(*v8 + 184);
  swift_beginAccess();
  v14 = *(v4 + 16);
  v55 = v8;
  v48 = v13;
  v15 = v8 + v13;
  v16 = v57;
  v14(v58, v15, v57);
  v52 = v10;
  v59 = v10;
  v60 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v17 = *(*v9 + 224);
  v63 = v9;
  v47 = v17;
  v51 = v12;
  sub_1D28719E8();

  v18 = *(*v9 + 184);
  swift_beginAccess();
  v54 = v9;
  v46 = v18;
  v19 = v56;
  v20 = v16;
  v50 = v14;
  v14(v56, v9 + v18, v16);
  v21 = v58;
  LOBYTE(v18) = sub_1D2871738();
  v22 = *(v4 + 8);
  v22(v19, v20);
  v53 = v4 + 8;
  v23 = (v22)(v21, v20);
  if (v18)
  {
    goto LABEL_2;
  }

  MEMORY[0x1EEE9AC00](v23);
  v45 = v22;
  v25 = v52;
  *(&v44 - 2) = v52;
  *(&v44 - 1) = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v26 = v55;
  v65 = v55;
  sub_1D28719E8();

  v27 = v26 + v48;
  v28 = v57;
  v29 = v58;
  v30 = v50;
  v31 = (v50)(v58, v27, v57);
  MEMORY[0x1EEE9AC00](v31);
  *(&v44 - 2) = v25;
  *(&v44 - 1) = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v32 = v54;
  v65 = v54;
  sub_1D28719E8();

  v33 = v32 + v46;
  v34 = v45;
  v35 = v56;
  v30(v56, v33, v28);
  v36 = sub_1D2871748();
  v34(v35, v28);
  v34(v29, v28);
  if (v36)
  {
LABEL_4:
    v24 = 0;
    return v24 & 1;
  }

  v38 = v58;
  sub_1D263B984(v58);
  sub_1D263B984(v35);
  v39 = sub_1D2871738();
  v40 = v57;
  v34(v35, v57);
  v34(v38, v40);
  if ((v39 & 1) == 0)
  {
    v41 = v58;
    sub_1D263B984(v58);
    sub_1D263B984(v35);
    v42 = sub_1D2871748();
    v43 = v57;
    v34(v35, v57);
    v34(v41, v43);
    if ((v42 & 1) == 0)
    {
      v24 = MEMORY[0x1D389A250](v55 + *(*v55 + 160), v54 + *(*v54 + 160));
      return v24 & 1;
    }

    goto LABEL_4;
  }

LABEL_2:
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1D2642160()
{
  KeyPath = swift_getKeyPath();
  sub_1D263DB80(KeyPath);

  return *(v0 + *(*v0 + 216));
}

uint64_t sub_1D26421EC()
{
  KeyPath = swift_getKeyPath();
  sub_1D263DB80(KeyPath);

  v2 = *(*v0 + 192);
  swift_beginAccess();
  return *(v0 + v2);
}

id sub_1D26422B8(int a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v30 = a1;
  v32 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D2878AA8();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30, &unk_1D28819F0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v28 - v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  swift_beginAccess();
  v16 = *(a2 + 80);
  if (v16)
  {
    sub_1D22BCFD0(0, &unk_1EC6DF5C0, 0x1E69786A8);
    sub_1D2870F78();
    v33 = v16;
    v28 = sub_1D233F280(v33);
    v20 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
    v21 = v20;
    if (v30)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    [v20 setVariant_];
    sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
    (*(v29 + 104))(v11, *MEMORY[0x1E69E8098], v9);
    sub_1D2877B58();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D2643544(&qword_1ED89CD60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50, &unk_1D2881A40);
    sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50, &unk_1D2881A40, MEMORY[0x1E69E6328]);
    sub_1D2879088();
    v23 = sub_1D2878AD8();
    [v21 setResultHandlerQueue_];

    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D2643470;
    *(v24 + 24) = v15;
    aBlock[4] = sub_1D233F344;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23372C0;
    aBlock[3] = &block_descriptor_31;
    v25 = _Block_copy(aBlock);
    sub_1D2870F78();

    v26 = v28;
    [v28 exportWithOptions:v21 completionHandler:v25];
    _Block_release(v25);
    v27 = [v26 progress];

    return v27;
  }

  else
  {
    sub_1D233F184();
    v17 = swift_allocError();
    *v18 = 0;
    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    sub_1D2870F78();
    sub_1D2638210(v14, a3);
    sub_1D22BD238(v14, &qword_1EC6DAE30, &unk_1D28819F0);

    return 0;
  }
}

id sub_1D264280C(int a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  LODWORD(v41) = a1;
  v4 = *v3;
  v45 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878AA8();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30, &unk_1D28819F0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v37 - v11);
  v13 = *(v4 + 80);
  v14 = sub_1D2878F18();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v18 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v37 - v20);
  v22 = *(v4 + 120);
  swift_beginAccess();
  (*(v15 + 16))(v17, &v3[v22], v14);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    (*(v15 + 8))(v17, v14);
    sub_1D233F184();
    v23 = swift_allocError();
    *v24 = 0;
    *v12 = v23;
    swift_storeEnumTagMultiPayload();
    v46(v12);
    sub_1D22BD238(v12, &qword_1EC6DAE30, &unk_1D28819F0);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v21, v17, v13);
    v25 = *v21;
    sub_1D22BCFD0(0, &unk_1EC6DF5C0, 0x1E69786A8);
    v26 = v25;
    v27 = sub_1D233F280(v26);

    v29 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
    v38 = v29;
    if (v41)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    [v29 setVariant_];
    v41 = sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
    v37 = "shareableImage()";
    (*(v39 + 104))(v42, *MEMORY[0x1E69E8098], v40);
    sub_1D2877B58();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D2643544(&qword_1ED89CD60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50, &unk_1D2881A40);
    sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50, &unk_1D2881A40, MEMORY[0x1E69E6328]);
    sub_1D2879088();
    v31 = sub_1D2878AD8();
    v32 = v38;
    [v38 setResultHandlerQueue_];

    v33 = swift_allocObject();
    v34 = v47;
    *(v33 + 16) = v46;
    *(v33 + 24) = v34;
    aBlock[4] = sub_1D2643590;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23372C0;
    aBlock[3] = &block_descriptor_64;
    v35 = _Block_copy(aBlock);
    sub_1D2870F78();

    [v27 exportWithOptions:v32 completionHandler:v35];
    _Block_release(v35);
    v36 = [v27 progress];

    (*(v18 + 8))(v21, v13);
    return v36;
  }
}

void sub_1D2642FAC(uint64_t a1)
{
  sub_1D2878F18();
  if (v1 <= 0x3F)
  {
    sub_1D2871818();
    if (v2 <= 0x3F)
    {
      sub_1D2871798();
      if (v3 <= 0x3F)
      {
        sub_1D22D0510(319);
        if (v4 <= 0x3F)
        {
          sub_1D2871A28();
          if (v5 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1D26431E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BDFF8;

  return sub_1D263C278(a1, v5, v4);
}

uint64_t sub_1D264329C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BC8FC;

  return sub_1D23E77CC(a1, v4, v5, v8, v9, v6, v7);
}

uint64_t sub_1D264337C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BDFF8;

  return sub_1D263D0D0(a1, v5, v4);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D2643490()
{
  result = qword_1EC6DF678;
  if (!qword_1EC6DF678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D2643544(&qword_1EC6DF510, type metadata accessor for PlaygroundImage, &protocol conformance descriptor for PlaygroundImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF678);
  }

  return result;
}

uint64_t sub_1D2643544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D26435AC()
{
  result = qword_1EC6DF680;
  if (!qword_1EC6DF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF680);
  }

  return result;
}

void sub_1D2643600(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = v2;

    sub_1D264698C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2643750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_1D2645FD4();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }

  return (v10)(v14[0], v4);
}

double sub_1D2643A0C(uint64_t a1)
{
  v2 = sub_1D2870F68();
  v3 = sub_1D233851C(v2, a1);

  if (v3)
  {

    sub_1D2646654(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2643B64()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v29 = v1;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  v27 = v11;
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  v25 = *(v3 + 16);
  v25(v7, v1 + v12, v2);
  (*(v3 + 56))(v7, 0, 1, v2);
  sub_1D2647710(v7, v10);
  sub_1D22BD238(v7, &qword_1EC6D9A30, &qword_1D287EFC0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6D9A30, &qword_1D287EFC0);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  v13 = sub_1D2871F78();
  v14 = *(v3 + 8);
  v14(v10, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1D2643F7C();
  if ((v15 & 1) == 0)
  {
    sub_1D264A47C(type metadata accessor for SketchConditioningImage, type metadata accessor for SketchConditioningImage);
    if ((v16 & 1) == 0)
    {
      swift_getKeyPath();
      v28 = v1;
      sub_1D28719E8();

      sub_1D2870F78();
      v17 = sub_1D23C6B54();

      v18 = *(v17 + 56);

      if (v18 != 1)
      {
        goto LABEL_8;
      }
    }
  }

  swift_getKeyPath();
  v28 = v1;
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v26;
  v25(v26, v20, v2);
  LOBYTE(v19) = sub_1D2871F78();
  v14(v21, v2);
  v22 = v19 ^ 1;
  return v22 & 1;
}

void sub_1D2643F7C()
{
  v1 = type metadata accessor for PhotosPersonAsset(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SketchConditioningImage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + 56) + 32);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    sub_1D2870F68();
    v10 = 0;
    while (v10 < *(v7 + 16))
    {
      sub_1D22D7044(v9, v14);
      sub_1D22D7044(v14, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3F0, &qword_1D289AA50);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_1D22D7044(v14, v13);
        if (!swift_dynamicCast())
        {

          __swift_destroy_boxed_opaque_existential_0(v14);
          return;
        }

        sub_1D264BE1C(v6, type metadata accessor for SketchConditioningImage);
      }

      sub_1D22D79FC(v14, v13);
      if (swift_dynamicCast())
      {

        sub_1D264BE1C(v3, type metadata accessor for PhotosPersonAsset);
        return;
      }

      ++v10;
      v9 += 40;
      if (v8 == v10)
      {

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D26441D0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  return *(v2 + *a2);
}

int *sub_1D2644270@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v33) = a2;
  v36 = a1;
  v5 = sub_1D2872008();
  v34 = v5;
  v6 = *(v5 - 8);
  v42 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_weakInit();
  v35 = *(v6 + 16);
  v35(a3, a1, v5);
  v9 = sub_1D264A138();
  v40 = v10;
  v41 = v9;
  sub_1D264A47C(type metadata accessor for PersonConditioningImage, type metadata accessor for PersonConditioningImage);
  v38 = v11;
  sub_1D2643F7C();
  v37 = v12;
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1D2878568();
  sub_1D2870F78();
  v14 = sub_1D2878558();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  LOBYTE(v5) = v33;
  *(v15 + 40) = v33;

  v17 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2870F78();
  v18 = sub_1D2878558();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = MEMORY[0x1E69E85E0];
  *(v19 + 32) = v17;
  *(v19 + 40) = v5;
  *(v19 + 48) = sub_1D264BFD4;
  *(v19 + 56) = v8;

  sub_1D2877528();

  v20 = v44;
  v33 = v43;
  LOBYTE(v14) = v45;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v39;
  v23 = v34;
  v35(v39, v36, v34);
  v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  (*(v6 + 32))(v25 + v24, v22, v23);
  result = type metadata accessor for PhotoSharingConfirmationParams(0);
  v27 = (a3 + result[5]);
  v28 = v40;
  *v27 = v41;
  v27[1] = v28;
  v29 = v37;
  *(a3 + result[6]) = v38 & 1;
  *(a3 + result[7]) = (v29 & 1) == 0;
  v30 = a3 + result[8];
  *v30 = v33;
  *(v30 + 8) = v20;
  *(v30 + 16) = v14;
  v31 = (a3 + result[9]);
  *v31 = sub_1D264C000;
  v31[1] = v25;
  v32 = (a3 + result[10]);
  *v32 = 0;
  v32[1] = 0;
  return result;
}

double sub_1D2644628()
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  sub_1D2870F68();
  return result;
}

char *sub_1D26446D4()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v39 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = v31 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - v7;
  sub_1D2871FE8();
  v31[3] = v46;
  v31[2] = v45;
  v31[1] = __swift_project_boxed_opaque_existential_1(v44, v45);
  v9 = *(v0 + 40);
  v40 = v0;
  v10 = __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  result = sub_1D23B5D64(v10);
  v12 = result;
  v38 = *(result + 2);
  if (!v38)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v25 = sub_1D233DB78(v14);

    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = sub_1D27CE888(*(v25 + 16), 0);
      sub_1D260D710(&v43, &v27[(*(v2 + 80) + 32) & ~*(v2 + 80)], v26, v25);
      v29 = v28;
      sub_1D23EEDB0(v43);
      if (v29 == v26)
      {
LABEL_25:
        v43 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB70, &qword_1D289AAB0);
        sub_1D249AF34(&qword_1EC6D75A0, &qword_1EC6DAB70, &qword_1D289AAB0);
        v30 = sub_1D2878308();

        __swift_destroy_boxed_opaque_existential_0(v44);
        return v30;
      }

      __break(1u);
    }

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v13 = 0;
  v36 = v2 + 16;
  v34 = (v2 + 8);
  v14 = MEMORY[0x1E69E7CC0];
  v35 = (v2 + 32);
  v37 = v2;
  v32 = result;
  while (v13 < *(v12 + 2))
  {
    v42 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v41 = *(v2 + 72);
    (*(v2 + 16))(v8, &v12[v42 + v41 * v13], v1);
    sub_1D26474F0(v8);
    v17 = v16;
    if (qword_1ED8A4928 == -1)
    {
      if (sub_1D23CF768())
      {
        goto LABEL_9;
      }
    }

    else
    {
      swift_once();
      if (sub_1D23CF768())
      {
LABEL_9:
        if (v17)
        {
          goto LABEL_14;
        }

        v15 = *v34;
        goto LABEL_4;
      }
    }

    v18 = v8;
    v19 = v33;
    sub_1D2871FD8();
    sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
    v20 = sub_1D2877F98();
    v15 = *v34;
    (*v34)(v19, v1);
    v8 = v18;
    if (v17)
    {
      v12 = v32;
      if ((v20 & 1) == 0)
      {
LABEL_14:
        v21 = *v35;
        (*v35)(v39, v8, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D885C(0, *(v14 + 16) + 1, 1);
          v14 = v43;
        }

        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D23D885C((v23 > 1), v24 + 1, 1);
          v14 = v43;
        }

        *(v14 + 16) = v24 + 1;
        result = (v21)(v14 + v42 + v24 * v41, v39, v1);
        goto LABEL_5;
      }
    }

    else
    {
      v12 = v32;
    }

LABEL_4:
    result = v15(v8, v1);
LABEL_5:
    ++v13;
    v2 = v37;
    if (v38 == v13)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2644B70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = sub_1D2872008();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  sub_1D2647710(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D22BD238(v9, &qword_1EC6D9A30, &qword_1D287EFC0);
  }

  (*(v11 + 32))(v16, v9, v10);
  if ((sub_1D2871F78() & 1) == 0)
  {
    v20 = *(v11 + 16);
    goto LABEL_8;
  }

  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v29 = v2;
  v27[1] = sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  v27[2] = v18;
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v20 = *(v11 + 16);
  v20(v13, v2 + v19, v10);
  LOBYTE(v19) = sub_1D2871F78();
  v21 = v13;
  v22 = *(v11 + 8);
  v22(v21, v10);
  if ((v19 & 1) != 0 || (sub_1D2643F7C(), (v23 & 1) == 0) && (sub_1D264A47C(type metadata accessor for SketchConditioningImage, type metadata accessor for SketchConditioningImage), (v24 & 1) == 0))
  {
    if (sub_1D2647D00(v16))
    {
      return (v22)(v16, v10);
    }

LABEL_8:
    v20(v6, v16, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    sub_1D26483DC(v6);
    sub_1D22BD238(v6, &qword_1EC6D9A30, &qword_1D287EFC0);
    return (*(v11 + 8))(v16, v10);
  }

  swift_getKeyPath();
  v28 = v2;
  sub_1D28719E8();

  if (*(*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles) + 16) == 1)
  {
    swift_getKeyPath();
    v28 = v2;
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D23370A0();
      swift_unknownObjectRelease();
    }

    return (v22)(v16, v10);
  }

  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation;
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) == 1)
  {
    result = (v22)(v16, v10);
    *(v2 + v25) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v27[-2] = v2;
    LOBYTE(v27[-1]) = 1;
    v28 = v2;
    sub_1D28719D8();

    return (v22)(v16, v10);
  }

  return result;
}

void sub_1D2645074(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2645178(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D9A30, &qword_1D287EFC0);
  v7 = sub_1D264B8F0(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D9A30, &qword_1D287EFC0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D264BC10(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D9A30, &qword_1D287EFC0);
}

double sub_1D2645364(uint64_t a1)
{
  if (*(v1 + 72) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D26454B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a4;
  v6 = v4;
  v8 = sub_1D2872008();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  (*(v9 + 16))(v11, v4 + v12, v8);
  sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
  v13 = sub_1D2877F98();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (v13)
  {
    swift_beginAccess();
    (*(v9 + 24))(v6 + v12, a1, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v6;
    v17[-1] = a1;
    v17[1] = v6;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }

  return (v14)(a1, v8);
}

void *sub_1D2645728()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v31 - v5;
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v44 = v0;
  v14 = sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v41 = *(v7 + 16);
  v42 = v7 + 16;
  v41(v12, v0 + v15, v6);
  v16 = sub_1D2871F78();
  v38 = *(v7 + 8);
  v38(v12, v6);
  if ((v16 & 1) == 0 || (swift_getKeyPath(), v43 = v1, sub_1D28719E8(), , sub_1D2870F78(), v17 = sub_1D23C6B54(), , v18 = *(v17 + 56), , v18 != 1))
  {
    swift_getKeyPath();
    v43 = v1;
    sub_1D28719E8();

    v29 = v40;
    v41(v40, v1 + v15, v6);
    (*(v7 + 56))(v29, 0, 1, v6);
LABEL_14:
    sub_1D2644B70(v29);
    return sub_1D22BD238(v29, &qword_1EC6D9A30, &qword_1D287EFC0);
  }

  v37 = v14;
  v40 = v13;
  v19 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = sub_1D23B5D64(v19);
  v33 = result[2];
  if (!v33)
  {
LABEL_11:

    v30 = 1;
    v29 = v39;
LABEL_13:
    (*(v7 + 56))(v29, v30, 1, v6);
    goto LABEL_14;
  }

  v21 = 0;
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles;
  v35 = result;
  v36 = v7;
  v32 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles;
  while (v21 < result[2])
  {
    v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v24 = *(v7 + 72);
    v34 = v21 + 1;
    v41(v9, result + v23 + v24 * v21, v6);
    swift_getKeyPath();
    v43 = v1;
    sub_1D28719E8();

    v25 = *(v1 + v22);
    v26 = *(v25 + 16);
    v27 = v25 + v23;
    sub_1D2870F68();
    v28 = v26 + 1;
    while (--v28)
    {
      sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
      v27 += v24;
      if (sub_1D2877F98())
      {

        v7 = v36;
        v29 = v39;
        (*(v36 + 32))(v39, v9, v6);
        v30 = 0;
        goto LABEL_13;
      }
    }

    v38(v9, v6);
    v21 = v34;
    result = v35;
    v7 = v36;
    v22 = v32;
    if (v34 == v33)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2645C30()
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D2645CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  *a2 = *(v3 + 72);
  return sub_1D2870F78();
}

uint64_t sub_1D2645DAC()
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2645E54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 88);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1D2645F04(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D2645FD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v21 = &v18 - v3;
  v4 = sub_1D2872008();
  v22 = *(v4 - 8);
  v5 = v22;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v25 = v0;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v19 = v12;
  v13(v10, v1 + v12, v4);
  swift_getKeyPath();
  v24 = v1;
  v20 = v11;
  sub_1D28719E8();

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v13(v7, v1 + v14, v4);
  sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
  LOBYTE(v14) = sub_1D2877F98();
  v15 = *(v22 + 8);
  v15(v7, v4);
  result = (v15)(v10, v4);
  if ((v14 & 1) == 0)
  {
    swift_getKeyPath();
    v23 = v1;
    sub_1D28719E8();

    v17 = v21;
    v13(v21, v1 + v19, v4);
    (*(v22 + 56))(v17, 0, 1, v4);
    sub_1D2644B70(v17);
    return sub_1D22BD238(v17, &qword_1EC6D9A30, &qword_1D287EFC0);
  }

  return result;
}

uint64_t sub_1D2646354@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1D2872008();
  return (*(*(v7 - 8) + 16))(a3, v9 + v6, v7);
}

uint64_t sub_1D264644C(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D2643750(v5);
}

uint64_t sub_1D2646518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_1D2645FD4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2646654(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles) = a1;

  swift_getKeyPath();
  v11[1] = v2;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  v8 = sub_1D2872008();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, v2 + v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_1D2644B70(v6);
  return sub_1D22BD238(v6, &qword_1EC6D9A30, &qword_1D287EFC0);
}

uint64_t sub_1D2646868@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v7 = *a3;
  swift_beginAccess();
  v8 = sub_1D2872008();
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

void sub_1D264698C(char a1)
{
  v2 = v1;
  v44 = type metadata accessor for SketchConditioningImage(0);
  MEMORY[0x1EEE9AC00](v44);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SceneConditioningImage(0);
  MEMORY[0x1EEE9AC00](v45);
  v46 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonConditioningImage(0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for PhotosPersonAsset(0);
  MEMORY[0x1EEE9AC00](v47);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2872008();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  if (a1)
  {
    v41[5] = v7;
    v50[0] = v2;
    v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
    v16 = sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    if ((*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) & 1) == 0)
    {
      swift_getKeyPath();
      v50[0] = v2;
      sub_1D28719E8();

      v17 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle) == 1;
      v41[4] = v15;
      if (v17)
      {
        v43 = v5;
        KeyPath = swift_getKeyPath();
        v42 = v41;
        MEMORY[0x1EEE9AC00](KeyPath);
        v41[-2] = v2;
        LOBYTE(v41[-1]) = 0;
        v50[0] = v2;
        sub_1D28719D8();
        v41[3] = 0;

        swift_getKeyPath();
        v50[0] = v2;
        sub_1D28719E8();

        v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
        swift_beginAccess();
        (*(v12 + 16))(v14, v2 + v19, v11);
        LOBYTE(v19) = sub_1D2871F78();
        (*(v12 + 8))(v14, v11);
        if (v19)
        {
          swift_getKeyPath();
          v50[0] = v2;
          sub_1D28719E8();

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v21 = Strong;
            v22 = *(sub_1D22FC2DC() + 32);
            sub_1D2870F68();

            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = v21;
              v41[2] = v16;
              v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___imageConditioningRepresentationsManager;
              v41[1] = v22;
              v25 = v22 + 32;
              v26 = v43;
              v27 = v46;
              do
              {
                sub_1D22D7044(v25, v50);
                sub_1D22D7044(v50, v49);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
                v28 = swift_dynamicCast();
                v29 = v48;
                if (v28)
                {
                  v30 = type metadata accessor for PhotosPersonAsset;
                  v31 = v10;
                }

                else
                {
                  sub_1D22D7044(v50, v49);
                  if (swift_dynamicCast())
                  {
                    v30 = type metadata accessor for PersonConditioningImage;
                    v31 = v29;
                  }

                  else
                  {
                    sub_1D22D7044(v50, v49);
                    if (swift_dynamicCast())
                    {
                      v30 = type metadata accessor for SceneConditioningImage;
                      v31 = v27;
                    }

                    else
                    {
                      sub_1D22D7044(v50, v49);
                      if (!swift_dynamicCast())
                      {
                        __swift_destroy_boxed_opaque_existential_0(v50);
                        goto LABEL_18;
                      }

                      v30 = type metadata accessor for SketchConditioningImage;
                      v31 = v26;
                    }
                  }
                }

                sub_1D264BE1C(v31, v30);
                v32 = *(v42 + v24);
                v34 = v51;
                v33 = v52;
                v35 = __swift_project_boxed_opaque_existential_1(v50, v51);
                sub_1D2870F78();
                sub_1D2685CE8(v35, v32, v34, v33);

                __swift_destroy_boxed_opaque_existential_0(v50);
                v26 = v43;
                v27 = v46;
LABEL_18:
                v25 += 40;
                --v23;
              }

              while (v23);
            }

            swift_unknownObjectRelease();
          }
        }
      }

      swift_getKeyPath();
      v50[0] = v2;
      sub_1D28719E8();

      v36 = swift_unknownObjectWeakLoadStrong();
      if (v36)
      {
        v37 = v36;
        v38 = sub_1D22FECC4();
        swift_getKeyPath();
        v50[0] = v38;
        sub_1D28719E8();

        v39 = *(v38 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle);

        if ((v39 & 1) == 0)
        {
          if (*(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask))
          {
            v40 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v40);
            v41[-2] = v37;
            LOBYTE(v41[-1]) = 0;
            v50[0] = v37;
            sub_1D264BDB4(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
            sub_1D28719D8();
          }

          else
          {
            *(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) = 0;
          }
        }

        swift_getKeyPath();
        v50[0] = v37;
        sub_1D264BDB4(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
        sub_1D28719E8();

        if (*(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) == 1)
        {
          swift_getKeyPath();
          v50[0] = v37;
          sub_1D28719E8();

          if ((*(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) & 1) == 0)
          {
            sub_1D232F828();
          }
        }

        goto LABEL_33;
      }
    }
  }

  else
  {
    v50[0] = v2;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) == 1)
    {
      swift_getKeyPath();
      v50[0] = v2;
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D23322C0();
LABEL_33:
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1D264730C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = a2;
  sub_1D264698C(v3);
}

uint64_t sub_1D264736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1D2872008();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  return sub_1D26454B4(v14, a5, a6, a7);
}

uint64_t sub_1D2647458(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_1D2872008();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

void sub_1D26474F0(uint64_t a1)
{
  v3 = sub_1D2872008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v1;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles);
  v11 = *(v7 + 16);
  v8 = (v4 + 8);
  sub_1D2870F68();
  v9 = 0;
  while (1)
  {
    if (v11 == v9)
    {
LABEL_6:

      return;
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v3);
    if (MEMORY[0x1D389AA00](v6, a1))
    {

      (*v8)(v6, v3);
      return;
    }

    ++v9;
    v10 = sub_1D2871E88();
    (*v8)(v6, v3);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1D2647710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_1D2872008();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  sub_1D22BD1D0(a1, v7, &qword_1EC6D9A30, &qword_1D287EFC0);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    swift_getKeyPath();
    v37 = v3;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
    swift_beginAccess();
    (*(v9 + 16))(v16, v3 + v18, v8);
    v19 = v16;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1D22BD238(v7, &qword_1EC6D9A30, &qword_1D287EFC0);
    }
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    v19 = v16;
  }

  sub_1D26474F0(v19);
  if ((v20 & 1) == 0)
  {
    swift_getKeyPath();
    v36 = v3;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    v22 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles);
    if (*(v22 + 16))
    {
      v21 = v35;
      (*(v9 + 16))(v35, v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);
      (*(v9 + 8))(v19, v8);
      return (*(v9 + 56))(v21, 0, 1, v8);
    }

    (*(v9 + 8))(v19, v8);
    return (*(v9 + 56))(v35, 1, 1, v8);
  }

  if (sub_1D2649140(v19))
  {
    v21 = v35;
    (*(v9 + 32))(v35, v19, v8);
    return (*(v9 + 56))(v21, 0, 1, v8);
  }

  swift_getKeyPath();
  v36 = v3;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v25 = v33;
  v34 = *(v9 + 16);
  v34(v33, v3 + v24, v8);
  LOBYTE(v24) = sub_1D2649140(v25);
  v26 = *(v9 + 8);
  v26(v25, v8);
  if (v24)
  {
    v26(v19, v8);
    return (*(v9 + 56))(v35, 1, 1, v8);
  }

  v32 = v19;
  v33 = v26;
  v27 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  result = sub_1D23B5D64(v27);
  v28 = result;
  v29 = *(result + 16);
  if (!v29)
  {
LABEL_20:
    (v33)(v32, v8);

    return (*(v9 + 56))(v35, 1, 1, v8);
  }

  v30 = 0;
  while (v30 < *(v28 + 16))
  {
    v34(v11, v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30, v8);
    sub_1D26474F0(v11);
    if (v31)
    {
      (v33)(v32, v8);

      v21 = v35;
      (*(v9 + 32))(v35, v11, v8);
      return (*(v9 + 56))(v21, 0, 1, v8);
    }

    ++v30;
    result = (v33)(v11, v8);
    if (v29 == v30)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2647D00(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1D2877B48();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2877B68();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D2877BA8();
  v38 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  sub_1D2870F78();
  v16 = sub_1D23C6B54();

  v17 = *(v16 + 56);

  if (v17 == 1)
  {
    v35 = 1;
    v37 = a1;
    swift_getKeyPath();
    aBlock[0] = v2;
    sub_1D28719E8();

    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover;
    v19 = v2[OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover];
    v36 = v6;
    if (v19)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v33 - 2) = v2;
      *(&v33 - 8) = 0;
      aBlock[0] = v2;
      sub_1D28719D8();
    }

    else
    {
      v2[OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover] = 0;
      swift_getKeyPath();
      aBlock[0] = v2;
      sub_1D28719E8();

      if (v2[v18] == 1)
      {
        swift_getKeyPath();
        aBlock[0] = v2;
        sub_1D28719E8();

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1D23322C0();
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1D24614C4();
    v34 = sub_1D2878AB8();
    sub_1D2877B88();
    v33 = v15;
    sub_1D2877BC8();
    v38 = *(v38 + 8);
    (v38)(v12, v45);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v19;
    aBlock[4] = sub_1D264B8B4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_32;
    v23 = _Block_copy(aBlock);
    sub_1D2870F78();
    v24 = v39;
    sub_1D2877B58();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1D264BDB4(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
    sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00);
    v25 = v40;
    v26 = v44;
    sub_1D2879088();
    v28 = v33;
    v27 = v34;
    MEMORY[0x1D38A1510](v33, v24, v25, v23);
    _Block_release(v23);

    (*(v43 + 8))(v25, v26);
    (*(v41 + 8))(v24, v42);
    (v38)(v28, v45);

    v29 = sub_1D2872008();
    v30 = *(v29 - 8);
    v31 = v36;
    (*(v30 + 16))(v36, v37, v29);
    (*(v30 + 56))(v31, 0, 1, v29);
    sub_1D2645178(v31);
    return v35;
  }

  return v17;
}

uint64_t sub_1D26483DC(uint64_t a1)
{
  v89 = sub_1D2871F38();
  v3 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB60, &qword_1D288E890);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v96 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v23 = sub_1D2872008();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v93 = &v75 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  sub_1D2647710(a1, v22);
  v33 = v24[6];
  if (v33(v22, 1, v23) == 1)
  {
    return sub_1D22BD238(v22, &qword_1EC6D9A30, &qword_1D287EFC0);
  }

  v78 = v3;
  v94 = v24 + 6;
  v35 = v24[4];
  v35(v32, v22, v23);
  v98 = v24;
  v99 = v19;
  v36 = v24[7];
  v77 = v24 + 7;
  v76 = v36;
  v36(v19, 1, 1, v23);
  v37 = *(v1 + 40);
  v79 = v1;
  v38 = __swift_project_boxed_opaque_existential_1((v1 + 16), v37);
  v39 = sub_1D23B5D64(v38);
  MEMORY[0x1EEE9AC00](v39);
  *(&v75 - 2) = v32;
  sub_1D274B77C(sub_1D264BD08, v39, v16);
  v83 = 0;

  v82 = v33;
  v40 = v33(v16, 1, v23);
  v81 = v24 + 4;
  v80 = v35;
  v90 = v32;
  v88 = v23;
  if (v40 != 1)
  {
    v35(v93, v16, v23);
    v43 = v91;
    sub_1D2871F58();
    v44 = v92;
    sub_1D2871F58();
    v45 = *(v86 + 48);
    v46 = v87;
    sub_1D22BD1D0(v43, v87, &qword_1EC6D9D58, &qword_1D287FE70);
    sub_1D22BD1D0(v44, v46 + v45, &qword_1EC6D9D58, &qword_1D287FE70);
    v47 = *(v78 + 48);
    v48 = v89;
    if (v47(v46, 1, v89) == 1)
    {
      sub_1D22BD238(v44, &qword_1EC6D9D58, &qword_1D287FE70);
      sub_1D22BD238(v43, &qword_1EC6D9D58, &qword_1D287FE70);
      v49 = v47(v46 + v45, 1, v48);
      v50 = v99;
      v51 = v80;
      v23 = v88;
      v42 = v79;
      if (v49 == 1)
      {
        sub_1D22BD238(v46, &qword_1EC6D9D58, &qword_1D287FE70);
        v41 = v98;
LABEL_13:
        (v41[1])(v93, v23);
        goto LABEL_14;
      }
    }

    else
    {
      v52 = v85;
      sub_1D22BD1D0(v46, v85, &qword_1EC6D9D58, &qword_1D287FE70);
      v53 = v47(v46 + v45, 1, v48);
      v50 = v99;
      v42 = v79;
      if (v53 != 1)
      {
        v54 = v78;
        v55 = v84;
        (*(v78 + 32))(v84, v46 + v45, v48);
        sub_1D264BDB4(&qword_1EC6DCB68, MEMORY[0x1E696E300], MEMORY[0x1E696E308]);
        v56 = sub_1D2877F98();
        v57 = *(v54 + 8);
        v57(v55, v48);
        sub_1D22BD238(v92, &qword_1EC6D9D58, &qword_1D287FE70);
        sub_1D22BD238(v91, &qword_1EC6D9D58, &qword_1D287FE70);
        v57(v85, v48);
        sub_1D22BD238(v46, &qword_1EC6D9D58, &qword_1D287FE70);
        v41 = v98;
        v51 = v80;
        v23 = v88;
        if (v56)
        {
          goto LABEL_13;
        }

LABEL_11:
        sub_1D22BD238(v50, &qword_1EC6D9A30, &qword_1D287EFC0);
        v51(v50, v93, v23);
        v76(v50, 0, 1, v23);
        goto LABEL_14;
      }

      sub_1D22BD238(v92, &qword_1EC6D9D58, &qword_1D287FE70);
      sub_1D22BD238(v43, &qword_1EC6D9D58, &qword_1D287FE70);
      (*(v78 + 8))(v52, v48);
      v51 = v80;
      v23 = v88;
    }

    sub_1D22BD238(v46, &qword_1EC6DCB60, &qword_1D288E890);
    v41 = v98;
    goto LABEL_11;
  }

  sub_1D22BD238(v16, &qword_1EC6D9A30, &qword_1D287EFC0);
  v41 = v98;
  v42 = v79;
LABEL_14:
  swift_getKeyPath();
  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v100[0] = v42;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  v93 = v58;
  sub_1D28719E8();

  v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v60 = v41[2];
  v61 = v97;
  v60(v97, v42 + v59, v23);
  sub_1D26454B4(v61, &OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__previousStyle, &unk_1D289AA58, sub_1D264BD44);
  v62 = v96;
  sub_1D22BD1D0(v99, v96, &qword_1EC6D9A30, &qword_1D287EFC0);
  v63 = v82;
  if (v82(v62, 1, v23) == 1)
  {
    v64 = v95;
    v60(v95, v90, v23);
    if (v63(v62, 1, v23) != 1)
    {
      sub_1D22BD238(v62, &qword_1EC6D9A30, &qword_1D287EFC0);
    }
  }

  else
  {
    v64 = v95;
    v80(v95, v62, v23);
  }

  sub_1D26454B4(v64, &OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, &unk_1D289A930, sub_1D264BCE4);
  v65 = v98;
  if (*(v42 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel_shouldSaveStyle))
  {
    swift_getKeyPath();
    v100[0] = v42;
    sub_1D28719E8();
    v65 = v98;

    v66 = v97;
    v60(v97, v42 + v59, v88);
    sub_1D24F06A4(v66);
    swift_getKeyPath();
    v100[0] = v42;
    v23 = v88;
    sub_1D28719E8();

    v60(v66, v42 + v59, v23);
    sub_1D2643750(v66);
  }

  swift_getKeyPath();
  v100[0] = v42;
  sub_1D28719E8();

  v67 = *(v42 + 56);
  v102 = v23;
  v103 = sub_1D264BDB4(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
  v60(boxed_opaque_existential_1, v42 + v59, v23);
  type metadata accessor for AddImageConditioningRepresentationOperation();
  v69 = swift_allocObject();
  *(v69 + 32) = 0u;
  *(v69 + 48) = 0u;
  *(v69 + 64) = 0u;
  *(v69 + 80) = 0u;
  *(v69 + 96) = 0u;
  *(v69 + 16) = 0u;
  *(v69 + 112) = 1;
  *(v69 + 114) = 1;
  sub_1D22D79FC(&v101, v100);
  v100[5] = v67;
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D22D3E98(v100, v69 + 16);
  swift_endAccess();
  *(v69 + 113) = 0;
  v70 = *(v42 + 64);
  v71 = v83;
  sub_1D27FDB14();
  if (v71)
  {
    v72 = v71;
    sub_1D2649AB8(v71);
  }

  else
  {
    sub_1D27DF058(v69, v70);
  }

  v73 = v99;
  v74 = v90;

  sub_1D22BD238(v73, &qword_1EC6D9A30, &qword_1D287EFC0);
  return (v65[1])(v74, v23);
}

uint64_t sub_1D2649140(uint64_t a1)
{
  v17[2] = a1;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = sub_1D23B5D64(v6);
  v8 = result;
  v9 = 0;
  v18 = *(result + 16);
  v17[1] = v3 + 16;
  v10 = (v3 + 8);
  while (1)
  {
    v12 = v9;
    if (v18 == v9)
    {
      goto LABEL_8;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    (*(v3 + 16))(v5, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
    v13 = sub_1D2871F98();
    v15 = v14;
    if (v13 == sub_1D2871F98() && v15 == v16)
    {

      (*v10)(v5, v2);
LABEL_8:

      return v18 != v12;
    }

    ++v9;
    v11 = sub_1D2879618();

    result = (*v10)(v5, v2);
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

double sub_1D264933C(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_getKeyPath();
    v16 = v8;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    sub_1D2870F78();
    v9 = sub_1D23C6B54();

    v10 = *(v9 + 56);

    if (v10 == 1)
    {
      swift_getKeyPath();
      v16 = v8;
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = swift_allocObject();
        swift_weakInit();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = a2 & 1;
        sub_1D2870F78();
        sub_1D230B27C(sub_1D264BC9C, v12);

LABEL_7:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_getKeyPath();
      v16 = v8;
      sub_1D28719E8();

      v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
      swift_beginAccess();
      sub_1D22BD1D0(v8 + v13, v5, &qword_1EC6D9A30, &qword_1D287EFC0);
      sub_1D26483DC(v5);
      sub_1D22BD238(v5, &qword_1EC6D9A30, &qword_1D287EFC0);
      v14 = sub_1D2872008();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      sub_1D2645178(v5);
      swift_getKeyPath();
      v15[1] = v8;
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D2336D48();
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_1D2649678@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &qword_1EC6D9A30, &qword_1D287EFC0);
}

double sub_1D2649750(char a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      swift_getKeyPath();
      v14[0] = v10;
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
      sub_1D28719E8();

      v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
      swift_beginAccess();
      sub_1D22BD1D0(v10 + v11, v7, &qword_1EC6D9A30, &qword_1D287EFC0);
      sub_1D26483DC(v7);
      sub_1D22BD238(v7, &qword_1EC6D9A30, &qword_1D287EFC0);
    }

    v12 = sub_1D2872008();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    sub_1D2645178(v7);
    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }

    if (*(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) == 1)
    {
      *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 1;
      sub_1D264698C(1);
LABEL_7:

      return result;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = v10;
    LOBYTE(v14[-1]) = 1;
    v14[4] = v10;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2649A1C(uint64_t a1)
{
  v1 = sub_1D2871F98();
  v3 = v2;
  if (v1 == sub_1D2871F98() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D2879618();
  }

  return v5 & 1;
}

void sub_1D2649AB8(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28725B8();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot select representation with error: %@", v10, 0xCu);
      sub_1D22BD238(v11, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

void sub_1D2649CC8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation);
}

uint64_t sub_1D2649D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &qword_1EC6D9A30, &qword_1D287EFC0);
}

uint64_t sub_1D2649E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &qword_1EC6D9A30, &qword_1D287EFC0);
  return sub_1D2645178(v4);
}

uint64_t sub_1D2649EFC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
  swift_beginAccess();
  sub_1D264BC10(a2, a1 + v4);
  return swift_endAccess();
}

double sub_1D2649F68(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
      sub_1D28719D8();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) = 0;
    }

    swift_getKeyPath();
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D2336D48();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D264A138()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v22 - v2;
  v4 = type metadata accessor for PhotosPersonAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v22 - v9);
  v11 = *(*(v0 + 56) + 32);
  v12 = *(v11 + 16);
  if (v12)
  {
    v22[1] = v11;
    v23 = v22 - v9;
    v13 = v11 + 32;
    v14 = (v5 + 56);
    v15 = (v5 + 48);
    sub_1D2870F68();
    v16 = MEMORY[0x1E69E7CC0];
    v24 = v5;
    do
    {
      sub_1D22D7044(v13, v26);
      sub_1D22D79FC(v26, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      v17 = swift_dynamicCast();
      (*v14)(v3, v17 ^ 1u, 1, v4);
      if ((*v15)(v3, 1, v4) == 1)
      {
        sub_1D22BD238(v3, &unk_1EC6DDDC0, &unk_1D2881BE0);
      }

      else
      {
        sub_1D23DBC5C(v3, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D27CC868(0, v16[2] + 1, 1, v16);
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = sub_1D27CC868((v18 > 1), v19 + 1, 1, v16);
        }

        v16[2] = v19 + 1;
        v5 = v24;
        sub_1D23DBC5C(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v24 + 72) * v19);
      }

      v13 += 40;
      --v12;
    }

    while (v12);

    v10 = v23;
    if (v16[2])
    {
      goto LABEL_12;
    }

LABEL_15:

    return 0;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_1D24A35A4(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v10);

  if (v10[1])
  {
    v20 = *v10;
  }

  else
  {
    v20 = 0;
  }

  sub_1D2870F68();
  sub_1D264BE1C(v10, type metadata accessor for PhotosPersonAsset);
  return v20;
}

void sub_1D264A47C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = *(*(v2 + 56) + 32);
  v8 = *(v7 + 16);
  sub_1D2870F68();
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_1D22D7044(v10, v12);
      sub_1D22D79FC(v12, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      if (swift_dynamicCast())
      {

        sub_1D264BE1C(v6, a2);
        return;
      }

      ++v9;
      v10 += 40;
      if (v8 == v9)
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

void sub_1D264A5CC(char a2@<W3>, _BYTE *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getKeyPath();
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    v7 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation);

    v8 = v7 & a2 & 1;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

double sub_1D264A6C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if ((v8 & 1) == 0)
    {
      swift_getKeyPath();
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
      sub_1D28719E8();

      if (*(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) == 1 && (a5 & 1) != 0)
      {
        a6(v12);
      }
    }
  }

  return result;
}

double sub_1D264A7CC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v12[-16] = v8;
      v12[-8] = 0;
      v13 = v8;
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
      sub_1D28719D8();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) = 0;
    }

    if ((sub_1D2647D00(a2) & 1) == 0)
    {
      v10 = sub_1D2872008();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v5, a2, v10);
      (*(v11 + 56))(v5, 0, 1, v10);
      sub_1D26483DC(v5);
      sub_1D22BD238(v5, &qword_1EC6D9A30, &qword_1D287EFC0);
      swift_getKeyPath();
      v13 = v8;
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D2336D48();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

double sub_1D264AAA8(uint64_t a1)
{
  v1 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_1D23B5D64(v1);

  return result;
}

double (*sub_1D264AAE8(uint64_t a1))()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D264BE7C;
}

double sub_1D264AB44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D2878568();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1D22AE01C(0, 0, v4, &unk_1D289AB18, v7);

  return result;
}

uint64_t sub_1D264AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D264AD00, v6, v5);
}

uint64_t sub_1D264AD00()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D2645728();
    sub_1D28719C8();
  }

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1D264ADD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_1D22729C0(v0 + 80);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  v2 = sub_1D2872008();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, v2);
  v3(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__previousStyle, v2);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding, &qword_1EC6D9A30, &qword_1D287EFC0);
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v5 = sub_1D2871A28();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1D264AF14()
{
  sub_1D264ADD0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StylePickerViewModel(uint64_t a1)
{
  result = qword_1ED8A1620;
  if (!qword_1ED8A1620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D264AFC0(uint64_t a1)
{
  sub_1D2872008();
  if (v1 <= 0x3F)
  {
    sub_1D264B11C(319);
    if (v2 <= 0x3F)
    {
      sub_1D2871A28();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D264B11C(uint64_t a1)
{
  if (!qword_1ED8A6BF0)
  {
    sub_1D2872008();
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8A6BF0);
    }
  }
}

void sub_1D264B174()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v47 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v44 - v10;
  v12 = *(*(v0 + 56) + 32);
  v13 = *(v12 + 16);
  v49 = v3;
  if (v13)
  {
    v45 = v1;
    v14 = v3;
    v15 = v12 + 32;
    v16 = (v14 + 56);
    sub_1D2870F68();
    v17 = 0;
    while (v17 < *(v12 + 16))
    {
      sub_1D22D7044(v15, &v55);
      sub_1D22D7044(&v55, &v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      v18 = v2;
      if (swift_dynamicCast())
      {
        (*v16)(v11, 0, 1, v2);
        sub_1D22BD238(v11, &qword_1EC6D9A30, &qword_1D287EFC0);

        sub_1D22D79FC(&v55, &v52);
        sub_1D22D79FC(&v52, &v55);
        v1 = v45;
        goto LABEL_10;
      }

      ++v17;
      (*v16)(v11, 1, 1, v2);
      sub_1D22BD238(v11, &qword_1EC6D9A30, &qword_1D287EFC0);
      __swift_destroy_boxed_opaque_existential_0(&v55);
      v15 += 40;
      if (v13 == v17)
      {

        v1 = v45;
        v3 = v49;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v18 = v2;
    v56 = v2;
    v57 = sub_1D264BDB4(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
    swift_getKeyPath();
    v51 = v1;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
    swift_beginAccess();
    (*(v3 + 16))(boxed_opaque_existential_1, v1 + v20, v2);
    if (*(&v53 + 1))
    {
      sub_1D22BD238(&v52, &unk_1EC6E1D30, &qword_1D2892FF0);
    }

LABEL_10:
    v22 = v56;
    v21 = v57;
    __swift_project_boxed_opaque_existential_1(&v55, v56);
    v23 = (*(*(v21 + 8) + 16))(v22);
    v25 = v24;
    swift_getKeyPath();
    v26 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
    *&v52 = v1;
    v27 = sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    v45 = v26;
    v44[1] = v27;
    sub_1D28719E8();

    v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
    swift_beginAccess();
    v29 = v49;
    v30 = *(v49 + 16);
    v31 = v1 + v28;
    v32 = v48;
    v30(v48, v31, v18);
    v33 = sub_1D2871F98();
    v35 = v34;
    (*(v29 + 8))(v32, v18);
    if (v23 == v33 && v25 == v35)
    {
    }

    else
    {
      v36 = sub_1D2879618();

      if ((v36 & 1) == 0)
      {
        sub_1D22D7044(&v55, &v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
        v37 = v46;
        v38 = swift_dynamicCast();
        v39 = v49;
        v40 = *(v49 + 56);
        if (v38)
        {
          v40(v37, 0, 1, v18);
          v41 = v47;
          (*(v39 + 32))(v47, v37, v18);
        }

        else
        {
          v40(v37, 1, 1, v18);
          swift_getKeyPath();
          v50 = v1;
          sub_1D28719E8();

          v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
          swift_beginAccess();
          v43 = v1 + v42;
          v41 = v47;
          v30(v47, v43, v18);
          if ((*(v39 + 48))(v37, 1, v18) != 1)
          {
            sub_1D22BD238(v37, &qword_1EC6D9A30, &qword_1D287EFC0);
          }
        }

        sub_1D26454B4(v41, &OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, &unk_1D289A930, sub_1D264BCE4);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v55);
  }
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D264B8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60, &qword_1D28815B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v21 - v12, &qword_1EC6D9A30, &qword_1D287EFC0);
  sub_1D22BD1D0(a2, &v13[v15], &qword_1EC6D9A30, &qword_1D287EFC0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &qword_1EC6D9A30, &qword_1D287EFC0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v13, &qword_1EC6D9A30, &qword_1D287EFC0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &unk_1EC6E1D60, &qword_1D28815B0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &qword_1EC6D9A30, &qword_1D287EFC0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D264BC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D264BCA8()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D264BDB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D264BE1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D264BE84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D264AC68(a1, v4, v5, v6);
}

double (*sub_1D264BF38())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D264BE7C;
}

void sub_1D264BF90()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = *(v0 + 24);
  sub_1D264698C(v2);
}

double sub_1D264C000()
{
  v1 = *(sub_1D2872008() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D264A7CC(v2, v3);
}

uint64_t sub_1D264C0C4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_1D2871CA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *a3, v4, v6);
  sub_1D2333D2C(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D264C1B0()
{
  result = sub_1D264C1D0();
  qword_1ED8B0198 = result;
  return result;
}

uint64_t sub_1D264C1D0()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19[-v1];
  v3 = sub_1D2873938();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D28716B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ED8A2F40 != -1)
  {
    swift_once();
  }

  v20[0] = 0;
  v11 = [qword_1ED8A2F48 requestVUIndexURLForSystemPhotosLibraryWithError_];
  v12 = v20[0];
  if (v11)
  {
    v13 = v11;
    sub_1D2871638();
    v14 = v12;

    (*(v4 + 104))(v6, *MEMORY[0x1E69E0608], v3);
    (*(v8 + 16))(v2, v10, v7);
    (*(v8 + 56))(v2, 0, 1, v7);
    sub_1D2873948();
    swift_allocObject();
    v17 = sub_1D2873928();
    (*(v8 + 8))(v10, v7);
    return v17;
  }

  else
  {
    v15 = v20[0];
    v16 = sub_1D28714B8();

    swift_willThrow();
    return 0;
  }
}

id sub_1D264C4F4()
{
  result = [objc_opt_self() service];
  qword_1ED8A2F48 = result;
  return result;
}

uint64_t sub_1D264C564@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873CB8();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1D2873998();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D28737A8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v2, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x1E69E0170])
  {
    if (qword_1EC6D8B58 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v12, qword_1EC6E3BA8);
    (*(v13 + 16))(v15, v22, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v24 = qword_1ED8B0058;
    sub_1D28718C8();
    result = sub_1D28780E8();
    v27 = 0;
    v28 = 0xE000000000000000;
    goto LABEL_18;
  }

  if (v21 == *MEMORY[0x1E69E01A0] || v21 == *MEMORY[0x1E69E01B0])
  {
    if (qword_1EC6D8B68 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v12, qword_1EC6E3BD8);
    (*(v13 + 16))(v15, v30, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

LABEL_42:
    swift_once();
LABEL_17:
    v31 = qword_1ED8B0058;
    sub_1D28718C8();
    v32 = v31;
    v27 = sub_1D28780E8();
    v28 = v33;
    sub_1D2877FE8();
    sub_1D28718C8();
    result = sub_1D28780E8();
LABEL_18:
    v34 = v50;
    goto LABEL_19;
  }

  if (v21 == *MEMORY[0x1E69E0188])
  {
    if (qword_1EC6D8B90 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v12, qword_1EC6E3C20);
    (*(v13 + 16))(v15, v29, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  if (v21 == *MEMORY[0x1E69E0178])
  {
    if (qword_1EC6D8B88 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v12, qword_1EC6E3C08);
    (*(v13 + 16))(v15, v35, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  if (v21 == *MEMORY[0x1E69E0190] || v21 == *MEMORY[0x1E69E0168])
  {
    if (qword_1EC6D8BA0 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v12, qword_1EC6E3C38);
    (*(v13 + 16))(v15, v44, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  if (v21 == *MEMORY[0x1E69E0180] || v21 == *MEMORY[0x1E69E01A8] || v21 == *MEMORY[0x1E69E0198])
  {
    if (qword_1EC6D8B78 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v12, qword_1EC6E3BF0);
    (*(v13 + 16))(v15, v45, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  sub_1D2872708();
  sub_1D264D23C(v2, v5);
  v36 = sub_1D2873CA8();
  v37 = sub_1D2878A18();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v38 = 136315138;
    v39 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
    v41 = v40;
    sub_1D24917E0(v5);
    v42 = sub_1D23D7C84(v39, v41, &v51);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1D226E000, v36, v37, "Unexpected ImageGenerationPerson.SkinTone: %s", v38, 0xCu);
    v43 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1D38A3520](v43, -1, -1);
    MEMORY[0x1D38A3520](v38, -1, -1);
  }

  else
  {

    sub_1D24917E0(v5);
  }

  (*(v47 + 8))(v8, v48);
  v34 = v50;
  (*(v17 + 8))(v20, v16);
  v23 = 0;
  v27 = 0;
  v28 = 0;
  result = 0;
  v26 = 0;
LABEL_19:
  *v34 = v23;
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = result;
  v34[4] = v26;
  return result;
}

uint64_t sub_1D264D23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D264D2A0()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28737A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E0170], v4, v6);
  sub_1D2439848();
  sub_1D2878368();
  sub_1D2878368();
  if (*v15 == v17)
  {
    (*(v5 + 8))(v8, v4);

LABEL_4:
    sub_1D2872658();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A28();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "WARNING: bright yellow emoji color should never be showin in the person picker", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  v9 = sub_1D2879618();
  (*(v5 + 8))(v8, v4);

  if (v9)
  {
    goto LABEL_4;
  }

  sub_1D264C564(v15);
  if (!v15[0])
  {
    return 0;
  }

  v14 = v15[1];
  v16 = v15[0];
  sub_1D2620860(&v16);
  v17 = *&v15[3];
  sub_1D22BD018(&v17);
  return v14;
}

uint64_t sub_1D264D5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = sub_1D2875918();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF690, &qword_1D289AC58);
  sub_1D264D7A4(a1, a2 + *(v8 + 44), a3, a4);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF698, &unk_1D289AC60) + 36));
  v10 = *(sub_1D2875188() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1D2875868();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = a4;
  v9[1] = a4;
  *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410, &qword_1D288CC00) + 36)) = 256;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6A0, &qword_1D289AC70) + 36);
  *v13 = 0x3FF0000000000000;
  *(v13 + 8) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a1;
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6A8, &qword_1D289AC78) + 36));
  *v15 = sub_1D264E370;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a1;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6B0, &qword_1D289AC80) + 36));
  *v17 = 0;
  v17[1] = 0;
  v17[2] = sub_1D264E37C;
  v17[3] = v16;
  return swift_retain_n();
}

uint64_t sub_1D264D7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6C0, &qword_1D289ACB8) - 8;
  MEMORY[0x1EEE9AC00](v26);
  v27 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6C8, &qword_1D289ACC0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v25 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  *v16 = sub_1D28756A8();
  *(v16 + 1) = 0x4000000000000000;
  v16[16] = 0;
  v24[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6D0, &qword_1D289ACC8) + 44);
  v29 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_firstRowAppearanceCellModels);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a1;
  sub_1D2870F68();
  sub_1D2870F78();
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6D8, &qword_1D289ACD0);
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6E0, &qword_1D289ACD8);
  sub_1D22BB9D8(&qword_1EC6DF6E8, &qword_1EC6DF6D8, &qword_1D289ACD0, MEMORY[0x1E69E6338]);
  sub_1D264E584(&qword_1EC6DF6F0, &qword_1EC6DF6E0, &qword_1D289ACD8, sub_1D264E3C0);
  sub_1D264E530(&qword_1EC6DF738, type metadata accessor for AppearanceCellViewModel, &unk_1D28993BC);
  sub_1D2877588();
  *&v16[*(v12 + 44)] = 0x4000000000000000;
  *v10 = sub_1D28756A8();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF740, &qword_1D289AD00);
  v29 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_secondRowAppearanceCellModels);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a1;
  sub_1D2870F78();
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF748, &qword_1D289AD08);
  sub_1D264E584(&qword_1EC6DF750, &qword_1EC6DF748, &qword_1D289AD08, sub_1D264E634);
  sub_1D2877588();
  v19 = v25;
  *&v10[*(v26 + 44)] = 0x3FF0000000000000;
  sub_1D22BD1D0(v16, v19, &qword_1EC6DF6C8, &qword_1D289ACC0);
  v20 = v27;
  sub_1D22BD1D0(v10, v27, &qword_1EC6DF6C0, &qword_1D289ACB8);
  v21 = v28;
  sub_1D22BD1D0(v19, v28, &qword_1EC6DF6C8, &qword_1D289ACC0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF760, &qword_1D289AD10);
  sub_1D22BD1D0(v20, v21 + *(v22 + 48), &qword_1EC6DF6C0, &qword_1D289ACB8);
  sub_1D22BD238(v10, &qword_1EC6DF6C0, &qword_1D289ACB8);
  sub_1D22BD238(v16, &qword_1EC6DF6C8, &qword_1D289ACC0);
  sub_1D22BD238(v20, &qword_1EC6DF6C0, &qword_1D289ACB8);
  return sub_1D22BD238(v19, &qword_1EC6DF6C8, &qword_1D289ACC0);
}

uint64_t sub_1D264DC5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = sub_1D2877098();
  v7 = sub_1D2877848();
  v9 = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6E0, &qword_1D289ACD8) + 36));
  v11 = *(sub_1D2875188() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1D2875868();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = a3;
  v10[1] = a3;
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410, &qword_1D288CC00) + 36)) = 256;
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;

  return sub_1D2870F78();
}

uint64_t sub_1D264DD6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF748, &qword_1D289AD08) + 36));
  v7 = *(sub_1D2875188() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1D2875868();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = a3;
  v6[1] = a3;
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410, &qword_1D288CC00) + 36)) = 256;
  *a2 = v5;

  return sub_1D2870F78();
}

void sub_1D264DE58(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  swift_getKeyPath();
  sub_1D264E530(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel, &unk_1D28AD688);
  sub_1D2870F78();
  sub_1D28719D8();
}

uint64_t sub_1D264DF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2877848();
  sub_1D28748C8();
  sub_1D2870F78();
  v12 = sub_1D2877088();
  v13 = sub_1D2876338();
  *v26 = a3;
  *&v26[1] = a4;
  v26[2] = a1;
  v26[9] = v12;
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6B8, &qword_1D289ACB0);
  swift_allocObject();
  MEMORY[0x1D389D4C0](v26);
  sub_1D2874A18();
  v14 = sub_1D28749F8();
  if (v14)
  {
    v15 = v14;
    v16 = type metadata accessor for PlaygroundImage(0);
    v17 = (a2 + v16[9]);
    *v17 = 0u;
    v17[1] = 0u;
    *(a2 + v16[10]) = xmmword_1D28809A0;
    v18 = v16[11];
    v19 = sub_1D2873AA8();
    (*(*(v19 - 8) + 56))(a2 + v18, 1, 1, v19);
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 24) = 1;
    *(a2 + 16) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + v16[12]) = 0;
    sub_1D2871808();

    return (*(*(v16 - 1) + 56))(a2, 0, 1, v16);
  }

  else
  {
    sub_1D2872708();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "Can not render appearance", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v24 = type metadata accessor for PlaygroundImage(0);
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }
}

double sub_1D264E298(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D264E530(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel, &unk_1D28AD688);
  sub_1D28719D8();

  return result;
}

unint64_t sub_1D264E3C0()
{
  result = qword_1EC6DF6F8;
  if (!qword_1EC6DF6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF700, &qword_1D289ACE0);
    sub_1D264E478();
    sub_1D22BB9D8(&qword_1EC6DF728, &qword_1EC6DF730, &qword_1D289ACF8, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF6F8);
  }

  return result;
}

unint64_t sub_1D264E478()
{
  result = qword_1EC6DF708;
  if (!qword_1EC6DF708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF710, &qword_1D289ACE8);
    sub_1D22BB9D8(&qword_1EC6DF718, &qword_1EC6DF720, &qword_1D289ACF0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF708);
  }

  return result;
}

uint64_t sub_1D264E530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D264E584(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1D22BB9D8(&qword_1EC6DC408, &qword_1EC6DC410, &qword_1D288CC00, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D264E634()
{
  result = qword_1EC6DF758;
  if (!qword_1EC6DF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF758);
  }

  return result;
}

unint64_t sub_1D264E698()
{
  result = qword_1EC6DF768;
  if (!qword_1EC6DF768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF6B0, &qword_1D289AC80);
    sub_1D264E724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF768);
  }

  return result;
}

unint64_t sub_1D264E724()
{
  result = qword_1EC6DF770;
  if (!qword_1EC6DF770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF6A8, &qword_1D289AC78);
    sub_1D264E7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF770);
  }

  return result;
}

unint64_t sub_1D264E7B0()
{
  result = qword_1EC6DF778;
  if (!qword_1EC6DF778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF6A0, &qword_1D289AC70);
    sub_1D264E83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF778);
  }

  return result;
}

unint64_t sub_1D264E83C()
{
  result = qword_1EC6DF780;
  if (!qword_1EC6DF780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF698, &unk_1D289AC60);
    sub_1D22BB9D8(&qword_1EC6DF788, &qword_1EC6DF790, &qword_1D289AD38, MEMORY[0x1E6981870]);
    sub_1D22BB9D8(&qword_1EC6DC408, &qword_1EC6DC410, &qword_1D288CC00, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF780);
  }

  return result;
}

uint64_t PhotosPerson.id.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v2 = sub_1D24FBD9C();
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v4, v5);
  }

  else
  {
    sub_1D2870F68();
  }

  return v1;
}

void PhotosPerson.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  if (v1[1])
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  sub_1D2877F38();
  if (!v3)
  {
    sub_1D28797F8();
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_1D28797F8();
    return;
  }

  sub_1D28797F8();
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D24FE258(a1, v3);
  if (!v5)
  {
    sub_1D28797F8();
    sub_1D238D058(v3, v4, 0);
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_1D28797F8();
  sub_1D2877F38();
  sub_1D238D058(v3, v4, v5);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_1D28797F8();
  v7 = v6;
  sub_1D2878D88();
}

uint64_t PhotosPerson.hashValue.getter()
{
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v1);
  return sub_1D2879828();
}

uint64_t sub_1D264EBB0@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosPerson.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D264EBDC()
{
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v1);
  return sub_1D2879828();
}

uint64_t sub_1D264EC20()
{
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v1);
  return sub_1D2879828();
}

BOOL _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v26 = a2[7];
    v27 = a1[7];
    if ((*a1 != *a2 || v3 != v9) && (sub_1D2879618() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v26 = a2[7];
    v27 = a1[7];
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 != v10 || v6 != v12) && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    sub_1D2396784(0, v8, v7);
    if (!v11)
    {
      sub_1D2396784(0, v13, v14);
      v5 = 0;
LABEL_32:
      sub_1D238D058(v5, v8, v7);
      goto LABEL_33;
    }

    sub_1D2396784(v11, v13, v14);
    goto LABEL_22;
  }

  if (!v11)
  {
    sub_1D2396784(v5, v8, v7);
    sub_1D2396784(0, v13, v14);
    sub_1D2396784(v5, v8, v7);

LABEL_22:
    sub_1D238D058(v5, v8, v7);
    v18 = v11;
    v19 = v13;
    v20 = v14;
LABEL_26:
    sub_1D238D058(v18, v19, v20);
    return 0;
  }

  sub_1D2396784(v5, v8, v7);
  sub_1D2396784(v11, v13, v14);
  sub_1D2396784(v5, v8, v7);
  if ((sub_1D25559F4(v11, v5) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v7)
  {
    if (!v14)
    {
      v15 = v11;
      v16 = v13;
      v17 = 0;
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (!v14)
  {
LABEL_25:
    sub_1D238D058(v11, v13, v14);

    v18 = v5;
    v19 = v8;
    v20 = v7;
    goto LABEL_26;
  }

  if (v8 == v13 && v7 == v14)
  {
    v15 = v11;
    v16 = v8;
    v17 = v7;
LABEL_31:
    sub_1D238D058(v15, v16, v17);

    goto LABEL_32;
  }

  v22 = sub_1D2879618();
  sub_1D238D058(v11, v13, v14);

  sub_1D238D058(v5, v8, v7);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  if (v27)
  {
    if (v26)
    {
      sub_1D2564F80();
      v23 = v26;
      v24 = v27;
      v25 = sub_1D2878D78();

      if (v25)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v26;
}

unint64_t sub_1D264EF50()
{
  result = qword_1EC6D8948;
  if (!qword_1EC6D8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8948);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal16PersonAttributesVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D264EFBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D264F004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D264F064()
{
  v1 = v0;
  v2 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  swift_getKeyPath();
  v20 = v0;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v9 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
  if (v9 == 3)
  {
    v10 = 0xEB00000000646569;
    v17 = 0x6669636570736E75;
  }

  else if (v9 == 4)
  {
    v17 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_1D2873768();
    v10 = v11;
  }

  swift_getKeyPath();
  v20 = v0;
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v12, v8, &unk_1EC6E33C0, &unk_1D2883750);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1D22BD238(v8, &unk_1EC6E33C0, &unk_1D2883750);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    sub_1D2654910(v8, v5, type metadata accessor for ImageGenerationPerson.SkinTone);
    sub_1D22BD238(v8, &unk_1EC6E33C0, &unk_1D2883750);
    v13 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
    v14 = v15;
    sub_1D2653778(v5, type metadata accessor for ImageGenerationPerson.SkinTone);
  }

  v18 = v17;
  v19 = v10;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v13, v14);

  return v18;
}

uint64_t sub_1D264F37C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if ((a1 & 1) == 0)
  {
    sub_1D26512F8();
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance) != 4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v1;
    *(&v11 - 8) = 4;
    v12 = v1;
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719D8();
  }

  v7 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1D265053C(v5);
  swift_getKeyPath();
  v12 = v1;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, a1 & 1, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_1D264F5EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  swift_getKeyPath();
  v8 = v0;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance) == 4)
  {
    return 0;
  }

  swift_getKeyPath();
  v8 = v0;
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v4, v3, &unk_1EC6E33C0, &unk_1D2883750);
  v5 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1D22BD238(v3, &unk_1EC6E33C0, &unk_1D2883750);
  if (v4 == 1)
  {
    return 0;
  }

  swift_getKeyPath();
  v7 = v0;
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString + 8) != 0;
}

void sub_1D264F814(char a1)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) = a1 & 1;
    swift_getKeyPath();
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719E8();

    if (*(v1 + v2) == 1)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v4 + 24))(v1, ObjectType, v4);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719D8();
  }
}

void sub_1D264FA1C(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  *a1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
}

void sub_1D264FACC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
}

void sub_1D264FBB4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance;
  if (sub_1D2653128(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance), v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719D8();
  }

  else
  {
    *(v1 + v3) = v2;
  }
}

uint64_t sub_1D264FCD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF3F8, &unk_1D2898DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for CharacterRecipe(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2650FD0(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D22BD238(v5, &qword_1EC6DF3F8, &unk_1D2898DC0);
  }

  sub_1D2653710(v5, v9, type metadata accessor for CharacterRecipe);
  sub_1D23C75E0();
  v16 = *v9;
  sub_1D2654910(&v9[*(v6 + 20)], v2, type metadata accessor for ImageGenerationPerson.SkinTone);
  v11 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_1D2437618(&v16, v2);
  v14 = v13;

  sub_1D22BD238(v2, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D2650750(v12, v14);
  sub_1D26512F8();
  return sub_1D2653778(v9, type metadata accessor for CharacterRecipe);
}

uint64_t sub_1D264FF58@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &unk_1EC6E33C0, &unk_1D2883750);
}

void sub_1D2650030()
{
  v1 = sub_1D28737A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = *(v0 + 32);
  v12 = sub_1D23C75E0()[3];
  sub_1D2870F68();

  if ((v11 & 1) == 0)
  {
    v23 = v12;
    v27 = *(v12 + 16);
    if (v27)
    {
      v13 = 0;
      v26 = *MEMORY[0x1E69E0170];
      v24 = (v2 + 8);
      v25 = (v2 + 104);
      v14 = MEMORY[0x1E69E7CC0];
      v22 = v6;
      v15 = v23;
      while (v13 < *(v15 + 16))
      {
        v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v17 = *(v6 + 72);
        sub_1D2654910(v15 + v16 + v17 * v13, v10, type metadata accessor for ImageGenerationPerson.SkinTone);
        (*v25)(v4, v26, v1);
        sub_1D2653E64(&qword_1EC6DDC10, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D0]);
        v18 = sub_1D2877F98();
        (*v24)(v4, v1);
        if (v18)
        {
          sub_1D2653778(v10, type metadata accessor for ImageGenerationPerson.SkinTone);
        }

        else
        {
          sub_1D2653710(v10, v28, type metadata accessor for ImageGenerationPerson.SkinTone);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D23D8A9C(0, *(v14 + 16) + 1, 1);
            v14 = v29;
          }

          v21 = *(v14 + 16);
          v20 = *(v14 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1D23D8A9C((v20 > 1), v21 + 1, 1);
            v14 = v29;
          }

          *(v14 + 16) = v21 + 1;
          sub_1D2653710(v28, v14 + v16 + v21 * v17, type metadata accessor for ImageGenerationPerson.SkinTone);
          v6 = v22;
          v15 = v23;
        }

        if (v27 == ++v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
    }
  }
}

uint64_t sub_1D26503B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &unk_1EC6E33C0, &unk_1D2883750);
}

uint64_t sub_1D2650490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &unk_1EC6E33C0, &unk_1D2883750);
  return sub_1D265053C(v4);
}

uint64_t sub_1D265053C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6E33C0, &unk_1D2883750);
  v7 = sub_1D2653218(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6E33C0, &unk_1D2883750);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719D8();
  }

  else
  {
    sub_1D22BD1D0(a1, v5, &unk_1EC6E33C0, &unk_1D2883750);
    swift_beginAccess();
    sub_1D262963C(v5, v1 + v6);
    swift_endAccess();
    sub_1D2650AE8();
    sub_1D22BD238(v5, &unk_1EC6E33C0, &unk_1D2883750);
  }

  return sub_1D22BD238(a1, &unk_1EC6E33C0, &unk_1D2883750);
}

double sub_1D2650750(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719D8();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1D26508CC()
{
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2650974()
{
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  sub_1D2870F68();
  return v1;
}

double sub_1D2650A30@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  a2[1] = v4;
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D2650AE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  swift_getKeyPath();
  v7 = v0;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v4, v3, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D286CBC4(v3);
  swift_getKeyPath();
  v6 = v0;
  sub_1D28719E8();

  sub_1D22BD1D0(v0 + v4, v3, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D286CBC4(v3);
  swift_getKeyPath();
  v6 = v0;
  sub_1D28719E8();

  sub_1D22BD1D0(v0 + v4, v3, &unk_1EC6E33C0, &unk_1D2883750);
  return sub_1D286CBC4(v3);
}

uint64_t sub_1D2650CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D22BD1D0(a2, &v9 - v5, &unk_1EC6E33C0, &unk_1D2883750);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D262963C(v6, a1 + v7);
  swift_endAccess();
  sub_1D2650AE8();
  return sub_1D22BD238(v6, &unk_1EC6E33C0, &unk_1D2883750);
}

uint64_t sub_1D2650DF0()
{
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips);
}

void sub_1D2650E98(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips;
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) = a2;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  if (*(a1 + v3) == 1)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(a1, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D2650FD0@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v20 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v19 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  swift_getKeyPath();
  v21 = v1;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v12 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
  if (v12 == 4)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  v21 = v1;
  sub_1D28719E8();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v13, v6, &unk_1EC6E33C0, &unk_1D2883750);
  if ((*(v7 + 48))(v6, 1, v20) == 1)
  {
    sub_1D22BD238(v6, &unk_1EC6E33C0, &unk_1D2883750);
LABEL_4:
    v14 = type metadata accessor for CharacterRecipe(0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  sub_1D2653710(v6, v11, type metadata accessor for ImageGenerationPerson.SkinTone);
  v16 = v19;
  sub_1D2653710(v11, v19, type metadata accessor for ImageGenerationPerson.SkinTone);
  *a1 = v12;
  v17 = type metadata accessor for CharacterRecipe(0);
  sub_1D2653710(v16, &a1[*(v17 + 20)], type metadata accessor for ImageGenerationPerson.SkinTone);
  return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
}

uint64_t sub_1D26512F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120, &qword_1D2880C38);
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CharacterAsset(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1D2651AEC(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D22BD238(v9, &unk_1EC6DDDA0, &qword_1D2882D20);
  }

  sub_1D2653710(v9, v16, type metadata accessor for CharacterAsset);
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_originalCharacter;
  v23 = *(v0 + 48);
  sub_1D2654910(v16, v13, type metadata accessor for CharacterAsset);
  sub_1D22BD1D0(v0 + v18, v6, &unk_1EC6DDDA0, &qword_1D2882D20);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = (v12 + *(v24 + 80) + v19) & ~*(v24 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  sub_1D2653710(v13, v21 + v19, type metadata accessor for CharacterAsset);
  sub_1D22EC9BC(v6, v21 + v20, &unk_1EC6DDDA0, &qword_1D2882D20);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1D289B040;
  *(v22 + 24) = v21;
  v27 = &unk_1D2883570;
  v28 = v22;
  sub_1D2870F78();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60, &qword_1D2880C60);
  sub_1D2878638();

  (*(v25 + 8))(v3, v26);
  return sub_1D2653778(v16, type metadata accessor for CharacterAsset);
}

uint64_t sub_1D26516C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120, &qword_1D2880C38);
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for CharacterAsset(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - v17;
  sub_1D22BD1D0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_originalCharacter, v11, &unk_1EC6DDDA0, &qword_1D2882D20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1D22BD238(v11, &unk_1EC6DDDA0, &qword_1D2882D20);
  }

  sub_1D2653710(v11, v18, type metadata accessor for CharacterAsset);
  sub_1D2651AEC(v8);
  v25[1] = *(v0 + 48);
  sub_1D2654910(v18, v15, type metadata accessor for CharacterAsset);
  sub_1D22BD1D0(v8, v5, &unk_1EC6DDDA0, &qword_1D2882D20);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = (v14 + *(v26 + 80) + v20) & ~*(v26 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  sub_1D2653710(v15, v22 + v20, type metadata accessor for CharacterAsset);
  sub_1D22EC9BC(v5, v22 + v21, &unk_1EC6DDDA0, &qword_1D2882D20);
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1D289B088;
  *(v23 + 24) = v22;
  v30 = &unk_1D289B090;
  v31 = v23;
  sub_1D2870F78();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60, &qword_1D2880C60);
  v24 = v27;
  sub_1D2878638();

  (*(v28 + 8))(v24, v29);
  sub_1D22BD238(v8, &unk_1EC6DDDA0, &qword_1D2882D20);
  return sub_1D2653778(v18, type metadata accessor for CharacterAsset);
}

uint64_t sub_1D2651AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = type metadata accessor for PlaygroundImage(0);
  v61 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF3F8, &unk_1D2898DC0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for CharacterRecipe(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  if (!sub_1D264F5EC())
  {
    goto LABEL_4;
  }

  v55 = a1;
  sub_1D2650FD0(v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_1D2653710(v20, v26, type metadata accessor for CharacterRecipe);
    swift_getKeyPath();
    v62 = v1;
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719E8();

    v31 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString + 8);
    if (!v31)
    {
      sub_1D2653778(v26, type metadata accessor for CharacterRecipe);
      goto LABEL_11;
    }

    v32 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
    type metadata accessor for EmojiImageRenderer();
    swift_initStackObject();
    sub_1D2870F68();
    sub_1D284CECC(v32, v31, v12);

    v33 = v61 + 48;
    v34 = *(v61 + 48);
    if (v34(v12, 1, v13) == 1)
    {
      sub_1D2653778(v26, type metadata accessor for CharacterRecipe);
      sub_1D22BD238(v12, &unk_1EC6DE5A0, &unk_1D287F0E0);
LABEL_11:
      v35 = v55;
LABEL_12:
      v27 = type metadata accessor for CharacterAsset(0);
      v28 = *(*(v27 - 8) + 56);
      v29 = v35;
      return v28(v29, 1, 1, v27);
    }

    sub_1D2653710(v12, v17, type metadata accessor for PlaygroundImage);
    swift_getKeyPath();
    v62 = v1;
    sub_1D28719E8();

    v36 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
    if (v36 <= 1)
    {
      v53 = v34;
      v54 = v33;
      v37 = v60;
      if (v36)
      {
        v38 = &OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_firstAppearanceViewModel;
      }

      else
      {
        v38 = &OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_thirdAppearanceViewModel;
      }
    }

    else
    {
      v37 = v60;
      if (v36 - 2 >= 2)
      {
        v35 = v55;
        sub_1D2653778(v17, type metadata accessor for PlaygroundImage);
        sub_1D2653778(v26, type metadata accessor for CharacterRecipe);
        goto LABEL_12;
      }

      v53 = v34;
      v54 = v33;
      v38 = &OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_secondAppearanceViewModel;
    }

    v39 = *(v1 + *v38);
    swift_getKeyPath();
    v62 = v39;
    sub_1D2653E64(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel, &unk_1D28AD688);
    sub_1D2870F78();
    sub_1D28719E8();

    v40 = *(v39 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock);
    if (v40)
    {
      v41 = *(v39 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock + 8);
      v42 = sub_1D2870F78();
      v40(v42);
      sub_1D22A576C(v40, v41);
      v43 = v53;
      v44 = v53(v37, 1, v13);
      v45 = v58;
      if (v44 != 1)
      {

        sub_1D2653710(v37, v45, type metadata accessor for PlaygroundImage);
        (*(v61 + 56))(v45, 0, 1, v13);
LABEL_26:
        v46 = v57;
        sub_1D2653710(v17, v57, type metadata accessor for PlaygroundImage);
        v47 = v59;
        sub_1D22EC9BC(v45, v59, &unk_1EC6DE5A0, &unk_1D287F0E0);
        v48 = v56;
        sub_1D2653710(v26, v56, type metadata accessor for CharacterRecipe);
        v49 = *(v2 + 32);
        v50 = v46;
        v51 = v55;
        sub_1D2653710(v50, v55, type metadata accessor for PlaygroundImage);
        v52 = type metadata accessor for CharacterAsset(0);
        sub_1D22EC9BC(v47, v51 + v52[5], &unk_1EC6DE5A0, &unk_1D287F0E0);
        sub_1D2653710(v48, v51 + v52[6], type metadata accessor for CharacterRecipe);
        *(v51 + v52[7]) = v49;
        return (*(*(v52 - 1) + 56))(v51, 0, 1, v52);
      }
    }

    else
    {
      (*(v61 + 56))(v37, 1, 1, v13);
      v45 = v58;
      v43 = v53;
    }

    type metadata accessor for AppearanceImageRenderer();
    swift_initStackObject();
    sub_1D268BD98(v26, v45);

    if (v43(v37, 1, v13) != 1)
    {
      sub_1D22BD238(v37, &unk_1EC6DE5A0, &unk_1D287F0E0);
    }

    goto LABEL_26;
  }

  sub_1D22BD238(v20, &qword_1EC6DF3F8, &unk_1D2898DC0);
  a1 = v55;
LABEL_4:
  v27 = type metadata accessor for CharacterAsset(0);
  v28 = *(*(v27 - 8) + 56);
  v29 = a1;
  return v28(v29, 1, 1, v27);
}

uint64_t sub_1D2652340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D22BDFF8;

  return sub_1D26523EC(a2, a3);
}

uint64_t sub_1D26523EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D2873CB8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for CharacterAsset(0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_1D2878568();
  v3[13] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[14] = v7;
  v3[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2652578, v7, v6);
}

uint64_t sub_1D2652578()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_1D22BD1D0(v0[4], v3, &unk_1EC6DDDA0, &qword_1D2882D20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(v0[9], &unk_1EC6DDDA0, &qword_1D2882D20);
  }

  else
  {
    v4 = v0[12];
    sub_1D2653710(v0[9], v4, type metadata accessor for CharacterAsset);
    sub_1D23C7FA8();
    sub_1D2622204(v4);

    sub_1D2653778(v4, type metadata accessor for CharacterAsset);
  }

  v0[16] = sub_1D23C7FA8();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1D26526E0;
  v6 = v0[3];

  return sub_1D2624C0C(v6);
}

uint64_t sub_1D26526E0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D2652940;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D26527FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D26527FC()
{
  v1 = v0[5];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v0[5];
    v3 = v0[3];
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(v2, v3, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D2652940()
{
  v1 = v0[18];

  sub_1D2872708();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to store character: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2652AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D22BC8FC;

  return sub_1D26523EC(a2, a3);
}

uint64_t sub_1D2652BA0()
{
  sub_1D22729C0(v0 + 16);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_originalCharacter, &unk_1EC6DDDA0, &qword_1D2882D20);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone, &unk_1EC6E33C0, &unk_1D2883750);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D2652C9C()
{
  sub_1D2652BA0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CharacterEditingViewModel(uint64_t a1)
{
  result = qword_1ED89FB20;
  if (!qword_1ED89FB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2652D48(uint64_t a1)
{
  sub_1D2652ED0(319, qword_1ED8A4598, type metadata accessor for CharacterAsset);
  if (v1 <= 0x3F)
  {
    sub_1D2652ED0(319, &qword_1ED8A6E30, type metadata accessor for ImageGenerationPerson.SkinTone);
    if (v2 <= 0x3F)
    {
      sub_1D2871A28();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D2652ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D2652F24()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t sub_1D2652F70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel, &unk_1D28AD688);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock + 8);
  if (v4)
  {
    v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock + 8);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  return sub_1D22A58B8(v4, v5);
}

double sub_1D2653030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  sub_1D22A58B8(v2, v3);
  sub_1D2653E64(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel, &unk_1D28AD688);
  sub_1D28719D8();
  sub_1D22A576C(v2, v3);

  return result;
}

BOOL sub_1D2653128(uint64_t a1, uint64_t a2)
{
  if (a1 == 4)
  {
    return a2 != 4;
  }

  if (a2 == 4)
  {
    return 1;
  }

  if (a1 == 3)
  {
    return a2 != 3;
  }

  if (a2 == 3)
  {
    return 1;
  }

  v3 = sub_1D2873768();
  v5 = v4;
  if (v3 == sub_1D2873768() && v5 == v6)
  {
  }

  else
  {
    v7 = sub_1D2879618();

    if ((v7 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D2653218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108, &qword_1D2898A00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v19 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, v19 - v12, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D22BD1D0(a2, &v13[v15], &unk_1EC6E33C0, &unk_1D2883750);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6E33C0, &unk_1D2883750);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6DC108, &qword_1D2898A00);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD1D0(v13, v10, &unk_1EC6E33C0, &unk_1D2883750);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D2653778(v10, type metadata accessor for ImageGenerationPerson.SkinTone);
    goto LABEL_6;
  }

  sub_1D2653710(&v13[v15], v7, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D28737A8();
  sub_1D2653E64(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v19[2] == v19[0] && v19[3] == v19[1])
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1D2879618() ^ 1;
  }

  sub_1D2653778(v7, type metadata accessor for ImageGenerationPerson.SkinTone);

  sub_1D2653778(v10, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D22BD238(v13, &unk_1EC6E33C0, &unk_1D2883750);
  return v17 & 1;
}

uint64_t sub_1D26535D0()
{
  v2 = *(type metadata accessor for CharacterAsset(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2652340(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1D2653710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2653778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for CharacterAsset(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20) - 8) + 80);

  v38 = v0;
  v6 = v0 + v3;

  v7 = type metadata accessor for PlaygroundImage(0);
  v8 = v7[8];
  v9 = sub_1D2871818();
  v37 = *(*(v9 - 8) + 8);
  v37(v6 + v8, v9);
  v10 = (v6 + v7[10]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_1D22D6D60(*v10, v11);
  }

  v12 = v4 + v5;
  v13 = v7[11];
  v14 = sub_1D2873AA8();
  v15 = *(v14 - 8);
  v36 = *(v15 + 48);
  if (!v36(v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v6 + v13, v14);
  }

  v39 = v12 & ~v5;
  v16 = (v6 + *(v1 + 20));
  v34 = *(*(v7 - 1) + 48);
  if (!v34(v16, 1, v7))
  {

    v37(v16 + v7[8], v9);
    v17 = (v16 + v7[10]);
    v18 = v17[1];
    if (v18 >> 60 != 15)
    {
      sub_1D22D6D60(*v17, v18);
    }

    v19 = v7[11];
    if (!v36(v16 + v19, 1, v14))
    {
      (*(v15 + 8))(v16 + v19, v14);
    }
  }

  v35 = v14;
  v20 = *(v1 + 24);
  v21 = type metadata accessor for CharacterRecipe(0);
  v22 = v20 + *(v21 + 20);
  v23 = sub_1D28737A8();
  v24 = *(*(v23 - 8) + 8);
  v24(v6 + v22, v23);
  v25 = (v38 + v39);
  if (!(*(v2 + 48))(v38 + v39, 1, v1))
  {

    v37(v25 + v7[8], v9);
    v26 = (v25 + v7[10]);
    v27 = v26[1];
    if (v27 >> 60 != 15)
    {
      sub_1D22D6D60(*v26, v27);
    }

    v28 = v7[11];
    if (!v36(v25 + v28, 1, v35))
    {
      (*(v15 + 8))(v25 + v28, v35);
    }

    v29 = (v25 + *(v1 + 20));
    if (!v34(v29, 1, v7))
    {

      v37(v29 + v7[8], v9);
      v30 = (v29 + v7[10]);
      v31 = v30[1];
      if (v31 >> 60 != 15)
      {
        sub_1D22D6D60(*v30, v31);
      }

      v32 = v7[11];
      if (!v36(v29 + v32, 1, v35))
      {
        (*(v15 + 8))(v29 + v32, v35);
      }
    }

    v24(v25 + *(v1 + 24) + *(v21 + 20), v23);
  }

  return swift_deallocObject();
}

uint64_t sub_1D2653D24()
{
  v2 = *(type metadata accessor for CharacterAsset(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2652AF4(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1D2653E64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2653EAC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v95 = a4;
  LODWORD(v88) = a3;
  v97 = a2;
  v83 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v96 = &v77 - v6;
  v79 = type metadata accessor for CharacterRecipe(0);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v86 = (&v77 - v9);
  v10 = type metadata accessor for CharacterAsset(0);
  v11 = *(v10 - 8);
  v84 = v10;
  v85 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA598, &unk_1D289B0A0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60, &qword_1D2880C60);
  v80 = *(v19 - 8);
  v81 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0, &unk_1D2883890);
  v23 = *(v22 - 8);
  v92 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v77 - v24;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AsyncClosureQueue(0);
  v26 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A8, &unk_1D289B0B0);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8650], v15);
  sub_1D2878608();
  v27 = v18;
  v28 = v83;
  v29 = v15;
  v30 = v4;
  (*(v16 + 8))(v27, v29);
  v91 = v23;
  v31 = *(v23 + 32);
  v93 = v25;
  v94 = v22;
  v32 = v25;
  v33 = v82;
  v89 = v31;
  v90 = v23 + 32;
  v31(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream, v32, v22);
  (*(v80 + 32))(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_continuation, v21, v81);
  *(v4 + 48) = v26;
  v34 = (v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  *v34 = 0;
  v34[1] = 0;
  *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance) = 4;
  v35 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  v36 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v39 = v37 + 56;
  v38(v30 + v35, 1, 1, v36);
  v40 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_firstAppearanceViewModel;
  v98[0] = 1;
  v38(v33, 1, 1, v36);
  type metadata accessor for AppearanceViewModel(0);
  swift_allocObject();
  sub_1D286E0BC(v98, v33);
  *(v30 + v40) = v41;
  v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_secondAppearanceViewModel;
  v98[0] = 2;
  v38(v33, 1, 1, v36);
  swift_allocObject();
  sub_1D286E0BC(v98, v33);
  *(v30 + v42) = v43;
  v44 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_thirdAppearanceViewModel;
  v98[0] = 0;
  v81 = v38;
  v38(v33, 1, 1, v36);
  v45 = v84;
  swift_allocObject();
  sub_1D286E0BC(v98, v33);
  *(v30 + v44) = v46;
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) = 0;
  sub_1D2871A18();
  *(v30 + 40) = v28;
  *(v30 + 32) = v88;
  v47 = v97;
  sub_1D22BD1D0(v97, v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_originalCharacter, &unk_1EC6DDDA0, &qword_1D2882D20);
  v48 = v47;
  v49 = v86;
  sub_1D22BD1D0(v48, v86, &unk_1EC6DDDA0, &qword_1D2882D20);
  if ((*(v85 + 48))(v49, 1, v45) == 1)
  {
    sub_1D2870F78();
    sub_1D22BD238(v49, &unk_1EC6DDDA0, &qword_1D2882D20);
  }

  else
  {
    v50 = v87;
    sub_1D2653710(v49, v87, type metadata accessor for CharacterAsset);
    v88 = *(v45 + 24);
    v51 = *(v50 + v88);
    v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance;
    v53 = *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
    sub_1D2870F78();
    v54 = sub_1D2653128(v53, v51);
    v80 = v39;
    v77 = v36;
    if (v54)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v77 - 2) = v30;
      *(&v77 - 8) = v51;
      *v98 = v30;
      sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
      sub_1D28719D8();
    }

    else
    {
      *(v30 + v52) = v51;
    }

    v86 = type metadata accessor for CharacterRecipe;
    v56 = v88;
    v57 = v78;
    sub_1D2654910(v50 + v88, v78, type metadata accessor for CharacterRecipe);
    v58 = v79;
    sub_1D2653710(v57 + *(v79 + 20), v33, type metadata accessor for ImageGenerationPerson.SkinTone);
    v59 = v77;
    v60 = v81;
    v81(v33, 0, 1, v77);
    sub_1D265053C(v33);
    sub_1D23C75E0();
    v98[0] = *(v87 + v56);
    v61 = v87 + v56;
    v62 = v87;
    sub_1D2654910(v61, v57, v86);
    sub_1D2653710(v57 + *(v58 + 20), v33, type metadata accessor for ImageGenerationPerson.SkinTone);
    v60(v33, 0, 1, v59);
    v63 = sub_1D2437618(v98, v33);
    v65 = v64;

    sub_1D22BD238(v33, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D2650750(v63, v65);
    sub_1D2653778(v62, type metadata accessor for CharacterAsset);
  }

  v66 = *(sub_1D23C7FA8() + 16);
  os_unfair_lock_lock((v66 + 20));
  *(v66 + 16) = v95 & 1;
  os_unfair_lock_unlock((v66 + 20));

  v67 = *(v30 + 48);
  v68 = OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream;
  v69 = sub_1D28785F8();
  v70 = v96;
  (*(*(v69 - 8) + 56))(v96, 1, 1, v69);
  v71 = v91 + 16;
  v73 = v93;
  v72 = v94;
  (*(v91 + 16))(v93, v67 + v68, v94);
  v74 = (*(v71 + 64) + 32) & ~*(v71 + 64);
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  v89(v75 + v74, v73, v72);
  sub_1D22AE01C(0, 0, v70, &unk_1D28838A0, v75);

  sub_1D22BD238(v97, &unk_1EC6DDDA0, &qword_1D2882D20);
  return v30;
}

uint64_t sub_1D2654910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CreateCharacterPickerItem(uint64_t a1)
{
  result = qword_1ED89FA00;
  if (!qword_1ED89FA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2654A04(uint64_t a1)
{
  sub_1D2871818();
  if (v1 <= 0x3F)
  {
    sub_1D238DF94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D2654AE0()
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

uint64_t sub_1D2654C6C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D2654CA4@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x80000001D28B54A0;
  v2 = type metadata accessor for GridPickerItemImage(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1D2654D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D2871818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D2654DB4(uint64_t a1)
{
  result = sub_1D2654E0C(qword_1ED89FA18, type metadata accessor for CreateCharacterPickerItem, &unk_1D289B0DC);
  *(a1 + 8) = result;
  return result;
}