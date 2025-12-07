uint64_t sub_1DB486F4C()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1ECC460D0);
  __swift_project_value_buffer(v0, qword_1ECC460D0);
  return sub_1DB50A260();
}

uint64_t sub_1DB486FD0(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  type metadata accessor for DaemonGetAssetResponse(0);
  v2[32] = swift_task_alloc();
  type metadata accessor for DaemonGetAssetRequest(0);
  v2[33] = swift_task_alloc();
  v2[34] = sub_1DB50AF80();
  v2[35] = swift_task_alloc();
  sub_1DB50A440();
  v2[36] = swift_task_alloc();
  v3 = sub_1DB50AFA0();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = sub_1DB50A270();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4871A0, 0, 0);
}

uint64_t sub_1DB4871A0()
{
  if (qword_1ECC42150 != -1)
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
  v6 = __swift_project_value_buffer(v3, qword_1ECC460D0);
  v7 = *(v2 + 16);
  v7(v1, v6, v3);
  type metadata accessor for DaemonSessionImplementation(0);
  v8 = swift_allocObject();
  *(v0 + 344) = v8;
  swift_defaultActor_initialize();
  v9 = v8 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v8[16] = 0xD00000000000001BLL;
  v8[17] = 0x80000001DB52FA60;
  v7(v8 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter, v1, v3);
  v8[14] = 0x100000;
  v8[15] = 0x4046800000000000;
  sub_1DB357BD4();
  (*(v5 + 104))(v4, *MEMORY[0x1E69E8098], v30);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *(v0 + 232) = MEMORY[0x1E69E7CC0];
  sub_1DB488D74(&qword_1EE30C810, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400, MEMORY[0x1E69E6328]);
  sub_1DB50B240();
  v10 = sub_1DB50AFD0();
  (*(v2 + 8))(v1, v3);
  *(v8 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue) = v10;
  v11 = (v8 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory);
  *v11 = 0;
  v11[1] = 0;
  sub_1DB488E1C(v31, v32, type metadata accessor for URLJetPackAssetRequest);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 248);
  *(v0 + 352) = qword_1EE30C918;
  sub_1DB50BEB0();
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB50EE90;
  v33 = sub_1DB301BC0(0, 55, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0xD000000000000036;
  v16._object = 0x80000001DB52FB30;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v17 = sub_1DB509CA0();
  *(v0 + 160) = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v12, v17);
  sub_1DB30C4B8(v0 + 136, v0 + 168, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1DB301D4C(v0 + 168, v0 + 96);
  *(v0 + 128) = 0;
  v19 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = *(v0 + 96);
  v24 = *(v0 + 112);
  v22[64] = *(v0 + 128);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v15 + 32) = v19;
  Logger.info(_:)(v15, v14, v13);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v26 = swift_task_alloc();
  *(v0 + 368) = v26;
  *v26 = v0;
  v26[1] = sub_1DB487700;
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);

  return sub_1DB47ED04(v27, v28);
}

uint64_t sub_1DB487700()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1DB487B78;
  }

  else
  {
    v2 = sub_1DB487814;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB487814()
{
  v1 = v0[32];
  v29 = v0[33];
  v27 = v0[30];
  sub_1DB50BEB0();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 16) = xmmword_1DB50EE90;
  v0[28] = v6;
  v0[25] = 0xD00000000000002FLL;
  v0[26] = 0x80000001DB52FB70;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1DB301D4C((v0 + 25), v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.info(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
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
  *(v14 + 48) = &off_1F56FDE60;
  *(v14 + 56) = v24;
  *(v14 + 64) = v23;
  *(v14 + 72) = v7;
  *(v14 + 80) = v8;
  *(v14 + 88) = v10;
  *(v14 + 96) = v9;
  *(v14 + 104) = v11;
  v25 = v13;
  swift_bridgeObjectRetain_n();

  sub_1DB301E24(v7, v8, v10, v9, v11);

  *(v14 + 112) = v28;
  *(v14 + 120) = v13;
  sub_1DB488DBC(v29, type metadata accessor for DaemonGetAssetRequest);
  v15 = v26[5];
  v16 = type metadata accessor for JetPackAsset(0);
  sub_1DB488E1C(v1 + v15, v27 + v16[5], type metadata accessor for JetPackAsset.Metadata);
  v17 = v1 + v26[6];
  LODWORD(v15) = *v17;
  LOBYTE(v13) = *(v1 + v26[8]);
  LOBYTE(v7) = *(v17 + 4);
  LOBYTE(v8) = *(v1 + v26[9]);
  LOBYTE(v10) = *(v1 + v26[10]);
  sub_1DB488DBC(v1, type metadata accessor for DaemonGetAssetResponse);
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

uint64_t sub_1DB487B78()
{
  v1 = *(v0 + 264);

  sub_1DB488DBC(v1, type metadata accessor for DaemonGetAssetRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB487C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DB50B4E0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DB487D44, 0, 0);
}

uint64_t sub_1DB487D44()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1DB50B4F0();
  v5 = sub_1DB488D74(&qword_1ECC46108, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1DB50BC30();
  sub_1DB488D74(&qword_1ECC46110, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1DB50B500();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1DB487ED4;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1DB487ED4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB488090, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1DB488090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4880FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  v4[38] = sub_1DB50AF80();
  v4[39] = swift_task_alloc();
  sub_1DB50A440();
  v4[40] = swift_task_alloc();
  v5 = sub_1DB50AFA0();
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();
  v6 = sub_1DB50A270();
  v4[44] = v6;
  v4[45] = *(v6 - 8);
  v4[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB488278, 0, 0);
}

uint64_t sub_1DB488278()
{
  if (qword_1ECC42150 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v40 = *(v0 + 328);
  v6 = __swift_project_value_buffer(v3, qword_1ECC460D0);
  v7 = *(v1 + 16);
  v7(v2, v6, v3);
  type metadata accessor for DaemonSessionImplementation(0);
  v8 = swift_allocObject();
  *(v0 + 376) = v8;
  swift_defaultActor_initialize();
  v9 = v8 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v8[16] = 0xD00000000000001BLL;
  v8[17] = 0x80000001DB52FA60;
  v7(v8 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter, v2, v3);
  v8[14] = 0x100000;
  v8[15] = 0x4046800000000000;
  sub_1DB357BD4();
  (*(v5 + 104))(v4, *MEMORY[0x1E69E8098], v40);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *(v0 + 264) = MEMORY[0x1E69E7CC0];
  sub_1DB488D74(&qword_1EE30C810, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400, MEMORY[0x1E69E6328]);
  sub_1DB50B240();
  v10 = sub_1DB50AFD0();
  (*(v1 + 8))(v2, v3);
  *(v8 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue) = v10;
  v11 = (v8 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory);
  *v11 = 0;
  v11[1] = 0;
  v12 = qword_1EE30C928;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  sub_1DB50BEB0();
  v15 = *(v0 + 40);
  v41 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  v42 = sub_1DB301BC0(0, 67, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0xD000000000000034;
  v17._object = 0x80000001DB52FAB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = MEMORY[0x1E69E6158];
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v14;
  *(v0 + 144) = v13;
  sub_1DB30C4B8(v0 + 136, v0 + 168, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1DB301D4C(v0 + 168, v0 + 56);
  *(v0 + 88) = 0;
  v19 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v42 + 2) + 1, 1, v42);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
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
  sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
  v27._countAndFlagsBits = 0x4E656C6966202C20;
  v27._object = 0xED0000203A656D61;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v0 + 224) = v18;
  *(v0 + 200) = v22;
  *(v0 + 208) = v23;
  sub_1DB30C4B8(v0 + 200, v0 + 232, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1DB301D4C(v0 + 232, v0 + 96);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v29 = *(v19 + 2);
  v28 = *(v19 + 3);
  if (v29 >= v28 >> 1)
  {
    v19 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v19);
  }

  *(v19 + 2) = v29 + 1;
  v30 = &v19[40 * v29];
  v31 = *(v0 + 96);
  v32 = *(v0 + 112);
  v30[64] = *(v0 + 128);
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  sub_1DB30623C(v0 + 200, &qword_1ECC426B0, &qword_1DB50EEB0);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  *(v16 + 32) = v19;
  Logger.info(_:)(v16, v15, v41);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v34 = swift_task_alloc();
  *(v0 + 384) = v34;
  *v34 = v0;
  v34[1] = sub_1DB4888BC;
  v35 = *(v0 + 288);
  v36 = *(v0 + 296);
  v37 = *(v0 + 272);
  v38 = *(v0 + 280);

  return sub_1DB4816BC(sub_1DB4816BC, v37, v38, v35, v36);
}

uint64_t sub_1DB4888BC()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1DB488A78;
  }

  else
  {

    v2 = sub_1DB4889E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4889E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB488A78()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DB488B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

uint64_t sub_1DB488B84(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB306AF4;

  return sub_1DB485918(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t sub_1DB488CA0(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = a1[1];
  v8 = *a1;
  v9[0] = v6;
  *(v9 + 10) = *(a1 + 26);
  return sub_1DB486A58(&v8, v3, v4, v5);
}

void sub_1DB488D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

uint64_t sub_1DB488D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB488DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB488E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB488E90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46118, &qword_1DB51E788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB488F00(uint64_t a1, uint64_t a2)
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

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DB48903C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB484FAC(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
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

uint64_t sub_1DB489220(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1DB4863E8(a1, v4, v5, v6, v7);
}

void *sub_1DB4892AC()
{
  if (qword_1EE30C910 != -1)
  {
    swift_once();
  }

  return sub_1DB50BEB0();
}

uint64_t static Sandbox.initialize(profileName:extraParameters:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE30C938 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE30C958;
  v5 = unk_1EE30C960;
  __swift_project_boxed_opaque_existential_1(qword_1EE30C940, qword_1EE30C958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v22 = sub_1DB301BC0(0, 26, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001DB52FBC0;
  v7._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v21[3] = MEMORY[0x1E69E6158];
  v21[0] = a1;
  v21[1] = a2;
  sub_1DB301CDC(v21, v17);
  v18 = 0u;
  v19 = 0u;

  sub_1DB301D4C(v17, &v18);
  v20 = 0;
  v8 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
    v22 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v18;
  v13 = v19;
  v11[64] = v20;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v22 = v8;
  sub_1DB301DBC(v21);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v6 + 32) = v22;
  Logger.info(_:)(v6, v4, v5);

  sub_1DB50A6F0();
  v15 = _set_user_dir_suffix();

  if (!v15)
  {
    sub_1DB489728(0xD00000000000001ELL, 0x80000001DB52FBE0);
  }

  return result;
}

void sub_1DB489554(uint64_t a1, uint64_t a2)
{
  if (qword_1EE30C938 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE30C958;
  v5 = unk_1EE30C960;
  __swift_project_boxed_opaque_existential_1(qword_1EE30C940, qword_1EE30C958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v20 = sub_1DB301BC0(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v19[3] = MEMORY[0x1E69E6158];
  v19[0] = a1;
  v19[1] = a2;
  sub_1DB301CDC(v19, v15);
  v16 = 0u;
  v17 = 0u;

  sub_1DB301D4C(v15, &v16);
  v18 = 0;
  v8 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
    v20 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v16;
  v13 = v17;
  v11[64] = v18;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v20 = v8;
  sub_1DB301DBC(v19);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v6 + 32) = v20;

  Logger.error(_:)(v6, v4, v5);

  exit(1);
}

void sub_1DB489728(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();

  MEMORY[0x1E1285C70](a1, a2);
  v4 = MEMORY[0x1E1285C70](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
  MEMORY[0x1E1285870](v4);
  v5 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v5);

  sub_1DB489554(0x6F6E20646C756F43, 0xEA00000000002074);
}

uint64_t SystemInfoMetricsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69E6158];
  v31 = 5459817;
  v32 = 0xE300000000000000;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(&v31, 29551, 0xE200000000000000, v4, v5);
  result = __swift_destroy_boxed_opaque_existential_0(&v31);
  if (!v1)
  {
    v7 = JEGestaltGetDeviceClass();
    v8 = sub_1DB50A650();
    v10 = v9;

    v33 = v3;
    v31 = v8;
    v32 = v10;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
    (*(v12 + 16))(&v31, 0x6572617764726168, 0xEE00796C696D6146, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    v13 = JEGestaltGetProductType();
    v14 = sub_1DB50A650();
    v16 = v15;

    v33 = v3;
    v31 = v14;
    v32 = v16;
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 16))(&v31, 0x6572617764726168, 0xED00006C65646F4DLL, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    v19 = JEGestaltGetBuildVersion();
    v20 = sub_1DB50A650();
    v22 = v21;

    v33 = v3;
    v31 = v20;
    v32 = v22;
    v23 = *(a1 + 24);
    v24 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v23);
    (*(v24 + 16))(&v31, 0x4E646C697542736FLL, 0xED00007265626D75, v23, v24);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    v25 = JEGestaltGetSystemVersion();
    v26 = sub_1DB50A650();
    v28 = v27;

    v33 = v3;
    v31 = v26;
    v32 = v28;
    v29 = *(a1 + 24);
    v30 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v29);
    (*(v30 + 16))(&v31, 0x6F6973726556736FLL, 0xE90000000000006ELL, v29, v30);
    return __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  return result;
}

uint64_t sub_1DB489B34(uint64_t a1)
{
  v2 = sub_1DB489CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB489B70(uint64_t a1)
{
  v2 = sub_1DB489CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NilState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46138, &qword_1DB51E800);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB489CC0();
  sub_1DB50BE40();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB489CC0()
{
  result = qword_1ECC46140;
  if (!qword_1ECC46140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46140);
  }

  return result;
}

unint64_t sub_1DB489D3C(uint64_t a1)
{
  result = sub_1DB489D64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB489D64()
{
  result = qword_1ECC46148;
  if (!qword_1ECC46148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46148);
  }

  return result;
}

uint64_t sub_1DB489DB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46138, &qword_1DB51E800);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB489CC0();
  sub_1DB50BE40();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB489F04()
{
  result = qword_1ECC46150;
  if (!qword_1ECC46150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46150);
  }

  return result;
}

unint64_t sub_1DB489F5C()
{
  result = qword_1ECC46158;
  if (!qword_1ECC46158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46158);
  }

  return result;
}

uint64_t XPCReceivedMessage.bundleIdentifier.getter()
{
  *v10.val = sub_1DB50A360();
  *&v10.val[2] = v0;
  v10.val[4] = v1;
  v10.val[5] = v2;
  v10.val[6] = v3;
  v10.val[7] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v10);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = SecTaskCopySigningIdentifier(v5, 0);
  if (!v7)
  {
    v8 = v6;
LABEL_8:

    goto LABEL_9;
  }

  v8 = v7;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_8;
  }

  *v10.val = 0;
  *&v10.val[2] = 0;
  sub_1DB50A640();

  if (*&v10.val[2])
  {
    return *v10.val;
  }

LABEL_9:
  type metadata accessor for DaemonError(0);
  sub_1DB48A0BC();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

unint64_t sub_1DB48A0BC()
{
  result = qword_1ECC43900;
  if (!qword_1ECC43900)
  {
    type metadata accessor for DaemonError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43900);
  }

  return result;
}

uint64_t PreferenceMigrator.renaming<A>(_:to:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = *v4;
  v18 = *a1;
  v19 = v7;
  v22[0] = v8;
  v22[1] = v9;
  sub_1DB36B280(&v18, v22, v23);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1DB304064(0, v10[2] + 1, 1, v10);
    *a4 = v10;
  }

  v15 = v10[2];
  v14 = v10[3];
  if (v15 >= v14 >> 1)
  {
    v10 = sub_1DB304064((v14 > 1), v15 + 1, 1, v10);
    *a4 = v10;
  }

  v18 = v23[0];
  v19 = v23[1];
  v20 = v23[2];
  v21 = v23[3];
  v16 = type metadata accessor for RenamePreferenceMigrationRule(0, a3, v12, v13);
  sub_1DB317E8C(v15, &v18, a4, v16, &off_1F56F3EE0);
  *a4 = v10;
}

uint64_t PreferenceMigrator.mapping<A, B>(_:to:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v11 = a1[1];
  v12 = *a2;
  v13 = a2[1];
  v14 = *v7;
  v21 = *a1;
  v22 = v11;
  v26[0] = v12;
  v26[1] = v13;
  sub_1DB36AD8C(&v21, v26, a3, a4, v27);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a7 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1DB304064(0, v14[2] + 1, 1, v14);
    *a7 = v14;
  }

  v18 = v14[2];
  v17 = v14[3];
  if (v18 >= v17 >> 1)
  {
    v14 = sub_1DB304064((v17 > 1), v18 + 1, 1, v14);
    *a7 = v14;
  }

  v21 = v27[0];
  v22 = v27[1];
  v23 = v27[2];
  v24 = v28;
  v25 = v29;
  v19 = type metadata accessor for MapPreferenceMigrationRule(0, a5, a6, v16);
  sub_1DB317E8C(v18, &v21, a7, v19, &off_1F56F3E78);
  *a7 = v14;
}

uint64_t PreferenceMigrator.removing(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  sub_1DB30BE90(a1, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB304064(0, v4[2] + 1, 1, v4);
    *a2 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB304064((v6 > 1), v7 + 1, 1, v4);
    *a2 = v4;
  }

  v10 = &type metadata for RemovePreferenceMigrationRule;
  v11 = &off_1F56F3D68;
  *&v9 = swift_allocObject();
  sub_1DB48A9F0(v12, v9 + 16);
  v4[2] = v7 + 1;
  sub_1DB2FEA0C(&v9, &v4[5 * v7 + 4]);
  *a2 = v4;
  return sub_1DB48AA4C(v12);
}

uint64_t PreferenceMigrator.setting<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a1;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SetPreferenceMigrationRule(0, v10, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v28 - v18);
  v20 = *a2;
  v21 = a2[1];
  v22 = *v28;
  v30[0] = v20;
  v30[1] = v21;
  (*(v7 + 16))(v9, v29, a3, v17);
  sub_1DB36A510(v30, v9, a3, v23, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1DB304064(0, v22[2] + 1, 1, v22);
    *a4 = v22;
  }

  v26 = v22[2];
  v25 = v22[3];
  if (v26 >= v25 >> 1)
  {
    v22 = sub_1DB304064((v25 > 1), v26 + 1, 1, v22);
    *a4 = v22;
  }

  (*(v13 + 16))(v15, v19, v12);
  sub_1DB317E8C(v26, v15, a4, v12, &off_1F56F3CD8);
  *a4 = v22;
  return (*(v13 + 8))(v19, v12);
}

uint64_t PreferenceMigrator.run(from:to:toleratingErrors:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v29 = a4;
  v7 = v6;
  v9 = result;
  v10 = *v5;
  if (a5)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1DB30BE90(v12, v26);
        v15 = v27;
        v14 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v14 + 8))(v9, a2, a3, v29, v15, v14);
        if (v7)
        {
          __swift_destroy_boxed_opaque_existential_0(v26);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1DB302A34(0, v13[2] + 1, 1, v13);
          }

          v17 = v13[2];
          v16 = v13[3];
          if (v17 >= v16 >> 1)
          {
            v13 = sub_1DB302A34((v16 > 1), v17 + 1, 1, v13);
          }

          v13[2] = v17 + 1;
          v13[v17 + 4] = v7;
          v7 = 0;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v26);
        }

        v12 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    if (v13[2])
    {
      sub_1DB32E3B0();
      swift_allocError();
      v23 = v22;
      if (!v13[2])
      {
        sub_1DB3CCA10("JetCore/CompoundError.swift", 0x1BuLL, 2, 0x15uLL);
      }

      *v23 = v13;
      return swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    v24 = *(v10 + 16);
    if (v24)
    {
      v18 = 0;
      v19 = v10 + 32;
      while (v18 < *(v10 + 16))
      {
        sub_1DB30BE90(v19, v26);
        v20 = v27;
        v21 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v21 + 8))(v9, a2, a3, v29, v20, v21);
        if (v6)
        {
          return __swift_destroy_boxed_opaque_existential_0(v26);
        }

        ++v18;
        result = __swift_destroy_boxed_opaque_existential_0(v26);
        v19 += 40;
        if (v24 == v18)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DB48AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[1];
  if (*(v4[2] + 16))
  {
    sub_1DB306160(a1, a2);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC446D0, &qword_1DB515A20);
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v12;
      }
    }
  }

  if (v7)
  {
    if (*((*(v8 + 16))(v7, v8, a3) + 16) && (sub_1DB306160(a1, a2), (v10 & 1) != 0))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DA0, &qword_1DB50FA80);
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

unint64_t AnyIntentTypes.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  result = sub_1DB313DD4(MEMORY[0x1E69E7CC0]);
  a3[2] = result;
  return result;
}

unint64_t AnyIntentTypes.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  result = sub_1DB313DD4(MEMORY[0x1E69E7CC0]);
  a1[2] = result;
  return result;
}

unint64_t AnyIntentTypes.register<A>(_:forKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v6 + 16);
  result = sub_1DB31E24C(a1, a5, a6, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v6 + 16) = v14;
  return result;
}

unint64_t AnyIntentTypes.registering<A>(_:forKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v13 = *(v6 + 16);
  *a6 = *v6;
  *(a6 + 16) = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1DB31E24C(a1, a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);
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
  sub_1DB31E24C(a1, a3, a4, v8, v9, isUniquelyReferenced_nonNull_native);

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

double sub_1DB48AF28()
{
  v0 = sub_1DB48C470();
  type metadata accessor for LocalPreferences();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  qword_1EE30E8D8 = v1;
  return result;
}

uint64_t static LocalPreferences.currentApplication.getter()
{
  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }
}

uint64_t LocalPreferences.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  v3 = sub_1DB50A620();

  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return v2;
}

uint64_t LocalPreferences.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB50A620();

  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return v2;
}

uint64_t LocalPreferences.__allocating_init(bundleIdentifier:cacheEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = sub_1DB50A620();

  v5 = swift_allocObject();
  sub_1DB48B0E8(v4, v3);
  return v5;
}

uint64_t sub_1DB48B0E8(void *a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
    v5 = a1;
    *(v2 + 32) = [v4 init];
    sub_1DB50A650();
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1DB50A620();

    v8 = [v6 initWithSuiteName_];

    *(v2 + 40) = v8;
    *(v2 + 48) = [objc_allocWithZone(type metadata accessor for LocalPreferences.UserDefaultsObserver()) init];
    v9 = sub_1DB313BA4(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46168, &qword_1DB51EA88);
    v10 = swift_allocObject();
    *(v10 + 24) = 0;

    *(v10 + 16) = v9;

    v11 = *(v2 + 48);
    *(v2 + 56) = v10;
    if (v11)
    {
      swift_weakAssign();
    }
  }

  else
  {
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
  }

  return v2;
}

void LocalPreferences.deinit()
{
  v1 = *(v0 + 56);
  if (v1 && (v2 = *(v0 + 40)) != 0 && (v3 = *(v0 + 48)) != 0)
  {

    v13 = v2;
    v4 = v3;
    os_unfair_lock_lock((v1 + 24));
    v5 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        goto LABEL_15;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        do
        {
LABEL_12:
          v8 &= v8 - 1;

          v12 = sub_1DB50A620();

          [v13 removeObserver:v4 forKeyPath:v12 context:0];
        }

        while (v8);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t LocalPreferences.__deallocating_deinit()
{
  LocalPreferences.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

BOOL LocalPreferences.isValueForced(forKey:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = sub_1DB50A620();

  IsForced = CFPreferencesAppValueIsForced(v4, *(v1 + 16));

  return IsForced != 0;
}

uint64_t sub_1DB48B4AC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  v2 = sub_1DB50A620();

  return v2;
}

double LocalPreferences.subscript.getter@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 8);
  v7(v5, v6);
  if (*(v2 + 24) == 1 && (v8 = *(v2 + 32)) != 0)
  {
    v9 = v8;
    v10 = sub_1DB50A620();

    v11 = [v9 objectForKey_];

    if (v11)
    {
      v12 = v11[2];
      if (v12)
      {
        *(a2 + 24) = swift_getObjectType();
        swift_unknownObjectRetain();

        *a2 = v12;
        return result;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 8))(v14, v15);
  v16 = sub_1DB50A620();

  v17 = CFPreferencesCopyAppValue(v16, *(v3 + 16));

  type metadata accessor for LocalPreferences.CacheValue();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  swift_unknownObjectRetain();
  v19 = (v7)(v5, v6);
  sub_1DB48B8B4(v18, v19, v20);

  if (v17)
  {
    *(a2 + 24) = swift_getObjectType();
    *a2 = v17;
    return result;
  }

LABEL_10:
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1DB48B728(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1DB30BE90(a3, v12);
  sub_1DB301CDC(a1, v11);
  v5 = *a2;
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = sub_1DB48B4AC(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  v9 = sub_1DB50B110();
  CFPreferencesSetAppValue(v8, v9, *(v5 + 16));

  swift_unknownObjectRelease();
  sub_1DB301DBC(v11);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t LocalPreferences.subscript.setter(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 8))(v5, v6);
  v7 = sub_1DB50A620();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  v8 = sub_1DB50B110();
  CFPreferencesSetAppValue(v7, v8, *(v2 + 16));

  swift_unknownObjectRelease();
  sub_1DB301DBC(a1);
  return __swift_destroy_boxed_opaque_existential_0(a2);
}

void sub_1DB48B8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 24) == 1)
  {
    v4 = *(v3 + 32);
    if (v4 && (v5 = *(v3 + 40)) != 0 && (v6 = *(v3 + 48)) != 0 && (v7 = *(v3 + 56)) != 0)
    {
      if (a1)
      {
        v9 = v4;
        v10 = v5;
        v11 = v6;

        v12 = sub_1DB50A620();
        [v9 setObject:a1 forKey:{v12, a1}];

        MEMORY[0x1EEE9AC00](v13);
        os_unfair_lock_lock((v7 + 24));
        sub_1DB48C7CC(v7 + 16, v27);
        os_unfair_lock_unlock((v7 + 24));
        if (LOBYTE(v27[0]) == 1)
        {
          v14 = sub_1DB50A620();
          [v10 addObserver:v11 forKeyPath:v14 options:1 context:0];

          MEMORY[0x1EEE9AC00](v15);
          os_unfair_lock_lock((v7 + 24));
          sub_1DB48C83C((v7 + 16));
          os_unfair_lock_unlock((v7 + 24));
        }

        else
        {
        }
      }

      else
      {
        v19 = v4;
        v20 = v5;
        v21 = v6;

        v22 = sub_1DB50A620();
        [v19 removeObjectForKey_];

        MEMORY[0x1EEE9AC00](v23);
        os_unfair_lock_lock((v7 + 24));
        sub_1DB48C750(v7 + 16, v27);
        os_unfair_lock_unlock((v7 + 24));
        if (LOBYTE(v27[0]) == 1)
        {
          v24 = sub_1DB50A620();
          [v20 removeObserver:v21 forKeyPath:v24 context:0];

          MEMORY[0x1EEE9AC00](v25);
          os_unfair_lock_lock((v7 + 24));
          sub_1DB48C7B0((v7 + 16), v27);
          os_unfair_lock_unlock((v7 + 24));
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v27[3] = MEMORY[0x1E69E6158];
      v27[0] = 0xD00000000000007ALL;
      v27[1] = 0x80000001DB52FD60;
      *(v18 + 48) = 0u;
      *(v18 + 32) = 0u;
      sub_1DB301D4C(v27, v18 + 32);
      *(v18 + 64) = 0;
      *(v17 + 32) = v18;
      v27[0] = v16;
      v26 = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v26);
    }
  }
}

uint64_t (*LocalPreferences.subscript.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x98uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = v2;
  sub_1DB30BE90(a2, v5);
  LocalPreferences.subscript.getter(a2, v6 + 80);
  return sub_1DB48BD80;
}

void sub_1DB48BD80(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  if (a2)
  {
    sub_1DB301CDC(v2 + 80, v2 + 112);
    sub_1DB2FEA0C(v2, v2 + 40);
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    __swift_project_boxed_opaque_existential_1((v2 + 40), v4);
    (*(v5 + 8))(v4, v5);
    v6 = sub_1DB50A620();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
    v7 = sub_1DB50B110();
    CFPreferencesSetAppValue(v6, v7, *(v3 + 16));
    swift_unknownObjectRelease();

    sub_1DB301DBC(v2 + 112);
    __swift_destroy_boxed_opaque_existential_0((v2 + 40));
    sub_1DB301DBC(v2 + 80);
  }

  else
  {
    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(*a1, v8);
    (*(v9 + 8))(v8, v9);
    v10 = sub_1DB50A620();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
    v11 = sub_1DB50B110();
    CFPreferencesSetAppValue(v10, v11, *(v3 + 16));
    swift_unknownObjectRelease();

    sub_1DB301DBC(v2 + 80);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  free(v2);
}

void LocalPreferences.removeValue(forKey:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 8))(v2, v3);
  key = sub_1DB50A620();

  CFPreferencesSetAppValue(key, 0, *(v1 + 16));
}

id sub_1DB48C114()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DB48C15C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = sub_1DB306160(a2, a3);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB312ED0();
      v10 = v12;
    }

    v11 = *(*(v10 + 56) + v8);
    result = sub_1DB31112C(v8, v10);
    *a1 = v10;
  }

  else
  {
    v11 = 2;
  }

  *a4 = v11;
  return result;
}

uint64_t sub_1DB48C214(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = sub_1DB48B4AC(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  v9 = sub_1DB50B110();
  CFPreferencesSetAppValue(v8, v9, *(v3 + 16));

  swift_unknownObjectRelease();
  sub_1DB301DBC(a1);
  return __swift_destroy_boxed_opaque_existential_0(a2);
}

uint64_t (*sub_1DB48C2C0(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = LocalPreferences.subscript.modify(v4, a2);
  return sub_1DB48C338;
}

void sub_1DB48C338(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1DB48C380(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = sub_1DB48B4AC(v3, v4);
  CFPreferencesSetAppValue(v5, 0, *(v2 + 16));
}

id sub_1DB48C470()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1DB50A620();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
    sub_1DB30C200(v6, v7);
    sub_1DB300B14(v7, v6);
    if (swift_dynamicCast())
    {
      v3 = sub_1DB50A620();

      __swift_destroy_boxed_opaque_existential_0(v7);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v5 = *MEMORY[0x1E695E8A8];

  return v5;
}

uint64_t sub_1DB48C5BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    if (a4 && *(a4 + 16))
    {
      v7 = sub_1DB314CB4();
      if (v8)
      {
        sub_1DB300B14(*(a4 + 56) + 32 * v7, &v12);
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
    if (swift_dynamicCast())
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }

    if (swift_weakLoadStrong())
    {
      type metadata accessor for LocalPreferences.CacheValue();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      swift_unknownObjectRetain();
      sub_1DB48B8B4(v10, v5, a2);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1DB48C6F8()
{
  result = qword_1ECC42618;
  if (!qword_1ECC42618)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42618);
  }

  return result;
}

unint64_t sub_1DB48C750@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    result = sub_1DB306160(*(v3 + 16), *(v3 + 24));
    if (v7)
    {
      LOBYTE(v6) = *(*(v5 + 56) + result);
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  *a2 = v6;
  return result;
}

unint64_t sub_1DB48C7CC@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_1DB306160(*(v3 + 16), *(v3 + 24));
    if (v6)
    {
      v7 = *(*(v5 + 56) + result) ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  *a2 = v7 & 1;
  return result;
}

unint64_t sub_1DB48C83C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  result = sub_1DB31E3EC(1, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v7;
  return result;
}

uint64_t JSONObject.decode<A>(_:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;

  v6 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v8);
  JSONObject.decode<A>(_:withUserInfo:)(v6, v6, a3, a4);
}

uint64_t JSONObject.decode<A>(_:withUserInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB3171C0(v4, v8);
  v9 = a2;
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DB34A154();
  v7 = swift_allocObject();
  sub_1DB34A1A8(v8, v7 + 16);

  sub_1DB50ADB0();
  return sub_1DB34A204(v8);
}

unint64_t sub_1DB48CA10()
{
  v1 = 0x647574696E67616DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E646C656966;
  }
}

uint64_t sub_1DB48CA70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB48D308(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB48CA98(uint64_t a1)
{
  v2 = sub_1DB48D12C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB48CAD4(uint64_t a1)
{
  v2 = sub_1DB48D12C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB48CB10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46170, &qword_1DB51EB58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB48D12C();
  sub_1DB50BDF0();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    v15 = sub_1DB50B740();
    v16 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44390, &unk_1DB51EB60);
    v17 = 1;
    sub_1DB46DDE0();
    sub_1DB50B710();
    if (v20)
    {
      v10 = 1048576.0;
    }

    else if (v19)
    {
      v10 = 1048576.0;
    }

    else
    {
      v10 = v18;
    }

    v17 = 2;
    sub_1DB50B710();
    (*(v6 + 8))(v8, v5);
    if (v20)
    {
      v12 = 2.0;
    }

    else
    {
      v12 = v18;
      if (v19)
      {
        v12 = 2.0;
      }
    }

    v13 = v16;
    *a2 = v15;
    *(a2 + 8) = v13;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB48CD98@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{

  JSONObject.subscript.getter(0x6D614E646C656966, 0xE900000000000065, v18);
  v5 = JSONObject.string.getter();
  v7 = v6;
  sub_1DB3151CC(v18);
  if (v7)
  {
    JSONObject.subscript.getter(0x647574696E67616DLL, 0xE900000000000065, v18);
    v8 = COERCE_DOUBLE(JSONObject.double.getter());
    v10 = v9;
    sub_1DB3151CC(v18);
    if (v10)
    {
      v11 = 1048576.0;
    }

    else
    {
      v11 = v8;
    }

    JSONObject.subscript.getter(0xD000000000000011, 0x80000001DB52FE40, v18);
    v12 = JSONObject.double.getter();
    v14 = v13;
    sub_1DB3151CC(a1);
    result = sub_1DB3151CC(v18);
    v16 = *&v12;
    *a3 = v5;
    *(a3 + 8) = v7;
    if (v14)
    {
      v16 = 2.0;
    }

    *(a3 + 16) = v11;
    *(a3 + 24) = v16;
  }

  else
  {
    sub_1DB315178();
    swift_allocError();
    *v17 = xmmword_1DB51EA90;
    *(v17 + 16) = 0x20000001F56FE390uLL;
    *(v17 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  return result;
}

uint64_t sub_1DB48CF30(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if (!*(v9 + 16))
  {
  }

  v10 = sub_1DB306160(v3, v4);
  if ((v11 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v9 + 56) + 32 * v10, v20);

  sub_1DB36BD70();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v21;
    [v21 doubleValue];
    v15 = v14;
    v16 = NAN;
    if (v6 > 0.0 && v5 >= 0.0)
    {
      v17 = __exp10(v5);
      v16 = v17 * trunc(v15 / v6 / v17);
    }

    v20[3] = MEMORY[0x1E69E63B0];
    *v20 = v16;
    v18 = a1[3];
    v19 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 16))(v20, v3, v4, v18, v19);

    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return result;
}

unint64_t sub_1DB48D12C()
{
  result = qword_1ECC46178;
  if (!qword_1ECC46178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46178);
  }

  return result;
}

BOOL sub_1DB48D180(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  result = 0;
  if (v6 || (sub_1DB50BA30()) && v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return result;
}

unint64_t sub_1DB48D204()
{
  result = qword_1ECC46180;
  if (!qword_1ECC46180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46180);
  }

  return result;
}

unint64_t sub_1DB48D25C()
{
  result = qword_1ECC46188;
  if (!qword_1ECC46188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46188);
  }

  return result;
}

unint64_t sub_1DB48D2B4()
{
  result = qword_1ECC46190;
  if (!qword_1ECC46190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46190);
  }

  return result;
}

uint64_t sub_1DB48D308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB52FE40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t JetPackAssetCacheStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t JetPackAssetStandardCachePolicy.status(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3[3] = &type metadata for SystemDateProvider;
  v3[4] = &protocol witness table for SystemDateProvider;
  JetPackAssetStandardCachePolicy.status(for:dateProvider:)(a1, v3, a2);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t JetPackAssetStandardCachePolicy.status(for:dateProvider:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1DB509DD0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = a1 + *(type metadata accessor for JetPackAsset(0) + 20);
  result = sub_1DB48D850(v13);
  if (result)
  {
    goto LABEL_2;
  }

  v30 = v7;
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v16 = (v13 + *(result + 44));
  if ((v16[40] & 1) == 0)
  {
    sub_1DB509D30();
    v29 = a3;
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    (*(v18 + 8))(v17, v18);
    sub_1DB48DD24();
    v19 = sub_1DB50A5F0();
    v20 = *(v30 + 8);
    v20(v9, v6);
    result = (v20)(v12, v6);
    a3 = v29;
    if (v19)
    {
      v15 = 3;
      goto LABEL_12;
    }
  }

  if (v16[8] & 1) == 0 && (sub_1DB509D30(), v29 = a3, v21 = a2[3], v22 = a2[4], __swift_project_boxed_opaque_existential_1(a2, v21), (*(v22 + 8))(v21, v22), sub_1DB48DD24(), v23 = sub_1DB50A5F0(), v24 = *(v30 + 8), v24(v9, v6), result = (v24)(v12, v6), a3 = v29, (v23))
  {
LABEL_2:
    v15 = 2;
  }

  else
  {
    v15 = 0;
    if ((v16[24] & 1) == 0)
    {
      sub_1DB509D30();
      v25 = a2[3];
      v26 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v25);
      (*(v26 + 8))(v25, v26);
      sub_1DB48DD24();
      v27 = sub_1DB50A5F0();
      v28 = *(v30 + 8);
      v28(v9, v6);
      result = (v28)(v12, v6);
      if (v27)
      {
        v15 = 1;
      }
    }
  }

LABEL_12:
  *a3 = v15;
  return result;
}

uint64_t sub_1DB48D850(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  v3 = *(a1 + v2[11] + 41);
  if (v3 >= 4)
  {
LABEL_11:

    v6 = 0;
    return v6 & 1;
  }

  v4 = sub_1DB50BA30();

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = (a1 + v2[7]);
  if (v5[3])
  {
    goto LABEL_4;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  if (qword_1EE30DAF8 != -1)
  {
    swift_once();
  }

  if (v7 != xmmword_1EE312DC0)
  {
    goto LABEL_26;
  }

  v10 = *(&xmmword_1EE312DC0 + 1);
  v26 = qword_1EE312DD0;
  if (v3 <= 1 && v3)
  {
    goto LABEL_16;
  }

  v11 = sub_1DB50BA30();

  if (v11)
  {
    goto LABEL_17;
  }

  if (v3 == 2)
  {
    goto LABEL_16;
  }

  v12 = sub_1DB50BA30();

  if (v12)
  {
    goto LABEL_17;
  }

  if (v3 > 1)
  {
LABEL_16:

LABEL_17:
    if (v8 == v10)
    {
      goto LABEL_18;
    }

LABEL_26:
    v6 = 1;
    return v6 & 1;
  }

  v25 = sub_1DB50BA30();

  if ((v25 & 1) != 0 && v8 != v10)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v3 != 2)
  {
    v13 = sub_1DB50BA30();

    if (v13)
    {
      goto LABEL_25;
    }

    if (v3 <= 1)
    {
      v14 = sub_1DB50BA30();

      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

LABEL_25:
  if (v9 != v26)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v3 <= 2)
  {
    v16 = sub_1DB50BA30();

    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v17 = (a1 + v2[8]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = JEGestaltGetBuildVersion();
    v21 = sub_1DB50A650();
    v23 = v22;

    if (v19 != v21 || v18 != v23)
    {
      v24 = sub_1DB50BA30();

      v6 = v24 ^ 1;
      return v6 & 1;
    }

    goto LABEL_11;
  }

LABEL_4:
  v6 = 0;
  return v6 & 1;
}

unint64_t sub_1DB48DD24()
{
  result = qword_1EE30E270;
  if (!qword_1EE30E270)
  {
    sub_1DB509DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E270);
  }

  return result;
}

unint64_t sub_1DB48DD80()
{
  result = qword_1ECC46198;
  if (!qword_1ECC46198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46198);
  }

  return result;
}

uint64_t sub_1DB48DDD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3[3] = &type metadata for SystemDateProvider;
  v3[4] = &protocol witness table for SystemDateProvider;
  JetPackAssetStandardCachePolicy.status(for:dateProvider:)(a1, v3, a2);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

JetCore::LogMessageLevel_optional __swiftcall LogMessageLevel.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = v1;
  v5 = name._countAndFlagsBits == 0x6775626564 && name._object == 0xE500000000000000;
  if (v5 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1868983913 && object == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x676E696E726177 && object == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x726F727265 && object == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v8 = sub_1DB50BA30();

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t LogMessageLevel.name.getter()
{
  v1 = 0x6775626564;
  if (*v0 == 2)
  {
    v1 = 1868983913;
  }

  v2 = 0x726F727265;
  if (*v0)
  {
    v2 = 0x676E696E726177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

JetCore::LogMessageLevel_optional __swiftcall LogMessageLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DB48E05C()
{
  result = qword_1ECC461A0;
  if (!qword_1ECC461A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461A0);
  }

  return result;
}

unint64_t sub_1DB48E118()
{
  result = qword_1ECC461A8;
  if (!qword_1ECC461A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461B0, &qword_1DB51EE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461A8);
  }

  return result;
}

uint64_t sub_1DB48E1A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1852793705;
    }

    else
    {
      v3 = 0x6E6572646C696863;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1852793705;
  if (a2 != 2)
  {
    v8 = 0x6E6572646C696863;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v6 = 0x656C746974;
    v5 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48E2C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726575516C7275;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79646F426E6F736ALL;
    }

    else
    {
      v4 = 0x79646F426D726F66;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x726564616568;
    }

    else
    {
      v4 = 0x79726575516C7275;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x79646F426E6F736ALL;
  if (a2 != 2)
  {
    v7 = 0x79646F426D726F66;
  }

  if (a2)
  {
    v2 = 0x726564616568;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DB50BA30();
  }

  return v10 & 1;
}

uint64_t sub_1DB48E400(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x506C616D69636564;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C69616D65;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v7 = 0x506C616D69636564;
    v8 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6C69616D65;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48E54C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656D697270;
    }

    else
    {
      v4 = 0x6D726F6674616C70;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746C7561666564;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656D697270;
  if (a2 != 2)
  {
    v8 = 0x6D726F6674616C70;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x746C7561666564;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48E680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657373696D736964;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6669636570736E75;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000646569;
    }

    else
    {
      v6 = 0x80000001DB529180;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x756F72676B636162;
    }

    else
    {
      v5 = 0x657373696D736964;
    }

    if (v4)
    {
      v6 = 0xEA0000000000646ELL;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6669636570736E75;
  v8 = 0x80000001DB529180;
  if (a2 == 2)
  {
    v8 = 0xEB00000000646569;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48E7DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6449746E65726170;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7865646E496E6FLL;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6973736572706D69;
    }

    else
    {
      v6 = 0x4449657571696E75;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE200000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 25705;
    }

    else
    {
      v6 = 0x6449746E65726170;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6973736572706D69;
  v10 = 0xEF7865646E496E6FLL;
  if (a2 != 2)
  {
    v9 = 0x4449657571696E75;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 25705;
    v8 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DB50BA30();
  }

  return v13 & 1;
}

uint64_t sub_1DB48E91C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73646C656966;
    }

    else
    {
      v5 = 25705;
    }

    if (v2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0x69466E6F6D6D6F63;
    v4 = 0xEC00000073646C65;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x80000001DB529090;
    }

    if (a1 == 2)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73646C656966;
    }

    else
    {
      v11 = 25705;
    }

    if (a2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x69466E6F6D6D6F63;
    v8 = 0x80000001DB529090;
    if (a2 == 3)
    {
      v8 = 0xEC00000073646C65;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x6D6F74737563;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1DB50BA30();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1DB48EAA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x80000001DB529090;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C65694665676170;
    }

    else
    {
      v5 = 0x7463757274736E69;
    }

    if (v4)
    {
      v6 = 0xEA00000000007364;
    }

    else
    {
      v6 = 0xEC000000736E6F69;
    }
  }

  v7 = 0x6D6F74737563;
  v8 = 0x80000001DB529090;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0x6C65694665676170;
    v2 = 0xEA00000000007364;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48EBE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C46646C756F6873;
    }

    else
    {
      v3 = 0x6369706F74;
    }

    if (v2)
    {
      v4 = 0xEB00000000687375;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x73646C656966;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6E6964756C636E69;
    }

    else
    {
      v3 = 0x6E6964756C637865;
    }

    v4 = 0xEF73646C65694667;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6C46646C756F6873;
    }

    else
    {
      v8 = 0x6369706F74;
    }

    if (a2)
    {
      v7 = 0xEB00000000687375;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x6E6964756C636E69;
    if (a2 != 3)
    {
      v5 = 0x6E6964756C637865;
    }

    if (a2 == 2)
    {
      v6 = 0x73646C656966;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xEF73646C65694667;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_1DB50BA30();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1DB48ED90(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726F6E696DLL;
    }

    else
    {
      v3 = 0x726F6A616DLL;
    }

    v2 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x6863746170;
  }

  else if (a1 == 3)
  {
    v2 = 0xE500000000000000;
    v3 = 0x646C697562;
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 1701736302;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x726F6E696DLL;
    }

    else
    {
      v8 = 0x726F6A616DLL;
    }

    v7 = 0xE500000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x646C697562;
    if (a2 != 3)
    {
      v5 = 1701736302;
      v4 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x6863746170;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_1DB50BA30();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_1DB48EEF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a1 + 16))
  {
    v3 = 0;
    v30 = a1 + 32;
    v31 = a2 + 32;
    v29 = *(a2 + 16);
    while (2)
    {
      if (v3 == v2)
      {
        return 1;
      }

      v4 = (v31 + 56 * v3);
      v5 = v4[3];
      v6 = *(v4 + 16);
      v8 = *v4;
      v7 = v4[1];

      if (!v5)
      {
        return 1;
      }

      v9 = v30 + 56 * v3;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v7)
      {
        if (!v10 || (v8 == *v9 ? (v13 = v7 == v10) : (v13 = 0), !v13 && (sub_1DB50BA30() & 1) == 0))
        {
LABEL_42:

LABEL_43:

          return 0;
        }
      }

      else if (v10)
      {
        goto LABEL_42;
      }

      if (v6 == v11)
      {

        if (sub_1DB48F3DC(v12, v5))
        {
          ++v3;
          v14 = 1 << *(v5 + 32);
          if (v14 < 64)
          {
            v15 = ~(-1 << v14);
          }

          else
          {
            v15 = -1;
          }

          v16 = v15 & *(v5 + 64);
          v17 = (v14 + 63) >> 6;

          v18 = 0;
          while (v16)
          {
LABEL_27:
            v21 = __clz(__rbit64(v16)) | (v18 << 6);
            v22 = (*(v5 + 48) + 16 * v21);
            v23 = *v22;
            v24 = v22[1];
            sub_1DB300B14(*(v5 + 56) + 32 * v21, v36);
            v35[0] = v23;
            v35[1] = v24;
            sub_1DB300B14(v36, v34);
            if (*(v12 + 16))
            {

              v25 = sub_1DB306160(v23, v24);
              if (v26)
              {
                sub_1DB300B14(*(v12 + 56) + 32 * v25, &v32);
              }

              else
              {
                v32 = 0u;
                v33 = 0u;
              }
            }

            else
            {
              v32 = 0u;
              v33 = 0u;
            }

            v16 &= v16 - 1;
            v19 = sub_1DB404E3C(v34, &v32, 3uLL, 0);
            sub_1DB30623C(&v32, &qword_1ECC426B0, &qword_1DB50EEB0);
            sub_1DB30623C(v34, &qword_1ECC426B0, &qword_1DB50EEB0);
            sub_1DB30623C(v35, &qword_1ECC43438, &qword_1DB511338);
            if ((v19 & 1) == 0)
            {

              goto LABEL_43;
            }
          }

          while (1)
          {
            v20 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
              goto LABEL_42;
            }

            if (v20 >= v17)
            {
              break;
            }

            v16 = *(v5 + 64 + 8 * v20);
            ++v18;
            if (v16)
            {
              v18 = v20;
              goto LABEL_27;
            }
          }

          if ((sub_1DB325B44() & 1) == 0 || (sub_1DB325B44() & 1) == 0)
          {

            goto LABEL_43;
          }

          v27 = sub_1DB325B44();

          v2 = v29;
          if (v27)
          {
            continue;
          }

          return 0;
        }
      }

      goto LABEL_42;
    }
  }

  return 0;
}

uint64_t sub_1DB48F3DC(uint64_t a1, uint64_t a2)
{
  v27 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 64);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v4 = ~(-1 << v8);
  }

  v9 = v4 & *(a1 + 64);
  v10 = (v3 + 63) >> 6;
  v11 = (v8 + 63) >> 6;

  v28 = a1;

  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (!v6)
    {
      if (v10 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v10;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v15 >= v10)
        {
          break;
        }

        v6 = *(v27 + 8 * v15);
        ++v13;
        if (v6)
        {
          v13 = v15;
          goto LABEL_18;
        }
      }

      v6 = 0;
      v30 = 0;
      v20 = 0;
      v13 = v17;
      if (v9)
      {
        goto LABEL_24;
      }

LABEL_19:
      while (1)
      {
        v21 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v21 >= v11)
        {
          if (v20)
          {
            goto LABEL_33;
          }

          v23 = 0;
          goto LABEL_35;
        }

        v9 = *(v7 + 8 * v21);
        ++v14;
        if (v9)
        {
          v14 = v21;
          goto LABEL_24;
        }
      }

LABEL_40:
      __break(1u);
      return result;
    }

    v15 = v13;
LABEL_18:
    v18 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = (*(a2 + 48) + ((v15 << 10) | (16 * v18)));
    v20 = v19[1];
    v30 = *v19;

    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_24:
    v22 = (*(v28 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v9)))));
    v24 = *v22;
    v23 = v22[1];

    if (!v20)
    {
      break;
    }

    if (!v23)
    {
LABEL_33:

      goto LABEL_36;
    }

    v9 &= v9 - 1;
    if (v30 == v24 && v20 == v23)
    {
    }

    else
    {
      v26 = sub_1DB50BA30();

      if ((v26 & 1) == 0)
      {

        return 0;
      }
    }
  }

LABEL_35:

  if (v23)
  {
LABEL_36:

    return 0;
  }

  return 1;
}

uint64_t PageMetrics.InvocationPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1DB50BA40();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PageMetrics.InvocationPoint.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t PageMetrics.InvocationPoint.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageMetrics.Instruction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v22);
  *&v19 = v6;
  MetricsData.init(deserializing:using:)(v22, &v19, &v23);
  if (v3)
  {
    return sub_1DB3151CC(a1);
  }

  v27 = *(&v23 + 1);
  v18 = v23;
  v17 = v24;
  v8 = *(&v24 + 1);
  v9 = v25;
  v10 = v26;
  JSONObject.subscript.getter(0xD000000000000010, 0x80000001DB5290B0, v22);
  JSONObject.array.getter(&v19);
  sub_1DB3151CC(v22);
  if (!*(&v20 + 1))
  {

    sub_1DB30623C(&v19, &qword_1ECC42E28, &qword_1DB50FB20);
    sub_1DB315178();
    swift_allocError();
    *v16 = 0xD000000000000010;
    v16[1] = 0x80000001DB5290B0;
    v16[2] = 0x20000001F56FE800uLL;
    v16[3] = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  v23 = v19;
  v24 = v20;
  v11 = v21;
  v25 = v21;
  v12 = *(&v20 + 1);
  __swift_project_boxed_opaque_existential_1(&v23, *(&v20 + 1));
  v13 = (*(v11 + 56))(sub_1DB48FA88, 0, &type metadata for PageMetrics.InvocationPoint, v12, v11);
  v14 = sub_1DB324A20(v13);

  sub_1DB3151CC(a1);
  result = sub_1DB314F08(&v23);
  v15 = v27;
  *a3 = v18;
  *(a3 + 8) = v15;
  *(a3 + 16) = v17;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v14;
  return result;
}

uint64_t sub_1DB48FA88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1DB330D60(a1, v8);
  if (v9)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1DB300B14(v3, v7);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0(v8);
      *a2 = v5;
      a2[1] = v6;
      return result;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    result = sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

__n128 PageMetrics.Instruction.init(data:invocationPoints:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

uint64_t PageMetrics.Instruction.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 PageMetrics.Instruction.data.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[5];

  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  result = *(a1 + 3);
  *(v1 + 24) = result;
  *(v1 + 40) = v6;
  return result;
}

uint64_t PageMetrics.Instruction.invocationPoints.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t PageMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x7463757274736E69, 0xEC000000736E6F69, &v14);

  v6 = sub_1DB320BC8(&v14, v5);
  JSONObject.subscript.getter(0x6C65694665676170, 0xEA00000000007364, v13);
  sub_1DB330D60(v13, v11);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_1DB408B14(&v14);
    sub_1DB3151CC(v13);
    __swift_destroy_boxed_opaque_existential_0(v11);
    if (*(&v15 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
      v11[0] = 0;
      sub_1DB50A4A0();
      v7 = v11[0];
      sub_1DB317740(&v14);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DB3151CC(v13);
    sub_1DB30623C(v11, &qword_1ECC42E38, &qword_1DB50FB80);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_1DB30623C(&v14, &qword_1ECC42EA0, &qword_1DB50FB88);
  v7 = 0;
LABEL_6:
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v14);
  v11[0] = v5;
  ScalarDictionary.init(tryDeserializing:using:)(&v14, v11, v13);
  v8 = v13[0];
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB529090, v13);
  sub_1DB330D60(v13, v11);
  if (!v12)
  {
    sub_1DB3151CC(v13);
    sub_1DB30623C(v11, &qword_1ECC42E38, &qword_1DB50FB80);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1DB408B14(&v14);
  sub_1DB3151CC(v13);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (!*(&v15 + 1))
  {
LABEL_11:
    sub_1DB30623C(&v14, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_12:
    v9 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v11[0] = 0;
  sub_1DB50A4A0();
  v9 = v11[0];
  sub_1DB317740(&v14);
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_13:
  result = sub_1DB3151CC(a1);
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  return result;
}

uint64_t PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  a5[1] = a2;
  a5[2] = v5;
  a5[3] = a4;
  return result;
}

unint64_t static PageMetrics.notInstrumented.getter@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1DB34DB68(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC8];
  a1[3] = result;
  return result;
}

uint64_t PageMetrics.instructions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PageMetrics.pageFields.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PageMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t PageMetrics.clickLocationFields.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t PageMetrics.mergingWith(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *v2;
  v9 = *(v2 + 16);
  v15 = MEMORY[0x1E69E7CC0];

  sub_1DB3993D8(v8);
  sub_1DB3993D8(v4);
  v10 = v15;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_1DB399DEC(v7, sub_1DB34208C, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = v14;

  *a2 = v10;
  a2[1] = v5;
  a2[2] = v12;
  a2[3] = v6;
  return result;
}

uint64_t PageMetrics._isEqual(to:)(uint64_t *a1)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  if ((sub_1DB48EEF0(*a1, v5) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DB404C28(v6, v2, 3uLL, 0) & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1DB33C710(v8, v4);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return sub_1DB404C28(v7, v3, 3uLL, 0);
}

uint64_t sub_1DB490390(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001DB5290B0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0x80000001DB5290B0;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB50BA30();
  }

  return v8 & 1;
}

uint64_t sub_1DB490434()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB4904B4(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB490520(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB49059C@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB50B680();

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

void sub_1DB4905FC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DB5290B0;
  v3 = 1635017060;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1DB490638()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DB490670@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB50B680();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DB4906D4(uint64_t a1)
{
  v2 = sub_1DB491D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB490710(uint64_t a1)
{
  v2 = sub_1DB491D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageMetrics.Instruction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC461B8, &qword_1DB51EEE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB491D30();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  sub_1DB39A15C();
  sub_1DB50B780();
  v9 = v21;
  v26 = v22;
  v19 = v23;
  v17 = v20;
  v18 = v24;
  v10 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC461C8, &qword_1DB51EEF0);
  v27 = 1;
  sub_1DB491D84();
  sub_1DB50B780();
  v11 = sub_1DB324A20(v20);
  v16 = v9;
  v12 = v11;

  (*(v6 + 8))(v8, v5);
  v13 = v16;
  *a2 = v17;
  *(a2 + 8) = v13;
  *(a2 + 16) = v26;
  v14 = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v14;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PageMetrics.Instruction.encode(to:)(void *a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC461F0, &qword_1DB51EF00);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v17 - v3;
  v5 = v1[1];
  v20 = *v1;
  v28 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v18 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB491D30();

  sub_1DB50BE40();
  v9 = v21;
  v23[0] = v20;
  v23[1] = v5;
  v10 = v4;
  LOBYTE(v24) = v28;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v29 = 0;
  sub_1DB39A2D4();
  v11 = v22;
  sub_1DB50B8A0();

  if (v11)
  {
    return (*(v19 + 8))(v4, v9);
  }

  v13 = *(v18 + 2);
  if (v13)
  {
    v20 = v4;
    v14 = sub_1DB3241AC(v13, 0);
    v22 = sub_1DB3243BC(v23, (v14 + 4), v13, v18);
    v15 = v23[0];

    result = sub_1DB2FEA60(v15);
    if (v22 != v13)
    {
      __break(1u);
      return result;
    }

    v16 = v19;
    v10 = v20;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v16 = v19;
  }

  v23[0] = v14;
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC461C8, &qword_1DB51EEF0);
  sub_1DB491EE0();
  sub_1DB50B8A0();

  return (*(v16 + 8))(v10, v9);
}

uint64_t sub_1DB490D20()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB490DF0(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB490EAC(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

unint64_t sub_1DB490F78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB491CE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB490FA8(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001DB529090;
  }

  if (*v1)
  {
    v3 = 0x6C65694665676170;
    v2 = 0xEA00000000007364;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DB491034()
{
  v1 = 0x7463757274736E69;
  v2 = 0x6D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6C65694665676170;
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

unint64_t sub_1DB4910BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB491CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB4910E4(uint64_t a1)
{
  v2 = sub_1DB49203C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB491120(uint64_t a1)
{
  v2 = sub_1DB49203C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageMetrics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46210, &qword_1DB51EF08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB49203C();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v23) = 0;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46220, &qword_1DB51EF10);
    LOBYTE(v20) = 0;
    sub_1DB492090();
    sub_1DB50B780();
    v10 = v23;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v23) = 1;
  if (sub_1DB50B7B0())
  {
    LOBYTE(v20) = 1;
    sub_1DB324D00();
    sub_1DB50B780();
    sub_1DB330D60(&v23, v18);
    if (v19)
    {
      __swift_project_boxed_opaque_existential_1(v18, v19);
      sub_1DB408B14(&v20);
      __swift_destroy_boxed_opaque_existential_0(v18);
      if (*(&v21 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
        v18[0] = 0;
        sub_1DB50A4A0();
        sub_1DB3151CC(&v23);
        v26 = v18[0];
        sub_1DB317740(&v20);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1DB30623C(v18, &qword_1ECC42E38, &qword_1DB50FB80);
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
    }

    sub_1DB3151CC(&v23);
    sub_1DB30623C(&v20, &qword_1ECC42EA0, &qword_1DB50FB88);
  }

  v26 = 0;
LABEL_13:
  LOBYTE(v23) = 2;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
    LOBYTE(v20) = 2;
    sub_1DB39A328(&qword_1ECC444B8, &protocol witness table for ScalarDictionary, &protocol conformance descriptor for <A> DiscardOnError<A>);
    sub_1DB50B780();
    v17 = v10;
    v11 = v23;
  }

  else
  {
    v17 = v10;
    v11 = MEMORY[0x1E69E7CC8];
  }

  v16 = v11;
  v12 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  LOBYTE(v23) = 3;
  if ((sub_1DB50B7B0() & 1) == 0)
  {
    v13 = v17;
    goto LABEL_26;
  }

  LOBYTE(v18[0]) = 3;
  sub_1DB324D00();
  sub_1DB50B780();
  sub_1DB330D60(&v20, v18);
  v13 = v17;
  if (!v19)
  {
    sub_1DB3151CC(&v20);
    sub_1DB30623C(v18, &qword_1ECC42E38, &qword_1DB50FB80);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_1DB408B14(&v23);
  sub_1DB3151CC(&v20);
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (!*(&v24 + 1))
  {
LABEL_24:
    sub_1DB30623C(&v23, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_25:
    v12 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  v18[0] = 0;
  sub_1DB50A4A0();
  v12 = v18[0];
  sub_1DB317740(&v23);
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_26:
  (*(v6 + 8))(v8, v5);
  v14 = v26;
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PageMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46240, &qword_1DB51EF18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = *v1;
  v29 = v1[1];
  v7 = v1[3];
  v23 = v1[2];
  v8 = a1[3];
  v9 = a1;
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_1DB49203C();

  v12 = v4;
  sub_1DB50BE40();
  v26[0] = v6;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46220, &qword_1DB51EF10);
  sub_1DB4921EC();
  sub_1DB50B8A0();
  if (v2)
  {

    return (*(v5 + 8))(v11, v4);
  }

  v14 = v23;

  v15 = v29;
  if (!v29)
  {
    v24 = 0u;
    v25 = 0u;
    v17 = v5;
    v18 = v7;
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  *&v24 = v15;
  *(&v25 + 1) = v16;
  v17 = v5;
  v18 = v7;
  if (!v16)
  {
LABEL_7:

    sub_1DB30623C(&v24, &qword_1ECC426B0, &qword_1DB50EEB0);
    v21 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  v19 = swift_allocObject();
  sub_1DB30C200(&v24, (v19 + 16));

  v20 = &off_1F56FB6B0;
  v21 = &type metadata for FoundationValue;
LABEL_8:
  v26[0] = v19;
  v26[1] = 0;
  v26[2] = 0;
  v27 = v21;
  v28 = v20;
  LOBYTE(v24) = 1;
  sub_1DB325078();
  sub_1DB50B8A0();
  sub_1DB3151CC(v26);
  v26[0] = v14;
  LOBYTE(v24) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
  sub_1DB39A328(&qword_1ECC44500, &protocol witness table for ScalarDictionary, &protocol conformance descriptor for <A> DiscardOnError<A>);
  sub_1DB50B8A0();

  *(&v25 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  *&v24 = v18;
  v27 = &type metadata for FoundationValue;
  v28 = &off_1F56FB6B0;
  v26[0] = swift_allocObject();
  sub_1DB30C200(&v24, (v26[0] + 16));
  LOBYTE(v24) = 3;

  sub_1DB50B8A0();
  sub_1DB3151CC(v26);
  return (*(v17 + 8))(v11, v12);
}

uint64_t PageMetrics.Instruction._isEqual(to:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v20 = *v1;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v15[0] = v2;
  v15[1] = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;

  v13 = MetricsData._isEqual(to:)(v15);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return sub_1DB325B44();
}

unint64_t PageMetrics.init(instructions:pageFields:custom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  result = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v7;
  a4[3] = result;
  return result;
}

unint64_t sub_1DB491CE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50B680();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB491D30()
{
  result = qword_1ECC461C0;
  if (!qword_1ECC461C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461C0);
  }

  return result;
}

unint64_t sub_1DB491D84()
{
  result = qword_1ECC461D0;
  if (!qword_1ECC461D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461C8, &qword_1DB51EEF0);
    sub_1DB491E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461D0);
  }

  return result;
}

unint64_t sub_1DB491E08()
{
  result = qword_1ECC461D8;
  if (!qword_1ECC461D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461E0, &qword_1DB51EEF8);
    sub_1DB491E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461D8);
  }

  return result;
}

unint64_t sub_1DB491E8C()
{
  result = qword_1ECC461E8;
  if (!qword_1ECC461E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461E8);
  }

  return result;
}

unint64_t sub_1DB491EE0()
{
  result = qword_1ECC461F8;
  if (!qword_1ECC461F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461C8, &qword_1DB51EEF0);
    sub_1DB491F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461F8);
  }

  return result;
}

unint64_t sub_1DB491F64()
{
  result = qword_1ECC46200;
  if (!qword_1ECC46200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461E0, &qword_1DB51EEF8);
    sub_1DB491FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46200);
  }

  return result;
}

unint64_t sub_1DB491FE8()
{
  result = qword_1ECC46208;
  if (!qword_1ECC46208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46208);
  }

  return result;
}

unint64_t sub_1DB49203C()
{
  result = qword_1ECC46218;
  if (!qword_1ECC46218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46218);
  }

  return result;
}

unint64_t sub_1DB492090()
{
  result = qword_1ECC46228;
  if (!qword_1ECC46228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC46220, &qword_1DB51EF10);
    sub_1DB492114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46228);
  }

  return result;
}

unint64_t sub_1DB492114()
{
  result = qword_1ECC46230;
  if (!qword_1ECC46230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43050, &qword_1DB510210);
    sub_1DB492198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46230);
  }

  return result;
}

unint64_t sub_1DB492198()
{
  result = qword_1ECC46238;
  if (!qword_1ECC46238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46238);
  }

  return result;
}

unint64_t sub_1DB4921EC()
{
  result = qword_1ECC46248;
  if (!qword_1ECC46248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC46220, &qword_1DB51EF10);
    sub_1DB492270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46248);
  }

  return result;
}

unint64_t sub_1DB492270()
{
  result = qword_1ECC46250;
  if (!qword_1ECC46250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43050, &qword_1DB510210);
    sub_1DB4922F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46250);
  }

  return result;
}

unint64_t sub_1DB4922F4()
{
  result = qword_1ECC46258;
  if (!qword_1ECC46258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46258);
  }

  return result;
}

unint64_t sub_1DB49234C()
{
  result = qword_1ECC46260;
  if (!qword_1ECC46260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46260);
  }

  return result;
}

unint64_t sub_1DB4923F4()
{
  result = qword_1ECC46268;
  if (!qword_1ECC46268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46268);
  }

  return result;
}

unint64_t sub_1DB49244C()
{
  result = qword_1ECC46270;
  if (!qword_1ECC46270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46270);
  }

  return result;
}

unint64_t sub_1DB4924A4()
{
  result = qword_1ECC46278;
  if (!qword_1ECC46278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46278);
  }

  return result;
}

unint64_t sub_1DB4924FC()
{
  result = qword_1ECC46280;
  if (!qword_1ECC46280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46280);
  }

  return result;
}

unint64_t sub_1DB492554()
{
  result = qword_1ECC46288;
  if (!qword_1ECC46288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46288);
  }

  return result;
}

unint64_t sub_1DB4925AC()
{
  result = qword_1ECC46290[0];
  if (!qword_1ECC46290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46290);
  }

  return result;
}

uint64_t CodeByExpressibleByJSON.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v38 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v9;
  v12 = type metadata accessor for CodeByExpressibleByJSON(0, v9, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DB50BDD0();
  if (v4)
  {
    v27 = v40;
    v48 = v4;
    v17 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      v44 = v46;
      v45 = v47;
      v18 = sub_1DB50B3E0();
      swift_allocError();
      v20 = v19;
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_1DB50BDB0();
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52FE60);
      v21 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v21);

      MEMORY[0x1E1285C70](8250, 0xE200000000000000);
      sub_1DB50B530();
      sub_1DB315178();
      swift_allocError();
      v22 = v44;
      v23 = *(&v44 + 1);
      v24 = v45;
      *v25 = v44;
      *(v25 + 8) = v23;
      *(v25 + 16) = v24;
      sub_1DB492BEC(v22, v23, v24, *(&v24 + 1));
      sub_1DB50B3C0();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B00], v18);
      swift_willThrow();
      sub_1DB3BC478(v44, *(&v44 + 1), v45, *(&v45 + 1));
    }
  }

  else
  {
    v34 = v15;
    v35 = v13;
    v37 = v8;
    v36 = v12;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    sub_1DB324D00();
    sub_1DB50BA80();
    v27 = v40;
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    v28 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v28);
    sub_1DB3171C0(&v44, v43);
    v42 = v48;
    v29 = a3;
    v30 = *(a3 + 8);

    v31 = v37;
    v32 = v41;
    v30(v43, &v42, v41, v29);

    sub_1DB3151CC(&v44);
    v33 = v34;
    (*(v38 + 32))(v34, v31, v32);
    __swift_destroy_boxed_opaque_existential_0(&v46);
    (*(v35 + 32))(v39, v33, v36);
  }

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

void sub_1DB492BEC(int a1, id a2, unint64_t a3, void *a4)
{
  v5 = a3 >> 61;
  if ((a3 >> 61) <= 3)
  {
    if (v5 <= 1)
    {

LABEL_5:

      return;
    }

    if (v5 == 2)
    {

      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_5;
  }

  if (v5 > 5)
  {
    if (v5 == 6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 4)
    {
      goto LABEL_16;
    }

    v6 = a2;
  }
}

uint64_t CodeByExpressibleByJSON<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DB50BCF0();
  sub_1DB50A5D0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB492D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  CodeByExpressibleByJSON<>.hash(into:)(v6, a2, v4);
  return sub_1DB50BD30();
}

uint64_t CodeByExpressibleByJSON<>.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v16 = type metadata accessor for CodeByExpressibleByJSON(0, a2, a3, a4);
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_1DB324D00();
  sub_1DB50BA80();
  v21[0] = v18[0];
  v21[1] = v18[1];
  v22 = v19;
  __swift_destroy_boxed_opaque_existential_0(v20);
  v14 = v23;
  sub_1DB3171C0(v21, v20);
  *&v18[0] = v14;
  v12 = *(a4 + 8);

  v12(v20, v18, a2, a4);
  sub_1DB3151CC(v21);

  (*(v8 + 32))(v17, v10, v16);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  v40 = sub_1DB50A230();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a5;
  v14 = *v5;
  v15 = *(v5 + 16);
  v43 = *a5;
  v41 = v14;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v14 = v41;
    v13 = v43;
  }

  v16 = qword_1ECC678E8;
  *&v47[0] = a3;
  *(&v47[0] + 1) = a4;
  v47[1] = v13;
  v47[2] = v14;
  LOBYTE(v48) = v15;
  v39 = a1;
  *(&v48 + 1) = a1;
  v49 = a2;
  *&v50[4] = a2;
  v50[2] = v14;
  v50[3] = v48;
  v50[0] = v47[0];
  v50[1] = v13;
  sub_1DB493638(v50);
  v17 = memcpy(v46, v50, sizeof(v46));
  v18 = *(v16 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *&v36[-16] = v46;

  os_unfair_lock_lock(v18 + 8);
  sub_1DB495708(v18 + 16);
  os_unfair_lock_unlock(v18 + 8);
  sub_1DB30623C(v47, &qword_1ECC46390, &qword_1DB51F640);
  v19 = v41;
  v20 = sub_1DB50B350();
  v45 = v43;
  sub_1DB3578F4(v20, v21, a3, a4, &v45);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB50A270();
  __swift_project_value_buffer(v22, qword_1ECC678F0);
  *&v41 = a3;
  MEMORY[0x1E1285D20](a3, a4);
  v23 = v42;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v24, v25);

  v26 = sub_1DB50A250();
  v27 = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v38 = v11;
  v37 = v27;
  if ((v15 & 1) == 0)
  {

    if (!v19)
    {
      __break(1u);
LABEL_9:

      return (*(v11 + 8))(v23, v40);
    }

    goto LABEL_14;
  }

  if (v19 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v19 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v19 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = &v45;
LABEL_14:
  v29 = *(&v43 + 1);
  v30 = v43;
  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v44 = v32;
  *&v45 = v30;
  *v31 = 134218754;
  *(&v45 + 1) = v29;
  sub_1DB34D440();
  *(v31 + 4) = v33;
  *(v31 + 12) = 2080;
  *(v31 + 14) = sub_1DB3D4EE8(v41, a4, &v44);
  *(v31 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v31 + 24) = v29 / *&qword_1EE30ED50 + v30;
  *(v31 + 32) = 2080;
  *(v31 + 34) = sub_1DB3D4EE8(v39, a2, &v44);
  v34 = v42;
  v35 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v37, v35, v19, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%s", v31, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x1E1288220](v32, -1, -1);
  MEMORY[0x1E1288220](v31, -1, -1);

  return (*(v38 + 8))(v34, v40);
}

uint64_t sub_1DB493638(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xA000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t PageRenderField<>.callAsFunction(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1DB50A230();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v11 = *v3;
  v12 = *(v3 + 16);
  v36 = *a3;
  v34 = v11;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v11 = v34;
    v10 = v36;
  }

  v13 = qword_1ECC678E8;
  *&v40[0] = a1;
  *(&v40[0] + 1) = a2;
  v40[2] = v11;
  v40[1] = v10;
  LOBYTE(v40[3]) = v12;
  sub_1DB49713C(v40);
  v14 = memcpy(v39, v40, sizeof(v39));
  v15 = *(v13 + 16);
  MEMORY[0x1EEE9AC00](v14);
  *(&v32 - 2) = v39;

  os_unfair_lock_lock(v15 + 8);
  sub_1DB497898(v15 + 16);
  os_unfair_lock_unlock(v15 + 8);

  v16 = v34;
  v17 = sub_1DB50B350();
  v38 = v36;
  sub_1DB3578F4(v17, v18, a1, a2, &v38);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v19 = sub_1DB50A270();
  __swift_project_value_buffer(v19, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a1, a2);
  v20 = v35;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v21, v22);

  v23 = sub_1DB50A250();
  LODWORD(v34) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v32 = v8;
  v33 = v7;
  if ((v12 & 1) == 0)
  {

    if (!v16)
    {
      __break(1u);
LABEL_9:

      return (*(v8 + 8))(v20, v7);
    }

    goto LABEL_14;
  }

  if (v16 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v16 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v16 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = &v38;
LABEL_14:
  v25 = *(&v36 + 1);
  v26 = v36;
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v37 = v28;
  *&v38 = v26;
  *v27 = 134218498;
  *(&v38 + 1) = v25;
  sub_1DB34D440();
  *(v27 + 4) = v29;
  *(v27 + 12) = 2080;
  *(v27 + 14) = sub_1DB3D4EE8(a1, a2, &v37);
  *(v27 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v27 + 24) = v25 / *&qword_1EE30ED50 + v26;
  v30 = v35;
  v31 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v34, v31, v16, "%{signpost.description:event_time}lluid=%s, instant=%f", v27, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x1E1288220](v28, -1, -1);
  MEMORY[0x1E1288220](v27, -1, -1);

  return (*(v32 + 8))(v30, v33);
}

uint64_t PageRenderField<>.startTime(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1DB50A230();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - v10;
  v11 = *a3;
  v12 = *v3;
  v13 = *(v3 + 16);
  v39 = *(v3 + 3);
  v14 = *(v3 + 32);
  v44 = v11;
  v42 = v12;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v12 = v42;
    v11 = v44;
  }

  v15 = qword_1ECC678E8;
  *&v48[0] = a1;
  *(&v48[0] + 1) = a2;
  v48[2] = v12;
  v48[1] = v11;
  LOBYTE(v48[3]) = v13;
  sub_1DB497214(v48);
  v16 = memcpy(v47, v48, sizeof(v47));
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v38 - 2) = v47;

  os_unfair_lock_lock(v17 + 8);
  sub_1DB497898(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);

  v18 = v42;
  *&v46 = sub_1DB50B350();
  *(&v46 + 1) = v19;
  MEMORY[0x1E1285C70](0x6D69547472617453, 0xE900000000000065);
  v21 = *(&v46 + 1);
  v20 = v46;
  v46 = v44;
  sub_1DB3578F4(v20, v21, a1, a2, &v46);

  if ((v14 & 1) == 0)
  {
    if (qword_1ECC42018 != -1)
    {
      v22 = swift_once();
    }

    v23 = qword_1ECC67908;
    MEMORY[0x1EEE9AC00](v22);
    *(&v38 - 4) = a1;
    *(&v38 - 3) = a2;
    *(&v38 - 2) = v39;
    os_unfair_lock_lock(v23 + 10);
    sub_1DB4972F0(&v23[4]);
    os_unfair_lock_unlock(v23 + 10);
  }

  v24 = v43;
  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v25 = sub_1DB50A270();
  __swift_project_value_buffer(v25, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a1, a2);
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v26, v27);

  v28 = sub_1DB50A250();
  v29 = sub_1DB50B070();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v38 = v7;
  LODWORD(v42) = v29;
  if ((v13 & 1) == 0)
  {

    if (!v18)
    {
      __break(1u);
LABEL_13:

LABEL_21:
      v37 = v41;
      (*(v41 + 16))(v40, v24, v7);
      sub_1DB50A2C0();
      swift_allocObject();
      sub_1DB50A2B0();

      return (*(v37 + 8))(v24, v7);
    }

LABEL_18:
    v31 = *(&v44 + 1);
    v32 = v44;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *&v46 = v32;
    *v33 = 134218498;
    *(&v46 + 1) = v31;
    sub_1DB34D440();
    *(v33 + 4) = v35;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1DB3D4EE8(a1, a2, &v45);
    *(v33 + 22) = 2048;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    *(v33 + 24) = v31 / *&qword_1EE30ED50 + v32;
    v24 = v43;
    v36 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v28, v42, v36, v18, "%{signpost.description:begin_time}lluid=%s, instant=%f", v33, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1E1288220](v34, -1, -1);
    MEMORY[0x1E1288220](v33, -1, -1);

    v7 = v38;
    goto LABEL_21;
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {

      v18 = &v46;
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t PageRenderField<>.endTime(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1DB50A280();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DB50A230();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = *a3;
  v17 = *v3;
  v18 = *(v3 + 16);
  v58 = *(v3 + 3);
  v19 = *(v3 + 32);
  v62 = v16;
  v59 = v17;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v17 = v59;
    v16 = v62;
  }

  v20 = qword_1ECC678E8;
  *&v68[0] = a1;
  *(&v68[0] + 1) = a2;
  v68[2] = v17;
  v68[1] = v16;
  LOBYTE(v68[3]) = v18;
  sub_1DB497310(v68);
  v21 = memcpy(v67, v68, sizeof(v67));
  v64 = a1;
  v22 = *(v20 + 16);
  MEMORY[0x1EEE9AC00](v21);
  *(&v53 - 2) = v67;

  os_unfair_lock_lock(v22 + 8);
  sub_1DB497898(v22 + 16);
  os_unfair_lock_unlock(v22 + 8);

  v23 = v64;
  *&v66 = sub_1DB50B350();
  *(&v66 + 1) = v24;
  MEMORY[0x1E1285C70](0x656D6954646E45, 0xE700000000000000);
  v26 = *(&v66 + 1);
  v25 = v66;
  v66 = v62;
  sub_1DB3578F4(v25, v26, v23, a2, &v66);

  if ((v19 & 1) == 0)
  {
    if (qword_1ECC42018 != -1)
    {
      v27 = swift_once();
    }

    v28 = qword_1ECC67908;
    MEMORY[0x1EEE9AC00](v27);
    *(&v53 - 4) = v23;
    *(&v53 - 3) = a2;
    *(&v53 - 2) = v58;
    os_unfair_lock_lock(v28 + 10);
    sub_1DB4973EC(&v28[4]);
    os_unfair_lock_unlock(v28 + 10);
  }

  v29 = v63;
  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v30 = sub_1DB50A270();
  __swift_project_value_buffer(v30, qword_1ECC678F0);
  MEMORY[0x1E1285D20](v64, a2);
  sub_1DB50A240();
  v31 = v61;
  (*(v29 + 16))(v12, v15, v61);
  sub_1DB50A2C0();
  swift_allocObject();
  sub_1DB50A2B0();
  v33 = *(v29 + 8);
  v32 = v29 + 8;
  v34 = v15;
  v35 = v33;
  v33(v34, v31);
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v36, v37);

  v38 = sub_1DB50A250();
  v39 = v60;
  sub_1DB50A2A0();
  LODWORD(v58) = sub_1DB50B060();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v54 = v35;
  if ((v18 & 1) == 0)
  {

    if (!v59)
    {
      __break(1u);
LABEL_13:

      return v35(v39, v31);
    }

    goto LABEL_18;
  }

  if (DWORD1(v59))
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v59 & 0xFFFFF800) == 0xD800)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v59 >> 16 > 0x10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *&v59 = &v66;
LABEL_18:
  v63 = v32;
  v41 = *(&v62 + 1);
  v42 = v62;

  v43 = v55;
  sub_1DB50A2D0();

  v45 = v56;
  v44 = v57;
  if ((*(v56 + 88))(v43, v57) == *MEMORY[0x1E69E93E8])
  {
    v46 = 0;
    v47 = 0;
    *&v62 = "[Error] Interval already ended";
  }

  else
  {
    (*(v45 + 8))(v43, v44);
    *&v62 = "%{signpost.description:end_time}lluid=%s, instant=%f";
    v47 = 2;
    v46 = 3;
  }

  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v65 = v49;
  *&v66 = v42;
  *v48 = v47;
  *(v48 + 1) = v46;
  *(v48 + 2) = 2048;
  *(&v66 + 1) = v41;
  sub_1DB34D440();
  *(v48 + 4) = v50;
  *(v48 + 12) = 2080;
  *(v48 + 14) = sub_1DB3D4EE8(v64, a2, &v65);
  *(v48 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v48 + 24) = v41 / *&qword_1EE30ED50 + v42;
  v51 = v60;
  v52 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v38, v58, v52, v59, v62, v48, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v49);
  MEMORY[0x1E1288220](v49, -1, -1);
  MEMORY[0x1E1288220](v48, -1, -1);

  return v54(v51, v61);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(int a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v13 = *v4;
  v14 = *(v4 + 16);
  v40 = *a4;
  v38 = v13;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v13 = v38;
    v12 = v40;
  }

  v15 = qword_1ECC678E8;
  v37 = a1;
  *&v44[0] = a2;
  *(&v44[0] + 1) = a3;
  v44[2] = v13;
  v44[1] = v12;
  LOBYTE(v44[3]) = v14;
  BYTE1(v44[3]) = a1 & 1;
  sub_1DB49740C(v44);
  v16 = memcpy(v43, v44, sizeof(v43));
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v34 - 2) = v43;

  os_unfair_lock_lock(v17 + 8);
  sub_1DB497898(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);

  v18 = v38;
  v19 = sub_1DB50B350();
  v42 = v40;
  sub_1DB3578F4(v19, v20, a2, a3, &v42);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  __swift_project_value_buffer(v21, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a2, a3);
  v22 = v39;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v23, v24);

  v25 = sub_1DB50A250();
  LODWORD(v38) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v35 = v10;
  v36 = v9;
  if ((v14 & 1) == 0)
  {

    if (!v18)
    {
      __break(1u);
LABEL_9:

      return (*(v10 + 8))(v22, v9);
    }

    goto LABEL_14;
  }

  if (v18 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v18 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v18 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = &v42;
LABEL_14:
  v27 = *(&v40 + 1);
  v28 = v40;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v41 = v30;
  *&v42 = v28;
  *v29 = 134218754;
  *(&v42 + 1) = v27;
  sub_1DB34D440();
  *(v29 + 4) = v31;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1DB3D4EE8(a2, a3, &v41);
  *(v29 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1EE30ED50 + v28;
  *(v29 + 32) = 1024;
  *(v29 + 34) = v37 & 1;
  v32 = v39;
  v33 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v38, v33, v18, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%{BOOL}d", v29, 0x26u);
  __swift_destroy_boxed_opaque_existential_0(v30);
  MEMORY[0x1E1288220](v30, -1, -1);
  MEMORY[0x1E1288220](v29, -1, -1);

  return (*(v35 + 8))(v32, v36);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, unint64_t a2, __int128 *a3, double a4)
{
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v13 = *v4;
  v14 = *(v4 + 16);
  v38 = *a3;
  v36 = v13;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v13 = v36;
    v12 = v38;
  }

  v15 = qword_1ECC678E8;
  *&v42[0] = a1;
  *(&v42[0] + 1) = a2;
  v42[2] = v13;
  v42[1] = v12;
  LOBYTE(v42[3]) = v14;
  *(&v42[3] + 1) = a4;
  sub_1DB4974E8(v42);
  v16 = memcpy(v41, v42, sizeof(v41));
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v34 - 2) = v41;

  os_unfair_lock_lock(v17 + 8);
  sub_1DB497898(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);

  v18 = v36;
  v19 = sub_1DB50B350();
  v40 = v38;
  sub_1DB3578F4(v19, v20, a1, a2, &v40);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  __swift_project_value_buffer(v21, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a1, a2);
  v22 = v37;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v23, v24);

  v25 = sub_1DB50A250();
  LODWORD(v36) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v34 = v10;
  v35 = v9;
  if ((v14 & 1) == 0)
  {

    if (!v18)
    {
      __break(1u);
LABEL_9:

      return (*(v10 + 8))(v22, v9);
    }

    goto LABEL_14;
  }

  if (v18 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v18 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v18 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = &v40;
LABEL_14:
  v27 = *(&v38 + 1);
  v28 = v38;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v39 = v30;
  *&v40 = v28;
  *v29 = 134218754;
  *(&v40 + 1) = v27;
  sub_1DB34D440();
  *(v29 + 4) = v31;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1DB3D4EE8(a1, a2, &v39);
  *(v29 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1EE30ED50 + v28;
  *(v29 + 32) = 2048;
  *(v29 + 34) = a4;
  v32 = v37;
  v33 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v36, v33, v18, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%f", v29, 0x2Au);
  __swift_destroy_boxed_opaque_existential_0(v30);
  MEMORY[0x1E1288220](v30, -1, -1);
  MEMORY[0x1E1288220](v29, -1, -1);

  return (*(v34 + 8))(v32, v35);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(const void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v58, a1, sizeof(v58));
  v12 = *a4;
  v13 = *v4;
  v14 = *(v4 + 16);
  v54 = *a4;
  v52 = v13;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v13 = v52;
    v12 = v54;
  }

  v15 = qword_1ECC678E8;
  *&v59[0] = a2;
  *(&v59[0] + 1) = a3;
  v59[2] = v13;
  v59[1] = v12;
  LOBYTE(v59[3]) = v14;
  memcpy(&v59[3] + 8, a1, 0x158uLL);
  memcpy(v60, v59, 0x190uLL);
  sub_1DB4975C4(v60);
  v16 = memcpy(v57, v60, sizeof(v57));
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v50 - 2) = v57;

  sub_1DB369460(v58, v56);
  os_unfair_lock_lock(v17 + 8);
  sub_1DB497898(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);
  sub_1DB30623C(v59, &qword_1ECC463A0, &qword_1DB51F648);
  v18 = v52;
  v19 = sub_1DB50B350();
  v56[0] = v54;
  sub_1DB3578F4(v19, v20, a2, a3, v56);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  __swift_project_value_buffer(v21, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a2, a3);
  v22 = v53;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v23, v24);
  sub_1DB369460(v58, v56);

  sub_1DB369460(v58, v56);
  v25 = sub_1DB50A250();
  LODWORD(v52) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v50 = v10;
  v51 = v9;
  if ((v14 & 1) == 0)
  {

    if (!v18)
    {
      __break(1u);
LABEL_9:

      sub_1DB3694BC(v58);

      sub_1DB3694BC(v58);
      return (*(v10 + 8))(v22, v9);
    }

    goto LABEL_14;
  }

  if (v18 >> 32)
  {
    __break(1u);
    goto LABEL_48;
  }

  if ((v18 & 0xFFFFF800) == 0xD800)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  if (v18 >> 16 > 0x10)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v18 = v56;
LABEL_14:
  v27 = *(&v54 + 1);
  v28 = v54;
  v29 = swift_slowAlloc();
  *&v54 = swift_slowAlloc();
  v55[0] = v54;
  *v29 = 134221058;
  *&v56[0] = v28;
  *(&v56[0] + 1) = v27;
  sub_1DB34D440();
  *(v29 + 4) = v30;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1DB3D4EE8(a2, a3, v55);
  *(v29 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1EE30ED50 + v28;
  *(v29 + 32) = 2080;
  if (v58[1])
  {
    v31 = v58[0];
  }

  else
  {
    v31 = 0;
  }

  if (v58[1])
  {
    v32 = v58[1];
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = sub_1DB3D4EE8(v31, v32, v55);

  *(v29 + 34) = v33;
  *(v29 + 42) = 2080;
  if (v58[3])
  {
    v34 = v58[2];
  }

  else
  {
    v34 = 0;
  }

  if (v58[3])
  {
    v35 = v58[3];
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v36 = sub_1DB3D4EE8(v34, v35, v55);

  *(v29 + 44) = v36;
  *(v29 + 52) = 2048;
  v37 = *&v58[4];
  if (LOBYTE(v58[5]))
  {
    v37 = 0.0;
  }

  *(v29 + 54) = v37;
  *(v29 + 62) = 2048;
  v38 = *&v58[6];
  if (LOBYTE(v58[7]))
  {
    v38 = 0.0;
  }

  *(v29 + 64) = v38;
  *(v29 + 72) = 2048;
  v39 = *&v58[8];
  if (LOBYTE(v58[9]))
  {
    v39 = 0.0;
  }

  *(v29 + 74) = v39;
  *(v29 + 82) = 1024;
  sub_1DB3694BC(v58);
  v40 = v51;
  v41 = BYTE1(v58[9]) != 2 && (v58[9] & 0x100) != 0;
  v42 = v50;
  *(v29 + 84) = v41;
  sub_1DB3694BC(v58);
  *(v29 + 88) = 2048;
  v43 = *&v58[10];
  if (LOBYTE(v58[11]))
  {
    v43 = 0.0;
  }

  *(v29 + 90) = v43;
  *(v29 + 98) = 2048;
  v44 = *&v58[12];
  if (LOBYTE(v58[13]))
  {
    v44 = 0.0;
  }

  *(v29 + 100) = v44;
  *(v29 + 108) = 2048;
  v45 = *&v58[14];
  if (LOBYTE(v58[15]))
  {
    v45 = 0.0;
  }

  *(v29 + 110) = v45;
  *(v29 + 118) = 2048;
  v46 = *&v58[16];
  if (LOBYTE(v58[17]))
  {
    v46 = 0.0;
  }

  *(v29 + 120) = v46;
  v47 = v53;
  v48 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v52, v48, v18, "%{signpost.description:event_time}lluid=%s, instant=%f, clientCorrelationKey=%s, pageURL=%s, requestStartTime=%f, responseStartTime=%f, responseEndTime=%f, responseWasCached=%{BOOL}d, parseStartTime=%f, parseEndTime=%f, modelConstructionStartTime=%f, modelConstructionEndTime=%f", v29, 0x80u);
  v49 = v54;
  swift_arrayDestroy();
  MEMORY[0x1E1288220](v49, -1, -1);
  MEMORY[0x1E1288220](v29, -1, -1);

  return (*(v42 + 8))(v47, v40);
}

void PageRenderField<>.init(timestampWithName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_1DB50B350();
  v8 = sub_1DB50A820();

  if ((v8 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

void PageRenderField<>.init(intervalWithBaseName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_1DB50B350();
  v8 = sub_1DB50A820();

  if (v8)
  {
    sub_1DB3CDB98("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x52uLL);
  }

  sub_1DB50B350();
  v9 = sub_1DB50A820();

  if (v9)
  {
    sub_1DB3CE170("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x54uLL);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

void PageRenderField<>.init(enum:withName:)(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v55 = a1;
  v56 = a2;
  v9 = *(a5 + 16);
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB50A230();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v13 = a4[1];
  v15 = *v6;
  v16 = *(v6 + 8);
  v17 = *(v6 + 16);
  if (qword_1ECC42000 != -1)
  {
    swift_once();
  }

  v18 = qword_1ECC678E8;

  sub_1DB50A910();
  *&v19 = v15;
  v48 = v16;
  *(&v19 + 1) = v16;
  *&v61[0] = v56;
  *(&v61[0] + 1) = a3;
  *&v20 = v14;
  *(&v20 + 1) = v13;
  v61[1] = v20;
  v61[2] = v19;
  LOBYTE(v62) = v17;
  *(&v62 + 1) = v58;
  v63 = v59;
  *&v64[4] = v59;
  v64[0] = v61[0];
  v64[1] = v20;
  v64[2] = v19;
  v64[3] = v62;
  sub_1DB493638(v64);
  v21 = memcpy(v60, v64, sizeof(v60));
  v52 = v9;
  v22 = *(v18 + 16);
  MEMORY[0x1EEE9AC00](v21);
  *(&v44 - 2) = v60;
  os_unfair_lock_lock(v22 + 8);
  sub_1DB497898(v22 + 16);
  v23 = v56;
  os_unfair_lock_unlock(v22 + 8);
  sub_1DB30623C(v61, &qword_1ECC46390, &qword_1DB51F640);
  v51 = v15;
  v24 = sub_1DB50B350();
  v45 = v14;
  v58 = v14;
  v59 = v13;
  v48 = v13;
  sub_1DB3578F4(v24, v25, v23, a3, &v58);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v26 = sub_1DB50A270();
  __swift_project_value_buffer(v26, qword_1ECC678F0);
  MEMORY[0x1E1285D20](v23, a3);
  v27 = v50;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v28, v29);
  v30 = v49;
  v32 = v52;
  v31 = v53;
  (*(v49 + 16))(v53, v55, v52);

  v33 = sub_1DB50A250();
  LODWORD(v55) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v17 & 1) == 0)
  {

    v35 = v45;
    v36 = v48;
    if (!v51)
    {
      __break(1u);
LABEL_9:

      (*(v30 + 8))(v31, v32);
      return (*(v46 + 8))(v27, v47);
    }

LABEL_14:
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v57[0] = v38;
    *v37 = 134218754;
    v58 = v35;
    v59 = v36;
    sub_1DB34D440();
    *(v37 + 4) = v39;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_1DB3D4EE8(v56, a3, v57);
    *(v37 + 22) = 2048;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    *(v37 + 24) = v36 / *&qword_1EE30ED50 + v35;
    *(v37 + 32) = 2080;
    v41 = v52;
    v40 = v53;
    sub_1DB50A910();
    (*(v30 + 8))(v40, v41);
    v42 = sub_1DB3D4EE8(v58, v59, v57);

    *(v37 + 34) = v42;
    v43 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v33, v55, v43, v51, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%s", v37, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E1288220](v38, -1, -1);
    MEMORY[0x1E1288220](v37, -1, -1);

    return (*(v46 + 8))(v27, v47);
  }

  v35 = v45;
  v36 = v48;
  if (v51 >> 32)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v51 & 0xFFFFF800) != 0xD800)
  {
    if (v51 >> 16 <= 0x10)
    {

      v51 = &v58;
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t PageRenderField<>.init(requestWithName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  return result;
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1DB50A230();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v13 = *v4;
  v14 = *(v4 + 16);
  v47 = *a4;
  v45 = v13;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v13 = v45;
    v12 = v47;
  }

  v15 = qword_1ECC678E8;
  *&v51[0] = a2;
  *(&v51[0] + 1) = a3;
  v51[1] = v12;
  v51[2] = v13;
  LOBYTE(v52) = v14;
  *(&v52 + 1) = a1;
  v53[0] = v51[0];
  v53[1] = v12;
  v53[2] = v13;
  v53[3] = v52;
  sub_1DB4976A0(v53);
  v16 = memcpy(v50, v53, sizeof(v50));
  v46 = a2;
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v41 - 2) = v50;

  v18 = a1;
  os_unfair_lock_lock(v17 + 8);
  sub_1DB497898(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);
  sub_1DB30623C(v51, &qword_1ECC463A8, &qword_1DB51F650);
  v19 = v46;
  v20 = v45;
  v21 = sub_1DB50B350();
  v49 = v47;
  sub_1DB3578F4(v21, v22, v19, a3, &v49);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v23 = sub_1DB50A270();
  __swift_project_value_buffer(v23, qword_1ECC678F0);
  MEMORY[0x1E1285D20](v19, a3);
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v24, v25);

  v26 = a1;
  v27 = v11;
  v28 = sub_1DB50A250();
  v29 = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {

    return (*(v44 + 8))(v27, v9);
  }

  *&v45 = v27;
  v43 = v9;
  v42 = v29;
  if (v14)
  {
    if (!(v20 >> 32))
    {
      if ((v20 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if (v20 >> 16 <= 0x10)
      {

        v41 = &v49;
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v41 = v20;
LABEL_14:
  v31 = *(&v47 + 1);
  v32 = v47;
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v48 = v35;
  *&v49 = v32;
  *v33 = 134218754;
  *(&v49 + 1) = v31;
  sub_1DB34D440();
  *(v33 + 4) = v36;
  *(v33 + 12) = 2080;
  *(v33 + 14) = sub_1DB3D4EE8(v46, a3, &v48);
  *(v33 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v33 + 24) = v31 / *&qword_1EE30ED50 + v32;
  *(v33 + 32) = 2112;
  v37 = a1;
  v38 = _swift_stdlib_bridgeErrorToNSError();
  *(v33 + 34) = v38;
  *v34 = v38;
  v39 = v45;
  v40 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v28, v42, v40, v41, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%@", v33, 0x2Au);
  sub_1DB30623C(v34, &qword_1ECC463B0, &qword_1DB51F658);
  MEMORY[0x1E1288220](v34, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v35);
  MEMORY[0x1E1288220](v35, -1, -1);
  MEMORY[0x1E1288220](v33, -1, -1);

  return (*(v44 + 8))(v39, v43);
}

uint64_t PagePreloadStatus.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

JetCore::PageInterruptReason_optional __swiftcall PageInterruptReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PageInterruptReason.rawValue.getter()
{
  v1 = 0x657373696D736964;
  v2 = 0x6669636570736E75;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x756F72676B636162;
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

uint64_t sub_1DB496628()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB496700(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB4967C4(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB4968A4(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657373696D736964;
  v4 = 0xEB00000000646569;
  v5 = 0x6669636570736E75;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001DB529180;
  }

  if (*v1)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_1DB496938()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC46318 = "interstitialPageAppearTime";
  *(&xmmword_1ECC46318 + 1) = 26;
  byte_1ECC46328 = 2;
  qword_1ECC46330 = 0;
  byte_1ECC46338 = 1;
}

double static PageRenderField<>._interstitialPageAppearTime.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECC42158 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1ECC46328;
  v2 = qword_1ECC46330;
  v3 = byte_1ECC46338;
  result = *&xmmword_1ECC46318;
  *a1 = xmmword_1ECC46318;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

void sub_1DB496A5C()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC46340 = "pageInterruptTime";
  *(&xmmword_1ECC46340 + 1) = 17;
  byte_1ECC46350 = 2;
  qword_1ECC46358 = 0;
  byte_1ECC46360 = 1;
}

double static PageRenderField<>.pageInterruptTime.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECC42160 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1ECC46350;
  v2 = qword_1ECC46358;
  v3 = byte_1ECC46360;
  result = *&xmmword_1ECC46340;
  *a1 = xmmword_1ECC46340;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

void sub_1DB496B80()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC67980 = "primaryDataRequestStartTime";
  *(&xmmword_1ECC67980 + 1) = 27;
  byte_1ECC67990 = 2;
  qword_1ECC67998 = 0;
  byte_1ECC679A0 = 1;
}

void sub_1DB496C24()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC679A8 = "primaryDataFetchStartTime";
  *(&xmmword_1ECC679A8 + 1) = 25;
  byte_1ECC679B8 = 2;
  qword_1ECC679C0 = 0;
  byte_1ECC679C8 = 1;
}

void sub_1DB496CC8()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC679D0 = "primaryDataSecureConnectionStartTime";
  *(&xmmword_1ECC679D0 + 1) = 36;
  byte_1ECC679E0 = 2;
  qword_1ECC679E8 = 0;
  byte_1ECC679F0 = 1;
}

void sub_1DB496D6C()
{
  *&xmmword_1ECC679F8 = "secondaryData";
  *(&xmmword_1ECC679F8 + 1) = 13;
  byte_1ECC67A08 = 2;
  qword_1ECC67A10 = 0;
  byte_1ECC67A18 = 1;
}

void sub_1DB496E28()
{
  *&xmmword_1ECC67AE8 = "isPrimaryDataResponseCached";
  *(&xmmword_1ECC67AE8 + 1) = 27;
  byte_1ECC67AF8 = 2;
  qword_1ECC67B00 = 0;
  byte_1ECC67B08 = 1;
}

void sub_1DB496E58()
{
  *&xmmword_1ECC67B10 = "primaryDataConnectionReused";
  *(&xmmword_1ECC67B10 + 1) = 27;
  byte_1ECC67B20 = 2;
  qword_1ECC67B28 = 0;
  byte_1ECC67B30 = 1;
}

void sub_1DB496E88()
{
  *&xmmword_1ECC67B38 = "isLowDataMode";
  *(&xmmword_1ECC67B38 + 1) = 13;
  byte_1ECC67B48 = 2;
  qword_1ECC67B50 = 0;
  byte_1ECC67B58 = 1;
}

void sub_1DB496EB8()
{
  *&xmmword_1ECC67B60 = "clientCorrelationKey";
  *(&xmmword_1ECC67B60 + 1) = 20;
  byte_1ECC67B70 = 2;
  qword_1ECC67B78 = 0;
  byte_1ECC67B80 = 1;
}

void sub_1DB496EE8()
{
  *&xmmword_1ECC67B88 = "pageUrl";
  *(&xmmword_1ECC67B88 + 1) = 7;
  byte_1ECC67B98 = 2;
  qword_1ECC67BA0 = 0;
  byte_1ECC67BA8 = 1;
}

void sub_1DB496F18()
{
  *&xmmword_1ECC67BB0 = "primaryDataStatusCode";
  *(&xmmword_1ECC67BB0 + 1) = 21;
  byte_1ECC67BC0 = 2;
  qword_1ECC67BC8 = 0;
  byte_1ECC67BD0 = 1;
}

void sub_1DB496F48()
{
  *&xmmword_1ECC67BD8 = "primaryDataEdgeNodeCacheStatus";
  *(&xmmword_1ECC67BD8 + 1) = 30;
  byte_1ECC67BE8 = 2;
  qword_1ECC67BF0 = 0;
  byte_1ECC67BF8 = 1;
}

void sub_1DB496F78()
{
  *&xmmword_1ECC67C00 = "primaryDataEnvironmentDataCenter";
  *(&xmmword_1ECC67C00 + 1) = 32;
  byte_1ECC67C10 = 2;
  qword_1ECC67C18 = 0;
  byte_1ECC67C20 = 1;
}

void sub_1DB496FA8()
{
  *&xmmword_1ECC67C28 = "primaryDataAppleTimingApp";
  *(&xmmword_1ECC67C28 + 1) = 25;
  byte_1ECC67C38 = 2;
  qword_1ECC67C40 = 0;
  byte_1ECC67C48 = 1;
}

void sub_1DB496FD8()
{
  *&xmmword_1ECC67C50 = "primaryDataRequestMessageSize";
  *(&xmmword_1ECC67C50 + 1) = 29;
  byte_1ECC67C60 = 2;
  qword_1ECC67C68 = 0;
  byte_1ECC67C70 = 1;
}

void sub_1DB497008()
{
  *&xmmword_1ECC67C78 = "primaryDataResponseMessageSize";
  *(&xmmword_1ECC67C78 + 1) = 30;
  byte_1ECC67C88 = 2;
  qword_1ECC67C90 = 0;
  byte_1ECC67C98 = 1;
}

void sub_1DB497038()
{
  *&xmmword_1ECC46368 = "pageInterruptReason";
  *(&xmmword_1ECC46368 + 1) = 19;
  byte_1ECC46378 = 2;
  qword_1ECC46380 = 0;
  byte_1ECC46388 = 1;
}

double static PageRenderField<>.pageInterruptReason.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECC42208 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1ECC46378;
  v2 = qword_1ECC46380;
  v3 = byte_1ECC46388;
  result = *&xmmword_1ECC46368;
  *a1 = xmmword_1ECC46368;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

unint64_t sub_1DB4970E8()
{
  result = qword_1ECC46398;
  if (!qword_1ECC46398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46398);
  }

  return result;
}

uint64_t sub_1DB49713C(uint64_t result)
{
  v1 = *(result + 376);
  v2 = *(result + 96) & 1;
  v3 = *(result + 112) & 1;
  v4 = *(result + 128) & 0xFF01;
  v5 = *(result + 144) & 1;
  v6 = *(result + 160) & 1;
  v7 = *(result + 176) & 1;
  v8 = *(result + 192) & 1;
  v9 = *(result + 208) & 1;
  v10 = *(result + 224) & 1;
  v11 = *(result + 240) & 1;
  v12 = *(result + 256) & 1;
  v13 = *(result + 272) & 1;
  v14 = *(result + 288) & 0xFF01;
  v15 = *(result + 304) & 1;
  v16 = *(result + 320) & 1;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v2;
  *(result + 112) = v3;
  *(result + 128) = v4;
  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 208) = v9;
  *(result + 224) = v10;
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 272) = v13;
  *(result + 288) = v14;
  *(result + 304) = v15;
  *(result + 320) = v16;
  *(result + 376) = v1;
  return result;
}

uint64_t sub_1DB497214(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x2000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB497310(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x4000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB49740C(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x6000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB4974E8(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x8000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB4975C4(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xC000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB4976A0(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xE000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

unint64_t sub_1DB497780()
{
  result = qword_1ECC463B8[0];
  if (!qword_1ECC463B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC463B8);
  }

  return result;
}

uint64_t sub_1DB4977D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB497810(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB497830(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

char *Promise.__allocating_init(task:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB498380(a1, a2);

  return v2;
}

uint64_t Future.result.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB306AF4;

  return v9(a1, a2, a3);
}

uint64_t LazyPromise.__allocating_init(task:)(uint64_t a1, uint64_t a2)
{
  v8 = &type metadata for SyncTaskScheduler;
  v9 = &protocol witness table for SyncTaskScheduler;
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = a1;
  v5[4] = a2;
  return LazyPromise.__allocating_init(on:perform:)(v7, sub_1DB4984B0, v5);
}

uint64_t sub_1DB497B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_1DB50ABA0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a7;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a1;
  v18[8] = a2;
  v18[9] = a3;
  v18[10] = a4;

  sub_1DB419B9C(0, 0, v16, &unk_1DB51F898, v18);
}

uint64_t sub_1DB497C6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v15;
  v8[6] = v16;
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[7] = *(v16 - 8);
  v10 = swift_task_alloc();
  v8[8] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[9] = v11;
  *v11 = v8;
  v11[1] = sub_1DB497DD0;

  return v13(v10);
}

uint64_t sub_1DB497DD0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1DB497F7C;
  }

  else
  {
    v2 = sub_1DB497EE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB497EE4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DB497F7C()
{
  v1 = *(v0 + 80);
  (*(v0 + 32))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB497FF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1DB498164;

  return v12(v9);
}

uint64_t sub_1DB498164()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1DB498308;
  }

  else
  {
    v2 = sub_1DB498278;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB498278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[3];
  Promise.resolve(_:)(v5, a2, a3, a4);
  (*(v6 + 8))(v5, v7);

  v8 = v4[1];

  return v8();
}

uint64_t sub_1DB498308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  Promise.reject(_:)(v5, a2, a3, a4);

  v6 = *(v4 + 8);

  return v6();
}

char *sub_1DB498380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v11 = Promise.__allocating_init()(v7, v8, v9, v10);
  v12 = sub_1DB50ABA0();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = v11;

  sub_1DB419B9C(0, 0, v6, &unk_1DB51F8A8, v13);

  return v11;
}

uint64_t sub_1DB4984BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1DB498510()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DB306AF4;

  JUMPOUT(0x1DB497C6CLL);
}

uint64_t sub_1DB498608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB497FF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB498704(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50B680();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB498758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB4987CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB498838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB4988A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB498918@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB498704(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DB498950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB2FC994(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DB498994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB498704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB4989C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB3A5E1C();
  *a1 = result;
  return result;
}

uint64_t sub_1DB4989EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB498A40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidepackedIntent.init(initial:resolveUsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = a4 + *(type metadata accessor for SidepackedIntent(0, a3, v7, v8) + 28);

  return sub_1DB2FEA0C(a2, v9);
}

uint64_t static SidepackedIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = type metadata accessor for SidepackedIntent(255, a2, a3, a4);
  v10 = sub_1DB50B120();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  sub_1DB498DBC(a1, a2, a3, a4, v13);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v18 = *(a2 - 8);
    v19 = 1;
    v20 = v24;
  }

  else
  {
    (*(v14 + 32))(v17, v13, v9);
    v18 = *(a2 - 8);
    v21 = v24;
    (*(v18 + 16))(v24, v17, a2);
    (*(v14 + 8))(v17, v9);
    v19 = 0;
    v20 = v21;
  }

  return (*(v18 + 56))(v20, v19, 1, a2);
}

uint64_t sub_1DB498DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v52 = a2;
  v53 = a5;
  v7 = type metadata accessor for SidepackedIntent(255, a2, a3, a4);
  v51 = sub_1DB50B120();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  v26 = *(v12 + 16);
  v50 = a1;
  v26(v18, a1, a3, v23);
  v27 = swift_dynamicCast();
  v28 = *(v19 + 56);
  if (v27)
  {
    v29 = *(v19 + 56);
    v28(v11, 0, 1, v7);
    v30 = *(v19 + 32);
    v30(v25, v11, v7);
    v31 = v53;
    v30(v53, v25, v7);
    return v29(v31, 0, 1, v7);
  }

  v47 = *(v19 + 56);
  v28(v11, 1, 1, v7);
  v33 = v11;
  v34 = v51;
  v49 = *(v49 + 8);
  (v49)(v33, v51);
  (v26)(v15, v50, a3);
  v35 = v52;
  type metadata accessor for AnyIntentModel(0, v52, v36, v37);
  if (swift_dynamicCast())
  {
    v58[0] = v55;
    v58[1] = v56;
    v59 = v57;
    sub_1DB2FEA0C(v58, &v55);
    v54 = v35;
    swift_getExtendedExistentialTypeMetadata();
    v38 = v48;
    v39 = swift_dynamicCast();
    v40 = v53;
    if (v39)
    {
      v41 = v47;
      v47(v38, 0, 1, v7);
      v42 = *(v19 + 32);
      v43 = v46;
      v42(v46, v38, v7);
      v42(v40, v43, v7);
      return v41(v40, 0, 1, v7);
    }

    v47(v38, 1, 1, v7);
    (v49)(v38, v34);
  }

  else
  {
    v44 = sub_1DB50B120();
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    (*(*(v44 - 8) + 8))(&v55, v44);
    v40 = v53;
  }

  return v47(v40, 1, 1, v7);
}

uint64_t static SidepackedIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v30 = a5;
  v31 = a6;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v14 = type metadata accessor for SidepackedIntent(255, a2, v12, v13);
  v15 = sub_1DB50B120();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  sub_1DB498DBC(a1, a2, v29, v30, v18);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v31, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v24 = v31;
    (*(v19 + 32))(v22, v18, v14);
    static Continuous._unwrapOnlyElement<A>(of:)(v22, AssociatedTypeWitness, a2, v11, v28);
    (*(v19 + 8))(v22, v14);
    v25 = *(AssociatedTypeWitness - 8);
    if ((*(v25 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v26 + 8))(v11, v27);
      return (*(v25 + 56))(v24, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      (*(v25 + 32))(v24, v11, AssociatedTypeWitness);
      return (*(v25 + 56))(v24, 0, 1, AssociatedTypeWitness);
    }
  }
}

uint64_t SidepackedIntent<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v41 = a3;
  v39 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidepackedIntent.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v10 = sub_1DB50B7C0();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v15 = type metadata accessor for SidepackedIntent(0, a2, v13, v14);
  v38 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v45;
  sub_1DB50BDF0();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v17;
  v45 = v15;
  v19 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v20);
  v21 = v48[0];
  v46[0] = 0;
  v22 = v44;
  sub_1DB50B6C0();
  v23 = v12;
  JSONObject.init(from:)(v47, v48);
  v24 = v19;
  sub_1DB3171C0(v48, v46);
  v49 = v21;
  AnyIntentModel.init(deserializing:using:)(v46, &v49, a2, v47);
  v25 = *(v45 + 28);
  v28 = type metadata accessor for AnyIntentModel(0, a2, v26, v27);
  v29 = v37;
  AnyIntentModel._canonicalized.getter(v28, &v37[v25], v30, v31);
  (*(*(v28 - 8) + 8))(v47, v28);
  LOBYTE(v47[0]) = 1;
  v32 = v42;
  sub_1DB50B780();
  sub_1DB3151CC(v48);
  (*(v24 + 8))(v23, v22);
  (*(v39 + 32))(v29, v32, a2);
  v33 = v38;
  v34 = v45;
  (*(v38 + 16))(v40, v29, v45);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v33 + 8))(v29, v34);
}

uint64_t SidepackedIntent<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a4;
  v23 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  JSONObject.subscript.getter(0x6C616974696E6924, 0xE800000000000000, v26);

  v25[0] = v11;
  v12 = *(a3 + 8);

  v12(v26, v25, a2, a3);
  if (v4)
  {
    sub_1DB3151CC(a1);
  }

  else
  {
    v14 = v24;
    (*(v23 + 32))(v24, v9, a2);
    JSONObject.subscript.getter(0x746E65746E6924, 0xE700000000000000, v25);

    v27 = v11;
    AnyIntentModel.init(deserializing:using:)(v25, &v27, a2, v26);
    v17 = *(type metadata accessor for SidepackedIntent(0, a2, v15, v16) + 28);
    v20 = type metadata accessor for AnyIntentModel(0, a2, v18, v19);
    AnyIntentModel._canonicalized.getter(v20, v14 + v17, v21, v22);
    sub_1DB3151CC(a1);
    return (*(*(v20 - 8) + 8))(v26, v20);
  }
}

uint64_t sub_1DB499D88(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB499E20(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1DB499F5C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t DeferredLazy.__allocating_init()()
{
  v0 = swift_allocObject();
  DeferredLazy.init()();
  return v0;
}

uint64_t DeferredLazy.value(or:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return DeferredLazy.value(or:)(a1, a2, a3);
}

{
  return sub_1DB49A508((v3[2] + *(*v3[2] + *MEMORY[0x1E69E6B68] + 16)), v3[2] + ((*(*v3[2] + 48) + 3) & 0x1FFFFFFFCLL), a1, a2, *(*v3 + 80), &v5, a3);
}

uint64_t DeferredLazy.init()()
{
  sub_1DB50B120();
  type metadata accessor for os_unfair_recursive_lock_s(255);
  sub_1DB50B430();
  *(v0 + 16) = sub_1DB50B420();
  return v0;
}

uint64_t sub_1DB49A3D4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  os_unfair_recursive_lock_lock_with_options();
  v5 = sub_1DB50B120();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1DB49A508@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a6;
  v26 = a4;
  v27 = a3;
  v28 = a7;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DB50B120();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  os_unfair_recursive_lock_lock_with_options();
  v18 = *(v15 + 16);
  v24 = a1;
  v18(v17, a1, v14);
  if ((*(v11 + 48))(v17, 1, a5) == 1)
  {
    v23[1] = a2;
    v19 = *(v15 + 8);
    v20 = v19(v17, v14);
    v27(v20);
    if (v7)
    {
      result = os_unfair_recursive_lock_unlock();
      *v25 = v7;
      return result;
    }

    v22 = v24;
    v19(v24, v14);
    (*(v11 + 16))(v22, v13, a5);
    (*(v11 + 56))(v22, 0, 1, a5);
  }

  else
  {
    v13 = v17;
  }

  (*(v11 + 32))(v28, v13, a5);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1DB49A784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DB50B120();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  os_unfair_recursive_lock_lock_with_options();
  (*(*(a3 - 8) + 56))(v8, 1, 1, a3);
  (*(v6 + 40))(a1, v8, v5);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1DB49A8B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(*(v2 + *MEMORY[0x1E69E6B68]) + 16) - 8) + 56))(a2, 1, 1);
}

uint64_t DeferredLazy.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DB49A9F0(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x696E6F746F6E6F4DLL, 0xEE0028656D695463);
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  sub_1DB50ADA0();
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  MEMORY[0x1E1285C70](0, 0xE000000000000000);
}

uint64_t CoarselyTimed.init(byTiming:)@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a1;
  v37 = a3;
  v38 = a4;
  v33 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB509DD0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for MonotonicTimeReference(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v42);
  v20 = &v19[*(v17 + 28)];
  *v20 = v42;
  v21 = *(v7 + 16);
  v22 = (v21)(v15, v19, v6);
  v23 = v43;
  v40(v22);
  if (v23)
  {
    (*(v7 + 8))(v15, v6);
    return sub_1DB38288C(v19);
  }

  else
  {
    v39 = v21;
    v40 = 0;
    v43 = v7;
    (*(v33 + 32))(v38, v5, v37);
    static MonotonicTime.now.getter(&v42);
    v25 = v42;
    tv_sec = v20->tv_sec;
    tv_nsec = v20->tv_nsec;
    v42.tv_sec = tv_sec;
    v42.tv_nsec = tv_nsec;
    v41 = v25;
    sub_1DB49B574(&v42.tv_sec, &v41.tv_sec);
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v28 = v34;
    sub_1DB509D60();
    v29 = v39;
    v39(v35, v15, v6);
    v29(v36, v28, v6);
    type metadata accessor for CoarselyTimed(0, v37, v30, v31);
    sub_1DB509910();
    v32 = *(v43 + 8);
    v32(v28, v6);
    v32(v15, v6);
    return sub_1DB38288C(v19);
  }
}

uint64_t CoarselyTimed.init(byTiming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a4 - 8);
  v4[7] = swift_task_alloc();
  v5 = sub_1DB509DD0();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for MonotonicTimeReference(0);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB49B024, 0, 0);
}

uint64_t sub_1DB49B024(__n128 a1)
{
  v15 = v1;
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 104);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 24);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v14);
  v8 = *(v3 + 20);
  *(v1 + 160) = v8;
  *(v2 + v8) = v14;
  v9 = *(v6 + 16);
  *(v1 + 128) = v9;
  *(v1 + 136) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v2, v5);
  v13 = (v7 + *v7);
  v10 = swift_task_alloc();
  *(v1 + 144) = v10;
  *v10 = v1;
  v10[1] = sub_1DB49B184;
  v11 = *(v1 + 56);

  return v13(v11);
}

uint64_t sub_1DB49B184()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1DB49B4A8;
  }

  else
  {
    v2 = sub_1DB49B298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB49B298()
{
  v19 = v0;
  v1 = (*(v0 + 120) + *(v0 + 160));
  (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 56), *(v0 + 40));
  static MonotonicTime.now.getter(&v18);
  v2 = v1[1];
  v17[0] = *v1;
  v17[1] = v2;
  sub_1DB49B574(v17, &v18.tv_sec);
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v13 = *(v0 + 88);
  v14 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v15 = *(v0 + 40);
  v16 = *(v0 + 120);
  sub_1DB509D60();
  v3(v13, v5, v6);
  v3(v14, v4, v6);
  type metadata accessor for CoarselyTimed(0, v15, v8, v9);
  sub_1DB509910();
  v10 = *(v7 + 8);
  v10(v4, v6);
  v10(v5, v6);
  sub_1DB38288C(v16);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DB49B4A8()
{
  v1 = v0[15];
  (*(v0[9] + 8))(v0[13], v0[8]);
  sub_1DB38288C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t *sub_1DB49B574(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2 < *result;
  if (*a2 == *result)
  {
    v6 = v5 < v3;
  }

  if (v6)
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x203A747261747328, 0xE800000000000000);
    sub_1DB49A9F0(v2, v3);
    MEMORY[0x1E1285C70](0x203A646E65202CLL, 0xE700000000000000);
    sub_1DB49A9F0(v4, v5);
    MEMORY[0x1E1285C70](41, 0xE100000000000000);
    MEMORY[0x1E1285C70](0, 0xE000000000000000);

    result = sub_1DB50B580();
    __break(1u);
  }

  return result;
}

uint64_t CoarselyTimed.init(contained:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = *(type metadata accessor for CoarselyTimed(0, a3, v7, v8) + 28);
  v10 = sub_1DB509930();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a2, v10);
}

uint64_t CoarselyTimed.duration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1DB509930();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CoarselyTimed.duration.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1DB509930();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static CoarselyTimed<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1DB50A610() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for CoarselyTimed(0, a3, v6, v7) + 28);

  return MEMORY[0x1EEDC26B0](a1 + v8, a2 + v8);
}

uint64_t sub_1DB49B998(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1DB509930();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB49BA20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1DB509930();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1DB49BC84(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1DB509930() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
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

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
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

      goto LABEL_31;
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

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t JSONBridgingType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB49C004()
{
  result = qword_1ECC466C0;
  if (!qword_1ECC466C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC466C0);
  }

  return result;
}

unint64_t sub_1DB49C068()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466C8, &unk_1DB51FBF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = 0xD000000000000010;
    v3 = inited + 32;
    *(inited + 40) = 0x80000001DB52FC20;
    *(inited + 48) = v1;
    v4 = sub_1DB314114(inited);
    swift_setDeallocating();
    sub_1DB49C170(v3);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1DB314114(v6);
  }
}

uint64_t sub_1DB49C170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466D0, &qword_1DB522F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static ObjectGraphBuilder.buildPartialBlock(first:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426F0, &unk_1DB51FC00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  sub_1DB30C420(a1, inited + 32);
  v3 = sub_1DB30BC94();
  v5 = MEMORY[0x1E12859D0](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v3);
  sub_1DB307C9C(inited);
  swift_setDeallocating();
  sub_1DB30BF1C(inited + 32);
  type metadata accessor for BaseObjectGraph();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0xE000000000000000;
  result[2] = v5;
  return result;
}

void *static ObjectGraphBuilder.buildBlock()()
{
  v0 = sub_1DB30BC94();
  v2 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0xE000000000000000;
  result[2] = v2;
  return result;
}

void *static ObjectGraphBuilder.buildOptional(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v2 = sub_1DB30BC94();
    v4 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v2);
    sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for BaseObjectGraph();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0xE000000000000000;
    v1[2] = v4;
  }

  return v1;
}

void sub_1DB49C440(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1DB34130C(0, v2, 0);
    v49 = v52;
    v3 = v1 + 64;
    v4 = sub_1DB50B250();
    v5 = 0;
    v6 = *(v1 + 36);
    v44 = v1 + 72;
    v45 = v2;
    v47 = v1 + 64;
    v48 = v1;
    v46 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_28;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_29;
      }

      v9 = *(v1 + 56);
      v10 = (*(v1 + 48) + 16 * v4);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(v9 + 8 * v4);
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v50 = v11;
        v51 = v12;
        swift_bridgeObjectRetain_n();
        v16 = v13;
        MEMORY[0x1E1285C70](2236474, 0xE300000000000000);
        v17 = [v15 description];
        v18 = sub_1DB50A650();
        v20 = v19;

        MEMORY[0x1E1285C70](v18, v20);

        MEMORY[0x1E1285C70](34, 0xE100000000000000);
      }

      else
      {
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = v21;
          v50 = v11;
          v51 = v12;
          swift_bridgeObjectRetain_n();
          v23 = v13;
          MEMORY[0x1E1285C70](8250, 0xE200000000000000);
          v24 = [v22 description];
          v25 = sub_1DB50A650();
          v27 = v26;

          MEMORY[0x1E1285C70](v25, v27);
        }

        else
        {
          v50 = v11;
          v51 = v12;
          swift_bridgeObjectRetain_n();
          v28 = v13;
          MEMORY[0x1E1285C70](8250, 0xE200000000000000);
          v29 = [v28 description];
          v30 = sub_1DB50A650();
          v32 = v31;

          MEMORY[0x1E1285C70](v30, v32);
        }
      }

      v33 = v49;
      v34 = *(v49 + 16);
      v35 = *(v49 + 24) >> 1;
      if (v35 <= v34)
      {
        sub_1DB34130C((v35 != 0), v34 + 1, 1);
        v33 = v49;
      }

      *(v33 + 16) = v34 + 1;
      v36 = v33 + 16 * v34;
      *(v36 + 32) = v50;
      *(v36 + 40) = v51;
      v1 = v48;
      v7 = 1 << *(v48 + 32);
      if (v4 >= v7)
      {
        goto LABEL_30;
      }

      v3 = v47;
      v37 = *(v47 + 8 * v8);
      if ((v37 & (1 << v4)) == 0)
      {
        goto LABEL_31;
      }

      v49 = v33;
      v6 = v46;
      if (v46 != *(v48 + 36))
      {
        goto LABEL_32;
      }

      v38 = v37 & (-2 << (v4 & 0x3F));
      if (v38)
      {
        v7 = __clz(__rbit64(v38)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v8 << 6;
        v40 = v8 + 1;
        v41 = (v44 + 8 * v8);
        while (v40 < (v7 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            sub_1DB3ADCD0(v4, v46, 0);
            v7 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        sub_1DB3ADCD0(v4, v46, 0);
      }

LABEL_4:
      ++v5;
      v4 = v7;
      if (v5 == v45)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

__n128 CoreAnalyticsLogger.init(provider:decorator:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB2FEA0C(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t CoreAnalyticsLogger.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 16))(a2, a3);
  v8 = v7;
  sub_1DB30C4B8((v3 + 5), v14, &qword_1ECC44E00, &unk_1DB518260);
  if (v15)
  {
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(a3 + 24))(a2, a3);
    v10 = (*(v9 + 8))();

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_1DB30623C(v14, &qword_1ECC44E00, &unk_1DB518260);
    v10 = (*(a3 + 24))(a2, a3);
  }

  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v11);
  (*(v12 + 8))(v6, v8, v10, v11, v12);
}

Swift::Void __swiftcall DefaultCoreAnalyticsLoggerProvider.send(eventName:payload:)(Swift::String eventName, Swift::OpaquePointer payload)
{
  object = eventName._object;
  countAndFlagsBits = eventName._countAndFlagsBits;
  if (qword_1EE30C900 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v5 = v31;
  v29 = v32;
  __swift_project_boxed_opaque_existential_1(aBlock, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v41 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x80000001DB530070;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v40 = MEMORY[0x1E69E6158];
  v38 = countAndFlagsBits;
  v39 = object;
  sub_1DB30C4B8(&v38, v34, &qword_1ECC426B0, &qword_1DB50EEB0);
  v35 = 0u;
  v36 = 0u;

  sub_1DB301D4C(v34, &v35);
  v37 = 0;
  v8 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
    v41 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v35;
  v13 = v36;
  v11[64] = v37;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v41 = v8;
  sub_1DB30623C(&v38, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._object = 0x80000001DB530090;
  v14._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  sub_1DB49C440(payload._rawValue);
  *&v35 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB330B04();
  v16 = sub_1DB50A5E0();
  v18 = v17;

  v40 = MEMORY[0x1E69E6158];
  v38 = v16;
  v39 = v18;
  sub_1DB30C4B8(&v38, v34, &qword_1ECC426B0, &qword_1DB50EEB0);
  v35 = 0u;
  v36 = 0u;
  sub_1DB301D4C(v34, &v35);
  v37 = 0;
  v19 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
    v41 = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v35;
  v24 = v36;
  v22[64] = v37;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v41 = v19;
  sub_1DB30623C(&v38, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 125;
  v25._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v6 + 32) = v41;
  Logger.debug(_:)(v6, v5, v29);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v26 = sub_1DB50A620();
  v27 = swift_allocObject();
  v27[2]._rawValue = payload._rawValue;
  v32 = sub_1DB49CF28;
  v33 = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB49CE80;
  v31 = &block_descriptor_18;
  v28 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v28);
}