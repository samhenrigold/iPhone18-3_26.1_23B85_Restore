uint64_t sub_1DD9A7174()
{
  v1 = v0[169];
  sub_1DD9ADA8C("StreamingPromptSessionCreated", 29, 2);
  v0[251] = *(v1 + 112);
  v0[252] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A7204, 0, 0);
}

uint64_t sub_1DD9A7204()
{
  v1 = *(v0 + 1312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B8, &qword_1DDA1B248);
  sub_1DDA138E0();
  *(swift_allocObject() + 16) = xmmword_1DDA16320;

  sub_1DD940874(MEMORY[0x1E69E7CC0]);
  sub_1DDA138D0();
  sub_1DD9B2CFC(v0 + 376);
  sub_1DDA138F0();
  v2 = sub_1DDA13CA0();
  v3 = MEMORY[0x1E69DA618];
  v1[3] = v2;
  v1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1DDA13C90();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD9A76B8()
{
  v1 = v0[255];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[169];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + 128);
  *(v4 + 128) = 0x8000000000000000;
  sub_1DD9CBB84(v3, v2, v1, isUniquelyReferenced_nonNull_native);
  *(v4 + 128) = v7;
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD9A7794, 0, 0);
}

uint64_t sub_1DD9A7794()
{
  sub_1DD9B4918(v0[240], type metadata accessor for ChatChunk.ChoiceResource);
  v1 = v0[164];
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DD9A7B28()
{
  v1 = v0[262];
  v2 = v0[261];
  v3 = v0[260];
  v4 = v0[259];
  v5 = v0[258];
  v6 = v0[257];
  v7 = v0[256];
  v8 = v0[169];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v8 + 136);
  *(v8 + 136) = 0x8000000000000000;
  sub_1DD9CBB84(v7, v6, v1, isUniquelyReferenced_nonNull_native);
  *(v8 + 136) = v12;
  swift_endAccess();
  sub_1DD96E310(v7, v6, v5, v4, v3, v2, 1u);
  swift_beginAccess();

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v8 + 144);
  *(v8 + 144) = 0x8000000000000000;
  sub_1DD9CBB84(v5, v4, v1, v10);
  *(v8 + 144) = v13;
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD9A7CA0, 0, 0);
}

uint64_t sub_1DD9A7CA0()
{
  sub_1DD96E310(v0[256], v0[257], v0[258], v0[259], v0[260], v0[261], 1u);
  v1 = v0[164];
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DD9A8038()
{
  sub_1DD9ADA8C("StreamingPromptTimeToFirstToken", 31, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A80B0, 0, 0);
}

uint64_t sub_1DD9A80B0()
{
  v1 = v0[170];
  type metadata accessor for Instrumentation(0);
  *(swift_task_alloc() + 16) = v1;
  sub_1DDA14820();
  v2 = v0[237];
  v3 = v0[169];

  v4 = sub_1DDA14250();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_1DD90D378(v2, &qword_1ECD83650, &qword_1DDA1B1C0);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A81EC, v3, 0);
}

uint64_t sub_1DD9A81EC()
{
  v1 = v0[169];
  v0[268] = *(v1 + 112);
  v0[269] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8268, v1, 0);
}

uint64_t sub_1DD9A8268()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2160) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A82F0, 0, 0);
}

uint64_t sub_1DD9A82F0()
{
  v1 = v0[265];
  v2 = v0[264];
  v3 = v0[164];
  sub_1DD98A384(v0[263], v0[270]);

  sub_1DDA014D4(v2, v1);
  v4 = sub_1DDA13D00();
  v5 = MEMORY[0x1E69DA648];
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1DDA13CF0();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DD9A8718()
{
  v1 = v0[229];
  v2 = v0[169];
  v0[272] = *(v2 + 112);
  v0[273] = *(v2 + 120);
  v0[274] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A87A0, v2, 0);
}

uint64_t sub_1DD9A87A0()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2200) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8828, 0, 0);
}

uint64_t sub_1DD9A8828()
{
  v1 = v0[229];
  v10 = v0[207];
  v2 = v0[206];
  v3 = v0[205];
  v9 = v0[204];
  v4 = v0[164];
  v11 = v0[225];
  sub_1DD98A384(v0[274], v0[275]);

  sub_1DDA014D4(*(v1 + 8), *(v1 + 16));
  (*(v3 + 16))(v2, v10, v9);
  sub_1DDA13920();
  v5 = sub_1DDA13D20();
  v6 = MEMORY[0x1E69DA650];
  v4[3] = v5;
  v4[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1DDA13D10();
  (*(v3 + 8))(v10, v9);
  sub_1DD90D378(v11, &qword_1ECD83698, &qword_1DDA1B220);
  sub_1DD9B4918(v1, type metadata accessor for ChatChunk.TextValueAnnotation);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD9A8CF0()
{
  v1 = v0[169];
  v0[280] = *(v1 + 112);
  v0[281] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8D6C, v1, 0);
}

uint64_t sub_1DD9A8D6C()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2256) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8DF4, 0, 0);
}

uint64_t sub_1DD9A8DF4()
{
  v1 = v0[169];
  v2 = sub_1DD98A384(v0[276], v0[282]);
  v4 = v3;

  v0[283] = v4;
  v0[284] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8E88, v1, 0);
}

uint64_t sub_1DD9A8E88()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2280) = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8F10, 0, 0);
}

uint64_t sub_1DD9A8F10()
{
  v1 = v0[169];
  v2 = sub_1DD98A384(v0[277], v0[285]);
  v4 = v3;

  v0[286] = v4;
  v0[287] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8FA4, v1, 0);
}

uint64_t sub_1DD9A8FA4()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2304) = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A902C, 0, 0);
}

uint64_t sub_1DD9A902C()
{
  v1 = v0[164];
  sub_1DD98A384(v0[277], v0[288]);

  v2 = sub_1DDA13D40();
  v3 = MEMORY[0x1E69DA658];
  v1[3] = v2;
  v1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1DDA13D30();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DD9A947C()
{
  sub_1DD9AD638("ImageGeneratorCall", 18, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A94F4, 0, 0);
}

uint64_t sub_1DD9A94F4()
{
  v1 = *(v0 + 1312);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DD9A986C()
{
  sub_1DD9AD638("FileGeneratorCall", 17, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9B4FD4, 0, 0);
}

uint64_t sub_1DD9A98E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[292] = a1;
  v6[293] = a2;
  v6[294] = v3;

  v7 = v5[216];
  v8 = v5[215];
  v9 = v5[195];
  if (v3)
  {

    (*(v7 + 8))(v9, v8);
    v10 = sub_1DD9AD1AC;
  }

  else
  {
    v11 = *(v7 + 8);
    v6[295] = v11;
    v6[296] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v9, v8);

    v10 = sub_1DD9A9ACC;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DD9A9ACC()
{
  v1 = v0[294];
  v2 = v0[170];
  type metadata accessor for Instrumentation(0);
  v3 = swift_task_alloc();
  *(v3 + 16) = 1;
  *(v3 + 24) = v2;
  sub_1DDA14820();
  if (v1)
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[234];
  v6 = v0[169];

  v7 = sub_1DDA14250();
  (*(*(v7 - 8) + 56))(v5, v4, 1, v7);
  sub_1DD90D378(v5, &qword_1ECD83650, &qword_1DDA1B1C0);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A9C10, v6, 0);
}

uint64_t sub_1DD9A9C10()
{
  sub_1DD9ADA8C("ImageGeneratorCall", 18, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A9C88, 0, 0);
}

uint64_t sub_1DD9A9C88()
{
  v35 = v0;
  v1 = *(v0 + 2344);
  v2 = *(v0 + 2336);
  v3 = *(v0 + 1600);
  v4 = *(v0 + 1592);
  v5 = *(v0 + 1584);
  sub_1DD9B4C84(*(v0 + 1616), v3, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  sub_1DD9B4C84(v3, v4, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  sub_1DD9B4978(v3, v5, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  sub_1DD909CD4(v2, v1);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14F00();
  sub_1DD9B4918(v5, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  sub_1DD909D28(v2, v1);
  if (!os_log_type_enabled(v6, v7))
  {
    v24 = *(v0 + 1592);

    sub_1DD9B4918(v24, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
    goto LABEL_14;
  }

  v32 = *(v0 + 2360);
  v33 = *(v0 + 2344);
  v8 = *(v0 + 1736);
  v9 = *(v0 + 1728);
  v10 = *(v0 + 1720);
  v11 = *(v0 + 1592);
  v12 = *(v0 + 1576);
  v13 = *(v0 + 1568);
  v14 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v34 = v31;
  *v14 = 136315394;
  sub_1DD9B4C84(v11 + *(v12 + 28), v13, type metadata accessor for ImageGeneratorCall.Image);
  (*(v9 + 32))(v8, v13, v10);
  sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v15 = sub_1DDA15400();
  v17 = v16;
  v32(v8, v10);
  sub_1DD9B4918(v11, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  v18 = sub_1DD93FA54(v15, v17, &v34);

  *(v14 + 4) = v18;
  *(v14 + 12) = 2048;
  v22 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v22 != 2)
    {
      v23 = 0;
      goto LABEL_13;
    }

    v25 = *(*(v0 + 2336) + 16);
    v26 = *(*(v0 + 2336) + 24);
    v27 = __OFSUB__(v26, v25);
    v23 = v26 - v25;
    if (!v27)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v28 = *(v0 + 2336);
    v29 = *(v0 + 2340);
    v27 = __OFSUB__(v29, v28);
    LODWORD(v23) = v29 - v28;
    if (v27)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v19, v20, v21);
    }

    v23 = v23;
    goto LABEL_13;
  }

  if (v22)
  {
    goto LABEL_10;
  }

  v23 = *(v0 + 2350);
LABEL_13:
  *(v14 + 14) = vcvtd_n_f64_s64(v23, 0x14uLL);
  _os_log_impl(&dword_1DD8F8000, v6, v7, "Image downloaded: %s, size: %f MB", v14, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v31);
  MEMORY[0x1E12B8CE0](v31, -1, -1);
  MEMORY[0x1E12B8CE0](v14, -1, -1);

LABEL_14:
  v20 = *(v0 + 1352);
  v19 = sub_1DD9A9FE0;
  v21 = 0;

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1DD9A9FE0()
{
  v1 = v0[202];
  v2 = v0[169];
  v0[297] = *(v2 + 112);
  v0[298] = *(v2 + 120);
  v0[299] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9AA068, v2, 0);
}

uint64_t sub_1DD9AA068()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2400) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AA0F0, 0, 0);
}

uint64_t sub_1DD9AA0F0()
{
  v1 = v0[293];
  v2 = v0[292];
  v3 = v0[202];
  v4 = v0[164];
  sub_1DD98A384(v0[299], v0[300]);

  sub_1DDA014D4(*(v3 + 8), *(v3 + 16));
  sub_1DD909CD4(v2, v1);
  sub_1DDA13980();
  v5 = sub_1DDA137E0();
  v6 = MEMORY[0x1E69DA408];
  v4[3] = v5;
  v4[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1DDA137D0();
  sub_1DD909D28(v2, v1);
  sub_1DD9B4918(v3, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD9AA558()
{
  v1 = v0[193];
  v2 = v0[169];
  v0[301] = *(v2 + 112);
  v0[302] = *(v2 + 120);
  v0[303] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9AA5E0, v2, 0);
}

uint64_t sub_1DD9AA5E0()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2432) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AA668, 0, 0);
}

uint64_t sub_1DD9AA668()
{
  v1 = v0[216];
  v9 = v0[217];
  v10 = v0[215];
  v2 = v0[193];
  v3 = v0[189];
  v4 = v0[164];
  sub_1DD98A384(v0[303], v0[304]);

  sub_1DDA014D4(*(v2 + 8), *(v2 + 16));
  (*(v1 + 16))(v9, v3, v10);

  sub_1DDA13950();
  v5 = sub_1DDA137C0();
  v6 = MEMORY[0x1E69DA400];
  v4[3] = v5;
  v4[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1DDA137B0();
  sub_1DD9B4918(v3, type metadata accessor for FileGeneratorFile);
  sub_1DD9B4918(v2, type metadata accessor for ChatChunk.ChoiceItemMessageContent);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD9AAB50()
{
  sub_1DD9ADA8C("FileGeneratorCall", 17, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AABC8, 0, 0);
}

uint64_t sub_1DD9AABC8()
{
  sub_1DD9B4918(v0[186], type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
  v1 = v0[164];
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DD9AAF5C()
{
  sub_1DD9ADA8C("ImageGeneratorCall", 18, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AAFD4, 0, 0);
}

uint64_t sub_1DD9AAFD4()
{
  v1 = sub_1DDA13840();
  sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
  v7 = *(v0 + 2456);
  v8 = *(v0 + 2440);
  swift_allocError();
  v3 = v2;
  sub_1DDA15070();
  *(v0 + 1288) = 0;
  *(v0 + 1296) = 0xE000000000000000;
  MEMORY[0x1E12B7AB0](0xD000000000000044, 0x80000001DDA28610);
  *(v0 + 920) = v8;
  *(v0 + 936) = v7;
  sub_1DDA15160();
  sub_1DDA13800();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69DA480], v1);
  v4 = *(v0 + 1912);
  swift_willThrow();
  sub_1DD9B4918(v4, type metadata accessor for ChatChunk.ChoiceResource);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DD9AB4A0()
{
  sub_1DD9ADA8C("FileGeneratorCall", 17, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9B4F94, 0, 0);
}

uint64_t sub_1DD9AB518()
{
  v1 = v0[239];
  v2 = v0[169];
  v0[310] = *(v2 + 112);
  v0[311] = *(v2 + 120);
  v0[312] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9AB5A0, v2, 0);
}

uint64_t sub_1DD9AB5A0()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2504) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AB628, 0, 0);
}

uint64_t sub_1DD9AB628()
{
  v1 = *(v0 + 1912) + *(v0 + 2648);
  sub_1DD98A384(*(v0 + 2496), *(v0 + 2504));

  v2 = *(v1 + 24);
  v3 = (v2 + 80);
  v4 = *(v2 + 16) + 1;
  v5 = MEMORY[0x1E69DA500];
  while (--v4)
  {
    v6 = *v3;
    v3 += 56;
    if (v6 == 1)
    {
      v5 = MEMORY[0x1E69DA508];
      break;
    }
  }

  v7 = *(v0 + 1912);
  v8 = *(v0 + 1312);
  (*(*(v0 + 1440) + 104))(*(v0 + 1448), *v5, *(v0 + 1432));
  v9 = sub_1DDA13CE0();
  v10 = MEMORY[0x1E69DA640];
  v8[3] = v9;
  v8[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_1DDA13CD0();
  sub_1DD9B4918(v7, type metadata accessor for ChatChunk.ChoiceResource);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DD9ABAB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD9ABC0C, 0, 0);
}

uint64_t sub_1DD9ABC0C()
{
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2552);
  v3 = 24 * v2;
  for (i = v2 + 1; v1 != i; ++i)
  {
    *(v0 + 2552) = i;
    v5 = *(v0 + 1376);
    v6 = v5[2];
    *(v0 + 2560) = v6;
    v3 += 24;
    if (v6)
    {
      v7 = *(v0 + 2536);
      v8 = v5[4];
      *(v0 + 2568) = v8;
      v9 = v5[3];
      v10 = v7 + v3;
      v11 = *(v10 + 48);
      *(v0 + 2576) = v11;
      v12 = *(v10 + 40);
      v13 = *(v10 + 32);

      sub_1DD9B2D50(v6, v9, v8);
      v14 = swift_task_alloc();
      *(v0 + 2584) = v14;
      *v14 = v0;
      v14[1] = sub_1DD9ABAB4;

      return sub_1DD948CE8(v12, v11, v13, v6);
    }
  }

  v16 = *(v0 + 1376);
  swift_beginAccess();
  v17 = *(v16 + 16);
  if (!v17)
  {
    sub_1DD9B41AC(*(v0 + 2512), *(v0 + 2520), *(v0 + 2528), MEMORY[0x1E69E7CF8]);
    v22 = *(v0 + 216);
    if (v22 && *(v22 + 16))
    {
      v23 = *(v0 + 1936);
      v24 = *(v0 + 1328);
      v25 = *(type metadata accessor for ChatChunk.Choice(0) - 8);
      v26 = (v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)));
      v28 = *v26;
      v27 = v26[1];
      v29 = v24[45];
      v31 = v24[14];
      v30 = v24[15];
      v32 = sub_1DDA14D60();
      (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
      sub_1DDA14D40();

      v33 = sub_1DDA14D30();
      v34 = swift_allocObject();
      v35 = MEMORY[0x1E69E85E0];
      v34[2] = v33;
      v34[3] = v35;
      v34[4] = v28;
      v34[5] = v27;
      v34[6] = v31;
      v34[7] = v30;
      v34[8] = v29;
      sub_1DD982718(0, 0, v23, &unk_1DDA1B230, v34);
    }

    v36 = MEMORY[0x1E69E7CC0];
    v37 = sub_1DD940874(MEMORY[0x1E69E7CC0]);
    v38 = *(v0 + 224);
    if (v38)
    {

      sub_1DD9B2CFC(v0 + 136);
      v39 = *(v38 + 16);
      if (v39)
      {
        v70 = v37;
        sub_1DD9AF17C(0, v39, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
        v40 = (v38 + 56);
        while (1)
        {
          v41 = *(v40 - 3);
          v42 = *(v40 - 2);
          v43 = *(v40 - 1);
          v44 = *v40;
          *(v0 + 648) = 25705;
          *(v0 + 656) = 0xE200000000000000;
          *(v0 + 664) = v41;
          *(v0 + 672) = v42;
          *(v0 + 680) = 0x6567617373656DLL;
          *(v0 + 688) = 0xE700000000000000;
          *(v0 + 696) = v43;
          *(v0 + 704) = v44;
          v45 = sub_1DDA151C0();

          v46 = *(v0 + 648);
          v47 = *(v0 + 656);
          v48 = *(v0 + 664);
          v49 = *(v0 + 672);

          v50 = sub_1DD96AC38(v46, v47);
          if (v51)
          {
            break;
          }

          *(v45 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v50;
          v53 = (v45[6] + 16 * v50);
          *v53 = v46;
          v53[1] = v47;
          v54 = (v45[7] + 16 * v50);
          *v54 = v48;
          v54[1] = v49;
          v55 = v45[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_37;
          }

          v45[2] = v57;
          v58 = *(v0 + 680);
          v59 = *(v0 + 688);
          v60 = *(v0 + 696);
          v61 = *(v0 + 704);

          v50 = sub_1DD96AC38(v58, v59);
          if (v51)
          {
            break;
          }

          *(v45 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v50;
          v62 = (v45[6] + 16 * v50);
          *v62 = v58;
          v62[1] = v59;
          v63 = (v45[7] + 16 * v50);
          *v63 = v60;
          v63[1] = v61;
          v64 = v45[2];
          v56 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          if (v56)
          {
            goto LABEL_37;
          }

          v45[2] = v65;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
          swift_arrayDestroy();
          v67 = *(v36 + 16);
          v66 = *(v36 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_1DD9AF17C((v66 > 1), v67 + 1, 1);
          }

          *(v36 + 16) = v67 + 1;
          *(v36 + 8 * v67 + 32) = v45;
          v40 += 4;
          if (!--v39)
          {

            v37 = v70;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v50, v51, v52);
      }

LABEL_32:
      *(v0 + 816) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A0, &qword_1DDA1B228);
      *(v0 + 792) = v36;
      sub_1DD940DE4((v0 + 792), (v0 + 824));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DD9CBCE4((v0 + 824), 0x73656369746F4ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_1DD9B2CFC(v0 + 136);
    }

    *(v0 + 2624) = v37;
    v51 = *(v0 + 1352);
    v50 = sub_1DD9AC8D0;
    v52 = 0;

    return MEMORY[0x1EEE6DFA0](v50, v51, v52);
  }

  v18 = *(v16 + 32);
  if (!*(v0 + 2512))
  {

    goto LABEL_26;
  }

  v19 = *(v0 + 2528);

  if (!v19)
  {
LABEL_26:

    v21 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_27;
  }

  v20 = *(v0 + 2528);
  v21 = *(v0 + 2520);
LABEL_27:
  *(v0 + 2608) = v20;
  *(v0 + 2600) = v17;
  *(v0 + 2592) = v18;
  v68 = swift_task_alloc();
  *(v0 + 2616) = v68;
  *v68 = v0;
  v68[1] = sub_1DD9AC2E8;

  return sub_1DD949B9C(v21, v20);
}

uint64_t sub_1DD9AC2E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD9AC440, 0, 0);
}

uint64_t sub_1DD9AC440()
{
  v1 = *(v0 + 216);
  if (v1 && *(v1 + 16))
  {
    v2 = *(v0 + 1936);
    v3 = *(v0 + 1328);
    v4 = *(type metadata accessor for ChatChunk.Choice(0) - 8);
    v5 = (v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v7 = *v5;
    v6 = v5[1];
    v8 = v3[45];
    v10 = v3[14];
    v9 = v3[15];
    v11 = sub_1DDA14D60();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    sub_1DDA14D40();

    v12 = sub_1DDA14D30();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v7;
    v13[5] = v6;
    v13[6] = v10;
    v13[7] = v9;
    v13[8] = v8;
    sub_1DD982718(0, 0, v2, &unk_1DDA1B230, v13);
  }

  v15 = MEMORY[0x1E69E7CC0];
  v16 = sub_1DD940874(MEMORY[0x1E69E7CC0]);
  v17 = *(v0 + 224);
  if (!v17)
  {
    sub_1DD9B2CFC(v0 + 136);
LABEL_18:
    *(v0 + 2624) = v16;
    v30 = *(v0 + 1352);
    v29 = sub_1DD9AC8D0;
    v31 = 0;

    return MEMORY[0x1EEE6DFA0](v29, v30, v31);
  }

  sub_1DD9B2CFC(v0 + 136);
  v18 = *(v17 + 16);
  if (!v18)
  {

LABEL_17:
    *(v0 + 816) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A0, &qword_1DDA1B228);
    *(v0 + 792) = v15;
    sub_1DD940DE4((v0 + 792), (v0 + 824));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DD9CBCE4((v0 + 824), 0x73656369746F4ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    goto LABEL_18;
  }

  v49 = v16;
  sub_1DD9AF17C(0, v18, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
  v19 = (v17 + 56);
  while (1)
  {
    v20 = *(v19 - 3);
    v21 = *(v19 - 2);
    v22 = *(v19 - 1);
    v23 = *v19;
    *(v0 + 648) = 25705;
    *(v0 + 656) = 0xE200000000000000;
    *(v0 + 664) = v20;
    *(v0 + 672) = v21;
    *(v0 + 680) = 0x6567617373656DLL;
    *(v0 + 688) = 0xE700000000000000;
    *(v0 + 696) = v22;
    *(v0 + 704) = v23;
    v24 = sub_1DDA151C0();

    v25 = *(v0 + 648);
    v26 = *(v0 + 656);
    v27 = *(v0 + 664);
    v28 = *(v0 + 672);

    v29 = sub_1DD96AC38(v25, v26);
    if (v30)
    {
      break;
    }

    *(v24 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
    v32 = (v24[6] + 16 * v29);
    *v32 = v25;
    v32[1] = v26;
    v33 = (v24[7] + 16 * v29);
    *v33 = v27;
    v33[1] = v28;
    v34 = v24[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_22;
    }

    v24[2] = v36;
    v37 = *(v0 + 680);
    v38 = *(v0 + 688);
    v39 = *(v0 + 696);
    v40 = *(v0 + 704);

    v29 = sub_1DD96AC38(v37, v38);
    if (v30)
    {
      break;
    }

    *(v24 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
    v41 = (v24[6] + 16 * v29);
    *v41 = v37;
    v41[1] = v38;
    v42 = (v24[7] + 16 * v29);
    *v42 = v39;
    v42[1] = v40;
    v43 = v24[2];
    v35 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v35)
    {
      goto LABEL_22;
    }

    v24[2] = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
    swift_arrayDestroy();
    v46 = *(v15 + 16);
    v45 = *(v15 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_1DD9AF17C((v45 > 1), v46 + 1, 1);
    }

    *(v15 + 16) = v46 + 1;
    *(v15 + 8 * v46 + 32) = v24;
    v19 += 4;
    if (!--v18)
    {

      v16 = v49;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1DD9AC8D0()
{
  v1 = v0[169];
  v0[329] = *(v1 + 112);
  v0[330] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AC94C, 0, 0);
}

uint64_t sub_1DD9AC94C()
{
  v1 = *(v0 + 1312);
  v2 = sub_1DDA13CC0();
  v3 = MEMORY[0x1E69DA620];
  v1[3] = v2;
  v1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1DDA13CB0();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD9ACD18()
{
  v1 = *(v0 + 1328);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 712);

  return MEMORY[0x1EEE6DFA0](sub_1DD9ACD9C, 0, 0);
}

uint64_t sub_1DD9ACD9C()
{
  v1 = v0[178];
  v2 = v0[175];
  v3 = v0[174];
  v4 = v0[173];
  sub_1DD9B4C84(v1, v4, type metadata accessor for ChatChunk.RateLimits);
  (*(v2 + 56))(v4, 0, 1, v3);
  sub_1DD91442C(v4, v0[92]);
  sub_1DD90D378(v4, &qword_1ECD82CF8, &unk_1DDA1AD50);
  sub_1DD9B4918(v1, type metadata accessor for ChatChunk.RateLimits);
  sub_1DD9291B0((v0 + 89));
  v5 = v0[164];
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DD9AD1AC()
{
  v1 = v0[294];
  v2 = v1;
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14EE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[294];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Failed to download generated image. Error: %@", v7, 0xCu);
    sub_1DD90D378(v8, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[164];
  sub_1DD9B4918(v0[202], type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD9AD638(const char *a1, uint64_t a2, int a3)
{
  v6 = sub_1DDA14760();
  v42 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - v10;
  v12 = sub_1DDA14790();
  v13 = *(v12 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v36 - v16;
  v41 = v9;
  v38 = a3;
  if (a3)
  {
    v16 = a1 >> 32;
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v16 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v18 = a1 + 1;
LABEL_9:
          v45 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
          goto LABEL_10;
        }

LABEL_23:
        v31 = (a1 & 0x3F) << 8;
        v32 = (a1 >> 6) + v31 + 33217;
        v33 = (v31 | (a1 >> 6) & 0x3F) << 8;
        v34 = (a1 >> 18) + ((v33 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v35 = (a1 >> 12) + v33 + 8487393;
        if (v16)
        {
          v18 = v34;
        }

        else
        {
          v18 = v35;
        }

        if (a1 < 0x800)
        {
          v18 = v32;
        }

        goto LABEL_9;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_10:
  v39 = sub_1DDA14BB0();
  v40 = v19;
  (*(v13 + 16))(v17, v3 + OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposter, v12);
  sub_1DDA14750();
  v20 = sub_1DDA14780();
  v21 = sub_1DDA14F30();
  result = sub_1DDA14F40();
  if ((result & 1) == 0)
  {
LABEL_19:

    v25 = v42;
    (*(v42 + 16))(v41, v11, v6);
    sub_1DDA147D0();
    swift_allocObject();
    v26 = sub_1DDA147C0();
    v27 = v25;
    v28 = v26;
    (*(v27 + 8))(v11, v6);
    (*(v13 + 8))(v17, v12);
    v29 = OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposts;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v3 + v29);
    *(v3 + v29) = 0x8000000000000000;
    sub_1DD9CB6A0(v28, v39, v40, isUniquelyReferenced_nonNull_native);

    *(v3 + v29) = v44;
    swift_endAccess();
  }

  v37 = v12;
  if ((v38 & 1) == 0)
  {
    if (a1)
    {
      v22 = v6;
LABEL_18:
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1DDA14740();
      _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v20, v21, v24, a1, "", v23, 2u);
      MEMORY[0x1E12B8CE0](v23, -1, -1);
      v6 = v22;
      v12 = v37;
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (a1 >> 32)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      v22 = v6;
      a1 = &v43;
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1DD9ADA8C(const char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v7 = sub_1DDA147A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DDA14760();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DDA14790();
  v14 = *(v13 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v44 - v17;
  v51 = a3;
  v54 = v7;
  v55 = v11;
  v53 = v8;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      v8 = result;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_29;
  }

  v17 = a1 >> 32;
  if (a1 >> 32)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v39 = (a1 & 0x3F) << 8;
    v40 = (a1 >> 6) + v39 + 33217;
    v41 = (v39 | (a1 >> 6) & 0x3F) << 8;
    v42 = (a1 >> 18) + ((v41 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
    v43 = (a1 >> 12) + v41 + 8487393;
    if (v17)
    {
      v19 = v42;
    }

    else
    {
      v19 = v43;
    }

    if (a1 < 0x800)
    {
      v19 = v40;
    }

    goto LABEL_9;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = a1 >> 16;
  if (a1 >> 16 > 0x10)
  {
    goto LABEL_30;
  }

  v8 = result;
  if (a1 > 0x7F)
  {
    goto LABEL_31;
  }

  v19 = a1 + 1;
LABEL_9:
  v58 = (v19 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v19) >> 3))));
LABEL_10:
  v20 = sub_1DDA14BB0();
  v22 = v21;
  v23 = OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposts;
  swift_beginAccess();
  v24 = *(v3 + v23);
  if (!*(v24 + 16))
  {
  }

  v25 = sub_1DD96AC38(v20, v22);
  if ((v26 & 1) == 0)
  {
LABEL_16:
  }

  v48 = v22;
  v49 = v20;
  v50 = v10;
  v27 = *(*(v24 + 56) + 8 * v25);

  v28 = v14;
  v29 = v27;
  (*(v28 + 16))(v18, v4 + OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposter, v8);
  v30 = sub_1DDA14780();
  v31 = v18;
  v32 = v56;
  sub_1DDA147B0();
  v47 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

  v44[1] = v4;
  v45 = v8;
  v46 = v29;
  if ((v51 & 1) == 0)
  {
    v34 = v53;
    v33 = v54;
    v35 = v52;
    if (!a1)
    {
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v34 = v53;
  v33 = v54;
  v35 = v52;
  if (a1 >> 32)
  {
    goto LABEL_38;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  a1 = &v57;
LABEL_22:

  sub_1DDA147E0();

  if ((*(v34 + 88))(v35, v33) == *MEMORY[0x1E69E93E8])
  {
    v36 = "[Error] Interval already ended";
  }

  else
  {
    (*(v34 + 8))(v35, v33);
    v36 = "";
  }

  v37 = swift_slowAlloc();
  *v37 = 0;
  v32 = v56;
  v38 = sub_1DDA14740();
  _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v30, v47, v38, a1, v36, v37, 2u);
  MEMORY[0x1E12B8CE0](v37, -1, -1);
  v8 = v45;
LABEL_26:

  (*(v55 + 8))(v32, v50);
  (*(v28 + 8))(v31, v8);
  swift_beginAccess();
  sub_1DD9C72B8(0, v49, v48);
  swift_endAccess();
}

uint64_t sub_1DD9ADFD4()
{

  v1 = OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposter;
  v2 = sub_1DDA14790();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DD9AE07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_1DDA13DF0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = sub_1DDA13E40();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9AE1F0, v5, 0);
}

uint64_t sub_1DD9AE218()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_1DDA14D60();
  v0[19] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[20] = v7;
  v0[21] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v5);
  v0[22] = sub_1DDA14D40();

  v8 = sub_1DDA14D30();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v2;
  v11 = sub_1DD983040(0, 0, v1, &unk_1DDA1B178, v9);
  v0[23] = v11;
  v12 = swift_task_alloc();
  v0[24] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
  *v12 = v0;
  v12[1] = sub_1DD9AE3B4;

  return MEMORY[0x1EEE6DA40](v0 + 2, v11, v13);
}

uint64_t sub_1DD9AE3B4()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD9AE4CC, 0, 0);
}

uint64_t sub_1DD9AE4CC()
{
  v1 = v0[8];
  v0[25] = v0[2];
  return MEMORY[0x1EEE6DFA0](sub_1DD9AE4F0, v1, 0);
}

uint64_t sub_1DD9AE4F0()
{
  v93 = v0;
  if (sub_1DDA14C50() & 1) != 0 || (sub_1DDA14C50())
  {
    v1 = *(v0 + 56);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v0 + 112);
      v4 = *(v0 + 80);
      v5 = *(v3 + 16);
      v3 += 16;
      v91 = v5;
      v86 = (*(v3 + 64) + 32) & ~*(v3 + 64);
      v6 = v1 + v86;
      v89 = *MEMORY[0x1E69DA7B8];
      v7 = (v4 + 8);
      v85 = (v3 - 8);
      v87 = (v3 + 16);
      v88 = (v4 + 104);
      v8 = MEMORY[0x1E69E7CC0];
      v90 = *(v3 + 56);
      do
      {
        v10 = *(v0 + 96);
        v11 = *(v0 + 88);
        v12 = *(v0 + 72);
        v91(*(v0 + 128), v6, *(v0 + 104));
        sub_1DDA13E00();
        (*v88)(v11, v89, v12);
        v13 = sub_1DDA13DE0();
        v14 = *v7;
        (*v7)(v11, v12);
        v14(v10, v12);
        if (v13)
        {
          v15 = *v87;
          (*v87)(*(v0 + 120), *(v0 + 128), *(v0 + 104));
          v92 = v8;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD9AF078(0, *(v8 + 16) + 1, 1);
            v8 = v92;
          }

          v17 = *(v8 + 16);
          v16 = *(v8 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1DD9AF078((v16 > 1), v17 + 1, 1);
            v8 = v92;
          }

          v18 = *(v0 + 120);
          v19 = *(v0 + 104);
          *(v8 + 16) = v17 + 1;
          v9 = v90;
          v15(v8 + v86 + v17 * v90, v18, v19);
        }

        else
        {
          (*v85)(*(v0 + 128), *(v0 + 104));
          v9 = v90;
        }

        v6 += v9;
        --v2;
      }

      while (v2);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v20 = *(v0 + 200);
    v21 = *(v8 + 16);

    v24 = *(v20 + 16);
    v23 = (v20 + 16);
    v22 = v24;
    v25 = v24 - v21;
    if (v24 > v21)
    {
      v26 = *(v0 + 200);
      v27 = v22 >= v25;
      v28 = v22 - v25;
      if (v27)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      sub_1DDA154B0();
      swift_unknownObjectRetain_n();
      v30 = swift_dynamicCastClass();
      if (!v30)
      {
        swift_unknownObjectRelease();
        v30 = MEMORY[0x1E69E7CC0];
      }

      v31 = *(v30 + 16);

      v32 = *(v0 + 200);
      if (v31 == v29)
      {
        v33 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v33)
        {
LABEL_24:
          v35 = *(v0 + 136);
          v34 = *(v0 + 144);
          v37 = *(v0 + 24);
          v36 = *(v0 + 32);
          (*(v0 + 160))(v35, 1, 1, *(v0 + 152));

          v38 = sub_1DDA14D30();
          v39 = swift_allocObject();
          v40 = MEMORY[0x1E69E85E0];
          v39[2] = v38;
          v39[3] = v40;
          v39[4] = v33;
          v39[5] = v37;
          v39[6] = v36;
          v39[7] = v34;
          sub_1DD982718(0, 0, v35, &unk_1DDA1B180, v39);

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v41 = sub_1DDA14810();
          __swift_project_value_buffer(v41, qword_1ECDA20E0);

          v42 = sub_1DDA147F0();
          v43 = sub_1DDA14EC0();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v92 = v45;
            *v44 = 134349314;
            *(v44 + 4) = v25;
            *(v44 + 12) = 2082;
            v46 = *(v33 + 16);
            if (v46)
            {
              v47 = (v33 + 16 + 16 * v46);
              v49 = *v47;
              v48 = v47[1];
            }

            else
            {
              v49 = 7104878;
              v48 = 0xE300000000000000;
            }

            v70 = sub_1DD93FA54(v49, v48, &v92);

            *(v44 + 14) = v70;
            _os_log_impl(&dword_1DD8F8000, v42, v43, "%{public}ld undo operations performed. Resolving previous candidate to %{public}s.", v44, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v45);
            MEMORY[0x1E12B8CE0](v45, -1, -1);
            MEMORY[0x1E12B8CE0](v44, -1, -1);
          }

          v71 = *(v33 + 16);
          if (v71)
          {
            v72 = (v33 + 16 + 16 * v71);
            v73 = *v72;
            v74 = v72[1];

            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v33 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1DD9B12E8(v32, v26 + 32, 0, (2 * v29) | 1);
        v33 = v84;
      }

      swift_unknownObjectRelease();
      goto LABEL_24;
    }

    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v50 = sub_1DDA14810();
    __swift_project_value_buffer(v50, qword_1ECDA20E0);

    v51 = sub_1DDA147F0();
    v52 = sub_1DDA14EC0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v92 = v54;
      *v53 = 136446210;
      if (*v23)
      {
        v55 = &v23[2 * *v23];
        v57 = *v55;
        v56 = v55[1];
      }

      else
      {
        v57 = 7104878;
        v56 = 0xE300000000000000;
      }

      v75 = sub_1DD93FA54(v57, v56, &v92);

      *(v53 + 4) = v75;
      _os_log_impl(&dword_1DD8F8000, v51, v52, "Resolving previous candidate to %{public}s.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1E12B8CE0](v54, -1, -1);
      MEMORY[0x1E12B8CE0](v53, -1, -1);
    }

    if (*v23)
    {
      v76 = &v23[2 * *v23];
LABEL_52:
      v73 = *v76;
      v74 = v76[1];

      goto LABEL_55;
    }
  }

  else
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v58 = sub_1DDA14810();
    __swift_project_value_buffer(v58, qword_1ECDA20E0);

    v59 = sub_1DDA147F0();
    v60 = sub_1DDA14EC0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(v0 + 200);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v92 = v63;
      *v62 = 136446210;
      v66 = *(v61 + 16);
      v65 = v61 + 16;
      v64 = v66;
      if (v66)
      {
        v67 = (v65 + 16 * v64);
        v69 = *v67;
        v68 = v67[1];
      }

      else
      {
        v69 = 7104878;
        v68 = 0xE300000000000000;
      }

      v77 = sub_1DD93FA54(v69, v68, &v92);

      *(v62 + 4) = v77;
      _os_log_impl(&dword_1DD8F8000, v59, v60, "Resolving previous candidate to %{public}s.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1E12B8CE0](v63, -1, -1);
      MEMORY[0x1E12B8CE0](v62, -1, -1);
    }

    v78 = *(v0 + 200);
    v81 = *(v78 + 16);
    v79 = v78 + 16;
    v80 = v81;
    if (v81)
    {
      v76 = (v79 + 16 * v80);
      goto LABEL_52;
    }
  }

LABEL_54:
  v73 = 0;
  v74 = 0;
LABEL_55:

  v82 = *(v0 + 8);

  return v82(v73, v74);
}

void *sub_1DD9AED88()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  sub_1DD9291B0(v0 + 216);
  sub_1DD926314(v0 + 296);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DD9AEDF0()
{
  sub_1DD9AED88();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for Session.ResponseInfo(uint64_t a1)
{
  result = qword_1ECD83638;
  if (!qword_1ECD83638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD9AEE94(uint64_t a1)
{
  result = sub_1DDA14790();
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

uint64_t sub_1DD9AEF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9B852C(a1, v4, v5, v6, v7, v8);
}

char *sub_1DD9AF014(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD9AF034(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF9FC(a1, a2, a3, *v3, &qword_1ECD837F0, &qword_1DDA1B3D8, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

void *sub_1DD9AF078(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF9FC(a1, a2, a3, *v3, &qword_1ECD82A20, &qword_1DDA16E40, MEMORY[0x1E69DA800]);
  *v3 = result;
  return result;
}

char *sub_1DD9AF0BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD9AF0DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF420(a1, a2, a3, *v3, &qword_1ECD83780, &qword_1DDA1B308, &qword_1ECD834A8, &qword_1DDA1A5C0);
  *v3 = result;
  return result;
}

void *sub_1DD9AF11C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF420(a1, a2, a3, *v3, &qword_1ECD83788, &qword_1DDA1B310, &qword_1ECD834A0, &qword_1DDA1A5B8);
  *v3 = result;
  return result;
}

char *sub_1DD9AF15C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD9AF17C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DD9AF19C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DD9AF1BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD9AF1DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD9AF9FC(a1, a2, a3, *v3, &qword_1ECD837C0, &qword_1DDA1B398, MEMORY[0x1E69C6178]);
  *v3 = result;
  return result;
}

char *sub_1DD9AF220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83880, &qword_1DDA1B4F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1DD9AF314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A68, &qword_1DDA16E78);
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

void *sub_1DD9AF420(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1DD9AF568(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83790, &qword_1DDA1B318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DD9AF684(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836C0, &qword_1DDA1B258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83620, &qword_1DDA1AFA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD9AF7B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83878, &qword_1DDA1B4F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD9AF8E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83870, &qword_1DDA1B4E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DD9AF9FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1DD9AFBD8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DDA15570();
  sub_1DDA14BC0();
  v8 = sub_1DDA155B0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DDA15440() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DD9B05D0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DD9AFD28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DDA14180();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
  v33 = a2;
  v11 = sub_1DDA14AC0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1DD9B48D0(&qword_1ECD837D8, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6190]);
      v21 = sub_1DDA14AF0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1DD9B0750(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1DD9B0010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E8, &qword_1DDA1B3D0);
  result = sub_1DDA15040();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DD9B0270(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DDA14180();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E0, &qword_1DDA1B3C8);
  result = sub_1DDA15040();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
      result = sub_1DDA14AC0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1DD9B05D0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DD9B0010(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DD9B09FC();
      goto LABEL_16;
    }

    sub_1DD9B0D90(v8 + 1);
  }

  v10 = *v4;
  sub_1DDA15570();
  sub_1DDA14BC0();
  result = sub_1DDA155B0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DDA15440();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DDA154F0();
  __break(1u);
  return result;
}

uint64_t sub_1DD9B0750(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1DDA14180();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DD9B0270(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1DD9B0B58();
      goto LABEL_12;
    }

    sub_1DD9B0FC8(v10 + 1);
  }

  v12 = *v3;
  sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
  v13 = sub_1DDA14AC0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1DD9B48D0(&qword_1ECD837D8, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6190]);
      v21 = sub_1DDA14AF0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DDA154F0();
  __break(1u);
  return result;
}

void *sub_1DD9B09FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E8, &qword_1DDA1B3D0);
  v2 = *v0;
  v3 = sub_1DDA15030();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DD9B0B58()
{
  v1 = v0;
  v2 = sub_1DDA14180();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E0, &qword_1DDA1B3C8);
  v6 = *v0;
  v7 = sub_1DDA15030();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1DD9B0D90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E8, &qword_1DDA1B3D0);
  result = sub_1DDA15040();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1DDA15570();

      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD9B0FC8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DDA14180();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E0, &qword_1DDA1B3C8);
  v7 = sub_1DDA15040();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
      result = sub_1DDA14AC0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void sub_1DD9B12E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A68, &qword_1DDA16E78);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1DD9B13C0(uint64_t a1)
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
  v10[1] = sub_1DD92BD10;

  return sub_1DD9B776C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DD9B1494(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD947EA0(a1, v4);
}

uint64_t sub_1DD9B154C(uint64_t a1, uint64_t a2)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1DDA14180();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v48 - v9;
  MEMORY[0x1EEE9AC00](v8);
  i = v48 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = (a2 + 56);
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
    v18 = sub_1DDA14AC0();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, *(v58 + 48) + v20 * v59, v4);
    sub_1DD9B48D0(&qword_1ECD837D8, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6190]);
    v24 = sub_1DDA14AF0();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    MEMORY[0x1EEE9AC00](v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_1DD9B2010(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = sub_1DDA14AC0();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, *(v58 + 48) + v20 * v59, v4);
      v38 = sub_1DDA14AF0();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, *(v58 + 48) + v20 * v59, v4);
          v40 = sub_1DDA14AF0();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_1DD9B1C14(v47, v48[0], v58, v20, v62);

  MEMORY[0x1E12B8CE0](v47, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_1DD9B1C14(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_1DDA14180();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v35 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_1DD9B2010(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
    v25 = sub_1DDA14AC0();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_1DD9B48D0(&qword_1ECD837D8, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6190]);
      v32 = sub_1DDA14AF0();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return MEMORY[0x1E69E7CD0];
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DD9B2010(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1DDA14180();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E0, &qword_1DDA1B3C8);
  result = sub_1DDA15050();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
    result = sub_1DDA14AC0();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DD9B233C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1DD9B2384(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1DD9B2478;

  return v5(v2 + 16);
}

uint64_t sub_1DD9B2478()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DD9B25A8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1DD9B4FD8;

  return v5(v2 + 16);
}

uint64_t sub_1DD9B269C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD9B25A8(a1, v4);
}

uint64_t sub_1DD9B2754(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD9165BC;

  return sub_1DD98B7AC(a1, v6, v7, a3);
}

unint64_t sub_1DD9B2808()
{
  result = qword_1ECD83660;
  if (!qword_1ECD83660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83660);
  }

  return result;
}

uint64_t sub_1DD9B28CC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for Instrumentation(0) - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = *(v2 + 16);
  v15 = *(v2 + v11);
  v16 = *(v2 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v4 + 16) = v17;
  *v17 = v4;
  v17[1] = sub_1DD92BD10;

  return sub_1DD9A3424(a1, a2, v14, v2 + v7, v2 + v10, v15, v2 + v13, v16);
}

uint64_t sub_1DD9B2AFC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83648, &qword_1DDA1B1B8) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD98FE60(a1, v6, v1 + v5);
}

uint64_t sub_1DD9B2BEC(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD92BD10;

  return sub_1DD9A32B8(a1, v1);
}

uint64_t sub_1DD9B2D50(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD9B2D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DD92BD10;

  return sub_1DD9B7D54(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD9B2E6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD9B2EF0(uint64_t a1)
{
  v2 = sub_1DDA14180();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
  result = MEMORY[0x1E12B7D10](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1DD9AFD28(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1DD9B30AC(uint64_t a1)
{
  v11 = v1[3];
  v12 = v1[2];
  v9 = v1[5];
  v10 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9B5C58(a1, v12, v11, v10, v9, v4, v5, v6);
}

unint64_t sub_1DD9B31DC()
{
  result = qword_1ECD836E0;
  if (!qword_1ECD836E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD836E0);
  }

  return result;
}

uint64_t sub_1DD9B3230(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DD9165BC;

  return sub_1DD9B2754(a1, a2, v2 + 16);
}

uint64_t sub_1DD9B32E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD9165BC;

  return sub_1DD98BBB4(a1, v1);
}

uint64_t sub_1DD9B3384(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1DD9B3394(a1, a2);
  }

  return a1;
}

uint64_t sub_1DD9B3394(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DD9B33A8(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1DD9B33B8(a1, a2);
  }

  return a1;
}

uint64_t sub_1DD9B33B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void sub_1DD9B33CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_1DD9B3410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_1DD9B3454@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD989844(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v9);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    result = *v9;
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v10;
  }

  return result;
}

uint64_t sub_1DD9B34B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD947CB0(a1, v4);
}

uint64_t sub_1DD9B356C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9BB8B0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1DD9B3634()
{
  result = qword_1ECD837B0;
  if (!qword_1ECD837B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD837B0);
  }

  return result;
}

uint64_t sub_1DD9B3688(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DDA14180() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DD92BD10;

  return sub_1DD9BA694(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1DD9B37CC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DD92BD10;

  return sub_1DD99DAD0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1DD9B3894(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9B9020(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD9B395C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD9B2384(a1, v4);
}

uint64_t sub_1DD9B3A14(uint64_t a1)
{
  v4 = *(sub_1DDA14180() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DD92BD10;

  return sub_1DD99EE60(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1DD9B3B20(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DD92BD10;

  return sub_1DD9924B0(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD9B3C20(uint64_t a1)
{
  v3 = *(sub_1DDA134E0() - 8);
  v14 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v12 = v1[3];
  v13 = v1[2];
  v10 = *(v1 + v4);
  v11 = v1[4];
  v7 = *(v1 + v5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD92BD10;

  return sub_1DD993834(a1, v13, v12, v11, v1 + v14, v10, v7, v1 + v6);
}

uint64_t sub_1DD9B3E64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD947EA0(a1, v4);
}

uint64_t sub_1DD9B3F1C(uint64_t a1)
{
  sub_1DDA134E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v9 = v1[3];
  v10 = v1[2];
  v8 = v1[4];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD9995D8(a1, v10, v9, v8, (v1 + 5), v3, v4, v5);
}

uint64_t sub_1DD9B412C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1DD9B4144(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1DD9B4144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

uint64_t sub_1DD9B41AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (result)
  {

    return a4(a3);
  }

  return result;
}

uint64_t sub_1DD9B4200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD99CF0C(a1, v4, v5, v6);
}

uint64_t sub_1DD9B42C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DDA14180() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DD92BD10;

  return sub_1DD9B9A88(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1DD9B4408(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD92BD10;

  return sub_1DD99CBCC(a1, v1);
}

void sub_1DD9B44A0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(sub_1DDA134E0() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = *(v9 + 64);
  v13 = (v12 + v10 + v11) & ~v10;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488) - 8);
  v15 = (v13 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1DD98F464(a1, a2, a3, a4, v4 + v11, v4 + v13, v4 + v15, v16);
}

unint64_t sub_1DD9B45E4()
{
  result = qword_1ECD83828;
  if (!qword_1ECD83828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD83828);
  }

  return result;
}

unint64_t sub_1DD9B4630()
{
  result = qword_1ECD83830;
  if (!qword_1ECD83830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83830);
  }

  return result;
}

unint64_t sub_1DD9B4684()
{
  result = qword_1ECD83840;
  if (!qword_1ECD83840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83840);
  }

  return result;
}

unint64_t sub_1DD9B4734()
{
  result = qword_1ECD83848;
  if (!qword_1ECD83848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83848);
  }

  return result;
}

uint64_t objectdestroy_227Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD9B481C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9994CC(a1, v4, v5, v6);
}

uint64_t sub_1DD9B48D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DD9B4918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD9B4978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_103Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t objectdestroy_223Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DDA134E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DD9B4B9C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DDA134E0() - 8);
  return sub_1DD99CDB8(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_1DD9B4C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_141Tm()
{
  v1 = sub_1DDA14180();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DD9B4DE0(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD92BD10;

  return sub_1DD9994AC(a1, v1);
}

uint64_t sub_1DD9B4E78(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8);
  sub_1DDA134E0();

  return sub_1DD98CDE0(a1, a2, a3, a4);
}

void *sub_1DD9B4FE0()
{
  type metadata accessor for SessionRegistry();
  swift_allocObject();
  result = sub_1DD9B5038(0xD000000000000011, 0x80000001DDA28CC0, 0);
  qword_1ECDA2158 = result;
  return result;
}

void *sub_1DD9B5038(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v72) = a3;
  v74[2] = *MEMORY[0x1E69E9840];
  v7 = *v4;
  v65 = v4;
  v59 = v7;
  v8 = sub_1DDA149E0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DDA14A00();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DDA13420();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DDA134E0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v62 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v58 - v24;
  sub_1DDA13480();
  v74[0] = a1;
  v74[1] = a2;
  v63 = a2;

  MEMORY[0x1E12B7AB0](0x6574696C71732ELL, 0xE700000000000000);
  (*(v14 + 104))(v16, *MEMORY[0x1E6968F70], v13);
  sub_1DD9313D4();
  sub_1DDA134D0();
  (*(v14 + 8))(v16, v13);
  v26 = v17;

  v66 = *(v18 + 8);
  v67 = v18 + 8;
  v66(v23, v17);
  v68 = v12;
  v69 = v25;
  v64 = v17;
  if (v72)
  {
    sub_1DDA149F0();
  }

  else
  {
    v27 = *(v18 + 16);
    v27(v23, v25, v26);
    sub_1DDA149D0();
    sub_1DDA14A10();
    if (qword_1ECD827C8 != -1)
    {
      swift_once();
    }

    v28 = sub_1DDA14810();
    __swift_project_value_buffer(v28, qword_1ECDA2140);
    v29 = v62;
    v27(v62, v25, v26);
    v30 = sub_1DDA147F0();
    v31 = sub_1DDA14F00();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v74[0] = v33;
      *v32 = 136315138;
      sub_1DD9BFAA8(&qword_1ECD82CE8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v34 = sub_1DDA15400();
      v36 = v35;
      v66(v29, v26);
      v37 = sub_1DD93FA54(v34, v36, v74);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1DD8F8000, v30, v31, "Database url: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E12B8CE0](v33, -1, -1);
      MEMORY[0x1E12B8CE0](v32, -1, -1);
    }

    else
    {

      v66(v29, v26);
    }

    v12 = v68;
  }

  v38 = sub_1DDA14930();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD839C8, &qword_1DDA1B9C8);
  v39 = swift_allocObject();
  v72 = xmmword_1DDA16320;
  *(v39 + 16) = xmmword_1DDA16320;
  v40 = type metadata accessor for Entry(0);
  v41 = sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  v60 = v40;
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD839D0, &unk_1DDA1B9D0);
  v42 = swift_allocObject();
  *(v42 + 16) = v72;
  v43 = v71;
  *(v42 + 56) = v71;
  *(v42 + 64) = sub_1DD9BFAA8(&qword_1ECD839D8, MEMORY[0x1E697BC88], MEMORY[0x1E697BC80]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v42 + 32));
  (*(v70 + 16))(boxed_opaque_existential_1, v12, v43);
  v62 = v38;
  v45 = sub_1DDA14920();

  v46 = v65;
  v65[2] = v45;
  sub_1DDA14900();
  swift_allocObject();

  v46[3] = sub_1DDA14910();
  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v47 = sub_1DDA14810();
  __swift_project_value_buffer(v47, qword_1ECDA2140);
  v48 = sub_1DDA147F0();
  v49 = sub_1DDA14F00();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v71;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v74[0] = v53;
    *v52 = 136315138;
    v73 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD839E0, &qword_1DDA1B9E0);
    v54 = sub_1DDA14B70();
    v56 = sub_1DD93FA54(v54, v55, v74);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_1DD8F8000, v48, v49, "%s database ready!", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1E12B8CE0](v53, -1, -1);
    MEMORY[0x1E12B8CE0](v52, -1, -1);
  }

  (*(v70 + 8))(v68, v51);
  v66(v69, v64);
  return v46;
}

uint64_t sub_1DD9B5C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 217) = v19;
  *(v8 + 480) = v17;
  *(v8 + 488) = v18;
  *(v8 + 448) = v15;
  *(v8 + 464) = v16;
  *(v8 + 432) = v14;
  *(v8 + 416) = a7;
  *(v8 + 424) = a8;
  *(v8 + 400) = a5;
  *(v8 + 408) = a6;
  *(v8 + 392) = a4;
  v9 = sub_1DDA13680();
  *(v8 + 496) = v9;
  *(v8 + 504) = *(v9 - 8);
  *(v8 + 512) = swift_task_alloc();
  sub_1DDA14D40();
  *(v8 + 520) = sub_1DDA14D30();
  v11 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B5D78, v11, v10);
}

uint64_t sub_1DD9B5D78()
{
  v114 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA2140);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v107 = *(v0 + 432);
    v5 = *(v0 + 416);
    v4 = *(v0 + 424);
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    v8 = *(v0 + 392);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v113[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1DD93FA54(v8, v6, v113);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1DD93FA54(v7, v5, v113);
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_1DD93FA54(v4, v107, v113);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Registering localID:%s and remoteID:%s for groupID:%s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v10, -1, -1);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
  }

  v11 = sub_1DD9B7394(*(v0 + 424), *(v0 + 432));
  if (v11)
  {

    v12 = sub_1DDA147F0();
    v13 = sub_1DDA14F00();

    if (os_log_type_enabled(v12, v13))
    {
      v103 = *(v0 + 217);
      v101 = *(v0 + 488);
      v91 = *(v0 + 472);
      v95 = *(v0 + 480);
      v84 = *(v0 + 416);
      v87 = *(v0 + 464);
      v77 = *(v0 + 400);
      v81 = *(v0 + 408);
      v74 = *(v0 + 392);
      v14 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v113[0] = v108;
      *v14 = 136316674;
      *(v0 + 360) = v11;
      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
      sub_1DDA149B0();

      v15 = sub_1DD93FA54(*(v0 + 176), *(v0 + 184), v113);

      *(v14 + 4) = v15;
      *(v14 + 12) = 2080;
      *(v0 + 368) = v11;
      swift_getKeyPath();
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DDA149B0();

      v16 = sub_1DD93FA54(*(v0 + 80), *(v0 + 88), v113);

      *(v14 + 14) = v16;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_1DD93FA54(v74, v77, v113);
      *(v14 + 32) = 2080;
      *(v14 + 34) = sub_1DD93FA54(v81, v84, v113);
      *(v14 + 42) = 2080;
      *(v0 + 64) = v87;
      *(v0 + 72) = v91;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
      v17 = sub_1DDA14B70();
      v19 = sub_1DD93FA54(v17, v18, v113);

      *(v14 + 44) = v19;
      *(v14 + 52) = 2080;
      *(v0 + 228) = v95;
      *(v0 + 232) = BYTE4(v95) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FB0, &qword_1DDA18980);
      v20 = sub_1DDA14B70();
      v22 = sub_1DD93FA54(v20, v21, v113);

      *(v14 + 54) = v22;
      *(v14 + 62) = 2080;
      *(v0 + 208) = v101;
      *(v0 + 216) = v103 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83770, &qword_1DDA1B920);
      v23 = sub_1DDA14B70();
      v25 = sub_1DD93FA54(v23, v24, v113);

      *(v14 + 64) = v25;
      _os_log_impl(&dword_1DD8F8000, v12, v13, "Updating existing entry groupID:%s userID:%s, localID:%s, remoteID:%s, credentialsID:%s, auditID:%s, timeToLive:%s", v14, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v108, -1, -1);
      MEMORY[0x1E12B8CE0](v14, -1, -1);
    }

    v102 = *(v0 + 512);
    v105 = *(v0 + 504);
    loga = *(v0 + 217);
    v110 = *(v0 + 496);
    v93 = *(v0 + 480);
    v97 = *(v0 + 488);
    v86 = *(v0 + 464);
    v89 = *(v0 + 472);
    v75 = *(v0 + 456);
    v38 = *(v0 + 448);
    v79 = *(v0 + 408);
    v83 = *(v0 + 416);
    v40 = *(v0 + 392);
    v39 = *(v0 + 400);
    *(v0 + 304) = v11;
    swift_getKeyPath();
    v41 = swift_task_alloc();
    v41[2] = v11;
    v41[3] = v40;
    v41[4] = v39;
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
    sub_1DDA13770();

    *(v0 + 312) = v11;
    swift_getKeyPath();
    v42 = swift_task_alloc();
    v42[2] = v11;
    v42[3] = v38;
    v42[4] = v75;
    sub_1DDA13770();

    *(v0 + 320) = v11;
    swift_getKeyPath();
    v43 = swift_task_alloc();
    v43[2] = v11;
    v43[3] = v79;
    v43[4] = v83;
    sub_1DDA13770();

    *(v0 + 328) = v11;
    swift_getKeyPath();
    v44 = swift_task_alloc();
    v44[2] = v11;
    v44[3] = v86;
    v44[4] = v89;
    sub_1DDA13770();

    *(v0 + 336) = v11;
    swift_getKeyPath();
    v45 = swift_task_alloc();
    *(v45 + 16) = v11;
    *(v45 + 24) = v93;
    *(v45 + 28) = BYTE4(v93) & 1;
    sub_1DDA13770();

    *(v0 + 344) = v11;
    swift_getKeyPath();
    v46 = swift_task_alloc();
    *(v46 + 16) = v11;
    *(v46 + 24) = v97;
    *(v46 + 32) = loga & 1;
    sub_1DDA13770();

    sub_1DDA13670();
    *(v0 + 352) = v11;
    swift_getKeyPath();
    v47 = swift_task_alloc();
    *(v47 + 16) = v11;
    *(v47 + 24) = v102;
    sub_1DDA13770();

    (*(v105 + 8))(v102, v110);
    sub_1DDA148C0();
  }

  else
  {

    v26 = sub_1DDA147F0();
    v27 = sub_1DDA14F00();

    if (os_log_type_enabled(v26, v27))
    {
      v29 = *(v0 + 424);
      v28 = *(v0 + 432);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v113[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1DD93FA54(v29, v28, v113);
      _os_log_impl(&dword_1DD8F8000, v26, v27, "Creating a new entry because no existing one was found for groupID:%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12B8CE0](v31, -1, -1);
      MEMORY[0x1E12B8CE0](v30, -1, -1);
    }

    v88 = *(v0 + 512);
    v109 = *(v0 + 504);
    log = *(v0 + 217);
    v92 = *(v0 + 496);
    v96 = *(v0 + 488);
    v85 = *(v0 + 472);
    v78 = *(v0 + 480);
    v82 = *(v0 + 464);
    v70 = *(v0 + 448);
    v71 = *(v0 + 456);
    v66 = *(v0 + 424);
    v67 = *(v0 + 432);
    v72 = *(v0 + 408);
    v73 = *(v0 + 416);
    v68 = *(v0 + 392);
    v69 = *(v0 + 400);
    v32 = type metadata accessor for Entry(0);
    v33 = swift_allocObject();
    *(v33 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83948, &qword_1DDA1B938);
    v34 = sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    *(v0 + 16) = v32;
    *(v0 + 24) = v32;
    *(v0 + 32) = v34;
    *(v0 + 40) = v34;
    *(v33 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v33 + 24));
    sub_1DDA14970();
    *(v33 + 16) = 257;
    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    v35 = MEMORY[0x1E69E7CC0];
    *(v0 + 384) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD9C03AC();
    sub_1DDA148B0();

    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 376) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83908, &qword_1DDA1B928);
    sub_1DD9C02F4(&qword_1ECD83900, &qword_1ECD83910, &unk_1DDA1BAC4, MEMORY[0x1E69E6300]);
    sub_1DDA148B0();

    *(v33 + 18) = 1;
    sub_1DDA13790();
    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 96) = v66;
    *(v0 + 104) = v67;
    sub_1DDA148B0();

    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 112) = v68;
    *(v0 + 120) = v69;
    sub_1DDA148B0();

    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 128) = v70;
    *(v0 + 136) = v71;
    sub_1DDA148B0();

    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 144) = v72;
    *(v0 + 152) = v73;
    sub_1DDA148B0();

    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 160) = v82;
    *(v0 + 168) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
    sub_1DD9C05D4();
    sub_1DDA148B0();

    *(v33 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 220) = v78;
    *(v0 + 224) = BYTE4(v78) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FB0, &qword_1DDA18980);
    sub_1DD9C04BC();
    sub_1DDA148B0();

    *(v33 + 17) = 0;
    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    v36 = MEMORY[0x1E69E7CC0];
    *(v0 + 296) = MEMORY[0x1E69E7CC0];
    sub_1DDA148B0();

    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 288) = v36;
    sub_1DDA148B0();

    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    *(v0 + 248) = v96;
    *(v0 + 256) = log & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83770, &qword_1DDA1B920);
    sub_1DD9C01C0();
    sub_1DDA148B0();

    *(v33 + 18) = 0;
    sub_1DDA13670();
    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD829A0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DDA148B0();

    v37 = *(v109 + 8);
    v37(v88, v92);
    sub_1DDA13670();
    __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
    swift_getKeyPath();
    sub_1DDA148B0();

    v37(v88, v92);
    sub_1DDA148F0();
    sub_1DDA148C0();

    v50 = sub_1DDA147F0();
    v51 = sub_1DDA14F00();

    if (os_log_type_enabled(v50, v51))
    {
      v106 = *(v0 + 217);
      v104 = *(v0 + 488);
      v94 = *(v0 + 472);
      v98 = *(v0 + 480);
      v90 = *(v0 + 464);
      v112 = v51;
      v54 = *(v0 + 424);
      v53 = *(v0 + 432);
      v76 = *(v0 + 408);
      v80 = *(v0 + 416);
      v55 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v113[0] = v111;
      *v55 = 136316418;
      *(v55 + 4) = sub_1DD93FA54(v54, v53, v113);
      *(v55 + 12) = 2080;
      *(v0 + 280) = v33;
      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DDA149B0();

      v56 = sub_1DD93FA54(*(v0 + 48), *(v0 + 56), v113);

      *(v55 + 14) = v56;
      *(v55 + 22) = 2080;
      *(v55 + 24) = sub_1DD93FA54(v76, v80, v113);
      *(v55 + 32) = 2080;
      *(v0 + 192) = v90;
      *(v0 + 200) = v94;

      v57 = sub_1DDA14B70();
      v59 = sub_1DD93FA54(v57, v58, v113);

      *(v55 + 34) = v59;
      *(v55 + 42) = 2080;
      *(v0 + 236) = v98;
      *(v0 + 240) = BYTE4(v98) & 1;
      v60 = sub_1DDA14B70();
      v62 = sub_1DD93FA54(v60, v61, v113);

      *(v55 + 44) = v62;
      *(v55 + 52) = 2080;
      *(v0 + 264) = v104;
      *(v0 + 272) = v106 & 1;
      v63 = sub_1DDA14B70();
      v65 = sub_1DD93FA54(v63, v64, v113);

      *(v55 + 54) = v65;
      _os_log_impl(&dword_1DD8F8000, v50, v112, "Created entry with groupID:%s userID:%s, remoteID:%s, credentialsID:%s, auditID:%s, timeToLive:%s", v55, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v111, -1, -1);
      MEMORY[0x1E12B8CE0](v55, -1, -1);
    }

    else
    {
    }
  }

  v48 = *(v0 + 8);

  return v48();
}

unint64_t sub_1DD9B7394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83950, &qword_1DDA1B950);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83958, &qword_1DDA1B958);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-v11];
  v19 = a1;
  v20 = a2;
  v21 = type metadata accessor for Entry(0);
  sub_1DDA13760();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83960, &qword_1DDA1B960);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DDA14960();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83968, &qword_1DDA1B968);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DDA1B510;
  *(v14 + 32) = swift_getKeyPath();
  *(v14 + 40) = swift_getKeyPath();
  *(v14 + 48) = swift_getKeyPath();
  *(v14 + 56) = swift_getKeyPath();
  *(v14 + 64) = swift_getKeyPath();
  *(v14 + 72) = swift_getKeyPath();
  *(v14 + 80) = swift_getKeyPath();
  *(v14 + 88) = swift_getKeyPath();
  *(v14 + 96) = swift_getKeyPath();
  *(v14 + 104) = swift_getKeyPath();
  sub_1DDA14940();
  sub_1DDA14950();
  result = sub_1DDA148D0();
  if (v2)
  {
    goto LABEL_10;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    v3 = 0;
    goto LABEL_10;
  }

  v16 = result;
  v17 = sub_1DDA15190();
  result = v16;
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E12B7F50](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_7:

LABEL_10:
    (*(v10 + 8))(v12, v9);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD9B776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  sub_1DDA14D40();
  v7[7] = sub_1DDA14D30();
  v9 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B7808, v9, v8);
}

uint64_t sub_1DD9B7808()
{
  v25 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA2140);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x1E12B7B70](v6, MEMORY[0x1E69E6158]);
    v11 = sub_1DD93FA54(v9, v10, v24);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DD93FA54(v5, v4, v24);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Updating previousCandidateIDs to: %s for entry with groupID: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v12 = sub_1DD9B7394(v0[4], v0[5]);
  if (v12)
  {
    v15 = v0[3];
    v0[2] = v12;
    v16 = v12;
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
    sub_1DDA13770();

    sub_1DDA148C0();
  }

  else
  {

    v18 = sub_1DDA147F0();
    v19 = sub_1DDA14EE0();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[4];
      v20 = v0[5];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1DD93FA54(v21, v20, v24);
      _os_log_impl(&dword_1DD8F8000, v18, v19, "No entry found for groupID:%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12B8CE0](v23, -1, -1);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DD9B7D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  sub_1DDA14D40();
  v8[8] = sub_1DDA14D30();
  v10 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B7DF4, v10, v9);
}

uint64_t sub_1DD9B7DF4()
{
  v28 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA2140);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DD93FA54(v7, v6, v27);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1DD93FA54(v5, v4, v27);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Appending previousCandidateID: %s for entry with groupID: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  v10 = sub_1DD9B7394(v0[5], v0[6]);
  v13 = v10;
  if (v10)
  {
    v0[2] = v10;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);

    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    sub_1DD9C0428();
    sub_1DDA149B0();

    v14 = v0[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DD908634(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DD908634((v15 > 1), v16 + 1, 1, v14);
    }

    v18 = v0[3];
    v17 = v0[4];
    *(v14 + 2) = v16 + 1;
    v19 = &v14[16 * v16];
    *(v19 + 4) = v18;
    *(v19 + 5) = v17;
    v0[2] = v13;
    swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v13;
    *(v20 + 24) = v14;
    sub_1DDA13770();

    sub_1DDA148C0();
  }

  else
  {

    v21 = sub_1DDA147F0();
    v22 = sub_1DDA14EE0();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[5];
      v23 = v0[6];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1DD93FA54(v24, v23, v27);
      _os_log_impl(&dword_1DD8F8000, v21, v22, "No entry found for groupID:%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12B8CE0](v26, -1, -1);
      MEMORY[0x1E12B8CE0](v25, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DD9B8424()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C0428();
  sub_1DDA149B0();

  return v0;
}

uint64_t sub_1DD9B852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  sub_1DDA14D40();
  v6[7] = sub_1DDA14D30();
  v8 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B85C8, v8, v7);
}

uint64_t sub_1DD9B85C8()
{
  v19 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA2140);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DD93FA54(v5, v4, v18);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Fetching previous candidateIDs for groupID:%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v8 = sub_1DD9B7394(*(v0 + 32), *(v0 + 40));
  if (v8)
  {
    *(v0 + 16) = v8;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    sub_1DD9C0428();
    sub_1DDA149B0();

    v9 = *(v0 + 16);
  }

  else
  {

    v12 = sub_1DDA147F0();
    v13 = sub_1DDA14ED0();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 32);
      v14 = *(v0 + 40);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1DD93FA54(v15, v14, v18);
      _os_log_impl(&dword_1DD8F8000, v12, v13, "No entry found for groupID:%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
      MEMORY[0x1E12B8CE0](v16, -1, -1);
    }

    v9 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 24) = v9;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DD9B8A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1DDA13680();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_1DDA14D40();
  v6[9] = sub_1DDA14D30();
  v9 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B8B64, v9, v8);
}

uint64_t sub_1DD9B8B64()
{
  v23 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA2140);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14ED0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DD93FA54(v5, v4, v22);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Updating expiration for entry with groupID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v8 = sub_1DD9B7394(v0[3], v0[4]);
  if (v8)
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v8;
    sub_1DDA13670();
    v0[2] = v14;
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = v11;
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
    sub_1DDA13770();

    (*(v12 + 8))(v11, v13);
    sub_1DDA148C0();
  }

  else
  {

    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14ED0();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[3];
      v18 = v0[4];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DD93FA54(v19, v18, v22);
      _os_log_impl(&dword_1DD8F8000, v16, v17, "No entry exists for groupID:%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DD9B9020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  v7 = sub_1DDA134E0();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Entry.AttachedDocument(0);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_1DDA14180();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  sub_1DDA14D40();
  v6[17] = sub_1DDA14D30();
  v11 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B91D0, v11, v10);
}

uint64_t sub_1DD9B91D0()
{
  v44 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA2140);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14ED0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DD93FA54(v5, v4, v43);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Fetching attached documents for groupID:%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v8 = sub_1DD9B7394(*(v0 + 40), *(v0 + 48));
  if (v8)
  {
    *(v0 + 16) = v8;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920, &unk_1DDA1BA9C, MEMORY[0x1E69E6330]);
    sub_1DDA149B0();

    v9 = *(v0 + 24);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v0 + 120);
      v12 = *(v0 + 96);
      v41 = *(v0 + 88);
      v13 = *(v0 + 72);
      v43[0] = MEMORY[0x1E69E7CC0];
      sub_1DD9AF1DC(0, v10, 0);
      v14 = v43[0];
      v15 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v39 = (v13 + 16);
      v40 = *(v12 + 72);
      v42 = v11;
      do
      {
        v16 = *(v0 + 104);
        v17 = *(v0 + 80);
        v18 = *(v0 + 64);
        sub_1DD9C0ADC(v15, v16);
        (*v39)(v17, v16 + *(v41 + 20), v18);

        sub_1DDA14150();
        sub_1DD9C0A1C(v16);
        v43[0] = v14;
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DD9AF1DC((v19 > 1), v20 + 1, 1);
          v14 = v43[0];
        }

        v21 = *(v0 + 128);
        v22 = *(v0 + 112);
        *(v14 + 16) = v20 + 1;
        (*(v42 + 32))(v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v20, v21, v22);
        v15 += v40;
        --v10;
      }

      while (v10);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v29 = sub_1DDA147F0();
    v30 = sub_1DDA14ED0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 112);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43[0] = v33;
      *v32 = 136315138;
      v34 = MEMORY[0x1E12B7B70](v14, v31);
      v36 = sub_1DD93FA54(v34, v35, v43);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1DD8F8000, v29, v30, "Attached documents: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E12B8CE0](v33, -1, -1);
      MEMORY[0x1E12B8CE0](v32, -1, -1);
    }
  }

  else
  {

    v23 = sub_1DDA147F0();
    v24 = sub_1DDA14ED0();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 40);
      v25 = *(v0 + 48);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DD93FA54(v26, v25, v43);
      _os_log_impl(&dword_1DD8F8000, v23, v24, "No entry found for groupID:%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
      MEMORY[0x1E12B8CE0](v27, -1, -1);
    }

    v14 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 32) = v14;

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1DD9B9948()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920, &unk_1DDA1BA9C, MEMORY[0x1E69E6330]);
  sub_1DDA149B0();

  return v0;
}

uint64_t sub_1DD9B9A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for Entry.AttachedDocument(0);
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1DDA14180();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  sub_1DDA14D40();
  v7[20] = sub_1DDA14D30();
  v11 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B9C00, v11, v10);
}

uint64_t sub_1DD9B9C00()
{
  v74 = v0;

  if (qword_1ECD827C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[7];
  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA2140);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14ED0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  v11 = v0[15];
  v12 = v0[16];
  if (v9)
  {
    log = v0[8];
    v64 = v0[9];
    v13 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v73[0] = v70;
    *v13 = 136315394;
    v14 = sub_1DDA14160();
    v66 = v6;
    v16 = v15;
    v69 = *(v12 + 8);
    v69(v10, v11);
    v17 = sub_1DD93FA54(v14, v16, v73);
    v6 = v66;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1DD93FA54(log, v64, v73);
    _os_log_impl(&dword_1DD8F8000, v7, v8, "Attaching document:%s to groupID:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v70, -1, -1);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
  }

  else
  {

    v69 = *(v12 + 8);
    v69(v10, v11);
  }

  v18 = sub_1DD9B7394(v0[8], v0[9]);
  if (v18)
  {
    v67 = v6;
    v71 = v0[14];
    v19 = v0[12];
    v0[2] = v18;
    v20 = v18;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920, &unk_1DDA1BA9C, MEMORY[0x1E69E6330]);
    v65 = v20;
    sub_1DDA149B0();

    v21 = 0;
    v22 = v0[3];
    v23 = *(v22 + 16);
    while (v23 != v21)
    {
      if (v21 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v24 = v0[14];
      sub_1DD9C0ADC(v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v21, v24);
      v25 = *v24;
      v26 = *(v71 + 8);
      v27 = sub_1DDA14160();
      v29 = v0[14];
      if (v25 == v27 && v26 == v28)
      {

        sub_1DD9C0A1C(v29);
LABEL_28:
        v49 = v0[18];
        v50 = v0[15];
        v51 = v0[7];

        v67(v49, v51, v50);

        v52 = sub_1DDA147F0();
        v53 = sub_1DDA14EE0();

        v54 = os_log_type_enabled(v52, v53);
        v55 = v0[18];
        v56 = v0[15];
        if (v54)
        {
          v72 = v0[9];
          v68 = v0[8];
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v73[0] = v58;
          *v57 = 136315394;
          v59 = sub_1DDA14160();
          v61 = v60;
          v69(v55, v56);
          v62 = sub_1DD93FA54(v59, v61, v73);

          *(v57 + 4) = v62;
          *(v57 + 12) = 2080;
          *(v57 + 14) = sub_1DD93FA54(v68, v72, v73);
          _os_log_impl(&dword_1DD8F8000, v52, v53, "document:%s is already attached to groupID:%s", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12B8CE0](v58, -1, -1);
          MEMORY[0x1E12B8CE0](v57, -1, -1);
        }

        else
        {

          v69(v55, v56);
        }

        goto LABEL_17;
      }

      ++v21;
      v31 = sub_1DDA15440();

      sub_1DD9C0A1C(v29);
      if (v31)
      {
        goto LABEL_28;
      }
    }

    v40 = v0[13];

    v41 = sub_1DDA14160();
    v43 = v42;
    sub_1DDA14170();
    *v40 = v41;
    v40[1] = v43;
    v0[4] = v65;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DDA149B0();

    v44 = v0[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1DD9092D0(0, v44[2] + 1, 1, v44);
    }

    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1DD9092D0((v45 > 1), v46 + 1, 1, v44);
    }

    v47 = v0[13];
    v44[2] = v46 + 1;
    sub_1DD9C0A78(v47, v44 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v46);
    v0[6] = v65;
    swift_getKeyPath();
    v48 = swift_task_alloc();
    *(v48 + 16) = v65;
    *(v48 + 24) = v44;
    sub_1DDA13770();

    sub_1DDA148C0();
  }

  else
  {

    v34 = sub_1DDA147F0();
    v35 = sub_1DDA14EE0();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = v0[8];
      v36 = v0[9];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v73[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1DD93FA54(v37, v36, v73);
      _os_log_impl(&dword_1DD8F8000, v34, v35, "No entry found for groupID:%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E12B8CE0](v39, -1, -1);
      MEMORY[0x1E12B8CE0](v38, -1, -1);
    }
  }

LABEL_17:

  v32 = v0[1];

  return v32();
}

uint64_t sub_1DD9BA694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  type metadata accessor for Entry.AttachedDocument(0);
  v7[11] = swift_task_alloc();
  v8 = sub_1DDA14180();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  sub_1DDA14D40();
  v7[17] = sub_1DDA14D30();
  v10 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9BA7D0, v10, v9);
}

uint64_t sub_1DD9BA7D0()
{
  v55 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[7];
  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA2140);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14ED0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v11 = v0[12];
  v12 = v0[13];
  if (v9)
  {
    log = v0[8];
    v48 = v0[9];
    v13 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54[0] = v50;
    *v13 = 136315394;
    v14 = sub_1DDA14160();
    v51 = v6;
    v16 = v15;
    v53 = *(v12 + 8);
    v53(v10, v11);
    v17 = sub_1DD93FA54(v14, v16, v54);
    v6 = v51;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1DD93FA54(log, v48, v54);
    _os_log_impl(&dword_1DD8F8000, v7, v8, "Removing document:%s from groupID:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v50, -1, -1);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
  }

  else
  {

    v53 = *(v12 + 8);
    v53(v10, v11);
  }

  v18 = sub_1DD9B7394(v0[8], v0[9]);
  if (v18)
  {
    v19 = v0[7];
    v0[2] = v18;
    v20 = v18;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920, &unk_1DDA1BA9C, MEMORY[0x1E69E6330]);
    sub_1DDA149B0();

    v21 = v0[3];
    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1DD9BB1D8(sub_1DD9C09FC, v22, v21);
    LOBYTE(v19) = v24;

    if (v19)
    {
      v6(v0[15], v0[7], v0[12]);

      v25 = sub_1DDA147F0();
      v26 = sub_1DDA14EE0();

      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[15];
      v29 = v0[12];
      if (v27)
      {
        v52 = v0[9];
        v49 = v0[8];
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v54[0] = v31;
        *v30 = 136315394;
        v32 = sub_1DDA14160();
        v34 = v33;
        v53(v28, v29);
        v35 = sub_1DD93FA54(v32, v34, v54);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_1DD93FA54(v49, v52, v54);
        _os_log_impl(&dword_1DD8F8000, v25, v26, "documentIdentifier:%s is not attached to groupID:%s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12B8CE0](v31, -1, -1);
        MEMORY[0x1E12B8CE0](v30, -1, -1);
      }

      else
      {

        v53(v28, v29);
      }
    }

    else
    {
      v44 = v0[11];
      v0[4] = v20;
      swift_getKeyPath();
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DDA149B0();

      v54[0] = v0[5];
      sub_1DD9BB2C4(v23, v44);
      sub_1DD9C0A1C(v44);
      v45 = v54[0];
      v0[6] = v20;
      swift_getKeyPath();
      v46 = swift_task_alloc();
      *(v46 + 16) = v20;
      *(v46 + 24) = v45;
      sub_1DDA13770();

      sub_1DDA148C0();
    }
  }

  else
  {

    v38 = sub_1DDA147F0();
    v39 = sub_1DDA14EE0();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = v0[8];
      v40 = v0[9];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1DD93FA54(v41, v40, v54);
      _os_log_impl(&dword_1DD8F8000, v38, v39, "No entry found for groupID:%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1E12B8CE0](v43, -1, -1);
      MEMORY[0x1E12B8CE0](v42, -1, -1);
    }
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1DD9BB160(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_1DDA14160() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DDA15440();
  }

  return v5 & 1;
}

uint64_t sub_1DD9BB1D8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Entry.AttachedDocument(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1DD9BB2C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DD9C4D00(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Entry.AttachedDocument(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1DD9C0A78(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD9BB3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1DDA14D40();
  v6[5] = sub_1DDA14D30();
  v8 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9BB480, v8, v7);
}

uint64_t sub_1DD9BB480()
{
  v17 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA2140);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DD93FA54(v5, v4, v16);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Deleting entry for groupID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  if (sub_1DD9B7394(v0[2], v0[3]))
  {
    type metadata accessor for Entry(0);
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    sub_1DDA148E0();
    sub_1DDA148C0();
  }

  else
  {

    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[2];
      v12 = v0[3];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1DD93FA54(v13, v12, v16);
      _os_log_impl(&dword_1DD8F8000, v10, v11, "No entry to delete for groupID: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12B8CE0](v15, -1, -1);
      MEMORY[0x1E12B8CE0](v14, -1, -1);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DD9BB8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a4;
  v7 = sub_1DDA13680();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v6[33] = swift_task_alloc();
  sub_1DDA14D40();
  v6[34] = sub_1DDA14D30();
  v9 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9BB9E0, v9, v8);
}

uint64_t sub_1DD9BB9E0()
{
  v46 = v0;

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA2140);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DD93FA54(0xD000000000000011, 0x80000001DDA28CA0, v45);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1DD93FA54(v5, v4, v45);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "%s groupID:%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v8 = sub_1DD9B7394(*(v0 + 216), *(v0 + 224));
  v9 = v8;
  if (v8)
  {

    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14F00();

    if (os_log_type_enabled(v10, v11))
    {
      v41 = v11;
      v12 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45[0] = v43;
      *v12 = 136315394;
      *(v0 + 192) = v9;
      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
      sub_1DDA149B0();

      v13 = sub_1DD93FA54(*(v0 + 80), *(v0 + 88), v45);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      *(v0 + 200) = v9;
      swift_getKeyPath();
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DDA149B0();

      v14 = sub_1DD93FA54(*(v0 + 96), *(v0 + 104), v45);

      *(v12 + 14) = v14;
      _os_log_impl(&dword_1DD8F8000, v10, v41, "Found entry with remoteID:%s userID:%s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v43, -1, -1);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    *(v0 + 136) = v9;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    sub_1DDA149B0();

    v15 = *(v0 + 16);
    v44 = *(v0 + 24);
    *(v0 + 144) = v9;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DDA149B0();

    v40 = *(v0 + 40);
    v42 = *(v0 + 32);
    *(v0 + 152) = v9;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DDA149B0();

    v16 = *(v0 + 48);
    v39 = *(v0 + 56);
    *(v0 + 160) = v9;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9C0650();
    sub_1DDA149B0();

    v37 = *(v0 + 72);
    v38 = *(v0 + 64);
    *(v0 + 168) = v9;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9C0538();
    sub_1DDA149B0();

    v35 = *(v0 + 128);
    v36 = *(v0 + 124);
    *(v0 + 176) = v9;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9C023C();
    sub_1DDA149B0();

    if (*(v0 + 120))
    {

      v17 = 1;
    }

    else
    {
      v26 = *(v0 + 256);
      v34 = v16;
      v27 = *(v0 + 248);
      v33 = *(v0 + 240);
      *(v0 + 184) = v9;
      swift_getKeyPath();
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
      sub_1DDA149B0();

      sub_1DDA135F0();

      (*(v27 + 8))(v26, v33);
      v16 = v34;
      v17 = 0;
    }

    v28 = *(v0 + 264);
    v29 = *(v0 + 208);
    (*(*(v0 + 248) + 56))(v28, v17, 1, *(v0 + 240));
    *v29 = v15;
    *(v29 + 8) = v44;
    *(v29 + 16) = v42;
    *(v29 + 24) = v40;
    *(v29 + 32) = v16;
    *(v29 + 40) = v39;
    *(v29 + 48) = v38;
    *(v29 + 56) = v37;
    *(v29 + 64) = v36;
    *(v29 + 68) = v35;
    v30 = type metadata accessor for SessionRegistry.SessionInfo(0);
    sub_1DD9C098C(v28, v29 + *(v30 + 36));
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }

  else
  {

    v20 = sub_1DDA147F0();
    v21 = sub_1DDA14F00();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 216);
      v22 = *(v0 + 224);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DD93FA54(v23, v22, v45);
      _os_log_impl(&dword_1DD8F8000, v20, v21, "No registry entry for groupID:%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12B8CE0](v25, -1, -1);
      MEMORY[0x1E12B8CE0](v24, -1, -1);
    }

    v18 = *(v0 + 208);
    v19 = type metadata accessor for SessionRegistry.SessionInfo(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1DD9BC514(uint64_t a1)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DDA149B0();

  return v1;
}

uint64_t sub_1DD9BC610()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C0650();
  sub_1DDA149B0();

  return v0;
}

unint64_t sub_1DD9BC718()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C0538();
  sub_1DDA149B0();

  return v1 | (v2 << 32);
}

uint64_t sub_1DD9BC830()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C023C();
  sub_1DDA149B0();

  return v0;
}

uint64_t sub_1DD9BC948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1DDA13680();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83950, &qword_1DDA1B950);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83958, &qword_1DDA1B958);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9BCAB4, 0, 0);
}

uint64_t sub_1DD9BCAB4()
{
  v1 = v0;
  if (qword_1ECD827C8 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v2 = sub_1DDA14810();
    __swift_project_value_buffer(v2, qword_1ECDA2140);
    v3 = sub_1DDA147F0();
    v4 = sub_1DDA14F00();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DD8F8000, v3, v4, "Cleaning up expired entries", v5, 2u);
      MEMORY[0x1E12B8CE0](v5, -1, -1);
    }

    v6 = *(v1 + 88);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83960, &qword_1DDA1B960);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    type metadata accessor for Entry(0);
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
    v8 = MEMORY[0x1E69E7CC0];
    sub_1DDA14960();
    v26 = sub_1DDA148D0();
    (*(*(v1 + 104) + 8))(*(v1 + 112), *(v1 + 96));
    v28 = v8;
    if (!(v26 >> 62))
    {
      v9 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }

      goto LABEL_6;
    }

    v9 = sub_1DDA15190();
    if (!v9)
    {
      break;
    }

LABEL_6:
    v10 = 0;
    v23 = (*(v1 + 64) + 8);
    v24 = v9;
    v25 = v1;
    while ((v26 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E12B7F50](v10, v26);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v8 = v28;
        goto LABEL_21;
      }

LABEL_12:
      v27 = v12;
      *(v1 + 32) = v11;
      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);

      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DD9C023C();
      sub_1DDA149B0();

      if (*(v1 + 24))
      {
      }

      else
      {
        v13 = *(v1 + 72);
        v14 = *(v1 + 80);
        v15 = *(v1 + 56);
        *(v1 + 40) = v11;
        swift_getKeyPath();
        sub_1DDA13780();

        swift_getKeyPath();
        sub_1DD9BFAA8(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        sub_1DDA149B0();

        sub_1DDA135F0();
        v16 = *v23;
        (*v23)(v13, v15);
        sub_1DDA13670();
        v17 = sub_1DDA13610();
        v16(v13, v15);
        v16(v14, v15);

        if (v17)
        {
          sub_1DDA15100();
          sub_1DDA15130();
          sub_1DDA15140();
          sub_1DDA15110();
        }

        else
        {
        }

        v1 = v25;
        v9 = v24;
      }

      ++v10;
      if (v27 == v9)
      {
        goto LABEL_20;
      }
    }

    if (v10 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v26 + 8 * v10 + 32);

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_21:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v18 = sub_1DDA15190();
  }

  else
  {
    v18 = *(v8 + 16);
  }

  swift_retain_n();
  if (v18)
  {
    v19 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12B7F50](v19, v8);
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v19 >= *(v8 + 16))
        {
          goto LABEL_38;
        }

        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_33:
          __break(1u);
          break;
        }
      }

      sub_1DDA148E0();

      ++v19;
    }

    while (v20 != v18);
  }

  sub_1DDA148C0();

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_1DD9BD1DC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83970, &qword_1DDA1B970);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83978, &qword_1DDA1B978);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83980, &qword_1DDA1B980);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  sub_1DD90D2A4(&qword_1ECD83988, &qword_1ECD83978, &qword_1DDA1B978, MEMORY[0x1E6968DA8]);
  sub_1DDA133E0();
  swift_getKeyPath();
  sub_1DDA133C0();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_1DDA133D0();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83990, &qword_1DDA1B988);
  a4[4] = sub_1DD9C0774();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_1DD90D2A4(&qword_1ECD839B8, &qword_1ECD83980, &qword_1DDA1B980, MEMORY[0x1E6968D58]);
  sub_1DD90D2A4(&qword_1ECD839C0, &qword_1ECD83970, &qword_1DDA1B970, MEMORY[0x1E6968D20]);
  v17 = v21;
  sub_1DDA133B0();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

double sub_1DD9BD548@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C0650();
  sub_1DDA149B0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1DD9BD658@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C0538();
  sub_1DDA149B0();

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1DD9BD770(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13770();
}

uint64_t sub_1DD9BD850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C0428();
  sub_1DDA149B0();

  *a2 = v4;
  return result;
}

uint64_t sub_1DD9BD960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920, &unk_1DDA1BA9C, MEMORY[0x1E69E6330]);
  sub_1DDA149B0();

  *a2 = v4;
  return result;
}

uint64_t sub_1DD9BDAA8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13770();
}

uint64_t sub_1DD9BDB6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C023C();
  sub_1DDA149B0();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1DD9BDC84(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13770();
}

uint64_t sub_1DD9BDD6C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9BFAA8(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DDA149B0();
}

uint64_t sub_1DD9BDE9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9BFAA8(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DDA149B0();
}

uint64_t sub_1DD9BDFD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1DDA13680();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, a1, v8);
  v17 = *a2;
  v12 = v17;
  swift_getKeyPath();
  v15 = v12;
  v16 = v11;
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13770();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1DD9BE154()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DD9BE1B8@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DDA149B0();

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_1DD9BE2C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry, &unk_1DDA1B624);
  sub_1DDA13770();
}

uint64_t sub_1DD9BE388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C05D4();
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE4F0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C04BC();
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE5A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C03AC();
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE650(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C02F4(&qword_1ECD83900, &qword_1ECD83910, &unk_1DDA1BAC4, MEMORY[0x1E69E6300]);
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE734(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9C01C0();
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  sub_1DD9BFAA8(&qword_1ECD829A0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE8C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83A10, &qword_1DDA1BAF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9C0D78();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (!v1)
  {
    type metadata accessor for Entry.AttachedDocument(0);
    v8[14] = 1;
    sub_1DDA134E0();
    sub_1DD9BFAA8(&qword_1ECD83A20, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1DDA15380();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD9BEA80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_1DDA134E0();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83A28, &qword_1DDA1BAF8);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Entry.AttachedDocument(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9C0D78();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_1DDA15280();
  v10[1] = v13;
  v21 = 1;
  sub_1DD9BFAA8(&qword_1ECD83A30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1DDA152C0();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_1DD9C0ADC(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DD9C0A1C(v10);
}

uint64_t sub_1DD9BEDA4()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DD9BEDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DD9BEEA0(uint64_t a1)
{
  v2 = sub_1DD9C0D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9BEEDC(uint64_t a1)
{
  v2 = sub_1DD9C0D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9BEF18()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA134E0();
  sub_1DD9BFAA8(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9BEFC0(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA134E0();
  sub_1DD9BFAA8(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9BF04C(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA134E0();
  sub_1DD9BFAA8(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9BF120(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  return sub_1DDA13490();
}

void *sub_1DD9BF1A4(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83948, &qword_1DDA1B938);
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1DDA14970();
  *(v1 + 16) = 257;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
  sub_1DD9C03AC();
  sub_1DDA148B0();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83908, &qword_1DDA1B928);
  sub_1DD9C02F4(&qword_1ECD83900, &qword_1ECD83910, &unk_1DDA1BAC4, MEMORY[0x1E69E6300]);
  sub_1DDA148B0();

  *(v1 + 18) = 1;
  sub_1DDA13790();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1DD8FEEB0(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1DD9BF420()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtC5AnvilP33_C92465279110962981D4F23E0DACDF495Entry___observationRegistrar;
  v2 = sub_1DDA137A0();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1DD9BF4EC(uint64_t a1)
{
  result = sub_1DDA137A0();
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

uint64_t sub_1DD9BF648(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1DD8FEEB0(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1DD9BF6A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1DD929A28(v1 + 24, v4);
  return sub_1DD9BF730;
}

void sub_1DD9BF730(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1DD929A28(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1DD8FEEB0((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1DD8FEEB0(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1DD9BF7EC(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9BF8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DDA15570();
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9BF998(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry, &unk_1DDA1B6E0);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t sub_1DD9BFAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD9BFC10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD838D0, &qword_1DDA1B750);
  sub_1DDA14A30();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DDA1B520;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD838D8, &qword_1DDA1B780);
  sub_1DDA14A50();
  *(swift_allocObject() + 16) = xmmword_1DDA16320;
  sub_1DDA14A40();
  sub_1DDA14A60();
  swift_allocObject();
  sub_1DDA14A70();
  sub_1DD9BFAA8(&qword_1ECD838E0, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD838E8, &qword_1DDA1B878);
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  return v0;
}

unint64_t sub_1DD9C01C0()
{
  result = qword_1ECD838F0;
  if (!qword_1ECD838F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83770, &qword_1DDA1B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD838F0);
  }

  return result;
}

unint64_t sub_1DD9C023C()
{
  result = qword_1ECD838F8;
  if (!qword_1ECD838F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83770, &qword_1DDA1B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD838F8);
  }

  return result;
}

uint64_t sub_1DD9C02F4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83908, &qword_1DDA1B928);
    sub_1DD9BFAA8(a2, type metadata accessor for Entry.AttachedDocument, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD9C03AC()
{
  result = qword_1ECD83458;
  if (!qword_1ECD83458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82818, &qword_1DDA1A780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83458);
  }

  return result;
}

unint64_t sub_1DD9C0428()
{
  result = qword_1ECD83428;
  if (!qword_1ECD83428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82818, &qword_1DDA1A780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83428);
  }

  return result;
}

unint64_t sub_1DD9C04BC()
{
  result = qword_1ECD83928;
  if (!qword_1ECD83928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FB0, &qword_1DDA18980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83928);
  }

  return result;
}

unint64_t sub_1DD9C0538()
{
  result = qword_1ECD83930;
  if (!qword_1ECD83930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FB0, &qword_1DDA18980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83930);
  }

  return result;
}

unint64_t sub_1DD9C05D4()
{
  result = qword_1ECD83938;
  if (!qword_1ECD83938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FA8, &qword_1DDA1B930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83938);
  }

  return result;
}

unint64_t sub_1DD9C0650()
{
  result = qword_1ECD83940;
  if (!qword_1ECD83940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FA8, &qword_1DDA1B930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83940);
  }

  return result;
}

unint64_t sub_1DD9C0774()
{
  result = qword_1ECD83998;
  if (!qword_1ECD83998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83990, &qword_1DDA1B988);
    sub_1DD9C0800();
    sub_1DD9C08B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83998);
  }

  return result;
}

unint64_t sub_1DD9C0800()
{
  result = qword_1ECD839A0;
  if (!qword_1ECD839A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83980, &qword_1DDA1B980);
    sub_1DD90D2A4(&qword_1ECD839A8, &qword_1ECD83978, &qword_1DDA1B978, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD839A0);
  }

  return result;
}

unint64_t sub_1DD9C08B0()
{
  result = qword_1ECD839B0;
  if (!qword_1ECD839B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83970, &qword_1DDA1B970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD839B0);
  }

  return result;
}

uint64_t sub_1DD9C098C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD9C0A1C(uint64_t a1)
{
  v2 = type metadata accessor for Entry.AttachedDocument(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD9C0A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entry.AttachedDocument(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD9C0ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entry.AttachedDocument(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DD9C0B68(uint64_t a1)
{
  sub_1DD979EB8(319, &unk_1EE16F3B8, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1DD979EB8(319, &qword_1EE16F0E0, MEMORY[0x1E69E7668]);
    if (v2 <= 0x3F)
    {
      sub_1DD9C0C34(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD9C0C34(uint64_t a1)
{
  if (!qword_1EE16F8F0)
  {
    sub_1DDA13680();
    v1 = sub_1DDA14F50();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE16F8F0);
    }
  }
}

uint64_t sub_1DD9C0CB4(uint64_t a1)
{
  result = sub_1DDA134E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DD9C0D78()
{
  result = qword_1ECD83A18;
  if (!qword_1ECD83A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A18);
  }

  return result;
}

unint64_t sub_1DD9C0DE0()
{
  result = qword_1ECD83A38;
  if (!qword_1ECD83A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A38);
  }

  return result;
}

unint64_t sub_1DD9C0E38()
{
  result = qword_1ECD83A40;
  if (!qword_1ECD83A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A40);
  }

  return result;
}

unint64_t sub_1DD9C0E90()
{
  result = qword_1ECD83A48;
  if (!qword_1ECD83A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A48);
  }

  return result;
}

unint64_t sub_1DD9C0FBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DDA15070();

    v8 = 0xD000000000000016;
    v4 = sub_1DDA14AB0();
    MEMORY[0x1E12B7AB0](v4);

    MEMORY[0x1E12B7AB0](41, 0xE100000000000000);
  }

  else
  {
    sub_1DDA15070();

    v8 = 0xD000000000000014;
    v6 = sub_1DD9C10C4(a1, a2);
    MEMORY[0x1E12B7AB0](v6);
  }

  return v8;
}

uint64_t sub_1DD9C10C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 1769105747;
    }

    if (a2 == 1)
    {
      return 0x54676E6974697257;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 0xD000000000000010;
      case 3:
        return 0xD000000000000012;
      case 4:
        return 0x74756374726F6853;
    }
  }

  MEMORY[0x1E12B7AB0](a1);
  MEMORY[0x1E12B7AB0](41, 0xE100000000000000);
  return 0x282073726568744FLL;
}

uint64_t sub_1DD9C11D4(uint64_t a1, uint64_t a2)
{
  sub_1DD9313D4();
  if (sub_1DDA14FA0() & 1) != 0 || (sub_1DDA14FA0() & 1) != 0 || (sub_1DDA14FA0() & 1) != 0 || (sub_1DDA14FA0() & 1) != 0 || (sub_1DDA14FA0())
  {

    return 0;
  }

  return a1;
}

unint64_t sub_1DD9C13D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (a1 == 0xD000000000000017 && 0x80000001DDA28DB0 == a2 || (sub_1DDA15440() & 1) != 0)
  {

    if (*(a3 + 16) && (sub_1DD96AC38(0xD000000000000025, 0x80000001DDA28DD0), (v6 & 1) != 0))
    {

      v7 = sub_1DDA13520();
      v9 = v8;

      if (v9 >> 60 != 15)
      {
        v10 = objc_opt_self();
        v11 = sub_1DDA13570();
        v18[0] = 0;
        v12 = [v10 JSONObjectWithData:v11 options:0 error:v18];

        if (v12)
        {
          v13 = v18[0];
          sub_1DDA14FB0();
          sub_1DD90D440(v7, v9);
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83620, &qword_1DDA1AFA0);
          if (swift_dynamicCast())
          {
            return v17;
          }
        }

        else
        {
          v15 = v18[0];
          v16 = sub_1DDA13410();

          swift_willThrow();
          sub_1DD90D440(v7, v9);
        }
      }
    }

    else
    {
    }

    return sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    return sub_1DD9C11D4(a1, a2);
  }
}

uint64_t sub_1DD9C1620(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83A70, &qword_1DDA1BE08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9C2124();
  sub_1DDA15650();
  v14 = 0;
  sub_1DDA15340();
  if (!v5)
  {
    v13 = 1;
    sub_1DDA15340();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DD9C17B4()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9C1828(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9C187C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DDA151E0();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DD9C1930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DDA28E70 == a2 || (sub_1DDA15440() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DDA28E90 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DD9C1A18(uint64_t a1)
{
  v2 = sub_1DD9C2124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9C1A54(uint64_t a1)
{
  v2 = sub_1DD9C2124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9C1A90@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DD9C2178(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9C1AE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1DDA14B60();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (sub_1DD96D708(), (v14 & 1) == 0))
  {

    sub_1DD90D440(a3, a4);

    goto LABEL_6;
  }

  v35 = a3;

  sub_1DDA14B50();
  v15 = sub_1DDA14B20();
  v17 = v16;

  (*(v11 + 8))(v13, v10);
  if (v17 >> 60 == 15)
  {

    result = sub_1DD90D440(v35, a4);
LABEL_6:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_7;
  }

  sub_1DDA13190();
  swift_allocObject();
  sub_1DDA13180();
  sub_1DD9C1EB4();
  sub_1DDA13170();

  v31 = v38;
  v32 = v37;
  v33 = v15;
  v34 = v17;
  if (a4 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v29 = v36;
    swift_allocObject();
    v25 = v35;
    sub_1DD909CD4(v35, a4);
    sub_1DDA13180();
    sub_1DD956064();
    sub_1DDA13170();
    sub_1DD90D440(v25, a4);

    v30 = v39;
    v26 = v40;
    v28 = v41;
    v27 = v42;

    sub_1DD940E20(v26, v28, v27);
  }

  [a2 statusCode];
  v24 = 0x80000001DDA28E40;
  v19 = sub_1DDA14B00();
  v20 = sub_1DDA14B00();

  v21 = sub_1DDA14E60();
  v22 = sub_1DDA14B00();
  sub_1DD90D440(v33, v34);

  sub_1DD90D440(v35, a4);

  v23 = 0xD00000000000002ALL;
LABEL_7:
  *a5 = v19;
  a5[1] = v20;
  a5[2] = v21;
  a5[3] = v22;
  a5[4] = v23;
  a5[5] = v24;
  return result;
}

unint64_t sub_1DD9C1EB4()
{
  result = qword_1ECD83A50;
  if (!qword_1ECD83A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A50);
  }

  return result;
}

uint64_t sub_1DD9C1F28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD9C1F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD9C1FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DD9C2014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD9C2068()
{
  result = qword_1ECD83A58;
  if (!qword_1ECD83A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83A60, qword_1DDA1BCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A58);
  }

  return result;
}

unint64_t sub_1DD9C20D0()
{
  result = qword_1ECD83A68;
  if (!qword_1ECD83A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A68);
  }

  return result;
}

unint64_t sub_1DD9C2124()
{
  result = qword_1ECD83A78;
  if (!qword_1ECD83A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A78);
  }

  return result;
}

uint64_t sub_1DD9C2178(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83A80, &qword_1DDA1BE10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9C2124();
  sub_1DDA15620();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1DDA15280();
    v10 = 1;
    sub_1DDA15280();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DD9C2370()
{
  result = qword_1ECD83A88;
  if (!qword_1ECD83A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A88);
  }

  return result;
}

unint64_t sub_1DD9C23C8()
{
  result = qword_1ECD83A90;
  if (!qword_1ECD83A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A90);
  }

  return result;
}

unint64_t sub_1DD9C2420()
{
  result = qword_1ECD83A98;
  if (!qword_1ECD83A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A98);
  }

  return result;
}

uint64_t sub_1DD9C2474(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DDA15120();
    v9 = *(sub_1DDA143D0() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10, &v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1DDA15100();
      sub_1DDA15130();
      sub_1DDA15140();
      sub_1DDA15110();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1DD9C25C0(unint64_t a1)
{
  v79 = a1;
  v78 = sub_1DDA143D0();
  v72 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v71 = (v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_1DDA14440();
  v2 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v4 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1DDA144A0();
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v76 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83010, &qword_1DDA18A40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v66 - v7;
  v9 = sub_1DDA144B0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v73 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v66 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v66 - v16;
  v18 = v10 + 16;
  v19 = *(v10 + 16);
  v19(v66 - v16, v79, v9);
  v20 = (*(v10 + 88))(v17, v9);
  if (v20 == *MEMORY[0x1E69A0B78])
  {
    (*(v10 + 96))(v17, v9);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83018, &qword_1DDA18A48);
    v22 = swift_projectBox();
    v23 = *v22;
    sub_1DD9C64C4(v22 + *(v21 + 48), v8);
    v24 = sub_1DDA14450();
    if ((*(*(v24 - 8) + 48))(v8, 1, v24) == 1)
    {
      v18 = sub_1DD96D7E4(v23);
    }

    else
    {
      v44 = sub_1DDA13840();
      sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      swift_allocError();
      v46 = v45;
      sub_1DDA13800();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69DA4B0], v44);
      swift_willThrow();
    }

    sub_1DD90D378(v8, &qword_1ECD83010, &qword_1DDA18A40);

    return v18;
  }

  v75 = v9;
  if (v20 == *MEMORY[0x1E69A0B70])
  {
    (*(v10 + 96))(v17, v75);
    v25 = *(*v17 + 16);
    v26 = *(v25 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    if (!v26)
    {
LABEL_23:
      v18 = sub_1DD96D8DC(v27);

      return v18;
    }

    v66[1] = *v17;
    v81 = MEMORY[0x1E69E7CC0];
    sub_1DD9AF15C(0, v26, 0);
    v28 = 0;
    v29 = v76;
    v70 = v25 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v30 = v80;
    v79 = v81;
    v68 = v25;
    v69 = v77 + 16;
    v71 = (v10 + 8);
    v72 = (v77 + 8);
    v67 = v26;
    while (v28 < *(v25 + 16))
    {
      v31 = v74;
      (*(v77 + 16))(v29, v70 + *(v77 + 72) * v28, v74);
      v17 = sub_1DDA14470();
      v78 = v32;
      v18 = sub_1DDA14460();
      v34 = v33;
      v35 = v73;
      sub_1DDA14480();
      v36 = sub_1DD9C25C0(v35);
      if (v30)
      {

        (*v71)(v35, v75);
        (*v72)(v29, v31);

        return v18;
      }

      v37 = v36;
      v80 = 0;
      (*v71)(v35, v75);
      v38 = sub_1DDA14490();
      (*v72)(v29, v31);
      v39 = v79;
      v81 = v79;
      v41 = *(v79 + 16);
      v40 = *(v79 + 24);
      v10 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_1DD9AF15C((v40 > 1), v41 + 1, 1);
        v39 = v81;
      }

      ++v28;
      *(v39 + 16) = v10;
      v79 = v39;
      v42 = v39 + 48 * v41;
      v43 = v78;
      *(v42 + 32) = v17;
      *(v42 + 40) = v43;
      *(v42 + 48) = v18;
      *(v42 + 56) = v34;
      *(v42 + 64) = v37;
      *(v42 + 72) = (v38 & 1) == 0;
      v25 = v68;
      v30 = v80;
      v29 = v76;
      if (v67 == v28)
      {
        v27 = v79;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    v18 = sub_1DDA13840();
    sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    v64 = v63;
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1DDA15070();

    v81 = 0xD000000000000015;
    v82 = 0x80000001DDA28EB0;
    v83 = &type metadata for TransformUtils;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AA0, &qword_1DDA1BF30);
    v65 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v65);

    sub_1DDA13800();
    (*(*(v18 - 8) + 104))(v64, *MEMORY[0x1E69DA4B0], v18);
    swift_willThrow();
    (*(v10 + 8))(v17, v28);
    return v18;
  }

  v28 = v75;
  if (v20 == *MEMORY[0x1E69A0B58])
  {
    (*(v10 + 96))(v17, v75);
    v47 = swift_projectBox();
    v19(v15, v47, v28);
    v48 = v80;
    v49 = sub_1DD9C25C0(v15);
    if (!v48)
    {
      v18 = sub_1DD96D84C(v49);
    }

    (*(v10 + 8))(v15, v28);
  }

  else
  {
    if (v20 == *MEMORY[0x1E69A0B50] || v20 == *MEMORY[0x1E69A0B60] || v20 == *MEMORY[0x1E69A0B90])
    {
      (*(v10 + 8))(v17, v75);
      v50 = sub_1DDA13840();
      sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      swift_allocError();
      v52 = v51;
      sub_1DDA13800();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69DA4B0], v50);
      swift_willThrow();
      return v18;
    }

    if (v20 != *MEMORY[0x1E69A0B48])
    {
      if (v20 == *MEMORY[0x1E69A0B80])
      {
        sub_1DD96D774();
        return v60;
      }

      if (v20 == *MEMORY[0x1E69A0B88])
      {
        sub_1DD96D77C();
        return v61;
      }

      if (v20 == *MEMORY[0x1E69A0B68])
      {
        sub_1DD96D784();
        return v62;
      }

      goto LABEL_39;
    }

    (*(v10 + 96))(v17, v75);
    v54 = swift_projectBox();
    v55 = v2;
    v56 = v70;
    (*(v2 + 16))(v4, v54, v70);
    v57 = v71;
    sub_1DDA14430();
    v58 = v80;
    sub_1DD9C3368(v57, 0);
    if (!v58)
    {
      v18 = v59;
    }

    v72[1](v57, v78);
    (*(v55 + 8))(v4, v56);
  }

  return v18;
}

uint64_t sub_1DD9C32BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1DD9C3368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DDA143A0();
  v166 = *(v6 - 8);
  v167 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v165 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1DDA143C0();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v179 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1DDA14300();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AA8, &qword_1DDA1BF38);
  v10 = MEMORY[0x1EEE9AC00](v170);
  v169 = (&v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v168 = &v148 - v12;
  v157 = sub_1DDA14350();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v171 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1DDA14320();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DDA14370();
  v175 = *(v15 - 8);
  v176 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DDA143D0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v153 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v150 = &v148 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v151 = &v148 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v158 = &v148 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v180 = (&v148 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v177 = &v148 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v148 - v31;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v33 = sub_1DDA14810();
  v34 = __swift_project_value_buffer(v33, qword_1ECDA20E0);
  v35 = (v18 + 16);
  v36 = *(v18 + 16);
  v181 = a1;
  v36(v32, a1, v17);

  v152 = v34;
  v37 = sub_1DDA147F0();
  v38 = sub_1DDA14ED0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v172 = v2;
    v40 = v39;
    v41 = swift_slowAlloc();
    v178 = v18;
    v182 = a2;
    v183 = v41;
    v149 = v41;
    *v40 = 136315394;
    v36(v177, v32, v17);
    v42 = sub_1DDA14B70();
    v44 = v43;
    v173 = *(v178 + 8);
    v173(v32, v17);
    v45 = sub_1DD93FA54(v42, v44, &v183);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v185 = v182;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AB0, &qword_1DDA1BF40);
    v46 = sub_1DDA14B70();
    v48 = sub_1DD93FA54(v46, v47, &v183);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_1DD8F8000, v37, v38, "Trying to convert schema: %s, with definitions: %s", v40, 0x16u);
    v49 = v149;
    swift_arrayDestroy();
    v50 = v49;
    a2 = v182;
    v18 = v178;
    MEMORY[0x1E12B8CE0](v50, -1, -1);
    v51 = v40;
    v3 = v172;
    MEMORY[0x1E12B8CE0](v51, -1, -1);
  }

  else
  {

    v173 = *(v18 + 8);
    v173(v32, v17);
  }

  v53 = v180;
  v52 = v181;
  v36(v180, v181, v17);
  v54 = (*(v18 + 88))(v53, v17);
  v55 = v179;
  if (v54 == *MEMORY[0x1E69A0AB8])
  {
    (*(v18 + 96))(v53, v17);
    v56 = swift_projectBox();
    v58 = v174;
    v57 = v175;
    v59 = v176;
    v60 = (*(v175 + 16))(v174, v56, v176);
    v61 = MEMORY[0x1E12B7220](v60);
    sub_1DD96D7E4(v61);

    (*(v57 + 8))(v58, v59);
LABEL_53:

    return;
  }

  if (v54 == *MEMORY[0x1E69A0AC0])
  {
    v173(v53, v17);
    sub_1DD96D774();
    return;
  }

  if (v54 == *MEMORY[0x1E69A0AC8])
  {
    v173(v53, v17);
    sub_1DD96D77C();
    return;
  }

  if (v54 == *MEMORY[0x1E69A0AA8])
  {
    v173(v53, v17);
    sub_1DD96D784();
    return;
  }

  if (v54 == *MEMORY[0x1E69A0AE8])
  {
    (*(v18 + 96))(v53, v17);
    v62 = swift_projectBox();
    v64 = v165;
    v63 = v166;
    v65 = v167;
    (*(v166 + 16))(v165, v62, v167);
    v66 = sub_1DDA14390();
    v68 = v67;
    sub_1DDA14380();
    sub_1DD96DC58(v66, v68);

    (*(v63 + 8))(v64, v65);
    goto LABEL_53;
  }

  if (v54 == *MEMORY[0x1E69A0A98])
  {
    (*(v18 + 96))(v53, v17);
    v69 = swift_projectBox();
    v70 = v163;
    v71 = v162;
    v72 = v164;
    v73 = (*(v163 + 16))(v162, v69, v164);
    v74 = MEMORY[0x1E12B71A0](v73);
    MEMORY[0x1EEE9AC00](v74);
    *(&v148 - 2) = v71;
    v75 = sub_1DD9C2474(sub_1DD9C6534, (&v148 - 4), v74);
    if (!v3)
    {
      v113 = v75;

      sub_1DD96DBE4(v113);
    }

    (*(v70 + 8))(v71, v72);
    goto LABEL_53;
  }

  if (v54 == *MEMORY[0x1E69A0AA0])
  {
    (*(v18 + 96))(v53, v17);
    v181 = *v53;
    v76 = swift_projectBox();
    v77 = v160;
    v78 = v159;
    v79 = v161;
    v80 = (*(v160 + 16))(v159, v76, v161);
    v81 = v158;
    MEMORY[0x1E12B71D0](v80);
    v82 = sub_1DD9C3368(v81, a2);
    if (v3)
    {
      v173(v81, v17);
    }

    else
    {
      v124 = v82;
      v173(v81, v17);
      sub_1DD96D84C(v124);
    }

    (*(v77 + 8))(v78, v79);
    goto LABEL_53;
  }

  if (v54 == *MEMORY[0x1E69A0AB0])
  {
    v83 = a2;
    v167 = v36;
    v173 = v35;
    (*(v18 + 96))(v53, v17);
    v162 = *v53;
    v84 = swift_projectBox();
    v85 = (*(v156 + 16))(v171, v84, v157);
    v86 = MEMORY[0x1E12B71F0](v85);
    v87 = *(v86 + 16);
    if (v87)
    {
      v166 = v17;
      v185 = MEMORY[0x1E69E7CC0];
      sub_1DD9AF15C(0, v87, 0);
      v88 = v185;
      v89 = v86 + 64;
      v90 = sub_1DDA14FD0();
      v164 = v18 + 32;
      v165 = v86;
      v182 = v83;
      v178 = v18;
      v163 = v86 + 64;
      while ((v90 & 0x8000000000000000) == 0 && v90 < 1 << *(v86 + 32))
      {
        v180 = v87;
        v181 = v88;
        v179 = v90 >> 6;
        v91 = *(v89 + 8 * (v90 >> 6));
        v177 = 1 << v90;
        if ((v91 & (1 << v90)) == 0)
        {
          goto LABEL_55;
        }

        LODWORD(v176) = *(v86 + 36);
        v92 = v170;
        v93 = *(v170 + 48);
        v94 = (*(v86 + 48) + 16 * v90);
        v95 = *v94;
        v96 = v94[1];
        v97 = v178;
        v98 = *(v86 + 56) + *(v178 + 72) * v90;
        v99 = v168;
        v100 = v166;
        v167(&v168[v93], v98, v166);
        v101 = v169;
        *v169 = v95;
        v101[1] = v96;
        v102 = *(v92 + 48);
        v103 = *(v97 + 32);
        v104 = v101;
        v103(v101 + v102, &v99[v93], v100);

        v105 = sub_1DD9C3368(v104 + v102, v182);
        if (v3)
        {
          sub_1DD90D378(v104, &qword_1ECD83AA8, &qword_1DDA1BF38);

          (*(v156 + 8))(v171, v157);
          goto LABEL_53;
        }

        v106 = v105;
        v107 = *(v105 + 24);
        v175 = *(v105 + 16);

        v108 = sub_1DDA14340();
        v183 = v95;
        v184 = v96;
        MEMORY[0x1EEE9AC00](v108);
        *(&v148 - 2) = &v183;
        LODWORD(v174) = sub_1DD9C32BC(sub_1DD9C6554, (&v148 - 4), v108);
        v172 = 0;

        sub_1DD90D378(v104, &qword_1ECD83AA8, &qword_1DDA1BF38);
        v88 = v181;
        v185 = v181;
        v110 = *(v181 + 16);
        v109 = *(v181 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_1DD9AF15C((v109 > 1), v110 + 1, 1);
          v88 = v185;
        }

        *(v88 + 16) = v110 + 1;
        v111 = v88 + 48 * v110;
        *(v111 + 32) = v95;
        *(v111 + 40) = v96;
        *(v111 + 48) = v175;
        *(v111 + 56) = v107;
        *(v111 + 64) = v106;
        *(v111 + 72) = (v174 & 1) == 0;
        v86 = v165;
        if (v90 >= -(-1 << v165[32]))
        {
          goto LABEL_56;
        }

        v89 = v163;
        v112 = v180;
        v3 = v172;
        if ((*(v163 + 8 * v179) & v177) == 0)
        {
          goto LABEL_57;
        }

        if (v176 != *(v165 + 9))
        {
          goto LABEL_58;
        }

        v90 = sub_1DDA14FF0();
        v87 = (v112 - 1);
        if (!v87)
        {

          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    else
    {

      v88 = MEMORY[0x1E69E7CC0];
LABEL_48:
      sub_1DD96D8DC(v88);

      (*(v156 + 8))(v171, v157);
    }
  }

  else
  {
    if (v54 == *MEMORY[0x1E69A0AF0])
    {
      (*(v18 + 96))(v53, v17);
      v181 = *v53;
      v114 = swift_projectBox();
      (*(v154 + 16))(v55, v114, v155);
      v115 = a2;
      if (a2)
      {
        v116 = sub_1DDA143B0();
        if (*(a2 + 16))
        {
          v118 = sub_1DD96AC38(v116, v117);
          v120 = v119;
          v55 = v179;

          if (v120)
          {
            v121 = *(v115 + 56) + *(v18 + 72) * v118;
            v122 = v150;
            v36(v150, v121, v17);
            v123 = v151;
            (*(v18 + 32))(v151, v122, v17);
            sub_1DD9C3368(v123, v115);
            v173(v123, v17);
            (*(v154 + 8))(v55, v155);
            goto LABEL_53;
          }
        }

        else
        {
        }
      }

      v142 = v55;
      v143 = sub_1DDA13840();
      sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      swift_allocError();
      v145 = v144;
      v183 = 0;
      v184 = 0xE000000000000000;
      sub_1DDA15070();
      MEMORY[0x1E12B7AB0](0xD000000000000021, 0x80000001DDA29010);
      v146 = sub_1DDA143B0();
      MEMORY[0x1E12B7AB0](v146);

      MEMORY[0x1E12B7AB0](0xD00000000000001DLL, 0x80000001DDA29040);
      v185 = v115;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AB0, &qword_1DDA1BF40);
      v147 = sub_1DDA14B70();
      MEMORY[0x1E12B7AB0](v147);

      sub_1DDA13800();
      (*(*(v143 - 8) + 104))(v145, *MEMORY[0x1E69DA4B0], v143);
      swift_willThrow();
      (*(v154 + 8))(v142, v155);
      goto LABEL_53;
    }

    v125 = v153;
    v36(v153, v52, v17);
    v126 = sub_1DDA147F0();
    v127 = sub_1DDA14ED0();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v183 = v129;
      *v128 = 136315138;
      v36(v177, v125, v17);
      v130 = sub_1DDA14B70();
      v131 = v125;
      v132 = v130;
      v134 = v133;
      v135 = v173;
      v173(v131, v17);
      v136 = sub_1DD93FA54(v132, v134, &v183);

      *(v128 + 4) = v136;
      _os_log_impl(&dword_1DD8F8000, v126, v127, "Unsupported Schema: %s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v129);
      v137 = v129;
      v138 = v135;
      v53 = v180;
      MEMORY[0x1E12B8CE0](v137, -1, -1);
      MEMORY[0x1E12B8CE0](v128, -1, -1);
    }

    else
    {

      v138 = v173;
      v173(v125, v17);
    }

    v139 = sub_1DDA13840();
    sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    v141 = v140;
    v183 = 0;
    v184 = 0xE000000000000000;
    sub_1DDA15070();
    MEMORY[0x1E12B7AB0](0xD000000000000037, 0x80000001DDA28FD0);
    sub_1DDA15160();
    sub_1DDA13800();
    (*(*(v139 - 8) + 104))(v141, *MEMORY[0x1E69DA4B0], v139);
    swift_willThrow();
    v138(v53, v17);
  }
}

uint64_t sub_1DD9C4944@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1DDA142F0();
  v8 = sub_1DD9C3368(a1, v7);

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v8;
  }

  return result;
}

void *sub_1DD9C49C4(void *a1)
{
  v2 = sub_1DDA13E40();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v29 = v23 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return a1;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v7;
  v23[1] = v7 + 16;
  v26 = (v7 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = v5;
    v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = a1 + v28;
    v16 = *(v7 + 72);
    v17 = a1;
    v18 = *(v7 + 16);
    v27 = v16 * v10;
    result = v18(v29, &v15[v16 * v10], v2);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = &v15[v16 * v12];
    v5 = v14;
    v18(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1DD9C4CEC(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    result = (*v26)(a1 + v28 + v27, v5, v2);
    if (v12 >= a1[2])
    {
      goto LABEL_15;
    }

    result = v22(&v21[v19], v29, v2);
    v11 = v24;
    v7 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_1DD9C4BF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A20, &qword_1DDA16E40);
  v4 = *(sub_1DDA13E40() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DD9C4D14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
LABEL_13:
    v12 = 0;
    v14 = a4;
LABEL_17:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v14;
    return v12;
  }

  if (!a3)
  {
    v14 = a4;
LABEL_15:
    v12 = a3;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = a4 - a5;
    v13 = 1;
    v14 = a4;
    while (1)
    {
      if (v14 == a5)
      {
        v14 = a5;
        goto LABEL_17;
      }

      if (v14 <= a5)
      {
        break;
      }

      if (v14-- < 1)
      {
        goto LABEL_19;
      }

      if (v14 >= *(a6 + 16))
      {
        goto LABEL_20;
      }

      v16 = sub_1DDA13E40();
      v17 = *(v16 - 8);
      v18 = *(v17 + 72);
      result = (*(v17 + 16))(v11, a6 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v18 * v14, v16);
      if (v13 == a3)
      {
        goto LABEL_15;
      }

      v11 += v18;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD9C4E40(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440() & 1;
  }
}

void *sub_1DD9C4E98(void *a1)
{
  v2 = sub_1DDA13830();
  v104 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v103 - v6;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1DDA14810();
  __swift_project_value_buffer(v8, qword_1ECDA20E0);
  v9 = a1;
  v10 = sub_1DDA147F0();
  v11 = sub_1DDA14ED0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1DD8F8000, v10, v11, "Transforming error: %@", v12, 0xCu);
    sub_1DD90D378(v13, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
  }

  v119 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v109 = v115;
    v110 = v116;
    v111 = v117;
    v112 = v118;
    v107 = v113;
    v108 = v114;
    v17 = v115;
    if (*(&v115 + 1))
    {

      v18 = sub_1DD9FFD28(v17, *(&v17 + 1));
      switch(v18)
      {
        case 3:
        case 12:
        case 24:
        case 25:
        case 35:
        case 36:
        case 37:
        case 38:
          v77 = sub_1DDA147F0();
          v78 = sub_1DDA14F00();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v106[0] = v80;
            *v79 = 136315138;
            v81 = sub_1DD9CEEC4(v18);
            v83 = sub_1DD93FA54(v81, v82, v106);

            *(v79 + 4) = v83;
            _os_log_impl(&dword_1DD8F8000, v77, v78, "Converted error code %s to TokenGenerationError.invalidParameters", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v80);
            MEMORY[0x1E12B8CE0](v80, -1, -1);
            MEMORY[0x1E12B8CE0](v79, -1, -1);
          }

          v26 = v104;
          v106[0] = 0;
          v106[1] = 0xE000000000000000;
          sub_1DDA15070();

          v106[0] = 0xD00000000000001ELL;
          v106[1] = 0x80000001DDA29080;
          v84 = sub_1DD9CEEC4(v18);
          MEMORY[0x1E12B7AB0](v84);

          sub_1DD956120();
          swift_allocError();
          v85 = v108;
          *v86 = v107;
          *(v86 + 16) = v85;
          v88 = v110;
          v87 = v111;
          v89 = v109;
          *(v86 + 80) = v112;
          *(v86 + 48) = v88;
          *(v86 + 64) = v87;
          *(v86 + 32) = v89;
          sub_1DDA13800();
          v59 = sub_1DDA13840();
          sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
          a1 = swift_allocError();
          v61 = v90;
          (*(v26 + 16))(v90, v7, v2);
          v62 = MEMORY[0x1E69DA4C0];
          goto LABEL_27;
        case 6:
        case 7:
        case 8:
        case 10:
        case 11:
        case 13:
        case 17:
        case 18:
        case 19:
          v46 = sub_1DDA147F0();
          v47 = sub_1DDA14F00();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v106[0] = v49;
            *v48 = 136315138;
            v50 = sub_1DD9CEEC4(v18);
            v52 = sub_1DD93FA54(v50, v51, v106);

            *(v48 + 4) = v52;
            _os_log_impl(&dword_1DD8F8000, v46, v47, "Converted error code %s to TokenGenerationError.authenticationFailed", v48, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v49);
            MEMORY[0x1E12B8CE0](v49, -1, -1);
            MEMORY[0x1E12B8CE0](v48, -1, -1);
          }

          v26 = v104;
          strcpy(v106, "Token issue: ");
          HIWORD(v106[1]) = -4864;
          v53 = sub_1DD9CEEC4(v18);
          MEMORY[0x1E12B7AB0](v53);

          goto LABEL_20;
        case 21:
          v92 = sub_1DDA147F0();
          v93 = sub_1DDA14F00();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v106[0] = v95;
            *v94 = 136315138;
            v96 = sub_1DD9CEEC4(21);
            v98 = sub_1DD93FA54(v96, v97, v106);

            *(v94 + 4) = v98;
            _os_log_impl(&dword_1DD8F8000, v92, v93, "Converted error code %s to TokenGenerationError.accountError", v94, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v95);
            MEMORY[0x1E12B8CE0](v95, -1, -1);
            MEMORY[0x1E12B8CE0](v94, -1, -1);
          }

          v99 = v104;
          sub_1DD9CEEC4(21);

          sub_1DDA137F0();
          sub_1DD957334(&v107);
          v100 = sub_1DDA13840();
          sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
          a1 = swift_allocError();
          v102 = v101;
          (*(v99 + 16))(v101, v7, v2);
          (*(*(v100 - 8) + 104))(v102, *MEMORY[0x1E69DA488], v100);
          (*(v99 + 8))(v7, v2);
          return a1;
        case 22:
        case 23:
        case 26:
        case 27:
        case 30:
        case 31:
        case 32:
        case 33:
          v63 = sub_1DDA147F0();
          v64 = sub_1DDA14F00();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v106[0] = v66;
            *v65 = 136315138;
            v67 = sub_1DD9CEEC4(v18);
            v69 = sub_1DD93FA54(v67, v68, v106);

            *(v65 + 4) = v69;
            _os_log_impl(&dword_1DD8F8000, v63, v64, "Converted error code %s to TokenGenerationError.invalidated", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v66);
            MEMORY[0x1E12B8CE0](v66, -1, -1);
            MEMORY[0x1E12B8CE0](v65, -1, -1);
          }

          v26 = v104;
          v106[0] = 0;
          v106[1] = 0xE000000000000000;
          sub_1DDA15070();

          v106[0] = 0xD000000000000021;
          v106[1] = 0x80000001DDA290A0;
          v70 = sub_1DD9CEEC4(v18);
          MEMORY[0x1E12B7AB0](v70);

          sub_1DD956120();
          swift_allocError();
          v71 = v108;
          *v72 = v107;
          *(v72 + 16) = v71;
          v74 = v110;
          v73 = v111;
          v75 = v109;
          *(v72 + 80) = v112;
          *(v72 + 48) = v74;
          *(v72 + 64) = v73;
          *(v72 + 32) = v75;
          sub_1DDA13800();
          v59 = sub_1DDA13840();
          sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
          a1 = swift_allocError();
          v61 = v76;
          (*(v26 + 16))(v76, v7, v2);
          v62 = MEMORY[0x1E69DA4A0];
          goto LABEL_27;
        case 39:
          goto LABEL_12;
        default:
          v19 = sub_1DDA147F0();
          v20 = sub_1DDA14F00();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v106[0] = v22;
            *v21 = 136315138;
            v23 = sub_1DD9CEEC4(v18);
            v25 = sub_1DD93FA54(v23, v24, v106);

            *(v21 + 4) = v25;
            _os_log_impl(&dword_1DD8F8000, v19, v20, "Converted error code %s to TokenGenerationError.authenticationFailed", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v22);
            MEMORY[0x1E12B8CE0](v22, -1, -1);
            MEMORY[0x1E12B8CE0](v21, -1, -1);
          }

          v26 = v104;
          sub_1DD9CEEC4(v18);
LABEL_20:
          sub_1DD956120();
          swift_allocError();
          v54 = v108;
          *v55 = v107;
          *(v55 + 16) = v54;
          v57 = v110;
          v56 = v111;
          v58 = v109;
          *(v55 + 80) = v112;
          *(v55 + 48) = v57;
          *(v55 + 64) = v56;
          *(v55 + 32) = v58;
          sub_1DDA13800();
          v59 = sub_1DDA13840();
          sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
          a1 = swift_allocError();
          v61 = v60;
          (*(v26 + 16))(v60, v7, v2);
          v62 = MEMORY[0x1E69DA4C8];
LABEL_27:
          (*(*(v59 - 8) + 104))(v61, *v62, v59);
          (*(v26 + 8))(v7, v2);
          break;
      }
    }

    else
    {
LABEL_12:
      sub_1DD9572FC(&v107, v106);
      v28 = sub_1DDA147F0();
      v29 = sub_1DDA14EE0();
      sub_1DD957334(&v107);
      v30 = os_log_type_enabled(v28, v29);
      v103 = v2;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v105 = v32;
        v106[0] = v17;
        *v31 = 136446210;
        v106[1] = *(&v17 + 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
        v33 = sub_1DDA14B70();
        v35 = sub_1DD93FA54(v33, v34, &v105);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_1DD8F8000, v28, v29, "Unrecognized error code: %{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x1E12B8CE0](v32, -1, -1);
        MEMORY[0x1E12B8CE0](v31, -1, -1);
      }

      if (v112)
      {

        sub_1DDA137F0();
        sub_1DD957334(&v107);
        v36 = sub_1DDA13840();
        sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
        a1 = swift_allocError();
        v38 = v37;
        v39 = v103;
        v40 = v104;
        (*(v104 + 16))(v37, v5, v103);
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69DA480], v36);
        (*(v40 + 8))(v5, v39);
      }

      else
      {
        sub_1DD956120();
        a1 = swift_allocError();
        v41 = v108;
        *v42 = v107;
        *(v42 + 16) = v41;
        v44 = v110;
        v43 = v111;
        v45 = v109;
        *(v42 + 80) = v112;
        *(v42 + 48) = v44;
        *(v42 + 64) = v43;
        *(v42 + 32) = v45;
      }
    }
  }

  else
  {
    v27 = a1;
  }

  return a1;
}