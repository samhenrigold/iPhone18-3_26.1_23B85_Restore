uint64_t sub_227FF3B6C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_227FF41B0;
  }

  else
  {
    v2 = sub_227FF3C80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FF3C80(uint64_t a1)
{
  v2 = *(v1 + 304);
  sub_2281395DC();
  if (v2)
  {
    v3 = v2;
    (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
    v4 = *(v1 + 264);
    v5 = *(v1 + 248);
    v6 = *(v1 + 192);
    sub_227FFA698(*(v1 + 168) + *(v1 + 256), v5, v3);
    v7 = v3;
    sub_227FFA31C(v5, v4, v3);

    *(v1 + 136) = v3;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v9 = swift_dynamicCast();
    v10 = *(v6 + 56);
    if (v9)
    {
      v11 = *(v1 + 200);
      v12 = *(v1 + 208);
      v13 = *(v1 + 184);
      v14 = *(v1 + 192);
      v15 = *(v1 + 176);
      v10(v15, 0, 1, v13);
      (*(v14 + 32))(v12, v15, v13);
      v16 = *(v14 + 16);
      v16(v11, v12, v13);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v17 = swift_allocError();
      v16(v18, v11, v13);
      v19 = swift_allocObject();
      *(v19 + 16) = 3;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v20 = sub_227FF9AA4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2F0, v19);

      v21 = *(v14 + 8);
      v21(v11, v13);
      *(v1 + 120) = 3;
      *(v1 + 128) = v20;
      sub_227FE7384();
      v22 = sub_22813999C();
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = swift_allocError();
        *v33 = 3;
        *(v33 + 8) = v20;
      }

      v34 = *(v1 + 208);
      v35 = *(v1 + 184);
      swift_willThrow();

      v21(v34, v35);
      v3 = v23;
    }

    else
    {
      v32 = *(v1 + 176);
      v10(v32, 1, 1, *(v1 + 184));
      sub_227FFB0A0(v32, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v37 = *(v1 + 280);
    v36 = *(v1 + 288);
    v38 = *(v1 + 240);
    v39 = swift_allocObject();
    v39[2] = v3;
    v39[3] = sub_227FFB2D8;
    v39[4] = v37;
    swift_beginAccess();
    *(v36 + 16) = sub_227FFB32C;
    *(v36 + 24) = v39;

    v40 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_227FFA994(v38, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v1 + 16));

    v31 = *(v1 + 8);
  }

  else
  {
    v24 = *(v1 + 264);
    v25 = *(v1 + 248);
    v26 = *(v1 + 232);
    v27 = *(v1 + 240);
    v28 = *(v1 + 216);
    v29 = *(v1 + 224);
    v30 = *(v1 + 144);
    sub_227FFA07C(*(v1 + 168) + *(v1 + 256), v25);
    sub_227FFA31C(v25, v24, 0);
    (*(v29 + 32))(v30, v26, v28);
    sub_2281324D4();
    sub_227FFA994(v27, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v1 + 16));

    v31 = *(v1 + 8);
  }

  return v31();
}

uint64_t sub_227FF41B0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 192);
  sub_227FFA698(*(v0 + 168) + *(v0 + 256), v3, v1);
  v5 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 3;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF9AA4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2F0, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 120) = 3;
    *(v0 + 128) = v18;
    sub_227FE7384();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 3;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 208);
    v25 = *(v0 + 184);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 176);
    v8(v22, 1, 1, *(v0 + 184));
    sub_227FFB0A0(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v27 = *(v0 + 280);
  v26 = *(v0 + 288);
  v28 = *(v0 + 240);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_227FFB2D8;
  v29[4] = v27;
  swift_beginAccess();
  *(v26 + 16) = sub_227FFB32C;
  *(v26 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_227FFA994(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_227FF45D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a1;
  v5[15] = a2;
  v7 = sub_228138B8C();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  type metadata accessor for PriorityModelSession.Input(0);
  v5[21] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[22] = v8;
  *v8 = v5;
  v8[1] = sub_227FF4700;

  return sub_227FF15E8(a4);
}

uint64_t sub_227FF4700(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227FF4858, 0, 0);
  }
}

uint64_t sub_227FF4858()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v0[11] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v0[12] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_227FF9A3C(v7, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  (*(v5 + 16))(v3, v6, v4);
  sub_2280CCB84(v3, v2);
  type metadata accessor for SharedData();
  v10 = swift_allocObject();
  v0[25] = v10;
  type metadata accessor for SKAssetManager();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  swift_initStackObject();
  v11 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v12 = FilterRules.init(assetManager:)(v11);
  if (v1)
  {

    sub_227FFA994(v0[21], type metadata accessor for PriorityModelSession.Input);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

    v13 = v0[1];

    return v13();
  }

  else
  {
    *(v10 + 16) = v12;

    *(v10 + 24) = v8;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v15 = v0[23];
    v16 = v0[21];
    v0[13] = v10;
    v17 = swift_task_alloc();
    v0[26] = v17;
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v0 + 8;
    v17[5] = v8;
    v18 = swift_task_alloc();
    v0[27] = v18;
    sub_228138ACC();
    *v18 = v0;
    v18[1] = sub_227FF4B5C;
    v19 = v0[14];

    return MEMORY[0x282200908](v19, v0 + 13, &unk_22813B440, v17, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
  }
}

uint64_t sub_227FF4B5C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_227FF4D30;
  }

  else
  {
    v2 = sub_227FF4C80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FF4C80()
{
  v1 = v0[21];

  sub_227FFA994(v1, type metadata accessor for PriorityModelSession.Input);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227FF4D30()
{

  sub_227FFA994(v0[21], type metadata accessor for PriorityModelSession.Input);

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227FF4F04()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 208) = boxed_opaque_existential_1;
  sub_227FF9A3C(v1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v4 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 216) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v2 + v4, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v5 = sub_2280D5C74();
  v6 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 224) = v5;
  *(v0 + 232) = v6;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 240) = v7;
  sub_227FFA05C((v0 + 56), v7 + 16);
  v8 = swift_allocObject();
  *(v0 + 248) = v8;
  *(v8 + 16) = sub_227FFB2DC;
  *(v8 + 24) = v7;

  sub_2281324C4();
  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  *v9 = v0;
  v9[1] = sub_227FF50B4;
  v10 = *(v0 + 144);

  return sub_227FF15E8(v10);
}

uint64_t sub_227FF50B4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    *(v4 + 272) = v1;
    v5 = sub_227FF52EC;
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = sub_227FF51DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227FF51DC()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 70, sub_227FFB2F8, v1);
  sub_227FE7384();
  v3 = swift_allocError();
  *v4 = 1;
  *(v4 + 8) = v2;
  swift_willThrow();

  *(v0 + 272) = v3;

  return MEMORY[0x2822009F8](sub_227FF52EC, 0, 0);
}

uint64_t sub_227FF52EC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  sub_227FFA698(*(v0 + 152) + *(v0 + 216), v3, v1);
  v5 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 3;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF9AA4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2F4, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 120) = 3;
    *(v0 + 128) = v18;
    sub_227FE7384();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 3;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 272);
    v25 = *(v0 + 192);
    v26 = *(v0 + 168);
    swift_willThrow();

    v19(v25, v26);
  }

  else
  {
    v22 = *(v0 + 160);
    v8(v22, 1, 1, *(v0 + 168));
    sub_227FFB0A0(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
    v21 = *(v0 + 272);
  }

  v27 = *(v0 + 240);
  v28 = *(v0 + 248);
  v29 = *(v0 + 200);
  v30 = swift_allocObject();
  v30[2] = v21;
  v30[3] = sub_227FFB2DC;
  v30[4] = v27;
  swift_beginAccess();
  *(v28 + 16) = sub_227FFB330;
  *(v28 + 24) = v30;

  v31 = v21;

  swift_willThrow();
  sub_2281324D4();
  sub_227FFA994(v29, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_227FF58A0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 248) = boxed_opaque_existential_1;
  sub_227FF9A3C(v1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v4 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 256) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v2 + v4, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v5 = sub_2280D5C74();
  v6 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 264) = v5;
  *(v0 + 272) = v6;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 280) = v7;
  sub_227FFA05C((v0 + 56), v7 + 16);
  v8 = swift_allocObject();
  *(v0 + 288) = v8;
  *(v8 + 16) = sub_227FFB2E0;
  *(v8 + 24) = v7;

  sub_2281324C4();
  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *v9 = v0;
  v9[1] = sub_227FF5A60;
  v10 = *(v0 + 232);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = *(v0 + 152);

  return sub_227FF64CC(v10, v5, v11, v12, v13);
}

uint64_t sub_227FF5A60()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_227FF60A4;
  }

  else
  {
    v2 = sub_227FF5B74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FF5B74(uint64_t a1)
{
  v2 = *(v1 + 304);
  sub_2281395DC();
  if (v2)
  {
    v3 = v2;
    (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
    v4 = *(v1 + 264);
    v5 = *(v1 + 248);
    v6 = *(v1 + 192);
    sub_227FFA698(*(v1 + 168) + *(v1 + 256), v5, v3);
    v7 = v3;
    sub_227FFA31C(v5, v4, v3);

    *(v1 + 136) = v3;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v9 = swift_dynamicCast();
    v10 = *(v6 + 56);
    if (v9)
    {
      v11 = *(v1 + 200);
      v12 = *(v1 + 208);
      v13 = *(v1 + 184);
      v14 = *(v1 + 192);
      v15 = *(v1 + 176);
      v10(v15, 0, 1, v13);
      (*(v14 + 32))(v12, v15, v13);
      v16 = *(v14 + 16);
      v16(v11, v12, v13);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v17 = swift_allocError();
      v16(v18, v11, v13);
      v19 = swift_allocObject();
      *(v19 + 16) = 3;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v20 = sub_227FF9AA4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2FC, v19);

      v21 = *(v14 + 8);
      v21(v11, v13);
      *(v1 + 120) = 3;
      *(v1 + 128) = v20;
      sub_227FE7384();
      v22 = sub_22813999C();
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = swift_allocError();
        *v33 = 3;
        *(v33 + 8) = v20;
      }

      v34 = *(v1 + 208);
      v35 = *(v1 + 184);
      swift_willThrow();

      v21(v34, v35);
      v3 = v23;
    }

    else
    {
      v32 = *(v1 + 176);
      v10(v32, 1, 1, *(v1 + 184));
      sub_227FFB0A0(v32, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v37 = *(v1 + 280);
    v36 = *(v1 + 288);
    v38 = *(v1 + 240);
    v39 = swift_allocObject();
    v39[2] = v3;
    v39[3] = sub_227FFB2E0;
    v39[4] = v37;
    swift_beginAccess();
    *(v36 + 16) = sub_227FFB334;
    *(v36 + 24) = v39;

    v40 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_227FFA994(v38, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v1 + 16));

    v31 = *(v1 + 8);
  }

  else
  {
    v24 = *(v1 + 264);
    v25 = *(v1 + 248);
    v26 = *(v1 + 232);
    v27 = *(v1 + 240);
    v28 = *(v1 + 216);
    v29 = *(v1 + 224);
    v30 = *(v1 + 144);
    sub_227FFA07C(*(v1 + 168) + *(v1 + 256), v25);
    sub_227FFA31C(v25, v24, 0);
    (*(v29 + 32))(v30, v26, v28);
    sub_2281324D4();
    sub_227FFA994(v27, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v1 + 16));

    v31 = *(v1 + 8);
  }

  return v31();
}

uint64_t sub_227FF60A4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 192);
  sub_227FFA698(*(v0 + 168) + *(v0 + 256), v3, v1);
  v5 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 3;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF9AA4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2FC, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 120) = 3;
    *(v0 + 128) = v18;
    sub_227FE7384();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 3;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 208);
    v25 = *(v0 + 184);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 176);
    v8(v22, 1, 1, *(v0 + 184));
    sub_227FFB0A0(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v27 = *(v0 + 280);
  v26 = *(v0 + 288);
  v28 = *(v0 + 240);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_227FFB2E0;
  v29[4] = v27;
  swift_beginAccess();
  *(v26 + 16) = sub_227FFB334;
  *(v26 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_227FFA994(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_227FF64CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a1;
  v5[15] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B0, &qword_22813B320);
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  type metadata accessor for PriorityModelSession.Input(0);
  v5[21] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[22] = v8;
  *v8 = v5;
  v8[1] = sub_227FF6600;

  return sub_227FF15E8(a4);
}

uint64_t sub_227FF6600(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227FF6758, 0, 0);
  }
}

uint64_t sub_227FF6758()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v0[11] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v0[12] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_227FF9A3C(v7, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  (*(v5 + 16))(v3, v6, v4);
  sub_2280CCE9C(v3, v2);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

    v12 = v0[1];

    return v12();
  }

  else
  {
    type metadata accessor for SharedData();
    v10 = swift_allocObject();
    v0[25] = v10;
    type metadata accessor for SKAssetManager();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    swift_initStackObject();
    v11 = SKAssetManager.init()();
    type metadata accessor for FilterRules(0);
    swift_allocObject();
    *(v10 + 16) = FilterRules.init(assetManager:)(v11);

    *(v10 + 24) = v8;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v14 = v0[23];
    v15 = v0[21];
    v0[13] = v10;
    v16 = swift_task_alloc();
    v0[26] = v16;
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v0 + 8;
    v16[5] = v8;
    v17 = swift_task_alloc();
    v0[27] = v17;
    sub_228138ACC();
    *v17 = v0;
    v17[1] = sub_227FF6A5C;
    v18 = v0[14];

    return MEMORY[0x282200908](v18, v0 + 13, &unk_22813B438, v16, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
  }
}

uint64_t sub_227FF6A5C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_227FF6B80;
  }

  else
  {
    v2 = sub_227FFB308;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FF6B80()
{

  sub_227FFA994(v0[21], type metadata accessor for PriorityModelSession.Input);

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227FF6D50()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 208) = boxed_opaque_existential_1;
  sub_227FF9A3C(v1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v4 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 216) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v2 + v4, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v5 = sub_2280D5C74();
  v6 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 224) = v5;
  *(v0 + 232) = v6;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 240) = v7;
  sub_227FFA05C((v0 + 56), v7 + 16);
  v8 = swift_allocObject();
  *(v0 + 248) = v8;
  *(v8 + 16) = sub_227FFB2E4;
  *(v8 + 24) = v7;

  sub_2281324C4();
  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  *v9 = v0;
  v9[1] = sub_227FF6F00;
  v10 = *(v0 + 144);

  return sub_227FF15E8(v10);
}

uint64_t sub_227FF6F00(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    *(v4 + 272) = v1;
    v5 = sub_227FF7138;
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = sub_227FF7028;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227FF7028()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 78, sub_227FFB304, v1);
  sub_227FE7384();
  v3 = swift_allocError();
  *v4 = 1;
  *(v4 + 8) = v2;
  swift_willThrow();

  *(v0 + 272) = v3;

  return MEMORY[0x2822009F8](sub_227FF7138, 0, 0);
}

uint64_t sub_227FF7138()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  sub_227FFA698(*(v0 + 152) + *(v0 + 216), v3, v1);
  v5 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 3;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF9AA4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB300, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 120) = 3;
    *(v0 + 128) = v18;
    sub_227FE7384();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 3;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 272);
    v25 = *(v0 + 192);
    v26 = *(v0 + 168);
    swift_willThrow();

    v19(v25, v26);
  }

  else
  {
    v22 = *(v0 + 160);
    v8(v22, 1, 1, *(v0 + 168));
    sub_227FFB0A0(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
    v21 = *(v0 + 272);
  }

  v27 = *(v0 + 240);
  v28 = *(v0 + 248);
  v29 = *(v0 + 200);
  v30 = swift_allocObject();
  v30[2] = v21;
  v30[3] = sub_227FFB2E4;
  v30[4] = v27;
  swift_beginAccess();
  *(v28 + 16) = sub_227FFB338;
  *(v28 + 24) = v30;

  v31 = v21;

  swift_willThrow();
  sub_2281324D4();
  sub_227FFA994(v29, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t ClassificationRequestHandler.deinit()
{
  v1 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  v2 = sub_22813882C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227FFA994(v0 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost, type metadata accessor for Signpost);

  return v0;
}

uint64_t ClassificationRequestHandler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  v2 = sub_22813882C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227FFA994(v0 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost, type metadata accessor for Signpost);

  return swift_deallocClassInstance();
}

uint64_t sub_227FF76C0(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  MEMORY[0x22AAB1970](*a1, a1[1]);
  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v2 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  MEMORY[0x22AAB1970](*(a1 + v2[6]), *(a1 + v2[6] + 8));
  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  MEMORY[0x22AAB1970](*(a1 + v2[7]), *(a1 + v2[7] + 8));
  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v5 = *(a1 + v2[8]);
  v3 = sub_22813998C();
  MEMORY[0x22AAB1970](v3);

  MEMORY[0x22AAB1970](0xD000000000000017, 0x8000000228144450);
  return HIDWORD(v5);
}

uint64_t sub_227FF7824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[9] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF78B8, 0, 0);
}

uint64_t sub_227FF78B8()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_227FF9A3C(v0[8], v1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v3 = v2[7];
  v4 = (v1 + v2[6]);
  v6 = *v4;
  v5 = v4[1];
  v8 = *(v1 + v3);
  v7 = *(v1 + v3 + 8);
  LODWORD(v2) = *(v1 + v2[8]);
  swift_bridgeObjectRetain_n();

  sub_227FFA994(v1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v0[5] = &type metadata for AnySessionInfo;
  v0[6] = &off_283B5E2B0;
  v9 = swift_allocObject();
  v0[2] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  *(v9 + 48) = v2;
  *(v9 + 56) = v8;
  *(v9 + 64) = v7;
  *(v9 + 72) = v2;
  type metadata accessor for PriorityModelSession();
  swift_allocObject();
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_227FF7A2C;

  return PriorityModelSession.init(sessionInfo:)((v0 + 2));
}

uint64_t sub_227FF7A2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_227FF7C54;
  }

  else
  {
    v4 = sub_227FF7B40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_227FF7B40()
{
  v9 = v0;
  v1 = v0[12];
  v2 = v0[7];
  v3 = (*(*(v1 + 56) + 16) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22813754C();
  v4 = *(v2 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_sessionCache);
  v8 = v1;
  if (((*(v4 + qword_2813C7D90))(&v8) & 1) == 0 || (v5 = v0[12], v6 = v0[13], os_unfair_lock_lock((v4 + 16)), sub_2281057F0((v4 + 24), v5, v4), os_unfair_lock_unlock((v4 + 16)), !v6))
  {

    v7 = v0[1];

    v7();
  }
}

uint64_t sub_227FF7C54()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_227FF7CB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_227FF7D98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v31 = &v30 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_2281386FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2281392AC();
  v17 = v16;
  *(&v35 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F0, &unk_22813B420);
  v36 = sub_227FFB100(&qword_2813C6E50, &qword_27D81E5F0, &unk_22813B420);
  *&v34 = v15;
  *(&v34 + 1) = v17;
  LOBYTE(v35) = 3;
  sub_227FFADC8(&v34, v37);
  __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v34);
  v37[5] = DynamicType;
  v34 = 0u;
  v35 = 0u;
  sub_228024ABC(&v34, v37);
  v19 = sub_2281392AC();
  v21 = v20;
  v22 = a1;
  sub_22805F58C(a1, v19, v21, 3);
  if (!a1)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_227FFB0A0(v11, &qword_27D81E598, &qword_22813B300);
  }

  v37[0] = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v24 = swift_dynamicCast();
  v25 = *(v13 + 56);
  v25(v11, v24 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    return sub_227FFB0A0(v11, &qword_27D81E598, &qword_22813B300);
  }

  v27 = v33;
  (*(v13 + 32))(v33, v11, v12);
  (*(v13 + 16))(v9, v27, v12);
  v25(v9, 0, 1, v12);
  v28 = v31;
  sub_227FC8164(v9, v31, &qword_27D81E598, &qword_22813B300);
  v29 = v32;
  sub_227FC8164(v28, v32, &qword_27D81E598, &qword_22813B300);
  sub_22805F55C(v29, 0xD000000000000019, 0x8000000228144390, 0);
  sub_227FFB0A0(v28, &qword_27D81E598, &qword_22813B300);
  sub_227FF8680(v9, &qword_27D81E600, &qword_22813B430, &qword_27D81E608, sub_228024ABC, sub_22805F52C);

  sub_227FFB0A0(v9, &qword_27D81E598, &qword_22813B300);
  return (*(v13 + 8))(v33, v12);
}

uint64_t sub_227FF820C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v31 = &v30 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_2281386FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2281392AC();
  v17 = v16;
  *(&v35 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E618, &qword_22813DE50);
  v36 = sub_227FFB100(&qword_27D81E620, &qword_27D81E618, &qword_22813DE50);
  *&v34 = v15;
  *(&v34 + 1) = v17;
  LOBYTE(v35) = 3;
  sub_227FFADC8(&v34, v37);
  __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v34);
  v37[5] = DynamicType;
  v34 = 0u;
  v35 = 0u;
  sub_228024C84(&v34, v37);
  v19 = sub_2281392AC();
  v21 = v20;
  v22 = a1;
  sub_22805FA1C(a1, v19, v21, 3);
  if (!a1)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_227FFB0A0(v11, &qword_27D81E598, &qword_22813B300);
  }

  v37[0] = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v24 = swift_dynamicCast();
  v25 = *(v13 + 56);
  v25(v11, v24 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    return sub_227FFB0A0(v11, &qword_27D81E598, &qword_22813B300);
  }

  v27 = v33;
  (*(v13 + 32))(v33, v11, v12);
  (*(v13 + 16))(v9, v27, v12);
  v25(v9, 0, 1, v12);
  v28 = v31;
  sub_227FC8164(v9, v31, &qword_27D81E598, &qword_22813B300);
  v29 = v32;
  sub_227FC8164(v28, v32, &qword_27D81E598, &qword_22813B300);
  sub_22805F7EC(v29, 0xD000000000000019, 0x8000000228144390, 0);
  sub_227FFB0A0(v28, &qword_27D81E598, &qword_22813B300);
  sub_227FF8680(v9, &qword_27D81E628, &qword_22813B460, &qword_27D81E630, sub_228024C84, sub_22805F5BC);

  sub_227FFB0A0(v9, &qword_27D81E598, &qword_22813B300);
  return (*(v13 + 8))(v33, v12);
}

uint64_t sub_227FF8680(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(__int128 *, char *), void (*a6)(char *, unint64_t, unint64_t, uint64_t))
{
  v91 = a6;
  v90 = a5;
  v86 = a3;
  v87 = a4;
  v88 = a1;
  v92 = sub_22813863C();
  v68 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v70 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22813865C();
  v78 = *(v71 - 8);
  v8 = MEMORY[0x28223BE20](v71);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - v10;
  v73 = sub_22813867C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v74 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2281386AC();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2281386CC();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2281386DC();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v62 - v16;
  v89 = sub_2281386FC();
  v18 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F8, &qword_22813DE20);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v62 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v62 - v27;
  v29 = v86;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, v86);
  *(&v94 + 1) = v65;
  v63 = sub_227FFB100(v87, a2, v29);
  v95 = v63;
  *&v93 = 0xD00000000000001CLL;
  *(&v93 + 1) = 0x80000002281443B0;
  v66 = 0x80000002281443B0;
  LOBYTE(v94) = 3;
  sub_227FFADC8(&v93, v96);
  __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v93);
  v97 = DynamicType;
  v93 = 0u;
  v94 = 0u;
  v90(&v93, v96);
  v31 = sub_2281385EC();
  (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
  sub_227FC8164(v28, v26, &qword_27D81E5F8, &qword_22813DE20);
  sub_227FC8164(v26, v23, &qword_27D81E5F8, &qword_22813DE20);
  v64 = "safetyErrorHasRegionalSource";
  v87 = v23;
  v32 = v89;
  v91(v23, 0xD00000000000001CLL, 0x80000002281443D0, 2);
  v86 = v26;
  sub_227FFB0A0(v26, &qword_27D81E5F8, &qword_22813DE20);
  v67 = v28;
  sub_227FFB0A0(v28, &qword_27D81E5F8, &qword_22813DE20);
  sub_227FC8164(v88, v17, &qword_27D81E598, &qword_22813B300);
  if ((*(v18 + 48))(v17, 1, v32) == 1)
  {
    return sub_227FFB0A0(v17, &qword_27D81E598, &qword_22813B300);
  }

  v34 = v85;
  (*(v18 + 32))(v85, v17, v32);
  v35 = v82;
  sub_2281386EC();
  v36 = v83;
  v37 = v84;
  if ((*(v83 + 88))(v35, v84) == *MEMORY[0x277D0DB78])
  {
    (*(v36 + 96))(v35, v37);
    v38 = v80;
    v39 = v79;
    v40 = v81;
    (*(v80 + 32))(v79, v35, v81);
    v41 = v75;
    sub_2281386BC();
    v42 = v76;
    v43 = v77;
    if ((*(v76 + 88))(v41, v77) == *MEMORY[0x277D0DA98])
    {
      v88 = v18;
      (*(v42 + 96))(v41, v43);
      (*(v72 + 32))(v74, v41, v73);
      v44 = v69;
      sub_2281385CC();
      v45 = sub_22813864C();
      v46 = *(v78 + 8);
      v78 += 8;
      result = v46(v44, v71);
      v47 = 0;
      v48 = *(v45 + 16);
      v49 = v68;
      v50 = v70;
      while (1)
      {
        if (v48 == v47)
        {

          v55 = v62;
          v54 = v74;
          sub_22813861C();
          v56 = sub_22813864C();
          v46(v55, v71);
          v57 = *(v56 + 16);

          v53 = v57 != 0;
          goto LABEL_13;
        }

        if (v47 >= *(v45 + 16))
        {
          break;
        }

        v51 = v92;
        (*(v49 + 16))(v50, v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47++, v92);
        v52 = sub_22813862C();
        result = (*(v49 + 8))(v50, v51);
        if (v52)
        {

          v53 = 1;
          v54 = v74;
LABEL_13:
          *(&v94 + 1) = v65;
          v95 = v63;
          *&v93 = 0xD00000000000001CLL;
          *(&v93 + 1) = v66;
          LOBYTE(v94) = 3;
          sub_227FFADC8(&v93, v96);
          __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
          v58 = swift_getDynamicType();
          __swift_destroy_boxed_opaque_existential_1Tm_1(&v93);
          v97 = v58;
          *(&v94 + 1) = MEMORY[0x277D839B0];
          LOBYTE(v93) = v53;
          v90(&v93, v96);
          v59 = v67;
          sub_2281385FC();
          v60 = v86;
          sub_227FC8164(v59, v86, &qword_27D81E5F8, &qword_22813DE20);
          v61 = v87;
          sub_227FC8164(v60, v87, &qword_27D81E5F8, &qword_22813DE20);
          v91(v61, 0xD00000000000001CLL, v64 | 0x8000000000000000, 2);
          sub_227FFB0A0(v60, &qword_27D81E5F8, &qword_22813DE20);
          sub_227FFB0A0(v59, &qword_27D81E5F8, &qword_22813DE20);
          (*(v72 + 8))(v54, v73);
          (*(v80 + 8))(v79, v81);
          return (*(v88 + 8))(v85, v89);
        }
      }

      __break(1u);
    }

    else
    {
      (*(v38 + 8))(v39, v40);
      (*(v18 + 8))(v34, v32);
      return (*(v42 + 8))(v41, v43);
    }
  }

  else
  {
    (*(v18 + 8))(v34, v32);
    return (*(v36 + 8))(v35, v37);
  }

  return result;
}

_OWORD *sub_227FF9254(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t *a5)
{
  *&v26 = a1;
  v27 = MEMORY[0x277D837D0];
  *(&v26 + 1) = a2;
  v8 = *a5;
  v10 = sub_22808CA18(a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a4 & 1) != 0)
  {
LABEL_7:
    v16 = *a5;
    if (v14)
    {
LABEL_8:
      v17 = (v16[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
      return sub_227FE5EAC(&v26, v17);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a4 & 1) == 0)
  {
    sub_22801CA00();
    goto LABEL_7;
  }

  sub_228018B50(v13, a4 & 1);
  v19 = sub_22808CA18(a3);
  if ((v14 & 1) != (v20 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E8, &unk_22813C660);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v19;
  v16 = *a5;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_227FC8164(a3, v25, &qword_27D81E5E8, &unk_22813C660);
  v21 = __swift_mutable_project_boxed_opaque_existential_0(&v26, v27);
  MEMORY[0x28223BE20](v21);
  v23 = (v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  sub_227FF963C(v10, v25, *v23, v23[1], v16);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(&v26);
}

_OWORD *sub_227FF9448(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t *a5)
{
  *&v26 = a1;
  v27 = MEMORY[0x277D837D0];
  *(&v26 + 1) = a2;
  v8 = *a5;
  v10 = sub_22808CE90(a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a4 & 1) != 0)
  {
LABEL_7:
    v16 = *a5;
    if (v14)
    {
LABEL_8:
      v17 = (v16[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
      return sub_227FE5EAC(&v26, v17);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a4 & 1) == 0)
  {
    sub_22801CE64();
    goto LABEL_7;
  }

  sub_2280193C0(v13, a4 & 1);
  v19 = sub_22808CE90(a3);
  if ((v14 & 1) != (v20 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E610, &unk_22813B450);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v19;
  v16 = *a5;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_227FC8164(a3, v25, &qword_27D81E610, &unk_22813B450);
  v21 = __swift_mutable_project_boxed_opaque_existential_0(&v26, v27);
  MEMORY[0x28223BE20](v21);
  v23 = (v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  sub_227FF963C(v10, v25, *v23, v23[1], v16);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(&v26);
}

_OWORD *sub_227FF963C(unint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v12 = a3;
  v13 = MEMORY[0x277D837D0];
  *(&v12 + 1) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 48 * a1);
  v7 = a2[2];
  v6[1] = a2[1];
  v6[2] = v7;
  *v6 = *a2;
  result = sub_227FE5EAC(&v12, (a5[7] + 32 * a1));
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_227FF96D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t *), uint64_t a6)
{
  v34 = sub_227FE41E0(MEMORY[0x277D84F90]);
  v9 = a1;
  sub_227FF7D98(a1);
  if (a5)
  {

    a5(&v34);
    sub_227FCE978(a5, a6);
  }

  if (os_variant_has_internal_ui())
  {
    v10 = sub_22813927C();
    v11 = [v10 lastPathComponent];

    v12 = sub_2281392AC();
    v14 = v13;

    v33[0] = v12;
    v33[1] = v14;
    MEMORY[0x22AAB1970](58, 0xE100000000000000);
    v15 = sub_22813998C();
    MEMORY[0x22AAB1970](v15);

    v16 = v12;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
    v32 = sub_227FFB100(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
    *&v29 = 0x454352554F535F5FLL;
    *(&v29 + 1) = 0xEA00000000005F5FLL;
    v30 = 3;
    sub_227FFADC8(&v29, v33);
    __swift_project_boxed_opaque_existential_1(&v29, v31);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v29);
    v33[5] = DynamicType;
    v31 = MEMORY[0x277D837D0];
    *&v29 = v16;
    *(&v29 + 1) = v14;
    sub_227FE5EAC(&v29, &v27);
    v18 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v18;
    v20 = __swift_mutable_project_boxed_opaque_existential_0(&v27, v28);
    MEMORY[0x28223BE20](v20);
    v22 = (&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    sub_227FF9254(*v22, v22[1], v33, isUniquelyReferenced_nonNull_native, &v26);
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v27);
    sub_227FFB0A0(v33, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCE978(a5, a6);
    return v26;
  }

  else
  {
    sub_227FCE978(a5, a6);

    return v34;
  }
}

uint64_t sub_227FF99D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FF9A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_227FF9AA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t *), uint64_t a6)
{
  v34 = sub_227FE4720(MEMORY[0x277D84F90]);
  v9 = a1;
  sub_227FF820C(a1);
  if (a5)
  {

    a5(&v34);
    sub_227FCE978(a5, a6);
  }

  if (os_variant_has_internal_ui())
  {
    v10 = sub_22813927C();
    v11 = [v10 lastPathComponent];

    v12 = sub_2281392AC();
    v14 = v13;

    v33[0] = v12;
    v33[1] = v14;
    MEMORY[0x22AAB1970](58, 0xE100000000000000);
    v15 = sub_22813998C();
    MEMORY[0x22AAB1970](v15);

    v16 = v12;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E530, &unk_22813BFF0);
    v32 = sub_227FFB100(&qword_27D81E538, &qword_27D81E530, &unk_22813BFF0);
    *&v29 = 0x454352554F535F5FLL;
    *(&v29 + 1) = 0xEA00000000005F5FLL;
    v30 = 3;
    sub_227FFADC8(&v29, v33);
    __swift_project_boxed_opaque_existential_1(&v29, v31);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v29);
    v33[5] = DynamicType;
    v31 = MEMORY[0x277D837D0];
    *&v29 = v16;
    *(&v29 + 1) = v14;
    sub_227FE5EAC(&v29, &v27);
    v18 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v18;
    v20 = __swift_mutable_project_boxed_opaque_existential_0(&v27, v28);
    MEMORY[0x28223BE20](v20);
    v22 = (&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    sub_227FF9448(*v22, v22[1], v33, isUniquelyReferenced_nonNull_native, &v26);
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v27);
    sub_227FFB0A0(v33, &qword_27D81E610, &unk_22813B450);
    sub_227FCE978(a5, a6);
    return v26;
  }

  else
  {
    sub_227FCE978(a5, a6);

    return v34;
  }
}

uint64_t sub_227FF9DA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v28[3] = v3;
  v28[4] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_227FF9A3C(a2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FFADC8(v28, v27);
  sub_227FFADC8(v28, v26);
  sub_227FFADC8(v28, v25);
  sub_227FFADC8(v28, v24);
  sub_22810A6C8();
  sub_22810A6D0();
  v5 = sub_22813880C();
  v6 = sub_2281396BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136447234;
    v9 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v10 = *v9;
    v11 = v9[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v27);
    v12 = sub_227FCC340(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = (__swift_project_boxed_opaque_existential_1(v26, v26[3]) + v3[6]);
    v14 = *v13;
    v15 = v13[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v26);
    v16 = sub_227FCC340(v14, v15, &v23);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = (__swift_project_boxed_opaque_existential_1(v25, v25[3]) + v3[7]);
    v18 = *v17;
    v19 = v17[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
    v20 = sub_227FCC340(v18, v19, &v23);

    *(v7 + 24) = v20;
    *(v7 + 32) = 1026;
    v21 = *(__swift_project_boxed_opaque_existential_1(v24, v24[3]) + v3[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v24);
    *(v7 + 34) = v21;
    *(v7 + 38) = 1026;
    *(v7 + 40) = qos_class_self();
    _os_log_impl(&dword_227FC3000, v5, v6, "Received request [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d, QoS: 0x%{public}x]", v7, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v24);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v27);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v26);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_1(v28);
}

uint64_t sub_227FFA05C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FFA07C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v28[3] = v3;
  v28[4] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_227FF9A3C(a2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FFADC8(v28, v27);
  sub_227FFADC8(v28, v26);
  sub_227FFADC8(v28, v25);
  sub_227FFADC8(v28, v24);
  v5 = sub_22813880C();
  v6 = sub_2281396BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446978;
    v9 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v10 = *v9;
    v11 = v9[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v27);
    v12 = sub_227FCC340(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = (__swift_project_boxed_opaque_existential_1(v26, v26[3]) + v3[6]);
    v14 = *v13;
    v15 = v13[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v26);
    v16 = sub_227FCC340(v14, v15, &v23);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = (__swift_project_boxed_opaque_existential_1(v25, v25[3]) + v3[7]);
    v18 = *v17;
    v19 = v17[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
    v20 = sub_227FCC340(v18, v19, &v23);

    *(v7 + 24) = v20;
    *(v7 + 32) = 1026;
    v21 = *(__swift_project_boxed_opaque_existential_1(v24, v24[3]) + v3[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v24);
    *(v7 + 34) = v21;
    _os_log_impl(&dword_227FC3000, v5, v6, "Successfully handled [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v24);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v27);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v26);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_1(v28);
}

uint64_t sub_227FFA31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22813828C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v18[3] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v18[4] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_227FF9A3C(a1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v11 = sub_22813882C();
  __swift_project_value_buffer(v11, qword_2813C8A08);
  v12 = sub_22813880C();
  v13 = sub_2281396CC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_227FC3000, v12, v13, "Sending Biome event for Classification request", v14, 2u);
    MEMORY[0x22AAB28A0](v14, -1, -1);
  }

  sub_22813886C();
  swift_allocObject();
  v15 = sub_22813885C();
  MEMORY[0x28223BE20](v15);
  *(&v17 - 4) = v18;
  *(&v17 - 3) = a2;
  *(&v17 - 2) = a3;
  sub_22813884C();
  (*(v7 + 8))(v9, v6);

  return __swift_destroy_boxed_opaque_existential_1Tm_1(v18);
}

uint64_t sub_227FFA698(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v35[3] = v5;
  v35[4] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  sub_227FF9A3C(a2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FFADC8(v35, v34);
  sub_227FFADC8(v35, v33);
  sub_227FFADC8(v35, v32);
  sub_227FFADC8(v35, v31);
  v7 = a3;
  v8 = sub_22813880C();
  v9 = sub_2281396DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136447234;
    v12 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v13 = *v12;
    v14 = v12[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v34);
    v15 = sub_227FCC340(v13, v14, &v30);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v16 = (__swift_project_boxed_opaque_existential_1(v33, v33[3]) + v5[6]);
    v17 = *v16;
    v18 = v16[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v33);
    v19 = sub_227FCC340(v17, v18, &v30);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2082;
    v20 = (__swift_project_boxed_opaque_existential_1(v32, v32[3]) + v5[7]);
    v21 = *v20;
    v22 = v20[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v32);
    v23 = sub_227FCC340(v21, v22, &v30);

    *(v10 + 24) = v23;
    *(v10 + 32) = 1026;
    LODWORD(v23) = *(__swift_project_boxed_opaque_existential_1(v31, v31[3]) + v5[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v31);
    *(v10 + 34) = v23;
    *(v10 + 38) = 2082;
    swift_getErrorValue();
    v24 = Error.loggingDescription.getter(v28, v29);
    v26 = sub_227FCC340(v24, v25, &v30);

    *(v10 + 40) = v26;
    _os_log_impl(&dword_227FC3000, v8, v9, "Request failed [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d] with error: %{public}s", v10, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v31);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v34);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v33);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v32);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_1(v35);
}

uint64_t sub_227FFA994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FFAA00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227FFAA48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227FFB30C;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_15Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_227FFAB4C()
{
  result = qword_27D81E5C8;
  if (!qword_27D81E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E5C8);
  }

  return result;
}

uint64_t sub_227FFABC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FFAC00(uint64_t a1)
{
  result = sub_22813882C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Signpost(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_227FFAD40(uint64_t a1)
{
  result = sub_228136FCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_227FFADC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_227FFAE2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227FFAEEC;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_227FFAEEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227FFAFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227FFB310;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_227FFB0A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FFB100(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227FFB174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227FFB314;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_227FFB234()
{
  v1 = *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_227FF76C0(v2);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientID.clientApplicationID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientID.clientApplicationID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_227FFB4C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_227FFB57C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_227FFB660@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a1(0);
  return sub_228137D6C();
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.allowedLanguages.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_227FFB800(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  return sub_228137D6C();
}

uint64_t sub_227FFBAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FFBC28(&qword_27D81E680, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_227FFBB40(uint64_t a1)
{
  v2 = sub_227FFBC28(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_227FFBBAC(uint64_t a1, uint64_t a2)
{
  sub_227FFBC28(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);

  return sub_228137EDC();
}

uint64_t sub_227FFBC28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227FFBCA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_228137FBC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22813A4B0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v13 = sub_228137F9C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_228137FAC();
}

uint64_t sub_227FFBE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_228137DCC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_228137E7C();
    }
  }

  return result;
}

uint64_t sub_227FFBED0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_228137F6C(), !v5))
  {
    a4(0);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_227FFBF8C(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2281399BC() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_228137D7C();
  sub_227FFBC28(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_227FFC0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_227FFC12C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_227FFC1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FFBC28(&qword_27D81E678, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_227FFC280(uint64_t a1)
{
  v2 = sub_227FFBC28(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_227FFC2EC(uint64_t a1, uint64_t a2)
{
  sub_227FFBC28(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);

  return sub_228137EDC();
}

uint64_t sub_227FFC368(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_2281399BC() & 1) == 0)
  {
    return 0;
  }

  sub_228137D7C();
  sub_227FFBC28(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_227FFC440()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5BF0);
  __swift_project_value_buffer(v0, qword_2813C5BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "allowed_languages";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "should_skip_language_check";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "recognizer_max_samples";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_227FFC678@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_228137DCC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_228137E4C();
        break;
      case 2:
        sub_228137E0C();
        break;
      case 1:
        sub_228137E5C();
        break;
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_228137F5C(), !v4))
  {
    if (*(v3 + 8) != 1 || (result = sub_228137F1C(), !v4))
    {
      if (!*(v3 + 12) || (result = sub_228137F4C(), !v4))
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
        return sub_228137D5C();
      }
    }
  }

  return result;
}

uint64_t sub_227FFC8D8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_228139AAC();
  a1(0);
  sub_227FFBC28(a2, a3, a4);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_227FFC960@<X0>(uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  return sub_228137D6C();
}

uint64_t sub_227FFC9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_227FFCA24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_227FFCAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FFBC28(&qword_27D81E670, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_227FFCB90@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_227FFCC2C(uint64_t a1)
{
  v2 = sub_227FFBC28(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_227FFCC98(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_227FFCCF0(uint64_t a1, uint64_t a2)
{
  sub_227FFBC28(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);

  return sub_228137EDC();
}

uint64_t sub_227FFCD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t _s16SummarizationKit48Com_Apple_Summarizationkit_Proto_LangCheckConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_228037F4C(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  sub_228137D7C();
  sub_227FFBC28(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FFD368(uint64_t a1)
{
  result = sub_228137D7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_227FFD3F8(uint64_t a1)
{
  sub_227FFD494();
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227FFD494()
{
  if (!qword_2813C4680)
  {
    v0 = sub_22813956C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C4680);
    }
  }
}

uint64_t FilterRules.init()()
{
  v1 = (v0 + qword_2813C8080);
  *v1 = 0x75527265746C6946;
  v1[1] = 0xEB0000000073656CLL;
  v2 = (v0 + qword_2813C8088);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C8070);
  *v3 = 0x73656C755241544FLL;
  v3[1] = 0xE800000000000000;
  v4 = qword_2813C8078;
  v5 = MEMORY[0x277D84F90];
  *(v0 + v4) = sub_227FE50AC(MEMORY[0x277D84F90]);
  v6 = qword_2813C8068;
  *(v0 + v6) = sub_227FE51B0(v5);
  v7 = *v1;
  v8 = v1[1];
  v9 = *v2;
  v10 = v2[1];
  v11 = *v3;
  v12 = v3[1];

  v13 = sub_227FDBD74(v7, v8, v9, v10, v11, v12);
  v14 = v13 + *(*v13 + 96);
  swift_beginAccess();
  if (*(*(v14 + 8) + 16))
  {
    sub_227FFD7D8();
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 20;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    v16 = sub_227FF96D4(0, 0xD00000000000006ALL, 0x80000002281445C0, 26, sub_227FFE830, v15);
    sub_227FDB3CC();
    swift_allocError();
    *v17 = 20;
    *(v17 + 8) = v16;
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_227FFD7D8()
{
  v1 = v0;
  v61 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v2 = *(v61 - 8);
  v3 = MEMORY[0x28223BE20](v61);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v63 = &v55 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - v7;
  v9 = v0 + *(*v0 + 96);
  result = swift_beginAccess();
  v11 = *(v9 + 8);
  v60 = *(v11 + 16);
  if (!v60)
  {
    return result;
  }

  v62 = qword_2813C8068;
  v12 = qword_2813C8078;
  v56 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v59 = v11 + v56;

  v13 = 0;
  v14 = 0;
  v57 = v11;
  v58 = v2;
  while (v14 < *(v11 + 16))
  {
    v65 = *(v2 + 72);
    sub_227FFE9B0(v59 + v65 * v14, v8);
    v15 = &v8[*(v61 + 32)];
    v16 = v15[1];
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = *v15;
    v18 = v62;
    swift_beginAccess();
    sub_227FFE9B0(v8, v63);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v1 + v18);
    v20 = v66;
    *(v1 + v18) = 0x8000000000000000;
    v21 = sub_22808C964(v17, v16);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_36;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_22801A350(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_22808C964(v17, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_40;
      }

LABEL_10:
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v31 = v21;
    sub_22801D5BC();
    v21 = v31;
    if ((v27 & 1) == 0)
    {
LABEL_13:
      v30 = v66;
      v66[(v21 >> 6) + 8] |= 1 << v21;
      v32 = (v30[6] + 16 * v21);
      *v32 = v17;
      v32[1] = v16;
      sub_227FFEA84(v63, v30[7] + v21 * v65);
      v33 = v30[2];
      v25 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v25)
      {
        goto LABEL_38;
      }

      v30[2] = v34;
      goto LABEL_15;
    }

LABEL_11:
    v29 = v21;

    v30 = v66;
    sub_227FFEAE8(v63, v66[7] + v29 * v65);
LABEL_15:
    *(v1 + v62) = v30;

    swift_endAccess();
LABEL_16:
    v35 = *v8;
    v36 = v8[8];
    sub_227FFE9B0(v8, v64);
    swift_beginAccess();
    sub_227FFEA74(v13, 0);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v1 + v12);
    v38 = v66;
    *(v1 + v12) = 0x8000000000000000;
    v40 = sub_22808CF24(v35, v36);
    v41 = v38[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_35;
    }

    v44 = v39;
    if (v38[3] >= v43)
    {
      if (v37)
      {
        *(v1 + v12) = v38;
        if (v39)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_22801D44C();
        v38 = v66;
        *(v1 + v12) = v66;
        if (v44)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_22801A094(v43, v37);
      v38 = v66;
      v45 = sub_22808CF24(v35, v36);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_39;
      }

      v40 = v45;
      *(v1 + v12) = v38;
      if (v44)
      {
        goto LABEL_25;
      }
    }

    v38[(v40 >> 6) + 8] |= 1 << v40;
    v47 = v38[6] + 16 * v40;
    *v47 = v35;
    *(v47 + 8) = v36;
    *(v38[7] + 8 * v40) = MEMORY[0x277D84F90];
    v48 = v38[2];
    v25 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v25)
    {
      goto LABEL_37;
    }

    v38[2] = v49;
LABEL_25:
    v50 = v38[7];
    v51 = *(v50 + 8 * v40);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v50 + 8 * v40) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_228133AF8(0, v51[2] + 1, 1, v51);
      *(v50 + 8 * v40) = v51;
    }

    v11 = v57;
    v54 = v51[2];
    v53 = v51[3];
    if (v54 >= v53 >> 1)
    {
      v51 = sub_228133AF8((v53 > 1), v54 + 1, 1, v51);
      *(v50 + 8 * v40) = v51;
    }

    v2 = v58;
    ++v14;
    v51[2] = v54 + 1;
    sub_227FFEA84(v64, v51 + v56 + v54 * v65);
    swift_endAccess();
    sub_227FFEA14(v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
    v13 = sub_227FFE21C;
    if (v60 == v14)
    {
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_2281399EC();
  __break(1u);
LABEL_40:
  result = sub_2281399EC();
  __break(1u);
  return result;
}

uint64_t FilterRules.init(filePath:)(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + qword_2813C8080);
  *v5 = 0x75527265746C6946;
  v5[1] = 0xEB0000000073656CLL;
  v6 = (v2 + qword_2813C8088);
  *v6 = 0x7478746270;
  v6[1] = 0xE500000000000000;
  v7 = (v2 + qword_2813C8070);
  *v7 = 0x73656C755241544FLL;
  v7[1] = 0xE800000000000000;
  v8 = qword_2813C8078;
  v9 = MEMORY[0x277D84F90];
  *(v2 + v8) = sub_227FE50AC(MEMORY[0x277D84F90]);
  v10 = qword_2813C8068;
  *(v2 + v10) = sub_227FE51B0(v9);
  v11 = sub_227FDE070(a1, a2);
  v12 = v11 + *(*v11 + 96);
  swift_beginAccess();
  if (*(*(v12 + 8) + 16))
  {
    sub_227FFD7D8();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 20;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    v14 = sub_227FF96D4(0, 0xD00000000000006ALL, 0x80000002281445C0, 35, sub_227FFEB4C, v13);
    sub_227FDB3CC();
    swift_allocError();
    *v15 = 20;
    *(v15 + 8) = v14;
    swift_willThrow();
  }

  return v11;
}

uint64_t FilterRules.init(assetManager:)(uint64_t a1)
{
  v3 = (v1 + qword_2813C8080);
  *v3 = 0x75527265746C6946;
  v3[1] = 0xEB0000000073656CLL;
  v4 = (v1 + qword_2813C8088);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v1 + qword_2813C8070);
  *v5 = 0x73656C755241544FLL;
  v5[1] = 0xE800000000000000;
  v6 = qword_2813C8078;
  v7 = MEMORY[0x277D84F90];
  *(v1 + v6) = sub_227FE50AC(MEMORY[0x277D84F90]);
  v8 = qword_2813C8068;
  *(v1 + v8) = sub_227FE51B0(v7);
  v9 = *v3;
  v10 = v3[1];
  v11 = *v4;
  v12 = v4[1];
  v13 = *v5;
  v14 = v5[1];

  v15 = sub_227FE0124(a1, 1, v9, v10, v11, v12, v13, v14);
  v16 = v15 + *(*v15 + 96);
  swift_beginAccess();
  if (*(*(v16 + 8) + 16))
  {
    sub_227FFD7D8();
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 20;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(0, 0xD00000000000006ALL, 0x80000002281445C0, 50, sub_227FFEB50, v17);
    sub_227FDB3CC();
    swift_allocError();
    *v19 = 20;
    *(v19 + 8) = v18;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_227FFE22C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v36 = a1;
  v41[3] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = qword_2813C8078;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (*(v14 + 16) && (v15 = sub_22808CF24(v11, v12), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    v18 = *(v17 + 16);
    v38 = v18;
    if (v18)
    {
      v37 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v19 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v19 = v36;
      }

      v20 = 7;
      if (((a2 >> 60) & ((v36 & 0x800000000000000) == 0)) != 0)
      {
        v20 = 11;
      }

      v34[1] = v4;
      v35 = (v20 | (v19 << 16));

      v21 = 0;
      while (1)
      {
        if (v21 >= *(v17 + 16))
        {
          __break(1u);
        }

        sub_227FFE9B0(v37 + *(v8 + 72) * v21, v10);
        if (v10[48] != 255)
        {
          v22 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v23 = sub_22813927C();
          v41[0] = 0;
          v24 = [v22 initWithPattern:v23 options:0 error:v41];

          v25 = v41[0];
          if (!v24)
          {
            v33 = v41[0];

            sub_228136E2C();

            swift_willThrow();
            sub_227FFEA14(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
            return v18 & 1;
          }

          v40 = a2;
          v41[0] = 15;
          v41[1] = v35;
          v39 = v36;
          v26 = v25;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E550, &qword_22813B0F0);
          sub_227FEB294();
          sub_227FDB420();
          v27 = sub_22813973C();
          v29 = v28;
          v30 = sub_22813927C();
          v31 = [v24 firstMatchInString:v30 options:0 range:{v27, v29}];

          if (v31)
          {

            sub_227FFEA14(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
            LOBYTE(v18) = 1;
            return v18 & 1;
          }
        }

        ++v21;
        sub_227FFEA14(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        if (v38 == v21)
        {

          LOBYTE(v18) = 0;
          return v18 & 1;
        }
      }
    }
  }

  else
  {
    swift_endAccess();
    LOBYTE(v18) = 0;
  }

  return v18 & 1;
}

uint64_t sub_227FFE5D8()
{
}

uint64_t FilterRules.deinit()
{
  sub_227FFEA14(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  return v0;
}

uint64_t FilterRules.__deallocating_deinit()
{
  sub_227FFEA14(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for FilterRules(uint64_t a1)
{
  result = qword_2813C8058;
  if (!qword_2813C8058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FFE9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FFEA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FFEA74(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227FFEA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FFEAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FFEB54(uint64_t a1)
{
  type metadata accessor for SharedData();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E698, &qword_22813BA20);
  swift_allocObject();
  result = sub_228139B5C();
  qword_2813C8B60 = result;
  return result;
}

uint64_t sub_227FFEBC4()
{

  return swift_deallocClassInstance();
}

uint64_t Prompt.Rendering.fixedPrompt.getter(uint64_t a1)
{
  sub_22813788C();
  sub_227FDB420();
  v1 = sub_2281397BC();

  return v1;
}

uint64_t sub_227FFECCC()
{
  v1 = sub_22813805C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v22 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  sub_22800C8EC();
  v14 = swift_dynamicCastMetatype();
  v15 = *(v2 + 16);
  if (v14)
  {
LABEL_4:
    v15(v11, v0, v1);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v16 = sub_22813999C();
    if (v16)
    {
      v17 = v16;
      (*(v2 + 8))(v11, v1);
    }

    else
    {
      v17 = swift_allocError();
      (*(v2 + 32))(v18, v11, v1);
    }

    v19 = sub_228136E1C();

    v20 = NSError.loggingDescription.getter();
    return v20;
  }

  v15(v13, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E748, &qword_22813BB40);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm_2(v23);
    goto LABEL_4;
  }

  v15(v8, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E750, &qword_22813BB48);
  if (swift_dynamicCast())
  {
    sub_22800C938(v23, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v20 = sub_2281399CC();
    __swift_destroy_boxed_opaque_existential_1Tm_2(v22);
  }

  else
  {
    v15(v5, v0, v1);
    v20 = sub_22813930C();
  }

  (*(v2 + 8))(v8, v1);
  return v20;
}

uint64_t sub_227FFF010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  type metadata accessor for SummarizationParameters(0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = sub_22813805C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_2281376EC();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for ModelBundleIdentifier(0);
  v4[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6D8, &unk_22813BAC0);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_22813807C();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v9 = sub_22813750C();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FFF2F4, 0, 0);
}

uint64_t sub_227FFF2F4()
{
  sub_2280017F4(v0[7], v0[29]);
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_227FFF934;
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = MEMORY[0x277D84F90];

  return sub_228008880(v4, v3, v7, v8, v5, v1 + 40, v6);
}

uint64_t sub_227FFF934()
{
  v2 = *v1;
  v2[35] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227FFFC80, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[36] = v3;
    v4 = sub_22800CA68(&qword_2813C8708, MEMORY[0x277D71A98], MEMORY[0x277D71A50]);
    v2[37] = v4;
    *v3 = v2;
    v3[1] = sub_227FFFAFC;
    v5 = v2[33];
    v6 = v2[30];
    v7 = v2[22];

    return MEMORY[0x282165A80](v5, v6, v7, v4);
  }
}

uint64_t sub_227FFFAFC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[23] + 8))(v2[25], v2[22]);
    v3 = sub_228000234;
  }

  else
  {
    v4 = v2[29];
    v5 = v2[26];
    v6 = v2[27];
    v7 = v2[25];
    v8 = v2[22];
    v9 = v2[23];
    v10 = *(v9 + 8);
    v2[39] = v10;
    v2[40] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);
    v11 = *(v6 + 8);
    v2[41] = v11;
    v2[42] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v4, v5);
    v3 = sub_227FC621C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227FFFC80()
{
  v53 = v0;
  v1 = *(v0 + 280);
  (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);

    (*(v6 + 32))(v4, v3, v5);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 112);
    v51 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 56);
    v13 = sub_22813882C();
    __swift_project_value_buffer(v13, qword_2813C8A20);
    sub_227FCAA80(v12, v10, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v12, v11, type metadata accessor for SummarizationParameters);
    v14 = *(v8 + 16);
    v14(v7, v51, v9);
    v15 = sub_22813880C();
    v16 = sub_2281396DC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);
    v50 = *(v0 + 96);
    v21 = *(v0 + 80);
    if (v17)
    {
      v48 = v16;
      v49 = v14;
      v22 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52[0] = v47;
      *v22 = 136446722;
      *(v0 + 384) = *(v20 + 32);
      v23 = sub_2281392EC();
      v25 = v24;
      log = v15;
      sub_227FCAB98(v20, type metadata accessor for SummarizationParameters);
      v26 = sub_227FCC340(v23, v25, v52);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v0 + 16) = *(v21 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v27 = sub_2281392EC();
      v29 = v28;
      sub_227FCAB98(v21, type metadata accessor for SummarizationParameters);
      v30 = sub_227FCC340(v27, v29, v52);

      *(v22 + 14) = v30;
      *(v22 + 22) = 2082;
      v31 = sub_227FFECCC();
      v33 = v32;
      v34 = *(v18 + 8);
      v34(v19, v50);
      v35 = sub_227FCC340(v31, v33, v52);

      *(v22 + 24) = v35;
      _os_log_impl(&dword_227FC3000, log, v48, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v47, -1, -1);
      v36 = v22;
      v14 = v49;
      MEMORY[0x22AAB28A0](v36, -1, -1);
    }

    else
    {

      v34 = *(v18 + 8);
      v34(v19, v50);
      sub_227FCAB98(v21, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v20, type metadata accessor for SummarizationParameters);
    }

    v37 = *(v0 + 120);
    v38 = *(v0 + 96);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v39 = swift_allocError();
    v14(v40, v37, v38);
    v41 = swift_allocObject();
    *(v41 + 16) = 56;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    v42 = sub_227FF96D4(v39, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8, v41);

    sub_227FDB3CC();
    swift_allocError();
    *v43 = 56;
    *(v43 + 8) = v42;
    swift_willThrow();
    v34(v37, v38);
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_228000234()
{
  v53 = v0;
  v1 = *(v0 + 304);
  (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);

    (*(v6 + 32))(v4, v3, v5);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 112);
    v51 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 56);
    v13 = sub_22813882C();
    __swift_project_value_buffer(v13, qword_2813C8A20);
    sub_227FCAA80(v12, v10, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v12, v11, type metadata accessor for SummarizationParameters);
    v14 = *(v8 + 16);
    v14(v7, v51, v9);
    v15 = sub_22813880C();
    v16 = sub_2281396DC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);
    v50 = *(v0 + 96);
    v21 = *(v0 + 80);
    if (v17)
    {
      v48 = v16;
      v49 = v14;
      v22 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52[0] = v47;
      *v22 = 136446722;
      *(v0 + 384) = *(v20 + 32);
      v23 = sub_2281392EC();
      v25 = v24;
      log = v15;
      sub_227FCAB98(v20, type metadata accessor for SummarizationParameters);
      v26 = sub_227FCC340(v23, v25, v52);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v0 + 16) = *(v21 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v27 = sub_2281392EC();
      v29 = v28;
      sub_227FCAB98(v21, type metadata accessor for SummarizationParameters);
      v30 = sub_227FCC340(v27, v29, v52);

      *(v22 + 14) = v30;
      *(v22 + 22) = 2082;
      v31 = sub_227FFECCC();
      v33 = v32;
      v34 = *(v18 + 8);
      v34(v19, v50);
      v35 = sub_227FCC340(v31, v33, v52);

      *(v22 + 24) = v35;
      _os_log_impl(&dword_227FC3000, log, v48, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v47, -1, -1);
      v36 = v22;
      v14 = v49;
      MEMORY[0x22AAB28A0](v36, -1, -1);
    }

    else
    {

      v34 = *(v18 + 8);
      v34(v19, v50);
      sub_227FCAB98(v21, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v20, type metadata accessor for SummarizationParameters);
    }

    v37 = *(v0 + 120);
    v38 = *(v0 + 96);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v39 = swift_allocError();
    v14(v40, v37, v38);
    v41 = swift_allocObject();
    *(v41 + 16) = 56;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    v42 = sub_227FF96D4(v39, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8, v41);

    sub_227FDB3CC();
    swift_allocError();
    *v43 = 56;
    *(v43 + 8) = v42;
    swift_willThrow();
    v34(v37, v38);
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_2280007E8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_228000AE8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[46] = v4;
    *v4 = v3;
    v4[1] = sub_22800098C;
    v5 = v2[37];
    v6 = v2[32];
    v7 = v2[30];
    v8 = v2[22];

    return MEMORY[0x282165A80](v6, v7, v8, v5);
  }
}

uint64_t sub_22800098C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    (*(v2 + 312))(*(v2 + 192), *(v2 + 176));
    v3 = sub_228001228;
  }

  else
  {
    v4 = *(v2 + 328);
    v5 = *(v2 + 224);
    v6 = *(v2 + 208);
    (*(v2 + 312))(*(v2 + 192), *(v2 + 176));
    v4(v5, v6);
    v3 = sub_2280010B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228000AE8()
{
  v56 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  (*(v0 + 328))(*(v0 + 224), *(v0 + 208));
  (*(v4 + 8))(v2, v3);
  *(v0 + 32) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    (*(v9 + 32))(v7, v6, v8);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 112);
    v54 = *(v0 + 120);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 56);
    v16 = sub_22813882C();
    __swift_project_value_buffer(v16, qword_2813C8A20);
    sub_227FCAA80(v15, v13, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v15, v14, type metadata accessor for SummarizationParameters);
    v17 = *(v11 + 16);
    v17(v10, v54, v12);
    v18 = sub_22813880C();
    v19 = sub_2281396DC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);
    v53 = *(v0 + 96);
    v24 = *(v0 + 80);
    if (v20)
    {
      v51 = v19;
      v52 = v17;
      v25 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55[0] = v50;
      *v25 = 136446722;
      *(v0 + 384) = *(v23 + 32);
      v26 = sub_2281392EC();
      v28 = v27;
      log = v18;
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
      v29 = sub_227FCC340(v26, v28, v55);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v0 + 16) = *(v24 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v30 = sub_2281392EC();
      v32 = v31;
      sub_227FCAB98(v24, type metadata accessor for SummarizationParameters);
      v33 = sub_227FCC340(v30, v32, v55);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2082;
      v34 = sub_227FFECCC();
      v36 = v35;
      v37 = *(v21 + 8);
      v37(v22, v53);
      v38 = sub_227FCC340(v34, v36, v55);

      *(v25 + 24) = v38;
      _os_log_impl(&dword_227FC3000, log, v51, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v50, -1, -1);
      v39 = v25;
      v17 = v52;
      MEMORY[0x22AAB28A0](v39, -1, -1);
    }

    else
    {

      v37 = *(v21 + 8);
      v37(v22, v53);
      sub_227FCAB98(v24, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
    }

    v40 = *(v0 + 120);
    v41 = *(v0 + 96);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v42 = swift_allocError();
    v17(v43, v40, v41);
    v44 = swift_allocObject();
    *(v44 + 16) = 56;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    v45 = sub_227FF96D4(v42, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8, v44);

    sub_227FDB3CC();
    swift_allocError();
    *v46 = 56;
    *(v46 + 8) = v45;
    swift_willThrow();
    v37(v40, v41);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_2280010B4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  (*(v4 + 8))(v2, v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  sub_2281374FC();
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_228001228()
{
  v56 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  (*(v0 + 328))(*(v0 + 224), *(v0 + 208));
  (*(v4 + 8))(v2, v3);
  *(v0 + 32) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    (*(v9 + 32))(v7, v6, v8);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 112);
    v54 = *(v0 + 120);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 56);
    v16 = sub_22813882C();
    __swift_project_value_buffer(v16, qword_2813C8A20);
    sub_227FCAA80(v15, v13, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v15, v14, type metadata accessor for SummarizationParameters);
    v17 = *(v11 + 16);
    v17(v10, v54, v12);
    v18 = sub_22813880C();
    v19 = sub_2281396DC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);
    v53 = *(v0 + 96);
    v24 = *(v0 + 80);
    if (v20)
    {
      v51 = v19;
      v52 = v17;
      v25 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55[0] = v50;
      *v25 = 136446722;
      *(v0 + 384) = *(v23 + 32);
      v26 = sub_2281392EC();
      v28 = v27;
      log = v18;
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
      v29 = sub_227FCC340(v26, v28, v55);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v0 + 16) = *(v24 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v30 = sub_2281392EC();
      v32 = v31;
      sub_227FCAB98(v24, type metadata accessor for SummarizationParameters);
      v33 = sub_227FCC340(v30, v32, v55);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2082;
      v34 = sub_227FFECCC();
      v36 = v35;
      v37 = *(v21 + 8);
      v37(v22, v53);
      v38 = sub_227FCC340(v34, v36, v55);

      *(v25 + 24) = v38;
      _os_log_impl(&dword_227FC3000, log, v51, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v50, -1, -1);
      v39 = v25;
      v17 = v52;
      MEMORY[0x22AAB28A0](v39, -1, -1);
    }

    else
    {

      v37 = *(v21 + 8);
      v37(v22, v53);
      sub_227FCAB98(v24, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
    }

    v40 = *(v0 + 120);
    v41 = *(v0 + 96);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v42 = swift_allocError();
    v17(v43, v40, v41);
    v44 = swift_allocObject();
    *(v44 + 16) = 56;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    v45 = sub_227FF96D4(v42, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8, v44);

    sub_227FDB3CC();
    swift_allocError();
    *v46 = 56;
    *(v46 + 8) = v45;
    swift_willThrow();
    v37(v40, v41);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_2280017F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v40 = sub_2281373DC();
  v38 = *(v40 - 8);
  v5 = MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = sub_22813791C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ModelBundleIdentifier(0);
  v13 = MEMORY[0x28223BE20](v35);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v36 = sub_22800C950(a1);
  v41 = v18;
  v19 = type metadata accessor for PromptManager(0);
  sub_227FCAA80(v3 + *(v19 + 20), v17, type metadata accessor for ModelBundleIdentifier);
  (*(v10 + 16))(v12, v3 + *(v19 + 24), v9);
  v20 = a1[8];
  v21 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v20);
  v22 = (*(*(v21 + 8) + 8))(v20);
  v23 = v42;
  sub_2280F94B0(v22, v24, v8);
  if (v23)
  {

    (*(v10 + 8))(v12, v9);
    v25 = v17;
    return sub_227FCAB98(v25, type metadata accessor for ModelBundleIdentifier);
  }

  v42 = v8;
  v34 = v9;
  sub_227FCAA80(v17, v15, type metadata accessor for ModelBundleIdentifier);
  if (swift_getEnumCaseMultiPayload() < 2)
  {

    sub_227FCAB98(v15, type metadata accessor for ModelBundleIdentifier);
    v26 = v38;
    v27 = v42;
    v28 = v40;
    (*(v38 + 16))(v37, v42, v40);
    sub_22813806C();
    (*(v26 + 8))(v27, v28);
    (*(v10 + 8))(v12, v34);
    v25 = v17;
    return sub_227FCAB98(v25, type metadata accessor for ModelBundleIdentifier);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v30 = sub_22813882C();
  __swift_project_value_buffer(v30, qword_2813C89F0);
  v31 = sub_22813880C();
  v32 = sub_2281396DC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_227FC3000, v31, v32, ".externalIntelligence is not supported by PromptTemplate extensions", v33, 2u);
    MEMORY[0x22AAB28A0](v33, -1, -1);
  }

  result = sub_2281398FC();
  __break(1u);
  return result;
}

uint64_t sub_228001CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v7 = sub_2281392AC();
    v9 = v8;
    if (v7 == sub_2281392AC() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_2281399BC();

      if ((v12 & 1) == 0)
      {
        return 1;
      }
    }

    v13 = sub_22813948C();
    MEMORY[0x22AAB18D0](v13);

    v14 = sub_2281392FC();
    v16 = v15;

    if (*(a6 + 16))
    {
      v17 = sub_22808C964(v14, v16);
      v19 = v18;

      if (v19)
      {
        sub_2280BDD98(&v21, *(*(a6 + 56) + 8 * v17));
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_228001E18(uint64_t a1, char a2)
{
  *(v3 + 305) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  type metadata accessor for SummarizationParameters(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v4 = sub_22813805C();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v5 = sub_2281390AC();
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6D8, &unk_22813BAC0);
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  v7 = sub_22813807C();
  *(v3 + 184) = v7;
  *(v3 + 192) = *(v7 - 8);
  *(v3 + 200) = swift_task_alloc();
  type metadata accessor for ModelBundleIdentifier(0);
  *(v3 + 208) = swift_task_alloc();
  v8 = sub_2281377CC();
  *(v3 + 216) = v8;
  *(v3 + 224) = *(v8 - 8);
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280020E0, 0, 0);
}

uint64_t sub_2280020E0()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[7];
  v4 = v0[8];
  v6 = type metadata accessor for PromptManager(0);
  sub_227FCAA80(v4 + *(v6 + 20), v2, type metadata accessor for ModelBundleIdentifier);
  sub_2280F8BF4(v2, 0, 1, 0, 1, v1);
  sub_2280017F4(v5, v3);
  v7 = v0[7];
  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_228002770;
  v9 = v0[29];
  v10 = v0[25];
  v11 = v0[22];
  v12 = v0[7];
  v13 = v0[8];
  v14 = MEMORY[0x277D84F90];

  return sub_228008880(v11, v10, v12, v14, v9, v7 + 40, v13);
}

uint64_t sub_228002770()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_228002A70;
  }

  else
  {
    v2 = sub_228002884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228002884()
{
  v1 = *(v0 + 64);
  if (*(v0 + 305) == 1)
  {
    sub_228137D1C();
    *(v0 + 48) = *v1;
    v2 = swift_task_alloc();
    *(v0 + 256) = v2;
    v3 = sub_22813755C();
    v4 = sub_22800CA68(&qword_27D81E6F0, MEMORY[0x277D71A98], MEMORY[0x277D71A20]);
    *v2 = v0;
    v2[1] = sub_22800302C;

    return MEMORY[0x282165AD8](v0 + 48, v3, v4);
  }

  else
  {
    sub_228137D1C();
    *(v0 + 40) = *v1;
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    v6 = sub_22813755C();
    v7 = sub_22800CA68(&qword_2813C8720, MEMORY[0x277D71A98], MEMORY[0x277D71A28]);
    *v5 = v0;
    v5[1] = sub_2280032F4;

    return MEMORY[0x282165AD0](v0 + 40, v6, v7);
  }
}

uint64_t sub_228002A70()
{
  v56 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  *(v0 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);

    (*(v9 + 32))(v7, v6, v8);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 104);
    v54 = *(v0 + 112);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 56);
    v16 = sub_22813882C();
    __swift_project_value_buffer(v16, qword_2813C8A20);
    sub_227FCAA80(v15, v13, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v15, v14, type metadata accessor for SummarizationParameters);
    v17 = *(v11 + 16);
    v17(v10, v54, v12);
    v18 = sub_22813880C();
    v19 = sub_2281396DC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    v23 = *(v0 + 80);
    v53 = *(v0 + 88);
    v24 = *(v0 + 72);
    if (v20)
    {
      v51 = v19;
      v52 = v17;
      v25 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55[0] = v50;
      *v25 = 136446722;
      *(v0 + 304) = *(v23 + 32);
      v26 = sub_2281392EC();
      v28 = v27;
      log = v18;
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
      v29 = sub_227FCC340(v26, v28, v55);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v0 + 16) = *(v24 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v30 = sub_2281392EC();
      v32 = v31;
      sub_227FCAB98(v24, type metadata accessor for SummarizationParameters);
      v33 = sub_227FCC340(v30, v32, v55);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2082;
      v34 = sub_227FFECCC();
      v36 = v35;
      v37 = *(v21 + 8);
      v37(v22, v53);
      v38 = sub_227FCC340(v34, v36, v55);

      *(v25 + 24) = v38;
      _os_log_impl(&dword_227FC3000, log, v51, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v50, -1, -1);
      v39 = v25;
      v17 = v52;
      MEMORY[0x22AAB28A0](v39, -1, -1);
    }

    else
    {

      v37 = *(v21 + 8);
      v37(v22, v53);
      sub_227FCAB98(v24, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
    }

    v40 = *(v0 + 112);
    v41 = *(v0 + 88);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v42 = swift_allocError();
    v17(v43, v40, v41);
    v44 = swift_allocObject();
    *(v44 + 16) = 56;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    v45 = sub_227FF96D4(v42, 0xD00000000000006BLL, 0x8000000228144800, 195, sub_22800C81C, v44);

    sub_227FDB3CC();
    swift_allocError();
    *v46 = 56;
    *(v46 + 8) = v45;
    swift_willThrow();
    v37(v40, v41);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_22800302C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  *(*v2 + 264) = v1;

  v6 = (v5 + 8);
  if (v1)
  {
    (*v6)(v4[19], v4[16]);
    v7 = sub_2280035AC;
  }

  else
  {
    v8 = v4[19];
    v9 = v4[16];
    v4[34] = a1;
    (*v6)(v8, v9);
    v7 = sub_228003198;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_228003198()
{
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v5, v7);
  result = (*(v3 + 8))(v2, v4);
  if (__OFADD__(v1, 12))
  {
    __break(1u);
  }

  else
  {

    v9 = v0[1];

    return v9(v1 + 12);
  }

  return result;
}

uint64_t sub_2280032F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  *(*v2 + 288) = v1;

  v6 = (v5 + 8);
  if (v1)
  {
    (*v6)(v4[18], v4[16]);
    v7 = sub_228003B84;
  }

  else
  {
    v8 = v4[18];
    v9 = v4[16];
    v4[37] = a1;
    (*v6)(v8, v9);
    v7 = sub_228003460;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_228003460()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v9 = v0[37];

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_2280035AC()
{
  v59 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 264);
  *(v0 + 32) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);

    (*(v12 + 32))(v10, v9, v11);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 104);
    v57 = *(v0 + 112);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = sub_22813882C();
    __swift_project_value_buffer(v19, qword_2813C8A20);
    sub_227FCAA80(v18, v16, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v18, v17, type metadata accessor for SummarizationParameters);
    v20 = *(v14 + 16);
    v20(v13, v57, v15);
    v21 = sub_22813880C();
    v22 = sub_2281396DC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 96);
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);
    v56 = *(v0 + 88);
    v27 = *(v0 + 72);
    if (v23)
    {
      v54 = v22;
      v55 = v20;
      v28 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58[0] = v53;
      *v28 = 136446722;
      *(v0 + 304) = *(v26 + 32);
      v29 = sub_2281392EC();
      v31 = v30;
      log = v21;
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
      v32 = sub_227FCC340(v29, v31, v58);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      *(v0 + 16) = *(v27 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v33 = sub_2281392EC();
      v35 = v34;
      sub_227FCAB98(v27, type metadata accessor for SummarizationParameters);
      v36 = sub_227FCC340(v33, v35, v58);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2082;
      v37 = sub_227FFECCC();
      v39 = v38;
      v40 = *(v24 + 8);
      v40(v25, v56);
      v41 = sub_227FCC340(v37, v39, v58);

      *(v28 + 24) = v41;
      _os_log_impl(&dword_227FC3000, log, v54, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v53, -1, -1);
      v42 = v28;
      v20 = v55;
      MEMORY[0x22AAB28A0](v42, -1, -1);
    }

    else
    {

      v40 = *(v24 + 8);
      v40(v25, v56);
      sub_227FCAB98(v27, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
    }

    v43 = *(v0 + 112);
    v44 = *(v0 + 88);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v45 = swift_allocError();
    v20(v46, v43, v44);
    v47 = swift_allocObject();
    *(v47 + 16) = 56;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    v48 = sub_227FF96D4(v45, 0xD00000000000006BLL, 0x8000000228144800, 195, sub_22800C81C, v47);

    sub_227FDB3CC();
    swift_allocError();
    *v49 = 56;
    *(v49 + 8) = v48;
    swift_willThrow();
    v40(v43, v44);
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_228003B84()
{
  v59 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 288);
  *(v0 + 32) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);

    (*(v12 + 32))(v10, v9, v11);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 104);
    v57 = *(v0 + 112);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = sub_22813882C();
    __swift_project_value_buffer(v19, qword_2813C8A20);
    sub_227FCAA80(v18, v16, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v18, v17, type metadata accessor for SummarizationParameters);
    v20 = *(v14 + 16);
    v20(v13, v57, v15);
    v21 = sub_22813880C();
    v22 = sub_2281396DC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 96);
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);
    v56 = *(v0 + 88);
    v27 = *(v0 + 72);
    if (v23)
    {
      v54 = v22;
      v55 = v20;
      v28 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58[0] = v53;
      *v28 = 136446722;
      *(v0 + 304) = *(v26 + 32);
      v29 = sub_2281392EC();
      v31 = v30;
      log = v21;
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
      v32 = sub_227FCC340(v29, v31, v58);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      *(v0 + 16) = *(v27 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v33 = sub_2281392EC();
      v35 = v34;
      sub_227FCAB98(v27, type metadata accessor for SummarizationParameters);
      v36 = sub_227FCC340(v33, v35, v58);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2082;
      v37 = sub_227FFECCC();
      v39 = v38;
      v40 = *(v24 + 8);
      v40(v25, v56);
      v41 = sub_227FCC340(v37, v39, v58);

      *(v28 + 24) = v41;
      _os_log_impl(&dword_227FC3000, log, v54, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v53, -1, -1);
      v42 = v28;
      v20 = v55;
      MEMORY[0x22AAB28A0](v42, -1, -1);
    }

    else
    {

      v40 = *(v24 + 8);
      v40(v25, v56);
      sub_227FCAB98(v27, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
    }

    v43 = *(v0 + 112);
    v44 = *(v0 + 88);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v45 = swift_allocError();
    v20(v46, v43, v44);
    v47 = swift_allocObject();
    *(v47 + 16) = 56;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    v48 = sub_227FF96D4(v45, 0xD00000000000006BLL, 0x8000000228144800, 195, sub_22800C81C, v47);

    sub_227FDB3CC();
    swift_allocError();
    *v49 = 56;
    *(v49 + 8) = v48;
    swift_willThrow();
    v40(v43, v44);
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_22800415C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_22813807C();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228004220, 0, 0);
}

uint64_t sub_228004220()
{
  v1 = v0[18];
  sub_228004954(v0[13] + 56, (v0 + 2));
  sub_2280049B8(v0 + 2, v1);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_228004538;
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[13];

  return sub_228004E74(v5, v3, v6, v4);
}

uint64_t sub_228004538()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2280046D4;
  }

  else
  {
    v2 = sub_22800464C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22800464C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2280046D4()
{
  v20 = v0;
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[20];
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v2 = sub_22813882C();
  __swift_project_value_buffer(v2, qword_2813C8A20);
  sub_228004954((v0 + 2), (v0 + 7));
  v3 = v1;
  v4 = sub_22813880C();
  v5 = sub_2281396DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136446466;
    v9 = v0[10];
    v10 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 7);
    v14 = sub_227FCC340(v11, v13, &v19);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2114;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v16;
    *v7 = v16;
    _os_log_impl(&dword_227FC3000, v4, v5, "Unexpected error encountered for FCC request: %{public}s, error: %{public}@", v6, 0x16u);
    sub_22800C88C(v7, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 7);
  }

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_228004954(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280049B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v40 = sub_2281373DC();
  v38 = *(v40 - 8);
  v5 = MEMORY[0x28223BE20](v40);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = sub_22813791C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ModelBundleIdentifier(0);
  v13 = MEMORY[0x28223BE20](v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = type metadata accessor for PromptManager(0);
  sub_227FCAA80(v3 + *(v18 + 20), v17, type metadata accessor for ModelBundleIdentifier);
  (*(v10 + 16))(v12, v3 + *(v18 + 24), v9);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = *(v20 + 8);
  v22 = v8;
  v23 = (*(v21 + 8))(v19);
  v24 = v41;
  sub_2280F94B0(v23, v25, v8);
  if (v24)
  {

    (*(v10 + 8))(v12, v9);
    v26 = v17;
    return sub_227FCAB98(v26, type metadata accessor for ModelBundleIdentifier);
  }

  v27 = v37;
  v41 = v9;
  sub_227FCAA80(v17, v15, type metadata accessor for ModelBundleIdentifier);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v36 = "notificationStack";

    sub_227FCAB98(v15, type metadata accessor for ModelBundleIdentifier);
    v28 = v38;
    v29 = v40;
    (*(v38 + 16))(v27, v22, v40);
    sub_22813806C();
    (*(v28 + 8))(v22, v29);
    (*(v10 + 8))(v12, v41);
    v26 = v17;
    return sub_227FCAB98(v26, type metadata accessor for ModelBundleIdentifier);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v31 = sub_22813882C();
  __swift_project_value_buffer(v31, qword_2813C89F0);
  v32 = sub_22813880C();
  v33 = sub_2281396DC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_227FC3000, v32, v33, ".externalIntelligence is not supported by PromptTemplate extensions", v34, 2u);
    MEMORY[0x22AAB28A0](v34, -1, -1);
  }

  result = sub_2281398FC();
  __break(1u);
  return result;
}

uint64_t sub_228004E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_2281375DC();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v7 = sub_228136FCC();
  v5[33] = v7;
  v5[34] = *(v7 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = type metadata accessor for ModelBundleIdentifier(0);
  v5[37] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A0, &unk_22813BA60);
  v5[38] = v8;
  v5[39] = *(v8 - 8);
  v5[40] = swift_task_alloc();
  v9 = sub_22813716C();
  v5[41] = v9;
  v5[42] = *(v9 - 8);
  v5[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v5[44] = swift_task_alloc();
  v10 = sub_2281390AC();
  v5[45] = v10;
  v5[46] = *(v10 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v11 = sub_22813787C();
  v5[53] = v11;
  v5[54] = *(v11 - 8);
  v5[55] = swift_task_alloc();
  v12 = sub_22813882C();
  v5[56] = v12;
  v5[57] = *(v12 - 8);
  v5[58] = swift_task_alloc();
  sub_22813759C();
  v5[59] = swift_task_alloc();
  v13 = sub_2281377FC();
  v5[60] = v13;
  v5[61] = *(v13 - 8);
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280052A8, 0, 0);
}

uint64_t sub_2280052A8()
{
  v88 = v0;
  v80 = v0[63];
  v81 = v0[62];
  v1 = v0[61];
  v2 = v0[59];
  v84 = v0[27];
  v86 = v0[60];
  sub_228004954(v84 + 56, (v0 + 20));
  v4 = v0[23];
  v3 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v4);
  v5 = sub_22800CC40(v4, *(v3 + 8));
  v6 = v5;
  if ((v5 & 0x100000000) != 0)
  {
    v6 = 0;
  }

  v77 = BYTE4(v5) & 1;
  v78 = v6;
  type metadata accessor for PromptManager(0);
  sub_2281378EC();
  v8 = v0[23];
  v7 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v8);
  (*(*(v7 + 8) + 8))(v8);

  sub_2281378FC();
  v10 = v0[23];
  v9 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v10);
  BYTE1(v69) = 1;
  LOBYTE(v69) = v77;
  LOBYTE(v68) = 0;
  v66 = v2;
  v67 = (*(*(v9 + 8) + 24))(v10);
  sub_2281377DC();
  (*(v1 + 16))(v81, v80, v86);
  sub_22813785C();
  swift_allocObject();
  v0[64] = sub_22813784C();
  v11 = sub_22800AEEC(v84);
  v13 = v12;
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0[56], qword_2813C8A20);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v0[56], qword_2813C4990);
  }

  (*(v0[57] + 16))(v0[58], v14, v0[56]);

  v15 = sub_22813880C();
  v16 = sub_2281396BC();

  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[57];
  v18 = v0[58];
  v20 = v0[56];
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v87[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_227FCC340(v11, v13, v87);
    _os_log_impl(&dword_227FC3000, v15, v16, "Factual consistency threshold identifier: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v22);
    MEMORY[0x22AAB28A0](v22, -1, -1);
    MEMORY[0x22AAB28A0](v21, -1, -1);
  }

  (*(v19 + 8))(v18, v20);
  v23 = v0[26];
  sub_22813786C();
  *(swift_task_alloc() + 16) = v23;
  sub_2281390BC();

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v24 = v0[48];
  v26 = v0[46];
  v25 = v0[47];
  v27 = v0[44];
  v82 = v0[45];
  v28 = v0[42];
  v29 = v0[43];
  v30 = v0[41];
  v31 = v0[27];
  sub_228139B6C();
  sub_228136FEC();
  sub_228136FDC();
  (*(v28 + 8))(v29, v30);
  (*(v28 + 56))(v27, 0, 1, v30);
  v32 = v24;
  sub_22813909C();
  sub_22800C88C(v27, &qword_27D81E6A8, &qword_22813F930);
  v33 = *(v26 + 8);
  v0[65] = v33;
  v0[66] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34 = v82;
  v33(v25, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B0, &unk_22813BA70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  strcpy((inited + 32), "inputMessage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v37 = *v31;
  v36 = v31[1];
  v38 = MEMORY[0x277D837D0];
  v39 = MEMORY[0x277D42EC0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v39;
  *(inited + 48) = v37;
  *(inited + 56) = v36;
  strcpy((inited + 88), "outputMessage");
  *(inited + 102) = -4864;
  v40 = v31[2];
  v41 = v31[3];
  *(inited + 128) = v38;
  *(inited + 136) = v39;
  *(inited + 104) = v40;
  *(inited + 112) = v41;

  sub_227FE40AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E390, &qword_22813AA08);
  swift_arrayDestroy();
  sub_22800CA68(&qword_2813C4730, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  sub_22813919C();

  v83 = v33;
  v33(v32, v34);
  if (qword_2813C7028 != -1)
  {
    swift_once();
  }

  v42 = v0[37];
  v43 = __swift_project_value_buffer(v0[36], qword_2813C8AD8);
  sub_227FCAA80(v43, v42, type metadata accessor for ModelBundleIdentifier);
  v44 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v45 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v45 = &qword_2813C76F8;
  }

  v46 = *(*v45 + 1352);
  v47 = *(*v45 + 1360);
  v48 = *(*v45 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v47(v87, v48);

    v49 = v87[0];
  }

  else
  {

    v49 = v46;
  }

  v50 = v0[51];
  v51 = v0[49];
  v52 = v0[50];
  v53 = v0[45];
  v55 = v0[39];
  v54 = v0[40];
  v56 = v0[38];
  v70 = v0[35];
  v71 = v0[34];
  v72 = v0[33];
  v73 = v0[52];
  v74 = v0[32];
  v75 = v0[31];
  v76 = v0[46];
  v79 = v0[30];
  sub_2280F8BF4(v0[37], 2, 0, v49, 0, v54);
  (*(v55 + 104))(v54, *MEMORY[0x277D0E548], v56);
  sub_22813916C();
  (*(v55 + 8))(v54, v56);
  v83(v51, v53);
  v57 = v0[23];
  v58 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v57);
  (*(v58 + 16))(v57, v58);
  sub_22813913C();

  v83(v52, v53);
  v59 = v0[23];
  v60 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v59);
  (*(v60 + 24))(v59, v60);
  sub_22813912C();
  (*(v71 + 8))(v70, v72);
  v83(v50, v53);
  (*(v76 + 16))(v74, v73, v53);
  (*(v75 + 104))(v74, *MEMORY[0x277D71DA8], v79);
  v85 = (*MEMORY[0x277D71CE8] + MEMORY[0x277D71CE8]);
  v61 = swift_task_alloc();
  v0[67] = v61;
  *v61 = v0;
  v61[1] = sub_228005D90;
  v62 = v0[55];
  v63 = v0[32];
  v64 = v0[25];

  return v85(v64, v63, v62);
}

uint64_t sub_228005D90()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  if (v0)
  {
    v3 = sub_2280060A8;
  }

  else
  {
    v3 = sub_228005EF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228005EF8()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[61];
  v11 = v0[60];
  v5 = v0[54];
  v4 = v0[55];
  v7 = v0[52];
  v6 = v0[53];
  v8 = v0[45];

  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v11);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 20);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2280060A8()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[61];
  v11 = v0[60];
  v5 = v0[54];
  v4 = v0[55];
  v7 = v0[52];
  v6 = v0[53];
  v8 = v0[45];

  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v11);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 20);

  v9 = v0[1];

  return v9();
}

uint64_t sub_228006258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[30] = a8;
  v9[31] = v8;
  v9[28] = a6;
  v9[29] = a7;
  v9[26] = a4;
  v9[27] = a5;
  v9[24] = a2;
  v9[25] = a3;
  v9[23] = a1;
  v10 = sub_2281375DC();
  v9[32] = v10;
  v9[33] = *(v10 - 8);
  v9[34] = swift_task_alloc();
  v11 = sub_22813787C();
  v9[35] = v11;
  v9[36] = *(v11 - 8);
  v9[37] = swift_task_alloc();
  sub_22813759C();
  v9[38] = swift_task_alloc();
  v12 = sub_2281377FC();
  v9[39] = v12;
  v9[40] = *(v12 - 8);
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();
  v13 = sub_228136FCC();
  v9[43] = v13;
  v9[44] = *(v13 - 8);
  v9[45] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A0, &unk_22813BA60);
  v9[46] = v14;
  v9[47] = *(v14 - 8);
  v9[48] = swift_task_alloc();
  v15 = sub_22813716C();
  v9[49] = v15;
  v9[50] = *(v15 - 8);
  v9[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v9[52] = swift_task_alloc();
  v16 = sub_2281390AC();
  v9[53] = v16;
  v9[54] = *(v16 - 8);
  v9[55] = swift_task_alloc();
  v9[56] = swift_task_alloc();
  v9[57] = swift_task_alloc();
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v9[60] = swift_task_alloc();
  v17 = sub_22813807C();
  v9[61] = v17;
  v9[62] = *(v17 - 8);
  v9[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228006664, 0, 0);
}

uint64_t sub_228006664()
{
  sub_228007778(v0[27], v0[63]);
  v1 = v0[63];
  sub_228004954(v0[27], (v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v2);
  sub_22800CC40(v2, *(v3 + 8));
  *(swift_task_alloc() + 16) = v1;
  sub_2281390BC();

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v51 = v0[60];
  v36 = v0[58];
  v37 = v0[59];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[54];
  v30 = v0[53];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[49];
  v10 = v0[50];
  v32 = v0[57];
  v33 = v0[48];
  v34 = v0[47];
  v35 = v0[46];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v6;
  v42 = v0[42];
  v44 = v0[41];
  v43 = v0[40];
  v45 = v0[39];
  v48 = v0[34];
  v49 = v0[33];
  v50 = v0[32];
  v46 = v0[28];
  v47 = v0[29];
  v11 = v0[25];
  v31 = v0[26];
  v29 = v0[24];
  sub_228139B6C();
  sub_228136FEC();
  sub_228136FDC();
  (*(v10 + 8))(v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_22813909C();
  sub_22800C88C(v7, &qword_27D81E6A8, &qword_22813F930);
  v12 = *(v6 + 8);
  v0[64] = v12;
  v0[65] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v5, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B0, &unk_22813BA70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  *(inited + 32) = 0x746E6F4372657375;
  v14 = MEMORY[0x277D42EC0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v14;
  *(inited + 40) = 0xEB00000000746E65;
  *(inited + 48) = v29;
  *(inited + 56) = v11;

  sub_227FE40AC(inited);
  swift_setDeallocating();
  sub_22800C88C(inited + 32, &qword_27D81E390, &qword_22813AA08);
  sub_22800CA68(&qword_2813C4730, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  sub_22813919C();

  v12(v4, v30);
  v15 = sub_2281377CC();
  (*(*(v15 - 8) + 16))(v33, v31, v15);
  (*(v34 + 104))(v33, *MEMORY[0x277D0E548], v35);
  sub_22813916C();
  (*(v34 + 8))(v33, v35);
  v12(v32, v30);
  v16 = v0[21];
  v17 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v16);
  (*(v17 + 16))(v16, v17);
  sub_22813913C();

  v12(v36, v30);
  v18 = v0[21];
  v19 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v18);
  (*(v19 + 24))(v18, v19);
  sub_22813912C();
  (*(v39 + 8))(v38, v40);
  v12(v37, v30);
  type metadata accessor for PromptManager(0);
  sub_2281378EC();
  v21 = v0[21];
  v20 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v21);
  (*(*(v20 + 8) + 8))(v21);

  sub_2281378FC();
  v23 = v0[21];
  v22 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v23);
  (*(*(v22 + 8) + 24))(v23);
  sub_2281377DC();
  (*(v43 + 16))(v44, v42, v45);
  sub_22813785C();
  swift_allocObject();
  v0[66] = sub_22813784C();
  sub_22800A5F0(v46, v47);
  sub_22813786C();
  (*(v41 + 16))(v48, v51, v30);
  (*(v49 + 104))(v48, *MEMORY[0x277D71DA8], v50);
  v52 = (*MEMORY[0x277D71CE8] + MEMORY[0x277D71CE8]);
  v24 = swift_task_alloc();
  v0[67] = v24;
  *v24 = v0;
  v24[1] = sub_228007098;
  v25 = v0[37];
  v26 = v0[34];
  v27 = v0[23];

  return v52(v27, v26, v25);
}

uint64_t sub_228007098()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  if (v0)
  {
    v3 = sub_2280073CC;
  }

  else
  {
    v3 = sub_228007200;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228007200()
{
  v1 = v0[63];
  v13 = v0[64];
  v2 = v0[62];
  v3 = v0[60];
  v14 = v0[61];
  v12 = v0[53];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[37];
  v9 = v0[35];
  v8 = v0[36];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v13(v3, v12);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 18);
  (*(v2 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2280073CC()
{
  v33 = v0;
  v29 = v0[64];
  v1 = v0[62];
  v30 = v0[61];
  v31 = v0[63];
  v2 = v0[60];
  v3 = v0[53];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[36];
  v8 = v0[37];
  v9 = v0[35];

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  v29(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 18);
  (*(v1 + 8))(v31, v30);
  v10 = v0[68];
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v11 = v0[27];
  v12 = sub_22813882C();
  __swift_project_value_buffer(v12, qword_2813C8A08);
  sub_228004954(v11, (v0 + 13));
  v13 = v10;
  v14 = sub_22813880C();
  v15 = sub_2281396DC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136446466;
    v19 = v0[16];
    v20 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v19);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 13);
    v24 = sub_227FCC340(v21, v23, &v32);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2114;
    v25 = v10;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v26;
    *v17 = v26;
    _os_log_impl(&dword_227FC3000, v14, v15, "Prompt error encountered for request: %{public}s, error: %{public}@", v16, 0x16u);
    sub_22800C88C(v17, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v16, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 13);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t sub_228007778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v40 = sub_2281373DC();
  v38 = *(v40 - 8);
  v5 = MEMORY[0x28223BE20](v40);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = sub_22813791C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ModelBundleIdentifier(0);
  v13 = MEMORY[0x28223BE20](v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = type metadata accessor for PromptManager(0);
  sub_227FCAA80(v3 + *(v18 + 20), v17, type metadata accessor for ModelBundleIdentifier);
  (*(v10 + 16))(v12, v3 + *(v18 + 24), v9);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = *(v20 + 8);
  v22 = v8;
  v23 = (*(v21 + 8))(v19);
  v24 = v41;
  sub_2280F94B0(v23, v25, v8);
  if (v24)
  {

    (*(v10 + 8))(v12, v9);
    v26 = v17;
    return sub_227FCAB98(v26, type metadata accessor for ModelBundleIdentifier);
  }

  v27 = v37;
  v41 = v9;
  sub_227FCAA80(v17, v15, type metadata accessor for ModelBundleIdentifier);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v36 = "Template extensions";

    sub_227FCAB98(v15, type metadata accessor for ModelBundleIdentifier);
    v28 = v38;
    v29 = v40;
    (*(v38 + 16))(v27, v22, v40);
    sub_22813806C();
    (*(v28 + 8))(v22, v29);
    (*(v10 + 8))(v12, v41);
    v26 = v17;
    return sub_227FCAB98(v26, type metadata accessor for ModelBundleIdentifier);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v31 = sub_22813882C();
  __swift_project_value_buffer(v31, qword_2813C89F0);
  v32 = sub_22813880C();
  v33 = sub_2281396DC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_227FC3000, v32, v33, ".externalIntelligence is not supported by PromptTemplate extensions", v34, 2u);
    MEMORY[0x22AAB28A0](v34, -1, -1);
  }

  result = sub_2281398FC();
  __break(1u);
  return result;
}

uint64_t sub_228007C34(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v4 = sub_22813716C();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v3[24] = swift_task_alloc();
  v5 = sub_2281390AC();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v6 = sub_22813807C();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228007DFC, 0, 0);
}

uint64_t sub_228007DFC()
{
  sub_228007778(*(v0 + 152), *(v0 + 256));
  v1 = *(v0 + 256);
  *(swift_task_alloc() + 16) = v1;
  sub_2281390BC();

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 168);
  v18 = *(v0 + 160);
  sub_228139B6C();
  sub_228136FEC();
  sub_228136FDC();
  (*(v7 + 8))(v8, v9);
  (*(v7 + 56))(v6, 0, 1, v9);
  sub_22813909C();
  sub_22800C88C(v6, &qword_27D81E6A8, &qword_22813F930);
  v10 = *(v4 + 8);
  *(v0 + 264) = v10;
  *(v0 + 272) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B0, &unk_22813BA70);
  inited = swift_initStackObject();
  *(inited + 32) = 0x746E6F4372657375;
  v12 = inited + 32;
  *(inited + 16) = xmmword_22813A4B0;
  v13 = MEMORY[0x277D42EC0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v13;
  *(inited + 40) = 0xEB00000000746E65;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_227FE40AC(inited);
  swift_setDeallocating();
  sub_22800C88C(v12, &qword_27D81E390, &qword_22813AA08);
  sub_22800CA68(&qword_2813C4730, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  sub_22813919C();

  v10(v2, v5);
  *(v0 + 144) = *v18;
  v14 = swift_task_alloc();
  *(v0 + 280) = v14;
  v15 = sub_22813755C();
  v16 = sub_22800CA68(&qword_2813C8720, MEMORY[0x277D71A98], MEMORY[0x277D71A28]);
  *v14 = v0;
  v14[1] = sub_2280083B0;

  return MEMORY[0x282165AD0](v0 + 144, v15, v16);
}

uint64_t sub_2280083B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_2280085B8;
  }

  else
  {
    *(v4 + 296) = a1;
    v5 = sub_2280084D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280084D8()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  (*(v0 + 264))(*(v0 + 232), *(v0 + 200));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 296);

  return v4(v5);
}

uint64_t sub_2280085B8()
{
  v24 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  (*(v0 + 264))(*(v0 + 232), *(v0 + 200));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 288);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 152);
  v6 = sub_22813882C();
  __swift_project_value_buffer(v6, qword_2813C8A08);
  sub_228004954(v5, v0 + 104);
  v7 = v4;
  v8 = sub_22813880C();
  v9 = sub_2281396DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136446466;
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v13);
    v15 = (*(v14 + 16))(v13, v14);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm_2((v0 + 104));
    v18 = sub_227FCC340(v15, v17, &v23);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2114;
    v19 = v4;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v20;
    *v11 = v20;
    _os_log_impl(&dword_227FC3000, v8, v9, "Prompt error encountered for request: %{public}s, error: %{public}@", v10, 0x16u);
    sub_22800C88C(v11, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v12);
    MEMORY[0x22AAB28A0](v12, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_2((v0 + 104));
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_228008880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[59] = a6;
  v7[60] = a7;
  v7[57] = a4;
  v7[58] = a5;
  v7[55] = a2;
  v7[56] = a3;
  v7[54] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6F8, &qword_22813BAE0);
  v7[61] = swift_task_alloc();
  v7[62] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E700, &qword_22813BAE8);
  v7[63] = swift_task_alloc();
  v8 = sub_228137CEC();
  v7[64] = v8;
  v7[65] = *(v8 - 8);
  v7[66] = swift_task_alloc();
  v9 = sub_228137CFC();
  v7[67] = v9;
  v7[68] = *(v9 - 8);
  v7[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E708, &qword_22813BAF0);
  v7[70] = swift_task_alloc();
  v10 = sub_22813872C();
  v7[71] = v10;
  v7[72] = *(v10 - 8);
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v11 = sub_228136FCC();
  v7[75] = v11;
  v7[76] = *(v11 - 8);
  v7[77] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A0, &unk_22813BA60);
  v7[78] = v12;
  v7[79] = *(v12 - 8);
  v7[80] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E710, &qword_22813BAF8);
  v7[81] = v13;
  v7[82] = *(v13 - 8);
  v7[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E718, &qword_22813BB00);
  v7[84] = swift_task_alloc();
  v14 = sub_228137B6C();
  v7[85] = v14;
  v7[86] = *(v14 - 8);
  v7[87] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E720, &qword_22813BB08);
  v7[88] = v15;
  v7[89] = *(v15 - 8);
  v7[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E728, &qword_22813BB10);
  v7[91] = swift_task_alloc();
  v16 = sub_22813716C();
  v7[92] = v16;
  v7[93] = *(v16 - 8);
  v7[94] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v7[95] = swift_task_alloc();
  v17 = sub_2281390AC();
  v7[96] = v17;
  v7[97] = *(v17 - 8);
  v7[98] = swift_task_alloc();
  v7[99] = swift_task_alloc();
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();
  v7[102] = swift_task_alloc();
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v7[105] = swift_task_alloc();
  v7[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228008E6C, 0, 0);
}

uint64_t sub_228008E6C()
{
  v1 = *(v0 + 440);
  *(swift_task_alloc() + 16) = v1;
  sub_2281390BC();

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v72 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  v9 = *(v0 + 448);
  v74 = *(v0 + 456);
  sub_228139B6C();
  sub_228136FEC();
  sub_228136FDC();
  (*(v7 + 8))(v6, v8);
  (*(v7 + 56))(v5, 0, 1, v8);
  sub_22813909C();
  sub_22800C88C(v5, &qword_27D81E6A8, &qword_22813F930);
  v10 = *(v4 + 8);
  *(v0 + 856) = v10;
  *(v0 + 864) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B0, &unk_22813BA70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = 6516580;
  *(inited + 40) = 0xE300000000000000;
  v13 = *v9;
  v12 = v9[1];
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D42EC0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v15;
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  *(inited + 88) = 0x747865746E6F63;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 128) = v14;
  *(inited + 136) = v15;
  *(inited + 104) = 0;
  *(inited + 112) = 0xE000000000000000;

  sub_227FE40AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E390, &qword_22813AA08);
  swift_arrayDestroy();
  *(v0 + 872) = sub_22800CA68(&qword_2813C4730, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  sub_22813919C();

  v76 = v10;
  v10(v2, v72);
  if (*(v74 + 16))
  {
    sub_22813873C();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v67 = *(v0 + 840);
  v75 = *(v0 + 832);
  v61 = *(v0 + 824);
  v73 = *(v0 + 816);
  v17 = *(v0 + 800);
  v18 = *(v0 + 768);
  v19 = *(v0 + 728);
  v20 = *(v0 + 720);
  v21 = *(v0 + 712);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v54 = *(v0 + 808);
  v55 = *(v0 + 672);
  v56 = *(v0 + 704);
  v58 = *(v0 + 664);
  v59 = *(v0 + 656);
  v60 = *(v0 + 648);
  v63 = *(v0 + 640);
  v64 = *(v0 + 632);
  v65 = *(v0 + 624);
  v68 = *(v0 + 616);
  v69 = *(v0 + 608);
  v70 = *(v0 + 600);
  v71 = *(v0 + 560);
  v66 = *(v0 + 472);
  v62 = *(v0 + 464);
  v57 = *(v0 + 448);
  v24 = sub_22813874C();
  (*(*(v24 - 8) + 56))(v19, v16, 1, v24);
  sub_22813917C();
  sub_22800C88C(v19, &qword_27D81E728, &qword_22813BB10);
  v76(v17, v18);
  v25 = sub_228137BAC();
  *(v0 + 880) = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  *(v0 + 888) = v27;
  *(v0 + 896) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v27(v22, 1, 1, v25);
  *(v0 + 1104) = *MEMORY[0x277D0E5C0];
  v28 = *(v23 + 104);
  *(v0 + 904) = v28;
  *(v0 + 912) = (v23 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v28(v22);
  v29 = sub_228137B4C();
  *(v0 + 920) = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  *(v0 + 928) = v31;
  *(v0 + 936) = (v30 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v31(v55, 1, 1, v29);
  sub_228137BBC();
  v32 = *MEMORY[0x277D0E548];
  *(v0 + 1108) = v32;
  v33 = *(v21 + 104);
  *(v0 + 944) = v33;
  *(v0 + 952) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v33(v20, v32, v56);
  sub_22813914C();
  v34 = *(v21 + 8);
  *(v0 + 960) = v34;
  *(v0 + 968) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v20, v56);
  v76(v54, v18);
  v35 = *(type metadata accessor for SummarizationParameters(0) + 36);
  *(v0 + 1112) = v35;
  v36 = sub_228137A9C();
  *(v0 + 976) = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 16);
  *(v0 + 984) = v38;
  *(v0 + 992) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38(v58, v57 + v35, v36);
  v39 = *(v59 + 104);
  *(v0 + 1000) = v39;
  *(v0 + 1008) = (v59 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v39(v58, v32, v60);
  sub_22813915C();
  v40 = *(v59 + 8);
  *(v0 + 1016) = v40;
  *(v0 + 1024) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v58, v60);
  v76(v73, v18);
  v41 = sub_2281377CC();
  *(v0 + 1032) = v41;
  v42 = *(v41 - 8);
  v43 = *(v42 + 16);
  *(v0 + 1040) = v43;
  *(v0 + 1048) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v63, v62, v41);
  v44 = *(v64 + 104);
  *(v0 + 1056) = v44;
  *(v0 + 1064) = (v64 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v44(v63, v32, v65);
  sub_22813916C();
  v45 = *(v64 + 8);
  *(v0 + 1072) = v45;
  *(v0 + 1080) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v63, v65);
  v76(v61, v18);
  v46 = v66[3];
  v47 = v66[4];
  __swift_project_boxed_opaque_existential_1(v66, v46);
  (*(v47 + 16))(v46, v47);
  sub_22813913C();

  v76(v75, v18);
  v48 = v66[3];
  v49 = v66[4];
  __swift_project_boxed_opaque_existential_1(v66, v48);
  (*(v49 + 24))(v48, v49);
  sub_22813912C();
  (*(v69 + 8))(v68, v70);
  v76(v67, v18);
  v50 = sub_22813871C();
  (*(*(v50 - 8) + 56))(v71, 1, 1, v50);
  sub_22813870C();
  v51 = swift_task_alloc();
  *(v0 + 1088) = v51;
  *v51 = v0;
  v51[1] = sub_2280097F8;
  v52 = *(v0 + 488);

  return MEMORY[0x282166B60](v52, 0xD00000000000001CLL, 0x8000000228144870);
}

uint64_t sub_2280097F8()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_22800A234;
  }

  else
  {
    v2 = sub_22800990C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22800990C()
{
  v1 = *(v0 + 488);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E730, &qword_22813BB18);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_22800C88C(v1, &qword_27D81E6F8, &qword_22813BAE0);
  }

  else
  {
    v61 = *(v0 + 1072);
    v59 = *(v0 + 1056);
    v58 = *(v0 + 1040);
    v57 = *(v0 + 1032);
    v56 = *(v0 + 1016);
    v55 = *(v0 + 1000);
    v52 = *(v0 + 984);
    v50 = *(v0 + 1112);
    v51 = *(v0 + 976);
    v49 = *(v0 + 960);
    v46 = *(v0 + 944);
    v44 = *(v0 + 1108);
    v42 = *(v0 + 928);
    v41 = *(v0 + 920);
    v39 = *(v0 + 904);
    v38 = *(v0 + 1104);
    v37 = *(v0 + 888);
    v36 = *(v0 + 880);
    v26 = *(v2 + 48);
    v64 = *(v0 + 792);
    v65 = *(v0 + 848);
    v67 = *(v0 + 776);
    v68 = *(v0 + 856);
    v66 = *(v0 + 768);
    v33 = *(v0 + 720);
    v34 = *(v0 + 704);
    v30 = *(v0 + 696);
    v31 = *(v0 + 680);
    v32 = *(v0 + 672);
    v40 = *(v0 + 664);
    v43 = *(v0 + 648);
    v47 = *(v0 + 640);
    v48 = *(v0 + 624);
    v27 = *(v0 + 584);
    v3 = *(v0 + 576);
    v28 = *(v0 + 568);
    v29 = *(v0 + 592);
    v70 = *(v0 + 552);
    v63 = *(v0 + 544);
    v4 = *(v0 + 536);
    v25 = *(v0 + 528);
    v5 = *(v0 + 520);
    v62 = v5;
    v6 = *(v0 + 504);
    v69 = *(v0 + 512);
    v7 = *(v0 + 496);
    v45 = *(v0 + 464);
    v35 = *(v0 + 448);
    v60 = *(v0 + 440);
    v8 = *(v7 + 48);
    v9 = *(v63 + 32);
    v9(v6, v1, v4);
    v10 = v1;
    v11 = *(v5 + 32);
    v11(v6 + v8, v10 + v26, v69);
    v12 = *(v7 + 48);
    v9(v70, v6, v4);
    v11(v25, v6 + v12, v69);
    sub_228137CDC();
    (*(v3 + 8))(v29, v28);
    (*(v3 + 32))(v29, v27, v28);
    sub_227FE40AC(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E738, &unk_22813BB20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22813B480;
    *(inited + 32) = 0xD000000000000074;
    *(inited + 40) = 0x8000000228144890;
    v37(v30, 1, 1, v36);
    v39(v30, v38, v31);
    v42(v32, 1, 1, v41);
    sub_228137BBC();
    v46(v33, v44, v34);
    *(inited + 72) = sub_228137BCC();
    __swift_allocate_boxed_opaque_existential_0Tm((inited + 48));
    sub_228137B1C();
    v49(v33, v34);
    *(inited + 80) = 0xD000000000000063;
    *(inited + 88) = 0x8000000228144910;
    v52(v40, v35 + v50, v51);
    v55(v40, v44, v43);
    *(inited + 120) = v51;
    __swift_allocate_boxed_opaque_existential_0Tm((inited + 96));
    sub_228137AFC();
    v56(v40, v43);
    *(inited + 128) = 0xD00000000000004DLL;
    *(inited + 136) = 0x8000000228144980;
    v58(v47, v45, v57);
    v59(v47, v44, v48);
    *(inited + 168) = v57;
    __swift_allocate_boxed_opaque_existential_0Tm((inited + 144));
    sub_228137B0C();
    v61(v47, v48);
    sub_227FE4858(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E380, &unk_228142F80);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E740, &unk_22813BB30);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_22813A4B0;
    strcpy((v14 + 32), "promptTemplate");
    *(v14 + 47) = -18;
    v15 = sub_22813807C();
    *(v14 + 72) = v15;
    *(v14 + 80) = sub_22800CA68(&qword_2813C4818, MEMORY[0x277D0E698], MEMORY[0x277D0E678]);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v14 + 48));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0Tm, v60, v15);
    sub_227FE4A28(v14);
    swift_setDeallocating();
    sub_22800C88C(v14 + 32, &qword_27D81E3F0, &qword_22813AA60);
    sub_228137CCC();

    (*(v62 + 8))(v25, v69);
    (*(v63 + 8))(v70, v4);
    v68(v65, v66);
    (*(v67 + 32))(v65, v64, v66);
  }

  v54 = *(v0 + 856);
  v17 = *(v0 + 848);
  v18 = *(v0 + 792);
  v19 = *(v0 + 768);
  v20 = *(v0 + 592);
  v21 = *(v0 + 576);
  v53 = *(v0 + 568);
  v22 = *(v0 + 480);
  sub_22813911C();
  *(v0 + 424) = *v22;
  sub_22813755C();
  sub_22813918C();
  v54(v18, v19);
  (*(v21 + 8))(v20, v53);
  v54(v17, v19);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22800A234()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[96];
  (*(v0[72] + 8))(v0[74], v0[71]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22800A438(uint64_t a1)
{
  v1 = sub_2281390AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22813807C();
  sub_22800CA68(&qword_2813C4818, MEMORY[0x277D0E698], MEMORY[0x277D0E678]);
  sub_2281390DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B8, &qword_22813BA80);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22813A4B0;
  (*(v2 + 16))(v6 + v5, v4, v1);
  MEMORY[0x22AAB1670](v6);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22800A5F0(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6C0, &qword_22813BA88);
  MEMORY[0x28223BE20](v54);
  v56 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v50 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v55 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - v19;
  v21 = sub_22813716C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22813713C();
  v62 = *(v25 - 8);
  v63 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  sub_228139B6C();
  sub_22813715C();
  (*(v22 + 8))(v24, v21);
  sub_22813710C();
  v28 = *(v3 + 48);
  if (v28(v20, 1, v2) == 1)
  {
    sub_22800C88C(v20, &qword_27D81E328, &qword_2281402C0);
    v60 = sub_22800B714(&qword_2813C49D8, qword_2813C8A08, sub_228094A14);
    v61 = v29;
  }

  else
  {
    v60 = sub_228136FFC();
    v61 = v30;
    (*(v3 + 8))(v20, v2);
  }

  sub_22813711C();
  v31 = sub_22813708C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_22800C88C(v11, &qword_27D81E580, &unk_2281402B0);
    v58 = sub_22800B938();
    v59 = v33;
  }

  else
  {
    v58 = sub_228136FFC();
    v59 = v34;
    (*(v32 + 8))(v11, v31);
  }

  sub_22813712C();
  v35 = sub_2281370BC();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) != 1)
  {
    v50 = sub_228136FFC();
    v51 = v37;
    (*(v36 + 8))(v8, v35);
    v38 = v55;
    sub_22813710C();
    v39 = v57;
    sub_22813700C();
    (*(v3 + 56))(v39, 0, 1, v2);
    v40 = *(v54 + 48);
    v41 = v56;
    sub_22800C790(v38, v56);
    sub_22800C790(v39, v41 + v40);
    if (v28(v41, 1, v2) == 1)
    {
      sub_22800C88C(v39, &qword_27D81E328, &qword_2281402C0);
      sub_22800C88C(v38, &qword_27D81E328, &qword_2281402C0);
      if (v28((v41 + v40), 1, v2) == 1)
      {
        sub_22800C88C(v41, &qword_27D81E328, &qword_2281402C0);
LABEL_21:
        v66 = v64;
        v67 = v65;

        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        MEMORY[0x22AAB1970](v60, v61);

        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        v43 = v50;
        v44 = v51;
        goto LABEL_19;
      }
    }

    else
    {
      v42 = v53;
      sub_22800C790(v41, v53);
      if (v28((v41 + v40), 1, v2) != 1)
      {
        v47 = v52;
        (*(v3 + 32))(v52, v41 + v40, v2);
        sub_22800CA68(&qword_2813C8760, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
        v48 = sub_22813926C();
        v49 = *(v3 + 8);
        v49(v47, v2);
        sub_22800C88C(v57, &qword_27D81E328, &qword_2281402C0);
        sub_22800C88C(v38, &qword_27D81E328, &qword_2281402C0);
        v49(v42, v2);
        sub_22800C88C(v41, &qword_27D81E328, &qword_2281402C0);
        if (v48)
        {
          goto LABEL_21;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_22800C88C(v57, &qword_27D81E328, &qword_2281402C0);
      v41 = v56;
      sub_22800C88C(v38, &qword_27D81E328, &qword_2281402C0);
      (*(v3 + 8))(v42, v2);
    }

    sub_22800C88C(v41, &qword_27D81E6C0, &qword_22813BA88);
    goto LABEL_17;
  }

  sub_22800C88C(v8, &qword_27D81E320, &unk_22813A7D0);
LABEL_18:
  v66 = v64;
  v67 = v65;

  MEMORY[0x22AAB1970](95, 0xE100000000000000);
  v43 = v60;
  v44 = v61;
LABEL_19:
  MEMORY[0x22AAB1970](v43, v44);

  MEMORY[0x22AAB1970](95, 0xE100000000000000);
  MEMORY[0x22AAB1970](v58, v59);

  v45 = v66;
  (*(v62 + 8))(v27, v63);
  return v45;
}

uint64_t sub_22800AEEC(uint64_t a1)
{
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6C0, &qword_22813BA88);
  MEMORY[0x28223BE20](v54);
  v55 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v56 = &v49 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v19 = sub_22813716C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22813713C();
  v63 = *(v23 - 8);
  v64 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  LOBYTE(v65) = *(a1 + 48);
  v59 = sub_22800BBB4(v26, v27, &v65);
  v60 = v28;
  v61 = v29;
  v62 = v30;
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  sub_228139B6C();
  sub_22813715C();
  (*(v20 + 8))(v22, v19);
  sub_22813710C();
  v31 = *(v3 + 48);
  if (v31(v18, 1, v2) == 1)
  {
    sub_22800C88C(v18, &qword_27D81E328, &qword_2281402C0);
    v57 = sub_22800B714(qword_2813C49E0, qword_2813C8A20, sub_228094A40);
    v58 = v32;
  }

  else
  {
    v57 = sub_228136FFC();
    v58 = v33;
    (*(v3 + 8))(v18, v2);
  }

  sub_22813712C();
  v34 = sub_2281370BC();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v8, 1, v34) != 1)
  {
    v50 = sub_228136FFC();
    v51 = v36;
    (*(v35 + 8))(v8, v34);
    v37 = v56;
    sub_22813710C();
    sub_22813700C();
    (*(v3 + 56))(v14, 0, 1, v2);
    v38 = v55;
    v39 = *(v54 + 48);
    sub_22800C790(v37, v55);
    sub_22800C790(v14, v38 + v39);
    if (v31(v38, 1, v2) == 1)
    {
      sub_22800C88C(v14, &qword_27D81E328, &qword_2281402C0);
      sub_22800C88C(v37, &qword_27D81E328, &qword_2281402C0);
      if (v31((v38 + v39), 1, v2) == 1)
      {
        sub_22800C88C(v38, &qword_27D81E328, &qword_2281402C0);
LABEL_18:
        v65 = v59;
        v66 = v60;
        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        MEMORY[0x22AAB1970](v61, v62);

        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        MEMORY[0x22AAB1970](v57, v58);

        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        v41 = v50;
        v42 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      v40 = v53;
      sub_22800C790(v38, v53);
      if (v31((v38 + v39), 1, v2) != 1)
      {
        v45 = v52;
        (*(v3 + 32))(v52, v38 + v39, v2);
        sub_22800CA68(&qword_2813C8760, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
        v46 = v40;
        v47 = sub_22813926C();
        v48 = *(v3 + 8);
        v48(v45, v2);
        sub_22800C88C(v14, &qword_27D81E328, &qword_2281402C0);
        sub_22800C88C(v56, &qword_27D81E328, &qword_2281402C0);
        v48(v46, v2);
        sub_22800C88C(v38, &qword_27D81E328, &qword_2281402C0);
        if (v47)
        {
          goto LABEL_18;
        }

LABEL_14:

        goto LABEL_15;
      }

      sub_22800C88C(v14, &qword_27D81E328, &qword_2281402C0);
      sub_22800C88C(v56, &qword_27D81E328, &qword_2281402C0);
      (*(v3 + 8))(v40, v2);
    }

    sub_22800C88C(v38, &qword_27D81E6C0, &qword_22813BA88);
    goto LABEL_14;
  }

  sub_22800C88C(v8, &qword_27D81E320, &unk_22813A7D0);
LABEL_15:
  v65 = v59;
  v66 = v60;
  MEMORY[0x22AAB1970](95, 0xE100000000000000);
  MEMORY[0x22AAB1970](v61, v62);

  MEMORY[0x22AAB1970](95, 0xE100000000000000);
  v41 = v57;
  v42 = v58;
LABEL_16:
  MEMORY[0x22AAB1970](v41, v42);

  v43 = v65;
  (*(v63 + 8))(v25, v64);
  return v43;
}

uint64_t sub_22800B714(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22813882C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, a2);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v5, qword_2813C4990);
  }

  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_22813880C();
  v11 = sub_2281396DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_227FC3000, v10, v11, "InferenceLocale's language code is nil.", v12, 2u);
    MEMORY[0x22AAB28A0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return 0x4C6E776F6E6B6E55;
}

uint64_t sub_22800B938()
{
  v0 = sub_22813882C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_2813C8A08);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v4 = __swift_project_value_buffer(v0, qword_2813C4990);
  }

  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_22813880C();
  v6 = sub_2281396DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_227FC3000, v5, v6, "InferenceLocale's region code is nil.", v7, 2u);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0x526E776F6E6B6E55;
}

uint64_t type metadata accessor for PromptManager(uint64_t a1)
{
  result = qword_2813C7B60;
  if (!qword_2813C7B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22800BBB4(ValueMetadata *a1, uint64_t a2, unsigned __int8 *a3)
{
  v46 = a1;
  v4 = sub_22813882C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6C8, &qword_22813BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813BA30;
  v44 = type metadata accessor for SKMailMessage(0);
  *(inited + 32) = v44;
  *(inited + 40) = 0x7373654D6C69616DLL;
  *(inited + 48) = 0xEB00000000656761;
  *(inited + 56) = &type metadata for SKMailMessageThread;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000002281438C0;
  *(inited + 80) = type metadata accessor for SKTextMessage(0);
  *(inited + 88) = 0x7373654D74786574;
  *(inited + 96) = 0xEB00000000656761;
  *(inited + 104) = &type metadata for SKTextMessageThread;
  *(inited + 112) = 0x7373654D74786574;
  *(inited + 120) = 0xEB00000000656761;
  *(inited + 128) = type metadata accessor for SKUserNotification(0);
  strcpy((inited + 136), "notification");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = &type metadata for SKUserNotificationThread;
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000002281446D0;
  *(inited + 176) = type metadata accessor for SKNoteMessage(0);
  *(inited + 184) = 0x7373654D65746F6ELL;
  *(inited + 192) = 0xEB00000000656761;
  *(inited + 200) = &type metadata for SKText;
  *(inited + 208) = 0x7478655465657266;
  *(inited + 216) = 0xE800000000000000;
  *(inited + 224) = &type metadata for SKTextChunk;
  *(inited + 232) = 0x7478655465657266;
  *(inited + 240) = 0xE800000000000000;
  v10 = sub_227FE3F98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6D0, &qword_22813BA98);
  swift_arrayDestroy();
  v45 = v10;
  v43 = v4;
  v42 = v5;
  v41 = v7;
  if (v8 == 2)
  {
  }

  else
  {
    v11 = sub_2281399BC();

    v12 = v46;
    if ((v11 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v13 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  HIDWORD(v40) = byte_2813C4629;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v14 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v14 = &qword_2813C76F8;
  }

  v15 = *(*v14 + 400);
  v16 = *(*v14 + 408);
  v17 = *(*v14 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v18 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v16(v47, v17);

    v15 = LOBYTE(v47[0]);
  }

  else
  {
  }

  v10 = v45;
  if (v15 && v44 == v46)
  {
    goto LABEL_32;
  }

  if (HIDWORD(v40))
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v19 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v19 = &qword_2813C76F8;
  }

  v20 = *(*v19 + 440);
  v21 = *(*v19 + 448);
  v22 = *(*v19 + 2208);

  if (v18)
  {
    v21(v47, v22);

    v20 = LOBYTE(v47[0]);
  }

  else
  {
  }

  v10 = v45;
  v12 = v46;
  if (v20)
  {
    v12 = v46;
    if (v46 == &type metadata for SKMailMessageThread)
    {
LABEL_32:
      v12 = &type metadata for SKText;
    }
  }

LABEL_33:
  if (v8)
  {
    v23 = sub_2281399BC();

    if ((v23 & 1) == 0 || v46 != &type metadata for SKUserNotificationThread)
    {
      goto LABEL_64;
    }
  }

  else
  {

    if (v46 != &type metadata for SKUserNotificationThread)
    {
      goto LABEL_64;
    }
  }

  v24 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v25 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v25 = &qword_2813C76F8;
  }

  v26 = *(*v25 + 1688);
  v27 = *(*v25 + 1696);
  v28 = *(*v25 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v27(v47, v28);

    v10 = v45;
    if (v47[0])
    {
      goto LABEL_64;
    }
  }

  else
  {

    v10 = v45;
    if (v26)
    {
      goto LABEL_64;
    }
  }

  v29 = v43;
  v30 = v42;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v29, qword_2813C8A20);
  v32 = v41;
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v29, qword_2813C4990);
  }

  (*(v30 + 16))(v32, v31, v29);
  v33 = sub_22813880C();
  v34 = sub_2281396BC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_227FC3000, v33, v34, "Received request to summarize a UserNotification stack using style .topic; falling back to .topLine because InternalSettings.current.notificationStackTopicSummariesEnabled is false", v35, 2u);
    MEMORY[0x22AAB28A0](v35, -1, -1);
  }

  (*(v30 + 8))(v32, v29);
LABEL_64:
  v36 = 0x546E776F6E6B6E55;
  if (v10[2])
  {
    v37 = sub_22808C9DC(v12);
    if (v38)
    {
      v36 = *(v10[7] + 16 * v37);
    }
  }

  return v36;
}

uint64_t sub_22800C790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22800C88C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22800C8EC()
{
  result = qword_2813C45E0;
  if (!qword_2813C45E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C45E0);
  }

  return result;
}

uint64_t sub_22800C938(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_22800C950(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  LOBYTE(v11) = *(a1 + 32);
  v3 = sub_22800BBB4(v2, v1, &v11);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_22813988C();

  v11 = 0xD00000000000001BLL;
  v12 = 0x8000000228144150;
  MEMORY[0x22AAB1970](v3, v5);

  MEMORY[0x22AAB1970](46, 0xE100000000000000);
  MEMORY[0x22AAB1970](v7, v9);

  return v11;
}

uint64_t objectdestroyTm_2()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22800CA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22800CAE4(uint64_t a1)
{
  result = sub_22813755C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModelBundleIdentifier(319);
    if (v3 <= 0x3F)
    {
      result = sub_22813791C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22800CC40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = v4();
  v6 = (*(a2 + 24))(a1, a2);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v4)(a1, a2);
  }

  return v7 | ((v5 == v6) << 32);
}

uint64_t static GMSModelInfo.fetchModelInfo(for:onBehalfOfRequest:updatingIfNeededWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22800CD1C, 0, 0);
}

uint64_t sub_22800CD1C()
{
  if (qword_2813C73E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22800CDEC;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_228011668(v4, v5, v2, v3);
}

uint64_t sub_22800CDEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *GMSModelInfo.supportedLanguages.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = (v1 + *(type metadata accessor for GMSModelInfo(0) + 20));
  v7 = *v6;
  v8 = v6[1];
  sub_22813721C();
  v9 = sub_22801354C(v7, v8);
  v11 = v10;
  if (v9 == sub_22813746C() && v11 == v12)
  {

    (*(v3 + 8))(v5, v2);
    return sub_22800EF50(0xD000000000000012, 0x80000002281449D0);
  }

  v14 = sub_2281399BC();

  (*(v3 + 8))(v5, v2);
  if (v14)
  {
    return sub_22800EF50(0xD000000000000012, 0x80000002281449D0);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v15 = sub_22813882C();
  __swift_project_value_buffer(v15, qword_2813C89F0);
  v16 = sub_22813880C();
  v17 = sub_2281396EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    MEMORY[0x22AAB28A0](v18, -1, -1);
  }

  return 0;
}

uint64_t sub_22800D130()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  __swift_allocate_value_buffer(v0, qword_2813C8B38);
  v1 = __swift_project_value_buffer(v0, qword_2813C8B38);
  v2 = sub_22813744C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t GMSModelInfo.executionEnvironment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228138CFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GMSModelInfo.modelIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 20));

  return v1;
}

uint64_t GMSModelInfo.tokenizerIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 24));

  return v1;
}

uint64_t GMSModelInfo.baseModelIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 28));

  return v1;
}

uint64_t GMSModelInfo.draftModelIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 32));

  return v1;
}

uint64_t GMSModelInfo.modelVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 36));

  return v1;
}

uint64_t GMSModelInfo.tokenizerVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 40));

  return v1;
}

uint64_t GMSModelInfo.baseModelVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 44));

  return v1;
}

uint64_t GMSModelInfo.draftModelVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 48));

  return v1;
}

unint64_t GMSModelInfo.userDefinedFields.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - v2;
  v4 = sub_22813744C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C7E58 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_2813C8B38);
  sub_227FCA9B0(v8, v3, &qword_27D81E768, &qword_22813BBD8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_227FCAC58(v3, &qword_27D81E768, &qword_22813BBD8);
    v9 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 52));
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = sub_22813743C();
    if (!v9)
    {
      v9 = sub_227FE3C84(MEMORY[0x277D84F90]);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

uint64_t sub_22800D644(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for GMSModelInfo(0) + 52);

  *(a2 + v4) = v3;
  return result;
}

uint64_t GMSModelInfo.lastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GMSModelInfo(0) + 56);
  v4 = sub_228136F8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL GMSModelInfo.isStale.getter()
{
  type metadata accessor for GMSModelInfo(0);
  sub_228136F4C();
  v1 = v0;
  v2 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v3 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v3 = &qword_2813C76F8;
  }

  v4 = *(*v3 + 1968);
  v5 = *(*v3 + 1976);
  v6 = *(*v3 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v5(&v8, v6);

    v4 = v8;
  }

  else
  {
  }

  return v4 <= -v1;
}

double GMSModelInfo.staleness.getter()
{
  type metadata accessor for GMSModelInfo(0);
  sub_228136F4C();
  return -v0;
}

uint64_t sub_22800D958@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v8;
  v47 = sub_228138CFC();
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_227FCAAE8(a1, v21, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v44;
      v23 = v45;
      v25 = v46;
      (*(v45 + 32))(v44, v21, v46);
      v26 = v43;
      (*(v23 + 16))(v43, v24, v25);
      (*(v9 + 104))(v11, *MEMORY[0x277D4B348], v47);
      v27 = v48;
      sub_228015A70(v48, v50);
      sub_22800E288(v26, v11, v50, a3);
      __swift_destroy_boxed_opaque_existential_1Tm_3(v27);
      sub_228013E6C(v49, type metadata accessor for ModelBundleIdentifier);
      return (*(v23 + 8))(v24, v25);
    }

    else
    {
      sub_2281380CC();
      sub_2281380BC();
      v30 = sub_227FEB424();
      v45 = v31;
      v46 = v30;

      (*(v9 + 104))(a3, *MEMORY[0x277D4B350], v47);
      v32 = type metadata accessor for GMSModelInfo(0);
      v33 = (a3 + v32[6]);
      v34 = (a3 + v32[7]);
      v35 = (a3 + v32[8]);
      v36 = (a3 + v32[9]);
      v37 = (a3 + v32[10]);
      v38 = (a3 + v32[11]);
      v39 = v32[13];
      v40 = (a3 + v32[12]);
      *(a3 + v39) = 0;
      sub_228136F6C();
      __swift_destroy_boxed_opaque_existential_1Tm_3(v48);
      result = sub_228013E6C(v49, type metadata accessor for ModelBundleIdentifier);
      v41 = (a3 + v32[5]);
      v42 = v45;
      *v41 = v46;
      v41[1] = v42;
      *v36 = 0;
      v36[1] = 0;
      *v33 = 0;
      v33[1] = 0;
      *v37 = 0;
      v37[1] = 0;
      *v34 = 0;
      v34[1] = 0;
      *v38 = 0;
      v38[1] = 0;
      *v35 = 0;
      v35[1] = 0;
      *v40 = 0;
      v40[1] = 0;
      *(a3 + v39) = 0;
    }
  }

  else
  {
    (*(v13 + 32))(v18, v21, v12);
    (*(v13 + 16))(v16, v18, v12);
    (*(v9 + 104))(v11, *MEMORY[0x277D4B358], v47);
    v29 = v48;
    sub_228015A70(v48, v50);
    sub_22800DE78(v16, v11, v50, a3);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v29);
    sub_228013E6C(v49, type metadata accessor for ModelBundleIdentifier);
    return (*(v13 + 8))(v18, v12);
  }

  return result;
}

uint64_t sub_22800DE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GMSModelInfo(0);
  v15 = (a4 + v14[6]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a4 + v14[7]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a4 + v14[8]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a4 + v14[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a4 + v14[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a4 + v14[11]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a4 + v14[12]);
  *v21 = 0;
  v21[1] = 0;
  *(a4 + v14[13]) = 0;
  if (qword_2813C4910 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Signpost(0);
  v49 = __swift_project_value_buffer(v22, qword_2813C8888);
  sub_228015A70(a3, v52);
  v46 = a3;
  v47 = *(v8 + 16);
  v47(v11, a1, v7);
  v23 = *(v8 + 80);
  v41 = v11;
  v43 = (v23 + 56) & ~v23;
  v24 = swift_allocObject();
  v44 = v9;
  v25 = v24;
  sub_227FCF218(v52, v24 + 16);
  v48 = v8;
  v45 = *(v8 + 32);
  v26 = v11;
  v27 = v7;
  v45(v25 + ((v23 + 56) & ~v23), v26, v7);
  sub_22812F68C(sub_228015C3C, v50);

  sub_228136F6C();
  v42 = sub_228138CFC();
  v28 = *(v42 - 8);
  (*(v28 + 16))(a4, v51, v42);
  v29 = a1;
  v30 = sub_22813746C();
  v31 = (a4 + v14[5]);
  *v31 = v30;
  v31[1] = v32;
  sub_2280147C4(a4);
  v33 = v46;
  sub_228015A70(v46, v52);
  v34 = v41;
  v47(v41, v29, v27);
  v35 = v43;
  v36 = swift_allocObject();
  sub_227FCF218(v52, v36 + 16);
  v37 = v36 + v35;
  v38 = v27;
  v45(v37, v34, v27);
  v39 = v50;
  sub_2281317B8(v50, sub_228015998, v36);

  __swift_destroy_boxed_opaque_existential_1Tm_3(v33);
  (*(v28 + 8))(v51, v42);
  (*(v48 + 8))(v29, v38);
  return sub_228013E6C(v39, type metadata accessor for SignpostToken);
}

uint64_t sub_22800E288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GMSModelInfo(0);
  v15 = (a4 + v14[6]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a4 + v14[7]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a4 + v14[8]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a4 + v14[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a4 + v14[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a4 + v14[11]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a4 + v14[12]);
  *v21 = 0;
  v21[1] = 0;
  *(a4 + v14[13]) = 0;
  if (qword_2813C4910 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Signpost(0);
  v49 = __swift_project_value_buffer(v22, qword_2813C8888);
  sub_228015A70(a3, v52);
  v46 = a3;
  v47 = *(v8 + 16);
  v47(v11, a1, v7);
  v23 = *(v8 + 80);
  v41 = v11;
  v43 = (v23 + 56) & ~v23;
  v24 = swift_allocObject();
  v44 = v9;
  v25 = v24;
  sub_227FCF218(v52, v24 + 16);
  v48 = v8;
  v45 = *(v8 + 32);
  v26 = v11;
  v27 = v7;
  v45(v25 + ((v23 + 56) & ~v23), v26, v7);
  sub_22812F68C(sub_228015C40, v50);

  sub_228136F6C();
  v42 = sub_228138CFC();
  v28 = *(v42 - 8);
  (*(v28 + 16))(a4, v51, v42);
  v29 = a1;
  v30 = sub_22813746C();
  v31 = (a4 + v14[5]);
  *v31 = v30;
  v31[1] = v32;
  sub_2280147C4(a4);
  v33 = v46;
  sub_228015A70(v46, v52);
  v34 = v41;
  v47(v41, v29, v27);
  v35 = v43;
  v36 = swift_allocObject();
  sub_227FCF218(v52, v36 + 16);
  v37 = v36 + v35;
  v38 = v27;
  v45(v37, v34, v27);
  v39 = v50;
  sub_2281317B8(v50, sub_228015AD4, v36);

  __swift_destroy_boxed_opaque_existential_1Tm_3(v33);
  (*(v28 + 8))(v51, v42);
  (*(v48 + 8))(v29, v38);
  return sub_228013E6C(v39, type metadata accessor for SignpostToken);
}

unint64_t sub_22800E698(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22813988C();

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  MEMORY[0x22AAB1970](v9);

  MEMORY[0x22AAB1970](0xD000000000000013, 0x8000000228144AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = sub_22813746C();
  MEMORY[0x22AAB1970](v10);

  MEMORY[0x22AAB1970](93, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_22800E7C0()
{
  v1 = v0;
  v68 = sub_228136F8C();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22813760C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22813762C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22813767C();
  v11 = sub_22813761C();
  (*(v8 + 8))(v10, v7);
  v76 = *(v11 + 16);
  if (!v76)
  {

    v54 = 0;
    return v54 & 1;
  }

  v12 = sub_227FE3C84(MEMORY[0x277D84F90]);
  v13 = 0;
  v74 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v75 = v0;
  v72 = (v4 + 8);
  v73 = v4 + 16;
  v70 = v4;
  v71 = v3;
  v69 = v11;
  while (v13 < *(v11 + 16))
  {
    (*(v4 + 16))(v6, v74 + *(v4 + 72) * v13, v3);
    v14 = sub_2281375FC();
    if (v15)
    {
      v16 = v15;
      v77 = v14;
      v17 = sub_2281375EC();
      v19 = v18;
      if (sub_22813942C())
      {
        if (sub_22813936C() < 0)
        {
          goto LABEL_40;
        }

        sub_22813939C();
        v20 = sub_22813948C();
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v17 = MEMORY[0x22AAB18D0](v20, v22, v24, v26);
        v19 = v27;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v12;
      v30 = sub_22808C964(v17, v19);
      v31 = v12[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_39;
      }

      v34 = v29;
      if (v12[3] >= v33)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v3 = v71;
          if ((v29 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_22801C6E4();
          v3 = v71;
          if ((v34 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_2280185D8(v33, isUniquelyReferenced_nonNull_native);
        v35 = sub_22808C964(v17, v19);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_42;
        }

        v30 = v35;
        v3 = v71;
        if ((v34 & 1) == 0)
        {
LABEL_19:
          v12 = v78;
          v78[(v30 >> 6) + 8] |= 1 << v30;
          v38 = (v12[6] + 16 * v30);
          *v38 = v17;
          v38[1] = v19;
          v39 = (v12[7] + 16 * v30);
          *v39 = v77;
          v39[1] = v16;
          (*v72)(v6, v3);
          v40 = v12[2];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_41;
          }

          v12[2] = v42;
          goto LABEL_21;
        }
      }

      v12 = v78;
      v37 = (v78[7] + 16 * v30);
      *v37 = v77;
      v37[1] = v16;

      (*v72)(v6, v3);
LABEL_21:
      v1 = v75;
      v11 = v69;
      v4 = v70;
      goto LABEL_4;
    }

    (*v72)(v6, v3);
LABEL_4:
    if (v76 == ++v13)
    {

      v43 = type metadata accessor for GMSModelInfo(0);
      v44 = v12[2];
      v77 = v43;
      if (v44 && (v45 = v43, v46 = sub_22808C964(*(v1 + *(v43 + 20)), *(v1 + *(v43 + 20) + 8)), (v47 & 1) != 0))
      {
        v48 = (v12[7] + 16 * v46);
        v50 = *v48;
        v49 = v48[1];
        v51 = (v1 + *(v45 + 36));

        *v51 = v50;
        v51[1] = v49;
        v52 = v67;
        sub_228136F6C();
        v53 = v66;
        (*(v66 + 40))(v1 + *(v45 + 56), v52, v68);
        v54 = 1;
      }

      else
      {
        v54 = 0;
        v53 = v66;
      }

      KeyPath = swift_getKeyPath(byte_22813BD28);
      v81 = swift_getKeyPath(byte_22813BD48);
      v82 = swift_getKeyPath(byte_22813BD68);
      v83 = swift_getKeyPath(byte_22813BD88);
      v84 = swift_getKeyPath(byte_22813BDA8);
      v55 = 0;
      v85 = swift_getKeyPath("xEnU");
      v56 = (v53 + 40);
      while (1)
      {

        swift_getAtKeyPath(&v78);
        if (!v79)
        {
          goto LABEL_27;
        }

        if (!v12[2])
        {

          goto LABEL_28;
        }

        v57 = sub_22808C964(v78, v79);
        v59 = v58;

        if (v59)
        {
          v60 = (v12[7] + 16 * v57);
          v61 = v60[1];
          v78 = *v60;
          v79 = v61;

          v62 = v75;
          swift_setAtWritableKeyPath();
          v63 = v67;
          sub_228136F6C();

          (*v56)(v62 + *(v77 + 56), v63, v68);
          v54 = 1;
        }

        else
        {
LABEL_27:
        }

LABEL_28:
        v55 += 16;
        if (v55 == 48)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7F8, &qword_22813BDE8);
          swift_arrayDestroy();
          return v54 & 1;
        }
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_2281399EC();
  __break(1u);
  return result;
}

char *sub_22800EF50(uint64_t a1, unint64_t a2)
{
  v63 = a2;
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v52 - v6;
  v65 = sub_22813713C();
  v57 = *(v65 - 8);
  v7 = MEMORY[0x28223BE20](v65);
  v64 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v67 = v52 - v10;
  MEMORY[0x28223BE20](v9);
  v56 = v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7D8, &qword_22813BD00);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v52 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  MEMORY[0x28223BE20](v16);
  v18 = v52 - v17;
  v19 = sub_22813744C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C7E58 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v23 = __swift_project_value_buffer(v16, qword_2813C8B38);
    sub_227FCA9B0(v23, v18, &qword_27D81E768, &qword_22813BBD8);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_227FCAC58(v18, &qword_27D81E768, &qword_22813BBD8);
      v24 = *(&v2->isa + *(type metadata accessor for GMSModelInfo(0) + 52));
      v16 = v58;
      if (!v24)
      {
        return 0;
      }

      if (!*(v24 + 16))
      {
LABEL_28:

        return 0;
      }
    }

    else
    {
      (*(v20 + 32))(v22, v18, v19);
      v25 = sub_22813743C();
      v16 = v58;
      if (!v25)
      {
        v25 = sub_227FE3C84(MEMORY[0x277D84F90]);
      }

      v24 = v25;
      (*(v20 + 8))(v22, v19);
      if (!*(v24 + 16))
      {
        goto LABEL_28;
      }
    }

    v26 = sub_22808C964(v55, v63);
    if ((v27 & 1) == 0)
    {
      goto LABEL_28;
    }

    v28 = (*(v24 + 56) + 16 * v26);
    v29 = *v28;
    v30 = v28[1];

    v70[0] = v29;
    v70[1] = v30;
    v52[1] = v30;
    sub_228137BDC();
    sub_228015AE8();
    sub_228015B3C();
    v2 = v70;
    v19 = sub_22813924C();
    (*(v13 + 8))(v15, v12);
    v62 = *(v19 + 16);
    if (!v62)
    {
      break;
    }

    v13 = 0;
    v68 = (v57 + 32);
    v54 = (v57 + 8);
    v59 = (v57 + 48);
    v60 = (v57 + 56);
    v20 = v19 + 56;
    v15 = MEMORY[0x277D84F90];
    *&v31 = 136315394;
    v53 = v31;
    v32 = v67;
    v61 = v19;
    while (v13 < *(v19 + 16))
    {
      v69 = v15;
      v33 = *(v20 - 24);
      v22 = *(v20 - 16);
      v34 = *(v20 - 8);
      v35 = *v20;

      MEMORY[0x22AAB18D0](v33, v22, v34, v35);
      sub_2281370DC();
      v12 = v66;
      sub_22813710C();
      v36 = sub_22813701C();
      v2 = (*(*(v36 - 8) + 48))(v12, 1, v36);
      sub_227FCAC58(v12, &qword_27D81E328, &qword_2281402C0);
      if (v2 == 1)
      {
        if (qword_2813C49A8 != -1)
        {
          swift_once();
        }

        v37 = sub_22813882C();
        __swift_project_value_buffer(v37, qword_2813C89F0);

        v12 = v63;

        v2 = sub_22813880C();
        v38 = sub_2281396EC();

        if (os_log_type_enabled(v2, v38))
        {
          v39 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v70[0] = v12;
          *v39 = v53;
          *(v39 + 4) = sub_227FCC340(v55, v63, v70);
          *(v39 + 12) = 2080;
          v40 = MEMORY[0x22AAB18D0](v33, v22, v34, v35);
          v42 = sub_227FCC340(v40, v41, v70);

          *(v39 + 14) = v42;
          _os_log_impl(&dword_227FC3000, v2, v38, "Unsupported language code in adapter metadata for %s: %s", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v12, -1, -1);
          MEMORY[0x22AAB28A0](v39, -1, -1);
        }

        v32 = v67;
        v18 = v65;
        (*v54)(v67, v65);
        v43 = 1;
        v16 = v58;
      }

      else
      {
        v18 = v65;
        (*v68)(v16, v32, v65);
        v43 = 0;
      }

      (*v60)(v16, v43, 1, v18);

      if ((*v59)(v16, 1, v18) == 1)
      {
        sub_227FCAC58(v16, &qword_27D81E778, &qword_22813BC80);
        v15 = v69;
      }

      else
      {
        v2 = *v68;
        v44 = v56;
        (*v68)(v56, v16, v18);
        (v2)(v64, v44, v18);
        v15 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2281336A0(0, v15[2] + 1, 1, v15);
        }

        v12 = v15[2];
        v45 = v15[3];
        if (v12 >= v45 >> 1)
        {
          v15 = sub_2281336A0((v45 > 1), v12 + 1, 1, v15);
        }

        v15[2] = v12 + 1;
        (v2)(v15 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v12, v64, v18);
        v32 = v67;
      }

      ++v13;
      v20 += 32;
      v19 = v61;
      if (v62 == v13)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v15 = MEMORY[0x277D84F90];
LABEL_32:

  if (!v15[2])
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v47 = sub_22813882C();
    __swift_project_value_buffer(v47, qword_2813C89F0);

    v48 = sub_22813880C();
    v49 = sub_2281396EC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v70[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_227FCC340(v55, v63, v70);
      __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
      MEMORY[0x22AAB28A0](v51, -1, -1);
      MEMORY[0x22AAB28A0](v50, -1, -1);
    }
  }

  return v15;
}

uint64_t GMSModelInfo.safetyRejectionPlaceholder.getter()
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  MEMORY[0x28223BE20](v35);
  v2 = &v33 - v1;
  v3 = sub_22813744C();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = type metadata accessor for GMSModelInfo(0);
  v10 = *(v9 + 20);
  v34 = v0;
  v11 = (v0 + v10);
  v12 = *v11;
  v13 = v11[1];
  sub_22813720C();
  v14 = sub_22801354C(v12, v13);
  v16 = v15;
  if (v14 == sub_22813746C() && v16 == v17)
  {

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v19 = sub_2281399BC();

    (*(v6 + 8))(v8, v5);
    if ((v19 & 1) == 0)
    {
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v20 = sub_22813882C();
      __swift_project_value_buffer(v20, qword_2813C89F0);
      v21 = sub_22813880C();
      v22 = sub_2281396EC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        MEMORY[0x22AAB28A0](v23, -1, -1);
      }

      return 0;
    }
  }

  if (qword_2813C7E58 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v35, qword_2813C8B38);
  sub_227FCA9B0(v24, v2, &qword_27D81E768, &qword_22813BBD8);
  v25 = v36;
  if ((*(v36 + 48))(v2, 1, v3) != 1)
  {
    v27 = v33;
    (*(v25 + 32))(v33, v2, v3);
    v28 = sub_22813743C();
    if (!v28)
    {
      v28 = sub_227FE3C84(MEMORY[0x277D84F90]);
    }

    v26 = v28;
    (*(v25 + 8))(v27, v3);
    if (!*(v26 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_227FCAC58(v2, &qword_27D81E768, &qword_22813BBD8);
  v26 = *(v34 + *(v9 + 52));
  if (v26)
  {

    if (!*(v26 + 16))
    {
LABEL_23:

      return 0;
    }

LABEL_21:
    v29 = sub_22808C964(0xD00000000000001ALL, 0x80000002281449F0);
    if (v30)
    {
      v31 = *(*(v26 + 56) + 16 * v29);

      return v31;
    }

    goto LABEL_23;
  }

  return 0;
}

char *GMSModelInfo.supportedLanguagesForTopicSummaries.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = (v1 + *(type metadata accessor for GMSModelInfo(0) + 20));
  v7 = *v6;
  v8 = v6[1];
  sub_22813720C();
  v9 = sub_22801354C(v7, v8);
  v11 = v10;
  if (v9 == sub_22813746C() && v11 == v12)
  {

    (*(v3 + 8))(v5, v2);
    return sub_22800EF50(0xD000000000000023, 0x8000000228144A10);
  }

  v14 = sub_2281399BC();

  (*(v3 + 8))(v5, v2);
  if (v14)
  {
    return sub_22800EF50(0xD000000000000023, 0x8000000228144A10);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v15 = sub_22813882C();
  __swift_project_value_buffer(v15, qword_2813C89F0);
  v16 = sub_22813880C();
  v17 = sub_2281396EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    MEMORY[0x22AAB28A0](v18, -1, -1);
  }

  return 0;
}

void static GMSModelInfo.prefetchModelInfo(for:onBehalfOfRequest:)(uint64_t a1)
{
  if (qword_2813C73E8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = *(off_2813C73F0 + 2);
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_2280138B4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_228010174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v18[1] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E780, &qword_22813BC88);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v18 - v13;
  v15 = sub_228138CFC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a2, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_228138D0C();
  type metadata accessor for GMSModelInfo(0);

  sub_228138D2C();

  sub_228138D1C();

  sub_228138D8C();

  sub_228138D5C();

  sub_228138D7C();

  sub_228138D3C();

  sub_228138D9C();

  sub_228138D6C();
  sub_227FCA9B0(a3, v11, &qword_27D81E778, &qword_22813BC80);
  sub_228138D4C();
  sub_228138DAC();
  return sub_228138DBC();
}

uint64_t sub_228010430()
{
  type metadata accessor for GMSModelInfoCache();
  v0 = swift_allocObject();
  v1 = sub_227FE3A9C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E800, &unk_22813BDF0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  off_2813C73F0 = v0;
  return result;
}

uint64_t sub_2280104A8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a4;
  v96 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v84 - v7;
  v8 = type metadata accessor for GMSModelInfo(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102 - 8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v90 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x28223BE20](v15);
  v87 = &v84 - v16;
  v17 = type metadata accessor for ModelBundleIdentifier(0);
  v92 = *(v17 - 8);
  v18 = *(v92 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v95 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v93 = &v84 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v84 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E798, &qword_22813BCA0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v25);
  v86 = (&v84 - v29);
  MEMORY[0x28223BE20](v28);
  v104 = &v84 - v30;
  v99 = a2;
  sub_227FCAAE8(a2, v23, type metadata accessor for ModelBundleIdentifier);
  v94 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v85 = v13;
  v84 = v12;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = v90;
      v32 = v91;
      (*(v91 + 32))(v90, v23, v13);
      v34 = sub_22813746C();
      v35 = v13;
      v36 = v34;
      v38 = v37;
      (*(v32 + 8))(v33, v35);
    }

    else
    {
      v36 = 0xD000000000000045;
      v38 = 0x8000000228144A90;
    }
  }

  else
  {
    v39 = a1;
    v41 = v88;
    v40 = v89;
    v42 = *(v88 + 32);
    v100 = v10;
    v43 = v27;
    v44 = v87;
    v42(v87, v23, v89);
    v36 = sub_22813746C();
    v38 = v45;
    v46 = v41;
    a1 = v39;
    v47 = v44;
    v27 = v43;
    v10 = v100;
    (*(v46 + 8))(v47, v40);
  }

  v100 = a1;
  v48 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_11;
  }

  v49 = sub_22808C964(v36, v38);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
LABEL_11:
    v54 = *(v101 + 56);
    (v54)(v104, 1, 1, v102);
    goto LABEL_12;
  }

  v52 = v101;
  v53 = v104;
  sub_227FCAAE8(*(v48 + 56) + *(v101 + 72) * v49, v104, type metadata accessor for GMSModelInfoCache.CacheEntry);
  v54 = *(v52 + 56);
  v55 = v102;
  (v54)(v53, 0, 1, v102);
  v56 = v86;
  sub_227FCA9B0(v53, v86, &qword_27D81E798, &qword_22813BCA0);
  if ((*(v52 + 48))(v56, 1, v55) == 1)
  {
    sub_227FCAC58(v56, &qword_27D81E798, &qword_22813BCA0);
    return sub_227FCAC58(v104, &qword_27D81E798, &qword_22813BCA0);
  }

  v82 = v84;
  sub_227FCAAE8(v56, v84, type metadata accessor for GMSModelInfoCache.CacheEntry);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_228013E6C(v82, type metadata accessor for GMSModelInfoCache.CacheEntry);
    sub_228013E6C(v56, type metadata accessor for GMSModelInfoCache.CacheEntry);
    return sub_227FCAC58(v104, &qword_27D81E798, &qword_22813BCA0);
  }

  sub_227FC829C(v82, v10, type metadata accessor for GMSModelInfo);
  v83 = GMSModelInfo.isStale.getter();
  sub_228013E6C(v10, type metadata accessor for GMSModelInfo);
  sub_228013E6C(v56, type metadata accessor for GMSModelInfoCache.CacheEntry);
  if (!v83)
  {
    return sub_227FCAC58(v104, &qword_27D81E798, &qword_22813BCA0);
  }

LABEL_12:
  v86 = v54;
  v57 = sub_22813959C();
  v58 = v97;
  (*(*(v57 - 8) + 56))(v97, 1, 1, v57);
  v59 = v99;
  v60 = v93;
  sub_227FCAAE8(v99, v93, type metadata accessor for ModelBundleIdentifier);
  sub_228015A70(v96, v103);
  v61 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v62 = (v18 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  sub_227FC829C(v60, v63 + v61, type metadata accessor for ModelBundleIdentifier);
  sub_227FCF218(v103, v63 + v62);
  *(v63 + ((v62 + 47) & 0xFFFFFFFFFFFFFFF8)) = v98;

  v64 = sub_2280607B4(0, 0, v58, &unk_22813BCB0, v63);
  v65 = v95;
  sub_227FCAAE8(v59, v95, type metadata accessor for ModelBundleIdentifier);
  v66 = swift_getEnumCaseMultiPayload();
  if (v66)
  {
    if (v66 == 1)
    {
      v67 = v90;
      v68 = v91;
      v69 = v85;
      (*(v91 + 32))(v90, v65, v85);
      v70 = sub_22813746C();
      v72 = v71;
      (*(v68 + 8))(v67, v69);
    }

    else
    {
      v70 = 0xD000000000000045;
      v72 = 0x8000000228144A90;
    }
  }

  else
  {
    v74 = v88;
    v73 = v89;
    v75 = v27;
    v76 = v87;
    (*(v88 + 32))(v87, v65, v89);
    v70 = sub_22813746C();
    v72 = v77;
    v78 = v76;
    v27 = v75;
    (*(v74 + 8))(v78, v73);
  }

  v79 = v86;
  *v27 = v64;
  v80 = v102;
  swift_storeEnumTagMultiPayload();
  v79(v27, 0, 1, v80);
  sub_22802509C(v27, v70, v72);
  return sub_227FCAC58(v104, &qword_27D81E798, &qword_22813BCA0);
}

uint64_t sub_228010E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a1;
  v6[18] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for ModelBundleIdentifier(0);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228010FBC, 0, 0);
}

uint64_t sub_228010FBC()
{
  v62 = v0;
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v3 = v0[18];
  v2 = v0[19];
  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C89F0);
  sub_227FCAAE8(v3, v1, type metadata accessor for ModelBundleIdentifier);
  sub_228015A70(v2, (v0 + 2));
  v5 = sub_22813880C();
  v6 = sub_2281396BC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (!v7)
  {

    sub_228013E6C(v8, type metadata accessor for ModelBundleIdentifier);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v0 + 2);
    goto LABEL_12;
  }

  v9 = v0[31];
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v61[0] = v11;
  *v10 = 136446466;
  sub_227FCAAE8(v8, v9, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v17 = 0xD000000000000045;
      v19 = 0x8000000228144A90;
      goto LABEL_11;
    }

    v13 = v0[31];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[21];
  }

  else
  {
    v13 = v0[31];
    v14 = v0[25];
    v15 = v0[26];
    v16 = v0[24];
  }

  (*(v14 + 32))(v15, v13, v16);
  v17 = sub_22813746C();
  v19 = v18;
  (*(v14 + 8))(v15, v16);
LABEL_11:
  sub_228013E6C(v0[32], type metadata accessor for ModelBundleIdentifier);
  v20 = sub_227FCC340(v17, v19, v61);

  *(v10 + 4) = v20;
  *(v10 + 12) = 2082;
  v21 = v0[5];
  v22 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v21);
  v23 = (*(v22 + 16))(v21, v22);
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm_3(v0 + 2);
  v26 = sub_227FCC340(v23, v25, v61);

  *(v10 + 14) = v26;
  _os_log_impl(&dword_227FC3000, v5, v6, "Started prefetch of model info for modelIdentifier=%{public}s on behalf of requestIdentifier=%{public}s", v10, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAB28A0](v11, -1, -1);
  MEMORY[0x22AAB28A0](v10, -1, -1);

LABEL_12:
  v27 = v0[30];
  v29 = v0[19];
  v28 = v0[20];
  v31 = v0[17];
  v30 = v0[18];
  sub_227FCAAE8(v30, v27, type metadata accessor for ModelBundleIdentifier);
  sub_228015A70(v29, (v0 + 7));
  sub_22800D958(v27, v0 + 7, v31);
  v32 = *(v28 + 16);
  v33 = swift_task_alloc();
  *(v33 + 16) = v30;
  *(v33 + 24) = v31;
  os_unfair_lock_lock(v32 + 6);
  sub_228015C74(&v32[4]);
  os_unfair_lock_unlock(v32 + 6);
  v34 = v0[29];
  v36 = v0[18];
  v35 = v0[19];

  sub_227FCAAE8(v36, v34, type metadata accessor for ModelBundleIdentifier);
  sub_228015A70(v35, (v0 + 12));
  v37 = sub_22813880C();
  v38 = sub_2281396BC();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[29];
  if (!v39)
  {

    sub_228013E6C(v40, type metadata accessor for ModelBundleIdentifier);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v0 + 12);
    goto LABEL_21;
  }

  v41 = v0[28];
  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v61[0] = v43;
  *v42 = 136446466;
  sub_227FCAAE8(v40, v41, type metadata accessor for ModelBundleIdentifier);
  v44 = swift_getEnumCaseMultiPayload();
  if (v44)
  {
    if (v44 != 1)
    {
      v49 = 0xD000000000000045;
      v51 = 0x8000000228144A90;
      goto LABEL_20;
    }

    v45 = v0[28];
    v47 = v0[22];
    v46 = v0[23];
    v48 = v0[21];
  }

  else
  {
    v45 = v0[28];
    v47 = v0[25];
    v46 = v0[26];
    v48 = v0[24];
  }

  (*(v47 + 32))(v46, v45, v48);
  v49 = sub_22813746C();
  v51 = v50;
  (*(v47 + 8))(v46, v48);
LABEL_20:
  sub_228013E6C(v0[29], type metadata accessor for ModelBundleIdentifier);
  v52 = sub_227FCC340(v49, v51, v61);

  *(v42 + 4) = v52;
  *(v42 + 12) = 2082;
  v53 = v0[15];
  v54 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v53);
  v55 = (*(v54 + 16))(v53, v54);
  v57 = v56;
  __swift_destroy_boxed_opaque_existential_1Tm_3(v0 + 12);
  v58 = sub_227FCC340(v55, v57, v61);

  *(v42 + 14) = v58;
  _os_log_impl(&dword_227FC3000, v37, v38, "Completed prefetch of model info for modelIdentifier=%{public}s on behalf of requestIdentifier=%{public}s", v42, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAB28A0](v43, -1, -1);
  MEMORY[0x22AAB28A0](v42, -1, -1);

LABEL_21:

  v59 = v0[1];

  return v59();
}

uint64_t sub_228011668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v5[38] = swift_task_alloc();
  v8 = sub_2281376EC();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7F0, &qword_22813BD20);
  v5[43] = swift_task_alloc();
  v5[44] = type metadata accessor for GMSModelInfo(0);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E798, &qword_22813BCA0);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v9 = type metadata accessor for ModelBundleIdentifier(0);
  v5[52] = v9;
  v10 = *(v9 - 8);
  v5[53] = v10;
  v5[54] = *(v10 + 64);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280119D8, 0, 0);
}

uint64_t sub_2280119D8()
{
  v112 = v0;
  if (qword_2813C48F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = type metadata accessor for Signpost(0);
  *(v0 + 488) = __swift_project_value_buffer(v8, qword_2813C8840);
  sub_228015A70(v7, v0 + 16);
  sub_227FCAAE8(v6, v2, type metadata accessor for ModelBundleIdentifier);
  v9 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_227FCF218((v0 + 16), v10 + 16);
  sub_227FC829C(v2, v10 + v9, type metadata accessor for ModelBundleIdentifier);
  sub_22812F68C(sub_228015BA0, v1);

  v11 = *(v5 + 16);
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock((v11 + 24));
  sub_228015C04((v11 + 16), v4);
  os_unfair_lock_unlock((v11 + 24));
  v13 = *(v0 + 400);
  v12 = *(v0 + 408);

  sub_227FCA9B0(v12, v13, &qword_27D81E798, &qword_22813BCA0);
  v14 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 448);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = sub_22813882C();
    __swift_project_value_buffer(v18, qword_2813C89F0);
    sub_227FCAAE8(v17, v15, type metadata accessor for ModelBundleIdentifier);
    sub_228015A70(v16, v0 + 56);
    v19 = sub_22813880C();
    v20 = sub_2281396BC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 448);
    if (!v21)
    {

      sub_228013E6C(v22, type metadata accessor for ModelBundleIdentifier);
      __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 56));
LABEL_23:
      v61 = *(v0 + 472);
      v62 = *(v0 + 384);
      v64 = *(v0 + 224);
      v63 = *(v0 + 232);
      sub_227FCAAE8(v64, v61, type metadata accessor for ModelBundleIdentifier);
      sub_228015A70(v63, v0 + 96);
      sub_22800D958(v61, (v0 + 96), v62);
      v65 = swift_task_alloc();
      *(v65 + 16) = v64;
      *(v65 + 24) = v62;
      os_unfair_lock_lock((v11 + 24));
      sub_228015C44(v11 + 16);
      os_unfair_lock_unlock((v11 + 24));
      v66 = *(v0 + 408);

      v67 = v66;
LABEL_33:
      sub_227FCAC58(v67, &qword_27D81E798, &qword_22813BCA0);
      goto LABEL_34;
    }

    v23 = *(v0 + 440);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v111[0] = v25;
    *v24 = 136446466;
    sub_227FCAAE8(v22, v23, type metadata accessor for ModelBundleIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v51 = 0xD000000000000045;
        v53 = 0x8000000228144A90;
        goto LABEL_22;
      }

      v27 = *(v0 + 440);
      v109 = v25;
      v28 = *(v0 + 264);
      v29 = *(v0 + 272);
      v30 = *(v0 + 256);
    }

    else
    {
      v27 = *(v0 + 440);
      v109 = v25;
      v28 = *(v0 + 288);
      v29 = *(v0 + 296);
      v30 = *(v0 + 280);
    }

    (*(v28 + 32))(v29, v27, v30);
    v51 = sub_22813746C();
    v53 = v52;
    (*(v28 + 8))(v29, v30);
    v25 = v109;
LABEL_22:
    sub_228013E6C(*(v0 + 448), type metadata accessor for ModelBundleIdentifier);
    v54 = sub_227FCC340(v51, v53, v111);

    *(v24 + 4) = v54;
    *(v24 + 12) = 2082;
    v55 = *(v0 + 80);
    v56 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v55);
    v57 = (*(v56 + 16))(v55, v56);
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 56));
    v60 = sub_227FCC340(v57, v59, v111);

    *(v24 + 14) = v60;
    _os_log_impl(&dword_227FC3000, v19, v20, "Fetching info not in cache\nfor modelIdentifier=%{public}s on behalf of requestIdentifier=%{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v25, -1, -1);
    MEMORY[0x22AAB28A0](v24, -1, -1);

    goto LABEL_23;
  }

  sub_227FCA9B0(*(v0 + 400), *(v0 + 392), &qword_27D81E798, &qword_22813BCA0);
  v31 = swift_getEnumCaseMultiPayload();
  v32 = *(v0 + 392);
  if (v31 == 1)
  {
    v33 = *(v0 + 376);
    v34 = *(v0 + 384);
    v35 = *(v0 + 312);
    v36 = *(v0 + 320);
    v37 = *(v0 + 304);
    v38 = *(v0 + 240);
    sub_227FC829C(v32, v33, type metadata accessor for GMSModelInfo);
    sub_227FCAAE8(v33, v34, type metadata accessor for GMSModelInfo);
    sub_227FCA9B0(v38, v37, &qword_27D81E330, &unk_22813A7E0);
    if ((*(v36 + 48))(v37, 1, v35) == 1)
    {
      sub_227FCAC58(*(v0 + 304), &qword_27D81E330, &unk_22813A7E0);
    }

    else
    {
      (*(*(v0 + 320) + 32))(*(v0 + 328), *(v0 + 304), *(v0 + 312));
      if (sub_22800E7C0())
      {
        v45 = *(v0 + 368);
        v46 = *(v0 + 224);
        sub_227FCAAE8(*(v0 + 384), v45, type metadata accessor for GMSModelInfo);
        v47 = swift_task_alloc();
        *(v47 + 16) = v46;
        *(v47 + 24) = v45;
        os_unfair_lock_lock((v11 + 24));
        sub_228015C20(v11 + 16);
        os_unfair_lock_unlock((v11 + 24));
        v48 = *(v0 + 408);
        v50 = *(v0 + 368);
        v49 = *(v0 + 376);
        (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
        sub_228013E6C(v49, type metadata accessor for GMSModelInfo);
        sub_227FCAC58(v48, &qword_27D81E798, &qword_22813BCA0);

        sub_228013E6C(v50, type metadata accessor for GMSModelInfo);
LABEL_34:
        v85 = *(v0 + 480);
        v86 = *(v0 + 384);
        v87 = *(v0 + 216);
        sub_227FCAC58(*(v0 + 400), &qword_27D81E798, &qword_22813BCA0);
        sub_227FC829C(v86, v87, type metadata accessor for GMSModelInfo);
        sub_228131474(v85);
        sub_228013E6C(v85, type metadata accessor for SignpostToken);

        v88 = *(v0 + 8);

        return v88();
      }

      (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    }

    if (!GMSModelInfo.isStale.getter())
    {
      v84 = *(v0 + 408);
      sub_228013E6C(*(v0 + 376), type metadata accessor for GMSModelInfo);
      v67 = v84;
      goto LABEL_33;
    }

    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v68 = *(v0 + 464);
    v70 = *(v0 + 224);
    v69 = *(v0 + 232);
    v71 = sub_22813882C();
    __swift_project_value_buffer(v71, qword_2813C89F0);
    sub_227FCAAE8(v70, v68, type metadata accessor for ModelBundleIdentifier);
    sub_228015A70(v69, v0 + 136);
    v72 = sub_22813880C();
    v73 = sub_2281396BC();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 464);
    if (!v74)
    {

      sub_228013E6C(v75, type metadata accessor for ModelBundleIdentifier);
      __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 136));
LABEL_42:
      v99 = *(v0 + 472);
      v100 = *(v0 + 360);
      v102 = *(v0 + 224);
      v101 = *(v0 + 232);
      sub_227FCAAE8(v102, v99, type metadata accessor for ModelBundleIdentifier);
      sub_228015A70(v101, v0 + 176);
      sub_22800D958(v99, (v0 + 176), v100);
      v103 = swift_task_alloc();
      *(v103 + 16) = v102;
      *(v103 + 24) = v100;
      os_unfair_lock_lock((v11 + 24));
      sub_228015C5C(v11 + 16);
      os_unfair_lock_unlock((v11 + 24));
      v104 = *(v0 + 408);
      v106 = *(v0 + 376);
      v105 = *(v0 + 384);
      v107 = *(v0 + 360);

      sub_228013E6C(v106, type metadata accessor for GMSModelInfo);
      sub_228013E6C(v105, type metadata accessor for GMSModelInfo);
      sub_227FCAC58(v104, &qword_27D81E798, &qword_22813BCA0);
      sub_227FC829C(v107, v105, type metadata accessor for GMSModelInfo);
      goto LABEL_34;
    }

    v76 = *(v0 + 456);
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v111[0] = v78;
    *v77 = 136446466;
    sub_227FCAAE8(v75, v76, type metadata accessor for ModelBundleIdentifier);
    v79 = swift_getEnumCaseMultiPayload();
    if (v79)
    {
      if (v79 != 1)
      {
        v89 = 0xD000000000000045;
        v91 = 0x8000000228144A90;
        goto LABEL_41;
      }

      v80 = *(v0 + 456);
      v110 = v78;
      v81 = *(v0 + 264);
      v82 = *(v0 + 272);
      v83 = *(v0 + 256);
    }

    else
    {
      v80 = *(v0 + 456);
      v110 = v78;
      v81 = *(v0 + 288);
      v82 = *(v0 + 296);
      v83 = *(v0 + 280);
    }

    (*(v81 + 32))(v82, v80, v83);
    v89 = sub_22813746C();
    v91 = v90;
    (*(v81 + 8))(v82, v83);
    v78 = v110;
LABEL_41:
    sub_228013E6C(*(v0 + 464), type metadata accessor for ModelBundleIdentifier);
    v92 = sub_227FCC340(v89, v91, v111);

    *(v77 + 4) = v92;
    *(v77 + 12) = 2082;
    v93 = *(v0 + 160);
    v94 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v93);
    v95 = (*(v94 + 16))(v93, v94);
    v97 = v96;
    __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 136));
    v98 = sub_227FCC340(v95, v97, v111);

    *(v77 + 14) = v98;
    _os_log_impl(&dword_227FC3000, v72, v73, "Refreshing stale model info for modelIdentifier=%{public}s on behalf of requestIdentifier=%{public}s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v78, -1, -1);
    MEMORY[0x22AAB28A0](v77, -1, -1);

    goto LABEL_42;
  }

  v39 = *v32;
  *(v0 + 496) = *v32;
  v40 = swift_task_alloc();
  *(v0 + 504) = v40;
  *v40 = v0;
  v40[1] = sub_228012754;
  v41 = *(v0 + 344);
  v42 = *(v0 + 352);
  v43 = MEMORY[0x277D84A98];
  v44 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v41, v39, v42, v43, v44);
}

uint64_t sub_228012754()
{

  return MEMORY[0x2822009F8](sub_228012850, 0, 0);
}

uint64_t sub_228012850()
{
  v1 = v0[43];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return swift_willThrowTypedImpl();
  }

  else
  {
    v3 = v0[48];
    sub_227FCAC58(v0[51], &qword_27D81E798, &qword_22813BCA0);

    sub_227FC829C(v1, v3, type metadata accessor for GMSModelInfo);
    v4 = v0[60];
    v5 = v0[48];
    v6 = v0[27];
    sub_227FCAC58(v0[50], &qword_27D81E798, &qword_22813BCA0);
    sub_227FC829C(v5, v6, type metadata accessor for GMSModelInfo);
    sub_228131474(v4);
    sub_228013E6C(v4, type metadata accessor for SignpostToken);

    v7 = v0[1];

    return v7();
  }
}

unint64_t sub_228012AB8(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22813988C();

  v27 = 0xD000000000000014;
  v28 = 0x80000002281441C0;
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = (*(v12 + 16))(v13, v12);
  MEMORY[0x22AAB1970](v14);

  MEMORY[0x22AAB1970](0xD000000000000013, 0x8000000228144AE0);
  sub_227FCAAE8(v26, v11, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = v25;
      (*(v25 + 32))(v5, v11, v3);
      v17 = sub_22813746C();
      v19 = v18;
      (*(v16 + 8))(v5, v3);
    }

    else
    {
      v19 = 0x8000000228144A90;
      v17 = 0xD000000000000045;
    }
  }

  else
  {
    v20 = v24;
    (*(v24 + 32))(v8, v11, v6);
    v17 = sub_22813746C();
    v19 = v21;
    (*(v20 + 8))(v8, v6);
  }

  MEMORY[0x22AAB1970](v17, v19);

  MEMORY[0x22AAB1970](93, 0xE100000000000000);
  return v27;
}

uint64_t sub_228012E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FCAAE8(a2, v14, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v14, v4);
      v16 = sub_22813746C();
      v18 = v17;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v18 = 0x8000000228144A90;
      v16 = 0xD000000000000045;
    }
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v16 = sub_22813746C();
    v18 = v19;
    (*(v9 + 8))(v11, v8);
  }

  v20 = v31;
  v21 = *v30;
  if (*(*v30 + 16))
  {
    v22 = sub_22808C964(v16, v18);
    v24 = v23;

    if (v24)
    {
      v25 = *(v21 + 56);
      v26 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
      v27 = *(v26 - 8);
      sub_227FCAAE8(v25 + *(v27 + 72) * v22, v20, type metadata accessor for GMSModelInfoCache.CacheEntry);
      return (*(v27 + 56))(v20, 0, 1, v26);
    }
  }

  else
  {
  }

  v29 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  return (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
}

uint64_t sub_2280131B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E798, &qword_22813BCA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FCAAE8(a2, v16, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v26;
      (*(v26 + 32))(v9, v16, v7);
      v19 = sub_22813746C();
      v21 = v20;
      (*(v18 + 8))(v9, v7);
    }

    else
    {
      v21 = 0x8000000228144A90;
      v19 = 0xD000000000000045;
    }
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    v19 = sub_22813746C();
    v21 = v22;
    (*(v11 + 8))(v13, v10);
  }

  sub_227FCAAE8(v27, v6, type metadata accessor for GMSModelInfo);
  v23 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  return sub_22802509C(v6, v19, v21);
}

uint64_t sub_228013514()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22801354C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E0, &qword_22813BD08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_228136D0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E8, &unk_22813BD10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_228136EAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228136E8C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_227FCAC58(v12, &qword_27D81E7E8, &unk_22813BD10);
LABEL_8:

    return a1;
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_228136CFC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v14 + 8))(v16, v13);
    sub_227FCAC58(v5, &qword_27D81E7E0, &qword_22813BD08);
    goto LABEL_8;
  }

  (*(v7 + 32))(v9, v5, v6);
  if (!sub_228136CEC())
  {
    (*(v7 + 8))(v9, v6);
    (*(v14 + 8))(v16, v13);
    goto LABEL_8;
  }

  a1 = sub_228136E6C();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 8))(v16, v13);
  return a1;
}

void sub_228013914(uint64_t a1)
{
  sub_228138CFC();
  if (v1 <= 0x3F)
  {
    sub_2280139E4();
    if (v2 <= 0x3F)
    {
      sub_228013A34(319);
      if (v3 <= 0x3F)
      {
        sub_228136F8C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2280139E4()
{
  if (!qword_2813C46E8)
  {
    v0 = sub_22813977C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C46E8);
    }
  }
}

void sub_228013A34(uint64_t a1)
{
  if (!qword_2813C4710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E770, &qword_22813BC50);
    v1 = sub_22813977C();
    if (!v2)
    {
      atomic_store(v1, &qword_2813C4710);
    }
  }
}

uint64_t sub_228013B30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228013B68(uint64_t a1)
{
  sub_228013BDC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GMSModelInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_228013BDC(uint64_t a1)
{
  if (!qword_2813C4658)
  {
    type metadata accessor for GMSModelInfo(255);
    v1 = sub_2281395CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2813C4658);
    }
  }
}

uint64_t sub_228013C44(uint64_t a1)
{
  v4 = *(type metadata accessor for ModelBundleIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_228013D78;

  return sub_228010E24(a1, v7, v8, v1 + v5, v1 + v6, v9);
}

uint64_t sub_228013D78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228013E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228013ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  sub_227FCA9B0(a1, &v15, &qword_27D81E7C8, &qword_22813BCE8);
  if (AssociatedTypeWitness)
  {
    sub_227FCF218(&v15, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v15);
    sub_2281373BC();
    __swift_project_boxed_opaque_existential_1(&v15, AssociatedTypeWitness);
    v8 = swift_getAssociatedTypeWitness();
    MEMORY[0x28223BE20](v8);
    sub_22813734C();
    v10 = sub_22813744C();
    v11 = swift_dynamicCast();
    v12 = *(v10 - 8);
    (*(v12 + 56))(v7, v11 ^ 1u, 1, v10);
    sub_227FCA9B0(v7, v5, &qword_27D81E768, &qword_22813BBD8);
    if ((*(v12 + 48))(v5, 1, v10) == 1)
    {
      sub_227FCAC58(v5, &qword_27D81E768, &qword_22813BBD8);
      v13 = 0;
    }

    else
    {
      v13 = sub_22813743C();
      (*(v12 + 8))(v5, v10);
    }

    sub_227FCAC58(v7, &qword_27D81E768, &qword_22813BBD8);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v15);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v18);
    return v13;
  }

  else
  {
    sub_227FCAC58(&v15, &qword_27D81E7C8, &qword_22813BCE8);
    return 0;
  }
}