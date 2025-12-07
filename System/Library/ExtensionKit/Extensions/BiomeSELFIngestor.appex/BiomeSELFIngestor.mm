uint64_t sub_1000012B0()
{
  v0 = sub_10000758C();
  sub_100007378(v0, qword_1000100E8);
  sub_1000052F4(v0, qword_1000100E8);
  return sub_10000757C();
}

uint64_t BiomeSELFIngestorExtension.ingest(dataPool:)(uint64_t a1)
{
  v1[2] = a1;
  sub_1000052AC(&qword_100010008, &qword_100007A18);
  v1[3] = swift_task_alloc();
  v2 = sub_1000052AC(&qword_100010010, &qword_100007A20);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = sub_1000073DC();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_1000052AC(&qword_100010018, &qword_100007A28);
  v1[13] = swift_task_alloc();
  v4 = sub_1000052AC(&qword_100010020, &qword_100007A30);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = sub_10000759C();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = sub_10000747C();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  sub_1000052AC(&qword_100010028, &qword_100007A38);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v7 = sub_10000754C();
  v1[28] = v7;
  v1[29] = *(v7 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  sub_1000052AC(&qword_100010030, &qword_100007A40);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v8 = sub_10000742C();
  v1[34] = v8;
  v1[35] = *(v8 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v9 = sub_10000744C();
  v1[38] = v9;
  v1[39] = *(v9 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();

  return _swift_task_switch(sub_100001804, 0, 0);
}

uint64_t sub_100001804()
{
  if (qword_1000100E0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000758C();
  *(v0 + 352) = sub_1000052F4(v1, qword_1000100E8);
  v2 = sub_10000756C();
  v3 = sub_10000763C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "INGESTING!", v4, 2u);
  }

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_1000075EC();
  v7 = [v5 initWithSuiteName:v6];
  *(v0 + 360) = v7;

  if (v7)
  {
    v8 = *(v0 + 344);
    v54 = *(v0 + 336);
    v66 = *(v0 + 312);
    v53 = *(v0 + 304);
    v9 = *(v0 + 296);
    v10 = *(v0 + 280);
    v61 = *(v0 + 272);
    v11 = *(v0 + 264);
    v50 = *(v0 + 248);
    v64 = *(v0 + 232);
    v62 = *(v0 + 224);
    v45 = *(v0 + 200);
    v51 = *(v0 + 216);
    v52 = *(v0 + 192);
    v48 = *(v0 + 184);
    v12 = *(v0 + 160);
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    sub_10000740C();
    swift_allocObject();
    *(v0 + 368) = sub_1000073FC();
    sub_10000743C();
    sub_1000052AC(&qword_100010038, &qword_100007A48);
    v43 = v14;
    *(v0 + 376) = *(v14 + 72);
    *(v0 + 664) = *(v14 + 80);
    *(v0 + 384) = swift_allocObject();
    *v9 = 0xD000000000000020;
    v9[1] = 0x8000000100007D50;
    v55 = enum case for IngestStreamId.swift(_:);
    v15 = *(v10 + 104);
    v63 = v15;
    *(v0 + 392) = v15;
    *(v0 + 400) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v9);
    sub_1000075AC();
    v16 = *(v12 + 56);
    *(v0 + 408) = v16;
    *(v0 + 416) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v58 = v16;
    v16(v11, 0, 1, v13);
    v60 = enum case for EventPath.root(_:);
    v56 = *(v64 + 104);
    v56(v50);
    v59 = *(v66 + 16);
    *(v0 + 424) = v59;
    *(v0 + 432) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v59(v54, v8, v53);
    v17 = sub_1000074EC();
    *(v0 + 440) = v17;
    v57 = v17;
    v42 = *(v17 - 8);
    v18 = *(v42 + 56);
    *(v0 + 448) = v18;
    *(v0 + 456) = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v18(v51, 1, 1, v17);
    sub_100006F58(0, &qword_100010040, SISchemaTopLevelUnionType_ptr);
    v49 = v11;
    sub_10000745C();
    *v9 = 0xD000000000000027;
    v9[1] = 0x8000000100007D80;
    v63(v9, v55, v61);
    sub_1000075AC();
    v58(v11, 0, 1, v13);
    (v56)(v50, v60, v62);
    v59(v54, v8, v53);
    v18(v51, 1, 1, v57);
    sub_1000052AC(&qword_100010048, &qword_100007A50);
    sub_10000749C();
    *(swift_allocObject() + 16) = xmmword_1000079E0;
    v46 = enum case for RequestLinkConfig.Direction.targetComponent(_:);
    v47 = *(v52 + 104);
    v47(v45);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    sub_10000745C();
    *v9 = 0xD000000000000028;
    v9[1] = 0x8000000100007DB0;
    v63(v9, v55, v61);
    sub_1000075AC();
    v58(v11, 0, 1, v13);
    (v56)(v50, v60, v62);
    v59(v54, v8, v53);
    v18(v51, 1, 1, v57);
    *(swift_allocObject() + 16) = xmmword_1000079E0;
    sub_1000075BC();
    sub_1000075BC();
    sub_10000746C();
    sub_10000745C();
    *v9 = 0xD000000000000029;
    v9[1] = 0x8000000100007DE0;
    v63(v9, v55, v61);
    sub_1000075AC();
    v58(v11, 0, 1, v13);
    (v56)(v50, v60, v62);
    v59(v54, v8, v53);
    v18(v51, 1, 1, v57);
    *(swift_allocObject() + 16) = xmmword_1000079F0;
    (v47)(v45, v46, v48);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    v44 = enum case for RequestLinkConfig.Direction.sourceComponent(_:);
    v47(v45);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    sub_10000745C();
    *v9 = 0xD000000000000023;
    v9[1] = 0x8000000100007E10;
    v63(v9, v55, v61);
    sub_1000075AC();
    v58(v11, 0, 1, v13);
    (v56)(v50, v60, v62);
    v59(v54, v8, v53);
    v18(v51, 1, 1, v57);
    *(swift_allocObject() + 16) = xmmword_1000079F0;
    (v47)(v45, v44, v48);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    (v47)(v45, v44, v48);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    sub_10000745C();
    *v9 = 0xD000000000000024;
    v9[1] = 0x8000000100007E40;
    v63(v9, v55, v61);
    sub_1000075AC();
    v58(v11, 0, 1, v13);
    (v56)(v50, v60, v62);
    v59(v54, v8, v53);
    v18(v51, 1, 1, v57);
    *(swift_allocObject() + 16) = xmmword_1000079E0;
    (v47)(v45, v46, v48);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    sub_10000745C();
    *v9 = 0xD000000000000022;
    v9[1] = 0x8000000100007E70;
    v63(v9, v55, v61);
    sub_1000075AC();
    v58(v11, 0, 1, v13);
    (v56)(v50, v60, v62);
    v59(v54, v8, v53);
    v18(v51, 1, 1, v57);
    *(swift_allocObject() + 16) = xmmword_1000079F0;
    (v47)(v45, v44, v48);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    (v47)(v45, v44, v48);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    v19 = v9;
    sub_10000745C();
    *v9 = 0xD000000000000023;
    v9[1] = 0x8000000100007EA0;
    v63(v9, v55, v61);
    sub_1000075AC();
    v58(v49, 0, 1, v13);
    (v56)(v50, v60, v62);
    v59(v54, v8, v53);
    sub_1000052AC(&qword_100010050, &qword_100007A58);
    v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000079E0;
    sub_1000075AC();
    v22 = sub_100006D88(v21);
    swift_setDeallocating();
    (*(v12 + 8))(v21 + v20, v13);
    swift_deallocClassInstance();
    *v51 = v22;
    (*(v42 + 104))(v51, enum case for MessageFilteringPolicy.denylist(_:), v57);
    v18(v51, 0, 1, v57);
    sub_10000745C();
    *v19 = 0xD000000000000028;
    v19[1] = 0x8000000100007ED0;
    v63(v19, v55, v61);
    sub_1000075BC();
    v58(v49, 0, 1, v13);
    (v56)(v50, v60, v62);
    v59(v54, v8, v53);
    v18(v51, 1, 1, v57);
    *(swift_allocObject() + 16) = xmmword_1000079E0;
    sub_1000075BC();
    sub_1000075BC();
    sub_10000746C();
    sub_10000745C();
    v23 = *(v43 + 16);
    *(v0 + 464) = v23;
    *(v0 + 472) = 0;
    v24 = *(v0 + 384);
    v65 = *(v0 + 360);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v27 = *(v0 + 112);
    v28 = *(v0 + 96);
    v29 = *(v0 + 80);
    v30 = *(v0 + 88);
    v31 = *(v0 + 16);
    v32 = *(v0 + 120) + 16;
    v33 = (*(v0 + 664) + 32) & ~*(v0 + 664);
    *(v0 + 480) = &_swiftEmptyArrayStorage;
    *(v0 + 488) = v32 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v26, v24 + v33, v27);
    v34 = *(v30 + 16);
    *(v0 + 496) = v34;
    *(v0 + 504) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v28, v31, v29);
    v23(v25, v26, v27);
    *(v0 + 512) = sub_100006FA0(&qword_100010058, &qword_100010020, &qword_100007A30, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_100006FA0(&qword_100010060, &qword_100010020, &qword_100007A30, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_1000074DC();
    v23(v25, v26, v27);
    sub_1000052AC(&qword_100010068, &qword_100007A60);
    swift_allocObject();
    v35 = v65;

    *(v0 + 520) = sub_1000074FC();
    v67 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v36 = swift_task_alloc();
    *(v0 + 528) = v36;
    *v36 = v0;
    v36[1] = sub_100003098;

    return v67();
  }

  else
  {
    v38 = sub_10000756C();
    v39 = sub_10000762C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to initialize user defaults", v40, 2u);
    }

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_100003098()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_1000042A4;
  }

  else
  {
    v2 = sub_1000031AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000031AC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 472) + 1;
  if (*(v0 + 472) != 8)
  {
    *(v0 + 472) = v4;
    v21 = *(v0 + 464);
    v65 = *(v0 + 360);
    v22 = *(v0 + 136);
    v23 = *(v0 + 144);
    v24 = *(v0 + 112);
    v25 = *(v0 + 96);
    v26 = *(v0 + 80);
    v27 = *(v0 + 88);
    v28 = *(v0 + 16);
    v29 = *(v0 + 384) + ((*(v0 + 664) + 32) & ~*(v0 + 664)) + *(v0 + 376) * v4;
    *(v0 + 488) = (*(v0 + 120) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v23, v29, v24);
    v30 = *(v27 + 16);
    *(v0 + 496) = v30;
    *(v0 + 504) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v25, v28, v26);
    v21(v22, v23, v24);
    *(v0 + 512) = sub_100006FA0(&qword_100010058, &qword_100010020, &qword_100007A30, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_100006FA0(&qword_100010060, &qword_100010020, &qword_100007A30, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_1000074DC();
    v21(v22, v23, v24);
    sub_1000052AC(&qword_100010068, &qword_100007A60);
    swift_allocObject();
    v31 = v65;

    *(v0 + 520) = sub_1000074FC();
    v68 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v32 = swift_task_alloc();
    *(v0 + 528) = v32;
    *v32 = v0;
    v33 = sub_100003098;
LABEL_13:
    v32[1] = v33;
    goto LABEL_14;
  }

  v5 = *(v0 + 536);
  v6 = *(v0 + 480);
  v7 = *(v0 + 344);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v10 = *(v9 + 8);
  *(v0 + 544) = v10;
  *(v0 + 552) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v11 = sub_1000074CC();
  swift_allocObject();
  sub_1000074BC();
  v12 = sub_1000074AC();

  if (v12)
  {
    v64 = v5;
    v67 = v6;
    v63 = *(v0 + 424);
    v60 = *(v0 + 408);
    v13 = *(v0 + 392);
    v14 = *(v0 + 328);
    v61 = *(v0 + 320);
    v62 = *(v0 + 304);
    v15 = *(v0 + 288);
    v16 = *(v0 + 272);
    v17 = *(v0 + 256);
    v59 = *(v0 + 152);
    sub_1000052AC(&qword_100010070, &qword_100007A68);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000079E0;
    swift_allocObject();
    v19 = sub_1000074BC();
    *(v18 + 56) = v11;
    *(v18 + 64) = &protocol witness table for RequireInternalBuild;
    *(v18 + 32) = v19;
    sub_10000743C();
    *v15 = sub_1000075EC();
    v13(v15, enum case for IngestStreamId.objc(_:), v16);
    sub_1000075AC();
    v60(v17, 0, 1, v59);
    sub_10000753C();
    v63(v61, v14, v62);
    sub_100006F58(0, &qword_100010078, BMIntelligenceFlowTranscriptDatastreamEvent_ptr);
    sub_10000764C();
    if (v64)
    {

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    (*(v0 + 448))(*(v0 + 208), v20, 1, *(v0 + 440));
    sub_10000745C();
    v38 = sub_100005834(0, 1, 1, &_swiftEmptyArrayStorage);
    v39 = *(v38 + 2);
    *(v0 + 560) = v39;
    v40 = *(v38 + 3);
    if (v39 >= v40 >> 1)
    {
      v38 = sub_100005834((v40 > 1), v39 + 1, 1, v38);
    }

    *(v0 + 568) = v38;
    v41 = *(v0 + 72);
    v42 = *(v0 + 32);
    v43 = *(v0 + 40);
    *(v38 + 2) = v39 + 1;
    v44 = *(v43 + 32);
    v43 += 32;
    v45 = *(v43 + 48);
    *(v0 + 668) = v45;
    v46 = *(v43 + 40);
    *(v0 + 576) = v46;
    v44(&v38[((v45 + 32) & ~v45) + v46 * v39], v41, v42);
    v47 = *(v43 - 16);
    *(v0 + 584) = v47;
    *(v0 + 600) = v67;
    *(v0 + 592) = 0;
    v48 = *(v0 + 568);
    v49 = *(v0 + 496);
    v66 = *(v0 + 360);
    v50 = *(v0 + 96);
    v51 = *(v0 + 80);
    v52 = *(v0 + 56);
    v53 = *(v0 + 64);
    v54 = *(v0 + 32);
    v55 = *(v0 + 16);
    v56 = (*(v0 + 668) + 32) & ~*(v0 + 668);
    *(v0 + 608) = (*(v0 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v47(v53, v48 + v56, v54);
    v49(v50, v55, v51);
    v47(v52, v53, v54);
    *(v0 + 616) = sub_100006FA0(&qword_100010080, &qword_100010010, &qword_100007A20, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_10000750C();
    v47(v52, v53, v54);
    sub_1000052AC(&qword_100010088, &qword_100007A70);
    swift_allocObject();
    v57 = v66;

    *(v0 + 624) = sub_1000074FC();
    v68 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v32 = swift_task_alloc();
    *(v0 + 632) = v32;
    *v32 = v0;
    v33 = sub_100003A10;
    goto LABEL_13;
  }

  *(v0 + 648) = v6;
  v34 = sub_10000756C();
  v35 = sub_10000761C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Emitting streams telemetry", v36, 2u);
  }

  v68 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
  v37 = swift_task_alloc();
  *(v0 + 656) = v37;
  *v37 = v0;
  v37[1] = sub_100003E90;
LABEL_14:

  return v68();
}

uint64_t sub_100003A10()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_100004D24;
  }

  else
  {
    v2 = sub_100003B24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003B24()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 592);
  if (v4 == *(v0 + 560))
  {
    v5 = *(v0 + 600);
    v6 = *(v0 + 544);
    v7 = *(v0 + 328);
    v8 = *(v0 + 304);

    v6(v7, v8);
    *(v0 + 648) = v5;
    v9 = sub_10000756C();
    v10 = sub_10000761C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Emitting streams telemetry", v11, 2u);
    }

    v27 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
    v12 = swift_task_alloc();
    *(v0 + 656) = v12;
    *v12 = v0;
    v12[1] = sub_100003E90;
  }

  else
  {
    v13 = v4 + 1;
    *(v0 + 592) = v13;
    v14 = *(v0 + 584);
    v15 = *(v0 + 496);
    v26 = *(v0 + 360);
    v16 = *(v0 + 96);
    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 32);
    v21 = *(v0 + 16);
    v22 = *(v0 + 568) + ((*(v0 + 668) + 32) & ~*(v0 + 668)) + *(v0 + 576) * v13;
    *(v0 + 608) = (*(v0 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v19, v22, v20);
    v15(v16, v21, v17);
    v14(v18, v19, v20);
    *(v0 + 616) = sub_100006FA0(&qword_100010080, &qword_100010010, &qword_100007A20, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_10000750C();
    v14(v18, v19, v20);
    sub_1000052AC(&qword_100010088, &qword_100007A70);
    swift_allocObject();
    v23 = v26;

    *(v0 + 624) = sub_1000074FC();
    v27 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v24 = swift_task_alloc();
    *(v0 + 632) = v24;
    *v24 = v0;
    v24[1] = sub_100003A10;
  }

  return v27();
}

uint64_t sub_100003E90()
{

  return _swift_task_switch(sub_100003F8C, 0, 0);
}

uint64_t sub_100003F8C()
{
  v1 = v0[45];
  if (*(v0[81] + 16))
  {
    swift_errorRetain();

    swift_willThrow();
  }

  else
  {
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000042A4()
{
  v88 = v0;
  (*(v0 + 464))(*(v0 + 128), *(v0 + 144), *(v0 + 112));
  swift_errorRetain();
  v1 = sub_10000756C();
  v2 = sub_10000762C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v87 = v85;
    *v6 = 136315394;
    v8 = sub_10000741C();
    v10 = v9;
    v11 = v4;
    v12 = *(v3 + 8);
    v12(v11, v5);
    v13 = sub_100005A24(v8, v10, &v87);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v14;
    *v7 = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error ingesting %s: %@", v6, 0x16u);
    sub_100006FE8(v7);

    sub_100007050(v85);
  }

  else
  {
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);

    v12 = *(v16 + 8);
    v12(v15, v17);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v0 + 480);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_100005700(0, v19[2] + 1, 1, *(v0 + 480));
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100005700((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = *(v0 + 536);
  v23 = *(v0 + 144);
  v24 = *(v0 + 112);

  v12(v23, v24);
  v19[2] = v21 + 1;
  v19[v21 + 4] = v22;
  v25 = *(v0 + 472) + 1;
  if (*(v0 + 472) != 8)
  {
    *(v0 + 472) = v25;
    *(v0 + 480) = v19;
    v39 = *(v0 + 464);
    v83 = *(v0 + 360);
    v40 = *(v0 + 136);
    v41 = *(v0 + 144);
    v42 = *(v0 + 112);
    v43 = *(v0 + 96);
    v44 = *(v0 + 80);
    v45 = *(v0 + 88);
    v46 = *(v0 + 16);
    v47 = *(v0 + 384) + ((*(v0 + 664) + 32) & ~*(v0 + 664)) + *(v0 + 376) * v25;
    *(v0 + 488) = (*(v0 + 120) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(v41, v47, v42);
    v48 = *(v45 + 16);
    *(v0 + 496) = v48;
    *(v0 + 504) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v48(v43, v46, v44);
    v39(v40, v41, v42);
    *(v0 + 512) = sub_100006FA0(&qword_100010058, &qword_100010020, &qword_100007A30, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_100006FA0(&qword_100010060, &qword_100010020, &qword_100007A30, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_1000074DC();
    v39(v40, v41, v42);
    sub_1000052AC(&qword_100010068, &qword_100007A60);
    swift_allocObject();
    v49 = v83;

    *(v0 + 520) = sub_1000074FC();
    v86 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v50 = swift_task_alloc();
    *(v0 + 528) = v50;
    *v50 = v0;
    v51 = sub_100003098;
LABEL_18:
    v50[1] = v51;
    goto LABEL_19;
  }

  v26 = *(v0 + 344);
  v27 = *(v0 + 304);
  v28 = *(v0 + 312);
  v29 = *(v28 + 8);
  *(v0 + 544) = v29;
  *(v0 + 552) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v26, v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30 = sub_1000074CC();
  swift_allocObject();
  sub_1000074BC();
  v31 = sub_1000074AC();

  if (v31)
  {
    v82 = *(v0 + 424);
    v79 = *(v0 + 408);
    v32 = *(v0 + 392);
    v33 = *(v0 + 328);
    v80 = *(v0 + 320);
    v81 = *(v0 + 304);
    v34 = *(v0 + 288);
    v35 = *(v0 + 272);
    v36 = *(v0 + 256);
    v78 = *(v0 + 152);
    sub_1000052AC(&qword_100010070, &qword_100007A68);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1000079E0;
    swift_allocObject();
    v38 = sub_1000074BC();
    *(v37 + 56) = v30;
    *(v37 + 64) = &protocol witness table for RequireInternalBuild;
    *(v37 + 32) = v38;
    sub_10000743C();
    *v34 = sub_1000075EC();
    v32(v34, enum case for IngestStreamId.objc(_:), v35);
    sub_1000075AC();
    v79(v36, 0, 1, v78);
    sub_10000753C();
    v82(v80, v33, v81);
    sub_100006F58(0, &qword_100010078, BMIntelligenceFlowTranscriptDatastreamEvent_ptr);
    sub_10000764C();
    (*(v0 + 448))(*(v0 + 208), 0, 1, *(v0 + 440));
    LOBYTE(v87) = 1;
    sub_10000745C();
    v56 = sub_100005834(0, 1, 1, &_swiftEmptyArrayStorage);
    v57 = v56;
    v58 = *(v56 + 2);
    *(v0 + 560) = v58;
    v59 = *(v56 + 3);
    if (v58 >= v59 >> 1)
    {
      v57 = sub_100005834((v59 > 1), v58 + 1, 1, v56);
    }

    *(v0 + 568) = v57;
    v60 = *(v0 + 72);
    v61 = *(v0 + 32);
    v62 = *(v0 + 40);
    *(v57 + 2) = v58 + 1;
    v63 = *(v62 + 32);
    v62 += 32;
    v64 = *(v62 + 48);
    *(v0 + 668) = v64;
    v65 = *(v62 + 40);
    *(v0 + 576) = v65;
    v63(&v57[((v64 + 32) & ~v64) + v65 * v58], v60, v61);
    v66 = *(v62 - 16);
    *(v0 + 584) = v66;
    *(v0 + 600) = v19;
    *(v0 + 592) = 0;
    v67 = *(v0 + 568);
    v68 = *(v0 + 496);
    v84 = *(v0 + 360);
    v69 = *(v0 + 96);
    v70 = *(v0 + 80);
    v71 = *(v0 + 56);
    v72 = *(v0 + 64);
    v73 = *(v0 + 32);
    v74 = *(v0 + 16);
    v75 = (*(v0 + 668) + 32) & ~*(v0 + 668);
    *(v0 + 608) = (*(v0 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v72, v67 + v75, v73);
    v68(v69, v74, v70);
    v66(v71, v72, v73);
    *(v0 + 616) = sub_100006FA0(&qword_100010080, &qword_100010010, &qword_100007A20, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_10000750C();
    v66(v71, v72, v73);
    sub_1000052AC(&qword_100010088, &qword_100007A70);
    swift_allocObject();
    v76 = v84;

    *(v0 + 624) = sub_1000074FC();
    v86 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v50 = swift_task_alloc();
    *(v0 + 632) = v50;
    *v50 = v0;
    v51 = sub_100003A10;
    goto LABEL_18;
  }

  *(v0 + 648) = v19;
  v52 = sub_10000756C();
  v53 = sub_10000761C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Emitting streams telemetry", v54, 2u);
  }

  v86 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
  v55 = swift_task_alloc();
  *(v0 + 656) = v55;
  *v55 = v0;
  v55[1] = sub_100003E90;
LABEL_19:

  return v86();
}

uint64_t sub_100004D24()
{
  v50 = v0;
  (*(v0 + 584))(*(v0 + 48), *(v0 + 64), *(v0 + 32));
  swift_errorRetain();
  v1 = sub_10000756C();
  v2 = sub_10000762C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = v47;
    *v6 = 136315394;
    v8 = sub_10000741C();
    v10 = v9;
    v11 = v4;
    v12 = *(v3 + 8);
    v12(v11, v5);
    v13 = sub_100005A24(v8, v10, &v49);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v14;
    *v7 = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error ingesting %s: %@", v6, 0x16u);
    sub_100006FE8(v7);

    sub_100007050(v47);
  }

  else
  {
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);

    v12 = *(v16 + 8);
    v12(v15, v17);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v0 + 600);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_100005700(0, v19[2] + 1, 1, *(v0 + 600));
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100005700((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = *(v0 + 640);
  v23 = *(v0 + 64);
  v24 = *(v0 + 32);

  v12(v23, v24);
  v19[2] = v21 + 1;
  v19[v21 + 4] = v22;
  v25 = *(v0 + 592);
  if (v25 == *(v0 + 560))
  {
    v26 = *(v0 + 544);
    v27 = *(v0 + 328);
    v28 = *(v0 + 304);

    v26(v27, v28);
    *(v0 + 648) = v19;
    v29 = sub_10000756C();
    v30 = sub_10000761C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Emitting streams telemetry", v31, 2u);
    }

    v48 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
    v32 = swift_task_alloc();
    *(v0 + 656) = v32;
    *v32 = v0;
    v32[1] = sub_100003E90;
  }

  else
  {
    v33 = v25 + 1;
    *(v0 + 600) = v19;
    *(v0 + 592) = v33;
    v34 = *(v0 + 584);
    v35 = *(v0 + 496);
    v46 = *(v0 + 360);
    v36 = *(v0 + 96);
    v37 = *(v0 + 80);
    v38 = *(v0 + 56);
    v39 = *(v0 + 64);
    v40 = *(v0 + 32);
    v41 = *(v0 + 16);
    v42 = *(v0 + 568) + ((*(v0 + 668) + 32) & ~*(v0 + 668)) + *(v0 + 576) * v33;
    *(v0 + 608) = (*(v0 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v39, v42, v40);
    v35(v36, v41, v37);
    v34(v38, v39, v40);
    *(v0 + 616) = sub_100006FA0(&qword_100010080, &qword_100010010, &qword_100007A20, &protocol conformance descriptor for SELFIngestConfig<A>);
    sub_10000750C();
    v34(v38, v39, v40);
    sub_1000052AC(&qword_100010088, &qword_100007A70);
    swift_allocObject();
    v43 = v46;

    *(v0 + 624) = sub_1000074FC();
    v48 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v44 = swift_task_alloc();
    *(v0 + 632) = v44;
    *v44 = v0;
    v44[1] = sub_100003A10;
  }

  return v48();
}

uint64_t sub_1000052AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000052F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005374@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = objc_allocWithZone(sub_10000752C());
  sub_1000072E0(a1, a2);
  result = sub_10000751C();
  *a4 = result;
  return result;
}

void __swiftcall BiomeSELFIngestorExtension.init()()
{
  if (qword_1000100E0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000758C();
  sub_1000052F4(v0, qword_1000100E8);
  oslog = sub_10000756C();
  v1 = sub_10000763C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Initializing", v2, 2u);
  }
}

uint64_t sub_1000054CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005560;

  return BiomeSELFIngestorExtension.ingest(dataPool:)(a1);
}

uint64_t sub_100005560()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005654(uint64_t a1)
{
  v2 = sub_100007148();

  return IngestionExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000709C();
  sub_10000755C();
  return 0;
}

void *sub_100005700(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000052AC(&qword_1000100B8, &qword_100007B50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000052AC(&qword_1000100C0, &qword_100007B58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100005834(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000052AC(&qword_1000100B0, &qword_100007B48);
  v10 = *(sub_1000052AC(&qword_100010010, &qword_100007A20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1000052AC(&qword_100010010, &qword_100007A20) - 8);
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

unint64_t sub_100005A24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005AF0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007280(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007050(v11);
  return v7;
}

unint64_t sub_100005AF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100005BFC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000768C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100005BFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005C48(a1, a2);
  sub_100005D78(&off_10000C498);
  return v3;
}

char *sub_100005C48(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100005E64(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000768C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000075FC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005E64(v10, 0);
        result = sub_10000767C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100005D78(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100005ED8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100005E64(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000052AC(&qword_1000100A8, &qword_100007B40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000052AC(&qword_1000100A8, &qword_100007B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100005FCC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000759C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100007334(&qword_1000100C8, &protocol conformance descriptor for ProtoTagPath);
  v33 = a2;
  v11 = sub_1000075CC();
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
      sub_100007334(&qword_1000100D0, &protocol conformance descriptor for ProtoTagPath);
      v21 = sub_1000075DC();
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
    sub_1000065CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100006284(uint64_t a1)
{
  v2 = v1;
  v36 = sub_10000759C();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000052AC(&qword_1000100D8, &qword_100007B60);
  result = sub_10000766C();
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
      sub_100007334(&qword_1000100C8, &protocol conformance descriptor for ProtoTagPath);
      result = sub_1000075CC();
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

uint64_t sub_1000065CC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_10000759C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
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
    sub_100006284(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100006848();
      goto LABEL_12;
    }

    sub_100006A80(v10 + 1);
  }

  v12 = *v3;
  sub_100007334(&qword_1000100C8, &protocol conformance descriptor for ProtoTagPath);
  v13 = sub_1000075CC();
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
      sub_100007334(&qword_1000100D0, &protocol conformance descriptor for ProtoTagPath);
      v21 = sub_1000075DC();
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
  result = sub_10000769C();
  __break(1u);
  return result;
}

void *sub_100006848()
{
  v1 = v0;
  v2 = sub_10000759C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000052AC(&qword_1000100D8, &qword_100007B60);
  v6 = *v0;
  v7 = sub_10000765C();
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

uint64_t sub_100006A80(uint64_t a1)
{
  v2 = v1;
  v33 = sub_10000759C();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000052AC(&qword_1000100D8, &qword_100007B60);
  v7 = sub_10000766C();
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
      sub_100007334(&qword_1000100C8, &protocol conformance descriptor for ProtoTagPath);
      result = sub_1000075CC();
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

uint64_t sub_100006D88(uint64_t a1)
{
  v2 = sub_10000759C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100007334(&qword_1000100C8, &protocol conformance descriptor for ProtoTagPath);
  result = sub_10000760C();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100005FCC(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100006F10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006F58(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100006FA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006F10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006FE8(uint64_t a1)
{
  v2 = sub_1000052AC(&qword_100010090, &unk_100007A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007050(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10000709C()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

unint64_t sub_100007148()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeSELFIngestorExtension(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BiomeSELFIngestorExtension(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100007280(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000072E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100007334(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000759C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100007378(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}