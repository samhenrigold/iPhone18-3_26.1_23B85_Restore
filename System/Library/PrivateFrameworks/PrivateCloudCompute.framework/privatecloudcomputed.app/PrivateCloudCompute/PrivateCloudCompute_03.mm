uint64_t sub_10004A98C()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  v3 = *(v2 + 704);
  v4 = *(v2 + 696);

  sub_100011E48(v4, v3);
  if (v0)
  {
    v5 = sub_10004B514;
  }

  else
  {
    v5 = sub_10004AAF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004AAF4()
{

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DC0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v39);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s waiting for response", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v30 = *(v0 + 504);
  v31 = *(v0 + 432);
  v29 = *(v0 + 424);
  v28 = *(v0 + 416);
  v7 = *(v0 + 400);
  v26 = *(v0 + 440);
  v27 = *(v0 + 408);
  v8 = *(v0 + 384);
  v24 = *(v0 + 392);
  v10 = *(v0 + 368);
  v9 = *(v0 + 376);
  v11 = *(v0 + 360);
  v12 = *(v0 + 288);
  v36 = *(v0 + 256);
  v37 = *(v0 + 280);
  v35 = *(v0 + 248);
  v25 = *(v0 + 240);
  v32 = *(v0 + 232);
  v34 = *(v0 + 208);
  v22 = *(v0 + 176);
  v23 = *(v0 + 184);
  v13 = *(v0 + 168);
  v33 = *(v0 + 264);
  (*(v10 + 16))(v8);
  v14 = (*(v10 + 80) + 152) & ~*(v10 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = *(v12 + 88);
  *(v16 + 40) = *(v12 + 104);
  *(v16 + 48) = *(v12 + 112);
  *(v16 + 64) = *(v12 + 128);
  *(v16 + 72) = v24;
  *(v16 + 80) = *(v12 + 144);
  *(v16 + 96) = *(v12 + 160);
  *(v16 + 104) = *(v12 + 168);
  *(v16 + 112) = *(v12 + 176);
  *(v16 + 120) = *(v12 + 184);
  *(v16 + 128) = v13;
  *(v16 + 136) = v22;
  *(v16 + 144) = v23;
  (*(v10 + 32))(v16 + v14, v8, v11);
  *(v16 + v15) = v25;
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v22;
  v17[4] = v23;
  sub_10014745C(&unk_1001D6490, v16, &unk_1001D64A0, v17, v27, v28, v26);
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  sub_100131740(&type metadata for UInt32, v29, v30);
  (*(v31 + 8))(v26, v29);
  *(v0 + 120) = 0;
  *(v0 + 128) = _swiftEmptyArrayStorage;
  v18 = sub_1001D0840();
  v19 = swift_task_alloc();
  *(v0 + 744) = v19;
  *(v19 + 16) = v30;
  *(v19 + 24) = v13;
  *(v19 + 32) = v22;
  *(v19 + 40) = v23;
  *(v19 + 48) = v0 + 120;
  *(v19 + 56) = v35;
  *(v19 + 64) = v0 + 128;
  *(v19 + 72) = v36;
  *(v19 + 80) = v34;
  *(v19 + 88) = v32;
  *(v19 + 96) = v33;
  *(v19 + 112) = v25;
  *(v19 + 120) = v37;
  v20 = swift_task_alloc();
  *(v0 + 752) = v20;
  *v20 = v0;
  v20[1] = sub_10004AF4C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v20, v18, &type metadata for () + 8, 0, 0, &unk_1001D64B0, v19, v18);
}

uint64_t sub_10004AF4C()
{

  return _swift_task_switch(sub_10004B064, 0, 0);
}

uint64_t sub_10004B064()
{
  v25 = v0[87];
  v26 = v0[88];
  v1 = v0[85];
  v2 = v0[83];
  if (v0[15])
  {
    v22 = v0[85];
    v3 = v0[80];
    v20 = v0[79];
    v21 = v0[62];
    v23 = v0[61];
    v24 = v0[63];
    v4 = v0[43];
    v5 = v0[41];
    v18 = v0[44];
    v19 = v0[42];
    v6 = v0[39];
    v7 = v0[40];
    v8 = v0[38];
    v9 = v0[21];
    (*(v7 + 16))(v5, v9 + *(*v9 + 280), v6);
    v10 = *(v9 + *(*v9 + 288));
    *v8 = v0[16];
    *(v8 + 8) = v10;
    swift_storeEnumTagMultiPayload();

    sub_1001D1BC0();
    sub_100011E48(v25, v26);
    (*(v7 + 8))(v5, v6);
    (*(v4 + 8))(v18, v19);
    (*(v3 + 8))(v2, v20);
    sub_10005B078(v22, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

    (*(v21 + 8))(v24, v23);
  }

  else
  {
    v12 = v0[80];
    v13 = v0[79];
    v14 = v0[62];
    v15 = v0[63];
    v16 = v0[61];
    sub_1001D0200();
    sub_10005AF40(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v25, v26);
    (*(v12 + 8))(v2, v13);
    sub_10005B078(v1, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

    (*(v14 + 8))(v15, v16);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004B514()
{
  v1 = v0[89];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[79];
  sub_100011E48(v0[87], v0[88]);
  v1(v3, v4);
  sub_10005B078(v2, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004B6C4(uint64_t a1, unint64_t a2)
{
  v16 = a2;
  v3 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  v11 = *(v10 + 20);
  sub_10001208C(a1 + v11, v5, &qword_1002293A8, &unk_1001D6530);
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    *v9 = _swiftEmptyArrayStorage;
    *(v9 + 9) = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v12(v5, 1, v6) != 1)
    {
      sub_100011F00(v5, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    sub_10005B3A0(v5, v9, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  v9[8] = 1;
  sub_100011F00(a1 + v11, &qword_1002293A8, &unk_1001D6530);
  sub_10005B3A0(v9, a1 + v11, type metadata accessor for Proto_Ropes_Common_Capabilities);
  result = (*(v7 + 56))(a1 + v11, 0, 1, v6);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v16))
  {
    v14 = a1 + *(v10 + 24);
    *v14 = v16;
    *(v14 + 4) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B930(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *a2;
  v7 = sub_1001D0FD0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = sub_1001D0ED0();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = sub_1001D0FF0();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004BAFC, 0, 0);
}

uint64_t sub_10004BAFC()
{
  v58 = v0;
  v54 = *(v0[17] + 16);
  v54(v0[20], v0[2], v0[16]);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DC0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[20];
  if (v3)
  {
    v5 = v0[19];
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[4];
    v52 = v0[5];
    v9 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000954E0(v8, v52, v57);
    *(v9 + 12) = 2080;
    v54(v5, v4, v7);
    v10 = sub_1001D1820();
    v12 = v11;
    v53 = *(v6 + 8);
    v53(v4, v7);
    v13 = sub_1000954E0(v10, v12, v57);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s response head received: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[16];
    v15 = v0[17];

    v53 = *(v15 + 8);
    v53(v4, v14);
  }

  v54(v0[18], v0[2], v0[16]);

  v16 = sub_1001D0E50();
  v17 = sub_1001D1DC0();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[18];
  v20 = v0[16];
  if (v18)
  {
    v21 = v0[14];
    v22 = v0[15];
    v51 = v0[13];
    v55 = v17;
    v24 = v0[4];
    v23 = v0[5];
    v25 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_1000954E0(v24, v23, v57);
    *(v25 + 12) = 2080;
    sub_1001D0F90();
    v26 = HTTPFields.loggingDescription.getter();
    v28 = v27;
    (*(v21 + 8))(v22, v51);
    v53(v19, v20);
    v29 = sub_1000954E0(v26, v28, v57);

    *(v25 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v55, "%s received headers\n%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v53(v19, v20);
  }

  v31 = v0[11];
  v30 = v0[12];
  v32 = v0[9];
  v33 = v0[10];
  sub_1001D0FE0();
  sub_1001D0FB0();
  v34 = sub_1001D0FA0();
  v35 = *(v33 + 8);
  v35(v31, v32);
  v35(v30, v32);
  if (v34)
  {
    v36 = v0[8];
    v37 = *(v36 + 144);
    v38 = *(v36 + 88);
    v56 = (*(v37 + 48) + **(v37 + 48));
    v39 = swift_task_alloc();
    v0[21] = v39;
    *v39 = v0;
    v39[1] = sub_10004C168;
    v41 = v0[6];
    v40 = v0[7];

    return v56(v41, v40, v38, v37);
  }

  else
  {
    v43 = v0[12];
    v44 = v0[9];
    sub_1001D0FE0();
    v45 = sub_1001D0FC0();
    v35(v43, v44);
    sub_10005B2F8();
    v46 = swift_allocError();
    *v47 = v45;
    sub_100011AC0(&qword_100227B70, &qword_1001D3718);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1001D39F0;
    *(v48 + 32) = v46;
    sub_10005B34C();
    swift_allocError();
    *v49 = v48;
    swift_willThrow();

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_10004C168()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004C318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_100011AC0(&unk_100230110, &unk_1001D6520);
  v4[6] = swift_task_alloc();
  v5 = sub_1001D0ED0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004C420, 0, 0);
}

uint64_t sub_10004C420()
{
  v28 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_10001208C(v0[2], v3, &unk_100230110, &unk_1001D6520);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100011F00(v0[6], &unk_100230110, &unk_1001D6520);
  }

  else
  {
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    (*(v7 + 32))(v5, v0[6], v6);
    (*(v7 + 16))(v4, v5, v6);

    v8 = sub_1001D0E50();
    v9 = sub_1001D1DC0();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[9];
    v12 = v0[10];
    v14 = v0[7];
    v13 = v0[8];
    if (v10)
    {
      v16 = v0[4];
      v15 = v0[5];
      v26 = v0[10];
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1000954E0(v16, v15, &v27);
      *(v17 + 12) = 2080;
      v18 = HTTPFields.loggingDescription.getter();
      v20 = v19;
      v21 = *(v13 + 8);
      v21(v11, v14);
      v22 = sub_1000954E0(v18, v20, &v27);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s received trailers\n%s", v17, 0x16u);
      swift_arrayDestroy();

      v21(v26, v14);
    }

    else
    {

      v23 = *(v13 + 8);
      v23(v11, v14);
      v23(v12, v14);
    }
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10004C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = v35;
  *(v8 + 376) = v36;
  *(v8 + 336) = v33;
  *(v8 + 352) = v34;
  *(v8 + 320) = v32;
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  *(v8 + 272) = a3;
  *(v8 + 280) = a4;
  *(v8 + 264) = a2;
  v9 = *a4;
  *(v8 + 384) = *a4;
  sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  *(v8 + 392) = swift_task_alloc();
  v10 = type metadata accessor for RateLimitConfiguration(0);
  *(v8 + 400) = v10;
  *(v8 + 408) = *(v10 - 8);
  *(v8 + 416) = swift_task_alloc();
  v11 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  *(v8 + 424) = v11;
  *(v8 + 432) = *(v11 - 8);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  v12 = sub_1001CFD60();
  *(v8 + 480) = v12;
  v13 = *(v12 - 8);
  *(v8 + 488) = v13;
  *(v8 + 496) = *(v13 + 64);
  *(v8 + 504) = swift_task_alloc();
  v14 = sub_1001CFDA0();
  *(v8 + 512) = v14;
  v15 = *(v14 - 8);
  *(v8 + 520) = v15;
  *(v8 + 528) = *(v15 + 64);
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  v16 = sub_1001D08A0();
  *(v8 + 552) = v16;
  v17 = *(v16 - 8);
  *(v8 + 560) = v17;
  *(v8 + 568) = *(v17 + 64);
  *(v8 + 576) = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  sub_100011AC0(&qword_100229358, &qword_1001D64D0);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v18 = sub_1001D0840();
  *(v8 + 616) = v18;
  *(v8 + 624) = *(v18 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v19 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) - 8);
  *(v8 + 664) = v19;
  *(v8 + 672) = *(v19 + 64);
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  *(v8 + 696) = swift_task_alloc();
  sub_100011AC0(&qword_100229368, &qword_1001D64E0);
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = *(v9 + 136);
  *(v8 + 720) = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for OnResponseHeadSequence(255, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
  *(v8 + 728) = v23;
  v24 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(255);
  *(v8 + 736) = v24;
  WitnessTable = swift_getWitnessTable();
  *(v8 + 744) = WitnessTable;
  v26 = sub_10005A38C();
  *(v8 + 752) = v26;
  v27 = sub_10005A3E0();
  *(v8 + 760) = v27;
  v28 = sub_10005AF40(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);
  *(v8 + 768) = v28;
  *(v8 + 16) = v23;
  *(v8 + 24) = &type metadata for UInt32;
  *(v8 + 32) = v24;
  *(v8 + 40) = WitnessTable;
  *(v8 + 48) = v26;
  *(v8 + 56) = v27;
  *(v8 + 64) = v28;
  v29 = type metadata accessor for LengthPrefixDeframer.AsyncIterator(0, v8 + 16);
  *(v8 + 776) = v29;
  *(v8 + 784) = *(v29 - 8);
  *(v8 + 792) = swift_task_alloc();

  return _swift_task_switch(sub_10004CD98, 0, 0);
}

uint64_t sub_10004CD98()
{
  v1 = *(v0 + 752);
  *(v0 + 88) = *(v0 + 736);
  v2 = *(v0 + 792);
  v3 = *(v0 + 768);
  *(v0 + 72) = *(v0 + 728);
  v4 = *(v0 + 280);
  *(v0 + 80) = &type metadata for UInt32;
  *(v0 + 104) = v1;
  *(v0 + 120) = v3;
  v5 = type metadata accessor for LengthPrefixDeframer(0, v0 + 72);
  sub_100131814(v5, v2);
  *(v0 + 800) = qword_100229210;
  v6 = *v4;
  *(v0 + 808) = *(*v4 + 240);
  *(v0 + 816) = *(v6 + 224);
  *(v0 + 824) = 0;
  v7 = swift_task_alloc();
  *(v0 + 832) = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_10004CEF8;
  v9 = *(v0 + 776);
  v10 = *(v0 + 704);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v10, 0, 0, v9, WitnessTable, v0 + 248);
}

uint64_t sub_10004CEF8()
{

  if (v0)
  {
    v1 = sub_10004F818;
  }

  else
  {
    v1 = sub_10004D008;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10004D008()
{
  v142 = v0;
  v1 = *(v0 + 704);
  if ((*(*(*(v0 + 736) - 8) + 48))(v1, 1) == 1)
  {
    (*(*(v0 + 784) + 8))(*(v0 + 792), *(v0 + 776));

    v2 = sub_1001D0E50();
    v3 = sub_1001D1DC0();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 288);
      v4 = *(v0 + 296);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v141[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000954E0(v5, v4, v141);
      _os_log_impl(&_mh_execute_header, v2, v3, "%s response complete", v6, 0xCu);
      sub_100011CF0(v7);
    }

    v8 = swift_task_alloc();
    *(v0 + 896) = v8;
    v9 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
    *v8 = v0;
    v8[1] = sub_10004F28C;
    v10 = *(v0 + 600);
    goto LABEL_5;
  }

  v13 = *(v0 + 696);
  sub_10001208C(v1, v13, &qword_100229360, &qword_1001D64D8);
  sub_10005B078(v1, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);
  v14 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_45;
  }

  v15 = *(v0 + 696);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10005B3A0(v15, *(v0 + 688), type metadata accessor for Proto_Ropes_Common_Attestation);

    v28 = sub_1001D0E50();
    v29 = sub_1001D1DD0();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = *(v0 + 288);
      v30 = *(v0 + 296);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v141[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000954E0(v31, v30, v141);
      _os_log_impl(&_mh_execute_header, v28, v29, "%s attestation received", v32, 0xCu);
      sub_100011CF0(v33);
    }

    v34 = *(v0 + 304);
    if (__OFADD__(*v34, 1))
    {
      __break(1u);
    }

    else
    {
      v35 = *(v0 + 824);
      ++*v34;
      if (v35 == 10)
      {
        v36 = swift_task_alloc();
        *(v0 + 840) = v36;
        v9 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
        *v36 = v0;
        v36[1] = sub_10004E0E0;
        v10 = *(v0 + 608);
LABEL_5:
        v11 = 0;
        v12 = 0;

        return TaskGroup.next(isolation:)(v10, v11, v12, v9);
      }

      v71 = *(v0 + 824);
      v73 = *(v0 + 328);
      v72 = *(v0 + 336);
      os_unfair_lock_lock(v73);
      v74 = *(*(v73 + 8) + 16);
      os_unfair_lock_unlock(v73);
      if (v74 >= v72)
      {
        goto LABEL_44;
      }

      v133 = v71 + 1;
      if (!__OFADD__(v71, 1))
      {
        v127 = *(v0 + 720);
        v112 = *(v0 + 688);
        v75 = *(v0 + 680);
        v118 = *(v0 + 672);
        v120 = v75;
        v115 = *(v0 + 664);
        v76 = *(v0 + 592);
        v129 = *(v0 + 712);
        v130 = v76;
        v132 = *(v0 + 584);
        v77 = *(v0 + 576);
        v78 = *(v0 + 560);
        v79 = *(v0 + 552);
        v121 = v79;
        v122 = v77;
        v80 = *(v0 + 544);
        v81 = *(v0 + 536);
        v123 = v80;
        v124 = v81;
        v116 = *(v0 + 528);
        v117 = *(v0 + 568);
        v82 = *(v0 + 520);
        v135 = *(v0 + 512);
        v139 = *(v0 + 504);
        v134 = *(v0 + 488);
        v136 = *(v0 + 480);
        v83 = *(v0 + 384);
        v114 = *(v0 + 376);
        v131 = *(v0 + 368);
        v113 = *(v0 + 360);
        v110 = *(v0 + 344);
        v111 = *(v0 + 352);
        v125 = *(v0 + 280);
        v128 = sub_1001D1BA0();
        v126 = *(v128 - 8);
        (*(v126 + 56))(v76, 1, 1, v128);
        sub_10005B0D8(v112, v75, type metadata accessor for Proto_Ropes_Common_Attestation);
        (*(v78 + 16))(v77, v110, v79);
        v84 = *(v82 + 16);
        v84(v80, v111, v135);
        v84(v81, v113, v135);
        (*(v134 + 16))(v139, v114, v136);
        v85 = (*(v115 + 80) + 152) & ~*(v115 + 80);
        v86 = (v118 + *(v78 + 80) + v85) & ~*(v78 + 80);
        v87 = *(v82 + 80);
        v88 = (v117 + v87 + v86) & ~v87;
        v89 = (v116 + v87 + v88) & ~v87;
        v119 = (v116 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = (*(v134 + 80) + v119 + 8) & ~*(v134 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        *(v91 + 32) = v127;
        *(v91 + 40) = *(v83 + 88);
        *(v91 + 56) = *(v83 + 104);
        *(v91 + 64) = *(v83 + 112);
        *(v91 + 80) = *(v83 + 128);
        *(v91 + 88) = v129;
        *(v91 + 96) = *(v83 + 144);
        *(v91 + 104) = *(v83 + 152);
        *(v91 + 112) = *(v83 + 160);
        *(v91 + 120) = *(v83 + 168);
        *(v91 + 136) = *(v83 + 184);
        *(v91 + 144) = v125;
        sub_10005B3A0(v120, v91 + v85, type metadata accessor for Proto_Ropes_Common_Attestation);
        (*(v78 + 32))(v91 + v86, v122, v121);
        v92 = *(v82 + 32);
        v92(v91 + v88, v123, v135);
        v92(v91 + v89, v124, v135);
        *(v91 + v119) = v131;
        (*(v134 + 32))(v91 + v90, v139, v136);
        sub_10001208C(v130, v132, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v85) = (*(v126 + 48))(v132, 1, v128);

        v93 = *(v0 + 584);
        if (v85 == 1)
        {
          sub_100011F00(*(v0 + 584), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v126 + 8))(v93, v128);
        }

        if (*(v91 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v99 = sub_1001D1A70();
          v101 = v100;
          swift_unknownObjectRelease();
        }

        else
        {
          v99 = 0;
          v101 = 0;
        }

        v102 = **(v0 + 264);
        v103 = swift_allocObject();
        *(v103 + 16) = &unk_1001D64F8;
        *(v103 + 24) = v91;
        v104 = v101 | v99;
        if (v101 | v99)
        {
          v104 = v0 + 168;
          *(v0 + 168) = 0;
          *(v0 + 176) = 0;
          *(v0 + 184) = v99;
          *(v0 + 192) = v101;
        }

        v71 = v133;
        v105 = *(v0 + 592);
        *(v0 + 224) = 1;
        *(v0 + 232) = v104;
        *(v0 + 240) = v102;
        swift_task_create();

        sub_100011F00(v105, &qword_100229350, &unk_1001D6BA0);
LABEL_44:
        sub_10005B078(*(v0 + 688), type metadata accessor for Proto_Ropes_Common_Attestation);
        *(v0 + 824) = v71;
        goto LABEL_45;
      }
    }

    __break(1u);
    return TaskGroup.next(isolation:)(v10, v11, v12, v9);
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10005B078(v15, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
LABEL_45:
    v106 = swift_task_alloc();
    *(v0 + 832) = v106;
    WitnessTable = swift_getWitnessTable();
    *v106 = v0;
    v106[1] = sub_10004CEF8;
    v108 = *(v0 + 776);
    v109 = *(v0 + 704);

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v109, 0, 0, v108, WitnessTable, v0 + 248);
  }

  v18 = *(v0 + 464);
  v17 = *(v0 + 472);
  sub_10005B3A0(v15, v17, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_10005B0D8(v17, v18, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);

  v19 = sub_1001D0E50();
  v20 = sub_1001D1E00();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 464);
  if (v21)
  {
    v24 = *(v0 + 288);
    v23 = *(v0 + 296);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v141[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_1000954E0(v24, v23, v141);
    *(v25 + 12) = 2048;
    v27 = *(*v22 + 16);
    sub_10005B078(v22, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    *(v25 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s received rate limit configuration count %ld", v25, 0x16u);
    sub_100011CF0(v26);
  }

  else
  {
    sub_10005B078(*(v0 + 464), type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  v37 = **(v0 + 472);
  *(v0 + 848) = v37;
  v38 = *(v37 + 16);
  *(v0 + 856) = v38;
  if (v38)
  {
    v39 = 0;
    v40 = *(v0 + 432);
    *(v0 + 904) = *(v40 + 80);
    *(v0 + 864) = *(v40 + 72);
    while (1)
    {
      *(v0 + 880) = v39;
      v43 = *(v0 + 808);
      v44 = *(v0 + 504);
      v46 = *(v0 + 448);
      v45 = *(v0 + 456);
      v48 = *(v0 + 400);
      v47 = *(v0 + 408);
      v49 = *(v0 + 392);
      v50 = *(v0 + 280);
      sub_10005B0D8(*(v0 + 848) + ((*(v0 + 904) + 32) & ~*(v0 + 904)) + *(v0 + 864) * v39, v45, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      sub_10005B0D8(v45, v46, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_100044698(v50 + v43, v0 + 128);
      sub_1000E5BA4(v44, v46, (v0 + 128), v49);
      if ((*(v47 + 48))(v49, 1, v48) != 1)
      {
        break;
      }

      v51 = *(v0 + 456);
      v52 = *(v0 + 440);
      sub_100011F00(*(v0 + 392), &qword_100229348, &unk_1001D64C0);
      sub_10005B0D8(v51, v52, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

      v53 = sub_1001D0E50();
      v54 = sub_1001D1DE0();

      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 456);
      if (v55)
      {
        v58 = *(v0 + 440);
        v57 = *(v0 + 448);
        v137 = *(v0 + 456);
        v60 = *(v0 + 288);
        v59 = *(v0 + 296);
        v61 = swift_slowAlloc();
        v141[0] = swift_slowAlloc();
        *v61 = 136315394;
        *(v61 + 4) = sub_1000954E0(v60, v59, v141);
        *(v61 + 12) = 2080;
        sub_10005B0D8(v58, v57, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v62 = sub_1001D1820();
        v64 = v63;
        sub_10005B078(v58, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v65 = sub_1000954E0(v62, v64, v141);

        *(v61 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v53, v54, "%s unable to process rate limit configuration %s", v61, 0x16u);
        swift_arrayDestroy();

        v42 = v137;
      }

      else
      {
        v41 = *(v0 + 440);

        sub_10005B078(v41, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v42 = v56;
      }

      sub_10005B078(v42, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v39 = *(v0 + 880) + 1;
      if (v39 == *(v0 + 856))
      {
        goto LABEL_27;
      }
    }

    v94 = *(v0 + 384);
    sub_10005B3A0(*(v0 + 392), *(v0 + 416), type metadata accessor for RateLimitConfiguration);
    v95 = *(v94 + 152);
    v96 = *(v94 + 96);
    v140 = (*(v95 + 8) + **(v95 + 8));
    v97 = swift_task_alloc();
    *(v0 + 888) = v97;
    *v97 = v0;
    v97[1] = sub_10004EC00;
    v98 = *(v0 + 416);

    return v140(v98, v96, v95);
  }

  else
  {
LABEL_27:
    v66 = *(v0 + 384);
    v67 = *(v66 + 152);
    v68 = *(v66 + 96);
    v138 = (*(v67 + 24) + **(v67 + 24));
    v69 = swift_task_alloc();
    *(v0 + 872) = v69;
    *v69 = v0;
    v69[1] = sub_10004EA18;

    return v138(v68, v67);
  }
}

uint64_t sub_10004E0E0()
{

  return _swift_task_switch(sub_10004E1DC, 0, 0);
}

uint64_t sub_10004E1DC()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = (*(v1 + 48))(v3, 1, v2);
  if (v4 == 1)
  {
    goto LABEL_30;
  }

  v10 = *(v1 + 32);
  v10(*(v0 + 656), v3, v2);
  if (sub_1001D0810())
  {
    v11 = *(v0 + 312);
    os_unfair_lock_lock(v11);
    v12 = *(v11 + 8);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      v15 = *(v0 + 312);
      *(v15 + 8) = v14;
      os_unfair_lock_unlock(v15);
      goto LABEL_5;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v4, v5, v6, v7, WitnessTable, v9);
  }

LABEL_5:
  v16 = sub_1001D0830();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = *(v0 + 320);
    v21 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v20 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = *(v0 + 320);
      v21 = sub_100008F3C(0, *(v21 + 2) + 1, 1, v21);
      *v73 = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v74 = *(v0 + 320);
      v21 = sub_100008F3C((v23 > 1), v24 + 1, 1, v21);
      *v74 = v21;
    }

    *(v21 + 2) = v24 + 1;
    v25 = &v21[16 * v24];
    *(v25 + 4) = v18;
    *(v25 + 5) = v19;
  }

  v26 = *(v0 + 656);
  v27 = *(v0 + 648);
  v28 = *(v0 + 624);
  v29 = *(v0 + 616);
  v30 = *(v0 + 328);
  os_unfair_lock_lock(v30);
  (*(v28 + 16))(v27, v26, v29);
  v31 = *(v30 + 8);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v30 + 8) = v31;
  if ((v32 & 1) == 0)
  {
    v71 = *(v0 + 328);
    v31 = sub_100009494(0, *(v31 + 2) + 1, 1, v31);
    *(v71 + 8) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v72 = *(v0 + 328);
    v31 = sub_100009494((v33 > 1), v34 + 1, 1, v31);
    *(v72 + 8) = v31;
  }

  v35 = *(v0 + 656);
  v36 = *(v0 + 648);
  v37 = *(v0 + 624);
  v38 = *(v0 + 616);
  v39 = *(v0 + 328);
  *(v31 + 2) = v34 + 1;
  v10(&v31[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34], v36, v38);
  os_unfair_lock_unlock(v39);
  (*(v37 + 8))(v35, v38);
  v41 = *(v0 + 328);
  v40 = *(v0 + 336);
  os_unfair_lock_lock(v41);
  v42 = *(*(v41 + 8) + 16);
  os_unfair_lock_unlock(v41);
  if (v42 >= v40)
  {
    v62 = 9;
  }

  else
  {
    v93 = *(v0 + 720);
    v95 = *(v0 + 712);
    v78 = *(v0 + 688);
    v43 = *(v0 + 680);
    v84 = *(v0 + 672);
    v86 = v43;
    v81 = *(v0 + 664);
    v44 = *(v0 + 592);
    v96 = v44;
    v98 = *(v0 + 584);
    v45 = *(v0 + 576);
    v46 = *(v0 + 560);
    v47 = *(v0 + 552);
    v87 = v47;
    v88 = v45;
    v48 = *(v0 + 544);
    v49 = *(v0 + 536);
    v89 = v48;
    v90 = v49;
    v82 = *(v0 + 528);
    v83 = *(v0 + 568);
    v50 = *(v0 + 520);
    v100 = *(v0 + 512);
    v102 = *(v0 + 504);
    v99 = *(v0 + 488);
    v101 = *(v0 + 480);
    v51 = *(v0 + 384);
    v80 = *(v0 + 376);
    v97 = *(v0 + 368);
    v79 = *(v0 + 360);
    v76 = *(v0 + 344);
    v77 = *(v0 + 352);
    v91 = *(v0 + 280);
    v94 = sub_1001D1BA0();
    v92 = *(v94 - 8);
    (*(v92 + 56))(v44, 1, 1, v94);
    sub_10005B0D8(v78, v43, type metadata accessor for Proto_Ropes_Common_Attestation);
    (*(v46 + 16))(v45, v76, v47);
    v52 = *(v50 + 16);
    v52(v48, v77, v100);
    v52(v49, v79, v100);
    (*(v99 + 16))(v102, v80, v101);
    v53 = (*(v81 + 80) + 152) & ~*(v81 + 80);
    v54 = (v84 + *(v46 + 80) + v53) & ~*(v46 + 80);
    v55 = *(v50 + 80);
    v56 = (v83 + v55 + v54) & ~v55;
    v57 = (v82 + v55 + v56) & ~v55;
    v85 = (v82 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (*(v99 + 80) + v85 + 8) & ~*(v99 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    *(v59 + 32) = v93;
    *(v59 + 40) = *(v51 + 88);
    *(v59 + 56) = *(v51 + 104);
    *(v59 + 64) = *(v51 + 112);
    *(v59 + 80) = *(v51 + 128);
    *(v59 + 88) = v95;
    *(v59 + 96) = *(v51 + 144);
    *(v59 + 104) = *(v51 + 152);
    *(v59 + 112) = *(v51 + 160);
    *(v59 + 120) = *(v51 + 168);
    *(v59 + 136) = *(v51 + 184);
    *(v59 + 144) = v91;
    sub_10005B3A0(v86, v59 + v53, type metadata accessor for Proto_Ropes_Common_Attestation);
    (*(v46 + 32))(v59 + v54, v88, v87);
    v60 = *(v50 + 32);
    v60(v59 + v56, v89, v100);
    v60(v59 + v57, v90, v100);
    *(v59 + v85) = v97;
    (*(v99 + 32))(v59 + v58, v102, v101);
    sub_10001208C(v96, v98, &qword_100229350, &unk_1001D6BA0);
    LODWORD(v53) = (*(v92 + 48))(v98, 1, v94);

    v61 = *(v0 + 584);
    if (v53 == 1)
    {
      sub_100011F00(*(v0 + 584), &qword_100229350, &unk_1001D6BA0);
    }

    else
    {
      sub_1001D1B90();
      (*(v92 + 8))(v61, v94);
    }

    if (*(v59 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v63 = sub_1001D1A70();
      v65 = v64;
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    v66 = **(v0 + 264);
    v67 = swift_allocObject();
    *(v67 + 16) = &unk_1001D64F8;
    *(v67 + 24) = v59;
    v68 = v65 | v63;
    if (v65 | v63)
    {
      v68 = v0 + 168;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = v63;
      *(v0 + 192) = v65;
    }

    v69 = *(v0 + 592);
    *(v0 + 224) = 1;
    *(v0 + 232) = v68;
    *(v0 + 240) = v66;
    swift_task_create();

    sub_100011F00(v69, &qword_100229350, &unk_1001D6BA0);
    v62 = 10;
  }

  sub_10005B078(*(v0 + 688), type metadata accessor for Proto_Ropes_Common_Attestation);
  *(v0 + 824) = v62;
  v70 = swift_task_alloc();
  *(v0 + 832) = v70;
  WitnessTable = swift_getWitnessTable();
  *v70 = v0;
  v70[1] = sub_10004CEF8;
  v7 = *(v0 + 776);
  v4 = *(v0 + 704);
  v9 = v0 + 248;
  v5 = 0;
  v6 = 0;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v4, v5, v6, v7, WitnessTable, v9);
}

uint64_t sub_10004EA18()
{

  return _swift_task_switch(sub_10004EB14, 0, 0);
}

uint64_t sub_10004EB14()
{
  sub_10005B078(v0[59], type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v1 = swift_task_alloc();
  v0[104] = v1;
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_10004CEF8;
  v3 = v0[97];
  v4 = v0[88];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v4, 0, 0, v3, WitnessTable, v0 + 31);
}

uint64_t sub_10004EC00()
{

  return _swift_task_switch(sub_10004ECFC, 0, 0);
}

uint64_t sub_10004ECFC()
{
  v44 = v0;
  v1 = *(v0 + 456);
  sub_10005B078(*(v0 + 416), type metadata accessor for RateLimitConfiguration);
  sub_10005B078(v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
  v2 = *(v0 + 880) + 1;
  if (v2 == *(v0 + 856))
  {
LABEL_2:
    v3 = *(v0 + 384);
    v4 = *(v3 + 152);
    v5 = *(v3 + 96);
    v40 = (*(v4 + 24) + **(v4 + 24));
    v6 = swift_task_alloc();
    *(v0 + 872) = v6;
    *v6 = v0;
    v6[1] = sub_10004EA18;

    return v40(v5, v4);
  }

  else
  {
    while (1)
    {
      *(v0 + 880) = v2;
      v18 = *(v0 + 808);
      v19 = *(v0 + 504);
      v21 = *(v0 + 448);
      v20 = *(v0 + 456);
      v23 = *(v0 + 400);
      v22 = *(v0 + 408);
      v24 = *(v0 + 392);
      v25 = *(v0 + 280);
      sub_10005B0D8(*(v0 + 848) + ((*(v0 + 904) + 32) & ~*(v0 + 904)) + *(v0 + 864) * v2, v20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      sub_10005B0D8(v20, v21, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_100044698(v25 + v18, v0 + 128);
      sub_1000E5BA4(v19, v21, (v0 + 128), v24);
      v26 = (*(v22 + 48))(v24, 1, v23);
      v27 = *(v0 + 392);
      if (v26 != 1)
      {
        break;
      }

      v28 = *(v0 + 456);
      v29 = *(v0 + 440);
      sub_100011F00(v27, &qword_100229348, &unk_1001D64C0);
      sub_10005B0D8(v28, v29, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

      v30 = sub_1001D0E50();
      v31 = sub_1001D1DE0();

      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 456);
      if (v32)
      {
        v9 = *(v0 + 440);
        v8 = *(v0 + 448);
        v41 = *(v0 + 456);
        v11 = *(v0 + 288);
        v10 = *(v0 + 296);
        v12 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = sub_1000954E0(v11, v10, &v43);
        *(v12 + 12) = 2080;
        sub_10005B0D8(v9, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v13 = sub_1001D1820();
        v15 = v14;
        sub_10005B078(v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v16 = sub_1000954E0(v13, v15, &v43);

        *(v12 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v30, v31, "%s unable to process rate limit configuration %s", v12, 0x16u);
        swift_arrayDestroy();

        v17 = v41;
      }

      else
      {
        v34 = *(v0 + 440);

        sub_10005B078(v34, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v17 = v33;
      }

      sub_10005B078(v17, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v2 = *(v0 + 880) + 1;
      if (v2 == *(v0 + 856))
      {
        goto LABEL_2;
      }
    }

    v35 = *(v0 + 384);
    sub_10005B3A0(v27, *(v0 + 416), type metadata accessor for RateLimitConfiguration);
    v36 = *(v35 + 152);
    v37 = *(v35 + 96);
    v42 = (*(v36 + 8) + **(v36 + 8));
    v38 = swift_task_alloc();
    *(v0 + 888) = v38;
    *v38 = v0;
    v38[1] = sub_10004EC00;
    v39 = *(v0 + 416);

    return v42(v39, v37, v36);
  }
}

uint64_t sub_10004F28C()
{

  return _swift_task_switch(sub_10004F388, 0, 0);
}

uint64_t sub_10004F388()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[75];
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v6 = *(v1 + 32);
    v6(v0[80], v3, v2);
    if (sub_1001D0810())
    {
      v7 = v0[39];
      os_unfair_lock_lock(v7);
      v12 = *(v7 + 8);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        __break(1u);
        return TaskGroup.next(isolation:)(v8, v9, v10, v11);
      }

      v15 = v0[39];
      *(v15 + 8) = v14;
      os_unfair_lock_unlock(v15);
    }

    v16 = sub_1001D0830();
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v20 = v0[40];
      v21 = *v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = v0[40];
        v21 = sub_100008F3C(0, *(v21 + 2) + 1, 1, v21);
        *v43 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v44 = v0[40];
        v21 = sub_100008F3C((v23 > 1), v24 + 1, 1, v21);
        *v44 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v19;
    }

    v26 = v0[80];
    v27 = v0[79];
    v28 = v0[78];
    v29 = v0[77];
    v30 = v0[41];
    os_unfair_lock_lock(v30);
    (*(v28 + 16))(v27, v26, v29);
    v31 = *(v30 + 8);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 8) = v31;
    if ((v32 & 1) == 0)
    {
      v41 = v0[41];
      v31 = sub_100009494(0, *(v31 + 2) + 1, 1, v31);
      *(v41 + 8) = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v42 = v0[41];
      v31 = sub_100009494((v33 > 1), v34 + 1, 1, v31);
      *(v42 + 8) = v31;
    }

    v35 = v0[80];
    v36 = v0[79];
    v37 = v0[78];
    v38 = v0[77];
    v39 = v0[41];
    *(v31 + 2) = v34 + 1;
    v6(&v31[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34], v36, v38);
    os_unfair_lock_unlock(v39);
    (*(v37 + 8))(v35, v38);
    v40 = swift_task_alloc();
    v0[112] = v40;
    v11 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
    *v40 = v0;
    v40[1] = sub_10004F28C;
    v8 = v0[75];
    v9 = 0;
    v10 = 0;

    return TaskGroup.next(isolation:)(v8, v9, v10, v11);
  }

  sub_100011F00(v3, &qword_100229358, &qword_1001D64D0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004F818()
{
  v14 = v0;
  (*(v0[98] + 8))(v0[99], v0[97]);

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[36];
    v3 = v0[37];
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v13);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v6 = *(v0[26] - 8);
    swift_task_alloc();
    (*(v6 + 16))();
    v7 = sub_1001D1820();
    v9 = v8;

    v10 = sub_1000954E0(v7, v9, &v13);

    *(v5 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s response failed: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_10004FBEC, 0, 0);
}

uint64_t sub_10004FBEC()
{
  v1 = *(v0[3] + *(*v0[3] + 288));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10004FCAC;
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_10004FDA0(v9, v7, v8, v1, v5, v6, v3, v4);
}

uint64_t sub_10004FCAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004FDA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 488) = a8;
  *(v9 + 496) = v8;
  *(v9 + 472) = a6;
  *(v9 + 480) = a7;
  *(v9 + 1012) = a4;
  *(v9 + 456) = a3;
  *(v9 + 464) = a5;
  *(v9 + 440) = a1;
  *(v9 + 448) = a2;
  v10 = *v8;
  *(v9 + 504) = *v8;
  *(v9 + 512) = type metadata accessor for ThimbledEvent(0);
  *(v9 + 520) = swift_task_alloc();
  v11 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  *(v9 + 528) = v11;
  *(v9 + 536) = *(v11 - 8);
  *(v9 + 544) = swift_task_alloc();
  sub_1001CFDD0();
  *(v9 + 552) = swift_task_alloc();
  v12 = *(v10 + 120);
  *(v9 + 560) = v12;
  *(v9 + 568) = *(v12 - 8);
  *(v9 + 576) = swift_task_alloc();
  v13 = sub_1001D02E0();
  *(v9 + 584) = v13;
  *(v9 + 592) = *(v13 - 8);
  *(v9 + 600) = swift_task_alloc();
  v14 = sub_1001CFDA0();
  *(v9 + 608) = v14;
  *(v9 + 616) = *(v14 - 8);
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = type metadata accessor for ValidatedAttestation(0);
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  v15 = sub_1001CFD60();
  *(v9 + 656) = v15;
  *(v9 + 664) = *(v15 - 8);
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  v16 = sub_1001D0820();
  *(v9 + 696) = v16;
  *(v9 + 704) = *(v16 - 8);
  *(v9 + 712) = swift_task_alloc();
  v17 = sub_1001D08A0();
  *(v9 + 720) = v17;
  *(v9 + 728) = *(v17 - 8);
  *(v9 + 736) = swift_task_alloc();
  *(v9 + 744) = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();
  v18 = sub_1001D1470();
  *(v9 + 776) = v18;
  *(v9 + 784) = *(v18 - 8);
  *(v9 + 792) = swift_task_alloc();
  v19 = sub_1001D1460();
  *(v9 + 800) = v19;
  *(v9 + 808) = *(v19 - 8);
  *(v9 + 816) = swift_task_alloc();

  return _swift_task_switch(sub_10005028C, 0, 0);
}

uint64_t sub_10005028C()
{
  v20 = v0[102];
  v21 = v0[101];
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v24 = v0[96];
  v25 = v0[91];
  v27 = v0[92];
  v28 = v0[90];
  v29 = v0[63];
  v23 = v0[62];
  v26 = v0[57];
  v5 = v0[56];
  sub_10005AF40(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = sub_1001D23A0();
  v32 = v6;
  v34._countAndFlagsBits = 58;
  v34._object = 0xE100000000000000;
  sub_1001D18B0(v34);
  v0[103] = v31;
  v0[104] = v32;
  v7 = v5;
  v22 = v5;
  v8 = *v5;
  v9 = v7[1];
  sub_10005AF40(&qword_100229378, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1001D1440();
  sub_100012038(v8, v9);
  sub_100158DE0(v8, v9, v2);
  sub_100011E48(v8, v9);
  sub_1001D1430();
  (*(v3 + 8))(v2, v4);
  v0[34] = v1;
  v0[35] = sub_10005AF40(&qword_100229380, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v10 = sub_10003B47C(v0 + 31);
  (*(v21 + 16))(v10, v20, v1);
  sub_100024DC8(v0 + 31, v0[34]);
  sub_1001CF8E0();
  v12 = v0[50];
  v11 = v0[51];
  sub_100011CF0(v0 + 31);
  v0[105] = sub_1001CFBF0(0);
  v0[106] = v13;
  sub_100011E48(v12, v11);
  (*(v21 + 8))(v20, v1);
  v0[107] = *(*v23 + 232);
  sub_10005B0D8(v22, v24, type metadata accessor for Proto_Ropes_Common_Attestation);
  v14 = *(v25 + 16);
  v0[108] = v14;
  v0[109] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v27, v26, v28);
  sub_10008AC80(v24, v27, v0 + 14);
  v15 = *(v29 + 160);
  v0[110] = v15;
  v16 = *(v15 + 24);
  v17 = *(v29 + 104);
  v0[111] = v17;
  v30 = (v16 + *v16);
  v18 = swift_task_alloc();
  v0[112] = v18;
  *v18 = v0;
  v18[1] = sub_1000506A8;

  return v30(v0 + 14, v17, v15);
}

uint64_t sub_1000506A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[113] = a1;
  v4[114] = a2;
  v4[115] = v2;

  if (v2)
  {
    v5 = sub_1000525A4;
  }

  else
  {
    sub_10005AF88((v4 + 14));
    v5 = sub_1000507CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000507CC()
{
  v20 = v0;
  v1 = *(v0 + 912);
  if (v1)
  {
    v2 = *(v0 + 504);
    *(v0 + 928) = *(**(v0 + 496) + 216);
    v3 = *(v2 + 144);
    *(v0 + 936) = v3;
    v4 = *(v3 + 56);
    v5 = *(v2 + 88);
    *(v0 + 944) = v5;
    v18 = (v4 + *v4);
    v6 = swift_task_alloc();
    *(v0 + 952) = v6;
    *v6 = v0;
    v6[1] = sub_100050C50;
    v7 = *(v0 + 904);

    return v18(v7, v1, v5, v3);
  }

  else
  {

    v9 = sub_1001D0E50();
    v10 = sub_1001D1DE0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 848);
      v12 = *(v0 + 840);
      v13 = *(v0 + 832);
      v14 = *(v0 + 824);
      v15 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = sub_1000954E0(v14, v13, &v19);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1000954E0(v12, v11, &v19);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s unique identifier for attestation %s missing", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(*(v0 + 704) + 104))(*(v0 + 712), enum case for Prefetch.Response.Node.ValidationResult.noUniqueIdentifier(_:), *(v0 + 696));

    sub_1001D07F0();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100050C50(char a1)
{
  *(*v1 + 1013) = a1;

  return _swift_task_switch(sub_100050D50, 0, 0);
}

uint64_t sub_100050D50()
{
  v37 = v0;
  if (*(v0 + 1013) == 1)
  {

    v1 = sub_1001D0E50();
    v2 = sub_1001D1E00();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 912);
      v4 = *(v0 + 904);
      v33 = *(v0 + 848);
      v5 = *(v0 + 840);
      v6 = *(v0 + 832);
      v7 = *(v0 + 824);
      v8 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v8 = 136315650;
      v9 = sub_1000954E0(v7, v6, &v36);

      *(v8 + 4) = v9;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1000954E0(v4, v3, &v36);
      *(v8 + 22) = 2080;
      *(v8 + 24) = sub_1000954E0(v5, v33, &v36);
      _os_log_impl(&_mh_execute_header, v1, v2, "%s node exists in store for attestation %s %s", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v23 = *(v0 + 912);
    v24 = *(v0 + 1012);
    v35 = (*(*(v0 + 936) + 64) + **(*(v0 + 936) + 64));
    v25 = swift_task_alloc();
    *(v0 + 960) = v25;
    *v25 = v0;
    v25[1] = sub_1000511D4;
    v26 = *(v0 + 944);
    v27 = *(v0 + 936);
    v28 = *(v0 + 904);
    v29 = *(v0 + 480);
    v30 = *(v0 + 488);
    v31 = *(v0 + 456);

    return v35(v31, v28, v23, (v24 & 1) == 0, v29, v30, v26, v27);
  }

  else
  {
    v10 = *(v0 + 864);
    v34 = *(v0 + 880);
    v11 = *(v0 + 768);
    v12 = *(v0 + 736);
    v13 = *(v0 + 720);
    v14 = *(v0 + 496);
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);

    sub_1001CFD50();
    v17 = *(v14 + *(*v14 + 328));
    *(v0 + 1015) = v17;
    sub_10005B0D8(v16, v11, type metadata accessor for Proto_Ropes_Common_Attestation);
    v10(v12, v15, v13);
    sub_10008AC80(v11, v12, (v0 + 16));
    v32 = (*(v34 + 8) + **(v34 + 8));
    v18 = swift_task_alloc();
    *(v0 + 968) = v18;
    *v18 = v0;
    v18[1] = sub_1000514F4;
    v19 = *(v0 + 888);
    v20 = *(v0 + 880);
    v21 = *(v0 + 648);

    return v32(v21, v0 + 16, v17, v19, v20);
  }
}

uint64_t sub_1000511D4(char a1)
{
  *(*v1 + 1014) = a1;

  return _swift_task_switch(sub_1000512D4, 0, 0);
}

uint64_t sub_1000512D4()
{
  v1 = &enum case for Prefetch.Response.Node.ValidationResult.nodeAlreadyExistsInBatch(_:);
  if (!*(v0 + 1014))
  {
    v1 = &enum case for Prefetch.Response.Node.ValidationResult.validationNotNeeded(_:);
  }

  (*(*(v0 + 704) + 104))(*(v0 + 712), *v1, *(v0 + 696));

  sub_1001D07F0();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000514F4()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v3 = sub_1000529B0;
  }

  else
  {
    sub_10005AF88(v2 + 16);
    v3 = sub_100051610;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100051610()
{
  v74 = v0;
  v1 = *(v0 + 448);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = v2 == *(v0 + 840) && v3 == *(v0 + 848);
    if (!v5 && (sub_1001D2470() & 1) == 0)
    {
      v6 = *(v0 + 752);
      v7 = *(v0 + 448);
      sub_10005B0D8(v7, *(v0 + 760), type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_10005B0D8(v7, v6, type metadata accessor for Proto_Ropes_Common_Attestation);

      v8 = sub_1001D0E50();
      v9 = sub_1001D1DE0();

      if (!os_log_type_enabled(v8, v9))
      {
        v25 = *(v0 + 760);
        sub_10005B078(*(v0 + 752), type metadata accessor for Proto_Ropes_Common_Attestation);

        sub_10005B078(v25, type metadata accessor for Proto_Ropes_Common_Attestation);
        goto LABEL_22;
      }

      v10 = *(v0 + 848);
      v11 = *(v0 + 840);
      v12 = *(v0 + 832);
      v13 = *(v0 + 824);
      v14 = *(v0 + 760);
      v15 = *(v0 + 752);
      v16 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v16 = 136315906;
      *(v16 + 4) = sub_1000954E0(v13, v12, &v73);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1000954E0(v11, v10, &v73);
      *(v16 + 22) = 2080;
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);

      sub_10005B078(v14, type metadata accessor for Proto_Ropes_Common_Attestation);
      v19 = sub_1000954E0(v17, v18, &v73);

      *(v16 + 24) = v19;
      *(v16 + 32) = 2048;
      v21 = *v15;
      v22 = v15[1];
      v23 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        if (v23 != 2)
        {
          v24 = 0;
          goto LABEL_21;
        }

        v27 = v21 + 16;
        v21 = *(v21 + 16);
        v26 = *(v27 + 8);
        v24 = v26 - v21;
        if (!__OFSUB__(v26, v21))
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (!v23)
      {
        v24 = BYTE6(v22);
LABEL_21:
        sub_10005B078(*(v0 + 752), type metadata accessor for Proto_Ropes_Common_Attestation);
        *(v16 + 34) = v24;
        _os_log_impl(&_mh_execute_header, v8, v9, "%s node id does not match attestation bundle calculated=%s fromServer=%s bundleSize=%ld bytes", v16, 0x2Au);
        swift_arrayDestroy();

        goto LABEL_22;
      }

      v28 = __OFSUB__(HIDWORD(v21), v21);
      v29 = HIDWORD(v21) - v21;
      if (v28)
      {
        __break(1u);
        return result;
      }

      v24 = v29;
      goto LABEL_21;
    }
  }

LABEL_22:
  v30 = *(v0 + 632);
  v31 = (*(v0 + 648) + *(v30 + 32));
  *(v0 + 984) = *v31;
  v32 = v31[1];
  *(v0 + 992) = v32;
  if (!v32)
  {

    v48 = sub_1001D0E50();
    v49 = sub_1001D1DE0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 848);
      v51 = *(v0 + 840);
      v52 = *(v0 + 832);
      v53 = *(v0 + 824);
      v54 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v54 = 136315394;
      v55 = sub_1000954E0(v53, v52, &v73);

      *(v54 + 4) = v55;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_1000954E0(v51, v50, &v73);
      _os_log_impl(&_mh_execute_header, v48, v49, "%s attestation validation did not return a unique device id for attestation: %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v64 = &enum case for Prefetch.Response.Node.ValidationResult.noUniqueIdentifier(_:);
    goto LABEL_35;
  }

  *(v0 + 1008) = *(v30 + 28);

  sub_1001CFD00();
  if (v33 > 172800.0)
  {
    v34 = *(v0 + 648);
    v35 = *(v0 + 640);

    sub_10005B0D8(v34, v35, type metadata accessor for ValidatedAttestation);

    v36 = sub_1001D0E50();
    v37 = sub_1001D1DE0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 840);
      v39 = *(v0 + 832);
      v40 = *(v0 + 824);
      v69 = *(v0 + 848);
      v41 = *(v0 + 640);
      v42 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v42 = 136315650;
      v43 = sub_1000954E0(v40, v39, &v73);

      *(v42 + 4) = v43;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_1000954E0(v38, v69, &v73);
      *(v42 + 22) = 2080;
      sub_10005AF40(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v44 = sub_1001D23A0();
      v46 = v45;
      sub_10005B078(v41, type metadata accessor for ValidatedAttestation);
      v47 = sub_1000954E0(v44, v46, &v73);

      *(v42 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s attestation validation returned too long expiration for attestation: %s; expiry: %s", v42, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v65 = *(v0 + 640);

      sub_10005B078(v65, type metadata accessor for ValidatedAttestation);
    }

    v64 = &enum case for Prefetch.Response.Node.ValidationResult.validatedExpiryTooLarge(_:);
LABEL_35:
    v72 = *(v0 + 688);
    v66 = *(v0 + 664);
    v70 = *(v0 + 656);
    v68 = *(v0 + 648);
    (*(*(v0 + 704) + 104))(*(v0 + 712), *v64, *(v0 + 696));

    sub_1001D07F0();
    sub_10005B078(v68, type metadata accessor for ValidatedAttestation);
    (*(v66 + 8))(v72, v70);

    v67 = *(v0 + 8);

    return v67();
  }

  v56 = *(v0 + 1012);
  v71 = (*(*(v0 + 936) + 8) + **(*(v0 + 936) + 8));
  v57 = swift_task_alloc();
  *(v0 + 1000) = v57;
  *v57 = v0;
  v57[1] = sub_100051FF0;
  v58 = *(v0 + 944);
  v59 = *(v0 + 936);
  v60 = *(v0 + 480);
  v61 = *(v0 + 488);
  v62 = *(v0 + 456);
  v63 = *(v0 + 648);

  return v71(v63, v62, (v56 & 1) == 0, v60, v61, v58, v59);
}

uint64_t sub_100051FF0(char a1)
{
  *(*v1 + 1016) = a1;

  return _swift_task_switch(sub_1000520F0, 0, 0);
}

uint64_t sub_1000520F0()
{
  v31 = v0;
  v1 = *(v0 + 1016);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  v4 = os_log_type_enabled(v2, v3);
  if (v1 == 1)
  {
    if (v4)
    {
      v5 = *(v0 + 848);
      v6 = *(v0 + 840);
      v7 = *(v0 + 832);
      v8 = *(v0 + 824);
      v9 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = sub_1000954E0(v8, v7, &v30);

      *(v9 + 4) = v10;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1000954E0(v6, v5, &v30);
      v11 = "%s successfully saved attestation for node: %s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v2, v3, v11, v9, 0x16u);
      swift_arrayDestroy();

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v12 = *(v0 + 848);
    v13 = *(v0 + 840);
    v14 = *(v0 + 832);
    v15 = *(v0 + 824);
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v9 = 136315394;
    v16 = sub_1000954E0(v15, v14, &v30);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1000954E0(v13, v12, &v30);
    v11 = "%s failed to save attestation for node: %s";
    goto LABEL_6;
  }

LABEL_8:
  v17 = *(v0 + 712);
  v18 = *(v0 + 704);
  v27 = *(v0 + 1008);
  v28 = *(v0 + 696);
  v29 = *(v0 + 688);
  v19 = *(v0 + 664);
  v20 = *(v0 + 656);
  v21 = *(v0 + 648);
  v22 = *(sub_100011AC0(&qword_100229390, &qword_1001D6518) + 48);
  v23 = *(v21 + 104);
  v24 = *(v21 + 112);
  *v17 = v23;
  v17[1] = v24;
  (*(v19 + 16))(v17 + v22, v21 + v27, v20);
  (*(v18 + 104))(v17, enum case for Prefetch.Response.Node.ValidationResult.valid(_:), v28);

  sub_100012038(v23, v24);
  sub_1001D07F0();
  sub_10005B078(v21, type metadata accessor for ValidatedAttestation);
  (*(v19 + 8))(v29, v20);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1000525A4()
{
  v19 = v0;
  sub_10005AF88((v0 + 14));

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[106];
    v4 = v0[105];
    v5 = v0[104];
    v6 = v0[103];
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_1000954E0(v6, v5, &v18);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000954E0(v4, v3, &v18);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s unable to check the unique id of the attestation and hence skipping validation: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[89];
  v10 = v0[88];
  v17 = v0[87];
  swift_getErrorValue();
  v11 = *(v0[42] - 8);
  swift_task_alloc();
  (*(v11 + 16))();

  v12 = sub_1001D1820();
  v14 = v13;

  *v9 = v12;
  v9[1] = v14;
  (*(v10 + 104))(v9, enum case for Prefetch.Response.Node.ValidationResult.invalid(_:), v17);
  sub_1001D07F0();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000529B0()
{
  v74 = v0;
  sub_10005AF88(v0 + 16);

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v71 = *(v0 + 848);
    v3 = *(v0 + 840);
    v4 = *(v0 + 832);
    v5 = *(v0 + 824);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v73[0] = swift_slowAlloc();
    *v6 = 136315650;
    v8 = sub_1000954E0(v5, v4, v73);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000954E0(v3, v71, v73);
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s attestation validation failed for node: %s with error: %@", v6, 0x20u);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);

    swift_arrayDestroy();
  }

  else
  {
  }

  v56 = *(v0 + 1015);
  v67 = *(v0 + 848);
  v68 = *(v0 + 840);
  v63 = *(v0 + 712);
  v64 = *(v0 + 704);
  v65 = *(v0 + 696);
  v70 = *(v0 + 688);
  v55 = *(v0 + 680);
  v51 = *(v0 + 672);
  v72 = *(v0 + 664);
  v69 = *(v0 + 656);
  v10 = *(v0 + 624);
  v54 = v10;
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v41 = *(v0 + 600);
  v43 = *(v0 + 592);
  v44 = *(v0 + 584);
  v66 = *(v0 + 576);
  v13 = *(v0 + 568);
  v14 = *(v0 + 560);
  v47 = *(v0 + 552);
  v60 = *(v0 + 544);
  v61 = *(v0 + 536);
  v62 = *(v0 + 528);
  v57 = *(v0 + 520);
  v48 = *(v0 + 504);
  v15 = *(v0 + 496);
  v16 = *(v0 + 472);
  swift_getErrorValue();
  v58 = *(v0 + 352);
  v42 = *(v0 + 360);
  v52 = *(v0 + 368);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v11 + 16))(v10, v16, v12);
  v17 = (v15 + *(*v15 + 296));
  v53 = *v17;
  v50 = v17[1];
  v18 = (v15 + *(*v15 + 240));
  v19 = v18[3];
  v20 = v18[4];
  sub_100024DC8(v18, v19);
  v21 = *(*v15 + 256);
  *(v0 + 312) = v14;
  v49 = *(v48 + 176);
  *(v0 + 320) = v49;
  v22 = sub_10003B47C((v0 + 288));
  v23 = *(v13 + 16);
  v23(v22, v15 + v21, v14);

  Configuration.environment(systemInfo:)((v0 + 288), v19, v20, v41);
  sub_100011CF0((v0 + 288));
  v24 = sub_1001D02B0();
  v45 = v25;
  v46 = v24;
  (*(v43 + 8))(v41, v44);
  v23(v66, v15 + v21, v14);
  sub_1001CFDC0();
  v26 = *(v42 - 8);
  v27 = swift_task_alloc();
  (*(v26 + 16))(v27, v58, v42);

  sub_1001CFD50();
  sub_1001CFC90();
  v59 = *(v72 + 8);
  v59(v51, v69);
  v28 = sub_1001D2630();
  v30 = v29;
  v31 = *(v15 + *(*v15 + 304));

  sub_10001C2C8(v55, v54, v53, v50, v46, v45, v66, v47, (v0 + 208), 1u, v68, v67, v27, v28, v30, v31, v32, v56, v14, v42, v49, v52);

  v57[3] = &type metadata for AttestationVerificationErrorMetric;
  v57[4] = sub_10005AFDC();
  v33 = swift_allocObject();
  *v57 = v33;
  *(v33 + 48) = *(v0 + 240);
  v34 = *(v0 + 224);
  *(v33 + 16) = *(v0 + 208);
  *(v33 + 32) = v34;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v61 + 8))(v60, v62);
  swift_getErrorValue();
  v35 = *(*(v0 + 384) - 8);
  swift_task_alloc();
  (*(v35 + 16))();

  v36 = sub_1001D1820();
  v38 = v37;

  *v63 = v36;
  v63[1] = v38;
  (*(v64 + 104))(v63, enum case for Prefetch.Response.Node.ValidationResult.invalid(_:), v65);
  sub_1001D07F0();

  v59(v70, v69);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100053248()
{
  v1[35] = v0;
  v1[36] = *v0;
  v2 = sub_1001D0860();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v3 = sub_1001CFDA0();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v5 = sub_1001D1380();
  v1[54] = v5;
  v1[55] = *(v5 - 8);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v6 = sub_1001D0ED0();
  v1[58] = v6;
  v1[59] = *(v6 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = type metadata accessor for ThimbledEvent(0);
  v1[62] = swift_task_alloc();
  v7 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v1[63] = v7;
  v1[64] = *(v7 - 8);
  v1[65] = swift_task_alloc();
  v8 = sub_1001D02E0();
  v1[66] = v8;
  v1[67] = *(v8 - 8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v9 = sub_1001CFD60();
  v1[70] = v9;
  v1[71] = *(v9 - 8);
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v10 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v1[76] = v10;
  v1[77] = *(v10 - 8);
  v1[78] = swift_task_alloc();
  v11 = sub_100011AC0(&qword_1002292A8, &qword_1001D6418);
  v1[79] = v11;
  v1[80] = *(v11 - 8);
  v1[81] = swift_task_alloc();
  sub_1001D1810();
  v1[82] = swift_task_alloc();
  sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  v1[83] = swift_task_alloc();
  v12 = sub_1001D08A0();
  v1[84] = v12;
  v1[85] = *(v12 - 8);
  v1[86] = swift_task_alloc();

  return _swift_task_switch(sub_100053828, 0, 0);
}

uint64_t sub_100053828()
{
  v296 = v0;
  *(v0 + 696) = *(**(v0 + 280) + 320);
  *(v0 + 704) = sub_10005AF40(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v294 = sub_1001D23A0();
  v295 = v1;
  v301._countAndFlagsBits = 58;
  v301._object = 0xE100000000000000;
  sub_1001D18B0(v301);
  v3 = v294;
  v2 = v295;
  *(v0 + 712) = v294;
  *(v0 + 720) = v2;
  *(v0 + 728) = qword_100229210;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 280);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v294 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000954E0(v3, v2, &v294);
    *(v8 + 12) = 1024;
    *(v8 + 14) = *(v7 + *(*v7 + 288));

    _os_log_impl(&_mh_execute_header, v4, v5, "%s executing batch of prefetch requests, prewarm=%{BOOL}d", v8, 0x12u);
    sub_100011CF0(v9);
  }

  else
  {
  }

  v10 = *(v0 + 680);
  v11 = *(v0 + 672);
  v12 = *(v0 + 664);
  sub_100096A60(v12);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    sub_100011F00(*(v0 + 664), &qword_1002292B0, &unk_1001D6420);

    v13 = sub_1001D0E50();
    v14 = sub_1001D1DE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v294 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000954E0(v3, v2, &v294);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s invalid set of parameters for prefetching", v15, 0xCu);
      sub_100011CF0(v16);
    }

    sub_100058BE8(*(v0 + 280), v3, v2, "%s finished batch of prefetch requests", v262);

    v17 = *(v0 + 8);

    return v17(_swiftEmptyArrayStorage);
  }

  v281 = v2;
  v269 = v3;
  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  (*(*(v0 + 680) + 32))(*(v0 + 688), *(v0 + 664), *(v0 + 672));
  v21 = *(*v20 + 248);
  v22 = *(*v20 + 264);
  v23 = v19[16];
  *(v0 + 40) = v23;
  *(v0 + 48) = v19[23];
  v24 = sub_10003B47C((v0 + 16));
  (*(*(v23 - 8) + 16))(v24, &v20[v22], v23);
  v25 = *v20;
  v26 = *(*v20 + 240);
  *(v0 + 736) = v26;
  v27 = &v20[v26];
  v28 = *(v25 + 256);
  *(v0 + 744) = v28;
  v29 = v19[15];
  *(v0 + 752) = v29;
  *(v0 + 80) = v29;
  v30 = v19[22];
  *(v0 + 760) = v30;
  *(v0 + 88) = v30;
  v31 = sub_10003B47C((v0 + 56));
  v32 = *(v29 - 8);
  v33 = *(v32 + 16);
  *(v0 + 768) = v33;
  *(v0 + 776) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33(v31, &v20[v28], v29);
  v34 = v19[21];
  v35 = v19[14];
  v291 = v21;
  v274 = (*(v34 + 128))(v0 + 16, v27, v0 + 56, v35, v34);
  sub_100011CF0((v0 + 56));
  sub_100011CF0((v0 + 16));
  *(v0 + 216) = sub_1001D0870();
  sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
  sub_1000594F0();
  *(v0 + 784) = sub_1001CF800();
  *(v0 + 792) = v36;
  v266 = v35;
  v268 = v34;
  v38 = *(v0 + 640);

  sub_1001D1800();
  v39 = sub_1001D17F0();
  *(v0 + 800) = v40;
  *(v0 + 808) = v39;
  v264 = v27;
  sub_100024DC8(v27, *(v27 + 3));
  v41 = (v38 + 8);
  v42 = *(v0 + 648);
  v43 = *(v0 + 632);
  if (v274)
  {
    sub_1001D0540();
    sub_1001D0210();
    v275 = *v41;
    (*v41)(v42, v43);
    v44 = *(v0 + 264);
    v45 = v268[14](v266, v268);
    if (v46)
    {
      v47 = v44;
    }

    else
    {
      v47 = v45;
    }

    if (v44 < v47)
    {
      v47 = v44;
    }

    if (v47 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v47;
    }

    v49 = v268[12](v266, v268);
    if (v50)
    {
      v51 = *(v0 + 648);
      v52 = *(v0 + 632);
      sub_100024DC8(v27, *(v27 + 3));
      sub_1001D04B0();
      sub_1001D0210();
      v275(v51, v52);
      v49 = *(v0 + 272);
    }
  }

  else
  {
    sub_1001D0410();
    sub_1001D0210();
    v276 = *v41;
    (*v41)(v42, v43);
    v53 = *(v0 + 224);
    v54 = v268[4](v266, v268);
    if (v55)
    {
      v56 = v53;
    }

    else
    {
      v56 = v54;
    }

    if (v53 < v56)
    {
      v56 = v53;
    }

    if (v56 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v56;
    }

    v49 = v268[7](v266, v268);
    if (v57)
    {
      v58 = *(v0 + 648);
      v59 = *(v0 + 632);
      sub_100024DC8(v27, *(v27 + 3));
      sub_1001D0390();
      sub_1001D0210();
      v276(v58, v59);
      v49 = *(v0 + 232);
    }
  }

  v60 = v281;
  if (v49 <= 1)
  {
    v61 = 1;
  }

  else
  {
    v61 = v49;
  }

  *(v0 + 824) = v48;
  *(v0 + 816) = v61;
  v62 = *(v0 + 280) + *(**(v0 + 280) + 312);
  v63 = *v62;
  *(v0 + 832) = *v62;
  v64 = *(v62 + 8);
  *(v0 + 964) = v64;
  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v63;
  }

  if (v64)
  {
    v66 = v61 - 1;
  }

  else
  {
    v66 = v63;
  }

  v277 = v66;
  v282 = v65;
  v287 = 3 * v48;
  if ((v48 * 3) >> 64 == (3 * v48) >> 63)
  {

    v67 = sub_1001D0E50();
    v68 = sub_1001D1E00();

    if (!os_log_type_enabled(v67, v68))
    {

      v73 = v27;
      v74 = v266;
      v75 = v268;
      if (!v64)
      {
        goto LABEL_61;
      }

      goto LABEL_51;
    }

    v69 = swift_slowAlloc();
    v263 = swift_slowAlloc();
    v294 = v263;
    *v69 = 136316418;
    *(v69 + 4) = sub_1000954E0(v269, v60, &v294);
    *(v69 + 12) = 2048;
    *(v69 + 14) = v48;
    *(v69 + 22) = 2048;
    v70 = v282 - v277;
    if (v282 <= v277)
    {
      if (v64)
      {
        v80 = v61;
      }

      else
      {
        v80 = 1;
      }

      if ((v48 * v80) >> 64 == (v48 * v80) >> 63)
      {
        *(v69 + 24) = v48 * v80;
        *(v69 + 32) = 2048;
        if (v64)
        {
          v72 = v61 - 1;
        }

        else
        {
          v72 = 0;
        }

LABEL_60:
        v73 = v264;
        *(v69 + 34) = v72 + 1;
        *(v69 + 42) = 2048;
        *(v69 + 44) = v61;
        *(v69 + 52) = 2048;
        *(v69 + 54) = v287;
        _os_log_impl(&_mh_execute_header, v67, v68, "%s configuration: maxPrefetchedAttestations: %ld, clientCacheSize: %ld, maxPrefetchRequests: %ld, maxPrefetchBatches: %ld, prewarmAttestationsAvailability: %ld", v69, 0x3Eu);
        sub_100011CF0(v263);

        v74 = v266;
        v75 = v268;
        if (!v64)
        {
LABEL_61:
          v81 = *(v0 + 768);
          v82 = *(v0 + 744);
          v83 = *(v0 + 552);
          v270 = *(v0 + 520);
          v278 = *(v0 + 512);
          v84 = *(v0 + 496);
          v283 = *(v0 + 504);
          v267 = *(v0 + 696);
          v85 = *(v0 + 344);
          v265 = *(v0 + 336);
          v86 = *(v0 + 280);
          v87 = (v86 + *(v0 + 736));
          v88 = v87[3];
          v89 = v87[4];
          v288 = *(v0 + 752);
          v291 = v87;
          sub_100024DC8(v87, v88);
          *(v0 + 120) = v288;
          v90 = sub_10003B47C((v0 + 96));
          v81(v90, v86 + v82, v288);
          Configuration.environment(systemInfo:)((v0 + 96), v88, v89, v83);
          sub_100011CF0((v0 + 96));
          v91 = (v84 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
          v92 = *(v85 + 16);
          *(v0 + 864) = v92;
          *(v0 + 872) = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v92(v84, v86 + v267, v265);
          *v91 = sub_1001D02B0();
          v91[1] = v93;
          swift_storeEnumTagMultiPayload();
          sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
          sub_1001D1BC0();
          (*(v278 + 8))(v270, v283);
          sub_100011AC0(&qword_1002292D0, &qword_1001D6440);
          sub_1001D13D0();
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_1001D62F0;
          v282 = v94;
          if (qword_1002276B0 == -1)
          {
            goto LABEL_62;
          }

          goto LABEL_138;
        }

LABEL_51:
        (v75[6])(v74);
        if (v76)
        {
          v77 = *(v0 + 624);
          v78 = *(v0 + 616);
          v79 = *(v0 + 608);
          sub_100024DC8(v73, v73[3]);
          sub_1001D0520();
          sub_1001D0210();
          (*(v78 + 8))(v77, v79);
        }

        v117 = *(v0 + 592);
        v118 = *(v0 + 568);
        v119 = *(v0 + 560);
        v120 = *(v0 + 288);
        sub_1001CFD50();
        sub_1001CFCF0();
        v121 = *(v118 + 8);
        *(v0 + 840) = v121;
        *(v0 + 848) = (v118 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v121(v117, v119);
        v122 = *(v120 + 144);
        v123 = *(v120 + 88);
        v292 = (*(v122 + 72) + **(v122 + 72));
        v124 = swift_task_alloc();
        *(v0 + 856) = v124;
        *v124 = v0;
        v124[1] = sub_100055F58;
        v125 = *(v0 + 688);
        v126 = *(v0 + 600);

        return v292(v125, v287, v126, v123, v122);
      }
    }

    else
    {
      if ((v282 - v277) < 0)
      {
        __break(1u);
        goto LABEL_140;
      }

      v71 = v48 * (1 - v70);
      if ((v48 * (1 - v70)) >> 64 == v71 >> 63)
      {
        *(v69 + 24) = v71;
        *(v69 + 32) = 2048;
        v72 = v277 - v282;
        goto LABEL_60;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_138:
  swift_once();
LABEL_62:
  v95 = *(v0 + 760);
  v96 = *(v0 + 752);
  v97 = *(v0 + 456);
  v98 = *(v0 + 432);
  v99 = *(v0 + 440);
  v100 = sub_10003A37C(v98, qword_100242D90);
  v101 = *(v99 + 16);
  *(v0 + 880) = v101;
  *(v0 + 888) = (v99 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v101(v97, v100, v98);
  (*(v95 + 88))(v96, v95);
  sub_1001D13A0();
  if (qword_1002276B8 != -1)
  {
    swift_once();
  }

  v102 = *(v0 + 456);
  v103 = *(v0 + 432);
  v104 = sub_10003A37C(v103, qword_100242DA8);
  v101(v102, v104, v103);
  sub_1001D0890();
  sub_1001D13A0();
  if (qword_1002276C0 != -1)
  {
    swift_once();
  }

  v105 = *(v0 + 456);
  v106 = *(v0 + 432);
  v271 = *(v0 + 280);
  v107 = sub_10003A37C(v106, qword_100242DC0);
  v101(v105, v107, v106);
  v69 = v101;

  sub_1001D13A0();
  sub_1001D1330();
  sub_1001D13A0();
  sub_1001D1370();
  sub_1001D13A0();
  *(v0 + 240) = v282;
  sub_10005AF40(&qword_1002292D8, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  sub_1001D1D80();
  sub_100011AC0(&qword_1002292E0, &unk_1001D6448);
  sub_100024B78(&qword_1002292E8, &qword_1002292E0, &unk_1001D6448, &protocol conformance descriptor for [A]);
  sub_1001D1D50();
  v108 = *v271;
  if (*(v271 + *(*v271 + 288)) != 1)
  {
    if (qword_1002276D8 == -1)
    {
LABEL_78:
      v127 = *(v0 + 448);
      v128 = *(v0 + 432);
      v129 = sub_10003A37C(v128, qword_100242E08);
      (v69)(v127, v129, v128);
      v130 = [objc_opt_self() mainBundle];
      v131 = [v130 bundleIdentifier];

      if (v131)
      {
        sub_1001D17D0();
      }

      sub_1001D0EF0();
      if (qword_1002276D0 != -1)
      {
        swift_once();
      }

      v138 = *(v0 + 456);
      v139 = *(v0 + 432);
      v140 = sub_10003A37C(v139, qword_100242DF0);
      (v69)(v138, v140, v139);
      goto LABEL_86;
    }

LABEL_140:
    swift_once();
    goto LABEL_78;
  }

  v109 = *(v0 + 280);
  if (*(v109 + *(v108 + 296) + 8))
  {
    if (*(v109 + *(v108 + 304) + 8))
    {
      v110 = qword_1002276D8;

      if (v110 != -1)
      {
        swift_once();
      }

      v111 = *(v0 + 456);
      v112 = *(v0 + 432);
      v113 = sub_10003A37C(v112, qword_100242E08);
      v101(v111, v113, v112);
      sub_1001D0EF0();
      if (qword_1002276D0 != -1)
      {
        swift_once();
      }

      v114 = *(v0 + 456);
      v115 = *(v0 + 432);
      v116 = sub_10003A37C(v115, qword_100242DF0);
      v101(v114, v116, v115);
LABEL_86:
      sub_1001D0EF0();
      (*(*(v0 + 760) + 80))(*(v0 + 752));
      if (v141)
      {
        if (qword_1002276E8 != -1)
        {
          swift_once();
        }

        v142 = *(v0 + 456);
        v143 = *(v0 + 432);
        v144 = sub_10003A37C(v143, qword_100242E38);
        (v69)(v142, v144, v143);
        sub_1001D0EF0();
      }

      v284 = v69;
      v145 = *(v0 + 424);
      v146 = *(v0 + 384);
      v147 = *(v0 + 392);
      sub_100024DC8((*(v0 + 280) + *(v0 + 736)), v291[3]);
      sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
      sub_1001D0320();
      sub_10005956C();
      sub_1001D0210();
      v148 = *(v147 + 8);
      v148(v145, v146);
      if (*(v0 + 144))
      {
        if (qword_1002276F8 != -1)
        {
          swift_once();
        }

        v149 = *(v0 + 456);
        v150 = *(v0 + 432);
        v151 = sub_10003A37C(v150, qword_100242E68);
        v284(v149, v151, v150);
        sub_1001D0EF0();
      }

      v152 = *(v0 + 416);
      v153 = *(v0 + 384);
      sub_100024DC8((*(v0 + 280) + *(v0 + 736)), v291[3]);
      sub_1001D0380();
      sub_1001D0210();
      v148(v152, v153);
      if (*(v0 + 160))
      {
        if (qword_100227718 != -1)
        {
          swift_once();
        }

        v154 = *(v0 + 456);
        v155 = *(v0 + 432);
        v156 = sub_10003A37C(v155, qword_100242EC8);
        v284(v154, v156, v155);
        sub_1001D0EF0();
      }

      v157 = *(v0 + 408);
      v158 = *(v0 + 384);
      sub_100024DC8((*(v0 + 280) + *(v0 + 736)), v291[3]);
      sub_1001D0470();
      sub_1001D0210();
      v148(v157, v158);
      if (*(v0 + 176))
      {
        if (qword_100227730 != -1)
        {
          swift_once();
        }

        v159 = *(v0 + 456);
        v160 = *(v0 + 432);
        v161 = sub_10003A37C(v160, qword_100242F10);
        v284(v159, v161, v160);
        sub_1001D0EF0();
      }

      v162 = *(v0 + 280);
      if (*(v162 + *(*v162 + 328)) == 1)
      {
        if (qword_100227720 != -1)
        {
          swift_once();
        }

        v163 = *(v0 + 456);
        v164 = *(v0 + 432);
        v165 = sub_10003A37C(v164, qword_100242EE0);
        v284(v163, v165, v164);
        sub_1001D0EF0();
        v162 = *(v0 + 280);
      }

      v166 = *(v0 + 400);
      v167 = *(v0 + 384);
      sub_100024DC8((v162 + *(v0 + 736)), v291[3]);
      sub_1001D0340();
      sub_1001D0210();
      v148(v166, v167);
      if (*(v0 + 192))
      {
        if (qword_100227700 != -1)
        {
          swift_once();
        }

        v168 = *(v0 + 456);
        v169 = *(v0 + 432);
        v170 = sub_10003A37C(v169, qword_100242E80);
        v284(v168, v170, v169);
        sub_1001D0EF0();
        if (qword_100227708 != -1)
        {
          swift_once();
        }

        v171 = *(v0 + 456);
        v172 = *(v0 + 432);
        v173 = sub_10003A37C(v172, qword_100242E98);
        v284(v171, v173, v172);
        sub_1001D0EF0();
      }

      v174 = *(v0 + 584);
      v175 = *(v0 + 576);
      v176 = *(v0 + 568);
      v177 = *(v0 + 560);
      sub_1001CFD50();
      (*(v176 + 16))(v175, v174, v177);

      v178 = sub_1001D0E50();
      v179 = sub_1001D1E00();

      if (os_log_type_enabled(v178, v179))
      {
        v180 = *(v0 + 720);
        v181 = *(v0 + 712);
        v182 = *(v0 + 576);
        v183 = *(v0 + 568);
        v184 = *(v0 + 560);
        v185 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        *v185 = 136315394;
        *(v185 + 4) = sub_1000954E0(v181, v180, &v294);
        *(v185 + 12) = 2080;
        sub_10005AF40(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v186 = sub_1001D23A0();
        v188 = v187;
        v189 = *(v183 + 8);
        v189(v182, v184);
        v190 = sub_1000954E0(v186, v188, &v294);

        *(v185 + 14) = v190;
        _os_log_impl(&_mh_execute_header, v178, v179, "%s fetchTime: %s", v185, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v191 = *(v0 + 576);
        v192 = *(v0 + 568);
        v193 = *(v0 + 560);

        v189 = *(v192 + 8);
        v189(v191, v193);
      }

      *(v0 + 896) = v189;
      v194 = *(v0 + 536);
      v195 = enum case for TC2Environment.production(_:);
      *(v0 + 960) = enum case for TC2Environment.production(_:);
      if (*(v0 + 964))
      {
        v196 = 0;
      }

      else
      {
        v196 = *(v0 + 832);
      }

      *(v0 + 912) = _swiftEmptyArrayStorage;
      *(v0 + 904) = v196;
      v197 = *(v0 + 552);
      v198 = *(v0 + 544);
      v199 = *(v0 + 528);
      *(v0 + 200) = sub_1001D23A0();
      *(v0 + 208) = v200;
      v302._countAndFlagsBits = 35;
      v302._object = 0xE100000000000000;
      sub_1001D18B0(v302);
      v293 = v196;
      *(v0 + 248) = v196;
      v303._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v303);

      v304._countAndFlagsBits = 58;
      v304._object = 0xE100000000000000;
      sub_1001D18B0(v304);
      v201 = *(v0 + 200);
      v202 = *(v0 + 208);
      *(v0 + 920) = v201;
      *(v0 + 928) = v202;
      sub_1001CFD90();
      (*(v194 + 16))(v198, v197, v199);
      v203 = (*(v194 + 88))(v198, v199);
      v204 = *(v0 + 864);
      if (v203 == v195)
      {
        v285 = v201;
        v206 = *(v0 + 368);
        v205 = *(v0 + 376);
        v208 = *(v0 + 352);
        v207 = *(v0 + 360);
        v209 = *(v0 + 336);
        sub_1001CFD90();
        v204(v207, v205, v209);
        v204(v208, v206, v209);

        v210 = sub_1001D0E50();
        v211 = sub_1001D1E00();

        if (os_log_type_enabled(v210, v211))
        {
          v279 = v211;
          v212 = *(v0 + 360);
          v272 = *(v0 + 352);
          v214 = *(v0 + 336);
          v213 = *(v0 + 344);
          v215 = swift_slowAlloc();
          v294 = swift_slowAlloc();
          *v215 = 136315650;
          *(v215 + 4) = sub_1000954E0(v285, v202, &v294);
          *(v215 + 12) = 2080;
          v216 = sub_1001D23A0();
          v218 = v217;
          v219 = *(v213 + 8);
          v219(v212, v214);
          v220 = sub_1000954E0(v216, v218, &v294);

          *(v215 + 14) = v220;
          *(v215 + 22) = 2080;
          v221 = sub_1001D23A0();
          v223 = v222;
          v219(v272, v214);
          v224 = sub_1000954E0(v221, v223, &v294);

          *(v215 + 24) = v224;
          _os_log_impl(&_mh_execute_header, v210, v279, "%s Request: %s RequestIDForReporting: %s", v215, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v229 = *(v0 + 352);
          v228 = *(v0 + 360);
          v231 = *(v0 + 336);
          v230 = *(v0 + 344);

          v232 = *(v230 + 8);
          v232(v229, v231);
          v232(v228, v231);
        }
      }

      else
      {
        v225 = *(v0 + 544);
        v226 = *(v0 + 536);
        v227 = *(v0 + 528);
        v204(*(v0 + 368), *(v0 + 376), *(v0 + 336));
        (*(v226 + 8))(v225, v227);
      }

      if (qword_1002276A8 != -1)
      {
        swift_once();
      }

      v233 = *(v0 + 880);
      v234 = *(v0 + 808);
      v235 = *(v0 + 800);
      v289 = *(v0 + 696);
      v236 = *(v0 + 456);
      v237 = *(v0 + 432);
      v238 = *(v0 + 280);
      v239 = sub_10003A37C(v237, qword_100242D78);
      v233(v236, v239, v237);
      sub_1001CFD70();
      sub_1001D0EF0();
      v240 = swift_task_alloc();
      *(v0 + 936) = v240;
      *v240 = v0;
      v240[1] = sub_100057C18;
      if (v235)
      {
        v241 = v234;
      }

      else
      {
        v241 = 0;
      }

      v242 = 0xE000000000000000;
      if (v235)
      {
        v242 = v235;
      }

      v243 = *(v0 + 824);
      v244 = *(v0 + 688);
      v245 = *(v0 + 584);
      v246 = *(v0 + 480);
      v248 = *(v0 + 368);
      v247 = *(v0 + 376);
      v249 = *(v0 + 320);
      v299 = v242;
      v300 = v243;
      v298 = v241;

      return sub_10004869C(v249, v238 + v289, v247, v248, v293, v245, v246, v244);
    }

    v132 = sub_1001D0E50();
    v250 = sub_1001D1DE0();

    if (os_log_type_enabled(v132, v250))
    {
      v251 = *(v0 + 720);
      v252 = *(v0 + 712);
      v253 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      v294 = v254;
      *v253 = 136315138;
      *(v253 + 4) = sub_1000954E0(v252, v251, &v294);
      _os_log_impl(&_mh_execute_header, v132, v250, "%s not prefetching, missing featureIdentifier", v253, 0xCu);
      sub_100011CF0(v254);
    }
  }

  else
  {

    v132 = sub_1001D0E50();
    v133 = sub_1001D1DE0();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = *(v0 + 720);
      v135 = *(v0 + 712);
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v294 = v137;
      *v136 = 136315138;
      *(v136 + 4) = sub_1000954E0(v135, v134, &v294);
      _os_log_impl(&_mh_execute_header, v132, v133, "%s not prefetching, missing bundleIdentifier", v136, 0xCu);
      sub_100011CF0(v137);
    }
  }

  v255 = *(v0 + 792);
  v256 = *(v0 + 784);
  v257 = *(v0 + 680);
  v286 = *(v0 + 672);
  v290 = *(v0 + 688);
  v258 = *(v0 + 536);
  v273 = *(v0 + 528);
  v280 = *(v0 + 552);
  v259 = *(v0 + 472);
  v260 = *(v0 + 480);
  v261 = *(v0 + 464);
  sub_1001D0200();
  sub_10005AF40(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
  swift_allocError();
  sub_1001D01F0();
  swift_willThrow();
  sub_100011E48(v256, v255);
  (*(v259 + 8))(v260, v261);
  (*(v258 + 8))(v280, v273);
  (*(v257 + 8))(v290, v286);
  sub_100058BE8(*(v0 + 280), *(v0 + 712), *(v0 + 720), "%s finished batch of prefetch requests", *(v0 + 576));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100055F58(char a1)
{
  *(*v1 + 965) = a1;

  return _swift_task_switch(sub_100056058, 0, 0);
}

uint64_t sub_100056058()
{
  v209 = v0;
  if (*(v0 + 965) == 1)
  {

    v1 = sub_1001D0E50();
    v2 = sub_1001D1DE0();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 720);
      v4 = *(v0 + 712);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v208[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000954E0(v4, v3, v208);
      _os_log_impl(&_mh_execute_header, v1, v2, "%s not prefetching, attestations exist for workload", v5, 0xCu);
      sub_100011CF0(v6);
    }

    v7 = *(v0 + 840);
    v8 = *(v0 + 792);
    v9 = *(v0 + 784);
    v202 = *(v0 + 688);
    v10 = *(v0 + 680);
    v11 = *(v0 + 672);
    v12 = *(v0 + 600);
    v13 = *(v0 + 560);
    sub_1001D0200();
    sub_10005AF40(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v9, v8);
    v7(v12, v13);
    (*(v10 + 8))(v202, v11);
    goto LABEL_79;
  }

  (*(v0 + 840))(*(v0 + 600), *(v0 + 560));
  v14 = *(v0 + 768);
  v15 = *(v0 + 744);
  v189 = *(v0 + 696);
  v16 = *(v0 + 552);
  v190 = *(v0 + 520);
  v194 = *(v0 + 512);
  v197 = *(v0 + 504);
  v17 = *(v0 + 496);
  v18 = *(v0 + 344);
  v188 = *(v0 + 336);
  v19 = *(v0 + 280);
  v20 = (v19 + *(v0 + 736));
  v21 = v20[3];
  v22 = v20[4];
  v203 = *(v0 + 752);
  v206 = v20;
  sub_100024DC8(v20, v21);
  *(v0 + 120) = v203;
  v23 = sub_10003B47C((v0 + 96));
  v14(v23, v19 + v15, v203);
  Configuration.environment(systemInfo:)((v0 + 96), v21, v22, v16);
  sub_100011CF0((v0 + 96));
  v24 = (v17 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
  v25 = *(v18 + 16);
  *(v0 + 864) = v25;
  *(v0 + 872) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v17, v19 + v189, v188);
  *v24 = sub_1001D02B0();
  v24[1] = v26;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v194 + 8))(v190, v197);
  sub_100011AC0(&qword_1002292D0, &qword_1001D6440);
  sub_1001D13D0();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001D62F0;
  v198 = v27;
  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 760);
  v29 = *(v0 + 752);
  v30 = *(v0 + 456);
  v31 = *(v0 + 432);
  v32 = *(v0 + 440);
  v33 = sub_10003A37C(v31, qword_100242D90);
  v34 = *(v32 + 16);
  *(v0 + 880) = v34;
  *(v0 + 888) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v30, v33, v31);
  (*(v28 + 88))(v29, v28);
  sub_1001D13A0();
  if (qword_1002276B8 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 456);
  v36 = *(v0 + 432);
  v37 = sub_10003A37C(v36, qword_100242DA8);
  v34(v35, v37, v36);
  sub_1001D0890();
  sub_1001D13A0();
  if (qword_1002276C0 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 456);
  v39 = *(v0 + 432);
  v191 = *(v0 + 280);
  v40 = sub_10003A37C(v39, qword_100242DC0);
  v34(v38, v40, v39);
  v41 = v34;

  sub_1001D13A0();
  sub_1001D1330();
  sub_1001D13A0();
  sub_1001D1370();
  sub_1001D13A0();
  *(v0 + 240) = v198;
  sub_10005AF40(&qword_1002292D8, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  sub_1001D1D80();
  sub_100011AC0(&qword_1002292E0, &unk_1001D6448);
  sub_100024B78(&qword_1002292E8, &qword_1002292E0, &unk_1001D6448, &protocol conformance descriptor for [A]);
  sub_1001D1D50();
  v42 = *v191;
  if (*(v191 + *(*v191 + 288)) != 1)
  {
    if (qword_1002276D8 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 448);
    v52 = *(v0 + 432);
    v53 = sub_10003A37C(v52, qword_100242E08);
    v34(v51, v53, v52);
    v54 = [objc_opt_self() mainBundle];
    v55 = [v54 bundleIdentifier];

    if (v55)
    {
      sub_1001D17D0();
    }

    sub_1001D0EF0();
    if (qword_1002276D0 != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 456);
    v63 = *(v0 + 432);
    v64 = sub_10003A37C(v63, qword_100242DF0);
    v41(v62, v64, v63);
    goto LABEL_29;
  }

  v43 = *(v0 + 280);
  if (!*(v43 + *(v42 + 296) + 8))
  {

    v56 = sub_1001D0E50();
    v57 = sub_1001D1DE0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 720);
      v59 = *(v0 + 712);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v208[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_1000954E0(v59, v58, v208);
      _os_log_impl(&_mh_execute_header, v56, v57, "%s not prefetching, missing bundleIdentifier", v60, 0xCu);
      sub_100011CF0(v61);
    }

    goto LABEL_78;
  }

  if (!*(v43 + *(v42 + 304) + 8))
  {

    v56 = sub_1001D0E50();
    v175 = sub_1001D1DE0();

    if (os_log_type_enabled(v56, v175))
    {
      v176 = *(v0 + 720);
      v177 = *(v0 + 712);
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v208[0] = v179;
      *v178 = 136315138;
      *(v178 + 4) = sub_1000954E0(v177, v176, v208);
      _os_log_impl(&_mh_execute_header, v56, v175, "%s not prefetching, missing featureIdentifier", v178, 0xCu);
      sub_100011CF0(v179);
    }

LABEL_78:

    v180 = *(v0 + 792);
    v181 = *(v0 + 784);
    v182 = *(v0 + 680);
    v201 = *(v0 + 672);
    v205 = *(v0 + 688);
    v183 = *(v0 + 536);
    v193 = *(v0 + 528);
    v196 = *(v0 + 552);
    v184 = *(v0 + 472);
    v185 = *(v0 + 480);
    v186 = *(v0 + 464);
    sub_1001D0200();
    sub_10005AF40(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v181, v180);
    (*(v184 + 8))(v185, v186);
    (*(v183 + 8))(v196, v193);
    (*(v182 + 8))(v205, v201);
LABEL_79:
    sub_100058BE8(*(v0 + 280), *(v0 + 712), *(v0 + 720), "%s finished batch of prefetch requests", *(v0 + 576));

    v187 = *(v0 + 8);

    return v187();
  }

  v44 = qword_1002276D8;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 456);
  v46 = *(v0 + 432);
  v47 = sub_10003A37C(v46, qword_100242E08);
  v34(v45, v47, v46);
  sub_1001D0EF0();
  if (qword_1002276D0 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 456);
  v49 = *(v0 + 432);
  v50 = sub_10003A37C(v49, qword_100242DF0);
  v34(v48, v50, v49);
LABEL_29:
  sub_1001D0EF0();
  (*(*(v0 + 760) + 80))(*(v0 + 752));
  if (v65)
  {
    if (qword_1002276E8 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 456);
    v67 = *(v0 + 432);
    v68 = sub_10003A37C(v67, qword_100242E38);
    v41(v66, v68, v67);
    sub_1001D0EF0();
  }

  v199 = v41;
  v69 = *(v0 + 424);
  v70 = *(v0 + 384);
  v71 = *(v0 + 392);
  sub_100024DC8((*(v0 + 280) + *(v0 + 736)), v206[3]);
  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0320();
  sub_10005956C();
  sub_1001D0210();
  v72 = *(v71 + 8);
  v72(v69, v70);
  if (*(v0 + 144))
  {
    if (qword_1002276F8 != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 456);
    v74 = *(v0 + 432);
    v75 = sub_10003A37C(v74, qword_100242E68);
    v199(v73, v75, v74);
    sub_1001D0EF0();
  }

  v76 = *(v0 + 416);
  v77 = *(v0 + 384);
  sub_100024DC8((*(v0 + 280) + *(v0 + 736)), v206[3]);
  sub_1001D0380();
  sub_1001D0210();
  v72(v76, v77);
  if (*(v0 + 160))
  {
    if (qword_100227718 != -1)
    {
      swift_once();
    }

    v78 = *(v0 + 456);
    v79 = *(v0 + 432);
    v80 = sub_10003A37C(v79, qword_100242EC8);
    v199(v78, v80, v79);
    sub_1001D0EF0();
  }

  v81 = *(v0 + 408);
  v82 = *(v0 + 384);
  sub_100024DC8((*(v0 + 280) + *(v0 + 736)), v206[3]);
  sub_1001D0470();
  sub_1001D0210();
  v72(v81, v82);
  if (*(v0 + 176))
  {
    if (qword_100227730 != -1)
    {
      swift_once();
    }

    v83 = *(v0 + 456);
    v84 = *(v0 + 432);
    v85 = sub_10003A37C(v84, qword_100242F10);
    v199(v83, v85, v84);
    sub_1001D0EF0();
  }

  v86 = *(v0 + 280);
  if (*(v86 + *(*v86 + 328)) == 1)
  {
    if (qword_100227720 != -1)
    {
      swift_once();
    }

    v87 = *(v0 + 456);
    v88 = *(v0 + 432);
    v89 = sub_10003A37C(v88, qword_100242EE0);
    v199(v87, v89, v88);
    sub_1001D0EF0();
    v86 = *(v0 + 280);
  }

  v90 = *(v0 + 400);
  v91 = *(v0 + 384);
  sub_100024DC8((v86 + *(v0 + 736)), v206[3]);
  sub_1001D0340();
  sub_1001D0210();
  v72(v90, v91);
  if (*(v0 + 192))
  {
    if (qword_100227700 != -1)
    {
      swift_once();
    }

    v92 = *(v0 + 456);
    v93 = *(v0 + 432);
    v94 = sub_10003A37C(v93, qword_100242E80);
    v199(v92, v94, v93);
    sub_1001D0EF0();
    if (qword_100227708 != -1)
    {
      swift_once();
    }

    v95 = *(v0 + 456);
    v96 = *(v0 + 432);
    v97 = sub_10003A37C(v96, qword_100242E98);
    v199(v95, v97, v96);
    sub_1001D0EF0();
  }

  v98 = *(v0 + 584);
  v99 = *(v0 + 576);
  v100 = *(v0 + 568);
  v101 = *(v0 + 560);
  sub_1001CFD50();
  (*(v100 + 16))(v99, v98, v101);

  v102 = sub_1001D0E50();
  v103 = sub_1001D1E00();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = *(v0 + 720);
    v105 = *(v0 + 712);
    v106 = *(v0 + 576);
    v107 = *(v0 + 568);
    v108 = *(v0 + 560);
    v109 = swift_slowAlloc();
    v208[0] = swift_slowAlloc();
    *v109 = 136315394;
    *(v109 + 4) = sub_1000954E0(v105, v104, v208);
    *(v109 + 12) = 2080;
    sub_10005AF40(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v110 = sub_1001D23A0();
    v112 = v111;
    v113 = *(v107 + 8);
    v113(v106, v108);
    v114 = sub_1000954E0(v110, v112, v208);

    *(v109 + 14) = v114;
    _os_log_impl(&_mh_execute_header, v102, v103, "%s fetchTime: %s", v109, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v115 = *(v0 + 576);
    v116 = *(v0 + 568);
    v117 = *(v0 + 560);

    v113 = *(v116 + 8);
    v113(v115, v117);
  }

  *(v0 + 896) = v113;
  v118 = *(v0 + 536);
  v119 = enum case for TC2Environment.production(_:);
  *(v0 + 960) = enum case for TC2Environment.production(_:);
  if (*(v0 + 964))
  {
    v120 = 0;
  }

  else
  {
    v120 = *(v0 + 832);
  }

  *(v0 + 912) = _swiftEmptyArrayStorage;
  *(v0 + 904) = v120;
  v121 = *(v0 + 552);
  v122 = *(v0 + 544);
  v123 = *(v0 + 528);
  *(v0 + 200) = sub_1001D23A0();
  *(v0 + 208) = v124;
  v214._countAndFlagsBits = 35;
  v214._object = 0xE100000000000000;
  sub_1001D18B0(v214);
  v207 = v120;
  *(v0 + 248) = v120;
  v215._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v215);

  v216._countAndFlagsBits = 58;
  v216._object = 0xE100000000000000;
  sub_1001D18B0(v216);
  v125 = *(v0 + 200);
  v126 = *(v0 + 208);
  *(v0 + 920) = v125;
  *(v0 + 928) = v126;
  sub_1001CFD90();
  (*(v118 + 16))(v122, v121, v123);
  v127 = (*(v118 + 88))(v122, v123);
  v128 = *(v0 + 864);
  if (v127 == v119)
  {
    v200 = v125;
    v130 = *(v0 + 368);
    v129 = *(v0 + 376);
    v132 = *(v0 + 352);
    v131 = *(v0 + 360);
    v133 = *(v0 + 336);
    sub_1001CFD90();
    v128(v131, v129, v133);
    v128(v132, v130, v133);

    v134 = sub_1001D0E50();
    v135 = sub_1001D1E00();

    if (os_log_type_enabled(v134, v135))
    {
      v195 = v135;
      v136 = *(v0 + 360);
      v192 = *(v0 + 352);
      v138 = *(v0 + 336);
      v137 = *(v0 + 344);
      v139 = swift_slowAlloc();
      v208[0] = swift_slowAlloc();
      *v139 = 136315650;
      *(v139 + 4) = sub_1000954E0(v200, v126, v208);
      *(v139 + 12) = 2080;
      v140 = sub_1001D23A0();
      v142 = v141;
      v143 = *(v137 + 8);
      v143(v136, v138);
      v144 = sub_1000954E0(v140, v142, v208);

      *(v139 + 14) = v144;
      *(v139 + 22) = 2080;
      v145 = sub_1001D23A0();
      v147 = v146;
      v143(v192, v138);
      v148 = sub_1000954E0(v145, v147, v208);

      *(v139 + 24) = v148;
      _os_log_impl(&_mh_execute_header, v134, v195, "%s Request: %s RequestIDForReporting: %s", v139, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v153 = *(v0 + 352);
      v152 = *(v0 + 360);
      v155 = *(v0 + 336);
      v154 = *(v0 + 344);

      v156 = *(v154 + 8);
      v156(v153, v155);
      v156(v152, v155);
    }
  }

  else
  {
    v149 = *(v0 + 544);
    v150 = *(v0 + 536);
    v151 = *(v0 + 528);
    v128(*(v0 + 368), *(v0 + 376), *(v0 + 336));
    (*(v150 + 8))(v149, v151);
  }

  if (qword_1002276A8 != -1)
  {
    swift_once();
  }

  v157 = *(v0 + 880);
  v158 = *(v0 + 808);
  v159 = *(v0 + 800);
  v204 = *(v0 + 696);
  v160 = *(v0 + 456);
  v161 = *(v0 + 432);
  v162 = *(v0 + 280);
  v163 = sub_10003A37C(v161, qword_100242D78);
  v157(v160, v163, v161);
  sub_1001CFD70();
  sub_1001D0EF0();
  v164 = swift_task_alloc();
  *(v0 + 936) = v164;
  *v164 = v0;
  v164[1] = sub_100057C18;
  if (v159)
  {
    v165 = v158;
  }

  else
  {
    v165 = 0;
  }

  v166 = 0xE000000000000000;
  if (v159)
  {
    v166 = v159;
  }

  v167 = *(v0 + 824);
  v168 = *(v0 + 688);
  v169 = *(v0 + 584);
  v170 = *(v0 + 480);
  v172 = *(v0 + 368);
  v171 = *(v0 + 376);
  v173 = *(v0 + 320);
  v212 = v166;
  v213 = v167;
  v211 = v165;

  return sub_10004869C(v173, v162 + v204, v171, v172, v207, v169, v170, v168);
}

uint64_t sub_100057C18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 944) = a1;
  *(v3 + 952) = v1;

  if (v1)
  {

    v4 = sub_100058784;
  }

  else
  {
    v4 = sub_100057D4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100057D4C()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v3 + 32);
  v5(v1, *(v0 + 320), v4);
  (*(v3 + 16))(v2, v1, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 912);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1000095C8(0, *(v7 + 2) + 1, 1, *(v0 + 912));
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1000095C8((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 944);
  v12 = *(v0 + 304);
  v11 = *(v0 + 312);
  v13 = *(v0 + 296);
  *(v7 + 2) = v9 + 1;
  v5(&v7[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9], v11, v13);
  v14 = *(sub_1001D0850() + 16);

  v15 = __OFSUB__(v14, v10);
  v16 = v14 - v10;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v118 = v7;

    v17 = sub_1001D0E50();
    v18 = sub_1001D1E00();

    if (os_log_type_enabled(v17, v18))
    {
      v102 = *(v0 + 944);
      v19 = *(v0 + 928);
      v20 = *(v0 + 920);
      v112 = *(v0 + 368);
      v115 = *(v0 + 376);
      v21 = *(v0 + 344);
      v106 = *(v0 + 328);
      v109 = *(v0 + 336);
      v22 = v16;
      v23 = *(v0 + 304);
      v104 = *(v0 + 296);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v120 = v25;
      *v24 = 136315650;
      v26 = sub_1000954E0(v20, v19, &v120);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v102;
      *(v24 + 22) = 2048;
      *(v24 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s attestations saved: %ld duplicates: %ld", v24, 0x20u);
      sub_100011CF0(v25);

      (*(v23 + 8))(v106, v104);
      v27 = *(v21 + 8);
      v27(v112, v109);
      v28 = v115;
      v29 = v109;
    }

    else
    {
      v31 = *(v0 + 368);
      v30 = *(v0 + 376);
      v33 = *(v0 + 336);
      v32 = *(v0 + 344);
      v34 = *(v0 + 328);
      v35 = *(v0 + 296);
      v36 = *(v0 + 304);

      (*(v36 + 8))(v34, v35);
      v27 = *(v32 + 8);
      v27(v31, v33);
      v28 = v30;
      v29 = v33;
    }

    v27(v28, v29);
    v37 = *(v0 + 904);
    if (*(v0 + 964))
    {
      v38 = *(v0 + 816) - 1;
    }

    else
    {
      v38 = *(v0 + 832);
    }

    if (v37 == v38)
    {
      v103 = *(v0 + 896);
      v113 = *(v0 + 712);
      v116 = *(v0 + 720);
      v39 = *(v0 + 680);
      v107 = *(v0 + 672);
      v110 = *(v0 + 688);
      v40 = *(v0 + 584);
      v41 = *(v0 + 560);
      v42 = *(v0 + 536);
      v100 = *(v0 + 528);
      v101 = *(v0 + 552);
      v44 = *(v0 + 472);
      v43 = *(v0 + 480);
      v45 = *(v0 + 464);
      v105 = *(v0 + 280);
      sub_100011E48(*(v0 + 784), *(v0 + 792));

      v103(v40, v41);
      (*(v44 + 8))(v43, v45);
      (*(v42 + 8))(v101, v100);
      (*(v39 + 8))(v110, v107);
      sub_100058BE8(v105, v113, v116, "%s finished batch of prefetch requests", v99);

      v46 = *(v0 + 8);

      return v46(v118);
    }

    v48 = v37 + 1;
    if (v37 != -1)
    {
      *(v0 + 912) = v118;
      *(v0 + 904) = v48;
      v49 = *(v0 + 960);
      v50 = *(v0 + 552);
      v51 = *(v0 + 544);
      v52 = *(v0 + 536);
      v53 = *(v0 + 528);
      *(v0 + 200) = sub_1001D23A0();
      *(v0 + 208) = v54;
      v121._countAndFlagsBits = 35;
      v121._object = 0xE100000000000000;
      sub_1001D18B0(v121);
      v118 = v48;
      *(v0 + 248) = v48;
      v122._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v122);

      v123._countAndFlagsBits = 58;
      v123._object = 0xE100000000000000;
      sub_1001D18B0(v123);
      v55 = *(v0 + 200);
      v56 = *(v0 + 208);
      *(v0 + 920) = v55;
      *(v0 + 928) = v56;
      sub_1001CFD90();
      (*(v52 + 16))(v51, v50, v53);
      v57 = (*(v52 + 88))(v51, v53);
      v58 = *(v0 + 864);
      if (v57 == v49)
      {
        v114 = v55;
        v59 = *(v0 + 368);
        v60 = *(v0 + 376);
        v62 = *(v0 + 352);
        v61 = *(v0 + 360);
        v63 = *(v0 + 336);
        sub_1001CFD90();
        v58(v61, v60, v63);
        v58(v62, v59, v63);

        v64 = sub_1001D0E50();
        v65 = sub_1001D1E00();

        if (os_log_type_enabled(v64, v65))
        {
          v111 = v65;
          v66 = *(v0 + 360);
          v108 = *(v0 + 352);
          v68 = *(v0 + 336);
          v67 = *(v0 + 344);
          v69 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          *v69 = 136315650;
          *(v69 + 4) = sub_1000954E0(v114, v56, &v120);
          *(v69 + 12) = 2080;
          v70 = sub_1001D23A0();
          v72 = v71;
          v73 = *(v67 + 8);
          v73(v66, v68);
          v74 = sub_1000954E0(v70, v72, &v120);

          *(v69 + 14) = v74;
          *(v69 + 22) = 2080;
          v75 = sub_1001D23A0();
          v77 = v76;
          v73(v108, v68);
          v78 = sub_1000954E0(v75, v77, &v120);

          *(v69 + 24) = v78;
          _os_log_impl(&_mh_execute_header, v64, v111, "%s Request: %s RequestIDForReporting: %s", v69, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v83 = *(v0 + 352);
          v82 = *(v0 + 360);
          v85 = *(v0 + 336);
          v84 = *(v0 + 344);

          v86 = *(v84 + 8);
          v86(v83, v85);
          v86(v82, v85);
        }
      }

      else
      {
        v79 = *(v0 + 544);
        v80 = *(v0 + 536);
        v81 = *(v0 + 528);
        v58(*(v0 + 368), *(v0 + 376), *(v0 + 336));
        (*(v80 + 8))(v79, v81);
      }

      if (qword_1002276A8 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_23:
  v87 = *(v0 + 880);
  v117 = *(v0 + 696);
  v88 = *(v0 + 456);
  v89 = *(v0 + 432);
  v90 = *(v0 + 280);
  v91 = sub_10003A37C(v89, qword_100242D78);
  v87(v88, v91, v89);
  sub_1001CFD70();
  sub_1001D0EF0();
  v92 = swift_task_alloc();
  *(v0 + 936) = v92;
  *v92 = v0;
  v92[1] = sub_100057C18;
  v93 = *(v0 + 688);
  v94 = *(v0 + 584);
  v95 = *(v0 + 480);
  v97 = *(v0 + 368);
  v96 = *(v0 + 376);
  v98 = *(v0 + 320);

  return sub_10004869C(v98, v90 + v117, v96, v97, v118, v94, v95, v93);
}

uint64_t sub_100058784()
{
  v33 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[116];
    v4 = v0[115];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v5 = 136315394;
    v8 = sub_1000954E0(v4, v3, &v32);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s failed to fetch batch error: %@", v5, 0x16u);
    sub_100011F00(v6, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v7);
  }

  else
  {
  }

  v27 = v0[112];
  v22 = v0[99];
  v10 = v0[98];
  v11 = v0[85];
  v30 = v0[84];
  v31 = v0[86];
  v25 = v0[73];
  v23 = v0[70];
  v12 = v0[67];
  v28 = v0[66];
  v29 = v0[69];
  v13 = v0[59];
  v26 = v0[60];
  v24 = v0[58];
  v15 = v0[46];
  v14 = v0[47];
  v16 = v0[42];
  v17 = v0[43];
  swift_willThrow();
  sub_100011E48(v10, v22);
  v18 = *(v17 + 8);
  v18(v15, v16);
  v18(v14, v16);
  v27(v25, v23);
  (*(v13 + 8))(v26, v24);
  (*(v12 + 8))(v29, v28);
  (*(v11 + 8))(v31, v30);
  sub_100058BE8(v0[35], v0[89], v0[90], "%s finished batch of prefetch requests", v21);

  v19 = v0[1];

  return v19();
}

void sub_100058BE8(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, ...)
{

  oslog = sub_1001D0E50();
  v7 = sub_1001D1E00();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000954E0(a2, a3, &v11);
    _os_log_impl(&_mh_execute_header, oslog, v7, a4, v8, 0xCu);
    sub_100011CF0(v9);
  }
}

char *sub_100058D08()
{
  v1 = *v0;

  v2 = qword_100229210;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 208));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 216));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 224));
  (*(*(v1[13] - 8) + 8))(v0 + *(*v0 + 232));
  sub_100011CF0((v0 + *(*v0 + 240)));
  (*(*(v1[14] - 8) + 8))(v0 + *(*v0 + 248));
  (*(*(v1[15] - 8) + 8))(v0 + *(*v0 + 256));
  (*(*(v1[16] - 8) + 8))(v0 + *(*v0 + 264));
  v4 = *(*v0 + 272);
  v5 = sub_1001D08A0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 280);
  v7 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = *(*v0 + 320);
  v9 = sub_1001CFDA0();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_100059114()
{
  sub_100058D08();

  return swift_deallocClassInstance();
}

uint64_t initializeBufferWithCopyOfBuffer for Proto_Ropes_Common_CompressionAlgorithm(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Ropes_RateLimit_RequestType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Proto_Ropes_RateLimit_RequestType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000591E8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100059204(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100059234(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3, sub_10005A374, v8);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_100059300(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000593F8;

  return v6(a1);
}

uint64_t sub_1000593F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000594F0()
{
  result = qword_1002292C0;
  if (!qword_1002292C0)
  {
    sub_100011DF4(&qword_1002292B8, &qword_1001DD2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002292C0);
  }

  return result;
}

unint64_t sub_10005956C()
{
  result = qword_100230310;
  if (!qword_100230310)
  {
    sub_100011DF4(&qword_100228AA8, &qword_1001D5BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100230310);
  }

  return result;
}

uint64_t sub_1000595E8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1001D2190();
LABEL_9:
  result = sub_1001D2050();
  *v2 = result;
  return result;
}

_BYTE *sub_100059688@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10005B140(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10005B1F8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10005B274(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_10005971C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

char *sub_10005973C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17;
  v62 = a8;
  v71 = a7;
  v58 = a6;
  v59 = a5;
  v61 = a4;
  v60 = a3;
  v57 = a2;
  v70 = a13;
  v68 = a17;
  v69 = a12;
  v66 = a15;
  v67 = a16;
  v65 = a14;
  v64 = a11;
  v63 = a10;
  v72 = a9;
  v22 = *v17;
  v23 = sub_1001D02F0();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1001CF7E0();
  __chkstk_darwin(v27 - 8);
  sub_1001CF820();
  swift_allocObject();
  v28 = sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  *(v18 + 2) = v28;
  (*(v24 + 104))(v26, enum case for TC2LogCategory.prefetchRequest(_:), v23);
  sub_1001D08B0();
  (*(v24 + 8))(v26, v23);
  sub_1001CFD90();
  (*(*(v22[10] - 8) + 16))(&v18[*(*v18 + 208)], a1);
  (*(*(v22[11] - 8) + 16))(&v18[*(*v18 + 216)], v57);
  (*(*(v22[12] - 8) + 16))(&v18[*(*v18 + 224)], v60);
  (*(*(v22[13] - 8) + 16))(&v18[*(*v18 + 232)], v61);
  sub_100044698(a5, &v18[*(*v18 + 240)]);
  v29 = *(*v18 + 248);
  v61 = v22[14];
  (*(*(v61 - 8) + 16))(&v18[v29], a6);
  v30 = *(*v18 + 256);
  v31 = v22[15];
  v32 = *(v31 - 8);
  v57 = *(v32 + 16);
  v60 = v32 + 16;
  v57(&v18[v30], v71, v31);
  v33 = *(*v18 + 264);
  v34 = v22[16];
  v35 = *(v34 - 8);
  v55 = *(v35 + 16);
  v56 = v35 + 16;
  v36 = v62;
  v55(&v18[v33], v62, v34);
  v37 = *(*v18 + 272);
  v38 = sub_1001D08A0();
  v39 = *(v38 - 8);
  (*(v39 + 16))(&v18[v37], v72, v38);
  v40 = *(*v18 + 280);
  v41 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v42 = *(v41 - 8);
  v43 = &v18[v40];
  v44 = v63;
  (*(v42 + 16))(v43, v63, v41);
  v18[*(*v18 + 288)] = v64;
  v45 = &v18[*(*v18 + 296)];
  v46 = v66;
  *v45 = v65;
  v45[1] = v46;
  v47 = &v18[*(*v18 + 304)];
  v48 = v68;
  *v47 = v67;
  v47[1] = v48;
  v49 = &v18[*(*v18 + 312)];
  *v49 = v69;
  v49[8] = v70 & 1;
  v74[3] = v34;
  v74[4] = v22[23];
  v50 = sub_10003B47C(v74);
  v55(v50, v36, v34);
  v73[3] = v31;
  v73[4] = v22[22];
  v51 = sub_10003B47C(v73);
  v57(v51, v71, v31);
  v52 = v59;
  LOBYTE(v31) = (*(v22[21] + 128))(v74, v59, v73, v61);
  (*(v42 + 8))(v44, v41);
  (*(v39 + 8))(v72, v38);
  sub_100011CF0(v52);
  sub_100011CF0(v73);
  sub_100011CF0(v74);
  v18[*(*v18 + 328)] = v31 & 1;
  return v18;
}

uint64_t sub_100059F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1001D12B0();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1001D2190();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1001D2190();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_10005A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1001D2190();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1001D2190();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1000595E8(result, 1);

  return sub_100059F98(v7, v6, 1, v4);
}

unint64_t sub_10005A1A4()
{
  result = qword_100229300;
  if (!qword_100229300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100229300);
  }

  return result;
}

uint64_t sub_10005A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1000130E0;

  return sub_100049508(a1, a2, a3, a4, v10, v11, v12, v13);
}

uint64_t sub_10005A324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005A33C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10005A38C()
{
  result = qword_100229310;
  if (!qword_100229310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229310);
  }

  return result;
}

unint64_t sub_10005A3E0()
{
  result = qword_100229318;
  if (!qword_100229318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229318);
  }

  return result;
}

uint64_t sub_10005A450()
{
  v1 = sub_1001D08A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005A528(uint64_t a1)
{
  v4 = *(sub_1001D08A0() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[18];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005B61C;

  return sub_10004B930(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10005A654()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005A694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_10004C318(a1, v4, v5, v6);
}

uint64_t sub_10005A744(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10005B61C;

  return sub_10004C6E8(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10005A85C()
{
  v1 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v24 = *(*(v1 - 8) + 80);
  v22 = *(*(v1 - 8) + 64);
  v29 = sub_1001D08A0();
  v27 = *(v29 - 8);
  v21 = *(v27 + 80);
  v20 = *(v27 + 64);
  v28 = sub_1001CFDA0();
  v2 = *(v28 - 8);
  v3 = *(v2 + 80);
  v19 = *(v2 + 64);
  v26 = sub_1001CFD60();
  v4 = *(v26 - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);
  swift_unknownObjectRelease();

  v23 = (v24 + 152) & ~v24;
  v6 = v0 + v23;
  sub_100011E48(*v6, *(v6 + 8));

  v7 = *(v1 + 24);
  v8 = sub_1001D0940();
  (*(*(v8 - 8) + 8))(v0 + v23 + v7, v8);
  v9 = *(v1 + 32);
  v10 = sub_1001D08D0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v23 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v24 | v21 | v3 | v5;
  v13 = (v23 + v22 + v21) & ~v21;
  v14 = (v13 + v20 + v3) & ~v3;
  v15 = (v19 + v3 + v14) & ~v3;
  v16 = (v5 + ((v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v5;

  (*(v27 + 8))(v0 + v13, v29);
  v17 = *(v2 + 8);
  v17(v0 + v14, v28);
  v17(v0 + v15, v28);
  (*(v4 + 8))(v0 + v16, v26);

  return _swift_deallocObject(v0, v16 + v25, v12 | 7);
}

uint64_t sub_10005AC04(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1001D08A0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1001CFDA0() - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = (*(v10 + 64) + v11 + v12) & ~v11;
  sub_1001CFD60();
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[18];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1000130E0;

  return sub_10004FBB8(a1, v14, v15, v16, v1 + v5, v1 + v8, v1 + v12, v1 + v13);
}

uint64_t sub_10005AE50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005AE88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_100059300(a1, v4);
}

uint64_t sub_10005AF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005AFDC()
{
  result = qword_100229388;
  if (!qword_100229388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229388);
  }

  return result;
}

uint64_t sub_10005B030()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005B078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005B0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005B140(_BYTE *__src, _BYTE *a2)
{
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

uint64_t sub_10005B1F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1001CF8C0();
  swift_allocObject();
  result = sub_1001CF860();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1001CFB80();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10005B274(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1001CF8C0();
  swift_allocObject();
  result = sub_1001CF860();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10005B2F8()
{
  result = qword_100229398;
  if (!qword_100229398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229398);
  }

  return result;
}

unint64_t sub_10005B34C()
{
  result = qword_1002293A0;
  if (!qword_1002293A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002293A0);
  }

  return result;
}

uint64_t sub_10005B3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005B408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10005B55C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000095F0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10005B408(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10005B62C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10005B674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10005B6D0()
{
  sub_1001D2580();
  sub_1001D2590(0);
  return sub_1001D25C0();
}

Swift::Int sub_10005B73C()
{
  sub_1001D2580();
  sub_1001D2590(0);
  return sub_1001D25C0();
}

uint64_t getEnumTagSinglePayload for PrefetchRequestError.Code(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PrefetchRequestError.Code(_WORD *result, int a2, int a3)
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

unint64_t sub_10005B870()
{
  result = qword_1002293B0[0];
  if (!qword_1002293B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002293B0);
  }

  return result;
}

void sub_10005B8D4(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1001D0E60();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1001D1F00();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            sub_100012FF8(319);
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                swift_checkMetadataState();
                if (v8 <= 0x3F)
                {
                  swift_checkMetadataState();
                  if (v9 <= 0x3F)
                  {
                    swift_checkMetadataState();
                    if (v10 <= 0x3F)
                    {
                      swift_checkMetadataState();
                      if (v11 <= 0x3F)
                      {
                        swift_initClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10005BBE8()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = sub_1001D08A0();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = sub_1001CFD60();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = *(v2 + 88);
  v1[12] = v5;
  v6 = sub_1001D1F00();
  v1[13] = v6;
  v1[14] = *(v6 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_10005BE18, 0, 0);
}

uint64_t sub_10005BE18(uint64_t a1)
{
  v66 = v1;
  v1[18] = *(*v1[2] + 232);
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running prefetchAttestations activity", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[13];
  v8 = v1[14];
  v9 = v1[12];
  v10 = v1[2];

  (*(v8 + 16))(v5, v10 + *(*v10 + 256), v7);
  if ((*(v6 + 48))(v5, 1, v9) == 1)
  {
    (*(v1[14] + 8))(v1[15], v1[13]);
LABEL_5:
    sub_10005D68C(v1[2]);

    v11 = v1[1];

    return v11();
  }

  v13 = v1[11];
  v14 = v1[2];
  (*(v1[16] + 32))(v1[17], v1[15], v1[12]);
  v15 = *(v14 + *(*v14 + 240));
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v16 = v15 + qword_10022F7E8;
  os_unfair_lock_lock((v15 + qword_10022F7E8));
  v17 = sub_10005E440((v16 + 8), v15, v13);
  v1[19] = v17;
  os_unfair_lock_unlock(v16);
  v18 = v1[2];
  result = (*(v1[10] + 8))(v1[11], v1[9]);
  v19 = v17[2];
  v1[20] = *(*v18 + 304);
  if (v19)
  {
    v20 = v1[5];
    v1[21] = v19;
    v21 = v1[19];
    if (v19 > *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v22 = *(v20 + 16);
    v22(v1[8], v21 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * (v19 - 1), v1[4]);
    if (sub_1001D1C30())
    {

      v23 = sub_1001D0E50();
      v24 = sub_1001D1E00();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "fetching attestations has been canceled", v25, 2u);
      }

      v27 = v1[16];
      v26 = v1[17];
      v28 = v1[12];
      v29 = v1[8];
      v30 = v1[4];
      v31 = v1[5];

      (*(v31 + 8))(v29, v30);
      (*(v27 + 8))(v26, v28);
      goto LABEL_5;
    }

    v32 = v1[8];
    v33 = v1[6];
    v34 = v1[4];
    v22(v1[7], v32, v34);
    v22(v33, v32, v34);
    v35 = sub_1001D0E50();
    v36 = sub_1001D1E00();
    v37 = os_log_type_enabled(v35, v36);
    v39 = v1[6];
    v38 = v1[7];
    v41 = v1[4];
    v40 = v1[5];
    if (v37)
    {
      v62 = v36;
      v42 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v42 = 136315394;
      v43 = sub_1001D0890();
      v45 = v44;
      v46 = *(v40 + 8);
      v46(v38, v41);
      v47 = sub_1000954E0(v43, v45, v65);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      sub_1001D0870();
      v48 = sub_1001D1710();
      v50 = v49;

      v46(v39, v41);
      v51 = sub_1000954E0(v48, v50, v65);

      *(v42 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v35, v62, "fetching attestations for pipeline: %s args: %s", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v46 = *(v40 + 8);
      v46(v39, v41);
      v46(v38, v41);
    }

    v1[22] = v46;
    v52 = v1[17];
    v53 = v1[8];
    v54 = v1[2];
    v55 = v1[3];
    v56 = swift_task_alloc();
    v1[23] = v56;
    v56[2] = v54;
    v56[3] = v52;
    v56[4] = v53;
    v63 = (*(*(v55 + 216) + 8) + **(*(v55 + 216) + 8));
    v57 = swift_task_alloc();
    v1[24] = v57;
    *v57 = v1;
    v57[1] = sub_10005C618;

    return v63();
  }

  else
  {
    v58 = v1[3];

    v59 = *(v58 + 160);
    v64 = (*(v59 + 32) + **(v59 + 32));
    v60 = swift_task_alloc();
    v1[26] = v60;
    *v60 = v1;
    v60[1] = sub_10005CD78;
    v61 = v1[12];

    return v64(v61, v59);
  }
}

uint64_t sub_10005C618()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10005CF40;
  }

  else
  {

    v2 = sub_10005C734;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C734()
{
  v51 = v0;
  v1 = *(v0 + 168);
  (*(v0 + 176))(*(v0 + 64), *(v0 + 32));
  if (v1 != 1)
  {
    v2 = *(v0 + 168);
    *(v0 + 168) = v2 - 1;
    v3 = *(v0 + 152);
    if (v2 - 1 <= *(v3 + 16))
    {
      v4 = *(v0 + 40);
      v5 = *(v4 + 16);
      v5(*(v0 + 64), v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v2 - 2), *(v0 + 32));
      if (sub_1001D1C30())
      {

        v6 = sub_1001D0E50();
        v7 = sub_1001D1E00();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "fetching attestations has been canceled", v8, 2u);
        }

        v10 = *(v0 + 128);
        v9 = *(v0 + 136);
        v11 = *(v0 + 96);
        v12 = *(v0 + 64);
        v13 = *(v0 + 32);
        v14 = *(v0 + 40);

        (*(v14 + 8))(v12, v13);
        (*(v10 + 8))(v9, v11);
        sub_10005D68C(*(v0 + 16));

        v15 = *(v0 + 8);

        return v15();
      }

      else
      {
        v17 = *(v0 + 64);
        v18 = *(v0 + 48);
        v19 = *(v0 + 32);
        v5(*(v0 + 56), v17, v19);
        v5(v18, v17, v19);
        v20 = sub_1001D0E50();
        v21 = sub_1001D1E00();
        v22 = os_log_type_enabled(v20, v21);
        v24 = *(v0 + 48);
        v23 = *(v0 + 56);
        v26 = *(v0 + 32);
        v25 = *(v0 + 40);
        if (v22)
        {
          v47 = v21;
          v27 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v27 = 136315394;
          v28 = sub_1001D0890();
          v30 = v29;
          v31 = *(v25 + 8);
          v31(v23, v26);
          v32 = sub_1000954E0(v28, v30, &v50);

          *(v27 + 4) = v32;
          *(v27 + 12) = 2080;
          sub_1001D0870();
          v33 = sub_1001D1710();
          v35 = v34;

          v31(v24, v26);
          v36 = sub_1000954E0(v33, v35, &v50);

          *(v27 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v20, v47, "fetching attestations for pipeline: %s args: %s", v27, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v31 = *(v25 + 8);
          v31(v24, v26);
          v31(v23, v26);
        }

        *(v0 + 176) = v31;
        v37 = *(v0 + 136);
        v38 = *(v0 + 64);
        v39 = *(v0 + 16);
        v40 = *(v0 + 24);
        v41 = swift_task_alloc();
        *(v0 + 184) = v41;
        v41[2] = v39;
        v41[3] = v37;
        v41[4] = v38;
        v48 = (*(*(v40 + 216) + 8) + **(*(v40 + 216) + 8));
        v42 = swift_task_alloc();
        *(v0 + 192) = v42;
        *v42 = v0;
        v42[1] = sub_10005C618;

        return v48();
      }
    }

    __break(1u);
  }

  v43 = *(v0 + 24);

  v44 = *(v43 + 160);
  v49 = (*(v44 + 32) + **(v44 + 32));
  v45 = swift_task_alloc();
  *(v0 + 208) = v45;
  *v45 = v0;
  v45[1] = sub_10005CD78;
  v46 = *(v0 + 96);

  return v49(v46, v44);
}

uint64_t sub_10005CD78()
{

  return _swift_task_switch(sub_10005CE74, 0, 0);
}

uint64_t sub_10005CE74()
{
  (*(v0[16] + 8))(v0[17], v0[12]);
  sub_10005D68C(v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005CF40()
{
  v56 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to send prefetch request: %@", v3, 0xCu);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v6 = *(v0 + 168);
  (*(v0 + 176))(*(v0 + 64), *(v0 + 32));
  if (v6 != 1)
  {
    v7 = *(v0 + 168);
    *(v0 + 168) = v7 - 1;
    v8 = *(v0 + 152);
    if (v7 - 1 <= *(v8 + 16))
    {
      v9 = *(v0 + 40);
      v10 = *(v9 + 16);
      v10(*(v0 + 64), v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * (v7 - 2), *(v0 + 32));
      if (sub_1001D1C30())
      {

        v11 = sub_1001D0E50();
        v12 = sub_1001D1E00();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "fetching attestations has been canceled", v13, 2u);
        }

        v15 = *(v0 + 128);
        v14 = *(v0 + 136);
        v16 = *(v0 + 96);
        v17 = *(v0 + 64);
        v18 = *(v0 + 32);
        v19 = *(v0 + 40);

        (*(v19 + 8))(v17, v18);
        (*(v15 + 8))(v14, v16);
        sub_10005D68C(*(v0 + 16));

        v20 = *(v0 + 8);

        return v20();
      }

      else
      {
        v22 = *(v0 + 64);
        v23 = *(v0 + 48);
        v24 = *(v0 + 32);
        v10(*(v0 + 56), v22, v24);
        v10(v23, v22, v24);
        v25 = sub_1001D0E50();
        v26 = sub_1001D1E00();
        v27 = os_log_type_enabled(v25, v26);
        v29 = *(v0 + 48);
        v28 = *(v0 + 56);
        v31 = *(v0 + 32);
        v30 = *(v0 + 40);
        if (v27)
        {
          v52 = v26;
          v32 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v32 = 136315394;
          v33 = sub_1001D0890();
          v35 = v34;
          v36 = *(v30 + 8);
          v36(v28, v31);
          v37 = sub_1000954E0(v33, v35, &v55);

          *(v32 + 4) = v37;
          *(v32 + 12) = 2080;
          sub_1001D0870();
          v38 = sub_1001D1710();
          v40 = v39;

          v36(v29, v31);
          v41 = sub_1000954E0(v38, v40, &v55);

          *(v32 + 14) = v41;
          _os_log_impl(&_mh_execute_header, v25, v52, "fetching attestations for pipeline: %s args: %s", v32, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v36 = *(v30 + 8);
          v36(v29, v31);
          v36(v28, v31);
        }

        *(v0 + 176) = v36;
        v42 = *(v0 + 136);
        v43 = *(v0 + 64);
        v44 = *(v0 + 16);
        v45 = *(v0 + 24);
        v46 = swift_task_alloc();
        *(v0 + 184) = v46;
        v46[2] = v44;
        v46[3] = v42;
        v46[4] = v43;
        v53 = (*(*(v45 + 216) + 8) + **(*(v45 + 216) + 8));
        v47 = swift_task_alloc();
        *(v0 + 192) = v47;
        *v47 = v0;
        v47[1] = sub_10005C618;

        return v53();
      }
    }

    __break(1u);
  }

  v48 = *(v0 + 24);

  v49 = *(v48 + 160);
  v54 = (*(v49 + 32) + **(v49 + 32));
  v50 = swift_task_alloc();
  *(v0 + 208) = v50;
  *v50 = v0;
  v50[1] = sub_10005CD78;
  v51 = *(v0 + 96);

  return v54(v51, v49);
}

void sub_10005D68C(uint64_t a1)
{
  oslog = sub_1001D0E50();
  v1 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Finished prefetchAttestations activity", v2, 2u);
  }
}

uint64_t sub_10005D744(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v4[24] = *a2;
  v5 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = sub_1001D08A0();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_10005D898, 0, 0);
}

uint64_t sub_10005D898()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v26 = *(v0 + 224);
  v4 = *(v0 + 208);
  v27 = *(v0 + 200);
  v5 = *(v0 + 192);
  v25 = *(v0 + 184);
  v6 = *(v0 + 168);
  v28 = *(v0 + 176);
  v7 = *(v5 + 192);
  v8 = *(v5 + 96);
  v9 = vextq_s8(*(v5 + 80), *(v5 + 80), 8uLL);
  v10 = *(v5 + 128);
  v11 = vextq_s8(*(v5 + 152), *(v5 + 152), 8uLL);
  v12 = *(v5 + 168);
  v13 = *(v5 + 200);
  *(v0 + 16) = *(v5 + 120);
  *(v0 + 24) = v9;
  *(v0 + 40) = v8;
  *(v0 + 56) = v10;
  *(v0 + 72) = v7;
  *(v0 + 80) = v11;
  *(v0 + 96) = v12;
  *(v0 + 112) = v13;
  type metadata accessor for BatchedPrefetch(0, v0 + 16);
  v23 = *(*v6 + 312);
  v14 = *(*v6 + 248);
  v24 = *(*v6 + 264);
  v15 = *(*v6 + 224);
  v16 = *(v5 + 112);
  *(v0 + 152) = v16;
  *(v0 + 160) = *(v5 + 184);
  v17 = sub_10003B47C((v0 + 128));
  (*(*(v16 - 8) + 16))(v17, v6 + v15, v16);
  v18 = *(*v6 + 280);
  v19 = *(*v6 + 288);
  v20 = *(*v6 + 296);
  (*(v2 + 16))(v1, v25, v26);
  (*(v4 + 16))(v3, v6 + *(*v6 + 272), v27);
  *(v0 + 248) = sub_100059ED0(v6 + v23, v28, v6 + v14, v6 + v24, v0 + 128, v6 + v18, v6 + v19, v6 + v20, v1, v3, 0, 0, 1, 0, 0, 0, 0);
  v21 = swift_task_alloc();
  *(v0 + 256) = v21;
  *v21 = v0;
  v21[1] = sub_10005DB38;

  return sub_100053248();
}

uint64_t sub_10005DB38(uint64_t a1)
{
  *(*v2 + 264) = v1;

  if (v1)
  {
    v3 = sub_10005DCD0;
  }

  else
  {

    v3 = sub_10005DC58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005DC58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DCD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DD48()
{
  v1 = *v0;
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 224));
  v2 = *(*v0 + 232);
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 248));
  v4 = *(*v0 + 256);
  v5 = sub_1001D1F00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 264));
  v6 = *(*v0 + 272);
  v7 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  (*(*(v1[13] - 8) + 8))(v0 + *(*v0 + 280));
  (*(*(v1[16] - 8) + 8))(v0 + *(*v0 + 288));
  (*(*(v1[17] - 8) + 8))(v0 + *(*v0 + 296));
  (*(*(v1[18] - 8) + 8))(v0 + *(*v0 + 304));
  (*(*(v1[15] - 8) + 8))(v0 + *(*v0 + 312));
  return v0;
}

uint64_t sub_10005E134()
{
  sub_10005DD48();

  return swift_deallocClassInstance();
}

uint64_t sub_10005E1A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000130E0;

  return sub_10005BBE8();
}

uint64_t sub_10005E234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1001CFD60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CFCF0();
  v7 = sub_1001CFCD0();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_10005E334(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(sub_100011AC0(&unk_100230260, &qword_1001D3660) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_10005E440(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v29 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = v26 - v8;
  v9 = sub_1001D08A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  v32 = a2;
  result = sub_10005E7D8(sub_10005EE28, v30);
  v14 = *(*a1 + 16);
  if (v14 < result)
  {
    __break(1u);
  }

  else
  {
    v15 = v7;
    sub_10005B55C(result, v14);
    v16 = *a1;
    v17 = *(*a1 + 16);
    v18 = _swiftEmptyArrayStorage;
    if (v17)
    {
      v26[1] = v3;
      v33 = _swiftEmptyArrayStorage;
      sub_1001515C0(0, v17, 0);
      v18 = v33;
      v19 = v15;
      v20 = v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v21 = *(v19 + 72);
      v26[2] = v10 + 32;
      v27 = v21;
      do
      {
        v22 = v28;
        sub_10005EE48(v20, v28);
        (*(v10 + 16))(v12, v22 + *(v29 + 52), v9);
        sub_100011F00(v22, &unk_100230260, &qword_1001D3660);
        v33 = v18;
        v23 = v9;
        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          sub_1001515C0((v24 > 1), v25 + 1, 1);
          v18 = v33;
        }

        v18[2] = v25 + 1;
        (*(v10 + 32))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v12, v23);
        v20 += v27;
        --v17;
        v9 = v23;
      }

      while (v17);
    }

    return v18;
  }

  return result;
}

uint64_t sub_10005E710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000130E0;

  return sub_10005D744(a1, v4, v5, v6);
}

uint64_t sub_10005E7D8(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v6 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - v12;
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v16 = *v2;
  result = sub_10005E334(a1, a2, *v2);
  if (!v3)
  {
    v43 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v35 = v13;
    v36 = v10;
    v34 = v2;
    v42 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v42;
      }

      v37 = v7;
      v38 = a2;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v25 = v24 * v19;
        v26 = v39;
        sub_10005EE48(v23 + v24 * v19, v39);
        v27 = v43;
        v28 = v40(v26);
        result = sub_100011F00(v26, &unk_100230260, &qword_1001D3660);
        v43 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          v7 = v37;
          v16 = v22;
        }

        else
        {
          v29 = v42;
          if (v19 == v42)
          {
            v7 = v37;
            v16 = v22;
          }

          else
          {
            if ((v42 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v42 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v42;
            result = sub_10005EE48(v23 + v24 * v42, v35);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            sub_10005EE48(v23 + v25, v36);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_10005E7C4(v22);
            }

            v32 = v16 + v41;
            result = sub_10005EEB8(v36, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_10005EEB8(v35, v32 + v25);
            *v34 = v16;
            v7 = v37;
            v29 = v42;
          }

          v42 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v42;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005EAC4(uint64_t (*a1)(char *), uint64_t a2)
{
  v46 = a2;
  v45 = a1;
  v5 = type metadata accessor for RequestLog.Element(0);
  v44 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  result = __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v41 = v2;
  v13 = *v2;
  v15 = (*v2 + 24);
  v14 = *v15;
  if (*v15)
  {
    v43 = v10;
    v40 = result;
    for (i = 0; ; ++i)
    {
      if (i >= v14)
      {
        __break(1u);
        goto LABEL_44;
      }

      v17 = v13[4];
      if (i + v17 >= v13[2])
      {
        v18 = v13[2];
      }

      else
      {
        v18 = 0;
      }

      v19 = (*(v44 + 80) + 40) & ~*(v44 + 80);
      v20 = *(v44 + 72);
      sub_10005EF28(v13 + v19 + (i + v17 - v18) * v20, v12);
      v21 = v45(v12);
      if (v3)
      {
        sub_10005EF8C(v12);
        return v4;
      }

      v22 = v21;
      result = sub_10005EF8C(v12);
      v4 = i + 1;
      v14 = *v15;
      if (v22)
      {
        break;
      }

      if (v4 == v14)
      {
        return v4;
      }
    }

    if (v4 == v14)
    {
      return i;
    }

    v23 = i + 1;
    v4 = i;
    while (v23 < v14)
    {
      v24 = v13[4];
      if ((v23 + v24) >= v13[2])
      {
        v25 = v13[2];
      }

      else
      {
        v25 = 0;
      }

      v26 = v43;
      sub_10005EF28(v13 + v19 + (v23 + v24 - v25) * v20, v43);
      v27 = v45(v26);
      result = sub_10005EF8C(v26);
      if ((v27 & 1) == 0)
      {
        if (v4 < 0)
        {
          goto LABEL_45;
        }

        if (v4 >= *v15)
        {
          goto LABEL_46;
        }

        if (v23 >= *v15)
        {
          goto LABEL_47;
        }

        v28 = v41;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100118F1C();
        }

        v13 = *v28;
        v29 = *(*v28 + 32);
        v30 = *(*v28 + 16);
        if (v29 + v4 >= v30)
        {
          v31 = *(*v28 + 16);
        }

        else
        {
          v31 = 0;
        }

        v32 = v29 + v4 - v31;
        if ((v23 + v29) < v30)
        {
          v30 = 0;
        }

        v33 = v23 + v29 - v30;
        if (v33 != v32)
        {
          v39 = v32 * v20;
          v34 = v13 + v19 + v32 * v20;
          v35 = v33 * v20;
          v36 = v13 + v19 + v33 * v20;
          sub_10005EFE8(v34, v42);
          v44 = v36;
          if (v39 < v35 || v34 >= v36 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v39 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_10005EFE8(v42, v44);
        }

        ++v4;
      }

      ++v23;
      v15 = v13 + 3;
      v14 = v13[3];
      if (v23 == v14)
      {
        return v4;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_10005EE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestLog.Element(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EF8C(uint64_t a1)
{
  v2 = type metadata accessor for RequestLog.Element(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005EFE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestLog.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v6 = sub_1001D08A0();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10005F188, 0, 0);
}

uint64_t sub_10005F188()
{
  v62 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_100096A60(v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[6];
  if (v4 == 1)
  {
    v8 = v0[11];
    v9 = v0[3];
    sub_1000600A4(v0[8]);
    v10 = *(v6 + 16);
    v10(v8, v9, v5);
    v11 = sub_1001D0E50();
    v12 = sub_1001D1DE0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[14];
      v15 = v0[10];
      v14 = v0[11];
      v16 = v0[9];
      v17 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1000954E0(0xD000000000000025, 0x80000001001E3C00, v61);
      *(v17 + 12) = 2080;
      v10(v13, v14, v16);
      v18 = sub_1001D1820();
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      v21 = sub_1000954E0(v18, v20, v61);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s parameters=%s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v42 = v0[10];
      v41 = v0[11];
      v43 = v0[9];

      (*(v42 + 8))(v41, v43);
    }

    sub_1001D0200();
    sub_100061AAC(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
LABEL_14:

    v58 = v0[1];

    return v58();
  }

  v22 = v0[15];
  (*(v6 + 32))(v22, v0[8], v0[9]);
  os_unfair_lock_lock((v7 + 16));
  if (sub_10005FBF4(v22, *(v7 + 24)))
  {
    v23 = v0[15];
    v24 = v0[12];
    v25 = v0[9];
    v26 = v0[10];
    os_unfair_lock_unlock((v7 + 16));
    v27 = *(v26 + 16);
    v27(v24, v23, v25);
    v28 = sub_1001D0E50();
    v29 = sub_1001D1E00();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[14];
      v31 = v0[12];
      v32 = v0[9];
      v33 = v0[10];
      v59 = v29;
      v34 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_1000954E0(0xD00000000000003CLL, 0x80000001001E3C60, v61);
      *(v34 + 12) = 2080;
      v27(v30, v31, v32);
      v35 = sub_1001D1820();
      v37 = v36;
      v38 = *(v33 + 8);
      v38(v31, v32);
      v39 = sub_1000954E0(v35, v37, v61);

      *(v34 + 14) = v39;
      v40 = v38;
      _os_log_impl(&_mh_execute_header, v28, v59, "%s parameters=%s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v53 = v0[12];
      v54 = v0[9];
      v55 = v0[10];

      v40 = *(v55 + 8);
      v40(v53, v54);
    }

    v56 = v0[15];
    v57 = v0[9];
    sub_1001D0200();
    sub_100061AAC(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    v40(v56, v57);
    goto LABEL_14;
  }

  v44 = v0[14];
  v45 = v0[13];
  v46 = v0[9];
  v47 = v0[10];
  v48 = v0[4];
  (*(v47 + 16))(v45, v0[15], v46);
  sub_10006010C(v44, v45);
  v49 = *(v47 + 8);
  v0[16] = v49;
  v49(v44, v46);
  os_unfair_lock_unlock((v7 + 16));
  v60 = (v48 + *v48);
  v50 = swift_task_alloc();
  v0[17] = v50;
  *v50 = v0;
  v50[1] = sub_10005F8C8;
  v51 = v0[2];

  return v60(v51);
}

uint64_t sub_10005F8C8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10005FAF0;
  }

  else
  {
    v2 = sub_10005F9DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005F9DC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[6];
  os_unfair_lock_lock(v5 + 4);
  sub_100061804(v1, v4);
  sub_1000600A4(v4);
  os_unfair_lock_unlock(v5 + 4);
  v2(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10005FAF0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  os_unfair_lock_lock(v5 + 4);
  sub_100061804(v1, v4);
  sub_1000600A4(v4);
  os_unfair_lock_unlock(v5 + 4);
  v2(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10005FBF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001D08A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100061AAC(&qword_100229500, &type metadata accessor for Workload, &protocol conformance descriptor for Workload), v7 = sub_1001D1730(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100061AAC(&qword_100229508, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
      v15 = sub_1001D1790();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10005FE0C()
{
  sub_100061DFC(v0 + 24);
  v1 = OBJC_IVAR____TtC20privatecloudcomputed15PrefetchTracker_logger;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrefetchTracker(uint64_t a1)
{
  result = qword_100229468;
  if (!qword_100229468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005FF04(uint64_t a1)
{
  result = sub_1001D0E60();
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

char *sub_10005FFA0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_1002294F8, &qword_1001D6778);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10005FFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000130E0;

  return sub_10005F04C(a1, a2, a3, a4);
}

uint64_t sub_1000600A4(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006010C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1001D08A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100061AAC(&qword_100229500, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
  v33 = a2;
  v11 = sub_1001D1730();
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
      sub_100061AAC(&qword_100229508, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
      v21 = sub_1001D1790();
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
    sub_100060AF8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000603EC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1001D2580();
  sub_1001D1880();
  v8 = sub_1001D25C0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1001D2470() & 1) != 0)
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

    sub_100060D9C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10006053C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1001D08A0();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100011AC0(&qword_100229510, &qword_1001D67D0);
  result = sub_1001D1FF0();
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
      sub_100061AAC(&qword_100229500, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
      result = sub_1001D1730();
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

uint64_t sub_100060898(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100011AC0(&qword_100229518, &qword_1001D67D8);
  result = sub_1001D1FF0();
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
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
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

uint64_t sub_100060AF8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1001D08A0();
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
    sub_10006053C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100060F1C();
      goto LABEL_12;
    }

    sub_1000612B0(v10 + 1);
  }

  v12 = *v3;
  sub_100061AAC(&qword_100229500, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
  v13 = sub_1001D1730();
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
      sub_100061AAC(&qword_100229508, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
      v21 = sub_1001D1790();
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
  result = sub_1001D24E0();
  __break(1u);
  return result;
}

uint64_t sub_100060D9C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_100060898(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100061154();
      goto LABEL_16;
    }

    sub_1000615CC(v8 + 1);
  }

  v10 = *v4;
  sub_1001D2580();
  sub_1001D1880();
  result = sub_1001D25C0();
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

      result = sub_1001D2470();
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
  result = sub_1001D24E0();
  __break(1u);
  return result;
}

void *sub_100060F1C()
{
  v1 = v0;
  v2 = sub_1001D08A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100229510, &qword_1001D67D0);
  v6 = *v0;
  v7 = sub_1001D1FE0();
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

void *sub_100061154()
{
  v1 = v0;
  sub_100011AC0(&qword_100229518, &qword_1001D67D8);
  v2 = *v0;
  v3 = sub_1001D1FE0();
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

uint64_t sub_1000612B0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1001D08A0();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100011AC0(&qword_100229510, &qword_1001D67D0);
  v7 = sub_1001D1FF0();
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
      sub_100061AAC(&qword_100229500, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
      result = sub_1001D1730();
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

uint64_t sub_1000615CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100011AC0(&qword_100229518, &qword_1001D67D8);
  result = sub_1001D1FF0();
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
      sub_1001D2580();

      sub_1001D1880();
      result = sub_1001D25C0();
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

uint64_t sub_100061804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001D08A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100061AAC(&qword_100229500, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
  v31 = a1;
  v10 = sub_1001D1730();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100061AAC(&qword_100229508, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
      v19 = sub_1001D1790();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100060F1C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100061AF4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100061AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100061AF4(int64_t a1)
{
  v3 = sub_1001D08A0();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1001D1FC0();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_100061AAC(&qword_100229500, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
        v24 = sub_1001D1730();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_100061E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v26;
  *(v8 + 192) = v24;
  *(v8 + 208) = v25;
  *(v8 + 160) = v22;
  *(v8 + 176) = v23;
  *(v8 + 144) = v21;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a2;
  v10 = sub_1001D1380();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v11 = sub_1001D13D0();
  *(v8 + 264) = v11;
  *(v8 + 272) = *(v11 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = type metadata accessor for ThimbledEvent(0);
  *(v8 + 296) = swift_task_alloc();
  v12 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  *(v8 + 304) = v12;
  *(v8 + 312) = *(v12 - 8);
  *(v8 + 320) = swift_task_alloc();
  v13 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  *(v8 + 328) = v13;
  *(v8 + 336) = *(v13 - 8);
  *(v8 + 344) = swift_task_alloc();
  v14 = sub_1001D08A0();
  *(v8 + 352) = v14;
  v15 = *(v14 - 8);
  *(v8 + 360) = v15;
  *(v8 + 368) = *(v15 + 64);
  *(v8 + 376) = swift_task_alloc();
  sub_100011AC0(&qword_100229548, &qword_1001D6878);
  *(v8 + 384) = swift_task_alloc();
  v16 = sub_1001D0ED0();
  *(v8 + 392) = v16;
  *(v8 + 400) = *(v16 - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v17 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  *(v8 + 424) = v17;
  *(v8 + 432) = *(v17 - 8);
  *(v8 + 440) = swift_task_alloc();
  sub_1001D0F60();
  *(v8 + 448) = swift_task_alloc();
  v18 = sub_1001D0F80();
  *(v8 + 456) = v18;
  *(v8 + 464) = *(v18 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 64) = a3;

  return _swift_task_switch(sub_1000622D8, 0, 0);
}

uint64_t sub_1000622D8()
{
  v104 = v0;
  v0[64] = qword_100229210;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[17];
    v3 = v0[18];
    v6 = v0[15];
    v5 = v0[16];
    v7 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000954E0(v6, v5, &v102);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000954E0(v4, v3, &v102);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s sending request with parameters: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = v0[19];
  *(swift_task_alloc() + 16) = v8;
  sub_10008A830(&qword_100229330, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchRequest);
  sub_1001D0B50();

  v9 = sub_1001D0B00();
  v0[65] = v9;
  v0[66] = v10;
  v78 = v9;
  v79 = v10;
  v11 = v0[58];
  v95 = v0[57];
  v98 = v0[60];
  v12 = v0[55];
  v13 = v0[54];
  bufa = v0[53];
  v14 = v0[50];
  v87 = v0[49];
  v90 = v0[61];
  v84 = v0[21];
  v86 = v0[52];
  v15 = v0[14];
  sub_1001D0F50();
  sub_1001D0290();
  sub_100024DC8((v15 + *(*v15 + 240)), *(v15 + *(*v15 + 240) + 24));
  sub_1001D03B0();
  sub_1001D0210();
  (*(v13 + 8))(v12, bufa);
  v16 = *(v14 + 16);
  v16(v86, v84, v87);
  sub_1001D0F70();
  v17 = *(v11 + 16);
  v17(v98, v90, v95);

  v18 = sub_1001D0E50();
  v19 = sub_1001D1E00();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[60];
  v85 = v17;
  if (v20)
  {
    v22 = v0[58];
    v23 = v0[59];
    v94 = v19;
    v24 = v17;
    v25 = v0[57];
    v88 = v0[17];
    v91 = v0[18];
    v96 = v16;
    v27 = v0[15];
    v26 = v0[16];
    v28 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *v28 = 136315650;
    *(v28 + 4) = sub_1000954E0(v27, v26, &v102);
    *(v28 + 12) = 2080;
    v24(v23, v21, v25);
    v29 = sub_1001D1830();
    v31 = v30;
    v32 = *(v22 + 8);
    v32(v21, v25);
    v33 = sub_1000954E0(v29, v31, &v102);
    v16 = v96;

    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_1000954E0(v88, v91, &v102);
    _os_log_impl(&_mh_execute_header, v18, v94, "%s sending request: %s with parameters: %s", v28, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v34 = v0[57];
    v35 = v0[58];

    v32 = *(v35 + 8);
    v32(v21, v34);
  }

  v0[67] = v32;
  v16(v0[51], v0[21], v0[49]);

  v36 = sub_1001D0E50();
  v37 = sub_1001D1E00();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[51];
  if (!v38)
  {
    v64 = v0[49];
    v65 = v0[50];

    (*(v65 + 8))(v39, v64);
LABEL_20:
    v73 = v0[61];
    v74 = v0[59];
    v75 = v0[57];
    sub_1001D1090();
    v85(v74, v73, v75);
    sub_100012038(v78, v79);
    v76 = sub_1001D1080();
    v0[68] = v76;
    v77 = swift_task_alloc();
    v0[69] = v77;
    *v77 = v0;
    v77[1] = sub_10006302C;

    return (sub_100138CDC)(v78, v79, v76, 1, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
  }

  v82 = v37;
  log = v36;
  v41 = v0[15];
  v40 = v0[16];
  v42 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  *v42 = 136315394;
  *(v42 + 4) = sub_1000954E0(v41, v40, &v100);
  buf = v42;
  *(v42 + 12) = 2080;
  sub_10008A830(&qword_100229338, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  v43 = sub_1001D1D00();
  v44 = _swiftEmptyArrayStorage;
  if (!v43)
  {
LABEL_19:
    v102 = v44;

    sub_100152064(&v102);
    v67 = v0[50];
    v66 = v0[51];
    v68 = v0[49];

    v0[12] = v102;
    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100024B78(&qword_1002281F0, &unk_100230200, &qword_1001D4F80, &protocol conformance descriptor for [A]);
    v69 = sub_1001D1750();
    v71 = v70;

    (*(v67 + 8))(v66, v68);
    v72 = sub_1000954E0(v69, v71, &v100);

    *(buf + 14) = v72;
    _os_log_impl(&_mh_execute_header, log, v82, "%s sending headers\n%s", buf, 0x16u);
    swift_arrayDestroy();

    goto LABEL_20;
  }

  v45 = v43;
  v101 = _swiftEmptyArrayStorage;
  sub_1001514F8(0, v43 & ~(v43 >> 63), 0);
  v44 = v101;
  result = sub_1001D1CF0();
  if ((v45 & 0x8000000000000000) == 0)
  {
    v47 = 0;
    v48 = v0[34];
    v93 = (v48 + 16);
    v89 = (v48 + 8);
    v92 = (v0[30] + 8);
    v97 = v45;
    while (!__OFADD__(v47, 1))
    {
      v99 = v47 + 1;
      v49 = v0[35];
      v50 = v0[32];
      v51 = v0[31];
      v52 = v0[29];
      v53 = sub_1001D1D40();
      (*v93)(v49);
      (v53)(v0 + 2, 0);
      sub_1001D13B0();
      sub_1001D1340();
      LOBYTE(v53) = sub_1001D1350();
      v54 = *v92;
      (*v92)(v51, v52);
      v54(v50, v52);
      v55 = v0[32];
      v56 = v0[29];
      sub_1001D13B0();
      sub_10008A830(&qword_100229340, &type metadata accessor for HTTPField.Name, &protocol conformance descriptor for HTTPField.Name);
      v102 = sub_1001D23A0();
      v103 = v57;
      v54(v55, v56);
      if (v53)
      {
        v58._countAndFlagsBits = 0x544341444552203ALL;
        v58._object = 0xEB000000000A4445;
      }

      else
      {
        v106._countAndFlagsBits = 8250;
        v106._object = 0xE200000000000000;
        sub_1001D18B0(v106);
        v107._countAndFlagsBits = sub_1001D13C0();
        sub_1001D18B0(v107);

        v58._countAndFlagsBits = 10;
        v58._object = 0xE100000000000000;
      }

      sub_1001D18B0(v58);
      v59 = v102;
      v60 = v103;
      (*v89)(v0[35], v0[33]);
      v101 = v44;
      v62 = *(v44 + 2);
      v61 = *(v44 + 3);
      if (v62 >= v61 >> 1)
      {
        sub_1001514F8((v61 > 1), v62 + 1, 1);
        v44 = v101;
      }

      *(v44 + 2) = v62 + 1;
      v63 = &v44[16 * v62];
      *(v63 + 4) = v59;
      *(v63 + 5) = v60;
      result = sub_1001D1D20();
      ++v47;
      if (v99 == v97)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006302C()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 528);
  v4 = *(v2 + 520);

  sub_100011E48(v4, v3);
  if (v0)
  {
    v5 = sub_100063528;
  }

  else
  {
    v5 = sub_100063194;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100063194()
{

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DC0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v35);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s waiting for response", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v27 = *(v0 + 384);
  v25 = *(v0 + 376);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v9 = *(v0 + 352);
  v33 = *(v0 + 224);
  v31 = *(v0 + 192);
  v32 = *(v0 + 200);
  v10 = *(v0 + 184);
  v28 = *(v0 + 176);
  v30 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v26 = *(v0 + 104);
  v29 = *(v0 + 208);
  (*(v7 + 16))();
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = v13;
  *(v16 + 3) = v11;
  *(v16 + 4) = v12;
  (*(v7 + 32))(&v16[v14], v25, v9);
  *&v16[v15] = v10;
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v11;
  v17[4] = v12;
  sub_100089B7C(v26, v27, type metadata accessor for NWAsyncConnection.Inbound);
  v18 = sub_100011AC0(&qword_100229550, &qword_1001D68A0);
  v19 = (v27 + *(v18 + 36));
  *v19 = &unk_1001D6888;
  v19[1] = v16;
  v20 = (v27 + *(v18 + 40));
  *v20 = &unk_1001D6898;
  v20[1] = v17;
  *(v0 + 72) = 0;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  v21 = sub_1001D0840();
  v22 = swift_task_alloc();
  *(v0 + 568) = v22;
  *(v22 + 16) = v27;
  *(v22 + 24) = v13;
  *(v22 + 32) = v11;
  *(v22 + 40) = v12;
  *(v22 + 48) = v0 + 72;
  *(v22 + 56) = v31;
  *(v22 + 64) = v0 + 80;
  *(v22 + 72) = v32;
  *(v22 + 80) = v30;
  *(v22 + 88) = v28;
  *(v22 + 96) = v29;
  *(v22 + 112) = v10;
  *(v22 + 120) = v33;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v23 = swift_task_alloc();
  *(v0 + 576) = v23;
  *v23 = v0;
  v23[1] = sub_1000636B0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v23, v21, &type metadata for () + 8, 0, 0, &unk_1001D68B0, v22, v21);
}

uint64_t sub_100063528()
{
  v1 = v0[67];
  v2 = v0[63];
  v3 = v0[61];
  v4 = v0[57];
  sub_100011E48(v0[65], v0[66]);
  v1(v3, v4);
  sub_100089B1C(v2, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000636B0()
{

  return _swift_task_switch(sub_1000637C8, 0, 0);
}

uint64_t sub_1000637C8()
{
  v2 = v0[65];
  v1 = v0[66];
  v3 = v0[63];
  v4 = v0[61];
  if (v0[9])
  {
    v23 = v0[63];
    v5 = v0[58];
    v21 = v0[61];
    v22 = v0[57];
    v24 = v0[48];
    v6 = v0[42];
    v19 = v0[43];
    v7 = v0[40];
    v20 = v0[41];
    v8 = v0[38];
    v9 = v0[39];
    v10 = v0[37];
    v18 = v0[65];
    v11 = v0[14];
    (*(v9 + 16))(v7, v11 + *(*v11 + 280), v8);
    v12 = *(v11 + *(*v11 + 288));
    *v10 = v0[10];
    *(v10 + 8) = v12;
    swift_storeEnumTagMultiPayload();

    sub_1001D1BC0();
    sub_100011E48(v18, v1);
    (*(v9 + 8))(v7, v8);
    (*(v6 + 8))(v19, v20);
    (*(v5 + 8))(v21, v22);
    sub_100089B1C(v23, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

    sub_100011F00(v24, &qword_100229548, &qword_1001D6878);
  }

  else
  {
    v15 = v0[57];
    v14 = v0[58];
    v16 = v0[48];
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v2, v1);
    (*(v14 + 8))(v4, v15);
    sub_100089B1C(v3, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

    sub_100011F00(v16, &qword_100229548, &qword_1001D6878);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100063C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1001D0FD0();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = sub_1001D0ED0();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = sub_1001D0FF0();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100063DC0, 0, 0);
}

uint64_t sub_100063DC0()
{
  v53 = v0;
  v50 = *(v0[16] + 16);
  v50(v0[19], v0[2], v0[15]);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DC0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[19];
  if (v3)
  {
    v5 = v0[18];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[4];
    v48 = v0[5];
    v9 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000954E0(v8, v48, v52);
    *(v9 + 12) = 2080;
    v50(v5, v4, v7);
    v10 = sub_1001D1820();
    v12 = v11;
    v49 = *(v6 + 8);
    v49(v4, v7);
    v13 = sub_1000954E0(v10, v12, v52);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s response head received: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[15];
    v15 = v0[16];

    v49 = *(v15 + 8);
    v49(v4, v14);
  }

  v50(v0[17], v0[2], v0[15]);

  v16 = sub_1001D0E50();
  v17 = sub_1001D1DC0();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[17];
  v20 = v0[15];
  if (v18)
  {
    v21 = v0[13];
    v22 = v0[14];
    v47 = v0[12];
    v51 = v17;
    v24 = v0[4];
    v23 = v0[5];
    v25 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_1000954E0(v24, v23, v52);
    *(v25 + 12) = 2080;
    sub_1001D0F90();
    v26 = HTTPFields.loggingDescription.getter();
    v28 = v27;
    (*(v21 + 8))(v22, v47);
    v49(v19, v20);
    v29 = sub_1000954E0(v26, v28, v52);

    *(v25 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v51, "%s received headers\n%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v19, v20);
  }

  v31 = v0[10];
  v30 = v0[11];
  v32 = v0[8];
  v33 = v0[9];
  sub_1001D0FE0();
  sub_1001D0FB0();
  v34 = sub_1001D0FA0();
  v35 = *(v33 + 8);
  v35(v31, v32);
  v35(v30, v32);
  if (v34)
  {
    v0[20] = *(v0[3] + *(*v0[3] + 216));
    type metadata accessor for AttestationStore();
    sub_10008A830(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);
    v37 = sub_1001D1A70();

    return _swift_task_switch(sub_1000643C8, v37, v36);
  }

  else
  {
    v38 = v0[11];
    v39 = v0[8];
    sub_1001D0FE0();
    v40 = sub_1001D0FC0();
    v35(v38, v39);
    sub_10005B2F8();
    v41 = swift_allocError();
    *v42 = v40;
    sub_100011AC0(&qword_100227B70, &qword_1001D3718);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1001D39F0;
    *(v43 + 32) = v41;
    sub_10005B34C();
    swift_allocError();
    *v44 = v43;
    swift_willThrow();

    v45 = v0[1];

    return v45();
  }
}

uint64_t sub_1000643C8()
{
  sub_100030670(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100064484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_100011AC0(&unk_100230110, &unk_1001D6520);
  v4[6] = swift_task_alloc();
  v5 = sub_1001D0ED0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10006458C, 0, 0);
}

uint64_t sub_10006458C()
{
  v28 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_10001208C(v0[2], v3, &unk_100230110, &unk_1001D6520);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100011F00(v0[6], &unk_100230110, &unk_1001D6520);
  }

  else
  {
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    (*(v7 + 32))(v5, v0[6], v6);
    (*(v7 + 16))(v4, v5, v6);

    v8 = sub_1001D0E50();
    v9 = sub_1001D1DC0();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[9];
    v12 = v0[10];
    v14 = v0[7];
    v13 = v0[8];
    if (v10)
    {
      v16 = v0[4];
      v15 = v0[5];
      v26 = v0[10];
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1000954E0(v16, v15, &v27);
      *(v17 + 12) = 2080;
      v18 = HTTPFields.loggingDescription.getter();
      v20 = v19;
      v21 = *(v13 + 8);
      v21(v11, v14);
      v22 = sub_1000954E0(v18, v20, &v27);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s received trailers\n%s", v17, 0x16u);
      swift_arrayDestroy();

      v21(v26, v14);
    }

    else
    {

      v23 = *(v13 + 8);
      v23(v11, v14);
      v23(v12, v14);
    }
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100064854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = v24;
  *(v8 + 400) = v25;
  *(v8 + 376) = v23;
  *(v8 + 360) = v22;
  *(v8 + 344) = v21;
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 296) = a3;
  *(v8 + 304) = a4;
  *(v8 + 288) = a2;
  sub_100011AC0(&qword_100227DF8, &qword_1001DD020);
  *(v8 + 408) = swift_task_alloc();
  sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  *(v8 + 416) = swift_task_alloc();
  v9 = type metadata accessor for RateLimitConfiguration(0);
  *(v8 + 424) = v9;
  *(v8 + 432) = *(v9 - 8);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  v10 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  *(v8 + 464) = v10;
  *(v8 + 472) = *(v10 - 8);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  v11 = sub_1001CFD60();
  *(v8 + 504) = v11;
  v12 = *(v11 - 8);
  *(v8 + 512) = v12;
  *(v8 + 520) = *(v12 + 64);
  *(v8 + 528) = swift_task_alloc();
  v13 = sub_1001CFDA0();
  *(v8 + 536) = v13;
  v14 = *(v13 - 8);
  *(v8 + 544) = v14;
  *(v8 + 552) = *(v14 + 64);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  v15 = sub_1001D08A0();
  *(v8 + 576) = v15;
  v16 = *(v15 - 8);
  *(v8 + 584) = v16;
  *(v8 + 592) = *(v16 + 64);
  *(v8 + 600) = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  sub_100011AC0(&qword_100229358, &qword_1001D64D0);
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  v17 = sub_1001D0840();
  *(v8 + 640) = v17;
  *(v8 + 648) = *(v17 - 8);
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  v18 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) - 8);
  *(v8 + 704) = v18;
  *(v8 + 712) = *(v18 + 64);
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  *(v8 + 736) = swift_task_alloc();
  sub_100011AC0(&qword_100229368, &qword_1001D64E0);
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = type metadata accessor for NWAsyncConnection.Inbound(0);
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = sub_100011AC0(&qword_100229558, &qword_1001D68B8);
  *(v8 + 776) = swift_task_alloc();

  return _swift_task_switch(sub_100064E08, 0, 0);
}

uint64_t sub_100064E08()
{
  v1 = v0[95];
  v2 = v0[94];
  sub_100089B7C(v0[37], v1, type metadata accessor for NWAsyncConnection.Inbound);
  v3 = *(v1 + *(v2 + 24));
  os_unfair_lock_lock((v3 + 20));
  if (*(v3 + 16) == 1)
  {
    return sub_1001D2180();
  }

  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[94];
  v10 = v0[37];
  v9 = v0[38];
  *(v3 + 16) = 1;
  os_unfair_lock_unlock((v3 + 20));
  v11 = *v7;
  v12 = *(v8 + 20);
  v13 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
  v14 = v13[5];
  v15 = sub_1001D0E60();
  (*(*(v15 - 8) + 16))(&v5[v14], &v7[v12], v15);
  *&v5[v13[6]] = 0;
  v5[v13[7]] = 0;
  *v5 = v11;

  sub_100089B1C(v7, type metadata accessor for NWAsyncConnection.Inbound);
  v16 = sub_100011AC0(&qword_100229550, &qword_1001D68A0);
  v17 = *(v16 + 40);
  v18 = (v10 + *(v16 + 36));
  v20 = *v18;
  v19 = v18[1];
  v22 = *(v10 + v17);
  v21 = *(v10 + v17 + 8);
  v23 = sub_100011AC0(&qword_100229560, &qword_1001D68C0);
  v5[v23[9]] = 1;
  v5[v23[10]] = 0;
  v24 = &v5[v23[11]];
  *v24 = v20;
  *(v24 + 1) = v19;
  v25 = &v5[v23[12]];
  *v25 = v22;
  *(v25 + 1) = v21;
  v26 = &v5[*(v6 + 80)];
  *v26 = 0;
  v26[8] = 2;
  *&v5[*(v6 + 76)] = xmmword_1001D3A00;
  v0[98] = qword_100229210;
  v27 = *v9;
  v0[99] = *(*v9 + 240);
  v0[100] = *(v27 + 224);
  v0[101] = 0;

  v28 = swift_task_alloc();
  v0[102] = v28;
  *v28 = v0;
  v28[1] = sub_100065114;
  v29 = v0[93];

  return sub_10007CF08(v29);
}

uint64_t sub_100065114()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_100066130;
  }

  else
  {
    v2 = sub_100065228;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100065228()
{
  v134 = v0;
  v1 = *(v0 + 744);
  v2 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100011F00(*(v0 + 776), &qword_100229558, &qword_1001D68B8);

    v3 = sub_1001D0E50();
    v4 = sub_1001D1DC0();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 312);
      v5 = *(v0 + 320);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v133[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954E0(v6, v5, v133);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s response complete", v7, 0xCu);
      sub_100011CF0(v8);
    }

    v9 = swift_task_alloc();
    *(v0 + 888) = v9;
    v10 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
    *v9 = v0;
    v9[1] = sub_1000676F4;
    v11 = *(v0 + 624);
    goto LABEL_5;
  }

  v14 = *(v0 + 736);
  sub_10001208C(v1, v14, &qword_100229360, &qword_1001D64D8);
  sub_100089B1C(v1, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);
  v15 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_45;
  }

  v16 = *(v0 + 736);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100089478(v16, *(v0 + 728), type metadata accessor for Proto_Ropes_Common_Attestation);

    v29 = sub_1001D0E50();
    v30 = sub_1001D1DD0();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = *(v0 + 312);
      v31 = *(v0 + 320);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v133[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1000954E0(v32, v31, v133);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s attestation received", v33, 0xCu);
      sub_100011CF0(v34);
    }

    v35 = *(v0 + 328);
    if (__OFADD__(*v35, 1))
    {
      __break(1u);
    }

    else
    {
      v36 = *(v0 + 808);
      ++*v35;
      if (v36 == 10)
      {
        v37 = swift_task_alloc();
        *(v0 + 832) = v37;
        v10 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
        *v37 = v0;
        v37[1] = sub_100066598;
        v11 = *(v0 + 632);
LABEL_5:
        v12 = 0;
        v13 = 0;

        return TaskGroup.next(isolation:)(v11, v12, v13, v10);
      }

      v71 = *(v0 + 808);
      v73 = *(v0 + 352);
      v72 = *(v0 + 360);
      os_unfair_lock_lock(v73);
      v74 = *(*(v73 + 8) + 16);
      os_unfair_lock_unlock(v73);
      if (v74 >= v72)
      {
        goto LABEL_44;
      }

      v127 = v71 + 1;
      if (!__OFADD__(v71, 1))
      {
        v109 = *(v0 + 728);
        v75 = *(v0 + 720);
        v112 = v75;
        v121 = *(v0 + 712);
        v118 = *(v0 + 704);
        v76 = *(v0 + 616);
        v124 = v76;
        v126 = *(v0 + 608);
        v77 = *(v0 + 600);
        v78 = *(v0 + 584);
        v79 = *(v0 + 576);
        v113 = v79;
        v114 = v77;
        v80 = *(v0 + 568);
        v81 = *(v0 + 560);
        v115 = v80;
        v116 = v81;
        v119 = *(v0 + 552);
        v120 = *(v0 + 592);
        v82 = *(v0 + 544);
        v129 = *(v0 + 536);
        v130 = *(v0 + 528);
        v83 = *(v0 + 504);
        v128 = *(v0 + 512);
        v117 = v83;
        v125 = *(v0 + 392);
        v110 = *(v0 + 384);
        v111 = *(v0 + 400);
        v107 = *(v0 + 368);
        v108 = *(v0 + 376);
        v132 = *(v0 + 304);
        v84 = sub_1001D1BA0();
        v122 = *(v84 - 8);
        v123 = v84;
        (*(v122 + 56))(v76, 1, 1, v84);
        sub_100089B7C(v109, v75, type metadata accessor for Proto_Ropes_Common_Attestation);
        (*(v78 + 16))(v77, v107, v79);
        v85 = *(v82 + 16);
        v85(v80, v108, v129);
        v85(v81, v110, v129);
        (*(v128 + 16))(v130, v111, v83);
        v86 = (*(v118 + 80) + 40) & ~*(v118 + 80);
        v87 = (v121 + *(v78 + 80) + v86) & ~*(v78 + 80);
        v88 = *(v82 + 80);
        v89 = (v120 + v88 + v87) & ~v88;
        v90 = (v119 + v88 + v89) & ~v88;
        v91 = (v119 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
        v92 = (*(v128 + 80) + v91 + 8) & ~*(v128 + 80);
        v93 = swift_allocObject();
        *(v93 + 2) = 0;
        *(v93 + 3) = 0;
        *(v93 + 4) = v132;
        sub_100089478(v112, &v93[v86], type metadata accessor for Proto_Ropes_Common_Attestation);
        (*(v78 + 32))(&v93[v87], v114, v113);
        v94 = *(v82 + 32);
        v94(&v93[v89], v115, v129);
        v94(&v93[v90], v116, v129);
        *&v93[v91] = v125;
        (*(v128 + 32))(&v93[v92], v130, v117);
        sub_10001208C(v124, v126, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v87) = (*(v122 + 48))(v126, 1, v123);

        v95 = *(v0 + 608);
        if (v87 == 1)
        {
          sub_100011F00(*(v0 + 608), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v122 + 8))(v95, v123);
        }

        if (*(v93 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v98 = sub_1001D1A70();
          v100 = v99;
          swift_unknownObjectRelease();
        }

        else
        {
          v98 = 0;
          v100 = 0;
        }

        v101 = **(v0 + 288);
        v102 = swift_allocObject();
        *(v102 + 16) = &unk_1001D68D8;
        *(v102 + 24) = v93;
        v103 = v100 | v98;
        if (v100 | v98)
        {
          v103 = v0 + 168;
          *(v0 + 168) = 0;
          *(v0 + 176) = 0;
          *(v0 + 184) = v98;
          *(v0 + 192) = v100;
        }

        v71 = v127;
        v104 = *(v0 + 616);
        *(v0 + 248) = 1;
        *(v0 + 256) = v103;
        *(v0 + 264) = v101;
        swift_task_create();

        sub_100011F00(v104, &qword_100229350, &unk_1001D6BA0);
LABEL_44:
        sub_100089B1C(*(v0 + 728), type metadata accessor for Proto_Ropes_Common_Attestation);
        *(v0 + 808) = v71;
        goto LABEL_45;
      }
    }

    __break(1u);
    return TaskGroup.next(isolation:)(v11, v12, v13, v10);
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100089B1C(v16, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
LABEL_45:
    v105 = swift_task_alloc();
    *(v0 + 816) = v105;
    *v105 = v0;
    v105[1] = sub_100065114;
    v106 = *(v0 + 744);

    return sub_10007CF08(v106);
  }

  v18 = *(v0 + 696);
  v19 = *(v0 + 688);
  sub_100089478(v16, v18, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_100089B7C(v18, v19, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);

  v20 = sub_1001D0E50();
  v21 = sub_1001D1E00();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 688);
  if (v22)
  {
    v25 = *(v0 + 312);
    v24 = *(v0 + 320);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v133[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_1000954E0(v25, v24, v133);
    *(v26 + 12) = 2048;
    v28 = *(*v23 + 16);
    sub_100089B1C(v23, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    *(v26 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s received rate limit configuration count %ld", v26, 0x16u);
    sub_100011CF0(v27);
  }

  else
  {
    sub_100089B1C(*(v0 + 688), type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  v38 = **(v0 + 696);
  *(v0 + 840) = v38;
  v39 = *(v38 + 16);
  *(v0 + 848) = v39;
  if (v39)
  {
    v40 = 0;
    v41 = *(v0 + 472);
    *(v0 + 896) = *(v41 + 80);
    *(v0 + 856) = *(v41 + 72);
    while (1)
    {
      *(v0 + 872) = v40;
      v44 = *(v0 + 792);
      v45 = *(v0 + 528);
      v47 = *(v0 + 488);
      v46 = *(v0 + 496);
      v49 = *(v0 + 424);
      v48 = *(v0 + 432);
      v50 = *(v0 + 416);
      v51 = *(v0 + 304);
      sub_100089B7C(*(v0 + 840) + ((*(v0 + 896) + 32) & ~*(v0 + 896)) + *(v0 + 856) * v40, v46, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      sub_100089B7C(v46, v47, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_100044698(v51 + v44, v0 + 128);
      sub_1000E5BA4(v45, v47, (v0 + 128), v50);
      v52 = (*(v48 + 48))(v50, 1, v49);
      v53 = *(v0 + 304);
      if (v52 != 1)
      {
        break;
      }

      v54 = *(v0 + 496);
      v55 = *(v0 + 480);
      sub_100011F00(*(v0 + 416), &qword_100229348, &unk_1001D64C0);
      sub_100089B7C(v54, v55, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

      v56 = sub_1001D0E50();
      v57 = sub_1001D1DE0();

      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 496);
      if (v58)
      {
        v61 = *(v0 + 480);
        v60 = *(v0 + 488);
        v131 = *(v0 + 496);
        v63 = *(v0 + 312);
        v62 = *(v0 + 320);
        v64 = swift_slowAlloc();
        v133[0] = swift_slowAlloc();
        *v64 = 136315394;
        *(v64 + 4) = sub_1000954E0(v63, v62, v133);
        *(v64 + 12) = 2080;
        sub_100089B7C(v61, v60, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v65 = sub_1001D1820();
        v67 = v66;
        sub_100089B1C(v61, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v68 = sub_1000954E0(v65, v67, v133);

        *(v64 + 14) = v68;
        _os_log_impl(&_mh_execute_header, v56, v57, "%s unable to process rate limit configuration %s", v64, 0x16u);
        swift_arrayDestroy();

        v43 = v131;
      }

      else
      {
        v42 = *(v0 + 480);

        sub_100089B1C(v42, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v43 = v59;
      }

      sub_100089B1C(v43, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v40 = *(v0 + 872) + 1;
      if (v40 == *(v0 + 848))
      {
        goto LABEL_27;
      }
    }

    v96 = *(v0 + 800);
    sub_100089478(*(v0 + 416), *(v0 + 456), type metadata accessor for RateLimitConfiguration);
    v97 = *(v53 + v96);
    *(v0 + 880) = v97;

    return _swift_task_switch(sub_100067010, v97, 0);
  }

  else
  {
LABEL_27:
    v69 = swift_task_alloc();
    *(v0 + 864) = v69;
    *v69 = v0;
    v69[1] = sub_100066E4C;

    return sub_1000ED278();
  }
}

uint64_t sub_100066130()
{
  *(v0 + 272) = *(v0 + 824);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1000661C0, 0, 0);
}

uint64_t sub_1000661C0()
{
  v14 = v0;
  sub_100011F00(v0[97], &qword_100229558, &qword_1001D68B8);

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[39];
    v3 = v0[40];
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v13);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v6 = *(v0[26] - 8);
    swift_task_alloc();
    (*(v6 + 16))();
    v7 = sub_1001D1820();
    v9 = v8;

    v10 = sub_1000954E0(v7, v9, &v13);

    *(v5 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s response failed: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100066598()
{

  return _swift_task_switch(sub_100066694, 0, 0);
}

void sub_100066694()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    goto LABEL_30;
  }

  v4 = *(v1 + 32);
  v4(*(v0 + 680), v3, v2);
  if (sub_1001D0810())
  {
    v5 = *(v0 + 336);
    os_unfair_lock_lock(v5);
    v6 = *(v5 + 8);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      v9 = *(v0 + 336);
      *(v9 + 8) = v8;
      os_unfair_lock_unlock(v9);
      goto LABEL_5;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

LABEL_5:
  v10 = sub_1001D0830();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = *(v0 + 344);
    v15 = *v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v70 = *(v0 + 344);
      v15 = sub_100008F3C(0, *(v15 + 2) + 1, 1, v15);
      *v70 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v71 = *(v0 + 344);
      v15 = sub_100008F3C((v17 > 1), v18 + 1, 1, v15);
      *v71 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[16 * v18];
    *(v19 + 4) = v12;
    *(v19 + 5) = v13;
  }

  v20 = *(v0 + 680);
  v21 = *(v0 + 672);
  v22 = *(v0 + 648);
  v23 = *(v0 + 640);
  v24 = *(v0 + 352);
  os_unfair_lock_lock(v24);
  (*(v22 + 16))(v21, v20, v23);
  v25 = *(v24 + 8);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 8) = v25;
  if ((v26 & 1) == 0)
  {
    v68 = *(v0 + 352);
    v25 = sub_100009494(0, *(v25 + 2) + 1, 1, v25);
    *(v68 + 8) = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v69 = *(v0 + 352);
    v25 = sub_100009494((v27 > 1), v28 + 1, 1, v25);
    *(v69 + 8) = v25;
  }

  v29 = *(v0 + 680);
  v30 = *(v0 + 672);
  v31 = *(v0 + 648);
  v32 = *(v0 + 640);
  v33 = *(v0 + 352);
  *(v25 + 2) = v28 + 1;
  v4(&v25[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28], v30, v32);
  os_unfair_lock_unlock(v33);
  (*(v31 + 8))(v29, v32);
  v35 = *(v0 + 352);
  v34 = *(v0 + 360);
  os_unfair_lock_lock(v35);
  v36 = *(*(v35 + 8) + 16);
  os_unfair_lock_unlock(v35);
  if (v36 >= v34)
  {
    v58 = 9;
  }

  else
  {
    v74 = *(v0 + 728);
    v37 = *(v0 + 720);
    v77 = v37;
    v86 = *(v0 + 712);
    v83 = *(v0 + 704);
    v38 = *(v0 + 616);
    v89 = v38;
    v91 = *(v0 + 608);
    v39 = *(v0 + 600);
    v40 = *(v0 + 584);
    v41 = *(v0 + 576);
    v78 = v41;
    v79 = v39;
    v42 = *(v0 + 568);
    v43 = *(v0 + 560);
    v80 = v42;
    v81 = v43;
    v84 = *(v0 + 552);
    v85 = *(v0 + 592);
    v44 = *(v0 + 544);
    v93 = *(v0 + 536);
    v94 = *(v0 + 528);
    v45 = *(v0 + 504);
    v92 = *(v0 + 512);
    v82 = v45;
    v76 = *(v0 + 400);
    v90 = *(v0 + 392);
    v75 = *(v0 + 384);
    v72 = *(v0 + 368);
    v73 = *(v0 + 376);
    v95 = *(v0 + 304);
    v46 = sub_1001D1BA0();
    v87 = *(v46 - 8);
    v88 = v46;
    (*(v87 + 56))(v38, 1, 1, v46);
    sub_100089B7C(v74, v37, type metadata accessor for Proto_Ropes_Common_Attestation);
    (*(v40 + 16))(v39, v72, v41);
    v47 = *(v44 + 16);
    v47(v42, v73, v93);
    v47(v43, v75, v93);
    (*(v92 + 16))(v94, v76, v45);
    v48 = (*(v83 + 80) + 40) & ~*(v83 + 80);
    v49 = (v86 + *(v40 + 80) + v48) & ~*(v40 + 80);
    v50 = *(v44 + 80);
    v51 = (v85 + v50 + v49) & ~v50;
    v52 = (v84 + v50 + v51) & ~v50;
    v53 = (v84 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v92 + 80) + v53 + 8) & ~*(v92 + 80);
    v55 = swift_allocObject();
    *(v55 + 2) = 0;
    *(v55 + 3) = 0;
    *(v55 + 4) = v95;
    sub_100089478(v77, &v55[v48], type metadata accessor for Proto_Ropes_Common_Attestation);
    (*(v40 + 32))(&v55[v49], v79, v78);
    v56 = *(v44 + 32);
    v56(&v55[v51], v80, v93);
    v56(&v55[v52], v81, v93);
    *&v55[v53] = v90;
    (*(v92 + 32))(&v55[v54], v94, v82);
    sub_10001208C(v89, v91, &qword_100229350, &unk_1001D6BA0);
    LODWORD(v49) = (*(v87 + 48))(v91, 1, v88);

    v57 = *(v0 + 608);
    if (v49 == 1)
    {
      sub_100011F00(*(v0 + 608), &qword_100229350, &unk_1001D6BA0);
    }

    else
    {
      sub_1001D1B90();
      (*(v87 + 8))(v57, v88);
    }

    if (*(v55 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v59 = sub_1001D1A70();
      v61 = v60;
      swift_unknownObjectRelease();
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v62 = **(v0 + 288);
    v63 = swift_allocObject();
    *(v63 + 16) = &unk_1001D68D8;
    *(v63 + 24) = v55;
    v64 = v61 | v59;
    if (v61 | v59)
    {
      v64 = v0 + 168;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = v59;
      *(v0 + 192) = v61;
    }

    v65 = *(v0 + 616);
    *(v0 + 248) = 1;
    *(v0 + 256) = v64;
    *(v0 + 264) = v62;
    swift_task_create();

    sub_100011F00(v65, &qword_100229350, &unk_1001D6BA0);
    v58 = 10;
  }

  sub_100089B1C(*(v0 + 728), type metadata accessor for Proto_Ropes_Common_Attestation);
  *(v0 + 808) = v58;
  v66 = swift_task_alloc();
  *(v0 + 816) = v66;
  *v66 = v0;
  v66[1] = sub_100065114;
  v67 = *(v0 + 744);

  sub_10007CF08(v67);
}