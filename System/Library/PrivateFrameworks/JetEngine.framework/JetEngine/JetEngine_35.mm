uint64_t sub_1AB2E00C4()
{
  v1 = v0[69];
  sub_1AB4622E4();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v0[43] = MEMORY[0x1E69E6158];
  v0[40] = 0xD00000000000004BLL;
  v0[41] = 0x80000001AB502060;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1AB0169C4((v0 + 40), v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AB2E0228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1AB4617E4();
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2E02F4, a4, 0);
}

uint64_t sub_1AB2E02F4()
{
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 520) = qword_1EB433A40;
  sub_1AB4622E4();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
  *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB502030;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 536) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1AB0169C4(v0 + 288, v0 + 176);
  *(v0 + 208) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v10[64] = *(v0 + 208);
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60, &qword_1AB4D4730);
  v13._countAndFlagsBits = 0x73646E6F63657320;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v14 = sub_1AB462284();
  v16 = v15;
  sub_1AB461FF4();
  v17 = swift_task_alloc();
  *(v0 + 544) = v17;
  *v17 = v0;
  v17[1] = sub_1AB2E05E8;

  return sub_1AB23D90C(v14, v16, 0, 0, 1);
}

uint64_t sub_1AB2E05E8()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 504);
  v5 = *(*v1 + 496);
  *(*v1 + 552) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1AB2E34E8;
  }

  else
  {
    v7 = sub_1AB2E0770;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1AB2E0770()
{
  v1 = *(v0 + 536);
  sub_1AB4622E4();
  v2 = *(v0 + 120);
  v26 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v27 = sub_1AB0168A8(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001AB5020B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1AB014A58(v0 + 352, v0 + 384, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB0169C4(v0 + 384, v0 + 216);
  *(v0 + 248) = 0;
  v5 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 464);
  *(v5 + 2) = v7 + 1;
  v9 = &v5[40 * v7];
  v10 = *(v0 + 216);
  v11 = *(v0 + 232);
  v9[64] = *(v0 + 248);
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  sub_1AB014AC0(v0 + 352, &unk_1EB437E60, &qword_1AB4D4730);
  v12._object = 0x80000001AB5020E0;
  v12._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v5;
  Logger.error(_:)(v3, v2, v26);

  v13 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  if (v8(v13))
  {
    v14 = *(v0 + 536);
    v15 = *(v0 + 480);
    sub_1AB4622E4();
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AB4D4720;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001AB502110;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1AB0169C4(v0 + 416, v19 + 32);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    v20 = v15[3];
    v21 = v15[4];
    __swift_project_boxed_opaque_existential_1Tm(v15, v20);
    (*(v21 + 16))(0xD000000000000024, 0x80000001AB502140, v20, v21);
    type metadata accessor for DaemonError(0);
    sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v22 = swift_allocError();
    *v23 = v14;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6F0, &qword_1AB4E83D8);
    sub_1AB460B04();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1AB2E0B94(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v35 = *a1;
  v33 = *(a1 + 16);
  v34 = *(a1 + 8);
  v31 = *(a1 + 32);
  v32 = *(a1 + 24);
  v30 = *(a1 + 40);
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v5 = v38;
  v6 = v39;
  __swift_project_boxed_opaque_existential_1Tm(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D4720;
  *(&v43 + 1) = MEMORY[0x1E69E6158];
  *&v42 = 0xD00000000000002DLL;
  *(&v42 + 1) = 0x80000001AB501F80;
  *(v8 + 48) = 0u;
  *(v8 + 32) = 0u;
  sub_1AB0169C4(&v42, v8 + 32);
  *(v8 + 64) = 0;
  *(v7 + 32) = v8;
  Logger.debug(_:)(v7, v5, v6);

  v9 = __swift_destroy_boxed_opaque_existential_1Tm(v37);
  if ((a2(v9) & 1) == 0)
  {
    sub_1AB4622E4();
    v25 = v38;
    v26 = v39;
    __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1AB4D4720;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1AB4D4720;
    *(&v43 + 1) = MEMORY[0x1E69E6158];
    *&v42 = 0xD000000000000044;
    *(&v42 + 1) = 0x80000001AB501FB0;
    *(v28 + 48) = 0u;
    *(v28 + 32) = 0u;
    sub_1AB0169C4(&v42, v28 + 32);
    *(v28 + 64) = 0;
    *(v27 + 32) = v28;
    Logger.debug(_:)(v27, v25, v26);
LABEL_11:

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  sub_1AB460CA4();
  if (*(a1 + 41))
  {
    v37[0] = v35;
    v10 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6D8, &unk_1AB4E8398);
    sub_1AB460B04();
    sub_1AB4622E4();
    v11 = v38;
    v12 = v39;
    __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    v48 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001AB502000;
    v14._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    swift_getErrorValue();
    v15 = v45;
    v16 = v46;
    v47[3] = v46;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v15, v16);
    sub_1AB014A58(v47, v41, &unk_1EB437E60, &qword_1AB4D4730);
    v42 = 0u;
    v43 = 0u;
    sub_1AB0169C4(v41, &v42);
    v44 = 0;
    v18 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
      v48 = v18;
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[40 * v20];
    v22 = v42;
    v23 = v43;
    v21[64] = v44;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v48 = v18;
    sub_1AB014AC0(v47, &unk_1EB437E60, &qword_1AB4D4730);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v13 + 32) = v48;
    Logger.error(_:)(v13, v11, v12);
    goto LABEL_11;
  }

  v37[0] = v35;
  v37[1] = v34;
  v37[2] = v33;
  v38 = v32;
  v39 = v31;
  v40 = v30 & 1;
  sub_1AB2E3024(v35, v34, v33, v32, v31, v30 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6D8, &unk_1AB4E8398);
  return sub_1AB460B14();
}

uint64_t sub_1AB2E1088(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v39[1] = a4;
  v44 = a3;
  v45 = a2;
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6E8, &qword_1AB4E83D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39[0] = v39 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43A6F8, &qword_1AB4E83F0);
  MEMORY[0x1EEE9AC00](v41);
  v40 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v39 - v9);
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v11 = v56;
  v12 = v57;
  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v13 = swift_allocObject();
  v46 = xmmword_1AB4D4720;
  *(v13 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v14 = swift_allocObject();
  *(v14 + 16) = v46;
  *(&v49 + 1) = MEMORY[0x1E69E6158];
  *&v48 = 0xD00000000000002DLL;
  *(&v48 + 1) = 0x80000001AB501F80;
  *(v14 + 48) = 0u;
  *(v14 + 32) = 0u;
  sub_1AB0169C4(&v48, v14 + 32);
  *(v14 + 64) = 0;
  *(v13 + 32) = v14;
  Logger.debug(_:)(v13, v11, v12);

  v15 = __swift_destroy_boxed_opaque_existential_1Tm(v55);
  if ((v45(v15) & 1) == 0)
  {
    sub_1AB4622E4();
    v17 = v56;
    v18 = v57;
    __swift_project_boxed_opaque_existential_1Tm(v55, v56);
    v19 = swift_allocObject();
    *(v19 + 16) = v46;
    v20 = swift_allocObject();
    *(v20 + 16) = v46;
    *(&v49 + 1) = MEMORY[0x1E69E6158];
    *&v48 = 0xD000000000000044;
    *(&v48 + 1) = 0x80000001AB501FB0;
    *(v20 + 48) = 0u;
    *(v20 + 32) = 0u;
    sub_1AB0169C4(&v48, v20 + 32);
    *(v20 + 64) = 0;
    *(v19 + 32) = v20;
    Logger.debug(_:)(v19, v17, v18);
LABEL_14:

    return __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  sub_1AB460CA4();
  v16 = v43;
  sub_1AB014A58(v43, v10, qword_1EB43A6F8, &qword_1AB4E83F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55[0] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6F0, &qword_1AB4E83D8);
    sub_1AB460B04();
  }

  else
  {
    sub_1AB2E30D4(v10, v39[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6F0, &qword_1AB4E83D8);
    sub_1AB460B14();
  }

  v21 = v16;
  v22 = v40;
  sub_1AB014A58(v21, v40, qword_1EB43A6F8, &qword_1AB4E83F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    sub_1AB4622E4();
    v24 = v56;
    v25 = v57;
    __swift_project_boxed_opaque_existential_1Tm(v55, v56);
    v26 = swift_allocObject();
    *(v26 + 16) = v46;
    v54 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v27._object = 0x80000001AB502000;
    v27._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    swift_getErrorValue();
    v28 = v51;
    v29 = v52;
    v53[3] = v52;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v53);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_0, v28, v29);
    sub_1AB014A58(v53, v47, &unk_1EB437E60, &qword_1AB4D4730);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v47, &v48);
    v50 = 0;
    v31 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
      v54 = v31;
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[40 * v33];
    v35 = v48;
    v36 = v49;
    v34[64] = v50;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    v54 = v31;
    sub_1AB014AC0(v53, &unk_1EB437E60, &qword_1AB4D4730);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v26 + 32) = v54;
    Logger.error(_:)(v26, v24, v25);

    goto LABEL_14;
  }

  return sub_1AB014AC0(v22, qword_1EB43A6F8, &qword_1AB4E83F0);
}

uint64_t sub_1AB2E16F8()
{
  v0 = sub_1AB45FFC4();
  __swift_allocate_value_buffer(v0, qword_1EB434338);
  __swift_project_value_buffer(v0, qword_1EB434338);
  return sub_1AB45FFB4();
}

uint64_t sub_1AB2E177C(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  type metadata accessor for DaemonGetAssetResponse(0);
  v2[32] = swift_task_alloc();
  type metadata accessor for DaemonGetAssetRequest(0);
  v2[33] = swift_task_alloc();
  v2[34] = sub_1AB4610E4();
  v2[35] = swift_task_alloc();
  sub_1AB4601F4();
  v2[36] = swift_task_alloc();
  v3 = sub_1AB461114();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = sub_1AB45FFC4();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2E194C, 0, 0);
}

uint64_t sub_1AB2E194C()
{
  if (qword_1EB434330 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v30 = *(v0 + 296);
  v31 = *(v0 + 248);
  v32 = *(v0 + 264);
  v6 = __swift_project_value_buffer(v3, qword_1EB434338);
  v7 = *(v2 + 16);
  v7(v1, v6, v3);
  type metadata accessor for DaemonSessionImplementation(0);
  v8 = swift_allocObject();
  *(v0 + 344) = v8;
  swift_defaultActor_initialize();
  v9 = v8 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v8[16] = 0xD00000000000001BLL;
  v8[17] = 0x80000001AB5086B0;
  v7(v8 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter, v1, v3);
  v8[14] = 0x100000;
  v8[15] = 0x4046800000000000;
  sub_1AB015664();
  (*(v5 + 104))(v4, *MEMORY[0x1E69E8098], v30);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *(v0 + 232) = MEMORY[0x1E69E7CC0];
  sub_1AB01CB20(&qword_1ED4D1F50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770, &unk_1AB4D89F0, MEMORY[0x1E69E6328]);
  sub_1AB4614E4();
  v10 = sub_1AB461154();
  (*(v2 + 8))(v1, v3);
  *(v8 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_workQueue) = v10;
  v11 = (v8 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory);
  *v11 = 0;
  v11[1] = 0;
  sub_1AB058EA0(v31, v32, type metadata accessor for URLJetPackAssetRequest);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 248);
  *(v0 + 352) = qword_1EB435770;
  sub_1AB4622E4();
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v14);
  *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AB4D4720;
  v33 = sub_1AB0168A8(0, 55, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0xD000000000000036;
  v16._object = 0x80000001AB508780;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v17 = sub_1AB45F764();
  *(v0 + 160) = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v12, v17);
  sub_1AB014A58(v0 + 136, v0 + 168, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1AB0169C4(v0 + 168, v0 + 96);
  *(v0 + 128) = 0;
  v19 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = *(v0 + 96);
  v24 = *(v0 + 112);
  v22[64] = *(v0 + 128);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1AB014AC0(v0 + 136, &unk_1EB437E60, &qword_1AB4D4730);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v15 + 32) = v19;
  Logger.info(_:)(v15, v14, v13);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v26 = swift_task_alloc();
  *(v0 + 368) = v26;
  *v26 = v0;
  v26[1] = sub_1AB2E1EAC;
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);

  return sub_1AB2DBCB4(v27, v28);
}

uint64_t sub_1AB2E1EAC()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1AB2E2324;
  }

  else
  {
    v2 = sub_1AB2E1FC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB2E1FC0()
{
  v1 = v0[32];
  v29 = v0[33];
  v27 = v0[30];
  sub_1AB4622E4();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 16) = xmmword_1AB4D4720;
  v0[28] = v6;
  v0[25] = 0xD00000000000002FLL;
  v0[26] = 0x80000001AB5087C0;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1AB0169C4((v0 + 25), v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.info(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v23 = *(v1 + 8);
  v24 = *v1;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 48);
  v26 = type metadata accessor for XPCJetAsset(0);
  v12 = (v1 + v26[7]);
  v13 = v12[1];
  v28 = *v12;
  v27[3] = &type metadata for JetPackSandboxExtensionFileStreamSource;
  v27[4] = &protocol witness table for JetPackSandboxExtensionFileStreamSource;
  v14 = swift_allocObject();
  *v27 = v14;
  *(v14 + 40) = &type metadata for JetPackAssetDaemonClient;
  *(v14 + 48) = &off_1F20096A0;
  *(v14 + 56) = v24;
  *(v14 + 64) = v23;
  *(v14 + 72) = v7;
  *(v14 + 80) = v8;
  *(v14 + 88) = v10;
  *(v14 + 96) = v9;
  *(v14 + 104) = v11;
  v25 = v13;
  swift_bridgeObjectRetain_n();

  sub_1AB18D714(v7, v8, v10, v9, v11);

  *(v14 + 112) = v28;
  *(v14 + 120) = v13;
  sub_1AB2E3068(v29, type metadata accessor for DaemonGetAssetRequest);
  v15 = v26[5];
  v16 = type metadata accessor for JetPackAsset(0);
  sub_1AB058EA0(v1 + v15, v27 + v16[5], type metadata accessor for JetPackAsset.Metadata);
  v17 = v1 + v26[6];
  LODWORD(v15) = *v17;
  LOBYTE(v13) = *(v1 + v26[8]);
  LOBYTE(v7) = *(v17 + 4);
  LOBYTE(v8) = *(v1 + v26[9]);
  LOBYTE(v10) = *(v1 + v26[10]);
  sub_1AB2E3068(v1, type metadata accessor for DaemonGetAssetResponse);
  v18 = v27 + v16[6];
  *v18 = v15;
  v18[4] = v7;
  v19 = (v27 + v16[7]);
  *v19 = v28;
  v19[1] = v25;
  *(v27 + v16[8]) = v13;
  *(v27 + v16[9]) = v8;
  *(v27 + v16[10]) = v10;
  v20 = (v27 + v16[11]);
  *v20 = 0;
  v20[1] = 0;

  v21 = v0[1];

  return v21();
}

uint64_t sub_1AB2E2324()
{
  v1 = *(v0 + 264);

  sub_1AB2E3068(v1, type metadata accessor for DaemonGetAssetRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB2E23F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  v4[38] = sub_1AB4610E4();
  v4[39] = swift_task_alloc();
  sub_1AB4601F4();
  v4[40] = swift_task_alloc();
  v5 = sub_1AB461114();
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();
  v6 = sub_1AB45FFC4();
  v4[44] = v6;
  v4[45] = *(v6 - 8);
  v4[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2E256C, 0, 0);
}

uint64_t sub_1AB2E256C()
{
  if (qword_1EB434330 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v40 = *(v0 + 328);
  v6 = __swift_project_value_buffer(v3, qword_1EB434338);
  v7 = *(v1 + 16);
  v7(v2, v6, v3);
  type metadata accessor for DaemonSessionImplementation(0);
  v8 = swift_allocObject();
  *(v0 + 376) = v8;
  swift_defaultActor_initialize();
  v9 = v8 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v8[16] = 0xD00000000000001BLL;
  v8[17] = 0x80000001AB5086B0;
  v7(v8 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter, v2, v3);
  v8[14] = 0x100000;
  v8[15] = 0x4046800000000000;
  sub_1AB015664();
  (*(v5 + 104))(v4, *MEMORY[0x1E69E8098], v40);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *(v0 + 264) = MEMORY[0x1E69E7CC0];
  sub_1AB01CB20(&qword_1ED4D1F50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770, &unk_1AB4D89F0, MEMORY[0x1E69E6328]);
  sub_1AB4614E4();
  v10 = sub_1AB461154();
  (*(v1 + 8))(v2, v3);
  *(v8 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_workQueue) = v10;
  v11 = (v8 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory);
  *v11 = 0;
  v11[1] = 0;
  v12 = qword_1EB435780;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  sub_1AB4622E4();
  v15 = *(v0 + 40);
  v41 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AB4D4720;
  v42 = sub_1AB0168A8(0, 67, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0xD000000000000034;
  v17._object = 0x80000001AB508700;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = MEMORY[0x1E69E6158];
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v14;
  *(v0 + 144) = v13;
  sub_1AB014A58(v0 + 136, v0 + 168, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1AB0169C4(v0 + 168, v0 + 56);
  *(v0 + 88) = 0;
  v19 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = *(v0 + 288);
  v23 = *(v0 + 296);
  *(v19 + 2) = v21 + 1;
  v24 = &v19[40 * v21];
  v25 = *(v0 + 56);
  v26 = *(v0 + 72);
  v24[64] = *(v0 + 88);
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  sub_1AB014AC0(v0 + 136, &unk_1EB437E60, &qword_1AB4D4730);
  v27._countAndFlagsBits = 0x4E656C6966202C20;
  v27._object = 0xED0000203A656D61;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v0 + 224) = v18;
  *(v0 + 200) = v22;
  *(v0 + 208) = v23;
  sub_1AB014A58(v0 + 200, v0 + 232, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1AB0169C4(v0 + 232, v0 + 96);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v29 = *(v19 + 2);
  v28 = *(v19 + 3);
  if (v29 >= v28 >> 1)
  {
    v19 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v19);
  }

  *(v19 + 2) = v29 + 1;
  v30 = &v19[40 * v29];
  v31 = *(v0 + 96);
  v32 = *(v0 + 112);
  v30[64] = *(v0 + 128);
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  sub_1AB014AC0(v0 + 200, &unk_1EB437E60, &qword_1AB4D4730);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  *(v16 + 32) = v19;
  Logger.info(_:)(v16, v15, v41);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v34 = swift_task_alloc();
  *(v0 + 384) = v34;
  *v34 = v0;
  v34[1] = sub_1AB2E2BB0;
  v35 = *(v0 + 288);
  v36 = *(v0 + 296);
  v37 = *(v0 + 272);
  v38 = *(v0 + 280);

  return sub_1AB2D94B0(sub_1AB2D94B0, v37, v38, v35, v36);
}

uint64_t sub_1AB2E2BB0()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1AB2E2D6C;
  }

  else
  {

    v2 = sub_1AB2E2CD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB2E2CD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2E2D6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2E2E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1AB2E2E78(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6D8, &unk_1AB4E8398) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027460;

  return sub_1AB2DF758(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t sub_1AB2E2F94(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6D8, &unk_1AB4E8398);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = a1[1];
  v8 = *a1;
  v9[0] = v6;
  *(v9 + 10) = *(a1 + 26);
  return sub_1AB2E0B94(&v8, v3, v4, v5);
}

void sub_1AB2E3024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

uint64_t sub_1AB2E3068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB2E30D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6E8, &qword_1AB4E83D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB2E3144(uint64_t a1, uint64_t a2)
{
  AssetResponse = type metadata accessor for DaemonGetAssetResponse(0);
  (*(*(AssetResponse - 8) + 32))(a2, a1, AssetResponse);
  return a2;
}

uint64_t objectdestroy_15Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 96) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1AB2E3280(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6F0, &qword_1AB4E83D8) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB2E0228(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t objectdestroy_19Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1AB2E3464(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6F0, &qword_1AB4E83D8) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1AB2E1088(a1, v4, v5, v6, v7);
}

uint64_t Result.init(from:orElse:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a3 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v14);
  v17 = (*(v12 + 48))(v11, 1, a3);
  v18 = *(v9 + 8);
  if (v17 != 1)
  {
    v18(a1, v8);

    v21 = *(v12 + 32);
    v21(v16, v11, a3);
    v21(a4, v16, a3);
    type metadata accessor for Result(0, a3, v22, v23);
    return swift_storeEnumTagMultiPayload();
  }

  v18(v11, v8);
  if (a2)
  {
    v18(a1, v8);
    *a4 = a2;
    type metadata accessor for Result(0, a3, v19, v20);
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t Result.init(trying:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for Result(0, a2, a2, a3);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  a1(v8);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a4, v10, v6);
}

uint64_t Result.init(trying:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v6 = type metadata accessor for Result(0, a4, a3, a4);
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[5] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1AB2E39F8;

  return v10(v7);
}

uint64_t sub_1AB2E39F8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1AB2E3BA8;
  }

  else
  {
    v2 = sub_1AB2E3B0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB2E3B0C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AB2E3BA8()
{
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Result.unwrap()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return swift_willThrow();
  }

  else
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }
}

uint64_t Result.map<A>(_:)@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14, v16, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a4 = *v14;
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
  }

  type metadata accessor for Result(0, a3, v17, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB2E3F4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
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
      if (v11 >= 2)
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

  return (v5 | v10) + 255;
}

void sub_1AB2E4064(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
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

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter(uint64_t a1)
{
  (*(*(a1 - 8) + 16))(&v5, v1, a1);
  if (!v6)
  {
    return 0xD00000000000003ALL;
  }

  sub_1AB0149B0(&v5, v4);
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB508810);
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB508830);
  v2 = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

void sub_1AB2E4354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  os_unfair_lock_lock((a1 + 32));
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(v16 + 16);
  if (v17 == v18)
  {
    v26[0] = 0;
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    if (v17 >= v18)
    {
      __break(1u);
      return;
    }

    sub_1AB01494C(v16 + 40 * v17 + 32, &v24);
    *(a1 + 24) = v17 + 1;
  }

  os_unfair_lock_unlock((a1 + 32));
  if (*(&v25 + 1))
  {
    sub_1AB0149B0(&v24, v29);
    *&v24 = a3;
    *(&v24 + 1) = a4;
    *&v25 = a5;
    *&v28[0] = 0;
    v21 = type metadata accessor for ActionDispatcher(0, a8, v19, v20);
    ActionDispatcher.perform(_:withMetrics:asPartOf:)(v29, v28, a6, v21);
    sub_1AB01494C(a7, &v24);
    sub_1AB01494C(v29, v28);
    v22 = swift_allocObject();
    v22[2] = a8;
    v22[3] = a1;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = a4;
    v22[7] = a5;
    v22[8] = a6;
    sub_1AB0149B0(&v24, (v22 + 9));
    sub_1AB0149B0(v28, (v22 + 14));
    *&v24 = sub_1AB2E4AD4;
    *(&v24 + 1) = v22;
    *&v25 = sub_1AB2E4B10;
    *(&v25 + 1) = a2;
    sub_1AB01494C(a7, v26);
    v27 = 0;
    v23 = a5;

    swift_retain_n();

    sub_1AB1965A4(&v24);

    sub_1AB014AC0(&v24, &unk_1EB437930, &unk_1AB4E4610);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_1AB014AC0(&v24, &qword_1EB43A788, &qword_1AB4E85D0);
    sub_1AB431678(0);
  }
}

void sub_1AB2E4588(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*a1)
  {
    type metadata accessor for CompoundActionImplementation.PerformError(0, a10, a3, a4);
    swift_getWitnessTable();
    v10 = swift_allocError();
    sub_1AB01494C(a9, v11);
    sub_1AB2A4724(v10);
  }

  else
  {

    sub_1AB2E4354(a2, a3, a4, a5, a6, a7, a8, a10);
  }
}

uint64_t sub_1AB2E4670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for ActionDispatcher(0, a3, a3, a4);
  BaseObjectGraph._injectIfAvailable<A>(_:)(v7, v7);
  v10 = v31[0];
  if (v31[0])
  {
    v12 = v31[1];
    v11 = v32;
    if (v32)
    {
      v29 = sub_1AB015664();
      v30 = &protocol witness table for OS_dispatch_queue;
      *&v28 = v32;
      sub_1AB0149B0(&v28, v31);
      v13 = v33;
      v14 = v34;
      v27 = v11;
    }

    else
    {
      v27 = 0;
      v13 = &type metadata for SyncTaskScheduler;
      v14 = &protocol witness table for SyncTaskScheduler;
      v33 = &type metadata for SyncTaskScheduler;
      v34 = &protocol witness table for SyncTaskScheduler;
    }

    v26 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400, &unk_1AB4E81F0);
    v17 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC0];
    *(v17 + 16) = v19;
    *(v17 + 24) = v20;
    *(v17 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A780, &qword_1AB4E85C8);
    v21 = swift_allocObject();
    *(v21 + 32) = 0;
    *(v21 + 16) = v6;
    *(v21 + 24) = 0;
    __swift_project_boxed_opaque_existential_1Tm(v31, v13);
    sub_1AB01494C(v31, &v28);
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = v21;
    v22[4] = v17;
    v22[5] = v10;
    v22[6] = v12;
    v22[7] = v11;
    v22[8] = a2;
    sub_1AB0149B0(&v28, (v22 + 9));
    v25 = v14[1];
    v23 = v27;

    sub_1AB1E5EFC(v10, v12, v11);

    v25(sub_1AB2E4ABC, v22, v26, v14);

    sub_1AB1E5F48(v10, v12, v11);

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    type metadata accessor for CompoundActionImplementation.PerformError(0, a3, v8, v9);
    swift_getWitnessTable();
    v15 = swift_allocError();
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400, &unk_1AB4E81F0);
    v17 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v17 + 16) = v18;
    *(v17 + 24) = v15;
    *(v17 + 32) = 2;
  }

  return v17;
}

uint64_t sub_1AB2E4978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine28CompoundActionImplementationV12PerformErrorOyx_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB2E49CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1AB2E4A1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1AB2E4A78(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

double ShelfModel.layoutReferenceItem.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 40))();
  if (*(v3 + 16))
  {
    sub_1AB01494C(v3 + 32, a2);
  }

  else
  {

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t ShelfModel.isHomogenousForLayout.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = v4();
  if (*(v5 + 16))
  {
    sub_1AB01494C(v5 + 32, &v17);

    sub_1AB0149B0(&v17, v19);
    __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
    DynamicType = swift_getDynamicType();
    v7 = (v4)(a1, a2);
    v8 = *(v7 + 16);
    v9 = v8 != 0;
    v10 = v8 - v9;
    if (v8 >= v9)
    {
      v11 = v8 - v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 + 1;
    result = v7 + 40 * v9 + 32;
    while (1)
    {
      v14 = v10 == 0;
      if (!v10)
      {
LABEL_9:

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        return v14;
      }

      if (!--v12)
      {
        break;
      }

      v15 = result + 40;
      --v10;
      sub_1AB01494C(result, &v17);
      __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
      v16 = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      result = v15;
      if (v16 != DynamicType)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t JSONDateFormat.date(from:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1AB2E54B0();
  v5 = sub_1AB460514();

  [v4 setDateFormat_];

  v6 = sub_1AB460514();
  v7 = [v4 dateFromString_];

  if (v7)
  {
    sub_1AB45F984();

    v8 = 0;
    v4 = v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1AB45F9B4();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, v8, 1, v9);
}

unint64_t JSONDateFormat.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t JSONDateFormat.string(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1AB45F9B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB19C16C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1AB014AC0(v4, &qword_1EB4395E0, qword_1AB4DB790);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_1AB2E54B0();
    v11 = sub_1AB460514();

    [v10 setDateFormat_];

    v12 = sub_1AB45F914();
    v13 = [v10 stringFromDate_];

    v14 = sub_1AB460544();
    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

JetEngine::JSONDateFormat_optional __swiftcall JSONDateFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AB2E51E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "uest";
  }

  else
  {
    v4 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  else
  {
    v7 = "uest";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();
  }

  return v9 & 1;
}

uint64_t sub_1AB2E5298()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB2E531C(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB2E538C(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB2E540C@<X0>(char *a2@<X8>)
{
  v3 = sub_1AB4619B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AB2E546C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  else
  {
    v3 = "uest";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id sub_1AB2E54B0()
{
  v0 = sub_1AB45FAA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB016760(0, &qword_1ED4D1040, 0x1E696AEC0);
  v4 = sub_1AB4612E4();
  v5 = objc_opt_self();
  v6 = [v5 currentThread];
  v7 = [v6 threadDictionary];

  v8 = v4;
  v9 = [v7 objectForKeyedSubscript_];

  if (v9)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_1AB014AC0(v19, &unk_1EB437E60, &qword_1AB4D4730);
    goto LABEL_8;
  }

  sub_1AB016760(0, &unk_1EB434420, 0x1E696AB78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1AB45F9F4();
    v11 = sub_1AB45FA44();
    (*(v1 + 8))(v3, v0);
    [v10 setLocale_];

    v12 = [v5 currentThread];
    v13 = [v12 threadDictionary];

    v14 = v8;
    [v13 setObject:v10 forKeyedSubscript:v14];

    return v10;
  }

  return v16[1];
}

unint64_t sub_1AB2E5788()
{
  result = qword_1EB43A790;
  if (!qword_1EB43A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A790);
  }

  return result;
}

NSURLRequestCachePolicy __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSURLRequestCachePolicy.init(_:)(JSValue a1)
{
  v2 = sub_1AB2E5C10(a1.super.isa);

  return v2;
}

void sub_1AB2E582C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1AB2E5C10(a1);

  if (!v2)
  {
    *a2 = v5;
  }
}

uint64_t sub_1AB2E588C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AB0BA488(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t NSURLRequestCachePolicy.encode(to:)(void *a1, unint64_t a2)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0, &qword_1AB4E75C0);
  sub_1AB2E5CEC();
  sub_1AB461E74();

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

void *sub_1AB2E59C0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AB2E5A08(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1AB2E5A08(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
    v4 = sub_1AB461DB4();
    v6 = v5;
    v7 = v4;
    v8 = sub_1AB0BA5C4(v4, v5);
    if ((v9 & 1) == 0)
    {
      v3 = v8;

      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v3;
    }

    v10 = sub_1AB4616B4();
    swift_allocError();
    v12 = v11;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB4615D4();

    strcpy(v14, "Unknown case ");
    v14[7] = -4864;
    MEMORY[0x1AC59BA20](v7, v6);

    v3 = v14;
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB5088C0);
    sub_1AB461694();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

id sub_1AB2E5C10(void *a1)
{
  result = [a1 toString];
  if (result)
  {
    v3 = result;
    v4 = sub_1AB460544();
    v6 = v5;

    v7 = sub_1AB0BA5C4(v4, v6);
    LOBYTE(v4) = v8;

    if (v4)
    {
      sub_1AB0C3EF0();
      swift_allocError();
      JSError.init(badValue:expected:)(a1, 0xD000000000000026, 0x80000001AB5088E0, v9);
      swift_willThrow();
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB2E5CEC()
{
  result = qword_1EB438628;
  if (!qword_1EB438628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB439AC0, &qword_1AB4E75C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438628);
  }

  return result;
}

void *sub_1AB2E5E00()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1AB4615F4();
  swift_getAssociatedConformanceWitness();
  return sub_1AB461564();
}

uint64_t sub_1AB2E5F24()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1AB2E5F94()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1AB2E5FCC(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 112) - 8) + 32))(v2 + *(*v2 + 128), a1);
  return v2;
}

uint64_t sub_1AB2E6188()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t DiffableLens.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v3 + 96))(v6);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

uint64_t DiffableLens.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v3 + 96))(v8);
  swift_getAtKeyPath();
  (*(v7 + 8))(v10, v6);
  v12[0] = v12[1];
  return ReadOnlyLens.init(_:)(v12, *(v5 + *MEMORY[0x1E69E77B0] + 8), a3);
}

uint64_t DiffableLens.hash(into:)(uint64_t a1)
{
  (*(**v1 + 88))(v3);
  _s9JetEngine15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1AB02B2E4(v3);
}

uint64_t static DiffableLens.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 88))(v6);
  (*(*v2 + 88))(v5, v3);
  LOBYTE(v2) = MEMORY[0x1AC59C870](v6, v5);
  sub_1AB02B2E4(v5);
  sub_1AB02B2E4(v6);
  return v2 & 1;
}

uint64_t DiffableLens.description.getter(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(**v1 + 96))(v2);
  return sub_1AB4605E4();
}

uint64_t DiffableLens.hashValue.getter()
{
  v2[9] = *v0;
  sub_1AB4620A4();
  DiffableLens.hash(into:)(v2);
  return sub_1AB462104();
}

uint64_t sub_1AB2E671C(uint64_t a1)
{
  sub_1AB4620A4();
  DiffableLens.hash(into:)(v2);
  return sub_1AB462104();
}

uint64_t DiffableLens<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  return sub_1AB2E6870(a1, a2, sub_1AB2E6B10, x8_0);
}

{
  return sub_1AB2E6870(a1, a2, sub_1AB2E6B10, x8_0);
}

uint64_t DiffableLens<A>.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AnyComponentModelValueBox(0);
  v4 = swift_allocObject();
  result = sub_1AB0149B0(a1, v4 + 16);
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for AnyComponentModelValueBox(uint64_t a1)
{
  result = qword_1EB434668;
  if (!qword_1EB434668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB2E6870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X4>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(0, v9);
  (*(v8 + 16))(v11, a1, a2);
  v13 = a3(v11);
  result = (*(v8 + 8))(a1, a2);
  *a4 = v13;
  return result;
}

uint64_t sub_1AB2E6A20(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1AB2E6AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB2E6B1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = sub_1AB460514();
  v10 = sub_1AB460514();
  if (a4)
  {
    a4 = sub_1AB460514();
  }

  v11 = sub_1AB460514();
  v12 = [v7 localizedStringForKey:v9 value:v10 table:a4 localization:v11];

  v13 = sub_1AB460544();
  v15 = v14;

  if (!v13 && v15 == 0xE100000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  return v13;
}

uint64_t EmptyAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v12);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v11);

  v6 = sub_1AB37F7F4(v11, v5);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v11);
  v9 = v5;
  ScalarDictionary.init(tryDeserializing:using:)(v11, &v9, &v10);
  sub_1AB066D84(a1);
  result = sub_1AB066D84(v12);
  v8 = v10;
  *a3 = v6;
  a3[1] = v8;
  return result;
}

uint64_t EmptyAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 EmptyAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_1AB2E6DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB2E6E7C(uint64_t a1)
{
  v2 = sub_1AB2E706C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2E6EB8(uint64_t a1)
{
  v2 = sub_1AB2E706C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptyAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A798, &qword_1AB4E8A28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB2E706C();

  sub_1AB462274();
  v10[0] = v7;
  v10[1] = v8;
  sub_1AB24CA70();
  sub_1AB461BF4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1AB2E706C()
{
  result = qword_1EB43A7A0;
  if (!qword_1EB43A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A7A0);
  }

  return result;
}

uint64_t EmptyAction.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A7A8, &qword_1AB4E8A30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB2E706C();
  sub_1AB462224();
  if (!v2)
  {
    sub_1AB24CE74();
    sub_1AB461AC4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB2E728C()
{
  result = qword_1EB43A7B0;
  if (!qword_1EB43A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A7B0);
  }

  return result;
}

unint64_t sub_1AB2E72E4()
{
  result = qword_1EB43A7B8;
  if (!qword_1EB43A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A7B8);
  }

  return result;
}

unint64_t sub_1AB2E733C()
{
  result = qword_1EB43A7C0;
  if (!qword_1EB43A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A7C0);
  }

  return result;
}

id sub_1AB2E7390()
{
  result = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  qword_1EB43A7C8 = result;
  return result;
}

Swift::Void __swiftcall JSPromiseLogExecutorError()()
{
  if (qword_1EB435D88 != -1)
  {
    swift_once();
  }

  if ([qword_1EB43A7C8 compareWithValue:0 andExchangeWithValue:1])
  {
    if (qword_1EB435D90 != -1)
    {
      swift_once();
    }

    v0 = qword_1EB46C308;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1AB4D4190;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v3 = MEMORY[0x1E69E6158];
    v17 = MEMORY[0x1E69E6158];
    v14 = 0xD000000000000048;
    v15 = 0x80000001AB508A10;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1AB0169C4(&v14, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    v17 = v3;
    v14 = 0xD00000000000004ALL;
    v15 = 0x80000001AB508A60;
    *(v4 + 48) = 0u;
    *(v4 + 32) = 0u;
    sub_1AB0169C4(&v14, v4 + 32);
    *(v4 + 64) = 0;
    *(v1 + 40) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    v17 = v3;
    v14 = 0xD000000000000052;
    v15 = 0x80000001AB508AB0;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_1AB0169C4(&v14, v5 + 32);
    *(v5 + 64) = 0;
    *(v1 + 48) = v5;
    v6 = sub_1AB461094();
    if (os_log_type_enabled(v0, v6))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v7 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v7[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v7 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v9 = swift_allocObject();
      *(v9 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v14 = v1;
      v15 = sub_1AB01A8D8;
      v16 = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v10 = sub_1AB460484();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AB4D4720;
      *(v13 + 56) = v3;
      *(v13 + 64) = sub_1AB016854();
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v0, v6, v13);
    }
  }
}

void sub_1AB2E7774(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB019150((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB46C308 = v2;
}

uint64_t JSPromise.promise.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389D8, &unk_1AB4DEB08);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  sub_1AB08B57C(v0);
  return v0;
}

uint64_t JSONObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01494C(a1, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000, &unk_1AB4F4C20);
  if (swift_dynamicCast())
  {
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    sub_1AB0B9254(&v29, &v26);
    sub_1AB0BCB6C(&v29);
    v20[0] = v26;
    v20[1] = v27;
    v21 = v28;
    if (*(&v27 + 1))
    {
      sub_1AB0149B0(v20, &v22);
      sub_1AB0149B0(&v22, &v33);
LABEL_18:
      v18 = v34;
      *a2 = v33;
      *(a2 + 16) = v18;
      *(a2 + 32) = v35;
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = &qword_1EB436BA0;
    v6 = &qword_1AB4D4F40;
    v7 = v20;
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v5 = &unk_1EB43A7D8;
    v6 = &unk_1AB4E8C40;
    v7 = &v22;
  }

  sub_1AB014AC0(v7, v5, v6);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v30 + 1));
    if (sub_1AB461E04())
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      *(&v23 + 1) = sub_1AB016760(0, &qword_1ED4D1D80, 0x1E695DFB0);
      *&v22 = v8;
      *(&v34 + 1) = &type metadata for FoundationValue;
      v35 = &off_1F1FFB5A8;
      *&v33 = swift_allocObject();
      sub_1AB014B78(&v22, (v33 + 16));
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
      goto LABEL_18;
    }

    __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v30 + 1));
    v9 = sub_1AB461DC4();
    v10 = MEMORY[0x1E695E4C0];
    if (v9)
    {
      v10 = MEMORY[0x1E695E4D0];
    }

    v11 = *v10;
    if (*v10)
    {
      type metadata accessor for CFBoolean(0);
      *&v22 = v11;
      *(&v23 + 1) = v12;
      if (v12)
      {
        v13 = swift_allocObject();
        sub_1AB014B78(&v22, (v13 + 16));
        v14 = v11;
        v15 = &type metadata for FoundationValue;
        v16 = &off_1F1FFB5A8;
LABEL_16:
        v33 = v13;
        *&v34 = 0;
        *(&v34 + 1) = v15;
        v35 = v16;
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v17 = v11;
    sub_1AB014AC0(&v22, &unk_1EB437E60, &qword_1AB4D4730);
    v16 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB2E82A0()
{
  result = qword_1EB432D40;
  if (!qword_1EB432D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A7E0, &qword_1AB4E8C48);
    sub_1AB1BF694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432D40);
  }

  return result;
}

unint64_t sub_1AB2E832C()
{
  result = qword_1EB43A7F0[0];
  if (!qword_1EB43A7F0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A7E8, &qword_1AB4E8C50);
    sub_1AB1BF694();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB43A7F0);
  }

  return result;
}

uint64_t JSONObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1AB4616D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v49 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EB8, &unk_1AB4DDE60);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v49 - v11;
  v12 = sub_1AB45F5B4();
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v3;
  sub_1AB014A58(v3, &v69, &qword_1EB436BA0, &qword_1AB4D4F40);
  v15 = *(&v70 + 1);
  if (!*(&v70 + 1))
  {
    sub_1AB014AC0(&v69, &qword_1EB436BA0, &qword_1AB4D4F40);
    v75 = 0u;
    v76 = 0u;
    goto LABEL_10;
  }

  v49 = v6;
  v50 = v5;
  v16 = v71;
  __swift_project_boxed_opaque_existential_1Tm(&v69, *(&v70 + 1));
  (*(v16 + 120))(&v75, v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v69);
  if (!*(&v76 + 1))
  {
LABEL_10:
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462254();
    __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
    sub_1AB461E84();
    v18 = &v69;
    goto LABEL_20;
  }

  sub_1AB014A58(&v75, v74, &unk_1EB437E60, &qword_1AB4D4730);
  sub_1AB016760(0, &qword_1ED4D1940, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v17 = v65;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462254();
    if (*MEMORY[0x1E695E4D0] && v17 == *MEMORY[0x1E695E4D0] || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
    {
      [v17 BOOLValue];
      __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
      sub_1AB461E44();
    }

    else
    {
      [v17 doubleValue];
      __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
      sub_1AB461E54();
    }

    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462254();
    __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
    sub_1AB461E44();
LABEL_17:
    v19 = &v69;
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462254();
    __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
    sub_1AB461E54();
    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462254();
    __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
    sub_1AB461E34();

    goto LABEL_17;
  }

  sub_1AB016760(0, &qword_1ED4D0BE0, 0x1E695DEC8);
  if (swift_dynamicCast())
  {
    v21 = v61[0];
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462244();
    v56 = v21;
    sub_1AB461294();
    sub_1AB45F5A4();
    if (v64)
    {
      while (1)
      {
        sub_1AB014B78(&v63, v62);
        *(&v66 + 1) = &type metadata for FoundationValue;
        *&v67 = &off_1F1FFB5A8;
        *&v65 = swift_allocObject();
        sub_1AB014B78(v62, (v65 + 16));
        __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
        sub_1AB1BF9A0();
        sub_1AB461D44();
        if (v2)
        {
          break;
        }

        sub_1AB066D84(&v65);
        sub_1AB45F5A4();
        if (!v64)
        {
          goto LABEL_28;
        }
      }

      sub_1AB066D84(&v65);
      (v54)[1](v14, v12);
    }

    else
    {
LABEL_28:
      (v54)[1](v14, v12);
    }

    goto LABEL_17;
  }

  sub_1AB016760(0, qword_1ED4D1BA0, 0x1E695DF20);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462234();
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_1AB4615D4();

    v74[0] = 0xD000000000000024;
    v74[1] = 0x80000001AB508B40;
    v28 = v53;
    sub_1AB014A58(v53, &v69, &qword_1EB436BA0, &qword_1AB4D4F40);
    v29 = *(&v70 + 1);
    if (*(&v70 + 1))
    {
      v30 = v71;
      __swift_project_boxed_opaque_existential_1Tm(&v69, *(&v70 + 1));
      (*(v30 + 120))(&v65, v29, v30);
      sub_1AB014AC0(&v65, &unk_1EB437E60, &qword_1AB4D4730);
      __swift_destroy_boxed_opaque_existential_1Tm(&v69);
    }

    else
    {
      sub_1AB014AC0(&v69, &qword_1EB436BA0, &qword_1AB4D4F40);
      v65 = 0u;
      v66 = 0u;
      sub_1AB014AC0(&v65, &unk_1EB437E60, &qword_1AB4D4730);
    }

    v31 = v49;
    MEMORY[0x1AC59BA20](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
    sub_1AB461694();
    v32 = sub_1AB4616E4();
    swift_allocError();
    v34 = v33;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8, &qword_1AB4D8210) + 48);
    v34[3] = &type metadata for JSONObject;
    v36 = swift_allocObject();
    *v34 = v36;
    sub_1AB0B9254(v28, v36 + 16);
    v37 = v34 + v35;
    v38 = v50;
    (*(v31 + 16))(v37, v8, v50);
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B30], v32);
    swift_willThrow();
    (*(v31 + 8))(v8, v38);
    return sub_1AB014AC0(&v75, &unk_1EB437E60, &qword_1AB4D4730);
  }

  v22 = v73;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB179C3C();
  sub_1AB462274();
  v54 = v22;
  sub_1AB461024();
  sub_1AB461034();
  v69 = v65;
  v70 = v66;
  v71 = v67;
  v72 = v68;
  if (!*(&v66 + 1))
  {
LABEL_43:
    (*(v52 + 8))(v56, v55);

    goto LABEL_19;
  }

  v23 = MEMORY[0x1E69E6158];
  while (1)
  {
    sub_1AB014B78(&v69, &v63);
    sub_1AB014B78(&v71, v62);
    sub_1AB0165C4(&v63, v61);
    if (swift_dynamicCast())
    {
      break;
    }

    if (!swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      sub_1AB462234();
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      sub_1AB4615D4();

      *&v65 = 0xD000000000000022;
      *(&v65 + 1) = 0x80000001AB508B70;
      __swift_project_boxed_opaque_existential_1Tm(&v63, v64);
      swift_getDynamicType();
      v39 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v39);

      v40 = v51;
      sub_1AB461694();
      v41 = sub_1AB4616E4();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8, &qword_1AB4D8210) + 48);
      v43[3] = &type metadata for JSONObject;
      v45 = swift_allocObject();
      *v43 = v45;
      sub_1AB0B9254(v53, v45 + 16);
      v46 = v49;
      v47 = v43 + v44;
      v48 = v50;
      (*(v49 + 16))(v47, v40, v50);
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6B30], v41);
      swift_willThrow();

      (*(v46 + 8))(v40, v48);
      goto LABEL_49;
    }

    v27 = v59;
    sub_1AB0165C4(v62, &v57);
    *(&v66 + 1) = &type metadata for FoundationValue;
    *&v67 = &off_1F1FFB5A8;
    *&v65 = swift_allocObject();
    sub_1AB014B78(&v57, (v65 + 16));
    v57 = v27;
    v58 = 0;
    sub_1AB1BF9A0();
    sub_1AB461BF4();
    if (v2)
    {
      goto LABEL_48;
    }

    sub_1AB066D84(&v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
LABEL_33:
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    sub_1AB461034();
    v69 = v65;
    v70 = v66;
    v71 = v67;
    v72 = v68;
    if (!*(&v66 + 1))
    {
      goto LABEL_43;
    }
  }

  v24 = v23;
  v25 = v59;
  v26 = v60;
  sub_1AB0165C4(v62, &v57);
  *(&v66 + 1) = &type metadata for FoundationValue;
  *&v67 = &off_1F1FFB5A8;
  *&v65 = swift_allocObject();
  sub_1AB014B78(&v57, (v65 + 16));
  *&v57 = v25;
  *(&v57 + 1) = v26;
  v58 = 1;
  sub_1AB1BF9A0();
  sub_1AB461BF4();
  if (!v2)
  {

    sub_1AB066D84(&v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    v23 = v24;
    goto LABEL_33;
  }

LABEL_48:

  sub_1AB066D84(&v65);
LABEL_49:
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(&v63);
  (*(v52 + 8))(v56, v55);
  v19 = v61;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
LABEL_19:
  v18 = v74;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return sub_1AB014AC0(&v75, &unk_1EB437E60, &qword_1AB4D4730);
}

uint64_t Lockable.locked<A>(perform:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  [v8(a3 a5)];
  v9 = swift_unknownObjectRelease();
  a1(v9);
  [v8(a3 a5)];
  return swift_unknownObjectRelease();
}

uint64_t StatePath<A>.starts(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AB460A64();
  swift_getWitnessTable();
  return sub_1AB460884() & 1;
}

uint64_t StatePath.init<A>(components:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v11 = sub_1AB460AB4();
  result = (*(v8 + 8))(a1, a3);
  *a5 = v11;
  return result;
}

uint64_t StatePath.init(component:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AB2EA3F0(a2, a2);
  v6 = *(a2 - 8);
  swift_allocObject();
  v7 = sub_1AB460964();
  (*(v6 + 32))(v8, a1, a2);
  result = sub_1AB20EC04(v7, a2);
  *a3 = result;
  return result;
}

uint64_t StatePath.init()@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1AB4609A4();
  *a2 = result;
  return result;
}

uint64_t StatePath.appending(component:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v13 = *v3;
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v5, v6);
  v10 = sub_1AB460A64();

  sub_1AB460A14();
  v12 = v13;
  swift_getWitnessTable();
  return StatePath.init<A>(components:)(&v12, v10, a3);
}

uint64_t StatePath.appending<A>(components:)@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v13 = *v5;
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = sub_1AB460A64();

  sub_1AB460A04();
  v12 = v13;
  swift_getWitnessTable();
  return StatePath.init<A>(components:)(&v12, v10, a5);
}

uint64_t StatePath.appending(_:)@<X0>(uint64_t *a3@<X8>)
{
  v8 = *v3;
  v5 = sub_1AB460A64();

  swift_getWitnessTable();
  sub_1AB460A04();
  v7 = v8;
  return StatePath.init<A>(components:)(&v7, v5, a3);
}

uint64_t StatePath.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1AB460A64();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1AC59BB90](&v6, v2, WitnessTable);
  *(swift_allocObject() + 16) = v1;
  sub_1AB461604();
  swift_getWitnessTable();
  sub_1AB461984();

  sub_1AB461804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_1AB460484();

  return v4;
}

uint64_t sub_1AB2E9AC8@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_1AB4605E4();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1AB2E9B90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1AB461DA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AB2E9C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB2E9B90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AB2E9C5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB2E9CB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t StatePath<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *(a2 + 16);
  v13 = a4;
  type metadata accessor for StatePath.CodingKeys(255, v12, a3, a4);
  swift_getWitnessTable();
  v6 = sub_1AB461C14();
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = *v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);

  sub_1AB462274();
  v16 = v9;
  sub_1AB460A64();
  v15 = v13;
  swift_getWitnessTable();
  sub_1AB461BF4();

  return (*(v14 + 8))(v8, v6);
}

uint64_t StatePath<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v14 = a4;
  v15 = a3;
  type metadata accessor for StatePath.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v7 = sub_1AB461B04();
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462224();
  if (!v5)
  {
    v11 = v13;
    v10 = v14;
    sub_1AB460A64();
    v16 = v15;
    swift_getWitnessTable();
    sub_1AB461AC4();
    (*(v11 + 8))(v9, v7);
    *v10 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t StatePath<A>.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB4615F4();
  StatePath.init(component:)(v9, a2, &v12);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *a4 = v12;
  return result;
}

uint64_t StatePath<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1AB4620A4();
  sub_1AB460A84();
  return sub_1AB462104();
}

uint64_t sub_1AB2EA260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AB4620A4();
  StatePath<A>.hash(into:)(v6, a2, v4);
  return sub_1AB462104();
}

uint64_t StatePath<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1AB45FC04();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  sub_1AB2EA484();
  v8 = sub_1AB460804();
  result = (*(v5 + 8))(a1, v4);
  *a2 = v8;
  return result;
}

void StatePath<A>.indexPath.getter()
{

  JUMPOUT(0x1AC59AF30);
}

uint64_t sub_1AB2EA3F0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548, &qword_1AB4D7F30);
  }

  else
  {

    return sub_1AB461C64();
  }
}

unint64_t sub_1AB2EA484()
{
  result = qword_1EB433430;
  if (!qword_1EB433430)
  {
    sub_1AB45FC04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433430);
  }

  return result;
}

uint64_t sub_1AB2EA524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double static NetRequestPropertyCollectionBuilder.buildExpression<A, B>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C40, qword_1AB4E8F60);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_1AB4D4720;
  *(v5 + 32) = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  *(v5 + 40) = a3;
  return result;
}

uint64_t sub_1AB2EA65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  sub_1AB0B9254(a1, v8);
  v7[0] = a2;

  v9 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v7);
  v10 = MEMORY[0x1E69E7CC0];
  v7[3] = &type metadata for _JSONObjectDecoder;
  v7[4] = sub_1AB0BB6F8();
  v7[0] = swift_allocObject();
  sub_1AB0BB74C(v8, v7[0] + 16);
  v5 = a3(v7);
  sub_1AB0BCB6C(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t static NetRequestProperty.value(byDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  sub_1AB0B9254(a1, v9);
  v8[0] = v6;

  v10 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v8);
  v11 = MEMORY[0x1E69E7CC0];
  v8[3] = &type metadata for _JSONObjectDecoder;
  v8[4] = sub_1AB0BB6F8();
  v8[0] = swift_allocObject();
  sub_1AB0BB74C(v9, v8[0] + 16);
  (*(a4 + 32))(v8, a3, a4);
  sub_1AB0BCB6C(v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1AB2EA848@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *)@<X4>, uint64_t *a4@<X8>)
{
  result = sub_1AB2EA65C(a1, *a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

void *static NetRequestProperty.value(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  result = sub_1AB462204();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
    sub_1AB1BF694();
    sub_1AB461DF4();
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v8 = sub_1AB462214();
    JSONContext.init(userInfo:)(v8);
    (*(a3 + 24))(v10, &v9, a2, a3);

    sub_1AB066D84(v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return result;
}

uint64_t sub_1AB2EAA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-v10];
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23[-v14];
  sub_1AB0165C4(a1, v23);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    (*(a4 + 40))(v15, v22, a3, a4);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v17(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    v19 = sub_1AB4616E4();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8, &qword_1AB4D8210);
    v21[3] = swift_getMetatypeMetadata();
    *v21 = AssociatedTypeWitness;
    sub_1AB461694();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B30], v19);
    return swift_willThrow();
  }
}

double static NetRequestPropertyCollectionBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C40, qword_1AB4E8F60);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1AB4D4720;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  return result;
}

void sub_1AB2EADB4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = a1 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    while (a2 < v2)
    {
      memcpy(__dst, (v8 + 400 * a2), sizeof(__dst));
      memcpy(v27, (v8 + 400 * a2), 0x190uLL);
      v10 = sub_1AB19A4CC(v27);
      v11 = a2 + 1;
      v12 = __OFADD__(a2, 1);
      if (v10 == 1)
      {
        if (v12)
        {
          goto LABEL_45;
        }

        v13 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_46;
        }

        if (v11 >= v2)
        {
          a2 = 0;
        }

        else
        {
          ++a2;
        }

        ++v5;
        if (v13 == v2)
        {
          v3 = v9;
          goto LABEL_40;
        }
      }

      else
      {
        if (v12)
        {
          goto LABEL_47;
        }

        if (v11 >= v2)
        {
          a2 = 0;
        }

        else
        {
          ++a2;
        }

        v14 = __OFADD__(v5++, 1);
        if (v14)
        {
          goto LABEL_48;
        }

        if (v6)
        {
          memcpy(v25, __dst, sizeof(v25));
          sub_1AB19A648(v25, v24);
          v3 = v9;
          v14 = __OFSUB__(v6--, 1);
          if (v14)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v15 = v9[3];
          if (((v15 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_51;
          }

          v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
          if (v16 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E88, &unk_1AB4E9000);
          v3 = swift_allocObject();
          v18 = (_swift_stdlib_malloc_size(v3) - 32) / 400;
          v3[2] = v17;
          v3[3] = 2 * v18;
          v19 = v9[3] >> 1;
          v7 = &v3[50 * v19 + 4];
          v20 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v19;
          if (v9[2])
          {
            if (v3 >= v9 && v3 + 4 < &v9[50 * v19 + 4] && v3 == v9)
            {
              memcpy(v25, __dst, sizeof(v25));
              sub_1AB19A648(v25, v24);
            }

            else
            {
              memcpy(v25, __dst, sizeof(v25));
              sub_1AB19A648(v25, v24);
              memmove(v3 + 4, v9 + 4, 400 * v19);
            }

            v9[2] = 0;
          }

          else
          {
            memcpy(v25, __dst, sizeof(v25));
            sub_1AB19A648(v25, v24);
          }

          v14 = __OFSUB__(v20, 1);
          v6 = v20 - 1;
          if (v14)
          {
            goto LABEL_49;
          }
        }

        memmove(v7, __dst, 0x190uLL);
        v7 += 400;
        v9 = v3;
        if (v5 == v2)
        {
          goto LABEL_40;
        }
      }
    }

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
    return;
  }

  v6 = 0;
LABEL_40:
  v21 = v3[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v14 = __OFSUB__(v22, v6);
    v23 = v22 - v6;
    if (!v14)
    {
      v3[2] = v23;
      return;
    }

    goto LABEL_50;
  }
}

void sub_1AB2EB074(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (MEMORY[0x1E69E7CC0] + 32);
  v8 = a1 + 32;
  while (v5 != v4)
  {
    if (a2 >= v5)
    {
      __break(1u);
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
      goto LABEL_46;
    }

    v9 = (v8 + 16 * a2);
    v10 = v9[1];
    if (v10)
    {
      if (__OFADD__(a2, 1))
      {
        goto LABEL_43;
      }

      if ((a2 + 1) >= v5)
      {
        a2 = 0;
      }

      else
      {
        ++a2;
      }

      v11 = __OFADD__(v4++, 1);
      if (v11)
      {
        goto LABEL_44;
      }

      v12 = *v9;
      if (v3)
      {

        v13 = v6;
        v11 = __OFSUB__(v3--, 1);
        if (v11)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v14 = *(v6 + 3);
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
        v13 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v13);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 17;
        }

        v19 = v18 >> 4;
        *(v13 + 2) = v16;
        *(v13 + 3) = 2 * (v18 >> 4);
        v20 = v13 + 32;
        v21 = *(v6 + 3) >> 1;
        v7 = &v13[16 * v21 + 32];
        v22 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;
        if (*(v6 + 2))
        {
          v23 = v6 + 32;
          if (v13 < v6 || v20 >= &v23[16 * v21] || v13 != v6)
          {
            memmove(v20, v23, 16 * v21);
          }

          *(v6 + 2) = 0;
        }

        else
        {
        }

        v11 = __OFSUB__(v22, 1);
        v3 = v22 - 1;
        if (v11)
        {
          goto LABEL_45;
        }
      }

      *v7 = v12;
      *(v7 + 1) = v10;
      v7 += 16;
      v6 = v13;
    }

    else
    {
      if (__OFADD__(a2, 1))
      {
        goto LABEL_41;
      }

      if ((a2 + 1) >= v5)
      {
        a2 = 0;
      }

      else
      {
        ++a2;
      }

      v11 = __OFADD__(v4++, 1);
      if (v11)
      {
        goto LABEL_42;
      }
    }
  }

  v24 = *(v6 + 3);
  if (v24 < 2)
  {
    return;
  }

  v25 = v24 >> 1;
  v11 = __OFSUB__(v25, v3);
  v26 = v25 - v3;
  if (!v11)
  {
    *(v6 + 2) = v26;
    return;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t JetPackResourceBundle.fileData(atPath:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  JetPackPath.init(_:)(v8);
  v9 = (*(a4 + 16))(&v11, a3, a4);

  return v9;
}

id sub_1AB2EB438(uint64_t (*a1)(const OpaqueJSContext *, const OpaqueJSValue *))
{
  result = [v1 context];
  if (result)
  {
    v4 = result;
    v5 = [result JSGlobalContextRef];

    v6 = [v1 JSValueRef];
    if (JSValueGetType(v5, v6) == kJSTypeObject)
    {
      return a1(v5, v6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

JSObjectRef JSValue.isJSONObject.getter()
{
  result = [v0 context];
  if (result)
  {
    v2 = result;
    v3 = [(OpaqueJSValue *)result JSGlobalContextRef];

    v4 = [v0 JSValueRef];
    result = JSValueIsObject(v3, v4);
    if (result)
    {
      result = JSValueToObject(v3, v4, 0);
      if (result)
      {
        v5 = result;
        if (JSObjectIsFunction(v3, result))
        {
          return 0;
        }

        else
        {
          return !JSObjectIsConstructor(v3, v5);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB2EB598@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v8 = [a1 name];
  v9 = sub_1AB460544();
  v32 = v10;
  v33 = v9;

  v11 = [a1 value];
  v12 = sub_1AB460544();
  v14 = v13;

  v15 = [a1 expiresDate];
  if (v15)
  {
    v16 = v15;
    sub_1AB45F984();

    v17 = sub_1AB45F9B4();
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  }

  else
  {
    v18 = sub_1AB45F9B4();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  v19 = [a1 domain];
  v20 = sub_1AB460544();
  v22 = v21;

  v23 = [a1 path];
  v24 = sub_1AB460544();
  v26 = v25;

  v27 = v32;
  *a2 = v33;
  a2[1] = v27;
  a2[2] = v12;
  a2[3] = v14;
  v28 = type metadata accessor for JSCookie(0);
  result = sub_1AB167244(v7, a2 + v28[6]);
  v30 = (a2 + v28[7]);
  *v30 = v20;
  v30[1] = v22;
  v31 = (a2 + v28[8]);
  *v31 = v24;
  v31[1] = v26;
  return result;
}

id sub_1AB2EB7BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v45 = sub_1AB45F9B4();
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v40 - v10;
  v11 = objc_opt_self();
  result = [v11 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = v2[1];
  v46 = *v2;
  v47 = v14;

  v15 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v43 = v3;
  v16 = v15;
  v17 = sub_1AB460514();
  [v13 setValue:v16 forProperty:v17];

  v18 = v2[3];
  v46 = v2[2];
  v47 = v18;

  v19 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = sub_1AB460514();
  [v13 setValue:v20 forProperty:v21];

  v22 = type metadata accessor for JSCookie(0);
  v23 = (v2 + v22[7]);
  v24 = v23[1];
  v46 = *v23;
  v47 = v24;

  v25 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = sub_1AB460514();
  [v13 setValue:v26 forProperty:v27];

  v28 = (v2 + v22[8]);
  v29 = v28[1];
  v46 = *v28;
  v47 = v29;

  v30 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = v30;
  v32 = sub_1AB460514();
  [v13 setValue:v31 forProperty:v32];

  sub_1AB19C16C(v2 + v22[6], v7);
  v33 = v48;
  v34 = v45;
  if ((*(v48 + 48))(v7, 1, v45) == 1)
  {
    sub_1AB19C1DC(v7);
LABEL_10:
    v39 = v44;
    result = sub_1AB054C38();
    v39[3] = result;
    v39[4] = &protocol witness table for JSValue;
    *v39 = v13;
    return result;
  }

  v35 = v42;
  (*(v33 + 32))(v42, v7, v34);
  (*(v33 + 16))(v41, v35, v34);
  v36 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
  result = swift_unknownObjectRelease();
  if (v36)
  {
    v37 = v36;
    v38 = sub_1AB460514();
    [v13 setValue:v37 forProperty:v38];

    (*(v33 + 8))(v35, v34);
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for JSCookie(uint64_t a1)
{
  result = qword_1EB4334C8;
  if (!qword_1EB4334C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB2EBD8C(uint64_t a1)
{
  sub_1AB2EBE10(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1AB2EBE10(uint64_t a1)
{
  if (!qword_1EB4339E0)
  {
    sub_1AB45F9B4();
    v1 = sub_1AB461354();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4339E0);
    }
  }
}

uint64_t AssetSQLiteDatabase.__allocating_init(url:mode:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  AssetSQLiteDatabase.init(url:mode:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall AssetSQLiteDatabase.endTransaction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB05B018((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1AB2EBF24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AssetSQLiteDatabase.Mode.description.getter()
{
  if (*v0)
  {
    return 0x6E6F6D656164;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t AssetSQLiteDatabase.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB2EC04C()
{
  if (*v0)
  {
    return 0x6E6F6D656164;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t AssetSQLiteDatabase.init(url:mode:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_url;
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_mode) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A888, &unk_1AB4E9088);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_db) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD8, &unk_1AB4D9560);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A890, &qword_1AB4E9098);
  v10 = swift_allocObject();
  *(v10 + 40) = 0;
  (*(v7 + 8))(a1, v6);
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive) = v10;
  return v2;
}

void sub_1AB2EC200(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = a2;
  v8 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v9 = qword_1EB4359C0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  v11 = byte_1EB435998;
  if ((byte_1EB435998 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v10);
    os_unfair_lock_lock((v8 + 40));
    sub_1AB2EF31C((v8 + 16));
    if (v4)
    {

      os_unfair_lock_unlock((v8 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v8 + 40));
  }

  sub_1AB2ECE24(a1, v5, x8_0);
  if ((v11 & 1) == 0)
  {
    os_unfair_lock_lock((v8 + 40));
    v12 = *(v8 + 16);
    if (v12)
    {
      v13 = *(v8 + 24);
      v19 = *(v8 + 16);
      v14 = v12;
      v15 = v13;

      v16 = ProcessAssertion.invalidate()();

      if (v16)
      {
        v17 = *(v8 + 16);
        v18 = *(v8 + 24);
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
        sub_1AB05D770(v17, v18);
      }
    }

    os_unfair_lock_unlock((v8 + 40));
  }
}

void sub_1AB2EC3DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = v4;
  v9 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  sub_1AB1F602C(a2, &v22);
  v10 = qword_1EB4359C0;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  v12 = byte_1EB435998;
  if ((byte_1EB435998 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock((v9 + 40));
    sub_1AB2EF31C((v9 + 16));
    if (v5)
    {
      sub_1AB2EF2C4(a2);

      os_unfair_lock_unlock((v9 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v9 + 40));
  }

  sub_1AB1F602C(a2, &v22);

  sub_1AB2ED19C(a1, a2, x8_0);
  if ((v12 & 1) == 0)
  {
    os_unfair_lock_lock((v9 + 40));
    v13 = *(v9 + 16);
    if (v13)
    {
      v15 = *(v9 + 24);
      v14 = *(v9 + 32);
      v22 = *(v9 + 16);
      v23 = v15;
      v24 = v14;
      v16 = v13;
      v17 = v15;

      LOBYTE(v14) = ProcessAssertion.invalidate()();
      v18 = v22;
      v19 = v23;

      if (v14)
      {
        v20 = *(v9 + 16);
        v21 = *(v9 + 24);
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        sub_1AB05D770(v20, v21);
      }
    }

    os_unfair_lock_unlock((v9 + 40));
  }

  sub_1AB2EF2C4(a2);

  sub_1AB2EF2C4(a2);
}

void sub_1AB2EC5E4(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, unint64_t a3@<X2>, _BOOL4 a4@<W3>, uint64_t a6@<X8>)
{
  v7 = v6;
  v29 = a4;
  v11 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  sub_1AB1B9C40(a2, a3);
  v12 = qword_1EB4359C0;

  if (v12 != -1)
  {
    v13 = swift_once();
  }

  v14 = byte_1EB435998;
  if ((byte_1EB435998 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v13);
    os_unfair_lock_lock((v11 + 40));
    sub_1AB2EF31C((v11 + 16));
    if (v7)
    {
      sub_1AB03BD58(a2, a3);

      os_unfair_lock_unlock((v11 + 40));
      __break(1u);
      os_unfair_lock_unlock(&v28);
      __break(1u);
      return;
    }

    v7 = 0;
    os_unfair_lock_unlock((v11 + 40));
  }

  v15 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  sub_1AB1B9C40(a2, a3);

  os_unfair_lock_lock((v15 + 24));
  sub_1AB02F0EC((v15 + 16), &v26);
  os_unfair_lock_unlock((v15 + 24));
  if (!v7)
  {
    sub_1AB1F57B4(v26, a2, a3, v29, a6);
    os_unfair_lock_lock((v15 + 24));
    sub_1AB05B000((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));
  }

  sub_1AB03BD58(a2, a3);

  if ((v14 & 1) == 0)
  {
    os_unfair_lock_lock((v11 + 40));
    v16 = *(v11 + 16);
    if (v16)
    {
      v18 = *(v11 + 24);
      v17 = *(v11 + 32);
      v26 = *(v11 + 16);
      v27 = v18;
      v28 = v17;
      v19 = v16;
      v20 = v18;

      v29 = ProcessAssertion.invalidate()();
      v22 = v26;
      v21 = v27;

      if (v29)
      {
        v23 = *(v11 + 16);
        v24 = *(v11 + 24);
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        sub_1AB05D770(v23, v24);
      }
    }

    os_unfair_lock_unlock((v11 + 40));
  }

  sub_1AB03BD58(a2, a3);

  sub_1AB03BD58(a2, a3);
}

void sub_1AB2EC8C0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EB4359C0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EB435998)
  {
    sub_1AB2ED2C4(a1, v3);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1AB2EF31C((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1AB2ED2C4(a1, v3);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v15 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          sub_1AB05D770(v13, v14);
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1AB2ECA80(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EB4359C0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EB435998)
  {
    sub_1AB2ED3BC(a1, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1AB2EF31C((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1AB2ED3BC(a1, a2);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v15 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          sub_1AB05D770(v13, v14);
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1AB2ECC40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v8 = qword_1EB4359C0;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  if (byte_1EB435998)
  {
    sub_1AB2ED5C4(a1, a2, a3);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock((v7 + 40));
    sub_1AB2EF31C((v7 + 16));
    if (v3)
    {
      os_unfair_lock_unlock((v7 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v7 + 40));
      sub_1AB2ED5C4(a1, a2, a3);
      os_unfair_lock_lock((v7 + 40));
      v10 = *(v7 + 16);
      if (v10)
      {
        v11 = *(v7 + 24);
        v15 = *(v7 + 16);
        v12 = v10;
        v13 = v11;

        v14 = ProcessAssertion.invalidate()();

        if (v14)
        {
          sub_1AB05D770(*(v7 + 16), *(v7 + 24));
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          *(v7 + 32) = 0;
        }
      }

      os_unfair_lock_unlock((v7 + 40));
    }
  }
}

void sub_1AB2ECE24(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v6 + 24));
  sub_1AB02F0EC((v6 + 16), &v7);
  os_unfair_lock_unlock((v6 + 24));
  if (!v3)
  {
    sub_1AB1F42C4(v7, a2, a3);
    os_unfair_lock_lock((v6 + 24));
    sub_1AB05B000((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }
}

void sub_1AB2ECF40(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v2 + 24));
  sub_1AB02F0EC((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
    sub_1AB1F46BC(v3, &v4);
    os_unfair_lock_lock((v2 + 24));
    sub_1AB05B000((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

void sub_1AB2ED050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v6 + 24));
  sub_1AB02F0EC((v6 + 16), &v7);
  os_unfair_lock_unlock((v6 + 24));
  if (v3)
  {
  }

  else
  {
    sub_1AB1F4A40(v7, a2, a3, &v8);
    os_unfair_lock_lock((v6 + 24));
    sub_1AB05B000((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }
}

void sub_1AB2ED19C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v6 + 24));
  sub_1AB02F0EC((v6 + 16), &v7);
  os_unfair_lock_unlock((v6 + 24));
  if (!v3)
  {
    sub_1AB1F4F0C(v7, a2, a3);
    os_unfair_lock_lock((v6 + 24));
    sub_1AB05B000((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }

  sub_1AB2EF2C4(a2);
}

void sub_1AB2ED2C4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1AB02F0EC((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    sub_1AB1F5474(v5, a2);
    os_unfair_lock_lock((v4 + 24));
    sub_1AB05B000((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1AB2ED3BC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1AB02F0EC((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    sub_1AB3638D0(v5, v3);
    os_unfair_lock_lock((v4 + 24));
    sub_1AB05B000((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1AB2ED4B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1AB02F0EC((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    sub_1AB365218(v5, a2, &v6);
    os_unfair_lock_lock((v4 + 24));
    sub_1AB05B000((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }

  sub_1AB180CEC(a2);
}

void sub_1AB2ED5C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v6 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v6 + 24));
  sub_1AB02F0EC((v6 + 16), &v7);
  os_unfair_lock_unlock((v6 + 24));
  if (!v3)
  {
    sub_1AB367F50(v7, v4, a3);
    os_unfair_lock_lock((v6 + 24));
    sub_1AB05B000((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }
}

void sub_1AB2ED6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v6 + 24));
  sub_1AB02F0EC((v6 + 16), &v7);
  os_unfair_lock_unlock((v6 + 24));
  if (v3)
  {
  }

  else
  {
    sub_1AB36849C(v7, a2, a3, &v8);
    os_unfair_lock_lock((v6 + 24));
    sub_1AB05B000((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }
}

uint64_t sub_1AB2ED7DC()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB05B000((v1 + 16));
  os_unfair_lock_unlock((*(v0 + 48) + 24));
  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetSQLiteDatabase.checkDB()()
{
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v4 = qword_1EB4359C0;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  v6 = byte_1EB435998;
  if ((byte_1EB435998 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v3 + 40));
    sub_1AB02B560((v3 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v3 + 40));
      __break(1u);
      os_unfair_lock_unlock(&v17);
      __break(1u);
      return;
    }

    v2 = 0;
    os_unfair_lock_unlock((v3 + 40));
  }

  v7 = *(v0 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v7 + 24));
  sub_1AB02F230((v7 + 16), &v15);
  if (!v2)
  {
    os_unfair_lock_unlock((v7 + 24));

    os_unfair_lock_lock((v7 + 24));
    sub_1AB05B000((v7 + 16));
  }

  os_unfair_lock_unlock((v7 + 24));
  if ((v6 & 1) == 0)
  {
    os_unfair_lock_lock((v3 + 40));
    v8 = *(v3 + 16);
    if (v8)
    {
      v10 = *(v3 + 24);
      v9 = *(v3 + 32);
      v15 = *(v3 + 16);
      v16 = v10;
      v17 = v9;
      v11 = v8;
      v12 = v10;

      LOBYTE(v9) = ProcessAssertion.invalidate()();
      v13 = v15;
      v14 = v16;

      if (v9)
      {
        sub_1AB05D770(*(v3 + 16), *(v3 + 24));
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
      }
    }

    os_unfair_lock_unlock((v3 + 40));
  }
}

const char *sub_1AB2EDA74(uint64_t *a1)
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73 - v9;
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_db) + 24));
  if (*a1)
  {
    v4 = *a1;

    return v4;
  }

  v82 = v5;
  v74 = a1;
  v83 = v1;
  v81 = OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_url;
  v11 = sub_1AB45F6E4();
  v13 = v12;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v77 = qword_1EB435770;
  sub_1AB4622E4();
  v14 = v93;
  v80 = v94;
  v79 = __swift_project_boxed_opaque_existential_1Tm(v92, v93);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v15 = swift_allocObject();
  v75 = xmmword_1AB4D4720;
  *(v15 + 16) = xmmword_1AB4D4720;
  v95 = sub_1AB0168A8(0, 42, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0xD000000000000029;
  v16._object = 0x80000001AB508CE0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v91 = MEMORY[0x1E69E6158];
  v78 = v11;
  v89 = v11;
  v90 = v13;
  sub_1AB01522C(&v89, v85);
  v86 = 0u;
  v87 = 0u;

  sub_1AB0169C4(v85, &v86);
  v88 = 0;
  v17 = v95;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    v95 = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[40 * v20];
  v22 = v86;
  v23 = v87;
  v21[64] = v88;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v95 = v17;
  sub_1AB0167A8(&v89);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v15 + 32) = v95;
  Logger.info(_:)(v15, v14, v80);

  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  v25 = OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_mode;
  v26 = v83;
  v27 = (v82 + 2);
  if (*(v83 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_mode) == 1)
  {
    v28 = v78;
    v29 = sub_1AB2EEC88(v78, v13);
    (*v27)(v10, v26 + v81, v4);
    type metadata accessor for SQLiteConnection();
    swift_allocObject();
    v30 = v84;
    v31 = sub_1AB02F104(v10, 3211270);
    if (v30)
    {

      return v4;
    }

    v4 = v31;

    if ((v29 & 1) == 0)
    {
      sub_1AB2EEC88(v28, v13);
    }
  }

  else
  {

    (*v27)(v7, v26 + v81, v4);
    type metadata accessor for SQLiteConnection();
    swift_allocObject();
    v32 = v84;
    v33 = sub_1AB02F104(v7, 65542);
    if (v32)
    {
      return v4;
    }

    v4 = v33;
  }

  sub_1AB24B5B4();
  v35 = v34;

  sub_1AB4622E4();
  v37 = v93;
  v36 = v94;
  v82 = __swift_project_boxed_opaque_existential_1Tm(v92, v93);
  v38 = v26;
  v39 = swift_allocObject();
  *(v39 + 16) = v75;
  v95 = sub_1AB0168A8(0, 70, 0, MEMORY[0x1E69E7CC0]);
  v40._countAndFlagsBits = 0xD00000000000001FLL;
  v40._object = 0x80000001AB508D10;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v41 = *(v38 + v25);
  v91 = &type metadata for AssetSQLiteDatabase.Mode;
  LOBYTE(v89) = v41;
  sub_1AB01522C(&v89, v85);
  v86 = 0u;
  v87 = 0u;
  sub_1AB0169C4(v85, &v86);
  v88 = 0;
  v42 = v95;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v84 = 0;
  if ((v43 & 1) == 0)
  {
    v42 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
  }

  v45 = *(v42 + 2);
  v44 = *(v42 + 3);
  if (v45 >= v44 >> 1)
  {
    v42 = sub_1AB0168A8((v44 > 1), v45 + 1, 1, v42);
  }

  *(v42 + 2) = v45 + 1;
  v46 = &v42[40 * v45];
  v47 = v86;
  v48 = v87;
  v46[64] = v88;
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  v95 = v42;
  sub_1AB0167A8(&v89);
  v49._countAndFlagsBits = 0xD000000000000013;
  v49._object = 0x80000001AB508D30;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  result = sqlite3_libversion();
  if (result)
  {
    v51 = MEMORY[0x1AC59B980]();
    v53 = 0x6E776F6E6B6E7528;
    if (v52)
    {
      v53 = v51;
    }

    v54 = 0xE900000000000029;
    if (v52)
    {
      v54 = v52;
    }

    *&v86 = v53;
    *(&v86 + 1) = v54;
    v55 = MEMORY[0x1E69E6158];
    v56 = sub_1AB4607D4();
    v91 = v55;
    v89 = v56;
    v90 = v57;
    sub_1AB01522C(&v89, v85);
    v86 = 0u;
    v87 = 0u;
    sub_1AB0169C4(v85, &v86);
    v88 = 0;
    v58 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1AB0168A8(0, *(v58 + 2) + 1, 1, v58);
      v95 = v58;
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_1AB0168A8((v59 > 1), v60 + 1, 1, v58);
    }

    *(v58 + 2) = v60 + 1;
    v61 = &v58[40 * v60];
    v62 = v86;
    v63 = v87;
    v61[64] = v88;
    *(v61 + 2) = v62;
    *(v61 + 3) = v63;
    v95 = v58;
    sub_1AB0167A8(&v89);
    v64._object = 0x80000001AB508D50;
    v64._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v64);
    v91 = MEMORY[0x1E69E72F0];
    LODWORD(v89) = v35;
    sub_1AB01522C(&v89, v85);
    v86 = 0u;
    v87 = 0u;
    sub_1AB0169C4(v85, &v86);
    v88 = 0;
    v65 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1AB0168A8(0, *(v65 + 2) + 1, 1, v65);
      v95 = v65;
    }

    v67 = *(v65 + 2);
    v66 = *(v65 + 3);
    if (v67 >= v66 >> 1)
    {
      v65 = sub_1AB0168A8((v66 > 1), v67 + 1, 1, v65);
    }

    *(v65 + 2) = v67 + 1;
    v68 = &v65[40 * v67];
    v69 = v86;
    v70 = v87;
    v68[64] = v88;
    *(v68 + 2) = v69;
    *(v68 + 3) = v70;
    v95 = v65;
    sub_1AB0167A8(&v89);
    v71._countAndFlagsBits = 41;
    v71._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v71);
    *(v39 + 32) = v95;
    Logger.info(_:)(v39, v37, v36);

    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    if (qword_1EB4341F8 != -1)
    {
      swift_once();
    }

    v72 = v84;
    sub_1AB02E4DC(qword_1EB434200, *algn_1EB434208, qword_1EB434210);
    if (v72)
    {
    }

    else
    {
      if (*(v83 + v25))
      {
        sub_1AB369050(v4);
      }

      sub_1AB24B8BC(1);
      *v74 = v4;
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AssetSQLiteDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_url;
  v2 = sub_1AB45F764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

unint64_t sub_1AB2EE400()
{
  result = qword_1EB43A898;
  if (!qword_1EB43A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A898);
  }

  return result;
}

void sub_1AB2EE4AC(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v4 = qword_1EB4359C0;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  v6 = byte_1EB435998;
  if ((byte_1EB435998 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v3 + 40));
    sub_1AB2EF31C((v3 + 16));
    if (v1)
    {

      os_unfair_lock_unlock((v3 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v3 + 40));
  }

  sub_1AB2ECF40(a1);
  if ((v6 & 1) == 0)
  {
    os_unfair_lock_lock((v3 + 40));
    v7 = *(v3 + 16);
    if (v7)
    {
      v8 = *(v3 + 24);
      v14 = *(v3 + 16);
      v9 = v7;
      v10 = v8;

      v11 = ProcessAssertion.invalidate()();

      if (v11)
      {
        v12 = *(v3 + 16);
        v13 = *(v3 + 24);
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        sub_1AB05D770(v12, v13);
      }
    }

    os_unfair_lock_unlock((v3 + 40));
  }
}

void sub_1AB2EE67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v8 = qword_1EB4359C0;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  v10 = byte_1EB435998;
  if (byte_1EB435998)
  {
LABEL_6:

    sub_1AB2ED050(a1, a2, a3);
    if (v3)
    {
      if ((v10 & 1) == 0)
      {
        os_unfair_lock_lock((v7 + 40));
        v12 = (v7 + 16);
        v11 = *(v7 + 16);
        if (v11)
        {
LABEL_12:
          v13 = *(v7 + 24);
          v18 = *(v7 + 16);
          v14 = v11;
          v15 = v13;

          v19 = ProcessAssertion.invalidate()();

          if (v19)
          {
            v16 = *(v7 + 16);
            v17 = *(v7 + 24);
            *v12 = 0;
            v12[1] = 0;
            v12[2] = 0;
            sub_1AB05D770(v16, v17);
          }
        }

LABEL_14:
        os_unfair_lock_unlock((v7 + 40));
      }
    }

    else if ((v10 & 1) == 0)
    {
      os_unfair_lock_lock((v7 + 40));
      v12 = (v7 + 16);
      v11 = *(v7 + 16);
      if (v11)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    return;
  }

  MEMORY[0x1EEE9AC00](v9);
  os_unfair_lock_lock((v7 + 40));
  sub_1AB2EF31C((v7 + 16));
  if (!v3)
  {
    os_unfair_lock_unlock((v7 + 40));
    v3 = 0;
    goto LABEL_6;
  }

  os_unfair_lock_unlock((v7 + 40));
  __break(1u);
}

void sub_1AB2EE8E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  sub_1AB180CB4(a2, &v17);
  v7 = qword_1EB4359C0;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  v9 = byte_1EB435998;
  if ((byte_1EB435998 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock((v6 + 40));
    sub_1AB2EF31C((v6 + 16));
    if (v3)
    {
      sub_1AB180CEC(a2);
      os_unfair_lock_unlock((v6 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v6 + 40));
  }

  sub_1AB180CB4(a2, &v17);
  sub_1AB2ED4B4(a1, a2);
  if ((v9 & 1) == 0)
  {
    os_unfair_lock_lock((v6 + 40));
    v10 = *(v6 + 16);
    if (v10)
    {
      v12 = *(v6 + 24);
      v11 = *(v6 + 32);
      v17 = *(v6 + 16);
      v18 = v12;
      v19 = v11;
      v13 = v10;
      v14 = v12;

      LOBYTE(v11) = ProcessAssertion.invalidate()();
      v15 = v17;
      v16 = v18;

      if (v11)
      {
        sub_1AB05D770(*(v6 + 16), *(v6 + 24));
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
      }
    }

    os_unfair_lock_unlock((v6 + 40));
  }

  sub_1AB180CEC(a2);
}

void sub_1AB2EEAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v8 = qword_1EB4359C0;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  v10 = byte_1EB435998;
  if ((byte_1EB435998 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock((v7 + 40));
    sub_1AB2EF31C((v7 + 16));
    if (v3)
    {

      os_unfair_lock_unlock((v7 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v7 + 40));
  }

  sub_1AB2ED6BC(a1, a2, a3);
  if ((v10 & 1) == 0)
  {
    os_unfair_lock_lock((v7 + 40));
    v11 = *(v7 + 16);
    if (v11)
    {
      v12 = *(v7 + 24);
      v16 = *(v7 + 16);
      v13 = v11;
      v14 = v12;

      v15 = ProcessAssertion.invalidate()();

      if (v15)
      {
        sub_1AB05D770(*(v7 + 16), *(v7 + 24));
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
      }
    }

    os_unfair_lock_unlock((v7 + 40));
  }
}

uint64_t sub_1AB2EEC88(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1AB460514();
  v4 = [v2 fileExistsAtPath_];

  if (!v4)
  {
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v29 = v47;
    v30 = v48;
    __swift_project_boxed_opaque_existential_1Tm(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1AB4D4720;
    *(&v43 + 1) = MEMORY[0x1E69E6158];
    *&v42 = 0xD000000000000020;
    *(&v42 + 1) = 0x80000001AB508D70;
    *(v32 + 48) = 0u;
    *(v32 + 32) = 0u;
    sub_1AB0169C4(&v42, v32 + 32);
    *(v32 + 64) = 0;
    *(v31 + 32) = v32;
    Logger.info(_:)(v31, v29, v30);
    goto LABEL_21;
  }

  v5 = sub_1AB460514();
  v46[0] = 0;
  v6 = [v2 attributesOfItemAtPath:v5 error:v46];

  v7 = v46[0];
  if (!v6)
  {
    v33 = v46[0];
    v34 = sub_1AB45F594();

    swift_willThrow();
    goto LABEL_18;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1AB2EF26C();
  v8 = sub_1AB4602F4();
  v9 = v7;

  if (!*(v8 + 16) || (v10 = sub_1AB1DB6F4(), (v11 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_1AB0165C4(*(v8 + 56) + 32 * v10, v46);

  type metadata accessor for FileProtectionType(0);
  v13 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v35 = v47;
    v36 = v48;
    __swift_project_boxed_opaque_existential_1Tm(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1AB4D4720;
    *(&v43 + 1) = MEMORY[0x1E69E6158];
    *&v42 = 0xD00000000000002ALL;
    *(&v42 + 1) = 0x80000001AB508DA0;
    *(v38 + 48) = 0u;
    *(v38 + 32) = 0u;
    sub_1AB0169C4(&v42, v38 + 32);
    *(v38 + 64) = 0;
    *(v37 + 32) = v38;
    Logger.warning(_:)(v37, v35, v36);
LABEL_21:

    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    return 0;
  }

  v14 = v42;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v15 = v47;
  v16 = v48;
  __swift_project_boxed_opaque_existential_1Tm(v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AB4D4720;
  v40 = sub_1AB0168A8(0, 46, 0, MEMORY[0x1E69E7CC0]);
  v18._countAndFlagsBits = 0xD00000000000002DLL;
  v18._object = 0x80000001AB508DD0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v45[3] = v13;
  v45[0] = v14;
  sub_1AB01522C(v45, v41);
  v42 = 0u;
  v43 = 0u;
  v19 = v14;
  sub_1AB0169C4(v41, &v42);
  v44 = 0;
  v20 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    v39 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
    v23 = v22 + 1;
    v20 = v39;
  }

  *(v20 + 2) = v23;
  v24 = &v20[40 * v22];
  v25 = v42;
  v26 = v43;
  v24[64] = v44;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  sub_1AB0167A8(v45);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v17 + 32) = v20;
  Logger.info(_:)(v17, v15, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return 1;
}

unint64_t sub_1AB2EF26C()
{
  result = qword_1EB436478;
  if (!qword_1EB436478)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436478);
  }

  return result;
}

uint64_t sub_1AB2EF35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[1];
  if (*(v4[2] + 16))
  {
    sub_1AB014DB4(a1, a2);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437488, &qword_1AB4D7D90);
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v12;
      }
    }
  }

  if (v7)
  {
    if (*((*(v8 + 16))(v7, v8, a3) + 16) && (sub_1AB014DB4(a1, a2), (v10 & 1) != 0))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436970, &qword_1AB4D4700);
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v12;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t AnyIntentTypes.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  result = sub_1AB067588(MEMORY[0x1E69E7CC0]);
  a1[2] = result;
  return result;
}

unint64_t AnyIntentTypes.register<A>(_:forKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v6 + 16);
  result = sub_1AB1D6354(a1, a5, a6, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v6 + 16) = v14;
  return result;
}

unint64_t AnyIntentTypes.registering<A>(_:forKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v13 = *(v6 + 16);
  *a6 = *v6;
  *(a6 + 16) = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1AB1D6354(a1, a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a6 + 16) = v13;
  return result;
}

uint64_t AnyIntentTypes.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(v13, a2, a4);
  v8 = v13[0];
  v9 = v13[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 16);
  sub_1AB1D6354(a1, a3, a4, v8, v9, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v12;
  return result;
}

uint64_t AnyIntentTypes.registering<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(v5 + 16);
  *a5 = *v5;
  *(a5 + 16) = v10;

  return AnyIntentTypes.register<A>(_:)(a1, a2, a3, a4);
}

uint64_t Unstable.AccountHandle.forWriting.getter()
{
  [*v0 copy];
  sub_1AB461494();
  swift_unknownObjectRelease();
  sub_1AB2EF818();
  swift_dynamicCast();
  return v2;
}

unint64_t sub_1AB2EF818()
{
  result = qword_1EB432328;
  if (!qword_1EB432328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB432328);
  }

  return result;
}

uint64_t sub_1AB2EF874(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
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
  v35 = a1;

  v8 = 0;
  while (v5)
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v8 << 6);
    v12 = (*(v35 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1AB0165C4(*(v35 + 56) + 32 * v11, v33);
    *&v32 = v14;
    *(&v32 + 1) = v13;
    v29 = v32;
    v30 = v33[0];
    v31 = v33[1];
    sub_1AB0165C4(&v30, v28);
    v26 = v29;
    v27[0] = v30;
    v27[1] = v31;
    sub_1AB014B78(v28, v25);
    v15 = *(v1 + 16);
    if (*(v1 + 24) <= v15)
    {

      sub_1AB01AF68(v15 + 1, 1);
      v1 = v34;
    }

    else
    {
    }

    v16 = v26;
    sub_1AB4620A4();
    sub_1AB460684();
    result = sub_1AB462104();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v17 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_6;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_6:
    v5 &= v5 - 1;
    *(v17 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v1 + 48) + 16 * v9) = v16;
    sub_1AB014B78(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1AB2EFAF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8A8, &qword_1AB4E9328);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v9[3] = &type metadata for SyncTaskScheduler;
  v9[4] = &protocol witness table for SyncTaskScheduler;
  v7[0] = sub_1AB2F1480;
  v7[1] = v5;
  v7[2] = sub_1AB2F1490;
  v7[3] = v2;
  sub_1AB01494C(v9, v8);
  v8[40] = 0;
  swift_retain_n();

  sub_1AB198A10(v7);

  sub_1AB014AC0(v7, &unk_1EB43D260, &qword_1AB4D8C70);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v2;
}

uint64_t sub_1AB2EFC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v11[3] = &type metadata for SyncTaskScheduler;
  v11[4] = &protocol witness table for SyncTaskScheduler;
  v9[0] = sub_1AB2F1494;
  v9[1] = v7;
  v9[2] = sub_1AB2F151C;
  v9[3] = a4;
  sub_1AB01494C(v11, v10);
  v10[40] = 0;
  swift_retain_n();
  sub_1AB1998F8(a1, a2);

  sub_1AB198614(v9);

  sub_1AB014AC0(v9, &unk_1EB437800, &qword_1AB4D8C78);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

double sub_1AB2EFD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v3[32] = a1;

  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A610, &unk_1AB4EA9B0);
    v8 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = MEMORY[0x1E69E7CC8];
    *(v8 + 16) = v9;
    *(v8 + 24) = v10;
    *(v8 + 32) = 1;
  }

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a3;
  v11[5] = v7;

  v12 = sub_1AB2F0D4C(sub_1AB2F14FC, v11);

  v3[30] = v12;

  return result;
}

uint64_t sub_1AB2EFEC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439DB0, &qword_1AB4D6A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  *(inited + 32) = a3;
  *(inited + 40) = v6;

  v8 = sub_1AB2F116C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
  swift_arrayDestroy();
  v9 = sub_1AB2F0430(v8, a4);

  return v9;
}

double sub_1AB2EFFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v4[33] = a1;

  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A610, &unk_1AB4EA9B0);
    v9 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = MEMORY[0x1E69E7CC8];
    *(v9 + 16) = v14;
    *(v9 + 24) = v15;
    *(v9 + 32) = 1;
    if (v4[30])
    {
      goto LABEL_3;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8A0, ",");
    v16 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = v17;
    *(v16 + 40) = 1;

    goto LABEL_6;
  }

  v9 = a2;
  if (!v4[30])
  {
    goto LABEL_5;
  }

LABEL_3:
  v24[3] = &type metadata for SyncTaskScheduler;
  v24[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8A0, ",");
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  v13 = swift_allocObject();
  v13[2] = sub_1AB2F0308;
  v13[3] = 0;
  v13[4] = v10;
  v22[0] = sub_1AB2F1418;
  v22[1] = v13;
  v22[2] = sub_1AB2F1424;
  v22[3] = v10;
  sub_1AB01494C(v24, v23);
  v23[40] = 0;

  swift_retain_n();
  sub_1AB0800FC(v22);

  sub_1AB014AC0(v22, &unk_1EB437970, &unk_1AB4D8E00);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
LABEL_6:
  sub_1AB2EFAF4(v9);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = v8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AB2F142C;
  *(v19 + 24) = v18;

  v20 = sub_1AB2F0FF0(sub_1AB2F1438, v19);

  v4[31] = v20;

  return result;
}

uint64_t sub_1AB2F0308@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_1AB2F033C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439DB0, &qword_1AB4D6A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  *(inited + 32) = a4;
  *(inited + 40) = a2;

  v11 = sub_1AB2F116C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
  swift_arrayDestroy();
  v14[0] = v8;
  v14[1] = v9;
  v12 = sub_1AB2F057C(v11, a5, v14);

  return v12;
}

uint64_t sub_1AB2F0430(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58, &unk_1AB4DCF70);
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v4 + 16) = v5;
    *(v4 + 24) = a1;
    *(v4 + 32) = MEMORY[0x1E69E7CC0];
    *(v4 + 40) = 1;
  }

  else
  {
    v7 = *(v2 + 216);
    v6 = *(v2 + 224);

    v8 = sub_1AB1914C4(&unk_1F1FF4110);
    sub_1AB2D82C8(&unk_1F1FF4130);
    v11[0] = v7;
    v11[1] = v6;
    v12 = 0;
    v13 = a1;
    v14 = v8;
    v15 = sub_1AB2F122C(a1);

    v10 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    v4 = MetricsPipeline.process(_:using:)(v11, &v10);
  }

  return v4;
}

uint64_t sub_1AB2F057C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *a3;
  if (*a3)
  {
    v92 = MEMORY[0x1E69E7CD0];
    v8 = sub_1AB460544();
    v10 = v9;
    if (*(v6 + 16))
    {
      v11 = v8;

      v12 = sub_1AB014DB4(v11, v10);
      v14 = v13;

      if (v14)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v12, v91);
        sub_1AB014B78(v91, &v93);
        v15 = sub_1AB460544();
        v17 = v16;
        sub_1AB0165C4(&v93, v91);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v91, v15, v17, isUniquelyReferenced_nonNull_native);

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }
    }

    else
    {
    }

    v22 = sub_1AB460544();
    if (*(v6 + 16))
    {
      v24 = sub_1AB014DB4(v22, v23);
      v26 = v25;

      if (v26)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v24, v91);
        sub_1AB014B78(v91, &v93);
        v27 = sub_1AB460544();
        v29 = v28;
        sub_1AB0165C4(&v93, v91);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v91, v27, v29, v30);

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }
    }

    else
    {
    }

    v31 = sub_1AB460544();
    if (*(v6 + 16))
    {
      v33 = sub_1AB014DB4(v31, v32);
      v35 = v34;

      if (v35)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v33, v91);
        sub_1AB014B78(v91, &v93);
        v36 = sub_1AB460544();
        v38 = v37;
        sub_1AB0165C4(&v93, v91);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v91, v36, v38, v39);

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }
    }

    else
    {
    }

    v40 = sub_1AB460544();
    if (*(v6 + 16))
    {
      v42 = sub_1AB014DB4(v40, v41);
      v44 = v43;

      if (v44)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v42, v91);
        sub_1AB014B78(v91, &v93);
        v45 = sub_1AB460544();
        v47 = v46;
        sub_1AB0165C4(&v93, v91);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v91, v45, v47, v48);

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }
    }

    else
    {
    }

    v49 = sub_1AB460544();
    if (*(v6 + 16))
    {
      v51 = sub_1AB014DB4(v49, v50);
      v53 = v52;

      if (v53)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v51, v91);
        sub_1AB014B78(v91, &v93);
        v54 = sub_1AB460544();
        v56 = v55;
        sub_1AB0165C4(&v93, v91);
        v57 = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v91, v54, v56, v57);

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }
    }

    else
    {
    }

    v58 = sub_1AB460544();
    if (*(v6 + 16))
    {
      v60 = sub_1AB014DB4(v58, v59);
      v62 = v61;

      if (v62)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v60, v91);
        sub_1AB014B78(v91, &v93);
        v63 = sub_1AB460544();
        v65 = v64;
        sub_1AB0165C4(&v93, v91);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v91, v63, v65, v66);

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }
    }

    else
    {
    }

    v67 = sub_1AB460544();
    if (*(v6 + 16))
    {
      v69 = sub_1AB014DB4(v67, v68);
      v71 = v70;

      if (v71)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v69, v91);
        sub_1AB014B78(v91, &v93);
        if (a2 == 1)
        {
          v72 = sub_1AB460544();
          v74 = v73;
          sub_1AB0165C4(&v93, v91);
          v75 = swift_isUniquelyReferenced_nonNull_native();
          sub_1AB01AE18(v91, v72, v74, v75);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }
    }

    else
    {
    }

    v76 = sub_1AB460544();
    if (*(v6 + 16))
    {
      v78 = sub_1AB014DB4(v76, v77);
      v80 = v79;

      if (v80)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v78, v91);
        sub_1AB014B78(v91, &v93);
        v81 = sub_1AB460544();
        v83 = v82;
        sub_1AB0165C4(&v93, v91);
        v84 = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v91, v81, v83, v84);

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
LABEL_39:
        v85 = *(v4 + 216);
        v86 = *(v4 + 224);
        v87 = v92;

        v88 = sub_1AB2F122C(a1);
        *&v93 = v85;
        *(&v93 + 1) = v86;
        v94 = 0;
        v95 = a1;
        v96 = v87;
        v97 = v88;
        goto LABEL_40;
      }
    }

    else
    {
    }

    sub_1AB248ABC(&v93, 1682535268, 0xE400000000000000);

    goto LABEL_39;
  }

  v20 = *(v3 + 216);
  v19 = *(v3 + 224);

  v21 = sub_1AB1914C4(&unk_1F1FF4140);
  sub_1AB2D82C8(&unk_1F1FF4160);
  *&v93 = v20;
  *(&v93 + 1) = v19;
  v94 = 0;
  v95 = a1;
  v96 = v21;
  v97 = sub_1AB2F122C(a1);

LABEL_40:
  *&v91[0] = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v89 = MetricsPipeline.process(_:using:)(&v93, v91);

  return v89;
}

uint64_t sub_1AB2F0CC8()
{
  sub_1AB056154(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB2F0D4C(uint64_t a1, uint64_t a2)
{
  v12[3] = &type metadata for SyncTaskScheduler;
  v12[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58, &unk_1AB4DCF70);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB2F1508;
  v9[1] = v7;
  v9[2] = sub_1AB1606E0;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB198614(v9);

  sub_1AB014AC0(v9, &unk_1EB437800, &qword_1AB4D8C78);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

uint64_t sub_1AB2F0EC8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = a3[1];
  sub_1AB1998F8(*a3, v5);

  sub_1AB434698(v4, v5, v3);
  sub_1AB1998B8(v4, v5);
}

uint64_t sub_1AB2F0F3C(__int128 *a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v7 = *a1;
  a2(&v5, &v7);
  v2 = v5;
  v3 = v6;
  sub_1AB434974(v5, v6);

  return sub_1AB1998B8(v2, v3);
}

uint64_t sub_1AB2F0FF0(uint64_t a1, uint64_t a2)
{
  v12[3] = &type metadata for SyncTaskScheduler;
  v12[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58, &unk_1AB4DCF70);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB2F1464;
  v9[1] = v7;
  v9[2] = sub_1AB1606E0;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB198818(v9);

  sub_1AB014AC0(v9, &unk_1EB4377F0, &unk_1AB4E4620);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

uint64_t sub_1AB2F116C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC8];
  do
  {
    v2 += 8;

    v5 = sub_1AB2EF874(v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v3;
    sub_1AB033AB8(v5, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v8);

    v3 = v8;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1AB2F122C(uint64_t a1)
{
  v11 = MEMORY[0x1E69E7CD0];
  if (*(a1 + 16) && (v2 = sub_1AB014DB4(0x6D6954746E657665, 0xE900000000000065), (v3 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v2, &v9);
    sub_1AB014AC0(&v9, &unk_1EB437E60, &qword_1AB4D4730);
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    *(&v10 + 1) = MEMORY[0x1E69E6158];
    *&v9 = 0xD00000000000006FLL;
    *(&v9 + 1) = 0x80000001AB508EE0;
    *(v6 + 48) = 0u;
    *(v6 + 32) = 0u;
    sub_1AB0169C4(&v9, v6 + 32);
    *(v6 + 64) = 0;
    *(v5 + 32) = v6;
    *&v9 = v4;
    v8 = 3;
    OSLogger.log(contentsOf:withLevel:)(v5, &v8);

    sub_1AB248AA0(&v9, 0x6D6954746E657665, 0xE900000000000065);

    return v11;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    sub_1AB014AC0(&v9, &unk_1EB437E60, &qword_1AB4D4730);
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t objectdestroy_19Tm_1(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

unint64_t IntentDispatcherError.errorDescription.getter()
{
  v1 = 0xD0000000000000A5;
  if (*v0 == 1)
  {
    v1 = 0xD0000000000000C2;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD0000000000000B5;
  }
}

uint64_t IntentDispatcherError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB2F1604()
{
  result = qword_1EB43A8B0;
  if (!qword_1EB43A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A8B0);
  }

  return result;
}

unint64_t sub_1AB2F165C()
{
  v1 = 0xD0000000000000A5;
  if (*v0 == 1)
  {
    v1 = 0xD0000000000000C2;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD0000000000000B5;
  }
}

uint64_t sub_1AB2F16C4()
{
  v2 = sub_1AB0A6E18();
  if (!v1)
  {
    if (*(v2 + 2))
    {

      v5 = *(v0 + 72);
      MEMORY[0x1EEE9AC00](v4);

      os_unfair_lock_lock((v5 + 24));
      sub_1AB2F1D84((v5 + 16), v8);
      os_unfair_lock_unlock((v5 + 24));

      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1Tm(v8, v9);
      v0 = (*(v7 + 56))(v6, v7);
      sub_1AB2F1D30(v8);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v0;
}

void *sub_1AB2F1808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 72);
  v15[2] = a3;
  v15[3] = a4;

  os_unfair_lock_lock((v8 + 24));
  v9 = v15;
  sub_1AB2F1D10((v8 + 16), v20);
  os_unfair_lock_unlock((v8 + 24));

  if (!v5)
  {
    v10 = v21;
    v11 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    (*(v11 + 24))(v19, a1, a2, v10, v11);
    sub_1AB01EC0C(v19, v16);
    v12 = v17;
    if (v17)
    {
      v13 = v18;
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v9 = (*(v13 + 24))(v12, v13);
      sub_1AB066D84(v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_1AB066D84(v19);
      sub_1AB18977C(v16);
      v9 = 0;
    }

    sub_1AB2F1D30(v20);
  }

  return v9;
}

uint64_t sub_1AB2F1958@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a2;
  v10 = sub_1AB45F764();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v42 = a1;
  v17 = *a1;
  if (*(v17 + 16) && (v18 = sub_1AB014DB4(v47, a3), (v19 & 1) != 0))
  {
    result = sub_1AB1DB570(*(v17 + 56) + 40 * v18, &v44);
    v21 = v45;
    *a5 = v44;
    *(a5 + 16) = v21;
    *(a5 + 32) = v46;
  }

  else
  {
    v40 = a5;
    sub_1AB45F634();
    *&v44 = v47;
    *(&v44 + 1) = a3;

    MEMORY[0x1AC59BA20](0x6E6F736A2ELL, 0xE500000000000000);
    v41 = a3;
    sub_1AB45F664();

    v22 = *(v11 + 8);
    v22(v13, v10);
    v23 = sub_1AB45F5E4();
    v25 = v24;
    v22(v16, v10);
    v26 = a4[5];
    v27 = a4[6];
    __swift_project_boxed_opaque_existential_1Tm(a4 + 2, v26);
    v28 = JetPackResourceBundle.fileData(atPath:)(v23, v25, v26, v27);
    if (v5)
    {
    }

    else
    {
      v30 = v28;
      v31 = v29;
      v32 = v47;
      v33 = v41;

      if (v31 >> 60 == 15)
      {
        v34 = *a4;
        sub_1AB163664();
        swift_allocError();
        v35 = MEMORY[0x1E69E7CC0];
        *v36 = v34;
        v36[1] = v35;
        v36[2] = 0;
        v36[3] = 0;
        return swift_willThrow();
      }

      else
      {
        sub_1AB017200(v30, v31);
        sub_1AB29F748(v30, v31, &v44);
        sub_1AB1DB570(&v44, v43);

        sub_1AB1CE728(v43, v32, v33);
        result = sub_1AB03BD58(v30, v31);
        v37 = v45;
        v38 = v40;
        *v40 = v44;
        v38[1] = v37;
        *(v38 + 4) = v46;
      }
    }
  }

  return result;
}

uint64_t sub_1AB2F1C80()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1AB2F1D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1AB2F1E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027460;

  return Future.then()(a1, a2, a3);
}

uint64_t Future.then()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB2F1F04, 0, 0);
}

uint64_t sub_1AB2F1F04()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  swift_getAssociatedTypeWitness();
  *v4 = v0;
  v4[1] = sub_1AB061DD8;
  v5 = *(v0 + 16);

  return sub_1AB02067C(v5, 0, 0, sub_1AB2F2148, v2);
}

uint64_t sub_1AB2F201C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AB2F234C;
  *(v9 + 24) = v8;
  v11[3] = &type metadata for SyncTaskScheduler;
  v11[4] = &protocol witness table for SyncTaskScheduler;
  (*(a4 + 16))(sub_1AB2F2284, v7, sub_1AB2F2310, v9, v11, a3, a4);

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_1AB2F2168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, a1, AssociatedTypeWitness, v8);
  (*(v7 + 32))(*(*(a2 + 64) + 40), v10, AssociatedTypeWitness);
  return swift_continuation_throwingResume();
}

uint64_t sub_1AB2F2290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  return sub_1AB2F1D9C(&v8, a2, AssociatedTypeWitness, v6, MEMORY[0x1E69E7288]);
}

uint64_t sub_1AB2F2310(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1;
  return v3(a1);
}

uint64_t AppleServicesLocalizerFactory.__allocating_init(localizer:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1AB1580C0(a1, v2 + 16);
  return v2;
}

id AppleServicesLocalizerFactory.jsExport.getter()
{
  v6[3] = *v0;
  v6[4] = &protocol witness table for AppleServicesLocalizerFactory;
  v6[0] = v0;
  v1 = type metadata accessor for JSLocalizerFactoryObject();
  v2 = objc_allocWithZone(v1);
  sub_1AB01494C(v6, v2 + OBJC_IVAR____TtC9JetEngine24JSLocalizerFactoryObject_localizerFactory);
  v5.receiver = v2;
  v5.super_class = v1;

  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v3;
}

uint64_t AppleServicesLocalizerFactory.localizer(forLanguage:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB2F2494, 0, 0);
}

uint64_t sub_1AB2F2494()
{
  sub_1AB01494C(v0[3] + 16, v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t AppleServicesLocalizerFactory.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v9[4] = &protocol witness table for AppleServicesLocalizerFactory;
  v9[3] = v3;
  v9[0] = v1;
  v4 = type metadata accessor for JSLocalizerFactoryObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v9, v5 + OBJC_IVAR____TtC9JetEngine24JSLocalizerFactoryObject_localizerFactory);
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  a1[3] = v4;
  a1[4] = &off_1F1FFA0F0;
  *a1 = v6;
  return result;
}

uint64_t AppleServicesLocalizerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_1AB2F262C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v9[3] = a1;
  v9[4] = a2;
  v9[0] = v3;
  v4 = type metadata accessor for JSLocalizerFactoryObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v9, v5 + OBJC_IVAR____TtC9JetEngine24JSLocalizerFactoryObject_localizerFactory);
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v6;
}

uint64_t sub_1AB2F26BC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AB2F27E8, 0, 0);
}

uint64_t sub_1AB2F26E0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *v2;
  v10[4] = &protocol witness table for AppleServicesLocalizerFactory;
  v10[3] = a1;
  v10[0] = v4;
  v5 = type metadata accessor for JSLocalizerFactoryObject();
  v6 = objc_allocWithZone(v5);
  sub_1AB01494C(v10, v6 + OBJC_IVAR____TtC9JetEngine24JSLocalizerFactoryObject_localizerFactory);
  v9.receiver = v6;
  v9.super_class = v5;

  v7 = objc_msgSendSuper2(&v9, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  a2[3] = v5;
  a2[4] = &off_1F1FFA0F0;
  *a2 = v7;
  return result;
}

double AMSMetricsEventRecorder.withDecorator(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_1AB04B604(a1, a2);
  sub_1AB0177B8(v3, v4);

  return result;
}

void *AMSMetricsEventRecorder.__allocating_init(metrics:defaultTopic:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1AB2F3978(a1, a2, a3);

  return v6;
}

void *AMSMetricsEventRecorder.init(metrics:defaultTopic:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AB2F3978(a1, a2, a3);

  return v4;
}

void *AMSMetricsEventRecorder.__allocating_init(metrics:defaultTopic:anonymousTopics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1AB2F3A5C(a1, a2, a3, a4);

  return v8;
}

void *AMSMetricsEventRecorder.init(metrics:defaultTopic:anonymousTopics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AB2F3A5C(a1, a2, a3, a4);

  return v5;
}

id (*AMSMetricsEventRecorder.monitorsLifecycleEvents.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = [v3 monitorsLifecycleEvents];
  return sub_1AB2F29FC;
}

Swift::Void __swiftcall AMSMetricsEventRecorder.record(_:on:)(JetEngine::LintedMetricsEvent _, Swift::String_optional on)
{
  v6 = *_.fields._rawValue;
  v3 = sub_1AB2F2A9C(&v6, _.issues._rawValue, on.value._countAndFlagsBits);
  if (v3)
  {
    v5 = v3;
    if (v4)
    {
    }

    else
    {
      [*(v2 + 16) enqueueEvent_];
    }
  }
}

id sub_1AB2F2A9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v4 = v3;
  if (!a3)
  {
  }

  v6 = objc_allocWithZone(MEMORY[0x1E698CA08]);

  v7 = sub_1AB460514();

  v8 = [v6 initWithTopic_];

  v9 = v4[11];
  v10 = [v8 topic];
  v11 = sub_1AB460544();
  v13 = v12;

  LOBYTE(v9) = sub_1AB05CF1C(v11, v13, v9);

  if (v9)
  {
    [v8 setAnonymous_];
  }

  v14 = v4[9];
  v15 = v4[10];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 6, v14);
  (*(v15 + 8))(&v25, v14, v15);
  v16 = v25;
  [v8 setAccount_];
  v17 = v4[12];
  if (v17)
  {
    v18 = v4[13];

    v19 = v17(v8);
    sub_1AB0177B8(v17, v18);
  }

  else
  {
    v19 = v8;
  }

  v5 = v19;
  v20 = MEMORY[0x1E69E6158];
  v21 = sub_1AB4602D4();
  [v5 addPropertiesWithDictionary_];

  sub_1AB2F32D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AB4D4720;
  *(v22 + 56) = v20;
  *(v22 + 32) = 0xD000000000000017;
  *(v22 + 40) = 0x80000001AB509310;
  v23 = sub_1AB460934();

  [v5 removePropertiesForKeys_];

  return v5;
}

uint64_t AMSMetricsEventRecorder._recordAsync(_:on:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0, &unk_1AB4D7F60);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = 0;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = 0;
  v22 = *a1;
  v10 = sub_1AB2F2A9C(&v22, a2, a3);
  if (v10)
  {
    v12 = v10;
    if (v11)
    {

      sub_1AB42EC48();
    }

    else
    {
      v13 = *(v3 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548, &qword_1AB4D7F30);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AB4DE160;
      *(v14 + 32) = v12;
      sub_1AB016760(0, &qword_1EB434E60, 0x1E698CA08);
      v15 = v12;
      v16 = sub_1AB460934();

      v17 = [v13 promiseForEnqueueingEvents_];

      v18 = sub_1AB442D90(v17);
      v19 = sub_1AB016760(0, &qword_1ED4D2060, 0x1E69E9610);
      v20 = sub_1AB461124();
      v26[3] = v19;
      v26[4] = &protocol witness table for OS_dispatch_queue;
      v26[0] = v20;
      *&v22 = sub_1AB2F30AC;
      *(&v22 + 1) = 0;
      v23 = sub_1AB2F30B0;
      v24 = 0;
      sub_1AB01494C(v26, v25);
      v25[40] = 0;
      sub_1AB1946AC(&v22);

      sub_1AB014AC0(&v22, &unk_1EB4378E0, &unk_1AB4E4560);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      return v18;
    }
  }

  else
  {
    sub_1AB42EC48();
  }

  return v7;
}

uint64_t sub_1AB2F2F7C()
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = 0xD000000000000016;
  v5[1] = 0x80000001AB5092F0;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  sub_1AB0169C4(v5, v2 + 32);
  *(v2 + 64) = 0;
  *(v1 + 32) = v2;
  v5[0] = v0;
  v4 = 3;
  OSLogger.log(contentsOf:withLevel:)(v1, &v4);
}

uint64_t sub_1AB2F30B0(uint64_t a1)
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v20 = sub_1AB0168A8(0, 43, 0, MEMORY[0x1E69E7CC0]);
  v3._object = 0x80000001AB5092C0;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v19[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v17, v18);
  sub_1AB01522C(v19, v13);
  v14 = 0u;
  v15 = 0u;
  sub_1AB0169C4(v13, &v14);
  v16 = 0;
  v5 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v5 + 2) + 1, 1, v5);
    v20 = v5;
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[40 * v7];
  v9 = v14;
  v10 = v15;
  v8[64] = v16;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  v20 = v5;
  sub_1AB014AC0(v19, &unk_1EB437E60, &qword_1AB4D4730);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v2 + 32) = v20;
  *&v14 = v1;
  LOBYTE(v19[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v2, v19);
}

uint64_t sub_1AB2F32D4()
{
  v1 = sub_1AB460514();
  v2 = [v0 propertyForBodyKey_];

  if (v2)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_1AB014AC0(v7, &unk_1EB437E60, &qword_1AB4D4730);
    return 0;
  }

  return result;
}

uint64_t sub_1AB2F33C4(void **a1)
{
  v1 = *a1;
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0x2064656873756C46;
  v4._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v18[3] = sub_1AB016760(0, &qword_1ED4D1940, 0x1E696AD98);
  v18[0] = v1;
  sub_1AB01522C(v18, v14);
  v15 = 0u;
  v16 = 0u;
  v5 = v1;
  sub_1AB0169C4(v14, &v15);
  v17 = 0;
  v6 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AB0168A8(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v15;
  v11 = v16;
  v9[64] = v17;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v19 = v6;
  sub_1AB014AC0(v18, &unk_1EB437E60, &qword_1AB4D4730);
  v12._countAndFlagsBits = 0x7363697274656D20;
  v12._object = 0xEF73746E65766520;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v19;
  *&v15 = v2;
  LOBYTE(v18[0]) = 3;
  OSLogger.log(contentsOf:withLevel:)(v3, v18);
}

uint64_t sub_1AB2F35D0(uint64_t a1)
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v20 = sub_1AB0168A8(0, 41, 0, MEMORY[0x1E69E7CC0]);
  v3._object = 0x80000001AB509290;
  v3._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v19[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v17, v18);
  sub_1AB01522C(v19, v13);
  v14 = 0u;
  v15 = 0u;
  sub_1AB0169C4(v13, &v14);
  v16 = 0;
  v5 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v5 + 2) + 1, 1, v5);
    v20 = v5;
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[40 * v7];
  v9 = v14;
  v10 = v15;
  v8[64] = v16;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  v20 = v5;
  sub_1AB014AC0(v19, &unk_1EB437E60, &qword_1AB4D4730);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v2 + 32) = v20;
  *&v14 = v1;
  LOBYTE(v19[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v2, v19);
}

id sub_1AB2F37F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t AMSMetricsEventRecorder.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  sub_1AB0177B8(*(v0 + 96), *(v0 + 104));
  return v0;
}

void sub_1AB2F38E4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = *a1;
  a2(&v2, &v3);
  sub_1AB42EE80(v2);
}

void *sub_1AB2F3978(void *a1, uint64_t a2, uint64_t a3)
{
  v3[12] = 0;
  v3[13] = 0;
  v3[2] = a1;
  v6 = [a1 bag];
  v7 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  swift_unknownObjectRelease();
  v3[3] = v7;
  v3[4] = a2;
  v3[5] = a3;
  v8 = [objc_opt_self() ams_sharedAccountStore];
  v3[9] = sub_1AB016760(0, &qword_1ED4D1F60, 0x1E6959A48);
  v3[10] = &protocol witness table for ACAccountStore;
  v3[6] = v8;
  v3[11] = MEMORY[0x1E69E7CD0];
  return v3;
}

void *sub_1AB2F3A5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = 0;
  v4[13] = 0;
  v4[2] = a1;
  v8 = [a1 bag];
  v9 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  swift_unknownObjectRelease();
  v4[3] = v9;
  v4[4] = a2;
  v4[5] = a3;
  v4[11] = a4;
  v10 = [objc_opt_self() ams_sharedAccountStore];
  v4[9] = sub_1AB016760(0, &qword_1ED4D1F60, 0x1E6959A48);
  v4[10] = &protocol witness table for ACAccountStore;
  v4[6] = v10;
  return v4;
}

uint64_t static PipelinePhase<>.unpackJetpack(keyURLs:bundleOutputURL:artifactStoreURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v8 = sub_1AB45F764();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v16 = *(v9 + 16);
  v16(&v21 - v14, a2, v8, v13);
  (v16)(v11, a3, v8);
  type metadata accessor for UnpackJetpackPhase(0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = *(v9 + 32);
  v18(v17 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v15, v8);
  v18(v17 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v11, v8);
  *(v17 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AB2F4A0C;
  *(v19 + 24) = v17;
  *a4 = sub_1AB2F46AC;
  a4[1] = v19;
}

uint64_t type metadata accessor for UnpackJetpackPhase(uint64_t a1)
{
  result = qword_1EB435868;
  if (!qword_1EB435868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB2F3DAC()
{
  v1 = v0;
  v2 = sub_1AB45F764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED4D1D90 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED4D1D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v6 = swift_allocObject();
  v37 = xmmword_1AB4D4720;
  *(v6 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v7 = swift_allocObject();
  *(v7 + 16) = v37;
  v8 = MEMORY[0x1E69E6158];
  v41 = MEMORY[0x1E69E6158];
  v38 = 0xD00000000000001DLL;
  v39 = 0x80000001AB509390;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1AB0169C4(&v38, v7 + 32);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  v9 = sub_1AB461094();
  if (os_log_type_enabled(v5, v9))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v35 = v3;
    v10 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v10[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v10 + 5);
    v12 = v2;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v13 = swift_allocObject();
    *(v13 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    v38 = v6;
    v39 = sub_1AB01A8D8;
    v40 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
    sub_1AB016A34();
    v14 = sub_1AB460484();
    v16 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v17 = swift_allocObject();
    *(v17 + 16) = v37;
    *(v17 + 56) = v8;
    *(v17 + 64) = sub_1AB016854();
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v5, v9, v17);

    v2 = v12;
    v3 = v35;
  }

  else
  {
  }

  v18 = *(v1 + 16);
  if (*(v1 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature))
  {
    v19 = sub_1AB2B792C;
  }

  else
  {
    v19 = 0;
  }

  v20 = OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL;

  v21 = sub_1AB45F6F4();
  v23 = v22;
  v24 = type metadata accessor for FileInputStream();
  swift_allocObject();
  v25 = sub_1AB251E1C(v21, v23);
  v43 = v18;
  v44 = v19;
  v45 = 0;
  v41 = v24;
  v42 = &off_1F2001F90;
  v38 = v25;

  sub_1AB2B81A0(&v38, v1 + v20);

  __swift_destroy_boxed_opaque_existential_1Tm(&v38);
  v29 = v1 + v20;
  v30 = v36;
  (*(v3 + 16))(v36, v29, v2);
  sub_1AB45F6F4();
  v31 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v32 = sub_1AB460514();

  v33 = [v31 initWithPath_];

  (*(v3 + 8))(v30, v2);
  if (v33)
  {
    v34 = 1;
  }

  else
  {
    sub_1AB2F47D0();
    v33 = swift_allocError();
    v34 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8C8, &unk_1AB4E9710);
  v26 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;

  sub_1AB0177B8(v19, 0);
  *(v26 + 16) = v27;
  *(v26 + 24) = v33;
  *(v26 + 32) = v34;
  return v26;
}

uint64_t static PipelinePhase<>.unpackJetpack(keyURLs:bundleOutputURL:artifactStoreURL:verifySignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (**a5)(uint64_t a1)@<X8>)
{
  v23 = a4;
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22[-v15];
  v17 = *(v10 + 16);
  v17(&v22[-v15], a2, v9, v14);
  (v17)(v12, a3, v9);
  type metadata accessor for UnpackJetpackPhase(0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = *(v10 + 32);
  v19(v18 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v16, v9);
  v19(v18 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL, v12, v9);
  *(v18 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_verifySignature) = v23;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AB2F46B4;
  *(v20 + 24) = v18;
  *a5 = sub_1AB2F4A10;
  a5[1] = v20;
}

uint64_t UnpackJetpackError.hashValue.getter()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

uint64_t sub_1AB2F4560()
{

  v1 = OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_artifactStoreURL;
  v2 = sub_1AB45F764();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9JetEngine18UnpackJetpackPhase_bundleOutputURL, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB2F4634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a1 + 88))();
  v5 = sub_1AB2F4824(a2, a3);

  return v5;
}

unint64_t sub_1AB2F46BC()
{
  result = qword_1EB43A8C0;
  if (!qword_1EB43A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A8C0);
  }

  return result;
}

uint64_t sub_1AB2F4728(uint64_t a1)
{
  result = sub_1AB45F764();
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

unint64_t sub_1AB2F47D0()
{
  result = qword_1EB43A8D0;
  if (!qword_1EB43A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A8D0);
  }

  return result;
}

uint64_t sub_1AB2F4824(uint64_t a1, uint64_t a2)
{
  v12[3] = &type metadata for SyncTaskScheduler;
  v12[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8C8, &unk_1AB4E9710);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB2F498C;
  v9[1] = v7;
  v9[2] = sub_1AB2F499C;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB194D18(v9);

  sub_1AB2F49A4(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

uint64_t sub_1AB2F49A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439840, &unk_1AB4D8C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CodeByKind.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t sub_1AB2F4A9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (v12 << 10) | (16 * __clz(__rbit64(v8)));
      v14 = *(a3 + 56);
      v15 = (*(a3 + 48) + v13);
      v17 = *v15;
      v16 = v15[1];
      v19[0] = *v15;
      v19[1] = v16;
      v20 = *(v14 + v13);

      v18 = v21(v19);
      if (v3)
      {

        return v17;
      }

      if (v18)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v17;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return 0;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AB2F4C14(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v20 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v20 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v20 + 56) + 8 * v12);
      v19[0] = *v13;
      v19[1] = v14;
      v19[2] = v16;

      v17 = a1(v19);
      if (v3)
      {

        return v15;
      }

      if (v17)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v15;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CodeByKind.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t CodeByKind.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t CodeByKind.description.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1AB461D64();
  return 0;
}

uint64_t CodeByKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v7 = sub_1AB4616A4();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v68 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EC8, &unk_1AB4EA2D0);
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8D8, &qword_1AB4E9730);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v68 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  v83 = a2;
  v85 = a3;
  v28 = type metadata accessor for CodeByKind(0, a2, a3, v27);
  v72 = *(v28 - 8);
  v73 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v71 = &v68 - v29;
  v30 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB179C3C();
  v31 = v84;
  sub_1AB462224();
  if (v31)
  {
    *v23 = v31;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1AB2F58CC(v20, v23);
  }

  v32 = v26;
  sub_1AB2F58CC(v23, v26);
  sub_1AB2F593C(v26, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v90;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1AB014AC0(v17, &qword_1EB43A8D8, &qword_1AB4E9730);
    v35 = v30;
  }

  else
  {
    v36 = v81;
    v37 = v79;
    (*(v81 + 32))(v90, v17, v79);
    v84 = xmmword_1AB4E9720;
    v88 = xmmword_1AB4E9720;
    v89 = 1;
    v35 = v30;
    if (sub_1AB461AF4())
    {
      v88 = v84;
      v89 = 1;
      v38 = sub_1AB461A84();
      v40 = v85;
      v55 = v38;
      v56 = v39;
      v57 = (*(v85 + 16))();
      if (*(v57 + 16))
      {
        v58 = sub_1AB014DB4(v55, v56);
        if (v59)
        {
          v60 = v58;

          v61 = *(*(v57 + 56) + 8 * v60);

          v44 = v69;
          (*(v40 + 40))(v61, v35);
          (*(v81 + 8))(v90, v37);
          goto LABEL_11;
        }
      }

      v62 = v83;
      v63 = (*(v40 + 32))(v83, v40);
      if (v63)
      {
        v64 = v63;

        v65 = v70;
        (*(v40 + 40))(v64, v35, v62, v40);
        (*(v81 + 8))(v90, v37);
        sub_1AB014AC0(v32, &qword_1EB43A8D8, &qword_1AB4E9730);
        v45 = v65;
        goto LABEL_12;
      }

      v88 = v84;
      v89 = 1;
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1AB4615D4();

      v86 = 1008758606;
      v87 = 0xE400000000000000;
      v66 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v66);

      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB509420);
      MEMORY[0x1AC59BA20](v55, v56);

      MEMORY[0x1AC59BA20](96, 0xE100000000000000);
      sub_1AB4616B4();
      swift_allocError();
      sub_1AB2F634C();
      v67 = v90;
      sub_1AB461684();

      swift_willThrow();
      (*(v81 + 8))(v67, v37);
LABEL_14:
      sub_1AB014AC0(v32, &qword_1EB43A8D8, &qword_1AB4E9730);
      return __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }

    (*(v36 + 8))(v34, v37);
  }

  v41 = v85;
  v42 = v83;
  v43 = (*(v85 + 24))(v83, v85);
  v44 = v82;
  if (!v43)
  {
    __swift_project_boxed_opaque_existential_1Tm(v35, v35[3]);
    sub_1AB4621E4();
    *&v88 = 0;
    *(&v88 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB5093B0);
    v47 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v47);

    MEMORY[0x1AC59BA20](0xD000000000000039, 0x80000001AB5093E0);
    v48 = v76;
    sub_1AB461694();
    v49 = sub_1AB4616B4();
    swift_allocError();
    v51 = v50;
    v53 = v77;
    v52 = v78;
    (*(v77 + 16))(v50, v48, v78);
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6B00], v49);
    swift_willThrow();
    (*(v53 + 8))(v48, v52);
    goto LABEL_14;
  }

  (*(v41 + 40))(v43, v35, v42, v41);
LABEL_11:
  sub_1AB014AC0(v32, &qword_1EB43A8D8, &qword_1AB4E9730);
  v45 = v44;
LABEL_12:
  v46 = v71;
  (*(v74 + 32))(v71, v45, AssociatedTypeWitness);
  (*(v72 + 32))(v75, v46, v73);
  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t sub_1AB2F58CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8D8, &qword_1AB4E9730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB2F593C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8D8, &qword_1AB4E9730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CodeByKind.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EB8, &unk_1AB4DDE60);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v11 = a2 + 16;
  v9 = *(a2 + 16);
  v10 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = *(v13 + 16);
  v15(&v40 - v16, v3, AssociatedTypeWitness, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8E8, &qword_1AB4E9738);
  if (swift_dynamicCast())
  {
    v17 = a1;
    sub_1AB0149B0(&v44, v47);
    v18 = (*(v10 + 16))(v9, v10);
    MEMORY[0x1EEE9AC00](v18);
    *(&v40 - 2) = v47;
    v19 = v49;
    sub_1AB2F4C14(sub_1AB2F63B0, (&v40 - 4), v18);
    v21 = v20;

    if (v21)
    {
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      sub_1AB179C3C();
      sub_1AB462274();
      v44 = xmmword_1AB4E9720;
      LOBYTE(v45) = 1;
      v22 = v41;
      sub_1AB461BB4();

      if (!v19)
      {
        __swift_project_boxed_opaque_existential_1Tm(v47, v48);
        sub_1AB460434();
      }

      (*(v40 + 8))(v8, v22);
    }

    else
    {
      v29 = sub_1AB4616E4();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8, &qword_1AB4D8210);
      v32 = v48;
      v33 = __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      *(&v45 + 1) = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
      (*(*(v32 - 8) + 16))(boxed_opaque_existential_0, v33, v32);
      v35 = runtimeType(of:)(&v44);
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
      v31[3] = swift_getMetatypeMetadata();
      *v31 = v35;
      __swift_project_boxed_opaque_existential_1Tm(v17, v17[3]);
      sub_1AB462234();
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1AB4615D4();

      v42 = 0xD000000000000017;
      v43 = 0x80000001AB509460;
      v36 = v48;
      v37 = __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      *(&v45 + 1) = v36;
      v38 = __swift_allocate_boxed_opaque_existential_0(&v44);
      (*(*(v36 - 8) + 16))(v38, v37, v36);
      runtimeType(of:)(&v44);
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
      v39 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v39);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      sub_1AB461694();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6B30], v29);
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_1AB014AC0(&v44, &qword_1EB43A8F0, &qword_1AB4E9740);
    v49 = sub_1AB4616E4();
    v40 = swift_allocError();
    v24 = v23;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8, &qword_1AB4D8210) + 48);
    v24[3] = AssociatedTypeWitness;
    v25 = __swift_allocate_boxed_opaque_existential_0(v24);
    (v15)(v25, v3, AssociatedTypeWitness);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462234();
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_1AB4615D4();

    *&v44 = 60;
    *(&v44 + 1) = 0xE100000000000000;
    v48 = AssociatedTypeWitness;
    v26 = __swift_allocate_boxed_opaque_existential_0(v47);
    (v15)(v26, v3, AssociatedTypeWitness);
    runtimeType(of:)(v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v27 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v27);

    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB509440);
    sub_1AB461694();
    (*(*(v49 - 8) + 104))(v24, *MEMORY[0x1E69E6B30]);
    return swift_willThrow();
  }
}

uint64_t runtimeType(of:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);

  return swift_getDynamicType();
}

BOOL sub_1AB2F60B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = a2[3];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a2, v3);
  v8[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v4, v3);
  v6 = runtimeType(of:)(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v2 == v6;
}

uint64_t CodeByKind<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return sub_1AB460454();
}

uint64_t CodeByKind<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1AB4620A4();
  swift_getAssociatedTypeWitness();
  sub_1AB460454();
  return sub_1AB462104();
}

uint64_t sub_1AB2F62F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AB4620A4();
  CodeByKind<>.hash(into:)(v6, a2, v4);
  return sub_1AB462104();
}

unint64_t sub_1AB2F634C()
{
  result = qword_1EB43A8E0;
  if (!qword_1EB43A8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436EC8, &unk_1AB4EA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A8E0);
  }

  return result;
}

uint64_t sub_1AB2F6418(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB2F6498(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_1AB2F662C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
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

  else if (v10)
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
  v16 = *(v7 + 56);

  v16(a1, a2);
}

unint64_t JetPackAssetDiskCacheError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000022;
  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000021;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t JetPackAssetDiskCacheError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v3;
  v4 = "e default location";
  v5 = 0xD000000000000022;
  if (v1 == 3)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v4 = "No kind specified for <";
  }

  if (v1 == 2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = v5;
  }

  if (v1 == 2)
  {
    v4 = "Unable to evict unsaved asset";
  }

  v7 = 0xD00000000000001DLL;
  v8 = "Asset file doesn't exist";
  if (v1)
  {
    v7 = 0xD000000000000021;
  }

  else
  {
    v8 = "ve asset metadata";
  }

  if (v1 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v1 <= 1)
  {
    v4 = v8;
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v4 | 0x8000000000000000;
  v10 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(inited + 32, &qword_1EB439AA0, &qword_1AB4DA4B0);
  return v10;
}

uint64_t JetPackAssetDiskCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB2F6B28()
{
  v1 = *v0;
  v2 = 0xD000000000000022;
  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000021;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB2F6BD4(uint64_t a1)
{
  v2 = sub_1AB2FBB00();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB2F6C10(uint64_t a1)
{
  v2 = sub_1AB2FBB00();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t JetPackAssetDiskCache.DefaultLocation.assetsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JetPackAssetDiskCache.DefaultLocation.databaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0) + 20);
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JetPackAssetDiskCache.__allocating_init(assetsURL:metadataStore:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_assetsURL;
  v6 = sub_1AB45F764();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  sub_1AB0149B0(a2, v4 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  return v4;
}

uint64_t JetPackAssetDiskCache.init(assetsURL:metadataStore:)(uint64_t a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_assetsURL;
  v6 = sub_1AB45F764();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  sub_1AB0149B0(a2, v2 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  return v2;
}

uint64_t static JetPackAssetDiskCache.prepareDefaultLocation(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v57 = *MEMORY[0x1E69E9840];
  v3 = sub_1AB45F604();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1AB45F764();
  v44 = *(v43 - 8);
  v7 = MEMORY[0x1EEE9AC00](v43);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0x737465737361;
  v54 = 0xE600000000000000;
  v10 = *MEMORY[0x1E6968F70];
  v37 = *(v4 + 104);
  v37(v6, v10, v3, v7);
  v39 = sub_1AB0273A8();
  v40 = a1;
  sub_1AB45F744();
  v38 = *(v4 + 8);
  v38(v6, v3);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1AB45F654();
  v53 = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v53];

  v14 = v53;
  if (v13)
  {
    v53 = 0x62642E65726F7473;
    v54 = 0xE800000000000000;
    (v37)(v6, v10, v3);
    type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0);
    v15 = v14;
    v16 = v41;
    sub_1AB45F744();
    v38(v6, v3);
    return (*(v44 + 32))(v16, v9, v43);
  }

  else
  {
    v42 = v9;
    v18 = v43;
    v19 = v53;
    v20 = sub_1AB45F594();

    swift_willThrow();
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v21 = v55;
    v22 = v56;
    __swift_project_boxed_opaque_existential_1Tm(&v53, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AB4D4720;
    v47 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
    v24._object = 0x80000001AB509540;
    v24._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    swift_getErrorValue();
    v25 = v45;
    v26 = v46;
    v52[3] = v46;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v25, v26);
    sub_1AB01522C(v52, v48);
    v49 = 0u;
    v50 = 0u;
    sub_1AB0169C4(v48, &v49);
    v51 = 0;
    v28 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
      v47 = v28;
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[40 * v30];
    v32 = v49;
    v33 = v50;
    v31[64] = v51;
    *(v31 + 2) = v32;
    *(v31 + 3) = v33;
    v47 = v28;
    sub_1AB014AC0(v52, &unk_1EB437E60, &qword_1AB4D4730);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    *(v23 + 32) = v47;
    Logger.error(_:)(v23, v21, v22);

    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    sub_1AB2FB9D4();
    swift_allocError();
    *v35 = 4;
    swift_willThrow();

    return (*(v44 + 8))(v42, v18);
  }
}

uint64_t JetPackAssetDiskCache._cache(_:)(uint64_t a1, uint64_t a2)
{
  v3[167] = v2;
  v3[166] = a2;
  v3[165] = a1;
  v4 = sub_1AB45F604();
  v3[168] = v4;
  v3[169] = *(v4 - 8);
  v3[170] = swift_task_alloc();
  v5 = sub_1AB45F764();
  v3[171] = v5;
  v3[172] = *(v5 - 8);
  v3[173] = swift_task_alloc();
  v6 = sub_1AB45F9E4();
  v3[174] = v6;
  v3[175] = *(v6 - 8);
  v3[176] = swift_task_alloc();
  v7 = sub_1AB45FF84();
  v3[177] = v7;
  v3[178] = *(v7 - 8);
  v3[179] = swift_task_alloc();
  v3[180] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2F766C, 0, 0);
}

uint64_t sub_1AB2F766C()
{
  v138 = v0;
  v137 = *MEMORY[0x1E69E9840];
  if (qword_1ED4D0AF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1AB45FFC4();
  __swift_project_value_buffer(v1, qword_1ED4D0B00);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v2 = sub_1AB45FFA4();
  v3 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v5, "Cache Asset", "", v4, 2u);
    MEMORY[0x1AC59F020](v4, -1, -1);
  }

  v6 = (v0 + 776);
  v7 = *(v0 + 1440);
  v8 = *(v0 + 1432);
  v9 = *(v0 + 1424);
  v10 = *(v0 + 1416);

  (*(v9 + 16))(v8, v7, v10);
  sub_1AB460014();
  swift_allocObject();
  v129 = sub_1AB460004();
  *(v0 + 1448) = v129;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1328);
  sub_1AB4622E4();
  v12 = *(v0 + 520);
  v132 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AB4D4720;
  *&v135[0] = sub_1AB0168A8(0, 30, 0, MEMORY[0x1E69E7CC0]);
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v14._object = 0x80000001AB509570;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = type metadata accessor for JetPackAsset(0);
  *(v0 + 1456) = v15;
  v16 = (v11 + *(v15 + 28));
  v17 = *v16;
  v18 = v16[1];
  *(v0 + 1048) = MEMORY[0x1E69E6158];
  *(v0 + 1024) = v17;
  *(v0 + 1032) = v18;
  sub_1AB01522C(v0 + 1024, v0 + 960);
  *v6 = 0u;
  *(v0 + 792) = 0u;

  sub_1AB0169C4(v0 + 960, v0 + 776);
  *(v0 + 808) = 0;
  v19 = *&v135[0];
  v125 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(*&v135[0] + 16) + 1, 1, *&v135[0]);
    *&v135[0] = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = *(v0 + 1328);
  *(v19 + 2) = v21 + 1;
  v23 = &v19[40 * v21];
  v24 = *v6;
  v25 = *(v0 + 792);
  v23[64] = *(v0 + 808);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  *&v135[0] = v19;
  sub_1AB014AC0(v0 + 1024, &unk_1EB437E60, &qword_1AB4D4730);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v13 + 32) = v19;
  Logger.info(_:)(v13, v12, v132);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
  v27 = (v22 + *(v15 + 24));
  if ((v27[1] & 1) == 0)
  {
    v37 = *v27;
    sub_1AB4622E4();
    v38 = *(v0 + 560);
    v39 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v38);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1AB4D4720;
    *(v0 + 1016) = MEMORY[0x1E69E6158];
    *(v0 + 992) = 0xD000000000000029;
    *(v0 + 1000) = 0x80000001AB5095D0;
    *(v41 + 48) = 0u;
    *(v41 + 32) = 0u;
    sub_1AB0169C4(v0 + 992, v41 + 32);
    *(v41 + 64) = 0;
    *(v40 + 32) = v41;
    Logger.info(_:)(v40, v38, v39);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    sub_1AB45F194();
    swift_allocObject();
    sub_1AB45F184();
    type metadata accessor for JetPackAsset.Metadata(0);
    sub_1AB05C2A4(&qword_1ED4D0A90, &protocol conformance descriptor for JetPackAsset.Metadata);
    v47 = sub_1AB45F174();
    v49 = v48;
    v50 = (*(v0 + 1336) + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
    v51 = v37;
    v53 = v50[3];
    v52 = v50[4];
    __swift_project_boxed_opaque_existential_1Tm(v50, v53);
    v134 = *(v52 + 56);
    sub_1AB017200(v47, v49);
    v134(v135, v51, v47, v49, v53, v52);
    v100 = *(v0 + 1328);
    v101 = *(v0 + 1320);
    v102 = v135[1];
    *(v0 + 216) = v135[0];
    *(v0 + 232) = v102;
    *(v0 + 248) = v135[2];
    *(v0 + 264) = v136;
    sub_1AB2EF2C4(v0 + 216);
    sub_1AB017254(v47, v49);

    sub_1AB017254(v47, v49);
    sub_1AB1A87A8(v100, v101);
    v103 = v129;
    goto LABEL_28;
  }

  v28 = *(v0 + 1408);
  v29 = *(v0 + 1400);
  v30 = *(v0 + 1392);
  sub_1AB2F8EDC(v125, v18);
  sub_1AB45F9D4();
  v31 = sub_1AB45F9C4();
  v33 = v32;
  (*(v29 + 8))(v28, v30);
  *(v0 + 1264) = 0x6B63617074656A2ELL;
  *(v0 + 1272) = 0xE800000000000000;
  *(v0 + 1248) = v31;
  *(v0 + 1256) = v33;
  *&v135[0] = sub_1AB4607D4();
  *(&v135[0] + 1) = v34;
  sub_1AB4606D4();
  v130 = v135[0];
  sub_1AB45F194();
  swift_allocObject();
  *(v0 + 1464) = sub_1AB45F184();
  type metadata accessor for JetPackAsset.Metadata(0);
  sub_1AB05C2A4(&qword_1ED4D0A90, &protocol conformance descriptor for JetPackAsset.Metadata);
  v35 = sub_1AB45F174();
  *(v0 + 1472) = v35;
  *(v0 + 1480) = v36;
  v42 = v35;
  v43 = v36;
  v44 = (*(v0 + 1336) + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  v45 = v44[3];
  v46 = v44[4];
  __swift_project_boxed_opaque_existential_1Tm(v44, v45);
  *(v0 + 156) = 1;
  *(v0 + 160) = 0;
  *(v0 + 164) = 1;
  *(v0 + 168) = v125;
  *(v0 + 176) = v18;
  *(v0 + 184) = v130;
  *(v0 + 200) = v42;
  *(v0 + 208) = v43;
  v126 = *(v46 + 40);

  sub_1AB017200(v42, v43);
  v126(v0 + 160, v45, v46);
  v121 = v42;
  v122 = v43;
  v55 = *(v0 + 1384);
  v56 = *(v0 + 1376);
  v123 = *(v0 + 1368);
  v57 = *(v0 + 1360);
  v58 = *(v0 + 1352);
  v59 = *(v0 + 1344);
  v127 = *(v0 + 1328);
  v60 = *(v0 + 176);
  *(v0 + 272) = *(v0 + 160);
  *(v0 + 288) = v60;
  *(v0 + 304) = *(v0 + 192);
  *(v0 + 320) = *(v0 + 208);
  sub_1AB2EF2C4(v0 + 272);
  v61 = *(v0 + 400);
  *(v0 + 328) = *(v0 + 384);
  *(v0 + 344) = v61;
  *(v0 + 360) = *(v0 + 416);
  *(v0 + 376) = *(v0 + 432);
  *(v0 + 1280) = v130;
  (*(v58 + 104))(v57, *MEMORY[0x1E6968F70], v59);
  sub_1AB0273A8();
  sub_1AB45F754();
  (*(v58 + 8))(v57, v59);

  v62 = sub_1AB45F6E4();
  v64 = v63;
  *(v0 + 1488) = v62;
  *(v0 + 1496) = v63;
  (*(v56 + 8))(v55, v123);
  sub_1AB01494C(v127, v0 + 576);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8, &qword_1AB4D5A98);
  if (swift_dynamicCast())
  {
    v131 = v64;
    v128 = *(v0 + 896);
    v65 = *(v0 + 904);

    sub_1AB4622E4();
    v66 = *(v0 + 680);
    v67 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 656), v66);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1AB4D4720;
    *(v0 + 1112) = MEMORY[0x1E69E6158];
    *(v0 + 1088) = 0xD000000000000016;
    *(v0 + 1096) = 0x80000001AB5095B0;
    *(v69 + 48) = 0u;
    *(v69 + 32) = 0u;
    sub_1AB0169C4(v0 + 1088, v69 + 32);
    *(v69 + 64) = 0;
    *(v68 + 32) = v69;
    Logger.info(_:)(v68, v66, v67);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
    sub_1AB4622E4();
    v70 = *(v0 + 720);
    v124 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 696), v70);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1AB4D4720;
    *&v135[0] = sub_1AB0168A8(0, 15, 0, MEMORY[0x1E69E7CC0]);
    v72._countAndFlagsBits = 0x203A6D6F7266;
    v72._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);
    v73 = MEMORY[0x1E69E6158];
    *(v0 + 1144) = MEMORY[0x1E69E6158];
    *(v0 + 1120) = v128;
    *(v0 + 1128) = v65;
    sub_1AB01522C(v0 + 1120, v0 + 1152);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;

    sub_1AB0169C4(v0 + 1152, v0 + 816);
    *(v0 + 848) = 0;
    v74 = *&v135[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = sub_1AB0168A8(0, *(*&v135[0] + 16) + 1, 1, *&v135[0]);
      *&v135[0] = v74;
    }

    v75 = (v0 + 856);
    v77 = *(v74 + 2);
    v76 = *(v74 + 3);
    if (v77 >= v76 >> 1)
    {
      v74 = sub_1AB0168A8((v76 > 1), v77 + 1, 1, v74);
    }

    *(v74 + 2) = v77 + 1;
    v78 = &v74[40 * v77];
    v79 = *(v0 + 816);
    v80 = *(v0 + 832);
    v78[64] = *(v0 + 848);
    *(v78 + 2) = v79;
    *(v78 + 3) = v80;
    *&v135[0] = v74;
    sub_1AB014AC0(v0 + 1120, &unk_1EB437E60, &qword_1AB4D4730);
    v81._countAndFlagsBits = 0x203A6F74202C20;
    v81._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v81);
    *(v0 + 1208) = v73;
    *(v0 + 1184) = v62;
    *(v0 + 1192) = v131;
    sub_1AB01522C(v0 + 1184, v0 + 1216);
    *v75 = 0u;
    *(v0 + 872) = 0u;

    sub_1AB0169C4(v0 + 1216, v0 + 856);
    *(v0 + 888) = 0;
    v82 = *&v135[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_1AB0168A8(0, *(*&v135[0] + 16) + 1, 1, *&v135[0]);
      *&v135[0] = v82;
    }

    v83 = (v0 + 1304);
    v85 = *(v82 + 2);
    v84 = *(v82 + 3);
    if (v85 >= v84 >> 1)
    {
      v82 = sub_1AB0168A8((v84 > 1), v85 + 1, 1, v82);
    }

    *(v82 + 2) = v85 + 1;
    v86 = &v82[40 * v85];
    v87 = *v75;
    v88 = *(v0 + 872);
    v86[64] = *(v0 + 888);
    *(v86 + 2) = v87;
    *(v86 + 3) = v88;
    *&v135[0] = v82;
    sub_1AB014AC0(v0 + 1184, &unk_1EB437E60, &qword_1AB4D4730);
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v89);
    *(v71 + 32) = v82;
    Logger.info(_:)(v71, v70, v124);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
    v90 = [objc_opt_self() defaultManager];
    v91 = sub_1AB460514();

    v92 = sub_1AB460514();

    *v83 = 0;
    v93 = [v90 copyItemAtPath:v91 toPath:v92 error:v0 + 1304];

    v94 = *v83;
    if (!v93)
    {
      v120 = v94;
      sub_1AB45F594();

      swift_willThrow();
      sub_1AB017254(v121, v122);

      sub_1AB2EF2C4(v0 + 328);
      sub_1AB05DC6C(v129, "Cache Asset");

      (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

      v104 = *(v0 + 8);
      goto LABEL_14;
    }

    v95 = v94;
    sub_1AB017254(v121, v122);

    v96 = *(v0 + 1456);
    v103 = *(v0 + 1448);
    v97 = *(v0 + 1320);
    sub_1AB1A87A8(*(v0 + 1328), v97);
    sub_1AB2EF2C4(v0 + 328);
    v98 = *(v0 + 332);
    v99 = v97 + *(v96 + 24);
    *v99 = *(v0 + 328);
    *(v99 + 4) = v98;
LABEL_28:
    sub_1AB05DC6C(v103, "Cache Asset");

    (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

    v104 = *(v0 + 8);
LABEL_14:

    return v104();
  }

  sub_1AB4622E4();
  v105 = *(v0 + 640);
  v133 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 616), v105);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1AB4D4720;
  *&v135[0] = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v107._object = 0x80000001AB509590;
  v107._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v107);
  *(v0 + 952) = MEMORY[0x1E69E6158];
  *(v0 + 928) = v62;
  *(v0 + 936) = v64;
  sub_1AB01522C(v0 + 928, v0 + 1056);
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;

  sub_1AB0169C4(v0 + 1056, v0 + 736);
  *(v0 + 768) = 0;
  v108 = *&v135[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v108 = sub_1AB0168A8(0, *(*&v135[0] + 16) + 1, 1, *&v135[0]);
    *&v135[0] = v108;
  }

  v110 = *(v108 + 2);
  v109 = *(v108 + 3);
  if (v110 >= v109 >> 1)
  {
    v108 = sub_1AB0168A8((v109 > 1), v110 + 1, 1, v108);
  }

  v111 = *(v0 + 1328);
  *(v108 + 2) = v110 + 1;
  v112 = &v108[40 * v110];
  v113 = *(v0 + 736);
  v114 = *(v0 + 752);
  v112[64] = *(v0 + 768);
  *(v112 + 2) = v113;
  *(v112 + 3) = v114;
  *&v135[0] = v108;
  sub_1AB014AC0(v0 + 928, &unk_1EB437E60, &qword_1AB4D4730);
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v115);
  *(v106 + 32) = v108;
  Logger.info(_:)(v106, v105, v133);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
  v116 = [objc_opt_self() defaultManager];
  v117 = sub_1AB460514();
  [v116 createFileAtPath:v117 contents:0 attributes:0];

  v118 = v111[3];
  v119 = v111[4];
  __swift_project_boxed_opaque_existential_1Tm(v111, v118);
  *(v0 + 1504) = (*(v119 + 8))(v118, v119);

  return MEMORY[0x1EEE6DFA0](sub_1AB2F88A0, 0, 0);
}

uint64_t sub_1AB2F88A0()
{
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1312;
  *(v0 + 24) = sub_1AB2F899C;
  *(v0 + 80) = swift_continuation_init();
  *(v0 + 152) = 1;
  sub_1AB017894(v0 + 80);
  sub_1AB014AC0(v0 + 80, &unk_1EB437870, &unk_1AB4E35C0);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1AB2F899C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1512) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = sub_1AB2F8D98;
  }

  else
  {

    *(v1 + 1520) = *(v1 + 1312);
    v3 = sub_1AB2F8AFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB2F8AFC()
{
  v1 = *(v0 + 1520);
  v2 = sub_1AB460514();

  *(v0 + 1296) = 0;
  v3 = [v1 writeToFile:v2 blockSize:0x20000 error:v0 + 1296];

  v4 = *(v0 + 1296);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1480);
  v7 = *(v0 + 1472);
  if (v3)
  {
    v8 = v4;
    sub_1AB017254(v7, v6);

    v9 = *(v0 + 1456);
    v10 = *(v0 + 1448);
    v11 = *(v0 + 1320);
    sub_1AB1A87A8(*(v0 + 1328), v11);
    sub_1AB2EF2C4(v0 + 328);
    v12 = *(v0 + 332);
    v13 = v11 + *(v9 + 24);
    *v13 = *(v0 + 328);
    *(v13 + 4) = v12;
    sub_1AB05DC6C(v10, "Cache Asset");
  }

  else
  {
    v15 = *(v0 + 1448);
    v16 = v4;
    sub_1AB45F594();

    swift_willThrow();
    sub_1AB017254(v7, v6);

    sub_1AB2EF2C4(v0 + 328);
    sub_1AB05DC6C(v15, "Cache Asset");
  }

  (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1AB2F8D98()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[181];

  sub_1AB017254(v2, v1);

  sub_1AB2EF2C4((v0 + 41));
  sub_1AB05DC6C(v3, "Cache Asset");

  (*(v0[178] + 8))(v0[180], v0[177]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB2F8EDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v6 = *(&v46 + 1);
  v38 = v47;
  __swift_project_boxed_opaque_existential_1Tm(&v45, *(&v46 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  v50 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x80000001AB509770;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v40 = MEMORY[0x1E69E6158];
  v39[0] = a1;
  v39[1] = a2;
  sub_1AB01522C(v39, v49);
  v41 = 0u;
  v42 = 0u;

  sub_1AB0169C4(v49, &v41);
  LOBYTE(v43) = 0;
  v9 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    v50 = v9;
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = v41;
  v14 = v42;
  v12[64] = v43;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  v50 = v9;
  sub_1AB014AC0(v39, &unk_1EB437E60, &qword_1AB4D4730);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v7 + 32) = v50;
  Logger.info(_:)(v7, v6, v38);

  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  v16 = *(v3 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 24);
  v17 = *(v3 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v3 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore), v16);
  v18 = (*(v17 + 32))(a1, a2, v16, v17);
  sub_1AB4622E4();
  v19 = *(&v46 + 1);
  v20 = v47;
  __swift_project_boxed_opaque_existential_1Tm(&v45, *(&v46 + 1));
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AB4D4720;
  v50 = sub_1AB0168A8(0, 23, 0, MEMORY[0x1E69E7CC0]);
  v22._countAndFlagsBits = 0x20646E756F46;
  v22._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v23 = *(v18 + 16);
  v40 = MEMORY[0x1E69E6530];
  v39[0] = v23;
  sub_1AB01522C(v39, v49);
  v41 = 0u;
  v42 = 0u;
  sub_1AB0169C4(v49, &v41);
  LOBYTE(v43) = 0;
  v24 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1AB0168A8(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[40 * v26];
  v28 = v41;
  v29 = v42;
  v27[64] = v43;
  *(v27 + 2) = v28;
  *(v27 + 3) = v29;
  v50 = v24;
  sub_1AB014AC0(v39, &unk_1EB437E60, &qword_1AB4D4730);
  v30._object = 0x80000001AB509680;
  v30._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  *(v21 + 32) = v50;
  Logger.info(_:)(v21, v19, v20);

  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  v31 = *(v18 + 16);
  if (v31)
  {
    v32 = v31 - 1;
    for (i = 32; ; i += 56)
    {
      v34 = *(v18 + i);
      v35 = *(v18 + i + 16);
      v36 = *(v18 + i + 32);
      v48 = *(v18 + i + 48);
      v46 = v35;
      v47 = v36;
      v45 = v34;
      v41 = *(v18 + i);
      v42 = *(v18 + i + 16);
      v43 = *(v18 + i + 32);
      v44 = *(v18 + i + 48);
      sub_1AB1F602C(&v45, v39);
      sub_1AB2FB290(&v41);
      sub_1AB2EF2C4(&v45);
      if (!v32)
      {
        break;
      }

      --v32;
    }
  }
}

uint64_t JetPackAssetDiskCache._asset(withID:)(uint64_t a1, int a2)
{
  *(v3 + 104) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1AB2F9668, 0, 0);
}

uint64_t sub_1AB2F9668()
{
  v37 = v0;
  v1 = *(v0 + 104);
  v2 = (*(v0 + 96) + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  (*(v4 + 8))(&v21, v1, v3, v4);
  v5 = v23;
  if (v23 == 1)
  {
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 88);
    sub_1AB4622E4();
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    *(v0 + 80) = MEMORY[0x1E69E6158];
    *(v0 + 56) = 0xD000000000000026;
    *(v0 + 64) = 0x80000001AB509610;
    *(v10 + 48) = 0u;
    *(v10 + 32) = 0u;
    sub_1AB0169C4(v0 + 56, v10 + 32);
    *(v10 + 64) = 0;
    *(v9 + 32) = v10;
    Logger.info(_:)(v9, v7, v8);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v11 = type metadata accessor for JetPackAsset(0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  else
  {
    v12 = *(v0 + 88);
    v14 = v26;
    v13 = v27;
    v16 = v24;
    v15 = v25;
    v18 = v21;
    v17 = v22;
    v28 = BYTE4(v21) & 1;
    v29 = v21;
    v30 = BYTE4(v21) & 1;
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    sub_1AB05B578(&v29, v12);
    sub_1AB05DEFC(v18, v17, v5, v16, v15, v14, v13);
  }

  v19 = *(v0 + 8);

  return v19();
}