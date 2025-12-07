__n128 PredictableInteractionEvent.init(tileInteractionEvent:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v33 = a1[8];
  *v34 = v3;
  *&v34[15] = *(a1 + 159);
  v4 = a1[5];
  v29 = a1[4];
  v30 = v4;
  v5 = a1[7];
  v31 = a1[6];
  v32 = v5;
  v6 = a1[1];
  v25 = *a1;
  v26 = v6;
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  if (v6 == 1 && BYTE3(v26) <= 1u && (v8 = v34[0], v34[0] != 2))
  {
    v10 = v34[16];
    v23 = HIBYTE(*&v34[16]);
    v24 = v34[18];
    v11 = BYTE8(v27);
    v12 = BYTE11(v30);
    v21 = v33;
    v22 = *&v34[8];
    v13 = WORD4(v33);
    v14 = [objc_opt_self() processInfo];
    v15 = [v14 processName];

    v16 = sub_1D1E6781C();
    v18 = v17;
    v19 = v32;
    v20 = v31;
    sub_1D1749A6C(&v25);

    *a2 = 0xD00000000000001BLL;
    *(a2 + 8) = 0x80000001D1E6EFF0;
    *(a2 + 16) = v11;
    *(a2 + 17) = 0;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    *(a2 + 40) = v12;
    result = v20;
    *(a2 + 48) = v20;
    *(a2 + 64) = v19;
    *(a2 + 80) = v21;
    *(a2 + 88) = v13;
    *(a2 + 96) = v8 & 1;
    *(a2 + 104) = v22;
    *(a2 + 112) = v10 & 1;
    *(a2 + 113) = v23;
    *(a2 + 114) = v24;
  }

  else
  {
    sub_1D1749A6C(&v25);
    result.n128_u64[0] = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 111) = 0;
  }

  return result;
}

uint64_t sub_1D1743988()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x54746E656D656C65;
    if (v1 != 1)
    {
      v5 = 0x7463617265746E69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6D614E746E657665;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000015;
    if (v1 == 3)
    {
      v3 = 0x4E737365636F7270;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1743A90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D174A158(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1743AB8(uint64_t a1)
{
  v2 = sub_1D1749AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1743AF4(uint64_t a1)
{
  v2 = sub_1D1749AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictableInteractionEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642D38, &qword_1D1E6F030);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v30 = *(v1 + 16);
  v24 = *(v1 + 17);
  v7 = *(v1 + 24);
  v22 = *(v1 + 32);
  v23 = v7;
  v21 = *(v1 + 40);
  v8 = *(v1 + 48);
  v19 = *(v1 + 64);
  v20 = v8;
  v17 = *(v1 + 80);
  v18 = *(v1 + 88);
  HIDWORD(v12) = *(v1 + 96);
  v13 = *(v1 + 104);
  LODWORD(v7) = *(v1 + 112);
  v16 = *(v1 + 113);
  LODWORD(v5) = *(v1 + 114);
  v14 = v7;
  v15 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1749AC0();
  sub_1D1E6930C();
  LOBYTE(v26) = 0;
  v9 = v25;
  sub_1D1E68ECC();
  if (!v9)
  {
    v10 = v24;
    LOBYTE(v26) = v30;
    v31 = 1;
    sub_1D1749B14();
    sub_1D1E68F1C();
    LOBYTE(v26) = v10;
    v31 = 2;
    sub_1D1749B68();
    sub_1D1E68F1C();
    LOBYTE(v26) = 3;
    sub_1D1E68ECC();
    LOBYTE(v26) = 4;
    sub_1D1E68EDC();
    v27 = v19;
    v26 = v20;
    v28 = v17;
    v29 = v18;
    v31 = 5;
    sub_1D1749BBC();
    sub_1D1E68E5C();
    LOBYTE(v26) = BYTE4(v12);
    *(&v26 + 1) = v13;
    LOBYTE(v27) = v14;
    BYTE1(v27) = v16;
    BYTE2(v27) = v15;
    v31 = 6;
    sub_1D1749C10();
    sub_1D1E68F1C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D1743E60()
{
  v1 = *v0;

  return v1;
}

uint64_t PredictableInteractionEvent.init(ids:elementType:interactionType:isPredictionUI:homeID:homeStateStream:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 176) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 177) = *a3;
  *(v7 + 178) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D1743F80, 0, 0);
}

uint64_t sub_1D1743F80()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 112) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1744018, v1, 0);
}

uint64_t sub_1D1744018()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 120) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D17440A0, 0, 0);
}

uint64_t sub_1D17440A0()
{
  if (v0[15])
  {
    v1 = v0[14];

    return MEMORY[0x1EEE6DFA0](sub_1D17441C0, v1, 0);
  }

  else
  {
    v2 = v0[10];
    v3 = sub_1D1E66A7C();
    (*(*(v3 - 8) + 8))(v2, v3);

    v4 = v0[8];
    *(v4 + 111) = 0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D17441C0()
{
  v9 = v0;
  v1 = *(v0[11] + 64);
  if (v1)
  {
    v2 = [v1 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v8 = sub_1D17499C8(v3, sub_1D1808600, sub_1D18D2FC0);
    sub_1D1747DDC(&v8);

    v4 = v8;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = v0[10];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  v0[16] = sub_1D1747CC8(sub_1D1749C64, v6, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1744354, 0, 0);
}

uint64_t sub_1D1744354()
{
  v1 = v0[15];
  if (v0[16])
  {
    v0[17] = *(v0[11] + 160);

    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1D17444E0;
    v3 = v0[10];

    return sub_1D1744A40(v1, v3);
  }

  else
  {
    v5 = v0[10];
    v6 = sub_1D1E66A7C();
    (*(*(v6 - 8) + 8))(v5, v6);

    v7 = v0[8];
    *(v7 + 111) = 0;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D17444E0(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1744600, 0, 0);
}

uint64_t sub_1D1744600()
{
  v1 = *(*(v0 + 88) + 160);
  *(v0 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1744624, v1, 0);
}

uint64_t sub_1D1744624()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  *(v0 + 168) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D17446AC, 0, 0);
}

uint64_t sub_1D17446AC()
{
  v40 = v0;
  if (*(*(v0 + 168) + 16) && (v1 = sub_1D1742188(), (v2 & 1) != 0))
  {
    v3 = v1;
    v4 = *(v0 + 104);
    v5 = *(*(v0 + 168) + 56);
    v6 = sub_1D1E669FC();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v4, v5 + *(v7 + 72) * v3, v6);

    v8 = 0;
  }

  else
  {

    v6 = sub_1D1E669FC();
    v7 = *(v6 - 8);
    v8 = 1;
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 128);
  v29 = *(v0 + 120);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v32 = *(v0 + 80);
  v33 = *(v0 + 176);
  v34 = *(v0 + 177);
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  (*(v7 + 56))(v11, v8, 1, v6);
  v15 = sub_1D17424D8(v9, v10, v14);

  sub_1D1745950(v15, &v35);

  v31 = v37;
  v30 = v38;
  sub_1D1741B10(0, &qword_1EC642D68, 0x1E695E000);
  v27 = v36;
  v28 = v35;
  static NSUserDefaults.recommendationUILastOpenedDate.getter(v12);
  sub_1D17421D4(v10, v11, v12, &v35);
  sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
  v16 = v35;
  v26 = *(&v35 + 1);
  LOBYTE(v15) = v36;
  LOWORD(v9) = *(&v36 + 1);
  v17 = [objc_opt_self() processInfo];
  v18 = [v17 processName];

  v19 = sub_1D1E6781C();
  v21 = v20;

  sub_1D1741A30(v11, &qword_1EC642570, &qword_1D1E6C6A0);
  v39 = v15;
  v22 = sub_1D1E66A7C();
  (*(*(v22 - 8) + 8))(v32, v22);
  v23 = v39;
  *v13 = 0xD00000000000001BLL;
  *(v13 + 8) = 0x80000001D1E6EFF0;
  *(v13 + 16) = v34;
  *(v13 + 24) = v19;
  *(v13 + 32) = v21;
  *(v13 + 40) = v33;
  *(v13 + 48) = v28;
  *(v13 + 64) = v27;
  *(v13 + 80) = v31;
  *(v13 + 88) = v30;
  *(v13 + 96) = v16;
  *(v13 + 104) = v26;
  *(v13 + 112) = v23;
  *(v13 + 113) = v9;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D1744A40(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v3[34] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1744B54, v2, 0);
}

uint64_t sub_1D1744B54()
{
  v48 = v0;
  v1 = v0[33];
  swift_beginAccess();
  v2 = *(v1 + 144);
  if (*(v2 + 16))
  {

    v3 = sub_1D1742188();
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);

      if (qword_1EE07A0C8 != -1)
      {
        swift_once();
      }

      v6 = v0[39];
      v7 = v0[35];
      v8 = v0[36];
      v9 = v0[32];
      v10 = v0[31];
      v11 = sub_1D1E6709C();
      __swift_project_value_buffer(v11, qword_1EE07A0D0);
      (*(v8 + 16))(v6, v9, v7);
      swift_bridgeObjectRetain_n();
      v12 = v10;

      v13 = sub_1D1E6707C();
      v14 = sub_1D1E6835C();

      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[39];
      if (v15)
      {
        v17 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47[0] = v46;
        *v17 = 136315394;
        v18 = sub_1D174A5B8(&qword_1EC642DB8, &unk_1EC649E60, 0x1E696CBA0, &protocol conformance descriptor for HMHomeManager);
        swift_getObjectType();
        (*(v18 + 48))();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DC0, &qword_1D1E6F378);
        v19 = sub_1D1E68AAC();

        v20 = swift_task_alloc();
        *(v20 + 16) = v16;
        v21 = sub_1D1746A6C(sub_1D174A6DC, v20, v19);
        v23 = v22;

        if (v21)
        {
          ObjectType = swift_getObjectType();
          v25 = (*(*(v23 + 16) + 136))(ObjectType);
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0xEC000000656D6F68;
          v25 = 0x206E776F6E6B6E75;
        }

        (*(v0[36] + 8))(v0[39], v0[35]);
        v38 = sub_1D1B1312C(v25, v27, v47);

        *(v17 + 4) = v38;
        *(v17 + 12) = 2080;
        v39 = sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
        v40 = MEMORY[0x1D3891260](v5, v39);
        v42 = v41;
        swift_bridgeObjectRelease_n();
        v43 = sub_1D1B1312C(v40, v42, v47);

        *(v17 + 14) = v43;
        _os_log_impl(&dword_1D16EC000, v13, v14, "%s existing predictions: %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v46, -1, -1);
        MEMORY[0x1D3893640](v17, -1, -1);
      }

      else
      {
        v36 = v0[35];
        v37 = v0[36];
        swift_bridgeObjectRelease_n();

        (*(v37 + 8))(v16, v36);
      }

      goto LABEL_21;
    }
  }

  v28 = v0[33];
  swift_beginAccess();
  if (!*(*(v28 + 136) + 16) || (, sub_1D1742188(), v30 = v29, , (v30 & 1) == 0) || (v31 = *(v28 + 136), !*(v31 + 16)))
  {
LABEL_18:
    v5 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v44 = v0[1];

    return v44(v5);
  }

  v32 = sub_1D1742188();
  if ((v33 & 1) == 0)
  {

    goto LABEL_18;
  }

  v34 = *(*(v31 + 56) + 8 * v32);
  v0[40] = v34;
  v35 = v34;

  return MEMORY[0x1EEE6DFA0](sub_1D17450A8, 0, 0);
}

uint64_t sub_1D17450A8()
{
  v1 = v0[40];
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1D17451C4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6497B0, &qword_1D1E6F370);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1E55558;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchPredictionsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D17451C4()
{
  v1 = *(*v0 + 264);
  *(*v0 + 328) = *(*v0 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1D17452D0, v1, 0);
}

uint64_t sub_1D17452D0()
{
  v43 = v0;
  v1 = v0[38];
  v2 = v0[34];
  v3 = *(v0[36] + 16);
  v3(v1, v0[32], v0[35]);
  sub_1D1E669EC();
  v4 = sub_1D1E669FC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_1D1B0C97C(v2, v1);
  swift_endAccess();
  if (qword_1EE07A0C8 != -1)
  {
    swift_once();
  }

  v5 = v0[37];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[31];
  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EE07A0D0);
  v3(v5, v7, v6);
  swift_bridgeObjectRetain_n();
  v10 = v8;

  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6835C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[37];
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v14 = 136315394;
    v15 = sub_1D174A5B8(&qword_1EC642DB8, &unk_1EC649E60, 0x1E696CBA0, &protocol conformance descriptor for HMHomeManager);
    swift_getObjectType();
    (*(v15 + 48))();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DC0, &qword_1D1E6F378);
    v16 = sub_1D1E68AAC();

    v17 = swift_task_alloc();
    *(v17 + 16) = v13;
    v18 = sub_1D1746A6C(sub_1D174A6A4, v17, v16);
    v20 = v19;

    if (v18)
    {
      ObjectType = swift_getObjectType();
      v22 = (*(*(v20 + 16) + 136))(ObjectType);
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0xEC000000656D6F68;
      v22 = 0x206E776F6E6B6E75;
    }

    v28 = v0[41];
    (*(v0[36] + 8))(v0[37], v0[35]);
    v29 = sub_1D1B1312C(v22, v24, v42);

    *(v14 + 4) = v29;
    *(v14 + 12) = 2080;
    v30 = sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
    v31 = MEMORY[0x1D3891260](v28, v30);
    v33 = v32;
    swift_bridgeObjectRelease_n();
    v34 = sub_1D1B1312C(v31, v33, v42);

    *(v14 + 14) = v34;
    _os_log_impl(&dword_1D16EC000, v11, v12, "%s freshly fetched predictions: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v41, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {
    v26 = v0[36];
    v25 = v0[37];
    v27 = v0[35];
    swift_bridgeObjectRelease_n();

    (*(v26 + 8))(v25, v27);
  }

  v35 = v0[41];
  v36 = v0[32];
  v37 = v0[33];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = *(v37 + 144);
  *(v37 + 144) = 0x8000000000000000;
  sub_1D1752984(v35, v36, isUniquelyReferenced_nonNull_native);
  *(v37 + 144) = v42[0];
  swift_endAccess();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v39 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D17457F8, v39, 0);
}

uint64_t sub_1D17457F8()
{
  v1 = v0[33];
  v0[42] = swift_unknownObjectWeakLoadStrong();
  v0[43] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1745870, v1, 0);
}

uint64_t sub_1D1745870()
{
  if (*(v0 + 336))
  {
    v1 = *(v0 + 344);
    v3 = *(v0 + 320);
    v2 = *(v0 + 328);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v5 = *(v0 + 328);

  v6 = *(v0 + 8);

  return v6(v5);
}

int64_t sub_1D1745950@<X0>(int64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = (v3 + 63) >> 6;
    do
    {
      if (v9 - 1 == v11)
      {
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 40) = 1024;
        return result;
      }

      v6 = v11 + 1;
      v12 = *(result + 72 + 8 * v11);
      v10 -= 64;
      ++v11;
    }

    while (!v12);
    v8 = (v12 - 1) & v12;
    v7 = __clz(__rbit64(v12)) - v10;
  }

  v13 = *(result + 56);
  v14 = v13 + 48 * v7;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v16;
  while (v8)
  {
LABEL_15:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = v13 + 48 * (v18 | (v6 << 6));
    if (v17)
    {
      v16 = *(v19 + 8);
      v17 = v16;
LABEL_20:
      v15 = *v19;
      v14 = v19;
    }

    else if ((*(v19 + 8) & 1) == 0 && v15 < *v19)
    {
      v17 = 0;
      v16 = *(v19 + 8);
      goto LABEL_20;
    }
  }

  while (1)
  {
    result = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (result >= v9)
    {
      v20 = *(v14 + 40);
      v21 = *(v14 + 32);
      v22 = *(v14 + 16);
      v23 = (*(v14 + 9) << 8) | ((*(v14 + 13) | (*(v14 + 15) << 16)) << 40) | v16;
      *a2 = v15;
      *(a2 + 8) = v23;
      *(a2 + 16) = v22;
      *(a2 + 32) = v21;
      *(a2 + 40) = v20;
      return result;
    }

    v8 = *(v2 + 8 * result);
    ++v6;
    if (v8)
    {
      v6 = result;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1745ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

int64_t sub_1D1745B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1D1745BC4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = a1 + 7;
    do
    {
      v5 = *(v4 - 1);
      if (sub_1D1E6934C())
      {
        v2 = v5;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t PredictableInteractionEvent.init(ids:elementType:interactionType:isPredictionUI:homeID:dataModel:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 224) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 225) = *a3;
  *(v7 + 226) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D1745D2C, 0, 0);
}

uint64_t sub_1D1745D2C()
{
  *(v0 + 112) = sub_1D1E67E1C();
  *(v0 + 120) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1745DC4, v2, v1);
}

uint64_t sub_1D1745DC4()
{
  v1 = *(v0 + 88);

  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 128) = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1745E60, 0, 0);
}

uint64_t sub_1D1745E60()
{
  v1 = v0[10];
  if (v0[16])
  {
    v0[17] = sub_1D1E66A2C();
    v0[18] = sub_1D1E67E0C();
    v3 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1745FB4, v3, v2);
  }

  else
  {
    v4 = v0[11];
    v5 = sub_1D1E66A7C();
    (*(*(v5 - 8) + 8))(v1, v5);

    v6 = v0[8];
    *(v6 + 111) = 0;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D1745FB4()
{
  v1 = v0[17];
  v2 = v0[11];

  v0[19] = [v2 homeFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1746044, 0, 0);
}

uint64_t sub_1D1746044()
{
  if (v0[19])
  {
    v0[20] = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1746194, v2, v1);
  }

  else
  {
    v3 = v0[16];
    v4 = v0[10];
    v5 = v0[11];
    v6 = sub_1D1E66A7C();
    (*(*(v6 - 8) + 8))(v4, v6);

    v7 = v0[8];
    *(v7 + 111) = 0;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D1746194()
{

  if (qword_1EE07B500 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D174622C, 0, 0);
}

uint64_t sub_1D174622C()
{
  *(v0 + 168) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17462B8, v2, v1);
}

uint64_t sub_1D17462B8()
{
  v1 = v0[16];

  v0[22] = qword_1EE07B508;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1D1746368;
  v3 = v0[10];

  return RecommendationsModerator.currentUserActionPredictions(manager:for:)(v1, v3);
}

uint64_t sub_1D1746368(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1746468, 0, 0);
}

uint64_t sub_1D1746468()
{
  *(v0 + 200) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17464F4, v2, v1);
}

uint64_t sub_1D17464F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D174655C, 0, 0);
}

uint64_t sub_1D174655C()
{
  *(v0 + 208) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17465E8, v2, v1);
}

uint64_t sub_1D17465E8()
{
  v1 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D1746654, v1, 0);
}

uint64_t sub_1D1746654()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D17466DC, 0, 0);
}

uint64_t sub_1D17466DC()
{
  v40 = v0;
  if (*(*(v0 + 216) + 16) && (v1 = sub_1D1742188(), (v2 & 1) != 0))
  {
    v3 = v1;
    v4 = *(v0 + 104);
    v5 = *(*(v0 + 216) + 56);
    v6 = sub_1D1E669FC();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v4, v5 + *(v7 + 72) * v3, v6);

    v8 = 0;
  }

  else
  {

    v6 = sub_1D1E669FC();
    v7 = *(v6 - 8);
    v8 = 1;
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 152);
  v29 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v32 = *(v0 + 88);
  v33 = *(v0 + 80);
  v34 = *(v0 + 224);
  v35 = *(v0 + 225);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  (*(v7 + 56))(v11, v8, 1, v6);
  v15 = sub_1D17424D8(v9, v10, v13);

  sub_1D1745950(v15, &v36);

  v31 = v38;
  v30 = v39;
  sub_1D1741B10(0, &qword_1EC642D68, 0x1E695E000);
  v27 = v37;
  v28 = v36;
  static NSUserDefaults.recommendationUILastOpenedDate.getter(v12);
  sub_1D17421D4(v10, v11, v12, &v36);
  sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v15) = v36;
  v16 = *(&v36 + 1);
  v17 = v37;
  v26 = *(&v37 + 1);
  v18 = [objc_opt_self() processInfo];
  v19 = [v18 processName];

  v20 = sub_1D1E6781C();
  v22 = v21;

  v23 = sub_1D1E66A7C();
  (*(*(v23 - 8) + 8))(v33, v23);
  sub_1D1741A30(v11, &qword_1EC642570, &qword_1D1E6C6A0);
  *v14 = 0xD00000000000001BLL;
  *(v14 + 8) = 0x80000001D1E6EFF0;
  *(v14 + 16) = v35;
  *(v14 + 24) = v20;
  *(v14 + 32) = v22;
  *(v14 + 40) = v34;
  *(v14 + 48) = v28;
  *(v14 + 64) = v27;
  *(v14 + 80) = v31;
  *(v14 + 88) = v30;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 112) = v17;
  *(v14 + 113) = v26;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D1746A6C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v10 = *i;
    v7 = v10;
    swift_unknownObjectRetain();
    v8 = a1(&v10);
    if (v3)
    {
      break;
    }

    if (v8)
    {
      return v7;
    }

    swift_unknownObjectRelease();
    if (!--v4)
    {
      return 0;
    }
  }

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1D1746BCC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v30 = a5;
  v27 = a1;
  v28 = a4;
  v26 = a6;
  v25 = a3(0);
  v29 = *(v25 - 8);
  v8 = MEMORY[0x1EEE9AC00](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_1D174A418(*(a2 + 56) + *(v29 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v12, v28);
      sub_1D174A480(v12, v10, v30);
      v20 = v27(v10);
      if (v6)
      {
        sub_1D174A4E8(v10, v30);
      }

      if (v20)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_1D174A4E8(v10, v30);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v23 = v26;
    sub_1D174A480(v10, v26, v30);
    v22 = v23;
    v21 = 0;
    return (*(v29 + 56))(v22, v21, 1, v25);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v21 = 1;
        v22 = v26;
        return (*(v29 + 56))(v22, v21, 1, v25);
      }

      v15 = *(a2 + 64 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D1746E10(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
    sub_1D174A5B8(&qword_1EE079CE8, &qword_1EE079CF0, 0x1E696CBB8, MEMORY[0x1E69E81B8]);
    sub_1D1E681BC();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1D1E6877C())
        {
          goto LABEL_20;
        }

        sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_1D1716918(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_1D1716918(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1747128@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v30 = a5;
  v27 = a1;
  v28 = a4;
  v26 = a6;
  v25 = a3(0);
  v29 = *(v25 - 8);
  v8 = MEMORY[0x1EEE9AC00](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_1D174A418(*(a2 + 48) + *(v29 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v12, v28);
      sub_1D174A480(v12, v10, v30);
      v20 = v27(v10);
      if (v6)
      {
        sub_1D174A4E8(v10, v30);
      }

      if (v20)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_1D174A4E8(v10, v30);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v23 = v26;
    sub_1D174A480(v10, v26, v30);
    v22 = v23;
    v21 = 0;
    return (*(v29 + 56))(v22, v21, 1, v25);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v21 = 1;
        v22 = v26;
        return (*(v29 + 56))(v22, v21, 1, v25);
      }

      v15 = *(a2 + 56 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D174736C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a2;
  v35 = a1;
  v32 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v31 = *(v36 - 8);
  v7 = MEMORY[0x1EEE9AC00](v36);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v30 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v37 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v9;
      v38 = v5;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = v37;
      v22 = *(v37 + 48);
      v23 = sub_1D1E66A7C();
      v24 = v33;
      (*(*(v23 - 8) + 16))(v33, v22 + *(*(v23 - 8) + 72) * v20, v23);
      v25 = *(v21 + 56);
      v26 = type metadata accessor for StaticService(0);
      sub_1D174A418(v25 + *(*(v26 - 8) + 72) * v20, v24 + *(v36 + 48), type metadata accessor for StaticService);
      v9 = v18;
      sub_1D1741A90(v24, v18, &qword_1EC642DB0, &unk_1D1E6F360);
      v27 = v38;
      v28 = v35(v18);
      v5 = v27;
      if (v27)
      {
        sub_1D1741A30(v18, &qword_1EC642DB0, &unk_1D1E6F360);
      }

      if (v28)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_1D1741A30(v18, &qword_1EC642DB0, &unk_1D1E6F360);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;
    sub_1D1741A90(v9, v32, &qword_1EC642DB0, &unk_1D1E6F360);
    return (*(v31 + 56))(v29, 0, 1, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        return (*(v31 + 56))(v32, 1, 1, v36);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v9;
        v38 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t (*sub_1D17476A8@<X0>(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void *, uint64_t)@<X3>, uint64_t a4@<X8>))(void *)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = result;
    v9 = a2 + 32;
    while (1)
    {
      sub_1D17419CC(v9, v11);
      v10 = v8(v11);
      if (v4)
      {
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v11);
      v9 += 40;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D1747818@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v12 = a3(0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = *(a2 + 16);
  if (v17)
  {
    v23 = v14;
    v24 = v13;
    v25 = a6;
    v18 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    while (1)
    {
      sub_1D174A418(v18, v16, a4);
      v20 = a1(v16);
      if (v6)
      {
        return sub_1D174A4E8(v16, a5);
      }

      if (v20)
      {
        break;
      }

      sub_1D174A4E8(v16, a5);
      v18 += v19;
      if (!--v17)
      {
        v21 = 1;
        a6 = v25;
        goto LABEL_10;
      }
    }

    a6 = v25;
    sub_1D174A480(v16, v25, a5);
    v21 = 0;
LABEL_10:
    v14 = v23;
    v13 = v24;
  }

  else
  {
    v21 = 1;
  }

  return (*(v14 + 56))(a6, v21, 1, v13);
}

uint64_t sub_1D17479B4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_1D1E66A7C();
  v6 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D1747CC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1D1747DDC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1747F44(v6, &qword_1EE07B620, 0x1E696CB98, sub_1D1748338, sub_1D1748070);
  return sub_1D1E6897C();
}

uint64_t sub_1D1747E90(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1747F44(v6, &qword_1EE07B650, 0x1E696CCA8, sub_1D1748BB4, sub_1D174823C);
  return sub_1D1E6897C();
}

uint64_t sub_1D1747F44(uint64_t a1, unint64_t *a2, void *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1D1E68F9C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D1741B10(0, a2, a3);
        v14 = sub_1D1E67C8C();
        *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      v16[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v15 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

void sub_1D1748070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v30 = *a4;
LABEL_6:
    v28 = v5;
    v29 = a3;
    v8 = *(v4 + 8 * a3);
    v27 = v6;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[47]];
      if (v12 == [v11 v7[47]])
      {
        v14 = [v10 name];
        v15 = sub_1D1E6781C();
        v17 = v16;

        v18 = [v11 name];
        v19 = sub_1D1E6781C();
        v21 = v20;

        if (v15 == v19 && v17 == v21)
        {

          v4 = v30;
          v7 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_5:
          a3 = v29 + 1;
          v5 = v28 + 8;
          v6 = v27 - 1;
          if (v29 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v23 = sub_1D1E6904C();

        v4 = v30;
        v7 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        if ((v23 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = [v10 v7[47]];

        if ((v13 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v24 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v24;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D174823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 predictionScore];
      v15 = v14;
      [v13 predictionScore];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D1748338(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    while (1)
    {
      v10 = v7;
      v11 = v7 + 1;
      if (v7 + 1 < v6)
      {
        break;
      }

LABEL_32:
      v35 = a3[1];
      v7 = v11;
      if (v11 >= v35)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_143;
      }

      if (v11 - v10 >= a4)
      {
LABEL_40:
        v7 = v11;
LABEL_41:
        if (v7 < v10)
        {
          goto LABEL_142;
        }

        goto LABEL_42;
      }

      v36 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        goto LABEL_145;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v10)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (v11 == v36)
      {
        goto LABEL_40;
      }

      v110 = v8;
      v5 = *a3;
      v4 = *a3 + 8 * v11 - 8;
      v107 = v10;
      v83 = v10 - v11;
      v112 = v36;
      v120 = *a3;
      while (2)
      {
        v114 = v4;
        v116 = v11;
        v84 = *(v5 + 8 * v11);
        v113 = v83;
        while (1)
        {
          v85 = *v4;
          v86 = v84;
          v87 = v85;
          LODWORD(v85) = [v86 v9[47]];
          if (v85 != [v87 v9[47]])
          {
            v88 = [v86 v9[47]];

            if ((v88 & 1) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_103;
          }

          v89 = [v86 name];
          v90 = sub_1D1E6781C();
          v92 = v91;

          v93 = [v87 name];
          v94 = sub_1D1E6781C();
          v96 = v95;

          if (v90 == v94 && v92 == v96)
          {
            break;
          }

          v98 = sub_1D1E6904C();

          v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          v5 = v120;
          if ((v98 & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_103:
          if (!v5)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          v99 = *v4;
          v84 = *(v4 + 8);
          *v4 = v84;
          *(v4 + 8) = v99;
          v4 -= 8;
          if (__CFADD__(v83++, 1))
          {
            goto LABEL_93;
          }
        }

        v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v5 = v120;
LABEL_93:
        v11 = v116 + 1;
        v4 = v114 + 8;
        v83 = v113 - 1;
        if (v116 + 1 != v112)
        {
          continue;
        }

        break;
      }

      v7 = v112;
      v8 = v110;
      v10 = v107;
      if (v112 < v107)
      {
        goto LABEL_142;
      }

LABEL_42:
      v37 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v37;
      }

      else
      {
        v8 = sub_1D177D070(0, *(v37 + 2) + 1, 1, v37);
      }

      v4 = *(v8 + 2);
      v38 = *(v8 + 3);
      v39 = v4 + 1;
      if (v4 >= v38 >> 1)
      {
        v8 = sub_1D177D070((v38 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v39;
      v40 = &v8[16 * v4];
      *(v40 + 4) = v10;
      *(v40 + 5) = v7;
      v41 = *a1;
      if (!*a1)
      {
        goto LABEL_152;
      }

      if (v4)
      {
        while (2)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            v47 = &v8[16 * v39 + 32];
            v48 = *(v47 - 64);
            v49 = *(v47 - 56);
            v53 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            if (v53)
            {
              goto LABEL_129;
            }

            v52 = *(v47 - 48);
            v51 = *(v47 - 40);
            v53 = __OFSUB__(v51, v52);
            v45 = v51 - v52;
            v46 = v53;
            if (v53)
            {
              goto LABEL_130;
            }

            v54 = &v8[16 * v39];
            v56 = *v54;
            v55 = *(v54 + 1);
            v53 = __OFSUB__(v55, v56);
            v57 = v55 - v56;
            if (v53)
            {
              goto LABEL_132;
            }

            v53 = __OFADD__(v45, v57);
            v58 = v45 + v57;
            if (v53)
            {
              goto LABEL_135;
            }

            if (v58 >= v50)
            {
              v76 = &v8[16 * v42 + 32];
              v78 = *v76;
              v77 = *(v76 + 1);
              v53 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v53)
              {
                goto LABEL_139;
              }

              if (v45 < v79)
              {
                v42 = v39 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v46)
              {
                goto LABEL_131;
              }

              v59 = &v8[16 * v39];
              v61 = *v59;
              v60 = *(v59 + 1);
              v62 = __OFSUB__(v60, v61);
              v63 = v60 - v61;
              v64 = v62;
              if (v62)
              {
                goto LABEL_134;
              }

              v65 = &v8[16 * v42 + 32];
              v67 = *v65;
              v66 = *(v65 + 1);
              v53 = __OFSUB__(v66, v67);
              v68 = v66 - v67;
              if (v53)
              {
                goto LABEL_137;
              }

              if (__OFADD__(v63, v68))
              {
                goto LABEL_138;
              }

              if (v63 + v68 < v45)
              {
                goto LABEL_75;
              }

              if (v45 < v68)
              {
                v42 = v39 - 2;
              }
            }
          }

          else
          {
            if (v39 == 3)
            {
              v43 = *(v8 + 4);
              v44 = *(v8 + 5);
              v53 = __OFSUB__(v44, v43);
              v45 = v44 - v43;
              v46 = v53;
              goto LABEL_61;
            }

            v69 = &v8[16 * v39];
            v71 = *v69;
            v70 = *(v69 + 1);
            v53 = __OFSUB__(v70, v71);
            v63 = v70 - v71;
            v64 = v53;
LABEL_75:
            if (v64)
            {
              goto LABEL_133;
            }

            v72 = &v8[16 * v42];
            v74 = *(v72 + 4);
            v73 = *(v72 + 5);
            v53 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v53)
            {
              goto LABEL_136;
            }

            if (v75 < v63)
            {
              break;
            }
          }

          v4 = v42 - 1;
          if (v42 - 1 >= v39)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
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
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          if (!*a3)
          {
            goto LABEL_149;
          }

          v5 = v8;
          v80 = *&v8[16 * v4 + 32];
          v81 = *&v8[16 * v42 + 40];
          sub_1D174922C((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v42 + 32]), (*a3 + 8 * v81), v41);
          if (v118)
          {
            goto LABEL_123;
          }

          if (v81 < v80)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1D1E0BE44(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_128;
          }

          v82 = v5 + 16 * v4;
          *(v82 + 32) = v80;
          *(v82 + 40) = v81;
          v123 = v5;
          sub_1D1E0BDB8(v42);
          v8 = v123;
          v39 = *(v123 + 16);
          if (v39 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_112;
      }
    }

    v109 = v8;
    v4 = *a3;
    v122 = *(*a3 + 8 * v11);
    v121 = *(v4 + 8 * v7);
    v12 = v121;
    v13 = v122;
    v14 = v12;
    v119 = sub_1D1A84004(&v122, &v121);
    if (v118)
    {

      return;
    }

    v5 = v10 + 2;
    if (v10 + 2 >= v6)
    {
      v8 = v109;
      if ((v119 & 1) == 0)
      {
LABEL_31:
        v11 = v5;
        goto LABEL_32;
      }
    }

    else
    {
      v106 = v10;
      v4 += 8 * v10 + 16;
      v115 = v6;
      do
      {
        v16 = *(v4 - 8);
        v17 = *v4;
        v18 = v16;
        v19 = [v17 v9[47]];
        if (v19 == [v18 v9[47]])
        {
          v20 = [v17 name];
          v21 = sub_1D1E6781C();
          v23 = v22;

          v24 = [v18 name];
          v25 = sub_1D1E6781C();
          v27 = v26;

          if (v21 == v25 && v23 == v27)
          {

            v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = v115;
            if (v119)
            {
              v8 = v109;
              v10 = v106;
              goto LABEL_23;
            }
          }

          else
          {
            v29 = sub_1D1E6904C();

            v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = v115;
            if ((v119 ^ v29))
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v15 = [v17 v9[47]];

          if ((v119 ^ v15))
          {
            goto LABEL_22;
          }
        }

        v4 += 8;
        ++v5;
      }

      while (v6 != v5);
      v5 = v6;
LABEL_22:
      v8 = v109;
      v10 = v106;
      if ((v119 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_23:
    if (v5 < v10)
    {
      goto LABEL_144;
    }

    if (v10 < v5)
    {
      v30 = 8 * v5 - 8;
      v31 = 8 * v10;
      v11 = v5;
      v32 = v10;
      while (1)
      {
        if (v32 != --v5)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_150;
          }

          v33 = *(v34 + v31);
          *(v34 + v31) = *(v34 + v30);
          *(v34 + v30) = v33;
        }

        ++v32;
        v30 -= 8;
        v31 += 8;
        if (v32 >= v5)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_31;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_112:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_153;
  }

  v4 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v101 = v4;
  }

  else
  {
LABEL_147:
    v101 = sub_1D1E0BE44(v4);
  }

  v123 = v101;
  v4 = *(v101 + 2);
  if (v4 < 2)
  {
LABEL_123:

    return;
  }

  while (*a3)
  {
    v102 = *&v101[16 * v4];
    v103 = v101;
    v104 = *&v101[16 * v4 + 24];
    sub_1D174922C((*a3 + 8 * v102), (*a3 + 8 * *&v101[16 * v4 + 16]), (*a3 + 8 * v104), v5);
    if (v118)
    {
      goto LABEL_123;
    }

    if (v104 < v102)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_1D1E0BE44(v103);
    }

    if (v4 - 2 >= *(v103 + 2))
    {
      goto LABEL_141;
    }

    v105 = &v103[16 * v4];
    *v105 = v102;
    *(v105 + 1) = v104;
    v123 = v103;
    sub_1D1E0BDB8(v4 - 1);
    v101 = v123;
    v4 = *(v123 + 16);
    if (v4 <= 1)
    {
      goto LABEL_123;
    }
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

void sub_1D1748BB4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1D1E0BE44(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_1D17496B0((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1E0BE44(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_1D1E0BDB8(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 predictionScore];
      v19 = v18;
      [v17 predictionScore];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 predictionScore];
        v27 = v26;
        [v25 predictionScore];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D177D070(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_1D177D070((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_1D17496B0((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1E0BE44(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_1D1E0BDB8(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 predictionScore];
    v48 = v47;
    [v46 predictionScore];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if (v110 + 1 != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1D174922C(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v33 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v33;
    }

    v32 = a2;
    v14 = &v4[v11];
    if (v9 >= 8 && a2 > __src)
    {
      v34 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      v53 = v4;
LABEL_35:
      v35 = v32 - 1;
      --v5;
      v36 = v14;
      v54 = v32 - 1;
      __dsta = v32;
      do
      {
        v37 = *--v36;
        v38 = *v35;
        v39 = v37;
        v40 = v38;
        LODWORD(v38) = [v39 v34[47]];
        if (v38 == [v40 v34[47]])
        {
          v60 = v14;
          v42 = [v39 name];
          v43 = sub_1D1E6781C();
          v45 = v44;

          v46 = [v40 name];
          v47 = sub_1D1E6781C();
          v49 = v48;

          if (v43 == v47 && v45 == v49)
          {

            v4 = v53;
            v35 = v54;
            v14 = v60;
            v34 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          }

          else
          {
            v51 = sub_1D1E6904C();

            v4 = v53;
            v35 = v54;
            v14 = v60;
            v34 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            if (v51)
            {
LABEL_49:
              if (v5 + 1 != __dsta)
              {
                *v5 = *v35;
              }

              if (v14 <= v4 || (v32 = v35, v35 <= __src))
              {
                v32 = v35;
                goto LABEL_55;
              }

              goto LABEL_35;
            }
          }
        }

        else
        {
          v41 = [v39 v34[47]];

          if (v41)
          {
            goto LABEL_49;
          }
        }

        if (v5 + 1 != v14)
        {
          *v5 = *v36;
        }

        --v5;
        v14 = v36;
      }

      while (v36 > v4);
      v14 = v36;
      v32 = __dsta;
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v14 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      v59 = v14;
      do
      {
        v16 = *v4;
        v17 = *v12;
        v18 = v16;
        LODWORD(v16) = [v17 v15[47]];
        if (v16 == [v18 v15[47]])
        {
          __dst = v12;
          v57 = v13;
          v20 = v4;
          v21 = [v17 name];
          v22 = sub_1D1E6781C();
          v24 = v23;

          v25 = [v18 name];
          v26 = sub_1D1E6781C();
          v28 = v27;

          v29 = v22 == v26 && v24 == v28;
          if (v29)
          {

            v4 = v20;
            v12 = __dst;
            v13 = v57;
            v14 = v59;
            v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_24:
            v31 = v4;
            v29 = v13 == v4++;
            if (v29)
            {
              goto LABEL_26;
            }

LABEL_25:
            *v13 = *v31;
            goto LABEL_26;
          }

          v30 = sub_1D1E6904C();

          v4 = v20;
          v12 = __dst;
          v13 = v57;
          v14 = v59;
          v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          if ((v30 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v19 = [v17 v15[47]];

          if ((v19 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v31 = v12;
        v29 = v13 == v12++;
        if (!v29)
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v13;
      }

      while (v4 < v14 && v12 < v5);
    }

    v32 = v13;
  }

LABEL_55:
  if (v32 != v4 || v32 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v32, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1D17496B0(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 predictionScore];
        v35 = v34;
        [v33 predictionScore];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 predictionScore];
        v19 = v18;
        [v17 predictionScore];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

unint64_t sub_1D17499C8(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D1E6873C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D1749AC0()
{
  result = qword_1EC642D40;
  if (!qword_1EC642D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D40);
  }

  return result;
}

unint64_t sub_1D1749B14()
{
  result = qword_1EC642D48;
  if (!qword_1EC642D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D48);
  }

  return result;
}

unint64_t sub_1D1749B68()
{
  result = qword_1EC642D50;
  if (!qword_1EC642D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D50);
  }

  return result;
}

unint64_t sub_1D1749BBC()
{
  result = qword_1EC642D58;
  if (!qword_1EC642D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D58);
  }

  return result;
}

unint64_t sub_1D1749C10()
{
  result = qword_1EC642D60;
  if (!qword_1EC642D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D60);
  }

  return result;
}

unint64_t sub_1D1749C88()
{
  result = qword_1EC642D70;
  if (!qword_1EC642D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D70);
  }

  return result;
}

unint64_t sub_1D1749CE0()
{
  result = qword_1EC642D78;
  if (!qword_1EC642D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC642D80, &qword_1D1E6F148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D1749D8C(uint64_t a1)
{
  result = sub_1D1749DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1749DB4()
{
  result = qword_1EC642D88;
  if (!qword_1EC642D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D88);
  }

  return result;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D1749E34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 115))
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

uint64_t sub_1D1749E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 115) = 1;
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

    *(result + 115) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictableInteractionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PredictableInteractionEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D174A054()
{
  result = qword_1EC642D90;
  if (!qword_1EC642D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D90);
  }

  return result;
}

unint64_t sub_1D174A0AC()
{
  result = qword_1EC642D98;
  if (!qword_1EC642D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D98);
  }

  return result;
}

unint64_t sub_1D174A104()
{
  result = qword_1EC642DA0;
  if (!qword_1EC642DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DA0);
  }

  return result;
}

uint64_t sub_1D174A158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E656D656C65 && a2 == 0xEB00000000657079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EB85A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EB85C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EB85E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D174A3C4()
{
  result = qword_1EC642DA8;
  if (!qword_1EC642DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DA8);
  }

  return result;
}

uint64_t sub_1D174A418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D174A480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D174A4E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D174A548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D174A5B8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D1741B10(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D174A5FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D1E66A7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static PredictionsRelevanceLevel.analyze<A>(predictions:totalPredictableCount:)@<X0>(uint64_t a1@<X1>, char *a3@<X8>)
{
  sub_1D1E67D1C();
  swift_getWitnessTable();
  result = sub_1D1E682AC();
  v6 = 2 * (a1 < 5);
  if (result)
  {
    v6 = 1;
  }

  *a3 = v6;
  return result;
}

unint64_t PredictionsRelevanceLevel.description.getter()
{
  v1 = 0x746E6176656C6572;
  v2 = 0xD000000000000025;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0x6369646572506F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

HomeDataModel::PredictionsRelevanceLevel_optional __swiftcall PredictionsRelevanceLevel.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 2) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D174A860()
{
  result = qword_1EC642DC8;
  if (!qword_1EC642DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DC8);
  }

  return result;
}

uint64_t sub_1D174A8B4()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](1 - v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D174A934(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](1 - v2);
  return sub_1D1E6926C();
}

unint64_t sub_1D174A998()
{
  v1 = 0x746E6176656C6572;
  v2 = 0xD000000000000025;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0x6369646572506F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D174AAEC()
{
  result = qword_1EC642DD0;
  if (!qword_1EC642DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DD0);
  }

  return result;
}

uint64_t TileInteractionEvent.eventName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TileInteractionEvent.itemClassName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TileInteractionEvent.processName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t TileInteractionEvent.sourceViewControllerClassName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

__n128 TileInteractionEvent.predictionScores.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  result = *(v1 + 96);
  v5 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

__n128 TileInteractionEvent.predictionContext.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[10].n128_u16[0];
  v3 = v1[10].n128_u8[2];
  result = v1[9];
  *a1 = result;
  a1[1].n128_u8[2] = v3;
  a1[1].n128_u16[0] = v2;
  return result;
}

HomeDataModel::TileInteractionEvent::InteractionType_optional __swiftcall TileInteractionEvent.InteractionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::TileInteractionEvent::ResultPriority_optional __swiftcall TileInteractionEvent.ResultPriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if ((rawValue + 1) < 4)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D174AE28()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1 - 1);
  return sub_1D1E6926C();
}

uint64_t sub_1D174AEA0(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2 - 1);
  return sub_1D1E6926C();
}

__n128 TileInteractionEvent.init(interactionType:itemClassName:type:tileState:tileInteractionArea:sourceViewControllerClassName:displayedTileContext:tileIsEditing:itemPriority:numberOfRepresentedHomeKitObjects:isServiceLikeItem:isSuggestedScenesEnabled:isShownAsPrediction:isShownInPredictionUI:predictionScores:predictionContext:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char a11, char *a12, uint64_t a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t *a19)
{
  v31 = *a1;
  v35 = *a4;
  v20 = *a6;
  v39 = *a10;
  v33 = *a12;
  v34 = *a5;
  v41 = *(a18 + 32);
  v40 = *(a18 + 40);
  if (a3)
  {
    v21 = a2;
  }

  else
  {
    v21 = 0x6E776F6E6B6E55;
  }

  v37 = a19[1];
  v38 = *a19;
  if (a3)
  {
    v22 = a3;
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  v36 = *(a19 + 8);
  if (a8)
  {
    v23 = a7;
  }

  else
  {
    v23 = 7104878;
  }

  v32 = *(a19 + 18);
  if (a8)
  {
    v24 = a8;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  v25 = [objc_opt_self() processInfo];
  v26 = [v25 processName];

  v27 = sub_1D1E6781C();
  v29 = v28;

  *a9 = 0x65746E49656C6954;
  *(a9 + 8) = 0xEF6E6F6974636172;
  *(a9 + 16) = v31;
  *(a9 + 17) = a14;
  *(a9 + 18) = a11;
  *(a9 + 19) = v20;
  *(a9 + 24) = v21;
  *(a9 + 32) = v22;
  *(a9 + 40) = v35;
  *(a9 + 41) = v34;
  *(a9 + 42) = v33;
  *(a9 + 48) = a13;
  *(a9 + 56) = v27;
  *(a9 + 64) = v29;
  *(a9 + 72) = v23;
  *(a9 + 80) = v24;
  *(a9 + 88) = v39;
  *(a9 + 89) = a15;
  *(a9 + 90) = a16;
  *(a9 + 91) = a17;
  result = *(a18 + 16);
  *(a9 + 96) = *a18;
  *(a9 + 112) = result;
  *(a9 + 128) = v41;
  *(a9 + 136) = v40;
  *(a9 + 144) = v38;
  *(a9 + 152) = v37;
  *(a9 + 162) = v32;
  *(a9 + 160) = v36;
  return result;
}

Swift::Void __swiftcall TileInteractionEvent.transform(payload:)(Swift::OpaquePointer *payload)
{
  if (*(v1 + 19) <= 2u)
  {
    v3 = sub_1D1E677EC();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = payload->_rawValue;
    sub_1D175263C(v3, 0xD000000000000013, 0x80000001D1EB86B0, isUniquelyReferenced_nonNull_native);
    payload->_rawValue = rawValue;
  }

  v5 = sub_1D1E6821C();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v16 = payload->_rawValue;
  sub_1D175263C(v5, 0xD000000000000010, 0x80000001D1EB8670, v6);
  payload->_rawValue = v16;
  v7 = sub_1D1E67D2C();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v17 = payload->_rawValue;
  sub_1D175263C(v7, 0x6172656D61437369, 0xEC0000006D657449, v8);
  payload->_rawValue = v17;
  v9 = sub_1D1E67D2C();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v18 = payload->_rawValue;
  sub_1D175263C(v9, 0x6E6F697463417369, 0xEF6D657449746553, v10);
  payload->_rawValue = v18;
  v11 = sub_1D1E67D2C();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v19 = payload->_rawValue;
  sub_1D175263C(v11, 0x7375746174537369, 0xEC0000006D657449, v12);
  payload->_rawValue = v19;
  v13 = sub_1D1E67D2C();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v20 = payload->_rawValue;
  sub_1D175263C(v13, 0x61446D6F6F527369, 0xEF6472616F626873, v14);
  payload->_rawValue = v20;
}

unint64_t sub_1D174B498(char a1)
{
  result = 0x6D614E746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x64457349656C6974;
      break;
    case 4:
    case 15:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x73616C436D657469;
      break;
    case 6:
      result = 1701869940;
      break;
    case 7:
      result = 0x74617453656C6974;
      break;
    case 8:
      result = 0x6F6972506D657469;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x4E737365636F7270;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D174B6CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D174C7C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D174B700(uint64_t a1)
{
  v2 = sub_1D174C128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D174B73C(uint64_t a1)
{
  v2 = sub_1D174C128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TileInteractionEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DD8, &qword_1D1E6F4E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v52 = *(v1 + 16);
  v7 = *(v1 + 17);
  v45 = *(v1 + 18);
  v46 = v7;
  v44 = *(v1 + 19);
  v8 = *(v1 + 24);
  v42 = *(v1 + 32);
  v43 = v8;
  LODWORD(v8) = *(v1 + 40);
  v40 = *(v1 + 41);
  v41 = v8;
  v39 = *(v1 + 42);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  v37 = *(v1 + 64);
  v38 = v9;
  v34 = v11;
  v35 = *(v1 + 80);
  v36 = v10;
  LODWORD(v9) = *(v1 + 88);
  v32 = *(v1 + 89);
  v33 = v9;
  LODWORD(v9) = *(v1 + 90);
  v30 = *(v1 + 91);
  v31 = v9;
  v12 = *(v1 + 96);
  v28 = *(v1 + 112);
  v29 = v12;
  v26 = *(v1 + 128);
  v27 = *(v1 + 136);
  v13 = *(v1 + 152);
  *&v25 = *(v1 + 144);
  *(&v25 + 1) = v13;
  v24 = *(v1 + 162);
  v14 = *(v1 + 160);
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_1D174C128();
  sub_1D1E6930C();
  LOBYTE(v48) = 0;
  v19 = v6;
  v20 = v47;
  sub_1D1E68ECC();
  if (v20)
  {
    return (*(v4 + 8))(v6, v18);
  }

  v22 = v44;
  LODWORD(v47) = v14;
  LOBYTE(v48) = v52;
  v53 = 1;
  sub_1D174C17C();
  sub_1D1E68F1C();
  LOBYTE(v48) = 2;
  sub_1D1E68EDC();
  LOBYTE(v48) = 3;
  sub_1D1E68E1C();
  LOBYTE(v48) = v22;
  v53 = 4;
  sub_1D174C1D0();
  sub_1D1E68E5C();
  LOBYTE(v48) = 5;
  sub_1D1E68ECC();
  LOBYTE(v48) = v41;
  v53 = 6;
  sub_1D1749B14();
  sub_1D1E68F1C();
  LOBYTE(v48) = v40;
  v53 = 7;
  sub_1D174C224();
  sub_1D1E68F1C();
  LOBYTE(v48) = v39;
  v53 = 8;
  sub_1D174C278();
  sub_1D1E68E5C();
  LOBYTE(v48) = 9;
  sub_1D1E68F0C();
  LOBYTE(v48) = 10;
  sub_1D1E68ECC();
  LOBYTE(v48) = 11;
  sub_1D1E68ECC();
  LOBYTE(v48) = v33;
  v53 = 12;
  sub_1D174C2CC();
  sub_1D1E68E5C();
  LOBYTE(v48) = 13;
  sub_1D1E68E1C();
  LOBYTE(v48) = 14;
  sub_1D1E68EDC();
  LOBYTE(v48) = 15;
  sub_1D1E68EDC();
  v49 = v28;
  v48 = v29;
  v50 = v26;
  v51 = v27;
  v53 = 16;
  sub_1D1749BBC();
  sub_1D1E68E5C();
  v48 = v25;
  BYTE2(v49) = (v47 | (v24 << 16)) >> 16;
  LOWORD(v49) = v47;
  v53 = 17;
  sub_1D1749C10();
  sub_1D1E68E5C();
  return (*(v4 + 8))(v19, v18);
}

uint64_t TileInteractionEvent.init<A>(tileInfo:interactionType:tileInteractionArea:sourceViewControllerClassName:isRoomDashboard:displayedTileContext:itemPriority:numberOfRepresentedHomeKitObjects:isShownAsPrediction:isShownInPredictionUI:predictionScores:predictionContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v16) = *v19;
  v51 = *v18;
  v52 = v16;
  v21 = *v20;
  v53 = *v22;
  v54 = v21;
  v24 = *v23;
  v60 = v23[1];
  v61 = v24;
  v58 = *(v23 + 4);
  v57 = *(v23 + 20);
  v26 = *v25;
  v55 = v25[1];
  v56 = v26;
  v59 = *(v25 + 8) | (*(v25 + 18) << 16);
  if ((*(a11 + 176))(a10, a11))
  {
    if ((*(a11 + 152))(a10, a11))
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    v50 = v27;
  }

  else
  {
    v50 = 0;
  }

  v47 = a6;
  v48 = a7;
  v49 = a5;
  TileInfoBearer.analyticsElementType.getter(a10, v63);
  v28 = v63[0];
  v62 = v15;
  (*(v15 + 16))(v17, a1, a10);
  if (swift_dynamicCast())
  {
    sub_1D17419CC(*v63 + 16, v63);
    __swift_project_boxed_opaque_existential_1(v63, v64);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v63);
    v46 = sub_1D1E6940C();
    v45 = v29;
  }

  else
  {
    swift_getDynamicType();
    v46 = sub_1D1E6940C();
    v45 = v30;
  }

  if (a3)
  {
    v31 = a2;
  }

  else
  {
    v31 = 7104878;
  }

  if (a3)
  {
    v32 = a3;
  }

  else
  {
    v32 = 0xE300000000000000;
  }

  v33 = [objc_opt_self() processInfo];
  v34 = [v33 processName];

  v35 = sub_1D1E6781C();
  v37 = v36;

  v38 = v47 & 1;
  *a4 = 0x65746E49656C6954;
  *(a4 + 8) = 0xEF6E6F6974636172;
  v39 = v48 & 1;
  v40 = v52;
  *(a4 + 16) = v51;
  *(a4 + 17) = v28 != 55;
  *(a4 + 18) = 2;
  *(a4 + 19) = v40;
  *(a4 + 24) = v46;
  *(a4 + 32) = v45;
  *(a4 + 40) = v28;
  *(a4 + 41) = v50;
  *(a4 + 42) = v53;
  *(a4 + 48) = v49;
  *(a4 + 56) = v35;
  *(a4 + 64) = v37;
  *(a4 + 72) = v31;
  *(a4 + 80) = v32;
  *(a4 + 88) = v54;
  *(a4 + 89) = 2;
  *(a4 + 90) = v38;
  *(a4 + 91) = v39;
  v41 = v60;
  *(a4 + 96) = v61;
  *(a4 + 112) = v41;
  *(a4 + 128) = v58;
  *(a4 + 136) = v57;
  v42 = v55;
  *(a4 + 144) = v56;
  *(a4 + 152) = v42;
  v43 = v59;
  *(a4 + 162) = BYTE2(v59);
  *(a4 + 160) = v43;
  return (*(v62 + 8))(a1, a10);
}

unint64_t sub_1D174C128()
{
  result = qword_1EC642DE0;
  if (!qword_1EC642DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DE0);
  }

  return result;
}

unint64_t sub_1D174C17C()
{
  result = qword_1EC642DE8;
  if (!qword_1EC642DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DE8);
  }

  return result;
}

unint64_t sub_1D174C1D0()
{
  result = qword_1EC642DF0;
  if (!qword_1EC642DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DF0);
  }

  return result;
}

unint64_t sub_1D174C224()
{
  result = qword_1EC642DF8;
  if (!qword_1EC642DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DF8);
  }

  return result;
}

unint64_t sub_1D174C278()
{
  result = qword_1EC642E00;
  if (!qword_1EC642E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E00);
  }

  return result;
}

unint64_t sub_1D174C2CC()
{
  result = qword_1EC642E08;
  if (!qword_1EC642E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E08);
  }

  return result;
}

unint64_t sub_1D174C324()
{
  result = qword_1EC642E10;
  if (!qword_1EC642E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E10);
  }

  return result;
}

unint64_t sub_1D174C37C()
{
  result = qword_1EC642E18;
  if (!qword_1EC642E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E18);
  }

  return result;
}

unint64_t sub_1D174C3D0(uint64_t a1)
{
  result = sub_1D174C3F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D174C3F8()
{
  result = qword_1EC642E20;
  if (!qword_1EC642E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E20);
  }

  return result;
}

__n128 __swift_memcpy163_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D174C488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 163))
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

uint64_t sub_1D174C4D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 162) = 0;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 163) = 1;
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

    *(result + 163) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TileInteractionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TileInteractionEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D174C6C4()
{
  result = qword_1EC642E28;
  if (!qword_1EC642E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E28);
  }

  return result;
}

unint64_t sub_1D174C71C()
{
  result = qword_1EC642E30;
  if (!qword_1EC642E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E30);
  }

  return result;
}

unint64_t sub_1D174C774()
{
  result = qword_1EC642E38;
  if (!qword_1EC642E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E38);
  }

  return result;
}

uint64_t sub_1D174C7C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EB8730 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64457349656C6974 && a2 == 0xED0000676E697469 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EB8750 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73616C436D657469 && a2 == 0xED0000656D614E73 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74617453656C6974 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F6972506D657469 && a2 == 0xEC00000079746972 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D1EB8770 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EB87A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EB87C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EB87E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EB8800 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EB85A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EB85C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EB85E0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_1D174CD78()
{
  result = qword_1EC642E40;
  if (!qword_1EC642E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E40);
  }

  return result;
}

unint64_t sub_1D174CDCC()
{
  result = qword_1EC642E48;
  if (!qword_1EC642E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E48);
  }

  return result;
}

uint64_t HomeProtocol.analyticsTileCountValue.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 16) + 168))(a1, *(a2 + 16));
  swift_getAssociatedTypeWitness();
  v4 = sub_1D1E67CBC();

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(*(a2 + 8) + 40))(a1, *(a2 + 8));
    swift_getAssociatedTypeWitness();
    v6 = sub_1D1E67CBC();

    if ((v6 & 0x8000000000000000) == 0)
    {
      return v6 + v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D174CF7C@<X0>(uint64_t a1@<X8>)
{
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t AnalyticsEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

id AnalyticsEvent.payload()(uint64_t a1, uint64_t a2)
{
  v73[4] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v60 - v6;
  v7 = sub_1D1E669FC();
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E65F8C();
  swift_allocObject();
  sub_1D1E65F7C();
  v10 = a2;
  v11 = v2;
  v12 = v70;
  v13 = sub_1D1E65F6C();
  v15 = v14;

  if (v12)
  {
    return result;
  }

  v70 = 0;
  v66 = a1;
  v67 = v9;
  v17 = objc_opt_self();
  v18 = sub_1D1E6688C();
  v73[0] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:4 error:v73];

  v20 = v15;
  v21 = v13;
  if (!v19)
  {
    v36 = v73[0];
    sub_1D1E6656C();

LABEL_21:
    swift_willThrow();
    return sub_1D174E7C4(v21, v20);
  }

  v22 = v73[0];
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
  if (!swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    goto LABEL_21;
  }

  v62 = v7;
  v63 = v13;
  v23 = v71;
  v72 = v71;
  v24 = v10;
  v25 = *(v10 + 40);
  v26 = v66;
  v27 = v25(v66, v24);
  v64 = v20;
  if (v27)
  {
    v60 = v11;
    v61 = v24;
    v28 = v70;
    sub_1D174E20C(v23);
    v70 = v28;
    v30 = 0;
    v65 = v29;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v29 + 64;
    v34 = v32 & *(v29 + 64);
    v35 = (v31 + 63) >> 6;
    while (1)
    {
      v39 = v67;
      if (!v34)
      {
        break;
      }

LABEL_16:
      v41 = __clz(__rbit64(v34)) | (v30 << 6);
      v42 = (*(v65 + 48) + 16 * v41);
      v43 = *v42;
      v44 = v42[1];
      v45 = *(*(v65 + 56) + 8 * v41);

      v46 = sub_1D171D2F0(v43, v44);
      if (v47)
      {
        v48 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73[0] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D1734030();
          v23 = v73[0];
        }

        v50 = *(v23[7] + 8 * v48);
        sub_1D174F220(v48, v23);
      }

      else
      {
      }

      v34 &= v34 - 1;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v23;
      v38 = v70;
      sub_1D1757628(v45, sub_1D17575DC, 0, v37, v73);
      v70 = v38;

      v23 = v73[0];
    }

    while (1)
    {
      v40 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
      }

      if (v40 >= v35)
      {
        break;
      }

      v34 = *(v33 + 8 * v40);
      ++v30;
      if (v34)
      {
        v30 = v40;
        goto LABEL_16;
      }
    }

    v72 = v23;

    v24 = v61;
    v26 = v66;
  }

  else
  {
    v39 = v67;
  }

  v51 = v68;
  (*(v24 + 32))(v26, v24);
  v52 = v69;
  v53 = v62;
  if ((*(v69 + 48))(v51, 1, v62) == 1)
  {
    sub_1D1741A30(v51, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    (*(v52 + 32))(v39, v51, v53);
    v54 = v24;
    v55 = v52;
    sub_1D1E6699C();
    v56 = v39;
    v57 = sub_1D1E680EC();
    v58 = v72;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = v58;
    sub_1D175263C(v57, 0x6D617473656D6974, 0xE900000000000070, v59);
    v72 = v73[0];
    (*(v55 + 8))(v56, v53);
    v24 = v54;
  }

  (*(v24 + 56))(&v72, v26, v24);
  sub_1D174E7C4(v63, v64);
  return v72;
}

uint64_t AnalyticsEvent.effectiveEventName.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  if (!v5)
  {
    return (*(a2 + 16))(a1, a2);
  }

  v10 = v4;

  MEMORY[0x1D3890F70](46, 0xE100000000000000);

  v6 = (*(a2 + 16))(a1, a2);
  v8 = v7;

  MEMORY[0x1D3890F70](v6, v8);

  return v10;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsEvent.send()()
{
  v3 = v1;
  v4 = v0;
  v5 = (*(v1 + 48))();
  if (v2)
  {
    sub_1D174DD78(v2, v4, v3);
    swift_willThrow();
  }

  else
  {
    v6 = v5;
    sub_1D174DA38(v5, v4, v3);
    if (qword_1EE07AE68 != -1)
    {
      swift_once();
    }

    if (byte_1EE081450 == 1)
    {
      AnalyticsEvent.effectiveEventName.getter(v4, v3);
      v7 = sub_1D1E677EC();

      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      v10[4] = sub_1D17578C4;
      v10[5] = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_1D174DCDC;
      v10[3] = &block_descriptor_0;
      v9 = _Block_copy(v10);

      AnalyticsSendEventLazy();
      _Block_release(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1D174DA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE07AE68 != -1)
  {
    swift_once();
  }

  if (byte_1EE081450 == 1)
  {
    if (qword_1EE079BB0 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE0813B0;
    v6 = sub_1D1E6835C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D1E6F900;
    v8 = sub_1D1E6940C();
    v10 = v9;
    v11 = MEMORY[0x1E69E6158];
    *(v7 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D1757D20();
    *(v7 + 64) = v12;
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    v13 = AnalyticsEvent.effectiveEventName.getter(a2, a3);
    *(v7 + 96) = v11;
    *(v7 + 104) = v12;
    *(v7 + 72) = v13;
    *(v7 + 80) = v14;
    *(v7 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
    *(v7 + 144) = sub_1D1757D74();
    *(v7 + 112) = a1;

    sub_1D1E66F9C("%@:%@ submitted event with payload %@", 37, 2, &dword_1D16EC000, v25, v6, v7);
  }

  else
  {
    if (qword_1EE079BB0 != -1)
    {
      swift_once();
    }

    v26 = qword_1EE0813B0;
    v15 = sub_1D1E6835C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D1E6F900;
    v17 = sub_1D1E6940C();
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1D1757D20();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v22 = AnalyticsEvent.effectiveEventName.getter(a2, a3);
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    *(v16 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
    *(v16 + 144) = sub_1D1757D74();
    *(v16 + 112) = a1;

    sub_1D1E66F9C("%@:%@ skipped submitting event (because isInternalTest=true) with payload %@", 76, 2, &dword_1D16EC000, v26, v15, v16);
  }
}

id sub_1D174DCDC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v4 = sub_1D1E675DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D174DD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE079BB0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE0813B0;
  v5 = sub_1D1E6833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E6F900;
  v7 = sub_1D1E6940C();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D1757D20();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = AnalyticsEvent.effectiveEventName.getter(a2, a3);
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  swift_getErrorValue();
  v14 = sub_1D1E6915C();
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  *(v6 + 112) = v14;
  *(v6 + 120) = v15;
  sub_1D1E66F9C("%@:%@ failed to encode payload with error %@", 44, 2, &dword_1D16EC000, v17, v5, v6);
}

Swift::Void __swiftcall AnalyticsEvent.sendLazy()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  v11 = *(v5 + 16);
  v11(aBlock - v9, v2, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v3;
  (*(v5 + 32))(v13 + v12, v10, v4);
  if (qword_1EE07AE68 != -1)
  {
    swift_once();
  }

  if (byte_1EE081450 == 1)
  {
    (*(v5 + 8))(v8, v4);
    AnalyticsEvent.effectiveEventName.getter(v4, v3);
    v14 = sub_1D1E677EC();

    aBlock[4] = sub_1D17578E4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D174DCDC;
    aBlock[3] = &block_descriptor_6;
    v15 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v15);
  }

  else
  {
    sub_1D174E17C(v8, v4, v3);

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1D174E17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 48))(a2, a3);
  sub_1D174DA38(v5, a2, a3);
  return v5;
}

void sub_1D174E20C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;

  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v1 + 56) + 8 * (v9 | (v7 << 6)));
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);

      v11 = v10;
      sub_1D1E675EC();

      v1 = v12;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1D174E4C4()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC642E50);
  __swift_project_value_buffer(v0, qword_1EC642E50);
  return sub_1D1E6708C();
}

uint64_t static Logger.analytics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642110 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC642E50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1D174E5EC()
{
  if (sub_1D1D43CCC())
  {
    goto LABEL_10;
  }

  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v7 = 1;
    goto LABEL_11;
  }

  v2 = sub_1D1E6781C();
  v4 = v3;

  if (v2 == 0xD00000000000001DLL && 0x80000001D1EB8880 == v4)
  {

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v6 = sub_1D1E6904C();

  v7 = v6 ^ 1;
LABEL_11:
  byte_1EE081450 = v7 & 1;
}

uint64_t sub_1D174E72C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D171D2F0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D1734030();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D174F220(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1D174E7C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D174E818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D1742188();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v20 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D173419C();
      v8 = v20;
    }

    v9 = *(v8 + 48);
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    v11 = *(v8 + 56);
    v12 = sub_1D1E669FC();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a1, v11 + *(v19 + 72) * v6, v12);
    sub_1D1751C94(v6, v8, MEMORY[0x1E6969530]);
    *v2 = v8;
    v13 = *(v19 + 56);
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1D1E669FC();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a1;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1D174EA74@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = v5;
  v12 = sub_1D1742188();
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v16 = v29;
    }

    v17 = *(v16 + 48);
    v18 = sub_1D1E66A7C();
    v19 = v14;
    (*(*(v18 - 8) + 8))(v17 + *(*(v18 - 8) + 72) * v14, v18);
    v20 = *(v16 + 56);
    v21 = a1(0);
    v28 = *(v21 - 8);
    sub_1D1757C54(v20 + *(v28 + 72) * v19, a5, a2);
    sub_1D1751C94(v19, v16, a3);
    *v10 = v16;
    v22 = *(v28 + 56);
    v23 = a5;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a1(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a5;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

double sub_1D174EC88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D171D2F0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1738144();
      v10 = v12;
    }

    sub_1D16EEE38((*(v10 + 56) + 32 * v8), a3);
    sub_1D174FA50(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D174ED2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D171D710(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D173859C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
    sub_1D1757BF8(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for IconTextValueStringDataHolder(0);
    v20 = *(v13 - 8);
    sub_1D1757C54(v12 + *(v20 + 72) * v7, a2, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D174FC00(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for IconTextValueStringDataHolder(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1D174EEB0@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D1742188();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    *&v16[0] = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1738E4C();
      v8 = *&v16[0];
    }

    v9 = *(v8 + 48);
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    memmove(a1, (*(v8 + 56) + (v6 << 7)), 0x80uLL);
    sub_1D17504B0(v6, v8);
    *v2 = v8;
    nullsub_2();
  }

  else
  {
    sub_1D1757B00(v16);
    v12 = v20;
    a1[4] = v19;
    a1[5] = v12;
    v13 = v22;
    a1[6] = v21;
    a1[7] = v13;
    v14 = v16[1];
    *a1 = v16[0];
    a1[1] = v14;
    result = *&v17;
    v15 = v18;
    a1[2] = v17;
    a1[3] = v15;
  }

  return result;
}

uint64_t sub_1D174F0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D171D2F0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D173E2D0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for RoomType(0);
    v19 = *(v12 - 8);
    sub_1D1757C54(v11 + *(v19 + 72) * v8, a3, type metadata accessor for RoomType);
    sub_1D1752188(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for RoomType(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1D174F220(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      sub_1D1E6920C();

      sub_1D1E678EC();
      v9 = sub_1D1E6926C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D174F3D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D1E691FC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D174F5C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      sub_1D1E6920C();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D174F8DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 2 * v6);
      result = MEMORY[0x1D3892820](*(a2 + 40), *v10, 2);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 2 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D174FA50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      sub_1D1E6920C();

      sub_1D1E678EC();
      v10 = sub_1D1E6926C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D174FC00(int64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v4 = *(v31 - 8);
  result = MEMORY[0x1EEE9AC00](v31);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1D1E686AC() + 1) & ~v8;
    v12 = *(v4 + 72);
    v28 = a2;
    v29 = a2 + 64;
    v27 = v12;
    do
    {
      v13 = v12 * v9;
      v14 = *(a2 + 48) + v12 * v9;
      v15 = v30;
      sub_1D1757B28(v14, v30, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D17579AC();
      sub_1D1E676EC();
      sub_1D1E676EC();
      StaticCharacteristic.hash(into:)(v32);
      v16 = sub_1D1E6926C();
      result = sub_1D1757BF8(v15);
      v17 = v16 & v10;
      if (a1 >= v11)
      {
        if (v17 < v11)
        {
          a2 = v28;
          v7 = v29;
          v12 = v27;
          goto LABEL_4;
        }

        v12 = v27;
        a2 = v28;
        if (a1 >= v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v27;
        a2 = v28;
        if (v17 >= v11 || a1 >= v17)
        {
LABEL_11:
          if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 * a1 != v13)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18 = *(a2 + 56);
          v19 = *(*(type metadata accessor for IconTextValueStringDataHolder(0) - 8) + 72);
          v20 = v19 * a1;
          result = v18 + v19 * a1;
          v21 = v19 * v9;
          v22 = v18 + v19 * v9 + v19;
          v23 = v20 < v21 || result >= v22;
          v7 = v29;
          if (v23)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v9;
          }

          else
          {
            a1 = v9;
            if (v20 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v9;
            }
          }

          goto LABEL_4;
        }
      }

      v7 = v29;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D174FF34(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D1E686AC();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      sub_1D17579AC();
      v21 = sub_1D1E676DC();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D17501EC(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D1E686AC();
    v14 = v12;
    v39 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = v16;
    do
    {
      v17 = v9;
      v18 = v40 * v11;
      v19 = v14;
      v20 = v15;
      v38(v8, *(a2 + 48) + v40 * v11, v4);
      sub_1D17579AC();
      v21 = sub_1D1E676DC();
      result = (*v37)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v39)
      {
        if (v22 >= v39 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v40 * a1;
          v26 = v25 + v18 + v40;
          v27 = v40 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v40 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = v29 + 40 * a1;
          v31 = (v29 + 40 * v11);
          if (a1 != v11 || v30 >= v31 + 40)
          {
            v32 = *v31;
            v33 = v31[1];
            *(v30 + 32) = *(v31 + 4);
            *v30 = v32;
            *(v30 + 16) = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v39 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1D17504B0(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D1E686AC();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_1D17579AC();
      v21 = sub_1D1E676DC();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v38 * a1;
          v27 = v25 + v18 + v38;
          v28 = v38 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v29 = v38 * a1 == v18;
            v9 = v17;
            if (!v29)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v30 = *(a2 + 56);
          result = (v30 + (a1 << 7));
          v31 = (v30 + (v11 << 7));
          if (a1 != v11 || result >= v31 + 128)
          {
            result = memmove(result, v31, 0x80uLL);
            v14 = v19;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D175076C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (40 * v3 < (40 * v6) || v16 >= v17 + 40 || v3 != v6)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D1750920(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1750AB4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    while (1)
    {
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for StaticCluster(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1750CA4(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D1E686AC();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_1D17579AC();
      v21 = sub_1D1E676DC();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1750F5C(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D1E686AC();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_1D17579AC();
      v21 = sub_1D1E676DC();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1751214(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D1E691FC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for StaticMatterDevice(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D17513C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + v6);
      sub_1D1E6920C();
      v11 = v10 >> 5;
      if (v10 >> 5 <= 1)
      {
        if (!v11)
        {
          v13 = 0;
LABEL_12:
          MEMORY[0x1D3892850](v13);
          goto LABEL_16;
        }

        v12 = 1;
      }

      else
      {
        if (v11 == 2)
        {
          v10 &= 0x1Fu;
          v13 = 2;
          goto LABEL_12;
        }

        if (v11 == 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }
      }

      MEMORY[0x1D3892850](v12);
      v10 &= 1u;
LABEL_16:
      MEMORY[0x1D3892850](v10);
      result = sub_1D1E6926C();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_21;
      }

      if (v3 >= v14)
      {
LABEL_21:
        v15 = *(a2 + 48);
        v16 = (v15 + v3);
        v17 = (v15 + v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D17515CC(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1D1E686AC() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 2 * v7);
      result = MEMORY[0x1D3892820](*(a2 + 40), *v12, 2);
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 2 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D1751784(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D1E691FC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D17518F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v11 = 8 * v6;
      sub_1D1E6920C();
      sub_1D1E6924C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + v11);
        if (8 * v3 != v11 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (40 * v3 < (40 * v6) || v17 >= v18 + 40 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D1751AD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      sub_1D1E6920C();
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1751C94(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v41 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1D1E686AC();
    v15 = v13;
    v44 = (v14 + 1) & v13;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v45 = *(v16 + 56);
    v42 = (v16 - 8);
    v43 = v17;
    do
    {
      v18 = v10;
      v19 = v45 * v12;
      v20 = v15;
      v21 = v16;
      v43(v9, *(a2 + 48) + v45 * v12, v5);
      sub_1D17579AC();
      v22 = sub_1D1E676DC();
      result = (*v42)(v9, v5);
      v15 = v20;
      v23 = v22 & v20;
      if (a1 >= v44)
      {
        if (v23 >= v44 && a1 >= v23)
        {
LABEL_15:
          v26 = *(a2 + 48);
          v27 = v26 + v45 * a1;
          v28 = v26 + v19 + v45;
          v29 = v45 * a1 < v19 || v27 >= v28;
          v16 = v21;
          if (v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v10 = v18;
          }

          else
          {
            v10 = v18;
            if (v45 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = *(a2 + 56);
          v31 = *(*(v41(0) - 8) + 72);
          v32 = v31 * a1;
          result = v30 + v31 * a1;
          v33 = v31 * v12;
          v34 = v30 + v31 * v12 + v31;
          if (v32 < v33 || result >= v34)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v36 = v32 == v33;
            v15 = v20;
            if (!v36)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v44 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1751FA0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    while (1)
    {
      sub_1D1E6920C();
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for StaticCharacteristic(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1752188(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    while (1)
    {
      sub_1D1E6920C();

      sub_1D1E678EC();
      v9 = sub_1D1E6926C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for RoomType(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D1752374(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D1E691FC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

id sub_1D17524E4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v7 = a2;
  v9 = *v4;
  v10 = sub_1D171D228(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_1D1733C14();
      v10 = v18;
      goto LABEL_8;
    }

    sub_1D1720648(v15, a4 & 1);
    v10 = sub_1D171D228(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    v23 = *(v21 + 8);
    *(v21 + 8) = v7;

    return sub_1D1757AE8(v22, v23);
  }

  else
  {
    sub_1D19DB054(v10, a3, a1, v7, v20);

    return a3;
  }
}

uint64_t sub_1D175263C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D2F0(a2, a3);
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
      sub_1D1734030();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1720CD0(v16, a4 & 1);
    v11 = sub_1D171D2F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D1E690FC();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1D19DB0A0(v11, a2, a3, a1, v21);
}

uint64_t sub_1D1752780(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D173419C();
      goto LABEL_7;
    }

    sub_1D1720F88(v17, a3 & 1);
    v28 = sub_1D1742188();
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D19DB0E8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1D1E669FC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1D17529C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D17420B0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D1734858();
      goto LABEL_7;
    }

    sub_1D172190C(v13, a3 & 1);
    v24 = sub_1D17420B0(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D19DB1DC(v10, a2, a1, v16);
}

_OWORD *sub_1D1752BCC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D171D368(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D1734B04();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D1721C9C(v13, a3 & 1);
    v8 = sub_1D171D368(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1D16EEE38(a1, v19);
  }

  else
  {
    sub_1D19DB294(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1D1752D1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StaticService(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StaticService);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D1735934();
    goto LABEL_7;
  }

  sub_1D1723194(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DB2FC(v14, v11, a1, v20);
}

uint64_t sub_1D1752EF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StaticMediaSystem(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StaticMediaSystem);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D1735C60();
    goto LABEL_7;
  }

  sub_1D1723634(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DB328(v14, v11, a1, v20);
}

uint64_t sub_1D17530C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StaticMediaProfile(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StaticMediaProfile);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D1735F8C();
    goto LABEL_7;
  }

  sub_1D1723AD4(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DB448(v14, v11, a1, v20);
}

uint64_t sub_1D1753298(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StaticAccessory(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StaticAccessory);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D17362B8();
    goto LABEL_7;
  }

  sub_1D1723F74(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DB474(v14, v11, a1, v20);
}

uint64_t sub_1D175346C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StaticHH2Update(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StaticHH2Update);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D17365E4();
    goto LABEL_7;
  }

  sub_1D1724414(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DB4A0(v14, v11, a1, v20);
}

uint64_t sub_1D1753640(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D408(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D1736C3C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1724D54(v14, a3 & 1);
    v9 = sub_1D171D408(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1D19DD7E4();
  }
}

uint64_t sub_1D1753764(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StateSnapshot(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StateSnapshot);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D17375D4();
    goto LABEL_7;
  }

  sub_1D1725B48(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DB4CC(v14, v11, a1, v20);
}

id sub_1D1753978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v9 = a4;
  v13 = *v6;
  v14 = sub_1D171D368(a5);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = v14;
      sub_1D1737AA0();
      v14 = v22;
      goto LABEL_8;
    }

    sub_1D172629C(v19, a6 & 1);
    v14 = sub_1D171D368(a5);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 32 * v14;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    v29 = *(v25 + 24);
    *(v25 + 24) = v9;

    return sub_1D1757A60(v26, v27, v28, v29);
  }

  else
  {
    sub_1D19DB4F8(v14, a5, a1, a2, a3, v9, v24);

    return a5;
  }
}

unint64_t sub_1D1753B88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = a2;
  v10 = *v4;
  v11 = sub_1D171D1A4(a3 & 0xFFFFFFFFFFLL);
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
      sub_1D1737C6C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1726570(v16, a4 & 1);
    v11 = sub_1D171D1A4(a3 & 0xFFFFFFFFFFLL);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    v23 = *v22;
    *v22 = a1;
    v24 = *(v22 + 8);
    *(v22 + 8) = v8;

    return sub_1D1757AE8(v23, v24);
  }

  else
  {

    return sub_1D19DB548(v11, a3 & 0xFFFFFFFFFFLL, a1, v8, v21);
  }
}

_OWORD *sub_1D1753CC8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D63C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D1737E04();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1726860(v14, a3 & 1);
    v9 = sub_1D171D63C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (*(v19 + 56) + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1D16EEE38(a1, v20);
  }

  else
  {

    return sub_1D19DD7E0(v9, a2, a1, v19);
  }
}

uint64_t sub_1D1753DF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D15C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D1738130();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1726EEC(v14, a3 & 1);
    v9 = sub_1D171D15C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1D19DD7DC();
  }
}

_OWORD *sub_1D1753F18(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D2F0(a2, a3);
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
      sub_1D1738144();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1726F00(v16, a4 & 1);
    v11 = sub_1D171D2F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
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

    return sub_1D16EEE38(a1, v22);
  }

  else
  {
    sub_1D19DB5E8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D1754068(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D171D710(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for IconTextValueStringDataHolder(0);
      return sub_1D1757B90(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for IconTextValueStringDataHolder);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_1D173859C();
    goto LABEL_7;
  }

  sub_1D17276DC(v16, a3 & 1);
  v23 = sub_1D171D710(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D1757B28(a2, v10, type metadata accessor for StaticServiceCharacteristicDoublet);
  return sub_1D19DB654(v13, v10, a1, v19);
}

void sub_1D1754214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1D1742188();
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_1D1738888();
      goto LABEL_7;
    }

    sub_1D1727BC0(v20, a6 & 1);
    v30 = sub_1D1742188();
    if ((v21 & 1) == (v31 & 1))
    {
      v17 = v30;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a5, v11);
      sub_1D19DB740(v17, v14, a1, v33, v34, v35, v23);
      return;
    }

LABEL_15:
    sub_1D1E690FC();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = (v23[7] + 32 * v17);
  v25 = v24[2];
  v26 = v24[3];
  v27 = v33;
  v28 = v34;
  *v24 = a1;
  v24[1] = v27;
  v29 = v35;
  v24[2] = v28;
  v24[3] = v29;

  sub_1D1757B18(v25);

  sub_1D1757B18(v26);
}

uint64_t sub_1D17544A0(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1[1];
  *&v46 = *a1;
  *(&v46 + 1) = v7;
  v8 = a1[3];
  v47 = a1[2];
  v48 = v8;
  v9 = a1[5];
  v49 = a1[4];
  v50 = v9;
  v10 = a1[7];
  v51 = a1[6];
  v52 = v10;
  v11 = a1[9];
  v53 = a1[8];
  v54 = v11;
  v12 = a1[11];
  v55 = a1[10];
  v56 = v12;
  v13 = a1[13];
  v57 = a1[12];
  v58 = v13;
  v14 = a1[15];
  v59 = a1[14];
  v60 = v14;
  v15 = sub_1D1E66A7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v21 = sub_1D1742188();
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = v20;
  v26 = *(v19 + 24);
  if (v26 >= v24 && (a3 & 1) != 0)
  {
LABEL_7:
    v27 = v60;
    if (v25)
    {
LABEL_8:
      v28 = *(*v4 + 56) + (v21 << 7);
      v29 = *(v28 + 48);
      v31 = *v28;
      v30 = *(v28 + 16);
      v61[2] = *(v28 + 32);
      v61[3] = v29;
      v61[0] = v31;
      v61[1] = v30;
      v32 = *(v28 + 112);
      v34 = *(v28 + 64);
      v33 = *(v28 + 80);
      v61[6] = *(v28 + 96);
      v61[7] = v32;
      v61[4] = v34;
      v61[5] = v33;
      v35 = *(&v46 + 1);
      *v28 = v46;
      *(v28 + 8) = v35;
      v36 = v48;
      *(v28 + 16) = v47;
      *(v28 + 24) = v36;
      v37 = v50;
      *(v28 + 32) = v49;
      *(v28 + 40) = v37;
      v38 = v52;
      *(v28 + 48) = v51;
      *(v28 + 56) = v38;
      v39 = v54;
      *(v28 + 64) = v53;
      *(v28 + 72) = v39;
      v40 = v56;
      *(v28 + 80) = v55;
      *(v28 + 88) = v40;
      v41 = v58;
      *(v28 + 96) = v57;
      *(v28 + 104) = v41;
      *(v28 + 112) = v59;
      *(v28 + 120) = v27;
      return sub_1D1741A30(v61, &qword_1EC642C30, &qword_1D1E6E980);
    }

    goto LABEL_11;
  }

  if (v26 >= v24 && (a3 & 1) == 0)
  {
    sub_1D1738E4C();
    goto LABEL_7;
  }

  sub_1D172844C(v24, a3 & 1);
  v43 = sub_1D1742188();
  if ((v25 & 1) != (v44 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v21 = v43;
  v27 = v60;
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_11:
  v45 = *v4;
  (*(v16 + 16))(v18, a2, v15);
  v62 = v46;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v67 = v51;
  v68 = v52;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v73 = v57;
  v74 = v58;
  v75 = v59;
  v76 = v27;
  return sub_1D19DB814(v21, v18, &v62, v45);
}