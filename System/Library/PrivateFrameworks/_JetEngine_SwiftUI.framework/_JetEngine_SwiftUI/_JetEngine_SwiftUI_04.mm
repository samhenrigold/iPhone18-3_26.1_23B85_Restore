uint64_t sub_1B79C5AF4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1B7A9AE50();
  v7 = v0[21];
  if (v6)
  {
    v8 = v6;
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v9 = v0[19];
    v8 = swift_allocError();
    v5(v10, v7, v9);
  }

  v11 = v0[31];
  v12 = v0[27];
  v13 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v13 + 8))(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v19 = v0[5];
  v18 = v0[6];
  v21 = v0[3];
  v20 = v0[4];
  *v14 = v8;
  swift_storeEnumTagMultiPayload();
  v22 = v8;
  sub_1B79C5D7C(v21, v20, v19, v18);
  sub_1B7996A3C(v14, v17, v23, v24);
  sub_1B79C7F58(v15, v21, v20, v19, v18);
  (*(v16 + 8))(v15, v17);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1B79C5D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v5, v6);
  v7 = sub_1B7A98870();
  return MEMORY[0x1B8CA9A40](v7);
}

uint64_t sub_1B79C5E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v27;
  v8[3] = a6;
  v8[4] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47308, &qword_1B7A9F498);
  v8[7] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47310, &qword_1B7A9F4A0);
  v8[8] = v13;
  v8[9] = *(v13 - 8);
  v8[10] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v17 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v15, v16);
  v8[12] = v17;
  v8[13] = *(v17 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for IntentResult._State(0, AssociatedTypeWitness, v18, v19);
  v8[16] = swift_task_alloc();
  v8[17] = *(AssociatedTypeWitness - 8);
  v8[18] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v8[19] = v20;
  v8[20] = *(v20 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_1B7A9AB60();
  v8[23] = swift_task_alloc();
  v21 = swift_getAssociatedTypeWitness();
  v8[24] = v21;
  v8[25] = *(v21 - 8);
  v8[26] = swift_task_alloc();
  v22 = swift_checkMetadataState();
  v8[27] = v22;
  v8[28] = *(v22 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v23 = swift_task_alloc();
  v8[31] = v23;
  v8[32] = sub_1B7A9A760();
  v8[33] = sub_1B7A9A750();
  v8[2] = a4;
  v24 = swift_task_alloc();
  v8[34] = v24;
  *v24 = v8;
  v24[1] = sub_1B79C6284;

  return IntentDispatchAction.callAsFunction<A>(_:)(v23, a5, a7, a8);
}

uint64_t sub_1B79C6284()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1B7A9A710();
    v5 = v4;
    v6 = sub_1B79C943C;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_1B7A9A710();
    v8 = v10;
    *(v2 + 288) = v9;
    *(v2 + 296) = v10;
    v6 = sub_1B79C63E4;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B79C63E4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = *(v3 + 16);
  v0[38] = v5;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  sub_1B7A9A830();
  v6 = sub_1B7A9A750();
  v0[40] = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[41] = AssociatedConformanceWitness;
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_1B79C652C;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v9, v6, v12, v11, v10, AssociatedConformanceWitness);
}

uint64_t sub_1B79C652C()
{
  v2 = *v1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1B79C945C;
  }

  else
  {
    v5 = sub_1B79C6680;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B79C6680()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 88);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

LABEL_5:
    v10 = *(v0 + 72);
    (*(v0 + 304))(*(v0 + 232), *(v0 + 248), *(v0 + 216));
    v11 = swift_dynamicCast();
    v12 = *(v10 + 56);
    if (v11)
    {
      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v12(v16, 0, 1, v15);
      (*(v14 + 32))(v13, v16, v15);
      if (sub_1B7A98BB0() & 1) != 0 || (sub_1B7A9A810())
      {
        v17 = *(v0 + 248);
        v18 = *(v0 + 216);
        v19 = *(v0 + 224);
        (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
        (*(v19 + 8))(v17, v18);
      }

      else
      {
        v43 = *(v0 + 248);
        v44 = *(v0 + 216);
        v45 = *(v0 + 224);
        v47 = *(v0 + 72);
        v46 = *(v0 + 80);
        v48 = *(v0 + 64);
        IntentViewLogFinishedSequenceError()();
        (*(v47 + 8))(v46, v48);
        (*(v45 + 8))(v43, v44);
      }
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      v23 = *(v0 + 56);
      v12(v23, 1, 1, *(v0 + 64));
      (*(v22 + 8))(v20, v21);
      sub_1B7957888(v23, &qword_1EBA47308, &qword_1B7A9F498);
    }

    v24 = *(v0 + 8);

    return v24();
  }

  (*(v2 + 32))(*(v0 + 144), v1, v3);
  if (sub_1B7A9A810())
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 88);

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    goto LABEL_5;
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 128);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v49 = *(v0 + 96);
  v50 = *(v0 + 88);
  v51 = *(v0 + 144);
  v31 = *(v0 + 40);
  v30 = *(v0 + 48);
  v32 = *(v0 + 24);
  v33 = *(v0 + 32);
  (*(v26 + 16))(v27);
  swift_storeEnumTagMultiPayload();
  sub_1B79C5D7C(v32, v33, v31, v30);
  sub_1B7996A3C(v27, v49, v34, v35);
  sub_1B79C7F58(v28, v32, v33, v31, v30);
  (*(v29 + 8))(v28, v49);
  (*(v26 + 8))(v51, v50);
  v36 = sub_1B7A9A750();
  *(v0 + 320) = v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 328) = AssociatedConformanceWitness;
  v38 = swift_task_alloc();
  *(v0 + 336) = v38;
  *v38 = v0;
  v38[1] = sub_1B79C652C;
  v39 = *(v0 + 184);
  v40 = *(v0 + 192);
  v41 = *(v0 + 176);
  v42 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v39, v36, v42, v41, v40, AssociatedConformanceWitness);
}

uint64_t sub_1B79C6B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B79C6BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B79C6C14(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B798D338;

  return v5();
}

uint64_t sub_1B79C6D08(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B798D54C;

  return v5();
}

void sub_1B79C6DFC()
{
  if (*(v0 + 16))
  {

    sub_1B7A9A7F0();
  }
}

uint64_t sub_1B79C6E68(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v62 = a2;
  v63 = a5;
  v66 = a4;
  v68 = a3;
  v65 = a1;
  v6 = *(*v5 + 96);
  v7 = *(*v5 + 80);
  v69 = *(*v5 + 88);
  swift_getAssociatedTypeWitness();
  v70 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for IntentResult(255, AssociatedTypeWitness, v9, v10);
  v75 = sub_1B7A98870();
  v64 = *(v75 - 8);
  v61 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v55 - v12;
  v73 = sub_1B7A999B0();
  v60 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v59 = v13;
  v72 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v7;
  v57 = *(v7 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v55 - v18;
  v20 = sub_1B7A9AB60();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v55 - v29;
  v66 = *v66;
  if ((v65 & 1) != 0 || !*(v67 + 16) && (sub_1B79C5D7C(v68, v14, v69, v70), IntentResult.data.getter(v11, v23, v31, v32), (*(v24 + 8))(v30, v11), v33 = (*(*(AssociatedTypeWitness - 8) + 48))(v23, 1, AssociatedTypeWitness), (*(v21 + 8))(v23, v20), v33 == 1) || (sub_1B79C5D7C(v68, v14, v69, v70), v37 = sub_1B7996ACC(v11, v34, v35, v36), result = (*(v24 + 8))(v27, v11), v37))
  {
    v39 = sub_1B7A9A7E0();
    v40 = *(*(v39 - 8) + 56);
    v56 = v19;
    v40(v19, 1, 1, v39);
    v41 = v57;
    (*(v57 + 16))(v71, v62, v14);
    v42 = v60;
    (*(v60 + 16))(v72, v63, v73);
    v43 = v64;
    (*(v64 + 16))(v74, v68, v75);
    sub_1B7A9A760();
    v44 = v66;

    v45 = sub_1B7A9A750();
    v46 = (*(v41 + 80) + 64) & ~*(v41 + 80);
    v47 = (v58 + *(v42 + 80) + v46) & ~*(v42 + 80);
    v48 = (v59 + *(v43 + 80) + v47) & ~*(v43 + 80);
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    *(v49 + 2) = v45;
    *(v49 + 3) = v50;
    v52 = v69;
    v51 = v70;
    *(v49 + 4) = v14;
    *(v49 + 5) = v52;
    *(v49 + 6) = v51;
    *(v49 + 7) = v44;
    (*(v41 + 32))(&v49[v46], v71, v14);
    (*(v42 + 32))(&v49[v47], v72, v73);
    (*(v43 + 32))(&v49[v48], v74, v75);
    v53 = sub_1B79A9B34(0, 0, v56, &unk_1B7A9F490, v49);
    v54 = v67;
    sub_1B79C6DFC();
    *(v54 + 16) = v53;
  }

  return result;
}

uint64_t sub_1B79C74D0(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(*(v4 - 8) + 64);
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = *(sub_1B7A999B0() - 8);
  v8 = (v6 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v11, v12);
  v13 = *(sub_1B7A98870() - 8);
  v14 = (v9 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v1[2];
  v16 = v1[3];
  v17 = v1[7];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1B798D54C;

  return sub_1B79C4C1C(a1, v15, v16, v17, v1 + v6, v1 + v8, v1 + v14, v4);
}

uint64_t sub_1B79C76F8(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v59 = a4;
  v61 = a3;
  v55 = a2;
  v58 = a1;
  v6 = *v4;
  v7 = *(*v4 + 96);
  v8 = *(v6 + 80);
  v62 = *(v6 + 88);
  swift_getAssociatedTypeWitness();
  v63 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for IntentResult(255, AssociatedTypeWitness, v10, v11);
  v13 = sub_1B7A98870();
  v56 = *(v13 - 8);
  v57 = v13;
  v54[1] = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v66 = v54 - v14;
  v60 = v8;
  v15 = *(v8 - 8);
  v54[0] = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v65 = v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v64 = v54 - v19;
  v20 = sub_1B7A9AB60();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v54 - v22;
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v54 - v29;
  v59 = *v59;
  if ((v58 & 1) != 0 || !v5[2] && (sub_1B79C5D7C(v61, v60, v62, v63), IntentResult.data.getter(v12, v23, v31, v32), (*(v24 + 8))(v30, v12), v33 = (*(*(AssociatedTypeWitness - 8) + 48))(v23, 1, AssociatedTypeWitness), (*(v21 + 8))(v23, v20), v33 == 1) || (sub_1B79C5D7C(v61, v60, v62, v63), v37 = sub_1B7996ACC(v12, v34, v35, v36), result = (*(v24 + 8))(v27, v12), v37))
  {
    v39 = sub_1B7A9A7E0();
    (*(*(v39 - 8) + 56))(v64, 1, 1, v39);
    v40 = v15;
    v41 = v5;
    v42 = v60;
    (*(v15 + 16))(v65, v55, v60);
    v44 = v56;
    v43 = v57;
    (*(v56 + 16))(v66, v61, v57);
    sub_1B7A9A760();
    v45 = v59;

    v46 = sub_1B7A9A750();
    v47 = (*(v40 + 80) + 64) & ~*(v40 + 80);
    v48 = (v54[0] + v47 + *(v44 + 80)) & ~*(v44 + 80);
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    *(v49 + 2) = v46;
    *(v49 + 3) = v50;
    v52 = v62;
    v51 = v63;
    *(v49 + 4) = v42;
    *(v49 + 5) = v52;
    *(v49 + 6) = v51;
    *(v49 + 7) = v45;
    (*(v40 + 32))(&v49[v47], v65, v42);
    (*(v44 + 32))(&v49[v48], v66, v43);
    v53 = sub_1B79A9B34(0, 0, v64, &unk_1B7A9F4B0, v49);
    sub_1B79C6DFC();
    v41[2] = v53;
  }

  return result;
}

uint64_t sub_1B79C7C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v6, v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - v10, a1, v8, v9);
  sub_1B7A98870();
  return sub_1B7A98810();
}

uint64_t sub_1B79C7D90(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v6 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v9, v10);
  v11 = *(sub_1B7A98870() - 8);
  v12 = (v7 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[7];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1B798D54C;

  return sub_1B79C5E10(a1, v13, v14, v15, v1 + v6, v1 + v12, v5, v4);
}

uint64_t sub_1B79C7F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v7, v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v14 - v11, a1, v9, v10);
  sub_1B7A98870();
  return sub_1B7A98810();
}

uint64_t objectdestroy_55Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _IntentDispatchViewModifier(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80);
  v7 = v4 + v6;
  if (*(v4 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v4 + v6));
  }

  sub_1B79C8A54(*(v7 + 32), *(v7 + 40), *(v7 + 48));
  v8 = v5[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v7 + v8, AssociatedTypeWitness);
  v10 = v7 + v5[11];

  v11 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, v11, v12, v13);
  v14 = *(sub_1B7A98870() + 32);
  type metadata accessor for IntentResult._State(0, v11, v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(v11 - 8) + 8))(v10 + v14, v11);
  }

  j__swift_release(*(v7 + v5[12]));
  sub_1B79C8A64(*(v7 + v5[13]), *(v7 + v5[13] + 8), *(v7 + v5[13] + 16), sub_1B79C9450);

  return swift_deallocObject();
}

uint64_t sub_1B79C82F0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for _IntentDispatchViewModifier(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_1B79C8388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B50, &qword_1B7A9DD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79C83F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B798D54C;

  return sub_1B7A661F0(a1, v4, v5, v6);
}

uint64_t sub_1B79C84AC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B79C6C14(a1, v4);
}

uint64_t sub_1B79C8574(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B79C6C14(a1, v4);
}

uint64_t sub_1B79C863C(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(*(v3 - 8) + 64);
  v17 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v5 = *(sub_1B7A999B0() - 8);
  v6 = (v17 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v8, v9);
  sub_1B7A98870();
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1[8];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1B798D54C;

  return sub_1B79C0300(a1, v10, v11, v12, v13, v14, v1 + v17, v1 + v6);
}

unint64_t sub_1B79C8854()
{
  result = qword_1EBA47328[0];
  if (!qword_1EBA47328[0])
  {
    sub_1B7A9A720();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA47328);
  }

  return result;
}

uint64_t sub_1B79C88AC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80);
  v6 = v5 + *(*(v4 - 8) + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v8, v9);
  v10 = *(sub_1B7A98870() - 8);
  v11 = (v6 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = v1[7];
  v16 = v1[8];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1B798D54C;

  return sub_1B79C2140(a1, v12, v13, v14, v15, v16, v1 + v5, v1 + v11);
}

uint64_t sub_1B79C8A54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1B79C8A64(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a4(a1, a2);
  }

  else
  {
  }
}

uint64_t objectdestroy_118Tm()
{
  v1 = v0[3];
  v2 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, v0[2], v1, v0[4]);
  v3 = (*(*(v2 - 1) + 80) + 40) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  sub_1B79C8A54(*(v4 + 4), *(v4 + 5), v4[48]);
  v5 = v2[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v4[v5], AssociatedTypeWitness);
  v7 = &v4[v2[13]];

  v8 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, v8, v9, v10);
  v11 = *(sub_1B7A98870() + 32);
  type metadata accessor for IntentResult._State(0, v8, v12, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(v8 - 8) + 8))(&v7[v11], v8);
  }

  v15 = &v4[v2[14]];

  type metadata accessor for IntentResult(255, v1, v16, v17);
  v18 = *(sub_1B7A98870() + 32);
  type metadata accessor for IntentResult._State(0, v1, v19, v20);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 == 2)
  {
  }

  else if (v21 <= 1)
  {
    (*(*(v1 - 8) + 8))(&v15[v18], v1);
  }

  j__swift_release(*&v4[v2[15]]);
  sub_1B79C8A64(*&v4[v2[16]], *&v4[v2[16] + 8], v4[v2[16] + 16], sub_1B79C9450);

  return swift_deallocObject();
}

uint64_t sub_1B79C8D88(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(type metadata accessor for _IntentDispatchViewModifierFollowing(0, v2, v3, v4) - 8);
  v6 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a1(v6, v2, v3, v4);
}

uint64_t sub_1B79C8E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B798D338;

  return sub_1B7A661F0(a1, v4, v5, v6);
}

uint64_t sub_1B79C8EE0(uint64_t a1)
{
  v4 = *(v1 + 40);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B79C6D08(a1, v4);
}

uint64_t objectdestroy_61Tm()
{

  return swift_deallocObject();
}

void sub_1B79C9048(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B79C93D4(319, &qword_1EBA473B0, &qword_1EBA473B8, qword_1B7A9F5B0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B79C9104(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void sub_1B79C9228(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
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

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

void sub_1B79C93D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t MediaArtworkStyle.transaction.getter()
{
  sub_1B7A98A40();

  return sub_1B7A97180();
}

uint64_t MediaArtworkStyleConfiguration.subscript.getter()
{
  result = sub_1B7A98EE0();
  if (result)
  {
    return sub_1B7A98530();
  }

  return result;
}

uint64_t MediaArtworkStyleConfiguration.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v8 = *(v4 + *(type metadata accessor for MediaArtworkStyleConfiguration(0) + 24));

  return sub_1B79EE958(v8, a2, a3, x8_0);
}

uint64_t StandardMediaArtworkStyle.init(cornerRadius:cornerStyle:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v5 = *(type metadata accessor for StandardMediaArtworkStyle(0) + 20);
  v6 = sub_1B7A97970();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t StandardMediaArtworkStyle.transaction.getter()
{
  sub_1B7A98A40();

  return sub_1B7A97180();
}

uint64_t StandardMediaArtworkStyle.body(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v53 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473C0, &qword_1B7A9F5F0);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v42 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473C8, &qword_1B7A9F5F8);
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v42 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473D0, &qword_1B7A9F600);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v42 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473D8, &qword_1B7A9F608);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v42 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473E0, &qword_1B7A9F610);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v42 - v8;
  v9 = sub_1B7A98600();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473E8, &qword_1B7A9F618);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = sub_1B7A97670();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  v21 = *(type metadata accessor for StandardMediaArtworkStyle(0) + 20);
  v22 = *(v17 + 28);
  v23 = sub_1B7A97970();
  (*(*(v23 - 8) + 16))(&v19[v22], &v2[v21], v23);
  *v19 = v20;
  *(v19 + 1) = v20;
  type metadata accessor for MediaArtworkStyleConfiguration(0);
  if (sub_1B7A97520())
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
    v24 = sub_1B7A98670();
    v25 = (*(v10 + 8))(v12, v9);
    sub_1B79C9D98(v19, &v15[*(v13 + 36)], v25);
    *v15 = v24;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    sub_1B7957820(v15, v7, &qword_1EBA473E8, &qword_1B7A9F618);
    swift_storeEnumTagMultiPayload();
    sub_1B79C9E88();
    sub_1B79C9FC4();
    v26 = v46;
    sub_1B7A97B30();
    sub_1B7957820(v26, v48, &qword_1EBA473E0, &qword_1B7A9F610);
    swift_storeEnumTagMultiPayload();
    sub_1B79C9DFC();
    sub_1B79CA0AC();
    sub_1B7A97B30();

    sub_1B7957888(v26, &qword_1EBA473E0, &qword_1B7A9F610);
    v27 = v15;
    v28 = &qword_1EBA473E8;
    v29 = &qword_1B7A9F618;
  }

  else
  {
    v42 = v13;
    v30 = v44;
    v31 = v43;
    v32 = v49;
    v33 = v46;
    if (sub_1B7A98EE0())
    {
      v34 = sub_1B7A98530();
      KeyPath = swift_getKeyPath();
      sub_1B79C9D98(v19, v31, v36);
      v37 = (v31 + *(v32 + 36));
      *v37 = KeyPath;
      v37[1] = v34;
      sub_1B7957820(v31, v7, &qword_1EBA473C8, &qword_1B7A9F5F8);
      swift_storeEnumTagMultiPayload();
      sub_1B79C9E88();
      sub_1B79C9FC4();

      sub_1B7A97B30();
      sub_1B7957820(v33, v48, &qword_1EBA473E0, &qword_1B7A9F610);
      swift_storeEnumTagMultiPayload();
      sub_1B79C9DFC();
      sub_1B79CA0AC();
      sub_1B7A97B30();

      sub_1B7957888(v33, &qword_1EBA473E0, &qword_1B7A9F610);
      v27 = v31;
      v28 = &qword_1EBA473C8;
      v29 = &qword_1B7A9F5F8;
    }

    else
    {
      v38 = sub_1B7A97C50();
      sub_1B79C9D98(v19, v30, v39);
      *(v30 + *(v51 + 36)) = v38;
      sub_1B7957820(v30, v48, &qword_1EBA473C0, &qword_1B7A9F5F0);
      swift_storeEnumTagMultiPayload();
      sub_1B79C9DFC();
      sub_1B79CA0AC();
      sub_1B7A97B30();
      v27 = v30;
      v28 = &qword_1EBA473C0;
      v29 = &qword_1B7A9F5F0;
    }
  }

  sub_1B7957888(v27, v28, v29);
  return sub_1B79CA194(v19, v40);
}

uint64_t sub_1B79C9D98(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1B7A97670();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B79C9DFC()
{
  result = qword_1EBA473F0;
  if (!qword_1EBA473F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA473E0, &qword_1B7A9F610);
    sub_1B79C9E88();
    sub_1B79C9FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA473F0);
  }

  return result;
}

unint64_t sub_1B79C9E88()
{
  result = qword_1EBA473F8;
  if (!qword_1EBA473F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA473E8, &qword_1B7A9F618);
    sub_1B79C9F40();
    sub_1B797EC34(&qword_1EBA47410, &qword_1EBA47418, &qword_1B7A9F628, MEMORY[0x1E697DDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA473F8);
  }

  return result;
}

unint64_t sub_1B79C9F40()
{
  result = qword_1EBA47400;
  if (!qword_1EBA47400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47408, &qword_1B7A9F620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47400);
  }

  return result;
}

unint64_t sub_1B79C9FC4()
{
  result = qword_1EBA47420;
  if (!qword_1EBA47420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA473C8, &qword_1B7A9F5F8);
    sub_1B79CA93C(&qword_1EBA47428, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
    sub_1B797EC34(&qword_1EBA47430, &qword_1EBA47438, &unk_1B7A9F630, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47420);
  }

  return result;
}

unint64_t sub_1B79CA0AC()
{
  result = qword_1EBA47440;
  if (!qword_1EBA47440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA473C0, &qword_1B7A9F5F0);
    sub_1B79CA93C(&qword_1EBA47428, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
    sub_1B797EC34(&qword_1EBA47448, &qword_1EBA47450, &unk_1B7AA52F0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47440);
  }

  return result;
}

uint64_t sub_1B79CA194(uint64_t a1, double a2)
{
  v3 = sub_1B7A97670();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static MediaArtworkStyle<>.standard.getter@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for StandardMediaArtworkStyle(0) + 20);
  v3 = *MEMORY[0x1E697F480];
  v4 = sub_1B7A97970();
  result = (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  *a1 = 0;
  return result;
}

uint64_t static MediaArtworkStyle<>.standard(cornerRadius:cornerStyle:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v6 = *(type metadata accessor for StandardMediaArtworkStyle(0) + 20);
  v7 = sub_1B7A97970();
  result = (*(*(v7 - 8) + 16))(a2 + v6, a1, v7);
  *a2 = a3;
  return result;
}

uint64_t MediaArtworkStyle._body(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(a3 + 32))(a1, a2, a3, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_1B7999EF4(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v12;
}

uint64_t View.mediaArtworkStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v10[3] = a3;
  v10[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1B7A98150();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void *sub_1B79CA4FC(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B79CA8D8(x0_0, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B79CA584(uint64_t a1)
{
  sub_1B7999E90(a1, v6);
  v1 = sub_1B7999E90(v6, &v5);
  sub_1B79CA8D8(v1, v2, v3);
  sub_1B7A978A0();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1B79CA5E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StandardMediaArtworkStyle(0);
  a1[3] = v2;
  a1[4] = sub_1B79CA93C(&qword_1EBA474A0, type metadata accessor for StandardMediaArtworkStyle, &protocol conformance descriptor for StandardMediaArtworkStyle);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  v4 = *(v2 + 20);
  v5 = *MEMORY[0x1E697F480];
  v6 = sub_1B7A97970();
  result = (*(*(v6 - 8) + 104))(boxed_opaque_existential_1Tm + v4, v5, v6);
  *boxed_opaque_existential_1Tm = 0;
  return result;
}

uint64_t sub_1B79CA71C(uint64_t a1)
{
  result = sub_1B7A98F40();
  if (v2 <= 0x3F)
  {
    result = sub_1B7A97530();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79CA7D0(uint64_t a1)
{
  result = sub_1B7A97970();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B79CA84C()
{
  result = qword_1EBA47478;
  if (!qword_1EBA47478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47480, &qword_1B7A9F720);
    sub_1B79C9DFC();
    sub_1B79CA0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47478);
  }

  return result;
}

unint64_t sub_1B79CA8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47498;
  if (!qword_1EBA47498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47498);
  }

  return result;
}

uint64_t sub_1B79CA93C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1B79CA988@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79CB218(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79CA9D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B79CB218(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t View.mediaArtworkAllowedBundles<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v26 = a4;
  v27 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
  v11 = sub_1B7A97590();
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v25 = &v25 - v15;
  swift_getKeyPath();
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v16 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v19 = v26;
  v18 = v27;
  *(v17 + 4) = v26;
  *(v17 + 5) = v18;
  (*(v9 + 32))(&v17[v16], &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1B7A98320();

  v20 = sub_1B79CAE84();
  v30 = v19;
  v31 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v25;
  sub_1B7957EE0(v13, v11, WitnessTable);
  v23 = *(v28 + 8);
  v23(v13, v11);
  sub_1B7957EE0(v22, v11, WitnessTable);
  return (v23)(v22, v11);
}

uint64_t sub_1B79CACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480, &unk_1B7A9D190);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7A9D170;
  *(v7 + 32) = [objc_opt_self() mainBundle];
  MediaArtwork.BundleImageProtocol.Configuration.withAllowedBundles<A>(_:)(a2, &v9);

  sub_1B79CAEE8(v9);
}

unint64_t sub_1B79CAE84()
{
  result = qword_1EBA474B0;
  if (!qword_1EBA474B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA474B0);
  }

  return result;
}

uint64_t sub_1B79CAEE8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 9;
    while (1)
    {
      if (v5 >= v3[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_1B7999E90(&v3[v6 - 5], &v18);
      sub_1B795C1E4(&v18, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408, &qword_1B7A9D0C0);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v5;
      v6 += 5;
      if (v4 == v5)
      {
        v5 = v3[2];
        v7 = v5;
        goto LABEL_24;
      }
    }

    v7 = v5 + 1;
    v8 = v3[2];
    if (v8 - 1 == v5)
    {
      goto LABEL_24;
    }

    while (v7 < v8)
    {
      sub_1B7999E90(&v3[v6], &v18);
      sub_1B795C1E4(&v18, v17);
      if (swift_dynamicCast())
      {
      }

      else
      {
        if (v7 != v5)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          v9 = v3[2];
          if (v5 >= v9)
          {
            goto LABEL_31;
          }

          sub_1B7999E90(&v3[5 * v5 + 4], &v18);
          if (v7 >= v9)
          {
            goto LABEL_32;
          }

          sub_1B7999E90(&v3[v6], v17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1B7A5D420(v3);
          }

          v10 = &v3[5 * v5];
          __swift_destroy_boxed_opaque_existential_1(v10 + 4);
          sub_1B795C1E4(v17, (v10 + 4));
          if (v7 >= v3[2])
          {
            goto LABEL_33;
          }

          __swift_destroy_boxed_opaque_existential_1(&v3[v6]);
          sub_1B795C1E4(&v18, &v3[v6]);
          *v1 = v3;
        }

        ++v5;
      }

      ++v7;
      v8 = v3[2];
      v6 += 5;
      if (v7 == v8)
      {
        if (v7 < v5)
        {
          goto LABEL_34;
        }

        goto LABEL_24;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = 0;
  v7 = 0;
LABEL_24:
  sub_1B7A5D448(v5, v7);
  v5 = *v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_35:
    isUniquelyReferenced_nonNull_native = sub_1B7987A98(0, *(v5 + 16) + 1, 1, v5);
    v5 = isUniquelyReferenced_nonNull_native;
  }

  v15 = *(v5 + 16);
  v14 = *(v5 + 24);
  if (v15 >= v14 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1B7987A98((v14 > 1), v15 + 1, 1, v5);
    v5 = isUniquelyReferenced_nonNull_native;
  }

  v19 = &type metadata for MediaArtwork.BundleImageProtocol;
  v20 = sub_1B79CB1C4(isUniquelyReferenced_nonNull_native, v12, v13);
  *&v18 = a1;
  *(v5 + 16) = v15 + 1;
  result = sub_1B795C1E4(&v18, v5 + 40 * v15 + 32);
  *v1 = v5;
  return result;
}

unint64_t sub_1B79CB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA474B8;
  if (!qword_1EBA474B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA474B8);
  }

  return result;
}

unint64_t sub_1B79CB218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA474C0[0];
  if (!qword_1EBA474C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA474C0);
  }

  return result;
}

unint64_t sub_1B79CB26C(uint64_t a1)
{
  result = sub_1B7A98870();
  if (v2 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79CB2FC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
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
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

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

void sub_1B79CB464(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
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
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);

        v19((v17 + v9 + 8) & ~v9);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *v17 = v18;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
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

uint64_t sub_1B79CB6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v5 = *(a2 - 8);
  v36 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v12 = sub_1B7A97C30();
  v32 = v12;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 24);
  v40 = v12;
  v41 = v9;
  v42 = WitnessTable;
  v43 = v14;
  v33 = WitnessTable;
  v34 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  v21 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v21);
  v30[1] = *(v3 + *(a2 + 40));
  (*(v5 + 16))(v7, v3, a2);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v9;
  *(v23 + 24) = v14;
  (*(v5 + 32))(v23 + v22, v7, a2);
  v24 = swift_checkMetadataState();
  v25 = v31;
  v26 = v33;
  sub_1B7A984B0();

  (*(v37 + 8))(v25, v9);
  v40 = v24;
  v41 = v9;
  v42 = v26;
  v43 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v28 = *(v35 + 8);
  v28(v17, OpaqueTypeMetadata2);
  sub_1B7957EE0(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v28)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1B79CBA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for _OnChangeOfBindingViewModifier(0, a4, a5, v10);
  (*(a3 + *(v11 + 36)))(a1, a2);
}

uint64_t sub_1B79CBB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for _OnChangeOfBindingViewModifier(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1B79CBA6C(a1, a2, v10, v7, v8);
}

uint64_t RandomAccessCollection.indexed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t IndexedRandomAccessCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a3, AssociatedTypeWitness);
  v8 = sub_1B7A9A9E0();
  v10 = v9;
  v11 = swift_getAssociatedTypeWitness();
  (*(*(v11 - 8) + 16))(a2, v10, v11);
  return v8(&v13, 0);
}

void (*sub_1B79CC07C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1B79CC2D8(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(AssociatedTypeWitness - 8) + 16))(v14);
  (*(*(v10 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v10);
  return sub_1B79CC260;
}

void sub_1B79CC260(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_1B79CC2D8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  IndexedRandomAccessCollection.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1B79CC428;
}

void sub_1B79CC428(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1B79CC484@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1B7A9AB60();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1B79CC5B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, AssociatedTypeWitness, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1B79CC6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  sub_1B7A9AD60();
  IndexedRandomAccessCollection.startIndex.getter(a1);
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t sub_1B79CC7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B79CC848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1B79CCDB0(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

uint64_t sub_1B79CC8FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B79CC96C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B79CCAAC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1B79CCCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1B7A9A460();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B79CCDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B7A9A460();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1B7A9A9F0();
  result = sub_1B7A9A460();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B79CCE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B79CCEF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1B79CCF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B79CCFF8(void (*a1)(__int128 *__return_ptr, __int128 *))
{
  v3 = v2;
  v4 = 0;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = *v1;
  while (1)
  {
    v9 = v6 >= v8;
    if (v7 > 0)
    {
      v9 = v8 >= v6;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, v7);
    v8 += v7;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v10 = __OFADD__(v4++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  v40 = MEMORY[0x1E69E7CC0];
  sub_1B79D020C(0, v4, 0);
  v32 = v1[3];
  v11 = v40;
  if (v4)
  {
    while (1)
    {
      v12 = v6 >= v5;
      if (v7 > 0)
      {
        v12 = v5 >= v6;
      }

      if (v12)
      {
        break;
      }

      if (__OFADD__(v5, v7))
      {
        v13 = ((v5 + v7) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v13 = v5 + v7;
      }

      v35 = v5;
      v32(&v34, &v35);
      v36 = v34;
      v37 = 0;
      a1(&v38, &v36);
      if (v3)
      {
        goto LABEL_38;
      }

      v3 = 0;
      v14 = v38;
      v15 = v39;
      v40 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        v28 = v39;
        v30 = v38;
        sub_1B79D020C((v16 > 1), v17 + 1, 1);
        v15 = v28;
        v14 = v30;
        v11 = v40;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 32 * v17;
      *(v18 + 32) = v14;
      *(v18 + 48) = v15;
      v5 = v13;
      if (!--v4)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_38:

    __break(1u);
  }

  else
  {
    v13 = v5;
LABEL_23:
    v19 = v6 >= v13;
    if (v7 > 0)
    {
      v19 = v13 >= v6;
    }

    if (v19)
    {
      return v11;
    }

    while (1)
    {
      v21 = __OFADD__(v13, v7) ? ((v13 + v7) >> 63) ^ 0x8000000000000000 : v13 + v7;
      *&v34 = v13;
      v32(&v38, &v34);
      v36 = v38;
      a1(&v38, &v36);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v22 = v38;
      v23 = v39;
      v40 = v11;
      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v39;
        v31 = v38;
        sub_1B79D020C((v24 > 1), v25 + 1, 1);
        v23 = v29;
        v22 = v31;
        v11 = v40;
      }

      *(v11 + 16) = v25 + 1;
      v26 = v11 + 32 * v25;
      *(v26 + 32) = v22;
      *(v26 + 48) = v23;
      v27 = v6 >= v21;
      if (v7 > 0)
      {
        v27 = v21 >= v6;
      }

      v13 = v21;
      if (v27)
      {
        return v11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B79CD298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = a3[2];
  v17 = *(a3 + 24);
  v18 = *a6;
  result = swift_getKeyPath();
  *(a9 + 96) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 40) = v17;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = v18;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = result;
  return result;
}

uint64_t sub_1B79CD340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v4 = sub_1B7A97BF0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A98990();
  v89 = *(v6 - 8);
  v90 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v88 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1B7A989A0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548, &qword_1B7A9FB88);
  v11 = *(a1 + 16);
  v12 = sub_1B797EC34(&qword_1EBA47550, &qword_1EBA47548, &qword_1B7A9FB88, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  *&v121 = v10;
  *(&v121 + 1) = MEMORY[0x1E69E69B8];
  *&v122 = v11;
  *(&v122 + 1) = v12;
  *&v123 = MEMORY[0x1E69E69C0];
  v13 = sub_1B7A988E0();
  v14 = *(a1 + 24);
  v120 = v14;
  v98 = MEMORY[0x1E69819D0];
  WitnessTable = swift_getWitnessTable();
  v86 = v13;
  v103 = sub_1B7A98AB0();
  v93 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v92 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v79 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47558, &qword_1B7A9FB90);
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47560, &qword_1B7A9FB98);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568, &unk_1B7A9FBA0);
  v100 = v11;
  sub_1B7A97590();
  sub_1B7A97B40();
  v19 = sub_1B7A97B40();
  v20 = sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568, &unk_1B7A9FBA0, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  *&v121 = v18;
  *(&v121 + 1) = MEMORY[0x1E69E69B8];
  *&v122 = v19;
  *(&v122 + 1) = v20;
  *&v123 = MEMORY[0x1E69E69C0];
  v21 = sub_1B7A988E0();
  v24 = sub_1B79CFFA8(v21, v22, v23);
  v99 = v14;
  v118 = v14;
  v119 = v24;
  v102 = v24;
  v25 = swift_getWitnessTable();
  v116 = v25;
  v117 = v25;
  v114 = swift_getWitnessTable();
  v115 = v25;
  v113 = swift_getWitnessTable();
  swift_getWitnessTable();
  v26 = sub_1B7A98900();
  v27 = sub_1B797EC34(&qword_1EBA47580, &qword_1EBA47558, &qword_1B7A9FB90, MEMORY[0x1E69E6338]);
  v28 = sub_1B797EC34(&qword_1EBA47588, &qword_1EBA47560, &qword_1B7A9FB98, &unk_1B7AA1F10);
  *&v121 = v97;
  *(&v121 + 1) = v96;
  *&v122 = v26;
  *(&v122 + 1) = v27;
  *&v123 = v28;
  v29 = sub_1B7A988E0();
  v112 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v31 = sub_1B7A97FD0();
  v82 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v79 - v32;
  v34 = sub_1B7A97590();
  v84 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v83 = &v79 - v38;
  v39 = sub_1B7A97880();
  v81 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B7A97B40();
  v96 = *(v42 - 8);
  v97 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v95 = &v79 - v43;
  v44 = v2[5];
  v125 = v2[4];
  v126 = v44;
  v127 = *(v2 + 96);
  v45 = v2[1];
  v121 = *v2;
  v122 = v45;
  v46 = v2[3];
  v123 = v2[2];
  v124 = v46;
  v47 = *(v2 + 11);
  v129 = v47;
  v130 = v127;
  v98 = v31;
  if (v127 != 1)
  {

    sub_1B7A9AA10();
    v80 = v39;
    v63 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79CFFFC(&v129);
    (*(v81 + 8))(v41, v80);
    if (v128 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x1EEE9AC00](v124);
    v64 = v99;
    *(&v79 - 4) = v100;
    *(&v79 - 3) = v64;
    v77 = v29;
    v78 = v30;
    sub_1B7A97FC0();
    v65 = v98;
    v66 = swift_getWitnessTable();
    sub_1B7A981E0();
    (*(v82 + 8))(v33, v65);
    v104 = v66;
    v105 = v102;
    v67 = swift_getWitnessTable();
    v68 = v83;
    sub_1B7957EE0(v36, v34, v67);
    v69 = *(v84 + 8);
    v69(v36, v34);
    sub_1B7957EE0(v68, v34, v67);
    v70 = v103;
    v71 = swift_getWitnessTable();
    v62 = v95;
    sub_1B79B5878(v36, v34, v70, v67, v71);
    v69(v36, v34);
    v69(v68, v34);
    goto LABEL_6;
  }

  if (v47)
  {
    goto LABEL_5;
  }

LABEL_3:
  v84 = v122;
  LOBYTE(v128) = BYTE8(v122);
  v49 = v88;
  v48 = v89;
  *v88 = xmmword_1B7A9FA60;
  (*(v48 + 104))(v49, *MEMORY[0x1E697D748], v90);
  v50 = v87;
  sub_1B7A989B0();
  v52 = sub_1B79CF8C4(v50, *(&v121 + 1), v51);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v99;
  *(&v79 - 4) = v100;
  *(&v79 - 3) = v53;
  v54 = WitnessTable;
  sub_1B79CFF54();
  v77 = v54;
  v55 = v92;
  sub_1B7A98AA0();
  v56 = v103;
  v57 = swift_getWitnessTable();
  v58 = v34;
  v59 = v91;
  sub_1B7957EE0(v55, v56, v57);
  v60 = *(v93 + 8);
  v60(v55, v56);
  sub_1B7957EE0(v59, v56, v57);
  v110 = swift_getWitnessTable();
  v111 = v102;
  v61 = swift_getWitnessTable();
  v62 = v95;
  sub_1B7959A28(v55, v58, v56, v61, v57);
  v60(v55, v56);
  v60(v59, v56);
LABEL_6:
  v108 = swift_getWitnessTable();
  v109 = v102;
  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v106 = v72;
  v107 = v73;
  v74 = v97;
  v75 = swift_getWitnessTable();
  sub_1B7957EE0(v62, v74, v75);
  return (*(v96 + 8))(v62, v74);
}

uint64_t sub_1B79CDFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v37 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47558, &qword_1B7A9FB90);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47560, &qword_1B7A9FB98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568, &unk_1B7A9FBA0);
  v34 = a3;
  sub_1B7A97590();
  sub_1B7A97B40();
  sub_1B7A97B40();
  sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568, &unk_1B7A9FBA0, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v10 = sub_1B7A988E0();
  v35 = a4;
  v48 = a4;
  v49 = sub_1B79CFFA8(v10, v11, v12);
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  v44 = swift_getWitnessTable();
  v45 = WitnessTable;
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  v36 = v8;
  v39[0] = v8;
  v39[1] = v9;
  v39[2] = sub_1B7A98900();
  v40 = sub_1B797EC34(&qword_1EBA47580, &qword_1EBA47558, &qword_1B7A9FB90, MEMORY[0x1E69E6338]);
  v32[1] = v40;
  v41 = sub_1B797EC34(&qword_1EBA47588, &qword_1EBA47560, &qword_1B7A9FB98, &unk_1B7AA1F10);
  v13 = sub_1B7A988E0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v32 - v18;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = sub_1B79CE4D8(*(a1 + 8), *(a1 + 64), *a1);
  swift_getKeyPath();
  v20 = swift_allocObject();
  v21 = v34;
  v22 = v35;
  *(v20 + 16) = v34;
  *(v20 + 24) = v22;
  v23 = *(a1 + 80);
  *(v20 + 96) = *(a1 + 64);
  *(v20 + 112) = v23;
  *(v20 + 128) = *(a1 + 96);
  v24 = *(a1 + 16);
  *(v20 + 32) = *a1;
  *(v20 + 48) = v24;
  v25 = *(a1 + 48);
  *(v20 + 64) = *(a1 + 32);
  *(v20 + 80) = v25;
  *(v20 + 136) = v33;
  v27 = type metadata accessor for _ResolvedVerticalShelfLayout(0, v21, v22, v26);
  (*(*(v27 - 8) + 16))(v39, a1, v27);
  v31 = swift_getWitnessTable();
  sub_1B7A988B0();
  v38 = v31;
  v28 = swift_getWitnessTable();
  sub_1B7957EE0(v16, v13, v28);
  v29 = *(v14 + 8);
  v29(v16, v13);
  sub_1B7957EE0(v19, v13, v28);
  v29(v19, v13);
}

uint64_t sub_1B79CE4D8(uint64_t result, char a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 2)
  {
    if (result)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(a3 + 16);
  if (v5 % result != 1)
  {
LABEL_12:
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = v4;
    MEMORY[0x1EEE9AC00](v11);

    v12 = sub_1B79CCFF8(sub_1B79D08F0);

    return v12;
  }

  if (a2)
  {
    if (v5 >= 2)
    {
      v6 = v5 - 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = a3 + 32;
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = 0;
    v8[5] = (2 * v6) | 1;
    v8[6] = v4;
    MEMORY[0x1EEE9AC00](v8);
    swift_bridgeObjectRetain_n();
    v9 = sub_1B79CCFF8(sub_1B79D08F0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463D8, &qword_1B7A9D090);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7A9C180;
    if (!v5)
    {
      goto LABEL_19;
    }

    v10 = result;
    *(result + 32) = a3;
    *(result + 40) = v7;
    *(result + 48) = v5 - 1;
    *(result + 56) = (2 * v5) | 1;

LABEL_15:
    sub_1B79D0108(v10);

    return v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463D8, &qword_1B7A9D090);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B7A9C180;
  if (v5)
  {
    v9 = result;
    *(result + 32) = a3;
    *(result + 40) = a3 + 32;
    *(result + 48) = xmmword_1B7A9FA70;
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a3 + 32;
    v13[4] = 1;
    v13[5] = (2 * v5) | 1;
    v13[6] = v4;
    MEMORY[0x1EEE9AC00](v13);
    swift_bridgeObjectRetain_n();
    v10 = sub_1B79CCFF8(sub_1B79D0774);

    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B79CE844@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a2;
  v35 = a3;
  v36 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568, &unk_1B7A9FBA0);
  v32 = a4;
  sub_1B7A97590();
  sub_1B7A97B40();
  v10 = sub_1B7A97B40();
  v11 = sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568, &unk_1B7A9FBA0, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v44 = v9;
  v45 = MEMORY[0x1E69E69B8];
  v46 = v10;
  v47 = v11;
  v48 = MEMORY[0x1E69E69C0];
  v12 = sub_1B7A988E0();
  v33 = a5;
  v42 = a5;
  v43 = sub_1B79CFFA8(v12, v13, v14);
  WitnessTable = swift_getWitnessTable();
  v41 = WitnessTable;
  v38 = swift_getWitnessTable();
  v39 = WitnessTable;
  v37 = swift_getWitnessTable();
  swift_getWitnessTable();
  v31 = v12;
  v15 = sub_1B7A98900();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v30 = *a1;
  v22 = *(a1 + 2);
  v23 = *(a1 + 3);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v25 = v33;
  *(&v30 - 8) = v32;
  *(&v30 - 7) = v25;
  *(&v30 - 3) = v30;
  *(&v30 - 4) = v22;
  *(&v30 - 3) = v23;
  v26 = v35;
  *(&v30 - 2) = v34;
  *(&v30 - 1) = v26;
  sub_1B7A988F0();
  v27 = swift_getWitnessTable();
  sub_1B7957EE0(v18, v15, v27);
  v28 = *(v16 + 8);
  v28(v18, v15);
  sub_1B7957EE0(v21, v15, v27);
  v28(v21, v15);
}

uint64_t sub_1B79CEBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a8;
  v49 = a6;
  v48 = a4;
  v47 = a3;
  v45 = a2;
  v56 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568, &unk_1B7A9FBA0);
  sub_1B7A97590();
  v50 = sub_1B7A97B40();
  v13 = sub_1B7A97B40();
  v14 = sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568, &unk_1B7A9FBA0, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v55 = v12;
  v64[0] = v12;
  v64[1] = MEMORY[0x1E69E69B8];
  v53 = v13;
  v64[2] = v13;
  v64[3] = v14;
  v52 = v14;
  v64[4] = MEMORY[0x1E69E69C0];
  v15 = sub_1B7A988E0();
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &KeyPath - v18;
  sub_1B7A9A760();
  v51 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v45;
  v64[13] = a1;
  v64[14] = v45;
  v20 = a1;
  v21 = v47;
  v22 = v48;
  v64[15] = v47;
  v64[16] = v48;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  v24 = v44;
  *(v23 + 16) = a7;
  *(v23 + 24) = v24;
  v25 = *(a5 + 80);
  *(v23 + 96) = *(a5 + 64);
  *(v23 + 112) = v25;
  *(v23 + 128) = *(a5 + 96);
  v26 = *(a5 + 16);
  *(v23 + 32) = *a5;
  *(v23 + 48) = v26;
  v27 = *(a5 + 48);
  *(v23 + 64) = *(a5 + 32);
  *(v23 + 80) = v27;
  *(v23 + 136) = v20;
  *(v23 + 144) = v19;
  *(v23 + 152) = v21;
  *(v23 + 160) = v22;
  *(v23 + 168) = v49;
  v28 = swift_allocObject();
  v28[2] = a7;
  v28[3] = v24;
  v28[4] = sub_1B79D00A0;
  v28[5] = v23;
  swift_unknownObjectRetain_n();
  v30 = type metadata accessor for _ResolvedVerticalShelfLayout(0, a7, v24, v29);
  v31 = (*(*(v30 - 8) + 16))(v64, a5, v30);
  v34 = sub_1B79CFFA8(v31, v32, v33);
  v62 = v24;
  v63 = v34;
  WitnessTable = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = WitnessTable;
  v58 = swift_getWitnessTable();
  v59 = WitnessTable;
  v41 = swift_getWitnessTable();
  v36 = v43;
  sub_1B7A988B0();
  v57 = v41;
  v37 = swift_getWitnessTable();
  v38 = v46;
  sub_1B7957EE0(v36, v15, v37);
  v39 = *(v54 + 8);
  v39(v36, v15);
  sub_1B7957EE0(v38, v15, v37);
  v39(v38, v15);
}

uint64_t sub_1B79CF100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v63 = a6;
  v61 = a5;
  v62 = a4;
  v69 = a2;
  v67 = a7;
  v11 = sub_1B7A97590();
  v12 = sub_1B7A97B40();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v59 - v13;
  v14 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v68 = &v59 - v23;
  v71 = v24;
  v66 = sub_1B7A97B40();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v59 - v25;
  sub_1B7A9A760();
  v64 = sub_1B7A9A750();
  sub_1B7A9A710();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v27 = *(a3 + 64);
  if (v27 == 2)
  {
    goto LABEL_15;
  }

  if (v27)
  {
    if (__OFSUB__(v63, 1))
    {
      __break(1u);
    }

    else
    {
      if (v63 - 1 != a1)
      {
        goto LABEL_15;
      }

      if (!__OFSUB__(v61 >> 1, v62))
      {
        if ((v61 >> 1) - v62 == 1)
        {
          (*(a3 + 72))(a1, v69);
          sub_1B7A981E0();
          v28 = (*(v14 + 8))(v17, a8);
          v31 = sub_1B79CFFA8(v28, v29, v30);
          v78 = a9;
          v79 = v31;
          WitnessTable = swift_getWitnessTable();
          v33 = v68;
          sub_1B7957EE0(v21, v11, WitnessTable);
          v34 = *(v18 + 8);
          v34(v21, v11);
          sub_1B7957EE0(v33, v11, WitnessTable);
          v35 = v59;
          sub_1B7959A28(v21, v11, v11, WitnessTable, WitnessTable);
          v76 = WitnessTable;
          v77 = WitnessTable;
LABEL_14:
          v40 = v71;
          v41 = swift_getWitnessTable();
          v42 = v70;
          sub_1B79B5878(v35, v40, v11, v41, WitnessTable);
          (*(v60 + 8))(v35, v40);
          v34(v21, v11);
          v43 = v33;
LABEL_16:
          v52 = (v34)(v43, v11);
          v55 = sub_1B79CFFA8(v52, v53, v54);
          v84 = a9;
          v85 = v55;
          v56 = swift_getWitnessTable();
          v82 = v56;
          v83 = v56;
          v80 = swift_getWitnessTable();
          v81 = v56;
          v57 = v66;
          v58 = swift_getWitnessTable();
          sub_1B7957EE0(v42, v57, v58);
          (*(v65 + 8))(v42, v57);
        }

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    if (a1)
    {
      goto LABEL_15;
    }

    if (!__OFSUB__(v61 >> 1, v62))
    {
      if ((v61 >> 1) - v62 == 1)
      {
        (*(a3 + 72))(0, v69);
        sub_1B7A981E0();
        v36 = (*(v14 + 8))(v17, a8);
        v39 = sub_1B79CFFA8(v36, v37, v38);
        v74 = a9;
        v75 = v39;
        WitnessTable = swift_getWitnessTable();
        v33 = v68;
        sub_1B7957EE0(v21, v11, WitnessTable);
        v34 = *(v18 + 8);
        v34(v21, v11);
        sub_1B7957EE0(v33, v11, WitnessTable);
        v35 = v59;
        sub_1B79B5878(v21, v11, v11, WitnessTable, WitnessTable);
        v72 = WitnessTable;
        v73 = WitnessTable;
        goto LABEL_14;
      }

LABEL_15:
      (*(a3 + 72))(a1, v69);
      sub_1B7A981E0();
      v44 = (*(v14 + 8))(v17, a8);
      v47 = sub_1B79CFFA8(v44, v45, v46);
      v88 = a9;
      v89 = v47;
      v48 = swift_getWitnessTable();
      v49 = v68;
      sub_1B7957EE0(v21, v11, v48);
      v34 = *(v18 + 8);
      v34(v21, v11);
      sub_1B7957EE0(v49, v11, v48);
      v86 = v48;
      v87 = v48;
      v50 = v71;
      v51 = swift_getWitnessTable();
      v42 = v70;
      sub_1B7959A28(v21, v50, v11, v51, v48);
      v34(v21, v11);
      v43 = v49;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B79CF8C4(uint64_t result, uint64_t a2, double a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = sub_1B7A989A0();
      v6 = sub_1B7A9A690();
      *(v6 + 16) = a2;
      v7 = *(v5 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 16);
      v9(v6 + v8, v4, v5);
      v10 = a2 - 1;
      if (a2 != 1)
      {
        v11 = *(v7 + 72);
        v12 = v6 + v11 + v8;
        do
        {
          v9(v12, v4, v5);
          v12 += v11;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v13 = sub_1B7A989A0();
    (*(*(v13 - 8) + 8))(v4, v13);
    return v6;
  }

  return result;
}

uint64_t sub_1B79CFA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548, &qword_1B7A9FB88);
  v25 = sub_1B797EC34(&qword_1EBA47550, &qword_1EBA47548, &qword_1B7A9FB88, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v26 = v7;
  v30[0] = v7;
  v30[1] = MEMORY[0x1E69E69B8];
  v30[2] = a2;
  v30[3] = v25;
  v30[4] = MEMORY[0x1E69E69C0];
  v8 = sub_1B7A988E0();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  sub_1B7A9A760();
  v24[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30[13] = *a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(a1 + 5);
  *(v14 + 96) = *(a1 + 4);
  *(v14 + 112) = v15;
  *(v14 + 128) = *(a1 + 96);
  v16 = *(a1 + 1);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v16;
  v17 = *(a1 + 3);
  *(v14 + 64) = *(a1 + 2);
  *(v14 + 80) = v17;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = sub_1B79D0844;
  v18[5] = v14;

  v20 = type metadata accessor for _ResolvedVerticalShelfLayout(0, a2, a3, v19);
  (*(*(v20 - 8) + 16))(v30, a1, v20);
  sub_1B7A988B0();
  v29 = a3;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v10, v8, WitnessTable);
  v22 = *(v27 + 8);
  v22(v10, v8);
  sub_1B7957EE0(v13, v8, WitnessTable);
  v22(v13, v8);
}

uint64_t sub_1B79CFD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[0] = a2;
  v18[1] = a6;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(a3 + 72))(a1, v18[0]);
  sub_1B7957EE0(v12, a4, a5);
  v16 = *(v10 + 8);
  v16(v12, a4);
  sub_1B7957EE0(v15, a4, a5);
  v16(v15, a4);
}

uint64_t sub_1B79CFF54()
{
  sub_1B7A97BF0();
  sub_1B79D0794();
  return sub_1B7A9AFE0();
}

unint64_t sub_1B79CFFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47578;
  if (!qword_1EBA47578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47578);
  }

  return result;
}

uint64_t sub_1B79CFFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DA8, &qword_1B7A9E740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B79D0108(void *result)
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

  result = sub_1B7987BE0(result, v10, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463E0, &qword_1B7A9D098);
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

void *sub_1B79D020C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B79D026C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B79D022C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B79D03A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B79D024C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B79D04AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B79D026C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463D8, &qword_1B7A9D090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463E0, &qword_1B7A9D098);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B79D03A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463F8, &qword_1B7A9D0B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B79D04AC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463E8, &qword_1B7A9D0A0);
  v10 = *(_s13PopupHUDModelC8RowModelVMa(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(_s13PopupHUDModelC8RowModelVMa(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t *sub_1B79D0684@<X0>(unint64_t *result@<X0>, unint64_t **a2@<X1>, unint64_t **a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result[1];
  result = *a2;
  v5 = (*a2)[2];
  if (v5 < v3 || v5 < v4)
  {
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    *a3 = result;
    a3[1] = result + 4;
    a3[2] = v3;
    a3[3] = ((2 * v4) | 1);
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_1B79D06E0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *result;
  v5 = __OFADD__(*result, v3);
  v6 = *result + v3;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (*(*(v2 + 16) + 16) < v6)
    {
      v6 = *(*(v2 + 16) + 16);
    }

    if (v6 >= v4)
    {
      *a2 = v4;
      a2[1] = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B79D0718@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = *(a2 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = __OFADD__(v4, a3);
  v8 = v4 + a3;
  if (v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = __OFADD__(v5, v8);
  v9 = v5 + v8;
  if (v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 24) >> 1 < v9)
  {
    v9 = *(a2 + 24) >> 1;
  }

  if (v9 >= v6)
  {
    *a4 = v6;
    a4[1] = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1B79D0794()
{
  result = qword_1EBA46430;
  if (!qword_1EBA46430)
  {
    sub_1B7A97BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46430);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  sub_1B795AE10(*(v1 + 120), *(v1 + 128));

  return swift_deallocObject();
}

void *sub_1B79D0850(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1B7A9A690();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1B79D090C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8, &qword_1B7A9FCC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v48 - v4;
  v5 = sub_1B7A993E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v15 + 24);
  v17 = sub_1B7A97A10();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v53 = v17;
  v54 = v19;
  v52 = v18 + 56;
  (v19)(v14 + v16, 1, 1);
  v20 = sub_1B7A99030();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v44 = sub_1B7A99050();
    (*(*(v44 - 8) + 8))(a1, v44);
    sub_1B7957888(v14 + v16, &qword_1EBA475C8, &qword_1B7A9FCC8);
    return (*(v12 + 56))(v55, 1, 1, v11);
  }

  v48 = v12;
  v49 = v11;
  *v14 = sub_1B7A99030();
  v14[1] = v24;
  v25 = v14;
  sub_1B7A99040();
  v26 = sub_1B7A993F0();
  v28 = v27;
  v29 = *(v6 + 8);
  v29(v10, v5);
  v30 = a1;
  if (v28 && (v56 = 0.0, v31 = sub_1B79D1B70(v26, v28, &v56), , v31) && (v32 = v56, v56 >= 0.0) && v56 <= 1.0)
  {
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = 0.0;
  }

  v34 = v25;
  *(v25 + 2) = v32;
  *(v25 + 24) = v33;
  v35 = v51;
  sub_1B7A99040();
  v36 = sub_1B7A993F0();
  v38 = v37;
  v29(v35, v5);
  v39 = v55;
  v41 = v48;
  v40 = v49;
  if (!v38)
  {
    goto LABEL_30;
  }

  if ((v36 != 0x6863726172656968 || v38 != 0xEC0000006C616369) && (sub_1B7A9AE80() & 1) == 0)
  {
    if (v36 == 0x6F7268636F6E6F6DLL && v38 == 0xEA0000000000656DLL || (sub_1B7A9AE80() & 1) != 0)
    {

      v42 = v50;
      sub_1B7A979D0();
      goto LABEL_15;
    }

    if (v36 == 0x6C6F6369746C756DLL && v38 == 0xEA0000000000726FLL || (sub_1B7A9AE80() & 1) != 0)
    {

      v42 = v50;
      sub_1B7A979E0();
      goto LABEL_15;
    }

    if (v36 == 0x657474656C6170 && v38 == 0xE700000000000000)
    {

LABEL_29:
      v42 = v50;
      sub_1B7A97A00();
      goto LABEL_15;
    }

    v46 = sub_1B7A9AE80();

    if (v46)
    {
      goto LABEL_29;
    }

LABEL_30:
    v47 = sub_1B7A99050();
    (*(*(v47 - 8) + 8))(v30, v47);
    sub_1B7957888(v34 + v16, &qword_1EBA475C8, &qword_1B7A9FCC8);
    v54(v34 + v16, 1, 1, v53);
    goto LABEL_31;
  }

  v42 = v50;
  sub_1B7A979F0();
LABEL_15:
  v43 = sub_1B7A99050();
  (*(*(v43 - 8) + 8))(v30, v43);
  v54(v42, 0, 1, v53);
  sub_1B79D1B00(v42, v34 + v16);
LABEL_31:
  sub_1B79D1A40(v34, v39);
  (*(v41 + 56))(v39, 0, 1, v40);
  return sub_1B79D1AA4(v34);
}

uint64_t sub_1B79D0F1C()
{
  v0 = sub_1B7A99080();
  __swift_allocate_value_buffer(v0, qword_1EBA47598);
  __swift_project_value_buffer(v0, qword_1EBA47598);
  return sub_1B7A99060();
}

uint64_t sub_1B79D0FEC(uint64_t *a1, double a2)
{
  v3 = sub_1B7A96D70();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v33 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8, &qword_1B7A9FCC8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = sub_1B7A97A10();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_1B7A98640();
  sub_1B79D19D0(a1 + *(v6 + 32), v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B7957888(v12, &qword_1EBA475C8, &qword_1B7A9FCC8);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v18 = v32;
    (*(v14 + 16))(v32, v16, v13);
    (*(v14 + 56))(v18, 0, 1, v13);
    v19 = sub_1B7A98650();

    sub_1B7957888(v18, &qword_1EBA475C8, &qword_1B7A9FCC8);
    (*(v14 + 8))(v16, v13);
    v17 = v19;
  }

  v21 = v33;
  v20 = v34;
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v22 = sub_1B7A96DA0();
  __swift_project_value_buffer(v22, qword_1EBA507B8);
  sub_1B79D1A40(a1, v21);
  sub_1B7A96D60();
  v23 = sub_1B7A96D90();
  v24 = sub_1B7A9AAA0();
  if (sub_1B7A9AB50())
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136315138;
    v27 = *v21;
    v28 = v21[1];

    sub_1B79D1AA4(v21);
    v29 = sub_1B79A6340(v27, v28, &v37);

    *(v25 + 4) = v29;
    v30 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v23, v24, v30, "Image.SystemImageLoad", "name=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1B8CACB70](v26, -1, -1);
    MEMORY[0x1B8CACB70](v25, -1, -1);

    (*(v35 + 8))(v20, v36);
  }

  else
  {

    (*(v35 + 8))(v20, v36);
    sub_1B79D1AA4(v21);
  }

  return v17;
}

uint64_t MediaArtwork.SystemImageProtocol.match(_:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46488, &qword_1B7A9FC70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1B7A99050();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  if (qword_1EBA45B40 != -1)
  {
    swift_once();
  }

  v13 = sub_1B7A99080();
  __swift_project_value_buffer(v13, qword_1EBA47598);
  sub_1B7A99070();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B7957888(v5, &qword_1EBA46488, &qword_1B7A9FC70);
    v14 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol(0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_1B79D090C(v9, a2);
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol(uint64_t a1)
{
  result = qword_1EBA475D0;
  if (!qword_1EBA475D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B79D1798()
{
  result = qword_1EBA475B8;
  if (!qword_1EBA475B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA475C0, &qword_1B7A9FC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA475B8);
  }

  return result;
}

uint64_t sub_1B79D1814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475B0, &qword_1B7A9FC78);
  result = sub_1B79D0FEC((a1 + *(v4 + 28)), v5);
  *a2 = result;
  return result;
}

void sub_1B79D1894(uint64_t a1)
{
  sub_1B79D1928();
  if (v2 <= 0x3F)
  {
    sub_1B79D1978(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B79D1928()
{
  if (!qword_1EBA475E0)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA475E0);
    }
  }
}

void sub_1B79D1978(uint64_t a1, double a2)
{
  if (!qword_1EBA475E8)
  {
    sub_1B7A97A10();
    v2 = sub_1B7A9AB60();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBA475E8);
    }
  }
}

uint64_t sub_1B79D19D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8, &qword_1B7A9FCC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79D1A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79D1AA4(uint64_t a1)
{
  v2 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79D1B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8, &qword_1B7A9FCC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1B79D1B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1B7A9AC40();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_1B79D1C68@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B79D1CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47780, &qword_1B7AA0070);
    sub_1B7A98810();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47788, &qword_1B7AA0078);
    sub_1B7A986E0();
  }
}

uint64_t IntentView.init(what:transaction:configuration:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v119 = a7;
  v120 = a8;
  v117 = a5;
  v118 = a6;
  v116 = a4;
  v121 = a3;
  v115 = a2;
  v125 = a1;
  v114 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123 = AssociatedTypeWitness;
  v100 = sub_1B7A9AB60();
  v98 = *(v100 - 1);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v98 - v21;
  v124 = *(AssociatedTypeWitness - 8);
  v22 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v98 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v103 = &v98 - v27;
  v113 = *v121;
  v28 = swift_allocObject();
  *(v28 + 16) = a11;
  *(v28 + 32) = a12;
  *(v28 + 40) = a13;
  *(v28 + 48) = a14;
  *(v28 + 56) = a15;
  *(v28 + 64) = a16;
  *(v28 + 72) = a17;
  v112 = sub_1B79D5AB0(sub_1B79D5CB0, v28, a11, *(&a11 + 1), a12, a13, a14, a15, a16, a17);
  v111 = v29;
  v109 = v30;
  v128 = a11;
  v121 = *(&a11 + 1);
  v104 = a12;
  v129 = a12;
  v130 = a13;
  v106 = a13;
  v131 = a14;
  v132 = a15;
  v107 = a15;
  v108 = a16;
  v133 = a16;
  v134 = a17;
  v110 = a17;
  v31 = type metadata accessor for IntentView(0, &v128);
  v32 = &a9[*(v31 + 112)];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v105 = v31;
  v33 = &a9[*(v31 + 116)];
  v35 = type metadata accessor for _IntentObserverKey(0, a11, a14, v34);
  type metadata accessor for _IntentProgress(255, a11, a14, v36);
  swift_getFunctionTypeMetadata1();
  v37 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v35, v37, v35, WitnessTable);
  v39 = v129;
  *v33 = v128;
  v33[16] = v39;
  v40 = v124;
  v127 = 0;
  sub_1B7A986C0();
  *a9 = v128;
  *(a9 + 2) = 0;
  a9[24] = 0;
  v41 = v123;
  v126 = a11;
  v42 = v101;
  sub_1B7A98F60();
  v43 = *(v40 + 48);
  v44 = v41;
  if (v43(v42, 1, v41) == 1)
  {
    v103 = v22;
    v45 = *(v98 + 8);
    v45(v42, v100);
    v46 = v102;
    v47 = v125;
    sub_1B7A995A0();
    if (v43(v46, 1, v41) == 1)
    {
      v45(v102, v100);
      v48 = swift_allocObject();
      v49 = v126;
      v50 = v121;
      v48[2] = v126;
      v48[3] = v50;
      v51 = v104;
      v52 = v106;
      v48[4] = v104;
      v48[5] = v52;
      v53 = v107;
      v48[6] = a14;
      v48[7] = v53;
      v54 = v108;
      v55 = v110;
      v48[8] = v108;
      v48[9] = v55;
      *&v128 = v49;
      *(&v128 + 1) = v50;
      v129 = v51;
      v130 = v52;
      v131 = a14;
      v132 = v53;
      v133 = v54;
      v134 = v55;
      type metadata accessor for IntentView.Dispatcher(0, &v128);
      swift_getWitnessTable();
      v56 = sub_1B7A97110();
      v58 = v57;
      v60 = v59;
    }

    else
    {
      v73 = v124;
      v74 = *(v124 + 32);
      v100 = (v124 + 32);
      v101 = v74;
      v75 = v99;
      (v74)(v99, v102, v44);
      (*(v73 + 16))(v122, v75, v44);
      v76 = (*(v73 + 80) + 80) & ~*(v73 + 80);
      v77 = swift_allocObject();
      v78 = v126;
      v80 = v121;
      v79 = v122;
      v77[2] = v126;
      v77[3] = v80;
      v81 = v104;
      v82 = v106;
      v77[4] = v104;
      v77[5] = v82;
      v83 = v107;
      v77[6] = a14;
      v77[7] = v83;
      v84 = v108;
      v85 = v110;
      v77[8] = v108;
      v77[9] = v85;
      v86 = v77 + v76;
      v87 = v125;
      (v101)(v86, v79, v123);
      *&v128 = v78;
      *(&v128 + 1) = v121;
      v129 = v81;
      v130 = v82;
      v131 = a14;
      v132 = v83;
      v47 = v87;
      v133 = v84;
      v134 = v85;
      type metadata accessor for IntentView.Dispatcher(0, &v128);
      swift_getWitnessTable();
      v56 = sub_1B7A97110();
      v58 = v88;
      v60 = v89;
      (*(v124 + 8))(v99, v123);
    }
  }

  else
  {
    v100 = *(v40 + 32);
    v61 = v103;
    v100(v103, v42, v41);
    (*(v40 + 16))(v122, v61, v41);
    v101 = ((*(v40 + 80) + 80) & ~*(v40 + 80));
    v62 = swift_allocObject();
    v63 = v126;
    v64 = v121;
    *(v62 + 16) = v126;
    *(v62 + 24) = v64;
    v65 = v104;
    v102 = a9;
    v66 = v106;
    *(v62 + 32) = v104;
    *(v62 + 40) = v66;
    v67 = v107;
    *(v62 + 48) = a14;
    *(v62 + 56) = v67;
    v68 = v41;
    v69 = v108;
    v70 = v110;
    *(v62 + 64) = v108;
    *(v62 + 72) = v70;
    v100(&v101[v62], v122, v68);
    *&v128 = v63;
    *(&v128 + 1) = v64;
    v129 = v65;
    v130 = v66;
    v131 = a14;
    v132 = v67;
    a9 = v102;
    v133 = v69;
    v134 = v70;
    type metadata accessor for IntentView.Dispatcher(0, &v128);
    swift_getWitnessTable();
    v56 = sub_1B7A97110();
    v58 = v71;
    v60 = v72;
    (*(v124 + 8))(v103, v123);
    v47 = v125;
  }

  sub_1B79599CC(v112, v111);
  *(a9 + 4) = v56;
  *(a9 + 5) = v58;
  a9[48] = v60 & 1;
  v90 = v105;
  result = (*(*(v126 - 8) + 32))(&a9[v105[22]], v47);
  *&a9[v90[23]] = v115;
  a9[v90[27]] = v113;
  v92 = &a9[v90[24]];
  v93 = v117;
  *v92 = v116;
  *(v92 + 1) = v93;
  v94 = &a9[v90[25]];
  v95 = v119;
  *v94 = v118;
  *(v94 + 1) = v95;
  v96 = &a9[v90[26]];
  v97 = v114;
  *v96 = v120;
  *(v96 + 1) = v97;
  return result;
}

void *sub_1B79D26F4@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79DC584(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79D2744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B79DC584(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t sub_1B79D27A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*a1 != *a2)
  {
    goto LABEL_7;
  }

  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  type metadata accessor for IntentView.RequestID(0, v28);
  v10 = sub_1B7A98D90();
  v12 = v11;
  if (v10 == sub_1B7A98D90() && v12 == v13)
  {

    goto LABEL_9;
  }

  v15 = sub_1B7A9AE80();

  if (v15)
  {
LABEL_9:
    sub_1B7A98D70();
    v17 = v29;
    v18 = __swift_project_boxed_opaque_existential_1(v28, v29);
    v27[3] = v17;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v27);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1Tm, v18, v17);
    sub_1B7A98D70();
    v20 = v26;
    v21 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v24[3] = v20;
    v22 = __swift_allocate_boxed_opaque_existential_1Tm(v24);
    (*(*(v20 - 8) + 16))(v22, v21, v20);
    v16 = sub_1B7A999A0();
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v16 & 1;
  }

LABEL_7:
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1B79D2A28()
{
  v1 = *v0;
  v18 = *(*v0 + 112);
  v17 = v1[10];
  swift_getAssociatedTypeWitness();
  v2 = sub_1B7A9A100();
  v16 = sub_1B7A9AB60();
  v15 = sub_1B7A96F50();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v15 - v4;
  v6 = *(v16 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v11 = v1[20];
  v12 = *(*(v2 - 8) + 56);
  v12(&v15 - v9, 1, 1, v2, v8);
  sub_1B79D2CFC(v10, v17, v1[11], v1[12], v1[13], v18);
  (*(v3 + 32))(v0 + v11, v5, v15);
  *v13.i64 = (v12)(v10, 1, 1, v2);
  sub_1B79DB870(v10, v13);
  (*(v6 + 8))(v10, v16);
  return v0;
}

uint64_t sub_1B79D2CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  v7 = sub_1B7A9AB60();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, a1, v7, v9);
  sub_1B7A28F54(v11, v7);
  return (*(v8 + 8))(a1, v7);
}

char *sub_1B79D2E20()
{
  if (*(v0 + 2))
  {

    sub_1B7A9A7F0();
  }

  v1 = *(*v0 + 160);
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v2 = sub_1B7A96F50();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t sub_1B79D2F40()
{
  sub_1B79D2E20();

  return swift_deallocClassInstance();
}

uint64_t sub_1B79D2F94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

void sub_1B79D30FC(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7)
{
  v44 = a7;
  v50 = a5;
  v51 = a6;
  v45 = a1;
  v48 = *v7;
  v10 = v48;
  v49 = a3;
  v11 = *(v48 + 80);
  v12 = *(v11 - 8);
  v47 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = &v42 - v15;
  v46 = *(v10 + 112);
  swift_getAssociatedTypeWitness();
  v16 = sub_1B7A9A100();
  v17 = sub_1B7A9AB60();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v25 = *a4;
  if ((a2 & 1) != 0 || !v7[2] && (sub_1B79D2F94(), v26 = (*(*(v16 - 8) + 48))(v24, 1, v16), (*(v18 + 8))(v24, v17), v26 == 1) || *(v7 + 24) == 1)
  {
    if (v44)
    {
      *v27.i64 = (*(*(v16 - 8) + 56))(v20, 1, 1, v16, v22);
      sub_1B79DB870(v20, v27);
      (*(v18 + 8))(v20, v17);
    }

    v43 = v7;
    *(v7 + 24) = 0;
    v28 = sub_1B7A9A7E0();
    (*(*(v28 - 8) + 56))(v52, 1, 1, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(v53, v45, v11);
    sub_1B7A9A760();
    v45 = v11;
    v30 = v49;

    v32 = v50;
    v31 = v51;
    sub_1B7974B84(v50, v51);

    v33 = sub_1B7A9A750();
    v34 = (*(v12 + 80) + 128) & ~*(v12 + 80);
    v35 = (v47 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    *(v36 + 16) = v33;
    *(v36 + 24) = v37;
    *(v36 + 32) = v45;
    v38 = v48;
    *(v36 + 40) = *(v48 + 88);
    v39 = v46;
    *(v36 + 56) = *(v38 + 104);
    *(v36 + 64) = v39;
    *(v36 + 72) = *(v38 + 120);
    *(v36 + 88) = *(v38 + 136);
    *(v36 + 96) = v30;
    *(v36 + 104) = v32;
    *(v36 + 112) = v31;
    *(v36 + 120) = v25;
    (*(v12 + 32))(v36 + v34, v53);
    *(v36 + v35) = v29;

    v40 = sub_1B79A9B34(0, 0, v52, &unk_1B7AA0050, v36);
    v41 = v43;
    sub_1B79C6DFC();
    v41[2] = v40;
  }
}

uint64_t sub_1B79D35C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v23;
  *(v8 + 120) = v22;
  *(v8 + 104) = v20;
  *(v8 + 112) = v21;
  *(v8 + 88) = v19;
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  v9 = sub_1B7A9A720();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 176) = AssociatedTypeWitness;
  *(v8 + 184) = *(AssociatedTypeWitness - 8);
  *(v8 + 192) = swift_task_alloc();
  v12 = type metadata accessor for _IntentProgress(0, v18, v21, v11);
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 - 8);
  *(v8 + 216) = swift_task_alloc();
  sub_1B7A9A760();
  *(v8 + 224) = sub_1B7A9A750();
  v14 = sub_1B7A9A710();
  *(v8 + 232) = v14;
  *(v8 + 240) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1B79D37D4, v14, v13);
}

uint64_t sub_1B79D37D4()
{
  v1 = v0[5];
  if (v1)
  {
    swift_storeEnumTagMultiPayload();
    v10 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_1B79D396C;
    v3 = v0[27];

    return v10(v3);
  }

  else
  {
    v0[2] = v0[7];
    v5 = swift_task_alloc();
    v0[32] = v5;
    *v5 = v0;
    v5[1] = sub_1B79D3B20;
    v6 = v0[24];
    v7 = v0[14];
    v8 = v0[10];
    v9 = v0[8];

    return IntentDispatchAction.callAsFunction<A>(_:)(v6, v9, v8, v7);
  }
}

uint64_t sub_1B79D396C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2] = v1[7];
  v6 = swift_task_alloc();
  v1[32] = v6;
  *v6 = v5;
  v6[1] = sub_1B79D3B20;
  v7 = v1[24];
  v8 = v1[14];
  v9 = v1[10];
  v10 = v1[8];

  return IntentDispatchAction.callAsFunction<A>(_:)(v7, v10, v9, v8);
}

uint64_t sub_1B79D3B20()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1B79D4904;
  }

  else
  {
    v5 = sub_1B79D3C34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B79D3C34()
{
  v1 = *(v0 + 264);
  sub_1B7A9A820();
  *(v0 + 272) = v1;
  if (v1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    *(v0 + 288) = v1;
    *(v0 + 24) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 160);
      v4 = *(v0 + 168);
      v5 = *(v0 + 144);
      v6 = *(v0 + 152);
      v7 = *(v0 + 40);

      (*(v6 + 32))(v3, v4, v5);
      if (v7)
      {
        v8 = *(v0 + 216);
        v10 = *(v0 + 152);
        v9 = *(v0 + 160);
        v11 = *(v0 + 144);
        v12 = *(v0 + 40);
        sub_1B79C8854();
        v13 = swift_allocError();
        (*(v10 + 16))(v14, v9, v11);
        *v8 = v13;
        swift_storeEnumTagMultiPayload();
        v38 = (v12 + *v12);
        v15 = swift_task_alloc();
        *(v0 + 296) = v15;
        *v15 = v0;
        v16 = sub_1B79D4438;
LABEL_9:
        v15[1] = v16;
        v21 = *(v0 + 216);

        return v38(v21);
      }

      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    }

    else
    {
      v18 = *(v0 + 40);

      if (v18)
      {
        v19 = *(v0 + 40);
        **(v0 + 216) = v1;
        swift_storeEnumTagMultiPayload();
        v20 = v1;
        v38 = (v19 + *v19);
        v15 = swift_task_alloc();
        *(v0 + 304) = v15;
        *v15 = v0;
        v16 = sub_1B79D466C;
        goto LABEL_9;
      }

      v31 = *(v0 + 288);
      v32 = *(v0 + 72);
      v33 = swift_task_alloc();
      v34 = *(v0 + 96);
      v35 = *(v0 + 112);
      v36 = *(v0 + 128);
      *(v33 + 16) = *(v0 + 80);
      *(v33 + 32) = v34;
      *(v33 + 48) = v35;
      *(v33 + 64) = v36;
      *(v33 + 80) = v32;
      *(v33 + 88) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20);
      sub_1B7A97600();
    }
  }

  else
  {
    v17 = *(v0 + 40);
    if (v17)
    {
      (*(*(v0 + 184) + 16))(*(v0 + 216), *(v0 + 192), *(v0 + 176));
      swift_storeEnumTagMultiPayload();
      v38 = (v17 + *v17);
      v15 = swift_task_alloc();
      *(v0 + 280) = v15;
      *v15 = v0;
      v16 = sub_1B79D4184;
      goto LABEL_9;
    }

    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 176);
    v26 = *(v0 + 72);
    v27 = swift_task_alloc();
    v28 = *(v0 + 96);
    v29 = *(v0 + 112);
    v30 = *(v0 + 128);
    *(v27 + 16) = *(v0 + 80);
    *(v27 + 32) = v28;
    *(v27 + 48) = v29;
    *(v27 + 64) = v30;
    *(v27 + 80) = v26;
    *(v27 + 88) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20);
    sub_1B7A97600();

    (*(v24 + 8))(v23, v25);
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1B79D4184()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1B79D4308, v6, v5);
}

uint64_t sub_1B79D4308()
{

  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  v6 = *(v0 + 96);
  v7 = *(v0 + 112);
  v8 = *(v0 + 128);
  *(v5 + 16) = *(v0 + 80);
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 80) = v4;
  *(v5 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20);
  sub_1B7A97600();

  (*(v2 + 8))(v1, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B79D4438()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1B79D45BC, v6, v5);
}

uint64_t sub_1B79D45BC()
{

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B79D466C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1B79D47F0, v6, v5);
}

uint64_t sub_1B79D47F0()
{

  v1 = *(v0 + 288);
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  v4 = *(v0 + 96);
  v5 = *(v0 + 112);
  v6 = *(v0 + 128);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  *(v3 + 80) = v2;
  *(v3 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20);
  sub_1B7A97600();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B79D4904()
{
  v1 = *(v0 + 264);
  *(v0 + 24) = v1;
  *(v0 + 288) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 40);

    (*(v6 + 32))(v4, v3, v5);
    if (v7)
    {
      v8 = *(v0 + 216);
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v11 = *(v0 + 144);
      v12 = *(v0 + 40);
      sub_1B79C8854();
      v13 = swift_allocError();
      (*(v10 + 16))(v14, v9, v11);
      *v8 = v13;
      swift_storeEnumTagMultiPayload();
      v29 = (v12 + *v12);
      v15 = swift_task_alloc();
      *(v0 + 296) = v15;
      *v15 = v0;
      v16 = sub_1B79D4438;
LABEL_6:
      v15[1] = v16;
      v20 = *(v0 + 216);

      return v29(v20);
    }

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  }

  else
  {
    v17 = *(v0 + 40);

    if (v17)
    {
      v18 = *(v0 + 40);
      **(v0 + 216) = v1;
      swift_storeEnumTagMultiPayload();
      v19 = v1;
      v29 = (v18 + *v18);
      v15 = swift_task_alloc();
      *(v0 + 304) = v15;
      *v15 = v0;
      v16 = sub_1B79D466C;
      goto LABEL_6;
    }

    v22 = *(v0 + 288);
    v23 = *(v0 + 72);
    v24 = swift_task_alloc();
    v25 = *(v0 + 96);
    v26 = *(v0 + 112);
    v27 = *(v0 + 128);
    *(v24 + 16) = *(v0 + 80);
    *(v24 + 32) = v25;
    *(v24 + 48) = v26;
    *(v24 + 64) = v27;
    *(v24 + 80) = v23;
    *(v24 + 88) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20);
    sub_1B7A97600();
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1B79D4CCC@<X0>(uint64_t a2@<X1>, BOOL *a5@<X8>)
{
  v15 = a2;
  v16 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B7A9A100();
  v7 = sub_1B7A9AB60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(v10, v15, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    *v12.i64 = (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
    sub_1B79DB870(v10, v12);
    (*(v8 + 8))(v10, v7);
  }

  *v16 = Strong == 0;
  return result;
}

uint64_t sub_1B79D4F0C@<X0>(void *a2@<X1>, BOOL *a5@<X8>)
{
  v15 = a5;
  swift_getAssociatedTypeWitness();
  v6 = sub_1B7A9A100();
  v7 = sub_1B7A9AB60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - v9);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *v10 = a2;
    swift_storeEnumTagMultiPayload();
    (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
    v12 = a2;
    sub_1B79DB870(v10, v13);
    (*(v8 + 8))(v10, v7);
  }

  *v15 = Strong == 0;
  return result;
}

uint64_t IntentView.init(_:what:transaction:configuration:working:failed:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, unsigned __int8 *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v127 = a7;
  v128 = a8;
  v125 = a5;
  v126 = a6;
  v130 = a4;
  v124 = a3;
  v134 = a2;
  v121 = a1;
  v123 = a11;
  v122 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v107 = sub_1B7A9AB60();
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v103 - v22;
  v131 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v132 = &v103 - v26;
  v106 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v103 - v29;
  v133 = *v121;
  v111 = *(v121 + 2);
  LODWORD(v121) = *v130;
  v30 = swift_allocObject();
  *(v30 + 16) = a12;
  *(v30 + 32) = a13;
  *(v30 + 40) = a14;
  *(v30 + 48) = a15;
  *(v30 + 56) = a16;
  *(v30 + 64) = a17;
  *(v30 + 72) = a18;
  v119 = sub_1B79D5AB0(sub_1B79DC5DC, v30, a12, *(&a12 + 1), a13, a14, a15, a16, a17, a18);
  v118 = v31;
  v117 = v32;
  v136 = a12;
  v112 = *(&a12 + 1);
  v130 = a13;
  v137 = a13;
  v138 = a14;
  v33 = v108;
  v114 = a14;
  v139 = a15;
  v140 = a16;
  v115 = a16;
  v116 = a17;
  v141 = a17;
  v142 = a18;
  v120 = a18;
  v34 = type metadata accessor for IntentView(0, &v136);
  v35 = a9 + *(v34 + 112);
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v113 = v34;
  v36 = a9 + *(v34 + 116);
  v38 = type metadata accessor for _IntentObserverKey(0, a12, a15, v37);
  type metadata accessor for _IntentProgress(255, a12, a15, v39);
  swift_getFunctionTypeMetadata1();
  v40 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v38, v40, v38, WitnessTable);
  v42 = v137;
  *v36 = v136;
  *(v36 + 16) = v42;
  v43 = v131;
  *a9 = v133;
  *(a9 + 16) = v111;
  v111 = a9;
  *(a9 + 24) = 1;
  v135 = a12;
  *&v133 = a15;
  sub_1B7A98F60();
  v44 = *(v43 + 48);
  if (v44(v33, 1, AssociatedTypeWitness) == 1)
  {
    v45 = *(v104 + 8);
    v45(v33, v107);
    v46 = v109;
    v47 = v134;
    sub_1B7A995A0();
    if (v44(v46, 1, AssociatedTypeWitness) == 1)
    {
      v48 = v47;
      v45(v109, v107);
      v49 = swift_allocObject();
      v50 = v135;
      v51 = v112;
      v49[2] = v135;
      v49[3] = v51;
      v52 = v130;
      v53 = v114;
      v49[4] = v130;
      v49[5] = v53;
      v54 = v133;
      v55 = v115;
      v49[6] = v133;
      v49[7] = v55;
      v56 = v116;
      v57 = v120;
      v49[8] = v116;
      v49[9] = v57;
      *&v136 = v50;
      *(&v136 + 1) = v51;
      v137 = v52;
      v138 = v53;
      v139 = v54;
      v140 = v55;
      v141 = v56;
      v142 = v57;
      type metadata accessor for IntentView.Dispatcher(0, &v136);
      swift_getWitnessTable();
      v58 = sub_1B7A97110();
      v60 = v59;
      v62 = v61;
    }

    else
    {
      v77 = *(v43 + 32);
      v108 = (v43 + 32);
      v110 = v77;
      v78 = v105;
      v129 = AssociatedTypeWitness;
      (v77)(v105, v109, AssociatedTypeWitness);
      (*(v43 + 16))(v132, v78, AssociatedTypeWitness);
      v79 = (*(v43 + 80) + 80) & ~*(v43 + 80);
      v80 = swift_allocObject();
      v81 = v135;
      v82 = v112;
      v80[2] = v135;
      v80[3] = v82;
      v83 = v129;
      v84 = v114;
      v80[4] = v130;
      v80[5] = v84;
      v85 = v132;
      v86 = v133;
      v87 = v115;
      v80[6] = v133;
      v80[7] = v87;
      v88 = v116;
      v89 = v120;
      v80[8] = v116;
      v80[9] = v89;
      v90 = v80 + v79;
      v91 = v134;
      (v110)(v90, v85, v83);
      *&v136 = v81;
      *(&v136 + 1) = v82;
      v137 = v130;
      v138 = v84;
      v139 = v86;
      v140 = v87;
      v48 = v91;
      v141 = v88;
      v142 = v89;
      type metadata accessor for IntentView.Dispatcher(0, &v136);
      swift_getWitnessTable();
      v58 = sub_1B7A97110();
      v60 = v92;
      v62 = v93;
      (*(v43 + 8))(v105, v129);
    }
  }

  else
  {
    v109 = *(v43 + 32);
    v63 = v110;
    v129 = AssociatedTypeWitness;
    (v109)(v110, v33, AssociatedTypeWitness);
    (*(v43 + 16))(v132, v63, AssociatedTypeWitness);
    v108 = ((*(v43 + 80) + 80) & ~*(v43 + 80));
    v64 = swift_allocObject();
    v65 = v135;
    v66 = v112;
    *(v64 + 16) = v135;
    *(v64 + 24) = v66;
    v67 = v129;
    v68 = v130;
    v69 = v132;
    v70 = v133;
    v71 = v114;
    *(v64 + 32) = v130;
    *(v64 + 40) = v71;
    v72 = v115;
    *(v64 + 48) = v70;
    *(v64 + 56) = v72;
    v73 = v116;
    v74 = v120;
    *(v64 + 64) = v116;
    *(v64 + 72) = v74;
    (v109)(&v108[v64], v69, v67);
    *&v136 = v65;
    *(&v136 + 1) = v66;
    v137 = v68;
    v138 = v71;
    v139 = v70;
    v140 = v72;
    v141 = v73;
    v142 = v74;
    type metadata accessor for IntentView.Dispatcher(0, &v136);
    swift_getWitnessTable();
    v58 = sub_1B7A97110();
    v60 = v75;
    v62 = v76;
    (*(v131 + 8))(v110, v129);
    v48 = v134;
  }

  sub_1B79599CC(v119, v118);
  v94 = v111;
  *(v111 + 32) = v58;
  *(v94 + 40) = v60;
  *(v94 + 48) = v62 & 1;
  v95 = v113;
  result = (*(*(v135 - 8) + 32))(v94 + v113[22], v48);
  *(v94 + v95[23]) = v124;
  *(v94 + v95[27]) = v121;
  v97 = (v94 + v95[24]);
  v98 = v126;
  *v97 = v125;
  v97[1] = v98;
  v99 = (v94 + v95[25]);
  v100 = v128;
  *v99 = v127;
  v99[1] = v100;
  v101 = (v94 + v95[26]);
  v102 = v123;
  *v101 = v122;
  v101[1] = v102;
  return result;
}

uint64_t sub_1B79D5AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  type metadata accessor for IntentView.Dispatcher(0, v11);
  swift_getWitnessTable();
  return sub_1B7A97110();
}

uint64_t sub_1B79D5B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a8;
  v12[7] = a9;
  type metadata accessor for IntentView.Dispatcher(0, v12);
  swift_allocObject();
  return sub_1B79DBC70(a1, a10);
}

uint64_t sub_1B79D5BA8()
{
  if (*(v0 + 24))
  {

    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47780, &qword_1B7AA0070);
    MEMORY[0x1B8CA9A40](v1);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47788, &qword_1B7AA0078);
    sub_1B7A986D0();
  }
}

uint64_t sub_1B79D5C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a7;
  v9[7] = a8;
  type metadata accessor for IntentView.Dispatcher(0, v9);
  swift_allocObject();
  return sub_1B79D2A28();
}

uint64_t sub_1B79D5CF8(unsigned __int8 a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1B79D5B3C(v1 + ((*(v11 + 80) + 80) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, v10, a1);
}

uint64_t sub_1B79D5DE0()
{
  v1 = v0[2];
  v4[0] = v0[1];
  v4[1] = v1;
  v2 = v0[4];
  v4[2] = v0[3];
  v4[3] = v2;
  type metadata accessor for IntentView.Dispatcher(0, v4);
  swift_allocObject();
  return sub_1B79D2A28();
}

uint64_t objectdestroy_5Tm_1()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 80) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B79D5ED4(_OWORD *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = a1[2];
  v12[0] = a1[1];
  v12[1] = v7;
  v8 = a1[4];
  v12[2] = a1[3];
  v12[3] = v8;
  v9 = type metadata accessor for IntentView.Dispatcher(0, v12);
  WitnessTable = swift_getWitnessTable();
  return a2(v4, v5, v6, v9, WitnessTable);
}

uint64_t sub_1B79D5F6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 112);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1B7A9AA10();
    v12 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v10);
    return (*(v6 + 8))(v8, v5);
  }
}

void *sub_1B79D60F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  type metadata accessor for _IntentProgress(255, v5, v6, a4);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  if (!v9)
  {
    return 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = *(a1 + 24);
  *(v7 + 40) = *(a1 + 40);
  *(v7 + 48) = v6;
  *(v7 + 56) = *(a1 + 56);
  *(v7 + 72) = *(a1 + 72);
  *(v7 + 80) = v9;
  *(v7 + 88) = v10;
  return &unk_1B7AA0060;
}

uint64_t IntentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v3 = *(a1 + 16);
  v130 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v129 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = *(v5 + 72);
  *&v11 = v3;
  *(&v11 + 1) = v6;
  v170 = *(v5 + 48);
  v8 = v170;
  v171 = v7;
  v12 = v7;
  v172 = v9;
  v173 = v10;
  v13 = v9;
  v14 = v10;
  v154 = *(v5 + 32);
  v168 = v11;
  v169 = v154;
  v15 = type metadata accessor for IntentView.RequestID(0, &v168);
  v131 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v108 - v16;
  v152 = *(a1 - 8);
  v149 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v136 = &v108 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v135 = &v108 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = AssociatedTypeWitness;
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v24 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v137 = &v108 - v25;
  v26 = sub_1B7A98E50();
  v167 = MEMORY[0x1E69E76E8];
  WitnessTable = swift_getWitnessTable();
  *&v168 = v6;
  *(&v168 + 1) = v26;
  *&v169 = v12;
  *(&v169 + 1) = WitnessTable;
  v28 = sub_1B7A987A0();
  v110 = v28;
  v109 = swift_getWitnessTable();
  *&v168 = AssociatedTypeWitness;
  *(&v168 + 1) = v28;
  v169 = v154;
  v170 = v109;
  v171 = v13;
  v172 = v14;
  v29 = type metadata accessor for _ResultView(0, &v168);
  v113 = v29;
  v124 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v139 = &v108 - v30;
  v31 = swift_getWitnessTable();
  v115 = v31;
  v116 = v15;
  v114 = swift_getWitnessTable();
  *&v168 = v29;
  *(&v168 + 1) = v15;
  *&v169 = v31;
  *(&v169 + 1) = v114;
  v123 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v126 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v140 = &v108 - v32;
  v117 = sub_1B7A97590();
  v127 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v108 - v33;
  type metadata accessor for _IntentProgress(255, v3, v8, v34);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v121 = sub_1B7A97DF0();
  v122 = sub_1B7A97590();
  v125 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v112 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v119 = &v108 - v37;
  v38 = v150;
  sub_1B79D5ED4(a1, MEMORY[0x1E697DD38]);
  v155 = v3;
  v147 = v6;
  v156 = v6;
  v157 = v154;
  v151 = v8;
  v158 = v8;
  v159 = v12;
  v148 = v12;
  v146 = v13;
  v160 = v13;
  v161 = v14;
  v153 = v14;
  swift_getKeyPath();
  *&v168 = v3;
  *(&v168 + 1) = v6;
  v169 = v154;
  v170 = v8;
  v171 = v12;
  v172 = v13;
  v173 = v14;
  type metadata accessor for IntentView.Dispatcher(255, &v168);
  swift_getWitnessTable();
  sub_1B7A974B0();

  v39 = v152;
  v145 = *(v152 + 16);
  v142 = v152 + 16;
  v40 = v135;
  v41 = v38;
  v42 = a1;
  v145(v135, v38, a1);
  v144 = *(v39 + 80);
  v43 = v39;
  v44 = (v144 + 80) & ~v144;
  v45 = swift_allocObject();
  v141 = v3;
  v46 = v147;
  *(v45 + 16) = v3;
  *(v45 + 24) = v46;
  *(v45 + 32) = v154;
  v47 = v148;
  *(v45 + 48) = v151;
  *(v45 + 56) = v47;
  v48 = v146;
  v49 = v153;
  *(v45 + 64) = v146;
  *(v45 + 72) = v49;
  v50 = *(v43 + 32);
  v152 = v43 + 32;
  v143 = v50;
  v133 = v42;
  v50(v45 + v44, v40, v42);
  v51 = v145;
  v145(v136, v41, v42);
  v52 = v44;
  v134 = v44;
  v53 = swift_allocObject();
  *(v53 + 16) = v3;
  *(v53 + 24) = v46;
  *(v53 + 32) = v154;
  v54 = v151;
  v55 = v148;
  *(v53 + 48) = v151;
  *(v53 + 56) = v55;
  v56 = v153;
  *(v53 + 64) = v48;
  *(v53 + 72) = v56;
  v57 = v133;
  v58 = v143;
  v143(v53 + v52, v136, v133);
  v51(v138, v150, v57);
  v59 = v134;
  v60 = swift_allocObject();
  v61 = v147;
  *(v60 + 16) = v141;
  *(v60 + 24) = v61;
  *(v60 + 32) = v154;
  *(v60 + 48) = v54;
  *(v60 + 56) = v55;
  v62 = v146;
  v63 = v153;
  *(v60 + 64) = v146;
  *(v60 + 72) = v63;
  v58(v60 + v59, v138, v57);
  *&v107[24] = v109;
  *&v107[8] = v154;
  *v107 = v110;
  sub_1B7A55184(v137, sub_1B79D736C, v45, sub_1B79D76CC, v53, sub_1B79D7E6C, v60, v111, v139, *v107, *&v107[16], v62, v63);
  v64 = v150;
  sub_1B79D5BA8();
  v65 = v166;
  v66 = v130;
  v67 = v129;
  v68 = v141;
  (*(v130 + 16))(v129, v64 + *(v57 + 88), v141);
  v69 = v128;
  *v128 = v65;
  v70 = v147;
  *&v168 = v68;
  *(&v168 + 1) = v147;
  v169 = v154;
  v71 = v151;
  v72 = v148;
  v170 = v151;
  v171 = v148;
  v73 = v146;
  v172 = v146;
  v173 = v153;
  v74 = type metadata accessor for IntentView.RequestID(0, &v168);
  v75 = v67;
  v76 = v68;
  (*(v66 + 32))(&v69[*(v74 + 84)], v75, v68);
  v77 = v135;
  v78 = v64;
  v79 = v133;
  v145(v135, v78, v133);
  v80 = v134;
  v81 = swift_allocObject();
  *(v81 + 16) = v76;
  *(v81 + 24) = v70;
  *(v81 + 32) = v154;
  *(v81 + 48) = v71;
  *(v81 + 56) = v72;
  v82 = v153;
  *(v81 + 64) = v73;
  *(v81 + 72) = v82;
  v83 = v77;
  v143(v81 + v80, v77, v79);
  v84 = v113;
  v85 = v116;
  v86 = v115;
  v87 = v114;
  v88 = v139;
  sub_1B7A984C0();

  (*(v131 + 8))(v69, v85);
  (*(v124 + 8))(v88, v84);
  v145(v83, v150, v79);
  v89 = swift_allocObject();
  v90 = v141;
  v91 = v147;
  *(v89 + 16) = v141;
  *(v89 + 24) = v91;
  *(v89 + 32) = v154;
  v92 = v148;
  *(v89 + 48) = v151;
  *(v89 + 56) = v92;
  v93 = v153;
  *(v89 + 64) = v146;
  *(v89 + 72) = v93;
  v143(v89 + v80, v83, v79);
  *&v168 = v84;
  *(&v168 + 1) = v85;
  *&v169 = v86;
  *(&v169 + 1) = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v118;
  v96 = OpaqueTypeMetadata2;
  v97 = v140;
  sub_1B7A984A0();

  (*(v126 + 8))(v97, v96);
  v164 = OpaqueTypeConformance2;
  v165 = MEMORY[0x1E69805D0];
  v98 = v117;
  v99 = swift_getWitnessTable();
  v100 = v112;
  sub_1B79E3830(v90, 0, 0, v98, v90, v99, v151);
  (*(v127 + 8))(v95, v98);
  v101 = swift_getWitnessTable();
  v162 = v99;
  v163 = v101;
  v102 = v122;
  v103 = swift_getWitnessTable();
  v104 = v119;
  sub_1B7957EE0(v100, v102, v103);
  v105 = *(v125 + 8);
  v105(v100, v102);
  sub_1B7957EE0(v104, v102, v103);
  return (v105)(v104, v102);
}

uint64_t sub_1B79D71AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - v15;
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;
  v28[6] = v23;
  v28[7] = v24;
  v25 = type metadata accessor for IntentView(0, v28);
  (*(a1 + *(v25 + 96)))();
  sub_1B7957EE0(v13, a4, a8);
  v26 = *(v11 + 8);
  v26(v13, a4);
  sub_1B7957EE0(v16, a4, a8);
  return (v26)(v16, a4);
}

uint64_t sub_1B79D7310(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_1B79D7360(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B7974C44(result, a2);
  }

  else
  {
  }
}

uint64_t sub_1B79D736C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v11[7] = v8;
  v9 = *(type metadata accessor for IntentView(0, v11) - 8);
  return sub_1B79D71AC(v0 + ((*(v9 + 80) + 80) & ~*(v9 + 80)), v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B79D743C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a7;
  v42 = a8;
  v39 = a4;
  v40 = a5;
  v43 = a1;
  v44 = a9;
  v37 = a3;
  v38 = a10;
  v45[0] = a3;
  v45[1] = a4;
  v45[2] = a5;
  v45[3] = a6;
  v45[4] = a7;
  v45[5] = a8;
  v45[6] = a10;
  v45[7] = a11;
  v13 = type metadata accessor for IntentView(0, v45);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - v23;
  v26 = (a2 + *(v25 + 100));
  v27 = *v26;
  v35 = v26[1];
  v36 = v27;
  (*(v14 + 16))(v16, a2, v13, v22);
  v28 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v29 = swift_allocObject();
  v31 = v39;
  v30 = v40;
  *(v29 + 2) = v37;
  *(v29 + 3) = v31;
  *(v29 + 4) = v30;
  *(v29 + 5) = a6;
  v32 = v42;
  *(v29 + 6) = v41;
  *(v29 + 7) = v32;
  *(v29 + 8) = v38;
  *(v29 + 9) = a11;
  (*(v14 + 32))(&v29[v28], v16, v13);
  v36(v43, sub_1B79DC284, v29);

  sub_1B7957EE0(v20, a6, a11);
  v33 = *(v17 + 8);
  v33(v20, a6);
  sub_1B7957EE0(v24, a6, a11);
  return (v33)(v24, a6);
}

uint64_t sub_1B79D76CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v15[0] = v2[2];
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *(type metadata accessor for IntentView(0, v15) - 8);
  return sub_1B79D743C(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_1B79D77A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a8;
  v33 = a5;
  v34 = a6;
  v32 = a9;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = a4;
  v37[3] = a5;
  v37[4] = a6;
  v37[5] = a7;
  v37[6] = a8;
  v37[7] = a9;
  v13 = type metadata accessor for IntentView(0, v37);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v31 - v18;
  v20 = sub_1B7A9A7E0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v16, a1, v13);
  sub_1B7A9A760();
  v21 = sub_1B7A9A750();
  v22 = (*(v14 + 80) + 96) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 2) = v21;
  *(v23 + 3) = v24;
  *(v23 + 4) = a2;
  *(v23 + 5) = a3;
  v25 = v33;
  v26 = v34;
  *(v23 + 6) = a4;
  *(v23 + 7) = v25;
  v27 = v35;
  v28 = v36;
  *(v23 + 8) = v26;
  *(v23 + 9) = v27;
  v29 = v32;
  *(v23 + 10) = v28;
  *(v23 + 11) = v29;
  (*(v14 + 32))(&v23[v22], v16, v13);
  sub_1B79A9B34(0, 0, v19, &unk_1B7AA0088, v23);
}

uint64_t sub_1B79D79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_1B7A9A760();
  *(v4 + 56) = sub_1B7A9A750();
  v6 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79D7A80, v6, v5);
}

uint64_t sub_1B79D7A80()
{
  v1 = v0[6];

  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v0[2] = *v1;
  v0[3] = v3;
  if (v5)
  {
    v0[4] = v4;

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47780, &qword_1B7AA0070);
    MEMORY[0x1B8CA9A40](v6);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47788, &qword_1B7AA0078);
    sub_1B7A986D0();
  }

  v7 = v0[5] + 1;
  v0[5] = v7;
  sub_1B79D1CE8(v7, v2, v3, v4, v5);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B79D7B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a4;
  v6 = *(a3 - 8);
  v34 = a1;
  v35 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v43 = v13;
  v44 = v14;
  v15 = v14;
  v33 = v14;
  v45 = v17;
  v46 = v16;
  v18 = type metadata accessor for IntentView(255, &v39);
  v19 = sub_1B7A98E50();
  v38 = MEMORY[0x1E69E76E8];
  WitnessTable = swift_getWitnessTable();
  v39 = a3;
  v40 = v19;
  v41 = v15;
  v42 = WitnessTable;
  v20 = sub_1B7A987A0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v31 - v26;
  (*(a2 + *(v18 + 104)))(v34, v25);
  sub_1B79D5BA8();
  sub_1B7A98E60();
  v37 = v39;
  sub_1B7A98390();
  (*(v35 + 8))(v8, a3);
  v28 = swift_getWitnessTable();
  sub_1B7957EE0(v23, v20, v28);
  v29 = *(v21 + 8);
  v29(v23, v20);
  sub_1B7957EE0(v27, v20, v28);
  return (v29)(v27, v20);
}

uint64_t sub_1B79D7E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v9 = v2[9];
  v14[0] = v2[2];
  v14[1] = v4;
  v14[2] = v5;
  v14[3] = v6;
  v14[4] = v7;
  v14[5] = v8;
  v14[6] = v10;
  v14[7] = v9;
  v11 = *(type metadata accessor for IntentView(0, v14) - 8);
  return sub_1B79D7B9C(a1, v2 + ((*(v11 + 80) + 80) & ~*(v11 + 80)), v4, a2);
}

uint64_t sub_1B79D7F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v42 = a7;
  v43 = a8;
  v41 = a6;
  v18 = sub_1B7A98C30();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v38 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v45 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v44 = a13;
  v46[0] = a2;
  v46[1] = a3;
  v46[2] = a4;
  v46[3] = a5;
  v46[4] = v41;
  v46[5] = v42;
  v46[6] = v43;
  v46[7] = a9;
  v24 = type metadata accessor for IntentView(0, v46);
  sub_1B79D5ED4(v24, MEMORY[0x1E697DD30]);
  (*(v20 + 16))(v23, a1 + *(v24 + 88), a2);
  v25 = *(a1 + *(v24 + 92));
  sub_1B79D5F6C(v24, v46);
  v29 = v46[0];
  if (!v46[0])
  {
    v43 = a12;
    sub_1B7A99300();
    sub_1B7A992B0();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
    v31 = swift_allocObject();
    v31[3] = 0;
    v31[4] = 0;
    v31[2] = &unk_1B7AA7E08;
    v32 = v38;
    MEMORY[0x1B8CA9E30](v30, v43, v31, v30);
    v29 = sub_1B7A992C0();

    (*(v39 + 8))(v32, v40);
  }

  v46[0] = v29;
  v33 = sub_1B79D60F4(v24, v26, v27, v28);
  v35 = v34;
  sub_1B79D30FC(v23, v44 & 1, v25, v46, v33, v34, (*(a1 + *(v24 + 108)) & 1) == 0);
  sub_1B7974C44(v33, v35);

  (*(v20 + 8))(v23, a2);
}

uint64_t sub_1B79D831C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  v11 = v4[6];
  v10 = v4[7];
  v12 = v4[8];
  v13 = v4[9];
  v19[0] = v4[2];
  v6 = v19[0];
  v19[1] = v7;
  v19[2] = v8;
  v19[3] = v9;
  v19[4] = v11;
  v19[5] = v10;
  v19[6] = v12;
  v19[7] = v13;
  v14 = *(type metadata accessor for IntentView(0, v19) - 8);
  return sub_1B79D7F68(v4 + ((*(v14 + 80) + 80) & ~*(v14 + 80)), v6, v7, v8, v9, v11, v10, v12, v13, a1, a2, a3, a4);
}

uint64_t IntentViewConfiguration.RefreshStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t IntentView.init(_:what:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v28 = a13;
  v29 = a12;
  v27 = a14;
  v20 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v34 = *v23;
  v35 = v24;
  (*(v20 + 16))(v22);
  v33 = 0;
  *(&v26 + 1) = v29;
  *&v26 = a11;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v34, v22, a3, &v33, a4, v30, v31, v32, a9, a8, a10, v26, *(&v29 + 1), v28, *(&v28 + 1), v27, *(&v27 + 1), a15);
  return (*(v20 + 8))(a2, a11);
}

uint64_t IntentView.init(_:what:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v31 = a5;
  v32 = a6;
  v29 = a12;
  v30 = a11;
  v28 = a13;
  v20 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v34 = *v23;
  v35 = v24;
  (*(v20 + 16))(v22);
  sub_1B7A98A40();
  v25 = sub_1B7A97180();
  v33 = 0;
  *(&v27 + 1) = v30;
  *&v27 = a10;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v34, v22, v25, &v33, a3, a4, v31, v32, a9, a7, a8, v27, *(&v30 + 1), v29, *(&v29 + 1), v28, *(&v28 + 1), a14);
  return (*(v20 + 8))(a2, a10);
}

uint64_t IntentView.init<>(_:what:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a8;
  v27 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a9;
  v25 = a2;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14[1];
  v16 = v14[2];
  *&v34 = *v14;
  *(&v34 + 1) = v15;
  v28 = v34;
  v35 = v16;
  (*(v10 + 16))(v13, v11);

  sub_1B7A98A40();
  v24 = sub_1B7A97180();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v19 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v20 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  v33 = 0;
  *&v22 = a5;
  *(&v22 + 1) = v29;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v34, v13, v24, &v33, j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, v32, v31, v30, v22, v17, v18, v27, v26, v19, v20);
  (*(v10 + 8))(v25, a5);
}

uint64_t IntentView.init<>(_:what:placeholder:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a9;
  v56 = a5;
  v58 = a4;
  v52 = a3;
  v53 = a2;
  v45 = a10;
  v46 = a7;
  v47 = a8;
  swift_getAssociatedTypeWitness();
  v15 = sub_1B7A9AB60();
  v49 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v54 = *(a6 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v23;
  v24 = *a1;
  v57 = a1[1];
  v25 = a1[2];
  *&v62 = v24;
  *(&v62 + 1) = v57;
  v50 = v24;
  v63 = v25;
  v27 = *(v26 + 16);
  v29 = v28;
  v48 = v28;
  v27(v23, a2, v21);
  (*(v16 + 16))(v19, a3, v15);
  v30 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v29;
  v33 = v45;
  v32 = v46;
  *(v31 + 3) = v46;
  *(v31 + 4) = a8;
  *(v31 + 5) = v33;
  (*(v16 + 32))(&v31[v30], v19, v15);
  v34 = &v31[(v17 + v30 + 7) & 0xFFFFFFFFFFFFFFF8];
  v35 = v56;
  *v34 = v58;
  *(v34 + 1) = v35;

  sub_1B7A98A40();
  v44 = sub_1B7A97180();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v36 = sub_1B7A97B40();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v38 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v59 = v33;
  v60 = v38;
  WitnessTable = swift_getWitnessTable();
  v40 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  v61 = 0;
  *(&v43 + 1) = v32;
  v41 = v48;
  *&v43 = v48;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v62, v51, v44, &v61, sub_1B79DC5F0, v31, sub_1B79AF2C8, 0, v55, v58, v56, v43, v36, v37, v47, v33, WitnessTable, v40);
  (*(v16 + 8))(v52, v49);
  (*(v54 + 8))(v53, v41);
}

uint64_t IntentView.init<>(_:what:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a5;
  v30 = a4;
  v31 = a9;
  v32 = a3;
  v26 = a2;
  v11 = *(a6 - 8);
  v25 = a10;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[1];
  v17 = v15[2];
  *&v34 = *v15;
  *(&v34 + 1) = v16;
  v35 = v17;
  (*(v11 + 16))(v14, v12);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v19 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v20 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  v33 = 0;

  *&v22 = a6;
  *(&v22 + 1) = v28;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v34, v14, v32, &v33, j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, v31, v30, v29, v22, v24, v18, v27, v25, v19, v20);
  (*(v11 + 8))(v26, a6);
}

uint64_t IntentView.init<>(_:what:placeholder:transaction:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a4;
  v52 = a6;
  v47 = a3;
  v48 = a2;
  v50 = a9;
  v43 = a11;
  v54 = a10;
  v55 = a5;
  swift_getAssociatedTypeWitness();
  v16 = sub_1B7A9AB60();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v49 = *(a7 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v24;
  v25 = *a1;
  v53 = a1[1];
  v26 = a1[2];
  *&v59 = v25;
  *(&v59 + 1) = v53;
  v45 = v25;
  v60 = v26;
  (*(v27 + 16))(v24, a2, a7, v22);
  v58 = 0;
  v28 = *(v17 + 16);
  v44 = v16;
  v28(v20, a3, v16);
  v29 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = a7;
  *(v31 + 3) = a8;
  v32 = v43;
  *(v31 + 4) = v54;
  *(v31 + 5) = v32;
  (*(v17 + 32))(&v31[v29], v20, v16);
  v33 = &v31[v30];
  v34 = v52;
  *v33 = v55;
  *(v33 + 1) = v34;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v35 = a8;
  v36 = sub_1B7A97B40();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v38 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v56 = v32;
  v57 = v38;
  WitnessTable = swift_getWitnessTable();
  v40 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  *(&v42 + 1) = v35;
  *&v42 = a7;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v59, v46, v51, &v58, sub_1B79DC5F0, v31, sub_1B79AF2C8, 0, v50, v55, v52, v42, v36, v37, v54, v32, WitnessTable, v40);
  (*(v17 + 8))(v47, v44);
  (*(v49 + 8))(v48, a7);
}

uint64_t sub_1B79D9480@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v39 = a5;
  v32 = a3;
  v33 = a2;
  v35 = a1;
  v40 = a6;
  v34 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1B7A9AB60();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v37 = sub_1B7A97B40();
  v38 = *(v37 - 8);
  v21 = MEMORY[0x1EEE9AC00](v37);
  v23 = &v32 - v22;
  (*(v14 + 16))(v16, v35, v13, v21);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v16, v13);
    LOBYTE(v43) = 0;
    sub_1B7A986C0();
    BYTE8(v44) = v49[0];
    *&v45 = *(&v49[0] + 1);
    *(&v45 + 1) = swift_getKeyPath();
    LOBYTE(v46) = 0;
    *(&v46 + 1) = swift_getKeyPath();
    LOBYTE(v47) = 0;
    *(&v47 + 1) = swift_getKeyPath();
    v48 = 0;
    *&v43 = sub_1B795AAEC;
    *(&v43 + 1) = 0;
    LOBYTE(v44) = 1;
    v24 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
    v25 = v39;
    sub_1B7959A28(&v43, a4, v36, v39, v24);
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    sub_1B79DBA88(v49);
  }

  else
  {
    (*(v17 + 32))(v20, v16, AssociatedTypeWitness);
    v33(v20);
    v25 = v39;
    sub_1B7957EE0(v8, a4, v39);
    v26 = *(v34 + 8);
    v26(v8, a4);
    sub_1B7957EE0(v11, a4, v25);
    v27 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
    sub_1B79B5878(v8, a4, v36, v25, v27);
    v26(v8, a4);
    v26(v11, a4);
    (*(v17 + 8))(v20, AssociatedTypeWitness);
  }

  v28 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v41 = v25;
  v42 = v28;
  v29 = v37;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v23, v29, WitnessTable);
  return (*(v38 + 8))(v23, v29);
}

uint64_t IntentView.init(what:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v30 = a6;
  v31 = a7;
  v29 = a5;
  v27 = a12;
  v28 = a11;
  v26 = a13;
  v20 = *(a10 - 8);
  v21 = MEMORY[0x1EEE9AC00](a1);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, a10, v21);
  v32 = 0;
  *(&v25 + 1) = v28;
  *&v25 = a10;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v23, a2, &v32, a3, a4, v29, v30, v31, a9, a8, v25, *(&v28 + 1), v27, *(&v27 + 1), v26, *(&v26 + 1), a14);
  return (*(v20 + 8))(a1, a10);
}

uint64_t IntentView.init(what:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v27 = a7;
  v28 = a3;
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v25 = a9;
  v26 = a2;
  v24 = a1;
  v17 = *(a8 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  sub_1B7A98A40();
  v23 = sub_1B7A97180();
  sub_1B79AD710(&v33);
  v32 = v33;
  *&v22 = a8;
  *(&v22 + 1) = a10;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v20, v23, &v32, v26, v28, v29, v30, v31, v25, v27, v22, a11, a12, a13, a14, a15, a16);
  return (*(v17 + 8))(v24, a8);
}

uint64_t IntentView.init<>(what:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a3;
  v27 = a8;
  v28 = a2;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v11);
  sub_1B7A98A40();
  v22 = sub_1B7A97180();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v16 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v17 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  v18 = v23;
  v19 = v24;
  sub_1B79AD710(&v29);
  *&v21 = a4;
  *(&v21 + 1) = v18;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v13, v22, &v29, j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, v28, v27, v26, v21, v14, v15, v19, a7, v16, v17);
  return (*(v10 + 8))(v25, a4);
}

uint64_t IntentView.init<>(what:placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v49 = a4;
  v50 = a3;
  v45 = a2;
  v46 = a1;
  v48 = a9;
  v42 = a7;
  swift_getAssociatedTypeWitness();
  v14 = sub_1B7A9AB60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  v47 = *(a5 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v44 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v20);
  v23 = *(v15 + 16);
  v43 = v14;
  v23(v18, a2, v14);
  v24 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = a5;
  *(v26 + 3) = a6;
  *(v26 + 4) = a7;
  *(v26 + 5) = a8;
  v27 = a8;
  (*(v15 + 32))(&v26[v24], v18, v14);
  v28 = &v26[v25];
  v29 = v49;
  *v28 = v50;
  *(v28 + 1) = v29;

  sub_1B7A98A40();
  v41 = sub_1B7A97180();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v30 = a6;
  v31 = sub_1B7A97B40();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v33 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v34 = v27;
  v51 = v27;
  v52 = v33;
  WitnessTable = swift_getWitnessTable();
  v36 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  v37 = v42;
  sub_1B79AD710(&v53);
  *&v39 = a5;
  *(&v39 + 1) = v30;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v44, v41, &v53, sub_1B79DC5F0, v26, sub_1B79AF2C8, 0, v50, v48, v49, v39, v31, v32, v37, v34, WitnessTable, v36);
  (*(v15 + 8))(v45, v43);
  return (*(v47 + 8))(v46, a5);
}

uint64_t IntentView.init<>(what:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v23 = a6;
  v24 = a7;
  v25 = a1;
  v26 = a4;
  v28 = a2;
  v29 = a3;
  v27 = a9;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v17 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v18 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  v19 = v23;
  v20 = v24;
  sub_1B79AD710(&v30);
  *&v22 = a5;
  *(&v22 + 1) = v19;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v14, v28, &v30, j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, v29, v27, v26, v22, v15, v16, v20, a8, v17, v18);
  return (*(v11 + 8))(v25, a5);
}

uint64_t IntentView.init<>(what:placeholder:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v44 = a5;
  v45 = a4;
  v42 = a9;
  v43 = a3;
  v39 = a2;
  v40 = a1;
  swift_getAssociatedTypeWitness();
  v14 = sub_1B7A9AB60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v41 = *(a6 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v20);
  v23 = *(v15 + 16);
  v37 = v14;
  v23(v18, a2, v14);
  v24 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = a6;
  *(v26 + 3) = a7;
  *(v26 + 4) = a8;
  *(v26 + 5) = a10;
  (*(v15 + 32))(&v26[v24], v18, v14);
  v27 = &v26[v25];
  v28 = v44;
  *v27 = v45;
  *(v27 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08, &unk_1B7A9E020);
  v29 = sub_1B7A97B40();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v31 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  v46 = a10;
  v47 = v31;
  WitnessTable = swift_getWitnessTable();
  v33 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  sub_1B79AD710(&v48);

  *&v36 = a6;
  *(&v36 + 1) = a7;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v38, v43, &v48, sub_1B79DAAE4, v26, sub_1B79AF2C8, 0, v45, v42, v34, v36, v29, v30, a8, a10, WitnessTable, v33);
  (*(v15 + 8))(v39, v37);
  return (*(v41 + 8))(v40, a6);
}

uint64_t objectdestroy_42Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(sub_1B7A9AB60() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v0 + v3, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B79DAAE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = *(sub_1B7A9AB60() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1B79D9480(v1 + v6, *v7, *(v7 + 8), v3, v4, a1);
}

unint64_t sub_1B79DAC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA475F0[0];
  if (!qword_1EBA475F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA475F0);
  }

  return result;
}

void sub_1B79DAC74(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B79DB1B8(319, a2, a3, a4);
  if (v6 <= 0x3F)
  {
    v23 = 0;
    v29 = v5;
    v7 = a1[2];
    v22[0] = a1[1];
    v8 = a1[4];
    v21 = a1[3];
    v22[1] = v7;
    v22[2] = v21;
    v22[3] = v8;
    type metadata accessor for IntentView.Dispatcher(255, v22);
    swift_getWitnessTable();
    v9 = sub_1B7A97140();
    if (v10 <= 0x3F)
    {
      v24 = 0;
      v30 = v9;
      v11 = swift_checkMetadataState();
      if (v12 <= 0x3F)
      {
        v25 = 0;
        v13 = v11;
        v31 = v11;
        v32 = MEMORY[0x1E697DD78];
        v14 = sub_1B7958DD8();
        if (v15 <= 0x3F)
        {
          v33 = v14;
          v34 = v14;
          v26 = 0;
          v35 = v14;
          v36 = &type metadata for IntentViewConfiguration;
          sub_1B79DB208(319);
          if (v18 <= 0x3F)
          {
            v27 = 0;
            v37 = v16;
            type metadata accessor for _IntentProgress(255, v13, v21, v17);
            swift_getFunctionTypeMetadata1();
            sub_1B7A9AB60();
            v19 = sub_1B7A970E0();
            if (v20 <= 0x3F)
            {
              v28 = 0;
              v38 = v19;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B79DAE04(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((v8 + ((v6 + 49) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9), !*(a1 + v9)))
  {
LABEL_28:
    v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 49) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_1B79DAF98(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((((((v10 + ((v9 + 49) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
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
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *(a1 + v11) = 0;
      }

      else if (v15)
      {
        *(a1 + v11) = 0;
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
      v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 49) & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = ((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((((((v10 + ((v9 + 49) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *(a1 + v11) = v17;
      }

      else
      {
        *(a1 + v11) = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    *(a1 + v11) = v17;
  }
}

void sub_1B79DB1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EBA47678[0])
  {
    v4 = type metadata accessor for _StateOrBinding(0, &type metadata for TaskUpdate, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_1EBA47678);
    }
  }
}

void sub_1B79DB208(uint64_t a1)
{
  if (!qword_1EBA47278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA47280, qword_1B7A9FE40);
    v1 = sub_1B7A970E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA47278);
    }
  }
}

uint64_t sub_1B79DB26C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  result = sub_1B7A96F50();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79DB374(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B79DB3F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1B79DB554(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t sub_1B79DB778(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B798D338;

  return v5();
}

uint64_t sub_1B79DB870(uint64_t a1, int64x2_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  a2.i64[0] = v6;
  v19 = a2;
  v7 = v4[14];
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  v8 = sub_1B7A9AB60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18.i8[-v10];
  v12 = v4[13];
  v13 = v4[17];
  v14.i64[0] = v7;
  v18 = *(v5 + 11);
  v15 = *(v5 + 6);
  v26 = vzip1q_s64(v19, v18);
  v27 = v15;
  v19 = *(v5 + 15);
  v16 = *(v5 + 8);
  v28 = vzip1q_s64(v14, v19);
  v29 = v16;
  swift_getKeyPath();
  v20 = v6;
  v21 = v18;
  v22 = v12;
  v23 = v7;
  v24 = v19;
  v25 = v13;
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);

  return sub_1B7A96F30();
}

uint64_t sub_1B79DBA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08, &unk_1B7A9E020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79DBAF0(uint64_t a1)
{
  v3 = v1[12];
  v4 = (*(*(v1[4] - 8) + 80) + 128) & ~*(*(v1[4] - 8) + 80);
  v10 = v1[3];
  v11 = v1[2];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B79D35C0(a1, v11, v10, v3, v5, v6, v7, v1 + v4);
}

uint64_t sub_1B79DBC70(uint64_t a1, int a2)
{
  v24 = a2;
  v23 = a1;
  v3 = *v2;
  v20 = *(*v2 + 112);
  v19 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1B7A9A100();
  v21 = sub_1B7A9AB60();
  v18 = sub_1B7A96F50();
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v17 - v6;
  v8 = *(v21 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v13 = v3[20];
  v14 = *(*(v4 - 8) + 56);
  v14(&v17 - v11, 1, 1, v4, v10);
  sub_1B79D2CFC(v12, v19, v3[11], v3[12], v3[13], v20);
  (*(v5 + 32))(v2 + v13, v7, v18);
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, v23);
  swift_storeEnumTagMultiPayload();
  *v15.i64 = (v14)(v12, 0, 1, v4);
  sub_1B79DB870(v12, v15);
  (*(v8 + 8))(v12, v21);
  *(v2 + 24) = v24;
  return v2;
}

void sub_1B79DC008()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D54C;

  JUMPOUT(0x1B79DB778);
}

uint64_t objectdestroy_27Tm()
{
  v1 = v0[2];
  v8[0] = v0[1];
  v7 = *&v8[0];
  v2 = v0[3];
  v3 = v0[4];
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v4 = (type metadata accessor for IntentView(0, v8) - 8);
  v5 = v0 + ((*(*v4 + 80) + 80) & ~*(*v4 + 80));
  sub_1B79D7310(*v5, *(v5 + 1), *(v5 + 2), v5[24]);
  sub_1B79599CC(*(v5 + 4), *(v5 + 5));
  (*(*(v7 - 8) + 8))(&v5[v4[24]]);

  j__swift_release(*&v5[v4[30]]);
  sub_1B79D7360(*&v5[v4[31]], *&v5[v4[31] + 8], v5[v4[31] + 16]);
  return swift_deallocObject();
}

uint64_t sub_1B79DC284()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v11[7] = v8;
  v9 = *(type metadata accessor for IntentView(0, v11) - 8);
  return sub_1B79D77A0(v0 + ((*(v9 + 80) + 80) & ~*(v9 + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B79DC34C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v5 = v1[7];
  v16 = v1[6];
  v7 = v1[8];
  v6 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v3[2] = v1[4];
  v3[3] = v4;
  v3[4] = v16;
  v3[5] = v5;
  v3[6] = v7;
  v3[7] = v6;
  v3[8] = v8;
  v3[9] = v9;
  v10 = *(type metadata accessor for IntentView(0, (v3 + 2)) - 8);
  v11 = (*(v10 + 80) + 96) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  v3[10] = v14;
  *v14 = v3;
  v14[1] = sub_1B79DC490;

  return sub_1B79D79E4(a1, v12, v13, v1 + v11);
}

uint64_t sub_1B79DC490()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B79DC584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47790[0];
  if (!qword_1EBA47790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA47790);
  }

  return result;
}

uint64_t sub_1B79DC5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B798A858(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t View._shelfGridPrefersEagerLayout(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

unint64_t sub_1B79DC6AC()
{
  result = qword_1EBA45FF0;
  if (!qword_1EBA45FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FF0);
  }

  return result;
}

uint64_t sub_1B79DC72C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B79A619C;

  return v6(a1);
}

uint64_t FlowActionImplementation.init(following:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v10[1] = *a1;
  v10[2] = v6;
  v10[3] = v7;
  type metadata accessor for FlowAuthority(255, a2, a3, a4);
  v8 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v10, v8);

  *a5 = v10[0];
  return result;
}

uint64_t sub_1B79DC8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[17] = AssociatedTypeWitness;
  v7[18] = *(AssociatedTypeWitness - 8);
  v7[19] = swift_task_alloc();
  v9 = sub_1B7A96C20();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = type metadata accessor for FlowAlertAuthority.Presented(0);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v10 = sub_1B7A9A280();
  v7[28] = v10;
  v7[29] = *(v10 - 8);
  v7[30] = swift_task_alloc();
  sub_1B7A9A760();
  v7[31] = sub_1B7A9A750();
  v12 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79DCAE4, v12, v11);
}

uint64_t sub_1B79DCAE4()
{

  v1 = sub_1B7A99330();
  v3 = v2;
  if (sub_1B7A99AC0() == v1 && v4 == v3)
  {

LABEL_8:
    v7 = *(v0 + 88);
    v8 = *(v0 + 80);
    v64 = *(v0 + 120);
    v67 = *(v0 + 104);

    *(v0 + 48) = v67;
    *(v0 + 64) = v64;
    v9 = type metadata accessor for FlowActionImplementation(0, v0 + 48);
    v10 = v7;
    v11 = 1;
LABEL_9:
    sub_1B79DD644(v10, v11, v9);
LABEL_10:
    v12 = *MEMORY[0x1E69AB010];
    v13 = sub_1B7A98FA0();
    v14 = *(*(v13 - 8) + 104);
    v15 = v8;
    v16 = v12;
LABEL_11:
    v14(v15, v16, v13);
    goto LABEL_12;
  }

  v6 = sub_1B7A9AE80();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1B7A99AB0() == v1 && v19 == v3)
  {

LABEL_19:
    v21 = *(v0 + 88);
    v8 = *(v0 + 80);
    v65 = *(v0 + 120);
    v68 = *(v0 + 104);

    *(v0 + 16) = v68;
    *(v0 + 32) = v65;
    v9 = type metadata accessor for FlowActionImplementation(0, v0 + 16);
    v10 = v21;
    v11 = 0;
    goto LABEL_9;
  }

  v20 = sub_1B7A9AE80();

  if (v20)
  {
    goto LABEL_19;
  }

  if (sub_1B7A99A70() == v1 && v22 == v3)
  {

LABEL_24:
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    v26 = *(v0 + 224);

    sub_1B7A9A1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D270;
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A99E60();

    (*(v25 + 8))(v24, v26);
LABEL_25:
    v27 = *(v0 + 208);
    v28 = *(v0 + 216);
    v29 = type metadata accessor for FlowAuthority(0, *(v0 + 104), *(v0 + 120), *(v0 + 128));
    sub_1B7A2A358(v29);
    sub_1B7A88EE8();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B7A96F20();

    sub_1B79DE0EC(v28, v27);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B79DE150(*(v0 + 208));
      sub_1B7A2A358(v29);
      sub_1B7A88EE8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1B7A96F20();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *(v0 + 240);
        v63 = *(v0 + 224);
        v31 = *(v0 + 200);
        v32 = *(v0 + 176);
        v69 = *(v0 + 184);
        v34 = *(v0 + 160);
        v33 = *(v0 + 168);
        v66 = *(v0 + 232);
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47818, &unk_1B7AA0D00) + 48);
        v36 = *(v33 + 32);
        v36(v32, v31, v34);
        v37 = sub_1B7A99F80();
        (*(*(v37 - 8) + 8))(v31 + v35, v37);
        v36(v69, v32, v34);
        sub_1B7A9A1D0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
        sub_1B7A98D10();
        *(swift_allocObject() + 16) = xmmword_1B7A9D270;
        sub_1B7A98C40();
        sub_1B7A98C40();
        sub_1B7A99E60();

        (*(v66 + 8))(v30, v63);
        sub_1B7A2A358(v29);
        sub_1B7A88EE8();

        sub_1B79EA4E4(v69);

        (*(v33 + 8))(v69, v34);
      }

      else
      {
        sub_1B79DE150(*(v0 + 200));
      }
    }

    else
    {
      v39 = *(v0 + 232);
      v38 = *(v0 + 240);
      v40 = *(v0 + 224);
      v41 = *(v0 + 208);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820, &qword_1B7AA0238);
      sub_1B7957888(v41 + *(v42 + 48), &qword_1EBA47828, &qword_1B7AA0240);
      v43 = sub_1B7A99F50();
      (*(*(v43 - 8) + 8))(v41, v43);
      sub_1B7A9A1D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
      sub_1B7A98D10();
      *(swift_allocObject() + 16) = xmmword_1B7A9D270;
      sub_1B7A98C40();
      sub_1B7A98C40();
      sub_1B7A99E60();

      (*(v39 + 8))(v38, v40);
      sub_1B7A2A358(v29);
      sub_1B7A88EE8();

      sub_1B79EA300();
    }

    v44 = *(v0 + 88);
    v8 = *(v0 + 80);
    sub_1B7A2A388(v29);
    sub_1B7A29434(v44);

    goto LABEL_10;
  }

  v23 = sub_1B7A9AE80();

  if (v23)
  {
    goto LABEL_24;
  }

  if (sub_1B7A99A80() == v1 && v45 == v3)
  {

LABEL_35:

    goto LABEL_25;
  }

  v46 = sub_1B7A9AE80();

  if (v46)
  {
    goto LABEL_35;
  }

  if (sub_1B7A99AD0() == v1 && v47 == v3)
  {

LABEL_40:
    v50 = *(v0 + 144);
    v49 = *(v0 + 152);
    v51 = *(v0 + 136);

    sub_1B7A9AC60();
    v52 = sub_1B7A8F1EC(v49);
    (*(v50 + 8))(v49, v51);
    goto LABEL_47;
  }

  v48 = sub_1B7A9AE80();

  if (v48)
  {
    goto LABEL_40;
  }

  if (sub_1B7A99A90() == v1 && v53 == v3)
  {

LABEL_45:
    v55 = *(v0 + 88);

    v56 = v55;
    v57 = 0;
LABEL_46:
    v52 = sub_1B7A8F3E4(v56, v57);
LABEL_47:
    v13 = sub_1B7A98FA0();
    v14 = *(*(v13 - 8) + 104);
    v15 = *(v0 + 80);
    if (v52)
    {
      v16 = *MEMORY[0x1E69AB010];
    }

    else
    {
      v16 = *MEMORY[0x1E69AB008];
    }

    goto LABEL_11;
  }

  v54 = sub_1B7A9AE80();

  if (v54)
  {
    goto LABEL_45;
  }

  if (sub_1B7A99AA0() == v1 && v58 == v3)
  {

LABEL_54:
    v56 = *(v0 + 88);
    v57 = 1;
    goto LABEL_46;
  }

  v59 = sub_1B7A9AE80();

  if (v59)
  {
    goto LABEL_54;
  }

  v60 = *(v0 + 80);
  v61 = *MEMORY[0x1E69AB008];
  v62 = sub_1B7A98FA0();
  (*(*(v62 - 8) + 104))(v60, v61, v62);
LABEL_12:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B79DD644(uint64_t a1, int a2, void *a3)
{
  HIDWORD(v19) = a2;
  v20 = a1;
  v5 = sub_1B7A97480();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v21 = *v3;
  v10 = a3[2];
  v11 = a3[4];
  v12 = a3[5];
  v13 = type metadata accessor for FlowAuthority(0, v10, v11, v12);
  v14 = sub_1B7A2A358(v13);
  v15 = qword_1EBA507D0;
  swift_beginAccess();
  (*(v6 + 16))(v8, v14 + v15, v5);

  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25[7] = v10;
  v25[8] = v11;
  v25[9] = v12;
  v25[10] = &v22;
  sub_1B7A97430();
  (*(v6 + 8))(v8, v5);
  if (!*(&v23 + 1))
  {
    sub_1B7957888(&v22, &qword_1EBA47830, &qword_1B7AA0248);
    v16 = v20;
    goto LABEL_5;
  }

  sub_1B795C1E4(&v22, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v16 = v20;
  v17 = sub_1B7A99DC0();
  result = __swift_destroy_boxed_opaque_existential_1(v25);
  if (v17)
  {
LABEL_5:
    v25[5] = v9;
    sub_1B7A2A358(v13);
    sub_1B7A89028(v16, BYTE4(v19) & 1);
  }

  return result;
}

uint64_t sub_1B79DD898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v5 = type metadata accessor for FlowStackAuthority.PathComponent(255, a3, a4, a5);
  v6 = sub_1B7A9AB60();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B7A9AB60();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  sub_1B7A97410();
  sub_1B79DE1B8(v16);
  sub_1B7A9A920();
  result = sub_1B7A9A960();
  if (*&v29[0] != v31)
  {
    v18 = MEMORY[0x1B8CA8640](result);
    v19 = __OFSUB__(v18, 1);
    result = v18 - 1;
    if (v19)
    {
      __break(1u);
      return result;
    }

    sub_1B7A97420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47840, &qword_1B7AA0250);
    v20 = swift_dynamicCast();
    v21 = *(*(v5 - 8) + 56);
    if (v20)
    {
      v22 = *(v5 - 8);
      v21(v8, 0, 1, v5);
      v23 = *(AssociatedTypeWitness - 8);
      (*(v23 + 16))(v15, &v8[*(v5 + 44)], AssociatedTypeWitness);
      (*(v22 + 8))(v8, v5);
      (*(v23 + 56))(v15, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      v21(v8, 1, 1, v5);
      (*(v26 + 8))(v8, v6);
      v23 = *(AssociatedTypeWitness - 8);
      (*(v23 + 56))(v15, 1, 1, AssociatedTypeWitness);
    }

    v24 = v27;
    (*(v27 + 32))(v12, v15, v10);
    if ((*(v23 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v24 + 8))(v12, v10);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47848, &qword_1B7AA0258);
      if (swift_dynamicCast())
      {
        return sub_1B79DE210(v29, v28);
      }
    }

    v30 = 0;
    memset(v29, 0, sizeof(v29));
    return sub_1B79DE210(v29, v28);
  }

  return result;
}

uint64_t sub_1B79DDCBC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = *v2;
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v12);
  v14 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = *(a2 + 24);
  *(v15 + 40) = *(a2 + 40);
  (*(v9 + 32))(v15 + v14, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1B7AA01C8;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0, &unk_1B7AA01E0);

  v17 = sub_1B7A9A150();
  v18 = sub_1B7A9A7E0();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B7A9EDF0;
  v19[5] = v16;
  v19[6] = v17;

  sub_1B7A64074(0, 0, v7, &unk_1B7A9EE00, v19);

  return v17;
}

uint64_t sub_1B79DDF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B79DDFC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B798D338;

  return sub_1B79DC8BC(a1, v1 + v8, v9, v4, v5, v6, v7);
}

uint64_t sub_1B79DE0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAlertAuthority.Presented(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79DE150(uint64_t a1)
{
  v2 = type metadata accessor for FlowAlertAuthority.Presented(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B79DE1B8(double a1)
{
  result = qword_1EBA47838;
  if (!qword_1EBA47838)
  {
    sub_1B7A97410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47838);
  }

  return result;
}

uint64_t sub_1B79DE210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47830, &qword_1B7AA0248);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*_taskRetry(for:)(void *a1))()
{
  v12 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47850, &qword_1B7AA0268);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1B79DE494(v10);
LABEL_6:
    *(swift_allocObject() + 16) = a1;
    v8 = a1;
    return sub_1B79DE4FC;
  }

  sub_1B795C1E4(v10, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v3 = *(sub_1B7A96AA0() + 16);

  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B7A9A160();
  sub_1B7999E90(v13, v10);
  v6 = swift_allocObject();
  sub_1B795C1E4(v10, v6 + 16);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_1B79DE904;
}

uint64_t sub_1B79DE494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47858, &qword_1B7AA0270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79DE550(uint64_t a1)
{
  sub_1B7A9AC50();

  swift_getErrorValue();
  swift_getDynamicType();
  v1 = sub_1B7A9AFF0();
  MEMORY[0x1B8CAB750](v1);

  MEMORY[0x1B8CAB750](0xD00000000000001BLL, 0x80000001B7AC5C30);
  return 60;
}

BOOL sub_1B79DE5FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = *(sub_1B7A96AA0() + 16);

  return v1 == 1;
}

uint64_t sub_1B79DE654(void *a1)
{
  sub_1B7A9AC50();

  v17[0] = 0xD00000000000002DLL;
  v17[1] = 0x80000001B7AC5C00;
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = sub_1B7A9AE50();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    v9 = swift_allocError();
    (*(v4 + 32))(v10, v7, v2);
  }

  v11 = sub_1B7A96B00();

  v12 = AMSLogableError();
  v13 = sub_1B7A9A4B0();
  v15 = v14;

  MEMORY[0x1B8CAB750](v13, v15);

  MEMORY[0x1B8CAB750](62, 0xE100000000000000);
  return v17[0];
}

uint64_t sub_1B79DE83C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B7A96A90();
  if ((result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B7999E90(a1, v4);
    v3 = swift_allocObject();
    sub_1B795C1E4(v4, v3 + 16);
    sub_1B7A96A80();
  }

  return result;
}

uint64_t sub_1B79DE90C(void *a1)
{
  sub_1B7A9AC50();

  v17[0] = 0xD000000000000015;
  v17[1] = 0x80000001B7AC5BE0;
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = sub_1B7A9AE50();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    v9 = swift_allocError();
    (*(v4 + 32))(v10, v7, v2);
  }

  v11 = sub_1B7A96B00();

  v12 = AMSLogableError();
  v13 = sub_1B7A9A4B0();
  v15 = v14;

  MEMORY[0x1B8CAB750](v13, v15);

  MEMORY[0x1B8CAB750](96, 0xE100000000000000);
  return v17[0];
}

uint64_t getEnumTagSinglePayload for TaskUpdate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TaskUpdate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B79DEBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79CB218(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t View.mediaArtworkProtocol<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v27 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
  v12 = sub_1B7A97590();
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v26 = &v25 - v16;
  swift_getKeyPath();
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  v19 = v27;
  *(v18 + 4) = a4;
  *(v18 + 5) = v19;
  (*(v10 + 32))(&v18[v17], &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1B7A98320();

  v20 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
  v30 = a4;
  v31 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v26;
  sub_1B7957EE0(v14, v12, WitnessTable);
  v23 = *(v28 + 8);
  v23(v14, v12);
  sub_1B7957EE0(v22, v12, WitnessTable);
  return (v23)(v22, v12);
}

uint64_t View.mediaArtworkProtocol(scheme:host:path:query:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v102 = a8;
  v97 = a7;
  LODWORD(v94) = a6;
  v93 = a5;
  v92 = a4;
  v91 = a3;
  v90 = a2;
  v89 = a1;
  v96 = a9;
  v88 = a10;
  v87 = a11;
  v86 = a12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
  v82 = a16;
  v17 = sub_1B7A97590();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v80 - v21;
  v84 = sub_1B7A99080();
  v22 = *(v84 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v80 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  v101 = sub_1B7A97B40();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v80 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860, &qword_1B7AA0308);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v80 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v80 - v37;
  sub_1B7A99060();
  swift_storeEnumTagMultiPayload();
  sub_1B79DF994(v32, v35);
  v102 = a17;
  sub_1B79DF994(v35, v38);
  sub_1B79DFA04(v38, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v97 = v38;
  if (EnumCaseMultiPayload == 1)
  {
    v40 = *v29;
    v111 = 0;
    v112 = 0xE000000000000000;
    sub_1B7A9AC50();
    MEMORY[0x1B8CAB750](0xD00000000000002FLL, 0x80000001B7AC5C50);
    swift_getErrorValue();
    v41 = sub_1B7A9AE60();
    v42 = v111;
    v43 = v112;
    sub_1B7999DD8(v41, v44, v45);

    v46 = sub_1B7A98080();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v42;
    *(v53 + 24) = v43;
    v111 = v46;
    v112 = v48;
    LOBYTE(v43) = v50 & 1;
    v113 = v50 & 1;
    v114 = v52;
    v115 = sub_1B797D598;
    v116 = v53;
    sub_1B7999FBC(v46, v48, v50 & 1);

    sub_1B7999FBC(v46, v48, v50 & 1);
    v54 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
    v109 = v102;
    v110 = v54;

    WitnessTable = swift_getWitnessTable();
    v56 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v57 = v99;
    sub_1B7959A28(&v111, v17, v98, WitnessTable, v56);

    sub_1B795A450(v46, v48, v43);

    sub_1B795A450(v46, v48, v43);

    sub_1B795A450(v111, v112, v113);
  }

  else
  {
    v92 = a14;
    v93 = v18;
    v94 = v17;
    v58 = *(v22 + 32);
    v59 = v95;
    v60 = v84;
    v58(v95, v29, v84);
    swift_getKeyPath();
    v61 = v81;
    (*(v22 + 16))(v81, v59, v60);
    v62 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v92;
    *(v63 + 24) = a15;
    v64 = v63 + v62;
    v65 = v60;
    v58(v64, v61, v60);
    v66 = v94;

    v67 = v85;
    v68 = v102;
    sub_1B7A98320();

    v69 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
    v103 = v68;
    v104 = v69;
    v70 = swift_getWitnessTable();
    v71 = v83;
    sub_1B7957EE0(v67, v66, v70);
    v72 = *(v93 + 8);
    v72(v67, v66);
    sub_1B7957EE0(v71, v66, v70);
    v73 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v57 = v99;
    sub_1B79B5878(v67, v66, v98, v70, v73);
    v72(v67, v66);
    v72(v71, v66);
    (*(v22 + 8))(v95, v65);
  }

  sub_1B79E0A60(v97);
  v74 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
  v107 = v102;
  v108 = v74;
  v75 = swift_getWitnessTable();
  v76 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  v105 = v75;
  v106 = v76;
  v77 = v101;
  v78 = swift_getWitnessTable();
  sub_1B7957EE0(v57, v77, v78);
  return (*(v100 + 8))(v57, v77);
}

uint64_t sub_1B79DF994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860, &qword_1B7AA0308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79DFA04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860, &qword_1B7AA0308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79DFA74(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s22_OneShotActionProtocolVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(v8 + 20);
  v15 = sub_1B7A99080();
  (*(*(v15 - 8) + 16))(&v13[v14], a4, v15);
  *v13 = a2;
  *(v13 + 1) = a3;
  sub_1B79E0BD8(v13, v10);
  v16 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1B7987A98(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7987A98((v17 > 1), v18 + 1, 1, v16);
  }

  sub_1B79E0C3C(v13);
  v23 = v8;
  v24 = sub_1B79E0C98();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v22);
  sub_1B79E0BD8(v10, boxed_opaque_existential_1Tm);
  v16[2] = v18 + 1;
  sub_1B795C1E4(&v22, &v16[5 * v18 + 4]);
  sub_1B79E0C3C(v10);

  *a1 = v16;
  return result;
}

uint64_t View.mediaArtworkProtocol<A>(scheme:host:path:query:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v109 = a8;
  v103 = a7;
  LODWORD(v101) = a6;
  v100 = a5;
  KeyPath = a4;
  v98 = a3;
  v97 = a2;
  v96 = a1;
  v102 = a9;
  v95 = a10;
  v94 = a11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
  v88 = a16;
  v19 = sub_1B7A97590();
  v92 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v85 - v22;
  v89 = sub_1B7A99080();
  v93 = *(v89 - 8);
  v23 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  v108 = v19;
  v104 = v27;
  v107 = sub_1B7A97B40();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v85 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860, &qword_1B7AA0308);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v85 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v85 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v85 - v39;
  sub_1B7A99060();
  swift_storeEnumTagMultiPayload();
  sub_1B79DF994(v34, v37);
  v109 = a18;
  sub_1B79DF994(v37, v40);
  sub_1B79DFA04(v40, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v103 = v40;
  if (EnumCaseMultiPayload == 1)
  {
    v42 = *v31;
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_1B7A9AC50();
    MEMORY[0x1B8CAB750](0xD00000000000002FLL, 0x80000001B7AC5C50);
    swift_getErrorValue();
    v43 = sub_1B7A9AE60();
    v44 = v118;
    v45 = v119;
    sub_1B7999DD8(v43, v46, v47);

    v48 = sub_1B7A98080();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = swift_allocObject();
    *(v55 + 16) = v44;
    *(v55 + 24) = v45;
    v118 = v48;
    v119 = v50;
    LOBYTE(v45) = v52 & 1;
    v120 = v52 & 1;
    v121 = v54;
    v122 = sub_1B799A220;
    v123 = v55;
    sub_1B7999FBC(v48, v50, v52 & 1);

    sub_1B7999FBC(v48, v50, v52 & 1);
    v56 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
    v116 = v109;
    v117 = v56;

    v57 = v108;
    WitnessTable = swift_getWitnessTable();
    v59 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v60 = v105;
    sub_1B7959A28(&v118, v57, v104, WitnessTable, v59);

    sub_1B795A450(v48, v50, v45);

    sub_1B795A450(v48, v50, v45);

    sub_1B795A450(v118, v119, v120);
  }

  else
  {
    v101 = a19;
    v100 = a14;
    v61 = v93;
    v62 = *(v93 + 32);
    v86 = v26;
    v63 = v31;
    v64 = v89;
    v62(v26, v63, v89);
    KeyPath = swift_getKeyPath();
    v65 = v87;
    (*(v61 + 16))(v87, v26, v64);
    v66 = (*(v61 + 80) + 64) & ~*(v61 + 80);
    v67 = swift_allocObject();
    v67[2] = v88;
    v67[3] = a17;
    v68 = v109;
    v69 = v101;
    v67[4] = v109;
    v67[5] = v69;
    v67[6] = v100;
    v67[7] = a15;
    v70 = v67 + v66;
    v71 = v64;
    v62(v70, v65, v64);

    v72 = v91;
    sub_1B7A98320();

    v73 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
    v110 = v68;
    v111 = v73;
    v74 = v108;
    v75 = swift_getWitnessTable();
    v76 = v90;
    sub_1B7957EE0(v72, v74, v75);
    v77 = *(v92 + 8);
    v77(v72, v74);
    sub_1B7957EE0(v76, v74, v75);
    v78 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v60 = v105;
    sub_1B79B5878(v72, v74, v104, v75, v78);
    v77(v72, v74);
    v77(v76, v74);
    (*(v93 + 8))(v86, v71);
  }

  sub_1B79E0A60(v103);
  v79 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
  v114 = v109;
  v115 = v79;
  v80 = swift_getWitnessTable();
  v81 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  v112 = v80;
  v113 = v81;
  v82 = v107;
  v83 = swift_getWitnessTable();
  sub_1B7957EE0(v60, v82, v83);
  return (*(v106 + 8))(v60, v82);
}

uint64_t sub_1B79E06E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a2;
  v25 = a3;
  v26 = a1;
  v10 = sub_1B7A99080();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a8;
  v15 = _s23_SequenceActionProtocolVMa(0, a6, a8, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v11 + 16))(v13, v22, v10);
  sub_1B7A035B0(v23, v25, v13, a6, v24, v18);

  WitnessTable = swift_getWitnessTable();
  sub_1B7A8C434(v18, v15, WitnessTable);
  (*(v16 + 8))(v18, v15);
}

unint64_t sub_1B79E0920@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46400, &qword_1B7A9D0B8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7A9D270;
  *(v2 + 56) = &type metadata for MediaArtwork.BundleImageProtocol;
  *(v2 + 64) = sub_1B79CB1C4(v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480, &unk_1B7A9D190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7A9D170;
  v6 = [objc_opt_self() mainBundle];
  *(v5 + 32) = v6;
  *(v2 + 32) = v5;
  *(v2 + 96) = &type metadata for MediaArtwork.SystemImageProtocol;
  result = sub_1B79E0D54(v6, v7, v8);
  *(v2 + 104) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1B79E09FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B79E0D00(a1, a2, a3);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B79E0A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860, &qword_1B7AA0308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79E0AC8(void **a1)
{
  v3 = *(sub_1B7A99080() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1B79DFA74(a1, v4, v5, v6);
}

uint64_t sub_1B79E0B3C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_1B7A99080() - 8);
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1B79E06E8(a1, v8, v9, v10, v3, v4, v5, v6);
}

uint64_t sub_1B79E0BD8(uint64_t a1, uint64_t a2)
{
  v4 = _s22_OneShotActionProtocolVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E0C3C(uint64_t a1)
{
  v2 = _s22_OneShotActionProtocolVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B79E0C98()
{
  result = qword_1EBA47868;
  if (!qword_1EBA47868)
  {
    _s22_OneShotActionProtocolVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47868);
  }

  return result;
}

unint64_t sub_1B79E0D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47870;
  if (!qword_1EBA47870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47870);
  }

  return result;
}

unint64_t sub_1B79E0D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47878;
  if (!qword_1EBA47878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47878);
  }

  return result;
}

uint64_t sub_1B79E0DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7958BE0(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t IntentView<>.pageRenderMetrics(onTopic:pipeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v26 = a3;
  v27 = a2;
  v28 = a1;
  v29 = a6;
  v25 = sub_1B7A99360();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a4 + 16);
  v11 = *(a4 + 48);
  v12 = type metadata accessor for PageRenderMetricsViewModifier(0, v23, v11, a5);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  sub_1B79D6208(a4);
  v16 = sub_1B7A98DA0();
  v18 = v17;
  (*(v8 + 16))(v10, v26, v25);
  v19 = v27;

  sub_1B79E0FFC(v16, v18, v28, v19, v10, v23, v11, v24, v15);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v15, a4, v12, WitnessTable);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1B79E0FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 24) = swift_getKeyPath();
  *(a9 + 32) = 0;
  v17 = type metadata accessor for PageRenderMetricsViewModifier(0, a6, a7, a8);
  v18 = v17[12];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F00, &qword_1B7A9D510);
  swift_storeEnumTagMultiPayload();
  v19 = a9 + v17[13];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v20 = v17[14];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v21 = a9 + v17[15];
  *v21 = sub_1B79E1808(0, 1);
  *(v21 + 8) = v22 & 1;
  *(v21 + 16) = v23;
  v24 = sub_1B7A99360();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = a1;
  *(v27 + 3) = a2;
  *(v27 + 4) = a3;
  *(v27 + 5) = a4;
  result = (*(v25 + 32))(&v27[v26], a5, v24);
  *a9 = sub_1B79E33D8;
  *(a9 + 8) = v27;
  *(a9 + 16) = 0;
  return result;
}

uint64_t ModifiedContent<>.pageRenderMetrics(onTopic:pipeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a7;
  v36 = a1;
  v37 = a5;
  v34 = a3;
  v35 = a2;
  v38 = a8;
  v33 = sub_1B7A99360();
  v11 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 24);
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for PageRenderMetricsViewModifier(0, AssociatedTypeWitness, AssociatedConformanceWitness, a7);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  (*(a6 + 32))(v14, a6, v18);
  v21 = sub_1B7A98DA0();
  v23 = v22;
  (*(v11 + 16))(v13, v34, v33);
  v24 = v35;

  sub_1B79E0FFC(v21, v23, v36, v24, v13, AssociatedTypeWitness, AssociatedConformanceWitness, v32, v20);
  v25 = *(a6 + 8);
  v39 = v37;
  v40 = v25;
  v26 = v30;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v20, v26, v16, WitnessTable);
  return (*(v17 + 8))(v20, v16);
}

void sub_1B79E1488(uint64_t a1)
{
  sub_1B79E1644(319);
  if (v1 <= 0x3F)
  {
    sub_1B79E1758(319, &qword_1EBA47278, qword_1EBA47280, qword_1B7A9FE40, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1B79E1758(319, &qword_1EDC0FD70, &qword_1EBA45F08, &qword_1B7A9C680, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1B79E1758(319, &qword_1EDC10140, &qword_1EBA45D08, &unk_1B7A9C310, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1B79E1700(319);
          if (v5 <= 0x3F)
          {
            sub_1B79E1758(319, &qword_1EDC0FCA8, &qword_1EBA46548, &qword_1B7A9D540, MEMORY[0x1E6981790]);
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

void sub_1B79E1644(uint64_t a1)
{
  if (!qword_1EBA47900)
  {
    sub_1B7A99D50();
    sub_1B79E16A8();
    v1 = sub_1B7A97140();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA47900);
    }
  }
}

unint64_t sub_1B79E16A8()
{
  result = qword_1EBA47908;
  if (!qword_1EBA47908)
  {
    sub_1B7A99D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47908);
  }

  return result;
}

void sub_1B79E1700(uint64_t a1)
{
  if (!qword_1EDC10148)
  {
    sub_1B7A99900();
    v1 = sub_1B7A970E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC10148);
    }
  }
}

void sub_1B79E1758(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1B79E1808(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46548, &qword_1B7A9D540);
  sub_1B7A986C0();
  return v3;
}

uint64_t sub_1B79E1860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B7A99360();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
  sub_1B7A99D50();
  swift_allocObject();

  return sub_1B7A99D40();
}

uint64_t sub_1B79E1978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v99 = a3;
  v100 = a1;
  v97 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v95 = v6;
  v96 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1B7A98C30();
  v7 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A99C60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v71 - v13;
  v72 = sub_1B7A97880();
  v14 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v17 = sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910, &qword_1B7AA03F0);
  v78 = v17;
  v18 = sub_1B7A97590();
  v80 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v71 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47918, &qword_1B7AA03F8);
  v81 = v18;
  v20 = sub_1B7A97590();
  v84 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v71 - v21;
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v98 = a2;
  v89 = v22;
  v88 = v23;
  type metadata accessor for _IntentProgress(255, v22, v23, v24);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v25 = sub_1B7A97DF0();
  v85 = v20;
  v83 = v25;
  v26 = sub_1B7A97590();
  v91 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v71 - v27;
  v92 = v28;
  v29 = sub_1B7A97590();
  v93 = *(v29 - 8);
  v94 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v87 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v90 = &v71 - v32;
  swift_getKeyPath();
  v33 = *(v4 + 24);
  if (*(v4 + 32) != 1)
  {

    sub_1B7A9AA10();
    v37 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v33);
    (*(v14 + 8))(v16, v72);
    if (v109)
    {
      goto LABEL_3;
    }

LABEL_5:
    v36 = 0;
    goto LABEL_6;
  }

  v109 = *(v4 + 24);

  if (!v33)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B7A99D50();
  sub_1B79E16A8();
  sub_1B7A97120();
  v34 = v74;
  sub_1B7A99D20();

  (*(v10 + 104))(v34, *MEMORY[0x1E69AB400], v9);
  (*(v10 + 16))(v73, v34, v9);
  v35 = v75;
  sub_1B7A98C00();
  v36 = sub_1B7A992C0();

  (*(v7 + 8))(v35, v76);
  (*(v10 + 8))(v34, v9);
LABEL_6:
  v109 = v36;
  WitnessTable = swift_getWitnessTable();
  v39 = v79;
  sub_1B7A98150();

  swift_getKeyPath();
  v40 = *(v4 + 8);
  v78 = *v4;
  v76 = v40;
  v77 = v4;
  sub_1B7A99D50();
  sub_1B79E16A8();
  v109 = sub_1B7A97120();
  v41 = sub_1B79E3274(&qword_1EBA47920, &qword_1EBA47910, &qword_1B7AA03F0);
  v107 = WitnessTable;
  v108 = v41;
  v100 = MEMORY[0x1E697E858];
  v42 = v81;
  v43 = swift_getWitnessTable();
  v44 = v82;
  sub_1B7A98150();

  (*(v80 + 8))(v39, v42);
  v45 = sub_1B7A97120();
  v46 = swift_allocObject();
  v47 = v89;
  v48 = v88;
  v46[2] = v89;
  v46[3] = v48;
  v49 = v98;
  v81 = *(v98 + 32);
  v46[4] = v81;
  v46[5] = v45;
  v50 = sub_1B79E3274(qword_1EBA47928, &qword_1EBA47918, &qword_1B7AA03F8);
  v105 = v43;
  v106 = v50;

  v51 = v85;
  v52 = swift_getWitnessTable();
  v53 = v86;
  sub_1B79E3830(v47, &unk_1B7AA0458, v46, v51, v47, v52, v48);

  (*(v84 + 8))(v44, v51);
  v55 = v96;
  v54 = v97;
  (*(v97 + 16))(v96, v77, v49);
  v56 = (*(v54 + 80) + 40) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 2) = v47;
  *(v57 + 3) = v48;
  *(v57 + 4) = v81;
  (*(v54 + 32))(&v57[v56], v55, v49);
  v58 = swift_getWitnessTable();
  v103 = v52;
  v104 = v58;
  v59 = v92;
  v60 = swift_getWitnessTable();
  v61 = v87;
  View.onViewAppearanceChange(perform:)(sub_1B79E32C8, v57, v59, v60);

  v62 = (*(v91 + 8))(v53, v59);
  v65 = sub_1B797D3EC(v62, v63, v64);
  v101 = v60;
  v102 = v65;
  v66 = v94;
  v67 = swift_getWitnessTable();
  v68 = v90;
  sub_1B7957EE0(v61, v66, v67);
  v69 = *(v93 + 8);
  v69(v61, v66);
  sub_1B7957EE0(v68, v66, v67);
  return (v69)(v68, v66);
}