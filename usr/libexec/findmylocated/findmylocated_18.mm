uint64_t sub_1001E98A0()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];

  (*(v2 + 8))(v1, v3);
  sub_100004984(v0 + 12);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001E9948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E99C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E9A38()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];

  (*(v2 + 8))(v1, v3);
  sub_100004984(v0 + 12);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001E9AE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Response();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Response.response.getter();
  v11 = [v10 statusCode];

  v12 = sub_100181DA8(v11);
  if (v12 == 21)
  {
    v38 = a2;
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFF18);
    (*(v7 + 16))(v9, a1, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004E52E0, &v39);
      *(v22 + 12) = 2050;
      v24 = Response.response.getter();
      v25 = [v24 statusCode];

      (*(v7 + 8))(v9, v6);
      *(v22 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s: Invalid status code: %{public}ld", v22, 0x16u);
      sub_100004984(v23);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    a2 = v38;
    sub_10020B050();
    v34 = swift_allocError();
    *v36 = 0;
    goto LABEL_19;
  }

  if (v12 != 1)
  {
    v26 = v12;
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005DFF18);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004E52E0, &v39);
      *(v30 + 12) = 2082;
      v31 = sub_10018166C(v26);
      v33 = sub_10000D01C(v31, v32, &v39);

      *(v30 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s: Request failed. Status code: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    sub_10020B050();
    v34 = swift_allocError();
    *v35 = 1;
LABEL_19:
    result = swift_willThrow();
    *a2 = v34;
    return result;
  }

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004E52E0, &v39);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s: Success response.", v16, 0xCu);
    sub_100004984(v17);
  }

  return (*(v7 + 16))(a3, a1, v6);
}

uint64_t sub_1001EA044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v11 = type metadata accessor for UUID();
  v41 = *(v11 - 8);
  v42 = v11;
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v43 = type metadata accessor for WorkItemQueue.WorkItem();
  v45 = a2;
  sub_100011004(a2, v49);
  sub_100011004(a3, v48);
  sub_100005F04(a5, v46, &qword_1005A9138, &qword_1004C2600);
  (*(v15 + 16))(v18, a1, v14);
  v19 = (*(v15 + 80) + 144) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100010BD4(v49, v21 + 16);
  sub_100010BD4(v48, v21 + 56);
  *(v21 + 96) = a4;
  v22 = v46[1];
  *(v21 + 104) = v46[0];
  *(v21 + 120) = v22;
  *(v21 + 136) = v47;
  (*(v15 + 32))(v21 + v19, v18, v14);
  *(v21 + v20) = v44;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000A6F0(v23, qword_1005DFF18);
  sub_100011004(v45, v49);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *&v46[0] = swift_slowAlloc();
    *v26 = 136446722;
    sub_100011004(v49, v48);
    sub_10004B564(&qword_1005AFFC0, &qword_1004D14C0);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_100004984(v49);
    v30 = sub_10000D01C(v27, v29, v46);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    v31 = WorkItemQueue.name.getter();
    v33 = sub_10000D01C(v31, v32, v46);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2082;
    WorkItemQueue.WorkItem.id.getter();
    sub_1001E6D00(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = v42;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v41 + 8))(v13, v34);
    v38 = sub_10000D01C(v35, v37, v46);

    *(v26 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v24, v25, "Scheduling command to %{public}s on %{public}s.\nWorkItem: %{public}s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004984(v49);
  }

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1001EA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[651] = a6;
  v6[650] = a5;
  v6[649] = a4;
  v6[648] = a3;
  v6[647] = a2;
  v6[646] = a1;
  v7 = type metadata accessor for Date();
  v6[652] = v7;
  v6[653] = *(v7 - 8);
  v6[654] = swift_task_alloc();
  v8 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v6[655] = v8;
  v6[656] = *(v8 - 8);
  v6[657] = swift_task_alloc();
  v6[658] = type metadata accessor for RefreshClientEndpoint(0);
  v6[659] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  v6[660] = v9;
  v6[661] = *(v9 - 8);
  v6[662] = swift_task_alloc();
  v6[663] = swift_task_alloc();
  v6[664] = swift_task_alloc();
  v6[665] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v6[666] = v10;
  v6[667] = *(v10 - 8);
  v6[668] = swift_task_alloc();
  v11 = type metadata accessor for Response();
  v6[669] = v11;
  v6[670] = *(v11 - 8);
  v6[671] = swift_task_alloc();
  v6[672] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v6[673] = v12;
  v6[674] = *(v12 - 8);
  v6[675] = swift_task_alloc();

  return _swift_task_switch(sub_1001EA844, 0, 0);
}

uint64_t sub_1001EA844()
{
  v25 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[648];
  v2 = v0[647];
  v3 = type metadata accessor for Logger();
  v0[676] = sub_10000A6F0(v3, qword_1005DFF18);
  sub_100011004(v2, (v0 + 612));
  sub_100011004(v1, (v0 + 617));

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[675];
    v7 = v0[674];
    v8 = v0[673];
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136446722;
    sub_100011004((v0 + 612), (v0 + 637));
    sub_10004B564(&qword_1005AFFC0, &qword_1004D14C0);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_100004984(v0 + 612);
    v13 = sub_10000D01C(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    WorkItemQueue.WorkItem.id.getter();
    sub_1001E6D00(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v7 + 8))(v6, v8);
    v17 = sub_10000D01C(v14, v16, &v24);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    sub_100011AEC(v0 + 617, v0[620]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100004984(v0 + 617);
    v21 = sub_10000D01C(v18, v20, &v24);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending command to %{public}s\nWorkItem: %{public}s\n%s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004984(v0 + 612);
    sub_100004984(v0 + 617);
  }

  v22 = v0[649];

  return _swift_task_switch(sub_1001EAB84, v22, 0);
}

uint64_t sub_1001EAB84()
{
  sub_100011004(*(v0 + 5192) + OBJC_IVAR____TtC13findmylocated11DataManager_sic, v0 + 4976);

  return _swift_task_switch(sub_1001EAC00, 0, 0);
}

uint64_t sub_1001EAC00()
{
  v1 = v0[625];
  v2 = v0[626];
  sub_100011AEC(v0 + 622, v1);
  v9 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[677] = v3;
  *v3 = v0;
  v3[1] = sub_1001EAD40;
  v4 = v0[672];
  v5 = v0[650];
  v6 = v0[648];
  v7 = v0[647];

  return v9(v4, v7, v6, v5, v1, v2);
}

uint64_t sub_1001EAD40()
{
  *(*v1 + 5424) = v0;

  if (v0)
  {
    v2 = sub_1001EBFA4;
  }

  else
  {
    v2 = sub_1001EAE54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EAE54()
{
  sub_100004984(v0 + 622);
  v1 = swift_task_alloc();
  v0[679] = v1;
  *v1 = v0;
  v1[1] = sub_1001EAF04;
  v2 = v0[672];
  v3 = v0[671];
  v4 = v0[648];
  v5 = v0[647];

  return sub_1001E827C(v3, v5, v4, v2);
}

uint64_t sub_1001EAF04()
{
  *(*v1 + 5440) = v0;

  if (v0)
  {
    v2 = sub_1001EC1E0;
  }

  else
  {
    v2 = sub_1001EB018;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EB018()
{
  v1 = v0[647];
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  sub_100011004(v1, (v0 + 627));
  sub_10004B564(&qword_1005AFFC0, &qword_1004D14C0);
  v2 = swift_dynamicCast();
  if (v2)
  {
    sub_10020A58C(v0[659], type metadata accessor for RefreshClientEndpoint);
  }

  v3 = swift_task_alloc();
  v0[681] = v3;
  *v3 = v0;
  v3[1] = sub_1001EB148;
  v4 = v0[671];

  return sub_1001EC55C(v4, v2);
}

uint64_t sub_1001EB148()
{

  return _swift_task_switch(sub_1001EB244, 0, 0);
}

uint64_t sub_1001EB244(uint64_t a1)
{
  v115 = v1;
  v2 = *(v1 + 5320);
  v3 = *(v1 + 5312);
  v4 = *(v1 + 5304);
  v5 = *(v1 + 5296);
  v6 = *(v1 + 5288);
  v7 = *(v1 + 5280);
  ContinuousClock.now.getter();
  v8 = *(v6 + 16);
  v8(v4, v2, v7);
  v8(v5, v3, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v1 + 5304);
  v13 = *(v1 + 5296);
  v14 = *(v1 + 5288);
  v15 = *(v1 + 5280);
  if (v11)
  {
    v16 = *(v1 + 5256);
    v17 = *(v1 + 5248);
    v108 = *(v1 + 5240);
    v112 = v10;
    v18 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v114[0] = v110;
    *v18 = 136315138;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1001E6D00(&qword_1005AFFD0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v106 = static Duration.description<A>(_:_:units:)();
    v20 = v19;
    (*(v17 + 8))(v16, v108);
    v21 = *(v14 + 8);
    v21(v13, v15);
    v21(v12, v15);
    v22 = sub_10000D01C(v106, v20, v114);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v9, v112, "updateData Duration: %s", v18, 0xCu);
    sub_100004984(v110);
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v13, v15);
    v21(v12, v15);
  }

  *(v1 + 5456) = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Start decoding command response", v25, 2u);
  }

  v26 = *(v1 + 5440);

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v27 = Response.body.getter();
  v29 = v28;
  sub_1001FD71C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v26)
  {
    v109 = *(v1 + 5368);
    v111 = *(v1 + 5376);
    v30 = v21;
    v31 = *(v1 + 5360);
    v105 = *(v1 + 5344);
    v107 = *(v1 + 5352);
    v113 = v26;
    v32 = *(v1 + 5336);
    v103 = *(v1 + 5320);
    v104 = *(v1 + 5328);
    v33 = *(v1 + 5312);
    v34 = *(v1 + 5280);
    sub_1000049D0(v27, v29);

    v30(v33, v34);
    v30(v103, v34);
    (*(v32 + 8))(v105, v104);
    v35 = *(v31 + 8);
    v35(v109, v107);
    v35(v111, v107);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v114[0] = v39;
      *v38 = 136446210;
      *(v1 + 5160) = v113;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v40 = String.init<A>(describing:)();
      v42 = sub_10000D01C(v40, v41, v114);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "sendCommand error: %{public}s", v38, 0xCu);
      sub_100004984(v39);
    }

    *(v1 + 5152) = v113;
    sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
    CheckedContinuation.resume(throwing:)();

    v43 = *(v1 + 8);

    return v43();
  }

  v45 = (v1 + 4192);
  v46 = (v1 + 4368);
  v47 = *(v1 + 5184);
  sub_1000049D0(v27, v29);

  memcpy((v1 + 16), (v1 + 816), 0x320uLL);
  sub_100011004(v47, v1 + 5056);
  sub_10006DAC8(v1 + 16, v1 + 1616);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  sub_10005D06C(v1 + 16);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v50 = 136315394;
    sub_100011AEC((v1 + 5056), *(v1 + 5080));
    swift_getDynamicType();
    v51 = _typeName(_:qualified:)();
    v53 = v52;
    sub_100004984((v1 + 5056));
    v54 = sub_10000D01C(v51, v53, v114);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    sub_10006DAC8(v1 + 16, v1 + 3216);
    v55 = sub_100176040();
    v57 = v56;
    sub_10005D06C(v1 + 16);
    v58 = sub_10000D01C(v55, v57, v114);

    *(v50 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v48, v49, "%s decoded response: %s", v50, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004984((v1 + 5056));
  }

  v59 = *(v1 + 752);
  v61 = *(v1 + 768);
  v60 = *(v1 + 784);
  *(v1 + 4496) = v61;
  *(v1 + 4512) = v60;
  v62 = *(v1 + 784);
  *(v1 + 4528) = *(v1 + 800);
  v63 = *(v1 + 688);
  v65 = *(v1 + 704);
  v64 = *(v1 + 720);
  *(v1 + 4432) = v65;
  *(v1 + 4448) = v64;
  v66 = *(v1 + 720);
  v68 = *(v1 + 736);
  v67 = *(v1 + 752);
  *(v1 + 4464) = v68;
  *(v1 + 4480) = v67;
  v69 = *(v1 + 656);
  *v46 = *(v1 + 640);
  *(v1 + 4384) = v69;
  v70 = *(v1 + 688);
  v72 = *(v1 + 640);
  v71 = *(v1 + 656);
  v73 = *(v1 + 672);
  *(v1 + 4400) = v73;
  *(v1 + 4416) = v70;
  *(v1 + 4320) = v61;
  *(v1 + 4336) = v62;
  *(v1 + 4352) = *(v1 + 800);
  *(v1 + 4256) = v65;
  *(v1 + 4272) = v66;
  *(v1 + 4288) = v68;
  *(v1 + 4304) = v59;
  *v45 = v72;
  *(v1 + 4208) = v71;
  *(v1 + 4224) = v73;
  *(v1 + 4240) = v63;
  if (sub_10004AFD4(v1 + 4192) != 1)
  {
    v74 = *(v1 + 4336);
    *(v1 + 4144) = *(v1 + 4320);
    *(v1 + 4160) = v74;
    *(v1 + 4176) = *(v1 + 4352);
    v75 = *(v1 + 4272);
    *(v1 + 4080) = *(v1 + 4256);
    *(v1 + 4096) = v75;
    v76 = *(v1 + 4304);
    *(v1 + 4112) = *(v1 + 4288);
    *(v1 + 4128) = v76;
    v77 = *(v1 + 4208);
    *(v1 + 4016) = *v45;
    *(v1 + 4032) = v77;
    v78 = *(v1 + 4240);
    *(v1 + 4048) = *(v1 + 4224);
    *(v1 + 4064) = v78;
    v79 = *(v1 + 4512);
    *(v1 + 4672) = *(v1 + 4496);
    *(v1 + 4688) = v79;
    *(v1 + 4704) = *(v1 + 4528);
    v80 = *(v1 + 4448);
    *(v1 + 4608) = *(v1 + 4432);
    *(v1 + 4624) = v80;
    v81 = *(v1 + 4480);
    *(v1 + 4640) = *(v1 + 4464);
    *(v1 + 4656) = v81;
    v82 = *(v1 + 4384);
    *(v1 + 4544) = *v46;
    *(v1 + 4560) = v82;
    v83 = *(v1 + 4416);
    *(v1 + 4576) = *(v1 + 4400);
    *(v1 + 4592) = v83;
    sub_10017E60C(v1 + 4544, v1 + 4720);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v114[0] = v87;
      *v86 = 136446210;
      v88 = *(v1 + 4360);
      *(v1 + 5136) = *(v1 + 4352);
      *(v1 + 5144) = v88;

      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      v89 = String.init<A>(describing:)();
      v91 = sub_10000D01C(v89, v90, v114);

      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v84, v85, "Got server alert with ID: %{public}s", v86, 0xCu);
      sub_100004984(v87);
    }

    v92 = (*(v1 + 5192) + OBJC_IVAR____TtC13findmylocated11DataManager_serverAlertPresenter);
    v93 = v92[3];
    v94 = v92[4];
    sub_100011AEC(v92, v93);
    (*(v94 + 8))(v1 + 4016, v93, v94);
    sub_100002CE0(v1 + 4368, &qword_1005AD7F0, &unk_1004CA2D0);
  }

  v95 = *(v1 + 296);
  if (v95 == 21)
  {
    if (*(v1 + 240) == 1)
    {
LABEL_24:
      v102 = *(v1 + 5192);
      v101 = sub_1001EBD10;
      goto LABEL_25;
    }

    v95 = *(v1 + 256);
  }

  if (v95 != 1)
  {
    goto LABEL_24;
  }

  v96 = *(v1 + 5232);
  v97 = *(v1 + 5224);
  v98 = *(v1 + 5216);
  v99 = *(v1 + 5192);
  static Date.trustedNow.getter(v96);
  Date.timeIntervalSince1970.getter();
  *(v1 + 5464) = v100;
  (*(v97 + 8))(v96, v98);
  v101 = sub_1001EBCE0;
  v102 = v99;
LABEL_25:

  return _swift_task_switch(v101, v102, 0);
}

uint64_t sub_1001EBD40(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[684];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "CommandManager: lastSuccessfulResponseTimestamp: %{public}f", v5, 0xCu);
  }

  v6 = v1[682];
  v18 = v1[671];
  v19 = v1[672];
  v7 = v1[670];
  v8 = v1[669];
  v9 = v1[667];
  v16 = v1[666];
  v17 = v1[668];
  v15 = v1[665];
  v10 = v1[664];
  v11 = v1[660];

  memcpy(v1 + 302, v1 + 2, 0x320uLL);
  sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  CheckedContinuation.resume(returning:)();
  v6(v10, v11);
  v6(v15, v11);
  (*(v9 + 8))(v17, v16);
  v12 = *(v7 + 8);
  v12(v18, v8);
  v12(v19, v8);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1001EBFA4()
{
  v12 = v0;
  sub_100004984(v0 + 622);
  v1 = v0[678];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[645] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "sendCommand error: %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[644] = v1;
  sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  CheckedContinuation.resume(throwing:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001EC1E0()
{
  v12 = v0;
  (*(v0[670] + 8))(v0[672], v0[669]);
  v1 = v0[680];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[645] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "sendCommand error: %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[644] = v1;
  sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  CheckedContinuation.resume(throwing:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001EC42C(uint64_t a1)
{
  v4 = *(sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0) - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001EA544(a1, v1 + 16, v1 + 56, v6, v1 + 104, v1 + v5);
}

uint64_t sub_1001EC55C(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = *v2;
  v4 = type metadata accessor for Response();
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 + 64);
  *(v3 + 112) = swift_task_alloc();
  type metadata accessor for AccountService.State(0);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  *v6 = v3;
  v6[1] = sub_1001EC6B8;

  return daemon.getter();
}

uint64_t sub_1001EC6B8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[18] = a1;

  v3 = swift_task_alloc();
  v2[19] = v3;
  v4 = type metadata accessor for Daemon();
  v2[20] = v4;
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[21] = v6;
  v7 = sub_1001E6D00(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_1001EC898;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001EC898(uint64_t a1)
{
  v4 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = sub_1001ED47C;
  }

  else
  {

    v6 = sub_1001EC9D0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001EC9D0()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC13findmylocated14AccountService_state;
  swift_beginAccess();
  sub_10020AABC(v1 + v4, v2, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_1001ECA84, v3, 0);
}

uint64_t sub_1001ECA84()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  (*(*(v3 - 8) + 56))(v1, 3, 3, v3);
  v4 = sub_10049F7A4(v2, v1);
  sub_10020A58C(v1, type metadata accessor for AccountService.State);
  sub_10020A58C(v2, type metadata accessor for AccountService.State);
  if (v4)
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFF18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "DataManager: should not updateData when state == .noAccount", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_1001ECCBC;

    return daemon.getter();
  }
}

uint64_t sub_1001ECCBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 200) = a1;

  v5 = swift_task_alloc();
  *(v3 + 208) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_1001E6D00(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_1001ECE70;
  v8 = *(v2 + 168);
  v9 = *(v2 + 160);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1001ECE70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = v3[9];

    return _swift_task_switch(sub_1001ED66C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[29] = v6;
    *v6 = v4;
    v6[1] = sub_1001ECFF8;

    return sub_100008CC0();
  }
}

uint64_t sub_1001ECFF8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 40) = v1;
  *(v3 + 48) = a1;
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_1001ED10C, v4, 0);
}

uint64_t sub_1001ED10C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v7 = *(v6 + 72);
  v8 = *(v7 + 120);
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v6 + 104);
    v10 = *(v6 + 112);
    v11 = *(v6 + 88);
    v12 = *(v6 + 96);
    v21 = *(v6 + 80);
    v22 = *(v6 + 48);
    v20 = *(v6 + 264);
    v13 = *(v6 + 64);
    *(v7 + 120) = v8 + 1;
    v19 = v8 + 1;
    (*(v12 + 16))(v10, v13, v11, a4, a5, a6);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = v14 + v9;
    v16 = (v14 + v9) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v6 + 240) = v17;
    *(v17 + 16) = v19;
    *(v17 + 24) = v7;
    (*(v12 + 32))(v17 + v14, v10, v11);
    *(v17 + v15) = v20;
    *(v17 + v16 + 8) = v22;
    *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;

    a1 = swift_task_alloc();
    *(v6 + 248) = a1;
    *a1 = v6;
    a1[1] = sub_1001ED2CC;
    a4 = &unk_1004D14E8;
    a2 = 0x40AAD21B3B700000;
    a6 = &type metadata for () + 1;
    a3 = 3;
    a5 = v17;
  }

  return withTimeout<A>(_:block:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1001ED2CC()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_1001ED868;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1001ED3F4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001ED3F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001ED47C()
{
  v13 = v0;

  v1 = v0[23];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[7] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager updateData error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001ED66C()
{
  v13 = v0;

  v1 = v0[28];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[7] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager updateData error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001ED868()
{
  v13 = v0;

  v1 = v0[32];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[7] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager updateData error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001EDA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Account();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001EDB3C, 0, 0);
}

uint64_t sub_1001EDB3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  (*(v4 + 16))(v1, v0[3], v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v6;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v5;

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1001EDCA8;

  return withTimeout<A>(_:block:)(v10, 0x40AAD21B3B700000, 3, &unk_1004D18A8, v9, &type metadata for () + 1);
}

uint64_t sub_1001EDCA8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1001EDE28;
  }

  else
  {

    v2 = sub_1001EDDC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EDDC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EDE28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EDE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_1001EDEB4, a2, 0);
}

uint64_t sub_1001EDEDC()
{
  v19 = v0;
  if (*(v0 + 136))
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFF18);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v18 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E54F0, &v18);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s APNS has already been set up", v4, 0xCu);
      sub_100004984(v5);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFF18);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E54F0, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s", v11, 0xCu);
      sub_100004984(v12);
    }

    if (static SystemInfo.underTest.getter())
    {
      v13 = *(v0 + 16);

      return _swift_task_switch(sub_1001EE258, v13, 0);
    }

    else
    {
      type metadata accessor for APNSManager();
      v14 = Account.apsEnvironment.getter();
      v16 = v15;
      v17 = swift_task_alloc();
      *(v0 + 56) = v17;
      *v17 = v0;
      v17[1] = sub_1001EE4A4;

      return APNSManager.__allocating_init(environmentName:delegatePort:)(v14, v16, 0xD000000000000019, 0x80000001004E54D0);
    }
  }
}

uint64_t sub_1001EE258(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v2[5] = *(v3 + 168);
  v2[6] = *(v3 + 176);
  swift_unknownObjectRetain();

  return _swift_task_switch(sub_1001EE2D4, 0, 0);
}

uint64_t sub_1001EE2D4()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    v0[9] = v1;
    v0[10] = v2;
    v3 = v0[4];
    v4 = v0[2];
    ObjectType = swift_getObjectType();
    v0[11] = ObjectType;
    v6 = swift_allocObject();
    v0[12] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    swift_unknownObjectRetain_n();

    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1001EE6C4;

    return dispatch thunk of APNSConnector.setDidReceive(block:)(&unk_1004D18B8, v6, ObjectType, v2);
  }

  else
  {
    type metadata accessor for APNSManager();
    v8 = Account.apsEnvironment.getter();
    v10 = v9;
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_1001EE4A4;

    return APNSManager.__allocating_init(environmentName:delegatePort:)(v8, v10, 0xD000000000000019, 0x80000001004E54D0);
  }
}

uint64_t sub_1001EE4A4(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1001EE5A4, 0, 0);
}

uint64_t sub_1001EE5A4()
{
  v0[9] = v0[8];
  v0[10] = &protocol witness table for APNSManager;
  v1 = v0[4];
  v2 = v0[2];
  ObjectType = swift_getObjectType();
  v0[11] = ObjectType;
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  swift_unknownObjectRetain_n();

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1001EE6C4;

  return dispatch thunk of APNSConnector.setDidReceive(block:)(&unk_1004D18B8, v4, ObjectType, &protocol witness table for APNSManager);
}

uint64_t sub_1001EE6C4()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1001EE7F8, 0, 0);
}

uint64_t sub_1001EE7F8()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_unknownObjectRetain();

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1001EE8F0;
  v6 = v0[10];
  v5 = v0[11];

  return dispatch thunk of APNSConnector.setDidReceivePublicToken(block:)(&unk_1004D18C8, v3, v5, v6);
}

uint64_t sub_1001EE8F0()
{
  v1 = *v0;
  v2 = *v0;

  swift_unknownObjectRelease();

  v3 = swift_task_alloc();
  v1[16] = v3;
  *v3 = v2;
  v3[1] = sub_1001EEA98;
  v4 = v1[11];
  v5 = v1[10];

  return dispatch thunk of APNSConnector.set(enabledTopics:)(&off_10058BB88, v4, v5);
}

uint64_t sub_1001EEA98()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1001EEBC4, v1, 0);
}

uint64_t sub_1001EEBC4()
{
  v1 = *(v0 + 16);
  *(v1 + 168) = *(v0 + 72);
  swift_unknownObjectRelease();
  *(v1 + 136) = 1;

  return _swift_task_switch(sub_1001EEC40, 0, 0);
}

uint64_t sub_1001EEC40()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EECA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for APNSManager.IncomingMessage();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001EED64, 0, 0);
}

uint64_t sub_1001EED64()
{
  v22 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF18);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    sub_1001E6D00(&qword_1005B0308, &type metadata accessor for APNSManager.IncomingMessage, &protocol conformance descriptor for APNSManager.IncomingMessage);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Did receive push: %{public}s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_1001EEFD4;
  v19 = v0[2];

  return sub_1001EF0E4(v19);
}

uint64_t sub_1001EEFD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001EF0E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for FMFAPSMessage(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001EF1C4, v1, 0);
}

uint64_t sub_1001EF1C4()
{
  v35 = v0;
  *(v0 + 16) = APNSManager.IncomingMessage.topic.getter();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 16;
  v3 = sub_1001B94DC(sub_10020B680, v2, &off_10058BB88);

  if (v3)
  {
    v4 = objc_opt_self();
    APNSManager.IncomingMessage.userInfo.getter();
    sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 32) = 0;
    v6 = [v4 dataWithJSONObject:isa options:0 error:v0 + 32];

    v7 = *(v0 + 32);
    if (v6)
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      *(v0 + 88) = v8;
      *(v0 + 96) = v10;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1001E6D00(&qword_1005B0310, type metadata accessor for FMFAPSMessage, &unk_1004D1BA4);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      if (qword_1005A80B8 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 72);
      v21 = *(v0 + 80);
      v22 = type metadata accessor for Logger();
      sub_10000A6F0(v22, qword_1005DFF18);
      sub_10020AABC(v21, v20, type metadata accessor for FMFAPSMessage);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 72);
      if (v25)
      {
        v27 = *(v0 + 64);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v34 = v29;
        *v28 = 136315138;
        sub_10020AABC(v26, v27, type metadata accessor for FMFAPSMessage);
        v30._countAndFlagsBits = Date.localISO8601.getter();
        String.append(_:)(v30);

        sub_10020A58C(v27, type metadata accessor for FMFAPSMessage);
        sub_10020A58C(v26, type metadata accessor for FMFAPSMessage);
        v31 = sub_10000D01C(0x54646E6553706174, 0xEB00000000203A53, &v34);

        *(v28 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "APNS message: %s.", v28, 0xCu);
        sub_100004984(v29);
      }

      else
      {

        sub_10020A58C(v26, type metadata accessor for FMFAPSMessage);
      }

      v32 = swift_task_alloc();
      *(v0 + 104) = v32;
      *v32 = v0;
      v32[1] = sub_1001EF804;
      v33 = *(v0 + 80);

      return sub_1001EFC74(v33);
    }

    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005DFF18);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to decode APNS message due to %{public}@", v15, 0xCu);
      sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001EF804()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1001EF940, v1, 0);
}

uint64_t sub_1001EF940()
{
  v1 = v0[10];
  sub_1000049D0(v0[11], v0[12]);
  sub_10020A58C(v1, type metadata accessor for FMFAPSMessage);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001EFA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1001EFA34, 0, 0);
}

uint64_t sub_1001EFA34()
{
  v14 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  sub_100005F6C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_1000049D0(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v8 = Data.hexString.getter();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did receive APNS public token: %{private,mask.hash}s", v6, 0x16u);
    sub_100004984(v7);
  }

  v11 = v0[4];

  return _swift_task_switch(sub_1001EFBF0, v11, 0);
}

uint64_t sub_1001EFBF0()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = (v0[4] + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken);
  v5 = *v3;
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v1;
  sub_100005F6C(v2, v1);
  sub_10001A794(v5, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1001EFC74(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001EFDA0, v1, 0);
}

uint64_t sub_1001EFDA0()
{
  v38 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v37 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E5510, &v37);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[3];
  v7 = OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps;
  v8 = *(v6 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps);
  if (v8[2])
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found existing trigger. Not refreshing.", v11, 2u);
    }

    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];
    v15 = v0[2];

    (*(v13 + 16))(v12, v15, v14);
    v16 = *(v6 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v7) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_10000DFC0(0, v16[2] + 1, 1, v16, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
      *(v6 + v7) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_10000DFC0((v18 > 1), v19 + 1, 1, v16, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
    }

    v21 = v0[7];
    v20 = v0[8];
    v22 = v0[6];
    v16[2] = v19 + 1;
    (*(v21 + 32))(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20, v22);
    *(v6 + v7) = v16;
  }

  else
  {
    (*(v0[7] + 16))(v0[9], v0[2], v0[6]);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v7) = v8;
    if ((v23 & 1) == 0)
    {
      v8 = sub_10000DFC0(0, 1, 1, v8, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
      *(v6 + v7) = v8;
    }

    v25 = v8[2];
    v24 = v8[3];
    if (v25 >= v24 >> 1)
    {
      v8 = sub_10000DFC0((v24 > 1), v25 + 1, 1, v8, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
    }

    v26 = v0[9];
    v27 = v0[6];
    v28 = v0[7];
    v30 = v0[4];
    v29 = v0[5];
    v31 = v0[3];
    v8[2] = v25 + 1;
    (*(v28 + 32))(v8 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v26, v27);
    *(v6 + v7) = v8;
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
    v33 = sub_1001E6D00(&qword_1005AFFB0, type metadata accessor for DataManager, &unk_1004D1470);
    v34 = swift_allocObject();
    v34[2] = v31;
    v34[3] = v33;
    v34[4] = v31;
    v34[5] = v30;
    swift_retain_n();
    sub_1001D7F30(0, 0, v29, &unk_1004D18E8, v34);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1001F02AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[103] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[104] = v6;
  v4[105] = *(v6 - 8);
  v4[106] = swift_task_alloc();

  return _swift_task_switch(sub_1001F0370, a4, 0);
}

uint64_t sub_1001F0370()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 856) = v1;
  *v1 = v0;
  v1[1] = sub_1001F043C;

  return sub_100291918(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1001F043C()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *(*v1 + 840);
  v5 = *(*v1 + 832);
  *(*v1 + 864) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 824);
  if (v0)
  {
    v7 = sub_1001F08A0;
  }

  else
  {
    v7 = sub_1001F05C4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001F05C4()
{
  v20 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    v6 = Duration.description.getter();
    v8 = sub_10000D01C(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "refreshClientWithThrottle after sleeping for %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    type metadata accessor for Date();

    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_10000D01C(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Refreshing with triggers: %s", v11, 0xCu);
    sub_100004984(v12);
  }

  v17 = swift_task_alloc();
  *(v0 + 872) = v17;
  *v17 = v0;
  v17[1] = sub_1001F0AA0;

  return sub_1001E17C0(v0 + 16);
}

uint64_t sub_1001F08A0()
{
  v14 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[108];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[102] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "refreshIfNeeded error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  *(v0[103] + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps) = _swiftEmptyArrayStorage;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001F0AA0()
{
  v1 = *v0;
  v2 = *(*v0 + 824);

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_1001F0BC8, v2, 0);
}

uint64_t sub_1001F0BC8()
{
  *(*(v0 + 824) + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps) = _swiftEmptyArrayStorage;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F0C4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 2624) = a4;
  *(v4 + 2961) = a3;
  *(v4 + 2616) = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v4 + 2632) = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  *(v4 + 2640) = v5;
  *(v4 + 2648) = *(v5 - 8);
  *(v4 + 2656) = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  *(v4 + 2664) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 2672) = v6;
  *(v4 + 2680) = *(v6 - 8);
  *(v4 + 2688) = swift_task_alloc();
  *(v4 + 2696) = swift_task_alloc();
  *(v4 + 2704) = type metadata accessor for DataManager.State(0);
  *(v4 + 2712) = swift_task_alloc();
  *(v4 + 2720) = type metadata accessor for InitEndpoint(0);
  *(v4 + 2728) = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  *(v4 + 2736) = swift_task_alloc();
  v7 = type metadata accessor for Account();
  *(v4 + 2744) = v7;
  *(v4 + 2752) = *(v7 - 8);
  *(v4 + 2760) = swift_task_alloc();
  *(v4 + 2768) = swift_task_alloc();
  *(v4 + 2776) = swift_task_alloc();
  *(v4 + 2784) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v4 + 2792) = v8;
  *v8 = v4;
  v8[1] = sub_1001F0F40;

  return daemon.getter();
}

uint64_t sub_1001F0F40(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 2800) = a1;

  v3 = swift_task_alloc();
  *(v2 + 2808) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001E6D00(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_1001F111C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001F111C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[352] = a1;
  v3[353] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1001F2DDC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[354] = v5;
    *v5 = v4;
    v5[1] = sub_1001F12AC;
    v6 = v3[342];

    return sub_10000EB24(v6);
  }
}

uint64_t sub_1001F12AC()
{

  return _swift_task_switch(sub_1001F13A8, 0, 0);
}

uint64_t sub_1001F13A8()
{
  v36 = v0;
  v1 = v0[344];
  v2 = v0[343];
  v3 = v0[342];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFF18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to send init client!", v7, 2u);
    }

    sub_10020ADDC();
    swift_allocError();
    *v8 = 7;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v1 + 32))(v0[348], v3, v2);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v11 = v0[348];
    v12 = v0[347];
    v13 = v0[344];
    v14 = v0[343];
    v15 = type metadata accessor for Logger();
    v0[355] = sub_10000A6F0(v15, qword_1005DFF18);
    v16 = *(v13 + 16);
    v0[356] = v16;
    v0[357] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v12, v11, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[347];
    if (v19)
    {
      v21 = v0[346];
      v22 = v0[344];
      v23 = v0[343];
      v24 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v24 = 136315138;
      v16(v21, v20, v23);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      v28 = *(v22 + 8);
      v28(v20, v23);
      v29 = sub_10000D01C(v25, v27, &v35);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully retrieved account info: %s", v24, 0xCu);
      sub_100004984(v34);
    }

    else
    {
      v30 = v0[344];
      v31 = v0[343];

      v28 = *(v30 + 8);
      v28(v20, v31);
    }

    v0[358] = v28;
    v32 = swift_task_alloc();
    v0[359] = v32;
    *v32 = v0;
    v32[1] = sub_1001F1858;
    v33 = v0[348];

    return sub_1001E0BE8(v33);
  }
}

uint64_t sub_1001F1858()
{
  *(*v1 + 2880) = v0;

  if (v0)
  {
    v2 = sub_1001F2EF8;
  }

  else
  {
    v2 = sub_1001F196C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F196C(uint64_t a1)
{
  if (*(v1 + 2961))
  {
    v2 = *(v1 + 2616);
    swift_storeEnumTagMultiPayload();

    return _swift_task_switch(sub_1001F2AF0, v2, 0);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "First launch Daemon, need to InitClient", v5, 2u);
    }

    v6 = *(v1 + 2848);
    v7 = *(v1 + 2784);
    v8 = *(v1 + 2768);
    v16 = *(v1 + 2760);
    v17 = *(v1 + 2864);
    v9 = *(v1 + 2752);
    v10 = *(v1 + 2744);

    v6(v8, v7, v10);
    sub_10006DF9C();
    v11 = URLComponents.path.modify();
    v12._countAndFlagsBits = 0x65696C4374696E69;
    v12._object = 0xEA0000000000746ELL;
    String.append(_:)(v12);
    v11(v1 + 2536, 0);
    *(v1 + 2888) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v8, v10);
    v6(v16, v7, v10);
    v13 = swift_task_alloc();
    *(v1 + 2896) = v13;
    *v13 = v1;
    v13[1] = sub_1001F1BCC;
    v14 = *(v1 + 2760);

    return sub_10015B80C(v14);
  }
}

uint64_t sub_1001F1BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[363] = a1;
  v5[364] = a2;
  v5[365] = a3;
  v5[366] = v3;

  if (v3)
  {
    v6 = sub_1001F1FE4;
  }

  else
  {
    v6 = sub_1001F1CEC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001F1CEC()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[363];
  v4 = v0[341];
  v0[305] = v0[340];
  v0[306] = sub_1001E6D00(&qword_1005B0320, type metadata accessor for InitEndpoint, &unk_1004C8AA4);
  v5 = sub_10000331C(v0 + 302);
  sub_10020AABC(v4, v5, type metadata accessor for InitEndpoint);
  v0[310] = &type metadata for InitClientRequest;
  v0[311] = sub_10015CCD4();
  v0[307] = v3;
  v0[308] = v2;
  v0[309] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[315] = type metadata accessor for BasicCredential();
  v0[316] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 312);
  BasicCredential.init(username:password:)();
  v6 = swift_task_alloc();
  v0[367] = v6;
  *v6 = v0;
  v6[1] = sub_1001F1EA0;

  return sub_1001D7B78((v0 + 102), (v0 + 302), (v0 + 307), (v0 + 312));
}

uint64_t sub_1001F1EA0()
{
  v2 = *v1;
  *(*v1 + 2944) = v0;

  sub_100002CE0(v2 + 2496, &qword_1005A9138, &qword_1004C2600);
  if (v0)
  {
    v3 = sub_1001F303C;
  }

  else
  {
    sub_100004984((v2 + 2456));
    sub_100004984((v2 + 2416));
    v3 = sub_1001F213C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F1FE4()
{
  v1 = v0[358];
  v2 = v0[348];
  v3 = v0[343];
  v4 = v0[341];

  sub_10020A58C(v4, type metadata accessor for InitEndpoint);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001F213C()
{
  v13 = v0;
  sub_10006DAC8(v0 + 816, v0 + 1616);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  sub_10005D06C(v0 + 816);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    v5 = sub_100176040();
    v7 = v6;
    sub_10005D06C(v0 + 816);
    v8 = sub_10000D01C(v5, v7, &v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received init client response: %s", v3, 0xCu);
    sub_100004984(v4);
  }

  else
  {

    sub_10005D06C(v0 + 816);
  }

  if (qword_1005A80D8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 2616);
  v10 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10000A6F0(v10, qword_1005AFAA8);
  *(v0 + 2960) = 1;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  swift_storeEnumTagMultiPayload();

  return _swift_task_switch(sub_1001F2358, v9, 0);
}

uint64_t sub_1001F2358()
{
  v1 = *(v0 + 2712);
  sub_100241560(v1);
  sub_10020A58C(v1, type metadata accessor for DataManager.State);

  return _swift_task_switch(sub_1001F23E4, 0, 0);
}

uint64_t sub_1001F23E4()
{
  static Date.trustedNow.getter(v0[337]);
  if (qword_1005A80D0 != -1)
  {
    swift_once();
  }

  v1 = v0[335];
  v2 = v0[334];
  v3 = v0[333];
  v4 = v0[332];
  v5 = v0[331];
  v6 = v0[330];
  v7 = sub_10000A6F0(v6, qword_1005AFA90);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  ManagedDefault.wrappedValue.getter();
  (*(v5 + 8))(v4, v6);
  v8 = *(v1 + 48);
  if (v8(v3, 1, v2) == 1)
  {
    v9 = v0[334];
    v10 = v0[333];
    static Date.distantPast.getter();
    if (v8(v10, 1, v9) != 1)
    {
      sub_100002CE0(v0[333], &unk_1005AE5B0, &qword_1004C32F0);
    }
  }

  else
  {
    (*(v0[335] + 32))(v0[336], v0[333], v0[334]);
  }

  v11 = v0[337];
  v12 = v0[336];
  v13 = v0[335];
  v14 = v0[334];
  Date.timeIntervalSince(_:)();
  v16 = v15;
  v17 = *(v13 + 8);
  v17(v12, v14);
  v17(v11, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  if (v16 <= 5.0)
  {
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 134349312;
      *(v24 + 4) = v16;
      *(v24 + 12) = 2050;
      *(v24 + 14) = 0x4014000000000000;
      _os_log_impl(&_mh_execute_header, v18, v19, "Time since last refreshClient : %{public}f. Threshold: %{public}f. Not sending.", v24, 0x16u);
    }

    v25 = v0[365];
    v26 = v0[364];
    v27 = v0[358];
    v28 = v0[348];
    v29 = v0[343];
    v30 = v0[341];

    sub_10001A794(v26, v25);
    sub_10020A58C(v30, type metadata accessor for InitEndpoint);
    v27(v28, v29);

    v31 = v0[1];

    return v31();
  }

  else
  {
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "Send refreshClient during InitClient: %{public}f for future friends data", v21, 0xCu);
    }

    v22 = swift_task_alloc();
    v0[369] = v22;
    *v22 = v0;
    v22[1] = sub_1001F286C;

    return sub_1001E17C0((v0 + 2));
  }
}

uint64_t sub_1001F286C()
{
  v1 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_1001F2980, 0, 0);
}

uint64_t sub_1001F2980()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[358];
  v4 = v0[348];
  v5 = v0[343];
  v6 = v0[341];

  sub_10001A794(v2, v1);
  sub_10020A58C(v6, type metadata accessor for InitEndpoint);
  v3(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001F2AF0()
{
  v1 = *(v0 + 2712);
  sub_100241560(v1);
  sub_10020A58C(v1, type metadata accessor for DataManager.State);

  return _swift_task_switch(sub_1001F2B7C, 0, 0);
}

uint64_t sub_1001F2B7C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Daemon has already initialized, no need to InitClient", v4, 2u);
  }

  v5 = *(v1 + 2864);
  v6 = *(v1 + 2784);
  v7 = *(v1 + 2744);
  v8 = *(v1 + 2632);
  v13 = *(v1 + 2616);

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v13;

  sub_1001D7F30(0, 0, v8, &unk_1004D1928, v10);

  v5(v6, v7);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_1001F2DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F2EF8()
{
  v1 = v0[358];
  v2 = v0[348];
  v3 = v0[343];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001F303C()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[358];
  v4 = v0[348];
  v5 = v0[343];
  v6 = v0[341];

  sub_10001A794(v2, v1);
  sub_10020A58C(v6, type metadata accessor for InitEndpoint);
  v3(v4, v5);
  sub_100004984(v0 + 307);
  sub_100004984(v0 + 302);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001F31E4()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "check if settings From Storage is nil", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1001F3330;

  return sub_1001E31FC();
}

uint64_t sub_1001F3330()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001F3444()
{
  v9 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x65696C4374696E69, 0xEC0000002928746ELL, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Checking if settings from DB is nil", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10020C1A0;

  return sub_1001E31FC();
}

uint64_t sub_1001F35F4(uint64_t a1, char a2)
{
  *(v3 + 8840) = v2;
  *(v3 + 9192) = a2;
  *(v3 + 8792) = a1;
  v4 = type metadata accessor for Device();
  *(v3 + 8888) = v4;
  *(v3 + 8936) = *(v4 - 8);
  *(v3 + 8984) = swift_task_alloc();
  *(v3 + 9032) = type metadata accessor for DataManager.State(0);
  *(v3 + 9080) = swift_task_alloc();
  v5 = type metadata accessor for Response();
  *(v3 + 9088) = v5;
  *(v3 + 9096) = *(v5 - 8);
  *(v3 + 9104) = swift_task_alloc();

  return _swift_task_switch(sub_1001F374C, v2, 0);
}

uint64_t sub_1001F374C()
{
  v145 = v0;
  v1 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v2 = v0[1138];
  v3 = v0[1137];
  v4 = v0[1136];
  v5 = v1[1099];
  v135 = type metadata accessor for Logger();
  sub_10000A6F0(v135, qword_1005DFC28);
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[1138];
  v10 = v1[1137];
  v11 = v1[1136];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v144[0] = v13;
    *v12 = 136315138;
    sub_1001E6D00(&qword_1005A9F08, &type metadata accessor for Response, &protocol conformance descriptor for Response);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, v144);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "response dict: %s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v18 = Response.body.getter();
  v20 = v19;
  sub_1001FD71C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v134 = (v1 + 1017);
  sub_1000049D0(v18, v20);

  v133 = (v1 + 327);
  memcpy(v1 + 327, v1 + 427, 0x320uLL);
  v21 = v1[339];
  if (*(v21 + 16))
  {
    v22 = v1[1135];
    swift_storeEnumTagMultiPayload();
    sub_100241560(v22);
    sub_10020A58C(v22, type metadata accessor for DataManager.State);
  }

  v131 = v1 + 867;
  v132 = v1 + 963;
  v23 = v1 + 1063;
  v1[1139] = sub_100171168();
  v24 = *(v1 + 331);
  v25 = *(v1 + 333);
  v26 = (v1 + 1017);
  *(v1 + 1021) = v24;
  *(v1 + 1023) = v25;
  v27 = *(v1 + 335);
  v28 = *(v1 + 337);
  *(v1 + 1025) = v27;
  *(v1 + 1027) = v28;
  v29 = *v133;
  v30 = *(v1 + 329);
  *v134 = *v133;
  *(v1 + 1019) = v30;
  *(v1 + 1029) = v29;
  *(v1 + 1031) = v30;
  *(v1 + 1033) = v24;
  *(v1 + 1035) = v25;
  *(v1 + 1037) = v27;
  *(v1 + 1039) = v28;
  v31 = *(v21 + 16);
  if (v31)
  {
    v130 = v1 + 1063;
    v32 = v1[1117];
    sub_100032B38(v134, (v1 + 1005));
    v144[0] = _swiftEmptyArrayStorage;
    sub_1002395B4(0, v31, 0);
    v33 = v144[0];
    v34 = v1[1028];
    v136 = v1[1019];
    v137 = v1[1027];
    v35 = v1[1020];
    v36 = v1[1017];
    v139 = v36;
    v37 = v1;
    v38 = v21 + 80;
    v142 = v37;
    v39 = v37[1018];
    v140 = v35;
    v141 = v34;
    v138 = v39;
    while (1)
    {
      v40 = *(v38 - 40);
      v41 = *(v38 - 32);
      if (v34)
      {
        if (v40 == v137 && v34 == v41)
        {
          v143 = v33;
          if (!v35)
          {
LABEL_25:
            if (v39)
            {
              goto LABEL_26;
            }

            goto LABEL_32;
          }
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          v143 = v33;
          if (!v35)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v143 = v33;
        if (!v35)
        {
          goto LABEL_25;
        }
      }

      if (v40 == v136 && v35 == v41)
      {
        if (v39)
        {
LABEL_26:
          if (v40 != v36 || v39 != v41)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }
      }

      else
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
        if (v39)
        {
          goto LABEL_26;
        }
      }

LABEL_32:

      Device.init(identifier:deviceName:idsDeviceId:isActive:isThisDevice:isCompanion:isAutoMeCapable:)();
      v33 = v143;
      v144[0] = v143;
      v46 = *(v143 + 16);
      v45 = *(v143 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1002395B4((v45 > 1), v46 + 1, 1);
        v33 = v144[0];
      }

      v47 = v142[1123];
      v48 = v142[1111];
      v33[2] = v46 + 1;
      (*(v32 + 32))(v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v46, v47, v48);
      v38 += 56;
      --v31;
      v35 = v140;
      v34 = v141;
      v36 = v139;
      v39 = v138;
      if (!v31)
      {
        v1 = v142;
        v23 = v130;
        v26 = v134;
        goto LABEL_37;
      }
    }
  }

  sub_100032B38(v134, (v1 + 981));
  v33 = _swiftEmptyArrayStorage;
LABEL_37:
  v1[1140] = v33;

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v144[0] = v52;
    *v51 = 136315138;
    v53 = Array.description.getter();
    v55 = v33;
    v56 = sub_10000D01C(v53, v54, v144);

    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "Devices: %s", v51, 0xCu);
    sub_100004984(v52);
    v26 = v134;
  }

  else
  {

    v55 = v33;
  }

  v57 = v131;
  v58 = v1[1105];
  v59 = *(v1 + 9192);
  v60 = swift_task_alloc();
  v1[1141] = v60;
  *(v60 + 16) = v58;
  *(v60 + 24) = v133;
  swift_asyncLet_begin();
  v61 = swift_task_alloc();
  v1[1142] = v61;
  *(v61 + 16) = v58;
  *(v61 + 24) = v55;
  swift_asyncLet_begin();
  v62 = swift_task_alloc();
  v1[1143] = v62;
  *(v62 + 16) = v58;
  *(v62 + 24) = v133;
  *(v62 + 32) = v59;
  sub_10004B564(&qword_1005B0060, &qword_1004D15E8);
  swift_asyncLet_begin();
  v63 = *(v1 + 377);
  v131[6] = *(v1 + 375);
  v131[7] = v63;
  v64 = *(v1 + 381);
  v131[8] = *(v1 + 379);
  v131[9] = v64;
  v65 = *(v1 + 369);
  v131[2] = *(v1 + 367);
  v131[3] = v65;
  v66 = *(v1 + 373);
  v131[4] = *(v1 + 371);
  v131[5] = v66;
  v67 = *(v1 + 365);
  *v131 = *(v1 + 363);
  v131[1] = v67;
  v68 = *(v1 + 397);
  v132[6] = *(v1 + 395);
  v132[7] = v68;
  v132[8] = *(v1 + 399);
  v69 = *(v1 + 389);
  v132[2] = *(v1 + 387);
  v132[3] = v69;
  v70 = *(v1 + 393);
  v132[4] = *(v1 + 391);
  v132[5] = v70;
  v71 = *(v1 + 385);
  *v132 = *(v1 + 383);
  v132[1] = v71;
  v72 = *(v1 + 171);
  v73 = *(v1 + 173);
  v23[2] = *(v1 + 172);
  v23[3] = v73;
  v23[4] = *(v1 + 174);
  *v23 = *(v1 + 170);
  v23[1] = v72;
  sub_100032B38(v26, (v1 + 993));
  sub_100005F04(v131, (v1 + 907), &qword_1005A9328, &unk_1004C7F20);
  sub_100005F04(v23, (v1 + 1083), &qword_1005AD7A8, &qword_1004CA280);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  sub_100032B08(v26);
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v144[0] = v77;
    *v76 = 136315138;
    sub_100032B38(v26, (v1 + 1041));
    v78 = sub_100032B70();
    v80 = v79;
    sub_100032B08(v26);
    v81 = sub_10000D01C(v78, v80, v144);
    v57 = v131;

    *(v76 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v74, v75, "myInfo: %s", v76, 0xCu);
    sub_100004984(v77);
  }

  sub_100005F04(v57, (v1 + 887), &qword_1005A9328, &unk_1004C7F20);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  sub_100002CE0(v57, &qword_1005A9328, &unk_1004C7F20);
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v144[0] = v85;
    *v84 = 136315138;
    v86 = v57[7];
    *(v1 + 839) = v57[6];
    *(v1 + 841) = v86;
    v87 = v57[9];
    *(v1 + 843) = v57[8];
    *(v1 + 845) = v87;
    v88 = v57[3];
    *(v1 + 831) = v57[2];
    *(v1 + 833) = v88;
    v89 = v57[5];
    *(v1 + 835) = v57[4];
    *(v1 + 837) = v89;
    v90 = v57[1];
    *(v1 + 827) = *v57;
    *(v1 + 829) = v90;
    if (sub_10002D650((v1 + 827)) == 1)
    {
      v91 = 0;
      v92 = 0xE000000000000000;
    }

    else
    {
      v93 = *(v1 + 841);
      *(v1 + 859) = *(v1 + 839);
      *(v1 + 861) = v93;
      v94 = *(v1 + 845);
      *(v1 + 863) = *(v1 + 843);
      *(v1 + 865) = v94;
      v95 = *(v1 + 833);
      *(v1 + 851) = *(v1 + 831);
      *(v1 + 853) = v95;
      v96 = *(v1 + 837);
      *(v1 + 855) = *(v1 + 835);
      *(v1 + 857) = v96;
      v97 = *(v1 + 829);
      *(v1 + 847) = *(v1 + 827);
      *(v1 + 849) = v97;
      v91 = sub_10017F8CC();
      v92 = v98;
    }

    v99 = sub_10000D01C(v91, v92, v144);

    *(v84 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v82, v83, "serverContext: %s", v84, 0xCu);
    sub_100004984(v85);
  }

  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v144[0] = v103;
    *v102 = 136315138;
    v104 = v132[7];
    *(v1 + 957) = v132[6];
    *(v1 + 959) = v104;
    *(v1 + 961) = v132[8];
    v105 = v132[3];
    *(v1 + 949) = v132[2];
    *(v1 + 951) = v105;
    v106 = v132[5];
    *(v1 + 953) = v132[4];
    *(v1 + 955) = v106;
    v107 = v132[1];
    *(v1 + 945) = *v132;
    *(v1 + 947) = v107;
    if (sub_10005A3B0((v1 + 945)) == 1)
    {
      v108 = 0;
      v109 = 0xE000000000000000;
    }

    else
    {
      v110 = *(v1 + 959);
      *(v1 + 939) = *(v1 + 957);
      *(v1 + 941) = v110;
      *(v1 + 943) = *(v1 + 961);
      v111 = *(v1 + 951);
      *(v1 + 931) = *(v1 + 949);
      *(v1 + 933) = v111;
      v112 = *(v1 + 955);
      *(v1 + 935) = *(v1 + 953);
      *(v1 + 937) = v112;
      v113 = *(v1 + 947);
      *(v1 + 927) = *(v1 + 945);
      *(v1 + 929) = v113;
      v108 = sub_100033CAC();
      v109 = v114;
    }

    v115 = sub_10000D01C(v108, v109, v144);

    *(v102 + 4) = v115;
    _os_log_impl(&_mh_execute_header, v100, v101, "serverConfig: %s", v102, 0xCu);
    sub_100004984(v103);
  }

  v116 = v135;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
    v116 = v135;
  }

  v1[1144] = sub_10000A6F0(v116, qword_1005DFF18);
  sub_100005F04(v23, (v1 + 1053), &qword_1005AD7A8, &qword_1004CA280);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.default.getter();
  sub_100002CE0(v23, &qword_1005AD7A8, &qword_1004CA280);
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v144[0] = v120;
    *v119 = 136315138;
    v121 = v1[1068];
    if (v121)
    {
      v122 = v23[1];
      *(v1 + 1073) = *v23;
      *(v1 + 1075) = v122;
      v1[1077] = *(v23 + 4);
      v1[1078] = v121;
      v123 = *(v1 + 1071);
      *(v1 + 1079) = *(v1 + 1069);
      *(v1 + 1081) = v123;
      v124 = sub_100172CC0();
      v126 = v125;
    }

    else
    {
      v124 = 0;
      v126 = 0xE000000000000000;
    }

    v127 = sub_10000D01C(v124, v126, v144);

    *(v119 + 4) = v127;
    _os_log_impl(&_mh_execute_header, v117, v118, "serverPreferences: %s", v119, 0xCu);
    sub_100004984(v120);
  }

  v128 = swift_task_alloc();
  v1[1145] = v128;
  *v128 = v1;
  v128[1] = sub_1001F460C;

  return sub_100245BB8((v1 + 587));
}

uint64_t sub_1001F460C()
{
  v1 = *(*v0 + 8840);

  return _swift_task_switch(sub_1001F471C, v1, 0);
}

uint64_t sub_1001F471C()
{
  v31 = v0;
  v29 = (v0 + 4216);
  sub_100005F04(v0 + 4696, v0 + 6136, &qword_1005A90D8, &unk_1004C6AB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  sub_100002CE0(v0 + 4696, &qword_1005A90D8, &unk_1004C6AB0);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v3 = 136446723;
    *(v3 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E5220, &v30);
    *(v3 + 12) = 2160;
    *(v3 + 14) = 1752392040;
    *(v3 + 22) = 2081;
    memcpy((v0 + 5176), (v0 + 4696), 0x1E0uLL);
    sub_10004B564(&qword_1005A90D8, &unk_1004C6AB0);
    v4 = String.init<A>(describing:)();
    v6 = sub_10000D01C(v4, v5, &v30);

    *(v3 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s, cached settings: %{private,mask.hash}s", v3, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100002CE0(v0 + 4696, &qword_1005A90D8, &unk_1004C6AB0);
  }

  v7 = *(v0 + 9112);
  v8 = *(v0 + 8840);
  v9 = *(v0 + 8184);
  *(v0 + 5688) = *(v0 + 8168);
  *(v0 + 5704) = v9;
  v10 = *(v0 + 8216);
  *(v0 + 5720) = *(v0 + 8200);
  *(v0 + 5736) = v10;
  v11 = *(v0 + 8152);
  *(v0 + 5656) = *(v0 + 8136);
  *(v0 + 5672) = v11;
  v12 = *(v0 + 6952);
  *(v0 + 5752) = *(v0 + 6936);
  *(v0 + 5768) = v12;
  v13 = *(v0 + 6968);
  v14 = *(v0 + 6984);
  v15 = *(v0 + 7016);
  *(v0 + 5816) = *(v0 + 7000);
  *(v0 + 5832) = v15;
  *(v0 + 5784) = v13;
  *(v0 + 5800) = v14;
  v16 = *(v0 + 7032);
  v17 = *(v0 + 7048);
  v18 = *(v0 + 7080);
  *(v0 + 5880) = *(v0 + 7064);
  *(v0 + 5896) = v18;
  *(v0 + 5848) = v16;
  *(v0 + 5864) = v17;
  v19 = *(v0 + 7816);
  *(v0 + 6008) = *(v0 + 7800);
  *(v0 + 6024) = v19;
  *(v0 + 6040) = *(v0 + 7832);
  v20 = *(v0 + 7752);
  *(v0 + 5944) = *(v0 + 7736);
  *(v0 + 5960) = v20;
  v21 = *(v0 + 7784);
  *(v0 + 5976) = *(v0 + 7768);
  *(v0 + 5992) = v21;
  v22 = *(v0 + 7720);
  *(v0 + 5912) = *(v0 + 7704);
  *(v0 + 5928) = v22;
  v23 = *(v0 + 8552);
  *(v0 + 6088) = *(v0 + 8536);
  *(v0 + 6104) = v23;
  *(v0 + 6120) = *(v0 + 8568);
  v24 = *(v0 + 8520);
  *(v0 + 6056) = *(v0 + 8504);
  *(v0 + 6072) = v24;
  memcpy(v29, (v0 + 5656), 0x1E0uLL);
  v25 = swift_task_alloc();
  *(v0 + 9168) = v25;
  *(v25 + 16) = v8;
  *(v25 + 24) = v29;
  swift_asyncLet_begin();
  if (v7)
  {
    v26 = *(v0 + 9112);
    v27 = swift_task_alloc();
    *(v0 + 9176) = v27;
    *v27 = v0;
    v27[1] = sub_1001F4AFC;

    return sub_100211D04(v26);
  }

  else
  {

    return _swift_asyncLet_get(v0 + 1296);
  }
}

uint64_t sub_1001F4AFC()
{
  v1 = *v0;

  return _swift_asyncLet_get(v1 + 1296);
}

uint64_t sub_1001F4C3C()
{
  *(v0 + 9184) = *(v0 + 8744);

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_1001F4D08()
{
  sub_1001B5478(v0 + 5656);

  return _swift_asyncLet_finish(v0 + 1936, v0 + 8744, sub_1001F4D94, v0 + 8944);
}

uint64_t sub_1001F4DEC()
{

  return _swift_asyncLet_finish(v0 + 656, v1, sub_1001F4E58, v0 + 9040);
}

uint64_t sub_1001F4E74()
{
  sub_10005D06C(v0 + 2616);

  v1 = *(v0 + 8);
  v2 = *(v0 + 9184);

  return v1(v2);
}

uint64_t sub_1001F4F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1001F4F54, 0, 0);
}

uint64_t sub_1001F4F54()
{
  v1 = *(v0[3] + 272);
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1001F5014;

  return sub_1001F5138(v2);
}

uint64_t sub_1001F5014()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001F5138(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_10004B564(&qword_1005AC640, &qword_1004C6EE0);
  v2[13] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for Location();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v6 = type metadata accessor for ServerLocation(0);
  v2[35] = v6;
  v2[36] = *(v6 - 8);
  v2[37] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v2[38] = v7;
  v2[39] = *(v7 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1001F54D0, v1, 0);
}

uint64_t sub_1001F54D0()
{
  v20 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[47] = sub_10000A6F0(v1, qword_1005DFF18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    *(v6 + 14) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E5250, &v19);
    *(v6 + 22) = 2048;
    *(v6 + 24) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "%{private,mask.hash}s legacy locations count: %ld.", v6, 0x20u);
    sub_100004984(v7);
  }

  else
  {
  }

  v8 = *(v0[11] + 16);
  v0[48] = v8;
  if (v8)
  {
    sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
    v9 = type metadata accessor for HandleType();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    v0[49] = v12;
    *(v12 + 16) = xmmword_1004C1900;
    (*(v10 + 104))(v12 + v11, enum case for HandleType.following(_:), v9);
    v13 = swift_task_alloc();
    v0[50] = v13;
    *v13 = v0;
    v13[1] = sub_1001F596C;

    return sub_10001C61C(v12, 0);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No legacy location return from server, should not process.", v17, 2u);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1001F596C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_1001F5AA0, v2, 0);
}

void sub_1001F5AA0()
{
  v194 = v0;
  v1 = v0[51];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[39];
    v189 = (v4 + 32);
    v5 = _swiftEmptyArrayStorage;
    v187 = *(v1 + 16);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      (*(v4 + 16))(v0[46], v0[51] + v6 + v7 * v3, v0[38]);
      if (Friend.isLegacyLocationCapable.getter())
      {
        v8 = v1;
        v9 = *v189;
        (*v189)(v0[45], v0[46], v0[38]);
        v193[0] = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v5[2] + 1, 1);
          v5 = v193[0];
        }

        v11 = v5[2];
        v10 = v5[3];
        v12 = v5;
        if (v11 >= v10 >> 1)
        {
          sub_100239354((v10 > 1), v11 + 1, 1);
          v12 = v193[0];
        }

        v13 = v0[45];
        v14 = v0[38];
        *(v12 + 16) = v11 + 1;
        v9(v12 + v6 + v11 * v7, v13, v14);
        v5 = v12;
        v1 = v8;
        v2 = v187;
      }

      else
      {
        (*(v4 + 8))(v0[46], v0[38]);
      }

      ++v3;
    }

    while (v2 != v3);
    v183 = v5;
  }

  else
  {
    v183 = _swiftEmptyArrayStorage;
  }

  v15 = v0[39];
  v16 = v0[36];
  v185 = v0[37];
  v179 = v0[35];
  v17 = v0[31];
  v18 = v0[23];
  v19 = v0[16];
  v20 = v0[11];
  v21 = v0[12];

  v182 = v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v176 = OBJC_IVAR____TtC13findmylocated11DataManager_legacyLocationsForHandles;
  v177 = v21;
  swift_beginAccess();
  v22 = 0;
  v180 = v15;
  v181 = *(v16 + 72);
  v188 = (v17 + 8);
  v186 = (v15 + 8);
  v178 = (v15 + 32);
  v173 = (v18 + 16);
  v174 = (v18 + 32);
  v175 = (v18 + 8);
  v171 = (v19 + 48);
  v172 = (v19 + 8);
  v162 = v18;
  v163 = (v19 + 32);
  v157 = (v19 + 16);
  v170 = (v18 + 56);
  while (2)
  {
    v184 = v22;
    sub_10020AABC(v182 + v22 * v181, v0[37], type metadata accessor for ServerLocation);
    v25 = v183[2];
    if (!v25)
    {
      goto LABEL_16;
    }

    v26 = v183 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
    v27 = *(v180 + 72);
    v190 = *(v180 + 16);
    while (1)
    {
      v28 = v0[37];
      v29 = v0[34];
      v30 = v0[30];
      v190(v0[42], v26, v0[38]);
      Friend.handle.getter();
      v31 = Handle.serverID.getter();
      v33 = v32;
      v34 = *v188;
      (*v188)(v29, v30);
      if (!v33)
      {
        goto LABEL_19;
      }

      if (v31 == *v28 && v33 == *(v185 + 8))
      {
        break;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_28;
      }

LABEL_19:
      (*v186)(v0[42], v0[38]);
      v26 += v27;
      if (!--v25)
      {
        goto LABEL_16;
      }
    }

LABEL_28:
    v38 = v0[43];
    v37 = v0[44];
    v39 = v0[37];
    v40 = v0[38];
    v41 = v0[21];
    v42 = *v178;
    (*v178)(v38, v0[42], v40);
    v42(v37, v38, v40);
    sub_100005F04(v39 + *(v179 + 20), v41, &qword_1005A92D0, &qword_1004C2890);
    v43 = type metadata accessor for LegacyLocation(0);
    if ((*(*(v43 - 8) + 48))(v41, 1, v43) == 1)
    {
      v23 = v0[21];
      (*v186)(v0[44], v0[38]);
      sub_100002CE0(v23, &qword_1005A92D0, &qword_1004C2890);
      goto LABEL_16;
    }

    v45 = v0[28];
    v44 = v0[29];
    v46 = v0[21];
    v47 = v0[22];
    sub_10016DAF0(v45);
    sub_10020A58C(v46, type metadata accessor for LegacyLocation);
    (*v174)(v44, v45, v47);
    Friend.handle.getter();
    v48 = *(v177 + v176);
    if (!*(v48 + 16))
    {
      goto LABEL_35;
    }

    v49 = v0[33];

    v50 = sub_1001FD93C(v49);
    if ((v51 & 1) == 0)
    {

LABEL_35:
      v34(v0[33], v0[30]);
LABEL_36:
      v84 = v0[14];
      v83 = v0[15];
      Friend.createdAt.getter();
      if ((*v171)(v84, 1, v83) == 1)
      {
        sub_100002CE0(v0[14], &unk_1005AE5B0, &qword_1004C32F0);
      }

      else
      {
        v86 = v0[19];
        v85 = v0[20];
        v87 = v0[15];
        (*v163)(v0[18], v0[14], v87);
        Location.date.getter();
        Date.addingTimeInterval(_:)();
        v88 = *v172;
        (*v172)(v86, v87);
        v89 = static Date.< infix(_:_:)();
        v88(v85, v87);
        if (v89)
        {
          v169 = v88;
          v166 = v0[29];
          v90 = v0[24];
          v91 = v0[22];
          v92 = v0[17];
          v93 = v0[18];
          v94 = v0[15];
          v190(v0[40], v0[44], v0[38]);
          (*v157)(v92, v93, v94);
          (*v173)(v90, v166, v91);
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();
          v97 = os_log_type_enabled(v95, v96);
          v167 = v0[44];
          v98 = v0[40];
          v192 = v0[38];
          if (v97)
          {
            v99 = v0[32];
            v100 = v0[30];
            v160 = v0[29];
            *typea = v0[22];
            v145 = v0[20];
            v147 = v0[24];
            v155 = v0[18];
            v143 = v0[17];
            v151 = v96;
            v101 = v0[15];
            v102 = swift_slowAlloc();
            v193[0] = swift_slowAlloc();
            *v102 = 141559299;
            *(v102 + 4) = 1752392040;
            *(v102 + 12) = 2081;
            v148 = v95;
            Friend.handle.getter();
            v103 = Handle.identifier.getter();
            v105 = v104;
            v34(v99, v100);
            v153 = *v186;
            (*v186)(v98, v192);
            v106 = sub_10000D01C(v103, v105, v193);

            *(v102 + 14) = v106;
            *(v102 + 22) = 2160;
            *(v102 + 24) = 1752392040;
            *(v102 + 32) = 2081;
            v107 = Date.localISO8601.getter();
            v109 = v108;
            v169(v143, v101);
            v110 = sub_10000D01C(v107, v109, v193);

            *(v102 + 34) = v110;
            *(v102 + 42) = 2160;
            *(v102 + 44) = 1752392040;
            *(v102 + 52) = 2081;
            Location.date.getter();
            v111 = Date.localISO8601.getter();
            v113 = v112;
            v114 = v101;
            v169(v145, v101);
            v115 = *v175;
            (*v175)(v147, *typea);
            v116 = sub_10000D01C(v111, v113, v193);

            *(v102 + 54) = v116;
            _os_log_impl(&_mh_execute_header, v148, v151, "Drop older legacy location for handle: %{private,mask.hash}s\ncreateAt: %{private,mask.hash}s\nlocation timestamp: %{private,mask.hash}s", v102, 0x3Eu);
            swift_arrayDestroy();

            v169(v155, v114);
            v115(v160, *typea);
            v81 = v167;
            v82 = v192;
LABEL_41:
            v153(v81, v82);
          }

          else
          {
            v161 = v0[29];
            v123 = v0[24];
            v124 = v0[22];
            v125 = v0[17];
            v156 = v0[18];
            v126 = v0[15];

            v127 = *v175;
            (*v175)(v123, v124);
            v169(v125, v126);
            v128 = *v186;
            (*v186)(v98, v192);
            v169(v156, v126);
            v127(v161, v124);
            v128(v167, v192);
          }

          goto LABEL_16;
        }

        v88(v0[18], v0[15]);
      }

      v117 = v0[44];
      v118 = v0[38];
      v119 = v0[32];
      v120 = v0[29];
      v121 = v0[22];
      v122 = v0[13];
      Friend.handle.getter();
      (*v173)(v122, v120, v121);
      (*v170)(v122, 0, 1, v121);
      swift_beginAccess();
      sub_100145824(v122, v119);
      swift_endAccess();
      (*v175)(v120, v121);
      (*v186)(v117, v118);
      goto LABEL_16;
    }

    v52 = v0[33];
    v164 = v0[30];
    v53 = v0[19];
    v54 = v0[20];
    v55 = v0[15];
    v158 = *(v162 + 16);
    v158(v0[27], *(v48 + 56) + *(v162 + 72) * v50, v0[22]);
    v34(v52, v164);

    Location.date.getter();
    Location.date.getter();
    LOBYTE(v52) = static Date.< infix(_:_:)();
    v56 = *v172;
    (*v172)(v53, v55);
    v56(v54, v55);
    if ((v52 & 1) == 0)
    {
      (*v175)(v0[27], v0[22]);
      goto LABEL_36;
    }

    v165 = v56;
    v57 = v0[29];
    v59 = v0[26];
    v58 = v0[27];
    v60 = v0[25];
    v61 = v0[22];
    v190(v0[41], v0[44], v0[38]);
    v158(v59, v57, v61);
    v158(v60, v58, v61);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    v64 = os_log_type_enabled(v62, v63);
    v191 = v0[44];
    v65 = v0[41];
    v66 = v0[38];
    if (v64)
    {
      v67 = v0[32];
      v159 = v0[29];
      v152 = v0[30];
      v154 = v0[27];
      v146 = v0[25];
      v142 = v0[26];
      v144 = v0[22];
      v141 = v0[20];
      v168 = v0[15];
      v68 = swift_slowAlloc();
      v193[0] = swift_slowAlloc();
      *v68 = 141559299;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2081;
      type = v63;
      Friend.handle.getter();
      v69 = Handle.identifier.getter();
      v71 = v70;
      v34(v67, v152);
      v153 = *v186;
      (*v186)(v65, v66);
      v72 = sub_10000D01C(v69, v71, v193);

      *(v68 + 14) = v72;
      *(v68 + 22) = 2160;
      *(v68 + 24) = 1752392040;
      *(v68 + 32) = 2081;
      Location.date.getter();
      v73 = Date.localISO8601.getter();
      v75 = v74;
      v165(v141, v168);
      v140 = *v175;
      (*v175)(v142, v144);
      v76 = sub_10000D01C(v73, v75, v193);

      *(v68 + 34) = v76;
      *(v68 + 42) = 2160;
      *(v68 + 44) = 1752392040;
      *(v68 + 52) = 2081;
      Location.date.getter();
      v77 = Date.localISO8601.getter();
      v79 = v78;
      v165(v141, v168);
      v140(v146, v144);
      v80 = sub_10000D01C(v77, v79, v193);

      *(v68 + 54) = v80;
      _os_log_impl(&_mh_execute_header, v62, type, "Not update cached legacy location for handle: %{private,mask.hash}s\nsince new location location date: %{private,mask.hash}s\nis older cached date: %{private,mask.hash}s.", v68, 0x3Eu);
      swift_arrayDestroy();

      v140(v154, v144);
      v140(v159, v144);
      v81 = v191;
      v82 = v66;
      goto LABEL_41;
    }

    v129 = v0[29];
    v131 = v0[26];
    v130 = v0[27];
    v132 = v0[25];
    v133 = v0[22];

    v134 = *v175;
    (*v175)(v132, v133);
    v134(v131, v133);
    v135 = *v186;
    (*v186)(v65, v66);
    v134(v130, v133);
    v134(v129, v133);
    v135(v191, v66);
LABEL_16:
    v22 = v184 + 1;
    v24 = v0[48];
    sub_10020A58C(v0[37], type metadata accessor for ServerLocation);
    if (v184 + 1 != v24)
    {
      continue;
    }

    break;
  }

  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    *v138 = 134217984;
    swift_beginAccess();
    *(v138 + 4) = *(*(v177 + v176) + 16);

    _os_log_impl(&_mh_execute_header, v136, v137, "After process, current legacyLocations count: %ld.", v138, 0xCu);
  }

  else
  {
  }

  v139 = swift_task_alloc();
  v0[52] = v139;
  *v139 = v0;
  v139[1] = sub_1001F6BCC;

  sub_1001F819C();
}

uint64_t sub_1001F6BCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001F6FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003784;

  return sub_10024639C(a3);
}

uint64_t sub_1001F7054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1001F7104;

  return sub_10021E954(a3, v5);
}

uint64_t sub_1001F7104(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001F7204, 0, 0);
}

uint64_t sub_1001F7228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003784;

  return sub_100246DCC(a3);
}

uint64_t sub_1001F72C4(uint64_t a1, char a2, char a3)
{
  *(v4 + 169) = a3;
  *(v4 + 168) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = type metadata accessor for DataManager.State(0);
  *(v4 + 40) = swift_task_alloc();
  v5 = type metadata accessor for Device();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v4 + 128) = v6;
  *v6 = v4;
  v6[1] = sub_1001F7468;

  return sub_100245198();
}

uint64_t sub_1001F7468(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1001F7580, v2, 0);
}

uint64_t sub_1001F7580()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[7];
    while (v3 < *(v1 + 16))
    {
      (*(v4 + 16))(v0[8], v0[17] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[6]);
      if (Device.isActive.getter())
      {
        v6 = v0[15];
        v8 = v0[7];
        v7 = v0[8];
        v9 = v0[6];

        (*(v8 + 32))(v6, v7, v9);
        v5 = 0;
        goto LABEL_8;
      }

      ++v3;
      (*(v4 + 8))(v0[8], v0[6]);
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_6:

  v5 = 1;
LABEL_8:
  (*(v0[7] + 56))(v0[15], v5, 1, v0[6]);
  if (qword_1005A80B8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v11 = v0[14];
  v10 = v0[15];
  v12 = type metadata accessor for Logger();
  v0[18] = sub_10000A6F0(v12, qword_1005DFF18);
  sub_100005F04(v10, v11, &qword_1005AA718, &qword_1004C4370);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[14];
  if (!v15)
  {
    sub_100002CE0(v0[14], &qword_1005AA718, &qword_1004C4370);
    goto LABEL_17;
  }

  v17 = v0[13];
  v18 = v0[6];
  v19 = v0[7];
  v20 = swift_slowAlloc();
  *v20 = 67109120;
  sub_100005F04(v16, v17, &qword_1005AA718, &qword_1004C4370);
  v21 = (*(v19 + 48))(v17, 1, v18);
  v22 = v0[13];
  if (v21 == 1)
  {
    sub_100002CE0(v0[13], &qword_1005AA718, &qword_1004C4370);
LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  v23 = v0[6];
  v24 = v0[7];
  v25 = Device.isThisDevice.getter();
  (*(v24 + 8))(v22, v23);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = 1;
LABEL_16:
  sub_100002CE0(v0[14], &qword_1005AA718, &qword_1004C4370);
  *(v20 + 4) = v26;
  _os_log_impl(&_mh_execute_header, v13, v14, "Current Device meDevice? %{BOOL}d", v20, 8u);

LABEL_17:
  v27 = v0[15];
  v28 = v0[12];

  sub_100005F04(v27, v28, &qword_1005AA718, &qword_1004C4370);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[12];
  if (!v31)
  {
    sub_100002CE0(v0[12], &qword_1005AA718, &qword_1004C4370);
    goto LABEL_25;
  }

  v33 = v0[11];
  v34 = v0[6];
  v35 = v0[7];
  v36 = swift_slowAlloc();
  *v36 = 67109120;
  sub_100005F04(v32, v33, &qword_1005AA718, &qword_1004C4370);
  v37 = (*(v35 + 48))(v33, 1, v34);
  v38 = v0[11];
  if (v37 == 1)
  {
    sub_100002CE0(v0[11], &qword_1005AA718, &qword_1004C4370);
LABEL_23:
    v42 = 0;
    goto LABEL_24;
  }

  v39 = v0[6];
  v40 = v0[7];
  v41 = Device.isActive.getter();
  (*(v40 + 8))(v38, v39);
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

  v42 = 1;
LABEL_24:
  sub_100002CE0(v0[12], &qword_1005AA718, &qword_1004C4370);
  *(v36 + 4) = v42;
  _os_log_impl(&_mh_execute_header, v29, v30, "Current MeDevice isActive? %{BOOL}d", v36, 8u);

LABEL_25:
  v43 = v0[10];
  v44 = v0[6];
  v45 = v0[7];
  v46 = v0[2];

  sub_100005F04(v46, v43, &qword_1005AA718, &qword_1004C4370);
  v47 = *(v45 + 48);
  v48 = v47(v43, 1, v44);
  v49 = v0[10];
  if (v48 == 1)
  {
    sub_100002CE0(v0[10], &qword_1005AA718, &qword_1004C4370);
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v52 = v0[6];
    v53 = v0[7];
    v50 = Device.identifier.getter();
    v51 = v54;
    (*(v53 + 8))(v49, v52);
  }

  v55 = v0[9];
  v56 = v0[6];
  sub_100005F04(v0[15], v55, &qword_1005AA718, &qword_1004C4370);
  v57 = v47(v55, 1, v56);
  v58 = v0[9];
  if (v57 == 1)
  {
    sub_100002CE0(v0[9], &qword_1005AA718, &qword_1004C4370);
    if (!v51)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v59 = v0[6];
  v60 = v0[7];
  v61 = Device.identifier.getter();
  v63 = v62;
  (*(v60 + 8))(v58, v59);
  if (!v51)
  {
    if (!v63)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!v63)
  {
LABEL_38:

LABEL_39:
    v64 = v0[5];
    sub_100005F04(v0[15], v64, &qword_1005AA718, &qword_1004C4370);
    swift_storeEnumTagMultiPayload();
    sub_100241560(v64);
    sub_10020A58C(v64, type metadata accessor for DataManager.State);
    goto LABEL_40;
  }

  if (v50 == v61 && v51 == v63)
  {

    goto LABEL_40;
  }

  v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v67 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_40:
  v65 = swift_task_alloc();
  v0[19] = v65;
  *v65 = v0;
  v65[1] = sub_1001F7C48;

  return sub_1001DBB70();
}

uint64_t sub_1001F7C48(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 170) = a1;

  return _swift_task_switch(sub_1001F7D60, v2, 0);
}

uint64_t sub_1001F7D60(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 170);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Current Device locationEnabled? %{BOOL,public}d", v5, 8u);
  }

  v6 = *(v1 + 170);
  v7 = *(v1 + 168);

  if (v6 != v7)
  {
    v8 = *(v1 + 40);
    *v8 = *(v1 + 170);
    swift_storeEnumTagMultiPayload();
    sub_100241560(v8);
    sub_10020A58C(v8, type metadata accessor for DataManager.State);
  }

  v9 = swift_task_alloc();
  *(v1 + 160) = v9;
  *v9 = v1;
  v9[1] = sub_1001F7EC8;

  return sub_1001DBE84();
}

uint64_t sub_1001F7EC8(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 171) = a1;

  return _swift_task_switch(sub_1001F7FE0, v2, 0);
}

uint64_t sub_1001F7FE0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 171);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Current Device newFriendshipRequestsAllowed? %{BOOL,public}d", v5, 8u);
  }

  v6 = *(v1 + 171);
  v7 = *(v1 + 169);

  if (v6 != v7)
  {
    v8 = *(v1 + 40);
    *v8 = *(v1 + 171);
    swift_storeEnumTagMultiPayload();
    sub_100241560(v8);
    sub_10020A58C(v8, type metadata accessor for DataManager.State);
  }

  sub_100002CE0(*(v1 + 120), &qword_1005AA718, &qword_1004C4370);

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_1001F81BC(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 56) = v4;
    *v4 = v1;
    v4[1] = sub_1001F8284;

    return daemon.getter();
  }
}

uint64_t sub_1001F8284(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001E6D00(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_1001F8460;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001F8460(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = sub_1001F871C;
  }

  else
  {
    v7 = *(v4 + 48);

    *(v4 + 88) = a1;
    v6 = sub_1001F85A0;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001F85A0()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC13findmylocated11DataManager_legacyLocationsForHandles;
  swift_beginAccess();
  v0[12] = *(v2 + v3);

  return _swift_task_switch(sub_1001F863C, v1, 0);
}

uint64_t sub_1001F863C()
{
  v1 = *(v0 + 48);
  sub_1003718C0(*(v0 + 96));

  return _swift_task_switch(sub_1001F86BC, v1, 0);
}

uint64_t sub_1001F86BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F871C()
{
  v13 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5270, &v12);
    *(v6 + 12) = 2082;
    v0[5] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001F8930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 368) = a5;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 56) = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v7 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  *(v7 + 104) = v8;
  *(v7 + 112) = *(v8 - 8);
  *(v7 + 120) = swift_task_alloc();
  v9 = type metadata accessor for HandleType();
  *(v7 + 128) = v9;
  *(v7 + 136) = *(v9 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v10 = type metadata accessor for FriendshipAction();
  *(v7 + 160) = v10;
  *(v7 + 168) = *(v10 - 8);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  v11 = type metadata accessor for Friend();
  *(v7 + 192) = v11;
  *(v7 + 200) = *(v11 - 8);
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  *(v7 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_1001F8BE0, 0, 0);
}

uint64_t sub_1001F8BE0()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager: start updateData. Counter: %ld", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_1001F8D48;
  v7 = v0[30];

  return sub_1001DB14C(v7);
}

uint64_t sub_1001F8D48()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 264) = v3;
  *v3 = v2;
  v3[1] = sub_1001F8E88;

  return sub_1001DBB70();
}

uint64_t sub_1001F8E88(char a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 369) = a1;

  v3 = swift_task_alloc();
  *(v2 + 272) = v3;
  *v3 = v5;
  v3[1] = sub_1001F8FD4;

  return sub_1001DBE84();
}

uint64_t sub_1001F8FD4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v8 = *v1;
  *(v3 + 370) = a1;

  v4 = swift_task_alloc();
  *(v3 + 280) = v4;
  *v4 = v8;
  v4[1] = sub_1001F913C;
  v5 = *(v3 + 368);
  v6 = *(v2 + 72);

  return sub_1001F35F4(v6, v5);
}

uint64_t sub_1001F913C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_1001FA34C;
  }

  else
  {
    *(v4 + 296) = a1;
    v5 = sub_1001F9264;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001F9264()
{
  *(v0 + 304) = *(v0 + 296);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 56);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "DataManager: finish updateData. Counter: %ld", v4, 0xCu);
  }

  v5 = swift_task_alloc();
  *(v0 + 312) = v5;
  *v5 = v0;
  v5[1] = sub_1001F9398;
  v6 = *(v0 + 370);
  v7 = *(v0 + 369);
  v8 = *(v0 + 240);

  return sub_1001F72C4(v8, v7, v6);
}

uint64_t sub_1001F9398()
{

  return _swift_task_switch(sub_1001F9494, 0, 0);
}

uint64_t sub_1001F9494()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 16) == 0;

    _os_log_impl(&_mh_execute_header, v1, v2, "DataManager updatedFriends isEmpty: %{BOOL}d ", v5, 8u);
  }

  else
  {
  }

  v6 = *(v0[38] + 16);

  if (v6)
  {
    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = sub_1001F96CC;

    return daemon.getter();
  }

  else
  {
    sub_100002CE0(v0[30], &qword_1005AA718, &qword_1004C4370);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1001F96CC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 328) = a1;

  v3 = swift_task_alloc();
  *(v2 + 336) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001E6D00(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_1001F98A8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001F98A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {

    v4 = sub_1001FA5B4;
  }

  else
  {
    v4 = sub_1001F99EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F99EC()
{
  v1 = v0[38];
  v57 = v0[27];
  v2 = v0[17];
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v52 = enum case for FriendshipAction.remove(_:);
  v55 = v0[21];
  v65 = (v55 + 8);
  v50 = enum case for HandleType.following(_:);
  v48 = (v2 + 8);
  v49 = (v2 + 104);
  v56 = v0[25];
  v51 = (v56 + 8);
  v47 = v0[14];
  v58 = v0[38];

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v53 = v7;
  v54 = v3;
LABEL_4:
  for (i = v12; ; v12 = i)
  {
    v0[45] = v12;
    if (!v6)
    {
      break;
    }

LABEL_11:
    v18 = v0[28];
    v17 = v0[29];
    v61 = v0[24];
    v62 = v0[26];
    v63 = v0[23];
    v64 = v0[22];
    v19 = v0[20];
    v20 = __clz(__rbit64(v6)) | (v11 << 6);
    (*(v56 + 16))(v17, *(v58 + 48) + *(v56 + 72) * v20);
    (*(v55 + 16))(v17 + *(v57 + 48), *(v58 + 56) + *(v55 + 72) * v20, v19);
    sub_100005F04(v17, v18, &qword_1005AFFE0, &qword_1004D6060);
    v21 = *(v57 + 48);
    (*(v56 + 32))(v62, v18, v61);
    (*(v55 + 32))(v63, v18 + v21, v19);
    (*(v55 + 104))(v64, v52, v19);
    sub_1001E6D00(&qword_1005AFFE8, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v6 &= v6 - 1;
    v23 = *v65;
    (*v65)(v0[22], v0[20]);

    if (v22)
    {
      v25 = v0[18];
      v24 = v0[19];
      v26 = v0[16];
      Friend.type.getter();
      (*v49)(v25, v50, v26);
      v27 = static HandleType.== infix(_:_:)();
      v28 = *v48;
      (*v48)(v25, v26);
      v28(v24, v26);
      if (v27)
      {
        Friend.handle.getter();
        v29 = i;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_10000DFC0(0, i[2] + 1, 1, i, &qword_1005B0048, &qword_1004D15A0, &type metadata accessor for Handle);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v60 = sub_10000DFC0((v30 > 1), v31 + 1, 1, v29, &qword_1005B0048, &qword_1004D15A0, &type metadata accessor for Handle);
        }

        else
        {
          v60 = v29;
        }

        v32 = v0[29];
        v33 = v0[26];
        v34 = v0[24];
        v35 = v0[15];
        v36 = v0[13];
        v23(v0[23], v0[20]);
        (*v51)(v33, v34);
        sub_100002CE0(v32, &qword_1005AFFE0, &qword_1004D6060);
        v12 = v60;
        v60[2] = v31 + 1;
        v8 = (*(v47 + 32))(v60 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, v35, v36);
        v7 = v53;
        v3 = v54;
        goto LABEL_4;
      }
    }

    v13 = v0[29];
    v14 = v0[26];
    v15 = v0[24];
    v23(v0[23], v0[20]);
    (*v51)(v14, v15);
    v8 = sub_100002CE0(v13, &qword_1005AFFE0, &qword_1004D6060);
    v7 = v53;
    v3 = v54;
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return _swift_task_switch(v8, v9, v10);
    }

    if (v16 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v16);
    ++v11;
    if (v6)
    {
      v11 = v16;
      goto LABEL_11;
    }
  }

  if (v12[2])
  {
    v9 = v0[43];
    v8 = sub_1001FA118;
    v10 = 0;

    return _swift_task_switch(v8, v9, v10);
  }

  v37 = v0[38];
  v38 = v0[30];
  v40 = v0[11];
  v39 = v0[12];
  v41 = v0[10];
  v42 = v0[8];
  v43 = type metadata accessor for TaskPriority();
  (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v42;
  v44[5] = v41;
  v44[6] = v37;
  v44[7] = v40;

  sub_1001D7F30(0, 0, v39, &unk_1004D1508, v44);

  sub_100002CE0(v38, &qword_1005AA718, &qword_1004C4370);

  v45 = v0[1];

  return v45();
}

uint64_t sub_1001FA118()
{
  sub_100374828(*(v0 + 360));

  return _swift_task_switch(sub_1001FA190, 0, 0);
}

uint64_t sub_1001FA190()
{
  v1 = v0[38];
  v2 = v0[30];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v1;
  v8[7] = v4;

  sub_1001D7F30(0, 0, v3, &unk_1004D1508, v8);

  sub_100002CE0(v2, &qword_1005AA718, &qword_1004C4370);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001FA34C()
{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 288);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    *(v0 + 48) = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Process response error: %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v9 = sub_100209928(_swiftEmptyArrayStorage);

  *(v0 + 304) = v9;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 56);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, v11, "DataManager: finish updateData. Counter: %ld", v13, 0xCu);
  }

  v14 = swift_task_alloc();
  *(v0 + 312) = v14;
  *v14 = v0;
  v14[1] = sub_1001F9398;
  v15 = *(v0 + 370);
  v16 = *(v0 + 369);
  v17 = *(v0 + 240);

  return sub_1001F72C4(v17, v16, v15);
}

uint64_t sub_1001FA5B4()
{
  sub_100002CE0(*(v0 + 240), &qword_1005AA718, &qword_1004C4370);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FA6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[347] = a6;
  v6[341] = a5;
  v6[335] = a4;
  v7 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  v6[353] = v7;
  v6[359] = *(v7 - 8);
  v6[365] = swift_task_alloc();

  return _swift_task_switch(sub_1001FA78C, 0, 0);
}

uint64_t sub_1001FA78C()
{
  v1 = *(v0 + 2776);
  v2 = *(v0 + 2728);
  v3 = *(v0 + 2680);
  v4 = swift_task_alloc();
  *(v0 + 2968) = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  swift_asyncLet_begin();
  v5 = swift_task_alloc();
  *(v0 + 3016) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  swift_asyncLet_begin();
  v6 = swift_task_alloc();
  *(v0 + 3064) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  swift_asyncLet_begin();
  if (qword_1005A80D8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 2920);
  v8 = *(v0 + 2872);
  v9 = *(v0 + 2824);
  v10 = sub_10000A6F0(v9, qword_1005AFAA8);
  swift_beginAccess();
  (*(v8 + 16))(v7, v10, v9);
  ManagedDefault.wrappedValue.getter();
  (*(v8 + 8))(v7, v9);
  v11 = *(v0 + 3080);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF18);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 2776);
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 1025;
    *(v17 + 14) = v11 & 1;
    *(v17 + 18) = 2048;
    *(v17 + 20) = *(v16 + 16);

    _os_log_impl(&_mh_execute_header, v13, v14, "DataManager shouldUpdateFriends to clients:\n%{BOOL,private,mask.hash}d\nupdated friends count: %ld", v17, 0x1Cu);

    if ((v11 & 1) == 0)
    {
LABEL_7:
      v18 = v0 + 656;
      goto LABEL_10;
    }
  }

  else
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v19 = *(v0 + 2776);
  v20 = *(v0 + 2680);
  v21 = swift_task_alloc();
  *(v0 + 3072) = v21;
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  swift_asyncLet_begin();
  v18 = v0 + 656;
LABEL_10:

  return _swift_asyncLet_get(v18);
}

uint64_t sub_1001FAB48()
{

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_1001FAC20()
{

  return _swift_asyncLet_finish(v0 + 656, v1, sub_1001FAC88, v0 + 2784);
}

uint64_t sub_1001FACA4()
{

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1001FAD0C, v0 + 2832);
}

uint64_t sub_1001FAD28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FAD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100003784;

  return sub_100221EF8(a3, a4);
}

uint64_t sub_1001FAE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003788;

  return sub_100224C80(a3);
}

uint64_t sub_1001FAEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003784;

  return sub_1001FAF78(a3);
}

uint64_t sub_1001FAF78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Handle();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_10004B564(&qword_1005AC640, &qword_1004C6EE0);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for HandleType();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for DataManager.State(0);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipAction();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001FB270, v1, 0);
}

uint64_t sub_1001FB270()
{
  v169 = v0;
  v1 = v0;
  if (qword_1005A80B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFF18);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v168[0] = swift_slowAlloc();
      *v5 = 136446723;
      *(v5 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E51A0, v168);
      *(v5 + 12) = 2160;
      *(v5 + 14) = 1752392040;
      *(v5 + 22) = 2081;
      sub_1001E6D00(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v6 = Dictionary.description.getter();
      v8 = sub_10000D01C(v6, v7, v168);

      *(v5 + 24) = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{private,mask.hash}s", v5, 0x20u);
      swift_arrayDestroy();
    }

    v9 = v1[24];
    v10 = v1[18];
    v11 = v1[12];
    v12 = v1[5];
    v13 = v12 + 64;
    v14 = -1;
    v15 = -1 << *(v12 + 32);
    if (-v15 < 64)
    {
      v14 = ~(-1 << -v15);
    }

    v16 = v14 & *(v12 + 64);
    v144 = (63 - v15) >> 6;
    v166 = (v10 + 16);
    v167 = (v9 + 16);
    v163 = (v10 + 32);
    v164 = (v9 + 32);
    v159 = (v10 + 88);
    v158 = enum case for FriendshipAction.add(_:);
    v146 = enum case for FriendshipAction.remove(_:);
    v149 = v1[18];
    v150 = v1[24];
    v161 = (v9 + 8);
    v162 = (v10 + 8);
    v133 = (v11 + 8);
    v143 = (v11 + 88);
    v142 = enum case for HandleType.follower(_:);
    v132 = enum case for HandleType.following(_:);
    v131 = enum case for HandleType.futureFollower(_:);
    v129 = enum case for HandleType.futureFollowing(_:);
    v128 = enum case for HandleType.pendingOffer(_:);
    v130 = (v1[8] + 8);
    v147 = v1[5];

    v17 = 0;
    v160 = v13;
    v148 = v1;
    if (v16)
    {
      break;
    }

LABEL_12:
    if (v144 <= v17 + 1)
    {
      v24 = v17 + 1;
    }

    else
    {
      v24 = v144;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v144)
      {
        v87 = v1[32];
        v88 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
        v165 = 0;
        v17 = v25;
        goto LABEL_21;
      }

      v16 = *(v13 + 8 * v23);
      ++v17;
      if (v16)
      {
        v17 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v23 = v17;
LABEL_20:
    v26 = v1[31];
    v27 = v1[32];
    v29 = v1[22];
    v28 = v1[23];
    v30 = v1[17];
    v165 = (v16 - 1) & v16;
    v31 = __clz(__rbit64(v16)) | (v23 << 6);
    (*(v150 + 16))(v26, *(v147 + 48) + *(v150 + 72) * v31, v28);
    (*(v149 + 16))(v29, *(v147 + 56) + *(v149 + 72) * v31, v30);
    v32 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v33 = *(v32 + 48);
    v1 = v148;
    (*(v150 + 32))(v27, v26, v28);
    (*(v149 + 32))(v27 + v33, v29, v30);
    (*(*(v32 - 8) + 56))(v27, 0, 1, v32);
LABEL_21:
    v34 = v1[33];
    sub_1000176A8(v1[32], v34, &qword_1005AFFF8, &unk_1004D2ED0);
    v35 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v1[33];
    if (v36 == 1)
    {
      break;
    }

    v39 = v1[20];
    v38 = v1[21];
    v40 = v1[17];
    v41 = *(v35 + 48);
    (*v164)(v1[30], v1[33], v1[23]);
    (*v163)(v38, v37 + v41, v40);
    v42 = *v166;
    (*v166)(v39, v38, v40);
    v43 = (*v159)(v39, v40);
    v44 = v1[23];
    if (v43 == v158)
    {
      v153 = *v167;
      (*v167)(v1[29], v1[30], v44);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v1[29];
      v49 = v1[23];
      if (v47)
      {
        v50 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v168[0] = v145;
        *v50 = 141558275;
        *(v50 + 4) = 1752392040;
        *(v50 + 12) = 2081;
        sub_1001E6D00(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v151 = *v161;
        (*v161)(v48, v49);
        v54 = sub_10000D01C(v51, v53, v168);

        *(v50 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v45, v46, "Added a friend: %{private,mask.hash}s", v50, 0x16u);
        sub_100004984(v145);
      }

      else
      {

        v151 = *v161;
        (*v161)(v48, v49);
      }

      v18 = v1[30];
      v19 = v1[23];
      v20 = v1[21];
      v22 = v1[16];
      v21 = v1[17];
      v153(v22, v18, v19);
      swift_storeEnumTagMultiPayload();
      sub_100241560(v22);
      sub_10020A58C(v22, type metadata accessor for DataManager.State);
      (*v162)(v20, v21);
      v151(v18, v19);
LABEL_10:
      v16 = v165;
      v13 = v160;
      if (!v165)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v55 = v1[30];
      if (v43 == v146)
      {
        v154 = *v167;
        (*v167)(v1[28], v1[30], v44);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        v58 = os_log_type_enabled(v56, v57);
        v59 = v1[28];
        v60 = v1[23];
        if (v58)
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v168[0] = v62;
          *v61 = 141558275;
          *(v61 + 4) = 1752392040;
          *(v61 + 12) = 2081;
          sub_1001E6D00(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v64;
          v156 = *v161;
          (*v161)(v59, v60);
          v66 = sub_10000D01C(v63, v65, v168);

          *(v61 + 14) = v66;
          _os_log_impl(&_mh_execute_header, v56, v57, "Removed a friend: %{private,mask.hash}s", v61, 0x16u);
          sub_100004984(v62);
        }

        else
        {

          v156 = *v161;
          (*v161)(v59, v60);
        }

        v89 = v1[14];
        v90 = v1[11];
        Friend.type.getter();
        v91 = (*v143)(v89, v90);
        if (v91 != v142)
        {
          if (v91 == v132)
          {
            v154(v1[27], v1[30], v1[23]);
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.default.getter();
            v94 = os_log_type_enabled(v92, v93);
            v95 = v1[27];
            v96 = v1[23];
            if (v94)
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              v168[0] = v98;
              *v97 = 141558275;
              *(v97 + 4) = 1752392040;
              *(v97 + 12) = 2081;
              sub_1001E6D00(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
              v99 = dispatch thunk of CustomStringConvertible.description.getter();
              v101 = v100;
              v156(v95, v96);
              v102 = sub_10000D01C(v99, v101, v168);

              *(v97 + 14) = v102;
              _os_log_impl(&_mh_execute_header, v92, v93, "Clear legacy location for removed following: %{private,mask.hash}s if any", v97, 0x16u);
              sub_100004984(v98);
            }

            else
            {

              v156(v95, v96);
            }

            v119 = v1[9];
            v118 = v1[10];
            v120 = v1[7];
            Friend.handle.getter();
            swift_beginAccess();
            sub_1001FED70(v119, v118);
            (*v130)(v119, v120);
            sub_100002CE0(v118, &qword_1005AC640, &qword_1004C6EE0);
            swift_endAccess();
          }

          else if (v91 != v131 && v91 != v129 && v91 != v128)
          {
            v154(v1[26], v1[30], v1[23]);
            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.error.getter();
            v106 = os_log_type_enabled(v104, v105);
            v107 = v1[26];
            v108 = v1[23];
            if (v106)
            {
              v109 = v1[13];
              v110 = v1[11];
              v152 = v105;
              v111 = swift_slowAlloc();
              v139 = v108;
              v168[0] = swift_slowAlloc();
              *v111 = 136446466;
              *(v111 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E51A0, v168);
              *(v111 + 12) = 2080;
              v141 = v104;
              Friend.type.getter();
              sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
              v112 = v110;
              v113 = dispatch thunk of CustomStringConvertible.description.getter();
              v115 = v114;
              v116 = *v133;
              (*v133)(v109, v112);
              v156(v107, v139);
              v117 = sub_10000D01C(v113, v115, v168);

              *(v111 + 14) = v117;
              _os_log_impl(&_mh_execute_header, v141, v152, "%{public}s Unknown friend.type %s!", v111, 0x16u);
              swift_arrayDestroy();

              v116(v1[14], v1[11]);
            }

            else
            {

              v156(v107, v108);
              (*v133)(v1[14], v1[11]);
            }
          }
        }

        v121 = v1[30];
        v122 = v1[23];
        v123 = v1[21];
        v125 = v1[16];
        v124 = v1[17];
        v154(v125, v121, v122);
        swift_storeEnumTagMultiPayload();
        sub_100241560(v125);
        sub_10020A58C(v125, type metadata accessor for DataManager.State);
        (*v162)(v123, v124);
        v156(v121, v122);
        goto LABEL_10;
      }

      v67 = v1[25];
      v68 = v1[23];
      v42(v1[19], v1[21], v1[17]);
      (*v167)(v67, v55, v68);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v1[30];
      v73 = v1[23];
      v155 = v1[25];
      v157 = v1[21];
      v74 = v1[19];
      v75 = v1[17];
      if (v71)
      {
        v134 = v1[13];
        v137 = v1[11];
        v138 = v1[23];
        v76 = swift_slowAlloc();
        v168[0] = swift_slowAlloc();
        *v76 = 136446722;
        *(v76 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E51A0, v168);
        *(v76 + 12) = 2082;
        sub_1001E6D00(&qword_1005B0000, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
        v140 = v72;
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        log = v69;
        v79 = v78;
        v135 = v70;
        v80 = *v162;
        (*v162)(v74, v75);
        v81 = sub_10000D01C(v77, v79, v168);

        *(v76 + 14) = v81;
        *(v76 + 22) = 2082;
        Friend.type.getter();
        sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
        v82 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v83;
        (*v133)(v134, v137);
        v85 = *v161;
        (*v161)(v155, v138);
        v86 = sub_10000D01C(v82, v84, v168);

        *(v76 + 24) = v86;
        _os_log_impl(&_mh_execute_header, log, v135, "%{public}s ignoring %{public}s %{public}s", v76, 0x20u);
        swift_arrayDestroy();

        v80(v157, v75);
        v85(v140, v138);
      }

      else
      {

        v103 = *v161;
        (*v161)(v155, v73);
        v80 = *v162;
        (*v162)(v74, v75);
        v80(v157, v75);
        v103(v72, v73);
      }

      v16 = v165;
      v13 = v160;
      v80(v1[20], v1[17]);
      if (!v165)
      {
        goto LABEL_12;
      }
    }
  }

  v126 = v1[1];

  return v126();
}

uint64_t sub_1001FC634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003784;

  return sub_100226A40(a3);
}

uint64_t sub_1001FC6D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *sub_1001FC900(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001FCA34(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B00E0, &qword_1004D1680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 584);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[584 * v8])
    {
      memmove(v12, v13, 584 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001FCBA8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10004B564(&qword_1005B0100, &qword_1004D1690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004B564(&qword_1005B0108, &qword_1004D1698);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001FCD18(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B0020, &qword_1004D1588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001FCE6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B01D8, &qword_1004D1760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001FCF88(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001FD094(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B0280, &qword_1004D1828);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001FD1C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B01B0, &qword_1004D1738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001FD330(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10004B564(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004B564(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1001FD52C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10004B564(&qword_1005B0240, &qword_1004D17D0);
  v10 = *(sub_10004B564(&qword_1005AFA48, &unk_1004D1178) - 8);
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
  v15 = *(sub_10004B564(&qword_1005AFA48, &unk_1004D1178) - 8);
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

unint64_t sub_1001FD71C()
{
  result = qword_1005AFFC8;
  if (!qword_1005AFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AFFC8);
  }

  return result;
}

unint64_t sub_1001FD770(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1001FE078(a1, v2);
}

unint64_t sub_1001FD7B4(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1001FE0E4(a1 & 1, v2);
}

unint64_t sub_1001FD868(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1001E6D00(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v2, &type metadata accessor for UUID, &qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1001FD93C(uint64_t a1)
{
  type metadata accessor for Handle();
  sub_1001E6D00(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v2, &type metadata accessor for Handle, &qword_1005A91B8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
}

unint64_t sub_1001FDA10(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1001D7944(*(v1 + 40), a1);

  return sub_1001FE23C(v2, v3);
}

unint64_t sub_1001FDA80(uint64_t a1)
{
  type metadata accessor for Destination();
  sub_1001E6D00(&qword_1005AADF8, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v2, &type metadata accessor for Destination, &qword_1005AAE20, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
}

unint64_t sub_1001FDB54(uint64_t a1)
{
  type metadata accessor for ClientID();
  sub_1001E6D00(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v2, &type metadata accessor for ClientID, &qword_1005AE9D8, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
}

unint64_t sub_1001FDC28(uint64_t a1)
{
  type metadata accessor for Friend();
  sub_1001E6D00(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v2, &type metadata accessor for Friend, &qword_1005AE9B8, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
}

unint64_t sub_1001FDCFC(uint64_t a1)
{
  type metadata accessor for AppNotificationEvent.EventType();
  sub_1001E6D00(&qword_1005B0030, &type metadata accessor for AppNotificationEvent.EventType, &protocol conformance descriptor for AppNotificationEvent.EventType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v2, &type metadata accessor for AppNotificationEvent.EventType, &qword_1005B0038, &type metadata accessor for AppNotificationEvent.EventType, &protocol conformance descriptor for AppNotificationEvent.EventType);
}

unint64_t sub_1001FDDD0(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1001FE8A4(v1, v2);
}

unint64_t sub_1001FDE8C(uint64_t a1)
{
  type metadata accessor for GroupID();
  sub_1001E6D00(&qword_1005AE908, &type metadata accessor for GroupID, &protocol conformance descriptor for GroupID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v2, &type metadata accessor for GroupID, &qword_1005B0190, &type metadata accessor for GroupID, &protocol conformance descriptor for GroupID);
}

unint64_t sub_1001FDF60(uint64_t a1)
{
  type metadata accessor for LocatePriority();
  sub_1001E6D00(&qword_1005B0208, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v2, &type metadata accessor for LocatePriority, &qword_1005B0210, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
}

unint64_t sub_1001FE034(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1001FEBB4(a1, v4);
}

unint64_t sub_1001FE078(uint64_t a1, uint64_t a2)
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

unint64_t sub_1001FE0E4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6567617373656DLL;
    }

    else
    {
      v6 = 0x7265646E65537369;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xED000064696C6156;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6567617373656DLL : 0x7265646E65537369;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xED000064696C6156;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001FE23C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 1684632949;
          }

          else
          {
            v8 = 0x444965636E6566;
          }

          if (v7 == 1)
          {
            v9 = 0xE400000000000000;
          }

          else
          {
            v9 = 0xE700000000000000;
          }
        }

        else
        {
          v8 = 0xD000000000000015;
          v9 = 0x80000001004DDC10;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1702125924;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x6E6F697461636F6CLL;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x5372656767697274;
        }

        else
        {
          v8 = 118;
        }

        if (v7 == 3)
        {
          v9 = 0xED00007375746174;
        }

        else
        {
          v9 = 0xE100000000000000;
        }
      }

      v10 = 0x6E6F697461636F6CLL;
      if (v6 == 5)
      {
        v10 = 1702125924;
      }

      v11 = 0xE800000000000000;
      if (v6 == 5)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0x5372656767697274;
      if (v6 != 3)
      {
        v12 = 118;
      }

      v13 = 0xED00007375746174;
      if (v6 != 3)
      {
        v13 = 0xE100000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x444965636E6566;
      if (v6 == 1)
      {
        v14 = 1684632949;
      }

      v15 = 0xE700000000000000;
      if (v6 == 1)
      {
        v15 = 0xE400000000000000;
      }

      if (!v6)
      {
        v14 = 0xD000000000000015;
        v15 = 0x80000001004DDC10;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001FE4A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
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
          sub_100005F6C(v17, v16);
          sub_1001FC6D0(v45, v9, v8, &v44);
          sub_1000049D0(v17, v16);
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

        sub_100005F6C(v17, v16);
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
        sub_100005F6C(v17, v16);
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
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1001FC6D0(v34, a1, a2, v45);
        sub_1000049D0(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100005F6C(v17, v16);
      sub_1001FC6D0(v45, v9, v8, &v44);
      sub_1000049D0(v17, v16);
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

unint64_t sub_1001FE8A4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = 0xD000000000000031;
      v7 = v5 == 1 ? 0xD00000000000002FLL : 0xD00000000000002ELL;
      v8 = v5 == 1 ? "enceScheduleTimer" : ".findmylocated.FenceInviteTimer";
      v9 = *(*(v2 + 48) + v4) ? v7 : 0xD000000000000031;
      v10 = *(*(v2 + 48) + v4) ? v8 : "com.apple.mobileme.fmf3";
      if (a1)
      {
        v6 = a1 == 1 ? 0xD00000000000002FLL : 0xD00000000000002ELL;
        v11 = a1 == 1 ? "enceScheduleTimer" : ".findmylocated.FenceInviteTimer";
      }

      else
      {
        v11 = "com.apple.mobileme.fmf3";
      }

      if (v9 == v6 && (v10 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001FEA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1001E6D00(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1001FEBB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_1001FEC88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100011104(a1, a2, &String.hash(into:), sub_10001145C);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100202528();
      v10 = v14;
    }

    v11 = (*(v10 + 56) + 48 * v8);
    v12 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 25) = *(v11 + 25);
    sub_1001FFA2C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
  }

  return result;
}

uint64_t sub_1001FED70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1001FD93C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100205610(&type metadata accessor for Location, &type metadata accessor for Handle, &qword_1005B0008, &qword_1004D1570);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for Handle();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Location();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1001FFF5C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Location();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1001FEF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100011104(a1, a2, &Data.hash(into:), sub_1001FE4A4);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100203F50();
      v10 = v20;
    }

    sub_1000049D0(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
    v19 = *(v12 - 8);
    sub_1000176A8(v11 + *(v19 + 72) * v8, a3, &qword_1005AAC60, &qword_1004C46E8);
    sub_10020060C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1001FF13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1001FDC28(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100205610(&type metadata accessor for FriendshipAction, &type metadata accessor for Friend, &qword_1005B0058, &qword_1004D15B0);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for Friend();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for FriendshipAction();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_100200B34(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for FriendshipAction();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1001FF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_100011104(a1, a2, &String.hash(into:), sub_10001145C);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = (a3)(0);
    v27 = *(v20 - 8);
    sub_10020AE30(v19 + *(v27 + 72) * v16, a7, a4);
    sub_100200E78(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = (a3)(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

double sub_1001FF528@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1001FD868(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100204E04();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_100010BD4((*(v9 + 56) + 40 * v7), a2);
    sub_10020106C(v7, v9);
    *v3 = v9;
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

uint64_t sub_1001FF60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1001FDB54(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100205610(&type metadata accessor for Date, &type metadata accessor for ClientID, &qword_1005B02A8, &qword_1004D1850);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ClientID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Date();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1002019D4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1001FF808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1001FD868(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100206414(a2, a3, a4, a5);
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = sub_10004B564(a2, a3);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a6, v21 + *(v29 + 72) * v20, v22);
    sub_10020203C(v20, v17, a2, a3);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = sub_10004B564(a2, a3);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

void sub_1001FFA2C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
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
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
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
}

void sub_1001FFBFC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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
}

void sub_1001FFDAC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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
}

unint64_t sub_1001FFF5C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1001E6D00(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for Location() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
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

void sub_1002002A0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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
        v15 = (v14 + 2 * v3);
        v16 = (v14 + 2 * v6);
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
}

void sub_100200450(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

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
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
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
}

unint64_t sub_10020060C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_100005F6C(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_1000049D0(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_10004B564(&qword_1005AAC60, &qword_1004C46E8) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
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

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

unint64_t sub_100200814(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for Destination();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1001E6D00(&qword_1005AADF8, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_100200B34(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1001E6D00(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for FriendshipAction() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
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

void sub_100200E78(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      v19 = v16 + v17 * v4;
      v20 = v17 * v7;
      v21 = v16 + v17 * v7 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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
}

unint64_t sub_10020106C(int64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for UUID();
  v4 = *(v42 - 8);
  result = __chkstk_darwin(v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_1001E6D00(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_100201390(int64_t a1, uint64_t a2)
{
  Priority = type metadata accessor for LocatePriority();
  v4 = *(Priority - 8);
  result = __chkstk_darwin(Priority);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = Priority;
    v6 = v42;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = (v12 + 1) & v11;
    v39 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v39(v40, *(v6 + 48) + v17 * v10, v13);
      sub_1001E6D00(&qword_1005B0208, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 24 * a1;
          v30 = (v28 + 24 * v10);
          if (a1 != v10 || v29 >= v30 + 24)
          {
            v31 = *v30;
            *(v29 + 16) = *(v30 + 2);
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1002016B4(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for Handle();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1001E6D00(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1002019D4(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1001E6D00(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for Date() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
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

unint64_t sub_100201D18(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  result = __chkstk_darwin(v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = (v12 + 1) & v11;
    v39 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v39(v40, *(v6 + 48) + v17 * v10, v13);
      sub_1001E6D00(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 24 * a1;
          v30 = (v28 + 24 * v10);
          if (a1 != v10 || v29 >= v30 + 24)
          {
            v31 = *v30;
            *(v29 + 16) = *(v30 + 2);
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_10020203C(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_1001E6D00(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(sub_10004B564(v38, v39) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

void sub_100202380()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0068, &qword_1004D1600);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_100011004(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100010BD4(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_100202528()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0120, &qword_1004D16B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_1000534E8(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[9];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 25) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1002026D8()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0158, &qword_1004D16E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_10005345C(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[10];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 26) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

id sub_100202888()
{
  v1 = v0;
  sub_10004B564(&qword_1005A8A40, &qword_1004C18E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_100202A1C()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0090, &qword_1004D1620);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}