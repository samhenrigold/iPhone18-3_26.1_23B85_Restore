uint64_t sub_2281125A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 288) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 296) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 304) = v6;
  *(v0 + 312) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 320) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 328) = v9;
  *(v9 + 16) = sub_22812BF34;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v12 = *v10;
  v11 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v12, v11, inited);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = sub_228112BF0;
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 192);
  v22 = *(v0 + 200);

  return sub_228113644(v21, v6, v19, v17, v18, v22, v20);
}

uint64_t sub_228112BF0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_228113224;
  }

  else
  {
    v2 = sub_228112D04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228112D04(uint64_t a1)
{
  v2 = *(v1 + 344);
  sub_2281395DC();
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + 192);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F400, &qword_228142D28);
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v1 + 304);
    v7 = *(v1 + 288);
    v8 = *(v1 + 256);
    sub_22812C558(*(v1 + 232) + *(v1 + 296), v7, v3);
    v9 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v1 + 184) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v11 = swift_dynamicCast();
    v12 = *(v8 + 56);
    if (v11)
    {
      v13 = *(v1 + 264);
      v14 = *(v1 + 272);
      v15 = *(v1 + 248);
      v16 = *(v1 + 256);
      v17 = *(v1 + 240);
      v12(v17, 0, 1, v15);
      (*(v16 + 32))(v14, v17, v15);
      v18 = *(v16 + 16);
      v18(v13, v14, v15);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v19 = swift_allocError();
      v18(v20, v13, v15);
      v21 = swift_allocObject();
      *(v21 + 16) = 7;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812C854, v21);

      v23 = *(v16 + 8);
      v23(v13, v15);
      *(v1 + 168) = 7;
      *(v1 + 176) = v22;
      sub_227FDB3CC();
      v24 = sub_22813999C();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = swift_allocError();
        *v31 = 7;
        *(v31 + 8) = v22;
      }

      v32 = *(v1 + 272);
      v33 = *(v1 + 248);
      swift_willThrow();

      v23(v32, v33);
      v3 = v25;
    }

    else
    {
      v30 = *(v1 + 240);
      v12(v30, 1, 1, *(v1 + 248));
      sub_22812D31C(v30, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v34 = *(v1 + 320);
    v35 = *(v1 + 328);
    v36 = *(v1 + 280);
    v37 = swift_allocObject();
    v37[2] = v3;
    v37[3] = sub_22812BF34;
    v37[4] = v34;
    swift_beginAccess();
    *(v35 + 16) = sub_22812C848;
    *(v35 + 24) = v37;

    v38 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v36, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v1 + 64));

    v29 = *(v1 + 8);
  }

  else
  {
    v26 = *(v1 + 304);
    v27 = *(v1 + 288);
    v28 = *(v1 + 280);
    sub_22812BF3C(*(v1 + 232) + *(v1 + 296), v27);
    sub_22812C1DC(v27, v26, 0);
    sub_2281324D4();
    sub_22812AB78(v28, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v1 + 64));

    v29 = *(v1 + 8);
  }

  return v29();
}

uint64_t sub_228113224()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  sub_22812C558(*(v0 + 232) + *(v0 + 296), v3, v1);
  v5 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 184) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 264);
    v10 = *(v0 + 272);
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 7;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812C854, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 168) = 7;
    *(v0 + 176) = v18;
    sub_227FDB3CC();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 7;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 240);
    v8(v22, 1, 1, *(v0 + 248));
    sub_22812D31C(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 320);
  v27 = *(v0 + 328);
  v28 = *(v0 + 280);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_22812BF34;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_22812C848;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_228113644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_228138BFC();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v7[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v7[30] = swift_task_alloc();
  v9 = sub_228138F9C();
  v7[31] = v9;
  v7[32] = *(v9 - 8);
  v7[33] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v7[34] = swift_task_alloc();
  v10 = sub_228138BDC();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228113870, 0, 0);
}

uint64_t sub_228113870()
{
  v59 = v0;
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  sub_228138BEC();
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 != *MEMORY[0x277D4B020] && v4 != *MEMORY[0x277D4B028])
  {
    if (v4 == *MEMORY[0x277D4B030])
    {
      v9 = swift_task_alloc();
      v0[42] = v9;
      *v9 = v0;
      v9[1] = sub_228114394;
      v10 = v0[24];
      v11 = v0[25];
      v12 = v0[22];
      v13 = v0[23];
      v14 = v0[19];
      v15 = v0[20];

      return sub_228114610(v14, v10, v11, v12, v13, v15);
    }

    if (v4 != *MEMORY[0x277D4B038] && v4 != *MEMORY[0x277D4B040])
    {
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v26 = v0[27];
      v25 = v0[28];
      v27 = v0[26];
      v28 = v0[21];
      v29 = sub_22813882C();
      __swift_project_value_buffer(v29, qword_2813C8A20);
      (*(v26 + 16))(v25, v28, v27);
      v30 = sub_22813880C();
      v31 = sub_2281396DC();
      if (os_log_type_enabled(v30, v31))
      {
        v33 = v0[27];
        v32 = v0[28];
        v34 = v0[26];
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v58 = v36;
        *v35 = 136446210;
        sub_228138BEC();
        v37 = sub_2281392EC();
        v39 = v38;
        (*(v33 + 8))(v32, v34);
        v40 = sub_227FCC340(v37, v39, &v58);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_227FC3000, v30, v31, "@unknown case for SummarizationClient.TextAssistantSummarizationOptions.Source; received %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_13(v36);
        MEMORY[0x22AAB28A0](v36, -1, -1);
        MEMORY[0x22AAB28A0](v35, -1, -1);
      }

      else
      {
        v42 = v0[27];
        v41 = v0[28];
        v43 = v0[26];

        (*(v42 + 8))(v41, v43);
      }

      v44 = v0[38];
      v45 = v0[35];
      v46 = v0[36];
      v47 = swift_allocObject();
      *(v47 + 16) = 56;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0;
      v48 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 482, sub_22812D404, v47);
      sub_227FDB3CC();
      swift_allocError();
      *v49 = 56;
      *(v49 + 8) = v48;
      swift_willThrow();
      (*(v46 + 8))(v44, v45);
      goto LABEL_23;
    }
  }

  if (sub_228138BCC())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = 24;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    v7 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 605, sub_22812D40C, v6);
    sub_227FDB3CC();
    swift_allocError();
    *v8 = 24;
    *(v8 + 8) = v7;
    swift_willThrow();
LABEL_23:

    v50 = v0[1];

    return v50();
  }

  v17 = v0[34];
  v18 = v0[23];
  v19 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  sub_2280EA5AC(*(v18 + *(v19 + 24)), *(v18 + *(v19 + 24) + 8), v17);
  v20 = v0[34];
  v21 = v0[23];
  v0[5] = v19;
  v0[6] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22812ABD8(v21, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008(v0 + 2, v20);
  v0[39] = v23;
  v52 = v0[24];
  v51 = v0[25];
  v53 = v0[23];
  v54 = v0[20];
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 2);
  v0[10] = &type metadata for SKText;
  v0[11] = &protocol witness table for SKText;
  v0[7] = v52;
  v0[8] = v51;
  v0[15] = v19;
  v0[16] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v55 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  sub_22812ABD8(v53, v55, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v56 = swift_task_alloc();
  v0[40] = v56;
  *v56 = v0;
  v56[1] = sub_228113EE4;
  v57 = v0[33];

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v57, (v0 + 7), &unk_283B5B700, (v0 + 12), v54);
}

uint64_t sub_228113EE4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_2281142A4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 56));
    v3 = sub_228114008;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228114008()
{
  v16 = v0;
  v15 = 2;
  v1 = Summary.stringValue(for:)(&v15);
  if (v1.value._object)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    *(v0 + 136) = v1;
    sub_228138EEC();
    sub_228138F0C();
    sub_228138C4C();

    (*(v5 + 8))(v2, v4);
    sub_22812AB78(v3, type metadata accessor for SummarizationSession.Configuration);
  }

  else
  {
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v11 = swift_allocObject();
    *(v11 + 16) = 27;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    v12 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 500, sub_22812D408, v11);
    sub_227FDB3CC();
    swift_allocError();
    *v13 = 27;
    *(v13 + 8) = v12;
    swift_willThrow();

    (*(v10 + 8))(v7, v9);
    sub_22812AB78(v8, type metadata accessor for SummarizationSession.Configuration);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2281142A4()
{
  v1 = v0[34];

  sub_22812AB78(v1, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 7);

  v2 = v0[1];

  return v2();
}

uint64_t sub_228114394()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_228114558;
  }

  else
  {
    v2 = sub_2281144A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2281144A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228114558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228114610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v6[26] = swift_task_alloc();
  v7 = sub_228138F9C();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v6[30] = swift_task_alloc();
  sub_228136F8C();
  v6[31] = swift_task_alloc();
  v8 = sub_228136FCC();
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();
  v9 = sub_22813899C();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  v6[38] = swift_task_alloc();
  v10 = sub_228138E6C();
  v6[39] = v10;
  v6[40] = *(v10 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281148F8, 0, 0);
}

uint64_t sub_2281148F8()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[38];
  v6 = v0[33];
  v5 = v0[34];
  v21 = v0[32];
  v22 = v0[39];
  v23 = v0[23];
  v24 = v0[30];
  v7 = sub_228138E3C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_228138E4C();
  sub_228136FBC();
  sub_228136FAC();
  (*(v6 + 8))(v5, v21);
  (*(v3 + 16))(v1, v2, v22);
  sub_228136F6C();

  sub_22813897C();
  v8 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v0[5] = v8;
  v0[6] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22812ABD8(v23, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v24);
  sub_228111008(v0 + 2, v24);
  v0[43] = v10;
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];
  v15 = v0[23];
  v14 = v0[24];
  sub_22812AB78(v0[30], type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 2);
  v0[10] = type metadata accessor for SKMailMessage(0);
  v0[11] = &protocol witness table for SKMailMessage;
  v16 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v12 + 16))(v16, v11, v13);
  v0[15] = v8;
  v0[16] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v17 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  sub_22812ABD8(v15, v17, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v18 = swift_task_alloc();
  v0[44] = v18;
  *v18 = v0;
  v18[1] = sub_228114CF8;
  v19 = v0[29];

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v19, (v0 + 7), &unk_283B5B6D8, (v0 + 12), v14);
}

uint64_t sub_228114CF8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_22811514C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 56));
    v3 = sub_228114E1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228114E1C()
{
  v26 = v0;
  v25 = 1;
  v1 = Summary.stringValue(for:)(&v25);
  if (v1.value._object)
  {
    v2 = *(v0 + 336);
    v3 = *(v0 + 320);
    v21 = *(v0 + 312);
    v4 = *(v0 + 288);
    v20 = *(v0 + 296);
    v19 = *(v0 + 280);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v18 = *(v0 + 216);
    *(v0 + 136) = v1;
    sub_228138EEC();
    sub_228138F0C();
    sub_228138C4C();

    (*(v6 + 8))(v5, v18);
    (*(v4 + 8))(v20, v19);
    (*(v3 + 8))(v2, v21);
  }

  else
  {
    v8 = *(v0 + 320);
    v23 = *(v0 + 312);
    v24 = *(v0 + 336);
    v9 = *(v0 + 288);
    v22 = *(v0 + 296);
    v10 = *(v0 + 280);
    v11 = *(v0 + 224);
    v12 = *(v0 + 232);
    v13 = *(v0 + 216);
    v14 = swift_allocObject();
    *(v14 + 16) = 27;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v15 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 544, sub_22812D410, v14);
    sub_227FDB3CC();
    swift_allocError();
    *v16 = 27;
    *(v16 + 8) = v15;
    swift_willThrow();

    (*(v11 + 8))(v12, v13);
    (*(v9 + 8))(v22, v10);
    (*(v8 + 8))(v24, v23);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22811514C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 7);

  v7 = v0[1];

  return v7();
}

uint64_t SummarizationRequestHandler.partialSummaries(for:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[45] = a5;
  v6[46] = v5;
  v6[43] = a3;
  v6[44] = a4;
  v6[41] = a1;
  v6[42] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v6[47] = swift_task_alloc();
  v7 = sub_2281386FC();
  v6[48] = v7;
  v6[49] = *(v7 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v6[52] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v6[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281153EC, 0, 0);
}

uint64_t sub_2281153EC()
{
  v1 = *(v0 + 360);
  v2 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 136) = v2;
  *(v0 + 144) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v4 = sub_2280D5C74();
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 440) = v4;
  *(v0 + 448) = v5;
  sub_22812CAE4(v0 + 112, v0 + 152);
  v6 = swift_allocObject();
  *(v0 + 456) = v6;
  sub_227FFA05C((v0 + 152), v6 + 16);
  v7 = swift_allocObject();
  *(v0 + 464) = v7;
  *(v7 + 16) = sub_22812D380;
  *(v7 + 24) = v6;

  sub_2281324C4();
  v8 = (boxed_opaque_existential_1 + *(v2 + 28));
  v9 = *v8;
  v10 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v12 = (boxed_opaque_existential_1 + *(v2 + 24));
  v13 = v12[1];
  *(inited + 32) = *v12;
  *(inited + 40) = v13;

  sub_228104E70(v9, v10, inited);
  v14 = v4;

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  if (sub_228138BCC())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 24;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    v16 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 605, sub_22812D3BC, v15);
    sub_227FDB3CC();
    v17 = swift_allocError();
    *v18 = 24;
    *(v18 + 8) = v16;
    swift_willThrow();
    if (sub_22810D154(v17))
    {
      sub_22812C558(*(v0 + 368) + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger, *(v0 + 432), v17);
    }

    v29 = *(v0 + 392);
    *(v0 + 312) = v17;
    v30 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v31 = swift_dynamicCast();
    v32 = *(v29 + 56);
    if (v31)
    {
      v33 = *(v0 + 400);
      v34 = *(v0 + 408);
      v35 = *(v0 + 384);
      v36 = *(v0 + 392);
      v37 = *(v0 + 376);
      v32(v37, 0, 1, v35);
      (*(v36 + 32))(v34, v37, v35);
      v38 = *(v36 + 16);
      v38(v33, v34, v35);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v39 = swift_allocError();
      v38(v40, v33, v35);
      v41 = swift_allocObject();
      *(v41 + 16) = 7;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      v42 = sub_227FF96D4(v39, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3B8, v41);

      v43 = *(v36 + 8);
      v43(v33, v35);
      *(v0 + 296) = 7;
      *(v0 + 304) = v42;
      sub_227FDB3CC();
      v44 = sub_22813999C();
      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = swift_allocError();
        *v47 = 7;
        *(v47 + 8) = v42;
      }

      v48 = *(v0 + 408);
      v49 = *(v0 + 384);
      swift_willThrow();

      v43(v48, v49);
      v17 = v45;
    }

    else
    {
      v46 = *(v0 + 376);
      v32(v46, 1, 1, *(v0 + 384));
      sub_22812D31C(v46, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v51 = *(v0 + 456);
    v50 = *(v0 + 464);
    v52 = *(v0 + 424);
    v53 = swift_allocObject();
    v53[2] = v17;
    v53[3] = sub_22812D380;
    v53[4] = v51;
    swift_beginAccess();
    *(v50 + 16) = sub_22812D434;
    *(v50 + 24) = v53;

    v54 = v17;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v52, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 112));

    v55 = *(v0 + 8);

    return v55();
  }

  else
  {
    v19 = *(v0 + 360) + *(v2 + 24);
    sub_2280EA5AC(*v19, *(v19 + 8), *(v0 + 416));
    v20 = *(v0 + 416);
    v21 = *(v0 + 360);
    *(v0 + 216) = v2;
    *(v0 + 224) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
    v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
    sub_22812ABD8(v21, v22, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_228111008((v0 + 192), v20);
    *(v0 + 472) = v23;
    v24 = v23;
    v25 = *(v0 + 360);
    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 192));
    *(v0 + 256) = v2;
    *(v0 + 264) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
    v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
    sub_22812ABD8(v25, v26, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    type metadata accessor for SharedData();
    v27 = swift_allocObject();
    *(v0 + 480) = v27;
    type metadata accessor for SKAssetManager();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;

    swift_initStackObject();
    v28 = SKAssetManager.init()();
    type metadata accessor for FilterRules(0);
    swift_allocObject();
    *(v27 + 16) = FilterRules.init(assetManager:)(v28);

    *(v27 + 24) = v14;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 336);
    v57 = *(v0 + 344);
    *(v0 + 320) = v27;
    v59 = swift_task_alloc();
    *(v0 + 488) = v59;
    v59[2] = v24;
    v59[3] = v58;
    v59[4] = v57;
    v59[5] = v0 + 232;
    v59[6] = v14;
    v60 = swift_task_alloc();
    *(v0 + 496) = v60;
    *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC70, &qword_228142D40);
    *v60 = v0;
    v60[1] = sub_228115D64;
    v61 = *(v0 + 328);

    return MEMORY[0x282200908](v61, v0 + 320, &unk_22813DF50, v59, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
  }
}

uint64_t sub_228115D64()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_2281163B0;
  }

  else
  {
    v2 = sub_228115E88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228115E88()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 416);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 232));

  sub_22812AB78(v2, type metadata accessor for SummarizationSession.Configuration);
  sub_2281395DC();
  if (v1)
  {
    v3 = v1;
    (*(*(*(v0 + 504) - 8) + 8))(*(v0 + 328));
    if (sub_22810D154(v1))
    {
      sub_22812C558(*(v0 + 368) + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger, *(v0 + 432), v1);
    }

    v4 = *(v0 + 392);
    *(v0 + 312) = v1;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v6 = swift_dynamicCast();
    v7 = *(v4 + 56);
    if (v6)
    {
      v8 = *(v0 + 400);
      v9 = *(v0 + 408);
      v10 = *(v0 + 384);
      v11 = *(v0 + 392);
      v12 = *(v0 + 376);
      v7(v12, 0, 1, v10);
      (*(v11 + 32))(v9, v12, v10);
      v13 = *(v11 + 16);
      v13(v8, v9, v10);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v14 = swift_allocError();
      v13(v15, v8, v10);
      v16 = swift_allocObject();
      *(v16 + 16) = 7;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v17 = sub_227FF96D4(v14, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3B8, v16);

      v18 = *(v11 + 8);
      v18(v8, v10);
      *(v0 + 296) = 7;
      *(v0 + 304) = v17;
      sub_227FDB3CC();
      v19 = sub_22813999C();
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = swift_allocError();
        *v24 = 7;
        *(v24 + 8) = v17;
      }

      v25 = *(v0 + 408);
      v26 = *(v0 + 384);
      swift_willThrow();

      v18(v25, v26);
      v3 = v20;
    }

    else
    {
      v23 = *(v0 + 376);
      v7(v23, 1, 1, *(v0 + 384));
      sub_22812D31C(v23, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v28 = *(v0 + 456);
    v27 = *(v0 + 464);
    v29 = *(v0 + 424);
    v30 = swift_allocObject();
    v30[2] = v3;
    v30[3] = sub_22812D380;
    v30[4] = v28;
    swift_beginAccess();
    *(v27 + 16) = sub_22812D434;
    *(v27 + 24) = v30;

    v31 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v29, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 112));

    v22 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 424);
    sub_2281324D4();
    sub_22812AB78(v21, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 112));

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_2281163B0()
{

  v1 = *(v0 + 512);
  v2 = *(v0 + 416);

  sub_22812AB78(v2, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 232));
  if (sub_22810D154(v1))
  {
    sub_22812C558(*(v0 + 368) + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger, *(v0 + 432), v1);
  }

  v3 = *(v0 + 392);
  *(v0 + 312) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v5 = swift_dynamicCast();
  v6 = *(v3 + 56);
  if (v5)
  {
    v7 = *(v0 + 400);
    v8 = *(v0 + 408);
    v9 = *(v0 + 384);
    v10 = *(v0 + 392);
    v11 = *(v0 + 376);
    v6(v11, 0, 1, v9);
    (*(v10 + 32))(v8, v11, v9);
    v12 = *(v10 + 16);
    v12(v7, v8, v9);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v13 = swift_allocError();
    v12(v14, v7, v9);
    v15 = swift_allocObject();
    *(v15 + 16) = 7;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    v16 = sub_227FF96D4(v13, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3B8, v15);

    v17 = *(v10 + 8);
    v17(v7, v9);
    *(v0 + 296) = 7;
    *(v0 + 304) = v16;
    sub_227FDB3CC();
    v18 = sub_22813999C();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = swift_allocError();
      *v21 = 7;
      *(v21 + 8) = v16;
    }

    v22 = *(v0 + 408);
    v23 = *(v0 + 384);
    swift_willThrow();

    v17(v22, v23);
    v1 = v19;
  }

  else
  {
    v20 = *(v0 + 376);
    v6(v20, 1, 1, *(v0 + 384));
    sub_22812D31C(v20, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v25 = *(v0 + 456);
  v24 = *(v0 + 464);
  v26 = *(v0 + 424);
  v27 = swift_allocObject();
  v27[2] = v1;
  v27[3] = sub_22812D380;
  v27[4] = v25;
  swift_beginAccess();
  *(v24 + 16) = sub_22812D434;
  *(v24 + 24) = v27;

  v28 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v26, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 112));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t SummarizationRequestHandler.summarize(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[29] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811693C, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138F9C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  v5[53] = type metadata accessor for SKTextMessage(0);
  v5[54] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228118E94, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138F9C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  v5[53] = type metadata accessor for SKUserNotification(0);
  v5[54] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811A424, 0, 0);
}

{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[29] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811B8FC, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138F9C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811DCD8, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138F9C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811F15C, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138C3C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  v5[53] = type metadata accessor for SKMailMessage(0);
  v5[54] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228121C84, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138C3C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  v5[53] = type metadata accessor for SKTextMessage(0);
  v5[54] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22812323C, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138C3C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  v5[53] = type metadata accessor for SKNoteMessage(0);
  v5[54] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281247F4, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138C3C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228125D7C, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[44] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = sub_228138C3C();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v5[52] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228127228, 0, 0);
}

uint64_t sub_22811693C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 280) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 288) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 296) = v6;
  *(v0 + 304) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 312) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 320) = v9;
  *(v9 + 16) = sub_22812D384;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v12 = *v10;
  v11 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v12, v11, inited);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v16 = swift_task_alloc();
  *(v0 + 328) = v16;
  *v16 = v0;
  v16[1] = sub_228116F84;
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  v21 = *(v0 + 192);

  return sub_2281179CC(v21, v6, v19, v17, v18, v20);
}

uint64_t sub_228116F84()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2281175AC;
  }

  else
  {
    v2 = sub_228117098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228117098(uint64_t a1)
{
  v2 = *(v1 + 336);
  sub_2281395DC();
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + 192);
    v5 = sub_228138F9C();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v1 + 296);
    v7 = *(v1 + 280);
    v8 = *(v1 + 248);
    sub_22812C558(*(v1 + 224) + *(v1 + 288), v7, v3);
    v9 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v1 + 184) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v11 = swift_dynamicCast();
    v12 = *(v8 + 56);
    if (v11)
    {
      v13 = *(v1 + 256);
      v14 = *(v1 + 264);
      v15 = *(v1 + 240);
      v16 = *(v1 + 248);
      v17 = *(v1 + 232);
      v12(v17, 0, 1, v15);
      (*(v16 + 32))(v14, v17, v15);
      v18 = *(v16 + 16);
      v18(v13, v14, v15);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v19 = swift_allocError();
      v18(v20, v13, v15);
      v21 = swift_allocObject();
      *(v21 + 16) = 7;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C0, v21);

      v23 = *(v16 + 8);
      v23(v13, v15);
      *(v1 + 168) = 7;
      *(v1 + 176) = v22;
      sub_227FDB3CC();
      v24 = sub_22813999C();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = swift_allocError();
        *v31 = 7;
        *(v31 + 8) = v22;
      }

      v32 = *(v1 + 264);
      v33 = *(v1 + 240);
      swift_willThrow();

      v23(v32, v33);
      v3 = v25;
    }

    else
    {
      v30 = *(v1 + 232);
      v12(v30, 1, 1, *(v1 + 240));
      sub_22812D31C(v30, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v34 = *(v1 + 312);
    v35 = *(v1 + 320);
    v36 = *(v1 + 272);
    v37 = swift_allocObject();
    v37[2] = v3;
    v37[3] = sub_22812D384;
    v37[4] = v34;
    swift_beginAccess();
    *(v35 + 16) = sub_22812D438;
    *(v35 + 24) = v37;

    v38 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v36, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v1 + 64));

    v29 = *(v1 + 8);
  }

  else
  {
    v26 = *(v1 + 296);
    v27 = *(v1 + 280);
    v28 = *(v1 + 272);
    sub_22812BF3C(*(v1 + 224) + *(v1 + 288), v27);
    sub_22812C1DC(v27, v26, 0);
    sub_2281324D4();
    sub_22812AB78(v28, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v1 + 64));

    v29 = *(v1 + 8);
  }

  return v29();
}

uint64_t sub_2281175AC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 248);
  sub_22812C558(*(v0 + 224) + *(v0 + 288), v3, v1);
  v5 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 184) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 256);
    v10 = *(v0 + 264);
    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    v13 = *(v0 + 232);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 7;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C0, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 168) = 7;
    *(v0 + 176) = v18;
    sub_227FDB3CC();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 7;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 264);
    v25 = *(v0 + 240);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 232);
    v8(v22, 1, 1, *(v0 + 240));
    sub_22812D31C(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 312);
  v27 = *(v0 + 320);
  v28 = *(v0 + 272);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_22812D384;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_22812D438;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2281179CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_228138F9C();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = type metadata accessor for SKMailMessage(0);
  v6[29] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v6[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v6[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228117BBC, 0, 0);
}

uint64_t sub_228117BBC()
{
  v1 = MEMORY[0x22AAB0E90]();
  v2 = sub_228105284(v1);
  *(v0 + 296) = v2;
  v3 = v2;
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 248);
  v44 = *(v0 + 256);

  v9 = sub_228136DBC();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v10(v5, 1, 1, v9);
  v10(v7, 1, 1, v9);
  v10(v6, 1, 1, v9);
  v11 = sub_228138E0C();
  (*(*(v11 - 8) + 56))(v44, 1, 1, v11);
  v12 = sub_228138DDC();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  result = sub_228138F4C();
  v14 = *(v3 + 16);
  *(v0 + 304) = v14;
  if (!v14)
  {

    v17 = *(v0 + 8);
LABEL_2:

    return v17();
  }

  *(v0 + 312) = 0;
  v15 = *(v0 + 296);
  if (!*(v15 + 16))
  {
    __break(1u);
    return result;
  }

  v16 = *(v15 + 32);
  sub_2281395DC();
  v18 = sub_2281388FC();
  if (v16 == 2)
  {
    if (v18)
    {

      v19 = swift_allocObject();
      *(v19 + 16) = 24;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v20 = sub_22812D3FC;
      v21 = 861;
      goto LABEL_15;
    }

    v24 = *(v0 + 240);
    v25 = *(v0 + 184);
    v26 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    sub_2280EA5AC(*(v25 + *(v26 + 24)), *(v25 + *(v26 + 24) + 8), v24);
  }

  else
  {
    if (v16 != 1)
    {
      sub_22813988C();
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      MEMORY[0x22AAB1970](0xD000000000000021, 0x8000000228148E30);
      *(v0 + 352) = v16;
      sub_2281398EC();
      return sub_2281398FC();
    }

    if (v18)
    {

      v19 = swift_allocObject();
      *(v19 + 16) = 24;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v20 = sub_22812D400;
      v21 = 852;
LABEL_15:
      v22 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, v21, v20, v19);
      sub_227FDB3CC();
      swift_allocError();
      *v23 = 24;
      *(v23 + 8) = v22;
      swift_willThrow();
      (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));

      v17 = *(v0 + 8);
      goto LABEL_2;
    }

    sub_2280EA2E4(*(v0 + 240));
  }

  v27 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v31 = sub_22813899C();
  (*(*(v31 - 8) + 16))(v27, v29, v31);
  v32 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 40) = v32;
  *(v0 + 48) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22812ABD8(v30, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008((v0 + 16), v28);
  *(v0 + 320) = v34;
  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v37 = *(v0 + 184);
  v38 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  *(v0 + 80) = v36;
  *(v0 + 88) = &protocol witness table for SKMailMessage;
  v39 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_22812ABD8(v35, v39, type metadata accessor for SKMailMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
  v40 = swift_allocObject();
  *(v0 + 328) = v40;
  *(v40 + 16) = xmmword_22813A4B0;
  *(v40 + 32) = v16;
  *(v0 + 120) = v32;
  *(v0 + 128) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v41 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_22812ABD8(v37, v41, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v42 = swift_task_alloc();
  *(v0 + 336) = v42;
  *v42 = v0;
  v42[1] = sub_22811836C;
  v43 = *(v0 + 216);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v43, v0 + 56, v40, v0 + 96, v38);
}

uint64_t sub_22811836C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = sub_228118B5C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 56));
    v3 = sub_2281184AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2281184AC()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(v0 + 312) + 1;
  Summary.merge(_:)(v4);

  (*(v5 + 8))(v4, v6);
  sub_22812AB78(v3, type metadata accessor for SKMailMessage);
  result = sub_22812AB78(v2, type metadata accessor for SummarizationSession.Configuration);
  if (v7 == v1)
  {

    v9 = *(v0 + 8);
LABEL_18:

    return v9();
  }

  v10 = *(v0 + 344);
  v11 = *(v0 + 312) + 1;
  *(v0 + 312) = v11;
  v12 = *(v0 + 296);
  if (v11 >= *(v12 + 16))
  {
    __break(1u);
    return result;
  }

  v13 = *(v12 + v11 + 32);
  sub_2281395DC();
  if (v10)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));

LABEL_17:

    v9 = *(v0 + 8);
    goto LABEL_18;
  }

  v14 = sub_2281388FC();
  if (v13 == 2)
  {
    if (v14)
    {

      v15 = swift_allocObject();
      *(v15 + 16) = 24;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      v16 = sub_22812D3FC;
      v17 = 861;
      goto LABEL_12;
    }

    v20 = *(v0 + 240);
    v21 = *(v0 + 184);
    v22 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    sub_2280EA5AC(*(v21 + *(v22 + 24)), *(v21 + *(v22 + 24) + 8), v20);
  }

  else
  {
    if (v13 != 1)
    {
      sub_22813988C();
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      MEMORY[0x22AAB1970](0xD000000000000021, 0x8000000228148E30);
      *(v0 + 352) = v13;
      sub_2281398EC();
      return sub_2281398FC();
    }

    if (v14)
    {

      v15 = swift_allocObject();
      *(v15 + 16) = 24;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      v16 = sub_22812D400;
      v17 = 852;
LABEL_12:
      v18 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, v17, v16, v15);
      sub_227FDB3CC();
      swift_allocError();
      *v19 = 24;
      *(v19 + 8) = v18;
      swift_willThrow();
      (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));
      goto LABEL_17;
    }

    sub_2280EA2E4(*(v0 + 240));
  }

  v23 = *(v0 + 232);
  v24 = *(v0 + 240);
  v26 = *(v0 + 184);
  v25 = *(v0 + 192);
  v27 = sub_22813899C();
  (*(*(v27 - 8) + 16))(v23, v25, v27);
  v28 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 40) = v28;
  *(v0 + 48) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22812ABD8(v26, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008((v0 + 16), v24);
  *(v0 + 320) = v30;
  v31 = *(v0 + 232);
  v32 = *(v0 + 224);
  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  *(v0 + 80) = v32;
  *(v0 + 88) = &protocol witness table for SKMailMessage;
  v35 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_22812ABD8(v31, v35, type metadata accessor for SKMailMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
  v36 = swift_allocObject();
  *(v0 + 328) = v36;
  *(v36 + 16) = xmmword_22813A4B0;
  *(v36 + 32) = v13;
  *(v0 + 120) = v28;
  *(v0 + 128) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v37 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_22812ABD8(v33, v37, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v38 = swift_task_alloc();
  *(v0 + 336) = v38;
  *v38 = v0;
  v38[1] = sub_22811836C;
  v39 = *(v0 + 216);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v39, v0 + 56, v36, v0 + 96, v34);
}

uint64_t sub_228118B5C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[19];

  sub_22812AB78(v1, type metadata accessor for SKMailMessage);
  sub_22812AB78(v2, type metadata accessor for SummarizationSession.Configuration);
  (*(v4 + 8))(v5, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 7);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228118E94()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v6;
  *(v0 + 472) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 480) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 488) = v9;
  *(v9 + 16) = sub_22812D388;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v35 = v6;
  v16 = *(v0 + 432);
  v17 = *(v0 + 416);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v20 = sub_228138AAC();
  (*(*(v20 - 8) + 16))(v16, v19, v20);
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v18, v21, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v17);
  sub_228111008((v0 + 144), v17);
  *(v0 + 496) = v22;
  v24 = *(v0 + 424);
  v23 = *(v0 + 432);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  *(v0 + 208) = v24;
  *(v0 + 216) = &protocol witness table for SKTextMessage;
  v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  v26 = sub_22812ABD8(v23, v25, type metadata accessor for SKTextMessage);
  v27 = MEMORY[0x22AAB0FD0](v26);
  v28 = sub_228105284(v27);
  *(v0 + 504) = v28;
  v29 = v28;
  v30 = *(v0 + 336);

  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v30, v31, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v32 = swift_task_alloc();
  *(v0 + 512) = v32;
  *v32 = v0;
  v32[1] = sub_22811970C;
  v33 = *(v0 + 408);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v33, v0 + 184, v29, v0 + 224, v35);
}

uint64_t sub_22811970C()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_228119DC4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_228119840;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228119840()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 432);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = *(v0 + 312);

  sub_22812AB78(v2, type metadata accessor for SKTextMessage);
  (*(v4 + 32))(v6, v3, v5);
  sub_2281395DC();
  if (v1)
  {
    v7 = v1;
    (*(*(v0 + 400) + 8))(*(v0 + 312), *(v0 + 392));
    v8 = *(v0 + 464);
    v9 = *(v0 + 448);
    v10 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v9, v7);
    v11 = v7;
    sub_22812C1DC(v9, v8, v7);

    *(v0 + 304) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v13 = swift_dynamicCast();
    v14 = *(v10 + 56);
    if (v13)
    {
      v15 = *(v0 + 376);
      v16 = *(v0 + 384);
      v17 = *(v0 + 360);
      v18 = *(v0 + 368);
      v19 = *(v0 + 352);
      v14(v19, 0, 1, v17);
      (*(v18 + 32))(v16, v19, v17);
      v20 = *(v18 + 16);
      v20(v15, v16, v17);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v21 = swift_allocError();
      v20(v22, v15, v17);
      v23 = swift_allocObject();
      *(v23 + 16) = 7;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_227FF96D4(v21, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C4, v23);

      v25 = *(v18 + 8);
      v25(v15, v17);
      *(v0 + 288) = 7;
      *(v0 + 296) = v24;
      sub_227FDB3CC();
      v26 = sub_22813999C();
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = swift_allocError();
        *v33 = 7;
        *(v33 + 8) = v24;
      }

      v34 = *(v0 + 384);
      v35 = *(v0 + 360);
      swift_willThrow();

      v25(v34, v35);
      v7 = v27;
    }

    else
    {
      v32 = *(v0 + 352);
      v14(v32, 1, 1, *(v0 + 360));
      sub_22812D31C(v32, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v36 = *(v0 + 480);
    v37 = *(v0 + 488);
    v38 = *(v0 + 440);
    v39 = swift_allocObject();
    v39[2] = v7;
    v39[3] = sub_22812D388;
    v39[4] = v36;
    swift_beginAccess();
    *(v37 + 16) = sub_22812D43C;
    *(v37 + 24) = v39;

    v40 = v7;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v38, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v31 = *(v0 + 8);
  }

  else
  {
    v28 = *(v0 + 464);
    v29 = *(v0 + 448);
    v30 = *(v0 + 440);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 456), v29);
    sub_22812C1DC(v29, v28, 0);
    sub_2281324D4();
    sub_22812AB78(v30, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_228119DC4()
{
  v1 = *(v0 + 432);

  sub_22812AB78(v1, type metadata accessor for SKTextMessage);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v4, v2);
  v6 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v10 = *(v0 + 376);
    v11 = *(v0 + 384);
    v12 = *(v0 + 360);
    v13 = *(v0 + 368);
    v14 = *(v0 + 352);
    v9(v14, 0, 1, v12);
    (*(v13 + 32))(v11, v14, v12);
    v15 = *(v13 + 16);
    v15(v10, v11, v12);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v16 = swift_allocError();
    v15(v17, v10, v12);
    v18 = swift_allocObject();
    *(v18 + 16) = 7;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    v19 = sub_227FF96D4(v16, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C4, v18);

    v20 = *(v13 + 8);
    v20(v10, v12);
    *(v0 + 288) = 7;
    *(v0 + 296) = v19;
    sub_227FDB3CC();
    v21 = sub_22813999C();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = swift_allocError();
      *v24 = 7;
      *(v24 + 8) = v19;
    }

    v25 = *(v0 + 384);
    v26 = *(v0 + 360);
    swift_willThrow();

    v20(v25, v26);
    v2 = v22;
  }

  else
  {
    v23 = *(v0 + 352);
    v9(v23, 1, 1, *(v0 + 360));
    sub_22812D31C(v23, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v27 = *(v0 + 480);
  v28 = *(v0 + 488);
  v29 = *(v0 + 440);
  v30 = swift_allocObject();
  v30[2] = v2;
  v30[3] = sub_22812D388;
  v30[4] = v27;
  swift_beginAccess();
  *(v28 + 16) = sub_22812D43C;
  *(v28 + 24) = v30;

  v31 = v2;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v29, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22811A424()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v6;
  *(v0 + 472) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 480) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 488) = v9;
  *(v9 + 16) = sub_22812D38C;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v35 = v6;
  v16 = *(v0 + 432);
  v17 = *(v0 + 416);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v20 = sub_228138B8C();
  (*(*(v20 - 8) + 16))(v16, v19, v20);
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v18, v21, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v17);
  sub_228111008((v0 + 144), v17);
  *(v0 + 496) = v22;
  v24 = *(v0 + 424);
  v23 = *(v0 + 432);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  *(v0 + 208) = v24;
  *(v0 + 216) = &protocol witness table for SKUserNotification;
  v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  v26 = sub_22812ABD8(v23, v25, type metadata accessor for SKUserNotification);
  v27 = MEMORY[0x22AAB10E0](v26);
  v28 = sub_228105284(v27);
  *(v0 + 504) = v28;
  v29 = v28;
  v30 = *(v0 + 336);

  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v30, v31, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v32 = swift_task_alloc();
  *(v0 + 512) = v32;
  *v32 = v0;
  v32[1] = sub_22811AC9C;
  v33 = *(v0 + 408);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v33, v0 + 184, v29, v0 + 224, v35);
}

uint64_t sub_22811AC9C()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_22811B354;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_22811ADD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22811ADD0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 432);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = *(v0 + 312);

  sub_22812AB78(v2, type metadata accessor for SKUserNotification);
  (*(v4 + 32))(v6, v3, v5);
  sub_2281395DC();
  if (v1)
  {
    v7 = v1;
    (*(*(v0 + 400) + 8))(*(v0 + 312), *(v0 + 392));
    v8 = *(v0 + 464);
    v9 = *(v0 + 448);
    v10 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v9, v7);
    v11 = v7;
    sub_22812C1DC(v9, v8, v7);

    *(v0 + 304) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v13 = swift_dynamicCast();
    v14 = *(v10 + 56);
    if (v13)
    {
      v15 = *(v0 + 376);
      v16 = *(v0 + 384);
      v17 = *(v0 + 360);
      v18 = *(v0 + 368);
      v19 = *(v0 + 352);
      v14(v19, 0, 1, v17);
      (*(v18 + 32))(v16, v19, v17);
      v20 = *(v18 + 16);
      v20(v15, v16, v17);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v21 = swift_allocError();
      v20(v22, v15, v17);
      v23 = swift_allocObject();
      *(v23 + 16) = 7;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_227FF96D4(v21, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C8, v23);

      v25 = *(v18 + 8);
      v25(v15, v17);
      *(v0 + 288) = 7;
      *(v0 + 296) = v24;
      sub_227FDB3CC();
      v26 = sub_22813999C();
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = swift_allocError();
        *v33 = 7;
        *(v33 + 8) = v24;
      }

      v34 = *(v0 + 384);
      v35 = *(v0 + 360);
      swift_willThrow();

      v25(v34, v35);
      v7 = v27;
    }

    else
    {
      v32 = *(v0 + 352);
      v14(v32, 1, 1, *(v0 + 360));
      sub_22812D31C(v32, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v36 = *(v0 + 480);
    v37 = *(v0 + 488);
    v38 = *(v0 + 440);
    v39 = swift_allocObject();
    v39[2] = v7;
    v39[3] = sub_22812D38C;
    v39[4] = v36;
    swift_beginAccess();
    *(v37 + 16) = sub_22812D440;
    *(v37 + 24) = v39;

    v40 = v7;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v38, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v31 = *(v0 + 8);
  }

  else
  {
    v28 = *(v0 + 464);
    v29 = *(v0 + 448);
    v30 = *(v0 + 440);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 456), v29);
    sub_22812C1DC(v29, v28, 0);
    sub_2281324D4();
    sub_22812AB78(v30, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_22811B354()
{
  v1 = *(v0 + 432);

  sub_22812AB78(v1, type metadata accessor for SKUserNotification);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v4, v2);
  v6 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v10 = *(v0 + 376);
    v11 = *(v0 + 384);
    v12 = *(v0 + 360);
    v13 = *(v0 + 368);
    v14 = *(v0 + 352);
    v9(v14, 0, 1, v12);
    (*(v13 + 32))(v11, v14, v12);
    v15 = *(v13 + 16);
    v15(v10, v11, v12);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v16 = swift_allocError();
    v15(v17, v10, v12);
    v18 = swift_allocObject();
    *(v18 + 16) = 7;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    v19 = sub_227FF96D4(v16, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C8, v18);

    v20 = *(v13 + 8);
    v20(v10, v12);
    *(v0 + 288) = 7;
    *(v0 + 296) = v19;
    sub_227FDB3CC();
    v21 = sub_22813999C();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = swift_allocError();
      *v24 = 7;
      *(v24 + 8) = v19;
    }

    v25 = *(v0 + 384);
    v26 = *(v0 + 360);
    swift_willThrow();

    v20(v25, v26);
    v2 = v22;
  }

  else
  {
    v23 = *(v0 + 352);
    v9(v23, 1, 1, *(v0 + 360));
    sub_22812D31C(v23, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v27 = *(v0 + 480);
  v28 = *(v0 + 488);
  v29 = *(v0 + 440);
  v30 = swift_allocObject();
  v30[2] = v2;
  v30[3] = sub_22812D38C;
  v30[4] = v27;
  swift_beginAccess();
  *(v28 + 16) = sub_22812D440;
  *(v28 + 24) = v30;

  v31 = v2;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v29, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22811B8FC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 280) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 288) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 296) = v6;
  *(v0 + 304) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 312) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 320) = v9;
  *(v9 + 16) = sub_22812D390;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v12 = *v10;
  v11 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v12, v11, inited);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v16 = swift_task_alloc();
  *(v0 + 328) = v16;
  *v16 = v0;
  v16[1] = sub_22811BF44;
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  v21 = *(v0 + 192);

  return sub_22811C98C(v21, v6, v19, v17, v18, v20);
}

uint64_t sub_22811BF44()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_22811C56C;
  }

  else
  {
    v2 = sub_22811C058;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22811C058(uint64_t a1)
{
  v2 = *(v1 + 336);
  sub_2281395DC();
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + 192);
    v5 = sub_228138F9C();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v1 + 296);
    v7 = *(v1 + 280);
    v8 = *(v1 + 248);
    sub_22812C558(*(v1 + 224) + *(v1 + 288), v7, v3);
    v9 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v1 + 184) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v11 = swift_dynamicCast();
    v12 = *(v8 + 56);
    if (v11)
    {
      v13 = *(v1 + 256);
      v14 = *(v1 + 264);
      v15 = *(v1 + 240);
      v16 = *(v1 + 248);
      v17 = *(v1 + 232);
      v12(v17, 0, 1, v15);
      (*(v16 + 32))(v14, v17, v15);
      v18 = *(v16 + 16);
      v18(v13, v14, v15);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v19 = swift_allocError();
      v18(v20, v13, v15);
      v21 = swift_allocObject();
      *(v21 + 16) = 7;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3CC, v21);

      v23 = *(v16 + 8);
      v23(v13, v15);
      *(v1 + 168) = 7;
      *(v1 + 176) = v22;
      sub_227FDB3CC();
      v24 = sub_22813999C();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = swift_allocError();
        *v31 = 7;
        *(v31 + 8) = v22;
      }

      v32 = *(v1 + 264);
      v33 = *(v1 + 240);
      swift_willThrow();

      v23(v32, v33);
      v3 = v25;
    }

    else
    {
      v30 = *(v1 + 232);
      v12(v30, 1, 1, *(v1 + 240));
      sub_22812D31C(v30, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v34 = *(v1 + 312);
    v35 = *(v1 + 320);
    v36 = *(v1 + 272);
    v37 = swift_allocObject();
    v37[2] = v3;
    v37[3] = sub_22812D390;
    v37[4] = v34;
    swift_beginAccess();
    *(v35 + 16) = sub_22812D444;
    *(v35 + 24) = v37;

    v38 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v36, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v1 + 64));

    v29 = *(v1 + 8);
  }

  else
  {
    v26 = *(v1 + 296);
    v27 = *(v1 + 280);
    v28 = *(v1 + 272);
    sub_22812BF3C(*(v1 + 224) + *(v1 + 288), v27);
    sub_22812C1DC(v27, v26, 0);
    sub_2281324D4();
    sub_22812AB78(v28, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v1 + 64));

    v29 = *(v1 + 8);
  }

  return v29();
}

uint64_t sub_22811C56C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 248);
  sub_22812C558(*(v0 + 224) + *(v0 + 288), v3, v1);
  v5 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 184) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 256);
    v10 = *(v0 + 264);
    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    v13 = *(v0 + 232);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 7;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3CC, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 168) = 7;
    *(v0 + 176) = v18;
    sub_227FDB3CC();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 7;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 264);
    v25 = *(v0 + 240);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 232);
    v8(v22, 1, 1, *(v0 + 240));
    sub_22812D31C(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 312);
  v27 = *(v0 + 320);
  v28 = *(v0 + 272);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_22812D390;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_22812D444;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22811C98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_228138F9C();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811CB4C, 0, 0);
}

uint64_t sub_22811CB4C()
{
  v1 = MEMORY[0x22AAB0EC0]();
  v2 = sub_228105284(v1);
  *(v0 + 280) = v2;
  v3 = v2;
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v39 = *(v0 + 240);

  v9 = sub_228136DBC();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v10(v5, 1, 1, v9);
  v10(v7, 1, 1, v9);
  v10(v6, 1, 1, v9);
  v11 = sub_228138E0C();
  (*(*(v11 - 8) + 56))(v39, 1, 1, v11);
  v12 = sub_228138DDC();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  result = sub_228138F4C();
  v14 = *(v3 + 16);
  *(v0 + 288) = v14;
  if (!v14)
  {

    v17 = *(v0 + 8);
LABEL_2:

    return v17();
  }

  *(v0 + 296) = 0;
  v15 = *(v0 + 280);
  if (!*(v15 + 16))
  {
    __break(1u);
    return result;
  }

  v16 = *(v15 + 32);
  sub_2281395DC();
  v18 = sub_2281388FC();
  if (v16 == 2)
  {
    if (v18)
    {

      v19 = swift_allocObject();
      *(v19 + 16) = 24;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v20 = sub_22812D3F4;
      v21 = 861;
      goto LABEL_15;
    }

    v24 = *(v0 + 224);
    v25 = *(v0 + 184);
    v26 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    sub_2280EA5AC(*(v25 + *(v26 + 24)), *(v25 + *(v26 + 24) + 8), v24);
  }

  else
  {
    if (v16 != 1)
    {
      sub_22813988C();
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      MEMORY[0x22AAB1970](0xD000000000000021, 0x8000000228148E30);
      *(v0 + 336) = v16;
      sub_2281398EC();
      return sub_2281398FC();
    }

    if (v18)
    {

      v19 = swift_allocObject();
      *(v19 + 16) = 24;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v20 = sub_22812D3F8;
      v21 = 852;
LABEL_15:
      v22 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, v21, v20, v19);
      sub_227FDB3CC();
      swift_allocError();
      *v23 = 24;
      *(v23 + 8) = v22;
      swift_willThrow();
      (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));

      v17 = *(v0 + 8);
      goto LABEL_2;
    }

    sub_2280EA2E4(*(v0 + 224));
  }

  v27 = *(v0 + 224);
  v28 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F430, &unk_228142EB0);
  v29 = sub_228138BAC();
  v30 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 40) = v30;
  *(v0 + 48) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22812ABD8(v28, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008((v0 + 16), v27);
  *(v0 + 304) = v32;
  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  *(v0 + 80) = &type metadata for SKMailMessageThread;
  *(v0 + 88) = &protocol witness table for SKMailMessageThread;
  *(v0 + 56) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
  v35 = swift_allocObject();
  *(v0 + 312) = v35;
  *(v35 + 16) = xmmword_22813A4B0;
  *(v35 + 32) = v16;
  *(v0 + 120) = v30;
  *(v0 + 128) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v36 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_22812ABD8(v33, v36, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v37 = swift_task_alloc();
  *(v0 + 320) = v37;
  *v37 = v0;
  v37[1] = sub_22811D298;
  v38 = *(v0 + 216);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v38, v0 + 56, v35, v0 + 96, v34);
}

uint64_t sub_22811D298()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {

    v3 = sub_22811DA00;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 56));
    v3 = sub_22811D3D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22811D3D8()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 296) + 1;
  Summary.merge(_:)(v3);

  (*(v5 + 8))(v3, v4);
  result = sub_22812AB78(v2, type metadata accessor for SummarizationSession.Configuration);
  if (v6 == v1)
  {

    v8 = *(v0 + 8);
LABEL_18:

    return v8();
  }

  v9 = *(v0 + 328);
  v10 = *(v0 + 296) + 1;
  *(v0 + 296) = v10;
  v11 = *(v0 + 280);
  if (v10 >= *(v11 + 16))
  {
    __break(1u);
    return result;
  }

  v12 = *(v11 + v10 + 32);
  sub_2281395DC();
  if (v9)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));

LABEL_17:

    v8 = *(v0 + 8);
    goto LABEL_18;
  }

  v13 = sub_2281388FC();
  if (v12 == 2)
  {
    if (v13)
    {

      v14 = swift_allocObject();
      *(v14 + 16) = 24;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      v15 = sub_22812D3F4;
      v16 = 861;
      goto LABEL_12;
    }

    v19 = *(v0 + 224);
    v20 = *(v0 + 184);
    v21 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    sub_2280EA5AC(*(v20 + *(v21 + 24)), *(v20 + *(v21 + 24) + 8), v19);
  }

  else
  {
    if (v12 != 1)
    {
      sub_22813988C();
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      MEMORY[0x22AAB1970](0xD000000000000021, 0x8000000228148E30);
      *(v0 + 336) = v12;
      sub_2281398EC();
      return sub_2281398FC();
    }

    if (v13)
    {

      v14 = swift_allocObject();
      *(v14 + 16) = 24;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      v15 = sub_22812D3F8;
      v16 = 852;
LABEL_12:
      v17 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, v16, v15, v14);
      sub_227FDB3CC();
      swift_allocError();
      *v18 = 24;
      *(v18 + 8) = v17;
      swift_willThrow();
      (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));
      goto LABEL_17;
    }

    sub_2280EA2E4(*(v0 + 224));
  }

  v22 = *(v0 + 224);
  v23 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F430, &unk_228142EB0);
  v24 = sub_228138BAC();
  v25 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 40) = v25;
  *(v0 + 48) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22812ABD8(v23, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008((v0 + 16), v22);
  *(v0 + 304) = v27;
  v28 = *(v0 + 184);
  v29 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  *(v0 + 80) = &type metadata for SKMailMessageThread;
  *(v0 + 88) = &protocol witness table for SKMailMessageThread;
  *(v0 + 56) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
  v30 = swift_allocObject();
  *(v0 + 312) = v30;
  *(v30 + 16) = xmmword_22813A4B0;
  *(v30 + 32) = v12;
  *(v0 + 120) = v25;
  *(v0 + 128) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_22812ABD8(v28, v31, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_22811D298;
  v33 = *(v0 + 216);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v33, v0 + 56, v30, v0 + 96, v29);
}

uint64_t sub_22811DA00()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[19];

  sub_22812AB78(v1, type metadata accessor for SummarizationSession.Configuration);
  (*(v3 + 8))(v4, v2);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22811DCD8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 440) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 448) = v6;
  *(v0 + 456) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 464) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 472) = v9;
  *(v9 + 16) = sub_22812D394;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v16 = *(v0 + 416);
  v17 = *(v0 + 336);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F408, &qword_228142D80);
  v18 = sub_228138BAC();
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v17, v19, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v16);
  sub_228111008((v0 + 144), v16);
  *(v0 + 480) = v20;
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  v21 = __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  *(v0 + 208) = &type metadata for SKTextMessageThread;
  *(v0 + 216) = &protocol witness table for SKTextMessageThread;
  *(v0 + 184) = v18;
  v22 = MEMORY[0x22AAB1000](v21);
  v23 = sub_228105284(v22);
  *(v0 + 488) = v23;
  v24 = v23;
  v25 = *(v0 + 336);

  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v25, v26, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v27 = swift_task_alloc();
  *(v0 + 496) = v27;
  *v27 = v0;
  v27[1] = sub_22811E4D0;
  v28 = *(v0 + 408);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v28, v0 + 184, v24, v0 + 224, v6);
}

uint64_t sub_22811E4D0()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_22811EB54;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_22811E604;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22811E604()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 392);
  v5 = *(v0 + 312);

  (*(v3 + 32))(v5, v2, v4);
  sub_2281395DC();
  if (v1)
  {
    v6 = v1;
    (*(*(v0 + 400) + 8))(*(v0 + 312), *(v0 + 392));
    v7 = *(v0 + 448);
    v8 = *(v0 + 432);
    v9 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 440), v8, v6);
    v10 = v6;
    sub_22812C1DC(v8, v7, v6);

    *(v0 + 304) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v12 = swift_dynamicCast();
    v13 = *(v9 + 56);
    if (v12)
    {
      v14 = *(v0 + 376);
      v15 = *(v0 + 384);
      v16 = *(v0 + 360);
      v17 = *(v0 + 368);
      v18 = *(v0 + 352);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      v19 = *(v17 + 16);
      v19(v14, v15, v16);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v20 = swift_allocError();
      v19(v21, v14, v16);
      v22 = swift_allocObject();
      *(v22 + 16) = 7;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
      v23 = sub_227FF96D4(v20, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D0, v22);

      v24 = *(v17 + 8);
      v24(v14, v16);
      *(v0 + 288) = 7;
      *(v0 + 296) = v23;
      sub_227FDB3CC();
      v25 = sub_22813999C();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = swift_allocError();
        *v32 = 7;
        *(v32 + 8) = v23;
      }

      v33 = *(v0 + 384);
      v34 = *(v0 + 360);
      swift_willThrow();

      v24(v33, v34);
      v6 = v26;
    }

    else
    {
      v31 = *(v0 + 352);
      v13(v31, 1, 1, *(v0 + 360));
      sub_22812D31C(v31, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v35 = *(v0 + 464);
    v36 = *(v0 + 472);
    v37 = *(v0 + 424);
    v38 = swift_allocObject();
    v38[2] = v6;
    v38[3] = sub_22812D394;
    v38[4] = v35;
    swift_beginAccess();
    *(v36 + 16) = sub_22812D448;
    *(v36 + 24) = v38;

    v39 = v6;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v37, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v30 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 448);
    v28 = *(v0 + 432);
    v29 = *(v0 + 424);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 440), v28);
    sub_22812C1DC(v28, v27, 0);
    sub_2281324D4();
    sub_22812AB78(v29, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_22811EB54()
{

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v1 = *(v0 + 504);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 440), v3, v1);
  v5 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 304) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = *(v0 + 352);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 7;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D0, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 288) = 7;
    *(v0 + 296) = v18;
    sub_227FDB3CC();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 7;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 384);
    v25 = *(v0 + 360);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 352);
    v8(v22, 1, 1, *(v0 + 360));
    sub_22812D31C(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 464);
  v27 = *(v0 + 472);
  v28 = *(v0 + 424);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_22812D394;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_22812D448;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22811F15C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 440) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 448) = v6;
  *(v0 + 456) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 464) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 472) = v9;
  *(v9 + 16) = sub_22812D398;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v16 = *(v0 + 416);
  v17 = *(v0 + 336);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F410, &qword_228142D90);
  v18 = sub_228138BAC();
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v17, v19, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v16);
  sub_228111008((v0 + 144), v16);
  *(v0 + 480) = v20;
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  v21 = __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  *(v0 + 208) = &type metadata for SKUserNotificationThread;
  *(v0 + 216) = &protocol witness table for SKUserNotificationThread;
  *(v0 + 184) = v18;
  v22 = MEMORY[0x22AAB10F0](v21);
  v23 = sub_228105284(v22);
  *(v0 + 488) = v23;
  v24 = v23;
  v25 = *(v0 + 336);

  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v25, v26, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v27 = swift_task_alloc();
  *(v0 + 496) = v27;
  *v27 = v0;
  v27[1] = sub_22811F954;
  v28 = *(v0 + 408);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v28, v0 + 184, v24, v0 + 224, v6);
}

uint64_t sub_22811F954()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_22811FFD8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_22811FA88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22811FA88()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 392);
  v5 = *(v0 + 312);

  (*(v3 + 32))(v5, v2, v4);
  sub_2281395DC();
  if (v1)
  {
    v6 = v1;
    (*(*(v0 + 400) + 8))(*(v0 + 312), *(v0 + 392));
    v7 = *(v0 + 448);
    v8 = *(v0 + 432);
    v9 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 440), v8, v6);
    v10 = v6;
    sub_22812C1DC(v8, v7, v6);

    *(v0 + 304) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v12 = swift_dynamicCast();
    v13 = *(v9 + 56);
    if (v12)
    {
      v14 = *(v0 + 376);
      v15 = *(v0 + 384);
      v16 = *(v0 + 360);
      v17 = *(v0 + 368);
      v18 = *(v0 + 352);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      v19 = *(v17 + 16);
      v19(v14, v15, v16);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v20 = swift_allocError();
      v19(v21, v14, v16);
      v22 = swift_allocObject();
      *(v22 + 16) = 7;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
      v23 = sub_227FF96D4(v20, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D4, v22);

      v24 = *(v17 + 8);
      v24(v14, v16);
      *(v0 + 288) = 7;
      *(v0 + 296) = v23;
      sub_227FDB3CC();
      v25 = sub_22813999C();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = swift_allocError();
        *v32 = 7;
        *(v32 + 8) = v23;
      }

      v33 = *(v0 + 384);
      v34 = *(v0 + 360);
      swift_willThrow();

      v24(v33, v34);
      v6 = v26;
    }

    else
    {
      v31 = *(v0 + 352);
      v13(v31, 1, 1, *(v0 + 360));
      sub_22812D31C(v31, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v35 = *(v0 + 464);
    v36 = *(v0 + 472);
    v37 = *(v0 + 424);
    v38 = swift_allocObject();
    v38[2] = v6;
    v38[3] = sub_22812D398;
    v38[4] = v35;
    swift_beginAccess();
    *(v36 + 16) = sub_22812D44C;
    *(v36 + 24) = v38;

    v39 = v6;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v37, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v30 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 448);
    v28 = *(v0 + 432);
    v29 = *(v0 + 424);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 440), v28);
    sub_22812C1DC(v28, v27, 0);
    sub_2281324D4();
    sub_22812AB78(v29, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_22811FFD8()
{

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v1 = *(v0 + 504);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 440), v3, v1);
  v5 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 304) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = *(v0 + 352);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 7;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D4, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 288) = 7;
    *(v0 + 296) = v18;
    sub_227FDB3CC();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 7;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 384);
    v25 = *(v0 + 360);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 352);
    v8(v22, 1, 1, *(v0 + 360));
    sub_22812D31C(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 464);
  v27 = *(v0 + 472);
  v28 = *(v0 + 424);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_22812D398;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_22812D44C;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

void *sub_228120420()
{
  v1 = v0;
  v2 = sub_228138C3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D4B0A8])
  {
    return &unk_283B5B728;
  }

  if (v6 == *MEMORY[0x277D4B098])
  {
    return &unk_283B5B750;
  }

  if (v6 == *MEMORY[0x277D4B0A0])
  {
    return &unk_283B5B728;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = 27;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v9 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 886, sub_22812D3F0, v8);
  sub_227FDB3CC();
  swift_allocError();
  *v10 = 27;
  *(v10 + 8) = v9;
  swift_willThrow();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2281207CC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 440) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 448) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 456) = v6;
  *(v0 + 464) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 472) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  *(v9 + 16) = sub_22812D39C;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v16 = *(v0 + 424);
  v17 = *(v0 + 344);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v18 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v17, v18, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v16);
  sub_228111008((v0 + 144), v16);
  *(v0 + 488) = v19;
  sub_22812AB78(*(v0 + 424), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  sub_228138C2C();
  v20 = sub_228120420();
  *(v0 + 496) = v20;
  v21 = v20;
  v22 = *(v0 + 344);
  v24 = *(v0 + 320);
  v23 = *(v0 + 328);
  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
  *(v0 + 208) = &type metadata for SKText;
  *(v0 + 216) = &protocol witness table for SKText;
  *(v0 + 184) = v24;
  *(v0 + 192) = v23;
  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v22, v25, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v26 = swift_task_alloc();
  *(v0 + 504) = v26;
  *v26 = v0;
  v26[1] = sub_228120FCC;
  v27 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v27, v0 + 184, v21, v0 + 224, v6);
}

uint64_t sub_228120FCC()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_22812164C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_228121100;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228121100()
{
  v1 = *(v0 + 512);

  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 312);
    v4 = sub_228138F9C();
    (*(*(v4 - 8) + 8))(v3, v4);
    v5 = *(v0 + 456);
    v6 = *(v0 + 440);
    v7 = *(v0 + 376);
    sub_22812C558(*(v0 + 352) + *(v0 + 448), v6, v2);
    v8 = v2;
    sub_22812C1DC(v6, v5, v2);

    *(v0 + 304) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v10 = swift_dynamicCast();
    v11 = *(v7 + 56);
    if (v10)
    {
      v12 = *(v0 + 384);
      v13 = *(v0 + 392);
      v14 = *(v0 + 368);
      v15 = *(v0 + 376);
      v16 = *(v0 + 360);
      v11(v16, 0, 1, v14);
      (*(v15 + 32))(v13, v16, v14);
      v17 = *(v15 + 16);
      v17(v12, v13, v14);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v18 = swift_allocError();
      v17(v19, v12, v14);
      v20 = swift_allocObject();
      *(v20 + 16) = 7;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D8, v20);

      v22 = *(v15 + 8);
      v22(v12, v14);
      *(v0 + 288) = 7;
      *(v0 + 296) = v21;
      sub_227FDB3CC();
      v23 = sub_22813999C();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = swift_allocError();
        *v30 = 7;
        *(v30 + 8) = v21;
      }

      v31 = *(v0 + 392);
      v32 = *(v0 + 368);
      swift_willThrow();

      v22(v31, v32);
      v2 = v24;
    }

    else
    {
      v29 = *(v0 + 360);
      v11(v29, 1, 1, *(v0 + 368));
      sub_22812D31C(v29, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v33 = *(v0 + 472);
    v34 = *(v0 + 480);
    v35 = *(v0 + 432);
    v36 = swift_allocObject();
    v36[2] = v2;
    v36[3] = sub_22812D39C;
    v36[4] = v33;
    swift_beginAccess();
    *(v34 + 16) = sub_22812D450;
    *(v34 + 24) = v36;

    v37 = v2;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v28 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 456);
    v26 = *(v0 + 440);
    v27 = *(v0 + 432);
    sub_22812BF3C(*(v0 + 352) + *(v0 + 448), v26);
    sub_22812C1DC(v26, v25, 0);
    sub_2281324D4();
    sub_22812AB78(v27, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_22812164C()
{

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v1 = *(v0 + 512);
  v2 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 376);
  sub_22812C558(*(v0 + 352) + *(v0 + 448), v3, v1);
  v5 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 304) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 384);
    v10 = *(v0 + 392);
    v11 = *(v0 + 368);
    v12 = *(v0 + 376);
    v13 = *(v0 + 360);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 7;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D8, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 288) = 7;
    *(v0 + 296) = v18;
    sub_227FDB3CC();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 7;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 392);
    v25 = *(v0 + 368);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 360);
    v8(v22, 1, 1, *(v0 + 368));
    sub_22812D31C(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 472);
  v27 = *(v0 + 480);
  v28 = *(v0 + 432);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_22812D39C;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_22812D450;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_228121C84()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v6;
  *(v0 + 472) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 480) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 488) = v9;
  *(v9 + 16) = sub_22812D3A0;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v33 = v6;
  v16 = *(v0 + 432);
  v17 = *(v0 + 416);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v20 = sub_22813899C();
  (*(*(v20 - 8) + 16))(v16, v19, v20);
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v18, v21, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v17);
  sub_228111008((v0 + 144), v17);
  *(v0 + 496) = v22;
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  sub_2281388DC();
  v23 = sub_228120420();
  *(v0 + 504) = v23;
  v24 = v23;
  v26 = *(v0 + 424);
  v25 = *(v0 + 432);
  v27 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = v26;
  *(v0 + 216) = &protocol witness table for SKMailMessage;
  v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  sub_22812ABD8(v25, v28, type metadata accessor for SKMailMessage);
  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v27, v29, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_228122528;
  v31 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v31, v0 + 184, v24, v0 + 224, v33);
}

uint64_t sub_228122528()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_228122BDC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_22812265C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22812265C()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 432);

  sub_22812AB78(v2, type metadata accessor for SKMailMessage);
  sub_2281395DC();
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 312);
    v5 = sub_228138F9C();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v0 + 464);
    v7 = *(v0 + 448);
    v8 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v7, v3);
    v9 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v0 + 304) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v11 = swift_dynamicCast();
    v12 = *(v8 + 56);
    if (v11)
    {
      v13 = *(v0 + 376);
      v14 = *(v0 + 384);
      v15 = *(v0 + 360);
      v16 = *(v0 + 368);
      v17 = *(v0 + 352);
      v12(v17, 0, 1, v15);
      (*(v16 + 32))(v14, v17, v15);
      v18 = *(v16 + 16);
      v18(v13, v14, v15);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v19 = swift_allocError();
      v18(v20, v13, v15);
      v21 = swift_allocObject();
      *(v21 + 16) = 7;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3DC, v21);

      v23 = *(v16 + 8);
      v23(v13, v15);
      *(v0 + 288) = 7;
      *(v0 + 296) = v22;
      sub_227FDB3CC();
      v24 = sub_22813999C();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = swift_allocError();
        *v31 = 7;
        *(v31 + 8) = v22;
      }

      v32 = *(v0 + 384);
      v33 = *(v0 + 360);
      swift_willThrow();

      v23(v32, v33);
      v3 = v25;
    }

    else
    {
      v30 = *(v0 + 352);
      v12(v30, 1, 1, *(v0 + 360));
      sub_22812D31C(v30, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v34 = *(v0 + 480);
    v35 = *(v0 + 488);
    v36 = *(v0 + 440);
    v37 = swift_allocObject();
    v37[2] = v3;
    v37[3] = sub_22812D3A0;
    v37[4] = v34;
    swift_beginAccess();
    *(v35 + 16) = sub_22812D454;
    *(v35 + 24) = v37;

    v38 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v36, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v29 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 464);
    v27 = *(v0 + 448);
    v28 = *(v0 + 440);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 456), v27);
    sub_22812C1DC(v27, v26, 0);
    sub_2281324D4();
    sub_22812AB78(v28, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_228122BDC()
{
  v1 = *(v0 + 432);

  sub_22812AB78(v1, type metadata accessor for SKMailMessage);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v4, v2);
  v6 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v10 = *(v0 + 376);
    v11 = *(v0 + 384);
    v12 = *(v0 + 360);
    v13 = *(v0 + 368);
    v14 = *(v0 + 352);
    v9(v14, 0, 1, v12);
    (*(v13 + 32))(v11, v14, v12);
    v15 = *(v13 + 16);
    v15(v10, v11, v12);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v16 = swift_allocError();
    v15(v17, v10, v12);
    v18 = swift_allocObject();
    *(v18 + 16) = 7;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    v19 = sub_227FF96D4(v16, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3DC, v18);

    v20 = *(v13 + 8);
    v20(v10, v12);
    *(v0 + 288) = 7;
    *(v0 + 296) = v19;
    sub_227FDB3CC();
    v21 = sub_22813999C();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = swift_allocError();
      *v24 = 7;
      *(v24 + 8) = v19;
    }

    v25 = *(v0 + 384);
    v26 = *(v0 + 360);
    swift_willThrow();

    v20(v25, v26);
    v2 = v22;
  }

  else
  {
    v23 = *(v0 + 352);
    v9(v23, 1, 1, *(v0 + 360));
    sub_22812D31C(v23, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v27 = *(v0 + 480);
  v28 = *(v0 + 488);
  v29 = *(v0 + 440);
  v30 = swift_allocObject();
  v30[2] = v2;
  v30[3] = sub_22812D3A0;
  v30[4] = v27;
  swift_beginAccess();
  *(v28 + 16) = sub_22812D454;
  *(v28 + 24) = v30;

  v31 = v2;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v29, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22812323C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v6;
  *(v0 + 472) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 480) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 488) = v9;
  *(v9 + 16) = sub_22812D3A4;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v34 = v6;
  v16 = *(v0 + 432);
  v17 = *(v0 + 416);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v20 = sub_228138AAC();
  (*(*(v20 - 8) + 16))(v16, v19, v20);
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v18, v21, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v17);
  sub_228111008((v0 + 144), v17);
  *(v0 + 496) = v22;
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  v23 = __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  MEMORY[0x22AAB0FC0](v23);
  v24 = sub_228120420();
  *(v0 + 504) = v24;
  v25 = v24;
  v27 = *(v0 + 424);
  v26 = *(v0 + 432);
  v28 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = v27;
  *(v0 + 216) = &protocol witness table for SKTextMessage;
  v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  sub_22812ABD8(v26, v29, type metadata accessor for SKTextMessage);
  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v28, v30, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v31 = swift_task_alloc();
  *(v0 + 512) = v31;
  *v31 = v0;
  v31[1] = sub_228123AE0;
  v32 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v32, v0 + 184, v25, v0 + 224, v34);
}

uint64_t sub_228123AE0()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_228124194;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_228123C14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228123C14()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 432);

  sub_22812AB78(v2, type metadata accessor for SKTextMessage);
  sub_2281395DC();
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 312);
    v5 = sub_228138F9C();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v0 + 464);
    v7 = *(v0 + 448);
    v8 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v7, v3);
    v9 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v0 + 304) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v11 = swift_dynamicCast();
    v12 = *(v8 + 56);
    if (v11)
    {
      v13 = *(v0 + 376);
      v14 = *(v0 + 384);
      v15 = *(v0 + 360);
      v16 = *(v0 + 368);
      v17 = *(v0 + 352);
      v12(v17, 0, 1, v15);
      (*(v16 + 32))(v14, v17, v15);
      v18 = *(v16 + 16);
      v18(v13, v14, v15);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v19 = swift_allocError();
      v18(v20, v13, v15);
      v21 = swift_allocObject();
      *(v21 + 16) = 7;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E0, v21);

      v23 = *(v16 + 8);
      v23(v13, v15);
      *(v0 + 288) = 7;
      *(v0 + 296) = v22;
      sub_227FDB3CC();
      v24 = sub_22813999C();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = swift_allocError();
        *v31 = 7;
        *(v31 + 8) = v22;
      }

      v32 = *(v0 + 384);
      v33 = *(v0 + 360);
      swift_willThrow();

      v23(v32, v33);
      v3 = v25;
    }

    else
    {
      v30 = *(v0 + 352);
      v12(v30, 1, 1, *(v0 + 360));
      sub_22812D31C(v30, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v34 = *(v0 + 480);
    v35 = *(v0 + 488);
    v36 = *(v0 + 440);
    v37 = swift_allocObject();
    v37[2] = v3;
    v37[3] = sub_22812D3A4;
    v37[4] = v34;
    swift_beginAccess();
    *(v35 + 16) = sub_22812D458;
    *(v35 + 24) = v37;

    v38 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v36, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v29 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 464);
    v27 = *(v0 + 448);
    v28 = *(v0 + 440);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 456), v27);
    sub_22812C1DC(v27, v26, 0);
    sub_2281324D4();
    sub_22812AB78(v28, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_228124194()
{
  v1 = *(v0 + 432);

  sub_22812AB78(v1, type metadata accessor for SKTextMessage);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v4, v2);
  v6 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v10 = *(v0 + 376);
    v11 = *(v0 + 384);
    v12 = *(v0 + 360);
    v13 = *(v0 + 368);
    v14 = *(v0 + 352);
    v9(v14, 0, 1, v12);
    (*(v13 + 32))(v11, v14, v12);
    v15 = *(v13 + 16);
    v15(v10, v11, v12);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v16 = swift_allocError();
    v15(v17, v10, v12);
    v18 = swift_allocObject();
    *(v18 + 16) = 7;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    v19 = sub_227FF96D4(v16, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E0, v18);

    v20 = *(v13 + 8);
    v20(v10, v12);
    *(v0 + 288) = 7;
    *(v0 + 296) = v19;
    sub_227FDB3CC();
    v21 = sub_22813999C();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = swift_allocError();
      *v24 = 7;
      *(v24 + 8) = v19;
    }

    v25 = *(v0 + 384);
    v26 = *(v0 + 360);
    swift_willThrow();

    v20(v25, v26);
    v2 = v22;
  }

  else
  {
    v23 = *(v0 + 352);
    v9(v23, 1, 1, *(v0 + 360));
    sub_22812D31C(v23, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v27 = *(v0 + 480);
  v28 = *(v0 + 488);
  v29 = *(v0 + 440);
  v30 = swift_allocObject();
  v30[2] = v2;
  v30[3] = sub_22812D3A4;
  v30[4] = v27;
  swift_beginAccess();
  *(v28 + 16) = sub_22812D458;
  *(v28 + 24) = v30;

  v31 = v2;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v29, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2281247F4()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v6;
  *(v0 + 472) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 480) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 488) = v9;
  *(v9 + 16) = sub_22812D3A8;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v33 = v6;
  v16 = *(v0 + 432);
  v17 = *(v0 + 416);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v20 = sub_2281389DC();
  (*(*(v20 - 8) + 16))(v16, v19, v20);
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v18, v21, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v17);
  sub_228111008((v0 + 144), v17);
  *(v0 + 496) = v22;
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  sub_2281389BC();
  v23 = sub_228120420();
  *(v0 + 504) = v23;
  v24 = v23;
  v26 = *(v0 + 424);
  v25 = *(v0 + 432);
  v27 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = v26;
  *(v0 + 216) = &off_283B5E1D0;
  v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  sub_22812ABD8(v25, v28, type metadata accessor for SKNoteMessage);
  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v27, v29, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_228125098;
  v31 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v31, v0 + 184, v24, v0 + 224, v33);
}

uint64_t sub_228125098()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_22812574C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_2281251CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2281251CC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 432);

  sub_22812AB78(v2, type metadata accessor for SKNoteMessage);
  sub_2281395DC();
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 312);
    v5 = sub_228138F9C();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v0 + 464);
    v7 = *(v0 + 448);
    v8 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v7, v3);
    v9 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v0 + 304) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v11 = swift_dynamicCast();
    v12 = *(v8 + 56);
    if (v11)
    {
      v13 = *(v0 + 376);
      v14 = *(v0 + 384);
      v15 = *(v0 + 360);
      v16 = *(v0 + 368);
      v17 = *(v0 + 352);
      v12(v17, 0, 1, v15);
      (*(v16 + 32))(v14, v17, v15);
      v18 = *(v16 + 16);
      v18(v13, v14, v15);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v19 = swift_allocError();
      v18(v20, v13, v15);
      v21 = swift_allocObject();
      *(v21 + 16) = 7;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E4, v21);

      v23 = *(v16 + 8);
      v23(v13, v15);
      *(v0 + 288) = 7;
      *(v0 + 296) = v22;
      sub_227FDB3CC();
      v24 = sub_22813999C();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = swift_allocError();
        *v31 = 7;
        *(v31 + 8) = v22;
      }

      v32 = *(v0 + 384);
      v33 = *(v0 + 360);
      swift_willThrow();

      v23(v32, v33);
      v3 = v25;
    }

    else
    {
      v30 = *(v0 + 352);
      v12(v30, 1, 1, *(v0 + 360));
      sub_22812D31C(v30, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v34 = *(v0 + 480);
    v35 = *(v0 + 488);
    v36 = *(v0 + 440);
    v37 = swift_allocObject();
    v37[2] = v3;
    v37[3] = sub_22812D3A8;
    v37[4] = v34;
    swift_beginAccess();
    *(v35 + 16) = sub_22812D45C;
    *(v35 + 24) = v37;

    v38 = v3;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v36, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v29 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 464);
    v27 = *(v0 + 448);
    v28 = *(v0 + 440);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 456), v27);
    sub_22812C1DC(v27, v26, 0);
    sub_2281324D4();
    sub_22812AB78(v28, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_22812574C()
{
  v1 = *(v0 + 432);

  sub_22812AB78(v1, type metadata accessor for SKNoteMessage);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v4, v2);
  v6 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v10 = *(v0 + 376);
    v11 = *(v0 + 384);
    v12 = *(v0 + 360);
    v13 = *(v0 + 368);
    v14 = *(v0 + 352);
    v9(v14, 0, 1, v12);
    (*(v13 + 32))(v11, v14, v12);
    v15 = *(v13 + 16);
    v15(v10, v11, v12);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v16 = swift_allocError();
    v15(v17, v10, v12);
    v18 = swift_allocObject();
    *(v18 + 16) = 7;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    v19 = sub_227FF96D4(v16, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E4, v18);

    v20 = *(v13 + 8);
    v20(v10, v12);
    *(v0 + 288) = 7;
    *(v0 + 296) = v19;
    sub_227FDB3CC();
    v21 = sub_22813999C();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = swift_allocError();
      *v24 = 7;
      *(v24 + 8) = v19;
    }

    v25 = *(v0 + 384);
    v26 = *(v0 + 360);
    swift_willThrow();

    v20(v25, v26);
    v2 = v22;
  }

  else
  {
    v23 = *(v0 + 352);
    v9(v23, 1, 1, *(v0 + 360));
    sub_22812D31C(v23, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v27 = *(v0 + 480);
  v28 = *(v0 + 488);
  v29 = *(v0 + 440);
  v30 = swift_allocObject();
  v30[2] = v2;
  v30[3] = sub_22812D3A8;
  v30[4] = v27;
  swift_beginAccess();
  *(v28 + 16) = sub_22812D45C;
  *(v28 + 24) = v30;

  v31 = v2;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v29, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_228125D7C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 440) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 448) = v6;
  *(v0 + 456) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 464) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 472) = v9;
  *(v9 + 16) = sub_22812D3AC;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v16 = *(v0 + 416);
  v17 = *(v0 + 336);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F418, &qword_228142DC0);
  v18 = sub_228138BAC();
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v17, v19, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v16);
  sub_228111008((v0 + 144), v16);
  *(v0 + 480) = v20;
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  sub_22813890C();
  v21 = sub_228120420();
  *(v0 + 488) = v21;
  v22 = v21;
  v23 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = &type metadata for SKMailMessageThread;
  *(v0 + 216) = &protocol witness table for SKMailMessageThread;
  *(v0 + 184) = v18;
  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v24 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v23, v24, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v25 = swift_task_alloc();
  *(v0 + 496) = v25;
  *v25 = v0;
  v25[1] = sub_2281265A0;
  v26 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v26, v0 + 184, v22, v0 + 224, v6);
}

uint64_t sub_2281265A0()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_228126C20;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_2281266D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2281266D4()
{
  v1 = *(v0 + 504);

  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 312);
    v4 = sub_228138F9C();
    (*(*(v4 - 8) + 8))(v3, v4);
    v5 = *(v0 + 448);
    v6 = *(v0 + 432);
    v7 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 440), v6, v2);
    v8 = v2;
    sub_22812C1DC(v6, v5, v2);

    *(v0 + 304) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v10 = swift_dynamicCast();
    v11 = *(v7 + 56);
    if (v10)
    {
      v12 = *(v0 + 376);
      v13 = *(v0 + 384);
      v14 = *(v0 + 360);
      v15 = *(v0 + 368);
      v16 = *(v0 + 352);
      v11(v16, 0, 1, v14);
      (*(v15 + 32))(v13, v16, v14);
      v17 = *(v15 + 16);
      v17(v12, v13, v14);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v18 = swift_allocError();
      v17(v19, v12, v14);
      v20 = swift_allocObject();
      *(v20 + 16) = 7;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E8, v20);

      v22 = *(v15 + 8);
      v22(v12, v14);
      *(v0 + 288) = 7;
      *(v0 + 296) = v21;
      sub_227FDB3CC();
      v23 = sub_22813999C();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = swift_allocError();
        *v30 = 7;
        *(v30 + 8) = v21;
      }

      v31 = *(v0 + 384);
      v32 = *(v0 + 360);
      swift_willThrow();

      v22(v31, v32);
      v2 = v24;
    }

    else
    {
      v29 = *(v0 + 352);
      v11(v29, 1, 1, *(v0 + 360));
      sub_22812D31C(v29, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v33 = *(v0 + 464);
    v34 = *(v0 + 472);
    v35 = *(v0 + 424);
    v36 = swift_allocObject();
    v36[2] = v2;
    v36[3] = sub_22812D3AC;
    v36[4] = v33;
    swift_beginAccess();
    *(v34 + 16) = sub_22812D460;
    *(v34 + 24) = v36;

    v37 = v2;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v28 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 448);
    v26 = *(v0 + 432);
    v27 = *(v0 + 424);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 440), v26);
    sub_22812C1DC(v26, v25, 0);
    sub_2281324D4();
    sub_22812AB78(v27, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_228126C20()
{

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v1 = *(v0 + 504);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 440), v3, v1);
  v5 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 304) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = *(v0 + 352);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 7;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E8, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 288) = 7;
    *(v0 + 296) = v18;
    sub_227FDB3CC();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 7;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 384);
    v25 = *(v0 + 360);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 352);
    v8(v22, 1, 1, *(v0 + 360));
    sub_22812D31C(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 464);
  v27 = *(v0 + 472);
  v28 = *(v0 + 424);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_22812D3AC;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_22812D460;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_228127228()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 440) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 448) = v6;
  *(v0 + 456) = v7;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 464) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 472) = v9;
  *(v9 + 16) = sub_22812D3B0;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = (boxed_opaque_existential_1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v3 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;

  sub_228104E70(v11, v12, inited);
  v16 = *(v0 + 416);
  v17 = *(v0 + 336);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F420, &qword_228142DD0);
  v18 = sub_228138BAC();
  *(v0 + 168) = v3;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v17, v19, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v16);
  sub_228111008((v0 + 144), v16);
  *(v0 + 480) = v20;
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  v21 = __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  MEMORY[0x22AAB0FF0](v21);
  v22 = sub_228120420();
  *(v0 + 488) = v22;
  v23 = v22;
  v24 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = &type metadata for SKTextMessageThread;
  *(v0 + 216) = &protocol witness table for SKTextMessageThread;
  *(v0 + 184) = v18;
  *(v0 + 248) = v3;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v24, v25, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v26 = swift_task_alloc();
  *(v0 + 496) = v26;
  *v26 = v0;
  v26[1] = sub_228127A4C;
  v27 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v27, v0 + 184, v23, v0 + 224, v6);
}

uint64_t sub_228127A4C()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_2281280CC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 224));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 184));
    v3 = sub_228127B80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228127B80()
{
  v1 = *(v0 + 504);

  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 312);
    v4 = sub_228138F9C();
    (*(*(v4 - 8) + 8))(v3, v4);
    v5 = *(v0 + 448);
    v6 = *(v0 + 432);
    v7 = *(v0 + 368);
    sub_22812C558(*(v0 + 344) + *(v0 + 440), v6, v2);
    v8 = v2;
    sub_22812C1DC(v6, v5, v2);

    *(v0 + 304) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v10 = swift_dynamicCast();
    v11 = *(v7 + 56);
    if (v10)
    {
      v12 = *(v0 + 376);
      v13 = *(v0 + 384);
      v14 = *(v0 + 360);
      v15 = *(v0 + 368);
      v16 = *(v0 + 352);
      v11(v16, 0, 1, v14);
      (*(v15 + 32))(v13, v16, v14);
      v17 = *(v15 + 16);
      v17(v12, v13, v14);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v18 = swift_allocError();
      v17(v19, v12, v14);
      v20 = swift_allocObject();
      *(v20 + 16) = 7;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3EC, v20);

      v22 = *(v15 + 8);
      v22(v12, v14);
      *(v0 + 288) = 7;
      *(v0 + 296) = v21;
      sub_227FDB3CC();
      v23 = sub_22813999C();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = swift_allocError();
        *v30 = 7;
        *(v30 + 8) = v21;
      }

      v31 = *(v0 + 384);
      v32 = *(v0 + 360);
      swift_willThrow();

      v22(v31, v32);
      v2 = v24;
    }

    else
    {
      v29 = *(v0 + 352);
      v11(v29, 1, 1, *(v0 + 360));
      sub_22812D31C(v29, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v33 = *(v0 + 464);
    v34 = *(v0 + 472);
    v35 = *(v0 + 424);
    v36 = swift_allocObject();
    v36[2] = v2;
    v36[3] = sub_22812D3B0;
    v36[4] = v33;
    swift_beginAccess();
    *(v34 + 16) = sub_22812D464;
    *(v34 + 24) = v36;

    v37 = v2;

    swift_willThrow();
    sub_2281324D4();
    sub_22812AB78(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v28 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 448);
    v26 = *(v0 + 432);
    v27 = *(v0 + 424);
    sub_22812BF3C(*(v0 + 344) + *(v0 + 440), v26);
    sub_22812C1DC(v26, v25, 0);
    sub_2281324D4();
    sub_22812AB78(v27, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_2281280CC()
{

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v1 = *(v0 + 504);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 368);
  sub_22812C558(*(v0 + 344) + *(v0 + 440), v3, v1);
  v5 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 304) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = *(v0 + 352);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 7;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3EC, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 288) = 7;
    *(v0 + 296) = v18;
    sub_227FDB3CC();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 7;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 384);
    v25 = *(v0 + 360);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 352);
    v8(v22, 1, 1, *(v0 + 360));
    sub_22812D31C(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 464);
  v27 = *(v0 + 472);
  v28 = *(v0 + 424);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_22812D3B0;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_22812D464;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_228128514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2281398BC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_228128614, 0, 0);
}

uint64_t sub_228128614()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2281398CC();
  v5 = sub_227FCAF8C(&qword_2813C45C0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2281399FC();
  sub_227FCAF8C(&qword_2813C45C8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2281398DC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_227FC75FC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2281287A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228128810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_228043AD4(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_228043AD4((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x22AAB0200](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_228137C7C();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_228137C1C();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_228128E8C(sub_228129F88);
}

uint64_t sub_22812899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_228136FCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = v2 + 1;
  v9 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228043B98(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_228043B98((v11 > 1), v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  v2[1] = v9;
  v14 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x22AAB0200](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v2;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_228137C7C();

        *v2 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_228137C1C();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_228128E8C(sub_228129FD8);
}

uint64_t sub_228128BF8(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_228128E04(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x22AAB0210]())
  {
LABEL_16:
    v11 = sub_228128E04(a1);
    sub_228128E8C(sub_228129F88);
    return v11;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_228137C7C();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = sub_228128F3C(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_228129488(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      return sub_228128E04(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_228128D74@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_227FEA628(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    sub_227FE5EA8((v9 + 32), a2);
    result = memmove((v9 + 32), (v9 + 64), 32 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_228128E04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_227FEA614(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_228128E8C(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x22AAB0230](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_228129F00(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

unint64_t sub_228128F3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = sub_228137BFC();
  sub_228137C4C();
  if (v14)
  {
    v7 = sub_228137C0C();
    while (1)
    {
      result = sub_228137C2C();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_228139AAC();

      sub_22813923C();
      v10 = sub_228139AEC();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_228137C2C();
      v6 = a1;
      sub_228137C1C();
LABEL_3:
      sub_228137C4C();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_228137C1C();
}

unint64_t sub_228129134(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = sub_228136FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228137BFC();
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v24 = a1;
  *(&v24 + 1) = v11;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  v26 = 0;
  sub_228137C4C();
  if (*(&v24 + 1))
  {
    v21[0] = a3;
    v14 = sub_228137C0C();
    v21[1] = v8 + 16;
    while (1)
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      result = sub_228137C2C();
      if (v16)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = *(v22 + 8);
      if (result >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      (*(v8 + 16))(v10, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v18 = sub_2281391DC();
      result = (*(v8 + 8))(v10, v7);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_20;
      }

      v20 = (v19 - 1) & v18;
      if (a1 >= v14)
      {
        if (v20 < v14)
        {
          goto LABEL_3;
        }
      }

      else if (v20 >= v14)
      {
        goto LABEL_13;
      }

      if (a1 >= v20)
      {
LABEL_13:
        v27 = v23;
        v28 = v24;
        v29 = v25;
        v30 = v26;
        sub_228137C2C();
        a1 = v28;
        sub_228137C1C();
      }

LABEL_3:
      sub_228137C4C();
      if (!*(&v24 + 1))
      {
        return sub_228137C1C();
      }
    }
  }

  return sub_228137C1C();
}

uint64_t sub_228129488(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v6) / 2)
    {
      result = MEMORY[0x22AAB0200](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            sub_228139AAC();

            sub_22813923C();
            result = sub_228139AEC();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_228137BFC())
            {
              while (1)
              {
                v11 = sub_228137C2C();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_228137C4C();
              }
            }

            result = v10 + v6;
            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            sub_228137C3C();

            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_228137BFC();
      v19 = sub_228137C2C();
      if ((v20 & 1) != 0 || v19 >= v8)
      {
LABEL_33:
        result = sub_228137C4C();
LABEL_18:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return result;
      }

      if (!__OFADD__(v19, v6))
      {
        sub_228137C3C();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_228137BFC();
      v21 = sub_228137C2C();
      if ((v22 & 1) == 0 && v21 >= v5)
      {
        v15 = __OFSUB__(v21, v6);
        result = v21 - v6;
        if (v15)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_228137C3C();
      }

      return sub_228137C4C();
    }

    v5 = a2;
    v18 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x22AAB0200](*a4 & 0x3FLL);
    if (v18 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v5)
    {
      do
      {
        sub_228139AAC();

        sub_22813923C();
        result = sub_228139AEC();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_228137BFC())
        {
          while (1)
          {
            v23 = sub_228137C2C();
            if ((v24 & 1) == 0 && v23 == v5)
            {
              break;
            }

            sub_228137C4C();
          }
        }

        sub_228137C3C();
      }

      while (++v5 != v9);
    }
  }

  return result;
}

uint64_t sub_2281298F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_228136FCC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v18 >= 1)
  {
    v19 = *(a3 + 16);
    if (a1 >= (v19 - v18) / 2)
    {
      v62 = a3;
      v36 = v19 - a2;
      if (__OFSUB__(v19, a2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v67 = v19;
      result = MEMORY[0x22AAB0200](*a4 & 0x3F);
      if (v36 >= result / 3)
      {
LABEL_51:
        v56 = sub_228137BFC();
        *&v68 = a4;
        *(&v68 + 1) = a5;
        *&v69 = 0;
        *(&v69 + 1) = v56;
        *&v70 = v57;
        *(&v70 + 1) = v58;
        v71 = 0;
        while (1)
        {
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v59 = sub_228137C2C();
          if ((v60 & 1) == 0 && v59 >= a2)
          {
            v24 = __OFSUB__(v59, v18);
            result = v59 - v18;
            if (v24)
            {
              goto LABEL_59;
            }

            sub_228137C3C();
          }

          result = sub_228137C4C();
          if (!v69)
          {
            return result;
          }
        }
      }

      if (v67 < a2)
      {
        goto LABEL_69;
      }

      result = v62;
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v67 != a2)
      {
        if (v67 <= a2)
        {
LABEL_71:
          __break(1u);
          return result;
        }

        v65 = v62 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v38 = *(v11 + 16);
        v37 = v11 + 16;
        v63 = *(v37 + 56);
        v64 = v38;
        v66 = v37;
        v39 = (v37 - 8);

        while (1)
        {
          v64(v14, v65 + v63 * a2, v10);
          sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v40 = sub_2281391DC();
          result = (*v39)(v14, v10);
          v41 = 1 << *a4;
          v24 = __OFSUB__(v41, 1);
          v42 = v41 - 1;
          if (v24)
          {
            goto LABEL_60;
          }

          v43 = v42 & v40;
          v44 = sub_228137BFC();
          *&v68 = a4;
          *(&v68 + 1) = a5;
          *&v69 = v43;
          *(&v69 + 1) = v44;
          *&v70 = v45;
          *(&v70 + 1) = v46;
          v71 = 0;
          while (*(&v69 + 1))
          {
            v72 = v68;
            v73 = v69;
            v74 = v70;
            v75 = v71;
            v47 = sub_228137C2C();
            if ((v48 & 1) == 0 && v47 == a2)
            {
              break;
            }

            sub_228137C4C();
          }

          v49 = (a2 + 1);
          v50 = __OFADD__(a2, 1);
          result = a2 - v18;
          if (__OFSUB__(a2, v18))
          {
            goto LABEL_61;
          }

          result = sub_228137C3C();
          if (v50)
          {
            goto LABEL_62;
          }

          ++a2;
          if (v49 == v67)
          {
          }
        }
      }
    }

    else
    {
      a2 = *(a3 + 16);
      result = MEMORY[0x22AAB0200](*a4 & 0x3F);
      if (result / 3 <= a1)
      {
        v51 = sub_228137BFC();
        *&v68 = a4;
        *(&v68 + 1) = a5;
        *&v69 = 0;
        *(&v69 + 1) = v51;
        *&v70 = v52;
        *(&v70 + 1) = v53;
        v71 = 0;
        while (1)
        {
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v54 = sub_228137C2C();
          if ((v55 & 1) == 0 && v54 < a1)
          {
            if (__OFADD__(v54, v18))
            {
              __break(1u);
              goto LABEL_51;
            }

            sub_228137C3C();
          }

          result = sub_228137C4C();
          if (!v69)
          {
            goto LABEL_18;
          }
        }
      }

      if (a1 < 0)
      {
        goto LABEL_67;
      }

      if (a2 < a1)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (a1)
      {
        v20 = *(v11 + 16);
        v66 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v67 = v20;
        v65 = *(v11 + 72);
        v62 = a3;

        v21 = 0;
        while (1)
        {
          v67(v17, v66 + v65 * v21, v10);
          sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v22 = sub_2281391DC();
          result = (*(v11 + 8))(v17, v10);
          v23 = 1 << *a4;
          v24 = __OFSUB__(v23, 1);
          v25 = v23 - 1;
          if (v24)
          {
            break;
          }

          v26 = v25 & v22;
          v27 = sub_228137BFC();
          *&v68 = a4;
          *(&v68 + 1) = a5;
          *&v69 = v26;
          *(&v69 + 1) = v27;
          *&v70 = v28;
          *(&v70 + 1) = v29;
          v71 = 0;
          while (*(&v69 + 1))
          {
            v72 = v68;
            v73 = v69;
            v74 = v70;
            v75 = v71;
            v30 = sub_228137C2C();
            if ((v31 & 1) == 0 && v30 == v21)
            {
              break;
            }

            sub_228137C4C();
          }

          result = v21 + v18;
          if (__OFADD__(v21, v18))
          {
            goto LABEL_58;
          }

          ++v21;
          sub_228137C3C();
          if (v21 == a1)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_18:
      v32 = a4[1];
      if (__OFSUB__(v32 >> 6, v18))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v33 = 1 << *a4;
      v24 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v24)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v35 = (v34 & (((v32 >> 6) - v18) >> 63)) + (v32 >> 6) - v18;
      if (v35 < v34)
      {
        v34 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v35 - v34) << 6);
    }
  }

  return result;
}

uint64_t sub_228129F00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x22AAB0230](v8, a2);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x22AAB0240](v10, a4);
    a5(a1, v12 + 16, v12 + 32);
    return v12;
  }

  return result;
}

uint64_t sub_22812A074(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_228139AAC();

        sub_22813923C();
        v7 = sub_228139AEC();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_228137BFC();

        if (v8)
        {
          while (1)
          {
            sub_228137C4C();
          }
        }

        v7 = sub_228137C3C();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_22812A1A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v6 = sub_228136FCC();
  result = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  if (a2)
  {
    if ((v38 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v8 + 16);
      v12 = v8 + 16;
      v26 = *(v12 + 56);
      v27 = v13;
      v28 = v12;
      v25 = (v12 - 8);
      v13(v10, v30, v6);
      while (1)
      {
        sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        result = sub_2281391DC();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = v29;
        v19 = sub_228137BFC();
        v21 = v20;
        v23 = v22;
        (*v25)(v10, v6);
        v31 = a3;
        v32 = v18;
        v33 = v17;
        v34 = v19;
        v35 = v21;
        v36 = v23;
        v37 = 0;
        while (v34)
        {
          sub_228137C4C();
        }

        result = sub_228137C3C();
        if (++v11 == v38)
        {
          return result;
        }

        v27(v10, v30 + v26 * v11, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22812A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_228139AAC();
  sub_22813923C();
  result = sub_228139AEC();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_228137BFC();
    result = sub_228137C2C();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_2281399BC())
          {
            break;
          }

          sub_228137C4C();
          result = sub_228137C2C();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_22812A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_228136FCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v28[1] = a1;
  result = sub_2281391DC();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_228137BFC();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_228137C2C();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v26 = sub_22813926C();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_228137C4C();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_228137C2C();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

uint64_t sub_22812A784(uint64_t result, char a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x22AAB0230](v9);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = v16;
        swift_beginAccess();
        v16 = v19;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

LABEL_13:
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      goto LABEL_27;
    }
  }

  v16 = MEMORY[0x22AAB0230](v9);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (v17 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  result = MEMORY[0x22AAB0230](*(v11 + 16));
  if (result <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = result;
  }

  if (v21 < v15)
  {
    if (v17 <= v21)
    {
      v18 = v21;
    }

    else
    {
      v18 = v17;
    }

LABEL_27:
    v22 = sub_228129F00(v11, v18, 0, v17, a4);

    *v7 = v22;
    return result;
  }

  if (!v14 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v23 = *v7;
    if (*v7)
    {
      goto LABEL_32;
    }

LABEL_36:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!*v7)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v23 = sub_228137C7C();

  *v7 = v23;
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_32:
  result = swift_beginAccess();
  if ((*(v23 + 24) & 0x3FLL) != v17)
  {
    *(v23 + 24) = *(v23 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

uint64_t sub_22812A984(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 16) = a1;
  v15 = *a2;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_22812AA64;

  return sub_22810C274(v15, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22812AA64(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_22812AB78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22812ABD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22812AC40(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22812D424;

  return sub_2281114F8(a1, a2, v7, v6);
}

uint64_t sub_22812ACF4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227FCE13C;

  return sub_2281123CC(a1, a2, v7, v6);
}

uint64_t sub_22812ADA8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_22812A784(v3, 0, sub_228043AD4, sub_228129F88);
  v24 = v2;
  sub_228043AB4(0, v3, 0);
  if (!v3)
  {
    return v25;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    sub_227FCAFD4(v5 + 48 * v4, v22, &qword_27D81E380, &unk_228142F80);
    v7 = v22[0];
    v6 = v22[1];
    sub_227FE5EA8(&v23, v21);
    v8 = v25;
    v9 = v26;
    v10 = *(v26 + 16);
    if (!v25)
    {
      break;
    }

    sub_22812A3BC(v7, v6, v9 + 32, v10, (v8 + 16), v8 + 32);
    v12 = v11;
    v14 = v13;

    if ((v12 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_228128810(v7, v6, v14);
    sub_228029260(v21, v20);
    v24 = v2;
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_228043AB4((v18 > 1), v19 + 1, 1);

      v2 = v24;
    }

    else
    {
    }

    ++v4;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v21);
    *(v2 + 16) = v19 + 1;
    sub_227FE5EA8(v20, (v2 + 32 * v19 + 32));
    if (v4 == v3)
    {
      return v25;
    }
  }

  if (!v10)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v16 = (v26 + 40);
  while (1)
  {
    result = *(v16 - 1);
    if (result == v7 && *v16 == v6)
    {
      break;
    }

    result = sub_2281399BC();
    if (result)
    {
      break;
    }

    v16 += 2;
    if (!--v10)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22812AFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
  v55 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v61 = &v47 - v6;
  v7 = sub_228136FCC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F468, &unk_228142F70);
  v14 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - v15;
  v16 = MEMORY[0x277D84F90];
  v63 = 0;
  v64 = MEMORY[0x277D84F90];
  v17 = *(a1 + 16);
  sub_22812A784(v17, 0, sub_228043B98, sub_228129FD8);
  v62 = v16;
  sub_228043B58(0, v17, 0);
  v60 = v62;
  v54 = v17;
  if (!v17)
  {
    return v63;
  }

  v18 = 0;
  v53 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v19 = *(v14 + 72);
  v51 = v8 + 32;
  v52 = v19;
  v20 = v8 + 16;
  v58 = v8;
  v21 = (v8 + 8);
  v49 = v20;
  v50 = v5;
  v22 = v13;
  v48 = v13;
  while (1)
  {
    v59 = v18;
    v23 = v53 + v52 * v18;
    v24 = v56;
    sub_227FCAFD4(v23, v56, &qword_27D81F468, &unk_228142F70);
    v25 = v58;
    v26 = *(v57 + 48);
    (*(v58 + 32))(v22, v24, v7);
    sub_227FCCD78(v24 + v26, v61, &qword_27D81EBA0, &qword_22813DAF0);
    v27 = v63;
    v28 = v64 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v29 = *(v64 + 16);
    if (!v63)
    {
      break;
    }

    sub_22812A508(v22, v28, v29, (v27 + 16), v27 + 32);
    v31 = v30;
    v33 = v32;

    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }

    v35 = v22;
LABEL_11:
    v39 = v50;
    v40 = v61;
LABEL_12:
    sub_22812899C(v35, v33);
    sub_227FCAFD4(v40, v39, &qword_27D81EBA0, &qword_22813DAF0);
    v41 = v60;
    v62 = v60;
    v43 = *(v60 + 16);
    v42 = *(v60 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_228043B58((v42 > 1), v43 + 1, 1);
      v41 = v62;
    }

    v18 = v59 + 1;
    v44 = v40;
    v45 = v41;
    sub_22812D31C(v44, &qword_27D81EBA0, &qword_22813DAF0);
    *(v45 + 16) = v43 + 1;
    v46 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v60 = v45;
    sub_227FCCD78(v39, v45 + v46 + *(v55 + 72) * v43, &qword_27D81EBA0, &qword_22813DAF0);
    v22 = v48;
    (*v21)(v48, v7);
    if (v18 == v54)
    {
      return v63;
    }
  }

  v35 = v22;
  if (!v29)
  {
    v33 = 0;
    v39 = v50;
    v40 = v61;
    goto LABEL_12;
  }

  v36 = *(v58 + 72);
  v37 = *(v58 + 16);
  while (1)
  {
    v37(v11, v28, v7);
    sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v38 = sub_22813926C();
    result = (*v21)(v11, v7);
    if (v38)
    {
      break;
    }

    v28 += v36;
    if (!--v29)
    {
      v33 = 0;
      goto LABEL_11;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22812B4F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  sub_228136FCC();
  sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = sub_2281391DC();
  v6 = 1 << *v5;
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = v8 & result;
  v12 = sub_228137BFC();
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  __break(1u);
  do
  {
    sub_228137C4C();
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    v9 = sub_228137C2C();
  }

  while ((v10 & 1) != 0 || v9 != a4);
  return v11;
}

uint64_t sub_22812B698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
  v55 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v61 = &v47 - v6;
  v7 = sub_228136FCC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F450, &qword_228142F38);
  v14 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - v15;
  v16 = MEMORY[0x277D84F90];
  v63 = 0;
  v64 = MEMORY[0x277D84F90];
  v17 = *(a1 + 16);
  sub_22812A784(v17, 0, sub_228043B98, sub_228129FD8);
  v62 = v16;
  sub_228043D20(0, v17, 0);
  v60 = v62;
  v54 = v17;
  if (!v17)
  {
    return v63;
  }

  v18 = 0;
  v53 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v19 = *(v14 + 72);
  v51 = v8 + 32;
  v52 = v19;
  v20 = v8 + 16;
  v58 = v8;
  v21 = (v8 + 8);
  v49 = v20;
  v50 = v5;
  v22 = v13;
  v48 = v13;
  while (1)
  {
    v59 = v18;
    v23 = v53 + v52 * v18;
    v24 = v56;
    sub_227FCAFD4(v23, v56, &qword_27D81F450, &qword_228142F38);
    v25 = v58;
    v26 = *(v57 + 48);
    (*(v58 + 32))(v22, v24, v7);
    sub_227FCCD78(v24 + v26, v61, &qword_27D81EB40, &qword_228142EC0);
    v27 = v63;
    v28 = v64 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v29 = *(v64 + 16);
    if (!v63)
    {
      break;
    }

    sub_22812A508(v22, v28, v29, (v27 + 16), v27 + 32);
    v31 = v30;
    v33 = v32;

    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }

    v35 = v22;
LABEL_11:
    v39 = v50;
    v40 = v61;
LABEL_12:
    sub_22812899C(v35, v33);
    sub_227FCAFD4(v40, v39, &qword_27D81EB40, &qword_228142EC0);
    v41 = v60;
    v62 = v60;
    v43 = *(v60 + 16);
    v42 = *(v60 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_228043D20((v42 > 1), v43 + 1, 1);
      v41 = v62;
    }

    v18 = v59 + 1;
    v44 = v40;
    v45 = v41;
    sub_22812D31C(v44, &qword_27D81EB40, &qword_228142EC0);
    *(v45 + 16) = v43 + 1;
    v46 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v60 = v45;
    sub_227FCCD78(v39, v45 + v46 + *(v55 + 72) * v43, &qword_27D81EB40, &qword_228142EC0);
    v22 = v48;
    (*v21)(v48, v7);
    if (v18 == v54)
    {
      return v63;
    }
  }

  v35 = v22;
  if (!v29)
  {
    v33 = 0;
    v39 = v50;
    v40 = v61;
    goto LABEL_12;
  }

  v36 = *(v58 + 72);
  v37 = *(v58 + 16);
  while (1)
  {
    v37(v11, v28, v7);
    sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v38 = sub_22813926C();
    result = (*v21)(v11, v7);
    if (v38)
    {
      break;
    }

    v28 += v36;
    if (!--v29)
    {
      v33 = 0;
      goto LABEL_11;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_22812BBD0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_22813939C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_22813948C();
}

uint64_t sub_22812BC80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v28[3] = v3;
  v28[4] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_22812ABD8(a2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812CAE4(v28, v27);
  sub_22812CAE4(v28, v26);
  sub_22812CAE4(v28, v25);
  sub_22812CAE4(v28, v24);
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

    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    v12 = sub_227FCC340(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = (__swift_project_boxed_opaque_existential_1(v26, v26[3]) + v3[6]);
    v14 = *v13;
    v15 = v13[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
    v16 = sub_227FCC340(v14, v15, &v23);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = (__swift_project_boxed_opaque_existential_1(v25, v25[3]) + v3[7]);
    v18 = *v17;
    v19 = v17[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v25);
    v20 = sub_227FCC340(v18, v19, &v23);

    *(v7 + 24) = v20;
    *(v7 + 32) = 1026;
    v21 = *(__swift_project_boxed_opaque_existential_1(v24, v24[3]) + v3[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v24);
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
    __swift_destroy_boxed_opaque_existential_1Tm_13(v24);

    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_13(v28);
}

uint64_t sub_22812BF3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v28[3] = v3;
  v28[4] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_22812ABD8(a2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812CAE4(v28, v27);
  sub_22812CAE4(v28, v26);
  sub_22812CAE4(v28, v25);
  sub_22812CAE4(v28, v24);
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

    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    v12 = sub_227FCC340(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = (__swift_project_boxed_opaque_existential_1(v26, v26[3]) + v3[6]);
    v14 = *v13;
    v15 = v13[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
    v16 = sub_227FCC340(v14, v15, &v23);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = (__swift_project_boxed_opaque_existential_1(v25, v25[3]) + v3[7]);
    v18 = *v17;
    v19 = v17[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v25);
    v20 = sub_227FCC340(v18, v19, &v23);

    *(v7 + 24) = v20;
    *(v7 + 32) = 1026;
    v21 = *(__swift_project_boxed_opaque_existential_1(v24, v24[3]) + v3[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v24);
    *(v7 + 34) = v21;
    _os_log_impl(&dword_227FC3000, v5, v6, "Successfully handled [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v24);

    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_13(v28);
}

uint64_t sub_22812C1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22813828C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v18[3] = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v18[4] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_22812ABD8(a1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v11 = sub_22813882C();
  __swift_project_value_buffer(v11, qword_2813C8A20);
  v12 = sub_22813880C();
  v13 = sub_2281396CC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_227FC3000, v12, v13, "Sending Biome event for Summarization request", v14, 2u);
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

  return __swift_destroy_boxed_opaque_existential_1Tm_13(v18);
}

uint64_t sub_22812C558(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v35[3] = v5;
  v35[4] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  sub_22812ABD8(a2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812CAE4(v35, v34);
  sub_22812CAE4(v35, v33);
  sub_22812CAE4(v35, v32);
  sub_22812CAE4(v35, v31);
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

    __swift_destroy_boxed_opaque_existential_1Tm_13(v34);
    v15 = sub_227FCC340(v13, v14, &v30);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v16 = (__swift_project_boxed_opaque_existential_1(v33, v33[3]) + v5[6]);
    v17 = *v16;
    v18 = v16[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v33);
    v19 = sub_227FCC340(v17, v18, &v30);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2082;
    v20 = (__swift_project_boxed_opaque_existential_1(v32, v32[3]) + v5[7]);
    v21 = *v20;
    v22 = v20[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v32);
    v23 = sub_227FCC340(v21, v22, &v30);

    *(v10 + 24) = v23;
    *(v10 + 32) = 1026;
    LODWORD(v23) = *(__swift_project_boxed_opaque_existential_1(v31, v31[3]) + v5[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v31);
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
    __swift_destroy_boxed_opaque_existential_1Tm_13(v31);

    __swift_destroy_boxed_opaque_existential_1Tm_13(v34);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v33);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v32);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_13(v35);
}

unint64_t sub_22812C864()
{
  result = qword_27D81F428;
  if (!qword_27D81F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81F428);
  }

  return result;
}

uint64_t sub_22812C8E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22812C918(uint64_t a1)
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

uint64_t sub_22812CA48(uint64_t a1)
{
  result = sub_228136FCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22812CAD8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22812CAE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22812CB68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22812D428;

  return sub_22812A984(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_22Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22812CC9C()
{
  v1 = *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_228110C4C(v2);
}

uint64_t sub_22812CCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22812CD64(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_228136FCC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22812D42C;

  return sub_228109354(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_19Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_330Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v19 = *(*v3 + 64);
  v6 = sub_228136FCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  swift_unknownObjectRelease();

  v10 = v3[15];
  v11 = type metadata accessor for ModelBundleIdentifier(0);
  if (!(*(*(v11 - 8) + 48))(v2 + v5 + v10, 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v13 = &qword_27D81E790;
      v14 = &unk_228142600;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      v13 = &qword_27D81E760;
      v14 = &qword_22813BBD0;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    (*(*(v15 - 8) + 8))(v2 + v5 + v10, v15);
  }

LABEL_7:
  v16 = v4 | v8;
  v17 = (v5 + v19 + v8) & ~v8;
  (*(v7 + 8))(v2 + v17, v6);

  return MEMORY[0x2821FE8E8](v2, v17 + v9, v16 | 7);
}

uint64_t sub_22812D12C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_228136FCC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_227FCE138;

  return sub_228108EDC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_22812D2B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22812D31C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t LLMUrgencyClassifier.__allocating_init(sessionInfo:configuration:contextSizeOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22812D538;

  return LLMUrgencyClassifier.init(sessionInfo:configuration:contextSizeOverride:)(a1, v9, a3, a4 & 1);
}

uint64_t sub_22812D538(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t LLMUrgencyClassifier.init(sessionInfo:configuration:contextSizeOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 144) = a4;
  *(v5 + 96) = a1;
  return MEMORY[0x2822009F8](sub_22812D660, 0, 0);
}

uint64_t sub_22812D660()
{
  sub_22812F0E0(*(v0 + 96), v0 + 16);
  type metadata accessor for GMSClassificationModelEngine(0);
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_22812D718;

  return sub_2280A2528(v0 + 16);
}

uint64_t sub_22812D718(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_22812D904;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_22812D840;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22812D840()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  *(v2 + 16) = v1;
  *(v0 + 80) = &type metadata for LLMUrgencyClassifier.TokenCounter;
  *(v0 + 88) = &off_283B60800;
  *(v0 + 56) = v1;

  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_22812D9A8((v0 + 56), v2 + 24);
  *(v2 + 64) = v3;
  *(v2 + 72) = v4 & 1;
  v6 = *(v0 + 8);
  v7 = *(v0 + 112);

  return v6(v7);
}

uint64_t sub_22812D904()
{
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 96));
  type metadata accessor for LLMUrgencyClassifier();
  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22812D9A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22812D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x2822009F8](sub_22812D9E8, 0, 0);
}

uint64_t sub_22812D9E8()
{
  v1 = v0[9];
  v2 = 1 << *(v1 + 16);
  if ((v2 & 9) != 0)
  {
    v3 = sub_2281359AC(v1, v0[11], v0[12]);
  }

  else if ((v2 & 0x12) != 0)
  {
    v3 = sub_228135B1C(v1, v0[11], v0[12]);
  }

  else
  {
    v3 = sub_228135DAC(v1, v0[11], v0[12]);
  }

  v5 = v3;
  v6 = v4;
  v0[14] = v4;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_22812DAE0;
  v8 = v0[10];

  return sub_22812DFF4(v5, v6, v8);
}

uint64_t sub_22812DAE0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8(0);
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;

    return MEMORY[0x2822009F8](sub_22812DC5C, 0, 0);
  }
}

uint64_t sub_22812DC5C()
{
  v0[2] = v0[17];
  v1 = v0[9];
  v0[3] = v0[16];
  v0[4] = 10;
  v0[5] = 0xE100000000000000;
  v0[6] = 4091452;
  v0[7] = 0xE300000000000000;
  sub_227FDB420();
  v2 = sub_2281397BC();
  v4 = v3;

  v0[18] = v4;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v9 = 0xD000000000000011;
      v11 = "mailMessageThread";
    }

    else
    {
      if (v7 == 4)
      {
        v8 = 0x80000002281438E0;
        v9 = 0xD000000000000012;
        goto LABEL_14;
      }

      v9 = 0xD000000000000011;
      v11 = "textMessageThread";
    }

    v8 = (v11 - 32) | 0x8000000000000000;
  }

  else
  {
    v8 = 0xEB00000000656761;
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = 0xEC0000006E6F6974;
        v9 = 0x6163696669746F6ELL;
        goto LABEL_14;
      }

      v10 = 1954047348;
    }

    else
    {
      v10 = 1818845549;
    }

    v9 = v10 | 0x7373654D00000000;
  }

LABEL_14:
  v0[19] = v8;
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_22812DE80;
  v13 = v0[10];
  v14 = v0[8];

  return sub_2280A39A4(v14, v2, v4, v5, v6, v13, v9, v8);
}

uint64_t sub_22812DE80(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_22812DFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_2281377CC();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22812E0B8, 0, 0);
}

uint64_t sub_22812E0B8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = *(v0[21] + 16);
  v0[25] = v4;
  sub_22812F0E0(v4 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner, (v0 + 13));
  __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters, v3);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_22812E1C4;
  v6 = v0[24];
  v7 = v0[20];

  return sub_228007C34(v6, v7);
}

uint64_t sub_22812E1C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 184);
  v6 = *(*v2 + 176);
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_22812E4C8;
  }

  else
  {
    v7 = sub_22812E338;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22812E338()
{
  v1 = v0[21];
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  if (*(v1 + 72) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v0[25] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(v0[25] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_22812E534;

    return MEMORY[0x2821D9808]();
  }

  v3 = *(v1 + 64);
  v4 = *(v0[25] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_maximumOutputTokens);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v0[27];
  v8 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x2821D9808]();
  }

  v9 = v0[20];
  sub_22812F0E0(v0[21] + 24, (v0 + 2));
  sub_22812F0E0(v9, (v0 + 7));
  v0[12] = 0;
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_22812E778;
  v12 = v0[18];
  v11 = v0[19];

  return sub_227FE83EC(v12, v11, v8);
}

uint64_t sub_22812E4C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22812E534(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 240) = a1;

    return MEMORY[0x2822009F8](sub_22812E688, 0, 0);
  }
}

void sub_22812E688()
{
  v1 = v0[30];
  v2 = *(v0[25] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_maximumOutputTokens);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v0[27];
  v6 = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v0[20];
  sub_22812F0E0(v0[21] + 24, (v0 + 2));
  sub_22812F0E0(v7, (v0 + 7));
  v0[12] = 0;
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_22812E778;
  v10 = v0[18];
  v9 = v0[19];

  sub_227FE83EC(v10, v9, v6);
}

uint64_t sub_22812E778(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 256) = v2;

  if (v2)
  {
    v7 = sub_22812E920;
  }

  else
  {
    *(v6 + 264) = a2;
    *(v6 + 272) = a1;
    v7 = sub_22812E8AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22812E8AC()
{
  sub_22812F144((v0 + 2));

  v1 = v0[1];
  v3 = v0[33];
  v2 = v0[34];

  return v1(v2, v3);
}

uint64_t sub_22812E920()
{
  sub_22812F144(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LLMUrgencyClassifier.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t sub_22812E9BC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22812E9E4, 0, 0);
}

uint64_t sub_22812E9E4()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
  v1 = off_283B5ECA0;
  v2 = sub_22813755C();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22812EB3C;
  v5 = v0[2];
  v4 = v0[3];

  return (v7)(v5, v4, v2, &off_283B5EC90);
}

uint64_t sub_22812EB3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t dispatch thunk of LLMUrgencyClassifier.__allocating_init(sessionInfo:configuration:contextSizeOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = (*(v4 + 104) + **(v4 + 104));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22812ED84;

  return v12(a1, a2, a3, a4 & 1);
}

uint64_t sub_22812ED84(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of LLMUrgencyClassifier.performInference(input:requestInfo:eventTimeBucketName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 112) + **(*v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22812EFD4;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_22812EFD4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22812F0E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22812F1E0(uint64_t a1)
{
  result = sub_22813877C();
  if (v2 <= 0x3F)
  {
    result = sub_2281387EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22812F2BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22812F2F4(uint64_t a1)
{
  result = sub_2281387AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22812F370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = sub_22813877C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v31[-v10];
  type metadata accessor for Signpost(0);
  sub_22813879C();
  sub_22813875C();
  v12 = *a1;
  v37 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = sub_22813879C();
  v15 = sub_22813970C();
  result = sub_22813974C();
  v36 = v13;
  if ((result & 1) == 0)
  {

LABEL_11:
    (*(v6 + 16))(v9, v11, v5);
    sub_2281387EC();
    swift_allocObject();
    v28 = sub_2281387DC();
    v29 = v37;
    *a3 = v12;
    *(a3 + 8) = v29;
    *(a3 + 16) = v36;
    v30 = type metadata accessor for SignpostToken(0);
    (*(v6 + 32))(a3 + *(v30 + 20), v11, v5);

    *(a3 + *(v30 + 24)) = v28;
    return result;
  }

  v34 = v9;
  v35 = v5;
  v33 = v12;
  v32 = v15;
  if ((v13 & 1) == 0)
  {
    if (v12)
    {
      v17 = v12;
LABEL_10:
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136446210;
      v20 = v38;
      swift_beginAccess();
      v21 = *(v20 + 16);

      v23 = v21(v22);
      v25 = v24;

      v26 = sub_227FCC340(v23, v25, &v39);

      *(v18 + 4) = v26;
      v27 = sub_22813876C();
      _os_signpost_emit_with_name_impl(&dword_227FC3000, v14, v32, v27, v17, "%{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAB28A0](v19, -1, -1);
      MEMORY[0x22AAB28A0](v18, -1, -1);

      v9 = v34;
      v5 = v35;
      v12 = v33;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v12 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v17 = &v40;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22812F68C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a3@<X8>)
{
  v30 = a1;
  v5 = sub_22813877C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  type metadata accessor for Signpost(0);
  sub_22813879C();
  sub_22813875C();
  v11 = *v3;
  v33 = *(v3 + 8);
  v12 = *(v3 + 16);

  v13 = sub_22813879C();
  v14 = sub_22813970C();
  result = sub_22813974C();
  v32 = v12;
  if ((result & 1) == 0)
  {

    v16 = v11;
LABEL_11:
    (*(v6 + 16))(v31, v10, v5);
    sub_2281387EC();
    swift_allocObject();
    v24 = sub_2281387DC();
    v25 = v33;
    *a3 = v16;
    *(a3 + 8) = v25;
    *(a3 + 16) = v32;
    v26 = type metadata accessor for SignpostToken(0);
    result = (*(v6 + 32))(a3 + *(v26 + 20), v10, v5);
    *(a3 + *(v26 + 24)) = v24;
    return result;
  }

  v29 = v5;
  if ((v12 & 1) == 0)
  {

    if (v11)
    {
      v16 = v11;
      v17 = v14;
      v28 = v16;
LABEL_10:
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136446210;
      v20 = v30();
      v22 = sub_227FCC340(v20, v21, &v34);

      *(v18 + 4) = v22;
      v23 = sub_22813876C();
      _os_signpost_emit_with_name_impl(&dword_227FC3000, v13, v17, v23, v28, "%{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAB28A0](v19, -1, -1);
      MEMORY[0x22AAB28A0](v18, -1, -1);

      v5 = v29;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v11 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  if ((v11 & 0xFFFFF800) != 0xD800)
  {
    if (v11 >> 16 <= 0x10)
    {
      v17 = v14;

      v28 = &v34;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22812F9A4(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_22813877C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Signpost(0);
  sub_22813879C();
  sub_22813875C();
  v8 = *v2;
  v9 = *(v2 + 16);

  v10 = sub_22813879C();
  v11 = sub_22813971C();
  result = sub_22813974C();
  if ((result & 1) == 0)
  {

    return (*(v5 + 8))(v7, v4);
  }

  HIDWORD(v20) = v11;
  if ((v9 & 1) == 0)
  {

    if (v8)
    {
      v13 = a1;
LABEL_10:
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      v16 = v13();
      v18 = sub_227FCC340(v16, v17, &v21);

      *(v14 + 4) = v18;
      v19 = sub_22813876C();
      _os_signpost_emit_with_name_impl(&dword_227FC3000, v10, BYTE4(v20), v19, v8, "%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAB28A0](v15, -1, -1);
      MEMORY[0x22AAB28A0](v14, -1, -1);

      return (*(v5 + 8))(v7, v4);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v8 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 & 0xFFFFF800) != 0xD800)
  {
    if (v8 >> 16 <= 0x10)
    {
      v13 = a1;

      v8 = &v21;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22812FBFC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8888);
  v1 = __swift_project_value_buffer(v0, qword_2813C8888);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.fetchModelInfo.modelCatalog";
  *(v1 + 8) = 35;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22812FCE4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8840);
  v1 = __swift_project_value_buffer(v0, qword_2813C8840);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.fetchModelInfo.cache";
  *(v1 + 8) = 28;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22812FDCC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8858);
  v1 = __swift_project_value_buffer(v0, qword_2813C8858);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.inputCompressorCall";
  *(v1 + 8) = 27;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22812FEB4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C88A0);
  v1 = __swift_project_value_buffer(v0, qword_2813C88A0);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.truncateCall";
  *(v1 + 8) = 20;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22812FF9C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C87B0);
  v1 = __swift_project_value_buffer(v0, qword_2813C87B0);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.chunkText";
  *(v1 + 8) = 17;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130084()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8870);
  v1 = __swift_project_value_buffer(v0, qword_2813C8870);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent";
  *(v1 + 8) = 26;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22813016C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C87E0);
  v1 = __swift_project_value_buffer(v0, qword_2813C87E0);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.unsupportedEmojiRemoval";
  *(v1 + 8) = 50;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130254()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C87F8);
  v1 = __swift_project_value_buffer(v0, qword_2813C87F8);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.specialCharacterRemoval";
  *(v1 + 8) = 50;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22813033C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8810);
  v1 = __swift_project_value_buffer(v0, qword_2813C8810);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.personEmojiProcessing";
  *(v1 + 8) = 48;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130424()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8828);
  v1 = __swift_project_value_buffer(v0, qword_2813C8828);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.URLReplacement";
  *(v1 + 8) = 41;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22813050C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C87C8);
  v1 = __swift_project_value_buffer(v0, qword_2813C87C8);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.consecutiveWhitespaceProcessing";
  *(v1 + 8) = 58;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281305F4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8990);
  v1 = __swift_project_value_buffer(v0, qword_2813C8990);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.summarizationRequest";
  *(v1 + 8) = 34;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281306DC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C89A8);
  v1 = __swift_project_value_buffer(v0, qword_2813C89A8);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.contentPreprocessing";
  *(v1 + 8) = 34;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281307C4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8978);
  v1 = __swift_project_value_buffer(v0, qword_2813C8978);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.contentPostprocessing";
  *(v1 + 8) = 35;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281308AC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8948);
  v1 = __swift_project_value_buffer(v0, qword_2813C8948);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.supportedLanguageCheck";
  *(v1 + 8) = 36;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130994()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8930);
  v1 = __swift_project_value_buffer(v0, qword_2813C8930);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.inputSafetyDenyListCheck";
  *(v1 + 8) = 38;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130A7C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8918);
  v1 = __swift_project_value_buffer(v0, qword_2813C8918);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.inputSafetyContentSanitizerCheck";
  *(v1 + 8) = 46;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130B64()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C89D8);
  v1 = __swift_project_value_buffer(v0, qword_2813C89D8);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.modelRunCall";
  *(v1 + 8) = 26;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130C4C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C89C0);
  v1 = __swift_project_value_buffer(v0, qword_2813C89C0);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.modelResultLogging";
  *(v1 + 8) = 32;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130D34()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8960);
  v1 = __swift_project_value_buffer(v0, qword_2813C8960);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.finalSafetyEvaluation";
  *(v1 + 8) = 35;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130E1C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_27D823258);
  v1 = __swift_project_value_buffer(v0, qword_27D823258);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.prewarm";
  *(v1 + 8) = 21;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130F04()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_27D823270);
  v1 = __swift_project_value_buffer(v0, qword_27D823270);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.retry.tooManyTokens.oneShot";
  *(v1 + 8) = 41;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130FEC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_27D823288);
  v1 = __swift_project_value_buffer(v0, qword_27D823288);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.retry.tooManyTokens.chunked";
  *(v1 + 8) = 41;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281310D4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C88D0);
  v1 = __swift_project_value_buffer(v0, qword_2813C88D0);
  if (qword_2813C47D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47D8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "classification.classificationRequest";
  *(v1 + 8) = 36;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281311BC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C88E8);
  v1 = __swift_project_value_buffer(v0, qword_2813C88E8);
  if (qword_2813C47D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47D8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "classification.llmClassifierCall";
  *(v1 + 8) = 32;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281312A4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8900);
  v1 = __swift_project_value_buffer(v0, qword_2813C8900);
  if (qword_2813C47D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47D8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "classification.dateExtraction";
  *(v1 + 8) = 29;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22813138C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C88B8);
  v1 = __swift_project_value_buffer(v0, qword_2813C88B8);
  if (qword_2813C47D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47D8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "classification.prewarm";
  *(v1 + 8) = 22;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228131474(uint64_t a1)
{
  v2 = sub_2281387BC();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22813877C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Signpost(0);
  v23 = *a1;
  v9 = *(a1 + 16);
  type metadata accessor for SignpostToken(0);
  v10 = sub_22813879C();
  sub_2281387CC();
  v11 = sub_2281396FC();
  result = sub_22813974C();
  if ((result & 1) == 0)
  {

    return (*(v6 + 8))(v8, v5);
  }

  if (v9)
  {
    if (!(v23 >> 32))
    {
      if ((v23 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v23 >> 16 <= 0x10)
      {
        v13 = v5;
        v23 = &v25;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v5;
LABEL_10:
  v14 = v11;

  sub_2281387FC();

  v15 = v22;
  if ((*(v22 + 88))(v4, v2) == *MEMORY[0x277D85B00])
  {
    v16 = 0;
    v17 = 0;
    v18 = "[Error] Interval already ended";
  }

  else
  {
    (*(v15 + 8))(v4, v2);
    v18 = "%{public}s";
    v17 = 2;
    v16 = 1;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v24 = v20;
  *v19 = v17;
  *(v19 + 1) = v16;
  *(v19 + 2) = 2082;
  *(v19 + 4) = sub_227FCC340(0, 0xE000000000000000, &v24);
  v21 = sub_22813876C();
  _os_signpost_emit_with_name_impl(&dword_227FC3000, v10, v14, v21, v23, v18, v19, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v20);
  MEMORY[0x22AAB28A0](v20, -1, -1);
  MEMORY[0x22AAB28A0](v19, -1, -1);

  return (*(v6 + 8))(v8, v13);
}

uint64_t sub_2281317B8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v31 = a2;
  v30 = sub_2281387BC();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22813877C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Signpost(0);
  v10 = *a1;
  v11 = *(a1 + 16);
  type metadata accessor for SignpostToken(0);

  v12 = sub_22813879C();
  sub_2281387CC();
  v29 = sub_2281396FC();
  result = sub_22813974C();
  if ((result & 1) == 0)
  {

    return (*(v7 + 8))(v9, v6);
  }

  v27 = v6;
  if (v11)
  {
    if (!(v10 >> 32))
    {
      if ((v10 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v10 >> 16 <= 0x10)
      {

        v14 = &v32;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v10;
LABEL_10:

  sub_2281387FC();

  v15 = v28;
  v16 = v30;
  v17 = v7;
  if ((*(v28 + 88))(v5, v30) == *MEMORY[0x277D85B00])
  {
    v18 = 0;
    v19 = 0;
    v20 = "[Error] Interval already ended";
  }

  else
  {
    (*(v15 + 8))(v5, v16);
    v20 = "%{public}s";
    v19 = 2;
    v18 = 1;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v32 = v22;
  *v21 = v19;
  *(v21 + 1) = v18;
  *(v21 + 2) = 2082;
  v23 = v31();
  v25 = sub_227FCC340(v23, v24, &v32);

  *(v21 + 4) = v25;
  v26 = sub_22813876C();
  _os_signpost_emit_with_name_impl(&dword_227FC3000, v12, v29, v26, v14, v20, v21, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v22);
  MEMORY[0x22AAB28A0](v22, -1, -1);
  MEMORY[0x22AAB28A0](v21, -1, -1);

  return (*(v17 + 8))(v9, v27);
}

uint64_t sub_228131B4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000013, 0x80000002281490C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  sub_2281398EC();
  v3 = MEMORY[0x22AAB1970](8251, 0xE200000000000000);
  v4 = a2(v3);
  MEMORY[0x22AAB1970](v4);

  return 0;
}

uint64_t sub_228131CB0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22813882C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2281387AC();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return sub_22813878C();
}

uint64_t sub_228131DFC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22813882C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22813881C();
}

uint64_t sub_228131E78()
{
  v0 = sub_22813882C();
  __swift_allocate_value_buffer(v0, qword_2813C4778);
  __swift_project_value_buffer(v0, qword_2813C4778);
  return sub_22813881C();
}

uint64_t sub_228131EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v4 = sub_2281387BC();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22813877C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Signpost(0);
  v34 = *a1;
  v11 = *(a1 + 16);
  type metadata accessor for SignpostToken(0);
  v12 = sub_22813879C();
  sub_2281387CC();
  v13 = sub_2281396FC();
  result = sub_22813974C();
  if ((result & 1) == 0)
  {

    return (*(v8 + 8))(v10, v7);
  }

  v31 = v13;
  if (v11)
  {
    if (!(v34 >> 32))
    {
      if ((v34 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v34 >> 16 <= 0x10)
      {
        v15 = v7;
        v34 = &v36;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v34)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v7;
LABEL_10:

  sub_2281387FC();

  v16 = v32;
  if ((*(v32 + 88))(v6, v4) == *MEMORY[0x277D85B00])
  {
    v17 = 0;
    v18 = 0;
    v19 = "[Error] Interval already ended";
  }

  else
  {
    (*(v16 + 8))(v6, v4);
    v19 = "%{public}s";
    v18 = 2;
    v17 = 1;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v35 = v21;
  *v20 = v18;
  *(v20 + 1) = v17;
  *(v20 + 2) = 2082;
  v22 = v33;
  swift_beginAccess();
  v23 = *(v22 + 16);

  v25 = v23(v24);
  v27 = v26;

  v28 = sub_227FCC340(v25, v27, &v35);

  *(v20 + 4) = v28;
  v29 = sub_22813876C();
  _os_signpost_emit_with_name_impl(&dword_227FC3000, v12, v31, v29, v34, v19, v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v21);
  MEMORY[0x22AAB28A0](v21, -1, -1);
  MEMORY[0x22AAB28A0](v20, -1, -1);

  return (*(v8 + 8))(v10, v15);
}

char *sub_22813228C(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, os_unfair_lock_s *a5)
{
  v6 = v5;
  v25 = a5;
  v11 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v26 = a1;
  sub_22812F370(a1, v14, v13);
  v15 = *a4;
  v16 = a4[1];

  v17 = sub_2280A9734(1, v15, v16);
  v27 = v18;

  if (v6)
  {
    v19 = swift_allocObject();
    v19[2] = v6;
    v19[3] = a2;
    v19[4] = a3;
    swift_beginAccess();
    *(v14 + 16) = sub_2281324A4;
    *(v14 + 24) = v19;

    v20 = v6;

    swift_willThrow();
    sub_228131EF8(v13, v26, v14);
    sub_227FEA5B8(v13);
  }

  else
  {
    v22 = v25;
    v21 = v26;
    if ((*a4 != v17 || a4[1] != v27) && (sub_2281399BC() & 1) == 0)
    {
      sub_2280A660C(4u, v22);
    }

    sub_228131EF8(v13, v21, v14);
    sub_227FEA5B8(v13);
  }

  return v17;
}

uint64_t sub_2281324DC(uint64_t *a1)
{
  v1 = sub_22813713C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = sub_22813716C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_228136FDC();
  sub_22813715C();
  (*(v9 + 8))(v11, v8);
  sub_22813715C();
  v12 = sub_228100F00(v5);
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  return v12 & 1;
}

uint64_t Error.loggingDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v27 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  swift_getDynamicType();
  sub_22800C8EC();
  v16 = swift_dynamicCastMetatype();
  v17 = *(v4 + 16);
  if (!v16)
  {
    v17(v15, v2, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E748, &qword_22813BB40);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm_14(v30);
      goto LABEL_4;
    }

    v17(v10, v2, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F470, &qword_228143078);
    if (swift_dynamicCast())
    {
      sub_227FD51C0(v30, v27);
      v24 = v28;
      v25 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v26 = (*(v25 + 8))(v24, v25);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E750, &qword_22813BB48);
      if (!swift_dynamicCast())
      {
        v17(v7, v2, a1);
        v22 = sub_22813930C();
        goto LABEL_15;
      }

      sub_227FD51C0(v30, v27);
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v26 = sub_2281399CC();
    }

    v22 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm_14(v27);
LABEL_15:
    (*(v4 + 8))(v10, a1);
    return v22;
  }

LABEL_4:
  v17(v13, v2, a1);
  v18 = sub_22813999C();
  if (v18)
  {
    v19 = v18;
    (*(v4 + 8))(v13, a1);
  }

  else
  {
    v19 = swift_allocError();
    (*(v4 + 32))(v20, v13, a1);
  }

  v21 = sub_228136E1C();

  v22 = NSError.loggingDescription.getter();
  return v22;
}

uint64_t NSError.loggingDescription.getter()
{
  v1 = v0;
  v39[0] = 0x6E69616D6F64;
  v39[1] = 0xE600000000000000;
  v2 = [v0 domain];
  v3 = sub_2281392AC();
  v5 = v4;

  v6 = MEMORY[0x277D837D0];
  v39[2] = v3;
  v39[3] = v5;
  v39[5] = MEMORY[0x277D837D0];
  v39[6] = 1701080931;
  v39[7] = 0xE400000000000000;
  v39[8] = [v1 code];
  v39[11] = MEMORY[0x277D83B88];
  v39[12] = 0x7470697263736564;
  v39[13] = 0xEB000000006E6F69;
  v36 = 34;
  v37 = 0xE100000000000000;
  v7 = [v1 localizedDescription];
  v8 = sub_2281392AC();
  v10 = v9;

  MEMORY[0x22AAB1970](v8, v10);

  MEMORY[0x22AAB1970](34, 0xE100000000000000);
  v39[14] = 34;
  v39[15] = 0xE100000000000000;
  v39[17] = v6;
  v39[18] = 0x6F666E4972657375;
  v39[19] = 0xE800000000000000;
  v11 = [v1 userInfo];
  v12 = sub_2281391BC();

  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = sub_228132EF4();
    v16 = MEMORY[0x277D837D0];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v39[22] = 0;
  }

  v39[20] = v14;
  v39[21] = v15;
  v39[23] = v16;
  v39[24] = 0xD000000000000010;
  v39[25] = 0x8000000228149410;
  result = sub_228133308();
  if (v18)
  {
    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    result = 0;
    v19 = 0;
    v39[28] = 0;
  }

  v20 = 0;
  v39[26] = result;
  v39[27] = v18;
  v39[29] = v19;
  v32 = MEMORY[0x277D84F90];
LABEL_8:
  v21 = 5;
  if (v20 > 5)
  {
    v21 = v20;
  }

  v22 = -v21;
  v23 = &v39[6 * v20++];
  while (v22 + v20 != 1)
  {
    sub_228133534(v23, &v36, &qword_27D81F478, &qword_228143080);
    v24 = v36;
    v25 = v37;
    sub_228133534(&v38, &v33, &qword_27D81E830, &unk_22813C630);
    if (v34)
    {
      sub_227FE5EA8(&v33, v35);
      *&v33 = 0;
      *(&v33 + 1) = 0xE000000000000000;
      MEMORY[0x22AAB1970](v24, v25);
      MEMORY[0x22AAB1970](8250, 0xE200000000000000);
      sub_2281398EC();
      v26 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm_14(v35);
      sub_228135900(&v36, &qword_27D81F478, &qword_228143080);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2281338C0(0, *(v32 + 16) + 1, 1, v32);
        v32 = result;
      }

      v28 = *(v32 + 16);
      v27 = *(v32 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_2281338C0((v27 > 1), v28 + 1, 1, v32);
        v32 = result;
      }

      *(v32 + 16) = v28 + 1;
      *(v32 + 16 * v28 + 32) = v26;
      if (v20 == 5)
      {
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F478, &qword_228143080);
        swift_arrayDestroy();
        v36 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
        sub_228059C14();
        v29 = sub_22813925C();
        v31 = v30;

        v36 = 91;
        v37 = 0xE100000000000000;
        MEMORY[0x22AAB1970](v29, v31);

        MEMORY[0x22AAB1970](93, 0xE100000000000000);
        return v36;
      }

      goto LABEL_8;
    }

    sub_228135900(&v33, &qword_27D81E830, &unk_22813C630);
    result = sub_228135900(&v36, &qword_27D81F478, &qword_228143080);
    ++v20;
    v23 += 6;
    if (v20 == 6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228132EF4()
{
  v1 = [v0 userInfo];
  v2 = sub_2281391BC();

  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v38 = v2;
  v39 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
LABEL_11:
      v10 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
      v12 = *v10;
      v11 = v10[1];
      v13 = qword_2813C45E8;

      if (v13 != -1)
      {
        swift_once();
      }

      v6 &= v6 - 1;
      v14 = off_2813C45F0;
      if (*(off_2813C45F0 + 2))
      {
        sub_228139AAC();
        sub_22813923C();
        v15 = sub_228139AEC();
        v16 = -1 << v14[32];
        v17 = v15 & ~v16;
        if ((*&v14[((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v17))
        {
          break;
        }
      }

LABEL_22:
      v21 = v39;
      *&v40[0] = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_228043AD4(0, *(v39 + 16) + 1, 1);
        v21 = *&v40[0];
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_228043AD4((v22 > 1), v23 + 1, 1);
        v21 = *&v40[0];
      }

      *(v21 + 16) = v23 + 1;
      v39 = v21;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v12;
      *(v24 + 40) = v11;
      v2 = v38;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(v14 + 6) + 16 * v17);
      v20 = *v19 == v12 && v19[1] == v11;
      if (v20 || (sub_2281399BC() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*&v14[((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v17) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v2 = v38;
  }

  while (v6);
  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);

      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    v8 = (v8 + 1);
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  *&v44[0] = v39;

  sub_22813461C(v44);

  v8 = *&v44[0];
  v41 = sub_22812ADA8(MEMORY[0x277D84F90]);
  v42 = v25;
  v43 = v26;
  v27 = v8[2];
  if (v27)
  {
    v28 = 0;
    v29 = v8 + 5;
    while (v28 < v8[2])
    {
      if (*(v2 + 16))
      {
        v31 = *(v29 - 1);
        v30 = *v29;

        v32 = sub_22808C964(v31, v30);
        if (v33)
        {
          sub_228029260(*(v2 + 56) + 32 * v32, v40);
          sub_227FE5EA8(v40, v44);
          sub_228029260(v44, v40);
          sub_228106F98(v40, v31, v30);
          __swift_destroy_boxed_opaque_existential_1Tm_14(v44);
        }

        else
        {
        }
      }

      ++v28;
      v29 += 2;
      if (v27 == v28)
      {
        v34 = v42;
        v35 = v43;
        goto LABEL_38;
      }
    }

    goto LABEL_40;
  }

  v34 = v25;
  v35 = v26;
LABEL_38:

  v36 = sub_228135654(v34, v35);

  return v36;
}

uint64_t sub_228133308()
{
  v1 = [v0 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v2 = sub_22813951C();

  v3 = *(v2 + 16);

  if (!v3)
  {
    return 0;
  }

  v4 = [v0 underlyingErrors];
  v5 = sub_22813951C();

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    sub_228043AD4(0, v6, 0);
    v7 = 32;
    do
    {
      v8 = *(v5 + v7);
      swift_getErrorValue();
      v9 = v8;
      v10 = Error.loggingDescription.getter(v21, v22);
      v12 = v11;

      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_228043AD4((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_228059C14();
  v17 = sub_22813925C();
  v19 = v18;

  MEMORY[0x22AAB1970](v17, v19);

  MEMORY[0x22AAB1970](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_228133534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22813359C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  strcpy((inited + 32), "NSDescription");
  *(inited + 16) = xmmword_22813C6B0;
  *(inited + 46) = -4864;
  *(inited + 48) = sub_2281392AC();
  *(inited + 56) = v1;
  *(inited + 64) = sub_2281392AC();
  *(inited + 72) = v2;
  *(inited + 80) = sub_2281392AC();
  *(inited + 88) = v3;
  *(inited + 96) = sub_2281392AC();
  *(inited + 104) = v4;
  v5 = sub_228028A68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_2813C45F0 = v5;
  return result;
}

char *sub_2281336C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E958, &qword_22813C678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2281337BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E568, &qword_22813B108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2281338C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2281339CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB28, &qword_22813DA70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_228133BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F4C0, &qword_2281430D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_228133CE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF78, &unk_22813FCE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228133DEC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F4A8, &qword_2281430B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECD0, &qword_22813E1D8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_4(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECD0, &qword_22813E1D8) - 8);
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

char *sub_228133FDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F4B8, &qword_2281430C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2281340D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB88, &qword_22813DAD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2281341E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_4(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2281342E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F4A0, &qword_2281430B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228134440(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_4(v17);
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

uint64_t sub_22813461C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227FEA614(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_228134688(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_228134688(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22813997C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22813954C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22813497C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_228134780(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228134780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v27 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v37 = sub_22813716C();
    v13 = *(v37 - 8);
    v14 = *(v13 + 56);
    v31 = v13 + 56;
    v32 = v14;
    v15 = v12;
    v16 = (v12 + 16 * a3);
    v17 = a1 - a3;
LABEL_5:
    v29 = v16;
    v30 = a3;
    v18 = (v15 + 16 * a3);
    v19 = *v18;
    v20 = v18[1];
    v28 = v17;
    v21 = v17;
    while (1)
    {
      v22 = *(v16 - 2);
      v23 = *(v16 - 1);
      v35 = v19;
      v36 = v20;
      v33 = v22;
      v34 = v23;
      v32(v11, 1, 1, v37);
      sub_227FDB420();

      v24 = sub_2281397CC();
      sub_228135900(v11, &qword_27D81E6A8, &qword_22813F930);

      if (v24 != -1)
      {
LABEL_4:
        a3 = v30 + 1;
        v16 = v29 + 2;
        v17 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v15)
      {
        break;
      }

      v19 = *v16;
      v20 = v16[1];
      *v16 = *(v16 - 1);
      *(v16 - 1) = v20;
      *(v16 - 2) = v19;
      v16 -= 2;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22813497C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  result = MEMORY[0x28223BE20](v9 - 8);
  v123 = &v110 - v11;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v110 = a4;
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v111 = a3;
    v115 = a1;
    while (1)
    {
      v15 = v13;
      if (v13 + 1 >= v12)
      {
        v29 = v13 + 1;
      }

      else
      {
        v119 = v12;
        v112 = v14;
        v113 = v5;
        v16 = *a3;
        v17 = (*a3 + 16 * (v13 + 1));
        v18 = *v17;
        v19 = v17[1];
        v20 = 16 * v13;
        v21 = (v16 + 16 * v13);
        v22 = *v21;
        v23 = v21[1];
        v126 = v18;
        v127 = v19;
        v124 = v22;
        v125 = v23;
        v24 = sub_22813716C();
        v25 = *(v24 - 8);
        v26 = v123;
        v120 = *(v25 + 56);
        v121 = v24;
        v118 = (v25 + 56);
        v120(v123, 1, 1);
        sub_227FDB420();

        v122 = sub_2281397CC();
        sub_228135900(v26, &qword_27D81E6A8, &qword_22813F930);

        v114 = v13;
        v27 = v13 + 2;
        v28 = v21 + 5;
        while (1)
        {
          v29 = v119;
          if (v119 == v27)
          {
            break;
          }

          v30 = v123;
          v31 = v122 == -1;
          v32 = *v28;
          v33 = *(v28 - 3);
          v34 = *(v28 - 2);
          v126 = *(v28 - 1);
          v127 = v32;
          v124 = v33;
          v125 = v34;
          (v120)(v123, 1, 1, v121);

          v35 = sub_2281397CC();
          sub_228135900(v30, &qword_27D81E6A8, &qword_22813F930);

          ++v27;
          v28 += 2;
          if (((v31 ^ (v35 != -1)) & 1) == 0)
          {
            v29 = v27 - 1;
            break;
          }
        }

        v15 = v114;
        if (v122 == -1)
        {
          a3 = v111;
          if (v29 < v114)
          {
            __break(1u);
LABEL_126:
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
            return result;
          }

          if (v114 < v29)
          {
            v36 = 0;
            v37 = 16 * v29;
            v38 = v114;
            v14 = v112;
            v5 = v113;
            v39 = v115;
            do
            {
              if (v38 != v29 + v36 - 1)
              {
                v44 = *a3;
                if (!*a3)
                {
                  goto LABEL_129;
                }

                v40 = (v44 + v20);
                v41 = v44 + v37;
                v42 = *v40;
                v43 = v40[1];
                *v40 = *(v41 - 16);
                *(v41 - 16) = v42;
                *(v41 - 8) = v43;
              }

              ++v38;
              --v36;
              v37 -= 16;
              v20 += 16;
            }

            while (v38 < v29 + v36);
            a1 = v39;
            goto LABEL_22;
          }

          v5 = v113;
        }

        else
        {
          v5 = v113;
          a3 = v111;
        }

        v14 = v112;
        a1 = v115;
      }

LABEL_22:
      v45 = a3[1];
      if (v29 >= v45)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v29, v15))
      {
        goto LABEL_121;
      }

      if (v29 - v15 >= v110)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v15, v110))
      {
        goto LABEL_122;
      }

      if (v15 + v110 >= v45)
      {
        v46 = a3[1];
      }

      else
      {
        v46 = v15 + v110;
      }

      if (v46 < v15)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v29 == v46)
      {
LABEL_31:
        v13 = v29;
        if (v29 < v15)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v112 = v14;
        v113 = v5;
        v93 = *a3;
        v122 = sub_22813716C();
        v94 = *(v122 - 8);
        v95 = *(v94 + 56);
        v120 = (v94 + 56);
        v121 = v95;
        v96 = (v93 + 16 * v29);
        v114 = v15;
        v97 = v15 - v29;
        v116 = v46;
        do
        {
          v118 = v96;
          v119 = v29;
          v98 = (v93 + 16 * v29);
          v99 = *v98;
          v100 = v98[1];
          v117 = v97;
          do
          {
            v101 = *(v96 - 2);
            v102 = *(v96 - 1);
            v126 = v99;
            v127 = v100;
            v124 = v101;
            v125 = v102;
            v103 = v123;
            v121(v123, 1, 1, v122);
            sub_227FDB420();

            v104 = sub_2281397CC();
            sub_228135900(v103, &qword_27D81E6A8, &qword_22813F930);

            if (v104 != -1)
            {
              break;
            }

            if (!v93)
            {
              goto LABEL_126;
            }

            v99 = *v96;
            v100 = v96[1];
            *v96 = *(v96 - 1);
            *(v96 - 1) = v100;
            *(v96 - 2) = v99;
            v96 -= 2;
          }

          while (!__CFADD__(v97++, 1));
          v29 = v119 + 1;
          v96 = v118 + 2;
          v13 = v116;
          v97 = v117 - 1;
        }

        while (v119 + 1 != v116);
        v14 = v112;
        v5 = v113;
        a3 = v111;
        v15 = v114;
        a1 = v115;
        if (v116 < v114)
        {
          goto LABEL_120;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2281337BC(0, *(v14 + 2) + 1, 1, v14);
        v14 = result;
      }

      v48 = *(v14 + 2);
      v47 = *(v14 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        result = sub_2281337BC((v47 > 1), v48 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 2) = v49;
      v50 = &v14[16 * v48];
      *(v50 + 4) = v15;
      *(v50 + 5) = v13;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_130;
      }

      if (v48)
      {
        while (1)
        {
          a1 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v52 = *(v14 + 4);
            v53 = *(v14 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_51:
            if (v55)
            {
              goto LABEL_109;
            }

            v68 = &v14[16 * v49];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_112;
            }

            v74 = &v14[16 * a1 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_116;
            }

            if (v72 + v77 >= v54)
            {
              if (v54 < v77)
              {
                a1 = v49 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          v78 = &v14[16 * v49];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_65:
          if (v73)
          {
            goto LABEL_111;
          }

          v81 = &v14[16 * a1];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_114;
          }

          if (v84 < v72)
          {
            goto LABEL_3;
          }

LABEL_72:
          v89 = a1 - 1;
          if (a1 - 1 >= v49)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_127;
          }

          v90 = *&v14[16 * v89 + 32];
          v91 = *&v14[16 * a1 + 40];
          sub_228135200((*a3 + 16 * v90), (*a3 + 16 * *&v14[16 * a1 + 32]), (*a3 + 16 * v91), v51);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_227FEAF6C(v14);
          }

          if (v89 >= *(v14 + 2))
          {
            goto LABEL_106;
          }

          v92 = &v14[16 * v89];
          *(v92 + 4) = v90;
          *(v92 + 5) = v91;
          v128 = v14;
          result = sub_227FEAEE0(a1);
          v14 = v128;
          v49 = *(v128 + 2);
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v56 = &v14[16 * v49 + 32];
        v57 = *(v56 - 64);
        v58 = *(v56 - 56);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_107;
        }

        v61 = *(v56 - 48);
        v60 = *(v56 - 40);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_108;
        }

        v63 = &v14[16 * v49];
        v65 = *v63;
        v64 = *(v63 + 1);
        v62 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v62)
        {
          goto LABEL_110;
        }

        v62 = __OFADD__(v54, v66);
        v67 = v54 + v66;
        if (v62)
        {
          goto LABEL_113;
        }

        if (v67 >= v59)
        {
          v85 = &v14[16 * a1 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v62 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v54 < v88)
          {
            a1 = v49 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }

LABEL_3:
      v12 = a3[1];
      a1 = v115;
      if (v13 >= v12)
      {
        goto LABEL_93;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_93:
  a1 = *a1;
  if (!a1)
  {
    goto LABEL_131;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_124:
    result = sub_227FEAF6C(v14);
    v14 = result;
  }

  v128 = v14;
  v106 = *(v14 + 2);
  if (v106 >= 2)
  {
    while (*a3)
    {
      v107 = *&v14[16 * v106];
      v108 = *&v14[16 * v106 + 24];
      sub_228135200((*a3 + 16 * v107), (*a3 + 16 * *&v14[16 * v106 + 16]), (*a3 + 16 * v108), a1);
      if (v5)
      {
      }

      if (v108 < v107)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_227FEAF6C(v14);
      }

      if (v106 - 2 >= *(v14 + 2))
      {
        goto LABEL_119;
      }

      v109 = &v14[16 * v106];
      *v109 = v107;
      *(v109 + 1) = v108;
      v128 = v14;
      result = sub_227FEAEE0(v106 - 1);
      v14 = v128;
      v106 = *(v128 + 2);
      if (v106 <= 1)
      {
      }
    }

    goto LABEL_128;
  }
}

uint64_t sub_228135200(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v40 - v9);
  v11 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 4;
  v13 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 4;
  if (v12 >= v13 >> 4)
  {
    v16 = a4;
    if (a4 != a2 || &a2[16 * v14] <= a4)
    {
      memmove(a4, a2, 16 * v14);
    }

    v19 = &a4[16 * v14];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v51 = v10;
      v45 = sub_22813716C();
      v26 = *(v45 - 8);
      v27 = *(v26 + 56);
      v43 = v26 + 56;
      v44 = v27;
      v41 = a1;
      v46 = v16;
      do
      {
        v42 = a2 - 16;
        v28 = a3 - 16;
        v29 = v19;
        while (1)
        {
          a3 = v28;
          v30 = v28 + 16;
          v31 = *(v19 - 2);
          v32 = *(v19 - 1);
          v19 -= 16;
          v33 = *(a2 - 2);
          v34 = *(a2 - 1);
          v35 = a2;
          v49 = v31;
          v50 = v32;
          v47 = v33;
          v48 = v34;
          v36 = v51;
          (v44)(v51, 1, 1, v45);
          sub_227FDB420();

          v37 = sub_2281397CC();
          sub_228135900(v36, &qword_27D81E6A8, &qword_22813F930);

          if (v37 == -1)
          {
            break;
          }

          if (v30 != v29)
          {
            *a3 = *v19;
          }

          v28 = a3 - 16;
          v29 = v19;
          v16 = v46;
          a2 = v35;
          if (v19 <= v46)
          {
            goto LABEL_39;
          }
        }

        v38 = v42;
        if (v30 != v35)
        {
          *a3 = *v42;
        }

        v16 = v46;
        v19 = v29;
        if (v29 <= v46)
        {
          break;
        }

        a2 = v38;
      }

      while (v38 > v41);
      a2 = v38;
    }
  }

  else
  {
    if (a4 != a1 || &a1[16 * v12] <= a4)
    {
      memmove(a4, a1, 16 * v12);
    }

    v15 = &a4[16 * v12];
    v16 = a4;
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v44 = a3;
      v17 = sub_22813716C();
      v18 = *(v17 - 8);
      v51 = *(v18 + 56);
      v45 = v18 + 56;
      v19 = v15;
      while (1)
      {
        v20 = *(a2 + 1);
        v21 = *v16;
        v22 = *(v16 + 1);
        v49 = *a2;
        v50 = v20;
        v47 = v21;
        v48 = v22;
        v51(v10, 1, 1, v17);
        sub_227FDB420();

        v23 = sub_2281397CC();
        sub_228135900(v10, &qword_27D81E6A8, &qword_22813F930);

        if (v23 != -1)
        {
          break;
        }

        v24 = a2;
        v25 = a1 == a2;
        a2 += 16;
        if (!v25)
        {
          goto LABEL_14;
        }

LABEL_15:
        a1 += 16;
        if (v16 >= v19 || a2 >= v44)
        {
          a2 = a1;
          goto LABEL_39;
        }
      }

      v24 = v16;
      v25 = a1 == v16;
      v16 += 16;
      if (v25)
      {
        goto LABEL_15;
      }

LABEL_14:
      *a1 = *v24;
      goto LABEL_15;
    }

    a2 = a1;
    v19 = v15;
  }

LABEL_39:
  if (a2 != v16 || a2 >= &v16[(v19 - v16 + (v19 - v16 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(a2, v16, 16 * ((v19 - v16) / 16));
  }

  return 1;
}

uint64_t sub_228135654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 6109787;
  }

  v26 = 91;
  v27 = 0xE100000000000000;
  v16 = a1 + 32;
  v15 = a2 + 32;

  v4 = 0;
  v5 = 1;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D84F70] + 8;
  while (1)
  {
    if (v4 >= v2)
    {
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      goto LABEL_9;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_16;
    }

    v11 = (v16 + 16 * v4);
    v12 = v11[1];
    *&v19 = *v11;
    *(&v19 + 1) = v12;
    sub_228029260(v15 + 32 * v4++, v20);
    v18[0] = v20[0];
    v18[1] = v20[1];
    v21 = v19;
    sub_227FE5EA8(v18, &v22);

LABEL_9:
    v24 = v21;
    v25[0] = v22;
    v25[1] = v23;
    v13 = *(&v21 + 1);
    if (!*(&v21 + 1))
    {

      MEMORY[0x22AAB1970](93, 0xE100000000000000);
      return v26;
    }

    v14 = v24;
    sub_227FE5EA8(v25, &v21);
    if ((v5 & 1) == 0)
    {
      MEMORY[0x22AAB1970](8236, 0xE200000000000000);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA8, &qword_22813DAF8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22813A4B0;
    *(v8 + 56) = v6;
    *(v8 + 32) = v14;
    *(v8 + 40) = v13;

    sub_22813981C();

    MEMORY[0x22AAB1970](8250, 0xE200000000000000);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22813A4B0;
    *(v9 + 56) = v7;
    v10 = swift_allocObject();
    *(v9 + 32) = v10;
    sub_228029260(&v21, v10 + 16);
    sub_22813981C();

    result = __swift_destroy_boxed_opaque_existential_1Tm_14(&v21);
    v5 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_228135900(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228135960()
{
  v0 = sub_228028A68(&unk_283B5B560);
  result = swift_arrayDestroy();
  qword_2813C6C68 = v0;
  return result;
}

uint64_t sub_2281359AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PriorityModelSession.Input(0);
  v7 = (a1 + *(v6 + 28));
  v8 = *v7;
  v9 = v7[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    MEMORY[0x22AAB1970]();
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x656C746974627553, 0xEA0000000000203ALL);
  }

  if (a3)
  {
    MEMORY[0x22AAB1970](a2, a3);
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x6D6954746E657645, 0xEB00000000203A65);
  }

  MEMORY[0x22AAB1970](*(a1 + *(v6 + 40)), *(a1 + *(v6 + 40) + 8));
  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  return 0xA5D6C69616D455BLL;
}

uint64_t sub_228135B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2813C6C60 != -1)
  {
    swift_once();
  }

  v6 = qword_2813C6C68;
  v7 = type metadata accessor for PriorityModelSession.Input(0);
  v8 = sub_2280EAEE0(*(a1 + v7[11]), *(a1 + v7[11] + 8), v6);
  v9 = (a1 + v7[8]);
  v10 = *v9;
  v11 = v9[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 && ((*(a1 + v7[12]) | v8) & 1) == 0)
  {
    MEMORY[0x22AAB1970]();
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x203A656C746954, 0xE700000000000000);
  }

  v13 = (a1 + v7[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && (*(a1 + v7[12]) & 1) == 0)
  {
    MEMORY[0x22AAB1970]();
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x656C746974627553, 0xEA0000000000203ALL);
  }

  if (*(a1 + v7[12]))
  {
    v17 = "CommunicationFlag: False\n";
  }

  else
  {
    v17 = "underlyingErrors";
  }

  if (*(a1 + v7[12]))
  {
    v18 = 0xD000000000000018;
  }

  else
  {
    v18 = 0xD000000000000019;
  }

  MEMORY[0x22AAB1970](v18, v17 | 0x8000000000000000);
  if (a3)
  {
    MEMORY[0x22AAB1970](a2, a3);
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x6D6954746E657645, 0xEB00000000203A65);
  }

  MEMORY[0x22AAB1970](*(a1 + v7[10]), *(a1 + v7[10] + 8));
  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  return 0x63696669746F4E5BLL;
}

unint64_t sub_228135DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    MEMORY[0x22AAB1970](a2, a3);
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x6D6954746E657645, 0xEB00000000203A65);
  }

  v4 = type metadata accessor for PriorityModelSession.Input(0);
  MEMORY[0x22AAB1970](*(a1 + *(v4 + 40)), *(a1 + *(v4 + 40) + 8));
  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  return 0xD000000000000023;
}

uint64_t TwoPassInferenceConfiguration.init()()
{
  v1 = (v0 + qword_2813C6378);
  *v1 = 0xD000000000000016;
  v1[1] = 0x8000000228149470;
  v2 = (v0 + qword_2813C6380);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C6370);
  *v3 = 0x73656C755241544FLL;
  v3[1] = 0xE800000000000000;
  v4 = MEMORY[0x277D84F90];
  *(v0 + qword_2813C6368) = MEMORY[0x277D84F90];
  v5 = qword_2813C6360;
  *(v0 + v5) = sub_227FE3D98(v4);
  v6 = *v1;
  v7 = v1[1];
  v8 = *v2;
  v9 = v2[1];
  v10 = *v3;
  v11 = v3[1];

  v12 = sub_227FDC9A8(v6, v7, v8, v9, v10, v11);
  v13 = v12 + *(*v12 + 96);
  swift_beginAccess();
  if (*(*(v13 + 8) + 16))
  {
    sub_228136118();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = 26;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v15 = sub_227FF96D4(0, 0xD00000000000007CLL, 0x8000000228149490, 35, sub_2281369AC, v14);
    sub_227FDB3CC();
    swift_allocError();
    *v16 = 26;
    *(v16 + 8) = v15;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_228136118()
{
  v1 = v0;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0 + *(*v0 + 96);
  swift_beginAccess();
  v7 = *(v6 + 8);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_228043BDC(0, v8, 0);
    v9 = v51;
    v10 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_228136B04(v10, v5);
      v12 = *v5;

      sub_228136B68(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
      v51 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_228043BDC((v13 > 1), v14 + 1, 1);
        v9 = v51;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  v15 = qword_2813C6368;
  *(v1 + qword_2813C6368) = v9;

  v16 = *(v1 + v15);
  v17 = *(v16 + 16);
  v49 = qword_2813C6360;
  v46 = v16;

  v45 = v17;
  if (!v17)
  {
  }

  v18 = 0;
  v44 = v46 + 32;
  v19 = v49;
  while (1)
  {
    if (v18 >= *(v46 + 16))
    {
      goto LABEL_30;
    }

    v48 = *(*(v44 + 8 * v18) + 16);
    if (v48)
    {
      break;
    }

LABEL_9:
    if (++v18 == v45)
    {
    }
  }

  v21 = 0;
  v22 = (v20 + 40);
  v47 = v20;
  while (v21 < *(v20 + 16))
  {
    v26 = *(v22 - 1);
    v25 = *v22;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v1 + v19);
    v28 = v50;
    v29 = v1;
    *(v1 + v19) = 0x8000000000000000;
    v30 = sub_22808C964(v26, v25);
    v32 = v28[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_28;
    }

    v36 = v31;
    if (v28[3] < v35)
    {
      sub_22801A38C(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_22808C964(v26, v25);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_31;
      }

LABEL_21:
      if (v36)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v41 = v30;
    sub_22801D5F8();
    v30 = v41;
    if (v36)
    {
LABEL_13:
      v23 = v30;

      v24 = v50;
      *(v50[7] + 8 * v23) = v18;
      goto LABEL_14;
    }

LABEL_22:
    v24 = v50;
    v50[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v24[6] + 16 * v30);
    *v38 = v26;
    v38[1] = v25;
    *(v24[7] + 8 * v30) = v18;
    v39 = v24[2];
    v34 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v34)
    {
      goto LABEL_29;
    }

    v24[2] = v40;
LABEL_14:
    ++v21;
    v1 = v29;
    *(v29 + v49) = v24;
    swift_endAccess();
    v22 += 2;
    v20 = v47;
    if (v48 == v21)
    {

      goto LABEL_9;
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
  result = sub_2281399EC();
  __break(1u);
  return result;
}

uint64_t TwoPassInferenceConfiguration.init(assetManager:)(uint64_t a1)
{
  v3 = (v1 + qword_2813C6378);
  *v3 = 0xD000000000000016;
  v3[1] = 0x8000000228149470;
  v4 = (v1 + qword_2813C6380);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v1 + qword_2813C6370);
  *v5 = 0x73656C755241544FLL;
  v5[1] = 0xE800000000000000;
  v6 = MEMORY[0x277D84F90];
  *(v1 + qword_2813C6368) = MEMORY[0x277D84F90];
  v7 = qword_2813C6360;
  *(v1 + v7) = sub_227FE3D98(v6);
  v8 = *v3;
  v9 = v3[1];
  v10 = *v4;
  v11 = v4[1];
  v12 = *v5;
  v13 = v5[1];

  v14 = sub_227FE01EC(a1, 1, v8, v9, v10, v11, v12, v13);
  v15 = v14 + *(*v14 + 96);
  swift_beginAccess();
  if (*(*(v15 + 8) + 16))
  {
    sub_228136118();
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = 26;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    v17 = sub_227FF96D4(0, 0xD00000000000007CLL, 0x8000000228149490, 50, sub_228136BC8, v16);
    sub_227FDB3CC();
    swift_allocError();
    *v18 = 26;
    *(v18 + 8) = v17;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_228136754()
{
}

uint64_t TwoPassInferenceConfiguration.deinit(__n128 a1)
{
  sub_228136B68(v1 + *(*v1 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  return v1;
}

uint64_t TwoPassInferenceConfiguration.__deallocating_deinit(__n128 a1)
{
  sub_228136B68(v1 + *(*v1 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_18()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for TwoPassInferenceConfiguration(uint64_t a1)
{
  result = qword_2813C6350;
  if (!qword_2813C6350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228136B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228136B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}