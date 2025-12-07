uint64_t closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[217] = a8;
  v8[216] = a7;
  v8[215] = a6;
  v8[214] = a5;
  v8[213] = a4;
  v8[212] = a1;
  v8[218] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[219] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1704);
  swift_beginAccess();
  v4._countAndFlagsBits = 0x6341746E65696C43;
  v4._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v4);
  swift_endAccess();
  v6 = type metadata accessor for MLS.IncomingFailureToDecrypt(0, *(v1 + 80), *(v1 + 96), v5);
  MLS.IncomingFailureToDecrypt.allMemberIncomingFailureToDecrypt.getter(v6, v0 + 1496);
  v7 = v2[17];
  v8 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v7);
  v9 = *(v0 + 1512);
  *(v0 + 1560) = *(v0 + 1496);
  *(v0 + 1576) = v9;
  *(v0 + 1592) = *(v0 + 1528);
  *(v0 + 1601) = *(v0 + 1537);
  swift_beginAccess();
  v10 = *(v3 + 16);
  v11 = *(v3 + 48);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 48) = v11;
  *(v0 + 16) = v10;
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  v14 = *(v3 + 112);
  *(v0 + 96) = *(v3 + 96);
  *(v0 + 112) = v14;
  *(v0 + 64) = v12;
  *(v0 + 80) = v13;
  v15 = *(v3 + 128);
  v16 = *(v3 + 144);
  v17 = *(v3 + 160);
  *(v0 + 176) = *(v3 + 176);
  *(v0 + 144) = v16;
  *(v0 + 160) = v17;
  *(v0 + 128) = v15;
  v18 = *(v3 + 16);
  v19 = *(v3 + 32);
  *(v0 + 216) = *(v3 + 48);
  *(v0 + 200) = v19;
  *(v0 + 184) = v18;
  v20 = *(v3 + 64);
  v21 = *(v3 + 80);
  v22 = *(v3 + 112);
  *(v0 + 264) = *(v3 + 96);
  *(v0 + 280) = v22;
  *(v0 + 248) = v21;
  *(v0 + 232) = v20;
  v23 = *(v3 + 128);
  v24 = *(v3 + 144);
  v25 = *(v3 + 160);
  *(v0 + 344) = *(v3 + 176);
  *(v0 + 312) = v24;
  *(v0 + 328) = v25;
  *(v0 + 296) = v23;
  v26 = *(v8 + 136);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v31 = (v26 + *v26);
  v27 = swift_task_alloc();
  *(v0 + 1760) = v27;
  *v27 = v0;
  v27[1] = closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  v28 = *(v0 + 1736);
  v29 = *(v0 + 1728);

  return v31(v0 + 856, v0 + 1560, v29, v28, v0 + 184, v7, v8);
}

{
  v2 = *v1;
  v3 = *v1 + 184;
  *(*v1 + 1768) = v0;

  if (v0)
  {
    v4 = *(v2 + 1752);
    v6 = *(v3 + 16);
    v5 = *(v3 + 32);
    *(v2 + 520) = *v3;
    *(v2 + 536) = v6;
    *(v2 + 552) = v5;
    v7 = *(v3 + 96);
    v9 = *(v3 + 48);
    v8 = *(v3 + 64);
    *(v2 + 600) = *(v3 + 80);
    *(v2 + 616) = v7;
    *(v2 + 568) = v9;
    *(v2 + 584) = v8;
    v11 = *(v3 + 128);
    v10 = *(v3 + 144);
    v12 = *(v3 + 112);
    *(v2 + 680) = *(v3 + 160);
    *(v2 + 648) = v11;
    *(v2 + 664) = v10;
    *(v2 + 632) = v12;
    outlined destroy of NSObject?(v2 + 520, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v13 = closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v4 = *(v2 + 1752);
    v15 = *(v3 + 16);
    v14 = *(v3 + 32);
    *(v2 + 688) = *v3;
    *(v2 + 704) = v15;
    *(v2 + 720) = v14;
    v16 = *(v3 + 96);
    v18 = *(v3 + 48);
    v17 = *(v3 + 64);
    *(v2 + 768) = *(v3 + 80);
    *(v2 + 784) = v16;
    *(v2 + 736) = v18;
    *(v2 + 752) = v17;
    v20 = *(v3 + 128);
    v19 = *(v3 + 144);
    v21 = *(v3 + 112);
    *(v2 + 848) = *(v3 + 160);
    *(v2 + 816) = v20;
    *(v2 + 832) = v19;
    *(v2 + 800) = v21;
    outlined destroy of NSObject?(v2 + 688, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v2 + 1496, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
    v13 = closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v13, v4, 0);
}

{
  v36 = v0;
  v1 = (v0 + 856);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1704);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v35[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v35);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "processIncomingFTD finished { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v10 = *(v0 + 1768);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1696);
  v13._countAndFlagsBits = 0x6E61487473726946;
  v13._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v13);
  v15 = *(v0 + 920);
  v14 = *(v0 + 936);
  v16 = *(v0 + 904);
  *(v0 + 1048) = v15;
  *(v0 + 1064) = v14;
  v17 = *(v0 + 936);
  v19 = *(v0 + 952);
  v18 = *(v0 + 968);
  *(v0 + 1080) = v19;
  *(v0 + 1096) = v18;
  v20 = *(v0 + 872);
  *(v0 + 984) = *v1;
  *(v0 + 1000) = v20;
  v21 = *(v0 + 904);
  v23 = *v1;
  v22 = *(v0 + 872);
  v24 = *(v0 + 888);
  *(v0 + 1016) = v24;
  *(v0 + 1032) = v21;
  v35[4] = v15;
  v35[5] = v17;
  v25 = *(v0 + 968);
  v35[6] = v19;
  v35[7] = v25;
  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v24;
  v35[3] = v16;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 984, v0 + 1112, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  MLS.IncomingFailureToDecryptProcessedContext.init(dataContext:)(v35, *(v11 + 88), *(v11 + 104), v12);
  v26 = *(v0 + 936);
  if (v10)
  {
    *(v0 + 1304) = *(v0 + 920);
    *(v0 + 1320) = v26;
    v27 = *(v0 + 968);
    *(v0 + 1336) = *(v0 + 952);
    *(v0 + 1352) = v27;
    v28 = *(v0 + 872);
    *(v0 + 1240) = *v1;
    *(v0 + 1256) = v28;
    v29 = *(v0 + 904);
    *(v0 + 1272) = *(v0 + 888);
    *(v0 + 1288) = v29;
    outlined destroy of NSObject?(v0 + 1240, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 1432) = *(v0 + 920);
    *(v0 + 1448) = v26;
    v31 = *(v0 + 968);
    *(v0 + 1464) = *(v0 + 952);
    *(v0 + 1480) = v31;
    v32 = *(v0 + 872);
    *(v0 + 1368) = *v1;
    *(v0 + 1384) = v32;
    v33 = *(v0 + 904);
    *(v0 + 1400) = *(v0 + 888);
    *(v0 + 1416) = v33;
    outlined destroy of NSObject?(v0 + 1368, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  }

  v30 = *(v0 + 8);

  return v30();
}

{
  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Client.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 200) = a4;
  *(v6 + 208) = v5;
  *(v6 + 184) = a1;
  *(v6 + 192) = a3;
  *(v6 + 216) = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v6 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  *(v6 + 232) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v6 + 240) = v9;
  *(v6 + 248) = *(v9 - 8);
  *(v6 + 256) = swift_task_alloc();
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 264) = *a5;
  *(v6 + 280) = *(a5 + 16);

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(errorMessage:withGroup:context:), v5, 0);
}

uint64_t MLS.Client.processIncoming(errorMessage:withGroup:context:)()
{
  v61 = v0;
  v1 = *(v0 + 272);
  v3 = swift_allocObject();
  *(v0 + 288) = v3;
  if (v1)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 216);
    v60[0] = *(v0 + 264);
    v60[1] = v1;
    v60[2] = v4;
    type metadata accessor for MLS.IncomingErrorMessageContext(0, *(v5 + 88), *(v5 + 104), v2);
    MLS.IncomingErrorMessageContext.dataContext.getter(&v57);
    v12 = *(&v57 + 1);
    v11 = v57;
    v13 = v58;
  }

  else
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 240);
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v12 = v10;
    (*(v8 + 8))(v7, v9);
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v14 = *(v0 + 216);
  v3[2] = v11;
  v3[3] = v12;
  v3[4] = v13;
  v15 = type metadata accessor for MLS.IncomingErrorMessage(0, *(v14 + 80), *(v14 + 96), v6);
  v16 = *(v15 - 8);
  v55 = *(v16 + 16);
  v55(v0 + 56, v0 + 16, v15);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v56 = v15;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v60[0] = v20;
    *v19 = 136315394;
    v21 = *(v0 + 32);
    v57 = *(v0 + 16);
    v58 = v21;
    v59 = *(v0 + 48);
    v22 = MLS.IncomingErrorMessage.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v60);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    swift_beginAccess();
    v26 = v3[2];
    v27 = v3[3];

    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v57 = 0xD000000000000028;
    *(&v57 + 1) = 0x80000002651E8A20;
    MEMORY[0x2667545A0](v26, v27);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), v60);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_264F1F000, v17, v18, "processIncoming errorMessage called { message: %s, context: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v0 + 16, v15);
  }

  v29 = *(v0 + 232);
  v54 = *(v0 + 224);
  swift_beginAccess();
  Date.init()();
  v30 = type metadata accessor for MetricCollector.Event(0);
  v31 = *(v30 + 20);
  v32 = type metadata accessor for Date();
  v33 = *(*(v32 - 8) + 56);
  v33(v29 + v31, 1, 1, v32);
  v34 = *(*(v30 - 8) + 56);
  v34(v29, 0, 1, v30);
  specialized Dictionary.subscript.setter(v29, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v33(v29 + *(v30 + 20), 1, 1, v32);
  v34(v29, 0, 1, v30);
  specialized Dictionary.subscript.setter(v29, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v33(v29 + *(v30 + 20), 1, 1, v32);
  v34(v29, 0, 1, v30);
  specialized Dictionary.subscript.setter(v29, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  v55(v0 + 96, v0 + 16, v56);
  v36 = one-time initialization token for shared;

  if (v36 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 216);
  v37 = *(v0 + 224);
  v40 = *(v0 + 200);
  v39 = *(v0 + 208);
  v41 = *(v0 + 192);
  v42 = static MLSActor.shared;
  v43 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v44 = swift_allocObject();
  v45 = *(v0 + 32);
  *(v44 + 40) = *(v0 + 16);
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  *(v44 + 32) = v3;
  *(v44 + 56) = v45;
  *(v44 + 72) = *(v0 + 48);
  *(v44 + 80) = v39;
  *(v44 + 88) = v41;
  *(v44 + 96) = v40;
  v47 = type metadata accessor for MLS.IncomingErrorMessageProcessedContext(0, *(v38 + 88), *(v38 + 104), v46);

  v48 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v37, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:), v44, v47);
  *(v0 + 296) = v48;
  v49 = swift_task_alloc();
  *(v0 + 304) = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v49 = v0;
  v49[1] = MLS.Client.processIncoming(errorMessage:withGroup:context:);
  v51 = *(v0 + 184);
  v52 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v51, v48, v47, v50, v52);
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = MLS.Client.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v4 = MLS.Client.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a1;
  v8[23] = a4;
  v8[28] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[29] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:)()
{
  v27 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  swift_beginAccess();
  v4._countAndFlagsBits = 0x6341746E65696C43;
  v4._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v4);
  swift_endAccess();
  type metadata accessor for MLS.IncomingErrorMessage(0, *(v1 + 80), *(v1 + 96), v5);
  MLS.IncomingErrorMessage.allMemberIncomingErrorMessage.getter(&v22);
  v6 = v22;
  v7 = v23;
  v8 = v24;
  v9 = v25;
  *(v0 + 240) = v23;
  *(v0 + 248) = v9;
  v10 = v26;
  v11 = v2[17];
  v12 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v11);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 48) = v10;
  swift_beginAccess();
  v14 = v3[2];
  v13 = v3[3];
  v15 = v3[4];
  *(v0 + 128) = v14;
  *(v0 + 136) = v13;
  *(v0 + 144) = v15;
  v16 = *(v12 + 144);

  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *v17 = v0;
  v17[1] = closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:);
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);

  return v21(v0 + 80, v0 + 16, v18, v19, v0 + 128, v11, v12);
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);

    v4 = closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 232);

    v4 = closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[23];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "processIncoming errorMessage finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = v0[28];
  v10 = v0[22];
  v11._countAndFlagsBits = 0x6E61487473726946;
  v11._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v11);
  v12 = v0[11];
  v13 = v0[12];
  v18[0] = v0[10];
  v18[1] = v12;
  v18[2] = v13;
  outlined copy of Data?(v18[0], v12);
  v14 = *(v9 + 88);
  v15 = *(v9 + 104);

  MLS.IncomingErrorMessageProcessedContext.init(dataContext:)(v18, v14, v15, v10);
  outlined consume of Data?(v0[10], v0[11]);

  v16 = v0[1];

  return v16();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Client.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v7[26] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[27] = v9;
  v7[28] = *(v9 - 8);
  v7[29] = swift_task_alloc();
  v10 = *(v8 + 88);
  v7[30] = v10;
  v11 = *(v8 + 104);
  v7[31] = v11;
  v7[32] = type metadata accessor for MLS.IncomingGroupNameContext(255, v10, v11, v12);
  v13 = type metadata accessor for Optional();
  v7[33] = v13;
  v7[34] = *(v13 - 8);
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(groupName:forGroup:context:), v6, 0);
}

uint64_t MLS.Client.processIncoming(groupName:forGroup:context:)()
{
  v64 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 184);
  v6 = swift_allocObject();
  *(v0 + 288) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v59 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.IncomingGroupNameContext.dataContext.getter(*(v0 + 256), v61);
    v11 = v61[0];
    v13 = v61[1];
    v59 = v62;
    v14 = v63;
    (*(v7 + 8))(*(v0 + 280), *(v0 + 256));
  }

  v16 = *(v0 + 152);
  v15 = *(v0 + 160);
  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v59;
  *(v6 + 48) = v14;
  outlined copy of Data._Representation(v16, v15);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v16, v15);

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v61[0] = v20;
    *v19 = 136315394;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v61);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    swift_beginAccess();
    v24 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v24;
    *(v0 + 48) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v25 = specialized MLS.IncomingGroupNameContext.description.getter();
    v27 = v26;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v61);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_264F1F000, v17, v18, "processIncoming groupName called { groupName: %s, context: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v29 = *(v0 + 208);
  v56 = *(v0 + 160);
  v54 = *(v0 + 200);
  v55 = *(v0 + 152);
  swift_beginAccess();
  Date.init()();
  v30 = type metadata accessor for MetricCollector.Event(0);
  v31 = *(v30 + 20);
  v32 = type metadata accessor for Date();
  v33 = *(*(v32 - 8) + 56);
  v33(v29 + v31, 1, 1, v32);
  v34 = *(*(v30 - 8) + 56);
  v34(v29, 0, 1, v30);
  specialized Dictionary.subscript.setter(v29, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v33(v29 + *(v30 + 20), 1, 1, v32);
  v34(v29, 0, 1, v30);
  specialized Dictionary.subscript.setter(v29, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v33(v29 + *(v30 + 20), 1, 1, v32);
  v34(v29, 0, 1, v30);
  specialized Dictionary.subscript.setter(v29, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  outlined copy of Data._Representation(v55, v56);
  v36 = one-time initialization token for shared;

  v58 = v6;
  if (v36 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 240);
  v57 = *(v0 + 248);
  v38 = *(v0 + 192);
  v60 = *(v0 + 200);
  v39 = *(v0 + 168);
  v40 = *(v0 + 176);
  v41 = *(v0 + 152);
  v42 = *(v0 + 160);
  v43 = static MLSActor.shared;
  v44 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = v44;
  v45[4] = v58;
  v45[5] = v38;
  v45[6] = v41;
  v45[7] = v42;
  v45[8] = v39;
  v45[9] = v40;
  v47 = type metadata accessor for MLS.IncomingGroupNameProcessedContext(0, v37, v57, v46);

  v48 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v60, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:), v45, v47);
  *(v0 + 296) = v48;
  v49 = swift_task_alloc();
  *(v0 + 304) = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v49 = v0;
  v49[1] = MLS.Client.processIncoming(groupName:forGroup:context:);
  v51 = *(v0 + 144);
  v52 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v51, v48, v47, v50, v52);
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = MLS.Client.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = MLS.Client.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[102] = v12;
  v8[101] = a8;
  v8[100] = a7;
  v8[99] = a6;
  v8[98] = a5;
  v8[97] = a4;
  v8[96] = a1;
  v8[103] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[104] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:)()
{
  v1 = v0[98];
  v2 = v0[97];
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v0[82] = v7;
  v0[83] = v6;
  v0[84] = v8;
  v0[85] = v9;
  v0[86] = v10;
  v11 = *(v5 + 152);

  outlined copy of Data?(v8, v9);

  v18 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[105] = v12;
  *v12 = v0;
  v12[1] = closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:);
  v13 = v0[102];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];

  return (v18)(v0 + 2, v16, v15, v14, v13, v0 + 82, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 848) = v0;

  if (v0)
  {
    v3 = v2[104];
    v4 = v2[84];
    v5 = v2[85];

    outlined consume of Data?(v4, v5);

    v6 = closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v3 = v2[104];
    v7 = v2[84];
    v8 = v2[85];

    outlined consume of Data?(v7, v8);

    v6 = closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v3, 0);
}

{
  v35 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 776);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v34[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v34);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "processIncoming groupName finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = *(v0 + 848);
  v10 = *(v0 + 824);
  v11 = *(v0 + 768);
  v12._countAndFlagsBits = 0x6E61487473726946;
  v12._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v12);
  v14 = *(v0 + 80);
  v13 = *(v0 + 96);
  v15 = *(v0 + 64);
  *(v0 + 208) = v14;
  *(v0 + 224) = v13;
  v16 = *(v0 + 96);
  v18 = *(v0 + 112);
  v17 = *(v0 + 128);
  *(v0 + 240) = v18;
  *(v0 + 256) = v17;
  v19 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v19;
  v20 = *(v0 + 64);
  v22 = *(v0 + 16);
  v21 = *(v0 + 32);
  v23 = *(v0 + 48);
  *(v0 + 176) = v23;
  *(v0 + 192) = v20;
  v34[4] = v14;
  v34[5] = v16;
  v24 = *(v0 + 128);
  v34[6] = v18;
  v34[7] = v24;
  v34[0] = v22;
  v34[1] = v21;
  v34[2] = v23;
  v34[3] = v15;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 272, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  MLS.IncomingGroupNameProcessedContext.init(dataContext:)(v34, *(v10 + 88), *(v10 + 104), v11);
  v25 = *(v0 + 96);
  if (v9)
  {
    *(v0 + 464) = *(v0 + 80);
    *(v0 + 480) = v25;
    v26 = *(v0 + 128);
    *(v0 + 496) = *(v0 + 112);
    *(v0 + 512) = v26;
    v27 = *(v0 + 32);
    *(v0 + 400) = *(v0 + 16);
    *(v0 + 416) = v27;
    v28 = *(v0 + 64);
    *(v0 + 432) = *(v0 + 48);
    *(v0 + 448) = v28;
    outlined destroy of NSObject?(v0 + 400, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 592) = *(v0 + 80);
    *(v0 + 608) = v25;
    v30 = *(v0 + 128);
    *(v0 + 624) = *(v0 + 112);
    *(v0 + 640) = v30;
    v31 = *(v0 + 32);
    *(v0 + 528) = *(v0 + 16);
    *(v0 + 544) = v31;
    v32 = *(v0 + 64);
    *(v0 + 560) = *(v0 + 48);
    *(v0 + 576) = v32;
    outlined destroy of NSObject?(v0 + 528, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = *(v6 + 88);
  v5[28] = v8;
  v9 = *(v6 + 104);
  v5[29] = v9;
  v5[30] = type metadata accessor for MLS.DowngradeContext(255, v8, v9, v10);
  v11 = type metadata accessor for Optional();
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.downgrade(group:context:), v4, 0);
}

uint64_t MLS.Client.downgrade(group:context:)()
{
  v57 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 168);
  v6 = swift_allocObject();
  *(v0 + 272) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v52 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.DowngradeContext.dataContext.getter(*(v0 + 240), v54);
    v11 = v54[0];
    v13 = v54[1];
    v52 = v55;
    v14 = v56;
    (*(v7 + 8))(*(v0 + 264), *(v0 + 240));
  }

  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v52;
  *(v6 + 48) = v14;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v54[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v54);
    *(v19 + 12) = 2080;
    swift_beginAccess();
    v21 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v21;
    *(v0 + 48) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
    v22 = specialized MLS.DowngradeContext.description.getter();
    v24 = v23;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v54);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_264F1F000, v15, v16, "downgrade called { group: %s, context: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v26 = *(v0 + 192);
  v51 = *(v0 + 184);
  swift_beginAccess();
  Date.init()();
  v27 = type metadata accessor for MetricCollector.Event(0);
  v28 = *(v27 + 20);
  v29 = type metadata accessor for Date();
  v30 = *(*(v29 - 8) + 56);
  v30(v26 + v28, 1, 1, v29);
  v31 = *(*(v27 - 8) + 56);
  v31(v26, 0, 1, v27);
  specialized Dictionary.subscript.setter(v26, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v30(v26 + *(v27 + 20), 1, 1, v29);
  v31(v26, 0, 1, v27);
  specialized Dictionary.subscript.setter(v26, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v30(v26 + *(v27 + 20), 1, 1, v29);
  v31(v26, 0, 1, v27);
  specialized Dictionary.subscript.setter(v26, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
  v33 = one-time initialization token for shared;

  v34 = v6;
  if (v33 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v37 = *(v0 + 176);
  v53 = *(v0 + 184);
  v38 = *(v0 + 152);
  v39 = *(v0 + 160);
  v40 = static MLSActor.shared;
  v41 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v42 = swift_allocObject();
  v42[2] = v40;
  v42[3] = v41;
  v42[4] = v34;
  v42[5] = v37;
  v42[6] = v38;
  v42[7] = v39;
  v44 = type metadata accessor for MLS.DowngradeProcessedContext(0, v36, v35, v43);

  v45 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v53, &async function pointer to partial apply for closure #1 in MLS.Client.downgrade(group:context:), v42, v44);
  *(v0 + 280) = v45;
  v46 = swift_task_alloc();
  *(v0 + 288) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v46 = v0;
  v46[1] = MLS.Client.downgrade(group:context:);
  v48 = *(v0 + 144);
  v49 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v48, v45, v44, v47, v49);
}

{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = MLS.Client.downgrade(group:context:);
  }

  else
  {
    v4 = MLS.Client.downgrade(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t closure #1 in MLS.Client.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[20] = a1;
  v7[25] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[26] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.downgrade(group:context:), v8, 0);
}

uint64_t closure #1 in MLS.Client.downgrade(group:context:)()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v0[2] = v7;
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v9;
  v0[6] = v10;
  v11 = *(v5 + 88);

  outlined copy of Data?(v8, v9);

  v16 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = closure #1 in MLS.Client.downgrade(group:context:);
  v13 = v0[23];
  v14 = v0[24];

  return (v16)(v0 + 7, v13, v14, v0 + 2, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = v2[26];
    v4 = v2[4];
    v5 = v2[5];

    outlined consume of Data?(v4, v5);

    v6 = closure #1 in MLS.Client.downgrade(group:context:);
  }

  else
  {
    v3 = v2[26];
    v7 = v2[4];
    v8 = v2[5];

    outlined consume of Data?(v7, v8);

    v6 = closure #1 in MLS.Client.downgrade(group:context:);
  }

  return MEMORY[0x2822009F8](v6, v3, 0);
}

{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "downgrade finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = v0[25];
  v10 = v0[20];
  v11._countAndFlagsBits = 0x6E61487473726946;
  v11._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v11);
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[10];
  v19[0] = v0[7];
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  outlined copy of Data?(v19[0], v12);
  v15 = *(v9 + 88);
  v16 = *(v9 + 104);

  MLS.DowngradeProcessedContext.init(dataContext:)(v19, v15, v16, v10);
  outlined consume of Data?(v0[7], v0[8]);

  v17 = v0[1];

  return v17();
}

uint64_t MLS.Client.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  v1 = direct field offset for MLS.Client.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MLS.Client.__deallocating_deinit()
{
  MLS.Client.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t specialized MLS.GroupCreationContext.description.getter()
{
  _StringGuts.grow(_:)(54);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8C70);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0;
}

uint64_t specialized MLS.GroupDeletionContext.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  _StringGuts.grow(_:)(54);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8C40);
  MEMORY[0x2667545A0](a1, a2);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (a4 >> 60 == 15)
  {
    v7 = 20302;
  }

  else
  {
    v7 = 5457241;
  }

  if (a4 >> 60 == 15)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v7, v8);

  return 0;
}

uint64_t specialized MLS.GroupOperationContext.description.getter()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x2667545A0](0xD000000000000022, 0x80000002651E8C10);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0;
}

uint64_t specialized MLS.EncryptionContext.description.getter()
{
  v1 = *(v0 + 48);
  v27 = *(v0 + 32);
  *v28 = v1;
  *&v28[16] = *(v0 + 64);
  if (*(&v27 + 1) >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v25 = 0x203A646161202CLL;
    v26 = 0xE700000000000000;
    v21 = v27;
    LODWORD(v22) = *v28;
    v23 = *&v28[8];
    v24 = *&v28[24];
    outlined init with copy of MLS.OutgoingEventState?(&v27, &v20, &_s15SecureMessaging3MLSO27AdditionalAuthenticatedDataVSgMd, &_s15SecureMessaging3MLSO27AdditionalAuthenticatedDataVSgMR);
    v4 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
    MEMORY[0x2667545A0](v4);

    outlined destroy of NSObject?(&v27, &_s15SecureMessaging3MLSO27AdditionalAuthenticatedDataVSgMd, &_s15SecureMessaging3MLSO27AdditionalAuthenticatedDataVSgMR);
    v2 = v25;
    v3 = v26;
  }

  v5 = *(v0 + 104);
  v6 = 0xE000000000000000;
  if (v5 <= 0xFD)
  {
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    outlined copy of MLS.AllMember(v10, v9);
    _StringGuts.grow(_:)(23);
    v20 = v21;
    MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8BD0);
    *&v21 = v10;
    *(&v21 + 1) = v9;
    v22 = v8;
    LOBYTE(v23) = v5;
    _print_unlocked<A, B>(_:_:)();
    outlined consume of MLS.AllMember?(v10, v9, v8, v5);
    v6 = *(&v20 + 1);
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  if (*(v0 + 136))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = *(v0 + 128);
    v14 = *(v0 + 120);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8BD0);
    LODWORD(v25) = v14;
    *&v20 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v20 + 1) = v15;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v25 = v13;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v16);

    MEMORY[0x2667545A0](v20, *(&v20 + 1));

    v12 = *(&v21 + 1);
    v11 = v21;
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x2667545A0](0xD00000000000001ELL, 0x80000002651E8BB0);
  MEMORY[0x2667545A0](*v0, *(v0 + 8));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (*(v0 + 24) >> 60 == 15)
  {
    v17 = 20302;
  }

  else
  {
    v17 = 5457241;
  }

  if (*(v0 + 24) >> 60 == 15)
  {
    v18 = 0xE200000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v17, v18);

  MEMORY[0x2667545A0](v2, v3);

  MEMORY[0x2667545A0](v7, v6);

  MEMORY[0x2667545A0](v11, v12);

  return v21;
}

unint64_t specialized MLS.SigningContext.description.getter()
{
  _StringGuts.grow(_:)(48);

  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0xD00000000000001BLL;
}

uint64_t specialized MLS.GroupNameEncryptionContext.description.getter()
{
  _StringGuts.grow(_:)(56);
  MEMORY[0x2667545A0](0xD000000000000023, 0x80000002651E8B80);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0;
}

uint64_t specialized MLS.IncomingMessageContext.description.getter()
{
  v1 = v0[13];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v5 = v0[16];
    v4 = v0[17];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    outlined copy of Data._Representation(v8, v1);
    outlined copy of Data?(v5, v4);
    _StringGuts.grow(_:)(17);

    v9 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
    MEMORY[0x2667545A0](v9);

    outlined consume of MLS.AdditionalAuthenticatedData?(v8, v1, v7, v6, v5, v4);
    v2 = 0x746365707865202CLL;
    v3 = 0xEF203A4441416465;
  }

  _StringGuts.grow(_:)(58);
  MEMORY[0x2667545A0](0xD000000000000023, 0x80000002651E8B30);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  MEMORY[0x2667545A0](v2, v3);

  return 0;
}

uint64_t specialized MLS.IncomingFailureToDecryptContext.description.getter()
{
  *v24 = *(v0 + 80);
  *&v24[12] = *(v0 + 92);
  v1 = *(v0 + 64);
  v23[0] = *(v0 + 48);
  v23[1] = v1;
  v2 = v1;
  v3 = *v24;
  v4 = *&v24[16];
  v5 = *&v24[24];
  v6 = 0xE000000000000000;
  if (v1 >> 16 != 0xFFFFFFFF || (*v24 & 0x3000000000000000) != 0)
  {
    v8 = *(v0 + 64);
    v21[0] = *(v0 + 48);
    v21[1] = v8;
    v22[0] = *(v0 + 80);
    *(v22 + 12) = *(v0 + 92);
    v19 = 0;
    v20 = 0xE000000000000000;
    outlined init with copy of MLS.SigningInput(v21, &v14);
    _StringGuts.grow(_:)(24);
    MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E8B10);
    v9 = (v3 >> 60) & 3;
    if (v9)
    {
      v14 = v2;
      v15 = *(&v2 + 1);
      *&v16 = v3 & 0xCFFFFFFFFFFFFFFFLL;
      if (v9 == 1)
      {
        *(&v16 + 1) = *(&v3 + 1);
        v17 = v4;
        LOWORD(v18) = v5;
        v10 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v10 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      v14 = v2;
      v15 = *(&v2 + 1);
      v16 = v3;
      v17 = v4;
      v18 = v5;
      v10 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    MEMORY[0x2667545A0](v10);

    outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v7 = v19;
    v6 = v20;
  }

  else
  {
    v7 = 0;
  }

  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  MEMORY[0x2667545A0](0xD00000000000002CLL, 0x80000002651E8AE0);
  MEMORY[0x2667545A0](*v0, *(v0 + 8));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (*(v0 + 24) >> 60 == 15)
  {
    v11 = 20302;
  }

  else
  {
    v11 = 5457241;
  }

  if (*(v0 + 24) >> 60 == 15)
  {
    v12 = 0xE200000000000000;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v11, v12);

  MEMORY[0x2667545A0](v7, v6);

  return *&v21[0];
}

uint64_t specialized MLS.IncomingGroupNameContext.description.getter()
{
  _StringGuts.grow(_:)(58);
  MEMORY[0x2667545A0](0xD000000000000025, 0x80000002651E8AB0);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0;
}

unint64_t specialized MLS.DowngradeContext.description.getter()
{
  _StringGuts.grow(_:)(50);

  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0xD00000000000001DLL;
}

uint64_t sub_264F86914()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.keyPackage.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.keyPackage.getter(a1, v4, v5, v6);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError()
{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

uint64_t sub_264F86B18()
{

  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[4], v1);
  }

  v2 = v0[8];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[7], v2);
  }

  v3 = v0[10];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

uint64_t sub_264F86CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for MLS.IncomingMessage(0, v5, *(v4 + 48), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 80) & ~v7;
  v9 = (((*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v10 = v4 + v8;
  outlined consume of Data._Representation(*v10, *(v10 + 8));

  (*(*(v5 - 8) + 8))(v10 + v6[12], v5);

  return MEMORY[0x2821FE8E8](v4, v9 + 16, v7 | 7);
}

uint64_t partial apply for closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for MLS.IncomingMessage(0, v4[4], v4[6], a4) - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v4[2];
  v10 = v4[3];
  v11 = *(v4 + v8);
  v12 = v4[8];
  v13 = v4[9];
  v14 = *(v4 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(a1, v9, v10, v12, v13, v4 + v7, v11, v14);
}

uint64_t sub_264F86F74()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 72), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.delete(group:context:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.delete(group:context:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in MLS.Client.group(identifier:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.group(identifier:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264F871B4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.update(groupDetails:forGroup:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.update(groupDetails:forGroup:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_34Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.otherMembers(group:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.otherMembers(group:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLS.Client.add(members:toGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.add(members:toGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.kick(members:fromGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.kick(members:fromGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLS.Client.leave(group:context:)(uint64_t a1)
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
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.leave(group:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_264F8777C()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 32), v1);
  }

  v2 = *(v0 + 56);
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 48), v2);
    v3 = *(v0 + 88);
    if (v3 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v0 + 80), v3);
    }
  }

  if (*(v0 + 120) <= 0xFDu)
  {
    outlined consume of MLS.AllMember(*(v0 + 96), *(v0 + 104));
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264F87908()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264F87AFC()
{
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
  outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = a2;
  v6 = (a3 >> 60) & 3;
  if (((a3 >> 60) & 3) > 1)
  {
    if (v6 == 2)
    {

      return outlined consume of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v6)
    {
      v9 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = a3;
    }

    outlined consume of Data._Representation(result, v9);

    return outlined consume of Data?(a4, a5);
  }

  return result;
}

uint64_t partial apply for closure #1 in MLS.Client.applicationSign(input:withGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[14];
  v9 = v1[15];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.applicationSign(input:withGroup:context:)(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_264F87CD4()
{

  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[4], v1);
  }

  if (v0[8] >> 16 != 0xFFFFFFFFLL || (v0[10] & 0x3000000000000000) != 0)
  {
    outlined consume of Data._Representation(v0[6], v0[7]);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(v0[8], v0[9], v0[10], v0[11], v0[12]);
  }

  v3 = v0[15];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[14], v3);
    v4 = v0[19];
    if (v4 >> 60 != 15)
    {
      outlined consume of Data._Representation(v0[18], v4);
    }
  }

  v5 = v0[21];
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[20], v5);
  }

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_264F87DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for MLS.IncomingMessage(0, v5, *(v4 + 48), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 72) & ~v7;
  v9 = (((*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v10 = v4 + v8;
  outlined consume of Data._Representation(*v10, *(v10 + 8));

  (*(*(v5 - 8) + 8))(v10 + v6[12], v5);

  return MEMORY[0x2821FE8E8](v4, v9 + 16, v7 | 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for MLS.IncomingMessage(0, v4[4], v4[6], a4) - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v4[2];
  v13 = v4[3];
  v14 = *(v4 + v10);
  v15 = v4[8];
  v16 = *(v4 + v11);
  v17 = *(v4 + v11 + 8);
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(message:forGroup:context:)(a1, v12, v13, v15, v4 + v9, v14, v16, v17);
}

uint64_t sub_264F8803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for MLS.IncomingMessage(0, v5, *(v4 + 48), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 72) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v10 = v4 + v8;
  outlined consume of Data._Representation(*v10, *(v10 + 8));

  (*(*(v5 - 8) + 8))(v10 + v6[12], v5);

  return MEMORY[0x2821FE8E8](v4, v9 + 8, v7 | 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for MLS.IncomingMessage(0, v4[4], v4[6], a4) - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[8];
  v13 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(message:context:)(a1, v10, v11, v12, v4 + v9, v13);
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

uint64_t sub_264F882E4()
{

  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[4], v1);
  }

  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[6], v2);
  }

  if (v0[10] >> 16 != 0xFFFFFFFFLL || (v0[12] & 0x3000000000000000) != 0)
  {
    outlined consume of Data._Representation(v0[8], v0[9]);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(v0[10], v0[11], v0[12], v0[13], v0[14]);
  }

  v4 = v0[18];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[17], v4);
    v5 = v0[22];
    if (v5 >> 60 != 15)
    {
      outlined consume of Data._Representation(v0[21], v5);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_264F883BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for MLS.IncomingFailureToDecrypt(0, v5, *(v4 + 48), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 72) & ~v7;
  v9 = (((*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[12], v5);

  return MEMORY[0x2821FE8E8](v4, v9 + 16, v7 | 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for MLS.IncomingFailureToDecrypt(0, v4[4], v4[6], a4) - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v4[2];
  v13 = v4[3];
  v14 = *(v4 + v10);
  v15 = v4[8];
  v16 = *(v4 + v11);
  v17 = *(v4 + v11 + 8);
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(a1, v12, v13, v15, v4 + v9, v14, v16, v17);
}

uint64_t sub_264F8864C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264F8868C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:)(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t objectdestroy_78Tm()
{
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_52Tm()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_69Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.downgrade(group:context:)(uint64_t a1)
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
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.downgrade(group:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata completion function for MLS.Client(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.Client.keyPackage.getter(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Client.createGroup(identifier:otherMembers:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 152) + **(*v5 + 152));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 160) + **(*v5 + 160));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 168) + **(*v6 + 168));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 176) + **(*v6 + 176));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 184) + **(*v4 + 184));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Client.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 192) + **(*v4 + 192));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Client.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 200) + **(*v3 + 200));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 208) + **(*v3 + 208));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 216) + **(*v5 + 216));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 224) + **(*v5 + 224));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 232) + **(*v4 + 232));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Client.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 240) + **(*v6 + 240));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 248) + **(*v6 + 248));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 256) + **(*v5 + 256));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 264) + **(*v5 + 264));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 272) + **(*v3 + 272));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(failureToDecrypt:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 280) + **(*v3 + 280));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 288) + **(*v5 + 288));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 296) + **(*v5 + 296));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 304) + **(*v5 + 304));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 312) + **(*v6 + 312));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 320) + **(*v4 + 320));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t outlined consume of MLS.AdditionalAuthenticatedData?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(result, a2);

    return outlined consume of Data?(a5, a6);
  }

  return result;
}

uint64_t outlined consume of MLS.AllMember?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return outlined consume of MLS.AllMember(a1, a2);
  }

  return a1;
}

unint64_t MLS.KeyPackageFetcher.FetchResult.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = v2;
  a1[2] = v2;
  return result;
}

char *MLS.KeyPackageFetcher.FetchResult.init(retrievalResult:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v42 = type metadata accessor for MLS.Client.KeyPackage();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a1 + 64;
  v10 = 1 << *(*a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(*a1 + 64);
  v13 = (v10 + 63) >> 6;
  v40 = v8;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v41 = v7;
  v39 = v5;
  while (1)
  {
    v43 = v16;
    if (!v12)
    {
      break;
    }

LABEL_10:
    v19 = *(*(v40 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v12)))));
    v20 = *(v19 + 16);
    v21 = *(v16 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_34;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = v43;
    if (!result || v22 > *(v43 + 3) >> 1)
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v24, 1, v43);
      v23 = result;
    }

    v5 = v39;
    v7 = v41;
    v12 &= v12 - 1;
    if (*(v19 + 16))
    {
      if ((*(v23 + 3) >> 1) - *(v23 + 2) < v20)
      {
        goto LABEL_36;
      }

      v25 = v23;
      swift_arrayInitWithCopy();

      v16 = v25;
      v7 = v41;
      if (v20)
      {
        v26 = *(v16 + 2);
        v27 = __OFADD__(v26, v20);
        v28 = v26 + v20;
        if (v27)
        {
          goto LABEL_37;
        }

        *(v16 + 2) = v28;
      }
    }

    else
    {
      v17 = v23;

      v16 = v17;
      if (v20)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v18 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      v15 = v18;
      goto LABEL_10;
    }
  }

  result = v43;
  v29 = *(v43 + 2);
  v30 = MEMORY[0x277D84F90];
  if (!v29)
  {
LABEL_31:
    v37 = v38;
    *v38 = v40;
    v37[1] = result;
    v37[2] = v30;
    return result;
  }

  v44 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
  result = v43;
  v31 = 0;
  v30 = v44;
  v41 = (v5 + 32);
  v32 = (v43 + 40);
  while (v31 < *(result + 2))
  {
    v33 = *(v32 - 1);
    v34 = *v32;
    outlined copy of Data._Representation(v33, *v32);
    outlined copy of Data._Representation(v33, v34);
    MLS.Client.KeyPackage.init(fromRaw:)();
    if (v3)
    {

      outlined consume of Data._Representation(v33, v34);
    }

    outlined consume of Data._Representation(v33, v34);
    v44 = v30;
    v36 = *(v30 + 16);
    v35 = *(v30 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
      v30 = v44;
    }

    ++v31;
    *(v30 + 16) = v36 + 1;
    (*(v5 + 32))(v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36, v7, v42);
    v32 += 2;
    result = v43;
    if (v29 == v31)
    {

      result = v43;
      goto LABEL_31;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void *MLS.KeyPackageFetcher.FetchResult.init(retrievalResult:keyPackages:swiftMLSKeyPackages:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t MLS.KeyPackageFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS17KeyPackageFetcher_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeyPackageFetcher.__allocating_init(clientEventDeliverer:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t MLS.KeyPackageFetcher.init(clientEventDeliverer:)(uint64_t a1, uint64_t a2)
{
  Logger.init(subsystem:category:)();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[41] = v6;
  v7[42] = a6;
  v7[39] = a4;
  v7[40] = a5;
  v7[37] = a2;
  v7[38] = a3;
  v7[36] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[43] = AssociatedTypeWitness;
  v7[44] = *(AssociatedTypeWitness - 8);
  v7[45] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7[46] = AssociatedConformanceWitness;
  v7[47] = *(*(AssociatedConformanceWitness + 8) + 8);
  v7[48] = swift_getAssociatedTypeWitness();
  v7[49] = swift_task_alloc();
  v10 = swift_checkMetadataState();
  v7[50] = v10;
  v7[51] = *(v10 - 8);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v7[60] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY0_, v11, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY0_()
{
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(*(v0 + 304), v0 + 16);
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  if (*(v0 + 96) == 1)
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 184);
    v5 = *(v0 + 72);
    *(v0 + 224) = *(v0 + 56);
    *(v0 + 240) = v5;
    *(v0 + 256) = *(v0 + 88);
    v6 = swift_task_alloc();
    *(v0 + 488) = v6;
    *(v6 + 16) = v0 + 184;
    *(v6 + 24) = v0 + 224;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(v3, AssociatedConformanceWitness);
    VersatileError.init(type:)(v2, v1, v4);
    v8 = swift_task_alloc();
    *(v0 + 496) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    *v8 = v0;
    v8[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ1_;
    v9 = *(v0 + 472);
    v10 = *(v0 + 400);
    v11 = &_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TATu;
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 104);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 56), v0 + 144);
    v6 = swift_task_alloc();
    *(v0 + 512) = v6;
    *(v6 + 16) = v0 + 104;
    *(v6 + 24) = v0 + 144;
    v12 = swift_getAssociatedConformanceWitness();
    (*(v12 + 40))(v3, v12);
    VersatileError.init(type:)(v2, v1, v4);
    v13 = swift_task_alloc();
    *(v0 + 520) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    *v13 = v0;
    v13[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ3_;
    v9 = *(v0 + 456);
    v10 = *(v0 + 400);
    v11 = &_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_TATu;
  }

  return _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 264, v11, v6, v9, 0, 0, v10);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[60];
    (*(v2[51] + 8))(v2[59], v2[50]);
    v4 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY7_;
    v5 = v3;
  }

  else
  {
    v6 = v2[60];
    v7 = v2[59];
    v8 = v2[50];
    v9 = *(v2[51] + 8);
    v2[63] = v9;
    v9(v7, v8);

    v4 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY2_;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY2_()
{
  outlined destroy of MLS.SwiftMLSGroupProtocol?((v0 + 28));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  v0[67] = v0[63];
  v1 = v0[33];
  v0[68] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[50];
    v3 = v0[48];
    v31 = v0[47];
    v4 = v0[45];
    v28 = v0[49];
    v5 = v0[43];
    v6 = v0[44];
    v7 = v0[40];
    v27 = v0[41];
    v8 = v0[39];
    v9 = (*(v7 + 56))(v8, v7);
    v29 = v10;
    v30 = v9;
    v0[69] = v9;
    v0[70] = v10;
    (*(v7 + 80))(v8, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = (*(AssociatedConformanceWitness + 16))(v5, AssociatedConformanceWitness);
    v14 = v13;
    v0[71] = v12;
    v0[72] = v13;
    (*(v6 + 8))(v4, v5);
    v15 = swift_task_alloc();
    v0[73] = v15;
    *(v15 + 16) = v27;
    *(v15 + 24) = v1;
    v16 = swift_getAssociatedConformanceWitness();
    v0[74] = v16;
    v17 = *(v16 + 24);
    v0[75] = v17;
    v0[76] = (v16 + 24) & 0xFFFFFFFFFFFFLL | 0x51A3000000000000;
    v17(v3, v16);
    VersatileError.init(type:)(v28, v2, v31);
    v18 = swift_allocObject();
    v0[77] = v18;
    v18[2] = v27;
    v18[3] = v30;
    v18[4] = v29;
    v18[5] = v12;
    v18[6] = v14;

    v19 = swift_task_alloc();
    v0[78] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    *v19 = v0;
    v19[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ5_;
    v20 = v0[55];
    v21 = v0[50];

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 34), &_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TATu, v15, v20, _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFySSYbcfU_TA, v18, v21);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v25 = v0[36];
    *v25 = v24;
    v25[1] = v23;
    v25[2] = v23;

    v26 = v0[1];

    return v26();
  }
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ3_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[60];
    (*(v2[51] + 8))(v2[57], v2[50]);
    v4 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY8_;
    v5 = v3;
  }

  else
  {
    v6 = v2[60];
    v7 = v2[57];
    v8 = v2[50];
    v9 = *(v2[51] + 8);
    v2[66] = v9;
    v9(v7, v8);

    v4 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY4_;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY4_()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v0[67] = v0[66];
  v1 = v0[33];
  v0[68] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[50];
    v3 = v0[48];
    v31 = v0[47];
    v4 = v0[45];
    v28 = v0[49];
    v5 = v0[43];
    v6 = v0[44];
    v7 = v0[40];
    v27 = v0[41];
    v8 = v0[39];
    v9 = (*(v7 + 56))(v8, v7);
    v29 = v10;
    v30 = v9;
    v0[69] = v9;
    v0[70] = v10;
    (*(v7 + 80))(v8, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = (*(AssociatedConformanceWitness + 16))(v5, AssociatedConformanceWitness);
    v14 = v13;
    v0[71] = v12;
    v0[72] = v13;
    (*(v6 + 8))(v4, v5);
    v15 = swift_task_alloc();
    v0[73] = v15;
    *(v15 + 16) = v27;
    *(v15 + 24) = v1;
    v16 = swift_getAssociatedConformanceWitness();
    v0[74] = v16;
    v17 = *(v16 + 24);
    v0[75] = v17;
    v0[76] = (v16 + 24) & 0xFFFFFFFFFFFFLL | 0x51A3000000000000;
    v17(v3, v16);
    VersatileError.init(type:)(v28, v2, v31);
    v18 = swift_allocObject();
    v0[77] = v18;
    v18[2] = v27;
    v18[3] = v30;
    v18[4] = v29;
    v18[5] = v12;
    v18[6] = v14;

    v19 = swift_task_alloc();
    v0[78] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    *v19 = v0;
    v19[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ5_;
    v20 = v0[55];
    v21 = v0[50];

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 34), &_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TATu, v15, v20, _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFySSYbcfU_TA, v18, v21);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v25 = v0[36];
    *v25 = v24;
    v25[1] = v23;
    v25[2] = v23;

    v26 = v0[1];

    return v26();
  }
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ5_()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = *(v2 + 480);
    (*(v2 + 536))(*(v2 + 440), *(v2 + 400));

    v4 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY9_;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 536);
    v7 = *(v2 + 480);
    v8 = *(v2 + 440);
    v9 = *(v2 + 400);
    *(v2 + 640) = (*(v2 + 408) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v8, v9);

    v4 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY6_;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY6_()
{
  v109 = v0;
  v1 = *(v0 + 272);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 576);
    v5 = *(v0 + 568);
    v6 = v1;
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v105 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v105);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v105);
    *(v9 + 22) = 2080;
    v1 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v105);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_264F1F000, v2, v3, "KeyPackageFetcher %s retrieved KeyPackages { identifier: %s, keyPackages: %s }", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  if (*(v1 + 16) >= *(*(v0 + 544) + 16))
  {

    v30 = 0;
    v31 = v1 + 64;
    v32 = -1 << *(v1 + 32);
    if (-v32 < 64)
    {
      v33 = ~(-1 << -v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v1 + 64);
    v35 = (63 - v32) >> 6;
    v103 = v1;
    while (v34)
    {
      v36 = v30;
LABEL_16:
      v37 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v38 = v37 | (v36 << 6);
      if (!*(*(*(v1 + 56) + 8 * v38) + 16))
      {
        v39 = *(v1 + 48) + 32 * v38;
        v40 = *v39;
        v41 = *(v39 + 8);
        v42 = *(v39 + 16);
        v43 = *(v39 + 24);
        outlined copy of MLS.AllMember(*v39, v41);

        outlined copy of MLS.AllMember(v40, v41);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        outlined consume of MLS.AllMember(v40, v41);
        v46 = os_log_type_enabled(v44, v45);
        v47 = *(v0 + 576);
        if (v46)
        {
          v98 = *(v0 + 568);
          v48 = *(v0 + 560);
          v101 = v45;
          v49 = *(v0 + 552);
          v50 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v104 = v99;
          *v50 = 136315650;
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &v104);

          *(v50 + 4) = v51;
          *(v50 + 12) = 2080;
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v47, &v104);

          *(v50 + 14) = v52;
          *(v50 + 22) = 2080;
          v105 = v40;
          v106 = v41;
          v107 = v42;
          v108 = v43;
          v53 = MLS.AllMember.description.getter();
          v55 = v54;
          outlined consume of MLS.AllMember(v105, v106);
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v104);

          *(v50 + 24) = v56;
          _os_log_impl(&dword_264F1F000, v44, v101, "KeyPackageFetcher %s missing KeyPackage for member { identifier: %s, member: %s }", v50, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v99, -1, -1);
          MEMORY[0x266755550](v50, -1, -1);
        }

        else
        {

          outlined consume of MLS.AllMember(v40, v41);
        }

        v95 = *(v0 + 392);
        v94 = *(v0 + 400);
        v96 = *(v0 + 376);
        v97 = *(v0 + 336);
        (*(v0 + 600))();
        VersatileError.init(type:)(v95, v94, v96);
        swift_willThrowTyped(v97, v94, *(*(v96 + 8) + 8));

        goto LABEL_46;
      }
    }

    while (1)
    {
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v36 >= v35)
      {
        break;
      }

      v34 = *(v31 + 8 * v36);
      ++v30;
      if (v34)
      {
        v30 = v36;
        goto LABEL_16;
      }
    }

    v57 = -1;
    v58 = -1 << *(v1 + 32);
    if (-v58 < 64)
    {
      v57 = ~(-1 << -v58);
    }

    v59 = v57 & *(v1 + 64);
    v60 = (63 - v58) >> 6;
    result = swift_bridgeObjectRetain_n();
    v61 = 0;
    v62 = MEMORY[0x277D84F90];
    while (v59)
    {
LABEL_28:
      v64 = *(*(v103 + 56) + ((v61 << 9) | (8 * __clz(__rbit64(v59)))));

      result = swift_task_isCurrentExecutor();
      if ((result & 1) == 0)
      {
        result = swift_task_reportUnexpectedExecutor();
      }

      v65 = *(v64 + 16);
      v66 = *(v62 + 16);
      v67 = v66 + v65;
      if (__OFADD__(v66, v65))
      {
        goto LABEL_55;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v67 > *(v62 + 24) >> 1)
      {
        if (v66 <= v67)
        {
          v68 = v66 + v65;
        }

        else
        {
          v68 = v66;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v68, 1, v62);
        v62 = result;
      }

      v59 &= v59 - 1;
      if (*(v64 + 16))
      {
        if ((*(v62 + 24) >> 1) - *(v62 + 16) < v65)
        {
          goto LABEL_57;
        }

        swift_arrayInitWithCopy();

        if (v65)
        {
          v69 = *(v62 + 16);
          v70 = __OFADD__(v69, v65);
          v71 = v69 + v65;
          if (v70)
          {
            goto LABEL_58;
          }

          *(v62 + 16) = v71;
        }
      }

      else
      {

        if (v65)
        {
          goto LABEL_56;
        }
      }
    }

    while (1)
    {
      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v63 >= v60)
      {
        v102 = *(v0 + 632);
        v72 = *(v0 + 592);
        v73 = *(v0 + 416);
        v74 = *(v0 + 424);
        v75 = *(v0 + 392);
        v76 = *(v0 + 400);
        v78 = *(v0 + 376);
        v77 = *(v0 + 384);

        v79 = swift_task_alloc();
        *(v79 + 16) = v62;
        (*(v72 + 48))(v77, v72);
        VersatileError.init(type:)(v75, v76, v78);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8SwiftMLS0B0O6ClientO10KeyPackageVGMd, &_sSay8SwiftMLS0B0O6ClientO10KeyPackageVGMR);
        _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSay05SwiftC0ABO6ClientO0dE0VGyKXEfu12_TA, v79, v74, 0, 0, v76, v80, v78, v73);
        v81 = *(v0 + 536);
        v82 = *(v0 + 424);
        if (v102)
        {
          v84 = *(v0 + 408);
          v83 = *(v0 + 416);
          v85 = *(v0 + 400);
          v86 = *(v0 + 336);
          v81(v82, v85);

          (*(v84 + 32))(v86, v83, v85);

          goto LABEL_46;
        }

        v81(v82, *(v0 + 400));

        v92 = *(v0 + 280);
        v93 = *(v0 + 288);
        *v93 = v103;
        v93[1] = v62;
        v93[2] = v92;

        v91 = *(v0 + 8);
        goto LABEL_47;
      }

      v59 = *(v31 + 8 * v63);
      ++v61;
      if (v59)
      {
        v61 = v63;
        goto LABEL_28;
      }
    }

LABEL_54:
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

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 576);
    if (v17)
    {
      v19 = *(v0 + 568);
      v20 = *(v0 + 560);
      v21 = v1;
      v22 = *(v0 + 552);
      v23 = *(v0 + 544);
      v24 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v105 = v100;
      *v24 = 136315906;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v20, &v105);

      *(v24 + 4) = v25;
      *(v24 + 12) = 2080;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v105);

      *(v24 + 14) = v26;
      *(v24 + 22) = 2048;
      v27 = *(v21 + 16);

      *(v24 + 24) = v27;

      *(v24 + 32) = 2048;
      v28 = *(v23 + 16);

      *(v24 + 34) = v28;

      _os_log_impl(&dword_264F1F000, v15, v16, "KeyPackageFetcher %s missing KeyPackage { identifier: %s, keyPackageCount: %ld, otherMembersCount: %ld }", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266755550](v100, -1, -1);
      MEMORY[0x266755550](v24, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v88 = *(v0 + 392);
    v87 = *(v0 + 400);
    v89 = *(v0 + 376);
    v90 = *(v0 + 336);
    (*(v0 + 600))();
    VersatileError.init(type:)(v88, v87, v89);
    swift_willThrowTyped(v90, v87, *(*(v89 + 8) + 8));
LABEL_46:

    v91 = *(v0 + 8);
LABEL_47:

    return v91();
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY7_()
{
  (*(v0[51] + 32))(v0[42], v0[58], v0[50]);

  outlined destroy of MLS.SwiftMLSGroupProtocol?((v0 + 28));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);

  v1 = v0[1];

  return v1();
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY8_()
{
  (*(v0[51] + 32))(v0[42], v0[56], v0[50]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  v1 = v0[1];

  return v1();
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY9_()
{
  (*(v0[51] + 32))(v0[42], v0[54], v0[50]);

  v1 = v0[1];

  return v1();
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TY0_, 0, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TY0_()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TQ1_;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TQ1_(uint64_t a1)
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
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TY2_, 0, 0);
  }
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_TY0_, 0, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_TY0_()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TY0_, 0, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TY0_()
{
  v1 = *(*(v0 + 24) + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 1;
  v7 = (*(v1 + 40) + **(v1 + 40));
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TQ1_;
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return v7(v5, v4, v0 + 56, ObjectType, v1);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TQ1_()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TY2_, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFySSYbcfU_(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v17);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, &v17);
    *(v14 + 22) = 2080;
    *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);
    _os_log_impl(&dword_264F1F000, oslog, v13, "KeyPackageFetcher %s failed to retrieve KeyPackages { identifier: %s, error: %s }", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSay05SwiftC0ABO6ClientO0dE0VGyKXEfu12_@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = type metadata accessor for MLS.Client.KeyPackage();
  v5 = *(v19 - 8);
  result = MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = a2;
    v20 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v20;
    v18 = v5 + 32;
    v11 = (a1 + 40);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      outlined copy of Data._Representation(v12, *v11);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined copy of Data._Representation(v12, v13);
      MLS.Client.KeyPackage.init(fromRaw:)();
      if (v2)
      {
        break;
      }

      outlined consume of Data._Representation(v12, v13);
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v11 += 2;
      *(v10 + 16) = v15 + 1;
      result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v8, v19);
      if (!--v9)
      {
        a2 = v17;
        goto LABEL_13;
      }
    }

    outlined consume of Data._Representation(v12, v13);
  }

  else
  {
LABEL_13:
    *a2 = v10;
  }

  return result;
}

uint64_t MLS.KeyPackageFetcher.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS17KeyPackageFetcher_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MLS.KeyPackageFetcher.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS17KeyPackageFetcher_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_(a1, v5, v4);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_(a1, v5, v4);
}

uint64_t sub_264F8DEA8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_(a1, v5, v4);
}

uint64_t outlined destroy of MLS.SwiftMLSGroupProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MLS.KeyPackageFetcher(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.KeyPackageFetcher;
  if (!type metadata singleton initialization cache for MLS.KeyPackageFetcher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.KeyPackageFetcher(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 104) + **(*v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.KeyPackageFetcher.FetchResult(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.KeyPackageFetcher.FetchResult(uint64_t result, int a2, int a3)
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

uint64_t MLS.Identity.Credential.isExpired.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-v15];
  MLS.Identity.Credential.credentialNotAfter.getter();
  v28 = *(v8 + 48);
  if (v28(v6, 1, v7) == 1)
  {
    outlined destroy of Date?(v6);
  }

  else
  {
    (*(v8 + 32))(v16, v6, v7);
    Date.init()();
    v26 = static Date.< infix(_:_:)();
    v27 = v0;
    v17 = v11;
    v18 = v4;
    v19 = *(v8 + 8);
    v19(v14, v7);
    v19(v16, v7);
    v4 = v18;
    v11 = v17;
    if (v26)
    {
      v20 = 1;
      return v20 & 1;
    }
  }

  v21 = v29;
  MLS.Identity.Credential.participantInfoNotAfter.getter();
  if (!v21)
  {
    if (v28(v4, 1, v7) == 1)
    {
      outlined destroy of Date?(v4);
LABEL_10:
      v20 = 0;
      return v20 & 1;
    }

    (*(v8 + 32))(v11, v4, v7);
    Date.init()();
    v22 = static Date.< infix(_:_:)();
    v23 = *(v8 + 8);
    v23(v14, v7);
    v23(v11, v7);
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }

    v20 = 1;
  }

  return v20 & 1;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t UUID.dataRepresentation.getter()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 64);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0xE)
  {
    return specialized Data.InlineData.init(_:)(v0, &v0[v1]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (v1 < 0x7FFFFFFF)
  {
    return v1 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t UUID.swiftMLSDataRepresentation.getter()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.uuidString.getter();
  String.uppercased()();

  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t UUID.CustomNamespace.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UUID.CustomNamespace.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UUID.CustomNamespace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UUID.CustomNamespace(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UUID.CustomNamespace@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance UUID.CustomNamespace, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t static UUID.v5(customNamespace:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v58 = a2;
  v66 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for Insecure.SHA1Digest();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Insecure.SHA1();
  v52 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v51 - v7;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v64 = a1;
  v59 = a1;

  specialized MutableCollection<>.sort(by:)(&v64);
  v56 = 0;
  v12 = 0;
  v13 = v64;
  v14 = *(v64 + 16);
  v15 = (v9 + 8);
  v16 = v64 + 40;
  v63 = MEMORY[0x277D84F90];
  v57 = v64 + 40;
LABEL_2:
  v17 = v16 + 16 * v12;
  while (v14 != v12)
  {
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    ++v12;
    v18 = v17 + 16;

    static String.Encoding.utf8.getter();
    v19 = String.data(using:allowLossyConversion:)();
    v21 = v20;

    (*v15)(v11, v8);
    v17 = v18;
    if (v21 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
      }

      v23 = *(v63 + 2);
      v22 = *(v63 + 3);
      if (v23 >= v22 >> 1)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v63);
      }

      v24 = v63;
      *(v63 + 2) = v23 + 1;
      v25 = &v24[16 * v23];
      *(v25 + 4) = v19;
      *(v25 + 5) = v21;
      v16 = v57;
      goto LABEL_2;
    }
  }

  v26 = v63;
  if (*(v63 + 2) < *(v59 + 16))
  {
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 56))(v58, 1, 1, v27);
  }

  v29 = v60;
  UUID.init(uuidString:)();
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {

    outlined destroy of UUID?(v60);
    return (*(v31 + 56))(v58, 1, 1, v30);
  }

  v32 = v60;
  v33 = UUID.uuid.getter();
  v35 = v34;
  v59 = v31;
  v60 = v30;
  (*(v31 + 8))(v32, v30);
  *&v64 = v33;
  *(&v64 + 1) = v35;
  v36 = specialized Data.init(bytes:count:)(&v64, 0x10uLL);
  v38 = v37;
  v39 = v61;
  Insecure.SHA1.init()();
  outlined copy of Data._Representation(v36, v38);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v36, v38, v39);
  v56 = v36;
  v57 = v38;
  outlined consume of Data._Representation(v36, v38);
  v40 = *(v26 + 2);
  if (v40)
  {
    v41 = 0;
    v42 = (v26 + 40);
    do
    {
      if (v41 >= *(v26 + 2))
      {
        goto LABEL_37;
      }

      v43 = *(v42 - 1);
      v44 = *v42;
      v45 = *v42 >> 62;
      if (v45 > 1)
      {
        if (v45 == 2)
        {
          v47 = *(v43 + 16);
          v46 = *(v43 + 24);

          if (__DataStorage._bytes.getter() && __OFSUB__(v47, __DataStorage._offset.getter()))
          {
            goto LABEL_40;
          }

          if (__OFSUB__(v46, v47))
          {
            goto LABEL_39;
          }

LABEL_32:
          MEMORY[0x2667538A0]();
          lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
          v39 = v61;
          dispatch thunk of HashFunction.update(bufferPointer:)();
          outlined consume of Data._Representation(v43, v44);
          v26 = v63;
          goto LABEL_19;
        }

        lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
        *&v64 = 0;
        *(&v64 + 6) = 0;
      }

      else
      {
        if (v45)
        {
          if (v43 >> 32 < v43)
          {
            goto LABEL_38;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v43, __DataStorage._offset.getter()))
          {
            goto LABEL_41;
          }

          goto LABEL_32;
        }

        *&v64 = *(v42 - 1);
        WORD4(v64) = v44;
        BYTE10(v64) = BYTE2(v44);
        BYTE11(v64) = BYTE3(v44);
        BYTE12(v64) = BYTE4(v44);
        BYTE13(v64) = BYTE5(v44);
        lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
      }

      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v43, v44);
LABEL_19:
      ++v41;
      v42 += 2;
    }

    while (v40 != v41);
  }

  v48 = v55;
  v49 = Insecure.SHA1.finalize()();
  v64 = 0uLL;
  v65 = 1;
  MEMORY[0x28223BE20](v49);
  Insecure.SHA1Digest.withUnsafeBytes<A>(_:)();
  if (v65)
  {
    (*(v53 + 8))(v48, v54);
    outlined consume of Data._Representation(v56, v57);
    (*(v52 + 8))(v39, v62);
    return (*(v59 + 56))(v58, 1, 1, v60);
  }

  else
  {
    v50 = v58;
    UUID.init(uuid:)();
    outlined consume of Data._Representation(v56, v57);
    (*(v53 + 8))(v48, v54);
    (*(v52 + 8))(v39, v62);
    return (*(v59 + 56))(v50, 0, 1, v60);
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v40 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 112 * a3;
    v7 = result - a3 + 1;
LABEL_5:
    v8 = v7;
    for (i = v6; ; i -= 7)
    {
      v10 = *i;
      v11 = i[2];
      v36[1] = i[1];
      v36[2] = v11;
      v36[0] = v10;
      v12 = i[3];
      v13 = i[4];
      v14 = i[6];
      v36[5] = i[5];
      v37 = v14;
      v36[3] = v12;
      v36[4] = v13;
      v15 = *(i - 1);
      v17 = *(i - 4);
      v16 = *(i - 3);
      v38[5] = *(i - 2);
      v39 = v15;
      v38[3] = v17;
      v38[4] = v16;
      v18 = *(i - 7);
      v19 = *(i - 5);
      v38[1] = *(i - 6);
      v38[2] = v19;
      v38[0] = v18;
      outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v36, &v29);
      outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v38, &v29);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(v38);
      result = outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(v36);
      if (*(&v37 + 1) >= *(&v39 + 1))
      {
LABEL_4:
        ++v4;
        v6 += 112;
        --v7;
        if (v4 == v40)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v20 = i - 7;
      v32 = i[3];
      v33 = i[4];
      v34 = i[5];
      v35 = i[6];
      v29 = *i;
      v30 = i[1];
      v31 = i[2];
      v21 = *(i - 6);
      *i = *(i - 7);
      i[1] = v21;
      v22 = *(i - 1);
      i[5] = *(i - 2);
      i[6] = v22;
      v23 = *(i - 3);
      i[3] = *(i - 4);
      i[4] = v23;
      i[2] = *(i - 5);
      v24 = v29;
      v25 = v31;
      v20[1] = v30;
      v20[2] = v25;
      *v20 = v24;
      v26 = v32;
      v27 = v33;
      v28 = v35;
      v20[5] = v34;
      v20[6] = v28;
      v20[3] = v26;
      v20[4] = v27;
      if (!v8)
      {
        goto LABEL_4;
      }

      ++v8;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for Insecure.SHA1();
  lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x2667538A0]();
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1()
{
  result = lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1;
  if (!lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1)
  {
    type metadata accessor for Insecure.SHA1();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1);
  }

  return result;
}

__n128 partial apply for closure #4 in static UUID.v5(customNamespace:inputs:)(__n128 *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 - a1 >= 16)
    {
      v3 = *(v2 + 16);
      result = *a1;
      *v3 = *a1;
      v3[1].n128_u8[0] = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID.CustomNamespace and conformance UUID.CustomNamespace()
{
  result = lazy protocol witness table cache variable for type UUID.CustomNamespace and conformance UUID.CustomNamespace;
  if (!lazy protocol witness table cache variable for type UUID.CustomNamespace and conformance UUID.CustomNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID.CustomNamespace and conformance UUID.CustomNamespace);
  }

  return result;
}

uint64_t MLS.NegativeDeliveryOperation.message.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 58);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return outlined init with copy of MLS.OutgoingEventState?(v7, &v6, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
}

uint64_t MLS.NegativeDeliveryOperation.group.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MLS.NegativeDeliveryOperation.originalEventIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MLS.NegativeDeliveryOperation.context.getter@<X0>(void *a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  v4 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context);
  v3 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 8);
  v5 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 16);
  v6 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 24);
  v7 = *(v2 + 32);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);
}

uint64_t MLS.NegativeDeliveryOperation.triggeringError.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t MLS.NegativeDeliveryOperation.__allocating_init(message:group:originalEventIdentifier:triggeringError:context:featureFlagsStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8)
{
  v16 = swift_allocObject();
  v24 = a7[1];
  v25 = *a7;
  v17 = *(a7 + 4);
  v18 = *a8;
  Logger.init(subsystem:category:)();
  v19 = a1[1];
  *(v16 + 16) = *a1;
  *(v16 + 32) = v19;
  *(v16 + 48) = a1[2];
  *(v16 + 58) = *(a1 + 42);
  *(v16 + 80) = a2;
  *(v16 + 88) = a3;
  *(v16 + 96) = a4;
  *(v16 + 104) = a5;
  v20 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  v21 = type metadata accessor for MLS.MLSError();
  (*(*(v21 - 8) + 32))(v16 + v20, a6, v21);
  v22 = v16 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  *v22 = v25;
  *(v22 + 16) = v24;
  *(v22 + 32) = v17;
  *(v16 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore) = v18;
  return v16;
}

uint64_t MLS.NegativeDeliveryOperation.init(message:group:originalEventIdentifier:triggeringError:context:featureFlagsStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8)
{
  v22 = a7[1];
  v23 = *a7;
  v15 = *(a7 + 4);
  v16 = *a8;
  Logger.init(subsystem:category:)();
  v17 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v17;
  *(v8 + 48) = a1[2];
  *(v8 + 58) = *(a1 + 42);
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v18 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  v19 = type metadata accessor for MLS.MLSError();
  (*(*(v19 - 8) + 32))(v8 + v18, a6, v19);
  v20 = v8 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  *v20 = v23;
  *(v20 + 16) = v22;
  *(v20 + 32) = v15;
  *(v8 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore) = v16;
  return v8;
}

uint64_t MLS.NegativeDeliveryOperation.isDisabled.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore);
  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(3), (v4 & 1) == 0))
  {
    v11[3] = &type metadata for SMAFeatureFlagsKey;
    v11[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v11[0]) = 3;

    v10 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);

    if ((v10 & 1) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(*(v2 + 56) + v3))
  {
    return 0;
  }

LABEL_4:

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context), *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 8), v11);
    _os_log_impl(&dword_264F1F000, v5, v6, "KeyUpdateOperation key roll check disabled { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  return 1;
}

uint64_t MLS.NegativeDeliveryOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[112] = v3;
  v4[111] = a2;
  v4[110] = a1;
  v6 = type metadata accessor for UUID();
  v4[113] = v6;
  v4[114] = *(v6 - 8);
  v4[115] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Group.Group.SignPublicApplicationMessageInput();
  v4[116] = v7;
  v4[117] = *(v7 - 8);
  v4[118] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Group.Message();
  v4[119] = v8;
  v4[120] = *(v8 - 8);
  v4[121] = swift_task_alloc();
  v4[122] = type metadata accessor for MetricCollector.Event(0);
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v9 = type metadata accessor for MLS.DeliveryNotificationStatus();
  v4[125] = v9;
  v4[126] = *(v9 - 8);
  v4[127] = swift_task_alloc();
  v10 = type metadata accessor for MLS.MlsClientFailureReason();
  v4[128] = v10;
  v4[129] = *(v10 - 8);
  v4[130] = swift_task_alloc();
  v11 = type metadata accessor for String.Encoding();
  v4[131] = v11;
  v4[132] = *(v11 - 8);
  v4[133] = swift_task_alloc();
  v4[134] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  v4[135] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:), v12, 0);
}

uint64_t MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v65 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 896);
  *(v0 + 872) = *(v0 + 1072);
  v5 = v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  v6 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context);
  *(v0 + 1088) = v6;
  v7 = *(v5 + 8);
  *(v0 + 1096) = v7;

  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;
  *(v0 + 1104) = v8;
  *(v0 + 1112) = v9;
  v11 = *(v2 + 8);
  v11(v1, v3);
  if (v10 >> 60 == 15)
  {

    lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
    swift_allocError();
    *v12 = 14;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    swift_willThrow();
LABEL_5:

    v19 = *(v0 + 8);

    return v19();
  }

  v13 = *(v0 + 1064);
  v14 = *(v0 + 1048);
  static String.Encoding.utf8.getter();
  v57 = v7;
  v15 = String.data(using:allowLossyConversion:)();
  v17 = v16;
  *(v0 + 1120) = v15;
  *(v0 + 1128) = v16;
  v11(v13, v14);
  if (v17 >> 60 == 15)
  {

    lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
    swift_allocError();
    *v18 = 15;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
    outlined consume of Data?(v8, v10);
    goto LABEL_5;
  }

  v53 = v6;
  v58 = (v0 + 680);
  v59 = v17;
  v21 = *(v0 + 1040);
  v22 = *(v0 + 1032);
  v60 = v15;
  v23 = *(v0 + 1016);
  v24 = *(v0 + 1008);
  v54 = *(v0 + 1024);
  v55 = *(v0 + 1000);
  v56 = *(v0 + 896);
  v25 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  *(v0 + 1136) = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  outlined copy of Data._Representation(v8, v10);
  v52 = v25;
  MLS.MLSError.mlsClientFailureReason.getter();
  v26 = MLS.MlsClientFailureReason.rawValue.getter();
  (*(v22 + 8))(v21, v54);
  static MLS.MlsClientFailureReason.invalidCredential.getter();
  LOWORD(v25) = MLS.MlsClientFailureReason.rawValue.getter();
  (*(v24 + 8))(v23, v55);
  *(v0 + 680) = v60;
  *(v0 + 688) = v59;
  *(v0 + 696) = 1;
  *(v0 + 704) = v8;
  *(v0 + 712) = v10;
  *(v0 + 720) = xmmword_2651B5F50;
  *(v0 + 736) = v26 | (v25 << 16);
  v27 = *(v0 + 696);
  *(v0 + 616) = *(v0 + 680);
  *(v0 + 632) = v27;
  *(v0 + 648) = *(v0 + 712);
  *(v0 + 660) = *(v0 + 724);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v0 + 616, v0 + 552);
  *(v0 + 1144) = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_logger;
  swift_retain_n();
  outlined copy of Data?(v60, v59);
  outlined init with copy of MLS.EncryptedRCS.SigningInput(v0 + 680, v0 + 744);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 896);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v63[0] = v33;
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v30 + 96), *(v30 + 104), v63);
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v57, v63);
    *(v31 + 22) = 2112;
    v34 = type metadata accessor for MLS.MLSError();
    lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
    swift_allocError();
    (*(*(v34 - 8) + 16))(v35, v56 + v52, v34);
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v36;
    *v32 = v36;
    _os_log_impl(&dword_264F1F000, v28, v29, "NegativeDeliveryOperation signing { identifier: %s, negativeDeliveryID: %s, error: %@ }", v31, 0x20u);
    outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v32, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v33, -1, -1);
    MEMORY[0x266755550](v31, -1, -1);
  }

  v37 = *(v0 + 992);
  v38 = *(v0 + 984);
  v39 = *(v0 + 976);
  v40 = *(v0 + 888);
  Date.init()();
  v41 = *(v39 + 20);
  v42 = type metadata accessor for Date();
  (*(*(v42 - 8) + 56))(v37 + v41, 1, 1, v42);
  outlined init with take of MetricCollector.Event(v37, v38);
  v43 = *(v0 + 872);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v63[0] = v43;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v45 = *&v63[0];

  *(v0 + 872) = v45;
  v46 = v40[3];
  v47 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v46);
  v48 = *(v0 + 696);
  v63[0] = *v58;
  v63[1] = v48;
  v64[0] = *(v0 + 712);
  *(v64 + 12) = *(v0 + 724);
  MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter(v62);
  outlined destroy of MLS.EncryptedRCS.SigningInput(v58);
  outlined copy of Data._Representation(v60, v59);
  MLS.Group.Group.SignPublicApplicationMessageInput.init(verifiableDerivedContent:messageID:)();
  v61 = (*(v47 + 120) + **(v47 + 120));
  v49 = swift_task_alloc();
  *(v0 + 1152) = v49;
  *v49 = v0;
  v49[1] = MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:);
  v50 = *(v0 + 968);
  v51 = *(v0 + 944);

  return v61(v50, v51, v46, v47);
}

{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v3 = v2[135];
    (*(v2[117] + 8))(v2[118], v2[116]);

    v4 = MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v3 = v2[135];
    (*(v2[117] + 8))(v2[118], v2[116]);
    v4 = MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v65 = v0;
  v1 = *(v0 + 1096);
  v60 = *(v0 + 1088);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = *(v0 + 904);
  v5 = *(v0 + 896);
  v6._countAndFlagsBits = 0x534C4D7466697753;
  v6._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v6);

  UUID.init()();
  v7 = UUID.uuidString.getter();
  v56 = v8;
  v58 = v7;
  (*(v3 + 8))(v2, v4);
  v9 = *(v5 + 48);
  v10 = *(v5 + 56);
  v11 = *(v5 + 64);
  v12 = *(v5 + 72);
  outlined init with copy of MLS.EncryptedRCS.SigningInput(v0 + 680, v0 + 808);
  outlined copy of MLS.AllMember(v9, v10);
  v13 = MLS.Group.GroupInfo.rawRepresentation.getter();
  *(v0 + 200) = v60;
  *&v63[39] = *(v0 + 584);
  *&v63[23] = *(v0 + 568);
  *&v63[7] = *(v0 + 552);
  *&v63[51] = *(v0 + 596);
  v14 = *(v0 + 872);
  *(v0 + 208) = v1;
  *(v0 + 216) = v58;
  *(v0 + 224) = v56;
  *(v0 + 232) = v9;
  *(v0 + 240) = v10;
  *(v0 + 248) = v11;
  *(v0 + 256) = v12;
  *(v0 + 257) = *v63;
  *(v0 + 320) = *&v63[63];
  *(v0 + 305) = *&v63[48];
  *(v0 + 289) = *&v63[32];
  *(v0 + 273) = *&v63[16];
  *(v0 + 328) = v13;
  *(v0 + 336) = v15;
  *(v0 + 344) = 0;
  *(v0 + 352) = xmmword_2651B5F50;
  *(v0 + 368) = v14;
  v16 = *(v0 + 200);
  v17 = *(v0 + 216);
  v18 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 32) = v17;
  *(v0 + 16) = v16;
  v19 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  v20 = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  *(v0 + 80) = v20;
  *(v0 + 64) = v18;
  v21 = *(v0 + 328);
  v22 = *(v0 + 344);
  *(v0 + 176) = *(v0 + 360);
  *(v0 + 160) = v22;
  *(v0 + 144) = v21;
  *(v0 + 128) = v19;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi15_(v0 + 16);
  swift_retain_n();

  outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 376, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v51 = *(v0 + 1136);
    v53 = *(v0 + 1120);
    v54 = *(v0 + 1128);
    v55 = *(v0 + 1104);
    v25 = *(v0 + 1096);
    v26 = *(v0 + 1088);
    v57 = *(v0 + 960);
    v59 = *(v0 + 1112);
    v61 = *(v0 + 952);
    v62 = *(v0 + 968);
    v27 = *(v0 + 896);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v64 = v52;
    *v28 = 136315650;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v27 + 96), *(v27 + 104), &v64);
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v64);
    *(v28 + 22) = 2112;
    v30 = type metadata accessor for MLS.MLSError();
    lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
    swift_allocError();
    (*(*(v30 - 8) + 16))(v31, v27 + v51, v30);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 24) = v32;
    *v29 = v32;
    _os_log_impl(&dword_264F1F000, v23, v24, "NegativeDeliveryOperation returning operation result { identifier: %s, negativeDeliveryID: %s, error: %@ }", v28, 0x20u);
    outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v52, -1, -1);
    MEMORY[0x266755550](v28, -1, -1);

    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.EncryptedRCS.SigningInput(v0 + 680);
    outlined consume of Data?(v53, v54);
    outlined consume of Data?(v55, v59);
    (*(v57 + 8))(v62, v61);
  }

  else
  {
    v33 = *(v0 + 1128);
    v34 = *(v0 + 1120);
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);
    v37 = *(v0 + 952);
    outlined consume of Data?(*(v0 + 1104), *(v0 + 1112));
    outlined consume of Data?(v34, v33);
    outlined destroy of MLS.EncryptedRCS.SigningInput(v0 + 680);
    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);

    (*(v36 + 8))(v35, v37);
  }

  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  v40 = *(v0 + 16);
  v41 = *(v0 + 32);
  v42 = *(v0 + 64);
  *(v39 + 32) = *(v0 + 48);
  *(v39 + 48) = v42;
  *v39 = v40;
  *(v39 + 16) = v41;
  v43 = *(v0 + 80);
  v44 = *(v0 + 96);
  v45 = *(v0 + 128);
  *(v39 + 96) = *(v0 + 112);
  *(v39 + 112) = v45;
  *(v39 + 64) = v43;
  *(v39 + 80) = v44;
  v46 = *(v0 + 144);
  v47 = *(v0 + 160);
  v48 = *(v0 + 176);
  *(v39 + 176) = *(v0 + 192);
  *(v39 + 144) = v47;
  *(v39 + 160) = v48;
  *(v39 + 128) = v46;
  *(v39 + 184) = 0u;
  *(v39 + 200) = 0u;
  *(v39 + 216) = 0u;
  *(v39 + 232) = 0u;
  *(v39 + 248) = 0;
  *(v39 + 256) = 2;
  *(v39 + 264) = 1;
  *(v39 + 352) = 0;
  *(v39 + 320) = 0u;
  *(v39 + 336) = 0u;
  *(v39 + 288) = 0u;
  *(v39 + 304) = 0u;
  *(v39 + 272) = 0u;
  *(v39 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v38, v39 + 368);
  *(v39 + 408) = 0;
  *(v39 + 416) = *(v0 + 872);
  *(v39 + 424) = 0;
  *(v39 + 432) = 0;

  v49 = *(v0 + 8);

  return v49();
}

{
  v1 = v0[141];
  v2 = v0[140];
  outlined consume of Data?(v0[138], v0[139]);
  outlined consume of Data?(v2, v1);
  outlined destroy of MLS.EncryptedRCS.SigningInput((v0 + 85));

  v3 = v0[1];

  return v3();
}

char *MLS.NegativeDeliveryOperation.deinit()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  outlined consume of Data._Representation(*(v0 + 2), *(v0 + 3));

  outlined consume of MLS.AllMember(v1, v2);

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  v4 = type metadata accessor for MLS.MLSError();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 16];
  v6 = *&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 24];

  outlined consume of Data?(v5, v6);

  v7 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t MLS.NegativeDeliveryOperation.__deallocating_deinit()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  outlined consume of Data._Representation(*(v0 + 2), *(v0 + 3));

  outlined consume of MLS.AllMember(v1, v2);

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  v4 = type metadata accessor for MLS.MLSError();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 16];
  v6 = *&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 24];

  outlined consume of Data?(v5, v6);

  v7 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.NegativeDeliveryOperation(uint64_t a1)
{
  v6 = (*(**v1 + 192) + **(**v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.NegativeDeliveryOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 200) + **(**v4 + 200));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.group.getter in conformance MLS.NegativeDeliveryOperation()
{
  v1 = *(*v0 + 80);

  return v1;
}

uint64_t protocol witness for MLS.GroupOperation.context.getter in conformance MLS.NegativeDeliveryOperation@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.NegativeDeliveryOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey()
{
  result = lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey;
  if (!lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey;
  if (!lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError()
{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

uint64_t outlined init with take of MetricCollector.Event(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCollector.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for MLS.NegativeDeliveryOperation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError(&lazy protocol witness table cache variable for type MLS.NegativeDeliveryOperation and conformance MLS.NegativeDeliveryOperation, type metadata accessor for MLS.NegativeDeliveryOperation, &protocol conformance descriptor for MLS.NegativeDeliveryOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MLS.NegativeDeliveryOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.NegativeDeliveryOperation;
  if (!type metadata singleton initialization cache for MLS.NegativeDeliveryOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.NegativeDeliveryOperation(uint64_t a1)
{
  result = type metadata accessor for MLS.MLSError();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.NegativeDeliveryOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 200) + **(*v4 + 200));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)(uint64_t *a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v7;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v12 = type metadata accessor for MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement();
  *(v8 + 56) = v12;
  *(v8 + 64) = *(v12 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  v13 = type metadata accessor for MLS.Client.KeyPackage();
  *(v8 + 88) = v13;
  *(v8 + 96) = *(v13 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v14 = type metadata accessor for Date();
  *(v8 + 152) = v14;
  *(v8 + 160) = *(v14 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v15 = type metadata accessor for MLS.Identity.Credential();
  *(v8 + 192) = v15;
  *(v8 + 200) = *(v15 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v16 = type metadata accessor for MLS.Identity.SigningIdentity();
  *(v8 + 224) = v16;
  *(v8 + 232) = *(v16 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v17 = swift_task_alloc();
  v18 = *a1;
  *(v8 + 264) = v17;
  *(v8 + 272) = v18;
  v19 = a2[1];
  *(v8 + 280) = *a2;
  *(v8 + 288) = v19;
  *(v8 + 296) = *a3;

  return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:), 0, 0);
}

uint64_t MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MLS.KeyPackageRetrievalResult(0, v4[3], v4[5], a4);
  v4[39] = MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(v5);
  v6 = swift_task_alloc();
  v4[40] = v6;
  *v6 = v4;
  v6[1] = MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:);
  v7 = v4[4];
  v8 = v4[2];

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v8, v7);
}

uint64_t MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)(uint64_t a1)
{
  v3 = *v2;
  v3[41] = a1;
  v3[42] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:), 0, 0);
  }
}

uint64_t MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)()
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = v0[41];
  v100 = v0[42];
  v6 = v4 + 56;
  v5 = *(v4 + 56);
  v7 = -1;
  v99 = v4;
  v8 = -1 << *(v4 + 32);
  v85 = v0[39];
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v0[20];
  v10 = v7 & v5;
  v11 = (63 - v8) >> 6;
  v101 = (v9 + 48);
  v92 = (v9 + 8);
  v93 = (v9 + 32);
  v98 = (v0[25] + 8);
  v83 = v0[12];
  v97 = v0[29];
  v96 = (v97 + 8);
  v84 = v0[8];
  v89 = MEMORY[0x277D84F90];
  v94 = v11;
  v95 = v6;
LABEL_4:
  while (2)
  {
    v86 = v2;
    v87 = v1;
    while (1)
    {
      if (!v10)
      {
        while (1)
        {
          v12 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v12 >= v11)
          {

            v67 = v86 & v87;
            goto LABEL_47;
          }

          v10 = *(v6 + 8 * v12);
          ++v3;
          if (v10)
          {
            v3 = v12;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_12:
      v14 = v0[32];
      v13 = v0[33];
      v15 = v0[28];
      v17 = v0[18];
      v16 = v0[19];
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v91 = *(v97 + 16);
      v91(v13, *(v99 + 48) + *(v97 + 72) * (v18 | (v3 << 6)), v15);
      (*(v97 + 32))(v14, v13, v15);
      MLS.Identity.SigningIdentity.credential.getter();
      MLS.Identity.Credential.credentialNotAfter.getter();
      v19 = *v101;
      if ((*v101)(v17, 1, v16) == 1)
      {
        outlined destroy of Date?(v0[18]);
        goto LABEL_16;
      }

      v21 = v0[22];
      v20 = v0[23];
      v22 = v0[19];
      (*v93)(v20, v0[18], v22);
      Date.init()();
      v23 = static Date.< infix(_:_:)();
      v24 = *v92;
      (*v92)(v21, v22);
      v24(v20, v22);
      if (v23)
      {
        break;
      }

LABEL_16:
      MLS.Identity.Credential.participantInfoNotAfter.getter();
      if (v100)
      {
        v69 = v0[32];
        v71 = v0[27];
        v70 = v0[28];
        v72 = v0[24];

        (*v98)(v71, v72);
        (*v96)(v69, v70);
LABEL_51:

        goto LABEL_52;
      }

      v26 = v0[19];
      v27 = v0[17];
      v28 = v19(v27, 1, v26);
      v29 = v0[27];
      v30 = v0[24];
      if (v28 == 1)
      {
        (*v98)(v0[27], v0[24]);
        outlined destroy of Date?(v27);
        v100 = 0;
        goto LABEL_6;
      }

      v32 = v0[21];
      v31 = v0[22];
      (*v93)(v32, v27, v26);
      Date.init()();
      v90 = static Date.< infix(_:_:)();
      v33 = *v92;
      (*v92)(v31, v26);
      v33(v32, v26);
      v25 = *v98;
      (*v98)(v29, v30);
      v100 = 0;
      if (v90)
      {
        goto LABEL_19;
      }

LABEL_6:
      v11 = v94;
      v6 = v95;
      (*v96)(v0[32], v0[28]);
    }

    v25 = *v98;
    (*v98)(v0[27], v0[24]);
LABEL_19:
    v34 = v0[26];
    v35 = v0[24];
    MLS.Identity.SigningIdentity.credential.getter();
    v36 = MLS.Identity.Credential.telURI.getter();
    result = (v25)(v34, v35);
    if (!v36)
    {
      goto LABEL_6;
    }

    v38 = *(v36 + 16);
    if (!v38)
    {
LABEL_55:

      v74 = v0[32];
      v75 = v0[28];

      lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
      swift_allocError();
      *v76 = 6;
      *(v76 + 8) = 0;
      *(v76 + 16) = 0;
      swift_willThrow();

      (*v96)(v74, v75);
LABEL_52:

      v73 = v0[1];

      return v73();
    }

    v39 = 0;
    v40 = (v36 + 40);
    while (1)
    {
      if (v39 >= *(v36 + 16))
      {
        __break(1u);
        return result;
      }

      v42 = *(v40 - 1);
      v41 = *v40;
      v43 = *(v85 + 16);

      if (v43)
      {
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
        if (v45)
        {
          v88 = v0[32];
          v81 = v0[31];
          v82 = v0[28];
          v54 = v0[15];
          v55 = v0[16];
          v56 = v0[14];
          v57 = v0[11];
          v58 = v44;

          v59 = *(v85 + 56) + *(v83 + 72) * v58;
          v60 = *(v83 + 16);
          v60(v54, v59, v57);
          (*(v83 + 32))(v55, v54, v57);
          v91(v81, v88, v82);
          v60(v56, v55, v57);
          MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.init(target:newKeyPackage:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMR, MEMORY[0x277D6ABB0]);
          }

          v11 = v94;
          v62 = v89[2];
          v61 = v89[3];
          if (v62 >= v61 >> 1)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v89, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMR, MEMORY[0x277D6ABB0]);
          }

          v63 = v0[32];
          v64 = v0[28];
          v65 = v0[10];
          v66 = v0[7];
          (*(v83 + 8))(v0[16], v0[11]);
          (*v96)(v63, v64);
          v89[2] = v62 + 1;
          (*(v84 + 32))(v89 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v62, v65, v66);
          v2 = 0;
          v1 = 1;
          v6 = v95;
          if ((v86 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_57;
        }
      }

      if (v42 == v0[35] && v41 == v0[36])
      {
        break;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
        goto LABEL_33;
      }

      ++v39;
      v40 += 2;
      if (v38 == v39)
      {
        goto LABEL_55;
      }
    }

LABEL_33:

    v49 = v0[37];
    v48 = v0[38];
    v91(v0[30], v0[32], v0[28]);
    outlined copy of Data._Representation(v49, v48);
    MLS.Client.KeyPackage.init(fromRaw:)();
    if (v100)
    {
      v77 = v0[32];
      v78 = v0[30];
      v79 = v0[28];

      v80 = *v96;
      (*v96)(v78, v79);
      v80(v77, v79);
      goto LABEL_51;
    }

    MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.init(target:newKeyPackage:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMR, MEMORY[0x277D6ABB0]);
    }

    v51 = v89[2];
    v50 = v89[3];
    if (v51 >= v50 >> 1)
    {
      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v89, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMR, MEMORY[0x277D6ABB0]);
    }

    v52 = v0[9];
    v53 = v0[7];
    (*v96)(v0[32], v0[28]);
    v89[2] = v51 + 1;
    (*(v84 + 32))(v89 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v51, v52, v53);
    v100 = 0;
    v1 = 0;
    v2 = 1;
    v11 = v94;
    v6 = v95;
    if ((v87 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_57:

  v67 = 1;
LABEL_47:
  v102 = v67;

  v68 = v0[1];

  return v68(v89, v102 & 1);
}

uint64_t MLS.SwiftMLSGroupProtocol.groupVersion.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = MLS.SwiftMLSGroupProtocol.groupVersion.getter;

  return v9(a2, a3);
}

uint64_t MLS.SwiftMLSGroupProtocol.groupVersion.getter(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v10 = (*(v3[7] + 24) + **(v3[7] + 24));
    v7 = swift_task_alloc();
    v3[10] = v7;
    *v7 = v4;
    v7[1] = MLS.SwiftMLSGroupProtocol.groupVersion.getter;
    v8 = v3[7];
    v9 = v3[6];

    return v10(v9, v8);
  }
}

{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.groupVersion.getter, 0, 0);
}

uint64_t MLS.SwiftMLSGroupProtocol.groupVersion.getter()
{
  v1 = *(v0 + 88);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    if ((v2 & 0x100000000) != 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    *v3 = v2;
    *(v3 + 8) = v2;
    *(v3 + 16) = v1;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MLS.Group.Member();
  v2[2] = v5;
  v2[3] = *(v5 - 8);
  v2[4] = swift_task_alloc();
  v6 = type metadata accessor for MLS.Identity.SigningIdentity();
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  v9 = (*(a2 + 16) + **(a2 + 16));
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter;

  return v9(a1, a2);
}

uint64_t MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter, 0, 0);
  }
}

uint64_t MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    v20 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v5 = v20;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v18 = *(v4 + 56);
    v19 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[4];
      v10 = v0[2];
      v19(v9, v7, v10);
      MLS.Group.Member.identity.getter();
      (*v8)(v9, v10);
      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[7];
      v14 = v0[5];
      *(v20 + 16) = v12 + 1;
      (*(v3 + 32))(v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v7 += v18;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO07SigningD0V_SayAJGTt0g5Tf4g_n(v5);

  v16 = v0[1];

  return v16(v15);
}

uint64_t MLS.SwiftMLSGroupProtocol.memberCredentials.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MLS.Identity.SigningIdentity();
  v2[2] = v5;
  v2[3] = *(v5 - 8);
  v2[4] = swift_task_alloc();
  v6 = type metadata accessor for MLS.Group.Member();
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Identity.Credential();
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  v10 = (*(a2 + 16) + **(a2 + 16));
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = MLS.SwiftMLSGroupProtocol.memberCredentials.getter;

  return v10(a1, a2);
}

uint64_t MLS.SwiftMLSGroupProtocol.memberCredentials.getter(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.memberCredentials.getter, 0, 0);
  }
}

uint64_t MLS.SwiftMLSGroupProtocol.memberCredentials.getter()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[6];
    v5 = v0[3];
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v6 = v24;
    v7 = *(v4 + 16);
    v4 += 16;
    v8 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v21 = *(v4 + 56);
    v22 = v7;
    v23 = v3;
    v20 = (v4 - 8);
    do
    {
      v9 = v0[7];
      v11 = v0[4];
      v10 = v0[5];
      v12 = v0[2];
      v22(v9, v8, v10);
      MLS.Group.Member.identity.getter();
      MLS.Identity.SigningIdentity.credential.getter();
      (*(v5 + 8))(v11, v12);
      (*v20)(v9, v10);
      v14 = *(v24 + 16);
      v13 = *(v24 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[10];
      v16 = v0[8];
      *(v24 + 16) = v14 + 1;
      (*(v23 + 32))(v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v14, v15, v16);
      v8 += v21;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(v6);

  v18 = v0[1];

  return v18(v17);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO10EventQueueC0G0VGMR, type metadata accessor for MLS.EventQueue.Event);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO16PersistenceQueueC0H4ItemOGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO16PersistenceQueueC0H4ItemOGMR, type metadata accessor for MLS.PersistenceQueue.QueueItem);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMR, &type metadata for MLS.AllMember);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMR, &type metadata for MLS.PersistedMember);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  Hasher.init(_seed:)();
  if (v4 < 0)
  {
    MEMORY[0x266754DE0](1);
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    if (v4)
    {
      Hasher._combine(_:)(0);
      goto LABEL_7;
    }

    Hasher._combine(_:)(1u);
    v8 = a3;
  }

  else
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v8 = 0;
  }

  MEMORY[0x266754DE0](v8);
LABEL_7:
  v9 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v4, v9);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError()
{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x266754DC0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9600]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  a5(v14, a3, a4);
  v11 = Hasher._finalize()();

  return a6(a1, a2, a3, a4, v11);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  v2 = a1[4];
  v3 = a1[5];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v2);
  MEMORY[0x266754E10](v3);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  String.hash(into:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v22 = ~v6;
    do
    {
      v12 = *(v24 + 48) + 32 * v7;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v16 < 0)
      {
        if ((a4 & 0x80) == 0)
        {
          goto LABEL_4;
        }

        if (v14 == a1 && v13 == a2)
        {
          outlined copy of MLS.AllMember(a1, a2);
          outlined copy of MLS.AllMember(a1, a2);
          outlined consume of MLS.AllMember(a1, a2);
          outlined consume of MLS.AllMember(a1, a2);
          if (v16)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of MLS.AllMember(a1, a2);
          outlined copy of MLS.AllMember(v14, v13);
          outlined consume of MLS.AllMember(v14, v13);
          outlined consume of MLS.AllMember(a1, a2);
          if ((v20 & 1) == 0)
          {
            goto LABEL_5;
          }

          if (v16)
          {
LABEL_20:
            if (a4)
            {
              return v7;
            }

            goto LABEL_5;
          }
        }

        if ((a4 & 1) == 0 && v15 == a3)
        {
          return v7;
        }
      }

      else
      {
        if (a4 < 0)
        {
LABEL_4:
          outlined copy of MLS.AllMember(a1, a2);
          outlined copy of MLS.AllMember(v14, v13);
          outlined consume of MLS.AllMember(v14, v13);
          outlined consume of MLS.AllMember(a1, a2);
          goto LABEL_5;
        }

        if (v14 == a1 && v13 == a2)
        {
          outlined copy of MLS.AllMember(a1, a2);
          outlined copy of MLS.AllMember(a1, a2);
          outlined consume of MLS.AllMember(a1, a2);
          outlined consume of MLS.AllMember(a1, a2);
          return v7;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of MLS.AllMember(a1, a2);
        outlined copy of MLS.AllMember(v14, v13);
        outlined consume of MLS.AllMember(v14, v13);
        outlined consume of MLS.AllMember(a1, a2);
        if (v18)
        {
          return v7;
        }
      }

LABEL_5:
      v7 = (v7 + 1) & v22;
    }

    while (((*(v23 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      if (*v11 == a1 && v11[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9610]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          outlined copy of Data._Representation(v17, v16);
          closure #1 in static Data.== infix(_:_:)(v45, v9, v8, &v44);
          outlined consume of Data._Representation(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        MEMORY[0x2667538A0]();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        closure #1 in static Data.== infix(_:_:)(v34, a1, a2, v45);
        outlined consume of Data._Representation(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      outlined copy of Data._Representation(v17, v16);
      closure #1 in static Data.== infix(_:_:)(v45, v9, v8, &v44);
      outlined consume of Data._Representation(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v55[3] = *MEMORY[0x277D85DE8];
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  v52 = v5 + 64;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v5;
    v9 = a4;
    v11 = a2;
    v12 = a1;
    v51 = ~v6;
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 == 0xC000000000000000;
    }

    v14 = !v13;
    v49 = v14;
    v15 = a4 >> 62;
    v16 = __OFSUB__(HIDWORD(a3), a3);
    v47 = v16;
    v46 = HIDWORD(a3) - a3;
    v48 = BYTE6(a4);
    v50 = a4 >> 62;
    while (1)
    {
      v17 = (*(v8 + 48) + 32 * v7);
      v19 = v17[2];
      v18 = v17[3];
      if (*v17 != v12 || v17[1] != v11)
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v50;
        v12 = a1;
        if ((v21 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v22 = v18 >> 62;
      if (v18 >> 62 == 3)
      {
        break;
      }

      if (v22 > 1)
      {
        if (v22 != 2)
        {
          goto LABEL_41;
        }

        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        v29 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v29)
        {
          goto LABEL_70;
        }

        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v22)
      {
        LODWORD(v26) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_69;
        }

        v26 = v26;
        if (v15 <= 1)
        {
LABEL_38:
          v30 = v48;
          if (v15)
          {
            v30 = v46;
            if (v47)
            {
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
            }
          }

          goto LABEL_44;
        }
      }

      else
      {
        v26 = BYTE6(v18);
        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      if (v15 != 2)
      {
        if (!v26)
        {
          return v7;
        }

        goto LABEL_13;
      }

      v32 = *(a3 + 16);
      v31 = *(a3 + 24);
      v29 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v29)
      {
        goto LABEL_68;
      }

LABEL_44:
      if (v26 != v30)
      {
        goto LABEL_13;
      }

      if (v26 < 1)
      {
        return v7;
      }

      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v33 = *(v19 + 16);
          v43 = *(v19 + 24);
          outlined copy of Data._Representation(a3, v9);
          outlined copy of Data._Representation(a3, v9);
          outlined copy of Data._Representation(a3, v9);

          outlined copy of Data._Representation(v19, v18);
          v34 = __DataStorage._bytes.getter();
          if (v34)
          {
            v35 = __DataStorage._offset.getter();
            if (__OFSUB__(v33, v35))
            {
              goto LABEL_73;
            }

            v34 += v33 - v35;
          }

          if (__OFSUB__(v43, v33))
          {
            goto LABEL_72;
          }

          MEMORY[0x2667538A0]();
          v36 = v34;
          v9 = a4;
          closure #1 in static Data.== infix(_:_:)(v36, a3, a4, v55);
          outlined consume of Data._Representation(a3, a4);
          goto LABEL_63;
        }

        memset(v55, 0, 14);
        outlined copy of Data._Representation(a3, v9);
        outlined copy of Data._Representation(a3, v9);

        outlined copy of Data._Representation(v19, v18);
      }

      else
      {
        if (v22)
        {
          if (v19 >> 32 < v19)
          {
            goto LABEL_71;
          }

          outlined copy of Data._Representation(a3, v9);
          outlined copy of Data._Representation(a3, v9);
          outlined copy of Data._Representation(a3, v9);

          outlined copy of Data._Representation(v19, v18);
          v37 = __DataStorage._bytes.getter();
          if (v37)
          {
            v38 = __DataStorage._offset.getter();
            if (__OFSUB__(v19, v38))
            {
              goto LABEL_74;
            }

            v37 += v19 - v38;
          }

          MEMORY[0x2667538A0]();
          v39 = v37;
          v9 = a4;
          closure #1 in static Data.== infix(_:_:)(v39, a3, a4, v55);
          outlined consume of Data._Representation(a3, a4);
          v8 = v42;
LABEL_63:

          outlined consume of Data._Representation(v19, v18);
          outlined consume of Data._Representation(a3, v9);
          v40 = v55[0];
          outlined consume of Data._Representation(a3, v9);
          v11 = a2;
          v12 = a1;
          v15 = v50;
          if (v40)
          {
            return v7;
          }

          goto LABEL_13;
        }

        v55[0] = v19;
        LOWORD(v55[1]) = v18;
        BYTE2(v55[1]) = BYTE2(v18);
        BYTE3(v55[1]) = BYTE3(v18);
        BYTE4(v55[1]) = BYTE4(v18);
        BYTE5(v55[1]) = BYTE5(v18);
        outlined copy of Data._Representation(a3, v9);
        outlined copy of Data._Representation(a3, v9);

        outlined copy of Data._Representation(v19, v18);
      }

      closure #1 in static Data.== infix(_:_:)(v55, a3, v9, &v54);

      outlined consume of Data._Representation(v19, v18);
      outlined consume of Data._Representation(a3, v9);
      outlined consume of Data._Representation(a3, v9);
      v12 = a1;
      v15 = v50;
      if (v54)
      {
        return v7;
      }

LABEL_13:
      v7 = (v7 + 1) & v51;
      if (((*(v52 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return v7;
      }
    }

    if (v19)
    {
      v23 = 0;
    }

    else
    {
      v23 = v18 == 0xC000000000000000;
    }

    v25 = !v23 || v15 < 3;
    if (((v25 | v49) & 1) == 0)
    {
      return v7;
    }

LABEL_41:
    v26 = 0;
    if (v15 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v60[3] = *MEMORY[0x277D85DE8];
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v57 = ~v4;
    v54 = a1[5];
    v55 = a1[4];
    v7 = a1[2];
    v6 = a1[3];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6 == 0xC000000000000000;
    }

    v9 = !v8;
    v53 = v9;
    v10 = v6 >> 62;
    v11 = __OFSUB__(HIDWORD(v7), v7);
    v49 = v11;
    v12 = *a1;
    v13 = a1[1];
    v48 = HIDWORD(v7) - v7;
    v50 = a1[3];
    v52 = BYTE6(v6);
    v45 = a1[2];
    v46 = v2 + 64;
    v56 = v6 >> 62;
    v58 = *a1;
    while (1)
    {
      v15 = (*(v2 + 48) + 48 * v5);
      v17 = v15[2];
      v16 = v15[3];
      v19 = v15[4];
      v18 = v15[5];
      if (*v15 != v12 || v15[1] != v13)
      {
        v21 = v15[4];
        v22 = v13;
        v23 = v15[5];
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v23;
        v13 = v22;
        v19 = v21;
        v12 = v58;
        v10 = v56;
        if ((v24 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v25 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v25 > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_44;
        }

        v31 = *(v17 + 16);
        v30 = *(v17 + 24);
        v32 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v32)
        {
          goto LABEL_80;
        }

        if (v10 > 1)
        {
          goto LABEL_45;
        }
      }

      else if (v25)
      {
        LODWORD(v29) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_79;
        }

        v29 = v29;
        if (v10 > 1)
        {
LABEL_45:
          if (v10 != 2)
          {
            if (v29)
            {
              goto LABEL_16;
            }

            goto LABEL_12;
          }

          v35 = *(v7 + 16);
          v34 = *(v7 + 24);
          v32 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (v32)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
          }

          goto LABEL_47;
        }
      }

      else
      {
        v29 = BYTE6(v16);
        if (v10 > 1)
        {
          goto LABEL_45;
        }
      }

LABEL_41:
      v33 = v52;
      if (v10)
      {
        v33 = v48;
        if (v49)
        {
          goto LABEL_78;
        }
      }

LABEL_47:
      if (v29 != v33)
      {
        goto LABEL_16;
      }

      if (v29 >= 1)
      {
        v51 = v18;
        if (v25 > 1)
        {
          v36 = v50;
          if (v25 == 2)
          {
            v37 = v7;
            v38 = *(v17 + 16);
            v39 = *(v17 + 24);
            outlined copy of Data._Representation(v37, v50);
            outlined copy of Data._Representation(v37, v50);
            outlined copy of Data._Representation(v37, v50);

            outlined copy of Data._Representation(v17, v16);
            v40 = __DataStorage._bytes.getter();
            if (v40)
            {
              v41 = __DataStorage._offset.getter();
              if (__OFSUB__(v38, v41))
              {
                goto LABEL_83;
              }

              v40 += v38 - v41;
            }

            if (__OFSUB__(v39, v38))
            {
              goto LABEL_82;
            }

            goto LABEL_67;
          }

          memset(v60, 0, 14);
          outlined copy of Data._Representation(v7, v50);
          outlined copy of Data._Representation(v7, v50);

          outlined copy of Data._Representation(v17, v16);
LABEL_69:
          closure #1 in static Data.== infix(_:_:)(v60, v7, v36, &v59);

          outlined consume of Data._Representation(v17, v16);
          outlined consume of Data._Representation(v7, v36);
          outlined consume of Data._Representation(v7, v36);
          v43 = v59;
        }

        else
        {
          v36 = v50;
          if (!v25)
          {
            v60[0] = v17;
            LOWORD(v60[1]) = v16;
            BYTE2(v60[1]) = BYTE2(v16);
            BYTE3(v60[1]) = BYTE3(v16);
            BYTE4(v60[1]) = BYTE4(v16);
            BYTE5(v60[1]) = BYTE5(v16);
            outlined copy of Data._Representation(v7, v50);
            outlined copy of Data._Representation(v7, v50);

            outlined copy of Data._Representation(v17, v16);
            goto LABEL_69;
          }

          if (v17 >> 32 < v17)
          {
            goto LABEL_81;
          }

          outlined copy of Data._Representation(v45, v50);
          outlined copy of Data._Representation(v45, v50);
          outlined copy of Data._Representation(v45, v50);

          outlined copy of Data._Representation(v17, v16);
          v40 = __DataStorage._bytes.getter();
          if (v40)
          {
            v42 = __DataStorage._offset.getter();
            if (__OFSUB__(v17, v42))
            {
              goto LABEL_84;
            }

            v40 += v17 - v42;
          }

LABEL_67:
          MEMORY[0x2667538A0]();
          v7 = v45;
          closure #1 in static Data.== infix(_:_:)(v40, v45, v50, v60);
          outlined consume of Data._Representation(v45, v50);

          outlined consume of Data._Representation(v17, v16);
          outlined consume of Data._Representation(v45, v50);
          v43 = LOBYTE(v60[0]);
          outlined consume of Data._Representation(v45, v50);
        }

        v3 = v46;
        v10 = v56;
        v12 = v58;
        if (v43 && v19 == v55)
        {
          v2 = v47;
          if (v51 == v54)
          {
            return v5;
          }
        }

        else
        {
          v2 = v47;
        }

        goto LABEL_16;
      }

LABEL_12:
      if (v19 == v55 && v18 == v54)
      {
        return v5;
      }

LABEL_16:
      v5 = (v5 + 1) & v57;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (v17)
    {
      v26 = 0;
    }

    else
    {
      v26 = v16 == 0xC000000000000000;
    }

    v28 = !v26 || v10 < 3;
    if (((v28 | v53) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_44:
    v29 = 0;
    if (v10 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  return v5;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v21 = a1[3];
    v22 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v4);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v6 && v10[1] == v5;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = v12 == v22 && v11 == v21;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v17 = v13 == v7 && v14 == v8;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.ExpiredCredentialReplacementResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for MLS.ExpiredCredentialReplacementResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.init(version:messageID:originalMessageID:failureReason:deliveryStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 a6@<W5>, __int16 a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = a6;
  *(a8 + 42) = a7;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  return result;
}

__n128 MLS.EncryptedRCS.SigningInput.init(deliveryIMDN:messageID:)@<Q0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 10);
  *(a4 + 8) = a3;
  *(a4 + 16) = v4;
  *(a4 + 24) = *(a1 + 4);
  result = *(a1 + 12);
  *(a4 + 40) = result;
  *(a4 + 56) = v5;
  *a4 = a2;
  return result;
}

double MLS.SigningInput.init(encryptedRCSSigningInput:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 12) = *(a1 + 44);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v6, v8);
  v4 = v8[1];
  *a2 = v8[0];
  a2[1] = v4;
  a2[2] = v9[0];
  result = *(v9 + 12);
  *(a2 + 44) = *(v9 + 12);
  return result;
}

uint64_t MLS.EncryptedRCS.Member.uri.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *MLS.EncryptedRCS.Member.init(uri:platform:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3 & 1;
  return result;
}

uint64_t MLS.EncryptedRCS.Member.allMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24) | 0x80;
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t MLS.EncryptedRCS.Member.init(allMember:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v5 < 0)
  {
    *a2 = v3;
    *(a2 + 8) = v2;
    *(a2 + 16) = v4;
    *(a2 + 24) = v5 & 1;
  }

  else
  {
    lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    swift_willThrow();
    return outlined consume of MLS.AllMember(v3, v2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError()
{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

uint64_t MLS.EncryptedRCS.Member.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[3])
  {
    MEMORY[0x2667545A0](v1, v2);
  }

  else
  {
    MEMORY[0x2667545A0](v1, v2);
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v3);
  }

  return 779314034;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.Member.CodingKeys()
{
  if (*v0)
  {
    return 0x6D726F6674616C70;
  }

  else
  {
    return 6910581;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.Member.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6910581 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.Member.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.Member.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.Member.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO6MemberV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO6MemberV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v11[0] = v1[2];
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  lazy protocol witness table accessor for type URI and conformance URI();
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v9)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void MLS.EncryptedRCS.Member.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v2);
  }
}

Swift::Int MLS.EncryptedRCS.Member.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v1);
  }

  return Hasher._finalize()();
}

uint64_t MLS.EncryptedRCS.Member.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO6MemberV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO6MemberV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type URI and conformance URI();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = v16;
  LOBYTE(v16) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v15;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for MLS.Member.uri.getter in conformance MLS.EncryptedRCS.Member@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for MLS.Member.allMember.getter in conformance MLS.EncryptedRCS.Member@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24) | 0x80;
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t protocol witness for MLS.Member.init(allMember:) in conformance MLS.EncryptedRCS.Member@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v5 < 0)
  {
    *a2 = v3;
    *(a2 + 8) = v2;
    *(a2 + 16) = v4;
    *(a2 + 24) = v5 & 1;
  }

  else
  {
    lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    swift_willThrow();
    return outlined consume of MLS.AllMember(v3, v2);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.EncryptedRCS.Member()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MLS.EncryptedRCS.Member(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.EncryptedRCS.Member(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v2);
  }

  return Hasher._finalize()();
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.messageID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.originalMessageID.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.init(messageID:era:originalMessageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  if (HIDWORD(a3))
  {
    __break(1u);
  }

  else
  {
    *(a6 + 16) = a3;
  }

  return result;
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.init(messageID:smallEra:originalMessageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 24) = a3;
  return result;
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter()
{
  v1 = v0[1];
  v8[0] = *v0;
  v8[1] = v1;
  v8[2] = v0[2];
  v2 = closure #1 in MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter(v8);
  v4 = v3;
  _StringGuts.grow(_:)(28);

  v5 = Data.description.getter();
  MEMORY[0x2667545A0](v5);

  MEMORY[0x2667545A0](0x203A617265202CLL, 0xE700000000000000);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v6);

  MEMORY[0x2667545A0](v2, v4);

  return 0x7373656D28444141;
}

unint64_t closure #1 in MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  outlined copy of Data._Representation(v3, v1);
  _StringGuts.grow(_:)(23);

  v4 = Data.description.getter();
  MEMORY[0x2667545A0](v4);

  outlined consume of Data?(v3, v1);
  return 0xD000000000000015;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys()
{
  v1 = 0x496567617373656DLL;
  v2 = 6386277;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6172456C6C616D73;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}